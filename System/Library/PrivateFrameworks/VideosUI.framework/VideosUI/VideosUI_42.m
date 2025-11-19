uint64_t sub_1E397A700(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1E327D33C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F228);
  sub_1E4207644();

  v7 = *(*(v9 + 56) + 8 * v6);
  sub_1E4204054();
  sub_1E4207664();
  *v3 = v9;
  return v7;
}

uint64_t sub_1E397A7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1E327D33C(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F218);
    sub_1E4207644();

    v8 = *(v14 + 56);
    v9 = sub_1E41FE5D4();
    (*(*(v9 - 8) + 32))(a3, v8 + *(*(v9 - 8) + 72) * v7, v9);
    sub_1E4207664();
    *v3 = v14;
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = sub_1E41FE5D4();
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_1E397A924(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8D0);
  result = sub_1E4207724();
  v7 = result;
  if (!*(v5 + 16))
  {

LABEL_33:
    *v3 = v7;
    return result;
  }

  v34 = v2;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        sub_1E373CBF0(0, (v33 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
    goto LABEL_33;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(v5 + 48) + 40 * v18;
    if (a2)
    {
      v20 = *v19;
      v21 = *(v19 + 16);
      v38 = *(v19 + 32);
      v36 = v20;
      v37 = v21;
      sub_1E329504C((*(v5 + 56) + 32 * v18), v35);
    }

    else
    {
      sub_1E374E74C(v19, &v36);
      sub_1E328438C(*(v5 + 56) + 32 * v18, v35);
    }

    result = sub_1E42073F4();
    v22 = -1 << *(v7 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v7 + 48) + 40 * v25;
    v31 = v36;
    v32 = v37;
    *(v30 + 32) = v38;
    *v30 = v31;
    *(v30 + 16) = v32;
    result = sub_1E329504C(v35, (*(v7 + 56) + 32 * v25));
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v14 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1E397ABD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1E327D33C(a4, a5);
  if (__OFADD__(v12[2], (v14 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v13;
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F360);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = sub_1E327D33C(a4, a5);
  if ((v16 & 1) != (v18 & 1))
  {
LABEL_13:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v15 = v17;
LABEL_5:
  v19 = *v6;
  if (v16)
  {
    v20 = (v19[7] + 24 * v15);
    *v20 = a1;
    v20[1] = a2;
    v20[2] = a3;
  }

  else
  {
    sub_1E397B000(v15, a4, a5, a1, a2, a3, v19);
  }
}

uint64_t sub_1E397AD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1E327D33C(a2, a3);
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F228);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1E327D33C(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    *(v15[7] + 8 * v11) = a1;
  }

  else
  {
    sub_1E377E1B0(v11, a2, a3, a1, v15);
  }
}

uint64_t sub_1E397AE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1E327D33C(a2, a3);
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F218);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1E327D33C(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = v15[7];
    v17 = sub_1E41FE5D4();
    v18 = *(v17 - 8);
    v19 = *(v18 + 40);
    v20 = v17;
    v21 = v16 + *(v18 + 72) * v11;

    return v19(v21, a1, v20);
  }

  else
  {
    sub_1E397B054(v11, a2, a3, a1, v15);
  }
}

unint64_t sub_1E397B000(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = (a7[7] + 24 * result);
  *v8 = a4;
  v8[1] = a5;
  v8[2] = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t sub_1E397B054(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1E41FE5D4();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1E397B104(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1E397B708(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1E397B230(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v56 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v47 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;

    v15 = 0;
    v49 = v12;
    v50 = v7;
    v51 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        sub_1E4207B44();

        sub_1E4206014();
        v20 = sub_1E4207BA4();
        v21 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v20 & v21;
          v4 = (v20 & v21) >> 6;
          v8 = 1 << (v20 & v21);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v22 = (*(v5 + 48) + 16 * v7);
          v23 = *v22 == v3 && v22[1] == v2;
          if (v23 || (sub_1E42079A4() & 1) != 0)
          {
            v53 = v47;
            v54 = v16;
            v55 = v11;
            v3 = v50;
            v12 = v51;
            v52[0] = v51;
            v52[1] = v50;

            v25 = *(v5 + 32);
            v44 = ((1 << v25) + 63) >> 6;
            v2 = 8 * v44;
            if ((v25 & 0x3Fu) > 0xD)
            {
              goto LABEL_48;
            }

            while (1)
            {
              v45 = &v43;
              MEMORY[0x1EEE9AC00](v24);
              v7 = &v43 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v26 = *(v7 + 8 * v4) & ~v8;
              v27 = *(v5 + 16);
              v48 = v7;
              *(v7 + 8 * v4) = v26;
              v28 = v27 - 1;
              v29 = v49;
              while (1)
              {
                v46 = v28;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v31 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v32 = (*(v12 + 48) + ((v16 << 10) | (16 * v31)));
                v2 = *v32;
                v33 = v32[1];
                sub_1E4207B44();

                sub_1E4206014();
                v34 = sub_1E4207BA4();
                v35 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v34 & v35;
                  v7 = (v34 & v35) >> 6;
                  v8 = 1 << (v34 & v35);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v50;
                    v12 = v51;
                    v29 = v49;
                    goto LABEL_24;
                  }

                  v36 = (*(v5 + 48) + 16 * v4);
                  if (*v36 == v2 && v36[1] == v33)
                  {
                    break;
                  }

                  v38 = sub_1E42079A4();
                  v34 = v4 + 1;
                }

                while ((v38 & 1) == 0);

                v39 = v48[v7];
                v48[v7] = v39 & ~v8;
                v3 = v50;
                v12 = v51;
                v29 = v49;
                if ((v39 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v28 = v46 - 1;
                if (__OFSUB__(v46, 1))
                {
                  __break(1u);
                }

                if (v46 == 1)
                {

                  v5 = MEMORY[0x1E69E7CD0];
                  goto LABEL_44;
                }
              }

              while (1)
              {
                v30 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v30 >= v29)
                {
                  v5 = sub_1E38689E8(v48, v44, v46, v5);
                  goto LABEL_44;
                }

                v11 = *(v3 + 8 * v30);
                ++v16;
                if (v11)
                {
                  v16 = v30;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v41 = swift_slowAlloc();
            v42 = sub_1E397BA1C(v41, v44, (v5 + 56), v44, v5, v7, v52);

            MEMORY[0x1E69143B0](v41, -1, -1);
            v47 = v53;
            v5 = v42;
            goto LABEL_44;
          }

          v20 = v7 + 1;
        }

        v15 = v16;
        v7 = v50;
        v14 = v51;
        v12 = v49;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_47;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_44:
    sub_1E34AF4DC();
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v5;
}

uint64_t sub_1E397B708(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1E4207B44();
  sub_1E4206014();
  v6 = sub_1E4207BA4();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_1E42079A4() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1E377EB28();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_1E397BAA4(v8);
  *v2 = v15;
  return v13;
}

uint64_t sub_1E397B830(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    sub_1E4207B44();

    sub_1E4206014();
    v16 = sub_1E4207BA4();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = sub_1E42079A4();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = v27[v19];
    v27[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_1E38689E8(v27, a2, v26, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1E397BA1C(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1E397B830(a1, a2, a5, a6, a7);

  return v12;
}

unint64_t sub_1E397BAA4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1E4207304();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1E4207B44();

        sub_1E4206014();
        v10 = sub_1E4207BA4();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1E397BC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1E374E74C(a3, a1);

  return sub_1E328438C(a4, a2);
}

uint64_t sub_1E397BCB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_1E394CDB0(a1, a2, a3, v36);
  v34[2] = v36[0];
  v34[3] = v36[1];
  v34[4] = v36[2];
  v35 = v37;

  while (1)
  {
    sub_1E397C154(&v31);
    if (!*(&v32 + 1))
    {
      sub_1E34AF4DC();
    }

    v28 = v31;
    v29 = v32;
    v30 = v33;
    sub_1E329504C(v34, v27);
    v7 = *a5;
    v9 = sub_1E375D924(&v28);
    v10 = *(v7 + 16);
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      break;
    }

    v13 = v8;
    if (*(v7 + 24) >= v12)
    {
      if (a4)
      {
        if (v8)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CCF0);
        sub_1E4207654();
        if (v13)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1E397A924(v12, a4 & 1);
      v14 = sub_1E375D924(&v28);
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_18;
      }

      v9 = v14;
      if (v13)
      {
LABEL_10:
        v16 = *a5;
        sub_1E328438C(*(*a5 + 56) + 32 * v9, v26);
        __swift_destroy_boxed_opaque_existential_1(v27);
        sub_1E375D84C(&v28);
        v17 = (*(v16 + 56) + 32 * v9);
        __swift_destroy_boxed_opaque_existential_1(v17);
        sub_1E329504C(v26, v17);
        goto LABEL_14;
      }
    }

    v18 = *a5;
    *(*a5 + 8 * (v9 >> 6) + 64) |= 1 << v9;
    v19 = v18[6] + 40 * v9;
    v20 = v28;
    v21 = v29;
    *(v19 + 32) = v30;
    *v19 = v20;
    *(v19 + 16) = v21;
    sub_1E329504C(v27, (v18[7] + 32 * v9));
    v22 = v18[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_17;
    }

    v18[2] = v24;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

uint64_t sub_1E397BF30(void *a1)
{
  v2 = [a1 doNotPurgeList];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E42062B4();

  return v3;
}

uint64_t sub_1E397BF94(void *a1)
{
  v1 = [a1 vuiViewControllerIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205F14();

  return v3;
}

uint64_t sub_1E397BFF8(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

_OWORD *sub_1E397C154@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    sub_1E374E74C(*(v3 + 48) + 40 * v10, &v14);
    sub_1E328438C(*(v3 + 56) + 32 * v10, v19);
    v20 = v14;
    v21 = v15;
    *&v22 = v16;
    result = sub_1E329504C(v19, (&v22 + 8));
    v12 = *(&v21 + 1);
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v12)
    {
      v13 = v1[5];
      v14 = v20;
      *&v15 = v21;
      *(&v15 + 1) = v12;
      v16 = v22;
      v17 = v23;
      v18 = v24;
      v13(&v14);
      return sub_1E325F6F0(&v14, &qword_1ECF28E40);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v12 = 0;
        v9 = 0;
        v24 = 0;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E397C2CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *, uint64_t))
{
  v12[3] = a4;
  v12[4] = a5;
  __swift_allocate_boxed_opaque_existential_1(v12);
  OUTLINED_FUNCTION_37_1();
  (*(v9 + 32))();
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return a6(v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1E397C370(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F208);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E397C3E4()
{
  result = qword_1EE26A000[0];
  if (!qword_1EE26A000[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE26A000);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RootSplitViewManager.Mode(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E397C514(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E397C568(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1E397C5D8()
{
  v1 = [*(v0 + 16) popToRootViewControllerAnimated_];
}

uint64_t sub_1E397C618()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    *(Strong + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_preloadedImageViewModelsMap) = v1;
  }

  return v2();
}

uint64_t OUTLINED_FUNCTION_58_13()
{

  return sub_1E4205E84();
}

double OUTLINED_FUNCTION_94_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return sub_1E3277E60(a1, a2, v11, &a11);
}

uint64_t OUTLINED_FUNCTION_108_5(uint64_t a1, uint64_t a2)
{
  *(v2 - 240) = a1;
  *(v2 - 232) = a2;
  return v2 - 240;
}

uint64_t OUTLINED_FUNCTION_127_4(uint64_t a1)
{
  v4 = *(v1 + 56) + 32 * a1;

  return sub_1E328438C(v4, v2 - 232);
}

uint64_t OUTLINED_FUNCTION_128_4(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1E325F6F0(va, v2);
}

void OUTLINED_FUNCTION_144_3(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);
  *(v4 + 16) = v1;
  *(v4 + 8 * v2 + 32) = v3;
}

void OUTLINED_FUNCTION_150_4(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

double OUTLINED_FUNCTION_152_3()
{
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  return result;
}

void OUTLINED_FUNCTION_170_1()
{

  sub_1E3976970();
}

uint64_t OUTLINED_FUNCTION_171_1()
{

  return sub_1E4207414();
}

id OUTLINED_FUNCTION_173_1(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_1E397C978(char a1)
{
  type metadata accessor for TextLayout();
  *(v1 + 104) = sub_1E383BCC0();
  type metadata accessor for ImageLayout();
  *(v1 + 112) = sub_1E3BD61D8();
  *(v1 + 120) = a1 & 1;
  v3 = sub_1E3C2F9A0();

  sub_1E397C9F4();

  return v3;
}

uint64_t sub_1E397C9F4()
{
  v1 = v0;
  v2 = objc_opt_self();
  (*(*v0 + 752))([v2 clearColor]);
  sub_1E3280A90(0, &qword_1EE23AE20);
  v3 = sub_1E4206F24();
  v4 = [v3 colorWithAlphaComponent_];

  OUTLINED_FUNCTION_9_2();
  (*(v5 + 680))(v4);
  OUTLINED_FUNCTION_9_2();
  v7 = *(v6 + 1712);
  v7();
  OUTLINED_FUNCTION_2_1();
  (*(v8 + 1696))(22);

  (v7)(v9);
  OUTLINED_FUNCTION_2_1();
  (*(v10 + 1792))(5);

  v12 = (v7)(v11);
  OUTLINED_FUNCTION_9_2();
  v14 = *(v13 + 672);
  v15 = v14();
  (*(*v12 + 680))(v15);

  OUTLINED_FUNCTION_9_2();
  v17 = *(v16 + 1736);
  v18 = v17();
  v19 = v14();
  (*(*v18 + 680))(v19);

  LOBYTE(v18) = *(v1 + 120);
  (v17)(v20);
  sub_1E3952C58();
  OUTLINED_FUNCTION_6_22();
  (*(v21 + 160))(v39);

  if (v18)
  {
    v23 = (v17)(v22);
    v24 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDDC8] scale:3];
  }

  else
  {
    v23 = (v17)(v22);
    sub_1E3280A90(0, &qword_1ECF29388);
    v25 = sub_1E4206E84();
    v24 = [objc_opt_self() configurationWithFont_];
  }

  (*(*v23 + 1952))(v24);

  v26 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
  v27 = [v2 blackColor];
  v28 = [v27 colorWithAlphaComponent_];

  [v26 setShadowColor_];
  [v26 setShadowOffset_];
  (v7)([v26 setShadowBlurRadius_]);
  OUTLINED_FUNCTION_2_1();
  v30 = *(v29 + 608);
  v31 = v26;
  v30(v26);

  (v17)(v32);
  OUTLINED_FUNCTION_2_1();
  (*(v33 + 608))(v26);

  v35 = (v7)(v34);
  sub_1E3C37CBC(v35, 23);

  v37 = (v17)(v36);
  sub_1E3C37CBC(v37, 39);
}

uint64_t sub_1E397D068()
{
  type metadata accessor for TextLayout();
  *(v0 + 104) = sub_1E383BCC0();
  type metadata accessor for ImageLayout();
  *(v0 + 112) = sub_1E3BD61D8();
  *(v0 + 120) = 0;
  v1 = sub_1E3C2F9A0();

  sub_1E397C9F4();

  return v1;
}

uint64_t sub_1E397D0D4()
{
  v0 = sub_1E37BD5C4();

  return MEMORY[0x1EEE6BDC0](v0, 121, 7);
}

unint64_t sub_1E397D108()
{
  result = qword_1ECF2F3D0;
  if (!qword_1ECF2F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2F3D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PageSwipeUpViewLayout.Host(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E397D25C()
{
  v3[3] = &unk_1F5D5D6D8;
  v3[4] = &off_1F5D5C8B8;
  LOBYTE(v3[0]) = 3;
  v0 = sub_1E39C29F0(v3, 0);
  __swift_destroy_boxed_opaque_existential_1(v3);
  if (v0)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1E397D2C8();
  }

  return v1 & 1;
}

id sub_1E397D2C8()
{
  LOBYTE(v6) = 5;
  (*(*v0 + 776))(v7, &v6, &unk_1F5D5D6D8, &off_1F5D5C8B8);
  if (!v7[3])
  {
    sub_1E329505C(v7);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v6 + 16))
  {

    return 0;
  }

  v1 = [objc_opt_self() defaultMediaLibrary];
  v2 = objc_opt_self();
  v3 = sub_1E42062A4();

  v4 = [v2 vui:v1 hasEpisodesInSeasonsQueryWithMediaLibrary:v3 seasonCanonicalIds:?];

  return v4;
}

__n128 sub_1E397D420@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>, double a11@<D5>)
{
  v11 = *(a4 + 32) & 1;
  *a5 = a1;
  *(a5 + 8) = a6;
  *(a5 + 16) = a7;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  result = *a4;
  v13 = *(a4 + 16);
  *(a5 + 40) = *a4;
  *(a5 + 56) = v13;
  *(a5 + 72) = v11;
  *(a5 + 80) = a8;
  *(a5 + 88) = a9;
  *(a5 + 96) = a10;
  *(a5 + 104) = a11;
  return result;
}

double sub_1E397D470()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_padding;
  OUTLINED_FUNCTION_5_0();
  return *v1;
}

uint64_t sub_1E397D4B4()
{
  OUTLINED_FUNCTION_0_8();
  v5 = (v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_padding);
  result = OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  v5[1] = v3;
  v5[2] = v2;
  v5[3] = v1;
  return result;
}

uint64_t sub_1E397D594(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI11OverlayView_badgeViewWrappers;
  OUTLINED_FUNCTION_3_0();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      v7 = *v6;
      v6 += 14;
      [v7 vui_removeFromSuperView];
      --v5;
    }

    while (v5);
  }

  else
  {
    v8 = OBJC_IVAR____TtC8VideosUI11OverlayView_badgeViewWrappers;
    OUTLINED_FUNCTION_5_0();
    if (!*(*&v1[v8] + 16))
    {
    }
  }

  v9 = OBJC_IVAR____TtC8VideosUI11OverlayView_badgeViewWrappers;
  OUTLINED_FUNCTION_5_0();
  v10 = *(*&v1[v9] + 16);
  if (v10)
  {
    v11 =  + 64;
    do
    {
      v12 = *(v11 - 32);

      v13 = v12;
      if ([v1 vuiDebugUI])
      {
        v14 = [objc_opt_self() randomColor];
        [v13 setVuiBackgroundColor_];
      }

      v11 += 112;
      [v1 vui:v13 addSubview:0 oldView:?];

      --v10;
    }

    while (v10);
  }

  [v1 vui_setNeedsLayout];
}

uint64_t sub_1E397D730()
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_9(v3);
  v4 = OBJC_IVAR____TtC8VideosUI11OverlayView_badgeViewWrappers;
  OUTLINED_FUNCTION_4_13();
  *(v1 + 24) = *(v0 + v4);

  return OUTLINED_FUNCTION_27_0();
}

void sub_1E397D798(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    sub_1E397D594(v4);
  }

  else
  {
    sub_1E397D594(v3);
  }

  free(v2);
}

uint64_t sub_1E397D7FC()
{
  v1 = OBJC_IVAR____TtC8VideosUI11OverlayView_overlayType;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

id sub_1E397D830(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI11OverlayView_overlayType;
  OUTLINED_FUNCTION_3_0();
  v1[v3] = a1;
  return [v1 vui_setNeedsDisplay];
}

id (*sub_1E397D888(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E397D8DC;
}

id sub_1E397D8DC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 vui_setNeedsDisplay];
  }

  return result;
}

void *sub_1E397D930()
{
  v1 = OBJC_IVAR____TtC8VideosUI11OverlayView_gradientLayer;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E397D96C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI11OverlayView_gradientLayer;
  OUTLINED_FUNCTION_3_0();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  v6 = OBJC_IVAR____TtC8VideosUI11OverlayView_gradientLayer;
  v7 = a1;
  OUTLINED_FUNCTION_5_0();
  v8 = *(v2 + v6);
  if (!v8)
  {
    if (!v5)
    {
LABEL_10:
      v10 = v5;
      goto LABEL_11;
    }

LABEL_6:
    v12 = [v5 removeFromSuperlayer];
    v13 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xF0))(v12);
    if (v13)
    {
      v14 = v13;
      v15 = *(v2 + v6);
      if (v15)
      {
        v16 = v15;
        [v14 bounds];
        [v16 setFrame_];
        v17 = [v14 vuiLayer];
        [v17 addSublayer_];
      }
    }

    goto LABEL_10;
  }

  if (!v5)
  {
    goto LABEL_6;
  }

  sub_1E3280A90(0, &qword_1EE23AE70);
  v9 = v8;
  v10 = v5;
  v11 = sub_1E4206F64();

  if ((v11 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_11:
  [v2 vui_setNeedsLayout];
}

uint64_t sub_1E397DB14()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E397DB90()
{
  v1 = OBJC_IVAR____TtC8VideosUI11OverlayView_gradientView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E397DBCC(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI11OverlayView_gradientView;
  OUTLINED_FUNCTION_3_0();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = OBJC_IVAR____TtC8VideosUI11OverlayView_gradientView;
  v6 = a1;
  OUTLINED_FUNCTION_5_0();
  v7 = *&v1[v5];
  v8 = [v1 vuiSubviews];
  sub_1E3280A90(0, &qword_1EE23AE80);
  v9 = sub_1E42062B4();

  if (!sub_1E32AE9B0(v9))
  {
    v11 = 0;
    goto LABEL_7;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1E6911E60](0, v9);
    goto LABEL_5;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v9 + 32);
LABEL_5:
    v11 = v10;
LABEL_7:

    [v1 vui:v7 insertSubview:v11 belowSubview:v4 oldView:?];

    return;
  }

  __break(1u);
}

uint64_t sub_1E397DD08()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E397DD84(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

void *sub_1E397DE04()
{
  v1 = OBJC_IVAR____TtC8VideosUI11OverlayView_titleLabel;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E397DE4C()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E397DEC8()
{
  v1 = OBJC_IVAR____TtC8VideosUI11OverlayView_textBadge;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1E397DF10()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E397DF8C()
{
  v1 = OBJC_IVAR____TtC8VideosUI11OverlayView_progressView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E397DFD4(void *a1, uint64_t *a2)
{
  v5 = *a2;
  OUTLINED_FUNCTION_3_0();
  v6 = *&v2[v5];
  *&v2[v5] = a1;
  v7 = *a2;
  v8 = a1;
  OUTLINED_FUNCTION_5_0();
  [v2 vui:*&v2[v7] addSubview:v6 oldView:?];
}

uint64_t sub_1E397E060()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

id sub_1E397E0DC()
{
  OUTLINED_FUNCTION_0_8();
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_padding);
  v2 = *(MEMORY[0x1E69DDCE0] + 16);
  *v1 = *MEMORY[0x1E69DDCE0];
  v1[1] = v2;
  *(v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_badgeViewWrappers) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_overlayType) = 9;
  *(v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_gradientLayer) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_gradientView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_textBadge) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_progressView) = 0;
  v7 = type metadata accessor for OverlayView();
  v3 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v4, v5, v3, v0, v7);
}

void sub_1E397E1F0()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_padding);
  v2 = *(MEMORY[0x1E69DDCE0] + 16);
  *v1 = *MEMORY[0x1E69DDCE0];
  v1[1] = v2;
  *(v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_badgeViewWrappers) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_overlayType) = 9;
  *(v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_gradientLayer) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_gradientView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_textBadge) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_progressView) = 0;
  sub_1E42076B4();
  __break(1u);
}

