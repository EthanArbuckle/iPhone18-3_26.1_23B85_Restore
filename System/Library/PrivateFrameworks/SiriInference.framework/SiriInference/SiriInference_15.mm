void *sub_1DD49A904(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v29 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v27[1] = v27;
    v27[2] = v3;
    MEMORY[0x1EEE9AC00](v9);
    v10 = (v27 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1DD57634C(0, v7, v10);
    v28 = 0;
    v3 = 0;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v18 = v15 | (v3 << 6);
      v8 = *(*(a1 + 48) + 8 * v18);
      if (sub_1DD48FCF0())
      {
        v19 = *(v8 + 16);
        if ((v19 == 11 || *(v29 + 16) < v19) && (*(v8 + 54) & 1) == 0)
        {
          *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
          if (__OFADD__(v28++, 1))
          {
            __break(1u);
LABEL_19:
            sub_1DD51607C(v10, v7, v28, a1);
            v22 = v21;

            goto LABEL_20;
          }
        }
      }
    }

    v16 = v3;
    while (1)
    {
      v3 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v3 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(a1 + 56 + 8 * v3);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();
  v26 = v29;

  v22 = sub_1DD497DE0(v25, v7, a1, v26, sub_1DD49B970);

  MEMORY[0x1E12B3DA0](v25, -1, -1);

LABEL_20:
  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

void *sub_1DD49ABAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v40 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v39 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_39;
  }

  while (2)
  {
    v35 = v3;
    v33 = &v33;
    MEMORY[0x1EEE9AC00](v9);
    v34 = v7;
    v36 = (&v33 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1DD57634C(0, v7, v36);
    v37 = 0;
    v38 = v4;
    v7 = 0;
    v10 = v4 + 56;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v3 = v12 & *(v4 + 56);
    v8 = (v11 + 63) >> 6;
    while (v3)
    {
      v13 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
LABEL_12:
      v16 = v13 | (v7 << 6);
      v17 = *(*(v4 + 48) + 8 * v16);
      if (*(v17 + 49))
      {
        if (*(v17 + 49) == 1)
        {
          v18 = 0xE300000000000000;
          v19 = 6581861;
        }

        else
        {
          v18 = 0xE600000000000000;
          v19 = 0x746573746F6ELL;
        }
      }

      else
      {
        v18 = 0xE500000000000000;
        v19 = 0x7472617473;
      }

      v20 = (0x20001u >> (8 * *(v39 + 49)));
      if ((0x20001u >> (8 * *(v39 + 49))))
      {
        if (v20 == 1)
        {
          v21 = 6581861;
        }

        else
        {
          v21 = 0x746573746F6ELL;
        }

        if (v20 == 1)
        {
          v22 = 0xE300000000000000;
        }

        else
        {
          v22 = 0xE600000000000000;
        }
      }

      else
      {
        v22 = 0xE500000000000000;
        v21 = 0x7472617473;
      }

      if (v19 == v21 && v18 == v22)
      {

LABEL_32:
        v25 = *(v17 + 55);

        v4 = v38;
        if (v25)
        {
          *(v36 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
          if (__OFADD__(v37++, 1))
          {
            __break(1u);
LABEL_36:
            sub_1DD51607C(v36, v34, v37, v4);
            v28 = v27;

            goto LABEL_37;
          }
        }
      }

      else
      {
        v24 = sub_1DD640CD8();

        if (v24)
        {
          goto LABEL_32;
        }

        v4 = v38;
      }
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v8)
      {
        goto LABEL_36;
      }

      v15 = *(v10 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v3 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_39:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v31 = swift_slowAlloc();
  v32 = v39;

  v28 = sub_1DD497DE0(v31, v7, v4, v32, sub_1DD49BAD4);

  MEMORY[0x1E12B3DA0](v31, -1, -1);

LABEL_37:
  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

uint64_t sub_1DD49AF48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v32 = result;
  v33 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(*(v5 + 48) + 8 * v15);
    if (v16[16] == *(v4 + 16))
    {
      if (v16[49])
      {
        if (v16[49] == 1)
        {
          v17 = 0xE300000000000000;
          v18 = 6581861;
        }

        else
        {
          v17 = 0xE600000000000000;
          v18 = 0x746573746F6ELL;
        }
      }

      else
      {
        v17 = 0xE500000000000000;
        v18 = 0x7472617473;
      }

      v19 = *(v4 + 49);
      v20 = 0x746573746F6ELL;
      if (v19 == 1)
      {
        v20 = 6581861;
      }

      v21 = 0xE300000000000000;
      if (v19 != 1)
      {
        v21 = 0xE600000000000000;
      }

      if (*(v4 + 49))
      {
        v22 = v20;
      }

      else
      {
        v22 = 0x7472617473;
      }

      if (*(v4 + 49))
      {
        v23 = v21;
      }

      else
      {
        v23 = 0xE500000000000000;
      }

      v24 = v18 == v22 && v17 == v23;
      if (v24)
      {
        v26 = *(*(v5 + 48) + 8 * v15);

LABEL_34:
        v27 = v16[51];

        v24 = v27 == 39;
        v4 = a4;
        v5 = a3;
        if (!v24)
        {
          *(v32 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
          if (__OFADD__(v33++, 1))
          {
            __break(1u);
LABEL_38:

            sub_1DD51607C(v32, a2, v33, v5);
            v30 = v29;

            return v30;
          }
        }
      }

      else
      {
        v25 = sub_1DD640CD8();

        if (v25)
        {
          goto LABEL_34;
        }

        v4 = a4;
        v5 = a3;
      }
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

    if (v6 >= v11)
    {
      goto LABEL_38;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD49B1B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v32 = result;
  v33 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(*(v5 + 48) + 8 * v15);
    if (v16[16] == *(v4 + 16))
    {
      if (v16[49])
      {
        if (v16[49] == 1)
        {
          v17 = 0xE300000000000000;
          v18 = 6581861;
        }

        else
        {
          v17 = 0xE600000000000000;
          v18 = 0x746573746F6ELL;
        }
      }

      else
      {
        v17 = 0xE500000000000000;
        v18 = 0x7472617473;
      }

      v19 = *(v4 + 49);
      v20 = 0x746573746F6ELL;
      if (v19 == 1)
      {
        v20 = 6581861;
      }

      v21 = 0xE300000000000000;
      if (v19 != 1)
      {
        v21 = 0xE600000000000000;
      }

      if (*(v4 + 49))
      {
        v22 = v20;
      }

      else
      {
        v22 = 0x7472617473;
      }

      if (*(v4 + 49))
      {
        v23 = v21;
      }

      else
      {
        v23 = 0xE500000000000000;
      }

      v24 = v18 == v22 && v17 == v23;
      if (v24)
      {
        v26 = *(*(v5 + 48) + 8 * v15);

LABEL_34:
        v27 = v16[51];

        v24 = v27 == 38;
        v4 = a4;
        v5 = a3;
        if (v24)
        {
          *(v32 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
          if (__OFADD__(v33++, 1))
          {
            __break(1u);
LABEL_39:

            sub_1DD51607C(v32, a2, v33, v5);
            v30 = v29;

            return v30;
          }
        }
      }

      else
      {
        v25 = sub_1DD640CD8();

        if (v25)
        {
          goto LABEL_34;
        }

        v4 = a4;
        v5 = a3;
      }
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

    if (v6 >= v11)
    {
      goto LABEL_39;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1DD49B418(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v40 = a4;
  v38 = a1;
  v36 = sub_1DD63D168();
  v5 = *(*(v36 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v36);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 0;
  v9 = 0;
  v42 = a3;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v33 = (v6 + 8);
  v34 = (v6 + 16);
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_11:
    v20 = *(*(v42 + 48) + 8 * (v17 | (v9 << 6)));
    v21 = *(v20 + 16);
    v22 = v21 == 12 || v21 == 3;
    v41 = v17 | (v9 << 6);
    if (!v22)
    {
      goto LABEL_23;
    }

    if (*(v20 + 53))
    {

      if (v21 == 4)
      {
        v23 = 1;
LABEL_32:
        if (*(v20 + 48))
        {
LABEL_33:

          if (v23)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v28 = *(v20 + 24);

          if ((v28 > 12.0) | v23 & 1)
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
LABEL_22:

LABEL_37:
        *(v38 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
        if (__OFADD__(v39++, 1))
        {
          __break(1u);
LABEL_40:
          v30 = v42;

          sub_1DD51607C(v38, v37, v39, v30);

          return;
        }
      }
    }

    else
    {
      if (v21 == 3)
      {
        v24 = v35;
        v25 = v36;
        (*v34)(v35, *(v40 + 24) + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionFormat, v36, v7);

        v32 = sub_1DD4F9988();
        (*v33)(v24, v25);
        if ((v32 & 1) == 0 || *(v20 + 51) != 39)
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      }

LABEL_23:

LABEL_24:
      v26 = 0;
      while (v26 != 4)
      {
        v27 = &unk_1F58ADBE8 + v26++;
        if (v27[32] == v21)
        {
          if (*(v20 + 50) == 1)
          {
            v23 = *(v20 + 53);
            if (v21 == 4)
            {
              goto LABEL_32;
            }

            goto LABEL_33;
          }

          break;
        }
      }

      if (v21 == 4)
      {
        v23 = 0;
        goto LABEL_32;
      }
    }
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
      goto LABEL_40;
    }

    v19 = *(v11 + 8 * v9);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1DD49B75C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = result;
  v29 = 0;
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
    if (*(*(*(a3 + 48) + 8 * v14) + 49))
    {
      if (*(*(*(a3 + 48) + 8 * v14) + 49) == 1)
      {
        v15 = 0xE300000000000000;
        v16 = 6581861;
      }

      else
      {
        v15 = 0xE600000000000000;
        v16 = 0x746573746F6ELL;
      }
    }

    else
    {
      v15 = 0xE500000000000000;
      v16 = 0x7472617473;
    }

    v17 = *(a4 + 49);
    v18 = 0x746573746F6ELL;
    if (v17 == 1)
    {
      v18 = 6581861;
    }

    v19 = 0xE300000000000000;
    if (v17 != 1)
    {
      v19 = 0xE600000000000000;
    }

    if (*(a4 + 49))
    {
      v20 = v18;
    }

    else
    {
      v20 = 0x7472617473;
    }

    if (*(a4 + 49))
    {
      v21 = v19;
    }

    else
    {
      v21 = 0xE500000000000000;
    }

    if (v16 == v20 && v15 == v21)
    {

LABEL_33:
      *(v28 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
LABEL_36:

        sub_1DD51607C(v28, a2, v29, a3);
        v26 = v25;

        return v26;
      }
    }

    else
    {
      v23 = sub_1DD640CD8();

      if (v23)
      {
        goto LABEL_33;
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
      goto LABEL_36;
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
  return result;
}

BOOL sub_1DD49B970(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = result;
  v6 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v17 = *(*(a3 + 48) + 8 * v16);
    result = sub_1DD48FCF0();
    if (result)
    {
      v18 = *(v17 + 16);
      if ((v18 == 11 || *(a4 + 16) < v18) && (*(v17 + 54) & 1) == 0)
      {
        *(v23 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        if (__OFADD__(v6++, 1))
        {
          __break(1u);
LABEL_18:

          sub_1DD51607C(v23, a2, v6, a3);
          v21 = v20;

          return v21;
        }
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_18;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD49BAD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = result;
  v29 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 48) + 8 * v13);
    if (*(v14 + 49))
    {
      if (*(v14 + 49) == 1)
      {
        v15 = 0xE300000000000000;
        v16 = 6581861;
      }

      else
      {
        v15 = 0xE600000000000000;
        v16 = 0x746573746F6ELL;
      }
    }

    else
    {
      v15 = 0xE500000000000000;
      v16 = 0x7472617473;
    }

    v17 = (0x20001u >> (8 * *(a4 + 49)));
    if ((0x20001u >> (8 * *(a4 + 49))))
    {
      if (v17 == 1)
      {
        v18 = 6581861;
      }

      else
      {
        v18 = 0x746573746F6ELL;
      }

      if (v17 == 1)
      {
        v19 = 0xE300000000000000;
      }

      else
      {
        v19 = 0xE600000000000000;
      }
    }

    else
    {
      v19 = 0xE500000000000000;
      v18 = 0x7472617473;
    }

    if (v16 == v18 && v15 == v19)
    {
      v22 = *(*(a3 + 48) + 8 * v13);

LABEL_31:
      v23 = *(v14 + 55);

      if (v23)
      {
        *(v28 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_35:

          sub_1DD51607C(v28, a2, v29, a3);
          v26 = v25;

          return v26;
        }
      }
    }

    else
    {
      v21 = sub_1DD640CD8();

      if (v21)
      {
        goto LABEL_31;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_35;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD49BD28(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    result = sub_1DD6407B8();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(v3 + 16);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1DD640778();
    type metadata accessor for DateTimeConstraint();
    sub_1DD49C1EC();
    result = sub_1DD6402A8();
    a1 = v19;
    v6 = v20;
    v7 = v21;
    v8 = v22;
    v9 = v23;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  if (a1 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = v8;
    v14 = v9;
    v15 = v8;
    if (!v9)
    {
      break;
    }

LABEL_18:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
      return sub_1DD3AA5A4();
    }

    while (1)
    {
      sub_1DD581DE0(v17);

      v8 = v15;
      v9 = v16;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (sub_1DD6407F8())
      {
        type metadata accessor for DateTimeConstraint();
        swift_dynamicCast();
        v17 = v18;
        v15 = v8;
        v16 = v9;
        if (v18)
        {
          continue;
        }
      }

      return sub_1DD3AA5A4();
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v7 + 64) >> 6))
    {
      return sub_1DD3AA5A4();
    }

    v14 = *(v6 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD49BF30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for DateTimeConstraint();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_16:
  result = sub_1DD6407B8();
LABEL_6:
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1DD3C2520(&v7[v6], result - v6, v5 + 8 * v3);
  if (v8)
  {
    result = sub_1DD6407B8();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_18;
  }

  v4[2] = result + v9;
LABEL_12:
  if (v3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD49C018(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  v5 = *v2;
  result = sub_1DD3CBDE8(*v2);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(a2, v4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v4 - a2;
  if (__OFSUB__(0, a2 - v4))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = sub_1DD3CC020(v5);
  v8 = __OFADD__(v7, v6);
  result = v7 + v6;
  if (v8)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1DD6223A8(result, 1);

  return sub_1DD49BF30(v4, a2, 0);
}

uint64_t sub_1DD49C0BC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1DD6223AC(result, 1);
  v8 = *v2;
  v9 = *(sub_1DD63D0F8() - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  result = sub_1DD3C1BFC(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_1DD49C1EC()
{
  result = qword_1ECCDC188;
  if (!qword_1ECCDC188)
  {
    type metadata accessor for DateTimeConstraint();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC188);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_24()
{
  result = v0;
  v3 = *(v1 - 336);
  return result;
}

void OUTLINED_FUNCTION_19_19()
{
  v2 = v1 << *(v0 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(v0 + 56);
}

uint64_t OUTLINED_FUNCTION_22_15()
{

  return sub_1DD640CD8();
}

uint64_t OUTLINED_FUNCTION_36_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1DD57634C(0, v9, &a9 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0));
}

uint64_t OUTLINED_FUNCTION_37_13()
{
}

uint64_t OUTLINED_FUNCTION_39_8(uint64_t a1)
{
  *(v1 - 296) = a1;

  return type metadata accessor for DateTimeConstraint();
}

uint64_t OUTLINED_FUNCTION_41_8()
{

  return sub_1DD640CD8();
}

uint64_t OUTLINED_FUNCTION_42_7()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_45_8()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_50_10(uint64_t result)
{
  *(*(v1 + 48) + 8 * result) = v2;
  ++*(v1 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_52_6()
{

  return swift_endAccess();
}

void OUTLINED_FUNCTION_53_6(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{

  sub_1DD57162C(a8 + 1, a1, a2, a3, a4, a5, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t OUTLINED_FUNCTION_65_4()
{

  return sub_1DD640CD8();
}

unint64_t *OUTLINED_FUNCTION_66_3(unint64_t *a1)
{

  return sub_1DD497E80(a1, v2, v3, v1);
}

uint64_t OUTLINED_FUNCTION_67_2()
{

  return type metadata accessor for DateTimeConstraint();
}

uint64_t OUTLINED_FUNCTION_68_2()
{
}

uint64_t OUTLINED_FUNCTION_69_1()
{

  return sub_1DD581DE0(v0);
}

void OUTLINED_FUNCTION_70_1(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{

  sub_1DD57162C(a8 + 1, a1, a2, a3, a4, a5, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t OUTLINED_FUNCTION_71_1(uint64_t a1)
{
  *(v1 - 232) = a1;

  return type metadata accessor for DateTimeConstraint();
}

uint64_t sub_1DD49C75C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A0, &qword_1DD64F420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD49C7E0@<X0>(void (*a1)(void)@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A0, &qword_1DD64F420);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12 - v8;
  sub_1DD63DFC8();
  v10 = sub_1DD63E118();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    result = sub_1DD49C75C(v9);
    *a3 = a2;
  }

  else
  {
    a1();
    return (*(*(v10 - 8) + 8))(v9, v10);
  }

  return result;
}

uint64_t TerminalElement.DateTimePeriod.toDefinedDateTimeRange(qualifier:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A0, &qword_1DD64F420);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1DD63DFC8();
  v8 = sub_1DD63E118();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    result = sub_1DD49C75C(v7);
    *a2 = 38;
  }

  else
  {
    sub_1DD547E68(a1, 0, a2);
    return (*(*(v8 - 8) + 8))(v7, v8);
  }

  return result;
}

uint64_t DateTime.DateTimeRange.__allocating_init(withStartDateTime:endDateTime:)()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_4_35();
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = v1;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = v0;
  return OUTLINED_FUNCTION_22_16(v2);
}

uint64_t DateTime.DateTimeRange.__allocating_init(at:start:end:duration:interval:definedValue:qualifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, char *a7)
{
  OUTLINED_FUNCTION_4_35();
  result = swift_allocObject();
  v15 = *a6;
  v16 = *a7;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = v15;
  *(result + 57) = v16;
  return result;
}

uint64_t DateTime.DateTimeRange.__allocating_init(withDateTime:)(uint64_t a1)
{
  OUTLINED_FUNCTION_4_35();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  return OUTLINED_FUNCTION_22_16(v2);
}

uint64_t DateTime.DateTimeRange.init(withDateTime:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  return OUTLINED_FUNCTION_1_51();
}

uint64_t DateTime.DateTimeRange.__allocating_init(withStartDateTime:)(uint64_t a1)
{
  OUTLINED_FUNCTION_4_35();
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = a1;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = 0;
  return OUTLINED_FUNCTION_22_16(v2);
}

uint64_t DateTime.DateTimeRange.init(withStartDateTime:)(uint64_t a1)
{
  v1[2] = 0;
  v1[3] = a1;
  v1[5] = 0;
  v1[6] = 0;
  v1[4] = 0;
  return OUTLINED_FUNCTION_1_51();
}

uint64_t DateTime.DateTimeRange.init(withStartDateTime:endDateTime:)(uint64_t a1, uint64_t a2)
{
  v2[2] = 0;
  v2[3] = a1;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = a2;
  return OUTLINED_FUNCTION_1_51();
}

uint64_t DateTime.DateTimeRange.__allocating_init(withStartDateTime:endDateTime:interval:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_4_35();
  v6 = swift_allocObject();
  v6[5] = 0;
  v6[6] = a3;
  v6[2] = 0;
  v6[3] = a1;
  v6[4] = a2;
  return OUTLINED_FUNCTION_22_16(v6);
}

uint64_t DateTime.DateTimeRange.init(withStartDateTime:endDateTime:interval:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = 0;
  v3[6] = a3;
  v3[2] = 0;
  v3[3] = a1;
  v3[4] = a2;
  return OUTLINED_FUNCTION_1_51();
}

uint64_t DateTime.DateTimeRange.__allocating_init(withStartDateTime:duration:)()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_4_35();
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = v1;
  v2[4] = 0;
  v2[5] = v0;
  v2[6] = 0;
  return OUTLINED_FUNCTION_22_16(v2);
}

uint64_t DateTime.DateTimeRange.init(withStartDateTime:duration:)(uint64_t a1, uint64_t a2)
{
  v2[2] = 0;
  v2[3] = a1;
  v2[4] = 0;
  v2[5] = a2;
  v2[6] = 0;
  return OUTLINED_FUNCTION_1_51();
}

double DateTime.DateTimeRange.__allocating_init(withDefinedValue:)(_BYTE *a1)
{
  OUTLINED_FUNCTION_4_35();
  v2 = swift_allocObject();
  *(v2 + 56) = *a1;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  *(v2 + 57) = 20;
  return result;
}

uint64_t DateTime.DateTimeRange.init(withDefinedValue:)(_BYTE *a1)
{
  *(v1 + 56) = *a1;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  *(v1 + 57) = 20;
  return OUTLINED_FUNCTION_14_4();
}

double DateTime.DateTimeRange.__allocating_init(withDefinedValue:qualifier:)()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_4_35();
  v2 = swift_allocObject();
  v3 = *v0;
  *(v2 + 56) = *v1;
  *(v2 + 57) = v3;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

uint64_t DateTime.DateTimeRange.init(withDefinedValue:qualifier:)(_BYTE *a1, char *a2)
{
  v3 = *a2;
  *(v2 + 56) = *a1;
  *(v2 + 57) = v3;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return OUTLINED_FUNCTION_14_4();
}

uint64_t DateTime.DateTimeRange.__allocating_init(withInterval:)(uint64_t a1)
{
  OUTLINED_FUNCTION_4_35();
  v2 = swift_allocObject();
  *(v2 + 48) = a1;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  return OUTLINED_FUNCTION_22_16(v2);
}

uint64_t DateTime.DateTimeRange.init(withInterval:)(uint64_t a1)
{
  *(v1 + 48) = a1;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  return OUTLINED_FUNCTION_1_51();
}

uint64_t DateTime.DateTimeRange.__allocating_init(withDuration:)(uint64_t a1)
{
  OUTLINED_FUNCTION_4_35();
  v2 = swift_allocObject();
  v2[5] = a1;
  v2[6] = 0;
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = 0;
  return OUTLINED_FUNCTION_22_16(v2);
}

uint64_t DateTime.DateTimeRange.init(withDuration:)(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = 0;
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = 0;
  return OUTLINED_FUNCTION_1_51();
}

uint64_t DateTime.DateTimeRange.init(at:start:end:duration:interval:definedValue:qualifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, char *a7)
{
  v8 = *a6;
  v9 = *a7;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 56) = v8;
  *(v7 + 57) = v9;
  return OUTLINED_FUNCTION_14_4();
}

uint64_t sub_1DD49CDC8()
{
  if (*(v0 + 16))
  {
    OUTLINED_FUNCTION_64();
    v1 = OUTLINED_FUNCTION_32_2();
    sub_1DD489FC8(v1);
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  if (*(v0 + 32))
  {
    OUTLINED_FUNCTION_64();
    v2 = OUTLINED_FUNCTION_32_2();
    sub_1DD489FC8(v2);
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  if (*(v0 + 24))
  {
    OUTLINED_FUNCTION_64();
    v3 = OUTLINED_FUNCTION_32_2();
    sub_1DD489FC8(v3);
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_32_2();
    sub_1DD4E0DF8();
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  if (*(v0 + 48))
  {
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_32_2();
    sub_1DD4E0DF8();
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  v4 = *(v0 + 56);
  if (v4 == 38)
  {
    OUTLINED_FUNCTION_66();
  }

  else
  {
    OUTLINED_FUNCTION_64();
    MEMORY[0x1E12B3140](v4);
  }

  v5 = *(v0 + 57);
  if (v5 == 20)
  {
    return OUTLINED_FUNCTION_66();
  }

  OUTLINED_FUNCTION_64();
  return MEMORY[0x1E12B3140](v5);
}

BOOL static DateTime.DateTimeRange.== infix(_:_:)()
{
  OUTLINED_FUNCTION_14_1();
  v4 = *(v3 + 16);
  if (*(v2 + 16))
  {
    if (!v4)
    {
      return 0;
    }

    type metadata accessor for DateTime();

    v5 = OUTLINED_FUNCTION_38_10();

    if (!v5)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  v6 = *(v0 + 32);
  if (*(v1 + 32))
  {
    if (!v6)
    {
      return 0;
    }

    type metadata accessor for DateTime();

    v7 = OUTLINED_FUNCTION_38_10();

    if (!v7)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = *(v0 + 24);
  if (*(v1 + 24))
  {
    if (!v8)
    {
      return 0;
    }

    type metadata accessor for DateTime();

    v9 = OUTLINED_FUNCTION_38_10();

    if (!v9)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = *(v0 + 40);
  if (*(v1 + 40))
  {
    if (!v10)
    {
      return 0;
    }

    type metadata accessor for DateTime.Interval();
    if (!OUTLINED_FUNCTION_45_9())
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = *(v0 + 48);
  if (!*(v1 + 48))
  {
    if (!v11)
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (!v11)
  {
    return 0;
  }

  type metadata accessor for DateTime.Interval();
  if (!OUTLINED_FUNCTION_45_9())
  {
    return 0;
  }

LABEL_26:
  v12 = *(v1 + 56);
  v13 = *(v0 + 56);
  if (v12 == 38)
  {
    if (v13 != 38)
    {
      return 0;
    }
  }

  else if (v12 != v13)
  {
    return 0;
  }

  v15 = *(v1 + 57);
  v16 = *(v0 + 57);
  v17 = v16 == 20;
  v18 = v15 == v16;
  if (v15 == 20)
  {
    return v17;
  }

  else
  {
    return v18;
  }
}

uint64_t sub_1DD49D060(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (*(a1 + 24) && *(a2 + 24))
  {
    type metadata accessor for DateTime();

    v6 = OUTLINED_FUNCTION_63_0();
    v7 = static DateTime.< infix(_:_:)(v6);

    if (v7)
    {
      return 1;
    }

    v9 = OUTLINED_FUNCTION_63_0();
    if (static DateTime.== infix(_:_:)(v9, v10) && (v11 = *(a1 + 32)) != 0 && (v12 = *(a2 + 32)) != 0)
    {

      v13 = a3(v11, v12);

      if (v13)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1DD49D1BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (*(a1 + 24) && *(a2 + 24))
  {
    type metadata accessor for DateTime();

    OUTLINED_FUNCTION_63_0();
    v6 = static DateTime.<= infix(_:_:)();

    if (!v6)
    {
      return 1;
    }

    v7 = OUTLINED_FUNCTION_63_0();
    if (static DateTime.== infix(_:_:)(v7, v8) && (v9 = *(a1 + 32)) != 0 && (v10 = *(a2 + 32)) != 0)
    {

      v11 = a3(v9, v10);

      if ((v11 & 1) == 0)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1DD49D2E4()
{
  if (*(v0 + 24) && *(v0 + 32))
  {
    v1 = *(v0 + 24);

    v9 = sub_1DD48A1FC(v2);
    v3 = MEMORY[0x1E12B2260](2108704, 0xE300000000000000);
    v4 = sub_1DD48A1FC(v3);
    MEMORY[0x1E12B2260](v4);
  }

  else
  {
    if (*(v0 + 56) != 38)
    {
      v9 = 0;
      MEMORY[0x1E12B2260](0x5664656E69666564, 0xED00003D65756C61);
      sub_1DD6409F8();
      return v9;
    }

    if (*(v0 + 16))
    {
      v9 = 4027489;

      v6 = sub_1DD48A1FC(v5);
      MEMORY[0x1E12B2260](v6);

      MEMORY[0x1E12B2260](39, 0xE100000000000000);

      return v9;
    }

    if (!*(v0 + 40))
    {
      return 0;
    }

    v9 = 0x6E6F697461727564;

    v8 = sub_1DD4E0F18();
    MEMORY[0x1E12B2260](v8);
  }

  return v9;
}

uint64_t sub_1DD49D49C(uint64_t a1, uint64_t a2)
{
  v238 = a2;
  v243 = a1;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD4E8, &qword_1DD650788);
  v2 = OUTLINED_FUNCTION_7(v207);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16_3();
  v205 = v6;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD4F0, &unk_1DD651E10);
  v7 = OUTLINED_FUNCTION_7(v204);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_14_2(v11);
  v229 = sub_1DD63D228();
  v12 = OUTLINED_FUNCTION_0(v229);
  v253 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v16);
  v228 = sub_1DD63D1D8();
  v17 = OUTLINED_FUNCTION_0(v228);
  v250 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v21);
  v263 = sub_1DD63D078();
  v22 = OUTLINED_FUNCTION_0(v263);
  v248 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_14_2(v29);
  v239 = sub_1DD63CBB8();
  v30 = OUTLINED_FUNCTION_0(v239);
  v246 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v39);
  v41 = v194 - v40;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v42 = OUTLINED_FUNCTION_7(v220);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v45);
  v47 = v194 - v46;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v51);
  v53 = (v194 - v52);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_14_2(v55);
  v56 = sub_1DD63D218();
  v57 = *(v56 - 8);
  v58 = v57;
  v59 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_16_3();
  v260 = v61;
  v269 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC178, &qword_1DD645278);
  v62 = v57;
  v63 = v53;
  v64 = *(v62 + 72);
  v65 = *(v58 + 80);
  v244 = v58;
  v66 = (v65 + 32) & ~v65;
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1DD643F80;
  v194[1] = v67;
  v68 = v67 + v66;
  v69 = v239;
  v70 = v41;
  v72 = v58 + 104;
  v71 = *(v58 + 104);
  v218 = *MEMORY[0x1E6969998];
  v71(v68);
  v73 = *MEMORY[0x1E69699A0];
  v242 = v64;
  v241 = v68;
  v261 = v56;
  v217 = v72;
  v216 = v71;
  v74 = (v71)(v68 + v64, v73, v56);
  v75 = 0;
  v76 = 0;
  v257 = *(v259 + 24);
  v256 = *(v259 + 32);
  v240 = *(v244 + 16);
  v249 = (v248 + 16);
  v251 = v246 + 32;
  v247 = (v248 + 32);
  v227 = (v250 + 13);
  v226 = v253 + 104;
  v215 = *MEMORY[0x1E6969A48];
  v214 = *MEMORY[0x1E6969A78];
  v213 = *MEMORY[0x1E6969A68];
  v212 = *MEMORY[0x1E6969AB0];
  v225 = v253 + 8;
  v224 = (v250 + 1);
  v250 = (v246 + 8);
  v245 = (v248 + 8);
  v198 = (v246 + 16);
  v244 += 16;
  v253 = v244 - 8;
  v211 = *MEMORY[0x1E6969A58];
  v210 = *MEMORY[0x1E6969A88];
  v209 = *MEMORY[0x1E6969A98];
  v74.n128_u64[0] = 136315138;
  v201 = v74;
  v74.n128_u64[1] = 14;
  v208 = xmmword_1DD6504B0;
  v223 = *MEMORY[0x1E69698D0];
  v74.n128_u64[0] = 136315650;
  v195 = v74;
  v222 = *MEMORY[0x1E69699C8];
  v252 = v70;
  v246 = v47;
  v258 = v63;
  while (1)
  {
    LODWORD(v259) = v75;
    v240(v260, v241 + v76 * v242, v261);
    v77 = *v249;
    v78 = v47;
    v79 = v262;
    v80 = v69;
    v81 = v243;
    v82 = v70;
    v83 = v263;
    (*v249)(v262, v243, v263);
    v84 = v79;
    v47 = v78;
    __swift_storeEnumTagSinglePayload(v84, 0, 1, v83);
    v85 = v81;
    v69 = v80;
    v248 = v77;
    (v77)(v63, v85, v83);
    v86 = v83;
    v70 = v82;
    __swift_storeEnumTagSinglePayload(v63, 0, 1, v86);
    if (v257)
    {
      v87 = v257;
      sub_1DD489774();
      OUTLINED_FUNCTION_16_0(v267);
      v88 = OUTLINED_FUNCTION_42_8();
      v89(v88);
      OUTLINED_FUNCTION_25_11();
      swift_beginAccess();
      v63 = v233;
      sub_1DD3DD9B4(v87, v233, &qword_1ECCDEBC0, &qword_1DD6445A0);
      OUTLINED_FUNCTION_31_14(v63);
      if (v90)
      {
        OUTLINED_FUNCTION_16_0(v266);
        v91(v82, v80);
        OUTLINED_FUNCTION_36_11();
      }

      else
      {
        OUTLINED_FUNCTION_16_0(v265);
        v70 = v221;
        v92 = OUTLINED_FUNCTION_42_8();
        v93(v92);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
        v94 = sub_1DD63D2B8();
        OUTLINED_FUNCTION_0(v94);
        v96 = v95;
        v80 = *(v97 + 72);
        v98 = (*(v95 + 80) + 32) & ~*(v95 + 80);
        *(swift_allocObject() + 16) = v208;
        v99 = *(v96 + 104);
        v82 = v96 + 104;
        OUTLINED_FUNCTION_21_17(&v245 + 4);
        v99();
        OUTLINED_FUNCTION_21_17(&v245);
        v99();
        OUTLINED_FUNCTION_21_17(&v244 + 4);
        v99();
        OUTLINED_FUNCTION_21_17(&v244);
        v99();
        OUTLINED_FUNCTION_21_17(&v243 + 4);
        v99();
        OUTLINED_FUNCTION_21_17(&v243);
        v99();
        OUTLINED_FUNCTION_21_17(&v242 + 4);
        v99();
        v47 = v252;
        v63 = sub_1DD418734();
        v78 = v232;
        sub_1DD63D1F8();

        sub_1DD483F74();
        if (v100)
        {
          if (qword_1ECCDB0C0 != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v101 = sub_1DD63F9F8();
          __swift_project_value_buffer(v101, qword_1ECD0DDC0);
          v63 = *v198;
          v80 = v199;
          v77 = v239;
          (*v198)(v199, v47, v239);
          v82 = v200;
          (v63)(v200, v78, v77);
          v102 = sub_1DD63F9D8();
          v103 = sub_1DD640368();
          if (os_log_type_enabled(v102, v103))
          {
            v78 = swift_slowAlloc();
            v197 = swift_slowAlloc();
            v264 = v197;
            *v78 = v195.n128_u32[0];
            sub_1DD49FFE4(&qword_1ECCDD4F8, 255, MEMORY[0x1E6968278]);
            v104 = v82;
            v196 = v103;
            v105 = sub_1DD640CB8();
            v106 = v80;
            v108 = v107;
            v109 = *v250;
            (*v250)(v106, v77);
            v110 = sub_1DD39565C(v105, v108, &v264);

            *(v78 + 4) = v110;
            v80 = 2080;
            *(v78 + 12) = 2080;
            v111 = sub_1DD640CB8();
            v113 = v112;
            v109(v104, v77);
            v114 = sub_1DD39565C(v111, v113, &v264);

            *(v78 + 14) = v114;
            *(v78 + 22) = 2080;
            v63 = &qword_1ECCDEBC0;
            sub_1DD3DD9B4(v262, v254, &qword_1ECCDEBC0, &qword_1DD6445A0);
            v115 = sub_1DD63FE38();
            v82 = sub_1DD39565C(v115, v116, &v264);

            *(v78 + 24) = v82;
            _os_log_impl(&dword_1DD38D000, v102, v196, "%s == %s so setting keeping startDate as %s", v78, 0x20u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_0_1();
            OUTLINED_FUNCTION_0_1();

            v109(v232, v77);
            OUTLINED_FUNCTION_10_31();
            OUTLINED_FUNCTION_23_19();
            v117();
            v109(v47, v77);
          }

          else
          {

            v133 = *v250;
            (*v250)(v82, v77);
            v133(v80, v77);
            v133(v78, v77);
            OUTLINED_FUNCTION_10_31();
            OUTLINED_FUNCTION_23_19();
            v134();
            v133(v47, v77);
          }

          v70 = v47;
          OUTLINED_FUNCTION_29_14();
          v69 = v77;
        }

        else
        {
          OUTLINED_FUNCTION_16_0(&v256);
          v118 = OUTLINED_FUNCTION_19_20();
          v119(v118);
          OUTLINED_FUNCTION_16_0(&v255);
          v120 = OUTLINED_FUNCTION_18_21();
          v121(v120);
          v122 = v254;
          sub_1DD63D298();
          OUTLINED_FUNCTION_16_0(&v254);
          v123(v82, v63);
          OUTLINED_FUNCTION_16_0(&v253);
          v124(v80, v78);
          sub_1DD49FF04(v122, v262);
          if (qword_1ECCDB0C0 != -1)
          {
            OUTLINED_FUNCTION_0_6();
            swift_once();
          }

          v125 = sub_1DD63F9F8();
          __swift_project_value_buffer(v125, qword_1ECD0DDC0);
          v126 = sub_1DD63F9D8();
          v78 = sub_1DD640368();
          if (os_log_type_enabled(v126, v78))
          {
            v63 = swift_slowAlloc();
            v127 = swift_slowAlloc();
            OUTLINED_FUNCTION_41_9(v127);
            sub_1DD3DD9B4(v262, v254, &qword_1ECCDEBC0, &qword_1DD6445A0);
            v128 = sub_1DD63FE38();
            v80 = v129;
            v82 = sub_1DD39565C(v128, v129, &v264);

            *(v63 + 4) = v82;
            _os_log_impl(&dword_1DD38D000, v126, v78, "startDate is %s after using nextDate", v63, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v127);
            OUTLINED_FUNCTION_0_1();
            OUTLINED_FUNCTION_0_1();
          }

          v130 = OUTLINED_FUNCTION_20_19();
          (v126)(v130);
          OUTLINED_FUNCTION_10_31();
          OUTLINED_FUNCTION_23_19();
          v131();
          OUTLINED_FUNCTION_24_14();
          v132 = OUTLINED_FUNCTION_42_8();
          (v126)(v132);
          v69 = v63;
          OUTLINED_FUNCTION_29_14();
        }
      }
    }

    if (!v256)
    {
      goto LABEL_22;
    }

    v135 = v235;
    v136 = v256;
    sub_1DD489774();
    OUTLINED_FUNCTION_16_0(v267);
    v137(v255, v135, v69);
    OUTLINED_FUNCTION_25_11();
    OUTLINED_FUNCTION_26_0();
    v63 = v234;
    sub_1DD3DD9B4(v136, v234, &qword_1ECCDEBC0, &qword_1DD6445A0);
    OUTLINED_FUNCTION_31_14(v63);
    if (v90)
    {
      OUTLINED_FUNCTION_16_0(v266);
      v138 = OUTLINED_FUNCTION_26_18();
      v139(v138);
      OUTLINED_FUNCTION_36_11();
LABEL_22:
      OUTLINED_FUNCTION_25_11();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_39_9();
      sub_1DD3DD9B4(v140, v141, v142, &qword_1DD6445A0);
      OUTLINED_FUNCTION_28_9();
      swift_beginAccess();
      sub_1DD49FF04(v77, v63);
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_16_0(v265);
    v143(v236, v63, v263);
    OUTLINED_FUNCTION_16_0(&v256);
    v144 = OUTLINED_FUNCTION_19_20();
    v145(v144);
    OUTLINED_FUNCTION_16_0(&v255);
    v146 = OUTLINED_FUNCTION_18_21();
    v147(v146);
    v47 = v219;
    v148 = v261;
    (v216)(v219, v218, v261);
    v149 = v254;
    sub_1DD63D298();
    OUTLINED_FUNCTION_16_0(v268);
    v150(v47, v148);
    OUTLINED_FUNCTION_16_0(&v254);
    v151(v82, v63);
    OUTLINED_FUNCTION_16_0(&v253);
    v152(v80, v78);
    OUTLINED_FUNCTION_28_9();
    swift_beginAccess();
    sub_1DD49FF04(v149, v63);
    if (qword_1ECCDB0C0 != -1)
    {
      OUTLINED_FUNCTION_0_6();
      swift_once();
    }

    v153 = sub_1DD63F9F8();
    __swift_project_value_buffer(v153, qword_1ECD0DDC0);
    v154 = sub_1DD63F9D8();
    v155 = sub_1DD640368();
    v156 = os_log_type_enabled(v154, v155);
    v69 = v239;
    if (v156)
    {
      v63 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      OUTLINED_FUNCTION_41_9(v157);
      OUTLINED_FUNCTION_39_9();
      v70 = &qword_1DD6445A0;
      sub_1DD3DD9B4(v158, v159, v160, &qword_1DD6445A0);
      v161 = sub_1DD63FE38();
      v163 = sub_1DD39565C(v161, v162, &v264);

      *(v63 + 4) = v163;
      _os_log_impl(&dword_1DD38D000, v154, v155, "endDate is %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v157);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_28_9();
      OUTLINED_FUNCTION_0_1();
    }

    OUTLINED_FUNCTION_10_31();
    OUTLINED_FUNCTION_23_19();
    v164();
    OUTLINED_FUNCTION_16_0(v266);
    v165 = OUTLINED_FUNCTION_26_18();
    v166(v165);
    OUTLINED_FUNCTION_24_14();
    OUTLINED_FUNCTION_29_14();
LABEL_28:
    v167 = v262;
    OUTLINED_FUNCTION_26_0();
    sub_1DD3DD9B4(v167, v47, &qword_1ECCDEBC0, &qword_1DD6445A0);
    OUTLINED_FUNCTION_31_14(v47);
    if (!v90)
    {
      break;
    }

    v168 = OUTLINED_FUNCTION_9_29();
    v169(v168);
    sub_1DD390754(v47, &qword_1ECCDEBC0, &qword_1DD6445A0);
LABEL_35:
    OUTLINED_FUNCTION_36_11();
    sub_1DD390754(v262, &qword_1ECCDEBC0, &qword_1DD6445A0);
    v75 = 1;
    v76 = 1;
    if (v259)
    {
      swift_setDeallocating();
      sub_1DD46CB60();
      return v269;
    }
  }

  v170 = v69;
  v171 = v63;
  v172 = v247;
  v63 = *v247;
  v173 = v237;
  v174 = v47;
  v47 = v263;
  (*v247)(v237, v174, v263);
  OUTLINED_FUNCTION_26_0();
  v175 = v231;
  sub_1DD3DD9B4(v171, v231, &qword_1ECCDEBC0, &qword_1DD6445A0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v175, 1, v47);
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_10_31();
    OUTLINED_FUNCTION_23_19();
    v177();
    v178 = OUTLINED_FUNCTION_9_29();
    v179(v178);
    sub_1DD390754(v175, &qword_1ECCDEBC0, &qword_1DD6445A0);
    OUTLINED_FUNCTION_29_14();
    OUTLINED_FUNCTION_28_9();
    v69 = v170;
    OUTLINED_FUNCTION_24_14();
    goto LABEL_35;
  }

  v180 = v230;
  (v63)(v230, v175, v263);
  sub_1DD49FFE4(&qword_1EE166638, 255, MEMORY[0x1E6969530]);
  result = sub_1DD63FD88();
  if (result)
  {
    v47 = v172;
    v182 = v205;
    v183 = v173;
    v70 = v263;
    v184 = v248;
    (v248)(v205, v183, v263);
    v185 = v207;
    v184(v182 + *(v207 + 48), v180, v70);
    v186 = v206;
    sub_1DD3DD9B4(v182, v206, &qword_1ECCDD4E8, &qword_1DD650788);
    v187 = *(v185 + 48);
    v188 = v203;
    (v63)(v203, v186, v70);
    v189 = *v245;
    (*v245)(v186 + v187, v70);
    sub_1DD49FF74(v182, v186);
    (v63)(v188 + *(v204 + 36), v186 + *(v185 + 48), v70);
    v189(v186, v70);
    v190 = v202;
    sub_1DD56E62C();
    v191 = v190;
    v69 = v239;
    sub_1DD390754(v191, &qword_1ECCDD4F0, &unk_1DD651E10);
    v189(v230, v70);
    v189(v237, v70);
    OUTLINED_FUNCTION_24_14();
    v192 = OUTLINED_FUNCTION_9_29();
    v193(v192);
    OUTLINED_FUNCTION_29_14();
    OUTLINED_FUNCTION_28_9();
    goto LABEL_35;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD49ED48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 29793 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 6581861 && a2 == 0xE300000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x5664656E69666564 && a2 == 0xEC00000065756C61;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x656966696C617571 && a2 == 0xE900000000000072)
            {

              return 6;
            }

            else
            {
              v12 = sub_1DD640CD8();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DD49EF80(char a1)
{
  result = 29793;
  switch(a1)
  {
    case 1:
      result = 0x7472617473;
      break;
    case 2:
      result = 6581861;
      break;
    case 3:
      result = 0x6E6F697461727564;
      break;
    case 4:
      result = 0x6C61767265746E69;
      break;
    case 5:
      result = 0x5664656E69666564;
      break;
    case 6:
      result = 0x656966696C617571;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD49F048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD49ED48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD49F070(uint64_t a1)
{
  v2 = sub_1DD49F9AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD49F0AC(uint64_t a1)
{
  v2 = sub_1DD49F9AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *DateTime.DateTimeRange.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return v0;
}

uint64_t DateTime.DateTimeRange.__deallocating_deinit()
{
  DateTime.DateTimeRange.deinit();
  OUTLINED_FUNCTION_4_35();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD49F154(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD470, &qword_1DD6504C0);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD49F9AC();
  sub_1DD640EF8();
  v20 = *(v3 + 16);
  HIBYTE(v19) = 0;
  type metadata accessor for DateTime();
  OUTLINED_FUNCTION_16_25();
  sub_1DD49FFE4(v14, 255, v15);
  OUTLINED_FUNCTION_5_43();
  if (!v2)
  {
    v20 = *(v3 + 24);
    HIBYTE(v19) = 1;
    OUTLINED_FUNCTION_5_43();
    v20 = *(v3 + 32);
    HIBYTE(v19) = 2;
    OUTLINED_FUNCTION_5_43();
    v20 = *(v3 + 40);
    HIBYTE(v19) = 3;
    type metadata accessor for DateTime.Interval();
    OUTLINED_FUNCTION_15_22();
    sub_1DD49FFE4(v16, 255, v17);
    OUTLINED_FUNCTION_5_43();
    v20 = *(v3 + 48);
    HIBYTE(v19) = 4;
    OUTLINED_FUNCTION_5_43();
    LOBYTE(v20) = *(v3 + 56);
    HIBYTE(v19) = 5;
    sub_1DD49FA00();
    OUTLINED_FUNCTION_35_11();
    LOBYTE(v20) = *(v3 + 57);
    HIBYTE(v19) = 6;
    sub_1DD49FA54();
    OUTLINED_FUNCTION_35_11();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1DD49F3B0()
{
  sub_1DD640E28();
  sub_1DD49CDC8();
  return sub_1DD640E78();
}

uint64_t DateTime.DateTimeRange.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_35();
  v2 = swift_allocObject();
  DateTime.DateTimeRange.init(from:)(a1);
  return v2;
}

uint64_t DateTime.DateTimeRange.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD4A0, &qword_1DD6504C8);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD49F9AC();
  sub_1DD640ED8();
  if (v2)
  {
    type metadata accessor for DateTime.DateTimeRange();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for DateTime();
    OUTLINED_FUNCTION_16_25();
    sub_1DD49FFE4(v9, 255, v10);
    OUTLINED_FUNCTION_0_66();
    sub_1DD640B18();
    *(v1 + 16) = v16;
    OUTLINED_FUNCTION_0_66();
    sub_1DD640B18();
    *(v1 + 24) = v16;
    OUTLINED_FUNCTION_0_66();
    sub_1DD640B18();
    *(v1 + 32) = v16;
    type metadata accessor for DateTime.Interval();
    OUTLINED_FUNCTION_15_22();
    sub_1DD49FFE4(v11, 255, v12);
    OUTLINED_FUNCTION_0_66();
    sub_1DD640B18();
    *(v1 + 40) = v16;
    OUTLINED_FUNCTION_0_66();
    sub_1DD640B18();
    *(v1 + 48) = v16;
    sub_1DD49FACC();
    OUTLINED_FUNCTION_27_17();
    *(v1 + 56) = v16;
    sub_1DD49FB20();
    OUTLINED_FUNCTION_27_17();
    v14 = OUTLINED_FUNCTION_8_31();
    v15(v14);
    *(v1 + 57) = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_1DD49F844()
{
  sub_1DD640E28();
  v1 = *v0;
  sub_1DD49CDC8();
  return sub_1DD640E78();
}

BOOL sub_1DD49F884(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static DateTime.DateTimeRange.== infix(_:_:)();
}

uint64_t sub_1DD49F938@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = DateTime.DateTimeRange.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1DD49F9AC()
{
  result = qword_1ECCDD478;
  if (!qword_1ECCDD478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD478);
  }

  return result;
}

unint64_t sub_1DD49FA00()
{
  result = qword_1ECCDD490;
  if (!qword_1ECCDD490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD490);
  }

  return result;
}

unint64_t sub_1DD49FA54()
{
  result = qword_1ECCDD498;
  if (!qword_1ECCDD498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD498);
  }

  return result;
}

unint64_t sub_1DD49FACC()
{
  result = qword_1ECCDD4B8;
  if (!qword_1ECCDD4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD4B8);
  }

  return result;
}

unint64_t sub_1DD49FB20()
{
  result = qword_1ECCDD4C0;
  if (!qword_1ECCDD4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD4C0);
  }

  return result;
}

_BYTE *_s13DateTimeRangeC10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD49FE00()
{
  result = qword_1ECCDD4D0;
  if (!qword_1ECCDD4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD4D0);
  }

  return result;
}

unint64_t sub_1DD49FE58()
{
  result = qword_1ECCDD4D8;
  if (!qword_1ECCDD4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD4D8);
  }

  return result;
}

unint64_t sub_1DD49FEB0()
{
  result = qword_1ECCDD4E0;
  if (!qword_1ECCDD4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD4E0);
  }

  return result;
}

uint64_t sub_1DD49FF04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD49FF74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD4E8, &qword_1DD650788);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD49FFE4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_19_20()
{
  result = *(v0 - 584);
  v2 = *(v0 - 620);
  v3 = *(v0 - 576);
  return result;
}

uint64_t OUTLINED_FUNCTION_27_17()
{

  return sub_1DD640B18();
}

uint64_t OUTLINED_FUNCTION_35_11()
{

  return sub_1DD640C08();
}

uint64_t OUTLINED_FUNCTION_36_11()
{

  return sub_1DD390754(v1, v2, v0);
}

BOOL OUTLINED_FUNCTION_38_10()
{

  return static DateTime.== infix(_:_:)(v0, v1);
}

__n128 OUTLINED_FUNCTION_41_9(uint64_t a1)
{
  *(v2 - 248) = a1;
  result = *(v2 - 784);
  *v1 = result.n128_u32[0];
  return result;
}

BOOL OUTLINED_FUNCTION_45_9()
{

  return static DateTime.Interval.== infix(_:_:)(v1, v0);
}

uint64_t sub_1DD4A01A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD63D078();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v76 = &v75 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD4F0, &unk_1DD651E10);
  v15 = OUTLINED_FUNCTION_0(v14);
  v85 = v16;
  v86 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v75 = &v75 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v88 = &v75 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v83 = &v75 - v26;
  v27 = a2 + 56;
  v28 = 1 << *(a2 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(a2 + 56);
  v31 = (v28 + 63) >> 6;
  v84 = (v7 + 16);
  v82 = v7 + 8;
  v87 = a2;

  v32 = 0;
  *&v33 = 136315394;
  v77 = v33;
  v81 = a1;
  if (v30)
  {
    while (1)
    {
      v34 = v32;
LABEL_8:
      v35 = v83;
      sub_1DD4A0930(*(v87 + 48) + *(v85 + 72) * (__clz(__rbit64(v30)) | (v34 << 6)), v83);
      sub_1DD4A09A0(v35, v88);
      sub_1DD4A0A78(&qword_1EE166638);
      if (sub_1DD63FD78())
      {
        v36 = *(v86 + 36);
        if (sub_1DD63FD88())
        {
          break;
        }
      }

      if (qword_1ECCDB0C0 != -1)
      {
        OUTLINED_FUNCTION_0_6();
        swift_once();
      }

      v30 &= v30 - 1;
      v37 = sub_1DD63F9F8();
      __swift_project_value_buffer(v37, qword_1ECD0DDC0);
      sub_1DD4A0930(v88, v20);
      v38 = v11;
      (*v84)(v11, a1, v4);
      v39 = sub_1DD63F9D8();
      v40 = sub_1DD640368();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v80 = v42;
        *v41 = v77;
        v89 = 0;
        v90 = 0xE000000000000000;
        v91 = v42;
        v79 = v40;
        sub_1DD6409F8();
        v78 = v39;
        OUTLINED_FUNCTION_4_36();
        v43 = *(v86 + 36);
        sub_1DD6409F8();
        v44 = v4;
        v45 = v89;
        v46 = v90;
        sub_1DD4A0A10(v20);
        v47 = sub_1DD39565C(v45, v46, &v91);

        *(v41 + 4) = v47;
        *(v41 + 12) = 2080;
        OUTLINED_FUNCTION_0_67();
        sub_1DD4A0A78(&qword_1EE1663F8);
        v48 = sub_1DD640CB8();
        v50 = v49;
        OUTLINED_FUNCTION_3_40();
        v51(v38, v44);
        v52 = sub_1DD39565C(v48, v50, &v91);
        v4 = v44;

        *(v41 + 14) = v52;
        v53 = v78;
        _os_log_impl(&dword_1DD38D000, v78, v79, "range %s doesn't contain %s", v41, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      else
      {

        OUTLINED_FUNCTION_3_40();
        v54(v11, v4);
        sub_1DD4A0A10(v20);
      }

      sub_1DD4A0A10(v88);
      v32 = v34;
      a1 = v81;
      v11 = v38;
      if (!v30)
      {
        goto LABEL_5;
      }
    }

    if (qword_1ECCDB0C0 == -1)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v34 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v34 >= v31)
      {

        return 0;
      }

      v30 = *(v27 + 8 * v34);
      ++v32;
      if (v30)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  OUTLINED_FUNCTION_0_6();
  swift_once();
LABEL_19:
  v56 = sub_1DD63F9F8();
  __swift_project_value_buffer(v56, qword_1ECD0DDC0);
  v57 = v75;
  sub_1DD4A0930(v88, v75);
  v58 = v76;
  (*v84)(v76, a1, v4);
  v59 = sub_1DD63F9D8();
  v60 = sub_1DD640368();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = v4;
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v62 = v77;
    v89 = 0;
    v90 = 0xE000000000000000;
    v91 = v63;
    sub_1DD6409F8();
    OUTLINED_FUNCTION_4_36();
    v64 = *(v86 + 36);
    sub_1DD6409F8();
    v66 = v89;
    v65 = v90;
    sub_1DD4A0A10(v57);
    v67 = sub_1DD39565C(v66, v65, &v91);

    *(v62 + 4) = v67;
    *(v62 + 12) = 2080;
    OUTLINED_FUNCTION_0_67();
    sub_1DD4A0A78(v68);
    v69 = sub_1DD640CB8();
    v71 = v70;
    OUTLINED_FUNCTION_3_40();
    v72(v58, v61);
    v73 = sub_1DD39565C(v69, v71, &v91);

    *(v62 + 14) = v73;
    _os_log_impl(&dword_1DD38D000, v59, v60, "range: %s contains %s returning true", v62, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {

    OUTLINED_FUNCTION_3_40();
    v74(v58, v4);
    sub_1DD4A0A10(v57);
  }

  sub_1DD4A0A10(v88);
  return 1;
}

uint64_t sub_1DD4A0930(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD4F0, &unk_1DD651E10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4A09A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD4F0, &unk_1DD651E10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4A0A10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD4F0, &unk_1DD651E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD4A0A78(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DD63D078();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DD4A0AC8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v32 = *a1;
  switch(*a1)
  {
    case 8:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_0_68(inited, xmmword_1DD64D850);
      OUTLINED_FUNCTION_8_32();
      OUTLINED_FUNCTION_6_34();
      OUTLINED_FUNCTION_0_58();
      v38 = OUTLINED_FUNCTION_5_44(5, v34, v35, v36, v37);
      OUTLINED_FUNCTION_1_52(v38);
      OUTLINED_FUNCTION_0_58();
      v41 = 4;
      goto LABEL_13;
    case 9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_0_68(inited, xmmword_1DD64D850);
      OUTLINED_FUNCTION_8_32();
      OUTLINED_FUNCTION_6_34();
      OUTLINED_FUNCTION_0_58();
      v56 = 9;
      goto LABEL_12;
    case 0xA:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_0_68(inited, xmmword_1DD64D850);
      OUTLINED_FUNCTION_8_32();
      OUTLINED_FUNCTION_6_34();
      OUTLINED_FUNCTION_0_58();
      v56 = 8;
      goto LABEL_12;
    case 0xB:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_0_68(inited, xmmword_1DD64D850);
      OUTLINED_FUNCTION_8_32();
      OUTLINED_FUNCTION_6_34();
      OUTLINED_FUNCTION_0_58();
      v56 = 11;
LABEL_12:
      v57 = OUTLINED_FUNCTION_5_44(v56, v52, v53, v54, v55);
      OUTLINED_FUNCTION_1_52(v57);
      OUTLINED_FUNCTION_0_58();
      v41 = 5;
      goto LABEL_13;
    default:
      if (v32 == 31)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
        inited = swift_initStackObject();
        OUTLINED_FUNCTION_0_68(inited, xmmword_1DD64D850);
        OUTLINED_FUNCTION_8_32();
        OUTLINED_FUNCTION_6_34();
        OUTLINED_FUNCTION_0_58();
        v51 = OUTLINED_FUNCTION_5_44(4, v47, v48, v49, v50);
        OUTLINED_FUNCTION_1_52(v51);
        OUTLINED_FUNCTION_0_58();
        v41 = 2;
        goto LABEL_13;
      }

      if (v32 == 32)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
        inited = swift_initStackObject();
        OUTLINED_FUNCTION_0_68(inited, xmmword_1DD64D850);
        OUTLINED_FUNCTION_8_32();
        OUTLINED_FUNCTION_6_34();
        OUTLINED_FUNCTION_0_58();
        v46 = OUTLINED_FUNCTION_5_44(2, v42, v43, v44, v45);
        OUTLINED_FUNCTION_1_52(v46);
        OUTLINED_FUNCTION_0_58();
        v41 = 1;
LABEL_13:
        inited[2].n128_u64[1] = sub_1DD48DFB4(v41, v39, 0, 1, v40, 1, 1, 0);
        sub_1DD418B8C(inited);
        return;
      }

      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1DD6407B8())
      {
        v65 = MEMORY[0x1E69E7CC0];

        sub_1DD56C450(v65, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
      }

      return;
  }
}

uint64_t sub_1DD4A0DA0(_BYTE *a1)
{
  v1 = *a1;
  switch(*a1)
  {
    case 8:
      OUTLINED_FUNCTION_4_37();
      OUTLINED_FUNCTION_9_30();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2_43();
      v5 = 5;
      return sub_1DD48DFB4(v5, v2, 0, 1, v3, 1, v4, 0);
    case 9:
      OUTLINED_FUNCTION_4_37();
      OUTLINED_FUNCTION_9_30();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2_43();
      v5 = 9;
      return sub_1DD48DFB4(v5, v2, 0, 1, v3, 1, v4, 0);
    case 0xA:
      OUTLINED_FUNCTION_4_37();
      OUTLINED_FUNCTION_9_30();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2_43();
      v5 = 8;
      return sub_1DD48DFB4(v5, v2, 0, 1, v3, 1, v4, 0);
    case 0xB:
      OUTLINED_FUNCTION_4_37();
      OUTLINED_FUNCTION_9_30();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_2_43();
      v5 = 11;
      return sub_1DD48DFB4(v5, v2, 0, 1, v3, 1, v4, 0);
    default:
      if (v1 == 31)
      {
        OUTLINED_FUNCTION_4_37();
        OUTLINED_FUNCTION_9_30();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_2_43();
        v5 = 4;
      }

      else
      {
        if (v1 != 32)
        {
          return 0;
        }

        OUTLINED_FUNCTION_4_37();
        OUTLINED_FUNCTION_9_30();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_2_43();
        v5 = 2;
      }

      return sub_1DD48DFB4(v5, v2, 0, 1, v3, 1, v4, 0);
  }
}

SiriInference::DateTimeResolutionContext::Hemisphere_optional __swiftcall DateTimeResolutionContext.Hemisphere.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1DD4A0F10@<X0>(uint64_t *a1@<X8>)
{
  result = DateTimeResolutionContext.Hemisphere.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t DateTimeResolutionContext.__allocating_init(with:regionFormat:regionAwareLanguage:timeZone:hemisphere:calendar:date:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  v17 = swift_allocObject();
  DateTimeResolutionContext.init(with:regionFormat:regionAwareLanguage:timeZone:hemisphere:calendar:date:)(a1, a2, a3, a4, a5, a6, a7);
  return v17;
}

uint64_t DateTimeResolutionContext.init(with:regionFormat:regionAwareLanguage:timeZone:hemisphere:calendar:date:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v37 = sub_1DD63D328();
  v12 = OUTLINED_FUNCTION_0(v37);
  v14 = v13;
  v31 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v32 = v17;
  LOBYTE(a5) = *a5;
  v18 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_language;
  v19 = sub_1DD63D168();
  v20 = *(v19 - 8);
  v21 = *(v20 + 16);
  v21(v8 + v18, a1, v19);
  v21(v8 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionFormat, a2, v19);
  v21(v8 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionAwareLanguage, a3, v19);
  v30 = *(v14 + 16);
  v30(v8 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_timeZone, a4, v37);
  *(v8 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_hemisphere) = a5;
  v22 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_calendar;
  v23 = sub_1DD63D2D8();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v8 + v22, a6, v23);
  v30(v32, a4, v37);
  swift_beginAccess();
  sub_1DD63D2A8();
  swift_endAccess();
  (*(v24 + 8))(a6, v23);
  (*(v31 + 8))(a4, v37);
  v25 = *(v20 + 8);
  v25(a3, v19);
  v25(a2, v19);
  v25(a1, v19);
  v26 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_date;
  v27 = sub_1DD63D078();
  OUTLINED_FUNCTION_7(v27);
  (*(v28 + 32))(v8 + v26, a7);
  return v8;
}

uint64_t sub_1DD4A1370(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F466E6F69676572 && a2 == 0xEC00000074616D72;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x80000001DD66D670 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65687073696D6568 && a2 == 0xEA00000000006572;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 1702125924 && a2 == 0xE400000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_1DD640CD8();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD4A15B4(char a1)
{
  result = 0x65676175676E616CLL;
  switch(a1)
  {
    case 1:
      result = 0x6F466E6F69676572;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x656E6F5A656D6974;
      break;
    case 4:
      result = 0x65687073696D6568;
      break;
    case 5:
      result = 0x7261646E656C6163;
      break;
    case 6:
      result = 1702125924;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD4A1688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4A1370(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4A16B0(uint64_t a1)
{
  v2 = sub_1DD4A205C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4A16EC(uint64_t a1)
{
  v2 = sub_1DD4A205C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DateTimeResolutionContext.deinit()
{
  v1 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_language;
  v2 = sub_1DD63D168();
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionFormat, v2);
  v4(v0 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionAwareLanguage, v2);
  v5 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_timeZone;
  v6 = sub_1DD63D328();
  OUTLINED_FUNCTION_7(v6);
  (*(v7 + 8))(v0 + v5);
  v8 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_calendar;
  v9 = sub_1DD63D2D8();
  OUTLINED_FUNCTION_7(v9);
  (*(v10 + 8))(v0 + v8);
  v11 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_date;
  v12 = sub_1DD63D078();
  OUTLINED_FUNCTION_7(v12);
  (*(v13 + 8))(v0 + v11);
  return v0;
}

uint64_t DateTimeResolutionContext.__deallocating_deinit()
{
  DateTimeResolutionContext.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DD4A18CC(void *a1)
{
  v2 = sub_1DD63D078();
  v3 = OUTLINED_FUNCTION_0(v2);
  v68 = v4;
  v69 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v67 = v7;
  OUTLINED_FUNCTION_6_2();
  v72 = sub_1DD63D2D8();
  v8 = OUTLINED_FUNCTION_0(v72);
  v70 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v71 = v12;
  OUTLINED_FUNCTION_6_2();
  v75 = sub_1DD63D328();
  v13 = OUTLINED_FUNCTION_0(v75);
  v73 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v74 = v17;
  OUTLINED_FUNCTION_6_2();
  v18 = sub_1DD63D168();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v76 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v78 = &v66 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v66 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD500, &qword_1DD650790);
  v31 = OUTLINED_FUNCTION_0(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v37 = &v66 - v36;
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4A205C();
  sub_1DD640EF8();
  v77 = *(v21 + 16);
  v77(v29, v80 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_language, v18);
  v81 = 0;
  OUTLINED_FUNCTION_4_38();
  sub_1DD4A29E0(v39, v40);
  v41 = v37;
  v42 = v79;
  sub_1DD640C68();
  if (v42)
  {
    (*(v21 + 8))(v29, v18);
    return (*(v33 + 8))(v37, v30);
  }

  else
  {
    v79 = v33;
    v44 = v29;
    v45 = *(v21 + 8);
    v45(v44, v18);
    v77(v78, v80 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionFormat, v18);
    v81 = 1;
    v46 = v30;
    sub_1DD640C68();
    v45(v78, v18);
    v47 = v76;
    v77(v76, v80 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionAwareLanguage, v18);
    v81 = 2;
    sub_1DD640C68();
    v45(v47, v18);
    v48 = v73;
    v49 = v74;
    v50 = v75;
    (*(v73 + 16))(v74, v80 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_timeZone, v75);
    v81 = 3;
    OUTLINED_FUNCTION_6_35();
    sub_1DD4A29E0(v51, v52);
    sub_1DD640C68();
    v53 = v79;
    (*(v48 + 8))(v49, v50);
    v81 = *(v80 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_hemisphere);
    v82 = 4;
    sub_1DD4A20B0();
    sub_1DD640C68();
    v54 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_calendar;
    swift_beginAccess();
    v55 = v70;
    v56 = v80 + v54;
    v57 = v71;
    v58 = v72;
    (*(v70 + 16))(v71, v56, v72);
    v82 = 5;
    OUTLINED_FUNCTION_7_32();
    sub_1DD4A29E0(v59, v60);
    sub_1DD640C68();
    (*(v55 + 8))(v57, v58);
    v62 = v67;
    v61 = v68;
    v63 = v69;
    (*(v68 + 16))(v67, v80 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_date, v69);
    v82 = 6;
    OUTLINED_FUNCTION_5_45();
    sub_1DD4A29E0(v64, v65);
    sub_1DD640C68();
    (*(v61 + 8))(v62, v63);
    return (*(v53 + 8))(v41, v46);
  }
}

unint64_t sub_1DD4A205C()
{
  result = qword_1ECCDD508;
  if (!qword_1ECCDD508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD508);
  }

  return result;
}

unint64_t sub_1DD4A20B0()
{
  result = qword_1ECCDD518;
  if (!qword_1ECCDD518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD518);
  }

  return result;
}

uint64_t DateTimeResolutionContext.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  DateTimeResolutionContext.init(from:)(a1);
  return v5;
}

uint64_t DateTimeResolutionContext.init(from:)(uint64_t *a1)
{
  v76 = sub_1DD63D078();
  v2 = OUTLINED_FUNCTION_0(v76);
  v74 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v75 = v6;
  OUTLINED_FUNCTION_6_2();
  v7 = sub_1DD63D2D8();
  v8 = OUTLINED_FUNCTION_0(v7);
  v78 = v9;
  v79 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v77 = v12;
  OUTLINED_FUNCTION_6_2();
  v13 = sub_1DD63D328();
  v14 = OUTLINED_FUNCTION_0(v13);
  v80 = v15;
  v81 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v19 = v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DD63D168();
  v21 = OUTLINED_FUNCTION_0(v20);
  v82 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v26 = v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v70 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v83 = v70 - v31;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD528, &qword_1DD650798);
  v32 = OUTLINED_FUNCTION_0(v84);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v38 = v70 - v37;
  v39 = a1[3];
  v40 = a1[4];
  v88 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v39);
  sub_1DD4A205C();
  v85 = v38;
  v41 = v86;
  sub_1DD640ED8();
  if (v41)
  {
    v69 = v87;
    type metadata accessor for DateTimeResolutionContext();
    v45 = *(*v69 + 48);
    v46 = *(*v69 + 52);
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(v88);
  }

  else
  {
    v86 = v29;
    v71 = v19;
    v72 = v26;
    v73 = v34;
    v96 = 0;
    OUTLINED_FUNCTION_4_38();
    sub_1DD4A29E0(v42, v43);
    v44 = v83;
    OUTLINED_FUNCTION_8_33();
    sub_1DD640B78();
    v48 = *(v82 + 32);
    v49 = v87;
    v70[1] = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_language;
    v50 = v44;
    v51 = v48;
    v48(v87 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_language, v50, v20);
    v95 = 1;
    v52 = v86;
    OUTLINED_FUNCTION_8_33();
    sub_1DD640B78();
    v51(v49 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionFormat, v52, v20);
    v94 = 2;
    v53 = v72;
    OUTLINED_FUNCTION_8_33();
    v86 = 0;
    sub_1DD640B78();
    v51(v49 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_regionAwareLanguage, v53, v20);
    v93 = 3;
    OUTLINED_FUNCTION_6_35();
    sub_1DD4A29E0(v54, v55);
    v56 = v71;
    v57 = v81;
    sub_1DD640B78();
    (*(v80 + 32))(v49 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_timeZone, v56, v57);
    v91 = 4;
    sub_1DD4A298C();
    sub_1DD640B78();
    *(v49 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_hemisphere) = v92;
    v90 = 5;
    OUTLINED_FUNCTION_7_32();
    sub_1DD4A29E0(v58, v59);
    v60 = v77;
    v61 = v49;
    v62 = v79;
    OUTLINED_FUNCTION_11_29();
    (*(v78 + 32))(v61 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_calendar, v60, v62);
    v89 = 6;
    OUTLINED_FUNCTION_5_45();
    sub_1DD4A29E0(v63, v64);
    v66 = v75;
    v65 = v76;
    OUTLINED_FUNCTION_11_29();
    v67 = OUTLINED_FUNCTION_2_44();
    v68(v67);
    (*(v74 + 32))(v61 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_date, v66, v65);
    __swift_destroy_boxed_opaque_existential_1(v88);
    return v61;
  }

  return v69;
}

uint64_t type metadata accessor for DateTimeResolutionContext()
{
  result = qword_1ECCDD550;
  if (!qword_1ECCDD550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DD4A298C()
{
  result = qword_1ECCDD538;
  if (!qword_1ECCDD538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD538);
  }

  return result;
}

uint64_t sub_1DD4A29E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DD4A2A2C()
{
  result = qword_1ECCDD548;
  if (!qword_1ECCDD548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD548);
  }

  return result;
}

uint64_t sub_1DD4A2A80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = DateTimeResolutionContext.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DD4A2AD8()
{
  result = sub_1DD63D168();
  if (v1 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_1DD63D328();
    if (v2 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = sub_1DD63D2D8();
      if (v3 <= 0x3F)
      {
        v7 = *(result - 8) + 64;
        result = sub_1DD63D078();
        if (v4 <= 0x3F)
        {
          v8 = *(result - 8) + 64;
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DateTimeResolutionContext.Hemisphere(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for DateTimeResolutionContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4A2E74()
{
  result = qword_1ECCDD560;
  if (!qword_1ECCDD560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD560);
  }

  return result;
}

unint64_t sub_1DD4A2ECC()
{
  result = qword_1ECCDD568;
  if (!qword_1ECCDD568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD568);
  }

  return result;
}

unint64_t sub_1DD4A2F24()
{
  result = qword_1ECCDD570;
  if (!qword_1ECCDD570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD570);
  }

  return result;
}

unint64_t sub_1DD4A2F78()
{
  result = qword_1ECCDD578;
  if (!qword_1ECCDD578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD578);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_29()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);

  return sub_1DD640B78();
}

_BYTE *storeEnumTagSinglePayload for DateTimeResolutionInfo(_BYTE *result, int a2, int a3)
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

SiriInference::DateTimeResolutionSpec::ExpandToType_optional __swiftcall DateTimeResolutionSpec.ExpandToType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1DD4A30BC@<X0>(uint64_t *a1@<X8>)
{
  result = DateTimeResolutionSpec.ExpandToType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DD4A31BC@<X0>(uint64_t *a1@<X8>)
{
  result = DateTimeResolutionSpec.DateTimeConvergenceStrategy.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *DateTimeResolutionSpec.init(expandToType:dateTimeConvergenceStrategy:overridesForDefinedDateTimeRanges:witchingHourRoundOffEnabled:convergeToOperatingHours:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *a2;
  *a6 = *result;
  *(a6 + 1) = v6;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4;
  *(a6 + 17) = a5;
  *(a6 + 18) = 1;
  return result;
}

_BYTE *DateTimeResolutionSpec.init(expandToType:dateTimeConvergenceStrategy:overridesForDefinedDateTimeRanges:inferDurationAsInterval:witchingHourRoundOffEnabled:convergeToOperatingHours:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v7 = *a2;
  *a7 = *result;
  *(a7 + 1) = v7;
  *(a7 + 8) = a3;
  *(a7 + 16) = a5;
  *(a7 + 17) = a6;
  *(a7 + 18) = a4;
  return result;
}

uint64_t sub_1DD4A3310(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F54646E61707865 && a2 == 0xEC00000065707954;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001BLL && 0x80000001DD66D6B0 == a2;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000021 && 0x80000001DD66D6D0 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001BLL && 0x80000001DD66D700 == a2;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000018 && 0x80000001DD66D720 == a2;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000017 && 0x80000001DD66D740 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1DD640CD8();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD4A3500(char a1)
{
  result = 0x6F54646E61707865;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001BLL;
      break;
    case 2:
      result = 0xD000000000000021;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD4A35DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4A3310(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4A3604(uint64_t a1)
{
  v2 = sub_1DD4A38D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4A3640(uint64_t a1)
{
  v2 = sub_1DD4A38D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DateTimeResolutionSpec.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD580, &qword_1DD650A80);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v22 - v10;
  v12 = *v1;
  v25 = v1[1];
  v23 = *(v1 + 1);
  v13 = v1[16];
  v22[2] = v1[17];
  v22[3] = v13;
  v14 = v1[18];
  v16 = a1[3];
  v15 = a1[4];
  v17 = a1;
  v19 = v18;
  __swift_project_boxed_opaque_existential_1(v17, v16);
  sub_1DD4A38D4();
  sub_1DD640EF8();
  LOBYTE(v24) = v12;
  v26 = 0;
  sub_1DD4A3928();
  OUTLINED_FUNCTION_0_69();
  sub_1DD640C68();
  if (!v2)
  {
    v20 = v23;
    LOBYTE(v24) = v25;
    v26 = 1;
    sub_1DD4A397C();
    OUTLINED_FUNCTION_0_69();
    sub_1DD640C68();
    v24 = v20;
    v26 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD5A0, &qword_1DD650A88);
    sub_1DD4A39D0();
    sub_1DD640C68();
    LOBYTE(v24) = 3;
    OUTLINED_FUNCTION_0_69();
    sub_1DD640C28();
    LOBYTE(v24) = 4;
    OUTLINED_FUNCTION_0_69();
    sub_1DD640C28();
    LOBYTE(v24) = 5;
    OUTLINED_FUNCTION_0_69();
    sub_1DD640C28();
  }

  return (*(v7 + 8))(v11, v19);
}

unint64_t sub_1DD4A38D4()
{
  result = qword_1ECCDD588;
  if (!qword_1ECCDD588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD588);
  }

  return result;
}

unint64_t sub_1DD4A3928()
{
  result = qword_1ECCDD590;
  if (!qword_1ECCDD590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD590);
  }

  return result;
}

unint64_t sub_1DD4A397C()
{
  result = qword_1ECCDD598;
  if (!qword_1ECCDD598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD598);
  }

  return result;
}

unint64_t sub_1DD4A39D0()
{
  result = qword_1ECCDD5A8;
  if (!qword_1ECCDD5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDD5A0, &qword_1DD650A88);
    sub_1DD49FA00();
    sub_1DD4A3E78(&qword_1ECCDD480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD5A8);
  }

  return result;
}

uint64_t DateTimeResolutionSpec.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD5B0, &qword_1DD650A90);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4A38D4();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1DD4A3D28();
  OUTLINED_FUNCTION_2_45();
  sub_1DD4A3D7C();
  OUTLINED_FUNCTION_2_45();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD5A0, &qword_1DD650A88);
  sub_1DD4A3DD0();
  sub_1DD640B78();
  v18 = OUTLINED_FUNCTION_1_53(3);
  v17 = OUTLINED_FUNCTION_1_53(4);
  v13 = OUTLINED_FUNCTION_1_53(5);
  v14 = *(v8 + 8);
  v15 = OUTLINED_FUNCTION_6_36();
  v16(v15);
  *a2 = v19;
  *(a2 + 1) = v19;
  *(a2 + 8) = v19;
  *(a2 + 16) = v18 & 1;
  *(a2 + 17) = v17 & 1;
  *(a2 + 18) = v13 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD4A3D28()
{
  result = qword_1ECCDD5B8;
  if (!qword_1ECCDD5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD5B8);
  }

  return result;
}

unint64_t sub_1DD4A3D7C()
{
  result = qword_1ECCDD5C0;
  if (!qword_1ECCDD5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD5C0);
  }

  return result;
}

unint64_t sub_1DD4A3DD0()
{
  result = qword_1ECCDD5C8;
  if (!qword_1ECCDD5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDD5A0, &qword_1DD650A88);
    sub_1DD49FACC();
    sub_1DD4A3E78(&qword_1ECCDD4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD5C8);
  }

  return result;
}

uint64_t sub_1DD4A3E78(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DateTime();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD4A3EC0()
{
  result = qword_1ECCDD5D0;
  if (!qword_1ECCDD5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD5D0);
  }

  return result;
}

unint64_t sub_1DD4A3F18()
{
  result = qword_1ECCDD5D8;
  if (!qword_1ECCDD5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD5D8);
  }

  return result;
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_1DD4A3FB0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 19))
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

uint64_t sub_1DD4A3FF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 19) = 1;
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

    *(result + 19) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DateTimeResolutionSpec.ExpandToType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for DateTimeResolutionSpec.DateTimeConvergenceStrategy(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for DateTimeResolutionSpec.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4A42D0()
{
  result = qword_1ECCDD5E0;
  if (!qword_1ECCDD5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD5E0);
  }

  return result;
}

unint64_t sub_1DD4A4328()
{
  result = qword_1ECCDD5E8;
  if (!qword_1ECCDD5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD5E8);
  }

  return result;
}

unint64_t sub_1DD4A4380()
{
  result = qword_1ECCDD5F0;
  if (!qword_1ECCDD5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD5F0);
  }

  return result;
}

unint64_t sub_1DD4A43D4()
{
  result = qword_1ECCDD5F8;
  if (!qword_1ECCDD5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD5F8);
  }

  return result;
}

unint64_t sub_1DD4A4428()
{
  result = qword_1ECCDD600;
  if (!qword_1ECCDD600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD600);
  }

  return result;
}

uint64_t static DateTimeResolver.name.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *&xmmword_1ECCDD608 = a1;
  *(&xmmword_1ECCDD608 + 1) = a2;
  byte_1ECCDD618 = a3;
  return result;
}

double sub_1DD4A4578@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = byte_1ECCDD618;
  result = *&xmmword_1ECCDD608;
  *a1 = xmmword_1ECCDD608;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_1DD4A45CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  *&xmmword_1ECCDD608 = v1;
  *(&xmmword_1ECCDD608 + 1) = v2;
  byte_1ECCDD618 = v3;
  return result;
}

uint64_t DateTimeResolver.findMatches(value:context:spec:)(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *(a3 + 1);
  v7 = a3[16];
  v8 = a3[17];
  v9 = a3[18];
  v30 = &type metadata for DefinedTimeStore;
  v31 = &off_1F58B7818;
  v10 = type metadata accessor for HolidaysDBHolidayResolver();
  swift_allocObject();

  v33 = v10;
  v34 = &off_1F58B90A8;
  v32 = sub_1DD4CFF04(1, 0);
  v29 = a2;
  v24[0] = v4;
  v24[1] = v5;
  v25 = v6;
  v26 = v7;
  v27 = v8;
  v28 = v9;

  v11 = sub_1DD4A8B3C(a1);
  if (!v23)
  {
    if (qword_1ECCDB0C0 != -1)
    {
      OUTLINED_FUNCTION_5_0();
    }

    v12 = sub_1DD63F9F8();
    __swift_project_value_buffer(v12, qword_1ECD0DDC0);

    v13 = sub_1DD63F9D8();
    v14 = sub_1DD640368();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v35 = v16;
      *v15 = 136315138;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCF0, &qword_1DD649E60);
      v18 = MEMORY[0x1E12B2430](v11, v17);
      v20 = sub_1DD39565C(v18, v19, &v35);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1DD38D000, v13, v14, "DateTime matches: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }
  }

  sub_1DD4A55D8(v24);
  return v11;
}

uint64_t DateTimeResolver.makeRecommendation(value:context:spec:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, void *a4@<X8>)
{
  v89 = a2;
  v88 = a1;
  v72 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCB8, &unk_1DD64AEF0);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v70 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  v11 = OUTLINED_FUNCTION_3(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v93 = &v70 - v14;
  v73 = sub_1DD63F728();
  v15 = OUTLINED_FUNCTION_0(v73);
  v71 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  v70 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCD68, &qword_1DD64B880);
  v22 = OUTLINED_FUNCTION_3(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v84 = &v70 - v25;
  v26 = sub_1DD63D0F8();
  v27 = OUTLINED_FUNCTION_0(v26);
  v86 = v28;
  v87 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2();
  v77 = v32 - v31;
  v33 = sub_1DD640478();
  v34 = OUTLINED_FUNCTION_0(v33);
  v75 = v35;
  v76 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2();
  v40 = v39 - v38;
  v41 = sub_1DD640438();
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_2();
  v43 = sub_1DD63FBD8();
  v44 = OUTLINED_FUNCTION_3(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_2();
  v47 = type metadata accessor for SELFLoggingService();
  v48 = v47 - 8;
  v49 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_2();
  v52 = v51 - v50;
  LODWORD(v51) = *a3;
  v53 = a3[1];
  v83 = *(a3 + 1);
  v81 = a3[16];
  v82 = v51;
  LODWORD(v50) = a3[17];
  v78 = v53;
  v79 = v50;
  v80 = a3[18];
  sub_1DD63F178();
  v74 = sub_1DD406E2C();
  sub_1DD63FB98();
  v91 = MEMORY[0x1E69E7CC0];
  sub_1DD4A5794(&qword_1EE166488, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD3FC2BC();
  sub_1DD640718();
  (*(v75 + 104))(v40, *MEMORY[0x1E69E8090], v76);
  v54 = v77;
  *(v52 + *(v48 + 28)) = sub_1DD6404A8();
  sub_1DD63D0E8();
  sub_1DD63F488();
  if (sub_1DD63F468())
  {
    sub_1DD63F448();

    sub_1DD63F738();
  }

  v55 = sub_1DD63F468();
  v56 = v84;
  if (v55)
  {
    sub_1DD63F448();

    sub_1DD63F758();

    v57 = v73;
    if (__swift_getEnumTagSinglePayload(v56, 1, v73))
    {
      sub_1DD3ADFD0(v56, &qword_1ECCDCD68, &qword_1DD64B880);
    }

    else
    {
      v59 = v70;
      v58 = v71;
      (*(v71 + 16))(v70, v56, v57);
      sub_1DD3ADFD0(v56, &qword_1ECCDCD68, &qword_1DD64B880);
      sub_1DD63F718();
      (*(v58 + 8))(v59, v57);
    }
  }

  v60 = v93;
  sub_1DD5AC168();

  LOBYTE(v91) = 1;
  v61 = type metadata accessor for PrivatizedContactResolverConfig(0);
  v62 = v85;
  __swift_storeEnumTagSinglePayload(v85, 1, 1, v61);
  sub_1DD5ACB80();
  sub_1DD3ADFD0(v62, &qword_1ECCDCCB8, &unk_1DD64AEF0);
  if (v78)
  {
    v63 = 256;
  }

  else
  {
    v63 = 0;
  }

  if (v79)
  {
    v64 = 256;
  }

  else
  {
    v64 = 0;
  }

  if (v80)
  {
    v65 = 0x10000;
  }

  else
  {
    v65 = 0;
  }

  v66 = v90;
  sub_1DD4A4F50(v88, v89, v63 | v82, v83, v64 | v81 | v65, &v91);
  if (v66)
  {
    sub_1DD5AD0AC();
    OUTLINED_FUNCTION_6_37();

    swift_willThrow();
    sub_1DD3ADFD0(v60, &qword_1ECCDBAC8, &qword_1DD643E60);
    (*(v86 + 8))(v54, v87);
    return sub_1DD4A562C(v52);
  }

  else
  {
    sub_1DD5AD088();
    OUTLINED_FUNCTION_6_37();

    sub_1DD3ADFD0(v60, &qword_1ECCDBAC8, &qword_1DD643E60);
    (*(v86 + 8))(v54, v87);
    result = sub_1DD4A562C(v52);
    v68 = v92;
    v69 = v72;
    *v72 = v91;
    *(v69 + 8) = v68;
  }

  return result;
}

void sub_1DD4A4F50(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LOWORD(v26) = a3;
  v27 = a4;
  v28 = a5;
  v29 = BYTE2(a5);
  v12 = DateTimeResolver.findMatches(value:context:spec:)(a1, a2, &v26);
  if (!v6)
  {
    LOWORD(v26) = a3 & 0x1FF;
    v27 = a4;
    v28 = a5 & 0x101;
    v29 = BYTE2(a5) & 1;
    sub_1DD4A5190(v12, a2, &v26, &v24);

    v13 = v24;
    v14 = v25;
    if (qword_1ECCDB0C0 != -1)
    {
      swift_once();
    }

    v15 = sub_1DD63F9F8();
    __swift_project_value_buffer(v15, qword_1ECD0DDC0);
    sub_1DD4A59E8(v13, v14);
    v16 = sub_1DD63F9D8();
    v17 = sub_1DD640368();
    sub_1DD4A5A0C(v13, v14);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v26 = v30;
      *v18 = 136315138;
      sub_1DD4A59E8(v13, v14);
      v19 = sub_1DD4A81F8(v13);
      v21 = v20;
      sub_1DD4A5A0C(v13, v14);
      v22 = sub_1DD39565C(v19, v21, &v26);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1DD38D000, v16, v17, "DateTime recommendation: %s", v18, 0xCu);
      v23 = v30;
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1E12B3DA0](v23, -1, -1);
      MEMORY[0x1E12B3DA0](v18, -1, -1);
    }

    *a6 = v13;
    *(a6 + 8) = v14;
  }
}

void sub_1DD4A5190(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v7 = *a3;
  v8 = a3[1];
  v9 = *(a3 + 1);
  v10 = a3[16];
  v11 = a3[17];
  v12 = a3[18];
  type metadata accessor for DateTimeSuggestionResolver();
  LOBYTE(v35[0]) = v7;
  BYTE1(v35[0]) = v8;
  v35[1] = v9;
  v36 = v10;
  v37 = v11;
  v38 = v12;
  sub_1DD4A9BA0(a2, v35);
  v13 = sub_1DD4A9CDC(a1);
  if (v4)
  {

    return;
  }

  v14 = v13;
  v15 = v39;
  v16 = *(v13 + 16);
  if (v16 != 1)
  {
    if (!v16)
    {

      if (qword_1ECCDB0C0 != -1)
      {
        OUTLINED_FUNCTION_5_0();
      }

      v17 = sub_1DD63F9F8();
      __swift_project_value_buffer(v17, qword_1ECD0DDC0);
      v18 = sub_1DD63F9D8();
      v19 = sub_1DD640368();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1DD38D000, v18, v19, "recommendation is of type .none, resultset size from resolver: 0", v20, 2u);
        OUTLINED_FUNCTION_0_1();
      }

      *v15 = 0;
      v21 = 3;
      goto LABEL_27;
    }

    if (qword_1ECCDB0C0 == -1)
    {
LABEL_21:
      v28 = sub_1DD63F9F8();
      __swift_project_value_buffer(v28, qword_1ECD0DDC0);

      v29 = sub_1DD63F9D8();
      v30 = sub_1DD640368();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 134349056;
        *(v31 + 4) = *(v14 + 16);

        _os_log_impl(&dword_1DD38D000, v29, v30, "recommendation is of type .needsDisambiguation, resultset size from resolver: %{public}ld", v31, 0xCu);
        OUTLINED_FUNCTION_0_1();
      }

      else
      {
      }

      v35[0] = MEMORY[0x1E69E7CC0];
      sub_1DD640988();
      v32 = 32;
      do
      {
        v33 = *(v14 + v32);

        sub_1DD640958();
        v34 = *(v35[0] + 16);
        sub_1DD640998();
        sub_1DD6409A8();
        sub_1DD640968();
        v32 += 80;
        --v16;
      }

      while (v16);

      *v15 = v35[0];
      v21 = 2;
LABEL_27:
      *(v15 + 8) = v21;
      return;
    }

LABEL_29:
    OUTLINED_FUNCTION_5_0();
    goto LABEL_21;
  }

  if (qword_1ECCDB0C0 != -1)
  {
    OUTLINED_FUNCTION_5_0();
  }

  v22 = sub_1DD63F9F8();
  __swift_project_value_buffer(v22, qword_1ECD0DDC0);
  v23 = sub_1DD63F9D8();
  v16 = sub_1DD640368();
  if (os_log_type_enabled(v23, v16))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1DD38D000, v23, v16, "recommendation is of type .confident, resultset size from resolver: 1", v24, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  if (!*(v14 + 16))
  {
    __break(1u);
    goto LABEL_29;
  }

  v25 = *(v14 + 32);
  if (*(v25 + 16))
  {
    v26 = *(v25 + 16);

    sub_1DD48236C();

    v25 = *(v14 + 32);
  }

  if (*(v25 + 24))
  {
    v27 = *(v25 + 24);

    sub_1DD5FC0A4();

    v25 = *(v14 + 32);
  }

  *v15 = v25;
  *(v15 + 8) = 0;
}

uint64_t sub_1DD4A562C(uint64_t a1)
{
  v2 = type metadata accessor for SELFLoggingService();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DD4A5688(uint64_t a1)
{
  result = sub_1DD4A56B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DD4A56B0()
{
  result = qword_1ECCDD620;
  if (!qword_1ECCDD620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD620);
  }

  return result;
}

uint64_t sub_1DD4A5794(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DD4A57E0()
{
  result = qword_1ECCDD638;
  if (!qword_1ECCDD638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD638);
  }

  return result;
}

unint64_t sub_1DD4A5838()
{
  result = qword_1ECCDD640;
  if (!qword_1ECCDD640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD640);
  }

  return result;
}

unint64_t sub_1DD4A5890()
{
  result = qword_1ECCDD648;
  if (!qword_1ECCDD648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD648);
  }

  return result;
}

unint64_t sub_1DD4A58E8()
{
  result = qword_1ECCDD650;
  if (!qword_1ECCDD650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD650);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DateTimeResolver(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DD4A59E8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1DD4A5A0C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 == 2)
  {
  }

  if (a2 <= 1u)
  {
  }

  return result;
}

SiriInference::BoundsOfRangeSignal __swiftcall BoundsOfRangeSignal.init()()
{
  *v0 = 0;
  *(v0 + 8) = 1;
  *(v0 + 16) = 0;
  return result;
}

SiriInference::BoundsOfRangeSignal __swiftcall BoundsOfRangeSignal.init(startBoundIsSet:endBoundIsSet:)(Swift::Bool startBoundIsSet, Swift::Bool endBoundIsSet)
{
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v2 + 16) = startBoundIsSet;
  *(v2 + 17) = endBoundIsSet;
  LOBYTE(result.version) = endBoundIsSet;
  result.isError = startBoundIsSet;
  return result;
}

uint64_t sub_1DD4A5AE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F7272457369 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x756F427472617473 && a2 == 0xEF7465537349646ELL;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x646E756F42646E65 && a2 == 0xED00007465537349)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD640CD8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1DD4A5C58(char a1)
{
  result = 0x726F7272457369;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973726576;
      break;
    case 2:
      result = 0x756F427472617473;
      break;
    case 3:
      result = 0x646E756F42646E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD4A5CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4A5AE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4A5D20(uint64_t a1)
{
  v2 = sub_1DD4A5F28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4A5D5C(uint64_t a1)
{
  v2 = sub_1DD4A5F28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void BoundsOfRangeSignal.encode(to:)()
{
  OUTLINED_FUNCTION_93();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD658, &qword_1DD650F10);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_21_5();
  v11 = *v0;
  v14 = *(v0 + 1);
  v15 = v0[16];
  v13 = v0[17];
  v12 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1DD4A5F28();
  sub_1DD640EF8();
  OUTLINED_FUNCTION_10();
  sub_1DD640C28();
  if (!v1)
  {
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_10();
    sub_1DD640C58();
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_86();
}

unint64_t sub_1DD4A5F28()
{
  result = qword_1ECCDD660;
  if (!qword_1ECCDD660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD660);
  }

  return result;
}

void BoundsOfRangeSignal.init(from:)()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD668, &qword_1DD650F18);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_66_1();
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DD4A5F28();
  OUTLINED_FUNCTION_17_1();
  if (!v0)
  {
    OUTLINED_FUNCTION_5_46();
    v10 = sub_1DD640B38();
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_5_46();
    sub_1DD640B68();
    OUTLINED_FUNCTION_20_20();
    OUTLINED_FUNCTION_5_46();
    v14 = sub_1DD640B38();
    OUTLINED_FUNCTION_5_46();
    v11 = sub_1DD640B38();
    v12 = OUTLINED_FUNCTION_19_21();
    v13(v12, v5);
    *v4 = v10 & 1;
    *(v4 + 8) = v9;
    *(v4 + 16) = v14 & 1;
    *(v4 + 17) = v11 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD4A617C(uint64_t a1)
{
  v2 = sub_1DD4A6228();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4A61B8(uint64_t a1)
{
  v2 = sub_1DD4A6228();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DD4A6228()
{
  result = qword_1ECCDD678;
  if (!qword_1ECCDD678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD678);
  }

  return result;
}

SiriInference::MeridiemSignal __swiftcall MeridiemSignal.init()()
{
  *v0 = 0;
  *(v0 + 8) = 1;
  *(v0 + 16) = 0;
  return result;
}

SiriInference::MeridiemSignal __swiftcall MeridiemSignal.init(setByUser:)(Swift::Bool setByUser)
{
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v1 + 16) = setByUser;
  result.isError = setByUser;
  return result;
}

uint64_t sub_1DD4A633C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1))
  {
    v3 = a2[16] ^ a1[16] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1DD4A6378(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F7272457369 && a2 == 0xE700000000000000;
  if (v4 || (OUTLINED_FUNCTION_27() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_27() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6573557942746573 && a2 == 0xE900000000000072)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_27();

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

uint64_t sub_1DD4A6474(uint64_t a1)
{
  v2 = sub_1DD4A668C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4A64B0(uint64_t a1)
{
  v2 = sub_1DD4A668C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DD4A6520()
{
  OUTLINED_FUNCTION_93();
  v17 = v3;
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_0(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_21_5();
  v14 = *v0;
  v16 = *(v0 + 1);
  v18 = v0[16];
  v15 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v17();
  sub_1DD640EF8();
  sub_1DD640C28();
  if (!v1)
  {
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_10();
    sub_1DD640C58();
    OUTLINED_FUNCTION_10();
    sub_1DD640C28();
  }

  (*(v10 + 8))(v2, v8);
  OUTLINED_FUNCTION_86();
}

unint64_t sub_1DD4A668C()
{
  result = qword_1ECCDD690;
  if (!qword_1ECCDD690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD690);
  }

  return result;
}

void sub_1DD4A6714()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v5 = v4;
  v17 = v6;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_0(v18);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_66_1();
  v14 = v5[3];
  __swift_project_boxed_opaque_existential_1(v5, v14);
  v3();
  sub_1DD640ED8();
  if (!v0)
  {
    OUTLINED_FUNCTION_5_46();
    v15 = sub_1DD640B38();
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_5_46();
    sub_1DD640B68();
    OUTLINED_FUNCTION_20_20();
    OUTLINED_FUNCTION_5_46();
    v16 = sub_1DD640B38();
    (*(v10 + 8))(v1, v18);
    *v17 = v15 & 1;
    *(v17 + 8) = v14;
    *(v17 + 16) = v16 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v5);
  OUTLINED_FUNCTION_86();
}

void DateTimeSignalSet.temporalIntent.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = v1[16];
  OUTLINED_FUNCTION_9_32(a1);
}

void DateTimeSignalSet.boundsOfRange.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 41);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

void DateTimeSignalSet.meridiem.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  OUTLINED_FUNCTION_9_32(a1);
}

void __swiftcall DateTimeSignalSet.init()(SiriInference::DateTimeSignalSet *__return_ptr retstr)
{
  retstr->temporalIntent.isError = 0;
  retstr->temporalIntent.version = 1;
  retstr->temporalIntent.setByUser = 0;
  retstr->boundsOfRange.gap1[5] = 0;
  *(&retstr->boundsOfRange.version + 6) = 1;
  *&retstr->meridiem.gap1[3] = 0;
  BYTE4(retstr->meridiem.version) = 0;
  OUTLINED_FUNCTION_15_23(retstr);
}

void __swiftcall DateTimeSignalSet.init(withTemporalIntent:boundsOfRange:)(SiriInference::DateTimeSignalSet *__return_ptr retstr, SiriInference::TemporalIntentSignal withTemporalIntent, SiriInference::BoundsOfRangeSignal boundsOfRange)
{
  v3 = *(*&withTemporalIntent.isError + 8);
  v4 = *(*&withTemporalIntent.isError + 16);
  v5 = *withTemporalIntent.version;
  v6 = *(withTemporalIntent.version + 8);
  v7 = *(withTemporalIntent.version + 16);
  v8 = *(withTemporalIntent.version + 17);
  retstr->temporalIntent.isError = **&withTemporalIntent.isError;
  retstr->temporalIntent.version = v3;
  retstr->temporalIntent.setByUser = v4;
  retstr->boundsOfRange.gap1[5] = v5;
  *(&retstr->boundsOfRange.version + 6) = v6;
  retstr->meridiem.gap1[3] = v7;
  retstr->meridiem.gap1[4] = v8;
  BYTE4(retstr->meridiem.version) = 0;
  OUTLINED_FUNCTION_15_23(retstr);
}

uint64_t sub_1DD4A69E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61726F706D6574 && a2 == 0xEE00746E65746E49;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x664F73646E756F62 && a2 == 0xED000065676E6152;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6D6569646972656DLL && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD640CD8();

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

uint64_t sub_1DD4A6B00(char a1)
{
  if (!a1)
  {
    return 0x6C61726F706D6574;
  }

  if (a1 == 1)
  {
    return 0x664F73646E756F62;
  }

  return 0x6D6569646972656DLL;
}

uint64_t sub_1DD4A6B78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4A69E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4A6BA0(uint64_t a1)
{
  v2 = sub_1DD4A6E10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4A6BDC(uint64_t a1)
{
  v2 = sub_1DD4A6E10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void DateTimeSignalSet.encode(to:)()
{
  OUTLINED_FUNCTION_93();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD6A0, &qword_1DD650F40);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_21_5();
  v11 = *v0;
  v12 = *(v0 + 1);
  v13 = v0[16];
  v25 = v0[24];
  v24 = *(v0 + 4);
  v22 = v0[41];
  v23 = v0[40];
  v21 = v0[48];
  v20 = *(v0 + 7);
  v19 = v0[64];
  v14 = v4[3];
  v15 = v4[4];
  v16 = v4;
  v18 = v17;
  __swift_project_boxed_opaque_existential_1(v16, v14);
  sub_1DD4A6E10();
  sub_1DD640EF8();
  sub_1DD4A6E64();
  OUTLINED_FUNCTION_7_33();
  sub_1DD640C68();
  if (!v1)
  {
    sub_1DD4A6EB8();
    OUTLINED_FUNCTION_7_33();
    sub_1DD640C68();
    sub_1DD4A6F0C();
    OUTLINED_FUNCTION_7_33();
    sub_1DD640C68();
  }

  (*(v7 + 8))(v2, v18);
  OUTLINED_FUNCTION_86();
}

unint64_t sub_1DD4A6E10()
{
  result = qword_1ECCDD6A8;
  if (!qword_1ECCDD6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD6A8);
  }

  return result;
}

unint64_t sub_1DD4A6E64()
{
  result = qword_1ECCDD6B0;
  if (!qword_1ECCDD6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD6B0);
  }

  return result;
}

unint64_t sub_1DD4A6EB8()
{
  result = qword_1ECCDD6B8;
  if (!qword_1ECCDD6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD6B8);
  }

  return result;
}

unint64_t sub_1DD4A6F0C()
{
  result = qword_1ECCDD6C0;
  if (!qword_1ECCDD6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD6C0);
  }

  return result;
}

void DateTimeSignalSet.init(from:)()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD6C8, qword_1DD650F48);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_66_1();
  v9 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DD4A6E10();
  OUTLINED_FUNCTION_17_1();
  if (!v0)
  {
    sub_1DD4A714C();
    OUTLINED_FUNCTION_2_47();
    sub_1DD4A71A0();
    OUTLINED_FUNCTION_2_47();
    sub_1DD4A71F4();
    OUTLINED_FUNCTION_2_47();
    v10 = OUTLINED_FUNCTION_19_21();
    v11(v10, v5);
    *v4 = v12;
    *(v4 + 8) = v13;
    *(v4 + 16) = v14;
    *(v4 + 24) = v12;
    *(v4 + 32) = v13;
    *(v4 + 40) = v14;
    *(v4 + 41) = v15;
    *(v4 + 48) = v12;
    *(v4 + 56) = v13;
    *(v4 + 64) = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_86();
}

unint64_t sub_1DD4A714C()
{
  result = qword_1ECCDD6D0;
  if (!qword_1ECCDD6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD6D0);
  }

  return result;
}

unint64_t sub_1DD4A71A0()
{
  result = qword_1ECCDD6D8;
  if (!qword_1ECCDD6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD6D8);
  }

  return result;
}

unint64_t sub_1DD4A71F4()
{
  result = qword_1ECCDD6E0;
  if (!qword_1ECCDD6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD6E0);
  }

  return result;
}

unint64_t sub_1DD4A7260()
{
  result = qword_1ECCDD6E8;
  if (!qword_1ECCDD6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD6E8);
  }

  return result;
}

unint64_t sub_1DD4A730C()
{
  result = qword_1ECCDD6F0;
  if (!qword_1ECCDD6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD6F0);
  }

  return result;
}

unint64_t sub_1DD4A73B8()
{
  result = qword_1ECCDD6F8;
  if (!qword_1ECCDD6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD6F8);
  }

  return result;
}

uint64_t sub_1DD4A744C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[2] = a4();
  a1[3] = a5();
  result = a6();
  a1[4] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BoundsOfRangeSignal(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[18])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for BoundsOfRangeSignal(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1DD4A7578(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[17])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_1DD4A75C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1DD4A7614(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[65])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_1DD4A7660(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_1DD4A76E4(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for BoundsOfRangeSignal.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4A78A0()
{
  result = qword_1ECCDD700;
  if (!qword_1ECCDD700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD700);
  }

  return result;
}

unint64_t sub_1DD4A78F8()
{
  result = qword_1ECCDD708;
  if (!qword_1ECCDD708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD708);
  }

  return result;
}

unint64_t sub_1DD4A7950()
{
  result = qword_1ECCDD710;
  if (!qword_1ECCDD710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD710);
  }

  return result;
}

unint64_t sub_1DD4A79A8()
{
  result = qword_1ECCDD718;
  if (!qword_1ECCDD718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD718);
  }

  return result;
}

unint64_t sub_1DD4A7A00()
{
  result = qword_1ECCDD720;
  if (!qword_1ECCDD720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD720);
  }

  return result;
}

