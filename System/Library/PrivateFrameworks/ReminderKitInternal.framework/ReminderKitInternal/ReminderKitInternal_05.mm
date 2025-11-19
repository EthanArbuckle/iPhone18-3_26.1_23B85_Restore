uint64_t sub_2300A9348(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_230311358();
  MEMORY[0x2319130E0](a2);
  v6 = sub_2303113A8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_2300ABA28(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2300A9440(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_230311358();
  MEMORY[0x2319130E0](a2);
  v6 = sub_2303113A8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_2300ABB84(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2300A9538(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  sub_230311358();
  sub_23030F9C8();
  v7 = sub_2303113A8();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v13 = v12;
      if (v11 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_230311048();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_2300ABCD0(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_2300A96E4(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_2303106E8();

    if (v9)
    {

      sub_23004CBA4(0, &qword_280C9C478);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_2303106D8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_230104890(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_2300AAB64(v20 + 1, &qword_27DB15BD0);
    }

    v18 = v8;
    sub_2301081C4();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_23004CBA4(0, &qword_280C9C478);
  v11 = sub_230310438();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_2300ABEDC(v18, v13, isUniquelyReferenced_nonNull_native, &qword_27DB15BD0, &unk_230316E08, &qword_280C9C478);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_230310448();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_2300A994C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_23030ED38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2300AE9E8(&qword_27DB14990, MEMORY[0x277CC9788]);
  v33 = a2;
  v11 = sub_23030F768();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_2300AE9E8(&qword_27DB14998, MEMORY[0x277CC9788]);
      v21 = sub_23030F818();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_2300AC06C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2300A9C2C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149E8);
  result = sub_2303107C8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_230311358();
      sub_23030F9C8();
      result = sub_2303113A8();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_2300A9EA0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149B0);
  result = sub_2303107C8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_230311348();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_2300AA0C4()
{
  v1 = v0;
  v35 = sub_23030EBB8();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149B8);
  result = sub_2303107C8();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_2300AE9E8(&qword_280C98528, MEMORY[0x277CC95F0]);
      result = sub_23030F768();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_2300AA434()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149D0);
  result = sub_2303107C8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_230311358();
      MEMORY[0x2319130E0](v16);
      result = sub_2303113A8();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_2300AA684()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149C8);
  result = sub_2303107C8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_230311358();
      MEMORY[0x2319130E0](v16);
      result = sub_2303113A8();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_2300AA8D4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149C0);
  result = sub_2303107C8();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      sub_230311358();
      sub_23030F9C8();
      v17 = sub_2303113A8();

      v18 = -1 << *(v4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero(v6, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v26;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_2300AAB64(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_2303107C8();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_230310438();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_2300AAD84()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149A8);
  result = sub_2303107C8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_230311358();
      MEMORY[0x2319130E0](v16);
      result = sub_2303113A8();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_2300AAFD4()
{
  v1 = v0;
  v35 = sub_23030ED38();
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149A0);
  result = sub_2303107C8();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_2300AE9E8(&qword_27DB14990, MEMORY[0x277CC9788]);
      result = sub_23030F768();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_2300AB330(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2300A9C2C();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2300AC334();
      goto LABEL_16;
    }

    sub_2300ACE68();
  }

  v10 = *v4;
  sub_230311358();
  sub_23030F9C8();
  result = sub_2303113A8();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_230311048();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_230311298();
  __break(1u);
  return result;
}

uint64_t sub_2300AB4B0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2300A9EA0();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2300AC490();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2300AD0A0();
  }

  v8 = *v3;
  result = sub_230311348();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_230311298();
  __break(1u);
  return result;
}

uint64_t sub_2300AB5D0(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_23030EBB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2300AA0C4();
  }

  else
  {
    if (v11 > v10)
    {
      sub_2300ACC30(MEMORY[0x277CC95F0], &qword_27DB149B8);
      goto LABEL_12;
    }

    sub_2300AD290();
  }

  v12 = *v3;
  sub_2300AE9E8(&qword_280C98528, MEMORY[0x277CC95F0]);
  v13 = sub_23030F768();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_2300AE9E8(&qword_280C98520, MEMORY[0x277CC95F0]);
      v21 = sub_23030F818();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_230311298();
  __break(1u);
  return result;
}

void sub_2300AB898(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2300AAB64(v6 + 1, &qword_27DB149D8);
  }

  else
  {
    if (v7 > v6)
    {
      sub_2300AC9A0(&qword_27DB149D8);
      goto LABEL_12;
    }

    sub_2300ADC40(v6 + 1, &qword_27DB149D8);
  }

  v8 = *v3;
  v9 = sub_230310438();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for REMObjectID_Codable();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_230310448();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_230311298();
  __break(1u);
}

void sub_2300ABA28(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2300AA434();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_2300AC5D0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2300AD5AC();
  }

  v8 = *v3;
  sub_230311358();
  MEMORY[0x2319130E0](a1);
  v9 = sub_2303113A8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for REMReminderPriorityLevel(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_230311298();
  __break(1u);
}

uint64_t sub_2300ABB84(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2300AA684();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2300AC710();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2300AD7CC();
  }

  v8 = *v3;
  sub_230311358();
  MEMORY[0x2319130E0](v4);
  result = sub_2303113A8();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_230311298();
  __break(1u);
  return result;
}

uint64_t sub_2300ABCD0(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_2300AA8D4();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_2300AC850();
      goto LABEL_16;
    }

    sub_2300AD9EC();
  }

  v9 = *v3;
  _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  sub_230311358();
  sub_23030F9C8();
  v10 = sub_2303113A8();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for Dataclass(0);
    do
    {
      v13 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v15 = v14;
      if (v13 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_230311048();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_230311298();
  __break(1u);
  return result;
}

void sub_2300ABEDC(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_2300AAB64(v9 + 1, a4);
  }

  else
  {
    if (v10 > v9)
    {
      sub_2300AC9A0(a4);
      goto LABEL_12;
    }

    v11 = a6;
    sub_2300ADC40(v9 + 1, a4);
  }

  v12 = *v6;
  v13 = sub_230310438();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    sub_23004CBA4(0, v11);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_230310448();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_230311298();
  __break(1u);
}

uint64_t sub_2300AC06C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_23030ED38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2300AAFD4();
  }

  else
  {
    if (v11 > v10)
    {
      sub_2300ACC30(MEMORY[0x277CC9788], &qword_27DB149A0);
      goto LABEL_12;
    }

    sub_2300AE074();
  }

  v12 = *v3;
  sub_2300AE9E8(&qword_27DB14990, MEMORY[0x277CC9788]);
  v13 = sub_23030F768();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_2300AE9E8(&qword_27DB14998, MEMORY[0x277CC9788]);
      v21 = sub_23030F818();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_230311298();
  __break(1u);
  return result;
}

void *sub_2300AC334()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149E8);
  v2 = *v0;
  v3 = sub_2303107B8();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

void *sub_2300AC490()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149B0);
  v2 = *v0;
  v3 = sub_2303107B8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_2300AC5D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149D0);
  v2 = *v0;
  v3 = sub_2303107B8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_2300AC710()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149C8);
  v2 = *v0;
  v3 = sub_2303107B8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_2300AC850()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149C0);
  v2 = *v0;
  v3 = sub_2303107B8();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

id sub_2300AC9A0(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_2303107B8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_2300ACAE0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149A8);
  v2 = *v0;
  v3 = sub_2303107B8();
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

