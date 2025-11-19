void *sub_1D8F82E90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4370, &qword_1D9188ED0);
  v2 = *v0;
  v3 = sub_1D917977C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 8 * v17;
        v19 = 72 * v17;
        sub_1D8EC8C5C(*(v2 + 48) + 72 * v17, v25);
        v20 = *(*(v2 + 56) + v18);
        v21 = *(v4 + 48) + v19;
        v22 = v25[3];
        v23 = v25[2];
        v24 = v25[1];
        *(v21 + 64) = v26;
        *(v21 + 32) = v23;
        *(v21 + 48) = v22;
        *(v21 + 16) = v24;
        *v21 = v25[0];
        *(*(v4 + 56) + v18) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1D8F830B0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v37 = a4;
  v7 = v4;
  v8 = a1(0);
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v33 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v4;
  v12 = sub_1D917977C();
  v13 = v12;
  if (*(v11 + 16))
  {
    v33 = v7;
    result = (v12 + 64);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 64 + 8 * v15)
    {
      result = memmove(result, (v11 + 64), 8 * v15);
    }

    v34 = v11 + 64;
    v17 = 0;
    v18 = *(v11 + 16);
    v38 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = *(v11 + 64);
    v21 = -1;
    if (v19 < 64)
    {
      v21 = ~(-1 << v19);
    }

    v22 = v21 & v20;
    v23 = (v19 + 63) >> 6;
    if ((v21 & v20) != 0)
    {
      do
      {
        v24 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
LABEL_17:
        v27 = v24 | (v17 << 6);
        v28 = v35;
        v29 = *(v36 + 72) * v27;
        v30 = v37;
        sub_1D8D80148(*(v11 + 48) + v29, v35, v37);
        v31 = *(*(v11 + 56) + 8 * v27);
        v32 = v38;
        sub_1D8F86EDC(v28, *(v38 + 48) + v29, v30);
        *(*(v32 + 56) + 8 * v27) = v31;
      }

      while (v22);
    }

    v25 = v17;
    while (1)
    {
      v17 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v17 >= v23)
      {

        v7 = v33;
        v13 = v38;
        goto LABEL_21;
      }

      v26 = *(v34 + 8 * v17);
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
    *v7 = v13;
  }

  return result;
}

void *sub_1D8F83318()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6820, &qword_1D9193770);
  v2 = *v0;
  v3 = sub_1D917977C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1D8F834A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6AC0, &unk_1D9194690);
  v2 = *v0;
  v3 = sub_1D917977C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_1D8F835F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7B30, &qword_1D9199748);
  v2 = *v0;
  v3 = sub_1D917977C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(v2 + 56) + 16 * v17;
        v20 = *v19;
        LOBYTE(v19) = *(v19 + 8);
        *(*(v4 + 48) + 8 * v17) = v18;
        v21 = *(v4 + 56) + 16 * v17;
        *v21 = v20;
        *(v21 + 8) = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_1D8F83760()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7B28, &unk_1D91A6C40);
  v2 = *v0;
  v3 = sub_1D917977C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + v17) = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1D8F838F8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1D917977C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

void *sub_1D8F83AD0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v37 = a4;
  v7 = v4;
  v8 = a1(0);
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v33 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v4;
  v12 = sub_1D917977C();
  v13 = v12;
  if (*(v11 + 16))
  {
    v34 = v7;
    result = (v12 + 64);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 64 + 8 * v15)
    {
      result = memmove(result, (v11 + 64), 8 * v15);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v38 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = *(v11 + 64);
    v21 = -1;
    if (v19 < 64)
    {
      v21 = ~(-1 << v19);
    }

    v22 = v21 & v20;
    v23 = (v19 + 63) >> 6;
    if ((v21 & v20) != 0)
    {
      do
      {
        v24 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
LABEL_17:
        v27 = v24 | (v17 << 6);
        v28 = *(*(v11 + 48) + 8 * v27);
        v29 = v35;
        v30 = *(v36 + 72) * v27;
        v31 = v37;
        sub_1D8D80148(*(v11 + 56) + v30, v35, v37);
        v32 = v38;
        *(*(v38 + 48) + 8 * v27) = v28;
        result = sub_1D8F86EDC(v29, *(v32 + 56) + v30, v31);
      }

      while (v22);
    }

    v25 = v17;
    while (1)
    {
      v17 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v17 >= v23)
      {

        v7 = v34;
        v13 = v38;
        goto LABEL_21;
      }

      v26 = *(v11 + 64 + 8 * v17);
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
    *v7 = v13;
  }

  return result;
}

void *sub_1D8F83CFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41F8, &qword_1D9188D40);
  v2 = *v0;
  v3 = sub_1D917977C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 2 * v17) = *(*(v2 + 48) + 2 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1D8F83E80(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1D917977C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

id sub_1D8F83FCC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7768, &unk_1D91A6B70);
  v2 = *v0;
  v3 = sub_1D917977C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1D8F84138()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42E0, &unk_1D9188E40);
  v2 = *v0;
  v3 = sub_1D917977C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1D8CFAD1C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D8D65618(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1D8F842F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42C8, &unk_1D9188E20);
  v2 = *v0;
  v3 = sub_1D917977C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 40 * v17;
        sub_1D8D9A2A4(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1D8CFAD1C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1D8D65618(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_1D8F844A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7B20, &unk_1D91A6C20);
  v2 = *v0;
  v3 = sub_1D917977C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(v2 + 56) + 32 * v17;
        v20 = *v19;
        v21 = *(v19 + 24);
        v22 = *(v19 + 8);
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = *(v4 + 56) + 32 * v17;
        *v23 = v20;
        *(v23 + 8) = v22;
        *(v23 + 24) = v21;

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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1D8F84638()
{
  v1 = v0;
  v30 = sub_1D9176E3C();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7B18, &unk_1D91A6C00);
  v4 = *v0;
  v5 = sub_1D917977C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + v18) = v19;
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

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1D8F848B4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1D917977C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

char *sub_1D8F84A14()
{
  v1 = v0;
  v34 = sub_1D9176EAC();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4298, &qword_1D9188DF0);
  v4 = *v0;
  v5 = sub_1D917977C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;
        result = swift_unknownObjectRetain();
        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1D8F84C94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4288, &unk_1D91A6C10);
  v2 = *v0;
  v3 = sub_1D917977C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1D8F84E04(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1D917977C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

void *sub_1D8F84F8C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1D917977C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 56) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
        v23 = (*(v6 + 56) + 16 * v19);
        *v23 = v22;
        v23[1] = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

void *sub_1D8F850E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4278, qword_1D9188DC0);
  v2 = *v0;
  v3 = sub_1D917977C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_1D8F85248()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AA0, &unk_1D91B63B0);
  v2 = *v0;
  v3 = sub_1D917977C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_1D8F853A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7A98, &unk_1D91A6B50);
  v2 = *v0;
  v3 = sub_1D917977C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;

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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_1D8F85520(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1D917977C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

void *sub_1D8F8566C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7B08, &qword_1D9199738);
  v2 = *v0;
  v3 = sub_1D917977C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = *(v4 + 48) + 24 * v17;
        *v23 = *v18;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v22;
        sub_1D8DB5EC8(v19, v20, v21);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1D8F85824(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1D917977C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

void *sub_1D8F85984()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4240, &qword_1D9188D88);
  v2 = *v0;
  v3 = sub_1D917977C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1D8F85AE8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4230, &unk_1D91946B0);
  v2 = *v0;
  v3 = sub_1D917977C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 96 * v17);
        v19 = v18[2];
        v20 = v18[3];
        v21 = v18[4];
        *&v26[11] = *(v18 + 75);
        v25[3] = v20;
        *v26 = v21;
        v22 = v18[1];
        v25[0] = *v18;
        v25[1] = v22;
        v25[2] = v19;
        v23 = *(*(v2 + 56) + 8 * v17);
        memmove((*(v4 + 48) + 96 * v17), v18, 0x5BuLL);
        *(*(v4 + 56) + 8 * v17) = v23;
        sub_1D8F0C914(v25, &v24);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1D8F85C98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AF0, &qword_1D9199728);
  v2 = *v0;
  v3 = sub_1D917977C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1D8F85DE4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB6AD0, &qword_1D91946A8);
  v2 = *v0;
  v3 = sub_1D917977C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 56) + 40 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        v23 = v18[4];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v24 = (*(v4 + 56) + 40 * v17);
        *v24 = v19;
        v24[1] = v20;
        v24[2] = v21;
        v24[3] = v22;
        v24[4] = v23;
        result = sub_1D8D1C3BC(v19, v20, v21);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1D8F85F60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7A88, &unk_1D91A6B40);
  v27 = v0;
  v1 = *v0;
  v28 = sub_1D917977C();
  if (*(v1 + 16))
  {
    result = (v28 + 64);
    v3 = ((1 << *(v28 + 32)) + 63) >> 6;
    if (v28 != v1 || result >= v1 + 64 + 8 * v3)
    {
      result = memmove(result, (v1 + 64), 8 * v3);
    }

    v5 = 0;
    *(v28 + 16) = *(v1 + 16);
    v6 = 1 << *(v1 + 32);
    v7 = *(v1 + 64);
    v8 = -1;
    if (v6 < 64)
    {
      v8 = ~(-1 << v6);
    }

    v9 = v8 & v7;
    v10 = (v6 + 63) >> 6;
    if ((v8 & v7) != 0)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_17:
        v14 = v11 | (v5 << 6);
        v15 = 16 * v14;
        v16 = (*(v1 + 48) + 16 * v14);
        v18 = *v16;
        v17 = v16[1];
        v14 *= 40;
        v19 = (*(v1 + 56) + v14);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        v24 = v19[4];
        v25 = (*(v28 + 48) + v15);
        *v25 = v18;
        v25[1] = v17;
        v26 = (*(v28 + 56) + v14);
        *v26 = v20;
        v26[1] = v21;
        v26[2] = v22;
        v26[3] = v23;
        v26[4] = v24;

        result = sub_1D8D1C3BC(v20, v21, v22);
      }

      while (v9);
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
        goto LABEL_19;
      }

      v13 = *(v1 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v27 = v28;
  }

  return result;
}

void *sub_1D8F86124()
{
  v1 = v0;
  v2 = type metadata accessor for EpisodePlayState();
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AE8, &unk_1D91A6BD0);
  v5 = *v0;
  v6 = sub_1D917977C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v26 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v29 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = *(*(v5 + 48) + 8 * v21);
        v23 = v27;
        v24 = *(v28 + 72) * v21;
        sub_1D8D80148(*(v5 + 56) + v24, v27, type metadata accessor for EpisodePlayState);
        v25 = v29;
        *(*(v29 + 48) + 8 * v21) = v22;
        result = sub_1D8F86EDC(v23, *(v25 + 56) + v24, type metadata accessor for EpisodePlayState);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v26;
        v7 = v29;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1D8F8635C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6AC8, &qword_1D91946A0);
  v2 = *v0;
  v3 = sub_1D917977C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_1D8F864A8()
{
  v1 = v0;
  v34 = sub_1D9176EAC();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4228, &unk_1D9188D70);
  v4 = *v0;
  v5 = sub_1D917977C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1D8F86728()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4218, &qword_1D9188D60);
  v2 = *v0;
  v3 = sub_1D917977C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1D8F86884()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4210, &unk_1D91A6BC0);
  v2 = *v0;
  v3 = sub_1D917977C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 24);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 8);
        *v25 = v20;
        v25[1] = v21;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v26;
        *(v27 + 24) = v24;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1D8F86A24()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7B38, &unk_1D91A6CA0);
  v2 = *v0;
  v3 = sub_1D917977C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1D8F86B88()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4208, &unk_1D9188D50);
  v2 = *v0;
  v3 = sub_1D917977C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1D8F86CF0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AD8, &unk_1D91A6BB0);
  v2 = *v0;
  v3 = sub_1D917977C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

