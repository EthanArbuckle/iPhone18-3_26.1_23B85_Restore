uint64_t sub_1BF088D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v13, v13 + *(*(v16 - 8) + 64), v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

uint64_t sub_1BF088E48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BF0E5E94(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1BF088E90@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  result = sub_1BF0E5EAC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1BF088ED8@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_1BF0E5EC4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1BF088F3C(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v4 = sub_1BF0E41C0(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t UUID.write(to:)()
{
  v7 = *MEMORY[0x1E69E9840];
  v6[0] = sub_1BF1794DC();
  v6[1] = v0;
  v1 = sub_1BF088784(v6, &v7);
  v3 = v2;
  sub_1BF17939C();
  result = sub_1BF014E18(v1, v3);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1BF089038()
{
  result = qword_1EBDCB6E8;
  if (!qword_1EBDCB6E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBDCB6E8);
  }

  return result;
}

uint64_t sub_1BF089094(uint64_t a1)
{
  sub_1BF0890F0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BF0890F0()
{
  if (!qword_1EBDCB6F0)
  {
    sub_1BF089038();
    v0 = sub_1BF17AE6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDCB6F0);
    }
  }
}

uint64_t sub_1BF089148(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1BF014E18(v6, v5);
      *v4 = xmmword_1BF17EBD0;
      sub_1BF014E18(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (sub_1BF178F3C() && __OFSUB__(v6, sub_1BF178F5C()))
      {
        goto LABEL_24;
      }

      v13 = sub_1BF178F6C();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1BF178F1C();

      v11 = v16;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_1BF089570(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1BF014E18(v6, v5);
      v20 = v6;
      v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_1BF17EBD0;
      sub_1BF014E18(0, 0xC000000000000000);
      sub_1BF17925C();
      v6 = v20;
      v9 = sub_1BF089570(*(v20 + 16), *(v20 + 24), a1);
      if (v2)
      {
        v10 = v21 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v21 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

LABEL_21:
      v17 = *MEMORY[0x1E69E9840];
      return v3;
    case 3uLL:
      memset(v22, 0, 15);
      a1(&v20, v22, v22);
      if (!v2)
      {
        v3 = v20;
      }

      goto LABEL_21;
    default:
      v3 = v6 >> 8;
      sub_1BF014E18(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        v3 = v20;
      }

      v8 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v4 = v22[0];
      v4[1] = v8;
      goto LABEL_21;
  }
}

void *sub_1BF08950C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1BF089570(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1BF178F3C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1BF178F5C();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1BF178F4C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1BF089624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1BF17924C();
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1BF178F6C();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_1BF178F2C();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1BF1792CC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1BF0896EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_1BF08950C(sub_1BF089894, v5, a1, a2);
}

uint64_t sub_1BF089740@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1BF17924C();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1BFB51040]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1BFB51060]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1BF0897B8(uint64_t result)
{
  if (result)
  {
    result = sub_1BF17B1FC();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1BF089800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_1BF0896EC(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1BF089854@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  result = sub_1BF0897B8(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
  }

  return result;
}

uint64_t sub_1BF0898CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1BF014CA8();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v7;
}

uint64_t sub_1BF089924(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1BF08220C();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_12(v2);
}

uint64_t SingletonPool.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t SingletonPool.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_1BF0899EC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF089A3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1BF089A90(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_1BF089AC0()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_6_8();
  sub_1BF0491C4(0, v9, v10, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_68(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_115(v15, v23);
  v16 = sub_1BF17A77C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v16);

  if (EnumTagSinglePayload == 1)
  {
    sub_1BF00CAB0(v0);
  }

  else
  {
    sub_1BF17A76C();
    OUTLINED_FUNCTION_20(v16);
    (*(v18 + 8))(v0, v16);
  }

  v20 = *(v2 + 16);
  v19 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (!v20)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1BF00CAB0(v6);
    OUTLINED_FUNCTION_58();
    v22 = swift_allocObject();
    *(v22 + 16) = v4;
    *(v22 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1BF17A6AC();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1BF17A16C();
  OUTLINED_FUNCTION_58();
  v21 = swift_allocObject();
  *(v21 + 16) = v4;
  *(v21 + 24) = v2;

  swift_task_create();

  sub_1BF00CAB0(v6);

LABEL_9:
  OUTLINED_FUNCTION_26_2();
}

void sub_1BF089D40()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_6_8();
  sub_1BF0491C4(0, v9, v10, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_68(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_115(v15, v23);
  v16 = sub_1BF17A77C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v16);

  if (EnumTagSinglePayload == 1)
  {
    sub_1BF00CAB0(v0);
  }

  else
  {
    sub_1BF17A76C();
    OUTLINED_FUNCTION_20(v16);
    (*(v18 + 8))(v0, v16);
  }

  v20 = *(v2 + 16);
  v19 = *(v2 + 24);
  swift_unknownObjectRetain();

  if (!v20)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1BF00CAB0(v6);
    OUTLINED_FUNCTION_58();
    v22 = swift_allocObject();
    *(v22 + 16) = v4;
    *(v22 + 24) = v2;
    OUTLINED_FUNCTION_52_1(&qword_1EBDCB708, MEMORY[0x1E69E7CA8]);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1BF17A6AC();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1BF17A16C();
  OUTLINED_FUNCTION_58();
  v21 = swift_allocObject();
  *(v21 + 16) = v4;
  *(v21 + 24) = v2;
  OUTLINED_FUNCTION_52_1(&qword_1EBDCB708, MEMORY[0x1E69E7CA8]);

  swift_task_create();
  OUTLINED_FUNCTION_66();

  sub_1BF00CAB0(v6);

LABEL_9:
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF089FE0@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v30 = a5;
  v31 = a2;
  v32 = a1;
  v29 = *(a3 - 8);
  v10 = *(v29 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v26);
  if (__swift_getEnumTagSinglePayload(v24, 1, v15) == 1)
  {
    return __swift_storeEnumTagSinglePayload(a6, 1, 1, a4);
  }

  (*(v16 + 32))(v20, v24, v15);
  v32(v20, v13);
  result = (*(v16 + 8))(v20, v15);
  if (v6)
  {
    return (*(v29 + 32))(v30, v13, a3);
  }

  return result;
}

uint64_t static PromiseError.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_51;
    }

    v21 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v9 = sub_1BF17B86C();
      v23 = OUTLINED_FUNCTION_41_0();
      v25 = OUTLINED_FUNCTION_28_2(v23, v24, 0);
      v27 = OUTLINED_FUNCTION_28_2(v25, v26, 0);
      sub_1BF08A4A8(v27, v28, 0);
      v18 = OUTLINED_FUNCTION_41_0();
      v20 = 0;
      goto LABEL_15;
    }

    v70 = OUTLINED_FUNCTION_28_2(v21, v2, 0);
    v72 = OUTLINED_FUNCTION_28_2(v70, v71, 0);
    sub_1BF08A4A8(v72, v73, 0);
    v34 = OUTLINED_FUNCTION_31_1();
    v57 = 0;
LABEL_54:
    sub_1BF08A4A8(v34, v56, v57);
    return 1;
  }

  if (v4 != 1)
  {
    v30 = *a1;
    switch(v3)
    {
      case 1:
        if (v7 != 2 || v6 != 1 || v5 != 0)
        {
          goto LABEL_51;
        }

        v74 = OUTLINED_FUNCTION_31_1();
        sub_1BF08A4A8(v74, v75, 2u);
        v35 = 1;
        v45 = 1;
        v46 = 0;
        v47 = 2;
        goto LABEL_24;
      case 2:
        if (v7 != 2 || v6 != 2 || v5 != 0)
        {
          goto LABEL_51;
        }

        v50 = OUTLINED_FUNCTION_31_1();
        sub_1BF08A4A8(v50, v51, 2u);
        v34 = 2;
        break;
      case 3:
        if (v7 != 2 || v6 != 3 || v5 != 0)
        {
          goto LABEL_51;
        }

        v54 = OUTLINED_FUNCTION_31_1();
        sub_1BF08A4A8(v54, v55, 2u);
        v34 = 3;
        break;
      default:
        if (v7 != 2 || (v5 | v6) != 0)
        {
          goto LABEL_51;
        }

        v32 = OUTLINED_FUNCTION_31_1();
        sub_1BF08A4A8(v32, v33, 2u);
        v34 = 0;
        break;
    }

    v56 = 0;
    v57 = 2;
    goto LABEL_54;
  }

  if (v7 != 1)
  {
LABEL_51:
    v60 = OUTLINED_FUNCTION_20_3();
    v63 = OUTLINED_FUNCTION_28_2(v60, v61, v62);
    v65 = OUTLINED_FUNCTION_28_2(v63, v64, v4);
    sub_1BF08A4A8(v65, v66, v4);
    v67 = OUTLINED_FUNCTION_20_3();
    sub_1BF08A4A8(v67, v68, v69);
    return 0;
  }

  if (v3 != v6 || v2 != v5)
  {
    OUTLINED_FUNCTION_31_1();
    v9 = sub_1BF17B86C();
    v10 = OUTLINED_FUNCTION_41_0();
    sub_1BF08A490(v10, v11, 1u);
    v12 = OUTLINED_FUNCTION_24_5();
    sub_1BF08A490(v12, v13, v14);
    v15 = OUTLINED_FUNCTION_24_5();
    sub_1BF08A4A8(v15, v16, v17);
    v18 = OUTLINED_FUNCTION_41_0();
    v20 = 1;
LABEL_15:
    sub_1BF08A4A8(v18, v19, v20);
    return v9 & 1;
  }

  v35 = 1;
  v36 = OUTLINED_FUNCTION_24_5();
  sub_1BF08A490(v36, v37, v38);
  v39 = OUTLINED_FUNCTION_24_5();
  sub_1BF08A490(v39, v40, v41);
  v42 = OUTLINED_FUNCTION_24_5();
  sub_1BF08A4A8(v42, v43, v44);
  v45 = OUTLINED_FUNCTION_24_5();
LABEL_24:
  sub_1BF08A4A8(v45, v46, v47);
  return v35;
}

uint64_t sub_1BF08A490(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  return result;
}

uint64_t sub_1BF08A4A8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t Promise.__allocating_init(error:)()
{
  OUTLINED_FUNCTION_19();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_66();
  Promise.init(error:)(v1);
  return v0;
}

uint64_t Promise.init(error:)(uint64_t a1)
{
  OUTLINED_FUNCTION_29();
  v4 = *(v3 + 80);
  type metadata accessor for Seal();
  OUTLINED_FUNCTION_110();
  v5 = OUTLINED_FUNCTION_87();
  v6 = OUTLINED_FUNCTION_120(v5);
  *(v1 + 16) = sub_1BF0EEF90(v6, a1);
  return v1;
}

uint64_t sub_1BF08A5A8()
{
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_110();
  v2 = OUTLINED_FUNCTION_87();
  v3 = OUTLINED_FUNCTION_120(v2);
  OUTLINED_FUNCTION_7_6();
  sub_1BF0035CC(0, v4, v5, v6);
  v7 = swift_allocObject();
  v8 = OUTLINED_FUNCTION_65_0(v7, MEMORY[0x1E69E7CC0]);
  *(v8 + 16) = v3;
  *(v8 + 24) = 0;
  *(v0 + 16) = v8;
  OUTLINED_FUNCTION_82_0();
  swift_retain_n();
  v1(sub_1BF0970D8, v0, sub_1BF0970E0, v0);
  OUTLINED_FUNCTION_82_0();

  return v0;
}

void sub_1BF08A678()
{
  OUTLINED_FUNCTION_68_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_6_8();
  sub_1BF0491C4(0, v8, v9, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_68(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v13);
  v31[0] = 0;
  type metadata accessor for UnfairLock();
  OUTLINED_FUNCTION_87();
  v14 = UnfairLock.init(options:)(v31);
  sub_1BF09683C();
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_65_0(v15, MEMORY[0x1E69E7CC0]);
  *(v16 + 16) = v14;
  *(v16 + 24) = 0;
  *(v7 + 16) = v16;
  OUTLINED_FUNCTION_58();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1BF0968B8;
  *(v17 + 24) = v7;

  sub_1BF09693C(v5 + 72, &v29);
  if (v30)
  {
    sub_1BEFE87B0(&v29, v31);
    sub_1BF17A77C();
    OUTLINED_FUNCTION_83_0();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    sub_1BF0972D0(v31, &v29);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    sub_1BEFE87B0(&v29, (v22 + 4));
    v22[9] = v3;
    v22[10] = v1;
    v22[11] = sub_1BF096904;
    v22[12] = v17;
    v22[13] = sub_1BF0968C0;
    v22[14] = v7;
    OUTLINED_FUNCTION_81_0();
    swift_retain_n();
    v23 = OUTLINED_FUNCTION_41_0();
    sub_1BF014DC0(v23, v24);

    sub_1BF089AC0();

    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_81_0();
  }

  else
  {
    OUTLINED_FUNCTION_81_0();
    swift_retain_n();

    sub_1BF0969CC(&v29);
    v25 = *(v7 + 16);
    v26 = sub_1BF0FBF30(0, 0);
    v26();
    OUTLINED_FUNCTION_81_0();
  }

  v27 = OUTLINED_FUNCTION_41_0();
  sub_1BF014E18(v27, v28);
  OUTLINED_FUNCTION_55();
}

uint64_t sub_1BF08A914(void (*a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_110();
  v12 = OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_120(v12);
  OUTLINED_FUNCTION_7_6();
  sub_1BF0035CC(0, a3, a4, v13);
  OUTLINED_FUNCTION_50_0();
  v14 = swift_allocObject();
  *(v14 + 32) = MEMORY[0x1E69E7CC0];
  *(v14 + 40) = 0;
  *(v6 + 16) = OUTLINED_FUNCTION_64_0(v14);
  OUTLINED_FUNCTION_82_0();
  swift_retain_n();
  a1(a5, v6, a6, v6);
  OUTLINED_FUNCTION_82_0();

  return v6;
}

uint64_t sub_1BF08A9DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = sub_1BF0FBBA4();
  v3();
}

uint64_t sub_1BF08AA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v4 = *(a3 + 16);
  v5 = a4();
  v5();
}

uint64_t sub_1BF08AA98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = sub_1BF0FC114();
  v3();
}

uint64_t sub_1BF08AB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v4 = *(a2 + 16);
  v5 = a4(a1, a3);
  v5();
}

uint64_t sub_1BF08ABB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *(a2 + 16);
  v4 = a3();
  v4();
}

uint64_t sub_1BF08AD20()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_49_0();
  if (v5)
  {
    v6 = v4;
  }

  else
  {
    *(v3 + 24) = 1;
    v7 = v1;
    v6 = v3;
    v2(v1, 0, 1);
    OUTLINED_FUNCTION_126();
  }

  os_unfair_lock_unlock(*(v0 + 16));
  return v6;
}

void sub_1BF08ADF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_32();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_1BF09704C(0, v27, v25);
  OUTLINED_FUNCTION_12(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v34);
  v36 = (&a9 - v35);
  v37 = *(v20 + 16);
  UnfairLock.lock()();
  if ((*(v20 + 24) & 1) == 0)
  {
    *(v20 + 24) = 1;
    *v36 = v30;
    swift_storeEnumTagMultiPayload();
    v38 = v30;
    v24(v36);
    OUTLINED_FUNCTION_126();
    sub_1BF0967E8(v36, v28, v26);
  }

  os_unfair_lock_unlock(*(v37 + 16));
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF08AF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void (*)(uint64_t a1), void *), uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a7;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = a3;
  v13[6] = a4;

  a5(sub_1BF097950, v13);
}

void sub_1BF08B014(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6)
{
  v10 = *(a6 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Result();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v20 - v16);
  (*(v18 + 16))(&v20 - v16, a1, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v17;
    a4(*v17);
  }

  else
  {
    (*(v10 + 32))(v13, v17, a6);
    a2(v13);
    (*(v10 + 8))(v13, a6);
  }
}

uint64_t Promise.__allocating_init(_:scheduleOn:)()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_86_0();
  v2 = Promise.__allocating_init(resolver:)();
  v0(v1);

  return v2;
}

uint64_t sub_1BF08B258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v13 = *a7;
  v14 = *MEMORY[0x1E69E7D40];
  v15 = swift_allocObject();
  v15[2] = *((v14 & v13) + 0x50);
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a5;
  v15[6] = a6;
  v15[7] = a3;
  v15[8] = a4;

  return sub_1BF043D04(sub_1BF09791C, v15);
}

void sub_1BF08B330(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void), uint64_t a5, void (*a6)(id), uint64_t a7, uint64_t a8)
{
  v23 = a4;
  v24 = a6;
  v11 = *(a8 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Result();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v23 - v17);
  (*(v19 + 16))(&v23 - v17, a1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v18;
    v20 = v26;
    v21 = v26;
    sub_1BEFE6EA8(0, &qword_1ED8EFD30);
    if (!swift_dynamicCast() || (v25 & 1) != 0)
    {

      v24(v20);
      v22 = v20;
    }

    else
    {

      v23();
      v22 = v26;
    }
  }

  else
  {
    (*(v11 + 32))(v14, v18, a8);
    a2(v14);
    (*(v11 + 8))(v14, a8);
  }
}

uint64_t sub_1BF08B580()
{
  v1 = *(v0 + 88);
  *(v0 + 16) = v1;
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = v1;
  sub_1BEFE6EA8(0, &qword_1ED8EFD30);
  OUTLINED_FUNCTION_36();
  v5 = swift_dynamicCast();
  v6 = *(v0 + 88);
  if (v5)
  {
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = *(v0 + 24);
    v10 = *(v0 + 32);

    v11 = *(v9 + 16);
    v12 = sub_1BF0EEFD4();
    v12();

    v13 = *(v8 + 8);
    v14 = OUTLINED_FUNCTION_125_0();
    v15(v14);
    v16 = *(v0 + 16);
  }

  else
  {
    v17 = *(v0 + 24);

    v18 = *(v17 + 16);
    v19 = sub_1BF02DA9C(v6);
    v19();

    v16 = v6;
  }

  v20 = *(v0 + 72);
  v21 = *(v0 + 48);

  OUTLINED_FUNCTION_9();

  return v22();
}

uint64_t sub_1BF08B728()
{
  OUTLINED_FUNCTION_17_3();
  sub_1BF0491C4(0, &qword_1ED8E9DD0, type metadata accessor for AuthToken, type metadata accessor for Seal);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_21_4();
  *(v0 + 16) = sub_1BF094318(v1);
  v5 = OUTLINED_FUNCTION_4_9();
  sub_1BF0491C4(v5, v6, type metadata accessor for AuthToken, v7);
  OUTLINED_FUNCTION_27();
  swift_allocObject();
  OUTLINED_FUNCTION_58_1();

  sub_1BEFF7020();
  OUTLINED_FUNCTION_42();
  swift_unownedRetainStrong();
  OUTLINED_FUNCTION_41_1();

  swift_unownedRelease();
  return v0;
}

uint64_t sub_1BF08B840()
{
  OUTLINED_FUNCTION_17_3();
  sub_1BF0491C4(0, &qword_1EBDCAA08, sub_1BF096F0C, type metadata accessor for Seal);
  v2 = swift_allocObject();
  v3 = OUTLINED_FUNCTION_65_0(v2, MEMORY[0x1E69E7CC0]);
  *(v3 + 16) = v1;
  *(v3 + 24) = 0;
  *(v0 + 16) = v3;
  v4 = OUTLINED_FUNCTION_4_9();
  sub_1BF0491C4(v4, v5, sub_1BF096F0C, v6);
  OUTLINED_FUNCTION_27();
  swift_allocObject();
  OUTLINED_FUNCTION_58_1();

  sub_1BEFF7020();
  OUTLINED_FUNCTION_42();
  swift_unownedRetainStrong();
  OUTLINED_FUNCTION_41_1();

  swift_unownedRelease();
  return v0;
}

uint64_t sub_1BF08B944()
{
  OUTLINED_FUNCTION_17_3();
  v2 = MEMORY[0x1E6967EC8];
  sub_1BF0491C4(0, &qword_1EBDCAA18, MEMORY[0x1E6967EC8], type metadata accessor for Seal);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_75_0();
  *(v0 + 16) = sub_1BF094318(v1);
  v6 = OUTLINED_FUNCTION_4_9();
  sub_1BF0491C4(v6, v7, v2, v8);
  OUTLINED_FUNCTION_27();
  swift_allocObject();
  OUTLINED_FUNCTION_58_1();

  sub_1BEFF7020();
  OUTLINED_FUNCTION_42();
  swift_unownedRetainStrong();
  OUTLINED_FUNCTION_41_1();

  swift_unownedRelease();
  return v0;
}