void *sub_2300ACC30(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v9 = *v2;
  v10 = sub_2303107B8();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

uint64_t sub_2300ACE68()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149E8);
  result = sub_2303107C8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_230311358();

      sub_23030F9C8();
      result = sub_2303113A8();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_2300AD0A0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149B0);
  result = sub_2303107C8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_230311348();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2300AD290()
{
  v1 = v0;
  v32 = sub_23030EBB8();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149B8);
  v6 = sub_2303107C8();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_2300AE9E8(&qword_280C98528, MEMORY[0x277CC95F0]);
      result = sub_23030F768();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_2300AD5AC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149D0);
  result = sub_2303107C8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      sub_230311358();
      MEMORY[0x2319130E0](v15);
      result = sub_2303113A8();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_2300AD7CC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149C8);
  result = sub_2303107C8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      sub_230311358();
      MEMORY[0x2319130E0](v15);
      result = sub_2303113A8();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_2300AD9EC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149C0);
  result = sub_2303107C8();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      sub_230311358();
      v17 = v16;
      sub_23030F9C8();
      v18 = sub_2303113A8();

      v19 = -1 << *(v4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v17;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v26;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_2300ADC40(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_2303107C8();
  v6 = result;
  if (*(v4 + 16))
  {
    v25 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_230310438();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v25;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t sub_2300ADE4C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149A8);
  result = sub_2303107C8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      sub_230311358();
      MEMORY[0x2319130E0](v15);
      result = sub_2303113A8();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_2300AE074()
{
  v1 = v0;
  v32 = sub_23030ED38();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149A0);
  v6 = sub_2303107C8();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_2300AE9E8(&qword_27DB14990, MEMORY[0x277CC9788]);
      result = sub_23030F768();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

unint64_t sub_2300AE390(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_2300AE428(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_2300AE49C(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_2300AE428(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_2301157F4(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2300AE49C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_230310958();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_2300AE5B0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_2300AE604(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_2300AE710()
{
  result = qword_27DB14988;
  if (!qword_27DB14988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14988);
  }

  return result;
}

unint64_t sub_2300AE764(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_2300AE824(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_2300AE8C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for REMGroceryLanguage();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_2303106D8();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_2303106D8();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_2300AE9E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2300AEA30(uint64_t a1, uint64_t a2)
{
  Predicate = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate(0);
  (*(*(Predicate - 8) + 16))(a2, a1, Predicate);
  return a2;
}

uint64_t sub_2300AEA94(uint64_t a1)
{
  Predicate = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate(0);
  (*(*(Predicate - 8) + 8))(a1, Predicate);
  return a1;
}

uint64_t REMiCloudSharedItemSpecifier.PublicTemplate.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23030EBB8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t REMiCloudSharedItemSpecifier.PublicTemplate.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate(0) + 20));

  return v1;
}

uint64_t REMiCloudSharedItemSpecifier.PublicTemplate.init(uuid:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23030EBB8();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t static REMiCloudSharedItemSpecifier.PublicTemplate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_23030EB98())
  {
    v4 = *(type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate(0) + 20);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (sub_230311048() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2300AECC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_23030EB98())
  {
    v6 = *(a3 + 20);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = v9[1];
    if (v8)
    {
      if (v10)
      {
        v11 = *v7 == *v9 && v8 == v10;
        if (v11 || (sub_230311048() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v10)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t REMiCloudSharedItemSpecifier.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149F0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149F8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v35 - v11;
  v13 = sub_23030E578();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v36 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  v16 = sub_23030E978();
  if (!v17)
  {
    goto LABEL_10;
  }

  if (v16 == 0x7370747468 && v17 == 0xE500000000000000)
  {

    goto LABEL_6;
  }

  v18 = sub_230311048();

  if ((v18 & 1) == 0)
  {
LABEL_10:
    sub_2300AF6B4();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
    v25 = sub_23030E9B8();
    return (*(*(v25 - 8) + 8))(v37, v25);
  }

LABEL_6:
  v19 = v37;
  sub_23030E958();
  if (!v20)
  {
    sub_2300AF6B4();
    swift_allocError();
    v28 = 1;
LABEL_14:
    *v27 = v28;
    swift_willThrow();
    v29 = sub_23030E9B8();
    return (*(*(v29 - 8) + 8))(v19, v29);
  }

  v21 = sub_23030E898();
  if (!*(v21 + 16))
  {

    goto LABEL_13;
  }

  v22 = a2;
  v23 = v21;
  sub_23030E538();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {

    sub_230061918(v12, &qword_27DB149F8);
    v19 = v37;
LABEL_13:
    sub_2300AF6B4();
    swift_allocError();
    v28 = 2;
    goto LABEL_14;
  }

  v30 = v36;
  (*(v14 + 32))(v36, v12, v13);
  sub_2300AF294(v23, v9);

  sub_2300AF708(v9, v7);
  v31 = type metadata accessor for REMiCloudSharedItemSpecifier(0);
  if ((*(*(v31 - 8) + 48))(v7, 1, v31) == 1)
  {
    sub_230061918(v7, &qword_27DB149F0);
    sub_2300AF6B4();
    swift_allocError();
    *v32 = 3;
    swift_willThrow();
    v33 = sub_23030E9B8();
    (*(*(v33 - 8) + 8))(v37, v33);
    sub_230061918(v9, &qword_27DB149F0);
    return (*(v14 + 8))(v30, v13);
  }

  else
  {
    v34 = sub_23030E9B8();
    (*(*(v34 - 8) + 8))(v37, v34);
    sub_230061918(v9, &qword_27DB149F0);
    (*(v14 + 8))(v30, v13);
    return sub_2300AF7FC(v7, v22, type metadata accessor for REMiCloudSharedItemSpecifier);
  }
}

uint64_t sub_2300AF294@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v24 - v5;
  v7 = sub_23030EBB8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[2] != 4 || (a1[4] != 47 || a1[5] != 0xE100000000000000) && (sub_230311048() & 1) == 0 || (a1[6] != 0x7265646E696D6572 || a1[7] != 0xE900000000000073) && (sub_230311048() & 1) == 0 || (a1[8] != 0x6574616C706D6574 || a1[9] != 0xE800000000000000) && (sub_230311048() & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_23030EB68();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_230061918(v6, &qword_27DB14800);
LABEL_13:
    v11 = 1;
    goto LABEL_14;
  }

  v14 = *(v8 + 32);
  v14(v10, v6, v7);
  v15 = sub_23030E568();
  if (v16 && (v24[6] = v15, v24[7] = v16, sub_2300A85F0(), v17 = sub_230310578(), v19 = v18, , v19))
  {
    v24[4] = v17;
    v24[5] = v19;
    v24[2] = 95;
    v24[3] = 0xE100000000000000;
    v24[0] = 32;
    v24[1] = 0xE100000000000000;
    v20 = sub_230310568();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v14(a2, v10, v7);
  v11 = 0;
  v23 = &a2[*(type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate(0) + 20)];
  *v23 = v20;
  v23[1] = v22;
LABEL_14:
  v12 = type metadata accessor for REMiCloudSharedItemSpecifier(0);
  return (*(*(v12 - 8) + 56))(a2, v11, 1, v12);
}

uint64_t REMiCloudSharedItemSpecifier.navigationSpecifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for REMiCloudSharedItemSpecifier(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2300AF798(v1, v5);
  sub_2300AF7FC(v5, a1, type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate);
  type metadata accessor for REMNavigationSpecifier(0);
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_2300AF6B4()
{
  result = qword_27DB14A00;
  if (!qword_27DB14A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14A00);
  }

  return result;
}

uint64_t sub_2300AF708(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2300AF798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMiCloudSharedItemSpecifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2300AF7FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s19ReminderKitInternal28REMiCloudSharedItemSpecifierO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14A10);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v23 - v12;
  v14 = *(v11 + 56);
  sub_2300AF798(a1, &v23 - v12);
  sub_2300AF798(a2, &v13[v14]);
  sub_2300AF7FC(v13, v9, type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate);
  sub_2300AF7FC(&v13[v14], v7, type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate);
  if ((sub_23030EB98() & 1) == 0)
  {
    goto LABEL_11;
  }

  v15 = *(v4 + 20);
  v16 = &v9[v15];
  v17 = *&v9[v15 + 8];
  v18 = &v7[v15];
  v19 = *(v18 + 1);
  if (v17)
  {
    if (v19)
    {
      v20 = *v16 == *v18 && v17 == v19;
      if (v20 || (sub_230311048() & 1) != 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    v21 = 0;
    goto LABEL_12;
  }

  if (v19)
  {
    goto LABEL_11;
  }

LABEL_9:
  v21 = 1;
LABEL_12:
  sub_2300B05C0(v7);
  sub_2300B05C0(v9);
  return v21;
}

uint64_t *initializeBufferWithCopyOfBuffer for REMiCloudSharedItemSpecifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = sub_23030EBB8();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    v7 = *(type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate(0) + 20);
    v8 = (a1 + v7);
    v9 = (a2 + v7);
    v10 = v9[1];
    *v8 = *v9;
    v8[1] = v10;
  }

  return a1;
}

uint64_t destroy for REMiCloudSharedItemSpecifier(uint64_t a1)
{
  v2 = sub_23030EBB8();
  (*(*(v2 - 8) + 8))(a1, v2);
  type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate(0);
}

uint64_t initializeWithCopy for REMiCloudSharedItemSpecifier(uint64_t a1, uint64_t a2)
{
  v4 = sub_23030EBB8();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  v5 = *(type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate(0) + 20);
  v6 = (a1 + v5);
  v7 = (a2 + v5);
  v8 = v7[1];
  *v6 = *v7;
  v6[1] = v8;

  return a1;
}

uint64_t assignWithCopy for REMiCloudSharedItemSpecifier(uint64_t a1, uint64_t a2)
{
  v4 = sub_23030EBB8();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  v5 = *(type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate(0) + 20);
  v6 = (a1 + v5);
  v7 = (a2 + v5);
  *v6 = *v7;
  v6[1] = v7[1];

  return a1;
}

uint64_t initializeWithTake for REMiCloudSharedItemSpecifier(uint64_t a1, uint64_t a2)
{
  v4 = sub_23030EBB8();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  v5 = type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate(0);
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));
  return a1;
}

uint64_t assignWithTake for REMiCloudSharedItemSpecifier(uint64_t a1, uint64_t a2)
{
  v4 = sub_23030EBB8();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  v5 = *(type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate(0) + 20);
  v6 = (a1 + v5);
  v7 = (a2 + v5);
  v9 = *v7;
  v8 = v7[1];
  *v6 = v9;
  v6[1] = v8;

  return a1;
}

uint64_t getEnumTagSinglePayload for REMiCloudSharedItemSpecifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j____swift_get_extra_inhabitant_indexTm);
}

uint64_t storeEnumTagSinglePayload for REMiCloudSharedItemSpecifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j____swift_store_extra_inhabitant_indexTm);
}

uint64_t sub_2300AFE4C(uint64_t a1)
{
  result = type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate(319);
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8);
    swift_initEnumMetadataSingleCase();
    result = 0;
    *(*(a1 - 8) + 84) = *(v4 + 84);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for REMiCloudSharedItemSpecifier.PublicTemplate(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_23030EBB8();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = (a1 + v8);
    v10 = (a2 + v8);
    v11 = v10[1];
    *v9 = *v10;
    v9[1] = v11;
  }

  return a1;
}

uint64_t destroy for REMiCloudSharedItemSpecifier.PublicTemplate(uint64_t a1)
{
  v2 = sub_23030EBB8();
  (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t initializeWithCopy for REMiCloudSharedItemSpecifier.PublicTemplate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23030EBB8();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;

  return a1;
}

uint64_t assignWithCopy for REMiCloudSharedItemSpecifier.PublicTemplate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23030EBB8();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v8[1] = v9[1];

  return a1;
}

uint64_t initializeWithTake for REMiCloudSharedItemSpecifier.PublicTemplate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23030EBB8();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for REMiCloudSharedItemSpecifier.PublicTemplate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23030EBB8();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v11 = *v9;
  v10 = v9[1];
  *v8 = v11;
  v8[1] = v10;

  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23030EBB8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23030EBB8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for REMiCloudSharedItemSpecifier.URLParsingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for REMiCloudSharedItemSpecifier.URLParsingError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2300B056C()
{
  result = qword_27DB14A08;
  if (!qword_27DB14A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14A08);
  }

  return result;
}

uint64_t sub_2300B05C0(uint64_t a1)
{
  v2 = type metadata accessor for REMiCloudSharedItemSpecifier.PublicTemplate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t REMUrgentReminder.title.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void REMUrgentReminder.uuid.getter()
{
  v1 = [*v0 uuid];
  sub_23030EBA8();
}

uint64_t REMUrgentReminder.init(reminderID:title:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t destroy for REMUrgentReminder(id *a1)
{
}

void *sub_2300B06FC(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = *(a2 + 16);
  v5 = v3;

  return a1;
}

uint64_t assignWithCopy for REMUrgentReminder(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for REMUrgentReminder(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[2];
  *(a1 + 8) = a2[1];
  *(a1 + 16) = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for REMUrgentReminder(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for REMUrgentReminder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t REMChecksumAlgorithm.hashValue.getter()
{
  sub_230311358();
  MEMORY[0x2319130E0](0);
  return sub_2303113A8();
}

uint64_t REMChecksumRepresentable.rem_checksum.getter(uint64_t a1, uint64_t a2)
{
  v5 = sub_23030F5E8();
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23030F568();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v41 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  v14 = (*(a2 + 8))(a1, a2);
  if (v2)
  {
    return a1;
  }

  v16 = *(a2 + 16);
  v39 = v9;
  v17 = v14;
  v18 = a1;
  v19 = v15;
  v16(v18, a2);
  sub_2300B0F60(&qword_280C96FA0, MEMORY[0x277CC5560]);
  sub_23030F558();
  sub_23005FAD4(v17, v19);
  sub_2300B0D80(v17, v19);
  v37 = v17;
  v38 = 0;
  v36 = v19;
  sub_23005FE3C(v17, v19);
  sub_23030F548();
  (*(v44 + 8))(v7, v5);
  (*(v39 + 16))(v41, v13, v8);
  sub_2300B0F60(&qword_27DB14A18, MEMORY[0x277CC52E8]);
  v35 = v8;
  result = sub_23030FB38();
  v21 = v42;
  v22 = v43;
  v44 = *(v42 + 16);
  v23 = v13;
  v24 = MEMORY[0x277D84F90];
  if (v43 == v44)
  {
LABEL_3:
    (*(v39 + 8))(v23, v35);

    v42 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
    sub_2300B0FA8();
    a1 = sub_23030F7C8();
    sub_23005FE3C(v37, v36);

    return a1;
  }

  v41 = (v42 + 32);
  v40 = xmmword_230315CE0;
  v25 = v43;
  while ((v22 & 0x8000000000000000) == 0)
  {
    if (v25 >= *(v21 + 16))
    {
      goto LABEL_15;
    }

    v26 = v41[v25];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14718);
    v27 = swift_allocObject();
    *(v27 + 16) = v40;
    *(v27 + 56) = MEMORY[0x277D84B78];
    *(v27 + 64) = MEMORY[0x277D84BC0];
    *(v27 + 32) = v26;
    v28 = sub_23030F918();
    v30 = v29;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23007E928(0, *(v24 + 16) + 1, 1, v24);
      v24 = result;
    }

    v32 = *(v24 + 16);
    v31 = *(v24 + 24);
    if (v32 >= v31 >> 1)
    {
      result = sub_23007E928((v31 > 1), v32 + 1, 1, v24);
      v24 = result;
    }

    ++v25;
    *(v24 + 16) = v32 + 1;
    v33 = v24 + 16 * v32;
    *(v33 + 32) = v28;
    *(v33 + 40) = v30;
    if (v44 == v25)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2300B0D80(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      sub_23030F5E8();
      sub_2300B0F60(&qword_280C96FA0, MEMORY[0x277CC5560]);
      return sub_23030F538();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_2300B10B0(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_2300B10B0(v4, v5);
  }

  sub_23030F5E8();
  sub_2300B0F60(&qword_280C96FA0, MEMORY[0x277CC5560]);
  return sub_23030F538();
}

uint64_t sub_2300B0F60(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2300B0FA8()
{
  result = qword_280C99CF8;
  if (!qword_280C99CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DB13DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99CF8);
  }

  return result;
}

unint64_t sub_2300B1010()
{
  result = qword_27DB14A20;
  if (!qword_27DB14A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14A20);
  }

  return result;
}

uint64_t sub_2300B10B0(uint64_t a1, uint64_t a2)
{
  result = sub_23030E598();
  if (!result || (result = sub_23030E5B8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_23030E5A8();
      sub_23030F5E8();
      sub_2300B0F60(&qword_280C96FA0, MEMORY[0x277CC5560]);
      return sub_23030F538();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2300B1190()
{
  qword_27DB14A30 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_none");

  return swift_unknownObjectRetain();
}

uint64_t sub_2300B11CC()
{
  qword_280C9ADA8 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

unint64_t REM_os_activity.init(_:dso:options:)@<X0>(void *dso@<X3>, unint64_t result@<X0>, char a3@<W2>, os_activity_flag_t *a4@<X4>, unint64_t a5@<X8>)
{
  v6 = a5;
  v7 = *a4;
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      if (dso)
      {
        v8 = result;
        if (qword_280C9AD98 != -1)
        {
          v20 = *a4;
          v19 = dso;
          swift_once();
          dso = v19;
          v7 = v20;
        }

        v9 = qword_280C9ADA8;
        v10 = dso;
        v11 = v8;
LABEL_16:
        result = _os_activity_create(v10, v11, v9, v7);
LABEL_18:
        *v6 = result;
        return result;
      }

      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_20;
  }

  a5 = HIDWORD(result);
  if (HIDWORD(result))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    a5 = result >> 16;
    if (result >> 16 <= 0x10)
    {
      if (result <= 0x7F)
      {
        v12 = result + 1;
        goto LABEL_12;
      }

LABEL_22:
      v13 = (result & 0x3F) << 8;
      v14 = (result >> 6) + v13 + 33217;
      v15 = (v13 | (result >> 6) & 0x3F) << 8;
      v16 = (result >> 18) + ((v15 | (result >> 12) & 0x3F) << 8) - 2122219023;
      v17 = (result >> 12) + v15 + 8487393;
      if (a5)
      {
        v12 = v16;
      }

      else
      {
        v12 = v17;
      }

      if (result < 0x800)
      {
        v12 = v14;
      }

LABEL_12:
      *description = (v12 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v12) & 0x18)));
      if (dso)
      {
        if (qword_280C9AD98 != -1)
        {
          v21 = v7;
          v18 = dso;
          swift_once();
          dso = v18;
          v7 = v21;
        }

        v9 = qword_280C9ADA8;
        v11 = description;
        v10 = dso;
        goto LABEL_16;
      }

LABEL_17:
      result = 0;
      goto LABEL_18;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

unint64_t REM_os_activity.init(_:dso:parent:options:)@<X0>(os_activity_t dso@<X3>, unint64_t result@<X0>, char a3@<W2>, NSObject **a4@<X4>, os_activity_flag_t *a5@<X5>, os_activity_t *a6@<X8>)
{
  v8 = result;
  v9 = a6;
  v10 = *a4;
  v11 = *a5;
  if (*a4)
  {
    if ((a3 & 1) == 0)
    {
LABEL_3:
      if (v8)
      {
        if (dso)
        {
          v12 = dso;
          v13 = v8;
LABEL_16:
          dso = _os_activity_create(v12, v13, v10, v11);
          goto LABEL_17;
        }

        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_19;
    }
  }

  else
  {
    if (qword_280C9AD98 != -1)
    {
      swift_once();
    }

    v10 = qword_280C9ADA8;
    result = swift_unknownObjectRetain();
    if ((a3 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  a6 = HIDWORD(v8);
  if (HIDWORD(v8))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v8 & 0xFFFFF800) != 0xD800)
  {
    a6 = (v8 >> 16);
    if (v8 >> 16 <= 0x10)
    {
      if (v8 <= 0x7F)
      {
        v14 = v8 + 1;
        goto LABEL_14;
      }

LABEL_21:
      v15 = (v8 & 0x3F) << 8;
      v16 = (v8 >> 6) + v15 + 33217;
      v17 = (v15 | (v8 >> 6) & 0x3F) << 8;
      v18 = (v8 >> 18) + ((v17 | (v8 >> 12) & 0x3F) << 8) - 2122219023;
      v19 = (v8 >> 12) + v17 + 8487393;
      if (a6)
      {
        v14 = v18;
      }

      else
      {
        v14 = v19;
      }

      if (v8 < 0x800)
      {
        v14 = v16;
      }

LABEL_14:
      *description = (v14 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v14) & 0x18)));
      if (dso)
      {
        v13 = description;
        v12 = dso;
        goto LABEL_16;
      }

LABEL_17:
      result = swift_unknownObjectRelease();
      *v9 = dso;
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_2300B15B4@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a3;
    swift_once();
    a3 = v6;
    a2 = v5;
  }

  *a3 = *a2;

  return swift_unknownObjectRetain();
}

void static REM_os_activity.initiate(_:dso:options:execute:)(unint64_t a1, int a2, char a3, void *a4, os_activity_flag_t *a5, void *aBlock)
{
  isEscapingClosureAtFileLocation = *a5;
  v10 = _Block_copy(aBlock);
  if ((a3 & 1) == 0)
  {
    if (!a1)
    {
      __break(1u);
      goto LABEL_20;
    }

    if (!a4)
    {
      goto LABEL_14;
    }

    v12 = v10;
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_23005FEA8;
    *(v14 + 24) = v13;
    v31 = sub_23005FF0C;
    v32 = v14;
    aBlocka = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = sub_23005FEDC;
    v30 = &block_descriptor_14;
    v15 = _Block_copy(&aBlocka);
    _Block_copy(v12);

    _os_activity_initiate(a4, a1, isEscapingClosureAtFileLocation, v15);
    _Block_release(v12);
    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v11 = HIDWORD(a1);
  if (HIDWORD(a1))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v22 = (a1 & 0x3F) << 8;
    v23 = (a1 >> 6) + v22 + 33217;
    v24 = (v22 | (a1 >> 6) & 0x3F) << 8;
    v25 = (a1 >> 18) + ((v24 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
    v26 = (a1 >> 12) + v24 + 8487393;
    if (v11)
    {
      v16 = v25;
    }

    else
    {
      v16 = v26;
    }

    if (a1 < 0x800)
    {
      v16 = v23;
    }

    goto LABEL_11;
  }

  if ((a1 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return;
  }

  v11 = a1 >> 16;
  if (a1 >> 16 > 0x10)
  {
    goto LABEL_21;
  }

  if (a1 > 0x7F)
  {
    goto LABEL_22;
  }

  v16 = a1 + 1;
LABEL_11:
  *description = (v16 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v16) & 0x18)));
  if (!a4)
  {
    _Block_release(v10);
    return;
  }

  v17 = v10;
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_23005FF20;
  *(v19 + 24) = v18;
  v31 = sub_23005FEB4;
  v32 = v19;
  aBlocka = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_23005FEDC;
  v30 = &block_descriptor_0;
  v20 = _Block_copy(&aBlocka);
  _Block_copy(v17);

  _os_activity_initiate(a4, description, isEscapingClosureAtFileLocation, v20);
  _Block_release(v20);
  v21 = swift_isEscapingClosureAtFileLocation();

  _Block_release(v17);
  if ((v21 & 1) == 0)
  {
    return;
  }

  __break(1u);
LABEL_14:

  _Block_release(v10);
}

void REM_os_activity.apply(execute:)(const void *a1)
{
  v2 = _Block_copy(a1);
  v3 = v2;
  v4 = *v1;
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_23005FEA8;
    *(v6 + 24) = v5;
    v9[4] = sub_23005FF0C;
    v9[5] = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_23005FEDC;
    v9[3] = &block_descriptor_25;
    v7 = _Block_copy(v9);

    os_activity_apply(v4, v7);
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {

    _Block_release(v2);
  }
}

_DWORD *sub_2300B1BC8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_2300B1BF4@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

_DWORD *sub_2300B1CB4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void REM_os_activity.Scope.enter(_:)(NSObject **a1)
{
  v2 = *a1;
  if (v2)
  {
    os_activity_scope_enter(v2, v1);
  }
}

unint64_t sub_2300B1D10()
{
  result = qword_27DB14A40;
  if (!qword_27DB14A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14A40);
  }

  return result;
}

unint64_t sub_2300B1D68()
{
  result = qword_27DB14A48;
  if (!qword_27DB14A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14A48);
  }

  return result;
}

void *assignWithCopy for REM_os_activity(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

void *assignWithTake for REM_os_activity(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  return a1;
}

uint64_t getEnumTagSinglePayload for REM_os_activity(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for REM_os_activity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

uint64_t sub_2300B1F14()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB14A50);
  v1 = __swift_project_value_buffer(v0, qword_27DB14A50);
  if (qword_280C9C490 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB17C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_2300B1FDC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, char *, uint64_t))
{
  v108 = a4;
  v104 = a3;
  v6 = sub_2303113D8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v100 = (&v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v102 = &v98 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v103 = &v98 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v105 = &v98 - v15;
  MEMORY[0x28223BE20](v14);
  v107 = &v98 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14A68);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v99 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v98 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v98 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v101 = &v98 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v98 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v98 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v98 - v34;
  sub_230055F74(a1, &v111, &qword_27DB14810);
  v106 = v35;
  if (MetatypeMetadata)
  {
    sub_230061914(&v111, v110);
    sub_23004D5CC(v110, v109);
    sub_2303113B8();
    __swift_destroy_boxed_opaque_existential_1(v110);
    (*(v7 + 56))(v35, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v35, 1, 1, v6);
  }

  v36 = v7;
  v37 = v6;
  MetatypeMetadata = swift_getMetatypeMetadata();
  *&v111 = a2;
  v38 = v107;
  sub_2303113B8();
  v39 = v105;
  if (v108)
  {
    if (qword_27DB13AD0 != -1)
    {
      swift_once();
    }

    v40 = sub_23030EF48();
    __swift_project_value_buffer(v40, qword_27DB14A50);
    sub_230055F74(v106, v33, &qword_27DB14A68);
    v100 = *(v7 + 16);
    v100(v39, v38, v37);

    v41 = sub_23030EF38();
    v42 = sub_230310298();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *&v111 = v99;
      *v43 = 136315650;
      sub_230055F74(v33, v30, &qword_27DB14A68);
      if ((*(v7 + 48))(v30, 1, v37) == 1)
      {
        v44 = 0xE300000000000000;
        v45 = 7104878;
      }

      else
      {
        v58 = v103;
        (*(v7 + 32))(v103, v30, v37);
        v100(v102, v58, v37);
        v45 = sub_23030F948();
        v44 = v59;
        v60 = v58;
        v39 = v105;
        (*(v7 + 8))(v60, v37);
      }

      sub_230061918(v33, &qword_27DB14A68);
      v61 = sub_23004E30C(v45, v44, &v111);

      *(v43 + 4) = v61;
      *(v43 + 12) = 2080;
      v62 = sub_2303113C8();
      v64 = v63;
      v65 = v39;
      v56 = *(v7 + 8);
      v56(v65, v37);
      v66 = sub_23004E30C(v62, v64, &v111);

      *(v43 + 14) = v66;
      *(v43 + 22) = 2080;
      *(v43 + 24) = sub_23004E30C(v104, v108, &v111);
      _os_log_impl(&dword_230044000, v41, v42, "Failed cast {given: %s, expect: %s, message: %s}", v43, 0x20u);
      v67 = v99;
      swift_arrayDestroy();
      MEMORY[0x231914180](v67, -1, -1);
      MEMORY[0x231914180](v43, -1, -1);
    }

    else
    {

      v55 = v39;
      v56 = *(v7 + 8);
      v56(v55, v37);
      sub_230061918(v33, &qword_27DB14A68);
    }

    *&v111 = 0;
    *(&v111 + 1) = 0xE000000000000000;
    sub_230310848();

    *&v111 = 0xD000000000000014;
    *(&v111 + 1) = 0x8000000230340290;
    v47 = v106;
    v68 = v101;
    sub_230055F74(v106, v101, &qword_27DB14A68);
    v69 = (*(v7 + 48))(v68, 1, v37);
    v70 = v107;
    if (v69 == 1)
    {
      v71 = 0xE300000000000000;
      v72 = 7104878;
      v57 = v56;
    }

    else
    {
      v73 = v103;
      (*(v7 + 32))(v103, v68, v37);
      v100(v102, v73, v37);
      v72 = sub_23030F948();
      v71 = v74;
      v57 = v56;
      v56(v73, v37);
    }

    v75 = objc_opt_self();
    MEMORY[0x231911790](v72, v71);

    MEMORY[0x231911790](0x746365707865202CLL, 0xEA0000000000203ALL);
    v76 = sub_2303113C8();
    MEMORY[0x231911790](v76);

    MEMORY[0x231911790](0x67617373656D202CLL, 0xEC00000022203A65);
    MEMORY[0x231911790](v104, v108);
    v77 = 8829;
    v78 = 0xE200000000000000;
  }

  else
  {
    if (qword_27DB13AD0 != -1)
    {
      swift_once();
    }

    v46 = sub_23030EF48();
    __swift_project_value_buffer(v46, qword_27DB14A50);
    v47 = v106;
    sub_230055F74(v106, v25, &qword_27DB14A68);
    v48 = v100;
    v108 = *(v7 + 16);
    v108(v100, v107, v37);
    v49 = sub_23030EF38();
    v50 = sub_230310298();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *&v111 = v105;
      *v51 = 136315394;
      sub_230055F74(v25, v22, &qword_27DB14A68);
      if ((*(v7 + 48))(v22, 1, v37) == 1)
      {
        v52 = 0xE300000000000000;
        v53 = v7;
        v54 = 7104878;
      }

      else
      {
        v79 = v103;
        (*(v7 + 32))(v103, v22, v37);
        v108(v102, v79, v37);
        v53 = v7;
        v54 = sub_23030F948();
        v52 = v80;
        (*(v7 + 8))(v79, v37);
      }

      sub_230061918(v25, &qword_27DB14A68);
      v81 = sub_23004E30C(v54, v52, &v111);

      *(v51 + 4) = v81;
      *(v51 + 12) = 2080;
      v82 = v100;
      v83 = sub_2303113C8();
      v85 = v84;
      v86 = *(v53 + 8);
      v86(v82, v37);
      v87 = sub_23004E30C(v83, v85, &v111);

      *(v51 + 14) = v87;
      _os_log_impl(&dword_230044000, v49, v50, "Failed cast {given: %s, expect: %s}", v51, 0x16u);
      v88 = v105;
      swift_arrayDestroy();
      MEMORY[0x231914180](v88, -1, -1);
      MEMORY[0x231914180](v51, -1, -1);

      v36 = v53;
      v57 = v86;
      v47 = v106;
    }

    else
    {

      v57 = *(v7 + 8);
      v57(v48, v37);
      sub_230061918(v25, &qword_27DB14A68);
    }

    *&v111 = 0;
    *(&v111 + 1) = 0xE000000000000000;
    sub_230310848();

    *&v111 = 0xD000000000000014;
    *(&v111 + 1) = 0x8000000230340290;
    v89 = v99;
    sub_230055F74(v47, v99, &qword_27DB14A68);
    v90 = 7104878;
    if ((*(v36 + 48))(v89, 1, v37) == 1)
    {
      v91 = 0xE300000000000000;
    }

    else
    {
      v92 = v103;
      (*(v36 + 32))(v103, v89, v37);
      v108(v102, v92, v37);
      v90 = sub_23030F948();
      v91 = v93;
      v57(v92, v37);
    }

    v75 = objc_opt_self();
    MEMORY[0x231911790](v90, v91);

    MEMORY[0x231911790](0x746365707865202CLL, 0xEA0000000000203ALL);
    v70 = v107;
    v94 = sub_2303113C8();
    MEMORY[0x231911790](v94);

    v77 = 125;
    v78 = 0xE100000000000000;
  }

  MEMORY[0x231911790](v77, v78);
  v95 = sub_23030F8B8();

  v96 = [v75 internalErrorWithDebugDescription_];

  v57(v70, v37);
  sub_230061918(v47, &qword_27DB14A68);
  return v96;
}

Swift::Bool __swiftcall ACAccountStore.MigrationSet.contains(accountID:)(REMObjectID accountID)
{
  isa = accountID.super.isa;
  v47 = sub_23030EBB8();
  v2 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2303172A0;
  *(inited + 32) = v4;
  *(inited + 40) = v5;
  *(inited + 48) = v6;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = sub_2300B352C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v42 = v11;
  if ((v11 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_230310698();
    sub_23004CBA4(0, &qword_280C99CD0);
    sub_2300B366C();
    LOBYTE(v12) = sub_23030FF88();
    v11 = v51;
    v13 = v52;
    v14 = v53;
    v15 = v54;
    v16 = v55;
  }

  else
  {
    v17 = -1 << *(v11 + 32);
    v13 = v11 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(v11 + 56);

    v15 = 0;
  }

  v41 = v14;
  v20 = (v14 + 64) >> 6;
  v44 = v13;
  v45 = (v2 + 8);
  while (1)
  {
    v21 = v15;
    if ((v11 & 0x8000000000000000) == 0)
    {
      break;
    }

    v26 = sub_230310718();
    if (!v26 || (v49 = v26, sub_23004CBA4(0, &qword_280C99CD0), swift_dynamicCast(), v25 = v50, v24 = v16, !v50))
    {
LABEL_24:
      v39 = 0;
      goto LABEL_26;
    }

LABEL_17:
    v43 = v16;
    v27 = v25;
    v12 = [v25 identifier];
    if (!v12)
    {
      goto LABEL_28;
    }

    v28 = v12;
    v29 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v31 = v30;

    v32 = [(objc_class *)isa uuid];
    v33 = v46;
    sub_23030EBA8();

    v34 = sub_23030EB78();
    v36 = v35;
    (*v45)(v33, v47);
    if (v29 == v34 && v31 == v36)
    {

      v39 = 1;
      goto LABEL_26;
    }

    v38 = sub_230311048();

    v13 = v44;
    v16 = v24;
    if (v38)
    {
      v39 = 1;
LABEL_26:
      sub_230060014();

      LOBYTE(v12) = v39;
      return v12;
    }
  }

  v22 = v15;
  v23 = v16;
  if (v16)
  {
LABEL_13:
    v24 = (v23 - 1) & v23;
    v25 = *(*(v11 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v23)))));
    if (!v25)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      goto LABEL_24;
    }

    v23 = *(v13 + 8 * v15);
    ++v22;
    if (v23)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return v12;
}

uint64_t sub_2300B31B0(uint64_t a1)
{
  result = MEMORY[0x231911CD0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_2300A8988(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t ACAccountStore.MigrationSet.description.getter()
{
  v1 = *(v0 + 24);
  sub_230310848();

  v2 = ACAccount.rem_loggableDescription.getter();
  MEMORY[0x231911790](v2);

  MEMORY[0x231911790](8236, 0xE200000000000000);
  v3 = ACAccount.rem_loggableDescription.getter();
  MEMORY[0x231911790](v3);

  MEMORY[0x231911790](8236, 0xE200000000000000);

  MEMORY[0x231911790](0x203A5641446C6163, 0xE800000000000000);

  v4 = ACAccount.rem_loggableDescription.getter();
  MEMORY[0x231911790](v4);

  MEMORY[0x231911790](8236, 0xE200000000000000);

  MEMORY[0x231911790](0x74694B64756F6C63, 0xEA0000000000203ALL);

  sub_230310848();

  if (v1)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x231911790](v5, v6);

  MEMORY[0x231911790](41, 0xE100000000000000);

  MEMORY[0x231911790](0xD000000000000022, 0x80000002303402D0);

  return 0xD000000000000015;
}

uint64_t sub_2300B352C(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2303106D8())
  {
    v4 = sub_23004CBA4(0, &qword_280C99CD0);
    v5 = sub_2300B366C();
    result = MEMORY[0x231911CD0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x231912650](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_2300A8AF8(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_2303106D8();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_2300B366C()
{
  result = qword_280C99CC8;
  if (!qword_280C99CC8)
  {
    sub_23004CBA4(255, &qword_280C99CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99CC8);
  }

  return result;
}

void _s12MigrationSetVwxx(uint64_t a1)
{
  v2 = *(a1 + 16);
}

uint64_t _s12MigrationSetVwcp(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  *(a1 + 24) = *(a2 + 24);
  v6 = v3;
  v7 = v4;
  v8 = v5;
  return a1;
}

uint64_t _s12MigrationSetVwca(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  v10 = *(a2 + 16);
  v11 = *(a1 + 16);
  *(a1 + 16) = v10;
  v12 = v10;

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t _s12MigrationSetVwta(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t _s12MigrationSetVwet(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t _s12MigrationSetVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2300B38E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x231911CD0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2300A8988(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2300B397C(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2303106D8())
  {
    v4 = type metadata accessor for REMObjectID_Codable();
    v5 = sub_2300B3C50(&qword_280C995D0, type metadata accessor for REMObjectID_Codable);
    result = MEMORY[0x231911CD0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x231912650](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_2300A9120(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_2303106D8();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2300B3ADC(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for REMReminderPriorityLevel(0);
  v4 = v3;
  v5 = sub_2300B3C50(qword_280C96D68, type metadata accessor for REMReminderPriorityLevel);
  result = MEMORY[0x231911CD0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_2300A9348(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_2300B3B88(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2300B3BFC();
  result = MEMORY[0x231911CD0](v2, &type metadata for REMCustomSmartListFilterDescriptor.PostFetchPredicateType, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_2300A9440(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_2300B3BFC()
{
  result = qword_27DB14A78;
  if (!qword_27DB14A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14A78);
  }

  return result;
}

uint64_t sub_2300B3C50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2300B3C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *v4;
  v7 = *(v4 + 1);
  v9 = v4[16];
  v10 = type metadata accessor for SortedPatchElement();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(swift_getTupleTypeMetadata2() + 48);
    *a2 = v8;
    *(a2 + 8) = v7;
    *(a2 + 16) = v9;
    return (*(*(v10 - 8) + 8))(&v4[v11], v10);
  }

  else
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v14 = *(TupleTypeMetadata3 + 48);
    v15 = *(TupleTypeMetadata3 + 64);
    *a2 = v8;
    *(a2 + 8) = v7;
    *(a2 + 16) = v9;
    v16 = *(*(v10 - 8) + 8);
    v16(&v4[v15], v10);
    return (v16)(&v4[v14], v10);
  }
}

uint64_t static ExtendedPatch<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v104 = a4;
  v112 = a1;
  v113 = a2;
  v111 = *(a3 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v106 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v102 = &v98 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v103 = &v98 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v107 = &v98 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v101 = &v98 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v105 = &v98 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v99 = &v98 - v17;
  MEMORY[0x28223BE20](v16);
  v100 = &v98 - v18;
  v110 = v19;
  v20 = type metadata accessor for ExtendedPatch();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = (&v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v98 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v98 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v98 - v31;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v109 = *(TupleTypeMetadata2 - 8);
  v34 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v36 = &v98 - v35;
  v37 = (&v98 + *(v34 + 48) - v35);
  v108 = v21;
  v38 = *(v21 + 16);
  v38(&v98 - v35, v112, v20);
  v38(v37, v113, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v38(v27, v36, v20);
      v42 = *(v27 + 1);
      v43 = v110;
      v44 = *(swift_getTupleTypeMetadata3() + 64);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v111 + 8))(&v27[v44], v43);
        goto LABEL_20;
      }

      v45 = *v27;
      v112 = v42;
      v113 = v45;
      v46 = *v37;
      v109 = v37[1];
      v47 = v111;
      v48 = *(v111 + 32);
      v49 = &v27[v44];
      v50 = v105;
      v48(v105, v49, v43);
      v51 = v37 + v44;
      v52 = v101;
      v48(v101, v51, v43);
      if (v113 != v46)
      {
        v89 = *(v47 + 8);
        v89(v52, v43);
        v89(v50, v43);
        goto LABEL_26;
      }

      v53 = v108;
      if (v112 == v109)
      {
        v54 = v105;
        v55 = v110;
        v56 = sub_23030F818();
        v57 = v52;
        v58 = v56;
        v59 = *(v111 + 8);
        v59(v57, v55);
        v60 = v54;
LABEL_16:
        v59(v60, v55);
        goto LABEL_30;
      }

      v92 = *(v111 + 8);
      v93 = v52;
      v94 = v110;
      v92(v93, v110);
      v95 = v105;
      v96 = v94;
    }

    else
    {
      v38(v24, v36, v20);
      v61 = v110;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v63 = *(TupleTypeMetadata3 + 48);
      v64 = *(TupleTypeMetadata3 + 64);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v78 = *(v111 + 8);
        v78(v24 + v64, v61);
        v78(v24 + v63, v61);
        goto LABEL_20;
      }

      v65 = *v24;
      v112 = *v37;
      v113 = v65;
      v66 = v111;
      v67 = *(v111 + 32);
      v67(v107, v24 + v63, v61);
      v68 = v24 + v64;
      v69 = v103;
      v67(v103, v68, v61);
      v70 = v37 + v63;
      v71 = v102;
      v67(v102, v70, v61);
      v72 = v37 + v64;
      v73 = v106;
      v67(v106, v72, v61);
      if (v113 != v112)
      {
        v90 = *(v66 + 8);
        v90(v73, v61);
        v90(v71, v61);
        v90(v69, v61);
        v90(v107, v61);
        goto LABEL_26;
      }

      v74 = v107;
      v75 = sub_23030F818();
      v76 = v71;
      v53 = v108;
      v55 = v61;
      if (v75)
      {
        v77 = v106;
        v58 = sub_23030F818();
        v59 = *(v111 + 8);
        v59(v77, v55);
        v59(v76, v55);
        v59(v69, v55);
        v60 = v107;
        goto LABEL_16;
      }

      v92 = *(v111 + 8);
      v92(v106, v55);
      v92(v76, v55);
      v92(v69, v55);
      v95 = v74;
      v96 = v55;
    }

    v92(v95, v96);
    v58 = 0;
    goto LABEL_30;
  }

  if (!EnumCaseMultiPayload)
  {
    v38(v32, v36, v20);
    v40 = v110;
    v41 = *(swift_getTupleTypeMetadata2() + 48);
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v111 + 8))(&v32[v41], v40);
LABEL_20:
      v58 = 0;
      v53 = v109;
      v20 = TupleTypeMetadata2;
      goto LABEL_30;
    }

    v113 = *v32;
    v79 = *v37;
    v80 = v111;
    v81 = *(v111 + 32);
    v82 = &v32[v41];
    v83 = v100;
    v81(v100, v82, v40);
    v84 = v37 + v41;
    v85 = v99;
    v81(v99, v84, v40);
    if (v113 == v79)
    {
      v86 = sub_23030F818();
      v87 = v85;
      v58 = v86;
      v88 = *(v80 + 8);
      v88(v87, v40);
      v88(v83, v40);
      v53 = v108;
      goto LABEL_30;
    }

    v91 = *(v80 + 8);
    v91(v85, v40);
    v91(v83, v40);
LABEL_26:
    v58 = 0;
    v53 = v108;
    goto LABEL_30;
  }

  v38(v30, v36, v20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_20;
  }

  v58 = *v30 == *v37;
  v53 = v108;
LABEL_30:
  (*(v53 + 8))(v36, v20);
  return v58 & 1;
}

uint64_t extendedPatch<A>(from:to:sort:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  Collection<>.extendedDiff(_:)(a2, a5, a6, a7, &v15);
  v11 = ExtendedDiff.patch<A>(from:to:sort:)(a1, a2, a3, a4, a5, a6);

  return v11;
}

uint64_t sub_2300B4890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v6[1];
  v37 = *v6;
  v38 = v11;
  v39 = v6[2];
  sub_2300B55E4(a1, a2, a5, a6);
  v31 = a5;
  v32 = a6;
  v33 = a3;
  v34 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for BoxedDiffAndPatchElement();
  sub_23030FDE8();
  swift_getWitnessTable();
  v13 = sub_23030FBE8();

  *&v37 = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = AssociatedTypeWitness;
  v27 = a5;
  v28 = a6;
  v29 = sub_2300B7B00;
  v30 = v14;
  v22 = type metadata accessor for SortedPatchElement();
  sub_23030FDE8();
  swift_getWitnessTable();
  v15 = sub_23030FBF8();

  v36 = v15;
  swift_getWitnessTable();
  sub_230310028();
  v35 = v37;
  v24 = a5;
  v25 = a6;
  v26 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14A80);
  v17 = sub_23006D5B4(&qword_280C99CF0);
  v19 = sub_23006CBDC(sub_2300B7B3C, v23, v16, v22, MEMORY[0x277D84A98], v17, MEMORY[0x277D84AC0], v18);

  *&v37 = v19;
  v20 = sub_23030FBE8();

  return v20;
}

uint64_t sub_2300B4B60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v102 = a2;
  v101 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v103 = *(AssociatedTypeWitness - 8);
  v5 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v94 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v97 = &v90 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v95 = &v90 - v10;
  MEMORY[0x28223BE20](v9);
  v93 = &v90 - v11;
  v12 = type metadata accessor for Patch();
  v98 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v96 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v92 = &v90 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v91 = &v90 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = (&v90 - v20);
  MEMORY[0x28223BE20](v19);
  v23 = &v90 - v22;
  v100 = AssociatedTypeWitness;
  v24 = type metadata accessor for SortedPatchElement();
  v99 = *(v24 - 8);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v90 - v28;
  v30 = *a1;
  sub_23030FE28();
  v31 = *(v102 + 40);
  if (!sub_2300A5864(*&v29[*(v24 + 28)], v31))
  {
    v48 = v99;
    if (v30 >= 1)
    {
      sub_23030FE28();
      v49 = *&v27[*(v24 + 28)];
      v50 = *(v48 + 8);
      v50(v27, v24);
      if (sub_2300A5864(v49, v31))
      {
        v50(v29, v24);
        v51 = type metadata accessor for ExtendedPatch();
        return (*(*(v51 - 8) + 56))(v101, 1, 1, v51);
      }
    }

    v53 = v96;
    (*(v98 + 32))(v96, v29, v12);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v55 = *v53;
    v56 = v100;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v57 = v101;
        *v101 = v55;
        v45 = type metadata accessor for ExtendedPatch();
LABEL_20:
        swift_storeEnumTagMultiPayload();
        v46 = *(*(v45 - 8) + 56);
        v47 = v57;
        return v46(v47, 0, 1, v45);
      }

      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v83 = *(TupleTypeMetadata3 + 64);
      v84 = *(v103 + 32);
      v85 = v97;
      v84(v97, v53 + *(TupleTypeMetadata3 + 48), v56);
      v86 = v53 + v83;
      v87 = v94;
      v84(v94, v86, v56);
      v88 = *(TupleTypeMetadata3 + 48);
      v89 = *(TupleTypeMetadata3 + 64);
      v57 = v101;
      *v101 = v55;
      v84(&v57[v88], v85, v56);
      v84(&v57[v89], v87, v56);
LABEL_19:
      v45 = type metadata accessor for ExtendedPatch();
      goto LABEL_20;
    }

    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v78 = *(v103 + 32);
    v79 = v53 + *(TupleTypeMetadata2 + 48);
    v80 = v97;
    v78(v97, v79, v56);
    v81 = *(TupleTypeMetadata2 + 48);
    v66 = v101;
    *v101 = v55;
    v78(&v66[v81], v80, v56);
    v45 = type metadata accessor for ExtendedPatch();
LABEL_17:
    swift_storeEnumTagMultiPayload();
    v46 = *(*(v45 - 8) + 56);
    v47 = v66;
    return v46(v47, 0, 1, v45);
  }

  if (__OFADD__(v30, 1))
  {
    __break(1u);
    goto LABEL_24;
  }

  sub_23030FE28();
  v33 = v98;
  (*(v98 + 32))(v23, v27, v12);
  v34 = *(v33 + 16);
  v34(v21, v29, v12);
  v35 = swift_getEnumCaseMultiPayload();
  if (!v35)
  {
    v102 = *v21;
    v58 = v100;
    v59 = v21 + *(swift_getTupleTypeMetadata2() + 48);
    v60 = v58;
    v97 = *(v103 + 32);
    v103 += 32;
    (v97)(v95, v59, v58);
    v61 = v92;
    v34(v92, v23, v12);
    v62 = swift_getEnumCaseMultiPayload();
    v63 = *(v33 + 8);
    if (v62 != 1)
    {
      v63(v61, v12);
      goto LABEL_26;
    }

    v63(v23, v12);
    (*(v99 + 8))(v29, v24);
    v64 = *v61;
    v65 = *(swift_getTupleTypeMetadata3() + 64);
    v66 = v101;
    v67 = v102;
    *v101 = v64;
    *(v66 + 1) = v67;
    (v97)(&v66[v65], v95, v60);
    v45 = type metadata accessor for ExtendedPatch();
    goto LABEL_17;
  }

  if (v35 != 1)
  {
    (*(v33 + 8))(v23, v12);
    (*(v99 + 8))(v29, v24);
    v68 = *v21;
    v69 = v100;
    v70 = swift_getTupleTypeMetadata3();
    v71 = *(v70 + 64);
    v72 = *(v103 + 32);
    v73 = v97;
    v72(v97, v21 + *(v70 + 48), v69);
    v74 = v94;
    v72(v94, v21 + v71, v69);
    v75 = *(v70 + 48);
    v76 = *(v70 + 64);
    v57 = v101;
    *v101 = v68;
    v72(&v57[v75], v73, v69);
    v72(&v57[v76], v74, v69);
    goto LABEL_19;
  }

  v36 = *v21;
  v21 = v91;
  v34(v91, v23, v12);
  v37 = swift_getEnumCaseMultiPayload();
  v32 = *(v33 + 8);
  if (v37)
  {
LABEL_24:
    v32(v21, v12);
LABEL_26:
    result = sub_230310AE8();
    __break(1u);
    return result;
  }

  v32(v23, v12);
  (*(v99 + 8))(v29, v24);
  v38 = *v21;
  v39 = v100;
  v40 = swift_getTupleTypeMetadata2();
  v41 = *(v103 + 32);
  v42 = v93;
  v41(v93, v21 + *(v40 + 48), v39);
  v43 = *(swift_getTupleTypeMetadata3() + 64);
  v44 = v101;
  *v101 = v36;
  *(v44 + 1) = v38;
  v41(&v44[v43], v42, v39);
  v45 = type metadata accessor for ExtendedPatch();
  swift_storeEnumTagMultiPayload();
  v46 = *(*(v45 - 8) + 56);
  v47 = v44;
  return v46(v47, 0, 1, v45);
}

uint64_t sub_2300B55E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[1];
  v18[0] = *v4;
  v18[1] = v7;
  v19 = v4[2];
  v8 = sub_23006C450(a1, a2, a3, a4);
  v9 = *(v19 + 16);
  v16[9] = 0;
  v16[10] = v9;
  v17 = 0;
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = v18;
  v16[5] = &v17;
  v16[6] = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14A80);
  swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for BoxedDiffAndPatchElement();
  v12 = sub_23006D5B4(&qword_280C99CF0);
  v14 = sub_23006CBDC(sub_2300B7BD4, v16, v10, v11, MEMORY[0x277D84A98], v12, MEMORY[0x277D84AC0], v13);

  return v14;
}

uint64_t sub_2300B5714(uint64_t a1, uint64_t a2, uint64_t (*a3)(__int128 *, __int128 *))
{
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for BoxedDiffAndPatchElement();
  sub_2300B3C98(v4, &v12);
  v10 = v12;
  v11 = v13;
  sub_2300B3C98(v4, &v8);
  v6 = v8;
  v7 = v9;
  return a3(&v10, &v6) & 1;
}

uint64_t sub_2300B57E4(uint64_t a1)
{
  v2 = type metadata accessor for SortedPatchElement();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = type metadata accessor for BoxedDiffAndPatchElement();
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  (*(v12 + 16))(&v26 - v10, a1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v14 = *(v3 + 32);
    v14(v8, &v11[*(TupleTypeMetadata2 + 48)], v2);
    sub_230310E68();
    swift_allocObject();
    v15 = sub_23030FCF8();
    v14(v16, v8, v2);
    return sub_2300E9BC0(v15);
  }

  else
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v19 = *(TupleTypeMetadata3 + 64);
    v20 = *(v3 + 32);
    v20(v8, &v11[*(TupleTypeMetadata3 + 48)], v2);
    v20(v6, &v11[v19], v2);
    sub_230310E68();
    v21 = *(v3 + 72);
    swift_allocObject();
    v22 = sub_23030FCF8();
    v24 = v23;
    (*(v3 + 16))(v23, v8, v2);
    v20((v24 + v21), v6, v2);
    v25 = sub_2300E9BC0(v22);
    (*(v3 + 8))(v8, v2);
    return v25;
  }
}