double sub_1E397E2E0(char a1, double a2, double a3)
{
  v4 = v3;
  v150.receiver = v4;
  v150.super_class = type metadata accessor for OverlayView();
  v139 = a2;
  objc_msgSendSuper2(&v150, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  v8 = [v4 bounds];
  v10 = v9;
  v12 = v11;
  v13 = MEMORY[0x1E69E7D40];
  v14 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x90))(v8);
  v16 = v15;
  v136 = v17;
  v138 = *((*v13 & *v4) + 0x108);
  v138();
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v147 = OUTLINED_FUNCTION_7_81();
  v148 = v147;
  v145 = v16;
  v146 = v147;
  if (v21)
  {
    v22 = v21;
    v23 = v12;
    v24 = [v21 textLayout];
    [v24 margin];
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v31 = v10 - v26 - v30;
    [v22 sizeThatFits_];
    v20 = v32;
    v148 = v31;
    VUIRoundValue();
    v146 = v33;
    OUTLINED_FUNCTION_87();
    v35 = *(v34 + 192);
    v35();
    OUTLINED_FUNCTION_14_61();
    if (!v64)
    {
      sub_1E397ED98();
      if (OUTLINED_FUNCTION_5_77())
      {
        v12 = v23;
        VUIRoundValue();
        v147 = v36;
        OUTLINED_FUNCTION_7_81();
LABEL_18:

        v16 = v145;
        goto LABEL_19;
      }
    }

    v12 = v23;
    if (((v35)() == 9 || (sub_1E397ED98(), (OUTLINED_FUNCTION_5_77() & 1) == 0)) && ((v35(), OUTLINED_FUNCTION_14_61(), v64) || (sub_1E397ED98(), (OUTLINED_FUNCTION_5_77() & 1) == 0)))
    {
      v35();
      OUTLINED_FUNCTION_14_61();
      if (v64)
      {
        v147 = OUTLINED_FUNCTION_7_81();
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_17_44(v41);
      OUTLINED_FUNCTION_5_77();
      v147 = OUTLINED_FUNCTION_7_81();
      if ((v42 & 1) == 0)
      {
        goto LABEL_18;
      }

      [v22 sizeThatFits_];
      v20 = v43;
      [v22 bottomMarginWithBaselineMargin_];
      v12 = v23;
      VUIRoundValue();
      v147 = v44;
      v140 = v23 + -145.0;
      OUTLINED_FUNCTION_87();
      v39 = (*(v45 + 240))();
      v149 = 145.0;
      if (!v39)
      {
        goto LABEL_11;
      }
    }

    else
    {
      [v22 bottomMarginWithBaselineMargin_];
      VUIRoundValue();
      v147 = v37;
      v149 = v23 * 0.28;
      v140 = v23 - v23 * 0.28;
      OUTLINED_FUNCTION_87();
      v39 = (*(v38 + 240))();
      if (!v39)
      {
LABEL_11:
        v19 = v10;
        goto LABEL_18;
      }
    }

    v40 = v39;
    [v4 vui:v39 sendSubviewToBack:?];

    goto LABEL_11;
  }

LABEL_19:
  OUTLINED_FUNCTION_87();
  v137 = *(v46 + 288);
  v47 = v137();
  v48 = 0.0;
  v143 = 0.0;
  v49 = 0.0;
  if (v47)
  {
    v50 = v47;
    [v47 vui_sizeThatFits_];
    v18 = v51;
    v143 = v52;
    OUTLINED_FUNCTION_87();
    (*(v53 + 192))();
    OUTLINED_FUNCTION_14_61();
    if (v64)
    {

      v49 = v16;
      v48 = v14;
    }

    else
    {
      OUTLINED_FUNCTION_17_44(v54);
      v55 = OUTLINED_FUNCTION_5_77();

      if (v55)
      {
        v49 = 30.0;
      }

      else
      {
        v49 = v16;
      }

      v48 = 40.0;
      if ((v55 & 1) == 0)
      {
        v48 = v14;
      }
    }
  }

  v141 = v48;
  v142 = v49;
  v144 = v20;
  v56 = (*((*v13 & *v4) + 0xA8))();
  v57 = *(v56 + 16);
  if (v57)
  {
    v58 = v56 + 136;
    do
    {
      v59 = *(v58 - 104);
      v61 = *(v58 - 80);
      v60 = *(v58 - 72);
      v62 = sub_1E4205F14();
      if (v60)
      {
        v64 = v61 == v62 && v60 == v63;
        if (v64)
        {
          v68 = v59;

LABEL_39:
          v19 = v10;
          OUTLINED_FUNCTION_16_1();
          v70 = (*(v69 + 240))();
          if (v70)
          {
            v71 = v70;
            [v4 vui:v70 sendSubviewToBack:?];
          }

          v149 = v12;
          goto LABEL_42;
        }

        v65 = sub_1E42079A4();
        v66 = v59;

        if (v65)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v67 = v59;
      }

LABEL_42:
      if ([v4 vuiIsRTL])
      {
        OUTLINED_FUNCTION_19_44();
        VUIRectWithFlippedOriginRelativeToBoundingRect();
      }

      v72 = OUTLINED_FUNCTION_19_44();
      [v73 v74];

      v58 += 112;
      --v57;
    }

    while (v57);
  }

  OUTLINED_FUNCTION_16_1();
  v76 = (*(v75 + 312))();
  v77 = v18;
  if (v76)
  {
    v78 = v10 - v145 - v136;
    v79 = v76;
    [v79 vui:v78 sizeThatFits:0.0];
    VUIRoundValue();
    v81 = v80;
    v82 = 2.0;
    if ([v4 vuiIsRTL])
    {
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v145 = v83;
      v81 = v84;
      v78 = v85;
      v82 = v86;
      v87 = [v79 vuiLayer];
      if (v87)
      {
        v88 = v87;
        [v87 setFlipsHorizontalAxis_];
      }
    }

    [v79 setFrame_];
  }

  OUTLINED_FUNCTION_16_1();
  v90 = (*(v89 + 240))();
  if (v90)
  {
    v91 = v90;
    [v90 setFrame_];
  }

  OUTLINED_FUNCTION_16_1();
  v93 = *(v92 + 216);
  v94 = v93();
  if (v94)
  {
    v95 = v94;
    v96 = OUTLINED_FUNCTION_20_48();
    sub_1E3D54B34(v96, v97, v98, v99);
  }

  v100 = v93();
  if (v100)
  {
    v101 = v100;
    v102 = [v100 mask];
    if (v102)
    {

      v103 = [v101 mask];
      if (v103)
      {
        v104 = v103;
        v105 = OUTLINED_FUNCTION_20_48();
        [v106 v107];
      }
    }
  }

  v108 = [v4 vuiIsRTL];
  if (v108)
  {
    OUTLINED_FUNCTION_21_40();
    v146 = v109;
    v147 = v110;
    v148 = v111;
    v144 = v112;
    v108 = OUTLINED_FUNCTION_21_40();
    v141 = v114;
    v142 = v113;
    v77 = v115;
    v117 = v116;
    v118 = v137;
  }

  else
  {
    v118 = v137;
    v117 = v143;
  }

  v119 = (v138)(v108);
  if (v119)
  {
    v120 = v119;
    [v119 setFrame_];
  }

  v121 = v118();
  if (v121)
  {
    v122 = v121;
    [v121 setFrame_];
  }

  OUTLINED_FUNCTION_16_1();
  (*(v123 + 192))();
  OUTLINED_FUNCTION_14_61();
  if (!v64)
  {
    OUTLINED_FUNCTION_17_44(v124);
    if (OUTLINED_FUNCTION_5_77())
    {
      v125 = v118();
      if (v125)
      {
        v126 = v125;
        v127 = [v125 vuiLayer];

        [v127 removeAllAnimations];
      }
    }
  }

  v128 = [v4 vuiLayer];
  if (v128 && (v129 = v128, [v128 cornerRadius], v131 = v130, v129, v131 > 0.0))
  {
    v132 = [v4 vuiLayer];
    if (v132)
    {
      v133 = v132;
      [v132 setMasksToBounds_];
LABEL_76:
    }
  }

  else
  {
    v134 = [v4 vuiLayer];
    if (v134)
    {
      v133 = v134;
      [v134 setMasksToBounds_];
      goto LABEL_76;
    }
  }

  return v139;
}

unint64_t sub_1E397ED98()
{
  result = qword_1EE284198;
  if (!qword_1EE284198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE284198);
  }

  return result;
}

id sub_1E397EEC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OverlayView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E397EF90(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1E397EFD0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t (*sub_1E397F040(uint64_t (*result)(void), uint64_t a2, char a3))(void)
{
  if ((a3 & 1) == 0)
  {
    return result();
  }

  return result;
}

uint64_t sub_1E397F070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v6 = *(*a1 + 392);

    v8 = v6(v7);
    if (!v8)
    {
      type metadata accessor for ViewLayout();
      v8 = sub_1E3C2F968();
    }

    v5 = v8;
  }

  result = TVAppFeature.isEnabled.getter(10);
  *a3 = a1;
  *(a3 + 8) = v5;
  *(a3 + 16) = sub_1E397F128;
  *(a3 + 24) = a1;
  *(a3 + 32) = 0;
  return result;
}

uint64_t sub_1E397F128()
{
  type metadata accessor for ContextMenuController(0);

  return sub_1E4060588();
}

uint64_t sub_1E397F160@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F418);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  sub_1E397F35C();
  if (TVAppFeature.isEnabled.getter(10))
  {
    v8 = *(v1 + 8);
    if (*v8 == _TtC8VideosUI23ContextMenuButtonLayout)
    {
      OUTLINED_FUNCTION_5_0();
      v2 = -*(v8 + 208);
      v3 = -*(v8 + 216);
      v12.n128_u64[0] = *(v8 + 232);
      v4 = -*(v8 + 224);
    }

    else
    {
      v13 = objc_opt_self();
      v14 = [v13 isMac];
      v15 = MEMORY[0x1E69DDCE0];
      v16 = *MEMORY[0x1E69DDCE0];
      v17 = [v13 isMac];
      v18 = *(v15 + 8);
      v19 = [v13 isMac];
      if (v14)
      {
        v2 = -v16;
      }

      else
      {
        v2 = -25.0;
      }

      if (v17)
      {
        v3 = -v18;
      }

      else
      {
        v3 = -25.0;
      }

      if (v19)
      {
        v4 = -*(v15 + 16);
      }

      else
      {
        v4 = -25.0;
      }

      v20 = [v13 isMac];
      v12.n128_u64[0] = *(v15 + 24);
      if (!v20)
      {
        v12.n128_f64[0] = 25.0;
      }
    }

    v11.n128_f64[0] = -v12.n128_f64[0];
    v12.n128_f64[0] = v2;
    v9.n128_f64[0] = v3;
    v10.n128_f64[0] = v4;
    j_nullsub_1(v12, v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  v21 = OUTLINED_FUNCTION_41_8();
  v22 = OUTLINED_FUNCTION_16_0();
  sub_1E32BCDA8(v22, v23);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F420);
  v25 = a1 + *(result + 36);
  *v25 = v21;
  *(v25 + 8) = v2;
  *(v25 + 16) = v3;
  *(v25 + 24) = v4;
  *(v25 + 32) = v5;
  *(v25 + 40) = 0;
  return result;
}

void sub_1E397F35C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F4B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_2();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F4A8);
  OUTLINED_FUNCTION_0_10();
  v43 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v46 = v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F5F0);
  OUTLINED_FUNCTION_0_10();
  v41 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v40 = v10;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F4A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v38 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F490);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v45 = v14;
  v15 = *(v2 + 8);
  v51 = *(v2 + 16);
  v52 = *(v2 + 32);
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_32_33(v16);

  sub_1E3743538(&v51, &v47, &qword_1ECF2C5D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F5F8);
  sub_1E39850BC();
  sub_1E39851F8();
  sub_1E4202AF4();
  KeyPath = swift_getKeyPath();
  v18 = v0 + *(v3 + 36);
  *v18 = KeyPath;
  *(v18 + 8) = 2;
  if (*v15 == _TtC8VideosUI23ContextMenuButtonLayout)
  {
    OUTLINED_FUNCTION_5_0();
    LOBYTE(v47) = *(v15 + 201);
    sub_1E389115C();
    sub_1E4205E84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F4C0);
    v19 = sub_1E3983BD4();
    v20 = sub_1E42023E4();
    OUTLINED_FUNCTION_0_92();
    v23 = sub_1E39849B0(v21, v22);
    v47 = v3;
    v48 = v20;
    v49 = v19;
    v50 = v23;
    OUTLINED_FUNCTION_6_62();
    OUTLINED_FUNCTION_47_17();
    OUTLINED_FUNCTION_12_55();
    sub_1E3E359E8();
    sub_1E325F69C(v0, &qword_1ECF2F4B8);
    LOBYTE(v47) = *(v15 + 201);
    v24 = sub_1E4205E84();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F4C0);
    v25 = sub_1E3983BD4();
    v20 = sub_1E42023E4();
    OUTLINED_FUNCTION_0_92();
    v28 = sub_1E39849B0(v26, v27);
    v47 = v3;
    v48 = v20;
    v49 = v25;
    v50 = v28;
    OUTLINED_FUNCTION_6_62();
    OUTLINED_FUNCTION_47_17();
    OUTLINED_FUNCTION_12_55();
    sub_1E3E359E8();
    v24 = sub_1E325F69C(v0, &qword_1ECF2F4B8);
  }

  MEMORY[0x1EEE9AC00](v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F4B0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4C0);
  v30 = sub_1E3983BD4();
  sub_1E42023E4();
  OUTLINED_FUNCTION_0_92();
  v33 = sub_1E39849B0(v31, v32);
  v47 = v3;
  v48 = v20;
  v49 = v30;
  v50 = v33;
  OUTLINED_FUNCTION_6_62();
  v34 = OUTLINED_FUNCTION_47_17();
  v47 = v3;
  v48 = v29;
  v49 = v30;
  v50 = v34;
  OUTLINED_FUNCTION_16_47();
  OUTLINED_FUNCTION_47_17();
  sub_1E3983CB8();
  sub_1E3E359E8();
  (*(v43 + 8))(v46, v44);
  (*(v41 + 32))(v38, v40, v42);
  *(v38 + *(v39 + 36)) = 1;
  sub_1E398018C();
  sub_1E325F69C(v38, &qword_1ECF2F4A0);
  v35 = swift_allocObject();
  OUTLINED_FUNCTION_32_33(v35);
  swift_retain_n();

  sub_1E3743538(&v51, &v47, &qword_1ECF2C5D0);
  type metadata accessor for ViewModel();
  sub_1E3983898();
  OUTLINED_FUNCTION_2_78();
  sub_1E39849B0(v36, v37);
  sub_1E4203524();

  sub_1E325F69C(v45, &qword_1ECF2F490);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E397FAE4()
{
  type metadata accessor for ContextMenuController(0);
  OUTLINED_FUNCTION_1_104();
  sub_1E39849B0(v0, v1);
  OUTLINED_FUNCTION_32_0();

  return sub_1E42010C4();
}

uint64_t sub_1E397FB4C()
{
  v1 = sub_1E42023E4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E42023D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F4B8);
  sub_1E3983BD4();
  OUTLINED_FUNCTION_0_92();
  sub_1E39849B0(v5, v6);
  OUTLINED_FUNCTION_29_29();
  sub_1E42035C4();
  return (*(v3 + 8))(v0, v1);
}

void sub_1E397FC64()
{
  OUTLINED_FUNCTION_31_1();
  v55 = v2;
  v50 = v3;
  v58 = v4;
  v56 = sub_1E4201534();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v57 = (v7 - v6);
  sub_1E42014E4();
  OUTLINED_FUNCTION_0_10();
  v51 = v8;
  v52 = v9;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v48 = v11 - v10;
  v12 = sub_1E4201264();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F4D8);
  OUTLINED_FUNCTION_0_10();
  v49 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F620);
  OUTLINED_FUNCTION_0_10();
  v53 = v21;
  v54 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_14_5();
  sub_1E4201254();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F4A8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4B8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4C0);
  v26 = sub_1E3983BD4();
  v27 = sub_1E42023E4();
  OUTLINED_FUNCTION_0_92();
  v30 = sub_1E39849B0(v28, v29);
  v59 = v24;
  v60 = v27;
  v61 = v26;
  v62 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = v24;
  v60 = v25;
  v61 = v26;
  v62 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_16_47();
  v32 = swift_getOpaqueTypeConformance2();
  v33 = sub_1E39849B0(&qword_1EE289CE0, MEMORY[0x1E697C150]);
  OUTLINED_FUNCTION_125();
  sub_1E42035C4();
  (*(v14 + 8))(v0, v12);
  v34 = v48;
  sub_1E42014D4();
  v59 = v23;
  v60 = v12;
  v61 = v32;
  v62 = v33;
  swift_getOpaqueTypeConformance2();
  sub_1E39849B0(&qword_1EE289408, MEMORY[0x1E697C248]);
  v35 = v47;
  v36 = v51;
  sub_1E4202D94();
  (*(v52 + 8))(v34, v36);
  (*(v49 + 8))(v19, v35);
  if (**(v55 + 8) == _TtC8VideosUI23ContextMenuButtonLayout && (v37 = off_1EE25CFF8[0](), (v38 & 1) == 0))
  {
    v39 = v37;
  }

  else
  {
    v39 = 0x4020000000000000;
  }

  v40 = *(v56 + 20);
  v41 = *MEMORY[0x1E697F468];
  sub_1E4201C44();
  OUTLINED_FUNCTION_2();
  v43 = v57;
  (*(v42 + 104))(v57 + v40, v41);
  *v43 = v39;
  v43[1] = v39;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F4B0);
  v45 = v58;
  v46 = v58 + *(v44 + 36);
  sub_1E3985328(v43, v46);
  *(v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0) + 36)) = 256;
  (*(v53 + 32))(v45, v1, v54);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E398018C()
{
  OUTLINED_FUNCTION_31_1();
  v33 = v0;
  v34 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F610);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F4E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_5();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F498);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F618);
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v32 - v19;
  v21 = TVAppFeature.isEnabled.getter(10);
  v23 = *v4;
  if (v21)
  {
    v32[0] = v5;
    v32[1] = v9;
    v24 = v33;
    v25 = (*(v23 + 696))(v21, v22);
    if (v25 == 4)
    {
      v26 = sub_1E4202184();
    }

    else
    {
      v26 = sub_1E41261D8(v25);
    }

    v29 = v26;
    v30 = sub_1E3743538(v24, v14, &qword_1ECF2F4A0);
    *&v14[*(v11 + 36)] = v29;
    (*(*v4 + 720))(v30);
    v31 = sub_1E3983960();
    sub_1E37B8438();
    sub_1E325F69C(v14, &qword_1ECF2F498);
    (*(v17 + 16))(v8, v20, v15);
    swift_storeEnumTagMultiPayload();
    v35 = v11;
    v36 = v31;
    OUTLINED_FUNCTION_18_40();
    sub_1E3983F50();
    OUTLINED_FUNCTION_37_21();
    sub_1E4201F44();
    (*(v17 + 8))(v20, v15);
  }

  else
  {
    v27 = (*(v23 + 672))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F4A0);
    sub_1E3983A18();
    OUTLINED_FUNCTION_32_0();
    sub_1E39B9138();

    sub_1E3743538(v1, v8, &qword_1ECF2F4E0);
    swift_storeEnumTagMultiPayload();
    v28 = sub_1E3983960();
    v35 = v11;
    v36 = v28;
    OUTLINED_FUNCTION_18_40();
    sub_1E3983F50();
    OUTLINED_FUNCTION_37_21();
    sub_1E4201F44();
    sub_1E325F69C(v1, &qword_1ECF2F4E0);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3980564()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v21[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F428);
  OUTLINED_FUNCTION_0_10();
  v21[0] = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v21 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F430);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F438);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  v15 = sub_1E405FCC8();
  v16 = sub_1E32AE9B0(v15);

  if (v16)
  {
    sub_1E398084C();
    sub_1E3743538(v14, v0, &qword_1ECF2F438);
    swift_storeEnumTagMultiPayload();
    sub_1E39831F4();
    OUTLINED_FUNCTION_21_10(&qword_1EE288638, &qword_1ECF2F428);
    OUTLINED_FUNCTION_29_29();
    sub_1E4201F44();
    sub_1E325F69C(v14, &qword_1ECF2F438);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v17);
    v21[-2] = v4;
    v21[-1] = v2;
    sub_1E4203964();
    v18 = v21[0];
    v19 = OUTLINED_FUNCTION_125();
    v20(v19);
    swift_storeEnumTagMultiPayload();
    sub_1E39831F4();
    OUTLINED_FUNCTION_21_10(&qword_1EE288638, &qword_1ECF2F428);
    OUTLINED_FUNCTION_29_29();
    sub_1E4201F44();
    (*(v18 + 8))(v10, v6);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E398084C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F470);
  OUTLINED_FUNCTION_0_10();
  KeyPath = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_31_2();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F5D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &KeyPath - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F450);
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &KeyPath - v17;
  v19 = [objc_opt_self() sharedInstance];
  if (v19)
  {
    v20 = v19;
    v38 = v13;
    v39 = v6;
    v40 = v7;
    v21 = [v19 vStackInForEachEnabled];

    v22 = sub_1E405FCC8();
    if (v21)
    {
      v42 = v22;
      KeyPath = swift_getKeyPath();
      OUTLINED_FUNCTION_2_4();
      v23 = swift_allocObject();
      *(v23 + 16) = v4;
      *(v23 + 24) = v2;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F460);
      OUTLINED_FUNCTION_14_11();
      sub_1E374AD40(v24, &unk_1ECF2C790);
      OUTLINED_FUNCTION_2_78();
      sub_1E39849B0(v25, v26);
      OUTLINED_FUNCTION_1();
      sub_1E374AD40(v27, &qword_1ECF2F460);
      sub_1E4203B34();
      v28 = v38;
      (*(v15 + 16))(v12, v18, v38);
      swift_storeEnumTagMultiPayload();
      sub_1E3983280();
      sub_1E3983330();
      sub_1E4201F44();
      (*(v15 + 8))(v18, v28);
    }

    else
    {
      v44 = v22;
      swift_getKeyPath();
      OUTLINED_FUNCTION_2_4();
      v29 = swift_allocObject();
      *(v29 + 16) = v4;
      *(v29 + 24) = v2;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F5E0);
      OUTLINED_FUNCTION_14_11();
      sub_1E374AD40(v30, &unk_1ECF2C790);
      OUTLINED_FUNCTION_2_78();
      sub_1E39849B0(v31, v32);
      v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F478);
      v34 = sub_1E39833F0();
      v42 = v33;
      v43 = v34;
      swift_getOpaqueTypeConformance2();
      sub_1E4203B34();
      v35 = KeyPath;
      v36 = v40;
      (*(KeyPath + 16))(v12, v0, v40);
      swift_storeEnumTagMultiPayload();
      sub_1E3983280();
      sub_1E3983330();
      sub_1E4201F44();
      (*(v35 + 8))(v0, v36);
    }

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3980D3C()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0);
  sub_1E374AD40(&qword_1EE28A190, &qword_1ECF2D3C0);
  return sub_1E42006B4();
}

