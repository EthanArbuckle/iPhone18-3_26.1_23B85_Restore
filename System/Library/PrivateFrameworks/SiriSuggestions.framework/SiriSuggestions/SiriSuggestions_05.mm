uint64_t sub_231233648(uint64_t a1, unint64_t a2, char a3)
{
  v25 = a1;
  v6 = sub_231369D50();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2312317A0(v12 + 1);
      goto LABEL_8;
    }

    if (v13 <= v12)
    {
      sub_231235DDC(v12 + 1);
LABEL_8:
      v24 = v3;
      v14 = *v3;
      v15 = *(*v3 + 40);
      sub_231236C54(&qword_280F7C888, 255, MEMORY[0x277D72D58]);
      v16 = sub_231369F30();
      v17 = ~(-1 << *(v14 + 32));
      while (1)
      {
        a2 = v16 & v17;
        if (((*(v14 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v11, *(v14 + 48) + *(v7 + 72) * a2, v6);
        sub_231236C54(&qword_27DD43360, 255, MEMORY[0x277D72D58]);
        v18 = sub_231369F60();
        (*(v7 + 8))(v11, v6);
        if (v18)
        {
          goto LABEL_16;
        }

        v16 = a2 + 1;
      }

      v3 = v24;
      goto LABEL_13;
    }

    sub_231233D00();
  }

LABEL_13:
  v19 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v19 + 48) + *(v7 + 72) * a2, v25, v6, v9);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_16:
    result = sub_23136A960();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

void *sub_231233900()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43AD8, &qword_23136F4A0);
  v2 = *v0;
  v3 = sub_23136A600();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 5 * v17;
        result = sub_2311E5778(*(v2 + 48) + 40 * v17, v22);
        v19 = *(v4 + 48) + 8 * v18;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_231233A74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B68, &qword_23136F4E0);
  v2 = *v0;
  v3 = sub_23136A600();
  if (*(v2 + 16))
  {
    v4 = *(v3 + 32);
    OUTLINED_FUNCTION_42_4();
    v7 = (v6 + 63) >> 6;
    if (v3 != v2 || v5 >= v2 + 56 + 8 * v7)
    {
      memmove(v5, (v2 + 56), 8 * v7);
    }

    v9 = 0;
    *(v3 + 16) = *(v2 + 16);
    v10 = *(v2 + 32);
    OUTLINED_FUNCTION_42_4();
    v11 = *(v2 + 56);
    OUTLINED_FUNCTION_49_3();
    v14 = v13 & v12;
    v16 = (v15 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_15:
        v21 = v17 | (v9 << 6);
        v22 = (*(v2 + 48) + 16 * v21);
        v23 = v22[1];
        v24 = (*(v3 + 48) + 16 * v21);
        *v24 = *v22;
        v24[1] = v23;
        sub_231369EE0();
      }

      while (v14);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        goto LABEL_17;
      }

      ++v18;
      if (*(v2 + 56 + 8 * v9))
      {
        OUTLINED_FUNCTION_31_6();
        v14 = v20 & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v3;
  }
}

void *sub_231233BB0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43AE0, &qword_23136F4A8);
  v2 = *v0;
  v3 = sub_23136A600();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_231233D00()
{
  OUTLINED_FUNCTION_11_0();
  v2 = v0;
  v4 = v3(0);
  OUTLINED_FUNCTION_4_9(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = OUTLINED_FUNCTION_35_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  v14 = *v0;
  v15 = sub_23136A600();
  if (*(v14 + 16))
  {
    v35 = v2;
    v16 = *(v15 + 32);
    OUTLINED_FUNCTION_42_4();
    v19 = (v18 + 63) >> 6;
    if (v15 != v14 || v17 >= v14 + 56 + 8 * v19)
    {
      memmove(v17, (v14 + 56), 8 * v19);
    }

    v21 = 0;
    *(v15 + 16) = *(v14 + 16);
    v22 = *(v14 + 32);
    OUTLINED_FUNCTION_42_4();
    v23 = *(v14 + 56);
    OUTLINED_FUNCTION_49_3();
    v26 = v25 & v24;
    v28 = (v27 + 63) >> 6;
    v36 = v6 + 32;
    v37 = v6 + 16;
    if ((v25 & v24) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_32_3();
LABEL_15:
        v33 = *(v6 + 72) * (v29 | (v21 << 6));
        (*(v6 + 16))(v11, *(v14 + 48) + v33, v1);
        (*(v6 + 32))(*(v15 + 48) + v33, v11, v1);
      }

      while (v26);
    }

    v30 = v21;
    while (1)
    {
      v21 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v21 >= v28)
      {

        v2 = v35;
        goto LABEL_19;
      }

      ++v30;
      if (*(v14 + 56 + 8 * v21))
      {
        OUTLINED_FUNCTION_31_6();
        v26 = v32 & v31;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_19:
    *v2 = v15;
    OUTLINED_FUNCTION_9_0();
  }
}

uint64_t sub_231233EE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43AD8, &qword_23136F4A0);
  result = sub_23136A610();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        sub_2311E5778(*(v3 + 48) + 40 * (v13 | (v7 << 6)), v29);
        v16 = *(v6 + 40);
        result = sub_23136A5D0();
        v17 = -1 << *(v6 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = *(v6 + 48) + 40 * v20;
        v26 = v29[0];
        v27 = v29[1];
        *(v25 + 32) = v30;
        *v25 = v26;
        *(v25 + 16) = v27;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v28;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void sub_231234110()
{
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_45_2(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B68, &qword_23136F4E0);
  v5 = sub_23136A610();
  if (*(v1 + 16))
  {
    v6 = 0;
    v7 = *(v1 + 56);
    v8 = *(v1 + 32);
    OUTLINED_FUNCTION_29_4();
    if (v3)
    {
      while (1)
      {
        OUTLINED_FUNCTION_32_3();
LABEL_9:
        v13 = (*(v1 + 48) + 16 * (v9 | (v6 << 6)));
        v14 = *v13;
        v15 = v13[1];
        v16 = *(v5 + 40);
        sub_23136A9D0();
        sub_231369EE0();
        sub_23136A060();
        v17 = sub_23136AA00();
        OUTLINED_FUNCTION_36_3(v17);
        if (v18)
        {
          break;
        }

        OUTLINED_FUNCTION_52_4();
LABEL_18:
        OUTLINED_FUNCTION_30_4(v19);
        *v24 = v14;
        v24[1] = v15;
        ++*(v5 + 16);
        if (!v3)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_51();
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        if (v0[v20] != -1)
        {
          OUTLINED_FUNCTION_50_0();
          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_4:
      v10 = v6;
      while (1)
      {
        v6 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v6 >= v2)
        {
          goto LABEL_20;
        }

        ++v10;
        if (*(v1 + 56 + 8 * v6))
        {
          OUTLINED_FUNCTION_31_6();
          v3 = v12 & v11;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    *v0 = v5;
    OUTLINED_FUNCTION_57_4();
  }
}

uint64_t sub_231234284(uint64_t a1)
{
  v2 = v1;
  v37 = sub_231369A00();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B28, &qword_23136F4C0);
  v10 = sub_23136A610();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_231236C54(&qword_27DD43B18, 255, MEMORY[0x277D723F8]);
        result = sub_231369F30();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_2312345A0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_231367490();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B40, &qword_23136F4C8);
  v10 = sub_23136A610();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_231236C54(&qword_27DD43B30, 255, MEMORY[0x277D608B8]);
        result = sub_231369F30();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_2312348BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43AE0, &qword_23136F4A8);
  result = sub_23136A610();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v29 = (v11 - 1) & v11;
LABEL_14:
        v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
        v18 = *(v6 + 40);
        sub_2313692F0();
        sub_231236C54(&unk_280F7C910, 255, MEMORY[0x277D612D0]);

        result = sub_231369F30();
        v19 = -1 << *(v6 + 32);
        v20 = result & ~v19;
        v21 = v20 >> 6;
        if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
        {
          break;
        }

        v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        *(*(v6 + 48) + 8 * v22) = v17;
        ++*(v6 + 16);
        v3 = v28;
        v11 = v29;
        if (!v29)
        {
          goto LABEL_9;
        }
      }

      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v13 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v27;
          goto LABEL_27;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v29 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_231234B34(uint64_t a1)
{
  v2 = v1;
  v37 = sub_231369050();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B78, &qword_23136F4F0);
  v10 = sub_23136A610();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_231236C54(&qword_280F7C948, 255, MEMORY[0x277D61268]);
        result = sub_231369F30();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_231234E50(uint64_t a1)
{
  v2 = v1;
  v37 = sub_231368090();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B70, &qword_23136F4E8);
  v10 = sub_23136A610();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_231236C54(&qword_280F7C9C8, 255, MEMORY[0x277D60D90]);
        result = sub_231369F30();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_23123516C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_231368480();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B80, &qword_23136F4F8);
  v10 = sub_23136A610();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_231236C54(&qword_280F7C988, 255, MEMORY[0x277D60F78]);
        result = sub_231369F30();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_231235488(uint64_t a1)
{
  v2 = v1;
  v37 = sub_231369D90();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B10, &qword_23136F4B8);
  v10 = sub_23136A610();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_231236C54(&qword_27DD43B00, 255, MEMORY[0x277D73110]);
        result = sub_231369F30();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_2312357A4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_231369990();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43AF8, &qword_23136F4B0);
  v10 = sub_23136A610();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_231236C54(&qword_27DD43AE8, 255, MEMORY[0x277D72238]);
        result = sub_231369F30();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_231235AC0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_231369900();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B58, &qword_23136F4D0);
  v10 = sub_23136A610();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_231236C54(&qword_27DD43B48, 255, MEMORY[0x277D72108]);
        result = sub_231369F30();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_231235DDC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_231369D50();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B60, &qword_23136F4D8);
  v10 = sub_23136A610();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_231236C54(&qword_280F7C888, 255, MEMORY[0x277D72D58]);
        result = sub_231369F30();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_2312360F8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_231369FD0();

  return v4;
}

uint64_t sub_231236158(void *a1)
{
  v1 = [a1 appNameMap];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231369E80();

  return v3;
}

unint64_t sub_2312361BC()
{
  result = qword_27DD439E8;
  if (!qword_27DD439E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD439E8);
  }

  return result;
}

unint64_t sub_231236210()
{
  result = qword_27DD43A18;
  if (!qword_27DD43A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43A18);
  }

  return result;
}

uint64_t sub_231236264(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD43A20, &qword_23136EE08);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2312362D0()
{
  result = qword_27DD43A48;
  if (!qword_27DD43A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43A48);
  }

  return result;
}

unint64_t sub_231236324()
{
  result = qword_27DD43A50;
  if (!qword_27DD43A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43A50);
  }

  return result;
}

unint64_t sub_231236378()
{
  result = qword_27DD43A60;
  if (!qword_27DD43A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43A60);
  }

  return result;
}

uint64_t type metadata accessor for AppUtilsService()
{
  result = qword_280F848F0;
  if (!qword_280F848F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2312364BC()
{
  result = qword_27DD43A68;
  if (!qword_27DD43A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43A68);
  }

  return result;
}

unint64_t sub_231236514()
{
  result = qword_27DD43A70;
  if (!qword_27DD43A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43A70);
  }

  return result;
}

unint64_t sub_23123656C()
{
  result = qword_27DD43A78;
  if (!qword_27DD43A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43A78);
  }

  return result;
}

unint64_t sub_2312365C4()
{
  result = qword_27DD43A80;
  if (!qword_27DD43A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43A80);
  }

  return result;
}

uint64_t sub_231236620()
{
  result = sub_231368DB0();
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

_BYTE *sub_23123671C(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for DefaultAppDetails.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2312368A8()
{
  result = qword_27DD43A88;
  if (!qword_27DD43A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43A88);
  }

  return result;
}

unint64_t sub_231236900()
{
  result = qword_27DD43A90;
  if (!qword_27DD43A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43A90);
  }

  return result;
}

unint64_t sub_231236958()
{
  result = qword_27DD43A98;
  if (!qword_27DD43A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43A98);
  }

  return result;
}

unint64_t sub_2312369B0()
{
  result = qword_27DD43AA0;
  if (!qword_27DD43AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43AA0);
  }

  return result;
}

unint64_t sub_231236A08()
{
  result = qword_27DD43AA8;
  if (!qword_27DD43AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43AA8);
  }

  return result;
}

unint64_t sub_231236A60()
{
  result = qword_27DD43AB0;
  if (!qword_27DD43AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43AB0);
  }

  return result;
}

uint64_t sub_231236AB4()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23122C690;

  return sub_23122C1B8(v3, v0);
}

uint64_t sub_231236B4C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD43AB8, &qword_23136F498);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_231236BC4()
{
  result = qword_27DD43AD0;
  if (!qword_27DD43AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43AD0);
  }

  return result;
}

uint64_t sub_231236C18(uint64_t a1)
{
  v2 = *(a1 + 32);
  OUTLINED_FUNCTION_19_8();
  result = sub_23136A560();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_231236C54(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_7_8()
{
  v3 = *(v1 + 16);
  result = v0;
  v5 = *(v2 - 104);
  v6 = *(v2 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_8()
{
  v2 = *(v0 - 96);

  return sub_231369F60();
}

uint64_t sub_231236DF4()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[7];
  v2 = v1[14];
  v0[8] = v2;
  v3 = *(v2 + 16);
  v0[9] = v3;
  if (v3)
  {
    v0[10] = v1[15];
    v4 = v1[16];
    v0[11] = v4;
    v0[12] = swift_getObjectType();
    v5 = *(v4 + 24);
    v0[13] = v5;
    v0[14] = (v4 + 24) & 0xFFFFFFFFFFFFLL | 0x2EF1000000000000;
    v0[15] = 0;
    sub_2311CF324(v2 + 32, (v0 + 2));
    v11 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[16] = v7;
    *v7 = v0;
    v8 = OUTLINED_FUNCTION_3_11(v7);

    return v11(v8);
  }

  else
  {
    OUTLINED_FUNCTION_56_0();

    return v10();
  }
}

uint64_t sub_231236F4C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = *(v1 + 128);
  v4 = *(v1 + 56);
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));

  return MEMORY[0x2822009F8](sub_231237054, v4, 0);
}

uint64_t sub_231237054()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[15] + 1;
  if (v1 == v0[9])
  {
    OUTLINED_FUNCTION_56_0();

    return v2();
  }

  else
  {
    v0[15] = v1;
    v5 = v0[13];
    v4 = v0[14];
    sub_2311CF324(v0[8] + 40 * v1 + 32, (v0 + 2));
    v9 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[16] = v7;
    *v7 = v0;
    v8 = OUTLINED_FUNCTION_3_11();

    return v9(v8);
  }
}

uint64_t sub_231237194()
{
  sub_231237E70(MEMORY[0x277D85028]);

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2312371D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311D05C8;

  return sub_231236DD4();
}

uint64_t sub_231237260(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for OwnerRefreshable();

  return MEMORY[0x2821C6520](v3, a2);
}

uint64_t sub_231237298(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_231369EE0();
  return sub_2312372FC(v4);
}

uint64_t sub_2312372C4()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  return sub_231369EE0();
}

uint64_t sub_2312372FC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t sub_231237394(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_231369EE0();
  return sub_2312373F8(v4);
}

uint64_t sub_2312373C0()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
  return sub_231369EE0();
}

uint64_t sub_2312373F8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  *(v1 + 120) = a1;
}

uint64_t NoopRefreshableService.__allocating_init()()
{
  v0 = swift_allocObject();
  NoopRefreshableService.init()();
  return v0;
}

uint64_t NoopRefreshableService.init()()
{
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B88, &qword_23136F500);
  v1 = MEMORY[0x277D84F90];
  *(v0 + 112) = sub_231369EC0();
  *(v0 + 120) = v1;
  return v0;
}

uint64_t sub_231237530()
{
  OUTLINED_FUNCTION_8();
  v1 = sub_2313698C0();
  OUTLINED_FUNCTION_0_13(v1);
  *(v0 + 24) = v2;
  v4 = *(v3 + 64);
  *(v0 + 32) = OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312375CC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_20_8();
  sub_2313698A0();
  v0 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v0))
  {
    v1 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v1);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v2, v3, "NoopRefreshableService addToLifeCycle(owner:)");
    OUTLINED_FUNCTION_9_10();
  }

  OUTLINED_FUNCTION_19_9();
  v4 = OUTLINED_FUNCTION_5_10();
  v5(v4);

  OUTLINED_FUNCTION_56_0();

  return v6();
}

uint64_t sub_231237678()
{
  OUTLINED_FUNCTION_8();
  v1 = sub_2313698C0();
  OUTLINED_FUNCTION_0_13(v1);
  *(v0 + 24) = v2;
  v4 = *(v3 + 64);
  *(v0 + 32) = OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231237714()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_20_8();
  sub_2313698A0();
  v0 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v0))
  {
    v1 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v1);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v2, v3, "NoopRefreshableService refresh(owner:)");
    OUTLINED_FUNCTION_9_10();
  }

  OUTLINED_FUNCTION_19_9();
  v4 = OUTLINED_FUNCTION_5_10();
  v5(v4);

  OUTLINED_FUNCTION_56_0();

  return v6();
}

uint64_t sub_2312377C0()
{
  OUTLINED_FUNCTION_8();
  v0[2] = v1;
  v2 = sub_2313698C0();
  v0[3] = v2;
  v3 = *(v2 - 8);
  v0[4] = v3;
  v4 = *(v3 + 64);
  v0[5] = OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23123786C()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[5];
  sub_231369100();
  v2 = sub_2313698A0();
  v3 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v3))
  {
    v4 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v4);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v5, v6, "NoopRefreshableService getEntity(entityType:)");
    OUTLINED_FUNCTION_9_10();
  }

  v8 = v0[4];
  v7 = v0[5];
  v10 = v0[2];
  v9 = v0[3];

  (*(v8 + 8))(v7, v9);
  v11 = sub_23136A220();

  OUTLINED_FUNCTION_14();

  return v12(v11);
}

uint64_t sub_23123794C()
{
  OUTLINED_FUNCTION_8();
  v1 = sub_2313698C0();
  OUTLINED_FUNCTION_0_13(v1);
  *(v0 + 24) = v2;
  v4 = *(v3 + 64);
  *(v0 + 32) = OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312379E8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_20_8();
  sub_2313698A0();
  v0 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v0))
  {
    v1 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v1);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v2, v3, "NoopRefreshableService destroy(owner:)");
    OUTLINED_FUNCTION_9_10();
  }

  OUTLINED_FUNCTION_19_9();
  v4 = OUTLINED_FUNCTION_5_10();
  v5(v4);

  OUTLINED_FUNCTION_56_0();

  return v6();
}

uint64_t sub_231237A94()
{
  OUTLINED_FUNCTION_8();
  v1 = sub_2313698C0();
  OUTLINED_FUNCTION_0_13(v1);
  *(v0 + 24) = v2;
  v4 = *(v3 + 64);
  *(v0 + 32) = OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231237B30()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_20_8();
  sub_2313698A0();
  v0 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v0))
  {
    v1 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v1);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v2, v3, "NoopRefreshableService refreshAsync()");
    OUTLINED_FUNCTION_9_10();
  }

  OUTLINED_FUNCTION_19_9();
  v4 = OUTLINED_FUNCTION_5_10();
  v5(v4);

  OUTLINED_FUNCTION_56_0();

  return v6();
}

uint64_t sub_231237BDC()
{
  OUTLINED_FUNCTION_8();
  v1 = sub_2313698C0();
  OUTLINED_FUNCTION_0_13(v1);
  *(v0 + 24) = v2;
  v4 = *(v3 + 64);
  *(v0 + 32) = OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231237C78()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_20_8();
  sub_2313698A0();
  v0 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v0))
  {
    v1 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v1);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v2, v3, "NoopRefreshableService destroy()");
    OUTLINED_FUNCTION_9_10();
  }

  OUTLINED_FUNCTION_19_9();
  v4 = OUTLINED_FUNCTION_5_10();
  v5(v4);

  OUTLINED_FUNCTION_56_0();

  return v6();
}

uint64_t sub_231237D24()
{
  v0 = sub_2313698C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231369100();
  v5 = sub_2313698A0();
  v6 = sub_23136A3A0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_63();
    *v7 = 0;
    _os_log_impl(&dword_2311CB000, v5, v6, "NoopRefreshableService getAllOwners()", v7, 2u);
    MEMORY[0x23192B930](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return MEMORY[0x277D84F90];
}

uint64_t sub_231237E70(void (*a1)(void))
{
  v3 = *(v1 + 112);

  a1(*(v1 + 120));
  swift_defaultActor_destroy();
  return v1;
}

uint64_t NoopRefreshableService.__deallocating_deinit()
{
  NoopRefreshableService.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_231237EDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231209AAC;

  return sub_231237678();
}

uint64_t sub_231237F88()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 16);
  sub_2312372C4();
  OUTLINED_FUNCTION_14();

  return v2();
}

uint64_t sub_231237FE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231209AAC;

  return sub_231237530();
}