uint64_t sub_2300B5B00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Patch();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = type metadata accessor for SortedPatchElement();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  v11 = *a1;
  sub_23030FE28();
  (*(v4 + 16))(v6, v10, v3);
  v12 = *&v10[*(v7 + 28)];
  (*(v8 + 8))(v10, v7);
  return sub_230241B14(v6, v12, v11, v15);
}

uint64_t sub_2300B5CD4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Patch();
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  v9 = *a1;
  result = sub_23030FE28();
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v11 = *(a2 + 24);
    if (v9 < *(v11 + 16))
    {
      return sub_230241B14(v8, v9, *(v11 + 8 * v9 + 32), a3);
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_2300B5DE4@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = *(a2 + 32);
  if (v4 >= *(v7 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = v7 + 24 * v4;
  v10 = *(v9 + 32);
  v11 = *(v9 + 40);
  v12 = *(v9 + 48);
  if (v12 != 3)
  {
    swift_getAssociatedTypeWitness();
    type metadata accessor for SortedPatchElement();
    result = swift_getTupleTypeMetadata2();
    *a4 = v10;
    *(a4 + 8) = v11;
    *(a4 + 16) = v12;
    v18 = v4 + *a3;
    if (!__OFADD__(v4, *a3))
    {
      if ((v18 & 0x8000000000000000) == 0)
      {
        if (v18 < *(*(a2 + 16) + 16))
        {
LABEL_15:
          sub_23030FE28();
          type metadata accessor for BoxedDiffAndPatchElement();
          return swift_storeEnumTagMultiPayload();
        }

        goto LABEL_23;
      }

      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v13 = *a3 + 1;
  if (__OFADD__(*a3, 1))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *a3 = v13;
  swift_getAssociatedTypeWitness();
  type metadata accessor for SortedPatchElement();
  result = swift_getTupleTypeMetadata3();
  *a4 = v10;
  *(a4 + 8) = v11;
  *(a4 + 16) = 3;
  v14 = v4 + v13;
  if (__OFADD__(v4, v13))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v17 = *(*(a2 + 16) + 16);
  if (v16 >= v17)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  result = sub_23030FE28();
  if (__OFADD__(v4, *a3))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v4 + *a3 < v17)
  {
    goto LABEL_15;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t ExtendedPatch.debugDescription.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](a1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *v7;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v19 = *(TupleTypeMetadata3 + 48);
      (*(v2 + 32))(v5, &v7[*(TupleTypeMetadata3 + 64)], v1);
      v25 = 0;
      v26 = 0xE000000000000000;
      MEMORY[0x231911790](10325, 0xE200000000000000);
      v24 = v10;
      v20 = sub_230310E58();
      MEMORY[0x231911790](v20);

      MEMORY[0x231911790](44, 0xE100000000000000);
      sub_230311008();
      MEMORY[0x231911790](41, 0xE100000000000000);
      v16 = v25;
      v21 = *(v2 + 8);
      v21(v5, v1);
      v21(&v7[v19], v1);
      return v16;
    }

    v12 = *(v7 + 1);
    v13 = swift_getTupleTypeMetadata3();
    (*(v2 + 32))(v5, &v7[*(v13 + 64)], v1);
    v25 = 0;
    v26 = 0xE000000000000000;
    MEMORY[0x231911790](10317, 0xE200000000000000);
    v24 = v10;
    v14 = sub_230310E58();
    MEMORY[0x231911790](v14);

    MEMORY[0x231911790](44, 0xE100000000000000);
    v24 = v12;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v25 = 10308;
      v26 = 0xE200000000000000;
      v24 = v10;
      v17 = sub_230310E58();
      MEMORY[0x231911790](v17);

      MEMORY[0x231911790](41, 0xE100000000000000);
      return v25;
    }

    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(v2 + 32))(v5, &v7[*(TupleTypeMetadata2 + 48)], v1);
    v25 = 0;
    v26 = 0xE000000000000000;
    MEMORY[0x231911790](10313, 0xE200000000000000);
    v24 = v10;
  }

  v15 = sub_230310E58();
  MEMORY[0x231911790](v15);

  MEMORY[0x231911790](44, 0xE100000000000000);
  sub_230311008();
  MEMORY[0x231911790](41, 0xE100000000000000);
  v16 = v25;
  (*(v2 + 8))(v5, v1);
  return v16;
}

