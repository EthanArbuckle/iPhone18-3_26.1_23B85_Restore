unint64_t sub_22FAC7BB0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7220);
    v2 = sub_22FCC9524();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_22FA2F7D8(*(a1 + 56) + 32 * v13, v29);
        *&v28 = v15;
        *(&v28 + 1) = v16;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v17 = v28;
        sub_22FA32554(v27, &v22);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478);
        swift_dynamicCast();
        sub_22FA32554(&v23, v25);
        sub_22FA32554(v25, v26);
        sub_22FA32554(v26, &v24);
        result = sub_22FA2DB54(v17, *(&v17 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v17;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          result = sub_22FA32554(&v24, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v17;
          result = sub_22FA32554(&v24, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_22FAC7E40(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7210);
    v2 = sub_22FCC9524();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_22FA2DB54(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

unint64_t sub_22FAC8020(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8220);
    v2 = sub_22FCC9524();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = sub_22FA3A77C(0, &qword_28147ADE0);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x277D837D0])
  {
    v25 = v8 >> 6;

    v26 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v31 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v31 >= v25)
      {
LABEL_37:

        return v2;
      }

      v7 = *(v4 + 8 * v31);
      ++v26;
      if (v7)
      {
        while (1)
        {
          v32 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v33 = v32 | (v31 << 6);
          v34 = *(*(a1 + 48) + 8 * v33);
          sub_22FA2F7D8(*(a1 + 56) + 32 * v33, &v47 + 8);
          *&v47 = v34;
          v44 = v47;
          v45 = v48;
          v46 = v49;
          sub_22FA32554((&v44 + 8), &v40);
          v35 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478);
          swift_dynamicCast();
          sub_22FA32554((v42 + 8), (v43 + 8));
          sub_22FA32554((v43 + 8), v41);
          sub_22FA32554(v41, v43);
          result = sub_22FA6A300(v34);
          if (v36)
          {
            v27 = *(v2 + 48);
            v28 = *(v27 + 8 * result);
            *(v27 + 8 * result) = v34;
            v29 = result;

            v30 = (*(v2 + 56) + 32 * v29);
            __swift_destroy_boxed_opaque_existential_0(v30);
            result = sub_22FA32554(v43, v30);
            v26 = v31;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (*(v2 + 16) >= *(v2 + 24))
            {
              goto LABEL_41;
            }

            *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
            *(*(v2 + 48) + 8 * result) = v34;
            result = sub_22FA32554(v43, (*(v2 + 56) + 32 * result));
            v37 = *(v2 + 16);
            v38 = __OFADD__(v37, 1);
            v39 = v37 + 1;
            if (v38)
            {
              goto LABEL_42;
            }

            *(v2 + 16) = v39;
            v26 = v31;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v31 = v26;
        }
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 64;

    v12 = 0;
    while (v7)
    {
LABEL_16:
      v15 = __clz(__rbit64(v7)) | (v12 << 6);
      v16 = *(*(a1 + 48) + 8 * v15);
      sub_22FA2F7D8(*(a1 + 56) + 32 * v15, &v47 + 8);
      *&v47 = v16;
      v44 = v47;
      v45 = v48;
      v46 = v49;
      sub_22FA32554((&v44 + 8), v41);
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478);
      swift_dynamicCast();
      sub_22FA32554((v42 + 8), (v43 + 8));
      sub_22FA32554((v43 + 8), v42);
      result = sub_22FCC9174();
      v18 = -1 << *(v2 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v10 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_39;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v7 &= v7 - 1;
      *(*(v2 + 48) + 8 * v13) = v16;
      result = sub_22FA32554(v42, (*(v2 + 56) + 32 * v13));
      ++*(v2 + 16);
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v9)
      {
        goto LABEL_37;
      }

      v7 = *(v4 + 8 * v14);
      ++v12;
      if (v7)
      {
        v12 = v14;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t sub_22FAC848C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7338);
    v2 = sub_22FCC9524();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_22FA2F7D8(*(a1 + 56) + 32 * v13, v29);
        *&v28 = v15;
        *(&v28 + 1) = v16;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v17 = v28;
        sub_22FA32554(v27, &v22);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478);
        swift_dynamicCast();
        sub_22FA32554(&v23, v25);
        sub_22FA32554(v25, v26);
        sub_22FA32554(v26, &v24);
        result = sub_22FA2DB54(v17, *(&v17 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v17;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          result = sub_22FA32554(&v24, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v17;
          result = sub_22FA32554(&v24, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_22FAC8718(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8208);
    v2 = sub_22FCC9524();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + 16 * (v12 | (v11 << 6)));
        v15 = *v13;
        v14 = v13[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8210);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8218);
        swift_dynamicCast();
        result = sub_22FA2DB54(v15, v14);
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v15;
          v9[1] = v14;
          v10 = result;

          *(v2[7] + 8 * v10) = v21;

          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v15;
          v17[1] = v14;
          *(v2[7] + 8 * result) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_21;
          }

          v2[2] = v20;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_22FAC894C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD81F0);
    v2 = sub_22FCC9524();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + 16 * (v12 | (v11 << 6)));
        v15 = *v13;
        v14 = v13[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD81F8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8200);
        swift_dynamicCast();
        result = sub_22FA2DB54(v15, v14);
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v15;
          v9[1] = v14;
          v10 = result;

          *(v2[7] + 8 * v10) = v21;

          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v15;
          v17[1] = v14;
          *(v2[7] + 8 * result) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_21;
          }

          v2[2] = v20;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22FAC8B80(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD81E8);
    v2 = sub_22FCC9524();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = *(*(a1 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v5)))));

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448);
    swift_dynamicCast();
    result = sub_22FCC9304();
    v14 = -1 << *(v2 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v7 + 8 * (v15 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v16);
        if (v20 != -1)
        {
          v10 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v15) & ~*(v7 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v21;
    *(v11 + 16) = v22;
    *(v11 + 32) = v23;
    *(*(v2 + 56) + 8 * v10) = v13;
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_22FAC8DF0(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD75C8);
    v2 = sub_22FCC9524();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7890);
  v4 = v1 + 64;
  v5 = 1 << *(v1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v1 + 64);
  v40 = v1;
  v8 = v5 + 63;
  if (v3 == MEMORY[0x277D837D0])
  {
    v25 = v8 >> 6;

    v26 = 0;
    while (v7)
    {
      v31 = v26;
LABEL_35:
      v32 = *(*(v1 + 56) + 8 * (__clz(__rbit64(v7)) | (v31 << 6)));
      v7 &= v7 - 1;

      v33 = v32;
      swift_dynamicCast();
      v34 = sub_22FA6A3BC(v41, v42);
      if (v35)
      {
        v27 = (*(v2 + 48) + 16 * v34);
        *v27 = v41;
        v27[1] = v42;
        v28 = v34;

        v29 = *(v2 + 56);
        v30 = *(v29 + 8 * v28);
        *(v29 + 8 * v28) = v33;
      }

      else
      {
        if (*(v2 + 16) >= *(v2 + 24))
        {
          goto LABEL_43;
        }

        *(v2 + 64 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
        v36 = (*(v2 + 48) + 16 * v34);
        *v36 = v41;
        v36[1] = v42;
        *(*(v2 + 56) + 8 * v34) = v33;
        v37 = *(v2 + 16);
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_44;
        }

        *(v2 + 16) = v39;
      }

      v26 = v31;
      v1 = v40;
    }

    while (1)
    {
      v31 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v31 >= v25)
      {
LABEL_39:

        return;
      }

      v7 = *(v4 + 8 * v31);
      ++v26;
      if (v7)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 64;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      v15 = *(*(v1 + 56) + 8 * (__clz(__rbit64(v7)) | (v11 << 6)));

      v16 = v15;
      swift_dynamicCast();
      sub_22FCC9844();
      sub_22FCC9864();
      if (v42)
      {
        sub_22FCC8B14();
      }

      v17 = sub_22FCC9894();
      v18 = -1 << *(v2 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v10 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_41;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v2 + 48) + 16 * v12);
      *v13 = v41;
      v13[1] = v42;
      *(*(v2 + 56) + 8 * v12) = v16;
      ++*(v2 + 16);
      v1 = v40;
    }

    while (1)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v14 >= v9)
      {
        goto LABEL_39;
      }

      v7 = *(v4 + 8 * v14);
      ++v11;
      if (v7)
      {
        v11 = v14;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_22FAC91C8()
{
  sub_22FA3A77C(0, &qword_28147ADA0);
  result = sub_22FCC91C4();
  qword_27DAD81B0 = result;
  return result;
}

uint64_t sub_22FAC9240()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_27DAD81B8);
  __swift_project_value_buffer(v0, qword_27DAD81B8);
  if (qword_27DAD6E90 != -1)
  {
    swift_once();
  }

  v1 = qword_27DAD81B0;
  return sub_22FCC8694();
}

uint64_t sub_22FAC92CC()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22FAC9304()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22FAC9344(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  return MEMORY[0x2822009F8](sub_22FAC9368, 0, 0);
}

uint64_t sub_22FAC9368()
{
  if (qword_27DAD6E90 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = v0[22];
  v3 = qword_27DAD81B0;
  sub_22FCC76D4();
  swift_allocObject();
  v4 = v3;
  v0[25] = sub_22FCC76C4();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v0[6] = sub_22FA4ED4C;
  v0[7] = v5;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22FA51A14;
  v0[5] = &block_descriptor_12;
  v6 = _Block_copy(v0 + 2);
  v7 = objc_opt_self();

  v8 = [v7 progressReporterWithProgressBlock_];
  v0[26] = v8;
  _Block_release(v6);

  v9 = sub_22FCC9014();
  v11 = v10;
  v0[27] = v9;
  v0[28] = v10;
  v12 = sub_22FAC9A60(v9);
  if (v12)
  {
    v14 = v13;
    v15 = *(v12 + 16);

    if (v15)
    {
      if (v14 >> 62)
      {
        v16 = sub_22FCC92C4();
      }

      else
      {
        v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v0[29] = v16;
      if (v16 >= 1)
      {
        sub_22FCC9004();
        v17 = v0[24];
        type metadata accessor for AlchemistGenerationTask.ProcessingResults();
        inited = swift_initStackObject();
        v0[30] = inited;
        v19 = MEMORY[0x277D84FA0];
        *(inited + 16) = MEMORY[0x277D84FA0];
        *(inited + 24) = v19;
        sub_22FCC76B4();
        v20 = *(v17 + OBJC_IVAR____TtC13PhotoAnalysis23AlchemistGenerationTask_analyticsHelper);
        v0[31] = v20;

        return MEMORY[0x2822009F8](sub_22FAC9740, v20, 0);
      }
    }

    else
    {
    }
  }

  if (qword_27DAD6E98 != -1)
  {
    swift_once();
  }

  v21 = sub_22FCC8684();
  __swift_project_value_buffer(v21, qword_27DAD81B8);
  v22 = sub_22FCC8664();
  v23 = sub_22FCC8F34();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_22FA28000, v22, v23, "No assets to alchemize.", v24, 2u);
    MEMORY[0x23190A000](v24, -1, -1);
  }

  sub_22FCC9004();

  v25 = v0[1];

  return v25();
}

uint64_t sub_22FAC9740()
{
  sub_22FACA154();

  return MEMORY[0x2822009F8](sub_22FAC97A8, 0, 0);
}

uint64_t sub_22FAC97A8()
{
  v19 = v0;
  if (qword_27DAD6E98 != -1)
  {
    swift_once();
  }

  v1 = sub_22FCC8684();
  __swift_project_value_buffer(v1, qword_27DAD81B8);
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F04();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 232);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 134218498;
    *(v5 + 4) = 0;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v4;
    *(v5 + 22) = 2080;

    v7 = sub_22FCC8E94();
    v9 = sub_22FA2F600(v7, v8, &v18);

    *(v5 + 24) = v9;
    _os_log_impl(&dword_22FA28000, v2, v3, "%ld/%ld assets processed through Alchemist: %s", v5, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23190A000](v6, -1, -1);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  else
  {
  }

  sub_22FA2E6E4(*(v0 + 192) + 136, v0 + 104);
  v10 = *(v0 + 216);
  v11 = *(v0 + 224);
  v12 = *(v0 + 208);
  if (*(v0 + 128))
  {
    v13 = *(v0 + 192);
    sub_22FA2CF78((v0 + 104), v0 + 64);
    v14 = *(v0 + 88);
    v15 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v14);
    (*(v15 + 16))(0, *(v13 + 56), *(v13 + 64), v14, v15);
    swift_setDeallocating();

    __swift_destroy_boxed_opaque_existential_0(v0 + 64);
  }

  else
  {
    swift_setDeallocating();

    sub_22FA2B420(v0 + 104, &unk_27DAD83A0);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_22FAC9A60(uint64_t a1)
{
  v52 = a1;
  v3 = sub_22FCC7BE4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v1 + 184) + 112);
  v8 = [v7 photoLibrary];
  v9 = [v8 librarySpecificFetchOptions];
  (*(v4 + 104))(v6, *MEMORY[0x277D3C570], v3);
  sub_22FCC7BF4();
  swift_allocObject();
  v53 = v8;
  v10 = sub_22FCC7BD4();
  sub_22FCC77E4();
  v11 = sub_22FCC77D4();
  v12 = [objc_opt_self() filterSuggestions:v11 excludingSingleFeature:4];
  v13 = [objc_opt_self() fetchKeyAssetBySuggestionUUIDForSuggestions:v12 options:v9];
  if (!v13)
  {
    goto LABEL_14;
  }

  v14 = v13;
  v51 = v10;
  sub_22FA3A77C(0, &qword_28147ADE8);
  v15 = sub_22FCC89D4();

  v16 = [v12 fetchedObjects];
  if (!v16)
  {

LABEL_14:
    if (qword_27DAD6E98 != -1)
    {
      swift_once();
    }

    v24 = sub_22FCC8684();
    __swift_project_value_buffer(v24, qword_27DAD81B8);
    v25 = sub_22FCC8664();
    v26 = sub_22FCC8F34();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_22FA28000, v25, v26, "No suggestions to fetch.", v27, 2u);
      MEMORY[0x23190A000](v27, -1, -1);
    }

    v15 = v52;
    sub_22FCC9004();
    if (v2)
    {

LABEL_35:

      return v15;
    }

    return 0;
  }

  v17 = v16;
  v49 = v9;
  v50 = v7;
  sub_22FA3A77C(0, &unk_28147AED0);
  v18 = sub_22FCC8C44();

  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19 >= 0xA)
    {
      v20 = 10;
    }

    else
    {
      v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19 >= v20)
    {
      goto LABEL_8;
    }

LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v18 < 0)
  {
    v45 = v18;
  }

  else
  {
    v45 = v18 & 0xFFFFFFFFFFFFFF8;
  }

  v48 = v45;
  v46 = sub_22FCC92C4();
  if (v46 >= 0xA)
  {
    v20 = 10;
  }

  else
  {
    v20 = v46;
  }

  if ((v46 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_53;
  }

  v19 = v46;
  result = sub_22FCC92C4();
  if ((result & 0x8000000000000000) == 0)
  {
    result = sub_22FCC92C4();
    if (result >= v20)
    {
LABEL_8:
      if ((v18 & 0xC000000000000001) != 0)
      {

        if (v19)
        {
          v22 = 0;
          do
          {
            v23 = v22 + 1;
            sub_22FCC93A4();
            v22 = v23;
          }

          while (v20 != v23);
        }
      }

      else
      {
      }

      if (v18 >> 62)
      {
        v29 = sub_22FCC94F4();
        v48 = v31;
        v28 = v32;
        v30 = v33;

        if (!*(v15 + 16))
        {
          goto LABEL_30;
        }
      }

      else
      {
        v28 = 0;
        v29 = v18 & 0xFFFFFFFFFFFFFF8;
        v48 = (v18 & 0xFFFFFFFFFFFFFF8) + 32;
        v30 = (2 * v20) | 1;
        if (!*(v15 + 16))
        {
          goto LABEL_30;
        }
      }

      v34 = (v30 >> 1) - v28;
      if (!__OFSUB__(v30 >> 1, v28))
      {
        if (v34 >= 1)
        {
          if (v30)
          {
            v40 = sub_22FCC9724();
            swift_unknownObjectRetain_n();
            v52 = v40;
            v41 = swift_dynamicCastClass();
            if (!v41)
            {
              swift_unknownObjectRelease();
              v41 = MEMORY[0x277D84F90];
            }

            v42 = *(v41 + 16);

            if (v42 == v34)
            {
              v43 = swift_dynamicCastClass();

              swift_unknownObjectRelease();
              v44 = v50;
              if (!v43)
              {
                swift_unknownObjectRelease();
              }

              swift_unknownObjectRelease();

              return v15;
            }

            swift_unknownObjectRelease_n();
          }

          sub_22FACABB8(v29, v48, v28, v30, &unk_28147AED0);
          swift_unknownObjectRelease();

          return v15;
        }

LABEL_30:

        if (qword_27DAD6E98 == -1)
        {
LABEL_31:
          v35 = sub_22FCC8684();
          __swift_project_value_buffer(v35, qword_27DAD81B8);
          v36 = sub_22FCC8664();
          v37 = sub_22FCC8F34();
          v38 = os_log_type_enabled(v36, v37);
          v7 = v50;
          if (v38)
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            _os_log_impl(&dword_22FA28000, v36, v37, "No assets to alchemize.", v39, 2u);
            MEMORY[0x23190A000](v39, -1, -1);
          }

          v15 = v52;
          sub_22FCC9004();
          if (v2)
          {

            swift_unknownObjectRelease();
            v9 = v49;
            goto LABEL_35;
          }

          swift_unknownObjectRelease();
          return 0;
        }

LABEL_54:
        swift_once();
        goto LABEL_31;
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    goto LABEL_58;
  }

LABEL_59:
  __break(1u);
  return result;
}

void sub_22FACA154()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    if (*(v0 + 120))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD81D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22FCD1800;
      *(inited + 32) = sub_22FCC8A84();
      *(inited + 40) = v3;
      v4 = v1;
      *(inited + 48) = sub_22FCC8A54();
      v5 = sub_22FA4D460(inited);
      swift_setDeallocating();
      sub_22FA2B420(inited + 32, &qword_27DAD81E0);
      v6 = *(v0 + 120);
      v7 = *MEMORY[0x277CF6E08];
      sub_22FAC7E40(v5);

      sub_22FA3A77C(0, &qword_28147ADD0);
      v8 = sub_22FCC89C4();

      [v4 endSignpost:v6 forEventName:v7 withPayload:v8];

      *(v0 + 120) = 0;
    }
  }
}

uint64_t sub_22FACA2CC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  sub_22FA2B420(v0 + 136, &unk_27DAD83A0);

  v1 = OBJC_IVAR____TtC13PhotoAnalysis23AlchemistGenerationTask_tmpAssetDirectory;
  v2 = sub_22FCC65F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_22FACA37C()
{
  sub_22FACA2CC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AlchemistGenerationTask()
{
  result = qword_28147F488;
  if (!qword_28147F488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FACA428()
{
  result = sub_22FCC65F4();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_22FACA554()
{
  v1 = *(*v0 + 72);

  return v1;
}

uint64_t sub_22FACA598()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72B8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22FCD1800;
  *(v0 + 32) = sub_22FA3A77C(0, &qword_28147AE18);
  return v0;
}

uint64_t sub_22FACA608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FA2C030;

  return sub_22FAC9344(a2, a3);
}

uint64_t sub_22FACA6B0()
{
  v0 = sub_22FCC77B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3C268], v0);
  v4 = sub_22FCC7794();
  (*(v1 + 8))(v3, v0);
  return v4;
}

