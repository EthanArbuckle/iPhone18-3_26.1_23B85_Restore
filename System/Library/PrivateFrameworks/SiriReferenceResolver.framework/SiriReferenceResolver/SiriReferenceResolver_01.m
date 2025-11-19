uint64_t sub_268CA59E4(uint64_t a1, unint64_t a2)
{
  v4 = sub_268CA5A30(a1, a2);
  sub_268CA5B48(&unk_2879876B0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_268CA5A30(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_268CB7AB0())
  {
    result = sub_268CA05AC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_268CB7CC0();
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
          result = sub_268CB7CF0();
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

uint64_t sub_268CA5B48(uint64_t result)
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

    result = sub_268CA5C2C(result, v8, 1, v3);
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

char *sub_268CA5C2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4B8, &unk_268CB89E8);
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

_BYTE **sub_268CA5D20(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_268CA5D30(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for RREntityMatcher(_BYTE *result, int a2, int a3)
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

unint64_t sub_268CA5E3C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_268CB7E50();
  sub_268CB79E0();
  v6 = sub_268CB7E70();

  return sub_268CA5FD4(a1, a2, v6);
}

unint64_t sub_268CA5EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  sub_268CB7E50();
  sub_268CB79E0();
  sub_268CB79E0();
  v10 = sub_268CB7E70();

  return sub_268CA6088(a1, a2, a3, a4, v10);
}

unint64_t sub_268CA5F54()
{
  v1 = *(v0 + 40);
  sub_268CB7790();
  sub_268CA632C(qword_28131E6C8);
  sub_268CB79D0();
  v2 = OUTLINED_FUNCTION_23();

  return sub_268CA6184(v2, v3);
}

unint64_t sub_268CA5FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_268CB7DC0() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_268CA6088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_268CB7DC0() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_268CB7DC0() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_268CA6184(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_268CB7790();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_268CA632C(&qword_2802DA3B8);
    v10 = sub_268CB79F0();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_268CA632C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_268CB7790();
    OUTLINED_FUNCTION_23();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268CA636C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_2()
{

  return sub_268CB7DC0();
}

uint64_t OUTLINED_FUNCTION_3_2(uint64_t a1, uint64_t a2)
{
  result = __swift_project_value_buffer(v2, a2);
  v5 = *(*(v3 - 208) + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_1()
{
  v2 = *(*(v1 - 208) + 8);
  result = v0;
  v4 = *(v1 - 232);
  return result;
}

void OUTLINED_FUNCTION_11_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL OUTLINED_FUNCTION_21(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_26(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_268CA65CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA520, &qword_268CB8CE8);
  __swift_allocate_value_buffer(v0, qword_2802DA668);
  __swift_project_value_buffer(v0, qword_2802DA668);
  sub_268CB7680();
  sub_268CB7180();
  return sub_268CB7690();
}

uint64_t sub_268CA665C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v58 = a2;
  v4 = sub_268CB7160();
  v60 = *(v4 - 8);
  v5 = *(v60 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v57 - v9;
  v11 = *a1;
  v12 = sub_268CB7340();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_268CB7330();
  v16 = sub_268CB7670();
  v18 = v17;
  if (qword_28131E9F0 != -1)
  {
    swift_once();
  }

  v19 = qword_28131EC78 == v16 && unk_28131EC80 == v18;
  v59 = v8;
  if (v19 || (sub_268CB7DC0() & 1) != 0)
  {

    sub_268CB7240();
    sub_268CB71F0();
    if (v61)
    {
      v20 = sub_268CB74C0();
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      swift_allocObject();
      sub_268CB74B0();
      sub_268CB7220();
      if (v23)
      {
        sub_268CB7490();
      }

      sub_268CB7230();
      if (v24)
      {
        sub_268CB74A0();
      }

      goto LABEL_13;
    }

    v32 = sub_268CB76F0();
    sub_268CA6EAC();
    swift_allocError();
    v34 = v33;
    v35 = 0x8000000268CB9CD0;
    v36 = 0xD000000000000031;
LABEL_18:
    *v33 = v36;
    v33[1] = v35;
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D61E00], v32);
    swift_willThrow();
  }

  if (qword_28131E9E8 != -1)
  {
    swift_once();
  }

  v38 = qword_28131EC68 == v16 && unk_28131EC70 == v18;
  if (v38 || (sub_268CB7DC0() & 1) != 0)
  {

    sub_268CB72B0();
    sub_268CB71F0();
    if (!v61)
    {
      v32 = sub_268CB76F0();
      sub_268CA6EAC();
      swift_allocError();
      v34 = v33;
      v35 = 0x8000000268CB9C90;
      v36 = 0xD000000000000032;
      goto LABEL_18;
    }

    v39 = sub_268CB7500();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    sub_268CB74F0();
    sub_268CB7290();
    if (v42)
    {
      sub_268CB74D0();
    }

    sub_268CB72A0();
    if (v43)
    {
      sub_268CB74E0();
    }
  }

  else
  {
    if (qword_28131E9E0 != -1)
    {
      swift_once();
    }

    if (qword_28131EC58 == v16 && unk_28131EC60 == v18)
    {
    }

    else
    {
      v51 = sub_268CB7DC0();

      if ((v51 & 1) == 0)
      {
        v32 = sub_268CB76F0();
        sub_268CA6EAC();
        swift_allocError();
        v34 = v33;
        v35 = 0x8000000268CB9BC0;
        v36 = 0xD000000000000023;
        goto LABEL_18;
      }
    }

    sub_268CB73B0();
    sub_268CB71F0();
    if (!v61)
    {
      v32 = sub_268CB76F0();
      sub_268CA6EAC();
      swift_allocError();
      v34 = v33;
      v35 = 0x8000000268CB9BF0;
      v36 = 0xD000000000000033;
      goto LABEL_18;
    }

    v52 = sub_268CB75E0();
    v53 = *(v52 + 48);
    v54 = *(v52 + 52);
    swift_allocObject();
    sub_268CB75D0();
    sub_268CB7390();
    if (v55)
    {
      sub_268CB75B0();
    }

    sub_268CB73A0();
    if (v56)
    {
      sub_268CB75C0();
    }
  }

LABEL_13:

  sub_268CB7300();

  v25 = sub_268CB7660();
  v26 = *(v25 + 16);
  if (v26)
  {
    v57[1] = v25;
    v57[2] = v2;
    v27 = v15;
    v28 = *(v60 + 16);
    v29 = v25 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
    v30 = *(v60 + 72);
    v31 = (v60 + 8);
    do
    {
      v28(v10, v29, v4);
      sub_268CB7090();
      (*v31)(v10, v4);
      v29 += v30;
      --v26;
    }

    while (v26);

    v15 = v27;
  }

  else
  {
  }

  v44 = v59;
  sub_268CB7130();
  sub_268CB7090();
  if (MEMORY[0x26D62AA30](v15))
  {
    sub_268CB7180();
    sub_268CB71F0();
    v45 = v61;
    if (v61)
    {
      (*(v60 + 8))(v44, v4);

      *v58 = v45;
      return result;
    }

    v48 = sub_268CB76F0();
    sub_268CA6EAC();
    swift_allocError();
    *v49 = 0xD00000000000002ALL;
    v49[1] = 0x8000000268CB9C60;
    (*(*(v48 - 8) + 104))(v49, *MEMORY[0x277D61E00], v48);
    swift_willThrow();
  }

  else
  {
    v46 = sub_268CB76F0();
    sub_268CA6EAC();
    swift_allocError();
    *v47 = 0xD00000000000002DLL;
    v47[1] = 0x8000000268CB9C30;
    (*(*(v46 - 8) + 104))(v47, *MEMORY[0x277D61E00], v46);
    swift_willThrow();
  }

  return (*(v60 + 8))(v44, v4);
}

unint64_t sub_268CA6EAC()
{
  result = qword_2802DA550;
  if (!qword_2802DA550)
  {
    sub_268CB76F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802DA550);
  }

  return result;
}

uint64_t sub_268CA6F20()
{
  v1 = sub_268CB74C0();
  OUTLINED_FUNCTION_3_3(v1);
  v2 = sub_268CB74B0();
  MEMORY[0x26D62AA30]();
  result = OUTLINED_FUNCTION_2_3();
  if (v0)
  {
    v4 = v0;
    sub_268CB7670();
    result = OUTLINED_FUNCTION_0_3();
  }

  else
  {
    v2 = 0x8000000268CB95B0;
    v4 = 0xD000000000000012;
  }

  qword_28131EC78 = v4;
  unk_28131EC80 = v2;
  return result;
}

uint64_t sub_268CA6F9C()
{
  v1 = sub_268CB7500();
  OUTLINED_FUNCTION_3_3(v1);
  v2 = sub_268CB74F0();
  MEMORY[0x26D62AA30]();
  result = OUTLINED_FUNCTION_2_3();
  if (v0)
  {
    v4 = v0;
    sub_268CB7670();
    result = OUTLINED_FUNCTION_0_3();
  }

  else
  {
    v2 = 0x8000000268CB95D0;
    v4 = 0xD000000000000013;
  }

  qword_28131EC68 = v4;
  unk_28131EC70 = v2;
  return result;
}

void sub_268CA7018()
{
  v1 = sub_268CB75E0();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  v3 = sub_268CB75D0();
  MEMORY[0x26D62AA30]();
  OUTLINED_FUNCTION_2_3();
  if (v0)
  {
    v2 = v0;
    sub_268CB7670();
    OUTLINED_FUNCTION_0_3();
  }

  else
  {
    OUTLINED_FUNCTION_1_3();
  }

  qword_28131EC58 = v2;
  unk_28131EC60 = v3;
}

void sub_268CA7088()
{
  v1 = sub_268CB7340();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  v3 = sub_268CB7330();
  MEMORY[0x26D62AA30]();
  OUTLINED_FUNCTION_2_3();
  if (v0)
  {
    v4 = v0;
    sub_268CB7670();
    OUTLINED_FUNCTION_0_3();
  }

  else
  {
    v3 = 0xED00006E6F737265;
    OUTLINED_FUNCTION_4_2();
    v4 = v2 & 0xFFFFFFFFFFFFLL | 0x505F000000000000;
  }

  qword_28131ECB8 = v4;
  unk_28131ECC0 = v3;
}

uint64_t sub_268CA7104()
{
  v1 = sub_268CB7480();
  OUTLINED_FUNCTION_3_3(v1);
  v2 = sub_268CB7470();
  MEMORY[0x26D62AA30]();
  result = OUTLINED_FUNCTION_2_3();
  if (v0)
  {
    v4 = v0;
    sub_268CB7670();
    result = OUTLINED_FUNCTION_0_3();
  }

  else
  {
    v2 = 0x8000000268CB9A40;
    v4 = 0xD000000000000011;
  }

  qword_28131EC88 = v4;
  unk_28131EC90 = v2;
  return result;
}

void sub_268CA7180()
{
  v1 = sub_268CB7570();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  v3 = sub_268CB7560();
  MEMORY[0x26D62AA30]();
  OUTLINED_FUNCTION_2_3();
  if (v0)
  {
    v2 = v0;
    sub_268CB7670();
    OUTLINED_FUNCTION_0_3();
  }

  else
  {
    OUTLINED_FUNCTION_1_3();
  }

  qword_2802DA680 = v2;
  *algn_2802DA688 = v3;
}

void sub_268CA71F0()
{
  v1 = sub_268CB7530();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  v3 = sub_268CB7520();
  MEMORY[0x26D62AA30]();
  OUTLINED_FUNCTION_2_3();
  if (v0)
  {
    v2 = v0;
    sub_268CB7670();
    OUTLINED_FUNCTION_0_3();
  }

  else
  {
    OUTLINED_FUNCTION_1_3();
  }

  qword_28131EC98 = v2;
  unk_28131ECA0 = v3;
}

void sub_268CA7260()
{
  v1 = sub_268CB7210();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  v3 = sub_268CB7200();
  MEMORY[0x26D62AA30]();
  OUTLINED_FUNCTION_2_3();
  if (v0)
  {
    v4 = v0;
    sub_268CB7670();
    OUTLINED_FUNCTION_0_3();
  }

  else
  {
    v3 = 0xEA00000000007070;
    OUTLINED_FUNCTION_4_2();
    v4 = v2 & 0xFFFFFFFFFFFFLL | 0x415F000000000000;
  }

  qword_28131ECA8 = v4;
  unk_28131ECB0 = v3;
}

void sub_268CA72D4()
{
  v1 = sub_268CB7360();
  v2 = OUTLINED_FUNCTION_3_3(v1);
  v3 = sub_268CB7350();
  MEMORY[0x26D62AA30]();
  OUTLINED_FUNCTION_2_3();
  if (v0)
  {
    v4 = v0;
    sub_268CB7670();
    OUTLINED_FUNCTION_0_3();
  }

  else
  {
    v3 = 0xED0000776F646E69;
    OUTLINED_FUNCTION_4_2();
    v4 = v2 & 0xFFFFFFFFFFFFLL | 0x575F000000000000;
  }

  qword_28131ECC8 = v4;
  unk_28131ECD0 = v3;
}

uint64_t OUTLINED_FUNCTION_0_3()
{
}

uint64_t OUTLINED_FUNCTION_2_3()
{
}

uint64_t OUTLINED_FUNCTION_3_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_268CA73C0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_268CB7D50();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

BOOL sub_268CA73E4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v1 = sub_268CB7D50();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 == 0;
}

uint64_t sub_268CA7428(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_268CA7498(v4);
}

uint64_t sub_268CA7454()
{
  v1 = OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_entities;
  OUTLINED_FUNCTION_11_2();
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_268CA7498(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_entities;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t RRResolver.__allocating_init(entities:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  RRResolver.init(entities:)(a1);
  return v5;
}

uint64_t RRResolver.init(entities:)(uint64_t a1)
{
  type metadata accessor for RRResolver();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA538, &qword_268CB8D30);
  sub_268CB7A20();
  sub_268CB7740();
  *(v1 + OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_entities) = a1;
  return v1;
}

uint64_t type metadata accessor for RRResolver()
{
  result = qword_28131EBA0;
  if (!qword_28131EBA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268CA767C(char *a1, void *a2, char a3)
{
  v4 = v3;

  v8 = sub_268CB7730();
  v9 = sub_268CB7BD0();

  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_8_3();
    v58 = a2;
    v10 = swift_slowAlloc();
    OUTLINED_FUNCTION_7_2();
    v11 = swift_slowAlloc();
    v65[0] = v11;
    *v10 = 136315138;
    sub_268CB7680();

    v12 = sub_268CB7A20();
    v14 = sub_268CA5820(v12, v13, v65);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_268C94000, v8, v9, "Find annotated entities with EntityUSO. %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    OUTLINED_FUNCTION_0_4();
    MEMORY[0x26D62BBE0]();
    a2 = v58;
    OUTLINED_FUNCTION_0_4();
    MEMORY[0x26D62BBE0]();
  }

  if (!sub_268CB2F00(a1))
  {

    v35 = sub_268CB7730();
    v36 = sub_268CB7BD0();
    v37 = OUTLINED_FUNCTION_13_2();
    if (os_log_type_enabled(v37, v38))
    {
      OUTLINED_FUNCTION_8_3();
      v39 = swift_slowAlloc();
      *v39 = 134217984;
      v40 = OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_entities;
      OUTLINED_FUNCTION_11_2();
      swift_beginAccess();
      *(v39 + 4) = sub_268CA73C0(*(v4 + v40));

      _os_log_impl(&dword_268C94000, v35, v36, "total entity count in pool: %ld", v39, 0xCu);
      OUTLINED_FUNCTION_0_4();
      MEMORY[0x26D62BBE0]();
    }

    else
    {
    }

    return sub_268CB32D4();
  }

  if (a3 != -1 && (a3 & 1) == 0)
  {
    sub_268CAADB4(a2, a3);
    sub_268CAADB4(a2, a3);
    sub_268CAADA8(a2, 0);
    v65[0] = sub_268CAA5B4(a2);
    sub_268CA9034(v65);
    if (!v61)
    {
      v59 = a2;
      v62 = a3;
      sub_268CAADCC(a2, a3);
      v41 = v65[0];
      v60 = MEMORY[0x277D84F90];
      v65[0] = MEMORY[0x277D84F90];
      v42 = sub_268CA73C0(v41);
      for (i = 0; ; ++i)
      {
        if (v42 == i)
        {

          v48 = v65[0];
          v65[0] = MEMORY[0x277D84F90];
          v49 = sub_268CA73C0(v48);
          v50 = 0;
          while (1)
          {
            if (v49 == v50)
            {

              sub_268CAADCC(v59, v62);
              return v60;
            }

            if ((v48 & 0xC000000000000001) != 0)
            {
              v51 = MEMORY[0x26D62B570](v50, v48);
            }

            else
            {
              if (v50 >= *(v48 + 16))
              {
                goto LABEL_70;
              }

              v51 = *(v48 + 8 * v50 + 32);
            }

            v52 = v51;
            v53 = v50 + 1;
            if (__OFADD__(v50, 1))
            {
              goto LABEL_69;
            }

            static RREntityMatcher.entity(_:matches:entityFoundByMarrsIdentifier:)();
            v55 = v54;

            ++v50;
            if (v55)
            {
              MEMORY[0x26D62B3D0](v56);
              if (*((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_268CB7B70();
              }

              sub_268CB7BA0();
              v60 = v65[0];
              v50 = v53;
            }
          }
        }

        if ((v41 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x26D62B570](i, v41);
        }

        else
        {
          if (i >= *(v41 + 16))
          {
            goto LABEL_68;
          }

          v44 = *(v41 + 8 * i + 32);
        }

        v45 = v44;
        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_268CB78C0();
        if (v46 >= 0.0025)
        {
          sub_268CB7D00();
          v47 = *(v65[0] + 16);
          sub_268CB7D20();
          sub_268CB7D30();
          sub_268CB7D10();
        }

        else
        {
        }
      }

LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v15 = OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_entities;
  OUTLINED_FUNCTION_11_2();
  swift_beginAccess();
  v16 = *(v4 + v15);
  v60 = MEMORY[0x277D84F90];
  v63 = MEMORY[0x277D84F90];
  v17 = sub_268CA73C0(v16);

  for (j = 0; v17 != j; ++j)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x26D62B570](j, v16);
    }

    else
    {
      if (j >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_64;
      }

      v19 = *(v16 + 8 * j + 32);
    }

    v20 = v19;
    if (__OFADD__(j, 1))
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    sub_268CB7810();
    v21 = sub_268CB7670();
    v23 = v22;

    if (v21 == 0xD000000000000010 && 0x8000000268CB9610 == v23)
    {
    }

    else
    {
      v25 = sub_268CB7DC0();

      if ((v25 & 1) == 0)
      {

        continue;
      }
    }

    sub_268CB7D00();
    v26 = *(v63 + 16);
    sub_268CB7D20();
    sub_268CB7D30();
    sub_268CB7D10();
  }

  v27 = v63;
  v64 = MEMORY[0x277D84F90];
  v28 = sub_268CA73C0(v27);
  v29 = 0;
  while (v28 != v29)
  {
    if ((v27 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x26D62B570](v29, v27);
    }

    else
    {
      if (v29 >= *(v27 + 16))
      {
        goto LABEL_66;
      }

      v30 = *(v27 + 8 * v29 + 32);
    }

    v31 = v30;
    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_65;
    }

    static RREntityMatcher.entity(_:matches:entityFoundByMarrsIdentifier:)();
    v34 = v33;

    ++v29;
    if (v34)
    {
      MEMORY[0x26D62B3D0]();
      if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268CB7B70();
      }

      sub_268CB7BA0();
      v60 = v64;
      v29 = v32;
    }
  }

  return v60;
}

void *sub_268CA7D60(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA590, &qword_268CB8E08);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v33 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA598, &qword_268CB8E10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - v9;
  sub_268CAD2F8(a1);
  v12 = v11;
  if (sub_268CA73C0(v11))
  {
    sub_268CB7060();
    sub_268CB71F0();
    if (v34)
    {

      v13 = sub_268CA767C(a1, v12, 0);
      if (sub_268CA73C0(v13))
      {

        v12 = v13;
      }

      else
      {
      }
    }
  }

  v14 = sub_268CA767C(a1, 0, 255);
  v15 = v14;
  if (!sub_268CA837C(a1))
  {
    goto LABEL_8;
  }

  sub_268CB72C0();
  v16 = sub_268CB4D18(v10);
  v18 = v17;
  sub_268CAAE38(v10, &qword_2802DA598, &qword_268CB8E10);
  if (v18)
  {

LABEL_8:
    v19 = 0;
    goto LABEL_10;
  }

  v20 = sub_268CB7930();
  v19 = 1;
  v21 = v33;
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v20);
  v22 = sub_268CB52DC(v14, v21, v2, v16);

  sub_268CAAA08(v14, 0);
  sub_268CAAE38(v21, &qword_2802DA590, &qword_268CB8E08);
  v15 = v22;
LABEL_10:
  v23 = sub_268CB7730();
  v24 = sub_268CB7BC0();
  v25 = OUTLINED_FUNCTION_13_2();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_268C94000, v23, v24, "Sorting resolved candidates with saliency score", v27, 2u);
    OUTLINED_FUNCTION_0_4();
    MEMORY[0x26D62BBE0]();
  }

  sub_268CAADA8(v15, 0);

  v34 = sub_268CAA5B4(v28);
  sub_268CA9034(&v34);
  sub_268CAAA08(v15, 0);
  v29 = v34;
  v30 = sub_268CA81EC(v12, v34, 0, v19);
  sub_268CAAA08(v15, 0);
  sub_268CAAA08(v29, 0);

  return v30;
}