uint64_t sub_23123806C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D610C0] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for NoopRefreshableService();
  *v11 = v5;
  v11[1] = sub_231209AAC;

  return MEMORY[0x2821C72B0](a1, a2, v12, a3, a5);
}

uint64_t sub_231238138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D610D0] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for NoopRefreshableService();
  *v11 = v5;
  v11[1] = sub_231209AAC;

  return MEMORY[0x2821C72C0](a1, a2, a3, v12, a5);
}

uint64_t sub_231238204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(MEMORY[0x277D610C8] + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for NoopRefreshableService();
  *v7 = v3;
  v7[1] = sub_231209AAC;

  return MEMORY[0x2821C72B8](a1, v8, a3);
}

uint64_t sub_2312382B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311DDECC;

  return sub_2312377C0();
}

uint64_t sub_23123834C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231209AAC;

  return sub_23123794C();
}

uint64_t sub_2312383F8()
{
  OUTLINED_FUNCTION_8();
  sub_231237D24();
  OUTLINED_FUNCTION_14();
  v1 = MEMORY[0x277D84F90];

  return v0(v1);
}

uint64_t sub_231238454()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231209AAC;

  return sub_231237A94();
}

uint64_t sub_2312384E0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NoopRefreshableService();

  return MEMORY[0x2821C6520](v3, a2);
}

uint64_t sub_231238518()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](sub_231238538, v2, 0);
}

uint64_t sub_231238538()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 16);
  sub_2312373C0();
  OUTLINED_FUNCTION_14();

  return v2();
}

uint64_t sub_231238590()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231209AAC;

  return sub_231237BDC();
}

uint64_t sub_231238620(uint64_t a1)
{
  *(a1 + 8) = sub_231239058(&qword_27DD43B90, type metadata accessor for NoopRefreshableService);
  result = sub_231239058(&qword_27DD43B98, type metadata accessor for NoopRefreshableService);
  *(a1 + 16) = result;
  return result;
}

uint64_t dispatch thunk of RefreshableService.refresh(owner:)()
{
  OUTLINED_FUNCTION_16();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v0 + 24);
  v12 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_30(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_34_0(v9);

  return v12(v5, v3, v1);
}

uint64_t dispatch thunk of NoopRefreshableService.addToLifeCycle(owner:localEntities:)()
{
  OUTLINED_FUNCTION_16();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v5 = *(v4 + 160);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_30(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_34_0(v8);

  return v11(v3, v1);
}

uint64_t dispatch thunk of NoopRefreshableService.refresh(owner:)()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  OUTLINED_FUNCTION_13_0();
  v3 = *(v2 + 168);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_30(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_34_0(v6);

  return v9(v1);
}

uint64_t dispatch thunk of NoopRefreshableService.getEntity<A>(entityType:)()
{
  OUTLINED_FUNCTION_16();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v5 = *(v4 + 176);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_30(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_34_0(v8);

  return v11(v3, v1);
}

uint64_t dispatch thunk of NoopRefreshableService.destroy(owner:)()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  OUTLINED_FUNCTION_13_0();
  v3 = *(v2 + 184);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_30(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_34_0(v6);

  return v9(v1);
}

uint64_t dispatch thunk of NoopRefreshableService.refreshAsync()()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_13_0();
  v1 = *(v0 + 192);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_30(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_34_0(v4);

  return v7();
}

uint64_t dispatch thunk of NoopRefreshableService.destroy()()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_13_0();
  v1 = *(v0 + 200);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_30(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_34_0(v4);

  return v7();
}

uint64_t sub_231239058(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2312390B8()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43BB8, &unk_23136F890) - 8) + 64);
  v1[3] = OUTLINED_FUNCTION_43();
  v3 = sub_2313698C0();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312391A8()
{
  v1 = v0[7];
  v2 = v0[2];
  sub_231369100();
  v4 = *(v2 + 40);
  v3 = *(v2 + 48);
  ObjectType = swift_getObjectType();
  v6 = *(MEMORY[0x277D610B0] + 4);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_231239264;

  return MEMORY[0x2821C72A0](ObjectType, v3);
}

uint64_t sub_231239264()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 64);
  *v2 = *v0;
  *(v1 + 72) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231239350()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B88, &qword_23136F500);
  sub_231369880();

  v6 = *(v5 + 8);
  v6(v3, v4);
  sub_231369170();
  v7 = sub_2313698A0();
  v8 = sub_23136A3A0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2311CB000, v7, v8, "Loading owner definitions", v9, 2u);
    OUTLINED_FUNCTION_29();
  }

  v10 = v0[6];
  v12 = v0[3];
  v11 = v0[4];
  v13 = v0[2];

  v6(v10, v11);
  v14 = *(v13 + 16);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43BC0, &qword_23136F8A0);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v15);
  v16 = *(MEMORY[0x277D60B28] + 4);

  v17 = swift_task_alloc();
  v0[10] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43BC8, &unk_23136F8B8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435A0, &qword_23136CAE0);
  *v17 = v0;
  v17[1] = sub_2312395AC;
  v23 = v0[2];
  v22 = v0[3];

  return MEMORY[0x2821C6B08](v14, v22, &unk_23136F8B0, v23, v18, v19, v20, v21);
}

void sub_2312395AC(uint64_t a1)
{
  OUTLINED_FUNCTION_12();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  *v6 = v5;
  v8 = *(v7 + 80);
  v9 = *v2;
  OUTLINED_FUNCTION_2();
  *v10 = v9;

  if (v1)
  {
  }

  else
  {
    v12 = v5[6];
    v11 = v5[7];
    v14 = v5 + 2;
    v13 = v5[2];
    sub_231228E9C(v14[1], &qword_27DD43BB8, &unk_23136F890);

    OUTLINED_FUNCTION_14();

    v15(a1);
  }
}

uint64_t sub_231239714(_OWORD *a1, uint64_t a2)
{
  *(v2 + 616) = a2;
  v4 = sub_2313698C0();
  *(v2 + 624) = v4;
  v5 = *(v4 - 8);
  *(v2 + 632) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 640) = swift_task_alloc();
  *(v2 + 648) = swift_task_alloc();
  *(v2 + 656) = *a1;

  return MEMORY[0x2822009F8](sub_2312397EC, 0, 0);
}

uint64_t sub_2312397EC()
{
  OUTLINED_FUNCTION_8();
  v1 = *(MEMORY[0x277D61030] + 4);
  v2 = swift_task_alloc();
  v0[84] = v2;
  *v2 = v0;
  v2[1] = sub_23123989C;
  v3 = v0[83];
  v4 = v0[82];
  v5 = v0[77];

  return MEMORY[0x2821C7198](&unk_23136F8D0, v5);
}

uint64_t sub_23123989C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 672);
  *v2 = *v0;
  *(v1 + 680) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231239988(uint64_t isUniquelyReferenced_nonNull_native)
{
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v4 = *(v1 + 680);
  v5 = v4 + 32;
  v6 = *(v4 + 16);
  v7 = &qword_27DD435A0;
  v78 = v4 + 32;
LABEL_2:
  v8 = v5 + 40 * v2;
  v79 = v3;
  while (1)
  {
    *(v1 + 688) = v3;
    if (v6 == v2)
    {
      break;
    }

    if (v2 >= *(v4 + 16))
    {
      __break(1u);
      return MEMORY[0x2821C7280](isUniquelyReferenced_nonNull_native);
    }

    sub_2311CF324(v8, v1 + 256);
    v9 = *(v1 + 288);
    __swift_project_boxed_opaque_existential_1((v1 + 256), *(v1 + 280));
    v10 = *(v9 + 8);
    OUTLINED_FUNCTION_14_1();
    sub_231367AD0();
    sub_2311CF324(v1 + 256, v1 + 376);
    __swift_instantiateConcreteTypeFromMangledNameV2(v7, &qword_23136CAE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43BD0, &qword_23136F8D8);
    if (!swift_dynamicCast())
    {
      *(v1 + 368) = 0;
      *(v1 + 336) = 0u;
      *(v1 + 352) = 0u;
      sub_231228E9C(v1 + 336, &qword_27DD43BD8, &qword_23136F8E0);
      *(v1 + 296) = 0u;
      *(v1 + 312) = 0u;
      *(v1 + 328) = 0;
LABEL_10:
      sub_231228E9C(v1 + 296, &qword_27DD43BE0, &qword_23136F8E8);
LABEL_11:
      *(v1 + 56) = 0;
      goto LABEL_12;
    }

    v11 = v4;
    v12 = v6;
    v13 = v7;
    v14 = *(v1 + 368);
    __swift_project_boxed_opaque_existential_1((v1 + 336), *(v1 + 360));
    OUTLINED_FUNCTION_14_1();
    v7 = v13;
    v6 = v12;
    v4 = v11;
    v3 = v79;
    sub_231368220();
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 336));
    if (!*(v1 + 320))
    {
      goto LABEL_10;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43BF0, &qword_23136F8F8);
    sub_231368940();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_12:
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 256));
    if (*(v1 + 40))
    {
      v80 = *(v1 + 16);
      v82 = *(v1 + 32);
      v83 = *(v1 + 48);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = v3[2];
        sub_23126E858();
        v3 = isUniquelyReferenced_nonNull_native;
      }

      v15 = v3[2];
      if (v15 >= v3[3] >> 1)
      {
        sub_23126E858();
        v3 = isUniquelyReferenced_nonNull_native;
      }

      ++v2;
      v3[2] = v15 + 1;
      v16 = &v3[6 * v15];
      v16[3] = v82;
      v16[4] = v83;
      v16[2] = v80;
      v5 = v78;
      goto LABEL_2;
    }

    isUniquelyReferenced_nonNull_native = sub_231228E9C(v1 + 16, &qword_27DD43BE8, &qword_23136F8F0);
    v8 += 40;
    ++v2;
  }

  v18 = v3[2];
  *(v1 + 696) = v18;
  if (v18)
  {
    *(v1 + 704) = 0;
    sub_23123B09C((v3 + 4), v1 + 64);
    OUTLINED_FUNCTION_12_8();
    v19 = *(v1 + 200);

    OUTLINED_FUNCTION_28_7();
    v20 = *(v1 + 248);
    *(v1 + 712) = v20;
    if (v20)
    {
      v21 = *(v1 + 648);
      OUTLINED_FUNCTION_24_8();

      v22 = sub_2313698A0();
      v23 = sub_23136A3A0();

      os_log_type_enabled(v22, v23);
      OUTLINED_FUNCTION_27_7();
      if (v24)
      {
        OUTLINED_FUNCTION_60();
        v25 = OUTLINED_FUNCTION_57_0();
        v26 = OUTLINED_FUNCTION_44_5(4.8149e-34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B88, &qword_23136F500);
        sub_231369E90();
        v27 = OUTLINED_FUNCTION_22_6();
        OUTLINED_FUNCTION_42_5(v27, v28, v29, v30);
        OUTLINED_FUNCTION_14_1();

        *(v3 + 4) = v26;
        OUTLINED_FUNCTION_20_9(&dword_2311CB000, v31, v32, "Propagating local lifecycle instance of: %s to global lifecycle");
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_29();

        (v7[1])(v79, v78);
      }

      else
      {

        v61 = OUTLINED_FUNCTION_30_5();
        v63(v61, v62);
      }

      OUTLINED_FUNCTION_35_6();
      *(v1 + 720) = sub_231368930();
      v64 = *(MEMORY[0x277D61090] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_14_0();
      *(v1 + 728) = v65;
      *v65 = v66;
      isUniquelyReferenced_nonNull_native = OUTLINED_FUNCTION_0_14(v65);
    }

    else
    {
      v38 = *(v1 + 640);
      OUTLINED_FUNCTION_24_8();
      sub_2311CF324(v1 + 416, v1 + 456);
      v39 = sub_2313698A0();
      v40 = sub_23136A3A0();
      OUTLINED_FUNCTION_43_1(v40);
      OUTLINED_FUNCTION_31_7();
      if (v41)
      {
        OUTLINED_FUNCTION_60();
        v81 = OUTLINED_FUNCTION_21_7();
        OUTLINED_FUNCTION_3_12(4.8149e-34);
        v43 = *(v42 + 64);
        OUTLINED_FUNCTION_43();
        OUTLINED_FUNCTION_15_11();
        v44();
        OUTLINED_FUNCTION_40_5();
        OUTLINED_FUNCTION_39_2();
        v45 = __swift_destroy_boxed_opaque_existential_1Tm((v1 + 456));
        v49 = OUTLINED_FUNCTION_41_5(v45, v46, v47, v48);

        *(v7 + 4) = v49;
        OUTLINED_FUNCTION_19_1(&dword_2311CB000, v50, v51, "no lifecycles detected for: %s");
        OUTLINED_FUNCTION_17_6(v52, v53, v54, v55, v56, v57, v58, v59, v77, v81);
        OUTLINED_FUNCTION_29();

        MEMORY[8](v78, v79);
      }

      else
      {

        v72 = OUTLINED_FUNCTION_29_5();
        v73(v72);
        __swift_destroy_boxed_opaque_existential_1Tm((v1 + 456));
      }

      OUTLINED_FUNCTION_36_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B88, &qword_23136F500);
      *(v1 + 736) = sub_231369EC0();
      v74 = *(MEMORY[0x277D61090] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_14_0();
      *(v1 + 744) = v75;
      *v75 = v76;
      isUniquelyReferenced_nonNull_native = OUTLINED_FUNCTION_1_16(v75);
    }

    return MEMORY[0x2821C7280](isUniquelyReferenced_nonNull_native);
  }

  if (*(*(v1 + 680) + 16))
  {
    OUTLINED_FUNCTION_14_10();
    do
    {
      OUTLINED_FUNCTION_37_4();
      sub_2311CF324(v1 + 496, v1 + 536);
      type metadata accessor for OwnerLockedOwnerDefinition();
      OUTLINED_FUNCTION_20();
      swift_allocObject();
      sub_2311FBA9C((v1 + 536));
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 496));
      OUTLINED_FUNCTION_11_9();
      if (v34)
      {
        OUTLINED_FUNCTION_13_9(v33);
      }

      OUTLINED_FUNCTION_2_8();
      v36 = sub_23123B10C(&qword_280F85948, v35);
      OUTLINED_FUNCTION_6_8(v36);
    }

    while (!v37);
    v60 = *(v1 + 680);
  }

  else
  {
  }

  v67 = *(v1 + 648);
  v68 = *(v1 + 640);

  v69 = OUTLINED_FUNCTION_10_10();

  return v70(v69);
}

uint64_t sub_23123A058()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 728);
  v3 = *(v1 + 720);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23123A158()
{
  v5 = v2[89];

  OUTLINED_FUNCTION_46_6();
  sub_231228E9C((v2 + 14), &qword_27DD43BF8, &unk_23136F900);
  if (v0 == v1)
  {
    v6 = v2[86];

    if (*(v2[85] + 16))
    {
      OUTLINED_FUNCTION_14_10();
      do
      {
        OUTLINED_FUNCTION_37_4();
        sub_2311CF324((v2 + 62), (v2 + 67));
        type metadata accessor for OwnerLockedOwnerDefinition();
        OUTLINED_FUNCTION_20();
        swift_allocObject();
        sub_2311FBA9C(v2 + 67);
        __swift_destroy_boxed_opaque_existential_1Tm(v2 + 62);
        OUTLINED_FUNCTION_11_9();
        if (v8)
        {
          OUTLINED_FUNCTION_13_9(v7);
        }

        OUTLINED_FUNCTION_2_8();
        v10 = sub_23123B10C(&qword_280F85948, v9);
        OUTLINED_FUNCTION_6_8(v10);
      }

      while (!v11);
      v26 = v2[85];
    }

    else
    {
    }

    v27 = v2[81];
    v28 = v2[80];

    OUTLINED_FUNCTION_10_10();
    OUTLINED_FUNCTION_8_4();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_12_8();
  v12 = v2[25];

  OUTLINED_FUNCTION_28_7();
  v13 = v2[31];
  v2[89] = v13;
  if (v13)
  {
    v14 = v2[81];
    OUTLINED_FUNCTION_24_8();

    v15 = sub_2313698A0();
    v16 = sub_23136A3A0();

    os_log_type_enabled(v15, v16);
    OUTLINED_FUNCTION_27_7();
    if (v17)
    {
      OUTLINED_FUNCTION_60();
      v18 = OUTLINED_FUNCTION_57_0();
      v19 = OUTLINED_FUNCTION_44_5(4.8149e-34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B88, &qword_23136F500);
      sub_231369E90();
      v20 = OUTLINED_FUNCTION_22_6();
      OUTLINED_FUNCTION_42_5(v20, v21, v22, v23);
      OUTLINED_FUNCTION_14_1();

      *(v4 + 4) = v19;
      OUTLINED_FUNCTION_20_9(&dword_2311CB000, v24, v25, "Propagating local lifecycle instance of: %s to global lifecycle");
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v3 + 8))();
    }

    else
    {

      v53 = OUTLINED_FUNCTION_30_5();
      v55(v53, v54);
    }

    OUTLINED_FUNCTION_35_6();
    v2[90] = sub_231368930();
    v56 = *(MEMORY[0x277D61090] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v2[91] = v57;
    *v57 = v58;
    OUTLINED_FUNCTION_0_14();
  }

  else
  {
    v31 = v2[80];
    OUTLINED_FUNCTION_24_8();
    sub_2311CF324((v2 + 52), (v2 + 57));
    v32 = sub_2313698A0();
    v33 = sub_23136A3A0();
    OUTLINED_FUNCTION_43_1(v33);
    OUTLINED_FUNCTION_31_7();
    if (v34)
    {
      OUTLINED_FUNCTION_60();
      v67 = OUTLINED_FUNCTION_21_7();
      OUTLINED_FUNCTION_3_12(4.8149e-34);
      v36 = *(v35 + 64);
      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_15_11();
      v37();
      OUTLINED_FUNCTION_40_5();
      OUTLINED_FUNCTION_39_2();
      v38 = __swift_destroy_boxed_opaque_existential_1Tm(v2 + 57);
      v42 = OUTLINED_FUNCTION_41_5(v38, v39, v40, v41);

      *(v3 + 4) = v42;
      OUTLINED_FUNCTION_19_1(&dword_2311CB000, v43, v44, "no lifecycles detected for: %s");
      OUTLINED_FUNCTION_17_6(v45, v46, v47, v48, v49, v50, v51, v52, v66, v67);
      OUTLINED_FUNCTION_29();

      MEMORY[8]();
    }

    else
    {

      v59 = OUTLINED_FUNCTION_29_5();
      v60(v59);
      __swift_destroy_boxed_opaque_existential_1Tm(v2 + 57);
    }

    OUTLINED_FUNCTION_36_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B88, &qword_23136F500);
    v2[92] = sub_231369EC0();
    v61 = *(MEMORY[0x277D61090] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v2[93] = v62;
    *v62 = v63;
    OUTLINED_FUNCTION_1_16();
  }

  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x2821C7280]();
}

