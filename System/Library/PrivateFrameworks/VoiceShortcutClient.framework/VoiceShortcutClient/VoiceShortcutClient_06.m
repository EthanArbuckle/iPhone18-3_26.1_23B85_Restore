uint64_t sub_1B1E66820(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = result;
  v34 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = a4 + 56;
LABEL_5:
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v37 = (v9 - 1) & v9;
LABEL_12:
    v15 = v12 | (v5 << 6);
    v16 = (*(a3 + 48) + 16 * v15);
    v17 = v16[1];
    v18 = *(*(a3 + 56) + 24 * v15 + 16);
    v36 = v18;
    if (*(a4 + 16))
    {
      v33 = v15;
      v19 = *v16;
      v20 = *(a4 + 40);
      sub_1B1F1B7C0();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v32 = v18;
      sub_1B1F1A900();
      v21 = sub_1B1F1B7F0();
      v22 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v23 = v21 & v22;
        if (((*(v11 + (((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v22)) & 1) == 0)
        {
          break;
        }

        v24 = (*(a4 + 48) + 16 * v23);
        if (*v24 != v19 || v24[1] != v17)
        {
          v26 = sub_1B1F1B510();
          v21 = v23 + 1;
          if ((v26 & 1) == 0)
          {
            continue;
          }
        }

        swift_bridgeObjectRelease_n();
        result = swift_bridgeObjectRelease_n();
        *(v31 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
        v27 = __OFADD__(v34++, 1);
        v9 = v37;
        if (v27)
        {
          goto LABEL_27;
        }

        goto LABEL_5;
      }
    }

    else
    {
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v28 = v18;
    }

    swift_bridgeObjectRelease_n();
    result = swift_bridgeObjectRelease_n();
    v9 = v37;
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      v29 = sub_1B1E66EBC(v31, a2, v34, a3);

      return v29;
    }

    v14 = *(v6 + 8 * v5);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v37 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void *sub_1B1E66AAC(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v10 = a5(v9, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

unint64_t *sub_1B1E66B54(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1B1E678F8(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

unint64_t *sub_1B1E66BE4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1B1E673D8(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1B1E66C74(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    v5 = a3;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785AD8, qword_1B1F33AD0);
      v7 = sub_1B1F1B140();
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
      v39 = v4;
      while (v9)
      {
        v12 = __clz(__rbit64(v9));
        v40 = (v9 - 1) & v9;
LABEL_16:
        v16 = v12 | (v10 << 6);
        v17 = (*(v4 + 48) + 16 * v16);
        v18 = *v17;
        v19 = v17[1];
        v20 = (*(v4 + 56) + 32 * v16);
        v21 = v20[1];
        v41 = *v20;
        v23 = v20[2];
        v22 = v20[3];
        v24 = v8[5];
        v25 = v8;
        sub_1B1F1B7C0();
        sub_1B1F1A760();
        sub_1B1F1A760();
        sub_1B1E0E714(v23, v22);
        sub_1B1F1A900();
        sub_1B1F1B7F0();
        v26 = *(v25 + 32);
        OUTLINED_FUNCTION_30_4();
        if (((v29 << v28) & ~*(v11 + 8 * v27)) == 0)
        {
          OUTLINED_FUNCTION_27_4();
          while (++v31 != v33 || (v32 & 1) == 0)
          {
            v34 = v31 == v33;
            if (v31 == v33)
            {
              v31 = 0;
            }

            v32 |= v34;
            if (*(v11 + 8 * v31) != -1)
            {
              OUTLINED_FUNCTION_25_6();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_28_5();
LABEL_25:
        *(v11 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
        v35 = (v8[6] + 16 * v30);
        *v35 = v18;
        v35[1] = v19;
        v36 = (v8[7] + 32 * v30);
        *v36 = v41;
        v36[1] = v21;
        v36[2] = v23;
        v36[3] = v22;
        ++v8[2];
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_30;
        }

        v4 = v39;
        v9 = v40;
        if (!v5)
        {
          return;
        }
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

        ++v13;
        if (a1[v10])
        {
          OUTLINED_FUNCTION_19_7();
          v40 = v15 & v14;
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

uint64_t sub_1B1E66EBC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785AC0, &unk_1B1F33AA0);
  result = sub_1B1F1B140();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v37 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v38 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = (*(v4 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = (*(v4 + 56) + 24 * v16);
    v21 = v20[1];
    v39 = *v20;
    v22 = v20[2];
    v23 = *(v9 + 40);
    sub_1B1F1B7C0();
    sub_1B1F1A760();
    v40 = v21;
    v24 = v18;
    sub_1B1F1A760();
    v25 = v22;
    sub_1B1F1A900();
    result = sub_1B1F1B7F0();
    v26 = -1 << *(v9 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v12 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v9 + 48) + 16 * v29);
    *v34 = v24;
    v34[1] = v19;
    v35 = (*(v9 + 56) + 24 * v29);
    *v35 = v39;
    v35[1] = v40;
    v35[2] = v25;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v37;
    v10 = v38;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v38 = (v15 - 1) & v15;
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

unint64_t *sub_1B1E67128(uint64_t (*a1)(void *), unint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v33 = a1;
  v35[2] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  v9 = 8 * v8;
  if ((v7 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v34 = v4;
    v31 = &v28;
    MEMORY[0x1EEE9AC00](a1);
    v29 = v8;
    v30 = (&v28 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1B1E64060(0, v8, v30);
    v32 = 0;
    v10 = 0;
    v8 = v5 + 56;
    v11 = 1 << *(v5 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v9 = v12 & *(v5 + 56);
    v13 = (v11 + 63) >> 6;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v17 = v14 | (v10 << 6);
      v4 = v5;
      v18 = (*(v5 + 48) + 16 * v17);
      v19 = v18[1];
      v35[0] = *v18;
      v35[1] = v19;
      sub_1B1F1A760();
      v20 = v34;
      v21 = v33(v35);
      v34 = v20;
      if (v20)
      {

        swift_willThrow();
        goto LABEL_18;
      }

      v22 = v21;

      v5 = v4;
      if (v22)
      {
        *(v30 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
LABEL_17:
          sub_1B1E6754C(v30, v29, v32, v5);
          a2 = v24;
          goto LABEL_18;
        }
      }
    }

    v15 = v10;
    while (1)
    {
      v10 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v10 >= v13)
      {
        goto LABEL_17;
      }

      v16 = *(v8 + 8 * v10);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();
  a2 = sub_1B1E66BE4(v27, v8, v5, v33);

  MEMORY[0x1B273F720](v27, -1, -1);
LABEL_18:
  v25 = *MEMORY[0x1E69E9840];
  return a2;
}

void sub_1B1E673D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;
    sub_1B1F1A760();
    v17 = a4(v24);

    if (v4)
    {
      return;
    }

    if (v17)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        sub_1B1E6754C(a1, a2, v22, v19);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1B1E6754C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a3)
  {
    v5 = a3;
    if (*(a4 + 16) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785AD0, &unk_1B1F33AB8);
      v8 = sub_1B1F1AF70();
      v9 = v8;
      if (a2 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *a1;
      }

      v11 = 0;
      v12 = v8 + 56;
      v32 = v4;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_16:
        v17 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
        v18 = *v17;
        v19 = v17[1];
        v20 = *(v9 + 40);
        sub_1B1F1B7C0();
        sub_1B1F1A760();
        sub_1B1F1A900();
        sub_1B1F1B7F0();
        v21 = *(v9 + 32);
        OUTLINED_FUNCTION_30_4();
        if (((v24 << v23) & ~*(v12 + 8 * v22)) == 0)
        {
          OUTLINED_FUNCTION_27_4();
          while (++v26 != v28 || (v27 & 1) == 0)
          {
            v29 = v26 == v28;
            if (v26 == v28)
            {
              v26 = 0;
            }

            v27 |= v29;
            if (*(v12 + 8 * v26) != -1)
            {
              OUTLINED_FUNCTION_25_6();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_28_5();
LABEL_25:
        *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v30 = (*(v9 + 48) + 16 * v25);
        *v30 = v18;
        v30[1] = v19;
        ++*(v9 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_30;
        }

        v4 = v32;
        if (!v5)
        {
          goto LABEL_5;
        }
      }

      v14 = v11;
      while (1)
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v11 >= a2)
        {
          goto LABEL_5;
        }

        ++v14;
        if (a1[v11])
        {
          OUTLINED_FUNCTION_19_7();
          v10 = v16 & v15;
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

  else
  {
LABEL_5:
  }
}

unint64_t *sub_1B1E67730(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v8 = (v14 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1B1E64060(0, v6, v8);
    sub_1B1E678F8(v8, v6, a2, a1);
    v10 = v9;
  }

  else
  {
    v13 = swift_slowAlloc();

    v10 = sub_1B1E66B54(v13, v6, a2, a1);

    MEMORY[0x1B273F720](v13, -1, -1);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1B1E678F8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v29 = 0;
    v30 = 1 << *(a3 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(a3 + 56);
    v33 = (v30 + 63) >> 6;
    v34 = a4 + 56;
LABEL_28:
    while (v32)
    {
      v35 = __clz(__rbit64(v32));
      v53 = (v32 - 1) & v32;
LABEL_35:
      v51 = v35 | (v29 << 6);
      v38 = (*(v5 + 48) + 16 * v51);
      v40 = *v38;
      v39 = v38[1];
      v41 = *(v4 + 40);
      sub_1B1F1B7C0();
      sub_1B1F1A760();
      sub_1B1F1A900();
      v42 = sub_1B1F1B7F0();
      v43 = ~(-1 << *(v4 + 32));
      do
      {
        v44 = v42 & v43;
        if (((*(v34 + (((v42 & v43) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v42 & v43)) & 1) == 0)
        {

          v4 = a4;
          v32 = v53;
          goto LABEL_28;
        }

        v45 = (*(a4 + 48) + 16 * v44);
        if (*v45 == v40 && v45[1] == v39)
        {
          break;
        }

        v47 = sub_1B1F1B510();
        v42 = v44 + 1;
      }

      while ((v47 & 1) == 0);

      *(a1 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      v28 = __OFADD__(v55++, 1);
      v4 = a4;
      v32 = v53;
      if (v28)
      {
        goto LABEL_50;
      }
    }

    v36 = v29;
    while (1)
    {
      v29 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v29 >= v33)
      {
LABEL_46:

        sub_1B1E6754C(a1, a2, v55, v5);
        return;
      }

      v37 = *(v5 + 56 + 8 * v29);
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v53 = (v37 - 1) & v37;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v48 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v50 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v52 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v5 + 40);
      sub_1B1F1B7C0();
      sub_1B1F1A760();
      sub_1B1F1A900();
      v19 = sub_1B1F1B7F0();
      v20 = v5;
      v21 = ~(-1 << *(v5 + 32));
      do
      {
        v22 = v19 & v21;
        v23 = (v19 & v21) >> 6;
        v24 = 1 << (v19 & v21);
        if ((v24 & *(v11 + 8 * v23)) == 0)
        {

          v5 = v20;
          v4 = a4;
          v10 = v50;
          v9 = v52;
          goto LABEL_6;
        }

        v25 = (*(v20 + 48) + 16 * v22);
        if (*v25 == v17 && v25[1] == v16)
        {
          break;
        }

        v27 = sub_1B1F1B510();
        v19 = v22 + 1;
      }

      while ((v27 & 1) == 0);

      v9 = v52;
      a1[v23] |= v24;
      v28 = __OFADD__(v55++, 1);
      v5 = v20;
      v4 = a4;
      v10 = v50;
      if (v28)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v48 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v52 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

void sub_1B1E67D3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_1B1E03C48(a3, a4);
  }
}

void sub_1B1E67D88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    sub_1B1F1A760();

    sub_1B1E0E714(a3, a4);
  }
}

uint64_t sub_1B1E67DD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_10(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1B1E67E34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_10(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1B1E67E8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_10(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_23_3()
{

  return sub_1B1F1AC70();
}

xpc_connection_t sub_1B1E67FA4(uint64_t a1, _xpc_connection_s *a2, dispatch_queue_t targetq)
{
  mach_service = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *name = a1;
      v9 = a2 & 0xFFFFFFFFFFFFFFLL;
      v6 = name;
      goto LABEL_6;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
      mach_service = xpc_connection_create_mach_service(v6, targetq, 1uLL);

      return mach_service;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7843C0, &unk_1B1F33BC0);
  sub_1B1F1AF90();

  if (!v3)
  {
    return v10;
  }

  return mach_service;
}

uint64_t *static XPCListener.anonymous(handler:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for XPCListener();
  swift_allocObject();

  return sub_1B1E685C4(0, 0, a1, a2);
}

uint64_t *static XPCListener.machService(_:handler:)(uint64_t a1, _xpc_connection_s *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for XPCListener();
  swift_allocObject();
  sub_1B1F1A760();

  return sub_1B1E685C4(a1, a2, a3, a4);
}

uint64_t sub_1B1E6817C(uint64_t a1, _xpc_connection_s *a2)
{
  v28 = sub_1B1F1AD60();
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B1F1AD50();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B08, &unk_1B1F33BB0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - v15;
  v17 = sub_1B1F1A6B0();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  MEMORY[0x1EEE9AC00](v19);
  if (a2)
  {
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_1B1F1AFA0();

    v29 = 0xD00000000000001DLL;
    v30 = 0x80000001B1F39750;
    v27 = a1;
    MEMORY[0x1B273D1A0](a1, a2);
    v26 = v30;
    qos_class_main();
    sub_1B1F1A660();
    v20 = sub_1B1F1A670();
    result = __swift_getEnumTagSinglePayload(v14, 1, v20);
    if (result != 1)
    {
      sub_1B1E1D940();
      sub_1B1F1A6A0();
      v29 = MEMORY[0x1E69E7CC0];
      sub_1B1E1D984();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7845B0, qword_1B1F34ED0);
      sub_1B1E1D9DC();
      sub_1B1F1AF00();
      (*(v4 + 104))(v7, *MEMORY[0x1E69E8090], v28);
      v22 = sub_1B1F1AD80();
      v23 = sub_1B1E67FA4(v27, a2, v22);
LABEL_6:
      v25 = v23;

      return v25;
    }

    __break(1u);
  }

  else
  {
    qos_class_main();
    sub_1B1F1A660();
    v24 = sub_1B1F1A670();
    result = __swift_getEnumTagSinglePayload(v16, 1, v24);
    if (result != 1)
    {
      sub_1B1E1D940();
      sub_1B1F1A6A0();
      v29 = MEMORY[0x1E69E7CC0];
      sub_1B1E1D984();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7845B0, qword_1B1F34ED0);
      sub_1B1E1D9DC();
      sub_1B1F1AF00();
      (*(v4 + 104))(v7, *MEMORY[0x1E69E8090], v28);
      v22 = sub_1B1F1AD80();
      v23 = xpc_connection_create(0, v22);
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_1B1E685C4(uint64_t a1, _xpc_connection_s *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *v5;
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  sub_1B1F1A760();

  v9 = sub_1B1E6817C(a1, a2);

  v5[6] = v9;
  v12[4] = sub_1B1E68CAC;
  v12[5] = v5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1B1E6EBE0;
  v12[3] = &block_descriptor_4;
  v10 = _Block_copy(v12);
  swift_unknownObjectRetain();

  xpc_connection_set_event_handler(v9, v10);
  _Block_release(v10);
  swift_unknownObjectRelease();
  xpc_connection_resume(v5[6]);

  return v5;
}

void sub_1B1E68718(_xpc_connection_s *a1, uint64_t a2)
{
  v4 = MEMORY[0x1B273FB80]();
  if (sub_1B1F1A580() == v4)
  {
    v11 = *(a2 + 32);
    v10 = *(a2 + 40);
    type metadata accessor for XPCIncomingConnection();
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    swift_unknownObjectRetain();
    v13 = v11(v12);

    if (v13)
    {

      xpc_connection_resume(a1);
    }

    else
    {

      xpc_connection_cancel(a1);
    }
  }

  else if (sub_1B1F1A550() != v4)
  {
    v5 = MEMORY[0x1B273FA10](a1);
    v6 = sub_1B1F1A920();
    v8 = v7;
    MEMORY[0x1B273F720](v5, -1, -1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B00, &qword_1B1F35170);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1B1F2A3B0;
    sub_1B1F1AFA0();
    MEMORY[0x1B273D1A0](0xD000000000000045, 0x80000001B1F39700);
    MEMORY[0x1B273D1A0](v6, v8);

    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 32) = 0;
    *(v9 + 40) = 0xE000000000000000;
    sub_1B1F1B7A0();
  }
}

xpc_endpoint_t sub_1B1E68910@<X0>(xpc_endpoint_t *a1@<X8>)
{
  result = xpc_endpoint_create(*(v1 + 48));
  *a1 = result;
  return result;
}

void *XPCListener.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];
  swift_unknownObjectRelease();
  return v0;
}

uint64_t XPCListener.__deallocating_deinit()
{
  XPCListener.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

void static XPCListener.serviceListener(handler:)(void *a1, uint64_t a2)
{
  v2 = off_1EB785AF0;
  off_1EB785AF0 = a1;
  qword_1EB785AF8 = a2;
  sub_1B1DEBA94(v2);

  xpc_main(sub_1B1E68AB0);
}

uint64_t sub_1B1E689E8(uint64_t result)
{
  v1 = off_1EB785AF0;
  if (off_1EB785AF0)
  {
    v2 = result;
    type metadata accessor for XPCIncomingConnection();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    swift_unknownObjectRetain();
    sub_1B1DFB8E8(v1);
    v4 = v1(v3);

    if (v4)
    {

      xpc_connection_resume(v2);
    }

    else
    {
      xpc_connection_cancel(v2);
    }

    return sub_1B1DEBA94(v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B1E68AB0()
{
  v0 = swift_unknownObjectRetain();
  sub_1B1E689E8(v0);

  return swift_unknownObjectRelease();
}

uint64_t XPCListener.description.getter()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    sub_1B1F1AFA0();

    strcpy(v8, "<xpc listener ");
    HIBYTE(v8[1]) = -18;
    MEMORY[0x1B273D1A0](v2, v1);
    MEMORY[0x1B273D1A0](8250, 0xE200000000000000);
  }

  else
  {
    sub_1B1F1AFA0();

    v8[0] = 0xD000000000000019;
    v8[1] = 0x80000001B1F396A0;
  }

  v3 = MEMORY[0x1B273FA10](v0[6]);
  v4 = sub_1B1F1A920();
  v6 = v5;
  MEMORY[0x1B273F720](v3, -1, -1);
  MEMORY[0x1B273D1A0](v4, v6);

  MEMORY[0x1B273D1A0](62, 0xE100000000000000);
  return v8[0];
}

xpc_connection_t sub_1B1E68CB4@<X0>(const char *a1@<X0>, xpc_connection_t *a2@<X8>)
{
  result = xpc_connection_create_mach_service(a1, *(v2 + 16), 1uLL);
  *a2 = result;
  return result;
}

uint64_t sub_1B1E68CEC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819047280 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1752397168 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B1F1B510();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B1E68DBC(char a1)
{
  if (a1)
  {
    return 1752397168;
  }

  else
  {
    return 1819047280;
  }
}

uint64_t sub_1B1E68DDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616E6F73726570 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6563726F66 && a2 == 0xE500000000000000;
    if (v6 || (sub_1B1F1B510() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6B6F6F426D6F7266 && a2 == 0xEC0000006B72616DLL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B1F1B510();

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

uint64_t sub_1B1E68EEC(char a1)
{
  if (!a1)
  {
    return 0x616E6F73726570;
  }

  if (a1 == 1)
  {
    return 0x6563726F66;
  }

  return 0x6B6F6F426D6F7266;
}

uint64_t sub_1B1E68F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E68CEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E68F78(uint64_t a1)
{
  v2 = sub_1B1E693DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E68FB4(uint64_t a1)
{
  v2 = sub_1B1E693DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E68FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E68DDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E69020(uint64_t a1)
{
  v2 = sub_1B1E69484();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E6905C(uint64_t a1)
{
  v2 = sub_1B1E69484();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E69098(uint64_t a1)
{
  v2 = sub_1B1E69430();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E690D4(uint64_t a1)
{
  v2 = sub_1B1E69430();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VoiceShortcutClientRequest.ToolKit.SyncingRequest.encode(to:)()
{
  OUTLINED_FUNCTION_34();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B10, &qword_1B1F33BD0);
  v7 = OUTLINED_FUNCTION_0(v6);
  v30 = v8;
  v31 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17();
  v29 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B18, &qword_1B1F33BD8);
  v14 = OUTLINED_FUNCTION_0(v13);
  v33 = v15;
  v34 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_38_1();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B20, &qword_1B1F33BE0);
  OUTLINED_FUNCTION_0(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_19_8();
  v35 = *v0;
  v32 = v0[1];
  v25 = *(v0 + 8);
  v26 = v5[4];
  __swift_project_boxed_opaque_existential_0(v5, v5[3]);
  sub_1B1E693DC();
  sub_1B1F1B830();
  if (v25 < 0)
  {
    sub_1B1E69430();
    v3 = v29;
    OUTLINED_FUNCTION_35_2();
    v27 = v31;
    sub_1B1F1B280();
    v28 = v30;
  }

  else
  {
    sub_1B1E69484();
    OUTLINED_FUNCTION_35_2();
    v27 = v34;
    sub_1B1F1B250();
    if (!v1)
    {
      OUTLINED_FUNCTION_32_5();
      sub_1B1F1B280();
      sub_1B1F1B280();
    }

    v28 = v33;
  }

  (*(v28 + 8))(v3, v27);
  (*(v21 + 8))(v2, v19);
  OUTLINED_FUNCTION_35();
}

unint64_t sub_1B1E693DC()
{
  result = qword_1EB785B28;
  if (!qword_1EB785B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785B28);
  }

  return result;
}

unint64_t sub_1B1E69430()
{
  result = qword_1EB785B30;
  if (!qword_1EB785B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785B30);
  }

  return result;
}

unint64_t sub_1B1E69484()
{
  result = qword_1EB785B38;
  if (!qword_1EB785B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785B38);
  }

  return result;
}

void VoiceShortcutClientRequest.ToolKit.SyncingRequest.init(from:)()
{
  OUTLINED_FUNCTION_34();
  v71 = v0;
  v3 = v2;
  v69 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B40, &qword_1B1F33BE8);
  v66 = OUTLINED_FUNCTION_0(v5);
  v67 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19_8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B48, &qword_1B1F33BF0);
  OUTLINED_FUNCTION_0(v10);
  v68 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_38_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B50, &unk_1B1F33BF8);
  OUTLINED_FUNCTION_0(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v62 - v21;
  v23 = v3[3];
  v24 = v3[4];
  v70 = v3;
  __swift_project_boxed_opaque_existential_0(v3, v23);
  sub_1B1E693DC();
  v25 = v71;
  sub_1B1F1B810();
  if (v25)
  {
    goto LABEL_9;
  }

  v65 = v1;
  v26 = v69;
  v71 = v17;
  v27 = sub_1B1F1B210();
  sub_1B1E32BFC(v27, 0);
  if (v29 == v28 >> 1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_40();
  v64 = 0;
  if (v33 < (v32 >> 1))
  {
    v63 = *(v31 + v30);
    sub_1B1E32BF8(v30 + 1);
    v35 = v34;
    v37 = v36;
    swift_unknownObjectRelease();
    if (v35 == v37 >> 1)
    {
      if (v63)
      {
        sub_1B1E69430();
        v38 = v64;
        sub_1B1F1B180();
        if (v38)
        {
LABEL_7:
          v39 = OUTLINED_FUNCTION_3_13();
          v40(v39);
          swift_unknownObjectRelease();
LABEL_9:
          __swift_destroy_boxed_opaque_existential_1(v70);
LABEL_10:
          OUTLINED_FUNCTION_35();
          return;
        }

        v46 = sub_1B1F1B1D0();
        swift_unknownObjectRelease();
        v47 = *(v67 + 8);
        v48 = OUTLINED_FUNCTION_12_1();
        v49(v48);
        v50 = OUTLINED_FUNCTION_3_13();
        v51(v50);
        v52 = 0;
        v53 = v46 & 1;
        v54 = 0x8000;
      }

      else
      {
        sub_1B1E69484();
        v45 = v64;
        sub_1B1F1B180();
        if (v45)
        {
          goto LABEL_7;
        }

        OUTLINED_FUNCTION_10_8();
        v66 = sub_1B1F1B1A0();
        v67 = v55;
        OUTLINED_FUNCTION_32_5();
        OUTLINED_FUNCTION_10_8();
        LODWORD(v64) = sub_1B1F1B1D0();
        OUTLINED_FUNCTION_10_8();
        v56 = sub_1B1F1B1D0();
        swift_unknownObjectRelease();
        v57 = OUTLINED_FUNCTION_31_4();
        v58(v57);
        v59 = OUTLINED_FUNCTION_3_13();
        v60(v59);
        if (v56)
        {
          v61 = 256;
        }

        else
        {
          v61 = 0;
        }

        v54 = v61 & 0xFFFE | v64 & 1;
        v53 = v66;
        v52 = v67;
      }

      *v26 = v53;
      *(v26 + 8) = v52;
      *(v26 + 16) = v54;
      __swift_destroy_boxed_opaque_existential_1(v70);
      goto LABEL_10;
    }

LABEL_8:
    v41 = sub_1B1F1AFE0();
    OUTLINED_FUNCTION_18();
    swift_allocError();
    v43 = v42;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0) + 48);
    *v43 = &type metadata for VoiceShortcutClientRequest.ToolKit.SyncingRequest;
    sub_1B1F1B190();
    OUTLINED_FUNCTION_15_8();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v41);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v71 + 8))(v22, v15);
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1B1E69A74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x54676E6974697277 && a2 == 0xEC000000736C6F6FLL;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C65646F4D657375 && a2 == 0xE800000000000000;
    if (v6 || (sub_1B1F1B510() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x654D736F746F6870 && a2 == 0xEE00736569726F6DLL;
      if (v7 || (sub_1B1F1B510() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x616C506567616D69 && a2 == 0xEF646E756F726779;
        if (v8 || (sub_1B1F1B510() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000018 && 0x80000001B1F397A0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1B1F1B510();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1B1E69C30(char a1)
{
  result = 0x54676E6974697277;
  switch(a1)
  {
    case 1:
      result = 0x6C65646F4D657375;
      break;
    case 2:
      result = 0x654D736F746F6870;
      break;
    case 3:
      result = 0x616C506567616D69;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B1E69CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E69A74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E69D20(uint64_t a1)
{
  v2 = sub_1B1E6C700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E69D5C(uint64_t a1)
{
  v2 = sub_1B1E6C700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E69D98(uint64_t a1)
{
  v2 = sub_1B1E6C7A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E69DD4(uint64_t a1)
{
  v2 = sub_1B1E6C7A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E69E10(uint64_t a1)
{
  v2 = sub_1B1E6C7FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E69E4C(uint64_t a1)
{
  v2 = sub_1B1E6C7FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E69E88(uint64_t a1)
{
  v2 = sub_1B1E6C850();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E69EC4(uint64_t a1)
{
  v2 = sub_1B1E6C850();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E69F00(uint64_t a1)
{
  v2 = sub_1B1E6C754();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E69F3C(uint64_t a1)
{
  v2 = sub_1B1E6C754();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E69F78(uint64_t a1)
{
  v2 = sub_1B1E6C8A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E69FB4(uint64_t a1)
{
  v2 = sub_1B1E6C8A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VoiceShortcutClientRequest.ToolKit.ActionAvailabilityRequest.encode(to:)()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B58, &qword_1B1F33C08);
  v5 = OUTLINED_FUNCTION_0(v4);
  v65 = v6;
  v66 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v64 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B60, &qword_1B1F33C10);
  v12 = OUTLINED_FUNCTION_0(v11);
  v62 = v13;
  v63 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17();
  v61 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B68, &qword_1B1F33C18);
  v19 = OUTLINED_FUNCTION_0(v18);
  v59 = v20;
  v60 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_17();
  v58 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B70, &qword_1B1F33C20);
  v26 = OUTLINED_FUNCTION_0(v25);
  v56 = v27;
  v57 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_17();
  v55 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B78, &qword_1B1F33C28);
  v33 = OUTLINED_FUNCTION_0(v32);
  v53 = v34;
  v54 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v52 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B80, &qword_1B1F33C30);
  OUTLINED_FUNCTION_0(v40);
  v42 = v41;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_60();
  v46 = *v0;
  v47 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v3[3]);
  sub_1B1E6C700();
  sub_1B1F1B830();
  v48 = (v42 + 8);
  switch(v46)
  {
    case 1:
      OUTLINED_FUNCTION_32_5();
      sub_1B1E6C850();
      v49 = v55;
      OUTLINED_FUNCTION_4_12();
      v51 = v56;
      v50 = v57;
      goto LABEL_7;
    case 2:
      sub_1B1E6C7FC();
      v49 = v58;
      OUTLINED_FUNCTION_4_12();
      v51 = v59;
      v50 = v60;
      goto LABEL_7;
    case 3:
      sub_1B1E6C7A8();
      v49 = v61;
      OUTLINED_FUNCTION_4_12();
      v51 = v62;
      v50 = v63;
      goto LABEL_7;
    case 4:
      sub_1B1E6C754();
      v49 = v64;
      OUTLINED_FUNCTION_4_12();
      v51 = v65;
      v50 = v66;
LABEL_7:
      (*(v51 + 8))(v49, v50);
      break;
    default:
      sub_1B1E6C8A4();
      sub_1B1F1B240();
      (*(v53 + 8))(v39, v54);
      break;
  }

  (*v48)(v1, v40);
  OUTLINED_FUNCTION_35();
}

uint64_t VoiceShortcutClientRequest.ToolKit.ActionAvailabilityRequest.hashValue.getter()
{
  v1 = *v0;
  sub_1B1F1B7C0();
  MEMORY[0x1B273E060](v1);
  return sub_1B1F1B7F0();
}

void VoiceShortcutClientRequest.ToolKit.ActionAvailabilityRequest.init(from:)()
{
  OUTLINED_FUNCTION_34();
  v88 = v0;
  v4 = v3;
  v84 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785BB8, &qword_1B1F33C38);
  v81 = OUTLINED_FUNCTION_0(v6);
  v82 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  v87 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785BC0, &qword_1B1F33C40);
  v79 = OUTLINED_FUNCTION_0(v12);
  v80 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17();
  v86 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785BC8, &qword_1B1F33C48);
  v19 = OUTLINED_FUNCTION_0(v18);
  v77 = v20;
  v78 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_17();
  v83 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785BD0, &qword_1B1F33C50);
  v26 = OUTLINED_FUNCTION_0(v25);
  v75 = v27;
  v76 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_60();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785BD8, &qword_1B1F33C58);
  OUTLINED_FUNCTION_0(v31);
  v74 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_19_8();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785BE0, &qword_1B1F33C60);
  OUTLINED_FUNCTION_0(v36);
  v85 = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v69 - v41;
  v43 = v4[4];
  __swift_project_boxed_opaque_existential_0(v4, v4[3]);
  sub_1B1E6C700();
  v44 = v88;
  sub_1B1F1B810();
  if (v44)
  {
    goto LABEL_10;
  }

  v72 = v31;
  v73 = v1;
  v88 = v2;
  v45 = v87;
  v46 = v42;
  v47 = sub_1B1F1B210();
  sub_1B1E32BFC(v47, 0);
  if (v49 == v48 >> 1)
  {
    v50 = v85;
LABEL_9:
    v65 = sub_1B1F1AFE0();
    OUTLINED_FUNCTION_18();
    swift_allocError();
    v67 = v66;
    v68 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0) + 48);
    *v67 = &type metadata for VoiceShortcutClientRequest.ToolKit.ActionAvailabilityRequest;
    sub_1B1F1B190();
    OUTLINED_FUNCTION_15_8();
    (*(*(v65 - 8) + 104))(v67, *MEMORY[0x1E69E6AF8], v65);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v50 + 8))(v46, v36);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v4);
LABEL_11:
    OUTLINED_FUNCTION_35();
    return;
  }

  OUTLINED_FUNCTION_40();
  if (v54 < (v53 >> 1))
  {
    v70 = *(v52 + v51);
    v55 = sub_1B1E32BF8(v51 + 1);
    v57 = v56;
    v59 = v58;
    swift_unknownObjectRelease();
    v71 = v55;
    if (v57 == v59 >> 1)
    {
      v60 = v84;
      v61 = v85;
      switch(v70)
      {
        case 1:
          OUTLINED_FUNCTION_32_5();
          sub_1B1E6C850();
          OUTLINED_FUNCTION_2_17();
          swift_unknownObjectRelease();
          goto LABEL_16;
        case 2:
          sub_1B1E6C7FC();
          OUTLINED_FUNCTION_2_17();
          swift_unknownObjectRelease();
          goto LABEL_16;
        case 3:
          sub_1B1E6C7A8();
          OUTLINED_FUNCTION_2_17();
          swift_unknownObjectRelease();
LABEL_16:
          v62 = OUTLINED_FUNCTION_47();
          goto LABEL_17;
        case 4:
          sub_1B1E6C754();
          OUTLINED_FUNCTION_10_8();
          sub_1B1F1B180();
          swift_unknownObjectRelease();
          (*(v82 + 8))(v45, v81);
          goto LABEL_18;
        default:
          sub_1B1E6C8A4();
          OUTLINED_FUNCTION_2_17();
          swift_unknownObjectRelease();
          v62 = OUTLINED_FUNCTION_47();
          v64 = v72;
LABEL_17:
          v63(v62, v64);
LABEL_18:
          (*(v61 + 8))(v55, v36);
          *v60 = v70;
          __swift_destroy_boxed_opaque_existential_1(v4);
          break;
      }

      goto LABEL_11;
    }

    v50 = v85;
    v46 = v42;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1B1E6AAD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E697865646E69 && a2 == 0xEF74736575716552;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x52676E69636E7973 && a2 == 0xEE00747365757165;
    if (v6 || (sub_1B1F1B510() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000019 && 0x80000001B1F397C0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B1F1B510();

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

uint64_t sub_1B1E6ABFC(char a1)
{
  if (!a1)
  {
    return 0x676E697865646E69;
  }

  if (a1 == 1)
  {
    return 0x52676E69636E7973;
  }

  return 0xD000000000000019;
}

uint64_t sub_1B1E6ACAC(uint64_t a1)
{
  v2 = sub_1B1E6C94C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E6ACE8(uint64_t a1)
{
  v2 = sub_1B1E6C94C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E6AD2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E6AAD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E6AD54(uint64_t a1)
{
  v2 = sub_1B1E6C8F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E6AD90(uint64_t a1)
{
  v2 = sub_1B1E6C8F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E6ADCC(uint64_t a1)
{
  v2 = sub_1B1E6CA9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E6AE08(uint64_t a1)
{
  v2 = sub_1B1E6CA9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E6AE44(uint64_t a1)
{
  v2 = sub_1B1E6C9F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E6AE80(uint64_t a1)
{
  v2 = sub_1B1E6C9F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void VoiceShortcutClientRequest.ToolKit.encode(to:)()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785BE8, &qword_1B1F33C68);
  v4 = OUTLINED_FUNCTION_0(v3);
  v49 = v5;
  v50 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  v48 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785BF0, &qword_1B1F33C70);
  v11 = OUTLINED_FUNCTION_0(v10);
  v46 = v12;
  v47 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785BF8, &qword_1B1F33C78);
  OUTLINED_FUNCTION_0(v18);
  v45 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v43 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785C00, &qword_1B1F33C80);
  v26 = OUTLINED_FUNCTION_0(v25);
  v52 = v27;
  v53 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v30);
  v31 = v0[1];
  v51 = *v0;
  v44 = v31;
  v32 = *(v0 + 8);
  v33 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  sub_1B1E6C8F8();
  sub_1B1F1B830();
  v34 = (v32 >> 13) & 3;
  if (v34)
  {
    if (v34 != 1)
    {
      LOBYTE(v54) = 2;
      sub_1B1E6C94C();
      v40 = v48;
      v41 = v53;
      sub_1B1F1B240();
      LOBYTE(v54) = v51;
      sub_1B1E6C9A0();
      v42 = v50;
      sub_1B1F1B2B0();
      (*(v49 + 8))(v40, v42);
      v37 = OUTLINED_FUNCTION_47();
      v39 = v41;
      goto LABEL_7;
    }

    LOBYTE(v54) = 1;
    sub_1B1E6C9F4();
    v35 = v53;
    OUTLINED_FUNCTION_24_6();
    sub_1B1F1B240();
    v54 = v51;
    v55 = v44;
    v56 = v32 & 0x9FFF;
    sub_1B1E6CA48();
    v36 = v47;
    sub_1B1F1B2B0();
    (*(v46 + 8))(v17, v36);
  }

  else
  {
    LOBYTE(v54) = 0;
    sub_1B1E6CA9C();
    v35 = v53;
    OUTLINED_FUNCTION_24_6();
    sub_1B1F1B240();
    v54 = v51;
    type metadata accessor for ToolKitIndexingRequest(0);
    sub_1B1E6CB98(&unk_1EB783390);
    sub_1B1F1B2B0();
    (*(v45 + 8))(v24, v18);
  }

  v37 = OUTLINED_FUNCTION_47();
  v39 = v35;
LABEL_7:
  v38(v37, v39);
  OUTLINED_FUNCTION_35();
}

void VoiceShortcutClientRequest.ToolKit.init(from:)()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  v80 = v4;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785C38, &qword_1B1F33C88);
  OUTLINED_FUNCTION_0(v83);
  v79 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  v82 = v9;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785C40, &qword_1B1F33C90);
  OUTLINED_FUNCTION_0(v78);
  v81 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_60();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785C48, &qword_1B1F33C98);
  OUTLINED_FUNCTION_0(v14);
  v77 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v74 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785C50, &qword_1B1F33CA0);
  OUTLINED_FUNCTION_0(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_38_1();
  v25 = v3[3];
  v26 = v3[4];
  v84 = v3;
  v27 = OUTLINED_FUNCTION_12_1();
  __swift_project_boxed_opaque_existential_0(v27, v28);
  sub_1B1E6C8F8();
  sub_1B1F1B810();
  if (v0)
  {
    goto LABEL_11;
  }

  v74 = v14;
  v75 = v20;
  v76 = 0;
  v29 = v83;
  v30 = sub_1B1F1B210();
  sub_1B1E32BFC(v30, 0);
  v32 = v21;
  if (v33 == v31 >> 1)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_40();
  if (v37 < (v36 >> 1))
  {
    v38 = v21;
    v39 = *(v35 + v34);
    v40 = sub_1B1E32BF8(v34 + 1);
    v42 = v41;
    v44 = v43;
    swift_unknownObjectRelease();
    v45 = v42 == v44 >> 1;
    v46 = v81;
    if (!v45)
    {
      v32 = v38;
LABEL_10:
      v50 = sub_1B1F1AFE0();
      OUTLINED_FUNCTION_18();
      swift_allocError();
      v52 = v51;
      v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0) + 48);
      *v52 = &type metadata for VoiceShortcutClientRequest.ToolKit;
      sub_1B1F1B190();
      OUTLINED_FUNCTION_15_8();
      (*(*(v50 - 8) + 104))(v52, *MEMORY[0x1E69E6AF8], v50);
      swift_willThrow();
      swift_unknownObjectRelease();
      v54 = OUTLINED_FUNCTION_8_10();
      v55(v54, v32);
LABEL_11:
      v56 = v84;
LABEL_12:
      __swift_destroy_boxed_opaque_existential_1(v56);
      OUTLINED_FUNCTION_35();
      return;
    }

    if (v39)
    {
      if (v39 == 1)
      {
        LOBYTE(v85) = 1;
        sub_1B1E6C9F4();
        OUTLINED_FUNCTION_16_9();
        v47 = v76;
        sub_1B1F1B180();
        v48 = v80;
        if (!v47)
        {
          sub_1B1E6CB44();
          v49 = v78;
          OUTLINED_FUNCTION_24_6();
          sub_1B1F1B200();
          swift_unknownObjectRelease();
          (*(v46 + 8))(v1, v49);
          v63 = OUTLINED_FUNCTION_8_10();
          v64(v63, v38);
          v66 = v85;
          v65 = v86;
          v67 = v87 | 0x2000;
LABEL_18:
          v56 = v84;
          goto LABEL_19;
        }
      }

      else
      {
        LOBYTE(v85) = 2;
        sub_1B1E6C94C();
        OUTLINED_FUNCTION_16_9();
        v60 = v76;
        sub_1B1F1B180();
        v48 = v80;
        if (!v60)
        {
          v81 = v40;
          sub_1B1E6CAF0();
          OUTLINED_FUNCTION_24_6();
          sub_1B1F1B200();
          swift_unknownObjectRelease();
          v70 = OUTLINED_FUNCTION_47();
          v71(v70, v29);
          v72 = OUTLINED_FUNCTION_22_6();
          v73(v72);
          v65 = 0;
          v66 = v85;
          v67 = 0x4000;
          goto LABEL_18;
        }
      }
    }

    else
    {
      LOBYTE(v85) = 0;
      sub_1B1E6CA9C();
      v58 = v75;
      v57 = v76;
      OUTLINED_FUNCTION_16_9();
      sub_1B1F1B180();
      if (!v57)
      {
        type metadata accessor for ToolKitIndexingRequest(0);
        sub_1B1E6CB98(&unk_1EB783380);
        v59 = v74;
        sub_1B1F1B200();
        swift_unknownObjectRelease();
        (*(v77 + 8))(v58, v59);
        v68 = OUTLINED_FUNCTION_22_6();
        v69(v68);
        v65 = 0;
        v67 = 0;
        v56 = v84;
        v66 = v85;
        v48 = v80;
LABEL_19:
        *v48 = v66;
        *(v48 + 8) = v65;
        *(v48 + 16) = v67;
        goto LABEL_12;
      }
    }

    v61 = OUTLINED_FUNCTION_8_10();
    v62(v61, v38);
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t VCVoiceShortcutClient.reindexToolKitDatabase(request:)()
{
  OUTLINED_FUNCTION_1();
  v1[9] = v2;
  v1[10] = v0;
  v3 = type metadata accessor for VoiceShortcutClientRequest();
  v1[11] = v3;
  v4 = *(*(v3 - 8) + 64);
  v1[12] = OUTLINED_FUNCTION_9();
  v5 = sub_1B1F1A640();
  v1[13] = v5;
  OUTLINED_FUNCTION_6_0(v5);
  v1[14] = v6;
  v8 = *(v7 + 64);
  v1[15] = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B1E6BA50()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  *(v0 + 144) = 1;
  *v1 = v3;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  v4 = v3;
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_24_8(v5);

  return sub_1B1E1978C(v6, (v0 + 144), v7);
}

uint64_t sub_1B1E6BB14()
{
  OUTLINED_FUNCTION_1();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_4();
  *v7 = v6;
  *(v2 + 136) = v0;

  sub_1B1E04AB4(*(v2 + 96));
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1B1E6BC28()
{
  v1 = v0[17];
  v2 = v0[15];
  sub_1B1E18F74();
  sub_1B1F1A630();
  if (v1)
  {
    v3 = OUTLINED_FUNCTION_33_4();
    v4(v3);
LABEL_5:
    v11 = v0[15];
    v12 = v0[12];

    OUTLINED_FUNCTION_2_0();
    goto LABEL_6;
  }

  v6 = v0[14];
  v5 = v0[15];
  if (v0[4])
  {
    OUTLINED_FUNCTION_27_1();
    OUTLINED_FUNCTION_18();
    v7 = swift_allocError();
    OUTLINED_FUNCTION_22_2(v7, v8);
    OUTLINED_FUNCTION_18();
    v9 = swift_allocError();
    OUTLINED_FUNCTION_21_2(v9, v10);
    (*(v6 + 8))();
    goto LABEL_5;
  }

  v15 = v0[12];
  (*(v6 + 8))(v0[15], v0[13]);

  OUTLINED_FUNCTION_2_0();
LABEL_6:

  return v13();
}

uint64_t VCVoiceShortcutClient.checkActionAvailability(request:)()
{
  OUTLINED_FUNCTION_1();
  v3 = v2;
  *(v1 + 80) = v0;
  v4 = type metadata accessor for VoiceShortcutClientRequest();
  *(v1 + 88) = v4;
  v5 = *(*(v4 - 8) + 64);
  *(v1 + 96) = OUTLINED_FUNCTION_9();
  v6 = sub_1B1F1A640();
  *(v1 + 104) = v6;
  OUTLINED_FUNCTION_6_0(v6);
  *(v1 + 112) = v7;
  v9 = *(v8 + 64);
  *(v1 + 120) = OUTLINED_FUNCTION_9();
  *(v1 + 74) = *v3;
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B1E6BE58()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 74);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  *(v0 + 73) = 1;
  *v2 = v1;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0x4000;
  swift_storeEnumTagMultiPayload();
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_24_8(v4);

  return sub_1B1E1978C(v5, (v0 + 73), v6);
}

uint64_t sub_1B1E6BF0C()
{
  OUTLINED_FUNCTION_1();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_4();
  *v7 = v6;
  *(v2 + 136) = v0;

  sub_1B1E04AB4(*(v2 + 96));
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1B1E6C020()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785C68, &qword_1B1F33CB8);
  sub_1B1E6CBDC();
  sub_1B1F1A630();
  if (v1)
  {
    v3 = OUTLINED_FUNCTION_33_4();
    v4(v3);
LABEL_5:
    v19 = *(v0 + 120);
    v20 = *(v0 + 96);

    v21 = *(v0 + 8);
    v22 = 0;
    goto LABEL_6;
  }

  v5 = *(v0 + 16);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v8 = *(v0 + 104);
  if (*(v0 + 72))
  {
    v9 = *(v0 + 17);
    v30 = *(v0 + 64);
    v10 = *(v0 + 56);
    v28 = *(v0 + 24);
    v29 = *(v0 + 40);
    v11 = *(v0 + 21);
    v12 = *(v0 + 23);
    sub_1B1E04B74();
    OUTLINED_FUNCTION_18();
    swift_allocError();
    *v13 = v5;
    *(v13 + 7) = v12;
    *(v13 + 5) = v11;
    *(v13 + 1) = v9;
    *(v13 + 8) = v28;
    *(v13 + 24) = v29;
    *(v13 + 40) = v10;
    *(v13 + 48) = v30;
    sub_1B1E04BC8();
    OUTLINED_FUNCTION_18();
    v14 = swift_allocError();
    OUTLINED_FUNCTION_21_2(v14, v15);
    v16 = *(v7 + 8);
    v17 = OUTLINED_FUNCTION_12_1();
    v18(v17);
    goto LABEL_5;
  }

  v24 = *(v0 + 96);
  v25 = *(v7 + 8);
  v26 = OUTLINED_FUNCTION_12_1();
  v27(v26);

  v21 = *(v0 + 8);
  v22 = v5 & 1;
LABEL_6:

  return v21(v22);
}

uint64_t sub_1B1E6C1EC()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[12];

  v4 = v0[1];

  return v4(0);
}

uint64_t VCVoiceShortcutClient.performToolDatabaseSync(request:)()
{
  OUTLINED_FUNCTION_1();
  v3 = v2;
  *(v1 + 72) = v0;
  v4 = type metadata accessor for VoiceShortcutClientRequest();
  *(v1 + 80) = v4;
  v5 = *(*(v4 - 8) + 64);
  *(v1 + 88) = OUTLINED_FUNCTION_9();
  v6 = sub_1B1F1A640();
  *(v1 + 96) = v6;
  OUTLINED_FUNCTION_6_0(v6);
  *(v1 + 104) = v7;
  v9 = *(v8 + 64);
  *(v1 + 112) = OUTLINED_FUNCTION_9();
  *(v1 + 120) = *v3;
  *(v1 + 152) = *(v3 + 16);
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B1E6C340()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  *(v0 + 154) = 1;
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 152);
  *v3 = v1;
  *(v3 + 8) = v2;
  *(v3 + 16) = v5 | 0x2000;
  swift_storeEnumTagMultiPayload();
  sub_1B1E6CC40(v1, v2, v5);
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *v6 = v0;
  v6[1] = sub_1B1E6C424;
  v7 = *(v0 + 112);
  v8 = *(v0 + 88);
  v9 = *(v0 + 72);

  return sub_1B1E1978C(v7, (v0 + 154), v8);
}

uint64_t sub_1B1E6C424()
{
  OUTLINED_FUNCTION_1();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_4();
  *v7 = v6;
  *(v2 + 144) = v0;

  sub_1B1E04AB4(*(v2 + 88));
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1B1E6C538()
{
  v1 = v0[18];
  v2 = v0[14];
  sub_1B1E18F74();
  sub_1B1F1A630();
  if (v1)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);
LABEL_5:
    v9 = v0[14];
    v10 = v0[11];

    OUTLINED_FUNCTION_2_0();
    goto LABEL_6;
  }

  v4 = v0[13];
  v3 = v0[14];
  if (v0[4])
  {
    OUTLINED_FUNCTION_27_1();
    OUTLINED_FUNCTION_18();
    v5 = swift_allocError();
    OUTLINED_FUNCTION_22_2(v5, v6);
    OUTLINED_FUNCTION_18();
    v7 = swift_allocError();
    OUTLINED_FUNCTION_21_2(v7, v8);
    (*(v4 + 8))();
    goto LABEL_5;
  }

  v13 = v0[11];
  (*(v4 + 8))(v0[14], v0[12]);

  OUTLINED_FUNCTION_2_0();
LABEL_6:

  return v11();
}

uint64_t sub_1B1E6C698()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[11];

  OUTLINED_FUNCTION_2_0();

  return v4();
}

unint64_t sub_1B1E6C700()
{
  result = qword_1EB785B88;
  if (!qword_1EB785B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785B88);
  }

  return result;
}

unint64_t sub_1B1E6C754()
{
  result = qword_1EB785B90;
  if (!qword_1EB785B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785B90);
  }

  return result;
}

unint64_t sub_1B1E6C7A8()
{
  result = qword_1EB785B98;
  if (!qword_1EB785B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785B98);
  }

  return result;
}

unint64_t sub_1B1E6C7FC()
{
  result = qword_1EB785BA0;
  if (!qword_1EB785BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785BA0);
  }

  return result;
}

unint64_t sub_1B1E6C850()
{
  result = qword_1EB785BA8;
  if (!qword_1EB785BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785BA8);
  }

  return result;
}

unint64_t sub_1B1E6C8A4()
{
  result = qword_1EB785BB0;
  if (!qword_1EB785BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785BB0);
  }

  return result;
}

unint64_t sub_1B1E6C8F8()
{
  result = qword_1EB785C08;
  if (!qword_1EB785C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785C08);
  }

  return result;
}

unint64_t sub_1B1E6C94C()
{
  result = qword_1EB785C10;
  if (!qword_1EB785C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785C10);
  }

  return result;
}

unint64_t sub_1B1E6C9A0()
{
  result = qword_1EB785C18;
  if (!qword_1EB785C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785C18);
  }

  return result;
}

unint64_t sub_1B1E6C9F4()
{
  result = qword_1EB785C20;
  if (!qword_1EB785C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785C20);
  }

  return result;
}

unint64_t sub_1B1E6CA48()
{
  result = qword_1EB785C28;
  if (!qword_1EB785C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785C28);
  }

  return result;
}

unint64_t sub_1B1E6CA9C()
{
  result = qword_1EB785C30;
  if (!qword_1EB785C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785C30);
  }

  return result;
}

unint64_t sub_1B1E6CAF0()
{
  result = qword_1EB785C58;
  if (!qword_1EB785C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785C58);
  }

  return result;
}

unint64_t sub_1B1E6CB44()
{
  result = qword_1EB785C60;
  if (!qword_1EB785C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785C60);
  }

  return result;
}

uint64_t sub_1B1E6CB98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ToolKitIndexingRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B1E6CBDC()
{
  result = qword_1EB785C70;
  if (!qword_1EB785C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB785C68, &qword_1B1F33CB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785C70);
  }

  return result;
}

uint64_t sub_1B1E6CC40(uint64_t a1, uint64_t a2, __int16 a3)
{
  if ((a3 & 0x8000) == 0)
  {
    return sub_1B1F1A760();
  }

  return result;
}

unint64_t sub_1B1E6CC54()
{
  result = qword_1EB785C78;
  if (!qword_1EB785C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785C78);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B1E6CCD4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >> 1 >= 0xFFF && *(a1 + 18))
    {
      v2 = *a1 + 8189;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 13) & 3 | (4 * ((*(a1 + 16) >> 2) & 0x780 | (*(a1 + 16) >> 1)))) ^ 0x1FFF;
      if (v2 >= 0x1FFD)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1B1E6CD30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >> 1 > 0xFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 8190;
    *(result + 8) = 0;
    if (a3 >> 1 >= 0xFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >> 1 >= 0xFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 2) & 0x7FF) - (a2 << 11);
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (4 * v3) & 0x7E00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_1B1E6CDD0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFF && *(a1 + 18))
    {
      v2 = *a1 + 16382;
    }

    else
    {
      v2 = (*(a1 + 16) & 0xFE | (*(a1 + 16) >> 15) | (*(a1 + 16) >> 1) & 0x3F00) ^ 0x3FFF;
      if (v2 >= 0x3FFE)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1B1E6CE30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 1) & 0x1FFF) - (a2 << 13);
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