uint64_t sub_1BF08BA5C()
{
  OUTLINED_FUNCTION_17_3();
  v2 = MEMORY[0x1E6968FB0];
  sub_1BF0491C4(0, &qword_1EBDCB718, MEMORY[0x1E6968FB0], type metadata accessor for Seal);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_74_0();
  *(v0 + 16) = sub_1BF094318(v1);
  v6 = OUTLINED_FUNCTION_4_9();
  sub_1BF0491C4(v6, v7, v2, v8);
  OUTLINED_FUNCTION_27();
  swift_allocObject();
  OUTLINED_FUNCTION_58_1();

  sub_1BEFF7020();
  OUTLINED_FUNCTION_42();
  swift_unownedRetainStrong();
  OUTLINED_FUNCTION_41_1();

  swift_unownedRelease();
  return v0;
}

uint64_t sub_1BF08BB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*a4 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - v8;
  v10(v7);
  DeferredPromise.resolve(_:)();
  return (*(v5 + 8))(v9, v4);
}

void sub_1BF08BCF4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = *(*a3 + 80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    a4(a1, Strong);
    DeferredPromise.resolve(_:)();
    swift_unknownObjectRelease();
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    sub_1BF095D40();
    v12 = swift_allocError();
    *v13 = xmmword_1BF17FB20;
    *(v13 + 16) = 2;
    DeferredPromise.reject(_:)();
  }
}

uint64_t sub_1BF08BF14(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a2() + 16);
  v3 = qword_1ED8F0210;

  if (v3 != -1)
  {
    swift_once();
  }

  sub_1BF08C0FC();
  sub_1BF08C13C();
  sub_1BF08C17C();
  sub_1BF005910();
  v5 = v4;

  v5(v6);
}

void sub_1BF08C1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = *(a4(a1, Strong) + 16);
    v14 = qword_1ED8F0210;

    if (v14 != -1)
    {
      swift_once();
    }

    sub_1BF08C42C(a3, a6);
    sub_1BF08C498(a3, a6);
    sub_1BF08C504(a3, a6);
    sub_1BF005910();
    v16 = v15;

    v16(v17);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1BF095D40();
    v11 = swift_allocError();
    *v12 = xmmword_1BF17FB20;
    *(v12 + 16) = 2;
    DeferredPromise.reject(_:)();
  }
}

uint64_t (*sub_1BF08C42C(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return sub_1BF0979F4;
}

uint64_t (*sub_1BF08C498(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return sub_1BF02E1A8;
}

uint64_t (*sub_1BF08C504(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return sub_1BF05E03C;
}

uint64_t sub_1BF08C5F4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a3(a1, result);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BF08C6FC(void *a1, void (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, void *), void (*a7)(uint64_t, uint64_t))
{
  v8 = v7;
  v9 = *(v7 + 16);
  v10 = sub_1BF08C744(a1, a2, a3, a4, a5, a6, a7);
  v10();

  return v8;
}

void (*sub_1BF08C744(void *a1, void (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, void *), void (*a7)(uint64_t, uint64_t)))()
{
  v13 = *(v7 + 16);
  UnfairLock.lock()();
  OUTLINED_FUNCTION_14_0();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v15 = a1;

  v16 = a6(a5, v14);
  v18 = v17;
  v19 = ~v17;

  os_unfair_lock_unlock(*(v13 + 16));
  if (!v19)
  {
    return nullsub_1;
  }

  v20 = sub_1BF006210(v15, a2, a3);
  a7(v16, v18);
  return v20;
}

uint64_t (*sub_1BF08C8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  return sub_1BF0979E4;
}

uint64_t (*sub_1BF08C948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  return sub_1BF097A0C;
}

void sub_1BF08C9C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26[1] = v26;
    v15 = MEMORY[0x1EEE9AC00](Strong);
    v19[2] = a6;
    v20 = *(*(v13 + 80) + 16);
    v21 = a7;
    v22 = a8;
    v23 = a4;
    v24 = a5;
    v25 = v15;
    v16 = sub_1BEFE6EA8(0, &qword_1ED8EFD30);
    v27 = sub_1BF03CFB4(sub_1BF09788C, v19, a6, v20, v16, a8, MEMORY[0x1E69E7288], &v27);
    DeferredPromise.resolve(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1BF095D40();
    v17 = swift_allocError();
    *v18 = xmmword_1BF17FB20;
    *(v18 + 16) = 2;
    DeferredPromise.reject(_:)();
  }
}

void Promise<A>.flatMap<A>(on:closure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_99();
  v16 = *v12;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_12_1();
  type metadata accessor for DeferredPromise();
  v17 = *(v12[2] + 16);

  v18 = sub_1BF0057E8();
  v19 = *(v16 + 80);
  OUTLINED_FUNCTION_61_0();
  sub_1BF08CDA0(v20, v21, v22, v23, v24);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_61_0();
  sub_1BF08CE28(v25, v26, v27, v28, v29);
  OUTLINED_FUNCTION_69();
  v30 = swift_allocObject();
  v30[2] = v19;
  v30[3] = v15;
  v30[4] = v14;
  v30[5] = v13;
  v30[6] = v18;
  v30[7] = a11;
  v30[8] = a12;

  sub_1BF005910();
  v32 = v31;

  v32(v33);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  if (*(v18 + 16))
  {
    v34 = *(v18 + 16);

    OUTLINED_FUNCTION_94();
  }

  else
  {
    __break(1u);
  }
}

void (*sub_1BF08CDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;

  return sub_1BF0979F0;
}

uint64_t (*sub_1BF08CE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;

  return sub_1BF097A18;
}

void Promise<A>.flatMap<A, B>(on:disposeOn:closure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_105();
  v19 = *v14;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_12_1();
  type metadata accessor for DeferredPromise();
  v20 = *(v14[2] + 16);

  v21 = sub_1BF0057E8();
  v22 = *(v19 + 80);
  OUTLINED_FUNCTION_26_3();
  sub_1BF08D074(v23, v24, v25, v26, v27, v28);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_26_3();
  sub_1BF08D108(v29, v30, v31, v32, v33, v34);
  OUTLINED_FUNCTION_27();
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  v36[2] = v22;
  v36[3] = v18;
  v36[4] = v17;
  v36[5] = v16;
  v36[6] = v15;
  v36[7] = v35;
  v36[8] = v21;
  v36[9] = a13;
  v36[10] = a14;

  sub_1BF005910();
  v38 = v37;

  v38(v39);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  if (*(v21 + 16))
  {
    v40 = *(v21 + 16);

    OUTLINED_FUNCTION_132();
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*sub_1BF08D074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v12[7] = a1;

  return sub_1BF0979EC;
}

uint64_t (*sub_1BF08D108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v12[7] = a1;

  return sub_1BF097A14;
}

uint64_t (*sub_1BF08D200(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF0979E8;
}

uint64_t (*sub_1BF08D274(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF097A10;
}

uint64_t sub_1BF08D2E8(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*a2 + 80) + 16);
  sub_1BF17A38C();
  DeferredPromise.resolve(_:)();
}

void sub_1BF08D46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t (*a31)(uint64_t))
{
  OUTLINED_FUNCTION_133();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v50 = v38;
  v51 = v39;
  v40 = *v31;
  sub_1BF17A65C();
  OUTLINED_FUNCTION_12_1();
  type metadata accessor for DeferredPromise();
  v41 = *(v31[2] + 16);

  v42 = sub_1BF0057E8();
  v43 = *(v40 + 80);
  OUTLINED_FUNCTION_67_0();
  v33();
  v44 = OUTLINED_FUNCTION_36();
  v45 = a31(v44);
  OUTLINED_FUNCTION_27();
  v46 = swift_allocObject();
  OUTLINED_FUNCTION_128(v46);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_69();
  v47 = swift_allocObject();
  v47[2] = v43;
  v47[3] = v37;
  v47[4] = v35;
  v47[5] = v40;
  v47[6] = v42;
  v47[7] = v50;
  v47[8] = v51;

  sub_1BF005910();
  OUTLINED_FUNCTION_98();

  v45(v48);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  if (*(v42 + 16))
  {
    v49 = *(v42 + 16);

    OUTLINED_FUNCTION_132();
  }

  else
  {
    __break(1u);
  }
}

void (*sub_1BF08D614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  return sub_1BF097868;
}

uint64_t (*sub_1BF08D694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  return sub_1BF097844;
}

void sub_1BF08D714(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    MEMORY[0x1EEE9AC00](Strong);
    v7 = *(*(v3 + 80) + 16);
    sub_1BF17A38C();
    DeferredPromise.resolve(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1BF095D40();
    v5 = swift_allocError();
    *v6 = xmmword_1BF17FB20;
    *(v6 + 16) = 2;
    DeferredPromise.reject(_:)();
  }
}

uint64_t (*sub_1BF08D9A4(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF0979E8;
}

uint64_t (*sub_1BF08DA18(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF097A10;
}

uint64_t sub_1BF08DA8C(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - v5;
  sub_1BF17A3FC();
  DeferredPromise.resolve(_:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t (*sub_1BF08DC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  return sub_1BF0979E4;
}

uint64_t (*sub_1BF08DD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  return sub_1BF097A0C;
}

void sub_1BF08DD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(*a3 + 80);
  v21[0] = *(v12 - 8);
  v13 = *(v21[0] + 64);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v21 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21[1] = v21;
    v17 = MEMORY[0x1EEE9AC00](Strong);
    v21[-8] = a7;
    v21[-7] = v12;
    v21[-6] = a8;
    v21[-5] = v18;
    v21[-4] = a5;
    v21[-3] = a6;
    v21[-2] = v17;
    sub_1BF17A3FC();
    DeferredPromise.resolve(_:)();
    swift_unknownObjectRelease();
    (*(v21[0] + 8))(v15, v12);
  }

  else
  {
    sub_1BF095D40();
    v19 = swift_allocError();
    *v20 = xmmword_1BF17FB20;
    *(v20 + 16) = 2;
    DeferredPromise.reject(_:)();
  }
}

void sub_1BF08E08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(void), uint64_t (*a22)(uint64_t), uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_32();
  v26 = v25;
  v28 = v27;
  v67 = v29;
  v68 = v30;
  v63 = v32;
  v64 = v31;
  v69 = v33;
  v70 = a24;
  v71 = v34;
  v65 = a23;
  v35 = *v24;
  OUTLINED_FUNCTION_2_3();
  v37 = v36;
  v39 = *(v38 + 64);
  v60 = a22;
  MEMORY[0x1EEE9AC00](v40);
  v41 = (&v59 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for DeferredPromise();
  v66 = v24[2];
  v42 = *(v66 + 16);

  v43 = sub_1BF0057E8();
  v44 = *(v35 + 80);
  OUTLINED_FUNCTION_67_0();
  v45 = a21();
  v61 = v46;
  v62 = v45;
  v47 = OUTLINED_FUNCTION_36();
  v48 = v60(v47);
  v59 = v49;
  v60 = v48;
  OUTLINED_FUNCTION_27();
  v50 = swift_allocObject();
  OUTLINED_FUNCTION_128(v50);
  swift_unknownObjectWeakInit();
  (*(v37 + 16))(v41, v64, v28);
  v51 = (*(v37 + 80) + 64) & ~*(v37 + 80);
  v52 = (v39 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  *(v53 + 2) = v44;
  *(v53 + 3) = v28;
  v54 = v71;
  *(v53 + 4) = v26;
  *(v53 + 5) = v54;
  *(v53 + 6) = a21;
  *(v53 + 7) = v43;
  (*(v37 + 32))(&v53[v51], v41, v28);
  v55 = &v53[v52];
  v56 = v68;
  *v55 = v67;
  *(v55 + 1) = v56;

  sub_1BF005910();
  OUTLINED_FUNCTION_98();

  v41(v57);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  if (*(v43 + 16))
  {
    v58 = *(v43 + 16);

    OUTLINED_FUNCTION_26_2();
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*sub_1BF08E300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  return sub_1BF0979E4;
}

uint64_t (*sub_1BF08E380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  return sub_1BF097A0C;
}

void sub_1BF08E400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a5;
  v29 = a8;
  v12 = *(*a3 + 80);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v27 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v27[1] = a1;
    v22 = (*(v13 + 16))(v17, a4, v12);
    MEMORY[0x1EEE9AC00](v22);
    v27[-8] = a7;
    v27[-7] = v12;
    v23 = v28;
    v27[-6] = v29;
    v27[-5] = a9;
    v27[-4] = v23;
    v27[-3] = v24;
    v27[-2] = v21;
    sub_1BF17A3EC();
    DeferredPromise.resolve(_:)();
    swift_unknownObjectRelease();
    (*(v13 + 8))(v19, v12);
  }

  else
  {
    sub_1BF095D40();
    v25 = swift_allocError();
    *v26 = xmmword_1BF17FB20;
    *(v26 + 16) = 2;
    DeferredPromise.reject(_:)();
  }
}

void Promise<A>.unique<A>(on:uniqueBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_29();
  v17 = *(v16 + 80);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_12_1();
  type metadata accessor for DeferredPromise();
  v18 = *(*(v12 + 16) + 16);

  v19 = sub_1BF0057E8();
  OUTLINED_FUNCTION_61_0();
  sub_1BF08E854(v20, v21, v22, v23, v24);
  OUTLINED_FUNCTION_61_0();
  sub_1BF08E8DC(v25, v26, v27, v28, v29);
  OUTLINED_FUNCTION_69();
  v30 = swift_allocObject();
  v30[2] = v17;
  v30[3] = v15;
  v30[4] = v14;
  v30[5] = v13;
  v30[6] = v19;
  v30[7] = a11;
  v30[8] = a12;

  sub_1BF005910();
  v32 = v31;
  OUTLINED_FUNCTION_121();

  v32(v33);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  if (*(v19 + 16))
  {
    v34 = *(v19 + 16);

    OUTLINED_FUNCTION_94();
  }

  else
  {
    __break(1u);
  }
}

void (*sub_1BF08E854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;

  return sub_1BF097790;
}

uint64_t (*sub_1BF08E8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;

  return sub_1BF09776C;
}

uint64_t sub_1BF08E964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  a9(a3, a4, a5, a6, a7, a8);
  DeferredPromise.resolve(_:)();
}

void Promise<A>.unique<A, B>(on:disposeOn:uniqueBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(uint64_t))
{
  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_29();
  v21 = *(v20 + 80);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_12_1();
  type metadata accessor for DeferredPromise();
  v22 = *(*(v14 + 16) + 16);

  v23 = sub_1BF0057E8();
  OUTLINED_FUNCTION_26_3();
  sub_1BF08EC2C(v24, v25, v26, v27, v28, v29);
  OUTLINED_FUNCTION_26_3();
  sub_1BF08ECC0(v30, v31, v32, v33, v34, v35);
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_27();
  v36 = swift_allocObject();
  OUTLINED_FUNCTION_128(v36);
  swift_unknownObjectWeakInit();
  v37 = swift_allocObject();
  v37[2] = v21;
  v37[3] = v18;
  v37[4] = v17;
  v37[5] = v16;
  v37[6] = v15;
  v37[7] = v19;
  v37[8] = v23;
  v37[9] = a13;
  v37[10] = a14;

  sub_1BF005910();
  OUTLINED_FUNCTION_55_1();

  a14(v38);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  if (*(v23 + 16))
  {
    v39 = *(v23 + 16);

    OUTLINED_FUNCTION_132();
  }

  else
  {
    __break(1u);
  }
}

void (*sub_1BF08EC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v12[7] = a1;

  return sub_1BF097748;
}

uint64_t (*sub_1BF08ECC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))()
{
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v12[7] = a1;

  return sub_1BF097724;
}

void sub_1BF08ED54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v23 = MEMORY[0x1EEE9AC00](a23);
    v24(v23);
    DeferredPromise.resolve(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1BF095D40();
    v25 = swift_allocError();
    *v26 = xmmword_1BF17FB20;
    *(v26 + 16) = 2;
    DeferredPromise.reject(_:)();
  }

  OUTLINED_FUNCTION_26_2();
}

void Promise<A>.filter(on:closure:)()
{
  OUTLINED_FUNCTION_97_0();
  v1 = v0;
  v3 = v2;
  v11 = v4;
  OUTLINED_FUNCTION_29();
  v6 = *(v5 + 80);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_12_1();
  type metadata accessor for DeferredPromise();
  OUTLINED_FUNCTION_106();

  v7 = sub_1BF0057E8();
  sub_1BF08F0AC(v7, v6, v1);
  sub_1BF08F120(v7, v6, v1);
  OUTLINED_FUNCTION_46();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v1;
  v8[4] = v7;
  v8[5] = v11;
  v8[6] = v3;

  OUTLINED_FUNCTION_67_0();
  sub_1BF005910();
  OUTLINED_FUNCTION_98();

  v3(v9);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  if (*(v7 + 16))
  {
    v10 = *(v7 + 16);

    OUTLINED_FUNCTION_96();
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*sub_1BF08F0AC(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF0979E8;
}

uint64_t (*sub_1BF08F120(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF097A10;
}

uint64_t sub_1BF08F194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a5 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9[1] = sub_1BF17A3DC();
  DeferredPromise.resolve(_:)();
}

void Promise<A>.filter<A>(on:disposeOn:closure:)()
{
  OUTLINED_FUNCTION_95_0();
  v2 = v1;
  v4 = v3;
  v16 = v5;
  v17 = v6;
  OUTLINED_FUNCTION_29();
  v8 = *(v7 + 80);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_12_1();
  type metadata accessor for DeferredPromise();
  OUTLINED_FUNCTION_106();

  v9 = sub_1BF0057E8();
  sub_1BF08F4F0(v9, v8, v4, v2);
  sub_1BF08F570(v9, v8, v4, v2);
  OUTLINED_FUNCTION_27();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_128(v10);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_69();
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = v4;
  v11[4] = v2;
  v11[5] = v0;
  v11[6] = v9;
  v11[7] = v16;
  v11[8] = v17;

  sub_1BF005910();
  v13 = v12;
  OUTLINED_FUNCTION_121();

  v13(v14);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  if (*(v9 + 16))
  {
    v15 = *(v9 + 16);

    OUTLINED_FUNCTION_94();
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*sub_1BF08F4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  return sub_1BF0979E4;
}

uint64_t (*sub_1BF08F570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  return sub_1BF097A0C;
}

void sub_1BF08F5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a6 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = (*(v14 + 16))(v17, a1, a6);
    MEMORY[0x1EEE9AC00](v20);
    *(&v23 - 6) = a6;
    *(&v23 - 5) = a7;
    *(&v23 - 4) = a8;
    *(&v23 - 3) = a4;
    *(&v23 - 2) = a5;
    *(&v23 - 1) = v19;
    v23 = sub_1BF17A3DC();
    DeferredPromise.resolve(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1BF095D40();
    v21 = swift_allocError();
    *v22 = xmmword_1BF17FB20;
    *(v22 + 16) = 2;
    DeferredPromise.reject(_:)();
  }
}

uint64_t Promise<A>.flatten(on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_62_0();
  v7 = *v3;
  OUTLINED_FUNCTION_14_0();
  v8 = swift_allocObject();
  v8[2] = *(v7 + 80);
  v8[3] = v4;
  v8[4] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Promise<A>.flatMap<A>(on:closure:)(v5, sub_1BF095C7C, v8, AssociatedTypeWitness, v4, a3, v10, v11, v15, v16, v17, v18);
  v13 = v12;

  return v13;
}

uint64_t Promise.dictionaryOfPromises<A, B, C>(keys:)()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 80);
  v3 = v1[2];
  v2 = v1[3];
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_12_1();
  type metadata accessor for Promise();
  v4 = v1[4];
  sub_1BF179CEC();
  sub_1BF179E9C();
  sub_1BF17A3EC();
  return v6;
}

uint64_t sub_1BF08FA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a1;
  v23 = a5;
  v24 = a3;
  v7 = *(*a3 + 80);
  v8 = v7[2];
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v25 = &v22 - v13;
  v14 = *(v9 + 16);
  v14();
  (v14)(v12, a2, v8);
  v15 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a4;
  *(v16 + 3) = v8;
  v17 = v23;
  *(v16 + 4) = v7[3];
  *(v16 + 5) = v17;
  *(v16 + 6) = v7[4];
  (*(v9 + 32))(&v16[v15], v12, v8);
  sub_1BF17AE6C();
  v18 = sub_1BF007568();
  Promise.then<A>(on:closure:)();
  v20 = v19;

  v27 = v20;
  type metadata accessor for Promise();
  sub_1BF179E9C();
  return sub_1BF179EBC();
}

uint64_t delay(until:)(uint64_t a1)
{
  v5[2] = a1;
  v1 = MEMORY[0x1E69E7CA8];
  OUTLINED_FUNCTION_12_5();
  sub_1BF0035CC(0, v2, v1 + 8, v3);
  OUTLINED_FUNCTION_27();
  swift_allocObject();
  return sub_1BF08A914(sub_1BF095CBC, v5, &qword_1ED8ED8D0, v1 + 8, sub_1BF097A04, sub_1BF097614);
}

