uint64_t sub_2697F5780(uint64_t a1)
{
  v2 = v1;
  v41 = sub_2698519E4();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256C0, &qword_269866F88);
  result = sub_2698551D4();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_26980F698(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_2697F8C6C(&unk_280326380, MEMORY[0x277CB9E20]);
    result = sub_269854A24();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
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
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2697F5AD8(uint64_t a1)
{
  v2 = v1;
  v41 = sub_269851A04();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256D0, &qword_269866F90);
  result = sub_2698551D4();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_26980F698(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_2697F8C6C(&unk_2803263A0, MEMORY[0x277CBA000]);
    result = sub_269854A24();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
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
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2697F5E30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256F0, &qword_269866FA8);
  result = sub_2698551D4();
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
      sub_26980F698(0, (v27 + 63) >> 6, v3 + 56);
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
    sub_269855674();
    MEMORY[0x26D646580](v17);
    result = sub_2698556C4();
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

uint64_t sub_2697F607C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256E0, &qword_269866FA0);
  result = sub_2698551D4();
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
      sub_26980F698(0, (v27 + 63) >> 6, v3 + 56);
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
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_269855674();
    MEMORY[0x26D646580](v17);
    result = sub_2698556C4();
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
    *(*(v6 + 48) + v22) = v17;
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

uint64_t sub_2697F62C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256D8, &qword_269866F98);
  result = sub_2698551D4();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_31:

    *v2 = v6;
    return result;
  }

  v31 = v2;
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
        goto LABEL_33;
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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_26980F698(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v19 = *v17;
    v18 = v17[1];
    v20 = *(v6 + 40);
    sub_269855674();
    sub_269855694();
    if (v18)
    {
      sub_269854B34();
    }

    result = sub_2698556C4();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v18;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_25;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_2697F6540(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2697F5524(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_2697F7778(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_269855674();
      sub_269854B34();
      result = sub_2698556C4();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_269855584() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_2697F7034();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_2698555E4();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_2697F66A8(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_2698519E4();
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
      sub_2697F5780(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_2697F79AC(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_2697F8C6C(&unk_280326380, MEMORY[0x277CB9E20]);
      v15 = sub_269854A24();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_2697F8C6C(&qword_2803256B8, MEMORY[0x277CB9E20]);
        v17 = sub_269854A54();
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

    sub_2697F718C();
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
    result = sub_2698555E4();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_2697F6958(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_269851A04();
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
      sub_2697F5AD8(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_2697F7CC4(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_2697F8C6C(&unk_2803263A0, MEMORY[0x277CBA000]);
      v15 = sub_269854A24();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_2697F8C6C(&qword_2803256C8, MEMORY[0x277CBA000]);
        v17 = sub_269854A54();
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

    sub_2697F718C();
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
    result = sub_2698555E4();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_2697F6C08(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2697F5E30(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_2697F7FDC(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      sub_269855674();
      MEMORY[0x26D646580](v5);
      result = sub_2698556C4();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for INMediaItemType(0);
        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_2697F73A4();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_2698555E4();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_2697F6D40(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2697F607C(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_2697F81F8(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      sub_269855674();
      MEMORY[0x26D646580](v5);
      result = sub_2698556C4();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_2697F74E4();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_2698555E4();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_2697F6E78(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 <= v9 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2697F62C8(v9 + 1);
    }

    else
    {
      if (v10 > v9)
      {
        result = sub_2697F7624();
        goto LABEL_22;
      }

      sub_2697F8414(v9 + 1);
    }

    v11 = *v4;
    v12 = *(*v4 + 40);
    sub_269855674();
    sub_269855694();
    if (a2)
    {
      sub_269854B34();
    }

    result = sub_2698556C4();
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

            result = sub_269855584();
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
    result = sub_2698555E4();
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

void *sub_2697F7034()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F70, &qword_269858E00);
  v2 = *v0;
  v3 = sub_2698551C4();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

void sub_2697F718C()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v3 = v2(0);
  v4 = OUTLINED_FUNCTION_8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v28 - v9;
  v11 = OUTLINED_FUNCTION_8_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  v13 = *v0;
  v14 = sub_2698551C4();
  v15 = v14;
  if (*(v13 + 16))
  {
    v29 = v1;
    v16 = (v14 + 56);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || v16 >= v13 + 56 + 8 * v17)
    {
      memmove(v16, (v13 + 56), 8 * v17);
    }

    v19 = 0;
    *(v15 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v13 + 56);
    v23 = (v20 + 63) >> 6;
    v30 = v6 + 32;
    v31 = v6 + 16;
    while (v22)
    {
      v24 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v27 = *(v6 + 72) * (v24 | (v19 << 6));
      (*(v6 + 16))(v10, *(v13 + 48) + v27, v3);
      (*(v6 + 32))(*(v15 + 48) + v27, v10, v3);
    }

    v25 = v19;
    while (1)
    {
      v19 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v19 >= v23)
      {

        v1 = v29;
        goto LABEL_21;
      }

      v26 = *(v13 + 56 + 8 * v19);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v22 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v15;
    OUTLINED_FUNCTION_21_0();
  }
}

void *sub_2697F73A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256F0, &qword_269866FA8);
  v2 = *v0;
  v3 = sub_2698551C4();
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

void *sub_2697F74E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256E0, &qword_269866FA0);
  v2 = *v0;
  v3 = sub_2698551C4();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

void *sub_2697F7624()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256D8, &qword_269866F98);
  v2 = *v0;
  v3 = sub_2698551C4();
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

uint64_t sub_2697F7778(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F70, &qword_269858E00);
  result = sub_2698551D4();
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
        sub_269855674();

        sub_269854B34();
        result = sub_2698556C4();
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

uint64_t sub_2697F79AC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2698519E4();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256C0, &qword_269866F88);
  v10 = sub_2698551D4();
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
        sub_2697F8C6C(&unk_280326380, MEMORY[0x277CB9E20]);
        result = sub_269854A24();
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

uint64_t sub_2697F7CC4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_269851A04();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256D0, &qword_269866F90);
  v10 = sub_2698551D4();
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
        sub_2697F8C6C(&unk_2803263A0, MEMORY[0x277CBA000]);
        result = sub_269854A24();
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

uint64_t sub_2697F7FDC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256F0, &qword_269866FA8);
  result = sub_2698551D4();
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
        sub_269855674();
        MEMORY[0x26D646580](v16);
        result = sub_2698556C4();
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

uint64_t sub_2697F81F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256E0, &qword_269866FA0);
  result = sub_2698551D4();
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
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_269855674();
        MEMORY[0x26D646580](v16);
        result = sub_2698556C4();
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
        *(*(v6 + 48) + v21) = v16;
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

uint64_t sub_2697F8414(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256D8, &qword_269866F98);
  result = sub_2698551D4();
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
        sub_269855674();
        sub_269855694();
        if (v17)
        {

          sub_269854B34();
        }

        result = sub_2698556C4();
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

unint64_t *sub_2697F8664(unint64_t *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_2697F8840(v5, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_2697F86DC(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = sub_2697F8664(v9, v4, v2);
      MEMORY[0x26D647170](v9, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = (v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_26980F698(0, v4, v5);
  v6 = sub_2697F8840(v5, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v6;
  }

LABEL_5:
  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_2697F8840(unint64_t *a1, uint64_t a2, void *a3)
{
  v38 = a2;
  v39 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B28, &qword_26985C360);
  v4 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v51 = &v37 - v5;
  v52 = sub_269853904();
  v6 = *(*(v52 - 8) + 64);
  result = MEMORY[0x28223BE20](v52);
  v50 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = 0;
  v10 = 0;
  v47 = a3;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v44 = v8 + 16;
  v45 = v8;
  v48 = 0x8000000269880BB0;
  v41 = 0x8000000269880BD0;
  v43 = (v8 + 8);
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v49 = (v16 - 1) & v16;
LABEL_11:
    v21 = v18 | (v10 << 6);
    v22 = v47[7];
    v23 = (v47[6] + 16 * v21);
    v24 = *v23;
    v25 = v23[1];
    v26 = *(v45 + 72);
    v42 = v21;
    v27 = *(v45 + 16);
    v28 = v50;
    v29 = v52;
    v27(v50, v22 + v26 * v21, v52);
    v30 = v51;
    *v51 = v24;
    *(v30 + 1) = v25;
    v27(&v30[*(v46 + 48)], v28, v29);
    v31 = v24 == 0xD000000000000015 && v48 == v25;
    if (v31 || ((v32 = sub_269855584(), v24 == 0xD000000000000015) ? (v33 = v41 == v25) : (v33 = 0), !v33 ? (v34 = 0) : (v34 = 1), (v32 & 1) != 0 || (v34 & 1) != 0))
    {
      swift_bridgeObjectRetain_n();
      sub_269698048(v51, &qword_280323B28, &qword_26985C360);
      (*v43)(v50, v52);

      v16 = v49;
    }

    else
    {
      v35 = sub_269855584();
      swift_bridgeObjectRetain_n();
      sub_269698048(v51, &qword_280323B28, &qword_26985C360);
      (*v43)(v50, v52);

      v16 = v49;
      if ((v35 & 1) == 0)
      {
        *(v39 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
        if (__OFADD__(v40++, 1))
        {
          goto LABEL_30;
        }
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      return sub_2697BE7A4(v39, v38, v40, v47);
    }

    v20 = v12[v10];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v49 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_2697F8BFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B30, &qword_26985C368);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2697F8C6C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2697F8CB4(uint64_t a1, void *a2, unint64_t *a3, uint64_t *a4)
{
  sub_26969329C(0, a3, a4);
  v5 = sub_269854CA4();

  [a2 setDependentSignals_];
}

void *sub_2697F8D30(void *result)
{
  if (result)
  {
  }

  return result;
}

void OUTLINED_FUNCTION_7_43()
{
  v4 = *(v1 + 16);
  v3 = v1 + 16;
  v5 = *(v3 + 64);
  *(v2 - 96) = v0;
  v6 = *(v3 + 56);
}

void OUTLINED_FUNCTION_11_35()
{

  JUMPOUT(0x26D645D60);
}

uint64_t OUTLINED_FUNCTION_14_27()
{
  result = *(v0 - 128);
  v2 = *(v0 - 232);
  return result;
}

void OUTLINED_FUNCTION_31_13()
{
  v1 = *(v0 - 96);
  *(v0 - 368) = v1;
  v2 = *(v1 + 56);
}

void OUTLINED_FUNCTION_33_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_34_11()
{

  return sub_2698552E4();
}

uint64_t sub_2697F8EAC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_26969B138(a1, &v10 - v6, &unk_280322D50, &unk_2698583F0);
  v8 = *a2;
  return sub_2697B8DB0(v7);
}

id sub_2697F8F58(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_269851D64();
  v4 = [v2 initWithNSUUID_];

  v5 = sub_269851DA4();
  OUTLINED_FUNCTION_4_3(v5);
  (*(v6 + 8))(a1);
  return v4;
}

void sub_2697F9010(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240F0, &qword_2698603D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - v8;
  sub_26969B138(a2, &v12 - v8, &qword_2803240F0, &qword_2698603D0);
  v10 = sub_269851DA4();
  v11 = 0;
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
  {
    v11 = sub_269851D64();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  [v3 emitMessage:a1 isolatedStreamUUID:v11];
}

void *sub_2697F9130()
{
  result = sub_2697F9150();
  qword_28033D8E0 = result;
  return result;
}

void *sub_2697F9150()
{
  if (qword_280322688 != -1)
  {
    swift_once();
  }

  v0 = qword_28033D8B8;
  v1 = objc_allocWithZone(MEMORY[0x277D23C38]);
  swift_retain_n();
  v2 = [v1 init];
  type metadata accessor for GlobalsImpl();
  inited = swift_initStaticObject();
  type metadata accessor for UserDefaultsProviderImpl();
  swift_allocObject();
  v4 = v2;
  v5 = sub_2697B9550();
  v6 = [objc_opt_self() sharedAnalytics];
  v7 = [v6 defaultMessageStream];

  v8 = qword_280322680;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v11 = sub_2697FCF68(v10, v0, sub_2697F93D8, 0, sub_2697F9458, 0, v4, inited, v5, v9, sub_2697F94E4, 0, sub_2697F9378, 0);

  return v11;
}

id sub_2697F9340()
{
  v0 = objc_allocWithZone(sub_2698547C4());

  return [v0 init];
}

id sub_2697F9378()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isDiagnosticSubmissionAllowed];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_2697F93D8()
{
  if (qword_280322678 != -1)
  {
    swift_once();
  }

  v0 = *(qword_28033D8A8 + 16);
  sub_2697EABE0(v3);
  v1 = v4;
  sub_2697E719C(v3);
  return v1;
}

uint64_t sub_2697F9458()
{
  if (qword_280322678 != -1)
  {
    swift_once();
  }

  v0 = *(qword_28033D8A8 + 16);
  sub_2697EABE0(v3);
  v1 = v4;

  sub_2697E719C(v3);
  return v1;
}

uint64_t sub_2697F94E4@<X0>(void *a1@<X8>)
{
  v2 = sub_2697F9340();
  result = sub_2698547C4();
  a1[3] = result;
  a1[4] = &off_287A44C78;
  *a1 = v2;
  return result;
}

void sub_2697F9524()
{
  OUTLINED_FUNCTION_19_1();
  v2 = v1;
  v72 = type metadata accessor for SignalRecordingContext();
  v3 = OUTLINED_FUNCTION_4_3(v72);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  v8 = &v69 - v7;
  v9 = sub_2698548D4();
  v10 = OUTLINED_FUNCTION_8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_12();
  v74 = (v15 - v16);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v69 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v69 - v22;
  v73 = v0;
  v24 = *(v0 + 80);
  v25 = *(v0 + 88);
  v26 = v24(v21);
  if (qword_2803226F0 != -1)
  {
    OUTLINED_FUNCTION_0_56();
    swift_once();
  }

  OUTLINED_FUNCTION_33_0(v9, qword_28033D940);
  v27 = *(v12 + 16);
  v75 = v28;
  v76 = v27;
  (v27)(v23);
  v77 = v2;
  sub_2697EE474(v2, v8);
  v29 = sub_2698548B4();
  v30 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v30))
  {
    v31 = swift_slowAlloc();
    v70 = v20;
    v32 = v31;
    v33 = OUTLINED_FUNCTION_9_3();
    v71 = v12;
    v34 = v33;
    v80[0] = v33;
    *v32 = 67109378;
    v69 = v9;
    v35 = v26;
    *(v32 + 4) = v26 & 1;
    *(v32 + 8) = 2080;
    v36 = OUTLINED_FUNCTION_31_3();
    sub_2697EE474(v36, v37);
    v38 = sub_269854AE4();
    v40 = v39;
    sub_2697602B0(v8);
    v41 = sub_26974F520(v38, v40, v80);

    *(v32 + 10) = v41;
    _os_log_impl(&dword_269684000, v29, v30, "SiriSignalsRecorder shouldRecord, D&U is permitted: %{BOOL}d, context: %s", v32, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v34);
    v42 = v71;
    OUTLINED_FUNCTION_10();
    v20 = v70;
    OUTLINED_FUNCTION_10();

    v43 = *(v42 + 8);
    v44 = v23;
    v45 = v69;
    v43(v44);
  }

  else
  {

    sub_2697602B0(v8);
    v43 = *(v12 + 8);
    v46 = v23;
    v45 = v9;
    (v43)(v46, v9);
    v35 = v26;
  }

  v47 = v77;
  if ((v35 & 1) == 0)
  {
    v52 = v74;
    v53 = v45;
    v76(v74, v75, v45);
    v54 = sub_2698548B4();
    v55 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_4(v55))
    {
      *OUTLINED_FUNCTION_16_2() = 0;
      OUTLINED_FUNCTION_16_24();
      _os_log_impl(v56, v57, v58, v59, v60, 2u);
      OUTLINED_FUNCTION_10();
    }

    v61 = v52;
    goto LABEL_15;
  }

  v48 = *(v73 + 16);
  v49 = sub_269817454();
  sub_26981D1E4(v49, v48, &v78);
  if (!v79)
  {
    sub_26969B0C0(&v78, &qword_280325720, &qword_269867100);
    v53 = v45;
    v76(v20, v75, v45);
    v62 = sub_2698548B4();
    v63 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_4(v63))
    {
      *OUTLINED_FUNCTION_16_2() = 0;
      OUTLINED_FUNCTION_16_24();
      _os_log_impl(v64, v65, v66, v67, v68, 2u);
      OUTLINED_FUNCTION_10();
    }

    v61 = v20;
LABEL_15:
    (v43)(v61, v53);
    goto LABEL_16;
  }

  sub_26968E5D4(&v78, v80);
  v50 = v81;
  v51 = v82;
  __swift_project_boxed_opaque_existential_1(v80, v81);
  (*(v51 + 16))(v47, v50, v51);
  __swift_destroy_boxed_opaque_existential_0(v80);
LABEL_16:
  OUTLINED_FUNCTION_21_0();
}

void sub_2697F99B8()
{
  OUTLINED_FUNCTION_19_1();
  v2 = v1;
  v3 = type metadata accessor for SignalRecordingContext();
  v4 = OUTLINED_FUNCTION_4_3(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14_28();
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = sub_2698548D4();
  v11 = OUTLINED_FUNCTION_8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v18 = v17 - v16;
  if (qword_2803226F0 != -1)
  {
    OUTLINED_FUNCTION_0_56();
    swift_once();
  }

  __swift_project_value_buffer(v10, qword_28033D940);
  OUTLINED_FUNCTION_6_46();
  v19 = OUTLINED_FUNCTION_12_11();
  v20(v19);
  sub_2697EE474(v2, v9);
  v21 = sub_2698548B4();
  v22 = sub_269854F14();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = OUTLINED_FUNCTION_27_2();
    v24 = OUTLINED_FUNCTION_9_3();
    v30 = v24;
    *v23 = 136315138;
    sub_2697EE474(v9, v0);
    OUTLINED_FUNCTION_31_3();
    v25 = sub_269854AE4();
    v27 = v26;
    sub_2697602B0(v9);
    v28 = sub_26974F520(v25, v27, &v30);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_269684000, v21, v22, "SiriSignalsRecorder prepareRecord %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    sub_2697602B0(v9);
  }

  (*(v13 + 8))(v18, v10);
  OUTLINED_FUNCTION_21_0();
}

void sub_2697F9BE8()
{
  OUTLINED_FUNCTION_19_1();
  v59 = v0;
  v60 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D20, &qword_269860000);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v57 = &v50 - v5;
  v6 = type metadata accessor for SignalRecordingContext();
  v7 = OUTLINED_FUNCTION_8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v58 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v50 - v14;
  v16 = sub_2698548D4();
  v17 = OUTLINED_FUNCTION_8(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14_28();
  MEMORY[0x28223BE20](v22);
  v24 = &v50 - v23;
  if (qword_2803226F0 != -1)
  {
    OUTLINED_FUNCTION_0_56();
    swift_once();
  }

  OUTLINED_FUNCTION_33_0(v16, qword_28033D940);
  v25 = *(v19 + 16);
  v54 = v26;
  v55 = v19 + 16;
  v53 = v25;
  (v25)(v24);
  sub_2697EE474(v60, v15);
  v27 = sub_2698548B4();
  v28 = sub_269854F14();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_27_2();
    v30 = OUTLINED_FUNCTION_9_3();
    v52 = v16;
    v31 = v30;
    v63[0] = v30;
    *v29 = 136315138;
    v51 = v9;
    v32 = v1;
    v33 = v19;
    sub_2697EE474(v15, v58);
    v34 = sub_269854AE4();
    v36 = v35;
    sub_2697602B0(v15);
    v37 = sub_26974F520(v34, v36, v63);
    v19 = v33;
    v1 = v32;
    v9 = v51;

    *(v29 + 4) = v37;
    _os_log_impl(&dword_269684000, v27, v28, "SiriSignalsRecorder record %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    v16 = v52;
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    sub_2697602B0(v15);
  }

  v38 = *(v19 + 8);
  v38(v24, v16);
  v39 = *(v59 + 16);
  v40 = sub_269817454();
  sub_26981D1E4(v40, v39, &v61);
  if (v62)
  {
    sub_26968E5D4(&v61, v63);
    v41 = v57;
    sub_269854D94();
    v42 = sub_269854DB4();
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v42);
    sub_2696A73F8(v63, &v61);
    v43 = v58;
    sub_2697EE474(v60, v58);
    v44 = (*(v9 + 80) + 72) & ~*(v9 + 80);
    v45 = (v56 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    *(v46 + 24) = 0;
    sub_26968E5D4(&v61, v46 + 32);
    sub_2697FCDBC(v43, v46 + v44);
    *(v46 + v45) = v59;

    sub_26983AA20();

    __swift_destroy_boxed_opaque_existential_0(v63);
  }

  else
  {
    sub_26969B0C0(&v61, &qword_280325720, &qword_269867100);
    v53(v1, v54, v16);
    v47 = sub_2698548B4();
    v48 = sub_269854F14();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = OUTLINED_FUNCTION_16_2();
      *v49 = 0;
      _os_log_impl(&dword_269684000, v47, v48, "SiriSignalsRecorder record unsupported type", v49, 2u);
      OUTLINED_FUNCTION_10();
    }

    v38(v1, v16);
  }

  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_2697FA0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_2698548D4();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324390, &unk_2698677E0);
  v6[8] = v10;
  v11 = *(v10 - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v13 = sub_269851DA4();
  v6[13] = v13;
  v14 = *(v13 - 8);
  v6[14] = v14;
  v15 = *(v14 + 64) + 15;
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2697FA24C, 0, 0);
}

uint64_t sub_2697FA24C()
{
  v1 = v0[15];
  v2 = v0[2];
  sub_269851D94();
  v3 = v2[3];
  v4 = v2[4];
  v5 = OUTLINED_FUNCTION_31_3();
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v7 = (*(v4 + 8))(v3, v4);
  v8 = swift_task_alloc();
  *(v8 + 16) = v1;
  v9 = sub_269808254(sub_2697FCF38, v8, 0, v7);
  v0[16] = v9;

  v10 = *(v9 + 16);
  v11 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v12 = *(v11 + 8);
  v13 = OUTLINED_FUNCTION_22_3();
  if (v10 == v14(v13))
  {
    v15 = v2[3];
    v16 = v2[4];
    __swift_project_boxed_opaque_existential_1(v0[2], v15);
    v17 = MEMORY[0x277D84F90];
    if (v10)
    {
      v37 = v16;
      v38 = v15;
      v18 = v0[14];
      v19 = v0[9];
      v41 = v0[8];
      v43 = MEMORY[0x277D84F90];
      sub_2698552A4();
      v20 = v9 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
      v39 = (v18 + 32);
      v40 = *(v19 + 72);
      do
      {
        v22 = v0[12];
        v21 = v0[13];
        v23 = v0[10];
        v24 = v0[11];
        sub_26969B138(v20, v22, &qword_280324390, &unk_2698677E0);
        sub_26969B138(v22, v24, &qword_280324390, &unk_2698677E0);
        v25 = *v24;
        v26 = *(v41 + 48);
        *v23 = *v24;
        (*v39)(v23 + v26, v24 + v26, v21);
        v27 = v25;
        sub_26969B0C0(v23, &qword_280324390, &unk_2698677E0);
        sub_26969B0C0(v22, &qword_280324390, &unk_2698677E0);
        sub_269855284();
        v28 = *(v43 + 16);
        sub_2698552B4();
        sub_2698552C4();
        sub_269855294();
        v20 += v40;
        --v10;
      }

      while (v10);
      v17 = v43;
      v16 = v37;
      v15 = v38;
    }

    v0[17] = v17;
    v29 = *(v16 + 24);
    v42 = (v29 + *v29);
    v30 = v29[1];
    v31 = swift_task_alloc();
    v0[18] = v31;
    *v31 = v0;
    v31[1] = sub_2697FA608;
    v32 = v0[3];

    return v42(v32, v17, v15, v16);
  }

  else
  {

    v34 = OUTLINED_FUNCTION_9_34();
    v35(v34);

    OUTLINED_FUNCTION_7_7();

    return v36();
  }
}

uint64_t sub_2697FA608()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_8_26();
  *v2 = v1;
  v4 = *(v3 + 144);
  v5 = *(v3 + 136);
  v6 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;
  *(v10 + 152) = v8;
  *(v10 + 160) = v9;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2697FA70C()
{
  v1 = v0[20];
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = v0[16];
      v3 = v0[4];
      v4 = v0[2];
      OUTLINED_FUNCTION_6_7();
      sub_2697FAC84();
    }

    else
    {
      v18 = v0[19];
      v19 = v0[16];
      v20 = v0[4];
      v21 = v0[2];
      v22 = v0[20];

      OUTLINED_FUNCTION_31_3();
      sub_2697FAC84();
      sub_2697FCF54(v18, v1);

      sub_2697FCF54(v18, v1);
    }
  }

  else
  {
    v5 = v0[16];

    if (qword_2803226F0 != -1)
    {
      OUTLINED_FUNCTION_0_56();
      swift_once();
    }

    v7 = v0[6];
    v6 = v0[7];
    OUTLINED_FUNCTION_33_0(v0[5], qword_28033D940);
    v8 = *(v7 + 16);
    v9 = OUTLINED_FUNCTION_12_11();
    v10(v9);
    v11 = sub_2698548B4();
    v12 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_4(v12))
    {
      v13 = v0[19];
      v15 = v0[6];
      v14 = v0[7];
      v16 = v0[5];
      v17 = OUTLINED_FUNCTION_16_2();
      *v17 = 0;
      _os_log_impl(&dword_269684000, v11, v12, "SiriSignalsRecorder did not log to SELF", v17, 2u);
      OUTLINED_FUNCTION_10();

      sub_2697FCF54(v13, 0);
      (*(v15 + 8))(v14, v16);
    }

    else
    {
      v24 = v0[6];
      v23 = v0[7];
      v25 = v0[5];

      v26 = *(v24 + 8);
      v27 = OUTLINED_FUNCTION_22_3();
      v28(v27);
    }
  }

  v29 = OUTLINED_FUNCTION_9_34();
  v30(v29);

  OUTLINED_FUNCTION_7_7();

  return v31();
}

uint64_t sub_2697FA930@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v31 = a2;
  v3 = sub_2698548D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_269851DA4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x277D581F0]) init];
  if (v13)
  {
    v14 = v13;
    v15 = [objc_allocWithZone(MEMORY[0x277D581F8]) init];
    if (v15)
    {
      v16 = v15;
      sub_26969329C(0, &qword_2803256F8, 0x277D5AC78);
      v17 = *(v9 + 16);
      v17(v12, a1, v8);
      v18 = sub_2697F8F58(v12);
      [v16 setInferenceId_];

      [v14 setEventMetadata_];
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324390, &unk_2698677E0);
      v20 = *(v19 + 48);
      v21 = v31;
      *v31 = v14;
      v17(&v21[v20], a1, v8);
      v22 = v21;
      v23 = 0;
      v24 = v19;
      return __swift_storeEnumTagSinglePayload(v22, v23, 1, v24);
    }
  }

  if (qword_2803226F0 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v3, qword_28033D940);
  (*(v4 + 16))(v7, v25, v3);
  v26 = sub_2698548B4();
  v27 = sub_269854F24();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_269684000, v26, v27, "SiriSignalsRecorder could not create SelfLoggingMessage or INFERENCESchemaINFERENCEClientEventMetadata", v28, 2u);
    MEMORY[0x26D647170](v28, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324390, &unk_2698677E0);
  v22 = v31;
  v23 = 1;
  return __swift_storeEnumTagSinglePayload(v22, v23, 1, v24);
}