_BYTE *sub_1B1E6CF18(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s7ToolKitO14SyncingRequestO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1B1E6D120(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1B1E6D1FC(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B1E6D2AC()
{
  result = qword_1EB785C80;
  if (!qword_1EB785C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785C80);
  }

  return result;
}

unint64_t sub_1B1E6D304()
{
  result = qword_1EB785C88;
  if (!qword_1EB785C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785C88);
  }

  return result;
}

unint64_t sub_1B1E6D35C()
{
  result = qword_1EB785C90;
  if (!qword_1EB785C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785C90);
  }

  return result;
}

unint64_t sub_1B1E6D3B4()
{
  result = qword_1EB785C98;
  if (!qword_1EB785C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785C98);
  }

  return result;
}

unint64_t sub_1B1E6D40C()
{
  result = qword_1EB785CA0;
  if (!qword_1EB785CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785CA0);
  }

  return result;
}

unint64_t sub_1B1E6D464()
{
  result = qword_1EB785CA8;
  if (!qword_1EB785CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785CA8);
  }

  return result;
}

unint64_t sub_1B1E6D4BC()
{
  result = qword_1EB785CB0;
  if (!qword_1EB785CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785CB0);
  }

  return result;
}

unint64_t sub_1B1E6D514()
{
  result = qword_1EB785CB8;
  if (!qword_1EB785CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785CB8);
  }

  return result;
}