void sub_1BF08FD4C()
{
  OUTLINED_FUNCTION_32();
  v39 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_1BF179B5C();
  v6 = OUTLINED_FUNCTION_1(v5);
  v40 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v38 = sub_1BF179BBC();
  v13 = OUTLINED_FUNCTION_1(v38);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  v21 = sub_1BF179B6C();
  v22 = OUTLINED_FUNCTION_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_0();
  v29 = v28 - v27;
  OUTLINED_FUNCTION_58();
  v30 = swift_allocObject();
  *(v30 + 16) = v4;
  *(v30 + 24) = v2;
  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
  (*(v24 + 104))(v29, *MEMORY[0x1E69E7F98], v21);

  v31 = sub_1BF17ADAC();
  (*(v24 + 8))(v29, v21);
  OUTLINED_FUNCTION_58();
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1BF0004A8;
  *(v32 + 24) = v30;
  v41[4] = sub_1BF006170;
  v41[5] = v32;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 1107296256;
  v41[2] = sub_1BF0058CC;
  v41[3] = &block_descriptor_318;
  v33 = _Block_copy(v41);
  sub_1BF179B8C();
  OUTLINED_FUNCTION_48_1();
  sub_1BEFF7410(v34, v35);
  OUTLINED_FUNCTION_47_1();
  sub_1BF0491C4(0, v36, v37, MEMORY[0x1E69E62F8]);
  sub_1BF095E00();
  sub_1BF17B0BC();
  MEMORY[0x1BFB52B00](v39, v20, v12, v33);
  _Block_release(v33);

  (*(v40 + 8))(v12, v5);
  (*(v15 + 8))(v20, v38);

  OUTLINED_FUNCTION_26_2();
}

uint64_t delay<A>(until:queue:value:)()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_104();
  type metadata accessor for Promise();
  OUTLINED_FUNCTION_86_0();
  return Promise.__allocating_init(resolver:)();
}

uint64_t sub_1BF090120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a6;
  v32 = a5;
  v28 = a1;
  v11 = sub_1BF179B5C();
  v30 = *(v11 - 8);
  v12 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1BF179BBC();
  v15 = *(v29 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v29);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a8 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v22, a7, a8);
  v23 = (*(v20 + 80) + 40) & ~*(v20 + 80);
  v24 = swift_allocObject();
  v25 = v28;
  *(v24 + 2) = a8;
  *(v24 + 3) = v25;
  *(v24 + 4) = a2;
  (*(v20 + 32))(&v24[v23], v22, a8);
  aBlock[4] = sub_1BF00C0B8;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF0058CC;
  aBlock[3] = &block_descriptor_308;
  v26 = _Block_copy(aBlock);

  sub_1BF179B8C();
  v33 = MEMORY[0x1E69E7CC0];
  sub_1BEFF7410(&unk_1ED8EFBF0, MEMORY[0x1E69E7F60]);
  sub_1BF0491C4(0, &qword_1ED8EFBE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1BF095E00();
  sub_1BF17B0BC();
  MEMORY[0x1BFB52B00](v31, v19, v14, v26);
  _Block_release(v26);
  (*(v30 + 8))(v14, v11);
  (*(v15 + 8))(v19, v29);
}

void Promise.wait(until:with:)()
{
  OUTLINED_FUNCTION_32();
  v29 = v1;
  v31 = v2;
  v33 = v3;
  OUTLINED_FUNCTION_29();
  v5 = *(v4 + 80);
  v6 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1(v6);
  v28 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_63_0();
  v11 = swift_allocBox();
  v30 = v12;
  OUTLINED_FUNCTION_83_0();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v5);
  v16 = dispatch_semaphore_create(0);
  v34 = 1;
  v17 = type metadata accessor for UnfairLock();
  OUTLINED_FUNCTION_87();
  v18 = UnfairLock.init(options:)(&v34);
  OUTLINED_FUNCTION_14_0();
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = v18;
  v19[4] = v11;

  v32 = v11;

  v20 = sub_1BF007568();
  Promise.then<A>(on:closure:)();

  OUTLINED_FUNCTION_27();
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  v22 = qword_1ED8F0210;
  v23 = v16;
  if (v22 != -1)
  {
    OUTLINED_FUNCTION_1_10();
    swift_once();
  }

  sub_1BF08C6FC(off_1ED8F0218, sub_1BF095CF0, v21, &unk_1F3DB9378, sub_1BF0975C4, sub_1BF040820, sub_1BF043E18);

  v24 = sub_1BF17ADBC();
  v34 = v18;
  MEMORY[0x1EEE9AC00](v24);
  v27[2] = v5;
  v27[3] = v30;
  Lock.sync<A>(_:)(sub_1BF095D14, v27, v17, v6, &protocol witness table for UnfairLock);

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v5);
  v26 = *(v5 - 8);
  if (EnumTagSinglePayload == 1)
  {
    (*(v26 + 16))(v33, v29, v5);
    if (__swift_getEnumTagSinglePayload(v0, 1, v5) != 1)
    {
      (*(v28 + 8))(v0, v6);
    }
  }

  else
  {
    (*(v26 + 32))(v33, v0, v5);
  }

  OUTLINED_FUNCTION_26_2();
}

void sub_1BF090824()
{
  sub_1BF17AE6C();
  swift_projectBox();
  sub_1BF000444(sub_1BF097608);
}

uint64_t sub_1BF0908B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BF17AE6C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  (*(*(a3 - 8) + 16))(&v12 - v9, a2, a3);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, a3);
  swift_beginAccess();
  return (*(v7 + 40))(a1, v10, v6);
}

uint64_t sub_1BF0909E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v4 = sub_1BF17AE6C();
  return (*(*(v4 - 8) + 16))(a2, a1, v4);
}

void Promise.await()(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_29();
  v4 = *(v3 + 80);
  v56 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1(v56);
  v54 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v48 - v9;
  v10 = sub_1BF179BEC();
  v11 = OUTLINED_FUNCTION_1(v10);
  v52 = v12;
  v53 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  v18 = sub_1BF179C5C();
  v19 = OUTLINED_FUNCTION_1(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_0();
  v26 = (v25 - v24);
  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
  v26->isa = sub_1BF17AD5C();
  (*(v21 + 104))(v26, *MEMORY[0x1E69E8018], v18);
  v27 = sub_1BF179C8C();
  (*(v21 + 8))(v26, v18);
  if (v27)
  {
    v49 = a1;
    v50 = v1;
    v28 = swift_allocBox();
    a1 = v29;
    OUTLINED_FUNCTION_83_0();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v4);
    OUTLINED_FUNCTION_27();
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    v48 = (v33 + 16);
    v26 = dispatch_semaphore_create(0);
    OUTLINED_FUNCTION_58();
    v34 = swift_allocObject();
    *(v34 + 16) = v4;
    *(v34 + 24) = v28;
    v51 = v28;

    v35 = sub_1BF007568();
    Promise.then<A>(on:closure:)();

    v36 = qword_1ED8F0210;

    if (v36 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_1_10();
  swift_once();
LABEL_3:
  v37 = off_1ED8F0218;
  sub_1BF0040A8();

  OUTLINED_FUNCTION_27();
  v38 = swift_allocObject();
  *(v38 + 16) = v26;
  v39 = v26;
  sub_1BF08C6FC(v37, sub_1BF0979CC, v38, &unk_1F3DB9378, sub_1BF0975C4, sub_1BF040820, sub_1BF043E18);

  sub_1BF179BCC();
  sub_1BF17ADBC();
  (*(v52 + 8))(v17, v53);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  v41 = v54;
  v40 = v55;
  v42 = v56;
  (*(v54 + 16))(v55, a1, v56);
  if (__swift_getEnumTagSinglePayload(v40, 1, v4) == 1)
  {
    (*(v41 + 8))(v40, v42);
    v43 = v48;
    OUTLINED_FUNCTION_31();
    swift_beginAccess();
    v44 = *v43;
    if (!v44)
    {
      sub_1BF095D40();
      swift_allocError();
      *v46 = xmmword_1BF17FB30;
      *(v46 + 16) = 2;
    }

    swift_willThrow();
    v47 = v44;
  }

  else
  {

    OUTLINED_FUNCTION_20(v4);
    (*(v45 + 32))(v49, v40, v4);
  }
}

uint64_t sub_1BF090FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BF17AE6C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = swift_projectBox();
  (*(*(a3 - 8) + 16))(v9, a1, a3);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, a3);
  swift_beginAccess();
  return (*(v6 + 40))(v10, v9, v5);
}

id sub_1BF09110C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

uint64_t static Promise.wait<A>(interval:queue:valueProvider:)()
{
  OUTLINED_FUNCTION_104();
  type metadata accessor for Promise();
  v2 = *(v0 + 80);
  OUTLINED_FUNCTION_86_0();
  return Promise.__allocating_init(resolver:)();
}

uint64_t sub_1BF0911EC(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v27 = a1;
  v16 = sub_1BF179B5C();
  v29 = *(v16 - 8);
  v17 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1BF179BBC();
  v20 = *(v28 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  *(v24 + 16) = a9;
  *(v24 + 24) = a10;
  *(v24 + 32) = a6;
  *(v24 + 40) = a7;
  *(v24 + 48) = a8;
  *(v24 + 56) = a3;
  *(v24 + 64) = v27;
  *(v24 + 72) = a2;
  aBlock[4] = sub_1BF097990;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF0058CC;
  aBlock[3] = &block_descriptor_295;
  v25 = _Block_copy(aBlock);

  a8;

  sub_1BF179B8C();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1BEFF7410(&unk_1ED8EFBF0, MEMORY[0x1E69E7F60]);
  sub_1BF0491C4(0, &qword_1ED8EFBE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1BF095E00();
  sub_1BF17B0BC();
  MEMORY[0x1BFB52B50](0, v23, v19, v25);
  _Block_release(v25);
  (*(v29 + 8))(v19, v16);
  (*(v20 + 8))(v23, v28);
}

uint64_t sub_1BF0914F8(void *(*a1)(void *__return_ptr, uint64_t), uint64_t a2, void *a3, uint64_t (*a4)(void *), uint64_t a5, double a6)
{
  v39 = a4;
  v35 = a3;
  v10 = sub_1BF179B5C();
  v38 = *(v10 - 8);
  v11 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BF179BBC();
  v36 = *(v14 - 8);
  v37 = v14;
  v15 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BF179BEC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v33 - v25;
  v27 = a1(aBlock, v24);
  if ((aBlock[0] & 1) == 0)
  {
    return v39(v27);
  }

  sub_1BF179BDC();
  sub_1BF179C6C();
  v28 = *(v19 + 8);
  v33 = v18;
  v34 = v28;
  v28(v23, v18);
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = a2;
  v30 = v35;
  *(v29 + 32) = v35;
  *(v29 + 40) = a6;
  *(v29 + 48) = v39;
  *(v29 + 56) = a5;
  aBlock[4] = sub_1BF097548;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF0058CC;
  aBlock[3] = &block_descriptor_283;
  v31 = _Block_copy(aBlock);

  v30;

  sub_1BF179B8C();
  v40 = MEMORY[0x1E69E7CC0];
  sub_1BEFF7410(&unk_1ED8EFBF0, MEMORY[0x1E69E7F60]);
  sub_1BF0491C4(0, &qword_1ED8EFBE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1BF095E00();
  sub_1BF17B0BC();
  MEMORY[0x1BFB52B00](v26, v17, v13, v31);
  _Block_release(v31);
  (*(v38 + 8))(v13, v10);
  (*(v36 + 8))(v17, v37);
  v34(v26, v33);
}

uint64_t sub_1BF091900(void (*a1)(uint64_t), uint64_t a2, void *a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v44 = a6;
  v45 = a3;
  v53 = a4;
  v54 = a5;
  v12 = sub_1BF179B5C();
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1BF179BBC();
  v47 = *(v49 - 8);
  v15 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v43 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1BF179BEC();
  v46 = *(v55 - 8);
  v17 = *(v46 + 64);
  v18 = MEMORY[0x1EEE9AC00](v55);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v52 = &v42 - v21;
  v22 = sub_1BF17AE6C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v42 - v26;
  v28 = *(a7 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](v25);
  v32 = &v42 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v30);
  if (__swift_getEnumTagSinglePayload(v27, 1, a7) == 1)
  {
    (*(v23 + 8))(v27, v22);
    sub_1BF179BDC();
    sub_1BF179C6C();
    v46 = *(v46 + 8);
    (v46)(v20, v55);
    v33 = swift_allocObject();
    v34 = v45;
    *(v33 + 16) = v44;
    *(v33 + 24) = a7;
    *(v33 + 32) = a1;
    *(v33 + 40) = a2;
    *(v33 + 48) = v34;
    *(v33 + 56) = a8;
    v35 = v54;
    *(v33 + 64) = v53;
    *(v33 + 72) = v35;
    aBlock[4] = sub_1BF097560;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BF0058CC;
    aBlock[3] = &block_descriptor_289;
    v36 = _Block_copy(aBlock);

    v34;

    v37 = v43;
    sub_1BF179B8C();
    v56 = MEMORY[0x1E69E7CC0];
    sub_1BEFF7410(&unk_1ED8EFBF0, MEMORY[0x1E69E7F60]);
    sub_1BF0491C4(0, &qword_1ED8EFBE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1BF095E00();
    v38 = v48;
    v39 = v51;
    sub_1BF17B0BC();
    v40 = v52;
    MEMORY[0x1BFB52B00](v52, v37, v38, v36);
    _Block_release(v36);
    (*(v50 + 8))(v38, v39);
    (*(v47 + 8))(v37, v49);
    (v46)(v40, v55);
  }

  else
  {
    (*(v28 + 32))(v32, v27, a7);
    v53(v32);
    return (*(v28 + 8))(v32, a7);
  }
}

uint64_t static Promise.wait<A>(timeout:interval:queue:valueProvider:)()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_104();
  type metadata accessor for Promise();
  OUTLINED_FUNCTION_41_0();
  static Promise.wait<A>(interval:queue:valueProvider:)();
  OUTLINED_FUNCTION_66();
  v0 = sub_1BF007568();
  v1 = Promise.timeout(after:on:message:)();

  return v1;
}

uint64_t static Promise.wait(interval:queue:condition:)(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = sub_1BF179B5C();
  v9 = OUTLINED_FUNCTION_1(v8);
  v46 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = sub_1BF179BBC();
  v17 = OUTLINED_FUNCTION_1(v16);
  v44 = v18;
  v45 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_0();
  v23 = v22 - v21;
  OUTLINED_FUNCTION_58();
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = a3;
  v25 = MEMORY[0x1E69E7CA8];
  OUTLINED_FUNCTION_12_5();
  sub_1BF0035CC(0, v26, v25 + 8, v27);
  OUTLINED_FUNCTION_27();
  v28 = swift_allocObject();
  aBlock[0] = 0;
  type metadata accessor for UnfairLock();
  OUTLINED_FUNCTION_87();
  v29 = a1;

  UnfairLock.init(options:)(aBlock);
  OUTLINED_FUNCTION_7_6();
  sub_1BF0035CC(0, v30, v25 + 8, v31);
  OUTLINED_FUNCTION_50_0();
  v32 = swift_allocObject();
  *(v32 + 32) = MEMORY[0x1E69E7CC0];
  *(v32 + 40) = 0;
  *(v28 + 16) = OUTLINED_FUNCTION_64_0(v32);
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1BF095DC8;
  *(v33 + 24) = v24;
  *(v33 + 32) = v29;
  *(v33 + 40) = a4;
  *(v33 + 48) = sub_1BF035788;
  *(v33 + 56) = v28;
  aBlock[4] = sub_1BF09798C;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF0058CC;
  aBlock[3] = &block_descriptor_0;
  v34 = _Block_copy(aBlock);
  swift_retain_n();
  v35 = v29;

  sub_1BF179B8C();
  OUTLINED_FUNCTION_48_1();
  sub_1BEFF7410(v36, v37);
  OUTLINED_FUNCTION_47_1();
  sub_1BF0491C4(0, v38, v39, MEMORY[0x1E69E62F8]);
  sub_1BF095E00();
  sub_1BF17B0BC();
  MEMORY[0x1BFB52B50](0, v23, v15, v34);
  _Block_release(v34);
  v40 = *(v46 + 8);
  v41 = OUTLINED_FUNCTION_129();
  v42(v41);
  (*(v44 + 8))(v23, v45);

  return v28;
}

void sub_1BF0922A4()
{
  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  sub_1BF099E08();
}

uint64_t Promise.asOptionalWithRecovery()()
{
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  v2 = swift_allocObject();
  v3 = *(v1 + 80);
  *(v2 + 16) = v3;
  sub_1BF17AE6C();
  v4 = sub_1BF007568();
  Promise.then<A>(on:closure:)();
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_27();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v6 = sub_1BF007568();
  v7 = Promise.recover(on:closure:)(v6, sub_1BF095EEC, v5);

  return v7;
}

uint64_t static Promise.wait<A>(for:ignoreInitialValue:satisfying:)()
{
  OUTLINED_FUNCTION_25_3();
  v1 = *(*v0 + 80);
  type metadata accessor for Promise();
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_86_0();
  return Promise.__allocating_init(resolver:)();
}

uint64_t sub_1BF092490(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = a2;
  v13 = sub_1BF179C5C();
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
  *v17 = sub_1BF17AD5C();
  v18 = v14[13];
  v47 = *MEMORY[0x1E69E8020];
  v48 = v14 + 13;
  v46 = v18;
  v18(v17);
  v19 = sub_1BF179C8C();
  v21 = v14[1];
  v20 = v14 + 1;
  v45 = v21;
  result = v21(v17, v13);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v43 = v20;
  v44 = v13;
  v42 = a6;
  v23 = swift_allocObject();
  v24 = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  *(v23 + 16) = v24;
  v39 = (v23 + 16);
  result = swift_allocObject();
  *(result + 16) = (a5 & 1) == 0;
  v25 = (result + 16);
  if (!v24)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v26 = result;
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = a7;
  v27[4] = a8;
  v27[5] = v23;
  v38 = a1;
  v27[6] = a1;
  v27[7] = v49;

  sub_1BF009984(a7);

  v40 = a7;
  v41 = a8;
  sub_1BF009984(a7);

  v28 = v24;
  *v17 = sub_1BF17AD5C();
  v29 = v44;
  v46(v17, v47, v44);
  v30 = sub_1BF179C8C();
  result = v45(v17, v29);
  if ((v30 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v31 = v42;
  sub_1BF09555C(v28, sub_1BF0973F0, v27);
  swift_beginAccess();
  v32 = *(v31 + 24);
  v51 = v32;
  swift_beginAccess();
  if (*v25 == 1)
  {
    v33 = v40;
    if (!v40 || (v50[0] = v32, , v34 = v33(v50), sub_1BEFE52DC(v33), (v34 & 1) != 0))
    {
      v35 = v39;
      swift_beginAccess();
      v36 = *v35;
      *v35 = 0;

      v38(&v51);
    }
  }

  else
  {
    *v25 = 1;
    v33 = v40;
  }

  sub_1BEFE52DC(v33);
}

uint64_t sub_1BF092870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a1;
  v13 = *a6;
  v14 = sub_1BF179C5C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
  *v18 = sub_1BF17AD5C();
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14);
  v19 = sub_1BF179C8C();
  result = (*(v15 + 8))(v18, v14);
  if (v19)
  {
    v21 = swift_allocObject();
    v22 = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
    *(v21 + 16) = v22;
    result = swift_allocObject();
    *(result + 16) = (a5 & 1) == 0;
    if (v22)
    {
      v23 = result;
      v24 = swift_allocObject();
      v24[2] = a9;
      v24[3] = *(v13 + 80);
      v24[4] = v23;
      v24[5] = a7;
      v24[6] = a8;
      v25 = v28;
      v24[7] = v21;
      v24[8] = v25;
      v24[9] = a2;
      v26 = v22;

      sub_1BF009984(a7);
      sub_1BEFF9AF8(0, &qword_1ED8EF730, 0x1E69E58C0);

      ObservableProperty.eagerObserve<A>(disposeOn:block:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF092B0C(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(_BYTE *), uint64_t a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v16 = a2;
  swift_beginAccess();
  if (*(a3 + 16) == 1)
  {
    if (!a4 || (v15[0] = a2 & 1, , v12 = a4(v15), result = sub_1BEFE52DC(a4), (v12 & 1) != 0))
    {
      swift_beginAccess();
      v14 = *(a6 + 16);
      *(a6 + 16) = 0;

      return a7(&v16);
    }
  }

  else
  {
    result = swift_beginAccess();
    *(a3 + 16) = 1;
  }

  return result;
}

uint64_t sub_1BF092C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_beginAccess();
  if (*(a3 + 16) != 1)
  {
    result = swift_beginAccess();
    *(a3 + 16) = 1;
    return result;
  }

  v25[6] = a8;
  v26 = a7;
  if (a4)
  {
    v17 = swift_allocObject();
    v18 = v17;
    v17[2] = a9;
    v17[3] = a10;
    v17[4] = a4;
    v17[5] = a5;
    v19 = sub_1BF097998;
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  v28 = v19;
  v29 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v25[2] = a9;
  v25[3] = a10;
  v25[4] = a2;
  sub_1BF009984(a4);
  v21 = MEMORY[0x1E69E6370];
  swift_getFunctionTypeMetadata1();
  sub_1BF17AE6C();
  sub_1BF089FE0(sub_1BF097974, v25, MEMORY[0x1E69E73E0], v21, v22, &v27);
  result = sub_1BEFE52DC(v19);
  if (v27 == 2)
  {
    v23 = v26;
  }

  else
  {
    v23 = v26;
    if ((v27 & 1) == 0)
    {
      return result;
    }
  }

  swift_beginAccess();
  v24 = *(a6 + 16);
  *(a6 + 16) = 0;

  return v23(a2);
}

uint64_t static Promise.wait(for:ignoreInitialValue:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6370];
  OUTLINED_FUNCTION_12_5();
  sub_1BF0035CC(0, v3, v2, v4);
  OUTLINED_FUNCTION_27();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_66();

  UnfairLock.init(options:)(&v12);
  OUTLINED_FUNCTION_7_6();
  sub_1BF0035CC(0, v6, v2, v7);
  OUTLINED_FUNCTION_50_0();
  v8 = swift_allocObject();
  *(v8 + 32) = MEMORY[0x1E69E7CC0];
  *(v8 + 40) = 0;
  *(v5 + 16) = OUTLINED_FUNCTION_64_0(v8);
  swift_retain_n();
  sub_1BF092490(sub_1BF095F5C, v5, sub_1BF095F64, v5, 0, a1, sub_1BF01877C, 0);

  sub_1BF0922A4();
  v10 = v9;

  return v10;
}

uint64_t static Promise.waitUnwrapped<A>(for:ignoreInitialValue:satisfying:)()
{
  OUTLINED_FUNCTION_25_3();
  v1 = *(*(*v0 + 80) + 16);
  type metadata accessor for Promise();
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_86_0();
  return Promise.__allocating_init(resolver:)();
}

uint64_t sub_1BF092FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a1;
  v13 = *a6;
  v14 = sub_1BF179C5C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
  *v18 = sub_1BF17AD5C();
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14);
  v19 = sub_1BF179C8C();
  result = (*(v15 + 8))(v18, v14);
  if (v19)
  {
    v21 = swift_allocObject();
    v22 = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
    *(v21 + 16) = v22;
    result = swift_allocObject();
    *(result + 16) = (a5 & 1) == 0;
    if (v22)
    {
      v23 = result;
      v24 = swift_allocObject();
      v24[2] = a9;
      v24[3] = *(*(v13 + 80) + 16);
      v24[4] = v23;
      v24[5] = a7;
      v24[6] = a8;
      v25 = v28;
      v24[7] = v21;
      v24[8] = v25;
      v24[9] = a2;
      v26 = v22;

      sub_1BF009984(a7);
      sub_1BEFF9AF8(0, &qword_1ED8EF730, 0x1E69E58C0);

      ObservableProperty.eagerObserve<A>(disposeOn:block:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF093244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(char *), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v34 = a8;
  v35 = a7;
  v33 = a6;
  v14 = sub_1BF17AE6C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v32 - v18;
  v20 = *(a10 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a3 + 16) == 1)
  {
    (*(v15 + 16))(v19, a2, v14);
    if (__swift_getEnumTagSinglePayload(v19, 1, a10) == 1)
    {
      return (*(v15 + 8))(v19, v14);
    }

    else
    {
      v25 = (*(v20 + 32))(v23, v19, a10);
      if (a4)
      {
        v25 = swift_allocObject();
        v26 = v25;
        v25[2] = a9;
        v25[3] = a10;
        v25[4] = a4;
        v25[5] = a5;
        v27 = sub_1BF097394;
      }

      else
      {
        v27 = 0;
        v26 = 0;
      }

      v37 = v27;
      v38 = v26;
      MEMORY[0x1EEE9AC00](v25);
      *(&v32 - 4) = a9;
      *(&v32 - 3) = a10;
      *(&v32 - 2) = v23;
      sub_1BF009984(a4);
      v28 = MEMORY[0x1E69E6370];
      swift_getFunctionTypeMetadata1();
      sub_1BF17AE6C();
      sub_1BF089FE0(sub_1BF09737C, (&v32 - 6), MEMORY[0x1E69E73E0], v28, v29, &v36);
      sub_1BEFE52DC(v27);
      if (v36 == 2 || (v36 & 1) != 0)
      {
        v30 = v33;
        swift_beginAccess();
        v31 = *(v30 + 16);
        *(v30 + 16) = 0;

        v35(v23);
      }

      return (*(v20 + 8))(v23, a10);
    }
  }

  else
  {
    result = swift_beginAccess();
    *(a3 + 16) = 1;
  }

  return result;
}

uint64_t sub_1BF0935D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v25 = a1;
  v12 = *a6;
  v13 = sub_1BF179C5C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
  *v17 = sub_1BF17AD5C();
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13);
  v18 = sub_1BF179C8C();
  result = (*(v14 + 8))(v17, v13);
  if (v18)
  {
    v20 = swift_allocObject();
    *(v20 + 32) = 0u;
    *(v20 + 48) = 0;
    *(v20 + 16) = 0u;
    v21 = swift_allocObject();
    *(v21 + 16) = (a5 & 1) == 0;
    v22 = swift_allocObject();
    v22[2] = *(v12 + 80);
    v22[3] = v21;
    v22[4] = a7;
    v22[5] = a8;
    v23 = v25;
    v22[6] = v20;
    v22[7] = v23;
    v22[8] = a2;

    sub_1BF009984(a7);

    SyncObservable.onNext(eager:block:)(1, sub_1BF097210, v22, v26);

    swift_beginAccess();
    sub_1BF097228();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF093878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v16 = swift_beginAccess();
  if (*(a2 + 16) == 1)
  {
    v24[4] = a7;
    if (a3)
    {
      v16 = swift_allocObject();
      v17 = v16;
      v16[2] = a8;
      v16[3] = a3;
      v16[4] = a4;
      v18 = sub_1BF097330;
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    *&v25 = v18;
    *(&v25 + 1) = v17;
    MEMORY[0x1EEE9AC00](v16);
    v24[2] = a8;
    v24[3] = a1;
    sub_1BF009984(a3);
    v20 = MEMORY[0x1E69E6370];
    swift_getFunctionTypeMetadata1();
    sub_1BF17AE6C();
    sub_1BF089FE0(sub_1BF097280, v24, MEMORY[0x1E69E73E0], v20, v21, v28);
    result = sub_1BEFE52DC(v18);
    if (v28[0] == 2 || (v28[0] & 1) != 0)
    {
      swift_beginAccess();
      if (*(a5 + 40))
      {
        sub_1BF0972D0(a5 + 16, &v25);
        v22 = *(&v26 + 1);
        v23 = v27;
        __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
        (*(v23 + 16))(v22, v23);
        __swift_destroy_boxed_opaque_existential_1(&v25);
      }

      v27 = 0;
      v25 = 0u;
      v26 = 0u;
      swift_beginAccess();
      sub_1BF097228();
      return a6(a1);
    }
  }

  else
  {
    result = swift_beginAccess();
    *(a2 + 16) = 1;
  }

  return result;
}

void Promise.wait<A>(for:ignoreInitialValue:satisfying:)()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_25_3();
  v2 = *v0;
  v4 = *v3;
  OUTLINED_FUNCTION_85();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_114(v5);
  sub_1BF009984(v1);
  v6 = *(v2 + 80);
  v7 = *(*(v4 + *MEMORY[0x1E69E77B0] + 8) + 80);
  v8 = sub_1BF007568();
  OUTLINED_FUNCTION_134();

  OUTLINED_FUNCTION_55();
}

uint64_t sub_1BF093BC0(uint64_t a1, void *a2)
{
  v2 = *(*(*a2 + *MEMORY[0x1E69E77B0] + 8) + 80);
  type metadata accessor for Promise();
  swift_getAtKeyPath();
  v3 = static Promise.wait<A>(for:ignoreInitialValue:satisfying:)();

  return v3;
}

void Promise.waitUnwrapped<A>(for:ignoreInitialValue:satisfying:)()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_25_3();
  v2 = *v0;
  v4 = *v3;
  OUTLINED_FUNCTION_85();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_114(v5);
  sub_1BF009984(v1);
  v6 = *(v2 + 80);
  v7 = *(*(*(v4 + *MEMORY[0x1E69E77B0] + 8) + 80) + 16);
  v8 = sub_1BF007568();
  OUTLINED_FUNCTION_134();

  OUTLINED_FUNCTION_55();
}

uint64_t sub_1BF093D68(uint64_t a1, void *a2)
{
  v2 = *(*(*(*a2 + *MEMORY[0x1E69E77B0] + 8) + 80) + 16);
  type metadata accessor for Promise();
  swift_getAtKeyPath();
  v3 = static Promise.waitUnwrapped<A>(for:ignoreInitialValue:satisfying:)();

  return v3;
}

uint64_t Promise.as<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  OUTLINED_FUNCTION_58();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v4 + 80);
  *(v5 + 24) = a2;
  v6 = sub_1BF007568();
  Promise.then<A>(on:closure:)();
  v8 = v7;

  return v8;
}

void sub_1BF093F50(void (*a1)(char *), uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a4;
  v33 = a3;
  v31 = a1;
  v10 = sub_1BF17AE6C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v30 - v14;
  v16 = *(*(a6 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a7 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v19, a5, a6);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v15, 0, 1, a7);
    (*(v20 + 32))(v23, v15, a7);
    v31(v23);
    (*(v20 + 8))(v23, a7);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v15, 1, 1, a7);
    (*(v11 + 8))(v15, v10);
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_1BF17B1EC();
    MEMORY[0x1BFB52000](0x742064656C696146, 0xEF2074736163206FLL);
    sub_1BF17B80C();
    MEMORY[0x1BFB52000](544432416, 0xE400000000000000);
    swift_getMetatypeMetadata();
    v25 = sub_1BF17BD4C();
    MEMORY[0x1BFB52000](v25);

    v26 = v34;
    v27 = v35;
    sub_1BF095D40();
    v28 = swift_allocError();
    *v29 = v26;
    *(v29 + 8) = v27;
    *(v29 + 16) = 1;
    v33();
  }
}

