uint64_t sub_2314AA1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  v8 = v7;
  v12 = OUTLINED_FUNCTION_18_11(a1, a2, a3);
  OUTLINED_FUNCTION_2_39(v12, v13);
  if (v16)
  {
    __break(1u);
LABEL_14:
    result = sub_231586C84();
    __break(1u);
    return result;
  }

  v17 = v14;
  v18 = v15;
  v19 = OUTLINED_FUNCTION_23_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
  if (sub_231586A64())
  {
    v21 = *v7;
    sub_23149C888(a2, a3);
    OUTLINED_FUNCTION_30_4();
    if (!v23)
    {
      goto LABEL_14;
    }

    v17 = v22;
  }

  v24 = *v8;
  if (v18)
  {
    v25 = *(v24 + 56);
    v26 = a7(0);
    OUTLINED_FUNCTION_8(v26);
    v28 = *(v27 + 40);
    v29 = v25 + *(v27 + 72) * v17;
    OUTLINED_FUNCTION_34_5();

    __asm { BRAA            X3, X16 }
  }

  sub_2314AA7E4(v17, a2, a3, a1, v24);
  OUTLINED_FUNCTION_34_5();
}

void OUTLINED_FUNCTION_39_0()
{

  sub_2314F16BC();
}

unint64_t OUTLINED_FUNCTION_39_3()
{
  v4 = *v2;

  return sub_23149C888(v1, v0);
}

unint64_t sub_2314AA3E8()
{
  result = qword_280D6FE88;
  if (!qword_280D6FE88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D6FE88);
  }

  return result;
}