unint64_t sub_1B1E6D56C()
{
  result = qword_1EB785CC0;
  if (!qword_1EB785CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785CC0);
  }

  return result;
}

unint64_t sub_1B1E6D5C4()
{
  result = qword_1EB785CC8;
  if (!qword_1EB785CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785CC8);
  }

  return result;
}

unint64_t sub_1B1E6D61C()
{
  result = qword_1EB785CD0;
  if (!qword_1EB785CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785CD0);
  }

  return result;
}

unint64_t sub_1B1E6D674()
{
  result = qword_1EB785CD8;
  if (!qword_1EB785CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785CD8);
  }

  return result;
}

unint64_t sub_1B1E6D6CC()
{
  result = qword_1EB785CE0;
  if (!qword_1EB785CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785CE0);
  }

  return result;
}

unint64_t sub_1B1E6D724()
{
  result = qword_1EB785CE8;
  if (!qword_1EB785CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785CE8);
  }

  return result;
}

unint64_t sub_1B1E6D77C()
{
  result = qword_1EB785CF0;
  if (!qword_1EB785CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785CF0);
  }

  return result;
}

unint64_t sub_1B1E6D7D4()
{
  result = qword_1EB785CF8;
  if (!qword_1EB785CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785CF8);
  }

  return result;
}