unint64_t sub_1D8F86E60(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  v6 = sub_1D9179E1C();

  return sub_1D8D04DE4(a1, a2, v6);
}

uint64_t sub_1D8F86EDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D8F86F44()
{
  result = qword_1EDCD76D0;
  if (!qword_1EDCD76D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCD76D0);
  }

  return result;
}

uint64_t AnalyticsUserIdentifier.clientId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_clientId);
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_clientId + 8);

  return v1;
}

id sub_1D8F86FE8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];

    v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t AnalyticsUserIdentifier.userId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userId);
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userId + 8);

  return v1;
}

id AnalyticsUserIdentifier.__allocating_init(clientId:userId:userAllowsPersonalization:userUnder13YearsOld:userIsManagedAccount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = &v15[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_clientId];
  *v16 = a1;
  v16[1] = a2;
  v17 = &v15[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userId];
  *v17 = a3;
  v17[1] = a4;
  v15[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userAllowsPersonalization] = a5;
  v15[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userUnder13YearsOld] = a6;
  v15[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userIsManagedAccount] = a7;
  v19.receiver = v15;
  v19.super_class = v7;
  return objc_msgSendSuper2(&v19, sel_init);
}

id AnalyticsUserIdentifier.init(clientId:userId:userAllowsPersonalization:userUnder13YearsOld:userIsManagedAccount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7)
{
  ObjectType = swift_getObjectType();
  v16 = &v7[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_clientId];
  *v16 = a1;
  v16[1] = a2;
  v17 = &v7[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userId];
  *v17 = a3;
  v17[1] = a4;
  v7[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userAllowsPersonalization] = a5;
  v7[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userUnder13YearsOld] = a6;
  v7[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userIsManagedAccount] = a7;
  v19.receiver = v7;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, sel_init);
}

id AnalyticsUserIdentifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AnalyticsUserIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D8F87480()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager____lazy_storage___store;
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager____lazy_storage___store);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager____lazy_storage___store);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E698CA20]) init];
    if (qword_1EDCD2AB0 != -1)
    {
      swift_once();
    }

    [v4 setClientInfo_];
    [v4 setResetInterval_];
    v5 = [*(v0 + OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager_accountStore) ams_activeiTunesAccount];
    [v4 setAccount_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1D8F8763C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager_identifierPromise;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1D8F87694(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager_identifierPromise;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void sub_1D8F877BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D9178D1C();
    if (qword_1EDCD0700 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v2 = qword_1EDCD0708;
    sub_1D91772DC();

    v3 = *&v1[OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager_promiseLock];
    MEMORY[0x1EEE9AC00](v4);
    MEMORY[0x1EEE9AC00](v5);

    os_unfair_lock_lock(v3 + 4);
    sub_1D8D04F40(v6);
    os_unfair_lock_unlock(v3 + 4);

    v7 = [objc_opt_self() _applePodcastsFoundationSettingsUserDefaults];
    v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [v7 setBool:0 forKey:v8];

    sub_1D8DAAEA4();
  }
}

void sub_1D8F879B4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager_identifierPromise;
  swift_beginAccess();
  if ([*(a1 + v2) isFinished])
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E698CA58]) init];
    v4 = *(a1 + v2);
    *(a1 + v2) = v3;
  }

  v5 = sub_1D8F87480();
  [v5 reset];
}

uint64_t static AnalyticsIdentifierManager.hashDSIDWithSalt(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9177FBC();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9177FAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D917825C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1D91782EC() < 1)
  {
    return 0;
  }

  v28 = v9;
  v32[0] = a1;
  v32[1] = a2;

  MEMORY[0x1DA7298F0](0xD000000000000020, 0x80000001D91CF990);
  sub_1D917824C();
  v18 = sub_1D917821C();
  v20 = v19;

  (*(v14 + 8))(v17, v13);
  if (v20 >> 60 == 15)
  {
    return 0;
  }

  sub_1D8CFBD60(&qword_1ECAB01E0, MEMORY[0x1E6966620]);
  v22 = v18;
  sub_1D9177F9C();
  sub_1D8D752C4(v18, v20);
  sub_1D8F88024(v18, v20);
  sub_1D8D75668(v18, v20);
  sub_1D9177F8C();
  (*(v29 + 8))(v7, v4);
  v33 = v8;
  v34 = sub_1D8CFBD60(&qword_1ECAB01E8, MEMORY[0x1E69663E0]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
  v24 = v28;
  (*(v28 + 16))(boxed_opaque_existential_0, v12, v8);
  __swift_project_boxed_opaque_existential_1(v32, v33);
  sub_1D91768EC();
  (*(v24 + 8))(v12, v8);
  v25 = v30;
  v26 = v31;
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  v27 = sub_1D9176C7C();
  sub_1D8D7567C(v25, v26);
  sub_1D8D75668(v22, v20);
  return v27;
}

id AnalyticsIdentifierManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnalyticsIdentifierManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *sub_1D8F87F90@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_1D8F883F8(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1D8F884B0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1D8F8852C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1D8F88024(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_1D9177FBC();
      sub_1D8CFBD60(&qword_1ECAB01E0, MEMORY[0x1E6966620]);
      result = sub_1D9177F7C();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1D8F88318(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D8F88318(uint64_t a1, uint64_t a2)
{
  result = sub_1D917681C();
  if (!result || (result = sub_1D917683C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1D917682C();
      sub_1D9177FBC();
      sub_1D8CFBD60(&qword_1ECAB01E0, MEMORY[0x1E6966620]);
      return sub_1D9177F7C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8F883F8(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
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
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D8F884B0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1D917684C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1D917680C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D9176C5C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1D8F8852C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1D917684C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1D917680C();
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

id FeedUpdateMetricsAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1D8F89388(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1D8F893FC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_1D8F89458(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_1D8F894A0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1D8F894AC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D9179ACC();
  }
}

uint64_t sub_1D8F894DC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t sub_1D8F89528()
{
  v1 = *v0;
  v2 = v0[1];
  return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8F89530()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

unint64_t MetricsActionContext.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD000000000000020;
}

unint64_t sub_1D8F89608()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD000000000000020;
}

uint64_t MetricsActionContext.init(from:)(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v4 = sub_1D9179ADC();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v4;
}

uint64_t sub_1D8F8978C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v6 = sub_1D9179ADC();
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v6;
  a2[1] = v8;
  return result;
}

uint64_t MetricsActionContext.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t sub_1D8F898F4(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

unint64_t sub_1D8F89A44()
{
  result = qword_1ECAB7B88;
  if (!qword_1ECAB7B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7B88);
  }

  return result;
}

unint64_t MetricsActionResult.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001FLL;
}

unint64_t sub_1D8F89B40()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001FLL;
}

uint64_t MetricsActionResult.init(from:)(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v4 = sub_1D9179ADC();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v4;
}

uint64_t MetricsActionResult.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

unint64_t sub_1D8F89DA0()
{
  result = qword_1ECAB7B90;
  if (!qword_1ECAB7B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7B90);
  }

  return result;
}

unint64_t MetricsActionType.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001DLL;
}

unint64_t sub_1D8F89E9C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001DLL;
}

uint64_t MetricsActionType.init(from:)(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v4 = sub_1D9179ADC();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v4;
}

uint64_t MetricsActionType.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

unint64_t sub_1D8F8A500()
{
  result = qword_1ECAB7B98;
  if (!qword_1ECAB7B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7B98);
  }

  return result;
}

unint64_t MetricsContentKind.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001ELL;
}

unint64_t sub_1D8F8A5FC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001ELL;
}

uint64_t MetricsContentKind.init(from:)(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v4 = sub_1D9179ADC();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v4;
}

uint64_t MetricsContentKind.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

unint64_t sub_1D8F8A870()
{
  result = qword_1ECAB7BA0;
  if (!qword_1ECAB7BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7BA0);
  }

  return result;
}

uint64_t MetricsEngagementThresholdMet.rawValue.getter(unsigned __int8 a1)
{
  v1 = 7562617;
  v2 = 0x6465636E79736E75;
  if (a1 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (a1)
  {
    v1 = 28526;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D8F8A944(_BYTE *a1, _BYTE *a2)
{
  v2 = 7562617;
  v3 = *a1;
  v4 = 0xE300000000000000;
  v5 = 0xE800000000000000;
  v6 = 0x6465636E79736E75;
  if (v3 != 2)
  {
    v6 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v7 = 28526;
  if (*a1)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v7 = 7562617;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xE300000000000000;
  v11 = 0xE800000000000000;
  v12 = 0x6465636E79736E75;
  if (*a2 != 2)
  {
    v12 = 0x6E776F6E6B6E75;
    v11 = 0xE700000000000000;
  }

  if (*a2)
  {
    v2 = 28526;
    v10 = 0xE200000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1D9179ACC();
  }

  return v15 & 1;
}

uint64_t sub_1D8F8AA68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s18PodcastsFoundation29MetricsEngagementThresholdMetO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_1D8F8AA98(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7562617;
  v4 = 0xE800000000000000;
  v5 = 0x6465636E79736E75;
  if (*v1 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 28526;
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1D8F8AB04()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8F8ABB4()
{
  *v0;
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8F8AC50()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

unint64_t MetricsEngagementThresholdMet.debugDescription.getter(unsigned __int8 a1)
{
  sub_1D917946C();

  v2 = 0xE300000000000000;
  v3 = 7562617;
  v4 = 0xE800000000000000;
  v5 = 0x6465636E79736E75;
  if (a1 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = 28526;
    v2 = 0xE200000000000000;
  }

  if (a1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (a1 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x1DA7298F0](v6, v7);

  return 0xD00000000000001ELL;
}

unint64_t sub_1D8F8ADD8()
{
  v1 = *v0;
  sub_1D917946C();

  v2 = 0xE300000000000000;
  v3 = 7562617;
  v4 = 0xE800000000000000;
  v5 = 0x6465636E79736E75;
  if (v1 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (v1)
  {
    v3 = 28526;
    v2 = 0xE200000000000000;
  }

  if (v1 <= 1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (v1 <= 1)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x1DA7298F0](v6, v7);

  return 0xD00000000000001ELL;
}

uint64_t _s18PodcastsFoundation29MetricsEngagementThresholdMetO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1D917980C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D8F8AF00()
{
  result = qword_1ECAB7BA8;
  if (!qword_1ECAB7BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7BA8);
  }

  return result;
}

uint64_t sub_1D8F8AF6C()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8F8AFE0()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

unint64_t MetricsEventVersion.debugDescription.getter()
{
  sub_1D917946C();

  v0 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v0);

  MEMORY[0x1DA7298F0](41, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

unint64_t sub_1D8F8B110()
{
  result = qword_1ECAB7BB0;
  if (!qword_1ECAB7BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7BB0);
  }

  return result;
}

uint64_t sub_1D8F8B164()
{
  v2 = *v0;
  sub_1D8F8B110();
  return sub_1D917927C();
}

uint64_t MetricsEventVersion.init(from:)(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v4 = sub_1D9179B1C();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v4;
}

uint64_t sub_1D8F8B264@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v6 = sub_1D9179B1C();
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v6;
  return result;
}

uint64_t MetricsEventVersion.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D9179BAC();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t sub_1D8F8B3B8(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1D9179BAC();
  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

unint64_t sub_1D8F8B478()
{
  result = qword_1ECAB7BB8;
  if (!qword_1ECAB7BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7BB8);
  }

  return result;
}

unint64_t MetricsIDType.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD000000000000019;
}

unint64_t sub_1D8F8B570()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD000000000000019;
}

uint64_t MetricsIDType.init(from:)(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v4 = sub_1D9179ADC();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v4;
}

uint64_t MetricsIDType.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

unint64_t sub_1D8F8B7FC()
{
  result = qword_1ECAB7BC0;
  if (!qword_1ECAB7BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7BC0);
  }

  return result;
}

unint64_t MetricsImpressionsQueue.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD000000000000023;
}

unint64_t sub_1D8F8B8F8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD000000000000023;
}

uint64_t MetricsImpressionsQueue.init(from:)(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v4 = sub_1D9179ADC();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v4;
}

uint64_t MetricsImpressionsQueue.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

unint64_t sub_1D8F8BB3C()
{
  result = qword_1ECAB7BC8;
  if (!qword_1ECAB7BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7BC8);
  }

  return result;
}

unint64_t MetricsOfferType.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001CLL;
}