uint64_t sub_1E3980DCC()
{
  v1 = v0;
  if (**(v0 + OBJC_IVAR____TtC8VideosUIP33_89D756550E8B1BCD211E47DD7C7DE98E24ActionMenuItemInteractor_viewModel) == _TtC8VideosUI25DownloadMenuItemViewModel)
  {
    type metadata accessor for DownloadMenuItemViewModel();
    sub_1E39849B0(&qword_1ECF2F560, type metadata accessor for DownloadMenuItemViewModel);

    sub_1E4200514();
    OUTLINED_FUNCTION_2_4();
    v2 = swift_allocObject();
    *(v2 + 16) = sub_1E398442C;
    *(v2 + 24) = v0;
    sub_1E42005A4();

    v3 = sub_1E4200844();

    *(v1 + OBJC_IVAR____TtC8VideosUIP33_89D756550E8B1BCD211E47DD7C7DE98E24ActionMenuItemInteractor_downloadContextMenuObserver) = v3;
  }

  else
  {
    v5 = OBJC_IVAR____TtC8VideosUIP33_89D756550E8B1BCD211E47DD7C7DE98E24ActionMenuItemInteractor_downloadContextMenuObserver;
    if (*(v0 + OBJC_IVAR____TtC8VideosUIP33_89D756550E8B1BCD211E47DD7C7DE98E24ActionMenuItemInteractor_downloadContextMenuObserver))
    {

      sub_1E42004E4();
    }

    *(v0 + v5) = 0;
  }
}

uint64_t sub_1E3980F9C(uint64_t a1, void *a2)
{
  type metadata accessor for LibContextMenuViewModel();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    if ((*(*a1 + 552))())
    {
      *(&v14 + 1) = &unk_1F5D7C138;
      *&v15 = &off_1F5D7BC98;
      LOBYTE(v13) = 1;
      sub_1E3F9F164(&v13);

      __swift_destroy_boxed_opaque_existential_1(&v13);
      if (*(&v10 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
        if (swift_dynamicCast())
        {
          v7 = v13;
          type metadata accessor for Metrics();
          OUTLINED_FUNCTION_50();
          sub_1E3BA7858();

          sub_1E4061870(v7, a2);
        }

LABEL_11:
        if (*a1 != _TtC8VideosUI25DownloadMenuItemViewModel)
        {
          memset(v17, 0, sizeof(v17));
          v18 = 1;
          sub_1E40421AC(2, 0, v17, &v13);
          v9 = v13;
          v10 = v14;
          v11 = v15;
          v12 = v16;

          sub_1E4200524();

          return sub_1E38E5014(&v13);
        }

        v8 = OUTLINED_FUNCTION_51_1();
        sub_1E4061A0C(a1, v8 & 1);
      }
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    sub_1E325F69C(&v9, &unk_1ECF296E0);
    goto LABEL_11;
  }

  v5 = v4;

  sub_1E4061C34(v5);
}

uint64_t sub_1E3981280()
{
}

uint64_t sub_1E39812E0()
{
  v0 = sub_1E3B4FF80();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E39813A0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ActionMenuItemInteractor();
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC8VideosUIP33_89D756550E8B1BCD211E47DD7C7DE98E24ActionMenuItemInteractor_eventSubject;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3C0);
  swift_allocObject();
  *(v4 + v5) = sub_1E4200544();
  v6 = OBJC_IVAR____TtC8VideosUIP33_89D756550E8B1BCD211E47DD7C7DE98E24ActionMenuItemInteractor_viewModel;
  *(v4 + OBJC_IVAR____TtC8VideosUIP33_89D756550E8B1BCD211E47DD7C7DE98E24ActionMenuItemInteractor_downloadContextMenuObserver) = 0;
  *(v4 + OBJC_IVAR____TtC8VideosUIP33_89D756550E8B1BCD211E47DD7C7DE98E24ActionMenuItemInteractor_contextMenuController) = a1;
  *(v4 + v6) = a2;

  v7 = sub_1E3B500B4();

  sub_1E3980DCC();

  return v7;
}

void sub_1E3981488()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F500);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_31_2();
  v3 = *(v0 + 24);
  v4 = type metadata accessor for ActionMenuItemInteractor();
  OUTLINED_FUNCTION_4_77();
  sub_1E39849B0(v5, v6);
  swift_retain_n();
  v16 = v4;
  v17 = &off_1F5D65A88;
  v14 = sub_1E4200BC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F510);
  sub_1E398422C(&qword_1ECF2F518, &qword_1ECF2F510, &unk_1E42AE7F8, sub_1E39842A4);
  sub_1E40427A8(v3, &v14, sub_1E3984208, v1);
  v7 = *(v0 + 32);
  v13[2] = v3;
  v14 = v7;
  v15 = *(v0 + 40);
  OUTLINED_FUNCTION_44_8();
  v8 = swift_allocObject();
  v9 = *(v0 + 16);
  v8[1] = *v0;
  v8[2] = v9;
  *(v8 + 41) = *(v0 + 25);

  sub_1E380E99C();
  sub_1E3743538(&v14, v13, &qword_1ECF2F550);
  type metadata accessor for ViewModel();
  OUTLINED_FUNCTION_13_2();
  sub_1E374AD40(v10, &qword_1ECF2F500);
  OUTLINED_FUNCTION_2_78();
  sub_1E39849B0(v11, v12);
  sub_1E4203524();

  sub_1E325F69C(v1, &qword_1ECF2F500);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3981710()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F548);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v46 - v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F568);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v54 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F570);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v51 = v12;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F538);
  OUTLINED_FUNCTION_0_10();
  v50 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v49 = v15;
  v16 = *(v0 + 24);
  v57 = v16;
  type metadata accessor for ViewModel();
  OUTLINED_FUNCTION_50();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F5C8);
  v17 = swift_dynamicCast();
  v56 = v3;
  if (v17)
  {
    sub_1E3251BE8(v59, v61);
    v18 = v62;
    v19 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    v20 = (*(v19 + 16))(v18, v19);
    __swift_destroy_boxed_opaque_existential_1(v61);
    goto LABEL_3;
  }

  v60 = 0;
  memset(v59, 0, sizeof(v59));
  v29 = sub_1E325F69C(v59, &unk_1ECF2F5D0);
  v30 = (*(*v16 + 488))(v29);
  if (v30)
  {
    v31 = sub_1E373E010(36, v30);

    if (!v31)
    {
      goto LABEL_30;
    }

    type metadata accessor for ImageViewModel();
    v32 = swift_dynamicCastClass();
    if (!v32)
    {

      goto LABEL_30;
    }

    v20 = v32;
LABEL_3:
    if (v20)
    {
      sub_1E3981F78(v16, v51);
      OUTLINED_FUNCTION_24_29();
      OUTLINED_FUNCTION_44_8();
      v21 = swift_allocObject();
      OUTLINED_FUNCTION_72_5(v21);
      MEMORY[0x1EEE9AC00](v22);
      v46[-2] = v1;
      v46[-1] = v20;
      sub_1E3743538(v61, v59, &qword_1ECF2F578);

      sub_1E3743538(&v57, v59, &qword_1ECF2F550);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F580);
      sub_1E398422C(&qword_1ECF2F588, &qword_1ECF2F580, &unk_1E42AE840, sub_1E3984678);
      v23 = v49;
      sub_1E4203954();
      v24 = v50;
      v25 = v53;
      (*(v50 + 16))(v54, v23, v53);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_17_45();
      sub_1E374AD40(v26, v27);
      sub_1E374AD40(&qword_1ECF2F540, &qword_1ECF2F548);
      v28 = v56;
      sub_1E4201F44();

      (*(v24 + 8))(v23, v25);
      goto LABEL_32;
    }

LABEL_30:
    if (!sub_1E3982484(v16))
    {
      v44 = 1;
      v28 = v56;
      goto LABEL_34;
    }

    sub_1E3981F78(v16, v51);
    OUTLINED_FUNCTION_24_29();
    OUTLINED_FUNCTION_44_8();
    v40 = swift_allocObject();
    OUTLINED_FUNCTION_72_5(v40);

    sub_1E3743538(v61, v59, &qword_1ECF2F578);
    sub_1E3743538(&v57, v59, &qword_1ECF2F550);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
    swift_getOpaqueTypeConformance2();
    sub_1E4203954();
    v41 = v55;
    (v5[2])(v54, v8, v55);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_17_45();
    sub_1E374AD40(v42, v43);
    sub_1E374AD40(&qword_1ECF2F540, &qword_1ECF2F548);
    v28 = v56;
    sub_1E4201F44();

    (v5[1])(v8, v41);
LABEL_32:
    v44 = 0;
LABEL_34:
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F528);
    __swift_storeEnumTagSinglePayload(v28, v44, 1, v45);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v33 = (*(*v16 + 464))();
  if (!v33)
  {
    goto LABEL_30;
  }

  v34 = v33;
  v46[0] = v8;
  v46[1] = v5;
  v35 = sub_1E32AE9B0(v33);
  v36 = 0;
  v48 = v34 & 0xC000000000000001;
  v47 = v34 & 0xFFFFFFFFFFFFFF8;
  v5 = &qword_1F5D5CE68;
  while (1)
  {
    if (v35 == v36)
    {

      goto LABEL_29;
    }

    if (v48)
    {
      v8 = MEMORY[0x1E6911E60](v36, v34);
    }

    else
    {
      if (v36 >= *(v47 + 16))
      {
        goto LABEL_36;
      }

      v8 = *(v34 + 8 * v36 + 32);
    }

    if (__OFADD__(v36, 1))
    {
      break;
    }

    LOWORD(v57) = *(v8 + 49);
    v58 = 39;
    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    if (v61[0] == *&v59[0] && v61[1] == *(&v59[0] + 1))
    {

LABEL_26:

      type metadata accessor for ImageViewModel();
      v39 = swift_dynamicCastClass();
      if (v39)
      {
        v20 = v39;
        OUTLINED_FUNCTION_40_24();
        goto LABEL_3;
      }

LABEL_29:
      OUTLINED_FUNCTION_40_24();
      goto LABEL_30;
    }

    v38 = sub_1E42079A4();

    if (v38)
    {
      goto LABEL_26;
    }

    ++v36;
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_1E3981F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = 14;
  (*(*a1 + 776))(v7, &v6, &unk_1F5D5D0A8, &off_1F5D5C758);
  if (!v7[3])
  {
    sub_1E325F69C(v7, &unk_1ECF296E0);
LABEL_6:
    v3 = 1;
    goto LABEL_7;
  }

  if (!swift_dynamicCast() || (v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1E4200A04();
  v3 = 0;
LABEL_7:
  v4 = sub_1E4200A34();
  return __swift_storeEnumTagSinglePayload(a2, v3, 1, v4);
}

void sub_1E3982070()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v0;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F488);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_31_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F5B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F5A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_5();
  v15.n128_f64[0] = OUTLINED_FUNCTION_1_36();
  v16 = (*(*v6 + 1000))(0, v15);
  if (v17 != 255)
  {
    v18 = v16;
    if (!v17)
    {
      v28 = v8;
      if (![v16 type])
      {
        v22 = [v18 name];
        sub_1E4205F14();

        sub_1E3982820(*(v4 + 24));
        sub_1E39828B4(v3);
        sub_1E3743538(v3, v1, &qword_1ECF2F5A8);
        OUTLINED_FUNCTION_125();
        swift_storeEnumTagMultiPayload();
        sub_1E3984730();
        OUTLINED_FUNCTION_22_30(&qword_1ECF2F5B0, &qword_1ECF2F488);
        sub_1E4201F44();
        sub_1E379098C(v18, 0);
        sub_1E325F69C(v3, &qword_1ECF2F5A8);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F598);
        v21 = v8;
        goto LABEL_7;
      }

      if ([v18 type] == 1)
      {
        v19 = [v18 name];
        sub_1E4205F14();

        sub_1E3982820(*(v4 + 24));
        sub_1E32822E0();
        sub_1E4203864();
        (*(v11 + 16))(v1, v2, v9);
        OUTLINED_FUNCTION_125();
        swift_storeEnumTagMultiPayload();
        sub_1E3984730();
        OUTLINED_FUNCTION_22_30(&qword_1ECF2F5B0, &qword_1ECF2F488);
        sub_1E4201F44();
        sub_1E379098C(v18, 0);
        (*(v11 + 8))(v2, v9);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F598);
        v21 = v28;
LABEL_7:
        __swift_storeEnumTagSinglePayload(v21, 0, 1, v20);
        OUTLINED_FUNCTION_25_2();
        return;
      }

      v17 = 0;
    }

    sub_1E379098C(v18, v17);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F598);
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
}

uint64_t sub_1E3982484(uint64_t a1)
{
  v17 = a1;
  type metadata accessor for ViewModel();
  OUTLINED_FUNCTION_50();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F5C8);
  if (!swift_dynamicCast())
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    v6 = sub_1E325F69C(v15, &unk_1ECF2F5D0);
    v7 = (*(*a1 + 488))(v6);
    if (v7)
    {
      v5 = sub_1E373E010(23, v7);

      if (v5)
      {
        if (*v5 == _TtC8VideosUI13TextViewModel)
        {
          return v5;
        }
      }
    }

    v8 = (*(*a1 + 464))(v7);
    if (v8)
    {
      v9 = v8;
      result = sub_1E32AE9B0(v8);
      v11 = result;
      for (i = 0; ; ++i)
      {
        if (v11 == i)
        {

          goto LABEL_22;
        }

        if ((v9 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1E6911E60](i, v9);
          v5 = result;
        }

        else
        {
          if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v5 = *(v9 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }

        LOWORD(v17) = *(v5 + 98);
        sub_1E3742F1C();
        sub_1E4206254();
        sub_1E4206254();
        if (v18[0] == *&v15[0] && v18[1] == *(&v15[0] + 1))
        {
          break;
        }

        v14 = sub_1E42079A4();

        if (v14)
        {
          goto LABEL_25;
        }
      }

LABEL_25:

      if (*v5 == _TtC8VideosUI13TextViewModel)
      {
        return v5;
      }

      if (*a1 != _TtC8VideosUI13TextViewModel)
      {
        return 0;
      }
    }

    else
    {
LABEL_22:
      if (*a1 != _TtC8VideosUI13TextViewModel)
      {
        return 0;
      }
    }

    return a1;
  }

  sub_1E3251BE8(v15, v18);
  v2 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v3 = OUTLINED_FUNCTION_50();
  v5 = v4(v3, v2);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v5;
}

uint64_t sub_1E3982820(uint64_t a1)
{
  if (sub_1E3982484(a1))
  {
    OUTLINED_FUNCTION_18();
    v1 = sub_1E3C287F4(0);

    if (v1)
    {
      v2 = [v1 string];

      sub_1E4205F14();
    }
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E39828B4@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = sub_1E4205ED4();

  v4 = [v2 vuiSystemImageNamed:v3 withConfiguration:0 accessibilityDescription:0];

  sub_1E4203844();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F488);
  __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
}

uint64_t Label<>.init<A>(_:systemSymbol:)@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = sub_1E4205ED4();

  v4 = [v2 vuiSystemImageNamed:v3 withConfiguration:0 accessibilityDescription:0];

  sub_1E4203844();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F488);
  __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
  v6 = OUTLINED_FUNCTION_16_0();
  return v7(v6);
}

uint64_t sub_1E3982B88()
{
  sub_1E32822E0();
  OUTLINED_FUNCTION_50();

  return sub_1E4202C44();
}

uint64_t sub_1E3982BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  (*(v4 + 16))(v2);
  result = sub_1E4202C44();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_1E3982CA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1;
  result = sub_1E381AC64();
  *a2 = result;
  return result;
}

id sub_1E3982CD4()
{
  sub_1E37E96A4();
  result = sub_1E3834BC8();
  qword_1ECF713B0 = result;
  return result;
}

uint64_t sub_1E3982D1C()
{
  v1 = sub_1E41FFBF4();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1E4206434();
  v0[5] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v3 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3982E08, v3, v2);
}

uint64_t sub_1E3982E08()
{
  v1 = *(v0 + 24);

  sub_1E4206BA4();
  v2 = VUISignpostLogObject();
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_35_23();

  v3 = *(v1 + 8);
  v4 = OUTLINED_FUNCTION_16_0();
  v3(v4);
  if (qword_1ECF50C20 != -1)
  {
    OUTLINED_FUNCTION_7_82();
  }

  sub_1E4206B94();
  v5 = VUISignpostLogObject();
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_35_23();

  v6 = OUTLINED_FUNCTION_16_0();
  v3(v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1E3982F60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3D79AF4();
  *a1 = result;
  return result;
}

uint64_t sub_1E3982FB8(uint64_t a1, char a2)
{
  v4 = sub_1E4201AB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v8 = sub_1E4206804();
    v9 = sub_1E42026D4();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F5C0);
      v12 = sub_1E4207CE4();
      v14 = sub_1E3270FC8(v12, v13, &v17);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1E323F000, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1E69143B0](v11, -1, -1);
      MEMORY[0x1E69143B0](v10, -1, -1);
    }

    sub_1E4201AA4();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v5 + 8))(v7, v4);
    return v17;
  }

  return a1;
}

uint64_t sub_1E39831A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E4201974();
  *a1 = result;
  return result;
}

unint64_t sub_1E39831F4()
{
  result = qword_1ECF2F440;
  if (!qword_1ECF2F440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F438);
    sub_1E3983280();
    sub_1E3983330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2F440);
  }

  return result;
}

unint64_t sub_1E3983280()
{
  result = qword_1ECF2F448;
  if (!qword_1ECF2F448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F450);
    sub_1E374AD40(&qword_1ECF2F458, &unk_1ECF2F460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2F448);
  }

  return result;
}

unint64_t sub_1E3983330()
{
  result = qword_1ECF2F468;
  if (!qword_1ECF2F468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F470);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F478);
    sub_1E39833F0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2F468);
  }

  return result;
}

unint64_t sub_1E39833F0()
{
  result = qword_1ECF2F480;
  if (!qword_1ECF2F480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F478);
    sub_1E3983474();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2F480);
  }

  return result;
}

unint64_t sub_1E3983474()
{
  result = qword_1EE2A5F98[0];
  if (!qword_1EE2A5F98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A5F98);
  }

  return result;
}

void sub_1E39834C8(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    sub_1E3741090(0x474E4944414F4CLL, 0xE700000000000000, v2);
    v5 = v4;

    if (v5)
    {
      sub_1E32822E0();
      *a1 = sub_1E4202C44();
      *(a1 + 8) = v6;
      *(a1 + 16) = v7 & 1;
      *(a1 + 24) = v8;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1E39835E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

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

  return OUTLINED_FUNCTION_17_7(v2);
}

uint64_t type metadata accessor for ActionMenuItemInteractor()
{
  result = qword_1EE298480;
  if (!qword_1EE298480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E39836FC()
{
  result = qword_1EE289848;
  if (!qword_1EE289848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F420);
    sub_1E3983788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289848);
  }

  return result;
}

unint64_t sub_1E3983788()
{
  result = qword_1EE2886A8;
  if (!qword_1EE2886A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F418);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F490);
    type metadata accessor for ViewModel();
    sub_1E3983898();
    sub_1E39849B0(&qword_1EE23BA60, type metadata accessor for ViewModel);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2886A8);
  }

  return result;
}

unint64_t sub_1E3983898()
{
  result = qword_1EE288EB0;
  if (!qword_1EE288EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F490);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F498);
    sub_1E3983960();
    swift_getOpaqueTypeConformance2();
    sub_1E3983F50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288EB0);
  }

  return result;
}

unint64_t sub_1E3983960()
{
  result = qword_1EE2895D8;
  if (!qword_1EE2895D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F498);
    sub_1E3983A18();
    sub_1E374AD40(&qword_1EE288880, &qword_1ECF2A218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2895D8);
  }

  return result;
}

unint64_t sub_1E3983A18()
{
  result = qword_1EE289950;
  if (!qword_1EE289950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4C0);
    sub_1E3983BD4();
    sub_1E42023E4();
    sub_1E39849B0(&qword_1EE288868, MEMORY[0x1E697C9A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E3983CB8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289950);
  }

  return result;
}

unint64_t sub_1E3983BD4()
{
  result = qword_1EE289A10;
  if (!qword_1EE289A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4B8);
    sub_1E374AD40(&qword_1EE288730, &unk_1ECF2F4C8);
    sub_1E374AD40(&qword_1EE2887D8, &unk_1ECF2F4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A10);
  }

  return result;
}

unint64_t sub_1E3983CB8()
{
  result = qword_1EE289930;
  if (!qword_1EE289930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4D8);
    sub_1E42014E4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4A8);
    sub_1E4201264();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4C0);
    sub_1E3983BD4();
    sub_1E42023E4();
    sub_1E39849B0(&qword_1EE288868, MEMORY[0x1E697C9A8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E39849B0(&qword_1EE289CE0, MEMORY[0x1E697C150]);
    swift_getOpaqueTypeConformance2();
    sub_1E39849B0(&qword_1EE289408, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    sub_1E374AD40(&qword_1EE289E08, &qword_1ECF298B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289930);
  }

  return result;
}

unint64_t sub_1E3983F50()
{
  result = qword_1EE288ED8;
  if (!qword_1EE288ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4E0);
    sub_1E3983FDC();
    sub_1E3983A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288ED8);
  }

  return result;
}

unint64_t sub_1E3983FDC()
{
  result = qword_1EE2895E0;
  if (!qword_1EE2895E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4E8);
    sub_1E3983A18();
    sub_1E374AD40(&qword_1EE288788, &qword_1ECF28998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2895E0);
  }

  return result;
}

unint64_t sub_1E3984094()
{
  result = qword_1ECF2F4F0;
  if (!qword_1ECF2F4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4F8);
    sub_1E39831F4();
    sub_1E374AD40(&qword_1EE288638, &qword_1ECF2F428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2F4F0);
  }

  return result;
}