unint64_t sub_1DD4A7A58()
{
  result = qword_1ECCDD728;
  if (!qword_1ECCDD728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD728);
  }

  return result;
}

unint64_t sub_1DD4A7AB0()
{
  result = qword_1ECCDD730;
  if (!qword_1ECCDD730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD730);
  }

  return result;
}

unint64_t sub_1DD4A7B08()
{
  result = qword_1ECCDD738;
  if (!qword_1ECCDD738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD738);
  }

  return result;
}

unint64_t sub_1DD4A7B60()
{
  result = qword_1ECCDD740;
  if (!qword_1ECCDD740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD740);
  }

  return result;
}

unint64_t sub_1DD4A7BB8()
{
  result = qword_1ECCDD748;
  if (!qword_1ECCDD748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD748);
  }

  return result;
}

unint64_t sub_1DD4A7C10()
{
  result = qword_1ECCDD750;
  if (!qword_1ECCDD750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD750);
  }

  return result;
}

unint64_t sub_1DD4A7C68()
{
  result = qword_1ECCDD758;
  if (!qword_1ECCDD758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD758);
  }

  return result;
}

uint64_t DateTimeSlotResolutionTask.init(query:context:spec:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *(a3 + 1);
  v7 = a3[16];
  v8 = a3[17];
  v9 = a3[18];
  *(a4 + 40) = result;
  *(a4 + 48) = a2;
  *(a4 + 56) = v4;
  *(a4 + 57) = v5;
  *(a4 + 64) = v6;
  *(a4 + 72) = v7;
  *(a4 + 73) = v8;
  *(a4 + 74) = v9;
  *(a4 + 24) = &type metadata for DateTimeResolver;
  *(a4 + 32) = &off_1F58B6D58;
  return result;
}