void *sub_2300B6474(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v6;
  v8 = *(v5 + 64);
  v9 = ((v7 + 8) & ~v7) + v8;
  v10 = ((v7 + 16) & ~v7) + v8;
  if (v9 > v10)
  {
    v10 = ((v6 + 8) & ~v6) + v8;
  }

  v11 = ((v9 + v6) & ~v6) + v8;
  if (v10 > v11)
  {
    v11 = v10;
  }

  if (v11 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = v11;
  }

  v13 = v6 & 0x100000;
  if (v7 > 7 || v13 != 0 || (v12 + 1) > 0x18)
  {
    v16 = *a2;
    *v3 = *a2;
    v3 = (v16 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));

    return v3;
  }

  v18 = *(a2 + v12);
  v19 = v18 - 4;
  if (v18 >= 4)
  {
    if (v12 <= 3)
    {
      v20 = v12;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = *a2;
        if (v12 >= 4)
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v20 == 3)
        {
          v21 = *a2 | (*(a2 + 2) << 16);
          if (v12 < 4)
          {
            goto LABEL_33;
          }

LABEL_31:
          v18 = v21 + 4;
          goto LABEL_34;
        }

        v21 = *a2;
        if (v12 >= 4)
        {
          goto LABEL_31;
        }
      }

LABEL_33:
      v18 = (v21 | (v19 << (8 * v12))) + 4;
      goto LABEL_34;
    }

    if (!v20)
    {
      goto LABEL_34;
    }

    v21 = *a2;
    if (v12 < 4)
    {
      goto LABEL_33;
    }

    goto LABEL_31;
  }