unint64_t sub_1D8F8BC38()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001CLL;
}

uint64_t MetricsOfferType.init(from:)(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v4 = sub_1D9179ADC();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v4;
}

uint64_t MetricsOfferType.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

unint64_t sub_1D8F8BEAC()
{
  result = qword_1ECAB7BD0;
  if (!qword_1ECAB7BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7BD0);
  }

  return result;
}

unint64_t MetricsPageContext.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001ELL;
}

unint64_t sub_1D8F8BFA8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001ELL;
}

uint64_t MetricsPageContext.init(from:)(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v4 = sub_1D9179ADC();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v4;
}

uint64_t MetricsPageContext.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

unint64_t sub_1D8F8C328()
{
  result = qword_1ECAB7BD8;
  if (!qword_1ECAB7BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7BD8);
  }

  return result;
}

unsigned __int8 *MetricsPageID.adamID.getter(uint64_t a1, unint64_t a2)
{

  v4 = sub_1D8FE6808(a1, a2);

  return v4;
}

uint64_t static MetricsPageID.unique()()
{
  v0 = sub_1D9176EAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9176E9C();
  sub_1D9176E5C();
  (*(v1 + 8))(v4, v0);
  v5 = sub_1D917827C();
  v7 = v6;

  v10[4] = v5;
  v10[5] = v7;
  v10[2] = 45;
  v10[3] = 0xE100000000000000;
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_1D8D447DC();
  v8 = sub_1D917922C();

  return v8;
}

unint64_t MetricsPageID.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD000000000000019;
}

unint64_t sub_1D8F8C630()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD000000000000019;
}

uint64_t MetricsPageID.init(from:)(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v4 = sub_1D9179ADC();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v4;
}

uint64_t MetricsPageID.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

unint64_t sub_1D8F8CB08()
{
  result = qword_1ECAB7BE0;
  if (!qword_1ECAB7BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7BE0);
  }

  return result;
}

unint64_t MetricsPageType.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001BLL;
}

unint64_t sub_1D8F8CC04()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001BLL;
}

uint64_t MetricsPageType.init(from:)(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v4 = sub_1D9179ADC();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v4;
}

uint64_t MetricsPageType.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

unint64_t sub_1D8F8D054()
{
  result = qword_1ECAB7BE8;
  if (!qword_1ECAB7BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7BE8);
  }

  return result;
}

unint64_t MetricsPageVariant.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001ELL;
}

unint64_t sub_1D8F8D150()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001ELL;
}

uint64_t MetricsPageVariant.init(from:)(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v4 = sub_1D9179ADC();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v4;
}

uint64_t MetricsPageVariant.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

unint64_t sub_1D8F8D3C8()
{
  result = qword_1ECAB7BF0;
  if (!qword_1ECAB7BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7BF0);
  }

  return result;
}

unint64_t MetricsSearchHintsFilter.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD000000000000024;
}

unint64_t sub_1D8F8D4C4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD000000000000024;
}

uint64_t MetricsSearchHintsFilter.init(from:)(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v4 = sub_1D9179ADC();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v4;
}

uint64_t MetricsSearchHintsFilter.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

unint64_t sub_1D8F8D72C()
{
  result = qword_1ECAB7BF8;
  if (!qword_1ECAB7BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7BF8);
  }

  return result;
}

unsigned __int8 *MetricsTargetID.adamID.getter(uint64_t a1, unint64_t a2)
{

  v4 = sub_1D8FE6808(a1, a2);

  return v4;
}

uint64_t MetricsTargetID.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  sub_1D917852C();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

unint64_t MetricsTargetID.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001BLL;
}

unint64_t sub_1D8F8D950()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001BLL;
}

uint64_t MetricsTargetID.init(from:)(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v4 = sub_1D9179ADC();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v4;
}

uint64_t MetricsTargetID.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

unint64_t sub_1D8F8DF1C()
{
  result = qword_1ECAB7C00;
  if (!qword_1ECAB7C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7C00);
  }

  return result;
}

unint64_t MetricsTargetType.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001DLL;
}

unint64_t sub_1D8F8E018()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD00000000000001DLL;
}

uint64_t MetricsTargetType.init(from:)(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v4 = sub_1D9179ADC();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v4;
}

uint64_t MetricsTargetType.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

unint64_t sub_1D8F8E488()
{
  result = qword_1ECAB7C08;
  if (!qword_1ECAB7C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7C08);
  }

  return result;
}

unint64_t MetricsTopic.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD000000000000018;
}

unint64_t sub_1D8F8E584()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD000000000000018;
}

uint64_t MetricsTopic.init(from:)(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v4 = sub_1D9179ADC();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v4;
}

uint64_t MetricsTopic.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D9179B5C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

unint64_t sub_1D8F8E850()
{
  result = qword_1ECAB7C10;
  if (!qword_1ECAB7C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7C10);
  }

  return result;
}

uint64_t MetricsWidgetContext.widgetID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MetricsWidgetContext.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MetricsWidgetContext.subjectID.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

void __swiftcall MetricsWidgetContext.init(widgetID:name:size:subjectID:)(PodcastsFoundation::MetricsWidgetContext *__return_ptr retstr, Swift::String widgetID, Swift::String name, Swift::Int size, Swift::String_optional subjectID)
{
  retstr->widgetID = widgetID;
  retstr->name = name;
  retstr->size = size;
  retstr->subjectID = subjectID;
}