uint64_t sub_1E3984158(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 41))
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

  return OUTLINED_FUNCTION_17_7(v2);
}

uint64_t sub_1E3984194(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E398422C(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E39842A4()
{
  result = qword_1ECF2F520;
  if (!qword_1ECF2F520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F528);
    sub_1E374AD40(&qword_1ECF2F530, &qword_1ECF2F538);
    sub_1E374AD40(&qword_1ECF2F540, &qword_1ECF2F548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2F520);
  }

  return result;
}

uint64_t sub_1E3984384(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  type metadata accessor for ActionMenuItemInteractor();
  OUTLINED_FUNCTION_4_77();
  sub_1E39849B0(v3, v4);
  *(OUTLINED_FUNCTION_33_28() + OBJC_IVAR____TtC8VideosUIP33_89D756550E8B1BCD211E47DD7C7DE98E24ActionMenuItemInteractor_viewModel) = v2;

  sub_1E3980DCC();
}

uint64_t sub_1E398442C()
{
  OUTLINED_FUNCTION_4_77();
  sub_1E39849B0(v0, v1);
  sub_1E4200514();
  sub_1E4200594();
}

void sub_1E39844C0()
{
  OUTLINED_FUNCTION_18();

  sub_1E3F23370();
}

uint64_t objectdestroyTm_17()
{
  sub_1E3264CE0();

  j__swift_release();
  OUTLINED_FUNCTION_44_8();

  return swift_deallocObject();
}

void sub_1E3984550()
{
  type metadata accessor for ActionMenuItemInteractor();
  OUTLINED_FUNCTION_4_77();
  sub_1E39849B0(v1, v2);
  OUTLINED_FUNCTION_11_61();
  sub_1E4200BC4();
  v3 = sub_1E3982FB8(*(v0 + 48), *(v0 + 56));
  if (v3)
  {
    v4 = (*(*v3 + 96))(v3);
  }

  else
  {
    v4 = 0;
  }

  sub_1E3980F9C(*(v0 + 40), v4);
}

unint64_t sub_1E3984678()
{
  result = qword_1ECF2F590;
  if (!qword_1ECF2F590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F598);
    sub_1E3984730();
    sub_1E374AD40(&qword_1ECF2F5B0, &qword_1ECF2F488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2F590);
  }

  return result;
}

unint64_t sub_1E3984730()
{
  result = qword_1ECF2F5A0;
  if (!qword_1ECF2F5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F5A8);
    sub_1E374AD40(&qword_1ECF2F5B0, &qword_1ECF2F488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2F5A0);
  }

  return result;
}

uint64_t sub_1E39847E0@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E3982B88();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1E3984824(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  type metadata accessor for Accessibility();
  (*(*v3 + 320))();
  sub_1E40A7DC8();

  if (sub_1E373F6E0())
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_4();
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    swift_retain_n();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F478);
  sub_1E39833F0();
  sub_1E3E03180();

  v5 = OUTLINED_FUNCTION_39_18();
  return sub_1E3984BA8(v5, v6, v7, v8);
}

uint64_t sub_1E39849B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E39849F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *a1;
  type metadata accessor for Accessibility();
  (*(*v5 + 320))();
  sub_1E40A7DC8();

  *a2 = sub_1E4201D44();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F5E8);
  if (sub_1E373F6E0())
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_4();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    swift_retain_n();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F478);
  sub_1E39833F0();
  sub_1E3E03180();
  v7 = OUTLINED_FUNCTION_39_18();
  sub_1E3984BA8(v7, v8, v9, v10);
}

uint64_t sub_1E3984BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1E3264CE0();

    return j__swift_release();
  }

  return result;
}

uint64_t sub_1E3984C10(char a1)
{
  type metadata accessor for ContextMenuController(0);
  OUTLINED_FUNCTION_1_104();
  sub_1E39849B0(v2, v3);
  OUTLINED_FUNCTION_11_61();
  v4 = sub_1E4200BC4();
  v5 = OBJC_IVAR____TtC8VideosUI21ContextMenuController_hasAppeared;
  if (a1)
  {
    OUTLINED_FUNCTION_45_20();
    *(v4 + v5) = 1;

    OUTLINED_FUNCTION_11_61();
    sub_1E4200BC4();
    sub_1E4060B3C();

    OUTLINED_FUNCTION_11_61();
    v6 = sub_1E4200BC4();
    v7 = OBJC_IVAR____TtC8VideosUI21ContextMenuController_dialogMetrics;
    OUTLINED_FUNCTION_5_0();
    v8 = *(v6 + v7);

    if (v8)
    {
      type metadata accessor for Metrics();
      v10 = OUTLINED_FUNCTION_50();
      sub_1E3BA7798(v10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_45_20();
    *(v4 + v5) = 0;
  }

  return result;
}

uint64_t sub_1E3984D54@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ContextMenuController(0);
  OUTLINED_FUNCTION_1_104();
  sub_1E39849B0(v2, v3);
  OUTLINED_FUNCTION_11_61();
  sub_1E4200BC4();
  result = sub_1E42010C4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

void *sub_1E3984DE4@<X0>(void *a1@<X8>)
{
  v7 = *(v1 + 16);
  if (TVAppFeature.isEnabled.getter(10))
  {
    sub_1E42037C4();
    v8 = *(v7 + 8);
    if (*v8 == _TtC8VideosUI23ContextMenuButtonLayout)
    {
      v9 = (v8 + 26);
      OUTLINED_FUNCTION_5_0();
      v14 = (v8 + 27);
      v15 = (v8 + 28);
      v16 = (v8 + 29);
    }

    else
    {
      v17 = [objc_opt_self() isMac];
      v10.n128_u64[0] = 25.0;
      v11.n128_u64[0] = 25.0;
      v12.n128_u64[0] = 25.0;
      v13.n128_u64[0] = 25.0;
      if (!v17)
      {
LABEL_8:
        j_nullsub_1(v10, v11, v12, v13);
        LOBYTE(v24) = 0;
        LOBYTE(__src[0]) = 0;
        OUTLINED_FUNCTION_41_8();
        *v20 = v2;
        *&v20[8] = v3;
        *&v20[16] = v4;
        *&v20[24] = v5;
        v20[32] = 0;
        v21 = 0;
        goto LABEL_9;
      }

      v9 = MEMORY[0x1E69DDCE0];
      v15 = (MEMORY[0x1E69DDCE0] + 16);
      v14 = (MEMORY[0x1E69DDCE0] + 8);
      v16 = (MEMORY[0x1E69DDCE0] + 24);
    }

    v12.n128_u64[0] = *v15;
    v11.n128_u64[0] = *v14;
    v10.n128_u64[0] = *v9;
    v13.n128_u64[0] = *v16;
    goto LABEL_8;
  }

  sub_1E4201D44();
  v36 = 1;
  v37[0] = 1;
  v22[0] = 1;
  __src[0] = 0;
  LOBYTE(__src[1]) = 1;
  __src[2] = sub_1E4201B84();
  __src[3] = 0;
  LOBYTE(__src[4]) = 1;
  __src[5] = 0;
  LOBYTE(__src[6]) = 1;
  __src[7] = sub_1E42037C4();
  __src[8] = 0;
  LOBYTE(__src[9]) = 1;
  __src[10] = 0;
  LOBYTE(__src[11]) = 1;
  v24 = 0;
  v25 = 1;
  v26 = __src[2];
  v27 = 0;
  v28 = 1;
  v29 = 0;
  v30 = 1;
  v31 = __src[7];
  v32 = 0;
  v33 = 1;
  v34 = 0;
  v35 = 1;
  sub_1E3743538(__src, v37, &qword_1ECF2F628);
  sub_1E325F69C(&v24, &qword_1ECF2F628);
  memcpy(&v22[7], __src, 0x59uLL);
  v36 = 1;
  memcpy(&v20[1], v22, 0x60uLL);
  v21 = 1;
LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F608);
  sub_1E3985174();
  OUTLINED_FUNCTION_1();
  sub_1E374AD40(v18, &qword_1ECF2F608);
  sub_1E4201F44();
  return memcpy(a1, v37, 0x72uLL);
}

unint64_t sub_1E39850BC()
{
  result = qword_1EE288F18;
  if (!qword_1EE288F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F5F8);
    sub_1E3985174();
    sub_1E374AD40(&qword_1EE288458, &qword_1ECF2F608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288F18);
  }

  return result;
}

unint64_t sub_1E3985174()
{
  result = qword_1EE289830;
  if (!qword_1EE289830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289830);
  }

  return result;
}

unint64_t sub_1E39851F8()
{
  result = qword_1EE286A80;
  if (!qword_1EE286A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE286A80);
  }

  return result;
}

uint64_t objectdestroy_50Tm()
{

  sub_1E3264CE0();

  return swift_deallocObject();
}

uint64_t sub_1E39852A0()
{
  type metadata accessor for ContextMenuController(0);
  OUTLINED_FUNCTION_1_104();
  sub_1E39849B0(v0, v1);
  OUTLINED_FUNCTION_33_28();
  OUTLINED_FUNCTION_50();
  sub_1E406143C();
}

uint64_t sub_1E3985328(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4201534();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 OUTLINED_FUNCTION_32_33(uint64_t a1)
{
  result = *v1;
  v3 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v3;
  *(a1 + 48) = *(v1 + 32);
  return result;
}

uint64_t sub_1E39853B8(uint64_t a1, int a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F630);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F638);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F640);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  if (sub_1E38304EC(a2, 3))
  {
    v16 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F648) + 36)];
    sub_1E4203CE4();
    v17 = sub_1E4202734();
    v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F658) + 36)] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F650);
    OUTLINED_FUNCTION_2();
    v18 = OUTLINED_FUNCTION_146();
    v19(v18);
    KeyPath = swift_getKeyPath();
    v21 = &v15[*(v12 + 36)];
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0) + 28);
    v23 = *MEMORY[0x1E697DBB8];
    sub_1E4200B44();
    OUTLINED_FUNCTION_2();
    (*(v24 + 104))(v21 + v22, v23);
    *v21 = KeyPath;
    sub_1E3743538(v15, v11, &qword_1ECF2F640);
    swift_storeEnumTagMultiPayload();
    sub_1E3986778();
    sub_1E3986914();
    OUTLINED_FUNCTION_10_54();
    v25 = OUTLINED_FUNCTION_146();
    return sub_1E325F6F0(v25, v26);
  }

  else
  {
    sub_1E39856A4(a1, a2, a3, v8);
    sub_1E3743538(v8, v11, &qword_1ECF2F630);
    swift_storeEnumTagMultiPayload();
    sub_1E3986778();
    sub_1E3986914();
    OUTLINED_FUNCTION_10_54();
    return sub_1E325F6F0(v8, &qword_1ECF2F630);
  }
}

uint64_t sub_1E39856A4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v164 = a3;
  LODWORD(v167) = a2;
  v168 = a1;
  v170 = a4;
  v4 = sub_1E4201534();
  v5 = OUTLINED_FUNCTION_6_4(v4, &v172 + 8);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17_3(&v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F6A8);
  OUTLINED_FUNCTION_6_4(v7, &v173);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F690);
  v11 = OUTLINED_FUNCTION_6_4(v10, &v175);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v159 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17_3(&v151 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F6B0);
  OUTLINED_FUNCTION_6_4(v16, &v175 + 8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F680);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v151 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F678);
  OUTLINED_FUNCTION_6_4(v26, v181);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v151 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F6B8);
  OUTLINED_FUNCTION_6_4(v30, &v182);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F6C0);
  OUTLINED_FUNCTION_6_4(v33, v179);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F660);
  OUTLINED_FUNCTION_6_4(v36, &v183);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F670);
  v40 = OUTLINED_FUNCTION_6_4(v39, v178);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_4_6();
  v43 = v41 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v151 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v151 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v151 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F6C8);
  OUTLINED_FUNCTION_6_4(v53, v177);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v55);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F6D0);
  v152 = *(v162 - 8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v151 - v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F668);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_44();
  if (v167 != 1)
  {
    if (v167 != 2)
    {
      v107 = OUTLINED_FUNCTION_32_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v107);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_15_53();
      v108();
      OUTLINED_FUNCTION_18_41();
      sub_1E39869CC();
      OUTLINED_FUNCTION_1_11();
      sub_1E32752B0(v109, &qword_1ECF2F650);
      OUTLINED_FUNCTION_8_53();
      return sub_1E4201F44();
    }

    v167 = v60;
    v62 = v164;
    v63 = v61;
    if (!v164)
    {
      goto LABEL_14;
    }

    v64 = (*(*v164 + 840))();
    if (v64)
    {
      v65 = (*(*v64 + 1792))();

      if (v65)
      {
        type metadata accessor for ViewGradientLayout();
        v66 = sub_1E40C2E40();
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F650);
        OUTLINED_FUNCTION_1_11();
        v69 = sub_1E32752B0(v68, &qword_1ECF2F650);
        sub_1E392F9D0(v66, v67, v69, v58);
        v70 = v152;
        v71 = v162;
        (*(v152 + 16))(v160, v58, v162);
        OUTLINED_FUNCTION_13_63();
        *&v175 = v67;
        *(&v175 + 1) = v69;
        OUTLINED_FUNCTION_4_78();
        sub_1E3986B54();
        sub_1E4201F44();

        (*(v70 + 8))(v58, v71);
LABEL_16:
        sub_1E3743538(v63, v165, &qword_1ECF2F668);
        OUTLINED_FUNCTION_13_63();
        sub_1E3986A58();
        sub_1E3986C38();
        v120 = v166;
        OUTLINED_FUNCTION_12_56();
        sub_1E3743538(v120, v169, &qword_1ECF2F660);
        OUTLINED_FUNCTION_13_63();
        v121 = OUTLINED_FUNCTION_146();
        __swift_instantiateConcreteTypeFromMangledNameV2(v121);
        sub_1E39869CC();
        OUTLINED_FUNCTION_1_11();
        sub_1E32752B0(v122, &qword_1ECF2F650);
        OUTLINED_FUNCTION_8_53();
        sub_1E4201F44();
        sub_1E325F6F0(v120, &qword_1ECF2F660);
        return sub_1E325F6F0(v63, &qword_1ECF2F668);
      }
    }

    v111 = (*(*v62 + 744))();
    if (!v111)
    {
LABEL_14:
      v111 = [objc_opt_self() clearColor];
    }

    v112 = v111;
    v113 = sub_1E38F08C4(v111);

    LOBYTE(v112) = sub_1E4202734();
    v114 = OUTLINED_FUNCTION_146();
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(v114);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_15_53();
    v116();
    v117 = &v49[*(v163 + 36)];
    *v117 = v113;
    v117[8] = v112;
    sub_1E3741EA0(v49, v52, &qword_1ECF2F670);
    sub_1E3743538(v52, v160, &qword_1ECF2F670);
    OUTLINED_FUNCTION_18_41();
    OUTLINED_FUNCTION_1_11();
    v119 = sub_1E32752B0(v118, &qword_1ECF2F650);
    *&v175 = v115;
    *(&v175 + 1) = v119;
    OUTLINED_FUNCTION_4_78();
    sub_1E3986B54();
    sub_1E4201F44();
    sub_1E325F6F0(v52, &qword_1ECF2F670);
    goto LABEL_16;
  }

  v72 = v46;
  v160 = v22;
  v73 = v159;
  v162 = v18;
  v161 = v29;
  v167 = v60;
  v74 = v164;
  if (!v164)
  {
    goto LABEL_18;
  }

  LOBYTE(v175) = (*(*v164 + 1776))();
  LOBYTE(v171) = 8;
  sub_1E378ADF4();
  v75 = sub_1E4205E84();
  v76 = (*(*v74 + 744))();
  v77 = v76;
  if ((v75 & 1) == 0)
  {
    if (v76)
    {
LABEL_19:
      v123 = sub_1E38F08C4(v77);

      v124 = sub_1E4202734();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F650);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_15_53();
      v126 = v125();
      v127 = v43 + *(v163 + 36);
      *v127 = v123;
      *(v127 + 8) = v124;
      v128 = 0.0;
      v106 = v161;
      v129 = v43;
      if (v74)
      {
        (*(*v74 + 552))(&v171, v126);
        v78 = v153;
        v130 = v154;
        if ((v173 & 1) == 0)
        {
          v128 = sub_1E3952BE8(*&v171, *(&v171 + 1), *&v172, *(&v172 + 1));
        }
      }

      else
      {
        v78 = v153;
        v130 = v154;
      }

      v131 = *(v130 + 20);
      v132 = *MEMORY[0x1E697F468];
      sub_1E4201C44();
      OUTLINED_FUNCTION_2();
      v134 = v156;
      (*(v133 + 104))(v156 + v131, v132);
      *v134 = v128;
      v134[1] = v128;
      OUTLINED_FUNCTION_17_46();
      v135 = v157;
      sub_1E3985328(v134, v157);
      v136 = v135 + *(v155 + 36);
      v137 = v176;
      *v136 = v175;
      *(v136 + 16) = v137;
      *(v136 + 32) = v177[0];
      v138 = sub_1E4203DA4();
      v140 = v139;
      v141 = v73 + *(v158 + 36);
      sub_1E3741EA0(v135, v141, &qword_1ECF2F6A8);
      v142 = (v141 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F698) + 36));
      *v142 = v138;
      v142[1] = v140;
      sub_1E3741EA0(v129, v73, &qword_1ECF2F670);
      v99 = &qword_1ECF2F690;
      OUTLINED_FUNCTION_19_1();
      sub_1E3741EA0(v143, v144, v145);
      OUTLINED_FUNCTION_19_1();
      sub_1E3743538(v146, v147, v148);
      OUTLINED_FUNCTION_18_41();
      sub_1E3986CC4();
      sub_1E3986D7C();
      goto LABEL_24;
    }

LABEL_18:
    v77 = [objc_opt_self() clearColor];
    goto LABEL_19;
  }

  if (!v76)
  {
    v77 = [objc_opt_self() clearColor];
  }

  v78 = v25;
  v79 = sub_1E38F08C4(v77);

  v80 = sub_1E4202734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F650);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15_53();
  v82 = v81();
  v83 = v72 + *(v163 + 36);
  *v83 = v79;
  *(v83 + 8) = v80;
  (*(*v74 + 1944))(v82);
  OUTLINED_FUNCTION_17_46();
  v84 = v178[1];
  v85 = v179[0];
  v86 = v179[1];
  v87 = v180;
  v88 = v181[0];
  v89 = v181[1];
  v90 = sub_1E4203DA4();
  v92 = v91;
  *&v171 = v84;
  *(&v171 + 1) = __PAIR64__(v86, v85);
  *&v172 = v87;
  *(&v172 + 1) = v88;
  *&v173 = v89;
  *(&v173 + 1) = v90;
  v174 = v91;
  v93 = v160;
  sub_1E3741EA0(v72, v160, &qword_1ECF2F670);
  v94 = v93 + *(v162 + 36);
  v95 = v172;
  *v94 = v171;
  *(v94 + 16) = v95;
  *(v94 + 32) = v173;
  *(v94 + 48) = v174;
  *&v175 = v84;
  *(&v175 + 1) = __PAIR64__(v86, v85);
  *&v176 = v87;
  *(&v176 + 1) = v88;
  v177[0] = v89;
  v177[1] = v90;
  v178[0] = v92;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v96, v97, v98);
  sub_1E325F6F0(&v175, &qword_1ECF2F688);
  v99 = &qword_1ECF2F680;
  OUTLINED_FUNCTION_19_1();
  sub_1E3741EA0(v100, v101, v102);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v103, v104, v105);
  OUTLINED_FUNCTION_13_63();
  sub_1E3986CC4();
  sub_1E3986D7C();
  v106 = v161;
LABEL_24:
  sub_1E4201F44();
  sub_1E325F6F0(v78, v99);
  sub_1E3743538(v106, v165, &qword_1ECF2F678);
  OUTLINED_FUNCTION_18_41();
  sub_1E3986A58();
  sub_1E3986C38();
  v149 = v166;
  OUTLINED_FUNCTION_12_56();
  sub_1E3743538(v149, v169, &qword_1ECF2F660);
  OUTLINED_FUNCTION_13_63();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F650);
  sub_1E39869CC();
  OUTLINED_FUNCTION_1_11();
  sub_1E32752B0(v150, &qword_1ECF2F650);
  OUTLINED_FUNCTION_8_53();
  sub_1E4201F44();
  sub_1E325F6F0(v149, &qword_1ECF2F660);
  return sub_1E325F6F0(v106, &qword_1ECF2F678);
}

unint64_t sub_1E3986778()
{
  result = qword_1EE289660;
  if (!qword_1EE289660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F640);
    sub_1E3986830();
    sub_1E32752B0(&qword_1EE2887D0, &qword_1ECF291E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289660);
  }

  return result;
}

unint64_t sub_1E3986830()
{
  result = qword_1EE289AB8;
  if (!qword_1EE289AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F648);
    sub_1E32752B0(&qword_1EE288950, &qword_1ECF2F650);
    sub_1E32752B0(&qword_1EE288890, &qword_1ECF2F658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289AB8);
  }

  return result;
}

unint64_t sub_1E3986914()
{
  result = qword_1EE288AD0;
  if (!qword_1EE288AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F630);
    sub_1E39869CC();
    sub_1E32752B0(&qword_1EE288950, &qword_1ECF2F650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288AD0);
  }

  return result;
}

unint64_t sub_1E39869CC()
{
  result = qword_1EE288B90;
  if (!qword_1EE288B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F660);
    sub_1E3986A58();
    sub_1E3986C38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288B90);
  }

  return result;
}

unint64_t sub_1E3986A58()
{
  result = qword_1EE288E30;
  if (!qword_1EE288E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F668);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F650);
    sub_1E32752B0(&qword_1EE288950, &qword_1ECF2F650);
    swift_getOpaqueTypeConformance2();
    sub_1E3986B54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288E30);
  }

  return result;
}

unint64_t sub_1E3986B54()
{
  result = qword_1EE289AC0;
  if (!qword_1EE289AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F670);
    sub_1E32752B0(&qword_1EE288950, &qword_1ECF2F650);
    sub_1E32752B0(&qword_1EE288898, &qword_1ECF2DCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289AC0);
  }

  return result;
}

unint64_t sub_1E3986C38()
{
  result = qword_1EE288EF0;
  if (!qword_1EE288EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F678);
    sub_1E3986CC4();
    sub_1E3986D7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288EF0);
  }

  return result;
}

unint64_t sub_1E3986CC4()
{
  result = qword_1EE289668;
  if (!qword_1EE289668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F680);
    sub_1E3986B54();
    sub_1E32752B0(&qword_1EE289340, &qword_1ECF2F688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289668);
  }

  return result;
}