uint64_t DateTimeSlotResolutionTask.run(withAlreadyResolvedSlots:)@<X0>(uint64_t a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1(v1, *(v1 + 24));
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 57);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  v9 = *(v1 + 73);
  v10 = *(v1 + 74);
  LOBYTE(v33) = *(v1 + 56);
  BYTE1(v33) = v6;
  v34 = v7;
  v35 = v8;
  v36 = v9;
  v37 = v10;

  DateTimeResolver.makeRecommendation(value:context:spec:)(v4, v5, &v33, &v38);

  if (!v2)
  {
    if (qword_1ECCDB0C0 != -1)
    {
      swift_once();
    }

    v12 = sub_1DD63F9F8();
    __swift_project_value_buffer(v12, qword_1ECD0DDC0);
    v13 = OUTLINED_FUNCTION_20_2();
    sub_1DD4A59E8(v13, v14);
    v15 = sub_1DD63F9D8();
    v16 = sub_1DD640368();
    v17 = OUTLINED_FUNCTION_20_2();
    sub_1DD4A5A0C(v17, v18);
    if (os_log_type_enabled(v15, v16))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33 = v20;
      *v19 = 136315138;
      v21 = OUTLINED_FUNCTION_20_2();
      v22 = sub_1DD4A81F8(v21);
      v24 = sub_1DD39565C(v22, v23, &v33);
      v39 = v16;
      v25 = a1;
      v26 = v24;

      *(v19 + 4) = v26;
      a1 = v25;
      _os_log_impl(&dword_1DD38D000, v15, v39, "DateTime recommendations: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1E12B3DA0](v20, -1, -1);
      MEMORY[0x1E12B3DA0](v19, -1, -1);
    }

    v27 = OUTLINED_FUNCTION_20_2();
    sub_1DD4725F4(v27, v28, v29);
    v30 = OUTLINED_FUNCTION_20_2();
    result = sub_1DD4A5A0C(v30, v31);
    v32 = v34;
    *a1 = v33;
    *(a1 + 8) = v32;
  }

  return result;
}