uint64_t sub_23123A5B8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 744);
  v3 = *(v1 + 736);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23123A6B8()
{
  OUTLINED_FUNCTION_46_6();
  sub_231228E9C((v2 + 14), &qword_27DD43BF8, &unk_23136F900);
  if (v0 == v1)
  {
    v5 = v2[86];

    if (*(v2[85] + 16))
    {
      OUTLINED_FUNCTION_14_10();
      do
      {
        OUTLINED_FUNCTION_37_4();
        sub_2311CF324((v2 + 62), (v2 + 67));
        type metadata accessor for OwnerLockedOwnerDefinition();
        OUTLINED_FUNCTION_20();
        swift_allocObject();
        sub_2311FBA9C(v2 + 67);
        __swift_destroy_boxed_opaque_existential_1Tm(v2 + 62);
        OUTLINED_FUNCTION_11_9();
        if (v7)
        {
          OUTLINED_FUNCTION_13_9(v6);
        }

        OUTLINED_FUNCTION_2_8();
        v9 = sub_23123B10C(&qword_280F85948, v8);
        OUTLINED_FUNCTION_6_8(v9);
      }

      while (!v10);
      v25 = v2[85];
    }

    else
    {
    }

    v26 = v2[81];
    v27 = v2[80];

    OUTLINED_FUNCTION_10_10();
    OUTLINED_FUNCTION_8_4();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_12_8();
  v11 = v2[25];

  OUTLINED_FUNCTION_28_7();
  v12 = v2[31];
  v2[89] = v12;
  if (v12)
  {
    v13 = v2[81];
    OUTLINED_FUNCTION_24_8();

    v14 = sub_2313698A0();
    v15 = sub_23136A3A0();

    os_log_type_enabled(v14, v15);
    OUTLINED_FUNCTION_27_7();
    if (v16)
    {
      OUTLINED_FUNCTION_60();
      v17 = OUTLINED_FUNCTION_57_0();
      v18 = OUTLINED_FUNCTION_44_5(4.8149e-34);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B88, &qword_23136F500);
      sub_231369E90();
      v19 = OUTLINED_FUNCTION_22_6();
      OUTLINED_FUNCTION_42_5(v19, v20, v21, v22);
      OUTLINED_FUNCTION_14_1();

      *(v4 + 4) = v18;
      OUTLINED_FUNCTION_20_9(&dword_2311CB000, v23, v24, "Propagating local lifecycle instance of: %s to global lifecycle");
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v3 + 8))();
    }

    else
    {

      v52 = OUTLINED_FUNCTION_30_5();
      v54(v52, v53);
    }

    OUTLINED_FUNCTION_35_6();
    v2[90] = sub_231368930();
    v55 = *(MEMORY[0x277D61090] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v2[91] = v56;
    *v56 = v57;
    OUTLINED_FUNCTION_0_14(v56);
  }

  else
  {
    v30 = v2[80];
    OUTLINED_FUNCTION_24_8();
    sub_2311CF324((v2 + 52), (v2 + 57));
    v31 = sub_2313698A0();
    v32 = sub_23136A3A0();
    OUTLINED_FUNCTION_43_1(v32);
    OUTLINED_FUNCTION_31_7();
    if (v33)
    {
      OUTLINED_FUNCTION_60();
      v66 = OUTLINED_FUNCTION_21_7();
      OUTLINED_FUNCTION_3_12(4.8149e-34);
      v35 = *(v34 + 64);
      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_15_11();
      v36();
      OUTLINED_FUNCTION_40_5();
      OUTLINED_FUNCTION_39_2();
      v37 = __swift_destroy_boxed_opaque_existential_1Tm(v2 + 57);
      v41 = OUTLINED_FUNCTION_41_5(v37, v38, v39, v40);

      *(v3 + 4) = v41;
      OUTLINED_FUNCTION_19_1(&dword_2311CB000, v42, v43, "no lifecycles detected for: %s");
      OUTLINED_FUNCTION_17_6(v44, v45, v46, v47, v48, v49, v50, v51, v65, v66);
      OUTLINED_FUNCTION_29();

      MEMORY[8]();
    }

    else
    {

      v58 = OUTLINED_FUNCTION_29_5();
      v59(v58);
      __swift_destroy_boxed_opaque_existential_1Tm(v2 + 57);
    }

    OUTLINED_FUNCTION_36_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43B88, &qword_23136F500);
    v2[92] = sub_231369EC0();
    v60 = *(MEMORY[0x277D61090] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v2[93] = v61;
    *v61 = v62;
    OUTLINED_FUNCTION_1_16();
  }

  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x2821C7280]();
}

uint64_t sub_23123AB10(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return MEMORY[0x2822009F8](sub_23123AB30, 0, 0);
}

uint64_t sub_23123AB30()
{
  v1 = v0[13];
  v0[14] = sub_231368940();
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(MEMORY[0x277D61050] + 4);
  swift_unknownObjectRetain();
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_26_3(v5);

  return MEMORY[0x2821C7228](v6, v3);
}

uint64_t sub_23123ABEC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 120);
  *v2 = *v0;
  *(v1 + 128) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23123ACD8()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435F8, &qword_231374530);
  v5 = swift_allocObject();
  v9 = *(v2 + 24);
  *(v5 + 16) = xmmword_23136B670;
  sub_2311CF324(v4, v5 + 32);
  type metadata accessor for OwnerRefreshable();
  v6 = swift_allocObject();
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  *(v6 + 120) = v9;
  *(v6 + 112) = v5;
  sub_231368F00();
  sub_2311CF324(v4, (v0 + 2));
  sub_23123B10C(qword_280F83F98, type metadata accessor for OwnerRefreshable);
  sub_2311CF324(v2 + 56, (v0 + 7));
  sub_231368EE0();
  OUTLINED_FUNCTION_14();

  return v7();
}

void *sub_23123AE54()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[5];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  return v0;
}

uint64_t sub_23123AE8C()
{
  sub_23123AE54();
  OUTLINED_FUNCTION_20();

  return swift_deallocClassInstance();
}

uint64_t sub_23123AEE0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311DDECC;

  return sub_2312390B8();
}

uint64_t sub_23123AF84()
{
  OUTLINED_FUNCTION_8();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v3 = OUTLINED_FUNCTION_26_3(v2);

  return sub_231239714(v3, v0);
}

uint64_t sub_23123B010()
{
  OUTLINED_FUNCTION_8();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v3 = OUTLINED_FUNCTION_26_3(v2);

  return sub_23123AB10(v3, v0);
}

uint64_t sub_23123B09C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43BF8, &unk_23136F900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23123B10C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_23123B154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_20();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = a9;
  sub_2311D38A8(a5, (v14 + 7));
  return v14;
}

void *sub_23123B1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  a7[2] = a1;
  a7[3] = a2;
  a7[4] = a3;
  a7[5] = a4;
  a7[6] = a9;
  sub_2311D38A8(a5, (a7 + 7));
  return a7;
}

uint64_t OUTLINED_FUNCTION_13_9@<X0>(unint64_t a1@<X8>)
{

  return sub_2311F5CF8(a1 > 1, v1, 1);
}

void OUTLINED_FUNCTION_17_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a10);

  JUMPOUT(0x23192B930);
}

uint64_t OUTLINED_FUNCTION_18_9()
{
  v2 = *(v0 + 704);
  *(v0 + 704) = v2 + 1;
  v3 = *(v0 + 688) + 48 * v2 + 80;

  return sub_23123B09C(v3, v0 + 64);
}

uint64_t OUTLINED_FUNCTION_24_8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));

  return sub_231369100();
}

uint64_t OUTLINED_FUNCTION_28_7()
{
  sub_2311D38A8((v0 + 160), v0 + 416);

  return sub_23123B09C(v0 + 112, v0 + 208);
}

uint64_t OUTLINED_FUNCTION_44_5(float a1)
{
  *v1 = a1;

  return sub_231368930();
}

uint64_t OUTLINED_FUNCTION_46_6()
{
  v2 = v0[87];
  v3 = v0[88] + 1;

  return __swift_destroy_boxed_opaque_existential_1Tm(v0 + 52);
}

uint64_t sub_23123B354()
{
  v1 = *(v0 + 56);
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  sub_2311CF324((v1 + 7), v0 + 16);
  type metadata accessor for DefaultOwnerDefinitionProvider();
  v7 = swift_allocObject();
  ObjectType = swift_getObjectType();
  *(v0 + 64) = sub_23123B1CC(v2, v3, v5, v4, (v0 + 16), 1, v7, ObjectType, v6);
  sub_231369EE0();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_23123B484;

  return sub_2312390B8();
}

uint64_t sub_23123B484(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v7 = *v1;

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t sub_23123B59C()
{
  sub_23123AE54();

  return swift_deallocClassInstance();
}

uint64_t sub_23123B5F4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23120B320;

  return sub_23123B334();
}

void *sub_23123B684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_23123B704(a1, a2, a3, a4, v13, a6, a7);
}

void *sub_23123B704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t a6, uint64_t a7)
{
  a5[3] = a1;
  a5[4] = a2;
  a5[5] = a3;
  a5[6] = a7;
  sub_2311CF324(a4, (a5 + 7));
  swift_unknownObjectRetain();
  sub_23126DDD0();
  v10 = v9;
  v11 = *(v9 + 16);
  v12 = v11 + 1;
  if (v11 >= *(v9 + 24) >> 1)
  {
    sub_23126DDD0();
    v10 = v40;
  }

  v13 = type metadata accessor for SuggestionsForHelpDefinitionFactory();
  v14 = sub_23123BAAC(qword_280F85178, type metadata accessor for SuggestionsForHelpDefinitionFactory);
  *(v10 + 16) = v12;
  v15 = v10 + 16 * v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = v14;
  v16 = v11 + 2;
  if ((v11 + 2) > *(v10 + 24) >> 1)
  {
    sub_23126DDD0();
    v10 = v41;
  }

  v17 = type metadata accessor for BaseSuggestionsOwnerDefinitionFactory();
  v18 = sub_23123BAAC(&unk_280F85680, type metadata accessor for BaseSuggestionsOwnerDefinitionFactory);
  *(v10 + 16) = v16;
  v19 = v10 + 16 * v12;
  *(v19 + 32) = v17;
  *(v19 + 40) = v18;
  v20 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  v21 = sub_2313683F0();
  v22 = *(v10 + 16);
  if (v21)
  {
    v23 = v22 + 1;
    if (v22 >= *(v10 + 24) >> 1)
    {
      sub_23126DDD0();
      v10 = v45;
    }

    v24 = type metadata accessor for AppIntentBridgeFactory();
    v25 = sub_23123BAAC(&qword_27DD43C00, type metadata accessor for AppIntentBridgeFactory);
    *(v10 + 16) = v23;
    v26 = v10 + 16 * v22;
    *(v26 + 32) = v24;
    *(v26 + 40) = v25;
  }

  else
  {
    v23 = *(v10 + 16);
  }

  v27 = v23 + 1;
  if (v23 >= *(v10 + 24) >> 1)
  {
    sub_23126DDD0();
    v10 = v42;
  }

  v28 = type metadata accessor for INIntentBridgeFactory();
  v29 = sub_23123BAAC(&qword_280F81EE0, type metadata accessor for INIntentBridgeFactory);
  *(v10 + 16) = v27;
  v30 = v10 + 16 * v23;
  *(v30 + 32) = v28;
  *(v30 + 40) = v29;
  v31 = v23 + 2;
  if ((v23 + 2) > *(v10 + 24) >> 1)
  {
    sub_23126DDD0();
    v10 = v43;
  }

  v32 = type metadata accessor for CustomContinuersBridgeFactory();
  v33 = sub_23123BAAC(qword_280F7EA40, type metadata accessor for CustomContinuersBridgeFactory);
  *(v10 + 16) = v31;
  v34 = v10 + 16 * v27;
  *(v34 + 32) = v32;
  *(v34 + 40) = v33;
  v35 = v23 + 3;
  if (v35 > *(v10 + 24) >> 1)
  {
    sub_23126DDD0();
    v10 = v44;
  }

  swift_unknownObjectRelease();
  v36 = sub_2313696C0();
  v37 = sub_23123BAAC(&qword_280F7C8B0, MEMORY[0x277D60780]);
  *(v10 + 16) = v35;
  v38 = v10 + 16 * v31;
  *(v38 + 32) = v36;
  *(v38 + 40) = v37;
  a5[2] = v10;
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  return a5;
}

uint64_t sub_23123BAAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23123BAF4(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v4 = sub_2313698C0();
  v3[8] = v4;
  OUTLINED_FUNCTION_0(v4);
  v3[9] = v5;
  v7 = *(v6 + 64);
  v3[10] = OUTLINED_FUNCTION_43();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C08, &unk_2313708B0) - 8) + 64);
  v3[11] = OUTLINED_FUNCTION_43();
  v9 = sub_231367E60();
  v3[12] = v9;
  OUTLINED_FUNCTION_0(v9);
  v3[13] = v10;
  v12 = *(v11 + 64);
  v3[14] = OUTLINED_FUNCTION_43();
  v13 = sub_231367EA0();
  v3[15] = v13;
  OUTLINED_FUNCTION_0(v13);
  v3[16] = v14;
  v16 = *(v15 + 64);
  v3[17] = OUTLINED_FUNCTION_43();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437B8, &qword_23136FA60);
  OUTLINED_FUNCTION_0(v17);
  v3[18] = v18;
  v20 = *(v19 + 64);
  v3[19] = OUTLINED_FUNCTION_67();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C10, &qword_23136FA68) - 8) + 64);
  v3[22] = OUTLINED_FUNCTION_67();
  v3[23] = swift_task_alloc();
  v22 = sub_231369630();
  v3[24] = v22;
  OUTLINED_FUNCTION_0(v22);
  v3[25] = v23;
  v25 = *(v24 + 64);
  v3[26] = OUTLINED_FUNCTION_67();
  v3[27] = swift_task_alloc();
  v26 = sub_2313696B0();
  v3[28] = v26;
  OUTLINED_FUNCTION_0(v26);
  v3[29] = v27;
  v29 = *(v28 + 64);
  v3[30] = OUTLINED_FUNCTION_67();
  v3[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23123BDC4, 0, 0);
}

uint64_t sub_23123BDC4()
{
  v157 = v0;
  v1 = v0;
  v2 = v0[29];
  v3 = v1[25];
  v4 = v1[6];
  v5 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2313683A0();
  v6 = sub_23136A200();

  v151 = *(v6 + 16);
  v139 = *MEMORY[0x277D1EB18];
  v135 = (v3 + 8);
  v137 = (v3 + 104);
  v133 = (v2 + 8);
  v142 = v2;
  v130 = (v2 + 32);
  v8 = 0;
  v131 = MEMORY[0x277D84F90];
  v154 = v1;
  while (1)
  {
    if (v151 == v8)
    {
      v141 = v1[18];
      v47 = v1[16];
      v48 = v1[13];
      v49 = v1[7];

      result = sub_23123CE3C(v131, v49);
      v50 = 0;
      v51 = MEMORY[0x277D84F90];
      v155 = MEMORY[0x277D84F90];
      v52 = result + 64;
      v143 = result;
      v53 = -1;
      v54 = -1 << *(result + 32);
      if (-v54 < 64)
      {
        v53 = ~(-1 << -v54);
      }

      v55 = v53 & *(result + 64);
      v56 = (63 - v54) >> 6;
      v140 = *MEMORY[0x277D72D28];
      v138 = *MEMORY[0x277D60CE8];
      v136 = (v48 + 104);
      v134 = *MEMORY[0x277D60CE0];
      v132 = (v47 + 8);
      v146 = v56;
      v149 = result + 64;
LABEL_19:
      v152 = v51;
      while (1)
      {
        while (1)
        {
          if (!v55)
          {
            while (1)
            {
              v57 = v50 + 1;
              if (__OFADD__(v50, 1))
              {
                break;
              }

              if (v57 >= v56)
              {
                v81 = v1[22];
                v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C20, &unk_23136FA70);
                __swift_storeEnumTagSinglePayload(v81, 1, 1, v82);
                v55 = 0;
                goto LABEL_27;
              }

              v55 = *(v52 + 8 * v57);
              ++v50;
              if (v55)
              {
                v50 = v57;
                goto LABEL_26;
              }
            }

            __break(1u);
            goto LABEL_47;
          }

          v57 = v50;
LABEL_26:
          v59 = v1[21];
          v58 = v1[22];
          v60 = __clz(__rbit64(v55));
          v55 &= v55 - 1;
          v61 = v60 | (v57 << 6);
          sub_23123EA8C(*(v143 + 48) + *(v141 + 72) * v61, v59, &qword_27DD437B8, &qword_23136FA60);
          v62 = *(*(v143 + 56) + 8 * v61);
          v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C20, &unk_23136FA70);
          v64 = *(v63 + 48);
          sub_23123E9F8(v59, v58, &qword_27DD437B8, &qword_23136FA60);
          *(v58 + v64) = v62;
          __swift_storeEnumTagSinglePayload(v58, 0, 1, v63);
          v1 = v154;
          sub_231369EE0();
LABEL_27:
          v65 = v1[23];
          sub_23123E9F8(v1[22], v65, &qword_27DD43C10, &qword_23136FA68);
          v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C20, &unk_23136FA70);
          if (__swift_getEnumTagSinglePayload(v65, 1, v66) == 1)
          {
            v98 = v1[10];

            sub_231369150();
            v99 = sub_2313698A0();
            v100 = sub_23136A3A0();
            v101 = os_log_type_enabled(v99, v100);
            v102 = v1;
            v105 = v1 + 9;
            v104 = v1[9];
            v103 = v105[1];
            v106 = v102[8];
            if (v101)
            {
              v107 = swift_slowAlloc();
              v108 = swift_slowAlloc();
              v156 = v108;
              *v107 = 136315138;
              v109 = sub_2313692F0();
              v110 = sub_231369EE0();
              v111 = MEMORY[0x23192A860](v110, v109);
              v113 = v112;

              v114 = sub_2311CFD58(v111, v113, &v156);

              *(v107 + 4) = v114;
              _os_log_impl(&dword_2311CB000, v99, v100, "AppEntityCountBasedSignalExtractor:: Return signals %s", v107, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v108);
              MEMORY[0x23192B930](v108, -1, -1);
              MEMORY[0x23192B930](v107, -1, -1);
            }

            (*(v104 + 8))(v103, v106);
            v116 = v154[30];
            v115 = v154[31];
            v118 = v154[26];
            v117 = v154[27];
            v120 = v154[22];
            v119 = v154[23];
            v122 = v154[20];
            v121 = v154[21];
            v123 = v154[19];
            v124 = v154[17];
            v144 = v154[14];
            v147 = v154[11];
            v150 = v154[10];

            v125 = v154[1];

            return v125(v152);
          }

          v67 = v1[23];
          v68 = *(v67 + *(v66 + 48));
          sub_23123E9F8(v67, v1[20], &qword_27DD437B8, &qword_23136FA60);
          v69 = *(v68 + 16);

          v70 = v1[20];
          if (v69)
          {
            break;
          }

LABEL_31:
          result = sub_2311D1F18(v70, &qword_27DD437B8, &qword_23136FA60);
          v56 = v146;
          v52 = v149;
        }

        v71 = v1[19];
        sub_23123EA8C(v70, v71, &qword_27DD437B8, &qword_23136FA60);
        v72 = sub_231369D50();
        if (__swift_getEnumTagSinglePayload(v71, 1, v72) == 1)
        {
          v73 = v1[19];
          sub_2311D1F18(v1[20], &qword_27DD437B8, &qword_23136FA60);
          v70 = v73;
          goto LABEL_31;
        }

        v74 = v1[19];
        v75 = v1;
        v76 = *(v72 - 8);
        if ((*(v76 + 88))(v74, v72) == v140)
        {
          v83 = v75[19];
          v84 = v75[17];
          v85 = v75[14];
          v153 = v75[15];
          v86 = v75[11];
          v127 = v75[12];
          v87 = *(v76 + 96);
          v88 = OUTLINED_FUNCTION_64();
          v89(v88);
          v90 = *v83;
          v91 = *(*v83 + 16);
          v92 = *(*v83 + 24);
          v93 = *(v90 + 40);
          v129 = *(v90 + 32);
          sub_231369EE0();
          sub_231369EE0();

          if (v69 == 1)
          {
            v94 = v134;
          }

          else
          {
            v94 = v138;
          }

          (*v136)(v85, v94, v127);
          sub_2313692F0();
          sub_231367E90();
          v95 = sub_231367B80();
          __swift_storeEnumTagSinglePayload(v86, 1, 1, v95);
          sub_2313691F0();
          sub_2311D1F18(v86, &qword_27DD43C08, &unk_2313708B0);
          (*v132)(v84, v153);

          MEMORY[0x23192A830](v96);
          if (*((v155 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v155 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23136A1C0();
          }

          v97 = v75[20];
          sub_23136A240();

          result = sub_2311D1F18(v97, &qword_27DD437B8, &qword_23136FA60);
          v51 = v155;
          v56 = v146;
          v52 = v149;
          v1 = v75;
          goto LABEL_19;
        }

        v77 = v75[19];
        sub_2311D1F18(v75[20], &qword_27DD437B8, &qword_23136FA60);
        v78 = *(v76 + 8);
        v79 = OUTLINED_FUNCTION_64();
        result = v80(v79);
        v56 = v146;
        v52 = v149;
        v1 = v75;
      }
    }

    if (v8 >= *(v6 + 16))
    {
      break;
    }

    v9 = v1[27];
    v10 = v1[26];
    v11 = v1[24];
    v148 = (*(v142 + 80) + 32) & ~*(v142 + 80);
    v12 = v8;
    v145 = *(v142 + 72);
    (*(v142 + 16))(v1[31], v6 + v148 + v145 * v8, v1[28]);
    sub_231369680();
    (*v137)(v10, v139, v11);
    sub_23123EA44(&qword_27DD43C18, 255, MEMORY[0x277D1EB58]);
    v13 = v1;
    sub_23136A140();
    sub_23136A140();
    v20 = v1[2];
    v21 = v1[3];
    v22 = v1[4];
    v23 = v1[5];
    v25 = v1[26];
    v24 = v13[27];
    v26 = v13[24];
    if (v20 == v22 && v21 == v23)
    {
      v40 = OUTLINED_FUNCTION_3_13(v20, v14, v22, v15, v16, v17, v18, v19, v126, v128, v130, v131, v133, v135);
      (v6)(v40);
      (v6)(v24, v26);

LABEL_11:
      v1 = v154;
      v41 = *v130;
      (*v130)(v154[30], v154[31], v154[28]);
      v42 = v131;
      v156 = v131;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2311F5958(0, *(v131 + 16) + 1, 1);
        v42 = v156;
      }

      v44 = *(v42 + 16);
      v43 = *(v42 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_2311F5958(v43 > 1, v44 + 1, 1);
        v42 = v156;
      }

      v8 = v12 + 1;
      v45 = v154[30];
      v46 = v154[28];
      *(v42 + 16) = v44 + 1;
      v131 = v42;
      result = v41(v42 + v148 + v44 * v145, v45, v46);
    }

    else
    {
      v28 = v13[3];
      v29 = v13[5];
      v30 = sub_23136A900();
      v31 = v30;
      v39 = OUTLINED_FUNCTION_3_13(v30, v32, v33, v34, v35, v36, v37, v38, v126, v128, v130, v131, v133, v135);
      (v6)(v39);
      (v6)(v24, v26);

      if (v31)
      {
        goto LABEL_11;
      }

      v1 = v154;
      result = (*v133)(v154[31], v154[28]);
      v8 = v12 + 1;
    }
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_23123C81C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v56 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C28, &unk_23136FA80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437C0, &qword_23136DFD0);
  v51 = *(v7 - 8);
  v8 = *(v51 + 64);
  MEMORY[0x28223BE20](v7);
  v54 = &v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v49 = &v45 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v50 = &v45 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v45 - v19;
  v21 = sub_231369D50();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v45 - v27;
  v55 = a1;
  sub_231369670();
  v29 = sub_231369D00();
  if (__swift_getEnumTagSinglePayload(v20, 1, v29) == 1)
  {
    sub_2311D1F18(v20, &qword_27DD43358, &qword_23136FA90);
    v30 = v21;
  }

  else
  {
    sub_231369CC0();
    v31 = *(v29 - 8);
    v32 = *(v31 + 8);
    v47 = v31 + 8;
    v48 = v32;
    v32(v20, v29);
    (*(v22 + 32))(v28, v26, v21);
    v33 = *(*(v52 + 16) + 16);
    sub_231369EE0();
    v34 = v53;
    sub_231210D14(v28, v33);

    v30 = v21;
    if (__swift_getEnumTagSinglePayload(v34, 1, v7) == 1)
    {
      (*(v22 + 8))(v28, v21);
      sub_2311D1F18(v34, &qword_27DD43C28, &unk_23136FA80);
    }

    else
    {
      v46 = v22;
      v52 = v21;
      v39 = v51;
      (*(v51 + 32))(v54, v34, v7);
      v53 = v7;
      v40 = sub_231366B30();
      v41 = v49;
      sub_231369670();
      v42 = v57;
      v40(v41);
      if (!v42)
      {
        v43 = v53;

        sub_2311D1F18(v41, &qword_27DD43358, &qword_23136FA90);
        v44 = v50;
        if (__swift_getEnumTagSinglePayload(v50, 1, v29) == 1)
        {
          (*(v51 + 8))(v54, v43);
          v30 = v52;
          (*(v46 + 8))(v28, v52);
          sub_2311D1F18(v44, &qword_27DD43358, &qword_23136FA90);
          v37 = 1;
          v36 = v56;
          return __swift_storeEnumTagSinglePayload(v36, v37, 1, v30);
        }

        v36 = v56;
        sub_231369CC0();
        (*(v51 + 8))(v54, v43);
        v30 = v52;
        (*(v46 + 8))(v28, v52);
        v48(v44, v29);
        goto LABEL_8;
      }

      sub_2311D1F18(v41, &qword_27DD43358, &qword_23136FA90);
      (*(v39 + 8))(v54, v53);
      v30 = v52;
      (*(v46 + 8))(v28, v52);
    }
  }

  sub_231369670();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v29);
  v36 = v56;
  if (EnumTagSinglePayload != 1)
  {
    sub_231369CC0();
    (*(*(v29 - 8) + 8))(v14, v29);
LABEL_8:
    v37 = 0;
    return __swift_storeEnumTagSinglePayload(v36, v37, 1, v30);
  }

  sub_2311D1F18(v14, &qword_27DD43358, &qword_23136FA90);
  v37 = 1;
  return __swift_storeEnumTagSinglePayload(v36, v37, 1, v30);
}