uint64_t sub_1D8F8E958()
{
  v1 = 0x4449746567646977;
  v2 = 1702521203;
  if (*v0 != 2)
  {
    v2 = 0x497463656A627573;
  }

  if (*v0)
  {
    v1 = 1701667182;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D8F8E9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8F901B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8F8E9F0(uint64_t a1)
{
  v2 = sub_1D8F8FF2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F8EA2C(uint64_t a1)
{
  v2 = sub_1D8F8FF2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MetricsWidgetContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C18, &qword_1D919B580);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v15[0] = v1[6];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8F8FF2C();
  sub_1D9179F1C();
  v19 = 0;
  v13 = v15[5];
  sub_1D91799BC();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v18 = 1;
  sub_1D91799BC();
  v17 = 2;
  sub_1D91799EC();
  v16 = 3;
  sub_1D917994C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t MetricsWidgetContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C20, &qword_1D919B588);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8F8FF2C();
  sub_1D9179EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v32 = 0;
  v11 = sub_1D91798BC();
  v28 = v12;
  v31 = 1;
  v26 = sub_1D91798BC();
  v27 = v13;
  v30 = 2;
  v25 = sub_1D91798EC();
  v29 = 3;
  v14 = sub_1D917984C();
  v17 = v16;
  v18 = *(v6 + 8);
  v24 = v14;
  v18(v9, v5);
  v20 = v27;
  v19 = v28;
  *a2 = v11;
  a2[1] = v19;
  v21 = v25;
  a2[2] = v26;
  a2[3] = v20;
  v22 = v24;
  a2[4] = v21;
  a2[5] = v22;
  a2[6] = v17;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

Swift::String_optional __swiftcall MetricsWidgetContext.encodeToString()()
{
  v15 = v0[1];
  v16 = *v0;
  v14 = v0[2];
  v1 = *(v0 + 6);
  v2 = sub_1D91765CC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1D91765BC();
  sub_1D8F8FF80();
  v5 = sub_1D91765AC();
  v7 = v6;

  v8 = sub_1D9176C7C();
  v10 = v9;
  sub_1D8D7567C(v5, v7);
  v11 = v10;
  v12 = v8;
  result.value._object = v11;
  result.value._countAndFlagsBits = v12;
  return result;
}

double static MetricsWidgetContext.decodeFromString(_:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (!a1 || (v3 = sub_1D9176C4C(), v4 >> 60 == 15))
  {
    *(a2 + 48) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  else
  {
    v5 = v3;
    v6 = v4;
    v7 = sub_1D917656C();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_1D917655C();
    sub_1D8F8FFD4();
    sub_1D917654C();
    sub_1D8D75668(v5, v6);

    *a2 = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    result = *&v14;
    *(a2 + 32) = v14;
    *(a2 + 48) = v15;
  }

  return result;
}

uint64_t URL.widgetContext.getter@<X0>(_OWORD *a1@<X8>)
{
  v46 = sub_1D91766EC();
  v2 = *(v46 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C28, &unk_1D919B590);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76F0, &qword_1D91B6700);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  sub_1D917673C();
  v45 = v16;
  sub_1D8F90028(v16, v13);
  v17 = sub_1D91767FC();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v13, 1, v17) == 1)
  {
    sub_1D8D08A50(v13, &qword_1ECAB76F0, &qword_1D91B6700);
LABEL_19:
    result = sub_1D8D08A50(v45, &qword_1ECAB76F0, &qword_1D91B6700);
    *a1 = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *(a1 + 6) = 0;
    return result;
  }

  v44 = v9;
  v19 = sub_1D917670C();
  result = (*(v18 + 8))(v13, v17);
  if (!v19)
  {
    goto LABEL_19;
  }

  v43 = a1;
  v21 = *(v19 + 16);
  v22 = v46;
  if (!v21)
  {
LABEL_11:

    v28 = 1;
    a1 = v43;
    v29 = v44;
LABEL_14:
    (*(v2 + 56))(v29, v28, 1, v22);
    if ((*(v2 + 48))(v29, 1, v22) == 1)
    {
      sub_1D8D08A50(v29, &qword_1ECAB7C28, &unk_1D919B590);
    }

    else
    {
      sub_1D91766DC();
      v31 = v30;
      (*(v2 + 8))(v29, v22);
      if (v31)
      {
        v32 = sub_1D9176C4C();
        if (v33 >> 60 != 15)
        {
          v34 = v32;
          v35 = v33;
          v36 = sub_1D917656C();
          v37 = *(v36 + 48);
          v38 = *(v36 + 52);
          swift_allocObject();
          sub_1D917655C();
          sub_1D8F8FFD4();
          sub_1D917654C();
          sub_1D8D75668(v34, v35);

          result = sub_1D8D08A50(v45, &qword_1ECAB76F0, &qword_1D91B6700);
          v39 = v48;
          v40 = v49;
          v41 = v51;
          v42 = v43;
          *v43 = v47;
          *(v42 + 2) = v39;
          *(v42 + 3) = v40;
          v42[2] = v50;
          *(v42 + 6) = v41;
          return result;
        }

        a1 = v43;
      }
    }

    goto LABEL_19;
  }

  v23 = 0;
  v24 = 0x6F43746567646977;
  while (v23 < *(v19 + 16))
  {
    (*(v2 + 16))(v5, v19 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v23, v22);
    if (sub_1D91766CC() == v24 && v25 == 0xED0000747865746ELL)
    {

LABEL_13:

      v29 = v44;
      v22 = v46;
      (*(v2 + 32))(v44, v5, v46);
      v28 = 0;
      a1 = v43;
      goto LABEL_14;
    }

    v26 = v24;
    v27 = sub_1D9179ACC();

    if (v27)
    {
      goto LABEL_13;
    }

    ++v23;
    v22 = v46;
    result = (*(v2 + 8))(v5, v46);
    v24 = v26;
    if (v21 == v23)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t URL.appending(widgetContext:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v62 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v59 = &v53 - v7;
  v8 = sub_1D91766EC();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76F0, &qword_1D91B6700);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v53 - v15;
  v17 = sub_1D91767FC();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v22 = a1[1];
  v23 = a1[2];
  v24 = a1[3];
  v25 = a1[4];
  v60 = a1[5];
  v61 = v3;
  v26 = a1[6];
  v28 = v27;
  v30 = v29;
  sub_1D917673C();
  if ((*(v28 + 48))(v16, 1, v30) == 1)
  {
    sub_1D8D08A50(v16, &qword_1ECAB76F0, &qword_1D91B6700);
    v35 = sub_1D9176C2C();
    return (*(*(v35 - 8) + 16))(v62, v61, v35);
  }

  else
  {
    (*(v28 + 32))(v20, v16, v30);
    v31 = sub_1D91765CC();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    v54 = v20;
    v34 = v28;
    sub_1D91765BC();
    v63 = v21;
    v64 = v22;
    v65 = v23;
    v66 = v24;
    v67 = v25;
    v68 = v60;
    v69 = v26;
    sub_1D8F8FF80();
    v37 = sub_1D91765AC();
    v39 = v38;
    v60 = v30;

    sub_1D9176C7C();
    sub_1D8D7567C(v37, v39);
    v40 = v56;
    sub_1D91766BC();

    v41 = v54;
    v42 = sub_1D917670C();
    if (v42)
    {
      v43 = v42;
    }

    else
    {
      v43 = MEMORY[0x1E69E7CC0];
    }

    v45 = v57;
    v44 = v58;
    v46 = v55;
    (*(v57 + 16))(v55, v40, v58);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1D8D8EDF4(0, v43[2] + 1, 1, v43);
    }

    v47 = v59;
    v49 = v43[2];
    v48 = v43[3];
    if (v49 >= v48 >> 1)
    {
      v43 = sub_1D8D8EDF4(v48 > 1, v49 + 1, 1, v43);
    }

    v43[2] = v49 + 1;
    (*(v45 + 32))(v43 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v49, v46, v44);
    sub_1D917671C();
    sub_1D917674C();
    (*(v45 + 8))(v40, v44);
    (*(v34 + 8))(v41, v60);
    v50 = sub_1D9176C2C();
    v51 = *(v50 - 8);
    v52 = *(v51 + 48);
    if (v52(v47, 1, v50) == 1)
    {
      (*(v51 + 16))(v62, v61, v50);
      result = v52(v47, 1, v50);
      if (result != 1)
      {
        return sub_1D8D08A50(v47, &unk_1ECAB5910, &qword_1D9188C90);
      }
    }

    else
    {
      return (*(v51 + 32))(v62, v47, v50);
    }
  }

  return result;
}

unint64_t MetricsWidgetContext.metricsDictionary.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189060;
  *(inited + 32) = 0x6449746567646977;
  v9 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  *(inited + 72) = v9;
  *(inited + 80) = 1701667182;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = v4;
  *(inited + 104) = v3;
  *(inited + 120) = v9;
  *(inited + 128) = 1702521203;
  *(inited + 168) = MEMORY[0x1E69E6530];
  *(inited + 136) = 0xE400000000000000;
  *(inited + 144) = v5;

  v10 = sub_1D8E2696C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42E8, &qword_1D9193650);
  swift_arrayDestroy();
  v16 = v10;
  if (v7)
  {
    v15 = v9;
    *&v14 = v6;
    *(&v14 + 1) = v7;
    sub_1D8D65618(&v14, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D8F502C0(v13, 0x497463656A627573, 0xE900000000000064, isUniquelyReferenced_nonNull_native);
    return v10;
  }

  else
  {
    sub_1D8F7ECD4(&v14);
    sub_1D8D08A50(&v14, &qword_1ECAB57F0, &unk_1D9190AA0);
    return v16;
  }
}

uint64_t _s18PodcastsFoundation20MetricsWidgetContextV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D9179ACC() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v7 && v3 == v8)
  {
    if (v4 != v10)
    {
      return 0;
    }

LABEL_10:
    if (v6)
    {
      if (!v11 || (v5 != v9 || v6 != v11) && (sub_1D9179ACC() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    return 1;
  }

  v12 = sub_1D9179ACC();
  result = 0;
  if ((v12 & 1) != 0 && v4 == v10)
  {
    goto LABEL_10;
  }

  return result;
}

unint64_t sub_1D8F8FF2C()
{
  result = qword_1EDCD6288;
  if (!qword_1EDCD6288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD6288);
  }

  return result;
}

unint64_t sub_1D8F8FF80()
{
  result = qword_1EDCD3970;
  if (!qword_1EDCD3970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD3970);
  }

  return result;
}

unint64_t sub_1D8F8FFD4()
{
  result = qword_1ECAB1DB0;
  if (!qword_1ECAB1DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1DB0);
  }

  return result;
}

uint64_t sub_1D8F90028(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76F0, &qword_1D91B6700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D8F900AC()
{
  result = qword_1ECAB7C30;
  if (!qword_1ECAB7C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7C30);
  }

  return result;
}

unint64_t sub_1D8F90104()
{
  result = qword_1EDCD6278;
  if (!qword_1EDCD6278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD6278);
  }

  return result;
}

unint64_t sub_1D8F9015C()
{
  result = qword_1EDCD6280;
  if (!qword_1EDCD6280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD6280);
  }

  return result;
}

uint64_t sub_1D8F901B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449746567646977 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x497463656A627573 && a2 == 0xE900000000000044)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

uint64_t PageContextTracker.__allocating_init(historySize:)(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 64;
  }

  else
  {
    v2 = a1;
  }

  v3 = swift_allocObject();
  *(v3 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C38, &qword_1D919B7B0);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = v4;
  return v3;
}

uint64_t PageContextTracker.copy()()
{
  v1 = *v0;
  v2 = v0[2];
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 24));
  v4 = v0[3];
  v5 = swift_allocObject();
  *(v5 + 24) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C38, &qword_1D919B7B0);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = v3;
  *(v5 + 16) = v6;
  return v5;
}

unint64_t sub_1D8F90464(unint64_t result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_8:
      __break(1u);
      return result;
    }

    v2 = *(*v1 + 16);
    v3 = v2 >= result;
    result = v2 - result;
    if (!v3)
    {
      goto LABEL_8;
    }

    return sub_1D8F908B0(result, v2, sub_1D8D58388, sub_1D8F906DC);
  }

  return result;
}

PodcastsFoundation::MetricsPageContext_optional __swiftcall PageContextTracker.pop()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  if (v2[2])
  {
    v3 = v2[4];
    v4 = v2[5];

    sub_1D8F908B0(0, 1, sub_1D8D58388, sub_1D8F906DC);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  os_unfair_lock_unlock((v1 + 24));
  v6 = v3;
  v7 = v4;
  result.value.rawValue._object = v7;
  result.value.rawValue._countAndFlagsBits = v6;
  result.is_nil = v5;
  return result;
}

