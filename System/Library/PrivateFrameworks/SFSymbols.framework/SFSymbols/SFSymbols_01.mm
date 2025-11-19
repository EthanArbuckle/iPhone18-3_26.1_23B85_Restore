void *sub_22E45F83C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641B0, &unk_22E47DB70);
  v2 = *v0;
  v3 = sub_22E47CFB4();
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

void *sub_22E45F9B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64250, &qword_22E47DC00);
  v2 = *v0;
  v3 = sub_22E47CFB4();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_22E4658E4(&v35, v34))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 104;
      v21 = *(v2 + 56) + v16;
      v23 = *(v21 + 64);
      v22 = *(v21 + 80);
      v24 = *(v21 + 48);
      v41 = *(v21 + 96);
      v39 = v23;
      v40 = v22;
      v38 = v24;
      v26 = *(v21 + 16);
      v25 = *(v21 + 32);
      v35 = *v21;
      v36 = v26;
      v37 = v25;
      v27 = (*(v4 + 48) + v17);
      *v27 = v20;
      v27[1] = v19;
      v28 = *(v4 + 56) + v16;
      v29 = v35;
      v30 = v37;
      *(v28 + 16) = v36;
      *(v28 + 32) = v30;
      *v28 = v29;
      v31 = v38;
      v32 = v39;
      v33 = v40;
      *(v28 + 96) = v41;
      *(v28 + 64) = v32;
      *(v28 + 80) = v33;
      *(v28 + 48) = v31;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_22E45FB94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64248, &qword_22E47DBF8);
  v2 = *v0;
  v3 = sub_22E47CFB4();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_22E4658E4(&v31, v30))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + 4 * v16);
      v18 = *(v2 + 56) + 104 * v16;
      v20 = *(v18 + 64);
      v19 = *(v18 + 80);
      v21 = *(v18 + 48);
      v37 = *(v18 + 96);
      v35 = v20;
      v36 = v19;
      v34 = v21;
      v23 = *(v18 + 16);
      v22 = *(v18 + 32);
      v31 = *v18;
      v32 = v23;
      v33 = v22;
      *(*(v4 + 48) + 4 * v16) = v17;
      v24 = *(v4 + 56) + 104 * v16;
      v25 = v31;
      v26 = v33;
      *(v24 + 16) = v32;
      *(v24 + 32) = v26;
      *v24 = v25;
      v27 = v34;
      v28 = v35;
      v29 = v36;
      *(v24 + 96) = v37;
      *(v24 + 64) = v28;
      *(v24 + 80) = v29;
      *(v24 + 48) = v27;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_22E45FD64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64238, &qword_22E47DBE8);
  v2 = *v0;
  v3 = sub_22E47CFB4();
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

void *sub_22E45FED4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64210, &qword_22E47DBC0);
  v2 = *v0;
  v3 = sub_22E47CFB4();
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
        v19 = *(v18 + 16);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 24 * v17;
        *v21 = *v18;
        *(v21 + 16) = v19;
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

void *sub_22E460048()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64218, &qword_22E47DBC8);
  v2 = *v0;
  v3 = sub_22E47CFB4();
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
    for (i = (v9 + 63) >> 6; v11; *(v20 + 16) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 24 * v14;
      v18 = *(v17 + 16);
      v19 = *v17;
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      v20 = *(v4 + 56) + 24 * v14;
      *v20 = v19;
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

void *sub_22E4601AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64220, &qword_22E47DBD0);
  v2 = *v0;
  v3 = sub_22E47CFB4();
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
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *(v22 + 16);
        v24 = (*(v4 + 48) + v18);
        v25 = *v22;
        *v24 = v21;
        v24[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v25;
        *(v26 + 16) = v23;
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

void *sub_22E46032C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64200, &qword_22E47DBB0);
  v2 = *v0;
  v3 = sub_22E47CFB4();
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

void *sub_22E4604A4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22E47CFB4();
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

void *sub_22E460604()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641F0, &qword_22E47DBA0);
  v2 = *v0;
  v3 = sub_22E47CFB4();
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
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