void *sub_268CA81EC(unint64_t a1, void *a2, char a3, char a4)
{
  if (a1 >> 62)
  {
    if (sub_268CB7D50())
    {
LABEL_3:

      v8 = 0;
      v9 = a1;
      if ((a4 & 1) == 0)
      {
        return v9;
      }

      goto LABEL_7;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  sub_268CAADA8(a2, a3 & 1);
  v9 = a2;
  v8 = a3;
  if ((a4 & 1) == 0)
  {
    return v9;
  }

LABEL_7:
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA450, &qword_268CB8960);
    swift_willThrowTypedImpl();
    return v9;
  }

  if (!sub_268CA73C0(a2) || (sub_268CA90B0(a2, a1) & 1) != 0)
  {
    return v9;
  }

  v11 = sub_268CB7730();
  v12 = sub_268CB7BC0();
  v13 = OUTLINED_FUNCTION_13_2();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_268C94000, v11, v12, "Resolver ordinal match results are diffrent from Marrs results. Returning ordinal match results", v15, 2u);
    OUTLINED_FUNCTION_0_4();
    MEMORY[0x26D62BBE0]();
  }

  sub_268CAAA08(v9, v8 & 1);

  sub_268CAADA8(a2, 0);
  return a2;
}

uint64_t sub_268CA837C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4F0, &unk_268CB8BB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268CB8BA0;
  *(inited + 32) = a1;
  v33 = inited;
  v3 = sub_268CA73C0(inited);

  if (!v3)
  {
LABEL_44:

    return 0;
  }

LABEL_2:
  result = sub_268CA73E4(inited);
  if (result)
  {
    __break(1u);
    goto LABEL_51;
  }

  result = sub_268CA73C0(inited);
  if (!result)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if ((inited & 0xC000000000000001) == 0)
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(inited + 32);

      goto LABEL_7;
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v5 = MEMORY[0x26D62B570](0, inited);
LABEL_7:
  result = sub_268CA73C0(inited);
  if (!result)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  result = sub_268CA73C0(inited);
  if (result < 1)
  {
    goto LABEL_53;
  }

  v6 = sub_268CA73C0(inited);
  v7 = __OFSUB__(v6, 1);
  result = v6 - 1;
  if (v7)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  sub_268CAA514(result);
  sub_268CAAC64(0, 1, 0);
  v8 = sub_268CB7650();
  v9 = sub_268CA63D0(0x507473694C6F7375, 0xEF6E6F697469736FLL, v8);

  if (!v9)
  {
    goto LABEL_19;
  }

  result = sub_268CA73C0(v9);
  if (!result)
  {

    goto LABEL_19;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D62B570](0, v9);
    goto LABEL_15;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v9 + 32);

LABEL_15:

    v11 = sub_268CB7620();

    if (v11)
    {
      sub_268CB72E0();

      sub_268CB71F0();

      v12 = v32;
      if (v32)
      {
LABEL_49:

        return v12;
      }
    }

LABEL_19:
    v12 = v5;
    v13 = sub_268CB7650();
    v14 = 0;
    v15 = v13 + 64;
    v29 = v13 + 64;
    v30 = v13;
    v16 = 1 << *(v13 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v13 + 64);
    v19 = (v16 + 63) >> 6;
    v28 = v19;
    if (v18)
    {
LABEL_23:
      v20 = v14;
LABEL_27:
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v22 = *(*(v30 + 56) + ((v20 << 9) | (8 * v21)));
      v12 = MEMORY[0x277D84F90];
      v32 = MEMORY[0x277D84F90];
      v23 = sub_268CA73C0(v22);

      v24 = 0;
      v31 = v12;
      while (1)
      {
        if (v23 == v24)
        {

          v12 = &v33;
          sub_268CA879C(v31);
          v14 = v20;
          v19 = v28;
          v15 = v29;
          if (!v18)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        if ((v22 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x26D62B570](v24, v22);
        }

        else
        {
          if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }

          v12 = *(v22 + 8 * v24 + 32);
        }

        v25 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        v26 = sub_268CB7620();

        ++v24;
        if (v26)
        {
          MEMORY[0x26D62B3D0](v27);
          if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_268CB7B70();
          }

          v12 = &v32;
          sub_268CB7BA0();
          v31 = v32;
          v24 = v25;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
    }

    else
    {
LABEL_24:
      while (1)
      {
        v20 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v20 >= v19)
        {

          inited = v33;
          if (sub_268CA73C0(v33))
          {
            goto LABEL_2;
          }

          goto LABEL_44;
        }

        v18 = *(v15 + 8 * v20);
        ++v14;
        if (v18)
        {
          goto LABEL_27;
        }
      }
    }

    __break(1u);
    goto LABEL_49;
  }

LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_268CA879C(unint64_t a1)
{
  v3 = sub_268CA73C0(a1);
  v4 = sub_268CA73C0(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_268CAA514(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_268CAA7BC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_268CA8848(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_268CAA4AC(result);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_268CB7160();
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_268CA8948()
{

  v0 = sub_268CB7730();
  v1 = sub_268CB7BC0();

  if (os_log_type_enabled(v0, v1))
  {
    OUTLINED_FUNCTION_8_3();
    v2 = swift_slowAlloc();
    OUTLINED_FUNCTION_7_2();
    v3 = swift_slowAlloc();
    v37 = v3;
    *v2 = 136315138;
    sub_268CB77D0();
    sub_268CAAA14();
    v4 = sub_268CB7D90();
    v6 = sub_268CA5820(v4, v5, &v37);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_268C94000, v0, v1, "Resolver call with ResolveQuery: %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    OUTLINED_FUNCTION_0_4();
    MEMORY[0x26D62BBE0]();
    OUTLINED_FUNCTION_0_4();
    MEMORY[0x26D62BBE0]();
  }

  v7 = sub_268CB77B0();
  v8 = sub_268CA7D60(v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {

    v11 = sub_268CB7730();
    v12 = sub_268CB7BD0();
    v13 = OUTLINED_FUNCTION_13_2();
    if (os_log_type_enabled(v13, v14))
    {
      OUTLINED_FUNCTION_8_3();
      v15 = swift_slowAlloc();
      OUTLINED_FUNCTION_7_2();
      v16 = swift_slowAlloc();
      v37 = v16;
      *v15 = 136315138;
      v17 = sub_268CB7910();
      v18 = MEMORY[0x26D62B400](v8, v17);
      v20 = sub_268CA5820(v18, v19, &v37);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_268C94000, v11, v12, "Resolved candicates BEFORE post-processing and thresholding: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      OUTLINED_FUNCTION_0_4();
      MEMORY[0x26D62BBE0]();
      OUTLINED_FUNCTION_0_4();
      MEMORY[0x26D62BBE0]();
    }

    v21 = sub_268CA1ACC(v8);
    sub_268CAAA08(v8, 0);
    v37 = MEMORY[0x277D84F90];
    v22 = sub_268CA73C0(v21);
    for (i = 0; v22 != i; ++i)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x26D62B570](i, v21);
      }

      else
      {
        if (i >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v24 = *(v21 + 8 * i + 32);
      }

      v25 = v24;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      sub_268CB78C0();
      if (v26 >= 0.0025)
      {
        sub_268CB7D00();
        v27 = v37[2];
        sub_268CB7D20();
        sub_268CB7D30();
        sub_268CB7D10();
      }

      else
      {
      }
    }

    v28 = v37;

    v29 = sub_268CB7730();
    v30 = sub_268CB7BD0();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      OUTLINED_FUNCTION_7_2();
      v32 = swift_slowAlloc();
      v37 = v32;
      *v31 = 134218242;
      *(v31 + 4) = 0x3F647AE147AE147BLL;
      *(v31 + 12) = 2080;
      v33 = sub_268CB7910();
      v34 = MEMORY[0x26D62B400](v28, v33);
      v36 = sub_268CA5820(v34, v35, &v37);

      *(v31 + 14) = v36;
      _os_log_impl(&dword_268C94000, v29, v30, "Resolved candicates AFTER post-processing and thresholding (>=%f): %s", v31, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      OUTLINED_FUNCTION_0_4();
      MEMORY[0x26D62BBE0]();
      OUTLINED_FUNCTION_0_4();
      MEMORY[0x26D62BBE0]();
    }

    sub_268CAAA08(v8, 0);
  }
}

uint64_t sub_268CA8D7C(uint64_t a1)
{
  v2 = sub_268CB7950();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, a1, v2);
  v7 = *(v3 + 88);
  v8 = OUTLINED_FUNCTION_5_3();
  if (v9(v8) == *MEMORY[0x277D5FEA8])
  {
    v10 = *(v3 + 96);
    v11 = OUTLINED_FUNCTION_5_3();
    v12(v11);
    v13 = *v6;
    v14 = sub_268CB77D0();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();

    OUTLINED_FUNCTION_11_2();
    sub_268CB77A0();
    sub_268CA8948();
    v18 = v17;
  }

  else
  {
    v19 = *(v3 + 8);
    v20 = OUTLINED_FUNCTION_5_3();
    v21(v20);
    sub_268CAAA6C();
    v18 = swift_allocError();
    *v22 = 0;
  }

  return v18;
}

uint64_t RRResolver.deinit()
{
  v1 = OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_logger;
  v2 = sub_268CB7750();
  OUTLINED_FUNCTION_2_4(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_entities);

  return v0;
}

uint64_t RRResolver.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_logger;
  v2 = sub_268CB7750();
  OUTLINED_FUNCTION_2_4(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_entities);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_268CA9034(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_268CAAC50(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_268CA9958(v6);
  return sub_268CB7D10();
}

uint64_t sub_268CA90B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_268CB7D50())
  {
    if (a2 >> 62)
    {
      result = sub_268CB7D50();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v20 = 0;
      return v20 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a1 < 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v21 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v20 = 1;
      return v20 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_268CB7910();
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    v13 = a2;
    while (1)
    {
      v14 = v12 - 4;
      v15 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x26D62B570](v12 - 4, a1);
      }

      else
      {
        if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v16 = *(a1 + 8 * v12);
      }

      v17 = v16;
      if (v11)
      {
        v18 = MEMORY[0x26D62B570](v12 - 4, a2);
      }

      else
      {
        if (v14 >= *(v21 + 16))
        {
          goto LABEL_35;
        }

        v18 = *(a2 + 8 * v12);
      }

      v19 = v18;
      v20 = sub_268CB7C10();

      if (v20)
      {
        ++v12;
        a2 = v13;
        if (v15 != i)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

unint64_t sub_268CA9270(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_268CA9294(uint64_t result)
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
      sub_268CB7910();
      result = sub_268CB7B90();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

void sub_268CA92F0()
{
  OUTLINED_FUNCTION_14_1();
  if (v3)
  {
    OUTLINED_FUNCTION_4_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_2();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_4();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = v0[2];
  if (v4 <= v7)
  {
    v8 = v0[2];
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA468, &qword_268CB8978);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    v9[2] = v7;
    v9[3] = 2 * ((v10 - 32) / 40);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v9 != v0 || &v0[5 * v7 + 4] <= v9 + 4)
    {
      memmove(v9 + 4, v0 + 4, 40 * v7);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA418, &qword_268CB8E00);
    swift_arrayInitWithCopy();
  }
}

void sub_268CA9410()
{
  OUTLINED_FUNCTION_14_1();
  if (v3)
  {
    OUTLINED_FUNCTION_4_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_2();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_4();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA588, &unk_268CB8DF0);
    v9 = swift_allocObject();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_10_2();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_268CA94F4()
{
  OUTLINED_FUNCTION_14_1();
  if (v3)
  {
    OUTLINED_FUNCTION_4_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_2();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_4();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA580, &qword_268CB8DE8);
    v9 = swift_allocObject();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_10_2();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_268CA95D0()
{
  OUTLINED_FUNCTION_14_1();
  if (v3)
  {
    OUTLINED_FUNCTION_4_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_2();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_4();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_268CA9724(v7, v4);
  v9 = *(sub_268CB7160() - 8);
  if (v1)
  {
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    sub_268CA9840(v0 + v10, v7, v8 + v10);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_268CA96A4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4F0, &unk_268CB8BB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

size_t sub_268CA9724(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5A0, qword_268CB8E18);
  v4 = *(sub_268CB7160() - 8);
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

char *sub_268CA9820(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_4(a3, result);
  }

  return result;
}

uint64_t sub_268CA9840(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (v6 = sub_268CB7160(), result = OUTLINED_FUNCTION_2_4(v6), a1 + *(v8 + 72) * a2 <= a3))
  {
    sub_268CB7160();
    v10 = OUTLINED_FUNCTION_5_3();

    return MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_5_3();

    return MEMORY[0x2821FE820](v9);
  }

  return result;
}

void *sub_268CA9904(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_268CA9928@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_268CA9958(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_268CB7D80();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_268CA9294(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_268CA9B20(v8, v9, a1, v5);
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
    sub_268CA9A38(0, v3, 1, a1);
  }
}

void sub_268CA9A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      v10 = v6;
      do
      {
        v11 = *v10;
        v12 = v8;
        v13 = v11;
        sub_268CB78C0();
        v15 = v14;
        sub_268CB78C0();
        v17 = v16;

        if (v17 >= v15)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v18 = *v10;
        v8 = *(v10 + 8);
        *v10 = v8;
        *(v10 + 8) = v18;
        v10 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 += 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_268CA9B20(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_91:
    v107 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    v8 = v109;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_93:
      v95 = (v7 + 16);
      v96 = *(v7 + 16);
      while (v96 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_129;
        }

        v97 = v7;
        v98 = (v7 + 16 * v96);
        v99 = *v98;
        v100 = &v95[2 * v96];
        v7 = v100[1];
        sub_268CAA148((*a3 + 8 * *v98), (*a3 + 8 * *v100), (*a3 + 8 * v7), v107);
        if (v8)
        {
          break;
        }

        if (v7 < v99)
        {
          goto LABEL_117;
        }

        if (v96 - 2 >= *v95)
        {
          goto LABEL_118;
        }

        *v98 = v99;
        v98[1] = v7;
        v101 = *v95 - v96;
        if (*v95 < v96)
        {
          goto LABEL_119;
        }

        v96 = *v95 - 1;
        memmove(v100, v100 + 2, 16 * v101);
        *v95 = v96;
        v7 = v97;
      }

LABEL_101:

      return;
    }

LABEL_126:
    v7 = sub_268CAA378(v7);
    goto LABEL_93;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    if (v6 + 1 < v5)
    {
      v10 = (*a3 + 8 * v6);
      v11 = 8 * v6;
      v13 = *v10;
      v12 = v10 + 2;
      v14 = v6 + 1;
      v15 = *(*a3 + 8 * v9);
      v16 = v13;
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_15_1();
      v18 = v17;

      v9 = v14;
      v104 = v8;
      v19 = v8 + 2;
      while (1)
      {
        v20 = v19;
        v21 = v9 + 1;
        if (v21 >= v5)
        {
          break;
        }

        v22 = *(v12 - 1);
        v23 = v21;
        v24 = *v12;
        v25 = v22;
        OUTLINED_FUNCTION_9_2();
        v27 = v26;
        sub_268CB78C0();
        v29 = v28;

        v9 = v23;
        ++v12;
        v19 = v20 + 1;
        if (v18 < v4 == v29 >= v27)
        {
          goto LABEL_9;
        }
      }

      v9 = v5;
LABEL_9:
      if (v18 >= v4)
      {
        v8 = v104;
      }

      else
      {
        v8 = v104;
        if (v9 < v104)
        {
          goto LABEL_123;
        }

        if (v104 < v9)
        {
          if (v5 >= v20)
          {
            v30 = v20;
          }

          else
          {
            v30 = v5;
          }

          v31 = 8 * v30 - 8;
          v32 = v9;
          v33 = v104;
          do
          {
            if (v33 != --v32)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_130;
              }

              v35 = *(v34 + v11);
              *(v34 + v11) = *(v34 + v31);
              *(v34 + v31) = v35;
            }

            ++v33;
            v31 -= 8;
            v11 += 8;
          }

          while (v33 < v32);
        }
      }
    }

    v36 = a3[1];
    if (v9 < v36)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_122;
      }

      if (v9 - v8 < a4)
      {
        break;
      }
    }

LABEL_38:
    if (v9 < v8)
    {
      goto LABEL_121;
    }

    v106 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v92 = *(v7 + 16);
      sub_268CA94F4();
      v7 = v93;
    }

    v52 = *(v7 + 16);
    v53 = v52 + 1;
    if (v52 >= *(v7 + 24) >> 1)
    {
      sub_268CA94F4();
      v7 = v94;
    }

    *(v7 + 16) = v53;
    v54 = v7 + 32;
    v55 = (v7 + 32 + 16 * v52);
    *v55 = v8;
    v55[1] = v106;
    v107 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (v52)
    {
      while (1)
      {
        v56 = v53 - 1;
        v57 = (v54 + 16 * (v53 - 1));
        v58 = (v7 + 16 * v53);
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v59 = *(v7 + 32);
          v60 = *(v7 + 40);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_58:
          if (v62)
          {
            goto LABEL_108;
          }

          v74 = *v58;
          v73 = v58[1];
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_111;
          }

          v78 = v57[1];
          v79 = v78 - *v57;
          if (__OFSUB__(v78, *v57))
          {
            goto LABEL_114;
          }

          if (__OFADD__(v76, v79))
          {
            goto LABEL_116;
          }

          if (v76 + v79 >= v61)
          {
            if (v61 < v79)
            {
              v56 = v53 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        if (v53 < 2)
        {
          goto LABEL_110;
        }

        v81 = *v58;
        v80 = v58[1];
        v69 = __OFSUB__(v80, v81);
        v76 = v80 - v81;
        v77 = v69;
LABEL_73:
        if (v77)
        {
          goto LABEL_113;
        }

        v83 = *v57;
        v82 = v57[1];
        v69 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v69)
        {
          goto LABEL_115;
        }

        if (v84 < v76)
        {
          goto LABEL_87;
        }

LABEL_80:
        if (v56 - 1 >= v53)
        {
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v88 = v7;
        v89 = (v54 + 16 * (v56 - 1));
        v90 = *v89;
        v7 = v54 + 16 * v56;
        v91 = *(v7 + 8);
        sub_268CAA148((*a3 + 8 * *v89), (*a3 + 8 * *v7), (*a3 + 8 * v91), v107);
        if (v109)
        {
          goto LABEL_101;
        }

        if (v91 < v90)
        {
          goto LABEL_103;
        }

        v8 = *(v88 + 16);
        if (v56 > v8)
        {
          goto LABEL_104;
        }

        *v89 = v90;
        v89[1] = v91;
        if (v56 >= v8)
        {
          goto LABEL_105;
        }

        v53 = v8 - 1;
        memmove((v54 + 16 * v56), (v7 + 16), 16 * (v8 - 1 - v56));
        v7 = v88;
        *(v88 + 16) = v8 - 1;
        if (v8 <= 2)
        {
          goto LABEL_87;
        }
      }

      v63 = v54 + 16 * v53;
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_106;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_107;
      }

      v70 = v58[1];
      v71 = v70 - *v58;
      if (__OFSUB__(v70, *v58))
      {
        goto LABEL_109;
      }

      v69 = __OFADD__(v61, v71);
      v72 = v61 + v71;
      if (v69)
      {
        goto LABEL_112;
      }

      if (v72 >= v66)
      {
        v86 = *v57;
        v85 = v57[1];
        v69 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v69)
        {
          goto LABEL_120;
        }

        if (v61 < v87)
        {
          v56 = v53 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_58;
    }

LABEL_87:
    v5 = a3[1];
    v6 = v106;
    if (v106 >= v5)
    {
      goto LABEL_91;
    }
  }

  v37 = (v8 + a4);
  if (__OFADD__(v8, a4))
  {
    goto LABEL_124;
  }

  if (v37 >= v36)
  {
    v37 = a3[1];
  }

  if (v37 < v8)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  if (v9 == v37)
  {
    goto LABEL_38;
  }

  v38 = *a3;
  v39 = *a3 + 8 * v9 - 8;
  v105 = v8;
  v107 = v37;
  v40 = v8 - v9;
LABEL_31:
  v41 = v9;
  v42 = *(v38 + 8 * v9);
  v43 = v40;
  v44 = v39;
  while (1)
  {
    v45 = *v44;
    v46 = v42;
    v47 = v45;
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_15_1();
    v49 = v48;

    if (v49 >= v4)
    {
LABEL_36:
      v9 = v41 + 1;
      v39 += 8;
      --v40;
      if ((v41 + 1) == v107)
      {
        v9 = v107;
        v8 = v105;
        goto LABEL_38;
      }

      goto LABEL_31;
    }

    if (!v38)
    {
      break;
    }

    v50 = *v44;
    v42 = *(v44 + 8);
    *v44 = v42;
    *(v44 + 8) = v50;
    v44 -= 8;
    if (__CFADD__(v43++, 1))
    {
      goto LABEL_36;
    }
  }

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
}

uint64_t sub_268CAA148(void **__src, id *__dst, id *a3, void **a4)
{
  v6 = a4;
  v7 = a3;
  v8 = __dst;
  v9 = __src;
  v10 = __dst - __src;
  v11 = a3 - __dst;
  if (v10 < v11)
  {
    if (a4 != __src || &__src[v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v13 = &v6[v10];
    while (1)
    {
      if (v6 >= v13 || v8 >= v7)
      {
        v8 = v9;
        goto LABEL_38;
      }

      v15 = v7;
      v16 = *v6;
      v17 = *v8;
      v18 = v16;
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_15_1();
      v20 = v19;

      if (v20 >= v5)
      {
        break;
      }

      v21 = v8;
      v22 = v9 == v8++;
      if (!v22)
      {
        goto LABEL_17;
      }

LABEL_18:
      ++v9;
      v7 = v15;
    }

    v21 = v6;
    v22 = v9 == v6++;
    if (v22)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v9 = *v21;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[v11] <= a4)
  {
    memmove(a4, __dst, 8 * v11);
  }

  v13 = &v6[v11];
  v40 = v6;
LABEL_25:
  v24 = v8 - 1;
  v25 = v7 - 1;
  while (v13 > v6 && v8 > v9)
  {
    v27 = v8;
    v28 = v9;
    v29 = v25;
    v30 = v24;
    v31 = *v24;
    v32 = *(v13 - 1);
    v33 = v31;
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_15_1();
    v35 = v34;

    v7 = v29;
    v36 = v29 + 1;
    if (v35 < v5)
    {
      v8 = v30;
      v9 = v28;
      v6 = v40;
      if (v36 != v27)
      {
        *v7 = *v30;
        v8 = v30;
      }

      goto LABEL_25;
    }

    if (v13 != v36)
    {
      *v29 = *(v13 - 1);
    }

    v25 = v29 - 1;
    --v13;
    v24 = v30;
    v9 = v28;
    v6 = v40;
  }

LABEL_38:
  v37 = v13 - v6;
  if (v8 != v6 || v8 >= &v6[v37])
  {
    memmove(v8, v6, 8 * v37);
  }

  return 1;
}

char *sub_268CAA38C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_4(a3, result);
  }

  return result;
}

char *sub_268CAA3AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA580, &qword_268CB8DE8);
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

void sub_268CAA4AC(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) > a1)
    {
      v5 = *(v3 + 16);
    }

    sub_268CA95D0();
    *v1 = v6;
  }
}

