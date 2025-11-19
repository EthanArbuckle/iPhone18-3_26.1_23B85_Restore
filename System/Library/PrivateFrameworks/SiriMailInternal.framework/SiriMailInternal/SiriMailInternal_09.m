uint64_t sub_2676ADFFC(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_2676C8C8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2676AD120(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_2676AF01C(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_2676AFE00(&qword_2801CBF50, MEMORY[0x277CBA2E0]);
      v15 = sub_2676CBF0C();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_2676AFE00(&qword_2801CBF58, MEMORY[0x277CBA2E0]);
        v17 = sub_2676CBF1C();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_2676AECD4();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_2676CC5DC();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_2676AE2AC(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_2676CB14C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2676AD478(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_2676AF334(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_2676AFE00(&qword_2801CBF40, MEMORY[0x277D5CA58]);
      v15 = sub_2676CBF0C();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_2676AFE00(&qword_2801CBF48, MEMORY[0x277D5CA58]);
        v17 = sub_2676CBF1C();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_2676AECD4();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_2676CC5DC();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_2676AE55C(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_2676CAABC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2676ADA2C(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_2676AF898(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_2676AFE00(&qword_2801CDC68, MEMORY[0x277D56020]);
      v15 = sub_2676CBF0C();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_2676AFE00(&qword_2801CDC70, MEMORY[0x277D56020]);
        v17 = sub_2676CBF1C();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_2676AECD4();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_2676CC5DC();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

void sub_2676AE80C(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2676AD7D0(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_2676AF64C(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_2676CC64C();
      sub_2676CBFFC();
      v17 = sub_2676CC67C();
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
        if (v20 || (sub_2676CC59C() & 1) != 0)
        {
          goto LABEL_19;
        }

        v17 = a3 + 1;
      }
    }

    sub_2676AEB94();
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
    sub_2676CC5DC();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_2676AE974(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 <= v9 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2676ADD84(v9 + 1);
    }

    else
    {
      if (v10 > v9)
      {
        result = sub_2676AEEC8();
        goto LABEL_22;
      }

      sub_2676AFBB0(v9 + 1);
    }

    v11 = *v4;
    v12 = *(*v4 + 40);
    sub_2676CC64C();
    sub_2676CC66C();
    if (a2)
    {
      sub_2676CBFFC();
    }

    result = sub_2676CC67C();
    v13 = v11 + 56;
    v14 = -1 << *(v11 + 32);
    a3 = result & ~v14;
    if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v15 = ~v14;
      v16 = *(v11 + 48);
      do
      {
        v17 = (v16 + 16 * a3);
        v18 = v17[1];
        if (v18)
        {
          if (a2)
          {
            if (*v17 == v8 && v18 == a2)
            {
              goto LABEL_25;
            }

            result = sub_2676CC59C();
            if (result)
            {
              goto LABEL_25;
            }
          }
        }

        else if (!a2)
        {
          goto LABEL_25;
        }

        a3 = (a3 + 1) & v15;
      }

      while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
    }
  }

LABEL_22:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = v8;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
LABEL_25:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
    result = sub_2676CC5DC();
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

uint64_t sub_2676AEB30(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2676D4A40;
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

void sub_2676AEB94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC40, &qword_2676D4EA8);
  v2 = *v0;
  v3 = sub_2676CC3CC();
  if (*(v2 + 16))
  {
    v4 = OUTLINED_FUNCTION_112_0();
    v6 = (v5 + 63) >> 6;
    if (v3 != v2 || v4 >= v2 + 56 + 8 * v6)
    {
      memmove(v4, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v3 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    OUTLINED_FUNCTION_111_0();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_15:
        v19 = v16 | (v8 << 6);
        v20 = (*(v2 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = (*(v3 + 48) + 16 * v19);
        *v22 = *v20;
        v22[1] = v21;
      }

      while (v13);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v15)
      {
        goto LABEL_17;
      }

      v18 = *(v2 + 56 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
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

void sub_2676AECD4()
{
  OUTLINED_FUNCTION_21_1();
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v8 = v7(0);
  OUTLINED_FUNCTION_3(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v3);
  v14 = *v0;
  v15 = sub_2676CC3CC();
  if (*(v14 + 16))
  {
    v16 = OUTLINED_FUNCTION_112_0();
    v18 = (v17 + 63) >> 6;
    if (v15 != v14 || v16 >= v14 + 56 + 8 * v18)
    {
      memmove(v16, (v14 + 56), 8 * v18);
    }

    v20 = 0;
    *(v15 + 16) = *(v14 + 16);
    v21 = 1 << *(v14 + 32);
    v22 = *(v14 + 56);
    OUTLINED_FUNCTION_111_0();
    v25 = v24 & v23;
    v27 = (v26 + 63) >> 6;
    if ((v24 & v23) != 0)
    {
      do
      {
        v28 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
LABEL_15:
        (*(v10 + 16))(v1, *(v14 + 48) + *(v10 + 72) * (v28 | (v20 << 6)), v8);
        v31 = *(v15 + 48);
        v32 = *(v10 + 32);
        OUTLINED_FUNCTION_91_2();
        v33();
      }

      while (v25);
    }

    v29 = v20;
    while (1)
    {
      v20 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v20 >= v27)
      {
        goto LABEL_17;
      }

      v30 = *(v14 + 56 + 8 * v20);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v25 = (v30 - 1) & v30;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v6 = v15;
    OUTLINED_FUNCTION_20_1();
  }
}

void *sub_2676AEEC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC88, &qword_2676D4FE8);
  v2 = *v0;
  v3 = sub_2676CC3CC();
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

uint64_t sub_2676AF01C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2676C8C8C();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC60, &qword_2676D4EF8);
  v10 = sub_2676CC3DC();
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
        sub_2676AFE00(&qword_2801CBF50, MEMORY[0x277CBA2E0]);
        result = sub_2676CBF0C();
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

uint64_t sub_2676AF334(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2676CB14C();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC50, &unk_2676D4ED8);
  v10 = sub_2676CC3DC();
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
        sub_2676AFE00(&qword_2801CBF40, MEMORY[0x277D5CA58]);
        result = sub_2676CBF0C();
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

uint64_t sub_2676AF64C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC40, &qword_2676D4EA8);
  result = sub_2676CC3DC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_2676CC64C();

        sub_2676CBFFC();
        result = sub_2676CC67C();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
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

          v2 = v29;
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

uint64_t sub_2676AF898(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2676CAABC();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC78, &unk_2676D4F00);
  v10 = sub_2676CC3DC();
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
        sub_2676AFE00(&qword_2801CDC68, MEMORY[0x277D56020]);
        result = sub_2676CBF0C();
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

uint64_t sub_2676AFBB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDC88, &qword_2676D4FE8);
  result = sub_2676CC3DC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v18 = *v16;
        v17 = v16[1];
        v19 = *(v6 + 40);
        sub_2676CC64C();
        sub_2676CC66C();
        if (v17)
        {

          sub_2676CBFFC();
        }

        result = sub_2676CC67C();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v18;
        v28[1] = v17;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_25;
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

          v2 = v29;
          goto LABEL_29;
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

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2676AFE00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2676AFE48(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_2676CC4EC();
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
    result = sub_267630B8C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_2676AFFD0();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_2676148C4(&qword_2801CDC80, &qword_2801CCD70, &qword_2676D1058);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCD70, &qword_2676D1058);
          v9 = sub_2676460F0(v12, i, a3);
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

unint64_t sub_2676AFFD0()
{
  result = qword_2801CCD80;
  if (!qword_2801CCD80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2801CCD80);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_38_5(unint64_t *a1)
{

  return sub_2676148C4(a1, v1, v2);
}

void OUTLINED_FUNCTION_43_7()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x26D5FEA80);
}

void OUTLINED_FUNCTION_50_5()
{
  v4 = *(v1 + 16);
  v3 = v1 + 16;
  v5 = *(v3 + 64);
  *(v2 - 96) = v0;
  v6 = *(v3 + 56);
}

void OUTLINED_FUNCTION_60_3()
{

  sub_2676A2C6C();
}

uint64_t OUTLINED_FUNCTION_70_3()
{
  v2 = *(*v0 + 40);

  return sub_2676CC64C();
}

uint64_t OUTLINED_FUNCTION_95_2()
{

  return sub_2676CC59C();
}

uint64_t OUTLINED_FUNCTION_112_0()
{
  result = v0 + 56;
  v2 = 1 << *(v0 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_118_0()
{
  v2 = *(v0 - 304);

  return sub_2676C983C();
}

uint64_t OUTLINED_FUNCTION_119_0()
{
  v2 = *(v0 - 192);

  return sub_2676C97EC();
}

uint64_t OUTLINED_FUNCTION_121_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_122_0()
{

  return sub_2676C98AC();
}

uint64_t OUTLINED_FUNCTION_123_0()
{
  v3 = *v0;
}

uint64_t OUTLINED_FUNCTION_124_0(uint64_t *a1)
{
  v2 = *a1;
}

uint64_t OUTLINED_FUNCTION_125_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_126()
{

  return swift_slowAlloc();
}

unint64_t SiriMailError.errorDescription.getter()
{
  v1 = v0[1];
  result = 0x6C706D6920746F4ELL;
  switch(v1)
  {
    case 0:
      result = 0xD000000000000021;
      break;
    case 1:
      v4 = 18;
      goto LABEL_8;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000021;
      break;
    case 4:
      OUTLINED_FUNCTION_0_30();
      result = v3 - 1;
      break;
    case 5:
      OUTLINED_FUNCTION_0_30();
      result = v5 | 6;
      break;
    case 6:
      OUTLINED_FUNCTION_0_30();
      result = v6 + 23;
      break;
    case 7:
      v4 = 70;
LABEL_8:
      result = v4 | 0xD000000000000021;
      break;
    default:
      v7 = *v0;
      sub_2676CC3FC();
      MEMORY[0x26D5FDD00](0xD00000000000006DLL, 0x80000002676D8020);
      MEMORY[0x26D5FDD00](v7, v1);
      result = 0;
      break;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16SiriMailInternal0aB5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2676B0580(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF8 && *(a1 + 16))
  {
    return (*a1 + 2147483640);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 7;
  if (v4 >= 9)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2676B05D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483640;
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 7;
    }
  }

  return result;
}

void *sub_2676B0630(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t static Logger.logAndCrash(_:file:line:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDCA8, &qword_2676D5100);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_1_8();
    swift_once();
  }

  v17 = sub_2676CBE4C();
  v18 = __swift_project_value_buffer(v17, qword_2801CDC90);
  v19 = *(v17 - 8);
  (*(v19 + 16))(v16, v18, v17);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  sub_2676B0A10(v16, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v17) == 1)
  {
    sub_2676B0A80(v14);
  }

  else
  {

    v20 = sub_2676CBE2C();
    v21 = sub_2676CC24C();

    v35 = v21;
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v36 = a6;
      v23 = v22;
      v33 = swift_slowAlloc();
      v38 = v33;
      *v23 = 136315650;
      v24 = sub_2676CC40C();
      v34 = a4;
      v26 = sub_2676B0B84(v24, v25, &v38);
      v32 = v20;
      v27 = v26;

      *(v23 + 4) = v27;
      *(v23 + 12) = 2048;
      *(v23 + 14) = v36;
      *(v23 + 22) = 2080;
      *(v23 + 24) = sub_2676B0B84(a1, a2, &v38);
      v28 = v32;
      _os_log_impl(&dword_2675D4000, v32, v35, "FatalError at %s:%lu - %s", v23, 0x20u);
      v29 = v33;
      swift_arrayDestroy();
      MEMORY[0x26D5FEA80](v29, -1, -1);
      MEMORY[0x26D5FEA80](v23, -1, -1);
    }

    else
    {
    }

    (*(v19 + 8))(v14, v17);
  }

  sub_2676C972C();
  result = sub_2676CC4CC();
  __break(1u);
  return result;
}

uint64_t sub_2676B0998()
{
  v0 = sub_2676CBE4C();
  __swift_allocate_value_buffer(v0, qword_2801CDC90);
  __swift_project_value_buffer(v0, qword_2801CDC90);
  return sub_2676CBE3C();
}

uint64_t sub_2676B0A10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDCA8, &qword_2676D5100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2676B0A80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDCA8, &qword_2676D5100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Logger.siriMail.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_1_8();
    swift_once();
  }

  v2 = sub_2676CBE4C();
  v3 = __swift_project_value_buffer(v2, qword_2801CDC90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2676B0B84(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2676B0CF4(v11, 0, 0, 1, a1, a2);
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
    sub_2675EB89C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

_BYTE *storeEnumTagSinglePayload for Logger(_BYTE *result, int a2, int a3)
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

unint64_t sub_2676B0CF4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2676B0DF4(a5, a6);
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
    result = sub_2676CC43C();
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

uint64_t sub_2676B0DF4(uint64_t a1, unint64_t a2)
{
  v4 = sub_2676B0E40(a1, a2);
  sub_2676B0F58(&unk_2878ACE48);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2676B0E40(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_2676CC04C())
  {
    result = sub_2676B103C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2676CC3EC();
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
          result = sub_2676CC43C();
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

uint64_t sub_2676B0F58(uint64_t result)
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

    result = sub_2676B10AC(result, v8, 1, v3);
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

void *sub_2676B103C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDCB0, &qword_2676D5118);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2676B10AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDCB0, &qword_2676D5118);
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

uint64_t type metadata accessor for Signpost.OpenSignpost()
{
  result = qword_2801CDCB8;
  if (!qword_2801CDCB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2676B1278()
{
  result = sub_2676CBE1C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SignpostName(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SignpostName(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_2676B1348()
{
  sub_2676B13A8();
  result = sub_2676CC2DC();
  qword_2801D3F18 = result;
  return result;
}

unint64_t sub_2676B13A8()
{
  result = qword_2801CDCC8;
  if (!qword_2801CDCC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2801CDCC8);
  }

  return result;
}

void sub_2676B13EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v58 = a8;
  v59 = a7;
  v60 = a6;
  v61 = a5;
  v62 = a3;
  v63 = a9;
  v13 = sub_2676CB0DC();
  v14 = OUTLINED_FUNCTION_3(v13);
  v64 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_5();
  v66 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA08, &unk_2676CFEA0);
  OUTLINED_FUNCTION_4_1(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_9_1();
  v65 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA20, &qword_2676CFEB8);
  v25 = OUTLINED_FUNCTION_4_1(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_7();
  v30 = v28 - v29;
  v32 = MEMORY[0x28223BE20](v31);
  v34 = v56 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = v56 - v35;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v37 = sub_2676CBE4C();
  __swift_project_value_buffer(v37, qword_2801CDC90);
  v57 = a10;
  sub_2675F95E4(a10, v36, &qword_2801CCA20, &qword_2676CFEB8);
  v38 = sub_2676CBE2C();
  v39 = sub_2676CC26C();
  if (os_log_type_enabled(v38, v39))
  {
    v56[0] = a4;
    v56[1] = a2;
    v56[2] = a1;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v69 = v41;
    *v40 = 136315138;
    sub_2675F95E4(v36, v34, &qword_2801CCA20, &qword_2676CFEB8);
    if (__swift_getEnumTagSinglePayload(v34, 1, v13) == 1)
    {
      sub_2675EB7EC(v34, &qword_2801CCA20, &qword_2676CFEB8);
      v42 = 0;
      v43 = 0;
    }

    else
    {
      v42 = sub_2676CB0CC();
      v43 = v44;
      (*(v64 + 8))(v34, v13);
    }

    v67 = v42;
    v68 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
    v45 = sub_2676CBFBC();
    v47 = v46;
    sub_2675EB7EC(v36, &qword_2801CCA20, &qword_2676CFEB8);
    v48 = sub_2676B0B84(v45, v47, &v69);

    *(v40 + 4) = v48;
    _os_log_impl(&dword_2675D4000, v38, v39, "#reducer returning _SiriMailMessage, state: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    sub_2675EB7EC(v36, &qword_2801CCA20, &qword_2676CFEB8);
  }

  sub_2676CB0AC();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
  sub_2675F95E4(v57, v30, &qword_2801CCA20, &qword_2676CFEB8);
  if (__swift_getEnumTagSinglePayload(v30, 1, v13) == 1)
  {
    (*(v64 + 104))(v66, *MEMORY[0x277D5CA08], v13);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v13);

    OUTLINED_FUNCTION_11_30();
    if (EnumTagSinglePayload != 1)
    {
      sub_2675EB7EC(v30, &qword_2801CCA20, &qword_2676CFEB8);
    }
  }

  else
  {
    (*(v64 + 32))(v66, v30, v13);

    OUTLINED_FUNCTION_11_30();
  }

  if (qword_2801CBA70 != -1)
  {
    OUTLINED_FUNCTION_7_1();
  }

  v54 = *(qword_2801D3CD0 + 248);
  v55 = *(qword_2801D3CD0 + 240);

  sub_2676CB04C();
  OUTLINED_FUNCTION_20_1();
}

void sub_2676B192C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v190 = a7;
  v187 = a6;
  v195 = a5;
  v188 = a4;
  v185 = a3;
  v184 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA20, &qword_2676CFEB8);
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_1();
  v192 = v14;
  v205 = sub_2676CB0DC();
  v15 = OUTLINED_FUNCTION_3(v205);
  v189 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_5();
  v191 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA08, &unk_2676CFEA0);
  OUTLINED_FUNCTION_4_1(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_9_1();
  v196 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDCD0, &qword_2676D5188);
  OUTLINED_FUNCTION_4_1(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_9_1();
  v194 = v29;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  OUTLINED_FUNCTION_2_6(v186);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_9_1();
  v197 = v33;
  v34 = sub_2676CB18C();
  v35 = OUTLINED_FUNCTION_3(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_7();
  v183 = (v40 - v41);
  OUTLINED_FUNCTION_12_0();
  v43 = MEMORY[0x28223BE20](v42);
  v45 = v175 - v44;
  MEMORY[0x28223BE20](v43);
  v193 = v175 - v46;
  v213 = sub_2676CB14C();
  v47 = OUTLINED_FUNCTION_3(v213);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_1_7();
  v182 = (v52 - v53);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v54);
  v202 = v175 - v55;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v56);
  v58 = v175 - v57;
  v59 = sub_2676C8C8C();
  v60 = OUTLINED_FUNCTION_3(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_1_7();
  v201 = (v63 - v64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v65);
  v200 = v175 - v66;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v67);
  v212 = v175 - v68;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v69);
  v72 = v175 - v71;
  if (a1 && (v73 = *(a1 + 16)) != 0)
  {
    v178 = v45;
    v179 = v37;
    v180 = v34;
    v181 = a8;
    v75 = *(v70 + 16);
    v74 = v70 + 16;
    v210 = v75;
    v176 = (*(v74 + 64) + 32) & ~*(v74 + 64);
    v76 = (a1 + v176);
    v77 = *(v74 + 56);
    v211 = v74;
    v208 = (v74 - 8);
    v209 = v77;
    v207 = v49 + 32;
    v78 = MEMORY[0x277D84F90];
    do
    {
      v79 = v210;
      v210(v72, v76, v59);
      v79(v212, v72, v59);
      sub_2676CB15C();
      v206 = *v208;
      v206(v72, v59);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v85 = *(v78 + 16);
        OUTLINED_FUNCTION_18_4();
        sub_2676077B8();
        v78 = v86;
      }

      v80 = *(v78 + 16);
      if (v80 >= *(v78 + 24) >> 1)
      {
        sub_2676077B8();
        v78 = v87;
      }

      *(v78 + 16) = v80 + 1;
      v81 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v82 = *(v49 + 72);
      v83 = v78 + v81 + v82 * v80;
      v84 = *(v49 + 32);
      v84(v83, v58, v213);
      v76 += v209;
      --v73;
    }

    while (v73);
    if (v184)
    {
      v199 = v59;
      v93 = *(v184 + 16);
      v94 = v205;
      if (v93)
      {
        v95 = (v184 + v176);
        v96 = MEMORY[0x277D84F90];
        v198 = v81;
        v203 = v84;
        v204 = v82;
        do
        {
          v98 = v199;
          v97 = v200;
          v99 = v210;
          v210(v200, v95, v199);
          v99(v212, v97, v98);
          sub_2676CB15C();
          v206(v97, v98);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v102 = *(v96 + 2);
            OUTLINED_FUNCTION_18_4();
            sub_2676077B8();
            v96 = v103;
          }

          v101 = *(v96 + 2);
          v100 = *(v96 + 3);
          v81 = v198;
          v84 = v203;
          v82 = v204;
          if (v101 >= v100 >> 1)
          {
            OUTLINED_FUNCTION_14_21(v100);
            sub_2676077B8();
            v96 = v104;
          }

          *(v96 + 2) = v101 + 1;
          v84(&v96[v81 + v101 * v82], v202, v213);
          v95 += v209;
          --v93;
          v94 = v205;
        }

        while (v93);
      }

      else
      {
        v96 = MEMORY[0x277D84F90];
      }

      v59 = v199;
    }

    else
    {
      v96 = 0;
      v94 = v205;
    }

    v105 = v197;
    v177 = v78;
    if (v185)
    {
      v203 = v84;
      v204 = v82;
      v202 = v96;
      v106 = *(v185 + 16);
      if (v106)
      {
        v107 = (v185 + v176);
        v108 = MEMORY[0x277D84F90];
        v109 = v182;
        do
        {
          v110 = v201;
          v111 = v108;
          v112 = v210;
          v210(v201, v107, v59);
          v112(v212, v110, v59);
          v108 = v111;
          sub_2676CB15C();
          v206(v110, v59);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v115 = *(v111 + 16);
            OUTLINED_FUNCTION_18_4();
            sub_2676077B8();
            v108 = v116;
          }

          v114 = *(v108 + 16);
          v113 = *(v108 + 24);
          if (v114 >= v113 >> 1)
          {
            OUTLINED_FUNCTION_14_21(v113);
            sub_2676077B8();
            v108 = v117;
          }

          *(v108 + 16) = v114 + 1;
          v203(v108 + v81 + v114 * v204, v109, v213);
          v107 += v209;
          --v106;
          v94 = v205;
        }

        while (v106);
      }

      else
      {
        v108 = MEMORY[0x277D84F90];
      }

      v118 = v108;
      v105 = v197;
      v96 = v202;
    }

    else
    {
      v118 = 0;
    }

    v120 = v194;
    v119 = v195;
    if (qword_2801CBA70 != -1)
    {
      OUTLINED_FUNCTION_7_1();
    }

    v121 = *(qword_2801D3CD0 + 96);
    v122 = *(qword_2801D3CD0 + 104);
    v123 = *(qword_2801D3CD0 + 112);
    v208 = *(qword_2801D3CD0 + 120);
    v202 = *(qword_2801D3CD0 + 128);
    v203 = v123;
    v124 = *(qword_2801D3CD0 + 144);
    v207 = *(qword_2801D3CD0 + 136);
    v201 = v124;
    v125 = *(qword_2801D3CD0 + 152);
    v205 = v121;
    v206 = v125;
    v126 = *(qword_2801D3CD0 + 56);
    v200 = *(qword_2801D3CD0 + 48);
    v127 = *(qword_2801D3CD0 + 88);
    v198 = *(qword_2801D3CD0 + 80);
    v128 = *(qword_2801D3CD0 + 40);
    v184 = *(qword_2801D3CD0 + 32);
    v129 = *(qword_2801D3CD0 + 72);
    v176 = *(qword_2801D3CD0 + 64);
    v175[2] = v129;
    v130 = *(qword_2801D3CD0 + 232);
    v175[13] = *(qword_2801D3CD0 + 224);
    v175[1] = v130;
    v131 = *(qword_2801D3CD0 + 264);
    v175[12] = *(qword_2801D3CD0 + 256);
    v175[0] = v131;
    v132 = *(qword_2801D3CD0 + 280);
    v175[11] = *(qword_2801D3CD0 + 272);
    v213 = v132;
    v133 = *(qword_2801D3CD0 + 296);
    v175[10] = *(qword_2801D3CD0 + 288);
    v212 = v133;
    v134 = *(qword_2801D3CD0 + 312);
    v175[9] = *(qword_2801D3CD0 + 304);
    v211 = v134;
    v135 = MEMORY[0x277D84F90];
    if (v96)
    {
      v136 = v96;
    }

    else
    {
      v136 = MEMORY[0x277D84F90];
    }

    v175[6] = v136;
    v175[8] = *(qword_2801D3CD0 + 320);
    v210 = *(qword_2801D3CD0 + 328);
    if (v118)
    {
      v135 = v118;
    }

    v175[5] = v135;
    v137 = *(qword_2801D3CD0 + 248);
    v175[7] = *(qword_2801D3CD0 + 240);
    v209 = v137;
    v138 = v188;
    if (v119 == 1)
    {
      v139 = 0;
    }

    else
    {
      v139 = v188;
    }

    v175[4] = v139;
    if (v119 == 1)
    {
      v140 = 0;
    }

    else
    {
      v140 = v119;
    }

    v175[3] = v140;
    sub_2675F95E4(v187, v120, &qword_2801CDCD0, &qword_2676D5188);
    v141 = v186;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v120, 1, v186);
    v204 = v122;
    v199 = v126;
    v185 = v127;
    v182 = v128;
    if (EnumTagSinglePayload == 1)
    {
      sub_2676C8EBC();
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v143, v144, v145, v146);
      v147 = __swift_getEnumTagSinglePayload(v120, 1, v141);

      v105 = v197;
      sub_2676B2ED0(v138, v195);
      if (v147 != 1)
      {
        sub_2675EB7EC(v194, &qword_2801CDCD0, &qword_2676D5188);
      }
    }

    else
    {
      sub_2676B3074(v120, v105);

      sub_2676B2ED0(v138, v195);
    }

    sub_26762D208();
    sub_2675EB7EC(v105, &qword_2801CBFE0, &qword_2676D1070);
    sub_2676CB0AC();
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v148, v149, v150, v151);
    v152 = v192;
    sub_2675F95E4(v190, v192, &qword_2801CCA20, &qword_2676CFEB8);
    if (__swift_getEnumTagSinglePayload(v152, 1, v94) == 1)
    {
      (*(v189 + 104))(v191, *MEMORY[0x277D5CA08], v94);
      if (__swift_getEnumTagSinglePayload(v152, 1, v94) != 1)
      {
        sub_2675EB7EC(v152, &qword_2801CCA20, &qword_2676CFEB8);
      }
    }

    else
    {
      (*(v189 + 32))(v191, v152, v94);
    }

    v153 = v193;
    sub_2676CB17C();
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v154 = sub_2676CBE4C();
    __swift_project_value_buffer(v154, qword_2801CDC90);
    v155 = v179;
    v156 = *(v179 + 16);
    v157 = v178;
    v158 = v180;
    v156(v178, v153, v180);
    v159 = sub_2676CBE2C();
    v160 = sub_2676CC26C();
    if (os_log_type_enabled(v159, v160))
    {
      v161 = swift_slowAlloc();
      v213 = swift_slowAlloc();
      v214 = v213;
      *v161 = 136315138;
      v156(v183, v157, v158);
      sub_2676CBFBC();
      v162 = objc_opt_self();
      v163 = sub_2676CBF3C();

      v164 = [v162 partiallyRedactedStringForString_];

      v165 = sub_2676CBF6C();
      v167 = v166;

      v168 = OUTLINED_FUNCTION_16_16();
      v169(v168);
      v170 = sub_2676B0B84(v165, v167, &v214);

      *(v161 + 4) = v170;
      _os_log_impl(&dword_2675D4000, v159, v160, "Publishing new snippet: %s", v161, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v213);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_2_5();
    }

    else
    {

      v171 = OUTLINED_FUNCTION_16_16();
      v172(v171);
    }

    v173 = v181;
    (*(v155 + 32))(v181, v153, v158);
    v174 = sub_2676C916C();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v173, 0, 1, v174);
    OUTLINED_FUNCTION_20_1();
  }

  else
  {
    sub_2676C916C();
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_20_1();

    __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
  }
}