void sub_22FACA820(char a1)
{
  if (a1)
  {
    sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    sub_22FCC8F24();
    sub_22FA3A77C(0, &qword_28147ADA0);
    v1 = sub_22FCC91B4();
    sub_22FCC85A4();
  }
}

uint64_t sub_22FACA924(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 72) == *(*a2 + 72) && *(*a1 + 80) == *(*a2 + 80))
  {
    return 1;
  }

  else
  {
    return sub_22FCC9704();
  }
}

uint64_t sub_22FACA950(uint64_t a1)
{
  *(a1 + 8) = sub_22FACA9B8(&qword_28147F4A0);
  result = sub_22FACA9B8(&qword_27DAD81D0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FACA9B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AlchemistGenerationTask();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22FACAA04(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72B0);
      v7 = *(type metadata accessor for PromptSuggestionFetcher.MCSuggestion(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for PromptSuggestionFetcher.MCSuggestion(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_22FACABB8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        sub_22FA3A77C(0, a5);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D0);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_22FACACB4(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_22FCC92C4();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_22FA8A020(v2, 0);

    v1 = sub_22FA88874(&v5, (v3 + 32), v2, v1);
    sub_22FA37D64();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void sub_22FACAD64(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_22FACAE3C()
{
  if (!PLIsFeaturedContentAllowed())
  {
    if (qword_27DAD6E98 != -1)
    {
      swift_once();
    }

    v1 = sub_22FCC8684();
    __swift_project_value_buffer(v1, qword_27DAD81B8);
    v2 = sub_22FCC8664();
    v3 = sub_22FCC8EF4();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_13;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Featured content is disabled in settings";
    goto LABEL_12;
  }

  if (PLIsAlchemistAllowed())
  {
    return 1;
  }

  if (qword_27DAD6E98 != -1)
  {
    swift_once();
  }

  v6 = sub_22FCC8684();
  __swift_project_value_buffer(v6, qword_27DAD81B8);
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8EF4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Alchemist has been disabled from settings";
LABEL_12:
    _os_log_impl(&dword_22FA28000, v2, v3, v5, v4, 2u);
    MEMORY[0x23190A000](v4, -1, -1);
  }

LABEL_13:

  return 0;
}

uint64_t sub_22FACAFC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8238);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double PhotoStyleOutputSample.init(identifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 2;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 1;
  *(a3 + 80) = 0;
  *(a3 + 88) = 1;
  *(a3 + 96) = 0;
  *(a3 + 104) = 1;
  *(a3 + 108) = 0;
  *(a3 + 112) = 1;
  *(a3 + 116) = 0;
  *(a3 + 120) = 1;
  *(a3 + 128) = 0;
  *(a3 + 136) = 1;
  *(a3 + 137) = 33686018;
  *(a3 + 144) = MEMORY[0x277D84F90];
  *(a3 + 152) = 0;
  *(a3 + 160) = 1;
  result = 0.0;
  *(a3 + 184) = 0u;
  *(a3 + 168) = 0u;
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_22FACB0A4()
{
  v1 = *v0;

  return v1;
}

uint64_t PhotoStyleOutputSample.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PhotoStyleOutputSample.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PhotoStyleOutputSample.styleChoice.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PhotoStyleOutputSample.styleChoice.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PhotoStyleOutputSample.sliderValues.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_22FACB2AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_22FACB2F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
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
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22FACB374(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_22FACB3BC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void *sub_22FACB418()
{
  type metadata accessor for InstanceCounter();
  result = swift_allocObject();
  result[2] = 0x6B726F5774736554;
  result[3] = 0xEA00000000007265;
  result[4] = 0;
  qword_27DAE2980 = result;
  return result;
}

uint64_t sub_22FACB468()
{
  if (qword_27DAD6EA0 != -1)
  {
    swift_once();
  }

  sub_22FB5A80C();

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22FACB550(uint64_t a1)
{
  result = sub_22FACB7E0(&qword_27DAD8240);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FACB594(uint64_t a1)
{
  result = sub_22FACB7E0(&qword_27DAD8248);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FACB5D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22FCC65F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v1 + 136) = 1;
  type metadata accessor for TaskRecorder(0);
  swift_allocObject();

  *(v1 + 112) = sub_22FC34C84(v8);
  type metadata accessor for PhotoKitChangeReader();
  v9 = swift_allocObject();

  swift_defaultActor_initialize();
  v10 = *(a1 + 112);
  *(v9 + 112) = a1;
  *(v9 + 120) = v10;
  *(v2 + 120) = v9;
  v11 = [v10 photoLibraryURL];
  sub_22FCC65A4();

  sub_22FACB7E0(&qword_27DAD8250);
  v12 = sub_22FA8E6F0(v7);
  (*(v5 + 8))(v7, v4);
  *(v2 + 128) = v12;
  if (qword_27DAD6EA0 != -1)
  {
    swift_once();
  }

  sub_22FB5A674();
  return v2;
}

uint64_t sub_22FACB7E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TestWorker();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FACB834()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_27DAD8258);
  __swift_project_value_buffer(v0, qword_27DAD8258);
  return sub_22FCC8674();
}

uint64_t sub_22FACB8B8()
{
  v0 = sub_22FA4D474(&unk_2844A5690);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8288);
  result = swift_arrayDestroy();
  off_27DAD8270 = v0;
  return result;
}

uint64_t sub_22FACB92C(uint64_t a1, unint64_t a2)
{
  v4 = sub_22FCC6894();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8278);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v57 - v9;
  v11 = sub_22FCC6824();
  v59 = *(v11 - 8);
  v60 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DAD6EA8 != -1)
  {
    swift_once();
  }

  v14 = sub_22FCC8684();
  v15 = __swift_project_value_buffer(v14, qword_27DAD8258);

  v57[2] = v15;
  v16 = sub_22FCC8664();
  v17 = sub_22FCC8F34();

  v18 = os_log_type_enabled(v16, v17);
  v58 = v13;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v57[0] = v5;
    v21 = v4;
    v22 = v20;
    v61 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_22FA2F600(a1, a2, &v61);
    _os_log_impl(&dword_22FA28000, v16, v17, "Getting fallback locale for %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v23 = v22;
    v4 = v21;
    v5 = v57[0];
    MEMORY[0x23190A000](v23, -1, -1);
    v24 = v19;
    v13 = v58;
    MEMORY[0x23190A000](v24, -1, -1);
  }

  sub_22FCC6814();
  sub_22FCC6804();
  sub_22FCC6884();
  (*(v5 + 8))(v7, v4);
  v25 = sub_22FCC6854();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v10, 1, v25) == 1)
  {
    sub_22FACC0CC(v10);

    v27 = sub_22FCC8664();
    v28 = sub_22FCC8F14();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v61 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_22FA2F600(a1, a2, &v61);
      _os_log_impl(&dword_22FA28000, v27, v28, "Fallback mapping from %s not found, missing language code identifier", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x23190A000](v30, -1, -1);
      MEMORY[0x23190A000](v29, -1, -1);
    }

    goto LABEL_20;
  }

  v57[0] = a1;
  v31 = sub_22FCC6844();
  v33 = v32;
  (*(v26 + 8))(v10, v25);
  if (qword_27DAD6EB0 != -1)
  {
    swift_once();
  }

  v34 = off_27DAD8270;
  v35 = sub_22FCC8AF4();
  if (!v34[2])
  {

LABEL_17:

    v47 = sub_22FCC8664();
    v48 = sub_22FCC8F14();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v61 = v50;
      *v49 = 136315394;
      v51 = v57[0];
      *(v49 + 4) = sub_22FA2F600(v57[0], a2, &v61);
      *(v49 + 12) = 2080;
      v52 = v31;
      a1 = v51;
      v53 = sub_22FA2F600(v52, v33, &v61);

      *(v49 + 14) = v53;
      _os_log_impl(&dword_22FA28000, v47, v48, "Fallback mapping from %s with %s not found", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v50, -1, -1);
      MEMORY[0x23190A000](v49, -1, -1);

      v13 = v58;
    }

    else
    {

      v13 = v58;
      a1 = v57[0];
    }

LABEL_20:
    sub_22FACC134();
    swift_allocError();
    *v54 = a1;
    v54[1] = a2;
    swift_willThrow();
    v41 = v59 + 8;
    v55 = *(v59 + 8);

    v55(v13, v60);
    return v41;
  }

  v37 = sub_22FA2DB54(v35, v36);
  v39 = v38;

  if ((v39 & 1) == 0)
  {
    goto LABEL_17;
  }

  v40 = (v34[7] + 16 * v37);
  v41 = *v40;
  v42 = v40[1];
  swift_bridgeObjectRetain_n();

  v43 = sub_22FCC8664();
  v44 = sub_22FCC8F34();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v61 = v46;
    *v45 = 136315394;
    *(v45 + 4) = sub_22FA2F600(v57[0], a2, &v61);
    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_22FA2F600(v41, v42, &v61);
    _os_log_impl(&dword_22FA28000, v43, v44, "Fallback from %s to %s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v46, -1, -1);
    MEMORY[0x23190A000](v45, -1, -1);
  }

  (*(v59 + 8))(v58, v60);
  return v41;
}

uint64_t sub_22FACC0CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8278);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22FACC134()
{
  result = qword_27DAD8280;
  if (!qword_27DAD8280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8280);
  }

  return result;
}

uint64_t sub_22FACC198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v105 = a1;
  v116 = *MEMORY[0x277D85DE8];
  v7 = sub_22FCC6794();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v103 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v94 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v94 - v14;
  v106 = *(v3 + 16);
  v16 = [v106 identifier];
  v17 = sub_22FCC8A84();
  v19 = v18;

  v114 = v17;
  v115 = v19;
  MEMORY[0x231907FA0](46, 0xE100000000000000);
  MEMORY[0x231907FA0](a2, a3);
  v20 = v114;
  v21 = v115;
  sub_22FCC6764();
  v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v23 = objc_allocWithZone(MEMORY[0x277CF0818]);
  v100 = v22;
  v24 = v22;
  v102 = v20;
  v25 = sub_22FCC8A54();
  v26 = [v23 initWithIdentifier:v25 taskName:0 qos:v24 workloadCategory:10 expectedMetricValue:0];

  v107 = v24;
  v27 = OBJC_IVAR____TtC13PhotoAnalysis17SystemTaskWrapper_startTime;
  swift_beginAccess();
  v28 = *(v8 + 16);
  v110 = v4;
  v111 = v27;
  v104 = v28;
  v28(v13, v4 + v27, v7);
  v29 = sub_22FCC66F4();
  v108 = v7;
  v109 = v8;
  v31 = (v8 + 8);
  v30 = *(v8 + 8);
  v32 = v13;
  v33 = v13;
  v34 = v106;
  v112 = v30;
  v30(v33, v7);
  v113[0] = 0;
  LODWORD(v25) = [v34 registerThroughputTrackingFor:v26 withStartTime:v29 error:v113];

  v35 = v113[0];
  if (v25)
  {
    v36 = v113[0];
    [v26 addItemCount_];
    v37 = sub_22FCC66F4();
    v113[0] = 0;
    v38 = [v34 deregisterThroughputTrackingFor:v26 withEndTime:v37 error:v113];

    v35 = v113[0];
    v39 = v15;
    if (v38)
    {
      v106 = v26;
      v40 = v110;
      v41 = v108;
      v104(v32, v110 + v111, v108);
      v42 = v35;
      sub_22FCC66D4();
      v44 = v43;
      v101 = v32;
      v112(v32, v41);
      if (qword_28147F920 != -1)
      {
        swift_once();
      }

      v45 = sub_22FCC8684();
      __swift_project_value_buffer(v45, qword_281487E70);
      v104(v103, v39, v41);
      v46 = v107;
      v47 = v107;

      v48 = sub_22FCC8664();
      v49 = sub_22FCC8F34();

      v98 = v47;

      v99 = v49;
      if (os_log_type_enabled(v48, v49))
      {
        v50 = v105;
        v51 = v105 / v44;
        v52 = swift_slowAlloc();
        v97 = v39;
        v53 = v52;
        v54 = swift_slowAlloc();
        v95 = v54;
        v96 = swift_slowAlloc();
        v113[0] = v96;
        *v53 = 136316674;
        v55 = sub_22FA2F600(v102, v21, v113);
        v102 = v48;
        v56 = v55;

        *(v53 + 4) = v56;
        *(v53 + 12) = 2048;
        *(v53 + 14) = v50;
        *(v53 + 22) = 2112;
        v57 = v98;
        *(v53 + 24) = v98;
        *v54 = v100;
        *(v53 + 32) = 2080;
        v58 = v101;
        v104(v101, v40 + v111, v41);
        sub_22FACE970(&qword_281482528, MEMORY[0x277CC9578]);
        v59 = v57;
        v60 = sub_22FCC96C4();
        v62 = v61;
        v63 = v112;
        v112(v58, v41);
        v64 = sub_22FA2F600(v60, v62, v113);
        v40 = v110;

        *(v53 + 34) = v64;
        *(v53 + 42) = 2080;
        v65 = v103;
        v66 = sub_22FCC96C4();
        v68 = v67;
        v63(v65, v41);
        v69 = sub_22FA2F600(v66, v68, v113);
        v70 = v58;

        *(v53 + 44) = v69;
        *(v53 + 52) = 2048;
        *(v53 + 54) = v44;
        *(v53 + 62) = 2048;
        *(v53 + 64) = v51;
        v71 = v102;
        _os_log_impl(&dword_22FA28000, v102, v99, "Successfully reported BGSystemTaskThroughputMetrics for %s, itemCount: %ld, QoS: %@ [%s - %s, %f sec], rate: %f items/sec", v53, 0x48u);
        v72 = v95;
        sub_22FA2B420(v95, &unk_27DAD7B10);
        MEMORY[0x23190A000](v72, -1, -1);
        v73 = v96;
        swift_arrayDestroy();
        MEMORY[0x23190A000](v73, -1, -1);
        v74 = v53;
        v39 = v97;
        MEMORY[0x23190A000](v74, -1, -1);
      }

      else
      {

        v112(v103, v41);
        v70 = v101;
      }

      goto LABEL_15;
    }

    v75 = v26;
    v76 = v15;
  }

  else
  {
    v75 = v26;
    v76 = v15;
  }

  v106 = v31;
  v77 = v35;
  v78 = sub_22FCC6514();

  swift_willThrow();
  if (qword_28147F920 != -1)
  {
    swift_once();
  }

  v79 = sub_22FCC8684();
  __swift_project_value_buffer(v79, qword_281487E70);

  v80 = v78;
  v81 = sub_22FCC8664();
  v82 = sub_22FCC8F14();

  v70 = v32;
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v101 = v32;
    v84 = v83;
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v113[0] = v86;
    *v84 = 136315394;
    v87 = sub_22FA2F600(v102, v21, v113);

    *(v84 + 4) = v87;
    *(v84 + 12) = 2112;
    v88 = v78;
    v89 = _swift_stdlib_bridgeErrorToNSError();
    *(v84 + 14) = v89;
    *v85 = v89;
    _os_log_impl(&dword_22FA28000, v81, v82, "Failed to report BGSystemTaskThroughputMetrics for %s, error: %@", v84, 0x16u);
    sub_22FA2B420(v85, &unk_27DAD7B10);
    MEMORY[0x23190A000](v85, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v86);
    MEMORY[0x23190A000](v86, -1, -1);
    v90 = v84;
    v70 = v101;
    MEMORY[0x23190A000](v90, -1, -1);
    v91 = v78;
    v39 = v76;

    v40 = v110;
    v46 = v107;
    v41 = v108;
  }

  else
  {

    v40 = v110;
    v46 = v107;
    v41 = v108;
    v39 = v76;
  }

LABEL_15:
  sub_22FCC6764();

  v112(v39, v41);
  v92 = v111;
  swift_beginAccess();
  (*(v109 + 40))(v40 + v92, v70, v41);
  return swift_endAccess();
}

uint64_t SystemTaskWrapper.deinit()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis17SystemTaskWrapper_startTime;
  v2 = sub_22FCC6794();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SystemTaskWrapper.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis17SystemTaskWrapper_startTime;
  v2 = sub_22FCC6794();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall BGSystemTaskReporter.prepareThroughputReporting()()
{
  v1 = sub_22FCC6794();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  sub_22FCC6764();
  v6 = OBJC_IVAR____TtC13PhotoAnalysis17SystemTaskWrapper_startTime;
  swift_beginAccess();
  (*(v2 + 40))(v5 + v6, v4, v1);
  swift_endAccess();
}

Swift::Void __swiftcall BGSystemTaskReporter.reportCompletion(count:category:)(Swift::Int count, Swift::String category)
{
  object = category._object;
  countAndFlagsBits = category._countAndFlagsBits;
  v6 = [*(*(v2 + 16) + 16) identifier];
  v7 = sub_22FCC8A84();
  v9 = v8;

  v10 = sub_22FCC8664();
  v11 = sub_22FCC8EF4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315650;
    v14 = sub_22FA2F600(v7, v9, &v15);

    *(v12 + 4) = v14;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_22FA2F600(countAndFlagsBits, object, &v15);
    *(v12 + 22) = 2048;
    *(v12 + 24) = count;
    _os_log_impl(&dword_22FA28000, v10, v11, "BGST, %s, category, %s, completed work count, %ld", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v13, -1, -1);
    MEMORY[0x23190A000](v12, -1, -1);
  }

  else
  {
  }

  sub_22FACC198(count, countAndFlagsBits, object);
}

uint64_t BGSystemTaskReporter.deinit()
{

  v1 = OBJC_IVAR____TtC13PhotoAnalysis20BGSystemTaskReporter_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t BGSystemTaskReporter.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC13PhotoAnalysis20BGSystemTaskReporter_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_22FACCFFC()
{
  v1 = sub_22FCC6794();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*v0 + 16);
  sub_22FCC6764();
  v6 = OBJC_IVAR____TtC13PhotoAnalysis17SystemTaskWrapper_startTime;
  swift_beginAccess();
  (*(v2 + 40))(v5 + v6, v4, v1);
  return swift_endAccess();
}

uint64_t sub_22FACD12C()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_281487E70);
  __swift_project_value_buffer(v0, qword_281487E70);
  return sub_22FCC8674();
}

void sub_22FACD1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v10 = *v7;
  sub_22FA2D328(a3, aBlock);
  swift_beginAccess();
  sub_22FACE740(aBlock, (v7 + 2));
  swift_endAccess();
  v11 = [objc_opt_self() sharedScheduler];
  v12 = sub_22FCC8A54();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = v10;
  aBlock[4] = sub_22FACE7B0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22FACDF44;
  aBlock[3] = &block_descriptor_13;
  v16 = _Block_copy(aBlock);

  [v11 registerForTaskWithIdentifier:v12 usingQueue:0 launchHandler:v16];
  _Block_release(v16);
}