uint64_t sub_2314AA42C(uint64_t a1)
{
  v2 = sub_231586014();
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5();
  v10 = (v9 - v8);
  v11 = sub_231586094();
  v12 = OUTLINED_FUNCTION_4_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  sub_231586074();
  *v10 = a1;
  (*(v5 + 104))(v10, *MEMORY[0x277D85188], v2);
  MEMORY[0x23192FD80](v19, v10);
  (*(v5 + 8))(v10, v2);
  return (*(v14 + 8))(v19, v11);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2314AA758(uint64_t a1)
{
  result = OUTLINED_FUNCTION_11_4(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2314AA79C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2314AA7E4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_5_30(a1, a2, a3, a4, a5);
  v9 = *(v8 + 56);
  v11 = v10(0);
  OUTLINED_FUNCTION_3_37(v11);
  result = (*(v12 + 32))(v9 + *(v12 + 72) * a1, a4);
  v14 = *(a5 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v16;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_43_1()
{

  return swift_allocObject();
}

uint64_t sub_2314AA8B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

char *sub_2314AA8FC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

uint64_t sub_2314AA920(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_231586864();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t SignalCachingStrategyOption.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  switch(*(v0 + 16))
  {
    case 1:
      v3 = 1;
      goto LABEL_7;
    case 2:
      v3 = 2;
      goto LABEL_7;
    case 3:
      v3 = 3;
      goto LABEL_7;
    case 4:
      v3 = 4;
      goto LABEL_7;
    case 5:
      if (v2 | v1)
      {
        if (v2 ^ 1 | v1)
        {
          v5 = 7;
        }

        else
        {
          v5 = 6;
        }
      }

      else
      {
        v5 = 5;
      }

      return MEMORY[0x231930A00](v5);
    default:
      v3 = 0;
LABEL_7:
      MEMORY[0x231930A00](v3);
      OUTLINED_FUNCTION_3_28();

      return sub_231586274();
  }
}

void *sub_2314AAA54(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  if (MEMORY[0x277D84F90] >> 62 && sub_231586864())
  {
    v3 = sub_2314B8A90(MEMORY[0x277D84F90]);
  }

  else
  {
    v3 = MEMORY[0x277D84FA0];
  }

  v2[4] = v3;
  return v2;
}

uint64_t sub_2314AAAAC()
{
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDE0, &qword_23158DAA0);
  sub_231586204();
  sub_231586274();
}

void sub_2314AAB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_17_10();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = *v9;
  if ((*v9 & 0xC000000000000001) == 0)
  {
    _s4NodeCMa();
    v18 = *(v15 + 40);
    sub_231586D14();
    sub_2314AAAAC();
    sub_231586D44();
    v19 = *(v15 + 32);
    OUTLINED_FUNCTION_17_7();
    v22 = ~v21;
    while (1)
    {
      v23 = v20 & v22;
      if (((*(v15 + 56 + (((v20 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v22)) & 1) == 0)
      {
        v28 = *v9;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = *v9;

        sub_2314AADB0(v30, v23, isUniquelyReferenced_nonNull_native);
        *v9 = v31;
        goto LABEL_16;
      }

      if (sub_2314AB36C(*(*(v15 + 48) + 8 * v23), v12))
      {
        break;
      }

      v20 = v23 + 1;
    }

    *v14 = *(*(v15 + 48) + 8 * v23);

    goto LABEL_18;
  }

  if (v15 < 0)
  {
    v16 = *v9;
  }

  else
  {
    v16 = v15 & 0xFFFFFFFFFFFFFF8;
  }

  v17 = sub_231586874();

  if (v17)
  {

    _s4NodeCMa();
    swift_dynamicCast();
    *v14 = a9;
LABEL_18:
    OUTLINED_FUNCTION_16_9();
    return;
  }

  v24 = sub_231586864();
  if (!__OFADD__(v24, 1))
  {
    v25 = sub_231542614(v16, v24 + 1);
    v26 = *(v25 + 16);
    if (*(v25 + 24) <= v26)
    {
      sub_2314AB120(v26 + 1);
    }

    sub_231542D3C(v27, v25);

    *v10 = v25;
LABEL_16:
    *v14 = v12;
    goto LABEL_18;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_24_0()
{
  v2 = *(v0 - 320);

  return sub_231585FE4();
}

__n128 *OUTLINED_FUNCTION_67(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v3;
  result[2].n128_u64[1] = v2;
  result[3].n128_u64[0] = v4;
  return result;
}

void sub_2314AADB0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2314AB120(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_2314AAEFC(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      sub_231586D14();
      sub_2314AAAAC();
      v14 = sub_231586D44();
      v15 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v12 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          goto LABEL_7;
        }

        _s4NodeCMa();
        if (sub_2314AB36C(*(*(v12 + 48) + 8 * a2), a1))
        {
          goto LABEL_15;
        }

        v14 = a2 + 1;
      }
    }

    sub_2314AB56C();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = a1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_231586C74();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

uint64_t sub_2314AAEFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B110, &unk_231588040);
  result = sub_231586904();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_231586D14();

        sub_2314AAAAC();
        result = sub_231586D44();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
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

          v2 = v26;
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

uint64_t sub_2314AB120(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B110, &unk_231588040);
  result = sub_231586904();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
  v7 = 0;
  v8 = (v3 + 56);
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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_23149BEE0(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_231586D14();
    sub_2314AAAAC();
    result = sub_231586D44();
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
    if (!v11)
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

LABEL_31:
  __break(1u);
  return result;
}

BOOL sub_2314AB380()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *(v0 + 32);
    }

    v3 = sub_231586864();
  }

  else
  {
    v3 = *(v1 + 16);
  }

  return v3 == 0;
}

uint64_t sub_2314AB3FC(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    _s4NodeCMa();
    v7 = *(v3 + 40);
    sub_231586D14();
    sub_2314AAAAC();
    v8 = sub_231586D44();
    v9 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v10 = v8 & v9;
      if (((*(v3 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
      {
        break;
      }

      if (sub_2314AB36C(*(*(v3 + 48) + 8 * v10), a1))
      {
        v11 = *v1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v13 = *v1;
        v15 = *v1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2314AB56C();
          v13 = v15;
        }

        v6 = *(*(v13 + 48) + 8 * v10);
        sub_2314AB684(v10);
        *v1 = v15;
        return v6;
      }

      v8 = v10 + 1;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = sub_2315868A4();

  if ((v5 & 1) == 0)
  {

    return 0;
  }

  v6 = sub_23152B1D8(v4, a1);

  return v6;
}

void sub_2314AB56C()
{
  v5 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B110, &unk_231588040);
  v6 = *v0;
  v7 = sub_2315868F4();
  if (*(v6 + 16))
  {
    v8 = OUTLINED_FUNCTION_5_23();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      memmove(v8, v1, 8 * v9);
    }

    OUTLINED_FUNCTION_3_30();
    while (v4)
    {
      OUTLINED_FUNCTION_15_8();
LABEL_15:
      *(*(v7 + 48) + 8 * (v13 | (v2 << 6))) = *(*(v6 + 48) + 8 * (v13 | (v2 << 6)));
    }

    v14 = v2;
    while (1)
    {
      v2 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v2 >= v3)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v1 + v2))
      {
        OUTLINED_FUNCTION_9_0();
        v4 = v16 & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v5 = v7;
  }
}

unint64_t sub_2314AB684(unint64_t result)
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

    v9 = sub_2315867E4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_231586D14();

        sub_2314AAAAC();
        v13 = sub_231586D44();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_15:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
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

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2314AB834(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_231586814();
  }

  v3 = -1 << *(a1 + 32);
  result = sub_2315867D4();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_2314AB894(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v6 = a4;
      }

      else
      {
        v6 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x231930560](result, a2, v6);
      _s4NodeCMa();
      swift_dynamicCast();
      return v11;
    }

LABEL_25:
    __break(1u);
    return result;
  }

  if (a3)
  {
    _s4NodeCMa();
    if (sub_231586844() == *(a4 + 36))
    {
      sub_231586854();
      swift_dynamicCast();
      v7 = *(a4 + 40);
      sub_231586D14();
      sub_2314AAAAC();
      v8 = sub_231586D44();
      v9 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v5 = v8 & v9;
        if (((*(a4 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
        {
          goto LABEL_24;
        }

        if (sub_2314AB36C(*(*(a4 + 48) + 8 * v5), v11))
        {
          goto LABEL_18;
        }

        v8 = v5 + 1;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:

    __break(1u);
    goto LABEL_25;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_18:
  }

  v10 = *(*(a4 + 48) + 8 * v5);
}

uint64_t sub_2314ABA68(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2314ABA74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignalRepository.PrewarmStatus.Record(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314ABAD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_8(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_3_10();
  v8(v7);
  return a2;
}

uint64_t sub_2314ABB48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_231585884();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

double sub_2314ABBD0()
{
  v0 = sub_2314A1DFC(5, 1);

  return v0;
}

uint64_t OUTLINED_FUNCTION_26_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 16) = a1;
}

uint64_t OUTLINED_FUNCTION_26_1()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_26_4()
{

  JUMPOUT(0x231931280);
}

void OUTLINED_FUNCTION_26_6(uint64_t a1@<X8>)
{
  v6 = (a1 + 16 * v4);
  *v6 = v2;
  v6[1] = v3;
  *(*(v1 + 56) + 8 * v4) = v5;
  v7 = *(v1 + 16);
}

uint64_t static DomainRecencySignal.signalName.getter()
{
  if (qword_280D6D6B0 != -1)
  {
    OUTLINED_FUNCTION_0_28();
  }

  v0 = qword_280D6D6B8;

  return v0;
}

uint64_t sub_2314ABD30(uint64_t a1)
{
  v2 = type metadata accessor for SignalRepository.PrewarmStatus.Record(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static DomainRecencyRankSignal.signalName.getter()
{
  if (qword_280D6CEE8 != -1)
  {
    OUTLINED_FUNCTION_0_27();
  }

  v0 = qword_280D6CEF0;

  return v0;
}

uint64_t static DomainFrequencySignal.signalName.getter()
{
  if (qword_280D6D2E0 != -1)
  {
    OUTLINED_FUNCTION_0_26();
  }

  v0 = qword_280D6D2E8;

  return v0;
}

uint64_t sub_2314ABE44()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t block_destroy_helper_3(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  v1 = *(a1 + 40);
}

uint64_t sub_2314ABF54(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_231585D34();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2314ABFDC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_231585D34();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2314AC05C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314AC134(uint64_t a1, uint64_t a2)
{
  v4 = sub_231585884();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2314AC17C(uint64_t a1, uint64_t a2)
{
  v4 = sub_231585884();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2314AC1D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_231585D34();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2314AC258(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_231585D34();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2314AC2D8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314AC32C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2314AC364()
{
  v1 = sub_231585884();
  OUTLINED_FUNCTION_4_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = (v7 + v4 + v5) & ~v4;
  v9 = (v7 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);

  v11 = *(v0 + 24);

  v12 = *(v3 + 8);
  v12(v0 + v5, v1);
  v12(v0 + v8, v1);
  v13 = *(v0 + v9 + 8);

  OUTLINED_FUNCTION_12_3();

  return MEMORY[0x2821FE8E8](v14, v15, v16);
}

uint64_t sub_2314AC460()
{
  v1 = sub_231585884();
  OUTLINED_FUNCTION_11_2(v1);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);
  v9 = *(v0 + v8);

  OUTLINED_FUNCTION_12_3();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

uint64_t sub_2314AC550()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 40);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2314AC604()
{
  v1 = sub_231585884();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2314AC6CC()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2314AC730()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2314AC770()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2314AC7A8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2314AC7E0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2314AC888()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2314AC8D0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2314AC918()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2314AC950()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2314AC9A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2314AC9E8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2314ACA2C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2314ACA74()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2314ACB08()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2314ACB50()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2314ACB88()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  v4 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2314ACBF8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2314ACC38()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2314ACCE0()
{
  v3 = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_42(v3);
  if (*(v5 + 84) != v1)
  {
    return OUTLINED_FUNCTION_38(*(v0 + *(v2 + 20) + 8));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v4);
}

uint64_t sub_2314ACD70()
{
  v4 = OUTLINED_FUNCTION_34();
  result = OUTLINED_FUNCTION_42(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_36();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = (v0 - 1);
  }

  return result;
}

uint64_t sub_2314ACDF8()
{
  v3 = OUTLINED_FUNCTION_45();
  v4 = OUTLINED_FUNCTION_42(v3);
  if (*(v5 + 84) != v1)
  {
    return OUTLINED_FUNCTION_38(*(v0 + *(v2 + 24)));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v4);
}

uint64_t sub_2314ACE84()
{
  v4 = OUTLINED_FUNCTION_34();
  result = OUTLINED_FUNCTION_42(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_36();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 24)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_2314ACF28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2314CD924(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2314ACFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2315859F4();
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2314AD030(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2315859F4();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2314AD0D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2314D9E3C();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2314AD108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CalendarSignal();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2314AD190(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CalendarSignal();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2314AD210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CalendarSignal();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2314AD298(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CalendarSignal();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2314AD31C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2314AD360()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2314AD3A0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2314AD440()
{
  sub_2314E203C(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2314AD47C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2314AD4BC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2314AD524()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  OUTLINED_FUNCTION_13_3();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_2314AD578()
{
  OUTLINED_FUNCTION_18_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2314AD660()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314AD6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0x11)
    {
      return v8 - 16;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2314AD758(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 16;
  }

  return result;
}

uint64_t sub_2314AD800()
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

uint64_t sub_2314AD8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 8)
    {
      return v8 - 7;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2314AD94C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 7;
  }

  return result;
}

uint64_t sub_2314AD9F4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314ADA44()
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

uint64_t sub_2314ADAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0x11)
    {
      return v8 - 16;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2314ADB50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 16;
  }

  return result;
}

uint64_t sub_2314ADBF8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314ADC48()
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

uint64_t sub_2314ADCBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2314ADD68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2314ADE10()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314ADE60()
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

uint64_t sub_2314ADEC4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2314ADEFC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2314ADF44()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2314ADF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_231585A84();
    v8 = a1 + *(a3 + 28);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_2314AE054(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = sub_231585A84();
    v10 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

char *sub_2314AE120(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

char *sub_2314AE148(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

uint64_t sub_2314AE170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2314AE220(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2314AE2CC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314AE31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2314AE3CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2314AE478()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314AE4C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a3[5];
LABEL_8:

    return __swift_getEnumTagSinglePayload(a1 + v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_231585A84();
    v8 = a3[7];
    goto LABEL_8;
  }

  v9 = *(a1 + a3[6]);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_2314AE598(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[6]) = (a2 - 1);
      return result;
    }

    v9 = sub_231585A84();
    v10 = a4[7];
  }

  return __swift_storeEnumTagSinglePayload(a1 + v10, a2, a2, v9);
}

uint64_t sub_2314AE664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2314AE714(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2314AE7C0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314AE810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2314AE8C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2314AE96C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314AE9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2314AEA78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2314AEB20()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314AEB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_231585A84();
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_2314AEC40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = sub_231585A84();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2314AED0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_231585A84();
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_2314AEDDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = sub_231585A84();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2314AEEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2314AEF58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2314AF004()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314AF054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_231585A84();
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_2314AF124(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = sub_231585A84();
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_2314AF21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585D34();
  v7 = OUTLINED_FUNCTION_42(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_231585A84();
    v12 = OUTLINED_FUNCTION_42(v11);
    if (*(v13 + 84) != a2)
    {
      v15 = *(a1 + *(a3 + 24));
      if (v15 >= 0x11)
      {
        return v15 - 16;
      }

      else
      {
        return 0;
      }
    }

    v9 = v12;
    v10 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_2314AF304(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_231585D34();
  v9 = OUTLINED_FUNCTION_42(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_231585A84();
    result = OUTLINED_FUNCTION_42(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 16;
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_2314AF42C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314AF47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231585D34();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0x11)
    {
      return v8 - 16;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2314AF524(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_231585D34();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 16;
  }

  return result;
}

uint64_t sub_2314AF5CC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2314AF604()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2314AF64C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  OUTLINED_FUNCTION_1_18();

  return MEMORY[0x2821FE8E8](v6, v7, v8);
}

uint64_t sub_2314AF6A8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 72);

  OUTLINED_FUNCTION_1_18();

  return MEMORY[0x2821FE8E8](v7, v8, v9);
}

uint64_t sub_2314AF70C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314AF75C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2314AF7AC()
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

uint64_t sub_2314AF810()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314AF860()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2314AF8A8()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 89, 7);
}

uint64_t sub_2314AF910()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314AF998()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314AF9E8()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2314AFA30()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2314AFAB8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2314AFAF0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2314AFB28()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2314AFB60()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 32) & ~v5;
  v8 = *(v7 + 64);

  (*(v4 + 8))(v0 + v6, v2);

  return MEMORY[0x2821FE8E8](v0, v6 + v8, v5 | 7);
}

uint64_t sub_2314AFC4C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2314AFC9C()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_0_52();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2314AFCD0()
{
  v2 = sub_231585884();
  OUTLINED_FUNCTION_5_0(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 72) & ~v5;
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];

  v10 = v1[3];

  __swift_destroy_boxed_opaque_existential_1(v1 + 4);
  (*(v4 + 8))(v1 + v6, v0);
  v11 = *(v1 + v8 + 8);

  return MEMORY[0x2821FE8E8](v1, v8 + 16, v5 | 7);
}

uint64_t sub_2314AFDAC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2314AFDE4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2314AFE24()
{
  v1 = OUTLINED_FUNCTION_0_52();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_2314AFE54()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2314AFFF0()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_4_17();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2314B003C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2314B008C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2314B00D4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314B0124()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314B019C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_231585D34();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2314B0224(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_231585D34();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2314B02A4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314B02F4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314B035C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_231585D34();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2314B03E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_231585D34();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2314B0464()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314B04D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_231585D34();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2314B055C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_231585D34();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2314B05DC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314B063C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_231585D34();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2314B06C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_231585D34();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2314B0744()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314B0870()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  __swift_destroy_boxed_opaque_existential_1(v0 + 11);

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_2314B08C8()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  v5 = v0[17];

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_2314B0930()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314B09B0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2314B09E8()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2314B0A28()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2314B0A60()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2314B0AB0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2314B0B20()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t sub_2314B0B68()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314B0BD8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314B0C28()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t sub_2314B0C80()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314B0CE8(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_23152AE1C(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

uint64_t sub_2314B0D70()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2314B0DB8()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t sub_2314B0F18(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_231585D34();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2314B0FA0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_231585D34();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2314B1020()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314B1080(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_231585D34();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2314B1108(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_231585D34();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2314B1188()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314B1248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_231585884();
    v10 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_2314B12DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_231585884();
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2314B135C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *(a1 + 8);
    if (v4 > 3)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_231585884();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2314B13DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_231585884();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2314B14A0()
{
  v1 = *(v0 + 24);

  sub_2314A5EEC(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2314B14E4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_2314A5EEC(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_2314B1528()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2314B161C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2314B1680()
{
  sub_231540AA0(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2314B16E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BDD8, &qword_23158D9A8);
  OUTLINED_FUNCTION_11_2(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2314B1778()
{
  v1 = sub_231585FD4();
  OUTLINED_FUNCTION_4_1(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 113) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v9 = *(v0 + 80);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2314B18F8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  OUTLINED_FUNCTION_13_3();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t sub_2314B1944()
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

uint64_t sub_2314B1B24()
{
  OUTLINED_FUNCTION_58();

  return OUTLINED_FUNCTION_1_34();
}

uint64_t sub_2314B1B50()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_3_10();
}

uint64_t sub_2314B1BD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

uint64_t sub_2314B1E6C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = OUTLINED_FUNCTION_72();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t sub_2314B1F30()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_2314B1B24();
}

uint64_t sub_2314B1F38()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_2314B1B24();
}

uint64_t sub_2314B1F44()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_231547A64();
}

uint64_t sub_2314B1F64()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_231547A64();
}

uint64_t sub_2314B1F80()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return sub_2314B1B24();
}

uint64_t sub_2314B1F8C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return sub_231547A64();
}

uint64_t sub_2314B1FB0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  return sub_2314B1E14();
}

uint64_t sub_2314B1FBC(uint64_t a1, void (*a2)(void))
{
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  return sub_231550798(a1, a2);
}

uint64_t sub_2314B2004()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_23154D304();
}

uint64_t sub_2314B2030()
{
  v1 = *v0;
  OUTLINED_FUNCTION_48();
  return sub_23154D2B0(v2, v3, v4, v5);
}

uint64_t sub_2314B2064()
{
  v1 = *v0;
  OUTLINED_FUNCTION_47_0();
  return sub_23154D2B0(v2, v3, v4, v5);
}

uint64_t sub_2314B21FC()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = *(v0 + 8);
  return sub_23154D08C();
}

uint64_t sub_2314B2224()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = *(v0 + 8);
  return sub_23154CFC8();
}

uint64_t sub_2314B2248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_87(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0x41uLL);
  return sub_2314B1B7C();
}

uint64_t sub_2314B2280()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_2314B1B24();
}

uint64_t sub_2314B228C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_231547A64();
}

uint64_t sub_2314B2330()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 40);

  (*(v2 + 8))(v0 + ((v3 + 48) & ~v3), v1);
  v6 = OUTLINED_FUNCTION_65();

  return MEMORY[0x2821FE8E8](v6, v7, v8);
}

uint64_t sub_2314B23E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_87(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12);
  memcpy(v8, v9, 0x51uLL);
  return sub_2314B1B7C();
}

uint64_t sub_2314B241C()
{
  OUTLINED_FUNCTION_6_22();
  OUTLINED_FUNCTION_62();
  return sub_2314B1B7C();
}

uint64_t sub_2314B24A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_104(a1, a2, a3, a4);
  v7 = *(v4 + 32);
  OUTLINED_FUNCTION_131(v5);
  return sub_231556948();
}

uint64_t sub_2314B24D4()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v2 = OUTLINED_FUNCTION_73();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2314B2514(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_104(a1, a2, a3, a4);
  v7 = *(v4 + 32);
  OUTLINED_FUNCTION_131(v5);
  return sub_231556948();
}

uint64_t sub_2314B2544()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = OUTLINED_FUNCTION_98();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_2314B25B0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2314B25F8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_2314B2658()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_2314B26E0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t sub_2314B2730()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_2314B2780()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  v3 = OUTLINED_FUNCTION_72();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_2314B27C0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_2314B2824()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  __swift_destroy_boxed_opaque_existential_1(v0 + 11);

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_2314B287C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = OUTLINED_FUNCTION_73();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_2314B28C4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = OUTLINED_FUNCTION_72();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t sub_2314B290C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = OUTLINED_FUNCTION_98();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t sub_2314B2954()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = OUTLINED_FUNCTION_73();

  return MEMORY[0x2821FE8E8](v5, v6, v7);
}

uint64_t sub_2314B29BC()
{
  v2 = type metadata accessor for DomainTotalFrequencySignal();
  OUTLINED_FUNCTION_19_9(v2);
  v4 = *(v3 + 80);
  v7 = *(v6 + 64);
  v8 = *(v1 + 24);

  v5 = (v4 + 32) & ~v4;
  v9 = sub_231585D34();
  OUTLINED_FUNCTION_4_28(v9);
  (*(v10 + 8))(v1 + v5);
  v11 = *(v0 + 28);
  v12 = sub_231585A84();
  OUTLINED_FUNCTION_4_28(v12);
  (*(v13 + 8))(v1 + v5 + v11);
  v14 = OUTLINED_FUNCTION_65();

  return MEMORY[0x2821FE8E8](v14, v15, v16);
}

uint64_t sub_2314B2B24()
{
  v2 = type metadata accessor for DomainToContactRecencySignal();
  OUTLINED_FUNCTION_19_9(v2);
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  v7 = *(v1 + 24);

  v8 = v1 + ((v4 + 32) & ~v4);
  v9 = sub_231585D34();
  OUTLINED_FUNCTION_4_28(v9);
  (*(v10 + 8))(v8);
  v11 = *(v8 + *(v0 + 32) + 8);

  v12 = *(v8 + *(v0 + 36) + 8);

  v13 = OUTLINED_FUNCTION_65();

  return MEMORY[0x2821FE8E8](v13, v14, v15);
}

uint64_t sub_2314B2C60()
{
  v2 = type metadata accessor for DomainToContactFrequencyByIntentSignal();
  OUTLINED_FUNCTION_19_9(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v1 + 24);

  v9 = v0[7];
  v10 = sub_231585D34();
  OUTLINED_FUNCTION_4_28(v10);
  (*(v11 + 8))(v1 + v5 + v9);

  v12 = v0[9];
  v13 = sub_231585A84();
  OUTLINED_FUNCTION_4_28(v13);
  (*(v14 + 8))(v1 + v5 + v12);

  return MEMORY[0x2821FE8E8](v1, v5 + v7, v4 | 7);
}

uint64_t sub_2314B2DCC()
{
  v2 = type metadata accessor for DomainToContactAffinityScoreByIntentSignal();
  OUTLINED_FUNCTION_19_9(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v1 + 24);

  v9 = sub_231585D34();
  OUTLINED_FUNCTION_4_28(v9);
  (*(v10 + 8))(v1 + v5);

  v11 = *(v1 + v5 + v0[8]);

  v12 = v0[9];
  v13 = sub_231585A84();
  OUTLINED_FUNCTION_4_28(v13);
  (*(v14 + 8))(v1 + v5 + v12);

  return MEMORY[0x2821FE8E8](v1, v5 + v7, v4 | 7);
}

uint64_t sub_2314B2EE0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 42, 7);
}

uint64_t sub_2314B2F8C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2314B2FCC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[10];

  v5 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2314B3058()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE20, qword_23158DE30);
  OUTLINED_FUNCTION_4_28(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2314B310C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_231585884();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2314B3240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231568E34(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2314B3324(uint64_t a1, uint64_t a2)
{
  v4 = sub_231585FD4();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2314B336C(uint64_t a1, uint64_t a2)
{
  v4 = sub_231585FD4();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2314B33E0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2314B34AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_231585884();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2314B3534(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_231585884();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2314B35DC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2314B36A0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2314B36D8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2314B3728()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314B377C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 89, 7);
}

uint64_t sub_2314B37DC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2314B3814()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2314B385C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2314B3894()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2314B38E4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2314B3940()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 89, 7);
}

uint64_t sub_2314B3990()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2314B39C8()
{
  v1 = sub_231585884();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2314B3A50()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_2314B3AB8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_2314B3B00()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2314B3B38()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_2314B3B98()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_2314B3C4C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2314B3C88()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t static ActionDisambiguationFrequencySignal.signpostName.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *&xmmword_27DD5AD00 = a1;
  *(&xmmword_27DD5AD00 + 1) = a2;
  byte_27DD5AD10 = a3;
  return result;
}

double sub_2314B3F70@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = byte_27DD5AD10;
  result = *&xmmword_27DD5AD00;
  *a1 = xmmword_27DD5AD00;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_2314B3FC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  *&xmmword_27DD5AD00 = v1;
  *(&xmmword_27DD5AD00 + 1) = v2;
  byte_27DD5AD10 = v3;
  return result;
}

uint64_t sub_2314B401C()
{
  OUTLINED_FUNCTION_8_1();
  result = sub_231586964();
  qword_280D6EDF0 = result;
  *algn_280D6EDF8 = v1;
  return result;
}

uint64_t static ActionDisambiguationFrequencySignal.signalName.getter()
{
  if (qword_280D6EDE8 != -1)
  {
    OUTLINED_FUNCTION_1();
  }

  v0 = qword_280D6EDF0;

  return v0;
}

uint64_t ActionDisambiguationFrequencySignal.id.getter()
{
  if (qword_280D6EDE8 != -1)
  {
    OUTLINED_FUNCTION_1();
  }

  MEMORY[0x23192FF80](qword_280D6EDF0, *algn_280D6EDF8);
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  v2 = *(v0 + *(type metadata accessor for ActionDisambiguationFrequencySignal() + 24));
  sub_231586A54();
  return 0;
}

uint64_t type metadata accessor for ActionDisambiguationFrequencySignal()
{
  result = qword_280D6EDD8;
  if (!qword_280D6EDD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static ActionDisambiguationFrequencySignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314B4A98(v3, v1, v2);
}

uint64_t sub_2314B41FC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for ActionDisambiguationFrequencySignal();
  a3[3] = v6;
  a3[4] = &protocol witness table for ActionDisambiguationFrequencySignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v8 = *(v6 + 20);
  v9 = sub_231585D34();
  result = (*(*(v9 - 8) + 16))(boxed_opaque_existential_1 + v8, a2, v9);
  *boxed_opaque_existential_1 = &unk_28460FCF8;
  *(boxed_opaque_existential_1 + *(v6 + 24)) = v5;
  return result;
}

uint64_t sub_2314B42B8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314B4A98(v3, v1, v2);
}

uint64_t sub_2314B4308()
{
  v0 = sub_2315861A4();
  v1 = MEMORY[0x23192FFF0](v0);

  return v1;
}

uint64_t sub_2314B4348()
{
  sub_2315861A4();
  sub_231586274();
}

uint64_t sub_2314B43A4()
{
  sub_2315861A4();
  sub_231586D14();
  sub_231586274();
  v0 = sub_231586D44();

  return v0;
}

uint64_t sub_2314B4428(uint64_t a1, id *a2)
{
  result = sub_231586184();
  *a2 = 0;
  return result;
}

uint64_t sub_2314B44A4(uint64_t a1, id *a2)
{
  v3 = sub_231586194();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2314B4524@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2314B4F88();
  *a1 = result;
  return result;
}

uint64_t sub_2314B4570(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_231512794();
}

void sub_2314B457C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_23156D024();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_2314B45B0@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_2314B45DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_231586174();

  *a2 = v5;
  return result;
}