unint64_t sub_1E3986D7C()
{
  result = qword_1EE289670;
  if (!qword_1EE289670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F690);
    sub_1E3986B54();
    sub_1E32752B0(&qword_1EE289348, &qword_1ECF2F698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289670);
  }

  return result;
}

uint64_t sub_1E3986E5C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3986EB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

unint64_t sub_1E3986F10()
{
  result = qword_1EE288EE8;
  if (!qword_1EE288EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F6A0);
    sub_1E3986778();
    sub_1E3986914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288EE8);
  }

  return result;
}

id sub_1E3986F9C()
{
  v0 = objc_opt_self();
  sub_1E398B468(v0);
  if (v1 && (v2 = sub_1E4206124(), , (v2 & 1) != 0))
  {
    v3 = 16707;
  }

  else
  {
    v3 = 21333;
  }

  MEMORY[0x1E69109E0](v3, 0xE200000000000000);
  v4 = sub_1E3280A90(0, &qword_1EE23AE00);
  v5 = objc_opt_self();

  result = sub_1E39870C0(0xD00000000000001ALL, 0x80000001E4269930, [v5 vui_videosUIBundle], 0);
  if (result)
  {
    OUTLINED_FUNCTION_50();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E39870C0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_1E4205ED4();

  v7 = [swift_getObjCClassFromMetadata() imageNamed:v6 inBundle:a3 compatibleWithTraitCollection:a4];

  return v7;
}

void sub_1E3987144()
{
  if ([objc_opt_self() sharedInstance])
  {
    OUTLINED_FUNCTION_24_30("TV.Sports.Favorites.Onboarding.Title");
    OUTLINED_FUNCTION_83();
    if (v0)
    {
      OUTLINED_FUNCTION_57();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1E39871B0()
{
  v1 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    sub_1E3797E30(0xD000000000000023, 0x80000001E42698D0, v1);
    OUTLINED_FUNCTION_83();
    if (v0)
    {
      OUTLINED_FUNCTION_57();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1E3987230()
{
  v1 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    sub_1E3797E30(0xD00000000000002BLL, 0x80000001E42698A0, v1);
    OUTLINED_FUNCTION_83();
    if (v0)
    {
      OUTLINED_FUNCTION_57();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1E39872B0()
{
  if ([objc_opt_self() sharedInstance])
  {
    OUTLINED_FUNCTION_24_30("TV.Sports.Favorites.Onboarding.Defer");
    OUTLINED_FUNCTION_83();
    if (v0)
    {
      OUTLINED_FUNCTION_57();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1E3987320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = swift_allocObject();
  *(v19 + 16) = a12;
  *(v19 + 24) = a13;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  a9[10] = sub_1E3987404;
  a9[11] = v19;

  OUTLINED_FUNCTION_192();
}

void sub_1E3987438(id (**a1)()@<X8>)
{
  *a1 = sub_1E3986F9C;
  a1[1] = 0;
  a1[2] = sub_1E3987144;
  a1[3] = 0;
  a1[4] = sub_1E39871B0;
  a1[5] = 0;
  a1[6] = sub_1E3987230;
  a1[7] = 0;
  a1[8] = sub_1E39872B0;
  a1[9] = 0;
  a1[10] = j__OUTLINED_FUNCTION_3_24;
  a1[11] = 0;
}

id sub_1E39874B4()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_50();
  return sub_1E39874E4(v2);
}

id sub_1E39874E4(const void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = (v1 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_completion);
  *v4 = 0;
  v4[1] = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController____lazy_storage___controller) = 0;
  v5 = OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_imageView;
  v6 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
  v7 = OUTLINED_FUNCTION_5_8();
  *(v1 + v5) = [v8 v9];
  v10 = OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_confirmationButton;
  *(v1 + v10) = [objc_opt_self() boldButton];
  v11 = OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_deferButton;
  *(v1 + v11) = [objc_opt_self() linkButton];
  *(v1 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_lastRecordedPageEventData) = 0;
  v12 = OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_task;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F6E0);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = 0;
  *(v1 + v12) = v13;
  memcpy((v1 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_viewModel), a1, 0x60uLL);

  OUTLINED_FUNCTION_25();
  v16 = objc_msgSendSuper2(v14, v15, v1, ObjectType);
  [v16 setModalPresentationStyle_];
  [v16 setPreferredContentSize_];

  return v16;
}

id sub_1E39876F0()
{
  v1 = OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController____lazy_storage___controller;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController____lazy_storage___controller);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController____lazy_storage___controller);
  }

  else
  {
    v4 = v0;
    v5 = v0 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_viewModel;
    v6 = (*(v0 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_viewModel + 16))();
    v8 = v7;
    v9 = (*(v5 + 32))();
    v11 = v10;
    v12 = objc_allocWithZone(MEMORY[0x1E69B7D70]);
    v13 = sub_1E398B2CC(v6, v8, v9, v11, 0, 1);
    v14 = *(v4 + v1);
    *(v4 + v1) = v13;
    v3 = v13;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

uint64_t sub_1E39877BC(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  if (![objc_opt_self() userHasActiveAccount])
  {
    v7 = 2;
    return a1(v7);
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (byte_1ECF713B8)
  {
    v7 = 1;
    return a1(v7);
  }

  v9 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
  sub_1E4206434();

  v10 = sub_1E4206424();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a1;
  v11[5] = a2;
  sub_1E37748D8(0, 0, v6, &unk_1E42AEB18, v11);
}

uint64_t sub_1E398791C()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1E41FFCB4();
  v0[4] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_86_0();
  v5 = sub_1E41FF154();
  v0[7] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v0[8] = v6;
  v0[9] = OUTLINED_FUNCTION_86_0();
  v7 = sub_1E41FF024();
  v0[10] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v0[11] = v8;
  v0[12] = OUTLINED_FUNCTION_86_0();
  v9 = sub_1E41FF044();
  v0[13] = v9;
  OUTLINED_FUNCTION_8_0(v9);
  v0[14] = v10;
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();
  sub_1E4206434();
  v0[18] = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  v12 = sub_1E42063B4();
  v0[19] = v12;
  v0[20] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1E3987AF4, v12, v11);
}

uint64_t sub_1E3987AF4()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FF0C4();
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_1E3987B94;
  v2 = *(v0 + 96);

  return MEMORY[0x1EEE43730](v2);
}

uint64_t sub_1E3987B94()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 176) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 160);
  v7 = *(v2 + 152);
  if (v0)
  {
    v8 = sub_1E3988004;
  }

  else
  {
    v8 = sub_1E3987D2C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1E3987D2C()
{
  v39 = v0;
  v1 = v0[17];
  v37 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[4];

  sub_1E41FF014();
  (*(v5 + 8))(v4, v6);
  v10 = sub_1E324FBDC();
  (*(v7 + 16))(v8, v10, v9);
  (*(v3 + 16))(v37, v1, v2);
  v11 = sub_1E41FFC94();
  v12 = sub_1E42067E4();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[16];
  v16 = v0[5];
  v15 = v0[6];
  v17 = v0[4];
  if (v13)
  {
    v18 = OUTLINED_FUNCTION_6_21();
    v36 = v17;
    v19 = swift_slowAlloc();
    v38 = v19;
    *v18 = 136315138;
    v34 = sub_1E41FF034();
    v35 = v15;
    v21 = v20;
    v22 = OUTLINED_FUNCTION_14_62();
    v23(v22);
    sub_1E3270FC8(v34, v21, &v38);
    OUTLINED_FUNCTION_50();

    *(v18 + 4) = v14;
    _os_log_impl(&dword_1E323F000, v11, v12, "onboarding sheet. status is:%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v16 + 8))(v35, v36);
  }

  else
  {

    v24 = OUTLINED_FUNCTION_14_62();
    v25(v24);
    (*(v16 + 8))(v15, v17);
  }

  v26 = v0[17];
  v27 = v0[15];
  v28 = v0[13];
  v29 = v0[2];
  (*(v0[14] + 104))(v27, *MEMORY[0x1E69D5858], v28);
  v30 = sub_1E3988234();
  v37(v27, v28);
  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = 3;
  }

  v29(v31);
  sub_1E398B540(v31);
  v37(v26, v28);

  OUTLINED_FUNCTION_15_12();

  return v32();
}

uint64_t sub_1E3988004()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E39880B8()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E398814C;

  return sub_1E398791C();
}

uint64_t sub_1E398814C()
{
  OUTLINED_FUNCTION_24();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1E3988234()
{
  sub_1E41FF044();
  sub_1E398B560();
  sub_1E4206254();
  sub_1E4206254();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1E42079A4();
  }

  return v1 & 1;
}

void sub_1E39882E4()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_completion);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController____lazy_storage___controller) = 0;
  v2 = OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_imageView;
  v3 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
  v4 = OUTLINED_FUNCTION_5_8();
  *(v0 + v2) = [v5 v6];
  v7 = OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_confirmationButton;
  *(v0 + v7) = [objc_opt_self() boldButton];
  v8 = OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_deferButton;
  *(v0 + v8) = [objc_opt_self() linkButton];
  *(v0 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_lastRecordedPageEventData) = 0;
  v9 = OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_task;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F6E0);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = 0;
  *(v0 + v9) = v10;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3988438()
{
  v1 = v0;
  v46.receiver = v0;
  v46.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v46, sel_viewDidLoad);
  v2 = sub_1E39876F0();
  [v2 setModalPresentationStyle_];

  v3 = OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController____lazy_storage___controller;
  [v1 addChildViewController_];
  v4 = [v1 view];
  if (!v4)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v5 = v4;
  v6 = [*&v1[v3] view];
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = v6;
  [v5 addSubview_];

  [*&v1[v3] didMoveToParentViewController_];
  v8 = [*&v1[v3] contentView];
  v9 = [v8 constraints];

  sub_1E3280A90(0, &qword_1EE23B1A0);
  v10 = sub_1E42062B4();

  v11 = sub_1E32AE9B0(v10);
  for (i = 0; ; ++i)
  {
    if (v11 == i)
    {

      goto LABEL_14;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1E6911E60](i, v10);
    }

    else
    {
      if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v13 = *(v10 + 8 * i + 32);
    }

    v14 = v13;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if ([v13 firstAttribute] == 8)
    {
      break;
    }
  }

  v15 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1E4298880;
  *(v16 + 32) = v14;
  v17 = v14;
  v18 = sub_1E42062A4();

  [v15 deactivateConstraints_];

LABEL_14:
  v19 = [v1 view];
  if (!v19)
  {
    goto LABEL_21;
  }

  v20 = v19;
  v21 = objc_opt_self();
  v22 = [v21 systemBackgroundColor];
  [v20 setBackgroundColor_];

  v23 = [*&v1[v3] contentView];
  v24 = [v21 clearColor];
  [v23 setBackgroundColor_];

  v25 = [v1 view];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 traitCollection];

    v28 = [v27 userInterfaceStyle];
    sub_1E3988D9C(v28, 0);
    v29 = [*&v1[v3] buttonTray];
    v30 = sub_1E42062A4();
    [v29 setPrivacyLinkForBundles_];

    v31 = *&v1[OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_confirmationButton];
    v32 = &v1[OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_viewModel];
    v33 = (*&v1[OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_viewModel + 48])();
    sub_1E398B4CC(v33, v34, 0, v31);
    OUTLINED_FUNCTION_30_28(v35, v36, v37, sel_doConfirmationAction);
    v38 = [*&v1[v3] buttonTray];
    [v38 addButton_];

    v39 = *&v1[OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_deferButton];
    v40 = v32[8]();
    sub_1E398B4CC(v40, v41, 0, v39);
    OUTLINED_FUNCTION_30_28(v42, v43, v44, sel_doDeferAction);
    v45 = [*&v1[v3] buttonTray];
    [v45 addButton_];

    return;
  }

LABEL_22:
  __break(1u);
}

void sub_1E3988938(char a1)
{
  v20.receiver = v1;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, sel_viewDidAppear_, a1 & 1);
  v3 = objc_opt_self();
  v4 = [v3 sharedInstance];
  v5 = [v4 lastRecordedPageEventData];

  v6 = *&v1[OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_lastRecordedPageEventData];
  *&v1[OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_lastRecordedPageEventData] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  sub_1E4205F14();
  v8 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_3_80();
  v9 = sub_1E4205F14();
  *(inited + 96) = v8;
  *(inited + 72) = v9;
  *(inited + 80) = v10;
  v18 = sub_1E4205F14();
  v19 = v11;
  OUTLINED_FUNCTION_3_80();
  v12 = sub_1E4205F14();
  *(inited + 168) = v8;
  *(inited + 144) = v12;
  *(inited + 152) = v13;
  v14 = MEMORY[0x1E69E69B8];
  OUTLINED_FUNCTION_57();
  sub_1E4205CB4();
  v15 = objc_opt_self();
  OUTLINED_FUNCTION_57();
  sub_1E4205C44();
  OUTLINED_FUNCTION_11_5();

  v16 = [v15 createWithMetricsData_];

  v17 = [v3 sharedInstance];
  [v17 recordPage_];
}

void sub_1E3988B84(char a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewDidDisappear_, a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_lastRecordedPageEventData];
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    v6 = [v4 sharedInstance];
    [v6 setLastRecordedPageEventData_];
  }
}

void sub_1E3988C70()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewWillLayoutSubviews);
  v1 = sub_1E39876F0();
  v2 = [v1 view];

  if (v2)
  {
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      [v2 setFrame_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1E3988D9C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = (*(v2 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_viewModel))();
  v8 = v6;
  if (v9)
  {
    if (a1 == 2)
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      v11 = objc_opt_self();
      v12 = OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_imageView;
      v13 = *(v3 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_imageView);
      v14 = v10;
      v15 = [v11 makeImageViewWithDescriptor:v14 existingView:v13];
      if (v15)
      {
        v16 = v15;
        if (a2)
        {
        }

        else
        {
          v47 = *(v3 + v12);
          *(v3 + v12) = v15;
          v76 = v15;

          [v76 setTranslatesAutoresizingMaskIntoConstraints_];
          v48 = sub_1E39876F0();
          v49 = [v48 contentView];

          [v49 addSubview_];
          v74 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
          v73 = v14;
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_1E42A76D0;
          v51 = [*(v3 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController____lazy_storage___controller) contentView];
          v52 = [v51 heightAnchor];

          v53 = [v52 constraintEqualToConstant_];
          *(v50 + 32) = v53;
          v54 = [*(v3 + v12) heightAnchor];
          v55 = OUTLINED_FUNCTION_7_83();
          v56 = [v55 heightAnchor];

          v57 = [v53 constraintEqualToAnchor:v56 multiplier:0.6];
          *(v50 + 40) = v57;
          v58 = [*(v3 + v12) centerYAnchor];
          v59 = OUTLINED_FUNCTION_7_83();
          v60 = [v59 centerYAnchor];

          v61 = [v53 constraintEqualToAnchor:v60 constant:22.0];
          *(v50 + 48) = v61;
          v62 = [*(v3 + v12) leadingAnchor];
          v63 = OUTLINED_FUNCTION_7_83();
          v64 = [v63 leadingAnchor];

          v65 = [v53 constraintEqualToAnchor_];
          *(v50 + 56) = v65;
          v66 = [*(v3 + v12) trailingAnchor];
          v67 = OUTLINED_FUNCTION_7_83();
          v68 = [v67 trailingAnchor];

          v69 = [v53 constraintEqualToAnchor_];
          *(v50 + 64) = v69;
          sub_1E3280A90(0, &qword_1EE23B1A0);
          v70 = sub_1E42062A4();

          [v74 activateConstraints_];
        }
      }

      else
      {
      }
    }

    OUTLINED_FUNCTION_192();
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      v17 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
      v18 = OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_imageView;
      v19 = *(v2 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_imageView);
      *(v2 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_imageView) = v17;
      v20 = v17;

      [v20 setContentMode_];
      [*(v3 + v18) setTranslatesAutoresizingMaskIntoConstraints_];
      v21 = sub_1E39876F0();
      v22 = [v21 contentView];

      [v22 addSubview_];
      v75 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1E42A76D0;
      v24 = [*(v3 + v18) heightAnchor];
      v25 = [v24 constraintEqualToConstant_];

      *(v23 + 32) = v25;
      v26 = [*(v3 + v18) topAnchor];
      v27 = [*(v3 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController____lazy_storage___controller) contentView];
      v28 = [v27 topAnchor];

      v29 = OUTLINED_FUNCTION_19_45();
      *(v23 + 40) = v29;
      v30 = [*(v3 + v18) leadingAnchor];
      v31 = OUTLINED_FUNCTION_22_31();
      v32 = [v31 leadingAnchor];

      v33 = OUTLINED_FUNCTION_19_45();
      *(v23 + 48) = v33;
      v34 = [*(v3 + v18) trailingAnchor];
      v35 = OUTLINED_FUNCTION_22_31();
      v36 = [v35 trailingAnchor];

      v37 = OUTLINED_FUNCTION_19_45();
      *(v23 + 56) = v37;
      v38 = [*(v3 + v18) bottomAnchor];
      v39 = OUTLINED_FUNCTION_22_31();
      v40 = [v39 bottomAnchor];

      v41 = [v26 constraintEqualToAnchor_];
      *(v23 + 64) = v41;
      sub_1E3280A90(0, &qword_1EE23B1A0);
      v42 = sub_1E42062A4();

      [v75 activateConstraints_];
    }

    OUTLINED_FUNCTION_192();

    sub_1E398B380(v43, v44, v45);
  }
}

void sub_1E39894FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_task);
  os_unfair_lock_lock((v1 + 24));
  sub_1E398966C((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_1E3989558(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  if (!*a1)
  {
    v7 = sub_1E4206474();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v8;
    sub_1E398A91C(0, 0, v6, &unk_1E42AEDD8, v9);
    v10 = OUTLINED_FUNCTION_11_5();
    sub_1E325A8C0(v10);
    *a1 = a2;
  }
}

uint64_t sub_1E3989698()
{
  OUTLINED_FUNCTION_24();
  v0[13] = v1;
  v2 = sub_1E41FF144();
  v0[14] = v2;
  OUTLINED_FUNCTION_8_0(v2);
  v0[15] = v3;
  v0[16] = OUTLINED_FUNCTION_86_0();
  v4 = sub_1E41FF044();
  v0[17] = v4;
  OUTLINED_FUNCTION_8_0(v4);
  v0[18] = v5;
  v0[19] = OUTLINED_FUNCTION_86_0();
  v6 = sub_1E41FEFF4();
  v0[20] = v6;
  OUTLINED_FUNCTION_8_0(v6);
  v0[21] = v7;
  v0[22] = OUTLINED_FUNCTION_86_0();
  v8 = sub_1E41FF154();
  v0[23] = v8;
  OUTLINED_FUNCTION_8_0(v8);
  v0[24] = v9;
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v10 = sub_1E41FF024();
  v0[27] = v10;
  OUTLINED_FUNCTION_8_0(v10);
  v0[28] = v11;
  v0[29] = OUTLINED_FUNCTION_86_0();
  v12 = sub_1E41FFCB4();
  v0[30] = v12;
  OUTLINED_FUNCTION_8_0(v12);
  v0[31] = v13;
  v0[32] = swift_task_alloc();
  v0[33] = swift_task_alloc();
  v0[34] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1E39898EC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[35] = Strong;
  v2 = v0[34];
  if (!Strong)
  {

    OUTLINED_FUNCTION_15_12();
    OUTLINED_FUNCTION_29_30();

    __asm { BRAA            X1, X16 }
  }

  v3 = v0[30];
  v4 = v0[31];
  v5 = sub_1E324FBDC();
  v0[36] = v5;
  v6 = *(v4 + 16);
  v0[37] = v6;
  v0[38] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = sub_1E41FFC94();
  v8 = sub_1E42067E4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1E323F000, v7, v8, "setting sports favorites sync enabled", v9, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v10 = v0[34];
  v11 = v0[30];
  v12 = v0[31];
  v14 = v0[18];
  v13 = v0[19];
  v15 = v0[17];

  v16 = *(v12 + 8);
  v0[39] = v16;
  v16(v10, v11);
  sub_1E41FF0C4();
  (*(v14 + 104))(v13, *MEMORY[0x1E69D5858], v15);
  sub_1E41FEFE4();
  v19 = swift_task_alloc();
  v0[40] = v19;
  *v19 = v0;
  v19[1] = sub_1E3989CD0;
  OUTLINED_FUNCTION_29_30();

  return MEMORY[0x1EEE43738]();
}

uint64_t sub_1E3989CD0()
{
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[41] = v0;

  if (v0)
  {
    (*(v2[21] + 8))(v2[22], v2[20]);
    v4 = OUTLINED_FUNCTION_57();
    v5(v4);
    v6 = sub_1E398A5B4;
  }

  else
  {
    v7 = v2[26];
    v8 = v2[23];
    v9 = v2[24];
    (*(v2[21] + 8))(v2[22], v2[20]);
    v10 = *(v9 + 8);
    v2[42] = v10;
    v2[43] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v7, v8);
    v11 = OUTLINED_FUNCTION_57();
    v12(v11);
    v6 = sub_1E3989E84;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E3989E84()
{
  v25 = v0;
  v1 = (*(v0[35] + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_viewModel + 80))();
  if (v1)
  {
    v2 = v1;
    sub_1E32772D8(MEMORY[0x1E69E7CC0]);
    v3 = OUTLINED_FUNCTION_11_5();
    v4 = sub_1E32772D8(v3);
    v6 = 0;
    v23 = v4;
    v7 = *(v2 + 16);
    v8 = v2 + 48;
    while (v7 != v6)
    {
      if (v6 >= *(v2 + 16))
      {
        __break(1u);
        return MEMORY[0x1EEE43750](v4, v5);
      }

      v9 = *(v8 - 16);
      v10 = *(v8 - 8);

      sub_1E3277398(&v24, v9, v10);

      v8 += 24;
      ++v6;
    }

    sub_1E41FF0C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F6E8);
    v11 = sub_1E41FF114();
    v12 = *(v11 - 8);
    v13 = *(v12 + 72);
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v15 = swift_allocObject();
    v0[45] = v15;
    *(v15 + 16) = xmmword_1E4299720;
    v16 = (v15 + v14);

    *v16 = sub_1E39701B0(v17);
    v18 = *(v12 + 104);
    v18(v16, *MEMORY[0x1E69D58D8], v11);

    *(v16 + v13) = sub_1E39701B0(v23);
    v18((v16 + v13), *MEMORY[0x1E69D58E0], v11);
    v19 = swift_task_alloc();
    v0[46] = v19;
    *v19 = v0;
    v19[1] = sub_1E398A2FC;
    v4 = v0[16];
    v5 = v15;

    return MEMORY[0x1EEE43750](v4, v5);
  }

  else
  {
    sub_1E4206434();
    v0[44] = OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_50();
    v21 = sub_1E42063B4();

    return MEMORY[0x1EEE6DFA0](sub_1E398A180, v21, v20);
  }
}

uint64_t sub_1E398A180()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 280);

  [v1 dismissViewControllerAnimated:1 completion:0];
  sub_1E398AC08();
  v2 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E398A200()
{
  v1 = *(v0 + 280);
  v2 = *&v1[OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_task];
  os_unfair_lock_lock((v2 + 24));

  *(v2 + 16) = 0;
  os_unfair_lock_unlock((v2 + 24));

  OUTLINED_FUNCTION_15_12();

  return v3();
}

uint64_t sub_1E398A2FC()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  *v4 = *v1;
  v3[47] = v0;

  v5 = v2[42];
  v6 = v2[25];
  v7 = v2[23];
  if (v0)
  {
    v5(v2[25], v2[23]);

    v8 = sub_1E398A768;
  }

  else
  {
    v10 = v3[15];
    v9 = v3[16];
    v11 = v3[14];

    v5(v6, v7);
    (*(v10 + 8))(v9, v11);
    v8 = sub_1E398A4CC;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1E398A4CC()
{
  OUTLINED_FUNCTION_24();
  sub_1E4206434();
  *(v0 + 384) = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  v1 = OUTLINED_FUNCTION_0_93();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E398A534()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 280);

  [v1 dismissViewControllerAnimated:1 completion:0];
  sub_1E398AC08();
  v2 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E398A5B4()
{
  v22 = v0;
  v2 = v0[41];
  v3 = OUTLINED_FUNCTION_13_64();
  v4(v3);
  v5 = v2;
  v6 = sub_1E41FFC94();
  v7 = sub_1E42067F4();

  if (os_log_type_enabled(v6, v7))
  {
    v19 = v0[33];
    v20 = v0[39];
    v8 = v0[30];
    OUTLINED_FUNCTION_6_21();
    v21 = OUTLINED_FUNCTION_26_8();
    *v1 = 136315138;
    swift_getErrorValue();
    v9 = sub_1E4207AB4();
    v11 = sub_1E3270FC8(v9, v10, &v21);

    *(v1 + 4) = v11;
    _os_log_impl(&dword_1E323F000, v6, v7, "Failed to enable favorites sync error - %s", v1, 0xCu);
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_6_0();

    v20(v19, v8);
  }

  else
  {
    v12 = v0[39];
    v13 = v0[33];
    v14 = v0[30];

    v12(v13, v14);
  }

  sub_1E4206434();
  v0[48] = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  v15 = OUTLINED_FUNCTION_0_93();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1E398A768()
{
  v22 = v0;
  v2 = *(v0 + 376);
  (*(v0 + 296))(*(v0 + 256), *(v0 + 288), *(v0 + 240));
  v3 = v2;
  v4 = sub_1E41FFC94();
  v5 = sub_1E42067F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 376);
    v19 = *(v0 + 256);
    v20 = *(v0 + 312);
    v7 = *(v0 + 240);
    OUTLINED_FUNCTION_6_21();
    v21 = OUTLINED_FUNCTION_26_8();
    *v1 = 136315138;
    swift_getErrorValue();
    v8 = sub_1E4207AB4();
    v10 = sub_1E3270FC8(v8, v9, &v21);

    *(v1 + 4) = v10;
    OUTLINED_FUNCTION_32_34(&dword_1E323F000, v11, v12, "Failed to auto-favorite error - %s");
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_6_0();

    v20(v19, v7);
  }

  else
  {
    v13 = *(v0 + 312);

    v14 = OUTLINED_FUNCTION_57();
    v13(v14);
  }

  sub_1E4206434();
  *(v0 + 384) = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  v15 = OUTLINED_FUNCTION_0_93();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1E398A91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  sub_1E325A828(a3, v21 - v9);
  v11 = sub_1E4206474();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1E325A8C0(v10);
  }

  else
  {
    sub_1E4206464();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1E42063B4();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_1E4205FB4() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

void sub_1E398AC08()
{
  v0 = [objc_opt_self() sharedInstance];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4298AD0;
  sub_1E4205F14();
  v2 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_3_80();
  v3 = sub_1E4205F14();
  *(inited + 96) = v2;
  *(inited + 72) = v3;
  *(inited + 80) = v4;
  sub_1E4205F14();
  OUTLINED_FUNCTION_3_80();
  v5 = sub_1E4205F14();
  *(inited + 168) = v2;
  *(inited + 144) = v5;
  *(inited + 152) = v6;
  sub_1E4205F14();
  OUTLINED_FUNCTION_3_80();
  v7 = sub_1E4205F14();
  *(inited + 240) = v2;
  *(inited + 216) = v7;
  *(inited + 224) = v8;
  v13 = sub_1E4205F14();
  v14 = v9;
  OUTLINED_FUNCTION_3_80();
  v10 = sub_1E4205F14();
  *(inited + 312) = v2;
  *(inited + 288) = v10;
  *(inited + 296) = v11;
  v12 = MEMORY[0x1E69E69B8];
  OUTLINED_FUNCTION_57();
  sub_1E4205CB4();
  sub_1E4205C44();
  OUTLINED_FUNCTION_11_5();

  [v0 recordClick_];
}

id sub_1E398ADEC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_5();
  ObjectType = swift_getObjectType();
  sub_1E3988D9C([v3 userInterfaceStyle], 1);
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_willTransitionToTraitCollection_withTransitionCoordinator_, v3, a2);
}