unint64_t sub_1B1E6D82C()
{
  result = qword_1EB785D00;
  if (!qword_1EB785D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D00);
  }

  return result;
}

unint64_t sub_1B1E6D884()
{
  result = qword_1EB785D08;
  if (!qword_1EB785D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D08);
  }

  return result;
}

unint64_t sub_1B1E6D8DC()
{
  result = qword_1EB785D10;
  if (!qword_1EB785D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D10);
  }

  return result;
}

unint64_t sub_1B1E6D934()
{
  result = qword_1EB785D18;
  if (!qword_1EB785D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D18);
  }

  return result;
}

unint64_t sub_1B1E6D98C()
{
  result = qword_1EB785D20;
  if (!qword_1EB785D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D20);
  }

  return result;
}

unint64_t sub_1B1E6D9E4()
{
  result = qword_1EB785D28;
  if (!qword_1EB785D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D28);
  }

  return result;
}

unint64_t sub_1B1E6DA3C()
{
  result = qword_1EB785D30;
  if (!qword_1EB785D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D30);
  }

  return result;
}

unint64_t sub_1B1E6DA94()
{
  result = qword_1EB785D38;
  if (!qword_1EB785D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D38);
  }

  return result;
}

unint64_t sub_1B1E6DAEC()
{
  result = qword_1EB785D40;
  if (!qword_1EB785D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D40);
  }

  return result;
}

unint64_t sub_1B1E6DB44()
{
  result = qword_1EB785D48;
  if (!qword_1EB785D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D48);
  }

  return result;
}

unint64_t sub_1B1E6DB9C()
{
  result = qword_1EB785D50;
  if (!qword_1EB785D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D50);
  }

  return result;
}

unint64_t sub_1B1E6DBF4()
{
  result = qword_1EB785D58;
  if (!qword_1EB785D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D58);
  }

  return result;
}

unint64_t sub_1B1E6DC4C()
{
  result = qword_1EB785D60;
  if (!qword_1EB785D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D60);
  }

  return result;
}

unint64_t sub_1B1E6DCA4()
{
  result = qword_1EB785D68;
  if (!qword_1EB785D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D68);
  }

  return result;
}

unint64_t sub_1B1E6DCFC()
{
  result = qword_1EB785D70;
  if (!qword_1EB785D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D70);
  }

  return result;
}

unint64_t sub_1B1E6DD54()
{
  result = qword_1EB785D78;
  if (!qword_1EB785D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D78);
  }

  return result;
}

unint64_t sub_1B1E6DDAC()
{
  result = qword_1EB785D80;
  if (!qword_1EB785D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D80);
  }

  return result;
}

unint64_t sub_1B1E6DE04()
{
  result = qword_1EB785D88;
  if (!qword_1EB785D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D88);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_24_8(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = v2[15];
  v4 = v2[12];
  v5 = v2[10];
  return result;
}

uint64_t OUTLINED_FUNCTION_33_4()
{
  result = v0[15];
  v2 = v0[13];
  v3 = *(v0[14] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_35_2()
{

  return sub_1B1F1B240();
}

uint64_t Collection<>.take(upTo:)(uint64_t a1, char a2)
{
  result = sub_1B1F1AC90();
  if (a2)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      return sub_1B1F1ACD0();
    }

    __break(1u);
  }

  else
  {
    if (result >= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      return sub_1B1F1ACD0();
    }
  }

  __break(1u);
  return result;
}

uint64_t XPCDarwinNotificationEventStream.Event.name.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B1F1A760();
  return v1;
}

BOOL sub_1B1E6DFA4()
{
  v0 = sub_1B1F1B160();

  return v0 != 0;
}

BOOL sub_1B1E6DFF8@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B1E6DFA4();
  *a2 = result;
  return result;
}

void sub_1B1E6E02C(uint64_t a1@<X8>)
{
  strcpy(a1, "Notification");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

BOOL sub_1B1E6E070@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1B1E6DFA4();
  *a1 = result;
  return result;
}

uint64_t sub_1B1E6E09C(uint64_t a1)
{
  v2 = sub_1B1E6E290();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E6E0D8(uint64_t a1)
{
  v2 = sub_1B1E6E290();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t XPCDarwinNotificationEventStream.Event.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785D90, &qword_1B1F34C70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B1E6E290();
  sub_1B1F1B810();
  if (!v2)
  {
    v11 = sub_1B1F1B1C0();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B1E6E290()
{
  result = qword_1ED84EB70;
  if (!qword_1ED84EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EB70);
  }

  return result;
}

unint64_t sub_1B1E6E300(uint64_t a1)
{
  result = sub_1B1E6E328();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B1E6E328()
{
  result = qword_1ED84EB58;
  if (!qword_1ED84EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EB58);
  }

  return result;
}

unint64_t sub_1B1E6E380()
{
  result = qword_1ED84EB50;
  if (!qword_1ED84EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EB50);
  }

  return result;
}

uint64_t sub_1B1E6E400(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

_BYTE *sub_1B1E6E44C(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B1E6E4F8()
{
  result = qword_1EB785D98;
  if (!qword_1EB785D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785D98);
  }

  return result;
}

unint64_t sub_1B1E6E550()
{
  result = qword_1ED84EB60;
  if (!qword_1ED84EB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EB60);
  }

  return result;
}

unint64_t sub_1B1E6E5A8()
{
  result = qword_1ED84EB68;
  if (!qword_1ED84EB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED84EB68);
  }

  return result;
}

uint64_t sub_1B1E6E650(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v38 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  result = sub_1B1F1A760();
  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1B1DF63A0(*(a1 + 56) + 32 * v12, v37);
    *&v36 = v15;
    *(&v36 + 1) = v14;
    v33 = v36;
    v34 = v37[0];
    v35 = v37[1];
    sub_1B1DF63A0(&v34, v30);
    sub_1B1F1A760();
    if (swift_dynamicCast())
    {
      v16 = *(&v31 + 1);
      if (!*(&v31 + 1))
      {
        goto LABEL_17;
      }

      v39 = v31;
      v32[0] = v34;
      v32[1] = v35;
      v31 = v33;
      v17 = *(v2 + 16);
      if (*(v2 + 24) <= v17)
      {
        sub_1B1E7414C(v17 + 1, 1);
        v2 = v38;
      }

      v18 = v31;
      v19 = *(v2 + 40);
      sub_1B1F1B7C0();
      sub_1B1F1A900();
      result = sub_1B1F1B7F0();
      v20 = v2 + 64;
      v21 = -1 << *(v2 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v2 + 64 + 8 * (v22 >> 6))) == 0)
      {
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
          v28 = *(v20 + 8 * v23);
          if (v28 != -1)
          {
            v24 = __clz(__rbit64(~v28)) + (v23 << 6);
            goto LABEL_25;
          }
        }

        goto LABEL_28;
      }

      v24 = __clz(__rbit64((-1 << v22) & ~*(v2 + 64 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(*(v2 + 48) + 16 * v24) = v18;
      v29 = (*(v2 + 56) + 16 * v24);
      *v29 = v39;
      v29[1] = v16;
      ++*(v2 + 16);
      result = __swift_destroy_boxed_opaque_existential_1(v32);
    }

    else
    {
      v31 = 0uLL;
LABEL_17:
      result = sub_1B1E0BDB8(&v33, &qword_1EB785E10, &unk_1B1F2AF80);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1B1E6E914(uint64_t a1)
{
  v3 = type metadata accessor for XPCEncoder();
  swift_allocObject();
  v4 = sub_1B1E11104();
  v13[3] = v3;
  v13[4] = sub_1B1DFA880(&qword_1EB784418, type metadata accessor for XPCEncoder);
  v13[0] = v4;

  v5 = a1;
  sub_1B1E73330(v13);
  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    v6 = sub_1B1E10CB0();
    v8 = v7;
    v10 = v9;
    sub_1B1E0FF58(v6, v7, v9);
    v5 = v11;
    sub_1B1E177B0(v6, v8, v10);
  }

  return v5;
}

xpc_connection_t sub_1B1E6EA2C(uint64_t a1, _xpc_connection_s *a2, dispatch_queue_t targetq)
{
  mach_service = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *name = a1;
      v9 = a2 & 0xFFFFFFFFFFFFFFLL;
      v6 = name;
      goto LABEL_6;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
      mach_service = xpc_connection_create_mach_service(v6, targetq, 0);

      return mach_service;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7843C0, &unk_1B1F33BC0);
  sub_1B1F1AF90();

  if (!v3)
  {
    return v10;
  }

  return mach_service;
}

xpc_connection_t sub_1B1E6EB08(uint64_t a1, _xpc_connection_s *a2, dispatch_queue_t targetq)
{
  v5 = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *name = a1;
      v9 = a2 & 0xFFFFFFFFFFFFFFLL;
      v6 = name;
      goto LABEL_6;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
      v5 = xpc_connection_create(v6, targetq);

      return v5;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7843C0, &unk_1B1F33BC0);
  sub_1B1F1AF90();

  if (!v3)
  {
    return v10;
  }

  return v5;
}

uint64_t sub_1B1E6EBE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

unint64_t XPCConnectionError.errorDescription.getter()
{
  v1 = v0[1];
  result = 0x206E776F6E6B6E55;
  switch(v1)
  {
    case 0:
      result = 0xD000000000000016;
      break;
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      return result;
    default:
      v3 = *v0;
      OUTLINED_FUNCTION_62();
      sub_1B1F1AFA0();

      OUTLINED_FUNCTION_28_6();
      MEMORY[0x1B273D1A0](v3, v1);
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t sub_1B1E6ED4C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  result = sub_1B1E6EE4C();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1B1E75DBC;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_1B1E6EDBC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B1E75DAC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1B1DFB8E8(v3);
  return sub_1B1E6EE94(v6, v5);
}

uint64_t sub_1B1E6EE4C()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = OUTLINED_FUNCTION_6_8();
  sub_1B1DFB8E8(v3);
  return OUTLINED_FUNCTION_6_8();
}

uint64_t sub_1B1E6EE94(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 112);
  v6 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return sub_1B1DEBA94(v5);
}

uint64_t sub_1B1E6EF30@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  result = sub_1B1E6F030();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1B1E748F4;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_1B1E6EFA0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B1E748CC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1B1DFB8E8(v3);
  return sub_1B1E6F078(v6, v5);
}

uint64_t sub_1B1E6F030()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = OUTLINED_FUNCTION_6_8();
  sub_1B1DFB8E8(v3);
  return OUTLINED_FUNCTION_6_8();
}

uint64_t sub_1B1E6F078(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 128);
  v6 = *(v2 + 136);
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return sub_1B1DEBA94(v5);
}