uint64_t sub_268CAA514(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_268CB7D50();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_268CB7CE0();
  *v1 = result;
  return result;
}

uint64_t sub_268CAA5B4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_268CB7D50();
    if (v4)
    {
      v5 = v4;
      v2 = sub_268CA96A4(v4, 0);
      sub_268CAA648((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_268CAA648(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_268CB7D50();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_268CA73C0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_268CB7910();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_268CAADE4(&qword_2802DA578, &qword_2802DA570, &qword_268CB8DE0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA570, &qword_268CB8DE0);
          v9 = sub_268CAA99C(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_268CAA7BC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_268CB7D50();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_268CA73C0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_268CB7680();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_268CAADE4(&qword_2802DA568, &qword_2802DA560, &unk_268CB8DD0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA560, &unk_268CB8DD0);
          v9 = sub_268CAA930(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_268CAA930(uint64_t a1, unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  OUTLINED_FUNCTION_6_3(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_5_3();
    v8 = MEMORY[0x26D62B570](v10);
  }

  *v3 = v8;
  return sub_268CAA994;
}

void (*sub_268CAA99C(uint64_t a1, unint64_t a2, uint64_t a3))(id *a1)
{
  OUTLINED_FUNCTION_6_3(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_5_3();
    v7 = MEMORY[0x26D62B570](v9);
  }

  *v3 = v7;
  return sub_268CAAA00;
}

void sub_268CAAA08(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_268CAAA14()
{
  result = qword_28131E6C0;
  if (!qword_28131E6C0)
  {
    sub_268CB77D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28131E6C0);
  }

  return result;
}

unint64_t sub_268CAAA6C()
{
  result = qword_2802DA558;
  if (!qword_2802DA558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802DA558);
  }

  return result;
}

uint64_t dispatch thunk of RRResolver.resolve(query:)()
{
  return (*(*v0 + 160))();
}

{
  return (*(*v0 + 168))();
}

uint64_t sub_268CAAC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_268CB7680();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_21:
  result = sub_268CB7D50();
LABEL_6:
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || &v15[8 * v13] <= v14)
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_268CB7D50();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_23;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_24:
    __break(1u);
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

id sub_268CAADA8(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

id sub_268CAADB4(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_268CAADA8(result, a2 & 1);
  }

  return result;
}

void sub_268CAADCC(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_268CAAA08(a1, a2 & 1);
  }
}

uint64_t sub_268CAADE4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_268CAAE38(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2_4(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t OUTLINED_FUNCTION_6_3(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_268C95A70(a3);

  return sub_268CA9270(a2, v5, a3);
}

uint64_t OUTLINED_FUNCTION_9_2()
{

  return sub_268CB78C0();
}

uint64_t OUTLINED_FUNCTION_15_1()
{

  return sub_268CB78C0();
}

uint64_t type metadata accessor for MediaItemStructuredDataHandler()
{
  result = qword_2802DA5A8;
  if (!qword_2802DA5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268CAB038()
{
  result = sub_268CB7750();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_268CAB104(void *a1)
{
  v3 = sub_268CB7840();
  v5 = sub_268CAB1C8(v3, v4, a1);
  if (v1)
  {
  }

  v7 = v5;

  v8 = sub_268C9F044(0, 0, 0, 0, v7, 0, 0, 0, 0xF000000000000000);

  return v8;
}

void *sub_268CAB1C8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_268CB7380();
  v8 = OUTLINED_FUNCTION_2_0(v7);
  v37 = v9;
  v38 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_5();
  v36 = v13 - v12;
  v14 = sub_268CB7160();
  v39 = OUTLINED_FUNCTION_2_0(v14);
  v40 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2_5();
  v20 = v19 - v18;
  v21 = sub_268CB7460();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_268CB7450();
  v41 = v24;
  sub_268CABA88(a3, &selRef_title);
  if (v25)
  {
    sub_268CB7440();
  }

  sub_268CAB564(a1, a2, &v41, a3);
  if (v3)
  {
  }

  else
  {
    sub_268CABA88(a3, &selRef_identifier);
    if (v26)
    {

      OUTLINED_FUNCTION_1_5();
      sub_268CB7090();
      (*(v40 + 8))(v20, v39);
    }

    sub_268CABA88(a3, &selRef_identifier);
    if (v27)
    {

      OUTLINED_FUNCTION_1_5();
      sub_268CB7090();
      (*(v40 + 8))(v20, v39);
    }

    v28 = sub_268CB75A0();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    sub_268CB7590();
    v31 = [a3 type] - 1;
    if (v31 <= 0x13)
    {
      (*(v37 + 104))(v36, **(&unk_279C47970 + v31), v38);
      sub_268CB7580();
      (*(v37 + 8))(v36, v38);

      sub_268CB7430();
    }

    sub_268CABA88(a3, &selRef_artist);
    if (v32)
    {
      v33 = *(v21 + 48);
      v34 = *(v21 + 52);
      swift_allocObject();
      sub_268CB7450();
      sub_268CB7440();

      sub_268CB7420();
    }

    a3 = MEMORY[0x26D62AA30](v24);
  }

  return a3;
}

uint64_t sub_268CAB564(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v48 = a3;
  v8 = sub_268CB7160();
  v9 = OUTLINED_FUNCTION_2_0(v8);
  v49 = v10;
  v50 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_5();
  v15 = v14 - v13;
  v16 = sub_268CB7700();
  v17 = OUTLINED_FUNCTION_2_0(v16);
  v51 = v18;
  v52 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v17);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v47 - v24;
  v26 = a1 == 0x6C7070612E6D6F63 && a2 == 0xEF636973754D2E65;
  if (v26 || (sub_268CB7DC0() & 1) != 0 || OUTLINED_FUNCTION_4_4() == 1 || OUTLINED_FUNCTION_4_4() == 2 || OUTLINED_FUNCTION_4_4() == 5 || (result = OUTLINED_FUNCTION_4_4(), result == 14))
  {
    result = sub_268CABA88(a4, &selRef_identifier);
    if (v28)
    {
      sub_268CB7720();

      if (!v4)
      {
        v30 = v51;
        v29 = v52;
        (*(v51 + 16))(v23, v25, v52);
        v31 = (*(v30 + 88))(v23, v29);
        if (v31 == *MEMORY[0x277D2A540])
        {
          v32 = OUTLINED_FUNCTION_3_5();
          v33(v32);
          v34 = *v23;
          v35 = *(v23 + 1);
          v36 = *(v23 + 3);

          v37 = *v48;

          sub_268CB7130();
          sub_268CB7090();
          (*(v49 + 8))(v15, v50);
          return (*(v30 + 8))(v25, v52);
        }

        else if (v31 == *MEMORY[0x277D2A548])
        {
          v38 = OUTLINED_FUNCTION_3_5();
          v39(v38);
          v40 = *v23;
          v41 = *(v23 + 2);

          v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5B8, qword_268CB8E80) + 64);
          v42 = *v48;
          v53 = v40;
          sub_268CB7D90();

          sub_268CB7130();
          sub_268CB7090();
          (*(v49 + 8))(v15, v50);
          (*(v30 + 8))(v25, v52);
          v43 = sub_268CB7710();
          return (*(*(v43 - 8) + 8))(&v23[v47], v43);
        }

        else
        {
          v44 = sub_268CB76F0();
          sub_268CA6EAC();
          swift_allocError();
          *v45 = 0xD000000000000026;
          v45[1] = 0x8000000268CB9D90;
          (*(*(v44 - 8) + 104))(v45, *MEMORY[0x277D61E00], v44);
          swift_willThrow();
          v46 = *(v30 + 8);
          v46(v25, v29);
          return (v46)(v23, v29);
        }
      }
    }
  }

  return result;
}

uint64_t sub_268CABA88(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_268CB7A10();

  return v4;
}

uint64_t OUTLINED_FUNCTION_1_5()
{

  return sub_268CB7130();
}

id OUTLINED_FUNCTION_4_4()
{

  return [v0 (v1 + 504)];
}

uint64_t sub_268CABB58()
{
  v1 = OBJC_IVAR____TtC21SiriReferenceResolver15RRReaderMatcher_logger;
  v2 = sub_268CB7750();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for RRReaderMatcher()
{
  result = qword_2802DA5C0;
  if (!qword_2802DA5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268CABC48()
{
  result = sub_268CB7750();
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

uint64_t sub_268CABCD8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  v1 = sub_268CB7A00();
  v2 = [v0 persistentDomainForName_];

  if (!v2 || (v3 = sub_268CB79B0(), v2, !v3))
  {
    v6 = 0u;
    v7 = 0u;
    goto LABEL_8;
  }

  sub_268CA39AC(0xD000000000000012, 0x8000000268CB9E90, v3, &v6);

  if (!*(&v7 + 1))
  {
LABEL_8:
    sub_268CABFC4(&v6);
    return 2;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_268CABE18()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  v1 = sub_268CB7A00();
  v2 = [v0 persistentDomainForName_];

  if (!v2 || (v3 = sub_268CB79B0(), v2, !v3))
  {
    v6 = 0u;
    v7 = 0u;
    goto LABEL_9;
  }

  sub_268CA39AC(0x617461446B636F6DLL, 0xEC00000065707954, v3, &v6);

  if (!*(&v7 + 1))
  {
LABEL_9:
    sub_268CABFC4(&v6);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268CABF5C(char a1)
{
  if (a1)
  {
    return 0x617461446B636F6DLL;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_268CABFC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA410, &unk_268CB8920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268CAC02C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA528, &qword_268CB8CF0);
  __swift_allocate_value_buffer(v0, qword_2802DA698);
  __swift_project_value_buffer(v0, qword_2802DA698);
  sub_268CB7680();
  sub_268CB7370();
  return sub_268CB7690();
}

uint64_t sub_268CAC0BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a2;
  v4 = sub_268CB7160();
  v66 = *(v4 - 8);
  v67 = v4;
  v5 = *(v66 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v65 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v55 - v8;
  v10 = sub_268CB7750();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA528, &qword_268CB8CF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5D0, &unk_268CB8F00);
  sub_268CB7A20();
  v64 = "specifyingContactAddress";
  sub_268CB7740();
  v16 = sub_268CB7570();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v68 = sub_268CB7560();
  v19 = sub_268CB7650();
  v20 = sub_268CA63D0(0x7472617473, 0xE500000000000000, v19);

  if (!v20)
  {
    goto LABEL_15;
  }

  if (!sub_268CAAE90(v20))
  {

LABEL_15:
    v44 = sub_268CB76F0();
    sub_268CA6EAC();
    swift_allocError();
    *v45 = 0xD000000000000020;
    v45[1] = 0x8000000268CB9EB0;
    (*(*(v44 - 8) + 104))(v45, *MEMORY[0x277D61E00], v44);
    swift_willThrow();

    return (*(v11 + 8))(v14, v10);
  }

  sub_268CAAE98(0, (v20 & 0xC000000000000001) == 0, v20);
  if ((v20 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D62B570](0, v20);
  }

  else
  {
    v21 = *(v20 + 32);
  }

  v22 = sub_268CB7620();

  if (!v22)
  {
    goto LABEL_15;
  }

  v60 = v10;
  v23 = sub_268CB7410();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_268CB7400();
  v59 = v22;
  sub_268CB71A0();

  sub_268CB7550();
  v58 = v26;

  sub_268CAC85C();
  v61 = v14;
  if (v27)
  {
    v28 = sub_268CB7730();
    v29 = sub_268CB7BD0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_268C94000, v28, v29, "Adding end node since it contains at least one valid int", v30, 2u);
      MEMORY[0x26D62BBE0](v30, -1, -1);
    }

    sub_268CB7540();

    v14 = v61;
  }

  v31 = sub_268CB7530();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = sub_268CB7520();

  v62 = v34;
  sub_268CB7510();

  v35 = sub_268CB7660();
  v36 = *(v35 + 16);
  if (v36)
  {
    v56 = v11;
    v57 = v2;
    v37 = v67;
    v38 = *(v66 + 16);
    v39 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v55 = v35;
    v40 = v35 + v39;
    v41 = *(v66 + 72);
    v42 = (v66 + 8);
    v43 = v62;
    do
    {
      v38(v9, v40, v37);
      sub_268CB7090();
      (*v42)(v9, v37);
      v40 += v41;
      --v36;
    }

    while (v36);

    v11 = v56;
    v14 = v61;
  }

  else
  {

    v43 = v62;
  }

  v47 = v65;
  sub_268CB7130();
  sub_268CB7090();
  v48 = MEMORY[0x26D62AA30](v43);
  v49 = v67;
  if (v48)
  {
    sub_268CB7370();
    sub_268CB71F0();
    v50 = v69;
    if (v69)
    {

      (*(v66 + 8))(v47, v49);
      result = (*(v11 + 8))(v14, v60);
      *v63 = v50;
      return result;
    }

    v53 = sub_268CB76F0();
    sub_268CA6EAC();
    swift_allocError();
    *v54 = 0xD00000000000002ALL;
    v54[1] = 0x8000000268CB9C60;
    (*(*(v53 - 8) + 104))(v54, *MEMORY[0x277D61E00], v53);
    swift_willThrow();
  }

  else
  {
    v51 = sub_268CB76F0();
    sub_268CA6EAC();
    swift_allocError();
    *v52 = 0xD00000000000002DLL;
    v52[1] = 0x8000000268CB9C30;
    (*(*(v51 - 8) + 104))(v52, *MEMORY[0x277D61E00], v51);
    swift_willThrow();
  }

  (*(v66 + 8))(v47, v49);
  return (*(v11 + 8))(v14, v60);
}

void sub_268CAC85C()
{
  v1 = sub_268CB7750();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA528, &qword_268CB8CF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5D0, &unk_268CB8F00);
  sub_268CB7A20();
  sub_268CB7740();
  v3 = sub_268CB7650();
  v4 = sub_268CA63D0(6581861, 0xE300000000000000, v3);

  if (!v4)
  {
    goto LABEL_91;
  }

  if (!sub_268CAAE90(v4))
  {
    v33 = OUTLINED_FUNCTION_0_5();
    v34(v33);

    return;
  }

  OUTLINED_FUNCTION_6();
  if ((v4 & 0xC000000000000001) != 0)
  {
    goto LABEL_89;
  }

  v5 = *(v4 + 32);

LABEL_5:

  v6 = sub_268CB7620();

  if (!v6)
  {
LABEL_91:
    v67 = OUTLINED_FUNCTION_0_5();
    v68(v67);
    return;
  }

  v7 = sub_268CB7650();
  v8 = sub_268CA63D0(1702125924, 0xE400000000000000, v7);

  if (!v8)
  {
    goto LABEL_46;
  }

  if (!sub_268CAAE90(v8))
  {
    v37 = OUTLINED_FUNCTION_0_5();
    v38(v37);

    goto LABEL_50;
  }

  OUTLINED_FUNCTION_6();
  if ((v8 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_14();
  }

  else
  {
    v9 = *(v8 + 32);
  }

  v10 = sub_268CB7620();

  if (!v10)
  {
LABEL_46:
    v35 = OUTLINED_FUNCTION_0_5();
    v36(v35);
LABEL_50:

    return;
  }

  v11 = sub_268CB7650();
  v12 = sub_268CA63D0(1701669236, 0xE400000000000000, v11);

  if (!v12)
  {
    goto LABEL_49;
  }

  if (!sub_268CAAE90(v12))
  {
    v59 = OUTLINED_FUNCTION_0_5();
    v60(v59);

    goto LABEL_50;
  }

  OUTLINED_FUNCTION_6();
  if ((v12 & 0xC000000000000001) != 0)
  {
    goto LABEL_95;
  }

  v13 = *(v12 + 32);

LABEL_15:

  v14 = sub_268CB7620();

  v72 = v14;
  if (!v14)
  {
LABEL_49:
    v39 = OUTLINED_FUNCTION_0_5();
    v40(v39);

    goto LABEL_50;
  }

  v15 = v10;
  v16 = sub_268CB7650();
  v17 = 0;
  v19 = v16 + 64;
  v18 = *(v16 + 64);
  OUTLINED_FUNCTION_1_6(v16);
  v10 = v21 & v20;
  v23 = (v22 + 63) >> 6;
  while (1)
  {
    while (1)
    {
LABEL_17:
      if (v10)
      {
        goto LABEL_22;
      }

      do
      {
        v24 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
          goto LABEL_88;
        }

        if (v24 >= v23)
        {
          v71 = 1;
          goto LABEL_52;
        }

        v10 = *(v19 + 8 * v24);
        ++v17;
      }

      while (!v10);
      v17 = v24;
LABEL_22:
      OUTLINED_FUNCTION_2_6(__rbit64(v10));
      if (v25)
      {
        v26 = OUTLINED_FUNCTION_4_5();
      }

      else
      {
        v26 = OUTLINED_FUNCTION_7_3();
      }

      v10 &= v10 - 1;
      if (v26)
      {
        if ((v15 & 0xC000000000000001) == 0)
        {
          OUTLINED_FUNCTION_8_4();
          if (v27)
          {
            OUTLINED_FUNCTION_10_3();
            goto LABEL_28;
          }

          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          OUTLINED_FUNCTION_14();
          goto LABEL_15;
        }

        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_9_3();

LABEL_28:
        v15 = sub_268CB7620();

        if (v15)
        {
          break;
        }
      }
    }

    sub_268CB7650();
    OUTLINED_FUNCTION_9_3();

    if (!*(v0 + 16))
    {
      goto LABEL_43;
    }

    v28 = OUTLINED_FUNCTION_3_6();
    if ((v29 & 1) == 0)
    {
      goto LABEL_43;
    }

    v15 = *(*(v0 + 56) + 8 * v28);

    if (v15 >> 62)
    {
      break;
    }

    if (OUTLINED_FUNCTION_7_3())
    {
      goto LABEL_33;
    }

LABEL_43:
  }

  if (!OUTLINED_FUNCTION_4_5())
  {
    goto LABEL_43;
  }

LABEL_33:
  if ((v15 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_14();
    v0 = v32;
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_8_4();
  if (v30)
  {
    OUTLINED_FUNCTION_10_3();
LABEL_36:

    v70 = sub_268CB7600();
    v15 = v31;

    if ((v15 & 1) != 0 || !v70)
    {
      goto LABEL_17;
    }

    v71 = 0;
LABEL_52:

    v41 = v72;
    v42 = sub_268CB7650();
    v43 = 0;
    v10 = v42 + 64;
    v44 = *(v42 + 64);
    OUTLINED_FUNCTION_1_6(v42);
    v47 = v46 & v45;
    v49 = (v48 + 63) >> 6;
    while (1)
    {
      while (1)
      {
        if (!v47)
        {
          while (1)
          {
            v50 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              break;
            }

            if (v50 >= v49)
            {

              if ((v71 & 1) == 0)
              {
                goto LABEL_90;
              }

              v61 = sub_268CB7730();
              v62 = sub_268CB7BD0();
              if (os_log_type_enabled(v61, v62))
              {
                v63 = swift_slowAlloc();
                *v63 = 0;
                _os_log_impl(&dword_268C94000, v61, v62, "Not returning endNode builder because all values are zeroes", v63, 2u);
                MEMORY[0x26D62BBE0](v63, -1, -1);
              }

              goto LABEL_91;
            }

            v47 = *(v10 + 8 * v50);
            ++v43;
            if (v47)
            {
              v43 = v50;
              goto LABEL_58;
            }
          }

LABEL_88:
          __break(1u);
LABEL_89:
          OUTLINED_FUNCTION_14();
          goto LABEL_5;
        }

LABEL_58:
        OUTLINED_FUNCTION_2_6(__rbit64(v47));
        if (v51)
        {
          v52 = OUTLINED_FUNCTION_4_5();
        }

        else
        {
          v52 = OUTLINED_FUNCTION_7_3();
        }

        v47 &= v47 - 1;
        if (v52)
        {
          if ((v41 & 0xC000000000000001) != 0)
          {

            OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_9_3();
          }

          else
          {
            OUTLINED_FUNCTION_8_4();
            if (!v53)
            {
              goto LABEL_94;
            }

            OUTLINED_FUNCTION_10_3();
          }

          v41 = sub_268CB7620();

          if (v41)
          {
            break;
          }
        }
      }

      sub_268CB7650();
      OUTLINED_FUNCTION_9_3();

      if (!*(v0 + 16))
      {
        goto LABEL_79;
      }

      v54 = OUTLINED_FUNCTION_3_6();
      if ((v55 & 1) == 0)
      {
        goto LABEL_79;
      }

      v41 = *(*(v0 + 56) + 8 * v54);

      if (v41 >> 62)
      {
        if (OUTLINED_FUNCTION_4_5())
        {
          goto LABEL_69;
        }

LABEL_79:
      }

      else
      {
        if (!OUTLINED_FUNCTION_7_3())
        {
          goto LABEL_79;
        }

LABEL_69:
        if ((v41 & 0xC000000000000001) != 0)
        {
          OUTLINED_FUNCTION_14();
          v0 = v58;
        }

        else
        {
          OUTLINED_FUNCTION_8_4();
          if (!v56)
          {
            goto LABEL_97;
          }

          OUTLINED_FUNCTION_10_3();
        }

        v69 = sub_268CB7600();
        v41 = v57;

        if ((v41 & 1) == 0 && v69)
        {

LABEL_90:
          v64 = sub_268CB7410();
          v65 = *(v64 + 48);
          v66 = *(v64 + 52);
          swift_allocObject();
          sub_268CB7400();
          sub_268CB71A0();

          goto LABEL_91;
        }
      }
    }
  }

  __break(1u);
LABEL_97:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_1_6(uint64_t result)
{
  *(v1 - 96) = result;
  *(result + 32);
  return result;
}

unint64_t OUTLINED_FUNCTION_3_6()
{

  return sub_268CA5E3C(0x5672656765746E69, 0xEC00000065756C61);
}

uint64_t OUTLINED_FUNCTION_4_5()
{

  return sub_268CB7D50();
}

uint64_t OUTLINED_FUNCTION_10_3()
{
  v2 = *(v0 + 32);
}

id sub_268CAD0F0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_268CB7160();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_268CB7210();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_268CB7200();

  sub_268CB7130();
  sub_268CB7090();
  (*(v7 + 8))(v10, v6);
  v15 = MEMORY[0x26D62AA30](v14);
  if (v15)
  {
    v16 = sub_268C9F044(a1, a2, a1, a2, v15, 0, 0, 0, 0xF000000000000000);
  }

  else
  {
    v16 = a3;
  }

  return v16;
}

void sub_268CAD2F8(uint64_t a1)
{
  v4 = v1;
  v63 = MEMORY[0x277D84F90];
  v65 = MEMORY[0x277D84F90];
  sub_268CAD91C(a1);
  v62 = v1;
  if (v5)
  {
    v6 = v5;

    v7 = sub_268CB7730();
    v8 = sub_268CB7BD0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_16_0();
      *v9 = 134217984;
      *(v9 + 4) = *(v6 + 16);

      _os_log_impl(&dword_268C94000, v7, v8, "extractUsoIdentifiersFromReferenceNodes count: %ld", v9, 0xCu);
      OUTLINED_FUNCTION_5_0();
    }

    else
    {
    }

    v2 = 117;
    if (sub_268CB7670() == 0x6E456F4E5F6F7375 && v20 == 0xEC00000079746974)
    {
    }

    else
    {
      v22 = sub_268CB7DC0();

      if ((v22 & 1) == 0)
      {
LABEL_16:
        v11 = sub_268CAF7BC(v6);
        v65 = v11;
        v12 = sub_268CB7730();
        v23 = sub_268CB7BD0();
        if (OUTLINED_FUNCTION_5_4(v23))
        {
          OUTLINED_FUNCTION_16_0();
          OUTLINED_FUNCTION_4_6();
          OUTLINED_FUNCTION_7_4();
          LODWORD(OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_logger) = 136315138;
          sub_268CB7910();
          v24 = OUTLINED_FUNCTION_8_5();
          MEMORY[0x26D62B400](v24, v4);
          v25 = OUTLINED_FUNCTION_0_6();
          OUTLINED_FUNCTION_1_7(v25, v26, v27, v28);
          OUTLINED_FUNCTION_6_4();
          *(&OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_logger + 4) = v4;
          v4 = v62;
          v19 = "all other non-uso_NoEntity typed entities: %s";
          goto LABEL_20;
        }

        goto LABEL_21;
      }
    }

    if ((sub_268CAEE14(v6) & 1) == 0)
    {
      sub_268CAF2E0(v6);
      v11 = v29;
      v65 = v29;
      v12 = sub_268CB7730();
      v30 = sub_268CB7BD0();
      if (OUTLINED_FUNCTION_5_4(v30))
      {
        OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_4_6();
        OUTLINED_FUNCTION_7_4();
        LODWORD(OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_logger) = 136315138;
        sub_268CB7910();
        v31 = OUTLINED_FUNCTION_8_5();
        MEMORY[0x26D62B400](v31, v4);
        v32 = OUTLINED_FUNCTION_0_6();
        OUTLINED_FUNCTION_1_7(v32, v33, v34, v35);
        OUTLINED_FUNCTION_6_4();
        *(&OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_logger + 4) = v4;
        v4 = v62;
        v19 = "uso_NoEntity entities: %s";
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v10 = sub_268CAFB70();
  if (!v10)
  {
    v6 = MEMORY[0x277D84F90];
    v11 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  v6 = v10;
  v11 = sub_268CAF7BC(v10);
  v65 = v11;
  v12 = sub_268CB7730();
  v13 = sub_268CB7BD0();
  if (OUTLINED_FUNCTION_5_4(v13))
  {
    OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_4_6();
    OUTLINED_FUNCTION_7_4();
    LODWORD(OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_logger) = 136315138;
    sub_268CB7910();
    v14 = OUTLINED_FUNCTION_8_5();
    MEMORY[0x26D62B400](v14, v4);
    v15 = OUTLINED_FUNCTION_0_6();
    OUTLINED_FUNCTION_1_7(v15, v16, v17, v18);
    OUTLINED_FUNCTION_6_4();
    *(&OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_logger + 4) = v4;
    v4 = v62;
    v19 = "extractContextualMatcherIdentifiers entities: %s";
LABEL_20:
    _os_log_impl(&dword_268C94000, v12, v2, v19, &OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_logger, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_5_0();
  }

LABEL_21:

LABEL_22:
  v36 = sub_268CB7730();
  v37 = sub_268CB7BD0();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = OUTLINED_FUNCTION_16_0();
    swift_slowAlloc();
    OUTLINED_FUNCTION_7_4();
    *v38 = 136315138;
    sub_268CB7910();
    v39 = OUTLINED_FUNCTION_8_5();
    MEMORY[0x26D62B400](v39, v4);

    v44 = OUTLINED_FUNCTION_1_7(v40, v41, v42, v43);

    *(v38 + 4) = v44;
    _os_log_impl(&dword_268C94000, v36, v37, "entities before mapping: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_5_0();
  }

  v64[0] = MEMORY[0x277D84F90];
  v45 = sub_268CAAE90(v11);

  v46 = 0;
  while (v45 != v46)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v47 = MEMORY[0x26D62B570](v46, v11);
    }

    else
    {
      if (v46 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v47 = *(v11 + 8 * v46 + 32);
    }

    v48 = v47;
    v49 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      return;
    }

    static RREntityMatcher.entity(_:matches:entityFoundByMarrsIdentifier:)();
    v51 = v50;

    ++v46;
    if (v51)
    {
      MEMORY[0x26D62B3D0]();
      if (*((v64[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268CB7B70();
      }

      sub_268CB7BA0();
      v63 = v64[0];
      v46 = v49;
    }
  }

  swift_beginAccess();

  v65 = v63;
  sub_268CB034C(&v65, v6);
  swift_endAccess();

  v52 = sub_268CB7730();
  v53 = sub_268CB7BD0();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = OUTLINED_FUNCTION_16_0();
    v55 = swift_slowAlloc();
    v64[0] = v55;
    *v54 = 136315138;
    v56 = sub_268CB7910();

    v58 = MEMORY[0x26D62B400](v57, v56);
    v60 = v59;

    v61 = sub_268CA5820(v58, v60, v64);

    *(v54 + 4) = v61;
    _os_log_impl(&dword_268C94000, v52, v53, "filterByMarrsIdentifiersResults: %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v55);
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_5_0();
  }
}

void sub_268CAD91C(uint64_t a1)
{
  v181 = sub_268CB7790();
  v179 = *(v181 - 8);
  v2 = *(v179 + 64);
  v3 = MEMORY[0x28223BE20](v181);
  v160 = &v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v180 = &v147 - v6;
  MEMORY[0x28223BE20](v5);
  v182 = &v147 - v7;
  v8 = sub_268CB7100();
  v159 = *(v8 - 8);
  v9 = *(v159 + 64);
  MEMORY[0x28223BE20](v8);
  v156 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5E0, &qword_268CB8FA0);
  v11 = *(*(v166 - 8) + 64);
  MEMORY[0x28223BE20](v166);
  v165 = &v147 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5D8, &qword_268CB8F98);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v161 = &v147 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v169 = &v147 - v18;
  MEMORY[0x28223BE20](v17);
  v167 = &v147 - v19;
  v174 = sub_268CB7160();
  v170 = *(v174 - 8);
  v20 = *(v170 + 64);
  v21 = MEMORY[0x28223BE20](v174);
  v162 = &v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v168 = &v147 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v150 = &v147 - v26;
  MEMORY[0x28223BE20](v25);
  v171 = &v147 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4F0, &unk_268CB8BB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268CB8BA0;
  *(inited + 32) = a1;
  v187 = inited;
  v153 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA600, &qword_268CB8FB8);
  v29 = sub_268CB79C0();
  v30 = sub_268CB2924(&unk_287987740);
  v186 = v30;

  v175 = v8;
  while (2)
  {
    v31 = *(v30 + 16);

    if (v31)
    {
      v32 = v187;
      if (sub_268CAAE90(v187))
      {
        if (!sub_268CA73E4(v32))
        {
          if (!sub_268CAAE90(v32))
          {
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
            goto LABEL_135;
          }

          sub_268CAAE98(0, (v32 & 0xC000000000000001) == 0, v32);
          if ((v32 & 0xC000000000000001) != 0)
          {
            v178 = MEMORY[0x26D62B570](0, v32);
          }

          else
          {
            v178 = *(v32 + 32);
          }

          if (!sub_268CAAE90(v32))
          {
            goto LABEL_137;
          }

          if (sub_268CAAE90(v32) < 1)
          {
            goto LABEL_134;
          }

          v33 = sub_268CAAE90(v32);
          v34 = __OFSUB__(v33, 1);
          v35 = v33 - 1;
          if (v34)
          {
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
            goto LABEL_138;
          }

          sub_268CAA514(v35);
          sub_268CAAC64(0, 1, 0);
          v36 = 1 << *(v30 + 32);
          if (v36 < 64)
          {
            v37 = ~(-1 << v36);
          }

          else
          {
            v37 = -1;
          }

          v38 = v37 & *(v30 + 56);
          v39 = (v36 + 63) >> 6;

          v40 = 0;
          while (1)
          {
            v41 = v40;
            if (!v38)
            {
              break;
            }

LABEL_19:
            v42 = (*(v30 + 48) + ((v40 << 10) | (16 * __clz(__rbit64(v38)))));
            v44 = *v42;
            v43 = v42[1];

            v45 = sub_268CB7650();
            if (*(v45 + 16) && (v46 = sub_268CA5E3C(v44, v43), (v47 & 1) != 0))
            {
              v48 = *(*(v45 + 56) + 8 * v46);
            }

            else
            {
              v48 = MEMORY[0x277D84F90];
            }

            if (v48 >> 62)
            {
              v49 = sub_268CB7D50();
            }

            else
            {
              v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v38 &= v38 - 1;
            if (v49)
            {
              sub_268CB2AB4(v44, v43);

              swift_isUniquelyReferenced_nonNull_native();
              v185 = v29;
              sub_268C9E7D4(v48, v44, v43);

              v29 = v185;
            }

            else
            {
            }
          }

          while (1)
          {
            v40 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              __break(1u);
              goto LABEL_123;
            }

            if (v40 >= v39)
            {
              break;
            }

            v38 = *(v30 + 56 + 8 * v40);
            ++v41;
            if (v38)
            {
              goto LABEL_19;
            }
          }

          v30 = v186;
          v50 = *(v186 + 16);

          v8 = v175;
          if (!v50)
          {
LABEL_52:

            continue;
          }

          v163 = v30;
          v164 = v29;
          v51 = sub_268CB7650();
          v52 = 0;
          v54 = v51 + 64;
          v53 = *(v51 + 64);
          v176 = v51;
          v55 = 1 << *(v51 + 32);
          if (v55 < 64)
          {
            v56 = ~(-1 << v55);
          }

          else
          {
            v56 = -1;
          }

          v57 = v56 & v53;
          v58 = (v55 + 63) >> 6;
          v172 = v58;
          v173 = v51 + 64;
          if (v57)
          {
LABEL_34:
            v59 = v52;
LABEL_38:
            v60 = __clz(__rbit64(v57));
            v57 &= v57 - 1;
            v61 = *(v176[7] + ((v59 << 9) | (8 * v60)));
            v62 = MEMORY[0x277D84F90];
            v185 = MEMORY[0x277D84F90];
            v63 = sub_268CAAE90(v61);

            v64 = 0;
            v177 = v62;
            while (1)
            {
              if (v63 == v64)
              {

                sub_268CA879C(v177);
                v52 = v59;
                v8 = v175;
                v58 = v172;
                v54 = v173;
                if (!v57)
                {
                  goto LABEL_35;
                }

                goto LABEL_34;
              }

              if ((v61 & 0xC000000000000001) != 0)
              {
                MEMORY[0x26D62B570](v64, v61);
              }

              else
              {
                if (v64 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_120;
                }

                v65 = *(v61 + 8 * v64 + 32);
              }

              v66 = v64 + 1;
              if (__OFADD__(v64, 1))
              {
                break;
              }

              v67 = sub_268CB7620();

              ++v64;
              if (v67)
              {
                MEMORY[0x26D62B3D0](v68);
                if (*((v185 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v185 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_268CB7B70();
                }

                sub_268CB7BA0();
                v177 = v185;
                v64 = v66;
              }
            }

            __break(1u);
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }

LABEL_35:
          while (1)
          {
            v59 = v52 + 1;
            if (__OFADD__(v52, 1))
            {
              break;
            }

            if (v59 >= v58)
            {

              v29 = v164;
              v30 = v163;
              goto LABEL_52;
            }

            v57 = *(v54 + 8 * v59);
            ++v52;
            if (v57)
            {
              goto LABEL_38;
            }
          }

          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
        }

        __break(1u);
        goto LABEL_133;
      }
    }

    break;
  }

  if (!*(v29 + 16))
  {
LABEL_121:

LABEL_128:

    return;
  }

  v185 = MEMORY[0x277D84FA0];
  v184 = MEMORY[0x277D84F90];
  v69 = *(v29 + 64);
  v152 = v29 + 64;
  v70 = 1 << *(v29 + 32);
  v71 = -1;
  if (v70 < 64)
  {
    v71 = ~(-1 << v70);
  }

  v72 = v71 & v69;
  v149 = OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_logger;
  v151 = (v70 + 63) >> 6;
  v178 = v170 + 16;
  v73 = (v159 + 104);
  LODWORD(v173) = *MEMORY[0x277D5E4C0];
  v154 = (v159 + 32);
  v158 = (v159 + 8);
  v177 = (v170 + 8);
  v157 = (v170 + 32);

  v74 = 0;
  *&v75 = 134218242;
  v147 = v75;
  v76 = v174;
  v164 = v29;
LABEL_58:
  if (v72)
  {
    goto LABEL_63;
  }

  do
  {
    v77 = v74 + 1;
    if (__OFADD__(v74, 1))
    {
      goto LABEL_131;
    }

    if (v77 >= v151)
    {

      v118 = v184;
      v171 = *(v184 + 16);
      if (!v171)
      {
LABEL_123:

        v121 = MEMORY[0x277D84F90];
LABEL_124:

        v144 = sub_268CB7730();
        v145 = sub_268CB7BD0();
        if (os_log_type_enabled(v144, v145))
        {
          v146 = swift_slowAlloc();
          *v146 = 134217984;
          *(v146 + 4) = v121[2];

          _os_log_impl(&dword_268C94000, v144, v145, "Found %ld marrs identifier(s) total", v146, 0xCu);
          MEMORY[0x26D62BBE0](v146, -1, -1);
        }

        else
        {
        }

        goto LABEL_128;
      }

      v119 = 0;
      v166 = (*(v170 + 80) + 32) & ~*(v170 + 80);
      v167 = v184 + v166;
      v120 = (v179 + 16);
      v121 = MEMORY[0x277D84F90];
      v122 = (v179 + 8);
      v169 = v184;
      while (v119 < *(v118 + 16))
      {
        v176 = v121;
        v123 = *(v170 + 72);
        v175 = v119;
        v173 = v123;
        v172 = *(v170 + 16);
        v172(v168, v167 + v123 * v119, v76);
        sub_268CB70E0();
        sub_268CB7140();
        sub_268CB7760();
        v124 = v185;
        if (*(v185 + 16))
        {
          v125 = *(v185 + 40);
          sub_268CB2E04(qword_28131E6C8, MEMORY[0x277D5FE18]);
          v126 = sub_268CB79D0();
          v127 = ~(-1 << *(v124 + 32));
          while (1)
          {
            v128 = v126 & v127;
            if (((*(v124 + 56 + (((v126 & v127) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v126 & v127)) & 1) == 0)
            {
              break;
            }

            v129 = v179;
            v130 = v180;
            v131 = v181;
            (*(v179 + 16))(v180, *(v124 + 48) + *(v179 + 72) * v128, v181);
            sub_268CB2E04(&qword_2802DA3B8, MEMORY[0x277D5FE18]);
            v132 = sub_268CB79F0();
            v133 = *(v129 + 8);
            v133(v130, v131);
            v126 = v128 + 1;
            if (v132)
            {
              v133(v182, v181);
              v134 = v174;
              v121 = v176;
              v118 = v169;
              goto LABEL_117;
            }
          }
        }

        v172(v162, v168, v174);
        v121 = v176;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v141 = v121[2];
          sub_268CA95D0();
          v121 = v142;
        }

        v135 = v173;
        v136 = v121[2];
        if (v136 >= v121[3] >> 1)
        {
          sub_268CA95D0();
          v121 = v143;
        }

        v118 = v169;
        v121[2] = v136 + 1;
        v134 = v174;
        (*v157)(v121 + v166 + v136 * v135, v162, v174);
        v137 = v181;
        v138 = v182;
        (*v120)(v160, v182, v181);
        v139 = v180;
        sub_268C99080();
        v140 = *v122;
        (*v122)(v139, v137);
        v140(v138, v137);
LABEL_117:
        v119 = v175 + 1;
        (*v177)(v168, v134);
        v76 = v134;
        if (v119 == v171)
        {

          goto LABEL_124;
        }
      }

      goto LABEL_136;
    }

    v72 = *(v152 + 8 * v77);
    ++v74;
  }

  while (!v72);
  v74 = v77;
LABEL_63:
  v155 = v72;
  v78 = __clz(__rbit64(v72)) | (v74 << 6);
  v79 = *(v29 + 56);
  v80 = (*(v29 + 48) + 16 * v78);
  v81 = *v80;
  v82 = v80[1];
  v83 = *(v79 + 8 * v78);
  if (v83 >> 62)
  {
    v84 = sub_268CB7D50();
  }

  else
  {
    v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v84 < 2)
  {
  }

  else
  {

    v85 = sub_268CB7730();
    v86 = sub_268CB7BE0();
    v87 = v85;
    if (os_log_type_enabled(v85, v86))
    {
      v88 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      v183 = v176;
      *v88 = v147;
      if (v83 >> 62)
      {
        v89 = sub_268CB7D50();
      }

      else
      {
        v89 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v88 + 4) = v89;
      *(v88 + 12) = 2080;
      v90 = sub_268CA5820(v81, v82, &v183);

      *(v88 + 14) = v90;
      v91 = v86;
      v92 = v87;
      _os_log_impl(&dword_268C94000, v87, v91, "Input uso entity has %ld child nodes for edge %s, but SRR only expects exact 1 from MARRS", v88, 0x16u);
      v93 = v176;
      __swift_destroy_boxed_opaque_existential_0Tm(v176);
      MEMORY[0x26D62BBE0](v93, -1, -1);
      MEMORY[0x26D62BBE0](v88, -1, -1);
    }

    else
    {
    }
  }

  v94 = v169;
  v95 = v155;
  if ((v83 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D62B570](0, v83);
LABEL_76:

    v97 = sub_268CB7610();

    v99 = sub_268CB7670() == 0x6E456F4E5F6F7375 && v98 == 0xEC00000079746974;
    if (v99)
    {
    }

    else
    {
      v100 = sub_268CB7DC0();

      if ((v100 & 1) == 0)
      {
        v101 = 0;
        v176 = *(v97 + 16);
        v148 = MEMORY[0x277D84F90];
        v76 = v174;
        v159 = v97;
        while (1)
        {
          if (v176 == v101)
          {

            v97 = v148;
            v95 = v155;
LABEL_101:
            v72 = (v95 - 1) & v95;
            sub_268CA8848(v97);
            v29 = v164;
            goto LABEL_58;
          }

          if (v101 >= *(v97 + 16))
          {
            goto LABEL_130;
          }

          v172 = ((*(v170 + 80) + 32) & ~*(v170 + 80));
          v163 = *(v170 + 72);
          (*(v170 + 16))(v171, v172 + v97 + v163 * v101, v76);
          v102 = v167;
          sub_268CB7110();
          (*v73)(v94, v173, v8);
          __swift_storeEnumTagSinglePayload(v94, 0, 1, v8);
          v103 = *(v166 + 48);
          v104 = v94;
          v105 = v165;
          sub_268CB2D94(v102, v165);
          sub_268CB2D94(v104, v105 + v103);
          if (__swift_getEnumTagSinglePayload(v105, 1, v8) == 1)
          {
            break;
          }

          v107 = v73;
          v108 = v161;
          sub_268CB2D94(v105, v161);
          if (__swift_getEnumTagSinglePayload(v105 + v103, 1, v8) == 1)
          {
            sub_268CA5D30(v169, &qword_2802DA5D8, &qword_268CB8F98);
            sub_268CA5D30(v167, &qword_2802DA5D8, &qword_268CB8F98);
            (*v158)(v108, v8);
            v106 = v105;
            v73 = v107;
            v97 = v159;
LABEL_90:
            sub_268CA5D30(v106, &qword_2802DA5E0, &qword_268CB8FA0);
            goto LABEL_92;
          }

          v109 = v156;
          (*v154)(v156, v105 + v103, v8);
          sub_268CB2E04(&qword_2802DA5E8, MEMORY[0x277D5E4D8]);
          v110 = sub_268CB79F0();
          v111 = *v158;
          (*v158)(v109, v8);
          sub_268CA5D30(v169, &qword_2802DA5D8, &qword_268CB8F98);
          sub_268CA5D30(v167, &qword_2802DA5D8, &qword_268CB8F98);
          v111(v108, v8);
          sub_268CA5D30(v105, &qword_2802DA5D8, &qword_268CB8F98);
          v73 = v107;
          v97 = v159;
          if (v110)
          {
LABEL_93:
            v112 = *v157;
            (*v157)(v150, v171, v174);
            v113 = v148;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v183 = v113;
            v94 = v169;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_268CB0EA8(0, *(v113 + 16) + 1, 1);
              v113 = v183;
            }

            v116 = *(v113 + 16);
            v115 = *(v113 + 24);
            v117 = v113;
            if (v116 >= v115 >> 1)
            {
              sub_268CB0EA8(v115 > 1, v116 + 1, 1);
              v117 = v183;
            }

            ++v101;
            *(v117 + 16) = v116 + 1;
            v148 = v117;
            v76 = v174;
            v112(v172 + v117 + v116 * v163, v150, v174);
            v8 = v175;
          }

          else
          {
LABEL_92:
            v76 = v174;
            (*v177)(v171, v174);
            ++v101;
            v94 = v169;
          }
        }

        sub_268CA5D30(v104, &qword_2802DA5D8, &qword_268CB8F98);
        sub_268CA5D30(v102, &qword_2802DA5D8, &qword_268CB8F98);
        v99 = __swift_getEnumTagSinglePayload(v105 + v103, 1, v8) == 1;
        v106 = v105;
        if (!v99)
        {
          goto LABEL_90;
        }

        sub_268CA5D30(v105, &qword_2802DA5D8, &qword_268CB8F98);
        goto LABEL_93;
      }
    }

    v76 = v174;
    goto LABEL_101;
  }

  if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v96 = *(v83 + 32);

    goto LABEL_76;
  }

LABEL_138:
  __break(1u);
}

uint64_t sub_268CAEE14(uint64_t a1)
{
  v2 = sub_268CB7100();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5E0, &qword_268CB8FA0);
  v6 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5D8, &qword_268CB8F98);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v37 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  v18 = *(a1 + 16);
  if (!v18)
  {
    return 0;
  }

  v19 = *(sub_268CB7160() - 8);
  v20 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v41 = *MEMORY[0x277D5E4C0];
  v21 = (v3 + 104);
  v33 = (v3 + 32);
  v36 = (v3 + 8);
  v22 = *(v19 + 72);
  v39 = v17;
  v40 = v22;
  v23 = v37;
  v38 = v15;
  v32 = (v3 + 104);
  while (1)
  {
    sub_268CB7110();
    (*v21)(v15, v41, v2);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v2);
    v24 = *(v42 + 48);
    sub_268CB2D94(v17, v8);
    sub_268CB2D94(v15, &v8[v24]);
    if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
    {
      break;
    }

    sub_268CB2D94(v8, v23);
    if (__swift_getEnumTagSinglePayload(&v8[v24], 1, v2) == 1)
    {
      sub_268CA5D30(v15, &qword_2802DA5D8, &qword_268CB8F98);
      sub_268CA5D30(v17, &qword_2802DA5D8, &qword_268CB8F98);
      v25 = v23;
      (*v36)(v23, v2);
      goto LABEL_8;
    }

    v26 = v34;
    (*v33)(v34, &v8[v24], v2);
    sub_268CB2E04(&qword_2802DA5E8, MEMORY[0x277D5E4D8]);
    v35 = sub_268CB79F0();
    v27 = v37;
    v28 = v15;
    v29 = *v36;
    (*v36)(v26, v2);
    sub_268CA5D30(v28, &qword_2802DA5D8, &qword_268CB8F98);
    sub_268CA5D30(v17, &qword_2802DA5D8, &qword_268CB8F98);
    v25 = v27;
    v29(v27, v2);
    v21 = v32;
    sub_268CA5D30(v8, &qword_2802DA5D8, &qword_268CB8F98);
    if (v35)
    {
      return 1;
    }

LABEL_10:
    v17 = v39;
    v20 += v40;
    --v18;
    v23 = v25;
    v15 = v38;
    if (!v18)
    {
      return 0;
    }
  }

  v25 = v23;
  sub_268CA5D30(v15, &qword_2802DA5D8, &qword_268CB8F98);
  sub_268CA5D30(v17, &qword_2802DA5D8, &qword_268CB8F98);
  if (__swift_getEnumTagSinglePayload(&v8[v24], 1, v2) != 1)
  {
LABEL_8:
    sub_268CA5D30(v8, &qword_2802DA5E0, &qword_268CB8FA0);
    goto LABEL_10;
  }

  sub_268CA5D30(v8, &qword_2802DA5D8, &qword_268CB8F98);
  return 1;
}

void sub_268CAF2E0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5D8, &qword_268CB8F98);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v39 - v5;
  v6 = sub_268CB7160();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v40 = v1;
  v14 = sub_268CB7730();
  v15 = sub_268CB7BC0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_268C94000, v14, v15, "Query with UsoNoEntity pathway", v16, 2u);
    MEMORY[0x26D62BBE0](v16, -1, -1);
  }

  v17 = *(a1 + 16);
  if (v17)
  {
    v45 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v18 = a1 + v45;
    v19 = *(v7 + 72);
    v43 = (v7 + 16);
    v44 = v19;
    v41 = (v7 + 32);
    v42 = (v7 + 8);

    v46 = v6;
    do
    {
      v51 = v17;
      v52 = a1;
      v53 = sub_268CB7140();
      v54 = v20;

      MEMORY[0x26D62B330](0x776F646168532DLL, 0xE700000000000000);

      v49 = v54;
      v50 = v53;
      sub_268CB70E0();
      v48 = v21;
      sub_268CB7150();
      sub_268CB70F0();
      sub_268CB7110();
      a1 = v52;
      v22 = v46;
      sub_268CB7120();
      (*v43)(v11, v13, v22);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = *(a1 + 16);
        sub_268CA95D0();
        a1 = v26;
      }

      v23 = *(a1 + 16);
      if (v23 >= *(a1 + 24) >> 1)
      {
        sub_268CA95D0();
        a1 = v27;
      }

      (*v42)(v13, v22);
      *(a1 + 16) = v23 + 1;
      v24 = v44;
      (*v41)(a1 + v45 + v23 * v44, v11, v22);
      v18 += v24;
      v17 = v51 - 1;
    }

    while (v51 != 1);
  }

  else
  {
  }

  v52 = a1;
  v28 = sub_268CAF7BC(a1);
  v53 = MEMORY[0x277D84F90];
  v29 = sub_268CAAE90(v28);
  for (i = 0; ; ++i)
  {
    if (v29 == i)
    {

      return;
    }

    if ((v28 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x26D62B570](i, v28);
    }

    else
    {
      if (i >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v31 = *(v28 + 8 * i + 32);
    }

    v32 = v31;
    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_268CB7810();
    v33 = sub_268CB7670();
    v35 = v34;

    if (v33 == 0xD000000000000011 && 0x8000000268CB9A40 == v35)
    {
    }

    else
    {
      v37 = sub_268CB7DC0();

      if (v37)
      {
      }

      else
      {
        sub_268CB7D00();
        v38 = *(v53 + 16);
        sub_268CB7D20();
        sub_268CB7D30();
        sub_268CB7D10();
      }
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_268CAF7BC(uint64_t a1)
{
  v2 = sub_268CB7790();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x277D84F90];
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(sub_268CB7160() - 8);
    v9 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    v11 = (v3 + 8);
    v30 = MEMORY[0x277D84F90];
    do
    {
      sub_268CB70E0();
      sub_268CB7140();
      sub_268CB7760();
      v12 = sub_268CB07F8();
      if (v12)
      {
        v13 = v12;
        MEMORY[0x26D62B3D0]();
        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_268CB7B70();
        }

        sub_268CB7BA0();

        (*v11)(v6, v2);
        v30 = v32;
      }

      else
      {
        (*v11)(v6, v2);
      }

      v9 += v10;
      --v7;
    }

    while (v7);
    v14 = sub_268CB7730();
    v15 = sub_268CB7BD0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v31 = v17;
      *v16 = 136315138;
      v18 = sub_268CB7910();
      v19 = v30;

      v21 = MEMORY[0x26D62B400](v20, v18);
      v23 = v22;

      v24 = sub_268CA5820(v21, v23, &v31);

      *(v16 + 4) = v24;
      _os_log_impl(&dword_268C94000, v14, v15, "queryByMARRSSpans entities: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x26D62BBE0](v17, -1, -1);
      MEMORY[0x26D62BBE0](v16, -1, -1);
    }

    else
    {

      return v30;
    }
  }

  else
  {
    v25 = sub_268CB7730();
    v26 = sub_268CB7BD0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_268C94000, v25, v26, "usoIdentifiers are empty", v27, 2u);
      MEMORY[0x26D62BBE0](v27, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return v19;
}

uint64_t *sub_268CAFB70()
{
  v1 = v0;
  v2 = sub_268CB7100();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v52 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5E0, &qword_268CB8FA0);
  v6 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v8 = v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5D8, &qword_268CB8F98);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v64 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (v46 - v14);
  MEMORY[0x28223BE20](v13);
  v17 = v46 - v16;
  v67 = sub_268CB7160();
  v53 = *(v67 - 8);
  v18 = *(v53 + 64);
  v19 = MEMORY[0x28223BE20](v67);
  v49 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v66 = v46 - v21;
  v22 = sub_268CB7650();
  v23 = sub_268CA63D0(1701667182, 0xE400000000000000, v22);

  if (!v23)
  {
    return 0;
  }

  if (!sub_268CAAE90(v23))
  {

    return 0;
  }

  v51 = v17;
  sub_268CAAE98(0, (v23 & 0xC000000000000001) == 0, v23);
  v46[1] = v1;
  if ((v23 & 0xC000000000000001) != 0)
  {
LABEL_29:
    v24 = MEMORY[0x26D62B570](0, v23);
  }

  else
  {
    v24 = *(v23 + 32);
  }

  v25 = v53;

  v46[2] = v24;
  v23 = v24;
  v26 = sub_268CB7610();
  v27 = 0;
  v28 = *(v26 + 16);
  v62 = v25 + 16;
  v63 = v28;
  v61 = *MEMORY[0x277D5E4A8];
  v60 = (v3 + 104);
  v50 = (v3 + 32);
  v55 = (v3 + 8);
  v58 = (v25 + 8);
  v47 = (v25 + 32);
  v48 = MEMORY[0x277D84F90];
  v29 = v51;
  v56 = v8;
  v57 = v2;
  v59 = v26;
  while (v63 != v27)
  {
    if (v27 >= *(v26 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    v3 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v30 = *(v25 + 72);
    (*(v25 + 16))(v66, v26 + v3 + v30 * v27, v67);
    sub_268CB7110();
    (*v60)(v15, v61, v2);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v2);
    v23 = *(v65 + 48);
    sub_268CB2D94(v29, v8);
    sub_268CB2D94(v15, &v8[v23]);
    if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
    {
      sub_268CA5D30(v15, &qword_2802DA5D8, &qword_268CB8F98);
      v8 = v56;
      sub_268CA5D30(v29, &qword_2802DA5D8, &qword_268CB8F98);
      if (__swift_getEnumTagSinglePayload(&v8[v23], 1, v2) == 1)
      {
        sub_268CA5D30(v8, &qword_2802DA5D8, &qword_268CB8F98);
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    sub_268CB2D94(v8, v64);
    if (__swift_getEnumTagSinglePayload(&v8[v23], 1, v2) == 1)
    {
      v23 = &qword_2802DA5D8;
      sub_268CA5D30(v15, &qword_2802DA5D8, &qword_268CB8F98);
      v2 = v57;
      sub_268CA5D30(v29, &qword_2802DA5D8, &qword_268CB8F98);
      (*v55)(v64, v2);
LABEL_13:
      sub_268CA5D30(v8, &qword_2802DA5E0, &qword_268CB8FA0);
      goto LABEL_15;
    }

    v31 = &v8[v23];
    v32 = v64;
    v33 = v52;
    (*v50)(v52, v31, v2);
    sub_268CB2E04(&qword_2802DA5E8, MEMORY[0x277D5E4D8]);
    LODWORD(v54) = sub_268CB79F0();
    v23 = v15;
    v34 = *v55;
    v29 = v51;
    (*v55)(v33, v2);
    sub_268CA5D30(v15, &qword_2802DA5D8, &qword_268CB8F98);
    sub_268CA5D30(v29, &qword_2802DA5D8, &qword_268CB8F98);
    v35 = v32;
    v8 = v56;
    v34(v35, v57);
    v25 = v53;
    v2 = v57;
    sub_268CA5D30(v8, &qword_2802DA5D8, &qword_268CB8F98);
    if (v54)
    {
LABEL_16:
      v36 = *v47;
      (*v47)(v49, v66, v67);
      v23 = v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_268CB0EA8(0, *(v23 + 16) + 1, 1);
        v23 = v68;
      }

      v39 = *(v23 + 16);
      v38 = *(v23 + 24);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        v54 = v39 + 1;
        v48 = v39;
        sub_268CB0EA8(v38 > 1, v39 + 1, 1);
        v40 = v54;
        v39 = v48;
        v23 = v68;
      }

      ++v27;
      *(v23 + 16) = v40;
      v48 = v23;
      v36((v23 + v3 + v39 * v30), v49, v67);
      v26 = v59;
    }

    else
    {
LABEL_15:
      (*v58)(v66, v67);
      ++v27;
      v26 = v59;
    }
  }

  v41 = v48;

  v42 = sub_268CB7730();
  v43 = sub_268CB7BD0();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 134217984;
    *(v44 + 4) = v41[2];

    _os_log_impl(&dword_268C94000, v42, v43, "Found %ld csm uso identifier(s).", v44, 0xCu);
    MEMORY[0x26D62BBE0](v44, -1, -1);
  }

  else
  {
  }

  return v41;
}

uint64_t sub_268CB034C(unint64_t *a1, uint64_t a2)
{
  v35 = a1;
  v45 = sub_268CB7160();
  v3 = *(v45 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_268CB7790();
  v38 = *(v41 - 8);
  v6 = *(v38 + 64);
  v7 = MEMORY[0x28223BE20](v41);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v35 - v10;
  v11 = sub_268CB7730();
  v12 = sub_268CB7BC0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_268C94000, v11, v12, "Sorting Marrs results with marrs and then saliency scores", v13, 2u);
    MEMORY[0x26D62BBE0](v13, -1, -1);
  }

  sub_268CB2E04(qword_28131E6C8, MEMORY[0x277D5FE18]);
  v14 = v41;
  v47 = sub_268CB79C0();
  v15 = *(a2 + 16);
  if (v15)
  {
    v16 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v42 = (v38 + 16);
    v17 = *(v3 + 72);
    v39 = (v38 + 8);
    v40 = (v3 + 16);
    v36 = (v3 + 40);
    v37 = (v3 + 32);
    while (1)
    {
      sub_268CB70E0();
      sub_268CB7140();
      v18 = v43;
      sub_268CB7760();
      v19 = *v42;
      (*v42)(v9, v18, v14);
      (*v40)(v44, v16, v45);
      v20 = v47;
      swift_isUniquelyReferenced_nonNull_native();
      v46 = v20;
      v21 = sub_268CA5F54();
      if (__OFADD__(*(v20 + 16), (v22 & 1) == 0))
      {
        break;
      }

      v23 = v21;
      v24 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5F0, &qword_268CB8FA8);
      if (sub_268CB7D40())
      {
        v25 = sub_268CA5F54();
        v14 = v41;
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_18;
        }

        v23 = v25;
      }

      else
      {
        v14 = v41;
      }

      v27 = v46;
      if (v24)
      {
        (*v36)(v46[7] + v23 * v17, v44, v45);
        v28 = *v39;
        (*v39)(v9, v14);
        v28(v43, v14);
      }

      else
      {
        v46[(v23 >> 6) + 8] |= 1 << v23;
        v29 = v38;
        v19((v27[6] + *(v38 + 72) * v23), v9, v14);
        (*v37)(v27[7] + v23 * v17, v44, v45);
        v30 = *(v29 + 8);
        v30(v9, v14);
        v30(v43, v14);
        v31 = v27[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_17;
        }

        v27[2] = v33;
      }

      v47 = v27;
      v16 += v17;
      if (!--v15)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    result = sub_268CB7DE0();
    __break(1u);
  }

  else
  {
LABEL_15:
    sub_268CB0E28(v35, &v47);
  }

  return result;
}

