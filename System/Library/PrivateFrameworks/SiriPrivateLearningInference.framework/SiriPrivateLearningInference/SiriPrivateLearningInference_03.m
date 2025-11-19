void *sub_222B6F90C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = sub_222C94CCC();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

void *sub_222B6FB44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025688, &unk_222C98A90);
  v2 = *v0;
  v3 = sub_222C94CCC();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v21 = v18[2];
        v20 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v21;
        v22[3] = v20;
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

void *sub_222B6FCB0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_222C94CCC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

unint64_t sub_222B6FDE0(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v3 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0256B8, &qword_222C98AA8);
  result = sub_222C94CDC();
  v5 = result;
  v20 = v2;
  if (*(v2 + 16))
  {
    v6 = 0;
    v7 = v2 + 56;
    v8 = 1 << *(v2 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v2 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v20 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = *(v5 + 40);
      sub_222C952FC();

      if (UsoEntity_common_Person.convertUSOPersonToString()().value._object)
      {
        sub_222C9531C();
        sub_222C9452C();
      }

      else
      {
        sub_222C9531C();
      }

      sub_222C9534C();
      v13 = -1 << *(v5 + 32);
      result = sub_222C94C4C();
      *(v12 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v5 + 48) + 8 * result) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_19;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v19 = v5;
  }

  return result;
}