uint64_t sub_22FACD3A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_22FCC88D4();
  v23 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22FCC8914();
  v13 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    Strong = swift_unknownObjectUnownedLoadStrong();
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = v17;
    v19[4] = a4;
    v19[5] = a5;
    v19[6] = a6;
    aBlock[4] = sub_22FACE7C8;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22FA2B268;
    aBlock[3] = &block_descriptor_37;
    v20 = _Block_copy(aBlock);
    v21 = a1;

    sub_22FCC88F4();
    v24 = MEMORY[0x277D84F90];
    sub_22FACE970(&qword_28147AFE8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8700);
    sub_22FACE7D8();
    sub_22FCC9264();
    MEMORY[0x231908410](0, v15, v12, v20);
    _Block_release(v20);

    (*(v23 + 8))(v12, v10);
    (*(v13 + 8))(v15, v22);
  }

  return result;
}

uint64_t sub_22FACD6AC(void *a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  v9 = sub_22FCC8684();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  swift_weakInit();
  v26 = sub_22FACE83C;
  v27 = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22FA2B268;
  v25 = &block_descriptor_41;
  v14 = _Block_copy(aBlock);

  [a1 setExpirationHandler_];
  _Block_release(v14);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a5;
  v16 = *(a2 + 56);
  *(a2 + 56) = sub_22FACE844;
  *(a2 + 64) = v15;
  v17 = a1;
  sub_22FA3A55C(v16);
  if (qword_28147F920 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v9, qword_281487E70);
  (*(v10 + 16))(v12, v18, v9);
  v19 = type metadata accessor for BGSystemTaskReporter(0);
  v20 = swift_allocObject();
  type metadata accessor for SystemTaskWrapper(0);
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  v22 = v17;
  sub_22FCC6764();
  *(v20 + 16) = v21;
  (*(v10 + 32))(v20 + OBJC_IVAR____TtC13PhotoAnalysis20BGSystemTaskReporter_logger, v12, v9);
  v25 = v19;
  v26 = &protocol witness table for BGSystemTaskReporter;
  aBlock[0] = v20;
  a3(aBlock);
  return __swift_destroy_boxed_opaque_existential_0(aBlock);
}

uint64_t sub_22FACD964()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_22FCC8D14();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v4;
    sub_22FC3F41C(0, 0, v2, &unk_22FCD5388, v6);
  }

  return result;
}

uint64_t sub_22FACDA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 120) = a1;
  *(v4 + 128) = a4;
  return MEMORY[0x2822009F8](sub_22FACDAA4, 0, 0);
}

uint64_t sub_22FACDAA4()
{
  v1 = *(v0 + 128);
  swift_beginAccess();
  sub_22FACE900(v1 + 16, v0 + 16);
  v2 = *(v0 + 40);
  if (v2)
  {
    sub_22FA2D328(v0 + 16, v0 + 56);
    sub_22FA2B420(v0 + 16, &qword_27DAD8290);
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v3);
    (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  }

  else
  {
    sub_22FA2B420(v0 + 16, &qword_27DAD8290);
  }

  **(v0 + 120) = v2 == 0;
  v5 = *(v0 + 8);

  return v5();
}

void sub_22FACDBB8(char a1, id a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (qword_28147F920 != -1)
    {
      swift_once();
    }

    v3 = sub_22FCC8684();
    __swift_project_value_buffer(v3, qword_281487E70);
    v4 = sub_22FCC8664();
    v5 = sub_22FCC8F34();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      if (qword_28147F928 != -1)
      {
        v22 = v6;
        swift_once();
        v6 = v22;
      }

      *(v6 + 4) = qword_28147F930;
      v7 = v5;
      v8 = v6;
      _os_log_impl(&dword_22FA28000, v4, v7, "SystemTask was deferred, will request retry after %f seconds", v6, 0xCu);
      MEMORY[0x23190A000](v8, -1, -1);
    }

    if (qword_28147F928 != -1)
    {
      swift_once();
    }

    v23[0] = 0;
    v9 = [a2 setTaskExpiredWithRetryAfter:v23 error:qword_28147F930];
    v10 = v23[0];
    if (v9)
    {

      v11 = v10;
    }

    else
    {
      v12 = v23[0];
      v13 = sub_22FCC6514();

      swift_willThrow();
      v14 = v13;
      v15 = sub_22FCC8664();
      v16 = sub_22FCC8F14();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v23[0] = v18;
        *v17 = 136315138;
        swift_getErrorValue();
        v19 = sub_22FCC97D4();
        v21 = sub_22FA2F600(v19, v20, v23);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_22FA28000, v15, v16, "Failed to set task expired with retry after: %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x23190A000](v18, -1, -1);
        MEMORY[0x23190A000](v17, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {

    [a2 setTaskCompleted];
  }
}

void sub_22FACDF44(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_22FACDFAC()
{
  v1 = [objc_opt_self() sharedScheduler];
  v2 = sub_22FCC8A54();
  [v1 deregisterTaskWithIdentifier_];

  v6 = 0;
  memset(v5, 0, sizeof(v5));
  swift_beginAccess();
  sub_22FACE740(v5, v0 + 16);
  swift_endAccess();
  v3 = *(v0 + 56);
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  return sub_22FA3A55C(v3);
}

uint64_t sub_22FACE070()
{
  sub_22FA2B420(v0 + 16, &qword_27DAD8290);
  sub_22FA3A55C(*(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_22FACE120(uint64_t result)
{
  v2 = *v1;
  *(v2 + 72) = result;
  v3 = *(v2 + 56);
  if (v3)
  {
    v4 = result;

    v3(v4 & 1);

    return sub_22FA3A55C(v3);
  }

  return result;
}

uint64_t sub_22FACE198()
{
  v0 = [objc_opt_self() sharedScheduler];
  v1 = sub_22FCC8A54();
  v2 = [v0 taskRequestForIdentifier_];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 featureCodes];
  sub_22FACE4A4();
  v4 = sub_22FCC8C44();

  return v4;
}

uint64_t sub_22FACE358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  result = a5(319);
  if (v6 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_22FACE4A4()
{
  result = qword_28147ADE0;
  if (!qword_28147ADE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28147ADE0);
  }

  return result;
}

void sub_22FACE4F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = objc_opt_self();
  v6 = [v5 sharedScheduler];
  v7 = sub_22FCC8A54();
  v8 = [v6 taskRequestForIdentifier_];

  if (v8)
  {
  }

  else
  {
    v9 = objc_allocWithZone(MEMORY[0x277CF07C0]);
    v10 = sub_22FCC8A54();
    v11 = [v9 initWithIdentifier_];

    v12 = v11;
    [v12 setRequiresNetworkConnectivity_];
    [v12 setRequiresExternalPower_];
    sub_22FACE4A4();
    v13 = sub_22FCC8C24();
    [v12 setFeatureCodes_];

    if (a4)
    {
      a4 = sub_22FCC8C24();
    }

    [v12 setProcessingTaskIdentifiers_];

    v14 = [v5 sharedScheduler];
    v18[0] = 0;
    v15 = [v14 submitTaskRequest:v12 error:v18];

    if (v15)
    {
      v16 = v18[0];
    }

    else
    {
      v17 = v18[0];
      sub_22FCC6514();

      swift_willThrow();
    }
  }
}

uint64_t sub_22FACE740(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8290);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_22FACE7D8()
{
  result = qword_28147AF38;
  if (!qword_28147AF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DAD8700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28147AF38);
  }

  return result;
}

uint64_t sub_22FACE84C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FA2C030;

  return sub_22FACDA84(a1, v4, v5, v6);
}

uint64_t sub_22FACE900(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FACE970(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FACEB18()
{
  v1 = sub_22FCC82E4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v22 - v6;
  sub_22FCC8314();
  sub_22FCC8304();
  if (!v0)
  {
    v22[1] = 0;
    (*(v2 + 16))(v5, v7, v1);
    v9 = (*(v2 + 88))(v5, v1);
    if (v9 == *MEMORY[0x277D3C6D0])
    {
      (*(v2 + 96))(v5, v1);

      v10 = sub_22FCC8664();
      v11 = sub_22FCC8F34();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v22[0] = swift_slowAlloc();
        v23 = v22[0];
        *v12 = 136315138;
        sub_22FCC82F4();
        sub_22FAD6E34(&qword_27DAD82D0, MEMORY[0x277D3C6E0]);
        v13 = sub_22FCC8E94();
        v15 = v14;

        v16 = sub_22FA2F600(v13, v15, &v23);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_22FA28000, v10, v11, "Library Understanding is unavailable for LibraryUnderstandingTask with reasons: %s", v12, 0xCu);
        v17 = v22[0];
        __swift_destroy_boxed_opaque_existential_0(v22[0]);
        MEMORY[0x23190A000](v17, -1, -1);
        MEMORY[0x23190A000](v12, -1, -1);
      }

      else
      {
      }

      (*(v2 + 8))(v7, v1);
      goto LABEL_10;
    }

    v18 = v9;
    v19 = *MEMORY[0x277D3C6D8];
    v20 = *(v2 + 8);
    v20(v7, v1);
    if (v18 != v19)
    {
      v20(v5, v1);
LABEL_10:
      v8 = 0;
      return v8 & 1;
    }

    v8 = 1;
  }

  return v8 & 1;
}

id sub_22FACEE54(uint64_t a1, uint64_t a2)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v5 = *(*(*(v2 + 168) + 120) + 112);
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a1;
  v6[4] = v2;
  aBlock[4] = sub_22FAD6D0C;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22FA2B268;
  aBlock[3] = &block_descriptor_23_0;
  v7 = _Block_copy(aBlock);
  v8 = v5;

  aBlock[0] = 0;
  LODWORD(a1) = [v8 performChangesAndWait:v7 error:aBlock];
  _Block_release(v7);

  if (a1)
  {
    return aBlock[0];
  }

  v10 = aBlock[0];
  sub_22FCC6514();

  return swift_willThrow();
}

void sub_22FACEFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  sub_22FACF048(a1, a2, a3);

  objc_autoreleasePoolPop(v6);
}

void sub_22FACF048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v107 = a3;
  v101 = sub_22FCC7F94();
  v5 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v7 = (&v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_22FCC7FF4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v104 = &v87 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD82B0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v115 = (&v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v114 = &v87 - v17;
  v18 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 64);
  v102 = OBJC_IVAR____TtC13PhotoAnalysis24LibraryUnderstandingTask_logger;
  v96 = (v19 + 63) >> 6;
  v103 = v9 + 16;
  v116 = (v9 + 32);
  v113 = a2 & 0xC000000000000001;
  v109 = a2 & 0xFFFFFFFFFFFFFF8;
  v88 = a2;
  v108 = a2 + 32;
  v98 = (v5 + 88);
  v97 = *MEMORY[0x277D3C610];
  v93 = *MEMORY[0x277D3C608];
  v105 = v9;
  v110 = (v9 + 8);
  v89 = (v5 + 8);
  v92 = (v5 + 96);
  v106 = a1;

  v22 = 0;
  *&v23 = 134217984;
  v91 = v23;
  *&v23 = 136315138;
  v90 = v23;
  v100 = v7;
  v111 = a1 + 64;
  v112 = v8;
  v117 = v12;
  while (v21)
  {
    v26 = v22;
LABEL_18:
    v30 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v31 = v30 | (v26 << 6);
    v32 = v105;
    v33 = *(*(v106 + 48) + 8 * v31);
    v34 = v104;
    (*(v105 + 16))(v104, *(v106 + 56) + *(v105 + 72) * v31, v8);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD82B8);
    v36 = *(v35 + 48);
    v37 = v115;
    *v115 = v33;
    v29 = v37;
    (*(v32 + 32))(v37 + v36, v34, v8);
    (*(*(v35 - 8) + 56))(v29, 0, 1, v35);
LABEL_19:
    v38 = v29;
    v39 = v114;
    sub_22FAD6D18(v38, v114);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD82B8);
    if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
    {

      return;
    }

    v41 = *v39;
    (*v116)(v117, &v39[*(v40 + 48)], v8);
    if (v113)
    {
      v42 = MEMORY[0x231908810](v41, v88);
    }

    else
    {
      if ((v41 & 0x8000000000000000) != 0)
      {
        goto LABEL_48;
      }

      if (v41 >= *(v109 + 16))
      {
        goto LABEL_49;
      }

      v42 = *(v108 + 8 * v41);
    }

    v43 = v42;
    objc_opt_self();
    v44 = swift_dynamicCastObjCClass();
    if (!v44)
    {

      v57 = sub_22FCC8664();
      v58 = sub_22FCC8F14();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = v91;
        *(v59 + 4) = v41;
        _os_log_impl(&dword_22FA28000, v57, v58, "Collection at index %ld is not a PHMoment", v59, 0xCu);
        MEMORY[0x23190A000](v59, -1, -1);
      }

LABEL_5:
      v24 = *v110;
      v25 = v117;
LABEL_6:
      v8 = v112;
      v24(v25, v112);
      goto LABEL_7;
    }

    v45 = v44;
    v46 = [objc_opt_self() changeRequestForMoment_];
    if (v46)
    {
      v47 = v46;
      v48 = v100;
      sub_22FCC7FD4();
      v49 = v101;
      v50 = (*v98)(v48, v101);
      if (v50 == v97)
      {
        v94 = v43;
        v95 = v21;
        (*v92)(v48, v49);
        v51 = *v48;
        [v47 clearThemeAssignments];
        v99 = v51;
        isa = v51[2].isa;
        v53 = v117;
        if (isa)
        {
          v54 = *(v107 + 224);
          v55 = v99 + 5;
          do
          {

            v56 = sub_22FCC8A54();

            [v47 assignThemeNamed:v56 adapterVersion:sub_22FCC7FE4() uemVersion:v54 confidence:0];

            v55 += 2;
            isa = (isa - 1);
          }

          while (isa);
        }

        v8 = v112;
        (*v110)(v53, v112);
        v18 = v111;
        v21 = v95;
      }

      else
      {
        if (v50 == v93)
        {
          [v47 clearThemeAssignments];
          v72 = v117;
          [v47 assignEmptyThemeWithAdapterVersion:sub_22FCC7FE4() uemVersion:*(v107 + 224)];

          v24 = *v110;
          v25 = v72;
          goto LABEL_6;
        }

        v73 = v43;
        v74 = sub_22FCC8664();
        v75 = sub_22FCC8F14();
        if (os_log_type_enabled(v74, v75))
        {
          LODWORD(v95) = v75;
          v99 = v74;
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v118 = v77;
          *v76 = v90;
          v78 = [v45 uuid];
          v79 = v73;

          if (!v78)
          {
            goto LABEL_51;
          }

          v80 = sub_22FCC8A84();
          v82 = v81;

          v83 = sub_22FA2F600(v80, v82, &v118);

          *(v76 + 4) = v83;
          v84 = v99;
          _os_log_impl(&dword_22FA28000, v99, v95, "Unexpected theme generation result for collection %s", v76, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v77);
          MEMORY[0x23190A000](v77, -1, -1);
          MEMORY[0x23190A000](v76, -1, -1);

          v8 = v112;
          (*v110)(v117, v112);
          v85 = v100;
          v86 = v101;
        }

        else
        {

          v8 = v112;
          (*v110)(v117, v112);
          v85 = v100;
          v86 = v101;
        }

        (*v89)(v85, v86);
LABEL_7:
        v18 = v111;
      }
    }

    else
    {
      v60 = v43;
      v61 = sub_22FCC8664();
      v62 = sub_22FCC8F14();
      if (!os_log_type_enabled(v61, v62))
      {

        goto LABEL_5;
      }

      LODWORD(v99) = v62;
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v118 = v64;
      *v63 = v90;
      v65 = [v45 uuid];
      v66 = v60;

      if (!v65)
      {
        goto LABEL_50;
      }

      v67 = sub_22FCC8A84();
      v69 = v68;

      v70 = sub_22FA2F600(v67, v69, &v118);

      *(v63 + 4) = v70;
      _os_log_impl(&dword_22FA28000, v61, v99, "Could not create change request for collection %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x23190A000](v64, -1, -1);
      MEMORY[0x23190A000](v63, -1, -1);

      v8 = v112;
      (*v110)(v117, v112);
      v18 = v111;
    }
  }

  if (v96 <= v22 + 1)
  {
    v27 = v22 + 1;
  }

  else
  {
    v27 = v96;
  }

  v28 = v27 - 1;
  v29 = v115;
  while (1)
  {
    v26 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v26 >= v96)
    {
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD82B8);
      (*(*(v71 - 8) + 56))(v29, 1, 1, v71);
      v21 = 0;
      v22 = v28;
      goto LABEL_19;
    }

    v21 = *(v18 + 8 * v26);
    ++v22;
    if (v21)
    {
      v22 = v26;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
}

id sub_22FACFB50(void *a1)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v3 = *(*(*(v1 + 168) + 120) + 112);
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = v1;
  aBlock[4] = sub_22FAD5CB8;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22FA2B268;
  aBlock[3] = &block_descriptor_12;
  v5 = _Block_copy(aBlock);
  v6 = v3;
  v7 = a1;

  aBlock[0] = 0;
  LODWORD(a1) = [v6 performChangesAndWait:v5 error:aBlock];
  _Block_release(v5);

  if (a1)
  {
    return aBlock[0];
  }

  v9 = aBlock[0];
  sub_22FCC6514();

  return swift_willThrow();
}

void sub_22FACFCC0(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_22FACFD20(a1);

  objc_autoreleasePoolPop(v2);
}

void sub_22FACFD20(void *a1)
{
  v1 = a1;
  v2 = [a1 count];
  v3 = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

  v4 = 0;
  v5 = &selRef_initWithWeights_bias_;
  v26 = v2 - 1;
  v25 = v1;
  do
  {
    v6 = [v1 v5[219]];
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = [objc_opt_self() changeRequestForMoment_];
      if (v9)
      {
        v10 = v9;
        [v9 resetThemeAssignmentVersions];

        if (v3 == v4)
        {
          return;
        }
      }

      else
      {
        v14 = v6;
        v15 = sub_22FCC8664();
        v16 = sub_22FCC8F14();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v27 = v18;
          *v17 = 136315138;
          v19 = [v8 uuid];

          if (!v19)
          {
            goto LABEL_23;
          }

          v20 = sub_22FCC8A84();
          v22 = v21;

          v23 = sub_22FA2F600(v20, v22, &v27);

          *(v17 + 4) = v23;
          _os_log_impl(&dword_22FA28000, v15, v16, "Could not create change request for collection %s", v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v18);
          MEMORY[0x23190A000](v18, -1, -1);
          MEMORY[0x23190A000](v17, -1, -1);

          v1 = v25;
          v3 = v26;
        }

        else
        {

          v3 = v26;
        }

        v5 = &selRef_initWithWeights_bias_;
        if (v3 == v4)
        {
          return;
        }
      }
    }

    else
    {

      v11 = sub_22FCC8664();
      v12 = sub_22FCC8F14();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 134217984;
        *(v13 + 4) = v4;
        _os_log_impl(&dword_22FA28000, v11, v12, "Collection at index %ld is not a PHMoment", v13, 0xCu);
        MEMORY[0x23190A000](v13, -1, -1);
      }

      if (v3 == v4)
      {
        return;
      }
    }
  }

  while (!__OFADD__(v4++, 1));
  __break(1u);
}