uint64_t sub_2314B4624@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2314B4650(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2314B4654(uint64_t a1)
{
  v2 = sub_2314B4EF8(&qword_280D6C648, type metadata accessor for MLModelMetadataKey);
  v3 = sub_2314B4EF8(&qword_27DD5B000, type metadata accessor for MLModelMetadataKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t _s11SiriSignals35ActionDisambiguationFrequencySignalV9instancesSayAA0F9Providing_pGyFZ_0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_5_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v16[3] = &type metadata for NoParameters;
  v16[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v8 = qword_280D72208;
  sub_2315144B0(v16, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    sub_2314B5064(v1);
    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v9 = OUTLINED_FUNCTION_6();
    v11 = v10(v9);
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_7_2();
    sub_23150466C(sub_2314B5234, v12, &unk_28460FCD0);
    v13 = OUTLINED_FUNCTION_3_3();
    v14(v13);
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v8;
}

uint64_t sub_2314B48B8(_OWORD *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = OUTLINED_FUNCTION_9();
  v7 = OUTLINED_FUNCTION_5_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v21[3] = &type metadata for SignalComputationContext;
  v21[4] = &protocol witness table for SignalComputationContext;
  v10 = swift_allocObject();
  v21[0] = v10;
  v11 = a1[1];
  v10[1] = *a1;
  v10[2] = v11;
  v10[3] = a1[2];
  sub_2314B5008(a1, v20);
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v12 = qword_280D72208;
  sub_2315144B0(v21, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_2314B5064(v2);
    v12 = MEMORY[0x277D84F90];
  }

  else
  {
    v13 = OUTLINED_FUNCTION_6();
    v15 = v14(v13);
    MEMORY[0x28223BE20](v15);
    OUTLINED_FUNCTION_7_2();
    sub_23150466C(sub_2314B50CC, v16, &unk_28460FCD0);
    v17 = OUTLINED_FUNCTION_3_3();
    v18(v17);
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v12;
}

uint64_t sub_2314B4A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20[-1] - v8;
  v10 = sub_231585D34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[3] = a2;
  v20[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v20, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2314B5064(v9);
    v16 = MEMORY[0x277D84F90];
  }

  else
  {
    v17 = (*(v11 + 32))(v14, v9, v10);
    MEMORY[0x28223BE20](v17);
    *(&v19 - 2) = v14;
    v16 = sub_23150466C(sub_2314B5234, (&v19 - 4), &unk_28460FCD0);
    (*(v11 + 8))(v14, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  return v16;
}

void sub_2314B4D10()
{
  sub_2314B519C(319, &qword_280D6EA18, &type metadata for DisambiguationDonationFields, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_231585D34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for DJB2Hash(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DJB2Hash(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_2314B4EF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2314B4F88()
{
  sub_2315861A4();
  v0 = sub_231586174();

  return v0;
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

uint64_t sub_2314B5064(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void sub_2314B519C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2314B524C()
{
  v0 = sub_231586B04();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2314B5298(char a1)
{
  result = 27954;
  switch(a1)
  {
    case 1:
      result = 7155761;
      break;
    case 2:
      result = 26673;
      break;
    case 3:
      result = 26678;
      break;
    case 4:
      result = 25649;
      break;
    case 5:
      result = 25655;
      break;
    case 6:
      result = 6567986;
      break;
    case 7:
      result = 6712937;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2314B5324@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2314B524C();
  *a2 = result;
  return result;
}

uint64_t sub_2314B5354@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2314B5298(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_2314B53A8()
{
  v1 = *(v0 + 24);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 24) = v3;
  }
}

uint64_t sub_2314B53C0(uint64_t result)
{
  v2 = *(v1 + 24);
  v3 = __OFADD__(v2, result);
  v4 = v2 + result;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = v4;
  }

  return result;
}

uint64_t sub_2314B53E8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E0, &qword_231587F28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231587D50;
  *(inited + 32) = 0;
  v4 = sub_23156691C(0, a1);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  type metadata accessor for Aggregation.BucketCounter();
  v7 = swift_allocObject();
  *(v7 + 16) = 120;
  *(v7 + 24) = v6;
  *(inited + 40) = v7;
  *(inited + 48) = 1;
  sub_23156691C(1, a1);
  v8 = OUTLINED_FUNCTION_3_4();
  *(v8 + 16) = 600;
  *(v8 + 24) = v6;
  *(inited + 56) = v8;
  *(inited + 64) = 2;
  sub_23156691C(2, a1);
  v9 = OUTLINED_FUNCTION_3_4();
  *(v9 + 16) = 3600;
  *(v9 + 24) = v6;
  *(inited + 72) = v9;
  *(inited + 80) = 3;
  sub_23156691C(3, a1);
  v10 = OUTLINED_FUNCTION_3_4();
  *(v10 + 16) = 21600;
  *(v10 + 24) = v6;
  *(inited + 88) = v10;
  *(inited + 96) = 4;
  sub_23156691C(4, a1);
  v11 = OUTLINED_FUNCTION_3_4();
  *(v11 + 16) = 86400;
  *(v11 + 24) = v6;
  *(inited + 104) = v11;
  *(inited + 112) = 5;
  sub_23156691C(5, a1);
  v12 = OUTLINED_FUNCTION_3_4();
  *(v12 + 16) = 604800;
  *(v12 + 24) = v6;
  *(inited + 120) = v12;
  *(inited + 128) = 6;
  v13 = sub_23156691C(6, a1);
  v15 = v14;

  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = v13;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = 2419200;
  *(v17 + 24) = v16;
  *(inited + 136) = v17;
  *(inited + 144) = 7;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_231587D60;
  *(inited + 152) = v18;
  sub_2314B676C();
  *(v1 + 16) = sub_2315860F4();
  return v1;
}

uint64_t sub_2314B55E4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 7:
      sub_231585794();
      break;
    default:
      sub_2315857B4();
      break;
  }

  v3 = a2 + *(type metadata accessor for Aggregation.BucketRange() + 20);
  return sub_2315857B4();
}

void sub_2314B56E8()
{
  v1 = v0;
  sub_2315857F4();
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_55;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  OUTLINED_FUNCTION_1_0();
  if (!v4)
  {
    goto LABEL_56;
  }

  v5 = -v3;
  if (__OFSUB__(0, v3))
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_12:
    if (qword_280D70420 == -1)
    {
LABEL_13:
      v8 = sub_231585FF4();
      __swift_project_value_buffer(v8, qword_280D72248);
      oslog = sub_231585FE4();
      v9 = sub_2315865E4();
      if (os_log_type_enabled(oslog, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_231496000, oslog, v9, "cannot add instance from the future", v10, 2u);
        MEMORY[0x231931280](v10, -1, -1);
      }

      return;
    }

LABEL_58:
    OUTLINED_FUNCTION_6_0();
    goto LABEL_13;
  }

  if (v5 > 0x77)
  {
    if (v5 <= 0x257)
    {
      OUTLINED_FUNCTION_9_1();
      sub_231566AE8(1, v5);
      OUTLINED_FUNCTION_12_2();
      if (!v1)
      {
        return;
      }

      OUTLINED_FUNCTION_8_2();
      if (!v7)
      {
        goto LABEL_41;
      }

      __break(1u);
    }

    if (v5 <= 0xE0F)
    {
      OUTLINED_FUNCTION_9_1();
      sub_231566AE8(2, v5);
      OUTLINED_FUNCTION_12_2();
      if (!v1)
      {
        return;
      }

      OUTLINED_FUNCTION_8_2();
      if (!v7)
      {
        goto LABEL_41;
      }

      __break(1u);
    }

    if (v5 >> 5 <= 0x2A2)
    {
      OUTLINED_FUNCTION_9_1();
      sub_231566AE8(3, v5);
      OUTLINED_FUNCTION_12_2();
      if (!v1)
      {
        return;
      }

      OUTLINED_FUNCTION_8_2();
      if (!v7)
      {
        goto LABEL_41;
      }

      __break(1u);
    }

    if (v5 >> 7 <= 0x2A2)
    {
      OUTLINED_FUNCTION_9_1();
      sub_231566AE8(4, v5);
      OUTLINED_FUNCTION_12_2();
      if (!v1)
      {
        return;
      }

      OUTLINED_FUNCTION_8_2();
      if (!v7)
      {
        goto LABEL_41;
      }

      __break(1u);
    }

    if (v5 <= 0x93A7F)
    {
      OUTLINED_FUNCTION_9_1();
      sub_231566AE8(5, v5);
      OUTLINED_FUNCTION_12_2();
      if (!v1)
      {
        return;
      }

      OUTLINED_FUNCTION_8_2();
      if (!v7)
      {
        goto LABEL_41;
      }

      __break(1u);
LABEL_60:
      __break(1u);
      return;
    }

    v11 = *(v1 + 16);

    if (v5 <= 0x24E9FF)
    {
      v12 = sub_231566AE8(6, v11);

      if (!v12)
      {
        return;
      }

      v13 = *(v12 + 24);
      v7 = __OFADD__(v13, 1);
      v14 = v13 + 1;
      if (!v7)
      {
        goto LABEL_52;
      }

      __break(1u);
    }

    v15 = sub_231566AE8(7, v11);

    if (!v15)
    {
      return;
    }

    v16 = *(v15 + 24);
    v7 = __OFADD__(v16, 1);
    v14 = v16 + 1;
    if (v7)
    {
      goto LABEL_60;
    }

LABEL_52:
    OUTLINED_FUNCTION_7_3(v14);
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_9_1();
  sub_231566AE8(0, v5);
  OUTLINED_FUNCTION_12_2();
  if (!v1)
  {
    return;
  }

  OUTLINED_FUNCTION_8_2();
  if (v7)
  {
    __break(1u);
    goto LABEL_12;
  }

LABEL_41:
  *(v1 + 24) = v6;
LABEL_42:
}

void sub_2314B59E4(double a1, double a2)
{
  v3 = v2;
  v6 = sub_231585884();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231585844();
  sub_231585784();
  v12 = v11;
  (*(v7 + 8))(v10, v6);
  v13 = round(a1);
  v14 = round(a2);
  v15 = v12 < v13 || v12 < v14;
  if (v15)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v16 = sub_231585FF4();
    __swift_project_value_buffer(v16, qword_280D72248);
    v17 = sub_231585FE4();
    v18 = sub_2315865E4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_231496000, v17, v18, "cannot add instance from the future", v19, 2u);
      MEMORY[0x231931280](v19, -1, -1);
    }

    return;
  }

  v20 = OUTLINED_FUNCTION_4_0(v12 + -600.0);
  if (v14 < v21)
  {
    v21 = v14;
  }

  v22 = v21 - v20 + 1.0;
  if (v22 < 0.0)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = v22;
  }

  v24 = OUTLINED_FUNCTION_4_0(v12 + -3600.0);
  if (v14 < v25)
  {
    v25 = v14;
  }

  v26 = v25 - v24 + 1.0;
  if (v26 < 0.0)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = v26;
  }

  v28 = OUTLINED_FUNCTION_4_0(v12 + -21600.0);
  if (v14 < v29)
  {
    v29 = v14;
  }

  v30 = v29 - v28 + 1.0;
  if (v30 < 0.0)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = v30;
  }

  v32 = OUTLINED_FUNCTION_4_0(v12 + -86400.0);
  if (v14 < v33)
  {
    v33 = v14;
  }

  v72 = OUTLINED_FUNCTION_5_4(v33 - v32);
  v34 = OUTLINED_FUNCTION_4_0(v12 + -604800.0);
  if (v14 < v35)
  {
    v35 = v14;
  }

  v71 = OUTLINED_FUNCTION_5_4(v35 - v34);
  v36 = OUTLINED_FUNCTION_4_0(v12 + -2419200.0);
  if (v14 < v37)
  {
    v37 = v14;
  }

  v70 = OUTLINED_FUNCTION_5_4(v37 - v36);
  v38 = v12 + -2419201.0;
  if (v13 < 0.0)
  {
    v39 = 0.0;
  }

  else
  {
    v39 = v13;
  }

  if (v14 < v38)
  {
    v38 = v14;
  }

  v69 = OUTLINED_FUNCTION_5_4(v38 - v39);
  OUTLINED_FUNCTION_10_2();
  sub_231566AE8(0, v6);
  OUTLINED_FUNCTION_11_3();
  if (v10)
  {
    if (v14 >= v12)
    {
      v40 = v12;
    }

    else
    {
      v40 = v14;
    }

    v41 = v12 + -120.0;
    if (v12 + -120.0 <= v13)
    {
      v41 = v13;
    }

    v42 = OUTLINED_FUNCTION_5_4(v40 - v41);
    v44 = OUTLINED_FUNCTION_0_1(v42 / 10.0);
    if (v45 || v43)
    {
      __break(1u);
    }

    else if (v44 > -9.22337204e18)
    {
      OUTLINED_FUNCTION_1_0();
      if (!v15)
      {
        goto LABEL_109;
      }

      OUTLINED_FUNCTION_2_2();
      if (v43)
      {
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      OUTLINED_FUNCTION_7_3(v46);

      goto LABEL_50;
    }

    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

LABEL_50:
  OUTLINED_FUNCTION_10_2();
  sub_231566AE8(1, v6);
  OUTLINED_FUNCTION_11_3();
  if (v10)
  {
    v48 = OUTLINED_FUNCTION_0_1(v23 / 10.0);
    if (v45 || v47)
    {
      goto LABEL_110;
    }

    if (v48 <= -9.22337204e18)
    {
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    OUTLINED_FUNCTION_1_0();
    if (!v15)
    {
      goto LABEL_113;
    }

    OUTLINED_FUNCTION_2_2();
    if (v43)
    {
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    OUTLINED_FUNCTION_7_3(v49);
  }

  OUTLINED_FUNCTION_10_2();
  sub_231566AE8(2, v6);
  OUTLINED_FUNCTION_11_3();
  if (v10)
  {
    v51 = OUTLINED_FUNCTION_0_1(v27 / 10.0);
    if (v45 || v50)
    {
      goto LABEL_114;
    }

    if (v51 <= -9.22337204e18)
    {
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    OUTLINED_FUNCTION_1_0();
    if (!v15)
    {
      goto LABEL_117;
    }

    OUTLINED_FUNCTION_2_2();
    if (v43)
    {
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    OUTLINED_FUNCTION_7_3(v52);
  }

  OUTLINED_FUNCTION_10_2();
  sub_231566AE8(3, v6);
  OUTLINED_FUNCTION_11_3();
  if (v10)
  {
    v54 = OUTLINED_FUNCTION_0_1(v31 / 10.0);
    if (v45 || v53)
    {
      goto LABEL_118;
    }

    if (v54 <= -9.22337204e18)
    {
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    OUTLINED_FUNCTION_1_0();
    if (!v15)
    {
      goto LABEL_121;
    }

    OUTLINED_FUNCTION_2_2();
    if (v43)
    {
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    OUTLINED_FUNCTION_7_3(v55);
  }

  OUTLINED_FUNCTION_10_2();
  sub_231566AE8(4, v6);
  OUTLINED_FUNCTION_11_3();
  if (v10)
  {
    v57 = OUTLINED_FUNCTION_0_1(v72 / 10.0);
    if (v45 || v56)
    {
      goto LABEL_122;
    }

    if (v57 <= -9.22337204e18)
    {
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    OUTLINED_FUNCTION_1_0();
    if (!v15)
    {
      goto LABEL_125;
    }

    OUTLINED_FUNCTION_2_2();
    if (v43)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    OUTLINED_FUNCTION_7_3(v58);
  }

  OUTLINED_FUNCTION_10_2();
  sub_231566AE8(5, v6);
  OUTLINED_FUNCTION_11_3();
  if (v10)
  {
    v60 = OUTLINED_FUNCTION_0_1(v71 / 10.0);
    if (v45 || v59)
    {
      goto LABEL_126;
    }

    if (v60 <= -9.22337204e18)
    {
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    OUTLINED_FUNCTION_1_0();
    if (!v15)
    {
      goto LABEL_129;
    }

    OUTLINED_FUNCTION_2_2();
    if (v43)
    {
LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    OUTLINED_FUNCTION_7_3(v61);
  }

  OUTLINED_FUNCTION_10_2();
  sub_231566AE8(6, v6);
  OUTLINED_FUNCTION_11_3();
  if (v10)
  {
    v63 = OUTLINED_FUNCTION_0_1(v70 / 10.0);
    if (v45 || v62)
    {
      goto LABEL_130;
    }

    if (v63 <= -9.22337204e18)
    {
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    OUTLINED_FUNCTION_1_0();
    if (!v15)
    {
      goto LABEL_133;
    }

    OUTLINED_FUNCTION_2_2();
    if (v43)
    {
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    OUTLINED_FUNCTION_7_3(v64);
  }

  OUTLINED_FUNCTION_9_1();
  sub_231566AE8(7, v10);
  OUTLINED_FUNCTION_12_2();
  if (v3)
  {
    v66 = OUTLINED_FUNCTION_0_1(v69 / 10.0);
    if (v45 || v65)
    {
      goto LABEL_134;
    }

    if (v66 <= -9.22337204e18)
    {
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    OUTLINED_FUNCTION_1_0();
    if (!v15)
    {
      goto LABEL_137;
    }

    v68 = *(v3 + 24);
    if (__OFADD__(v68, v67))
    {
LABEL_138:
      __break(1u);
      return;
    }

    *(v3 + 24) = v68 + v67;
  }
}

uint64_t sub_2314B6020()
{
  v1 = v0;
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  do
  {
    v4 = *(v1 + 16);
    if (*(v4 + 16))
    {
      v5 = byte_28460FCD0[v2 + 32];
      v6 = *(v1 + 16);

      v7 = sub_231574C34(v5);
      if (v8)
      {
        v9 = *(*(v4 + 56) + 8 * v7);

        v10 = *(v9 + 16);
        v11 = *(v9 + 24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = *(v3 + 16);
          sub_2314F0FE0();
          v3 = v15;
        }

        v12 = *(v3 + 16);
        if (v12 >= *(v3 + 24) >> 1)
        {
          sub_2314F0FE0();
          v3 = v16;
        }

        *(v3 + 16) = v12 + 1;
        v13 = v3 + 16 * v12;
        *(v13 + 32) = v10;
        *(v13 + 40) = v11;
      }

      else
      {
      }
    }

    ++v2;
  }

  while (v2 != 8);
  return v3;
}

uint64_t sub_2314B6158(char a1)
{
  v2 = *(v1 + 16);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v4 = sub_231574C34(a1);
  if ((v5 & 1) == 0)
  {

    return 0;
  }

  v6 = *(*(v2 + 56) + 8 * v4);

  v7 = *(v6 + 24);

  return v7;
}

double sub_2314B61D8(double a1, double a2, double a3, double a4)
{
  if (a1 <= a3)
  {
    a1 = a3;
  }

  if (a4 < a2)
  {
    a2 = a4;
  }

  result = a2 - a1 + 1.0;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_2314B6204()
{
  v1 = v0;
  v22 = MEMORY[0x277D84F90];
  sub_23152D598();
  v2 = 0;
  do
  {
    v3 = &unk_28460FCD0 + v2++;
    v4 = v3[32];
    v5 = 0xE200000000000000;
    v6 = 27954;
    switch(v4)
    {
      case 1:
        v5 = 0xE300000000000000;
        v6 = 7155761;
        break;
      case 2:
        v6 = 26673;
        break;
      case 3:
        v6 = 26678;
        break;
      case 4:
        v6 = 25649;
        break;
      case 5:
        v6 = 25655;
        break;
      case 6:
        v5 = 0xE300000000000000;
        v6 = 6567986;
        break;
      case 7:
        v5 = 0xE300000000000000;
        v6 = 6712937;
        break;
      default:
        break;
    }

    v20 = v6;
    v21 = v5;
    MEMORY[0x23192FF80](61, 0xE100000000000000);
    v7 = *(v1 + 16);
    if (*(v7 + 16))
    {
      v8 = *(v1 + 16);

      v9 = sub_231574C34(v4);
      if (v10)
      {
        v11 = *(*(v7 + 56) + 8 * v9);

        v12 = *(v11 + 24);
      }

      else
      {
      }
    }

    v13 = sub_231586C24();
    MEMORY[0x23192FF80](v13);

    v14 = *(v22 + 16);
    if (v14 >= *(v22 + 24) >> 1)
    {
      sub_23152D598();
    }

    *(v22 + 16) = v14 + 1;
    v15 = v22 + 16 * v14;
    *(v15 + 32) = v20;
    *(v15 + 40) = v21;
  }

  while (v2 != 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
  sub_2314AA8B4(&qword_280D6FBF8, &qword_27DD5B0E8, &unk_231589320);
  v16 = sub_231586154();
  v18 = v17;

  MEMORY[0x23192FF80](v16, v18);

  MEMORY[0x23192FF80](62, 0xE100000000000000);
  return 60;
}

uint64_t getEnumTagSinglePayload for Aggregation.Bucket(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Aggregation.Bucket(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
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

unint64_t sub_2314B66F4()
{
  result = qword_280D6F9D0;
  if (!qword_280D6F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6F9D0);
  }

  return result;
}

unint64_t sub_2314B676C()
{
  result = qword_280D6F9D8[0];
  if (!qword_280D6F9D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D6F9D8);
  }

  return result;
}

uint64_t type metadata accessor for Aggregation.BucketRange()
{
  result = qword_280D6FB30;
  if (!qword_280D6FB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2314B6834()
{
  result = sub_231585884();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static AppDisambiguationFrequencySignal.signpostName.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *&xmmword_27DD5B0F0 = a1;
  *(&xmmword_27DD5B0F0 + 1) = a2;
  byte_27DD5B100 = a3;
  return result;
}

double sub_2314B698C@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = byte_27DD5B100;
  result = *&xmmword_27DD5B0F0;
  *a1 = xmmword_27DD5B0F0;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_2314B69E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  *&xmmword_27DD5B0F0 = v1;
  *(&xmmword_27DD5B0F0 + 1) = v2;
  byte_27DD5B100 = v3;
  return result;
}

uint64_t sub_2314B6A38()
{
  OUTLINED_FUNCTION_8_1();
  result = sub_231586964();
  qword_280D6F008 = result;
  *algn_280D6F010 = v1;
  return result;
}

uint64_t static AppDisambiguationFrequencySignal.signalName.getter()
{
  if (qword_280D6F000 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  v0 = qword_280D6F008;

  return v0;
}

uint64_t AppDisambiguationFrequencySignal.id.getter()
{
  if (qword_280D6F000 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  MEMORY[0x23192FF80](qword_280D6F008, *algn_280D6F010);
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  v2 = *(v0 + *(type metadata accessor for AppDisambiguationFrequencySignal() + 24));
  sub_231586A54();
  return 0;
}

uint64_t type metadata accessor for AppDisambiguationFrequencySignal()
{
  result = qword_280D6EFF0;
  if (!qword_280D6EFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static AppDisambiguationFrequencySignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314B70A8(v3, v1, v2);
}

uint64_t sub_2314B6C18@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for AppDisambiguationFrequencySignal();
  a3[3] = v6;
  a3[4] = &protocol witness table for AppDisambiguationFrequencySignal;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v8 = *(v6 + 20);
  v9 = sub_231585D34();
  result = (*(*(v9 - 8) + 16))(boxed_opaque_existential_1 + v8, a2, v9);
  *boxed_opaque_existential_1 = &unk_284610A98;
  *(boxed_opaque_existential_1 + *(v6 + 24)) = v5;
  return result;
}

uint64_t sub_2314B6CD8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2314B70A8(v3, v1, v2);
}

uint64_t _s11SiriSignals32AppDisambiguationFrequencySignalV9instancesSayAA0F9Providing_pGyFZ_0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_5_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v16[3] = &type metadata for NoParameters;
  v16[4] = &protocol witness table for NoParameters;
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v8 = qword_280D72208;
  sub_2315144B0(v16, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v0) == 1)
  {
    sub_2314B5064(v1);
    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v9 = OUTLINED_FUNCTION_6();
    v11 = v10(v9);
    MEMORY[0x28223BE20](v11);
    OUTLINED_FUNCTION_7_2();
    sub_23150466C(sub_2314B741C, v12, &unk_28460FCD0);
    v13 = OUTLINED_FUNCTION_3_3();
    v14(v13);
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v8;
}

uint64_t sub_2314B6EC8(_OWORD *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = OUTLINED_FUNCTION_9();
  v7 = OUTLINED_FUNCTION_5_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v21[3] = &type metadata for SignalComputationContext;
  v21[4] = &protocol witness table for SignalComputationContext;
  v10 = swift_allocObject();
  v21[0] = v10;
  v11 = a1[1];
  v10[1] = *a1;
  v10[2] = v11;
  v10[3] = a1[2];
  sub_2314B5008(a1, v20);
  if (qword_280D6FD68 != -1)
  {
    OUTLINED_FUNCTION_2();
  }

  v12 = qword_280D72208;
  sub_2315144B0(v21, v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_2314B5064(v2);
    v12 = MEMORY[0x277D84F90];
  }

  else
  {
    v13 = OUTLINED_FUNCTION_6();
    v15 = v14(v13);
    MEMORY[0x28223BE20](v15);
    OUTLINED_FUNCTION_7_2();
    sub_23150466C(sub_2314B73FC, v16, &unk_28460FCD0);
    v17 = OUTLINED_FUNCTION_3_3();
    v18(v17);
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v12;
}

uint64_t sub_2314B70A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20[-1] - v8;
  v10 = sub_231585D34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[3] = a2;
  v20[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v20, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2314B5064(v9);
    v16 = MEMORY[0x277D84F90];
  }

  else
  {
    v17 = (*(v11 + 32))(v14, v9, v10);
    MEMORY[0x28223BE20](v17);
    *(&v19 - 2) = v14;
    v16 = sub_23150466C(sub_2314B741C, (&v19 - 4), &unk_28460FCD0);
    (*(v11 + 8))(v14, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  return v16;
}

void sub_2314B7320()
{
  sub_2314B73AC();
  if (v0 <= 0x3F)
  {
    sub_231585D34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2314B73AC()
{
  if (!qword_280D6EA18)
  {
    v0 = sub_231586454();
    if (!v1)
    {
      atomic_store(v0, &qword_280D6EA18);
    }
  }
}

uint64_t sub_2314B7448()
{
  result = sub_231586964();
  qword_280D6F8B0 = result;
  *algn_280D6F8B8 = v1;
  return result;
}

uint64_t static AppLaunchCountSignal.signalName.getter()
{
  if (qword_280D6F8A8 != -1)
  {
    OUTLINED_FUNCTION_6_4();
  }

  v0 = qword_280D6F8B0;

  return v0;
}

uint64_t sub_2314B74D4()
{
  if (qword_280D6F8A8 != -1)
  {
    OUTLINED_FUNCTION_6_4();
  }

  MEMORY[0x23192FF80](qword_280D6F8B0, *algn_280D6F8B8);
  MEMORY[0x23192FF80](46, 0xE100000000000000);
  v2 = *(v0 + 16);
  sub_231586A54();
  return 0;
}

double sub_2314B7584@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2314A1DFC(2, 3);

  result = v2;
  *a1 = v2;
  *(a1 + 8) = 0;
  return result;
}

uint64_t static AppLaunchCountSignal.instances(with:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return _s11SiriSignals20AppLaunchCountSignalC9instancesSayAA0F9Providing_pGyFZ_0();
}

uint64_t sub_2314B7618(void *a1, uint64_t a2)
{
  v61 = a1;
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v55 - v8;
  v10 = sub_231585884();
  v11 = OUTLINED_FUNCTION_4_1(v10);
  v13 = v12;
  v68 = v12;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v59 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v66 = v55 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v55 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v55 - v22;
  sub_2314B83DC(v55 - v22);
  v69 = v21;
  v67 = v2;
  sub_2314B8520(v21);
  v24 = v13 + 16;
  v25 = *(v13 + 16);
  v65 = v24;
  v70 = v23;
  v25(v9, v23, v10);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v10);
  v26 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  sub_2314B87DC(v9, v7, 0, 0, 0);
  v63 = v27;
  v60 = [*(v2 + 24) publisherWithOptions_];
  v28 = swift_allocObject();
  *(v28 + 16) = sub_2315860F4();
  v64 = v28;
  v29 = v66;
  v56 = v25;
  v25(v66, v23, v10);
  v30 = v59;
  v25(v59, v21, v10);
  v31 = v68;
  v32 = *(v68 + 80);
  v33 = (v32 + 32) & ~v32;
  v58 = v15 + v32;
  v34 = (v15 + v32 + v33) & ~v32;
  v57 = v15 + 7;
  v35 = (v15 + 7 + v34) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v37 = v67;
  *(v36 + 16) = v28;
  *(v36 + 24) = v37;
  v38 = *(v31 + 32);
  v38(v36 + v33, v29, v10);
  v39 = v30;
  v38(v36 + v34, v30, v10);
  v40 = (v36 + v35);
  v41 = v62;
  *v40 = v61;
  v40[1] = v41;
  v75 = sub_2314B8D94;
  v76 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v72 = 1107296256;
  v55[1] = &v73;
  v73 = sub_2314B901C;
  v74 = &block_descriptor;
  v61 = _Block_copy(&aBlock);

  v42 = v66;
  v43 = v56;
  v56(v66, v70, v10);
  v44 = v39;
  v43(v39, v69, v10);
  v45 = (v32 + 16) & ~v32;
  v46 = (v58 + v45) & ~v32;
  v47 = (v57 + v46) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  v38(v48 + v45, v42, v10);
  v38(v48 + v46, v44, v10);
  *(v48 + v47) = v64;
  v75 = sub_2314B8E34;
  v76 = v48;
  aBlock = MEMORY[0x277D85DD0];
  v72 = 1107296256;
  v73 = sub_2314B901C;
  v74 = &block_descriptor_10;
  v49 = _Block_copy(&aBlock);

  v50 = v60;
  v51 = v61;
  v52 = [v60 sinkWithCompletion:v61 receiveInput:v49];
  _Block_release(v49);
  _Block_release(v51);

  v53 = *(v68 + 8);
  v53(v69, v10);
  v53(v70, v10);
}

uint64_t sub_2314B7BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *), uint64_t a7)
{
  v39 = a7;
  v40 = a6;
  v11 = sub_231585884();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v41 = &v35[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v17 = &v35[-v16];
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v18 = sub_231585FF4();
  __swift_project_value_buffer(v18, qword_280D72248);
  v19 = v12[2];
  v19(v17, a4, v11);
  v19(v41, a5, v11);

  v20 = sub_231585FE4();
  v21 = sub_2315865D4();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v37 = v20;
    v23 = v22;
    v38 = swift_slowAlloc();
    v44 = v38;
    *v23 = 136315906;
    swift_beginAccess();
    v36 = v21;
    v24 = *(a2 + 16);

    sub_2315860E4();

    v25 = sub_2314A22E8();

    *(v23 + 4) = v25;
    *(v23 + 12) = 2080;
    sub_2314B5298(*(a3 + 16));
    v26 = sub_2314A22E8();

    *(v23 + 14) = v26;
    *(v23 + 22) = 2080;
    sub_2314B8F74(&qword_280D6FBD0);
    sub_231586C24();
    v27 = v12[1];
    v27(v17, v11);
    v28 = sub_2314A22E8();

    *(v23 + 24) = v28;
    *(v23 + 32) = 2080;
    v29 = v41;
    sub_231586C24();
    v27(v29, v11);
    v30 = sub_2314A22E8();

    *(v23 + 34) = v30;
    v31 = v37;
    _os_log_impl(&dword_231496000, v37, v36, "AppLaunchCountSignal: computed %s for %s between %s and %s", v23, 0x2Au);
    v32 = v38;
    swift_arrayDestroy();
    MEMORY[0x231931280](v32, -1, -1);
    MEMORY[0x231931280](v23, -1, -1);
  }

  else
  {

    v33 = v12[1];
    v33(v41, v11);
    v33(v17, v11);
  }

  swift_beginAccess();
  v42 = *(a2 + 16);
  v43 = 1;

  v40(&v42);
  return sub_2314A5EEC(v42, v43);
}

void sub_2314B8008(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_231585884();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v36 - v12;
  v14 = [a1 eventBody];
  if (v14)
  {
    v37 = v14;
    if ([v14 starting])
    {
      v15 = sub_2314D7528(v37);
      if (v16)
      {
        v17 = v15;
        v18 = v16;
        v19 = [v37 absoluteTimestamp];
        if (v19)
        {
          v20 = v19;
          sub_231585834();

          (*(v7 + 32))(v13, v11, v6);
          sub_2314B8F74(&qword_280D6FBD8);
          if (sub_231586164() & 1) != 0 || (sub_231586164())
          {
            (*(v7 + 8))(v13, v6);

            return;
          }

          swift_beginAccess();
          v22 = *(a4 + 16);
          v36[1] = swift_isUniquelyReferenced_nonNull_native();
          v38 = *(a4 + 16);
          v23 = v38;
          *(a4 + 16) = 0x8000000000000000;
          v24 = sub_23149C888(v17, v18);
          if (__OFADD__(*(v23 + 16), (v25 & 1) == 0))
          {
            __break(1u);
          }

          else
          {
            v26 = v24;
            v27 = v25;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
            v28 = sub_231586A64();
            v29 = v38;
            if (v28)
            {
              v30 = sub_23149C888(v17, v18);
              if ((v27 & 1) != (v31 & 1))
              {
LABEL_23:
                sub_231586C84();
                __break(1u);
                return;
              }

              v26 = v30;
            }

            *(a4 + 16) = v29;
            if ((v27 & 1) == 0)
            {
              sub_231575360(v26, v17, v18, 0, v29);
            }

            v32 = *(v29 + 56);
            v33 = *(v32 + 8 * v26);
            v34 = __OFADD__(v33, 1);
            v35 = v33 + 1;
            if (!v34)
            {
              *(v32 + 8 * v26) = v35;
              swift_endAccess();

              (*(v7 + 8))(v13, v6);
              return;
            }
          }

          __break(1u);
          goto LABEL_23;
        }
      }
    }

    v21 = v37;
  }
}

void sub_2314B8374(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_2314B83DC(uint64_t a1@<X8>)
{
  v3 = sub_231585884();
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = type metadata accessor for Aggregation.BucketRange();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  type metadata accessor for Aggregation();
  v17 = *(v1 + 16);
  sub_231585874();
  sub_2314B55E4(v17, v16);
  (*(v6 + 8))(v11, v3);
  (*(v6 + 16))(a1, v16, v3);
  sub_2314B8FB8(v16);
  OUTLINED_FUNCTION_12_3();
}

void sub_2314B8520(uint64_t a1@<X8>)
{
  v3 = sub_231585884();
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = type metadata accessor for Aggregation.BucketRange();
  OUTLINED_FUNCTION_11_2(v12);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = *(v1 + 16);
  if (v19 == 4)
  {
    OUTLINED_FUNCTION_12_3();

    sub_231585874();
  }

  else
  {
    type metadata accessor for Aggregation();
    sub_231585874();
    sub_2314B55E4(v19, v18);
    (*(v6 + 8))(v11, v3);
    (*(v6 + 16))(a1, v18 + *(v12 + 20), v3);
    sub_2314B8FB8(v18);
    OUTLINED_FUNCTION_12_3();
  }
}

uint64_t AppLaunchCountSignal.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2314B8740(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return _s11SiriSignals20AppLaunchCountSignalC9instancesSayAA0F9Providing_pGyFZ_0();
}

void sub_2314B87DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_231585884();
  v13 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) != 1)
  {
    v13 = sub_2315857C4();
    OUTLINED_FUNCTION_11_2(v12);
    (*(v14 + 8))(a1, v12);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v12) == 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_2315857C4();
    OUTLINED_FUNCTION_11_2(v12);
    (*(v16 + 8))(a2, v12);
  }

  [v6 initWithStartDate:v13 endDate:v15 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  OUTLINED_FUNCTION_12_3();
}

uint64_t sub_2314B890C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B108, &unk_23158C980);
  result = OUTLINED_FUNCTION_9_2();
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
    sub_231586D14();

    sub_231586274();
    result = sub_231586D44();
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
      if (v17 || (sub_231586C44() & 1) != 0)
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

uint64_t sub_2314B8A90(uint64_t a1)
{
  if (sub_231566740())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B110, &unk_231588040);
    v2 = OUTLINED_FUNCTION_9_2();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v17 = sub_2314A7080(a1);
  if (v17)
  {
    v3 = 0;
    v4 = v2 + 56;
    v5 = a1 & 0xC000000000000001;
    while (1)
    {
      sub_231513EE4(v3, v5 == 0, a1);
      if (v5)
      {
        result = MEMORY[0x231930660](v3, a1);
        v7 = result;
      }

      else
      {
        v7 = *(a1 + 32 + 8 * v3);
      }

      v8 = __OFADD__(v3++, 1);
      if (v8)
      {
        break;
      }

      v9 = *(v2 + 40);
      sub_231586D14();
      sub_2314AAAAC();
      result = sub_231586D44();
      v10 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v11 = result & v10;
        v12 = (result & v10) >> 6;
        v13 = *(v4 + 8 * v12);
        v14 = 1 << (result & v10);
        if ((v14 & v13) == 0)
        {
          break;
        }

        _s4NodeCMa();
        if (sub_2314AB36C(*(*(v2 + 48) + 8 * v11), v7))
        {

          goto LABEL_17;
        }

        result = v11 + 1;
      }

      *(v4 + 8 * v12) = v14 | v13;
      *(*(v2 + 48) + 8 * v11) = v7;
      v15 = *(v2 + 16);
      v8 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v8)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v16;
LABEL_17:
      if (v3 == v17)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t _s11SiriSignals20AppLaunchCountSignalC9instancesSayAA0F9Providing_pGyFZ_0()
{
  v12 = MEMORY[0x277D84F90];
  sub_23152D5B8();
  v0 = 0;
  v1 = v12;
  do
  {
    v2 = byte_284610220[v0 + 32];
    v3 = [BiomeLibrary() App];
    swift_unknownObjectRelease();
    v4 = [v3 InFocus];
    swift_unknownObjectRelease();
    v5 = type metadata accessor for AppLaunchCountSignal();
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = v4;
    v12 = v1;
    v7 = *(v1 + 16);
    if (v7 >= *(v1 + 24) >> 1)
    {
      sub_23152D5B8();
      v1 = v12;
    }

    ++v0;
    v10 = v5;
    v11 = &protocol witness table for AppLaunchCountSignal;
    *&v9 = v6;
    *(v1 + 16) = v7 + 1;
    sub_23149FD3C(&v9, v1 + 40 * v7 + 32);
  }

  while (v0 != 3);
  return v1;
}

uint64_t sub_2314B8D94(uint64_t a1)
{
  v3 = *(sub_231585884() - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  OUTLINED_FUNCTION_7_4();
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v11 = v1 + v10;
  v12 = *v11;
  v13 = *(v11 + 8);

  return sub_2314B7BBC(a1, v8, v9, v1 + v7, v1 + v6, v12, v13);
}

void sub_2314B8E34(void *a1)
{
  v3 = *(sub_231585884() - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  OUTLINED_FUNCTION_7_4();
  v9 = *(v1 + v8);

  sub_2314B8008(a1, v1 + v7, v1 + v6, v9);
}

uint64_t sub_2314B8F74(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_231585884();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2314B8FB8(uint64_t a1)
{
  v2 = type metadata accessor for Aggregation.BucketRange();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppMetadata.bundleIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AppMetadata.localizedAppName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void *AppMetadata.__allocating_init(bundleIdentifer:localizedAppName:supportedMediaCategories:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_1_2();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

void *AppMetadata.init(bundleIdentifer:localizedAppName:supportedMediaCategories:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

uint64_t sub_2314B90F0()
{
  sub_231586954();
  MEMORY[0x23192FF80](0xD000000000000020, 0x80000002315907F0);
  MEMORY[0x23192FF80](v0[2], v0[3]);
  MEMORY[0x23192FF80](0xD000000000000014, 0x8000000231590820);
  v4 = v0[4];
  v6 = v0[5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B120, &qword_23158ACE0);
  v1 = sub_231586204();
  MEMORY[0x23192FF80](v1);

  MEMORY[0x23192FF80](0xD00000000000001CLL, 0x8000000231590840);
  v5 = v0[6];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B128, &qword_231588058);
  v2 = sub_231586204();
  MEMORY[0x23192FF80](v2);

  MEMORY[0x23192FF80](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_2314B923C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000231590880 == a2;
  if (v3 || (sub_231586C44() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000002315908A0 == a2;
    if (v6 || (sub_231586C44() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000018 && 0x80000002315908C0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_231586C44();

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

uint64_t sub_2314B9360(unsigned __int8 a1)
{
  sub_231586D14();
  MEMORY[0x231930A00](a1);
  return sub_231586D44();
}

unint64_t sub_2314B93B4(unsigned __int8 a1)
{
  result = 0xD000000000000010;
  if (a1 >= 2u)
  {
    return 0xD000000000000018;
  }

  return result;
}

uint64_t sub_2314B9424()
{
  v1 = *v0;
  sub_231586D14();
  MEMORY[0x231930A00](v1);
  return sub_231586D44();
}

uint64_t sub_2314B9470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2314B923C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2314B94B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2314B9358();
  *a1 = result;
  return result;
}

uint64_t sub_2314B94E0(uint64_t a1)
{
  v2 = sub_2314B9784();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2314B951C(uint64_t a1)
{
  v2 = sub_2314B9784();

  return MEMORY[0x2821FE720](a1, v2);
}

void *AppMetadata.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return v0;
}

uint64_t AppMetadata.__deallocating_deinit()
{
  AppMetadata.deinit();
  v0 = OUTLINED_FUNCTION_1_2();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2314B95B4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B130, &qword_231588060);
  v6 = OUTLINED_FUNCTION_4_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v19[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2314B9784();
  sub_231586D64();
  v14 = v3[2];
  v15 = v3[3];
  v22 = 0;
  sub_231586BD4();
  if (!v2)
  {
    v16 = v3[4];
    v17 = v3[5];
    v21 = 1;
    sub_231586BB4();
    v20 = v3[6];
    v19[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
    sub_2314B9AA0(&qword_280D6C6C8);
    sub_231586BC4();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_2314B9784()
{
  result = qword_280D6E5F0;
  if (!qword_280D6E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6E5F0);
  }

  return result;
}

uint64_t AppMetadata.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_1_2();
  v2 = swift_allocObject();
  AppMetadata.init(from:)(a1);
  return v2;
}

void *AppMetadata.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B138, &qword_231588068);
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2314B9784();
  sub_231586D54();
  if (v2)
  {
    type metadata accessor for AppMetadata();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[2] = sub_231586B54();
    v1[3] = v9;
    v1[4] = sub_231586B34();
    v1[5] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
    sub_2314B9AA0(&qword_280D6C6C0);
    sub_231586B44();
    v12 = OUTLINED_FUNCTION_0_4();
    v13(v12);
    v1[6] = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_2314B9AA0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD5B0E8, &unk_231589320);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2314B9B0C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = AppMetadata.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2314B9D98()
{
  result = qword_27DD5B140;
  if (!qword_27DD5B140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B140);
  }

  return result;
}

unint64_t sub_2314B9DF0()
{
  result = qword_280D6E5E0;
  if (!qword_280D6E5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6E5E0);
  }

  return result;
}

unint64_t sub_2314B9E48()
{
  result = qword_280D6E5E8;
  if (!qword_280D6E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6E5E8);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AppOpenTime(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AppOpenTime(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

void sub_2314B9F0C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = [a1 absoluteTimestamp];
  if (v11)
  {
    v12 = v11;
    sub_231585834();

    v13 = sub_231585884();
    v14 = 0;
  }

  else
  {
    v13 = sub_231585884();
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v8, v14, 1, v13);
  sub_2314A0710(v8, v10);
  sub_231585884();
  if (__swift_getEnumTagSinglePayload(v10, 1, v13) == 1)
  {
    sub_2314BA0FC(v10);
    return;
  }

  sub_231585784();
  v16 = v15;
  (*(*(v13 - 8) + 8))(v10, v13);
  v17 = round(v16);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v18 = v17;
  if ([a1 starting])
  {
    *v2 = v18;
    *(v2 + 8) = 0;
  }

  else
  {
    sub_2314BA164(v18);
  }
}

uint64_t sub_2314BA0FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2314BA164(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 8))
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v3 = sub_231585FF4();
    __swift_project_value_buffer(v3, qword_280D72248);
    v4 = sub_231585FE4();
    v5 = sub_2315865D4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_231496000, v4, v5, "ignoring extra stop", v6, 2u);
      MEMORY[0x231931280](v6, -1, -1);
    }

    goto LABEL_10;
  }

  v7 = a1 - *v1;
  if (__OFSUB__(a1, *v1))
  {
    __break(1u);
  }

  else
  {
    v8 = *(v1 + 16);
    v9 = __OFADD__(v8, v7);
    v10 = v8 + v7;
    if (!v9)
    {
      *(v1 + 16) = v10;
LABEL_10:
      *v2 = 0;
      *(v2 + 8) = 1;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_2314BA290(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v5 = sub_2314BA520(a1, a2, 0);
  v6 = [v5 localizedName];

  v7 = sub_2315861A4();
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v8 = sub_231585FF4();
  __swift_project_value_buffer(v8, qword_280D72248);

  v9 = sub_231585FE4();
  v10 = sub_2315865D4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v11 = 136315394;

    v12 = sub_2314A22E8();

    *(v11 + 4) = v12;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_2314A22E8();
    _os_log_impl(&dword_231496000, v9, v10, "Found localized app name: %s for bundleIdentifier: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231931280](v14, -1, -1);
    MEMORY[0x231931280](v11, -1, -1);
  }

  return v7;
}

id sub_2314BA520(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_231586174();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_2315856D4();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_2314BA690(char a1)
{
  sub_231586D14();
  MEMORY[0x231930A00](a1 & 1);
  return sub_231586D44();
}

uint64_t AppSelectionSignalComponent.subSignalValueForApps(bundleIDs:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_0();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v16 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v16, v5, v17);
  v18 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a4;
  *(v19 + 3) = a5;
  *(v19 + 4) = a2;
  *(v19 + 5) = a3;
  (*(v12 + 32))(&v19[v18], v16, a4);
  v20 = *(a5 + 32);

  v20(a1, sub_2314BA99C, v19, a4, a5);
}

uint64_t sub_2314BA8AC(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  *(inited + 32) = (*(a6 + 8))(a5, a6);
  *(inited + 40) = v12;
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  sub_2314A5168(v9, v10);
  sub_2315860F4();
  a2();
}

uint64_t sub_2314BA9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v25 = a1;
  v8 = sub_231585884();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v13);
  v15 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - v16;
  sub_231585874();
  (*(v10 + 16))(v15, v17, v8);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v10 + 32))(v20 + v18, v15, v8);
  v21 = (v20 + v19);
  *v21 = a2;
  v21[1] = a3;
  v22 = *(a5 + 40);

  v22(v25, sub_2314BB058, v20, v26, a5);

  return (*(v10 + 8))(v17, v8);
}

uint64_t sub_2314BABA4(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v41[1] = a4;
  v42 = a3;
  v48 = a2;
  v47 = sub_231585884();
  v5 = *(v47 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2315860F4();
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v45 = (v5 + 8);
  v49 = a1;

  v14 = 0;
  v43 = v13;
  v44 = a1 + 64;
  if (v12)
  {
    while (1)
    {
      v15 = v14;
LABEL_8:
      v16 = (v15 << 10) | (16 * __clz(__rbit64(v12)));
      v17 = (*(v49 + 48) + v16);
      v19 = *v17;
      v18 = v17[1];
      v20 = *(v49 + 56) + v16;
      v21 = *v20;
      v22 = *(v20 + 8);

      v50 = v22;
      sub_2314A5168(v21, v22);
      v23 = v46;
      sub_231585874();
      sub_2315857A4();
      v25 = v24;
      (*v45)(v23, v47);
      swift_isUniquelyReferenced_nonNull_native();
      v51 = v8;
      v26 = sub_23149C888(v19, v18);
      if (__OFADD__(v8[2], (v27 & 1) == 0))
      {
        break;
      }

      v28 = v26;
      v29 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B148, &qword_231588398);
      if (sub_231586A64())
      {
        v30 = sub_23149C888(v19, v18);
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_22;
        }

        v28 = v30;
      }

      v12 &= v12 - 1;
      if (v29)
      {

        v8 = v51;
        v32 = v51[7] + 24 * v28;
        v33 = *v32;
        *v32 = v21;
        v34 = *(v32 + 8);
        *(v32 + 8) = v50;
        *(v32 + 16) = v25;
        sub_2314A5EEC(v33, v34);
      }

      else
      {
        v8 = v51;
        v51[(v28 >> 6) + 8] |= 1 << v28;
        v35 = (v8[6] + 16 * v28);
        *v35 = v19;
        v35[1] = v18;
        v36 = v8[7] + 24 * v28;
        *v36 = v21;
        *(v36 + 8) = v50;
        *(v36 + 16) = v25;
        v37 = v8[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_21;
        }

        v8[2] = v39;
      }

      v14 = v15;
      v13 = v43;
      v9 = v44;
      if (!v12)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        v42(v8);
      }

      v12 = *(v9 + 8 * v15);
      ++v14;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_231586C84();
  __break(1u);
  return result;
}

uint64_t SyncSignalCollector.value(completion:)(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 8))(&v10, a3, a4);
  v8 = v10;
  v9 = v11;
  a1(&v8);
  v5 = v8;
  v6 = v9;

  return sub_2314A5EEC(v5, v6);
}

uint64_t sub_2314BB044(uint64_t (*a1)(uint64_t *))
{
  v2 = *v1;
  v3 = v1[1];
  return sub_231553AEC(a1);
}

uint64_t sub_2314BB058(uint64_t a1)
{
  v3 = *(sub_231585884() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_2314BABA4(a1, v1 + v4, v6, v7);
}

uint64_t sub_2314BB0F8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 24))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
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

uint64_t sub_2314BB138(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConversionError(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ConversionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2314BB300()
{
  result = qword_27DD5B158;
  if (!qword_27DD5B158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B158);
  }

  return result;
}

uint64_t sub_2314BB35C(uint64_t a1, uint64_t a2)
{
  v4 = sub_231585BA4();
  v5 = *(v4 - 8);
  v59 = v4;
  v60 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v61 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    v62 = sub_231571528(v8);

    v64 = sub_231572E78(v9);
    v10 = *(a2 + 16);
    if (v10)
    {
      v63 = sub_2314BB910();
      v58 = v60 + 32;
      v11 = (a2 + 40);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        swift_bridgeObjectRetain_n();
        v14 = sub_2314BB8AC();
        if (!v14 || (v15 = v14, v16 = sub_2314D7590(), v18 = v17, v15, !v18))
        {

          v16 = v12;
          v18 = v13;
        }

        v65 = v12;
        v66 = v13;
        MEMORY[0x28223BE20](v19);
        *(&v58 - 2) = &v65;
        v20 = v64;
        v21 = sub_2314E62A8(sub_2314BB954, (&v58 - 4), v64);
        if (v21)
        {
        }

        else
        {
          v65 = v16;
          v66 = v18;
          MEMORY[0x28223BE20](v21);
          *(&v58 - 2) = &v65;
          v22 = v20;
          v23 = sub_2314E62A8(sub_2314BB974, (&v58 - 4), v20);

          if (!v23)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v32 = *(v22 + 16);
              sub_23149D588();
              v22 = v33;
            }

            v25 = *(v22 + 16);
            v24 = *(v22 + 24);
            v64 = v22;
            if (v25 >= v24 >> 1)
            {
              OUTLINED_FUNCTION_0_5(v24);
              sub_23149D588();
              v64 = v34;
            }

            v26 = v64;
            *(v64 + 16) = v25 + 1;
            v27 = v26 + 16 * v25;
            *(v27 + 32) = v12;
            *(v27 + 40) = v13;
            sub_231585B94();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2314F0FA0(0, *(v62 + 16) + 1, 1, v62);
              v62 = v35;
            }

            v29 = *(v62 + 16);
            v28 = *(v62 + 24);
            if (v29 >= v28 >> 1)
            {
              v36 = OUTLINED_FUNCTION_0_5(v28);
              sub_2314F0FA0(v36, v37, v38, v62);
              v62 = v39;
            }

            v30 = v61;
            v31 = v62;
            *(v62 + 16) = v29 + 1;
            (*(v60 + 32))(v31 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v29, v30, v59);
            goto LABEL_20;
          }
        }

LABEL_20:
        v11 += 2;
        --v10;
      }

      while (v10);
    }

    v40 = sub_2315860F4();
    v41 = sub_231585B64();

    v63 = *(v41 + 16);
    if (v63)
    {
      v42 = 0;
      v43 = (v64 + 40);
      while (v42 < *(v41 + 16))
      {
        if (v42 >= *(v64 + 16))
        {
          goto LABEL_39;
        }

        v44 = *(v41 + 8 * v42 + 32);
        v46 = *(v43 - 1);
        v45 = *v43;

        swift_isUniquelyReferenced_nonNull_native();
        v65 = v40;
        v47 = sub_23149C888(v46, v45);
        if (__OFADD__(v40[2], (v48 & 1) == 0))
        {
          goto LABEL_40;
        }

        v49 = v47;
        v50 = v48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B168, &unk_23158B500);
        if (sub_231586A64())
        {
          v51 = sub_23149C888(v46, v45);
          if ((v50 & 1) != (v52 & 1))
          {
            goto LABEL_42;
          }

          v49 = v51;
        }

        if (v50)
        {

          v40 = v65;
          *(v65[7] + 8 * v49) = v44;
        }

        else
        {
          v40 = v65;
          v65[(v49 >> 6) + 8] |= 1 << v49;
          v53 = (v40[6] + 16 * v49);
          *v53 = v46;
          v53[1] = v45;
          *(v40[7] + 8 * v49) = v44;
          v54 = v40[2];
          v55 = __OFADD__(v54, 1);
          v56 = v54 + 1;
          if (v55)
          {
            goto LABEL_41;
          }

          v40[2] = v56;
        }

        ++v42;
        v43 += 2;
        if (v63 == v42)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      result = sub_231586C84();
      __break(1u);
    }

    else
    {
LABEL_34:

      return v40;
    }
  }

  else
  {

    return sub_2315860F4();
  }

  return result;
}

id sub_2314BB8AC()
{
  v0 = sub_231586174();

  v1 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v1;
}

unint64_t sub_2314BB910()
{
  result = qword_27DD5B160;
  if (!qword_27DD5B160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD5B160);
  }

  return result;
}

void sub_2314BB990(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1;
    v39 = MEMORY[0x277D84F90];
    sub_23152D678();
    v5 = v39;
    v7 = sub_2315634C4(v4);
    v9 = v8;
    v10 = 0;
    v38 = v4 + 56;
    v31 = v4 + 64;
    v32 = v3;
    v33 = v4;
    v34 = a2;
    if ((v7 & 0x8000000000000000) == 0)
    {
      while (v7 < 1 << *(v4 + 32))
      {
        v11 = v7 >> 6;
        if ((*(v38 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
        {
          goto LABEL_31;
        }

        if (*(v4 + 36) != v6)
        {
          goto LABEL_32;
        }

        v35 = v10;
        v36 = v6;
        v12 = (*(v4 + 48) + 16 * v7);
        v14 = *v12;
        v13 = v12[1];
        v15 = *(a2 + 16);

        if (v15)
        {

          v16 = sub_23149C888(v14, v13);
          if (v17)
          {
            v18 = *(*(a2 + 56) + 8 * v16);
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }

        v19 = *(v5 + 16);
        v20 = v36;
        if (v19 >= *(v5 + 24) >> 1)
        {
          sub_23152D678();
          v20 = v36;
        }

        *(v5 + 16) = v19 + 1;
        v21 = (v5 + 24 * v19);
        v21[4] = v14;
        v21[5] = v13;
        v21[6] = v18;
        if (v9)
        {
          goto LABEL_36;
        }

        v4 = v33;
        a2 = v34;
        v22 = 1 << *(v33 + 32);
        if (v7 >= v22)
        {
          goto LABEL_33;
        }

        v23 = *(v38 + 8 * v11);
        if ((v23 & (1 << v7)) == 0)
        {
          goto LABEL_34;
        }

        if (*(v33 + 36) != v20)
        {
          goto LABEL_35;
        }

        v24 = v23 & (-2 << (v7 & 0x3F));
        if (v24)
        {
          v22 = __clz(__rbit64(v24)) | v7 & 0x7FFFFFFFFFFFFFC0;
          v25 = v32;
        }

        else
        {
          v37 = v5;
          v26 = v11 << 6;
          v27 = v11 + 1;
          v25 = v32;
          v28 = (v31 + 8 * v11);
          while (v27 < (v22 + 63) >> 6)
          {
            v30 = *v28++;
            v29 = v30;
            v26 += 64;
            ++v27;
            if (v30)
            {
              sub_2314ABA68(v7, v20, 0);
              v22 = __clz(__rbit64(v29)) + v26;
              goto LABEL_25;
            }
          }

          sub_2314ABA68(v7, v20, 0);
LABEL_25:
          v5 = v37;
        }

        v10 = v35 + 1;
        if (v35 + 1 == v25)
        {
          goto LABEL_29;
        }

        v9 = 0;
        v6 = *(v33 + 36);
        v7 = v22;
        if (v22 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
LABEL_29:
  }
}

uint64_t static AppUsageRelativeSignal.signalName.getter()
{
  swift_beginAccess();
  v0 = qword_27DD5B170;

  return v0;
}

uint64_t static AppUsageRelativeSignal.signalName.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_27DD5B170 = a1;
  off_27DD5B178 = a2;
}

uint64_t sub_2314BBD6C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_27DD5B178;
  *a1 = qword_27DD5B170;
  a1[1] = v2;
}

uint64_t sub_2314BBDBC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_27DD5B170 = v2;
  off_27DD5B178 = v1;
}

uint64_t AppUsageRelativeSignal.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AppUsageRelativeSignal.init(name:candidateAppIds:timeInterval:maxValue:nowProvider:dataSource:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a9;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 48) = a6;
  *(a8 + 56) = a7;
  return result;
}

uint64_t AppUsageRelativeSignal.value(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];
  v12[0] = *v2;
  v12[1] = v5;
  v6 = v2[3];
  v12[2] = v2[2];
  v12[3] = v6;
  v7 = swift_allocObject();
  v8 = v2[1];
  *(v7 + 16) = *v2;
  *(v7 + 32) = v8;
  v9 = v2[3];
  *(v7 + 48) = v2[2];
  *(v7 + 64) = v9;
  *(v7 + 80) = a1;
  *(v7 + 88) = a2;
  sub_2314BC914(v12, &v11);

  sub_2314BC6A8(sub_2314BC364, v7);
}

uint64_t sub_2314BBF20(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v71 = a4;
  v7 = sub_231585884();
  v8 = OUTLINED_FUNCTION_4_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v8);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v64 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v64 - v20;
  v22 = *a1;
  v23 = *(a2 + 48);
  (*(a2 + 40))(v19);
  v24 = -*(a2 + 24);
  sub_2315857B4();
  v70 = v18;
  v73 = v18;
  v25 = sub_2314DCF7C(sub_2314BD0B4, v72, v22);
  sub_2315857B4();
  v69 = *(a2 + 16);
  v26 = static StreamedEventsAggregator.group(events:now:beginning:candidateAppIds:)(v25, v21, v15, v69);

  v29 = *(v10 + 8);
  v28 = v10 + 8;
  v27 = v29;
  result = v29(v15, v7);
  v31 = 0;
  v32 = v26 + 64;
  v33 = 1 << *(v26 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v26 + 64);
  v36 = (v33 + 63) >> 6;
  v37 = 0.0;
  if (v35)
  {
    while (1)
    {
      v38 = v31;
LABEL_9:
      v39 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v37 = v37 + *(*(v26 + 56) + ((v38 << 9) | (8 * v39)));
      if (!v35)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v38 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v38 >= v36)
    {
      break;
    }

    v35 = *(v32 + 8 * v38);
    ++v31;
    if (v35)
    {
      v31 = v38;
      goto LABEL_9;
    }
  }

  v64 = 0;
  v65 = v27;
  v66 = a3;
  v67 = v28;
  v68 = v7;
  v40 = *(a2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B188, &unk_231588590);
  result = sub_231586AC4();
  v41 = result;
  v42 = 0;
  v43 = 1 << *(v26 + 32);
  v44 = *(v26 + 64);
  v45 = -1;
  if (v43 < 64)
  {
    v45 = ~(-1 << v43);
  }

  v46 = v45 & v44;
  v47 = (v43 + 63) >> 6;
  v48 = result + 64;
  if ((v45 & v44) == 0)
  {
LABEL_15:
    v50 = v42;
    while (1)
    {
      v42 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        goto LABEL_28;
      }

      if (v42 >= v47)
      {

        sub_2314BB990(v69, v41);
        v61 = v60;

        v74 = sub_231507638(v61);
        v75 = 1;
        v66(&v74);
        sub_2314A5EEC(v74, v75);
        v62 = v68;
        v63 = v65;
        v65(v21, v68);
        return v63(v70, v62);
      }

      v51 = *(v32 + 8 * v42);
      ++v50;
      if (v51)
      {
        v49 = __clz(__rbit64(v51));
        v46 = (v51 - 1) & v51;
        goto LABEL_20;
      }
    }
  }

  while (1)
  {
    v49 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
LABEL_20:
    v52 = v49 | (v42 << 6);
    v53 = round(*(*(v26 + 56) + 8 * v52) * v40 / v37);
    if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v53 <= -9.22337204e18)
    {
      goto LABEL_30;
    }

    if (v53 >= 9.22337204e18)
    {
      goto LABEL_31;
    }

    v54 = (*(v26 + 48) + 16 * v52);
    v55 = *v54;
    result = v54[1];
    *(v48 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
    v56 = (v41[6] + 16 * v52);
    *v56 = v55;
    v56[1] = result;
    *(v41[7] + 8 * v52) = v53;
    v57 = v41[2];
    v58 = __OFADD__(v57, 1);
    v59 = v57 + 1;
    if (v58)
    {
      goto LABEL_32;
    }

    v41[2] = v59;

    if (!v46)
    {
      goto LABEL_15;
    }
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2314BC370@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v36 = a3;
  v33 = type metadata accessor for StreamedEventsAggregator.AppEvent(0);
  v5 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v7 = (v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_231585884();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v34 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v31 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v31 - v16;
  v18 = *a1;
  v19 = sub_2314D7528(*a1);
  if (v20)
  {
    v21 = v20;
    v32 = v19;
    v22 = [v18 absoluteTimestamp];
    if (v22)
    {
      v23 = v22;
      v31[1] = v3;
      sub_231585834();

      v24 = *(v9 + 32);
      v24(v17, v15, v8);
      if (sub_2315857D4())
      {
        (*(v9 + 16))(v34, v17, v8);
        v25 = [v18 starting];
        (*(v9 + 8))(v17, v8);
        v26 = v33;
        *v7 = v32;
        v7[1] = v21;
        v24(v7 + *(v26 + 20), v34, v8);
        *(v7 + *(v26 + 24)) = v25 ^ 1;
        v27 = v36;
        sub_2314BD0D0(v7, v36);
        v28 = type metadata accessor for StreamedEventsAggregator.Event(0);
        swift_storeEnumTagMultiPayload();
        return __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
      }

      (*(v9 + 8))(v17, v8);
    }

    else
    {
    }
  }

  v30 = type metadata accessor for StreamedEventsAggregator.Event(0);
  return __swift_storeEnumTagSinglePayload(v36, 1, 1, v30);
}

unint64_t sub_2314BC660(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
  return sub_2314BD080(v3);
}

uint64_t sub_2314BC6A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_231586024();
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_231586064();
  v15 = OUTLINED_FUNCTION_4_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v3 + 48);
  v23 = swift_allocObject();
  v23[2] = v3;
  v23[3] = a1;
  v23[4] = a2;
  aBlock[4] = sub_2314BCBF8;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23149B484;
  aBlock[3] = &block_descriptor_0;
  v24 = _Block_copy(aBlock);

  sub_231586054();
  v26[1] = MEMORY[0x277D84F90];
  sub_2314BCC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B180, &unk_231589020);
  sub_2314BCC5C();
  sub_2315867C4();
  MEMORY[0x231930370](0, v21, v13, v24);
  _Block_release(v24);
  (*(v9 + 8))(v13, v6);
  (*(v17 + 8))(v21, v14);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2314BC960(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_2314BC9A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2314BCA00(void *a1, void (*a2)(void *), uint64_t a3)
{
  swift_beginAccess();
  v6 = a1[4];
  if (v6 == 1)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = a3;
    swift_beginAccess();

    sub_2314D4608();
    v17 = *(a1[5] + 16);
    sub_2314D4694(v17);
    v18 = a1[5];
    *(v18 + 16) = v17 + 1;
    v19 = v18 + 16 * v17;
    *(v19 + 32) = sub_2314BD040;
    *(v19 + 40) = v16;
    a1[5] = v18;
    return swift_endAccess();
  }

  else if (v6)
  {
    v20[0] = a1[4];

    a2(v20);
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    swift_beginAccess();

    sub_2314D4608();
    v8 = *(a1[5] + 16);
    sub_2314D4694(v8);
    v9 = a1[5];
    *(v9 + 16) = v8 + 1;
    v10 = v9 + 16 * v8;
    *(v10 + 32) = sub_2314BD144;
    *(v10 + 40) = v7;
    a1[5] = v9;
    swift_endAccess();
    v11 = a1[4];
    a1[4] = 1;
    sub_2314BD080(v11);
    v13 = a1[2];
    v12 = a1[3];
    v14 = swift_allocObject();
    swift_weakInit();

    v13(sub_2314BD098, v14);
  }
}

unint64_t sub_2314BCC04()
{
  result = qword_280D6FEC0;
  if (!qword_280D6FEC0)
  {
    sub_231586024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6FEC0);
  }

  return result;
}

unint64_t sub_2314BCC5C()
{
  result = qword_280D6FEB0;
  if (!qword_280D6FEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD5B180, &unk_231589020);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6FEB0);
  }

  return result;
}

uint64_t sub_2314BCCC0(uint64_t a1)
{
  v2 = sub_231586024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_231586064();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v16[1] = *(result + 48);
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = a1;
    aBlock[4] = sub_2314BD0A8;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23149B484;
    aBlock[3] = &block_descriptor_19;
    v15 = _Block_copy(aBlock);

    sub_231586054();
    v16[2] = MEMORY[0x277D84F90];
    sub_2314BCC04();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B180, &unk_231589020);
    sub_2314BCC5C();
    sub_2315867C4();
    MEMORY[0x231930370](0, v11, v6, v15);
    _Block_release(v15);
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t sub_2314BCF6C(uint64_t a1, uint64_t a2)
{

  sub_2314BC660(a2);
  swift_beginAccess();
  v4 = *(a1 + 40);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(a1 + 40);

    v7 = (v4 + 40);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v12 = a2;

      v9(&v12);

      v7 += 2;
      --v5;
    }

    while (v5);

    v10 = *(a1 + 40);
  }

  *(a1 + 40) = MEMORY[0x277D84F90];
}

uint64_t sub_2314BD044(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  return v2(&v5);
}