Swift::Void __swiftcall PageContextTracker.reset()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t PageContextTracker.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PageContextTracker.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_1D8F90608(unint64_t result, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *v5;
  v9 = v8 + 32 + 16 * result;
  if (v7)
  {
    v10 = *(v8 + 16);
    v11 = __OFSUB__(v10, a2);
    v12 = v10 - a2;
    if (!v11)
    {
      result = v9 + 16 * a3;
      v13 = (v8 + 32 + 16 * a2);
      if (result != v13 || result >= v13 + 16 * v12)
      {
        v15 = a3;
        v16 = a5;
        v17 = a4;
        result = memmove(result, v13, 16 * v12);
        a3 = v15;
        a4 = v17;
        a5 = v16;
      }

      v18 = *(v8 + 16);
      v11 = __OFADD__(v18, v7);
      v19 = v18 + v7;
      if (!v11)
      {
        *(v8 + 16) = v19;
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
  if (a3 >= 1)
  {
    *v9 = a4;
    *(v9 + 8) = a5;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1D8F906DC(unint64_t result, uint64_t a2, uint64_t a3)
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

unint64_t sub_1D8F907B4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + (result << 6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5FA0, &qword_1D9191F18);
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

  result = v8 + (a3 << 6);
  v13 = (v7 + 32 + (a2 << 6));
  v14 = v12 << 6;
  v15 = &v13[64 * v12];
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8F908B0(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

PodcastsFoundation::ContentRating_optional __swiftcall ContentRating.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1D917980C();

  if (v1 == 1)
  {
    v2.value = PodcastsFoundation_ContentRating_explicit;
  }

  else
  {
    v2.value = PodcastsFoundation_ContentRating_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t ContentRating.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x746963696C707865;
  }

  else
  {
    return 0x6E61656C63;
  }
}

uint64_t sub_1D8F90A10(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x746963696C707865;
  }

  else
  {
    v4 = 0x6E61656C63;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x746963696C707865;
  }

  else
  {
    v6 = 0x6E61656C63;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();
  }

  return v9 & 1;
}

unint64_t sub_1D8F90AB8()
{
  result = qword_1ECAB7C40;
  if (!qword_1ECAB7C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7C40);
  }

  return result;
}

uint64_t sub_1D8F90B0C()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8F90B8C()
{
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8F90BF8()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8F90C74@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D917980C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1D8F90CD4(uint64_t *a1@<X8>)
{
  v2 = 0x6E61656C63;
  if (*v1)
  {
    v2 = 0x746963696C707865;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1D8F90DD0()
{
  result = qword_1EDCD5560[0];
  if (!qword_1EDCD5560[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCD5560);
  }

  return result;
}

uint64_t DisplayType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 1701147238;
  }

  if (a1 == 1)
  {
    return 1684627824;
  }

  return 0x646972627968;
}

uint64_t sub_1D8F90E68(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1684627824;
  if (v2 != 1)
  {
    v5 = 0x646972627968;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1701147238;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1684627824;
  if (*a2 != 1)
  {
    v8 = 0x646972627968;
    v3 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701147238;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D8F90F48()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8F90FD8()
{
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8F91054()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8F910E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D8D39C58();
  *a2 = result;
  return result;
}

void sub_1D8F91110(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1684627824;
  if (v2 != 1)
  {
    v5 = 0x646972627968;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701147238;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1D8F91210()
{
  result = qword_1ECAB7C48;
  if (!qword_1ECAB7C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7C48);
  }

  return result;
}

unint64_t sub_1D8F91274()
{
  result = qword_1ECAB2AB0;
  if (!qword_1ECAB2AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2AB0);
  }

  return result;
}

PodcastsFoundation::SectionContext_optional __swiftcall SectionContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t SectionContext.rawValue.getter()
{
  if (*v0)
  {
    result = 0x72656C69617254;
  }

  else
  {
    result = 0x6E6F73616553;
  }

  *v0;
  return result;
}

uint64_t sub_1D8F91364(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x72656C69617254;
  }

  else
  {
    v4 = 0x6E6F73616553;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x72656C69617254;
  }

  else
  {
    v6 = 0x6E6F73616553;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();
  }

  return v9 & 1;
}

uint64_t sub_1D8F91408()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8F91488()
{
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8F914F4()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8F91570@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D917980C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1D8F915D0(uint64_t *a1@<X8>)
{
  v2 = 0x6E6F73616553;
  if (*v1)
  {
    v2 = 0x72656C69617254;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1D8F91610(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x656D75736572;
    v6 = 7824750;
    if (a1 != 2)
    {
      v6 = 1954047342;
    }

    if (a1)
    {
      v5 = 0x6961674179616C70;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x796C746E65636572;
    v2 = 0x6465766173;
    if (a1 != 7)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0x6465776F6C6C6F66;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D8F9173C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8F94000(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8F91770(uint64_t a1)
{
  v2 = sub_1D8F93430();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F917AC(uint64_t a1)
{
  v2 = sub_1D8F93430();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F917F4(uint64_t a1)
{
  v2 = sub_1D8F93580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F91830(uint64_t a1)
{
  v2 = sub_1D8F93580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F9186C(uint64_t a1)
{
  v2 = sub_1D8F9367C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F918A8(uint64_t a1)
{
  v2 = sub_1D8F9367C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F918E4(uint64_t a1)
{
  v2 = sub_1D8F93628();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F91920(uint64_t a1)
{
  v2 = sub_1D8F93628();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F9195C(uint64_t a1)
{
  v2 = sub_1D8F936D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F91998(uint64_t a1)
{
  v2 = sub_1D8F936D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F919F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x63537478654E7075 && a2 == 0xEB0000000065726FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D8F91A80(uint64_t a1)
{
  v2 = sub_1D8F93484();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F91ABC(uint64_t a1)
{
  v2 = sub_1D8F93484();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F91AF8(uint64_t a1)
{
  v2 = sub_1D8F935D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F91B34(uint64_t a1)
{
  v2 = sub_1D8F935D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F91B70(uint64_t a1)
{
  v2 = sub_1D8F9352C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F91BAC(uint64_t a1)
{
  v2 = sub_1D8F9352C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F91BE8(uint64_t a1)
{
  v2 = sub_1D8F93724();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F91C24(uint64_t a1)
{
  v2 = sub_1D8F93724();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F91C60(uint64_t a1)
{
  v2 = sub_1D8F934D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F91C9C(uint64_t a1)
{
  v2 = sub_1D8F934D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EpisodeListenNowReason.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C50, &qword_1D919BA70);
  v76 = *(v3 - 8);
  v77 = v3;
  v4 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v75 = &v52 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C58, &qword_1D919BA78);
  v73 = *(v6 - 8);
  v74 = v6;
  v7 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v72 = &v52 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C60, &qword_1D919BA80);
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v52 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C68, &qword_1D919BA88);
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v52 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C70, &qword_1D919BA90);
  v64 = *(v15 - 8);
  v65 = v15;
  v16 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v63 = &v52 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C78, &qword_1D919BA98);
  v61 = *(v18 - 8);
  v62 = v18;
  v19 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v60 = &v52 - v20;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C80, &qword_1D919BAA0);
  v58 = *(v59 - 8);
  v21 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v52 - v22;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C88, &qword_1D919BAA8);
  v55 = *(v56 - 8);
  v23 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v52 - v24;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C90, &qword_1D919BAB0);
  v52 = *(v53 - 8);
  v25 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v27 = &v52 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7C98, &qword_1D919BAB8);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v52 - v31;
  v33 = *v1;
  v34 = *(v1 + 8);
  v35 = a1;
  v37 = a1[3];
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(v35, v37);
  sub_1D8F93430();
  sub_1D9179F1C();
  if (v34 != 1)
  {
    v86 = 8;
    sub_1D8F93484();
    v42 = v75;
    sub_1D917993C();
    v43 = v77;
    sub_1D91799DC();
    (*(v76 + 8))(v42, v43);
    return (*(v29 + 8))(v32, v28);
  }

  v38 = (v29 + 8);
  if (v33 <= 3)
  {
    if (v33 > 1)
    {
      if (v33 != 2)
      {
        v81 = 3;
        sub_1D8F93628();
        v51 = v60;
        sub_1D917993C();
        v50 = v62;
        v39 = *(v61 + 8);
        v40 = v51;
        goto LABEL_18;
      }

      v80 = 2;
      sub_1D8F9367C();
      v48 = v57;
      sub_1D917993C();
      v39 = *(v58 + 8);
      v40 = v48;
      v41 = &v89;
    }

    else if (v33)
    {
      v79 = 1;
      sub_1D8F936D0();
      v49 = v54;
      sub_1D917993C();
      v39 = *(v55 + 8);
      v40 = v49;
      v41 = &v88;
    }

    else
    {
      v78 = 0;
      sub_1D8F93724();
      sub_1D917993C();
      v39 = *(v52 + 8);
      v40 = v27;
      v41 = &v87;
    }

    v50 = *(v41 - 32);
LABEL_18:
    v39(v40, v50);
    return (*v38)(v32, v28);
  }

  if (v33 > 5)
  {
    if (v33 == 6)
    {
      v84 = 6;
      sub_1D8F9352C();
      v45 = v69;
      sub_1D917993C();
      v47 = v70;
      v46 = v71;
    }

    else
    {
      v85 = 7;
      sub_1D8F934D8();
      v45 = v72;
      sub_1D917993C();
      v47 = v73;
      v46 = v74;
    }
  }

  else if (v33 == 4)
  {
    v82 = 4;
    sub_1D8F935D4();
    v45 = v63;
    sub_1D917993C();
    v47 = v64;
    v46 = v65;
  }

  else
  {
    v83 = 5;
    sub_1D8F93580();
    v45 = v66;
    sub_1D917993C();
    v47 = v67;
    v46 = v68;
  }

  (*(v47 + 8))(v45, v46);
  return (*v38)(v32, v28);
}

uint64_t EpisodeListenNowReason.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7CF0, &qword_1D919BAC0);
  v4 = *(v3 - 8);
  v80 = v3;
  v81 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v83 = &v62 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7CF8, &qword_1D919BAC8);
  v78 = *(v7 - 8);
  v79 = v7;
  v8 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v84 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7D00, &qword_1D919BAD0);
  v76 = *(v10 - 8);
  v77 = v10;
  v11 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v88 = &v62 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7D08, &qword_1D919BAD8);
  v74 = *(v75 - 8);
  v13 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v87 = &v62 - v14;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7D10, &qword_1D919BAE0);
  v73 = *(v72 - 8);
  v15 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v86 = &v62 - v16;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7D18, &qword_1D919BAE8);
  v70 = *(v71 - 8);
  v17 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v85 = &v62 - v18;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7D20, &qword_1D919BAF0);
  v68 = *(v69 - 8);
  v19 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v82 = &v62 - v20;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7D28, &qword_1D919BAF8);
  v66 = *(v67 - 8);
  v21 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v23 = &v62 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7D30, &qword_1D919BB00);
  v65 = *(v24 - 8);
  v25 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v62 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7D38, &unk_1D919BB08);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v62 - v31;
  v33 = a1[3];
  v34 = a1[4];
  v90 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_1D8F93430();
  v35 = v91;
  sub_1D9179EEC();
  if (v35)
  {
    goto LABEL_10;
  }

  v63 = v27;
  v62 = v24;
  v64 = v23;
  v36 = v85;
  v37 = v86;
  v39 = v87;
  v38 = v88;
  v91 = v29;
  v40 = v89;
  v41 = sub_1D917991C();
  v42 = (2 * *(v41 + 16)) | 1;
  v93 = v41;
  v94 = v41 + 32;
  v95 = 0;
  v96 = v42;
  v43 = sub_1D8E89BDC();
  if (v43 == 9 || v95 != v96 >> 1)
  {
    v48 = sub_1D917951C();
    swift_allocError();
    v50 = v49;
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5400, &qword_1D918EE50) + 48);
    *v50 = &type metadata for EpisodeListenNowReason;
    sub_1D917983C();
    sub_1D91794FC();
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x1E69E6AF8], v48);
    swift_willThrow();
    (*(v91 + 8))(v32, v28);
    swift_unknownObjectRelease();
LABEL_10:
    v52 = v90;
    return __swift_destroy_boxed_opaque_existential_1Tm(v52);
  }

  if (v43 <= 3u)
  {
    if (v43 > 1u)
    {
      v55 = v91;
      if (v43 == 2)
      {
        v92 = 2;
        sub_1D8F9367C();
        v56 = v82;
        sub_1D917982C();
        (*(v68 + 8))(v56, v69);
        (*(v55 + 8))(v32, v28);
        swift_unknownObjectRelease();
        v46 = 1;
        v47 = 2;
      }

      else
      {
        v92 = 3;
        sub_1D8F93628();
        sub_1D917982C();
        (*(v70 + 8))(v36, v71);
        (*(v55 + 8))(v32, v28);
        swift_unknownObjectRelease();
        v46 = 1;
        v47 = 3;
      }
    }

    else if (v43)
    {
      v92 = 1;
      sub_1D8F936D0();
      v58 = v64;
      sub_1D917982C();
      (*(v66 + 8))(v58, v67);
      (*(v91 + 8))(v32, v28);
      swift_unknownObjectRelease();
      v46 = 1;
      v47 = 1;
    }

    else
    {
      v92 = 0;
      sub_1D8F93724();
      v54 = v63;
      sub_1D917982C();
      (*(v65 + 8))(v54, v62);
      (*(v91 + 8))(v32, v28);
      swift_unknownObjectRelease();
      v46 = 1;
      v47 = 0;
    }
  }

  else if (v43 <= 5u)
  {
    v57 = v91;
    if (v43 == 4)
    {
      v92 = 4;
      sub_1D8F935D4();
      sub_1D917982C();
      (*(v73 + 8))(v37, v72);
      (*(v57 + 8))(v32, v28);
      swift_unknownObjectRelease();
      v46 = 1;
      v47 = 4;
    }

    else
    {
      v92 = 5;
      sub_1D8F93580();
      sub_1D917982C();
      (*(v74 + 8))(v39, v75);
      (*(v57 + 8))(v32, v28);
      swift_unknownObjectRelease();
      v46 = 1;
      v47 = 5;
    }
  }

  else
  {
    v44 = v91;
    if (v43 == 6)
    {
      v92 = 6;
      sub_1D8F9352C();
      sub_1D917982C();
      (*(v76 + 8))(v38, v77);
      (*(v44 + 8))(v32, v28);
      swift_unknownObjectRelease();
      v46 = 1;
      v47 = 6;
    }

    else if (v43 == 7)
    {
      v92 = 7;
      sub_1D8F934D8();
      v45 = v84;
      sub_1D917982C();
      (*(v78 + 8))(v45, v79);
      (*(v44 + 8))(v32, v28);
      swift_unknownObjectRelease();
      v46 = 1;
      v47 = 7;
    }

    else
    {
      v92 = 8;
      sub_1D8F93484();
      v59 = v83;
      sub_1D917982C();
      v60 = v80;
      sub_1D91798DC();
      v47 = v61;
      (*(v81 + 8))(v59, v60);
      (*(v44 + 8))(v32, v28);
      swift_unknownObjectRelease();
      v46 = 0;
    }
  }

  v52 = v90;
  *v40 = v47;
  *(v40 + 8) = v46;
  return __swift_destroy_boxed_opaque_existential_1Tm(v52);
}

BOOL _s18PodcastsFoundation22EpisodeListenNowReasonO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      v6 = *a1;
      v7 = *a2;
      return v2 == v3;
    }

    return 0;
  }

  if (*&v2 > 3)
  {
    if (*&v2 > 5)
    {
      if (*&v2 == 6)
      {
        if (*&v3 != 6)
        {
          v4 = 0;
        }

        return (v4 & 1) != 0;
      }

      if (*&v3 <= 6uLL)
      {
        v4 = 0;
      }

      return (v4 & 1) != 0;
    }

    else
    {
      if (*&v2 == 4)
      {
        if (*&v3 != 4)
        {
          v4 = 0;
        }

        return (v4 & 1) != 0;
      }

      if (*&v3 != 5)
      {
        v4 = 0;
      }

      return (v4 & 1) != 0;
    }
  }

  else
  {
    if (*&v2 <= 1)
    {
      if (v2 == 0.0)
      {
        if (v3 != 0.0)
        {
          v4 = 0;
        }

        return (v4 & 1) != 0;
      }

      if (*&v3 != 1)
      {
        v4 = 0;
      }

      return (v4 & 1) != 0;
    }

    if (*&v2 == 2)
    {
      if (*&v3 != 2)
      {
        v4 = 0;
      }

      return (v4 & 1) != 0;
    }

    if (*&v3 != 3)
    {
      v4 = 0;
    }

    return (v4 & 1) != 0;
  }
}

unint64_t sub_1D8F93430()
{
  result = qword_1ECAB7CA0;
  if (!qword_1ECAB7CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7CA0);
  }

  return result;
}

unint64_t sub_1D8F93484()
{
  result = qword_1ECAB7CA8;
  if (!qword_1ECAB7CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7CA8);
  }

  return result;
}

unint64_t sub_1D8F934D8()
{
  result = qword_1ECAB7CB0;
  if (!qword_1ECAB7CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7CB0);
  }

  return result;
}