char *sub_22E46076C()
{
  v1 = v0;
  v39 = *(type metadata accessor for CustomSymbol() - 8);
  v2 = *(v39 + 64);
  MEMORY[0x28223BE20]();
  v38 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_22E47CD64();
  v41 = *(v37 - 8);
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20]();
  v36 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641D8, &qword_22E47DB90);
  v6 = *v0;
  v7 = sub_22E47CFB4();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v40 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v33 = v41 + 32;
    v34 = v41 + 16;
    v35 = v6;
    v18 = v41;
    v19 = v8;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v42 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = *(v18 + 72) * v23;
        v26 = v36;
        v25 = v37;
        (*(v18 + 16))(v36, *(v6 + 48) + v24, v37);
        v27 = *(v6 + 56);
        v28 = v38;
        v29 = *(v39 + 72) * v23;
        sub_22E466E28(v27 + v29, v38, type metadata accessor for CustomSymbol);
        (*(v18 + 32))(*(v19 + 48) + v24, v26, v25);
        v30 = v28;
        v6 = v35;
        result = sub_22E466E90(v30, *(v19 + 56) + v29, type metadata accessor for CustomSymbol);
        v16 = v42;
      }

      while (v42);
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

        v1 = v31;
        v8 = v40;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v42 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_22E460A90(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_22E47D0F4();
  sub_22E47CE24();
  v9 = sub_22E47D124();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_22E47D054() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_22E461C60(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22E460BE0(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_22E47D0F4();
  sub_22E47D114();
  v7 = sub_22E47D124();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 4 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_22E461DE0(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_22E460CD8(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641B8, &qword_22E47EC40);
  v4 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v6 = &v50 - v5;
  v7 = sub_22E47CD64();
  v63 = *(v7 - 8);
  v8 = *(v63 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v56 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - v11;
  v13 = type metadata accessor for SymbolKey(0);
  v62 = *(v13 - 8);
  v14 = *(v62 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v50 - v19);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v50 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v51 = &v50 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = (&v50 - v26);
  v52 = v2;
  v57 = *v2;
  v28 = *(v57 + 40);
  sub_22E47D0F4();
  v65 = a2;
  sub_22E466E28(a2, v27, type metadata accessor for SymbolKey);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = v63;
    (*(v63 + 32))(v12, v27, v7);
    MEMORY[0x2318E7080](1);
    sub_22E466F68(&qword_27DA641C0);
    sub_22E47CD84();
    (*(v29 + 8))(v12, v7);
  }

  else
  {
    v30 = *v27;
    MEMORY[0x2318E7080](0);
    sub_22E47D114();
    v29 = v63;
  }

  v31 = sub_22E47D124();
  v32 = -1 << *(v57 + 32);
  v33 = v31 & ~v32;
  v63 = v57 + 56;
  if (((*(v57 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
  {
LABEL_16:
    v44 = v52;
    v45 = *v52;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v65;
    v48 = v51;
    sub_22E466E28(v65, v51, type metadata accessor for SymbolKey);
    v66 = *v44;
    sub_22E461F2C(v48, v33, isUniquelyReferenced_nonNull_native);
    *v44 = v66;
    sub_22E466E90(v47, v53, type metadata accessor for SymbolKey);
    return 1;
  }

  v60 = v7;
  v61 = ~v32;
  v62 = *(v62 + 72);
  v59 = (v29 + 8);
  v54 = (v29 + 32);
  v55 = v13;
  v34 = v57;
  while (1)
  {
    v35 = v62 * v33;
    sub_22E466E28(*(v34 + 48) + v62 * v33, v23, type metadata accessor for SymbolKey);
    v36 = *(v64 + 48);
    sub_22E466E28(v23, v6, type metadata accessor for SymbolKey);
    sub_22E466E28(v65, &v6[v36], type metadata accessor for SymbolKey);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_22E466E28(v6, v17, type metadata accessor for SymbolKey);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = v23;
      v38 = v20;
      v39 = v17;
      v40 = v56;
      v41 = v60;
      (*v54)(v56, &v6[v36], v60);
      v58 = sub_22E47CD54();
      v42 = *v59;
      v43 = v40;
      v17 = v39;
      v20 = v38;
      v23 = v37;
      v34 = v57;
      (*v59)(v43, v41);
      sub_22E466DCC(v23);
      v42(v17, v41);
      if (v58)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    sub_22E466DCC(v23);
    (*v59)(v17, v60);
LABEL_7:
    sub_22E4545D0(v6, &qword_27DA641B8, &qword_22E47EC40);
LABEL_8:
    v33 = (v33 + 1) & v61;
    if (((*(v63 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  sub_22E466DCC(v23);
  sub_22E466E28(v6, v20, type metadata accessor for SymbolKey);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_7;
  }

  if (*v20 != *&v6[v36])
  {
LABEL_15:
    sub_22E466DCC(v6);
    goto LABEL_8;
  }

LABEL_17:
  sub_22E466DCC(v6);
  sub_22E466DCC(v65);
  sub_22E466E28(*(v34 + 48) + v35, v53, type metadata accessor for SymbolKey);
  return 0;
}

uint64_t sub_22E461320(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64240, &qword_22E47DBF0);
  result = sub_22E47CF64();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_22E47D0F4();
      sub_22E47CE24();
      result = sub_22E47D124();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22E461580(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641D0, &qword_22E47DB88);
  result = sub_22E47CF64();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 4 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_22E47D0F4();
      sub_22E47D114();
      result = sub_22E47D124();
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
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 4 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22E4617D0(uint64_t a1)
{
  v2 = v1;
  v49 = sub_22E47CD64();
  v4 = *(v49 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SymbolKey(0);
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = *(v50 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v52 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v54 = &v45 - v11;
  v12 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v13 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641C8, &qword_22E47DB80);
  result = sub_22E47CF64();
  v15 = result;
  if (*(v12 + 16))
  {
    v45 = v2;
    v16 = 0;
    v17 = (v12 + 56);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 56);
    v21 = (v18 + 63) >> 6;
    v46 = (v4 + 8);
    v47 = (v4 + 32);
    v22 = result + 56;
    v23 = v52;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v28 = *(v12 + 48);
      v53 = *(v50 + 72);
      v29 = v54;
      sub_22E466E90(v28 + v53 * (v25 | (v16 << 6)), v54, type metadata accessor for SymbolKey);
      v30 = *(v15 + 40);
      sub_22E47D0F4();
      sub_22E466E28(v29, v23, type metadata accessor for SymbolKey);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = v12;
        v32 = v48;
        v33 = v23;
        v34 = v49;
        (*v47)(v48, v33, v49);
        MEMORY[0x2318E7080](1);
        sub_22E466F68(&qword_27DA641C0);
        sub_22E47CD84();
        v35 = v32;
        v12 = v31;
        (*v46)(v35, v34);
      }

      else
      {
        v36 = *v23;
        MEMORY[0x2318E7080](0);
        sub_22E47D114();
      }

      result = sub_22E47D124();
      v37 = -1 << *(v15 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      v23 = v52;
      if (((-1 << v38) & ~*(v22 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v22 + 8 * v39);
          if (v43 != -1)
          {
            v24 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v38) & ~*(v22 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      result = sub_22E466E90(v54, *(v15 + 48) + v24 * v53, type metadata accessor for SymbolKey);
      ++*(v15 + 16);
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    v44 = 1 << *(v12 + 32);
    if (v44 >= 64)
    {
      bzero(v17, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v44;
    }

    v2 = v45;
    *(v12 + 16) = 0;
  }

  *v2 = v15;
  return result;
}

uint64_t sub_22E461C60(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_22E461320(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_22E462518();
      goto LABEL_16;
    }

    sub_22E4629CC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_22E47D0F4();
  sub_22E47CE24();
  result = sub_22E47D124();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_22E47D054();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_22E47D084();
  __break(1u);
  return result;
}

uint64_t sub_22E461DE0(uint64_t result, unint64_t a2, char a3)
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
    sub_22E461580(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_22E462674();
      a2 = v7;
      goto LABEL_12;
    }

    sub_22E462C04(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_22E47D0F4();
  sub_22E47D114();
  result = sub_22E47D124();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 4 * a2) != v4)
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
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 4 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22E47D084();
  __break(1u);
  return result;
}

uint64_t sub_22E461F2C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v63 = a1;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641B8, &qword_22E47EC40);
  v7 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v9 = &v52 - v8;
  v57 = sub_22E47CD64();
  v10 = *(v57 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v57);
  v55 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - v14;
  v16 = type metadata accessor for SymbolKey(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v58 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v56 = &v52 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v52 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = (&v52 - v26);
  v28 = *(*v4 + 16);
  v29 = *(*v4 + 24);
  v52 = v17;
  v53 = v4;
  if (v29 <= v28 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22E4617D0(v28 + 1);
    }

    else
    {
      if (v29 > v28)
      {
        sub_22E4627B4();
        goto LABEL_23;
      }

      sub_22E462E24(v28 + 1);
    }

    v61 = *v4;
    v30 = *(v61 + 40);
    sub_22E47D0F4();
    sub_22E466E28(v63, v27, type metadata accessor for SymbolKey);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = v27;
      v32 = v57;
      (*(v10 + 32))(v15, v31, v57);
      MEMORY[0x2318E7080](1);
      sub_22E466F68(&qword_27DA641C0);
      sub_22E47CD84();
      (*(v10 + 8))(v15, v32);
    }

    else
    {
      v33 = *v27;
      MEMORY[0x2318E7080](0);
      sub_22E47D114();
    }

    v34 = sub_22E47D124();
    v35 = -1 << *(v61 + 32);
    a2 = v34 & ~v35;
    v60 = v61 + 56;
    if ((*(v61 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v59 = ~v35;
      v36 = *(v17 + 72);
      v37 = (v10 + 8);
      v54 = (v10 + 32);
      v38 = v58;
      v39 = v56;
      do
      {
        sub_22E466E28(*(v61 + 48) + v36 * a2, v25, type metadata accessor for SymbolKey);
        v40 = *(v62 + 48);
        sub_22E466E28(v25, v9, type metadata accessor for SymbolKey);
        sub_22E466E28(v63, &v9[v40], type metadata accessor for SymbolKey);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_22E466E28(v9, v38, type metadata accessor for SymbolKey);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v41 = v55;
            v42 = v57;
            (*v54)(v55, &v9[v40], v57);
            v43 = sub_22E47CD54();
            v44 = *v37;
            v45 = v41;
            v38 = v58;
            (*v37)(v45, v42);
            sub_22E466DCC(v25);
            v46 = v42;
            v39 = v56;
            v44(v38, v46);
            if (v43)
            {
              goto LABEL_26;
            }

LABEL_22:
            sub_22E466DCC(v9);
            goto LABEL_15;
          }

          sub_22E466DCC(v25);
          (*v37)(v38, v57);
        }

        else
        {
          sub_22E466DCC(v25);
          sub_22E466E28(v9, v39, type metadata accessor for SymbolKey);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            if (*v39 == *&v9[v40])
            {
              goto LABEL_26;
            }

            goto LABEL_22;
          }
        }

        sub_22E4545D0(v9, &qword_27DA641B8, &qword_22E47EC40);
LABEL_15:
        a2 = (a2 + 1) & v59;
      }

      while (((*(v60 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_23:
  v47 = *v53;
  *(*v53 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_22E466E90(v63, *(v47 + 48) + *(v52 + 72) * a2, type metadata accessor for SymbolKey);
  v49 = *(v47 + 16);
  v50 = __OFADD__(v49, 1);
  v51 = v49 + 1;
  if (v50)
  {
    __break(1u);
LABEL_26:
    sub_22E466DCC(v9);
    result = sub_22E47D084();
    __break(1u);
  }

  else
  {
    *(v47 + 16) = v51;
  }

  return result;
}

void *sub_22E462518()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64240, &qword_22E47DBF0);
  v2 = *v0;
  v3 = sub_22E47CF54();
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

void *sub_22E462674()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641D0, &qword_22E47DB88);
  v2 = *v0;
  v3 = sub_22E47CF54();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
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

void *sub_22E4627B4()
{
  v1 = v0;
  v2 = type metadata accessor for SymbolKey(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641C8, &qword_22E47DB80);
  v7 = *v0;
  v8 = sub_22E47CF54();
  v9 = v8;
  if (*(v7 + 16))
  {
    v24 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_22E466E28(*(v7 + 48) + v22, v6, type metadata accessor for SymbolKey);
        result = sub_22E466E90(v6, *(v9 + 48) + v22, type metadata accessor for SymbolKey);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_22E4629CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64240, &qword_22E47DBF0);
  result = sub_22E47CF64();
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
      sub_22E47D0F4();

      sub_22E47CE24();
      result = sub_22E47D124();
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

uint64_t sub_22E462C04(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641D0, &qword_22E47DB88);
  result = sub_22E47CF64();
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
      v17 = *(*(v3 + 48) + 4 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_22E47D0F4();
      sub_22E47D114();
      result = sub_22E47D124();
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
      *(*(v6 + 48) + 4 * v13) = v17;
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

uint64_t sub_22E462E24(uint64_t a1)
{
  v2 = v1;
  v47 = sub_22E47CD64();
  v4 = *(v47 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SymbolKey(0);
  v49 = *(v7 - 8);
  v8 = *(v49 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v50 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = &v43 - v11;
  v12 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v13 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641C8, &qword_22E47DB80);
  v14 = sub_22E47CF64();
  result = v12;
  if (*(v12 + 16))
  {
    v43 = v2;
    v16 = 0;
    v17 = v12 + 56;
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 56);
    v21 = (v18 + 63) >> 6;
    v44 = (v4 + 8);
    v45 = (v4 + 32);
    v22 = v14 + 56;
    v23 = v50;
    v48 = result;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v28 = *(result + 48);
      v51 = *(v49 + 72);
      v29 = v52;
      sub_22E466E28(v28 + v51 * (v25 | (v16 << 6)), v52, type metadata accessor for SymbolKey);
      v30 = *(v14 + 40);
      sub_22E47D0F4();
      sub_22E466E28(v29, v23, type metadata accessor for SymbolKey);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = v7;
        v33 = v46;
        v32 = v47;
        (*v45)(v46, v23, v47);
        MEMORY[0x2318E7080](1);
        sub_22E466F68(&qword_27DA641C0);
        sub_22E47CD84();
        v34 = v33;
        v7 = v31;
        (*v44)(v34, v32);
      }

      else
      {
        v35 = *v23;
        MEMORY[0x2318E7080](0);
        sub_22E47D114();
      }

      result = sub_22E47D124();
      v36 = -1 << *(v14 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v22 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v23 = v50;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v22 + 8 * v38);
          if (v42 != -1)
          {
            v24 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v24 = __clz(__rbit64((-1 << v37) & ~*(v22 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v23 = v50;
LABEL_9:
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      sub_22E466E90(v52, *(v14 + 48) + v24 * v51, type metadata accessor for SymbolKey);
      ++*(v14 + 16);
      result = v48;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v2 = v43;
        goto LABEL_31;
      }

      v27 = *(v17 + 8 * v16);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v14;
  }

  return result;
}

int64_t sub_22E46328C(char **a1, __int128 *a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_22E47701C(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;
  result = sub_22E46336C(v7, a2);
  *a1 = v4;
  return result;
}

uint64_t sub_22E463300(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22E477030(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_22E463470(v5);
  *a1 = v2;
  return result;
}

int64_t sub_22E46336C(uint64_t *a1, __int128 *a2)
{
  v4 = a1[1];
  result = sub_22E47D034();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x277D84F90];
      }

      else
      {
        v7 = sub_22E47CEA4();
        *(v7 + 16) = v4 / 2;
      }

      v9[0] = v7 + 32;
      v9[1] = v4 / 2;
      v8 = v7;
      sub_22E463A6C(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_22E463568(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_22E463470(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22E47D034();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_22E47CEA4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22E4645BC(v7, v8, a1, v4);
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
    return sub_22E46399C(0, v2, 1, a1);
  }

  return result;
}

unint64_t sub_22E463568(unint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, _OWORD *a5)
{
  if (a3 != a2)
  {
    v79 = *a4;
    v6 = (v79 + 4 * a3 - 4);
    v7 = result - a3 + 1;
LABEL_5:
    v53 = a3;
    v8 = *(v79 + 4 * a3);
    v51 = v7;
    v52 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = a5[7];
      v75 = a5[6];
      v76 = v10;
      v11 = a5[9];
      v77 = a5[8];
      v78 = v11;
      v12 = a5[3];
      v71 = a5[2];
      v72 = v12;
      v13 = a5[5];
      v73 = a5[4];
      v74 = v13;
      v14 = a5[1];
      v70[0] = *a5;
      v70[1] = v14;
      v15 = v72;
      if (!v72)
      {
        break;
      }

      sub_22E466FB4(v70, v61);
      sub_22E467064(v15);
      v16 = v15(v8);
      v18 = v17;
      sub_22E453664(v15);
      result = sub_22E467010(v70);
      if (v18)
      {
        goto LABEL_15;
      }

LABEL_16:
      v29 = a5[7];
      v66 = a5[6];
      v67 = v29;
      v30 = a5[9];
      v68 = a5[8];
      v69 = v30;
      v31 = a5[3];
      v62 = a5[2];
      v63 = v31;
      v32 = a5[5];
      v64 = a5[4];
      v65 = v32;
      v33 = a5[1];
      v61[0] = *a5;
      v61[1] = v33;
      v34 = v63;
      if (v63)
      {
        sub_22E466FB4(v61, v60);
        sub_22E467064(v34);
        v35 = v34(v9);
        v37 = v36;
        sub_22E453664(v34);
        result = sub_22E467010(v61);
        if ((v37 & 1) == 0)
        {
          if (v16 >= v35)
          {
            goto LABEL_4;
          }

          goto LABEL_28;
        }
      }

      else
      {
        v38 = *(&v61[0] + 1);
        if (*(*(&v61[0] + 1) + 16))
        {
          result = sub_22E45C22C(v9);
          if (v39)
          {
            v40 = *(&v62 + 1);
            if (*(*(&v62 + 1) + 16))
            {
              v41 = (*(v38 + 56) + 104 * result);
              v56 = v41[6];
              v57 = v41[7];
              v42 = v41[12];
              v43 = v41[10];
              v44 = v41[5];
              v45 = v41[2];
              v58 = v41[1];
              sub_22E466FB4(v61, v60);

              v46 = sub_22E450B0C(v58, v45);
              if (v47)
              {
                v48 = *(*(v40 + 56) + 8 * v46);

                result = sub_22E467010(v61);
                if (v16 >= v48)
                {
                  goto LABEL_4;
                }

                goto LABEL_28;
              }

              result = sub_22E467010(v61);
            }
          }
        }
      }

      if (v16 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_4;
      }

LABEL_28:
      if (!v79)
      {
        __break(1u);
        return result;
      }

      v49 = *v6;
      v8 = v6[1];
      *v6 = v8;
      v6[1] = v49;
      if (!v7)
      {
LABEL_4:
        a3 = v53 + 1;
        v6 = v52 + 1;
        v7 = v51 - 1;
        if (v53 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      --v6;
      ++v7;
    }

    v19 = *(&v70[0] + 1);
    if (*(*(&v70[0] + 1) + 16))
    {
      result = sub_22E45C22C(v8);
      if (v20)
      {
        v21 = *(&v71 + 1);
        if (*(*(&v71 + 1) + 16))
        {
          v22 = (*(v19 + 56) + 104 * result);
          v59 = v22[7];
          v23 = v22[12];
          v24 = v22[10];
          v25 = v22[5];
          v26 = v22[2];
          v54 = v22[6];
          v55 = v22[1];
          sub_22E466FB4(v70, v61);

          v27 = sub_22E450B0C(v55, v26);
          if (v28)
          {
            v16 = *(*(v21 + 56) + 8 * v27);

            result = sub_22E467010(v70);
            goto LABEL_16;
          }

          result = sub_22E467010(v70);
        }
      }
    }

LABEL_15:
    v16 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_22E46399C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_22E47D054(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22E463A6C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, __int128 *a5)
{
  v7 = v5;
  v169 = result;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_138:
    v6 = *v169;
    if (!*v169)
    {
      goto LABEL_177;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_140;
    }

    goto LABEL_171;
  }

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (2)
  {
    v170 = v11;
    v171 = v10;
    v11 = v10 + 1;
    if (v10 + 1 >= v9)
    {
      v13 = v10 + 1;
      goto LABEL_36;
    }

    v12 = *a3;
    LODWORD(v204) = *(*a3 + 4 * v11);
    LODWORD(v194) = *(v12 + 4 * v10);
    result = sub_22E470604(&v204, &v194, a5);
    v178 = result;
    if (v7)
    {
    }

    v13 = v10 + 2;
    if (v10 + 2 >= v9)
    {
      goto LABEL_33;
    }

    v14 = (v12 + 4 * v10 + 8);
    v175 = v9;
    do
    {
      v18 = *(v14 - 1);
      v17 = *v14;
      v19 = a5[7];
      v210 = a5[6];
      v211 = v19;
      v20 = a5[9];
      v212 = a5[8];
      v213 = v20;
      v21 = a5[3];
      v206 = a5[2];
      v207 = v21;
      v22 = a5[5];
      v208 = a5[4];
      v209 = v22;
      v23 = a5[1];
      v204 = *a5;
      v205 = v23;
      v24 = v207;
      if (!v207)
      {
        v28 = *(&v204 + 1);
        if (*(*(&v204 + 1) + 16))
        {
          result = sub_22E45C22C(v17);
          if (v29)
          {
            v30 = *(&v206 + 1);
            v31 = *(v28 + 56) + 104 * result;
            v32 = *v31;
            v33 = *(v31 + 32);
            v181 = *(v31 + 16);
            v182 = v33;
            v34 = *(v31 + 48);
            v35 = *(v31 + 64);
            v36 = *(v31 + 80);
            v186 = *(v31 + 96);
            v184 = v35;
            v185 = v36;
            v183 = v34;
            v180 = v32;
            if (*(*(&v206 + 1) + 16))
            {
              v37 = *(&v180 + 1);
              v38 = v181;
              sub_22E466FB4(&v204, &v194);
              sub_22E4658E4(&v180, &v194);
              v39 = sub_22E450B0C(v37, v38);
              if (v40)
              {
                v25 = *(*(v30 + 56) + 8 * v39);
                sub_22E465940(&v180);
                result = sub_22E467010(&v204);
                goto LABEL_21;
              }

              sub_22E465940(&v180);
              result = sub_22E467010(&v204);
            }
          }
        }

LABEL_20:
        v25 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_21;
      }

      sub_22E466FB4(&v204, &v194);
      sub_22E467064(v24);
      v25 = v24(v17);
      v27 = v26;
      sub_22E453664(v24);
      result = sub_22E467010(&v204);
      if (v27)
      {
        goto LABEL_20;
      }

LABEL_21:
      v41 = a5[7];
      v200 = a5[6];
      v201 = v41;
      v42 = a5[9];
      v202 = a5[8];
      v203 = v42;
      v43 = a5[3];
      v196 = a5[2];
      v197 = v43;
      v44 = a5[5];
      v198 = a5[4];
      v199 = v44;
      v45 = a5[1];
      v194 = *a5;
      v195 = v45;
      v6 = v197;
      if (v197)
      {
        sub_22E466FB4(&v194, &v180);
        sub_22E467064(v6);
        v46 = (v6)(v18);
        v48 = v47;
        sub_22E453664(v6);
        result = sub_22E467010(&v194);
        if (v48)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v6 = *(&v194 + 1);
        if (!*(*(&v194 + 1) + 16))
        {
          goto LABEL_9;
        }

        result = sub_22E45C22C(v18);
        if ((v49 & 1) == 0)
        {
          goto LABEL_9;
        }

        v50 = *(&v196 + 1);
        v51 = *(v6 + 7) + 104 * result;
        v52 = *v51;
        v53 = *(v51 + 32);
        v188 = *(v51 + 16);
        v189 = v53;
        v54 = *(v51 + 48);
        v55 = *(v51 + 64);
        v56 = *(v51 + 80);
        v193 = *(v51 + 96);
        v191 = v55;
        v192 = v56;
        v190 = v54;
        v187 = v52;
        if (!*(*(&v196 + 1) + 16))
        {
          goto LABEL_9;
        }

        v57 = *(&v187 + 1);
        v6 = v188;
        sub_22E466FB4(&v194, &v180);
        sub_22E4658E4(&v187, &v180);
        v58 = sub_22E450B0C(v57, v6);
        if ((v59 & 1) == 0)
        {
          sub_22E465940(&v187);
          result = sub_22E467010(&v194);
LABEL_9:
          v15 = v175;
          if (((v178 ^ (v25 == 0x7FFFFFFFFFFFFFFFLL)) & 1) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_10;
        }

        v46 = *(*(v50 + 56) + 8 * v58);
        sub_22E465940(&v187);
        result = sub_22E467010(&v194);
      }

      v15 = v175;
      if ((v178 & 1) == v25 >= v46)
      {
LABEL_30:
        v11 = v13 - 1;
        goto LABEL_32;
      }

LABEL_10:
      ++v14;
      v16 = v13 + 1;
      v13 = v16;
    }

    while (v15 != v16);
    v11 = v16 - 1;
    v13 = v15;
LABEL_32:
    v10 = v171;
LABEL_33:
    if ((v178 & 1) == 0)
    {
LABEL_36:
      v11 = v170;
      goto LABEL_37;
    }

    if (v13 < v10)
    {
      goto LABEL_170;
    }

    if (v10 > v11)
    {
      goto LABEL_36;
    }

    v158 = v13 - 1;
    v159 = v10;
    v11 = v170;
    do
    {
      if (v159 != v158)
      {
        v161 = *a3;
        if (!*a3)
        {
          goto LABEL_174;
        }

        v162 = *(v161 + 4 * v159);
        *(v161 + 4 * v159) = *(v161 + 4 * v158);
        *(v161 + 4 * v158) = v162;
      }
    }

    while (++v159 < v158--);
LABEL_37:
    v60 = a3[1];
    if (v13 >= v60)
    {
      v10 = v13;
      goto LABEL_74;
    }

    if (__OFSUB__(v13, v171))
    {
      goto LABEL_167;
    }

    v10 = v13;
    if (v13 - v171 >= a4)
    {
      goto LABEL_74;
    }

    v61 = v171 + a4;
    if (__OFADD__(v171, a4))
    {
      goto LABEL_168;
    }

    if (v61 >= v60)
    {
      v61 = a3[1];
    }

    if (v61 < v171)
    {
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      result = sub_22E476624(v11);
      v11 = result;
LABEL_140:
      v214 = v11;
      v163 = v11;
      v11 = *(v11 + 16);
      if (v11 >= 2)
      {
        while (*a3)
        {
          v164 = *&v163[16 * v11];
          v165 = *&v163[16 * v11 + 24];
          sub_22E464B98((*a3 + 4 * v164), (*a3 + 4 * *&v163[16 * v11 + 16]), (*a3 + 4 * v165), v6, a5);
          if (v7)
          {
          }

          if (v165 < v164)
          {
            goto LABEL_164;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v163 = sub_22E476624(v163);
          }

          if (v11 - 2 >= *(v163 + 2))
          {
            goto LABEL_165;
          }

          v166 = &v163[16 * v11];
          *v166 = v164;
          *(v166 + 1) = v165;
          v214 = v163;
          result = sub_22E476598(v11 - 1);
          v163 = v214;
          v11 = *(v214 + 16);
          if (v11 <= 1)
          {
          }
        }

        goto LABEL_175;
      }
    }

    v62 = v171;
    v172 = v61;
    if (v13 == v61)
    {
LABEL_75:
      if (v10 < v62)
      {
        goto LABEL_166;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22E47671C(0, *(v11 + 16) + 1, 1, v11);
        v11 = result;
      }

      v110 = v11;
      v111 = *(v11 + 16);
      v112 = v110;
      v113 = *(v110 + 24);
      v114 = v111 + 1;
      if (v111 >= v113 >> 1)
      {
        result = sub_22E47671C((v113 > 1), v111 + 1, 1, v112);
        v112 = result;
      }

      *(v112 + 16) = v114;
      v115 = v112 + 16 * v111;
      *(v115 + 32) = v171;
      *(v115 + 40) = v10;
      v116 = *v169;
      if (!*v169)
      {
        goto LABEL_176;
      }

      if (!v111)
      {
        v11 = v112;
LABEL_127:
        v9 = a3[1];
        if (v10 >= v9)
        {
          goto LABEL_138;
        }

        continue;
      }

      v11 = v112;
      while (1)
      {
        v117 = v114 - 1;
        if (v114 >= 4)
        {
          break;
        }

        if (v114 == 3)
        {
          v118 = *(v11 + 32);
          v119 = *(v11 + 40);
          v128 = __OFSUB__(v119, v118);
          v120 = v119 - v118;
          v121 = v128;
LABEL_96:
          if (v121)
          {
            goto LABEL_155;
          }

          v134 = (v11 + 16 * v114);
          v136 = *v134;
          v135 = v134[1];
          v137 = __OFSUB__(v135, v136);
          v138 = v135 - v136;
          v139 = v137;
          if (v137)
          {
            goto LABEL_158;
          }

          v140 = (v11 + 32 + 16 * v117);
          v142 = *v140;
          v141 = v140[1];
          v128 = __OFSUB__(v141, v142);
          v143 = v141 - v142;
          if (v128)
          {
            goto LABEL_161;
          }

          if (__OFADD__(v138, v143))
          {
            goto LABEL_162;
          }

          if (v138 + v143 >= v120)
          {
            if (v120 < v143)
            {
              v117 = v114 - 2;
            }

            goto LABEL_117;
          }

          goto LABEL_110;
        }

        v144 = (v11 + 16 * v114);
        v146 = *v144;
        v145 = v144[1];
        v128 = __OFSUB__(v145, v146);
        v138 = v145 - v146;
        v139 = v128;
LABEL_110:
        if (v139)
        {
          goto LABEL_157;
        }

        v147 = v11 + 16 * v117;
        v149 = *(v147 + 32);
        v148 = *(v147 + 40);
        v128 = __OFSUB__(v148, v149);
        v150 = v148 - v149;
        if (v128)
        {
          goto LABEL_160;
        }

        if (v150 < v138)
        {
          goto LABEL_127;
        }

LABEL_117:
        v6 = v11;
        v11 = v117 - 1;
        if (v117 - 1 >= v114)
        {
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

        if (!*a3)
        {
          goto LABEL_173;
        }

        v155 = *&v6[16 * v11 + 32];
        v156 = *&v6[16 * v117 + 40];
        sub_22E464B98((*a3 + 4 * v155), (*a3 + 4 * *&v6[16 * v117 + 32]), (*a3 + 4 * v156), v116, a5);
        if (v7)
        {
        }

        if (v156 < v155)
        {
          goto LABEL_151;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_22E476624(v6);
        }

        if (v11 >= *(v6 + 2))
        {
          goto LABEL_152;
        }

        v157 = &v6[16 * v11];
        *(v157 + 4) = v155;
        *(v157 + 5) = v156;
        v214 = v6;
        result = sub_22E476598(v117);
        v11 = v214;
        v114 = *(v214 + 16);
        if (v114 <= 1)
        {
          goto LABEL_127;
        }
      }

      v122 = v11 + 32 + 16 * v114;
      v123 = *(v122 - 64);
      v124 = *(v122 - 56);
      v128 = __OFSUB__(v124, v123);
      v125 = v124 - v123;
      if (v128)
      {
        goto LABEL_153;
      }

      v127 = *(v122 - 48);
      v126 = *(v122 - 40);
      v128 = __OFSUB__(v126, v127);
      v120 = v126 - v127;
      v121 = v128;
      if (v128)
      {
        goto LABEL_154;
      }

      v129 = (v11 + 16 * v114);
      v131 = *v129;
      v130 = v129[1];
      v128 = __OFSUB__(v130, v131);
      v132 = v130 - v131;
      if (v128)
      {
        goto LABEL_156;
      }

      v128 = __OFADD__(v120, v132);
      v133 = v120 + v132;
      if (v128)
      {
        goto LABEL_159;
      }

      if (v133 >= v125)
      {
        v151 = (v11 + 32 + 16 * v117);
        v153 = *v151;
        v152 = v151[1];
        v128 = __OFSUB__(v152, v153);
        v154 = v152 - v153;
        if (v128)
        {
          goto LABEL_163;
        }

        if (v120 < v154)
        {
          v117 = v114 - 2;
        }

        goto LABEL_117;
      }

      goto LABEL_96;
    }

    break;
  }

  v63 = v13;
  v167 = v7;
  v179 = *a3;
  v64 = (*a3 + 4 * v13 - 4);
  v65 = v171 - v13 + 1;
LABEL_47:
  v174 = v64;
  v176 = v63;
  v173 = v65;
  while (1)
  {
    v67 = v64->u32[0];
    v66 = v64->u32[1];
    v68 = a5[7];
    v210 = a5[6];
    v211 = v68;
    v69 = a5[9];
    v212 = a5[8];
    v213 = v69;
    v70 = a5[3];
    v206 = a5[2];
    v207 = v70;
    v71 = a5[5];
    v208 = a5[4];
    v209 = v71;
    v72 = a5[1];
    v204 = *a5;
    v205 = v72;
    v73 = v207;
    if (!v207)
    {
      v77 = *(&v204 + 1);
      if (*(*(&v204 + 1) + 16))
      {
        result = sub_22E45C22C(v66);
        if (v78)
        {
          v79 = *(&v206 + 1);
          v80 = *(v77 + 56) + 104 * result;
          v81 = *v80;
          v82 = *(v80 + 32);
          v181 = *(v80 + 16);
          v182 = v82;
          v83 = *(v80 + 48);
          v84 = *(v80 + 64);
          v85 = *(v80 + 80);
          v186 = *(v80 + 96);
          v184 = v84;
          v185 = v85;
          v183 = v83;
          v180 = v81;
          if (*(*(&v206 + 1) + 16))
          {
            v86 = *(&v180 + 1);
            v87 = v181;
            sub_22E466FB4(&v204, &v194);
            sub_22E4658E4(&v180, &v194);
            v88 = sub_22E450B0C(v86, v87);
            if (v89)
            {
              v74 = *(*(v79 + 56) + 8 * v88);
              sub_22E465940(&v180);
              result = sub_22E467010(&v204);
              goto LABEL_58;
            }

            sub_22E465940(&v180);
            result = sub_22E467010(&v204);
          }
        }
      }

LABEL_57:
      v74 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_58;
    }

    sub_22E466FB4(&v204, &v194);
    sub_22E467064(v73);
    v74 = v73(v66);
    v76 = v75;
    sub_22E453664(v73);
    result = sub_22E467010(&v204);
    if (v76)
    {
      goto LABEL_57;
    }

LABEL_58:
    v90 = a5[7];
    v200 = a5[6];
    v201 = v90;
    v91 = a5[9];
    v202 = a5[8];
    v203 = v91;
    v92 = a5[3];
    v196 = a5[2];
    v197 = v92;
    v93 = a5[5];
    v198 = a5[4];
    v199 = v93;
    v94 = a5[1];
    v194 = *a5;
    v195 = v94;
    v6 = v197;
    if (v197)
    {
      sub_22E466FB4(&v194, &v180);
      sub_22E467064(v6);
      v95 = (v6)(v67);
      v97 = v96;
      sub_22E453664(v6);
      result = sub_22E467010(&v194);
      if ((v97 & 1) == 0)
      {
        if (v74 >= v95)
        {
          goto LABEL_46;
        }

        goto LABEL_70;
      }
    }

    else
    {
      v6 = *(&v194 + 1);
      if (*(*(&v194 + 1) + 16))
      {
        result = sub_22E45C22C(v67);
        if (v98)
        {
          v99 = *(&v196 + 1);
          v100 = *(v6 + 7) + 104 * result;
          v101 = *v100;
          v102 = *(v100 + 32);
          v188 = *(v100 + 16);
          v189 = v102;
          v103 = *(v100 + 48);
          v104 = *(v100 + 64);
          v105 = *(v100 + 80);
          v193 = *(v100 + 96);
          v191 = v104;
          v192 = v105;
          v190 = v103;
          v187 = v101;
          if (*(*(&v196 + 1) + 16))
          {
            v106 = *(&v187 + 1);
            v6 = v188;
            sub_22E466FB4(&v194, &v180);
            sub_22E4658E4(&v187, &v180);
            v107 = sub_22E450B0C(v106, v6);
            if (v108)
            {
              v109 = *(*(v99 + 56) + 8 * v107);
              sub_22E465940(&v187);
              result = sub_22E467010(&v194);
              if (v74 >= v109)
              {
                goto LABEL_46;
              }

              goto LABEL_70;
            }

            sub_22E465940(&v187);
            result = sub_22E467010(&v194);
          }
        }
      }
    }

    if (v74 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_46;
    }

LABEL_70:
    if (!v179)
    {
      break;
    }

    *v64 = vrev64_s32(*v64);
    if (!v65)
    {
LABEL_46:
      v63 = v176 + 1;
      v64 = (v174 + 4);
      v65 = v173 - 1;
      if (v176 + 1 != v172)
      {
        goto LABEL_47;
      }

      v10 = v172;
      v7 = v167;
      v11 = v170;
LABEL_74:
      v62 = v171;
      goto LABEL_75;
    }

    v64 = (v64 - 4);
    ++v65;
  }

  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
  return result;
}

uint64_t sub_22E4645BC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_22E476624(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_22E465330((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_22E47D054();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_22E47D054();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22E47671C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_22E47671C((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_22E465330((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22E476624(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_22E476598(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_22E47D054(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_22E464B98(unsigned int *__dst, unsigned int *__src, unsigned int *a3, unsigned int *a4, __int128 *a5)
{
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 2;
  v12 = a3 - __src;
  v13 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 2;
  if (v11 >= v13 >> 2)
  {
    v17 = a4;
    if (a4 != __src || &__src[v14] <= a4)
    {
      memmove(a4, __src, 4 * v14);
    }

    v16 = &v17[v14];
    if (v12 < 4 || v7 <= v8)
    {
      goto LABEL_87;
    }

    v124 = v17;
LABEL_47:
    v69 = v7 - 1;
    --v6;
    v70 = v16;
    v161 = v7;
    v123 = v7 - 1;
    while (1)
    {
      v126 = v70;
      v72 = *--v70;
      v71 = v72;
      v73 = *v69;
      v74 = a5[7];
      v157 = a5[6];
      v158 = v74;
      v75 = a5[9];
      v159 = a5[8];
      v160 = v75;
      v76 = a5[3];
      v153 = a5[2];
      v154 = v76;
      v77 = a5[5];
      v155 = a5[4];
      v156 = v77;
      v78 = a5[1];
      v151 = *a5;
      v152 = v78;
      v79 = v154;
      if (!v154)
      {
        break;
      }

      sub_22E466FB4(&v151, &v141);
      sub_22E467064(v79);
      v80 = v79(v71);
      v82 = v81;
      sub_22E453664(v79);
      sub_22E467010(&v151);
      if (v82)
      {
        goto LABEL_59;
      }

LABEL_60:
      v97 = a5[7];
      v147 = a5[6];
      v148 = v97;
      v98 = a5[9];
      v149 = a5[8];
      v150 = v98;
      v99 = a5[3];
      v143 = a5[2];
      v144 = v99;
      v100 = a5[5];
      v145 = a5[4];
      v146 = v100;
      v101 = a5[1];
      v141 = *a5;
      v142 = v101;
      v102 = v144;
      if (v144)
      {
        sub_22E466FB4(&v141, &v127);
        sub_22E467064(v102);
        v103 = v102(v73);
        v105 = v104;
        sub_22E453664(v102);
        sub_22E467010(&v141);
        if ((v105 & 1) == 0)
        {
          if (v80 < v103)
          {
            goto LABEL_76;
          }

          goto LABEL_72;
        }
      }

      else
      {
        v106 = *(&v141 + 1);
        if (*(*(&v141 + 1) + 16))
        {
          v107 = sub_22E45C22C(v73);
          if (v108)
          {
            v109 = *(&v143 + 1);
            v110 = *(v106 + 56) + 104 * v107;
            v111 = *v110;
            v112 = *(v110 + 32);
            v135 = *(v110 + 16);
            v136 = v112;
            v113 = *(v110 + 48);
            v114 = *(v110 + 64);
            v115 = *(v110 + 80);
            v140 = *(v110 + 96);
            v138 = v114;
            v139 = v115;
            v137 = v113;
            v134 = v111;
            if (*(*(&v143 + 1) + 16))
            {
              v116 = *(&v134 + 1);
              v117 = v135;
              sub_22E466FB4(&v141, &v127);
              sub_22E4658E4(&v134, &v127);
              v118 = sub_22E450B0C(v116, v117);
              if (v119)
              {
                v120 = *(*(v109 + 56) + 8 * v118);
                sub_22E465940(&v134);
                sub_22E467010(&v141);
                if (v80 < v120)
                {
                  goto LABEL_76;
                }

                goto LABEL_72;
              }

              sub_22E465940(&v134);
              sub_22E467010(&v141);
            }
          }
        }
      }

      if (v80 != 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_76:
        v16 = v126;
        if ((v6 + 1) < v161 || v6 >= v161)
        {
          v121 = v123;
          v17 = v124;
LABEL_81:
          *v6 = *v121;
          if (v126 <= v17)
          {
            goto LABEL_85;
          }
        }

        else
        {
          v17 = v124;
          if (v6 + 1 != v161)
          {
            v121 = v123;
            goto LABEL_81;
          }

          v121 = v123;
          if (v126 <= v124)
          {
LABEL_85:
            v7 = v121;
            goto LABEL_87;
          }
        }

        v7 = v121;
        if (v121 > v8)
        {
          goto LABEL_47;
        }

        goto LABEL_85;
      }

LABEL_72:
      v7 = v161;
      if ((v6 + 1) < v126 || v6 >= v126 || v6 + 1 != v126)
      {
        *v6 = *v70;
      }

      v69 = v123;
      --v6;
      if (v70 <= v124)
      {
        v16 = v70;
        v17 = v124;
        goto LABEL_87;
      }
    }

    v83 = *(&v151 + 1);
    if (*(*(&v151 + 1) + 16))
    {
      v84 = sub_22E45C22C(v71);
      if (v85)
      {
        v86 = *(&v153 + 1);
        v87 = *(v83 + 56) + 104 * v84;
        v88 = *v87;
        v89 = *(v87 + 32);
        v128 = *(v87 + 16);
        v129 = v89;
        v90 = *(v87 + 48);
        v91 = *(v87 + 64);
        v92 = *(v87 + 80);
        v133 = *(v87 + 96);
        v131 = v91;
        v132 = v92;
        v130 = v90;
        v127 = v88;
        if (*(*(&v153 + 1) + 16))
        {
          v93 = *(&v127 + 1);
          v94 = v128;
          sub_22E466FB4(&v151, &v141);
          sub_22E4658E4(&v127, &v141);
          v95 = sub_22E450B0C(v93, v94);
          if (v96)
          {
            v80 = *(*(v86 + 56) + 8 * v95);
            sub_22E465940(&v127);
            sub_22E467010(&v151);
            goto LABEL_60;
          }

          sub_22E465940(&v127);
          sub_22E467010(&v151);
        }
      }
    }

LABEL_59:
    v80 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_60;
  }

  if (a4 != __dst || &__dst[v11] <= a4)
  {
    v15 = a4;
    memmove(a4, __dst, 4 * v11);
    a4 = v15;
  }

  v16 = &a4[v11];
  v17 = a4;
  if (v9 >= 4 && v7 < v6)
  {
    v125 = v16;
    while (1)
    {
      v161 = v7;
      v18 = *v7;
      v19 = *v17;
      v20 = a5[7];
      v157 = a5[6];
      v158 = v20;
      v21 = a5[9];
      v159 = a5[8];
      v160 = v21;
      v22 = a5[3];
      v153 = a5[2];
      v154 = v22;
      v23 = a5[5];
      v155 = a5[4];
      v156 = v23;
      v24 = a5[1];
      v151 = *a5;
      v152 = v24;
      v25 = v154;
      if (!v154)
      {
        break;
      }

      sub_22E466FB4(&v151, &v141);
      sub_22E467064(v25);
      v26 = v25(v18);
      v28 = v27;
      sub_22E453664(v25);
      sub_22E467010(&v151);
      if (v28)
      {
        goto LABEL_21;
      }

LABEL_22:
      v43 = a5[7];
      v147 = a5[6];
      v148 = v43;
      v44 = a5[9];
      v149 = a5[8];
      v150 = v44;
      v45 = a5[3];
      v143 = a5[2];
      v144 = v45;
      v46 = a5[5];
      v145 = a5[4];
      v146 = v46;
      v47 = a5[1];
      v141 = *a5;
      v142 = v47;
      v48 = v144;
      if (v144)
      {
        sub_22E466FB4(&v141, &v127);
        sub_22E467064(v48);
        v49 = v48(v19);
        v51 = v50;
        sub_22E453664(v48);
        sub_22E467010(&v141);
        if ((v51 & 1) == 0)
        {
          if (v26 < v49)
          {
            goto LABEL_36;
          }

          goto LABEL_25;
        }
      }

      else
      {
        v54 = *(&v141 + 1);
        if (*(*(&v141 + 1) + 16))
        {
          v55 = sub_22E45C22C(v19);
          if (v56)
          {
            v57 = *(&v143 + 1);
            v58 = *(v54 + 56) + 104 * v55;
            v59 = *v58;
            v60 = *(v58 + 32);
            v135 = *(v58 + 16);
            v136 = v60;
            v61 = *(v58 + 48);
            v62 = *(v58 + 64);
            v63 = *(v58 + 80);
            v140 = *(v58 + 96);
            v138 = v62;
            v139 = v63;
            v137 = v61;
            v134 = v59;
            if (*(*(&v143 + 1) + 16))
            {
              v64 = *(&v134 + 1);
              v65 = v135;
              sub_22E466FB4(&v141, &v127);
              sub_22E4658E4(&v134, &v127);
              v66 = sub_22E450B0C(v64, v65);
              if (v67)
              {
                v68 = *(*(v57 + 56) + 8 * v66);
                sub_22E465940(&v134);
                sub_22E467010(&v141);
                if (v26 < v68)
                {
                  goto LABEL_36;
                }

                goto LABEL_25;
              }

              sub_22E465940(&v134);
              sub_22E467010(&v141);
            }
          }
        }
      }

      if (v26 != 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_36:
        v52 = v161;
        v7 = (v161 + 4);
        v16 = v125;
        if (v8 == v161)
        {
          goto LABEL_38;
        }

LABEL_37:
        *v8 = *v52;
        goto LABEL_38;
      }

LABEL_25:
      v52 = v17;
      v53 = v8 == v17++;
      v7 = v161;
      v16 = v125;
      if (!v53)
      {
        goto LABEL_37;
      }

LABEL_38:
      ++v8;
      if (v17 >= v16 || v7 >= v6)
      {
        goto LABEL_40;
      }
    }

    v29 = *(&v151 + 1);
    if (*(*(&v151 + 1) + 16))
    {
      v30 = sub_22E45C22C(v18);
      if (v31)
      {
        v32 = *(&v153 + 1);
        v33 = *(v29 + 56) + 104 * v30;
        v34 = *v33;
        v35 = *(v33 + 32);
        v128 = *(v33 + 16);
        v129 = v35;
        v36 = *(v33 + 48);
        v37 = *(v33 + 64);
        v38 = *(v33 + 80);
        v133 = *(v33 + 96);
        v131 = v37;
        v132 = v38;
        v130 = v36;
        v127 = v34;
        if (*(*(&v153 + 1) + 16))
        {
          v39 = *(&v127 + 1);
          v40 = v128;
          sub_22E466FB4(&v151, &v141);
          sub_22E4658E4(&v127, &v141);
          v41 = sub_22E450B0C(v39, v40);
          if (v42)
          {
            v26 = *(*(v32 + 56) + 8 * v41);
            sub_22E465940(&v127);
            sub_22E467010(&v151);
            goto LABEL_22;
          }

          sub_22E465940(&v127);
          sub_22E467010(&v151);
        }
      }
    }

LABEL_21:
    v26 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_22;
  }

LABEL_40:
  v7 = v8;
LABEL_87:
  if (v7 != v17 || v7 >= (v17 + ((v16 - v17 + (v16 - v17 < 0 ? 3uLL : 0)) & 0xFFFFFFFFFFFFFFFCLL)))
  {
    memmove(v7, v17, 4 * (v16 - v17));
  }

  return 1;
}

uint64_t sub_22E465330(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_22E47D054() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_22E47D054() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

void *sub_22E465558(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22E4656B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D616E656C6966 && a2 == 0xE800000000000000;
  if (v4 || (sub_22E47D054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572706D6F437369 && a2 == 0xEC00000064657373 || (sub_22E47D054() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617A696C61636F6CLL && a2 == 0xEC0000006E6F6974)
  {

    return 2;
  }

  else
  {
    v6 = sub_22E47D054();

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

void *sub_22E4657D0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64258, &qword_22E47DC08);
  v3 = sub_22E47CFD4();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_22E45C1E8(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_22E45C1E8(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
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

unint64_t sub_22E465A24()
{
  result = qword_27DA63EE0;
  if (!qword_27DA63EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA64150, &qword_22E47EA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA63EE0);
  }

  return result;
}

unint64_t sub_22E465AA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64220, &qword_22E47DBD0);
    v3 = sub_22E47CFD4();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_22E45C298(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v7;
      v13[1] = v8;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22E465BB4()
{
  result = qword_27DA64020;
  if (!qword_27DA64020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64020);
  }

  return result;
}

unint64_t sub_22E465C08()
{
  result = qword_27DA63EE8;
  if (!qword_27DA63EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA64160, &qword_22E47D9B8);
    sub_22E465C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA63EE8);
  }

  return result;
}

unint64_t sub_22E465C8C()
{
  result = qword_27DA64080;
  if (!qword_27DA64080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64080);
  }

  return result;
}

unint64_t sub_22E465CE0()
{
  result = qword_27DA64040;
  if (!qword_27DA64040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64040);
  }

  return result;
}

unint64_t sub_22E465D34()
{
  result = qword_27DA64168;
  if (!qword_27DA64168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64168);
  }

  return result;
}

unint64_t sub_22E465D88()
{
  result = qword_27DA63F00;
  if (!qword_27DA63F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA64170, &qword_22E47D9C0);
    sub_22E465E30(&qword_27DA63F18, &qword_27DA64158, &qword_22E47D9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA63F00);
  }

  return result;
}

uint64_t sub_22E465E30(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22E465ECC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22E465F14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22E465F64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22E465FAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22E465FF8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64180, &qword_22E47DB48);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22E466228();
  sub_22E47D144();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64158, &qword_22E47D9B0);
  HIBYTE(v10) = 0;
  sub_22E465E30(&qword_27DA63F18, &qword_27DA64158, &qword_22E47D9B0);
  sub_22E47D024();
  v9 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64170, &qword_22E47D9C0);
  HIBYTE(v10) = 1;
  sub_22E465D88();
  sub_22E47D024();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_22E466228()
{
  result = qword_27DA64038;
  if (!qword_27DA64038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64038);
  }

  return result;
}

unint64_t sub_22E46627C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64200, &qword_22E47DBB0);
    v3 = sub_22E47CFD4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_22E45C298(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22E466390(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641E0, &qword_22E47DB98);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641D8, &qword_22E47DB90);
    v8 = sub_22E47CFD4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22E466EF8(v10, v6);
      result = sub_22E45C3EC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22E47CD64();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for CustomSymbol();
      result = sub_22E466E90(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for CustomSymbol);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22E466598(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64188, &qword_22E47DB50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22E46677C();
  sub_22E47D144();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_22E47D014();
    v11 = 1;
    sub_22E47D014();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_22E46677C()
{
  result = qword_27DA64098;
  if (!qword_27DA64098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64098);
  }

  return result;
}

uint64_t sub_22E4667D0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA642A0, &qword_22E47E220);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22E4678B4();
  sub_22E47D144();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_22E47CFF4();
    v11 = 1;
    sub_22E47CFF4();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

void *sub_22E46699C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64190, &qword_22E47DB58);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22E466B4C();
  sub_22E47D144();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64198, &qword_22E47DB60);
    sub_22E45405C(&qword_27DA63F08, &qword_27DA64198, &qword_22E47DB60, sub_22E466BA0);
    sub_22E47D024();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

unint64_t sub_22E466B4C()
{
  result = qword_27DA64058;
  if (!qword_27DA64058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64058);
  }

  return result;
}

unint64_t sub_22E466BA0()
{
  result = qword_27DA64060;
  if (!qword_27DA64060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64060);
  }

  return result;
}

void *sub_22E466BF4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641A0, &qword_22E47DB68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22E466D78();
  sub_22E47D144();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64170, &qword_22E47D9C0);
    sub_22E465D88();
    sub_22E47D024();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

unint64_t sub_22E466D78()
{
  result = qword_27DA641A8;
  if (!qword_27DA641A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA641A8);
  }

  return result;
}

uint64_t sub_22E466DCC(uint64_t a1)
{
  v2 = type metadata accessor for SymbolKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22E466E28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22E466E90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22E466EF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA641E0, &qword_22E47DB98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E466F68(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22E47CD64();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22E467064(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_22E467074()
{
  result = qword_27DA64260;
  if (!qword_27DA64260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64260);
  }

  return result;
}

uint64_t sub_22E4670F4(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_9SFSymbols19SymbolMetadataStoreV9LoadErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22E46716C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22E4671B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_22E4671FC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_22E467224(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22E46726C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Crypton(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Crypton(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_22E4673D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_22E467430(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_22E467498()
{
  result = qword_27DA64270;
  if (!qword_27DA64270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64270);
  }

  return result;
}

unint64_t sub_22E4674F0()
{
  result = qword_27DA64278;
  if (!qword_27DA64278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64278);
  }

  return result;
}

unint64_t sub_22E467548()
{
  result = qword_27DA64280;
  if (!qword_27DA64280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64280);
  }

  return result;
}

unint64_t sub_22E4675A0()
{
  result = qword_27DA64288;
  if (!qword_27DA64288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64288);
  }

  return result;
}

unint64_t sub_22E4675F8()
{
  result = qword_27DA64290;
  if (!qword_27DA64290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64290);
  }

  return result;
}

unint64_t sub_22E467650()
{
  result = qword_27DA64298;
  if (!qword_27DA64298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64298);
  }

  return result;
}

unint64_t sub_22E4676A8()
{
  result = qword_27DA64048;
  if (!qword_27DA64048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64048);
  }

  return result;
}

unint64_t sub_22E467700()
{
  result = qword_27DA64050;
  if (!qword_27DA64050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64050);
  }

  return result;
}

unint64_t sub_22E467758()
{
  result = qword_27DA64088;
  if (!qword_27DA64088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64088);
  }

  return result;
}

unint64_t sub_22E4677B0()
{
  result = qword_27DA64090;
  if (!qword_27DA64090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64090);
  }

  return result;
}

unint64_t sub_22E467808()
{
  result = qword_27DA64028;
  if (!qword_27DA64028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64028);
  }

  return result;
}

unint64_t sub_22E467860()
{
  result = qword_27DA64030;
  if (!qword_27DA64030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64030);
  }

  return result;
}

unint64_t sub_22E4678B4()
{
  result = qword_27DA64078;
  if (!qword_27DA64078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64078);
  }

  return result;
}

uint64_t _s14descr284251169V13MetadataIndexV10StoreIndexV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_22E4679AC()
{
  result = qword_27DA642C0;
  if (!qword_27DA642C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA642C0);
  }

  return result;
}

unint64_t sub_22E467A04()
{
  result = qword_27DA642C8;
  if (!qword_27DA642C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA642C8);
  }

  return result;
}

unint64_t sub_22E467A5C()
{
  result = qword_27DA642D0;
  if (!qword_27DA642D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA642D0);
  }

  return result;
}

unint64_t sub_22E467AB4()
{
  result = qword_27DA64068;
  if (!qword_27DA64068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64068);
  }

  return result;
}

unint64_t sub_22E467B0C()
{
  result = qword_27DA64070;
  if (!qword_27DA64070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64070);
  }

  return result;
}

uint64_t sub_22E467BA8()
{
  sub_22E47D0F4();
  sub_22E47CE24();

  return sub_22E47D124();
}

uint64_t sub_22E467CC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000656DLL;
  v3 = 0x6F7268636F6E6F6DLL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6C6F6369746C756DLL;
    }

    else
    {
      v5 = 0x657474656C6170;
    }

    if (v4 == 2)
    {
      v6 = 0xEA0000000000726FLL;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6863726172656968;
    }

    else
    {
      v5 = 0x6F7268636F6E6F6DLL;
    }

    if (v4)
    {
      v6 = 0xEC0000006C616369;
    }

    else
    {
      v6 = 0xEA0000000000656DLL;
    }
  }

  v7 = 0x6C6F6369746C756DLL;
  v8 = 0xEA0000000000726FLL;
  if (a2 != 2)
  {
    v7 = 0x657474656C6170;
    v8 = 0xE700000000000000;
  }

  if (a2)
  {
    v3 = 0x6863726172656968;
    v2 = 0xEC0000006C616369;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22E47D054();
  }

  return v11 & 1;
}

uint64_t sub_22E467E18(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000736CLL;
  v3 = 0x6F626D7953204653;
  v4 = a1;
  v5 = 0xE400000000000000;
  v6 = 1397716596;
  if (a1 != 5)
  {
    v6 = 0x534F6E6F69736976;
    v5 = 0xE800000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 5459817;
  if (a1 != 3)
  {
    v8 = 0x534F6863746177;
    v7 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x534F63616DLL;
  if (a1 != 1)
  {
    v10 = 0x617461432063614DLL;
    v9 = 0xEC0000007473796CLL;
  }

  if (!a1)
  {
    v10 = 0x6F626D7953204653;
    v9 = 0xEA0000000000736CLL;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE500000000000000;
        if (v11 != 0x534F63616DLL)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xEC0000007473796CLL;
        if (v11 != 0x617461432063614DLL)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE400000000000000;
        if (v11 != 1397716596)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x534F6E6F69736976)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xE300000000000000;
      if (v11 != 5459817)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v2 = 0xE700000000000000;
    v3 = 0x534F6863746177;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = sub_22E47D054();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

SFSymbols::Availability::Platform_optional __swiftcall Availability.Platform.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22E47CFE4();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Availability.Platform.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6F626D7953204653;
  v3 = 1397716596;
  if (v1 != 5)
  {
    v3 = 0x534F6E6F69736976;
  }

  v4 = 5459817;
  if (v1 != 3)
  {
    v4 = 0x534F6863746177;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x534F63616DLL;
  if (v1 != 1)
  {
    v5 = 0x617461432063614DLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_22E468168(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000736CLL;
  v4 = 0x6F626D7953204653;
  v5 = 0xE400000000000000;
  v6 = 1397716596;
  if (v2 != 5)
  {
    v6 = 0x534F6E6F69736976;
    v5 = 0xE800000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 5459817;
  if (v2 != 3)
  {
    v8 = 0x534F6863746177;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x534F63616DLL;
  if (v2 != 1)
  {
    v10 = 0x617461432063614DLL;
    v9 = 0xEC0000007473796CLL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_22E46824C()
{
  *v0;
  *v0;
  *v0;
  sub_22E47CE24();
}

unint64_t sub_22E468734()
{
  result = qword_27DA64130;
  if (!qword_27DA64130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA64130);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Availability.Platform(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Availability.Platform(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

double static Version.sfSymbolsHost.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27DA64138 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_27DA642E8;
  result = *&xmmword_27DA642D8;
  *a1 = xmmword_27DA642D8;
  *(a1 + 16) = v1;
  return result;
}

uint64_t Alias.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Alias.availability.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
}

uint64_t private_nofill_to_fill.getter()
{
  if (qword_280AC2DE0 != -1)
  {
    swift_once();
  }
}

uint64_t SymbolProperty.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t sub_22E468A68()
{
  result = qword_27DA642F8;
  if (!qword_27DA642F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA642F8);
  }

  return result;
}

unint64_t sub_22E468ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    result = sub_22E45EC9C(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    result = sub_22E45C1E8(a3);
    if (v12)
    {
      v13 = result;
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_22E45F6D4();
        v16 = v19;
      }

      v17 = *(*(v16 + 56) + 16 * v13 + 8);

      result = sub_22E469488(v13, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_22E468BA4(uint64_t a1, uint64_t a2)
{

  v4 = sub_22E477870(v3);

  v5 = *(a2 + 16);
  if (!v5)
  {
LABEL_16:

    return 0;
  }

  v6 = 0;
  v7 = a2 + 32;
  v8 = v4 + 56;
  while (1)
  {
    if (!*(v4 + 16))
    {
      goto LABEL_4;
    }

    v9 = (v7 + 16 * v6);
    v11 = *v9;
    v10 = v9[1];
    v12 = *(v4 + 40);
    sub_22E47D0F4();

    sub_22E47CE24();
    v13 = sub_22E47D124();
    v14 = -1 << *(v4 + 32);
    v15 = v13 & ~v14;
    if ((*(v8 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
    {
      break;
    }

LABEL_3:

LABEL_4:
    if (++v6 == v5)
    {
      goto LABEL_16;
    }
  }

  v16 = ~v14;
  while (1)
  {
    v17 = (*(v4 + 48) + 16 * v15);
    v18 = *v17 == v11 && v17[1] == v10;
    if (v18 || (sub_22E47D054() & 1) != 0)
    {
      break;
    }

    v15 = (v15 + 1) & v16;
    if (((*(v8 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return v6;
}

SFSymbols::AccessLevel_optional __swiftcall AccessLevel.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

SFSymbols::RenderingMode_optional __swiftcall RenderingMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22E47CFE4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RenderingMode.rawValue.getter()
{
  v1 = 0x6F7268636F6E6F6DLL;
  v2 = 0x6C6F6369746C756DLL;
  if (*v0 != 2)
  {
    v2 = 0x657474656C6170;
  }

  if (*v0)
  {
    v1 = 0x6863726172656968;
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

uint64_t sub_22E468E90()
{
  v1 = *v0;
  sub_22E47D0F4();
  sub_22E47CE24();

  return sub_22E47D124();
}

uint64_t sub_22E468F60()
{
  *v0;
  *v0;
  *v0;
  sub_22E47CE24();
}

uint64_t sub_22E46901C()
{
  v1 = *v0;
  sub_22E47D0F4();
  sub_22E47CE24();

  return sub_22E47D124();
}

void sub_22E4690F4(uint64_t *a1@<X8>)
{
  v2 = 0x6F7268636F6E6F6DLL;
  v3 = 0xEA0000000000726FLL;
  v4 = 0x6C6F6369746C756DLL;
  if (*v1 != 2)
  {
    v4 = 0x657474656C6170;
    v3 = 0xE700000000000000;
  }

  v5 = 0xEC0000006C616369;
  if (*v1)
  {
    v2 = 0x6863726172656968;
  }

  else
  {
    v5 = 0xEA0000000000656DLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  *a1 = v6;
  a1[1] = v7;
}

uint64_t SystemSymbolCSVRow.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t SystemSymbolCSVRow.locale.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SystemSymbolCSVRow.useRestrictionText.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t sub_22E469250()
{
  if (*(*v0 + 16))
  {
    v1 = *(*v0 + 32);

    sub_22E469E14(0, 1);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22E46929C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_22E450B0C(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_22E47D054();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22E469444()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_22E469488(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22E47CF44() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_22E47D0E4();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 16 * v3);
          v19 = (v17 + 16 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_22E4695F8(uint64_t result, unint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    v64 = 0;
    return v64 | (((a2 >> 60) & 1) << 40);
  }

  v3 = result;
  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v4 = v3 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v67 = a2;
      v66 = a3;
      result = sub_22E47CFA4();
      a3 = v66;
      v4 = v65;
      a2 = v67;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v4 < 1)
      {
LABEL_153:
        __break(1u);
        goto LABEL_154;
      }

      v30 = v4 - 1;
      if (v30)
      {
        v31 = a3 + 87;
        if (a3 > 10)
        {
          v32 = a3 + 55;
        }

        else
        {
          v31 = 97;
          v32 = 65;
        }

        if (a3 <= 10)
        {
          v33 = a3 + 48;
        }

        else
        {
          v33 = 58;
        }

        if (result)
        {
          v10 = 0;
          v34 = (result + 1);
          do
          {
            v35 = *v34;
            if (v35 < 0x30 || v35 >= v33)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v14 = 0;
                v15 = 1;
                if (v35 < 0x61 || v35 >= v31)
                {
                  goto LABEL_122;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v10 * a3;
            if ((v37 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_148;
            }

            v38 = v35 + v36;
            v10 = v37 + v38;
            if (__CFADD__(v37, v38))
            {
              goto LABEL_148;
            }

            ++v34;
            --v30;
          }

          while (v30);
LABEL_76:
          v14 = v10;
          v69 = 0;
          goto LABEL_146;
        }

        goto LABEL_121;
      }
    }

    else
    {
      if (v5 == 45)
      {
        if (v4 >= 1)
        {
          v6 = v4 - 1;
          if (v6)
          {
            v7 = a3 + 87;
            if (a3 > 10)
            {
              v8 = a3 + 55;
            }

            else
            {
              v7 = 97;
              v8 = 65;
            }

            if (a3 <= 10)
            {
              v9 = a3 + 48;
            }

            else
            {
              v9 = 58;
            }

            if (result)
            {
              v10 = 0;
              v11 = (result + 1);
              while (1)
              {
                v12 = *v11;
                if (v12 < 0x30 || v12 >= v9)
                {
                  if (v12 < 0x41 || v12 >= v8)
                  {
                    v14 = 0;
                    v15 = 1;
                    if (v12 < 0x61 || v12 >= v7)
                    {
                      goto LABEL_122;
                    }

                    v13 = -87;
                  }

                  else
                  {
                    v13 = -55;
                  }
                }

                else
                {
                  v13 = -48;
                }

                v16 = v10 * a3;
                if ((v16 & 0xFFFFFFFF00000000) != 0)
                {
                  goto LABEL_148;
                }

                v17 = v12 + v13;
                v10 = v16 - v17;
                if (v16 < v17)
                {
                  goto LABEL_148;
                }

                ++v11;
                if (!--v6)
                {
                  goto LABEL_76;
                }
              }
            }

LABEL_121:
            v14 = 0;
            v15 = 0;
LABEL_122:
            v69 = v15;
            goto LABEL_146;
          }

          goto LABEL_148;
        }

        __break(1u);
        goto LABEL_152;
      }

      if (v4)
      {
        v48 = a3 + 87;
        if (a3 > 10)
        {
          v49 = a3 + 55;
        }

        else
        {
          v48 = 97;
          v49 = 65;
        }

        if (a3 <= 10)
        {
          v50 = a3 + 48;
        }

        else
        {
          v50 = 58;
        }

        if (!result)
        {
          goto LABEL_121;
        }

        v51 = 0;
        do
        {
          v52 = *result;
          if (v52 < 0x30 || v52 >= v50)
          {
            if (v52 < 0x41 || v52 >= v49)
            {
              v14 = 0;
              v15 = 1;
              if (v52 < 0x61 || v52 >= v48)
              {
                goto LABEL_122;
              }

              v53 = -87;
            }

            else
            {
              v53 = -55;
            }
          }

          else
          {
            v53 = -48;
          }

          v54 = v51 * a3;
          if ((v54 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_148;
          }

          v55 = v52 + v53;
          v51 = v54 + v55;
          if (__CFADD__(v54, v55))
          {
            goto LABEL_148;
          }

          ++result;
          --v4;
        }

        while (v4);
        v14 = v54 + v55;
        v69 = 0;
LABEL_146:
        v64 = v14 | (v69 << 32);
        return v64 | (((a2 >> 60) & 1) << 40);
      }
    }

LABEL_148:
    v14 = 0;
    v69 = 1;
    goto LABEL_146;
  }

  v18 = HIBYTE(a2) & 0xF;
  v68[0] = result;
  v68[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result == 45)
    {
      if (!v18)
      {
LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      v19 = v18 - 1;
      if (v19)
      {
        v20 = 0;
        v21 = a3 + 87;
        if (a3 > 10)
        {
          v22 = a3 + 55;
        }

        else
        {
          v21 = 97;
          v22 = 65;
        }

        if (a3 <= 10)
        {
          v23 = a3 + 48;
        }

        else
        {
          v23 = 58;
        }

        v24 = v68 + 1;
        while (1)
        {
          v25 = *v24;
          if (v25 < 0x30 || v25 >= v23)
          {
            if (v25 < 0x41 || v25 >= v22)
            {
              v14 = 0;
              v27 = 1;
              if (v25 < 0x61 || v25 >= v21)
              {
                goto LABEL_145;
              }

              v26 = -87;
            }

            else
            {
              v26 = -55;
            }
          }

          else
          {
            v26 = -48;
          }

          v28 = v20 * a3;
          if ((v28 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_144;
          }

          v29 = v25 + v26;
          v20 = v28 - v29;
          if (v28 < v29)
          {
            goto LABEL_144;
          }

          ++v24;
          if (!--v19)
          {
            goto LABEL_143;
          }
        }
      }
    }

    else if (v18)
    {
      v20 = 0;
      v56 = a3 + 87;
      if (a3 > 10)
      {
        v57 = a3 + 55;
      }

      else
      {
        v56 = 97;
        v57 = 65;
      }

      if (a3 <= 10)
      {
        v58 = a3 + 48;
      }

      else
      {
        v58 = 58;
      }

      v59 = v68;
      while (1)
      {
        v60 = *v59;
        if (v60 < 0x30 || v60 >= v58)
        {
          if (v60 < 0x41 || v60 >= v57)
          {
            v14 = 0;
            v27 = 1;
            if (v60 < 0x61 || v60 >= v56)
            {
              goto LABEL_145;
            }

            v61 = -87;
          }

          else
          {
            v61 = -55;
          }
        }

        else
        {
          v61 = -48;
        }

        v62 = v20 * a3;
        if ((v62 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_144;
        }

        v63 = v60 + v61;
        v20 = v62 + v63;
        if (__CFADD__(v62, v63))
        {
          goto LABEL_144;
        }

        ++v59;
        if (!--v18)
        {
          goto LABEL_143;
        }
      }
    }

    goto LABEL_144;
  }

  if (v18)
  {
    v39 = v18 - 1;
    if (v39)
    {
      v20 = 0;
      v40 = a3 + 87;
      if (a3 > 10)
      {
        v41 = a3 + 55;
      }

      else
      {
        v40 = 97;
        v41 = 65;
      }

      if (a3 <= 10)
      {
        v42 = a3 + 48;
      }

      else
      {
        v42 = 58;
      }

      v43 = v68 + 1;
      do
      {
        v44 = *v43;
        if (v44 < 0x30 || v44 >= v42)
        {
          if (v44 < 0x41 || v44 >= v41)
          {
            v14 = 0;
            v27 = 1;
            if (v44 < 0x61 || v44 >= v40)
            {
              goto LABEL_145;
            }

            v45 = -87;
          }

          else
          {
            v45 = -55;
          }
        }

        else
        {
          v45 = -48;
        }

        v46 = v20 * a3;
        if ((v46 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_144;
        }

        v47 = v44 + v45;
        v20 = v46 + v47;
        if (__CFADD__(v46, v47))
        {
          goto LABEL_144;
        }

        ++v43;
        --v39;
      }

      while (v39);
LABEL_143:
      v27 = 0;
      v14 = v20;
      goto LABEL_145;
    }

LABEL_144:
    v14 = 0;
    v27 = 1;
LABEL_145:
    v69 = v27;
    goto LABEL_146;
  }

LABEL_154:
  __break(1u);
  return result;
}

uint64_t _s9SFSymbols18SystemSymbolCSVRowV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v22 = *(a1 + 56);
  v21 = *(a1 + 64);
  v20 = *(a1 + 80);
  v14 = *(a1 + 96);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = *(a2 + 48);
  v9 = *(a2 + 56);
  v11 = *(a2 + 64);
  v17 = *(a2 + 72);
  v18 = *(a1 + 72);
  v19 = *(a2 + 80);
  v15 = *(a2 + 88);
  v16 = *(a1 + 88);
  v13 = *(a2 + 96);
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    if (v2 != v6)
    {
      return 0;
    }
  }

  else if (sub_22E47D054() & 1) == 0 || ((v2 ^ v6))
  {
    return 0;
  }

  if (v3)
  {
    if (!v8 || (v4 != v7 || v3 != v8) && (sub_22E47D054() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if ((sub_22E477C50(v5, v10) & 1) == 0 || (sub_22E477CAC(v22, v9) & 1) == 0 || v21 != v11)
  {
    return 0;
  }

  if (!v20)
  {
    if (!v19)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (!v19 || (v18 != v17 || v20 != v19) && (sub_22E47D054() & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  if (v16 == 4)
  {
    if (v15 != 4)
    {
      return 0;
    }
  }

  else if (v15 == 4 || (sub_22E467CC4(v16, v15) & 1) == 0)
  {
    return 0;
  }

  return sub_22E46929C(v14, v13);
}

unint64_t sub_22E469D44(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 8 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64150, &qword_22E47EA40);
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

  result = v8 + 8 * a3;
  v13 = (v7 + 32 + 8 * a2);
  if (result != v13 || result >= v13 + 8 * v12)
  {
    result = memmove(result, v13, 8 * v12);
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

unint64_t sub_22E469E14(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_22E4787EC(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_22E469D44(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t _s9SFSymbols18SystemSymbolCSVRowV6decode_22additionalColumnTitlesSayACG10Foundation4DataV_SaySSGtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22E47CBC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v253 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22E47CDF4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_22E47CDE4();
  sub_22E47CDD4();
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = sub_22E456730();

  v304 = v12;
  if (!v12[2])
  {
LABEL_6:

    return MEMORY[0x277D84F90];
  }

  v291 = v5;
  v294 = v8;
  v295 = v4;
  v13 = sub_22E469250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA64310, &qword_22E47EA38);
  inited = swift_initStackObject();
  v297 = xmmword_22E47E790;
  *(inited + 16) = xmmword_22E47E790;
  *(inited + 32) = 1701667150;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0x616E2E74726F6873;
  *(inited + 56) = 0xEA0000000000656DLL;
  v290 = sub_22E468BA4(inited, v13);
  v16 = v15;
  swift_setDeallocating();
  v17 = *(inited + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v16)
  {
    goto LABEL_5;
  }

  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_22E47E7A0;
  *(v18 + 32) = 1933661520;
  *(v18 + 40) = 0xE400000000000000;
  *(v18 + 48) = 0x734155502077654ELL;
  *(v18 + 56) = 0xE800000000000000;
  *(v18 + 64) = 0x415550202057454ELL;
  *(v18 + 72) = 0xE900000000000073;
  v19 = sub_22E468BA4(v18, v13);
  v21 = v20;

  if (v21)
  {
LABEL_5:

    goto LABEL_6;
  }

  v23 = sub_22E47A25C(v13);
  v288 = v19;
  if (v23)
  {
    v24 = 0;
    v25 = (v13 + 40);
    while (1)
    {
      if (v24 >= *(v13 + 16))
      {
        goto LABEL_343;
      }

      v26 = *(v25 - 1) == 0x6E6F6974636E7546 && *v25 == 0xE900000000000073;
      if (v26 || (sub_22E47D054() & 1) != 0)
      {
        break;
      }

      ++v24;
      v25 += 2;
      if (v23 == v24)
      {
        v24 = 0;
        v280 = 0;
        goto LABEL_19;
      }
    }

    v280 = 1;
LABEL_19:
    v27 = 0;
    v28 = (v13 + 40);
    while (1)
    {
      if (v27 >= *(v13 + 16))
      {
        goto LABEL_344;
      }

      if (*(v28 - 1) == 0x7365646F63696E55 && *v28 == 0xE800000000000000)
      {
        v278 = 1;
        goto LABEL_31;
      }

      v30 = v27;
      if (sub_22E47D054())
      {
        break;
      }

      v27 = v30 + 1;
      v28 += 2;
      if (v23 == v30 + 1)
      {
        v27 = 0;
        v278 = 0;
        goto LABEL_31;
      }
    }

    v278 = 1;
    v27 = v30;
LABEL_31:
    v31 = 0;
    v32 = (v13 + 40);
    v279 = v27;
    while (1)
    {
      if (v31 >= *(v13 + 16))
      {
        goto LABEL_345;
      }

      if (*(v32 - 1) == 0x4C20737365636341 && *v32 == 0xEC0000006C657665)
      {
        v273 = 1;
        goto LABEL_42;
      }

      v34 = v31;
      if (sub_22E47D054())
      {
        break;
      }

      v31 = v34 + 1;
      v32 += 2;
      if (v23 == v34 + 1)
      {
        v31 = 0;
        v273 = 0;
        goto LABEL_42;
      }
    }

    v273 = 1;
    v31 = v34;
LABEL_42:
    v275 = v31;
    v35 = 0;
    v36 = (v13 + 40);
    while (1)
    {
      if (v35 >= *(v13 + 16))
      {
        goto LABEL_347;
      }

      v299 = v35;
      v37 = *(v36 - 1) == 0x6E656469666E6F43 && *v36 == 0xEC0000006C616974;
      if (v37 || (sub_22E47D054() & 1) != 0)
      {
        break;
      }

      v35 = v299 + 1;
      v36 += 2;
      if (v23 == v299 + 1)
      {
        v276 = 0;
        v299 = 0;
        goto LABEL_52;
      }
    }

    v276 = 1;
LABEL_52:
    v19 = v288;
  }

  else
  {
    v275 = 0;
    v273 = 0;
    v24 = 0;
    v280 = 0;
    v278 = 0;
    v279 = 0;
    v276 = 0;
    v299 = 0;
  }

  v277 = v24;
  v38 = swift_initStackObject();
  *(v38 + 16) = v297;
  *(v38 + 32) = 0x656C61636F4CLL;
  *(v38 + 40) = 0xE600000000000000;
  strcpy((v38 + 48), "Name - Locale");
  *(v38 + 62) = -4864;
  v287 = sub_22E468BA4(v38, v13);
  LODWORD(v289) = v39;

  v40 = swift_initStackObject();
  *(v40 + 16) = v297;
  *(v40 + 32) = 0xD000000000000016;
  *(v40 + 40) = 0x800000022E4D2AA0;
  *(v40 + 48) = 0xD000000000000010;
  *(v40 + 56) = 0x800000022E4D2AC0;
  v286 = sub_22E468BA4(v40, v13);
  LODWORD(v282) = v41;

  if (v23)
  {
    v42 = 0;
    v43 = (v13 + 40);
    while (1)
    {
      if (v42 >= *(v13 + 16))
      {
        goto LABEL_346;
      }

      v298 = v42;
      v44 = *(v43 - 1) == 0xD000000000000011 && 0x800000022E4D2AE0 == *v43;
      if (v44 || (sub_22E47D054() & 1) != 0)
      {
        break;
      }

      v42 = v298 + 1;
      v43 += 2;
      if (v23 == v298 + 1)
      {
        goto LABEL_62;
      }
    }

    v274 = 0;
  }

  else
  {
LABEL_62:
    v298 = 0;
    v274 = 1;
  }

  v45 = swift_initStackObject();
  *(v45 + 16) = v297;
  *(v45 + 32) = 0xD000000000000014;
  *(v45 + 40) = 0x800000022E4D2B00;
  strcpy((v45 + 48), "Mirror for RTL");
  *(v45 + 63) = -18;
  v285 = sub_22E468BA4(v45, v13);
  LODWORD(v281) = v46;

  v47 = sub_22E4657D0(MEMORY[0x277D84F90]);
  v302 = v47;
  v48 = sub_22E47A25C(a3);
  if (!v48)
  {
    goto LABEL_80;
  }

  v49 = v48;
  v50 = 0;
  v296 = (v13 + 40);
  *&v297 = a3 + 32;
  do
  {
    sub_22E4785C4(v50, 1, a3);
    v51 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      goto LABEL_342;
    }

    v52 = a3;
    if (v23)
    {
      v53 = 0;
      v54 = (v297 + 16 * v50);
      v56 = *v54;
      v55 = v54[1];
      v57 = v296;
      while (v53 < *(v13 + 16))
      {
        v58 = *(v57 - 1) == v56 && *v57 == v55;
        if (v58 || (sub_22E47D054() & 1) != 0)
        {

          sub_22E468ACC(v56, v55, v53);
          goto LABEL_67;
        }

        ++v53;
        v57 += 2;
        if (v23 == v53)
        {
          goto LABEL_67;
        }
      }

      __break(1u);
LABEL_341:
      __break(1u);
LABEL_342:
      __break(1u);
LABEL_343:
      __break(1u);
LABEL_344:
      __break(1u);
LABEL_345:
      __break(1u);
LABEL_346:
      __break(1u);
LABEL_347:
      __break(1u);
      goto LABEL_348;
    }

LABEL_67:
    v50 = v51;
    a3 = v52;
  }

  while (v51 != v49);
  v47 = v302;
  v19 = v288;
LABEL_80:

  v59 = v304;
  v60 = sub_22E47A25C(v304);
  if (!v60)
  {
    v64 = MEMORY[0x277D84F90];
LABEL_339:

    return v64;
  }

  v61 = 0;
  v62 = 0;
  v63 = v59 + 32;
  v284 = (v291 + 8);
  v266 = &v302 + 1;
  v265 = 0x800000022E4D2B20;
  v271 = v47 + 8;
  v270 = (v287 >= 0) & ~v289;
  v269 = (v286 >= 0) & ~v282;
  v268 = (v285 >= 0) & ~v281;
  v267 = v60 - 1;
  v64 = MEMORY[0x277D84F90];
  v283 = v47;
  v296 = v59;
  v292 = v59 + 32;
  v293 = v60;
LABEL_82:
  v281 = v64;
  v65 = v61;
  v66 = v290;
  while (2)
  {
    if (v65 >= *(v59 + 16))
    {
      goto LABEL_341;
    }

    if (v66 < 0 || (v68 = *(v63 + 8 * v65), v69 = *(v68 + 16), v66 >= v69) || v19 < 0 || v19 >= v69)
    {
LABEL_89:
      if (v60 != ++v65)
      {
        continue;
      }

      v64 = v281;
      goto LABEL_339;
    }

    break;
  }

  v70 = (v68 + 32 + 16 * v19);
  v72 = *v70;
  v71 = v70[1];
  v73 = HIBYTE(v71) & 0xF;
  if ((v71 & 0x2000000000000000) == 0)
  {
    v73 = v72 & 0xFFFFFFFFFFFFLL;
  }

  if (!v73)
  {
    v59 = v296;
    goto LABEL_89;
  }

  v291 = v68 + 32;
  v74 = (v68 + 32 + 16 * v66);
  v75 = v74[1];
  v289 = *v74;
  v76 = sub_22E4695F8(v72, v71, 16);
  *&v297 = v62;
  if ((v76 & 0x10000000000) == 0)
  {
    v77 = v76;

    v59 = v296;
    if ((v77 & 0x100000000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_88;
  }

  v77 = sub_22E4797F8(v72, v71, 16);

  v59 = v296;
  if ((v77 & 0x100000000) != 0)
  {
    goto LABEL_88;
  }

LABEL_83:
  if (v77 >> 11 == 27 || v77 > 0x10FFFF)
  {
LABEL_88:

    v63 = v292;
    v60 = v293;
    v62 = v297;
    goto LABEL_89;
  }

  v78 = v278;
  if (v279 >= v69)
  {
    v78 = 0;
  }

  v79 = MEMORY[0x277D84F90];
  v263 = v75;
  v264 = MEMORY[0x277D84F90];
  v262 = v77;
  v80 = v291;
  if (v78 != 1)
  {
LABEL_230:
    v147 = v277;
    v148 = v280;
    if (v277 >= v69)
    {
      v148 = 0;
    }

    if (v148 == 1)
    {
      sub_22E4785C4(v277, 1, v68);
      v149 = (v80 + 16 * v147);
      v151 = *v149;
      v150 = v149[1];
      v302 = v151;
      v303 = v150;
      v300 = 44;
      v301 = 0xE100000000000000;
      v272 = sub_22E453EA4();
      v152 = sub_22E47CF14();
      v153 = sub_22E454B7C(v152);
      if (v153)
      {
        v154 = v153;
        v300 = v79;
        sub_22E4785E4(v153);
        if (v154 < 0)
        {
LABEL_356:
          __break(1u);
          goto LABEL_357;
        }

        v261 = v152;
        v155 = (v152 + 40);
        do
        {
          v156 = *v155;
          v302 = *(v155 - 1);
          v303 = v156;

          v157 = v294;
          sub_22E47CB74();
          v158 = sub_22E47CF24();
          v282 = v159;
          (*v284)(v157, v295);

          v160 = v300;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22E476820(0, *(v160 + 16) + 1, 1);
            v160 = v300;
          }

          v162 = *(v160 + 16);
          v161 = *(v160 + 24);
          if (v162 >= v161 >> 1)
          {
            sub_22E476820((v161 > 1), v162 + 1, 1);
            v160 = v300;
          }

          *(v160 + 16) = v162 + 1;
          v163 = v160 + 16 * v162;
          v164 = v282;
          *(v163 + 32) = v158;
          *(v163 + 40) = v164;
          v155 += 2;
          --v154;
        }

        while (v154);

        v165 = MEMORY[0x277D84F90];
      }

      else
      {

        v165 = v79;
        v160 = v79;
      }

      v166 = sub_22E47A25C(v160);
      v167 = 0;
      v168 = v160 + 40;
LABEL_245:
      v169 = (v168 + 16 * v167);
      while (v166 != v167)
      {
        if (v167 >= *(v160 + 16))
        {
          goto LABEL_349;
        }

        ++v167;
        v170 = *(v169 - 1);
        v171 = *v169;
        v169 += 2;
        v172 = HIBYTE(v171) & 0xF;
        if ((v171 & 0x2000000000000000) == 0)
        {
          v172 = v170 & 0xFFFFFFFFFFFFLL;
        }

        if (v172)
        {
          v282 = v168;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v302 = v165;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22E476820(0, *(v165 + 2) + 1, 1);
            v165 = v302;
          }

          v175 = *(v165 + 2);
          v174 = *(v165 + 3);
          v176 = v175 + 1;
          v168 = v282;
          if (v175 >= v174 >> 1)
          {
            v272 = v175 + 1;
            v261 = v175;
            sub_22E476820((v174 > 1), v175 + 1, 1);
            v176 = v272;
            v175 = v261;
            v168 = v282;
            v165 = v302;
          }

          *(v165 + 2) = v176;
          v177 = &v165[16 * v175];
          *(v177 + 4) = v170;
          *(v177 + 5) = v171;
          goto LABEL_245;
        }
      }

      v80 = v291;
    }

    else
    {
      v165 = v79;
    }

    v282 = v165;
    v178 = v276;
    if (v299 >= v69)
    {
      v178 = 0;
    }

    v179 = v287;
    if (v178 == 1)
    {
      v180 = v299;
      sub_22E4785C4(v299, 1, v68);
      v181 = (v80 + 16 * v180);
      v182 = *v181 == 1163219540 && v181[1] == 0xE400000000000000;
      if (v182 || (sub_22E47D054() & 1) != 0)
      {
        v183 = 3;
        goto LABEL_275;
      }
    }

    v184 = v273;
    if (v275 >= v69)
    {
      v184 = 0;
    }

    if ((v184 & 1) == 0)
    {
      goto LABEL_274;
    }

    sub_22E4785C4(v275, 1, v68);
    v185 = (v80 + 16 * v275);
    v186 = *v185;
    v187 = v185[1];
    v188 = *v185 == 0x63696C627550 && v187 == 0xE600000000000000;
    if (v188 || (sub_22E47D054() & 1) != 0)
    {
      goto LABEL_274;
    }

    if (v186 == 0xD000000000000017 && v265 == v187 || (sub_22E47D054() & 1) != 0)
    {
      v183 = 1;
    }

    else
    {
      if ((v186 != 0x65746176697250 || v187 != 0xE700000000000000) && (sub_22E47D054() & 1) == 0)
      {
LABEL_274:
        v183 = 0;
        goto LABEL_275;
      }

      v183 = 2;
    }

LABEL_275:
    v189 = v270;
    if (v179 >= v69)
    {
      v189 = 0;
    }

    if (v189 != 1)
    {
      goto LABEL_282;
    }

    sub_22E4785C4(v179, 1, v68);
    v190 = (v80 + 16 * v179);
    v192 = *v190;
    v191 = v190[1];
    v193 = HIBYTE(v191) & 0xF;
    if ((v191 & 0x2000000000000000) == 0)
    {
      v193 = v192 & 0xFFFFFFFFFFFFLL;
    }

    if (v193)
    {
      v272 = v192;
      v261 = v191;
    }

    else
    {
LABEL_282:
      v272 = 0;
      v261 = 0;
    }

    v61 = v65 + 1;
    v194 = sub_22E4509F8(MEMORY[0x277D84F90]);
    v195 = 1 << *(v283 + 32);
    if (v195 < 64)
    {
      v196 = ~(-1 << v195);
    }

    else
    {
      v196 = -1;
    }

    v197 = v196 & v283[8];
    v198 = (v195 + 63) >> 6;

    v199 = 0;
    v200 = v271;
    while (v197)
    {
LABEL_292:
      v202 = __clz(__rbit64(v197));
      v197 &= v197 - 1;
      v203 = v202 | (v199 << 6);
      v204 = *(v283[6] + 8 * v203);
      if ((v204 & 0x8000000000000000) == 0 && v204 < v69)
      {
        v257 = v183;
        if (v204 >= *(v68 + 16))
        {
          goto LABEL_358;
        }

        v205 = (v283[7] + 16 * v203);
        v206 = v205[1];
        v259 = *v205;
        v260 = v206;
        v207 = (v291 + 16 * v204);
        v208 = v207[1];
        v255 = *v207;
        swift_bridgeObjectRetain_n();
        v256 = v208;

        v254 = swift_isUniquelyReferenced_nonNull_native();
        v302 = v194;
        v258 = sub_22E450B0C(v259, v260);
        v209 = v194[2];
        v211 = v210;
        v212 = (v210 & 1) == 0;
        if (__OFADD__(v209, v212))
        {
          goto LABEL_359;
        }

        if (sub_22E45EC3C(v254, v209 + v212))
        {
          v213 = sub_22E450B0C(v259, v260);
          if ((v211 & 1) != (v214 & 1))
          {
            goto LABEL_361;
          }

          v258 = v213;
        }

        if (v211)
        {

          v194 = v302;
          v215 = (v302[7] + 16 * v258);
          v259 = v215[1];
          v216 = v256;
          *v215 = v255;
          v215[1] = v216;
        }

        else
        {
          v194 = v302;
          v217 = v258;
          v302[(v258 >> 6) + 8] |= 1 << v258;
          v218 = (v194[6] + 16 * v217);
          v219 = v260;
          *v218 = v259;
          v218[1] = v219;
          v220 = (v194[7] + 16 * v217);
          v221 = v256;
          *v220 = v255;
          v220[1] = v221;

          v222 = v194[2];
          v223 = __OFADD__(v222, 1);
          v224 = v222 + 1;
          if (v223)
          {
            goto LABEL_360;
          }

          v194[2] = v224;
        }

        v200 = v271;
        v183 = v257;
      }
    }

    while (1)
    {
      v201 = v199 + 1;
      if (__OFADD__(v199, 1))
      {
        break;
      }

      if (v201 >= v198)
      {
        v260 = v194;

        v225 = v286;
        v226 = v269;
        if (v286 >= v69)
        {
          v226 = 0;
        }

        if (v226 != 1)
        {
          goto LABEL_311;
        }

        sub_22E4785C4(v286, 1, v68);
        v227 = (v291 + 16 * v225);
        v229 = *v227;
        v228 = v227[1];
        v230 = HIBYTE(v228) & 0xF;
        if ((v228 & 0x2000000000000000) == 0)
        {
          v230 = v229 & 0xFFFFFFFFFFFFLL;
        }

        if (v230)
        {
          v258 = v228;
          v259 = v229;
        }

        else
        {
LABEL_311:
          v258 = 0;
          v259 = 0;
        }

        v231 = v285;
        v232 = v268;
        if (v285 >= v69)
        {
          v232 = 0;
        }

        if (v232 == 1)
        {
          v233 = 1;
          sub_22E4785C4(v285, 1, v68);
          v234 = (v291 + 16 * v231);
          if (*v234 != 1163219540 || v234[1] != 0xE400000000000000)
          {
            v233 = sub_22E47D054();
          }
        }

        else
        {
          v233 = 0;
        }

        if (v274 || (v235 = v298, v298 >= v69))
        {

          v240 = 4;
        }

        else
        {
          sub_22E4785C4(v298, 1, v68);
          v236 = (v291 + 16 * v235);
          v237 = *v236;
          v238 = v236[1];
          v239._countAndFlagsBits = sub_22E47CE04();
          RenderingMode.init(rawValue:)(v239);

          v240 = v302;
        }

        v241 = v289;
        v242 = v183;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v281 = sub_22E478920(0, *(v281 + 2) + 1, 1, v281);
        }

        v63 = v292;
        v60 = v293;
        v62 = v297;
        v244 = *(v281 + 2);
        v243 = *(v281 + 3);
        if (v244 >= v243 >> 1)
        {
          v252 = sub_22E478920((v243 > 1), v244 + 1, 1, v281);
          v62 = v297;
          v281 = v252;
          v63 = v292;
          v60 = v293;
        }

        v245 = v281;
        *(v281 + 2) = v244 + 1;
        v246 = &v245[104 * v244];
        v247 = v263;
        *(v246 + 8) = v262;
        *(v246 + 5) = v241;
        *(v246 + 6) = v247;
        v246[56] = v233 & 1;
        v248 = *(v307 + 3);
        *(v246 + 57) = v307[0];
        *(v246 + 15) = v248;
        v249 = v261;
        *(v246 + 8) = v272;
        *(v246 + 9) = v249;
        v250 = v282;
        *(v246 + 10) = v264;
        *(v246 + 11) = v250;
        v246[96] = v242;
        LODWORD(v250) = *&v306[3];
        *(v246 + 97) = *v306;
        *(v246 + 25) = v250;
        v251 = v258;
        *(v246 + 13) = v259;
        *(v246 + 14) = v251;
        v64 = v245;
        v246[120] = v240;
        LODWORD(v251) = *&v305[3];
        *(v246 + 121) = *v305;
        *(v246 + 31) = v251;
        *(v246 + 16) = v260;
        v19 = v288;
        v59 = v296;
        if (v267 != v65)
        {
          goto LABEL_82;
        }

        goto LABEL_339;
      }

      v197 = v200[v201];
      ++v199;
      if (v197)
      {
        v199 = v201;
        goto LABEL_292;
      }
    }

LABEL_348:
    __break(1u);
LABEL_349:
    __break(1u);
LABEL_350:
    __break(1u);
LABEL_351:
    __break(1u);
LABEL_352:
    __break(1u);
LABEL_353:
    __break(1u);
LABEL_354:
    __break(1u);
LABEL_355:
    __break(1u);
    goto LABEL_356;
  }

  v81 = v279;
  sub_22E4785C4(v279, 1, v68);
  v82 = (v80 + 16 * v81);
  v84 = *v82;
  v83 = v82[1];
  v302 = v84;
  v303 = v83;
  v300 = 44;
  v301 = 0xE100000000000000;
  v272 = sub_22E453EA4();
  v85 = sub_22E47CF14();
  v86 = sub_22E454B7C(v85);
  if (!v86)
  {

    v93 = v79;
    goto LABEL_117;
  }

  v87 = v86;
  v300 = v79;
  sub_22E4785E4(v86);
  if (v87 < 0)
  {
    goto LABEL_355;
  }

  v264 = v85;
  v88 = (v85 + 40);
  do
  {
    v89 = *v88;
    v302 = *(v88 - 1);
    v303 = v89;

    v90 = v294;
    sub_22E47CB74();
    v91 = sub_22E47CF24();
    v282 = v92;
    (*v284)(v90, v295);

    v93 = v300;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22E476820(0, *(v93 + 16) + 1, 1);
      v93 = v300;
    }

    v95 = *(v93 + 16);
    v94 = *(v93 + 24);
    if (v95 >= v94 >> 1)
    {
      sub_22E476820((v94 > 1), v95 + 1, 1);
      v93 = v300;
    }

    *(v93 + 16) = v95 + 1;
    v96 = v93 + 16 * v95;
    v97 = v282;
    *(v96 + 32) = v91;
    *(v96 + 40) = v97;
    v88 += 2;
    --v87;
  }

  while (v87);

  v79 = MEMORY[0x277D84F90];
LABEL_117:
  v98 = sub_22E47A25C(v93);
  if (v98)
  {
    v99 = v98;
    v100 = 0;
    v101 = v93 + 32;
    v102 = v79;
    v103 = v266;
    v282 = v98;
    v272 = v93 + 32;
    while (1)
    {
      if (v100 >= *(v93 + 16))
      {
        goto LABEL_350;
      }

      v104 = (v101 + 16 * v100);
      v106 = *v104;
      v105 = v104[1];
      ++v100;
      v107 = HIBYTE(v105) & 0xF;
      v108 = v106 & 0xFFFFFFFFFFFFLL;
      if ((v105 & 0x2000000000000000) != 0)
      {
        v109 = HIBYTE(v105) & 0xF;
      }

      else
      {
        v109 = v106 & 0xFFFFFFFFFFFFLL;
      }

      if (!v109)
      {
        goto LABEL_204;
      }

      if ((v105 & 0x1000000000000000) == 0)
      {
        break;
      }

      v112 = sub_22E4797F8(v106, v105, 16);

      v101 = v272;
      v99 = v282;
      v103 = v266;
      if ((v112 & 0x100000000) == 0)
      {
LABEL_207:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_22E478B4C(0, *(v102 + 2) + 1, 1, v102);
        }

        v133 = *(v102 + 2);
        v132 = *(v102 + 3);
        v103 = v266;
        v99 = v282;
        v101 = v272;
        if (v133 >= v132 >> 1)
        {
          v136 = sub_22E478B4C((v132 > 1), v133 + 1, 1, v102);
          v101 = v272;
          v99 = v282;
          v103 = v266;
          v102 = v136;
        }

        *(v102 + 2) = v133 + 1;
        *&v102[4 * v133 + 32] = v112;
      }

LABEL_204:
      if (v100 == v99)
      {
        goto LABEL_214;
      }
    }

    if ((v105 & 0x2000000000000000) != 0)
    {
      v302 = v106;
      v303 = v105 & 0xFFFFFFFFFFFFFFLL;
      if (v106 == 43)
      {
        if (!v107)
        {
          goto LABEL_354;
        }

        if (--v107)
        {
          LODWORD(v112) = 0;
          v124 = v103;
          while (1)
          {
            v125 = *v124;
            v126 = v125 - 48;
            if ((v125 - 48) >= 0xA)
            {
              if ((v125 - 65) < 6)
              {
                v126 = v125 - 55;
              }

              else
              {
                if ((v125 - 97) > 5)
                {
                  goto LABEL_202;
                }

                v126 = v125 - 87;
              }
            }

            if (v112 >> 28)
            {
              break;
            }

            LODWORD(v112) = 16 * v112 + v126;
            ++v124;
            if (!--v107)
            {
              goto LABEL_203;
            }
          }
        }
      }

      else if (v106 == 45)
      {
        if (!v107)
        {
          goto LABEL_351;
        }

        if (--v107)
        {
          LODWORD(v112) = 0;
          v117 = v103;
          while (1)
          {
            v118 = *v117;
            v119 = v118 - 48;
            if ((v118 - 48) >= 0xA)
            {
              if ((v118 - 65) < 6)
              {
                v119 = v118 - 55;
              }

              else
              {
                if ((v118 - 97) > 5)
                {
                  goto LABEL_202;
                }

                v119 = v118 - 87;
              }
            }

            if (v112 >> 28)
            {
              break;
            }

            v120 = 16 * v112;
            LODWORD(v112) = 16 * v112 - v119;
            if (v120 < v119)
            {
              break;
            }

            ++v117;
            if (!--v107)
            {
              goto LABEL_203;
            }
          }
        }
      }

      else if (v107)
      {
        LODWORD(v112) = 0;
        v129 = &v302;
        while (1)
        {
          v130 = *v129;
          v131 = v130 - 48;
          if ((v130 - 48) >= 0xA)
          {
            if ((v130 - 65) < 6)
            {
              v131 = v130 - 55;
            }

            else
            {
              if ((v130 - 97) > 5)
              {
                goto LABEL_202;
              }

              v131 = v130 - 87;
            }
          }

          if (v112 >> 28)
          {
            break;
          }

          LODWORD(v112) = 16 * v112 + v131;
          ++v129;
          if (!--v107)
          {
            goto LABEL_203;
          }
        }
      }

      goto LABEL_202;
    }

    if ((v106 & 0x1000000000000000) != 0)
    {
      v110 = ((v105 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v134 = v99;
      v135 = v101;
      v110 = sub_22E47CFA4();
      v101 = v135;
      v99 = v134;
      v103 = v266;
    }

    v111 = *v110;
    if (v111 == 43)
    {
      if (v108 < 1)
      {
        goto LABEL_352;
      }

      v107 = v108 - 1;
      if (v108 == 1)
      {
        goto LABEL_202;
      }

      if (v110)
      {
        LODWORD(v112) = 0;
        v121 = v110 + 1;
        while (1)
        {
          v122 = *v121;
          v123 = v122 - 48;
          if ((v122 - 48) >= 0xA)
          {
            if ((v122 - 65) < 6)
            {
              v123 = v122 - 55;
            }

            else
            {
              if ((v122 - 97) > 5)
              {
                goto LABEL_202;
              }

              v123 = v122 - 87;
            }
          }

          if (v112 >> 28)
          {
            goto LABEL_202;
          }

          LODWORD(v112) = 16 * v112 + v123;
          ++v121;
          if (!--v107)
          {
            goto LABEL_203;
          }
        }
      }
    }

    else if (v111 == 45)
    {
      if (v108 < 1)
      {
        goto LABEL_353;
      }

      v107 = v108 - 1;
      if (v108 == 1)
      {
        goto LABEL_202;
      }

      if (v110)
      {
        LODWORD(v112) = 0;
        v113 = v110 + 1;
        while (1)
        {
          v114 = *v113;
          v115 = v114 - 48;
          if ((v114 - 48) >= 0xA)
          {
            if ((v114 - 65) < 6)
            {
              v115 = v114 - 55;
            }

            else
            {
              if ((v114 - 97) > 5)
              {
                goto LABEL_202;
              }

              v115 = v114 - 87;
            }
          }

          if (v112 >> 28)
          {
            goto LABEL_202;
          }

          v116 = 16 * v112;
          LODWORD(v112) = 16 * v112 - v115;
          if (v116 < v115)
          {
            goto LABEL_202;
          }

          ++v113;
          if (!--v107)
          {
            goto LABEL_203;
          }
        }
      }
    }

    else
    {
      if (!v108)
      {
LABEL_202:
        LODWORD(v112) = 0;
        LOBYTE(v107) = 1;
LABEL_203:
        LOBYTE(v300) = v107;
        if ((v107 & 1) == 0)
        {
          goto LABEL_207;
        }

        goto LABEL_204;
      }

      if (v110)
      {
        LODWORD(v112) = 0;
        while (1)
        {
          v127 = *v110;
          v128 = v127 - 48;
          if ((v127 - 48) >= 0xA)
          {
            if ((v127 - 65) < 6)
            {
              v128 = v127 - 55;
            }

            else
            {
              if ((v127 - 97) > 5)
              {
                goto LABEL_202;
              }

              v128 = v127 - 87;
            }
          }

          if (v112 >> 28)
          {
            goto LABEL_202;
          }

          LODWORD(v112) = 16 * v112 + v128;
          ++v110;
          if (!--v108)
          {
            LOBYTE(v107) = 0;
            goto LABEL_203;
          }
        }
      }
    }

    LODWORD(v112) = 0;
    LOBYTE(v107) = 0;
    goto LABEL_203;
  }

  v102 = v79;
LABEL_214:

  v137 = sub_22E47A25C(v102);
  if (!v137)
  {

    v79 = MEMORY[0x277D84F90];
    v264 = MEMORY[0x277D84F90];
LABEL_229:
    v80 = v291;
    goto LABEL_230;
  }

  v138 = v137;
  if (v137 >= 1)
  {
    v139 = 32;
    v140 = MEMORY[0x277D84F90];
    v141 = v102;
    do
    {
      v142 = *&v102[v139];
      if (v142 <= 0x10FFFF && (v142 & 0xFFFFF800) != 55296)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v140 = sub_22E478A48(0, *(v140 + 2) + 1, 1, v140);
        }

        v145 = *(v140 + 2);
        v144 = *(v140 + 3);
        v146 = v140;
        if (v145 >= v144 >> 1)
        {
          v146 = sub_22E478A48((v144 > 1), v145 + 1, 1, v140);
        }

        *(v146 + 2) = v145 + 1;
        v140 = v146;
        *&v146[4 * v145 + 32] = v142;
        v102 = v141;
      }

      v139 += 4;
      --v138;
    }

    while (v138);
    v264 = v140;

    v79 = MEMORY[0x277D84F90];
    goto LABEL_229;
  }

LABEL_357:
  __break(1u);
LABEL_358:
  __break(1u);
LABEL_359:
  __break(1u);
LABEL_360:
  __break(1u);
LABEL_361:
  result = sub_22E47D094();
  __break(1u);
  return result;
}