void *sub_1E398B028(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[11] = 0;
    *(result + 9) = 0u;
    *(result + 7) = 0u;
    *(result + 5) = 0u;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
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

      return OUTLINED_FUNCTION_25_9(result, (a2 - 1));
    }

    *(result + 96) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_25_9(result, (a2 - 1));
    }
  }

  return result;
}

uint64_t sub_1E398B09C(uint64_t *a1, unsigned int a2)
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

void *sub_1E398B0EC(void *result, unsigned int a2, unsigned int a3)
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
      return OUTLINED_FUNCTION_25_9(result, a2);
    }
  }

  return result;
}

void *sub_1E398B13C(void *result, int a2)
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

uint64_t get_enum_tag_for_layout_string_8VideosUI39SportsFavoritesOnboardingViewControllerC0E11StatusErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E398B1C0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void *sub_1E398B21C(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_25_9(result, a2 + 2);
    }
  }

  return result;
}

uint64_t sub_1E398B284(uint64_t a1, int a2)
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

uint64_t sub_1E398B2A4(uint64_t result, int a2, int a3)
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

id sub_1E398B2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_1E4205ED4();

  if (a4)
  {
    v12 = sub_1E4205ED4();
  }

  else
  {
    v12 = 0;
  }

  v13 = [v7 initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

void sub_1E398B380(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }
}

uint64_t sub_1E398B3D8()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E398B5D0;

  return sub_1E3989698();
}

uint64_t sub_1E398B468(void *a1)
{
  v1 = [a1 storefrontId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205F14();

  return v3;
}

void sub_1E398B4CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1E4205ED4();

  [a4 setTitle:v6 forState:a3];
}

void sub_1E398B540(id a1)
{
  if (a1 != 3)
  {
    sub_1E398B550(a1);
  }
}

void sub_1E398B550(id a1)
{
  if (a1 >= 3)
  {
  }
}

unint64_t sub_1E398B560()
{
  result = qword_1ECF2F6F0;
  if (!qword_1ECF2F6F0)
  {
    sub_1E41FF044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2F6F0);
  }

  return result;
}

void OUTLINED_FUNCTION_32_34(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id sub_1E398B5FC()
{
  v1 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_customBackButton;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1E398B640(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_customBackButton;
  OUTLINED_FUNCTION_37();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1E398B688(int a1, char a2, double a3)
{
  if (sub_1E39DFFC8())
  {
    return;
  }

  if ((a2 & 1) != 0 && (v3[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_effectiveTitleOpacity + 8] & 1) == 0)
  {
    v15 = *&v3[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_effectiveTitleOpacity];
    OUTLINED_FUNCTION_21();
    v17 = (*(v16 + 200))();
    [v17 setAlpha_];
LABEL_12:

    return;
  }

  [v3 floatingTabBarHeight];
  v8 = v7 > 0.0;
  v9 = [objc_opt_self() isPad];
  v10 = &v3[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_effectiveTitleOpacity];
  v11 = 0.0;
  if ((v9 & a1 & v8) == 0)
  {
    v11 = a3;
  }

  *v10 = v11;
  *(v10 + 8) = 0;
  OUTLINED_FUNCTION_21();
  v13 = (*(v12 + 200))();
  if (v13)
  {
    v14 = *&v3[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_effectiveTitleOpacity];
    if (v3[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_effectiveTitleOpacity + 8])
    {
      v14 = a3;
    }

    v17 = v13;
    [v13 setAlpha_];
    goto LABEL_12;
  }
}

void *sub_1E398B808()
{
  v1 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_titleView;
  OUTLINED_FUNCTION_0_12();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E398B844(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_titleView;
  OUTLINED_FUNCTION_3_0();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_titleView;
  v6 = a1;
  OUTLINED_FUNCTION_3_0();
  v7 = *&v1[v5];
  if (v7 && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    *&v1[v5] = v4;
    v4 = v4;
  }

  else if ([v1 vui:v7 addSubview:v4 oldView:?])
  {
    [v1 setHideStandardTitle_];
  }

  v8 = *&v1[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_titleOpacity];
  OUTLINED_FUNCTION_21();
  v10 = (*(v9 + 344))();
  sub_1E398B688(v10 & 1, 0, v8);
}

void (*sub_1E398B984(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_titleView;
  OUTLINED_FUNCTION_5_0();
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_1E398BA04;
}

void sub_1E398BA04(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_1E398B844(v3);
  }

  else
  {
    sub_1E398B844(*(*a1 + 24));
  }

  free(v2);
}

uint64_t sub_1E398BA70()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_backButtonFrameChangeHandler);
  OUTLINED_FUNCTION_5_0();
  v2 = *v1;
  sub_1E37FAED4(*v1, v1[1]);
  return v2;
}

uint64_t sub_1E398BAC4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_backButtonFrameChangeHandler);
  OUTLINED_FUNCTION_3_0();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1E37FAED8(v6, v7);
}

uint64_t sub_1E398BB94()
{
  v1 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_allowsUberTinting;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E398BBF0(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_allowsUberTinting;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

id sub_1E398BC80()
{
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 176))();
  v3 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_isNavigationRoot;
  OUTLINED_FUNCTION_15_0();
  [v2 setHidden_];

  sub_1E398B688(v0[v3], 0, *&v0[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_titleOpacity]);
  return [v0 setHeightShouldBeIncreasedByTabBarHeight_];
}

uint64_t sub_1E398BD3C()
{
  v1 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_isNavigationRoot;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

id sub_1E398BD70(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_isNavigationRoot;
  OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return sub_1E398BC80();
}

id (*sub_1E398BDB4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E398BE08;
}

id sub_1E398BE08(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1E398BC80();
  }

  return result;
}

void sub_1E398BE74(void *a1)
{
  OUTLINED_FUNCTION_37();
  swift_unknownObjectWeakAssign();
}

void (*sub_1E398BEC0(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_touchProxyView;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E38D12C8;
}

uint64_t sub_1E398BF44()
{
  v1 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_supportsMaterialBackButton;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E398BF78(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_supportsMaterialBackButton;
  result = OUTLINED_FUNCTION_37();
  *(v1 + v3) = a1;
  return result;
}

unsigned __int8 *sub_1E398C014(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v43 = a1;
  v38 = a3;
  v6 = sub_1E41FDEC4();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_titleView;
  *&v4[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_titleView] = 0;
  v9 = &v4[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_backButtonFrameChangeHandler];
  *v9 = 0;
  v9[1] = 0;
  v4[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_allowsUberTinting] = 1;
  *&v4[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_titleOpacity] = 0x3FF0000000000000;
  v10 = &v4[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_effectiveTitleOpacity];
  *v10 = 0;
  v10[8] = 1;
  v11 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_hostViewController;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_isNavigationRoot] = 0;
  v12 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_touchProxyView;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_supportsMaterialBackButton;
  v4[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_supportsMaterialBackButton] = 2;
  v14 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_isMaterialBackButtonDisplayed;
  v4[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_isMaterialBackButtonDisplayed] = 2;
  v15 = &v4[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_backButtonFrame];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = type metadata accessor for UberNavigationBarTitleView();
  v17 = sub_1E398C4A0();
  if (!v17)
  {

    sub_1E37FAED8(*v9, v9[1]);
    MEMORY[0x1E69144A0](&v4[v11]);
    MEMORY[0x1E69144A0](&v4[v12]);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v18 = v17;
  v20 = v42;
  v19 = v43;
  *&v4[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_customBackButton] = v17;
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_3_0();
  v4[v13] = a2;
  v4[v14] = a2 & 1;
  v50.receiver = v4;
  v50.super_class = v16;
  v21 = v18;
  v22 = 0.0;
  v23 = objc_msgSendSuper2(&v50, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v24 = v21;
  [v23 addSubview_];
  if (a2 == 2 || (a2 & 1) == 0)
  {
    if (!v20)
    {
      goto LABEL_10;
    }

    v25 = v39;
    aBlock = v38;
    v45 = v20;
    sub_1E41FDE64();
    sub_1E32822E0();
    v26 = sub_1E42071E4();
    v28 = v27;
    (*(v40 + 8))(v25, v41);

    v29 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v29 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (!v29)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v22 = 1.0;
LABEL_10:
  [v23 setBackButtonMaximumWidth_];
  v30 = v23[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_isMaterialBackButtonDisplayed];

  v31 = 1.0;
  v32 = 0.0;
  if (v30 != 2 && (v30 & 1) != 0)
  {
    v33 = [objc_opt_self() whiteColor];
    [v24 setTintColor_];

    v31 = 0.0;
    [v24 setScrolledNonUberPercentage_];
    v32 = 1.0;
  }

  [v24 setAlpha_];

  v34 = v23;
  [v34 setBackButtonAlpha_];
  OUTLINED_FUNCTION_4_0();
  v35 = swift_allocObject();
  OUTLINED_FUNCTION_141_0();
  v48 = sub_1E398C830;
  v49 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v45 = 1107296256;
  v46 = sub_1E37C0588;
  v47 = &block_descriptor_34;
  v36 = _Block_copy(&aBlock);

  [v24 setSelectActionHandler_];

  _Block_release(v36);
  return v34;
}

uint64_t sub_1E398C4A0()
{
  type metadata accessor for ButtonLayout();
  v0 = j__OUTLINED_FUNCTION_18();
  v1 = sub_1E3B050E8();
  v2 = j__OUTLINED_FUNCTION_18();
  v3 = sub_1E3BBD964(8, v0 & 1, v1, v2 & 1);
  type metadata accessor for ViewModel();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BD0;
  ViewModelKeys.rawValue.getter(7);
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  v7 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0xD000000000000011;
  *(inited + 56) = 0x80000001E4269950;
  ViewModelKeys.rawValue.getter(13);
  *(inited + 80) = v8;
  *(inited + 88) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B588);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E4297BE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1E4297BE0;
  sub_1E384EE08(39);
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1E4299720;
  *(v14 + 32) = sub_1E3C7CCAC(2);
  *(v14 + 40) = v15;
  *(v14 + 72) = MEMORY[0x1E69E6370];
  *(v14 + 48) = 0;
  *(v14 + 80) = sub_1E3C7CCAC(0);
  *(v14 + 88) = v16;
  *(v14 + 120) = v7;
  *(v14 + 96) = 0xD000000000000019;
  *(v14 + 104) = 0x80000001E4269970;
  *(v11 + 48) = OUTLINED_FUNCTION_17_47();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  *(v10 + 32) = OUTLINED_FUNCTION_17_47();
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F750);
  *(inited + 96) = v10;
  ViewModelKeys.rawValue.getter(8);
  *(inited + 128) = v17;
  *(inited + 136) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F758);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1E4297BD0;
  *(v19 + 32) = sub_1E3BA363C(0);
  *(v19 + 40) = v20;
  v21 = sub_1E3BA5480();
  *(v19 + 48) = *v21;

  *(v19 + 56) = sub_1E3BA363C(1);
  *(v19 + 64) = v22;
  *(v19 + 72) = *v21;

  *(v19 + 80) = sub_1E3BA363C(2);
  *(v19 + 88) = v23;
  *(v19 + 96) = *v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770);
  v24 = OUTLINED_FUNCTION_17_47();
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F768);
  *(inited + 144) = v24;
  v25 = OUTLINED_FUNCTION_17_47();
  v26 = sub_1E39BED80(59, v25, 0);
  type metadata accessor for UIFactory();
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  sub_1E3280A90(0, &qword_1EE23ACF0);

  v27 = sub_1E393D92C(v26, 0, v29, v3);

  sub_1E325F748(v29, &qword_1ECF296C0);
  return v27;
}

void sub_1E398C830()
{
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      v3 = [v2 vuiNavigationController];

      if (v3)
      {
      }
    }
  }
}

void sub_1E398C8D0()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_titleView) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_backButtonFrameChangeHandler);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_allowsUberTinting) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_titleOpacity) = 0x3FF0000000000000;
  v2 = v0 + OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_effectiveTitleOpacity;
  *v2 = 0;
  *(v2 + 8) = 1;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_isNavigationRoot) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_supportsMaterialBackButton) = 2;
  *(v0 + OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_isMaterialBackButtonDisplayed) = 2;
  v3 = v0 + OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_backButtonFrame;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 1;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E398C9F8()
{
  v1 = v0;
  v107.receiver = v0;
  v107.super_class = type metadata accessor for UberNavigationBarTitleView();
  objc_msgSendSuper2(&v107, sel_layoutSubviews);
  [v0 bounds];
  OUTLINED_FUNCTION_3();
  [v0 layoutMargins];
  v2 = OUTLINED_FUNCTION_6();
  v8 = UIEdgeInsetsInsetRect(v2, v3, v4, v5, v6, v7);
  v101 = v9;
  v103 = v8;
  v99 = v11;
  v100 = v10;
  v12 = [v0 overlays];
  v13 = 3.0;
  v14 = 0.0;
  if (v12 && (v15 = v12, sub_1E4206E14(), v15, (v112 & 1) == 0))
  {
    v16 = v110;
    v17 = v111;
    v14 = v108;
    v13 = v109;
  }

  else
  {
    v16 = 44.0;
    v17 = 44.0;
  }

  v105 = v17;
  rect = v16;
  OUTLINED_FUNCTION_8_22();
  v19 = *(v18 + 176);
  v20 = v19();
  [v20 intrinsicContentSize];
  v98 = v21;

  [v1 vuiIsRTL];
  v115.origin.x = v14;
  v115.origin.y = v13;
  v115.size.width = v16;
  v115.size.height = v17;
  CGRectGetWidth(v115);
  v116.origin.x = v103;
  v116.origin.y = v101;
  v116.size.width = v100;
  v116.size.height = v99;
  CGRectGetMinX(v116);
  v117.origin.x = v103;
  v117.origin.y = v101;
  v117.size.width = v100;
  v117.size.height = v99;
  CGRectGetMaxX(v117);
  v102 = v14;
  v118.origin.x = v14;
  v118.origin.y = v13;
  v118.size.height = v17;
  v118.size.width = v16;
  CGRectGetHeight(v118);
  v104 = v13;
  v22 = v19();
  v23 = OUTLINED_FUNCTION_6();
  [v24 v25];

  v26 = &v1[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_backButtonFrame];
  v27 = *&v1[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_backButtonFrame];
  v28 = *&v1[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_backButtonFrame + 8];
  v29 = *&v1[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_backButtonFrame + 16];
  v30 = *&v1[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_backButtonFrame + 24];
  v31 = v1[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_backButtonFrame + 32];
  v32 = v19();
  [v32 frame];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  if ((v31 & 1) != 0 || (v119.origin.x = v27, v119.origin.y = v28, v119.size.width = v29, v119.size.height = v30, v137.origin.x = v34, v137.origin.y = v36, v137.size.width = v38, v137.size.height = v40, !CGRectEqualToRect(v119, v137)))
  {
    OUTLINED_FUNCTION_8_22();
    v42 = (*(v41 + 224))();
    if (v42)
    {
      v44 = v42;
      v45 = v43;
      v42();
      v42 = sub_1E37FAED8(v44, v45);
    }

    v46 = (v19)(v42);
    [v46 frame];
    OUTLINED_FUNCTION_3();

    *v26 = v27;
    v26[1] = v40;
    v26[2] = v28;
    v26[3] = v29;
    *(v26 + 32) = 0;
  }

  OUTLINED_FUNCTION_8_22();
  v48 = (*(v47 + 200))();
  if (v48)
  {
    v49 = v48;
    v50 = 0.0;
    if ([objc_opt_self() isPad])
    {
      v51 = OUTLINED_FUNCTION_18_42();
      [v1 safeAreaInsets];
      if (v51)
      {
        v50 = -v53;
      }

      else
      {
        v50 = v52;
      }
    }

    [v1 bounds];
    Width = CGRectGetWidth(v120);
    [v1 layoutMargins];
    v56 = v55;
    [v1 layoutMargins];
    v58 = v57;
    v59 = [v1 overlays];
    if (v59)
    {
      v60 = v59;
      sub_1E4206E24();

      if ((v113 & 1) == 0)
      {
        if (OUTLINED_FUNCTION_18_42())
        {
          v121.origin.x = OUTLINED_FUNCTION_13_65();
          v58 = CGRectGetMaxX(v121) + 5.0;
        }

        else
        {
          OUTLINED_FUNCTION_9_7();
          v61 = CGRectGetWidth(v122);
          v123.origin.x = OUTLINED_FUNCTION_13_65();
          v56 = v61 - CGRectGetMinX(v123) + 5.0;
        }
      }
    }

    v62 = Width - v50;
    v63 = [v1 overlays];
    if (v63)
    {
      v64 = v63;
      sub_1E4206E14();

      if ((v114 & 1) == 0)
      {
        if (OUTLINED_FUNCTION_18_42())
        {
          OUTLINED_FUNCTION_9_7();
          v65 = CGRectGetWidth(v124);
          v66 = v19();
          [v66 frame];
          v68 = v67;
          v70 = v69;
          v72 = v71;
          v74 = v73;

          v125.origin.x = v68;
          v125.origin.y = v70;
          v125.size.width = v72;
          v125.size.height = v74;
          v56 = v65 - CGRectGetMinX(v125) + 5.0;
        }

        else
        {
          v75 = v19();
          [v75 frame];
          v77 = v76;
          v79 = v78;
          v81 = v80;
          v83 = v82;

          v126.origin.x = v77;
          v126.origin.y = v79;
          v126.size.width = v81;
          v126.size.height = v83;
          v58 = CGRectGetMaxX(v126) - v50 + 5.0;
        }
      }
    }

    if (v58 > v56)
    {
      v84 = v58;
    }

    else
    {
      v84 = v56;
    }

    v85 = v62 - (v84 + v84);
    OUTLINED_FUNCTION_9_7();
    [v49 sizeThatFits_];
    if (v85 >= v86)
    {
      OUTLINED_FUNCTION_9_7();
      CGRectGetWidth(v130);
    }

    else
    {
      OUTLINED_FUNCTION_9_7();
      v87 = CGRectGetWidth(v128) - v50 - v58 - v56;
      OUTLINED_FUNCTION_9_7();
      [v49 sizeThatFits_];
    }

    objc_opt_self();
    v88 = swift_dynamicCastObjCClass();
    if (v88)
    {
      v89 = v88;
      v90 = v49;
      [v1 contentBaselineOffsetFromTop];
      [v89 vuiBaselineHeight];
    }

    else
    {
      [v1 floatingTabBarHeight];
      [v1 floatingTabBarHeight];
    }

    v91 = OUTLINED_FUNCTION_11_62();
    [v92 v93];
    v131.origin.x = OUTLINED_FUNCTION_11_62();
    v132 = CGRectInset(v131, v94, v95);
    v138.origin.x = v102;
    v138.origin.y = v104;
    v138.size.width = rect;
    v138.size.height = v105;
    if (CGRectIntersectsRect(v132, v138))
    {
      if (OUTLINED_FUNCTION_18_42())
      {
        v133.origin.x = v102;
        v133.origin.y = v104;
        v133.size.width = rect;
        v133.size.height = v105;
        MaxX = CGRectGetMaxX(v133);
        v134.origin.x = OUTLINED_FUNCTION_12_4();
        MinX = CGRectGetMaxX(v134);
      }

      else
      {
        v135.origin.x = OUTLINED_FUNCTION_12_4();
        MaxX = CGRectGetMinX(v135);
        v136.origin.x = v102;
        v136.origin.y = v104;
        v136.size.width = rect;
        v136.size.height = v105;
        MinX = CGRectGetMinX(v136);
      }

      [v1 setBackButtonMaximumWidth_];
    }
  }
}