uint64_t sub_22FAD001C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22FCC6794();
  v45 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(*(*(v1 + 168) + 120) + 112) librarySpecificFetchOptions];
  sub_22FA3A77C(0, &qword_28147AEF0);
  v52 = 0x203D3E204B25;
  v53 = 0xE600000000000000;
  v51 = 4;
  v8 = sub_22FCC96C4();
  MEMORY[0x231907FA0](v8);

  v9 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7278);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22FCD1800;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_22FA4EF4C();
  *(v10 + 32) = 0xD000000000000013;
  *(v10 + 40) = 0x800000022FCE29E0;
  v11 = sub_22FCC8EE4();

  [v7 setPredicate_];

  sub_22FA3A77C(0, &qword_28147ADB8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v49 = v2;
  v13 = *(v2 + 224);
  v44 = v7;
  v14 = [ObjCClassFromMetadata fetchMomentsNeedingThemeAnalysisWithAdapterVersion:a1 uemVersion:v13 options:v7];
  v51 = MEMORY[0x277D84F90];
  v52 = MEMORY[0x277D84F90];
  v15 = [v14 count];
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    v17 = v15;
    v42 = v6;
    v43 = v4;
    if (v15)
    {
      v18 = 0;
      v48 = OBJC_IVAR____TtC13PhotoAnalysis24LibraryUnderstandingTask_logger;
      *&v16 = 134217984;
      v47 = v16;
      v46 = MEMORY[0x277D84F90];
      while (1)
      {
        v19 = [v14 objectAtIndexedSubscript_];
        objc_opt_self();
        v20 = swift_dynamicCastObjCClass();
        if (!v20)
        {

          v25 = sub_22FCC8664();
          v26 = sub_22FCC8F14();
          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            *v27 = v47;
            *(v27 + 4) = v18;
            _os_log_impl(&dword_22FA28000, v25, v26, "Collection at index %ld is not a PHMoment", v27, 0xCu);
            MEMORY[0x23190A000](v27, -1, -1);
          }

          goto LABEL_5;
        }

        v21 = v20;
        v22 = [v20 hasNoThemesPlaceholder];
        v23 = [v21 themeAssignments];
        sub_22FA3A77C(0, &qword_27DAD82C0);
        v24 = sub_22FCC8C44();

        if (v22)
        {
        }

        else
        {
          if (v24 >> 62)
          {
            v28 = sub_22FCC92C4();
          }

          else
          {
            v28 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (!v28)
          {
            v30 = [v14 objectAtIndexedSubscript_];
            MEMORY[0x231908070]();
            if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_22FCC8C64();
            }

            sub_22FCC8C84();

            v46 = v52;
            goto LABEL_5;
          }
        }

        v29 = [v14 objectAtIndexedSubscript_];
        MEMORY[0x231908070]();
        if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22FCC8C64();
        }

        sub_22FCC8C84();

LABEL_5:
        if (v17 == ++v18)
        {
          goto LABEL_22;
        }
      }
    }

    v46 = MEMORY[0x277D84F90];
LABEL_22:
    v31 = v42;
    v32 = sub_22FCC6694();
    MEMORY[0x28223BE20](v32);
    *(&v41 - 2) = v31;

    v50 = sub_22FB0EF40(v33);
    v34 = sub_22FAD5C18(sub_22FAD6E88, (&v41 - 4));
    v35 = v45;
    v36 = v50;
    MEMORY[0x28223BE20](v34);
    *(&v41 - 2) = v31;

    v50 = sub_22FB0EF40(v37);
    sub_22FAD5C18(sub_22FAD6D88, (&v41 - 4));

    v38 = v50;
    v50 = v36;
    sub_22FA681FC(v38);

    v39 = v50;
    (*(v35 + 8))(v31, v43);
    return v39;
  }

  return result;
}

BOOL sub_22FAD0630(id *a1, void **a2, uint64_t a3)
{
  v28 = a3;
  v5 = sub_22FCC6794();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v27 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v27 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  v18 = *a2;
  v19 = [*a1 startDate];
  if (v19)
  {
    v20 = v19;
    sub_22FCC6754();

    (*(v6 + 32))(v17, v15, v5);
    v21 = v28;
  }

  else
  {
    v21 = v28;
    (*(v6 + 16))(v17, v28, v5);
  }

  v22 = [v18 startDate];
  if (v22)
  {
    v23 = v22;
    sub_22FCC6754();

    (*(v6 + 32))(v12, v9, v5);
  }

  else
  {
    (*(v6 + 16))(v12, v21, v5);
  }

  v24 = sub_22FCC6774();
  v25 = *(v6 + 8);
  v25(v12, v5);
  v25(v17, v5);
  return v24 == 1;
}

void sub_22FAD088C(void *a1)
{
  v2 = [a1 uuidsOfMomentsToUpdateForMomentUpdateTypes_];
  v3 = sub_22FCC8E84();

  if (*(v3 + 16))
  {
    sub_22FA3A77C(0, &qword_28147ADB8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = sub_22FCC8E64();
    v6 = [ObjCClassFromMetadata localIdentifiersWithUUIDs_];

    if (v6)
    {

      v7 = [v6 allObjects];

      v8 = sub_22FCC8C44();
      sub_22FAF8C44(v8);

      v9 = sub_22FCC8C24();

      v10 = [*(*(*(v1 + 168) + 120) + 112) librarySpecificFetchOptions];
      [ObjCClassFromMetadata fetchAssetCollectionsWithLocalIdentifiers:v9 options:v10];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }
}

uint64_t sub_22FAD0A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[48] = a4;
  v5[49] = v4;
  v5[46] = a2;
  v5[47] = a3;
  v5[45] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD82A0);
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v6 = sub_22FCC9444();
  v5[52] = v6;
  v5[53] = *(v6 - 8);
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v7 = sub_22FCC9464();
  v5[56] = v7;
  v5[57] = *(v7 - 8);
  v5[58] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAD0BBC, 0, 0);
}

uint64_t sub_22FAD0BBC()
{
  v103 = v0;
  v2 = v0[45];
  v0[34] = MEMORY[0x277D84F98];
  sub_22FCC9454();
  if (v2 >> 62)
  {
LABEL_83:
    v4 = sub_22FCC92C4();
    if (v4 < 0)
    {
      __break(1u);
      goto LABEL_85;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = OBJC_IVAR____TtC13PhotoAnalysis24LibraryUnderstandingTask_logger;
  v0[59] = v4;
  v0[60] = v5;
  v6 = OBJC_IVAR____TtC13PhotoAnalysis24LibraryUnderstandingTask_libraryUnderstandingGenerator;
  v0[61] = OBJC_IVAR____TtC13PhotoAnalysis24LibraryUnderstandingTask_momentsProcessedCount;
  v0[62] = v6;
  if (!v4)
  {
    goto LABEL_67;
  }

  v7 = 0;
  v97 = 0;
  v0[63] = MEMORY[0x277D84F90];
  *&v3 = 136315906;
  v96 = v3;
  while (2)
  {
    v0[64] = v97;
    v8 = v0[59];
    v9 = v7;
    while (1)
    {
      v0[65] = v9;
      if (v9 >= v8)
      {
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        v85 = v0[57];
        v84 = v0[58];
        v86 = v0[56];

        v87 = *MEMORY[0x277CCA590];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD82A8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22FCD1800;
        *(inited + 32) = sub_22FCC8A84();
        *(inited + 40) = v89;
        v102[0] = 0;
        v102[1] = 0xE000000000000000;
        v90 = v87;
        sub_22FCC9384();
        MEMORY[0x231907FA0](0x20646E756F46, 0xE600000000000000);
        v0[40] = 50;
        v91 = sub_22FCC96C4();
        MEMORY[0x231907FA0](v91);

        MEMORY[0x231907FA0](0xD000000000000079, 0x800000022FCE2920);
        v92 = v102[0];
        v93 = v102[1];
        *(inited + 72) = MEMORY[0x277D837D0];
        *(inited + 48) = v92;
        *(inited + 56) = v93;
        sub_22FA4D330(inited);
        swift_setDeallocating();
        sub_22FA2B420(inited + 32, &qword_27DAD7228);
        v94 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v95 = sub_22FCC89C4();

        [v94 initWithDomain:v90 code:-345 userInfo:v95];

        swift_willThrow();
        (*(v85 + 8))(v84, v86);
        goto LABEL_71;
      }

      v0[66] = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_80;
      }

      v10 = v0[45];
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x231908810](v9);
      }

      else
      {
        if (v9 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_81;
        }

        v11 = *(v10 + 8 * v9 + 32);
      }

      v0[67] = v11;
      sub_22FCC8FF4();
      v12 = v0[49];
      sub_22FCC6734();
      if (*(v12 + 176) == 1 && *(v0[49] + 200) < -v13)
      {

        v59 = sub_22FCC8664();
        v60 = sub_22FCC8F34();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = v0[61];
          v62 = v0[49];
          v63 = swift_slowAlloc();
          *v63 = 134217984;
          *(v63 + 4) = *(v62 + v61);

          _os_log_impl(&dword_22FA28000, v59, v60, "Reached nightly limit of processing time, so stopping the task early. Processed %ld moments.", v63, 0xCu);
          MEMORY[0x23190A000](v63, -1, -1);
        }

        else
        {
        }

        goto LABEL_67;
      }

      v14 = objc_autoreleasePoolPush();
      v15 = sub_22FAD6978(v11, 1);
      v16 = [v15 fetchedObjects];

      if (v16)
      {
        sub_22FA3A77C(0, &qword_28147ADE8);
        v17 = sub_22FCC8C44();

        if (!(v17 >> 62))
        {
          goto LABEL_17;
        }
      }

      else
      {
        v17 = MEMORY[0x277D84F90];
        if (!(MEMORY[0x277D84F90] >> 62))
        {
LABEL_17:
          v18 = v17 & 0xFFFFFFFFFFFFFF8;
          goto LABEL_18;
        }
      }

      v32 = sub_22FCC92C4();
      if (v32)
      {
        v33 = v32;
        v18 = sub_22FA8A020(v32, 0);
        sub_22FB0F174(v18 + 32, v33, v17);
        v35 = v34;

        if (v35 != v33)
        {
          goto LABEL_88;
        }
      }

      else
      {

        v18 = MEMORY[0x277D84F90];
      }

LABEL_18:
      v0[68] = v18;
      objc_autoreleasePoolPop(v14);
      v19 = (v18 >> 62) & 1;
      if (v18 < 0)
      {
        LODWORD(v19) = 1;
      }

      v99 = v19;
      v100 = v9 + 1;
      if (v19 == 1)
      {
        break;
      }

      v20 = *(v18 + 16);
      if (v20 >= 4)
      {
        v37 = *(v18 + 16);
        goto LABEL_34;
      }

LABEL_22:
      v1 = v0[60];
      v21 = v0[50];

      sub_22FCC8004();
      v22 = sub_22FCC7FF4();
      (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
      sub_22FC31A50(v21, v9);

      v23 = v11;
      v24 = sub_22FCC8664();
      v25 = sub_22FCC8F34();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v0[42] = v27;
        *v26 = 134218242;
        *(v26 + 4) = 4;

        *(v26 + 12) = 2080;
        v28 = [v23 uuid];

        if (!v28)
        {
          goto LABEL_87;
        }

        v1 = sub_22FCC8A84();
        v30 = v29;

        v31 = sub_22FA2F600(v1, v30, v0 + 42);

        *(v26 + 14) = v31;
        _os_log_impl(&dword_22FA28000, v24, v25, "Less than %ld extended curated assets in moment %s, so assigning No Theme", v26, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x23190A000](v27, -1, -1);
        MEMORY[0x23190A000](v26, -1, -1);
      }

      else
      {
      }

      v8 = v0[59];
      ++v9;
      if (v100 == v8)
      {
        goto LABEL_67;
      }
    }

    v36 = sub_22FCC92C4();
    if (v36 < 4)
    {
      goto LABEL_22;
    }

    v20 = v36;
    v58 = sub_22FCC92C4();
    if (v58)
    {
      if (v58 < 1)
      {
        goto LABEL_86;
      }

      v37 = v58;
LABEL_34:
      v38 = 0;
      v98 = 0;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v39 = MEMORY[0x231908810](v38, v18);
        }

        else
        {
          v39 = *(v18 + 8 * v38 + 32);
        }

        v40 = v39;
        v41 = [v39 sceneAnalysisProperties];
        if (v41)
        {
          v42 = v0[49];
          v43 = v41;
          v1 = [v41 sceneAnalysisVersion];

          if (v1 >= *(v42 + 216) && __OFADD__(v98++, 1))
          {
            __break(1u);
            goto LABEL_83;
          }
        }

        else
        {
        }

        ++v38;
      }

      while (v37 != v38);
      v45 = v98;
    }

    else
    {
      v98 = 0;
      v45 = 0.0;
    }

    v0[69] = v20;
    v7 = v100;
    if (v45 / v20 >= 0.8)
    {

      v81 = sub_22FAD1AAC;
      v82 = 0;
      v83 = 0;

      return MEMORY[0x2822009F8](v81, v82, v83);
    }

    v1 = v11;

    v46 = sub_22FCC8664();
    v47 = sub_22FCC8F34();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v0[41] = v49;
      *v48 = v96;
      v50 = [v1 uuid];

      v51 = v1;

      if (!v50)
      {
        goto LABEL_89;
      }

      v52 = sub_22FCC8A84();
      v54 = v53;

      v55 = sub_22FA2F600(v52, v54, v0 + 41);

      *(v48 + 4) = v55;
      *(v48 + 12) = 2048;
      *(v48 + 14) = v98;
      *(v48 + 22) = 2048;
      if (v99)
      {
        v56 = sub_22FCC92C4();
      }

      else
      {
        v56 = *(v18 + 16);
      }

      *(v48 + 24) = v56;

      *(v48 + 32) = 2048;
      *(v48 + 34) = 0x3FE999999999999ALL;
      _os_log_impl(&dword_22FA28000, v46, v47, "Moment %s only has %ld out of %ld assets with scene processing completed, below the required ratio threshold of %f, so skipping theme generation", v48, 0x2Au);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x23190A000](v49, -1, -1);
      MEMORY[0x23190A000](v48, -1, -1);

      v7 = v100;
      v1 = v51;
    }

    else
    {
    }

    if (__OFADD__(v97, 1))
    {
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:

      __break(1u);
      return MEMORY[0x2822009F8](v81, v82, v83);
    }

    if (v97 + 1 >= 50 && !*(v0[49] + v0[61]))
    {
      goto LABEL_82;
    }

    ++v97;
    v57 = v0[59];

    if (v7 != v57)
    {
      continue;
    }

    break;
  }

LABEL_67:
  if (*(v0[34] + 16))
  {
    sub_22FACEE54(v0[45], v0[34]);

    v0[34] = MEMORY[0x277D84F98];
  }

  v64 = MEMORY[0x277D84F90];
  v66 = v0[57];
  v65 = v0[58];
  if (*(MEMORY[0x277D84F90] + 16))
  {
    v67 = *MEMORY[0x277CCA590];
    v101 = v0[56];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD82A8);
    v68 = swift_initStackObject();
    *(v68 + 16) = xmmword_22FCD1800;
    *(v68 + 32) = sub_22FCC8A84();
    *(v68 + 40) = v69;
    v70 = v67;
    sub_22FCC9384();

    strcpy(v102, "Encountered ");
    BYTE5(v102[1]) = 0;
    HIWORD(v102[1]) = -5120;
    v0[43] = *(v64 + 16);

    v71 = sub_22FCC96C4();
    MEMORY[0x231907FA0](v71);

    MEMORY[0x231907FA0](0xD000000000000013, 0x800000022FCE29A0);

    v0[44] = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448);
    sub_22FAAEDD4();
    v72 = sub_22FCC8A24();
    v74 = v73;

    MEMORY[0x231907FA0](v72, v74);

    v75 = v102[0];
    v76 = v102[1];
    *(v68 + 72) = MEMORY[0x277D837D0];
    *(v68 + 48) = v75;
    *(v68 + 56) = v76;
    sub_22FA4D330(v68);
    swift_setDeallocating();
    sub_22FA2B420(v68 + 32, &qword_27DAD7228);
    v77 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v78 = sub_22FCC89C4();

    [v77 initWithDomain:v70 code:-346 userInfo:v78];

    swift_willThrow();
    (*(v66 + 8))(v65, v101);
LABEL_71:

    v79 = v0[1];
  }

  else
  {
    (*(v66 + 8))(v0[58], v0[56]);

    v79 = v0[1];
  }

  return v79();
}

uint64_t sub_22FAD1AAC()
{
  v0[70] = sub_22FAD6E34(&qword_28147AD70, MEMORY[0x277D85928]);
  sub_22FCC9784();
  v1 = swift_task_alloc();
  v0[71] = v1;
  *v1 = v0;
  v1[1] = sub_22FAD1BB4;
  v2 = v0[68];
  v3 = v0[51];

  return MEMORY[0x28219C7E8](v3, v2);
}