uint64_t sub_222B6FFCC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0256D8, &qword_222C98AC0);
  result = sub_222C94CDC();
  v6 = result;
  if (!*(v3 + 16))
  {

LABEL_42:
    *v2 = v6;
    return result;
  }

  v31 = v1;
  v32 = v3;
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
  while (v11)
  {
    v15 = __clz(__rbit64(v11));
    v35 = (v11 - 1) & v11;
LABEL_17:
    v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
    v19 = *(v6 + 40);
    sub_222C952FC();

    sub_222C0A220(v20, &v36);
    v21 = v37;
    if (v37 == 1)
    {
      sub_222C9531C();
      goto LABEL_31;
    }

    v22 = v38;
    v33 = v39;
    v34 = v40;
    v23 = v41;
    sub_222C9531C();
    sub_222C9531C();
    if (v21)
    {
      sub_222C9452C();
    }

    v3 = v32;
    sub_222C9531C();
    if (v22)
    {
      sub_222C9452C();
    }

    if (v33)
    {
      sub_222C9531C();
      sub_222C9452C();
      if (!v34)
      {
        goto LABEL_27;
      }
    }

    else
    {
      sub_222C9531C();
      if (!v34)
      {
LABEL_27:
        sub_222C9531C();
        goto LABEL_28;
      }
    }

    sub_222C9531C();
    sub_222C9452C();
LABEL_28:
    sub_222C9531C();
    if (v23)
    {
      sub_222C9452C();
    }

    sub_222B4FCD4(&v36, &qword_27D0256C8, &unk_222C98AB0);
LABEL_31:
    result = sub_222C9534C();
    v24 = -1 << *(v6 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v24) >> 6;
      while (++v26 != v28 || (v27 & 1) == 0)
      {
        v29 = v26 == v28;
        if (v26 == v28)
        {
          v26 = 0;
        }

        v27 |= v29;
        v30 = *(v13 + 8 * v26);
        if (v30 != -1)
        {
          v14 = __clz(__rbit64(~v30)) + (v26 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_44;
    }

    v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v11 = v35;
    *(*(v6 + 48) + 8 * v14) = v18;
    ++*(v6 + 16);
  }

  v16 = v7;
  while (1)
  {
    v7 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v7 >= v12)
    {

      v2 = v31;
      goto LABEL_42;
    }

    v17 = *(v8 + 8 * v7);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v35 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_222B70358(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025690, &qword_222C9B8F0);
  result = sub_222C94CDC();
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_222C952FC();

      sub_222C9452C();
      result = sub_222C9534C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_222B70590(uint64_t a1)
{
  v2 = v1;
  v37 = sub_222C9367C();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025668, &qword_222C98A80);
  v10 = sub_222C94CDC();
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
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_222B72D78(&qword_280FE02A8, MEMORY[0x277CC95F0]);
      result = sub_222C9440C();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_222B708AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0256E8, &qword_222C98AD0);
  result = sub_222C94CDC();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_222C952EC();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
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
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_222B70A9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025648, &qword_222C9B8E0);
  result = sub_222C94CDC();
  v6 = result;
  if (*(v3 + 16))
  {
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
    v26 = v2;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_19:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      sub_222C952FC();
      sub_222C9452C();

      result = sub_222C9534C();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_11;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_222B70DDC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025650, &unk_222C98A70);
  result = sub_222C94CDC();
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_222C952FC();
      sub_222C9452C();

      result = sub_222C9534C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
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

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_222B710B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025660, &unk_222CA0990);
  result = sub_222C94CDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
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
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v21 = *(v3 + 48) + 56 * (v18 | (v7 << 6));
      v22 = *v21;
      v23 = *(v21 + 48);
      v24 = *(v21 + 32);
      v36 = *(v21 + 16);
      v37 = v24;
      v38 = v23;
      v35 = v22;
      v25 = *(v6 + 40);
      sub_222C952FC();
      sub_222B554C0(&v35, v34);
      sub_222C9452C();
      result = sub_222C9534C();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v12 + 8 * v28);
          if (v32 != -1)
          {
            v13 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 56 * v13;
      v15 = v35;
      v16 = v36;
      v17 = v37;
      *(v14 + 48) = v38;
      *(v14 + 16) = v16;
      *(v14 + 32) = v17;
      *v14 = v15;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v20 = *(v3 + 56 + 8 * v7);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_222B7131C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_222C942CC();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0256A8, &qword_222C98AA0);
  v10 = sub_222C94CDC();
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
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_222B72D78(&qword_27D025698, MEMORY[0x277D5FCE8]);
      result = sub_222C9440C();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_222B71638(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025688, &unk_222C98A90);
  result = sub_222C94CDC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[3];
      v33 = v19[2];
      v23 = *(v6 + 40);
      sub_222C952FC();

      sub_222C9452C();
      result = sub_222C9534C();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v20;
      v15[1] = v21;
      v3 = v32;
      v15[2] = v33;
      v15[3] = v22;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v31;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_222B71888(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025670, &qword_222C98A88);
  result = sub_222C94CDC();
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_222C952FC();
      MEMORY[0x223DCA0B0](v17);
      result = sub_222C9534C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
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

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t _s28SiriPrivateLearningInference13CoreDuetEventV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_222C951FC() & 1) == 0)
  {
    return 0;
  }

  v9 = v3 == v6 && v4 == v7;
  if (!v9 && (sub_222C951FC() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v2 + 16);
  if (v10 != *(v5 + 16))
  {
    return 0;
  }

  v12 = 0;
  for (i = 32; ; i += 40)
  {
    if (v10 == v12)
    {

      return 1;
    }

    if (v12 >= *(v2 + 16))
    {
      break;
    }

    result = sub_222B43E3C(v2 + i, v17);
    v14 = *(v5 + 16);
    if (v12 == v14)
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      return 1;
    }

    if (v12++ >= v14)
    {
      goto LABEL_26;
    }

    sub_222B405A0(v17, v18);
    sub_222B43E3C(v5 + i, &v19);
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    v15 = sub_222C93C2C();
    if (v15 == 2)
    {

      sub_222B4FCD4(v18, &qword_27D0256F0, &qword_222C98AD8);
      return 0;
    }

    v16 = v15;
    result = sub_222B4FCD4(v18, &qword_27D0256F0, &qword_222C98AD8);
    if ((v16 & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_222B71CA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_222B72AF4();
  result = MEMORY[0x223DC96B0](v2, &type metadata for MediaReference, v3);
  v12 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 16);
      v13[0] = *v5;
      v7 = *(v5 + 32);
      v13[1] = v6;
      v13[2] = v7;
      v14 = *(v5 + 48);
      sub_222B554C0(v13, v10);
      sub_222B6A674(v8, v13);
      v10[0] = v8[0];
      v10[1] = v8[1];
      v10[2] = v8[2];
      v11 = v9;
      sub_222B55A80(v10);
      v5 += 56;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

uint64_t sub_222B71D68(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_222C94C6C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = sub_222C9378C();
  v5 = sub_222B72D78(&qword_27D0256B0, MEMORY[0x277D5E850]);
  result = MEMORY[0x223DC96B0](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x223DC9B30](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_222B68DD8(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = sub_222C94C6C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_222B71ED4(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_222C94C6C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = sub_222C9386C();
  v5 = sub_222B72D78(&qword_27D0256C0, MEMORY[0x277D5E9D8]);
  result = MEMORY[0x223DC96B0](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x223DC9B30](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_222B69110(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = sub_222C94C6C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_222B72040(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223DC96B0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_222B69B4C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_222B720D8(uint64_t a1)
{
  v2 = sub_222C9367C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_222B72D78(&qword_280FE02A8, MEMORY[0x277CC95F0]);
  result = MEMORY[0x223DC96B0](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_222B69C9C(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_222B72274(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223DC96B0](v2, MEMORY[0x277D83690], MEMORY[0x277D83698]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_222B69F7C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_222B72308(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_222B72340()
{
  result = qword_27D025640;
  if (!qword_27D025640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D024F20, &unk_222C96CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025640);
  }

  return result;
}

uint64_t sub_222B723A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_222B7240C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
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

uint64_t sub_222B72488(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_222B724D0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_222B72550()
{
  sub_222C9367C();
  if (v0 <= 0x3F)
  {
    sub_222B7280C(319, &qword_280FE02B0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_222B72634();
      if (v2 <= 0x3F)
      {
        sub_222B72698();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_222B72634()
{
  if (!qword_280FDB800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D024858, &qword_222C98950);
    v0 = sub_222C947FC();
    if (!v1)
    {
      atomic_store(v0, &qword_280FDB800);
    }
  }
}

void sub_222B72698()
{
  if (!qword_280FDB7F8)
  {
    v0 = sub_222C947FC();
    if (!v1)
    {
      atomic_store(v0, &qword_280FDB7F8);
    }
  }
}

void sub_222B72710()
{
  sub_222B7280C(319, &qword_280FDB7E0, type metadata accessor for FeaturisedTurn, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_222C9367C();
    if (v1 <= 0x3F)
    {
      sub_222B7280C(319, &qword_280FE0290, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_222B7280C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_222B72870(uint64_t a1)
{
  v2 = sub_222C942CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_222B72D78(&qword_27D025698, MEMORY[0x277D5FCE8]);
  result = MEMORY[0x223DC96B0](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_222B6A8B4(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_222B72A74(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x223DC96B0](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

unint64_t sub_222B72AF4()
{
  result = qword_27D025658;
  if (!qword_27D025658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025658);
  }

  return result;
}

uint64_t sub_222B72B48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222B72BB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_222B72C10()
{
  result = qword_27D025678;
  if (!qword_27D025678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025678);
  }

  return result;
}

uint64_t sub_222B72C64(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_222B72D24();
  result = MEMORY[0x223DC96B0](v2, &type metadata for ContactReference, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 56);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);

      sub_222B6AB94(&v10, v9, v8, v7, v6);

      v5 += 4;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

unint64_t sub_222B72D24()
{
  result = qword_27D025680;
  if (!qword_27D025680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025680);
  }

  return result;
}

uint64_t sub_222B72D78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_222B72DC0()
{
  type metadata accessor for MessagesDeadEndClassifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0256F8, qword_222C98B58);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_280FDE3A8 = 91;
  unk_280FDE3B0 = 0xE100000000000000;
  return result;
}

uint64_t sub_222B72E4C(uint64_t a1)
{
  v2 = type metadata accessor for RuleResult();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CD0, &qword_222C98B50);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CC8, &unk_222C96AA0) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_222C98AE0;
  v10 = (v9 + v8);
  *v10 = 0xD00000000000001DLL;
  v10[1] = 0x8000000222CA9AF0;
  sub_222B77FE8(a1);
  swift_storeEnumTagMultiPayload();
  sub_222B73D68(v5, v9 + v8 + v6[14], type metadata accessor for RuleResult);
  v11 = (v9 + v8 + v7);
  v12 = v6[14];
  *v11 = 0xD00000000000002BLL;
  v11[1] = 0x8000000222CA9B10;
  sub_222B73068(a1, v11 + v12);
  v13 = (v9 + v8 + 2 * v7);
  v14 = v6[14];
  *v13 = 0xD00000000000001CLL;
  v13[1] = 0x8000000222CA9B40;
  sub_222C432CC(a1, (v13 + v14));
  v15 = (v9 + v8 + 3 * v7);
  v16 = v6[14];
  *v15 = 0xD00000000000001BLL;
  *(v15 + 1) = 0x8000000222CA9B60;
  sub_222C3D810(a1, &v15[v16]);
  return v9;
}

uint64_t sub_222B73068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v65 = sub_222C93EAC();
  v3 = *(v65 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v65);
  v63 = &v58[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v5);
  v64 = &v58[-v8];
  MEMORY[0x28223BE20](v7);
  v10 = &v58[-v9];
  v11 = sub_222C9409C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v58[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *(a1 + *(type metadata accessor for FeaturisedTurn(0) + 24));
  v17 = sub_222B41FA0(v16);
  if (v17)
  {
    if (v17[2])
    {
      v19 = v17[4];
      v18 = v17[5];

      goto LABEL_6;
    }
  }

  v19 = 0;
  v18 = 0;
LABEL_6:
  (*(v12 + 104))(v15, *MEMORY[0x277D5FC10], v11);
  v20 = sub_222C9408C();
  v22 = v21;
  (*(v12 + 8))(v15, v11);
  if (!v18)
  {
    goto LABEL_26;
  }

  if (v19 == v20 && v18 == v22)
  {
  }

  else
  {
    v24 = sub_222C951FC();

    if ((v24 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v25 = sub_222B41FB8(v16);
  if (!v25)
  {
LABEL_18:
    type metadata accessor for RuleResult();
    return swift_storeEnumTagMultiPayload();
  }

  v62 = v25;
  v27 = (v25 + 16);
  v26 = *(v25 + 16);
  if (v26)
  {
    v28 = &v27[2 * v26];
    v30 = *v28;
    v29 = v28[1];
  }

  else
  {
    v30 = 0;
    v29 = 0;
  }

  v32 = v3[13];
  v59 = *MEMORY[0x277D5FB70];
  v33 = v65;
  v60 = v32;
  v61 = v3 + 13;
  v32(v10);
  v34 = sub_222C93E9C();
  v36 = v35;
  v37 = v3[1];
  v37(v10, v33);
  if (v29)
  {
    if (v30 == v34 && v29 == v36)
    {

LABEL_26:

      goto LABEL_18;
    }

    v38 = sub_222C951FC();

    if (v38)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  if (v26)
  {
    if (v26 > *v27)
    {
      __break(1u);
      goto LABEL_51;
    }

    v39 = &v27[2 * v26];
    v41 = *v39;
    v40 = v39[1];
  }

  else
  {
    v41 = 0;
    v40 = 0;
  }

  v43 = v64;
  v42 = v65;
  v60(v64, *MEMORY[0x277D5FB68], v65);
  v44 = sub_222C93E9C();
  v46 = v45;
  v37(v43, v42);
  if (!v40)
  {

    goto LABEL_26;
  }

  if (v41 == v44 && v40 == v46)
  {
  }

  else
  {
    v47 = sub_222C951FC();

    if ((v47 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v48 = *v27;
  v49 = *v27 - 2;
  if (*v27 < 2)
  {
    v49 = 0;
  }

  if (v49 == v48)
  {

    v50 = 0;
    v51 = 0;
    goto LABEL_44;
  }

  if (v49 < v48)
  {
    v52 = v62 + 16 * v49;
    v50 = *(v52 + 32);
    v51 = *(v52 + 40);

LABEL_44:
    v53 = v65;
    v54 = v63;
    v60(v63, v59, v65);
    v55 = sub_222C93E9C();
    v57 = v56;
    v37(v54, v53);
    if (v51)
    {
      if (v50 == v55 && v51 == v57)
      {
      }

      else
      {
        sub_222C951FC();
      }

      goto LABEL_18;
    }

    goto LABEL_26;
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_222B73654(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v47 - v4;
  v6 = type metadata accessor for FeaturisedTurn(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222C434E4(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_222B6537C(v5);
    if (*(a1 + 16))
    {
LABEL_3:
      v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v12 = sub_222C9360C();
      v14 = v13;
LABEL_7:
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v18 = sub_222C9431C();
      __swift_project_value_buffer(v18, qword_280FE2340);

      v19 = sub_222C942FC();
      v20 = sub_222C94A3C();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v48 = v22;
        *v21 = 136315394;
        if (qword_280FDE3A0 != -1)
        {
          swift_once();
        }

        *(v21 + 4) = sub_222B437C0(qword_280FDE3A8, qword_280FDE3B0, &v48);
        *(v21 + 12) = 2080;
        v23 = sub_222B437C0(v12, v14, &v48);

        *(v21 + 14) = v23;
        _os_log_impl(&dword_222B39000, v19, v20, "%s Skipping conversation with id=%s with no dismissal features", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DCA8C0](v22, -1, -1);
        MEMORY[0x223DCA8C0](v21, -1, -1);
      }

      else
      {
      }

      return MEMORY[0x277D84F90];
    }

LABEL_6:
    v14 = 0x8000000222CA9B80;
    v12 = 0xD000000000000014;
    goto LABEL_7;
  }

  sub_222B73D68(v5, v10, type metadata accessor for FeaturisedTurn);
  v15 = *&v10[*(v6 + 24)];
  v16 = sub_222B41494(v15);
  if (v17)
  {
    sub_222B73DD0(v10);
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  v24 = v16;
  v25 = sub_222B72E4C(v10);
  if (qword_280FDE3A0 != -1)
  {
    swift_once();
  }

  v26 = qword_280FDE3A8;
  v27 = qword_280FDE3B0;
  sub_222C8A24C(qword_280FDE3A8, qword_280FDE3B0, v25);
  v28 = sub_222C1EC00(v25);

  if (!v28)
  {
LABEL_38:
    sub_222B73DD0(v10);
    return MEMORY[0x277D84F90];
  }

  v29 = sub_222B41B30(v15);
  if (!v29)
  {
LABEL_33:
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v42 = sub_222C9431C();
    __swift_project_value_buffer(v42, qword_280FE2340);
    v43 = sub_222C942FC();
    v44 = sub_222C94A3C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v48 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_222B437C0(v26, v27, &v48);
      _os_log_impl(&dword_222B39000, v43, v44, "%s message does not have 1 recipient, rejecting", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      MEMORY[0x223DCA8C0](v46, -1, -1);
      MEMORY[0x223DCA8C0](v45, -1, -1);
    }

    goto LABEL_38;
  }

  v30 = v29;
  v31 = v29 >> 62;
  if (!(v29 >> 62))
  {
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_21;
    }

    goto LABEL_32;
  }

  if (sub_222C94C6C() != 1)
  {
LABEL_32:

    goto LABEL_33;
  }

LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C60, &unk_222C9BC50);
  v32 = swift_allocObject();
  v47 = xmmword_222C97C40;
  v33 = v32;
  *(v32 + 16) = xmmword_222C97C40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F30, &qword_222C96CE0);
  v34 = sub_222C9367C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 72);
  v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v47;
  (*(v35 + 16))(v38 + v37, v10, v34);
  if (v31)
  {
    result = sub_222C94C6C();
  }

  else
  {
    result = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!result)
  {

    v40 = 0;
    goto LABEL_30;
  }

  if ((v30 & 0xC000000000000001) != 0)
  {
    v40 = MEMORY[0x223DC9B30](0, v30);
    goto LABEL_28;
  }

  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v40 = *(v30 + 32);

LABEL_28:

LABEL_30:
    v33[7] = &type metadata for MessagesAbandonmentClassification;
    v33[8] = &protocol witness table for MessagesAbandonmentClassification;
    v41 = swift_allocObject();
    v33[4] = v41;
    v41[2] = v24;
    v41[3] = v38;
    v41[4] = MEMORY[0x277D84F90];
    v41[5] = v40;
    sub_222B73DD0(v10);
    return v33;
  }

  __break(1u);
  return result;
}

uint64_t sub_222B73D68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222B73DD0(uint64_t a1)
{
  v2 = type metadata accessor for FeaturisedTurn(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222B73E2C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t CoreDuetEventType.rawValue.getter()
{
  *v0;
  v1 = 0xD000000000000013;
  if (!*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

SiriPrivateLearningInference::CoreDuetEventType_optional __swiftcall CoreDuetEventType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222C94FDC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_222B73F64()
{
  result = qword_27D025700;
  if (!qword_27D025700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025700);
  }

  return result;
}

uint64_t sub_222B73FB8()
{
  v1 = *v0;
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222B74064()
{
  *v0;
  *v0;
  *v0;
  sub_222C9452C();
}

uint64_t sub_222B740FC()
{
  v1 = *v0;
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

void sub_222B741B0(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000011;
  v3 = "nerationTriggered";
  v4 = "INSendMessageIntent";
  if (*v1 != 2)
  {
    v4 = "INPlayMediaIntent";
  }

  v5 = 0xD000000000000013;
  if (*v1)
  {
    v3 = "INStartCallIntent";
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (*v1 > 1u)
  {
    v6 = v4;
  }

  else
  {
    v2 = v5;
    v6 = v3;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t getEnumTagSinglePayload for CoreDuetEventType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CoreDuetEventType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_222B7436C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025798, &qword_222C98F38);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222B75B60();
  sub_222C9536C();
  v10[15] = 0;
  sub_222C9510C();
  if (!v1)
  {
    v10[14] = 1;
    sub_222C9510C();
    v10[13] = 2;
    sub_222C9510C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_222B74524()
{
  v1 = 6581861;
  if (*v0 != 1)
  {
    v1 = 0x61566C616E676973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_222B7457C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222B7586C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222B745A4(uint64_t a1)
{
  v2 = sub_222B75B60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B745E0(uint64_t a1)
{
  v2 = sub_222B75B60();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_222B7461C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_222B75984(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

uint64_t sub_222B7464C(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  return sub_222B7436C(a1);
}

BOOL static ScoreStep.== infix(_:_:)(double *a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v15 = type metadata accessor for ScoreStep();
  return static DomainSuggestionSignal.== infix(_:_:)(a1 + *(v15 + 52), a2 + *(v15 + 52), a3, a4, a5, a6);
}

uint64_t sub_222B74764(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61684365726F6373 && a2 == 0xEB0000000065676ELL;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E676973 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_222C951FC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_222B74868(char a1)
{
  sub_222C952FC();
  MEMORY[0x223DCA0B0](a1 & 1);
  return sub_222C9534C();
}

uint64_t sub_222B748B0(char a1)
{
  if (a1)
  {
    return 0x6C616E676973;
  }

  else
  {
    return 0x61684365726F6373;
  }
}

BOOL sub_222B748EC(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_222B74830(*a1, *a2);
}

uint64_t sub_222B74904(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_222B74868(*v1);
}

uint64_t sub_222B74918(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_222B74840(a1, *v2);
}

uint64_t sub_222B7492C(uint64_t a1, void *a2)
{
  sub_222C952FC();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_222B74840(v9, *v2);
  return sub_222C9534C();
}

uint64_t sub_222B74978(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_222B748B0(*v1);
}

uint64_t sub_222B7498C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_222B74764(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_222B749C0@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_222B75B58();
  *a2 = result;
  return result;
}

uint64_t sub_222B749F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_222B74A48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ScoreStep.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v20 = *(a2 + 24);
  v21 = v4;
  *&v24 = v4;
  *(&v24 + 1) = v20;
  v18 = v6;
  v19 = v5;
  v25 = v5;
  v26 = v6;
  type metadata accessor for ScoreStep.CodingKeys();
  swift_getWitnessTable();
  v7 = sub_222C9513C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v22;
  sub_222C9536C();
  v14 = *(v13 + 2);
  v24 = *v13;
  v25 = v14;
  v27 = 0;
  sub_222B74CC8();
  v15 = v23;
  sub_222C9512C();
  if (!v15)
  {
    v16 = *(a2 + 52);
    v27 = 1;
    *&v24 = v21;
    *(&v24 + 1) = v20;
    v25 = v19;
    v26 = v18;
    type metadata accessor for DomainSuggestionSignal();
    swift_getWitnessTable();
    sub_222C9512C();
  }

  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_222B74CC8()
{
  result = qword_27D025708;
  if (!qword_27D025708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025708);
  }

  return result;
}

uint64_t ScoreStep.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v36 = a2;
  v30 = a6;
  *(&v36 + 1) = a3;
  v37 = a4;
  v38 = a5;
  v33 = type metadata accessor for DomainSuggestionSignal();
  v29 = *(v33 - 8);
  v11 = *(v29 + 64);
  MEMORY[0x28223BE20](v33);
  v32 = &v28 - v12;
  *&v36 = a2;
  *(&v36 + 1) = a3;
  v37 = a4;
  v38 = a5;
  type metadata accessor for ScoreStep.CodingKeys();
  swift_getWitnessTable();
  v34 = sub_222C9509C();
  v31 = *(v34 - 8);
  v13 = *(v31 + 64);
  MEMORY[0x28223BE20](v34);
  v15 = &v28 - v14;
  *&v36 = a2;
  *(&v36 + 1) = a3;
  v37 = a4;
  v38 = a5;
  v16 = type metadata accessor for ScoreStep();
  v28 = *(v16 - 8);
  v17 = *(v28 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v28 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = v35;
  sub_222C9535C();
  if (v21)
  {
    v27 = a1;
  }

  else
  {
    v35 = a1;
    v23 = v31;
    v22 = v32;
    v24 = v33;
    v39 = 0;
    sub_222B750A4();
    sub_222C9507C();
    v25 = v37;
    *v19 = v36;
    *(v19 + 2) = v25;
    LOBYTE(v36) = 1;
    swift_getWitnessTable();
    sub_222C9507C();
    (*(v23 + 8))(v15, v34);
    (*(v29 + 32))(&v19[*(v16 + 52)], v22, v24);
    (*(v28 + 32))(v30, v19, v16);
    v27 = v35;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v27);
}

unint64_t sub_222B750A4()
{
  result = qword_27D025710[0];
  if (!qword_27D025710[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D025710);
  }

  return result;
}

uint64_t sub_222B750F8@<X0>(uint64_t a1@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  *a2 = a3;
  a2[1] = a4;
  a2[2] = a5;
  v7 = *(type metadata accessor for ScoreStep() + 52);
  v8 = type metadata accessor for DomainSuggestionSignal();
  return (*(*(v8 - 8) + 32))(a2 + v7, a1, v8);
}

uint64_t sub_222B75208(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  result = type metadata accessor for DomainSuggestionSignal();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_222B75290(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0xF7)
  {
    v8 = 247;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  if (v6)
  {
    v10 = -2;
  }

  else
  {
    v10 = -1;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_32;
  }

  v12 = v10 + *(*(*(a3 + 16) - 8) + 64) - (((-2 - v9) | v9) + ((-25 - v9) | v9));
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v16 < 2)
    {
LABEL_32:
      v18 = ((a1 + v9 + 24) & ~v9);
      if (v7 > 0xF7)
      {
        v21 = (*(v5 + 48))(&v18[v9 + 1] & ~v9);
        if (v21 >= 2)
        {
          return v21 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v19 = *v18;
        if (v19 >= 3)
        {
          v20 = v19 - 2;
        }

        else
        {
          v20 = 0;
        }

        if (v20 >= 7)
        {
          return v20 - 6;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_32;
  }

LABEL_21:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return v8 + (v12 | v17) + 1;
}

void sub_222B75478(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v7 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (v9 <= 0xF7)
  {
    v12 = 247;
  }

  else
  {
    v12 = v9;
  }

  if (!v8)
  {
    ++v11;
  }

  v13 = v11 - (((-2 - v10) | v10) + ((-25 - v10) | v10)) - 2;
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 == 0 || !v14)
  {
LABEL_21:
    if (v12 < a2)
    {
      goto LABEL_22;
    }

    goto LABEL_31;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v12 < a2)
    {
      goto LABEL_22;
    }

    goto LABEL_31;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_21;
  }

  v6 = 4;
  if (v12 < a2)
  {
LABEL_22:
    v18 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v11 - (((-2 - v10) | v10) + ((-25 - v10) | v10)) != 2)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_61:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_61;
            }
          }

          goto LABEL_58;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_61;
      }
    }

LABEL_58:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_31:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *&a1[v13] = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v6)
  {
    goto LABEL_37;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  v21 = (&a1[v10 + 24] & ~v10);
  if (v9 > 0xF7)
  {
    v22 = (&v21[v10 + 1] & ~v10);
    if (v9 >= a2)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;

      v26(&v21[v10 + 1] & ~v10, v27);
    }

    else
    {
      if (v11 <= 3)
      {
        v23 = ~(-1 << (8 * v11));
      }

      else
      {
        v23 = -1;
      }

      if (v11)
      {
        v24 = v23 & (~v9 + a2);
        if (v11 <= 3)
        {
          v25 = v11;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v11);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else
  {
    *v21 = a2 + 8;
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ScoreChange(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ScoreChange(uint64_t result, int a2, int a3)
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

uint64_t sub_222B7586C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x61566C616E676973 && a2 == 0xEB0000000065756CLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_222C951FC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double sub_222B75984(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257A8, &qword_222C98F40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222B75B60();
  sub_222C9535C();
  v14 = 0;
  sub_222C9505C();
  v9 = v8;
  v13 = 1;
  sub_222C9505C();
  v12 = 2;
  sub_222C9505C();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v9;
}

unint64_t sub_222B75B60()
{
  result = qword_27D0257A0;
  if (!qword_27D0257A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0257A0);
  }

  return result;
}

unint64_t sub_222B75BC8()
{
  result = qword_27D0257B0;
  if (!qword_27D0257B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0257B0);
  }

  return result;
}

unint64_t sub_222B75C20()
{
  result = qword_27D0257B8;
  if (!qword_27D0257B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0257B8);
  }

  return result;
}

unint64_t sub_222B75C78()
{
  result = qword_27D0257C0;
  if (!qword_27D0257C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0257C0);
  }

  return result;
}

uint64_t MediaPlayClassifier.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257C8, &qword_222C99050);
  v1 = sub_222C944EC();
  MEMORY[0x223DC9330](v1);

  MEMORY[0x223DC9330](93, 0xE100000000000000);
  *(v0 + 16) = 91;
  *(v0 + 24) = 0xE100000000000000;
  return v0;
}

uint64_t MediaPlayClassifier.init()()
{
  type metadata accessor for MediaPlayClassifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257C8, &qword_222C99050);
  v1 = sub_222C944EC();
  MEMORY[0x223DC9330](v1);

  MEMORY[0x223DC9330](93, 0xE100000000000000);
  *(v0 + 16) = 91;
  *(v0 + 24) = 0xE100000000000000;
  return v0;
}

uint64_t sub_222B75E28@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v133 = a2;
  v7 = sub_222C9367C();
  v134 = *(v7 - 8);
  v8 = *(v134 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MediaPlayClassification();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v132 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v135 = &v118 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = (&v118 - v18);
  v20 = a1[1];
  v136 = *a1;
  v21 = a1[2];
  sub_222B42228(v21, &v145);
  if (!v146)
  {
    if (qword_280FDF1F0 != -1)
    {
      swift_once();
    }

    *(&v143 + 1) = &type metadata for PIMSConstraintMismatch;
    *v144 = sub_222B77B4C();
    *&v142 = 0xD000000000000016;
    *(&v142 + 1) = 0x8000000222CA9C80;
    LOBYTE(v143) = 0;
    sub_222C93B5C();
    __swift_destroy_boxed_opaque_existential_0Tm(&v142);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v59 = sub_222C9431C();
    __swift_project_value_buffer(v59, qword_280FE2340);

    v60 = sub_222C942FC();
    v61 = sub_222C94A3C();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = v12;
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v65 = v4;
      v66 = v64;
      *&v142 = v64;
      *v63 = 136315138;
      *(v63 + 4) = sub_222B437C0(*(v65 + 16), *(v65 + 24), &v142);
      _os_log_impl(&dword_222B39000, v60, v61, "%s Can't classify media play, attached now playing event not found", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v66);
      MEMORY[0x223DCA8C0](v66, -1, -1);
      v67 = v63;
      v12 = v62;
      MEMORY[0x223DCA8C0](v67, -1, -1);
    }

    return (*(v12 + 56))(a3, 1, 1, v11);
  }

  v126 = v20;
  v137 = v146;
  v22 = v11;
  v127 = v10;
  v125 = v7;
  v23 = a3;
  v138 = v12;
  v24 = v145;
  v25 = v147;
  v26 = v148;
  sub_222B4183C(v21, &v139);
  v142 = v139;
  v143 = v140;
  *v144 = v141[0];
  *&v144[9] = *(v141 + 9);
  v27 = *(&v139 + 1);
  if (!*(&v139 + 1))
  {
    sub_222B5EE44(v24, v137);
LABEL_22:
    v49 = v22;
LABEL_23:
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v69 = sub_222C9431C();
    __swift_project_value_buffer(v69, qword_280FE2340);

    v52 = sub_222C942FC();
    v53 = sub_222C94A4C();

    if (!os_log_type_enabled(v52, v53))
    {
      goto LABEL_28;
    }

    v54 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v71 = v4;
    v57 = v70;
    *&v139 = v70;
    *v54 = 136315138;
    *(v54 + 4) = sub_222B437C0(*(v71 + 16), *(v71 + 24), &v139);
    v58 = "%s Cannot extract media ids from NowPlayingEvent/PlayMediaIntent";
    goto LABEL_27;
  }

  v129 = v24;
  v130 = v25;
  v131 = v26;
  v121 = v19;
  v128 = v4;
  v28 = v142;

  v30 = sub_222B423A0(v29);
  v32 = v31;

  v124 = v32;
  if (!v32)
  {
    sub_222B5EE44(v129, v137);
    sub_222B4FCD4(&v142, &qword_27D025370, &qword_222C98310);
    v4 = v128;
    goto LABEL_22;
  }

  v123 = v22;
  v122 = v23;
  *&v139 = 47;
  *(&v139 + 1) = 0xE100000000000000;
  MEMORY[0x28223BE20](v33);
  *(&v118 - 2) = &v139;

  v35 = sub_222B76E28(0x7FFFFFFFFFFFFFFFLL, 1, sub_222B77BA0, (&v118 - 4), v28, v27, v34);
  sub_222B4FCD4(&v142, &qword_27D025370, &qword_222C98310);
  v36 = *(v35 + 16);
  if (!v36)
  {
    sub_222B5EE44(v129, v137);

    v23 = v122;
    v49 = v123;
    v4 = v128;
    goto LABEL_23;
  }

  v37 = (v35 + 32 * v36);
  v39 = *v37;
  v38 = v37[1];
  v41 = v37[2];
  v40 = v37[3];

  v120 = v38;
  v119 = v41;
  v42 = v124;
  v43 = sub_222B77240(v39, v38, v41, v40, v30, v124);
  v44 = v129;
  if (v43)
  {

    v46 = sub_222B423B8(v45);
    v48 = v47;

    if (v48)
    {
      sub_222B5EE44(v44, v137);
      v49 = v123;
      if (qword_280FDF1F0 != -1)
      {
        swift_once();
      }

      *(&v140 + 1) = &type metadata for PIMSConstraintMismatch;
      *&v141[0] = sub_222B77B4C();
      *&v139 = 0xD000000000000016;
      *(&v139 + 1) = 0x8000000222CA9C80;
      LOBYTE(v140) = 2;
      sub_222C93B5C();
      __swift_destroy_boxed_opaque_existential_0Tm(&v139);
      v23 = v122;
      v50 = v128;
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v51 = sub_222C9431C();
      __swift_project_value_buffer(v51, qword_280FE2340);

      v52 = sub_222C942FC();
      v53 = sub_222C94A4C();

      if (!os_log_type_enabled(v52, v53))
      {
        goto LABEL_28;
      }

      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = v50;
      v57 = v55;
      *&v139 = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_222B437C0(*(v56 + 16), *(v56 + 24), &v139);
      v58 = "%s Cannot extract TotalPlayLength from NowPlayingEvent";
LABEL_27:
      _os_log_impl(&dword_222B39000, v52, v53, v58, v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v57);
      MEMORY[0x223DCA8C0](v57, -1, -1);
      MEMORY[0x223DCA8C0](v54, -1, -1);
LABEL_28:

      return (*(v138 + 56))(v23, 1, 1, v49);
    }

    v86 = sub_222B41CFC(v21);
    v87 = v44;
    v88 = v134;
    v89 = *(v134 + 16);
    v90 = v127;
    v91 = v125;
    v89(v127, v133, v125);
    v92 = v121;
    *v121 = v46;
    *(v92 + 8) = v86 & 1;
    v93 = v126;
    *(v92 + 16) = v136;
    *(v92 + 24) = v93;
    *(v92 + 32) = v87;
    v94 = v137;
    *(v92 + 40) = v137;
    v95 = *(v123 + 32);
    v89((v92 + v95), v90, v91);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024F30, &qword_222C96CE0);
    v96 = *(v88 + 72);
    v97 = (*(v88 + 80) + 32) & ~*(v88 + 80);
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_222C97C40;
    v89((v98 + v97), v92 + v95, v91);
    v99 = v123;
    *(v92 + *(v123 + 36)) = v98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024ED0, &qword_222C96C80);
    v100 = swift_allocObject();
    *(v100 + 16) = xmmword_222C96900;
    *(v100 + 32) = v136;
    v101 = v129;
    *(v100 + 40) = v126;
    *(v100 + 48) = v101;
    *(v100 + 56) = v94;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_222B5EE44(v101, v94);
    (*(v88 + 8))(v127, v91);
    *(v92 + *(v99 + 40)) = v100;
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v102 = sub_222C9431C();
    __swift_project_value_buffer(v102, qword_280FE2340);
    v103 = v135;
    sub_222B77C5C(v92, v135, type metadata accessor for MediaPlayClassification);
    v104 = v128;

    v105 = sub_222C942FC();
    v106 = sub_222C94A3C();

    v107 = os_log_type_enabled(v105, v106);
    v108 = v122;
    if (v107)
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v111 = v104;
      v112 = v110;
      *&v139 = v110;
      *v109 = 136315394;
      *(v109 + 4) = sub_222B437C0(*(v111 + 16), *(v111 + 24), &v139);
      *(v109 + 12) = 2080;
      sub_222B77C5C(v103, v132, type metadata accessor for MediaPlayClassification);
      v113 = sub_222C944EC();
      v115 = v114;
      sub_222B77D34(v103, type metadata accessor for MediaPlayClassification);
      v99 = v123;
      v116 = sub_222B437C0(v113, v115, &v139);

      *(v109 + 14) = v116;
      _os_log_impl(&dword_222B39000, v105, v106, "%s classification generated: %s", v109, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v112, -1, -1);
      v117 = v109;
      v108 = v122;
      MEMORY[0x223DCA8C0](v117, -1, -1);
    }

    else
    {

      sub_222B77D34(v103, type metadata accessor for MediaPlayClassification);
    }

    sub_222B77BF8(v92, v108);
    return (*(v138 + 56))(v108, 0, 1, v99);
  }

  else
  {
    v136 = v39;
    v72 = v30;
    sub_222B5EE44(v129, v137);
    v73 = v123;
    if (qword_280FDF1F0 != -1)
    {
      swift_once();
    }

    *(&v140 + 1) = &type metadata for PIMSConstraintMismatch;
    *&v141[0] = sub_222B77B4C();
    *&v139 = 0xD000000000000016;
    *(&v139 + 1) = 0x8000000222CA9C80;
    LOBYTE(v140) = 1;
    sub_222C93B5C();
    __swift_destroy_boxed_opaque_existential_0Tm(&v139);
    v74 = v128;
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v75 = sub_222C9431C();
    __swift_project_value_buffer(v75, qword_280FE2340);

    v76 = sub_222C942FC();
    v77 = sub_222C94A4C();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = v74;
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *&v139 = v80;
      *v79 = 136315650;
      *(v79 + 4) = sub_222B437C0(*(v78 + 16), *(v78 + 24), &v139);
      *(v79 + 12) = 2080;
      v81 = sub_222B437C0(v72, v42, &v139);

      *(v79 + 14) = v81;
      *(v79 + 22) = 2080;
      v82 = MEMORY[0x223DC92B0](v136, v120, v119, v40);
      v84 = v83;

      v85 = sub_222B437C0(v82, v84, &v139);

      *(v79 + 24) = v85;
      _os_log_impl(&dword_222B39000, v76, v77, "%s NowPlayingEvent (%s) and PlayMediaIntent (%s) media ids do not match", v79, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v80, -1, -1);
      MEMORY[0x223DCA8C0](v79, -1, -1);
    }

    else
    {
    }

    return (*(v138 + 56))(v122, 1, 1, v73);
  }
}

uint64_t MediaPlayClassifier.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t MediaPlayClassifier.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_222B76E28@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_222C9462C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_222B4A758(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_222B4A758((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_222C945FC();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_222C9454C();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_222C9454C();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_222C9462C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_222B4A758(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_222C9462C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_222B4A758(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_222B4A758((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_222C9454C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222B771E8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_222C951FC() & 1;
  }
}

uint64_t sub_222B77240(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_222C9515C() & 1;
  }
}

uint64_t sub_222B772B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257D8, &unk_222C990C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v70 - v4;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024FD8, &qword_222C96D88);
  v86 = *(v84 - 8);
  v6 = *(v86 + 64);
  v7 = MEMORY[0x28223BE20](v84);
  v78 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v79 = &v70 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v71 = &v70 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v70 - v13;
  v15 = type metadata accessor for FeaturisedTurn(0);
  v16 = *(*(v15 - 8) + 64);
  result = MEMORY[0x28223BE20](v15);
  v85 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  v21 = MEMORY[0x277D84F90];
  v80 = v5;
  v75 = v20;
  if (v20)
  {
    v22 = 0;
    v74 = *(result + 28);
    v73 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v72 = *(v18 + 72);
    v23 = MEMORY[0x277D84F90];
    while (1)
    {
      v24 = v85;
      sub_222B77C5C(v73 + v72 * v22, v85, type metadata accessor for FeaturisedTurn);
      v25 = *(v24 + v74);
      v26 = *(v25 + 16);
      if (v26)
      {
        v76 = v22;
        v77 = v23;
        v90 = v21;
        sub_222B4C4DC(0, v26, 0);
        v27 = v90;
        v83 = sub_222C9367C();
        v28 = *(v83 - 8);
        v29 = *(v28 + 16);
        v81 = v28 + 16;
        v82 = v29;
        v30 = (v25 + 64);
        do
        {
          v31 = *(v30 - 3);
          v33 = *(v30 - 2);
          v32 = *(v30 - 1);
          v34 = *v30;
          v35 = v85;
          v36 = *(v84 + 48);
          *v14 = *(v30 - 4);
          *(v14 + 1) = v31;
          *(v14 + 2) = v33;
          *(v14 + 3) = v32;
          *(v14 + 4) = v34;
          v82(&v14[v36], v35, v83);
          v90 = v27;
          v38 = *(v27 + 16);
          v37 = *(v27 + 24);

          if (v38 >= v37 >> 1)
          {
            sub_222B4C4DC(v37 > 1, v38 + 1, 1);
            v27 = v90;
          }

          *(v27 + 16) = v38 + 1;
          sub_222B77CC4(v14, v27 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v38);
          v30 += 5;
          --v26;
        }

        while (v26);
        v5 = v80;
        v23 = v77;
        v21 = MEMORY[0x277D84F90];
        v22 = v76;
      }

      else
      {
        v27 = v21;
      }

      result = sub_222B77D34(v85, type metadata accessor for FeaturisedTurn);
      v39 = *(v27 + 16);
      v40 = v23[2];
      v41 = v40 + v39;
      if (__OFADD__(v40, v39))
      {
        goto LABEL_59;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) != 0 && v41 <= v23[3] >> 1)
      {
        if (!*(v27 + 16))
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v40 <= v41)
        {
          v42 = v40 + v39;
        }

        else
        {
          v42 = v40;
        }

        result = sub_222B4A338(result, v42, 1, v23);
        v23 = result;
        if (!*(v27 + 16))
        {
LABEL_3:

          if (v39)
          {
            goto LABEL_60;
          }

          goto LABEL_4;
        }
      }

      if ((v23[3] >> 1) - v23[2] < v39)
      {
        goto LABEL_62;
      }

      v43 = (*(v86 + 80) + 32) & ~*(v86 + 80);
      v44 = *(v86 + 72);
      swift_arrayInitWithCopy();

      if (v39)
      {
        v45 = v23[2];
        v46 = __OFADD__(v45, v39);
        v47 = v45 + v39;
        if (v46)
        {
          goto LABEL_63;
        }

        v23[2] = v47;
      }

LABEL_4:
      if (++v22 == v75)
      {
        goto LABEL_26;
      }
    }
  }

  v23 = MEMORY[0x277D84F90];
LABEL_26:
  v48 = v23[2];
  if (v48)
  {
    v49 = 0;
    v50 = MEMORY[0x277D84F90];
    v51 = v71;
    v52 = v23;
    while (v49 < v23[2])
    {
      v53 = (*(v86 + 80) + 32) & ~*(v86 + 80);
      v54 = *(v86 + 72);
      sub_222B77D94(v23 + v53 + v54 * v49, v51);
      v55 = *(v51 + 24) == 0xD000000000000011 && 0x8000000222CA87C0 == *(v51 + 32);
      if (v55 || (sub_222C951FC() & 1) != 0)
      {
        sub_222B77CC4(v51, v78);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v90 = v50;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C4DC(0, *(v50 + 16) + 1, 1);
          v50 = v90;
        }

        v58 = *(v50 + 16);
        v57 = *(v50 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_222B4C4DC(v57 > 1, v58 + 1, 1);
          v50 = v90;
        }

        *(v50 + 16) = v58 + 1;
        result = sub_222B77CC4(v78, v50 + v53 + v58 * v54);
        v51 = v71;
        v23 = v52;
      }

      else
      {
        result = sub_222B4FCD4(v51, &qword_27D024FD8, &qword_222C96D88);
      }

      ++v49;
      v5 = v80;
      if (v48 == v49)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
  }

  else
  {
    v50 = MEMORY[0x277D84F90];
LABEL_42:

    v59 = *(v50 + 16);
    if (!v59)
    {
      v61 = MEMORY[0x277D84F90];
LABEL_57:

      return v61;
    }

    v60 = 0;
    v61 = MEMORY[0x277D84F90];
    while (v60 < *(v50 + 16))
    {
      v62 = v79;
      sub_222B77D94(v50 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v60, v79);
      v63 = *(v84 + 48);
      v64 = *(v62 + 24);
      v65 = *(v62 + 32);
      v90 = *v62;
      v91 = *(v62 + 8);
      v92 = v64;
      v93 = v65;
      sub_222B75E28(&v90, v62 + v63, v5);
      v66 = type metadata accessor for MediaPlayClassification();
      if ((*(*(v66 - 8) + 48))(v5, 1, v66) == 1)
      {
        sub_222B4FCD4(v5, &qword_27D0257D8, &unk_222C990C0);
        v87 = 0u;
        v88 = 0u;
        v89 = 0;
      }

      else
      {
        *(&v88 + 1) = v66;
        v89 = &protocol witness table for MediaPlayClassification;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v87);
        sub_222B77BF8(v5, boxed_opaque_existential_1);
      }

      sub_222B4FCD4(v79, &qword_27D024FD8, &qword_222C96D88);
      if (*(&v88 + 1))
      {
        sub_222B405A0(&v87, &v90);
        sub_222B405A0(&v90, &v87);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = sub_222B4A314(0, v61[2] + 1, 1, v61);
        }

        v69 = v61[2];
        v68 = v61[3];
        if (v69 >= v68 >> 1)
        {
          v61 = sub_222B4A314((v68 > 1), v69 + 1, 1, v61);
        }

        v61[2] = v69 + 1;
        result = sub_222B405A0(&v87, &v61[5 * v69 + 4]);
        v5 = v80;
      }

      else
      {
        result = sub_222B4FCD4(&v87, &qword_27D0257E0, qword_222C990D0);
      }

      if (v59 == ++v60)
      {
        goto LABEL_57;
      }
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

unint64_t sub_222B77B4C()
{
  result = qword_27D0257D0;
  if (!qword_27D0257D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0257D0);
  }

  return result;
}

uint64_t sub_222B77BA0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_222C951FC() & 1;
  }
}

uint64_t sub_222B77BF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaPlayClassification();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222B77C5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222B77CC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024FD8, &qword_222C96D88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222B77D34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222B77D94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024FD8, &qword_222C96D88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222B77E04@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = (a1 + *MEMORY[0x277D5FB98]);
  v5 = *v4;
  v9 = v4[1];
  v6 = *(a2 + 8);
  sub_222C9467C();
  sub_222B43F34(v12, v10);
  if (!v11)
  {
    sub_222B43FA4(v10);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v7 = 1;
    goto LABEL_6;
  }

  sub_222C93EFC();

  v7 = 0;
LABEL_6:
  sub_222B43FA4(v12);
  return (*(*(v5 - 8) + 56))(a3, v7, 1, v5);
}

uint64_t sub_222B77F44(uint64_t a1)
{
  sub_222B43E3C(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = result;

    return v2;
  }

  return result;
}

uint64_t sub_222B77FC0(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_222B77F44(a1) & 1;
}

uint64_t sub_222B77FE8(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for FeaturisedTurn(0) + 24));
  v2 = sub_222B41D48(v1);
  if (v3)
  {
    if (v2 == 0xD000000000000014 && v3 == 0x8000000222CA9CA0)
    {
LABEL_12:
      v5 = 1;
    }

    else
    {
      v5 = sub_222C951FC();
    }

    goto LABEL_13;
  }

  result = sub_222B41EE0(v1);
  if (!result)
  {
LABEL_16:
    result = sub_222B41EF8(v1);
    if (!result)
    {
      v5 = 0;
      return v5 & 1;
    }

    v14 = result;
    v15 = (result + 40);
    v16 = -*(result + 16);
    v17 = -1;
    do
    {
      v5 = v16 + v17 != -1;
      if (v16 + v17 == -1)
      {
        break;
      }

      if (++v17 >= *(v14 + 16))
      {
        goto LABEL_24;
      }

      v18 = v15 + 2;
      v20 = *(v15 - 1);
      v19 = *v15;

      LOBYTE(v20) = sub_222B42DF0();

      v15 = v18;
    }

    while ((v20 & 1) == 0);
LABEL_13:

    return v5 & 1;
  }

  v7 = result;
  v8 = (result + 40);
  v9 = -*(result + 16);
  v10 = -1;
  while (1)
  {
    if (v9 + v10 == -1)
    {

      goto LABEL_16;
    }

    if (++v10 >= *(v7 + 16))
    {
      break;
    }

    v11 = v8 + 2;
    v13 = *(v8 - 1);
    v12 = *v8;

    LOBYTE(v13) = sub_222B42DF0();

    v8 = v11;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_222B781BC(uint64_t a1)
{
  v2 = type metadata accessor for FeaturisedTurn(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  v41 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9 = *(v4 + 72);
  v39 = 0x8000000222CA9CA0;
  v40 = v9;
  v37 = v7;
  v38 = v2;
  while (1)
  {
    sub_222B78534(v41 + v40 * v8, v6);
    v10 = *&v6[*(v2 + 24)];
    v11 = sub_222B41D48(v10);
    if (!v12)
    {
      break;
    }

    if (v11 == 0xD000000000000014 && v12 == v39)
    {
LABEL_26:
    }

    else
    {
      v14 = sub_222C951FC();

      if ((v14 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = sub_222B41EF8(v10);
    if (!result)
    {
      goto LABEL_5;
    }

    v30 = result;
    v31 = (result + 40);
    v32 = -*(result + 16);
    v33 = -1;
    while (v32 + v33 != -1)
    {
      if (++v33 >= *(v30 + 16))
      {
        __break(1u);
        goto LABEL_36;
      }

      v34 = v31 + 2;
      v35 = *v31;
      v44 = *(v31 - 1);
      v45 = v35;
      v42 = 0x6F724764656D614ELL;
      v43 = 0xEA00000000007075;
      sub_222B78598();
      result = sub_222C94BEC();
      v31 = v34;
      if (result)
      {

        sub_222B73DD0(v6);
        return 1;
      }
    }

LABEL_4:

LABEL_5:
    ++v8;
    sub_222B73DD0(v6);
    if (v8 == v7)
    {
      return 0;
    }
  }

  result = sub_222B41EE0(v10);
  if (!result)
  {
LABEL_20:
    result = sub_222B41EF8(v10);
    if (!result)
    {
      goto LABEL_5;
    }

    v23 = result;
    v24 = (result + 40);
    v25 = -*(result + 16);
    v26 = -1;
    while (v25 + v26 != -1)
    {
      if (++v26 >= *(v23 + 16))
      {
        goto LABEL_37;
      }

      v27 = v24 + 2;
      v29 = *(v24 - 1);
      v28 = *v24;

      LOBYTE(v29) = sub_222B42DF0();

      v24 = v27;
      if (v29)
      {
        goto LABEL_25;
      }
    }

    v7 = v37;
    v2 = v38;
    goto LABEL_4;
  }

  v16 = result;
  v17 = (result + 40);
  v18 = -*(result + 16);
  v19 = -1;
  while (1)
  {
    if (v18 + v19 == -1)
    {

      v7 = v37;
      v2 = v38;
      goto LABEL_20;
    }

    if (++v19 >= *(v16 + 16))
    {
      break;
    }

    v20 = v17 + 2;
    v22 = *(v17 - 1);
    v21 = *v17;

    LOBYTE(v22) = sub_222B42DF0();

    v17 = v20;
    if (v22)
    {
LABEL_25:
      v7 = v37;
      v2 = v38;
      goto LABEL_26;
    }
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_222B78534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturisedTurn(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_222B78598()
{
  result = qword_27D0257E8[0];
  if (!qword_27D0257E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D0257E8);
  }

  return result;
}

uint64_t sub_222B78634()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t PIMSFatalError.eventName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PIMSFatalError.eventName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

unint64_t PIMSFatalError.getLoggableProperties()()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025410, &unk_222C991B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222C97C40;
  *(inited + 32) = 0x616552726F727265;
  v3 = inited + 32;
  *(inited + 40) = 0xEB000000006E6F73;
  if (v1 > 4)
  {
    v10 = 0xD000000000000047;
    v11 = "iaIntentEventNotPresent";
    v12 = 0xD000000000000049;
    if (v1 != 8)
    {
      v12 = 0xD000000000000033;
      v11 = "iaTaskRequestIdNotPresent";
    }

    if (v1 == 7)
    {
      v11 = "ingEventNotPresent";
    }

    else
    {
      v10 = v12;
    }

    v13 = "UnderstandingUnredactionFailed";
    v14 = 0xD000000000000042;
    if (v1 == 5)
    {
      v14 = 0xD00000000000003ELL;
      v13 = "actionsNotPresent";
    }

    if (v1 <= 6)
    {
      v9 = v14;
    }

    else
    {
      v9 = v10;
    }

    if (v1 <= 6)
    {
      v4 = v13;
    }

    else
    {
      v4 = v11;
    }
  }

  else
  {
    v4 = "diaItemSearchResultsNotPresent";
    v5 = 0xD000000000000036;
    v6 = "imaryTaskUSONotPresent";
    v7 = 0xD00000000000003CLL;
    if (v1 != 3)
    {
      v7 = 0xD000000000000041;
      v6 = "UnderstandingGraphNotPresent";
    }

    if (v1 != 2)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = "PlaybackContextTier1NotPresent";
    if (!v1)
    {
      v8 = "BMNowPlayingEvent";
    }

    if (v1 <= 1)
    {
      v9 = 0xD00000000000003ELL;
    }

    else
    {
      v9 = v5;
    }

    if (v1 <= 1)
    {
      v4 = v8;
    }
  }

  v15 = MEMORY[0x277D5FD28];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v15;
  *(inited + 48) = v9;
  *(inited + 56) = v4 | 0x8000000000000000;
  v16 = sub_222B628C4(inited);
  swift_setDeallocating();
  sub_222B629F8(v3);
  return v16;
}

unint64_t PIMSFatalErrorReason.rawValue.getter()
{
  v1 = 0xD00000000000003ELL;
  v2 = *v0;
  if (v2 > 4)
  {
    v6 = 0xD000000000000047;
    v7 = 0xD000000000000049;
    if (v2 != 8)
    {
      v7 = 0xD000000000000033;
    }

    if (v2 != 7)
    {
      v6 = v7;
    }

    if (v2 != 5)
    {
      v1 = 0xD000000000000042;
    }

    if (*v0 <= 6u)
    {
      result = v1;
    }

    else
    {
      result = v6;
    }

    *v0;
  }

  else
  {
    v3 = 0xD000000000000036;
    v4 = 0xD00000000000003CLL;
    if (v2 != 3)
    {
      v4 = 0xD000000000000041;
    }

    if (v2 != 2)
    {
      v3 = v4;
    }

    *v0;
    if (*v0 <= 1u)
    {
      result = 0xD00000000000003ELL;
    }

    else
    {
      result = v3;
    }

    *v0;
  }

  return result;
}

SiriPrivateLearningInference::PIMSFatalErrorReason_optional __swiftcall PIMSFatalErrorReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222C94FDC();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_222B78A6C()
{
  v1 = *v0;
  sub_222C952FC();
  sub_222BBEEE4();
  return sub_222C9534C();
}

uint64_t sub_222B78ABC()
{
  v1 = *v0;
  sub_222C952FC();
  sub_222BBEEE4();
  return sub_222C9534C();
}

unint64_t sub_222B78B0C@<X0>(unint64_t *a1@<X8>)
{
  result = PIMSFatalErrorReason.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_222B78B38()
{
  result = qword_27D025870;
  if (!qword_27D025870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025870);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PIMSFatalErrorReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PIMSFatalErrorReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_222B78D14@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a2;
  v10 = sub_222C9367C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v105 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v103 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v107 = &v93 - v18;
  v106 = type metadata accessor for ThinMediaGroundTruth();
  v104 = *(v106 - 8);
  v19 = *(v104 + 64);
  MEMORY[0x28223BE20](v106);
  v102 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025888, &unk_222C993A0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v93 - v23;
  v25 = type metadata accessor for MediaFeedbackGroundTruth();
  v101 = *(v25 - 8);
  v26 = *(v101 + 64);
  MEMORY[0x28223BE20](v25);
  v100 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025890, &unk_222C9C7B0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v31 = MEMORY[0x28223BE20](v30);
  v32 = MEMORY[0x28223BE20](v31);
  v33 = MEMORY[0x28223BE20](v32);
  v109 = &v93 - v34;
  v35 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  if (v9 == 8)
  {

    return sub_222B79B14(a1, a5);
  }

  else
  {
    v94 = v36;
    v95 = v41;
    v96 = v40;
    v97 = v39;
    v108 = a1;
    v98 = v11;
    v99 = v10;
    (*(v38 + 16))(&v93 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0), a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024FC8, &unk_222C993B0);
    if (swift_dynamicCast())
    {
      sub_222B79B78(&v120, &v116);
      v43 = v117;
      v44 = v118;
      __swift_project_boxed_opaque_existential_1(&v116, v117);
      v45 = (*(v44 + 24))(v43, v44);
      v46 = type metadata accessor for PlusMediaSuggestion();
      v47 = (v108 + v46[6]);
      v48 = v47[2];
      v121 = v47[1];
      v122 = v48;
      v123 = *(v47 + 24);
      v93 = v47;
      v120 = *v47;
      if (*(v45 + 16))
      {
        v49 = sub_222B8CB28(&v120);
        if (v50)
        {
          v51 = *(*(v45 + 56) + 8 * v49);
        }

        else
        {
          v51 = MEMORY[0x277D84FA0];
        }
      }

      else
      {
        v51 = MEMORY[0x277D84FA0];
      }

      v52 = v108;

      v115 = v51;
      v53 = *(v52 + v46[8]);
      if (v53 <= 0.0 && (v9 & 0xFE) == 6)
      {
        sub_222B6A060(&v111, 5);
      }

      v54 = v117;
      v55 = v119;
      v56 = __swift_project_boxed_opaque_existential_1(&v116, v117);
      *(&v112 + 1) = v54;
      *&v113 = v55;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v111);
      (*(*(v54 - 8) + 16))(boxed_opaque_existential_1, v56, v54);
      ThinMediaGroundTruth.init(completeGroundTruth:)(&v111, v109);
      sub_222B79B90(&v116, &v111);
      if (swift_dynamicCast())
      {
        v58 = v120;
        (*(v101 + 56))(v24, 0, 1, v25);
        v59 = v24;
        v60 = v100;
        sub_222B79C64(v59, v100, type metadata accessor for MediaFeedbackGroundTruth);
        if (v58 == *(v60 + *(v25 + 28)) || (sub_222C951FC()) && (PlusMediaSuggestion.isCorrection.getter())
        {
          sub_222B6A060(&v111, 7);
        }

        sub_222B79CCC(v60, type metadata accessor for MediaFeedbackGroundTruth);
      }

      else
      {
        (*(v101 + 56))(v24, 1, 1, v25);
        sub_222B4FCD4(v24, &qword_27D025888, &unk_222C993A0);
      }

      v61 = *(v52 + v46[7]);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D0258A0, &unk_222C993C0);
      v62 = *(v94 + 72);
      v63 = (*(v94 + 80) + 32) & ~*(v94 + 80);
      v64 = swift_allocObject();
      sub_222B4FC6C(v109, v64 + v63, &qword_27D025890, &unk_222C9C7B0);
      v65 = v95;
      sub_222B4FC6C(v64 + v63, v95, &qword_27D025890, &unk_222C9C7B0);
      v66 = v65;
      v67 = v96;
      sub_222B79BF4(v66, v96);
      v68 = *(v104 + 48);
      if (v68(v67, 1, v106) == 1)
      {
        sub_222B4FCD4(v67, &qword_27D025890, &unk_222C9C7B0);
        v69 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_222B79C64(v67, v102, type metadata accessor for ThinMediaGroundTruth);
        v69 = MEMORY[0x277D84F90];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = sub_222B4A864(0, v69[2] + 1, 1, v69);
        }

        v71 = v69[2];
        v70 = v69[3];
        if (v71 >= v70 >> 1)
        {
          v69 = sub_222B4A864(v70 > 1, v71 + 1, 1, v69);
        }

        v69[2] = v71 + 1;
        sub_222B79C64(v102, v69 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v71, type metadata accessor for ThinMediaGroundTruth);
      }

      swift_setDeallocating();
      sub_222B4FCD4(v64 + v63, &qword_27D025890, &unk_222C9C7B0);
      swift_deallocClassInstance();
      *&v111 = v61;

      sub_222B49340(v69);
      v104 = v111;
      v72 = v97;
      sub_222B4FC6C(v109, v97, &qword_27D025890, &unk_222C9C7B0);
      v73 = v106;
      if (v68(v72, 1, v106) == 1)
      {
        sub_222B4FCD4(v72, &qword_27D025890, &unk_222C9C7B0);
        v74 = v99;
        v75 = v98;
        v76 = v108;
      }

      else
      {
        v77 = *(v72 + *(v73 + 28));
        sub_222B79CCC(v72, type metadata accessor for ThinMediaGroundTruth);
        v74 = v99;
        v75 = v98;
        v76 = v108;
        if (v77 == 1)
        {
          sub_222B6A060(&v111, 4);
        }
      }

      v78 = v107;
      (*(v75 + 56))(v107, 1, 1, v74);
      v79 = *(v76 + v46[11]);
      v80 = v115;

      v106 = sub_222C6E8A8(v80, v79);
      v81 = v103;
      sub_222B4FC6C(v78, v103, &unk_27D026290, &qword_222C96B40);
      v82 = *(v75 + 48);
      if (v82(v81, 1, v74) == 1)
      {
        v83 = *(v75 + 16);
        v83(v105, v76, v74);
        if (v82(v81, 1, v74) != 1)
        {
          sub_222B4FCD4(v81, &unk_27D026290, &qword_222C96B40);
        }

        v84 = v105;
      }

      else
      {
        v85 = v81;
        v84 = v105;
        (*(v75 + 32))(v105, v85, v74);
        v83 = *(v75 + 16);
      }

      v86 = *(v108 + v46[5]);
      v87 = v93[1];
      v113 = v93[2];
      v114 = *(v93 + 24);
      v111 = *v93;
      v112 = v87;
      v88 = *(v108 + v46[10]);
      v89 = *(v108 + v46[9]);
      v83(a5, v84, v74);
      *(a5 + v46[5]) = v86;
      v90 = a5 + v46[6];
      v91 = v112;
      *v90 = v111;
      *(v90 + 16) = v91;
      *(v90 + 32) = v113;
      *(v90 + 48) = v114;
      swift_retain_n();
      sub_222B554C0(&v111, v110);

      *(a5 + v46[7]) = sub_222C16F98(20, v104);
      *(a5 + v46[10]) = v88;
      *(a5 + v46[11]) = v106;
      *(a5 + v46[8]) = v53;
      v92 = sub_222C17258(0x14uLL, v89);

      (*(v75 + 8))(v84, v74);
      sub_222B4FCD4(v107, &unk_27D026290, &qword_222C96B40);
      sub_222B4FCD4(v109, &qword_27D025890, &unk_222C9C7B0);
      *(a5 + v46[9]) = v92;
      return __swift_destroy_boxed_opaque_existential_0Tm(&v116);
    }

    else
    {
      v121 = 0u;
      v122 = 0u;
      v120 = 0u;
      sub_222B4FCD4(&v120, &qword_27D025898, &qword_222C99600);
      return sub_222B79B14(v108, a5);
    }
  }
}

uint64_t sub_222B79A48()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MediaSuggestionCandidateProcessor()
{
  result = qword_27D025878;
  if (!qword_27D025878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222B79B14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlusMediaSuggestion();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_222B79B78(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_222B79B90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_222B79BF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025890, &unk_222C9C7B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222B79C64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222B79CCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222B79D2C()
{
  v1 = sub_222C93C5C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[6])
  {
    v6 = 1;
  }

  else
  {
    v7 = v0[7];
    v8 = v0[8];
    (*(v2 + 104))(v5, *MEMORY[0x277D5FB00], v1);
    v9 = sub_222C93C4C();
    v11 = v10;
    (*(v2 + 8))(v5, v1);
    if (v8)
    {
      if (v7 == v9 && v8 == v11)
      {
        v6 = 1;
      }

      else
      {
        v6 = sub_222C951FC();
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

uint64_t sub_222B79EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v54 = a3;
  v55 = a5;
  v53 = a2;
  v11 = sub_222C9367C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FeaturisedTurn(0);
  v17 = *(v16 - 8);
  v56 = v16;
  v57 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1;
  result = sub_222C6B588(sub_222B617A8, v58, a6);
  if (v22)
  {
    if (qword_280FDFE78 != -1)
    {
      goto LABEL_56;
    }

    goto LABEL_3;
  }

  v33 = *(a6 + 16);
  if (v33 < result)
  {
    __break(1u);
    goto LABEL_58;
  }

  if (result < 0)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return result;
  }

  v51 = a6;
  v52 = a7;
  if (v33 == result)
  {
    v34 = v33;
  }

  else
  {
    v34 = result + 1;
  }

  if (v33 < v34)
  {
    goto LABEL_59;
  }

  if (v34 == v33)
  {
LABEL_51:
    v49 = 1;
    a7 = v52;
    return (*(v57 + 56))(a7, v49, 1, v56);
  }

  v12 = v51 + ((*(v57 + 80) + 32) & ~*(v57 + 80));

  while (v34 < v33)
  {
    sub_222B78534(v12 + *(v57 + 72) * v34, v20);
    v15 = *&v20[*(v56 + 24)];
    v35 = sub_222B423D0(v15);
    if (!v36)
    {
      v41 = 0;
      goto LABEL_33;
    }

    v37 = v35;
    a1 = v36;
    v38 = sub_222B423E8(v15);
    if (v39)
    {
      if (v38 == a4 && v39 == v55)
      {

LABEL_26:
        if (v37 == v53 && a1 == v54)
        {
          v41 = 1;
        }

        else
        {
          v41 = sub_222C951FC();
        }

        goto LABEL_32;
      }

      a7 = v39;
      v11 = sub_222C951FC();

      if (v11)
      {
        goto LABEL_26;
      }
    }

    v41 = 0;
LABEL_32:

LABEL_33:
    v43 = sub_222B42400(v15);
    if (!v44)
    {
      sub_222B73DD0(v20);
      if (v41)
      {
        goto LABEL_50;
      }

      goto LABEL_14;
    }

    a7 = v43;
    v11 = v44;
    v45 = sub_222B42418(v15);
    if (v46)
    {
      a1 = v45;
      v15 = v46;
      if (a7 == v53 && v11 == v54)
      {
      }

      else
      {
        v48 = sub_222C951FC();

        if ((v48 & 1) == 0)
        {

LABEL_47:
          sub_222B73DD0(v20);
          goto LABEL_14;
        }
      }

      if (a1 == a4 && v15 == v55)
      {

LABEL_54:

        a7 = v52;
        sub_222B441A4(v20, v52, type metadata accessor for FeaturisedTurn);
        v49 = 0;
        return (*(v57 + 56))(a7, v49, 1, v56);
      }

      a1 = sub_222C951FC();

      if (a1)
      {
        goto LABEL_54;
      }

      goto LABEL_47;
    }

    sub_222B73DD0(v20);

    if (v41)
    {
LABEL_50:

      goto LABEL_51;
    }

LABEL_14:
    if (v33 == ++v34)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_56:
  swift_once();
LABEL_3:
  v23 = sub_222C9431C();
  __swift_project_value_buffer(v23, qword_280FE2340);
  (*(v12 + 16))(v15, a1, v11);
  v24 = sub_222C942FC();
  v25 = sub_222C94A3C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = a7;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v60 = v28;
    *v27 = 136315138;
    sub_222B7BB84(&qword_280FE0298);
    v29 = sub_222C9517C();
    v31 = v30;
    (*(v12 + 8))(v15, v11);
    v32 = sub_222B437C0(v29, v31, &v60);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_222B39000, v24, v25, "Failed to find prompt turn in session for turnId=%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x223DCA8C0](v28, -1, -1);
    a7 = v26;
    MEMORY[0x223DCA8C0](v27, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  v49 = 1;
  return (*(v57 + 56))(a7, v49, 1, v56);
}

uint64_t sub_222B7A434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v71 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v62 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v62 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v62 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v62 - v23;
  v25 = type metadata accessor for FeaturisedTurn(0);
  v26 = *(v25 + 24);
  v73 = a1;
  v27 = *(a1 + v26);
  v28 = sub_222B423D0(v27);
  if (v29)
  {
    v30 = v29;
    v70 = v28;
    v69 = sub_222B423E8(v27);
    v72 = v31;
    if (v31)
    {
      v32 = sub_222B42430(v27);
      if (v32)
      {
        v67 = v32;
        sub_222B79EA4(v73, v70, v30, v69, v72, a2, v24);
        sub_222B4FC6C(v24, v22, &qword_27D0253C8, &unk_222C98400);
        v33 = *(v25 - 8);
        v34 = *(v33 + 48);
        v68 = v33 + 48;
        if (v34(v22, 1, v25) == 1)
        {
          sub_222B4FCD4(v22, &qword_27D0253C8, &unk_222C98400);
          v65 = 0;
          v66 = 0;
        }

        else
        {
          v38 = *(v25 + 24);
          v64 = v34;
          v39 = *&v22[v38];

          sub_222B73DD0(v22);
          v40 = sub_222B42448(v39);
          v65 = v41;
          v66 = v40;
          v34 = v64;
        }

        sub_222B4FC6C(v24, v19, &qword_27D0253C8, &unk_222C98400);
        if (v34(v19, 1, v25) == 1)
        {
          sub_222B4FCD4(v19, &qword_27D0253C8, &unk_222C98400);
          v63 = 0;
          v64 = 0;
        }

        else
        {
          v42 = *&v19[*(v25 + 24)];

          sub_222B73DD0(v19);
          v43 = sub_222B42460(v42);
          v63 = v44;
          v64 = v43;
        }

        sub_222B4FC6C(v24, v16, &qword_27D0253C8, &unk_222C98400);
        if (v34(v16, 1, v25) == 1)
        {
          sub_222B4FCD4(v16, &qword_27D0253C8, &unk_222C98400);
          v45 = v71;
        }

        else
        {
          v46 = v34;
          v47 = *&v16[*(v25 + 24)];

          sub_222B73DD0(v16);
          sub_222B42400(v47);
          v49 = v48;

          v45 = v71;
          if (v49)
          {

            sub_222B4FC6C(v24, v13, &qword_27D0253C8, &unk_222C98400);
            if (v46(v13, 1, v25) != 1)
            {
              v50 = sub_222C9367C();
              v61 = *(v50 - 8);
              (*(v61 + 16))(v45, v13, v50);
              sub_222B73DD0(v13);
              (*(v61 + 56))(v45, 0, 1, v50);
              goto LABEL_21;
            }

            sub_222B4FCD4(v13, &qword_27D0253C8, &unk_222C98400);
          }
        }

        v50 = sub_222C9367C();
        (*(*(v50 - 8) + 56))(v45, 1, 1, v50);
LABEL_21:
        v51 = sub_222B42478(v27);
        if (v51)
        {
          v52 = v51;
        }

        else
        {
          v52 = MEMORY[0x277D84F90];
        }

        v53 = sub_222B42490(v27);
        v54 = type metadata accessor for EntityPromptClassification();
        v55 = v54[11];
        sub_222C9367C();
        (*(*(v50 - 8) + 16))(a3 + v55, v73, v50);
        sub_222B4FC6C(v45, a3 + v54[12], &unk_27D026290, &qword_222C96B40);
        v56 = v69;
        *a3 = v70;
        *(a3 + 8) = v30;
        v57 = v72;
        *(a3 + 16) = v56;
        *(a3 + 24) = v57;
        v58 = v66;
        *(a3 + 32) = v67;
        *(a3 + 40) = v58;
        v59 = v64;
        *(a3 + 48) = v65;
        *(a3 + 56) = v59;
        *(a3 + 64) = v63;
        *(a3 + 72) = v52;
        *(a3 + 80) = v53 & 1;
        v60 = v54[13];
        sub_222B4FCD4(v45, &unk_27D026290, &qword_222C96B40);
        sub_222B4FCD4(v24, &qword_27D0253C8, &unk_222C98400);
        *(a3 + v60) = MEMORY[0x277D84F90];
        return (*(*(v54 - 1) + 56))(a3, 0, 1, v54);
      }
    }
  }

  v35 = type metadata accessor for EntityPromptClassification();
  v36 = *(*(v35 - 8) + 56);

  return v36(a3, 1, 1, v35);
}

uint64_t EntityPromptClassification.promptTask.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t EntityPromptClassification.promptSlot.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t EntityPromptClassification.selectedEntity.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t EntityPromptClassification.promptEndResult.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t EntityPromptClassification.promptStartTurnId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EntityPromptClassification() + 44);
  v4 = sub_222C9367C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *EntityPromptClassification.referencedTurns.getter()
{
  v1 = sub_222C9367C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v6 = *(v34 - 8);
  v7 = v6;
  v8 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v34);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D60, &qword_222C96B38);
  v14 = *(v6 + 72);
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v32 = swift_allocObject();
  v16 = v32 + v15;
  v17 = type metadata accessor for EntityPromptClassification();
  (*(v2 + 16))(v16, v0 + *(v17 + 44), v1);
  (*(v2 + 56))(v16, 0, 1, v1);
  sub_222B4FC6C(v0 + *(v17 + 48), v16 + v14, &unk_27D026290, &qword_222C96B40);
  sub_222B4FC6C(v16, v13, &unk_27D026290, &qword_222C96B40);
  sub_222B55BA0(v13, v11);
  v18 = (v2 + 32);
  v19 = *(v2 + 48);
  v20 = v19(v11, 1, v1);
  v33 = v5;
  if (v20 == 1)
  {
    sub_222B4FCD4(v11, &unk_27D026290, &qword_222C96B40);
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    v30 = v19;
    v31 = (v2 + 32);
    v29 = *v18;
    v29(v5, v11, v1);
    v21 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_222B4A2C8(0, *(v21 + 2) + 1, 1, v21);
    }

    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = sub_222B4A2C8(v22 > 1, v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v18 = v31;
    v29(&v21[((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v23], v33, v1);
    v19 = v30;
  }

  sub_222B4FC6C(v16 + v14, v13, &unk_27D026290, &qword_222C96B40);
  sub_222B55BA0(v13, v11);
  if (v19(v11, 1, v1) == 1)
  {
    sub_222B4FCD4(v11, &unk_27D026290, &qword_222C96B40);
  }

  else
  {
    v24 = *v18;
    v25 = v33;
    (*v18)(v33, v11, v1);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_222B4A2C8(0, *(v21 + 2) + 1, 1, v21);
    }

    v27 = *(v21 + 2);
    v26 = *(v21 + 3);
    if (v27 >= v26 >> 1)
    {
      v21 = sub_222B4A2C8(v26 > 1, v27 + 1, 1, v21);
    }

    *(v21 + 2) = v27 + 1;
    v24(&v21[((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v27], v25, v1);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v21;
}

uint64_t EntityPromptClassification.referencedEvents.getter()
{
  v1 = *(v0 + *(type metadata accessor for EntityPromptClassification() + 52));
}

uint64_t _s28SiriPrivateLearningInference26EntityPromptClassificationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_222C9367C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025290, &unk_222C97C30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_222C951FC() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_222C951FC() & 1) == 0 || (sub_222BBC5A4(*(a1 + 32), *(a2 + 32)) & 1) == 0)
  {
    goto LABEL_31;
  }

  v17 = *(a1 + 48);
  v18 = *(a2 + 48);
  if (v17)
  {
    if (!v18 || (*(a1 + 40) != *(a2 + 40) || v17 != v18) && (sub_222C951FC() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v18)
  {
    goto LABEL_31;
  }

  v19 = *(a1 + 64);
  v20 = *(a2 + 64);
  if (v19)
  {
    if (!v20 || (*(a1 + 56) != *(a2 + 56) || v19 != v20) && (sub_222C951FC() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v20)
  {
    goto LABEL_31;
  }

  if ((sub_222BBC634(*(a1 + 72), *(a2 + 72)) & 1) == 0)
  {
    goto LABEL_31;
  }

  if (*(a1 + 80) != *(a2 + 80))
  {
    goto LABEL_31;
  }

  v21 = type metadata accessor for EntityPromptClassification();
  v22 = *(v21 + 44);
  if ((sub_222C9362C() & 1) == 0)
  {
    goto LABEL_31;
  }

  v31 = v21;
  v23 = *(v21 + 48);
  v24 = *(v13 + 48);
  sub_222B4FC6C(a1 + v23, v16, &unk_27D026290, &qword_222C96B40);
  sub_222B4FC6C(a2 + v23, &v16[v24], &unk_27D026290, &qword_222C96B40);
  v25 = *(v5 + 48);
  if (v25(v16, 1, v4) == 1)
  {
    if (v25(&v16[v24], 1, v4) == 1)
    {
      sub_222B4FCD4(v16, &unk_27D026290, &qword_222C96B40);
LABEL_34:
      v26 = sub_222BBC5A4(*(a1 + *(v31 + 52)), *(a2 + *(v31 + 52)));
      return v26 & 1;
    }

    goto LABEL_30;
  }

  sub_222B4FC6C(v16, v12, &unk_27D026290, &qword_222C96B40);
  if (v25(&v16[v24], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_30:
    sub_222B4FCD4(v16, &qword_27D025290, &unk_222C97C30);
    goto LABEL_31;
  }

  (*(v5 + 32))(v8, &v16[v24], v4);
  sub_222B7BB84(&qword_280FE02A0);
  v28 = sub_222C9447C();
  v29 = *(v5 + 8);
  v29(v8, v4);
  v29(v12, v4);
  sub_222B4FCD4(v16, &unk_27D026290, &qword_222C96B40);
  if (v28)
  {
    goto LABEL_34;
  }

LABEL_31:
  v26 = 0;
  return v26 & 1;
}

void *sub_222B7B5DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025028, &unk_222C96EC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for FeaturisedTurn(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v13 = MEMORY[0x277D84F90];
  v14 = *(v8 + 72);
  do
  {
    sub_222B78534(v12, v10);
    sub_222B7A434(v10, a1, v5);
    v15 = type metadata accessor for EntityPromptClassification();
    if ((*(*(v15 - 8) + 48))(v5, 1, v15) == 1)
    {
      sub_222B73DD0(v10);
      sub_222B4FCD4(v5, &qword_27D025028, &unk_222C96EC0);
    }

    else
    {
      v21 = v15;
      v22 = &protocol witness table for EntityPromptClassification;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
      sub_222B441A4(v5, boxed_opaque_existential_1, type metadata accessor for EntityPromptClassification);
      sub_222B73DD0(v10);
      sub_222B405A0(&v20, v23);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_222B4A314(0, v13[2] + 1, 1, v13);
      }

      v18 = v13[2];
      v17 = v13[3];
      if (v18 >= v17 >> 1)
      {
        v13 = sub_222B4A314((v17 > 1), v18 + 1, 1, v13);
      }

      v13[2] = v18 + 1;
      sub_222B405A0(v23, &v13[5 * v18 + 4]);
    }

    v12 += v14;
    --v11;
  }

  while (v11);
  return v13;
}

uint64_t type metadata accessor for EntityPromptClassification()
{
  result = qword_280FDE0D0;
  if (!qword_280FDE0D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_222B7B94C()
{
  sub_222B7BACC(319, &qword_280FDB798, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_222B7BACC(319, &qword_280FDB820, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_222B7BB20(319, &qword_280FDB7A8, type metadata accessor for PlusContactSuggestionRuntimeSummary, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_222C9367C();
        if (v3 <= 0x3F)
        {
          sub_222B7BB20(319, &qword_280FE0290, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_222B7BACC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_222B7BB20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_222B7BB84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_222C9367C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222B7BCA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v2 = *(a2 + 88);
  return sub_222B7BCB4();
}

uint64_t sub_222B7BCB4()
{
  sub_222C947FC();

  swift_getWitnessTable();
  v0 = sub_222C94DDC();
  if (sub_222C947BC() == 1)
  {
    return v0;
  }

  return sub_222C9477C();
}

uint64_t sub_222B7BE04()
{
  type metadata accessor for AdaptiveMediaSuggestionGenerator();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025958, qword_222C99698);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D025928 = 91;
  unk_27D025930 = 0xE100000000000000;
  return result;
}

uint64_t AdaptiveMediaSuggestionGenerator.__allocating_init(candidateProvider:domainTags:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AdaptiveMediaSuggestionGenerator.init(candidateProvider:domainTags:)(a1, a2);
  return v4;
}

void *AdaptiveMediaSuggestionGenerator.init(candidateProvider:domainTags:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MediaSignalScorer();
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025938, &unk_222C995E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_222C97C40;
  *(v6 + 56) = &type metadata for NoReferenceDecayModifier;
  *(v6 + 64) = &off_28360EB00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025940, &unk_222CA4A00);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_222C96900;
  *(v7 + 56) = &type metadata for ScoreRoundingModifier;
  *(v7 + 64) = &off_28360EE80;
  *(v7 + 32) = 1;
  *(v7 + 96) = &type metadata for ScoreLimitModifier;
  *(v7 + 104) = &off_28360D3A8;
  v8 = swift_allocObject();
  *(v7 + 72) = v8;
  *(v8 + 16) = 0x3FF0000000000000;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0xBFF0000000000000;
  *(v8 + 40) = 0;
  *(v5 + 16) = v6;
  *(v5 + 24) = v7;
  type metadata accessor for MediaSuggestionCandidateProcessor();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v5;
  v9[5] = a1;
  v2[2] = v9;
  v2[3] = a1;
  v2[4] = a2;

  return v2;
}

uint64_t sub_222B7C034(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = a1 + 32;
    do
    {
      sub_222B43E3C(v3, v25);
      sub_222B405A0(v25, &v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024E28, &unk_222C995F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024FC8, &unk_222C993B0);
      if (swift_dynamicCast())
      {
        if (*(&v19 + 1))
        {
          sub_222B79B78(&v18, &v21);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_222B4A9AC(0, v2[2] + 1, 1, v2);
          }

          v5 = v2[2];
          v4 = v2[3];
          if (v5 >= v4 >> 1)
          {
            v2 = sub_222B4A9AC((v4 > 1), v5 + 1, 1, v2);
          }

          v2[2] = v5 + 1;
          sub_222B79B78(&v21, &v2[6 * v5 + 4]);
          goto LABEL_5;
        }
      }

      else
      {
        v19 = 0u;
        v20 = 0u;
        v18 = 0u;
      }

      sub_222B4FCD4(&v18, &qword_27D025898, &qword_222C99600);
LABEL_5:
      v3 += 40;
      --v1;
    }

    while (v1);
  }

  *&v18 = MEMORY[0x277D84F90];
  v6 = v2[2];
  if (v6)
  {
    v7 = (v2 + 4);
    v8 = MEMORY[0x277D84F90];
    do
    {
      sub_222B79B90(v7, &v21);
      v9 = v22;
      v10 = v23;
      v11 = v24;
      v12 = __swift_project_boxed_opaque_existential_1(&v21, v22);
      v13 = sub_222B7C2C8(v12, v9, v10, v11);
      v14 = __swift_destroy_boxed_opaque_existential_0Tm(&v21);
      if (v13)
      {
        MEMORY[0x223DC94A0](v14);
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v15 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_222C9475C();
        }

        sub_222C947AC();
        v8 = v18;
      }

      v7 += 48;
      --v6;
    }

    while (v6);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v16 = sub_222B71ED4(v8);

  return v16;
}

uint64_t sub_222B7C2C8(char *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v66 = a4;
  v67 = sub_222C9367C();
  v9 = *(v67 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v67);
  v13 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 - 1);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v18 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v62 - v19;
  if (sub_222B7D308(a1, v4, a2, a3))
  {
    v63 = v9;
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v21 = sub_222C9431C();
    v22 = __swift_project_value_buffer(v21, qword_280FE2340);
    (*(v14 + 16))(v20, a1, a2);
    v62[1] = v22;
    v23 = sub_222C942FC();
    v24 = sub_222C94A3C();
    v25 = os_log_type_enabled(v23, v24);
    v65 = a1;
    v64 = v5;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v62[0] = swift_slowAlloc();
      v77[0] = v62[0];
      *v26 = 136315394;
      if (qword_27D024678 != -1)
      {
        swift_once();
      }

      *(v26 + 4) = sub_222B437C0(qword_27D025928, unk_27D025930, v77);
      *(v26 + 12) = 2080;
      (*(v66 + 24))(a2);
      v27 = sub_222C9360C();
      v29 = v28;
      (*(v63 + 8))(v13, v67);
      (*(v14 + 8))(v20, a2);
      v30 = sub_222B437C0(v27, v29, v77);

      *(v26 + 14) = v30;
      _os_log_impl(&dword_222B39000, v23, v24, "%s Processing ground truth with id=%s", v26, 0x16u);
      v31 = v62[0];
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v31, -1, -1);
      MEMORY[0x223DCA8C0](v26, -1, -1);

      a1 = v65;
      v5 = v64;
    }

    else
    {

      (*(v14 + 8))(v20, a2);
    }

    v41 = *(v5 + 16);
    v42 = *(a3 + 8);
    v43 = sub_222B9E860(a1, a2, v42);
    v44 = *(v42 + 32);
    v44(v77, a2, v42);
    sub_222C0A220(v77[0], &v71);

    sub_222B4FC6C(&v71, v77, &qword_27D0256C8, &unk_222C98AB0);
    v45 = sub_222C942FC();
    v46 = sub_222C94A3C();
    sub_222B4FCD4(&v71, &qword_27D0256C8, &unk_222C98AB0);
    if (os_log_type_enabled(v45, v46))
    {
      v67 = v43;
      v47 = v44;
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v69[0] = v49;
      *v48 = 136315394;
      if (qword_27D024678 != -1)
      {
        swift_once();
      }

      *(v48 + 4) = sub_222B437C0(qword_27D025928, unk_27D025930, v69);
      *(v48 + 12) = 2080;
      if (v72 == 1)
      {
        v50 = 0xE90000000000003ELL;
        v51 = 0x6E776F6E6B6E553CLL;
      }

      else
      {
        v77[0] = v71;
        v77[1] = v72;
        v78 = v73;
        v79 = v74;
        v80 = v75;
        v81 = v76;
        v53 = sub_222BED214();
        v50 = v54;
        sub_222B4FCD4(&v71, &qword_27D0256C8, &unk_222C98AB0);
        v51 = v53;
      }

      v55 = sub_222B437C0(v51, v50, v69);

      *(v48 + 14) = v55;
      _os_log_impl(&dword_222B39000, v45, v46, "%s Candidates updated for query: %s", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v49, -1, -1);
      MEMORY[0x223DCA8C0](v48, -1, -1);

      v44 = v47;
      v43 = v67;
    }

    else
    {

      sub_222B4FCD4(&v71, &qword_27D0256C8, &unk_222C98AB0);
    }

    v56 = v64;
    v57 = sub_222B7D450(v43, sub_222B7D958, v64);

    v58 = *(v56 + 24);
    v44(&v70, a2, v42);
    v59 = v70;
    swift_beginAccess();

    v60 = *(v58 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = *(v58 + 64);
    *(v58 + 64) = 0x8000000000000000;
    sub_222BAA6B0(v57, v59, isUniquelyReferenced_nonNull_native);

    *(v58 + 64) = v68;
    swift_endAccess();

    v44(v69, a2, v42);
    return v69[0];
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v32 = sub_222C9431C();
    __swift_project_value_buffer(v32, qword_280FE2340);
    (*(v14 + 16))(v18, a1, a2);
    v33 = sub_222C942FC();
    v34 = sub_222C94A3C();
    if (os_log_type_enabled(v33, v34))
    {
      v63 = v9;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v77[0] = v36;
      *v35 = 136315394;
      if (qword_27D024678 != -1)
      {
        swift_once();
      }

      *(v35 + 4) = sub_222B437C0(qword_27D025928, unk_27D025930, v77);
      *(v35 + 12) = 2080;
      (*(v66 + 24))(a2);
      v37 = sub_222C9360C();
      v39 = v38;
      (*(v63 + 8))(v13, v67);
      (*(v14 + 8))(v18, a2);
      v40 = sub_222B437C0(v37, v39, v77);

      *(v35 + 14) = v40;
      _os_log_impl(&dword_222B39000, v33, v34, "%s Skipping non applicable ground truth with id=%s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v36, -1, -1);
      MEMORY[0x223DCA8C0](v35, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v18, a2);
    }

    return 0;
  }
}

uint64_t sub_222B7CC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v68 = a4;
  v7 = sub_222C9367C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v66 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v67 = &v62 - v16;
  v17 = type metadata accessor for PlusMediaSuggestion();
  v18 = *(*(v17 - 1) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 16);
  v74[0] = *a1;
  v22 = *(a1 + 32);
  v74[1] = v21;
  v74[2] = v22;
  v75 = *(a1 + 48);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v23 = sub_222C9431C();
  __swift_project_value_buffer(v23, qword_280FE2340);
  sub_222B79B14(a2, v20);
  sub_222B554C0(v74, &v70);
  v24 = sub_222C942FC();
  v25 = sub_222C94A3C();
  sub_222B55A80(v74);
  if (os_log_type_enabled(v24, v25))
  {
    v63 = a3;
    v65 = v7;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v69[0] = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_222B437C0(*&v74[0], *(&v74[0] + 1), v69);
    *(v26 + 12) = 2080;
    v28 = *&v20[v17[9]];
    v29 = *(v28 + 16);
    v64 = v15;
    if (v29)
    {
      v30 = (v28 + 32 * v29);
      v31 = *v30;
      v32 = *(v30 + 2);
    }

    else
    {
      v32 = 0;
      v31 = 0uLL;
    }

    v70 = v31;
    *&v71 = v32;
    BYTE8(v71) = v29 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025950, &qword_222C99690);
    v33 = sub_222C944EC();
    v35 = v34;
    sub_222B7D9D0(v20);
    v36 = sub_222B437C0(v33, v35, v69);

    *(v26 + 14) = v36;
    _os_log_impl(&dword_222B39000, v24, v25, "    %s: %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v27, -1, -1);
    MEMORY[0x223DCA8C0](v26, -1, -1);

    v7 = v65;
    v15 = v64;
    a3 = v63;
  }

  else
  {

    sub_222B7D9D0(v20);
  }

  v37 = *(a2 + v17[11]);
  if (sub_222BB26C4(v37, *(a3 + 32)))
  {
    return sub_222B79B14(a2, v68);
  }

  v39 = v67;
  (*(v8 + 56))(v67, 1, 1, v7);

  v65 = sub_222C6E8A8(v40, v37);
  sub_222B4FC6C(v39, v15, &unk_27D026290, &qword_222C96B40);
  v41 = *(v8 + 48);
  if (v41(v15, 1, v7) == 1)
  {
    v42 = v8;
    v43 = v8;
    v44 = v15;
    v45 = *(v43 + 16);
    v45(v66, a2, v7);
    v46 = v7;
    if (v41(v44, 1, v7) != 1)
    {
      sub_222B4FCD4(v44, &unk_27D026290, &qword_222C96B40);
    }

    v8 = v42;
    v47 = v66;
  }

  else
  {
    v47 = v66;
    (*(v8 + 32))(v66, v15, v7);
    v45 = *(v8 + 16);
    v46 = v7;
  }

  v48 = v17[5];
  v49 = a2 + v17[6];
  v73 = *(v49 + 48);
  v50 = *(v49 + 32);
  v71 = *(v49 + 16);
  v72 = v50;
  v70 = *v49;
  v51 = *(a2 + v17[10]);
  v52 = *(a2 + v17[8]);
  v53 = *(a2 + v48);
  v54 = *(a2 + v17[7]);
  v55 = *(a2 + v17[9]);
  v56 = v68;
  v45(v68, v47, v46);
  *(v56 + v17[5]) = v53;
  v57 = v56 + v17[6];
  v58 = v71;
  *v57 = v70;
  *(v57 + 16) = v58;
  *(v57 + 32) = v72;
  *(v57 + 48) = v73;

  sub_222B554C0(&v70, v69);

  *(v56 + v17[7]) = sub_222C16F98(20, v54);
  *(v56 + v17[10]) = v51;
  *(v56 + v17[11]) = v65;
  *(v56 + v17[8]) = v52;
  v59 = sub_222C17258(0x14uLL, v55);
  v60 = v47;
  v61 = v59;
  (*(v8 + 8))(v60, v46);
  result = sub_222B4FCD4(v67, &unk_27D026290, &qword_222C96B40);
  *(v56 + v17[9]) = v61;
  return result;
}

void *AdaptiveMediaSuggestionGenerator.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t AdaptiveMediaSuggestionGenerator.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

BOOL sub_222B7D308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10);
  v11 = *(a2 + 32);
  if (*(v11 + 16))
  {
    v12 = (*(a4 + 16))(a3, a4);

    v13 = sub_222B86158(v12, v11);

    v14 = v13[2];

    v15 = v14 != 0;
  }

  else
  {
    v15 = 0;
  }

  (*(v7 + 8))(v10, a3);
  return v15;
}

uint64_t sub_222B7D450(uint64_t a1, void (*a2)(char *, char *), uint64_t a3)
{
  v60 = a2;
  v61 = a3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025948, &unk_222C99680);
  v5 = *(*(v59 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v59);
  v58 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v52 - v8;
  v9 = type metadata accessor for PlusMediaSuggestion();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
    return v15;
  }

  v52 = v3;
  v70 = MEMORY[0x277D84F90];
  sub_222B4C630(0, v14, 0);
  v15 = v70;
  v16 = -1 << *(a1 + 32);
  v65 = a1 + 64;
  result = sub_222C94C2C();
  if (result < 0 || (v18 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v53 = a1 + 72;
    v66 = *(a1 + 36);
    v19 = 1;
    v56 = v13;
    v54 = v14;
    v55 = v10;
    while (1)
    {
      v20 = v18 >> 6;
      if ((*(v65 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        break;
      }

      if (v66 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v62 = v19;
      v63 = 1 << v18;
      v21 = v59;
      v22 = *(v59 + 48);
      v23 = *(a1 + 56);
      v24 = *(a1 + 48) + 56 * v18;
      v26 = *(v24 + 16);
      v25 = *(v24 + 32);
      v27 = *v24;
      v69 = *(v24 + 48);
      v68[1] = v26;
      v68[2] = v25;
      v68[0] = v27;
      v29 = *(v24 + 16);
      v28 = *(v24 + 32);
      v30 = *v24;
      v31 = v57;
      *(v57 + 24) = *(v24 + 48);
      *(v31 + 1) = v29;
      *(v31 + 2) = v28;
      *v31 = v30;
      v64 = *(v10 + 72);
      sub_222B79B14(v23 + v64 * v18, &v31[v22]);
      v32 = v15;
      v33 = v58;
      *(v58 + 24) = *(v31 + 24);
      v34 = *(v31 + 1);
      *v33 = *v31;
      *(v33 + 1) = v34;
      *(v33 + 2) = *(v31 + 2);
      v35 = a1;
      v36 = *(v21 + 48);
      v37 = &v31[v22];
      v38 = v56;
      sub_222B7D960(v37, &v33[v36]);
      sub_222B554C0(v68, v67);
      v60(v33, &v33[v36]);
      v39 = v33;
      v15 = v32;
      sub_222B4FCD4(v39, &qword_27D025948, &unk_222C99680);
      v70 = v32;
      v41 = *(v32 + 16);
      v40 = *(v32 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_222B4C630(v40 > 1, v41 + 1, 1);
        v15 = v70;
      }

      *(v15 + 16) = v41 + 1;
      v42 = v55;
      result = sub_222B7D960(v38, v15 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + v41 * v64);
      v43 = 1 << *(v35 + 32);
      if (v18 >= v43)
      {
        goto LABEL_27;
      }

      v44 = *(v65 + 8 * v20);
      if ((v44 & v63) == 0)
      {
        goto LABEL_28;
      }

      a1 = v35;
      if (v66 != *(v35 + 36))
      {
        goto LABEL_29;
      }

      v10 = v42;
      v45 = v44 & (-2 << (v18 & 0x3F));
      if (v45)
      {
        v18 = __clz(__rbit64(v45)) | v18 & 0x7FFFFFFFFFFFFFC0;
        v46 = v54;
      }

      else
      {
        v47 = v20 << 6;
        v48 = v20 + 1;
        v49 = (v53 + 8 * v20);
        v46 = v54;
        while (v48 < (v43 + 63) >> 6)
        {
          v51 = *v49++;
          v50 = v51;
          v47 += 64;
          ++v48;
          if (v51)
          {
            result = sub_222B7D9C4(v18, v66, 0);
            v18 = __clz(__rbit64(v50)) + v47;
            goto LABEL_19;
          }
        }

        result = sub_222B7D9C4(v18, v66, 0);
        v18 = v43;
      }

LABEL_19:
      if (v62 == v46)
      {
        return v15;
      }

      if ((v18 & 0x8000000000000000) == 0)
      {
        v19 = v62 + 1;
        if (v18 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

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

uint64_t sub_222B7D960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlusMediaSuggestion();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222B7D9C4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_222B7D9D0(uint64_t a1)
{
  v2 = type metadata accessor for PlusMediaSuggestion();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SuccessfulTaskMetadata.__allocating_init(session:classifications:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t SuccessfulTaskMetadata.init(session:classifications:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t SuccessfulTaskMetadata.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t SuccessfulTaskMetadata.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t SuccessfulTaskDefinition.generator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OneShotSuccessfulGroundTruthGenerator();
  (*(v5 + 16))(v8, v2, a1);
  v10 = OneShotSuccessfulGroundTruthGenerator.__allocating_init(_:)(v8);
  a2[3] = v9;
  result = swift_getWitnessTable();
  a2[4] = result;
  *a2 = v10;
  return result;
}

uint64_t SuccessfulTaskDefinition.extractUsoPerson(_:)(uint64_t a1)
{
  v2 = type metadata accessor for FeaturisedTurn(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(v4 + 24);
    v11 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    do
    {
      sub_222B78534(v11, v7);
      v13 = sub_222B41B30(*&v7[v10]);
      if (v13)
      {
        sub_222B4907C(v13);
      }

      sub_222B73DD0(v7);
      v11 += v12;
      --v9;
    }

    while (v9);
    v8 = v20;
  }

  v15 = sub_222B71D68(v14);

  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = sub_222C94C6C();
  }

  else
  {
    v16 = *(v15 + 16);
  }

  if (v16 != 1)
  {
    goto LABEL_18;
  }

  if (v8 >> 62)
  {
    result = sub_222C94C6C();
    if (result)
    {
      goto LABEL_13;
    }

LABEL_18:

    return 0;
  }

  result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x223DC9B30](0, v8);
    goto LABEL_16;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v8 + 32);

LABEL_16:

    return v18;
  }

  __break(1u);
  return result;
}

void __swiftcall SuccessfulTaskDefinition.extractReferencedEntity(session:eventId:)(SiriPrivateLearningInference::ContactReference_optional *__return_ptr retstr, Swift::OpaquePointer session, Swift::String eventId)
{
  object = eventId._object;
  countAndFlagsBits = eventId._countAndFlagsBits;
  v38 = retstr;
  v44 = type metadata accessor for FeaturisedTurn(0);
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v44);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v43 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v42 = &v36 - v13;
  v37 = v6;
  v40 = (v6 + 48);
  v41 = (v6 + 56);
  rawValue = session._rawValue;

  v45 = 0;
  while (1)
  {
    v23 = v45;
    v24 = rawValue[2];
    if (v45 == v24)
    {
      v25 = 1;
      v27 = v43;
      v26 = v44;
      v28 = v42;
    }

    else
    {
      v27 = v43;
      v26 = v44;
      v28 = v42;
      if (v45 >= v24)
      {
LABEL_26:
        __break(1u);
        return;
      }

      sub_222B78534(rawValue + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v45, v42);
      v25 = 0;
      ++v23;
    }

    (*v41)(v28, v25, 1, v26);
    sub_222B5EC84(v28, v27);
    if ((*v40)(v27, 1, v26) == 1)
    {
      break;
    }

    v45 = v23;
    v29 = v27;
    v30 = v39;
    sub_222B7E350(v29, v39);
    v31 = *(v30 + *(v26 + 28));

    sub_222B73DD0(v30);

    v32 = v31;
    if (v31)
    {
      v14 = (v31 + 64);
      v15 = -1;
      while (1)
      {
        ++v15;
        v16 = *(v32 + 16);
        if (v15 == v16)
        {
          break;
        }

        if (v15 >= v16)
        {
          __break(1u);
          goto LABEL_26;
        }

        v18 = *(v14 - 4);
        v17 = *(v14 - 3);
        v19 = *(v14 - 2);
        v20 = *(v14 - 1);
        v21 = *v14;
        if (v18 == countAndFlagsBits && v17 == object)
        {
          v18 = countAndFlagsBits;
LABEL_19:

          v33 = sub_222B41660(v19);
          if (v33)
          {
            v34 = *(v33 + 16);

            if (v34 == 1)
            {
              v47[0] = v18;
              v47[1] = v17;
              v47[2] = v19;
              v47[3] = v20;
              v47[4] = v21;
              extractContactReference(event:)(v47, v38);

              return;
            }
          }

          goto LABEL_23;
        }

        v14 += 5;
        if (sub_222C951FC())
        {
          goto LABEL_19;
        }
      }
    }
  }

LABEL_23:

  v35 = v38;
  v38->value.contactId = 0u;
  v35->value.contactLabel = 0u;
}

uint64_t (*sub_222B7E140(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x223DC9B30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_222B7E1C0;
  }

  __break(1u);
  return result;
}

void (*sub_222B7E1C8(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223DC9B30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_222B7E47C;
  }

  __break(1u);
  return result;
}

void (*sub_222B7E248(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223DC9B30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_222B7E2C8;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_222B7E2D0(uint64_t (*result)(uint64_t *), unint64_t a2, uint64_t a3))(uint64_t *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x223DC9B30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_222B7E480;
  }

  __break(1u);
  return result;
}

uint64_t sub_222B7E350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturisedTurn(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ThinMediaGroundTruth.init(completeGroundTruth:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v36 = type metadata accessor for MediaFeedbackGroundTruth();
  v3 = *(*(v36 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v36);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - v6;
  v8 = type metadata accessor for MediaGroundTruth();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v15 = type metadata accessor for ThinMediaGroundTruth();
  v37 = *(v15 - 1);
  v16 = *(v37 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  (*(v20 + 24))(v19, v20);
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v23 = (*(v22 + 40))(v21, v22);
  v24 = &v18[v15[5]];
  *v24 = v23;
  v24[1] = v25;
  sub_222B43E3C(a1, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024E28, &unk_222C995F0);
  if (swift_dynamicCast())
  {
    sub_222B7E93C(v14, v12, type metadata accessor for MediaGroundTruth);
    v18[v15[6]] = v12[*(v8 + 20)];
    v26 = v12[*(v8 + 32) + 49];
    v27 = type metadata accessor for MediaGroundTruth;
    v28 = v12;
LABEL_5:
    sub_222B7E9A4(v28, v27);
    v18[v15[7]] = v26;
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    v31 = v38;
    sub_222B7E8D8(v18, v38);
    (*(v37 + 56))(v31, 0, 1, v15);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return sub_222B7E9A4(v18, type metadata accessor for ThinMediaGroundTruth);
  }

  v29 = v36;
  if (swift_dynamicCast())
  {
    v30 = v35;
    sub_222B7E93C(v7, v35, type metadata accessor for MediaFeedbackGroundTruth);
    v18[v15[6]] = *(v30 + *(v29 + 20)) | 0x80;
    v26 = *(v30 + *(v29 + 28) + 49);
    v27 = type metadata accessor for MediaFeedbackGroundTruth;
    v28 = v30;
    goto LABEL_5;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v33 = sub_222C9367C();
  (*(*(v33 - 8) + 8))(v18, v33);

  return (*(v37 + 56))(v38, 1, 1, v15);
}

uint64_t type metadata accessor for ThinMediaGroundTruth()
{
  result = qword_27D0259A0;
  if (!qword_27D0259A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222B7E8D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThinMediaGroundTruth();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222B7E93C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222B7E9A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ThinMediaGroundTruth.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222C9367C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ThinMediaGroundTruth.groundTruthType.getter()
{
  v1 = (v0 + *(type metadata accessor for ThinMediaGroundTruth() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ThinMediaGroundTruth.groundTruthSource.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ThinMediaGroundTruth();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ThinMediaGroundTruth.suggestionLocality.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ThinMediaGroundTruth();
  *a1 = *(v1 + *(result + 28));
  return result;
}

int *ThinMediaGroundTruth.init(id:groundTruthType:groundTruthSource:suggestionLocality:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a4;
  v11 = *a5;
  v12 = sub_222C9367C();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for ThinMediaGroundTruth();
  v14 = (a6 + result[5]);
  *v14 = a2;
  v14[1] = a3;
  *(a6 + result[6]) = v10;
  *(a6 + result[7]) = v11;
  return result;
}

unint64_t sub_222B7EBBC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  if (v1 != 2)
  {
    v3 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = 0x7254646E756F7267;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_222B7EC38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222B7FEB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222B7EC6C(uint64_t a1)
{
  v2 = sub_222B7FA98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B7ECA8(uint64_t a1)
{
  v2 = sub_222B7FA98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThinMediaGroundTruth.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025960, &qword_222C99768);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222B7FA98();
  sub_222C9536C();
  v16[15] = 0;
  sub_222C9367C();
  sub_222B80414(&qword_27D025148, MEMORY[0x277CC95F0]);
  sub_222C9512C();
  if (!v2)
  {
    v11 = type metadata accessor for ThinMediaGroundTruth();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v16[14] = 1;
    sub_222C950EC();
    v16[13] = *(v3 + v11[6]);
    v16[12] = 2;
    sub_222B7FAEC();
    sub_222C9512C();
    v16[11] = *(v3 + v11[7]);
    v16[10] = 3;
    sub_222B7FB40();
    sub_222C950DC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ThinMediaGroundTruth.hash(into:)()
{
  sub_222C9367C();
  sub_222B80414(&qword_280FE02A8, MEMORY[0x277CC95F0]);
  sub_222C9441C();
  v1 = type metadata accessor for ThinMediaGroundTruth();
  v2 = (v0 + v1[5]);
  v3 = *v2;
  v4 = v2[1];
  sub_222C9452C();
  v5 = *(v0 + v1[6]);
  MEMORY[0x223DCA0B0](v5 >> 7);
  MEMORY[0x223DCA0B0](v5 & 0x7F);
  v6 = *(v0 + v1[7]);
  if (v6 == 3)
  {
    return sub_222C9531C();
  }

  sub_222C9531C();
  return MEMORY[0x223DCA0B0](v6);
}

uint64_t ThinMediaGroundTruth.hashValue.getter()
{
  sub_222C952FC();
  sub_222C9367C();
  sub_222B80414(&qword_280FE02A8, MEMORY[0x277CC95F0]);
  sub_222C9441C();
  v1 = type metadata accessor for ThinMediaGroundTruth();
  v2 = (v0 + v1[5]);
  v3 = *v2;
  v4 = v2[1];
  sub_222C9452C();
  v5 = *(v0 + v1[6]);
  MEMORY[0x223DCA0B0](v5 >> 7);
  MEMORY[0x223DCA0B0](v5 & 0x7F);
  v6 = *(v0 + v1[7]);
  sub_222C9531C();
  if (v6 != 3)
  {
    MEMORY[0x223DCA0B0](v6);
  }

  return sub_222C9534C();
}

uint64_t ThinMediaGroundTruth.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_222C9367C();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025980, &qword_222C99770);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v11 = type metadata accessor for ThinMediaGroundTruth();
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222B7FA98();
  sub_222C9535C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v22 = a1;
  v16 = v24;
  v33 = 0;
  sub_222B80414(&qword_27D025178, MEMORY[0x277CC95F0]);
  v17 = v25;
  sub_222C9507C();
  (*(v16 + 32))(v14, v17, v4);
  v32 = 1;
  v18 = sub_222C9503C();
  v19 = &v14[v11[5]];
  *v19 = v18;
  v19[1] = v20;
  v30 = 2;
  sub_222B7FB94();
  sub_222C9507C();
  v14[v11[6]] = v31;
  v28 = 3;
  sub_222B7FBE8();
  sub_222C9502C();
  (*(v26 + 8))(v10, v27);
  v14[v11[7]] = v29;
  sub_222B7E8D8(v14, v23);
  __swift_destroy_boxed_opaque_existential_0Tm(v22);
  return sub_222B7E9A4(v14, type metadata accessor for ThinMediaGroundTruth);
}

uint64_t sub_222B7F58C(uint64_t a1, int *a2)
{
  sub_222C952FC();
  sub_222C9367C();
  sub_222B80414(&qword_280FE02A8, MEMORY[0x277CC95F0]);
  sub_222C9441C();
  v4 = (v2 + a2[5]);
  v5 = *v4;
  v6 = v4[1];
  sub_222C9452C();
  v7 = *(v2 + a2[6]);
  MEMORY[0x223DCA0B0](v7 >> 7);
  MEMORY[0x223DCA0B0](v7 & 0x7F);
  v8 = *(v2 + a2[7]);
  sub_222C9531C();
  if (v8 != 3)
  {
    MEMORY[0x223DCA0B0](v8);
  }

  return sub_222C9534C();
}

void sub_222B7F688(uint64_t a1)
{
  v8 = MEMORY[0x277D84F90];
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = 0;
    do
    {
      for (i = v3; ; ++i)
      {
        if (i >= v1)
        {
          __break(1u);
LABEL_14:
          __break(1u);
          return;
        }

        v5 = *(type metadata accessor for ThinMediaGroundTruth() - 8);
        v3 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_14;
        }

        sub_222B7F7CC(a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * i, &v7);
        if (v7)
        {
          break;
        }

        if (v3 == v1)
        {
          return;
        }
      }

      MEMORY[0x223DC94A0]();
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v6 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_222C9475C();
      }

      sub_222C947AC();
    }

    while (v3 != v1);
  }
}

void sub_222B7F7CC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_222B80020();
  if (v5 >> 60 != 15)
  {
    v6 = v4;
    v7 = v5;
    v8 = objc_allocWithZone(MEMORY[0x277D59D18]);
    sub_222B80358(v6, v7);
    v9 = sub_222C934FC();
    v10 = [v8 initWithJSON_];

    sub_222B803AC(v6, v7);
    if (v10)
    {
      v11 = *(type metadata accessor for ThinMediaGroundTruth() + 24);
      if ((*(a1 + v11) & 0x80) != 0)
      {
        if ((*(a1 + v11) & 0x7Fu) - 1 < 2)
        {
          v12 = 1;
        }

        else
        {
          v12 = 5;
        }
      }

      else
      {
        v12 = dword_222C999B4[*(a1 + v11)];
      }

      [v10 setSource_];
      if (*(a1 + v11) == 129)
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }

      [v10 setEntityFeedbackType_];
      sub_222B803AC(v6, v7);
      goto LABEL_18;
    }

    sub_222B803AC(v6, v7);
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v13 = sub_222C9431C();
  __swift_project_value_buffer(v13, qword_280FE2340);
  v14 = sub_222C942FC();
  v15 = sub_222C94A4C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_222B39000, v14, v15, "Failed to create ground truth summary", v16, 2u);
    MEMORY[0x223DCA8C0](v16, -1, -1);
  }

  v10 = 0;
LABEL_18:
  *a2 = v10;
}

uint64_t _s28SiriPrivateLearningInference20ThinMediaGroundTruthV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_222C9362C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ThinMediaGroundTruth();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_222C951FC() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[6];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10);
  v13 = *(a2 + v10);
  if ((v11 & 0x80000000) == 0)
  {
    if (v12 != v13)
    {
      return 0;
    }

LABEL_12:
    v15 = v4[7];
    v16 = *(a1 + v15);
    v17 = *(a2 + v15);
    if (v16 == 3)
    {
      if (v17 != 3)
      {
        return 0;
      }
    }

    else if (v16 != v17)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if ((v13 & 0x80) != 0 && ((v13 ^ v12) & 0x7F) == 0)
  {
    goto LABEL_12;
  }

  return result;
}

unint64_t sub_222B7FA98()
{
  result = qword_27D025968;
  if (!qword_27D025968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025968);
  }

  return result;
}

unint64_t sub_222B7FAEC()
{
  result = qword_27D025970;
  if (!qword_27D025970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025970);
  }

  return result;
}

unint64_t sub_222B7FB40()
{
  result = qword_27D025978;
  if (!qword_27D025978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025978);
  }

  return result;
}

unint64_t sub_222B7FB94()
{
  result = qword_27D025988;
  if (!qword_27D025988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025988);
  }

  return result;
}

unint64_t sub_222B7FBE8()
{
  result = qword_27D025990;
  if (!qword_27D025990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025990);
  }

  return result;
}

void sub_222B7FCAC()
{
  sub_222C9367C();
  if (v0 <= 0x3F)
  {
    sub_222B7FD48();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_222B7FD48()
{
  if (!qword_27D0259B0)
  {
    v0 = sub_222C94B5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D0259B0);
    }
  }
}

unint64_t sub_222B7FDAC()
{
  result = qword_27D0259B8;
  if (!qword_27D0259B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0259B8);
  }

  return result;
}

unint64_t sub_222B7FE04()
{
  result = qword_27D0259C0;
  if (!qword_27D0259C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0259C0);
  }

  return result;
}

unint64_t sub_222B7FE5C()
{
  result = qword_27D0259C8;
  if (!qword_27D0259C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0259C8);
  }

  return result;
}

uint64_t sub_222B7FEB0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7254646E756F7267 && a2 == 0xEF65707954687475 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000222CA9E80 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000222CA9EA0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_222C951FC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_222B80020()
{
  v0 = type metadata accessor for ThinMediaGroundTruth();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  MEMORY[0x28223BE20](v2);
  v3 = sub_222C9323C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_222C9322C();
  sub_222B80414(&qword_27D0259D0, type metadata accessor for ThinMediaGroundTruth);
  v6 = sub_222C9321C();

  return v6;
}

uint64_t sub_222B80358(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_222B803AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_222B803C0(a1, a2);
  }

  return a1;
}

uint64_t sub_222B803C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_222B80414(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for MediaGroundTruthSummary(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1F && a1[24])
  {
    return (*a1 + 31);
  }

  v3 = ((*a1 >> 2) & 0x1E | (*a1 >> 7)) ^ 0x1F;
  if (v3 >= 0x1E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for MediaGroundTruthSummary(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 31;
    if (a3 >= 0x1F)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1F)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 8 * (((-a2 >> 1) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_222B80510(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0259E8, &qword_222C99AA8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222B809EC();
  sub_222C9536C();
  v17 = v9;
  v16 = 0;
  sub_222B7FAEC();
  sub_222C9512C();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v15 = 1;
  sub_222C9511C();
  v14 = 2;
  sub_222C9511C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_222B806D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0259D8, &qword_222C99AA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222B809EC();
  sub_222C9535C();
  if (!v2)
  {
    v18 = 0;
    sub_222B7FB94();
    sub_222C9507C();
    v11 = v19;
    v17 = 1;
    v13 = sub_222C9506C();
    v16 = 2;
    v14 = sub_222C9506C();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_222B808B8()
{
  *v0;
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x656372756F73;
  }
}

uint64_t sub_222B80918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222B80BB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222B80940(uint64_t a1)
{
  v2 = sub_222B809EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B8097C(uint64_t a1)
{
  v2 = sub_222B809EC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_222B809EC()
{
  result = qword_27D0259E0;
  if (!qword_27D0259E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0259E0);
  }

  return result;
}

BOOL sub_222B80A40(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  v5 = *a2;
  v6 = *(a2 + 1);
  if ((*a1 & 0x80000000) == 0)
  {
    if ((v5 & 0x80) != 0)
    {
      return 0;
    }

    if (v2 != v5 || v4 != v6)
    {
      return 0;
    }

    return v3 == *(a2 + 2);
  }

  result = 0;
  if ((v5 & 0x80) != 0 && ((v5 ^ v2) & 0x7F) == 0 && v4 == v6)
  {
    return v3 == *(a2 + 2);
  }

  return result;
}

unint64_t sub_222B80AAC()
{
  result = qword_27D0259F0;
  if (!qword_27D0259F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0259F0);
  }

  return result;
}

unint64_t sub_222B80B04()
{
  result = qword_27D0259F8;
  if (!qword_27D0259F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0259F8);
  }

  return result;
}

unint64_t sub_222B80B5C()
{
  result = qword_27D025A00;
  if (!qword_27D025A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025A00);
  }

  return result;
}

uint64_t sub_222B80BB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000222CA9EC0 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000222CA9EE0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_222C951FC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_222B80CD4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_222C949AC();
  if (!v26)
  {
    return sub_222C9477C();
  }

  v48 = v26;
  v52 = sub_222C94E5C();
  v39 = sub_222C94E6C();
  sub_222C94E0C();
  result = sub_222C9499C();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_222C949DC();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_222C94E4C();
      result = sub_222C949BC();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t INInteraction.getTimestamp()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A08, &unk_222C99BD0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  v11 = [v2 dateInterval];
  if (v11)
  {
    v12 = v11;
    sub_222C9326C();

    v13 = sub_222C932BC();
    (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  }

  else
  {
    v13 = sub_222C932BC();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  }

  sub_222B812EC(v8, v10);
  sub_222C932BC();
  v14 = 1;
  if (!(*(*(v13 - 8) + 48))(v10, 1, v13))
  {
    sub_222C9329C();
    v14 = 0;
  }

  sub_222B4FCD4(v10, &qword_27D025A08, &unk_222C99BD0);
  v15 = sub_222C935EC();
  return (*(*(v15 - 8) + 56))(a1, v14, 1, v15);
}

uint64_t sub_222B812EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A08, &unk_222C99BD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AppInteraction.getTimestamp()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A08, &unk_222C99BD0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = sub_222C93CAC();
  v10 = [v9 dateInterval];

  if (v10)
  {
    sub_222C9326C();

    v11 = sub_222C932BC();
    (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  }

  else
  {
    v11 = sub_222C932BC();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  }

  sub_222B812EC(v6, v8);
  sub_222C932BC();
  v12 = 1;
  if (!(*(*(v11 - 8) + 48))(v8, 1, v11))
  {
    sub_222C9329C();
    v12 = 0;
  }

  sub_222B4FCD4(v8, &qword_27D025A08, &unk_222C99BD0);
  v13 = sub_222C935EC();
  return (*(*(v13 - 8) + 56))(a1, v12, 1, v13);
}

uint64_t sub_222B8158C()
{
  sub_222C947FC();

  sub_222C9477C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A10, &unk_222C99C60);
  sub_222C947FC();
  swift_getTupleTypeMetadata2();
  sub_222B81E6C();
  sub_222C9469C();

  swift_getWitnessTable();
  return sub_222C946BC();
}

uint64_t sub_222B816F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v39 = a6;
  v38 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = sub_222C935EC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v19 = a1[1];
  sub_222B81ED0(a2, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_222B4FCD4(v13, &qword_27D025360, &unk_222C98300);
    v21 = v39;
    *v39 = a3;
    sub_222C947FC();
    sub_222C9518C();
    swift_allocObject();

    v22 = sub_222C9473C();
    *v23 = sub_222C9477C();
    sub_222B5065C(v22);
    v24 = sub_222C9476C();

    v21[1] = v24;
  }

  else
  {
    v26 = (*(v15 + 32))(v18, v13, v14);
    v40 = v20;
    MEMORY[0x28223BE20](v26);
    v27 = v38;
    *(&v37 - 4) = a4;
    *(&v37 - 3) = v27;
    *(&v37 - 2) = v18;
    v28 = sub_222C947FC();
    WitnessTable = swift_getWitnessTable();
    v30 = sub_222C1FE68(sub_222B81F40, (&v37 - 6), v28, WitnessTable);
    v32 = v31;
    v33 = v39;
    *v39 = v30;
    sub_222C9518C();
    swift_allocObject();
    v34 = sub_222C9473C();
    *v35 = v32;
    sub_222B5065C(v34);
    v36 = sub_222C9476C();

    v33[1] = v36;
    return (*(v15 + 8))(v18, v14);
  }

  return result;
}

uint64_t sub_222B81A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_222C935EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a4 + 8))(a3, a4);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_222B4FCD4(v9, &qword_27D025360, &unk_222C98300);
    v15 = 0;
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    sub_222B81F4C();
    v16 = sub_222C9446C();
    (*(v11 + 8))(v14, v10);
    v15 = v16 ^ 1;
  }

  return v15 & 1;
}

uint64_t static TimeEventUtils.groupAndJoinEvents<A, B>(milestoneEvents:eventsToJoin:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[5] = a6;
  v17 = a1;
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v7 = sub_222C947FC();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  WitnessTable = swift_getWitnessTable();
  sub_222B80CD4(sub_222B81DE0, v16, v7, v8, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v10);
  v11 = sub_222B8158C();

  v17 = a1;
  *&v21 = v11;
  sub_222C947FC();
  v12 = sub_222C947FC();
  v13 = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  sub_222C9524C();

  v21 = v22;
  swift_getTupleTypeMetadata2();
  v17 = v7;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  sub_222C94D3C();
  swift_getWitnessTable();
  return sub_222C9480C();
}

unint64_t sub_222B81E6C()
{
  result = qword_280FDB750;
  if (!qword_280FDB750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D025A10, &unk_222C99C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FDB750);
  }

  return result;
}

uint64_t sub_222B81ED0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_222B81F4C()
{
  result = qword_27D025A18;
  if (!qword_27D025A18)
  {
    sub_222C935EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025A18);
  }

  return result;
}

uint64_t PIMSConstraintMismatch.eventName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PIMSConstraintMismatch.eventName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

unint64_t PIMSConstraintMismatch.getLoggableProperties()()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025410, &unk_222C991B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222C97C40;
  strcpy((inited + 32), "mismatchReason");
  *(inited + 47) = -18;
  v3 = PIMSConstraintMismatchReason.rawValue.getter();
  v4 = MEMORY[0x277D5FD28];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v4;
  *(inited + 48) = v3;
  *(inited + 56) = v5;
  v6 = sub_222B628C4(inited);
  swift_setDeallocating();
  sub_222B629F8(inited + 32);
  return v6;
}

unint64_t PIMSConstraintMismatchReason.rawValue.getter()
{
  result = 0xD000000000000027;
  switch(*v0)
  {
    case 1:
    case 0xB:
      result = 0xD000000000000025;
      break;
    case 2:
    case 0xE:
      result = 0xD000000000000023;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    case 4:
    case 0x15:
    case 0x1C:
      result = 0xD000000000000032;
      break;
    case 5:
    case 6:
    case 0x1A:
      result = 0xD00000000000002ELL;
      break;
    case 7:
    case 0x10:
      result = 0xD000000000000033;
      break;
    case 8:
      result = 0xD00000000000002FLL;
      break;
    case 9:
      result = 0xD000000000000034;
      break;
    case 0xA:
    case 0xF:
      result = 0xD000000000000035;
      break;
    case 0xC:
      result = 0xD000000000000029;
      break;
    case 0xD:
      result = 0xD00000000000002BLL;
      break;
    case 0x11:
      result = 0xD000000000000038;
      break;
    case 0x12:
    case 0x1B:
      result = 0xD00000000000002DLL;
      break;
    case 0x13:
    case 0x14:
      result = 0xD00000000000002CLL;
      break;
    case 0x16:
      result = 0xD000000000000036;
      break;
    case 0x17:
      result = 0xD00000000000002ALL;
      break;
    case 0x18:
    case 0x19:
      result = 0xD000000000000030;
      break;
    case 0x1D:
      result = 0xD000000000000031;
      break;
    case 0x1E:
      result = 0xD00000000000003FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_222B823AC()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025410, &unk_222C991B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222C97C40;
  strcpy((inited + 32), "mismatchReason");
  *(inited + 47) = -18;
  v3 = PIMSConstraintMismatchReason.rawValue.getter();
  v4 = MEMORY[0x277D5FD28];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v4;
  *(inited + 48) = v3;
  *(inited + 56) = v5;
  v6 = sub_222B628C4(inited);
  swift_setDeallocating();
  sub_222B629F8(inited + 32);
  return v6;
}

SiriPrivateLearningInference::PIMSConstraintMismatchReason_optional __swiftcall PIMSConstraintMismatchReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222C9522C();

  v5 = 0;
  v6 = 13;
  switch(v3)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v5 = 1;
      goto LABEL_25;
    case 2:
      v5 = 2;
      goto LABEL_25;
    case 3:
      v5 = 3;
      goto LABEL_25;
    case 4:
      v5 = 4;
      goto LABEL_25;
    case 5:
      v5 = 5;
      goto LABEL_25;
    case 6:
      v5 = 6;
      goto LABEL_25;
    case 7:
      v5 = 7;
      goto LABEL_25;
    case 8:
      v5 = 8;
      goto LABEL_25;
    case 9:
      v5 = 9;
      goto LABEL_25;
    case 10:
      v5 = 10;
      goto LABEL_25;
    case 11:
      v5 = 11;
      goto LABEL_25;
    case 12:
      v5 = 12;
LABEL_25:
      v6 = v5;
      break;
    case 13:
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    default:
      v6 = 31;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_222B825F4(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = PIMSConstraintMismatchReason.rawValue.getter();
  v4 = v3;
  if (v2 == PIMSConstraintMismatchReason.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_222C951FC();
  }

  return v7 & 1;
}

uint64_t sub_222B82690()
{
  v1 = *v0;
  sub_222C952FC();
  PIMSConstraintMismatchReason.rawValue.getter();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222B826F8()
{
  v2 = *v0;
  PIMSConstraintMismatchReason.rawValue.getter();
  sub_222C9452C();
}

uint64_t sub_222B8275C()
{
  v1 = *v0;
  sub_222C952FC();
  PIMSConstraintMismatchReason.rawValue.getter();
  sub_222C9452C();

  return sub_222C9534C();
}

unint64_t sub_222B827CC@<X0>(unint64_t *a1@<X8>)
{
  result = PIMSConstraintMismatchReason.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}