uint64_t sub_1BF094280()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);

    v2 = sub_1BF0EEFD4();

    v2(v3);
  }

  return result;
}

uint64_t sub_1BF0942FC(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = v2;
  *(v1 + 56) = -1;
  return OUTLINED_FUNCTION_80_0(a1);
}

uint64_t sub_1BF094318(uint64_t a1)
{
  *(v1 + 32) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_29();
  v4 = *(v3 + 112);
  sub_1BF09704C(0, v5, v6);
  OUTLINED_FUNCTION_83_0();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

void sub_1BF094380()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_15_3();
  v1 = OUTLINED_FUNCTION_3_6();
  sub_1BEFF779C(v1, v2);
  v3 = OUTLINED_FUNCTION_2_8();
  sub_1BEFF77B0(v3, v4);
  OUTLINED_FUNCTION_14_5();
  v5 = *(v0 + 32);
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_33_1();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_0_13(v6);
  sub_1BEFF779C(v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_118();
}

void sub_1BF094408()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_15_3();
  v1 = OUTLINED_FUNCTION_3_6();
  sub_1BEFF779C(v1, v2);
  v3 = OUTLINED_FUNCTION_2_8();
  sub_1BEFF77B0(v3, v4);
  OUTLINED_FUNCTION_14_5();
  v5 = *(v0 + 32);
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_33_1();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_0_13(v6);
  sub_1BEFF779C(v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_118();
}

void sub_1BF094490()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_15_3();
  v1 = OUTLINED_FUNCTION_3_6();
  sub_1BF000E90(v1, v2);
  v3 = OUTLINED_FUNCTION_2_8();
  sub_1BF000E50(v3, v4);
  OUTLINED_FUNCTION_14_5();
  v5 = *(v0 + 32);
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_33_1();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_0_13(v6);
  sub_1BF000E90(v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_118();
}

uint64_t sub_1BF094518(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_62_0();
  v7 = *(v3 + 16);
  os_unfair_lock_assert_owner(*(v7 + 16));
  OUTLINED_FUNCTION_15_3();
  v8 = *(v3 + 40);
  v9 = *(v3 + 48);
  v10 = *(v3 + 56);
  v11 = OUTLINED_FUNCTION_20_3();
  sub_1BF097124(v11, v12, v13);
  v14 = OUTLINED_FUNCTION_37_1();
  sub_1BF097140(v14, v15, v16);
  OUTLINED_FUNCTION_14_5();
  v17 = *(v3 + 32);
  *(v3 + 32) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_50_0();
  v18 = swift_allocObject();
  *(v18 + 16) = v7;
  *(v18 + 24) = v17;
  *(v18 + 32) = v5;
  *(v18 + 40) = v4;
  *(v18 + 48) = a3;
  v19 = OUTLINED_FUNCTION_20_3();
  sub_1BF097124(v19, v20, v21);
  OUTLINED_FUNCTION_73_0();
  return OUTLINED_FUNCTION_32_2();
}

void sub_1BF0945D8()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_15_3();
  v1 = OUTLINED_FUNCTION_3_6();
  sub_1BF000E90(v1, v2);
  v3 = OUTLINED_FUNCTION_2_8();
  sub_1BF000E50(v3, v4);
  OUTLINED_FUNCTION_14_5();
  v5 = *(v0 + 32);
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_33_1();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_0_13(v6);
  sub_1BF000E90(v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_118();
}

void sub_1BF094660()
{
  OUTLINED_FUNCTION_32();
  sub_1BF09704C(0, qword_1ED8E9E18, type metadata accessor for AuthToken);
  v2 = v1;
  OUTLINED_FUNCTION_1(v1);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_90();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_11_4();
  sub_1BF096708(0, v6, qword_1ED8E9E18, type metadata accessor for AuthToken, v7);
  OUTLINED_FUNCTION_68(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_63_0();
  v12 = OUTLINED_FUNCTION_106();
  os_unfair_lock_assert_owner(v12);
  OUTLINED_FUNCTION_56_1();
  sub_1BF096764();
  OUTLINED_FUNCTION_127();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v2);
  OUTLINED_FUNCTION_29();
  v17 = *(v16 + 112);
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_116();
  swift_endAccess();
  OUTLINED_FUNCTION_77_1();
  v18 = *(v0 + 32);
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_125_0();
  OUTLINED_FUNCTION_56_1();
  sub_1BF096764();
  OUTLINED_FUNCTION_54_2();
  v19 = swift_allocObject();
  OUTLINED_FUNCTION_40_2(v19);

  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_26_2();
}

void sub_1BF09480C()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_15_3();
  v1 = OUTLINED_FUNCTION_3_6();
  sub_1BF000E90(v1, v2);
  v3 = OUTLINED_FUNCTION_2_8();
  sub_1BF000E50(v3, v4);
  OUTLINED_FUNCTION_14_5();
  v5 = *(v0 + 32);
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_33_1();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_0_13(v6);
  sub_1BF000E90(v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_118();
}

uint64_t sub_1BF094894(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_62_0();
  v7 = *(v3 + 16);
  os_unfair_lock_assert_owner(*(v7 + 16));
  OUTLINED_FUNCTION_15_3();
  v8 = *(v3 + 40);
  v9 = *(v3 + 48);
  v10 = *(v3 + 56);
  v11 = OUTLINED_FUNCTION_20_3();
  sub_1BF096E40(v11, v12, v13);
  v14 = OUTLINED_FUNCTION_37_1();
  sub_1BF096E9C(v14, v15, v16);
  OUTLINED_FUNCTION_14_5();
  v17 = *(v3 + 32);
  *(v3 + 32) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_50_0();
  v18 = swift_allocObject();
  *(v18 + 16) = v7;
  *(v18 + 24) = v17;
  *(v18 + 32) = v5;
  *(v18 + 40) = v4;
  *(v18 + 48) = a3;
  v19 = OUTLINED_FUNCTION_20_3();
  sub_1BF096E40(v19, v20, v21);
  OUTLINED_FUNCTION_73_0();
  return OUTLINED_FUNCTION_32_2();
}

void sub_1BF094954()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_15_3();
  v1 = OUTLINED_FUNCTION_3_6();
  sub_1BF000E90(v1, v2);
  v3 = OUTLINED_FUNCTION_2_8();
  sub_1BF000E50(v3, v4);
  OUTLINED_FUNCTION_14_5();
  v5 = *(v0 + 32);
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_33_1();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_0_13(v6);
  sub_1BF000E90(v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_118();
}

void sub_1BF0949DC()
{
  OUTLINED_FUNCTION_32();
  v1 = MEMORY[0x1E6967EC8];
  sub_1BF09704C(0, &qword_1EBDCAA58, MEMORY[0x1E6967EC8]);
  v3 = v2;
  OUTLINED_FUNCTION_1(v2);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_90();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_11_4();
  sub_1BF096708(0, v7, &qword_1EBDCAA58, v1, v8);
  OUTLINED_FUNCTION_68(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_63_0();
  v13 = OUTLINED_FUNCTION_106();
  os_unfair_lock_assert_owner(v13);
  OUTLINED_FUNCTION_56_1();
  sub_1BF096764();
  OUTLINED_FUNCTION_127();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v3);
  OUTLINED_FUNCTION_29();
  v18 = *(v17 + 112);
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_116();
  swift_endAccess();
  OUTLINED_FUNCTION_77_1();
  v19 = *(v0 + 32);
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_125_0();
  OUTLINED_FUNCTION_56_1();
  sub_1BF096764();
  OUTLINED_FUNCTION_54_2();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_40_2(v20);

  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF094B88(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_62_0();
  v7 = *(v3 + 16);
  os_unfair_lock_assert_owner(*(v7 + 16));
  OUTLINED_FUNCTION_15_3();
  v8 = *(v3 + 40);
  v9 = *(v3 + 48);
  v10 = *(v3 + 56);
  v11 = OUTLINED_FUNCTION_20_3();
  sub_1BF096B3C(v11, v12, v13);
  v14 = OUTLINED_FUNCTION_37_1();
  sub_1BF096B5C(v14, v15, v16);
  OUTLINED_FUNCTION_14_5();
  v17 = *(v3 + 32);
  *(v3 + 32) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_50_0();
  v18 = swift_allocObject();
  *(v18 + 16) = v7;
  *(v18 + 24) = v17;
  *(v18 + 32) = v5;
  *(v18 + 40) = v4;
  *(v18 + 48) = a3;
  v19 = OUTLINED_FUNCTION_20_3();
  sub_1BF096B3C(v19, v20, v21);
  OUTLINED_FUNCTION_73_0();
  return OUTLINED_FUNCTION_32_2();
}

void sub_1BF094C48()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_15_3();
  v1 = OUTLINED_FUNCTION_3_6();
  sub_1BF000E90(v1, v2);
  v3 = OUTLINED_FUNCTION_2_8();
  sub_1BF000E50(v3, v4);
  OUTLINED_FUNCTION_14_5();
  v5 = *(v0 + 32);
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_33_1();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_0_13(v6);
  sub_1BF000E90(v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_118();
}

void sub_1BF094CD0()
{
  OUTLINED_FUNCTION_32();
  v1 = MEMORY[0x1E6968FB0];
  sub_1BF09704C(0, &qword_1EBDCC220, MEMORY[0x1E6968FB0]);
  v3 = v2;
  OUTLINED_FUNCTION_1(v2);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_90();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_11_4();
  sub_1BF096708(0, v7, &qword_1EBDCC220, v1, v8);
  OUTLINED_FUNCTION_68(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_63_0();
  v13 = OUTLINED_FUNCTION_106();
  os_unfair_lock_assert_owner(v13);
  OUTLINED_FUNCTION_56_1();
  sub_1BF096764();
  OUTLINED_FUNCTION_127();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v3);
  OUTLINED_FUNCTION_29();
  v18 = *(v17 + 112);
  OUTLINED_FUNCTION_76_1();
  OUTLINED_FUNCTION_116();
  swift_endAccess();
  OUTLINED_FUNCTION_77_1();
  v19 = *(v0 + 32);
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_125_0();
  OUTLINED_FUNCTION_56_1();
  sub_1BF096764();
  OUTLINED_FUNCTION_54_2();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_40_2(v20);

  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_26_2();
}

void sub_1BF094E7C()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_15_3();
  v1 = OUTLINED_FUNCTION_3_6();
  sub_1BEFF779C(v1, v2);
  v3 = OUTLINED_FUNCTION_2_8();
  sub_1BEFF77B0(v3, v4);
  OUTLINED_FUNCTION_14_5();
  v5 = *(v0 + 32);
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_33_1();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_0_13(v6);
  sub_1BEFF779C(v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_118();
}

void sub_1BF094F04()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_15_3();
  v1 = OUTLINED_FUNCTION_3_6();
  sub_1BF000E90(v1, v2);
  v3 = OUTLINED_FUNCTION_2_8();
  sub_1BF000E50(v3, v4);
  OUTLINED_FUNCTION_14_5();
  v5 = *(v0 + 32);
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_33_1();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_0_13(v6);
  sub_1BF000E90(v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_118();
}

void sub_1BF094F8C()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_15_3();
  v1 = OUTLINED_FUNCTION_3_6();
  sub_1BF0512E4(v1, v2);
  v3 = OUTLINED_FUNCTION_2_8();
  sub_1BF050ED8(v3, v4);
  OUTLINED_FUNCTION_14_5();
  v5 = *(v0 + 32);
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_33_1();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_0_13(v6);
  sub_1BF0512E4(v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_118();
}

uint64_t sub_1BF095014(uint64_t a1, uint64_t a2, void *a3, void (*a4)(), uint64_t a5)
{
  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  if (off_1ED8F0218 != a3)
  {
    if (qword_1ED8EFB98 != -1)
    {
      swift_once();
    }

    if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
    {
      if (qword_1ED8EF920 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
      {
        v8 = swift_allocObject();
        v8[2] = a3;
        v8[3] = a4;
        v8[4] = a5;
        v9 = a3;
        a4 = sub_1BF097A1C;
      }
    }
  }

  (a4)(v10);
}

uint64_t sub_1BF0951A4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(), uint64_t a5)
{
  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  if (off_1ED8F0218 != a3)
  {
    if (qword_1ED8EFB98 != -1)
    {
      swift_once();
    }

    if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
    {
      if (qword_1ED8EF920 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
      {
        v8 = swift_allocObject();
        v8[2] = a3;
        v8[3] = a4;
        v8[4] = a5;
        v9 = a3;
        a4 = sub_1BF0077B8;
      }
    }
  }

  (a4)(v10);
}

uint64_t sub_1BF095334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t (*a6)(uint64_t))
{
  v11[0] = a3;
  v11[1] = a4;
  v12 = a5;
  os_unfair_lock_assert_not_owner(*(a1 + 16));
  result = a6(a2);
  if (result)
  {
    if (result >= 1)
    {
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v10 = OUTLINED_FUNCTION_129();
          MEMORY[0x1BFB53020](v10);
        }

        else
        {
          OUTLINED_FUNCTION_113();
        }

        OUTLINED_FUNCTION_112();
        v6(v11);
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1BF0953F0()
{
  OUTLINED_FUNCTION_68_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  os_unfair_lock_assert_not_owner(*(v6 + 16));
  v7 = v1(v5);
  if (!v7)
  {
LABEL_8:
    OUTLINED_FUNCTION_55();
    return;
  }

  v8 = v7;
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1BFB53020](v9, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v9 + 32);
      }

      ++v9;
      v12 = *(v10 + 16);
      v11 = *(v10 + 24);

      v12(v3);
    }

    while (v8 != v9);
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1BF0954B4(uint64_t a1)
{
  OUTLINED_FUNCTION_111(a1);
  result = v2(v1);
  if (result)
  {
    if (result >= 1)
    {
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v5 = OUTLINED_FUNCTION_129();
          MEMORY[0x1BFB53020](v5);
        }

        else
        {
          OUTLINED_FUNCTION_113();
        }

        OUTLINED_FUNCTION_112();
        v3(&v6);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BF09555C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1BF179C5C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
  *v11 = sub_1BF17AD5C();
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v12 = sub_1BF179C8C();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = a2;
    v15[4] = a3;
    swift_beginAccess();

    sub_1BF071B9C();
    v16 = *(*(v4 + 16) + 16);
    sub_1BF071DD8(v16);
    v17 = *(v4 + 16);
    *(v17 + 16) = v16 + 1;
    v18 = v17 + 16 * v16;
    *(v18 + 32) = sub_1BF097400;
    *(v18 + 40) = v15;
    *(v4 + 16) = v17;
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BF095754(char a1, uint64_t a2, void (*a3)(uint64_t, char *))
{
  v6 = a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3(Strong, &v6);
  }
}

uint64_t sub_1BF09582C(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1BF08BF14(a1, *(v1 + 16));
}

uint64_t sub_1BF095868(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 48);
  return sub_1BF08C5F4(a1, *(v1 + 32), *(v1 + 40));
}

uint64_t objectdestroy_78Tm()
{
  v1 = v0[3];
  OUTLINED_FUNCTION_2_3();
  v3 = *(v2 + 80);
  v5 = (*(v4 + 64) + ((v3 + 64) & ~v3) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[6];

  v7 = v0[7];

  v8 = OUTLINED_FUNCTION_92();
  v9(v8);
  v10 = *(v0 + v5 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1BF095A18(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, char *, void, void, void, void, void))
{
  v3 = (*(*(*(v2 + 3) - 8) + 80) + 64) & ~*(*(*(v2 + 3) - 8) + 80);
  v4 = &v2[(*(*(*(v2 + 3) - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8];
  return a2(a1, *(v2 + 6), *(v2 + 7), &v2[v3], *v4, *(v4 + 1), *(v2 + 2), *(v2 + 4), *(v2 + 5));
}

uint64_t objectdestroy_58Tm()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  v3 = OUTLINED_FUNCTION_59_1();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t objectdestroy_64Tm()
{
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t objectdestroy_55Tm()
{
  v1 = v0[5];

  v2 = v0[6];

  v3 = v0[8];

  v4 = OUTLINED_FUNCTION_59_1();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1BF095C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_1BF08F930(a1, a2);
}

void sub_1BF095CD0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  sub_1BF090824();
}

unint64_t sub_1BF095D40()
{
  result = qword_1ED8EE890[0];
  if (!qword_1ED8EE890[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8EE890);
  }

  return result;
}

uint64_t sub_1BF095DC8@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = (result & 1) == 0;
  return result;
}

unint64_t sub_1BF095E00()
{
  result = qword_1ED8EFBD0;
  if (!qword_1ED8EFBD0)
  {
    sub_1BF0491C4(255, &qword_1ED8EFBE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EFBD0);
  }

  return result;
}

uint64_t sub_1BF095EEC()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_83_0();
  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1BF09600C(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  return sub_1BF093BC0(a1, *(v1 + 16));
}

uint64_t objectdestroy_142Tm()
{
  v1 = v0[2];

  if (v0[4])
  {
    v2 = v0[5];
  }

  OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1BF096074(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  return sub_1BF093D68(a1, *(v1 + 16));
}

uint64_t sub_1BF096098()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1BF093ED8();
}

uint64_t get_enum_tag_for_layout_string_13TeaFoundation12PromiseErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t dispatch thunk of Promise.__allocating_init(resolver:)()
{
  return (*(v0 + 112))();
}

{
  return (*(v0 + 120))();
}

uint64_t sub_1BF096224(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(a3 + 8);
  return sub_1BF0954B4(a1);
}

uint64_t sub_1BF09626C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1BF096360;

  return v6(v2 + 32);
}

uint64_t sub_1BF096360()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v2 = v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  *v4 = *(v2 + 32);
  OUTLINED_FUNCTION_9();

  return v7();
}

uint64_t sub_1BF096460()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_123();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_0(v1);

  return v4(v3);
}

uint64_t sub_1BF0964F0()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_123();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_0(v1);

  return v4(v3);
}

uint64_t objectdestroy_230Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 24);

  sub_1BF000FDC(*(v1 + 32), *(v1 + 40), a1);
  OUTLINED_FUNCTION_33_1();

  return MEMORY[0x1EEE6BDD0](v5, v6, v7);
}