uint64_t sub_2676B2998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_2676B30E4;

  return sub_267626A88(a5);
}

uint64_t sub_2676B2A34()
{
  v1 = sub_2676CAFDC();
  OUTLINED_FUNCTION_4_1(v1);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_13_21();
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_6_22(v4);

  return sub_2676B2998(v5, v6, v7, v8, v9);
}

uint64_t sub_2676B2B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v4 = sub_2676CBE4C();
  __swift_project_value_buffer(v4, qword_2801CDC90);
  v5 = sub_2676CBE2C();
  v6 = sub_2676CC23C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2675D4000, v5, v6, "#modelTransformer returning MailPluginModel", v7, 2u);
    OUTLINED_FUNCTION_2_5();
  }

  v8 = sub_2676CB18C();
  OUTLINED_FUNCTION_2_6(v8);
  (*(v9 + 16))(a2, a1);
  v10 = sub_2676C916C();
  swift_storeEnumTagMultiPayload();

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v10);
}

void sub_2676B2C78(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v24[1] = a6;
  v9 = sub_2676CAFDC();
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC770, &unk_2676CF800);
  OUTLINED_FUNCTION_4_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v18);
  v20 = v24 - v19;
  a4(a1);
  sub_2676CC1DC();
  v21 = sub_2676CC1FC();
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v21);
  (*(v12 + 16))(v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v22 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = a3;
  (*(v12 + 32))(&v23[v22], v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v9);

  sub_26760E138();

  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2676B2E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_26762C5D8;

  return sub_267626A88(a5);
}

uint64_t sub_2676B2ED0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = sub_2676CAFDC();
  OUTLINED_FUNCTION_3(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2676B2FA4()
{
  v1 = sub_2676CAFDC();
  OUTLINED_FUNCTION_4_1(v1);
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_13_21();
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_6_22(v4);

  return sub_2676B2E34(v5, v6, v7, v8, v9);
}

uint64_t sub_2676B3074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_11_30()
{
  sub_2676B2ED0(v1, v2);
  sub_2676B2ED0(v0, v3);
  v5 = *(v4 - 176);
}

void OUTLINED_FUNCTION_13_21()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t sub_2676B3184(uint64_t a1, uint64_t a2, unint64_t a3)
{

  sub_2676B334C(1);
  sub_2676B340C();
  v5 = sub_2676CC32C();

  sub_2676B3278(1uLL, a2, a3);
  sub_2676B3460();

  sub_2676CC02C();

  return v5;
}

unint64_t sub_2676B3278(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_2676CC01C();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_2676CC0AC();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2676B334C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2676CC01C();
    v1 = sub_2676CC0AC();

    return v1;
  }

  return result;
}

unint64_t sub_2676B340C()
{
  result = qword_2801CDCD8;
  if (!qword_2801CDCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CDCD8);
  }

  return result;
}

unint64_t sub_2676B3460()
{
  result = qword_2801CDCE0;
  if (!qword_2801CDCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CDCE0);
  }

  return result;
}

uint64_t sub_2676B34D8(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_opt_self();
  v5 = sub_2676CBF3C();
  v6 = [v4 *a3];

  v7 = sub_2676CBF6C();
  return v7;
}

uint64_t type metadata accessor for UnresolvedContactInfo()
{
  result = qword_2801CDCE8;
  if (!qword_2801CDCE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2676B35D8()
{
  sub_2676CAA9C();
  if (v0 <= 0x3F)
  {
    sub_2675FEE64();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2676B366C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2676C9ECC();
  sub_2676C9CEC();
  sub_2675ED65C(a1, &v9, &qword_2801CC6B0, &qword_2676CFC80);
  if (v10)
  {
    sub_2675ED6C0(a1, &qword_2801CC6B0, &qword_2676CFC80);
    sub_2675DD73C(&v9, &v11);
  }

  else
  {
    sub_2676C977C();
    v4 = sub_2676C9C7C();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v7 = sub_2676C9C6C();
    v12 = v4;
    v13 = MEMORY[0x277D5BF00];
    *&v11 = v7;
    sub_2675ED6C0(a1, &qword_2801CC6B0, &qword_2676CFC80);
    if (v10)
    {
      sub_2675ED6C0(&v9, &qword_2801CC6B0, &qword_2676CFC80);
    }
  }

  return sub_2675DD73C(&v11, a2);
}

void sub_2676B377C()
{
  OUTLINED_FUNCTION_21_1();
  v2 = v1;
  v36 = v3;
  v40 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4A0, &unk_2676D3210);
  v38 = OUTLINED_FUNCTION_3(v5);
  v39 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v38);
  v37 = &v35 - v9;
  v10 = sub_2676C9BDC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_7();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = (&v35 - v17);
  v19 = sub_2676CB48C();
  v20 = OUTLINED_FUNCTION_4_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_2();
  v23 = sub_2676C9B9C();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = sub_2676C9B8C();
  v45[3] = v23;
  v45[4] = MEMORY[0x277D5BD58];
  v45[0] = v26;
  type metadata accessor for SendMailCATsSimple();
  sub_2676CB47C();
  v45[5] = sub_2676CB42C();
  type metadata accessor for ContactResolutionCATsSimple();
  sub_2676CB47C();
  v45[6] = sub_2676CB42C();
  sub_2676C9ECC();
  *v18 = v36;
  v18[1] = v2;
  v27 = *MEMORY[0x277D5BD88];
  v28 = *(v11 + 104);
  v35 = v10;
  v28(v18, v27, v10);
  sub_2676B3B6C(v45, v44);
  (*(v11 + 16))(v15, v18, v10);
  sub_2676149CC(v0, &v43);
  sub_2676149CC(v0 + 40, &v42);
  sub_2676149CC(v0 + 80, &v41);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4B0, &qword_2676D3220);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  sub_2676B3BA4();

  v44[0] = sub_2676C932C();
  v32 = sub_2676148C4(&qword_2801CD4B8, &qword_2801CD4B0, &qword_2676D3220);
  v33 = v37;
  sub_2676C95AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4A8, &qword_2676D51C0);
  v44[0] = v29;
  v44[1] = v32;
  swift_getOpaqueTypeConformance2();
  v34 = v38;
  sub_2676C93CC();

  (*(v39 + 8))(v33, v34);
  (*(v11 + 8))(v18, v35);
  sub_2676B445C(v45);
  OUTLINED_FUNCTION_20_1();
}

unint64_t sub_2676B3BA4()
{
  result = qword_2801CDCF8;
  if (!qword_2801CDCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CDCF8);
  }

  return result;
}

uint64_t sub_2676B3BF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD00, &qword_2676D51C8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v53 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD08, &qword_2676D51D0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD10, &unk_2676D51D8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v22 = &v53 - v21;
  v23 = *(v8 + 16);
  v53 = a1;
  v24 = a1;
  v26 = v25;
  v23(v14, v24, v7);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v26);
    sub_2675ED6C0(v6, &qword_2801CDD00, &qword_2676D51C8);
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_2676CC3FC();
    MEMORY[0x26D5FDD00](0xD000000000000036, 0x80000002676D80F0);
    v23(v12, v53, v7);
    v29 = sub_2676CBFBC();
    MEMORY[0x26D5FDD00](v29);

    MEMORY[0x26D5FDD00](41, 0xE100000000000000);
    v30 = v55;
    v31 = v56;
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v32 = sub_2676CBE4C();
    __swift_project_value_buffer(v32, qword_2801CDC90);

    v33 = sub_2676CBE2C();
    v34 = sub_2676CC24C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v55 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_2676B0B84(v30, v31, &v55);
      _os_log_impl(&dword_2675D4000, v33, v34, "#UnsetRelationshipFlowFactory: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x26D5FEA80](v36, -1, -1);
      MEMORY[0x26D5FEA80](v35, -1, -1);
    }

    sub_2676B448C();
    v37 = swift_allocError();
    *v38 = v30;
    v38[1] = v31;
    *v54 = v37;
    goto LABEL_9;
  }

  __swift_storeEnumTagSinglePayload(v6, 0, 1, v26);
  (*(v16 + 32))(v22, v6, v26);
  (*(v16 + 16))(v20, v22, v26);
  v27 = (*(v16 + 88))(v20, v26);
  if (v27 == *MEMORY[0x277D5BC38])
  {
    (*(v16 + 96))(v20, v26);
    v28 = *v20;
    sub_2675E9FD8();
    (*(v16 + 8))(v22, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4A8, &qword_2676D51C0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v27 == *MEMORY[0x277D5BC30])
  {
    (*(v16 + 8))(v22, v26);
    (*(v16 + 96))(v20, v26);
    *v54 = *v20;
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4A8, &qword_2676D51C0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v27 == *MEMORY[0x277D5BC40])
  {
    sub_2676C9CCC();
    sub_2676BA488(&qword_2801CD480, MEMORY[0x277D5BF90]);
    v40 = swift_allocError();
    sub_2676C9CBC();
LABEL_17:
    (*(v16 + 8))(v22, v26);
    *v54 = v40;
    goto LABEL_9;
  }

  if (v27 == *MEMORY[0x277D5BC28])
  {
    sub_2676B448C();
    v40 = swift_allocError();
    *v41 = 0;
    v41[1] = 0;
    goto LABEL_17;
  }

  v55 = 0;
  v56 = 0xE000000000000000;
  sub_2676CC3FC();

  v55 = 0xD00000000000002ELL;
  v56 = 0x80000002676D8130;
  sub_2676148C4(&qword_2801CDD20, &qword_2801CDD10, &unk_2676D51D8);
  v42 = sub_2676CC56C();
  MEMORY[0x26D5FDD00](v42);

  MEMORY[0x26D5FDD00](41, 0xE100000000000000);
  v43 = v55;
  v44 = v56;
  if (qword_2801CBAA0 != -1)
  {
    swift_once();
  }

  v45 = sub_2676CBE4C();
  __swift_project_value_buffer(v45, qword_2801CDC90);

  v46 = sub_2676CBE2C();
  v47 = sub_2676CC24C();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v55 = v49;
    *v48 = 136315138;
    *(v48 + 4) = sub_2676B0B84(v43, v44, &v55);
    _os_log_impl(&dword_2675D4000, v46, v47, "#UnsetRelationshipFlowFactory: %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x26D5FEA80](v49, -1, -1);
    MEMORY[0x26D5FEA80](v48, -1, -1);
  }

  sub_2676B448C();
  v50 = swift_allocError();
  *v51 = v43;
  v51[1] = v44;
  v52 = *(v16 + 8);
  v52(v22, v26);
  *v54 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD4A8, &qword_2676D51C0);
  swift_storeEnumTagMultiPayload();
  return (v52)(v20, v26);
}

unint64_t sub_2676B448C()
{
  result = qword_2801CDD18;
  if (!qword_2801CDD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CDD18);
  }

  return result;
}

uint64_t sub_2676B44E0()
{
  OUTLINED_FUNCTION_3_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2676C90FC();
  v1[5] = v4;
  OUTLINED_FUNCTION_1_0(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_2_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  v1[8] = OUTLINED_FUNCTION_2_0();
  v11 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v11);
  v13 = *(v12 + 64);
  v1[9] = OUTLINED_FUNCTION_2_0();
  v14 = sub_2676C99CC();
  v1[10] = v14;
  OUTLINED_FUNCTION_1_0(v14);
  v1[11] = v15;
  v17 = *(v16 + 64);
  v1[12] = OUTLINED_FUNCTION_19();
  v1[13] = swift_task_alloc();
  v18 = sub_2676C9DDC();
  v1[14] = v18;
  OUTLINED_FUNCTION_1_0(v18);
  v1[15] = v19;
  v21 = *(v20 + 64);
  v1[16] = OUTLINED_FUNCTION_2_0();
  v22 = sub_2676C9B3C();
  v1[17] = v22;
  OUTLINED_FUNCTION_1_0(v22);
  v1[18] = v23;
  v25 = *(v24 + 64);
  v1[19] = OUTLINED_FUNCTION_2_0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v26);
  v28 = *(v27 + 64);
  v1[20] = OUTLINED_FUNCTION_2_0();
  v29 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

uint64_t sub_2676B46F0()
{
  v1 = v0[20];
  v2 = v0[3];
  v3 = *(v0[4] + 48);
  sub_2675E9CDC();
  OUTLINED_FUNCTION_62_4();
  sub_2676CB3FC();
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_2676B47C0;
  v9 = v0[20];

  return sub_2675ECFA0();
}

uint64_t sub_2676B47C0()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_8_6();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *(v4 + 160);
  v7 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;
  *(v10 + 176) = v9;
  *(v10 + 184) = v0;

  sub_2675ED6C0(v6, &qword_2801CBFD0, &qword_2676CDEA0);
  if (v0)
  {
    v11 = sub_2676B4DE0;
  }

  else
  {
    v11 = sub_2676B48F0;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_2676B4BB4()
{
  OUTLINED_FUNCTION_9_3();
  v2 = v1[25];
  v3 = v1[24];
  v4 = v1[16];
  v5 = v1[15];
  v6 = v1[14];
  v7 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;

  v9 = *(v5 + 8);
  v10 = OUTLINED_FUNCTION_45();
  v11(v10);
  v12 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2676B4D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  v13 = *(v12 + 152);
  v14 = *(v12 + 160);
  v15 = *(v12 + 136);
  v16 = *(v12 + 144);
  v17 = *(v12 + 128);
  v19 = *(v12 + 96);
  v18 = *(v12 + 104);
  v21 = *(v12 + 64);
  v20 = *(v12 + 72);
  v34 = *(v12 + 56);

  v22 = *(v16 + 8);
  v23 = OUTLINED_FUNCTION_45();
  v24(v23);

  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_32_1();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, v34, a10, a11, a12);
}

uint64_t sub_2676B4DE0()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[16];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[7];

  OUTLINED_FUNCTION_15_0();

  return v10();
}

uint64_t sub_2676B4EA0(uint64_t a1)
{
  v2 = sub_2676C9CCC();
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD40, &unk_2676D5520);
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = var50 - v10;
  sub_2676BC3A4(a1, v12, v13, v14, v15, v16, v17, v18, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
  v19 = sub_2676C9D1C();
  LODWORD(a1) = __swift_getEnumTagSinglePayload(v11, 1, v19);
  sub_2675ED6C0(v11, &qword_2801CDD40, &unk_2676D5520);
  if (a1 != 1)
  {
    return sub_2676C9A8C();
  }

  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v20 = sub_2676CBE4C();
  OUTLINED_FUNCTION_24_2(v20, qword_2801CDC90);
  v21 = sub_2676CBE2C();
  sub_2676CC23C();
  OUTLINED_FUNCTION_37_10();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_17_3();
    *v23 = 0;
    _os_log_impl(&dword_2675D4000, v21, OS_LOG_TYPE_INFO, "UnsetRelationshipFlow.actionForPromptForNameInput: parse contained no person info, returning .ignore", v23, 2u);
    OUTLINED_FUNCTION_2_5();
  }

  return sub_2676C9A9C();
}

uint64_t sub_2676B527C()
{
  OUTLINED_FUNCTION_3_0();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_2676C9E6C();
  v0[4] = v3;
  OUTLINED_FUNCTION_1_0(v3);
  v0[5] = v4;
  v6 = *(v5 + 64);
  v0[6] = OUTLINED_FUNCTION_2_0();
  v7 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2676B55D8()
{
  OUTLINED_FUNCTION_3_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_2676C90FC();
  v1[10] = v4;
  OUTLINED_FUNCTION_1_0(v4);
  v1[11] = v5;
  v7 = *(v6 + 64);
  v1[12] = OUTLINED_FUNCTION_2_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  v1[13] = OUTLINED_FUNCTION_2_0();
  v11 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v11);
  v13 = *(v12 + 64);
  v1[14] = OUTLINED_FUNCTION_2_0();
  v14 = sub_2676C99CC();
  v1[15] = v14;
  OUTLINED_FUNCTION_1_0(v14);
  v1[16] = v15;
  v17 = *(v16 + 64);
  v1[17] = OUTLINED_FUNCTION_19();
  v1[18] = swift_task_alloc();
  v18 = sub_2676C9DDC();
  v1[19] = v18;
  OUTLINED_FUNCTION_1_0(v18);
  v1[20] = v19;
  v21 = *(v20 + 64);
  v1[21] = OUTLINED_FUNCTION_2_0();
  v22 = sub_2676C9B3C();
  v1[22] = v22;
  OUTLINED_FUNCTION_1_0(v22);
  v1[23] = v23;
  v25 = *(v24 + 64);
  v1[24] = OUTLINED_FUNCTION_2_0();
  v26 = sub_2676C916C();
  v1[25] = v26;
  OUTLINED_FUNCTION_4_1(v26);
  v28 = *(v27 + 64);
  v1[26] = OUTLINED_FUNCTION_2_0();
  v29 = sub_2676CAECC();
  v1[27] = v29;
  OUTLINED_FUNCTION_1_0(v29);
  v1[28] = v30;
  v32 = *(v31 + 64);
  v1[29] = OUTLINED_FUNCTION_2_0();
  v33 = sub_2676CB3FC();
  v1[30] = v33;
  OUTLINED_FUNCTION_1_0(v33);
  v1[31] = v34;
  v36 = *(v35 + 64);
  v1[32] = OUTLINED_FUNCTION_2_0();
  v37 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v37, v38, v39);
}

uint64_t sub_2676B5878()
{
  v1 = v0[8];
  v2 = *(v0[9] + 48);
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD28, &qword_2676D54D8);
  v3 = sub_2676C9CFC();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v0[31];
    v6 = v0[28];
    v27 = MEMORY[0x277D84F90];
    sub_2676C2B80(0, v4, 0);
    v7 = v27;
    v8 = *(v6 + 16);
    v6 += 16;
    v9 = *(v6 + 64);
    OUTLINED_FUNCTION_2_12();
    v11 = v3 + v10;
    v25 = *(v6 + 56);
    v26 = v12;
    v13 = (v6 - 8);
    do
    {
      v14 = v0[32];
      v15 = v0[29];
      v16 = v0[27];
      v26(v15, v11, v16);
      sub_2676CAD6C();
      OUTLINED_FUNCTION_62_4();
      (*v13)(v15, v16);
      v18 = *(v27 + 16);
      v17 = *(v27 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2676C2B80(v17 > 1, v18 + 1, 1);
      }

      v19 = v0[32];
      v20 = v0[30];
      *(v27 + 16) = v18 + 1;
      v21 = *(v5 + 80);
      OUTLINED_FUNCTION_2_12();
      (*(v5 + 32))(v27 + v22 + *(v5 + 72) * v18);
      v11 += v25;
      --v4;
    }

    while (v4);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v0[34] = v7;
  v23 = swift_task_alloc();
  v0[35] = v23;
  *v23 = v0;
  v23[1] = sub_2676B5A9C;

  return sub_2675EC81C(v7);
}

uint64_t sub_2676B5A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_9_3();
  v15 = v14;
  OUTLINED_FUNCTION_8_6();
  *v16 = v15;
  v18 = *(v17 + 280);
  v19 = *(v17 + 272);
  v20 = *v13;
  OUTLINED_FUNCTION_0_1();
  *v21 = v20;
  v15[36] = v22;
  v15[37] = v12;

  if (v12)
  {
    v23 = v15[32];
    v24 = v15[29];
    v25 = v15[26];
    v26 = v15[24];
    v27 = v15[21];
    v29 = v15[17];
    v28 = v15[18];
    v30 = v15[14];
    v45 = v15[13];
    v31 = v15[12];

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_32_1();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, v45, a10, a11, a12);
  }

  else
  {
    OUTLINED_FUNCTION_32_1();

    return MEMORY[0x2822009F8](v41, v42, v43);
  }
}

uint64_t sub_2676B60A0()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = v1;
  OUTLINED_FUNCTION_8_6();
  *v3 = v2;
  v5 = *(v4 + 312);
  v6 = *(v4 + 304);
  v7 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  v9 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2676B61A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_58_5();
  v17 = *(v16 + 256);
  v18 = *(v16 + 232);
  v19 = *(v16 + 208);
  v20 = *(v16 + 184);
  v21 = *(v16 + 192);
  v23 = *(v16 + 168);
  v22 = *(v16 + 176);
  v24 = *(v16 + 152);
  v25 = *(v16 + 160);
  v35 = *(v16 + 144);
  v36 = *(v16 + 136);
  v37 = *(v16 + 112);
  v38 = *(v16 + 104);
  v39 = *(v16 + 96);

  (*(v25 + 8))(v23, v24);
  sub_267692910(v19);
  (*(v20 + 8))(v21, v22);

  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_87_2();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, v38, v39, a14, a15, a16);
}