uint64_t sub_23123CE3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v60 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437B8, &qword_23136FA60);
  v52 = *(v49 - 8);
  v5 = *(v52 + 64);
  MEMORY[0x28223BE20](v49);
  v7 = &v48 - v6;
  v64 = sub_2313696B0();
  v8 = *(*(v64 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v64);
  v56 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v63 = &v48 - v11;
  v12 = 0;
  v13 = MEMORY[0x277D84F98];
  v65 = MEMORY[0x277D84F98];
  v14 = *(a1 + 16);
  v58 = v15;
  v59 = v14;
  v57 = v15 + 16;
  v61 = (v15 + 32);
  v50 = xmmword_23136B670;
  v53 = a1;
  while (1)
  {
    if (v59 == v12)
    {
      goto LABEL_20;
    }

    if (v12 >= *(a1 + 16))
    {
      break;
    }

    v16 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v17 = *(v58 + 72);
    v18 = v63;
    (*(v58 + 16))(v63, a1 + v16 + v17 * v12, v64);
    sub_23123C81C(v18, v60, v7);
    if (v3)
    {
      (*(v58 + 8))(v63, v64);

LABEL_20:

      return v13;
    }

    v62 = v12;
    v19 = v7;
    v27 = sub_231216378();
    v28 = v13[2];
    v29 = (v20 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_22;
    }

    v31 = v20;
    if (v13[3] < v30)
    {
      sub_2312B4680(v30, 1, v21, v22, v23, v24, v25, v26, v48, v49, v50, *(&v50 + 1), v51, v52, v53, v54, v55, v56, v57, v58);
      v13 = v65;
      v32 = sub_231216378();
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_24;
      }

      v27 = v32;
    }

    if (v31)
    {
      v55 = 0;
      sub_2311D1F18(v19, &qword_27DD437B8, &qword_23136FA60);
      v34 = v13[7];
      v35 = *v61;
      (*v61)(v56, v63, v64);
      v36 = *(v34 + 8 * v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v34 + 8 * v27) = v36;
      v54 = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23126E138(0, *(v36 + 16) + 1, 1, v36);
        v36 = v45;
        *(v34 + 8 * v27) = v45;
      }

      v39 = *(v36 + 16);
      v38 = *(v36 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_23126E138(v38 > 1, v39 + 1, 1, v36);
        v36 = v46;
        *(v34 + 8 * v27) = v46;
      }

      v3 = v55;
      v40 = v56;
      v7 = v19;
      *(v36 + 16) = v39 + 1;
      v54(v36 + v16 + v39 * v17, v40, v64);
      a1 = v53;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43448, &qword_23136C968);
      v41 = swift_allocObject();
      *(v41 + 16) = v50;
      (*v61)(v41 + v16, v63, v64);
      v13[(v27 >> 6) + 8] |= 1 << v27;
      sub_23123E9F8(v19, v13[6] + *(v52 + 72) * v27, &qword_27DD437B8, &qword_23136FA60);
      *(v13[7] + 8 * v27) = v41;
      v42 = v13[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_23;
      }

      v13[2] = v44;
      v7 = v19;
    }

    v12 = v62 + 1;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:

  result = sub_23136A970();
  __break(1u);
  return result;
}

uint64_t sub_23123D2CC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_23120B320;

  return sub_23123BAF4(v6, a2);
}

void sub_23123D364(uint64_t a1, uint64_t a2)
{
  sub_23123EA44(qword_280F7D7E8, a2, type metadata accessor for AppEntityCountBasedSignalExtractor);

  JUMPOUT(0x2319284B0);
}

uint64_t sub_23123D3D0()
{
  v0 = sub_231368290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_231369D50();
  __swift_allocate_value_buffer(v5, qword_280F8E570);
  v6 = __swift_project_value_buffer(v5, qword_280F8E570);
  v7 = swift_allocObject();
  (*(v1 + 104))(v4, *MEMORY[0x277D60EB8], v0);
  v8 = sub_231368280();
  v10 = v9;
  (*(v1 + 8))(v4, v0);
  v7[2] = v8;
  v7[3] = v10;
  v7[4] = 0xD000000000000016;
  v7[5] = 0x800000023137D960;
  *v6 = v7;
  return (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D72D28], v5);
}

uint64_t sub_23123D570()
{
  v0 = sub_231368290();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_231369D50();
  __swift_allocate_value_buffer(v5, qword_280F8E5A0);
  v6 = __swift_project_value_buffer(v5, qword_280F8E5A0);
  v7 = swift_allocObject();
  (*(v1 + 104))(v4, *MEMORY[0x277D60EB0], v0);
  v8 = sub_231368280();
  v10 = v9;
  (*(v1 + 8))(v4, v0);
  *(v7 + 16) = v8;
  *(v7 + 24) = v10;
  strcpy((v7 + 32), "DOCFileEntity");
  *(v7 + 46) = -4864;
  *v6 = v7;
  return (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D72D28], v5);
}

uint64_t sub_23123D738@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C40, &qword_231378460);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v72 = &v59 - v5;
  v6 = sub_2313698C0();
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = *(v69 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_231369D50();
  v73 = *(v10 - 8);
  v11 = *(v73 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v71 = (&v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v15 = &v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = (&v59 - v18);
  v20 = sub_231369BE0();
  v74 = *(v20 - 8);
  v21 = *(v74 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23123EA8C(a1, v19, &qword_27DD43358, &qword_23136FA90);
  v24 = sub_231369D00();
  if (__swift_getEnumTagSinglePayload(v19, 1, v24) == 1)
  {
    sub_2311D1F18(v19, &qword_27DD43358, &qword_23136FA90);
LABEL_10:
    v51 = v75;
    v52 = 1;
    return __swift_storeEnumTagSinglePayload(v51, v52, 1, v24);
  }

  v25 = *(v24 - 8);
  v26 = (*(v25 + 88))(v19, v24);
  if (v26 != *MEMORY[0x277D729F8])
  {
    (*(v25 + 8))(v19, v24);
    goto LABEL_10;
  }

  v67 = v26;
  v68 = v25;
  (*(v25 + 96))(v19, v24);
  v27 = *v19;
  v28 = swift_projectBox();
  v29 = v74;
  (*(v74 + 16))(v23, v28, v20);

  sub_231369BD0();
  v30 = v73;
  v31 = (*(v73 + 88))(v15, v10);
  if (v31 != *MEMORY[0x277D72D28])
  {
    (*(v29 + 8))(v23, v20);
    (*(v30 + 8))(v15, v10);
    goto LABEL_10;
  }

  v64 = v31;
  (*(v30 + 96))(v15, v10);
  v32 = *v15;
  v33 = *(*v15 + 16);
  v34 = *(*v15 + 24);
  v63 = v33;
  v35 = *(v32 + 40);
  v65 = *(v32 + 32);
  sub_231369EE0();
  v66 = v35;
  sub_231369EE0();

  v80 = sub_231369BA0();
  v81 = v36;
  v78 = 63;
  v79 = 0xE100000000000000;
  sub_231207C1C();
  v37 = sub_23136A4E0();

  if (!v37[2])
  {
    (*(v74 + 8))(v23, v20);

    goto LABEL_10;
  }

  v61 = v34;
  v38 = v37[4];
  v39 = v37[5];
  sub_231369EE0();

  v80 = v38;
  v81 = v39;
  v78 = 0x74694B636973756DLL;
  v79 = 0xEB000000002F2F3ALL;
  v76 = 47;
  v77 = 0xE100000000000000;
  v40 = sub_23136A500();
  v42 = v41;

  v43 = v66;
  v80 = v65;
  v81 = v66;
  sub_231369EE0();
  MEMORY[0x23192A730](v40, v42);

  v44 = v81;
  v62 = v80;
  sub_231369150();
  sub_231369EE0();
  sub_231369EE0();
  v45 = sub_2313698A0();
  v46 = sub_23136A3A0();
  v60 = v44;

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v80 = v59;
    *v47 = 136315394;
    v48 = sub_2311CFD58(v65, v43, &v80);

    *(v47 + 4) = v48;
    *(v47 + 12) = 2080;
    v49 = v60;
    *(v47 + 14) = sub_2311CFD58(v62, v60, &v80);
    _os_log_impl(&dword_2311CB000, v45, v46, "AppEntityCountBasedSignalExtractor:: genericMusicEntityTransformer:: %s -> %s", v47, 0x16u);
    v50 = v59;
    swift_arrayDestroy();
    MEMORY[0x23192B930](v50, -1, -1);
    MEMORY[0x23192B930](v47, -1, -1);

    (*(v69 + 8))(v9, v70);
  }

  else
  {

    (*(v69 + 8))(v9, v70);
    v49 = v60;
  }

  v54 = v62;
  v70 = swift_allocBox();
  v55 = swift_allocObject();
  v56 = v61;
  v55[2] = v63;
  v55[3] = v56;
  v55[4] = v54;
  v55[5] = v49;
  v57 = v71;
  *v71 = v55;
  (*(v73 + 104))(v57, v64, v10);
  sub_231369BA0();
  sub_231369BB0();
  sub_231369BC0();
  (*(v74 + 8))(v23, v20);
  v58 = v75;
  *v75 = v70;
  (*(v68 + 104))(v58, v67, v24);
  v51 = v58;
  v52 = 0;
  return __swift_storeEnumTagSinglePayload(v51, v52, 1, v24);
}

uint64_t sub_23123DF9C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437C0, &qword_23136DFD0);
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  return sub_231366B20();
}

uint64_t sub_23123E024@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C40, &qword_231378460);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v46 - v5;
  v6 = sub_231369D50();
  v55 = *(v6 - 8);
  v7 = *(v55 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = (&v46 - v15);
  v17 = sub_231369BE0();
  v56 = *(v17 - 8);
  v18 = *(v56 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23123EA8C(a1, v16, &qword_27DD43358, &qword_23136FA90);
  v21 = sub_231369D00();
  if (__swift_getEnumTagSinglePayload(v16, 1, v21) == 1)
  {
    sub_2311D1F18(v16, &qword_27DD43358, &qword_23136FA90);
  }

  else
  {
    v22 = *(v21 - 8);
    v23 = (*(v22 + 88))(v16, v21);
    if (v23 == *MEMORY[0x277D729F8])
    {
      v53 = v23;
      (*(v22 + 96))(v16, v21);
      v24 = *v16;
      v25 = swift_projectBox();
      v26 = v56;
      (*(v56 + 16))(v20, v25, v17);

      sub_231369BD0();
      v27 = v55;
      v28 = (*(v55 + 88))(v12, v6);
      if (v28 == *MEMORY[0x277D72D28])
      {
        v50 = v28;
        v51 = v22;
        (*(v27 + 96))(v12, v6);
        v30 = *(*v12 + 16);
        v29 = *(*v12 + 24);
        v31 = *(*v12 + 32);
        v32 = *(*v12 + 40);
        v48 = v30;
        v49 = v31;
        v52 = v29;
        sub_231369EE0();
        sub_231369EE0();

        v60 = sub_231369BA0();
        v61 = v33;
        v58 = 1029990758;
        v59 = 0xE400000000000000;
        sub_231207C1C();
        v34 = sub_23136A520();

        if (v34)
        {
          v47 = swift_allocBox();
          v35 = swift_allocObject();
          v36 = v52;
          v35[2] = v48;
          v35[3] = v36;
          v60 = v49;
          v61 = v32;
          sub_231369EE0();
          v37 = 1684629039;
        }

        else
        {
          v60 = sub_231369BA0();
          v61 = v41;
          v58 = 1029990756;
          v59 = 0xE400000000000000;
          v42 = sub_23136A520();

          if ((v42 & 1) == 0)
          {
            (*(v56 + 8))(v20, v17);

            goto LABEL_9;
          }

          v47 = swift_allocBox();
          v35 = swift_allocObject();
          v43 = v52;
          v35[2] = v48;
          v35[3] = v43;
          v60 = v49;
          v61 = v32;
          sub_231369EE0();
          v37 = 1684628527;
        }

        MEMORY[0x23192A730](v37, 0xE400000000000000);

        v44 = v61;
        v35[4] = v60;
        v35[5] = v44;
        *v10 = v35;
        (*(v55 + 104))(v10, v50, v6);
        sub_231369BA0();
        sub_231369BB0();
        sub_231369BC0();
        (*(v56 + 8))(v20, v17);
        v45 = v57;
        *v57 = v47;
        (*(v51 + 104))(v45, v53, v21);
        v38 = v45;
        v39 = 0;
        return __swift_storeEnumTagSinglePayload(v38, v39, 1, v21);
      }

      (*(v26 + 8))(v20, v17);
      (*(v27 + 8))(v12, v6);
    }

    else
    {
      (*(v22 + 8))(v16, v21);
    }
  }

LABEL_9:
  v38 = v57;
  v39 = 1;
  return __swift_storeEnumTagSinglePayload(v38, v39, 1, v21);
}

uint64_t sub_23123E6EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C30, &qword_23136FA98);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C38, &unk_23136FAA0);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23136C1C0;
  v4 = v3 + v2;
  v16 = *(v0 + 48);
  if (qword_280F80560 != -1)
  {
    swift_once();
  }

  v5 = sub_231369D50();
  v6 = __swift_project_value_buffer(v5, qword_280F8E570);
  v7 = *(*(v5 - 8) + 16);
  v7(v4, v6, v5);
  if (qword_280F80570 != -1)
  {
    swift_once();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437C0, &qword_23136DFD0);
  v9 = __swift_project_value_buffer(v8, qword_280F8E588);
  v10 = *(*(v8 - 8) + 16);
  v10(v4 + v16, v9, v8);
  v11 = v4 + v1;
  v12 = *(v0 + 48);
  if (qword_280F80578 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_280F8E5A0);
  v7(v11, v13, v5);
  if (qword_280F80588 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v8, qword_280F8E5B8);
  v10(v11 + v12, v14, v8);
  sub_23123EA44(&qword_280F7C888, 255, MEMORY[0x277D72D58]);
  *(v17 + 16) = sub_231369EC0();
  return v17;
}

uint64_t sub_23123E9F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_10(a1, a2, a3, a4);
  OUTLINED_FUNCTION_11(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_64();
  v9(v8);
  return v4;
}