uint64_t sub_1B1E6F114(_xpc_connection_s *a1, void *a2)
{
  *(v2 + 32) = sub_1B1F1A730();
  *(v2 + 40) = sub_1B1F1A730();
  *(v2 + 48) = 0xD000000000000010;
  *(v2 + 56) = 0x80000001B1F39A00;
  *(v2 + 64) = 0xD000000000000010;
  *(v2 + 72) = 0x80000001B1F39A20;
  *(v2 + 80) = 0xD000000000000017;
  *(v2 + 88) = 0x80000001B1F39A40;
  *(v2 + 96) = 0xD000000000000021;
  *(v2 + 104) = 0x80000001B1F39A60;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  v9[4] = sub_1B1E75790;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1B1E6EBE0;
  v9[3] = &block_descriptor_58;
  v6 = _Block_copy(v9);
  swift_unknownObjectRetain_n();
  v7 = a2;

  xpc_connection_set_event_handler(a1, v6);
  _Block_release(v6);
  swift_unknownObjectRelease();

  return v2;
}

void sub_1B1E6F2D4(void *a1, void *a2, _xpc_connection_s *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783E48, &qword_1B1F30630);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v49 - v8;
  v10 = MEMORY[0x1B273FB80](a1);
  if (v10 == sub_1B1F1A550())
  {
    v13 = sub_1B1F1A5A0();
    swift_unknownObjectRelease();
    if (v13 == a1)
    {
      swift_beginAccess();
      v15 = a2[16];
      if (!v15)
      {
        return;
      }

      v33 = a2[17];
    }

    else
    {
      v14 = sub_1B1F1A5B0();
      swift_unknownObjectRelease();
      if (v14 != a1)
      {
        return;
      }

      swift_beginAccess();
      v15 = a2[14];
      if (!v15)
      {
        return;
      }

      v16 = a2[15];
    }

    v15(v34);
    sub_1B1DEBA94(v15);
    return;
  }

  if (v10 != sub_1B1F1A590())
  {
    goto LABEL_3;
  }

  v17 = a2[6];
  v18 = a2[7];
  swift_unknownObjectRetain();
  v19 = sub_1B1E07BD8(v17, v18, a1);
  if (!v20)
  {
    swift_unknownObjectRelease();
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B00, &qword_1B1F35170);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1B1F2A3B0;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 32) = 0xD00000000000003ELL;
    *(v11 + 40) = 0x80000001B1F39A90;
    sub_1B1F1B7A0();

    v12 = a2[2];

    xpc_connection_cancel(v12);
    return;
  }

  v21 = v19;
  v22 = v20;
  v23 = a2[8];
  v24 = a2[9];
  v25 = sub_1B1F1A8E0();
  v26 = xpc_dictionary_get_value(a1, (v25 + 32));

  if (!v26)
  {
    swift_unknownObjectRelease();

    goto LABEL_3;
  }

  swift_beginAccess();
  v27 = a2[4];
  sub_1B1F1A760();
  v28 = sub_1B1E0E2C0(v21, v22, v27);
  v30 = v29;

  if (v28)
  {

    v31 = sub_1B1F1AA80();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v31);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v28;
    v32[5] = v30;
    v32[6] = v26;
    v32[7] = a1;
    v32[8] = a2;
    v32[9] = a3;

    swift_unknownObjectRetain();
    sub_1B1E700AC(0, 0, v9, &unk_1B1F35190, v32);
LABEL_21:

    return;
  }

  swift_beginAccess();
  v35 = a2[5];
  sub_1B1F1A760();
  v36 = sub_1B1E0E2C0(v21, v22, v35);
  v38 = v37;

  if (v36)
  {

    v39 = sub_1B1F1AA80();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v39);
    v40 = swift_allocObject();
    v40[2] = 0;
    v40[3] = 0;
    v40[4] = v36;
    v40[5] = v38;
    v40[6] = v26;
    sub_1B1DFB8E8(v36);
    swift_unknownObjectRetain();
    sub_1B1E700AC(0, 0, v9, &unk_1B1F35180, v40);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1B1DEBA94(v36);
    goto LABEL_21;
  }

  reply = xpc_dictionary_create_reply(a1);
  if (reply)
  {
    v42 = reply;

    v43 = a2[12];
    v44 = a2[13];
    v45 = sub_1B1F1A8E0();
    xpc_dictionary_set_BOOL(v42, (v45 + 32), 1);

    xpc_connection_send_message(a3, v42);
    swift_unknownObjectRelease();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B00, &qword_1B1F35170);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1B1F2A3B0;
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_1B1F1AFA0();

    v49 = 0xD000000000000029;
    v50 = 0x80000001B1F39AD0;
    MEMORY[0x1B273D1A0](v21, v22);

    v47 = v49;
    v48 = v50;
    *(v46 + 56) = MEMORY[0x1E69E6158];
    *(v46 + 32) = v47;
    *(v46 + 40) = v48;
    sub_1B1F1B7A0();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_1B1E6F818(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a8;
  v8[21] = v15;
  v8[19] = a7;
  v13 = (a4 + *a4);
  v10 = a4[1];
  v11 = swift_task_alloc();
  v8[22] = v11;
  *v11 = v8;
  v11[1] = sub_1B1E6F920;

  return v13(a6);
}

uint64_t sub_1B1E6F920()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = *(v4 + 176);
  *v3 = *v1;
  *(v2 + 184) = v6;
  *(v2 + 192) = v0;

  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B1E6FA24()
{
  OUTLINED_FUNCTION_15();
  reply = xpc_dictionary_create_reply(*(v0 + 152));
  v2 = *(v0 + 184);
  if (reply)
  {
    v3 = reply;
    v4 = *(v0 + 160);
    v5 = *(v0 + 168);
    v6 = *(v4 + 64);
    v7 = *(v4 + 72);
    v8 = sub_1B1F1A8E0();
    swift_unknownObjectRetain();
    xpc_dictionary_set_value(v3, (v8 + 32), v2);

    swift_unknownObjectRelease();
    xpc_connection_send_message(v5, v3);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B00, &qword_1B1F35170);
    *(swift_allocObject() + 16) = xmmword_1B1F2A3B0;
    OUTLINED_FUNCTION_28_6();
    v9[7] = MEMORY[0x1E69E6158];
    v9[4] = 0xD000000000000039;
    v9[5] = v10;
    OUTLINED_FUNCTION_15_12();
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_2_0();

  return v11();
}

uint64_t sub_1B1E6FB50()
{
  reply = xpc_dictionary_create_reply(*(v0 + 152));
  if (reply)
  {
    v2 = reply;
    v3 = *(v0 + 192);
    v4 = *(v0 + 160);
    v6 = *(v4 + 80);
    v5 = *(v4 + 88);
    sub_1B1F1A760();
    v7 = v3;
    sub_1B1E6FD30(v3, (v0 + 16));
    v8 = sub_1B1E6E914(v0 + 16);
    v9 = *(v0 + 168);
    sub_1B1E75620(v0 + 16);
    v10 = sub_1B1F1A8E0();

    xpc_dictionary_set_value(v2, (v10 + 32), v8);

    swift_unknownObjectRelease();
    xpc_connection_send_message(v9, v2);
    swift_unknownObjectRelease();
  }

  v11 = *(v0 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B00, &qword_1B1F35170);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B1F2A3B0;
  OUTLINED_FUNCTION_62();
  sub_1B1F1AFA0();
  *(v0 + 128) = v17;
  *(v0 + 136) = v18;
  OUTLINED_FUNCTION_31_5();
  *(v0 + 144) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784548, &unk_1B1F308A0);
  sub_1B1F1B0A0();
  v13 = *(v0 + 128);
  v14 = *(v0 + 136);
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;
  OUTLINED_FUNCTION_15_12();

  OUTLINED_FUNCTION_2_0();

  return v15();
}

uint64_t sub_1B1E6FD30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getErrorValue();
  v4 = sub_1B1F1B750();
  v35 = v5;
  v36 = v4;
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784548, &unk_1B1F308A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785E00, &qword_1B1F351A0);
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_0(&v37, *(&v38 + 1));
    v7 = sub_1B1F1A140();
    v33 = v8;
    v34 = v7;
    __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_1B1E0BDB8(&v37, &qword_1EB785E08, &unk_1B1F351A8);
    v33 = 0;
    v34 = 0;
  }

  v9 = a1;
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_0(&v37, *(&v38 + 1));
    v10 = sub_1B1F1A130();
    v31 = v11;
    v32 = v10;
    __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_1B1E0BDB8(&v37, &qword_1EB785E08, &unk_1B1F351A8);
    v31 = 0;
    v32 = 0;
  }

  v12 = a1;
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_0(&v37, *(&v38 + 1));
    v13 = sub_1B1F1A150();
    v29 = v14;
    v30 = v13;
    __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_1B1E0BDB8(&v37, &qword_1EB785E08, &unk_1B1F351A8);
    v29 = 0;
    v30 = 0;
  }

  v15 = a1;
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_0(&v37, *(&v38 + 1));
    v16 = sub_1B1F1A120();
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_1B1E0BDB8(&v37, &qword_1EB785E08, &unk_1B1F351A8);
    v16 = 0;
    v18 = 0;
  }

  v19 = sub_1B1F1A1B0();
  v20 = [v19 domain];
  v21 = sub_1B1F1A890();
  v23 = v22;

  v24 = [v19 code];
  v25 = [v19 userInfo];
  v26 = sub_1B1F1A710();

  v27 = sub_1B1E6E650(v26);

  *a2 = v36;
  a2[1] = v35;
  a2[2] = v34;
  a2[3] = v33;
  a2[4] = v32;
  a2[5] = v31;
  a2[6] = v30;
  a2[7] = v29;
  a2[8] = v16;
  a2[9] = v18;
  a2[10] = v21;
  a2[11] = v23;
  a2[12] = v24;
  a2[13] = v27;
  return result;
}

uint64_t sub_1B1E700AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783E48, &qword_1B1F30630);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v26 - v11;
  sub_1B1E058E0(a3, v26 - v11);
  v13 = sub_1B1F1AA80();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_1B1E0BDB8(v12, &qword_1EB783E48, &qword_1B1F30630);
  }

  else
  {
    sub_1B1F1AA70();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1B1F1AA20();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1B1F1A8E0() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1B1E0BDB8(a3, &qword_1EB783E48, &qword_1B1F30630);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B1E0BDB8(a3, &qword_1EB783E48, &qword_1B1F30630);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1B1E70380(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v6 + 40) = v9;
  *v9 = v6;
  v9[1] = sub_1B1E70478;

  return v11(a6);
}

uint64_t sub_1B1E70478()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v7 = v6;
  *(v8 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_5_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_2_0();

    return v12();
  }
}

uint64_t sub_1B1E70590()
{
  OUTLINED_FUNCTION_26_4();
  v1 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785B00, &qword_1B1F35170);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B1F2A3B0;
  OUTLINED_FUNCTION_62();
  sub_1B1F1AFA0();
  v0[2] = v7;
  v0[3] = v8;
  OUTLINED_FUNCTION_31_5();
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB784548, &unk_1B1F308A0);
  sub_1B1F1B0A0();
  v3 = v0[2];
  v4 = v0[3];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  OUTLINED_FUNCTION_15_12();

  OUTLINED_FUNCTION_2_0();

  return v5();
}