uint64_t sub_2676B62C0()
{
  OUTLINED_FUNCTION_3_0();
  v0[2] = v1;
  v2 = sub_2676CAECC();
  v0[3] = v2;
  OUTLINED_FUNCTION_1_0(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v0[5] = OUTLINED_FUNCTION_2_0();
  v6 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

size_t sub_2676B6364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  v13 = v12[2];
  if (v13 >> 62)
  {
    if (v13 < 0)
    {
      v38 = v12[2];
    }

    v14 = sub_2676CC4EC();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14)
  {
    v39 = MEMORY[0x277D84F90];
    result = sub_2676C2A30(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);
      return result;
    }

    v16 = 0;
    v17 = v12[4];
    v18 = v39;
    v19 = v12[2] + 32;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D5FE0E0](v16, v12[2]);
      }

      else
      {
        v20 = *(v19 + 8 * v16);
      }

      v21 = v12[5];
      sub_2675E9FD8();
      a9 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_2676C2A30(v22 > 1, v23 + 1, 1);
      }

      v24 = v12[5];
      v25 = v12[3];
      ++v16;
      *(v18 + 16) = v23 + 1;
      v26 = *(v17 + 80);
      OUTLINED_FUNCTION_2_12();
      (*(v17 + 32))(v18 + v27 + *(v17 + 72) * v23);
    }

    while (v14 != v16);
  }

  v28 = v12[5];

  v29 = v12[1];
  OUTLINED_FUNCTION_32_1();

  return v32(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

void sub_2676B64DC()
{
  OUTLINED_FUNCTION_21_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC150, &unk_2676D54F0);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_7();
  v80 = (v9 - v10);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v11);
  v87 = &v78 - v12;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v13);
  v88 = &v78 - v14;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v15);
  v17 = (&v78 - v16);
  v18 = sub_2676C9EBC();
  v19 = OUTLINED_FUNCTION_3(v18);
  v84 = v20;
  v85 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_2();
  v83 = v24 - v23;
  v25 = sub_2676C9E6C();
  v26 = OUTLINED_FUNCTION_3(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_2();
  v33 = v32 - v31;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v34 = sub_2676CBE4C();
  v35 = __swift_project_value_buffer(v34, qword_2801CDC90);
  v36 = *(v28 + 16);
  v86 = v2;
  v36(v33, v2, v25);
  v82 = v35;
  v37 = sub_2676CBE2C();
  sub_2676CC23C();
  OUTLINED_FUNCTION_31_6();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = OUTLINED_FUNCTION_5_3();
    v81 = v17;
    v40 = v39;
    v78 = OUTLINED_FUNCTION_41_1();
    v79 = v3;
    v89 = v78;
    *v40 = 136315138;
    OUTLINED_FUNCTION_0_31();
    sub_2676BA488(v41, v42);
    v43 = sub_2676CC56C();
    v45 = v44;
    (*(v28 + 8))(v33, v25);
    sub_2676B0B84(v43, v45, &v89);
    OUTLINED_FUNCTION_30_11();

    *(v40 + 4) = v43;
    _os_log_impl(&dword_2675D4000, v37, v0, "UnsetRelationshipFlowStrategy.actionForPromptForContactDisambiguationInput(_: %s)", v40, 0xCu);
    OUTLINED_FUNCTION_39_7();
    v3 = v79;
    OUTLINED_FUNCTION_2_5();
    v17 = v81;
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    (*(v28 + 8))(v33, v25);
  }

  v46 = v83;
  v47 = v86;
  sub_2676C9E5C();
  sub_26763862C();
  v49 = v48;
  (*(v84 + 8))(v46, v85);
  v51 = v87;
  v50 = v88;
  if (v49)
  {
    v52 = sub_2676CBE2C();
    v53 = sub_2676CC23C();
    if (os_log_type_enabled(v52, v53))
    {
      *OUTLINED_FUNCTION_17_3() = 0;
      OUTLINED_FUNCTION_4_18(&dword_2675D4000, v54, v55, "UnsetRelationshipFlow.actionForPromptForContactDisambiguationInput: received user cancellation, returning .cancel");
      OUTLINED_FUNCTION_2_5();
    }

    sub_2676C9A7C();
  }

  else
  {
    type metadata accessor for ContactPromptResponseHandler();
    inited = swift_initStackObject();
    *(inited + 16) = sub_2676BA698;
    *(inited + 24) = 0;
    sub_2675EAB34(v47, v17);
    v57 = *(v6 + 2);
    v57(v50, v17, v3);
    v58 = *(v6 + 11);
    v59 = OUTLINED_FUNCTION_47_5();
    v61 = v60(v59);
    if (v61 == *MEMORY[0x277D5BC88])
    {
      v62 = *(v6 + 1);
      v63 = OUTLINED_FUNCTION_47_5();
      v62(v63);
      sub_2676C9A8C();
      (v62)(v17, v3);
    }

    else
    {
      v64 = v6;
      if (v61 == *MEMORY[0x277D5BC80])
      {
        v65 = sub_2676CBE2C();
        v66 = sub_2676CC23C();
        if (os_log_type_enabled(v65, v66))
        {
          *OUTLINED_FUNCTION_17_3() = 0;
          OUTLINED_FUNCTION_4_18(&dword_2675D4000, v67, v68, "UnsetRelationshipFlow.actionForPromptForContactDisambiguationInput: input contained no actionable selection information, returning .ignore");
          OUTLINED_FUNCTION_2_5();
        }

        sub_2676C9A9C();
        (*(v64 + 1))(v17, v3);
      }

      else
      {
        v81 = v17;
        v57(v51, v17, v3);
        v69 = sub_2676CBE2C();
        sub_2676CC24C();
        OUTLINED_FUNCTION_37_10();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = OUTLINED_FUNCTION_5_3();
          v86 = OUTLINED_FUNCTION_41_1();
          v89 = v86;
          *v71 = 136315138;
          v57(v80, v51, v3);
          OUTLINED_FUNCTION_47_5();
          sub_2676CBFBC();
          v72 = OUTLINED_FUNCTION_25_15();
          v64(v72);
          v73 = OUTLINED_FUNCTION_8_10();
          v76 = sub_2676B0B84(v73, v74, v75);

          *(v71 + 4) = v76;
          _os_log_impl(&dword_2675D4000, v69, v17, "UnsetRelationshipFlow.actionForPromptForContactDisambiguationInput: Unknown Interpretable case: %s. Returning .ignore", v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v86);
          v50 = v88;
          OUTLINED_FUNCTION_2_5();
          OUTLINED_FUNCTION_2_5();
        }

        else
        {

          v77 = OUTLINED_FUNCTION_25_15();
          v64(v77);
        }

        sub_2676C9A9C();
        (v64)(v81, v51);
        (v64)(v50, v51);
      }
    }
  }

  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2676B6B54()
{
  OUTLINED_FUNCTION_3_0();
  v0[8] = v1;
  v0[9] = v2;
  v0[7] = v3;
  v4 = sub_2676CAECC();
  v0[10] = v4;
  OUTLINED_FUNCTION_1_0(v4);
  v0[11] = v5;
  v7 = *(v6 + 64);
  v0[12] = OUTLINED_FUNCTION_19();
  v0[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC590, &qword_2676CF308);
  OUTLINED_FUNCTION_4_1(v8);
  v10 = *(v9 + 64);
  v0[14] = OUTLINED_FUNCTION_19();
  v0[15] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC150, &unk_2676D54F0);
  v0[16] = v11;
  OUTLINED_FUNCTION_1_0(v11);
  v0[17] = v12;
  v14 = *(v13 + 64);
  v0[18] = OUTLINED_FUNCTION_2_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD28, &qword_2676D54D8);
  v0[19] = v15;
  OUTLINED_FUNCTION_1_0(v15);
  v0[20] = v16;
  v18 = *(v17 + 64);
  v0[21] = OUTLINED_FUNCTION_19();
  v0[22] = swift_task_alloc();
  v19 = sub_2676C9E6C();
  v0[23] = v19;
  OUTLINED_FUNCTION_1_0(v19);
  v0[24] = v20;
  v22 = *(v21 + 64);
  v0[25] = OUTLINED_FUNCTION_19();
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_2676B6D60()
{
  v142 = v0;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[22];
  v5 = v0[19];
  v6 = v0[20];
  v8 = v0[8];
  v7 = v0[9];
  v9 = sub_2676CBE4C();
  __swift_project_value_buffer(v9, qword_2801CDC90);
  v136 = *(v3 + 16);
  v136(v1, v8, v2);
  v10 = *(v6 + 16);
  v10(v4, v7, v5);
  v11 = sub_2676CBE2C();
  sub_2676CC23C();
  OUTLINED_FUNCTION_37_10();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[27];
  v16 = v0[23];
  v15 = v0[24];
  v17 = v0[22];
  if (v13)
  {
    v132 = v0[20];
    v130 = v0[21];
    v131 = v0[19];
    log = v11;
    v18 = swift_slowAlloc();
    v141[0] = swift_slowAlloc();
    *v18 = 136315394;
    OUTLINED_FUNCTION_0_31();
    sub_2676BA488(v19, v20);
    v129 = v4;
    v21 = sub_2676CC56C();
    v23 = v22;
    v24 = OUTLINED_FUNCTION_53_7();
    v25(v24);
    v26 = sub_2676B0B84(v21, v23, v141);

    *(v18 + 4) = v26;
    *(v18 + 12) = 2080;
    v10(v130, v17, v131);
    v27 = sub_2676CBFBC();
    v29 = v28;
    (*(v132 + 8))(v17, v131);
    v30 = sub_2676B0B84(v27, v29, v141);

    *(v18 + 14) = v30;
    _os_log_impl(&dword_2675D4000, log, v129, "UnsetRelationshipFlowStrategy.parseContactDisambiguationResult(input: %s, paginatedItems: %s)", v18, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_33_6();
  }

  else
  {
    v32 = v0[19];
    v31 = v0[20];

    (*(v31 + 8))(v17, v32);
    v33 = OUTLINED_FUNCTION_53_7();
    v34(v33);
  }

  v35 = v0[17];
  v36 = v0[18];
  v37 = v0[16];
  v38 = v0[8];
  type metadata accessor for ContactPromptResponseHandler();
  inited = swift_initStackObject();
  *(inited + 16) = sub_2676BA698;
  *(inited + 24) = 0;
  sub_2675EAB34(v38, v36);
  v40 = *(v35 + 88);
  v41 = OUTLINED_FUNCTION_55_4();
  if (v42(v41) == *MEMORY[0x277D5BC88])
  {
    v43 = v0[18];
    v45 = v0[14];
    v44 = v0[15];
    v46 = v0[9];
    v47 = v0[10];
    (*(v0[17] + 96))(v43, v0[16]);
    v48 = *v43;
    v49 = v43[1];
    LOBYTE(v43) = *(v43 + 16);
    sub_2676C9CFC();
    sub_2676B76B4();
    v50 = OUTLINED_FUNCTION_43_8();
    sub_2676788E4(v50, v51, v43);

    v52 = OUTLINED_FUNCTION_8_10();
    sub_2675ED65C(v52, v53, v54, v55);
    if (__swift_getEnumTagSinglePayload(v45, 1, v47) != 1)
    {
      loga = v0[27];
      v135 = v0[26];
      v137 = v0[25];
      v138 = v0[22];
      v139 = v0[21];
      v140 = v0[18];
      v96 = v0[14];
      v97 = v0[15];
      v98 = v0[12];
      v99 = v0[13];
      v101 = v0[10];
      v100 = v0[11];
      v102 = v0[7];
      v103 = *(v100 + 32);
      v104 = OUTLINED_FUNCTION_55_4();
      v105(v104);
      sub_2676BA524();
      v106 = *(v100 + 16);
      v107 = OUTLINED_FUNCTION_45();
      v108(v107);
      sub_2675E6A64();
      v110 = v109;
      v0[6] = v109;
      sub_2676C9C9C();

      (*(v100 + 8))(v99, v101);
      sub_2675ED6C0(v97, &qword_2801CC590, &qword_2676CF308);

      OUTLINED_FUNCTION_6_13();
      goto LABEL_18;
    }

    v56 = v0[26];
    v57 = v0[23];
    v58 = v0[8];
    sub_2675ED6C0(v0[14], &qword_2801CC590, &qword_2676CF308);
    v59 = OUTLINED_FUNCTION_35_7();
    (v136)(v59);
    v60 = sub_2676CBE2C();
    sub_2676CC24C();
    OUTLINED_FUNCTION_31_6();
    v62 = os_log_type_enabled(v60, v61);
    v63 = v0[26];
    v65 = v0[23];
    v64 = v0[24];
    if (v62)
    {
      OUTLINED_FUNCTION_5_3();
      v66 = OUTLINED_FUNCTION_16_17();
      v141[0] = v66;
      *v45 = 136315138;
      OUTLINED_FUNCTION_0_31();
      sub_2676BA488(v67, v68);
      OUTLINED_FUNCTION_63_5();
      OUTLINED_FUNCTION_54_8();
      v69 = OUTLINED_FUNCTION_8_26();
      v70(v69);
      v71 = OUTLINED_FUNCTION_43_8();
      sub_2676B0B84(v71, v72, v73);
      OUTLINED_FUNCTION_30_11();

      *(v45 + 4) = v63;
      OUTLINED_FUNCTION_8_16(&dword_2675D4000, v74, v75, "UnsetRelationshipFlow.parseContactDisambiguationResult called with input that could not be resolved as a selection. Cancelling flow as a result. Input: %s");
      __swift_destroy_boxed_opaque_existential_1(v66);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_33_6();
    }

    else
    {

      v115 = OUTLINED_FUNCTION_8_26();
      v116(v115);
    }

    v117 = v0[15];
    sub_2676C9CCC();
    sub_2676BA488(&qword_2801CD480, MEMORY[0x277D5BF90]);
    swift_allocError();
    sub_2676C9CBC();
    swift_willThrow();

    sub_2675ED6C0(v117, &qword_2801CC590, &qword_2676CF308);
  }

  else
  {
    v76 = v0[25];
    v77 = v0[23];
    v78 = v0[8];
    (*(v0[17] + 8))(v0[18], v0[16]);
    v79 = OUTLINED_FUNCTION_35_7();
    (v136)(v79);
    v80 = sub_2676CBE2C();
    sub_2676CC24C();
    OUTLINED_FUNCTION_31_6();
    v82 = os_log_type_enabled(v80, v81);
    v83 = v0[24];
    v84 = v0[25];
    v85 = v0[23];
    if (v82)
    {
      OUTLINED_FUNCTION_5_3();
      v86 = OUTLINED_FUNCTION_16_17();
      v141[0] = v86;
      *inited = 136315138;
      OUTLINED_FUNCTION_0_31();
      sub_2676BA488(v87, v88);
      OUTLINED_FUNCTION_63_5();
      OUTLINED_FUNCTION_54_8();
      v89 = OUTLINED_FUNCTION_8_26();
      v90(v89);
      v91 = OUTLINED_FUNCTION_43_8();
      sub_2676B0B84(v91, v92, v93);
      OUTLINED_FUNCTION_30_11();

      *(inited + 4) = v84;
      OUTLINED_FUNCTION_8_16(&dword_2675D4000, v94, v95, "UnsetRelationshipFlow.parseContactDisambiguationResult called with un-interpretable input. actionForPrompt function should ensure this never happens. Input: %s");
      __swift_destroy_boxed_opaque_existential_1(v86);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_2_5();
    }

    else
    {

      v112 = OUTLINED_FUNCTION_8_26();
      v113(v112);
    }

    sub_2676BA4D0();
    swift_allocError();
    *v114 = 0;
    swift_willThrow();
  }

  v119 = v0[26];
  v118 = v0[27];
  v120 = v0[25];
  v122 = v0[21];
  v121 = v0[22];
  v123 = v0[18];
  v125 = v0[14];
  v124 = v0[15];
  v126 = v0[12];
  v127 = v0[13];

  OUTLINED_FUNCTION_15_0();
LABEL_18:

  return v111();
}

uint64_t sub_2676B75CC()
{
  sub_2676CA56C();
  if (!v2[3])
  {
    sub_2675ED6C0(v2, &qword_2801CC158, &qword_2676CDDA0);
    return 0;
  }

  sub_2676CA63C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_2676CA33C();

  if (!v2[0])
  {

    return 0;
  }

  v0 = sub_2676CA4FC();

  return v0;
}

void sub_2676B76B4()
{
  OUTLINED_FUNCTION_21_1();
  v2 = v1;
  v92 = v4;
  v93 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_2676CAECC();
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_7();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v85 - v17;
  MEMORY[0x28223BE20](v16);
  v21 = v85 - v20;
  if (v2 == 4)
  {
    v49 = v93 - 1;
    if (v93 < 1)
    {
      v50 = *(v6 + 16);
      v49 = v50 + v93;
      if ((v50 + v93) < 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v50 = *(v6 + 16);
    }

    if (v49 < v50)
    {
      (*(v12 + 16))(v8, v6 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v49, v9);
LABEL_44:
      OUTLINED_FUNCTION_20_1();

      __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
      return;
    }

LABEL_39:
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v72 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v72, qword_2801CDC90);

    v73 = sub_2676CBE2C();
    v74 = sub_2676CC24C();

    if (os_log_type_enabled(v73, v74))
    {
      swift_slowAlloc();
      v75 = OUTLINED_FUNCTION_16_17();
      v96 = v75;
      *v0 = 134218242;
      *(v0 + 4) = v49;
      *(v0 + 12) = 2080;
      v76 = OUTLINED_FUNCTION_47_5();
      v77 = MEMORY[0x26D5FDDD0](v76);
      v79 = sub_2676B0B84(v77, v78, &v96);

      *(v0 + 14) = v79;
      _os_log_impl(&dword_2675D4000, v73, v74, "#ResolveRecipientsFlow.DisambiguationResponse: .itemIndex(%ld) outside of range of choices %s", v0, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v75);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_33_6();
    }

    goto LABEL_44;
  }

  v91 = v6;
  if (v2 == 1)
  {
    v85[1] = v8;
    v29 = 0;
    v30 = *(v6 + 16);
    v89 = v12 + 16;
    v90 = v30;
    v86 = (v12 + 32);
    v87 = v19;
    v88 = MEMORY[0x277D84F90];
    while (v90 != v29)
    {
      v31 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v32 = *(v12 + 72);
      (*(v12 + 16))(v18, v6 + v31 + v32 * v29, v9);
      v33 = v9;
      v96 = sub_2676CAD6C();
      v97 = v34;
      v94[0] = v93;
      v94[1] = v92;
      sub_2675E69E4();
      v35 = sub_2676CC37C();

      if (v35)
      {
        v36 = *v86;
        (*v86)(v87, v18, v9);
        v37 = v88;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v95 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2676C2A30(0, *(v37 + 16) + 1, 1);
          v37 = v95;
        }

        v39 = v37;
        v40 = *(v37 + 16);
        v41 = *(v39 + 24);
        v42 = v40 + 1;
        if (v40 >= v41 >> 1)
        {
          v85[0] = v36;
          v88 = v40 + 1;
          sub_2676C2A30(v41 > 1, v40 + 1, 1);
          v42 = v88;
          v36 = v85[0];
          v39 = v95;
        }

        ++v29;
        *(v39 + 16) = v42;
        v88 = v39;
        v43 = v39 + v31 + v40 * v32;
        v9 = v33;
        v36(v43, v87, v33);
        v6 = v91;
      }

      else
      {
        (*(v12 + 8))(v18, v9);
        ++v29;
        v6 = v91;
      }
    }

    v44 = v88;
    if (*(v88 + 16) > 1uLL)
    {
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v45 = sub_2676CBE4C();
      OUTLINED_FUNCTION_24_2(v45, qword_2801CDC90);
      v46 = sub_2676CBE2C();
      v47 = sub_2676CC24C();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = OUTLINED_FUNCTION_17_3();
        *v48 = 0;
        _os_log_impl(&dword_2675D4000, v46, v47, "#ResolveRecipientsFlow.DisambiguationResponse: display name matched multiple contacts. Using first.", v48, 2u);
        OUTLINED_FUNCTION_2_5();
      }

      v44 = v88;
    }

    sub_267699004(v44);
  }

  else
  {
    if (v2)
    {
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v51 = sub_2676CBE4C();
      OUTLINED_FUNCTION_24_2(v51, qword_2801CDC90);
      v53 = v92;
      v52 = v93;
      v54 = OUTLINED_FUNCTION_8_10();
      sub_2676788B8(v54, v55, v2);
      v56 = sub_2676CBE2C();
      v57 = sub_2676CC24C();
      v58 = OUTLINED_FUNCTION_8_10();
      sub_2676788E4(v58, v59, v2);
      if (os_log_type_enabled(v56, v57))
      {
        v60 = OUTLINED_FUNCTION_5_3();
        v61 = v9;
        v62 = OUTLINED_FUNCTION_41_1();
        v94[0] = v62;
        *v60 = 136315138;
        v96 = v52;
        v97 = v53;
        v98 = v2;
        v63 = OUTLINED_FUNCTION_8_10();
        sub_2676788B8(v63, v64, v2);
        v65 = sub_2676CBFBC();
        v67 = sub_2676B0B84(v65, v66, v94);

        *(v60 + 4) = v67;
        _os_log_impl(&dword_2675D4000, v56, v57, "#ResolveRecipientsFlow.DisambiguationResponse: Unable to resolve contact from value %s", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v62);
        v9 = v61;
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_2_5();
      }
    }

    else
    {
      v22 = 0;
      v23 = *(v6 + 16);
      while (v23 != v22)
      {
        v24 = *(v12 + 80);
        OUTLINED_FUNCTION_2_12();
        (*(v12 + 16))(v21, v91 + v25 + *(v12 + 72) * v22, v9);
        if (sub_2676CADFC() == v93 && v26 == v92)
        {

LABEL_48:
          (*(v12 + 32))(v8, v21, v9);
          OUTLINED_FUNCTION_17_2();
          v71 = v9;
          goto LABEL_49;
        }

        v28 = sub_2676CC59C();

        if (v28)
        {
          goto LABEL_48;
        }

        (*(v12 + 8))(v21, v9);
        ++v22;
      }
    }

    OUTLINED_FUNCTION_5_2();
    v71 = v9;
LABEL_49:
    __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
  }

  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2676B7DC8()
{
  OUTLINED_FUNCTION_3_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_2676C90FC();
  v1[6] = v5;
  OUTLINED_FUNCTION_1_0(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = OUTLINED_FUNCTION_2_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64);
  v1[9] = OUTLINED_FUNCTION_2_0();
  v12 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v12);
  v14 = *(v13 + 64);
  v1[10] = OUTLINED_FUNCTION_2_0();
  v15 = sub_2676C99CC();
  v1[11] = v15;
  OUTLINED_FUNCTION_1_0(v15);
  v1[12] = v16;
  v18 = *(v17 + 64);
  v1[13] = OUTLINED_FUNCTION_19();
  v1[14] = swift_task_alloc();
  v19 = sub_2676C9DDC();
  v1[15] = v19;
  OUTLINED_FUNCTION_1_0(v19);
  v1[16] = v20;
  v22 = *(v21 + 64);
  v1[17] = OUTLINED_FUNCTION_2_0();
  v23 = sub_2676C9B3C();
  v1[18] = v23;
  OUTLINED_FUNCTION_1_0(v23);
  v1[19] = v24;
  v26 = *(v25 + 64);
  v1[20] = OUTLINED_FUNCTION_2_0();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v27);
  v29 = *(v28 + 64);
  v1[21] = OUTLINED_FUNCTION_19();
  v1[22] = swift_task_alloc();
  v30 = sub_2676CAECC();
  v1[23] = v30;
  OUTLINED_FUNCTION_1_0(v30);
  v1[24] = v31;
  v33 = *(v32 + 64);
  v1[25] = OUTLINED_FUNCTION_2_0();
  v34 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v34, v35, v36);
}

uint64_t sub_2676B8030()
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 168);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 24);
  sub_2675E9FD8();
  sub_2676CAD6C();
  (*(v2 + 8))(v1, v3);
  v9 = *(v7 + 48);
  sub_2675E9CDC();
  OUTLINED_FUNCTION_62_4();
  v10 = sub_2676CB3FC();
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  OUTLINED_FUNCTION_62_4();
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v10);
  v17 = swift_task_alloc();
  *(v0 + 208) = v17;
  *v17 = v0;
  v17[1] = sub_2676B8160;
  v18 = *(v0 + 168);
  v19 = *(v0 + 176);
  OUTLINED_FUNCTION_32_1();

  return sub_2675EC3A0();
}

uint64_t sub_2676B8160()
{
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_8_6();
  *v3 = v2;
  v5 = v4[26];
  v6 = v4[22];
  v7 = v4[21];
  v8 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v9 = v8;
  *(v11 + 216) = v10;
  *(v11 + 224) = v0;

  v12 = OUTLINED_FUNCTION_55_4();
  sub_2675ED6C0(v12, v13, &qword_2676CDEA0);
  sub_2675ED6C0(v6, &qword_2801CBFD0, &qword_2676CDEA0);
  if (v0)
  {
    v14 = sub_2676B87EC;
  }

  else
  {
    v14 = sub_2676B82CC;
  }

  return MEMORY[0x2822009F8](v14, 0, 0);
}

uint64_t sub_2676B858C()
{
  OUTLINED_FUNCTION_9_3();
  v2 = v1[30];
  v3 = v1[29];
  v4 = v1[17];
  v5 = v1[16];
  v6 = v1[15];
  v7 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;

  v9 = *(v5 + 8);
  v10 = OUTLINED_FUNCTION_45();
  v11(v10);
  v12 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2676B86E8()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v7 = *(v0 + 136);
  v6 = *(v0 + 144);
  v9 = *(v0 + 104);
  v8 = *(v0 + 112);
  v15 = *(v0 + 80);
  v16 = *(v0 + 72);
  v17 = *(v0 + 64);

  v10 = *(v5 + 8);
  v11 = OUTLINED_FUNCTION_8_10();
  v12(v11);

  OUTLINED_FUNCTION_6_13();

  return v13();
}

uint64_t sub_2676B87EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  v26 = v12[28];
  v13 = v12[25];
  v15 = v12[21];
  v14 = v12[22];
  OUTLINED_FUNCTION_49_4();
  v16 = v12[8];

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_32_1();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, v26, a10, a11, a12);
}