unint64_t sub_1D8F9352C()
{
  result = qword_1ECAB7CB8;
  if (!qword_1ECAB7CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7CB8);
  }

  return result;
}

unint64_t sub_1D8F93580()
{
  result = qword_1ECAB7CC0;
  if (!qword_1ECAB7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7CC0);
  }

  return result;
}

unint64_t sub_1D8F935D4()
{
  result = qword_1ECAB7CC8;
  if (!qword_1ECAB7CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7CC8);
  }

  return result;
}

unint64_t sub_1D8F93628()
{
  result = qword_1ECAB7CD0;
  if (!qword_1ECAB7CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7CD0);
  }

  return result;
}

unint64_t sub_1D8F9367C()
{
  result = qword_1ECAB7CD8;
  if (!qword_1ECAB7CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7CD8);
  }

  return result;
}

unint64_t sub_1D8F936D0()
{
  result = qword_1ECAB7CE0;
  if (!qword_1ECAB7CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7CE0);
  }

  return result;
}

unint64_t sub_1D8F93724()
{
  result = qword_1ECAB7CE8;
  if (!qword_1ECAB7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7CE8);
  }

  return result;
}

unint64_t sub_1D8F9377C()
{
  result = qword_1ECAB7D40;
  if (!qword_1ECAB7D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7D40);
  }

  return result;
}

unint64_t sub_1D8F93874()
{
  result = qword_1ECAB7D48;
  if (!qword_1ECAB7D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7D48);
  }

  return result;
}

unint64_t sub_1D8F938CC()
{
  result = qword_1ECAB7D50;
  if (!qword_1ECAB7D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7D50);
  }

  return result;
}

unint64_t sub_1D8F93924()
{
  result = qword_1ECAB7D58;
  if (!qword_1ECAB7D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7D58);
  }

  return result;
}

unint64_t sub_1D8F9397C()
{
  result = qword_1ECAB7D60;
  if (!qword_1ECAB7D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7D60);
  }

  return result;
}

unint64_t sub_1D8F939D4()
{
  result = qword_1ECAB7D68;
  if (!qword_1ECAB7D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7D68);
  }

  return result;
}

unint64_t sub_1D8F93A2C()
{
  result = qword_1ECAB7D70;
  if (!qword_1ECAB7D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7D70);
  }

  return result;
}

unint64_t sub_1D8F93A84()
{
  result = qword_1ECAB7D78;
  if (!qword_1ECAB7D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7D78);
  }

  return result;
}

unint64_t sub_1D8F93ADC()
{
  result = qword_1ECAB7D80;
  if (!qword_1ECAB7D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7D80);
  }

  return result;
}

unint64_t sub_1D8F93B34()
{
  result = qword_1ECAB7D88;
  if (!qword_1ECAB7D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7D88);
  }

  return result;
}

unint64_t sub_1D8F93B8C()
{
  result = qword_1ECAB7D90;
  if (!qword_1ECAB7D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7D90);
  }

  return result;
}

unint64_t sub_1D8F93BE4()
{
  result = qword_1ECAB7D98;
  if (!qword_1ECAB7D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7D98);
  }

  return result;
}

unint64_t sub_1D8F93C3C()
{
  result = qword_1ECAB7DA0;
  if (!qword_1ECAB7DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7DA0);
  }

  return result;
}

unint64_t sub_1D8F93C94()
{
  result = qword_1ECAB7DA8;
  if (!qword_1ECAB7DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7DA8);
  }

  return result;
}

unint64_t sub_1D8F93CEC()
{
  result = qword_1ECAB7DB0;
  if (!qword_1ECAB7DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7DB0);
  }

  return result;
}

unint64_t sub_1D8F93D44()
{
  result = qword_1ECAB7DB8;
  if (!qword_1ECAB7DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7DB8);
  }

  return result;
}

unint64_t sub_1D8F93D9C()
{
  result = qword_1ECAB7DC0;
  if (!qword_1ECAB7DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7DC0);
  }

  return result;
}

unint64_t sub_1D8F93DF4()
{
  result = qword_1ECAB7DC8;
  if (!qword_1ECAB7DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7DC8);
  }

  return result;
}

unint64_t sub_1D8F93E4C()
{
  result = qword_1ECAB7DD0;
  if (!qword_1ECAB7DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7DD0);
  }

  return result;
}

unint64_t sub_1D8F93EA4()
{
  result = qword_1ECAB7DD8;
  if (!qword_1ECAB7DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7DD8);
  }

  return result;
}

unint64_t sub_1D8F93EFC()
{
  result = qword_1ECAB7DE0;
  if (!qword_1ECAB7DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7DE0);
  }

  return result;
}

unint64_t sub_1D8F93F54()
{
  result = qword_1ECAB7DE8;
  if (!qword_1ECAB7DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7DE8);
  }

  return result;
}

unint64_t sub_1D8F93FAC()
{
  result = qword_1ECAB7DF0;
  if (!qword_1ECAB7DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7DF0);
  }

  return result;
}