uint64_t sub_22FAD1BB4()
{
  *(*v1 + 576) = v0;

  if (v0)
  {
    v2 = sub_22FAD302C;
  }

  else
  {
    v2 = sub_22FAD1CC8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FAD1CC8()
{
  sub_22FC31A50(*(v0 + 408), *(v0 + 520));

  return MEMORY[0x2822009F8](sub_22FAD1D38, 0, 0);
}

uint64_t sub_22FAD1D38()
{
  v1 = *(v0 + 440);
  v3 = *(v0 + 424);
  v2 = *(v0 + 432);
  v4 = *(v0 + 416);
  sub_22FCC9784();
  sub_22FAD6E34(&qword_28147AD78, MEMORY[0x277D858F8]);
  sub_22FCC9484();
  v5 = *(v3 + 8);
  v5(v2, v4);
  v5(v1, v4);

  *(v0 + 584) = *(v0 + 256);

  return MEMORY[0x2822009F8](sub_22FAD1E6C, 0, 0);
}

uint64_t sub_22FAD1E6C()
{
  v148 = v0;
  v2 = *(v0 + 552);
  v3 = *(v0 + 536);
  v4 = sub_22FCC7FB4();
  if (v4 < v2)
  {
    v2 = v4;
  }

  v5 = v3;
  v6 = sub_22FCC8664();
  v7 = sub_22FCC8F34();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 536);
  if (v8)
  {
    v144 = v2;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *(v0 + 312) = v11;
    *v10 = 136315650;
    v12 = [v9 uuid];
    if (!v12)
    {
LABEL_109:

      __break(1u);
LABEL_110:

      __break(1u);
      return MEMORY[0x2822009F8](v124, v125, v126);
    }

    v13 = v12;
    v1 = *(v0 + 584);

    v14 = sub_22FCC8A84();
    v16 = v15;

    v17 = sub_22FA2F600(v14, v16, (v0 + 312));

    *(v10 + 4) = v17;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v144;
    *(v10 + 22) = 2080;
    v18 = sub_22FCC98C4();
    v20 = sub_22FA2F600(v18, v19, (v0 + 312));

    *(v10 + 24) = v20;
    _os_log_impl(&dword_22FA28000, v6, v7, "Theme generation for moment %s: %ld assets processed in %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v11, -1, -1);
    MEMORY[0x23190A000](v10, -1, -1);
  }

  else
  {
  }

  v21 = *(v0 + 488);
  v22 = *(v0 + 392);
  v23 = *(v22 + v21);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
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
    goto LABEL_109;
  }

  *(v22 + v21) = v25;
  v26 = *(v0 + 576);
  v28 = *(v0 + 504);
  v27 = *(v0 + 512);
  if (*(*(v0 + 272) + 16) >= 0x19uLL)
  {
    sub_22FACEE54(*(v0 + 360), *(v0 + 272));
    if (v26)
    {
      v29 = v26;
      v30 = sub_22FCC8664();
      v31 = sub_22FCC8F14();

      v32 = os_log_type_enabled(v30, v31);
      v1 = *(v0 + 536);
      if (v32)
      {
        v33 = swift_slowAlloc();
        v34 = v27;
        v35 = swift_slowAlloc();
        *v33 = 138412290;
        v36 = v26;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 4) = v37;
        *v35 = v37;
        _os_log_impl(&dword_22FA28000, v30, v31, "Error while persisting generated themes: %@", v33, 0xCu);
        sub_22FA2B420(v35, &unk_27DAD7B10);
        v38 = v35;
        v27 = v34;
        MEMORY[0x23190A000](v38, -1, -1);
        MEMORY[0x23190A000](v33, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }

    v26 = 0;
    *(v0 + 272) = MEMORY[0x277D84F98];
  }

  else
  {
  }

  v39 = *(v0 + 528);
  v141 = v28;
  if (v39 == *(v0 + 472))
  {
    v40 = v26;
    goto LABEL_18;
  }

  v140 = v27;
  *(v0 + 504) = v28;
  while (2)
  {
    *(v0 + 512) = v140;
    v49 = *(v0 + 472);
    v50 = v39;
    while (1)
    {
      *(v0 + 520) = v50;
      if (v50 >= v49)
      {
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        v128 = *(v0 + 456);
        v127 = *(v0 + 464);
        v129 = *(v0 + 448);

        v130 = *MEMORY[0x277CCA590];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD82A8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22FCD1800;
        *(inited + 32) = sub_22FCC8A84();
        *(inited + 40) = v132;
        v147[0] = 0;
        v147[1] = 0xE000000000000000;
        v133 = v130;
        sub_22FCC9384();
        MEMORY[0x231907FA0](0x20646E756F46, 0xE600000000000000);
        *(v0 + 320) = 50;
        v134 = sub_22FCC96C4();
        MEMORY[0x231907FA0](v134);

        MEMORY[0x231907FA0](0xD000000000000079, 0x800000022FCE2920);
        v135 = v147[0];
        v136 = v147[1];
        *(inited + 72) = MEMORY[0x277D837D0];
        *(inited + 48) = v135;
        *(inited + 56) = v136;
        sub_22FA4D330(inited);
        swift_setDeallocating();
        sub_22FA2B420(inited + 32, &qword_27DAD7228);
        v137 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v138 = sub_22FCC89C4();

        [v137 initWithDomain:v133 code:-345 userInfo:v138];

        swift_willThrow();
        (*(v128 + 8))(v127, v129);
        goto LABEL_88;
      }

      *(v0 + 528) = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        goto LABEL_101;
      }

      v51 = *(v0 + 360);
      if ((v51 & 0xC000000000000001) != 0)
      {
        v52 = MEMORY[0x231908810](v50);
      }

      else
      {
        if (v50 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_102;
        }

        v52 = *(v51 + 8 * v50 + 32);
      }

      *(v0 + 536) = v52;
      sub_22FCC8FF4();
      if (v26)
      {
        v101 = *(v0 + 456);
        v100 = *(v0 + 464);
        v102 = *(v0 + 448);

        (*(v101 + 8))(v100, v102);

        goto LABEL_88;
      }

      v53 = *(v0 + 392);
      sub_22FCC6734();
      if (*(v53 + 176) == 1 && *(*(v0 + 392) + 200) < -v54)
      {

        v119 = sub_22FCC8664();
        v120 = sub_22FCC8F34();
        if (os_log_type_enabled(v119, v120))
        {
          v121 = *(v0 + 488);
          v122 = *(v0 + 392);
          v123 = swift_slowAlloc();
          *v123 = 134217984;
          *(v123 + 4) = *(v122 + v121);

          _os_log_impl(&dword_22FA28000, v119, v120, "Reached nightly limit of processing time, so stopping the task early. Processed %ld moments.", v123, 0xCu);
          MEMORY[0x23190A000](v123, -1, -1);
        }

        else
        {
        }

        v40 = 0;
        goto LABEL_18;
      }

      v145 = v50 + 1;
      v55 = objc_autoreleasePoolPush();
      v56 = sub_22FAD6978(v52, 1);
      v57 = [v56 fetchedObjects];

      if (v57)
      {
        sub_22FA3A77C(0, &qword_28147ADE8);
        v58 = sub_22FCC8C44();

        if (!(v58 >> 62))
        {
          goto LABEL_36;
        }
      }

      else
      {
        v58 = MEMORY[0x277D84F90];
        if (!(MEMORY[0x277D84F90] >> 62))
        {
LABEL_36:
          v59 = v58 & 0xFFFFFFFFFFFFFF8;
          goto LABEL_37;
        }
      }

      v74 = sub_22FCC92C4();
      if (v74)
      {
        v75 = v74;
        v59 = sub_22FA8A020(v74, 0);
        sub_22FB0F174(v59 + 32, v75, v58);
        v77 = v76;

        if (v77 != v75)
        {
          goto LABEL_108;
        }
      }

      else
      {

        v59 = MEMORY[0x277D84F90];
      }

LABEL_37:
      *(v0 + 544) = v59;
      objc_autoreleasePoolPop(v55);
      v60 = v59 < 0 || (v59 & 0x4000000000000000) != 0;
      if (v60)
      {
        break;
      }

      v61 = *(v59 + 16);
      if (v61 >= 4)
      {
        v139 = v60;
        v79 = *(v59 + 16);
        goto LABEL_54;
      }

LABEL_42:
      v62 = *(v0 + 400);

      sub_22FCC8004();
      v63 = sub_22FCC7FF4();
      (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
      sub_22FC31A50(v62, v50);

      v64 = v52;
      v65 = sub_22FCC8664();
      v66 = sub_22FCC8F34();
      v67 = os_log_type_enabled(v65, v66);
      v1 = *(v0 + 392);
      if (v67)
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *(v0 + 336) = v69;
        *v68 = 134218242;
        *(v68 + 4) = 4;

        *(v68 + 12) = 2080;
        v70 = [v64 uuid];

        if (!v70)
        {
          goto LABEL_107;
        }

        v71 = sub_22FCC8A84();
        v73 = v72;

        v1 = sub_22FA2F600(v71, v73, (v0 + 336));

        *(v68 + 14) = v1;
        _os_log_impl(&dword_22FA28000, v65, v66, "Less than %ld extended curated assets in moment %s, so assigning No Theme", v68, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v69);
        MEMORY[0x23190A000](v69, -1, -1);
        MEMORY[0x23190A000](v68, -1, -1);
      }

      else
      {
      }

      v26 = 0;
      v40 = 0;
      v49 = *(v0 + 472);
      ++v50;
      if (v145 == v49)
      {
        goto LABEL_18;
      }
    }

    v78 = sub_22FCC92C4();
    if (v78 < 4)
    {
      goto LABEL_42;
    }

    v61 = v78;
    v139 = 1;
    v99 = sub_22FCC92C4();
    if (v99)
    {
      if (v99 < 1)
      {
        goto LABEL_106;
      }

      v79 = v99;
LABEL_54:
      v80 = 0;
      v142 = 0;
      do
      {
        if ((v59 & 0xC000000000000001) != 0)
        {
          v81 = MEMORY[0x231908810](v80, v59);
        }

        else
        {
          v81 = *(v59 + 8 * v80 + 32);
        }

        v82 = v81;
        v83 = [v81 sceneAnalysisProperties];
        if (v83)
        {
          v84 = *(v0 + 392);
          v85 = v83;
          v86 = [v83 sceneAnalysisVersion];

          if (v86 >= *(v84 + 216))
          {
            v24 = __OFADD__(v142++, 1);
            if (v24)
            {
              __break(1u);
              goto LABEL_104;
            }
          }
        }

        else
        {
        }

        ++v80;
      }

      while (v79 != v80);
      v87 = v142;
    }

    else
    {
      v142 = 0;
      v87 = 0.0;
    }

    *(v0 + 552) = v61;
    if (v87 / v61 >= 0.8)
    {

      v124 = sub_22FAD1AAC;
      v125 = 0;
      v126 = 0;

      return MEMORY[0x2822009F8](v124, v125, v126);
    }

    v1 = v52;

    v88 = sub_22FCC8664();
    v89 = sub_22FCC8F34();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *(v0 + 328) = v91;
      *v90 = 136315906;
      v92 = [v1 uuid];

      v143 = v1;

      if (!v92)
      {
        goto LABEL_110;
      }

      v93 = sub_22FCC8A84();
      v95 = v94;

      v96 = sub_22FA2F600(v93, v95, (v0 + 328));

      *(v90 + 4) = v96;
      *(v90 + 12) = 2048;
      *(v90 + 14) = v142;
      *(v90 + 22) = 2048;
      if (v139)
      {
        v97 = sub_22FCC92C4();
      }

      else
      {
        v97 = *(v59 + 16);
      }

      *(v90 + 24) = v97;

      *(v90 + 32) = 2048;
      *(v90 + 34) = 0x3FE999999999999ALL;
      _os_log_impl(&dword_22FA28000, v88, v89, "Moment %s only has %ld out of %ld assets with scene processing completed, below the required ratio threshold of %f, so skipping theme generation", v90, 0x2Au);
      __swift_destroy_boxed_opaque_existential_0(v91);
      MEMORY[0x23190A000](v91, -1, -1);
      MEMORY[0x23190A000](v90, -1, -1);

      v1 = v143;
    }

    else
    {
    }

    v39 = v145;
    if (__OFADD__(v140, 1))
    {
      goto LABEL_105;
    }

    if (v140 + 1 >= 50 && !*(*(v0 + 392) + *(v0 + 488)))
    {
      goto LABEL_103;
    }

    ++v140;
    v98 = *(v0 + 472);

    v26 = 0;
    v40 = 0;
    if (v145 != v98)
    {
      continue;
    }

    break;
  }

LABEL_18:
  if (*(*(v0 + 272) + 16))
  {
    v41 = v40;
    sub_22FACEE54(*(v0 + 360), *(v0 + 272));
    if (v41)
    {
      v42 = v41;
      v43 = sub_22FCC8664();
      v44 = sub_22FCC8F14();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        v47 = v41;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v48;
        *v46 = v48;
        _os_log_impl(&dword_22FA28000, v43, v44, "Error while persisting generated themes: %@", v45, 0xCu);
        sub_22FA2B420(v46, &unk_27DAD7B10);
        MEMORY[0x23190A000](v46, -1, -1);
        MEMORY[0x23190A000](v45, -1, -1);
      }

      else
      {
      }
    }

    *(v0 + 272) = MEMORY[0x277D84F98];
  }

  v104 = *(v0 + 456);
  v103 = *(v0 + 464);
  if (*(v141 + 16))
  {
    v105 = *MEMORY[0x277CCA590];
    v146 = *(v0 + 448);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD82A8);
    v106 = swift_initStackObject();
    *(v106 + 16) = xmmword_22FCD1800;
    *(v106 + 32) = sub_22FCC8A84();
    *(v106 + 40) = v107;
    v108 = v105;
    sub_22FCC9384();

    strcpy(v147, "Encountered ");
    BYTE5(v147[1]) = 0;
    HIWORD(v147[1]) = -5120;
    *(v0 + 344) = *(v141 + 16);

    v109 = sub_22FCC96C4();
    MEMORY[0x231907FA0](v109);

    MEMORY[0x231907FA0](0xD000000000000013, 0x800000022FCE29A0);

    *(v0 + 352) = v141;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448);
    sub_22FAAEDD4();
    v110 = sub_22FCC8A24();
    v112 = v111;

    MEMORY[0x231907FA0](v110, v112);

    v113 = v147[0];
    v114 = v147[1];
    *(v106 + 72) = MEMORY[0x277D837D0];
    *(v106 + 48) = v113;
    *(v106 + 56) = v114;
    sub_22FA4D330(v106);
    swift_setDeallocating();
    sub_22FA2B420(v106 + 32, &qword_27DAD7228);
    v115 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v116 = sub_22FCC89C4();

    [v115 initWithDomain:v108 code:-346 userInfo:v116];

    swift_willThrow();
    (*(v104 + 8))(v103, v146);
LABEL_88:

    v117 = *(v0 + 8);
  }

  else
  {
    (*(v104 + 8))(*(v0 + 464), *(v0 + 448), v40);

    v117 = *(v0 + 8);
  }

  return v117();
}

uint64_t sub_22FAD302C()
{
  (*(v0[53] + 8))(v0[55], v0[52]);

  return MEMORY[0x2822009F8](sub_22FAD30A4, 0, 0);
}

uint64_t sub_22FAD30A4()
{

  return MEMORY[0x2822009F8](sub_22FAD3118, 0, 0);
}

uint64_t sub_22FAD3118()
{
  v136 = v0;
  v2 = *(v0 + 576);

  *(v0 + 280) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60);
  sub_22FA3A77C(0, &qword_28147ADF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v21 = *(v0 + 456);
    v20 = *(v0 + 464);
    v22 = *(v0 + 448);

    (*(v21 + 8))(v20, v22);

    goto LABEL_84;
  }

  v4 = *(v0 + 536);

  v5 = *(v0 + 288);
  v6 = v4;
  v7 = v5;
  v8 = sub_22FCC8664();
  v9 = sub_22FCC8F14();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 536);
  if (v10)
  {
    v12 = swift_slowAlloc();
    v1 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *(v0 + 304) = v13;
    *v12 = 136315394;
    v14 = [v11 uuid];
    v15 = *(v0 + 536);

    if (!v14)
    {
      goto LABEL_107;
    }

    v16 = sub_22FCC8A84();
    v18 = v17;

    v11 = sub_22FA2F600(v16, v18, (v0 + 304));

    *(v12 + 4) = v11;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v7;
    *v1 = v7;
    v19 = v7;
    _os_log_impl(&dword_22FA28000, v8, v9, "Error generating theme for moment %s: %@", v12, 0x16u);
    sub_22FA2B420(v1, &unk_27DAD7B10);
    MEMORY[0x23190A000](v1, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23190A000](v13, -1, -1);
    MEMORY[0x23190A000](v12, -1, -1);
  }

  else
  {
  }

  if ([v7 code] == -345)
  {
    v23 = *(v0 + 512);
    if (!__OFADD__(v23, 1))
    {
      if (v23 + 1 >= 50 && !*(*(v0 + 392) + *(v0 + 488)))
      {
        v95 = *(v0 + 536);
        v96 = *(v0 + 456);
        v134 = *(v0 + 464);
        v97 = *(v0 + 448);

        v98 = *MEMORY[0x277CCA590];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD82A8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22FCD1800;
        *(inited + 32) = sub_22FCC8A84();
        *(inited + 40) = v100;
        v135[0] = 0;
        v135[1] = 0xE000000000000000;
        v101 = v98;
        sub_22FCC9384();
        MEMORY[0x231907FA0](0x20646E756F46, 0xE600000000000000);
        *(v0 + 296) = 50;
        v102 = sub_22FCC96C4();
        MEMORY[0x231907FA0](v102);

        MEMORY[0x231907FA0](0xD000000000000079, 0x800000022FCE2920);
        v103 = v135[0];
        v104 = v135[1];
        *(inited + 72) = MEMORY[0x277D837D0];
        *(inited + 48) = v103;
        *(inited + 56) = v104;
        sub_22FA4D330(inited);
        swift_setDeallocating();
        sub_22FA2B420(inited + 32, &qword_27DAD7228);
        v105 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v106 = sub_22FCC89C4();

        [v105 initWithDomain:v101 code:-345 userInfo:v106];

        swift_willThrow();
        (*(v96 + 8))(v134, v97);

        goto LABEL_84;
      }

      v128 = v23 + 1;

      v1 = *(v0 + 504);
      goto LABEL_16;
    }

LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v24 = [v7 localizedDescription];
  v8 = sub_22FCC8A84();
  v9 = v25;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1 = *(v0 + 504);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_102:
    v1 = sub_22FAC1D0C(0, *(v1 + 16) + 1, 1, v1);
  }

  v28 = *(v1 + 16);
  v27 = *(v1 + 24);
  if (v28 >= v27 >> 1)
  {
    v1 = sub_22FAC1D0C((v27 > 1), v28 + 1, 1, v1);
  }

  *(v1 + 16) = v28 + 1;
  v29 = v1 + 16 * v28;
  *(v29 + 32) = v8;
  *(v29 + 40) = v9;

  v128 = *(v0 + 512);
LABEL_16:
  v30 = *(v0 + 272);
  v129 = v1;
  if (*(v30 + 16) >= 0x19uLL)
  {
    sub_22FACEE54(*(v0 + 360), v30);

    *(v0 + 272) = MEMORY[0x277D84F98];
  }

  else
  {
  }

  v31 = *(v0 + 528);
  if (v31 == *(v0 + 472))
  {
LABEL_20:
    if (*(*(v0 + 272) + 16))
    {
      sub_22FACEE54(*(v0 + 360), *(v0 + 272));

      *(v0 + 272) = MEMORY[0x277D84F98];
    }

    v80 = *(v0 + 456);
    v79 = *(v0 + 464);
    if (!*(v129 + 16))
    {
      (*(v80 + 8))(*(v0 + 464), *(v0 + 448));

      v93 = *(v0 + 8);
      goto LABEL_85;
    }

    v81 = *MEMORY[0x277CCA590];
    v133 = *(v0 + 448);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD82A8);
    v82 = swift_initStackObject();
    *(v82 + 16) = xmmword_22FCD1800;
    *(v82 + 32) = sub_22FCC8A84();
    *(v82 + 40) = v83;
    v84 = v81;
    sub_22FCC9384();

    strcpy(v135, "Encountered ");
    BYTE5(v135[1]) = 0;
    HIWORD(v135[1]) = -5120;
    *(v0 + 344) = *(v129 + 16);

    v85 = sub_22FCC96C4();
    MEMORY[0x231907FA0](v85);

    MEMORY[0x231907FA0](0xD000000000000013, 0x800000022FCE29A0);

    *(v0 + 352) = v129;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448);
    sub_22FAAEDD4();
    v86 = sub_22FCC8A24();
    v88 = v87;

    MEMORY[0x231907FA0](v86, v88);

    v89 = v135[0];
    v90 = v135[1];
    *(v82 + 72) = MEMORY[0x277D837D0];
    *(v82 + 48) = v89;
    *(v82 + 56) = v90;
    sub_22FA4D330(v82);
    swift_setDeallocating();
    sub_22FA2B420(v82 + 32, &qword_27DAD7228);
    v91 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v92 = sub_22FCC89C4();

    [v91 initWithDomain:v84 code:-346 userInfo:v92];

    swift_willThrow();
    (*(v80 + 8))(v79, v133);
LABEL_84:

    v93 = *(v0 + 8);
LABEL_85:

    return v93();
  }

  *(v0 + 504) = v129;