uint64_t sub_23123EA44(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_23123EA8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_10(a1, a2, a3, a4);
  OUTLINED_FUNCTION_11(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_64();
  v9(v8);
  return v4;
}

uint64_t sub_23123EAD8(uint64_t *a1, uint64_t a2)
{
  v55 = a2;
  v3 = sub_231367D80();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v59 = &v51 - v9;
  MEMORY[0x28223BE20](v8);
  v66 = &v51 - v10;
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C48, &unk_231370DE0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_23136FAB0;
  sub_2313690A0();
  HasNoEngagementPolicy = type metadata accessor for HasNoEngagementPolicy();
  swift_allocObject();
  v16 = sub_2312E8D30(&v70, 0, 1);
  *(v14 + 56) = HasNoEngagementPolicy;
  *(v14 + 64) = &off_2845F6340;
  *(v14 + 32) = v16;
  v17 = type metadata accessor for NotExposedTooManyTimesPolicy();
  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  *(v14 + 96) = v17;
  *(v14 + 104) = &off_2845F6320;
  v54 = v14;
  *(v14 + 72) = v18;
  v53 = v11;
  *&v68 = v11;
  *(&v68 + 1) = v12;
  v52 = v12;
  v56 = v13;
  v69 = v13;
  sub_23123F03C();
  sub_231367A10();
  v20 = v19;
  result = sub_231367D60();
  v22 = result;
  v23 = 0;
  v67 = *(result + 16);
  v65 = v4 + 16;
  v63 = v4 + 88;
  v62 = *MEMORY[0x277D60BA0];
  v61 = (v4 + 8);
  v51 = (v4 + 96);
  v64 = v4;
  v57 = (v4 + 32);
  v60 = MEMORY[0x277D84F90];
  v24 = v59;
  while (1)
  {
    if (v67 == v23)
    {

      v40 = v55;
      sub_2311CF324(v55, &v70);
      v41 = type metadata accessor for NotShownPreviousSuggestionTooSoonPolicy();
      swift_allocObject();
      v42 = sub_2312EA284(&v70, v60, v20);
      v43 = v54;
      v54[17] = v41;
      v43[18] = &off_2845F6310;
      v43[14] = v42;
      sub_2311CF324(v40, &v70);
      v44 = v53;
      v45 = v52;
      *&v68 = v53;
      *(&v68 + 1) = v52;
      v46 = v56;
      v69 = v56;
      DeliveryVehiclePolicy = type metadata accessor for SuppressionWindowSinceLastDeliveryVehiclePolicy();
      swift_allocObject();
      v48 = sub_2312ECB48(&v70, &v68);
      v43[22] = DeliveryVehiclePolicy;
      v43[23] = &off_2845F62C0;
      v43[19] = v48;
      *&v70 = v44;
      *(&v70 + 1) = v45;
      v71 = v46;
      inited = type metadata accessor for MinSiriInitActionCountSinceDeliveryVehicle();
      swift_allocObject();
      v50 = sub_2312ED968(&v70);
      v43[27] = inited;
      v43[28] = &off_2845F62B0;
      v43[24] = v50;
      swift_bridgeObjectRetain_n();
      return v43;
    }

    if (v23 >= *(v22 + 16))
    {
      break;
    }

    v25 = v64;
    v26 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v27 = v22;
    v28 = *(v64 + 72);
    v29 = v22 + v26 + v28 * v23;
    v30 = *(v64 + 16);
    v31 = v66;
    v30(v66, v29, v3);
    v30(v24, v31, v3);
    v32 = (*(v25 + 88))(v24, v3);
    if (v32 == v62)
    {
      (*v51)(v24, v3);
      v34 = sub_231367020();
      (*(*(v34 - 8) + 8))(v24, v34);
      v35 = *v57;
      (*v57)(v58, v31, v3);
      v36 = v60;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v70 = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2311F5784(0, *(v36 + 16) + 1, 1);
        v36 = v70;
      }

      v22 = v27;
      v39 = *(v36 + 16);
      v38 = *(v36 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_2311F5784(v38 > 1, v39 + 1, 1);
        v36 = v70;
      }

      ++v23;
      *(v36 + 16) = v39 + 1;
      v60 = v36;
      result = v35((v36 + v26 + v39 * v28), v58, v3);
    }

    else
    {
      v33 = *v61;
      (*v61)(v24, v3);
      result = v33(v31, v3);
      ++v23;
      v22 = v27;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23123F03C()
{
  result = qword_280F7CE78;
  if (!qword_280F7CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7CE78);
  }

  return result;
}

void sub_23123F090(uint64_t a1)
{
  v2 = sub_2313698C0();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v77 = v4;
  v78 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_4();
  v79 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C68, &qword_231378D20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v76 - v11;
  v13 = sub_2313696B0();
  v14 = OUTLINED_FUNCTION_0_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_4();
  v21 = (v20 - v19);
  v22 = sub_231367B30();
  v23 = OUTLINED_FUNCTION_0_0(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_4();
  v29 = v28 - v27;
  v30 = *(a1 + 16);
  v83 = v16;
  v84 = v13;
  if (v30)
  {
    v32 = *(v26 + 16);
    v31 = v26 + 16;
    v33 = a1 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
    v86 = *(v31 + 56);
    v87 = v32;
    v34 = (v31 - 8);
    v85 = (v16 + 32);
    v35 = MEMORY[0x277D84F90];
    v81 = v31;
    v82 = v21;
    do
    {
      (v87)(v29, v33, v22);
      sub_231367AF0();
      (*v34)(v29, v22);
      if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
      {
        sub_2311D1F18(v12, &qword_27DD43C68, &qword_231378D20);
      }

      else
      {
        v36 = *v85;
        (*v85)(v21, v12, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23126E138(0, *(v35 + 16) + 1, 1, v35);
          v35 = v40;
        }

        v38 = *(v35 + 16);
        v37 = *(v35 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_23126E138(v37 > 1, v38 + 1, 1, v35);
          v35 = v41;
        }

        *(v35 + 16) = v38 + 1;
        v21 = v82;
        v39 = v35 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v38;
        v13 = v84;
        v36(v39, v82, v84);
      }

      v33 += v86;
      --v30;
    }

    while (v30);
  }

  v42 = sub_23136A1E0();

  v43 = sub_231240B68(v42, v80);

  if (v43[2])
  {
    v44 = v79;
    sub_231369130();

    v45 = sub_2313698A0();
    v46 = sub_23136A3A0();

    if (os_log_type_enabled(v45, v46))
    {
      v81 = 0;
      LODWORD(v86) = v46;
      v87 = v45;
      v47 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v88 = v82;
      v85 = v47;
      *v47 = 136315138;
      v48 = 1 << *(v43 + 32);
      if (v48 < 64)
      {
        v49 = ~(-1 << v48);
      }

      else
      {
        v49 = -1;
      }

      v50 = v49 & v43[8];
      v51 = (v48 + 63) >> 6;
      swift_retain_n();
      v52 = 0;
      v53 = MEMORY[0x277D84F90];
      while (v50)
      {
LABEL_22:
        v55 = (v52 << 9) | (8 * __clz(__rbit64(v50)));
        v56 = *(v43[7] + v55);
        v57 = *(v56 + 16);
        v58 = *(v53 + 16);
        v59 = v58 + v57;
        if (__OFADD__(v58, v57))
        {
          goto LABEL_41;
        }

        v60 = *(v43[7] + v55);
        sub_231369EE0();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v59 > *(v53 + 24) >> 1)
        {
          if (v58 <= v59)
          {
            v62 = v58 + v57;
          }

          else
          {
            v62 = v58;
          }

          sub_23126E138(isUniquelyReferenced_nonNull_native, v62, 1, v53);
          v53 = v63;
        }

        v50 &= v50 - 1;
        if (*(v56 + 16))
        {
          v64 = *(v53 + 16);
          if ((*(v53 + 24) >> 1) - v64 < v57)
          {
            goto LABEL_42;
          }

          v65 = v53 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v64;
          swift_arrayInitWithCopy();

          if (v57)
          {
            v66 = *(v53 + 16);
            v67 = __OFADD__(v66, v57);
            v68 = v66 + v57;
            if (v67)
            {
              goto LABEL_43;
            }

            *(v53 + 16) = v68;
          }
        }

        else
        {

          if (v57)
          {
            __break(1u);
            goto LABEL_36;
          }
        }
      }

      while (1)
      {
        v54 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          break;
        }

        if (v54 >= v51)
        {

          v69 = sub_23136A1D0();
          v71 = v70;

          v72 = sub_2311CFD58(v69, v71, &v88);

          v73 = v85;
          *(v85 + 1) = v72;
          v74 = v87;
          _os_log_impl(&dword_2311CB000, v87, v86, "%s", v73, 0xCu);
          v75 = v82;
          __swift_destroy_boxed_opaque_existential_1Tm(v82);
          MEMORY[0x23192B930](v75, -1, -1);
          MEMORY[0x23192B930](v73, -1, -1);

          (*(v77 + 8))(v79, v78);
          goto LABEL_39;
        }

        v50 = v43[v54 + 8];
        ++v52;
        if (v50)
        {
          v52 = v54;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    else
    {

      (*(v77 + 8))(v44, v78);
LABEL_39:
      *(swift_allocObject() + 16) = v43;
    }
  }

  else
  {
LABEL_36:
  }
}

uint64_t sub_23123F6E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C80, &unk_23136FB40);
  v0 = sub_231369D40();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23136FAB0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D72CE0], v0);
  v6(v5 + v2, *MEMORY[0x277D72CD0], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277D72CA0], v0);
  v6(v5 + 3 * v2, *MEMORY[0x277D72CB0], v0);
  result = (v6)(v5 + 4 * v2, *MEMORY[0x277D72CE8], v0);
  off_27DD43C50 = v4;
  return result;
}

uint64_t sub_23123F858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_231369D30();
  v9 = OUTLINED_FUNCTION_0_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_4();
  v16 = v15 - v14;
  MEMORY[0x23192A470]();
  sub_23123F944(a1, a2, a3, v16, a4);
  return (*(v11 + 8))(v16, v8);
}

uint64_t sub_23123F944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v130 = a2;
  v132 = a3;
  v133 = a1;
  v131 = a5;
  v6 = sub_231369DD0();
  v7 = *(v6 - 8);
  v127 = v6;
  v128 = v7;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v120 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v119 = &v112 - v12;
  MEMORY[0x28223BE20](v11);
  v118 = &v112 - v13;
  v14 = sub_2313698C0();
  v124 = *(v14 - 8);
  v125 = v14;
  v15 = *(v124 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v122 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v121 = &v112 - v18;
  v117 = sub_231369D00();
  v115 = *(v117 - 8);
  v19 = *(v115 + 64);
  MEMORY[0x28223BE20](v117);
  v114 = (&v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43350, &unk_23136C2E0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v126 = (&v112 - v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v116 = (&v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v123 = (&v112 - v28);
  v29 = sub_231369D50();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v112 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_231369D30();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v34);
  v113 = &v112 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v112 - v40;
  MEMORY[0x28223BE20](v39);
  v43 = (&v112 - v42);
  v44 = *(v35 + 16);
  v44(&v112 - v42, a4, v34);
  v45 = (*(v35 + 88))(v43, v34);
  if (v45 == *MEMORY[0x277D72AD0])
  {
    goto LABEL_2;
  }

  if (v45 == *MEMORY[0x277D72AE8])
  {
    (*(v35 + 96))(v43, v34);
    v48 = *v43;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C58, &qword_23136FB18);
    v50 = swift_projectBox();
    v51 = *(v49 + 48);
    v44(v41, v50, v34);
    v52 = v123;
    sub_2311F03B0(v50 + v51, v123, &qword_27DD43358, &qword_23136FA90);
    v53 = v126;
    v54 = v132;
    v55 = v133;
    v56 = v130;
    sub_23123F944(v133, v130, v132, v41);
    (*(v35 + 8))(v41, v34);
    v57 = type metadata accessor for ResolvedParameter();
    if (__swift_getEnumTagSinglePayload(v53, 1, v57) == 1)
    {
      v58 = v116;
      sub_2311F0440(v52, v116, &qword_27DD43358, &qword_23136FA90);
      v59 = v117;
      if (__swift_getEnumTagSinglePayload(v58, 1, v117) != 1)
      {
        v92 = v114;
        v93 = v58;
        v94 = *(v115 + 32);
        v94(v114, v93, v59);
        v95 = v131;
        (*(v128 + 16))(v131 + *(v57 + 20), v55, v127);
        v94(v95 + *(v57 + 24), v92, v59);
        *v95 = v56;
        v95[1] = v54;
        sub_231369EE0();
        sub_2311D1F18(v126, &qword_27DD43350, &unk_23136C2E0);
        __swift_storeEnumTagSinglePayload(v95, 0, 1, v57);
      }

      v52 = v58;
    }

    v60 = v131;
    sub_2311D1F18(v52, &qword_27DD43358, &qword_23136FA90);
    sub_2311F0440(v53, v60, &qword_27DD43350, &unk_23136C2E0);
  }

  if (v45 == *MEMORY[0x277D72AB8])
  {
LABEL_2:
    (*(v35 + 96))(v43, v34);
    v46 = *v43;
    v47 = swift_projectBox();
    (*(v30 + 16))(v33, v47, v29);
    sub_2312404F0(v133, v130, v132, v131);
    (*(v30 + 8))(v33, v29);
  }

  v61 = v121;
  sub_231369130();
  v62 = v127;
  v64 = v128 + 16;
  v63 = *(v128 + 16);
  v65 = v118;
  v66 = v133;
  v63(v118, v133, v127);
  v67 = v119;
  v129 = v64;
  v126 = v63;
  v63(v119, v66, v62);
  v68 = v132;
  sub_231369EE0();
  v69 = sub_2313698A0();
  v70 = sub_23136A3B0();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v134[0] = v117;
    *v71 = 136315650;
    *(v71 + 4) = sub_2311CFD58(v130, v68, v134);
    *(v71 + 12) = 2080;
    v116 = v69;
    v72 = sub_231369DB0();
    v73 = v67;
    v75 = v74;
    LODWORD(v115) = v70;
    v76 = *(v128 + 8);
    v76(v65, v127);
    v77 = sub_2311CFD58(v72, v75, v134);

    *(v71 + 14) = v77;
    *(v71 + 22) = 2080;
    v79 = v113;
    MEMORY[0x23192A470](v78);
    v80 = sub_231369D20();
    v82 = v81;
    v83 = *(v35 + 8);
    v118 = ((v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v84 = v79;
    v85 = v83;
    v83(v84, v34);
    v86 = v73;
    v68 = v132;
    v123 = v76;
    v76(v86, v127);
    v62 = v127;
    v87 = sub_2311CFD58(v80, v82, v134);

    *(v71 + 24) = v87;
    v88 = v116;
    _os_log_impl(&dword_2311CB000, v116, v115, "Unsupported parameter %s:%s. Unknown type: %s", v71, 0x20u);
    v89 = v117;
    swift_arrayDestroy();
    MEMORY[0x23192B930](v89, -1, -1);
    MEMORY[0x23192B930](v71, -1, -1);

    v90 = *(v124 + 8);
    v90(v121, v125);
  }

  else
  {

    v97 = *(v128 + 8);
    v97(v67, v62);
    v123 = v97;
    v97(v65, v62);
    v90 = *(v124 + 8);
    v90(v61, v125);
    v85 = *(v35 + 8);
  }

  v91 = v122;
  v85(v43, v34);
  sub_231369130();
  v98 = v120;
  v126(v120, v133, v62);
  sub_231369EE0();
  v99 = sub_2313698A0();
  v100 = sub_23136A3B0();

  if (os_log_type_enabled(v99, v100))
  {
    v101 = v62;
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v134[0] = v103;
    *v102 = 136315394;
    *(v102 + 4) = sub_2311CFD58(v130, v68, v134);
    *(v102 + 12) = 2080;
    v104 = sub_231369DB0();
    v105 = v98;
    v107 = v106;
    v123(v105, v101);
    v108 = sub_2311CFD58(v104, v107, v134);

    *(v102 + 14) = v108;
    _os_log_impl(&dword_2311CB000, v99, v100, "Unsupported parameter %s:%s. Nothing to resolve to", v102, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23192B930](v103, -1, -1);
    MEMORY[0x23192B930](v102, -1, -1);

    v109 = v122;
  }

  else
  {

    v123(v98, v62);
    v109 = v91;
  }

  v90(v109, v125);
  v110 = v131;
  v111 = type metadata accessor for ResolvedParameter();
  return __swift_storeEnumTagSinglePayload(v110, 1, 1, v111);
}

uint64_t sub_2312404F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v64 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43358, &qword_23136FA90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v67 = &v59 - v10;
  v68 = sub_231369D00();
  v63 = *(v68 - 8);
  v11 = *(v63 + 64);
  MEMORY[0x28223BE20](v68);
  v62 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C60, &unk_23136FB20);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v59 - v18;
  v20 = sub_2313696B0();
  v74 = *(v20 - 8);
  v21 = *(v74 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v59 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v65 = &v59 - v29;
  MEMORY[0x28223BE20](v28);
  v66 = &v59 - v30;
  v31 = *(v4 + 16);
  if (*(v31 + 16) && (v32 = sub_231216260(), (v33 & 1) != 0) && (v34 = *(*(v31 + 56) + 8 * v32), (v73 = *(v34 + 16)) != 0))
  {
    v59 = a2;
    v60 = a3;
    v61 = a4;
    v36 = v74 + 16;
    v35 = *(v74 + 16);
    v70 = v34 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
    v71 = v35;
    (v35)(v27);
    v37 = (v36 - 8);
    v72 = v36;
    v69 = (v36 + 16);
    result = sub_231369EE0();
    for (i = 1; v73 != i; ++i)
    {
      if (i >= *(v34 + 16))
      {
        __break(1u);
        return result;
      }

      v71(v24, v70 + *(v74 + 72) * i, v20);
      sub_2313696A0();
      v40 = sub_231369620();
      if (__swift_getEnumTagSinglePayload(v19, 1, v40) == 1)
      {
        sub_2311D1F18(v19, &qword_27DD43C60, &unk_23136FB20);
        v41 = 0.0;
      }

      else
      {
        sub_231369610();
        v41 = v42;
        (*(*(v40 - 8) + 8))(v19, v40);
      }

      sub_2313696A0();
      if (__swift_getEnumTagSinglePayload(v17, 1, v40) == 1)
      {
        sub_2311D1F18(v17, &qword_27DD43C60, &unk_23136FB20);
        v43 = v41 < 0.0;
      }

      else
      {
        sub_231369610();
        v45 = v44;
        (*(*(v40 - 8) + 8))(v17, v40);
        v43 = v41 < v45;
      }

      if (v43)
      {
        (*v37)(v27, v20);
        result = (*v69)(v27, v24, v20);
      }

      else
      {
        result = (*v37)(v24, v20);
      }
    }

    v46 = *v69;
    v47 = v65;
    (*v69)(v65, v27, v20);
    v48 = v66;
    v46(v66, v47, v20);
    v49 = v67;
    sub_231369670();
    (*v37)(v48, v20);
    v50 = v68;
    if (__swift_getEnumTagSinglePayload(v49, 1, v68) == 1)
    {
      sub_2311D1F18(v49, &qword_27DD43358, &qword_23136FA90);
      a4 = v61;
      goto LABEL_19;
    }

    v52 = v62;
    v53 = *(v63 + 32);
    v53(v62, v49, v50);
    v54 = type metadata accessor for ResolvedParameter();
    v55 = *(v54 + 20);
    v56 = sub_231369DD0();
    v57 = v61;
    (*(*(v56 - 8) + 16))(&v61[v55], v64, v56);
    v53(&v57[*(v54 + 24)], v52, v50);
    v58 = v60;
    *v57 = v59;
    *(v57 + 1) = v58;
    __swift_storeEnumTagSinglePayload(v57, 0, 1, v54);
    return sub_231369EE0();
  }

  else
  {
LABEL_19:
    v51 = type metadata accessor for ResolvedParameter();
    return __swift_storeEnumTagSinglePayload(a4, 1, 1, v51);
  }
}

unint64_t *sub_231240B68(uint64_t a1, unint64_t *a2)
{
  v4 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v11 = swift_slowAlloc();
      a2 = sub_2312412C0(v11, v6, v4);
      MEMORY[0x23192B930](v11, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x28223BE20](a1);
  v7 = (v12 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_2312B3C88(0, v6, v7);
  sub_231240CD8(v7, v6, v4);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v8;
  }

LABEL_5:
  v9 = *MEMORY[0x277D85DE8];
  return a2;
}

void sub_231240CD8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v51[0] = a2;
  v53 = a1;
  v4 = sub_231369D40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C70, &qword_23136FB30);
  v9 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v62 = (v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v71 = v51 - v12;
  v13 = sub_231369D50();
  v14 = *(*(v13 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v13);
  v72 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a3;
  v65 = 0;
  v19 = 0;
  v20 = *(a3 + 64);
  v52 = a3 + 64;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v60 = v16 + 16;
  v59 = v16 + 88;
  v58 = *MEMORY[0x277D72D50];
  v56 = (v5 + 16);
  v57 = (v16 + 96);
  v54 = v8;
  v55 = (v5 + 8);
  v73 = v16;
  v69 = v15;
  v70 = (v16 + 8);
  v61 = v24;
LABEL_4:
  while (v23)
  {
    v25 = __clz(__rbit64(v23));
    v68 = (v23 - 1) & v23;
LABEL_11:
    v28 = v25 | (v19 << 6);
    v29 = v64;
    v30 = *(v73 + 16);
    v31 = v72;
    v30(v72, v64[6] + *(v73 + 72) * v28, v13, v17);
    v32 = v29[7];
    v66 = v28;
    v33 = *(v32 + 8 * v28);
    v34 = v71;
    (v30)(v71, v31, v13);
    v35 = v63;
    *(v34 + *(v63 + 48)) = v33;
    v36 = v34;
    v37 = v62;
    sub_2311F03B0(v36, v62, &qword_27DD43C70, &qword_23136FB30);
    v38 = *(v37 + *(v35 + 48));
    v67 = v33;
    swift_bridgeObjectRetain_n();
    v13 = v69;

    v39 = (*(v73 + 88))(v37, v13);
    if (v39 == v58)
    {
      (*v57)(v37, v13);
      v40 = *v37;
      v41 = swift_projectBox();
      v42 = v54;
      (*v56)(v54, v41, v4);

      if (qword_27DD42CA0 != -1)
      {
        swift_once();
      }

      v43 = 0;
      v44 = off_27DD43C50;
      v45 = *(off_27DD43C50 + 2);
      while (v45 != v43)
      {
        v46 = v43 + 1;
        v47 = v44 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v43;
        sub_231241B2C(&qword_27DD43870, MEMORY[0x277D72D08]);
        v48 = sub_231369F60();
        v43 = v46;
        if (v48)
        {
          sub_2311D1F18(v71, &qword_27DD43C70, &qword_23136FB30);
          (*v55)(v42, v4);

          v13 = v69;
          (*v70)(v72, v69);
          v24 = v61;
          v23 = v68;
          goto LABEL_4;
        }
      }

      sub_2311D1F18(v71, &qword_27DD43C70, &qword_23136FB30);
      (*v55)(v42, v4);

      v13 = v69;
      v49 = *v70;
    }

    else
    {
      sub_2311D1F18(v71, &qword_27DD43C70, &qword_23136FB30);
      v49 = *v70;
      (*v70)(v37, v13);
    }

    v49(v72, v13);
    *(v53 + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v66;
    v50 = __OFADD__(v65++, 1);
    v24 = v61;
    v23 = v68;
    if (v50)
    {
      goto LABEL_25;
    }
  }

  v26 = v19;
  while (1)
  {
    v19 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v19 >= v24)
    {
      sub_231241350(v53, v51[0], v65, v64);
      return;
    }

    v27 = *(v52 + 8 * v19);
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v68 = (v27 - 1) & v27;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

unint64_t *sub_2312412C0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_231241B00(v6, a2, a3, &v7);

    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

uint64_t sub_231241350(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v40 = a1;
  v48 = sub_231369D50();
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v41 = &v35 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C78, &qword_23136FB38);
  result = sub_23136A790();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v40;
  }

  v15 = 0;
  v37 = v7 + 16;
  v38 = result;
  v46 = v7 + 32;
  v16 = result + 64;
  v36 = a4;
  v39 = v7;
  v17 = v48;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v42 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[6];
    v45 = *(v7 + 72);
    v23 = v41;
    (*(v7 + 16))(v41, v22 + v45 * v21, v17);
    v24 = *(a4[7] + 8 * v21);
    v43 = *(v7 + 32);
    v43(v47, v23, v17);
    v13 = v38;
    v25 = *(v38 + 40);
    sub_231241B2C(&qword_280F7C888, MEMORY[0x277D72D58]);
    v44 = v24;
    sub_231369EE0();
    result = sub_231369F30();
    v26 = -1 << *(v13 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      v7 = v39;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v16 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    v7 = v39;
LABEL_25:
    *(v16 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = (v43)(*(v13 + 48) + v29 * v45, v47, v48);
    *(*(v13 + 56) + 8 * v29) = v44;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v36;
    v14 = v42;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = v40[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v42 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_2312416E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C90, &qword_23136FB50);
      v7 = sub_23136A790();
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
      v11 = v7 + 64;
      v34 = v4;
      while (v9)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        v15 = v12 | (v10 << 6);
        v16 = *(v4 + 56);
        v17 = (*(v4 + 48) + 16 * v15);
        v18 = *v17;
        v19 = v17[1];
        sub_2311CF324(v16 + 40 * v15, v36);
        sub_2311E6A28(v36, v35);
        v20 = v8[5];
        sub_23136A9D0();
        sub_231369EE0();
        sub_23136A060();
        v21 = sub_23136AA00();
        OUTLINED_FUNCTION_3_14(v21);
        if (((v24 << v23) & ~*(v11 + 8 * v22)) == 0)
        {
          OUTLINED_FUNCTION_51();
          while (++v25 != v27 || (v26 & 1) == 0)
          {
            v28 = v25 == v27;
            if (v25 == v27)
            {
              v25 = 0;
            }

            v26 |= v28;
            if (*(v11 + 8 * v25) != -1)
            {
              OUTLINED_FUNCTION_50_0();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_52_4();
LABEL_25:
        OUTLINED_FUNCTION_7_9();
        *(v11 + v29) |= v30;
        v32 = (v8[6] + 16 * v31);
        *v32 = v18;
        v32[1] = v19;
        sub_2311E6A28(v35, v8[7] + 40 * v31);
        OUTLINED_FUNCTION_6_9();
        if (v33)
        {
          goto LABEL_30;
        }

        v4 = v34;
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
          return;
        }

        v14 = a1[v10];
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }
}

void sub_231241918(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (a3)
  {
    v6 = a4;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v9 = sub_23136A790();
      v10 = v9;
      if (a2 < 1)
      {
        v11 = 0;
      }

      else
      {
        v11 = *a1;
      }

      v12 = 0;
      v13 = v9 + 64;
      v37 = v6;
      while (v11)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_16:
        v17 = v14 | (v12 << 6);
        v18 = *(v6 + 56);
        v19 = (*(v6 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = *(v18 + 8 * v17);
        v23 = v10[5];
        sub_23136A9D0();
        sub_231369EE0();

        sub_23136A060();
        v24 = sub_23136AA00();
        OUTLINED_FUNCTION_3_14(v24);
        if (((v27 << v26) & ~*(v13 + 8 * v25)) == 0)
        {
          OUTLINED_FUNCTION_51();
          while (++v28 != v30 || (v29 & 1) == 0)
          {
            v31 = v28 == v30;
            if (v28 == v30)
            {
              v28 = 0;
            }

            v29 |= v31;
            if (*(v13 + 8 * v28) != -1)
            {
              OUTLINED_FUNCTION_50_0();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_52_4();
LABEL_25:
        OUTLINED_FUNCTION_7_9();
        *(v13 + v32) |= v33;
        v35 = (v10[6] + 16 * v34);
        *v35 = v20;
        v35[1] = v21;
        *(v10[7] + 8 * v34) = v22;
        OUTLINED_FUNCTION_6_9();
        if (v36)
        {
          goto LABEL_30;
        }

        v6 = v37;
      }

      v15 = v12;
      while (1)
      {
        v12 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v12 >= a2)
        {
          return;
        }

        v16 = a1[v12];
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }
}

void sub_231241B00(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_231240CD8(a1, a2, a3);
  if (!v4)
  {
    *a4 = v6;
  }
}

uint64_t sub_231241B2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_231241B88(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_231241BAC, 0, 0);
}

uint64_t sub_231241BAC()
{
  OUTLINED_FUNCTION_8();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_231241C58;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_23124207C(0, 0, v4, v2);
}

uint64_t sub_231241C58()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_9();
  *v7 = v6;

  OUTLINED_FUNCTION_14();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_231241D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  OUTLINED_FUNCTION_3_3();
  v13 = (v8 + *v8);
  v10 = *(v9 + 4);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  OUTLINED_FUNCTION_34_0(v11);

  return v13(a1, a2, a3);
}

uint64_t sub_231241E68()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_9();
  *v6 = v5;

  OUTLINED_FUNCTION_14();

  return v7(v2);
}

uint64_t sub_231241F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  OUTLINED_FUNCTION_3_3();
  v15 = (v10 + *v10);
  v12 = *(v11 + 4);
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  OUTLINED_FUNCTION_34_0(v13);

  return v15(a1, a2, a3, a4);
}

uint64_t sub_23124207C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  if (a3)
  {
    sub_231207BDC(0, &qword_27DD43708, 0x277CCABB0);
    v6 = sub_23136A190();
  }

  v4[19] = v6;
  if (a4)
  {
    a4 = sub_23136A190();
  }

  v4[20] = a4;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4[2] = v4;
  v4[7] = v4 + 18;
  v4[3] = sub_231242204;
  v8 = swift_continuation_init();
  v4[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CC8, &qword_23136FC38);
  v4[10] = MEMORY[0x277D85DD0];
  v4[11] = 1107296256;
  v4[12] = sub_23124238C;
  v4[13] = &block_descriptor_2;
  v4[14] = v8;
  [ObjCClassFromMetadata fetchEntitiesFromActiveApplicationsWithInteractionIDs:v6 bundleIdentifiers:a4 completionHandler:v4 + 10];

  return MEMORY[0x282200938](v4 + 2);
}

uint64_t sub_231242204()
{
  v1 = *v0;
  OUTLINED_FUNCTION_9();
  *v4 = v2;
  v5 = *v0;
  *v4 = *v0;
  v6 = v3[20];
  v7 = v3[19];
  if (v3[6])
  {
    v8 = v3[6];
    swift_willThrow();

    v9 = *(v5 + 8);

    return v9();
  }

  else
  {
    v11 = *(v2 + 144);

    v12 = *(v5 + 8);

    return v12(v11);
  }
}

uint64_t sub_23124238C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_2311FA174(v4, v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CB8, &qword_23136FC28);
    v7 = sub_231369E80();

    return sub_2311FA178(v4, v7);
  }
}

uint64_t sub_231242440()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = *v0;
  v3 = sub_2313698C0();
  v1[5] = v3;
  v4 = *(v3 - 8);
  OUTLINED_FUNCTION_3_3();
  v1[6] = v5;
  v7 = *(v6 + 64) + 15;
  v1[7] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CA0, &qword_23136FC08) - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CA8, &qword_23136FC10);
  v1[9] = v9;
  v10 = *(v9 - 8);
  OUTLINED_FUNCTION_3_3();
  v1[10] = v11;
  v13 = *(v12 + 64) + 15;
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312425BC, 0, 0);
}