LABEL_34:
  v22 = ~v7;
  *a1 = *a2;
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v23 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      v24 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v23 = *v24;
      (*(v5 + 16))(v23 + 1, v24 + 1);
      *(v3 + v12) = 2;
    }

    else
    {
      v25 = (a2 + v7 + 8) & v22;
      v26 = *(v5 + 16);
      v27 = v4;
      v26((a1 + v7 + 8) & v22, v25);
      (v26)((v8 + v7 + ((v3 + v7 + 8) & v22)) & v22, (v8 + v7 + v25) & v22, v27);
      *(v3 + v12) = 3;
    }
  }

  else if (v18)
  {
    *(a1 + v12) = 1;
  }

  else
  {
    (*(v5 + 16))((a1 + v7 + 8) & v22, (a2 + v7 + 8) & v22);
    *(v3 + v12) = 0;
  }

  return v3;
}

unsigned __int8 *sub_2300B66FC(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  v6 = ((v4 + 8) & ~v4) + v5;
  v7 = ((v4 + 16) & ~v4) + v5;
  if (v6 > v7)
  {
    v7 = ((v4 + 8) & ~v4) + v5;
  }

  v8 = ((v6 + v4) & ~v4) + v5;
  if (v7 > v8)
  {
    v8 = v7;
  }

  if (v8 <= 8)
  {
    v8 = 8;
  }

  v9 = result[v8];
  v10 = v9 - 4;
  if (v9 >= 4)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        goto LABEL_21;
      }

      v12 = *result;
    }

    else if (v11 == 2)
    {
      v12 = *result;
    }

    else if (v11 == 3)
    {
      v12 = *result | (result[2] << 16);
    }

    else
    {
      v12 = *result;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 4;
    v9 = v12 + 4;
    if (v8 < 4)
    {
      v9 = v13;
    }
  }