uint64_t sub_1DD4A7F9C()
{
  v1 = type metadata accessor for Contact();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v25 - v10);
  sub_1DD4279B8(v0, &v25 - v10);
  v12 = 1701736302;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD3C95D4(v11, v7);
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_1DD6408D8();

      OUTLINED_FUNCTION_0_70();
      v25 = v17;
      v26 = v16;
      sub_1DD415D68(v7, v5);
      v15 = sub_1DD63FE38();
      goto LABEL_4;
    case 2u:
      v18 = *v11;
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_1DD6408D8();

      OUTLINED_FUNCTION_0_70();
      v25 = v20 + 2;
      v26 = v19;
      v21 = MEMORY[0x1E12B2430](v18, v1);
      v23 = v22;

      MEMORY[0x1E12B2260](v21, v23);

      OUTLINED_FUNCTION_65();
      v12 = v25;
      break;
    case 3u:
      return v12;
    default:
      sub_1DD3C95D4(v11, v7);
      OUTLINED_FUNCTION_1_54();
      v25 = v13;
      v26 = v14;
      sub_1DD415D68(v7, v5);
      v15 = sub_1DD63FE38();
LABEL_4:
      MEMORY[0x1E12B2260](v15);

      OUTLINED_FUNCTION_65();
      v12 = v25;
      sub_1DD415B40(v7);
      break;
  }

  return v12;
}