uint64_t XPCConnection.__allocating_init(incomingConnection:)(uint64_t a1)
{
  v23 = sub_1B1F1AD60();
  v3 = OUTLINED_FUNCTION_0(v23);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_6_6();
  v8 = sub_1B1F1AD50();
  v9 = OUTLINED_FUNCTION_10(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_11();
  v12 = sub_1B1F1A6B0();
  v13 = OUTLINED_FUNCTION_8(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_3();
  v16 = *(a1 + 16);
  sub_1B1E1D940();
  swift_unknownObjectRetain();
  sub_1B1F1A680();
  OUTLINED_FUNCTION_2_18();
  sub_1B1DFA880(v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7845B0, qword_1B1F34ED0);
  OUTLINED_FUNCTION_1_20();
  sub_1B1E2FC9C(v19, &unk_1EB7845B0, qword_1B1F34ED0);
  sub_1B1F1AF00();
  (*(v5 + 104))(v1, *MEMORY[0x1E69E8090], v23);
  OUTLINED_FUNCTION_19_9();
  v20 = sub_1B1F1AD80();
  type metadata accessor for XPCConnection();
  OUTLINED_FUNCTION_27_5();
  swift_allocObject();
  v21 = sub_1B1E6F114(v16, v20);

  return v21;
}

uint64_t static XPCConnection.endpoint(_:)(_xpc_endpoint_s **a1)
{
  v36 = sub_1B1F1AD60();
  v2 = OUTLINED_FUNCTION_0(v36);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_3();
  v9 = v8 - v7;
  v10 = sub_1B1F1AD50();
  v11 = OUTLINED_FUNCTION_10(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_6_6();
  v14 = sub_1B1F1A6B0();
  v15 = OUTLINED_FUNCTION_8(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_11();
  v18 = sub_1B1F1A670();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_3();
  v26 = v25 - v24;
  v35 = *a1;
  sub_1B1E1D940();
  (*(v21 + 104))(v26, *MEMORY[0x1E69E7F98], v18);
  sub_1B1F1AD90();
  (*(v21 + 8))(v26, v18);
  sub_1B1F1A680();
  OUTLINED_FUNCTION_2_18();
  sub_1B1DFA880(v27, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7845B0, qword_1B1F34ED0);
  OUTLINED_FUNCTION_1_20();
  sub_1B1E2FC9C(v29, &unk_1EB7845B0, qword_1B1F34ED0);
  sub_1B1F1AF00();
  (*(v4 + 104))(v9, *MEMORY[0x1E69E8090], v36);
  OUTLINED_FUNCTION_19_9();
  v30 = sub_1B1F1AD80();
  v31 = xpc_connection_create_from_endpoint(v35);
  type metadata accessor for XPCConnection();
  OUTLINED_FUNCTION_27_5();
  swift_allocObject();
  swift_unknownObjectRetain();
  v32 = v30;
  v33 = sub_1B1E6F114(v31, v32);
  xpc_connection_activate(v31);

  swift_unknownObjectRelease();
  return v33;
}

uint64_t sub_1B1E70C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, id))
{
  v33 = sub_1B1F1AD60();
  v5 = OUTLINED_FUNCTION_0(v33);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_11();
  v10 = sub_1B1F1AD50();
  v11 = OUTLINED_FUNCTION_10(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_3();
  v14 = sub_1B1F1A6B0();
  v15 = OUTLINED_FUNCTION_8(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_3();
  v18 = sub_1B1F1A670();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_6_6();
  sub_1B1E1D940();
  (*(v21 + 104))(v3, *MEMORY[0x1E69E7F98], v18);
  sub_1B1F1AD90();
  (*(v21 + 8))(v3, v18);
  sub_1B1F1A680();
  OUTLINED_FUNCTION_2_18();
  sub_1B1DFA880(v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7845B0, qword_1B1F34ED0);
  OUTLINED_FUNCTION_1_20();
  sub_1B1E2FC9C(v26, &unk_1EB7845B0, qword_1B1F34ED0);
  sub_1B1F1AF00();
  (*(v7 + 104))(v4, *MEMORY[0x1E69E8090], v33);
  OUTLINED_FUNCTION_19_9();
  v27 = sub_1B1F1AD80();
  v28 = a3(a1, a2, v27);
  type metadata accessor for XPCConnection();
  OUTLINED_FUNCTION_27_5();
  swift_allocObject();
  v29 = v27;
  v30 = swift_unknownObjectRetain();
  v31 = sub_1B1E6F114(v30, v29);
  xpc_connection_activate(v28);

  swift_unknownObjectRelease();
  return v31;
}

uint64_t sub_1B1E70F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  OUTLINED_FUNCTION_5_1();
  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B1E70FB0()
{
  v1 = v0[6];
  v2 = *(v0[7] + 16);
  v3 = sub_1B1E0FE6C(v0[5]);
  v0[9] = v3;
  v4 = v3;
  v5 = v0[8];
  v26 = v0[7];
  v6 = v0[6];
  empty = xpc_dictionary_create_empty();
  v0[2] = empty;
  v8 = v5[6];
  v9 = v5[7];
  v0[3] = v6;
  swift_getMetatypeMetadata();
  sub_1B1F1A8D0();
  v10 = sub_1B1F1A8E0();
  v11 = sub_1B1F1A8E0();

  xpc_dictionary_set_string(empty, (v10 + 32), (v11 + 32));

  v12 = v5[8];
  v13 = v5[9];
  v14 = sub_1B1F1A8E0();
  swift_unknownObjectRetain();
  xpc_dictionary_set_value(empty, (v14 + 32), v4);

  swift_unknownObjectRelease();
  v15 = swift_task_alloc();
  v0[10] = v15;
  v15[2] = v6;
  v15[3] = v26;
  v15[4] = v5;
  v15[5] = v0 + 2;
  v16 = *(MEMORY[0x1E69E8920] + 4);
  v17 = swift_task_alloc();
  v0[11] = v17;
  swift_getAssociatedTypeWitness();
  *v17 = v0;
  v17[1] = sub_1B1E711F8;
  v18 = v0[4];
  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DE38](v19, v20, v21, v22, 0xE800000000000000, v23, v15, v24);
}

uint64_t sub_1B1E711F8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (!v0)
  {
    v9 = *(v3 + 80);
  }

  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B1E712FC()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 72);
  swift_unknownObjectRelease();
  v2 = *(v0 + 16);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_0();

  return v3();
}

uint64_t sub_1B1E71360()
{
  OUTLINED_FUNCTION_1();
  v1 = v0[9];
  v2 = v0[10];
  swift_unknownObjectRelease();

  v3 = v0[2];
  swift_unknownObjectRelease();
  v4 = v0[12];
  OUTLINED_FUNCTION_2_0();

  return v5();
}

uint64_t sub_1B1E713CC(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  v10 = sub_1B1F1AA50();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  v15 = *a3;
  v16 = *(a2 + 24);
  v21 = *(a2 + 16);
  v22 = v16;
  (*(v11 + 16))(v14, a1, v10);
  v17 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a4;
  *(v18 + 3) = a5;
  *(v18 + 4) = a2;
  (*(v11 + 32))(&v18[v17], v14, v10);
  aBlock[4] = sub_1B1E75650;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B1E6EBE0;
  aBlock[3] = &block_descriptor_5;
  v19 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  xpc_connection_send_message_with_reply(v21, v15, v22, v19);
  _Block_release(v19);
  return swift_unknownObjectRelease();
}

uint64_t sub_1B1E71604(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v11 - v8;
  swift_getAssociatedConformanceWitness();
  sub_1B1E71CC8(a1);
  (*(v3 + 16))(v7, v9, AssociatedTypeWitness);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  sub_1B1F1AA50();
  sub_1B1F1AA40();
  return (*(v3 + 8))(v9, AssociatedTypeWitness);
}

uint64_t sub_1B1E71804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  result = sub_1B1E0FE6C(a1);
  if (!v4)
  {
    v7 = result;
    xdict = xpc_dictionary_create_empty();
    v8 = *(v3 + 48);
    v9 = *(v3 + 56);
    swift_getMetatypeMetadata();
    sub_1B1F1A8D0();
    v10 = sub_1B1F1A8E0();
    v11 = sub_1B1F1A8E0();

    xpc_dictionary_set_string(xdict, (v10 + 32), (v11 + 32));

    v12 = *(v3 + 64);
    v13 = *(v3 + 72);
    v14 = sub_1B1F1A8E0();
    swift_unknownObjectRetain();
    xpc_dictionary_set_value(xdict, (v14 + 32), v7);
    swift_unknownObjectRelease();

    v15 = xpc_connection_send_message_with_reply_sync(*(v3 + 16), xdict);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_1B1E71CC8(v15);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B1E7199C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  result = sub_1B1E0FE6C(a1);
  if (!v4)
  {
    v7 = result;
    empty = xpc_dictionary_create_empty();
    v9 = *(v3 + 48);
    v10 = *(v3 + 56);
    swift_getMetatypeMetadata();
    sub_1B1F1A8D0();
    v11 = sub_1B1F1A8E0();
    v12 = sub_1B1F1A8E0();

    xpc_dictionary_set_string(empty, (v11 + 32), (v12 + 32));

    v13 = *(v3 + 64);
    v14 = *(v3 + 72);
    v15 = sub_1B1F1A8E0();
    swift_unknownObjectRetain();
    xpc_dictionary_set_value(empty, (v15 + 32), v7);
    swift_unknownObjectRelease();

    xpc_connection_send_message(*(v3 + 16), empty);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B1E71AB0()
{
  OUTLINED_FUNCTION_14_12();
  sub_1B1F1A8D0();
  v1 = OUTLINED_FUNCTION_13_6();
  sub_1B1E71B50(v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_32_6();

  v6 = *(v0 + 32);
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + 32);
  OUTLINED_FUNCTION_16_10();
  sub_1B1E0DF18();
  *(v0 + 32) = v9;

  return swift_endAccess();
}

void *sub_1B1E71B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a2;
  v9[5] = a3;
  return &unk_1B1F35150;
}

uint64_t sub_1B1E71BB8()
{
  OUTLINED_FUNCTION_14_12();
  sub_1B1F1A8D0();
  v1 = OUTLINED_FUNCTION_13_6();
  sub_1B1E71C58(v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_32_6();

  v6 = *(v0 + 40);
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + 40);
  OUTLINED_FUNCTION_16_10();
  sub_1B1E0DF40();
  *(v0 + 40) = v9;

  return swift_endAccess();
}

void *sub_1B1E71C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a2;
  v9[5] = a3;
  return &unk_1B1F35140;
}

uint64_t sub_1B1E71CC8(void *a1)
{
  v4 = MEMORY[0x1B273FB80]();
  if (v4 == sub_1B1F1A550())
  {
    v6 = sub_1B1F1A5A0();
    swift_unknownObjectRelease();
    if (v6 == a1)
    {
      v15 = v1[2];
      if (xpc_connection_copy_invalidation_reason())
      {
        v16 = sub_1B1F1A920();
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      sub_1B1E74404();
      OUTLINED_FUNCTION_13();
      *v25 = v16;
      v25[1] = v18;
    }

    else
    {
      v7 = sub_1B1F1A5B0();
      swift_unknownObjectRelease();
      sub_1B1E74404();
      OUTLINED_FUNCTION_13();
      *v8 = 0;
      if (v7 == a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 3;
      }

      v8[1] = v9;
    }

    return swift_willThrow();
  }

  if (v4 != sub_1B1F1A590())
  {
    sub_1B1E74404();
    OUTLINED_FUNCTION_13();
    *v5 = xmmword_1B1F34EB0;
    return swift_willThrow();
  }

  v10 = v1[8];
  v11 = v1[9];
  v12 = sub_1B1F1A8E0();
  v13 = swift_unknownObjectRetain();
  v14 = xpc_dictionary_get_value(v13, (v12 + 32));

  if (v14)
  {
    XPCCoder.decode<A>(_:from:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = v1[12];
    v20 = v1[13];
    v21 = sub_1B1F1A8E0();
    v22 = xpc_dictionary_get_BOOL(a1, (v21 + 32));

    if (v22)
    {
      sub_1B1E74404();
      OUTLINED_FUNCTION_13();
      v24 = xmmword_1B1F34EC0;
    }

    else
    {
      v27 = v1[10];
      v28 = v1[11];
      v29 = sub_1B1F1A8E0();
      v30 = xpc_dictionary_get_value(a1, (v29 + 32));

      if (v30)
      {
        sub_1B1F1B0B0();
        v31 = MEMORY[0x1E69E7CC0];
        v32 = sub_1B1F1A730();
        v34[3] = &type metadata for XPCDecoder;
        v34[0] = v30;
        v34[1] = v31;
        v34[4] = sub_1B1E141EC();
        v34[2] = v32;
        swift_unknownObjectRetain();
        sub_1B1E735D4(v34, __src);
        if (!v2)
        {
          sub_1B1E75540();
          OUTLINED_FUNCTION_13();
          memcpy(v33, __src, 0x70uLL);
          swift_willThrow();
        }

        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }

      sub_1B1E74404();
      OUTLINED_FUNCTION_13();
      v24 = xmmword_1B1F34EB0;
    }

    *v23 = v24;
    swift_willThrow();
  }

  return swift_unknownObjectRelease();
}

uint64_t XPCConnection.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  v6 = *(v0 + 88);

  v7 = *(v0 + 104);

  v8 = *(v0 + 120);
  sub_1B1DEBA94(*(v0 + 112));
  v9 = *(v0 + 136);
  sub_1B1DEBA94(*(v0 + 128));
  return v0;
}

uint64_t XPCConnection.__deallocating_deinit()
{
  XPCConnection.deinit();
  OUTLINED_FUNCTION_27_5();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t XPCConnection.description.getter()
{
  v1 = *(v0 + 16);
  xpc_connection_get_pid(v1);
  sub_1B1F1AFA0();

  OUTLINED_FUNCTION_28_6();
  v2 = sub_1B1F1B300();
  MEMORY[0x1B273D1A0](v2);

  MEMORY[0x1B273D1A0](8250, 0xE200000000000000);
  v3 = MEMORY[0x1B273FA10](v1);
  v4 = sub_1B1F1A920();
  v6 = v5;
  MEMORY[0x1B273F720](v3, -1, -1);
  MEMORY[0x1B273D1A0](v4, v6);

  MEMORY[0x1B273D1A0](62, 0xE100000000000000);
  return 0xD000000000000013;
}

unint64_t XPCConnection.debugDescription.getter()
{
  v1 = *(v0 + 16);
  xpc_connection_get_pid(v1);
  swift_beginAccess();
  v2 = *(v0 + 32);
  v3 = sub_1B1F1A760();
  sub_1B1E72388(v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783B50, &qword_1B1F29880);
  sub_1B1E2FC9C(&qword_1EB785DA8, &qword_1EB783B50, &qword_1B1F29880);
  v4 = sub_1B1F1A810();
  v6 = v5;

  sub_1B1F1AFA0();

  OUTLINED_FUNCTION_28_6();
  v7 = sub_1B1F1B300();
  MEMORY[0x1B273D1A0](v7);

  MEMORY[0x1B273D1A0](8250, 0xE200000000000000);
  v8 = MEMORY[0x1B273FA10](v1);
  v9 = sub_1B1F1A920();
  v11 = v10;
  MEMORY[0x1B273F720](v8, -1, -1);
  MEMORY[0x1B273D1A0](v9, v11);

  MEMORY[0x1B273D1A0](0xD000000000000014, 0x80000001B1F398E0);
  MEMORY[0x1B273D1A0](v4, v6);

  MEMORY[0x1B273D1A0](62, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t sub_1B1E72388(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_1B1E2B3B4(*(a1 + 16), 0);
  v4 = sub_1B1E2CEE4(&v6, v3 + 4, v1, a1);
  sub_1B1F1A760();
  sub_1B1E2CC74();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x1E69E7CC0];
  }

  v6 = v3;
  sub_1B1E7491C(&v6);
  return v6;
}

uint64_t sub_1B1E72490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[7] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v10 = *(a4 - 8);
  v5[10] = v10;
  v11 = *(v10 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1E725C8, 0, 0);
}

uint64_t sub_1B1E725C8()
{
  OUTLINED_FUNCTION_15();
  v2 = v1[11];
  OUTLINED_FUNCTION_23_4();
  if (v0)
  {
    v3 = v1[11];
    v4 = v1[9];

    OUTLINED_FUNCTION_2_0();

    return v5();
  }

  else
  {
    v12 = (v1[3] + *v1[3]);
    v7 = *(v1[3] + 4);
    v8 = swift_task_alloc();
    v1[12] = v8;
    *v8 = v1;
    v8[1] = sub_1B1E72718;
    v9 = v1[11];
    v10 = v1[9];
    v11 = v1[4];

    return v12(v10, v9);
  }
}

uint64_t sub_1B1E72718()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v5 = *(v4 + 96);
  v6 = *v1;
  OUTLINED_FUNCTION_0_0();
  *v7 = v6;
  *(v8 + 104) = v0;

  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B1E72814()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[5];
  swift_getAssociatedConformanceWitness();
  v9 = sub_1B1E0FE6C(v4);
  (*(v5 + 8))(v4, v7);
  (*(v3 + 8))(v2, v8);
  v10 = v0[11];
  v11 = v0[9];

  v13 = v0[1];
  if (!v1)
  {
    v12 = v9;
  }

  return v13(v12);
}

uint64_t sub_1B1E72928()
{
  OUTLINED_FUNCTION_1();
  (*(v0[10] + 8))(v0[11], v0[5]);
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[9];

  OUTLINED_FUNCTION_2_0();

  return v4();
}

uint64_t sub_1B1E729A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(a4 - 8);
  v5[7] = v6;
  v7 = *(v6 + 64) + 15;
  v5[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1E72A64, 0, 0);
}

uint64_t sub_1B1E72A64()
{
  OUTLINED_FUNCTION_15();
  v2 = v1[8];
  OUTLINED_FUNCTION_23_4();
  if (v0)
  {
    v3 = v1[8];

    OUTLINED_FUNCTION_2_0();

    return v4();
  }

  else
  {
    v10 = (v1[3] + *v1[3]);
    v6 = *(v1[3] + 4);
    v7 = swift_task_alloc();
    v1[9] = v7;
    *v7 = v1;
    v7[1] = sub_1B1E72BA4;
    v8 = v1[8];
    v9 = v1[4];

    return v10(v8);
  }
}

uint64_t sub_1B1E72BA4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_1();
  v2 = *(v1 + 72);
  v3 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v4 = v3;

  OUTLINED_FUNCTION_5_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B1E72C8C()
{
  OUTLINED_FUNCTION_1();
  (*(v0[7] + 8))(v0[8], v0[5]);

  OUTLINED_FUNCTION_2_0();

  return v1();
}

unint64_t sub_1B1E72D0C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785E20, &qword_1B1F2F1A0);
    v2 = sub_1B1F1B140();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  result = sub_1B1F1A760();
  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (v9 << 10) | (16 * v10);
    v12 = (*(a1 + 48) + v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = (*(a1 + 56) + v11);
    v25 = *v15;
    v26 = v15[1];
    sub_1B1F1A760();
    sub_1B1F1A760();
    swift_dynamicCast();
    sub_1B1E077D8(&v27, v29);
    sub_1B1E077D8(v29, v30);
    sub_1B1E077D8(v30, &v28);
    result = sub_1B1DEBED8();
    v16 = result;
    if (v17)
    {
      v18 = (v2[6] + 16 * result);
      v19 = v18[1];
      *v18 = v14;
      v18[1] = v13;

      v20 = (v2[7] + 32 * v16);
      __swift_destroy_boxed_opaque_existential_1(v20);
      result = sub_1B1E077D8(&v28, v20);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = (v2[6] + 16 * result);
      *v21 = v14;
      v21[1] = v13;
      result = sub_1B1E077D8(&v28, (v2[7] + 32 * result));
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_20;
      }

      v2[2] = v24;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B1E72F58()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  sub_1B1F1A760();
  return v1;
}

uint64_t sub_1B1E72F88(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001B1F390E0 == a2;
  if (v3 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001B1F39B70 == a2;
    if (v6 || (sub_1B1F1B510() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x526572756C696166 && a2 == 0xED00006E6F736165;
      if (v7 || (sub_1B1F1B510() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001B1F39B90 == a2;
        if (v8 || (sub_1B1F1B510() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x68636E41706C6568 && a2 == 0xEA0000000000726FLL;
          if (v9 || (sub_1B1F1B510() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
            if (v10 || (sub_1B1F1B510() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x646F43726F727265 && a2 == 0xE900000000000065;
              if (v11 || (sub_1B1F1B510() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1B1F1B510();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1B1E73228(char a1)
{
  result = 0x526572756C696166;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x68636E41706C6568;
      break;
    case 5:
      result = 0x6E69616D6F64;
      break;
    case 6:
      result = 0x646F43726F727265;
      break;
    case 7:
      result = 0x6F666E4972657375;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1B1E73330(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785DF0, &qword_1B1F35198);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B1E75594();
  sub_1B1F1B830();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v26) = 0;
  sub_1B1F1B270();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v26) = 1;
    sub_1B1F1B250();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v26) = 2;
    sub_1B1F1B250();
    v17 = v3[6];
    v18 = v3[7];
    LOBYTE(v26) = 3;
    sub_1B1F1B250();
    v19 = v3[8];
    v20 = v3[9];
    LOBYTE(v26) = 4;
    sub_1B1F1B250();
    v21 = v3[10];
    v22 = v3[11];
    LOBYTE(v26) = 5;
    sub_1B1F1B270();
    v23 = v3[12];
    LOBYTE(v26) = 6;
    sub_1B1F1B290();
    v26 = v3[13];
    v25[7] = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785DD8, &unk_1B1F35160);
    sub_1B1E75920(&qword_1EB785DF8);
    sub_1B1F1B2B0();
  }

  return (*(v6 + 8))(v9, v5);
}

void *sub_1B1E735D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785DC8, &qword_1B1F35158);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B1E75594();
  sub_1B1F1B810();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v41[0]) = 0;
  v11 = sub_1B1F1B1C0();
  v13 = v12;
  LOBYTE(v41[0]) = 1;
  v35 = sub_1B1F1B1A0();
  v39 = v14;
  LOBYTE(v41[0]) = 2;
  v34 = sub_1B1F1B1A0();
  v38 = v15;
  LOBYTE(v41[0]) = 3;
  v31 = sub_1B1F1B1A0();
  v32 = v11;
  v37 = v16;
  LOBYTE(v41[0]) = 4;
  v17 = sub_1B1F1B1A0();
  v33 = v18;
  v30 = v17;
  LOBYTE(v41[0]) = 5;
  v29 = sub_1B1F1B1C0();
  v36 = v19;
  LOBYTE(v41[0]) = 6;
  v28 = sub_1B1F1B1E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785DD8, &unk_1B1F35160);
  v42 = 7;
  sub_1B1E75920(&unk_1EB785DE0);
  sub_1B1F1B200();
  (*(v6 + 8))(v9, v5);
  v27 = v43;
  __src[0] = v32;
  __src[1] = v13;
  __src[2] = v35;
  v20 = v39;
  __src[3] = v39;
  __src[4] = v34;
  v21 = v38;
  __src[5] = v38;
  __src[6] = v31;
  v22 = v37;
  __src[7] = v37;
  v23 = v33;
  __src[8] = v30;
  __src[9] = v33;
  v24 = v36;
  __src[10] = v29;
  __src[11] = v36;
  __src[12] = v28;
  __src[13] = v43;
  sub_1B1E755E8(__src, v41);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v41[0] = v32;
  v41[1] = v13;
  v41[2] = v35;
  v41[3] = v20;
  v41[4] = v34;
  v41[5] = v21;
  v41[6] = v31;
  v41[7] = v22;
  v41[8] = v30;
  v41[9] = v23;
  v41[10] = v29;
  v41[11] = v24;
  v41[12] = v28;
  v41[13] = v27;
  sub_1B1E75620(v41);
  return memcpy(a2, __src, 0x70uLL);
}

uint64_t sub_1B1E73BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E72F88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E73BDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B1E73220();
  *a1 = result;
  return result;
}

uint64_t sub_1B1E73C04(uint64_t a1)
{
  v2 = sub_1B1E75594();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E73C40(uint64_t a1)
{
  v2 = sub_1B1E75594();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E73C7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1B1F1A760();
  return v1;
}

uint64_t sub_1B1E73CAC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1B1F1A760();
  return v1;
}

uint64_t sub_1B1E73CDC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_1B1F1A760();
  return v1;
}

uint64_t sub_1B1E73D0C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_1B1F1A760();
  return v1;
}

void *sub_1B1E73D80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1B1E735D4(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x70uLL);
  }

  return result;
}