uint64_t objectdestroy_163Tm(void (*a1)(void, void))
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 24);

  a1(*(v1 + 32), *(v1 + 40));
  OUTLINED_FUNCTION_33_1();

  return MEMORY[0x1EEE6BDD0](v5, v6, v7);
}

void sub_1BF096708(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BF17AE6C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1BF096764()
{
  v1 = OUTLINED_FUNCTION_35_1();
  sub_1BF09704C(v1, v2, v3);
  OUTLINED_FUNCTION_12(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_36();
  v8(v7);
  return v0;
}

uint64_t sub_1BF0967E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1BF09704C(0, a2, a3);
  OUTLINED_FUNCTION_12(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void sub_1BF09683C()
{
  if (!qword_1EBDCAA00)
  {
    sub_1BF0035CC(255, &qword_1ED8ECC00, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for Seal();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDCAA00);
    }
  }
}

uint64_t sub_1BF096904(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6[0] = a1;
  v6[1] = a2;
  return v3(v6);
}

uint64_t sub_1BF09693C(uint64_t a1, uint64_t a2)
{
  sub_1BF096708(0, &qword_1ED8ED400, &qword_1ED8ED408, &protocol descriptor for RequestSigning, sub_1BEFE6EA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF0969CC(uint64_t a1)
{
  sub_1BF096708(0, &qword_1ED8ED400, &qword_1ED8ED408, &protocol descriptor for RequestSigning, sub_1BEFE6EA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF096A54(uint64_t a1)
{
  v3 = v1[3];
  v14 = v1[2];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v9 = v1[13];
  v8 = v1[14];
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_4(v10);
  *v11 = v12;
  v11[1] = sub_1BF035DD4;

  return sub_1BF0F7AF4(a1, v14, v3, (v1 + 4), v4, v5, v6, v7);
}

id sub_1BF096B3C(id result, id a2, char a3)
{
  if (a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  return result;
}

void sub_1BF096B5C(void *a1, id a2, char a3)
{
  if (a3 != -1)
  {
    sub_1BF096B70(a1, a2, a3);
  }
}

void sub_1BF096B70(void *a1, id a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t objectdestroy_181Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = OUTLINED_FUNCTION_12_1();
  sub_1BF09704C(v5, v6, v7);
  OUTLINED_FUNCTION_103(v8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  v13 = *(v3 + 16);

  v14 = *(v3 + 24);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v16 = a3(0);
    OUTLINED_FUNCTION_12(v16);
    (*(v17 + 8))(v3 + v10);
  }

  v18 = OUTLINED_FUNCTION_88();

  return MEMORY[0x1EEE6BDD0](v18, v19, v20);
}

uint64_t sub_1BF096CA0()
{
  v1 = OUTLINED_FUNCTION_35_1();
  sub_1BF09704C(v1, v2, v3);
  OUTLINED_FUNCTION_12(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_36();
  v8(v7);
  return v0;
}

void sub_1BF096D24()
{
  v1 = OUTLINED_FUNCTION_12_1();
  sub_1BF09704C(v1, v2, v3);
  OUTLINED_FUNCTION_68(v4);
  v6 = *(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  sub_1BF0953F0();
}

id sub_1BF096E40(id result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {

    return result;
  }

  else if (!a3)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  return result;
}

void sub_1BF096E9C(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_1BF096EB0(a1, a2, a3);
  }
}

void sub_1BF096EB0(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

void sub_1BF096F0C()
{
  if (!qword_1EBDCA950[0])
  {
    sub_1BF027B68();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EBDCA950);
    }
  }
}

void sub_1BF096FB0()
{
  if (!qword_1ED8E9C80)
  {
    type metadata accessor for AuthToken();
    v0 = sub_1BF179E9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8E9C80);
    }
  }
}

void sub_1BF09704C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Seal.Resolution();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BF097124(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 == 1)
  {
    return a1;
  }

  if (!a3)
  {
    return sub_1BF014DC0(a1, a2);
  }

  return a1;
}

void sub_1BF097140(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_1BF097154(a1, a2, a3);
  }
}

void sub_1BF097154(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
    sub_1BF014E18(a1, a2);
  }
}

uint64_t objectdestroy_191Tm(void (*a1)(void, void, void))
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 24);

  a1(*(v1 + 32), *(v1 + 40), *(v1 + 48));
  OUTLINED_FUNCTION_50_0();

  return MEMORY[0x1EEE6BDD0](v5, v6, v7);
}

uint64_t sub_1BF097228()
{
  v1 = OUTLINED_FUNCTION_35_1();
  sub_1BF096708(v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_12(v6);
  v8 = *(v7 + 40);
  v9 = OUTLINED_FUNCTION_36();
  v10(v9);
  return v0;
}

void *sub_1BF097280@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *(a1 + 8);
  result = (*a1)(&v7, v4);
  *a2 = v7;
  return result;
}

uint64_t sub_1BF0972D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_20(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_1BF097330@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  result = v3();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BF097394@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  result = v3();
  *a1 = result & 1;
  return result;
}

uint64_t objectdestroy_249Tm()
{
  v1 = v0[4];

  if (v0[5])
  {
    v2 = v0[6];
  }

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

void *sub_1BF0974B8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 32);
  v5 = *(a1 + 8);
  result = (*a1)(&v7, v4);
  *a2 = v7;
  return result;
}

uint64_t objectdestroy_127Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = OUTLINED_FUNCTION_60();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t objectdestroy_285Tm()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t objectdestroy_200Tm()
{
  v1 = *(v0 + 32);

  v2 = OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF097658(uint64_t *a1)
{
  v2 = v1[4];
  v3 = v1[6];
  v4 = *(*(v1[3] - 8) + 80);
  v5 = *a1;
  return sub_1BF179EAC();
}

uint64_t sub_1BF09788C(uint64_t a1, void *a2)
{
  v5 = *(v2 + 56);
  result = (*(v2 + 48))(a1, *(v2 + 64));
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_116()
{

  return sub_1BF097228();
}

uint64_t OUTLINED_FUNCTION_121()
{
}

uint64_t OUTLINED_FUNCTION_134()
{
  Promise.then<A>(on:closure:)();
}

uint64_t CodableResult.Error.hashValue.getter()
{
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](0);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF097B9C()
{
  sub_1BF17BB6C();
  CodableResult.Error.hash(into:)();
  return sub_1BF17BB9C();
}

uint64_t CodableResult.valueOrNil()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_2_3();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  (*(v5 + 16))(v10 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 8))(v11, a1);
    v12 = *(a1 + 16);
    v13 = a2;
    v14 = 1;
  }

  else
  {
    v15 = *(a1 + 16);
    (*(*(v15 - 8) + 32))(a2, v11, v15);
    v13 = a2;
    v14 = 0;
    v12 = v15;
  }

  return __swift_storeEnumTagSinglePayload(v13, v14, 1, v12);
}

uint64_t CodableResult.init(value:error:)@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v30[0] = a4;
  v30[1] = a5;
  v10 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v30 - v16;
  OUTLINED_FUNCTION_2_3();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_0();
  v25 = (v24 - v23);
  (*(v12 + 16))(v17, a1, v10);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, a3);
  v27 = *(v12 + 8);
  if (EnumTagSinglePayload == 1)
  {
    v27(v17, v10);
    if (!a2)
    {
      OUTLINED_FUNCTION_5_6();
      type metadata accessor for CodableResult.Error();
      swift_getWitnessTable();
      a2 = swift_allocError();
    }

    v27(a1, v10);
    *a6 = a2;
    OUTLINED_FUNCTION_5_6();
    type metadata accessor for CodableResult();
  }

  else
  {
    v27(a1, v10);

    v28 = *(v19 + 32);
    v28(v25, v17, a3);
    v28(a6, v25, a3);
    type metadata accessor for CodableResult();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t CodableResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a5;
  OUTLINED_FUNCTION_2_3();
  v47 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_0();
  v49 = v14 - v13;
  type metadata accessor for CodableResult.CodingKeys();
  OUTLINED_FUNCTION_2_9();
  swift_getWitnessTable();
  sub_1BF17B63C();
  OUTLINED_FUNCTION_2_3();
  v50 = v16;
  v51 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - v20;
  v53 = a4;
  *&v54 = a3;
  v22 = type metadata accessor for CodableResult();
  OUTLINED_FUNCTION_2_3();
  v48 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v46 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v30 = v55;
  sub_1BF17BBDC();
  if (!v30)
  {
    v46 = v28;
    v55 = v22;
    v31 = v50;
    v32 = v52;
    type metadata accessor for CodableResult.ResultType();
    v59 = 0;
    swift_getWitnessTable();
    v33 = v51;
    sub_1BF17B5FC();
    v34 = v21;
    v35 = v31;
    if (v56)
    {
      v59 = 1;
      sub_1BF0983D4();
      sub_1BF17B5FC();
      v54 = v56;
      v36 = v57;
      v37 = v58;
      sub_1BF098428();
      v38 = swift_allocError();
      v39 = v34;
      v40 = v38;
      *v41 = v54;
      *(v41 + 16) = v36;
      *(v41 + 24) = v37;
      (*(v35 + 8))(v39, v33);
      v42 = v46;
      *v46 = v40;
    }

    else
    {
      LOBYTE(v56) = 1;
      v43 = v49;
      sub_1BF17B5FC();
      (*(v35 + 8))(v34, v33);
      v42 = v46;
      (*(v47 + 32))(v46, v43, a2);
    }

    v44 = v55;
    swift_storeEnumTagMultiPayload();
    (*(v48 + 32))(v32, v42, v44);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1BF0983D4()
{
  result = qword_1EBDCB760;
  if (!qword_1EBDCB760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB760);
  }

  return result;
}

unint64_t sub_1BF098428()
{
  result = qword_1EBDCB768;
  if (!qword_1EBDCB768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCB768);
  }

  return result;
}

uint64_t CodableResult.encode(to:)(void *a1, void *a2)
{
  v5 = a2[2];
  OUTLINED_FUNCTION_2_3();
  v38 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  v39 = v11 - v10;
  OUTLINED_FUNCTION_2_3();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_0();
  v19 = (v18 - v17);
  v20 = a2[3];
  v40 = v21;
  v37 = a2[4];
  type metadata accessor for CodableResult.CodingKeys();
  OUTLINED_FUNCTION_2_9();
  swift_getWitnessTable();
  sub_1BF17B6CC();
  OUTLINED_FUNCTION_2_3();
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v24);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF17BC1C();
  (*(v13 + 16))(v19, v41, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v19;
    v27 = *v19;
    v28 = sub_1BF17910C();
    v29 = [v28 domain];
    sub_1BF17A0AC();

    [v28 code];
    sub_1BF0E4484(v28);

    OUTLINED_FUNCTION_6_9();
    if (v2)
    {
      v30 = OUTLINED_FUNCTION_3_7();
      v31(v30);
    }

    else
    {

      sub_1BF098FB8();
      sub_1BF17B69C();
      v32 = OUTLINED_FUNCTION_3_7();
      v33(v32);
    }
  }

  else
  {
    (*(v38 + 32))(v39, v19, v40);
    OUTLINED_FUNCTION_6_9();

    if (!v2)
    {
      sub_1BF17B69C();
    }

    (*(v38 + 8))(v39, v40);
    v35 = OUTLINED_FUNCTION_3_7();
    return v36(v35);
  }
}