uint64_t sub_1DD4A81F8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_2_48();
  switch(v3)
  {
    case 1:
      sub_1DD6408D8();

      OUTLINED_FUNCTION_0_70();
      v9 = v5;
      goto LABEL_4;
    case 2:
      sub_1DD6408D8();

      OUTLINED_FUNCTION_0_70();
      v9 = v7 + 2;
      v8 = type metadata accessor for DateTime();
      v6 = MEMORY[0x1E12B2430](a1, v8);
      goto LABEL_6;
    case 3:
      return result;
    default:
      OUTLINED_FUNCTION_1_54();
      v9 = v4;
LABEL_4:
      type metadata accessor for DateTime();

      v6 = sub_1DD63FE38();
LABEL_6:
      MEMORY[0x1E12B2260](v6);

      OUTLINED_FUNCTION_65();
      return v9;
  }
}

uint64_t sub_1DD4A8310()
{
  memcpy(__dst, v0, 0x2C9uLL);
  sub_1DD472DB0(__dst);
  result = OUTLINED_FUNCTION_2_48();
  switch(v2)
  {
    case 1:
      nullsub_1(__dst);
      memcpy(v18, v0, 0x2C9uLL);
      v7 = nullsub_1(v18);
      v19[0] = 0;
      v19[1] = 0xE000000000000000;
      sub_1DD6408D8();

      OUTLINED_FUNCTION_0_70();
      v16 = v8;
      v17 = v9;
      memcpy(v15, v7, sizeof(v15));
      OUTLINED_FUNCTION_6_39();
      v6 = nullsub_1(v19);
      goto LABEL_4;
    case 2:
      nullsub_1(__dst);
      OUTLINED_FUNCTION_6_39();
      v11 = *nullsub_1(v19);
      sub_1DD6408D8();

      OUTLINED_FUNCTION_0_70();
      v18[0] = v12 + 2;
      v13 = MEMORY[0x1E12B2430](v11, &type metadata for Location);
      MEMORY[0x1E12B2260](v13);

      OUTLINED_FUNCTION_65();
      result = v18[0];
      break;
    case 3:
      return result;
    default:
      nullsub_1(__dst);
      memcpy(v18, v0, 0x2C9uLL);
      nullsub_1(v18);
      OUTLINED_FUNCTION_1_54();
      v16 = v3;
      v17 = v4;
      memcpy(v15, v5, sizeof(v15));
      OUTLINED_FUNCTION_6_39();
      v6 = nullsub_1(v19);
LABEL_4:
      sub_1DD472DF8(v6, &v14);
      v10 = sub_1DD63FE38();
      MEMORY[0x1E12B2260](v10);

      OUTLINED_FUNCTION_65();
      result = v16;
      break;
  }

  return result;
}