LABEL_21:
  v14 = ~v4;
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      v18 = &result[v4 + 8] & v14;
      v20 = *(v3 + 8);
      v19 = v2;
      v20(v18);
      v17 = (v5 + v4 + v18) & v14;
      v2 = v19;
      v16 = v20;
      goto LABEL_29;
    }

    v15 = (((result + 15) & 0xFFFFFFFFFFFFFFF8) + v4);
  }

  else
  {
    if (v9)
    {
      return result;
    }

    v15 = &result[v4];
  }

  v16 = *(v3 + 8);
  v17 = (v15 + 8) & v14;
LABEL_29:

  return v16(v17, v2);
}

void *sub_2300B68DC(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = ((v6 + 8) & ~v6) + v7;
  v9 = ((v6 + 16) & ~v6) + v7;
  if (v8 > v9)
  {
    v9 = ((v6 + 8) & ~v6) + v7;
  }

  v10 = ((v8 + v6) & ~v6) + v7;
  if (v9 > v10)
  {
    v10 = v9;
  }

  if (v10 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = v10;
  }

  v12 = a2[v11];
  v13 = v12 - 4;
  if (v12 >= 4)
  {
    if (v11 <= 3)
    {
      v14 = v11;
    }

    else
    {
      v14 = 4;
    }

    if (v14 <= 1)
    {
      if (!v14)
      {
        goto LABEL_22;
      }

      v15 = *a2;
    }

    else if (v14 == 2)
    {
      v15 = *a2;
    }

    else if (v14 == 3)
    {
      v15 = *a2 | (a2[2] << 16);
    }

    else
    {
      v15 = *a2;
    }

    v16 = (v15 | (v13 << (8 * v11))) + 4;
    v12 = v15 + 4;
    if (v11 < 4)
    {
      v12 = v16;
    }
  }

LABEL_22:
  v17 = ~v6;
  *a1 = *a2;
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      v20 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v19 = *v20;
      (*(v5 + 16))((v19 + v6 + 8) & v17, (v20 + v6 + 8) & v17);
      v18 = 2;
    }

    else
    {
      v21 = &a2[v6 + 8] & v17;
      v22 = *(v5 + 16);
      v23 = v4;
      v22((a1 + v6 + 8) & v17, v21);
      (v22)((v7 + v6 + ((a1 + v6 + 8) & v17)) & v17, (v7 + v6 + v21) & v17, v23);
      v18 = 3;
    }
  }

  else if (v12)
  {
    v18 = 1;
  }

  else
  {
    (*(v5 + 16))((a1 + v6 + 8) & v17, &a2[v6 + 8] & v17);
    v18 = 0;
  }

  *(a1 + v11) = v18;
  return a1;
}

unsigned __int16 *sub_2300B6B20(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = ((v7 + 8) & ~v7) + v8;
  v10 = ((v7 + 16) & ~v7) + v8;
  if (v9 > v10)
  {
    v10 = ((v7 + 8) & ~v7) + v8;
  }

  v11 = ((v9 + v7) & ~v7) + v8;
  if (v10 > v11)
  {
    v11 = v10;
  }

  if (v11 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(a1 + v12);
  v14 = v13 - 4;
  if (v13 >= 4)
  {
    if (v12 <= 3)
    {
      v15 = v12;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = *a1;
        if (v12 >= 4)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v15 == 3)
        {
          v16 = *a1 | (*(a1 + 2) << 16);
          if (v12 < 4)
          {
            goto LABEL_24;
          }

LABEL_22:
          v13 = v16 + 4;
          goto LABEL_25;
        }

        v16 = *a1;
        if (v12 >= 4)
        {
          goto LABEL_22;
        }
      }

LABEL_24:
      v13 = (v16 | (v14 << (8 * v12))) + 4;
      goto LABEL_25;
    }

    if (!v15)
    {
      goto LABEL_25;
    }

    v16 = *a1;
    if (v12 < 4)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

LABEL_25:
  v17 = ~v7;
  if (v13 <= 1)
  {
    if (v13)
    {
      goto LABEL_32;
    }

    v18 = a1 + v7;
    goto LABEL_30;
  }

  if (v13 == 2)
  {
    v18 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v7);
LABEL_30:
    (*(v6 + 8))((v18 + 8) & v17, v5);
    goto LABEL_32;
  }

  v19 = (a1 + v7 + 8) & v17;
  v30 = *(*(a3 + 16) - 8);
  v20 = *(v6 + 8);
  v20(v19, v5);
  v20((v8 + v7 + v19) & v17, v5);
  v6 = v30;
LABEL_32:
  v21 = *(a2 + v12);
  v22 = v21 - 4;
  if (v21 >= 4)
  {
    if (v12 <= 3)
    {
      v23 = v12;
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *a2;
        if (v12 < 4)
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v23 == 3)
        {
          v24 = *a2 | (*(a2 + 2) << 16);
          if (v12 < 4)
          {
            goto LABEL_47;
          }

          goto LABEL_45;
        }

        v24 = *a2;
        if (v12 < 4)
        {
LABEL_47:
          v21 = (v24 | (v22 << (8 * v12))) + 4;
          goto LABEL_48;
        }
      }

LABEL_45:
      v21 = v24 + 4;
      goto LABEL_48;
    }

    if (v23)
    {
      v24 = *a2;
      if (v12 < 4)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }
  }

LABEL_48:
  *a1 = *a2;
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v26 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      v27 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v26 = *v27;
      (*(v6 + 16))((v26 + v7 + 8) & v17, (v27 + v7 + 8) & v17, v5);
      v25 = 2;
    }

    else
    {
      v28 = *(v6 + 16);
      v28((a1 + v7 + 8) & v17, (a2 + v7 + 8) & v17, v5);
      v28((v8 + v7 + ((a1 + v7 + 8) & v17)) & v17, (v8 + v7 + ((a2 + v7 + 8) & v17)) & v17, v5);
      v25 = 3;
    }
  }

  else if (v21)
  {
    v25 = 1;
  }

  else
  {
    (*(v6 + 16))((a1 + v7 + 8) & v17, (a2 + v7 + 8) & v17, v5);
    v25 = 0;
  }

  *(a1 + v12) = v25;
  return a1;
}

void *sub_2300B6ED0(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = ((v6 + 8) & ~v6) + v7;
  v9 = ((v6 + 16) & ~v6) + v7;
  if (v8 > v9)
  {
    v9 = ((v6 + 8) & ~v6) + v7;
  }

  v10 = ((v8 + v6) & ~v6) + v7;
  if (v9 > v10)
  {
    v10 = v9;
  }

  if (v10 <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = v10;
  }

  v12 = a2[v11];
  v13 = v12 - 4;
  if (v12 >= 4)
  {
    if (v11 <= 3)
    {
      v14 = v11;
    }

    else
    {
      v14 = 4;
    }

    if (v14 <= 1)
    {
      if (!v14)
      {
        goto LABEL_22;
      }

      v15 = *a2;
    }

    else if (v14 == 2)
    {
      v15 = *a2;
    }

    else if (v14 == 3)
    {
      v15 = *a2 | (a2[2] << 16);
    }

    else
    {
      v15 = *a2;
    }

    v16 = (v15 | (v13 << (8 * v11))) + 4;
    v12 = v15 + 4;
    if (v11 < 4)
    {
      v12 = v16;
    }
  }

LABEL_22:
  v17 = ~v6;
  *a1 = *a2;
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      v20 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v19 = *v20;
      (*(v5 + 32))((v19 + v6 + 8) & v17, (v20 + v6 + 8) & v17);
      v18 = 2;
    }

    else
    {
      v21 = &a2[v6 + 8] & v17;
      v22 = *(v5 + 32);
      v23 = v4;
      v22((a1 + v6 + 8) & v17, v21);
      (v22)((v7 + v6 + ((a1 + v6 + 8) & v17)) & v17, (v7 + v6 + v21) & v17, v23);
      v18 = 3;
    }
  }

  else if (v12)
  {
    v18 = 1;
  }

  else
  {
    (*(v5 + 32))((a1 + v6 + 8) & v17, &a2[v6 + 8] & v17);
    v18 = 0;
  }

  *(a1 + v11) = v18;
  return a1;
}

unsigned __int16 *sub_2300B7114(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = ((v7 + 8) & ~v7) + v8;
  v10 = ((v7 + 16) & ~v7) + v8;
  if (v9 > v10)
  {
    v10 = ((v7 + 8) & ~v7) + v8;
  }

  v11 = ((v9 + v7) & ~v7) + v8;
  if (v10 > v11)
  {
    v11 = v10;
  }

  if (v11 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(a1 + v12);
  v14 = v13 - 4;
  if (v13 >= 4)
  {
    if (v12 <= 3)
    {
      v15 = v12;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = *a1;
        if (v12 >= 4)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v15 == 3)
        {
          v16 = *a1 | (*(a1 + 2) << 16);
          if (v12 < 4)
          {
            goto LABEL_24;
          }

LABEL_22:
          v13 = v16 + 4;
          goto LABEL_25;
        }

        v16 = *a1;
        if (v12 >= 4)
        {
          goto LABEL_22;
        }
      }

LABEL_24:
      v13 = (v16 | (v14 << (8 * v12))) + 4;
      goto LABEL_25;
    }

    if (!v15)
    {
      goto LABEL_25;
    }

    v16 = *a1;
    if (v12 < 4)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

LABEL_25:
  v17 = ~v7;
  if (v13 <= 1)
  {
    if (v13)
    {
      goto LABEL_32;
    }

    v18 = a1 + v7;
    goto LABEL_30;
  }

  if (v13 == 2)
  {
    v18 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v7);
LABEL_30:
    (*(v6 + 8))((v18 + 8) & v17, v5);
    goto LABEL_32;
  }

  v19 = (a1 + v7 + 8) & v17;
  v30 = *(*(a3 + 16) - 8);
  v20 = *(v6 + 8);
  v20(v19, v5);
  v20((v8 + v7 + v19) & v17, v5);
  v6 = v30;