LABEL_23:
  *(v0 + 512) = v128;
  v32 = *(v0 + 472);
  while (1)
  {
    *(v0 + 520) = v31;
    if (v31 >= v32)
    {
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    *(v0 + 528) = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      goto LABEL_98;
    }

    v33 = *(v0 + 360);
    if ((v33 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x231908810](v31);
    }

    else
    {
      if (v31 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_99;
      }

      v34 = *(v33 + 8 * v31 + 32);
    }

    *(v0 + 536) = v34;
    sub_22FCC8FF4();
    v35 = *(v0 + 392);
    sub_22FCC6734();
    if (*(v35 + 176) == 1 && *(*(v0 + 392) + 200) < -v36)
    {

      v107 = sub_22FCC8664();
      v108 = sub_22FCC8F34();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = *(v0 + 488);
        v110 = *(v0 + 392);
        v111 = swift_slowAlloc();
        *v111 = 134217984;
        *(v111 + 4) = *(v110 + v109);

        _os_log_impl(&dword_22FA28000, v107, v108, "Reached nightly limit of processing time, so stopping the task early. Processed %ld moments.", v111, 0xCu);
        MEMORY[0x23190A000](v111, -1, -1);
      }

      else
      {
      }

      goto LABEL_20;
    }

    v132 = v31 + 1;
    v37 = objc_autoreleasePoolPush();
    v38 = sub_22FAD6978(v34, 1);
    v39 = [v38 fetchedObjects];

    if (v39)
    {
      sub_22FA3A77C(0, &qword_28147ADE8);
      v40 = sub_22FCC8C44();

      if (!(v40 >> 62))
      {
        goto LABEL_35;
      }
    }

    else
    {
      v40 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
LABEL_35:
        v9 = v40 & 0xFFFFFFFFFFFFFF8;
        goto LABEL_36;
      }
    }

    v54 = sub_22FCC92C4();
    if (v54)
    {
      v55 = v54;
      v9 = sub_22FA8A020(v54, 0);
      sub_22FB0F174(v9 + 32, v55, v40);
      v57 = v56;

      if (v57 != v55)
      {
        goto LABEL_106;
      }
    }

    else
    {

      v9 = MEMORY[0x277D84F90];
    }

LABEL_36:
    *(v0 + 544) = v9;
    objc_autoreleasePoolPop(v37);
    v41 = v9 < 0 || (v9 & 0x4000000000000000) != 0;
    if (!v41)
    {
      v8 = *(v9 + 16);
      if (v8 < 4)
      {
        goto LABEL_41;
      }

      v127 = v41;
      v131 = *(v9 + 16);
LABEL_53:
      v59 = 0;
      v130 = 0;
      v1 = v9 & 0xC000000000000001;
      do
      {
        if (v1)
        {
          v60 = MEMORY[0x231908810](v59, v9);
        }

        else
        {
          v60 = *(v9 + 8 * v59 + 32);
        }

        v7 = v60;
        v61 = [v60 sceneAnalysisProperties];
        if (v61)
        {
          v62 = *(v0 + 392);
          v11 = v61;
          v63 = [v61 sceneAnalysisVersion];

          if (v63 >= *(v62 + 216) && __OFADD__(v130++, 1))
          {
            __break(1u);
            goto LABEL_101;
          }
        }

        else
        {
        }

        ++v59;
      }

      while (v131 != v59);
      v65 = v130;
LABEL_65:
      *(v0 + 552) = v8;
      if (v65 / v8 >= 0.8)
      {

        v112 = sub_22FAD1AAC;
        v113 = 0;
        v114 = 0;

        return MEMORY[0x2822009F8](v112, v113, v114);
      }

      v11 = v34;

      v66 = sub_22FCC8664();
      v67 = sub_22FCC8F34();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *(v0 + 328) = v69;
        *v68 = 136315906;
        v70 = [v11 uuid];

        v71 = v11;

        if (!v70)
        {
          goto LABEL_108;
        }

        v72 = sub_22FCC8A84();
        v74 = v73;

        v75 = sub_22FA2F600(v72, v74, (v0 + 328));

        *(v68 + 4) = v75;
        *(v68 + 12) = 2048;
        *(v68 + 14) = v130;
        *(v68 + 22) = 2048;
        if (v127)
        {
          v76 = sub_22FCC92C4();
        }

        else
        {
          v76 = *(v9 + 16);
        }

        *(v68 + 24) = v76;

        *(v68 + 32) = 2048;
        *(v68 + 34) = 0x3FE999999999999ALL;
        _os_log_impl(&dword_22FA28000, v66, v67, "Moment %s only has %ld out of %ld assets with scene processing completed, below the required ratio threshold of %f, so skipping theme generation", v68, 0x2Au);
        __swift_destroy_boxed_opaque_existential_0(v69);
        MEMORY[0x23190A000](v69, -1, -1);
        MEMORY[0x23190A000](v68, -1, -1);

        v11 = v71;
      }

      else
      {
      }

      v31 = v132;
      if (__OFADD__(v128, 1))
      {
        __break(1u);
        goto LABEL_104;
      }

      if (v128 + 1 < 50 || *(*(v0 + 392) + *(v0 + 488)))
      {
        ++v128;
        v77 = *(v0 + 472);

        if (v132 != v77)
        {
          goto LABEL_23;
        }

        goto LABEL_20;
      }

LABEL_100:
      v116 = *(v0 + 456);
      v115 = *(v0 + 464);
      v117 = *(v0 + 448);

      v118 = *MEMORY[0x277CCA590];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD82A8);
      v119 = swift_initStackObject();
      *(v119 + 16) = xmmword_22FCD1800;
      *(v119 + 32) = sub_22FCC8A84();
      *(v119 + 40) = v120;
      v135[0] = 0;
      v135[1] = 0xE000000000000000;
      v121 = v118;
      sub_22FCC9384();
      MEMORY[0x231907FA0](0x20646E756F46, 0xE600000000000000);
      *(v0 + 320) = 50;
      v122 = sub_22FCC96C4();
      MEMORY[0x231907FA0](v122);

      MEMORY[0x231907FA0](0xD000000000000079, 0x800000022FCE2920);
      v123 = v135[0];
      v124 = v135[1];
      *(v119 + 72) = MEMORY[0x277D837D0];
      *(v119 + 48) = v123;
      *(v119 + 56) = v124;
      sub_22FA4D330(v119);
      swift_setDeallocating();
      sub_22FA2B420(v119 + 32, &qword_27DAD7228);
      v125 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v126 = sub_22FCC89C4();

      [v125 initWithDomain:v121 code:-345 userInfo:v126];

      swift_willThrow();
      (*(v116 + 8))(v115, v117);
      goto LABEL_84;
    }

    v58 = sub_22FCC92C4();
    if (v58 >= 4)
    {
      break;
    }

LABEL_41:
    v42 = *(v0 + 400);

    sub_22FCC8004();
    v43 = sub_22FCC7FF4();
    (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
    sub_22FC31A50(v42, v31);

    v44 = v34;
    v45 = sub_22FCC8664();
    v46 = sub_22FCC8F34();
    v47 = os_log_type_enabled(v45, v46);
    v11 = *(v0 + 392);
    if (v47)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *(v0 + 336) = v49;
      *v48 = 134218242;
      *(v48 + 4) = 4;

      *(v48 + 12) = 2080;
      v50 = [v44 uuid];

      if (!v50)
      {
        goto LABEL_105;
      }

      v51 = sub_22FCC8A84();
      v53 = v52;

      v11 = sub_22FA2F600(v51, v53, (v0 + 336));

      *(v48 + 14) = v11;
      _os_log_impl(&dword_22FA28000, v45, v46, "Less than %ld extended curated assets in moment %s, so assigning No Theme", v48, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x23190A000](v49, -1, -1);
      MEMORY[0x23190A000](v48, -1, -1);
    }

    else
    {
    }

    v32 = *(v0 + 472);
    ++v31;
    if (v132 == v32)
    {
      goto LABEL_20;
    }
  }

  v8 = v58;
  v127 = 1;
  v78 = sub_22FCC92C4();
  v131 = v78;
  if (!v78)
  {
    v130 = 0;
    v65 = 0.0;
    goto LABEL_65;
  }

  if (v78 >= 1)
  {
    goto LABEL_53;
  }

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
  return MEMORY[0x2822009F8](v112, v113, v114);
}

uint64_t sub_22FAD45FC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = swift_task_alloc();
  v3[6] = v4;
  *v4 = v3;
  v4[1] = sub_22FAD46DC;
  v5 = MEMORY[0x277D83B88];

  return MEMORY[0x2822008A0](v3 + 2, 0, 0, 0xD00000000000003CLL, 0x800000022FCE28E0, sub_22FAD4AD4, 0, v5);
}

uint64_t sub_22FAD46DC()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_22FAD4A58;
  }

  else
  {
    v2 = sub_22FAD47F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FAD47F0()
{
  v1 = v0[2];
  v2 = sub_22FAD001C(v1);
  v3 = v2;
  v0[8] = v2;
  if (v2 >> 62)
  {
    if (sub_22FCC92C4() >= 1)
    {
      goto LABEL_3;
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_3:
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_22FAD491C;
    v5 = v0[4];
    v6 = v0[3];

    return sub_22FAD0A48(v3, v1, v6, v5);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_22FAD491C()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FAD4A70, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22FAD4A70()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_22FAD4AD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD82C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = objc_opt_self();
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  aBlock[4] = sub_22FAD6DA8;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22FAD4CE4;
  aBlock[3] = &block_descriptor_29;
  v9 = _Block_copy(aBlock);

  [v6 requestCollectionThemeVersionWithOptions:0 andCompletionHandler:v9];
  _Block_release(v9);
}

uint64_t sub_22FAD4C94()
{
  sub_22FCC8EC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD82C8);
  return sub_22FCC8CE4();
}

void sub_22FAD4CE4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

uint64_t sub_22FAD4D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v5 = sub_22FCC6794();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAD4E2C, 0, 0);
}