uint64_t sub_1DD4A8508()
{
  memcpy(__dst, v0, 0x81uLL);
  sub_1DD472D58(__dst);
  result = OUTLINED_FUNCTION_2_48();
  switch(v2)
  {
    case 1:
      nullsub_1(__dst);
      memcpy(v58, v0, 0x81uLL);
      v15 = nullsub_1(v58);
      *v59 = 0;
      v60 = 0xE000000000000000;
      sub_1DD6408D8();

      OUTLINED_FUNCTION_0_70();
      v56 = v17;
      v57 = v16;
      v18 = memcpy(v55, v15, sizeof(v55));
      OUTLINED_FUNCTION_5_47(v18, v19, v20, v21, v22, v23, v24, v25, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55[0], v55[1], v55[2], v55[3], v55[4], v55[5], v55[6], v55[7], v55[8], v55[9], v55[10], v55[11], v55[12], v55[13], v55[14], v55[15], v56, v57, *v58, *&v58[8], *&v58[16], *&v58[24], *&v58[32], *&v58[40], *&v58[48], *&v58[56], *&v58[64], *&v58[72], *&v58[80], *&v58[88], *&v58[96], *&v58[104], *&v58[112], *&v58[120], *&v58[128], v59[0]);
      v14 = nullsub_1(v59);
      goto LABEL_4;
    case 2:
      v27 = nullsub_1(__dst);
      OUTLINED_FUNCTION_5_47(v27, v28, v29, v30, v31, v32, v33, v34, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55[0], v55[1], v55[2], v55[3], v55[4], v55[5], v55[6], v55[7], v55[8], v55[9], v55[10], v55[11], v55[12], v55[13], v55[14], v55[15], v56, v57, *v58, *&v58[8], *&v58[16], *&v58[24], *&v58[32], *&v58[40], *&v58[48], *&v58[56], *&v58[64], *&v58[72], *&v58[80], *&v58[88], *&v58[96], *&v58[104], *&v58[112], *&v58[120], *&v58[128], v59[0]);
      v35 = *nullsub_1(v59);
      sub_1DD6408D8();

      OUTLINED_FUNCTION_0_70();
      *v58 = v36 + 2;
      v37 = MEMORY[0x1E12B2430](v35, &type metadata for SportsItem);
      MEMORY[0x1E12B2260](v37);

      OUTLINED_FUNCTION_65();
      result = *v58;
      break;
    case 3:
      return result;
    default:
      nullsub_1(__dst);
      memcpy(v58, v0, 0x81uLL);
      nullsub_1(v58);
      OUTLINED_FUNCTION_1_54();
      v56 = v3;
      v57 = v4;
      v6 = memcpy(v55, v5, sizeof(v55));
      OUTLINED_FUNCTION_5_47(v6, v7, v8, v9, v10, v11, v12, v13, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55[0], v55[1], v55[2], v55[3], v55[4], v55[5], v55[6], v55[7], v55[8], v55[9], v55[10], v55[11], v55[12], v55[13], v55[14], v55[15], v56, v57, *v58, *&v58[8], *&v58[16], *&v58[24], *&v58[32], *&v58[40], *&v58[48], *&v58[56], *&v58[64], *&v58[72], *&v58[80], *&v58[88], *&v58[96], *&v58[104], *&v58[112], *&v58[120], *&v58[128], v59[0]);
      v14 = nullsub_1(v59);
LABEL_4:
      sub_1DD400BFC(v14, &v39);
      v26 = sub_1DD63FE38();
      MEMORY[0x1E12B2260](v26);

      OUTLINED_FUNCTION_65();
      result = v56;
      break;
  }

  return result;
}

uint64_t sub_1DD4A86EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 75))
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

uint64_t sub_1DD4A872C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 74) = 0;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 75) = 1;
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

    *(result + 75) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD4A879C(uint64_t a1, int a2)
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

uint64_t sub_1DD4A87DC(uint64_t result, int a2, int a3)
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

void sub_1DD4A8848(uint64_t a1)
{
  v1 = a1;
  v30 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1DD6407B8();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1DD42BC6C();
    v3 = v35;
    v32 = sub_1DD55AD40(v1);
    v33 = v4;
    v34 = v5 & 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v28 = v1 + 56;
      v27 = v1 + 64;
      v29 = v2;
      while (!__OFADD__(v6++, 1))
      {
        v9 = v32;
        v8 = v33;
        v10 = v34;
        v11 = v1;
        v12 = *(sub_1DD55AE74(v32, v33, v34, v1) + 51);

        v35 = v3;
        v13 = *(v3 + 16);
        if (v13 >= *(v3 + 24) >> 1)
        {
          sub_1DD42BC6C();
          v3 = v35;
        }

        *(v3 + 16) = v13 + 1;
        *(v3 + v13 + 32) = v12;
        if (v30)
        {
          if (!v10)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v14 = v3;
          if (sub_1DD640788())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v19 = v29;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD468, &qword_1DD650488);
          v20 = sub_1DD640298();
          sub_1DD640818();
          v20(v31, 0);
        }

        else
        {
          if (v10)
          {
            goto LABEL_37;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v14 = v3;
          v1 = v11;
          v15 = 1 << *(v11 + 32);
          if (v9 >= v15)
          {
            goto LABEL_32;
          }

          v16 = v9 >> 6;
          v17 = *(v28 + 8 * (v9 >> 6));
          if (((v17 >> v9) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(v11 + 36) != v8)
          {
            goto LABEL_34;
          }

          v18 = v17 & (-2 << (v9 & 0x3F));
          if (v18)
          {
            v15 = __clz(__rbit64(v18)) | v9 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v21 = v16 << 6;
            v22 = v16 + 1;
            v23 = (v27 + 8 * v16);
            while (v22 < (v15 + 63) >> 6)
            {
              v25 = *v23++;
              v24 = v25;
              v21 += 64;
              ++v22;
              if (v25)
              {
                sub_1DD3AA558(v9, v8, 0);
                v15 = __clz(__rbit64(v24)) + v21;
                goto LABEL_27;
              }
            }

            sub_1DD3AA558(v9, v8, 0);
          }

LABEL_27:
          v26 = *(v11 + 36);
          v32 = v15;
          v33 = v26;
          v34 = 0;
          v19 = v29;
        }

        v3 = v14;
        if (v6 == v19)
        {
          sub_1DD3AA558(v32, v33, v34);
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

uint64_t sub_1DD4A8B3C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DD63D2D8();
  v5 = OUTLINED_FUNCTION_0(v4);
  v56 = v6;
  v57 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DD63D168();
  v11 = OUTLINED_FUNCTION_0(v10);
  v59 = v12;
  v60 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECCDB0C0 != -1)
  {
    swift_once();
  }

  v17 = sub_1DD63F9F8();
  v18 = __swift_project_value_buffer(v17, qword_1ECD0DDC0);

  v61 = v18;
  v19 = sub_1DD63F9D8();
  v20 = sub_1DD640368();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v63[0] = v22;
    *v21 = 136315138;
    v23 = sub_1DD48A1FC();
    v25 = sub_1DD39565C(v23, v24, v63);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_1DD38D000, v19, v20, "received input datetime: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1E12B3DA0](v22, -1, -1);
    MEMORY[0x1E12B3DA0](v21, -1, -1);
  }

  sub_1DD3C2388(v2 + 32, v63);
  __swift_mutable_project_boxed_opaque_existential_1(v63, v67);
  v62[3] = &type metadata for DefinedTimeStore;
  v62[4] = &off_1F58B7818;
  type metadata accessor for DateTimeConstraintGenerator();
  v26 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v62, &type metadata for DefinedTimeStore);
  *(v26 + 40) = &type metadata for DefinedTimeStore;
  *(v26 + 48) = &off_1F58B7818;
  __swift_destroy_boxed_opaque_existential_1(v62);
  __swift_destroy_boxed_opaque_existential_1(v63);
  v27 = *(v2 + 1);
  v28 = *(v2 + 8);
  v29 = *(v2 + 16);
  v30 = *(v2 + 17);
  v31 = *(v2 + 18);
  LOBYTE(v63[0]) = *v2;
  BYTE1(v63[0]) = v27;
  v63[1] = v28;
  v64 = v29;
  v65 = v30;
  v66 = v31;
  v32 = *(v2 + 24);
  LOBYTE(v62[0]) = 38;

  v58 = v26;
  v33 = sub_1DD4901FC(a1, v63, v32, 0, v62);

  v35 = v59;
  v34 = v60;
  (*(v59 + 16))(v16, v32 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_language, v60);
  LOBYTE(v63[0]) = *(v32 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_hemisphere);
  sub_1DD4AE2C0(v16, v63, v28);
  v37 = v36;
  (*(v35 + 8))(v16, v34);
  if ((v37 & 1) == 0)
  {
    v38 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_calendar;
    swift_beginAccess();
    v39 = v55;
    v40 = v56;
    v41 = v57;
    (*(v56 + 16))(v55, v32 + v38, v57);
    sub_1DD63D1C8();
    swift_beginAccess();
    (*(v40 + 40))(v32 + v38, v39, v41);
    swift_endAccess();
  }

  v42 = swift_allocObject();
  *(v42 + 16) = v33;

  Logger.asyncBackground(_:)(sub_1DD4A96CC, v42);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD760, &unk_1DD651760);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1DD6504B0;
  *(v43 + 56) = &type metadata for MeridiemConstraintSolver;
  *(v43 + 64) = &off_1F58BB520;
  *(v43 + 96) = &type metadata for HolidayConstraintSolver;
  *(v43 + 104) = &off_1F58B8990;
  v44 = swift_allocObject();
  *(v43 + 72) = v44;
  sub_1DD3C2388(v2 + 72, v44 + 16);
  *(v43 + 136) = &type metadata for CalendarComponentConstraintSolver;
  *(v43 + 144) = &off_1F58B0DA8;
  *(v43 + 176) = &type metadata for RecurrenceConstraintSolver;
  *(v43 + 184) = &off_1F58BE898;
  *(v43 + 216) = &type metadata for DurationConstraintSolver;
  *(v43 + 224) = &off_1F58B7B18;
  *(v43 + 256) = &type metadata for TemporalityConstraintSolver;
  *(v43 + 264) = &off_1F58C3670;
  *(v43 + 296) = &type metadata for RecurrenceConstraintSolver;
  *(v43 + 304) = &off_1F58BE898;
  type metadata accessor for DateTimeConstraintSolver();
  swift_allocObject();
  v45 = sub_1DD493148(v33, v32, v43);

  v46 = v68;
  v47 = sub_1DD493160();
  if (!v46)
  {
    v48 = v47;
    v49 = sub_1DD4937AC(1) & 1;
    sub_1DD493938(0);
    v50 = sub_1DD493938(1);
    MEMORY[0x1EEE9AC00](v50);
    *(&v54 - 8) = v2;
    *(&v54 - 7) = v45;
    *(&v54 - 48) = 0;
    *(&v54 - 5) = 1;
    *(&v54 - 32) = v51;
    *(&v54 - 31) = v52;
    *(&v54 - 24) = 0;
    *(&v54 - 2) = 1;
    *(&v54 - 8) = v49;
    v2 = sub_1DD605308(sub_1DD4A96D4, (&v54 - 10), v48);
  }

  return v2;
}