id sub_1E398D198()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UberNavigationBarTitleView();
  objc_msgSendSuper2(&v2, sel_contentDidChange);
  return [v0 setNeedsLayout];
}

id sub_1E398D224(uint64_t a1, double a2, double a3)
{
  v15.receiver = v3;
  v15.super_class = type metadata accessor for UberNavigationBarTitleView();
  v7 = objc_msgSendSuper2(&v15, sel_hitTest_withEvent_, a1, a2, a3);
  if (v7)
  {
    sub_1E3280A90(0, &qword_1EE23AE80);
    v8 = v7;
    v9 = v3;
    v10 = sub_1E4206F64();

    if (v10)
    {
      v11 = (v9 + OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_effectiveTitleOpacity);
      if ((*(v9 + OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_effectiveTitleOpacity + 8) & 1) == 0 && *v11 == 0.0)
      {
        v12 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x170))(*v11);
        if (v12)
        {
          v13 = v12;
          [v12 convertPoint:v9 fromCoordinateSpace:{a2, a3}];
          v7 = [v13 hitTest:a1 withEvent:?];
        }
      }
    }
  }

  return v7;
}

void sub_1E398D418(char a1, double a2)
{
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_titleOpacity) = a2;
    OUTLINED_FUNCTION_21();
    v6 = (*(v5 + 344))() & 1;

    sub_1E398B688(v6, a1 & 1, a2);
  }
}

void sub_1E398D4BC()
{
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    OUTLINED_FUNCTION_21();
    if ((*(v1 + 392))() == 2)
    {
      v2 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_supportsMaterialBackButton;
      OUTLINED_FUNCTION_37();
      v0[v2] = 1;
      v0[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_isMaterialBackButtonDisplayed] = 2;
      [v0 setBackButtonMaximumWidth_];
      if ((sub_1E39DFFC8() & 1) == 0)
      {
        OUTLINED_FUNCTION_21();
        v4 = (*(v3 + 392))();
        if (v4 == 2 || (v4 & 1) == 0)
        {
          OUTLINED_FUNCTION_21();
          v9 = (*(v8 + 176))();
          [v9 setAlpha_];

          [v0 setBackButtonAlpha_];
        }

        else
        {
          v5 = objc_opt_self();
          OUTLINED_FUNCTION_4_0();
          v6 = swift_allocObject();
          OUTLINED_FUNCTION_141_0();
          aBlock[4] = sub_1E398DD30;
          aBlock[5] = v6;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1E378AEA4;
          aBlock[3] = &block_descriptor_39_0;
          v7 = _Block_copy(aBlock);

          [v5 animateWithDuration:v7 animations:0.1];
          _Block_release(v7);
        }
      }
    }
  }
}

id sub_1E398D704()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UberNavigationBarTitleView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E398D7B8(double a1)
{
  if ((sub_1E39DFFC8() & 1) == 0)
  {

    sub_1E398D804(1, a1);
  }
}

void sub_1E398D804(char a1, double a2)
{
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    OUTLINED_FUNCTION_21();
    v5 = (*(v4 + 176))();
    [v5 setScrolledNonUberPercentage_];

    sub_1E398D910(a2 == 0.0, a1 & 1);
  }
}

void sub_1E398D910(int a1, char a2)
{
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    v5 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_isMaterialBackButtonDisplayed;
    v6 = v2[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_isMaterialBackButtonDisplayed];
    if (v6 == 2 || ((v6 ^ a1) & 1) != 0)
    {
      OUTLINED_FUNCTION_21();
      v8 = (*(v7 + 392))();
      if (v8 != 2 && (v8 & 1) != 0)
      {
        v9 = 0.0;
        if (a1)
        {
          v10 = 1.0;
        }

        else
        {
          v10 = 0.0;
        }

        if (a2)
        {
          v11 = objc_opt_self();
          OUTLINED_FUNCTION_4_0();
          v12 = swift_allocObject();
          OUTLINED_FUNCTION_141_0();
          v13 = swift_allocObject();
          *(v13 + 16) = v12;
          *(v13 + 24) = v10;
          v25 = sub_1E398DC2C;
          v26 = v13;
          v21 = MEMORY[0x1E69E9820];
          v22 = 1107296256;
          v23 = sub_1E378AEA4;
          v24 = &block_descriptor_28;
          v14 = _Block_copy(&v21);

          if (a1)
          {
            v15 = 0.35;
          }

          else
          {
            v15 = 0.2;
          }

          if ((a1 & 1) == 0)
          {
            v9 = 0.08;
          }

          [v11 animateWithDuration:0x20000 delay:v14 options:0 animations:v15 completion:0.0];
          _Block_release(v14);
          OUTLINED_FUNCTION_4_0();
          v16 = swift_allocObject();
          OUTLINED_FUNCTION_141_0();
          v17 = swift_allocObject();
          *(v17 + 16) = v16;
          *(v17 + 24) = v10;
          v25 = sub_1E398DCCC;
          v26 = v17;
          v21 = MEMORY[0x1E69E9820];
          v22 = 1107296256;
          v23 = sub_1E378AEA4;
          v24 = &block_descriptor_35;
          v18 = _Block_copy(&v21);

          [v11 animateWithDuration:0 delay:v18 options:0 animations:v15 * 0.6 completion:v9];
          _Block_release(v18);
        }

        else
        {
          OUTLINED_FUNCTION_21();
          v20 = (*(v19 + 176))();
          [v20 setAlpha_];

          [v2 setBackButtonAlpha_];
        }

        v2[v5] = a1 & 1;
      }
    }
  }
}

void sub_1E398DC2C()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xB0))();

    [v4 setAlpha_];
  }
}

void sub_1E398DCCC()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_15_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setBackButtonAlpha_];
  }
}

void sub_1E398DD30()
{
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xB0))();

    [v2 setAlpha_];
  }

  OUTLINED_FUNCTION_5_0();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    [v3 setBackButtonAlpha_];
  }
}

uint64_t sub_1E398DE38()
{
  v0 = _s8VideosUI15ClockScoresViewVMa_0(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v4 = (v3 - v2);
  OUTLINED_FUNCTION_74_7();
  type metadata accessor for SportsCanonicalBannerScoreboardViewModel();
  OUTLINED_FUNCTION_168();
  if (swift_dynamicCastClass())
  {
    OUTLINED_FUNCTION_30();
    v6 = *(v5 + 392);
    v7 = swift_retain_n();
    v8 = v6(v7);

    if (v8)
    {
      if (*v8 == _TtC8VideosUI34SportsPortableScoreboardViewLayout)
      {
        *v4 = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
        swift_storeEnumTagMultiPayload();
        v9 = (v4 + *(v0 + 20));
        OUTLINED_FUNCTION_19_46();
        sub_1E3994D54(v10);
        *v9 = sub_1E42010C4();
        v9[1] = v11;
        *(v4 + *(v0 + 24)) = v8;
        v12 = OUTLINED_FUNCTION_74();
        sub_1E3993B44(v12, v13, v14);
        OUTLINED_FUNCTION_114();
        return __swift_storeEnumTagSinglePayload(v15, v16, v17, v0);
      }
    }
  }

  v19 = OUTLINED_FUNCTION_43_2();

  return __swift_storeEnumTagSinglePayload(v19, v20, v21, v0);
}

uint64_t sub_1E398E060@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E398E0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E3741EA0(a1, a3, &qword_1ECF28BB8);
  result = OUTLINED_FUNCTION_74_7();
  *(a3 + v6) = a2;
  return result;
}

void sub_1E398E148()
{
  OUTLINED_FUNCTION_3_81();
  sub_1E3993D14(319, v0, v1, MEMORY[0x1E697DCC0]);
  if (v2 <= 0x3F)
  {
    type metadata accessor for ViewModel();
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_72();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_165();
    }
  }
}

unint64_t sub_1E398E1E0()
{
  result = qword_1EE280F30;
  if (!qword_1EE280F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F7D0);
    sub_1E3990AB8(&unk_1EE2A4390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE280F30);
  }

  return result;
}

void sub_1E398E2BC()
{
  OUTLINED_FUNCTION_3_81();
  sub_1E3993D14(319, v0, v1, MEMORY[0x1E697DCC0]);
  if (v2 <= 0x3F)
  {
    sub_1E3867038();
    if (v3 <= 0x3F)
    {
      type metadata accessor for SportsPortableScoreboardViewLayout();
      if (v4 <= 0x3F)
      {
        OUTLINED_FUNCTION_72();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_165();
      }
    }
  }
}

uint64_t sub_1E398E384@<X0>(uint64_t a1@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F7D8);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F7E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &__src[-v11];
  *v1 = sub_1E4203DA4();
  v1[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F7E8);
  sub_1E398E62C();
  _s8VideosUI15ClockScoresViewVMa_0(0);
  OUTLINED_FUNCTION_36();
  (*(v14 + 304))();
  sub_1E4203DA4();
  OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_71_13();
  sub_1E42015C4();
  v15 = OUTLINED_FUNCTION_74();
  sub_1E3741EA0(v15, v16, v17);
  memcpy(&v12[*(v9 + 36)], __src, 0x70uLL);
  OUTLINED_FUNCTION_8();
  (*(v18 + 176))(v28);
  if (v29)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v21.n128_u64[0] = v28[2];
    v22.n128_u64[0] = v28[3];
    v19.n128_u64[0] = v28[0];
    v20.n128_u64[0] = v28[1];
    j_nullsub_1(v19, v20, v21, v22);
  }

  v23 = OUTLINED_FUNCTION_41_8();
  sub_1E3741EA0(v12, a1, &qword_1ECF2F7E0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F7F0);
  v25 = a1 + *(result + 36);
  *v25 = v23;
  *(v25 + 8) = v2;
  *(v25 + 16) = v3;
  *(v25 + 24) = v4;
  *(v25 + 32) = v5;
  *(v25 + 40) = 0;
  return result;
}

void sub_1E398E62C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F7F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F800);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_63_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F808);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_12();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F810);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v43 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F818);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v45 = v11;
  v12 = OUTLINED_FUNCTION_138();
  v44 = _s8VideosUI19ScoreboardErrorViewVMa_0(v12);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F820);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v18 = OUTLINED_FUNCTION_138();
  v19 = _s8VideosUI15ClockScoresViewVMa_0(v18);
  OUTLINED_FUNCTION_36();
  if ((*(v20 + 1088))())
  {
    OUTLINED_FUNCTION_8();
    if (((*(v21 + 2120))() & 1) != 0 && (v22 = sub_1E3F95854(), v22 != 3))
    {
      v34 = v22;
      v35 = *(v3 + *(v19 + 24));
      *(v16 + *(v44 + 24)) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
      swift_storeEnumTagMultiPayload();
      *(v16 + *(v44 + 28)) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
      swift_storeEnumTagMultiPayload();
      *v16 = v35;
      *(v16 + 8) = v34;
      sub_1E3993954(v16, v45);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_17_48();
      sub_1E3990AB8(v36);
      sub_1E3990AFC();

      OUTLINED_FUNCTION_40_25();
      sub_1E4201F44();
      sub_1E39942A0(v16, _s8VideosUI19ScoreboardErrorViewVMa_0);
    }

    else
    {
      *v0 = sub_1E4201B84();
      *(v0 + 8) = 0;
      *(v0 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F830);
      sub_1E398EC7C();
      j__OUTLINED_FUNCTION_13_12();
      sub_1E4203DA4();
      OUTLINED_FUNCTION_27_17();
      OUTLINED_FUNCTION_51_3();
      OUTLINED_FUNCTION_99_1();
      sub_1E3741EA0(v0, v43, &qword_1ECF2F808);
      memcpy((v43 + *(v46 + 36)), v47, 0x70uLL);
      OUTLINED_FUNCTION_19_1();
      sub_1E3743538(v23, v24, v25);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_17_48();
      sub_1E3990AB8(v26);
      sub_1E3990AFC();
      sub_1E4201F44();
      OUTLINED_FUNCTION_21_1();
      sub_1E325F69C(v27, v28);
    }

    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v37, v38, v39);
    swift_storeEnumTagMultiPayload();
    sub_1E39909FC();
    OUTLINED_FUNCTION_9_0();
    sub_1E3743478(v40);
    OUTLINED_FUNCTION_52_14();
    sub_1E4201F44();
  }

  else
  {
    *v1 = sub_1E4201B84();
    *(v1 + 8) = 0;
    *(v1 + 16) = 0;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F828);
    sub_1E398FF64(v3, (v1 + *(v29 + 44)));
    OUTLINED_FUNCTION_48_9();
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v30, v31, v32);
    swift_storeEnumTagMultiPayload();
    sub_1E39909FC();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_21_1();
    sub_1E3743478(v33);
    OUTLINED_FUNCTION_52_14();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v41, v42);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E398EC7C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v145 = v3;
  v150 = _s8VideosUI19CompetitorScoreViewVMa_0(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_5();
  v146 = v5;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25_3();
  v148 = v7;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F838);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_5();
  v144 = v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_6();
  v159 = v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_6();
  v138 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_6();
  v158 = v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  v131 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_3();
  v157 = v19;
  OUTLINED_FUNCTION_138();
  v163 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v165 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v162 = v23 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F840);
  OUTLINED_FUNCTION_0_10();
  v142 = v25;
  v143 = v24;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_5();
  v141 = v26;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_18_6();
  v156 = v28;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_18_6();
  v140 = v30;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_62_11();
  type metadata accessor for SportsBannerLogoViewModel();
  v32 = _s8VideosUI15ClockScoresViewVMa_0(0);
  v33 = *(v2 + *(v32 + 20) + 8);
  v34 = swift_retain_n();
  v160 = sub_1E3CBAB38(v34, 0);
  v35 = *(v2 + *(v32 + 24));
  LOBYTE(v32) = type metadata accessor for SportsPortableScoreboardViewLayout();
  OUTLINED_FUNCTION_18_43();
  sub_1E3994D54(v36);
  swift_retain_n();
  v154 = sub_1E42010C4();
  v137 = v37;
  v167 = v35;
  j__OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_145();
  sub_1E4203DA4();
  if ((v32 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_17();
    if (v38)
    {
      sub_1E4206804();
      v39 = sub_1E42026D4();
      OUTLINED_FUNCTION_108();
    }
  }

  OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_33_6();
  v40 = sub_1E4202764();
  sub_1E3746E10(v162);
  v41 = sub_1E3EB1FF8(v162);
  v43 = v42;
  v44 = *(v165 + 8);
  v44(v162, v163, v41);
  v45 = 0uLL;
  v46 = 0uLL;
  if ((v43 & 1) == 0)
  {
    sub_1E4200A54();
    *(&v45 + 1) = v47;
    *(&v46 + 1) = v48;
  }

  v134 = v45;
  v136 = v46;
  v181[112] = v43 & 1;
  *v180 = v160;
  *&v180[8] = v154;
  *&v180[16] = v137;
  memcpy(&v180[24], v181, 0x70uLL);
  v180[136] = v40;
  *&v180[144] = v134;
  *&v180[160] = v136;
  v180[176] = v43 & 1;
  v179[0] = v33;
  v161 = type metadata accessor for SportsCanonicalBannerScoreboardViewModel();
  sub_1E383ACA0(0, v161, &off_1F5D8FCF0);
  v49 = OUTLINED_FUNCTION_125();
  __swift_instantiateConcreteTypeFromMangledNameV2(v49);
  sub_1E39939D8();
  v155 = v0;
  OUTLINED_FUNCTION_41_0();
  View.accessibilityIdentifier(key:location:)();
  memcpy(v179, v180, 0xB1uLL);
  sub_1E325F69C(v179, &qword_1ECF2F848);
  sub_1E3746E10(v162);
  v50 = sub_1E3EB1EEC(v162);
  v135 = v51;
  v133 = v52;
  v44(v162, v163, v50);
  OUTLINED_FUNCTION_59_9();
  v129 = *(v53 + 2288);
  v54 = v129();
  v124 = v55;
  v125 = v54;
  OUTLINED_FUNCTION_59_9();
  v128 = *(v56 + 1424);
  v174[0] = v128();
  *v176 = 0;
  v176[8] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6E8);
  sub_1E3743478(&qword_1EE23B5B0);
  sub_1E38D2054(v176, v175);

  v123 = v175[0];
  v127 = *(*v33 + 1352);
  v58 = v127(v57);
  OUTLINED_FUNCTION_64_11(v58);
  *v176 = 0;
  v176[8] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F858);
  sub_1E3743478(&qword_1EE23B5A8);
  v59 = OUTLINED_FUNCTION_26_35();
  sub_1E38D2054(v59, v60);

  v61 = v183[0];
  if (v183[0])
  {

    v63 = (*(*v33 + 1376))(v62);
    OUTLINED_FUNCTION_64_11(v63);
    *v176 = 0;
    v176[8] = 0;
    v64 = OUTLINED_FUNCTION_26_35();
    sub_1E38D2054(v64, v65);

    v66 = v183[0];
  }

  else
  {
    v66 = 0;
  }

  v126 = *(*v33 + 1712);
  v67 = v126(v61);
  *v176 = v33;
  v68 = sub_1E383ACA0(0, v161, &off_1F5D8FCF0);
  OUTLINED_FUNCTION_59_9();
  v70 = (*(v69 + 1568))();
  if (v68)
  {
    v71 = v70;
  }

  else
  {
    v71 = HIBYTE(v70) & 1;
  }

  *v176 = v33;
  v72 = sub_1E383ACA0(0, v161, &off_1F5D8FCF0);
  *(v148 + *(v150 + 44)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  *(v148 + *(v150 + 48)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
  swift_storeEnumTagMultiPayload();
  *v148 = v167;
  *(v148 + 8) = v125;
  *(v148 + 16) = v124;
  *(v148 + 24) = v123;
  *(v148 + 32) = v66;
  *(v148 + 40) = v67 & 1;
  *(v148 + 41) = v71 & 1;
  *(v148 + 42) = v72 & 1;

  j__OUTLINED_FUNCTION_13_12();
  v74 = v73;
  sub_1E4203DA4();
  if ((v74 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_17();
    if (v38)
    {
      sub_1E4206804();
      v75 = sub_1E42026D4();
      OUTLINED_FUNCTION_108();
    }
  }

  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_33_6();
  OUTLINED_FUNCTION_16_48();
  sub_1E3993B44(v148, v131, v76);
  memcpy((v131 + *(v152 + 36)), v182, 0x70uLL);
  sub_1E3741EA0(v131, v157, &qword_1ECF2F838);
  OUTLINED_FUNCTION_19_46();
  sub_1E3994D54(v77);

  v132 = sub_1E42010C4();
  v149 = v78;
  j__OUTLINED_FUNCTION_13_12();
  v80 = v79;
  sub_1E4203DA4();
  if ((v80 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_17();
    if (v38)
    {
      sub_1E4206804();
      v81 = sub_1E42026D4();
      OUTLINED_FUNCTION_108();
    }
  }

  OUTLINED_FUNCTION_51_3();
  v82 = OUTLINED_FUNCTION_33_6();
  v130 = (v129)(v82);
  v84 = v83;
  v174[0] = v128();
  *v176 = 1;
  v176[8] = 0;
  sub_1E38D2054(v176, v175);

  v86 = v175[0];
  v87 = v127(v85);
  OUTLINED_FUNCTION_64_11(v87);
  *v176 = 1;
  v176[8] = 0;
  v88 = OUTLINED_FUNCTION_26_35();
  sub_1E38D2054(v88, v89);

  v90 = v183[0];
  if (v183[0])
  {

    v92 = (*(*v33 + 1376))(v91);
    OUTLINED_FUNCTION_64_11(v92);
    *v176 = 1;
    v176[8] = 0;
    v93 = OUTLINED_FUNCTION_26_35();
    sub_1E38D2054(v93, v94);

    v95 = v183[0];
  }

  else
  {
    v95 = 0;
  }

  v96 = v126(v90);
  *v176 = v33;
  v97 = sub_1E383ACA0(1, v161, &off_1F5D8FCF0);
  OUTLINED_FUNCTION_59_9();
  v99 = (*(v98 + 1568))();
  if (v97)
  {
    v100 = v99;
  }

  else
  {
    v100 = HIBYTE(v99) & 1;
  }

  *v176 = v33;
  v101 = sub_1E383ACA0(1, v161, &off_1F5D8FCF0);
  v102 = v146;
  *(v146 + *(v150 + 44)) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v146 + *(v150 + 48)) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v146 = v167;
  *(v146 + 8) = v130;
  *(v146 + 16) = v84;
  *(v146 + 24) = v86;
  *(v146 + 32) = v95;
  *(v146 + 40) = v96 & 1;
  *(v146 + 41) = v100 & 1;
  *(v146 + 42) = v101 & 1;

  j__OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_145();
  sub_1E4203DA4();
  if ((v96 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_17();
    if (v38)
    {
      sub_1E4206804();
      v103 = sub_1E42026D4();
      v102 = v146;
      OUTLINED_FUNCTION_108();
    }
  }

  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_33_6();
  OUTLINED_FUNCTION_16_48();
  sub_1E3993B44(v102, v138, v104);
  memcpy((v138 + *(v152 + 36)), v183, 0x70uLL);
  sub_1E3741EA0(v138, v158, &qword_1ECF2F838);
  sub_1E3746E10(v162);
  v105 = sub_1E3EB1EEC(v162);
  v153 = v106;
  v151 = v107;
  v44(v162, v163, v105);

  v147 = sub_1E3CBAB38(v108, 1);
  v139 = sub_1E42010C4();
  v110 = v109;
  j__OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_145();
  sub_1E4203DA4();
  if ((v167 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_17();
    if (v38)
    {
      sub_1E4206804();
      v111 = sub_1E42026D4();
      OUTLINED_FUNCTION_108();
    }
  }

  OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_33_6();
  v112 = sub_1E4202784();
  sub_1E3746E10(v162);
  v113 = sub_1E3EB1FF8(v162);
  v115 = v114;
  v44(v162, v163, v113);
  v116 = 0uLL;
  v117 = 0uLL;
  if ((v115 & 1) == 0)
  {
    sub_1E4200A54();
    *(&v116 + 1) = v118;
    *(&v117 + 1) = v119;
  }

  v164 = v116;
  v166 = v117;
  v177[112] = v115 & 1;
  *v176 = v147;
  *&v176[8] = v139;
  *&v176[16] = v110;
  memcpy(&v176[24], v177, 0x70uLL);
  v176[136] = v112;
  *&v176[144] = v164;
  *&v176[160] = v166;
  v176[176] = v115 & 1;
  v174[0] = v33;
  sub_1E383ACA0(1, v161, &off_1F5D8FCF0);

  OUTLINED_FUNCTION_41_0();
  View.accessibilityIdentifier(key:location:)();
  memcpy(v174, v176, 0xB1uLL);
  sub_1E325F69C(v174, &qword_1ECF2F848);
  v120 = *(v142 + 16);
  v120();
  v171 = v135;
  v172 = v133 & 1;
  v173[0] = v156;
  v173[1] = &v171;
  sub_1E3743538(v157, v159, &qword_1ECF2F838);
  v173[2] = v159;
  v170[0] = v167;
  v170[1] = v132;
  v170[2] = v149;
  memcpy(&v170[3], v178, 0x70uLL);
  v173[3] = v170;
  sub_1E3743538(v158, v144, &qword_1ECF2F838);
  v168 = v153;
  v169 = v151 & 1;
  v173[4] = v144;
  v173[5] = &v168;
  (v120)(v141, v140, v143);
  v173[6] = v141;
  sub_1E398FDE0(v173, v145);
  v121 = *(v142 + 8);
  v122 = OUTLINED_FUNCTION_48_9();
  v121(v122);
  sub_1E325F69C(v158, &qword_1ECF2F838);
  sub_1E325F69C(v157, &qword_1ECF2F838);
  (v121)(v155, v143);
  (v121)(v141, v143);
  sub_1E325F69C(v144, &qword_1ECF2F838);
  memcpy(v175, v170, sizeof(v175));
  sub_1E325F69C(v175, &qword_1ECF2F860);
  sub_1E325F69C(v159, &qword_1ECF2F838);
  (v121)(v156, v143);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E398FDE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F840);
  v6 = *(*(v5 - 8) + 16);
  v6(a2, v4, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F868);
  v8 = a2 + v7[12];
  v10 = a1[1];
  v9 = a1[2];
  v11 = *v10;
  LOBYTE(v10) = *(v10 + 8);
  *v8 = v11;
  *(v8 + 8) = v10;
  sub_1E3743538(v9, a2 + v7[16], &qword_1ECF2F838);
  v12 = v7[20];
  v13 = a1[3];
  memcpy(__dst, v13, 0x88uLL);
  memmove((a2 + v12), v13, 0x88uLL);
  sub_1E3743538(a1[4], a2 + v7[24], &qword_1ECF2F838);
  v14 = a2 + v7[28];
  v16 = a1[5];
  v15 = a1[6];
  v17 = *v16;
  LOBYTE(v16) = *(v16 + 8);
  *v14 = v17;
  *(v14 + 8) = v16;
  v6(a2 + v7[32], v15, v5);
  return sub_1E3743538(__dst, v19, &qword_1ECF2F860);
}

uint64_t sub_1E398FF64@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v82 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F870);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_2();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F878);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_5();
  v97 = v6;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v74 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v98 = v11;
  OUTLINED_FUNCTION_138();
  v12 = type metadata accessor for SportsBannerLogoViewModel();
  v13 = *(a1 + *(_s8VideosUI15ClockScoresViewVMa_0(0) + 20) + 8);
  v14 = swift_retain_n();
  v80 = v12;
  v96 = sub_1E3CBAB38(v14, 0);
  v15 = type metadata accessor for SportsPortableScoreboardViewLayout();
  OUTLINED_FUNCTION_18_43();
  sub_1E3994D54(v16);
  swift_retain_n();
  v78 = v15;
  v17 = sub_1E42010C4();
  v94 = v18;
  v95 = v17;
  v93 = sub_1E4202784();
  sub_1E3EB035C();
  sub_1E4200A54();
  v91 = v20;
  v92 = v19;
  v89 = v22;
  v90 = v21;
  v141 = 0;
  v88 = sub_1E4202764();
  sub_1E3EB02B4();
  v24 = v23;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  if ((v23 & 1) == 0)
  {
    sub_1E4200A54();
  }

  v84 = v29;
  v85 = v28;
  v86 = v27;
  v87 = v26;
  v83 = v24 & 1;
  v142 = v24 & 1;
  v30 = sub_1E4201D44();
  v31 = sub_1E3EB0AEC();
  *v2 = v30;
  *(v2 + 8) = v31;
  *(v2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F880);
  sub_1E399060C();
  v32 = sub_1E4202794();
  sub_1E4200A54();
  v33 = v2 + *(v79 + 36);
  *v33 = v32;
  *(v33 + 8) = v34;
  *(v33 + 16) = v35;
  *(v33 + 24) = v36;
  *(v33 + 32) = v37;
  *(v33 + 40) = 0;
  sub_1E4203DA4();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_99_1();
  v38 = OUTLINED_FUNCTION_48_9();
  sub_1E3741EA0(v38, v39, v40);
  memcpy(&v9[*(v81 + 36)], v143, 0x70uLL);
  sub_1E3741EA0(v9, v98, &qword_1ECF2F878);
  v75 = sub_1E3CBAB38(v13, 1);
  v41 = sub_1E42010C4();
  v43 = v42;
  LODWORD(v81) = sub_1E4202764();
  sub_1E3EB035C();
  sub_1E4200A54();
  v79 = v45;
  v80 = v44;
  v77 = v47;
  v78 = v46;
  v133 = 0;
  v76 = sub_1E4202784();
  sub_1E3EB02B4();
  v49 = v48;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  if ((v48 & 1) == 0)
  {
    sub_1E4200A54();
    v25 = v53;
    v50 = v54;
    v51 = v55;
    v52 = v56;
  }

  v57 = v49 & 1;
  v135 = v57;
  v58 = v97;
  OUTLINED_FUNCTION_30_27();
  sub_1E3743538(v59, v60, v61);
  v99[0] = v96;
  v99[1] = v95;
  v99[2] = v94;
  LOBYTE(v99[3]) = v93;
  *(&v99[3] + 1) = *v140;
  HIDWORD(v99[3]) = *&v140[3];
  v99[4] = v92;
  v99[5] = v91;
  v99[6] = v90;
  v99[7] = v89;
  LOBYTE(v99[8]) = 0;
  *(&v99[8] + 1) = *v139;
  HIDWORD(v99[8]) = *&v139[3];
  LOBYTE(v99[9]) = v88;
  *(&v99[9] + 1) = *v138;
  HIDWORD(v99[9]) = *&v138[3];
  v99[10] = v87;
  v99[11] = v86;
  v99[12] = v85;
  v99[13] = v84;
  LOBYTE(v99[14]) = v83;
  v62 = v82;
  memcpy(v82, v99, 0x71uLL);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F888);
  sub_1E3743538(v58, &v62[*(v63 + 48)], &qword_1ECF2F878);
  v64 = *(v63 + 64);
  v100[0] = v75;
  v100[1] = v41;
  v100[2] = v43;
  v65 = v81;
  LOBYTE(v100[3]) = v81;
  v74 = v43;
  v66 = v41;
  v67 = v75;
  *(&v100[3] + 1) = *v134;
  HIDWORD(v100[3]) = *&v134[3];
  v69 = v79;
  v68 = v80;
  v100[4] = v80;
  v100[5] = v79;
  v71 = v77;
  v70 = v78;
  v100[6] = v78;
  v100[7] = v77;
  LOBYTE(v100[8]) = 0;
  *(&v100[8] + 1) = *v137;
  HIDWORD(v100[8]) = *&v137[3];
  v72 = v76;
  LOBYTE(v100[9]) = v76;
  *(&v100[9] + 1) = *v136;
  HIDWORD(v100[9]) = *&v136[3];
  v100[10] = v25;
  v100[11] = v50;
  v100[12] = v51;
  v100[13] = v52;
  LOBYTE(v100[14]) = v57;
  memcpy(&v62[v64], v100, 0x71uLL);
  sub_1E3743538(v99, v117, &qword_1ECF2F890);
  sub_1E3743538(v100, v117, &qword_1ECF2F890);
  sub_1E325F69C(v98, &qword_1ECF2F878);
  v101[0] = v67;
  v101[1] = v66;
  v101[2] = v74;
  v102 = v65;
  *v103 = *v134;
  *&v103[3] = *&v134[3];
  v104 = v68;
  v105 = v69;
  v106 = v70;
  v107 = v71;
  v108 = 0;
  *v109 = *v137;
  *&v109[3] = *&v137[3];
  v110 = v72;
  *&v111[3] = *&v136[3];
  *v111 = *v136;
  v112 = v25;
  v113 = v50;
  v114 = v51;
  v115 = v52;
  v116 = v57;
  sub_1E325F69C(v101, &qword_1ECF2F890);
  sub_1E325F69C(v97, &qword_1ECF2F878);
  v117[0] = v96;
  v117[1] = v95;
  v117[2] = v94;
  v118 = v93;
  *v119 = *v140;
  *&v119[3] = *&v140[3];
  v120 = v92;
  v121 = v91;
  v122 = v90;
  v123 = v89;
  v124 = 0;
  *v125 = *v139;
  *&v125[3] = *&v139[3];
  v126 = v88;
  *&v127[3] = *&v138[3];
  *v127 = *v138;
  v128 = v87;
  v129 = v86;
  v130 = v85;
  v131 = v84;
  v132 = v83;
  return sub_1E325F69C(v117, &qword_1ECF2F890);
}