void sub_2676B88AC()
{
  OUTLINED_FUNCTION_21_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCD8, &unk_2676D0C70);
  v6 = OUTLINED_FUNCTION_4_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v48 - v9;
  v11 = sub_2676C9EBC();
  v12 = OUTLINED_FUNCTION_3(v11);
  v53 = v13;
  v54 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_7();
  v51 = (v16 - v17);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v18);
  v52 = &v48 - v19;
  v20 = sub_2676C9E6C();
  v21 = OUTLINED_FUNCTION_3(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_2();
  v28 = v27 - v26;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v29 = sub_2676CBE4C();
  OUTLINED_FUNCTION_24_2(v29, qword_2801CDC90);
  (*(v23 + 16))(v28, v2, v20);
  v30 = sub_2676CBE2C();
  sub_2676CC23C();
  OUTLINED_FUNCTION_37_10();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_5_3();
    v49 = OUTLINED_FUNCTION_41_1();
    v50 = v4;
    v55 = v49;
    *v32 = 136315138;
    OUTLINED_FUNCTION_0_31();
    sub_2676BA488(v33, v34);
    v35 = sub_2676CC56C();
    v36 = v10;
    v38 = v37;
    (*(v23 + 8))(v28, v20);
    v39 = sub_2676B0B84(v35, v38, &v55);
    v10 = v36;

    *(v32 + 4) = v39;
    _os_log_impl(&dword_2675D4000, v30, v0, "UnsetRelationshipFlowStrategy.actionForPromptToSaveRelationship(input: %s)", v32, 0xCu);
    OUTLINED_FUNCTION_39_7();
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    (*(v23 + 8))(v28, v20);
  }

  v40 = v52;
  sub_2676C9E5C();
  sub_26763862C();
  v42 = v41;
  v43 = *(v53 + 8);
  v44 = v40;
  v45 = v54;
  v43(v44, v54);
  if (v42)
  {
    sub_2676C9A7C();
  }

  else
  {
    v46 = v51;
    sub_2676C9E5C();
    sub_267637F04();
    v43(v46, v45);
    v47 = sub_2676C9C5C();
    LODWORD(v46) = __swift_getEnumTagSinglePayload(v10, 1, v47);
    sub_2675ED6C0(v10, &qword_2801CCCD8, &unk_2676D0C70);
    if (v46 == 1)
    {
      sub_2676C9A9C();
    }

    else
    {
      sub_2676C9A8C();
    }
  }

  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2676B8C54()
{
  OUTLINED_FUNCTION_3_0();
  v0[2] = v1;
  v0[3] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCD8, &unk_2676D0C70);
  OUTLINED_FUNCTION_4_1(v3);
  v5 = *(v4 + 64);
  v0[4] = OUTLINED_FUNCTION_2_0();
  v6 = sub_2676C9EBC();
  v0[5] = v6;
  OUTLINED_FUNCTION_1_0(v6);
  v0[6] = v7;
  v9 = *(v8 + 64);
  v0[7] = OUTLINED_FUNCTION_2_0();
  v10 = sub_2676C9E6C();
  v0[8] = v10;
  OUTLINED_FUNCTION_1_0(v10);
  v0[9] = v11;
  v13 = *(v12 + 64);
  v0[10] = OUTLINED_FUNCTION_19();
  v0[11] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2676B8D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(void, void, void), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_58_5();
  a23 = v26;
  a24 = v27;
  a22 = v24;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v28 = v24[11];
  v29 = v24[8];
  v30 = v24[9];
  v31 = v24[3];
  v32 = sub_2676CBE4C();
  __swift_project_value_buffer(v32, qword_2801CDC90);
  v34 = *(v30 + 16);
  v33 = v30 + 16;
  v35 = OUTLINED_FUNCTION_35_7();
  v103 = v36;
  (v36)(v35);
  v37 = sub_2676CBE2C();
  sub_2676CC23C();
  OUTLINED_FUNCTION_31_6();
  v39 = os_log_type_enabled(v37, v38);
  v40 = v24[11];
  v41 = &off_2676CD000;
  v43 = v24[8];
  v42 = v24[9];
  if (v39)
  {
    OUTLINED_FUNCTION_5_3();
    a9 = OUTLINED_FUNCTION_16_17();
    a10 = v33;
    a13 = a9;
    *v25 = 136315138;
    OUTLINED_FUNCTION_0_31();
    sub_2676BA488(v44, v45);
    v46 = OUTLINED_FUNCTION_63_5();
    v48 = v47;
    v49 = *(v42 + 8);
    v50 = OUTLINED_FUNCTION_18_13();
    v102 = v51;
    v51(v50);
    v52 = v46;
    v41 = &off_2676CD000;
    sub_2676B0B84(v52, v48, &a13);
    OUTLINED_FUNCTION_30_11();

    *(v25 + 4) = v40;
    OUTLINED_FUNCTION_8_16(&dword_2675D4000, v53, v54, "UnsetRelationshipFlowStrategy.parsePromptToSaveRelationshipResponse(input: %s)");
    OUTLINED_FUNCTION_39_7();
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_33_6();
  }

  else
  {

    v55 = *(v42 + 8);
    v56 = OUTLINED_FUNCTION_18_13();
    v102 = v57;
    v57(v56);
  }

  v58 = v24[6];
  v59 = v24[7];
  v61 = v24[4];
  v60 = v24[5];
  v62 = v24[3];
  sub_2676C9E5C();
  sub_267637F04();
  v63 = *(v58 + 8);
  v64 = OUTLINED_FUNCTION_55_4();
  v65(v64);
  v66 = sub_2676C9C5C();
  if (__swift_getEnumTagSinglePayload(v61, 1, v66) == 1)
  {
    v67 = v24[10];
    v68 = v24[8];
    v69 = v24[3];
    sub_2675ED6C0(v24[4], &qword_2801CCCD8, &unk_2676D0C70);
    v103(v67, v69, v68);
    v70 = sub_2676CBE2C();
    sub_2676CC23C();
    OUTLINED_FUNCTION_31_6();
    v72 = os_log_type_enabled(v70, v71);
    v74 = v24[9];
    v73 = v24[10];
    v75 = v24[8];
    if (v72)
    {
      OUTLINED_FUNCTION_5_3();
      v103 = OUTLINED_FUNCTION_16_17();
      a13 = v103;
      *v69 = *(v41 + 420);
      OUTLINED_FUNCTION_0_31();
      sub_2676BA488(v76, v77);
      OUTLINED_FUNCTION_63_5();
      OUTLINED_FUNCTION_54_8();
      v78 = OUTLINED_FUNCTION_18_13();
      v102(v78);
      v79 = OUTLINED_FUNCTION_43_8();
      sub_2676B0B84(v79, v80, v81);
      OUTLINED_FUNCTION_30_11();

      *(v69 + 4) = v73;
      _os_log_impl(&dword_2675D4000, v70, v68, "UnsetRelationshipFlowStrategy.parsePromptToSaveRelationshipResponse: input does not contain confirmationResponse: %s", v69, 0xCu);
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_33_6();
    }

    else
    {

      v85 = OUTLINED_FUNCTION_18_13();
      v102(v85);
    }

    v86 = v24[2];
    v87 = *MEMORY[0x277D5BED0];
    OUTLINED_FUNCTION_14_2(v66);
    (*(v88 + 104))();
  }

  else
  {
    v82 = v24[4];
    v83 = v24[2];
    OUTLINED_FUNCTION_14_2(v66);
    (*(v84 + 32))();
  }

  v90 = v24[10];
  v89 = v24[11];
  v91 = v24[7];
  v92 = v24[4];

  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_87_2();

  return v94(v93, v94, v95, v96, v97, v98, v99, v100, a9, a10, v102, v103, a13, a14, a15, a16);
}

uint64_t sub_2676B914C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = OUTLINED_FUNCTION_13_5();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2676B9174()
{
  v1 = *(v0 + 16);
  v2 = sub_2676CA03C();
  v3 = MEMORY[0x277D5C1D8];
  v1[3] = v2;
  v1[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_2676CA01C();
  OUTLINED_FUNCTION_6_13();

  return v4();
}

uint64_t sub_2676B9244(char a1)
{
  sub_2676CC64C();
  MEMORY[0x26D5FE320](a1 & 1);
  return sub_2676CC67C();
}

uint64_t sub_2676B92C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26761F624;

  return sub_2676B527C();
}

uint64_t sub_2676B9360()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26761F624;

  return sub_2676B44E0();
}

uint64_t sub_2676B9408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B550] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26761F624;

  return MEMORY[0x2821B9EB8](a1, a2, a3, a4);
}

uint64_t sub_2676B94CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B558] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26761F624;

  return MEMORY[0x2821B9EC0](a1, a2, a3, a4);
}

uint64_t sub_2676B9590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B540] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26761F624;

  return MEMORY[0x2821B9EA8](a1, a2, a3, a4);
}

uint64_t sub_2676B9684()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2676B9718;

  return sub_2676B62C0();
}

uint64_t sub_2676B9718()
{
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_3();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_2676B9808()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26761F624;

  return sub_2676B6B54();
}

uint64_t sub_2676B98B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26761F624;

  return sub_2676B55D8();
}

uint64_t sub_2676B9960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B560] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26761F624;

  return MEMORY[0x2821B9EC8](a1, a2, a3, a4);
}

uint64_t sub_2676B9A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B568] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26761F624;

  return MEMORY[0x2821B9ED0](a1, a2, a3, a4);
}

uint64_t sub_2676B9B00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26761F624;

  return sub_2676B8C54();
}

uint64_t sub_2676B9BA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267605CFC;

  return sub_2676B7DC8();
}

uint64_t sub_2676B9C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B510] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26761F624;

  return MEMORY[0x2821B9E78](a1, a2, a3, a4, a5);
}

uint64_t sub_2676B9D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B518] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26761F624;

  return MEMORY[0x2821B9E80](a1, a2, a3, a4, a5);
}

uint64_t sub_2676B9DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B528] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26761F624;

  return MEMORY[0x2821B9E90](a1, a2, a3, a4, a5);
}

uint64_t sub_2676B9EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B520] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26761F624;

  return MEMORY[0x2821B9E88](a1, a2, a3, a4, a5);
}

uint64_t sub_2676B9F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B538] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26761F624;

  return MEMORY[0x2821B9EA0](a1, a2, a3, a4);
}

uint64_t sub_2676BA044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B548] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26761F624;

  return MEMORY[0x2821B9EB0](a1, a2, a3, a4);
}

uint64_t sub_2676BA108(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26761F624;

  return sub_2676B914C(a1);
}

uint64_t sub_2676BA1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B530] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26761F624;

  return MEMORY[0x2821B9E98](a1, a2, a3, a4);
}

uint64_t sub_2676BA264(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2676BA2B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2676BA308(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2676BA334(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2676BA374(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2676BA3E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2676BA420(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2676BA488(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2676BA4D0()
{
  result = qword_2801CDD30;
  if (!qword_2801CDD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CDD30);
  }

  return result;
}

unint64_t sub_2676BA524()
{
  result = qword_2801CDD38;
  if (!qword_2801CDD38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2801CDD38);
  }

  return result;
}

_BYTE *sub_2676BA568(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2676BA644()
{
  result = qword_2801CDD48;
  if (!qword_2801CDD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CDD48);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_17()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_46_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, v3);

  return sub_2676C9D8C();
}

void OUTLINED_FUNCTION_49_4()
{
  v1 = v0[20];
  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[9];
  v5 = v0[10];
}

uint64_t OUTLINED_FUNCTION_62_4()
{

  return sub_2676CB3DC();
}

uint64_t OUTLINED_FUNCTION_63_5()
{

  return sub_2676CC56C();
}

uint64_t sub_2676BA8EC@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v48 = a2;
  v2 = sub_2676CA1EC();
  v45 = *(v2 - 8);
  v46 = v2;
  v3 = *(v45 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v43 = &v40 - v7;
  MEMORY[0x28223BE20](v6);
  v42 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD58, &qword_2676D55E8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3F0, &qword_2676CEC18);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v40 - v16;
  v18 = sub_2676CA07C();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v40 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v40 - v27;
  sub_2676CA78C();
  (*(v10 + 16))(v13, v47, v9);
  sub_2676CB90C();
  sub_2676CA76C();
  sub_2676CA30C();

  __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
  v29 = v19[4];
  v41 = v28;
  v29(v28, v17, v18);
  v30 = v19[2];
  v30(v26, v28, v18);
  v31 = v42;
  sub_2676CA1DC();
  v30(v23, v26, v18);
  sub_2676CA1CC();
  v47 = v19[1];
  v47(v26, v18);
  v33 = v45;
  v32 = v46;
  v34 = *(v45 + 16);
  v35 = v43;
  v34(v43, v31, v46);
  v36 = v48;
  sub_2676CA26C();
  v34(v44, v35, v32);
  sub_2676CA25C();
  v37 = *(v33 + 8);
  v37(v35, v32);
  v37(v31, v32);
  v47(v41, v18);
  v38 = sub_2676CA27C();
  return __swift_storeEnumTagSinglePayload(v36, 0, 1, v38);
}

uint64_t sub_2676BAD84@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v83 = a1;
  v84 = a2;
  v2 = sub_2676CA10C();
  v77 = *(v2 - 8);
  v78 = v2;
  v3 = *(v77 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v76 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v75 = &v67 - v7;
  MEMORY[0x28223BE20](v6);
  v74 = &v67 - v8;
  v82 = sub_2676CA19C();
  v73 = *(v82 - 8);
  v9 = *(v73 + 64);
  v10 = MEMORY[0x28223BE20](v82);
  v72 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v71 = &v67 - v13;
  MEMORY[0x28223BE20](v12);
  v81 = &v67 - v14;
  v80 = sub_2676CA2DC();
  v86 = *(v80 - 8);
  v15 = *(v86 + 64);
  v16 = MEMORY[0x28223BE20](v80);
  v70 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v67 - v19;
  MEMORY[0x28223BE20](v18);
  v79 = &v67 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD58, &qword_2676D55E8);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v67 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3F0, &qword_2676CEC18);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v67 - v29;
  v31 = sub_2676CA07C();
  v85 = *(v31 - 8);
  v32 = *(v85 + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v67 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v67 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v67 - v39;
  sub_2676CA78C();
  (*(v23 + 16))(v26, v83, v22);
  sub_2676CB90C();
  sub_2676CA76C();
  sub_2676CA30C();

  __swift_storeEnumTagSinglePayload(v30, 0, 1, v31);
  v41 = v85;
  v42 = *(v85 + 32);
  v69 = v40;
  v42(v40, v30, v31);
  v43 = *(v41 + 16);
  v68 = v31;
  v43(v38, v40, v31);
  v44 = v79;
  sub_2676CA2CC();
  v43(v35, v38, v31);
  sub_2676CA2BC();
  v45 = *(v41 + 8);
  v85 = v41 + 8;
  v83 = v45;
  v45(v38, v31);
  v46 = v86;
  v47 = *(v86 + 16);
  v48 = v44;
  v49 = v80;
  v47(v20, v48, v80);
  v50 = v81;
  sub_2676CA18C();
  v47(v70, v20, v49);
  sub_2676CA17C();
  v51 = *(v46 + 8);
  v86 = v46 + 8;
  v70 = v51;
  (v51)(v20, v49);
  v52 = v73;
  v53 = *(v73 + 16);
  v54 = v71;
  v55 = v50;
  v56 = v82;
  v53(v71, v55, v82);
  v57 = v74;
  sub_2676CA0FC();
  v53(v72, v54, v56);
  sub_2676CA0EC();
  v58 = *(v52 + 8);
  v58(v54, v56);
  v60 = v77;
  v59 = v78;
  v61 = *(v77 + 16);
  v62 = v75;
  v61(v75, v57, v78);
  v63 = v84;
  sub_2676CA26C();
  v61(v76, v62, v59);
  sub_2676CA24C();
  v64 = *(v60 + 8);
  v64(v62, v59);
  v64(v57, v59);
  v58(v81, v82);
  (v70)(v79, v80);
  v83(v69, v68);
  v65 = sub_2676CA27C();
  return __swift_storeEnumTagSinglePayload(v63, 0, 1, v65);
}

void sub_2676BB4C8()
{
  OUTLINED_FUNCTION_29_13();
  v295 = v0;
  v312 = v2;
  v313 = v3;
  v294 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD50, &qword_2676D55E0);
  OUTLINED_FUNCTION_4_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9_1();
  v314 = v9;
  OUTLINED_FUNCTION_7_3();
  v315 = sub_2676CA27C();
  v10 = OUTLINED_FUNCTION_3(v315);
  v293 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_11_5(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC030, &qword_2676CDAA0);
  OUTLINED_FUNCTION_4_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_1();
  v331 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC040, &qword_2676CDAA8);
  OUTLINED_FUNCTION_4_1(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_9_1();
  v328 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC048, &qword_2676CDAB0);
  OUTLINED_FUNCTION_4_1(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC050, &unk_2676D0C20);
  OUTLINED_FUNCTION_4_1(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC058, &unk_2676D0C50);
  OUTLINED_FUNCTION_4_1(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC060, &qword_2676CDAB8);
  OUTLINED_FUNCTION_4_1(v40);
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_22_9(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  OUTLINED_FUNCTION_4_1(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_9_1();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A0, &qword_2676CDAE0);
  v50 = OUTLINED_FUNCTION_4_1(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_4();
  v325 = v53;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_24_1();
  v332 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC070, &qword_2676CDAC0);
  OUTLINED_FUNCTION_4_1(v56);
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_9_1();
  v330 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC078, &unk_2676D3680);
  v62 = OUTLINED_FUNCTION_4_1(v61);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_4();
  v326 = v65;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_24_1();
  v327 = v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC080, &unk_2676D3580);
  v69 = OUTLINED_FUNCTION_4_1(v68);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_4();
  v324 = v72;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_20_14();
  v305 = v1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC088, &qword_2676CDAC8);
  v75 = OUTLINED_FUNCTION_4_1(v74);
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_4();
  v323 = v78;
  OUTLINED_FUNCTION_12_0();
  v80 = MEMORY[0x28223BE20](v79);
  v297 = &v291 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v304 = &v291 - v83;
  MEMORY[0x28223BE20](v82);
  v306 = &v291 - v84;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC090, &qword_2676CDAD0);
  v86 = OUTLINED_FUNCTION_4_1(v85);
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_1_7();
  v298 = v89 - v90;
  MEMORY[0x28223BE20](v91);
  v307 = &v291 - v92;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC098, &qword_2676CDAD8);
  v94 = OUTLINED_FUNCTION_4_1(v93);
  v96 = *(v95 + 64);
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_1_7();
  v99 = v97 - v98;
  MEMORY[0x28223BE20](v100);
  v309 = &v291 - v101;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC038, &qword_2676D5A40);
  v103 = OUTLINED_FUNCTION_4_1(v102);
  v105 = *(v104 + 64);
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_4();
  v322 = v106;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_10_4();
  v329 = v108;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v110);
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD58, &qword_2676D55E8);
  OUTLINED_FUNCTION_3(v311);
  v310 = v111;
  v113 = *(v112 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v115);
  v116 = sub_2676CB87C();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v117, v118, v119, v116);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0B0, &qword_2676CDAE8);
  v121 = OUTLINED_FUNCTION_3_28();
  __swift_storeEnumTagSinglePayload(v121, v122, v123, v120);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0B8, &qword_2676CDAF0);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v125, v126, v127, v124);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C0, &qword_2676CDAF8);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v129, v130, v131, v128);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v132, v133, v134, v124);
  v135 = *MEMORY[0x277D5C6E0];
  OUTLINED_FUNCTION_14_2(v116);
  v137 = *(v136 + 104);
  v299 = v99;
  v137(v99);
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v138, v139, v140, v116);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v141, v142, v143, v120);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v144, v145, v146, v124);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v147, v148, v149, v128);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v150, v151, v152, v124);
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C8, &qword_2676CDB00);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v153, v154, v155, v156);
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D0, &qword_2676CDB08);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v157, v158, v159, v160);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A8, &qword_2676D5AB0);
  OUTLINED_FUNCTION_5_2();
  v300 = v161;
  __swift_storeEnumTagSinglePayload(v162, v163, v164, v161);
  v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v165, v166, v167, v168);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v169, v170, v171, v161);
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v172, v173, v174, v175);
  v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v176, v177, v178, v179);
  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v180, v181, v182, v183);
  v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v184, v185, v186, v187);
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v188, v189, v190, v191);
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v193, v194, v195, v192);
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
  v196 = OUTLINED_FUNCTION_3_28();
  __swift_storeEnumTagSinglePayload(v196, v197, v198, v199);
  OUTLINED_FUNCTION_19_10();
  sub_2676CA7FC();
  OUTLINED_FUNCTION_17_2();
  v296 = v192;
  __swift_storeEnumTagSinglePayload(v200, v201, v202, v192);
  v203 = OUTLINED_FUNCTION_3_28();
  __swift_storeEnumTagSinglePayload(v203, v204, v205, v192);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v206, v207, v208, v321);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v209, v210, v211, v320);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v212, v213, v214, v319);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v215, v216, v217, v318);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v218, v219, v220, v317);
  OUTLINED_FUNCTION_5_2();
  v221 = v301;
  __swift_storeEnumTagSinglePayload(v222, v223, v224, v301);
  v225 = OUTLINED_FUNCTION_3_28();
  __swift_storeEnumTagSinglePayload(v225, v226, v227, v316);

  sub_2676CA7CC();
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v228, v229, v230, v221);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v231, v232, v233, v303);
  OUTLINED_FUNCTION_5_2();
  v234 = v300;
  __swift_storeEnumTagSinglePayload(v235, v236, v237, v300);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v238, v239, v240, v302);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v241, v242, v243, v234);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v244, v245, v246, v321);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v247, v248, v249, v320);
  v250 = OUTLINED_FUNCTION_3_28();
  v251 = v314;
  __swift_storeEnumTagSinglePayload(v250, v252, v253, v319);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v254, v255, v256, v318);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v257, v258, v259, v317);
  OUTLINED_FUNCTION_5_2();
  v260 = v296;
  __swift_storeEnumTagSinglePayload(v261, v262, v263, v296);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v264, v265, v266, v316);
  v267 = v308;
  OUTLINED_FUNCTION_19_10();
  sub_2676CA7FC();
  OUTLINED_FUNCTION_17_2();
  v268 = v260;
  v269 = v315;
  __swift_storeEnumTagSinglePayload(v270, v271, v272, v268);
  sub_2676CA39C();
  v273 = v267;
  sub_2676BA8EC(v267, v251);
  OUTLINED_FUNCTION_21_3(v251, 1, v269);
  if (v274)
  {
    v275 = v310;
    v276 = v311;
    sub_2675ED6C0(v251, &qword_2801CDD50, &qword_2676D55E0);
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v277 = sub_2676CBE4C();
    __swift_project_value_buffer(v277, qword_2801CDC90);
    v278 = sub_2676CBE2C();
    v279 = sub_2676CC24C();
    if (os_log_type_enabled(v278, v279))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_27_11(&dword_2675D4000, v280, v281, "Error generating NLUSystemPrompted SDA");
      OUTLINED_FUNCTION_30_6();
    }

    sub_2676BA4D0();
    v282 = swift_allocError();
    OUTLINED_FUNCTION_26_11(v282, v283);
    (*(v275 + 8))(v267, v276);
  }

  else
  {
    v284 = v293;
    v285 = v292;
    (*(v293 + 32))(v292, v251, v269);
    sub_2676C9B2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCAD8, &qword_2676D0380);
    v286 = *(v284 + 72);
    v287 = *(v284 + 80);
    v288 = OUTLINED_FUNCTION_16_18();
    v289 = OUTLINED_FUNCTION_17_20(v288, xmmword_2676CDE20);
    v290(v289);
    sub_2676C9B1C();
    (*(v284 + 8))(v285, v269);
    (*(v310 + 8))(v273, v311);
  }

  OUTLINED_FUNCTION_28_10();
}

void sub_2676BC3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29_13();
  a19 = v22;
  a20 = v23;
  v140 = v24;
  v141 = v20;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD40, &unk_2676D5520);
  OUTLINED_FUNCTION_4_1(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_9_1();
  v130 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD60, &qword_2676D5620);
  OUTLINED_FUNCTION_4_1(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_22_9(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC038, &qword_2676D5A40);
  OUTLINED_FUNCTION_4_1(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_9_1();
  v136 = v39;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
  v40 = OUTLINED_FUNCTION_3(v137);
  v132 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_4();
  v131 = v44;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_10_4();
  v133 = v46;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_24_1();
  v134 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC640, &unk_2676CF550);
  OUTLINED_FUNCTION_4_1(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v52);
  v54 = &v129 - v53;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC648, &qword_2676CF990);
  v55 = OUTLINED_FUNCTION_3(v142);
  v139 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_1_7();
  v61 = v59 - v60;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_24_1();
  v138 = v63;
  OUTLINED_FUNCTION_7_3();
  v64 = sub_2676C9EBC();
  v65 = OUTLINED_FUNCTION_3(v64);
  v67 = v66;
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_1_7();
  v72 = v70 - v71;
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_20_14();
  sub_2676C9E5C();
  sub_26763862C();
  v75 = v74;
  v76 = *(v67 + 8);
  v76(v21, v64);
  if ((v75 & 1) == 0)
  {
    sub_2676C9E5C();
    sub_2676371E0();
    if (v77)
    {
      v78 = sub_2676CA77C();

      sub_267698EA0(v78);

      v76(v72, v64);
      v79 = v142;
      OUTLINED_FUNCTION_21_3(v54, 1, v142);
      if (!v104)
      {
        v81 = v138;
        v80 = v139;
        v82 = *(v139 + 32);
        v83 = OUTLINED_FUNCTION_25_16();
        v84(v83);
        (*(v80 + 16))(v61, v81, v79);
        sub_2676CB90C();
        sub_2676BE554(&qword_2801CCA88, MEMORY[0x277D5C770]);
        v85 = v135;
        sub_2676CA3FC();
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD58, &qword_2676D55E8);
        OUTLINED_FUNCTION_21_3(v85, 1, v86);
        if (v104)
        {
          (*(v80 + 8))(v81, v79);
          sub_2675ED6C0(v85, &qword_2801CDD60, &qword_2676D5620);
          v101 = v136;
          v87 = OUTLINED_FUNCTION_3_28();
          __swift_storeEnumTagSinglePayload(v87, v88, v89, v90);
        }

        else
        {
          swift_getKeyPath();
          OUTLINED_FUNCTION_11_31();
          sub_2676BE554(v98, v99);
          v100 = v136;
          sub_2676CA3EC();
          v101 = v100;

          OUTLINED_FUNCTION_14_2(v86);
          (*(v102 + 8))(v85, v86);
          v103 = v137;
          OUTLINED_FUNCTION_21_3(v100, 1, v137);
          if (!v104)
          {
            v109 = v132;
            v110 = v134;
            (*(v132 + 32))(v134, v101, v103);
            v111 = *(v109 + 16);
            v111(v133, v110, v103);
            v112 = v130;
            sub_2675E9880();
            v113 = sub_2676C9D1C();
            OUTLINED_FUNCTION_21_3(v112, 1, v113);
            if (!v114)
            {
              (*(v109 + 8))(v110, v103);
              (*(v139 + 8))(v138, v79);
              OUTLINED_FUNCTION_14_2(v113);
              (*(v127 + 32))(v140, v112, v113);
              OUTLINED_FUNCTION_17_2();
              v108 = v113;
              goto LABEL_15;
            }

            sub_2675ED6C0(v112, &qword_2801CDD40, &unk_2676D5520);
            if (qword_2801CBAA0 != -1)
            {
              OUTLINED_FUNCTION_0();
            }

            v115 = sub_2676CBE4C();
            __swift_project_value_buffer(v115, qword_2801CDC90);
            v111(v131, v110, v103);
            v116 = sub_2676CBE2C();
            v117 = v110;
            v118 = sub_2676CC24C();
            if (os_log_type_enabled(v116, v118))
            {
              v119 = swift_slowAlloc();
              v135 = v119;
              v136 = swift_slowAlloc();
              a10 = v136;
              *v119 = 136315138;
              v120 = v131;
              v111(v133, v131, v103);
              v121 = sub_2676CBFBC();
              v123 = v122;
              v124 = *(v109 + 8);
              v124(v120, v103);
              v125 = sub_2676B0B84(v121, v123, &a10);

              v126 = v135;
              *(v135 + 1) = v125;
              _os_log_impl(&dword_2675D4000, v116, v118, "UnsetRelationshipFlow: Person entity found in parse, but no usable fields found: %s", v126, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v136);
              OUTLINED_FUNCTION_30_6();
              MEMORY[0x26D5FEA80](v126, -1, -1);

              v124(v134, v103);
              (*(v139 + 8))(v138, v142);
            }

            else
            {

              v128 = *(v109 + 8);
              v128(v131, v103);
              v128(v117, v103);
              (*(v139 + 8))(v138, v79);
            }

LABEL_14:
            sub_2676C9D1C();
            OUTLINED_FUNCTION_5_2();
LABEL_15:
            __swift_storeEnumTagSinglePayload(v105, v106, v107, v108);
            goto LABEL_16;
          }

          (*(v80 + 8))(v81, v79);
        }

        sub_2675ED6C0(v101, &qword_2801CC038, &qword_2676D5A40);
        goto LABEL_14;
      }
    }

    else
    {
      v76(v72, v64);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v91, v92, v93, v142);
    }

    sub_2675ED6C0(v54, &qword_2801CC640, &unk_2676CF550);
    sub_2676C9D1C();
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
    goto LABEL_16;
  }

  sub_2676C9CCC();
  sub_2676BE554(&qword_2801CD480, MEMORY[0x277D5BF90]);
  swift_allocError();
  sub_2676C9CBC();
  swift_willThrow();