uint64_t sub_2312425BC()
{
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[2];
  v6 = v0[3];
  v7 = sub_231207BDC(0, &qword_27DD43CB0, 0x277D23CE0);
  sub_231367FE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43520, &qword_23136CA60);
  v8 = swift_allocObject();
  v0[12] = v8;
  *(v8 + 16) = xmmword_23136B670;
  v9 = *(v6 + 24);
  *(v8 + 32) = *(v6 + 16);
  *(v8 + 40) = v9;
  (*(v1 + 16))(v4, v2, v3);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v3);
  v10 = swift_allocObject();
  v0[13] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;
  v11 = *(MEMORY[0x277D60B28] + 4);
  sub_231369EE0();

  sub_231369EE0();
  v12 = swift_task_alloc();
  v0[14] = v12;
  *v12 = v0;
  v12[1] = sub_23124279C;
  v15 = v0[8];
  v16 = MEMORY[0x277D837D0];

  return MEMORY[0x2821C6B08](v8, v15, &unk_23136FC20, v10, v16, v7, v13, v14);
}

uint64_t sub_23124279C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v3 = v2;
  v5 = v4[14];
  v6 = v4[13];
  v7 = v4[12];
  v8 = v4[8];
  v9 = *v1;
  OUTLINED_FUNCTION_9();
  *v10 = v9;
  *(v12 + 120) = v11;
  *(v12 + 128) = v0;

  sub_2312435B4(v8);

  if (v0)
  {
    v13 = sub_231242AD4;
  }

  else
  {
    v13 = sub_231242904;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_231242904()
{
  v22 = v0;
  v1 = sub_23125D7A0(v0[15]);
  v2 = v0[15];
  if (!v1)
  {
    v3 = v0[7];
    v4 = v0[15];

    sub_2313690F0();
    v5 = sub_2313698A0();
    v6 = sub_23136A390();
    v7 = os_log_type_enabled(v5, v6);
    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[5];
    if (v7)
    {
      v11 = v0[4];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136315138;
      v14 = sub_23136AA70();
      v16 = sub_2311CFD58(v14, v15, &v21);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_2311CB000, v5, v6, "%s: No view entities returned", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x23192B930](v13, -1, -1);
      MEMORY[0x23192B930](v12, -1, -1);
    }

    (*(v9 + 8))(v8, v10);
    v2 = MEMORY[0x277D84F90];
  }

  v17 = v0[8];
  v18 = v0[7];
  (*(v0[10] + 8))(v0[11], v0[9]);

  OUTLINED_FUNCTION_14();

  return v19(v2);
}

uint64_t sub_231242AD4()
{
  v1 = v0[8];
  v2 = v0[7];
  (*(v0[10] + 8))(v0[11], v0[9]);

  v3 = v0[1];
  v4 = v0[16];

  return v3();
}

uint64_t sub_231242B70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v7 = MEMORY[0x277D84F90];
  sub_23136A6C0();
  v3 = (a1 + 32);
  do
  {
    v4 = *v3++;
    [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
    sub_23136A6A0();
    v5 = *(v7 + 16);
    sub_23136A6D0();
    sub_23136A6E0();
    sub_23136A6B0();
    --v1;
  }

  while (v1);
  return v7;
}

uint64_t sub_231242C40(uint64_t *a1)
{
  v2 = sub_2313698C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = a1[1];
  sub_2313690F0();
  sub_231369EE0();
  v9 = sub_2313698A0();
  v10 = sub_23136A3B0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_2311CFD58(v7, v8, &v15);
    _os_log_impl(&dword_2311CB000, v9, v10, "Unable to fetch entities for %s due to timeout", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x23192B930](v12, -1, -1);
    MEMORY[0x23192B930](v11, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return MEMORY[0x277D84F90];
}

uint64_t sub_231242DF0(void *a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v4 = a1[1];
  v3[8] = *a1;
  v3[9] = v4;
  return MEMORY[0x2822009F8](sub_231242E18, 0, 0);
}

uint64_t sub_231242E18()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = sub_231242B70(v0[7]);
  v0[10] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43520, &qword_23136CA60);
  v7 = swift_allocObject();
  v0[11] = v7;
  *(v7 + 16) = xmmword_23136B670;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;
  v8 = *(v4 + 8);
  sub_231369EE0();
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  OUTLINED_FUNCTION_34_0(v10);

  return v12(v6, v7, v5, v4);
}

uint64_t sub_231242F98()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v6 = *(v5 + 96);
  *v4 = *v1;
  v3[13] = v7;
  v3[14] = v0;

  if (v0)
  {
    v8 = sub_23124344C;
  }

  else
  {
    v10 = v3[10];
    v9 = v3[11];

    v8 = sub_2312430B0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2312430B0()
{
  v1 = *(v0 + 104);
  v2 = v1 + 64;
  v3 = v0 + 16;
  v4 = -1;
  v5 = -1 << *(v1 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v1 + 64);
  v7 = (63 - v5) >> 6;
  v8 = *(v0 + 104);
  result = sub_231369EE0();
  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  v42 = v7;
  v39 = v1 + 64;
  v40 = v1;
  while (v6)
  {
LABEL_9:
    v13 = *(*(v1 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v6)))));
    v14 = v13 >> 62;
    v46 = v13;
    if (v13 >> 62)
    {
      v15 = sub_23136A5A0();
    }

    else
    {
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v11 >> 62;
    if (v11 >> 62)
    {
      result = sub_23136A5A0();
    }

    else
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v45 = v15;
    v17 = __OFADD__(result, v15);
    v18 = result + v15;
    if (v17)
    {
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
      return result;
    }

    sub_231369EE0();
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v16)
      {
LABEL_21:
        sub_23136A5A0();
      }

      else
      {
        v19 = v11 & 0xFFFFFFFFFFFFFF8;
LABEL_20:
        v21 = *(v19 + 16);
      }

      result = sub_23136A670();
      v11 = result;
      v19 = result & 0xFFFFFFFFFFFFFF8;
      v20 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      goto LABEL_23;
    }

    if (v16)
    {
      goto LABEL_21;
    }

    v19 = v11 & 0xFFFFFFFFFFFFFF8;
    v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if (v20 < v18)
    {
      goto LABEL_20;
    }

LABEL_23:
    v43 = v19;
    v44 = v11;
    v6 &= v6 - 1;
    v22 = *(v19 + 16);
    v23 = v20 - v22;
    v24 = v19 + 8 * v22;
    if (v14)
    {
      v27 = sub_23136A5A0();
      if (!v27)
      {
        goto LABEL_37;
      }

      v28 = v27;
      result = sub_23136A5A0();
      if (v23 < result)
      {
        goto LABEL_49;
      }

      if (v28 < 1)
      {
        goto LABEL_50;
      }

      v41 = result;
      v29 = v24 + 32;
      sub_23124361C();
      for (i = 0; i != v28; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CB8, &qword_23136FC28);
        v31 = sub_23120DD78(v3, i, v46);
        v33 = *v32;
        (v31)(v3, 0);
        *(v29 + 8 * i) = v33;
      }

      v2 = v39;
      v1 = v40;
      v26 = v41;
LABEL_33:

      v11 = v44;
      v7 = v42;
      if (v26 < v45)
      {
        goto LABEL_46;
      }

      if (v26 > 0)
      {
        v34 = *(v43 + 16);
        v17 = __OFADD__(v34, v26);
        v35 = v34 + v26;
        if (v17)
        {
          goto LABEL_47;
        }

        *(v43 + 16) = v35;
      }
    }

    else
    {
      v25 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
        if (v23 < v25)
        {
          goto LABEL_48;
        }

        v26 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_231207BDC(0, &qword_27DD43CB0, 0x277D23CE0);
        swift_arrayInitWithCopy();
        goto LABEL_33;
      }

LABEL_37:

      v7 = v42;
      if (v45 > 0)
      {
        goto LABEL_46;
      }
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v12 >= v7)
    {
      break;
    }

    v6 = *(v2 + 8 * v12);
    ++v10;
    if (v6)
    {
      v10 = v12;
      goto LABEL_9;
    }
  }

  v36 = *(v38 + 104);

  OUTLINED_FUNCTION_14();

  return v37(v11);
}

uint64_t sub_23124344C()
{
  OUTLINED_FUNCTION_8();
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_2312434B4()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_231243510(void *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  OUTLINED_FUNCTION_34_0(v6);

  return sub_231242DF0(a1, v5, v4);
}

uint64_t sub_2312435B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CA0, &qword_23136FC08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23124361C()
{
  result = qword_27DD43CC0;
  if (!qword_27DD43CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD43CB8, &qword_23136FC28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43CC0);
  }

  return result;
}

void *sub_23124368C(__int128 *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  sub_2311D38A8(a1, (v4 + 2));
  v4[7] = v7;
  v4[8] = a3;
  v4[9] = a4;
  return v4;
}

uint64_t *sub_2312436D0(uint64_t a1)
{
  v2 = sub_231259564(a1);
  sub_2312477AC();
  sub_23121DC80(v2);
  OUTLINED_FUNCTION_10_11();

  return &v2;
}

uint64_t sub_23124371C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *a2;
  sub_2311CF324(a1, v12);
  v10 = swift_allocObject();
  sub_2311D38A8(v12, (v10 + 2));
  v10[7] = v9;
  v10[8] = a3;
  v10[9] = a4;
  a5[3] = v5;
  a5[4] = &off_2845F4498;
  *a5 = v10;
  sub_231369EE0();
}

uint64_t sub_2312437B0()
{
  OUTLINED_FUNCTION_8();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v1[13] = v5;
  v6 = sub_2313698C0();
  v1[18] = v6;
  v7 = *(v6 - 8);
  v1[19] = v7;
  v8 = *(v7 + 64) + 15;
  v1[20] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23124386C()
{
  v1 = v0[17];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v10 = (OUTLINED_FUNCTION_38() + 8);
  v11 = (*v10 + **v10);
  v4 = (*v10)[1];
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_2312439A0;
  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[14];

  return (v11)(v0 + 2, v8, v6, v7, v2, v3);
}

uint64_t sub_2312439A0()
{
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = v1[21];
  v5 = *v0;
  *v3 = *v0;

  v6 = swift_task_alloc();
  v2[22] = v6;
  *v6 = v5;
  v6[1] = sub_231243AEC;
  v7 = v1[17];
  v8 = v1[14];

  return sub_231243E90(v8);
}

uint64_t sub_231243AEC()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  *v6 = v5;
  v8 = *(v7 + 176);
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  *(v5 + 184) = v0;

  if (v0)
  {
    v11 = sub_231243CB8;
  }

  else
  {
    *(v5 + 192) = v3;
    v11 = sub_231243C00;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_231243C00()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 192);
  v2 = *(v0 + 104);
  sub_2311CF324(v0 + 16, v0 + 56);
  v3 = type metadata accessor for ConfigOverrideDataProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  sub_2311D38A8((v0 + 56), v4 + 24);
  v2[3] = v3;
  v2[4] = &off_2845F4480;
  *v2 = v4;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v5 = *(v0 + 160);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_231243CB8()
{
  v26 = v0;
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  sub_2313690F0();
  v4 = v2;
  v5 = sub_2313698A0();
  v6 = sub_23136A3B0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 184);
    v8 = *(v0 + 152);
    v24 = *(v0 + 160);
    v9 = *(v0 + 144);
    swift_slowAlloc();
    v10 = OUTLINED_FUNCTION_20_10();
    v25 = v10;
    *v1 = 136315138;
    *(v0 + 96) = v7;
    v11 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
    v12 = sub_23136A010();
    v14 = sub_2311CFD58(v12, v13, &v25);

    *(v1 + 4) = v14;
    _os_log_impl(&dword_2311CB000, v5, v6, "Unable to load config data overrides. Reverting to delegate data provider: %s", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v8 + 8))(v24, v9);
  }

  else
  {
    v16 = *(v0 + 152);
    v15 = *(v0 + 160);
    v17 = *(v0 + 144);

    v18 = *(v16 + 8);
    v19 = OUTLINED_FUNCTION_28_0();
    v20(v19);
  }

  sub_2311D38A8((v0 + 16), *(v0 + 104));
  v21 = *(v0 + 160);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_231243E90(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_231369050();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435C0, &unk_23136CB00);
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v9 = sub_2313698C0();
  v2[22] = v9;
  v10 = *(v9 - 8);
  v2[23] = v10;
  v11 = *(v10 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v12 = type metadata accessor for SignalOverrides();
  v2[26] = v12;
  v13 = *(v12 - 8);
  v2[27] = v13;
  v14 = *(v13 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CD0, &qword_23136FD08) - 8) + 64) + 15;
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231244108, 0, 0);
}

uint64_t sub_231244108()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[31];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CD8, &qword_23136FD10);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v3 = *(MEMORY[0x277D60B28] + 4);
  v4 = swift_task_alloc();
  v0[32] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
  *v4 = v0;
  v4[1] = sub_231244200;
  v8 = v0[31];
  v9 = v0[26];
  v10 = v0[9];

  return MEMORY[0x2821C6B08](v10, v8, &unk_23136FD18, 0, v5, v9, v6, v7);
}

void sub_231244200()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v6 = *(v5 + 256);
  *v4 = *v1;
  *(v3 + 264) = v7;

  if (v0)
  {
  }

  else
  {
    sub_231228E9C(*(v3 + 248), &qword_27DD43CD0, &qword_23136FD08);

    MEMORY[0x2822009F8](sub_231244344, 0, 0);
  }
}