void sub_2697FAC84()
{
  OUTLINED_FUNCTION_19_1();
  v159 = v0;
  v137 = v1;
  v3 = v2;
  v148 = v4;
  v6 = v5;
  v7 = sub_2698548D4();
  v8 = OUTLINED_FUNCTION_8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_13();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v131 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v131 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240F0, &qword_2698603D0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_13();
  v22 = MEMORY[0x28223BE20](v21);
  v147 = &v131 - v23;
  MEMORY[0x28223BE20](v22);
  v161 = &v131 - v24;
  v25 = sub_269851DA4();
  v26 = OUTLINED_FUNCTION_8(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v32);
  v157 = &v131 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324390, &unk_2698677E0);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34);
  v156 = (&v131 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = MEMORY[0x28223BE20](v36);
  v155 = &v131 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v154 = &v131 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v153 = (&v131 - v45);
  v46 = *(v6 + 16);
  v138 = v46;
  v145 = v7;
  if (!v46)
  {
    v105 = v137[4];
    v104 = v7;
    __swift_project_boxed_opaque_existential_1(v137, v137[3]);
    v106 = *(v105 + 32);
    v107 = OUTLINED_FUNCTION_22_3();
    v108(v107);
    v92 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v132 = v16;
  v47 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v133 = v6;
  v48 = v6 + v47;
  v49 = (v28 + 32);
  v150 = *(v42 + 48);
  v151 = v42;
  v160 = (v28 + 16);
  v152 = v28;
  v149 = (v28 + 8);
  v162 = *(v43 + 72);
  v143 = (v10 + 16);
  v134 = v10;
  v142 = v10 + 8;
  *&v44 = 136315138;
  v139 = v44;
  v163 = v6 + v47;
  v50 = v46;
  v146 = v3;
  v141 = v18;
  v51 = v157;
  v158 = (v28 + 32);
  do
  {
    v52 = v153;
    sub_26969B138(v48, v153, &qword_280324390, &unk_2698677E0);
    v53 = *v52;
    v164 = *v49;
    v164(v51, v52 + v150, v25);
    v54 = v3;
    if (!v3)
    {
      v67 = v161;
      (*v160)(v161, v51, v25);
      __swift_storeEnumTagSinglePayload(v67, 0, 1, v25);
      v69 = v159[6];
      v68 = v159[7];
      __swift_project_boxed_opaque_existential_1(v159 + 3, v69);
      v51 = v157;
      (*(v68 + 8))(v53, v67, v69, v68);

      sub_26969B0C0(v67, &qword_2803240F0, &qword_2698603D0);
      v70 = *v149;
      v71 = OUTLINED_FUNCTION_29_15();
      v72(v71);
      v3 = 0;
LABEL_15:
      v49 = v158;
      goto LABEL_16;
    }

    v55 = v161;
    OUTLINED_FUNCTION_31_14();
    v56 = v159[6];
    v57 = v159[7];
    __swift_project_boxed_opaque_existential_1(v159 + 3, v56);
    (*(v57 + 8))(v53, v55, v56, v57);
    v58 = v147;
    sub_269851D44();
    v3 = v54;
    if (__swift_getEnumTagSinglePayload(v58, 1, v25) == 1)
    {
      sub_26969B0C0(v58, &qword_2803240F0, &qword_2698603D0);
      if (qword_2803226F0 != -1)
      {
        OUTLINED_FUNCTION_0_56();
        swift_once();
      }

      v59 = v145;
      OUTLINED_FUNCTION_33_0(v145, qword_28033D940);
      (*v143)(v141);

      v60 = sub_2698548B4();
      v61 = sub_269854F24();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = OUTLINED_FUNCTION_27_2();
        v63 = OUTLINED_FUNCTION_9_3();
        v165[0] = v63;
        *v62 = v139;
        *(v62 + 4) = sub_26974F520(v148, v146, v165);
        _os_log_impl(&dword_269684000, v60, v61, "SiriSignalsRecorder request ID %s is not a valid UUID", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v63);
        v3 = v146;
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();

        v64 = OUTLINED_FUNCTION_23_18();
        v66 = v145;
      }

      else
      {

        v64 = OUTLINED_FUNCTION_23_18();
        v66 = v59;
      }

      v65(v64, v66);
      sub_26969B0C0(v161, &qword_2803240F0, &qword_2698603D0);
      v83 = *v149;
      v51 = v157;
      v84 = OUTLINED_FUNCTION_29_15();
      v85(v84);
      goto LABEL_15;
    }

    v73 = v144;
    v74 = v58;
    v49 = v158;
    v164(v144, v74, v25);
    v51 = v157;
    sub_2697FBA20();
    if (v75)
    {
      v76 = v75;
      v78 = v159[6];
      v77 = v159[7];
      __swift_project_boxed_opaque_existential_1(v159 + 3, v78);
      v79 = v140;
      OUTLINED_FUNCTION_31_14();
      v80 = v78;
      v3 = v146;
      (*(v77 + 8))(v76, v79, v80, v77);
      v49 = v158;

      sub_26969B0C0(v79, &qword_2803240F0, &qword_2698603D0);
      v81 = *v149;
      (*v149)(v144, v25);
    }

    else
    {

      v81 = *v149;
      (*v149)(v73, v25);
    }

    sub_26969B0C0(v161, &qword_2803240F0, &qword_2698603D0);
    v82 = OUTLINED_FUNCTION_29_15();
    v81(v82);
LABEL_16:
    v48 += v162;
    --v50;
  }

  while (v50);
  v86 = v137[3];
  v87 = v137[4];
  __swift_project_boxed_opaque_existential_1(v137, v86);
  (*(v87 + 32))(v86, v87);
  v165[0] = MEMORY[0x277D84F90];
  v88 = v138;
  sub_2698153E8(0, v138, 0);
  v89 = v136;
  v90 = v163;
  v91 = v164;
  v92 = v165[0];
  do
  {
    v163 = v90;
    v93 = v25;
    v94 = v154;
    v95 = v91;
    sub_26969B138(v90, v154, &qword_280324390, &unk_2698677E0);
    v96 = v155;
    sub_26969B138(v94, v155, &qword_280324390, &unk_2698677E0);
    v97 = v92;
    v98 = *(v151 + 48);
    v99 = v156;
    *v156 = *v96;
    v95(v99 + v98, &v96[v98], v93);
    v100 = (v99 + v98);
    v92 = v97;
    (*v160)(v89, v100, v93);
    sub_26969B0C0(v99, &qword_280324390, &unk_2698677E0);
    sub_26969B0C0(v94, &qword_280324390, &unk_2698677E0);
    v165[0] = v97;
    v102 = *(v97 + 16);
    v101 = *(v97 + 24);
    if (v102 >= v101 >> 1)
    {
      sub_2698153E8(v101 > 1, v102 + 1, 1);
      v89 = v136;
      v92 = v165[0];
    }

    *(v92 + 16) = v102 + 1;
    v103 = v164;
    v164((v92 + ((*(v152 + 80) + 32) & ~*(v152 + 80)) + *(v152 + 72) * v102), v89, v93);
    v90 = v163 + v162;
    --v88;
    v25 = v93;
    v91 = v103;
  }

  while (v88);
  v104 = v145;
  v3 = v146;
  v10 = v134;
  v16 = v132;
LABEL_24:
  if (v3)
  {
    if (qword_2803226F0 != -1)
    {
      OUTLINED_FUNCTION_0_56();
      swift_once();
    }

    __swift_project_value_buffer(v104, qword_28033D940);
    OUTLINED_FUNCTION_6_46();
    v109(v16);

    v110 = v92;
    v111 = sub_2698548B4();
    v112 = sub_269854F14();

    if (os_log_type_enabled(v111, v112))
    {
      v113 = OUTLINED_FUNCTION_9_3();
      v165[0] = swift_slowAlloc();
      *v113 = 134218498;
      *(v113 + 4) = v138;

      *(v113 + 12) = 2080;
      v114 = MEMORY[0x26D645BC0](v110, v25);
      v115 = v16;
      v117 = v116;

      v118 = sub_26974F520(v114, v117, v165);

      *(v113 + 14) = v118;
      *(v113 + 22) = 2080;
      *(v113 + 24) = sub_26974F520(v148, v3, v165);
      _os_log_impl(&dword_269684000, v111, v112, "SiriSignalsRecorder logged to SELF %ld messages with UUIDs %s and request ID %s", v113, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      (*(v10 + 8))(v115, v145);
    }

    else
    {

      (*(v10 + 8))(v16, v104);
    }
  }

  else
  {
    if (qword_2803226F0 != -1)
    {
      OUTLINED_FUNCTION_0_56();
      swift_once();
    }

    __swift_project_value_buffer(v104, qword_28033D940);
    OUTLINED_FUNCTION_6_46();
    v119 = v135;
    v120(v135);

    v121 = v92;
    v122 = sub_2698548B4();
    v123 = sub_269854F14();

    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = v104;
      v126 = OUTLINED_FUNCTION_9_3();
      v165[0] = v126;
      *v124 = 134218242;
      *(v124 + 4) = v138;

      *(v124 + 12) = 2080;
      v127 = MEMORY[0x26D645BC0](v121, v25);
      v129 = v128;

      v130 = sub_26974F520(v127, v129, v165);

      *(v124 + 14) = v130;
      _os_log_impl(&dword_269684000, v122, v123, "SiriSignalsRecorder logged to SELF %ld messages with UUIDs %s", v124, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v126);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      (*(v10 + 8))(v135, v125);
    }

    else
    {

      (*(v10 + 8))(v119, v104);
    }
  }

  OUTLINED_FUNCTION_21_0();
}

void sub_2697FBA20()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_2698548D4();
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;
  v13 = sub_269851DA4();
  v14 = OUTLINED_FUNCTION_8(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v21 = v20 - v19;
  v22 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
  if (v22)
  {
    v23 = v22;
    v36 = v3;
    v24 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
    if (v24)
    {
      v25 = v24;
      v26 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
      if (v26)
      {
        v27 = v26;
        [v25 setComponent_];
        sub_26969329C(0, &qword_2803256F8, 0x277D5AC78);
        v28 = *(v16 + 16);
        v28(v21, v36, v13);
        v29 = sub_2697F8F58(v21);
        [v25 setUuid_];

        [v27 setComponent_];
        v28(v21, v1, v13);
        v30 = sub_2697F8F58(v21);
        [v27 setUuid_];

        [v23 setSource_];
        [v23 setTarget_];

        goto LABEL_13;
      }
    }

    else
    {
      v25 = v23;
    }
  }

  if (qword_2803226F0 != -1)
  {
    OUTLINED_FUNCTION_0_56();
    swift_once();
  }

  __swift_project_value_buffer(v4, qword_28033D940);
  OUTLINED_FUNCTION_6_46();
  v31 = OUTLINED_FUNCTION_12_11();
  v32(v31);
  v33 = sub_2698548B4();
  v34 = sub_269854F24();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = OUTLINED_FUNCTION_16_2();
    *v35 = 0;
    _os_log_impl(&dword_269684000, v33, v34, "SiriSignalsRecorder createLinkMessage could not create link messages", v35, 2u);
    OUTLINED_FUNCTION_10();
  }

  (*(v7 + 8))(v12, v4);
LABEL_13:
  OUTLINED_FUNCTION_21_0();
}