LABEL_16:
  OUTLINED_FUNCTION_28_10();
}

void sub_2676BCCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29_13();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v150 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3F0, &qword_2676CEC18);
  v28 = OUTLINED_FUNCTION_4_1(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4();
  v175 = v31;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v32);
  v34 = &v142 - v33;
  v174 = sub_2676CA22C();
  v35 = OUTLINED_FUNCTION_3(v174);
  v181 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_4();
  v173 = v39;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_10_4();
  v172 = v41;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_24_1();
  v171 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC038, &qword_2676D5A40);
  OUTLINED_FUNCTION_4_1(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_22_9(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD58, &qword_2676D55E8);
  OUTLINED_FUNCTION_4_1(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_9_1();
  v177 = v53;
  OUTLINED_FUNCTION_7_3();
  v168 = sub_2676CA07C();
  v54 = OUTLINED_FUNCTION_3(v168);
  v179 = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_4();
  v153 = v58;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_10_4();
  v152 = v60;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v61);
  v63 = &v142 - v62;
  v64 = sub_2676CAECC();
  v65 = OUTLINED_FUNCTION_3(v64);
  v67 = v66;
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_4();
  v176 = v70;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_24_1();
  v183 = v72;
  OUTLINED_FUNCTION_7_3();
  v170 = sub_2676CA19C();
  v73 = OUTLINED_FUNCTION_3(v170);
  v75 = v74;
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_1_5();
  v169 = v78;
  OUTLINED_FUNCTION_7_3();
  v147 = sub_2676CA2AC();
  v79 = OUTLINED_FUNCTION_3(v147);
  v145 = v80;
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_4();
  v144 = v83;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v84);
  v86 = &v142 - v85;
  v149 = sub_2676CA27C();
  v87 = OUTLINED_FUNCTION_3(v149);
  v148 = v88;
  v90 = *(v89 + 64);
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_11_5(v91);
  v92 = *(v25 + 16);
  if (v92)
  {
    v143 = v86;
    v182 = v63;
    v184 = MEMORY[0x277D84F90];
    v180 = v92;
    sub_2676C2B28(0, v92, 0);
    v93 = v184;
    v94 = v25 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
    v95 = sub_2676CA78C();
    v97 = *(v67 + 16);
    v96 = v67 + 16;
    v166 = v97;
    v167 = v95;
    v161 = (v179 + 16);
    v151 = v179 + 32;
    v159 = v181 + 32;
    v158 = v181 + 16;
    v157 = v181 + 8;
    v165 = (v96 - 8);
    v156 = v75 + 32;
    v155 = *(v96 + 56);
    v164 = v34;
    v163 = v64;
    v162 = v96;
    v160 = v75;
    v154 = (v179 + 8);
    while (1)
    {
      v181 = v93;
      v98 = v183;
      v179 = v94;
      v99 = v94;
      v100 = v64;
      v101 = v23;
      v102 = v64;
      v103 = v166;
      v166(v183, v99, v100);
      v103(v176, v98, v102);
      sub_2675E748C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
      OUTLINED_FUNCTION_17_2();
      __swift_storeEnumTagSinglePayload(v104, v105, v106, v107);
      sub_2676CA39C();
      sub_2676CB90C();
      sub_2676CA76C();
      v108 = v182;
      sub_2676CA30C();
      if (v101)
      {
        break;
      }

      v109 = *v161;
      v110 = v168;
      (*v161)(v34, v108, v168);
      OUTLINED_FUNCTION_17_2();
      __swift_storeEnumTagSinglePayload(v111, v112, v113, v110);
      v114 = v172;
      sub_2676CA21C();
      v115 = v175;
      sub_2675ED65C(v34, v175, &qword_2801CC3F0, &qword_2676CEC18);
      OUTLINED_FUNCTION_21_3(v115, 1, v110);
      v178 = 0;
      if (v116)
      {
        v117 = OUTLINED_FUNCTION_25_16();
        sub_2675ED6C0(v117, v118, &qword_2676CEC18);
        sub_2675ED6C0(v115, &qword_2801CC3F0, &qword_2676CEC18);
        v123 = v154;
      }

      else
      {
        OUTLINED_FUNCTION_23_12(&v182);
        v119 = v152;
        v120(v152, v115, v110);
        v109(v153, v119, v110);
        sub_2676CA20C();
        v121 = OUTLINED_FUNCTION_25_16();
        sub_2675ED6C0(v121, v122, &qword_2676CEC18);
        v123 = v154;
        (*v154)(v119, v110);
      }

      OUTLINED_FUNCTION_23_12(&a14);
      v124 = v171;
      v125 = v174;
      v126(v171, v114, v174);
      v127 = v169;
      sub_2676CA18C();
      OUTLINED_FUNCTION_23_12(&a13);
      v128(v173, v124, v125);
      sub_2676CA16C();
      OUTLINED_FUNCTION_23_12(&a12);
      v129(v124, v125);
      (*v123)(v182, v110);
      v64 = v163;
      (*v165)(v183, v163);
      v93 = v181;
      v185 = v181;
      v131 = *(v181 + 16);
      v130 = *(v181 + 24);
      v132 = v179;
      if (v131 >= v130 >> 1)
      {
        sub_2676C2B28(v130 > 1, v131 + 1, 1);
        v93 = v185;
      }

      *(v93 + 16) = v131 + 1;
      (*(v160 + 32))(v93 + ((*(v160 + 80) + 32) & ~*(v160 + 80)) + *(v160 + 72) * v131, v127, v170);
      v94 = v132 + v155;
      v116 = v180-- == 1;
      v23 = v178;
      v34 = v164;
      if (v116)
      {
        v86 = v143;
        goto LABEL_14;
      }
    }

    (*v165)(v183, v102);
  }

  else
  {
LABEL_14:
    sub_2676CA29C();
    sub_2676CA28C();
    v133 = v86;
    v134 = v146;
    sub_2676CA26C();
    v135 = v145;
    v136 = v147;
    (*(v145 + 16))(v144, v133, v147);
    sub_2676CA23C();
    (*(v135 + 8))(v133, v136);
    sub_2676C9B2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCAD8, &qword_2676D0380);
    v137 = v148;
    v138 = *(v148 + 72);
    v139 = *(v148 + 80);
    v140 = OUTLINED_FUNCTION_16_18();
    *(v140 + 16) = xmmword_2676CDE20;
    v141 = v149;
    (*(v137 + 16))(v140 + v134, v134, v149);
    sub_2676C9B1C();
    (*(v137 + 8))(v134, v141);
  }

  OUTLINED_FUNCTION_28_10();
}

void sub_2676BD6F0()
{
  OUTLINED_FUNCTION_29_13();
  v248 = v0;
  v269 = v2;
  v4 = v3;
  v247 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD50, &qword_2676D55E0);
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_1();
  v272 = v10;
  OUTLINED_FUNCTION_7_3();
  v271 = sub_2676CA27C();
  v11 = OUTLINED_FUNCTION_3(v271);
  v246 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_11_5(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD58, &qword_2676D55E8);
  v17 = OUTLINED_FUNCTION_3(v16);
  v273 = v18;
  v274 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9_1();
  v270 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC030, &qword_2676CDAA0);
  OUTLINED_FUNCTION_4_1(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_9_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC040, &qword_2676CDAA8);
  OUTLINED_FUNCTION_4_1(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_9_1();
  v268 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC048, &qword_2676CDAB0);
  OUTLINED_FUNCTION_4_1(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_9_1();
  v283 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC050, &unk_2676D0C20);
  OUTLINED_FUNCTION_4_1(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_9_1();
  v267 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC058, &unk_2676D0C50);
  OUTLINED_FUNCTION_4_1(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_9_1();
  v281 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC060, &qword_2676CDAB8);
  OUTLINED_FUNCTION_4_1(v47);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_9_1();
  v280 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  OUTLINED_FUNCTION_4_1(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_9_1();
  v279 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A0, &qword_2676CDAE0);
  v58 = OUTLINED_FUNCTION_4_1(v57);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_4();
  v278 = v61;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_24_1();
  v276 = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC070, &qword_2676CDAC0);
  OUTLINED_FUNCTION_4_1(v64);
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v67);
  v255 = &v245 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC080, &unk_2676D3580);
  OUTLINED_FUNCTION_4_1(v69);
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v72);
  v258 = &v245 - v73;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC088, &qword_2676CDAC8);
  v75 = OUTLINED_FUNCTION_4_1(v74);
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_1_7();
  v257 = v78 - v79;
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_20_14();
  v259 = v1;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC090, &qword_2676CDAD0);
  OUTLINED_FUNCTION_4_1(v81);
  v83 = *(v82 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v84);
  v260 = &v245 - v85;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC098, &qword_2676CDAD8);
  OUTLINED_FUNCTION_4_1(v86);
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v89);
  v91 = &v245 - v90;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC038, &qword_2676D5A40);
  v93 = OUTLINED_FUNCTION_4_1(v92);
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_4();
  v275 = v96;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_22_9(v98);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC078, &unk_2676D3680);
  v100 = OUTLINED_FUNCTION_4_1(v99);
  v102 = *(v101 + 64);
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_1_7();
  v256 = v103 - v104;
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_24_1();
  v265 = v106;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
  OUTLINED_FUNCTION_3(v263);
  v282 = v107;
  v109 = *(v108 + 64);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v110);
  v264 = &v245 - v111;
  v112 = v4;
  sub_2675E82AC();
  KeyPath = swift_getKeyPath();
  v113 = *MEMORY[0x277D5C6E0];
  v114 = sub_2676CB87C();
  OUTLINED_FUNCTION_14_2(v114);
  v116 = *(v115 + 104);
  v262 = v91;
  v116(v91, v113, v114);
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v117, v118, v119, v114);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0B0, &qword_2676CDAE8);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v120, v121, v122, v123);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0B8, &qword_2676CDAF0);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v125, v126, v127, v124);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C0, &qword_2676CDAF8);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v128, v129, v130, v131);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v132, v133, v134, v124);
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C8, &qword_2676CDB00);
  v135 = OUTLINED_FUNCTION_3_28();
  __swift_storeEnumTagSinglePayload(v135, v136, v137, v138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D0, &qword_2676CDB08);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v139, v140, v141, v142);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A8, &qword_2676D5AB0);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v144, v145, v146, v143);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v147, v148, v149, v150);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v151, v152, v153, v143);
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
  v154 = OUTLINED_FUNCTION_3_28();
  __swift_storeEnumTagSinglePayload(v154, v155, v156, v157);
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v158, v159, v160, v161);
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v162, v163, v164, v165);
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v166, v167, v168, v169);
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v170, v171, v172, v173);
  OUTLINED_FUNCTION_5_2();
  v174 = v263;
  __swift_storeEnumTagSinglePayload(v175, v176, v177, v263);
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v178, v179, v180, v181);
  OUTLINED_FUNCTION_19_10();
  sub_2676CA7FC();
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v182, v183, v184, v174);
  v185 = sub_2675E9CDC();
  v278 = v186;
  v279 = v185;
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v187, v188, v189, v174);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v190, v191, v192, v254);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v193, v194, v195, v253);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v196, v197, v198, v252);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v199, v200, v201, v251);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v202, v203, v204, v250);
  OUTLINED_FUNCTION_5_2();
  v205 = v261;
  __swift_storeEnumTagSinglePayload(v206, v207, v208, v261);
  OUTLINED_FUNCTION_5_2();
  v209 = v264;
  __swift_storeEnumTagSinglePayload(v210, v211, v212, v249);
  v213 = v277;
  v214 = v270;
  sub_2676CA7CC();
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v215, v216, v217, v205);
  OUTLINED_FUNCTION_11_31();
  sub_2676BE554(v218, v219);
  sub_2676BE554(&qword_2801CC310, MEMORY[0x277D5C6A0]);
  v220 = v272;
  sub_2676CA88C();
  (*(v282 + 16))(v213, v209, v174);
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v221, v222, v223, v174);
  sub_2676CA39C();
  sub_2676BAD84(v214, v220);
  v224 = v271;
  OUTLINED_FUNCTION_21_3(v220, 1, v271);
  if (v225)
  {
    v227 = v273;
    v226 = v274;
    sub_2675ED6C0(v220, &qword_2801CDD50, &qword_2676D55E0);
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v228 = sub_2676CBE4C();
    __swift_project_value_buffer(v228, qword_2801CDC90);
    v229 = sub_2676CBE2C();
    v230 = sub_2676CC24C();
    if (os_log_type_enabled(v229, v230))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_27_11(&dword_2675D4000, v231, v232, "Error generating NLUSystemOffered SDA");
      OUTLINED_FUNCTION_30_6();
    }

    sub_2676BA4D0();
    v233 = swift_allocError();
    OUTLINED_FUNCTION_26_11(v233, v234);
    (*(v227 + 8))(v214, v226);
    (*(v282 + 8))(v209, v174);
  }

  else
  {
    v235 = v246;
    v236 = v245;
    (*(v246 + 32))(v245, v220, v224);
    sub_2676C9B2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCAD8, &qword_2676D0380);
    v237 = *(v235 + 72);
    v238 = *(v235 + 80);
    v239 = OUTLINED_FUNCTION_16_18();
    v240 = OUTLINED_FUNCTION_17_20(v239, xmmword_2676CDE20);
    v241(v240);
    sub_2676C9B1C();
    (*(v235 + 8))(v236, v224);
    (*(v273 + 8))(v214, v274);
    v242 = *(v282 + 8);
    v243 = OUTLINED_FUNCTION_25_16();
    v244(v243);
  }

  OUTLINED_FUNCTION_28_10();
}

uint64_t sub_2676BE4AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC318, &qword_2676CEA38);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2675ED65C(a1, &v6 - v4, &qword_2801CC318, &qword_2676CEA38);
  return sub_2676CB8FC();
}

uint64_t sub_2676BE554(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_16_18()
{

  return swift_allocObject();
}

char *OUTLINED_FUNCTION_17_20(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = *(v3 + 16);
  return a1 + v2;
}

uint64_t OUTLINED_FUNCTION_26_11(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_27_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_2676BE6B4()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_15(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  v0[9] = v9;
  OUTLINED_FUNCTION_1_0(v9);
  v0[10] = v10;
  v12 = *(v11 + 64);
  v13 = OUTLINED_FUNCTION_19();
  v14 = OUTLINED_FUNCTION_70_4(v13);
  OUTLINED_FUNCTION_55_5(v14);
  v15 = sub_2676C8BFC();
  v0[13] = v15;
  OUTLINED_FUNCTION_1_0(v15);
  v0[14] = v16;
  v18 = *(v17 + 64);
  v0[15] = OUTLINED_FUNCTION_2_0();
  v19 = OUTLINED_FUNCTION_13_5();
  return OUTLINED_FUNCTION_22_5(v19, v20, v21);
}

uint64_t sub_2676BEA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  *(v8 + 56) = a8;
  *(v8 + 64) = v17;
  *(v8 + 153) = a7;
  *(v8 + 152) = a6;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  *(v8 + 72) = v9;
  v10 = *(v9 - 8);
  *(v8 + 80) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v12 = sub_2676C8BFC();
  *(v8 + 104) = v12;
  v13 = *(v12 - 8);
  *(v8 + 112) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2676BE7A4, 0, 0);
}

uint64_t sub_2676BEBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  *(v8 + 56) = a8;
  *(v8 + 64) = v17;
  *(v8 + 153) = a7;
  *(v8 + 152) = a6;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  *(v8 + 72) = v9;
  v10 = *(v9 - 8);
  *(v8 + 80) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v12 = sub_2676C8BFC();
  *(v8 + 104) = v12;
  v13 = *(v12 - 8);
  *(v8 + 112) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2676BED2C, 0, 0);
}

uint64_t sub_2676BF014()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;

  v5 = v1[15];
  v6 = v1[12];
  v7 = v1[11];

  v8 = *(v3 + 8);

  return v8();
}

uint64_t sub_2676BF158()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v4 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;

  v6 = v1[15];
  v7 = v1[12];
  v8 = v1[11];

  v9 = *(v4 + 8);

  return v9();
}

uint64_t sub_2676BF2B8()
{
  OUTLINED_FUNCTION_3_0();
  v0[5] = v1;
  v2 = sub_2676C90FC();
  v0[6] = v2;
  OUTLINED_FUNCTION_1_0(v2);
  v0[7] = v3;
  v5 = *(v4 + 64);
  v0[8] = OUTLINED_FUNCTION_2_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 64);
  v0[9] = OUTLINED_FUNCTION_2_0();
  v9 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64);
  v0[10] = OUTLINED_FUNCTION_2_0();
  v12 = sub_2676C99CC();
  v0[11] = v12;
  OUTLINED_FUNCTION_1_0(v12);
  v0[12] = v13;
  v15 = *(v14 + 64);
  v0[13] = OUTLINED_FUNCTION_19();
  v0[14] = swift_task_alloc();
  v16 = sub_2676C9DDC();
  v0[15] = v16;
  OUTLINED_FUNCTION_1_0(v16);
  v0[16] = v17;
  v19 = *(v18 + 64);
  v0[17] = OUTLINED_FUNCTION_2_0();
  v20 = sub_2676CB48C();
  OUTLINED_FUNCTION_4_1(v20);
  v22 = *(v21 + 64);
  v0[18] = OUTLINED_FUNCTION_2_0();
  v23 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_2676BF46C()
{
  OUTLINED_FUNCTION_3_0();
  v1 = v0[18];
  type metadata accessor for MailCommonCATsSimple();
  OUTLINED_FUNCTION_74_2();
  v0[19] = OUTLINED_FUNCTION_51_7();
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_58_6(v2);

  return sub_26760D2B0();
}

uint64_t sub_2676BF50C()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v3[2] = v1;
  v3[3] = v5;
  v3[4] = v0;
  v7 = *(v6 + 160);
  v8 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v9 = v8;
  v3[21] = v0;

  if (v0)
  {
    v10 = sub_2676BFA30;
  }

  else
  {
    v11 = v3[19];

    v10 = sub_2676BF618;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2676BF618()
{
  OUTLINED_FUNCTION_59_5();
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
  v24 = v0[9];
  v25 = v0[6];
  v26 = v0[14];
  sub_2676C997C();
  v8 = OUTLINED_FUNCTION_9_30();
  v9(v8);
  OUTLINED_FUNCTION_6_23();
  sub_2676C9D6C();
  sub_26762D4C8(v5);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v10 = sub_2676C9B3C();
  OUTLINED_FUNCTION_23_13(v10, v11, v12, v10);
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  (*(v7 + 8))(v6, v25);
  OUTLINED_FUNCTION_18_13();
  sub_2676C9D5C();
  (*(v4 + 8))(v26, v3);
  if (qword_2801CBA70 != -1)
  {
    swift_once();
  }

  v13 = v0[3];
  v0[22] = v13;
  v14 = *(qword_2801D3CD0 + 160);
  v15 = *(qword_2801D3CD0 + 168);
  v0[23] = v15;
  v16 = sub_2676C9B9C();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();

  v0[24] = sub_2676C9B8C();
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  v0[25] = v19;
  *v19 = v20;
  v19[1] = sub_2676BF854;
  v21 = v0[17];
  v22 = v0[5];

  return sub_2676916BC(v22, v13, v21, 0xD000000000000014, 0x80000002676D6080, v14, v15);
}

uint64_t sub_2676BF854()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = v1[25];
  v3 = v1[24];
  v4 = v1[23];
  v5 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2676BF970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  v13 = *(v12 + 136);
  v14 = *(v12 + 144);
  v15 = *(v12 + 120);
  v16 = *(v12 + 128);
  v18 = *(v12 + 104);
  v17 = *(v12 + 112);
  v20 = *(v12 + 72);
  v19 = *(v12 + 80);
  v21 = *(v12 + 64);

  v22 = OUTLINED_FUNCTION_67_3();
  v23(v22);

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_32_1();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_2676BFA30()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];

  OUTLINED_FUNCTION_15_0();
  v10 = v0[21];

  return v9();
}

uint64_t sub_2676BFAF0()
{
  OUTLINED_FUNCTION_3_0();
  v2 = OUTLINED_FUNCTION_77_2(v1);
  v0[4] = v2;
  OUTLINED_FUNCTION_1_0(v2);
  v0[5] = v3;
  v5 = *(v4 + 64);
  v0[6] = OUTLINED_FUNCTION_2_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_64_5(v9);
  v10 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  v13 = OUTLINED_FUNCTION_2_0();
  v14 = OUTLINED_FUNCTION_76_1(v13);
  v0[9] = v14;
  OUTLINED_FUNCTION_1_0(v14);
  v0[10] = v15;
  v17 = *(v16 + 64);
  v18 = OUTLINED_FUNCTION_19();
  v19 = OUTLINED_FUNCTION_70_4(v18);
  OUTLINED_FUNCTION_55_5(v19);
  v20 = sub_2676C9DDC();
  v0[13] = v20;
  OUTLINED_FUNCTION_1_0(v20);
  v0[14] = v21;
  v23 = *(v22 + 64);
  v24 = OUTLINED_FUNCTION_2_0();
  v25 = OUTLINED_FUNCTION_78_5(v24);
  OUTLINED_FUNCTION_4_1(v25);
  v27 = *(v26 + 64);
  v0[16] = OUTLINED_FUNCTION_2_0();
  v28 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_2676BFC7C()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *(v0 + 128);
  v2 = *(v0 + 24);
  type metadata accessor for MailCommonCATsSimple();
  OUTLINED_FUNCTION_74_2();
  v3 = OUTLINED_FUNCTION_51_7();
  OUTLINED_FUNCTION_79_4(v3);
  v4 = *v2;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_45_7(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_58_6(v6);

  return sub_26760CF90(v4);
}

uint64_t sub_2676BFD28()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v4 = v3;
  OUTLINED_FUNCTION_2_7();
  *v5 = v4;
  v7 = *(v6 + 144);
  v8 = *v2;
  OUTLINED_FUNCTION_0_1();
  *v9 = v8;
  v4[19] = v0;

  if (!v0)
  {
    v10 = v4[17];

    v4[20] = v1;
  }

  OUTLINED_FUNCTION_31_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2676BFE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_63_6();
  OUTLINED_FUNCTION_59_5();
  v17 = v16[15];
  v18 = v16[11];
  v19 = v16[9];
  v20 = v16[10];
  v21 = v16[8];
  v48 = v16[7];
  v23 = v16[5];
  v22 = v16[6];
  v50 = v16[4];
  v52 = v16[3];
  v49 = v16[12];
  sub_2676C99AC();
  v24 = OUTLINED_FUNCTION_9_30();
  v25(v24);
  OUTLINED_FUNCTION_6_23();
  OUTLINED_FUNCTION_75_3();
  sub_26762D4C8(v21);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v26 = sub_2676C9B3C();
  OUTLINED_FUNCTION_23_13(v26, v27, v28, v26);
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  v29 = OUTLINED_FUNCTION_13_22();
  v30(v29);
  OUTLINED_FUNCTION_18_13();
  sub_2676C9D5C();
  (*(v20 + 8))(v49, v19);
  OUTLINED_FUNCTION_9_27(dword_2676D57E0);
  v51 = v31;
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  v16[21] = v32;
  *v32 = v33;
  v32[1] = sub_2676BFFD0;
  v34 = v16[20];
  v35 = v16[15];
  v36 = v16[2];
  OUTLINED_FUNCTION_24_13();
  OUTLINED_FUNCTION_48_3();

  return v45(v37, v38, v39, v40, v41, v42, v43, v44, v48, v49, v51, a12, a13, a14, a15, a16);
}

uint64_t sub_2676BFFD0()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = *(v1 + 168);
  v3 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2676C00B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26761F624;

  return sub_2676BFAF0();
}