void sub_231244344()
{
  v161 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 208);
  OUTLINED_FUNCTION_28_0();
  v3 = sub_231369EC0();
  OUTLINED_FUNCTION_28_0();
  v4 = sub_231369EC0();
  v5 = v4;
  v6 = *(v1 + 16);
  *(v0 + 272) = v6;
  if (!v6)
  {
    v32 = *(v0 + 264);

    v33 = *(v0 + 80);
    v34 = *(v33 + 72);
    (*(v33 + 64))(v5);
    OUTLINED_FUNCTION_10_11();

    v35 = *(v34 + 16);
    if (!v35)
    {
LABEL_25:

      OUTLINED_FUNCTION_6_10();

      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_8_9();

      __asm { BRAA            X2, X16 }
    }

    v142 = *(v0 + 208);
    v36 = *(v0 + 184);
    v38 = *(v0 + 112);
    v37 = *(v0 + 120);
    v39 = OUTLINED_FUNCTION_19_10();
    v153 = *(v0 + 160);
    v154 = *(v0 + 168);
    v151 = *(v0 + 128);
    v152 = *(v0 + 136);
    v40 = *(v0 + 96);
    v147 = *(v41 + 72);
    v149 = (v42 + 8);
    v150 = *(v38 + 48);
    v139 = v40 + 8;
    v141 = (v40 + 16);
    *&v43 = 136315650;
    v136 = v43;
    v44 = 1;
    v148 = v38;
    while (1)
    {
      v159 = v44;
      v45 = *(v0 + 192);
      v47 = *(v0 + 160);
      v46 = *(v0 + 168);
      v49 = *(v0 + 144);
      v48 = *(v0 + 152);
      v155 = v39;
      sub_231247A14(v39, v46, &qword_27DD435C0, &unk_23136CB00);
      v50 = *(v154 + 8);
      v51 = *(v38 + 48);
      *v47 = *v46;
      *(v153 + 8) = v50;
      sub_2312476F0(v154 + v150, v47 + v51);
      sub_2313690F0();
      sub_231247A14(v47, v48, &qword_27DD435C0, &unk_23136CB00);
      sub_231247A14(v47, v49, &qword_27DD435C0, &unk_23136CB00);
      v52 = sub_2313698A0();
      v53 = sub_23136A390();
      v158 = v52;
      v54 = os_log_type_enabled(v52, v53);
      v55 = *(v0 + 192);
      v56 = *(v0 + 176);
      v57 = *(v0 + 152);
      v156 = *(v0 + 144);
      if (v54)
      {
        v146 = v3;
        v58 = *(v0 + 136);
        v144 = *(v0 + 192);
        OUTLINED_FUNCTION_21_8();
        v59 = OUTLINED_FUNCTION_31_8();
        v67 = OUTLINED_FUNCTION_13_10(v59, v60, v61, v62, v63, v64, v65, v66, v130, v133, v136);
        sub_231247A14(v67, v68, &qword_27DD435C0, &unk_23136CB00);
        v69 = *(v152 + 8);

        v145 = v35;
        v70 = OUTLINED_FUNCTION_9_11(*(v38 + 48), v131, v134, v136, *(&v136 + 1), v139, v141, v142);
        v71(v70);
        sub_231247694(v35);
        v72 = sub_231369040();
        v80 = OUTLINED_FUNCTION_16_10(v72, v73, v74, v75, v76, v77, v78, v79, v132, v135, v137, v138, v140);
        v81(v80);
        sub_231228E9C(v57, &qword_27DD435C0, &unk_23136CB00);
        v82 = v72;
        v35 = v145;
        sub_2311CFD58(v82, &unk_23136CB00, v160);
        OUTLINED_FUNCTION_38();

        *(v56 + 4) = v55;
        *(v56 + 12) = 2080;
        sub_231225108(v156, v58);
        v55 = *v58;
        v83 = *(v152 + 8);
        v84 = v58 + *(v38 + 48);
        v3 = v146;
        sub_231247694(v84);
        v85 = OUTLINED_FUNCTION_27();
        sub_2311CFD58(v85, v86, v87);
        OUTLINED_FUNCTION_10_11();

        *(v56 + 14) = v55;
        *(v56 + 22) = 2048;
        *(v56 + 24) = v159;
        _os_log_impl(&dword_2311CB000, v158, v143, "3P Suggestion: %s @ %s assigned cold start rank of: %lu", v56, 0x20u);
        OUTLINED_FUNCTION_28_8();
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_29();

        (*v149)(v144);
      }

      else
      {

        sub_231228E9C(v156, &qword_27DD435C0, &unk_23136CB00);
        sub_231228E9C(v57, &qword_27DD435C0, &unk_23136CB00);
        (*v149)(v55, v56);
      }

      v88 = OUTLINED_FUNCTION_25_6();
      sub_231247A14(v88, v55, &qword_27DD435C0, &unk_23136CB00);
      v89 = *v55;
      v90 = *(v151 + 8);
      swift_isUniquelyReferenced_nonNull_native();
      v160[0] = v3;
      v91 = OUTLINED_FUNCTION_15_12();
      v92 = v3;
      sub_231215F6C(v91, v93);
      v94 = v3[2];
      OUTLINED_FUNCTION_23_5();
      if (__OFADD__(v97, v98))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        return;
      }

      v99 = v95;
      v100 = v96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CE0, &qword_23136FD30);
      v101 = OUTLINED_FUNCTION_29_6();
      v3 = v160[0];
      if (v101)
      {
        v102 = OUTLINED_FUNCTION_15_12();
        v92 = v3;
        v104 = sub_231215F6C(v102, v103);
        v38 = v148;
        if ((v100 & 1) != (v105 & 1))
        {
          goto LABEL_6;
        }

        v99 = v104;
        if ((v100 & 1) == 0)
        {
LABEL_18:
          OUTLINED_FUNCTION_0_15(&v3[v99 >> 6]);
          v106 = (v3[6] + 16 * v99);
          *v106 = v89;
          v106[1] = v90;
          OUTLINED_FUNCTION_26_8(v3[7]);
          v107 = v3[2];
          v108 = __OFADD__(v107, 1);
          v109 = v107 + 1;
          if (v108)
          {
            goto LABEL_42;
          }

          v3[2] = v109;
          goto LABEL_22;
        }
      }

      else
      {
        v38 = v148;
        if ((v100 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      OUTLINED_FUNCTION_26_8(v3[7]);

LABEL_22:
      v110 = OUTLINED_FUNCTION_25_6();
      v111 = *(v38 + 48);
      sub_231228E9C(v110, &qword_27DD435C0, &unk_23136CB00);
      sub_231247694(v92 + v111);
      v44 = v89 + 1;
      v39 = v155 + v147;
      if (!--v35)
      {
        goto LABEL_25;
      }
    }
  }

  v7 = *(v0 + 264);
  v8 = *(v0 + 240);
  v10 = *(v0 + 208);
  v9 = *(v0 + 216);
  *(v0 + 280) = *(*(v0 + 80) + 56);
  v11 = *(v9 + 80);
  *(v0 + 60) = v11;
  v12 = *(v9 + 72);
  *(v0 + 304) = 0;
  *(v0 + 312) = v4;
  *(v0 + 288) = v12;
  *(v0 + 296) = v4;
  sub_231247630(v7 + ((v11 + 32) & ~v11), v8);
  v13 = *v8;
  v14 = *(v10 + 28);
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_23136A650();
  v15 = *(v0 + 40);

  OUTLINED_FUNCTION_24_9();
  *(v0 + 16) = v16;
  *(v0 + 24) = 0xEF5F6C616E676953;
  v17 = sub_231369040();
  MEMORY[0x23192A730](v17);

  MEMORY[0x23192A730](95, 0xE100000000000000);
  v18 = sub_2313692D0();
  MEMORY[0x23192A730](v18);

  v19 = *(v0 + 16);
  v20 = *(v0 + 24);
  *(v0 + 320) = v19;
  *(v0 + 328) = v20;
  if ((*(v8 + 16) & 1) == 0)
  {
    v157 = *(v8 + 8);
    swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 64) = v3;
    sub_231215F6C(v19, v20);
    v21 = v3[2];
    OUTLINED_FUNCTION_23_5();
    if (__OFADD__(v24, v25))
    {
      goto LABEL_43;
    }

    v26 = v22;
    v27 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CE0, &qword_23136FD30);
    if (sub_23136A700())
    {
      v28 = *(v0 + 64);
      v29 = sub_231215F6C(v19, v20);
      if ((v27 & 1) != (v30 & 1))
      {
LABEL_6:
        OUTLINED_FUNCTION_8_9();

        sub_23136A970();
        return;
      }

      v26 = v29;
    }

    v3 = *(v0 + 64);
    if (v27)
    {
      *(v3[7] + 8 * v26) = v157;
    }

    else
    {
      OUTLINED_FUNCTION_0_15(&v3[v26 >> 6]);
      v114 = (v3[6] + 16 * v26);
      *v114 = v19;
      v114[1] = v20;
      *(v3[7] + 8 * v26) = v157;
      v115 = v3[2];
      v108 = __OFADD__(v115, 1);
      v116 = v115 + 1;
      if (v108)
      {
        goto LABEL_44;
      }

      v3[2] = v116;
      sub_231369EE0();
    }
  }

  v117 = *(v0 + 280);
  v118 = sub_2313692D0();
  if (*(v117 + 16))
  {
    v120 = *(v0 + 280);
    v121 = sub_231215F6C(v118, v119);
    v123 = v122;

    if (v123)
    {
      v124 = *(v0 + 240);
      v125 = *(v0 + 80);
      v160[0] = *(*(*(v0 + 280) + 56) + 8 * v121);
      sub_231369EE0();
      sub_231245FE0((v124 + 24), v160, (v0 + 48));

      if (*(v0 + 56) != 2)
      {
        v126 = *(v0 + 48);
        swift_isUniquelyReferenced_nonNull_native();
        v160[0] = v3;
        sub_231259F20();
        v3 = v160[0];
      }
    }
  }

  else
  {
  }

  *(v0 + 344) = v3;
  *(v0 + 352) = v3;
  *(v0 + 336) = v3;
  v127 = swift_task_alloc();
  *(v0 + 360) = v127;
  *v127 = v0;
  OUTLINED_FUNCTION_3_15(v127);
  OUTLINED_FUNCTION_8_9();

  sub_2312465DC(v128);
}

uint64_t sub_231244BC0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 360);
  *v2 = *v0;
  *(v1 + 57) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_231244CAC()
{
  v192 = v0;
  if ((*(v0 + 57) & 1) == 0)
  {
    v2 = (v0 + 344);
    goto LABEL_6;
  }

  if (*(*(v0 + 352) + 16))
  {
    sub_231215F6C(*(v0 + 320), *(v0 + 328));
    if (v1)
    {
      v2 = (v0 + 352);
LABEL_6:
      v3 = *v2;
      v4 = *(v0 + 328);

      v5 = *(v0 + 312);
      v6 = *(v0 + 296);
      goto LABEL_11;
    }
  }

  v8 = *(v0 + 320);
  v7 = *(v0 + 328);
  v9 = *(v0 + 296);
  v10 = *(v184 + 240);
  v11 = *(v184 + 224);
  v12 = *(v184 + 200);
  sub_231247630(v10, *(v184 + 232));
  swift_isUniquelyReferenced_nonNull_native();
  v191[0] = v9;
  OUTLINED_FUNCTION_15_12();
  sub_231259E04();

  v6 = v9;
  sub_2313690F0();
  sub_231247630(v10, v11);
  v13 = sub_2313698A0();
  v14 = sub_23136A390();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v184 + 224);
  if (v15)
  {
    v17 = *(v184 + 208);
    v188 = *(v184 + 200);
    v18 = *(v184 + 184);
    v19 = *(v184 + 176);
    swift_slowAlloc();
    v20 = OUTLINED_FUNCTION_20_10();
    v191[0] = v20;
    *v11 = 136315138;
    v21 = v16 + *(v17 + 28);
    v22 = sub_231369040();
    v23 = v6;
    v25 = v24;
    sub_231247694(v16);
    v26 = sub_2311CFD58(v22, v25, v191);
    v6 = v23;

    *(v11 + 4) = v26;
    OUTLINED_FUNCTION_30_6(&dword_2311CB000, v27, v28, "non overridden 3P Suggestion detected: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v0 = v184;
    (*(v18 + 8))(v188, v19);
  }

  else
  {
    v29 = *(v184 + 200);
    v30 = *(v184 + 184);
    v31 = *(v184 + 176);

    sub_231247694(v16);
    (*(v30 + 8))(v29, v31);
    v0 = v184;
  }

  v3 = *(v0 + 352);
  v5 = v6;
LABEL_11:
  v32 = *(v0 + 272);
  v33 = *(v0 + 304) + 1;
  sub_231247694(*(v0 + 240));
  if (v33 == v32)
  {
    v34 = *(v0 + 264);

    v35 = *(v0 + 336);
    v36 = *(v0 + 80);
    v37 = *(v36 + 72);
    (*(v36 + 64))(v5);
    OUTLINED_FUNCTION_10_11();

    if (!*(v37 + 16))
    {
LABEL_35:

      OUTLINED_FUNCTION_6_10();

      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_8_9();

      __asm { BRAA            X2, X16 }
    }

    v172 = *(v0 + 208);
    v38 = *(v0 + 184);
    v40 = *(v0 + 112);
    v39 = *(v0 + 120);
    v41 = OUTLINED_FUNCTION_19_10();
    v181 = *(v0 + 168);
    v182 = (v43 + 8);
    v180 = *(v0 + 160);
    v178 = *(v0 + 128);
    v179 = *(v0 + 136);
    v44 = *(v0 + 96);
    v176 = *(v45 + 72);
    v177 = *(v40 + 48);
    v169 = v44 + 8;
    v171 = (v44 + 16);
    *&v46 = 136315650;
    v166 = v46;
    v47 = 1;
    v183 = v40;
    while (1)
    {
      v189 = v47;
      v185 = v41;
      v186 = v42;
      v48 = *(v0 + 192);
      v50 = *(v0 + 160);
      v49 = *(v0 + 168);
      v52 = *(v0 + 144);
      v51 = *(v0 + 152);
      sub_231247A14(v41, v49, &qword_27DD435C0, &unk_23136CB00);
      v53 = *(v181 + 8);
      v54 = *(v40 + 48);
      *v50 = *v49;
      *(v180 + 8) = v53;
      sub_2312476F0(v181 + v177, v50 + v54);
      sub_2313690F0();
      sub_231247A14(v50, v51, &qword_27DD435C0, &unk_23136CB00);
      sub_231247A14(v50, v52, &qword_27DD435C0, &unk_23136CB00);
      v55 = sub_2313698A0();
      v56 = sub_23136A390();
      v57 = os_log_type_enabled(v55, v56);
      v58 = *(v0 + 192);
      v59 = *(v0 + 176);
      v60 = *(v0 + 152);
      v187 = *(v0 + 144);
      if (v57)
      {
        v174 = *(v0 + 192);
        v175 = v35;
        v61 = v40;
        v62 = *(v0 + 136);
        OUTLINED_FUNCTION_21_8();
        v63 = OUTLINED_FUNCTION_31_8();
        v71 = OUTLINED_FUNCTION_13_10(v63, v64, v65, v66, v67, v68, v69, v70, v160, v163, v166);
        sub_231247A14(v71, v72, &qword_27DD435C0, &unk_23136CB00);
        v73 = *(v179 + 8);

        v74 = OUTLINED_FUNCTION_9_11(*(v61 + 48), v161, v164, v166, *(&v166 + 1), v169, v171, v172);
        v75(v74);
        sub_231247694(v61);
        v76 = sub_231369040();
        v84 = OUTLINED_FUNCTION_16_10(v76, v77, v78, v79, v80, v81, v82, v83, v162, v165, v167, v168, v170);
        v85(v84);
        sub_231228E9C(v60, &qword_27DD435C0, &unk_23136CB00);
        v0 = v184;
        sub_2311CFD58(v76, &qword_27DD435C0, v191);
        OUTLINED_FUNCTION_38();

        *(v59 + 4) = v58;
        *(v59 + 12) = 2080;
        sub_231225108(v187, v62);
        v58 = *v62;
        v86 = *(v179 + 8);
        v35 = v175;
        sub_231247694(v62 + *(v183 + 48));
        v87 = OUTLINED_FUNCTION_27();
        sub_2311CFD58(v87, v88, v89);
        OUTLINED_FUNCTION_10_11();

        *(v59 + 14) = v58;
        *(v59 + 22) = 2048;
        *(v59 + 24) = v189;
        _os_log_impl(&dword_2311CB000, v55, v173, "3P Suggestion: %s @ %s assigned cold start rank of: %lu", v59, 0x20u);
        OUTLINED_FUNCTION_28_8();
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_29();

        (*v182)(v174);
      }

      else
      {

        sub_231228E9C(v187, &qword_27DD435C0, &unk_23136CB00);
        v90 = OUTLINED_FUNCTION_28_0();
        sub_231228E9C(v90, v91, &unk_23136CB00);
        (*v182)(v58, v59);
      }

      v92 = OUTLINED_FUNCTION_25_6();
      sub_231247A14(v92, v58, &qword_27DD435C0, &unk_23136CB00);
      v93 = *v58;
      v94 = *(v178 + 8);
      swift_isUniquelyReferenced_nonNull_native();
      v191[0] = v35;
      v95 = OUTLINED_FUNCTION_15_12();
      v96 = v35;
      sub_231215F6C(v95, v97);
      v98 = v35[2];
      OUTLINED_FUNCTION_23_5();
      if (__OFADD__(v101, v102))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        return;
      }

      v103 = v99;
      v104 = v100;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CE0, &qword_23136FD30);
      v105 = OUTLINED_FUNCTION_29_6();
      v35 = v191[0];
      if (v105)
      {
        v106 = OUTLINED_FUNCTION_15_12();
        v96 = v35;
        v108 = sub_231215F6C(v106, v107);
        v40 = v183;
        if ((v104 & 1) != (v109 & 1))
        {
          goto LABEL_32;
        }

        v103 = v108;
        v0 = v184;
        if ((v104 & 1) == 0)
        {
LABEL_21:
          OUTLINED_FUNCTION_0_15(&v35[v103 >> 6]);
          v110 = (v35[6] + 16 * v103);
          *v110 = v93;
          v110[1] = v94;
          OUTLINED_FUNCTION_26_8(v35[7]);
          v111 = v35[2];
          v112 = __OFADD__(v111, 1);
          v113 = v111 + 1;
          if (v112)
          {
            goto LABEL_53;
          }

          v35[2] = v113;
          goto LABEL_25;
        }
      }

      else
      {
        v40 = v183;
        if ((v104 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      OUTLINED_FUNCTION_26_8(v35[7]);

LABEL_25:
      v114 = OUTLINED_FUNCTION_25_6();
      v115 = *(v40 + 48);
      sub_231228E9C(v114, &qword_27DD435C0, &unk_23136CB00);
      sub_231247694(v96 + v115);
      v47 = v93 + 1;
      v41 = v185 + v176;
      v42 = v186 - 1;
      if (v186 == 1)
      {
        goto LABEL_35;
      }
    }
  }

  v116 = *(v0 + 352);
  v117 = *(v0 + 336);
  v118 = *(v0 + 304) + 1;
  *(v0 + 304) = v118;
  *(v0 + 312) = v5;
  *(v0 + 296) = v6;
  v119 = *(v0 + 240);
  v120 = *(v0 + 208);
  sub_231247630(*(v0 + 264) + ((*(v0 + 60) + 32) & ~*(v0 + 60)) + *(v0 + 288) * v118, v119);
  v121 = *v119;
  v122 = *(v120 + 28);
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_23136A650();
  v123 = *(v0 + 40);

  OUTLINED_FUNCTION_24_9();
  *(v0 + 16) = v124;
  *(v0 + 24) = 0xEF5F6C616E676953;
  v125 = sub_231369040();
  MEMORY[0x23192A730](v125);

  MEMORY[0x23192A730](95, 0xE100000000000000);
  v126 = sub_2313692D0();
  MEMORY[0x23192A730](v126);

  v127 = *(v0 + 16);
  v128 = *(v0 + 24);
  *(v0 + 320) = v127;
  *(v0 + 328) = v128;
  v190 = v127;
  if (*(v119 + 16))
  {
    v129 = v3;
  }

  else
  {
    v130 = *(v119 + 8);
    swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 64) = v117;
    sub_231215F6C(v127, v128);
    v131 = v117[2];
    OUTLINED_FUNCTION_23_5();
    if (__OFADD__(v134, v135))
    {
      goto LABEL_54;
    }

    v136 = v132;
    v137 = v133;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CE0, &qword_23136FD30);
    if (sub_23136A700())
    {
      v138 = *(v0 + 64);
      v139 = sub_231215F6C(v190, v128);
      if ((v137 & 1) != (v140 & 1))
      {
LABEL_32:
        OUTLINED_FUNCTION_8_9();

        sub_23136A970();
        return;
      }

      v136 = v139;
    }

    v117 = *(v184 + 64);
    if (v137)
    {
      *(v117[7] + 8 * v136) = v130;
    }

    else
    {
      OUTLINED_FUNCTION_0_15(&v117[v136 >> 6]);
      v144 = (v117[6] + 16 * v136);
      *v144 = v190;
      v144[1] = v128;
      *(v117[7] + 8 * v136) = v130;
      v145 = v117[2];
      v112 = __OFADD__(v145, 1);
      v146 = v145 + 1;
      if (v112)
      {
        goto LABEL_55;
      }

      v117[2] = v146;
      sub_231369EE0();
    }

    v129 = v117;
    v116 = v117;
  }

  v147 = *(v184 + 280);
  v148 = sub_2313692D0();
  if (*(v147 + 16))
  {
    v150 = *(v184 + 280);
    v151 = sub_231215F6C(v148, v149);
    v153 = v152;

    if (v153)
    {
      v154 = *(v184 + 240);
      v155 = *(v184 + 80);
      v191[0] = *(*(*(v184 + 280) + 56) + 8 * v151);
      sub_231369EE0();
      sub_231245FE0((v154 + 24), v191, (v184 + 48));

      if (*(v184 + 56) != 2)
      {
        v156 = *(v184 + 48);
        swift_isUniquelyReferenced_nonNull_native();
        v191[0] = v117;
        sub_231259F20();
        v117 = v191[0];
        v129 = v191[0];
        v116 = v191[0];
      }
    }
  }

  else
  {
  }

  *(v184 + 344) = v129;
  *(v184 + 352) = v116;
  *(v184 + 336) = v117;
  v157 = swift_task_alloc();
  *(v184 + 360) = v157;
  *v157 = v184;
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_9();

  sub_2312465DC(v158);
}