uint64_t sub_1D8F94000(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D75736572 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6961674179616C70 && a2 == 0xE90000000000006ELL || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7824750 && a2 == 0xE300000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1954047342 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D91D0790 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6465776F6C6C6F66 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x796C746E65636572 && a2 == 0xED00006465766153 || (sub_1D9179ACC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6465766173 && a2 == 0xE500000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D91D07B0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1D8F9448C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8F958DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8F944C0(uint64_t a1)
{
  v2 = sub_1D8D02070();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F944FC(uint64_t a1)
{
  v2 = sub_1D8D02070();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EpisodeListSettings.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7E00, &qword_1D919C4C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1D8D02070();
  sub_1D9179EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v62);
  }

  v12 = v6;
  v49 = 0;
  sub_1D8F955F0();
  v13 = v5;
  sub_1D91798FC();
  v59 = v52;
  v60 = v53;
  v61 = v54;
  v57 = v50;
  v58 = v51;
  LOBYTE(v31) = 1;
  sub_1D8F95644();
  sub_1D91798FC();
  v14 = LOBYTE(v36[0]);
  type metadata accessor for MTEpisodePubDateLimit(0);
  LOBYTE(v31) = 2;
  sub_1D8D00734(&qword_1ECAB7E18);
  sub_1D91798FC();
  v30 = v14;
  v15 = *&v36[0];
  LOBYTE(v36[0]) = 3;
  v16 = sub_1D91798CC();
  v28 = v15;
  v29 = v16;
  LOBYTE(v36[0]) = 4;
  v27 = sub_1D91798CC();
  LOBYTE(v36[0]) = 5;
  v26 = sub_1D91798CC();
  LOBYTE(v36[0]) = 6;
  HIDWORD(v25) = sub_1D91798CC();
  v47 = 7;
  sub_1D8F95698();
  sub_1D91798FC();
  v17 = v29 & 1;
  v18 = v27 & 1;
  v29 = v27 & 1;
  LOBYTE(v26) = v26 & 1;
  v26 = v26;
  v25 = __PAIR64__(HIDWORD(v25), v17) & 0x1FFFFFFFFLL;
  (*(v12 + 8))(v9, v13);
  v27 = v48;
  v33 = v59;
  v34 = v60;
  LOBYTE(v35[0]) = v61;
  v31 = v57;
  v32 = v58;
  v19 = v30;
  BYTE1(v35[0]) = v30;
  *(v35 + 2) = v55;
  WORD3(v35[0]) = v56;
  v20 = v28;
  *(&v35[0] + 1) = v28;
  LOBYTE(v12) = v25;
  LOBYTE(v35[1]) = v25;
  BYTE1(v35[1]) = v18;
  v21 = BYTE4(v25);
  LOBYTE(v13) = v26;
  BYTE2(v35[1]) = v26;
  BYTE3(v35[1]) = BYTE4(v25);
  BYTE4(v35[1]) = v48;
  *(a2 + 77) = *(v35 + 13);
  v22 = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v22;
  v23 = v32;
  *a2 = v31;
  *(a2 + 16) = v23;
  *(a2 + 64) = v35[0];
  sub_1D8D0841C(&v31, v36);
  __swift_destroy_boxed_opaque_existential_1Tm(v62);
  v36[2] = v59;
  v36[3] = v60;
  v37 = v61;
  v36[0] = v57;
  v36[1] = v58;
  v38 = v19;
  v39 = v55;
  v40 = v56;
  v41 = v20;
  v42 = v12;
  v43 = v29;
  v44 = v13;
  v45 = v21;
  v46 = v27;
  return sub_1D8F3D204(v36);
}

uint64_t sub_1D8F94A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8F95B7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8F94A34(uint64_t a1)
{
  v2 = sub_1D8D0DA60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F94A70(uint64_t a1)
{
  v2 = sub_1D8D0DA60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F94AAC(uint64_t a1)
{
  v2 = sub_1D8F956EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F94AE8(uint64_t a1)
{
  v2 = sub_1D8F956EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F94B24(uint64_t a1)
{
  v2 = sub_1D8D0DAB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F94B60(uint64_t a1)
{
  v2 = sub_1D8D0DAB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F94B9C(uint64_t a1)
{
  v2 = sub_1D8F95740();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F94BD8(uint64_t a1)
{
  v2 = sub_1D8F95740();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EpisodeListSettings.InitialItemBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t EpisodeListSettings.InitialItemBehavior.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7E58, &qword_1D919C4F0);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7E60, &qword_1D919C4F8);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7E68, &qword_1D919C500);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7E70, &unk_1D919C508);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D8D0DA60();
  v20 = v43;
  sub_1D9179EEC();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_1D917991C();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_1D8E89BD4();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_1D917951C();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5400, &qword_1D918EE50) + 48);
      *v30 = &type metadata for EpisodeListSettings.InitialItemBehavior;
      sub_1D917983C();
      sub_1D91794FC();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_1D8F956EC();
          sub_1D917982C();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_1D8D0DAB4();
          v33 = v22;
          sub_1D917982C();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_1D8F95740();
        sub_1D917982C();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v44);
}

id EpisodeListSettings.playPredicate.getter()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = *(v0 + 64);
  if (v3 == 3)
  {
    v13 = *v0;
    v14 = *(v0 + 2);
    v15 = *(v0 + 3);
    v18 = v0[2];
    v21 = v0[3];
    v24 = *(v0 + 65);
    v27 = *(v0 + 81);
    v6 = EpisodeListSettings.predicate.getter();
    v7 = [objc_opt_self() predicateForEpisodeTypeFilter_];
    v8 = [v6 AND_];
  }

  else
  {
    if (v3 != 8)
    {
      goto LABEL_7;
    }

    v4 = EpisodeUserFilter.canonical.getter(*(v0 + 2), *(v0 + 3));
    if (v5)
    {
      if (v5 != 2)
      {
        sub_1D8F95794(v4, 1);
        result = sub_1D91796DC();
        __break(1u);
        return result;
      }

      if (v4 >= 2)
      {
LABEL_7:
        v12 = *v0;
        v17 = v0[2];
        v20 = v0[3];
        v23 = *(v0 + 65);
        v26 = *(v0 + 81);
        return EpisodeListSettings.predicate.getter();
      }
    }

    v11 = *v0;
    v16 = v0[2];
    v19 = v0[3];
    v22 = *(v0 + 65);
    v25 = *(v0 + 81);
    v6 = EpisodeListSettings.predicate.getter();
    v7 = [objc_opt_self() predicateForEpisodeTypeFilter_];
    v8 = [v6 AND_];
  }

  v10 = v8;

  return v10;
}

uint64_t _s18PodcastsFoundation19EpisodeListSettingsV2eeoiySbAC_ACtFZ_0(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 48);
  v27[2] = *(a1 + 32);
  v27[3] = v2;
  v28 = *(a1 + 64);
  v3 = *(a1 + 16);
  v27[0] = *a1;
  v27[1] = v3;
  v4 = *(a1 + 65);
  v5 = *(a1 + 72);
  v24 = *(a1 + 81);
  v25 = *(a1 + 80);
  v23 = *(a1 + 82);
  v26 = *(a1 + 83);
  v6 = *(a1 + 84);
  v7 = a2[3];
  v29[2] = a2[2];
  v29[3] = v7;
  v30 = a2[4].i8[0];
  v8 = a2[1];
  v29[0] = *a2;
  v29[1] = v8;
  v9 = a2[4].i8[1];
  v10 = a2[4].i64[1];
  v11 = a2[5].u8[0];
  v12 = a2[5].u8[1];
  v13 = a2[5].u8[2];
  v14 = a2[5].u8[3];
  v15 = a2[5].i8[4];
  if (_s18PodcastsFoundation15EpisodeListTypeO2eeoiySbAC_ACtFZ_0(v27, v29))
  {
    v22 = v6;
    v16 = EpisodeSortType.rawValue.getter(v4);
    v18 = v17;
    if (v16 == EpisodeSortType.rawValue.getter(v9) && v18 == v19)
    {

      return (v22 == v15) & ~((v5 != v10) | v25 ^ v11 | v24 ^ v12 | v23 ^ v13 | v26 ^ v14);
    }

    v20 = sub_1D9179ACC();

    if (v20)
    {
      return (v22 == v15) & ~((v5 != v10) | v25 ^ v11 | v24 ^ v12 | v23 ^ v13 | v26 ^ v14);
    }
  }

  return 0;
}

unint64_t sub_1D8F955F0()
{
  result = qword_1ECAB7E08;
  if (!qword_1ECAB7E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7E08);
  }

  return result;
}

unint64_t sub_1D8F95644()
{
  result = qword_1ECAB7E10;
  if (!qword_1ECAB7E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7E10);
  }

  return result;
}

unint64_t sub_1D8F95698()
{
  result = qword_1ECAB7E20;
  if (!qword_1ECAB7E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7E20);
  }

  return result;
}

unint64_t sub_1D8F956EC()
{
  result = qword_1ECAB7E48;
  if (!qword_1ECAB7E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7E48);
  }

  return result;
}

unint64_t sub_1D8F95740()
{
  result = qword_1ECAB7E50;
  if (!qword_1ECAB7E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7E50);
  }

  return result;
}

uint64_t sub_1D8F95794(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

unint64_t sub_1D8F957AC()
{
  result = qword_1ECAB7E78;
  if (!qword_1ECAB7E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7E78);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation17EpisodeUserFilterO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

unint64_t sub_1D8F95830()
{
  result = qword_1ECAB7E80;
  if (!qword_1ECAB7E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7E80);
  }

  return result;
}

unint64_t sub_1D8F95888()
{
  result = qword_1ECAB7E88;
  if (!qword_1ECAB7E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7E88);
  }

  return result;
}

uint64_t sub_1D8F958DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657079547473696CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953656691 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C65746144627570 && a2 == 0xEC00000074696D69 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D91D0820 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6961725465646968 && a2 == 0xEC0000007372656CLL || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D91D0840 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D91D0860 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D91D0880 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1D8F95B7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646165486D697274 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746F6D6F7270 && a2 == 0xE700000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D91D08A0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

uint64_t sub_1D8F95C9C(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

void EpisodeListSettings.init(for:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 uuid];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1D917820C();
    v8 = v7;

    LOBYTE(v5) = MTPodcastHidesPlayedEpisodesResolved([a1 hidesPlayedEpisodes]);
    v9 = a1;
    v10 = sub_1D8FA1BFC(v9);
    v12 = v11;
    sub_1D8F95C9C(v10, v11);
    v13 = MTPodcast.episodeSortType.getter();
    sub_1D8F95794(v10, v12);

    *a2 = v6;
    *(a2 + 8) = v8;
    *(a2 + 16) = v10;
    *(a2 + 24) = v12;
    *(a2 + 64) = 8;
    *(a2 + 65) = v13;
    *(a2 + 80) = v5;
    v14 = 3;
    *(a2 + 81) = 0;
  }

  else
  {

    v14 = 0;
    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 84) = 0;
    *(a2 + 80) = 2;
  }

  *(a2 + 72) = v14;
}

BOOL sub_1D8F95DB0(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_1D9176F0C() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_1D8F9C824(&qword_1ECAB80F0, MEMORY[0x1E6969770]);
  }

  while ((sub_1D91781BC() & 1) == 0);
  return v4 != v5;
}