void *sub_268CB07F8()
{
  v1 = OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_entities;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_268CB7D50())
  {

    for (j = 0; ; ++j)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x26D62B570](j, v2);
      }

      else
      {
        if (j >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v5 = *(v2 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v8 = sub_268CB7770();
      v10 = v9;
      if (v8 == sub_268CB7840() && v10 == v11)
      {
      }

      else
      {
        v13 = sub_268CB7DC0();

        if ((v13 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v14 = sub_268CB7780();
      v16 = v15;
      if (v14 == sub_268CB7890() && v16 == v17)
      {

LABEL_25:

        return v6;
      }

      v19 = sub_268CB7DC0();

      if (v19)
      {
        goto LABEL_25;
      }

LABEL_21:

      if (v7 == i)
      {

        return 0;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

  return 0;
}

BOOL sub_268CB09F8(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = sub_268CB7160();
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5F8, &qword_268CB8FB0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  v17 = sub_268CB7790();
  v48 = *(v17 - 8);
  v49 = v17;
  v18 = *(v48 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v46 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v41 - v21;
  v23 = *a1;
  v45 = *a2;
  sub_268CB7840();
  v43 = v23;
  sub_268CB7890();
  sub_268CB7760();
  v47 = a3;
  sub_268CA3B04(*a3, v16);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v6);
  v42 = v9;
  if (EnumTagSinglePayload)
  {
    sub_268CA5D30(v16, &qword_2802DA5F8, &qword_268CB8FB0);
    v25 = 0.0;
    v26 = v44;
  }

  else
  {
    v26 = v44;
    (*(v44 + 16))(v9, v16, v6);
    sub_268CA5D30(v16, &qword_2802DA5F8, &qword_268CB8FB0);
    v27 = COERCE_DOUBLE(sub_268CB70F0());
    v29 = v28;
    (*(v26 + 8))(v9, v6);
    if (v29)
    {
      v25 = 0.0;
    }

    else
    {
      v25 = v27;
    }
  }

  sub_268CB7840();
  sub_268CB7890();
  v30 = v46;
  sub_268CB7760();
  sub_268CA3B04(*v47, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v6))
  {
    sub_268CA5D30(v14, &qword_2802DA5F8, &qword_268CB8FB0);
  }

  else
  {
    v31 = v42;
    (*(v26 + 16))(v42, v14, v6);
    sub_268CA5D30(v14, &qword_2802DA5F8, &qword_268CB8FB0);
    v32 = COERCE_DOUBLE(sub_268CB70F0());
    v34 = v33;
    (*(v26 + 8))(v31, v6);
    if ((v34 & 1) == 0)
    {
      v36 = v32;
      if (v25 != v32)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  if (v25 != 0.0)
  {
    v36 = 0.0;
    goto LABEL_12;
  }

LABEL_10:
  sub_268CB78C0();
  v25 = v35;
  sub_268CB78C0();
LABEL_12:
  v37 = v36 < v25;
  v38 = v49;
  v39 = *(v48 + 8);
  v39(v30, v49);
  v39(v22, v38);
  return v37;
}

void sub_268CB0E28(unint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
  {
    v4 = sub_268CB6E5C(v4);
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6[0] = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
  v6[1] = v5;
  sub_268CB107C(v6, a2);
  *a1 = v4;
}

size_t sub_268CB0EA8(size_t a1, int64_t a2, char a3)
{
  result = sub_268CB0EC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_268CB0EC8(size_t result, int64_t a2, char a3, uint64_t a4)
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
LABEL_25:
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
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5A0, qword_268CB8E18);
  v10 = *(sub_268CB7160() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_268CB7160() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_268CA9840(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_268CB107C(uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v6 = sub_268CB7D80();
  if (v6 < v5)
  {
    v7 = v6;
    v8 = sub_268CA9294(v5 / 2);
    v10[0] = v9;
    v10[1] = (v5 / 2);
    sub_268CB170C(v10, v11, a1, v7, a2);
    if (v2)
    {
      if (v5 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v5 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v5)
  {
    sub_268CB1170(0, v5, 1, a1, a2);
  }
}

void sub_268CB1170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v75 = a5;
  v9 = sub_268CB7160();
  v64 = *(v9 - 8);
  v10 = *(v64 + 64);
  MEMORY[0x28223BE20](v9);
  v66 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5F8, &qword_268CB8FB0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v69 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v68 = &v59 - v16;
  v70 = sub_268CB7790();
  v17 = *(*(v70 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v70);
  v73 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v74 = &v59 - v21;
  v60 = a2;
  if (a3 == a2)
  {
    return;
  }

  v71 = *a4;
  v72 = (v64 + 16);
  v65 = (v64 + 8);
  v67 = (v20 + 8);
  v22 = v71 + 8 * a3 - 8;
  v23 = a1 - a3;
  while (2)
  {
    v62 = v22;
    v63 = a3;
    v24 = *(v71 + 8 * a3);
    v61 = v23;
    do
    {
      v25 = *v22;
      v26 = v24;
      v27 = v25;
      sub_268CB7840();
      sub_268CB7890();
      sub_268CB7760();
      v28 = *v75;
      if (*(*v75 + 16) && (v29 = sub_268CA5F54(), (v30 & 1) != 0))
      {
        v31 = *(v28 + 56) + *(v64 + 72) * v29;
        v32 = v68;
        (*(v64 + 16))(v68, v31, v9);
        v33 = 0;
      }

      else
      {
        v33 = 1;
        v32 = v68;
      }

      __swift_storeEnumTagSinglePayload(v32, v33, 1, v9);
      if (__swift_getEnumTagSinglePayload(v32, 1, v9))
      {
        sub_268CA5D30(v32, &qword_2802DA5F8, &qword_268CB8FB0);
        v34 = 0.0;
      }

      else
      {
        v35 = v66;
        (*v72)(v66, v32, v9);
        sub_268CA5D30(v32, &qword_2802DA5F8, &qword_268CB8FB0);
        *&v36 = COERCE_DOUBLE(sub_268CB70F0());
        v38 = v37;
        (*v65)(v35, v9);
        v34 = 0.0;
        if ((v38 & 1) == 0)
        {
          v34 = *&v36;
        }
      }

      sub_268CB7840();
      sub_268CB7890();
      v39 = v73;
      sub_268CB7760();
      v40 = *v75;
      if (*(*v75 + 16) && (v41 = sub_268CA5F54(), (v42 & 1) != 0))
      {
        v43 = *(v40 + 56) + *(v64 + 72) * v41;
        v44 = v69;
        (*(v64 + 16))(v69, v43, v9);
        v45 = 0;
      }

      else
      {
        v45 = 1;
        v44 = v69;
      }

      __swift_storeEnumTagSinglePayload(v44, v45, 1, v9);
      if (__swift_getEnumTagSinglePayload(v44, 1, v9))
      {
        sub_268CA5D30(v44, &qword_2802DA5F8, &qword_268CB8FB0);
      }

      else
      {
        v46 = v66;
        (*v72)(v66, v44, v9);
        sub_268CA5D30(v44, &qword_2802DA5F8, &qword_268CB8FB0);
        v47 = COERCE_DOUBLE(sub_268CB70F0());
        v49 = v48;
        v50 = v46;
        v39 = v73;
        (*v65)(v50, v9);
        if ((v49 & 1) == 0)
        {
          v52 = v47;
          if (v34 != v47)
          {
            goto LABEL_22;
          }

          goto LABEL_20;
        }
      }

      if (v34 != 0.0)
      {
        v52 = 0.0;
        goto LABEL_22;
      }

LABEL_20:
      sub_268CB78C0();
      v34 = v51;
      sub_268CB78C0();
LABEL_22:
      v53 = v52 < v34;
      v54 = *v67;
      v55 = v39;
      v56 = v70;
      (*v67)(v55, v70);
      v54(v74, v56);

      if (!v53)
      {
        break;
      }

      if (!v71)
      {
        __break(1u);
        return;
      }

      v57 = *v22;
      v24 = *(v22 + 8);
      *v22 = v24;
      *(v22 + 8) = v57;
      v22 -= 8;
    }

    while (!__CFADD__(v23++, 1));
    a3 = v63 + 1;
    v22 = v62 + 8;
    v23 = v61 - 1;
    if (v63 + 1 != v60)
    {
      continue;
    }

    break;
  }
}

void sub_268CB170C(char **a1, uint64_t a2, char *a3, uint64_t a4, uint64_t *a5)
{
  v202 = a5;
  v179 = a1;
  v201 = sub_268CB7160();
  v7 = *(v201 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v201);
  v192 = &v176 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5F8, &qword_268CB8FB0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v193 = &v176 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v176 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v183 = &v176 - v18;
  MEMORY[0x28223BE20](v17);
  v182 = &v176 - v19;
  v197 = sub_268CB7790();
  v20 = *(*(v197 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v197);
  v22 = MEMORY[0x28223BE20](v21);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v176 - v24;
  MEMORY[0x28223BE20](v23);
  v187 = a3;
  v30 = *(a3 + 1);
  if (v30 < 1)
  {
    v32 = MEMORY[0x277D84F90];
LABEL_136:
    a3 = *v179;
    if (!*v179)
    {
      goto LABEL_178;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_138:
      v168 = v32 + 16;
      v169 = *(v32 + 2);
      while (v169 >= 2)
      {
        if (!*v187)
        {
          goto LABEL_175;
        }

        v170 = v32;
        v32 += 16 * v169;
        v171 = *v32;
        v172 = &v168[2 * v169];
        v173 = *(v172 + 1);
        v174 = v189;
        sub_268CB2630(&(*v187)[8 * *v32], &(*v187)[8 * *v172], &(*v187)[8 * v173], a3, v202);
        v189 = v174;
        if (v174)
        {
          break;
        }

        if (v173 < v171)
        {
          goto LABEL_163;
        }

        if (v169 - 2 >= *v168)
        {
          goto LABEL_164;
        }

        *v32 = v171;
        *(v32 + 1) = v173;
        v175 = *v168 - v169;
        if (*v168 < v169)
        {
          goto LABEL_165;
        }

        v169 = *v168 - 1;
        sub_268CAA38C(v172 + 16, v175, v172);
        *v168 = v169;
        v32 = v170;
      }

LABEL_146:

      return;
    }

LABEL_172:
    v32 = sub_268CAA378(v32);
    goto LABEL_138;
  }

  v186 = v25;
  v31 = 0;
  v199 = (v7 + 16);
  v200 = v29;
  v191 = (v7 + 8);
  v195 = (v26 + 8);
  v32 = MEMORY[0x277D84F90];
  v178 = a4;
  v190 = v7;
  v198 = v28;
  v196 = v16;
  v188 = &v176 - v27;
  while (2)
  {
    v33 = v31;
    v34 = v31 + 1;
    if (v31 + 1 >= v30)
    {
      goto LABEL_43;
    }

    v185 = v30;
    a3 = *v187;
    v35 = *&(*v187)[8 * v34];
    v203 = *&(*v187)[8 * v31];
    v36 = v203;
    v204 = v35;
    v37 = v35;
    v38 = v36;
    v39 = v189;
    LODWORD(v184) = sub_268CB09F8(&v204, &v203, v202);
    v189 = v39;
    if (v39)
    {

      return;
    }

    v176 = v32;

    v181 = 8 * v33;
    v40 = v33;
    v41 = &a3[8 * v33 + 16];
    v177 = v40;
    v42 = (v40 + 2);
    v43 = v185;
    while (1)
    {
      v44 = v42;
      if (v34 + 1 >= v43)
      {
        break;
      }

      v194 = v42;
      v45 = *(v41 - 1);
      a3 = *v41;
      v46 = v45;
      sub_268CB7840();
      sub_268CB7890();
      sub_268CB7760();
      v47 = *v202;
      if (*(*v202 + 16) && (v48 = sub_268CA5F54(), (v49 & 1) != 0))
      {
        v50 = *(v47 + 56) + *(v190 + 72) * v48;
        v51 = v182;
        (*(v190 + 16))(v182, v50, v201);
        v52 = 0;
      }

      else
      {
        v52 = 1;
        v51 = v182;
      }

      v53 = v201;
      __swift_storeEnumTagSinglePayload(v51, v52, 1, v201);
      if (__swift_getEnumTagSinglePayload(v51, 1, v53))
      {
        sub_268CA5D30(v51, &qword_2802DA5F8, &qword_268CB8FB0);
        v54 = 0.0;
      }

      else
      {
        v55 = v192;
        (*v199)(v192, v51, v53);
        sub_268CA5D30(v51, &qword_2802DA5F8, &qword_268CB8FB0);
        *&v56 = COERCE_DOUBLE(sub_268CB70F0());
        v58 = v57;
        (*v191)(v55, v53);
        v54 = 0.0;
        if ((v58 & 1) == 0)
        {
          v54 = *&v56;
        }
      }

      sub_268CB7840();
      sub_268CB7890();
      v59 = v186;
      sub_268CB7760();
      v60 = *v202;
      if (*(*v202 + 16) && (v61 = sub_268CA5F54(), (v62 & 1) != 0))
      {
        v63 = *(v60 + 56) + *(v190 + 72) * v61;
        v64 = v183;
        (*(v190 + 16))(v183, v63, v53);
        v65 = 0;
      }

      else
      {
        v65 = 1;
        v64 = v183;
      }

      __swift_storeEnumTagSinglePayload(v64, v65, 1, v53);
      if (__swift_getEnumTagSinglePayload(v64, 1, v53))
      {
        sub_268CA5D30(v64, &qword_2802DA5F8, &qword_268CB8FB0);
      }

      else
      {
        v66 = v192;
        (*v199)(v192, v64, v53);
        sub_268CA5D30(v64, &qword_2802DA5F8, &qword_268CB8FB0);
        v67 = COERCE_DOUBLE(sub_268CB70F0());
        v69 = v68;
        v70 = v66;
        v59 = v186;
        (*v191)(v70, v53);
        if ((v69 & 1) == 0)
        {
          v72 = v67;
          if (v54 != v67)
          {
            goto LABEL_25;
          }

          goto LABEL_23;
        }
      }

      if (v54 != 0.0)
      {
        v72 = 0.0;
        goto LABEL_25;
      }

LABEL_23:
      sub_268CB78C0();
      v54 = v71;
      sub_268CB78C0();
LABEL_25:
      v73 = v72 < v54;
      v74 = *v195;
      v75 = v59;
      v32 = v197;
      (*v195)(v75, v197);
      v74(v188, v32);

      ++v41;
      ++v34;
      v44 = v194;
      v42 = v194 + 1;
      v16 = v196;
      v43 = v185;
      if ((v184 ^ v73))
      {
        goto LABEL_30;
      }
    }

    v34 = v43;
LABEL_30:
    if ((v184 & 1) == 0)
    {
      v32 = v176;
      a4 = v178;
      v33 = v177;
      goto LABEL_43;
    }

    v33 = v177;
    if (v34 < v177)
    {
LABEL_171:
      __break(1u);
      goto LABEL_172;
    }

    v32 = v176;
    if (v177 < v34)
    {
      if (v43 >= v44)
      {
        v76 = v44;
      }

      else
      {
        v76 = v43;
      }

      v77 = 8 * v76 - 8;
      v78 = v34;
      v79 = v177;
      v80 = v181;
      do
      {
        if (v79 != --v78)
        {
          v81 = *v187;
          if (!*v187)
          {
            goto LABEL_176;
          }

          v82 = *&v81[v80];
          *&v81[v80] = *&v81[v77];
          *&v81[v77] = v82;
        }

        ++v79;
        v77 -= 8;
        v80 += 8;
      }

      while (v79 < v78);
    }

    a4 = v178;
LABEL_43:
    v83 = v187[1];
    if (v34 >= v83)
    {
      goto LABEL_83;
    }

    if (__OFSUB__(v34, v33))
    {
      goto LABEL_168;
    }

    if (v34 - v33 >= a4)
    {
LABEL_83:
      if (v34 < v33)
      {
        goto LABEL_167;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v185 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v165 = *(v32 + 2);
        sub_268CA94F4();
        v32 = v166;
      }

      v123 = *(v32 + 2);
      v124 = v123 + 1;
      if (v123 >= *(v32 + 3) >> 1)
      {
        sub_268CA94F4();
        v32 = v167;
      }

      *(v32 + 2) = v124;
      v125 = v32 + 32;
      v126 = &v32[16 * v123 + 32];
      v127 = v185;
      *v126 = v33;
      *(v126 + 1) = v127;
      v194 = *v179;
      if (!v194)
      {
        goto LABEL_177;
      }

      if (!v123)
      {
LABEL_132:
        v30 = v187[1];
        v31 = v185;
        a4 = v178;
        if (v185 >= v30)
        {
          goto LABEL_136;
        }

        continue;
      }

      while (1)
      {
        v128 = v124 - 1;
        v129 = &v125[16 * v124 - 16];
        v130 = &v32[16 * v124];
        if (v124 >= 4)
        {
          break;
        }

        if (v124 == 3)
        {
          v131 = *(v32 + 4);
          v132 = *(v32 + 5);
          v141 = __OFSUB__(v132, v131);
          v133 = v132 - v131;
          v134 = v141;
LABEL_103:
          if (v134)
          {
            goto LABEL_154;
          }

          v146 = *v130;
          v145 = *(v130 + 1);
          v147 = __OFSUB__(v145, v146);
          v148 = v145 - v146;
          v149 = v147;
          if (v147)
          {
            goto LABEL_157;
          }

          v150 = *(v129 + 1);
          v151 = v150 - *v129;
          if (__OFSUB__(v150, *v129))
          {
            goto LABEL_160;
          }

          if (__OFADD__(v148, v151))
          {
            goto LABEL_162;
          }

          if (v148 + v151 >= v133)
          {
            if (v133 < v151)
            {
              v128 = v124 - 2;
            }

            goto LABEL_125;
          }

          goto LABEL_118;
        }

        if (v124 < 2)
        {
          goto LABEL_156;
        }

        v153 = *v130;
        v152 = *(v130 + 1);
        v141 = __OFSUB__(v152, v153);
        v148 = v152 - v153;
        v149 = v141;
LABEL_118:
        if (v149)
        {
          goto LABEL_159;
        }

        v155 = *v129;
        v154 = *(v129 + 1);
        v141 = __OFSUB__(v154, v155);
        v156 = v154 - v155;
        if (v141)
        {
          goto LABEL_161;
        }

        if (v156 < v148)
        {
          goto LABEL_132;
        }

LABEL_125:
        if (v128 - 1 >= v124)
        {
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
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
          goto LABEL_170;
        }

        if (!*v187)
        {
          goto LABEL_174;
        }

        a3 = v32;
        v160 = &v125[16 * v128 - 16];
        v161 = *v160;
        v32 = &v125[16 * v128];
        v162 = *(v32 + 1);
        v163 = v189;
        sub_268CB2630(&(*v187)[8 * *v160], &(*v187)[8 * *v32], &(*v187)[8 * v162], v194, v202);
        v189 = v163;
        if (v163)
        {
          goto LABEL_146;
        }

        if (v162 < v161)
        {
          goto LABEL_149;
        }

        v164 = *(a3 + 2);
        if (v128 > v164)
        {
          goto LABEL_150;
        }

        *v160 = v161;
        *(v160 + 1) = v162;
        if (v128 >= v164)
        {
          goto LABEL_151;
        }

        v124 = v164 - 1;
        sub_268CAA38C(v32 + 16, v164 - 1 - v128, &v125[16 * v128]);
        v32 = a3;
        *(a3 + 2) = v164 - 1;
        if (v164 <= 2)
        {
          goto LABEL_132;
        }
      }

      v135 = &v125[16 * v124];
      v136 = *(v135 - 8);
      v137 = *(v135 - 7);
      v141 = __OFSUB__(v137, v136);
      v138 = v137 - v136;
      if (v141)
      {
        goto LABEL_152;
      }

      v140 = *(v135 - 6);
      v139 = *(v135 - 5);
      v141 = __OFSUB__(v139, v140);
      v133 = v139 - v140;
      v134 = v141;
      if (v141)
      {
        goto LABEL_153;
      }

      v142 = *(v130 + 1);
      v143 = v142 - *v130;
      if (__OFSUB__(v142, *v130))
      {
        goto LABEL_155;
      }

      v141 = __OFADD__(v133, v143);
      v144 = v133 + v143;
      if (v141)
      {
        goto LABEL_158;
      }

      if (v144 >= v138)
      {
        v158 = *v129;
        v157 = *(v129 + 1);
        v141 = __OFSUB__(v157, v158);
        v159 = v157 - v158;
        if (v141)
        {
          goto LABEL_166;
        }

        if (v133 < v159)
        {
          v128 = v124 - 2;
        }

        goto LABEL_125;
      }

      goto LABEL_103;
    }

    break;
  }

  if (__OFADD__(v33, a4))
  {
    goto LABEL_169;
  }

  if (v33 + a4 >= v83)
  {
    v84 = v187[1];
  }

  else
  {
    v84 = (v33 + a4);
  }

  if (v84 < v33)
  {
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  if (v34 == v84)
  {
    goto LABEL_83;
  }

  v85 = v16;
  v176 = v32;
  v194 = *v187;
  v86 = &v194[8 * v34 - 8];
  v177 = v33;
  v87 = v33 - v34;
  v180 = v84;
LABEL_53:
  v185 = v34;
  v88 = *&v194[8 * v34];
  v181 = v87;
  v184 = v86;
  v89 = v86;
  while (1)
  {
    v90 = *v89;
    v91 = v88;
    v92 = v90;
    sub_268CB7840();
    sub_268CB7890();
    sub_268CB7760();
    v93 = *v202;
    if (*(*v202 + 16) && (v94 = sub_268CA5F54(), (v95 & 1) != 0))
    {
      v96 = v201;
      (*(v190 + 16))(v85, *(v93 + 56) + *(v190 + 72) * v94, v201);
      v97 = 0;
    }

    else
    {
      v97 = 1;
      v96 = v201;
    }

    __swift_storeEnumTagSinglePayload(v85, v97, 1, v96);
    if (__swift_getEnumTagSinglePayload(v85, 1, v96))
    {
      sub_268CA5D30(v85, &qword_2802DA5F8, &qword_268CB8FB0);
      v98 = 0.0;
    }

    else
    {
      v99 = v192;
      (*v199)(v192, v85, v96);
      sub_268CA5D30(v85, &qword_2802DA5F8, &qword_268CB8FB0);
      *&v100 = COERCE_DOUBLE(sub_268CB70F0());
      v102 = v101;
      (*v191)(v99, v96);
      v98 = 0.0;
      if ((v102 & 1) == 0)
      {
        v98 = *&v100;
      }
    }

    sub_268CB7840();
    sub_268CB7890();
    v103 = v198;
    sub_268CB7760();
    v104 = *v202;
    if (*(*v202 + 16))
    {
      v105 = sub_268CA5F54();
      v106 = v193;
      v107 = v201;
      if (v108)
      {
        (*(v190 + 16))(v193, *(v104 + 56) + *(v190 + 72) * v105, v201);
        v109 = 0;
      }

      else
      {
        v109 = 1;
      }

      v85 = v196;
    }

    else
    {
      v109 = 1;
      v106 = v193;
      v85 = v196;
      v107 = v201;
    }

    __swift_storeEnumTagSinglePayload(v106, v109, 1, v107);
    if (__swift_getEnumTagSinglePayload(v106, 1, v107))
    {
      sub_268CA5D30(v106, &qword_2802DA5F8, &qword_268CB8FB0);
LABEL_71:
      if (v98 == 0.0)
      {
        goto LABEL_72;
      }

      v116 = 0.0;
      goto LABEL_74;
    }

    v110 = v192;
    (*v199)(v192, v106, v107);
    sub_268CA5D30(v106, &qword_2802DA5F8, &qword_268CB8FB0);
    v111 = COERCE_DOUBLE(sub_268CB70F0());
    v113 = v112;
    v114 = v110;
    v103 = v198;
    (*v191)(v114, v107);
    if (v113)
    {
      goto LABEL_71;
    }

    v116 = v111;
    if (v98 == v111)
    {
LABEL_72:
      sub_268CB78C0();
      v98 = v115;
      sub_268CB78C0();
    }

LABEL_74:
    a3 = (v116 < v98);
    v117 = *v195;
    v118 = v103;
    v119 = v197;
    (*v195)(v118, v197);
    v117(v200, v119);

    if ((a3 & 1) == 0)
    {
      goto LABEL_81;
    }

    if (!v194)
    {
      break;
    }

    v120 = *v89;
    v88 = *(v89 + 1);
    *v89 = v88;
    *(v89 + 1) = v120;
    v89 -= 8;
    if (__CFADD__(v87++, 1))
    {
LABEL_81:
      v34 = v185 + 1;
      v86 = v184 + 8;
      v87 = v181 - 1;
      if ((v185 + 1) == v180)
      {
        v34 = v180;
        v32 = v176;
        v16 = v85;
        v33 = v177;
        goto LABEL_83;
      }

      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
}

uint64_t sub_268CB2630(char *a1, char *a2, id *a3, char *a4, uint64_t *a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 >= v9)
  {
    sub_268CA9820(a2, (a3 - a2) / 8, a4);
    v26 = a2;
    v12 = (v5 + 8 * v9);
    v27 = -v5;
    __src = v5;
LABEL_15:
    v28 = v26 - 1;
    v29 = (v6 - 1);
    v30 = v12 + v27;
    v50 = v26;
    while (v12 > v5 && v26 > v7)
    {
      v51 = v30;
      v32 = v29;
      v33 = v12;
      v34 = v12 - 1;
      v55 = *(v12 - 1);
      v35 = v28;
      v54 = *v28;
      v36 = v54;
      v37 = v55;
      v38 = v36;
      v39 = sub_268CB09F8(&v55, &v54, a5);
      if (v53)
      {

        v26 = v50;
        v47 = v51 / 8;
        v45 = __src;
        if (v50 < __src || v50 >= &__src[8 * (v51 / 8)])
        {
          memmove(v50, __src, 8 * v47);
          return 1;
        }

        if (v50 != __src)
        {
          v44 = 8 * v47;
          goto LABEL_41;
        }

        return 1;
      }

      v40 = v39;

      if (v40)
      {
        v6 = v32;
        v5 = __src;
        v26 = v35;
        v12 = v33;
        if (v32 + 1 != v50)
        {
          *v32 = *v35;
          v26 = v35;
        }

        goto LABEL_15;
      }

      v26 = v50;
      v28 = v35;
      if (v33 != v32 + 1)
      {
        *v32 = *v34;
      }

      v29 = v32 - 1;
      v30 = v51 - 8;
      v12 = v34;
      v5 = __src;
    }

LABEL_29:
    v41 = (v12 - v5) / 8;
    if (v26 < v5 || v26 >= v5 + 8 * v41)
    {
      goto LABEL_40;
    }

LABEL_39:
    if (v26 == v5)
    {
      return 1;
    }

    goto LABEL_40;
  }

  sub_268CA9820(a1, (a2 - a1) / 8, a4);
  v11 = a2;
  v12 = (v5 + 8 * v8);
  while (1)
  {
    if (v5 >= v12 || v11 >= v6)
    {
      v26 = v7;
      goto LABEL_29;
    }

    v14 = v12;
    v15 = v6;
    v16 = v7;
    v17 = v11;
    v55 = *v11;
    v54 = *v5;
    v18 = v54;
    v19 = v55;
    v20 = v18;
    v21 = sub_268CB09F8(&v55, &v54, a5);
    if (v53)
    {
      break;
    }

    v22 = v21;
    v53 = 0;

    if (v22)
    {
      v23 = v17;
      v11 = v17 + 1;
      v24 = v16 == v17;
    }

    else
    {
      v23 = v5;
      v24 = v16 == v5;
      v5 += 8;
      v11 = v17;
    }

    v12 = v14;
    if (!v24)
    {
      *v16 = *v23;
    }

    v7 = (v16 + 1);
    v6 = v15;
  }

  v41 = (v14 - v5) / 8;
  v26 = v16;
  if (v16 >= v5 && v16 < v5 + 8 * v41)
  {
    goto LABEL_39;
  }

LABEL_40:
  v44 = 8 * v41;
  v45 = v5;
LABEL_41:
  memmove(v26, v45, v44);
  return 1;
}

uint64_t sub_268CB2924(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA3C8, &qword_268CB8760);
  result = sub_268CB7CB0();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = *(v3 + 40);
    sub_268CB7E50();

    sub_268CB79E0();
    result = sub_268CB7E70();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (*(v3 + 48) + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (sub_268CB7DC0() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (*(v3 + 48) + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_268CB2AB4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_268CB7E50();
  sub_268CB79E0();
  v7 = sub_268CB7E70();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_268CB7DC0() & 1) != 0)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_268C9A4C4();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  sub_268CB2BDC(v9);
  *v2 = v19;
  return v16;
}

unint64_t sub_268CB2BDC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_268CB7C80();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_268CB7E50();

        sub_268CB79E0();
        v15 = sub_268CB7E70();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_268CB2D94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA5D8, &qword_268CB8F98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268CB2E04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_6()
{
}

uint64_t OUTLINED_FUNCTION_1_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_268CA5820(v4, v5, va);
}

uint64_t OUTLINED_FUNCTION_4_6()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_5_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_6_4()
{
}

uint64_t OUTLINED_FUNCTION_8_5()
{
}

uint64_t sub_268CB2F00(char *a1)
{
  v2 = sub_268CB7160();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  sub_268CB7060();
  sub_268CB71F0();
  if (!v43)
  {
    return 0;
  }

  v10 = sub_268CB7660();
  v11 = v10;
  v42 = *(v10 + 16);
  if (!v42)
  {
LABEL_12:

    return 0;
  }

  v41 = v9;
  v12 = 0;
  v13 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  while (1)
  {
    if (v12 >= *(v11 + 16))
    {
      __break(1u);
      goto LABEL_42;
    }

    (*(v3 + 16))(v7, v13 + *(v3 + 72) * v12, v2);
    a1 = v7;
    v14 = sub_268CB7150();
    if (v15)
    {
      break;
    }

LABEL_11:
    ++v12;
    (*(v3 + 8))(v7, v2);
    if (v42 == v12)
    {
      goto LABEL_12;
    }
  }

  a1 = v15;
  if (v14 != 0x6C6F636F746F7270 || v15 != 0xE800000000000000)
  {
    v17 = sub_268CB7DC0();

    if (v17)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

LABEL_15:
  v13 = 0xD000000000000018;

  (*(v3 + 32))(v41, v7, v2);
  v7 = sub_268CB7140();
  a1 = v19;
  v20 = *(v3 + 8);
  v21 = OUTLINED_FUNCTION_5_5();
  v22(v21);
  OUTLINED_FUNCTION_3_7();
  v24 = v7 == 0xD000000000000016 && v23 == a1;
  if (v24 || (OUTLINED_FUNCTION_1_8() & 1) != 0)
  {

    v25 = sub_268CB7460();
    OUTLINED_FUNCTION_3_3(v25);
    sub_268CB7450();
LABEL_21:
    v18 = MEMORY[0x26D62AA30]();

    return v18;
  }

  OUTLINED_FUNCTION_3_7();
  v28 = v7 == 0xD000000000000013 && v27 == a1;
  if (v28 || (OUTLINED_FUNCTION_1_8() & 1) != 0)
  {

    v29 = sub_268CB7340();
    OUTLINED_FUNCTION_3_3(v29);
    sub_268CB7330();
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_3_7();
  v31 = v7 == 0xD000000000000020 && v30 == a1;
  if (v31 || (OUTLINED_FUNCTION_1_8() & 1) != 0)
  {

    v32 = sub_268CB7280();
    OUTLINED_FUNCTION_3_3(v32);
    sub_268CB7270();
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_3_7();
  v34 = v7 == 0xD000000000000018 && v33 == a1;
  if (v34 || (OUTLINED_FUNCTION_1_8() & 1) != 0)
  {

    v35 = sub_268CB7210();
    OUTLINED_FUNCTION_3_3(v35);
    sub_268CB7200();
    goto LABEL_21;
  }

LABEL_42:
  OUTLINED_FUNCTION_3_7();
  if (v7 == v13 && v36 == a1)
  {

LABEL_49:
    v39 = sub_268CB73D0();
    OUTLINED_FUNCTION_3_3(v39);
    sub_268CB73C0();
    goto LABEL_21;
  }

  v38 = OUTLINED_FUNCTION_1_8();

  if (v38)
  {
    goto LABEL_49;
  }

  return 0;
}

uint64_t sub_268CB32D4()
{
  v1 = MEMORY[0x277D84F90];
  v33 = MEMORY[0x277D84F90];
  v2 = OBJC_IVAR____TtC21SiriReferenceResolver10RRResolver_entities;
  swift_beginAccess();
  v3 = *(v0 + v2);
  result = sub_268CAAE90(v3);
  if (result)
  {
    v5 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v31 = v3 & 0xC000000000000001;

    v6 = 0;
    v30 = v5;
    do
    {
      if (v31)
      {
        v7 = MEMORY[0x26D62B570](v6, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      static RREntityMatcher.entity(_:matches:entityFoundByMarrsIdentifier:)();
      if (v9)
      {
        v10 = v9;
        v11 = sub_268CB7810();
        v12 = sub_268CB2F00(v11);

        if (v12)
        {
          static RREntityMatcher.entity(_:matches:entityFoundByMarrsIdentifier:)();
          if (v13)
          {
            v14 = v13;
            v15 = sub_268CB7730();
            v16 = sub_268CB7BD0();

            if (os_log_type_enabled(v15, v16))
            {
              v17 = swift_slowAlloc();
              v29 = swift_slowAlloc();
              v32 = v29;
              *v17 = 136315138;
              sub_268CB7810();
              sub_268CB7680();
              v18 = sub_268CB7A20();
              v20 = v3;
              v21 = sub_268CA5820(v18, v19, &v32);

              *(v17 + 4) = v21;
              v3 = v20;
              _os_log_impl(&dword_268C94000, v15, v16, "RREntityMatcher found a new match: %s. Replacing common_AppEntity", v17, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v29);
              MEMORY[0x26D62BBE0](v29, -1, -1);
              MEMORY[0x26D62BBE0](v17, -1, -1);
            }

            v22 = v14;
            MEMORY[0x26D62B3D0]();
            OUTLINED_FUNCTION_0_7();
            if (v23)
            {
              OUTLINED_FUNCTION_2_7();
            }

            OUTLINED_FUNCTION_5_5();
            sub_268CB7BA0();
          }

          else
          {
            v25 = v10;
            MEMORY[0x26D62B3D0]();
            OUTLINED_FUNCTION_0_7();
            if (v23)
            {
              OUTLINED_FUNCTION_2_7();
            }

            OUTLINED_FUNCTION_5_5();
            sub_268CB7BA0();
          }
        }

        else
        {
          v24 = v10;
          MEMORY[0x26D62B3D0]();
          OUTLINED_FUNCTION_0_7();
          if (v23)
          {
            OUTLINED_FUNCTION_2_7();
          }

          OUTLINED_FUNCTION_5_5();
          sub_268CB7BA0();
        }

        v1 = v33;
        v5 = v30;
      }

      else
      {
      }

      ++v6;
    }

    while (v5 != v6);
  }

  v26 = sub_268CB7730();
  v27 = sub_268CB7BD0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = sub_268CAAE90(v1);

    _os_log_impl(&dword_268C94000, v26, v27, "result entity count: %ld", v28, 0xCu);
    MEMORY[0x26D62BBE0](v28, -1, -1);
  }

  else
  {
  }

  return v1;
}

uint64_t OUTLINED_FUNCTION_1_8()
{

  return sub_268CB7DC0();
}

uint64_t OUTLINED_FUNCTION_2_7()
{

  return sub_268CB7B70();
}

uint64_t sub_268CB36F8(unsigned __int8 a1, char a2)
{
  v2 = 0xEC000000726F7272;
  v3 = 0x456E776F6E6B6E75;
  v4 = a1;
  v5 = 0x456E776F6E6B6E75;
  v6 = 0xEC000000726F7272;
  switch(v4)
  {
    case 1:
      v5 = 0x74754F64656D6974;
      v6 = 0xED0000726F727245;
      break;
    case 2:
      v5 = 0x617461446B6E696CLL;
      v6 = 0xEB000000006C694ELL;
      break;
    case 3:
      v5 = 0xD00000000000001DLL;
      v6 = 0x8000000268CB96E0;
      break;
    case 4:
      v6 = 0x8000000268CB9700;
      v5 = 0xD00000000000001ELL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x74754F64656D6974;
      v2 = 0xED0000726F727245;
      break;
    case 2:
      v3 = 0x617461446B6E696CLL;
      v2 = 0xEB000000006C694ELL;
      break;
    case 3:
      v3 = 0xD00000000000001DLL;
      v2 = 0x8000000268CB96E0;
      break;
    case 4:
      v2 = 0x8000000268CB9700;
      v3 = 0xD00000000000001ELL;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_268CB7DC0();
  }

  return v8 & 1;
}

uint64_t sub_268CB38AC(char a1, char a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x707954676E6F7277;
  if (a1)
  {
    OUTLINED_FUNCTION_0_8();
    OUTLINED_FUNCTION_2_8();
    if (v5 == 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    if (v5 == 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = (v4 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v9 = 0x707954676E6F7277;
    v10 = 0xE900000000000065;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_0_8();
    OUTLINED_FUNCTION_2_8();
    v16 = (v15 - 32) | 0x8000000000000000;
    if (v11 == 1)
    {
      v3 = v12;
    }

    else
    {
      v3 = v14;
    }

    if (v11 == 1)
    {
      v2 = v13;
    }

    else
    {
      v2 = v16;
    }
  }

  if (v9 == v3 && v10 == v2)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_268CB7DC0();
  }

  return v18 & 1;
}

uint64_t sub_268CB3990()
{
  sub_268CB7E50();
  sub_268CB39D8();
  return sub_268CB7E70();
}

uint64_t sub_268CB39D8()
{
  sub_268CB79E0();
}

uint64_t sub_268CB3AD0(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_0_8();
    OUTLINED_FUNCTION_3_8();
  }

  else
  {
    OUTLINED_FUNCTION_1_9();
  }

  sub_268CB79E0();
}

uint64_t sub_268CB3B3C(uint64_t a1, char a2)
{
  sub_268CB7E50();
  if (a2)
  {
    OUTLINED_FUNCTION_0_8();
    OUTLINED_FUNCTION_3_8();
  }

  else
  {
    OUTLINED_FUNCTION_1_9();
  }

  sub_268CB79E0();

  return sub_268CB7E70();
}

uint64_t sub_268CB3BBC()
{
  sub_268CB7E50();
  sub_268CB39D8();
  return sub_268CB7E70();
}

unint64_t ResolutionError.errorDescription.getter()
{
  if (*v0)
  {
    result = 0xD000000000000061;
  }

  else
  {
    result = 0xD000000000000050;
  }

  *v0;
  return result;
}

SiriReferenceResolver::LinkError_optional __swiftcall LinkError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_268CB7D60();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t LinkError.rawValue.getter()
{
  result = 0x456E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x74754F64656D6974;
      break;
    case 2:
      result = 0x617461446B6E696CLL;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    case 4:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_268CB3DE0@<X0>(unint64_t *a1@<X8>)
{
  result = LinkError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _s21SiriReferenceResolver15ResolutionErrorO9hashValueSivg_0()
{
  v1 = *v0;
  sub_268CB7E50();
  MEMORY[0x26D62B700](v1);
  return sub_268CB7E70();
}

uint64_t sub_268CB3E50()
{
  v1 = *v0;
  sub_268CB7E50();
  MEMORY[0x26D62B700](v1);
  return sub_268CB7E70();
}

unint64_t sub_268CB3E98()
{
  result = qword_2802DA608;
  if (!qword_2802DA608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802DA608);
  }

  return result;
}

unint64_t sub_268CB3EF4()
{
  result = qword_2802DA610;
  if (!qword_2802DA610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802DA610);
  }

  return result;
}

unint64_t sub_268CB3F4C()
{
  result = qword_2802DA618;
  if (!qword_2802DA618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802DA618);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LinkError(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for LinkError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_268CB410C(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_268CB4194(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t static RRResolverLog.logger<A>(_:)()
{
  swift_getMetatypeMetadata();
  sub_268CB7A20();
  return sub_268CB7740();
}

_BYTE *storeEnumTagSinglePayload for RRResolverLog(_BYTE *result, int a2, int a3)
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

uint64_t sub_268CB44B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268CB7160();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_268CB7340();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_268CB7330();
  v13 = [a3 displayName];
  sub_268CB7A10();

  sub_268CB7320();

  v14 = [a3 personHandle];
  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = v14;
  v16 = [v14 type];

  if (!v16)
  {
    goto LABEL_8;
  }

  if (v16 == 2)
  {
    v23 = sub_268CB74C0();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    sub_268CB74B0();
    v26 = [a3 personHandle];
    if (!v26 || (sub_268CB4A2C(v26), !v27))
    {
    }

    sub_268CB74A0();

    goto LABEL_16;
  }

  if (v16 != 1)
  {
LABEL_8:

    return 0;
  }

  v17 = sub_268CB7500();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_268CB74F0();
  v20 = [a3 personHandle];
  if (!v20 || (sub_268CB4A2C(v20), !v21))
  {
  }

  sub_268CB74E0();

LABEL_16:
  sub_268CB7300();

  sub_268CABA88(a3, &selRef_contactIdentifier);
  if (v28)
  {
    if (sub_268CB7310())
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  sub_268CABA88(a3, &selRef_customIdentifier);
  if (v29)
  {
    if (sub_268CB7310())
    {
LABEL_21:

      OUTLINED_FUNCTION_0_9();
      sub_268CB7130();
      sub_268CB7090();

      (*(v5 + 8))(v8, v4);
      return v12;
    }

LABEL_22:
  }

  return v12;
}

uint64_t sub_268CB487C(void *a1)
{
  v2 = sub_268CB7840();
  v4 = sub_268CB44B4(v2, v3, a1);

  if (v4)
  {
    v5 = MEMORY[0x26D62AA30](v4);
    if (v5)
    {
      v6 = sub_268C9F044(0, 0, 0, 0, v5, 0, 0, 0, 0xF000000000000000);

      return v6;
    }

    else
    {
      sub_268CB49D8();
      swift_allocError();
      *v9 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_268CB49D8();
    swift_allocError();
    *v8 = 0;
    return swift_willThrow();
  }
}

unint64_t sub_268CB49D8()
{
  result = qword_2802DA620;
  if (!qword_2802DA620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802DA620);
  }

  return result;
}

uint64_t sub_268CB4A2C(void *a1)
{
  v2 = [a1 value];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_268CB7A10();

  return v3;
}

uint64_t sub_268CB4B7C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
LABEL_8:
    while (1)
    {
      v16 = *(*(a3 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v9)))));

      a1(&v15, &v16);
      if (v3)
      {
        break;
      }

      if (v15)
      {
        MEMORY[0x26D62B3D0](result);
        if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_268CB7B70();
        }

        result = sub_268CB7BA0();
        v5 = v17;
      }

      v9 &= v9 - 1;
      if (!v9)
      {
        goto LABEL_4;
      }
    }

    return v5;
  }

  else
  {
LABEL_4:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        return v5;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        v12 = v13;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_268CB4D18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA598, &qword_268CB8E10);
  v3 = OUTLINED_FUNCTION_9_1(v2);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  sub_268CB6EC0(a1, &v16 - v9, &qword_2802DA598, &qword_268CB8E10);
  v11 = sub_268CB72D0();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    v12 = 0;
  }

  else
  {
    sub_268CB6EC0(v10, v8, &qword_2802DA598, &qword_268CB8E10);
    v13 = *(v11 - 8);
    v14 = (*(v13 + 88))(v8, v11);
    if (v14 == *MEMORY[0x277D5EC30])
    {
      v12 = 4;
    }

    else if (v14 == *MEMORY[0x277D5EC40])
    {
      v12 = 2;
    }

    else
    {
      if (v14 == *MEMORY[0x277D5EB60])
      {
        goto LABEL_8;
      }

      if (v14 == *MEMORY[0x277D5EBD0])
      {
        v12 = 24;
        goto LABEL_37;
      }

      if (v14 == *MEMORY[0x277D5EBA0])
      {
        v12 = 17;
        goto LABEL_37;
      }

      if (v14 == *MEMORY[0x277D5EC28])
      {
        v12 = 8;
        goto LABEL_37;
      }

      if (v14 == *MEMORY[0x277D5EBA8])
      {
        v12 = -3;
        goto LABEL_37;
      }

      if (v14 == *MEMORY[0x277D5EC10])
      {
        v12 = 6;
        goto LABEL_37;
      }

      if (v14 == *MEMORY[0x277D5EB90])
      {
        v12 = 19;
        goto LABEL_37;
      }

      if (v14 == *MEMORY[0x277D5EBB0])
      {
        v12 = 25;
        goto LABEL_37;
      }

      if (v14 == *MEMORY[0x277D5EC08])
      {
        v12 = 9;
        goto LABEL_37;
      }

      if (v14 == *MEMORY[0x277D5EC60])
      {
        v12 = 11;
        goto LABEL_37;
      }

      if (v14 == *MEMORY[0x277D5EBE0])
      {
        goto LABEL_28;
      }

      if (v14 == *MEMORY[0x277D5EB88])
      {
        v12 = 14;
        goto LABEL_37;
      }

      if (v14 == *MEMORY[0x277D5EBC8])
      {
        v12 = -2;
        goto LABEL_37;
      }

      if (v14 == *MEMORY[0x277D5EBB8])
      {
        v12 = 21;
        goto LABEL_37;
      }

      if (v14 == *MEMORY[0x277D5EB98])
      {
        v12 = 13;
        goto LABEL_37;
      }

      if (v14 == *MEMORY[0x277D5EBE8])
      {
LABEL_28:
        v12 = -1;
        goto LABEL_37;
      }

      if (v14 == *MEMORY[0x277D5EBD8])
      {
        v12 = 22;
        goto LABEL_37;
      }

      if (v14 == *MEMORY[0x277D5EB68])
      {
        v12 = 15;
        goto LABEL_37;
      }

      if (v14 == *MEMORY[0x277D5EB78])
      {
        v12 = 20;
        goto LABEL_37;
      }

      if (v14 == *MEMORY[0x277D5EBF8])
      {
        v12 = 5;
        goto LABEL_37;
      }

      if (v14 == *MEMORY[0x277D5EB70])
      {
        v12 = 16;
        goto LABEL_37;
      }

      if (v14 == *MEMORY[0x277D5EC00])
      {
LABEL_8:
        v12 = 1;
      }

      else if (v14 == *MEMORY[0x277D5EC50])
      {
        v12 = 7;
      }

      else if (v14 == *MEMORY[0x277D5EB80])
      {
        v12 = 18;
      }

      else if (v14 == *MEMORY[0x277D5EBC0])
      {
        v12 = 23;
      }

      else if (v14 == *MEMORY[0x277D5EC58])
      {
        v12 = 12;
      }

      else if (v14 == *MEMORY[0x277D5EC20])
      {
        v12 = 3;
      }

      else if (v14 == *MEMORY[0x277D5EC18])
      {
        v12 = 10;
      }

      else
      {
        (*(v13 + 8))(v8, v11);
        v12 = 0;
      }
    }
  }

LABEL_37:
  sub_268CAAE38(v10, &qword_2802DA598, &qword_268CB8E10);
  return v12;
}

void sub_268CB524C(unint64_t *a1, uint64_t (*a2)(id, id))
{
  v4 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
  {
    v4 = sub_268CB6E5C(v4);
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6[0] = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
  v6[1] = v5;
  sub_268CB6200(v6, a2);
  *a1 = v4;
}

uint64_t sub_268CB52DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = a3;
  v77 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4E0, &qword_268CB8A08);
  v7 = OUTLINED_FUNCTION_9_1(v6);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v74 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA590, &qword_268CB8E08);
  v16 = OUTLINED_FUNCTION_9_1(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v74 - v19;
  v21 = sub_268CB7930();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268CB6EC0(a2, v20, &qword_2802DA590, &qword_268CB8E08);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v21);
  v79 = v22;
  v81 = v25;
  v75 = v21;
  if (EnumTagSinglePayload == 1)
  {
    (*(v22 + 104))(v25, *MEMORY[0x277D5FE50], v21);
    if (__swift_getEnumTagSinglePayload(v20, 1, v21) != 1)
    {
      sub_268CAAE38(v20, &qword_2802DA590, &qword_268CB8E08);
    }
  }

  else
  {
    (*(v22 + 32))(v25, v20, v21);
  }

  v82 = MEMORY[0x277D84F90];
  v27 = sub_268CAAE90(a1);
  v28 = 0;
  v29 = a1 & 0xC000000000000001;
  v30 = a1 & 0xFFFFFFFFFFFFFF8;
  v31 = &qword_2802DA4E0;
  v80 = v14;
  while (v27 != v28)
  {
    if (v29)
    {
      v32 = MEMORY[0x26D62B570](v28, a1);
    }

    else
    {
      if (v28 >= *(v30 + 16))
      {
        goto LABEL_39;
      }

      v32 = *(a1 + 8 * v28 + 32);
    }

    v33 = v32;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      result = sub_268CB7DE0();
      __break(1u);
      return result;
    }

    sub_268CB78B0();
    v34 = sub_268CB7800();
    if (__swift_getEnumTagSinglePayload(v14, 1, v34) == 1)
    {

      sub_268CAAE38(v14, v31, &qword_268CB8A08);
    }

    else
    {
      sub_268CAAE38(v14, v31, &qword_268CB8A08);
      sub_268CB7D00();
      v35 = v27;
      v36 = v30;
      v37 = v29;
      v38 = v12;
      v39 = a1;
      v40 = v31;
      v41 = *(v82 + 2);
      sub_268CB7D20();
      v31 = v40;
      a1 = v39;
      v12 = v38;
      v29 = v37;
      v30 = v36;
      v27 = v35;
      v14 = v80;
      sub_268CB7D30();
      sub_268CB7D10();
    }

    ++v28;
  }

  v42 = v82;
  v43 = sub_268CAAE90(v82);
  v44 = 0;
  v80 = MEMORY[0x277D84F98];
  v45 = v79;
  while (1)
  {
    v46 = v81;
    if (v43 == v44)
    {
      break;
    }

    if ((v42 & 0xC000000000000001) != 0)
    {
      v47 = MEMORY[0x26D62B570](v44, v42);
    }

    else
    {
      if (v44 >= *(v42 + 16))
      {
        goto LABEL_41;
      }

      v47 = *(v42 + 8 * v44 + 32);
    }

    v48 = v47;
    v49 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      goto LABEL_40;
    }

    sub_268CB78B0();
    v50 = sub_268CB7800();
    if (__swift_getEnumTagSinglePayload(v12, 1, v50) == 1)
    {

      sub_268CAAE38(v12, &qword_2802DA4E0, &qword_268CB8A08);
      ++v44;
    }

    else
    {
      v51 = sub_268CB77E0();
      v53 = v52;
      (*(*(v50 - 8) + 8))(v12, v50);
      v54 = v80;
      swift_isUniquelyReferenced_nonNull_native();
      v82 = v54;
      v74 = v51;
      v78 = v53;
      v55 = sub_268CA5E3C(v51, v53);
      if (__OFADD__(*(v54 + 16), (v56 & 1) == 0))
      {
        goto LABEL_42;
      }

      v57 = v55;
      LODWORD(v80) = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA628, qword_268CB93F0);
      if (sub_268CB7D40())
      {
        v58 = sub_268CA5E3C(v74, v78);
        v60 = v80;
        v45 = v79;
        if ((v80 & 1) != (v59 & 1))
        {
          goto LABEL_44;
        }

        v57 = v58;
      }

      else
      {
        v45 = v79;
        v60 = v80;
      }

      v61 = v82;
      if (v60)
      {
      }

      else
      {
        *&v82[8 * (v57 >> 6) + 64] |= 1 << v57;
        v62 = (*(v61 + 6) + 16 * v57);
        v63 = v78;
        *v62 = v74;
        v62[1] = v63;
        *(*(v61 + 7) + 8 * v57) = MEMORY[0x277D84F90];
        v64 = *(v61 + 2);
        v65 = __OFADD__(v64, 1);
        v66 = v64 + 1;
        if (v65)
        {
          goto LABEL_43;
        }

        *(v61 + 2) = v66;
      }

      v80 = v61;
      v67 = (*(v61 + 7) + 8 * v57);
      v68 = v48;
      MEMORY[0x26D62B3D0]();
      if (*((*v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268CB7B70();
      }

      sub_268CB7BA0();

      v44 = v49;
    }
  }

  MEMORY[0x28223BE20](v69);
  v70 = v77;
  *(&v74 - 4) = v76;
  *(&v74 - 3) = v70;
  *(&v74 - 2) = v46;
  v71 = v46;
  v72 = sub_268CB4B7C(sub_268CB6DC0, (&v74 - 6), v80);

  (*(v45 + 8))(v71, v75);
  return v72;
}

void sub_268CB5958(unint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = sub_268CB5BA0(*a1, a2, a3);
  if (v4)
  {

    v8 = 0;
LABEL_31:
    *a4 = v8;
    return;
  }

  v9 = v7;
  v10 = sub_268CAAE90(v7);
  if (!v10)
  {

    v8 = 0;
    goto LABEL_31;
  }

  v11 = v10;
  v27 = a4;
  v12 = v9 & 0xC000000000000001;
  sub_268CAAE98(0, (v9 & 0xC000000000000001) == 0, v9);
  if ((v9 & 0xC000000000000001) != 0)
  {
LABEL_35:
    v13 = MEMORY[0x26D62B570](0, v9);
  }

  else
  {
    v13 = *(v9 + 32);
  }

  v14 = v13;
  v26 = v9 + 32;
  v15 = 1;
  while (v11 != v15)
  {
    if (v12)
    {
      v16 = MEMORY[0x26D62B570](v15, v9);
    }

    else
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }

      if (v15 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v16 = *(v9 + 8 * v15 + 32);
    }

    v17 = v16;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    sub_268CB78C0();
    v19 = v18;
    sub_268CB78C0();
    if (v19 < v20)
    {

      ++v15;
      v14 = v17;
    }

    else
    {

      ++v15;
    }
  }

  sub_268CB78C0();

  v21 = a2;
  if ((a2 & 0x8000000000000000) == 0 || (v21 = -a2, !__OFSUB__(0, a2)))
  {
    v22 = v21 - 1;
    if (!__OFSUB__(v21, 1))
    {
      if (v22 >= sub_268CAAE90(v9))
      {

        v8 = 0;
      }

      else
      {
        sub_268CAAE98(v22, v12 == 0, v9);
        if (v12)
        {
          v23 = MEMORY[0x26D62B570](v22, v9);
        }

        else
        {
          v23 = *(v26 + 8 * v22);
        }

        v24 = v23;
        sub_268CB78D0();

        if (v12)
        {
          v25 = MEMORY[0x26D62B570](v22, v9);
        }

        else
        {
          v25 = *(v26 + 8 * v22);
        }

        v8 = v25;
      }

      a4 = v27;
      goto LABEL_31;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_268CB5BA0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_268CB7930();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v14 = a1;
  (*(v8 + 16))(&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = swift_allocObject();
  (*(v8 + 32))(v11 + v10, &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

  sub_268CB524C(&v14, sub_268CB6DE0);
  if (v3)
  {

    return swift_willThrow();
  }

  else
  {

    if (a2 < 0)
    {
      sub_268CB605C();
    }

    return v14;
  }
}

uint64_t sub_268CB5D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v4 = sub_268CB7930();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DA4E0, &qword_268CB8A08);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  sub_268CB78B0();
  v16 = sub_268CB7800();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    goto LABEL_4;
  }

  v27 = a3;
  v28 = v4;
  v26 = sub_268CB77F0();
  v17 = *(*(v16 - 8) + 8);
  v17(v15, v16);
  sub_268CB78B0();
  if (__swift_getEnumTagSinglePayload(v13, 1, v16) == 1)
  {
    v15 = v13;
LABEL_4:
    sub_268CAAE38(v15, &qword_2802DA4E0, &qword_268CB8A08);
    sub_268CAAA6C();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
    return v19 & 1;
  }

  v20 = sub_268CB77F0();
  v17(v13, v16);
  v21 = v28;
  (*(v5 + 16))(v8, v27, v28);
  v22 = (*(v5 + 88))(v8, v21);
  if (v22 == *MEMORY[0x277D5FE50])
  {
    goto LABEL_6;
  }

  if (v22 == *MEMORY[0x277D5FE60])
  {
LABEL_8:
    v23 = v20 < v26;
LABEL_9:
    v19 = v23;
    return v19 & 1;
  }

  if (v22 == *MEMORY[0x277D5FE40])
  {
    goto LABEL_6;
  }

  if (v22 == *MEMORY[0x277D5FE68])
  {
    goto LABEL_8;
  }

  if (v22 == *MEMORY[0x277D5FE58])
  {
LABEL_6:
    v23 = v26 < v20;
    goto LABEL_9;
  }

  if (v22 == *MEMORY[0x277D5FE48])
  {
    goto LABEL_8;
  }

  result = sub_268CB7DB0();
  __break(1u);
  return result;
}

void sub_268CB605C()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_27;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v2 = sub_268CAAE90(v1);
      if (__OFSUB__(v2, 1))
      {
        __break(1u);
        return;
      }

      if (v2 - 1 < 1)
      {
        return;
      }

      v3 = v2;
      v4 = 0;
      v5 = v2 + 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v6 = v3 - 1;
        if ((v1 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x26D62B570](v4, v1);
          v10 = MEMORY[0x26D62B570](v3 - 1, v1);
          goto LABEL_10;
        }

        v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4 >= v7)
        {
          break;
        }

        if (v6 >= v7)
        {
          goto LABEL_25;
        }

        v8 = *(v1 + 8 * v3 + 24);
        v9 = *(v1 + 8 * v4 + 32);
        v10 = v8;
LABEL_10:
        v11 = v10;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_268CB6E5C(v1);
          v12 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v12) = 0;
        }

        v13 = v1 & 0xFFFFFFFFFFFFFF8;
        v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v11;

        if ((v1 & 0x8000000000000000) != 0 || v12)
        {
          v1 = sub_268CB6E5C(v1);
          v13 = v1 & 0xFFFFFFFFFFFFFF8;
        }

        if (v6 >= *(v13 + 16))
        {
          goto LABEL_24;
        }

        v15 = v13 + 8 * v3;
        v16 = *(v15 + 24);
        *(v15 + 24) = v9;

        *v0 = v1;
        if (v5 == v4)
        {
          goto LABEL_26;
        }

        ++v4;
        v17 = v3 - 2;
        --v3;
        if (v4 >= v17)
        {
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

    while (sub_268CB7D50());
  }
}

void sub_268CB6200(uint64_t *a1, uint64_t (*a2)(id, id))
{
  v5 = a1[1];
  v6 = sub_268CB7D80();
  if (v6 < v5)
  {
    v7 = v6;
    v8 = sub_268CA9294(v5 / 2);
    v10[0] = v9;
    v10[1] = (v5 / 2);
    sub_268CB63F8(v10, v11, a1, v7, a2);
    if (v2)
    {
      if (v5 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v5 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v5)
  {
    sub_268CB6300(0, v5, 1, a1, a2);
  }
}

void sub_268CB6300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(id, id))
{
  if (a3 != a2)
  {
    v7 = *a4;
    v8 = *a4 + 8 * a3 - 8;
    v9 = a1 - a3;
LABEL_4:
    v20 = a3;
    v10 = *(v7 + 8 * a3);
    v18 = v9;
    v19 = v8;
    while (1)
    {
      v11 = *v8;
      v12 = v10;
      v13 = v11;
      v14 = a5(v12, v13);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v7)
        {
          __break(1u);
          return;
        }

        v15 = *v8;
        v10 = *(v8 + 8);
        *v8 = v10;
        *(v8 + 8) = v15;
        v8 -= 8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v8 = v19 + 8;
      v9 = v18 - 1;
      if (v20 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_268CB63F8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(id, id))
{
  v6 = v5;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_95:
    v108 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_97;
    }

    goto LABEL_139;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *a3;
      v12 = *(*a3 + 8 * v10);
      v13 = *(*a3 + 8 * v8);
      v14 = v12;
      LODWORD(v108) = a5(v13, v14);
      if (v6)
      {

        goto LABEL_107;
      }

      v105 = v9;

      v99 = 8 * v10;
      v15 = (v11 + 8 * v10 + 16);
      v102 = v10;
      v16 = v10 + 2;
      while (1)
      {
        v17 = v16;
        if (v8 + 1 >= v7)
        {
          break;
        }

        v18 = v7;
        v19 = *(v15 - 1);
        v20 = *v15;
        v21 = v19;
        v22 = a5(v20, v21);

        v23 = v108 ^ v22;
        ++v15;
        ++v8;
        v16 = v17 + 1;
        v7 = v18;
        if (v23)
        {
          goto LABEL_10;
        }
      }

      v8 = v7;
LABEL_10:
      if (v108)
      {
        v24 = v102;
        if (v8 < v102)
        {
          goto LABEL_133;
        }

        v9 = v105;
        if (v102 >= v8)
        {
          v10 = v102;
          goto LABEL_25;
        }

        if (v7 >= v17)
        {
          v25 = v17;
        }

        else
        {
          v25 = v7;
        }

        v26 = 8 * v25 - 8;
        v27 = v8;
        v28 = v99;
        do
        {
          if (v24 != --v27)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_137;
            }

            v30 = *(v29 + v28);
            *(v29 + v28) = *(v29 + v26);
            *(v29 + v26) = v30;
          }

          ++v24;
          v26 -= 8;
          v28 += 8;
        }

        while (v24 < v27);
      }

      else
      {
        v9 = v105;
      }

      v10 = v102;
    }

LABEL_25:
    v31 = a3[1];
    if (v8 < v31)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_129;
      }

      if (v8 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          __break(1u);
        }

        else
        {
          if (v10 + a4 >= v31)
          {
            v32 = a3[1];
          }

          else
          {
            v32 = v10 + a4;
          }

          if (v32 >= v10)
          {
            if (v8 == v32)
            {
              goto LABEL_34;
            }

            v107 = v9;
            v77 = v10;
            v78 = *a3;
            v79 = *a3 + 8 * v8 - 8;
            v103 = v77;
            v80 = v77 - v8;
            v98 = v32;
            while (1)
            {
              v81 = *(v78 + 8 * v8);
              v100 = v80;
              v108 = v79;
              do
              {
                v82 = *v79;
                v83 = v81;
                v14 = v82;
                v84 = a5(v83, v14);
                if (v6)
                {

LABEL_107:
                  return;
                }

                v85 = v84;

                if ((v85 & 1) == 0)
                {
                  break;
                }

                if (!v78)
                {
                  goto LABEL_136;
                }

                v86 = *v79;
                v81 = *(v79 + 8);
                *v79 = v81;
                *(v79 + 8) = v86;
                v79 -= 8;
              }

              while (!__CFADD__(v80++, 1));
              ++v8;
              v79 = (v108 + 8);
              v80 = v100 - 1;
              if (v8 == v98)
              {
                v8 = v98;
                v9 = v107;
                v10 = v103;
                goto LABEL_34;
              }
            }
          }
        }

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
    }

LABEL_34:
    if (v8 < v10)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v88 = *(v9 + 2);
      sub_268CA94F4();
      v9 = v89;
    }

    v33 = *(v9 + 2);
    v34 = v33 + 1;
    if (v33 >= *(v9 + 3) >> 1)
    {
      sub_268CA94F4();
      v9 = v90;
    }

    *(v9 + 2) = v34;
    v35 = v9 + 32;
    v36 = &v9[16 * v33 + 32];
    *v36 = v10;
    *(v36 + 1) = v8;
    v106 = *a1;
    if (!*a1)
    {
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      return;
    }

    if (v33)
    {
      break;
    }

LABEL_83:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_95;
    }
  }

  while (1)
  {
    v37 = v34 - 1;
    v38 = &v35[16 * v34 - 16];
    v39 = &v9[16 * v34];
    if (v34 >= 4)
    {
      v44 = &v35[16 * v34];
      v45 = *(v44 - 8);
      v46 = *(v44 - 7);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_116;
      }

      v49 = *(v44 - 6);
      v48 = *(v44 - 5);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_117;
      }

      v51 = *(v39 + 1);
      v52 = v51 - *v39;
      if (__OFSUB__(v51, *v39))
      {
        goto LABEL_119;
      }

      v50 = __OFADD__(v42, v52);
      v53 = v42 + v52;
      if (v50)
      {
        goto LABEL_122;
      }

      if (v53 >= v47)
      {
        v67 = *v38;
        v66 = *(v38 + 1);
        v50 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v50)
        {
          goto LABEL_127;
        }

        if (v42 < v68)
        {
          v37 = v34 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_54;
    }

    if (v34 == 3)
    {
      v40 = *(v9 + 4);
      v41 = *(v9 + 5);
      v50 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      v43 = v50;
LABEL_54:
      if (v43)
      {
        goto LABEL_118;
      }

      v55 = *v39;
      v54 = *(v39 + 1);
      v56 = __OFSUB__(v54, v55);
      v57 = v54 - v55;
      v58 = v56;
      if (v56)
      {
        goto LABEL_121;
      }

      v59 = *(v38 + 1);
      v60 = v59 - *v38;
      if (__OFSUB__(v59, *v38))
      {
        goto LABEL_124;
      }

      if (__OFADD__(v57, v60))
      {
        goto LABEL_126;
      }

      if (v57 + v60 >= v42)
      {
        if (v42 < v60)
        {
          v37 = v34 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_69;
    }

    if (v34 < 2)
    {
      goto LABEL_120;
    }

    v62 = *v39;
    v61 = *(v39 + 1);
    v50 = __OFSUB__(v61, v62);
    v57 = v61 - v62;
    v58 = v50;
LABEL_69:
    if (v58)
    {
      goto LABEL_123;
    }

    v64 = *v38;
    v63 = *(v38 + 1);
    v50 = __OFSUB__(v63, v64);
    v65 = v63 - v64;
    if (v50)
    {
      goto LABEL_125;
    }

    if (v65 < v57)
    {
      goto LABEL_83;
    }

LABEL_76:
    if (v37 - 1 >= v34)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_134;
    }

    v69 = &v35[16 * v37 - 16];
    v70 = *v69;
    v71 = v37;
    v72 = &v35[16 * v37];
    v73 = *(v72 + 1);
    sub_268CB6AA4((*a3 + 8 * *v69), (*a3 + 8 * *v72), (*a3 + 8 * v73), v106, a5);
    if (v6)
    {
      goto LABEL_105;
    }

    if (v73 < v70)
    {
      goto LABEL_110;
    }

    v108 = 0;
    v6 = v35;
    v74 = v8;
    v75 = v9;
    v9 = *(v9 + 2);
    if (v71 > v9)
    {
      goto LABEL_111;
    }

    *v69 = v70;
    *(v69 + 1) = v73;
    if (v71 >= v9)
    {
      goto LABEL_112;
    }

    v34 = (v9 - 1);
    sub_268CAA38C(v72 + 16, &v9[-v71 - 1], v72);
    *(v75 + 2) = v9 - 1;
    v76 = v9 > 2;
    v9 = v75;
    v8 = v74;
    v35 = v6;
    v6 = 0;
    if (!v76)
    {
      goto LABEL_83;
    }
  }

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
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  v9 = sub_268CAA378(v9);
LABEL_97:
  v91 = v9 + 16;
  v92 = *(v9 + 2);
  while (v92 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_135;
    }

    v93 = v9;
    v94 = &v9[16 * v92];
    v9 = *v94;
    v95 = &v91[2 * v92];
    v96 = *(v95 + 1);
    sub_268CB6AA4((*a3 + 8 * *v94), (*a3 + 8 * *v95), (*a3 + 8 * v96), v108, a5);
    if (v6)
    {
      break;
    }

    if (v96 < v9)
    {
      goto LABEL_113;
    }

    if (v92 - 2 >= *v91)
    {
      goto LABEL_114;
    }

    *v94 = v9;
    *(v94 + 1) = v96;
    v97 = *v91 - v92;
    if (*v91 < v92)
    {
      goto LABEL_115;
    }

    v92 = *v91 - 1;
    sub_268CAA38C(v95 + 16, v97, v95);
    *v91 = v92;
    v9 = v93;
  }

LABEL_105:
}

uint64_t sub_268CB6AA4(char *a1, char *a2, id *a3, char *a4, uint64_t (*a5)(id, id))
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_268CA9820(a1, (a2 - a1) / 8, a4);
    v11 = a4;
    v12 = &a4[8 * v8];
    for (i = v12; ; v12 = i)
    {
      if (v11 >= v12 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_29;
      }

      v14 = v5;
      v15 = v7;
      v16 = v6;
      v17 = v11;
      v18 = *v11;
      v19 = *v6;
      v20 = v18;
      v21 = a5(v19, v20);
      if (v55)
      {

        v45 = (i - v17) / 8;
        if (v15 < v17 || v15 >= &v17[v45])
        {
          v43 = 8 * v45;
          v44 = v15;
          v11 = v17;
          goto LABEL_51;
        }

        if (v15 != v17)
        {
          v43 = 8 * v45;
          v44 = v15;
          v11 = v17;
LABEL_51:
          memmove(v44, v11, v43);
        }

        return 1;
      }

      v22 = v21;

      if ((v22 & 1) == 0)
      {
        break;
      }

      v23 = v16;
      v6 = v16 + 1;
      v11 = v17;
      if (v15 != v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 = v15 + 8;
      v5 = v14;
    }

    v23 = v17;
    v11 = v17 + 1;
    v6 = v16;
    if (v15 == v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v15 = *v23;
    goto LABEL_13;
  }

  sub_268CA9820(a2, (a3 - a2) / 8, a4);
  v12 = &a4[8 * v9];
  v50 = v7;
  v51 = a4;
  v25 = -a4;
  v49 = -a4;
LABEL_15:
  v26 = v6 - 1;
  --v5;
  v27 = &v12[v25];
  while (1)
  {
    if (v12 <= v51 || v6 <= v7)
    {
      v11 = v51;
LABEL_29:
      v41 = (v12 - v11) / 8;
      if (v6 < v11 || v6 >= &v11[v41])
      {
        v43 = 8 * v41;
        v44 = v6;
        goto LABEL_51;
      }

      if (v6 != v11)
      {
        v43 = 8 * v41;
        v44 = v6;
        goto LABEL_51;
      }

      return 1;
    }

    v53 = v27;
    v29 = v6;
    v30 = v12;
    v32 = (v12 - 8);
    v31 = *(v12 - 1);
    v33 = v26;
    v34 = *v26;
    v35 = v31;
    v36 = v34;
    v37 = a5(v35, v36);

    if (v55)
    {
      break;
    }

    v6 = v29;
    v55 = 0;
    v38 = (v5 + 1);
    if (v37)
    {
      v39 = v38 == v29;
      v40 = v33;
      v6 = v33;
      v25 = v49;
      v7 = v50;
      v12 = v30;
      if (!v39)
      {
        *v5 = *v40;
        v25 = v49;
        v6 = v40;
      }

      goto LABEL_15;
    }

    v26 = v33;
    if (v30 != v38)
    {
      *v5 = *v32;
    }

    --v5;
    v27 = v53 - 8;
    v12 = v32;
    v7 = v50;
  }

  v11 = v51;
  v44 = v29;
  v47 = v29 < v51 || v29 >= &v51[v53 / 8];
  if (v47 || v29 != v51)
  {
    v43 = 8 * (v53 / 8);
    goto LABEL_51;
  }

  return 1;
}

uint64_t sub_268CB6DE0(uint64_t a1, uint64_t a2)
{
  v5 = sub_268CB7930();
  OUTLINED_FUNCTION_9_1(v5);
  return sub_268CB5D3C(a1, a2, v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80))) & 1;
}

uint64_t sub_268CB6E5C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_268CB7D50();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_268CB7CE0();
}

uint64_t sub_268CB6EC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2_4(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}