uint64_t sub_2312456F4(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_2313698C0();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312457B4, 0, 0);
}

uint64_t sub_2312457B4()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[7];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_10_11();
  v0[11] = sub_231368300();
  swift_getObjectType();
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_22_7(v3);

  return sub_23132C6C8();
}

uint64_t sub_231245870()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 96);
  v5 = *(v3 + 88);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v9 + 104) = v8;

  swift_unknownObjectRelease();
  v10 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_231245974()
{
  v32 = v0;
  if (*(v0 + 104))
  {
    v2 = *(v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CE8, &qword_23136FD38);
    v3 = type metadata accessor for SignalOverrides();
    *(v0 + 112) = v3;
    v4 = *(*(v3 - 8) + 72);
    *(v0 + 160) = *(*(v3 - 8) + 80);
    v5 = swift_allocObject();
    *(v0 + 120) = v5;
    *(v5 + 16) = xmmword_23136B670;
    v6 = *(v2 + 24);
    v7 = *(v2 + 32);
    v8 = OUTLINED_FUNCTION_28_0();
    __swift_project_boxed_opaque_existential_1(v8, v9);

    *(v0 + 128) = sub_231368300();
    swift_getObjectType();
    v10 = swift_task_alloc();
    *(v0 + 136) = v10;
    *v10 = v0;
    OUTLINED_FUNCTION_22_7(v10);

    return sub_23132C984();
  }

  else
  {
    v12 = *(v0 + 80);
    v13 = *(v0 + 56);
    sub_2313690F0();
    sub_2311CF324(v13, v0 + 16);
    v14 = sub_2313698A0();
    v15 = sub_23136A390();
    v16 = os_log_type_enabled(v14, v15);
    v18 = *(v0 + 72);
    v17 = *(v0 + 80);
    v19 = *(v0 + 64);
    if (v16)
    {
      swift_slowAlloc();
      v20 = OUTLINED_FUNCTION_20_10();
      v31 = v20;
      *v1 = 136315138;
      v21 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      v22 = sub_231368320();
      v24 = v23;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      v25 = sub_2311CFD58(v22, v24, &v31);

      *(v1 + 4) = v25;
      OUTLINED_FUNCTION_30_6(&dword_2311CB000, v26, v27, "[warning] Unable to find signal for candidate: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v18 + 8))(v17, v19);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    }

    v28 = *(v0 + 80);

    OUTLINED_FUNCTION_14();
    v30 = MEMORY[0x277D84F90];

    return v29(v30);
  }
}

uint64_t sub_231245C78()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v4 = *(v3 + 136);
  v5 = *(v3 + 128);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v9 + 144) = v8;
  *(v9 + 164) = v10;

  swift_unknownObjectRelease();
  v11 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_231245D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = *(v18 + 112);
  v20 = *(v18 + 56);
  v21 = *(v18 + 120) + ((*(v18 + 160) + 32) & ~*(v18 + 160));
  sub_2311CF324(v20, v21 + 24);
  v22 = *(v20 + 24);
  v23 = *(v20 + 32);
  v24 = OUTLINED_FUNCTION_27();
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v26 = *(v19 + 28);
  v27 = *(MEMORY[0x277D60F68] + 4);
  v33 = swift_task_alloc();
  *(v18 + 152) = v33;
  *v33 = v18;
  v33[1] = sub_231245E68;

  return MEMORY[0x2821C6E60](v21 + v26, v22, v23, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_231245E68()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 152);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231245F4C()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 164);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120) + ((*(v0 + 160) + 32) & ~*(v0 + 160));
  *v3 = *(v0 + 104);
  *(v3 + 8) = v2;
  *(v3 + 16) = v1 & 1;

  v4 = *(v0 + 120);
  v5 = *(v0 + 80);

  OUTLINED_FUNCTION_14();

  return v6(v4);
}

uint64_t sub_231245FE0@<X0>(void *a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v64 = a3;
  v63 = sub_2313698C0();
  v5 = *(v63 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v63);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v62 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v62 - v13;
  v15 = *a2;
  v16 = sub_231369040();
  v18 = v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = sub_231368320();
  v22 = v21;
  if (!*(v15 + 16))
  {
    goto LABEL_9;
  }

  v23 = sub_231215F6C(v16, v18);
  if (v24)
  {
    v25 = v23;

    v26 = *(v15 + 56) + 16 * v25;
    v27 = *v26;
    v28 = *(v26 + 8);
    sub_2313690F0();
    sub_231369EE0();
    v29 = sub_2313698A0();
    v30 = sub_23136A390();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v67 = v32;
      *v31 = 136315394;
      v33 = sub_2311CFD58(v16, v18, &v67);
      v34 = v27;
      v35 = v33;

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      v65 = v34;
      v66 = v28;
      v36 = sub_23136A010();
      v38 = sub_2311CFD58(v36, v37, &v67);
      v27 = v34;

      *(v31 + 14) = v38;
      _os_log_impl(&dword_2311CB000, v29, v30, "Found override for loggingId %s as %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23192B930](v32, -1, -1);
      MEMORY[0x23192B930](v31, -1, -1);
    }

    else
    {
    }

    result = (*(v5 + 8))(v14, v63);
    goto LABEL_16;
  }

  if (!*(v15 + 16) || (v39 = sub_231215F6C(v20, v22), (v40 & 1) == 0))
  {
LABEL_9:
    sub_2313690F0();
    sub_231369EE0();
    sub_231369EE0();
    v54 = sub_2313698A0();
    v55 = sub_23136A390();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v65 = v57;
      *v56 = 136315394;
      v58 = sub_2311CFD58(v16, v18, &v65);

      *(v56 + 4) = v58;
      *(v56 + 12) = 2080;
      v59 = sub_2311CFD58(v20, v22, &v65);

      *(v56 + 14) = v59;
      _os_log_impl(&dword_2311CB000, v54, v55, "Unable to find an override for loggingId %s or %s", v56, 0x16u);
      v28 = 2;
      swift_arrayDestroy();
      MEMORY[0x23192B930](v57, -1, -1);
      MEMORY[0x23192B930](v56, -1, -1);

      result = (*(v5 + 8))(v9, v63);
      v27 = 0;
    }

    else
    {

      result = (*(v5 + 8))(v9, v63);
      v27 = 0;
      v28 = 2;
    }

    goto LABEL_16;
  }

  v41 = v39;

  v42 = *(v15 + 56) + 16 * v41;
  v27 = *v42;
  v43 = *(v42 + 8);
  sub_2313690F0();
  sub_231369EE0();
  v44 = sub_2313698A0();
  v45 = sub_23136A390();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v67 = v47;
    *v46 = 136315394;
    v48 = sub_2311CFD58(v20, v22, &v67);
    v49 = v27;
    v50 = v48;

    *(v46 + 4) = v50;
    *(v46 + 12) = 2080;
    v65 = v49;
    v66 = v43;
    v51 = sub_23136A010();
    v53 = sub_2311CFD58(v51, v52, &v67);
    v27 = v49;

    *(v46 + 14) = v53;
    _os_log_impl(&dword_2311CB000, v44, v45, "Found override for suggestionId %s as %s", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23192B930](v47, -1, -1);
    MEMORY[0x23192B930](v46, -1, -1);
  }

  else
  {
  }

  result = (*(v5 + 8))(v12, v63);
  v28 = v43;
LABEL_16:
  v61 = v64;
  *v64 = v27;
  *(v61 + 8) = v28;
  return result;
}

uint64_t sub_2312465DC(uint64_t a1)
{
  v1[8] = a1;
  v2 = type metadata accessor for SignalOverrides();
  v1[9] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v4 = sub_2313698C0();
  v1[12] = v4;
  v5 = *(v4 - 8);
  v1[13] = v5;
  v6 = *(v5 + 64) + 15;
  v1[14] = swift_task_alloc();
  v7 = sub_2313685D0();
  v1[15] = v7;
  v8 = *(v7 - 8);
  v1[16] = v8;
  v9 = *(v8 + 64) + 15;
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231246734, 0, 0);
}

uint64_t sub_231246734()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 64);
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  v4 = *(MEMORY[0x277D60F60] + 4);
  v5 = swift_task_alloc();
  *(v0 + 144) = v5;
  *v5 = v0;
  v5[1] = sub_2312467F0;

  return MEMORY[0x2821C6E58](v0 + 16, v2, v3);
}

uint64_t sub_2312467F0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 144);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312468D4()
{
  v51 = v0;
  v1 = v0[8];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_10_11();
  v3 = sub_231367E20();
  v5 = v4;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  sub_2313692F0();
  v6 = *v1;
  sub_231369270();
  v7 = sub_2313692A0();

  v49 = v3;
  if (v7)
  {
    v8 = v0[16];
    v9 = v0[17];
    v10 = v0[15];
    (*(v8 + 104))(v9, *MEMORY[0x277D60FC0], v10);
    v11 = sub_2313685C0();
    v13 = v12;
    (*(v8 + 8))(v9, v10);
    if (v3 == v11 && v5 == v13)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_23136A900();
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v0[14];
  v18 = v0[10];
  v17 = v0[11];
  v19 = v0[8];
  sub_2313690F0();
  sub_231247630(v19, v17);
  sub_231247630(v19, v18);
  sub_231369EE0();
  v20 = sub_2313698A0();
  LOBYTE(v16) = sub_23136A3A0();

  v48 = v16;
  v21 = os_log_type_enabled(v20, v16);
  v22 = v0[13];
  v23 = v0[11];
  v24 = v0[10];
  if (v21)
  {
    v47 = v0[14];
    v25 = v0[9];
    v46 = v0[12];
    v26 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v26 = 136315906;
    v27 = v23 + *(v25 + 28);
    v28 = sub_231369040();
    v29 = v15;
    v31 = v30;
    sub_231247694(v23);
    v32 = sub_2311CFD58(v28, v31, &v50);

    *(v26 + 4) = v32;
    *(v26 + 12) = 2080;
    sub_2311CFD58(v49, v5, &v50);
    OUTLINED_FUNCTION_38();

    *(v26 + 14) = v32;
    *(v26 + 22) = 2080;
    v15 = v29;
    v0[7] = *v24;
    sub_231247754();
    v33 = sub_23136A8B0();
    v35 = v34;
    sub_231247694(v24);
    sub_2311CFD58(v33, v35, &v50);
    OUTLINED_FUNCTION_38();

    *(v26 + 24) = v33;
    *(v26 + 32) = 1024;
    *(v26 + 34) = v29 & 1;
    _os_log_impl(&dword_2311CB000, v20, v48, "Checking 3P eligibility: for: %s group: %s, signal: %s == %{BOOL}d", v26, 0x26u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v22 + 8))(v47, v46);
  }

  else
  {

    sub_231247694(v24);
    sub_231247694(v23);
    v36 = *(v22 + 8);
    v37 = OUTLINED_FUNCTION_27();
    v39(v37, v38);
  }

  v40 = v0[17];
  v41 = v0[14];
  v43 = v0[10];
  v42 = v0[11];

  OUTLINED_FUNCTION_14();

  return v44(v15 & 1);
}

uint64_t *sub_231246C80()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[9];

  return v0;
}

uint64_t sub_231246CB0()
{
  sub_231246C80();

  return swift_deallocClassInstance();
}

uint64_t sub_231246D08()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311D44D4;

  return sub_2312437B0();
}

_OWORD *sub_231246DCC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_2313698C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_231210C60(a1, a2, v3[2]);
  if (v27)
  {
    sub_2312250F8(v26, v28);
    sub_2313690F0();
    sub_2311D1D6C(v28, v26);
    sub_231369EE0();
    v12 = sub_2313698A0();
    v13 = sub_23136A3A0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v23 = a3;
      v15 = v14;
      v25 = swift_slowAlloc();
      *v15 = 136315394;
      *(v15 + 4) = sub_2311CFD58(a1, a2, &v25);
      *(v15 + 12) = 2080;
      sub_2311D1D6C(v26, v24);
      v16 = sub_23136A010();
      v18 = v17;
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      v19 = sub_2311CFD58(v16, v18, &v25);

      *(v15 + 14) = v19;
      _os_log_impl(&dword_2311CB000, v12, v13, "override found for key: %s == %s", v15, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29();
      a3 = v23;
      OUTLINED_FUNCTION_29();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v26);
    }

    (*(v8 + 8))(v11, v7);
    return sub_2312250F8(v28, a3);
  }

  else
  {
    sub_231228E9C(v26, &qword_27DD443C0, &unk_23136E000);
    v20 = v3[6];
    v21 = v3[7];
    __swift_project_boxed_opaque_existential_1(v3 + 3, v20);
    return (*(v21 + 8))(a1, a2, v20, v21);
  }
}

uint64_t sub_23124707C()
{
  v1 = v0[2];
  v2 = v0[6];
  v3 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v2);
  v4 = *(v3 + 16);
  sub_231369EE0();
  v5 = v4(v2, v3);
  return sub_2312470F8(v5, v1);
}

uint64_t sub_2312470F8(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_2312473FC(a1, sub_2312B6900, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_23124717C()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SignalOverrides()
{
  result = qword_280F84508;
  if (!qword_280F84508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_231247254()
{
  sub_2313692F0();
  if (v0 <= 0x3F)
  {
    sub_231247308();
    if (v1 <= 0x3F)
    {
      sub_231247358();
      if (v2 <= 0x3F)
      {
        sub_231369050();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_231247308()
{
  if (!qword_280F7C788)
  {
    v0 = sub_23136A4D0();
    if (!v1)
    {
      atomic_store(v0, &qword_280F7C788);
    }
  }
}

unint64_t sub_231247358()
{
  result = qword_280F7C990;
  if (!qword_280F7C990)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280F7C990);
  }

  return result;
}

uint64_t sub_2312473FC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_2312B7234(&v56);
  v52 = v56;
  v53 = v57;
  v54 = v58;
  v55 = v59;
  *(&v43 + 1) = a1;
  sub_231369EE0();
  *&v43 = a3;

  while (1)
  {
    sub_2312B6C88(v9, v10, v11, v12, v13, v14, v15, v16, v43, v44, v45, v46, v47, v48, v49, *(&v49 + 1), v50, v51, v52, *(&v52 + 1), v53, *(&v53 + 1), v54, *(&v54 + 1), v55, v56);
    v17 = *(&v48 + 1);
    if (!*(&v48 + 1))
    {
      sub_2311D3BBC();
    }

    v18 = v48;
    sub_2312250F8(&v49, &v46);
    v19 = *a5;
    v27 = sub_231215F6C(v18, v17);
    v28 = *(v19 + 16);
    v29 = (v20 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v31 = v20;
    if (*(v19 + 24) >= v30)
    {
      if (a4)
      {
        if (v20)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CF0, &unk_23136FD40);
        sub_23136A710();
        if (v31)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_2312B4F48(v30, a4 & 1, v21, v22, v23, v24, v25, v26, v43, *(&v43 + 1), v44, *(&v44 + 1), v45, *(&v45 + 1), v46, *(&v46 + 1), v47, *(&v47 + 1), v48, *(&v48 + 1), v49, v50, v51, v52, *(&v52 + 1), v53, *(&v53 + 1), v54, *(&v54 + 1), v55, v56, *(&v56 + 1), v57, *(&v57 + 1), v58);
      v32 = *a5;
      v33 = sub_231215F6C(v18, v17);
      if ((v31 & 1) != (v34 & 1))
      {
        goto LABEL_18;
      }

      v27 = v33;
      if (v31)
      {
LABEL_10:
        v35 = *a5;
        sub_2311D1D6C(*(*a5 + 56) + 32 * v27, &v44);
        __swift_destroy_boxed_opaque_existential_1Tm(&v46);

        v36 = (*(v35 + 56) + 32 * v27);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        v9 = sub_2312250F8(&v44, v36);
        goto LABEL_14;
      }
    }

    v37 = *a5;
    *(*a5 + 8 * (v27 >> 6) + 64) |= 1 << v27;
    v38 = (v37[6] + 16 * v27);
    *v38 = v18;
    v38[1] = v17;
    v9 = sub_2312250F8(&v46, (v37[7] + 32 * v27));
    v39 = v37[2];
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (v40)
    {
      goto LABEL_17;
    }

    v37[2] = v41;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_23136A970();
  __break(1u);
  return result;
}

uint64_t sub_231247630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignalOverrides();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231247694(uint64_t a1)
{
  v2 = type metadata accessor for SignalOverrides();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2312476F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignalOverrides();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_231247754()
{
  result = qword_280F7C900;
  if (!qword_280F7C900)
  {
    sub_2313692F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7C900);
  }

  return result;
}

void sub_2312477AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435D0, &qword_23136CB10);
  v24 = *(v1 - 8);
  v2 = *(v24 + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v27 = &v21 - v6;
  v23 = v0;
  v7 = *v0;
  v8 = *(*v0 + 16);
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    v10 = 0;
    v22 = v8 - 2;
    while (1)
    {
      v28 = 0;
      MEMORY[0x23192B950](&v28, 8);
      v11 = (v28 * v8) >> 64;
      if (v8 > v28 * v8)
      {
        v12 = -v8 % v8;
        if (v12 > v28 * v8)
        {
          do
          {
            v28 = 0;
            MEMORY[0x23192B950](&v28, 8);
          }

          while (v12 > v28 * v8);
          v11 = (v28 * v8) >> 64;
        }
      }

      v13 = v10 + v11;
      if (__OFADD__(v10, v11))
      {
        break;
      }

      if (v10 != v13)
      {
        v14 = *(v7 + 16);
        if (v10 >= v14)
        {
          goto LABEL_20;
        }

        v15 = v7;
        v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
        v16 = v7 + v26;
        v17 = *(v24 + 72);
        v25 = v17 * v10;
        sub_231247A14(v16 + v17 * v10, v27, &qword_27DD435D0, &qword_23136CB10);
        if (v13 >= v14)
        {
          goto LABEL_21;
        }

        sub_231247A14(v16 + v17 * v13, v5, &qword_27DD435D0, &qword_23136CB10);
        v7 = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2311E6664(v15);
          v7 = v18;
        }

        if (v10 >= *(v7 + 16))
        {
          goto LABEL_22;
        }

        v19 = v7 + v26;
        sub_231247A7C(v5, v7 + v26 + v25);
        if (v13 >= *(v7 + 16))
        {
          goto LABEL_23;
        }

        sub_231247A7C(v27, v19 + v17 * v13);
        v9 = v22;
        *v23 = v7;
      }

      --v8;
      if (v10++ == v9)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

uint64_t sub_231247A14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_231247A7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435D0, &qword_23136CB10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_13_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  *(v13 - 88) = a1;
  *v12 = a11;
  return v11;
}

uint64_t OUTLINED_FUNCTION_28_8()
{

  return swift_arrayDestroy();
}

unint64_t sub_231247B54(char a1)
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

uint64_t sub_231247E24()
{
  OUTLINED_FUNCTION_8();
  v1 = sub_231366750();
  v0[3] = v1;
  OUTLINED_FUNCTION_0(v1);
  v0[4] = v2;
  v4 = *(v3 + 64);
  v0[5] = OUTLINED_FUNCTION_43();
  v5 = sub_231366880();
  v0[6] = v5;
  OUTLINED_FUNCTION_0(v5);
  v0[7] = v6;
  v8 = *(v7 + 64);
  v0[8] = OUTLINED_FUNCTION_43();
  v9 = sub_2313668A0();
  v0[9] = v9;
  OUTLINED_FUNCTION_0(v9);
  v0[10] = v10;
  v12 = *(v11 + 64);
  v0[11] = OUTLINED_FUNCTION_43();
  v13 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v13, v14, v15);
}