uint64_t sub_22FAD4E2C()
{
  sub_22FCC6784();
  if ([objc_opt_self() mediaAnalysisIsBridgeVersionCompatible])
  {
    v1 = v0[20];
    v2 = v0[18];
    v3 = v0[19];
    v4 = *(v0[21] + OBJC_IVAR____TtC13PhotoAnalysis24LibraryUnderstandingTask_osLog);
    sub_22FCC76D4();
    swift_allocObject();
    v5 = v4;
    v0[25] = sub_22FCC76C4();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v1;
    v0[6] = sub_22FA4ED4C;
    v0[7] = v6;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_22FA51A14;
    v0[5] = &block_descriptor_14;
    v7 = _Block_copy(v0 + 2);
    v8 = objc_opt_self();

    v9 = [v8 progressReporterWithProgressBlock_];
    v0[26] = v9;
    _Block_release(v7);

    if (v2)
    {
      v10 = v0[18];
      sub_22FAD088C(v10);
      if (v11)
      {
        v12 = v11;
        if ([v11 count] > 0)
        {
          sub_22FACFB50(v12);
        }
      }
    }

    v22 = swift_task_alloc();
    v0[27] = v22;
    *v22 = v0;
    v22[1] = sub_22FAD5268;
    v23 = v0[24];

    return sub_22FAD45FC(v23, v9);
  }

  else
  {
    v13 = sub_22FCC8664();
    v14 = sub_22FCC8F14();
    v15 = os_log_type_enabled(v13, v14);
    v17 = v0[23];
    v16 = v0[24];
    v18 = v0[22];
    if (v15)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22FA28000, v13, v14, "Bridge embedding version and UEM version are not compatible", v19, 2u);
      MEMORY[0x23190A000](v19, -1, -1);
    }

    (*(v17 + 8))(v16, v18);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_22FAD5268()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_22FAD5510;
  }

  else
  {
    v2 = sub_22FAD537C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FAD537C()
{
  v1 = *(v0 + 224);
  sub_22FCC9004();
  if (v1)
  {

    v2 = *(v0 + 192);
    v3 = *(v0 + 176);
    v4 = *(v0 + 184);
    sub_22FCC76B4();

    (*(v4 + 8))(v2, v3);

    v5 = *(v0 + 8);
  }

  else
  {
    sub_22FA2E6E4(*(v0 + 168) + 128, v0 + 104);
    v6 = *(v0 + 208);
    if (*(v0 + 128))
    {
      v7 = *(v0 + 168);
      sub_22FA2D89C((v0 + 104), v0 + 64);
      v8 = *(v0 + 88);
      v9 = *(v0 + 96);
      __swift_project_boxed_opaque_existential_1((v0 + 64), v8);
      (*(v9 + 16))(*(v7 + OBJC_IVAR____TtC13PhotoAnalysis24LibraryUnderstandingTask_momentsProcessedCount), *(v7 + 32), *(v7 + 40), v8, v9);

      __swift_destroy_boxed_opaque_existential_0(v0 + 64);
    }

    else
    {

      sub_22FA2B420(v0 + 104, &unk_27DAD83A0);
    }

    v10 = *(v0 + 192);
    v11 = *(v0 + 176);
    v12 = *(v0 + 184);
    sub_22FCC76B4();

    (*(v12 + 8))(v10, v11);

    v5 = *(v0 + 8);
  }

  return v5();
}

uint64_t sub_22FAD5510()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  sub_22FCC76B4();

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22FAD55BC()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 88);
  sub_22FA2B420(v0 + 128, &unk_27DAD83A0);

  v1 = OBJC_IVAR____TtC13PhotoAnalysis24LibraryUnderstandingTask_libraryUnderstandingGenerator;
  v2 = sub_22FCC8014();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC13PhotoAnalysis24LibraryUnderstandingTask_logger;
  v4 = sub_22FCC8684();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_22FAD56AC()
{
  sub_22FAD55BC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LibraryUnderstandingTask()
{
  result = qword_28147EA30;
  if (!qword_28147EA30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FAD5758()
{
  result = sub_22FCC8014();
  if (v1 <= 0x3F)
  {
    result = sub_22FCC8684();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_22FAD58E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FA2C030;

  return sub_22FAD4D68(0, a2, a3);
}

void sub_22FAD5994(char a1)
{
  if (a1)
  {
    sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    sub_22FCC8F24();
    sub_22FA3A77C(0, &qword_28147ADA0);
    v1 = sub_22FCC91B4();
    sub_22FCC85A4();
  }
}

uint64_t sub_22FAD5AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_22FA2C21C;

  return sub_22FAD4D68(a2, a3, a4);
}

uint64_t sub_22FAD5B94(uint64_t a1)
{
  *(a1 + 8) = sub_22FAD6E34(qword_28147EA48, type metadata accessor for LibraryUnderstandingTask);
  result = sub_22FAD6E34(&qword_27DAD8298, type metadata accessor for LibraryUnderstandingTask);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FAD5C18(uint64_t (*a1)(id *, id *), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    *v3 = sub_22FB0FFE4(v6);
  }

  sub_22FAD5CC0(a1, a2);
  return sub_22FCC9404();
}

void sub_22FAD5CC0(uint64_t (*a1)(id *, id *), uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = sub_22FCC96B4();
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22FA3A77C(0, &qword_28147AE90);
        v9 = sub_22FCC8C74();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFF8;
      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      sub_22FAD5EE4(v11, v12, v2, a1, a2, v7);
      *(v10 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_22FAD5DE4(0, v5, 1, a1);
  }
}

void sub_22FAD5DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void **, void **))
{
  if (a3 != a2)
  {
    v7 = *v4;
    v8 = (*v4 + 8 * a3 - 8);
    v9 = a1 - a3;
LABEL_4:
    v19 = v8;
    v20 = a3;
    v10 = *(v7 + 8 * a3);
    v18 = v9;
    while (1)
    {
      v22 = v10;
      v21 = *v8;
      v11 = v21;
      v12 = v10;
      v13 = v11;
      v14 = a4(&v22, &v21);

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
        v10 = v8[1];
        *v8 = v10;
        v8[1] = v15;
        --v8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v20 + 1;
      v8 = v19 + 1;
      v9 = v18 - 1;
      if (v20 + 1 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_22FAD5EE4(void ***a1, uint64_t a2, void **a3, uint64_t (*a4)(id *, id *), uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = v9;
    v9 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_92;
    }

    goto LABEL_130;
  }

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (1)
  {
    v13 = v11 + 1;
    if (v11 + 1 < v10)
    {
      v97 = v10;
      v7 = *v9;
      v14 = *(*v9 + v13);
      v105 = *(*v9 + v11);
      v15 = v105;
      v106 = v14;
      v16 = v14;
      v17 = v15;
      v100 = a4(&v106, &v105);
      if (v6)
      {

        return;
      }

      v18 = 8 * v11;
      v19 = &v7[v11 + 2];
      v95 = v11;
      while (v97 - 2 != v11)
      {
        v20 = *v19;
        v105 = *(v19 - 1);
        v21 = v105;
        v106 = v20;
        v22 = v20;
        v7 = v21;
        LODWORD(v21) = a4(&v106, &v105);

        ++v11;
        ++v19;
        if ((v100 ^ v21))
        {
          v13 = v11 + 1;
          goto LABEL_11;
        }
      }

      v11 = v97 - 1;
      v13 = v97;
LABEL_11:
      v9 = a3;
      if (v100)
      {
        if (v13 < v95)
        {
          goto LABEL_124;
        }

        v23 = v95 <= v11;
        v11 = v95;
        if (v23)
        {
          v24 = 8 * v13 - 8;
          v25 = v13;
          v26 = v95;
          do
          {
            if (v26 != --v25)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              v28 = *&v27[v18];
              *&v27[v18] = *&v27[v24];
              *&v27[v24] = v28;
            }

            ++v26;
            v24 -= 8;
            v18 += 8;
          }

          while (v26 < v25);
        }
      }

      else
      {
        v11 = v95;
      }
    }

    v29 = v9[1];
    if (v13 >= v29)
    {
      goto LABEL_133;
    }

    if (__OFSUB__(v13, v11))
    {
      goto LABEL_120;
    }

    if (v13 - v11 >= a6)
    {
      goto LABEL_133;
    }

    v30 = (v11 + a6);
    if (__OFADD__(v11, a6))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v30 >= v29)
    {
      v30 = v9[1];
    }

    if (v30 < v11)
    {
      goto LABEL_123;
    }

    if (v13 == v30)
    {
LABEL_133:
      if (v13 < v11)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v77 = a5;
      v78 = *v9;
      v7 = (*v9 + 8 * v13 - 8);
      v96 = v11;
      v79 = v11 - v13;
      v92 = v30;
      do
      {
        v101 = v7;
        v103 = v13;
        v80 = v78[v13];
        v98 = v79;
        do
        {
          v105 = *v7;
          v81 = v105;
          v106 = v80;
          v82 = v80;
          v83 = v81;
          v84 = a4(&v106, &v105);
          if (v6)
          {

            return;
          }

          v85 = v84;

          if ((v85 & 1) == 0)
          {
            break;
          }

          if (!v78)
          {
            goto LABEL_126;
          }

          v86 = *v7;
          v80 = v7[1];
          *v7 = v80;
          v7[1] = v86;
          --v7;
        }

        while (!__CFADD__(v79++, 1));
        v13 = v103 + 1;
        v7 = v101 + 1;
        v79 = v98 - 1;
      }

      while ((v103 + 1) != v92);
      v13 = v92;
      a5 = v77;
      v9 = a3;
      v11 = v96;
      if (v92 < v96)
      {
        goto LABEL_119;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_22FAC21FC(0, *(v12 + 2) + 1, 1, v12);
    }

    v32 = *(v12 + 2);
    v31 = *(v12 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v12 = sub_22FAC21FC((v31 > 1), v32 + 1, 1, v12);
    }

    *(v12 + 2) = v33;
    v34 = &v12[16 * v32];
    *(v34 + 4) = v11;
    *(v34 + 5) = v13;
    v102 = v13;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v32)
    {
      break;
    }

LABEL_3:
    v10 = v9[1];
    v11 = v102;
    if (v102 >= v10)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v35 = v33 - 1;
    if (v33 >= 4)
    {
      v40 = &v12[16 * v33 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_106;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_107;
      }

      v47 = &v12[16 * v33];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_109;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_112;
      }

      if (v51 >= v43)
      {
        v69 = &v12[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_118;
        }

        if (v38 < v72)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v33 == 3)
    {
      v36 = *(v12 + 4);
      v37 = *(v12 + 5);
      v46 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      v39 = v46;
LABEL_49:
      if (v39)
      {
        goto LABEL_108;
      }

      v52 = &v12[16 * v33];
      v54 = *v52;
      v53 = *(v52 + 1);
      v55 = __OFSUB__(v53, v54);
      v56 = v53 - v54;
      v57 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v58 = &v12[16 * v35 + 32];
      v60 = *v58;
      v59 = *(v58 + 1);
      v46 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v46)
      {
        goto LABEL_114;
      }

      if (__OFADD__(v56, v61))
      {
        goto LABEL_115;
      }

      if (v56 + v61 >= v38)
      {
        if (v38 < v61)
        {
          v35 = v33 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v62 = &v12[16 * v33];
    v64 = *v62;
    v63 = *(v62 + 1);
    v46 = __OFSUB__(v63, v64);
    v56 = v63 - v64;
    v57 = v46;
LABEL_63:
    if (v57)
    {
      goto LABEL_110;
    }

    v65 = &v12[16 * v35];
    v67 = *(v65 + 4);
    v66 = *(v65 + 5);
    v46 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v46)
    {
      goto LABEL_113;
    }

    if (v68 < v56)
    {
      goto LABEL_3;
    }

LABEL_70:
    v73 = v35 - 1;
    if (v35 - 1 >= v33)
    {
      break;
    }

    if (!*v9)
    {
      goto LABEL_125;
    }

    v74 = *&v12[16 * v73 + 32];
    v75 = *&v12[16 * v35 + 40];
    sub_22FAD65B0(*v9 + v74, *v9 + *&v12[16 * v35 + 32], *v9 + v75, v7, a4);
    if (v6)
    {
      goto LABEL_100;
    }

    if (v75 < v74)
    {
      goto LABEL_104;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_22FB0EF2C(v12);
    }

    if (v73 >= *(v12 + 2))
    {
      goto LABEL_105;
    }

    v76 = &v12[16 * v73];
    *(v76 + 4) = v74;
    *(v76 + 5) = v75;
    v107 = v12;
    sub_22FB0EEA0(v35);
    v12 = v107;
    v33 = *(v107 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }

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
  v12 = sub_22FB0EF2C(v12);
LABEL_92:
  v107 = v12;
  v88 = *(v12 + 2);
  if (v88 < 2)
  {
LABEL_100:
  }

  else
  {
    while (*v7)
    {
      v89 = *&v12[16 * v88];
      v90 = *&v12[16 * v88 + 24];
      sub_22FAD65B0(*v7 + v89, *v7 + *&v12[16 * v88 + 16], *v7 + v90, v9, a4);
      if (v6)
      {
        goto LABEL_100;
      }

      if (v90 < v89)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_22FB0EF2C(v12);
      }

      if (v88 - 2 >= *(v12 + 2))
      {
        goto LABEL_117;
      }

      v91 = &v12[16 * v88];
      *v91 = v89;
      *(v91 + 1) = v90;
      v107 = v12;
      sub_22FB0EEA0(v88 - 1);
      v12 = v107;
      v88 = *(v107 + 2);
      if (v88 <= 1)
      {
        goto LABEL_100;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
  }
}

uint64_t sub_22FAD65B0(id *__src, id *a2, id *a3, uint64_t __dst, uint64_t (*a5)(id *, id *))
{
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = __dst;
    if (__dst != __src || &__src[v10] <= __dst)
    {
      memmove(__dst, __src, 8 * v10);
    }

    v52 = &v14[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_51;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = v6;
      v54 = *v6;
      v17 = v14;
      v53 = *v14;
      v18 = v53;
      v19 = v54;
      v20 = v18;
      v21 = a5(&v54, &v53);
      if (__dsta)
      {

        v43 = &v52[-v17 + 7];
        if (&v52[-v17] >= 0)
        {
          v43 = &v52[-v17];
        }

        if (v7 < v17 || v7 >= v17 + (v43 & 0xFFFFFFFFFFFFFFF8) || v7 != v17)
        {
          v42 = 8 * (v43 >> 3);
          v41 = v7;
          v40 = v17;
          goto LABEL_57;
        }

        return 1;
      }

      v22 = v21;

      __dsta = 0;
      if (v22)
      {
        break;
      }

      v15 = v17;
      v14 = (v17 + 8);
      v6 = v16;
      if (v7 != v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v14 >= v52)
      {
        goto LABEL_10;
      }
    }

    v15 = v16;
    v6 = v16 + 1;
    v14 = v17;
    if (v7 == v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (__dst != a2 || &a2[v13] <= __dst)
  {
    v23 = __dst;
    memmove(__dst, a2, 8 * v13);
    __dst = v23;
  }

  __srca = __dst;
  v52 = (__dst + 8 * v13);
  if (v11 < 8)
  {
    v14 = __dst;
  }

  else
  {
    v24 = __dsta;
    if (v6 <= v7)
    {
      v14 = __dst;
    }

    else
    {
      v25 = -__dst;
      v46 = -__dst;
      v47 = v7;
      while (2)
      {
        v26 = v24;
        __dstb = v6;
        v27 = v6 - 1;
        v28 = v52;
        v29 = &v52[v25];
        --v5;
        while (1)
        {
          v30 = *--v28;
          v54 = v30;
          v31 = v27;
          v53 = *v27;
          v32 = v53;
          v33 = v30;
          v34 = v32;
          v35 = a5(&v54, &v53);
          if (v26)
          {

            if (v29 >= 0)
            {
              v38 = v29;
            }

            else
            {
              v38 = v29 + 7;
            }

            v39 = v38 >> 3;
            v40 = __srca;
            v41 = __dstb;
            if (__dstb < __srca || __dstb >= (__srca + (v38 & 0xFFFFFFFFFFFFFFF8)))
            {
              memmove(__dstb, __srca, 8 * v39);
              return 1;
            }

            if (__dstb == __srca)
            {
              return 1;
            }

            v42 = 8 * v39;
            goto LABEL_57;
          }

          v36 = v35;

          v37 = (v5 + 1);
          if (v36)
          {
            break;
          }

          v27 = v31;
          if (v37 != v52)
          {
            *v5 = *v28;
          }

          v29 -= 8;
          --v5;
          v52 = v28;
          if (v28 <= __srca)
          {
            v52 = v28;
            v6 = __dstb;
            v14 = __srca;
            goto LABEL_51;
          }
        }

        v6 = v31;
        if (v37 != __dstb)
        {
          *v5 = *v31;
        }

        v14 = __srca;
        v24 = 0;
        if (v52 > __srca)
        {
          v25 = v46;
          if (v31 > v47)
          {
            continue;
          }
        }

        break;
      }
    }
  }

LABEL_51:
  v44 = v52 - v14 + 7;
  if (v52 - v14 >= 0)
  {
    v44 = v52 - v14;
  }

  if (v6 < v14 || v6 >= &v14[v44 & 0xFFFFFFFFFFFFFFF8] || v6 != v14)
  {
    v42 = 8 * (v44 >> 3);
    v41 = v6;
    v40 = v14;
LABEL_57:
    memmove(v41, v40, v42);
  }

  return 1;
}

id sub_22FAD6978(void *a1, char a2)
{
  result = [a1 photoLibrary];
  if (result)
  {
    v5 = result;
    v6 = [result librarySpecificFetchOptions];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73E0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_22FCD17F0;
    v8 = objc_allocWithZone(MEMORY[0x277CCAC98]);
    v9 = sub_22FCC8A54();
    v10 = [v8 initWithKey:v9 ascending:a2 & 1];

    v11 = sub_22FA3A77C(0, &qword_28147AEB0);
    *(v7 + 56) = v11;
    *(v7 + 32) = v10;
    v12 = objc_allocWithZone(MEMORY[0x277CCAC98]);
    v13 = sub_22FCC8A54();
    v14 = [v12 initWithKey:v13 ascending:a2 & 1];

    *(v7 + 88) = v11;
    *(v7 + 64) = v14;
    v15 = sub_22FCC8C24();

    [v6 setInternalSortDescriptors_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_22FCD1F90;
    sub_22FA3A77C(0, &qword_28147AEF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7278);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_22FCD1800;
    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = sub_22FA4EF4C();
    *(v17 + 32) = 0xD00000000000001CLL;
    *(v17 + 40) = 0x800000022FCE29C0;
    *(v16 + 32) = sub_22FCC8EE4();
    v18 = sub_22FCC8C24();

    v19 = [objc_opt_self() andPredicateWithSubpredicates_];

    [v6 setInternalPredicate_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_22FCD17F0;
    *(v20 + 32) = sub_22FCC8A84();
    *(v20 + 40) = v21;
    *(v20 + 48) = sub_22FCC8A84();
    *(v20 + 56) = v22;
    v23 = sub_22FCC8C24();

    [v6 setFetchPropertySets_];

    v24 = [objc_opt_self() fetchAssetsInAssetCollection:a1 options:v6];
    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22FAD6D18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD82B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FAD6DA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD82C8);

  return sub_22FAD4C94();
}

uint64_t sub_22FAD6E34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FAD6EB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FA4C64C;

  return sub_22FB1347C();
}

uint64_t sub_22FAD6F54(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a1;
  *(v8 + 16) = a7;
  *(v8 + 24) = a8;
  v9 = sub_22FCC9464();
  *(v8 + 40) = v9;
  *(v8 + 48) = *(v9 - 8);
  *(v8 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAD7018, 0, 0);
}

uint64_t sub_22FAD7018()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))();
  if (v1 <= 0.0)
  {
    sub_22FCC8DF4();
  }

  v2 = sub_22FCC98D4();
  v4 = v3;
  sub_22FCC97A4();
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_22FAD711C;

  return sub_22FAD765C(v2, v4, 0, 0, 1);
}

uint64_t sub_22FAD711C()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *v1;
  *(v5 + 72) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FAD72C4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_22FAD72C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FAD7328()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FA8E164;

  return sub_22FB13C90();
}

uint64_t sub_22FAD73CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FA8E164;

  return sub_22FB137E8();
}

uint64_t sub_22FAD7470()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FA8E164;

  return sub_22FB13EE4();
}

uint64_t sub_22FAD7514()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FA8E164;

  return sub_22FB13A3C();
}

uint64_t sub_22FAD75B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FA8E164;

  return sub_22FB1347C();
}

uint64_t sub_22FAD765C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_22FCC9444();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_22FAD775C, 0, 0);
}

uint64_t sub_22FAD775C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_22FCC9464();
  v5 = sub_22FAD7B14(&qword_28147AD70, MEMORY[0x277D85928]);
  sub_22FCC9784();
  sub_22FAD7B14(&qword_28147AD78, MEMORY[0x277D858F8]);
  sub_22FCC9474();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_22FAD78EC;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_22FAD78EC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FAD7AA8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_22FAD7AA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FAD7B14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TemplatedPrompt.MusicProperties.init(musicSubstring:artist:songTitle:mood:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  return result;
}

uint64_t TemplatedPrompt.init(id:promptTemplate:text:textWithMusic:traits:action:content:musicProperties:promptMetadata:templateHash:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, _OWORD *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v21 = sub_22FCC67F4();
  v22 = *(v21 - 8);
  v43 = a1;
  (*(v22 + 16))(a9, a1, v21);
  v23 = type metadata accessor for TemplatedPrompt();
  v24 = (a9 + v23[5]);
  v38 = a2;
  v39 = a3;
  *v24 = a2;
  v24[1] = a3;
  v25 = (a9 + v23[6]);
  *v25 = a4;
  v25[1] = a5;
  v26 = (a9 + v23[7]);
  *v26 = a6;
  v26[1] = a7;
  *(a9 + v23[8]) = a8;
  *(a9 + v23[9]) = a10;
  *(a9 + v23[10]) = a11;
  v27 = (a9 + v23[11]);
  v28 = a12[1];
  *v27 = *a12;
  v27[1] = v28;
  v27[2] = a12[2];
  *(v27 + 41) = *(a12 + 41);
  v29 = v23[13];
  v30 = sub_22FCC7BC4();
  v31 = *(v30 - 8);
  v32 = a9 + v29;
  v33 = a15;
  (*(v31 + 16))(v32, a13, v30);
  if (!a15)
  {

    a14 = _s13PhotoAnalysis15TemplatedPromptV10promptHash4fromS2S_tFZ_0(v38, v39);
    v33 = v35;
  }

  (*(v31 + 8))(a13, v30);
  result = (*(v22 + 8))(v43, v21);
  v37 = (a9 + v23[12]);
  *v37 = a14;
  v37[1] = v33;
  return result;
}

uint64_t TemplatedPrompt.MusicProperties.musicSubstring.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TemplatedPrompt.MusicProperties.artist.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TemplatedPrompt.MusicProperties.songTitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TemplatedPrompt.MusicProperties.hash(into:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  sub_22FCC8B14();
  if (v1)
  {
    sub_22FCC9864();
    sub_22FCC8B14();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_22FCC9864();
    if (v4)
    {
      return sub_22FCC9864();
    }

    goto LABEL_7;
  }

  sub_22FCC9864();
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_22FCC9864();
  sub_22FCC8B14();
  if (v4)
  {
    return sub_22FCC9864();
  }

LABEL_7:
  sub_22FCC9864();
  return MEMORY[0x231908CE0](v3);
}

uint64_t TemplatedPrompt.MusicProperties.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  sub_22FCC9844();
  sub_22FCC8B14();
  if (v1)
  {
    sub_22FCC9864();
    sub_22FCC8B14();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_22FCC9864();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_22FCC9864();
    MEMORY[0x231908CE0](v3);
    return sub_22FCC9894();
  }

  sub_22FCC9864();
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_22FCC9864();
  sub_22FCC8B14();
  if ((v4 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_22FCC9864();
  return sub_22FCC9894();
}

uint64_t sub_22FAD8018()
{
  sub_22FCC9844();
  TemplatedPrompt.MusicProperties.hash(into:)();
  return sub_22FCC9894();
}

uint64_t sub_22FAD805C()
{
  sub_22FCC9844();
  TemplatedPrompt.MusicProperties.hash(into:)();
  return sub_22FCC9894();
}

uint64_t TemplatedPrompt.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22FCC67F4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TemplatedPrompt.promptTemplate.getter()
{
  v1 = *(v0 + *(type metadata accessor for TemplatedPrompt() + 20));

  return v1;
}

uint64_t TemplatedPrompt.text.getter()
{
  v1 = *(v0 + *(type metadata accessor for TemplatedPrompt() + 24));

  return v1;
}

uint64_t TemplatedPrompt.textWithMusic.getter()
{
  v1 = *(v0 + *(type metadata accessor for TemplatedPrompt() + 28));

  return v1;
}

uint64_t TemplatedPrompt.traits.getter()
{
  type metadata accessor for TemplatedPrompt();
}

uint64_t TemplatedPrompt.musicProperties.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TemplatedPrompt() + 44));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11[0] = v4;
  *(v11 + 9) = *(v3 + 41);
  v6 = *(v11 + 9);
  v9 = *v3;
  *a1 = v9;
  a1[1] = v5;
  a1[2] = v4;
  *(a1 + 41) = v6;
  return sub_22FADA804(&v9, &v8);
}

uint64_t TemplatedPrompt.templateHash.getter()
{
  v1 = *(v0 + *(type metadata accessor for TemplatedPrompt() + 48));

  return v1;
}