void sub_2697FBD40()
{
  OUTLINED_FUNCTION_19_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v55 = v9;
  v56 = v10;
  v11 = sub_2698548D4();
  v12 = OUTLINED_FUNCTION_8(v11);
  v57 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14_28();
  MEMORY[0x28223BE20](v16);
  v18 = &v54 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D20, &qword_269860000);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v54 - v21;
  v23 = "53697269-963B-45BE-8111-566964656f11";
  if (v8)
  {
    v23 = "53697269-963B-45BE-8222-566964656f22";
  }

  v24 = v23 - 32;
  sub_26969329C(0, &qword_280325718, 0x277CCAD78);
  v25 = sub_2697FC1C4();
  if (v25)
  {
    v26 = v25;

    v27 = sub_2697FC1C4();
    if (v27)
    {
      v28 = v27;
      v29 = *(v2 + 72);
      (*(v2 + 64))(v59);
      sub_269854D94();
      v30 = sub_269854DB4();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v30);
      sub_2696A73F8(v59, v58);
      v31 = swift_allocObject();
      v31[2] = 0;
      v31[3] = 0;
      sub_26968E5D4(v58, (v31 + 4));
      v32 = v55;
      v33 = v56;
      v31[9] = v26;
      v31[10] = v32;
      v31[11] = v33;
      v31[12] = v28;
      v34 = v26;

      v35 = v28;
      sub_26983AA20();

      __swift_destroy_boxed_opaque_existential_0(v59);
    }

    else
    {
      v47 = v6;
      if (qword_2803226F0 != -1)
      {
        OUTLINED_FUNCTION_0_56();
        swift_once();
      }

      v48 = v11;
      OUTLINED_FUNCTION_33_0(v11, qword_28033D940);
      v49 = v57;
      (*(v57 + 16))(v18);

      v50 = sub_2698548B4();
      v51 = sub_269854F24();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = OUTLINED_FUNCTION_27_2();
        v53 = OUTLINED_FUNCTION_9_3();
        v59[0] = v53;
        *v52 = 136315138;
        *(v52 + 4) = sub_26974F520(v47, v4, v59);
        _os_log_impl(&dword_269684000, v50, v51, "SiriSignalsRecorder recordTrigger could not create request UUID from %s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v53);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();
      }

      else
      {
      }

      (*(v49 + 8))(v18, v48);
    }
  }

  else
  {
    if (qword_2803226F0 != -1)
    {
      OUTLINED_FUNCTION_0_56();
      swift_once();
    }

    OUTLINED_FUNCTION_33_0(v11, qword_28033D940);
    v36 = v57;
    (*(v57 + 16))(v1);
    v37 = sub_2698548B4();
    v38 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_4(v38))
    {
      v39 = OUTLINED_FUNCTION_27_2();
      v40 = OUTLINED_FUNCTION_9_3();
      v59[0] = v40;
      *v39 = 136315138;
      v41 = sub_26974F520(0xD000000000000024, v24 | 0x8000000000000000, v59);

      *(v39 + 4) = v41;
      OUTLINED_FUNCTION_16_24();
      _os_log_impl(v42, v43, v44, v45, v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    (*(v36 + 8))(v1, v11);
  }

  OUTLINED_FUNCTION_21_0();
}

id sub_2697FC1C4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_269854A64();

  v2 = [v0 initWithUUIDString_];

  return v2;
}

uint64_t sub_2697FC238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v9 = sub_2698548D4();
  v8[8] = v9;
  v10 = *(v9 - 8);
  v8[9] = v10;
  v11 = *(v10 + 64) + 15;
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2697FC30C, 0, 0);
}

uint64_t sub_2697FC30C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
  v4 = swift_allocObject();
  *(v0 + 96) = v4;
  *(v4 + 16) = xmmword_269857710;
  *(v4 + 32) = v1;
  *(v4 + 40) = v2;
  v5 = *v3;
  v6 = *(MEMORY[0x277CE4838] + 4);
  v10 = (*MEMORY[0x277CE4838] + MEMORY[0x277CE4838]);

  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  *v7 = v0;
  v8 = OUTLINED_FUNCTION_26_17(v7);

  return v10(v8, v4);
}

uint64_t sub_2697FC414()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_8_26();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *(v4 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  *(v9 + 112) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2697FC528()
{
  v1 = *(v0 + 56);
  v2 = *__swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  v3 = *(MEMORY[0x277CE4830] + 4);
  v7 = (*MEMORY[0x277CE4830] + MEMORY[0x277CE4830]);
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_26_17(v4);

  return v7(v5, v1);
}

uint64_t sub_2697FC5E0()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_8_26();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;
  *(v8 + 128) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2697FC6D8()
{
  v25 = v0;
  v1 = v0[14];
  if (qword_2803226F0 != -1)
  {
    OUTLINED_FUNCTION_0_56();
    swift_once();
  }

  v3 = v0[9];
  v2 = v0[10];
  OUTLINED_FUNCTION_33_0(v0[8], qword_28033D940);
  (*(v3 + 16))(v2);
  v4 = v1;
  v5 = sub_2698548B4();
  v6 = sub_269854F24();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[9];
  v9 = v0[10];
  v10 = v0[8];
  if (v7)
  {
    v23 = v0[10];
    v11 = OUTLINED_FUNCTION_27_2();
    v12 = OUTLINED_FUNCTION_9_3();
    v24 = v12;
    *v11 = 136315138;
    v0[2] = v1;
    v13 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v14 = sub_269854AE4();
    v16 = sub_26974F520(v14, v15, &v24);

    *(v11 + 4) = v16;
    OUTLINED_FUNCTION_14_2(&dword_269684000, v17, v18, "SiriSignalsRecorder recordTrigger error emitting trigger message, %s");
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v8 + 8))(v23, v10);
  }

  else
  {

    (*(v8 + 8))(v9, v10);
  }

  v20 = v0[10];
  v19 = v0[11];

  OUTLINED_FUNCTION_7_7();

  return v21();
}

uint64_t sub_2697FC8C0()
{
  if (qword_2803226F0 != -1)
  {
    OUTLINED_FUNCTION_0_56();
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[9];
  OUTLINED_FUNCTION_33_0(v0[8], qword_28033D940);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_12_11();
  v5(v4);
  v6 = sub_2698548B4();
  v7 = sub_269854F14();
  v8 = OUTLINED_FUNCTION_19_4(v7);
  v9 = v0[11];
  v10 = v0[8];
  v11 = v0[9];
  if (v8)
  {
    v12 = OUTLINED_FUNCTION_16_2();
    *v12 = 0;
    _os_log_impl(&dword_269684000, v6, v7, "SiriSignalsRecorder recordTrigger emitted trigger message", v12, 2u);
    OUTLINED_FUNCTION_10();
  }

  v13 = *(v11 + 8);
  v14 = OUTLINED_FUNCTION_22_3();
  v15(v14);
  v17 = v0[10];
  v16 = v0[11];

  OUTLINED_FUNCTION_7_7();

  return v18();
}

uint64_t sub_2697FC9F4()
{
  v25 = v0;
  v1 = v0[16];
  if (qword_2803226F0 != -1)
  {
    OUTLINED_FUNCTION_0_56();
    swift_once();
  }

  v3 = v0[9];
  v2 = v0[10];
  OUTLINED_FUNCTION_33_0(v0[8], qword_28033D940);
  (*(v3 + 16))(v2);
  v4 = v1;
  v5 = sub_2698548B4();
  v6 = sub_269854F24();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[9];
  v9 = v0[10];
  v10 = v0[8];
  if (v7)
  {
    v23 = v0[10];
    v11 = OUTLINED_FUNCTION_27_2();
    v12 = OUTLINED_FUNCTION_9_3();
    v24 = v12;
    *v11 = 136315138;
    v0[2] = v1;
    v13 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v14 = sub_269854AE4();
    v16 = sub_26974F520(v14, v15, &v24);

    *(v11 + 4) = v16;
    OUTLINED_FUNCTION_14_2(&dword_269684000, v17, v18, "SiriSignalsRecorder recordTrigger error emitting trigger message, %s");
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v8 + 8))(v23, v10);
  }

  else
  {

    (*(v8 + 8))(v9, v10);
  }

  v20 = v0[10];
  v19 = v0[11];

  OUTLINED_FUNCTION_7_7();

  return v21();
}

void *sub_2697FCBDC()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  v2 = v0[9];

  v3 = v0[11];

  return v0;
}

uint64_t sub_2697FCC14()
{
  sub_2697FCBDC();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_2697FCC6C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[12];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_2696DA938;
  v9 = OUTLINED_FUNCTION_28_15();

  return sub_2697FC238(v9, v10, v11, v12, v4, v5, v6, v7);
}

uint64_t sub_2697FCD38@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_2697FCDBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignalRecordingContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2697FCE20()
{
  v2 = *(type metadata accessor for SignalRecordingContext() - 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v2 + 64) + ((*(v2 + 80) + 72) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2696DAF80;
  v7 = OUTLINED_FUNCTION_28_15();

  return sub_2697FA0AC(v7, v8, v9, v10, v11, v5);
}

uint64_t sub_2697FCF54(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

void *sub_2697FCF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v97 = a5;
  v98 = a6;
  v101 = a3;
  v102 = a4;
  v100 = a1;
  v106 = a14;
  v105 = a13;
  v104 = a12;
  v103 = a11;
  v99 = a9;
  v17 = type metadata accessor for TrialSignalCollectConfigProvider();
  v166[4] = &off_287A44AE0;
  v166[3] = v17;
  v166[0] = a2;
  v164 = &type metadata for LSApplicationRecordProvider;
  v165 = &xmmword_287A41430;
  v161 = &type metadata for PlayOnThirdPartySignalsCreator;
  v162 = &off_287A45FB8;
  v159 = &off_287A413C0;
  v158 = &type metadata for AppIntentsMetadataProvider;
  v157[0] = a7;
  v155 = &type metadata for FeatureFlagServiceImpl;
  v156 = &off_287A41BD8;
  v18 = type metadata accessor for GlobalsImpl();
  v153 = &off_287A41CD0;
  v152 = v18;
  v93 = v18;
  v151[0] = a8;
  v150 = &off_287A44C90;
  v149 = sub_26969329C(0, &qword_280325728, 0x277D552C8);
  *&v148 = a10;
  type metadata accessor for SiriSignalsRecorder();
  v19 = swift_allocObject();
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v166, v17);
  v21 = *(v17 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v95 = *(v21 + 16);
  v96 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  v95(&v92 - v96);
  __swift_mutable_project_boxed_opaque_existential_1(v163, v164);
  __swift_mutable_project_boxed_opaque_existential_1(v160, v161);
  v23 = v158;
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v157, v158);
  v25 = *(v23[-1].Description + 8);
  MEMORY[0x28223BE20](v24);
  v27 = (&v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  __swift_mutable_project_boxed_opaque_existential_1(v154, v155);
  v29 = v152;
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v151, v152);
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = (&v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33);
  v35 = *(&v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = *v27;
  v37 = *v33;
  v147[4] = &off_287A44AE0;
  v147[3] = v17;
  v147[0] = v35;
  v146[3] = &type metadata for LSApplicationRecordProvider;
  v146[4] = &xmmword_287A41430;
  v145[3] = &type metadata for PlayOnThirdPartySignalsCreator;
  v145[4] = &off_287A45FB8;
  v144[4] = &off_287A413C0;
  v144[3] = &type metadata for AppIntentsMetadataProvider;
  v144[0] = v36;
  v143[3] = &type metadata for FeatureFlagServiceImpl;
  v143[4] = &off_287A41BD8;
  v142[4] = &off_287A41CD0;
  v142[3] = v18;
  v142[0] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325730, &qword_269867118);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_269858BC0;
  *(v38 + 32) = 1;
  sub_2696A73F8(v147, v140);
  sub_2696A73F8(v146, v139);
  sub_2696A73F8(v145, v138);
  sub_2696A73F8(v144, v136);
  sub_2696A73F8(v143, v135);
  sub_2696A73F8(v142, v133);
  v39 = v141;
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v140, v141);
  v41 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v43 = (&v92 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v44 + 16))(v43);
  __swift_mutable_project_boxed_opaque_existential_1(v139, v139[3]);
  __swift_mutable_project_boxed_opaque_existential_1(v138, v138[3]);
  v45 = v137;
  v46 = __swift_mutable_project_boxed_opaque_existential_1(v136, v137);
  v47 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v49 = (&v92 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v50 + 16))(v49);
  __swift_mutable_project_boxed_opaque_existential_1(v135, v135[3]);
  v51 = v134;
  v52 = __swift_mutable_project_boxed_opaque_existential_1(v133, v134);
  v53 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v55 = (&v92 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v56 + 16))(v55);
  v57 = *v43;
  v58 = *v49;
  v59 = *v55;
  v132[4] = &off_287A44AE0;
  v132[3] = v17;
  v132[0] = v57;
  v130 = &type metadata for LSApplicationRecordProvider;
  v131 = &xmmword_287A41430;
  v127 = &type metadata for PlayOnThirdPartySignalsCreator;
  v128 = &off_287A45FB8;
  v125 = &off_287A413C0;
  v124 = &type metadata for AppIntentsMetadataProvider;
  v123[0] = v58;
  v121 = &type metadata for FeatureFlagServiceImpl;
  v122 = &off_287A41BD8;
  v60 = v93;
  v118 = v93;
  v119 = &off_287A41CD0;
  v117[0] = v59;
  v94 = type metadata accessor for PlayOnThirdPartyAppSignalRecordingHandler();
  v61 = swift_allocObject();
  v62 = __swift_mutable_project_boxed_opaque_existential_1(v132, v17);
  MEMORY[0x28223BE20](v62);
  v63 = (&v92 - v96);
  v95(&v92 - v96);
  __swift_mutable_project_boxed_opaque_existential_1(v129, v130);
  __swift_mutable_project_boxed_opaque_existential_1(v126, v127);
  v64 = v124;
  v65 = __swift_mutable_project_boxed_opaque_existential_1(v123, v124);
  v66 = *(v64[-1].Description + 8);
  MEMORY[0x28223BE20](v65);
  v68 = (&v92 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v69 + 16))(v68);
  __swift_mutable_project_boxed_opaque_existential_1(v120, v121);
  v70 = v118;
  v71 = __swift_mutable_project_boxed_opaque_existential_1(v117, v118);
  v72 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v74 = (&v92 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v75 + 16))(v74);
  v76 = *v63;
  v77 = *v68;
  v78 = *v74;
  v115 = v17;
  v116 = &off_287A44AE0;
  v114[0] = v76;
  v113[3] = &type metadata for LSApplicationRecordProvider;
  v113[4] = &xmmword_287A41430;
  v112[3] = &type metadata for PlayOnThirdPartySignalsCreator;
  v112[4] = &off_287A45FB8;
  v111[4] = &off_287A413C0;
  v111[3] = &type metadata for AppIntentsMetadataProvider;
  v111[0] = v77;
  v110[3] = &type metadata for FeatureFlagServiceImpl;
  v110[4] = &off_287A41BD8;
  v108 = v60;
  v109 = &off_287A41CD0;
  *&v107 = v78;
  *(v61 + 16) = 1;
  sub_2696A73F8(v114, v61 + 24);
  v79 = v98;
  *(v61 + 64) = v97;
  *(v61 + 72) = v79;
  sub_2696A73F8(v113, v61 + 80);
  sub_2696A73F8(v112, v61 + 120);
  sub_2696A73F8(v111, v61 + 160);
  sub_2696A73F8(v110, v61 + 200);
  sub_2696A73F8(&v107, v61 + 240);
  v80 = *__swift_project_boxed_opaque_existential_1(v114, v115);

  sub_2697EAC90(v167);
  __swift_destroy_boxed_opaque_existential_0(v110);
  __swift_destroy_boxed_opaque_existential_0(v111);
  __swift_destroy_boxed_opaque_existential_0(v112);
  __swift_destroy_boxed_opaque_existential_0(v113);
  sub_26976030C(v167);
  v81 = v168;
  KeyPath = swift_getKeyPath();
  strcpy((v61 + 280), "Ground truth");
  *(v61 + 293) = 0;
  *(v61 + 294) = -5120;
  *(v61 + 296) = sub_2697EB138;
  *(v61 + 304) = 0;
  *(v61 + 312) = v81;
  *(v61 + 320) = v99;
  *(v61 + 328) = &off_287A41E38;
  *(v61 + 336) = KeyPath;
  *(v61 + 344) = sub_26968E738;
  *(v61 + 352) = 0;
  sub_26968E5D4(&v107, v61 + 360);
  __swift_destroy_boxed_opaque_existential_0(v114);
  __swift_destroy_boxed_opaque_existential_0(v117);
  __swift_destroy_boxed_opaque_existential_0(v120);
  __swift_destroy_boxed_opaque_existential_0(v123);
  __swift_destroy_boxed_opaque_existential_0(v126);
  __swift_destroy_boxed_opaque_existential_0(v129);
  __swift_destroy_boxed_opaque_existential_0(v132);
  __swift_destroy_boxed_opaque_existential_0(v133);
  __swift_destroy_boxed_opaque_existential_0(v135);
  __swift_destroy_boxed_opaque_existential_0(v136);
  __swift_destroy_boxed_opaque_existential_0(v138);
  __swift_destroy_boxed_opaque_existential_0(v139);
  __swift_destroy_boxed_opaque_existential_0(v140);
  *(v38 + 64) = v94;
  *(v38 + 72) = &off_287A44C50;
  *(v38 + 40) = v61;
  *(v38 + 80) = 2;
  v83 = type metadata accessor for ABComparisonPlayOnThirdPartyAppHandler();
  v84 = swift_allocObject();
  v84[6] = type metadata accessor for RoutingAppPredictor();
  v84[7] = &off_287A445F8;
  v85 = v100;
  v86 = v101;
  v84[2] = 2;
  v84[3] = v85;
  v87 = v102;
  v84[8] = v86;
  v84[9] = v87;
  v84[10] = sub_2697EB138;
  v84[11] = 0;
  *(v38 + 112) = v83;
  *(v38 + 120) = &off_287A44AF0;
  *(v38 + 88) = v84;
  *(v38 + 128) = 3;
  *(v38 + 160) = &type metadata for SmartAppSelectionDisambiguationHandler;
  *(v38 + 168) = &off_287A44D40;
  *(v38 + 136) = 1;
  *(v38 + 176) = 4;
  *(v38 + 208) = &type metadata for ABComparisonSmartAppSelectionDisambiguationHandler;
  *(v38 + 216) = &off_287A44B40;
  *(v38 + 184) = 2;
  *(v38 + 224) = 5;
  *(v38 + 256) = &type metadata for ABComparisonSmartAppSelectionSuccessHandler;
  *(v38 + 264) = &off_287A44B90;
  *(v38 + 232) = 1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325738, &qword_269867148);
  sub_2697FDC04();
  v88 = sub_269854A04();

  __swift_destroy_boxed_opaque_existential_0(v142);
  __swift_destroy_boxed_opaque_existential_0(v143);
  __swift_destroy_boxed_opaque_existential_0(v144);
  __swift_destroy_boxed_opaque_existential_0(v145);
  __swift_destroy_boxed_opaque_existential_0(v146);
  __swift_destroy_boxed_opaque_existential_0(v147);
  v19[2] = v88;
  sub_26968E5D4(&v148, (v19 + 3));
  v89 = v104;
  v19[8] = v103;
  v19[9] = v89;
  v90 = v106;
  v19[10] = v105;
  v19[11] = v90;
  __swift_destroy_boxed_opaque_existential_0(v151);
  __swift_destroy_boxed_opaque_existential_0(v154);
  __swift_destroy_boxed_opaque_existential_0(v157);
  __swift_destroy_boxed_opaque_existential_0(v160);
  __swift_destroy_boxed_opaque_existential_0(v163);
  __swift_destroy_boxed_opaque_existential_0(v166);
  return v19;
}

unint64_t sub_2697FDC04()
{
  result = qword_280325740;
  if (!qword_280325740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325740);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_34()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[7];
  v6 = *(v0[14] + 8);
  return v0[15];
}