uint64_t sub_1BF098868(char a1)
{
  if (a1)
  {
    return 0x64656C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1BF09889C()
{
  v0 = sub_1BF17B57C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF09890C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1BF098980(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1BF0989EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1BF098A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1BF098BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1BF098C3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1BF098CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1BF098D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1BF098D94@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  result = sub_1BF09889C();
  *a3 = result;
  return result;
}

uint64_t sub_1BF098DEC@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X2>, uint64_t *a3@<X8>)
{
  result = a2(*v3, a1[2], a1[3], a1[4]);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_1BF098E2C(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1BF057100(*v1);
}

uint64_t sub_1BF098E40@<X0>(void *a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  result = sub_1BF0988EC();
  *a2 = result;
  return result;
}

uint64_t sub_1BF098E74(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  return sub_1BF077B74();
}

uint64_t sub_1BF098EA0@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  result = sub_1BF077B6C();
  *a2 = result;
  return result;
}

uint64_t sub_1BF098ED4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1BF098F28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

unint64_t sub_1BF098FB8()
{
  result = qword_1EBDCB770[0];
  if (!qword_1EBDCB770[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBDCB770);
  }

  return result;
}

uint64_t sub_1BF099030(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1BF099154(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

_BYTE *sub_1BF099318(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1BF0993B4(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BF099524()
{
  sub_1BF179F3C();
}

uint64_t sub_1BF0995B4()
{
  sub_1BF179F3C();
}

uint64_t sub_1BF099674()
{
  sub_1BF179F3C();
}

uint64_t sub_1BF0996BC()
{
  sub_1BF179F3C();
}

uint64_t sub_1BF09977C()
{
  sub_1BF179F3C();
}

uint64_t sub_1BF0997E4()
{
  sub_1BF179F3C();
}

uint64_t sub_1BF099850()
{
  sub_1BF179F3C();
}

uint64_t sub_1BF099898(uint64_t a1, char a2)
{
  v2 = qword_1BF180250[a2];
  sub_1BF179F3C();
}

void sub_1BF0998D8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = a1;
LABEL_2:
  for (i = v9; a2 != i; ++i)
  {
    if (a2 < a1)
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    if (v9 < a1)
    {
      goto LABEL_17;
    }

    if (i >= a2)
    {
      goto LABEL_18;
    }

    swift_beginAccess();
    v11 = *a3;
    if (*(*a3 + 16))
    {
      v12 = sub_1BF00088C(i);
      if (v13)
      {
        v14 = *(*(v11 + 56) + v12);
        swift_endAccess();
        v19 = v4;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = *(v8 + 16);
          sub_1BF060154();
          v8 = v17;
        }

        v15 = *(v8 + 16);
        if (v15 >= *(v8 + 24) >> 1)
        {
          sub_1BF060154();
          v8 = v18;
        }

        v9 = i + 1;
        *(v8 + 16) = v15 + 1;
        *(v8 + v15 + 32) = v14;
        v4 = v19;
        goto LABEL_2;
      }
    }

    swift_endAccess();
  }
}

uint64_t sub_1BF099A54(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v7 = result;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = result;
LABEL_2:
  for (i = v9; ; ++i)
  {
    if (a2 == i)
    {
      return v8;
    }

    if (a2 < v7)
    {
      break;
    }

    if (v9 < v7)
    {
      goto LABEL_17;
    }

    if (i >= a2)
    {
      goto LABEL_18;
    }

    swift_beginAccess();
    v11 = *a3;
    if (*(*a3 + 16))
    {
      v12 = sub_1BF00088C(i);
      if (v13)
      {
        v14 = *(*(v11 + 56) + v12);
        swift_endAccess();
        result = swift_isUniquelyReferenced_nonNull_native();
        v17 = v4;
        if ((result & 1) == 0)
        {
          result = sub_1BF0A6B98(0, *(v8 + 16) + 1, 1, v8);
          v8 = result;
        }

        v16 = *(v8 + 16);
        v15 = *(v8 + 24);
        if (v16 >= v15 >> 1)
        {
          result = sub_1BF0A6B98((v15 > 1), v16 + 1, 1, v8);
          v8 = result;
        }

        v9 = i + 1;
        *(v8 + 16) = v16 + 1;
        *(v8 + v16 + 32) = v14;
        v4 = v17;
        goto LABEL_2;
      }
    }

    result = swift_endAccess();
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t (*sub_1BF099BB0())(void)
{
  v1 = *(v0 + 16);
  UnfairLock.lock()();
  if (*(v0 + 24))
  {
    v2 = nullsub_1;
  }

  else
  {
    *(v0 + 24) = 1;
    v2 = sub_1BF094894(0, 0, 2);
  }

  os_unfair_lock_unlock(*(v1 + 16));
  return v2;
}

uint64_t (*sub_1BF099C54(void *a1, uint64_t a2, uint64_t (*a3)(char *)))(void)
{
  sub_1BF0A8950(0, a1);
  v7 = OUTLINED_FUNCTION_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = *(v3 + 16);
  UnfairLock.lock()();
  if (*(v3 + 24))
  {
    v13 = nullsub_1;
  }

  else
  {
    *(v3 + 24) = 1;
    OUTLINED_FUNCTION_110_0();
    swift_storeEnumTagMultiPayload();
    v13 = a3(v11);
    sub_1BF0A8340(v11, a1);
  }

  os_unfair_lock_unlock(*(v12 + 16));
  return v13;
}

uint64_t (*sub_1BF099D78(uint64_t (*a1)(void, uint64_t)))(void)
{
  v3 = *(v1 + 16);
  UnfairLock.lock()();
  if (*(v1 + 24))
  {
    v4 = nullsub_1;
  }

  else
  {
    *(v1 + 24) = 1;
    v4 = a1(0, 2);
  }

  os_unfair_lock_unlock(*(v3 + 16));
  return v4;
}

void sub_1BF099E08()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_113_0(v1, v2, v3, v4);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  OUTLINED_FUNCTION_39_1();

  v5 = OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_14_0();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_9_9(v6);

  v7 = OUTLINED_FUNCTION_3_8();
  sub_1BF09BFD8(v7, v8, v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_19_5();

  v0(v14);
  OUTLINED_FUNCTION_18_4();
  if (*(v5 + 16))
  {
    v15 = *(v5 + 16);

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BF099F10()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_0_14();
  sub_1BEFEC638(0, v1, &type metadata for RemoteNotificationFetchResult, v2);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  OUTLINED_FUNCTION_96_0();
  v3 = sub_1BEFFFF04();
  OUTLINED_FUNCTION_14_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_119_0(v4);

  v5 = OUTLINED_FUNCTION_105_0();
  sub_1BF09C1F8(v5, v6, v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_31_0();

  v0(v12);
  OUTLINED_FUNCTION_26_4();
  if (*(v3 + 16))
  {
    v13 = *(v3 + 16);

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BF09A048(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*(v3 + 16) + 16);
  sub_1BEFEC638(0, &qword_1ED8EDC50, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for DeferredPromise);
  swift_allocObject();

  v8 = sub_1BEFFFF04();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;
  swift_retain_n();

  v10 = sub_1BF09C40C(a1, sub_1BF0A90F0, v8, sub_1BF02E2A4, v8, sub_1BF0A8F0C, v9);

  (v10)(v11);
  result = swift_beginAccess();
  v13 = *(v8 + 16);
  if (v13)
  {
    v14 = *(v8 + 16);

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BF09A1F4()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_115_0(v1, v2);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  OUTLINED_FUNCTION_96_0();
  v3 = OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_14_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_9_9(v4);

  v5 = OUTLINED_FUNCTION_3_8();
  sub_1BF09C62C(v5, v6, v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_19_5();

  v0(v12);
  OUTLINED_FUNCTION_18_4();
  if (*(v3 + 16))
  {
    v13 = *(v3 + 16);

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BF09A304()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_113_0(v1, v2, v3, v4);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  OUTLINED_FUNCTION_39_1();

  v5 = OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_14_0();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_9_9(v6);

  v7 = OUTLINED_FUNCTION_3_8();
  sub_1BF09C998(v7, v8, v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_19_5();

  v0(v14);
  OUTLINED_FUNCTION_18_4();
  if (*(v5 + 16))
  {
    v15 = *(v5 + 16);

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BF09A40C()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_115_0(v1, v2);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  OUTLINED_FUNCTION_96_0();
  v3 = OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_14_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_9_9(v4);

  v5 = OUTLINED_FUNCTION_3_8();
  sub_1BF09C998(v5, v6, v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_19_5();

  v0(v12);
  OUTLINED_FUNCTION_18_4();
  if (*(v3 + 16))
  {
    v13 = *(v3 + 16);

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BF09A51C()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_115_0(v1, &qword_1EBDCAC08);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  OUTLINED_FUNCTION_96_0();
  v2 = OUTLINED_FUNCTION_54_3();
  OUTLINED_FUNCTION_14_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_9_9(v3);

  v4 = OUTLINED_FUNCTION_3_8();
  sub_1BF09C62C(v4, v5, v6, v7, v8, v9, v10);
  OUTLINED_FUNCTION_19_5();

  v0(v11);
  OUTLINED_FUNCTION_18_4();
  if (*(v2 + 16))
  {
    v12 = *(v2 + 16);

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BF09A64C()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_113_0(v1, v2, v3, v4);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  OUTLINED_FUNCTION_39_1();

  v5 = OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_14_0();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_9_9(v6);

  v7 = OUTLINED_FUNCTION_3_8();
  sub_1BF09C62C(v7, v8, v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_19_5();

  v0(v14);
  OUTLINED_FUNCTION_18_4();
  if (*(v5 + 16))
  {
    v15 = *(v5 + 16);

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BF09A754()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_115_0(v1, v2);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  OUTLINED_FUNCTION_96_0();
  v3 = OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_14_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_9_9(v4);

  v5 = OUTLINED_FUNCTION_3_8();
  sub_1BF09CD10(v5);
  OUTLINED_FUNCTION_19_5();

  v0(v6);
  OUTLINED_FUNCTION_18_4();
  if (*(v3 + 16))
  {
    v7 = *(v3 + 16);

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BF09A864()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_115_0(v1, &unk_1EBDCB9C8);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  OUTLINED_FUNCTION_96_0();
  v2 = OUTLINED_FUNCTION_54_3();
  OUTLINED_FUNCTION_14_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_9_9(v3);

  v4 = OUTLINED_FUNCTION_3_8();
  sub_1BF09C62C(v4, v5, v6, v7, v8, v9, v10);
  OUTLINED_FUNCTION_19_5();

  v0(v11);
  OUTLINED_FUNCTION_18_4();
  if (*(v2 + 16))
  {
    v12 = *(v2 + 16);

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BF09A994()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_115_0(v1, &unk_1EBDCB9A8);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  OUTLINED_FUNCTION_96_0();
  v2 = OUTLINED_FUNCTION_54_3();
  OUTLINED_FUNCTION_14_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_9_9(v3);

  v4 = OUTLINED_FUNCTION_3_8();
  sub_1BF09D558(v4, v5, v6, v7, v8, v9, v10);
  OUTLINED_FUNCTION_19_5();

  v0(v11);
  OUTLINED_FUNCTION_18_4();
  if (*(v2 + 16))
  {
    v12 = *(v2 + 16);

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BF09AAC4()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_113_0(v1, v2, v3, v4);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  OUTLINED_FUNCTION_39_1();

  v5 = OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_14_0();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_9_9(v6);

  v7 = OUTLINED_FUNCTION_3_8();
  sub_1BF09D76C(v7, v8, v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_19_5();

  v0(v14);
  OUTLINED_FUNCTION_18_4();
  if (*(v5 + 16))
  {
    v15 = *(v5 + 16);

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BF09ABCC()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_108_0();
  OUTLINED_FUNCTION_0_14();
  sub_1BEFEC638(0, v1, &type metadata for BackgroundFetchResult, v2);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  OUTLINED_FUNCTION_96_0();
  v3 = sub_1BEFFFF04();
  OUTLINED_FUNCTION_14_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_119_0(v4);

  v5 = OUTLINED_FUNCTION_105_0();
  sub_1BF09DB5C(v5, v6, v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_31_0();

  v0(v12);
  OUTLINED_FUNCTION_26_4();
  if (*(v3 + 16))
  {
    v13 = *(v3 + 16);

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BF09AD04()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_113_0(v1, v2, v3, v4);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  OUTLINED_FUNCTION_39_1();

  v5 = OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_14_0();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_9_9(v6);

  v7 = OUTLINED_FUNCTION_3_8();
  sub_1BF09D954(v7, v8, v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_19_5();

  v0(v14);
  OUTLINED_FUNCTION_18_4();
  if (*(v5 + 16))
  {
    v15 = *(v5 + 16);

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BF09AE0C()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_113_0(v1, v2, v3, v4);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  OUTLINED_FUNCTION_39_1();

  v5 = OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_14_0();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_9_9(v6);

  v7 = OUTLINED_FUNCTION_3_8();
  sub_1BF09DD70(v7, v8, v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_19_5();

  v0(v14);
  OUTLINED_FUNCTION_18_4();
  if (*(v5 + 16))
  {
    v15 = *(v5 + 16);

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BF09AFC4()
{
  OUTLINED_FUNCTION_82_1();
  if (v1)
  {
    v3 = v2;

    v4 = OUTLINED_FUNCTION_17_2();
    sub_1BF09E034(v4, v5, v3);

    v6 = *(v0 + 24);
  }

  *(v0 + 24) = 0;
}

uint64_t sub_1BF09B040()
{
  OUTLINED_FUNCTION_82_1();
  if (v1)
  {
    OUTLINED_FUNCTION_95();

    sub_1BF09DFB4(v2);

    v3 = *(v0 + 24);
  }

  *(v0 + 24) = 0;
}

uint64_t sub_1BF09B134(char a1, void (*a2)(char *))
{
  v3 = a1;
  a2(&v3);
  return sub_1BF00108C();
}

uint64_t sub_1BF09B260(uint64_t a1, void (*a2)(__int128 *__return_ptr, uint64_t *))
{
  v4 = a1;
  a2(&v3, &v4);
  return sub_1BF09BDB4(v3);
}

uint64_t sub_1BF09B380(uint64_t a1, void (*a2)(__int128 *__return_ptr, uint64_t *))
{
  v4 = a1;
  a2(&v3, &v4);
  sub_1BF000C1C();
}

uint64_t sub_1BF09B49C(uint64_t a1, void (*a2)(__int128 *__return_ptr, uint64_t *))
{
  v4 = a1;
  a2(&v3, &v4);
  sub_1BF09BE68();
}

uint64_t sub_1BF09B5D4(uint64_t a1, void (*a2)(__int128 *__return_ptr, uint64_t *))
{
  v4 = a1;
  a2(&v3, &v4);
  sub_1BF000C1C();
}

uint64_t sub_1BF09B714(uint64_t a1, void (*a2)(uint64_t *))
{
  v4 = sub_1BF17923C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1;
  a2(&v11);
  sub_1BF09BF00();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BF09B90C(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v4[0] = a1;
  v4[1] = a2;
  a3(v4);
  return sub_1BF00108C();
}

uint64_t sub_1BF09BA38(uint64_t a1, void (*a2)(__int128 *__return_ptr, uint64_t *))
{
  v4 = a1;
  a2(&v3, &v4);
  return sub_1BF09BF6C(v3);
}

uint64_t sub_1BF09BB58(char a1, void (*a2)(char *))
{
  v3 = a1 & 1;
  a2(&v3);
  return sub_1BF00108C();
}

uint64_t sub_1BF09BC88(uint64_t a1, void (*a2)(uint64_t *))
{
  v3 = a1;
  a2(&v3);
  return sub_1BF00108C();
}

uint64_t sub_1BF09BDB4(void (*a1)(uint64_t))
{
  if (*(v1 + 24))
  {

    sub_1BF0FCB20(a1);

    v3 = *(v1 + 24);
  }

  *(v1 + 24) = 0;
}

uint64_t sub_1BF09BE68()
{
  OUTLINED_FUNCTION_82_1();
  if (v1)
  {
    OUTLINED_FUNCTION_39_1();

    v2 = OUTLINED_FUNCTION_41_0();
    sub_1BF0FCC7C(v2, v3);

    v4 = *(v0 + 24);
  }

  *(v0 + 24) = 0;
}

uint64_t sub_1BF09BF00()
{
  OUTLINED_FUNCTION_82_1();
  if (v1)
  {
    v4 = v3;
    OUTLINED_FUNCTION_39_1();

    v4(v2);

    v5 = *(v0 + 24);
  }

  *(v0 + 24) = 0;
}

uint64_t sub_1BF09BF6C(char a1)
{
  if (*(v1 + 24))
  {

    sub_1BF0FCE6C((a1 & 1));

    v3 = *(v1 + 24);
  }

  *(v1 + 24) = 0;
}

void (*sub_1BF09BFD8(void *a1, void (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v25 = *(v7 + 16);
  UnfairLock.lock()();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = a2;
  v15[8] = a3;
  v16 = a1;

  sub_1BEFF6F10();
  v18 = v17;
  v20 = v19;

  os_unfair_lock_unlock(*(v25 + 16));
  if (!v20)
  {
    v21 = sub_1BF0A32C0(v18, 0, v16, a6, a7);
LABEL_7:
    v23 = v21;
    goto LABEL_8;
  }

  if (v20 != 1)
  {
    if (v20 != 2)
    {
      return nullsub_1;
    }

    v21 = sub_1BF006210(v16, a2, a3);
    goto LABEL_7;
  }

  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = v18;

  sub_1BEFF77C4(v18, 1);
  v23 = sub_1BF006210(v16, sub_1BF02E21C, v22);

LABEL_8:
  sub_1BEFF77B0(v18, v20);
  return v23;
}

void (*sub_1BF09C1F8(void *a1, void (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v25 = *(v7 + 16);
  UnfairLock.lock()();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = a2;
  v15[8] = a3;
  v16 = a1;

  sub_1BF003C20();
  v18 = v17;
  v20 = v19;

  os_unfair_lock_unlock(*(v25 + 16));
  if (!v20)
  {
    v21 = sub_1BF0A34A0(v18, 0, v16, a6, a7);
LABEL_7:
    v23 = v21;
    goto LABEL_8;
  }

  if (v20 != 1)
  {
    if (v20 != 2)
    {
      return nullsub_1;
    }

    v21 = sub_1BF006210(v16, a2, a3);
    goto LABEL_7;
  }

  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = v18;

  sub_1BF0019A0(v18, 1);
  v23 = sub_1BF006210(v16, sub_1BF02E21C, v22);

LABEL_8:
  sub_1BF001964(v18, v20);
  return v23;
}

void (*sub_1BF09C40C(void *a1, void (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v21 = *(v7 + 16);
  UnfairLock.lock()();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = a2;
  v15[8] = a3;
  v16 = a1;

  sub_1BF0A31A4();

  os_unfair_lock_unlock(*(v21 + 16));
  if (!v23)
  {
    v17 = sub_1BF0A368C(v22, 0, v16, a6, a7);
LABEL_7:
    v19 = v17;
    goto LABEL_9;
  }

  if (v23 != 1)
  {
    if (v23 != 2)
    {
      v19 = nullsub_1;
      goto LABEL_9;
    }

    v17 = sub_1BF006210(v16, a2, a3);
    goto LABEL_7;
  }

  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = v22;

  sub_1BEFF77C4(v22, 1);
  v19 = sub_1BF006210(v16, sub_1BF02E21C, v18);

LABEL_9:
  sub_1BEFF77B0(v22, v23);
  return v19;
}

void sub_1BF09C7B4()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_23_3(v3, v4, v5);
  OUTLINED_FUNCTION_14_6();
  sub_1BF0A82D4(0, v6);
  v8 = OUTLINED_FUNCTION_68(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_28_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_69();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_36_1(v12);
  OUTLINED_FUNCTION_88_0();

  v13 = OUTLINED_FUNCTION_68_1();
  sub_1BF0A26E8(v13, v14, v15);

  os_unfair_lock_unlock(*(v2 + 16));
  OUTLINED_FUNCTION_117_0();
  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_87_0(v16);
  if (v17)
  {
    OUTLINED_FUNCTION_14_6();
    sub_1BF0A8A10(v0, v18);
    OUTLINED_FUNCTION_10_10();
  }

  else
  {
    OUTLINED_FUNCTION_132_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        OUTLINED_FUNCTION_53_2();
        sub_1BF0A8340(v1, qword_1ED8E9E18);
        v20 = OUTLINED_FUNCTION_70_0();
        sub_1BF0A55F4(v20, v21, v22, v23);
        OUTLINED_FUNCTION_55_1();
        v24 = OUTLINED_FUNCTION_100();
      }

      else
      {
        OUTLINED_FUNCTION_116_0();
        OUTLINED_FUNCTION_55_1();
        OUTLINED_FUNCTION_14_6();
        v24 = v0;
      }

      sub_1BF0A8A10(v24, v25);
    }

    else
    {
      v26 = OUTLINED_FUNCTION_71_0();
      sub_1BF0A3A58(v26, v27, v28, v29);
      OUTLINED_FUNCTION_55_1();
      OUTLINED_FUNCTION_53_2();
      sub_1BF0A8A10(v0, v30);
      v31 = OUTLINED_FUNCTION_80_1();
      sub_1BF0A8340(v31, v32);
    }
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_26_2();
}

void (*sub_1BF09C998(void *a1, void (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v25 = *(v7 + 16);
  UnfairLock.lock()();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = a2;
  v15[8] = a3;
  v16 = a1;

  sub_1BF0A25FC();
  v18 = v17;
  v20 = v19;

  os_unfair_lock_unlock(*(v25 + 16));
  if (!v20)
  {
    v21 = sub_1BF0A3CEC(v18, 0, v16, a6, a7);
LABEL_7:
    v23 = v21;
    goto LABEL_8;
  }

  if (v20 != 1)
  {
    if (v20 != 2)
    {
      return nullsub_1;
    }

    v21 = sub_1BF006210(v16, a2, a3);
    goto LABEL_7;
  }

  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = v18;

  sub_1BF0019A0(v18, 1);
  v23 = sub_1BF006210(v16, sub_1BF02E21C, v22);

LABEL_8:
  sub_1BF001964(v18, v20);
  return v23;
}

void sub_1BF09CEBC()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_23_3(v3, v4, v5);
  OUTLINED_FUNCTION_13_7();
  sub_1BF0A82D4(0, v6);
  v8 = OUTLINED_FUNCTION_68(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_28_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_69();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_36_1(v12);
  OUTLINED_FUNCTION_88_0();

  v13 = OUTLINED_FUNCTION_68_1();
  sub_1BF0A2A88(v13, v14, v15);

  os_unfair_lock_unlock(*(v2 + 16));
  OUTLINED_FUNCTION_117_0();
  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_87_0(v16);
  if (v17)
  {
    OUTLINED_FUNCTION_13_7();
    sub_1BF0A8A10(v0, v18);
    OUTLINED_FUNCTION_10_10();
  }

  else
  {
    OUTLINED_FUNCTION_132_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        OUTLINED_FUNCTION_52_2();
        sub_1BF0A8340(v1, &qword_1EBDCAA58);
        v20 = OUTLINED_FUNCTION_70_0();
        sub_1BF0A5914(v20, v21, v22, v23);
        OUTLINED_FUNCTION_55_1();
        v24 = OUTLINED_FUNCTION_100();
      }

      else
      {
        OUTLINED_FUNCTION_116_0();
        OUTLINED_FUNCTION_55_1();
        OUTLINED_FUNCTION_13_7();
        v24 = v0;
      }

      sub_1BF0A8A10(v24, v25);
    }

    else
    {
      v26 = OUTLINED_FUNCTION_71_0();
      sub_1BF0A42B8(v26, v27, v28, v29);
      OUTLINED_FUNCTION_55_1();
      OUTLINED_FUNCTION_52_2();
      sub_1BF0A8A10(v0, v30);
      v31 = OUTLINED_FUNCTION_80_1();
      sub_1BF0A8340(v31, v32);
    }
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_26_2();
}

void sub_1BF09D374()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_23_3(v3, v4, v5);
  OUTLINED_FUNCTION_12_6();
  sub_1BF0A82D4(0, v6);
  v8 = OUTLINED_FUNCTION_68(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_28_3();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_67_1();
  OUTLINED_FUNCTION_69();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_36_1(v12);
  OUTLINED_FUNCTION_88_0();

  v13 = OUTLINED_FUNCTION_68_1();
  sub_1BF0A2E14(v13, v14, v15);

  os_unfair_lock_unlock(*(v2 + 16));
  OUTLINED_FUNCTION_117_0();
  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_87_0(v16);
  if (v17)
  {
    OUTLINED_FUNCTION_12_6();
    sub_1BF0A8A10(v0, v18);
    OUTLINED_FUNCTION_10_10();
  }

  else
  {
    OUTLINED_FUNCTION_132_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        OUTLINED_FUNCTION_51_1();
        sub_1BF0A8340(v1, &qword_1EBDCC220);
        v20 = OUTLINED_FUNCTION_70_0();
        sub_1BF0A5C34(v20, v21, v22, v23);
        OUTLINED_FUNCTION_55_1();
        v24 = OUTLINED_FUNCTION_100();
      }

      else
      {
        OUTLINED_FUNCTION_116_0();
        OUTLINED_FUNCTION_55_1();
        OUTLINED_FUNCTION_12_6();
        v24 = v0;
      }

      sub_1BF0A8A10(v24, v25);
    }

    else
    {
      v26 = OUTLINED_FUNCTION_71_0();
      sub_1BF0A4978(v26, v27, v28, v29);
      OUTLINED_FUNCTION_55_1();
      OUTLINED_FUNCTION_51_1();
      sub_1BF0A8A10(v0, v30);
      v31 = OUTLINED_FUNCTION_80_1();
      sub_1BF0A8340(v31, v32);
    }
  }

  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_26_2();
}

void (*sub_1BF09D558(void *a1, void (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v25 = *(v7 + 16);
  UnfairLock.lock()();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = a2;
  v15[8] = a3;
  v16 = a1;

  sub_1BF003C20();
  v18 = v17;
  v20 = v19;

  os_unfair_lock_unlock(*(v25 + 16));
  if (!v20)
  {
    v21 = sub_1BF0A4C58(v18, 0, v16, a6, a7);
LABEL_7:
    v23 = v21;
    goto LABEL_8;
  }

  if (v20 != 1)
  {
    if (v20 != 2)
    {
      return nullsub_1;
    }

    v21 = sub_1BF006210(v16, a2, a3);
    goto LABEL_7;
  }

  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = v18;

  sub_1BF0019A0(v18, 1);
  v23 = sub_1BF006210(v16, sub_1BF02E21C, v22);

LABEL_8:
  sub_1BF001964(v18, v20);
  return v23;
}

void (*sub_1BF09D76C(void *a1, void (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v15 = *(v7 + 16);
  UnfairLock.lock()();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a6;
  v27 = a4;
  v16[4] = a7;
  v16[5] = a4;
  v17 = a2;
  v18 = a5;
  v16[6] = a5;
  v16[7] = v17;
  v16[8] = a3;
  v19 = a1;

  sub_1BF0A3074(sub_1BF0A8554, v16, &v28);

  os_unfair_lock_unlock(*(v15 + 16));
  v20 = v30;
  if (!v30)
  {
    v21 = sub_1BF0A4E44(v28, v29, 0, v19, a6, a7);
LABEL_7:
    v25 = v21;
    goto LABEL_9;
  }

  if (v30 != 1)
  {
    if (v30 != 2)
    {
      v25 = nullsub_1;
      goto LABEL_9;
    }

    v21 = sub_1BF006210(v19, v17, a3);
    goto LABEL_7;
  }

  v23 = v28;
  v22 = v29;
  v24 = swift_allocObject();
  v24[2] = v27;
  v24[3] = v18;
  v24[4] = v23;

  sub_1BF0A856C(v23, v22, 1);
  v25 = sub_1BF006210(v19, sub_1BF02E21C, v24);

LABEL_9:
  sub_1BF097140(v28, v29, v20);
  return v25;
}

void (*sub_1BF09D954(void *a1, void (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v35 = *(v7 + 16);
  UnfairLock.lock()();
  OUTLINED_FUNCTION_69();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = a2;
  v15[8] = a3;
  v16 = a1;

  sub_1BF0A31A4();

  OUTLINED_FUNCTION_114_0(v17, v18, v19, v20, v21, v22, v23, v24, v32, a6, a4, v35);
  if (!v37)
  {
    v25 = sub_1BF0A5038(v36, 0, v16, v33, a7);
LABEL_7:
    v30 = v25;
    goto LABEL_9;
  }

  if (v37 != 1)
  {
    if (v37 != 2)
    {
      v30 = nullsub_1;
      goto LABEL_9;
    }

    v25 = sub_1BF006210(v16, a2, a3);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_14_0();
  v26 = swift_allocObject();
  v26[2] = v34;
  v26[3] = a5;
  v26[4] = v36;

  sub_1BEFF77C4(v36, 1);
  v27 = OUTLINED_FUNCTION_59_2();
  v30 = sub_1BF006210(v27, v28, v29);

LABEL_9:
  sub_1BEFF77B0(v36, v37);
  return v30;
}

void (*sub_1BF09DB5C(void *a1, void (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v25 = *(v7 + 16);
  UnfairLock.lock()();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = a2;
  v15[8] = a3;
  v16 = a1;

  sub_1BF003C20();
  v18 = v17;
  v20 = v19;

  os_unfair_lock_unlock(*(v25 + 16));
  if (!v20)
  {
    v21 = sub_1BF0A521C(v18, 0, v16, a6, a7);
LABEL_7:
    v23 = v21;
    goto LABEL_8;
  }

  if (v20 != 1)
  {
    if (v20 != 2)
    {
      return nullsub_1;
    }

    v21 = sub_1BF006210(v16, a2, a3);
    goto LABEL_7;
  }

  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = v18;

  sub_1BF0019A0(v18, 1);
  v23 = sub_1BF006210(v16, sub_1BF02E21C, v22);

LABEL_8:
  sub_1BF001964(v18, v20);
  return v23;
}

void (*sub_1BF09DD70(void *a1, void (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v25 = *(v7 + 16);
  UnfairLock.lock()();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = a2;
  v15[8] = a3;
  v16 = a1;

  sub_1BF0A25FC();
  v18 = v17;
  v20 = v19;

  os_unfair_lock_unlock(*(v25 + 16));
  if (!v20)
  {
    v21 = sub_1BF0A5408(v18, 0, v16, a6, a7);
LABEL_7:
    v23 = v21;
    goto LABEL_8;
  }

  if (v20 != 1)
  {
    if (v20 != 2)
    {
      return nullsub_1;
    }

    v21 = sub_1BF006210(v16, a2, a3);
    goto LABEL_7;
  }

  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = v18;

  sub_1BF0A80C8(v18, 1);
  v23 = sub_1BF006210(v16, sub_1BF02DBD4, v22);

LABEL_8:
  sub_1BF0979FC(v18, v20);
  return v23;
}

uint64_t sub_1BF09DFB4(void (*a1)(uint64_t))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 16);

    sub_1BF099D78(a1);
    OUTLINED_FUNCTION_31_0();

    a1(v4);
  }

  return result;
}

uint64_t sub_1BF09E034(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + 16);

    v6 = OUTLINED_FUNCTION_41_0();
    sub_1BF099C54(v6, v7, a3);
    OUTLINED_FUNCTION_31_0();

    a3(v8);
  }

  return result;
}

uint64_t sub_1BF09E0C8()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);

    v2 = sub_1BF099BB0();

    v2(v3);
  }

  return result;
}

uint64_t sub_1BF09E15C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1BF17B86C() & 1) == 0)
  {
    return 0;
  }

  return sub_1BF0D3F88(v2, v3);
}

uint64_t sub_1BF09E1D4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1BF179F3C();
  sub_1BF179F3C();
}

uint64_t sub_1BF09E28C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1BF17BB6C();
  sub_1BF179F3C();
  sub_1BF179F3C();

  return sub_1BF17BB9C();
}

uint64_t sub_1BF09E36C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  sub_1BF17BB6C();
  sub_1BF09E1D4();
  return sub_1BF17BB9C();
}

uint64_t sub_1BF09E3F8(char a1)
{
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](a1 & 1);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF09E45C()
{
  v1 = *v0;
  sub_1BF17BB6C();
  sub_1BF09E3D0(v3, v1);
  return sub_1BF17BB9C();
}

uint64_t StartupTaskManager.__allocating_init()()
{
  v0 = swift_allocObject();
  StartupTaskManager.init()();
  return v0;
}

void sub_1BF09EA68()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v2 = sub_1BF17923C();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v13 = *(v1 + 16);
  v14 = sub_1BF0A8200();
  v22[1] = MEMORY[0x1BFB526E0](v13, v2, v14);
  v15 = *(v1 + 16);
  if (v15)
  {
    v18 = *(v5 + 16);
    v16 = v5 + 16;
    v17 = v18;
    v19 = (*(v16 + 64) + 32) & ~*(v16 + 64);
    v22[0] = v1;
    v20 = v1 + v19;
    v21 = *(v16 + 56);
    do
    {
      v17(v10, v20, v2);
      OUTLINED_FUNCTION_17_2();
      sub_1BF16FC88();
      (*(v16 - 8))(v12, v2);
      v20 += v21;
      --v15;
    }

    while (v15);
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF09EC6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1BF0A84D8();
  v8 = MEMORY[0x1BFB526E0](v2, &type metadata for XPCClass, v3);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 32;
    do
    {
      sub_1BF16FE14(&v7, *(a1 + v5));
      v5 += 8;
      --v4;
    }

    while (v4);

    return v8;
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  return v2;
}

void *StartupTaskManager.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return v0;
}

uint64_t StartupTaskManager.__deallocating_deinit()
{
  StartupTaskManager.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 59, 7);
}

uint64_t sub_1BF09ED74(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(), uint64_t a9)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v13 = swift_allocObject();
      v13[2] = a6;
      v13[3] = a7;
      v13[4] = a1;

      sub_1BEFF779C(a1, 1);
      v14 = sub_1BF006210(a3, sub_1BF02E21C, v13);

      (v14)(v15);
    }

    else
    {
      if (qword_1ED8F0210 != -1)
      {
        swift_once();
      }

      if (off_1ED8F0218 != a3)
      {
        if (qword_1ED8EFB98 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
        {
          if (qword_1ED8EF920 != -1)
          {
            swift_once();
          }

          if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
          {
            v18 = swift_allocObject();
            v18[2] = a3;
            v18[3] = a8;
            v18[4] = a9;
            v19 = a3;
            a8 = sub_1BF097A1C;
          }
        }
      }

      (a8)(v20);
    }
  }

  else
  {

    return sub_1BF0A18B0(a1, 0, a3, a4, a5);
  }
}

uint64_t sub_1BF09EFC4(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(), uint64_t a9)
{
  if (!a2)
  {
    return sub_1BF03DE18(a1, 0, a3, a4, a5, &unk_1F3DBB678, sub_1BF001C08);
  }

  if (a2 == 1)
  {
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a7;
    v13[4] = a1;

    sub_1BF000E90(a1, 1);
    v14 = sub_1BF006210(a3, sub_1BF02E21C, v13);

    (v14)(v15);
  }

  else
  {
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
        {
          v18 = swift_allocObject();
          v18[2] = a3;
          v18[3] = a8;
          v18[4] = a9;
          v19 = a3;
          a8 = sub_1BF097A1C;
        }
      }
    }

    (a8)(v20);
  }
}

uint64_t sub_1BF09F224(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(), uint64_t a9)
{
  if (!a2)
  {
    return sub_1BF03DE18(a1, 0, a3, a4, a5, &unk_1F3DBB830, sub_1BF001C08);
  }

  if (a2 == 1)
  {
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a7;
    v13[4] = a1;

    sub_1BF000E90(a1, 1);
    v14 = sub_1BF006210(a3, sub_1BF02E21C, v13);

    (v14)(v15);
  }

  else
  {
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
        {
          v18 = swift_allocObject();
          v18[2] = a3;
          v18[3] = a8;
          v18[4] = a9;
          v19 = a3;
          a8 = sub_1BF097A1C;
        }
      }
    }

    (a8)(v20);
  }
}

uint64_t sub_1BF09F484(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(), uint64_t a9)
{
  if (!a2)
  {
    return sub_1BF03DE18(a1, 0, a3, a4, a5, &unk_1F3DBB380, sub_1BF001C08);
  }

  if (a2 == 1)
  {
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a7;
    v13[4] = a1;

    sub_1BF000E90(a1, 1);
    v14 = sub_1BF006210(a3, sub_1BF02E21C, v13);

    (v14)(v15);
  }

  else
  {
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
        {
          v18 = swift_allocObject();
          v18[2] = a3;
          v18[3] = a8;
          v18[4] = a9;
          v19 = a3;
          a8 = sub_1BF097A1C;
        }
      }
    }

    (a8)(v20);
  }
}

uint64_t sub_1BF09F6E4(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(), uint64_t a9)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v13 = swift_allocObject();
      v13[2] = a6;
      v13[3] = a7;
      v13[4] = a1;

      sub_1BEFF779C(a1, 1);
      v14 = sub_1BF006210(a3, sub_1BF02E21C, v13);

      (v14)(v15);
    }

    else
    {
      if (qword_1ED8F0210 != -1)
      {
        swift_once();
      }

      if (off_1ED8F0218 != a3)
      {
        if (qword_1ED8EFB98 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
        {
          if (qword_1ED8EF920 != -1)
          {
            swift_once();
          }

          if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
          {
            v18 = swift_allocObject();
            v18[2] = a3;
            v18[3] = a8;
            v18[4] = a9;
            v19 = a3;
            a8 = sub_1BF097A1C;
          }
        }
      }

      (a8)(v20);
    }
  }

  else
  {

    return sub_1BF0A196C(a1, 0, a3, a4, a5);
  }
}

uint64_t sub_1BF09F934(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(), uint64_t a9)
{
  if (!a2)
  {
    return sub_1BF03DE18(a1, 0, a3, a4, a5, &unk_1F3DBAD18, sub_1BF001BC4);
  }

  if (a2 == 1)
  {
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a7;
    v13[4] = a1;

    sub_1BF000E90(a1, 1);
    v14 = sub_1BF006210(a3, sub_1BF02E21C, v13);

    (v14)(v15);
  }

  else
  {
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
        {
          v18 = swift_allocObject();
          v18[2] = a3;
          v18[3] = a8;
          v18[4] = a9;
          v19 = a3;
          a8 = sub_1BF097A1C;
        }
      }
    }

    (a8)(v20);
  }
}

void sub_1BF09FB94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(), uint64_t a8)
{
  v21 = a5;
  v22 = a6;
  sub_1BF0A8950(0, qword_1ED8E9E18);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - v16;
  sub_1BF0A8394();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BF0A8340(v17, qword_1ED8E9E18);
      sub_1BF0A2488(a1, a2, v21, v22, qword_1ED8E9E18, type metadata accessor for AuthToken, &unk_1F3DBB240, sub_1BF02E21C, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
    }

    else
    {
      v19 = sub_1BF006210(a2, a7, a8);
      (v19)(v19, v20);
    }
  }

  else
  {
    sub_1BF0A1A28(a1, a2, a3, a4);
    sub_1BF0A8340(v17, qword_1ED8E9E18);
  }
}

uint64_t sub_1BF09FD50(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(), uint64_t a9)
{
  if (!a2)
  {
    return sub_1BF03DE18(a1, 0, a3, a4, a5, &unk_1F3DBB128, sub_1BF001C08);
  }

  if (a2 == 1)
  {
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a7;
    v13[4] = a1;

    sub_1BF000E90(a1, 1);
    v14 = sub_1BF006210(a3, sub_1BF02E21C, v13);

    (v14)(v15);
  }

  else
  {
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
        {
          v18 = swift_allocObject();
          v18[2] = a3;
          v18[3] = a8;
          v18[4] = a9;
          v19 = a3;
          a8 = sub_1BF097A1C;
        }
      }
    }

    (a8)(v20);
  }
}

uint64_t sub_1BF09FFB0(void *a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(), uint64_t a10)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v15 = swift_allocObject();
      v15[2] = a7;
      v15[3] = a8;
      v15[4] = a1;

      sub_1BF096E40(a1, a2, 1);
      v16 = sub_1BF006210(a4, sub_1BF02E21C, v15);

      (v16)(v17);
    }

    else
    {
      v19 = a9;
      if (qword_1ED8F0210 != -1)
      {
        swift_once();
      }

      if (off_1ED8F0218 != a4)
      {
        if (qword_1ED8EFB98 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EFC18 != a4 || ([objc_opt_self() isMainThread] & 1) == 0)
        {
          if (qword_1ED8EF920 != -1)
          {
            swift_once();
          }

          if (qword_1ED8EF928 != a4 || [objc_opt_self() isMainThread])
          {
            v20 = swift_allocObject();
            v20[2] = a4;
            v20[3] = a9;
            v20[4] = a10;
            v21 = a4;
            v19 = sub_1BF097A1C;
          }
        }
      }

      (v19)(v22);
    }
  }

  else
  {

    return sub_1BF0A1C60(a1, a2, 0, a4, a5, a6);
  }
}

uint64_t sub_1BF0A0208(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(), uint64_t a9)
{
  if (!a2)
  {
    return sub_1BF03DE18(a1, 0, a3, a4, a5, &unk_1F3DBA548, sub_1BF001BC4);
  }

  if (a2 == 1)
  {
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a7;
    v13[4] = a1;

    sub_1BF000E90(a1, 1);
    v14 = sub_1BF006210(a3, sub_1BF02E21C, v13);

    (v14)(v15);
  }

  else
  {
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
        {
          v18 = swift_allocObject();
          v18[2] = a3;
          v18[3] = a8;
          v18[4] = a9;
          v19 = a3;
          a8 = sub_1BF097A1C;
        }
      }
    }

    (a8)(v20);
  }
}

void sub_1BF0A0468(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(), uint64_t a8)
{
  v22 = a5;
  v23 = a6;
  sub_1BF0A8950(0, &qword_1EBDCAA58);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - v16;
  sub_1BF0A8394();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = MEMORY[0x1E6967EC8];
      sub_1BF0A8340(v17, &qword_1EBDCAA58);
      sub_1BF0A2488(a1, a2, v22, v23, &qword_1EBDCAA58, v19, &unk_1F3DBA638, sub_1BF02E21C, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
    }

    else
    {
      v20 = sub_1BF006210(a2, a7, a8);
      (v20)(v20, v21);
    }
  }

  else
  {
    sub_1BF0A1D30(a1, a2, a3, a4);
    sub_1BF0A8340(v17, &qword_1EBDCAA58);
  }
}

uint64_t sub_1BF0A0624(void *a1, void *a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(), uint64_t a10)
{
  if (!a3)
  {
    return sub_1BF0A2238(a1, a2, 0, a4, a5, a6, &unk_1F3DBA750, sub_1BF096B3C, sub_1BF0A84CC);
  }

  if (a3 == 1)
  {
    v15 = swift_allocObject();
    v15[2] = a7;
    v15[3] = a8;
    v15[4] = a1;

    sub_1BF096B3C(a1, a2, 1);
    v16 = sub_1BF006210(a4, sub_1BF02E21C, v15);

    (v16)(v17);
  }

  else
  {
    v19 = a9;
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    if (off_1ED8F0218 != a4)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a4 || ([objc_opt_self() isMainThread] & 1) == 0)
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a4 || [objc_opt_self() isMainThread])
        {
          v20 = swift_allocObject();
          v20[2] = a4;
          v20[3] = a9;
          v20[4] = a10;
          v21 = a4;
          v19 = sub_1BF097A1C;
        }
      }
    }

    (v19)(v22);
  }
}

uint64_t sub_1BF0A08AC(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(), uint64_t a9)
{
  if (!a2)
  {
    return sub_1BF03DE18(a1, 0, a3, a4, a5, &unk_1F3DBAE30, sub_1BF001C08);
  }

  if (a2 == 1)
  {
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a7;
    v13[4] = a1;

    sub_1BF000E90(a1, 1);
    v14 = sub_1BF006210(a3, sub_1BF02E21C, v13);

    (v14)(v15);
  }

  else
  {
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
        {
          v18 = swift_allocObject();
          v18[2] = a3;
          v18[3] = a8;
          v18[4] = a9;
          v19 = a3;
          a8 = sub_1BF097A1C;
        }
      }
    }

    (a8)(v20);
  }
}

void sub_1BF0A0B0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(), uint64_t a8)
{
  v22 = a5;
  v23 = a6;
  sub_1BF0A8950(0, &qword_1EBDCC220);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - v16;
  sub_1BF0A8394();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = MEMORY[0x1E6968FB0];
      sub_1BF0A8340(v17, &qword_1EBDCC220);
      sub_1BF0A2488(a1, a2, v22, v23, &qword_1EBDCC220, v19, &unk_1F3DBAAC0, sub_1BF02E21C, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
    }

    else
    {
      v20 = sub_1BF006210(a2, a7, a8);
      (v20)(v20, v21);
    }
  }

  else
  {
    sub_1BF0A1FB4(a1, a2, a3, a4);
    sub_1BF0A8340(v17, &qword_1EBDCC220);
  }
}

uint64_t sub_1BF0A0CC8(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(), uint64_t a9)
{
  if (!a2)
  {
    return sub_1BF03DE18(a1, 0, a3, a4, a5, &unk_1F3DBAC00, sub_1BF001C08);
  }

  if (a2 == 1)
  {
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a7;
    v13[4] = a1;

    sub_1BF000E90(a1, 1);
    v14 = sub_1BF006210(a3, sub_1BF02E21C, v13);

    (v14)(v15);
  }

  else
  {
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
        {
          v18 = swift_allocObject();
          v18[2] = a3;
          v18[3] = a8;
          v18[4] = a9;
          v19 = a3;
          a8 = sub_1BF097A1C;
        }
      }
    }

    (a8)(v20);
  }
}