void sub_1E399060C()
{
  OUTLINED_FUNCTION_31_1();
  v36 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v35 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F898);
  v17 = OUTLINED_FUNCTION_17_2(v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_62_11();
  _s8VideosUI15ClockScoresViewVMa_0(v21);
  OUTLINED_FUNCTION_36();
  v24 = (*(v22 + 1304))(v23);
  v25 = 1;
  if (v24)
  {
    memset(v37, 0, 41);
    v37[41] = 1;
    sub_1E382A9B4(v24, v37, 0, v15);

    *&v15[*(v12 + 36)] = 257;
    sub_1E3741EA0(v15, v0, &qword_1ECF289B0);
    v25 = 0;
  }

  v26 = 1;
  __swift_storeEnumTagSinglePayload(v0, v25, 1, v12);
  OUTLINED_FUNCTION_36();
  if ((*(v27 + 1952))(v28))
  {
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();

    OUTLINED_FUNCTION_30_27();
    v30(v29);
    v26 = 0;
  }

  __swift_storeEnumTagSinglePayload(v11, v26, 1, v2);
  sub_1E3743538(v0, v19, &qword_1ECF2F898);
  v31 = OUTLINED_FUNCTION_74();
  sub_1E3743538(v31, v32, &qword_1ECF29210);
  v33 = v36;
  sub_1E3743538(v19, v36, &qword_1ECF2F898);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F8A0);
  sub_1E3743538(v8, v33 + *(v34 + 48), &qword_1ECF29210);
  sub_1E325F69C(v11, &qword_1ECF29210);
  sub_1E325F69C(v0, &qword_1ECF2F898);
  sub_1E325F69C(v8, &qword_1ECF29210);
  sub_1E325F69C(v19, &qword_1ECF2F898);
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E39909FC()
{
  result = qword_1EE289098;
  if (!qword_1EE289098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F820);
    sub_1E3990AB8(&unk_1EE29E8D0);
    sub_1E3990AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289098);
  }

  return result;
}

unint64_t sub_1E3990AB8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3990AFC()
{
  result = qword_1EE2897E0;
  if (!qword_1EE2897E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F810);
    sub_1E3743478(&unk_1EE2885F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2897E0);
  }

  return result;
}

void sub_1E3990BB4()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F8E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_49_2();
  v10 = sub_1E4201D44();
  v11 = sub_1E3EB0AEC();
  *v1 = v10;
  *(v1 + 8) = v11;
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F8F0);
  sub_1E3990DEC();
  (*(*v3 + 2288))();
  sub_1E3EB0730();

  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_15_54();
  sub_1E4200D94();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F8F8);
  OUTLINED_FUNCTION_67_3(v1 + *(v12 + 36));
  LOBYTE(v10) = sub_1E4202724();
  sub_1E3EB0AF4();
  sub_1E4200A54();
  v13 = v1 + *(v8 + 36);
  *v13 = v10;
  *(v13 + 8) = v14;
  *(v13 + 16) = v15;
  *(v13 + 24) = v16;
  *(v13 + 32) = v17;
  *(v13 + 40) = 0;
  sub_1E4202474();
  sub_1E399415C();
  sub_1E4203224();
  (*(v6 + 8))(v0, v4);
  sub_1E325F69C(v1, &qword_1ECF2F8E8);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3990DEC()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v108 = v4;
  v115 = v5;
  v103 = type metadata accessor for SportsClockView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v8 - v7);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF90);
  OUTLINED_FUNCTION_0_10();
  v105 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v11);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F920);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v104 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v15);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F928);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v17);
  v97[1] = type metadata accessor for BaseballClockView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v20 - v19);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F930);
  OUTLINED_FUNCTION_0_10();
  v99 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v23);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F938);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_5();
  v98 = v25;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F940);
  v29 = OUTLINED_FUNCTION_17_2(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_5();
  v112 = v30;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289B8);
  OUTLINED_FUNCTION_0_10();
  v35 = v34;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_31_2();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F948);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_26_2();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F950);
  v40 = OUTLINED_FUNCTION_17_2(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_2_5();
  v109 = v41;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v42);
  v44 = v97 - v43;
  v45 = *(*v3 + 1304);

  v47 = v45(v46);
  v48 = 1;
  if (v47)
  {
    memset(v117, 0, sizeof(v117));
    v118 = 1;
    sub_1E382A9B4(v47, v117, 0, v1);
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_41_0();
    View.accessibilityIdentifier(key:location:)();

    (*(v35 + 8))(v1, v33);
    *(v0 + *(v37 + 36)) = 257;
    sub_1E3741EA0(v0, v44, &qword_1ECF2F948);
    v48 = 0;
  }

  __swift_storeEnumTagSinglePayload(v44, v48, 1, v37);
  type metadata accessor for SportsBaseballScoreboardViewModel();
  v49 = swift_dynamicCastClass();
  v50 = v108;
  v51 = v107;
  if (!v49)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_30();
  v53 = *(v52 + 2120);

  if ((v53(v54) & 1) == 0 || (swift_beginAccess(), v50[136] != 1))
  {

LABEL_12:

    OUTLINED_FUNCTION_111();
    (*(v74 + 1520))();
    sub_1E3EB0594();
    OUTLINED_FUNCTION_18();
    v75 = v102;
    sub_1E3B476D4();
    sub_1E3994D54(qword_1EE2800B8);
    OUTLINED_FUNCTION_41_0();
    View.accessibilityIdentifier(key:location:)();
    sub_1E39942A0(v75, type metadata accessor for SportsClockView);
    v76 = sub_1E3EB0594();
    (*(*v76 + 224))();

    sub_1E4203DA4();
    OUTLINED_FUNCTION_15_54();
    OUTLINED_FUNCTION_71_13();
    OUTLINED_FUNCTION_99_1();
    v77 = v104;
    (*(v105 + 32))(v104, v51, v106);
    memcpy((v77 + *(v114 + 36)), v116, 0x70uLL);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v78, v79, v80);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v81, v82, v83);
    swift_storeEnumTagMultiPayload();
    sub_1E39942F8();
    sub_1E39943E4();
    OUTLINED_FUNCTION_45_21();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_8();
  v56 = (*(v55 + 2432))();
  OUTLINED_FUNCTION_8();
  v58 = (*(v57 + 1520))();
  v60 = v59;
  v62 = v61;

  v63 = sub_1E3EB0594();
  v64 = OUTLINED_FUNCTION_51_1();
  v65 = v97[0];
  sub_1E3DF3424(v58, v60, v62, 1, 3, v63, v64 & 1, v97[0]);
  sub_1E3994D54(&unk_1EE27C190);
  OUTLINED_FUNCTION_41_0();
  View.accessibilityIdentifier(key:location:)();
  sub_1E39942A0(v65, type metadata accessor for BaseballClockView);
  v66 = sub_1E3EB0594();
  (*(*v66 + 224))();
  OUTLINED_FUNCTION_145();

  sub_1E4203DA4();
  if ((v56 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_17();
    if (v67)
    {
      sub_1E4206804();
      v50 = sub_1E42026D4();
      OUTLINED_FUNCTION_108();
    }
  }

  OUTLINED_FUNCTION_15_54();
  OUTLINED_FUNCTION_71_13();
  OUTLINED_FUNCTION_99_1();
  v68 = v98;
  v69 = OUTLINED_FUNCTION_125();
  v70(v69);
  memcpy((v68 + *(v110 + 36)), v116, 0x70uLL);
  v71 = v101;
  sub_1E3741EA0(v68, v101, &qword_1ECF2F938);
  sub_1E3743538(v71, v113, &qword_1ECF2F938);
  swift_storeEnumTagMultiPayload();
  sub_1E39942F8();
  sub_1E39943E4();
  OUTLINED_FUNCTION_45_21();
  sub_1E4201F44();

  v72 = v71;
  v73 = &qword_1ECF2F938;
LABEL_13:
  sub_1E325F69C(v72, v73);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v84, v85, v86);
  v87 = v112;
  sub_1E3743538(v50, v112, &qword_1ECF2F940);
  v88 = v115;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v89, v90, v91);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F958);
  sub_1E3743538(v87, v88 + *(v92 + 48), &qword_1ECF2F940);
  sub_1E325F69C(v50, &qword_1ECF2F940);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v93, v94);
  sub_1E325F69C(v87, &qword_1ECF2F940);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v95, v96);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3991A00(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F8A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_49_2();
  *v1 = sub_1E4203DA4();
  v1[1] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F8B0);
  OUTLINED_FUNCTION_125();
  sub_1E3991B20();
  *(v1 + *(v3 + 52)) = a1;
  sub_1E3743478(&unk_1EE288560);

  OUTLINED_FUNCTION_30_27();
  sub_1E4202ED4();
  return sub_1E325F69C(v1, &qword_1ECF2F8A8);
}

void sub_1E3991B20()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v60 = v4;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF48);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v59 - v11;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F8B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_26_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F8C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_111();
  v17 = (*(v16 + 128))();
  if (v17)
  {
    v18 = v17;
    OUTLINED_FUNCTION_111();
    if (((*(v19 + 200))() & 1) == 0)
    {
      sub_1E3EB009C();
      OUTLINED_FUNCTION_30();
      (*(v25 + 1696))();
      v59[0] = v14;
      v61 = v8;

      j__OUTLINED_FUNCTION_51_1();
      v26 = j__OUTLINED_FUNCTION_18();
      v59[1] = v9;
      v27 = v26;
      v58 = j__OUTLINED_FUNCTION_18() & 1;
      OUTLINED_FUNCTION_71_13();
      sub_1E3EB9C0C(v28, v29, v30, v31, v32, v33, v34, 2, v35, 0, 1, 0, 1, 0, 2, v27 & 1, v58);
      *v1 = sub_1E4201D44();
      *(v1 + 8) = 0;
      *(v1 + 16) = 1;
      v36 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F8D8) + 44);
      v37 = swift_allocObject();
      v38 = v60;
      v37[2] = v6;
      v37[3] = v38;
      v37[4] = v3;

      v39 = OUTLINED_FUNCTION_18();
      sub_1E37E8BE8(v18, v63, 0, v39 & 1, sub_1E39940E4, v37, v36);

      *(v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F8E0) + 36)) = 1;
      sub_1E3EB009C();
      OUTLINED_FUNCTION_30();
      (*(v40 + 200))();

      v41 = *sub_1E3EB009C();
      (*(v41 + 304))();

      sub_1E4203DA4();
      OUTLINED_FUNCTION_59();
      sub_1E4200D94();
      v42 = (v1 + *(v59[0] + 36));
      v43 = v63[7];
      *v42 = v63[6];
      v42[1] = v43;
      v42[2] = v63[8];
      OUTLINED_FUNCTION_19_1();
      sub_1E3743538(v44, v45, v46);
      swift_storeEnumTagMultiPayload();
      sub_1E399402C();
      sub_1E399462C(&unk_1EE289C90);
      OUTLINED_FUNCTION_125();
      sub_1E4201F44();

      sub_1E375C31C(v63);
      OUTLINED_FUNCTION_21_1();
      sub_1E325F69C(v47, v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F8C8);
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_111();
  if ((*(v20 + 152))())
  {
    sub_1E3EB1518();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_32_0();
    sub_1E3F23370();

    sub_1E3EB009C();
    OUTLINED_FUNCTION_30();
    (*(v21 + 200))();
    v61 = v8;

    v22 = *sub_1E3EB009C();
    (*(v22 + 304))();

    sub_1E4203DA4();
    OUTLINED_FUNCTION_59();
    sub_1E4200D94();
    v23 = &v12[*(v9 + 36)];
    v24 = v63[1];
    *v23 = v63[0];
    *(v23 + 1) = v24;
    *(v23 + 2) = v63[2];
    sub_1E3743538(v12, v0, &qword_1ECF2BF48);
    swift_storeEnumTagMultiPayload();
    sub_1E399402C();
    sub_1E399462C(&unk_1EE289C90);
    sub_1E4201F44();

    sub_1E325F69C(v12, &qword_1ECF2BF48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F8C8);
LABEL_7:
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F8C8);
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v53, v54, v55, v56);
}