uint64_t OUTLINED_FUNCTION_31_14()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t sub_2697FDD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1;
    v39 = MEMORY[0x277D84F90];
    sub_269814EEC(0, v4, 0);
    v6 = v39;
    result = sub_269811248(v5);
    v10 = result;
    v11 = 0;
    v38 = v5 + 56;
    v30 = v5 + 64;
    v31 = v4;
    v32 = v5;
    v33 = a3;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v10 < 1 << *(v5 + 32))
      {
        v12 = v10 >> 6;
        if ((*(v38 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
        {
          goto LABEL_32;
        }

        if (*(v5 + 36) != v8)
        {
          goto LABEL_33;
        }

        v13 = (*(v5 + 48) + 16 * v10);
        v14 = *v13;
        v15 = v13[1];
        v16 = *v13 == a2 && v15 == a3;
        v35 = v11;
        v36 = v8;
        v37 = v9;
        if (v16)
        {
          v17 = 1;
        }

        else
        {
          v17 = sub_269855584() & 1;
        }

        v19 = *(v39 + 16);
        v18 = *(v39 + 24);

        if (v19 >= v18 >> 1)
        {
          result = sub_269814EEC(v18 > 1, v19 + 1, 1);
        }

        *(v39 + 16) = v19 + 1;
        v20 = (v39 + 24 * v19);
        v20[4] = v14;
        v20[5] = v15;
        v20[6] = v17;
        if (v37)
        {
          goto LABEL_37;
        }

        v5 = v32;
        a3 = v33;
        v21 = 1 << *(v32 + 32);
        if (v10 >= v21)
        {
          goto LABEL_34;
        }

        v22 = *(v38 + 8 * v12);
        if ((v22 & (1 << v10)) == 0)
        {
          goto LABEL_35;
        }

        if (*(v32 + 36) != v36)
        {
          goto LABEL_36;
        }

        v23 = v22 & (-2 << (v10 & 0x3F));
        if (v23)
        {
          v21 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
          v24 = v31;
        }

        else
        {
          v25 = v12 << 6;
          v26 = v12 + 1;
          v24 = v31;
          v27 = (v30 + 8 * v12);
          while (v26 < (v21 + 63) >> 6)
          {
            v29 = *v27++;
            v28 = v29;
            v25 += 64;
            ++v26;
            if (v29)
            {
              result = sub_26968E5C8(v10, v36, 0);
              v21 = __clz(__rbit64(v28)) + v25;
              goto LABEL_25;
            }
          }

          result = sub_26968E5C8(v10, v36, 0);
        }

LABEL_25:
        v11 = v35 + 1;
        if (v35 + 1 == v24)
        {

          return v6;
        }

        v9 = 0;
        v8 = *(v32 + 36);
        v10 = v21;
        if (v21 < 0)
        {
          break;
        }
      }
    }

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
LABEL_37:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2697FDFE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v34 = MEMORY[0x277D84F90];
    sub_269814EEC(0, v1, 0);
    v3 = v34;
    result = sub_269811248(v2);
    v6 = result;
    v8 = v7;
    v9 = 0;
    v33 = v2 + 56;
    v28 = v2 + 64;
    v29 = v1;
    v30 = v2;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v6 < 1 << *(v2 + 32))
      {
        v10 = v6 >> 6;
        if ((*(v33 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          goto LABEL_29;
        }

        if (*(v2 + 36) != v5)
        {
          goto LABEL_30;
        }

        v31 = v9;
        v32 = v5;
        v11 = (*(v2 + 48) + 16 * v6);
        v13 = *v11;
        v12 = v11[1];
        result = sub_26970C48C();
        if (v14)
        {
          v15 = -1;
        }

        else
        {
          v15 = result + 1;
          if (__OFADD__(result, 1))
          {
            goto LABEL_34;
          }
        }

        v17 = *(v34 + 16);
        v16 = *(v34 + 24);

        if (v17 >= v16 >> 1)
        {
          result = sub_269814EEC(v16 > 1, v17 + 1, 1);
        }

        *(v34 + 16) = v17 + 1;
        v18 = (v34 + 24 * v17);
        v18[4] = v13;
        v18[5] = v12;
        v18[6] = v15;
        if (v8)
        {
          goto LABEL_35;
        }

        v2 = v30;
        v19 = 1 << *(v30 + 32);
        if (v6 >= v19)
        {
          goto LABEL_31;
        }

        v20 = *(v33 + 8 * v10);
        if ((v20 & (1 << v6)) == 0)
        {
          goto LABEL_32;
        }

        if (*(v30 + 36) != v32)
        {
          goto LABEL_33;
        }

        v21 = v20 & (-2 << (v6 & 0x3F));
        if (v21)
        {
          v19 = __clz(__rbit64(v21)) | v6 & 0x7FFFFFFFFFFFFFC0;
          v22 = v29;
        }

        else
        {
          v23 = v10 << 6;
          v24 = v10 + 1;
          v22 = v29;
          v25 = (v28 + 8 * v10);
          while (v24 < (v19 + 63) >> 6)
          {
            v27 = *v25++;
            v26 = v27;
            v23 += 64;
            ++v24;
            if (v27)
            {
              result = sub_26968E5C8(v6, v32, 0);
              v19 = __clz(__rbit64(v26)) + v23;
              goto LABEL_22;
            }
          }

          result = sub_26968E5C8(v6, v32, 0);
        }

LABEL_22:
        v9 = v31 + 1;
        if (v31 + 1 == v22)
        {

          return v3;
        }

        v8 = 0;
        v5 = *(v30 + 36);
        v6 = v19;
        if (v19 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
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
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2697FE280(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void, uint64_t, uint64_t *))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = a2;
  a4(a1, a3, 0, isUniquelyReferenced_nonNull_native, &v12);
  v10 = v12;
  if (v4)
  {
  }

  return v10;
}

uint64_t sub_2697FE308(uint64_t a1)
{
  v2 = type metadata accessor for SignalRecordingContext();
  v3 = OUTLINED_FUNCTION_4_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppDisambiguationContext(0);
  v9 = OUTLINED_FUNCTION_4_3(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_6_47();
  sub_269800C18(a1, v7, v14);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v15 = *(v7 + 1);

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C10, &unk_269866CD0);
    sub_26971522C(&v7[*(v16 + 48)], v13);
    v17 = *&v13[*(v8 + 36)];
    OUTLINED_FUNCTION_0_57();
    sub_269800C78(v13, v18);
    return v17 & 1;
  }

  else
  {
    sub_269800C78(v7, type metadata accessor for SignalRecordingContext);
    return 0;
  }
}

uint64_t sub_2697FE450(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B28, &qword_26985C360);
  v2[5] = v3;
  OUTLINED_FUNCTION_8_9(v3);
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v6 = sub_2698548D4();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803254E8, &unk_269866100);
  OUTLINED_FUNCTION_8_9(v9);
  v11 = *(v10 + 64);
  v2[15] = OUTLINED_FUNCTION_4_7();
  v12 = type metadata accessor for ModelInput(0);
  OUTLINED_FUNCTION_8_9(v12);
  v14 = *(v13 + 64);
  v2[16] = OUTLINED_FUNCTION_4_7();
  v15 = sub_269853984();
  v2[17] = v15;
  v16 = *(v15 - 8);
  v2[18] = v16;
  v17 = *(v16 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v18 = type metadata accessor for SignalRecordingContext();
  v2[23] = v18;
  OUTLINED_FUNCTION_8_9(v18);
  v20 = *(v19 + 64);
  v2[24] = OUTLINED_FUNCTION_4_7();
  v21 = type metadata accessor for AppDisambiguationContext(0);
  v2[25] = v21;
  OUTLINED_FUNCTION_8_9(v21);
  v23 = *(v22 + 64);
  v2[26] = OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](sub_2697FE698, 0, 0);
}

uint64_t sub_2697FE698()
{
  v1 = v0[4];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v64 = v0[4];
    }

    if (!sub_269855324())
    {
LABEL_15:
      OUTLINED_FUNCTION_7_44();

      OUTLINED_FUNCTION_7_42();
      OUTLINED_FUNCTION_112();

      __asm { BRAA            X3, X16 }
    }
  }

  else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

  v2 = v0[4];
  sub_269750050(0);
  v3 = v0[4];
  if ((v1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x26D646120](0, v3);
  }

  else
  {
    v4 = *(v3 + 32);
  }

  v5 = v4;
  v0[27] = v4;
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[3];
  OUTLINED_FUNCTION_6_47();
  sub_269800C18(v9, v6, v10);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v34 = v0[24];

    v39 = type metadata accessor for SignalRecordingContext;
LABEL_14:
    sub_269800C78(v34, v39);
    goto LABEL_15;
  }

  v12 = v0 + 16;
  v11 = v0[16];
  v14 = v0[25];
  v13 = v0[26];
  v15 = v0[24];
  v17 = *v15;
  v16 = *(v15 + 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323C10, &unk_269866CD0);
  sub_26971522C(v15 + *(v18 + 48), v13);
  v19 = v13 + *(v14 + 28);
  v20 = type metadata accessor for ModelParams(0);
  sub_269800C18(v19 + *(v20 + 20), v11, type metadata accessor for ModelInput);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F40, &unk_269858D40);
  if (__swift_getEnumTagSinglePayload(v11, 1, v21) == 1)
  {
    v65 = v17;
    v12 = v0 + 15;
    v22 = v0[15];
    v23 = v0[25];
    v24 = v0[26];
    v25 = v0[17];
    sub_269800C78(v0[16], type metadata accessor for ModelInput);
    sub_26969B138(v24 + *(v23 + 32), v22, &qword_2803254E8, &unk_269866100);
    if (__swift_getEnumTagSinglePayload(v22, 1, v25) == 1)
    {
      v26 = *v12;

      sub_26969B0C0(v26, &qword_2803254E8, &unk_269866100);
      if (qword_2803226F0 != -1)
      {
        OUTLINED_FUNCTION_2_35();
      }

      v27 = v0[14];
      v28 = v0[11];
      __swift_project_value_buffer(v0[10], qword_28033D940);
      v29 = OUTLINED_FUNCTION_11_4();
      v30(v29);
      v31 = sub_2698548B4();
      v32 = sub_269854F24();
      v33 = os_log_type_enabled(v31, v32);
      v34 = v0[26];
      v35 = v0[14];
      v36 = v0[10];
      v37 = v0[11];
      if (v33)
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_269684000, v31, v32, "SmartAppSelectionDisambiguationHandler gatherSignals error, additionalSignals is nil", v38, 2u);
        OUTLINED_FUNCTION_10();
      }

      (*(v37 + 8))(v35, v36);
      v39 = type metadata accessor for AppDisambiguationContext;
      goto LABEL_14;
    }

    v17 = v65;
  }

  v42 = *v12;
  v43 = v0[26];
  v44 = v0[22];
  v45 = v0[17];
  v46 = *(v0[18] + 32);
  v0[28] = v46;
  v46(v44, v42, v45);
  v0[29] = sub_2697FF838(v17, v16, v43);

  v47 = *(v19 + *(v20 + 24));
  v48 = *(v47 + 16);
  v49 = MEMORY[0x277D84F90];
  if (v48)
  {
    v66 = MEMORY[0x277D84F90];
    sub_269814F0C(0, v48, 0);
    v49 = v66;
    v50 = *(v66 + 16);
    v51 = 16 * v50;
    v52 = (v47 + 40);
    do
    {
      v54 = *(v52 - 1);
      v53 = *v52;
      v55 = *(v66 + 24);

      if (v50 >= v55 >> 1)
      {
        sub_269814F0C(v55 > 1, v50 + 1, 1);
      }

      *(v66 + 16) = v50 + 1;
      v56 = v66 + v51;
      *(v56 + 32) = v54;
      *(v56 + 40) = v53;
      v51 += 16;
      v52 += 3;
      ++v50;
      --v48;
    }

    while (v48);
  }

  v0[30] = v49;
  v57 = swift_task_alloc();
  v0[31] = v57;
  *v57 = v0;
  v57[1] = sub_2697FEBA4;
  v58 = v0[20];
  OUTLINED_FUNCTION_112();

  return sub_2697B7D94(v59, v60, v61);
}