LABEL_32:
  v21 = *(a2 + v12);
  v22 = v21 - 4;
  if (v21 >= 4)
  {
    if (v12 <= 3)
    {
      v23 = v12;
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *a2;
        if (v12 < 4)
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v23 == 3)
        {
          v24 = *a2 | (*(a2 + 2) << 16);
          if (v12 < 4)
          {
            goto LABEL_47;
          }

          goto LABEL_45;
        }

        v24 = *a2;
        if (v12 < 4)
        {
LABEL_47:
          v21 = (v24 | (v22 << (8 * v12))) + 4;
          goto LABEL_48;
        }
      }

LABEL_45:
      v21 = v24 + 4;
      goto LABEL_48;
    }

    if (v23)
    {
      v24 = *a2;
      if (v12 < 4)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }
  }

LABEL_48:
  *a1 = *a2;
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v26 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      v27 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v26 = *v27;
      (*(v6 + 32))((v26 + v7 + 8) & v17, (v27 + v7 + 8) & v17, v5);
      v25 = 2;
    }

    else
    {
      v28 = *(v6 + 32);
      v28((a1 + v7 + 8) & v17, (a2 + v7 + 8) & v17, v5);
      v28((v8 + v7 + ((a1 + v7 + 8) & v17)) & v17, (v8 + v7 + ((a2 + v7 + 8) & v17)) & v17, v5);
      v25 = 3;
    }
  }

  else if (v21)
  {
    v25 = 1;
  }

  else
  {
    (*(v6 + 32))((a1 + v7 + 8) & v17, (a2 + v7 + 8) & v17, v5);
    v25 = 0;
  }

  *(a1 + v12) = v25;
  return a1;
}

uint64_t sub_2300B74C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  v6 = ((v4 + 8) & ~v4) + v5;
  v7 = ((v4 + 16) & ~v4) + v5;
  if (v6 > v7)
  {
    v7 = ((v4 + 8) & ~v4) + v5;
  }

  v8 = ((v6 + v4) & ~v4) + v5;
  if (v7 > v8)
  {
    v8 = v7;
  }

  v9 = 8;
  if (v8 > 8)
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_29;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if ((v9 + 1) <= 3)
  {
    v14 = ((a2 + ~(-1 << v11) - 252) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v14 < 2)
    {
LABEL_29:
      v16 = *(a1 + v9);
      if (v16 >= 4)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_29;
  }

LABEL_18:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return (v10 | v15) + 253;
}

void sub_2300B7640(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = ((v6 + 8) & ~v6) + v7;
  v9 = ((v6 + 16) & ~v6) + v7;
  if (v8 > v9)
  {
    v9 = ((v6 + 8) & ~v6) + v7;
  }

  v10 = ((v8 + v6) & ~v6) + v7;
  if (v9 > v10)
  {
    v10 = v9;
  }

  if (v10 <= 8)
  {
    v10 = 8;
  }

  v11 = v10 + 1;
  if (a3 < 0xFD)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 + ~(-1 << (8 * v11)) - 252) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (a2 > 0xFC)
  {
    v13 = a2 - 253;
    if (v11 >= 4)
    {
      bzero(a1, v10 + 1);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    v14 = (v13 >> (8 * v11)) + 1;
    if (v10 != -1)
    {
      v17 = v13 & ~(-1 << (8 * v11));
      bzero(a1, v11);
      if (v11 != 3)
      {
        if (v11 == 2)
        {
          *a1 = v17;
          if (v12 > 1)
          {
LABEL_43:
            if (v12 == 2)
            {
              *&a1[v11] = v14;
            }

            else
            {
              *&a1[v11] = v14;
            }

            return;
          }
        }

        else
        {
          *a1 = v13;
          if (v12 > 1)
          {
            goto LABEL_43;
          }
        }

LABEL_40:
        if (v12)
        {
          a1[v11] = v14;
        }

        return;
      }

      *a1 = v17;
      a1[2] = BYTE2(v17);
    }

    if (v12 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

LABEL_29:
      a1[v10] = -a2;
      return;
    }

LABEL_28:
    if (!a2)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v12 == 2)
  {
    *&a1[v11] = 0;
    goto LABEL_28;
  }

  *&a1[v11] = 0;
  if (a2)
  {
    goto LABEL_29;
  }
}

uint64_t sub_2300B785C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = ((v3 + 8) & ~v3) + v4;
  v6 = ((v3 + 16) & ~v3) + v4;
  if (v5 > v6)
  {
    v6 = ((v3 + 8) & ~v3) + v4;
  }

  v7 = ((v5 + v3) & ~v3) + v4;
  if (v6 > v7)
  {
    v7 = v6;
  }

  v8 = 8;
  if (v7 > 8)
  {
    v8 = v7;
  }

  v9 = a1[v8];
  v10 = v9 - 4;
  if (v9 >= 4)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    if (v11 <= 1)
    {
      if (!v11)
      {
        return v9;
      }

      v12 = *a1;
    }

    else if (v11 == 2)
    {
      v12 = *a1;
    }

    else if (v11 == 3)
    {
      v12 = *a1 | (a1[2] << 16);
    }

    else
    {
      v12 = *a1;
    }

    v13 = (v12 | (v10 << (8 * v8))) + 4;
    LODWORD(v9) = v12 + 4;
    if (v8 >= 4)
    {
      return v9;
    }

    else
    {
      return v13;
    }
  }

  return v9;
}

void sub_2300B7960(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  v6 = ((v4 + 8) & ~v4) + v5;
  v7 = ((v4 + 16) & ~v4) + v5;
  if (a2 > 3)
  {
    if (v6 > v7)
    {
      v7 = ((v4 + 8) & ~v4) + v5;
    }

    v9 = ((v6 + v4) & ~v4) + v5;
    if (v7 > v9)
    {
      v9 = v7;
    }

    if (v9 <= 8)
    {
      v10 = 8;
    }

    else
    {
      v10 = v9;
    }

    v11 = a2 - 4;
    if (v10 < 4)
    {
      a1[v10] = (v11 >> (8 * v10)) + 4;
      if (v10)
      {
        v13 = v11 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v10 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v11;
        }
      }
    }

    else
    {
      a1[v10] = 4;
      bzero(a1, v10);
      *a1 = v11;
    }
  }

  else
  {
    if (v6 > v7)
    {
      v7 = ((v4 + 8) & ~v4) + v5;
    }

    v8 = ((v6 + v4) & ~v4) + v5;
    if (v7 > v8)
    {
      v8 = v7;
    }

    if (v8 <= 8)
    {
      v8 = 8;
    }

    a1[v8] = a2;
  }
}

uint64_t sub_2300B7B08@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 32))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

BOOL sub_2300B7B60(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for SortedPatchElement();
  return *(a1 + *(v4 + 28)) < *(a2 + *(v4 + 28));
}