unint64_t sub_1DD4A9190()
{
  sub_1DD6408D8();

  type metadata accessor for DateTimeConstraint();
  sub_1DD49C1EC();
  v0 = sub_1DD640278();
  MEMORY[0x1E12B2260](v0);

  return 0xD000000000000017;
}

uint64_t sub_1DD4A9228@<X0>(void **a1@<X0>, unsigned __int8 *a2@<X1>, int a3@<W3>, uint64_t a4@<X4>, int a5@<W5>, int a6@<W6>, uint64_t a7@<X7>, uint64_t a8@<X8>, char a9)
{
  v10 = v9;
  v90 = a7;
  v91 = a4;
  HIDWORD(v89) = a6;
  v101 = a3;
  v102 = a5;
  v14 = sub_1DD63D168();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v20 = a2[17];

  if (v20 == 1)
  {
    sub_1DD4949F8(0, v21, v22, v23, v24, v25, v26, v27, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99);
    v28 = sub_1DD4A97A8();
    v88 = v10;
    v29 = sub_1DD49C318(v28);

    if (v29)
    {
      v100[0] = 36;
      v30 = *(a2 + 3);
      (*(v15 + 16))(v18, v30 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_language, v14);
      LOBYTE(v98) = *(v30 + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_hemisphere);
      v31 = sub_1DD4AE18C(v100, v18, &v98, *(a2 + 1));
      (*(v15 + 8))(v18, v14);
      if (v31)
      {
        type metadata accessor for DateTime();
        v19 = sub_1DD489E08(v19, v31);
      }
    }
  }

  v32 = *a2;
  LODWORD(v88) = v102 & 0x100;
  if (!v32 && (v102 & 0x100) == 0)
  {
    v33 = v19[2];
    v34 = v19[3];
    v100[0] = 1;
    v35 = v19[5];
    LOBYTE(v98) = 4;
    type metadata accessor for DateTime();
    swift_allocObject();
    v36 = DateTime.init(withDate:time:definedValue:recurrencePattern:temporalIntent:occurringIn:)(v33, v34, v100, v35, &v98, 0);

    v19 = v36;
  }

  sub_1DD4949F8(0, v21, v22, v23, v24, v25, v26, v27, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99);
  v37 = sub_1DD4A97A8();
  sub_1DD493BC8(0, v38, v39, v40, v41, v42, v43, v44, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99);
  v46 = v45;
  sub_1DD4949F8(1, v47, v48, v49, v50, v51, v52, v53, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99);
  v54 = sub_1DD4A97A8();
  sub_1DD493BC8(1, v55, v56, v57, v58, v59, v60, v61, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99);
  v63 = v62;
  v64 = sub_1DD49C318(v37);

  if (v64)
  {
    v65 = v19[3];
    if (v65)
    {
      *(v65 + 72) = 0;
    }
  }

  sub_1DD5A84D8(v46, &v98);

  v66 = v98;
  swift_beginAccess();
  v19[8] = v66;
  if (sub_1DD49C318(v54))
  {
  }

  else
  {
    sub_1DD4A8848(v54);
    v68 = v67;

    v69 = *(v68 + 16);
    v70 = (v68 + 32);
    while (v69)
    {
      v71 = *v70++;
      --v69;
      if (v71 == 38)
      {

        goto LABEL_22;
      }
    }
  }

  v72 = v19[7];
  if (v72)
  {
    v73 = *(v72 + 32);
    if (v73)
    {
      v74 = *(v73 + 24);
      if (v74)
      {
        *(v74 + 72) = 0;
      }
    }
  }

LABEL_22:
  v75 = v19[7];
  if (v75 && (v76 = *(v75 + 32)) != 0)
  {
    v77 = *(v75 + 32);

    sub_1DD5A84D8(v63, &v98);

    v78 = v98;
    swift_beginAccess();
    *(v76 + 64) = v78;
  }

  else
  {
  }

  v79 = v102;
  result = sub_1DD493734();
  v81 = result;
  if (result)
  {
    v82 = v19[3];
    if (v82)
    {
      result = swift_beginAccess();
      *(v82 + 73) = 1;
    }

    v83 = v19[7];
    if (v83)
    {
      v84 = *(v83 + 32);
      if (v84)
      {
        v85 = *(v84 + 24);
        if (v85)
        {
          result = swift_beginAccess();
          *(v85 + 73) = 1;
        }
      }
    }
  }

  *a8 = v19;
  *(a8 + 8) = BYTE4(v89) & 1;
  v86 = v101 & 1;
  *(a8 + 16) = v90;
  v87 = v88 >> 8;
  *(a8 + 24) = a9 & 1;
  *(a8 + 32) = v86;
  *(a8 + 40) = v91;
  *(a8 + 48) = v79 & 1;
  *(a8 + 49) = v87;
  *(a8 + 56) = 0;
  *(a8 + 64) = 1;
  *(a8 + 72) = v81 & 1;
  return result;
}

uint64_t sub_1DD4A96D4@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  if (*(v2 + 49))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_1DD4A9228(a1, *(v2 + 16), *(v2 + 32), *(v2 + 40), v4 | *(v2 + 48), *(v2 + 56), *(v2 + 64), a2, *(v2 + 72));
}

unint64_t *sub_1DD4A9730(unint64_t *result, uint64_t a2, uint64_t a3)
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

    sub_1DD4A9ACC(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

unint64_t *sub_1DD4A9914(uint64_t a1)
{
  v1 = a1;
  v20[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = ((1 << v2) + 63) >> 6;
  v4 = (8 * v3);
  if ((v2 & 0x3Fu) > 0xD)
  {
    goto LABEL_17;
  }

  while (1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v4 = (v20 - ((v4 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1DD57634C(0, v3, v4);
    OUTLINED_FUNCTION_0_71(v1);
    while (v9)
    {
      OUTLINED_FUNCTION_3_42();
LABEL_10:
      if (*(*(*(v1 + 48) + 8 * v10) + 53) == 1)
      {
        OUTLINED_FUNCTION_1_55();
        v14 = __OFADD__(v13, 1);
        v5 = v13 + 1;
        if (v14)
        {
          __break(1u);
LABEL_14:
          sub_1DD51607C(v4, v3, v5, v1);
          v16 = v15;
          goto LABEL_15;
        }
      }
    }

    v11 = v7;
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_14;
      }

      ++v11;
      if (*(v6 + 8 * v12))
      {
        OUTLINED_FUNCTION_2_49();
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v19 = swift_slowAlloc();
  v16 = sub_1DD4A9730(v19, v3, v1);

  MEMORY[0x1E12B3DA0](v19, -1, -1);
LABEL_15:
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

void sub_1DD4A9ACC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  OUTLINED_FUNCTION_0_71(a3);
  while (v10)
  {
    OUTLINED_FUNCTION_3_42();
LABEL_9:
    if (*(*(*(a3 + 48) + 8 * v11) + 53) == 1)
    {
      OUTLINED_FUNCTION_1_55();
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
LABEL_13:

        sub_1DD51607C(a1, a2, v6, a3);
        return;
      }
    }
  }

  v12 = v8;
  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v9)
    {
      goto LABEL_13;
    }

    ++v12;
    if (*(v7 + 8 * v13))
    {
      OUTLINED_FUNCTION_2_49();
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1DD4A9BA0(uint64_t a1, char *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 1);
  v7 = a2[16];
  v8 = a2[17];
  v9 = a2[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD778, &qword_1DD6517C8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DD643BB0;
  type metadata accessor for ConvergenceStrategyResolverRule();
  v11 = OUTLINED_FUNCTION_0_72();
  *(v10 + 56) = v2;
  *(v10 + 64) = &off_1F58B5710;
  *(v10 + 32) = v11;
  type metadata accessor for OperatingHoursConvergenceResolverRule();
  v12 = OUTLINED_FUNCTION_0_72();
  *(v10 + 96) = v2;
  *(v10 + 104) = &off_1F58BCAF0;
  *(v10 + 72) = v12;
  type metadata accessor for SortingResolverRule();
  v13 = OUTLINED_FUNCTION_0_72();
  *(v10 + 136) = v2;
  *(v10 + 144) = &off_1F58C0808;
  *(v10 + 112) = v13;
  type metadata accessor for PickFirstResolverRule();
  v14 = OUTLINED_FUNCTION_0_72();
  *(v10 + 176) = v2;
  *(v10 + 184) = &off_1F58BD2B8;
  *(v10 + 152) = v14;
  type metadata accessor for DateTimeSuggestionResolver();
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 17) = v5;
  *(v15 + 24) = v6;
  *(v15 + 32) = v7;
  *(v15 + 33) = v8;
  *(v15 + 34) = v9;
  *(v15 + 40) = a1;
  *(v15 + 48) = v10;

  return v15;
}

uint64_t sub_1DD4A9CDC(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_1DD63D078();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = a1;
  v11 = qword_1ECCDB0C0;

  if (v11 != -1)
  {
LABEL_10:
    swift_once();
  }

  v12 = sub_1DD63F9F8();
  __swift_project_value_buffer(v12, qword_1ECD0DDC0);

  v13 = sub_1DD63F9D8();
  v14 = sub_1DD640368();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = v3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v29 = v17;
    *v16 = 136315138;
    (*(v7 + 16))(v10, *(v4 + 40) + OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_date, v6);
    sub_1DD4AA3B4();
    v18 = sub_1DD640CB8();
    v19 = v7;
    v21 = v20;
    (*(v19 + 8))(v10, v6);
    v22 = sub_1DD39565C(v18, v21, &v29);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_1DD38D000, v13, v14, "current time is %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1E12B3DA0](v17, -1, -1);
    v23 = v16;
    v3 = v28;
    MEMORY[0x1E12B3DA0](v23, -1, -1);
  }

  v6 = 0;
  v7 = *(v4 + 48);
  v24 = *(v7 + 16);
  v25 = v7 + 32;
  v10 = &v29;
  while (v24 != v6)
  {
    if (v6 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v29 = v6;
    sub_1DD3C2388(v25, v30);
    sub_1DD4A9FBC(v6, v30, &v31, v4);
    sub_1DD4AA34C(&v29);
    v25 += 40;
    ++v6;
  }

  swift_beginAccess();
  return v31;
}

void sub_1DD4A9FBC(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  swift_beginAccess();
  v9 = *a3;
  v10 = *(a4 + 17);
  v11 = *(a4 + 24);
  v12 = *(a4 + 32);
  v13 = *(a4 + 33);
  v14 = *(a4 + 34);
  LOBYTE(v36[0]) = *(a4 + 16);
  BYTE1(v36[0]) = v10;
  v36[1] = v11;
  v37 = v12;
  v38 = v13;
  v39 = v14;
  v15 = *(a4 + 40);
  v16 = *(v8 + 8);

  v17 = v16(v9, v36, v15, v7, v8);

  swift_beginAccess();
  v18 = *a3;
  *a3 = v17;

  if (qword_1ECCDB0C0 != -1)
  {
    swift_once();
  }

  v19 = sub_1DD63F9F8();
  __swift_project_value_buffer(v19, qword_1ECD0DDC0);
  sub_1DD3C2388(a2, v36);
  v20 = sub_1DD63F9D8();
  v21 = sub_1DD640368();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v35 = v23;
    *v22 = 136315394;
    sub_1DD3C2388(v36, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD770, &unk_1DD6517B8);
    v24 = sub_1DD63FE38();
    v26 = v25;
    __swift_destroy_boxed_opaque_existential_1(v36);
    v27 = sub_1DD39565C(v24, v26, &v35);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    swift_beginAccess();
    v28 = *a3;

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCF0, &qword_1DD649E60);
    v30 = MEMORY[0x1E12B2430](v28, v29);
    v32 = v31;

    v33 = sub_1DD39565C(v30, v32, &v35);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_1DD38D000, v20, v21, "Results after applying rule %s: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12B3DA0](v23, -1, -1);
    MEMORY[0x1E12B3DA0](v22, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v36);
  }
}

void *sub_1DD4AA2C4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return v0;
}

uint64_t sub_1DD4AA2F4()
{
  sub_1DD4AA2C4();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD4AA34C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD768, &qword_1DD6517B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DD4AA3B4()
{
  result = qword_1EE1663F8;
  if (!qword_1EE1663F8)
  {
    sub_1DD63D078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1663F8);
  }

  return result;
}

uint64_t TerminalElement.DateTimeValue.toDateTime()()
{
  v107 = sub_1DD63DFE8();
  v0 = OUTLINED_FUNCTION_0(v107);
  v104 = v1;
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v103 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD780, &qword_1DD6517F0);
  OUTLINED_FUNCTION_3(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v106 = &v100 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2B0, &qword_1DD64F430);
  OUTLINED_FUNCTION_3(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v13);
  v101 = &v100 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD788, &qword_1DD6517F8);
  v16 = OUTLINED_FUNCTION_3(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v100 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v109 = &v100 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v108 = &v100 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A0, &qword_1DD64F420);
  OUTLINED_FUNCTION_3(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v27);
  v102 = &v100 - v28;
  v29 = sub_1DD63E0A8();
  v30 = OUTLINED_FUNCTION_0(v29);
  v105 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v35 = &v100 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD790, &qword_1DD651800);
  OUTLINED_FUNCTION_3(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v100 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD798, &qword_1DD651808);
  v43 = OUTLINED_FUNCTION_3(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v100 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v100 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v100 - v52;
  sub_1DD63DF58();
  v110 = sub_1DD4AAD7C(v53, 1);
  sub_1DD417838(v53, &qword_1ECCDD798, &qword_1DD651808);
  sub_1DD63DF68();
  v54 = sub_1DD4AB0F4(v41);
  sub_1DD417838(v41, &qword_1ECCDD790, &qword_1DD651800);
  sub_1DD63DF38();
  sub_1DD4AC924(v50, v47, &qword_1ECCDD798, &qword_1DD651808);
  if (__swift_getEnumTagSinglePayload(v47, 1, v29) == 1)
  {
    sub_1DD417838(v47, &qword_1ECCDD798, &qword_1DD651808);
  }

  else
  {
    v55 = v105;
    (*(v105 + 32))(v35, v47, v29);
    if (sub_1DD480C68())
    {
      v56 = sub_1DD480384();
      (*(v55 + 8))(v35, v29);
      sub_1DD417838(v50, &qword_1ECCDD798, &qword_1DD651808);
      v57 = v109;
      v58 = v110;
      goto LABEL_7;
    }

    (*(v55 + 8))(v35, v29);
  }

  v57 = v109;
  v58 = v110;
  sub_1DD417838(v50, &qword_1ECCDD798, &qword_1DD651808);
  v56 = 0;
LABEL_7:
  sub_1DD63DF48();
  v59 = sub_1DD4AB0F4(v41);
  sub_1DD417838(v41, &qword_1ECCDD790, &qword_1DD651800);
  v110 = sub_1DD4AB2B8(v58, v54);
  v109 = sub_1DD4AB2B8(v56, v59);
  v60 = v108;
  if (v58 | v54)
  {
    goto LABEL_20;
  }

  sub_1DD63DF78();
  v61 = sub_1DD63DF28();
  v62 = OUTLINED_FUNCTION_1_56();
  if (__swift_getEnumTagSinglePayload(v62, v63, v61) == 1)
  {
    v64 = &qword_1ECCDD788;
    v65 = &qword_1DD6517F8;
    v66 = v60;
  }

  else
  {
    v67 = v102;
    sub_1DD63DF08();
    v68 = v67;
    OUTLINED_FUNCTION_72(v61);
    (*(v69 + 8))(v60, v61);
    v70 = sub_1DD63E118();
    if (__swift_getEnumTagSinglePayload(v68, 1, v70) != 1)
    {
      sub_1DD63E1B8();
      v77 = v101;
      v78 = OUTLINED_FUNCTION_1_56();
      __swift_storeEnumTagSinglePayload(v78, v79, 1, v80);
      v81 = OUTLINED_FUNCTION_1_56();
      sub_1DD547E68(v81, v82, v83);
      sub_1DD417838(v77, &qword_1ECCDD2B0, &qword_1DD64F430);
      OUTLINED_FUNCTION_72(v70);
      (*(v84 + 8))(v68, v70);
      if (v114[1] != 38)
      {
        goto LABEL_20;
      }

      goto LABEL_13;
    }

    v64 = &qword_1ECCDD2A0;
    v65 = &qword_1DD64F420;
    v66 = v68;
  }

  sub_1DD417838(v66, v64, v65);
LABEL_13:
  sub_1DD63DF78();
  if (__swift_getEnumTagSinglePayload(v57, 1, v61) == 1)
  {
    sub_1DD417838(v57, &qword_1ECCDD788, &qword_1DD6517F8);
  }

  else
  {
    v71 = TerminalElement.Recurrence.toRecurrence()();
    v72 = v57;
    v73 = *(*(v61 - 8) + 8);
    v73(v72, v61);
    if (v71)
    {
      v74 = *(v71 + 24);

      if (v74)
      {
        v112 = 1;
        v75 = v100;
        sub_1DD63DF78();
        if (__swift_getEnumTagSinglePayload(v75, 1, v61) == 1)
        {
          sub_1DD417838(v75, &qword_1ECCDD788, &qword_1DD6517F8);
          v76 = 0;
        }

        else
        {
          v97 = TerminalElement.Recurrence.toRecurrence()();
          v98 = v75;
          v76 = v97;
          v73(v98, v61);
        }

        v111 = 4;
        type metadata accessor for DateTime.DateTimeRange();
        swift_allocObject();
        v99 = DateTime.DateTimeRange.init(withInterval:)(v74);
        type metadata accessor for DateTime();
        swift_allocObject();
        v95 = DateTime.init(withDate:time:definedValue:recurrencePattern:temporalIntent:occurringIn:)(0, 0, &v112, v76, &v111, v99);

        goto LABEL_31;
      }
    }
  }

LABEL_20:
  v114[0] = 1;
  v85 = sub_1DD4AB358();
  v86 = v106;
  sub_1DD63DF88();
  v87 = OUTLINED_FUNCTION_1_56();
  v88 = v107;
  if (__swift_getEnumTagSinglePayload(v87, v89, v107) == 1)
  {
    sub_1DD417838(v86, &qword_1ECCDD780, &qword_1DD6517F0);
    v90 = 4;
  }

  else
  {
    v91 = v103;
    v92 = v104;
    (*(v104 + 16))(v103, v86, v88);
    v93 = (*(v92 + 88))(v91, v88);
    if (v93 == *MEMORY[0x1E69D1848])
    {
      v90 = 0;
    }

    else if (v93 == *MEMORY[0x1E69D1858])
    {
      v90 = 1;
    }

    else if (v93 == *MEMORY[0x1E69D1850])
    {
      v90 = 2;
    }

    else
    {
      (*(v92 + 8))(v91, v88);
      v90 = 4;
    }

    (*(v92 + 8))(v86, v88);
  }

  v113 = v90;
  v94 = sub_1DD4AB6F4(v110, v109);
  type metadata accessor for DateTime();
  swift_allocObject();
  v95 = DateTime.init(withDate:time:definedValue:recurrencePattern:temporalIntent:occurringIn:)(v58, v54, v114, v85, &v113, v94);

LABEL_31:

  return v95;
}