uint64_t sub_2697FEBA4()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v9 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = *(v2 + 232);
    v5 = *(v2 + 240);

    v6 = sub_2697FF560;
  }

  else
  {
    v7 = *(v2 + 232);

    v6 = sub_2697FECD0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2697FECD0()
{
  v119 = v0;
  v1 = *(v0 + 256);
  v111 = *(v0 + 240);
  v115 = *(v0 + 216);
  v2 = *(v0 + 176);
  v3 = *(v0 + 152);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  (*(v0 + 224))(*(v0 + 168), *(v0 + 160), v5);
  v6 = sub_269853964();
  v7 = sub_269853964();
  sub_2697FE280(v7, v6, sub_269800B44, sub_26980074C);
  v8 = sub_269853974();
  v9 = sub_269853974();
  sub_2697FE280(v9, v8, sub_269800BB4, sub_2698004A4);
  sub_269853944();
  sub_269853944();
  sub_269853954();
  v10 = sub_269853964();
  v89 = *(v4 + 8);
  v89(v3, v5);
  v11 = sub_2697F3AF0(v10, v111);
  v13 = v12;

  v88 = v11;
  [v115 setVideoSmartAppSelectionDisambiguation_];
  v14 = *(v13 + 16);
  v99 = v0;
  if (v14)
  {
    v97 = *(v0 + 56);
    v98 = *(v0 + 64);
    v95 = *(v0 + 40);
    v96 = *(v0 + 48);
    v118[0] = MEMORY[0x277D84F90];
    sub_269814F0C(0, v14, 0);
    v116 = v118[0];
    v17 = sub_2697F1D9C(v13);
    v18 = 0;
    v19 = v13 + 64;
    v91 = v15;
    v92 = v14;
    v90 = v13 + 72;
    v93 = v13 + 64;
    v94 = v13;
    while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(v13 + 32))
    {
      if ((*(v19 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
      {
        goto LABEL_32;
      }

      if (*(v13 + 36) != v15)
      {
        goto LABEL_33;
      }

      v103 = v17 >> 6;
      v101 = v18;
      v102 = v15;
      v100 = v16;
      v20 = *(v95 + 48);
      v21 = *(v0 + 64);
      v22 = *(v0 + 72);
      v23 = *(v0 + 56);
      v24 = *(v13 + 56);
      v25 = (*(v13 + 48) + 16 * v17);
      v26 = v25[1];
      v106 = *v25;
      v112 = *(v0 + 48);
      v27 = sub_269853904();
      OUTLINED_FUNCTION_8(v27);
      v29 = v28;
      (*(v28 + 16))(v22 + v20, v24 + *(v30 + 72) * v17, v27);
      *v21 = v106;
      *(v98 + 8) = v26;
      v31 = *(v29 + 32);
      v31(&v21[*(v95 + 48)], v22 + v20, v27);
      sub_26969B138(v21, v23, &qword_280323B28, &qword_26985C360);
      v32 = *(v97 + 8);
      v33 = *(v95 + 48);
      v34 = *v23;
      *v112 = *v23;
      *(v96 + 8) = v32;
      v31(v112 + v33, v23 + v33, v27);

      sub_26969B0C0(v112, &qword_280323B28, &qword_26985C360);
      sub_26969B0C0(v21, &qword_280323B28, &qword_26985C360);
      v118[0] = v116;
      v0 = *(v116 + 16);
      v35 = *(v116 + 24);
      if (v0 >= v35 >> 1)
      {
        sub_269814F0C(v35 > 1, v0 + 1, 1);
        v116 = v118[0];
      }

      *(v116 + 16) = v0 + 1;
      v36 = v116 + 16 * v0;
      *(v36 + 32) = v34;
      *(v36 + 40) = v32;
      v13 = v94;
      v37 = 1 << *(v94 + 32);
      if (v17 >= v37)
      {
        goto LABEL_34;
      }

      v19 = v93;
      v38 = *(v93 + 8 * v103);
      if ((v38 & (1 << v17)) == 0)
      {
        goto LABEL_35;
      }

      if (*(v94 + 36) != v102)
      {
        goto LABEL_36;
      }

      v39 = v38 & (-2 << (v17 & 0x3F));
      if (v39)
      {
        v37 = __clz(__rbit64(v39)) | v17 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v40 = v103 << 6;
        v41 = (v90 + 8 * v103);
        v42 = v103 + 1;
        while (v42 < (v37 + 63) >> 6)
        {
          v44 = *v41++;
          v43 = v44;
          v40 += 64;
          ++v42;
          if (v44)
          {
            sub_26968E5C8(v17, v102, v100 & 1);
            v37 = __clz(__rbit64(v43)) + v40;
            goto LABEL_19;
          }
        }

        sub_26968E5C8(v17, v102, v100 & 1);
      }

LABEL_19:
      v16 = 0;
      v18 = v101 + 1;
      v17 = v37;
      v15 = v91;
      v0 = v99;
      if (v101 + 1 == v92)
      {

        goto LABEL_22;
      }
    }

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
LABEL_37:
    OUTLINED_FUNCTION_2_35();
    goto LABEL_24;
  }

  v116 = MEMORY[0x277D84F90];
LABEL_22:
  if (!*(v116 + 16))
  {
    v70 = *(v0 + 208);
    v69 = *(v0 + 216);
    v71 = v99[22];
    v72 = v99[21];
    v73 = v99[17];

    v89(v72, v73);
    v74 = v71;
    v50 = v99;
    v89(v74, v73);
    OUTLINED_FUNCTION_0_57();
    v68 = v70;
    goto LABEL_28;
  }

  if (qword_2803226F0 != -1)
  {
    goto LABEL_37;
  }

LABEL_24:
  v45 = *(v0 + 104);
  v46 = *(v0 + 88);
  v47 = v99[10];
  v48 = __swift_project_value_buffer(v47, qword_28033D940);
  v49 = v47;
  v50 = v99;
  (*(v46 + 16))(v45, v48, v49);

  v51 = sub_2698548B4();
  v52 = sub_269854F24();

  v53 = os_log_type_enabled(v51, v52);
  v54 = v99[26];
  v55 = v99[27];
  v56 = v99[21];
  v113 = v99[22];
  v57 = v99[17];
  v58 = v99[13];
  v60 = v99[10];
  v59 = v99[11];
  if (v53)
  {
    v109 = v99[21];
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v118[0] = v62;
    *v61 = 136315138;
    v104 = v58;
    v107 = v54;
    v63 = MEMORY[0x26D645BC0](v116, MEMORY[0x277D837D0]);
    v65 = v64;

    v66 = sub_26974F520(v63, v65, v118);

    *(v61 + 4) = v66;
    _os_log_impl(&dword_269684000, v51, v52, "SmartAppSelectionDisambiguationHandler populate has unhandled signals %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    v50 = v99;
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v59 + 8))(v104, v60);
    v89(v109, v57);
    v89(v113, v57);
    OUTLINED_FUNCTION_0_57();
    v68 = v107;
  }

  else
  {

    (*(v59 + 8))(v58, v60);
    v89(v56, v57);
    v89(v113, v57);
    OUTLINED_FUNCTION_0_57();
    v68 = v54;
  }

LABEL_28:
  sub_269800C78(v68, v67);
  v75 = v50[26];
  v76 = v50[24];
  v77 = v50[21];
  v78 = v50[22];
  v80 = v50[19];
  v79 = v50[20];
  v82 = v50[15];
  v81 = v50[16];
  v84 = v50[13];
  v83 = v50[14];
  v105 = v50[12];
  v108 = v50[9];
  v110 = v50[8];
  v114 = v50[7];
  v117 = v50[6];

  v85 = OUTLINED_FUNCTION_7_42();

  return v86(v85, 1);
}

void sub_2697FF560()
{
  if (qword_2803226F0 != -1)
  {
    OUTLINED_FUNCTION_2_35();
  }

  v1 = *(v0 + 256);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  __swift_project_value_buffer(*(v0 + 80), qword_28033D940);
  v4 = OUTLINED_FUNCTION_11_4();
  v5(v4);
  v6 = v1;
  v7 = sub_2698548B4();
  v8 = sub_269854F24();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 256);
  v11 = *(v0 + 208);
  v12 = *(v0 + 176);
  v13 = *(v0 + 136);
  v14 = *(v0 + 144);
  v15 = *(v0 + 88);
  v16 = *(v0 + 96);
  v31 = *(v0 + 80);
  if (v9)
  {
    v28 = *(v0 + 216);
    v29 = *(v0 + 96);
    v17 = swift_slowAlloc();
    v30 = v11;
    v18 = swift_slowAlloc();
    v32 = v18;
    *v17 = 136315138;
    *(v0 + 16) = v10;
    v19 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v20 = sub_269854AE4();
    v27 = v13;
    v22 = sub_26974F520(v20, v21, &v32);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_269684000, v7, v8, "SmartAppSelectionDisambiguationHandler error gathering signals, %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v15 + 8))(v29, v31);
    (*(v14 + 8))(v12, v27);
    OUTLINED_FUNCTION_0_57();
    v24 = v30;
  }

  else
  {

    (*(v15 + 8))(v16, v31);
    (*(v14 + 8))(v12, v13);
    OUTLINED_FUNCTION_0_57();
    v24 = v11;
  }

  sub_269800C78(v24, v23);
  OUTLINED_FUNCTION_7_44();

  OUTLINED_FUNCTION_7_42();
  OUTLINED_FUNCTION_112();

  __asm { BRAA            X3, X16 }
}

unsigned __int8 *sub_2697FF838(uint64_t (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v115 = a1;
  v122 = type metadata accessor for StaticSignal();
  v5 = OUTLINED_FUNCTION_8(v122);
  v116 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v14);
  v125 = &v111[-v15];
  v16 = a3 + *(type metadata accessor for AppDisambiguationContext(0) + 28);
  v117 = type metadata accessor for ModelParams(0);
  v17 = *(v117 + 24);
  v118 = v16;
  v18 = *(v16 + v17);
  v19 = *(v18 + 16);
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    *&v128 = MEMORY[0x277D84F90];
    sub_269814F0C(0, v19, 0);
    v20 = v128;
    v21 = (v18 + 40);
    do
    {
      v23 = *(v21 - 1);
      v22 = *v21;
      *&v128 = v20;
      v25 = *(v20 + 16);
      v24 = *(v20 + 24);

      if (v25 >= v24 >> 1)
      {
        sub_269814F0C(v24 > 1, v25 + 1, 1);
        v20 = v128;
      }

      *(v20 + 16) = v25 + 1;
      v26 = v20 + 16 * v25;
      *(v26 + 32) = v23;
      *(v26 + 40) = v22;
      v21 += 3;
      --v19;
    }

    while (v19);
  }

  v124 = a3;
  v27 = *a3;
  v28 = *(*a3 + 16);
  if (v28)
  {
    *&v128 = MEMORY[0x277D84F90];
    sub_269814F0C(0, v28, 0);
    v29 = v128;
    v30 = (v27 + 40);
    do
    {
      v31 = *(v30 - 1);
      v32 = *v30;
      *&v128 = v29;
      v34 = *(v29 + 16);
      v33 = *(v29 + 24);

      if (v34 >= v33 >> 1)
      {
        sub_269814F0C(v33 > 1, v34 + 1, 1);
        v29 = v128;
      }

      *(v29 + 16) = v34 + 1;
      v35 = v29 + 16 * v34;
      *(v35 + 32) = v31;
      *(v35 + 40) = v32;
      v30 += 3;
      --v28;
    }

    while (v28);
  }

  sub_2697F1EE0(v20);
  v37 = v36;

  sub_2697F1EE0(v38);
  v114 = v39;

  sub_2697FDD30(v37, v115, a2);
  v40 = sub_26980C0F4();
  v41 = v125;
  *v125 = 0xD000000000000010;
  *(v41 + 1) = 0x800000026987ADF0;
  v42 = v122;
  v43 = *(v122 + 20);
  *&v41[v43] = v40;
  v44 = v41;
  v45 = *MEMORY[0x277D60188];
  v46 = sub_269853904();
  OUTLINED_FUNCTION_4_3(v46);
  v48 = *(v47 + 104);
  v49 = v47 + 104;
  LODWORD(v115) = v45;
  v50 = v48(&v44[v43], v45, v46);
  MEMORY[0x28223BE20](v50);
  *&v111[-16] = v124;
  sub_269811A10(sub_269800BF8, &v111[-32], v37);
  v51 = sub_26980C0F4();
  v52 = v126;
  *v126 = 0xD000000000000012;
  *(v52 + 1) = 0x800000026987AE10;
  v53 = *(v42 + 20);
  *&v52[v53] = v51;
  v48(&v52[v53], v45, v46);

  sub_2697FDFE0(v37);

  v54 = sub_26980C0F4();
  v55 = v123;
  *v123 = 0xD000000000000018;
  *(v55 + 1) = 0x800000026987AE30;
  v56 = *(v42 + 20);
  *&v55[v56] = v54;
  v48(&v55[v56], v115, v46);
  v57 = *(v114 + 16);

  v58 = v119;
  *v119 = 0xD000000000000015;
  *(v58 + 8) = 0x800000026987ADB0;
  v59 = *(v42 + 20);
  *(v58 + v59) = v57;
  v60 = *MEMORY[0x277D60170];
  v48((v58 + v59), v60, v46);
  v61 = v124;
  v62 = 1;
  if (*(v124 + 8))
  {
    v62 = 2;
  }

  v63 = v120;
  *v120 = 0xD000000000000017;
  *(v63 + 8) = 0x800000026987AD70;
  v64 = *(v42 + 20);
  *(v63 + v64) = v62;
  v48((v63 + v64), v60, v46);
  v65 = *(v61 + 16);
  v66 = v121;
  *v121 = 0xD000000000000015;
  *(v66 + 8) = 0x800000026987AD90;
  v67 = *(v42 + 20);
  *(v66 + v67) = v65;
  v112 = v60;
  v124 = v46;
  v115 = v48;
  v114 = v49;
  v48((v66 + v67), v60, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280325750, qword_269867200);
  v68 = *(v116 + 72);
  v69 = (*(v116 + 80) + 32) & ~*(v116 + 80);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_269858BB0;
  v71 = v70 + v69;
  sub_269800C18(v125, v71, type metadata accessor for StaticSignal);
  sub_269800C18(v126, v71 + v68, type metadata accessor for StaticSignal);
  sub_269800C18(v55, v71 + 2 * v68, type metadata accessor for StaticSignal);
  sub_269800C18(v58, v71 + 3 * v68, type metadata accessor for StaticSignal);
  sub_269800C18(v63, v71 + 4 * v68, type metadata accessor for StaticSignal);
  result = sub_269800C18(v66, v71 + 5 * v68, type metadata accessor for StaticSignal);
  v73 = v117;
  v74 = v118;
  v75 = (v118 + *(v117 + 32));
  v76 = v75[1];
  if (!v76)
  {
    goto LABEL_83;
  }

  v77 = *v75;
  v78 = HIBYTE(v76) & 0xF;
  v79 = v77 & 0xFFFFFFFFFFFFLL;
  if (!((v76 & 0x2000000000000000) != 0 ? HIBYTE(v76) & 0xF : v77 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_83;
  }

  if ((v76 & 0x1000000000000000) != 0)
  {

    sub_2697ECE58(v77, v76, 10);
    v82 = v108;
    v110 = v109;

    if ((v110 & 1) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  if ((v76 & 0x2000000000000000) == 0)
  {
    if ((v77 & 0x1000000000000000) != 0)
    {
      result = ((v76 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_269855264();
    }

    v81 = *result;
    if (v81 == 43)
    {
      if (v79 >= 1)
      {
        if (v79 != 1)
        {
          v82 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_48();
              if (!v84 & v83)
              {
                goto LABEL_81;
              }

              OUTLINED_FUNCTION_1_51();
              if (!v84)
              {
                goto LABEL_81;
              }

              v82 = v91 + v90;
              if (__OFADD__(v91, v90))
              {
                goto LABEL_81;
              }

              OUTLINED_FUNCTION_4_36();
              if (v84)
              {
                goto LABEL_82;
              }
            }
          }

          goto LABEL_72;
        }

        goto LABEL_81;
      }

      goto LABEL_90;
    }

    if (v81 != 45)
    {
      if (v79)
      {
        v82 = 0;
        if (result)
        {
          while (1)
          {
            v94 = *result - 48;
            if (v94 > 9)
            {
              goto LABEL_81;
            }

            v95 = 10 * v82;
            if ((v82 * 10) >> 64 != (10 * v82) >> 63)
            {
              goto LABEL_81;
            }

            v82 = v95 + v94;
            if (__OFADD__(v95, v94))
            {
              goto LABEL_81;
            }

            ++result;
            if (!--v79)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_72;
      }

LABEL_81:
      v82 = 0;
      v87 = 1;
LABEL_82:
      LOBYTE(v127) = v87;
      if ((v87 & 1) == 0)
      {
LABEL_84:
        v98 = v113;
        *v113 = 0x7265566C65646F4DLL;
        *(v98 + 8) = 0xEC0000006E6F6973;
        v99 = v122;
        v100 = *(v122 + 20);
        *(v98 + v100) = v82;
        v115((v98 + v100), v112, v124);
        v101 = (v74 + *(v73 + 28));
        v102 = v101[1];
        v128 = *v101;
        v129 = v102;
        v130 = v101[2];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324270, &unk_26985F2B0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2698580D0;
        sub_269812708((inited + 32));
        *(inited + 96) = v99;
        *(inited + 104) = sub_26974FF94();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
        sub_269800C18(v98, boxed_opaque_existential_1, type metadata accessor for StaticSignal);
        v105 = sub_269812A00();
        v127 = inited;
        sub_26980B8C4(v105);
        v106 = v127;
        v107 = sub_26974D0C0(v70);
        swift_setDeallocating();
        sub_269819E30();
        v127 = v107;
        sub_26980B8C4(v106);
        sub_269800C78(v98, type metadata accessor for StaticSignal);
        sub_269800C78(v66, type metadata accessor for StaticSignal);
        sub_269800C78(v63, type metadata accessor for StaticSignal);
        sub_269800C78(v58, type metadata accessor for StaticSignal);
        sub_269800C78(v123, type metadata accessor for StaticSignal);
        sub_269800C78(v126, type metadata accessor for StaticSignal);
        sub_269800C78(v125, type metadata accessor for StaticSignal);
        return v127;
      }

LABEL_83:
      v82 = -1;
      goto LABEL_84;
    }

    if (v79 >= 1)
    {
      if (v79 != 1)
      {
        v82 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_48();
            if (!v84 & v83)
            {
              goto LABEL_81;
            }

            OUTLINED_FUNCTION_1_51();
            if (!v84)
            {
              goto LABEL_81;
            }

            v82 = v86 - v85;
            if (__OFSUB__(v86, v85))
            {
              goto LABEL_81;
            }

            OUTLINED_FUNCTION_4_36();
            if (v84)
            {
              goto LABEL_82;
            }
          }
        }

LABEL_72:
        v87 = 0;
        goto LABEL_82;
      }

      goto LABEL_81;
    }

    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  *&v128 = v77;
  *(&v128 + 1) = v76 & 0xFFFFFFFFFFFFFFLL;
  if (v77 != 43)
  {
    if (v77 != 45)
    {
      if (v78)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_48();
          if (!v84 & v83)
          {
            break;
          }

          OUTLINED_FUNCTION_1_51();
          if (!v84)
          {
            break;
          }

          v82 = v97 + v96;
          if (__OFADD__(v97, v96))
          {
            break;
          }

          OUTLINED_FUNCTION_4_36();
          if (v84)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

    if (v78)
    {
      if (v78 != 1)
      {
        OUTLINED_FUNCTION_14_29();
        while (1)
        {
          OUTLINED_FUNCTION_1_48();
          if (!v84 & v83)
          {
            break;
          }

          OUTLINED_FUNCTION_1_51();
          if (!v84)
          {
            break;
          }

          v82 = v89 - v88;
          if (__OFSUB__(v89, v88))
          {
            break;
          }

          OUTLINED_FUNCTION_4_36();
          if (v84)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

    goto LABEL_89;
  }

  if (v78)
  {
    if (v78 != 1)
    {
      OUTLINED_FUNCTION_14_29();
      while (1)
      {
        OUTLINED_FUNCTION_1_48();
        if (!v84 & v83)
        {
          break;
        }

        OUTLINED_FUNCTION_1_51();
        if (!v84)
        {
          break;
        }

        v82 = v93 + v92;
        if (__OFADD__(v93, v92))
        {
          break;
        }

        OUTLINED_FUNCTION_4_36();
        if (v84)
        {
          goto LABEL_82;
        }
      }
    }

    goto LABEL_81;
  }

LABEL_91:
  __break(1u);
  return result;
}

uint64_t sub_2698002F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2 + *(type metadata accessor for AppDisambiguationContext(0) + 28);
  v7 = *(v6 + *(type metadata accessor for ModelParams(0) + 24));
  v8 = (v7 + 48);
  v9 = *(v7 + 16) + 1;
  do
  {
    if (!--v9)
    {
      v14 = -1;
      goto LABEL_13;
    }

    result = *(v8 - 2);
    v11 = *v8;
    if (result == v5 && *(v8 - 1) == v4)
    {
      break;
    }

    v8 += 3;
    result = sub_269855584();
  }

  while ((result & 1) == 0);
  v13 = round(v11 * 100.0);
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v13 < 9.22337204e18)
  {
    v14 = v13;
LABEL_13:
    *a3 = v5;
    a3[1] = v4;
    a3[2] = v14;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_269800408(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2697EC780;

  return sub_2697FE450(a1, a2);
}

uint64_t sub_2698004A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v62 = a5;
  sub_269702AA8(v57);
  v7 = v57[1];
  v8 = v59;
  v9 = v60;
  v50 = v61;
  v51 = v57[0];
  v47 = v58;
  v10 = (v58 + 64) >> 6;

  v48 = a3;

  v49 = v7;
  if (v9)
  {
    while (1)
    {
      v52 = a4;
      v11 = v8;
LABEL_8:
      v13 = __clz(__rbit64(v9)) | (v11 << 6);
      v14 = (*(v51 + 48) + 16 * v13);
      v15 = v14[1];
      v16 = *(*(v51 + 56) + 8 * v13);
      v56[0] = *v14;
      v56[1] = v15;
      v56[2] = v16;

      v17 = v16;
      v50(&v53, v56);

      v18 = v53;
      v19 = v54;
      v20 = v55;
      v21 = *v62;
      v29 = sub_26973CEF8(v53, v54);
      v30 = *(v21 + 16);
      v31 = (v22 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        break;
      }

      v33 = v22;
      if (*(v21 + 24) >= v32)
      {
        if ((v52 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322DE8, &unk_2698671E0);
          sub_2698552F4();
        }
      }

      else
      {
        v34 = v62;
        sub_26980E374(v32, v52 & 1, v23, v24, v25, v26, v27, v28, v46, v47, v48, SBYTE4(v48));
        v35 = *v34;
        v36 = sub_26973CEF8(v18, v19);
        if ((v33 & 1) != (v37 & 1))
        {
          goto LABEL_24;
        }

        v29 = v36;
      }

      v9 &= v9 - 1;
      v38 = *v62;
      if (v33)
      {

        v39 = v38[7];
        v40 = *(v39 + 8 * v29);
        *(v39 + 8 * v29) = v20;
      }

      else
      {
        v38[(v29 >> 6) + 8] |= 1 << v29;
        v41 = (v38[6] + 16 * v29);
        *v41 = v18;
        v41[1] = v19;
        *(v38[7] + 8 * v29) = v20;
        v42 = v38[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          goto LABEL_23;
        }

        v38[2] = v44;
      }

      a4 = 1;
      v8 = v11;
      v7 = v49;
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v12 = v8;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        sub_26968E614();
      }

      v9 = *(v7 + 8 * v11);
      ++v12;
      if (v9)
      {
        v52 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_2698555F4();
  __break(1u);
  return result;
}

uint64_t sub_26980074C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v54 = a5;
  v47 = sub_269853904();
  v8 = *(v47 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v47);
  v44 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325748, &unk_2698671F0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = (v43 - v16);
  sub_269702AA8(v52);
  v48 = v52[0];
  v49 = v52[1];
  v50 = v52[2];
  v51 = v53;
  v45 = v8;
  v46 = (v8 + 32);
  v43[4] = v8 + 8;
  v43[5] = v8 + 16;
  v43[3] = v8 + 40;
  v43[1] = a1;

  v43[0] = a3;

  while (1)
  {
    sub_2697020D4(v17);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B38, &qword_26985C370);
    if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
    {
      sub_26968E614();
    }

    v20 = *v17;
    v19 = v17[1];
    v21 = *v46;
    v22 = v13;
    (*v46)(v13, v17 + *(v18 + 48), v47);
    v23 = *v54;
    v25 = sub_26973CEF8(v20, v19);
    v26 = *(v23 + 16);
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v29 = v24;
    if (*(v23 + 24) >= v28)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803256A0, &qword_269866F70);
        sub_2698552F4();
      }
    }

    else
    {
      v30 = v54;
      sub_26980E388(v28, a4 & 1);
      v31 = *v30;
      v32 = sub_26973CEF8(v20, v19);
      if ((v29 & 1) != (v33 & 1))
      {
        goto LABEL_16;
      }

      v25 = v32;
    }

    v34 = *v54;
    if (v29)
    {
      v36 = v44;
      v35 = v45;
      v13 = v22;
      v37 = v47;
      (*(v45 + 16))(v44, v22, v47);
      (*(v35 + 8))(v22, v37);

      (*(v35 + 40))(v34[7] + *(v35 + 72) * v25, v36, v37);
      a4 = 1;
    }

    else
    {
      v34[(v25 >> 6) + 8] |= 1 << v25;
      v38 = (v34[6] + 16 * v25);
      *v38 = v20;
      v38[1] = v19;
      v13 = v22;
      v21((v34[7] + *(v45 + 72) * v25), v22, v47);
      v39 = v34[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_15;
      }

      v34[2] = v41;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_2698555F4();
  __break(1u);
  return result;
}

uint64_t sub_269800B44@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B28, &qword_26985C360) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323B38, &qword_26985C370);
  result = sub_269701E58(a2 + *(v5 + 48), *a1, a1[1], a1 + v4);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_269800BB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_269701E10(&v6, *a1, *(a1 + 8), *(a1 + 16));
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_269800C18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_3(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_269800C78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_7_44()
{
  v2 = v0[26];
  v3 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v7 = v0[19];
  v6 = v0[20];
  v9 = v0[15];
  v8 = v0[16];
  v11 = v0[13];
  v10 = v0[14];
  v13 = v0[12];
  v14 = v0[9];
  v15 = v0[8];
  v16 = v0[7];
  v17 = v0[6];
}

uint64_t sub_269800DCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v31 = MEMORY[0x277D84F90];
  sub_269814EEC(0, v1, 0);
  v2 = v31;
  result = sub_269811248(v3);
  v7 = result;
  v8 = 0;
  v9 = v3 + 56;
  v25 = v3 + 64;
  v26 = v3 + 56;
  v27 = v3;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_25;
      }

      v30 = v6;
      v28 = v8;
      v29 = v5;
      v11 = (*(v3 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      v15 = *(v31 + 16);
      v14 = *(v31 + 24);

      if (v15 >= v14 >> 1)
      {
        result = sub_269814EEC(v14 > 1, v15 + 1, 1);
      }

      *(v31 + 16) = v15 + 1;
      v16 = (v31 + 24 * v15);
      v16[4] = v12;
      v16[5] = v13;
      v16[6] = -1;
      if (v30)
      {
        goto LABEL_29;
      }

      v9 = v26;
      v3 = v27;
      v17 = 1 << *(v27 + 32);
      if (v7 >= v17)
      {
        goto LABEL_26;
      }

      v18 = *(v26 + 8 * v10);
      if ((v18 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v27 + 36) != v29)
      {
        goto LABEL_28;
      }

      v19 = v18 & (-2 << (v7 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v10 << 6;
        v21 = v10 + 1;
        v22 = (v25 + 8 * v10);
        while (v21 < (v17 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_26968E5C8(v7, v29, 0);
            v17 = __clz(__rbit64(v23)) + v20;
            goto LABEL_19;
          }
        }

        result = sub_26968E5C8(v7, v29, 0);
      }

LABEL_19:
      v8 = v28 + 1;
      if (v28 + 1 == v1)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(v27 + 36);
      v7 = v17;
      if (v17 < 0)
      {
        break;
      }
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
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_269801010(void *a1@<X0>, char *a2@<X8>)
{
  v82 = a2;
  v3 = type metadata accessor for AppEvent(0);
  OUTLINED_FUNCTION_3_20();
  v90 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12();
  v81 = v8 - v9;
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v10);
  v88 = (&v80 - v11);
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v80 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280325A60, &qword_2698672B0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_12();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v87 = &v80 - v21;
  OUTLINED_FUNCTION_22_0();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v80 - v24;
  MEMORY[0x28223BE20](v23);
  v89 = &v80 - v26;
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v3);
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v3);
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_3_20();
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3_1();
  (*(v39 + 16))(v38 - v37);
  v91 = sub_269854C34();
  v40 = *(v91 + 16);
  if (v40)
  {
    v41 = 0;
    v42 = v91 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
    v84 = v3;
    v85 = v14;
    v86 = v42;
    v83 = v25;
    while (v41 < *(v91 + 16))
    {
      v43 = *(v90 + 72);
      OUTLINED_FUNCTION_0_58();
      sub_269802B44();
      if (v14[*(v3 + 24)])
      {
        v44 = v19;
        v45 = v87;
        sub_269802A74();
        if (__swift_getEnumTagSinglePayload(v45, 1, v3) == 1)
        {
          sub_26969B0C0(v45, &unk_280325A60, &qword_2698672B0);
          v46 = v89;
        }

        else
        {
          OUTLINED_FUNCTION_0_58();
          v47 = v88;
          sub_269802ACC();
          v49 = *v14;
          v48 = *(v14 + 1);
          v50 = *v14 == *v47 && v48 == v47[1];
          if (v50 || (v51 = *v14, v52 = *(v14 + 1), (sub_269855584() & 1) != 0))
          {

            sub_26969B0C0(v83, &unk_280325A60, &qword_2698672B0);
            sub_26969B0C0(v89, &unk_280325A60, &qword_2698672B0);
            v61 = *(v84 + 20);
            v62 = type metadata accessor for AppLifecycle(0);
            v63 = *(v62 + 20);
            v64 = sub_269851D34();
            OUTLINED_FUNCTION_4_3(v64);
            v66 = *(v65 + 16);
            v67 = v82;
            v68 = v85;
            v66(&v82[v63], &v85[v61], v64);
            v69 = v88;
            v66(&v67[*(v62 + 24)], v88 + v61, v64);
            *v67 = v49;
            *(v67 + 1) = v48;

            sub_2698027DC(v69, type metadata accessor for AppEvent);
            sub_2698027DC(v68, type metadata accessor for AppEvent);
            OUTLINED_FUNCTION_24_4();
            v60 = v62;
            goto LABEL_18;
          }

          OUTLINED_FUNCTION_4_37();
          sub_2698027DC(v88, v53);
          v19 = v44;
          v46 = v89;
          v25 = v83;
          v3 = v84;
          v14 = v85;
        }

        sub_269802834(v46, v19);
        if (__swift_getEnumTagSinglePayload(v19, 1, v3) != 1)
        {
          sub_26969B0C0(v25, &unk_280325A60, &qword_2698672B0);

          OUTLINED_FUNCTION_0_58();
          v70 = v81;
          sub_269802ACC();
          v71 = *v14;
          v90 = *(v14 + 1);
          v91 = v71;
          v72 = *(v3 + 20);
          v73 = type metadata accessor for AppLifecycle(0);
          v74 = *(v73 + 20);
          v75 = sub_269851D34();
          OUTLINED_FUNCTION_4_3(v75);
          v77 = *(v76 + 16);
          v78 = v82;
          v77(&v82[v74], &v14[v72], v75);
          v77(v78 + *(v73 + 24), (v70 + *(v3 + 20)), v75);
          v79 = v90;

          sub_2698027DC(v70, type metadata accessor for AppEvent);
          *v78 = v91;
          v78[1] = v79;
          sub_2698027DC(v14, type metadata accessor for AppEvent);
          OUTLINED_FUNCTION_24_4();
          v60 = v73;
          goto LABEL_18;
        }

        sub_26969B0C0(v19, &unk_280325A60, &qword_2698672B0);
        OUTLINED_FUNCTION_0_58();
        sub_269802ACC();
      }

      else
      {
        sub_26969B0C0(v25, &unk_280325A60, &qword_2698672B0);
        OUTLINED_FUNCTION_0_58();
        sub_269802ACC();
      }

      OUTLINED_FUNCTION_24_4();
      __swift_storeEnumTagSinglePayload(v54, v55, v56, v3);
      if (v40 == ++v41)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    sub_26969B0C0(v25, &unk_280325A60, &qword_2698672B0);
    sub_26969B0C0(v89, &unk_280325A60, &qword_2698672B0);
    type metadata accessor for AppLifecycle(0);
    OUTLINED_FUNCTION_57();
LABEL_18:
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
    OUTLINED_FUNCTION_21_0();
  }
}

uint64_t sub_269801660@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_269851D34();
  OUTLINED_FUNCTION_3_20();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v12 = v11 - v10;
  v13 = *a1;
  if ([v13 type] != 3)
  {
    v14 = sub_26980275C(v13);
    if (v15)
    {
      v16 = v14;
      v17 = v15;
      v18 = [v13 absoluteTimestamp];
      if (v18)
      {
        v19 = v18;
        sub_269851D14();

        v20 = type metadata accessor for AppEvent(0);
        (*(v6 + 16))(a2 + *(v20 + 20), v12, v4);
        v21 = [v13 starting];
        (*(v6 + 8))(v12, v4);
        *a2 = v16;
        a2[1] = v17;
        *(a2 + *(v20 + 24)) = v21;
        OUTLINED_FUNCTION_24_4();
        return __swift_storeEnumTagSinglePayload(v22, v23, v24, v20);
      }
    }
  }

  type metadata accessor for AppEvent(0);
  v26 = OUTLINED_FUNCTION_3_0();

  return __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
}

void sub_26980181C(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for AppEvent(0);
  OUTLINED_FUNCTION_3_20();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12();
  v89 = (v10 - v11);
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v12);
  v88 = &v84 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280325A60, &qword_2698672B0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_12();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v84 - v20;
  OUTLINED_FUNCTION_57();
  v87 = v4;
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v4);
  v25 = *(a1 + 24);
  v26 = *(a1 + 32);
  v27 = OUTLINED_FUNCTION_50_0();
  __swift_project_boxed_opaque_existential_1(v27, v28);
  OUTLINED_FUNCTION_3_20();
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3_1();
  (*(v34 + 16))(v33 - v32);
  v35 = sub_269854C34();
  v36 = v35;
  v37 = *(v35 + 16);
  if (v37)
  {
    v84 = a2;
    v85 = v21;
    v38 = 0;
    v39 = *(v6 + 80);
    v40 = v6;
    v41 = &unk_280325A60;
    v42 = v87;
    v43 = v88;
    v86 = v35;
    while (v38 < *(v36 + 16))
    {
      v44 = *(v40 + 72);
      OUTLINED_FUNCTION_0_58();
      sub_269802B44();
      if (v43[*(v42 + 24)])
      {
        sub_269802A74();
        if (__swift_getEnumTagSinglePayload(v18, 1, v42) == 1)
        {
          sub_26969B0C0(v21, &unk_280325A60, &qword_2698672B0);

          sub_26969B0C0(v18, &unk_280325A60, &qword_2698672B0);
          v76 = *v43;
          v75 = *(v43 + 1);
          v77 = *(v42 + 20);
          v64 = type metadata accessor for AppLifecycle(0);
          v78 = *(v64 + 20);
          v79 = sub_269851D34();
          OUTLINED_FUNCTION_4_3(v79);
          v81 = *(v80 + 16);
          v82 = v84;
          v81(&v84[v78], &v43[v77], v79);
          v81(&v82[*(v64 + 24)], &v43[v77], v79);
          *v82 = v76;
          *(v82 + 1) = v75;

          OUTLINED_FUNCTION_4_37();
          sub_2698027DC(v43, v83);
          goto LABEL_17;
        }

        v45 = v41;
        v46 = v37;
        v47 = v40;
        OUTLINED_FUNCTION_0_58();
        v48 = v89;
        sub_269802ACC();
        v49 = v43;
        v50 = *v43;
        v51 = *(v49 + 1);
        v52 = v50 == *v48 && v51 == v48[1];
        if (v52 || (v53 = *(v49 + 1), (sub_269855584() & 1) != 0))
        {
          sub_26969B0C0(v85, &unk_280325A60, &qword_2698672B0);

          v62 = v87;
          v63 = *(v87 + 20);
          v64 = type metadata accessor for AppLifecycle(0);
          v65 = *(v64 + 20);
          v66 = sub_269851D34();
          OUTLINED_FUNCTION_4_3(v66);
          v68 = *(v67 + 16);
          v69 = v84;
          v70 = &v84[v65];
          v71 = v88;
          v68(v70, &v88[v63], v66);
          v72 = *(v62 + 20);
          v73 = v89;
          v68(&v69[*(v64 + 24)], v89 + v72, v66);
          *v69 = v50;
          *(v69 + 1) = v51;

          OUTLINED_FUNCTION_5_40();
          sub_2698027DC(v73, v74);
          sub_2698027DC(v71, v51);
LABEL_17:
          OUTLINED_FUNCTION_24_4();
          v61 = v64;
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_5_40();
        sub_2698027DC(v89, v54);
        v43 = v88;
        sub_2698027DC(v88, v51);
        v40 = v47;
        v37 = v46;
        v36 = v86;
        v21 = v85;
        v41 = v45;
        v42 = v87;
      }

      else
      {
        sub_26969B0C0(v21, v41, &qword_2698672B0);
        OUTLINED_FUNCTION_0_58();
        sub_269802ACC();
        OUTLINED_FUNCTION_24_4();
        __swift_storeEnumTagSinglePayload(v55, v56, v57, v42);
      }

      if (v37 == ++v38)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    sub_26969B0C0(v21, &unk_280325A60, &qword_2698672B0);
    type metadata accessor for AppLifecycle(0);
    OUTLINED_FUNCTION_57();
LABEL_18:
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
    OUTLINED_FUNCTION_21_0();
  }
}

void sub_269801D50(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_269851D34();
  OUTLINED_FUNCTION_3_20();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v16 = *a1;
  v17 = sub_26980275C(*a1);
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    v21 = [v16 absoluteTimestamp];
    if (v21)
    {
      v22 = v21;
      sub_269851D14();

      v23 = *(v6 + 32);
      v23(v15, v12, v4);
      v24 = [v16 playbackState];
      if (v24 - 1 >= 5)
      {
        (*(v6 + 8))(v15, v4);

        type metadata accessor for AppEvent(0);
        v27 = OUTLINED_FUNCTION_3_0();
      }

      else
      {
        v25 = 1u >> (v24 - 1);
        v26 = type metadata accessor for AppEvent(0);
        v23(a2 + *(v26 + 20), v15, v4);
        *a2 = v19;
        a2[1] = v20;
        *(a2 + *(v26 + 24)) = v25;
        OUTLINED_FUNCTION_24_4();
        v30 = v26;
      }

      __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
      OUTLINED_FUNCTION_21_0();
      return;
    }
  }

  type metadata accessor for AppEvent(0);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_21_0();

  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
}

uint64_t sub_269801F50()
{
  OUTLINED_FUNCTION_31_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325A40, &qword_2698672A8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v12 - v4);
  sub_269802A74();
  v6 = type metadata accessor for AppLifecycle(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_26969B0C0(v5, &qword_280325A40, &qword_2698672A8);
    return 0;
  }

  v9 = *v5;
  v8 = v5[1];

  sub_2698027DC(v5, type metadata accessor for AppLifecycle);
  if (v9 == v1 && v8 == v0)
  {
  }

  else
  {
    v11 = sub_269855584();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void *sub_26980209C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t sub_2698020CC()
{
  sub_26980209C();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_269802160()
{
  result = sub_269851D34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2698021DC(uint64_t a1, uint64_t a2)
{
  v12 = *v2;
  v5 = *(v2 + 3);
  v11 = *(v2 + 2);
  v6 = *(v2 + 5);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = v2[1];
  *(v7 + 32) = *v2;
  *(v7 + 48) = v8;
  *(v7 + 64) = v2[2];

  sub_269698250(&v12, v10);
  sub_269802A74();

  sub_269853B24();
}

uint64_t sub_2698022C0(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v22[1] = a3;
  v23 = a2;
  v5 = sub_269853904();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325A40, &qword_2698672A8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v22 - v12;
  v14 = type metadata accessor for AppLifecycle(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269802A74();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_26969B0C0(v13, &qword_280325A40, &qword_2698672A8);
    sub_269800DCC(*(a4 + 16));
    *v9 = sub_26980C0F4();
    (*(v6 + 104))(v9, *MEMORY[0x277D60188], v5);
    v23(v9);
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    v19 = sub_269802ACC();
    v20 = *(a4 + 16);
    MEMORY[0x28223BE20](v19);
    v22[-2] = a4;
    v22[-1] = v17;
    sub_269811A10(sub_269802B24, &v22[-4], v21);
    *v9 = sub_26980C0F4();
    (*(v6 + 104))(v9, *MEMORY[0x277D60188], v5);
    v23(v9);
    (*(v6 + 8))(v9, v5);
    return sub_2698027DC(v17, type metadata accessor for AppLifecycle);
  }
}

uint64_t sub_2698025BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325A40, &qword_2698672A8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  v11 = *a1;
  v10 = a1[1];
  v13 = *(a2 + 32);
  v12 = *(a2 + 40);
  sub_269802B44();
  v14 = type metadata accessor for AppLifecycle(0);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v14);
  v15 = v13(v11, v10, v9);
  sub_26969B0C0(v9, &qword_280325A40, &qword_2698672A8);
  *a3 = v11;
  a3[1] = v10;
  a3[2] = v15;
}

uint64_t sub_2698026E4()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_269802718(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  return sub_2698021DC(a1, a2);
}

uint64_t sub_26980275C(void *a1)
{
  v1 = [a1 bundleID];
  if (v1)
  {
    v2 = v1;
    sub_269854A94();
  }

  return OUTLINED_FUNCTION_50_0();
}

uint64_t sub_2698027DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_269802834(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280325A60, &qword_2698672B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_269851D34();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_269851D34();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2698029D4()
{
  result = sub_269851D34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_269802A74()
{
  OUTLINED_FUNCTION_31_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4_3(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_50_0();
  v7(v6);
  return v0;
}

uint64_t sub_269802ACC()
{
  OUTLINED_FUNCTION_31_2();
  v2 = v1(0);
  OUTLINED_FUNCTION_4_3(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_50_0();
  v6(v5);
  return v0;
}

uint64_t sub_269802B44()
{
  OUTLINED_FUNCTION_31_2();
  v2 = v1(0);
  OUTLINED_FUNCTION_4_3(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_50_0();
  v6(v5);
  return v0;
}

uint64_t sub_269802BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1;
    v39 = MEMORY[0x277D84F90];
    sub_269814EEC(0, v4, 0);
    v6 = v39;
    result = sub_269811248(v5);
    v10 = result;
    v11 = 0;
    v38 = v5 + 56;
    v30 = v5 + 64;
    v31 = v4;
    v32 = v5;
    v33 = a3;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v10 < 1 << *(v5 + 32))
      {
        v12 = v10 >> 6;
        if ((*(v38 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
        {
          goto LABEL_32;
        }

        if (*(v5 + 36) != v8)
        {
          goto LABEL_33;
        }

        v13 = (*(v5 + 48) + 16 * v10);
        v14 = *v13;
        v15 = v13[1];
        v16 = *v13 == a2 && v15 == a3;
        v35 = v11;
        v36 = v8;
        v37 = v9;
        if (v16)
        {
          v17 = 1;
        }

        else
        {
          v17 = sub_269855584() & 1;
        }

        v19 = *(v39 + 16);
        v18 = *(v39 + 24);

        if (v19 >= v18 >> 1)
        {
          result = sub_269814EEC(v18 > 1, v19 + 1, 1);
        }

        *(v39 + 16) = v19 + 1;
        v20 = (v39 + 24 * v19);
        v20[4] = v14;
        v20[5] = v15;
        v20[6] = v17;
        if (v37)
        {
          goto LABEL_37;
        }

        v5 = v32;
        a3 = v33;
        v21 = 1 << *(v32 + 32);
        if (v10 >= v21)
        {
          goto LABEL_34;
        }

        v22 = *(v38 + 8 * v12);
        if ((v22 & (1 << v10)) == 0)
        {
          goto LABEL_35;
        }

        if (*(v32 + 36) != v36)
        {
          goto LABEL_36;
        }

        v23 = v22 & (-2 << (v10 & 0x3F));
        if (v23)
        {
          v21 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
          v24 = v31;
        }

        else
        {
          v25 = v12 << 6;
          v26 = v12 + 1;
          v24 = v31;
          v27 = (v30 + 8 * v12);
          while (v26 < (v21 + 63) >> 6)
          {
            v29 = *v27++;
            v28 = v29;
            v25 += 64;
            ++v26;
            if (v29)
            {
              result = sub_26968E5C8(v10, v36, 0);
              v21 = __clz(__rbit64(v28)) + v25;
              goto LABEL_25;
            }
          }

          result = sub_26968E5C8(v10, v36, 0);
        }

LABEL_25:
        v11 = v35 + 1;
        if (v35 + 1 == v24)
        {

          return v6;
        }

        v9 = 0;
        v8 = *(v32 + 36);
        v10 = v21;
        if (v21 < 0)
        {
          break;
        }
      }
    }

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
LABEL_37:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_269802EA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_269854964();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_2697F1EE0(v9);
  v11 = v10;
  sub_2696ADFE4();
  (*(v5 + 104))(v8, *MEMORY[0x277D851B8], v4);
  v12 = sub_269854FC4();
  (*(v5 + 8))(v8, v4);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_2698035EC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26969EBEC;
  aBlock[3] = &block_descriptor_22;
  v14 = _Block_copy(aBlock);
  v15 = v12;

  MRMediaRemoteGetNowPlayingClient();
  _Block_release(v14);
}

id sub_269803088(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v54 = a3;
  v55 = a5;
  v8 = sub_269853904();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_2698548D4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v49 - v19;
  if (a2)
  {
    v52 = a4;
    v53 = v9;
    v21 = qword_2803226F0;
    v22 = a2;
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v13, qword_28033D940);
    (*(v14 + 16))(v20, v23, v13);
    v24 = v22;
    v25 = sub_2698548B4();
    v26 = sub_269854F24();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v51 = v8;
      v29 = v28;
      v56 = v24;
      v57 = v28;
      *v27 = 136315138;
      type metadata accessor for CFError(0);
      v30 = v24;
      v31 = sub_269854AE4();
      v33 = sub_26974F520(v31, v32, &v57);
      v50 = v12;
      v34 = v33;

      *(v27 + 4) = v34;
      _os_log_impl(&dword_269684000, v25, v26, "CurrentNowPlayingAppSignal got error %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      v35 = v29;
      v8 = v51;
      MEMORY[0x26D647170](v35, -1, -1);
      MEMORY[0x26D647170](v27, -1, -1);

      (*(v14 + 8))(v20, v13);
      v12 = v50;
    }

    else
    {

      (*(v14 + 8))(v20, v13);
    }

    v42 = v52;
    sub_269800DCC(v54);
    *v12 = sub_26980C0F4();
    v9 = v53;
    (*(v53 + 104))(v12, *MEMORY[0x277D60188], v8);
    v42(v12);

    return (*(v9 + 8))(v12, v8);
  }

  if (!a1)
  {
    if (qword_2803226F0 != -1)
    {
      swift_once();
    }

    v43 = __swift_project_value_buffer(v13, qword_28033D940);
    (*(v14 + 16))(v18, v43, v13);
    v44 = sub_2698548B4();
    v45 = sub_269854F14();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = a4;
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_269684000, v44, v45, "CurrentNowPlayingAppSignal got nil now playing client", v47, 2u);
      v48 = v47;
      a4 = v46;
      MEMORY[0x26D647170](v48, -1, -1);
    }

    (*(v14 + 8))(v18, v13);
    sub_269800DCC(v54);
    *v12 = sub_26980C0F4();
    (*(v9 + 104))(v12, *MEMORY[0x277D60188], v8);
    a4(v12);
    return (*(v9 + 8))(v12, v8);
  }

  v36 = a4;
  result = MRNowPlayingClientGetBundleIdentifier();
  if (result)
  {
    v38 = result;
    v39 = sub_269854A94();
    v41 = v40;

    sub_269802BFC(v54, v39, v41);

    *v12 = sub_26980C0F4();
    (*(v9 + 104))(v12, *MEMORY[0x277D60188], v8);
    v36(v12);
    return (*(v9 + 8))(v12, v8);
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_269803620(uint64_t a1, uint64_t a2)
{
  v4 = sub_269854964();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2696ADFE4();
  (*(v5 + 104))(v8, *MEMORY[0x277D851B8], v4);
  v9 = sub_269854FC4();
  (*(v5 + 8))(v8, v4);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  aBlock[4] = sub_2698038EC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26969F4F8;
  aBlock[3] = &block_descriptor_23;
  v11 = _Block_copy(aBlock);
  v12 = v9;

  MRMediaRemoteGetNowPlayingApplicationPlaybackState();
  _Block_release(v11);
}

uint64_t sub_2698037E0(unsigned int a1, void (*a2)(void *))
{
  v4 = sub_269853904();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = a1;
  (*(v5 + 104))(v8, *MEMORY[0x277D60170], v4);
  a2(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26980390C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_269803934()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_26980395C()
{
  sub_269803934();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2698039B4()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_269803A1C(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = sub_269853904();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = (a5 & 1u) + 1;
  (*(v8 + 104))(v11, *MEMORY[0x277D60170], v7);
  a1(v11);
  return (*(v8 + 8))(v11, v7);
}

void sub_269803B30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1;
    v47 = MEMORY[0x277D84F90];
    sub_269814EEC(0, v3, 0);
    v5 = v47;
    v7 = sub_269811248(v4);
    v9 = v8;
    v10 = 0;
    v46 = v4 + 56;
    v37 = v4 + 64;
    v38 = v3;
    v39 = v4;
    v40 = a2;
    if ((v7 & 0x8000000000000000) == 0)
    {
      while (v7 < 1 << *(v4 + 32))
      {
        v11 = v7 >> 6;
        if ((*(v46 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
        {
          goto LABEL_34;
        }

        if (*(v4 + 36) != v6)
        {
          goto LABEL_35;
        }

        v45 = v6;
        v12 = (*(v4 + 48) + 16 * v7);
        v14 = *v12;
        v13 = v12[1];
        v15 = *(a2 + 16);

        v44 = v9;
        v43 = v14;
        if (v15)
        {
          v41 = v5;

          v16 = sub_26973CEF8(v14, v13);
          if ((v17 & 1) != 0 && (v18 = *(*(a2 + 56) + 8 * v16), objc_opt_self(), swift_dynamicCastObjCClass()))
          {
            v19 = v18;
            v20 = sub_269854FD4();
            v22 = v21;

            if (v22)
            {
              v23 = -1;
            }

            else
            {
              v23 = v20;
            }
          }

          else
          {

            v23 = -1;
          }

          v5 = v41;
        }

        else
        {
          v23 = -1;
        }

        v25 = *(v5 + 16);
        v24 = *(v5 + 24);
        v26 = v45;
        if (v25 >= v24 >> 1)
        {
          sub_269814EEC(v24 > 1, v25 + 1, 1);
          v26 = v45;
        }

        *(v5 + 16) = v25 + 1;
        v27 = (v5 + 24 * v25);
        v27[4] = v43;
        v27[5] = v13;
        v27[6] = v23;
        if (v44)
        {
          goto LABEL_39;
        }

        v4 = v39;
        a2 = v40;
        v28 = 1 << *(v39 + 32);
        if (v7 >= v28)
        {
          goto LABEL_36;
        }

        v29 = *(v46 + 8 * v11);
        if ((v29 & (1 << v7)) == 0)
        {
          goto LABEL_37;
        }

        if (*(v39 + 36) != v26)
        {
          goto LABEL_38;
        }

        v30 = v29 & (-2 << (v7 & 0x3F));
        if (v30)
        {
          v28 = __clz(__rbit64(v30)) | v7 & 0x7FFFFFFFFFFFFFC0;
          v31 = v38;
        }

        else
        {
          v42 = v5;
          v32 = v11 << 6;
          v33 = v11 + 1;
          v31 = v38;
          v34 = (v37 + 8 * v11);
          while (v33 < (v28 + 63) >> 6)
          {
            v36 = *v34++;
            v35 = v36;
            v32 += 64;
            ++v33;
            if (v36)
            {
              sub_26968E5C8(v7, v26, 0);
              v28 = __clz(__rbit64(v35)) + v32;
              goto LABEL_28;
            }
          }

          sub_26968E5C8(v7, v26, 0);
LABEL_28:
          v5 = v42;
        }

        if (++v10 == v31)
        {
          goto LABEL_32;
        }

        v9 = 0;
        v6 = *(v39 + 36);
        v7 = v28;
        if (v28 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  else
  {
LABEL_32:
  }
}

uint64_t sub_269803E50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1;
    v46 = MEMORY[0x277D84F90];
    sub_269814EEC(0, v3, 0);
    v5 = v46;
    result = sub_269811248(v4);
    v8 = result;
    v10 = v9;
    v11 = 0;
    v45 = v4 + 56;
    v37 = v4 + 64;
    v38 = v3;
    v39 = v4;
    v40 = a2;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v8 < 1 << *(v4 + 32))
      {
        v12 = v8 >> 6;
        if ((*(v45 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
        {
          goto LABEL_34;
        }

        if (*(v4 + 36) != v7)
        {
          goto LABEL_35;
        }

        v43 = v7;
        v13 = (*(v4 + 48) + 16 * v8);
        v15 = *v13;
        v14 = v13[1];
        v16 = *(a2 + 16);

        v42 = v10;
        v41 = v15;
        if (v16)
        {
          v17 = v15;
          v18 = v5;

          v19 = sub_26973CEF8(v17, v14);
          if ((v20 & 1) != 0 && (v21 = *(*(a2 + 56) + 8 * v19), objc_opt_self(), (v22 = swift_dynamicCastObjCClass()) != 0))
          {
            v23 = [v22 subscriptionStatus];
          }

          else
          {
            v23 = -1;
          }

          v5 = v18;
        }

        else
        {
          v23 = -1;
        }

        v25 = *(v5 + 16);
        v24 = *(v5 + 24);
        v26 = v43;
        if (v25 >= v24 >> 1)
        {
          result = sub_269814EEC(v24 > 1, v25 + 1, 1);
          v26 = v43;
        }

        *(v5 + 16) = v25 + 1;
        v27 = (v5 + 24 * v25);
        v27[4] = v41;
        v27[5] = v14;
        v27[6] = v23;
        if (v42)
        {
          goto LABEL_39;
        }

        v4 = v39;
        a2 = v40;
        v28 = 1 << *(v39 + 32);
        if (v8 >= v28)
        {
          goto LABEL_36;
        }

        v29 = *(v45 + 8 * v12);
        if ((v29 & (1 << v8)) == 0)
        {
          goto LABEL_37;
        }

        if (*(v39 + 36) != v26)
        {
          goto LABEL_38;
        }

        v30 = v29 & (-2 << (v8 & 0x3F));
        if (v30)
        {
          v28 = __clz(__rbit64(v30)) | v8 & 0x7FFFFFFFFFFFFFC0;
          v31 = v38;
        }

        else
        {
          v44 = v5;
          v32 = v12 << 6;
          v33 = v12 + 1;
          v31 = v38;
          v34 = (v37 + 8 * v12);
          while (v33 < (v28 + 63) >> 6)
          {
            v36 = *v34++;
            v35 = v36;
            v32 += 64;
            ++v33;
            if (v36)
            {
              result = sub_26968E5C8(v8, v26, 0);
              v28 = __clz(__rbit64(v35)) + v32;
              goto LABEL_26;
            }
          }

          result = sub_26968E5C8(v8, v26, 0);
LABEL_26:
          v5 = v44;
        }

        if (++v11 == v31)
        {

          return v5;
        }

        v10 = 0;
        v7 = *(v39 + 36);
        v8 = v28;
        if (v28 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_269804154(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_26969329C(0, &qword_2815718F8, 0x277CD42D8);
  v3 = sub_2698549E4();

  v2(v3);
}

uint64_t sub_2698041E8(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  OUTLINED_FUNCTION_23();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_269804540;
  *(v3 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325800, &unk_2698675F0);
  swift_allocObject();

  sub_269809F98();
  v5 = v4;
  OUTLINED_FUNCTION_23();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a1;
  v7 = type metadata accessor for GetterSignal();
  v8 = swift_allocObject();
  v8[2] = 0xD000000000000027;
  v8[3] = 0x800000026987AB10;
  v8[4] = sub_2698047E0;
  v8[5] = v6;
  OUTLINED_FUNCTION_23();
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = a1;
  v10 = swift_allocObject();
  v10[2] = 0xD000000000000025;
  v10[3] = 0x800000026987AB40;
  v10[4] = sub_269804854;
  v10[5] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324270, &unk_26985F2B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2698580D0;
  *(v11 + 56) = v7;
  v12 = sub_26980488C();
  *(v11 + 32) = v8;
  *(v11 + 96) = v7;
  *(v11 + 104) = v12;
  *(v11 + 64) = v12;
  *(v11 + 72) = v10;
  swift_bridgeObjectRetain_n();

  return v11;
}

void sub_2698043E4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedStore];
  sub_26969329C(0, &qword_2815718D8, 0x277CD3DD8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = sub_269854E34();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v9[4] = sub_26980498C;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_269804154;
  v9[3] = &block_descriptor_24;
  v8 = _Block_copy(v9);

  [v4 userContextOfClass:ObjCClassFromMetadata forBundleIdentifiers:v6 withCompletion:v8];
  _Block_release(v8);
}

uint64_t sub_269804548(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(uint64_t a1), uint64_t))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  a3(sub_269693184, v6);
}

uint64_t sub_2698045E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  v7[2] = a4;
  v7[3] = a1;
  v7[4] = a2;

  sub_26980A1DC();
}

uint64_t sub_269804674(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v9 = sub_269853904();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a1;
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = MEMORY[0x277D84F98];
  }

  a5(a2, v15);

  *v13 = sub_26980C0F4();
  (*(v10 + 104))(v13, *MEMORY[0x277D60188], v9);
  a3(v13);
  return (*(v10 + 8))(v13, v9);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

unint64_t sub_26980488C()
{
  result = qword_280325808;
  if (!qword_280325808)
  {
    type metadata accessor for GetterSignal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325808);
  }

  return result;
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26980498C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2698049DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1;
    v45 = MEMORY[0x277D84F90];
    sub_269814EEC(0, v3, 0);
    v5 = v45;
    result = sub_269811248(v4);
    v9 = result;
    v10 = 0;
    v44 = v4 + 56;
    v36 = v4 + 64;
    v38 = v4;
    v39 = a2;
    v37 = v3;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v9 < 1 << *(v4 + 32))
      {
        v11 = v9 >> 6;
        if ((*(v44 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
        {
          goto LABEL_37;
        }

        if (*(v4 + 36) != v7)
        {
          goto LABEL_38;
        }

        v41 = v8;
        v42 = v7;
        v12 = (*(v4 + 48) + 16 * v9);
        v14 = *v12;
        v13 = v12[1];
        v15 = *(a2 + 16);

        v40 = v14;
        if (v15)
        {
          result = sub_26973CEF8(v14, v13);
          if (v16)
          {
            result = [*(*(a2 + 56) + 8 * result) doubleValue];
            v18 = v17 * 100.0;
            v19 = round(v18);
            v20 = v19 >= 9.22337204e18 || v19 <= -9.22337204e18;
            v21 = llround(v18);
            if (v20)
            {
              v22 = -1;
            }

            else
            {
              v22 = v21;
            }
          }

          else
          {
            v22 = -1;
          }
        }

        else
        {
          v22 = -1;
        }

        v23 = v42;
        v25 = *(v5 + 16);
        v24 = *(v5 + 24);
        if (v25 >= v24 >> 1)
        {
          result = sub_269814EEC(v24 > 1, v25 + 1, 1);
          v23 = v42;
        }

        *(v5 + 16) = v25 + 1;
        v26 = (v5 + 24 * v25);
        v26[4] = v40;
        v26[5] = v13;
        v26[6] = v22;
        if (v41)
        {
          goto LABEL_42;
        }

        v4 = v38;
        a2 = v39;
        v27 = 1 << *(v38 + 32);
        if (v9 >= v27)
        {
          goto LABEL_39;
        }

        v28 = *(v44 + 8 * v11);
        if ((v28 & (1 << v9)) == 0)
        {
          goto LABEL_40;
        }

        if (*(v38 + 36) != v23)
        {
          goto LABEL_41;
        }

        v29 = v28 & (-2 << (v9 & 0x3F));
        if (v29)
        {
          v27 = __clz(__rbit64(v29)) | v9 & 0x7FFFFFFFFFFFFFC0;
          v30 = v37;
        }

        else
        {
          v43 = v5;
          v31 = v11 << 6;
          v32 = v11 + 1;
          v30 = v37;
          v33 = (v36 + 8 * v11);
          while (v32 < (v27 + 63) >> 6)
          {
            v35 = *v33++;
            v34 = v35;
            v31 += 64;
            ++v32;
            if (v35)
            {
              result = sub_26968E5C8(v9, v23, 0);
              v27 = __clz(__rbit64(v34)) + v31;
              goto LABEL_29;
            }
          }

          result = sub_26968E5C8(v9, v23, 0);
LABEL_29:
          v5 = v43;
        }

        if (++v10 == v30)
        {

          return v5;
        }

        v8 = 0;
        v7 = *(v38 + 36);
        v9 = v27;
        if (v27 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_269804CE4(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a1;
  v8 = sub_269853904();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = [objc_allocWithZone(MEMORY[0x277D3A0D0]) init];

  sub_2697DEC04(v14);
  v15 = sub_269854CA4();

  v16 = [v13 relativeAppUsageProbabilitiesForCandidateBundleIds:v15 daysAgo:a6];

  sub_269694CBC();
  v17 = sub_2698549E4();

  sub_2698049DC(a5, v17);

  *v12 = sub_26980C0F4();
  (*(v9 + 104))(v12, *MEMORY[0x277D60188], v8);
  v19(v12);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_269804ED4(uint64_t a1)
{
  v15 = MEMORY[0x277D84F90];
  sub_269815070(0, 3, 0);
  v2 = 0;
  v3 = v15;
  do
  {
    v4 = *(&unk_287A394B8 + v2 + 32);
    *&v11 = 0x6567617355707041;
    *(&v11 + 1) = 0xE90000000000002ELL;
    v14 = v4;
    v5 = sub_269855544();
    MEMORY[0x26D645A60](v5);

    MEMORY[0x26D645A60](100, 0xE100000000000000);
    v6 = v11;
    v15 = v3;
    v8 = *(v3 + 16);
    v7 = *(v3 + 24);

    if (v8 >= v7 >> 1)
    {
      sub_269815070((v7 > 1), v8 + 1, 1);
      v3 = v15;
    }

    v12 = &type metadata for PSAppUsageRelativeSignal;
    v13 = sub_269805058();
    v9 = swift_allocObject();
    *&v11 = v9;
    *(v9 + 16) = v6;
    *(v9 + 32) = a1;
    *(v9 + 40) = v4;
    *(v3 + 16) = v8 + 1;
    sub_26968E5D4(&v11, v3 + 40 * v8 + 32);
    v2 += 8;
  }

  while (v2 != 24);
  return v3;
}

unint64_t sub_269805058()
{
  result = qword_280325810;
  if (!qword_280325810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325810);
  }

  return result;
}

uint64_t sub_2698050AC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v8 = a1;
    v49 = MEMORY[0x277D84F90];
    sub_269814EEC(0, v5, 0);
    v9 = v49;
    result = sub_269811248(v8);
    v13 = result;
    v14 = 0;
    v48 = v8 + 56;
    v41 = v8 + 64;
    v42 = v5;
    v43 = v8;
    if ((result & 0x8000000000000000) == 0)
    {
      while (1)
      {
        if (v13 >= 1 << *(v8 + 32))
        {
          goto LABEL_37;
        }

        v15 = v13 >> 6;
        if ((*(v48 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
        {
          goto LABEL_38;
        }

        if (*(v8 + 36) != v11)
        {
          goto LABEL_39;
        }

        v46 = v12;
        v47 = v11;
        v16 = (*(v8 + 48) + 16 * v13);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(a2 + 16);

        v44 = v14;
        v45 = v18;
        if (!v19)
        {
          break;
        }

        result = sub_26973CEF8(v18, v17);
        v21 = ((v20 ^ 1u) << 63) >> 63;
        if ((v20 ^ 1))
        {
          goto LABEL_16;
        }

        v22 = v47;
        if (a3 != 0.0)
        {
          v23 = (*(*(a2 + 56) + 8 * result) - a4) * 100.0 / a3;
          v24 = round(v23);
          v25 = v24 >= 9.22337204e18 || v24 <= -9.22337204e18;
          v26 = llround(v23);
          if (v25)
          {
            v21 = -1;
          }

          else
          {
            v21 = v26;
          }
        }

LABEL_17:
        v27 = a2;
        v29 = *(v9 + 16);
        v28 = *(v9 + 24);
        if (v29 >= v28 >> 1)
        {
          result = sub_269814EEC(v28 > 1, v29 + 1, 1);
          v22 = v47;
        }

        *(v9 + 16) = v29 + 1;
        v30 = (v9 + 24 * v29);
        v30[4] = v45;
        v30[5] = v17;
        v30[6] = v21;
        if (v46)
        {
          goto LABEL_43;
        }

        v8 = v43;
        v31 = 1 << *(v43 + 32);
        if (v13 >= v31)
        {
          goto LABEL_40;
        }

        v32 = *(v48 + 8 * v15);
        if ((v32 & (1 << v13)) == 0)
        {
          goto LABEL_41;
        }

        if (*(v43 + 36) != v22)
        {
          goto LABEL_42;
        }

        a2 = v27;
        v33 = v32 & (-2 << (v13 & 0x3F));
        if (v33)
        {
          v31 = __clz(__rbit64(v33)) | v13 & 0x7FFFFFFFFFFFFFC0;
          v34 = v42;
        }

        else
        {
          v35 = v9;
          v36 = v15 << 6;
          v37 = v15 + 1;
          v34 = v42;
          v38 = (v41 + 8 * v15);
          while (v37 < (v31 + 63) >> 6)
          {
            v40 = *v38++;
            v39 = v40;
            v36 += 64;
            ++v37;
            if (v40)
            {
              result = sub_26968E5C8(v13, v22, 0);
              v31 = __clz(__rbit64(v39)) + v36;
              goto LABEL_30;
            }
          }

          result = sub_26968E5C8(v13, v22, 0);
LABEL_30:
          v9 = v35;
        }

        v14 = v44 + 1;
        if (v44 + 1 == v34)
        {

          return v9;
        }

        v12 = 0;
        v11 = *(v43 + 36);
        v13 = v31;
        if (v31 < 0)
        {
          goto LABEL_37;
        }
      }

      v21 = -1;
LABEL_16:
      v22 = v47;
      goto LABEL_17;
    }

LABEL_37:
    __break(1u);
LABEL_38:
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
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2698053E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_269805424(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (v7 < result)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_269805468(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_2698054AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 48;
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = 1;
LABEL_3:
  v8 = (v2 + 24 * v7);
  while (v1 != v7)
  {
    if (v7 >= v1)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return result;
    }

    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_13;
    }

    v10 = *v8;
    v8 += 3;
    v11 = v10;
    ++v7;
    if (v3 < v10)
    {
      v4 = *(v8 - 5);
      v12 = *(v8 - 4);

      v3 = v11;
      v7 = v9;
      goto LABEL_3;
    }
  }

  return v4;
}

uint64_t sub_269805580(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325830, &unk_269867740);
    v3 = sub_2698553C4();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_2698077F0(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_269805618()
{
  type metadata accessor for SiriRemembersInteractionDataSource();
  result = sub_269805640();
  qword_28033D8E8 = result;
  return result;
}

uint64_t sub_269805640()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322D70, &qword_2698582E8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_3_33();
  MEMORY[0x28223BE20](v3);
  v5 = &v13[-v4];
  sub_269854294();
  v6 = sub_2698542A4();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  sub_2696C96F0(v5, v0);
  v7 = type metadata accessor for SiriRemembersInteractionDataSource();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC16SiriVideoIntents34SiriRemembersInteractionDataSource_interactionStore;
  __swift_storeEnumTagSinglePayload(v10 + OBJC_IVAR____TtC16SiriVideoIntents34SiriRemembersInteractionDataSource_interactionStore, 1, 1, v6);
  swift_beginAccess();
  sub_2696C9A50(v0, v10 + v11);
  swift_endAccess();
  sub_269698048(v5, &qword_280322D70, &qword_2698582E8);
  return v10;
}

uint64_t sub_269805790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void (*a4)(char *, uint64_t)@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v95 = a6;
  v91 = a4;
  v92 = a5;
  v89 = a3;
  v86 = a1;
  v87 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322D78, &unk_26985A370);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v79 = &v77 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322D70, &qword_2698582E8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v90 = &v77 - v12;
  v88 = sub_2698542A4();
  v13 = OUTLINED_FUNCTION_8(v88);
  v78 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v93 = v18 - v17;
  v85 = sub_269854284();
  v19 = OUTLINED_FUNCTION_8(v85);
  v83 = v20;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v19);
  v81 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v80 = &v77 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v82 = &v77 - v28;
  MEMORY[0x28223BE20](v27);
  v84 = &v77 - v29;
  v30 = sub_2698542D4();
  v31 = OUTLINED_FUNCTION_8(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3_1();
  v38 = (v37 - v36);
  v39 = sub_2698541D4();
  v40 = OUTLINED_FUNCTION_8(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3_33();
  v46 = MEMORY[0x28223BE20](v45);
  v48 = &v77 - v47;
  MEMORY[0x28223BE20](v46);
  v50 = &v77 - v49;
  sub_2698541C4();
  sub_2698541B4();
  v51 = *(v42 + 8);
  v51(v6, v39);
  *v38 = 0x6D614E616964656DLL;
  v38[1] = 0xE900000000000065;
  v52 = v87;
  v38[2] = v86;
  v38[3] = v52;
  (*(v33 + 104))(v38, *MEMORY[0x277D5FFE8], v30);

  sub_2698541A4();
  v53 = v38;
  v54 = v42 + 8;
  (*(v33 + 8))(v53, v30);
  v55 = v48;
  v56 = v83;
  v51(v55, v39);
  v57 = v81;
  sub_269854274();
  sub_269854244();
  v58 = *(v56 + 8);
  v59 = v85;
  v58(v57, v85);
  v60 = v82;
  sub_269854264();
  v61 = OUTLINED_FUNCTION_4_38();
  (v58)(v61);
  sub_269854254();
  v58(v60, v59);
  v62 = OBJC_IVAR____TtC16SiriVideoIntents34SiriRemembersInteractionDataSource_interactionStore;
  v63 = v94;
  swift_beginAccess();
  v64 = v63 + v62;
  v65 = v90;
  v66 = v88;
  sub_2696C96F0(v64, v90);
  if (__swift_getEnumTagSinglePayload(v65, 1, v66) == 1)
  {
    v67 = OUTLINED_FUNCTION_4_38();
    (v58)(v67);
    v51(v50, v39);
    sub_269698048(v65, &qword_280322D70, &qword_2698582E8);
    v68 = sub_269854204();
    v69 = v95;
    v70 = 1;
  }

  else
  {
    v91 = v51;
    v92 = v50;
    v94 = v54;
    v71 = v78;
    (*(v78 + 32))(v93, v65, v66);
    v72 = v79;
    sub_269854234();
    (*(v71 + 8))(v93, v66);
    v73 = OUTLINED_FUNCTION_4_38();
    (v58)(v73);
    v91(v92, v39);
    v74 = sub_269854204();
    __swift_storeEnumTagSinglePayload(v72, 0, 1, v74);
    v75 = v95;
    (*(*(v74 - 8) + 32))(v95, v72, v74);
    v69 = v75;
    v70 = 0;
    v68 = v74;
  }

  return __swift_storeEnumTagSinglePayload(v69, v70, 1, v68);
}

uint64_t sub_269805E50()
{
  sub_269698048(v0 + OBJC_IVAR____TtC16SiriVideoIntents34SiriRemembersInteractionDataSource_interactionStore, &qword_280322D70, &qword_2698582E8);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SiriRemembersInteractionDataSource()
{
  result = qword_280325820;
  if (!qword_280325820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269805F18()
{
  sub_2696C9698();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_269805FA8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_2698548D4();
  v11 = OUTLINED_FUNCTION_8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_1();
  v18 = v17 - v16;
  if (qword_2803226F0 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v10, qword_28033D940);
  (*(v13 + 16))(v18, v19, v10);

  v20 = sub_2698548B4();
  v21 = sub_269854F14();

  if (os_log_type_enabled(v20, v21))
  {
    v35 = a4;
    v22 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v34 = v36;
    *v22 = 136315394;
    *(v22 + 4) = sub_26974F520(a1, a2, &v36);
    *(v22 + 12) = 2080;
    v23 = sub_269854E54();
    v33 = a1;
    v25 = sub_26974F520(v23, v24, &v36);

    *(v22 + 14) = v25;
    _os_log_impl(&dword_269684000, v20, v21, "SiriRemembersEntitySignals init with searchTerm %s and candidateAppBundleIds %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D647170](v34, -1, -1);
    v26 = v22;
    a4 = v35;
    MEMORY[0x26D647170](v26, -1, -1);

    v27 = v18;
    v28 = v33;
    (*(v13 + 8))(v27, v10);
  }

  else
  {

    (*(v13 + 8))(v18, v10);
    v28 = a1;
  }

  *(v5 + 16) = a3;
  OUTLINED_FUNCTION_33_9();
  v29 = swift_allocObject();
  v29[2] = a3;
  v29[3] = a4;
  v29[4] = v28;
  v29[5] = a2;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2698079DC;
  *(v30 + 24) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325838, &unk_269867750);
  swift_allocObject();

  sub_269809F90();
  *(v5 + 24) = v31;
  return v5;
}

uint64_t sub_2698062E0(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a5;
  v51 = a6;
  v49 = a4;
  v46 = a2;
  v47 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322D78, &unk_26985A370);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v38 - v9;
  v11 = sub_269854204();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v45 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324298, &unk_2698679F0);
  v42 = *(v15 - 8);
  v43 = v15;
  v16 = *(v42 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v41 = (&v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v44 = &v38 - v19;
  v20 = 1 << *(a3 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a3 + 56);
  v23 = (v20 + 63) >> 6;
  v40 = (v12 + 32);

  v25 = 0;
  v48 = MEMORY[0x277D84F90];
  while (1)
  {
    v26 = v25;
    if (!v22)
    {
      break;
    }

LABEL_8:
    v27 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v28 = *(a3 + 48) + ((v25 << 10) | (16 * v27));
    v30 = *v28;
    v29 = *(v28 + 8);

    sub_269805790(v50, v51, 1, v30, v29, v10);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {

      result = sub_269698048(v10, &qword_280322D78, &unk_26985A370);
    }

    else
    {
      v39 = *v40;
      v39(v45, v10, v11);
      v31 = *(v43 + 48);
      v32 = v41;
      *v41 = v30;
      *(v32 + 8) = v29;
      v39((v32 + v31), v45, v11);
      sub_2698079F0(v32, v44);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = *(v48 + 16);
        sub_26977D17C();
        v48 = v36;
      }

      v33 = *(v48 + 16);
      if (v33 >= *(v48 + 24) >> 1)
      {
        sub_26977D17C();
        v48 = v37;
      }

      v34 = v48;
      *(v48 + 16) = v33 + 1;
      result = sub_2698079F0(v44, v34 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v33);
    }
  }

  while (1)
  {
    v25 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v25 >= v23)
    {

      sub_26980C254(v48);
      v47();
    }

    v22 = *(a3 + 56 + 8 * v25);
    ++v26;
    if (v22)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2698066C0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(uint64_t a1), uint64_t))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  a3(sub_269693184, v6);
}

uint64_t sub_269806754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = type metadata accessor for GetterSignal();
  OUTLINED_FUNCTION_33_9();
  v9 = swift_allocObject();
  strcpy((v9 + 16), "EntityRecency");
  *(v9 + 30) = -4864;
  *(v9 + 32) = sub_2698079C0;
  *(v9 + 40) = v7;
  a3[3] = v8;
  a3[4] = sub_26980488C();
  *a3 = v9;
}

uint64_t sub_269806828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a3 + 24);
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a3;
  v11[5] = a1;
  v11[6] = a2;

  sub_26980A204();
}

void sub_2698068E0(uint64_t *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v75 = a6;
  v76 = a5;
  v71 = a4;
  v8 = sub_269853904();
  v73 = *(v8 - 8);
  v74 = v8;
  v9 = *(v73 + 64);
  MEMORY[0x28223BE20](v8);
  v72 = (&v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D80, &unk_2698582F0);
  v11 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v13 = &v71 - v12;
  v82 = sub_269851D34();
  v14 = *(v82 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v82);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v20 = *a1;
  v81 = &v71 - v21;
  a2(v19);
  v22 = v20 + 64;
  v23 = 1 << *(v20 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v20 + 64);
  v26 = (v23 + 63) >> 6;
  v79 = v20;
  v80 = (v14 + 8);

  v27 = 0;
  v77 = MEMORY[0x277D84F90];
  while (v25)
  {
LABEL_9:
    v29 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v30 = v29 | (v27 << 6);
    v31 = *(v79 + 56);
    v32 = (*(v79 + 48) + 16 * v30);
    v33 = *v32;
    v34 = v32[1];
    v35 = sub_269854204();
    (*(*(v35 - 8) + 16))(&v13[*(v78 + 48)], v31 + *(*(v35 - 8) + 72) * v30, v35);
    *v13 = v33;
    *(v13 + 1) = v34;

    sub_2698541F4();
    sub_269851CB4();
    v37 = v36;
    (*v80)(v18, v82);
    if (v37 >= 0.0 && v37 < 31536000.0)
    {

      sub_269698048(v13, &unk_280322D80, &unk_2698582F0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = *(v77 + 16);
        sub_26977D1A0();
        v77 = v42;
      }

      v38 = *(v77 + 16);
      if (v38 >= *(v77 + 24) >> 1)
      {
        sub_26977D1A0();
        v77 = v43;
      }

      v39 = v77;
      *(v77 + 16) = v38 + 1;
      v40 = v39 + 24 * v38;
      *(v40 + 32) = v33;
      *(v40 + 40) = v34;
      *(v40 + 48) = v37;
    }

    else
    {
      sub_269698048(v13, &unk_280322D80, &unk_2698582F0);
    }
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      return;
    }

    if (v28 >= v26)
    {
      break;
    }

    v25 = *(v22 + 8 * v28);
    ++v27;
    if (v25)
    {
      v27 = v28;
      goto LABEL_9;
    }
  }

  v44 = v77;
  v45 = *(v77 + 16);
  v46 = MEMORY[0x277D84F90];
  if (v45)
  {
    v83 = MEMORY[0x277D84F90];
    sub_269814E64(0, v45, 0);
    v46 = v83;
    v47 = *(v83 + 16);
    v48 = (v44 + 48);
    v49 = v45;
    v50 = v76;
    v51 = v74;
    do
    {
      v52 = *v48;
      v83 = v46;
      v53 = *(v46 + 24);
      if (v47 >= v53 >> 1)
      {
        sub_269814E64(v53 > 1, v47 + 1, 1);
        v46 = v83;
      }

      *(v46 + 16) = v47 + 1;
      *(v46 + 8 * v47 + 32) = v52;
      v48 += 3;
      ++v47;
      --v49;
    }

    while (v49);
    v44 = v77;
  }

  else
  {
    v50 = v76;
    v51 = v74;
  }

  v54 = COERCE_DOUBLE(sub_2698053E0(v46));
  v56 = v55;

  if (v56)
  {
    goto LABEL_32;
  }

  v57 = MEMORY[0x277D84F90];
  if (v45)
  {
    v83 = MEMORY[0x277D84F90];
    sub_269814E64(0, v45, 0);
    v57 = v83;
    v58 = *(v83 + 16);
    v59 = (v44 + 48);
    do
    {
      v60 = *v59;
      v83 = v57;
      v61 = *(v57 + 24);
      if (v58 >= v61 >> 1)
      {
        sub_269814E64(v61 > 1, v58 + 1, 1);
        v57 = v83;
      }

      *(v57 + 16) = v58 + 1;
      *(v57 + 8 * v58 + 32) = v60;
      v59 += 3;
      ++v58;
      --v45;
    }

    while (v45);
    v44 = v77;
  }

  *&v62 = COERCE_DOUBLE(sub_269805468(v57));
  v64 = v63;

  if (v64)
  {
LABEL_32:

    sub_269800DCC(*(v71 + 16));
  }

  else
  {
    v65 = *&v62;
    v66 = sub_269805580(v44);
    v67 = *(v71 + 16);

    sub_2698050AC(v67, v66, v65 - v54, v54);
  }

  v68 = sub_26980C0F4();
  v70 = v72;
  v69 = v73;
  *v72 = v68;
  (*(v69 + 104))(v70, *MEMORY[0x277D60188], v51);
  v50(v70);
  (*(v69 + 8))(v70, v51);
  (*v80)(v81, v82);
}

uint64_t sub_269806F04()
{
  v1 = v0;
  v26 = MEMORY[0x277D84F90];
  sub_269815070(0, 7, 0);
  v2 = 0;
  v3 = v26;
  do
  {
    v4 = byte_287A39490[v2 + 32];
    v5 = 0xE400000000000000;
    v6 = 1852402994;
    switch(v4)
    {
      case 1:
        v5 = 0xE500000000000000;
        v6 = 0x6E696D3031;
        break;
      case 2:
        v5 = 0xE300000000000000;
        v6 = 7497777;
        break;
      case 3:
        v6 = 7497782;
        v5 = 0xE300000000000000;
        break;
      case 4:
        v6 = 2036425777;
        break;
      case 5:
        v6 = 2036425783;
        break;
      case 6:
        v5 = 0xE500000000000000;
        v6 = 0x7961643832;
        break;
      default:
        break;
    }

    v22 = 0xD000000000000014;
    v23 = 0x8000000269880D80;
    MEMORY[0x26D645A60](v6, v5);

    v8 = v22;
    v7 = v23;
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    *(v9 + 24) = v4;
    v10 = type metadata accessor for GetterSignal();
    OUTLINED_FUNCTION_33_9();
    v11 = swift_allocObject();
    v11[2] = v8;
    v11[3] = v7;
    v11[4] = sub_2698079A8;
    v11[5] = v9;
    v24 = v10;
    v12 = sub_26980488C();
    v25 = v12;
    v26 = v3;
    v22 = v11;
    v14 = *(v3 + 16);
    v13 = *(v3 + 24);

    if (v14 >= v13 >> 1)
    {
      sub_269815070((v13 > 1), v14 + 1, 1);
      v10 = v24;
      v12 = v25;
    }

    ++v2;
    v15 = __swift_mutable_project_boxed_opaque_existential_1(&v22, v10);
    v16 = *(*(v10 - 8) + 64);
    MEMORY[0x28223BE20](v15);
    OUTLINED_FUNCTION_3_1();
    v19 = v18 - v17;
    (*(v20 + 16))(v18 - v17);
    sub_26980B1E4(v14, v19, &v26, v10, v12);
    __swift_destroy_boxed_opaque_existential_0(&v22);
    v3 = v26;
  }

  while (v2 != 7);
  return v26;
}

uint64_t sub_2698071B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(a3 + 24);
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;

  sub_26980A204();
}

uint64_t sub_269807248(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v56 = a4;
  v57 = a3;
  v68 = a2;
  v67 = sub_269854224();
  v5 = *(v67 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v67);
  v66 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_269854204();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_269853904();
  v54 = *(v13 - 8);
  v55 = v13;
  v14 = *(v54 + 64);
  MEMORY[0x28223BE20](v13);
  v53 = (v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803255E8, &unk_269866810);
  result = sub_269855394();
  v18 = 0;
  v20 = v16 + 64;
  v19 = *(v16 + 64);
  v64 = v16;
  v21 = 1 << *(v16 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v19;
  v24 = (v21 + 63) >> 6;
  v63 = v9 + 16;
  v52 = *MEMORY[0x277D5FF68];
  v71 = (v5 + 104);
  v51 = *MEMORY[0x277D5FF58];
  v50 = *MEMORY[0x277D5FF70];
  v49 = *MEMORY[0x277D5FF50];
  v48[3] = *MEMORY[0x277D5FF80];
  v48[2] = *MEMORY[0x277D5FF60];
  v62 = *MEMORY[0x277D5FF88];
  v60 = result;
  v61 = (v5 + 8);
  v65 = v9;
  v58 = result + 64;
  v59 = (v9 + 8);
  if (v23)
  {
    do
    {
      v25 = __clz(__rbit64(v23));
      v69 = (v23 - 1) & v23;
LABEL_10:
      v28 = v25 | (v18 << 6);
      v29 = *(v64 + 56);
      v30 = (*(v64 + 48) + 16 * v28);
      v31 = v30[1];
      v70 = *v30;
      v32 = v12;
      (*(v65 + 16))(v12, v29 + *(v65 + 72) * v28, v8);
      v33 = v8;
      v34 = v62;
      switch(v68)
      {
        case 1:
          v35 = &v72;
          goto LABEL_14;
        case 2:
          v35 = &v72 + 4;
LABEL_14:
          v34 = *(v35 - 64);
          break;
        case 3:
          v34 = v49;
          break;
        case 4:
          v34 = v50;
          break;
        case 5:
          v34 = v51;
          break;
        case 6:
          v34 = v52;
          break;
        default:
          break;
      }

      v36 = v66;
      v37 = v67;
      (*v71)(v66, v34, v67);

      v38 = sub_269854214();
      (*v61)(v36, v37);
      v39 = *(sub_2698541E4() + 16);

      if (v38 >= v39)
      {
        v40 = -1;
        v8 = v33;
      }

      else
      {
        result = sub_2698541E4();
        if (v38 < 0)
        {
          goto LABEL_29;
        }

        if (v38 >= *(result + 16))
        {
          goto LABEL_30;
        }

        v8 = v33;
        v40 = *(result + 2 * v38 + 32);
      }

      v12 = v32;
      (*v59)(v32, v8);
      *(v58 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      result = v60;
      v41 = (*(v60 + 48) + 16 * v28);
      *v41 = v70;
      v41[1] = v31;
      *(*(result + 56) + 8 * v28) = v40;
      v42 = *(result + 16);
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_28;
      }

      *(result + 16) = v44;
      v23 = v69;
    }

    while (v69);
  }

  v26 = v18;
  while (1)
  {
    v18 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v18 >= v24)
    {
      v46 = v53;
      v45 = v54;
      *v53 = result;
      v47 = v55;
      (*(v45 + 104))(v46, *MEMORY[0x277D60188], v55);
      v57(v46);
      return (*(v45 + 8))(v46, v47);
    }

    v27 = *(v20 + 8 * v18);
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v69 = (v27 - 1) & v27;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_269807770()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_269807798()
{
  sub_269807770();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}