uint64_t sub_1B1E73E5C(uint64_t a1)
{
  v2 = sub_1B1E75D50();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B1E73E98(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785E20, &qword_1B1F2F1A0);
  v36 = a2;
  result = sub_1B1F1B130();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v8;
    return result;
  }

  v35 = v3;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      sub_1B1E64060(0, (v34 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 32 * v19);
    if (v36)
    {
      sub_1B1E077D8(v23, v37);
    }

    else
    {
      sub_1B1DF63A0(v23, v37);
      sub_1B1F1A760();
    }

    v24 = *(v8 + 40);
    sub_1B1F1B7C0();
    sub_1B1F1A900();
    result = sub_1B1F1B7F0();
    v25 = -1 << *(v8 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v8 + 48) + 16 * v28);
    *v33 = v21;
    v33[1] = v22;
    result = sub_1B1E077D8(v37, (*(v8 + 56) + 32 * v28));
    ++*(v8 + 16);
    if (!v13)
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
    v32 = *(v15 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1B1E7414C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785E18, &qword_1B1F351B8);
  v39 = a2;
  result = sub_1B1F1B130();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v37 = v3;
  v38 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      sub_1B1E64060(0, (v36 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 16 * v19);
    v24 = v23[1];
    v40 = *v23;
    if ((v39 & 1) == 0)
    {
      sub_1B1F1A760();
      sub_1B1F1A760();
    }

    v25 = *(v8 + 40);
    sub_1B1F1B7C0();
    sub_1B1F1A900();
    result = sub_1B1F1B7F0();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    v35 = (*(v8 + 56) + 16 * v29);
    *v35 = v40;
    v35[1] = v24;
    ++*(v8 + 16);
    v5 = v38;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

unint64_t sub_1B1E74404()
{
  result = qword_1EB785DB0;
  if (!qword_1EB785DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785DB0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19VoiceShortcutClient18XPCConnectionErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B1E7447C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 2;
  if (v5 >= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1E744DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_1B1E74538(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t dispatch thunk of XPCConnection.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 264);
  v15 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_5_2(v11);
  *v12 = v13;
  v12[1] = sub_1B1E05460;

  return v15(a1, a2, a3, a4);
}

uint64_t dispatch thunk of XPCConnection.send<A>(_:)()
{
  return (*(*v0 + 272))();
}

{
  return (*(*v0 + 280))();
}

uint64_t dispatch thunk of XPCConnection.handle<A>(_:handler:)()
{
  return (*(*v0 + 288))();
}

{
  return (*(*v0 + 296))();
}

uint64_t sub_1B1E748CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B1E748F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B1E7491C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B1E2CB08(v2);
  }

  v3 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_1B1E74988(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B1E74988(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B1F1B2F0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1B1F1A9E0();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1B1E74B44(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1B1E74A7C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B1E74A7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1B1F1B510();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1B1E74B44(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_1B1F1B510();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_1B1F1B510()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_1B1F1B510() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_1B1E2B1EC();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1B1E2B1EC();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1B1E75178((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_1B1E7504C(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_1B1E7504C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1B1E2C634(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1B1E75178((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1B1E75178(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1B1E2B4A4(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1B1F1B510() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_1B1E2B4A4(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_1B1F1B510() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_1B1E7531C()
{
  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_25_7();
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_12_6(v4);

  return sub_1B1E729A8(v5, v6, v7, v8, v9);
}

uint64_t sub_1B1E753B8()
{
  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_25_7();
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_12_6(v4);

  return sub_1B1E72490(v5, v6, v7, v8, v9);
}

uint64_t sub_1B1E75454()
{
  OUTLINED_FUNCTION_1();
  v2 = v1;
  OUTLINED_FUNCTION_4_1();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

unint64_t sub_1B1E75540()
{
  result = qword_1EB785DC0;
  if (!qword_1EB785DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785DC0);
  }

  return result;
}

unint64_t sub_1B1E75594()
{
  result = qword_1EB785DD0;
  if (!qword_1EB785DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785DD0);
  }

  return result;
}

uint64_t sub_1B1E75650(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB784548, &unk_1B1F308A0);
  v5 = sub_1B1F1AA50();
  OUTLINED_FUNCTION_8(v5);
  v7 = *(v6 + 80);
  v8 = v1[4];

  return sub_1B1E71604(a1);
}

xpc_connection_t sub_1B1E75724@<X0>(const char *a1@<X0>, xpc_connection_t *a2@<X8>)
{
  result = xpc_connection_create(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

xpc_connection_t sub_1B1E75758@<X0>(const char *a1@<X0>, xpc_connection_t *a2@<X8>)
{
  result = xpc_connection_create_mach_service(a1, *(v2 + 16), 0);
  *a2 = result;
  return result;
}

uint64_t sub_1B1E75798()
{
  OUTLINED_FUNCTION_26_4();
  OUTLINED_FUNCTION_25_7();
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_5_2(v5);
  *v6 = v7;
  v6[1] = sub_1B1E05460;
  v8 = OUTLINED_FUNCTION_10_9();

  return sub_1B1E70380(v8, v9, v1, v2, v3, v4);
}

uint64_t sub_1B1E75848()
{
  OUTLINED_FUNCTION_25_7();
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_5_2(v8);
  *v9 = v10;
  v9[1] = sub_1B1E05D18;
  v11 = OUTLINED_FUNCTION_10_9();

  return sub_1B1E6F818(v11, v12, v1, v2, v3, v4, v5, v7);
}

uint64_t sub_1B1E75920(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB785DD8, &unk_1B1F35160);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B1E7598C()
{
  OUTLINED_FUNCTION_15();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_5_2(v3);
  *v4 = v5;
  v4[1] = sub_1B1E05D18;
  v6 = OUTLINED_FUNCTION_10_9();

  return v7(v6);
}

uint64_t getEnumTagSinglePayload for XPCRemoteError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for XPCRemoteError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B1E75B9C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1B1E75BDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B1E75C4C()
{
  result = qword_1EB785E28;
  if (!qword_1EB785E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785E28);
  }

  return result;
}

unint64_t sub_1B1E75CA4()
{
  result = qword_1EB785E30;
  if (!qword_1EB785E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785E30);
  }

  return result;
}

unint64_t sub_1B1E75CFC()
{
  result = qword_1EB785E38;
  if (!qword_1EB785E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785E38);
  }

  return result;
}

unint64_t sub_1B1E75D50()
{
  result = qword_1EB785E40;
  if (!qword_1EB785E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785E40);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_12()
{

  return sub_1B1F1B7A0();
}

uint64_t OUTLINED_FUNCTION_23_4()
{
  v2 = v0[5];
  v3 = v0[2];
  v4 = *(v0[6] + 8);

  return XPCCoder.decode<A>(_:from:)();
}

uint64_t sub_1B1E75E34()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_58_0();
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E75EEC()
{
  OUTLINED_FUNCTION_35_0();
  sub_1B1F1A900();
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E75F34(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_35_0();
  a2(v5, a1);
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E75F7C()
{
  sub_1B1F1A900();
}

uint64_t sub_1B1E75FE4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      OUTLINED_FUNCTION_4_13();
      break;
    default:
      break;
  }

  sub_1B1F1A900();
}

uint64_t sub_1B1E760A4()
{
  sub_1B1F1A900();
}

uint64_t sub_1B1E76124(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_4_13();
  }

  sub_1B1F1A900();
}

uint64_t sub_1B1E761B8()
{
  sub_1B1F1A900();
}

uint64_t sub_1B1E76238()
{
  sub_1B1F1A900();
}

uint64_t sub_1B1E762B4()
{
  sub_1B1F1A900();
}

uint64_t sub_1B1E76394()
{
  sub_1B1F1B7C0();
  OUTLINED_FUNCTION_58_0();
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E763EC()
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_57_0();

  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E76450()
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_57_0();

  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E764D4()
{
  OUTLINED_FUNCTION_47_0();
  if (!v0)
  {
    OUTLINED_FUNCTION_4_13();
  }

  OUTLINED_FUNCTION_57_0();

  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E76588()
{
  sub_1B1F1B7C0();
  sub_1B1F1A900();
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E765D4()
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_57_0();

  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E76654(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_1B1F1B7C0();
  a3(v6, a2);
  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E766A0()
{
  OUTLINED_FUNCTION_47_0();
  sub_1B1F1A900();

  return sub_1B1F1B7F0();
}

uint64_t sub_1B1E76714@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B1E7C9B4(v1, v10);
  v4 = v13;
  if (v13)
  {
    v5 = 0;
    v7 = *(&v10[0] + 1);
    v6 = *&v10[0];
  }

  else
  {
    v7 = v11;
    v5 = v12;
    sub_1B1E17F10(v10, v9);
    __swift_project_boxed_opaque_existential_0(v9, v9[3]);
    sub_1B1F19E20();
    sub_1B1DEA98C(0, &qword_1EB785FB0, 0x1E69AC640);
    swift_dynamicCast();
    v6 = v8;
    result = __swift_destroy_boxed_opaque_existential_1(v9);
  }

  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  return result;
}

BOOL static Recurrence.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    v7 = *a1;
    if (!*(a2 + 8))
    {
      v9 = sub_1B1E76958(v7, *a2);
      sub_1B1E76938(v4, 0);
      sub_1B1E76938(v2, 0);
      sub_1B1E76948(v2, 0);
      sub_1B1E76948(v4, 0);
      return v9 & 1;
    }

    sub_1B1F1A760();
    goto LABEL_19;
  }

  if (v3 != 1)
  {
    if (v2)
    {
      if (v5 == 2 && v4 == 1)
      {
        v6 = 1;
        sub_1B1E76948(1, 2);
        sub_1B1E76948(1, 2);
        return v6;
      }
    }

    else if (v5 == 2 && v4 == 0)
    {
      sub_1B1E76948(0, 2);
      sub_1B1E76948(0, 2);
      return 1;
    }

LABEL_19:
    sub_1B1E76938(v4, v5);
    sub_1B1E76948(v2, v3);
    sub_1B1E76948(v4, v5);
    return 0;
  }

  if (v5 != 1)
  {
    goto LABEL_19;
  }

  sub_1B1E76948(*a1, 1);
  sub_1B1E76948(v4, 1);
  return v2 == v4;
}

uint64_t sub_1B1E76938(uint64_t a1, char a2)
{
  if (!a2)
  {
    return sub_1B1F1A760();
  }

  return result;
}

uint64_t sub_1B1E76948(uint64_t a1, char a2)
{
  if (!a2)
  {
  }

  return result;
}

uint64_t sub_1B1E76958(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t TimeOfDayTrigger.init(recurrence:components:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TimeOfDayTrigger(0);
  v7 = OUTLINED_FUNCTION_10(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_3();
  v12 = (v11 - v10);
  v13 = *a1;
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      v14 = 1;
    }

    else
    {
      if (!v13)
      {
        sub_1B1E76948(0, 2);
        v15 = 1;
        goto LABEL_8;
      }

      v13 = 1;
      v14 = 2;
    }
  }

  else
  {
    v14 = 0;
  }

  sub_1B1E76948(v13, v14);
  v15 = 0;
LABEL_8:
  sub_1B1E76948(0, 2);
  *v12 = v15;
  sub_1B1F1A0F0();
  if (v16 & 1) != 0 || (sub_1B1F1A100(), (v17))
  {
    v18 = sub_1B1F1A110();
    OUTLINED_FUNCTION_10(v18);
    (*(v19 + 8))(a2);
    OUTLINED_FUNCTION_54_0();

    return __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  }

  else
  {
    v25 = *(v6 + 20);
    v26 = sub_1B1F1A110();
    OUTLINED_FUNCTION_10(v26);
    (*(v27 + 32))(&v12[v25], a2);
    sub_1B1E7AEB8(v12, a3);
    OUTLINED_FUNCTION_54_0();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
    OUTLINED_FUNCTION_14_13();
    return sub_1B1E7AF10(v12, v32);
  }
}

uint64_t sub_1B1E76BEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6954656E4F7369 && a2 == 0xE900000000000065;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B1F1B510();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B1E76CC4(char a1)
{
  if (a1)
  {
    return 0x6E656E6F706D6F63;
  }

  else
  {
    return 0x6D6954656E4F7369;
  }
}

uint64_t sub_1B1E76D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E76BEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E76D34(uint64_t a1)
{
  v2 = sub_1B1E76F00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E76D70(uint64_t a1)
{
  v2 = sub_1B1E76F00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TimeOfDayTrigger.encode(to:)()
{
  OUTLINED_FUNCTION_33_5();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785E50, &qword_1B1F35470);
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_16_11();
  sub_1B1E76F00();
  OUTLINED_FUNCTION_15_13();
  v6 = *v1;
  OUTLINED_FUNCTION_24_0();
  sub_1B1F1B280();
  if (!v0)
  {
    v7 = *(type metadata accessor for TimeOfDayTrigger(0) + 20);
    OUTLINED_FUNCTION_33_2();
    sub_1B1F1A110();
    OUTLINED_FUNCTION_1_21();
    sub_1B1E771F0(v8, v9);
    OUTLINED_FUNCTION_24_0();
    sub_1B1F1B2B0();
  }

  v10 = OUTLINED_FUNCTION_8_11();
  return v11(v10);
}

unint64_t sub_1B1E76F00()
{
  result = qword_1EB785E58;
  if (!qword_1EB785E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785E58);
  }

  return result;
}

void TimeOfDayTrigger.init(from:)()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  v27 = v4;
  v29 = sub_1B1F1A110();
  v5 = OUTLINED_FUNCTION_0(v29);
  v26 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_3();
  v11 = v10 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785E68, &qword_1B1F35478);
  OUTLINED_FUNCTION_0(v30);
  v28 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_21_4();
  v16 = type metadata accessor for TimeOfDayTrigger(0);
  v17 = OUTLINED_FUNCTION_10(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_3();
  v22 = (v21 - v20);
  v23 = v3[4];
  OUTLINED_FUNCTION_44(v3, v3[3]);
  sub_1B1E76F00();
  sub_1B1F1B810();
  if (!v0)
  {
    *v22 = sub_1B1F1B1D0() & 1;
    OUTLINED_FUNCTION_33_2();
    OUTLINED_FUNCTION_1_21();
    sub_1B1E771F0(v24, v25);
    sub_1B1F1B200();
    (*(v28 + 8))(v1, v30);
    (*(v26 + 32))(&v22[*(v16 + 20)], v11, v29);
    sub_1B1E7AE0C(v22, v27);
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_1B1E771F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B1E77288(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1952867692 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64657265746E65 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B1F1B510();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B1E77350(char a1)
{
  if (a1)
  {
    return 0x64657265746E65;
  }

  else
  {
    return 1952867692;
  }
}

uint64_t sub_1B1E77388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E77288(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E773B0(uint64_t a1)
{
  v2 = sub_1B1E77774();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E773EC(uint64_t a1)
{
  v2 = sub_1B1E77774();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E77428(uint64_t a1)
{
  v2 = sub_1B1E777C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E77464(uint64_t a1)
{
  v2 = sub_1B1E777C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E774A0(uint64_t a1)
{
  v2 = sub_1B1E7781C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E774DC(uint64_t a1)
{
  v2 = sub_1B1E7781C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LocationTrigger.State.encode(to:)()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785E78, &qword_1B1F35480);
  v5 = OUTLINED_FUNCTION_0(v4);
  v32 = v6;
  v33 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17();
  v31 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785E80, &qword_1B1F35488);
  v12 = OUTLINED_FUNCTION_0(v11);
  v29 = v13;
  v30 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_21_4();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785E88, &qword_1B1F35490);
  OUTLINED_FUNCTION_0(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v29 - v23;
  v25 = *v0;
  v26 = v3[4];
  OUTLINED_FUNCTION_44(v3, v3[3]);
  sub_1B1E77774();
  sub_1B1F1B830();
  v27 = (v19 + 8);
  if (v25)
  {
    OUTLINED_FUNCTION_84();
    sub_1B1E777C8();
    v28 = v31;
    sub_1B1F1B240();
    (*(v32 + 8))(v28, v33);
  }

  else
  {
    sub_1B1E7781C();
    sub_1B1F1B240();
    (*(v29 + 8))(v1, v30);
  }

  (*v27)(v24, v17);
  OUTLINED_FUNCTION_35();
}

unint64_t sub_1B1E77774()
{
  result = qword_1EB785E90;
  if (!qword_1EB785E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785E90);
  }

  return result;
}

unint64_t sub_1B1E777C8()
{
  result = qword_1EB785E98;
  if (!qword_1EB785E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785E98);
  }

  return result;
}

unint64_t sub_1B1E7781C()
{
  result = qword_1EB785EA0;
  if (!qword_1EB785EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB785EA0);
  }

  return result;
}

uint64_t LocationTrigger.State.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_58_0();
  return sub_1B1F1B7F0();
}

void LocationTrigger.State.init(from:)()
{
  OUTLINED_FUNCTION_34();
  v54 = v1;
  v3 = v2;
  v51 = v4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785EA8, &qword_1B1F35498);
  OUTLINED_FUNCTION_0(v53);
  v50 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_30_5();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785EB0, &qword_1B1F354A0);
  OUTLINED_FUNCTION_0(v9);
  v49 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785EB8, &unk_1B1F354A8);
  OUTLINED_FUNCTION_0(v16);
  v52 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v46 - v21;
  v23 = v3[4];
  OUTLINED_FUNCTION_44(v3, v3[3]);
  sub_1B1E77774();
  v24 = v54;
  sub_1B1F1B810();
  if (v24)
  {
    goto LABEL_10;
  }

  v47 = v9;
  v48 = v15;
  v54 = v3;
  v25 = v53;
  v26 = sub_1B1F1B210();
  v27 = sub_1B1E32BFC(v26, 0);
  if (v29 == v30 >> 1)
  {
    v53 = v27;
LABEL_9:
    v39 = sub_1B1F1AFE0();
    OUTLINED_FUNCTION_13();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB783CD0, qword_1B1F2B6F0) + 48);
    *v41 = &type metadata for LocationTrigger.State;
    sub_1B1F1B190();
    OUTLINED_FUNCTION_35_3();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v52 + 8))(v22, v16);
    v3 = v54;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_11:
    OUTLINED_FUNCTION_35();
    return;
  }

  v46[1] = 0;
  if (v29 < (v30 >> 1))
  {
    v31 = *(v28 + v29);
    v32 = sub_1B1E32BF8(v29 + 1);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    if (v34 == v36 >> 1)
    {
      if (v31)
      {
        OUTLINED_FUNCTION_84();
        sub_1B1E777C8();
        v37 = v0;
        OUTLINED_FUNCTION_74();
        v38 = v51;
        swift_unknownObjectRelease();
        (*(v50 + 8))(v37, v25);
      }

      else
      {
        sub_1B1E7781C();
        v43 = v48;
        OUTLINED_FUNCTION_74();
        v38 = v51;
        swift_unknownObjectRelease();
        (*(v49 + 8))(v43, v47);
      }

      v44 = OUTLINED_FUNCTION_50_0();
      v45(v44, v34);
      *v38 = v31;
      __swift_destroy_boxed_opaque_existential_1(v54);
      goto LABEL_11;
    }

    v53 = v32;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t LocationTrigger.TimeRange.start.getter()
{
  OUTLINED_FUNCTION_87();
  v0 = sub_1B1F1A110();
  OUTLINED_FUNCTION_10(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_6_8();

  return v4(v3);
}

uint64_t sub_1B1E77DA8()
{
  v2 = OUTLINED_FUNCTION_87();
  v4 = *(v3(v2) + 20);
  v5 = sub_1B1F1A110();
  v6 = OUTLINED_FUNCTION_10(v5);
  v8 = *(v7 + 16);

  return v8(v0, v1 + v4, v6);
}

uint64_t LocationTrigger.TimeRange.init(start:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LocationTrigger.TimeRange(0);
  v7 = OUTLINED_FUNCTION_10(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_3();
  v12 = v11 - v10;
  sub_1B1F1A100();
  if (v13 & 1) != 0 || (sub_1B1F1A0F0(), (v14) || (sub_1B1F1A100(), (v15) || (sub_1B1F1A0F0(), (v16))
  {
    v17 = sub_1B1F1A110();
    OUTLINED_FUNCTION_10(v17);
    v19 = *(v18 + 8);
    v19(a2, v17);
    v19(a1, v17);
    OUTLINED_FUNCTION_54_0();

    return __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  }

  else
  {
    v25 = sub_1B1F1A110();
    OUTLINED_FUNCTION_10(v25);
    v27 = *(v26 + 32);
    v27(v12, a1, v25);
    v27(v12 + *(v6 + 20), a2, v25);
    sub_1B1E7AE0C(v12, a3);
    OUTLINED_FUNCTION_54_0();
    return __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  }
}

uint64_t sub_1B1E77FD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B1F1B510();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B1E78098(char a1)
{
  if (a1)
  {
    return 6581861;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_1B1E780CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E77FD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E780F4(uint64_t a1)
{
  v2 = sub_1B1E7AE64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E78130(uint64_t a1)
{
  v2 = sub_1B1E7AE64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LocationTrigger.TimeRange.encode(to:)()
{
  OUTLINED_FUNCTION_33_5();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785EC0, &qword_1B1F354B8);
  OUTLINED_FUNCTION_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_16_11();
  sub_1B1E7AE64();
  OUTLINED_FUNCTION_15_13();
  sub_1B1F1A110();
  OUTLINED_FUNCTION_1_21();
  sub_1B1E771F0(v5, v6);
  OUTLINED_FUNCTION_24_0();
  sub_1B1F1B2B0();
  if (!v0)
  {
    v7 = *(type metadata accessor for LocationTrigger.TimeRange(0) + 20);
    OUTLINED_FUNCTION_24_0();
    sub_1B1F1B2B0();
  }

  v8 = OUTLINED_FUNCTION_8_11();
  return v9(v8);
}

void LocationTrigger.TimeRange.init(from:)()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  v38 = v3;
  v43 = sub_1B1F1A110();
  v4 = OUTLINED_FUNCTION_0(v43);
  v39 = v5;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v34 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785ED0, &qword_1B1F354C0);
  v41 = OUTLINED_FUNCTION_0(v12);
  v42 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_17_6();
  v18 = type metadata accessor for LocationTrigger.TimeRange(v17);
  v19 = OUTLINED_FUNCTION_10(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_3();
  v24 = v23 - v22;
  v25 = v2[4];
  OUTLINED_FUNCTION_44(v2, v2[3]);
  sub_1B1E7AE64();
  sub_1B1F1B810();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v35 = v18;
    v36 = v10;
    v37 = v24;
    v26 = v39;
    OUTLINED_FUNCTION_1_21();
    sub_1B1E771F0(v27, v28);
    v29 = v40;
    sub_1B1F1B200();
    v40 = *(v26 + 32);
    (v40)(v37, v29, v43);
    OUTLINED_FUNCTION_33_2();
    v30 = v36;
    sub_1B1F1B200();
    v31 = OUTLINED_FUNCTION_18_7();
    v32(v31);
    v33 = v37;
    (v40)(v37 + *(v35 + 20), v30, v43);
    sub_1B1E7AEB8(v33, v38);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_1B1E7AF10(v33, type metadata accessor for LocationTrigger.TimeRange);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t LocationTrigger.timeRange.getter()
{
  v2 = OUTLINED_FUNCTION_87();
  v3 = v1 + *(type metadata accessor for LocationTrigger(v2) + 28);

  return sub_1B1E7AF88(v3, v0);
}

uint64_t LocationTrigger.init(isOneTime:region:state:timeRange:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a3;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = v7;
  v8 = a5 + *(type metadata accessor for LocationTrigger(0) + 28);

  return sub_1B1E7AFF8(a4, v8);
}

uint64_t sub_1B1E78710@<X0>(uint64_t a1@<X8>)
{
  sub_1B1E7AEB8(v1, a1);
  type metadata accessor for TriggerType(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B1E78768()
{
  v0 = sub_1B1F1B160();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B1E787B4(char a1)
{
  result = 0x6D6954656E4F7369;
  switch(a1)
  {
    case 1:
      result = 0x6E6F69676572;
      break;
    case 2:
      result = 0x6574617473;
      break;
    case 3:
      result = 0x676E6152656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B1E788A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B1E78768();
  *a2 = result;
  return result;
}

uint64_t sub_1B1E788D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B1E787B4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B1E78908@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B1E78768();
  *a1 = result;
  return result;
}

uint64_t sub_1B1E78930(uint64_t a1)
{
  v2 = sub_1B1E7B068();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E7896C(uint64_t a1)
{
  v2 = sub_1B1E7B068();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LocationTrigger.init(from:)()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  v26 = v4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785ED8, &qword_1B1F354C8) - 8) + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_30_5();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785EE0, &qword_1B1F354D0);
  OUTLINED_FUNCTION_0(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_17_6();
  v12 = type metadata accessor for LocationTrigger(v11);
  v13 = OUTLINED_FUNCTION_10(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_3();
  v18 = v17 - v16;
  v19 = v3[4];
  OUTLINED_FUNCTION_44(v3, v3[3]);
  sub_1B1E7B068();
  sub_1B1F1B810();
  if (!v1)
  {
    *v18 = sub_1B1F1B1D0() & 1;
    OUTLINED_FUNCTION_84();
    sub_1B1E0EDAC();
    OUTLINED_FUNCTION_34_2();
    sub_1B1DEA98C(0, qword_1EB7849B8, 0x1E696ACD0);
    sub_1B1DEA98C(0, &qword_1EB785EF0, 0x1E695FBB0);
    v22 = sub_1B1F1AD40();
    if (v22)
    {
      *(v18 + 8) = v22;
      sub_1B1E7B0BC();
      OUTLINED_FUNCTION_34_2();
      *(v18 + 16) = 0;
      type metadata accessor for LocationTrigger.TimeRange(0);
      sub_1B1E771F0(&qword_1EB785F08, type metadata accessor for LocationTrigger.TimeRange);
      sub_1B1F1B1B0();
      v23 = OUTLINED_FUNCTION_6_11();
      v24(v23);
      OUTLINED_FUNCTION_56_0();
      sub_1B1E7AFF8(v0, v18 + *(v12 + 28));
      sub_1B1E7AEB8(v18, v26);
      __swift_destroy_boxed_opaque_existential_1(v3);
      OUTLINED_FUNCTION_10_10();
      sub_1B1E7AF10(v18, v25);
      goto LABEL_4;
    }

    sub_1B1F1AFE0();
    OUTLINED_FUNCTION_13();
    sub_1B1E7B368(&qword_1EB785EF8, &qword_1EB785EE0, &qword_1B1F354D0);
    sub_1B1F1AFC0();
    swift_willThrow();
    OUTLINED_FUNCTION_56_0();
    v20 = OUTLINED_FUNCTION_6_11();
    v21(v20);
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_4:
  OUTLINED_FUNCTION_35();
}

void LocationTrigger.encode(to:)()
{
  OUTLINED_FUNCTION_34();
  v2 = v0;
  v22[2] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785F10, &qword_1B1F354D8);
  OUTLINED_FUNCTION_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_16_11();
  sub_1B1E7B068();
  OUTLINED_FUNCTION_15_13();
  v7 = *v0;
  LOBYTE(v22[0]) = 0;
  OUTLINED_FUNCTION_32_7();
  sub_1B1F1B280();
  if (v1)
  {
    goto LABEL_2;
  }

  v10 = objc_opt_self();
  v11 = *(v0 + 1);
  v22[0] = 0;
  v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:v22];
  v13 = v22[0];
  if (!v12)
  {
    v21 = v13;
    sub_1B1F1A1C0();

    swift_willThrow();
LABEL_2:
    v8 = OUTLINED_FUNCTION_8_11();
    v9(v8);
    goto LABEL_8;
  }

  v14 = sub_1B1F1A290();
  v16 = v15;

  v22[0] = v14;
  v22[1] = v16;
  sub_1B1E0EF20();
  OUTLINED_FUNCTION_32_7();
  sub_1B1F1B2B0();
  LOBYTE(v22[0]) = v2[16];
  sub_1B1E7B110();
  OUTLINED_FUNCTION_32_7();
  sub_1B1F1B2B0();
  v17 = *(type metadata accessor for LocationTrigger(0) + 28);
  LOBYTE(v22[0]) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785ED8, &qword_1B1F354C8);
  sub_1B1E7B164();
  sub_1B1F1B2B0();
  v18 = OUTLINED_FUNCTION_8_11();
  v19(v18);
  sub_1B1E03C48(v14, v16);
LABEL_8:
  v20 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_35();
}

uint64_t sub_1B1E79050(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701669236 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B1F1B510() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B1F1B510();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B1E79118(char a1)
{
  if (a1)
  {
    return 0x6E6F697461636F6CLL;
  }

  else
  {
    return 1701669236;
  }
}

uint64_t sub_1B1E79188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B1E79050(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B1E791B0(uint64_t a1)
{
  v2 = sub_1B1E7B218();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E791EC(uint64_t a1)
{
  v2 = sub_1B1E7B218();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E79228(uint64_t a1)
{
  v2 = sub_1B1E7B26C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E79264(uint64_t a1)
{
  v2 = sub_1B1E7B26C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1E792A0(uint64_t a1)
{
  v2 = sub_1B1E7B2C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1E792DC(uint64_t a1)
{
  v2 = sub_1B1E7B2C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TriggerType.encode(to:)()
{
  OUTLINED_FUNCTION_34();
  v57 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785F30, &qword_1B1F354E0);
  v6 = OUTLINED_FUNCTION_0(v5);
  v55 = v7;
  v56 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17();
  v54 = v11;
  v52 = type metadata accessor for LocationTrigger(0);
  v12 = OUTLINED_FUNCTION_10(v52);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_3();
  v53 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785F38, &qword_1B1F354E8);
  v18 = OUTLINED_FUNCTION_0(v17);
  v50 = v19;
  v51 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_30_5();
  v49 = type metadata accessor for TimeOfDayTrigger(0);
  v23 = OUTLINED_FUNCTION_10(v49);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_3();
  v28 = v27 - v26;
  v29 = type metadata accessor for TriggerType(0);
  v30 = OUTLINED_FUNCTION_10(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2_3();
  v35 = v34 - v33;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB785F40, &qword_1B1F354F0);
  OUTLINED_FUNCTION_0(v58);
  v37 = v36;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_21_4();
  v41 = v4[4];
  OUTLINED_FUNCTION_44(v4, v4[3]);
  sub_1B1E7B218();
  sub_1B1F1B830();
  OUTLINED_FUNCTION_13_7();
  sub_1B1E7AEB8(v57, v35);
  v42 = (v37 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B1E7AE0C(v35, v53);
    OUTLINED_FUNCTION_84();
    sub_1B1E7B26C();
    sub_1B1F1B240();
    OUTLINED_FUNCTION_12_7();
    sub_1B1E771F0(v43, v44);
    sub_1B1F1B2B0();
    (*(v55 + 8))(v54, v56);
    OUTLINED_FUNCTION_10_10();
    sub_1B1E7AF10(v53, v45);
  }

  else
  {
    sub_1B1E7AE0C(v35, v28);
    sub_1B1E7B2C0();
    sub_1B1F1B240();
    OUTLINED_FUNCTION_11_8();
    sub_1B1E771F0(v46, v47);
    sub_1B1F1B2B0();
    (*(v50 + 8))(v0, v51);
    OUTLINED_FUNCTION_14_13();
    sub_1B1E7AF10(v28, v48);
  }

  (*v42)(v2, v58);
  OUTLINED_FUNCTION_35();
}