uint64_t TemplatedPrompt.promptMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TemplatedPrompt() + 52);
  v4 = sub_22FCC7BC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for TemplatedPrompt()
{
  result = qword_2814806F0;
  if (!qword_2814806F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static TemplatedPrompt.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TemplatedPrompt();
  v5 = *(v4 + 48);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (v9 || (v10 = sub_22FCC9704(), result = 0, (v10 & 1) != 0))
  {
    v12 = *(v4 + 24);
    v13 = *(a1 + v12);
    v14 = *(a1 + v12 + 8);
    v15 = (a2 + v12);
    if (v13 == *v15 && v14 == v15[1])
    {
      return 1;
    }

    else
    {

      return sub_22FCC9704();
    }
  }

  return result;
}

uint64_t sub_22FAD8468(uint64_t a1, unint64_t a2)
{
  v43 = *MEMORY[0x277D85DE8];
  *&v40 = a1;
  *(&v40 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD82F0);
  if (swift_dynamicCast())
  {
    sub_22FA2CF78(__src, &v41);
    __swift_project_boxed_opaque_existential_1(&v41, v42);
    sub_22FCC6474();
    __src[0] = v40;
    __swift_destroy_boxed_opaque_existential_0(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_22FA2B420(__src, &qword_27DAD82F8);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_22FCC93D4();
  }

  sub_22FAD9834(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_22FADA3E8(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_22FAD98FC(sub_22FADABAC);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_22FCC6634();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_22FADA114(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_22FCC8B74();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_22FCC8BA4();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_22FCC93D4();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_22FADA114(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_22FCC8B84();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      sub_22FCC6644();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    sub_22FCC6644();
    sub_22FADAC14(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_22FADAC14(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_22FA7E820(*&__src[0], *(&__src[0] + 1));

  sub_22FA7E6C4(v32, *(&v32 + 1));
  return v32;
}

uint64_t TemplatedPrompt.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8048);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v58 - v4;
  v6 = sub_22FCC7BC4();
  v74 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v73 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_22FCC7424();
  v66 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_22FCC7344();
  v10 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7418);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v58 - v14;
  v76 = sub_22FCC67F4();
  v16 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v77 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22FCC7444();
  v75 = v6;
  if (v19)
  {
    v20 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v20 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      v67 = v18;
      v68 = v19;
      v65 = 1;
      goto LABEL_8;
    }
  }

  v67 = 0;
  v68 = 0;
  v65 = 0;
LABEL_8:
  sub_22FCC74B4();
  sub_22FCC67A4();

  v21 = *(v16 + 48);
  v22 = v76;
  v23 = v21(v15, 1, v76);
  v72 = v16;
  if (v23 == 1)
  {
    sub_22FCC67E4();
    if (v21(v15, 1, v22) != 1)
    {
      sub_22FA2B420(v15, &qword_27DAD7418);
    }
  }

  else
  {
    (*(v16 + 32))(v77, v15, v22);
  }

  v24 = sub_22FCC7474();
  v26 = v25;
  v27 = sub_22FCC7354();
  v62 = v28;
  v63 = v27;
  v29 = sub_22FCC7304();
  v60 = v30;
  v61 = v29;
  v59 = sub_22FCC74E4();
  sub_22FCC74D4();
  v58 = sub_22FCC7334();
  (*(v10 + 8))(v12, v64);
  sub_22FCC74F4();
  v31 = sub_22FCC7404();
  (*(v66 + 8))(v9, v69);
  v32 = v5;
  sub_22FCC7454();
  v34 = v74;
  v33 = v75;
  v35 = *(v74 + 48);
  v36 = v35(v5, 1, v75);
  v70 = a1;
  if (v36 == 1)
  {
    v37 = v73;
    sub_22FCC7B94();
    if (v35(v32, 1, v33) != 1)
    {
      sub_22FA2B420(v32, &qword_27DAD8048);
    }
  }

  else
  {
    v37 = v73;
    (*(v34 + 32))();
  }

  if (v26)
  {
    v38 = v24;
  }

  else
  {
    v26 = 0xE000000000000000;
    v38 = 0;
  }

  v40 = v71;
  v39 = v72;
  v41 = v76;
  (*(v72 + 16))(v71, v77, v76);
  v42 = type metadata accessor for TemplatedPrompt();
  v43 = (v40 + v42[5]);
  *v43 = v38;
  v43[1] = v26;
  v44 = (v40 + v42[6]);
  v45 = v62;
  *v44 = v63;
  v44[1] = v45;
  v46 = (v40 + v42[7]);
  v47 = v60;
  *v46 = v61;
  v46[1] = v47;
  v48 = v58;
  *(v40 + v42[8]) = v59;
  *(v40 + v42[9]) = v48;
  *(v40 + v42[10]) = v31;
  v49 = v40 + v42[11];
  v50 = v68;
  *v49 = v67;
  *(v49 + 8) = v50;
  *(v49 + 16) = 0u;
  *(v49 + 32) = 0u;
  *(v49 + 48) = 0;
  *(v49 + 56) = v65;
  (*(v34 + 16))(v40 + v42[13], v37, v33);

  v51 = _s13PhotoAnalysis15TemplatedPromptV10promptHash4fromS2S_tFZ_0(v38, v26);
  v52 = v34;
  v54 = v53;

  v55 = sub_22FCC7514();
  (*(*(v55 - 8) + 8))(v70, v55);
  (*(v52 + 8))(v37, v33);
  result = (*(v39 + 8))(v77, v41);
  v57 = (v40 + v42[12]);
  *v57 = v51;
  v57[1] = v54;
  return result;
}

uint64_t TemplatedPrompt.hash(into:)()
{
  sub_22FCC67F4();
  sub_22FADAB64(&qword_281482518, MEMORY[0x277CC95F0]);
  sub_22FCC8A14();
  v1 = type metadata accessor for TemplatedPrompt();
  sub_22FCC8B14();
  sub_22FCC8B14();
  sub_22FCC8B14();
  v2 = *(v0 + v1[8]);
  MEMORY[0x231908CB0](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 40;
    do
    {

      sub_22FCC8B14();

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  MEMORY[0x231908CB0](*(v0 + v1[9]));
  MEMORY[0x231908CB0](*(v0 + v1[10]));
  v5 = (v0 + v1[11]);
  v6 = v5[1];
  v8 = *v5;
  v9 = v6;
  *v10 = v5[2];
  *&v10[9] = *(v5 + 41);
  if (*(&v8 + 1))
  {
    sub_22FCC9864();

    sub_22FCC8B14();
    if (*(&v9 + 1))
    {
      sub_22FCC9864();
      sub_22FCC8B14();
      if (*&v10[8])
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_22FCC9864();
      if (*&v10[8])
      {
LABEL_7:
        sub_22FCC9864();
        sub_22FCC8B14();
        if (v10[24])
        {
LABEL_8:
          sub_22FCC9864();
LABEL_13:
          sub_22FA2B420(&v8, &qword_27DAD8020);
          goto LABEL_14;
        }

LABEL_12:
        sub_22FCC9864();
        MEMORY[0x231908CE0](*&v10[16]);
        goto LABEL_13;
      }
    }

    sub_22FCC9864();
    if (v10[24])
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  sub_22FCC9864();
LABEL_14:
  sub_22FCC8B14();
  sub_22FCC7BC4();
  sub_22FADAB64(&qword_27DAD8028, MEMORY[0x277D3C560]);
  return sub_22FCC8A14();
}

uint64_t TemplatedPrompt.hashValue.getter()
{
  sub_22FCC9844();
  TemplatedPrompt.hash(into:)();
  return sub_22FCC9894();
}

uint64_t sub_22FAD9324()
{
  sub_22FCC9844();
  TemplatedPrompt.hash(into:)();
  return sub_22FCC9894();
}

uint64_t sub_22FAD9368()
{
  sub_22FCC9844();
  TemplatedPrompt.hash(into:)();
  return sub_22FCC9894();
}

uint64_t sub_22FAD93A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 48);
  v7 = a1 + v6;
  v8 = *(a1 + v6);
  v9 = (a2 + v6);
  v10 = v8 == *v9 && *(v7 + 8) == v9[1];
  if (v10 || (v11 = sub_22FCC9704(), result = 0, (v11 & 1) != 0))
  {
    v13 = *(a3 + 24);
    v14 = *(a1 + v13);
    v15 = *(a1 + v13 + 8);
    v16 = (a2 + v13);
    if (v14 == *v16 && v15 == v16[1])
    {
      return 1;
    }

    else
    {

      return sub_22FCC9704();
    }
  }

  return result;
}

uint64_t sub_22FAD9450(uint64_t a1)
{
  v2 = sub_22FCC8994();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FADAB64(&qword_28147AFE0, MEMORY[0x277CC5290]);
  v6 = sub_22FCC8C04();
  v34 = MEMORY[0x277D84F90];
  sub_22FA86EA8(0, v6 & ~(v6 >> 63), 0);
  v7 = v34;
  (*(v3 + 16))(v5, a1, v2);
  result = sub_22FCC8BF4();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = v33;
    if (v6)
    {
      v10 = v32;
      *&v31 = *(v32 + 16);
      v30 = xmmword_22FCD17F0;
      v11 = v33;
      while (v31 != v11)
      {
        if (v9 < 0)
        {
          goto LABEL_21;
        }

        if (v11 >= *(v10 + 16))
        {
          goto LABEL_22;
        }

        v12 = *(v10 + 32 + v11);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7278);
        v13 = swift_allocObject();
        *(v13 + 16) = v30;
        *(v13 + 56) = MEMORY[0x277D83B88];
        *(v13 + 64) = MEMORY[0x277D83C10];
        *(v13 + 32) = 2;
        *(v13 + 96) = MEMORY[0x277D84B78];
        *(v13 + 104) = MEMORY[0x277D84BC0];
        *(v13 + 72) = v12;
        result = sub_22FCC8AB4();
        v34 = v7;
        v16 = *(v7 + 16);
        v15 = *(v7 + 24);
        if (v16 >= v15 >> 1)
        {
          v29 = result;
          v18 = v14;
          sub_22FA86EA8((v15 > 1), v16 + 1, 1);
          v14 = v18;
          result = v29;
          v7 = v34;
        }

        *(v7 + 16) = v16 + 1;
        v17 = v7 + 16 * v16;
        *(v17 + 32) = result;
        *(v17 + 40) = v14;
        ++v11;
        if (!--v6)
        {
          v33 = v11;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v11 = v33;
LABEL_12:
      v19 = v32;
      v20 = *(v32 + 16);
      if (v11 == v20)
      {
LABEL_13:

        return v7;
      }

      v31 = xmmword_22FCD17F0;
      while (v11 < v20)
      {
        v21 = v11 + 1;
        v22 = *(v19 + 32 + v11);
        v33 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7278);
        v23 = swift_allocObject();
        *(v23 + 16) = v31;
        *(v23 + 56) = MEMORY[0x277D83B88];
        *(v23 + 64) = MEMORY[0x277D83C10];
        *(v23 + 32) = 2;
        *(v23 + 96) = MEMORY[0x277D84B78];
        *(v23 + 104) = MEMORY[0x277D84BC0];
        *(v23 + 72) = v22;
        result = sub_22FCC8AB4();
        v34 = v7;
        v26 = *(v7 + 16);
        v25 = *(v7 + 24);
        if (v26 >= v25 >> 1)
        {
          *&v30 = result;
          v28 = v24;
          sub_22FA86EA8((v25 > 1), v26 + 1, 1);
          v24 = v28;
          result = v30;
          v7 = v34;
        }

        *(v7 + 16) = v26 + 1;
        v27 = v7 + 16 * v26;
        *(v27 + 32) = result;
        *(v27 + 40) = v24;
        v20 = *(v19 + 16);
        v11 = v33;
        if (v33 == v20)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22FAD9834@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_22FADA330(__src, &__src[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_22FCC6434();
      swift_allocObject();
      v8 = sub_22FCC63E4();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_22FCC6624();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *sub_22FAD98FC(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_22FA7E6C4(v6, v5);
      v18[0] = v6;
      LOWORD(v18[1]) = v5;
      BYTE2(v18[1]) = BYTE2(v5);
      BYTE3(v18[1]) = BYTE3(v5);
      BYTE4(v18[1]) = BYTE4(v5);
      BYTE5(v18[1]) = BYTE5(v5);
      BYTE6(v18[1]) = BYTE6(v5);
      result = a1(&v16, v18, v18 + BYTE6(v5));
      if (!v2)
      {
        result = v16;
      }

      v9 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
      *v3 = v18[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_22FA7E6C4(v6, v5);
    *v3 = xmmword_22FCD3450;
    sub_22FA7E6C4(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_22FCC63F4() && __OFSUB__(v6, sub_22FCC6424()))
      {
LABEL_26:
        __break(1u);
      }

      sub_22FCC6434();
      swift_allocObject();
      v13 = sub_22FCC63D4();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_22FAD9DA0(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v14;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_22FA7E6C4(v6, v5);
    v16 = v6;
    v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_22FCD3450;
    sub_22FA7E6C4(0, 0xC000000000000000);
    sub_22FCC6604();
    result = sub_22FAD9DA0(*(v16 + 2), *(v16 + 3), a1);
    v10 = v17 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v16;
      v3[1] = v10;
      return result;
    }

    *v3 = v16;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v18, 0, 15);
  result = a1(&v16, v18, v18);
  if (!v2)
  {
    return v16;
  }

  return result;
}

_BYTE *sub_22FAD9CA0@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_22FADA330(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_22FADA488(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_22FADA504(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_22FAD9D34(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_22FAD9DA0(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_22FCC63F4();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_22FCC6424();
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

  v12 = sub_22FCC6414();
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

uint64_t sub_22FAD9E54(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      sub_22FCC89A4();
      sub_22FADAB64(&qword_28147AFD8, MEMORY[0x277CC5540]);
      return sub_22FCC8964();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_22FADA034(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_22FADA034(v4, v5);
  }

  sub_22FCC89A4();
  sub_22FADAB64(&qword_28147AFD8, MEMORY[0x277CC5540]);
  return sub_22FCC8964();
}

uint64_t sub_22FADA034(uint64_t a1, uint64_t a2)
{
  result = sub_22FCC63F4();
  if (!result || (result = sub_22FCC6424(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22FCC6414();
      sub_22FCC89A4();
      sub_22FADAB64(&qword_28147AFD8, MEMORY[0x277CC5540]);
      return sub_22FCC8964();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22FADA114(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22FCC8BB4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x231907FF0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_22FADA190@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = sub_22FCC9394();
    if ((v3 & 1) == 0)
    {
      *a2 = 0;
      a2[1] = 0xE000000000000000;
      a2[2] = 15;
      a2[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s13PhotoAnalysis15TemplatedPromptV15MusicPropertiesV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = *(a1 + 48);
  v11 = *(a2 + 56);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_22FCC9704() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (v4)
  {
    if (!v7 || (v2 != v8 || v4 != v7) && (sub_22FCC9704() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v7)
  {
    goto LABEL_17;
  }

  if (!v5)
  {
    if ((v9 != 0) | v6 & 1)
    {
      v11 &= v9 == 0;
      return v11 & 1;
    }

LABEL_23:
    v11 = (v15 == v14) & ~v11;
    return v11 & 1;
  }

  if (!v9)
  {
LABEL_17:
    v11 = 0;
    return v11 & 1;
  }

  if (v3 != v10 || v5 != v9)
  {
    v13 = sub_22FCC9704();
    if (v6 & 1 | ((v13 & 1) == 0))
    {
      v11 &= v13;
      return v11 & 1;
    }

    goto LABEL_23;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_23;
  }

  return v11 & 1;
}

uint64_t sub_22FADA330(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_22FADA3E8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_22FCC6434();
      swift_allocObject();
      sub_22FCC6404();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_22FCC6624();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_22FADA488(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_22FCC6434();
  swift_allocObject();
  result = sub_22FCC63E4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22FCC6624();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_22FADA504(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_22FCC6434();
  swift_allocObject();
  result = sub_22FCC63E4();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t _s13PhotoAnalysis15TemplatedPromptV10promptHash4fromS2S_tFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_22FCC89A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22FCC8994();
  v8 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  v11 = sub_22FAD8468(a1, a2);
  v13 = v12;
  sub_22FADAB64(&qword_28147AFD8, MEMORY[0x277CC5540]);
  sub_22FCC8984();
  sub_22FA7E820(v11, v13);
  sub_22FAD9E54(v11, v13);
  sub_22FA7E6C4(v11, v13);
  sub_22FCC8974();
  (*(v5 + 8))(v7, v4);
  v18 = sub_22FAD9450(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448);
  sub_22FAAEDD4();
  v14 = sub_22FCC8A24();
  sub_22FA7E6C4(v11, v13);
  (*(v8 + 8))(v10, v17);

  return v14;
}

uint64_t sub_22FADA804(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22FADA878()
{
  result = qword_27DAD82D8;
  if (!qword_27DAD82D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD82D8);
  }

  return result;
}

void sub_22FADA93C()
{
  sub_22FCC67F4();
  if (v0 <= 0x3F)
  {
    sub_22FADAA50(319, &qword_28147AF30, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_22FADAA50(319, &qword_27DAD82E8, &type metadata for TemplatedPrompt.MusicProperties, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_22FCC7BC4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22FADAA50(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_22FADAABC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_22FADAB04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22FADAB64(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_22FADABAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_22FAD9D34(sub_22FADAC28, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_22FADAC14(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22FA7E6C4(a1, a2);
  }

  return a1;
}

uint64_t sub_22FADAC48(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_22FADAC6C, 0, 0);
}

uint64_t sub_22FADAC6C()
{
  v1 = v0[10];
  sub_22FA3A77C(0, &qword_28147ADA0);
  v2 = sub_22FCC91C4();
  v0[11] = v2;
  if (*(v1 + 137) == 1 && (v3 = *(v0[10] + 72), v0[12] = v3, [*(v3 + 112) isReady]) && (objc_msgSend(*(*(v3 + 120) + 112), sel_isSystemPhotoLibrary) & 1) != 0)
  {
    v5 = v0[8];
    v4 = v0[9];
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    v0[6] = sub_22FA4ED4C;
    v0[7] = v6;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_22FA51A14;
    v0[5] = &block_descriptor_15;
    v7 = _Block_copy(v0 + 2);
    v8 = objc_opt_self();

    v9 = [v8 progressReporterWithProgressBlock_];
    v0[13] = v9;
    _Block_release(v7);

    v10 = *(*(v3 + 120) + 112);
    v0[14] = v10;
    v11 = swift_task_alloc();
    v0[15] = v11;
    *(v11 + 16) = v10;
    *(v11 + 24) = v9;
    v12 = v10;

    return MEMORY[0x2822009F8](sub_22FADAF64, v3, 0);
  }

  else
  {
    v13 = sub_22FCC8F34();
    if (os_log_type_enabled(v2, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22FA28000, v2, v13, "Note: Important Entities evaluation task won't run on this device because there are no parameters to run on and shouldRun() returns false!", v14, 2u);
      MEMORY[0x23190A000](v14, -1, -1);
    }

    v15 = sub_22FCC8F34();
    if (os_log_type_enabled(v2, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22FA28000, v2, v15, "Please start a Trial experiment with some example values to run evaluation on the important entities inference.", v16, 2u);
      MEMORY[0x23190A000](v16, -1, -1);
    }

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_22FADAF64()
{
  v1 = [*(*(v0 + 96) + 112) workingContext];
  sub_22FCC9114();
  *(v0 + 128) = 0;

  return MEMORY[0x2822009F8](sub_22FADB048, 0, 0);
}

uint64_t sub_22FADB048()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22FADB0B8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);

  v3 = *(v0 + 8);

  return v3();
}

id sub_22FADB128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if ([objc_opt_self() runImportantEntitiesTuningInGraph:a1 photoLibrary:a2 progressReporter:a3 error:v5])
  {
    return v5[0];
  }

  v4 = v5[0];
  sub_22FCC6514();

  return swift_willThrow();
}

uint64_t sub_22FADB1F0()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  return swift_deallocClassInstance();
}

id sub_22FADB28C()
{
  if (*(*v0 + 137) != 1)
  {
    return 0;
  }

  v1 = *(*v0 + 72);
  result = [*(v1 + 112) isReady];
  if (result)
  {
    return [*(*(v1 + 120) + 112) isSystemPhotoLibrary];
  }

  return result;
}

uint64_t sub_22FADB2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FA2C030;

  return sub_22FADAC48(a2, a3);
}

void sub_22FADB394(char a1)
{
  if (a1)
  {
    sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    sub_22FCC8F24();
    sub_22FA3A77C(0, &qword_28147ADA0);
    v1 = sub_22FCC91B4();
    sub_22FCC85A4();
  }
}

uint64_t sub_22FADB498(uint64_t a1)
{
  *(a1 + 8) = sub_22FADB500(&qword_28147D100);
  result = sub_22FADB500(&qword_27DAD8300);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FADB500(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ImportantEntitiesEvaluationTask();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FADB564()
{
  v1 = sub_22FCC8684();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v2 + 16);
  v29 = v7;
  v30 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6();
  v9 = *(v0 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_systemTask + 24);
  v8 = *(v0 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_systemTask + 32);
  v27 = __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_systemTask), v9);
  v10 = OBJC_IVAR____TtC13PhotoAnalysis16FastPassActivity_featureCodes;
  swift_beginAccess();
  v11 = *(v0 + v10);
  v12 = *(v0 + OBJC_IVAR____TtC13PhotoAnalysis16FastPassActivity_processingTaskIdentifiers);
  v13 = *(v8 + 16);

  v25 = v5;
  v26 = v4;
  v14 = v12;
  v15 = v28;
  v13(v5, v4, v11, v14, v9, v8);
  if (v15)
  {
    (*(v2 + 8))(v30, v29);
  }

  else
  {
    v17 = v25;
    v18 = v29;

    v19 = v30;
    v20 = sub_22FCC8664();
    v21 = sub_22FCC8F34();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v31 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_22FA2F600(v17, v26, &v31);
      _os_log_impl(&dword_22FA28000, v20, v21, "Submitted fast pass for %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x23190A000](v23, -1, -1);
      MEMORY[0x23190A000](v22, -1, -1);
    }

    return (*(v2 + 8))(v19, v18);
  }
}

uint64_t sub_22FADB81C()
{
  v1 = v0[23];
  v2 = swift_allocObject();
  v0[24] = v2;
  *(v2 + 16) = &unk_22FCD58B8;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_22FADB8F8;
  v4 = v0[23];

  return sub_22FBB86A8(&unk_22FCD58C0, v2, v4);
}

uint64_t sub_22FADB8F8(uint64_t a1)
{
  *(*v1 + 208) = a1;

  return MEMORY[0x2822009F8](sub_22FADB9F8, 0, 0);
}