uint64_t sub_2300B7C20()
{
  result = type metadata accessor for SortedPatchElement();
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout3();
    v4 = &v3;
    swift_getTupleTypeLayout2();
    v5 = &v2;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

unint64_t sub_2300B7CEC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v6;
  v8 = v7 | 7;
  v9 = ((v7 | 7) + 17) & ~(v7 | 7);
  v10 = *(v5 + 64);
  v11 = ((v7 + 8) & ~v7) + v10;
  if (v11 <= ((v11 + v7) & ~v7) + v10)
  {
    v11 = ((v11 + v6) & ~v6) + v10;
  }

  if (v11 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = v11;
  }

  v13 = (((v12 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = v13 + v9;
  v15 = ((v13 + v9 + v8) & ~v8) + v13;
  if (v14 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  v17 = v6 <= 7u && (v6 & 0x100000) == 0;
  if (!v17 || (v16 | 1) > 0x18)
  {
    v29 = *a2;
    *v3 = *a2;
    v3 = v29 + ((v6 + 16) & ~v8);

    return v3;
  }

  v18 = *(a2 + v16);
  if (v16)
  {
    v19 = v18 >= 2;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    v18 = *a2 + 2;
  }

  v20 = v12 + 1;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v21 = a1 & 0xFFFFFFFFFFFFFFF8;
  v22 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 24);
  v23 = a2 & 0xFFFFFFFFFFFFFFF8;
  v24 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  v25 = v24[v12];
  if (v18 != 1)
  {
    v30 = v25 - 3;
    if (v25 < 3)
    {
      goto LABEL_58;
    }

    if (v12 <= 3)
    {
      v31 = v12;
    }

    else
    {
      v31 = 4;
    }

    if (v31 <= 1)
    {
      if (!v31)
      {
        goto LABEL_58;
      }

      v32 = *v24;
    }

    else if (v31 == 2)
    {
      v32 = *v24;
    }

    else if (v31 == 3)
    {
      v32 = *v24 | (*((a2 & 0xFFFFFFFFFFFFFFF8) + 26) << 16);
    }

    else
    {
      v32 = *v24;
    }

    if (v12 < 4)
    {
      v32 |= v30 << (8 * v12);
    }

    v25 = v32 + 3;
LABEL_58:
    *v22 = *v24;
    v68 = v12 + 1;
    v64 = v4;
    if (v25 == 2)
    {
      v58 = v21 + 32;
      v59 = v23 + 32;
      v60 = v5;
      v40 = *(v5 + 16);
      v41 = v4;
      v67 = a2 & 0xFFFFFFFFFFFFFFF8;
      v40();
      v42 = v41;
      v22 = ((v3 & 0xFFFFFFFFFFFFFFF8) + 24);
      (v40)((v10 + v7 + v58) & ~v7, (v10 + v7 + v59) & ~v7, v42);
      v5 = v60;
      v21 = v3 & 0xFFFFFFFFFFFFFFF8;
      v23 = v67;
      LOBYTE(v25) = 2;
    }

    else if (v25 != 1)
    {
      v66 = a2 & 0xFFFFFFFFFFFFFFF8;
      (*(v5 + 16))(v21 + 32, v23 + 32);
      v21 = v3 & 0xFFFFFFFFFFFFFFF8;
      v23 = v66;
      LOBYTE(v25) = 0;
    }

    *(v22 + v12) = v25;
    v43 = ((v23 + v68 + 31) & 0xFFFFFFFFFFFFFFF8);
    v44 = ((v21 + v68 + 31) & 0xFFFFFFFFFFFFFFF8);
    *v44 = *v43;
    *((v44 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v43 + 15) & 0xFFFFFFFFFFFFFFF8);
    v45 = (v22 + v13);
    v46 = &v24[v13];
    v47 = v46[v12];
    v48 = v47 - 3;
    if (v47 < 3)
    {
      v50 = v64;
    }

    else
    {
      if (v12 <= 3)
      {
        v49 = v12;
      }

      else
      {
        v49 = 4;
      }

      v50 = v64;
      if (v49 > 1)
      {
        if (v49 == 2)
        {
          v51 = *v46;
        }

        else if (v49 == 3)
        {
          v51 = *v46 | (v46[2] << 16);
        }

        else
        {
          v51 = *v46;
        }

LABEL_75:
        v52 = (v51 | (v48 << (8 * v12))) + 3;
        v47 = v51 + 3;
        if (v12 < 4)
        {
          v47 = v52;
        }

        goto LABEL_77;
      }

      if (v49)
      {
        v51 = *v46;
        goto LABEL_75;
      }
    }

LABEL_77:
    *v45 = *v46;
    if (v47 == 2)
    {
      v54 = *(v5 + 16);
      (v54)(v45 + 1);
      v54((v45 + v10 + v7 + 8) & ~v7, &v46[v10 + 8 + v7] & ~v7, v50);
      v53 = 2;
    }

    else if (v47 == 1)
    {
      v53 = 1;
    }

    else
    {
      (*(v5 + 16))(v45 + 1, v46 + 4, v50);
      v53 = 0;
    }

    *(v45 + v12) = v53;
    v55 = ((v45 + v12 + 8) & 0xFFFFFFFFFFFFFFF8);
    v56 = (&v46[v12 + 8] & 0xFFFFFFFFFFFFFFF8);
    *v55 = *v56;
    *((v55 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v56 + 15) & 0xFFFFFFFFFFFFFFF8);
    *(v3 + v16) = 0;
    return v3;
  }

  v26 = v25 - 3;
  if (v25 >= 3)
  {
    if (v12 <= 3)
    {
      v27 = v12;
    }

    else
    {
      v27 = 4;
    }

    if (v27 > 1)
    {
      if (v27 == 2)
      {
        v28 = *v24;
      }

      else if (v27 == 3)
      {
        v28 = *v24 | (*((a2 & 0xFFFFFFFFFFFFFFF8) + 26) << 16);
      }

      else
      {
        v28 = *v24;
      }

      goto LABEL_46;
    }

    if (v27)
    {
      v28 = *v24;
LABEL_46:
      if (v12 < 4)
      {
        v28 |= v26 << (8 * v12);
      }

      v25 = v28 + 3;
    }
  }

  *v22 = *v24;
  if (v25 == 2)
  {
    v61 = a1 & 0xFFFFFFFFFFFFFFF8;
    v62 = (a1 & 0xFFFFFFFFFFFFFFF8) + 24;
    v63 = v21 + 32;
    v65 = a2 & 0xFFFFFFFFFFFFFFF8;
    v34 = v23 + 32;
    v35 = *(v5 + 16);
    v36 = v4;
    v35();
    v22 = v62;
    v37 = v10 + v7 + v34;
    v20 = v12 + 1;
    (v35)((v10 + v7 + v63) & ~v7, v37 & ~v7, v36);
    v21 = v61;
    v23 = v65;
    LOBYTE(v25) = 2;
  }

  else if (v25 != 1)
  {
    v33 = a2 & 0xFFFFFFFFFFFFFFF8;
    (*(v5 + 16))(v21 + 32, v23 + 32);
    v21 = v3 & 0xFFFFFFFFFFFFFFF8;
    v23 = v33;
    LOBYTE(v25) = 0;
  }

  *(v22 + v12) = v25;
  v38 = ((v21 + v20 + 31) & 0xFFFFFFFFFFFFFFF8);
  v39 = ((v23 + v20 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v38 = *v39;
  *((v38 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v39 + 15) & 0xFFFFFFFFFFFFFFF8);
  *(v3 + v16) = 1;
  return v3;
}

_DWORD *sub_2300B829C(_DWORD *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  v6 = v4 | 7;
  v7 = ~(v4 | 7);
  v8 = v4 + 8;
  v9 = ((v4 + 8) & ~v4) + v5;
  if (v9 <= ((v9 + v4) & ~v4) + v5)
  {
    v9 = ((v9 + v4) & ~v4) + v5;
  }

  if (v9 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v9;
  }

  v11 = (((v10 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = v11 + (((v4 | 7) + 17) & ~(v4 | 7));
  if (v12 <= ((v12 + v6) & ~v6) + v11)
  {
    v12 = ((v12 + v6) & ~v6) + v11;
  }

  v13 = *(result + v12);
  if (v13 >= 2 && v12 != 0)
  {
    v13 = *result + 2;
  }

  v15 = ~v4;
  v16 = ((result + v6 + 17) & v7);
  v17 = *(v16 + v10);
  if (v13 == 1)
  {
    v18 = v17 - 3;
    if (v17 >= 3)
    {
      if (v10 <= 3)
      {
        v19 = v10;
      }

      else
      {
        v19 = 4;
      }

      if (v19 > 1)
      {
        if (v19 == 2)
        {
          v20 = *v16;
        }

        else if (v19 == 3)
        {
          v20 = *v16 | (*(((result + v6 + 17) & v7) + 2) << 16);
        }

        else
        {
          v20 = *v16;
        }

LABEL_37:
        v24 = (v20 | (v18 << (8 * v10))) + 3;
        v17 = v20 + 3;
        if (v10 < 4)
        {
          v17 = v24;
        }

        goto LABEL_39;
      }

      if (v19)
      {
        v20 = *v16;
        goto LABEL_37;
      }
    }

LABEL_39:
    if (v17 != 2)
    {
      if (v17 == 1)
      {
        return result;
      }

      v25 = v16 + v8;
LABEL_70:
      v43 = *(v3 + 8);
      v42 = v25 & v15;
      goto LABEL_71;
    }

    v26 = v16 + v8;
    goto LABEL_68;
  }

  v21 = v17 - 3;
  if (v17 >= 3)
  {
    if (v10 <= 3)
    {
      v22 = v10;
    }

    else
    {
      v22 = 4;
    }

    if (v22 <= 1)
    {
      if (!v22)
      {
        goto LABEL_46;
      }

      v23 = *v16;
    }

    else if (v22 == 2)
    {
      v23 = *v16;
    }

    else if (v22 == 3)
    {
      v23 = *v16 | (*(((result + v6 + 17) & v7) + 2) << 16);
    }

    else
    {
      v23 = *v16;
    }

    v27 = (v23 | (v21 << (8 * v10))) + 3;
    v17 = v23 + 3;
    if (v10 < 4)
    {
      v17 = v27;
    }
  }

LABEL_46:
  if (v17 == 2)
  {
    v29 = (v16 + v8) & v15;
    v30 = *(v3 + 8);
    v31 = *(*(v2 - 8) + 64);
    v32 = v2;
    v46 = *(v2 - 8);
    v30(v29);
    v33 = v31 + v4 + v29;
    v8 = v4 + 8;
    result = (v30)(v33 & ~v4, v32);
    v15 = ~v4;
    v3 = v46;
    v2 = v32;
    v5 = v31;
    v7 = ~(v4 | 7);
  }

  else if (v17 != 1)
  {
    v28 = v2;
    v45 = *(v2 - 8);
    result = (*(v3 + 8))((v16 + v8) & v15);
    v3 = v45;
    v2 = v28;
  }

  v34 = ((v16 + v6 + v11) & v7);
  v35 = *(v34 + v10);
  v36 = v35 - 3;
  if (v35 < 3)
  {
    goto LABEL_64;
  }

  if (v10 <= 3)
  {
    v37 = v10;
  }

  else
  {
    v37 = 4;
  }

  if (v37 > 1)
  {
    if (v37 == 2)
    {
      v38 = *v34;
    }

    else if (v37 == 3)
    {
      v38 = *v34 | (*(((v16 + v6 + v11) & v7) + 2) << 16);
    }

    else
    {
      v38 = *v34;
    }

LABEL_62:
    v39 = (v38 | (v36 << (8 * v10))) + 3;
    v35 = v38 + 3;
    if (v10 < 4)
    {
      v35 = v39;
    }

    goto LABEL_64;
  }

  if (v37)
  {
    v38 = *v34;
    goto LABEL_62;
  }

LABEL_64:
  if (v35 != 2)
  {
    if (v35 == 1)
    {
      return result;
    }

    v25 = v34 + v8;
    goto LABEL_70;
  }

  v26 = v34 + v8;
LABEL_68:
  v40 = v26 & v15;
  v44 = *(v3 + 8);
  v41 = v2;
  v44(v26 & v15);
  v42 = (v5 + v4 + v40) & v15;
  v2 = v41;
  v43 = v44;
LABEL_71:

  return v43(v42, v2);
}

uint64_t sub_2300B8680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v6 | 7;
  v8 = ~(v6 | 7);
  v9 = v6 + 8;
  v10 = *(v5 + 64);
  v11 = ((v6 + 8) & ~v6) + v10;
  if (v11 <= ((v11 + v6) & ~v6) + v10)
  {
    v11 = ((v11 + v6) & ~v6) + v10;
  }

  if (v11 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = v11;
  }

  v13 = (((v12 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = v13 + (((v6 | 7) + 17) & ~(v6 | 7));
  if (v14 <= ((v14 + v7) & ~v7) + v13)
  {
    v14 = ((v14 + v7) & ~v7) + v13;
  }

  v15 = *(a2 + v14);
  v72 = v14;
  if (v15 >= 2 && v14 != 0)
  {
    v15 = *a2 + 2;
  }

  v17 = ~v6;
  v18 = v12 + 1;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v19 = ((a1 + v7 + 17) & v8);
  v20 = ((a2 + v7 + 17) & v8);
  v21 = *(v20 + v12);
  if (v15 == 1)
  {
    v22 = v21 - 3;
    if (v21 >= 3)
    {
      if (v12 <= 3)
      {
        v23 = v12;
      }

      else
      {
        v23 = 4;
      }

      if (v23 > 1)
      {
        if (v23 == 2)
        {
          v24 = *v20;
        }

        else if (v23 == 3)
        {
          v24 = *v20 | (*(((a2 + v7 + 17) & v8) + 2) << 16);
        }

        else
        {
          v24 = *v20;
        }

LABEL_37:
        v28 = (v24 | (v22 << (8 * v12))) + 3;
        v21 = v24 + 3;
        if (v12 < 4)
        {
          v21 = v28;
        }

        goto LABEL_39;
      }

      if (v23)
      {
        v24 = *v20;
        goto LABEL_37;
      }
    }

LABEL_39:
    *v19 = *v20;
    if (v21 == 2)
    {
      v29 = (v19 + v9) & v17;
      v30 = (v20 + v6 + 8) & v17;
      v31 = *(v5 + 16);
      v32 = v4;
      v67 = v10;
      v31(v29, v30);
      v33 = v32;
      v18 = v12 + 1;
      (v31)((v67 + v6 + v29) & ~v6, (v67 + v6 + v30) & ~v6, v33);
      v3 = a1;
      LOBYTE(v21) = 2;
    }

    else if (v21 != 1)
    {
      (*(v5 + 16))((v19 + v9) & v17, (v20 + v9) & v17);
      LOBYTE(v21) = 0;
    }

    *(v19 + v12) = v21;
    v34 = v19 + v18 + 7;
    v35 = v20 + v18 + 7;
    v36 = 1;
    goto LABEL_73;
  }

  v25 = v21 - 3;
  if (v21 >= 3)
  {
    if (v12 <= 3)
    {
      v26 = v12;
    }

    else
    {
      v26 = 4;
    }

    if (v26 <= 1)
    {
      if (!v26)
      {
        goto LABEL_47;
      }

      v27 = *v20;
    }

    else if (v26 == 2)
    {
      v27 = *v20;
    }

    else if (v26 == 3)
    {
      v27 = *v20 | (*(((a2 + v7 + 17) & v8) + 2) << 16);
    }

    else
    {
      v27 = *v20;
    }

    v37 = (v27 | (v25 << (8 * v12))) + 3;
    v21 = v27 + 3;
    if (v12 < 4)
    {
      v21 = v37;
    }
  }

LABEL_47:
  *v19 = *v20;
  v68 = v10;
  v69 = v5;
  v66 = ~(v6 | 7);
  if (v21 == 2)
  {
    v63 = (v19 + v9) & v17;
    v64 = (v20 + v9) & v17;
    v65 = *(v5 + 16);
    v39 = v4;
    v40 = v10;
    v65();
    v41 = (v40 + v6 + v63) & ~v6;
    v42 = (v40 + v6 + v64) & ~v6;
    v18 = v12 + 1;
    v38 = v39;
    v43 = v39;
    v9 = v6 + 8;
    (v65)(v41, v42, v43);
    LOBYTE(v21) = 2;
  }

  else
  {
    v38 = v4;
    if (v21 != 1)
    {
      (*(v5 + 16))((v19 + v9) & v17, (v20 + v9) & v17);
      LOBYTE(v21) = 0;
    }
  }

  *(v19 + v12) = v21;
  v44 = ((v19 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v45 = ((v20 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v44 = *v45;
  *((v44 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v45 + 15) & 0xFFFFFFFFFFFFFFF8);
  v46 = ((v19 + v7 + v13) & v66);
  v47 = ((v20 + v7 + v13) & v66);
  v48 = *(v47 + v12);
  v49 = v48 - 3;
  if (v48 < 3)
  {
    v51 = v38;
    v52 = v69;
    v54 = ~v6;
  }

  else
  {
    if (v12 <= 3)
    {
      v50 = v12;
    }

    else
    {
      v50 = 4;
    }

    v51 = v38;
    v52 = v69;
    if (v50 > 1)
    {
      if (v50 == 2)
      {
        v53 = *v47;
      }

      else if (v50 == 3)
      {
        v53 = *v47 | (*(v47 + 2) << 16);
      }

      else
      {
        v53 = *v47;
      }

      v54 = ~v6;
LABEL_66:
      v55 = (v53 | (v49 << (8 * v12))) + 3;
      v48 = v53 + 3;
      if (v12 < 4)
      {
        v48 = v55;
      }

      goto LABEL_68;
    }

    v54 = ~v6;
    if (v50)
    {
      v53 = *v47;
      goto LABEL_66;
    }
  }

LABEL_68:
  *v46 = *v47;
  if (v48 == 2)
  {
    v56 = v9;
    v57 = (v46 + v9) & v54;
    v58 = (v47 + v56) & v54;
    v71 = v3;
    v59 = *(v52 + 16);
    v59(v57, v58, v51);
    v59((v68 + v6 + v57) & v54, (v68 + v6 + v58) & v54, v51);
    v3 = v71;
    LOBYTE(v48) = 2;
  }

  else if (v48 != 1)
  {
    (*(v52 + 16))((v46 + v9) & v54, (v47 + v9) & v54, v51);
    LOBYTE(v48) = 0;
  }

  v36 = 0;
  *(v46 + v12) = v48;
  v34 = v46 + v12 + 8;
  v35 = v47 + v12 + 8;
LABEL_73:
  v60 = (v34 & 0xFFFFFFFFFFFFFFF8);
  v61 = (v35 & 0xFFFFFFFFFFFFFFF8);
  *v60 = *v61;
  *((v60 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v61 + 15) & 0xFFFFFFFFFFFFFFF8);
  *(v3 + v72) = v36;
  return v3;
}