uint64_t sub_1DD4AAD7C(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD788, &qword_1DD6517F8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A0, &qword_1DD64F420);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD798, &qword_1DD651808);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v28 - v14;
  v16 = sub_1DD63E0A8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD4AC924(a1, v15, &qword_1ECCDD798, &qword_1DD651808);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_1DD417838(v15, &qword_1ECCDD798, &qword_1DD651808);
    if ((a2 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_7;
  }

  (*(v17 + 32))(v20, v15, v16);
  if (!sub_1DD480C68())
  {
    (*(v17 + 8))(v20, v16);
    if ((a2 & 1) == 0)
    {
      return 0;
    }

LABEL_7:
    sub_1DD63DF78();
    v22 = sub_1DD63DF28();
    if (__swift_getEnumTagSinglePayload(v7, 1, v22) == 1)
    {
      v23 = &qword_1ECCDD788;
      v24 = &qword_1DD6517F8;
      v25 = v7;
    }

    else
    {
      sub_1DD63DF08();
      (*(*(v22 - 8) + 8))(v7, v22);
      v26 = sub_1DD63E118();
      if (__swift_getEnumTagSinglePayload(v11, 1, v26) != 1)
      {
        v21 = sub_1DD5487FC();
        (*(*(v26 - 8) + 8))(v11, v26);
        return v21;
      }

      v23 = &qword_1ECCDD2A0;
      v24 = &qword_1DD64F420;
      v25 = v11;
    }

    sub_1DD417838(v25, v23, v24);
    return 0;
  }

  v21 = sub_1DD480384();
  (*(v17 + 8))(v20, v16);
  return v21;
}

uint64_t sub_1DD4AB0F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD790, &qword_1DD651800);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13 - v4;
  v6 = sub_1DD63E108();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD4AC924(a1, v5, &qword_1ECCDD790, &qword_1DD651800);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1DD417838(v5, &qword_1ECCDD790, &qword_1DD651800);
    return 0;
  }

  (*(v7 + 32))(v10, v5, v6);
  if (!TerminalElement.Time.canConvertToTime()())
  {
    (*(v7 + 8))(v10, v6);
    return 0;
  }

  v11 = TerminalElement.Time.toTime()();
  (*(v7 + 8))(v10, v6);
  return v11;
}

uint64_t sub_1DD4AB2B8(uint64_t a1, uint64_t a2)
{
  if (!(a1 | a2))
  {
    return 0;
  }

  v7 = 1;
  v6 = 4;
  type metadata accessor for DateTime();
  swift_allocObject();
  v2 = DateTime.init(withDate:time:definedValue:recurrencePattern:temporalIntent:occurringIn:)(a1, a2, &v7, 0, &v6, 0);

  return v2;
}

uint64_t sub_1DD4AB6F4(uint64_t a1, uint64_t a2)
{
  v142 = a1;
  v143 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD788, &qword_1DD6517F8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v136 = &v129 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD7A0, &qword_1DD651810);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v141 = &v129 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD7A8, &qword_1DD651818);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v140 = &v129 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD298, &qword_1DD64F418);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v132 = &v129 - v14;
  v15 = sub_1DD63E0A8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v144 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A0, &qword_1DD64F420);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v130 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v133 = &v129 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v131 = &v129 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A8, &qword_1DD64F428);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v137 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v129 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD790, &qword_1DD651800);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v138 = &v129 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v129 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD798, &qword_1DD651808);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v145 = &v129 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v129 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v129 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2B0, &qword_1DD64F430);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v129 = &v129 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v139 = &v129 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v135 = &v129 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v129 - v55;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v129 - v58;
  MEMORY[0x1EEE9AC00](v60);
  v149 = &v129 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v129 - v63;
  v148 = v2;
  sub_1DD63DF58();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v46, 1, v15);
  v147 = v64;
  if (EnumTagSinglePayload == 1)
  {
    sub_1DD417838(v46, &qword_1ECCDD798, &qword_1DD651808);
    v66 = sub_1DD63E1B8();
    __swift_storeEnumTagSinglePayload(v64, 1, 1, v66);
  }

  else
  {
    sub_1DD63E098();
    (*(v16 + 8))(v46, v15);
  }

  v67 = v16;
  sub_1DD63DF68();
  v68 = sub_1DD63E108();
  if (__swift_getEnumTagSinglePayload(v37, 1, v68) == 1)
  {
    sub_1DD417838(v37, &qword_1ECCDD790, &qword_1DD651800);
    v69 = sub_1DD63E1B8();
    __swift_storeEnumTagSinglePayload(v149, 1, 1, v69);
  }

  else
  {
    sub_1DD63E0F8();
    (*(*(v68 - 8) + 8))(v37, v68);
  }

  sub_1DD4AC924(v147, v59, &qword_1ECCDD2B0, &qword_1DD64F430);
  v70 = sub_1DD63E1B8();
  if (__swift_getEnumTagSinglePayload(v59, 1, v70) == 1)
  {
    sub_1DD417838(v59, &qword_1ECCDD2B0, &qword_1DD64F430);
    v146 = 0;
  }

  else
  {
    v146 = sub_1DD567F90();
    (*(*(v70 - 8) + 8))(v59, v70);
  }

  sub_1DD4AC924(v149, v56, &qword_1ECCDD2B0, &qword_1DD64F430);
  if (__swift_getEnumTagSinglePayload(v56, 1, v70) == 1)
  {
    sub_1DD417838(v56, &qword_1ECCDD2B0, &qword_1DD64F430);
    v134 = 0;
  }

  else
  {
    v134 = sub_1DD567F90();
    (*(*(v70 - 8) + 8))(v56, v70);
  }

  sub_1DD63DF58();
  if (__swift_getEnumTagSinglePayload(v43, 1, v15) == 1)
  {
    v71 = &qword_1ECCDD798;
    v72 = &qword_1DD651808;
    v73 = v43;
LABEL_17:
    sub_1DD417838(v73, v71, v72);
    v75 = v141;
    v76 = v142;
    v77 = v144;
    v160[0] = 38;
    v78 = 1;
    goto LABEL_22;
  }

  sub_1DD480B8C(v31);
  (*(v16 + 8))(v43, v15);
  v74 = sub_1DD63DFD8();
  if (__swift_getEnumTagSinglePayload(v31, 1, v74) == 1)
  {
    v71 = &qword_1ECCDD2A8;
    v72 = &qword_1DD64F428;
    v73 = v31;
    goto LABEL_17;
  }

  v79 = v131;
  sub_1DD63DFC8();
  v80 = v79;
  v81 = sub_1DD63E118();
  v82 = __swift_getEnumTagSinglePayload(v80, 1, v81);
  v76 = v142;
  if (v82 == 1)
  {
    sub_1DD417838(v80, &qword_1ECCDD2A0, &qword_1DD64F420);
    v160[0] = 38;
  }

  else
  {
    sub_1DD547E68(v147, 0, v160);
    (*(*(v81 - 8) + 8))(v80, v81);
  }

  (*(*(v74 - 8) + 8))(v31, v74);
  v78 = v160[0] == 38;
  v75 = v141;
  v77 = v144;
LABEL_22:
  if ((v146 & v78 & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_1DD63DF58();
  v83 = v145;
  if (__swift_getEnumTagSinglePayload(v145, 1, v15) == 1)
  {
    sub_1DD417838(v83, &qword_1ECCDD798, &qword_1DD651808);
    goto LABEL_34;
  }

  (*(v67 + 32))(v77, v83, v15);
  sub_1DD63E058();
  if ((v84 & 1) == 0)
  {
    v160[0] = 11;
  }

  sub_1DD63E068();
  if ((v85 & 1) == 0)
  {
    v160[0] = 9;
  }

  v86 = v132;
  v87 = v144;
  sub_1DD63E088();
  v88 = sub_1DD63E198();
  if (__swift_getEnumTagSinglePayload(v86, 1, v88) != 1)
  {
    (*(v67 + 8))(v87, v15);
    sub_1DD417838(v86, &qword_1ECCDD298, &qword_1DD64F418);
    goto LABEL_33;
  }

  sub_1DD417838(v86, &qword_1ECCDD298, &qword_1DD64F418);
  sub_1DD63E028();
  v90 = v89;
  (*(v67 + 8))(v87, v15);
  if ((v90 & 1) == 0)
  {
LABEL_33:
    v160[0] = 8;
  }

LABEL_34:
  v91 = v138;
  sub_1DD63DF68();
  if (__swift_getEnumTagSinglePayload(v91, 1, v68) == 1)
  {
    sub_1DD417838(v91, &qword_1ECCDD790, &qword_1DD651800);
    v92 = 38;
    v93 = v143;
LABEL_38:
    v97 = v147;
    v98 = v140;
    goto LABEL_43;
  }

  v94 = v137;
  sub_1DD63E0C8();
  (*(*(v68 - 8) + 8))(v91, v68);
  v95 = sub_1DD63DFD8();
  v96 = __swift_getEnumTagSinglePayload(v94, 1, v95);
  v93 = v143;
  if (v96 == 1)
  {
    sub_1DD417838(v94, &qword_1ECCDD2A8, &qword_1DD64F428);
    v92 = 38;
    goto LABEL_38;
  }

  v99 = v133;
  sub_1DD63DFC8();
  v100 = sub_1DD63E118();
  v101 = __swift_getEnumTagSinglePayload(v99, 1, v100);
  v97 = v147;
  if (v101 == 1)
  {
    sub_1DD417838(v99, &qword_1ECCDD2A0, &qword_1DD64F420);
    v159 = 38;
  }

  else
  {
    sub_1DD547E68(v149, 0, &v159);
    (*(*(v100 - 8) + 8))(v99, v100);
  }

  v98 = v140;
  (*(*(v95 - 8) + 8))(v137, v95);
  v92 = v159;
LABEL_43:
  sub_1DD63DFA8();
  v102 = sub_1DD63E188();
  if (__swift_getEnumTagSinglePayload(v98, 1, v102) == 1)
  {
    sub_1DD417838(v98, &qword_1ECCDD7A8, &qword_1DD651818);
    v103 = 0;
  }

  else
  {
    v104 = TerminalElement.Interval.toInterval()();
    v105 = v98;
    v103 = v104;
    (*(*(v102 - 8) + 8))(v105, v102);
  }

  sub_1DD63DF98();
  v106 = sub_1DD63E148();
  if (__swift_getEnumTagSinglePayload(v75, 1, v106) == 1)
  {
    sub_1DD417838(v75, &qword_1ECCDD7A0, &qword_1DD651810);
    v107 = 0;
  }

  else
  {
    v107 = TerminalElement.Duration.toInterval()();
    (*(*(v106 - 8) + 8))(v75, v106);
  }

  v108 = v139;
  if (!(v146 & 1 | (v160[0] != 38)))
  {
    if ((v134 & 1) == 0)
    {
LABEL_55:
      v109 = 20;
      goto LABEL_56;
    }

    sub_1DD4AC924(v149, v139, &qword_1ECCDD2B0, &qword_1DD64F430);
    if (__swift_getEnumTagSinglePayload(v108, 1, v70) != 1)
    {
      TerminalElement.Qualifier.toQualifier()(&v151);
      (*(*(v70 - 8) + 8))(v108, v70);
      v109 = v151;
      goto LABEL_56;
    }

LABEL_54:
    sub_1DD417838(v108, &qword_1ECCDD2B0, &qword_1DD64F430);
    goto LABEL_55;
  }

  v108 = v135;
  sub_1DD4AC924(v97, v135, &qword_1ECCDD2B0, &qword_1DD64F430);
  if (__swift_getEnumTagSinglePayload(v108, 1, v70) == 1)
  {
    goto LABEL_54;
  }

  TerminalElement.Qualifier.toQualifier()(&v150);
  (*(*(v70 - 8) + 8))(v108, v70);
  v109 = v150;
LABEL_56:
  v110 = v160[0];
  if (v160[0] != 38 || v92 != 38 || v103 || v109 != 20 || v107)
  {
    sub_1DD417838(v149, &qword_1ECCDD2B0, &qword_1DD64F430);
    sub_1DD417838(v97, &qword_1ECCDD2B0, &qword_1DD64F430);
    if (v93)
    {
    }

    else
    {
      v76 = 0;
    }

    if (v110 == 38)
    {
      v116 = v92;
    }

    else
    {
      v116 = v110;
    }

    v153 = v116;
    v152 = v109;
    type metadata accessor for DateTime.DateTimeRange();
    swift_allocObject();
    v117 = &v153;
    v118 = &v152;
    v119 = v76;
    v120 = v93;
    v121 = v107;
    v122 = v103;
    goto LABEL_73;
  }

  v111 = v136;
  sub_1DD63DF78();
  v112 = sub_1DD63DF28();
  if (__swift_getEnumTagSinglePayload(v111, 1, v112) != 1)
  {
    if (v76 && *(v76 + 16))
    {
      sub_1DD417838(v149, &qword_1ECCDD2B0, &qword_1DD64F430);
      v113 = v97;
      v114 = &qword_1ECCDD2B0;
      v115 = &qword_1DD64F430;
    }

    else
    {
      v124 = v130;
      sub_1DD63DF08();
      v125 = sub_1DD63E118();
      if (__swift_getEnumTagSinglePayload(v124, 1, v125) != 1)
      {
        v126 = v129;
        __swift_storeEnumTagSinglePayload(v129, 1, 1, v70);
        sub_1DD547E68(v126, 1, &v158);
        sub_1DD417838(v126, &qword_1ECCDD2B0, &qword_1DD64F430);
        sub_1DD417838(v149, &qword_1ECCDD2B0, &qword_1DD64F430);
        sub_1DD417838(v97, &qword_1ECCDD2B0, &qword_1DD64F430);
        (*(*(v125 - 8) + 8))(v124, v125);
        goto LABEL_79;
      }

      sub_1DD417838(v149, &qword_1ECCDD2B0, &qword_1DD64F430);
      sub_1DD417838(v97, &qword_1ECCDD2B0, &qword_1DD64F430);
      v114 = &qword_1ECCDD2A0;
      v115 = &qword_1DD64F420;
      v113 = v124;
    }

    sub_1DD417838(v113, v114, v115);
    v158 = 38;
LABEL_79:
    (*(*(v112 - 8) + 8))(v111, v112);
    v127 = v158;
    if (v158 == 38)
    {
      goto LABEL_80;
    }

    if (v93)
    {
    }

    else
    {
      v76 = 0;
    }

    v155 = v127;
    v154 = 20;
    type metadata accessor for DateTime.DateTimeRange();
    swift_allocObject();
    v117 = &v155;
    v118 = &v154;
    v119 = v76;
    v120 = v93;
    v121 = 0;
    v122 = 0;
LABEL_73:
    v123 = DateTime.DateTimeRange.init(at:start:end:duration:interval:definedValue:qualifier:)(0, v119, v120, v121, v122, v117, v118);
    goto LABEL_82;
  }

  sub_1DD417838(v149, &qword_1ECCDD2B0, &qword_1DD64F430);
  sub_1DD417838(v97, &qword_1ECCDD2B0, &qword_1DD64F430);
  sub_1DD417838(v111, &qword_1ECCDD788, &qword_1DD6517F8);
LABEL_80:
  if (!v93)
  {
    return 0;
  }

  v157 = 38;
  v156 = 20;
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  v123 = DateTime.DateTimeRange.init(at:start:end:duration:interval:definedValue:qualifier:)(0, v76, v93, 0, 0, &v157, &v156);

LABEL_82:

  return v123;
}

uint64_t sub_1DD4AC924(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_72(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD4AC988()
{
  v26 = sub_1DD63CBB8();
  v0 = *(v26 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD63D1E8();
  result = sub_1DD63CA78();
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v7 = sub_1DD63CA28();
    v9 = v8;
    v10 = sub_1DD63CAB8();
    v12 = v11;
    v13 = sub_1DD63CA98();
    v15 = v14;
    v32 = 7;
    v31 = 12;
    v30 = 7;
    v29 = 7;
    type metadata accessor for DateTime.Date();
    swift_allocObject();
    v16 = DateTime.Date.init(withDay:month:year:definedValue:holiday:monthOfYear:weekOfYear:dayOfWeek:dayOfWeekOrdinal:calendarEra:occurringIn:)(v7, v9 & 1, v10, v12 & 1, v13, v15 & 1, &v32, 0, &v31, 0, 1, &v30, 0, 1, &v29, 0);
    if (v6 <= 12)
    {
      v17 = v6;
    }

    else
    {
      v17 = v6 - 12;
    }

    v18 = sub_1DD63CAE8();
    v20 = v19;
    v21 = sub_1DD63CB08();
    v23 = v22;
    v28 = v6 > 11;
    v27 = 3;
    type metadata accessor for DateTime.Time();
    swift_allocObject();
    v24 = DateTime.Time.init(withHour:minute:second:meridiem:definedValue:occurringIn:setByUser:)(v17, 0, v18, v20 & 1, v21, v23 & 1, &v28, &v27, 0, 1);
    type metadata accessor for DateTime();
    swift_allocObject();
    v25 = DateTime.init(withDate:time:)(v16, v24);
    (*(v0 + 8))(v3, v26);
    return v25;
  }

  return result;
}

uint64_t sub_1DD4ACBFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD644F40;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  type metadata accessor for DateTime();
  swift_allocObject();
  OUTLINED_FUNCTION_1_12();
  *(inited + 56) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(4, 0, 0, v1, 6, 0, 0, v2);
  *(inited + 64) = xmmword_1DD6435E0;
  *(inited + 80) = 0;
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_1_12();
  *(inited + 88) = OUTLINED_FUNCTION_3_6(0, 0, 0, v3, 7, v4, v5, v6);
  *(inited + 96) = xmmword_1DD643600;
  *(inited + 112) = 0;
  OUTLINED_FUNCTION_1_15();
  v7 = OUTLINED_FUNCTION_0_73();
  *(inited + 120) = OUTLINED_FUNCTION_3_6(v7, v8, v9, v10, v11, v12, v13, v14);
  *(inited + 128) = xmmword_1DD643640;
  *(inited + 144) = 0;
  OUTLINED_FUNCTION_1_15();
  OUTLINED_FUNCTION_1_12();
  *(inited + 152) = OUTLINED_FUNCTION_3_6(4, 0, 0, v15, 5, v16, v17, v18);
  *(inited + 160) = xmmword_1DD651820;
  *(inited + 176) = 0;
  OUTLINED_FUNCTION_1_15();
  v19 = OUTLINED_FUNCTION_0_73();
  *(inited + 184) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(v19, v20, v21, v22, v23, 0, 0, v24);
  *(inited + 192) = xmmword_1DD643660;
  *(inited + 208) = 0;
  OUTLINED_FUNCTION_1_15();
  v25 = OUTLINED_FUNCTION_0_73();
  *(inited + 216) = OUTLINED_FUNCTION_3_6(v25, v26, v27, v28, v29, v30, v31, v32);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

uint64_t sub_1DD4ACD84@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1DD63E198();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v2, v4, v7);
  result = (*(v5 + 88))(v9, v4);
  if (result == *MEMORY[0x1E69D1A10])
  {
    *a1 = 0;
    return result;
  }

  if (result == *MEMORY[0x1E69D1A20])
  {
    v11 = 1;
  }

  else if (result == *MEMORY[0x1E69D1A38])
  {
    v11 = 2;
  }

  else if (result == *MEMORY[0x1E69D1A30])
  {
    v11 = 3;
  }

  else if (result == *MEMORY[0x1E69D1A08])
  {
    v11 = 4;
  }

  else if (result == *MEMORY[0x1E69D1A28])
  {
    v11 = 5;
  }

  else
  {
    if (result != *MEMORY[0x1E69D1A18])
    {
      *a1 = 7;
      return (*(v5 + 8))(v9, v4);
    }

    v11 = 6;
  }

  *a1 = v11;
  return result;
}

unint64_t DateTime.Date.DayOfWeek.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 7;
  if (result < 7)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1DD4ACF78()
{
  result = qword_1ECCDD7B0;
  if (!qword_1ECCDD7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD7B0);
  }

  return result;
}

uint64_t sub_1DD4ACFD4@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.Date.DayOfWeek.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s9DayOfWeekOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}