uint64_t sub_1BF0A0F28(uint64_t a1, unint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(), uint64_t a10)
{
  if (!a3)
  {
    return sub_1BF0A2238(a1, a2, 0, a4, a5, a6, &unk_1F3DBA9D0, sub_1BF097124, sub_1BF0A84CC);
  }

  if (a3 == 1)
  {
    v15 = swift_allocObject();
    v15[2] = a7;
    v15[3] = a8;
    v15[4] = a1;

    sub_1BF097124(a1, a2, 1);
    v16 = sub_1BF006210(a4, sub_1BF02E21C, v15);

    (v16)(v17);
  }

  else
  {
    v19 = a9;
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    if (off_1ED8F0218 != a4)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a4 || ([objc_opt_self() isMainThread] & 1) == 0)
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a4 || [objc_opt_self() isMainThread])
        {
          v20 = swift_allocObject();
          v20[2] = a4;
          v20[3] = a9;
          v20[4] = a10;
          v21 = a4;
          v19 = sub_1BF097A1C;
        }
      }
    }

    (v19)(v22);
  }
}

uint64_t sub_1BF0A11B0(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(), uint64_t a9)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v13 = swift_allocObject();
      v13[2] = a6;
      v13[3] = a7;
      v13[4] = a1;

      sub_1BEFF779C(a1, 1);
      v14 = sub_1BF006210(a3, sub_1BF02E21C, v13);

      (v14)(v15);
    }

    else
    {
      if (qword_1ED8F0210 != -1)
      {
        swift_once();
      }

      if (off_1ED8F0218 != a3)
      {
        if (qword_1ED8EFB98 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
        {
          if (qword_1ED8EF920 != -1)
          {
            swift_once();
          }

          if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
          {
            v18 = swift_allocObject();
            v18[2] = a3;
            v18[3] = a8;
            v18[4] = a9;
            v19 = a3;
            a8 = sub_1BF097A1C;
          }
        }
      }

      (a8)(v20);
    }
  }

  else
  {

    return sub_1BF0A2300(a1, 0, a3, a4, a5);
  }
}