uint64_t sub_2676C014C()
{
  OUTLINED_FUNCTION_3_0();
  v2 = OUTLINED_FUNCTION_77_2(v1);
  v0[4] = v2;
  OUTLINED_FUNCTION_1_0(v2);
  v0[5] = v3;
  v5 = *(v4 + 64);
  v0[6] = OUTLINED_FUNCTION_2_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_64_5(v9);
  v10 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  v13 = OUTLINED_FUNCTION_2_0();
  v14 = OUTLINED_FUNCTION_76_1(v13);
  v0[9] = v14;
  OUTLINED_FUNCTION_1_0(v14);
  v0[10] = v15;
  v17 = *(v16 + 64);
  v18 = OUTLINED_FUNCTION_19();
  v19 = OUTLINED_FUNCTION_70_4(v18);
  OUTLINED_FUNCTION_55_5(v19);
  v20 = sub_2676C9DDC();
  v0[13] = v20;
  OUTLINED_FUNCTION_1_0(v20);
  v0[14] = v21;
  v23 = *(v22 + 64);
  v24 = OUTLINED_FUNCTION_2_0();
  v25 = OUTLINED_FUNCTION_78_5(v24);
  OUTLINED_FUNCTION_4_1(v25);
  v27 = *(v26 + 64);
  v0[16] = OUTLINED_FUNCTION_2_0();
  v28 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_2676C02D8()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(v0 + 128);
  type metadata accessor for MailCommonCATsSimple();
  OUTLINED_FUNCTION_74_2();
  v2 = OUTLINED_FUNCTION_51_7();
  OUTLINED_FUNCTION_79_4(v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_45_7(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_58_6(v4);

  return sub_26760CEEC();
}

uint64_t sub_2676C0370()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v4 = v3;
  OUTLINED_FUNCTION_2_7();
  *v5 = v4;
  v7 = *(v6 + 144);
  v8 = *v2;
  OUTLINED_FUNCTION_0_1();
  *v9 = v8;
  v4[19] = v0;

  if (!v0)
  {
    v10 = v4[17];

    v4[20] = v1;
  }

  OUTLINED_FUNCTION_31_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2676C05C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26761F624;

  return sub_2676C014C();
}

uint64_t sub_2676C065C()
{
  OUTLINED_FUNCTION_3_0();
  v2 = OUTLINED_FUNCTION_77_2(v1);
  v0[4] = v2;
  OUTLINED_FUNCTION_1_0(v2);
  v0[5] = v3;
  v5 = *(v4 + 64);
  v0[6] = OUTLINED_FUNCTION_2_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_64_5(v9);
  v10 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  v13 = OUTLINED_FUNCTION_2_0();
  v14 = OUTLINED_FUNCTION_76_1(v13);
  v0[9] = v14;
  OUTLINED_FUNCTION_1_0(v14);
  v0[10] = v15;
  v17 = *(v16 + 64);
  v18 = OUTLINED_FUNCTION_19();
  v19 = OUTLINED_FUNCTION_70_4(v18);
  OUTLINED_FUNCTION_55_5(v19);
  v20 = sub_2676C9DDC();
  v0[13] = v20;
  OUTLINED_FUNCTION_1_0(v20);
  v0[14] = v21;
  v23 = *(v22 + 64);
  v24 = OUTLINED_FUNCTION_2_0();
  v25 = OUTLINED_FUNCTION_78_5(v24);
  OUTLINED_FUNCTION_4_1(v25);
  v27 = *(v26 + 64);
  v0[16] = OUTLINED_FUNCTION_2_0();
  v28 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_2676C07E8()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(v0 + 128);
  type metadata accessor for MailCommonCATsSimple();
  OUTLINED_FUNCTION_74_2();
  v2 = OUTLINED_FUNCTION_51_7();
  OUTLINED_FUNCTION_79_4(v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_45_7(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_58_6(v4);

  return sub_26760D20C();
}

uint64_t sub_2676C0880()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v4 = v3;
  OUTLINED_FUNCTION_2_7();
  *v5 = v4;
  v7 = *(v6 + 144);
  v8 = *v2;
  OUTLINED_FUNCTION_0_1();
  *v9 = v8;
  v4[19] = v0;

  if (!v0)
  {
    v10 = v4[17];

    v4[20] = v1;
  }

  OUTLINED_FUNCTION_31_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2676C0AD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26761F624;

  return sub_2676C065C();
}

uint64_t sub_2676C0B6C()
{
  OUTLINED_FUNCTION_3_0();
  v2 = OUTLINED_FUNCTION_77_2(v1);
  v0[4] = v2;
  OUTLINED_FUNCTION_1_0(v2);
  v0[5] = v3;
  v5 = *(v4 + 64);
  v0[6] = OUTLINED_FUNCTION_2_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_64_5(v9);
  v10 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  v13 = OUTLINED_FUNCTION_2_0();
  v14 = OUTLINED_FUNCTION_76_1(v13);
  v0[9] = v14;
  OUTLINED_FUNCTION_1_0(v14);
  v0[10] = v15;
  v17 = *(v16 + 64);
  v18 = OUTLINED_FUNCTION_19();
  v19 = OUTLINED_FUNCTION_70_4(v18);
  OUTLINED_FUNCTION_55_5(v19);
  v20 = sub_2676C9DDC();
  v0[13] = v20;
  OUTLINED_FUNCTION_1_0(v20);
  v0[14] = v21;
  v23 = *(v22 + 64);
  v24 = OUTLINED_FUNCTION_2_0();
  v25 = OUTLINED_FUNCTION_78_5(v24);
  OUTLINED_FUNCTION_4_1(v25);
  v27 = *(v26 + 64);
  v0[16] = OUTLINED_FUNCTION_2_0();
  v28 = sub_2676C9C4C();
  OUTLINED_FUNCTION_4_1(v28);
  v30 = *(v29 + 64);
  v0[17] = OUTLINED_FUNCTION_2_0();
  v31 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v31, v32, v33);
}

uint64_t sub_2676C0D18()
{
  OUTLINED_FUNCTION_44();
  sub_2676CAF5C();
  if (sub_2676CAF3C())
  {
    sub_2676CAF2C();
  }

  v2 = v0[16];
  v1 = v0[17];
  sub_2676CB45C();
  sub_2676C9C3C();
  v3 = sub_2676CB44C();
  v0[18] = v3;
  type metadata accessor for MailCommonCATsSimple();
  sub_2676CB47C();
  v0[19] = sub_2676CB42C();

  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_58_6(v4);

  return sub_26760CA74(v3);
}

uint64_t sub_2676C0E60()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v4 = v3;
  OUTLINED_FUNCTION_2_7();
  *v5 = v4;
  v7 = *(v6 + 160);
  v8 = *v2;
  OUTLINED_FUNCTION_0_1();
  *v9 = v8;
  v4[21] = v0;

  if (!v0)
  {
    v10 = v4[18];
    v11 = v4[19];

    v4[22] = v1;
  }

  OUTLINED_FUNCTION_31_7();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2676C10CC()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = *(v1 + 184);
  v3 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2676C11B0()
{
  OUTLINED_FUNCTION_59_5();
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v9 = *(v0 + 64);
  v12 = *(v0 + 56);
  v13 = *(v0 + 48);

  (*(v6 + 8))(v4, v5);

  OUTLINED_FUNCTION_15_0();

  return v10();
}

uint64_t sub_2676C12A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  v13 = v12[18];
  v14 = v12[19];
  v16 = v12[16];
  v15 = v12[17];
  v17 = v12[15];
  v19 = v12[11];
  v18 = v12[12];
  v21 = v12[7];
  v20 = v12[8];
  v22 = v12[6];

  OUTLINED_FUNCTION_15_0();
  v23 = v12[21];
  OUTLINED_FUNCTION_32_1();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_2676C136C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26761F624;

  return sub_2676C0B6C();
}

uint64_t sub_2676C1404()
{
  OUTLINED_FUNCTION_3_0();
  v2 = OUTLINED_FUNCTION_77_2(v1);
  v0[4] = v2;
  OUTLINED_FUNCTION_1_0(v2);
  v0[5] = v3;
  v5 = *(v4 + 64);
  v0[6] = OUTLINED_FUNCTION_2_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_64_5(v9);
  v10 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v10);
  v12 = *(v11 + 64);
  v13 = OUTLINED_FUNCTION_2_0();
  v14 = OUTLINED_FUNCTION_76_1(v13);
  v0[9] = v14;
  OUTLINED_FUNCTION_1_0(v14);
  v0[10] = v15;
  v17 = *(v16 + 64);
  v18 = OUTLINED_FUNCTION_19();
  v19 = OUTLINED_FUNCTION_70_4(v18);
  OUTLINED_FUNCTION_55_5(v19);
  v20 = sub_2676C9DDC();
  v0[13] = v20;
  OUTLINED_FUNCTION_1_0(v20);
  v0[14] = v21;
  v23 = *(v22 + 64);
  v24 = OUTLINED_FUNCTION_2_0();
  v25 = OUTLINED_FUNCTION_78_5(v24);
  OUTLINED_FUNCTION_4_1(v25);
  v27 = *(v26 + 64);
  v0[16] = OUTLINED_FUNCTION_2_0();
  v28 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_2676C1590()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(v0 + 128);
  type metadata accessor for ReadMailCATsSimple();
  OUTLINED_FUNCTION_74_2();
  v2 = OUTLINED_FUNCTION_51_7();
  OUTLINED_FUNCTION_79_4(v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_45_7(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_58_6(v4);

  return sub_267654710();
}

uint64_t sub_2676C1628()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v4 = v3;
  OUTLINED_FUNCTION_2_7();
  *v5 = v4;
  v7 = *(v6 + 144);
  v8 = *v2;
  OUTLINED_FUNCTION_0_1();
  *v9 = v8;
  v4[19] = v0;

  if (!v0)
  {
    v10 = v4[17];

    v4[20] = v1;
  }

  OUTLINED_FUNCTION_31_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2676C187C()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = *(v1 + 168);
  v3 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2676C1960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  v13 = *(v12 + 120);
  v14 = *(v12 + 128);
  v15 = *(v12 + 104);
  v16 = *(v12 + 112);
  v18 = *(v12 + 88);
  v17 = *(v12 + 96);
  v20 = *(v12 + 56);
  v19 = *(v12 + 64);
  v21 = *(v12 + 48);

  v22 = OUTLINED_FUNCTION_67_3();
  v23(v22);

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_32_1();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_2676C1A20()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];

  OUTLINED_FUNCTION_15_0();
  v10 = v0[19];

  return v9();
}

uint64_t sub_2676C1AE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26761F624;

  return sub_2676C1404();
}

uint64_t sub_2676C1B78()
{
  OUTLINED_FUNCTION_3_0();
  v0[2] = v1;
  v2 = sub_2676C90FC();
  v0[3] = v2;
  OUTLINED_FUNCTION_1_0(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v0[5] = OUTLINED_FUNCTION_2_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v6);
  v8 = *(v7 + 64);
  v0[6] = OUTLINED_FUNCTION_2_0();
  v9 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v9);
  v11 = *(v10 + 64);
  v12 = OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_64_5(v12);
  v13 = sub_2676C99CC();
  v0[8] = v13;
  OUTLINED_FUNCTION_1_0(v13);
  v0[9] = v14;
  v16 = *(v15 + 64);
  v0[10] = OUTLINED_FUNCTION_19();
  v0[11] = swift_task_alloc();
  v17 = sub_2676C9DDC();
  v0[12] = v17;
  OUTLINED_FUNCTION_1_0(v17);
  v0[13] = v18;
  v20 = *(v19 + 64);
  v0[14] = OUTLINED_FUNCTION_2_0();
  v21 = sub_2676CB48C();
  OUTLINED_FUNCTION_4_1(v21);
  v23 = *(v22 + 64);
  v0[15] = OUTLINED_FUNCTION_2_0();
  v24 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_2676C1D28()
{
  OUTLINED_FUNCTION_3_0();
  v1 = v0[15];
  type metadata accessor for MailCommonCATsSimple();
  OUTLINED_FUNCTION_74_2();
  v0[16] = OUTLINED_FUNCTION_51_7();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_58_6(v2);

  return sub_26760CD50();
}

uint64_t sub_2676C1DC8()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v4 = v3;
  OUTLINED_FUNCTION_2_7();
  *v5 = v4;
  v7 = *(v6 + 136);
  v8 = *v2;
  OUTLINED_FUNCTION_0_1();
  *v9 = v8;
  v4[18] = v0;

  if (!v0)
  {
    v10 = v4[16];

    v4[19] = v1;
  }

  OUTLINED_FUNCTION_31_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2676C1ED4()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  v32 = v0[6];
  v33 = v0[3];
  v34 = v0[11];
  v36 = v0[19];
  sub_2676C99AC();
  v8 = OUTLINED_FUNCTION_9_30();
  v9(v8);
  OUTLINED_FUNCTION_6_23();
  OUTLINED_FUNCTION_75_3();
  sub_26762D4C8(v5);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v10 = sub_2676C9B3C();
  OUTLINED_FUNCTION_22_10(v10, v11, v12, v13, v14, v15, v16, v17, v31, v32);
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  v18 = OUTLINED_FUNCTION_13_22();
  v19(v18);
  OUTLINED_FUNCTION_18_13();
  sub_2676C9D5C();
  (*(v4 + 8))(v34, v3);
  v20 = sub_2676C9B9C();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v0[20] = sub_2676C9B8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
  v23 = swift_allocObject();
  v0[21] = v23;
  *(v23 + 16) = xmmword_2676CD5C0;
  *(v23 + 32) = v36;
  v24 = *(MEMORY[0x277D5BD50] + 4);
  v35 = (*MEMORY[0x277D5BD50] + MEMORY[0x277D5BD50]);
  v25 = v36;
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  v0[22] = v26;
  *v26 = v27;
  v26[1] = sub_2676C20DC;
  v28 = v0[14];
  v29 = v0[2];

  return v35(v29, v23, v28);
}

uint64_t sub_2676C20DC()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = v1[22];
  v3 = v1[21];
  v4 = v1[20];
  v5 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2676C21F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  v13 = *(v12 + 112);
  v14 = *(v12 + 120);
  v15 = *(v12 + 96);
  v16 = *(v12 + 104);
  v18 = *(v12 + 80);
  v17 = *(v12 + 88);
  v20 = *(v12 + 48);
  v19 = *(v12 + 56);
  v21 = *(v12 + 40);

  v22 = OUTLINED_FUNCTION_67_3();
  v23(v22);

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_32_1();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_2676C22B8()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];

  OUTLINED_FUNCTION_15_0();
  v10 = v0[18];

  return v9();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2676C23D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267605CFC;

  return sub_2676C1B78();
}

char *sub_2676C24CC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_12_19(a3, result);
  }

  return result;
}

char *sub_2676C2504(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_12_19(a3, result);
  }

  return result;
}

char *sub_2676C2544(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_12_19(a3, result);
  }

  return result;
}