BOOL sub_1D8F95EBC(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (2)
  {
    v6 = v3;
    if (v3-- == 0)
    {
      return v6 != 0;
    }

    v8 = 0xE700000000000000;
    v9 = 0x65746144627570;
    switch(*v4)
    {
      case 1:
        v9 = 0xD000000000000010;
        v8 = 0x80000001D91C8310;
        break;
      case 2:
        v9 = 0xD000000000000012;
        v8 = 0x80000001D91C8330;
        break;
      case 3:
        v9 = 0xD00000000000001BLL;
        v8 = 0x80000001D91C8350;
        break;
      case 4:
        v9 = 0xD000000000000017;
        v8 = 0x80000001D91C8370;
        break;
      case 5:
        v9 = 0xD000000000000014;
        v8 = 0x80000001D91C8390;
        break;
      case 6:
        v9 = 0xD000000000000014;
        v8 = 0x80000001D91C83B0;
        break;
      case 7:
        v9 = 0x6B72616D6B6F6F62;
        goto LABEL_17;
      case 8:
        v9 = 0xD000000000000017;
        v8 = 0x80000001D91C83E0;
        break;
      case 9:
        v9 = 0x64616F6C6E776F64;
LABEL_17:
        v8 = 0xEE00657461446465;
        break;
      case 0xA:
        v9 = 0xD000000000000017;
        v8 = 0x80000001D91C8410;
        break;
      case 0xB:
        v8 = 0xE500000000000000;
        v9 = 0x656C746974;
        break;
      case 0xC:
        v9 = 0x796C746E65636572;
        v8 = 0xEE00646579616C50;
        break;
      case 0xD:
        v9 = 0x6F4E6E657473696CLL;
        v8 = 0xE900000000000077;
        break;
      case 0xE:
        v9 = 0x53794270756F7267;
        v8 = 0xEC00000073776F68;
        break;
      case 0xF:
        v9 = 0x7079746F746F7270;
        v8 = 0xEF7478654E705565;
        break;
      case 0x10:
        v9 = 0x706F546863746177;
        v8 = 0xED00006C6576654CLL;
        break;
      default:
        break;
    }

    v10 = 0xE700000000000000;
    v11 = 0x65746144627570;
    switch(a1)
    {
      case 1:
        v10 = 0x80000001D91C8310;
        if (v9 == 0xD000000000000010)
        {
          goto LABEL_54;
        }

        goto LABEL_2;
      case 2:
        v10 = 0x80000001D91C8330;
        if (v9 != 0xD000000000000012)
        {
          goto LABEL_2;
        }

        goto LABEL_54;
      case 3:
        v10 = 0x80000001D91C8350;
        if (v9 != 0xD00000000000001BLL)
        {
          goto LABEL_2;
        }

        goto LABEL_54;
      case 4:
        v10 = 0x80000001D91C8370;
        if (v9 != 0xD000000000000017)
        {
          goto LABEL_2;
        }

        goto LABEL_54;
      case 5:
        v10 = 0x80000001D91C8390;
        if (v9 != 0xD000000000000014)
        {
          goto LABEL_2;
        }

        goto LABEL_54;
      case 6:
        v10 = 0x80000001D91C83B0;
        if (v9 != 0xD000000000000014)
        {
          goto LABEL_2;
        }

        goto LABEL_54;
      case 7:
        v12 = 0x6B72616D6B6F6F62;
        goto LABEL_43;
      case 8:
        v10 = 0x80000001D91C83E0;
        if (v9 != 0xD000000000000017)
        {
          goto LABEL_2;
        }

        goto LABEL_54;
      case 9:
        v12 = 0x64616F6C6E776F64;
LABEL_43:
        v13 = 0x657461446465;
        goto LABEL_44;
      case 10:
        v11 = 0xD000000000000017;
        v10 = 0x80000001D91C8410;
        goto LABEL_53;
      case 11:
        v10 = 0xE500000000000000;
        if (v9 != 0x656C746974)
        {
          goto LABEL_2;
        }

        goto LABEL_54;
      case 12:
        v12 = 0x796C746E65636572;
        v13 = 0x646579616C50;
LABEL_44:
        v10 = v13 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v9 != v12)
        {
          goto LABEL_2;
        }

        goto LABEL_54;
      case 13:
        v10 = 0xE900000000000077;
        if (v9 != 0x6F4E6E657473696CLL)
        {
          goto LABEL_2;
        }

        goto LABEL_54;
      case 14:
        v10 = 0xEC00000073776F68;
        if (v9 != 0x53794270756F7267)
        {
          goto LABEL_2;
        }

        goto LABEL_54;
      case 15:
        v10 = 0xEF7478654E705565;
        if (v9 != 0x7079746F746F7270)
        {
          goto LABEL_2;
        }

        goto LABEL_54;
      case 16:
        v10 = 0xED00006C6576654CLL;
        if (v9 != 0x706F546863746177)
        {
          goto LABEL_2;
        }

        goto LABEL_54;
      default:
LABEL_53:
        if (v9 != v11)
        {
          goto LABEL_2;
        }

LABEL_54:
        if (v8 != v10)
        {
LABEL_2:
          v5 = sub_1D9179ACC();

          ++v4;
          if (v5)
          {
            return v6 != 0;
          }

          continue;
        }

        return v6 != 0;
    }
  }
}

uint64_t EpisodeListType.defaultSortType.getter()
{
  v1 = *(v0 + 64);
  if (v1 <= 4)
  {
    if (v1 == 2)
    {
      v4 = 9;
    }

    else
    {
      v4 = 2;
    }

    if (*(v0 + 64) <= 1u)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  else if (*(v0 + 64) > 7u)
  {
    if (v1 == 8 || v1 == 9)
    {
      return 0;
    }

    v5 = *v0;
    v6 = v0[1];
    v7 = v0[5];
    v8 = v0[6] | v0[7];
    v9 = v0[4] | v0[3] | v0[2];
    if (!(v8 | *v0 | v7 | v9 | v6))
    {
      return 14;
    }

    v10 = v8 | v7 | v9 | v6;
    if (v5 == 1 && !v10)
    {
      return 12;
    }

    if (v5 == 2 && !v10)
    {
      return 15;
    }

    if (v5 == 3 && !v10)
    {
      return 0;
    }

    if (v5 != 4 || v10)
    {
      if (v5 != 5 || v10)
      {
        if (v10)
        {
          v11 = 0;
        }

        else
        {
          v11 = v5 == 6;
        }

        if (v11)
        {
          return 7;
        }

        else
        {
          return 16;
        }
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 12;
    }
  }

  else
  {
    if (v1 == 6)
    {
      v2 = 13;
    }

    else
    {
      v2 = *(v0 + 64);
    }

    if (v1 == 5)
    {
      return 2;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D8F964E4(uint64_t a1)
{
  v2 = sub_1D8F996B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F96520(uint64_t a1)
{
  v2 = sub_1D8F996B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F9655C()
{
  v1 = 0x7265746C6966;
  if (*v0 != 1)
  {
    v1 = 0x796C6C6175736976;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x5574736163646F70;
  }
}

uint64_t sub_1D8F965C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8F998AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8F965F0(uint64_t a1)
{
  v2 = sub_1D8F99660();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F9662C(uint64_t a1)
{
  v2 = sub_1D8F99660();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F96668(uint64_t a1)
{
  v2 = sub_1D8F99468();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F966A4(uint64_t a1)
{
  v2 = sub_1D8F99468();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F966E0(uint64_t a1)
{
  v2 = sub_1D8F99414();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F9671C(uint64_t a1)
{
  v2 = sub_1D8F99414();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F96778(uint64_t a1)
{
  v2 = sub_1D8F99858();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F967B4(uint64_t a1)
{
  v2 = sub_1D8F99858();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F967F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8F999CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8F96824(uint64_t a1)
{
  v2 = sub_1D8CFFEF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F96860(uint64_t a1)
{
  v2 = sub_1D8CFFEF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F9689C(uint64_t a1)
{
  v2 = sub_1D8F99510();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F968D8(uint64_t a1)
{
  v2 = sub_1D8F99510();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F96914(uint64_t a1)
{
  v2 = sub_1D8F997B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F96950(uint64_t a1)
{
  v2 = sub_1D8F997B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F9698C(uint64_t a1)
{
  v2 = sub_1D8F9975C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F969C8(uint64_t a1)
{
  v2 = sub_1D8F9975C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F96A04(uint64_t a1)
{
  v2 = sub_1D8F994BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F96A40(uint64_t a1)
{
  v2 = sub_1D8F994BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F96A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001D91D0A60 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656761506C6C7566 && a2 == 0xEC0000007473694CLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1D8F96B68(uint64_t a1)
{
  v2 = sub_1D8CFFF48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F96BA4(uint64_t a1)
{
  v2 = sub_1D8CFFF48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F96BE0(uint64_t a1)
{
  v2 = sub_1D8F99564();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F96C1C(uint64_t a1)
{
  v2 = sub_1D8F99564();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F96C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5574736163646F70 && a2 == 0xEB00000000734952)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D8F96CE4(uint64_t a1)
{
  v2 = sub_1D8F99804();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F96D20(uint64_t a1)
{
  v2 = sub_1D8F99804();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F96D5C(uint64_t a1)
{
  v2 = sub_1D8F995B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F96D98(uint64_t a1)
{
  v2 = sub_1D8F995B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F96DD4(uint64_t a1)
{
  v2 = sub_1D8F99708();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F96E10(uint64_t a1)
{
  v2 = sub_1D8F99708();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F96E4C()
{
  if (*v0)
  {
    result = 0x7265746C6966;
  }

  else
  {
    result = 0x5574736163646F70;
  }

  *v0;
  return result;
}

uint64_t sub_1D8F96E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x5574736163646F70 && a2 == 0xEB00000000646975;
  if (v6 || (sub_1D9179ACC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265746C6966 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D8F96F68(uint64_t a1)
{
  v2 = sub_1D8F9936C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F96FA4(uint64_t a1)
{
  v2 = sub_1D8F9936C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F96FE0()
{
  v1 = 0x556E6F6974617473;
  v2 = 0x656C746974;
  if (*v0 != 2)
  {
    v2 = 0x5574736163646F70;
  }

  if (*v0)
  {
    v1 = 0x536E6F6974617473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D8F97068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8F99FB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8F97090(uint64_t a1)
{
  v2 = sub_1D8F9960C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F970CC(uint64_t a1)
{
  v2 = sub_1D8F9960C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F97108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5574736163646F70 && a2 == 0xEB00000000646975)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D8F97194(uint64_t a1)
{
  v2 = sub_1D8F99318();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F971D0(uint64_t a1)
{
  v2 = sub_1D8F99318();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F9720C(uint64_t a1)
{
  v2 = sub_1D8F992C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F97248(uint64_t a1)
{
  v2 = sub_1D8F992C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 EpisodeListType.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D8F9A124(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1D8F972D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return static EpisodeListType.== infix(_:_:)(v7, v9) & 1;
}

__n128 sub_1D8F97334@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D8F9A124(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t EpisodeListType.libraryShowUUID.getter()
{
  v1 = 0;
  v2 = *(v0 + 64);
  if (v2 <= 9)
  {
    if (((1 << v2) & 0x39C) != 0)
    {
      v1 = *v0;
      v3 = v0[1];
    }

    else
    {
      if (v2 != 5)
      {
        return v1;
      }

      v1 = v0[6];
      v5 = v0[7];
    }
  }

  return v1;
}

uint64_t EpisodeListType.importantKeys.getter()
{
  v13 = MEMORY[0x1E69E7CC0];
  if (*(v0 + 64) != 10)
  {
    goto LABEL_11;
  }

  v1 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[6] | v0[7];
  v5 = v0[4] | v0[3] | v0[2];
  if (!(v4 | *v0 | v1 | v5 | v3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D9189080;
    v8 = kEpisodeAssetURL;
    goto LABEL_10;
  }

  v6 = v4 | v1 | v5 | v3;
  if (v2 != 1 || v6)
  {
    if (v2 == 5 && !v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D9189080;
      v8 = kEpisodeFeedDeleted;
      goto LABEL_10;
    }

LABEL_11:
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  v8 = kEpisodeLastDatePlayed;
LABEL_10:
  v9 = *v8;
  *(inited + 32) = sub_1D917820C();
  *(inited + 40) = v10;
  v11 = inited;
LABEL_12:
  sub_1D8E2FE30(v11);
  return v13;
}