uint64_t sub_1BF0A1400(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(), uint64_t a9)
{
  if (!a2)
  {
    return sub_1BF03DE18(a1, 0, a3, a4, a5, &unk_1F3DBA368, sub_1BF001C08);
  }

  if (a2 == 1)
  {
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a7;
    v13[4] = a1;

    sub_1BF000E90(a1, 1);
    v14 = sub_1BF006210(a3, sub_1BF02E21C, v13);

    (v14)(v15);
  }

  else
  {
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
        {
          v18 = swift_allocObject();
          v18[2] = a3;
          v18[3] = a8;
          v18[4] = a9;
          v19 = a3;
          a8 = sub_1BF097A1C;
        }
      }
    }

    (a8)(v20);
  }
}

uint64_t sub_1BF0A1660(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(), uint64_t a9)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v13 = swift_allocObject();
      v13[2] = a6;
      v13[3] = a7;
      v13[4] = a1;

      sub_1BF0512E4(a1, 1);
      v14 = sub_1BF006210(a3, sub_1BF02DBD4, v13);

      (v14)(v15);
    }

    else
    {
      if (qword_1ED8F0210 != -1)
      {
        swift_once();
      }

      if (off_1ED8F0218 != a3)
      {
        if (qword_1ED8EFB98 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
        {
          if (qword_1ED8EF920 != -1)
          {
            swift_once();
          }

          if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
          {
            v18 = swift_allocObject();
            v18[2] = a3;
            v18[3] = a8;
            v18[4] = a9;
            v19 = a3;
            a8 = sub_1BF097A1C;
          }
        }
      }

      (a8)(v20);
    }
  }

  else
  {

    return sub_1BF0A23C0(a1, 0, a3, a4, a5);
  }
}

uint64_t sub_1BF0A18B0(uint64_t result, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v9 = result & 1;
    v10 = swift_allocObject();
    *(v10 + 16) = a4;
    *(v10 + 24) = a5;
    *(v10 + 32) = v9;

    v11 = sub_1BF006210(a3, sub_1BF0A8F30, v10);

    (v11)(v12);
  }

  return result;
}

uint64_t sub_1BF0A196C(uint64_t result, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    v10 = swift_allocObject();
    *(v10 + 16) = a4;
    *(v10 + 24) = a5;
    *(v10 + 32) = v9;

    v11 = sub_1BF006210(a3, sub_1BF0A8F30, v10);

    (v11)(v12);
  }

  return result;
}

uint64_t sub_1BF0A1A28(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a2;
  sub_1BF0A8950(0, qword_1ED8E9E18);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  v9 = type metadata accessor for AuthToken();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - v14;
  sub_1BF0A8394();
  if (swift_getEnumCaseMultiPayload())
  {
    result = sub_1BF0A8340(v8, qword_1ED8E9E18);
    __break(1u);
  }

  else
  {
    sub_1BF0A8A64(v8, v15);
    sub_1BF0A8AC8(v15, v13);
    v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v21;
    *(v17 + 24) = a4;
    sub_1BF0A8A64(v13, v17 + v16);

    v18 = sub_1BF006210(v22, sub_1BF0A8CB0, v17);

    (v18)(v19);

    return sub_1BF0A8B2C(v15);
  }

  return result;
}

uint64_t sub_1BF0A1C60(uint64_t result, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    v12 = swift_allocObject();
    v12[2] = a5;
    v12[3] = a6;
    v12[4] = v11;
    v12[5] = a2;

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v13 = sub_1BF006210(a4, sub_1BF0A84CC, v12);

    (v13)(v14);
  }

  return result;
}

uint64_t sub_1BF0A1D30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a2;
  sub_1BF0A8950(0, &qword_1EBDCAA58);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v9 = sub_1BF178C6C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  sub_1BF0A8394();
  if (swift_getEnumCaseMultiPayload())
  {
    result = sub_1BF0A8340(v8, &qword_1EBDCAA58);
    __break(1u);
  }

  else
  {
    v16 = *(v10 + 32);
    v16(v15, v8, v9);
    (*(v10 + 16))(v13, v15, v9);
    v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v22;
    *(v18 + 24) = a4;
    v16((v18 + v17), v13, v9);

    v19 = sub_1BF006210(v23, sub_1BF0A83E4, v18);

    (v19)(v20);

    return (*(v10 + 8))(v15, v9);
  }

  return result;
}

uint64_t sub_1BF0A1FB4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v23 = a2;
  sub_1BF0A8950(0, &qword_1EBDCC220);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v9 = sub_1BF17923C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  sub_1BF0A8394();
  if (swift_getEnumCaseMultiPayload())
  {
    result = sub_1BF0A8340(v8, &qword_1EBDCC220);
    __break(1u);
  }

  else
  {
    v16 = *(v10 + 32);
    v16(v15, v8, v9);
    (*(v10 + 16))(v13, v15, v9);
    v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v22;
    *(v18 + 24) = a4;
    v16((v18 + v17), v13, v9);

    v19 = sub_1BF006210(v23, sub_1BF0A86FC, v18);

    (v19)(v20);

    return (*(v10 + 8))(v15, v9);
  }

  return result;
}

uint64_t sub_1BF0A2238(uint64_t result, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t), void (*a9)())
{
  if (a3)
  {
    __break(1u);
  }

  else
  {
    v15 = result;
    v16 = swift_allocObject();
    v16[2] = a5;
    v16[3] = a6;
    v16[4] = v15;
    v16[5] = a2;

    v17 = OUTLINED_FUNCTION_41_0();
    a8(v17);
    sub_1BF006210(a4, a9, v16);
    OUTLINED_FUNCTION_31_0();

    a8(v18);
  }

  return result;
}

uint64_t sub_1BF0A2300(uint64_t result, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    v10 = swift_allocObject();
    *(v10 + 16) = a4;
    *(v10 + 24) = a5;
    *(v10 + 32) = v9 & 1;

    v11 = sub_1BF006210(a3, sub_1BF0A8100, v10);

    (v11)(v12);
  }

  return result;
}

uint64_t sub_1BF0A23C0(uint64_t result, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    v10 = swift_allocObject();
    v10[2] = a4;
    v10[3] = a5;
    v10[4] = v9;

    sub_1BF0512E4(v9, 0);
    v11 = sub_1BF006210(a3, sub_1BF001BC4, v10);

    (v11)(v12);
  }

  return result;
}

void sub_1BF0A2488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_32();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = OUTLINED_FUNCTION_65_1();
  sub_1BF0A8950(v32, v33);
  v35 = OUTLINED_FUNCTION_12(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v39 = (&a9 - v38);
  sub_1BF0A8394();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = *v39;
    OUTLINED_FUNCTION_14_0();
    v41 = swift_allocObject();
    v41[2] = v29;
    v41[3] = v27;
    v41[4] = v40;

    v42 = v40;
    sub_1BF006210(v31, v23, v41);
    OUTLINED_FUNCTION_31_0();

    (v23)(v43);

    OUTLINED_FUNCTION_26_2();
  }

  else
  {
    sub_1BF0A8340(v39, v25);
    __break(1u);
  }
}

void sub_1BF0A25FC()
{
  OUTLINED_FUNCTION_57_2();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_61_1();
  v7 = v6;
  os_unfair_lock_assert_owner(*(*(v0 + 16) + 16));
  if ((*(v0 + 24) & 1) == 0)
  {
    v10 = OUTLINED_FUNCTION_64_1();
    sub_1BEFEEEE0(v10, v11);
    OUTLINED_FUNCTION_58();
    v12 = swift_allocObject();
    *(v12 + 16) = v7;
    *(v12 + 24) = v1;
    OUTLINED_FUNCTION_38();

    MEMORY[0x1BFB52290](v13);
    v14 = OUTLINED_FUNCTION_107_0();
    v5(v14);
    OUTLINED_FUNCTION_17_2();
    sub_1BF17A59C();
    swift_endAccess();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_26_4();
  if (*(v0 + 48) != 255)
  {
    v8 = *(v0 + 40);
    v9 = OUTLINED_FUNCTION_36();
    v3(v9);
LABEL_5:
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_56_2();
    return;
  }

  __break(1u);
}

uint64_t sub_1BF0A26E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_1BF0A82D4(0, &qword_1ED8E9E10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - v10;
  os_unfair_lock_assert_owner(*(*(v4 + 16) + 16));
  if ((*(v4 + 24) & 1) == 0)
  {
    sub_1BEFEEEE0(0, &unk_1EBDCB9D8);
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2;
    swift_beginAccess();

    MEMORY[0x1BFB52290](v20);
    sub_1BF005F5C(*((*(v4 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1BF17A59C();
    swift_endAccess();
    sub_1BF0A8950(0, qword_1ED8E9E18);
    v18 = v21;
    v16 = a3;
    v17 = 1;
    return __swift_storeEnumTagSinglePayload(v16, v17, 1, v18);
  }

  v12 = *(*v4 + 112);
  swift_beginAccess();
  sub_1BF0A89BC();
  sub_1BF0A8950(0, qword_1ED8E9E18);
  v14 = v13;
  result = __swift_getEnumTagSinglePayload(v11, 1, v13);
  if (result != 1)
  {
    sub_1BF0A85EC();
    v16 = a3;
    v17 = 0;
    v18 = v14;
    return __swift_storeEnumTagSinglePayload(v16, v17, 1, v18);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF0A2948(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  os_unfair_lock_assert_owner(*(*(v3 + 16) + 16));
  if ((*(v3 + 24) & 1) == 0)
  {
    sub_1BEFEEEE0(0, &unk_1EBDCAA30);
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    swift_beginAccess();

    MEMORY[0x1BFB52290](v11);
    sub_1BF005F5C(*((*(v3 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1BF17A59C();
    swift_endAccess();
    return 0;
  }

  result = swift_beginAccess();
  v7 = *(v3 + 56);
  if (v7 != 255)
  {
    v9 = v3 + 40;
    v8 = *(v3 + 40);
    sub_1BF096E40(v8, *(v9 + 8), v7);
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF0A2A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_1BF0A82D4(0, &qword_1EBDCAA50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - v10;
  os_unfair_lock_assert_owner(*(*(v4 + 16) + 16));
  if ((*(v4 + 24) & 1) == 0)
  {
    sub_1BEFEEEE0(0, &unk_1EBDCAA48);
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2;
    swift_beginAccess();

    MEMORY[0x1BFB52290](v20);
    sub_1BF005F5C(*((*(v4 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1BF17A59C();
    swift_endAccess();
    sub_1BF0A8950(0, &qword_1EBDCAA58);
    v18 = v21;
    v16 = a3;
    v17 = 1;
    return __swift_storeEnumTagSinglePayload(v16, v17, 1, v18);
  }

  v12 = *(*v4 + 112);
  swift_beginAccess();
  sub_1BF0A89BC();
  sub_1BF0A8950(0, &qword_1EBDCAA58);
  v14 = v13;
  result = __swift_getEnumTagSinglePayload(v11, 1, v13);
  if (result != 1)
  {
    sub_1BF0A85EC();
    v16 = a3;
    v17 = 0;
    v18 = v14;
    return __swift_storeEnumTagSinglePayload(v16, v17, 1, v18);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF0A2CE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  os_unfair_lock_assert_owner(*(*(v3 + 16) + 16));
  if ((*(v3 + 24) & 1) == 0)
  {
    sub_1BF0A8428(0, &unk_1EBDCAA28);
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    swift_beginAccess();

    MEMORY[0x1BFB52290](v11);
    sub_1BF005F5C(*((*(v3 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1BF17A59C();
    swift_endAccess();
    return 0;
  }

  result = swift_beginAccess();
  v7 = *(v3 + 56);
  if (v7 != 255)
  {
    v9 = v3 + 40;
    v8 = *(v3 + 40);
    sub_1BF096B3C(v8, *(v9 + 8), v7);
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF0A2E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_1BF0A82D4(0, &qword_1EBDCB710);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - v10;
  os_unfair_lock_assert_owner(*(*(v4 + 16) + 16));
  if ((*(v4 + 24) & 1) == 0)
  {
    sub_1BEFEEEE0(0, &unk_1EBDCB9A0);
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2;
    swift_beginAccess();

    MEMORY[0x1BFB52290](v20);
    sub_1BF005F5C(*((*(v4 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1BF17A59C();
    swift_endAccess();
    sub_1BF0A8950(0, &qword_1EBDCC220);
    v18 = v21;
    v16 = a3;
    v17 = 1;
    return __swift_storeEnumTagSinglePayload(v16, v17, 1, v18);
  }

  v12 = *(*v4 + 112);
  swift_beginAccess();
  sub_1BF0A89BC();
  sub_1BF0A8950(0, &qword_1EBDCC220);
  v14 = v13;
  result = __swift_getEnumTagSinglePayload(v11, 1, v13);
  if (result != 1)
  {
    sub_1BF0A85EC();
    v16 = a3;
    v17 = 0;
    v18 = v14;
    return __swift_storeEnumTagSinglePayload(v16, v17, 1, v18);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF0A3074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  os_unfair_lock_assert_owner(*(*(v4 + 16) + 16));
  if (*(v4 + 24))
  {
    result = swift_beginAccess();
    v9 = *(v4 + 56);
    if (v9 == 255)
    {
      __break(1u);
    }

    else
    {
      v10 = *(v4 + 40);
      v11 = *(v4 + 48);
      *a3 = v10;
      *(a3 + 8) = v11;
      *(a3 + 16) = v9;
      return sub_1BF097124(v10, v11, v9);
    }
  }

  else
  {
    sub_1BEFEC638(0, &qword_1EBDCAA40, MEMORY[0x1E6969080], type metadata accessor for Seal.Handler);
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = a2;
    swift_beginAccess();

    MEMORY[0x1BFB52290](v13);
    sub_1BF005F5C(*((*(v4 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1BF17A59C();
    result = swift_endAccess();
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
  }

  return result;
}

void sub_1BF0A31A4()
{
  OUTLINED_FUNCTION_57_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  os_unfair_lock_assert_owner(*(*(v9 + 16) + 16));
  if ((*(v9 + 24) & 1) == 0)
  {
    sub_1BEFEC638(0, v8, v6, type metadata accessor for Seal.Handler);
    OUTLINED_FUNCTION_58();
    v17 = swift_allocObject();
    *(v17 + 16) = v13;
    *(v17 + 24) = v11;
    OUTLINED_FUNCTION_38();

    MEMORY[0x1BFB52290](v18);
    v4(*((*(v9 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1BF17A59C();
    swift_endAccess();
    *v15 = 0;
    *(v15 + 8) = -1;
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_26_4();
  v16 = *(v9 + 48);
  if (v16 != 255)
  {
    *v15 = *(v9 + 40);
    *(v15 + 8) = v16;
    v2();
LABEL_5:
    OUTLINED_FUNCTION_56_2();
    return;
  }

  __break(1u);
}

void (*sub_1BF0A32C0(void (*result)(), char a2, void *a3, uint64_t a4, uint64_t a5))()
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v8 = result & 1;
    v9 = swift_allocObject();
    *(v9 + 16) = a4;
    *(v9 + 24) = a5;
    *(v9 + 32) = v8;
    v10 = qword_1ED8F0210;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = sub_1BF0A910C;
    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || (v12 = [objc_opt_self() isMainThread], v11 = sub_1BF0A910C, (v12 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || (v13 = [objc_opt_self() isMainThread], v11 = sub_1BF0A910C, v13))
        {
          v14 = swift_allocObject();
          v14[2] = a3;
          v14[3] = sub_1BF0A910C;
          v14[4] = v9;
          v15 = a3;
          return sub_1BF097A1C;
        }
      }
    }

    return v11;
  }

  return result;
}

void (*sub_1BF0A34A0(void (*result)(), char a2, void *a3, uint64_t a4, uint64_t a5))()
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = swift_allocObject();
    v9[2] = a4;
    v9[3] = a5;
    v9[4] = v8;

    sub_1BF0019A0(v8, 0);
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    v10 = sub_1BF001C08;
    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || (v11 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, (v11 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || (v12 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, v12))
        {
          v13 = swift_allocObject();
          v13[2] = a3;
          v13[3] = sub_1BF001C08;
          v13[4] = v9;
          v14 = a3;
          return sub_1BF097A1C;
        }
      }
    }

    return v10;
  }

  return result;
}