uint64_t sub_2676C25EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_80_2();
  if (v10 && (result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), v6 + *(*(result - 8) + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      OUTLINED_FUNCTION_34_11();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_34_11();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t sub_2676C26BC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_80_2();
  if (v8 && (result = (a4)(0), v5 + *(*(result - 8) + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_34_11();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_34_11();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

size_t sub_2676C2778(size_t a1, int64_t a2, char a3)
{
  result = sub_2676C2BD8(a1, a2, a3, *v3, &qword_2801CC508, &qword_2676CF260, MEMORY[0x277CBA2E0], MEMORY[0x277CBA2E0]);
  *v3 = result;
  return result;
}

size_t sub_2676C27D0(size_t a1, int64_t a2, char a3)
{
  result = sub_2676C2BD8(a1, a2, a3, *v3, &qword_2801CC500, &qword_2676D57A0, MEMORY[0x277D5CA58], MEMORY[0x277D5CA58]);
  *v3 = result;
  return result;
}

void *sub_2676C2828(void *a1, int64_t a2, char a3)
{
  result = sub_2676C2D70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2676C2848(size_t a1, int64_t a2, char a3)
{
  result = sub_2676C2BD8(a1, a2, a3, *v3, &qword_2801CC580, &qword_2676CF270, MEMORY[0x277D56040], MEMORY[0x277D56040]);
  *v3 = result;
  return result;
}

size_t sub_2676C28A0(size_t a1, int64_t a2, char a3)
{
  result = sub_2676C2BD8(a1, a2, a3, *v3, &qword_2801CDD80, &qword_2676D57D0, MEMORY[0x277D55FF8], MEMORY[0x277D55FF8]);
  *v3 = result;
  return result;
}

size_t sub_2676C28F8(size_t a1, int64_t a2, char a3)
{
  result = sub_2676C2BD8(a1, a2, a3, *v3, &qword_2801CC548, &qword_2676CF2B0, MEMORY[0x277D5FEB0], MEMORY[0x277D5FEB0]);
  *v3 = result;
  return result;
}

size_t sub_2676C2950()
{
  v1 = *v0;
  OUTLINED_FUNCTION_60_4();
  result = sub_2676C2BD8(v2, v3, v4, v5, v6, v7, v8, MEMORY[0x277CBA208]);
  *v0 = result;
  return result;
}

size_t sub_2676C2998(size_t a1, int64_t a2, char a3)
{
  result = sub_2676C2EDC(a1, a2, a3, *v3, &qword_2801CC528, &qword_2676CF290, &qword_2801CC3D8, &unk_2676CEC00);
  *v3 = result;
  return result;
}

size_t sub_2676C29D8(size_t a1, int64_t a2, char a3)
{
  result = sub_2676C2BD8(a1, a2, a3, *v3, &qword_2801CDD88, &unk_2676D5800, MEMORY[0x277D5C908], MEMORY[0x277D5C908]);
  *v3 = result;
  return result;
}

size_t sub_2676C2A30(size_t a1, int64_t a2, char a3)
{
  result = sub_2676C2BD8(a1, a2, a3, *v3, &qword_2801CC518, &qword_2676CF278, MEMORY[0x277D56178], MEMORY[0x277D56178]);
  *v3 = result;
  return result;
}

size_t sub_2676C2A88(size_t a1, int64_t a2, char a3)
{
  result = sub_2676C2EDC(a1, a2, a3, *v3, &qword_2801CDD68, &unk_2676D57A8, &qword_2801CC168, &unk_2676CF510);
  *v3 = result;
  return result;
}

char *sub_2676C2AC8(char *a1, int64_t a2, char a3)
{
  result = sub_2676C3078(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2676C2AE8(char *a1, int64_t a2, char a3)
{
  result = sub_2676C3180(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2676C2B08(void *a1, int64_t a2, char a3)
{
  result = sub_2676C3288(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2676C2B28(size_t a1, int64_t a2, char a3)
{
  result = sub_2676C2BD8(a1, a2, a3, *v3, &qword_2801CC578, &qword_2676CF2E8, MEMORY[0x277D5DB80], MEMORY[0x277D5DB80]);
  *v3 = result;
  return result;
}

size_t sub_2676C2B80(size_t a1, int64_t a2, char a3)
{
  result = sub_2676C2BD8(a1, a2, a3, *v3, &qword_2801CDD90, &qword_2676D5950, MEMORY[0x277D55C48], MEMORY[0x277D55C48]);
  *v3 = result;
  return result;
}

size_t sub_2676C2BD8(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  v12 = result;
  if (a3)
  {
    v13 = *(a4 + 24);
    v14 = v13 >> 1;
    if ((v13 >> 1) < a2)
    {
      if (v14 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if ((v13 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v14 = a2;
      }
    }
  }

  else
  {
    v14 = a2;
  }

  v15 = *(a4 + 16);
  if (v14 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v14;
  }

  if (!v16)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v17 = a7(0);
  OUTLINED_FUNCTION_1_0(v17);
  v19 = *(v18 + 72);
  v20 = OUTLINED_FUNCTION_68_3();
  result = _swift_stdlib_malloc_size(v20);
  if (!v19)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v8 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_24;
  }

  v20[2] = v15;
  v20[3] = 2 * ((result - v8) / v19);
LABEL_19:
  v22 = *(a7(0) - 8);
  if (v12)
  {
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    sub_2676C26BC(a4 + v23, v15, v20 + v23, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_81_4();
  }

  return v20;
}

void *sub_2676C2D70(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD70, &qword_2676D57B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD78, &unk_2676D57C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2676C2EDC(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v12 = result;
  if (a3)
  {
    v13 = *(a4 + 24);
    v14 = v13 >> 1;
    if ((v13 >> 1) < a2)
    {
      if (v14 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if ((v13 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v14 = a2;
      }
    }
  }

  else
  {
    v14 = a2;
  }

  v15 = *(a4 + 16);
  if (v14 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v14;
  }

  if (!v16)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  OUTLINED_FUNCTION_1_0(v17);
  v19 = *(v18 + 72);
  v20 = OUTLINED_FUNCTION_68_3();
  result = _swift_stdlib_malloc_size(v20);
  if (!v19)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v8 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_24;
  }

  v20[2] = v15;
  v20[3] = 2 * ((result - v8) / v19);
LABEL_19:
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v12)
  {
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    sub_2676C25EC(a4 + v23, v15, v20 + v23, a7, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_81_4();
  }

  return v20;
}

char *sub_2676C3078(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC510, &qword_2676CF268);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2676C3180(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBB78, &qword_2676CD280);
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

void *sub_2676C3288(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD188, &unk_2676D19D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2676C33C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2676C3404(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2676C3458(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2676C3498(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_3_29()
{
  v5 = *(v2 + 120);
  v6 = *(v2 + 104);
  *(v1 + 16) = v4;
  return v1 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v3;
}

uint64_t OUTLINED_FUNCTION_5_23()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  result = v1 + 16;
  v3 = *(v1 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_23()
{

  return sub_2676C9D2C();
}

size_t OUTLINED_FUNCTION_7_26()
{
  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v7 = v0[9];
  v5 = v0[5];

  return sub_2676C2950();
}

uint64_t OUTLINED_FUNCTION_18_14()
{
  v3 = v0[15];
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[8];
  v9 = v0[5];
  v8 = v0[6];
  v11 = v0[7];
  v12 = v0[4];
  *(v1 + 24) = v0[12];

  return sub_2676C997C();
}

size_t OUTLINED_FUNCTION_19_11()
{

  return sub_2676C2950();
}

uint64_t OUTLINED_FUNCTION_20_15()
{
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[11];
  v6 = v0[12];

  return sub_26761D218(v1, v6);
}

uint64_t OUTLINED_FUNCTION_22_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __swift_storeEnumTagSinglePayload(a10, 1, 1, a1);

  return sub_2676C9D8C();
}

uint64_t OUTLINED_FUNCTION_23_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(v4, 1, 1, a4);

  return sub_2676C9D8C();
}

uint64_t OUTLINED_FUNCTION_41_7(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v2[20];
  v5 = v2[15];
  result = v2[2];
  v7 = v2[3];
  *(v3 + 16) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_51_7()
{

  return sub_2676CB42C();
}

uint64_t OUTLINED_FUNCTION_68_3()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_69_3()
{

  return sub_26763DE18(v1, v0);
}

uint64_t OUTLINED_FUNCTION_70_4(uint64_t a1)
{
  *(v1 + 88) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_74_2()
{

  return sub_2676CB47C();
}

uint64_t OUTLINED_FUNCTION_75_3()
{

  return sub_2676C9D6C();
}

uint64_t OUTLINED_FUNCTION_76_1(uint64_t a1)
{
  *(v1 + 64) = a1;

  return sub_2676C99CC();
}

uint64_t OUTLINED_FUNCTION_77_2(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;

  return sub_2676C90FC();
}

uint64_t OUTLINED_FUNCTION_78_5(uint64_t a1)
{
  *(v1 + 120) = a1;

  return sub_2676CB48C();
}

uint64_t OUTLINED_FUNCTION_81_4()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_2676C39FC()
{
  sub_2676CA56C();
  if (!v18[3])
  {
    sub_2675E35CC(v18, &qword_2801CC158, &qword_2676CDDA0);
    goto LABEL_7;
  }

  sub_2676CA5DC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v2 = sub_2676CBE4C();
    __swift_project_value_buffer(v2, qword_2801CDC90);

    v3 = sub_2676CBE2C();
    v4 = sub_2676CC24C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v18[0] = v6;
      *v5 = 136315138;
      sub_2676CA91C();

      v7 = sub_2676CBFBC();
      v9 = sub_2676B0B84(v7, v8, v18);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_2675D4000, v3, v4, "Could not extract the usoNoEntity from the usoTask=%s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_2_5();
    }

    goto LABEL_16;
  }

  sub_2676CA33C();

  if (!v18[0] || (v0 = sub_2676CA4BC(), , !v0))
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v10 = sub_2676CBE4C();
    __swift_project_value_buffer(v10, qword_2801CDC90);

    v3 = sub_2676CBE2C();
    v11 = sub_2676CC24C();

    if (os_log_type_enabled(v3, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18[0] = v13;
      *v12 = 136315138;

      v14 = sub_2676CBFBC();
      v16 = sub_2676B0B84(v14, v15, v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_2675D4000, v3, v11, "Could not extract the listPosition from the usoNoEntity=%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_2_5();

      return 0;
    }

LABEL_16:

    return 0;
  }

  v1 = sub_2676C3D3C();

  return v1;
}

uint64_t sub_2676C3D3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD98, &unk_2676D59D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v15 - v2;
  v4 = sub_2676CA68C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  sub_2676CA67C();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2675E35CC(v3, &qword_2801CDD98, &unk_2676D59D0);
    return 0;
  }

  v13 = *(v5 + 32);
  v13(v11, v3, v4);
  v13(v9, v11, v4);
  v14 = (*(v5 + 88))(v9, v4);
  if (v14 == *MEMORY[0x277D5EC30])
  {
    return 4;
  }

  if (v14 == *MEMORY[0x277D5EC40])
  {
    return 2;
  }

  if (v14 == *MEMORY[0x277D5EB60])
  {
    return 1;
  }

  if (v14 == *MEMORY[0x277D5EBD0])
  {
    return 24;
  }

  if (v14 == *MEMORY[0x277D5EBA0])
  {
    return 17;
  }

  if (v14 == *MEMORY[0x277D5EC28])
  {
    return 8;
  }

  if (v14 == *MEMORY[0x277D5EBA8])
  {
    return -3;
  }

  if (v14 == *MEMORY[0x277D5EC10])
  {
    return 6;
  }

  if (v14 == *MEMORY[0x277D5EB90])
  {
    return 19;
  }

  if (v14 == *MEMORY[0x277D5EBB0])
  {
    return 25;
  }

  if (v14 == *MEMORY[0x277D5EC08])
  {
    return 9;
  }

  if (v14 == *MEMORY[0x277D5EC60])
  {
    return 11;
  }

  if (v14 == *MEMORY[0x277D5EBE0])
  {
    return -1;
  }

  if (v14 == *MEMORY[0x277D5EB88])
  {
    return 14;
  }

  if (v14 == *MEMORY[0x277D5EBC8])
  {
    return -2;
  }

  if (v14 == *MEMORY[0x277D5EBB8])
  {
    return 21;
  }

  if (v14 == *MEMORY[0x277D5EB98])
  {
    return 13;
  }

  if (v14 == *MEMORY[0x277D5EBE8])
  {
    return -1;
  }

  if (v14 == *MEMORY[0x277D5EBD8])
  {
    return 22;
  }

  if (v14 == *MEMORY[0x277D5EB68])
  {
    return 15;
  }

  if (v14 == *MEMORY[0x277D5EB78])
  {
    return 20;
  }

  if (v14 == *MEMORY[0x277D5EBF8])
  {
    return 5;
  }

  if (v14 == *MEMORY[0x277D5EB70])
  {
    return 16;
  }

  if (v14 == *MEMORY[0x277D5EC00])
  {
    return 1;
  }

  if (v14 == *MEMORY[0x277D5EC50])
  {
    return 7;
  }

  if (v14 == *MEMORY[0x277D5EB80])
  {
    return 18;
  }

  if (v14 == *MEMORY[0x277D5EBC0])
  {
    return 23;
  }

  if (v14 == *MEMORY[0x277D5EC58])
  {
    return 12;
  }

  if (v14 == *MEMORY[0x277D5EC20])
  {
    return 3;
  }

  if (v14 != *MEMORY[0x277D5EC18])
  {
    (*(v5 + 8))(v9, v4);
    return 0;
  }

  return 10;
}

void static DynamicTask.== infix(_:_:)()
{
  OUTLINED_FUNCTION_21_1();
  v2 = v1;
  v52 = v4;
  v53 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_7();
  v51 = v11 - v12;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_4();
  v15 = v14;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_10_4();
  v54 = v17;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_53_9();
  v50[1] = v2;
  v19 = sub_2676CA40C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v21 = OUTLINED_FUNCTION_4_1(TupleTypeMetadata2);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v50 - v25;
  v27 = *(v24 + 56);
  v28 = *(v19 - 8);
  v29 = *(v28 + 16);
  v29(v50 - v25, v53, v19);
  v53 = v27;
  v29(&v26[v27], v52, v19);
  OUTLINED_FUNCTION_87_0();
  if (swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v30 = *(v8 + 32);
      v30(v15, v0, v5);
      v31 = v51;
      v30(v51, v54, v5);
      sub_2676C467C(v15, v31);
      v32 = *(v8 + 8);
      v33 = OUTLINED_FUNCTION_6_2();
      v32(v33);
      v34 = OUTLINED_FUNCTION_30_12();
      v32(v34);
      v35 = *(v28 + 8);
      v35(&v26[v53], v19);
      v35(v26, v19);
      OUTLINED_FUNCTION_45_8();
      OUTLINED_FUNCTION_20_1();
      return;
    }

    (*(v8 + 8))(v0, v5);
  }

  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_1_8();
    swift_once();
  }

  v36 = sub_2676CBE4C();
  __swift_project_value_buffer(v36, qword_2801CDC90);
  v37 = sub_2676CBE2C();
  v38 = sub_2676CC25C();
  if (OUTLINED_FUNCTION_46_1(v38))
  {
    OUTLINED_FUNCTION_5_3();
    v55[0] = OUTLINED_FUNCTION_12_2();
    *v28 = 136315138;
    v39 = sub_2676CC6EC();
    v41 = sub_2676B0B84(v39, v40, v55);

    *(v28 + 4) = v41;
    OUTLINED_FUNCTION_33_8(&dword_2675D4000, v42, v43, "== not defined for DynamicTask<%s>");
    OUTLINED_FUNCTION_41_8();
    OUTLINED_FUNCTION_2_5();
  }

  OUTLINED_FUNCTION_25_18();
  sub_2676CC3FC();

  v55[0] = 0xD00000000000001FLL;
  v55[1] = 0x80000002676D8190;
  v44 = sub_2676CC6EC();
  MEMORY[0x26D5FDD00](v44);

  OUTLINED_FUNCTION_69_4();
  OUTLINED_FUNCTION_68_4();
  v45 = OUTLINED_FUNCTION_15_20();
  static Logger.logAndCrash(_:file:line:)(v45, v46, v47, v48, v49, 20);
  __break(1u);
}

void static Entity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_21_1();
  v4 = v3;
  v44 = v5;
  v45 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  OUTLINED_FUNCTION_14_2(v7);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_7();
  v46 = v11 - v12;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_38_6();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_55_3();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_53_9();
  v43 = v4;
  v16 = sub_2676CA8FC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = OUTLINED_FUNCTION_4_1(TupleTypeMetadata2);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v43 - v22;
  v24 = *(v21 + 56);
  v25 = *(v16 - 8);
  v26 = *(v25 + 16);
  v26(&v43 - v22, v44, v16);
  v26(&v23[v24], v45, v16);
  OUTLINED_FUNCTION_87_0();
  if (swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      sub_2675F66D4(v2, v0);
      v27 = v46;
      sub_2675F66D4(v1, v46);
      sub_2676C4C40();
      sub_2675ED6C0(v27, &qword_2801CC168, &unk_2676CF510);
      sub_2675ED6C0(v0, &qword_2801CC168, &unk_2676CF510);
      v28 = *(v25 + 8);
      v28(&v23[v24], v16);
      v28(v23, v16);
      OUTLINED_FUNCTION_45_8();
      OUTLINED_FUNCTION_20_1();
      return;
    }

    sub_2675ED6C0(v2, &qword_2801CC168, &unk_2676CF510);
  }

  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_1_8();
    swift_once();
  }

  v29 = sub_2676CBE4C();
  __swift_project_value_buffer(v29, qword_2801CDC90);
  v30 = sub_2676CBE2C();
  v31 = sub_2676CC25C();
  if (OUTLINED_FUNCTION_46_1(v31))
  {
    OUTLINED_FUNCTION_5_3();
    v47[0] = OUTLINED_FUNCTION_12_2();
    *v0 = 136315138;
    v32 = sub_2676CC6EC();
    v34 = sub_2676B0B84(v32, v33, v47);

    *(v0 + 4) = v34;
    OUTLINED_FUNCTION_33_8(&dword_2675D4000, v35, v36, "== not defined for Entity<%s>");
    OUTLINED_FUNCTION_41_8();
    OUTLINED_FUNCTION_2_5();
  }

  OUTLINED_FUNCTION_25_18();
  sub_2676CC3FC();

  v47[0] = 0xD00000000000001ALL;
  v47[1] = 0x80000002676D8220;
  v37 = sub_2676CC6EC();
  MEMORY[0x26D5FDD00](v37);

  OUTLINED_FUNCTION_69_4();
  OUTLINED_FUNCTION_68_4();
  v38 = OUTLINED_FUNCTION_15_20();
  static Logger.logAndCrash(_:file:line:)(v38, v39, v40, v41, v42, 32);
  __break(1u);
}

void sub_2676C4C40()
{
  OUTLINED_FUNCTION_21_1();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC038, &qword_2676D5A40);
  v8 = OUTLINED_FUNCTION_4_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_7();
  v143 = v11 - v12;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_4();
  v142 = v14;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10_4();
  v144 = v16;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_24_1();
  v146 = v18;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
  v19 = OUTLINED_FUNCTION_3(v147);
  v150 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_7();
  v141 = v23 - v24;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_24_1();
  v149 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  v28 = OUTLINED_FUNCTION_4_1(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_7();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_24_1();
  v151 = v35;
  v36 = OUTLINED_FUNCTION_54_10();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(v36, v37);
  v39 = OUTLINED_FUNCTION_4_1(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1_7();
  v43 = MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_10_21(v43, v44, v45, v46, v47, v48, v49, v50, v140);
  v52 = MEMORY[0x28223BE20](v51);
  v54 = &v140 - v53;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_79_3();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_23_14();
  sub_2675ED65C(v6, v0, &qword_2801CC168, &unk_2676CF510);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  v57 = OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_21_3(v57, v58, v56);
  if (v68)
  {
    sub_2675ED6C0(v0, &qword_2801CC168, &unk_2676CF510);
    v145 = 0;
    v2 = 0;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_30();
    sub_2676C81C8(v59, v60);
    OUTLINED_FUNCTION_54_10();
    v145 = sub_2676CA89C();
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_14_2(v56);
    (*(v61 + 8))(v0, v56);
  }

  sub_2675ED65C(v4, v1, &qword_2801CC168, &unk_2676CF510);
  OUTLINED_FUNCTION_21_3(v1, 1, v56);
  if (v68)
  {
    sub_2675ED6C0(v1, &qword_2801CC168, &unk_2676CF510);
    if (!v2)
    {
      goto LABEL_20;
    }

LABEL_18:

    goto LABEL_34;
  }

  v140 = v54;
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_30();
  sub_2676C81C8(v62, v63);
  v64 = sub_2676CA89C();
  v66 = v65;

  OUTLINED_FUNCTION_14_2(v56);
  (*(v67 + 8))(v1, v56);
  if (!v2)
  {
    v54 = v140;
    if (!v66)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v54 = v140;
  if (!v66)
  {
    goto LABEL_18;
  }

  v68 = v145 == v64 && v2 == v66;
  if (v68)
  {
  }

  else
  {
    OUTLINED_FUNCTION_31_8();
    OUTLINED_FUNCTION_47_6();

    if ((v64 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_20:
  sub_2675ED65C(v6, v54, &qword_2801CC168, &unk_2676CF510);
  OUTLINED_FUNCTION_21_3(v54, 1, v56);
  if (v68)
  {
    sub_2675ED6C0(v54, &qword_2801CC168, &unk_2676CF510);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
    OUTLINED_FUNCTION_50_7(v151, v70, v71, v69);
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_30();
    sub_2676C81C8(v72, v73);
    OUTLINED_FUNCTION_8_27();
    sub_2676C81C8(v74, v75);
    OUTLINED_FUNCTION_54_10();
    sub_2676CA87C();

    OUTLINED_FUNCTION_14_2(v56);
    v77 = *(v76 + 8);
    v78 = OUTLINED_FUNCTION_87_0();
    v79(v78);
  }

  v80 = v148;
  v81 = OUTLINED_FUNCTION_88_0();
  sub_2675ED65C(v81, v82, v83, v84);
  v85 = OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_21_3(v85, v86, v56);
  v87 = v149;
  if (v68)
  {
    sub_2675ED6C0(v80, &qword_2801CC168, &unk_2676CF510);
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
    OUTLINED_FUNCTION_50_7(v33, v89, v90, v88);
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_30();
    sub_2676C81C8(v91, v92);
    OUTLINED_FUNCTION_8_27();
    sub_2676C81C8(v93, v94);
    OUTLINED_FUNCTION_54_10();
    sub_2676CA87C();

    OUTLINED_FUNCTION_14_2(v56);
    (*(v95 + 8))(v80, v56);
  }

  v96 = v150;
  sub_2676C5F90();
  v98 = v97;
  OUTLINED_FUNCTION_30_4();
  sub_2675ED6C0(v99, v100, v101);
  OUTLINED_FUNCTION_30_4();
  sub_2675ED6C0(v102, v103, v104);
  if (v98)
  {
    v105 = OUTLINED_FUNCTION_120();
    sub_2675ED65C(v105, v106, v107, v108);
    sub_2676CB91C();
    sub_2676CB86C();
    OUTLINED_FUNCTION_1_32();
    sub_2676C81C8(v109, v110);
    v111 = v146;
    OUTLINED_FUNCTION_30_4();
    sub_2676CA8EC();
    v112 = v147;
    OUTLINED_FUNCTION_21_3(v111, 1, v147);
    if (v68)
    {
      v118 = v111;
    }

    else
    {
      v113 = v96[4];
      v113(v87, v111, v112);
      v114 = OUTLINED_FUNCTION_43_8();
      sub_2675ED65C(v114, v115, v116, v117);
      v118 = v144;
      sub_2676CA8EC();
      OUTLINED_FUNCTION_39_6(v118);
      if (!v119)
      {
        v123 = v141;
        v124 = OUTLINED_FUNCTION_30_12();
        (v113)(v124);
        v125 = v96[2];
        v125(v142, v87, v112);
        OUTLINED_FUNCTION_17_2();
        __swift_storeEnumTagSinglePayload(v126, v127, v128, v112);
        v125(v143, v123, v112);
        OUTLINED_FUNCTION_17_2();
        __swift_storeEnumTagSinglePayload(v129, v130, v131, v112);
        sub_2676C67CC();
        OUTLINED_FUNCTION_30_4();
        sub_2675ED6C0(v132, v133, v134);
        OUTLINED_FUNCTION_30_4();
        sub_2675ED6C0(v135, v136, v137);
        v138 = v96[1];
        v138(v123, v112);
        v139 = OUTLINED_FUNCTION_14_3();
        (v138)(v139);
        goto LABEL_34;
      }

      v120 = v96[1];
      v121 = OUTLINED_FUNCTION_14_3();
      v122(v121);
    }

    sub_2675ED6C0(v118, &qword_2801CC038, &qword_2676D5A40);
  }

LABEL_34:
  OUTLINED_FUNCTION_20_1();
}

void sub_2676C5560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  v25 = OUTLINED_FUNCTION_4_1(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_7();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  v35 = OUTLINED_FUNCTION_3(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_79_3();
  MEMORY[0x28223BE20](v40);
  v41 = OUTLINED_FUNCTION_16_3();
  sub_2675ED65C(v41, v42, &qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_21_3(v33, 1, v34);
  if (v47)
  {
    sub_2675ED6C0(v33, &qword_2801CC428, &unk_2676CEDD0);
    OUTLINED_FUNCTION_21_3(v23, 1, v34);
    goto LABEL_31;
  }

  v43 = *(v37 + 32);
  v44 = OUTLINED_FUNCTION_37_7();
  v43(v44);
  sub_2675ED65C(v23, v30, &qword_2801CC428, &unk_2676CEDD0);
  v45 = OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_21_3(v45, v46, v34);
  if (v47)
  {
    v48 = *(v37 + 8);
    v49 = OUTLINED_FUNCTION_58_1();
    v50(v49);
    sub_2675ED6C0(v30, &qword_2801CC428, &unk_2676CEDD0);
    goto LABEL_31;
  }

  v51 = OUTLINED_FUNCTION_6_2();
  v43(v51);
  swift_getKeyPath();
  OUTLINED_FUNCTION_22_11();
  sub_2676C81C8(v52, v53);
  OUTLINED_FUNCTION_2_30();
  sub_2676C81C8(v54, v55);
  OUTLINED_FUNCTION_9_31();
  sub_2676CA8CC();
  OUTLINED_FUNCTION_72_2();
  swift_getKeyPath();
  OUTLINED_FUNCTION_9_31();
  sub_2676CA8CC();
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_30_12();
  sub_2676C5BC4();
  v57 = v56;

  if ((v57 & 1) == 0)
  {
    goto LABEL_30;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_9_31();
  sub_2676CA8CC();
  OUTLINED_FUNCTION_72_2();
  swift_getKeyPath();
  OUTLINED_FUNCTION_9_31();
  sub_2676CA8CC();
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_30_12();
  sub_2676C5BC4();
  v59 = v58;

  if ((v59 & 1) == 0)
  {
    goto LABEL_30;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_9_31();
  sub_2676CA8CC();
  OUTLINED_FUNCTION_72_2();
  swift_getKeyPath();
  OUTLINED_FUNCTION_9_31();
  sub_2676CA8CC();
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_30_12();
  sub_2676C5BC4();
  v61 = v60;

  if ((v61 & 1) == 0)
  {
    goto LABEL_30;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_9_31();
  sub_2676CA8CC();
  OUTLINED_FUNCTION_72_2();
  swift_getKeyPath();
  OUTLINED_FUNCTION_9_31();
  sub_2676CA8CC();
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_30_12();
  sub_2676C5BC4();
  v63 = v62;

  if ((v63 & 1) == 0)
  {
    goto LABEL_30;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_21_12();
  v64 = sub_2676CA89C();
  v66 = v65;

  swift_getKeyPath();
  OUTLINED_FUNCTION_21_12();
  v67 = sub_2676CA89C();
  v69 = v68;

  if (v66)
  {
    if (!v69)
    {
      goto LABEL_29;
    }

    if (v64 == v67 && v66 == v69)
    {
    }

    else
    {
      OUTLINED_FUNCTION_16_3();
      v71 = OUTLINED_FUNCTION_37_11();

      if ((v71 & 1) == 0)
      {
        goto LABEL_30;
      }
    }
  }

  else if (v69)
  {
    goto LABEL_29;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_21_12();
  v72 = sub_2676CA89C();
  v74 = v73;

  swift_getKeyPath();
  OUTLINED_FUNCTION_21_12();
  v75 = sub_2676CA89C();
  v77 = v76;

  if (v74)
  {
    if (v77)
    {
      if (v72 != v75 || v74 != v77)
      {
        OUTLINED_FUNCTION_16_3();
        OUTLINED_FUNCTION_37_11();
      }

      v85 = *(v37 + 8);
      v86 = OUTLINED_FUNCTION_53_1();
      v85(v86);
      v87 = OUTLINED_FUNCTION_58_1();
      v85(v87);
      goto LABEL_31;
    }

LABEL_29:

LABEL_30:
    v79 = *(v37 + 8);
    v80 = OUTLINED_FUNCTION_53_1();
    v79(v80);
    v81 = OUTLINED_FUNCTION_58_1();
    v79(v81);
    goto LABEL_31;
  }

  v82 = *(v37 + 8);
  v83 = OUTLINED_FUNCTION_53_1();
  v82(v83);
  v84 = OUTLINED_FUNCTION_58_1();
  v82(v84);
  if (v77)
  {
  }

LABEL_31:
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2676C5B1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC748, &unk_2676CF7E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2675ED65C(a1, &v6 - v4, &qword_2801CC748, &unk_2676CF7E0);
  return sub_2676CBA5C();
}

void sub_2676C5BC4()
{
  OUTLINED_FUNCTION_21_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_7();
  v62 = v8 - v9;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_24_1();
  v61 = v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  v12 = OUTLINED_FUNCTION_3(v55);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v60 = v54 - v17;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDDB8, &qword_2676D5E90);
  OUTLINED_FUNCTION_14_2(v59);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1_7();
  v58 = v21 - v22;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_10_4();
  v57 = v24;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_24_1();
  v56 = v26;
  v63 = v3;
  v64 = v1;
  v27 = *(v1 + 16);
  v65 = *(v3 + 16);
  if (v65 == v27)
  {
    v28 = 0;
    v54[1] = v14 + 32;
    v54[2] = v14 + 16;
    v54[0] = v14 + 8;
    v69 = v14;
    do
    {
      v66 = v65 == v28;
      if (v65 == v28)
      {
        break;
      }

      v29 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v30 = *(v14 + 72) * v28;
      v31 = *(v14 + 16);
      v32 = v60;
      v33 = v55;
      v31(v60, v63 + v29 + v30, v55);
      v68 = v28 + 1;
      v34 = v64 + v29;
      v35 = v59;
      v36 = *(v59 + 48);
      v37 = v56;
      v38 = v32;
      v39 = *(v69 + 32);
      v39(v56, v38, v33);
      v31((v37 + v36), v34 + v30, v33);
      v40 = v57;
      sub_2675ED65C(v37, v57, &qword_2801CDDB8, &qword_2676D5E90);
      v67 = *(v35 + 48);
      v41 = v61;
      v39(v61, v40, v33);
      v42 = v39;
      OUTLINED_FUNCTION_17_2();
      __swift_storeEnumTagSinglePayload(v43, v44, v45, v33);
      v46 = v58;
      sub_2675ED65C(v37, v58, &qword_2801CDDB8, &qword_2676D5E90);
      v47 = *(v35 + 48);
      v14 = v69;
      v48 = v62;
      v42(v62, v46 + v47, v33);
      OUTLINED_FUNCTION_17_2();
      __swift_storeEnumTagSinglePayload(v49, v50, v51, v33);
      sub_2676C4C40();
      LOBYTE(v42) = v52;
      sub_2675ED6C0(v48, &qword_2801CC168, &unk_2676CF510);
      sub_2675ED6C0(v41, &qword_2801CC168, &unk_2676CF510);
      sub_2675ED6C0(v37, &qword_2801CDDB8, &qword_2676D5E90);
      v53 = *(v14 + 8);
      v53(v46, v33);
      v53(v40 + v67, v33);
      v28 = v68;
    }

    while ((v42 & 1) != 0);
  }

  else
  {
    v66 = 0;
  }

  OUTLINED_FUNCTION_20_1();
}

void sub_2676C5F90()
{
  OUTLINED_FUNCTION_21_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_7();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v104 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  v17 = OUTLINED_FUNCTION_3(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_55_3();
  v23 = MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10_21(v23, v24, v25, v26, v27, v28, v29, v30, v104);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_43_9();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10_4();
  v107 = v33;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v34);
  v36 = &v104 - v35;
  v37 = v5;
  v39 = v38;
  sub_2675ED65C(v37, v15, &qword_2801CC068, &unk_2676D4E00);
  OUTLINED_FUNCTION_21_3(v15, 1, v39);
  if (v43)
  {
    sub_2675ED6C0(v15, &qword_2801CC068, &unk_2676D4E00);
    OUTLINED_FUNCTION_21_3(v3, 1, v39);
LABEL_29:
    OUTLINED_FUNCTION_20_1();
    return;
  }

  v40 = *(v19 + 32);
  v40(v36, v15, v39);
  sub_2675ED65C(v3, v12, &qword_2801CC068, &unk_2676D4E00);
  v41 = OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_21_3(v41, v42, v39);
  v44 = v36;
  if (v43)
  {
    v45 = *(v19 + 8);
    v46 = OUTLINED_FUNCTION_43_8();
    v47(v46);
    sub_2675ED6C0(v12, &qword_2801CC068, &unk_2676D4E00);
    goto LABEL_29;
  }

  v48 = v107;
  v40(v107, v12, v39);
  if (sub_2676C7074(v44))
  {
    v105 = v44;
    v107 = v19;
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_1_8();
      swift_once();
    }

    v72 = sub_2676CBE4C();
    __swift_project_value_buffer(v72, qword_2801CDC90);
    v104 = *(v107 + 16);
    v104(v0, v105, v39);
    v73 = sub_2676CBE2C();
    v74 = sub_2676CC25C();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = OUTLINED_FUNCTION_5_3();
      v76 = swift_slowAlloc();
      v108[0] = v76;
      *v75 = 136315138;
      v77 = OUTLINED_FUNCTION_14_3();
      (v104)(v77);
      v78 = sub_2676CBFBC();
      v80 = v79;
      v81 = OUTLINED_FUNCTION_55_6();
      v82(v81);
      v83 = sub_2676B0B84(v78, v80, v108);

      *(v75 + 4) = v83;
      _os_log_impl(&dword_2675D4000, v73, v74, "== not defined for given ContactAddress subclass: <%s>", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v76);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_2_5();
    }

    else
    {

      v94 = OUTLINED_FUNCTION_55_6();
      v95(v94);
    }

    OUTLINED_FUNCTION_25_18();
    sub_2676CC3FC();
    OUTLINED_FUNCTION_66_5();
    v104(v106, v105, v39);
    v96 = sub_2676CBFBC();
    MEMORY[0x26D5FDD00](v96);

    OUTLINED_FUNCTION_69_4();
    OUTLINED_FUNCTION_68_4();
    v97 = OUTLINED_FUNCTION_15_20();
    v102 = 93;
  }

  else
  {
    if (!sub_2676C7074(v48))
    {
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_27();
      sub_2676C81C8(v49, v50);
      OUTLINED_FUNCTION_65_5();
      v51 = sub_2676CA89C();
      v53 = v52;

      swift_getKeyPath();
      OUTLINED_FUNCTION_65_5();
      v54 = sub_2676CA89C();
      v56 = v55;

      if (v53)
      {
        if (v56)
        {
          if (v51 == v54 && v53 == v56)
          {
          }

          else
          {
            OUTLINED_FUNCTION_120();
            v58 = OUTLINED_FUNCTION_37_11();

            if ((v58 & 1) == 0)
            {
              goto LABEL_28;
            }
          }

          goto LABEL_20;
        }
      }

      else if (!v56)
      {
LABEL_20:
        swift_getKeyPath();
        OUTLINED_FUNCTION_65_5();
        v59 = sub_2676CA89C();
        v61 = v60;

        swift_getKeyPath();
        OUTLINED_FUNCTION_65_5();
        v62 = sub_2676CA89C();
        v64 = v63;

        if (!v61)
        {
          v68 = *(v19 + 8);
          v68(v48, v39);
          v69 = OUTLINED_FUNCTION_43_8();
          (v68)(v69);
          if (v64)
          {
          }

          goto LABEL_29;
        }

        if (v64)
        {
          if (v59 != v62 || v61 != v64)
          {
            OUTLINED_FUNCTION_120();
            OUTLINED_FUNCTION_37_11();
          }

          v70 = *(v19 + 8);
          v70(v48, v39);
          v71 = OUTLINED_FUNCTION_43_8();
          (v70)(v71);
          goto LABEL_29;
        }
      }

LABEL_28:
      v66 = *(v19 + 8);
      v66(v48, v39);
      v67 = OUTLINED_FUNCTION_43_8();
      (v66)(v67);
      goto LABEL_29;
    }

    v105 = v39;
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_1_8();
      swift_once();
    }

    v84 = sub_2676CBE4C();
    __swift_project_value_buffer(v84, qword_2801CDC90);
    v104 = *(v19 + 16);
    v104(v1, v107, v105);
    v85 = sub_2676CBE2C();
    v86 = sub_2676CC25C();
    if (OUTLINED_FUNCTION_46_1(v86))
    {
      OUTLINED_FUNCTION_5_3();
      v108[0] = OUTLINED_FUNCTION_12_2();
      *v19 = 136315138;
      v87 = v105;
      v104(v106, v1, v105);
      v88 = sub_2676CBFBC();
      v90 = v89;
      (*(v19 + 8))(v1, v87);
      v91 = sub_2676B0B84(v88, v90, v108);

      *(v19 + 4) = v91;
      OUTLINED_FUNCTION_33_8(&dword_2675D4000, v92, v93, "== not defined for given ContactAddress subclass: <%s>");
      OUTLINED_FUNCTION_41_8();
      OUTLINED_FUNCTION_2_5();
    }

    else
    {

      (*(v19 + 8))(v1, v105);
    }

    OUTLINED_FUNCTION_25_18();
    sub_2676CC3FC();
    OUTLINED_FUNCTION_66_5();
    v104(v106, v107, v105);
    v103 = sub_2676CBFBC();
    MEMORY[0x26D5FDD00](v103);

    OUTLINED_FUNCTION_69_4();
    OUTLINED_FUNCTION_68_4();
    v97 = OUTLINED_FUNCTION_15_20();
    v102 = 97;
  }

  static Logger.logAndCrash(_:file:line:)(v97, v98, v99, v100, v101, v102);
  __break(1u);
}

void sub_2676C67CC()
{
  OUTLINED_FUNCTION_21_1();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A0, &qword_2676CDAE0);
  v8 = OUTLINED_FUNCTION_4_1(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_7();
  KeyPath = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v127 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC078, &unk_2676D3680);
  v18 = OUTLINED_FUNCTION_4_1(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_7();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_24_1();
  v134 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC038, &qword_2676D5A40);
  v27 = OUTLINED_FUNCTION_4_1(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_43_9();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_10_4();
  v129 = v31;
  OUTLINED_FUNCTION_12_0();
  v33 = MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10_21(v33, v34, v35, v36, v37, v38, v39, v40, v127);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_10_4();
  v130 = v42;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_79_3();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_23_14();
  v133 = v6;
  v45 = OUTLINED_FUNCTION_88_0();
  sub_2675ED65C(v45, v46, &qword_2801CC038, &qword_2676D5A40);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
  OUTLINED_FUNCTION_39_6(v0);
  v132 = v23;
  if (v63)
  {
    sub_2675ED6C0(v0, &qword_2801CC038, &qword_2676D5A40);
    v50 = 0;
    v52 = 0;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_1_32();
    sub_2676C81C8(v48, v49);
    OUTLINED_FUNCTION_14_3();
    v50 = sub_2676CA89C();
    v52 = v51;

    OUTLINED_FUNCTION_14_2(v47);
    (*(v53 + 8))(v0, v47);
  }

  sub_2675ED65C(v4, v1, &qword_2801CC038, &qword_2676D5A40);
  OUTLINED_FUNCTION_39_6(v1);
  if (v63)
  {
    sub_2675ED6C0(v1, &qword_2801CC038, &qword_2676D5A40);
    if (v52)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v128 = v50;
    v2 = v4;
    v4 = v16;
    v16 = KeyPath;
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_1_32();
    sub_2676C81C8(v54, v55);
    v56 = sub_2676CA89C();
    v58 = v57;

    OUTLINED_FUNCTION_14_2(v47);
    v60 = *(v59 + 8);
    v61 = OUTLINED_FUNCTION_43_2();
    v62(v61);
    if (v52)
    {
      if (v58)
      {
        OUTLINED_FUNCTION_52_3();
        v63 = v128 == v56 && v52 == v58;
        if (v63)
        {
        }

        else
        {
          v64 = OUTLINED_FUNCTION_37_11();

          if ((v64 & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        goto LABEL_20;
      }

LABEL_18:

      goto LABEL_35;
    }

    OUTLINED_FUNCTION_52_3();
    if (v58)
    {
      goto LABEL_18;
    }
  }

LABEL_20:
  v65 = v133;
  v66 = v130;
  sub_2675ED65C(v133, v130, &qword_2801CC038, &qword_2676D5A40);
  OUTLINED_FUNCTION_39_6(v66);
  if (v63)
  {
    sub_2675ED6C0(v66, &qword_2801CC038, &qword_2676D5A40);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C8, &qword_2676CDB00);
    OUTLINED_FUNCTION_50_7(v134, v68, v69, v67);
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_1_32();
    sub_2676C81C8(v70, v71);
    OUTLINED_FUNCTION_4_35();
    sub_2676C81C8(v72, v73);
    OUTLINED_FUNCTION_43_2();
    sub_2676CA87C();

    OUTLINED_FUNCTION_14_2(v47);
    v75 = *(v74 + 8);
    v76 = OUTLINED_FUNCTION_37_7();
    v77(v76);
  }

  v78 = v131;
  v79 = v132;
  sub_2675ED65C(v4, v131, &qword_2801CC038, &qword_2676D5A40);
  OUTLINED_FUNCTION_39_6(v78);
  v127 = v4;
  if (v63)
  {
    sub_2675ED6C0(v78, &qword_2801CC038, &qword_2676D5A40);
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C8, &qword_2676CDB00);
    OUTLINED_FUNCTION_50_7(v79, v81, v82, v80);
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_1_32();
    sub_2676C81C8(v83, v84);
    OUTLINED_FUNCTION_4_35();
    sub_2676C81C8(v85, v86);
    OUTLINED_FUNCTION_37_7();
    sub_2676CA87C();

    OUTLINED_FUNCTION_14_2(v47);
    v88 = *(v87 + 8);
    v89 = OUTLINED_FUNCTION_43_2();
    v90(v89);
  }

  v91 = sub_2676C724C(v134, v79);
  OUTLINED_FUNCTION_30_4();
  sub_2675ED6C0(v92, v93, v94);
  OUTLINED_FUNCTION_30_4();
  sub_2675ED6C0(v95, v96, v97);
  if (v91)
  {
    v98 = v129;
    sub_2675ED65C(v65, v129, &qword_2801CC038, &qword_2676D5A40);
    OUTLINED_FUNCTION_39_6(v98);
    if (v63)
    {
      sub_2675ED6C0(v98, &qword_2801CC038, &qword_2676D5A40);
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A8, &qword_2676D5AB0);
      OUTLINED_FUNCTION_50_7(v16, v100, v101, v99);
    }

    else
    {
      swift_getKeyPath();
      OUTLINED_FUNCTION_1_32();
      sub_2676C81C8(v102, v103);
      OUTLINED_FUNCTION_0_32();
      sub_2676C81C8(v104, v105);
      sub_2676CA87C();

      OUTLINED_FUNCTION_14_2(v47);
      v107 = *(v106 + 8);
      v108 = OUTLINED_FUNCTION_37_7();
      v109(v108);
    }

    sub_2675ED65C(v127, v2, &qword_2801CC038, &qword_2676D5A40);
    OUTLINED_FUNCTION_39_6(v2);
    if (v63)
    {
      sub_2675ED6C0(v2, &qword_2801CC038, &qword_2676D5A40);
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A8, &qword_2676D5AB0);
      OUTLINED_FUNCTION_50_7(KeyPath, v111, v112, v110);
    }

    else
    {
      swift_getKeyPath();
      OUTLINED_FUNCTION_1_32();
      sub_2676C81C8(v113, v114);
      OUTLINED_FUNCTION_0_32();
      sub_2676C81C8(v115, v116);
      sub_2676CA87C();

      OUTLINED_FUNCTION_14_2(v47);
      v118 = *(v117 + 8);
      v119 = OUTLINED_FUNCTION_16_3();
      v120(v119);
    }

    sub_2676C7508();
    OUTLINED_FUNCTION_30_4();
    sub_2675ED6C0(v121, v122, v123);
    OUTLINED_FUNCTION_30_4();
    sub_2675ED6C0(v124, v125, v126);
  }

LABEL_35:
  OUTLINED_FUNCTION_45_8();
  OUTLINED_FUNCTION_20_1();
}

BOOL sub_2676C7074(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDDA0, &qword_2676D5CF8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  (*(*(v10 - 8) + 16))(v5, a1, v10);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v10);
  sub_2676CB6BC();
  sub_2676CB78C();
  sub_2676C81C8(&qword_2801CDDA8, MEMORY[0x277D5C568]);
  sub_2676CA8EC();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDDB0, &unk_2676D5D00);
  v12 = __swift_getEnumTagSinglePayload(v9, 1, v11) != 1;
  sub_2675ED6C0(v9, &qword_2801CDDA0, &qword_2676D5CF8);
  return v12;
}

uint64_t sub_2676C724C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_43_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_7();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_23_14();
  v14 = OUTLINED_FUNCTION_88_0();
  sub_2675ED65C(v14, v15, &qword_2801CC078, &unk_2676D3680);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C8, &qword_2676CDB00);
  v17 = OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_21_3(v17, v18, v16);
  if (v31)
  {
    sub_2675ED6C0(v2, &qword_2801CC078, &unk_2676D3680);
    v21 = 0;
    v23 = 0;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_4_35();
    sub_2676C81C8(v19, v20);
    v21 = sub_2676CA89C();
    v23 = v22;

    OUTLINED_FUNCTION_14_2(v16);
    (*(v24 + 8))(v2, v16);
  }

  sub_2675ED65C(a2, v12, &qword_2801CC078, &unk_2676D3680);
  OUTLINED_FUNCTION_21_3(v12, 1, v16);
  if (v31)
  {
    sub_2675ED6C0(v12, &qword_2801CC078, &unk_2676D3680);
    if (v23)
    {
LABEL_15:
      v32 = 0;
LABEL_20:

      return v32 & 1;
    }
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_4_35();
    sub_2676C81C8(v25, v26);
    v27 = sub_2676CA89C();
    v29 = v28;

    OUTLINED_FUNCTION_14_2(v16);
    (*(v30 + 8))(v12, v16);
    if (v23)
    {
      if (v29)
      {
        v31 = v21 == v27 && v23 == v29;
        if (v31)
        {

          v32 = 1;
        }

        else
        {
          v32 = OUTLINED_FUNCTION_37_11();
        }

        goto LABEL_20;
      }

      goto LABEL_15;
    }

    if (v29)
    {
      v32 = 0;
      goto LABEL_20;
    }
  }

  v32 = 1;
  return v32 & 1;
}

void sub_2676C7508()
{
  OUTLINED_FUNCTION_21_1();
  v5 = v4;
  v7 = v6;
  v8 = &qword_2801CC0A0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A0, &qword_2676CDAE0);
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_7();
  v148 = v13 - v14;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10_4();
  v149 = v16;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_10_4();
  v151 = v18;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_10_4();
  v150 = v20;
  OUTLINED_FUNCTION_12_0();
  v22 = MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_10_21(v22, v23, v24, v25, v26, v27, v28, v29, v147);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_10_4();
  v153 = v31;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10_4();
  v155 = v33;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_10_4();
  v154 = v35;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_38_6();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_43_9();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_55_3();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_23_14();
  sub_2675ED65C(v7, v0, &qword_2801CC0A0, &qword_2676CDAE0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A8, &qword_2676D5AB0);
  OUTLINED_FUNCTION_18_5(v0);
  if (v56)
  {
    sub_2675ED6C0(v0, &qword_2801CC0A0, &qword_2676CDAE0);
    v43 = 0;
    v8 = 0;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_0_32();
    sub_2676C81C8(v41, v42);
    OUTLINED_FUNCTION_26_13();
    v43 = sub_2676CA89C();
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_25_3();
    v45 = *(v44 + 8);
    v46 = OUTLINED_FUNCTION_29_14();
    v47(v46);
  }

  v48 = OUTLINED_FUNCTION_43_2();
  sub_2675ED65C(v48, v49, v50, v51);
  OUTLINED_FUNCTION_18_5(v2);
  if (v56)
  {
    sub_2675ED6C0(v2, &qword_2801CC0A0, &qword_2676CDAE0);
    if (v8)
    {
      goto LABEL_105;
    }
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_0_32();
    sub_2676C81C8(v52, v53);
    OUTLINED_FUNCTION_18_15();
    v54 = sub_2676CA89C();
    OUTLINED_FUNCTION_70_5();
    OUTLINED_FUNCTION_25_3();
    (*(v55 + 8))(v2, v40);
    if (v8)
    {
      if (!v2)
      {
        goto LABEL_105;
      }

      v56 = v43 == v54 && v8 == v2;
      if (v56)
      {
      }

      else
      {
        OUTLINED_FUNCTION_31_8();
        OUTLINED_FUNCTION_47_6();

        if ((v54 & 1) == 0)
        {
          goto LABEL_106;
        }
      }
    }

    else if (v2)
    {
      goto LABEL_105;
    }
  }

  v57 = OUTLINED_FUNCTION_87_0();
  sub_2675ED65C(v57, v58, v59, v60);
  OUTLINED_FUNCTION_18_5(v3);
  if (v56)
  {
    sub_2675ED6C0(v3, &qword_2801CC0A0, &qword_2676CDAE0);
    v63 = 0;
    v8 = 0;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_0_32();
    sub_2676C81C8(v61, v62);
    OUTLINED_FUNCTION_26_13();
    v63 = sub_2676CA89C();
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_25_3();
    (*(v64 + 8))(v3, v40);
  }

  sub_2675ED65C(v5, v1, &qword_2801CC0A0, &qword_2676CDAE0);
  OUTLINED_FUNCTION_18_5(v1);
  if (v56)
  {
    sub_2675ED6C0(v1, &qword_2801CC0A0, &qword_2676CDAE0);
    if (v8)
    {
      goto LABEL_105;
    }
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_0_32();
    sub_2676C81C8(v65, v66);
    OUTLINED_FUNCTION_40_6();
    v67 = sub_2676CA89C();
    v69 = v68;

    OUTLINED_FUNCTION_25_3();
    v71 = *(v70 + 8);
    v72 = OUTLINED_FUNCTION_29_14();
    v73(v72);
    if (v8)
    {
      if (!v69)
      {
        goto LABEL_105;
      }

      if (v63 == v67 && v8 == v69)
      {
      }

      else
      {
        sub_2676CC59C();
        OUTLINED_FUNCTION_47_6();

        if ((v67 & 1) == 0)
        {
          goto LABEL_106;
        }
      }
    }

    else if (v69)
    {
      goto LABEL_105;
    }
  }

  sub_2675ED65C(v7, v154, &qword_2801CC0A0, &qword_2676CDAE0);
  OUTLINED_FUNCTION_18_5(v154);
  if (v56)
  {
    sub_2675ED6C0(v154, &qword_2801CC0A0, &qword_2676CDAE0);
    v77 = 0;
    v8 = 0;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_0_32();
    sub_2676C81C8(v75, v76);
    OUTLINED_FUNCTION_26_13();
    v77 = sub_2676CA89C();
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_25_3();
    v79 = *(v78 + 8);
    v80 = OUTLINED_FUNCTION_29_14();
    v81(v80);
  }

  v82 = OUTLINED_FUNCTION_6_2();
  sub_2675ED65C(v82, v83, v84, v85);
  OUTLINED_FUNCTION_18_5(v155);
  if (v56)
  {
    sub_2675ED6C0(v155, &qword_2801CC0A0, &qword_2676CDAE0);
    if (v8)
    {
      goto LABEL_105;
    }
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_0_32();
    sub_2676C81C8(v86, v87);
    OUTLINED_FUNCTION_18_15();
    v88 = sub_2676CA89C();
    v90 = v89;

    OUTLINED_FUNCTION_25_3();
    v92 = *(v91 + 8);
    v93 = OUTLINED_FUNCTION_29_14();
    v94(v93);
    if (v8)
    {
      if (!v90)
      {
        goto LABEL_105;
      }

      if (v77 == v88 && v8 == v90)
      {
      }

      else
      {
        sub_2676CC59C();
        OUTLINED_FUNCTION_47_6();

        if ((v88 & 1) == 0)
        {
          goto LABEL_106;
        }
      }
    }

    else if (v90)
    {
      goto LABEL_105;
    }
  }

  sub_2675ED65C(v7, v153, &qword_2801CC0A0, &qword_2676CDAE0);
  OUTLINED_FUNCTION_18_5(v153);
  if (v56)
  {
    sub_2675ED6C0(v153, &qword_2801CC0A0, &qword_2676CDAE0);
    v98 = 0;
    v8 = 0;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_0_32();
    sub_2676C81C8(v96, v97);
    OUTLINED_FUNCTION_26_13();
    v98 = sub_2676CA89C();
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_25_3();
    v100 = *(v99 + 8);
    v101 = OUTLINED_FUNCTION_29_14();
    v102(v101);
  }

  v103 = OUTLINED_FUNCTION_53_1();
  sub_2675ED65C(v103, v104, v105, v106);
  OUTLINED_FUNCTION_18_5(v152);
  if (v56)
  {
    sub_2675ED6C0(v152, &qword_2801CC0A0, &qword_2676CDAE0);
    if (v8)
    {
      goto LABEL_105;
    }
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_0_32();
    sub_2676C81C8(v107, v108);
    OUTLINED_FUNCTION_18_15();
    v109 = sub_2676CA89C();
    OUTLINED_FUNCTION_70_5();
    OUTLINED_FUNCTION_25_3();
    (*(v110 + 8))(v152, v40);
    if (v8)
    {
      if (!v152)
      {
        goto LABEL_105;
      }

      if (v98 == v109 && v8 == v152)
      {
      }

      else
      {
        OUTLINED_FUNCTION_31_8();
        OUTLINED_FUNCTION_47_6();

        if ((v109 & 1) == 0)
        {
          goto LABEL_106;
        }
      }
    }

    else if (v152)
    {
      goto LABEL_105;
    }
  }

  sub_2675ED65C(v7, v150, &qword_2801CC0A0, &qword_2676CDAE0);
  OUTLINED_FUNCTION_18_5(v150);
  if (v56)
  {
    sub_2675ED6C0(v150, &qword_2801CC0A0, &qword_2676CDAE0);
    v114 = 0;
    v116 = 0;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_0_32();
    sub_2676C81C8(v112, v113);
    OUTLINED_FUNCTION_40_6();
    v114 = sub_2676CA89C();
    v116 = v115;

    OUTLINED_FUNCTION_25_3();
    v118 = *(v117 + 8);
    v119 = OUTLINED_FUNCTION_29_14();
    v120(v119);
  }

  sub_2675ED65C(v5, v151, &qword_2801CC0A0, &qword_2676CDAE0);
  OUTLINED_FUNCTION_18_5(v151);
  if (v56)
  {
    sub_2675ED6C0(v151, &qword_2801CC0A0, &qword_2676CDAE0);
    if (v116)
    {
      goto LABEL_105;
    }

LABEL_91:
    sub_2675ED65C(v7, v149, &qword_2801CC0A0, &qword_2676CDAE0);
    OUTLINED_FUNCTION_18_5(v149);
    if (v56)
    {
      sub_2675ED6C0(v149, &qword_2801CC0A0, &qword_2676CDAE0);
      v128 = 0;
      v130 = 0;
    }

    else
    {
      swift_getKeyPath();
      OUTLINED_FUNCTION_0_32();
      sub_2676C81C8(v126, v127);
      OUTLINED_FUNCTION_40_6();
      v128 = sub_2676CA89C();
      v130 = v129;

      OUTLINED_FUNCTION_25_3();
      v132 = *(v131 + 8);
      v133 = OUTLINED_FUNCTION_29_14();
      v134(v133);
    }

    v135 = OUTLINED_FUNCTION_43_2();
    sub_2675ED65C(v135, v136, v137, v138);
    OUTLINED_FUNCTION_18_5(v148);
    if (v56)
    {
      sub_2675ED6C0(v148, &qword_2801CC0A0, &qword_2676CDAE0);
      if (!v130)
      {
        goto LABEL_106;
      }
    }

    else
    {
      swift_getKeyPath();
      OUTLINED_FUNCTION_0_32();
      sub_2676C81C8(v139, v140);
      OUTLINED_FUNCTION_18_15();
      v141 = sub_2676CA89C();
      OUTLINED_FUNCTION_70_5();
      OUTLINED_FUNCTION_25_3();
      v143 = *(v142 + 8);
      v144 = OUTLINED_FUNCTION_120();
      v145(v144);
      if (v130)
      {
        if (v148)
        {
          if (v128 == v141 && v130 == v148)
          {
          }

          else
          {
            OUTLINED_FUNCTION_37_11();
            OUTLINED_FUNCTION_47_6();
          }
        }
      }

      else if (!v148)
      {
        goto LABEL_106;
      }
    }

    goto LABEL_105;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_0_32();
  sub_2676C81C8(v121, v122);
  OUTLINED_FUNCTION_18_15();
  v123 = sub_2676CA89C();
  OUTLINED_FUNCTION_70_5();
  OUTLINED_FUNCTION_25_3();
  (*(v124 + 8))(v151, v40);
  if (!v116)
  {
    if (v151)
    {
      goto LABEL_105;
    }

    goto LABEL_91;
  }

  if (v151)
  {
    if (v114 == v123 && v116 == v151)
    {
    }

    else
    {
      OUTLINED_FUNCTION_37_11();
      OUTLINED_FUNCTION_47_6();

      if ((v114 & 1) == 0)
      {
        goto LABEL_106;
      }
    }

    goto LABEL_91;
  }

LABEL_105:

LABEL_106:
  OUTLINED_FUNCTION_45_8();
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2676C81C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_31_8()
{

  return sub_2676CC59C();
}

void OUTLINED_FUNCTION_33_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_37_11()
{

  return sub_2676CC59C();
}

void OUTLINED_FUNCTION_41_8()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x26D5FEA80);
}

uint64_t OUTLINED_FUNCTION_47_6()
{
}

uint64_t OUTLINED_FUNCTION_50_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_51_8()
{
}

void OUTLINED_FUNCTION_66_5()
{

  JUMPOUT(0x26D5FDD00);
}

uint64_t OUTLINED_FUNCTION_68_4()
{
  v2 = *(v0 - 96);
  v3 = *(v0 - 88);
}

void OUTLINED_FUNCTION_69_4()
{

  JUMPOUT(0x26D5FDD00);
}

uint64_t OUTLINED_FUNCTION_70_5()
{
}

uint64_t OUTLINED_FUNCTION_71_2()
{
}

uint64_t OUTLINED_FUNCTION_72_2()
{
}

uint64_t sub_2676C854C()
{
  v0 = sub_2676CA05C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDDC0, &qword_2676D5E98);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDDC8, &unk_2676D5EA0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v25 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  sub_2676C9FEC();
  (*(v1 + 104))(v17, *MEMORY[0x277D5DA70], v0);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v0);
  v20 = *(v6 + 56);
  sub_2676C88BC(v19, v9);
  sub_2676C88BC(v17, &v9[v20]);
  OUTLINED_FUNCTION_9_15(v9);
  if (!v22)
  {
    sub_2676C88BC(v9, v14);
    OUTLINED_FUNCTION_9_15(&v9[v20]);
    if (!v22)
    {
      (*(v1 + 32))(v4, &v9[v20], v0);
      sub_2676C892C();
      v21 = sub_2676CBF1C();
      v23 = *(v1 + 8);
      v23(v4, v0);
      sub_2675E35CC(v17, &qword_2801CDDC8, &unk_2676D5EA0);
      sub_2675E35CC(v19, &qword_2801CDDC8, &unk_2676D5EA0);
      v23(v14, v0);
      sub_2675E35CC(v9, &qword_2801CDDC8, &unk_2676D5EA0);
      return v21 & 1;
    }

    OUTLINED_FUNCTION_0_33(v17);
    OUTLINED_FUNCTION_0_33(v19);
    (*(v1 + 8))(v14, v0);
LABEL_9:
    sub_2675E35CC(v9, &qword_2801CDDC0, &qword_2676D5E98);
    v21 = 0;
    return v21 & 1;
  }

  OUTLINED_FUNCTION_0_33(v17);
  OUTLINED_FUNCTION_0_33(v19);
  OUTLINED_FUNCTION_9_15(&v9[v20]);
  if (!v22)
  {
    goto LABEL_9;
  }

  sub_2675E35CC(v9, &qword_2801CDDC8, &unk_2676D5EA0);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_2676C88BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDDC8, &unk_2676D5EA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2676C892C()
{
  result = qword_2801CDDD0;
  if (!qword_2801CDDD0)
  {
    sub_2676CA05C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CDDD0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_33(uint64_t a1)
{

  return sub_2675E35CC(a1, v1, v2);
}