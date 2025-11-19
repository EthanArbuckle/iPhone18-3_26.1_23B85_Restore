void *sub_222B935EC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_222C94F6C();
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

void *sub_222B93754()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B18, &unk_222CA6170);
  v2 = *v0;
  v3 = sub_222C94F6C();
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

void *sub_222B938D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254D0, &qword_222C986F0);
  v2 = *v0;
  v3 = sub_222C94F6C();
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

void *sub_222B93A70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254D8, &qword_222C986F8);
  v2 = *v0;
  v3 = sub_222C94F6C();
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
        v19 = *v18;
        v20 = v18[1];
        v21 = (*(v4 + 48) + v17);
        v22 = *(*(v2 + 56) + v17);
        *v21 = v19;
        v21[1] = v20;
        *(*(v4 + 56) + v17) = v22;
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

char *sub_222B93BE4()
{
  v1 = v0;
  v35 = sub_222C9367C();
  v37 = *(v35 - 8);
  v2 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B70, &qword_222C9A4E0);
  v4 = *v0;
  v5 = sub_222C94F6C();
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
    v36 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v33 = v4;
    v16 = v6;
    if (v14)
    {
      do
      {
        v17 = __clz(__rbit64(v14));
        v38 = (v14 - 1) & v14;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = v37;
        v22 = *(v37 + 72) * v20;
        v24 = v34;
        v23 = v35;
        (*(v37 + 16))(v34, *(v4 + 48) + v22, v35);
        v20 *= 2;
        v25 = (*(v4 + 56) + v20);
        v26 = *v25;
        v27 = v25[1];
        result = (*(v21 + 32))(*(v16 + 48) + v22, v24, v23);
        v28 = (*(v16 + 56) + v20);
        *v28 = v26;
        v28[1] = v27;
        v4 = v33;
        v14 = v38;
      }

      while (v38);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v36;
        goto LABEL_18;
      }

      v19 = *(v30 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
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

char *sub_222B93EAC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v49 = a4;
  v7 = v4;
  v8 = a1(0);
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v47 = &v39 - v10;
  v46 = sub_222C9367C();
  v51 = *(v46 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v13 = *v4;
  v14 = sub_222C94F6C();
  v15 = v14;
  if (*(v13 + 16))
  {
    result = (v14 + 64);
    v17 = (v13 + 64);
    v18 = ((1 << *(v15 + 32)) + 63) >> 6;
    v40 = v7;
    v41 = v13 + 64;
    if (v15 != v13 || result >= &v17[8 * v18])
    {
      result = memmove(result, v17, 8 * v18);
    }

    v19 = 0;
    v20 = *(v13 + 16);
    v50 = v15;
    *(v15 + 16) = v20;
    v21 = 1 << *(v13 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v13 + 64);
    v24 = (v21 + 63) >> 6;
    v25 = v50;
    v42 = v51 + 32;
    v43 = v51 + 16;
    v44 = v13;
    v26 = v51;
    v27 = v49;
    if (v23)
    {
      do
      {
        v28 = __clz(__rbit64(v23));
        v52 = (v23 - 1) & v23;
LABEL_14:
        v31 = v28 | (v19 << 6);
        v32 = *(v26 + 72) * v31;
        v34 = v45;
        v33 = v46;
        (*(v26 + 16))(v45, *(v13 + 48) + v32, v46);
        v35 = *(v13 + 56);
        v36 = v47;
        v37 = *(v48 + 72) * v31;
        sub_222B95A08(v35 + v37, v47, v27);
        (*(v26 + 32))(*(v25 + 48) + v32, v34, v33);
        v38 = v36;
        v13 = v44;
        result = sub_222B95A70(v38, *(v25 + 56) + v37, v27);
        v23 = v52;
      }

      while (v52);
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v7 = v40;
        v15 = v50;
        goto LABEL_18;
      }

      v30 = *(v41 + 8 * v19);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v52 = (v30 - 1) & v30;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v15;
  }

  return result;
}

void *sub_222B941C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254C0, &unk_222C986E0);
  v2 = *v0;
  v3 = sub_222C94F6C();
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

void *sub_222B94340(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_222C94F6C();
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
        v22 = *v20;
        v21 = v20[1];
        LODWORD(v20) = *(*(v4 + 56) + 4 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = v22;
        v23[1] = v21;
        *(*(v6 + 56) + 4 * v19) = v20;
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

void *sub_222B94498()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025B30, &unk_222C9A458);
  v2 = *v0;
  v3 = sub_222C94F6C();
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
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
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

void *sub_222B945E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0254A8, &unk_222C9A4A0);
  v2 = *v0;
  v3 = sub_222C94F6C();
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
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 6;
        v24 = *(v19 + v17);
        v23 = *(v19 + v17 + 16);
        v25 = *(v19 + v17 + 48);
        v34 = *(v19 + v17 + 32);
        v35 = v25;
        v32 = v24;
        v33 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = v35;
        v27[2] = v34;
        v27[3] = v30;
        *v27 = v28;
        v27[1] = v29;

        result = sub_222B95964(&v32, &v31);
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

void *sub_222B94798(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_222C94F6C();
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

void *sub_222B9490C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025478, &qword_222C98698);
  v2 = *v0;
  v3 = sub_222C94F6C();
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
        v20 = *v19;
        v21 = v19[1];
        v22 = 40 * v17;
        sub_222B43E3C(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        sub_222B405A0(v25, *(v4 + 56) + v22);
        result = sub_222B95830(v20, v21);
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

void *sub_222B94AE0(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = sub_222C9367C();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = sub_222C94F6C();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

void *sub_222B94D58(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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

void *sub_222B94EB0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v24 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v20 = v19[1];
      v21 = *(*(a4 + 56) + v18);
      *v11 = *v19;
      *(v11 + 8) = v20;
      *(v11 + 16) = v21;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 32;

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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v24;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_222B95038@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = a1[5];
  *(a2 + 8) = a1[1];
  *(a2 + 16) = v3;
  *(a2 + 24) = *(a1 + 3);
  *(a2 + 40) = v4;
  *a2 = v2;
}

uint64_t _s28SiriPrivateLearningInference19SlotsClassificationV17TurnSlotValuePairV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_222C951FC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v4 == v7 && v5 == v8 || (sub_222C951FC() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_222B95148(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = 0;
  v3 = result + 40;
  v4 = MEMORY[0x277D84F90];
  v13 = result + 40;
  do
  {
    v5 = (v3 + 16 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v8 = *(v5 - 1);
      v7 = *v5;
      swift_bridgeObjectRetain_n();
      v9 = sub_222B69B4C(&v14, v8, v7);

      if (v9)
      {
        break;
      }

      v5 += 2;
      if (v2 == v1)
      {
        return v4;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v15 = v4;
    if ((result & 1) == 0)
    {
      result = sub_222B4C418(0, *(v4 + 16) + 1, 1);
      v4 = v15;
    }

    v11 = *(v4 + 16);
    v10 = *(v4 + 24);
    if (v11 >= v10 >> 1)
    {
      result = sub_222B4C418((v10 > 1), v11 + 1, 1);
      v4 = v15;
    }

    *(v4 + 16) = v11 + 1;
    v12 = v4 + 16 * v11;
    *(v12 + 32) = v8;
    *(v12 + 40) = v7;
    v3 = v13;
  }

  while (v2 != v1);
  return v4;
}

uint64_t sub_222B952A8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v61 = a5;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v45 = -1 << *(a1 + 32);
  v9 = (63 - v6) >> 6;

  v10 = 0;
  while (1)
  {
    v15 = v8;
    v16 = v10;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v18 = __clz(__rbit64(v15)) | (v16 << 6);
    v19 = (*(a1 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(a1 + 56) + 32 * v18;
    v23 = *v22;
    v24 = *(v22 + 24);
    v54[0] = v20;
    v54[1] = v21;
    v54[2] = v23;
    v55 = *(v22 + 8);
    v56 = v24;

    a2(&v57, v54);

    v25 = v58;
    if (!v58)
    {
LABEL_22:
      sub_222B504E8();
    }

    v26 = v57;
    v49 = v59;
    v51 = v60;
    v27 = *v61;
    v29 = sub_222B8C9DC(v57, v58);
    v30 = *(v27 + 16);
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_24;
    }

    v33 = v28;
    if (*(v27 + 24) >= v32)
    {
      if ((a4 & 1) == 0)
      {
        sub_222B938D0();
      }
    }

    else
    {
      v34 = v61;
      sub_222B8F834(v32, a4 & 1);
      v35 = *v34;
      v36 = sub_222B8C9DC(v26, v25);
      if ((v33 & 1) != (v37 & 1))
      {
        goto LABEL_26;
      }

      v29 = v36;
    }

    v48 = (v15 - 1) & v15;
    v38 = *v61;
    if (v33)
    {
      v11 = (v38[7] + 32 * v29);
      v50 = *v11;
      v53 = v11[1];

      v12 = v38[7] + 32 * v29;
      v13 = *(v12 + 8);
      v14 = *(v12 + 24);
      *v12 = v50;
      *(v12 + 16) = v53;
    }

    else
    {
      v38[(v29 >> 6) + 8] |= 1 << v29;
      v39 = (v38[6] + 16 * v29);
      *v39 = v26;
      v39[1] = v25;
      v40 = (v38[7] + 32 * v29);
      *v40 = v49;
      v40[1] = v51;
      v41 = v38[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_25;
      }

      v38[2] = v43;
    }

    a4 = 1;
    v10 = v16;
    v8 = v48;
  }

  v17 = v10;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v9)
    {
      goto LABEL_22;
    }

    v15 = *(v5 + 8 * v16);
    ++v17;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_222C9526C();
  __break(1u);
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_222B955DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_222B95638(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222B956BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_222B95704(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_222B95770(uint64_t a1, unsigned int a2)
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

uint64_t sub_222B957CC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_222B95830(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_222B958F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0256C8, &unk_222C98AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222B959C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_222B95A08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222B95A70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222B95AE0()
{
  type metadata accessor for MediaInAppFollowupClassifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D025BB0, qword_222C9A568);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D025B98 = 91;
  unk_27D025BA0 = 0xE100000000000000;
  return result;
}

uint64_t sub_222B95BA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  if (*(a2 + 8))
  {
    v11 = *(a2 + 16);
    sub_222B41CB8(v11, v8);
    v12 = sub_222C935EC();
    v13 = *(v12 - 8);
    v14 = *(v13 + 48);
    if (v14(v8, 1, v12) == 1)
    {
      sub_222B41CE4(v11);
      if (v15)
      {
        v16 = 1;
      }

      else
      {
        sub_222C935AC();
        v16 = 0;
      }

      (*(v13 + 56))(v10, v16, 1, v12);
      if (v14(v8, 1, v12) != 1)
      {
        sub_222B4FCD4(v8, &qword_27D025360, &unk_222C98300);
      }
    }

    else
    {
      (*(v13 + 32))(v10, v8, v12);
      (*(v13 + 56))(v10, 0, 1, v12);
    }

    if (v14(v10, 1, v12) == 1)
    {
      sub_222B4FCD4(v10, &qword_27D025360, &unk_222C98300);
      return 0;
    }

    else
    {
      sub_222C935BC();
      v25 = v24;
      (*(v13 + 8))(v10, v12);
      return v25;
    }
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v17 = sub_222C9431C();
    __swift_project_value_buffer(v17, qword_280FE2340);
    v18 = sub_222C942FC();
    v19 = sub_222C94A3C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136315138;
      if (qword_27D0246B8 != -1)
      {
        swift_once();
      }

      *(v20 + 4) = sub_222B437C0(qword_27D025B98, unk_27D025BA0, &v27);
      _os_log_impl(&dword_222B39000, v18, v19, "%s No Siri play event found. Using the last UEI timestamp of the final turn.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x223DCA8C0](v21, -1, -1);
      MEMORY[0x223DCA8C0](v20, -1, -1);
    }

    v22 = type metadata accessor for FeaturisedTurn(0);
    return sub_222B41494(*(a1 + *(v22 + 24)));
  }
}

uint64_t sub_222B95F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v39 - v11;
  v13 = sub_222C935EC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 16);
  v19 = *(a3 + 32);
  v20 = *(a3 + 16);
  v39[0] = *a3;
  v39[1] = v20;
  v40 = v19;
  v21 = COERCE_DOUBLE(sub_222B95BA0(a1, v39));
  if (v22)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v23 = sub_222C9431C();
    __swift_project_value_buffer(v23, qword_280FE2340);
    v24 = sub_222C942FC();
    v25 = sub_222C94A3C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v39[0] = v27;
      *v26 = 136315138;
      if (qword_27D0246B8 != -1)
      {
        swift_once();
      }

      *(v26 + 4) = sub_222B437C0(qword_27D025B98, unk_27D025BA0, v39);
      _os_log_impl(&dword_222B39000, v24, v25, "%s Unable to find start timestamp to use when computing time to followup", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x223DCA8C0](v27, -1, -1);
      MEMORY[0x223DCA8C0](v26, -1, -1);
    }
  }

  else
  {
    sub_222B41CB8(v18, v10);
    v28 = *(v14 + 48);
    if (v28(v10, 1, v13) == 1)
    {
      sub_222B41CE4(v18);
      if (v29)
      {
        v30 = 1;
      }

      else
      {
        sub_222C935AC();
        v30 = 0;
      }

      (*(v14 + 56))(v12, v30, 1, v13);
      if (v28(v10, 1, v13) != 1)
      {
        sub_222B4FCD4(v10, &qword_27D025360, &unk_222C98300);
      }
    }

    else
    {
      (*(v14 + 32))(v12, v10, v13);
      (*(v14 + 56))(v12, 0, 1, v13);
    }

    if (v28(v12, 1, v13) == 1)
    {
      sub_222B4FCD4(v12, &qword_27D025360, &unk_222C98300);
    }

    else
    {
      (*(v14 + 32))(v17, v12, v13);
      sub_222C935BC();
      v32 = v31 - v21;
      if (v31 - v21 >= 0.0)
      {
        (*(v14 + 8))(v17, v13);
        v21 = v32;
        return *&v21;
      }

      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v33 = sub_222C9431C();
      __swift_project_value_buffer(v33, qword_280FE2340);
      v34 = sub_222C942FC();
      v35 = sub_222C94A4C();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *&v39[0] = v37;
        *v36 = 136315138;
        if (qword_27D0246B8 != -1)
        {
          swift_once();
        }

        *(v36 + 4) = sub_222B437C0(qword_27D025B98, unk_27D025BA0, v39);
        _os_log_impl(&dword_222B39000, v34, v35, "%s Time to followup was less than 0 seconds! Returning nil followup time.", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v37);
        MEMORY[0x223DCA8C0](v37, -1, -1);
        MEMORY[0x223DCA8C0](v36, -1, -1);
      }

      (*(v14 + 8))(v17, v13);
    }

    v21 = 0.0;
  }

  return *&v21;
}

uint64_t sub_222B964CC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 8) || (v2 = *(a1 + 16), sub_222B4183C(*(a2 + 16), &v35), (v3 = *(&v35 + 1)) == 0))
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v14 = sub_222C9431C();
    __swift_project_value_buffer(v14, qword_280FE2340);
    v9 = sub_222C942FC();
    v10 = sub_222C94A3C();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_18;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v26 = v12;
    *v11 = 136315138;
    if (qword_27D0246B8 != -1)
    {
      swift_once();
    }

    *(v11 + 4) = sub_222B437C0(qword_27D025B98, unk_27D025BA0, &v26);
    v13 = "%s No media item id found in Siri play event, skipping.";
    goto LABEL_17;
  }

  v4 = v35;
  sub_222B4183C(v2, &v26);
  v5 = *(&v26 + 1);
  v6 = v26;
  *&v26 = v4;
  *(&v26 + 1) = v3;
  v33 = v27;
  v34[0] = v28[0];
  *(v34 + 9) = *(v28 + 9);
  v27 = v36;
  v28[0] = v37[0];
  *(v28 + 9) = *(v37 + 9);
  v23 = v26;
  v24 = v36;
  v25[0] = v28[0];
  *(v25 + 9) = *(v37 + 9);
  if (v5)
  {
    v21 = v33;
    v22[0] = v34[0];
    *(v22 + 9) = *(v34 + 9);
    v20 = __PAIR128__(v5, v6);
    v7 = _s28SiriPrivateLearningInference9MediaItemV2eeoiySbAC_ACtFZ_0(&v23, &v20);
    v16[0] = v20;
    v16[1] = v21;
    v17[0] = v22[0];
    *(v17 + 9) = *(v22 + 9);
    sub_222B4FC6C(&v26, v18, &qword_27D025370, &qword_222C98310);
    sub_222B9801C(v16);
    v18[0] = v23;
    v18[1] = v24;
    v19[0] = v25[0];
    *(v19 + 9) = *(v25 + 9);
    sub_222B9801C(v18);
    *&v20 = v4;
    *(&v20 + 1) = v3;
    v21 = v36;
    v22[0] = v37[0];
    *(v22 + 9) = *(v37 + 9);
    sub_222B4FCD4(&v20, &qword_27D025370, &qword_222C98310);
    if (v7)
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v8 = sub_222C9431C();
      __swift_project_value_buffer(v8, qword_280FE2340);
      v9 = sub_222C942FC();
      v10 = sub_222C94A3C();
      if (!os_log_type_enabled(v9, v10))
      {
        goto LABEL_18;
      }

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v26 = v12;
      *v11 = 136315138;
      if (qword_27D0246B8 != -1)
      {
        swift_once();
      }

      *(v11 + 4) = sub_222B437C0(qword_27D025B98, unk_27D025BA0, &v26);
      v13 = "%s Circular in app follow up detected, skipping.";
LABEL_17:
      _os_log_impl(&dword_222B39000, v9, v10, v13, v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x223DCA8C0](v12, -1, -1);
      MEMORY[0x223DCA8C0](v11, -1, -1);
LABEL_18:

      return 0;
    }
  }

  else
  {
    v20 = v26;
    v21 = v27;
    v22[0] = v28[0];
    *(v22 + 9) = *(v28 + 9);
    sub_222B4FC6C(&v26, v18, &qword_27D025370, &qword_222C98310);
    sub_222B9801C(&v20);
    *&v26 = v4;
    *(&v26 + 1) = v3;
    v27 = v36;
    v28[0] = v37[0];
    *(v28 + 9) = *(v37 + 9);
    v29 = v6;
    v30 = 0;
    v31 = v33;
    v32[0] = v34[0];
    *(v32 + 9) = *(v34 + 9);
    sub_222B4FCD4(&v26, &qword_27D025BA8, &qword_222C9A560);
  }

  return 1;
}

uint64_t sub_222B968E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v151 = &v134 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257D8, &unk_222C990C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v134 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v134 - v18;
  v20 = type metadata accessor for MediaPlayClassification();
  v155 = *(v20 - 8);
  v21 = *(v155 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v149 = &v134 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v150 = (&v134 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v154 = &v134 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v153 = &v134 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v134 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v134 - v33;
  v35 = type metadata accessor for FeaturisedTurn(0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v38 = MEMORY[0x28223BE20](v37);
  v42 = &v134 - v39;
  v43 = *(a1 + 16);
  if (!v43)
  {
    if (qword_280FDFE78 == -1)
    {
LABEL_14:
      v55 = sub_222C9431C();
      __swift_project_value_buffer(v55, qword_280FE2340);
      v56 = sub_222C942FC();
      v57 = sub_222C94A3C();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        *&v161 = v59;
        *v58 = 136315138;
        if (qword_27D0246B8 != -1)
        {
          swift_once();
        }

        *(v58 + 4) = sub_222B437C0(qword_27D025B98, unk_27D025BA0, &v161);
        _os_log_impl(&dword_222B39000, v56, v57, "%s Session missing final turn. Skipping.", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v59);
        MEMORY[0x223DCA8C0](v59, -1, -1);
        MEMORY[0x223DCA8C0](v58, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

LABEL_103:
    swift_once();
    goto LABEL_14;
  }

  v145 = v40;
  v146 = v43;
  v147 = v38;
  v44 = a1 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
  v144 = v41;
  v45 = *(v41 + 72);
  v143 = v44;
  v142 = v45;
  sub_222B97E94(v44 + v45 * (v43 - 1), &v134 - v39, type metadata accessor for FeaturisedTurn);
  v46 = isSiriPlayMedia(_:)(v42);
  if ((v46 & 1) == 0)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v60 = sub_222C9431C();
    __swift_project_value_buffer(v60, qword_280FE2340);
    v61 = sub_222C942FC();
    v62 = sub_222C94A3C();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = v42;
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&v161 = v65;
      *v64 = 136315138;
      if (qword_27D0246B8 != -1)
      {
        swift_once();
      }

      *(v64 + 4) = sub_222B437C0(qword_27D025B98, unk_27D025BA0, &v161);
      _os_log_impl(&dword_222B39000, v61, v62, "%s Final turn was not a Siri playMedia request. Skipping", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
      MEMORY[0x223DCA8C0](v65, -1, -1);
      MEMORY[0x223DCA8C0](v64, -1, -1);

      v42 = v63;
    }

    else
    {
    }

    v66 = v42;
    goto LABEL_55;
  }

  v141 = v14;
  v138 = v8;
  v148 = a1;
  v140 = v32;
  v139 = v17;
  v152 = v42;
  v47 = *(a2 + 16);
  if (v47)
  {
    v48 = a2 + 32;
    v49 = (v155 + 56);
    v50 = (v155 + 48);
    v51 = MEMORY[0x277D84F90];
    do
    {
      sub_222B43E3C(v48, &v161);
      sub_222B405A0(&v161, &v156);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
      v52 = swift_dynamicCast();
      (*v49)(v19, v52 ^ 1u, 1, v20);
      if ((*v50)(v19, 1, v20) == 1)
      {
        v46 = sub_222B4FCD4(v19, &qword_27D0257D8, &unk_222C990C0);
      }

      else
      {
        sub_222B97FB4(v19, v34, type metadata accessor for MediaPlayClassification);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_222B4A278(0, v51[2] + 1, 1, v51);
        }

        v54 = v51[2];
        v53 = v51[3];
        if (v54 >= v53 >> 1)
        {
          v51 = sub_222B4A278(v53 > 1, v54 + 1, 1, v51);
        }

        v51[2] = v54 + 1;
        v46 = sub_222B97FB4(v34, v51 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v54, type metadata accessor for MediaPlayClassification);
      }

      v48 += 40;
      --v47;
    }

    while (v47);
  }

  else
  {
    v51 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v46);
  *(&v134 - 2) = v152;
  v67 = sub_222B66030(sub_222B97E44, (&v134 - 4), v51);
  v68 = *(v67 + 16);
  if (!v68)
  {

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v74 = sub_222C9431C();
    __swift_project_value_buffer(v74, qword_280FE2340);
    v75 = sub_222C942FC();
    v76 = sub_222C94A3C();
    if (!os_log_type_enabled(v75, v76))
    {
      goto LABEL_54;
    }

    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *&v161 = v78;
    *v77 = 136315138;
    if (qword_27D0246B8 != -1)
    {
      swift_once();
    }

    *(v77 + 4) = sub_222B437C0(qword_27D025B98, unk_27D025BA0, &v161);
    v79 = "%s No media play detected. Skipping.";
    goto LABEL_53;
  }

  v69 = 0;
  v70 = v141;
  v71 = v154;
  while (1)
  {
    if (v69 >= *(v67 + 16))
    {
      __break(1u);
LABEL_100:

      v95 = 0;
      v20 = 0;
      v96 = 0;
      v97 = 0;
      v98 = 0;
LABEL_80:
      sub_222B97F54(v149, type metadata accessor for MediaPlayClassification);
      goto LABEL_81;
    }

    v72 = (*(v155 + 80) + 32) & ~*(v155 + 80);
    v73 = *(v155 + 72);
    sub_222B97E94(v67 + v72 + v73 * v69, v71, type metadata accessor for MediaPlayClassification);
    if (*(v71 + 8) != 1)
    {
      break;
    }

    ++v69;
    sub_222B97F54(v71, type metadata accessor for MediaPlayClassification);
    if (v68 == v69)
    {

      goto LABEL_47;
    }
  }

  v80 = v71;
  v81 = v153;
  sub_222B97FB4(v80, v153, type metadata accessor for MediaPlayClassification);
  v82 = v81;
  v83 = v140;
  v84 = sub_222B97FB4(v82, v140, type metadata accessor for MediaPlayClassification);
  v85 = *&v152[*(v147 + 28)];
  MEMORY[0x28223BE20](v84);
  *(&v134 - 2) = v83;
  sub_222B41174(sub_222B97EFC, v86, &v161);
  if (!*(&v161 + 1))
  {

    sub_222B97F54(v83, type metadata accessor for MediaPlayClassification);
LABEL_47:
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v92 = sub_222C9431C();
    __swift_project_value_buffer(v92, qword_280FE2340);
    v75 = sub_222C942FC();
    v76 = sub_222C94A3C();
    if (!os_log_type_enabled(v75, v76))
    {
LABEL_54:

      v66 = v152;
      goto LABEL_55;
    }

    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *&v161 = v78;
    *v77 = 136315138;
    if (qword_27D0246B8 != -1)
    {
      swift_once();
    }

    *(v77 + 4) = sub_222B437C0(qword_27D025B98, unk_27D025BA0, &v161);
    v79 = "%s No user followup detected. Skipping.";
LABEL_53:
    _os_log_impl(&dword_222B39000, v75, v76, v79, v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v78);
    MEMORY[0x223DCA8C0](v78, -1, -1);
    MEMORY[0x223DCA8C0](v77, -1, -1);
    goto LABEL_54;
  }

  v153 = *(&v161 + 1);
  v87 = 0;
  v137 = v161;
  v154 = v162;
  v88 = v67 + v72;
  v136 = v163;
  v34 = v164;
  v89 = v150;
  while (1)
  {
    if (v87 >= *(v67 + 16))
    {
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    sub_222B97E94(v88, v89, type metadata accessor for MediaPlayClassification);
    if (*(v89 + 8))
    {
      break;
    }

    ++v87;
    sub_222B97F54(v89, type metadata accessor for MediaPlayClassification);
    v88 += v73;
    if (v68 == v87)
    {

      v90 = 1;
      v91 = v139;
      goto LABEL_58;
    }
  }

  v91 = v139;
  sub_222B97FB4(v89, v139, type metadata accessor for MediaPlayClassification);
  v90 = 0;
LABEL_58:
  v94 = v155;
  (*(v155 + 56))(v91, v90, 1, v20);
  sub_222B4FC6C(v91, v70, &qword_27D0257D8, &unk_222C990C0);
  if ((*(v94 + 48))(v70, 1, v20) == 1)
  {
    v95 = 0;
    v20 = 0;
    v96 = 0;
    v97 = 0;
    v98 = 0;
LABEL_81:
    v116 = v153;
    v117 = v137;
    v118 = v136;
    *&v161 = v137;
    *(&v161 + 1) = v153;
    v162 = v154;
    v163 = v136;
    v164 = v34;
    v156 = v95;
    v157 = v20;
    v158 = v96;
    v159 = v97;
    v160 = v98;
    v119 = sub_222B95F4C(v152, &v161, &v156);
    if (v120)
    {
      sub_222B5EE44(v117, v116);
      sub_222B5EE44(v95, v20);
      if (qword_280FDF1F0 != -1)
      {
        swift_once();
      }

      v163 = &type metadata for PIMSConstraintMismatch;
      v164 = sub_222B77B4C();
      *&v161 = 0xD000000000000016;
      *(&v161 + 1) = 0x8000000222CA9C80;
      LOBYTE(v162) = 3;
      sub_222C93B5C();
      __swift_destroy_boxed_opaque_existential_0Tm(&v161);
      v20 = v140;
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v121 = sub_222C9431C();
      __swift_project_value_buffer(v121, qword_280FE2340);
      v102 = sub_222C942FC();
      LOBYTE(v107) = sub_222C94A3C();
      if (os_log_type_enabled(v102, v107))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        *&v161 = v101;
        *v100 = 136315138;
        if (qword_27D0246B8 != -1)
        {
          goto LABEL_106;
        }

        goto LABEL_88;
      }

      goto LABEL_98;
    }

    v153 = v119;
    *&v161 = v117;
    *(&v161 + 1) = v116;
    v162 = v154;
    v163 = v118;
    v164 = v34;
    v156 = v95;
    v157 = v20;
    v158 = v96;
    v159 = v97;
    v160 = v98;
    LODWORD(v155) = sub_222B964CC(&v161, &v156);
    sub_222B5EE44(v95, v20);
    sub_222B5EE44(v117, v116);
    if ((v155 & 1) == 0)
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v131 = sub_222C9431C();
      __swift_project_value_buffer(v131, qword_280FE2340);
      v102 = sub_222C942FC();
      LOBYTE(v107) = sub_222C94A3C();
      v132 = os_log_type_enabled(v102, v107);
      v20 = v140;
      if (v132)
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        *&v161 = v101;
        *v100 = 136315138;
        if (qword_27D0246B8 != -1)
        {
          swift_once();
        }

        *(v100 + 4) = sub_222B437C0(qword_27D025B98, unk_27D025BA0, &v161);
        v122 = "%s Invalid in app follow up detected. Skipping";
        goto LABEL_97;
      }

      goto LABEL_98;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C60, &unk_222C9BC50);
    v123 = swift_allocObject();
    *(v123 + 16) = xmmword_222C97C40;
    v124 = type metadata accessor for MediaInAppFollowupClassification();
    *(v123 + 56) = v124;
    *(v123 + 64) = &off_28360EB30;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v123 + 32));
    v126 = v152;
    v127 = v139;
    sub_222B4FC6C(v139, boxed_opaque_existential_1, &qword_27D0257D8, &unk_222C990C0);
    v128 = v140;
    sub_222B97E94(v140, boxed_opaque_existential_1 + v124[5], type metadata accessor for MediaPlayClassification);
    v129 = v124[7];
    v130 = sub_222C9367C();
    (*(*(v130 - 8) + 16))(boxed_opaque_existential_1 + v129, v126, v130);
    *(boxed_opaque_existential_1 + v124[6]) = v153;
    sub_222B4FCD4(v127, &qword_27D0257D8, &unk_222C990C0);
    sub_222B97F54(v128, type metadata accessor for MediaPlayClassification);
    sub_222B97F54(v126, type metadata accessor for FeaturisedTurn);
    return v123;
  }

  v99 = v149;
  sub_222B97FB4(v70, v149, type metadata accessor for MediaPlayClassification);
  v100 = *(v99 + 16);
  v101 = *(v99 + 24);
  v150 = (v144 + 7);
  v144 += 6;

  v102 = 0;
  v155 = 0;
  v135 = v34;
  while (2)
  {
    v107 = v155;
    if (v155 == v146)
    {
      v108 = 1;
      v155 = v146;
      v34 = v135;
LABEL_75:
      v110 = v151;
      v111 = v147;
      (*v150)(v151, v108, 1, v147);
      v112 = v110;
      v113 = v138;
      sub_222B5EC84(v112, v138);
      if ((*v144)(v113, 1, v111) == 1)
      {
        goto LABEL_100;
      }

      v114 = v113;
      v115 = v145;
      sub_222B97FB4(v114, v145, type metadata accessor for FeaturisedTurn);
      v20 = *(v115 + *(v111 + 28));

      sub_222B97F54(v115, type metadata accessor for FeaturisedTurn);

      v102 = v20;
      if (v20)
      {
        v103 = (v20 + 64);
        v104 = -1;
        while (1)
        {
          ++v104;
          isa = v102[2].isa;
          if (v104 == isa)
          {
            break;
          }

          if (v104 >= isa)
          {
            goto LABEL_102;
          }

          v95 = *(v103 - 4);
          v20 = *(v103 - 3);
          v96 = *(v103 - 2);
          v97 = *(v103 - 1);
          v98 = *v103;
          if (v95 == v100 && v20 == v101)
          {
            v95 = v100;
LABEL_79:

            v34 = v135;
            goto LABEL_80;
          }

          v103 += 5;
          if (sub_222C951FC())
          {
            goto LABEL_79;
          }
        }
      }

      continue;
    }

    break;
  }

  if (v155 < v146)
  {
    sub_222B97E94(v143 + v155 * v142, v151, type metadata accessor for FeaturisedTurn);
    v109 = __OFADD__(v107++, 1);
    v34 = v135;
    if (v109)
    {
      goto LABEL_105;
    }

    v155 = v107;
    v108 = 0;
    goto LABEL_75;
  }

  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  swift_once();
LABEL_88:
  *(v100 + 4) = sub_222B437C0(qword_27D025B98, unk_27D025BA0, &v161);
  v122 = "%s Failed to compute the time taken to followup. Skipping.";
LABEL_97:
  _os_log_impl(&dword_222B39000, v102, v107, v122, v100, 0xCu);
  __swift_destroy_boxed_opaque_existential_0Tm(v101);
  MEMORY[0x223DCA8C0](v101, -1, -1);
  MEMORY[0x223DCA8C0](v100, -1, -1);
LABEL_98:

  v133 = v152;
  sub_222B4FCD4(v139, &qword_27D0257D8, &unk_222C990C0);
  sub_222B97F54(v20, type metadata accessor for MediaPlayClassification);
  v66 = v133;
LABEL_55:
  sub_222B97F54(v66, type metadata accessor for FeaturisedTurn);
  return MEMORY[0x277D84F90];
}

uint64_t sub_222B97E44()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for MediaPlayClassification() + 32);
  return sub_222C9362C() & 1;
}

uint64_t sub_222B97E94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222B97EFC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *(v2 + 16) && a1[1] == *(v2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_222C951FC() & 1;
  }
}

uint64_t sub_222B97F54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222B97FB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_222B981C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PICSWipeStoreMigration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_222B98220(uint64_t a1)
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

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
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

uint64_t sub_222B98404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v40 = a4;
  v46 = type metadata accessor for FeaturisedTurn(0);
  v7 = *(v46 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v46);
  v41 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0253C8, &unk_222C98400);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v45 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v44 = &v38 - v14;
  v39 = v7;
  v42 = (v7 + 48);
  v43 = (v7 + 56);
  v48 = a1;

  v47 = 0;
  while (1)
  {
    v25 = v47;
    v26 = *(v48 + 16);
    if (v47 == v26)
    {
      v27 = 1;
      v29 = v45;
      v28 = v46;
      v30 = v44;
    }

    else
    {
      v29 = v45;
      v28 = v46;
      v30 = v44;
      if (v47 >= v26)
      {
LABEL_26:
        __break(1u);
        return result;
      }

      sub_222B78534(v48 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v47, v44);
      v27 = 0;
      ++v25;
    }

    (*v43)(v30, v27, 1, v28);
    sub_222B5EC84(v30, v29);
    if ((*v42)(v29, 1, v28) == 1)
    {
      break;
    }

    v47 = v25;
    v31 = v29;
    v32 = v41;
    sub_222B7E350(v31, v41);
    v33 = *(v32 + *(v28 + 28));

    sub_222B73DD0(v32);

    v34 = v33;
    if (v33)
    {
      v16 = (v33 + 64);
      v17 = -1;
      while (1)
      {
        ++v17;
        v18 = *(v34 + 16);
        if (v17 == v18)
        {
          break;
        }

        if (v17 >= v18)
        {
          __break(1u);
          goto LABEL_26;
        }

        v20 = *(v16 - 4);
        v19 = *(v16 - 3);
        v21 = *(v16 - 2);
        v22 = *(v16 - 1);
        v23 = *v16;
        if (v20 == a2 && v19 == a3)
        {
          v20 = a2;
LABEL_19:

          v35 = sub_222B41660(v21);
          if (v35)
          {
            v36 = *(v35 + 16);

            if (v36 == 1)
            {
              v49[0] = v20;
              v49[1] = v19;
              v49[2] = v21;
              v49[3] = v22;
              v49[4] = v23;
              extractContactReference(event:)(v49, v40);
            }
          }

          goto LABEL_23;
        }

        v16 += 5;
        result = sub_222C951FC();
        if (result)
        {
          goto LABEL_19;
        }
      }
    }
  }

LABEL_23:

  v37 = v40;
  *v40 = 0u;
  v37[1] = 0u;
  return result;
}

uint64_t sub_222B98790()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C38, &unk_222C9A650);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_222C97C40;
  v1 = type metadata accessor for SuccessfulPhoneCallClassifier();
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4014000000000000;
  *(v0 + 56) = v1;
  *(v0 + 64) = &protocol witness table for SuccessfulPhoneCallClassifier;
  *(v0 + 32) = v2;
  return v0;
}

uint64_t sub_222B98810@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_222B43E3C(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = v10;
    v5 = v11;
    result = v12;
    if (v8 == 1)
    {
      v6 = v9;
      v7 = 1;
    }

    else
    {

      v7 = 0;
      v6 = 0;
      v4 = 0;
      v5 = 0;
      result = 0;
    }

    *a2 = v7;
    a2[1] = v6;
    a2[2] = v4;
    a2[3] = v5;
    a2[4] = result;
  }

  else
  {
    a2[4] = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

BOOL sub_222B988E0(uint64_t *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = sub_222B41F28(a1[2]);
  if (v4 & 1) == 0 && (v1 == 0xD000000000000011 ? (v6 = 0x8000000222CA8780 == v2) : (v6 = 0), v6 || (v7 = v3, v8 = sub_222C951FC(), v3 = v7, (v8)))
  {
    return v3 == 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222B98994(uint64_t a1)
{

  v2 = sub_222C16CD8(2, a1);
  v3 = sub_222B98220(v2);

  return v3;
}

uint64_t sub_222B989DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v13 = *a4;
  v12 = a4[1];
  v14 = a4[3];
  v20 = a4[2];
  v15 = sub_222C9367C();
  (*(*(v15 - 8) + 16))(a5, a1, v15);
  v16 = type metadata accessor for PhoneCallGroundTruth();
  *(a5 + v16[5]) = 3;
  *(a5 + v16[6]) = a2;
  v17 = (a5 + v16[7]);
  *v17 = v8;
  v17[1] = v9;
  v17[2] = v10;
  v17[3] = v11;
  v18 = (a5 + v16[8]);
  *v18 = v13;
  v18[1] = v12;
  v18[2] = v20;
  v18[3] = v14;
  (*(*(v16 - 1) + 56))(a5, 0, 1, v16);
  sub_222B98D00(v8, v9);
}

uint64_t sub_222B98B5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{

  v4 = sub_222C16CD8(2, a1);
  v5 = sub_222B98220(v4);

  *a2 = v5;
  return result;
}

uint64_t sub_222B98BB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = a3[3];
  v13 = *a4;
  v12 = a4[1];
  v14 = a4[3];
  v20 = a4[2];
  v15 = sub_222C9367C();
  (*(*(v15 - 8) + 16))(a5, a1, v15);
  v16 = type metadata accessor for PhoneCallGroundTruth();
  *(a5 + v16[5]) = 3;
  *(a5 + v16[6]) = v7;
  v17 = (a5 + v16[7]);
  *v17 = v8;
  v17[1] = v9;
  v17[2] = v10;
  v17[3] = v11;
  v18 = (a5 + v16[8]);
  *v18 = v13;
  v18[1] = v12;
  v18[2] = v20;
  v18[3] = v14;
  (*(*(v16 - 1) + 56))(a5, 0, 1, v16);
  sub_222B98D00(v8, v9);
}

uint64_t sub_222B98D00(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_222B98D48()
{
  result = qword_280FDF100;
  if (!qword_280FDF100)
  {
    type metadata accessor for PhoneCallGroundTruth();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FDF100);
  }

  return result;
}

uint64_t MessagesAbandonmentClassification.referencedTurns.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t MessagesAbandonmentClassification.referencedEvents.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_222B98FBC(uint64_t a1, int a2)
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

uint64_t sub_222B99004(uint64_t result, int a2, int a3)
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

uint64_t SuccessfulPhoneCallClassifier.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0x4014000000000000;
  return result;
}

uint64_t sub_222B99080()
{
  type metadata accessor for SuccessfulPhoneCallClassifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C50, &unk_222C9A810);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D025C40 = 91;
  *algn_27D025C48 = 0xE100000000000000;
  return result;
}

uint64_t SuccessfulPhoneCallClassifier.init()()
{
  result = v0;
  *(v0 + 16) = 0x4014000000000000;
  return result;
}

uint64_t sub_222B99120@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = a1[4];
  v21[0] = *a1;
  v21[1] = v4;
  v21[2] = v7;
  v21[3] = v6;
  v21[4] = v8;
  v9 = sub_222B99440(v21);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v10 = sub_222C9431C();
  __swift_project_value_buffer(v10, qword_280FE2340);

  v11 = sub_222C942FC();
  v12 = sub_222C94A3C();

  if (os_log_type_enabled(v11, v12))
  {
    v21[6] = v2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21[0] = v14;
    *v13 = 136315394;
    if (qword_27D0246C0 != -1)
    {
      swift_once();
    }

    *(v13 + 4) = sub_222B437C0(qword_27D025C40, *algn_27D025C48, v21);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_222B437C0(v5, v4, v21);
    _os_log_impl(&dword_222B39000, v11, v12, "%s Rule matrix for [Event ID: %s]:", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v14, -1, -1);
    MEMORY[0x223DCA8C0](v13, -1, -1);
  }

  else
  {
  }

  sub_222C8A24C(8224, 0xE200000000000000, v9);
  v15 = sub_222C1EC00(v9);

  if (v15)
  {
    v17 = sub_222B41CFC(v7);
    a2[3] = &type metadata for SuccessfulPhoneCallClassification;
    v18 = swift_allocObject();
    *(v18 + 16) = v17 & 1;
    *(v18 + 24) = v5;
    *(v18 + 32) = v4;
    *(v18 + 40) = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024ED0, &qword_222C96C80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_222C97C40;
    *(v19 + 32) = v5;
    *(v19 + 40) = v4;
    *(v18 + 48) = v19;
    result = swift_bridgeObjectRetain_n();
    v20 = &protocol witness table for SuccessfulPhoneCallClassification;
  }

  else
  {
    v20 = 0;
    v18 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
  }

  a2[4] = v20;
  *a2 = v18;
  return result;
}

uint64_t sub_222B99440(uint64_t *a1)
{
  v2 = type metadata accessor for RuleResult();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v26 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CD0, &qword_222C98B50);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CC8, &unk_222C96AA0);
  v12 = *(*(v11 - 8) + 72);
  v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_222C96900;
  v15 = (v14 + v13);
  v16 = (v14 + v13 + *(v11 + 48));
  *v15 = 0xD00000000000001ALL;
  v15[1] = 0x8000000222CAA340;
  v17 = sub_222B42814(v10);
  v27 = v8;
  if (v17 == 2)
  {
    type metadata accessor for PhoneCallEventFeature.CallAnswered(0);
    *v16 = sub_222C93ECC();
    v16[1] = v18;
    v16[2] = v8;
    v16[3] = v9;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_222B99D5C(v7, v16);
  }

  v19 = (v15 + v12);
  v20 = (v15 + v12 + *(v11 + 48));
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_222C94D1C();
  MEMORY[0x223DC9330](0xD000000000000010, 0x8000000222CAA360);
  sub_222C948DC();
  v21 = v29;
  *v19 = v28;
  v19[1] = v21;
  sub_222B41F40(v10);
  if (v22)
  {
    type metadata accessor for PhoneCallEventFeature.CallDuration(0);
    *v20 = sub_222C93ECC();
    v20[1] = v23;
    v20[2] = v27;
    v20[3] = v9;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v24 = v26;
    swift_storeEnumTagMultiPayload();
    sub_222B99D5C(v24, v20);
  }

  return v14;
}

uint64_t sub_222B9972C(uint64_t a1)
{
  v57 = *v1;
  v58 = v1;
  v3 = type metadata accessor for FeaturisedTurn(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(v5 + 28);
    v11 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v12 = *(v6 + 72);
    v13 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_222B78534(v11, v8);
      v14 = *&v8[v10];

      sub_222B73DD0(v8);
      v15 = *(v14 + 16);
      v16 = *(v13 + 2);
      v17 = v16 + v15;
      if (__OFADD__(v16, v15))
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v17 <= *(v13 + 3) >> 1)
      {
        if (!*(v14 + 16))
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v16 <= v17)
        {
          v19 = v16 + v15;
        }

        else
        {
          v19 = v16;
        }

        v13 = sub_222B4A35C(isUniquelyReferenced_nonNull_native, v19, 1, v13);
        if (!*(v14 + 16))
        {
LABEL_3:

          if (v15)
          {
            goto LABEL_52;
          }

          goto LABEL_4;
        }
      }

      if ((*(v13 + 3) >> 1) - *(v13 + 2) < v15)
      {
        goto LABEL_54;
      }

      swift_arrayInitWithCopy();

      if (v15)
      {
        v20 = *(v13 + 2);
        v21 = __OFADD__(v20, v15);
        v22 = v20 + v15;
        if (v21)
        {
          goto LABEL_55;
        }

        *(v13 + 2) = v22;
      }

LABEL_4:
      v11 += v12;
      if (!--v9)
      {
        goto LABEL_19;
      }
    }
  }

  v13 = MEMORY[0x277D84F90];
LABEL_19:
  v23 = *(v13 + 2);
  if (!v23)
  {
    v60 = MEMORY[0x277D84F90];
    goto LABEL_37;
  }

  v24 = 0;
  v59 = 0x8000000222CA8780;
  v25 = v13 + 64;
  v55 = v23 - 1;
  v60 = MEMORY[0x277D84F90];
  v56 = v13 + 64;
  do
  {
    v26 = &v25[40 * v24];
    v27 = v24;
    while (1)
    {
      if (v27 >= *(v13 + 2))
      {
        __break(1u);
        goto LABEL_51;
      }

      v28 = *(v26 - 4);
      v29 = *(v26 - 3);
      v30 = *(v26 - 2);
      v31 = *(v26 - 1);
      v32 = *v26;

      v33 = sub_222B41F28(v30);
      if (v34)
      {
        goto LABEL_23;
      }

      if (v31 != 0xD000000000000011 || v59 != v32)
      {
        break;
      }

      if (v33 == 1)
      {
        goto LABEL_30;
      }

LABEL_23:
      ++v27;

      v26 += 40;
      if (v23 == v27)
      {
        goto LABEL_37;
      }
    }

    v35 = v33;
    if ((sub_222C951FC() & 1) == 0 || v35 != 1)
    {
      goto LABEL_23;
    }

LABEL_30:
    v36 = v60;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v64[0] = v36;
    if ((v37 & 1) == 0)
    {
      sub_222B4C374(0, *(v36 + 16) + 1, 1);
      v36 = v64[0];
    }

    v39 = *(v36 + 16);
    v38 = *(v36 + 24);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      v60 = v39 + 1;
      sub_222B4C374((v38 > 1), v39 + 1, 1);
      v40 = v60;
      v36 = v64[0];
    }

    v24 = v27 + 1;
    *(v36 + 16) = v40;
    v60 = v36;
    v41 = (v36 + 40 * v39);
    v41[4] = v28;
    v41[5] = v29;
    v41[6] = v30;
    v41[7] = v31;
    v41[8] = v32;
    v25 = v56;
  }

  while (v55 != v27);
LABEL_37:

  v42 = v60;
  v43 = *(v60 + 16);
  if (v43)
  {
    v44 = 0;
    v13 = 0;
    v45 = (v60 + 64);
    v46 = MEMORY[0x277D84F90];
    while (v44 < *(v42 + 16))
    {
      v47 = *(v45 - 1);
      v48 = *v45;
      v49 = *(v45 - 3);
      v50 = *(v45 - 2);
      v64[0] = *(v45 - 4);
      v64[1] = v49;
      v64[2] = v50;
      v64[3] = v47;
      v64[4] = v48;

      sub_222B99120(v64, &v61);

      if (v62)
      {
        sub_222B405A0(&v61, v63);
        sub_222B405A0(v63, &v61);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_222B4A314(0, v46[2] + 1, 1, v46);
        }

        v52 = v46[2];
        v51 = v46[3];
        if (v52 >= v51 >> 1)
        {
          v46 = sub_222B4A314((v51 > 1), v52 + 1, 1, v46);
        }

        v46[2] = v52 + 1;
        sub_222B405A0(&v61, &v46[5 * v52 + 4]);
      }

      else
      {
        sub_222B99CF4(&v61);
      }

      ++v44;
      v45 += 5;
      v42 = v60;
      if (v43 == v44)
      {
        goto LABEL_49;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);

    __break(1u);
  }

  else
  {
    v46 = MEMORY[0x277D84F90];
LABEL_49:

    return v46;
  }

  return result;
}

uint64_t sub_222B99CF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257E0, qword_222C990D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222B99D5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RuleResult();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PIMSCoreDataStorePolicies.runPolicy(store:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(a1 + 24);
  return sub_222C94B1C();
}

uint64_t sub_222B99E28(uint64_t a1, void *a2, void *a3)
{
  v42[5] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C58, qword_222C9A8E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v41;
  v9 = type metadata accessor for MediaSuggestionEvictor();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_222B9A344();
  swift_getKeyPath();
  sub_222C9411C();
  v40[0] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C60, &unk_222C9A920);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_222C940CC();
  v42[3] = v13;
  v42[4] = sub_222B9A444();
  v42[0] = v16;
  v39 = MEMORY[0x277D84F90];
  sub_222B4C908(0, 1, 0);
  v17 = v39;
  sub_222B43E3C(v42, v40);
  v18 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  v38 = a2;
  v19 = *(v18 + 8);
  sub_222C93BDC();
  if (v3)
  {
    a3 = v3;
LABEL_6:
    LOBYTE(v22) = 1;
    goto LABEL_7;
  }

  v20 = a3[3];
  v38 = 0;
  if (([v20 save_] & 1) == 0)
  {
    v23 = v38;
    a3 = sub_222C9342C();

    swift_willThrow();
    goto LABEL_6;
  }

  v21 = v38;
  LOBYTE(v22) = 0;
LABEL_7:
  __swift_destroy_boxed_opaque_existential_0Tm(v40);
  v25 = *(v17 + 16);
  v24 = *(v17 + 24);
  v26 = v25 + 1;
  if (v25 >= v24 >> 1)
  {
LABEL_23:
    sub_222B4C908((v24 > 1), v26, 1);
    v17 = v39;
  }

  *(v17 + 16) = v26;
  v27 = v17 + 16 * v25;
  *(v27 + 32) = a3;
  *(v27 + 40) = v22;
  __swift_destroy_boxed_opaque_existential_0Tm(v8 + 4);
  v22 = 0;
  v25 = *(v17 + 16);
  v8 = (v17 + 40);
  v28 = MEMORY[0x277D84F90];
LABEL_9:
  v24 = &v8[2 * v22];
  while (v25 != v22)
  {
    if (v22 >= *(v17 + 16))
    {
      __break(1u);
      goto LABEL_23;
    }

    v29 = v24 + 16;
    ++v22;
    v30 = *v24;
    v24 += 16;
    if (v30 == 1)
    {
      a3 = *(v29 - 24);
      v31 = a3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_222B4AF18(0, v28[2] + 1, 1, v28);
      }

      v33 = v28[2];
      v32 = v28[3];
      v26 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        v28 = sub_222B4AF18((v32 > 1), v33 + 1, 1, v28);
      }

      v28[2] = v26;
      v28[v33 + 4] = a3;
      goto LABEL_9;
    }
  }

  if (v28[2])
  {
    v34 = sub_222C93E7C();
    sub_222B9A4A8();
    swift_allocError();
    *v35 = v28;
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D5FB58], v34);
    result = swift_willThrow();
  }

  else
  {
  }

  v37 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_222B9A200(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*a1 + 24);
  return sub_222C94B1C();
}

uint64_t getEnumTagSinglePayload for PIMSCoreDataStorePolicies(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PIMSCoreDataStorePolicies(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t type metadata accessor for MediaSuggestionEvictor()
{
  result = qword_280FDE978;
  if (!qword_280FDE978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222B9A344()
{
  v1 = *v0;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;

  return MEMORY[0x2821C4958](sub_222B9A500, v2);
}

uint64_t sub_222B9A3C8()
{
  sub_222C93E5C();

  return swift_deallocClassInstance();
}

void sub_222B9A3F8()
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

unint64_t sub_222B9A444()
{
  result = qword_280FE0280;
  if (!qword_280FE0280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D025C60, &unk_222C9A920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FE0280);
  }

  return result;
}

unint64_t sub_222B9A4A8()
{
  result = qword_27D025C68;
  if (!qword_27D025C68)
  {
    sub_222C93E7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025C68);
  }

  return result;
}

uint64_t sub_222B9A504(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C70, &unk_222C9BEE0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_222C96900;
  v3 = MEMORY[0x277D837D0];
  *(v2 + 56) = MEMORY[0x277D837D0];
  v4 = sub_222B9A614();
  *(v2 + 64) = v4;
  *(v2 + 32) = 1701667182;
  *(v2 + 40) = 0xE400000000000000;
  v5 = [a1 name];
  if (!v5)
  {
    v10 = (v2 + 72);
    *(v2 + 96) = v3;
    *(v2 + 104) = v4;
    goto LABEL_5;
  }

  v6 = v5;
  v7 = sub_222C9449C();
  v9 = v8;

  v10 = (v2 + 72);
  *(v2 + 96) = v3;
  *(v2 + 104) = v4;
  if (!v9)
  {
LABEL_5:
    *v10 = 0;
    v9 = 0xE000000000000000;
    goto LABEL_6;
  }

  *v10 = v7;
LABEL_6:
  *(v2 + 80) = v9;
  sub_222B9A668();
  return sub_222C949EC();
}

unint64_t sub_222B9A614()
{
  result = qword_280FDB828[0];
  if (!qword_280FDB828[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FDB828);
  }

  return result;
}

unint64_t sub_222B9A668()
{
  result = qword_280FDB788;
  if (!qword_280FDB788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280FDB788);
  }

  return result;
}

SiriPrivateLearningInference::CaptureRecord __swiftcall CaptureRecord.init(selfEvents:interactions:contacts:)(Swift::OpaquePointer selfEvents, Swift::OpaquePointer interactions, Swift::OpaquePointer contacts)
{
  v7 = v3;
  v8 = sub_222C93CCC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(interactions._rawValue + 2);
  if (v13)
  {
    rawValue = selfEvents._rawValue;
    v26 = v7;
    v27 = contacts._rawValue;
    v29 = MEMORY[0x277D84F90];
    sub_222C94E1C();
    v14 = v9 + 16;
    v28 = *(v9 + 16);
    v15 = *(v9 + 80);
    v24 = interactions._rawValue;
    v16 = interactions._rawValue + ((v15 + 32) & ~v15);
    v17 = *(v9 + 72);
    v18 = (v14 - 8);
    do
    {
      v28(v12, v16, v8);
      sub_222C93CAC();
      (*v18)(v12, v8);
      sub_222C94DEC();
      v19 = v29[2];
      sub_222C94E2C();
      sub_222C94E3C();
      sub_222C94DFC();
      v16 += v17;
      --v13;
    }

    while (v13);

    v23 = v29;
    v7 = v26;
    contacts._rawValue = v27;
    selfEvents._rawValue = rawValue;
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  v7->_rawValue = selfEvents._rawValue;
  v7[1]._rawValue = v23;
  v7[2]._rawValue = contacts._rawValue;
  result.deviceContacts._rawValue = v22;
  result.interactions._rawValue = v21;
  result.selfEvents._rawValue = v20;
  return result;
}

uint64_t sub_222B9A890(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7463617265746E69;
  v4 = 0xEC000000736E6F69;
  if (v2 != 1)
  {
    v3 = 0x6F43656369766564;
    v4 = 0xEE0073746361746ELL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E657645666C6573;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000007374;
  }

  v7 = 0x7463617265746E69;
  v8 = 0xEC000000736E6F69;
  if (*a2 != 1)
  {
    v7 = 0x6F43656369766564;
    v8 = 0xEE0073746361746ELL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E657645666C6573;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000007374;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_222C951FC();
  }

  return v11 & 1;
}

uint64_t sub_222B9A9BC()
{
  v1 = *v0;
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222B9AA78()
{
  *v0;
  *v0;
  sub_222C9452C();
}

uint64_t sub_222B9AB20()
{
  v1 = *v0;
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222B9ABD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222B9C06C();
  *a2 = result;
  return result;
}

void sub_222B9AC08(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007374;
  v4 = 0xEC000000736E6F69;
  v5 = 0x7463617265746E69;
  if (v2 != 1)
  {
    v5 = 0x6F43656369766564;
    v4 = 0xEE0073746361746ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E657645666C6573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_222B9AC80()
{
  v1 = 0x7463617265746E69;
  if (*v0 != 1)
  {
    v1 = 0x6F43656369766564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E657645666C6573;
  }
}

uint64_t sub_222B9ACF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222B9C06C();
  *a1 = result;
  return result;
}

uint64_t sub_222B9AD1C(uint64_t a1)
{
  v2 = sub_222B9B464();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222B9AD58(uint64_t a1)
{
  v2 = sub_222B9B464();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CaptureRecord.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C78, &qword_222C9A930);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v51 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222B9B464();
  sub_222C9535C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C88, &qword_222C9A938);
  v62 = 0;
  v12 = sub_222B9BE44(&qword_27D025C90, sub_222B9B4B8);
  result = sub_222C9507C();
  v57 = v12;
  v58 = v11;
  v59 = v5;
  v60 = v9;
  v55 = 0;
  v56 = a2;
  v53 = v6;
  v54 = a1;
  v14 = 0;
  v15 = v63;
  v16 = v63 + 40;
  v63 = MEMORY[0x277D84F90];
  v17 = *(v15 + 16);
  v51 = MEMORY[0x277D84F90];
  v52 = v15 + 40;
  v61 = MEMORY[0x277D84F90];
LABEL_4:
  v18 = (v16 + 16 * v14);
  while (v17 != v14)
  {
    if (v14 >= *(v15 + 16))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      return result;
    }

    ++v14;
    v19 = v18 + 2;
    v21 = *(v18 - 1);
    v20 = *v18;
    v22 = objc_allocWithZone(MEMORY[0x277D5A790]);
    sub_222B80358(v21, v20);
    v23 = sub_222C934FC();
    v24 = [v22 initWithData_];

    result = sub_222B803C0(v21, v20);
    v18 = v19;
    if (v24)
    {
      MEMORY[0x223DC94A0](result);
      if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v25 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_222C9475C();
      }

      result = sub_222C947AC();
      v61 = v63;
      v16 = v52;
      goto LABEL_4;
    }
  }

  v62 = 1;
  v26 = v59;
  v27 = v60;
  v28 = v55;
  result = sub_222C9507C();
  if (v28)
  {
    (*(v53 + 8))(v27, v26);
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
  }

  else
  {
    v29 = 0;
    v30 = v63;
    v31 = v63 + 40;
    v63 = MEMORY[0x277D84F90];
    v32 = v30;
    v33 = *(v30 + 16);
    v55 = MEMORY[0x277D84F90];
    v52 = v30 + 40;
LABEL_14:
    v34 = (v31 + 16 * v29);
    while (v33 != v29)
    {
      if (v29 >= *(v32 + 16))
      {
        goto LABEL_31;
      }

      v35 = *(v34 - 1);
      v36 = *v34;
      sub_222B505A8(0, &qword_27D025CA0, 0x277CCAAC8);
      sub_222B505A8(0, &qword_27D025CA8, 0x277CD3D58);
      sub_222B80358(v35, v36);
      v37 = sub_222C94A8C();
      ++v29;
      v34 += 2;
      result = sub_222B803C0(v35, v36);
      if (v37)
      {
        MEMORY[0x223DC94A0](result);
        if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v38 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_222C9475C();
        }

        result = sub_222C947AC();
        v55 = v63;
        v31 = v52;
        goto LABEL_14;
      }
    }

    v62 = 2;
    v39 = v59;
    result = sub_222C9507C();
    v40 = 0;
    v41 = v63;
    v42 = v63 + 40;
    v63 = MEMORY[0x277D84F90];
    v43 = *(v41 + 16);
    v57 = v41 + 40;
    v58 = v43;
    v44 = v56;
LABEL_22:
    v45 = (v42 + 16 * v40);
    while (v58 != v40)
    {
      if (v40 >= *(v41 + 16))
      {
        goto LABEL_32;
      }

      v46 = *(v45 - 1);
      v47 = *v45;
      sub_222B505A8(0, &qword_27D025CA0, 0x277CCAAC8);
      sub_222B505A8(0, &qword_27D025CB0, 0x277CBDA58);
      sub_222B80358(v46, v47);
      v48 = sub_222C94A8C();
      ++v40;
      v45 += 2;
      result = sub_222B803C0(v46, v47);
      v44 = v56;
      if (v48)
      {
        MEMORY[0x223DC94A0](result);
        if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v49 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_222C9475C();
        }

        result = sub_222C947AC();
        v51 = v63;
        v42 = v57;
        goto LABEL_22;
      }
    }

    (*(v53 + 8))(v60, v39);

    v50 = v55;
    *v44 = v61;
    v44[1] = v50;
    v44[2] = v51;

    __swift_destroy_boxed_opaque_existential_0Tm(v54);
  }
}

unint64_t sub_222B9B464()
{
  result = qword_27D025C80;
  if (!qword_27D025C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025C80);
  }

  return result;
}

unint64_t sub_222B9B4B8()
{
  result = qword_27D025C98;
  if (!qword_27D025C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025C98);
  }

  return result;
}

uint64_t CaptureRecord.encode(to:)(void *a1)
{
  v84 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025CB8, &qword_222C9A940);
  v77 = *(v3 - 8);
  v4 = *(v77 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v73 - v5;
  v7 = *v1;
  v80 = v1[1];
  v78 = v1[2];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222B9B464();
  sub_222C9536C();
  v9 = v7;
  if (v7 >> 62)
  {
    goto LABEL_60;
  }

  v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v11 = MEMORY[0x277D84F90];
  v75 = v6;
  v76 = v3;
  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = v9;
  v83 = MEMORY[0x277D84F90];
  sub_222B4C948(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v11 = v83;
    v14 = v12;
    v81 = v12 & 0xC000000000000001;
    v15 = v12;
    do
    {
      if (v81)
      {
        v16 = MEMORY[0x223DC9B30](v13, v14);
      }

      else
      {
        v16 = *(v14 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = v10;
      v19 = [v16 data];
      if (v19)
      {
        v20 = v19;
        v21 = sub_222C9350C();
        v23 = v22;
      }

      else
      {

        v21 = 0;
        v23 = 0xF000000000000000;
      }

      v83 = v11;
      v25 = *(v11 + 2);
      v24 = *(v11 + 3);
      if (v25 >= v24 >> 1)
      {
        sub_222B4C948((v24 > 1), v25 + 1, 1);
        v11 = v83;
      }

      ++v13;
      *(v11 + 2) = v25 + 1;
      v26 = &v11[16 * v25];
      *(v26 + 4) = v21;
      *(v26 + 5) = v23;
      v10 = v18;
      v14 = v15;
    }

    while (v18 != v13);
    v6 = v75;
    v3 = v76;
LABEL_16:
    v83 = v11;
    LOBYTE(v82) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025CC0, &unk_222C9A948);
    sub_222B9BCE8();
    v27 = v79;
    sub_222C9512C();
    if (v27)
    {

      result = (*(v77 + 8))(v6, v3);
      goto LABEL_56;
    }

    v10 = v80;
    v73 = 0;
    if (!(v80 >> 62))
    {
      v29 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_20;
    }

    goto LABEL_63;
  }

  while (2)
  {
    __break(1u);
LABEL_63:
    v29 = sub_222C94C6C();
LABEL_20:
    v30 = v78;
    v31 = MEMORY[0x277D84F90];
    if (!v29)
    {
      goto LABEL_34;
    }

    v83 = MEMORY[0x277D84F90];
    sub_222B4C928(0, v29 & ~(v29 >> 63), 0);
    if (v29 < 0)
    {
      __break(1u);
LABEL_66:
      __break(1u);
    }

    v31 = v83;
    v79 = objc_opt_self();
    v32 = 0;
    v81 = v10 & 0xC000000000000001;
    v74 = v10 & 0xFFFFFFFFFFFFFF8;
    do
    {
      v33 = (v32 + 1);
      if (__OFADD__(v32, 1))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        v69 = v9;
        v70 = sub_222C94C6C();
        v9 = v69;
        v10 = v70;
        goto LABEL_3;
      }

      if (v81)
      {
        v34 = MEMORY[0x223DC9B30](v32, v80);
      }

      else
      {
        if (v32 >= *(v74 + 16))
        {
          goto LABEL_59;
        }

        v34 = *(v80 + 8 * v32 + 32);
      }

      v35 = v34;
      v82 = 0;
      v36 = [v79 archivedDataWithRootObject:v34 requiringSecureCoding:1 error:{&v82, v73}];
      v37 = v82;
      if (!v36)
      {
        v44 = v37;
        sub_222C9342C();

        swift_willThrow();
        (*(v77 + 8))(v75, v76);
        goto LABEL_51;
      }

      v6 = v29;
      v38 = sub_222C9350C();
      v40 = v39;

      v83 = v31;
      v42 = *(v31 + 2);
      v41 = *(v31 + 3);
      v3 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        sub_222B4C928((v41 > 1), v42 + 1, 1);
        v31 = v83;
      }

      *(v31 + 2) = v3;
      v43 = &v31[16 * v42];
      *(v43 + 4) = v38;
      *(v43 + 5) = v40;
      ++v32;
      v29 = v6;
    }

    while (v33 != v6);
    v30 = v78;
LABEL_34:
    if (v30 >> 62)
    {
      v71 = v30;
      v72 = sub_222C94C6C();
      v30 = v71;
      v10 = v72;
    }

    else
    {
      v10 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = MEMORY[0x277D84F90];
    if (!v10)
    {
LABEL_52:
      v83 = v31;
      LOBYTE(v82) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C88, &qword_222C9A938);
      sub_222B9BE44(&qword_27D025CE0, sub_222B9BDF0);
      v65 = v75;
      v66 = v76;
      v67 = v73;
      sub_222C9512C();
      if (v67)
      {
        (*(v77 + 8))(v65, v66);
      }

      else
      {

        v83 = v6;
        LOBYTE(v82) = 2;
        sub_222C9512C();
        (*(v77 + 8))(v65, v66);
      }

      goto LABEL_56;
    }

    v45 = v30;
    v83 = MEMORY[0x277D84F90];
    sub_222B4C928(0, v10 & ~(v10 >> 63), 0);
    if (v10 < 0)
    {
      goto LABEL_66;
    }

    v46 = v83;
    v47 = objc_opt_self();
    v48 = 0;
    v49 = v45;
    v80 = v47;
    v81 = v45 & 0xC000000000000001;
    v79 = (v45 & 0xFFFFFFFFFFFFFF8);
LABEL_39:
    v50 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      goto LABEL_58;
    }

    if (v81)
    {
      v51 = v46;
      v52 = MEMORY[0x223DC9B30](v48, v49);
      goto LABEL_44;
    }

    if (v48 >= *(v79 + 2))
    {
      __break(1u);
      continue;
    }

    break;
  }

  v51 = v46;
  v52 = *(v49 + 8 * v48 + 32);
LABEL_44:
  v53 = v52;
  v82 = 0;
  v54 = [v80 archivedDataWithRootObject:v52 requiringSecureCoding:1 error:{&v82, v73}];
  v55 = v82;
  if (v54)
  {
    v6 = v31;
    v56 = v10;
    v57 = sub_222C9350C();
    v59 = v58;

    v46 = v51;
    v83 = v51;
    v60 = *(v51 + 2);
    v61 = *(v46 + 3);
    v3 = v60 + 1;
    if (v60 >= v61 >> 1)
    {
      sub_222B4C928((v61 > 1), v60 + 1, 1);
      v46 = v83;
    }

    *(v46 + 2) = v3;
    v62 = &v46[16 * v60];
    *(v62 + 4) = v57;
    *(v62 + 5) = v59;
    ++v48;
    v10 = v56;
    v63 = v50 == v56;
    v49 = v78;
    v31 = v6;
    if (v63)
    {
      v6 = v46;
      goto LABEL_52;
    }

    goto LABEL_39;
  }

  v64 = v55;

  sub_222C9342C();

  swift_willThrow();
  (*(v77 + 8))(v75, v76);
LABEL_51:

LABEL_56:
  v68 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_222B9BCE8()
{
  result = qword_27D025CC8;
  if (!qword_27D025CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D025CC0, &unk_222C9A948);
    sub_222B9BD6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025CC8);
  }

  return result;
}

unint64_t sub_222B9BD6C()
{
  result = qword_27D025CD0;
  if (!qword_27D025CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D024F50, &qword_222C96D00);
    sub_222B9BDF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025CD0);
  }

  return result;
}

unint64_t sub_222B9BDF0()
{
  result = qword_27D025CD8;
  if (!qword_27D025CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025CD8);
  }

  return result;
}

uint64_t sub_222B9BE44(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D025C88, &qword_222C9A938);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222B9BEBC(uint64_t *a1, int a2)
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

uint64_t sub_222B9BF04(uint64_t result, int a2, int a3)
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

unint64_t sub_222B9BF68()
{
  result = qword_27D025CE8;
  if (!qword_27D025CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025CE8);
  }

  return result;
}

unint64_t sub_222B9BFC0()
{
  result = qword_27D025CF0;
  if (!qword_27D025CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025CF0);
  }

  return result;
}

unint64_t sub_222B9C018()
{
  result = qword_27D025CF8;
  if (!qword_27D025CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025CF8);
  }

  return result;
}

uint64_t sub_222B9C06C()
{
  v0 = sub_222C94FDC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void *sub_222B9C0EC(uint64_t a1)
{
  v20 = type metadata accessor for MessagesAbandonmentClassifier();
  v21 = &protocol witness table for MessagesAbandonmentClassifier;
  v19 = swift_allocObject();
  v23 = type metadata accessor for MessagesDeadEndClassifier();
  v24 = &protocol witness table for MessagesDeadEndClassifier;
  v22 = swift_allocObject();
  v26 = type metadata accessor for SuccessfulMessageClassifier();
  v27 = &protocol witness table for SuccessfulMessageClassifier;
  v25 = swift_allocObject();
  v29 = type metadata accessor for MessagesInAppFollowupClassifier();
  v30 = &protocol witness table for MessagesInAppFollowupClassifier;
  v28 = swift_allocObject();
  v32 = type metadata accessor for EntityPromptClassifier();
  v33 = &protocol witness table for EntityPromptClassifier;
  v31 = swift_allocObject();
  v35 = type metadata accessor for ContactSuggestionProvidedClassifier();
  v36 = &protocol witness table for ContactSuggestionProvidedClassifier;
  v34 = swift_allocObject();
  v2 = MEMORY[0x277D84F90];
  v3 = 32;
  while (1)
  {
    sub_222B43E3C(&v18[v3], v15);
    v5 = v16;
    v6 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    result = (*(v6 + 8))(a1, v2, v5, v6);
    v7 = result[2];
    v8 = v2[2];
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      break;
    }

    v10 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v9 <= v2[3] >> 1)
    {
      if (v10[2])
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v11 = v8 + v7;
      }

      else
      {
        v11 = v8;
      }

      result = sub_222B4A314(result, v11, 1, v2);
      v2 = result;
      if (v10[2])
      {
LABEL_13:
        if ((v2[3] >> 1) - v2[2] < v7)
        {
          goto LABEL_20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
        swift_arrayInitWithCopy();

        if (v7)
        {
          v12 = v2[2];
          v13 = __OFADD__(v12, v7);
          v14 = v12 + v7;
          if (v13)
          {
            goto LABEL_21;
          }

          v2[2] = v14;
        }

        goto LABEL_3;
      }
    }

    if (v7)
    {
      goto LABEL_19;
    }

LABEL_3:
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    v3 += 40;
    if (v3 == 272)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025D00, &unk_222C9ABC0);
      swift_arrayDestroy();
      return v2;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_222B9C410()
{
  type metadata accessor for PLUSMediaSuggesterRuntimeLogHelper();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025D18, &qword_222C9AC28);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D025D08 = 91;
  unk_27D025D10 = 0xE100000000000000;
  return result;
}

void sub_222B9C49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = sub_222B9D33C();
  if (v11)
  {
    v21 = v11;
    v12 = [objc_allocWithZone(MEMORY[0x277D59DA0]) init];
    if (v12)
    {
      v13 = v12;
      [v12 setSuggestionDomainMetadata_];
      v14 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v15 = sub_222C9361C();
      v16 = [v14 initWithNSUUID_];

      [v13 setOriginalRequestId_];
      MEMORY[0x28223BE20](v17);
      v20[2] = a1;
      v20[3] = a3;
      v20[4] = v10;
      sub_222BDC068(sub_222B9D4D4, v20, a2);
      sub_222B505A8(0, &qword_27D025D20, 0x277D59DE0);
      v18 = sub_222C9470C();

      [v13 setMatchedResults_];

      [v13 setMatchedResultsPopulated_];
      v19 = v5[2];
      sub_222BA1EC0(v13, a3, a4);
    }

    else
    {
    }
  }
}

void sub_222B9C6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v66 - v10;
  v12 = sub_222C9367C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v66 - v18;
  (*(v13 + 16))(v17, a3, v12);
  sub_222C9360C();
  sub_222C42B54(v17, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_222B4FCD4(v11, &unk_27D026290, &qword_222C96B40);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v20 = sub_222C9431C();
    __swift_project_value_buffer(v20, qword_280FE2340);
    v21 = sub_222C942FC();
    v22 = sub_222C94A4C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v71 = v24;
      *v23 = 136315138;
      if (qword_27D0246C8 != -1)
      {
        swift_once();
      }

      *(v23 + 4) = sub_222B437C0(qword_27D025D08, unk_27D025D10, &v71);
      _os_log_impl(&dword_222B39000, v21, v22, "%s Failed to generated suggestionId", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x223DCA8C0](v24, -1, -1);
      MEMORY[0x223DCA8C0](v23, -1, -1);
    }

    return;
  }

  v67 = v4;
  v68 = a3;
  (*(v13 + 32))(v19, v11, v12);
  v25 = &unk_2784BC000;
  v26 = [objc_allocWithZone(MEMORY[0x277D59DA8]) init];
  v27 = &unk_280FDF000;
  v69 = a4;
  if (v26)
  {
    v28 = v26;
    v29 = v19;
    v30 = [objc_allocWithZone(MEMORY[0x277D59D88]) init];
    if (v30)
    {
      v31 = v30;
      v32 = [objc_allocWithZone(MEMORY[0x277D59D90]) init];
      if (v32)
      {
        v33 = v32;
        v34 = type metadata accessor for PimsSuggestionMetadata();
        [v33 setLocality_];
        LOBYTE(v71) = *(a2 + v34[6]);
        [v33 setServerTreatment_];
        LOBYTE(v71) = *(a2 + v34[7]);
        [v33 setClientTreatment_];
        [v31 setMediaMetadata_];
        v35 = sub_222B9D33C();
        [v28 setSuggestionDomainMetadata_];

        v36 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v37 = sub_222C9361C();
        v38 = [v36 initWithNSUUID_];

        [v28 setSuggestionLinkId_];
        v39 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v40 = sub_222C9361C();
        v41 = [v39 initWithNSUUID_];

        [v28 setOriginalRequestId_];
        v42 = v34[8];
        [v28 setSuggestionSurfaced_];
        v43 = v34[9];
        [v28 setSuggestionNoveltyState_];
        [v28 setDomainSuggestionMetadata_];
        v44 = *(v67 + 16);
        sub_222BA209C(v28, v68, v69);

        v19 = v29;
        v27 = &unk_280FDF000;
LABEL_22:
        v25 = &unk_2784BC000;
        goto LABEL_24;
      }
    }

    else
    {
      v31 = v28;
    }

    v19 = v29;
    v27 = &unk_280FDF000;
  }

  if (v27[463] != -1)
  {
    swift_once();
  }

  v45 = sub_222C9431C();
  __swift_project_value_buffer(v45, qword_280FE2340);
  v46 = sub_222C942FC();
  v47 = sub_222C94A4C();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v71 = v49;
    *v48 = 136315138;
    if (qword_27D0246C8 != -1)
    {
      swift_once();
    }

    *(v48 + 4) = sub_222B437C0(qword_27D025D08, unk_27D025D10, &v71);
    _os_log_impl(&dword_222B39000, v46, v47, "%s Failed to create PLUSSuggesterSuggestionMetadataReported", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v49);
    MEMORY[0x223DCA8C0](v49, -1, -1);
    MEMORY[0x223DCA8C0](v48, -1, -1);

    goto LABEL_22;
  }

LABEL_24:
  v50 = *(type metadata accessor for PimsSuggestionMetadata() + 40);
  v51 = [objc_allocWithZone(MEMORY[0x277D59DB0]) v25[386]];
  if (v51)
  {
    v52 = v51;
    v53 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v54 = sub_222C9361C();
    v55 = [v53 initWithNSUUID_];

    [v52 setSuggestionLinkId_];
    v56 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v57 = sub_222C9361C();
    v58 = [v56 initWithNSUUID_];

    [v52 setOriginalRequestId_];
    v59 = sub_222B9D33C();
    [v52 setSuggestionDomainMetadata_];

    [v52 setSuggestionRedundancyState_];
    v60 = *(v67 + 16);
    sub_222BA20B0(v52, v68, v69);

    (*(v13 + 8))(v19, v12);
  }

  else
  {
    if (v27[463] != -1)
    {
      swift_once();
    }

    v61 = sub_222C9431C();
    __swift_project_value_buffer(v61, qword_280FE2340);
    v62 = sub_222C942FC();
    v63 = sub_222C94A4C();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v71 = v65;
      *v64 = 136315138;
      if (qword_27D0246C8 != -1)
      {
        swift_once();
      }

      *(v64 + 4) = sub_222B437C0(qword_27D025D08, unk_27D025D10, &v71);
      _os_log_impl(&dword_222B39000, v62, v63, "%s Failed to create PLUSSchemaPLUSSuggesterSuggestionRedundancyReported", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
      MEMORY[0x223DCA8C0](v65, -1, -1);
      MEMORY[0x223DCA8C0](v64, -1, -1);
    }

    (*(v13 + 8))(v19, v12);
  }
}

uint64_t sub_222B9CFB8()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_222B9D014(uint64_t a1)
{
  v2 = type metadata accessor for ThinMediaGroundTruth();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - v7;
  v9 = MEMORY[0x277D84F98];
  v43 = MEMORY[0x277D84F98];
  v10 = *(a1 + 16);
  if (!v10)
  {
    return v9;
  }

  v38 = *(v5 + 80);
  v11 = *(v5 + 72);
  v41 = (v38 + 32) & ~v38;
  v12 = a1 + v41;
  v37 = xmmword_222C97C40;
  v42 = v6;
  v39 = v2;
  v40 = v11;
  while (1)
  {
    sub_222B7E8D8(v12, v8);
    v16 = v8[*(v2 + 24)];
    v18 = sub_222B8CEE8(v16);
    v19 = v9[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v17;
    if (v9[3] < v21)
    {
      sub_222B8FDCC(v21, 1);
      v9 = v43;
      v23 = sub_222B8CEE8(v16);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_19;
      }

      v18 = v23;
    }

    if (v22)
    {
      v25 = v9[7];
      sub_222B9E628(v8, v42, type metadata accessor for ThinMediaGroundTruth);
      v26 = *(v25 + 8 * v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v25 + 8 * v18) = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = sub_222B4A864(0, v26[2] + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v29 = v26[2];
      v28 = v26[3];
      if (v29 >= v28 >> 1)
      {
        v26 = sub_222B4A864(v28 > 1, v29 + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v2 = v39;
      v13 = v40;
      v26[2] = v29 + 1;
      v14 = v26 + v41 + v29 * v13;
      v15 = v13;
      sub_222B9E628(v42, v14, type metadata accessor for ThinMediaGroundTruth);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024EC8, &qword_222C96C78);
      v30 = v41;
      v31 = swift_allocObject();
      *(v31 + 16) = v37;
      sub_222B9E628(v8, v31 + v30, type metadata accessor for ThinMediaGroundTruth);
      v9[(v18 >> 6) + 8] |= 1 << v18;
      *(v9[6] + v18) = v16;
      *(v9[7] + 8 * v18) = v31;
      v32 = v9[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_18;
      }

      v9[2] = v34;
      v15 = v40;
    }

    v12 += v15;
    if (!--v10)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_222C9526C();
  __break(1u);
  return result;
}

id sub_222B9D33C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D59DC8]) init];
  if (v0)
  {
    v1 = v0;
    [v0 setSuggestionGenerationDomain_];
    return v1;
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v3 = sub_222C9431C();
    __swift_project_value_buffer(v3, qword_280FE2340);
    v4 = sub_222C942FC();
    v5 = sub_222C94A4C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = v7;
      *v6 = 136315138;
      if (qword_27D0246C8 != -1)
      {
        swift_once();
      }

      *(v6 + 4) = sub_222B437C0(qword_27D025D08, unk_27D025D10, &v8);
      _os_log_impl(&dword_222B39000, v4, v5, "%s Failure creating PLUSSchemaPLUSSuggestionDomainMetadata", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
      MEMORY[0x223DCA8C0](v7, -1, -1);
      MEMORY[0x223DCA8C0](v6, -1, -1);
    }

    return 0;
  }
}

void *sub_222B9D4D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C30, &qword_222C96A08);
  result = sub_222B9DE04(v6, a1, a1 + *(v7 + 48), v5);
  *a2 = result;
  return result;
}

void *sub_222B9D544(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = [objc_allocWithZone(MEMORY[0x277D59D38]) init];
  if (v4)
  {
    v5 = v4;
    if ((v3 & 0x80) != 0)
    {
      if ((v3 & 0x7Fu) - 1 < 2)
      {
        v6 = 1;
      }

      else
      {
        v6 = 5;
      }
    }

    else
    {
      v6 = dword_222C9AC54[v3];
    }

    [v4 setSource_];
    if (!(*(a2 + 16) >> 31))
    {
      [v5 setGroundTruthCount_];
      return v5;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (qword_280FDFE78 != -1)
  {
LABEL_17:
    swift_once();
  }

  v7 = sub_222C9431C();
  __swift_project_value_buffer(v7, qword_280FE2340);
  v8 = sub_222C942FC();
  v9 = sub_222C94A4C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315138;
    if (qword_27D0246C8 != -1)
    {
      swift_once();
    }

    *(v10 + 4) = sub_222B437C0(qword_27D025D08, unk_27D025D10, &v13);
    _os_log_impl(&dword_222B39000, v8, v9, "%s Failed to create PLUSSchemaPLUSMediaGroundTruthSummary", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x223DCA8C0](v11, -1, -1);
    MEMORY[0x223DCA8C0](v10, -1, -1);
  }

  return 0;
}

uint64_t sub_222B9D72C()
{

  v1 = sub_222B9D014(v0);

  v2 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
LABEL_11:
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = *(*(v1 + 56) + 8 * v10);
    v14[0] = *(*(v1 + 48) + v10);
    v15 = v11;

    v12 = sub_222B9D544(v14, v11);

    if (v12)
    {
      MEMORY[0x223DC94A0](result);
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_222C9475C();
      }

      result = sub_222C947AC();
      v2 = v16;
    }

    v5 &= v5 - 1;
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

    v5 = *(v1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_222B9D8AC(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D59D40]) init];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x277D59D58]) init];
    if (v4)
    {
      v5 = v4;
      v6 = [objc_allocWithZone(MEMORY[0x277D59DF8]) init];
      if (v6)
      {
        v7 = v6;
        [v5 setSourceType_];
        v8 = type metadata accessor for PlusMediaSuggestion();
        v9 = *(a1 + *(v8 + 28));
        sub_222B9D72C();
        sub_222B505A8(0, qword_27D025D30, 0x277D59D38);
        v10 = sub_222C9470C();

        [v3 setContributingGroundTruths_];

        [v3 setSource_];
        v11 = sub_222BAF404(&unk_283607998);
        v12 = sub_222BB26C4(*(a1 + *(v8 + 44)), v11);

        if (v12)
        {
          v13 = 2;
        }

        else
        {
          v13 = 1;
        }

        [v3 setLocality_];
        [v7 setMediaSuggestion_];

        return v7;
      }
    }

    else
    {
      v5 = v3;
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v15 = sub_222C9431C();
  __swift_project_value_buffer(v15, qword_280FE2340);
  v16 = sub_222C942FC();
  v17 = sub_222C94A4C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v18 = 136315138;
    if (qword_27D0246C8 != -1)
    {
      swift_once();
    }

    *(v18 + 4) = sub_222B437C0(qword_27D025D08, unk_27D025D10, &v20);
    _os_log_impl(&dword_222B39000, v16, v17, "%s Failure creating SELF message objects", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x223DCA8C0](v19, -1, -1);
    MEMORY[0x223DCA8C0](v18, -1, -1);
  }

  return 0;
}

void *sub_222B9DB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D59DE0]) init];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(MEMORY[0x277D59DB8]) init];
    if (v7)
    {
      v8 = v7;
      v9 = [objc_allocWithZone(MEMORY[0x277D59DE8]) init];
      if (v9)
      {
        v10 = v9;
        [v9 setSurfacedBeforeStatus_];
        [v8 setSuggestionValue_];
        [v8 setSuggestionMetadata_];
        v11 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v12 = sub_222C9361C();
        v13 = [v11 initWithNSUUID_];

        [v6 setSuggestionId_];
        [v6 setGeneratedSuggestion_];

        return v6;
      }
    }

    else
    {
      v8 = v6;
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v14 = sub_222C9431C();
  __swift_project_value_buffer(v14, qword_280FE2340);
  v15 = sub_222C942FC();
  v16 = sub_222C94A4C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20 = v18;
    *v17 = 136315138;
    if (qword_27D0246C8 != -1)
    {
      swift_once();
    }

    *(v17 + 4) = sub_222B437C0(qword_27D025D08, unk_27D025D10, &v20);
    _os_log_impl(&dword_222B39000, v15, v16, "%s Failure creating PLUSSchemaPLUSSuggestionMatchResult message", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x223DCA8C0](v18, -1, -1);
    MEMORY[0x223DCA8C0](v17, -1, -1);
  }

  return 0;
}

void *sub_222B9DE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025D28, &unk_222C9AC30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v52 - v7;
  v53 = type metadata accessor for PlusMediaSuggestion();
  v9 = *(v53 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v53);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v52 - v15;
  v17 = sub_222C9367C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v55 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v52 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v52 - v25;
  v52 = *(v18 + 16);
  v52(v24, v56, v17);
  v56 = a2;
  sub_222C9360C();
  sub_222C42B54(v24, v16);
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    (*(v18 + 32))(v26, v16, v17);
    sub_222B9E560(v54, v8);
    v33 = v17;
    if ((*(v9 + 48))(v8, 1, v53) == 1)
    {
      sub_222B4FCD4(v8, &qword_27D025D28, &unk_222C9AC30);
      v34 = v55;
    }

    else
    {
      sub_222B9E628(v8, v12, type metadata accessor for PlusMediaSuggestion);
      v35 = sub_222B9D8AC(v12);
      v34 = v55;
      if (v35)
      {
        v36 = v35;
        v37 = v35;
        v38 = PlusMediaSuggestion.surfacedBefore.getter();
        sub_222B7D9D0(v12);
        if (v38)
        {
          v39 = 1;
        }

        else
        {
          v39 = 2;
        }

LABEL_26:
        v51 = sub_222B9DB80(v26, v39, v36);

        (*(v18 + 8))(v26, v33);
        return v51;
      }

      sub_222B7D9D0(v12);
    }

    if (qword_280FDF1F0 != -1)
    {
      swift_once();
    }

    v40 = v18;
    v59 = &type metadata for PIMSConstraintMismatch;
    v60 = sub_222B77B4C();
    v57[0] = 0xD000000000000016;
    v57[1] = 0x8000000222CA9C80;
    v58 = 13;
    sub_222C93B5C();
    __swift_destroy_boxed_opaque_existential_0Tm(v57);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v41 = sub_222C9431C();
    __swift_project_value_buffer(v41, qword_280FE2340);
    v52(v34, v56, v33);
    v42 = sub_222C942FC();
    v43 = sub_222C94A4C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v57[0] = v45;
      *v44 = 136315394;
      if (qword_27D0246C8 != -1)
      {
        swift_once();
      }

      *(v44 + 4) = sub_222B437C0(qword_27D025D08, unk_27D025D10, v57);
      *(v44 + 12) = 2080;
      sub_222B9E5D0();
      v46 = sub_222C9517C();
      v47 = v34;
      v49 = v48;
      (*(v40 + 8))(v47, v33);
      v50 = sub_222B437C0(v46, v49, v57);

      *(v44 + 14) = v50;
      _os_log_impl(&dword_222B39000, v42, v43, "%s PIMS %s not found in suggestion store, emitting PLUSSchemaPLUSSuggestionMatchResult with nil suggestionValue", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v45, -1, -1);
      MEMORY[0x223DCA8C0](v44, -1, -1);

      v18 = v40;
    }

    else
    {

      (*(v18 + 8))(v34, v33);
    }

    v36 = 0;
    v39 = 0;
    goto LABEL_26;
  }

  sub_222B4FCD4(v16, &unk_27D026290, &qword_222C96B40);
  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v27 = sub_222C9431C();
  __swift_project_value_buffer(v27, qword_280FE2340);
  v28 = sub_222C942FC();
  v29 = sub_222C94A4C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v57[0] = v31;
    *v30 = 136315138;
    if (qword_27D0246C8 != -1)
    {
      swift_once();
    }

    *(v30 + 4) = sub_222B437C0(qword_27D025D08, unk_27D025D10, v57);
    _os_log_impl(&dword_222B39000, v28, v29, "%s Failed to generated suggestionId", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x223DCA8C0](v31, -1, -1);
    MEMORY[0x223DCA8C0](v30, -1, -1);
  }

  return 0;
}

uint64_t sub_222B9E560(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025D28, &unk_222C9AC30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_222B9E5D0()
{
  result = qword_280FE0298;
  if (!qword_280FE0298)
  {
    sub_222C9367C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FE0298);
  }

  return result;
}

uint64_t sub_222B9E628(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222B9E690(uint64_t a1)
{
  v1 = *(a1 + 88);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_222B9E73C()
{
  v1 = *v0;
  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  (*(*(*(v1 + 88) - 8) + 8))(&v0[*(*v0 + 120)]);
  return v0;
}

uint64_t sub_222B9E7C4()
{
  v1 = *v0;
  if (v0[3])
  {
    v2 = v0[2];
    v3 = v0[3];
  }

  else
  {
    v2 = static InferenceLogUtils.loggerTag<A>(_:)();
    v4 = v0[3];
    v0[2] = v2;
    v0[3] = v5;
  }

  return v2;
}

uint64_t sub_222B9E860(char *a1, char *a2, uint64_t a3)
{
  v244 = a3;
  v6 = *(*v3 + 88);
  v7 = *(*v3 + 80);
  v247 = *(*v3 + 96);
  v245 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v255 = AssociatedTypeWitness;
  v256 = v10;
  v257 = v11;
  v258 = v12;
  v221 = type metadata accessor for ScoreStep();
  v223 = *(v221 - 8);
  v13 = *(v223 + 64);
  v14 = MEMORY[0x28223BE20](v221);
  v220 = (v185 - v15);
  v214 = *(v7 - 8);
  v16 = *(v214 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v219 = v185 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v218 = v185 - v20;
  MEMORY[0x28223BE20](v19);
  v251 = v185 - v21;
  v229 = sub_222C94B5C();
  v231 = *(v229 - 8);
  v22 = *(v231 + 64);
  v23 = MEMORY[0x28223BE20](v229);
  v217 = v185 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v228 = v185 - v26;
  MEMORY[0x28223BE20](v25);
  v216 = v185 - v27;
  v28 = sub_222C94B5C();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v198 = v185 - v30;
  v239 = AssociatedTypeWitness;
  v255 = AssociatedTypeWitness;
  v256 = v10;
  v234 = v10;
  v233 = v11;
  v257 = v11;
  v258 = v12;
  v232 = v12;
  v31 = type metadata accessor for DomainSuggestionSignal();
  v188 = sub_222C94B5C();
  v227 = *(v188 - 8);
  v32 = v227[8];
  v33 = MEMORY[0x28223BE20](v188);
  v226 = v185 - v34;
  v213 = *(v31 - 8);
  v35 = *(v213 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v215 = v185 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v252 = v185 - v38;
  v39 = swift_getAssociatedTypeWitness();
  v201 = *(v39 - 8);
  v40 = *(v201 + 64);
  v41 = MEMORY[0x28223BE20](v39);
  v241 = v185 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v45 = v185 - v44;
  MEMORY[0x28223BE20](v43);
  v238 = v185 - v46;
  v246 = v47;
  v48 = sub_222C94B5C();
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8);
  v225 = v185 - v50;
  v248 = AssociatedConformanceWitness;
  v249 = v7;
  v243 = swift_getAssociatedTypeWitness();
  v237 = *(v243 - 8);
  v51 = *(v237 + 64);
  v52 = MEMORY[0x28223BE20](v243);
  v236 = v185 - v53;
  v54 = *(a2 - 1);
  v55 = *(v54 + 8);
  MEMORY[0x28223BE20](v52);
  v57 = v185 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = (*(v244 + 40))(a2);
  if (qword_280FDFE78 != -1)
  {
LABEL_65:
    swift_once();
  }

  v59 = sub_222C9431C();
  v60 = __swift_project_value_buffer(v59, qword_280FE2340);
  (*(v54 + 2))(v57, a1, a2);
  swift_bridgeObjectRetain_n();

  v200 = v60;
  v61 = sub_222C942FC();
  v62 = sub_222C94A3C();

  v63 = os_log_type_enabled(v61, v62);
  v235 = a1;
  v242 = v31;
  v197 = v45;
  v230 = v58;
  if (v63)
  {
    v64 = swift_slowAlloc();
    v240 = swift_slowAlloc();
    v255 = v240;
    *v64 = 136315650;
    v224 = v61;
    v65 = sub_222B9E7C4();
    v67 = sub_222B437C0(v65, v66, &v255);

    *(v64 + 4) = v67;
    *(v64 + 12) = 2048;
    v68 = *(swift_getAssociatedConformanceWitness() + 8);
    v69 = sub_222C943BC();

    *(v64 + 14) = v69;

    *(v64 + 22) = 2080;
    v70 = v244;
    v71 = *(v244 + 32);
    LODWORD(KeyPath) = v62;
    v72 = (v244 + 32) & 0xFFFFFFFFFFFFLL | 0xAE1A000000000000;
    v73 = v236;
    v71(a2, v244);
    v74 = sub_222C944EC();
    v76 = v75;
    (*(v54 + 1))(v57, a2);
    v77 = sub_222B437C0(v74, v76, &v255);

    *(v64 + 24) = v77;
    v78 = v224;
    _os_log_impl(&dword_222B39000, v224, KeyPath, "%s Reviewing %ld new signals for entity query %s", v64, 0x20u);
    v79 = v240;
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v79, -1, -1);
    MEMORY[0x223DCA8C0](v64, -1, -1);

    v80 = a2;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v54 + 1))(v57, a2);
    v70 = v244;
    v71 = *(v244 + 32);
    v72 = (v244 + 32) & 0xFFFFFFFFFFFFLL | 0xAE1A000000000000;
    v80 = a2;
    v73 = v236;
  }

  v81 = v243;
  v240 = v80;
  v71(v80, v70);
  v82 = sub_222BA0464(v73);
  (*(v237 + 8))(v73, v81);
  v243 = v82;
  v254 = v82;

  v83 = sub_222C942FC();
  v84 = sub_222C94A3C();

  v85 = os_log_type_enabled(v83, v84);
  v196 = v71;
  v195 = v72;
  if (v85)
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v255 = v87;
    *v86 = 136315394;
    v88 = sub_222B9E7C4();
    v90 = sub_222B437C0(v88, v89, &v255);

    *(v86 + 4) = v90;
    *(v86 + 12) = 2048;
    v91 = v249;
    v92 = v246;
    v93 = swift_getAssociatedConformanceWitness();
    v94 = *(v93 + 8);

    v95 = sub_222C943BC();

    *(v86 + 14) = v95;
    _os_log_impl(&dword_222B39000, v83, v84, "%s Found %ld existing candidates to update.", v86, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v87);
    MEMORY[0x223DCA8C0](v87, -1, -1);
    MEMORY[0x223DCA8C0](v86, -1, -1);
  }

  else
  {

    v91 = v249;
    v92 = v246;
    v96 = swift_getAssociatedConformanceWitness();
    v93 = v96;
  }

  a1 = v226;
  v31 = v238;
  v237 = *(v93 + 8);
  v97 = v230;
  v255 = v230;
  MEMORY[0x28223BE20](v96);
  v98 = v245;
  v185[-6] = v91;
  v185[-5] = v98;
  v99 = v91;
  v100 = v98;
  v101 = v240;
  v102 = v247;
  v185[-4] = v240;
  v185[-3] = v102;
  v103 = v244;
  v185[-2] = v244;
  KeyPath = swift_getKeyPath();
  v224 = v185;
  v104 = MEMORY[0x28223BE20](KeyPath);
  v185[-6] = v99;
  v185[-5] = v100;
  v185[-4] = v101;
  v185[-3] = v102;
  v185[-2] = v103;
  v185[-1] = v104;
  v45 = v242;
  v105 = v237;
  v106 = sub_222C943CC();

  WitnessTable = swift_getWitnessTable();
  v108 = v106;
  v58 = v105;
  v109 = v249;
  v111 = sub_222B80CD4(sub_222BA0E28, &v185[-8], v108, &type metadata for SuggestionSignal, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v110);

  v255 = v111;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025AB0, &qword_222C9A1E8);
  v113 = sub_222BA0EF0();
  v194 = sub_222BA0E54(&v255, v109, v245, v112, v247, v113);

  v255 = v97;
  sub_222C943AC();

  swift_getWitnessTable();
  sub_222C9498C();
  v255 = v243;
  sub_222C943AC();

  swift_getWitnessTable();
  v255 = sub_222C9498C();
  sub_222C9497C();
  swift_getWitnessTable();
  v114 = sub_222C9492C();
  v185[1] = v114;
  if ((v114 & 0xC000000000000001) != 0)
  {

    sub_222C94C5C();
    sub_222C9494C();
    v57 = v255;
    v116 = v256;
    v117 = v257;
    KeyPath = v258;
    v118 = v259;
  }

  else
  {
    v119 = -1 << *(v114 + 32);
    v116 = v114 + 56;
    v120 = ~v119;
    v121 = -v119;
    if (v121 < 64)
    {
      v122 = ~(-1 << v121);
    }

    else
    {
      v122 = -1;
    }

    v123 = v122 & *(v114 + 56);

    v118 = v123;
    v117 = v120;
    KeyPath = 0;
    v57 = v124;
  }

  a2 = v225;
  v224 = (v201 + 56);
  v185[0] = v117;
  v125 = (v117 + 64) >> 6;
  v247 = (v201 + 16);
  v211 = (v201 + 32);
  v210 = (v213 + 48);
  v193 = (v213 + 32);
  v192 = v239 - 8;
  v187 = (v227 + 1);
  v245 = (v214 + 48);
  v227 = (v231 + 8);
  v231 = v201 + 8;
  v191 = (v214 + 32);
  v190 = v248 + 112;
  v209 = v248 + 96;
  v208 = (v213 + 16);
  v207 = v248 + 120;
  v206 = (v214 + 16);
  v205 = (v214 + 56);
  v204 = (v214 + 8);
  v203 = (v223 + 8);
  v202 = (v213 + 8);
  *&v115 = 136315394;
  v186 = v115;
  v214 = v116;
  v213 = v57;
  v212 = v125;
  v54 = v242;
  while ((v57 & 0x8000000000000000) == 0)
  {
    if (!v118)
    {
      v137 = KeyPath;
      while (1)
      {
        v136 = v137 + 1;
        if (__OFADD__(v137, 1))
        {
          break;
        }

        if (v136 >= v125)
        {
          goto LABEL_62;
        }

        v118 = *(v116 + 8 * v136);
        ++v137;
        if (v118)
        {
          KeyPath = v136;
          goto LABEL_26;
        }
      }

      __break(1u);
      goto LABEL_65;
    }

    v136 = KeyPath;
LABEL_26:
    v243 = (v118 - 1) & v118;
    (*(v201 + 16))(a2, *(v57 + 48) + *(v201 + 72) * (__clz(__rbit64(v118)) | (v136 << 6)), v92);
LABEL_27:
    (v224->isa)(a2, 0, 1, v92);
    (*v211)(v31, a2, v92);
    sub_222C943EC();
    v138 = *v210;
    if ((*v210)(a1, 1, v54) == 1)
    {
      v139 = v198;
      (*(*(v239 - 8) + 56))(v198, 1, 1, v239);
      v140 = v139;
      v92 = v246;
      sub_222C390AC(v194, v140, v252);
      v141 = v54;
      v142 = v138(a1, 1, v54);
      v143 = v236;
      if (v142 != 1)
      {
        (*v187)(a1, v188);
      }
    }

    else
    {
      v141 = v54;
      (*v193)(v252, a1, v54);
      v143 = v236;
    }

    swift_beginAccess();
    v144 = v216;
    v145 = v249;
    sub_222C943EC();
    swift_endAccess();
    v146 = *v245;
    v147 = (*v245)(v144, 1, v145);
    v223 = *v227;
    (v223)(v144, v229);
    v172 = v147 == 1;
    v148 = v228;
    if (v172)
    {
      v149 = *v247;
      v150 = v197;
      (*v247)(v197, v31, v92);

      v151 = sub_222C942FC();
      v152 = sub_222C94A3C();
      v153 = v151;

      v199 = v152;
      if (os_log_type_enabled(v151, v152))
      {
        v154 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        v253 = v189;
        *v154 = v186;
        v155 = sub_222B9E7C4();
        v157 = sub_222B437C0(v155, v156, &v253);

        *(v154 + 4) = v157;
        *(v154 + 12) = 2080;
        v158 = v246;
        v149(v241, v150, v246);
        v159 = sub_222C944EC();
        v161 = v160;
        (*v231)(v150, v158);
        v162 = sub_222B437C0(v159, v161, &v253);
        v143 = v236;

        *(v154 + 14) = v162;
        _os_log_impl(&dword_222B39000, v153, v199, "%s Signal for new entity provided. Generating new candidate. Entity=%s", v154, 0x16u);
        v163 = v189;
        swift_arrayDestroy();
        MEMORY[0x223DCA8C0](v163, -1, -1);
        v164 = v154;
        v148 = v228;
        MEMORY[0x223DCA8C0](v164, -1, -1);

        v145 = v249;
        v141 = v242;
        v92 = v158;
        v31 = v238;
      }

      else
      {

        v92 = v246;
        (*v231)(v150, v246);
        v145 = v249;
        v141 = v242;
        v31 = v238;
        v143 = v236;
      }
    }

    sub_222C943EC();
    if (v146(v148, 1, v145) == 1)
    {
      v196(v240, v244);
      v165 = v241;
      (*v247)(v241, v31, v92);
      (*(v248 + 112))(v143, v165, v145);
      if (v146(v148, 1, v145) != 1)
      {
        (v223)(v148, v229);
      }
    }

    else
    {
      (*v191)(v251, v148, v145);
    }

    v166 = v250[4];
    v167 = (*(v248 + 96))(v145);
    v168 = v167;
    v169 = *v252;
    v170 = 0.0;
    if ((v169 - 3) <= 4)
    {
      v170 = dbl_222C9AD18[(v169 - 3)];
    }

    v171 = *(*(v166 + 16) + 16);
    if (v171)
    {
      v172 = v167 > 0.0 && v169 == 0;
      v173 = v172;
      v174 = fmax(-v167, -0.2);
      do
      {
        if (v173)
        {
          v175 = v174;
        }

        else
        {
          v175 = v170;
        }

        if ((v169 - 3) >= 6u)
        {
          v170 = v175;
        }

        --v171;
      }

      while (v171);
    }

    v176 = v168 + v170;
    v177 = *(v166 + 24);
    v178 = *(v177 + 16);
    if (v178)
    {
      v179 = (v177 + 32);
      do
      {
        v180 = v179[3];
        v181 = v179[4];
        __swift_project_boxed_opaque_existential_1(v179, v180);
        v182 = COERCE_DOUBLE((*(v181 + 8))(v169, v180, v181, v168, v176));
        if ((v183 & 1) == 0)
        {
          v176 = v182;
        }

        v179 += 5;
        --v178;
      }

      while (v178);
    }

    v126 = v215;
    (*v208)(v215, v252, v141);
    v127 = v220;
    sub_222B750F8(v126, v220, v168, v176, v170);
    v128 = v249;
    v45 = v218;
    (*(v248 + 120))(v127, v249);
    v129 = v219;
    (*(*v250 + 184))(v45, v169, v235, v240, v244);
    v130 = v246;
    v31 = v238;
    (*v247)(v241, v238, v246);
    v131 = v217;
    (*v206)(v217, v129, v128);
    (*v205)(v131, 0, 1, v128);
    swift_beginAccess();
    v58 = v237;
    sub_222C943DC();
    sub_222C943FC();
    swift_endAccess();
    v132 = *v204;
    (*v204)(v129, v128);
    v133 = v242;
    v132(v45, v128);
    v134 = v127;
    v92 = v130;
    (*v203)(v134, v221);
    v135 = v128;
    v54 = v133;
    v132(v251, v135);
    (*v202)(v252, v133);
    (*v231)(v31, v130);
    a1 = v226;
    a2 = v225;
    v116 = v214;
    v57 = v213;
    v118 = v243;
    v125 = v212;
  }

  v243 = v118;
  if (sub_222C94C8C())
  {
    sub_222C951EC();
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

LABEL_62:

  (v224->isa)(a2, 1, 1, v92);
  sub_222B504E8();
  swift_beginAccess();
  return v254;
}

uint64_t sub_222BA0464(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  (*(*(*v1 + 96) + 24))(a1, *(*v1 + 88), *(*v1 + 96));
  v4 = *(v2 + 80);
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v6 = sub_222C9477C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_222BA0B1C(v6, AssociatedTypeWitness, v4, *(AssociatedConformanceWitness + 8));

  sub_222C947FC();
  sub_222C943DC();
  swift_getWitnessTable();
  sub_222C9468C();

  return v9;
}

uint64_t sub_222BA0668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_222C94B5C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(AssociatedConformanceWitness + 88))(a3, AssociatedConformanceWitness);
  v12 = *(a3 - 8);
  (*(v12 + 16))(v8, a2, a3);
  (*(v12 + 56))(v8, 0, 1, a3);
  v13 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_222C943DC();
  return sub_222C943FC();
}

uint64_t sub_222BA08C8()
{
  sub_222B9E73C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_222BA0938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_222C9440C();

  return sub_222BA0994(a1, v9, a2, a3);
}

unint64_t sub_222BA0994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_222C9447C();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_222BA0B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_222C947BC())
  {
    sub_222C94F9C();
    v13 = sub_222C94F8C();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_222C947BC();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_222C9479C())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_222C94D7C();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_222BA0938(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_222BA0E08(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_222BA0668(a1, a2, v2[2]);
}

uint64_t sub_222BA0E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a6 + 8);
  if (sub_222C946AC())
  {
    return 0;
  }

  if (sub_222C946AC())
  {
    return 2;
  }

  return 1;
}

unint64_t sub_222BA0EF0()
{
  result = qword_27D025DB8;
  if (!qword_27D025DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D025AB0, &qword_222C9A1E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025DB8);
  }

  return result;
}

uint64_t sub_222BA0F54()
{
  type metadata accessor for SELFEventLogEmitters();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025DD0, qword_222C9AD88);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D025DC0 = 91;
  *algn_27D025DC8 = 0xE100000000000000;
  return result;
}

void sub_222BA0FF4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_222BA2120();
  if (v6)
  {
    v7 = v6;
    v8 = [objc_allocWithZone(MEMORY[0x277D59CB8]) init];
    if (v8)
    {
      v14 = v8;
      [v8 setGeneratedSuggestion:a1];
      [v14 setIsSuggestionUpdated:a3 & 1];
      [v7 setContactSuggestionGenerated_];
      v9 = v3[6];
      __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
      sub_222C93F1C();

      goto LABEL_11;
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v10 = sub_222C9431C();
  __swift_project_value_buffer(v10, qword_280FE2340);
  v14 = sub_222C942FC();
  v11 = sub_222C94A4C();
  if (os_log_type_enabled(v14, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315138;
    if (qword_27D0246D0 != -1)
    {
      swift_once();
    }

    *(v12 + 4) = sub_222B437C0(qword_27D025DC0, *algn_27D025DC8, &v15);
    _os_log_impl(&dword_222B39000, v14, v11, "%s Failed to create PLUS SELF event templates", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x223DCA8C0](v13, -1, -1);
    MEMORY[0x223DCA8C0](v12, -1, -1);
  }

LABEL_11:
}

void sub_222BA1210(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - v7;
  v9 = sub_222BA2120();
  if (v9)
  {
    v10 = v9;
    v11 = [objc_allocWithZone(MEMORY[0x277D59C68]) init];
    if (v11)
    {
      v12 = v11;
      [v11 setGroundTruth_];
      sub_222B5551C(a2, v8);
      v13 = sub_222C9367C();
      v14 = *(v13 - 8);
      if ((*(v14 + 48))(v8, 1, v13) == 1)
      {
        sub_222B86DA0(v8);
        v15 = 0;
      }

      else
      {
        v21 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v22 = sub_222C9361C();
        v15 = [v21 initWithNSUUID_];

        (*(v14 + 8))(v8, v13);
      }

      [v12 setOriginalPlusId_];

      [v10 setContactGroundTruthGenerated_];
      v23 = v2[6];
      __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
      sub_222C93F1C();

      return;
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v16 = sub_222C9431C();
  __swift_project_value_buffer(v16, qword_280FE2340);
  v24 = sub_222C942FC();
  v17 = sub_222C94A4C();
  if (os_log_type_enabled(v24, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136315138;
    if (qword_27D0246D0 != -1)
    {
      swift_once();
    }

    *(v18 + 4) = sub_222B437C0(qword_27D025DC0, *algn_27D025DC8, &v25);
    _os_log_impl(&dword_222B39000, v24, v17, "%s Failed to create SELF message templates", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x223DCA8C0](v19, -1, -1);
    MEMORY[0x223DCA8C0](v18, -1, -1);
  }

  else
  {
    v20 = v24;
  }
}

void sub_222BA1588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_222BA2120();
  if (v10)
  {
    v11 = v10;
    v12 = [objc_allocWithZone(MEMORY[0x277D59D30]) init];
    if (v12)
    {
      v13 = v12;
      sub_222B5551C(a3, v9);
      v14 = sub_222C9367C();
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(v9, 1, v14) == 1)
      {
        sub_222B86DA0(v9);
        v16 = 0;
      }

      else
      {
        v22 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v23 = sub_222C9361C();
        v16 = [v22 initWithNSUUID_];

        (*(v15 + 8))(v9, v14);
      }

      [v13 setOriginalRequestId_];

      [v13 setGroundTruth_];
      [v11 setMediaGroundTruthGenerated_];
      v24 = v3[6];
      __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
      sub_222C93F1C();

      return;
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v17 = sub_222C9431C();
  __swift_project_value_buffer(v17, qword_280FE2340);
  v25 = sub_222C942FC();
  v18 = sub_222C94A4C();
  if (os_log_type_enabled(v25, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v26 = v20;
    *v19 = 136315138;
    if (qword_27D0246D0 != -1)
    {
      swift_once();
    }

    *(v19 + 4) = sub_222B437C0(qword_27D025DC0, *algn_27D025DC8, &v26);
    _os_log_impl(&dword_222B39000, v25, v18, "%s Failed to create SELF message templates", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x223DCA8C0](v20, -1, -1);
    MEMORY[0x223DCA8C0](v19, -1, -1);
  }

  else
  {
    v21 = v25;
  }
}

void sub_222BA191C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v6 = sub_222BA2120();
  if (v6)
  {
    oslog = v6;
    [v6 *a3];
    v7 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
    sub_222C93F3C();
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v8 = sub_222C9431C();
    __swift_project_value_buffer(v8, qword_280FE2340);
    oslog = sub_222C942FC();
    v9 = sub_222C94A4C();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      if (qword_27D0246D0 != -1)
      {
        swift_once();
      }

      *(v10 + 4) = sub_222B437C0(qword_27D025DC0, *algn_27D025DC8, &v13);
      _os_log_impl(&dword_222B39000, oslog, v9, "%s Failed to create SELF message templates", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x223DCA8C0](v11, -1, -1);
      MEMORY[0x223DCA8C0](v10, -1, -1);
    }
  }
}

void sub_222BA1AF4(uint64_t a1, uint64_t a2, SEL *a3, const char *a4)
{
  v8 = sub_222BA2120();
  if (v8)
  {
    oslog = v8;
    [v8 *a3];
    v9 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
    sub_222C93F1C();
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v10 = sub_222C9431C();
    __swift_project_value_buffer(v10, qword_280FE2340);
    oslog = sub_222C942FC();
    v11 = sub_222C94A4C();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      if (qword_27D0246D0 != -1)
      {
        swift_once();
      }

      *(v12 + 4) = sub_222B437C0(qword_27D025DC0, *algn_27D025DC8, &v15);
      _os_log_impl(&dword_222B39000, oslog, v11, a4, v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x223DCA8C0](v13, -1, -1);
      MEMORY[0x223DCA8C0](v12, -1, -1);
    }
  }
}

void sub_222BA1CBC(uint64_t a1)
{
  v3 = sub_222BA2120();
  if (v3)
  {
    v4 = v3;
    v5 = [objc_allocWithZone(MEMORY[0x277D59E20]) init];
    if (v5)
    {
      oslog = v5;
      [v5 setUsoGraphTier1:a1];
      [v4 setUsoGraphTier1_];
      v6 = v1[6];
      __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
      sub_222C93F3C();

      goto LABEL_11;
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v7 = sub_222C9431C();
  __swift_project_value_buffer(v7, qword_280FE2340);
  oslog = sub_222C942FC();
  v8 = sub_222C94A4C();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    if (qword_27D0246D0 != -1)
    {
      swift_once();
    }

    *(v9 + 4) = sub_222B437C0(qword_27D025DC0, *algn_27D025DC8, &v12);
    _os_log_impl(&dword_222B39000, oslog, v8, "%s Failed to create SELF message templates for USOGraphTier1", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x223DCA8C0](v10, -1, -1);
    MEMORY[0x223DCA8C0](v9, -1, -1);
  }

LABEL_11:
}

void sub_222BA1ED4(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4, const char *a5)
{
  v9 = sub_222BA2120();
  if (v9)
  {
    oslog = v9;
    [v9 *a4];
    v10 = v5[6];
    __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
    sub_222C93F2C();
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v11 = sub_222C9431C();
    __swift_project_value_buffer(v11, qword_280FE2340);
    oslog = sub_222C942FC();
    v12 = sub_222C94A4C();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      if (qword_27D0246D0 != -1)
      {
        swift_once();
      }

      *(v13 + 4) = sub_222B437C0(qword_27D025DC0, *algn_27D025DC8, &v16);
      _os_log_impl(&dword_222B39000, oslog, v12, a5, v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x223DCA8C0](v14, -1, -1);
      MEMORY[0x223DCA8C0](v13, -1, -1);
    }
  }
}

uint64_t sub_222BA20C4()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

void *sub_222BA2120()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D59C50]) init];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D59C58]) init];
  if (v2)
  {
    v3 = v2;
    v4 = v1;
    v5 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v6 = sub_222C9361C();
    v7 = [v5 initWithNSUUID_];

    [v3 setPlusId_];
    [v1 setEventMetadata_];
    v1 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t CommonFeature.UniqueIdentifier.init(value:)()
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t CommonFeature.DonatedBySiri.__allocating_init(value:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t CommonFeature.DonatedBySiri.init(value:)()
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t CommonFeature.DonatedBySiri.__deallocating_deinit()
{
  _s28SiriPrivateLearningInference13CommonFeatureO09DonatedByA0Cfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_222BA23CC(char *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for CommonFeature.DonatedBySiri(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222BA2418(char *a1)
{
  v1 = *a1;
  v2 = type metadata accessor for CommonFeature.DonatedBySiri(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t _s28SiriPrivateLearningInference21PhoneCallEventFeatureV0F12EndTimestampC5valueAESd_tcfC_0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t CommonFeature.EndTimestamp.init(value:)()
{
  return sub_222C93EEC();
}

{
  return sub_222C93EDC();
}

uint64_t sub_222BA255C(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = a2(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222BA25CC(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a2(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t CommonFeature.OrderingTimestamp.__allocating_init(value:)(uint64_t a1)
{
  v3 = sub_222C935EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  swift_allocObject();
  (*(v4 + 16))(v7, a1, v3);
  v10 = sub_222C93EEC();
  (*(v4 + 8))(a1, v3);
  return v10;
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = *(v1 + 48);
  v8 = *(v1 + 52);
  swift_allocObject();
  sub_222B81ED0(a1, v6);
  v9 = sub_222C93EDC();

  sub_222BA2994(a1);
  if (v9)
  {
  }

  return v9;
}

uint64_t CommonFeature.OrderingTimestamp.init(value:)(uint64_t a1)
{
  v2 = sub_222C935EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = sub_222C93EEC();
  (*(v3 + 8))(a1, v2);
  return v6;
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_222B81ED0(a1, &v7 - v4);
  v5 = sub_222C93EDC();

  sub_222BA2994(a1);
  if (v5)
  {
  }

  return v5;
}

uint64_t sub_222BA2994(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222BA2A14(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t sub_222BA2A84(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t _s28SiriPrivateLearningInference13CommonFeatureO16UniqueIdentifierC5valueAESS_tcfC_0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t _s28SiriPrivateLearningInference13CommonFeatureO16UniqueIdentifierC5valueAESgSSSg_tcfC_0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t _s28SiriPrivateLearningInference29PlusRuntimeContactSuggestionsC5valueACSayAA0eg10SuggestionF7SummaryVG_tcfC_0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t _s28SiriPrivateLearningInference13CommonFeatureO12EndTimestampC5valueAESgSdSg_tcfC_0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_222C93EDC();
}

uint64_t sub_222BA2CCC(uint64_t *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = a2(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_222C93EEC();
}

uint64_t CommonFeature.StartTimestamp.__allocating_init(value:)(uint64_t a1)
{
  return sub_222BA2D9C(a1, type metadata accessor for CommonFeature.StartTimestamp);
}

{
  return sub_222BA2F44(a1, type metadata accessor for CommonFeature.StartTimestamp);
}

uint64_t CommonFeature.EndTimestamp.__allocating_init(value:)(uint64_t a1)
{
  return sub_222BA2D9C(a1, type metadata accessor for CommonFeature.EndTimestamp);
}

{
  return sub_222BA2F44(a1, type metadata accessor for CommonFeature.EndTimestamp);
}

uint64_t sub_222BA2D9C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  sub_222B81ED0(a1, &v18 - v6);
  v8 = sub_222C935EC();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v7, 1, v8);
  if (v10 == 1)
  {
    sub_222BA2994(v7);
    v11 = 0;
  }

  else
  {
    sub_222C935BC();
    v11 = v12;
    (*(v9 + 8))(v7, v8);
  }

  v13 = a2(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v18 = v11;
  v19 = v10 == 1;
  v16 = sub_222C93EDC();
  sub_222BA2994(a1);
  return v16;
}

uint64_t sub_222BA2F44(uint64_t a1, uint64_t (*a2)(void))
{
  sub_222C935BC();
  v4 = a2(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_222C93EEC();
  v8 = sub_222C935EC();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

unint64_t UserFeedbackLearningInferenceFeature.rawValue.getter()
{
  v1 = 0xD000000000000011;
  v2 = *v0;
  v3 = 0xD000000000000016;
  v4 = 0xD00000000000001BLL;
  if (v2 != 4)
  {
    v4 = 0xD00000000000001DLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000017;
  if (v2 != 2)
  {
    v5 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000001DLL;
  }

  if (*v0 > 1u)
  {
    v1 = v5;
  }

  if (*v0 <= 3u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

SiriPrivateLearningInference::UserFeedbackLearningInferenceFeature_optional __swiftcall UserFeedbackLearningInferenceFeature.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222C94FDC();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_222BA33D4@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000011;
  v3 = *v1;
  v4 = "actions";
  v5 = "pimsPhantomTurnRemovalEnabled";
  v6 = 0xD000000000000016;
  if (v3 != 6)
  {
    v5 = "adaptivePICSGeneration";
  }

  v7 = "pimsInAppFollowup";
  v8 = 0xD00000000000001BLL;
  result = 0xD00000000000001DLL;
  if (v3 != 4)
  {
    v8 = 0xD00000000000001DLL;
    v7 = "pimsWakeWordTrimmingEnabled";
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = "pimsShadowLogging";
  v11 = 0xD000000000000017;
  if (v3 != 2)
  {
    v11 = 0xD000000000000011;
    v10 = "pimsSuggestionSurfacing";
  }

  if (*v1)
  {
    v4 = "partialRepetitionsInPhoneCall";
  }

  else
  {
    v2 = 0xD00000000000001DLL;
  }

  if (*v1 > 1u)
  {
    v2 = v11;
    v4 = v10;
  }

  if (*v1 <= 3u)
  {
    v12 = v4;
  }

  else
  {
    v2 = v6;
    v12 = v5;
  }

  *a1 = v2;
  a1[1] = v12 | 0x8000000000000000;
  return result;
}

void *UserFeedbackLearningInferenceFeatureResolver.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = type metadata accessor for InferenceFeatures.InferenceFeatureManager();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = InferenceFeatures.InferenceFeatureManager.init()();
  v5 = MEMORY[0x277D5FB30];
  v0[5] = v1;
  v0[6] = v5;
  v0[2] = v4;
  return v0;
}

void *UserFeedbackLearningInferenceFeatureResolver.init()()
{
  v1 = type metadata accessor for InferenceFeatures.InferenceFeatureManager();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = InferenceFeatures.InferenceFeatureManager.init()();
  v5 = MEMORY[0x277D5FB30];
  v0[5] = v1;
  v0[6] = v5;
  v0[2] = v4;
  return v0;
}

uint64_t sub_222BA358C(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_222C942CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  sub_222C93DEC();
  v13 = v9;
  LOBYTE(v2) = sub_222BA3910(&v13);
  (*(v5 + 8))(v8, v4);
  return v2 & 1;
}

uint64_t sub_222BA36A4(_BYTE *a1)
{
  v2 = sub_222C942CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  LOBYTE(a1) = *a1;

  sub_222C942AC();
  v10[0] = a1;
  v7 = sub_222BA3910(v10);
  (*(v3 + 8))(v6, v2);
  return v7 & 1;
}

uint64_t sub_222BA3910(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  if (v2 > 3)
  {
    if (v2 > 5)
    {
      if (v2 == 6)
      {
        if (qword_27D024690 != -1)
        {
          swift_once();
        }

        v4 = qword_27D025A30;
      }

      else
      {
        if (qword_280FDFFB8 != -1)
        {
          swift_once();
        }

        v4 = qword_280FDFFC0;
      }
    }

    else if (v2 == 4)
    {
      if (qword_280FDFF70 != -1)
      {
        swift_once();
      }

      v4 = qword_280FDFF78;
    }

    else
    {
      if (qword_280FDFF48 != -1)
      {
        swift_once();
      }

      v4 = qword_280FDFF50;
    }
  }

  else if (v2 > 1)
  {
    if (v2 == 2)
    {
      if (qword_280FDFF88 != -1)
      {
        swift_once();
      }

      v4 = qword_280FDFF90;
    }

    else
    {
      if (qword_280FDFFA0 != -1)
      {
        swift_once();
      }

      v4 = qword_280FDFFA8;
    }
  }

  else if (v2)
  {
    if (qword_280FE0370 != -1)
    {
      swift_once();
    }

    v4 = qword_280FE0378;
  }

  else
  {
    if (qword_280FDFF58 != -1)
    {
      swift_once();
    }

    v4 = qword_280FDFF60;
  }

  v7[3] = sub_222C93BCC();
  v7[4] = MEMORY[0x277D5FAF8];
  v7[0] = v4;

  v5 = sub_222C93DFC();
  __swift_destroy_boxed_opaque_existential_0Tm(v7);
  return v5 & 1;
}

uint64_t UserFeedbackLearningInferenceFeatureResolver.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_222BA3C14()
{
  result = qword_27D025E68;
  if (!qword_27D025E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025E68);
  }

  return result;
}

unint64_t sub_222BA3C6C()
{
  result = qword_27D025E70;
  if (!qword_27D025E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D025E78, &qword_222C9AF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D025E70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaSuggestionTag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaSuggestionTag(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_222BA3EEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4A30](a1, WitnessTable);
}

uint64_t sub_222BA3F40(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4A38](a1, a2, WitnessTable);
}

char *sub_222BA3FA8(void *a1)
{
  v1 = [a1 recipients];
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = v1;
  sub_222BA4428();
  v4 = sub_222C9471C();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_21:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026360, &unk_222C9DA10);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_222C96900;
    v28 = type metadata accessor for CommonFeature.EventType(0);
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    v31 = sub_222C93EEC();
    *(v2 + 56) = v28;
    *(v2 + 64) = sub_222BA4474(&qword_27D026370, 255, type metadata accessor for CommonFeature.EventType);
    *(v2 + 32) = v31;
    v32 = type metadata accessor for CommonContactFeature.RecipientContactReferences();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    v35 = sub_222C93EEC();
    *(v2 + 96) = v32;
    *(v2 + 104) = sub_222BA4474(&qword_27D025E88, 255, type metadata accessor for CommonContactFeature.RecipientContactReferences);
    *(v2 + 72) = v35;
    return v2;
  }

  v5 = sub_222C94C6C();
  if (!v5)
  {
    goto LABEL_21;
  }

LABEL_4:
  v40 = v2;
  result = sub_222B4C988(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v4;
    v36 = v4 & 0xC000000000000001;
    v37 = v5;
    v38 = v4;
    do
    {
      if (v36)
      {
        v9 = MEMORY[0x223DC9B30](v7, v8);
      }

      else
      {
        v9 = *(v8 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = [v9 displayName];
      v12 = sub_222C9449C();
      v39 = v13;

      v14 = [v10 contactIdentifier];
      if (v14)
      {
        v15 = v14;
        v16 = sub_222C9449C();
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      v19 = [v10 personHandle];
      if (v19 && (v20 = v19, v21 = [v19 label], v20, v21))
      {
        v22 = sub_222C9449C();
        v24 = v23;
      }

      else
      {

        v22 = 0;
        v24 = 0;
      }

      v26 = *(v40 + 16);
      v25 = *(v40 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_222B4C988((v25 > 1), v26 + 1, 1);
      }

      ++v7;
      *(v40 + 16) = v26 + 1;
      v27 = (v40 + 48 * v26);
      v8 = v38;
      v27[4] = v12;
      v27[5] = v39;
      v27[6] = v16;
      v27[7] = v18;
      v27[8] = v22;
      v27[9] = v24;
    }

    while (v37 != v7);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

unint64_t sub_222BA4428()
{
  result = qword_27D025E80;
  if (!qword_27D025E80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D025E80);
  }

  return result;
}

uint64_t sub_222BA4474(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_222BA44BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlusMediaSuggestion();
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v11 = *(v6 + 72);
    v29 = a1;
    do
    {
      sub_222B79B14(v10, v8);
      if ((sub_222C9362C() & 1) == 0)
      {
        goto LABEL_17;
      }

      v12 = v4[5];
      v13 = *(a1 + v12);
      sub_222C0A220(*&v8[v12], &v60);
      sub_222C0A220(v13, &v65);
      v14 = v60;
      if (*(&v60 + 1) == 1)
      {
        if (*(&v65 + 1) != 1)
        {
          goto LABEL_8;
        }

        *&v50 = v60;
        *(&v50 + 1) = 1;
        v51 = v61;
        v52 = v62;
        v53 = v63;
        v54 = v64;
        sub_222B4FCD4(&v50, &qword_27D0256C8, &unk_222C98AB0);
      }

      else
      {
        if (*(&v65 + 1) == 1)
        {
LABEL_8:
          v50 = v60;
          v51 = v61;
          v52 = v62;
          v53 = v63;
          v54 = v64;
          v55 = v65;
          v56 = v66;
          v57 = v67;
          v58 = v68;
          v59 = v69;
          sub_222B4FCD4(&v50, &qword_27D0256D0, &unk_222C9A490);
LABEL_17:
          sub_222B7D9D0(v8);
          goto LABEL_18;
        }

        v30 = v65;
        v31 = v66;
        v32 = v67;
        v33 = v68;
        v34 = v69;
        v71[3] = v68;
        v71[4] = v69;
        v71[1] = v66;
        v71[2] = v67;
        v71[0] = v65;
        v70[3] = v63;
        v70[4] = v64;
        v70[1] = v61;
        v70[2] = v62;
        v70[0] = v60;
        v15 = sub_222BEF230(v70, v71);
        sub_222B4FCD4(&v30, &qword_27D0256C8, &unk_222C98AB0);
        v50 = v14;
        v51 = v61;
        v52 = v62;
        a1 = v29;
        v53 = v63;
        v54 = v64;
        sub_222B4FCD4(&v50, &qword_27D0256C8, &unk_222C98AB0);
        if ((v15 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v16 = &v8[v4[6]];
      v17 = *(v16 + 1);
      v44[0] = *v16;
      v44[1] = v17;
      v19 = *v16;
      v18 = *(v16 + 1);
      v44[2] = *(v16 + 2);
      v45 = *(v16 + 24);
      v20 = *(v16 + 2);
      v41 = v18;
      v42 = v20;
      v43 = *(v16 + 24);
      v40 = v19;
      v21 = (a1 + v4[6]);
      v22 = v21[2];
      v23 = *v21;
      v24 = *v21;
      v47 = v21[1];
      v48 = v22;
      v46 = v23;
      v49 = *(v21 + 24);
      v36 = v24;
      v37 = v47;
      v38 = v21[2];
      v39 = *(v21 + 24);
      sub_222B554C0(v44, v35);
      sub_222B554C0(&v46, v35);
      v25 = _s28SiriPrivateLearningInference14MediaReferenceV2eeoiySbAC_ACtFZ_0(&v40, &v36);
      v30 = v36;
      v31 = v37;
      v32 = v38;
      LOWORD(v33) = v39;
      sub_222B55A80(&v30);
      v50 = v40;
      v51 = v41;
      v52 = v42;
      LOWORD(v53) = v43;
      sub_222B55A80(&v50);
      if (!v25 || (sub_222BBD800(*&v8[v4[7]], *(a1 + v4[7])) & 1) == 0 || *&v8[v4[8]] != *(a1 + v4[8]) || (sub_222BBDAA0(*&v8[v4[9]], *(a1 + v4[9])) & 1) == 0 || *&v8[v4[10]] != *(a1 + v4[10]))
      {
        goto LABEL_17;
      }

      v26 = sub_222C17D8C(*&v8[v4[11]], *(a1 + v4[11]));
      sub_222B7D9D0(v8);
      if (v26)
      {
        return 1;
      }

LABEL_18:
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  return 0;
}

uint64_t sub_222BA48C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_222BA4930(a1, a2, a3, a4);
  return v8;
}

void *sub_222BA4930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AdaptiveMediaSuggestionNominator();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025E90, qword_222C9B200);
  v9 = sub_222C944EC();
  MEMORY[0x223DC9330](v9);

  MEMORY[0x223DC9330](93, 0xE100000000000000);
  v4[2] = 91;
  v4[3] = 0xE100000000000000;
  v4[8] = a3;
  v4[9] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4 + 5);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v4[4] = a2;
  return v4;
}

uint64_t AdaptiveMediaSuggestionNominator.__allocating_init<A>(candidateProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, a2);
  type metadata accessor for MediaSuggestionCandidateNominator();
  swift_allocObject();
  v10 = sub_222C13354();
  v11 = swift_allocObject();
  sub_222BA4930(v9, v10, a2, a3);
  (*(v6 + 8))(a1, a2);
  return v11;
}

void *sub_222BA4B60(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  swift_retain_n();
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x223DC9B30](v3, a1);
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_25:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
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
          v2 = sub_222C94C6C();
          goto LABEL_3;
        }

        v5 = *(a1 + 8 * v3 + 32);

        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_25;
        }
      }

      v7 = sub_222BA4D7C(v5);

      v8 = *(v7 + 16);
      v9 = v4[2];
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
        goto LABEL_29;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v10 <= v4[3] >> 1)
      {
        if (!*(v7 + 16))
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v12 = v9 + v8;
        }

        else
        {
          v12 = v9;
        }

        v4 = sub_222B4B04C(isUniquelyReferenced_nonNull_native, v12, 1, v4);
        if (!*(v7 + 16))
        {
LABEL_5:

          if (v8)
          {
            goto LABEL_30;
          }

          goto LABEL_6;
        }
      }

      v13 = (v4[3] >> 1) - v4[2];
      v14 = *(type metadata accessor for PlusMediaSuggestion() - 8);
      if (v13 < v8)
      {
        goto LABEL_31;
      }

      v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v16 = *(v14 + 72);
      swift_arrayInitWithCopy();

      if (v8)
      {
        v17 = v4[2];
        v18 = __OFADD__(v17, v8);
        v19 = v17 + v8;
        if (v18)
        {
          goto LABEL_32;
        }

        v4[2] = v19;
      }

LABEL_6:
      ++v3;
      if (v6 == v2)
      {
        goto LABEL_27;
      }
    }
  }

  v4 = MEMORY[0x277D84F90];
LABEL_27:

  return v4;
}

uint64_t sub_222BA4D7C(unint64_t a1)
{
  v2 = v1;
  v67 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025D28, &unk_222C9AC30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v65 = v60 - v6;
  v69 = type metadata accessor for PlusMediaSuggestion();
  v70 = *(v69 - 8);
  v7 = *(v70 + 64);
  v8 = MEMORY[0x28223BE20](v69);
  v63 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v68 = v60 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v66 = v60 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v64 = v60 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = v60 - v16;
  v18 = v1[8];
  v19 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v18);
  v81[0] = a1;
  v20 = (*(v19 + 24))(v81, v18, v19);
  v21 = v1[4];
  v72 = sub_222C0BFAC(v20);
  sub_222C0A220(a1, &v75);
  if (qword_280FDFE78 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v22 = sub_222C9431C();
    __swift_project_value_buffer(v22, qword_280FE2340);

    sub_222B4FC6C(&v75, v81, &qword_27D0256C8, &unk_222C98AB0);
    v23 = sub_222C942FC();
    v24 = sub_222C94A3C();

    sub_222B4FCD4(&v75, &qword_27D0256C8, &unk_222C98AB0);
    v25 = os_log_type_enabled(v23, v24);
    v62 = a1;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v73[0] = v27;
      *v26 = 136315394;
      *(v26 + 4) = sub_222B437C0(*(v2 + 16), *(v2 + 24), v73);
      *(v26 + 12) = 2080;
      if (v76 == 1)
      {
        v28 = 0xE700000000000000;
        v29 = 0x3E726F7272453CLL;
      }

      else
      {
        v81[0] = v75;
        v81[1] = v76;
        v82 = v77;
        v83 = v78;
        v84 = v79;
        v85 = v80;
        v29 = sub_222BED214();
        v28 = v30;
        sub_222B4FCD4(&v75, &qword_27D0256C8, &unk_222C98AB0);
      }

      v31 = sub_222B437C0(v29, v28, v73);

      *(v26 + 14) = v31;
      _os_log_impl(&dword_222B39000, v23, v24, "%s Updating nomination status for candidates with query=%s:", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v27, -1, -1);
      MEMORY[0x223DCA8C0](v26, -1, -1);
    }

    else
    {

      sub_222B4FCD4(&v75, &qword_27D0256C8, &unk_222C98AB0);
    }

    v32 = v65;
    v61 = v2;
    v33 = *(v20 + 16);
    if (v33)
    {
      v2 = 0;
      v34 = (v70 + 48);
      v71 = MEMORY[0x277D84F90];
      while (v2 < *(v20 + 16))
      {
        v35 = (*(v70 + 80) + 32) & ~*(v70 + 80);
        v36 = *(v70 + 72);
        sub_222B79B14(v20 + v35 + v36 * v2, v17);
        sub_222BA5794(v17, v72, v32);
        sub_222B7D9D0(v17);
        if ((*v34)(v32, 1, v69) == 1)
        {
          sub_222B4FCD4(v32, &qword_27D025D28, &unk_222C9AC30);
        }

        else
        {
          a1 = v20;
          v37 = v32;
          v38 = v64;
          sub_222B7D960(v37, v64);
          sub_222B7D960(v38, v66);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v71 = sub_222B4B04C(0, v71[2] + 1, 1, v71);
          }

          v40 = v71[2];
          v39 = v71[3];
          if (v40 >= v39 >> 1)
          {
            v71 = sub_222B4B04C(v39 > 1, v40 + 1, 1, v71);
          }

          v41 = v71;
          v71[2] = v40 + 1;
          sub_222B7D960(v66, v41 + v35 + v40 * v36);
          v32 = v65;
        }

        if (v33 == ++v2)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    v71 = MEMORY[0x277D84F90];
LABEL_20:
    v60[1] = 0;

    v20 = v61[8];
    v42 = v61[9];
    __swift_project_boxed_opaque_existential_1(v61 + 5, v20);
    v73[0] = v62;
    v43 = v71;
    (*(v42 + 32))(v73, v71, v20, v42);
    v67 = v43[2];
    if (!v67)
    {
      break;
    }

    a1 = 0;
    v72 = 0x8000000222CA9400;
    v2 = 0x8000000222CA93E0;
    v17 = 0x8000000222CA93C0;
    v64 = MEMORY[0x277D84F90];
    while (a1 < v43[2])
    {
      v44 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v45 = v43 + v44;
      v46 = *(v70 + 72);
      v47 = v68;
      sub_222B79B14(&v45[v46 * a1], v68);
      v48 = *(v47 + *(v69 + 44));
      if (!*(v48 + 16))
      {
        goto LABEL_22;
      }

      v66 = v44;
      v49 = *(v48 + 40);
      sub_222C952FC();
      sub_222C9452C();
      v50 = sub_222C9534C();
      v20 = v48 + 56;
      v51 = -1 << *(v48 + 32);
      v52 = v50 & ~v51;
      if ((*(v48 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52))
      {
        v65 = v46;
        v53 = ~v51;
        while (*(*(v48 + 48) + v52) > 3u || *(*(v48 + 48) + v52) <= 1u || *(*(v48 + 48) + v52) == 3)
        {
          v54 = sub_222C951FC();

          if (v54)
          {
            goto LABEL_35;
          }

          v52 = (v52 + 1) & v53;
          if (((*(v20 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

LABEL_35:
        sub_222B7D960(v68, v63);
        v55 = v64;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v74 = v55;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C630(0, *(v55 + 16) + 1, 1);
          v55 = v74;
        }

        v43 = v71;
        v58 = *(v55 + 16);
        v57 = *(v55 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_222B4C630(v57 > 1, v58 + 1, 1);
          v55 = v74;
        }

        *(v55 + 16) = v58 + 1;
        v64 = v55;
        sub_222B7D960(v63, v55 + v66 + v58 * v65);
      }

      else
      {
LABEL_22:
        sub_222B7D9D0(v68);
        v43 = v71;
      }

      if (++a1 == v67)
      {
        goto LABEL_41;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
  }

  v64 = MEMORY[0x277D84F90];
LABEL_41:

  return v64;
}

uint64_t sub_222BA5794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025D28, &unk_222C9AC30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  v10 = sub_222BA44BC(a1, a2);
  sub_222BA5918(v10 & 1, a1, v9);
  v11 = type metadata accessor for PlusMediaSuggestion();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) == 1)
  {
    sub_222B79B14(a1, a3);
    if (v13(v9, 1, v11) != 1)
    {
      sub_222B4FCD4(v9, &qword_27D025D28, &unk_222C9AC30);
    }
  }

  else
  {
    sub_222B7D960(v9, a3);
  }

  return (*(v12 + 56))(a3, 0, 1, v11);
}

uint64_t sub_222BA5918@<X0>(char a1@<W0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v91 = a3;
  v5 = sub_222C9367C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v80 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v85 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v80 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v89 = &v80 - v21;
  MEMORY[0x28223BE20](v20);
  v90 = &v80 - v22;
  v23 = type metadata accessor for PlusMediaSuggestion();
  v24 = v23;
  v25 = *(a2 + *(v23 + 44));
  if (!*(v25 + 16))
  {
    if (a1)
    {
LABEL_14:
      v33 = v90;
      (*(v6 + 56))(v90, 1, 1, v5);

      v92 = sub_222C701E4(&unk_283607B08, v25);
      v34 = v33;
      v35 = v89;
      sub_222B4FC6C(v34, v89, &unk_27D026290, &qword_222C96B40);
      v36 = *(v6 + 48);
      if (v36(v35, 1, v5) == 1)
      {
        v37 = *(v6 + 16);
        v84 = v12;
        v37();
        if (v36(v35, 1, v5) != 1)
        {
          sub_222B4FCD4(v35, &unk_27D026290, &qword_222C96B40);
        }

        v38 = v84;
      }

      else
      {
        (*(v6 + 32))(v12, v35, v5);
        v38 = v12;
        v37 = *(v6 + 16);
      }

      v39 = v24[5];
      v40 = (a2 + v24[6]);
      v97 = *(v40 + 24);
      v41 = v40[2];
      v95 = v40[1];
      v96 = v41;
      v94 = *v40;
      v42 = *(a2 + v24[10]);
      v43 = *(a2 + v24[8]);
      v44 = *(a2 + v39);
      v45 = *(a2 + v24[7]);
      v46 = *(a2 + v24[9]);
      v47 = v91;
      v48 = v38;
      (v37)(v91, v38, v5);
      *&v47[v24[5]] = v44;
      v49 = &v47[v24[6]];
      v50 = v95;
      *v49 = v94;
      *(v49 + 1) = v50;
      *(v49 + 2) = v96;
      *(v49 + 24) = v97;
      swift_retain_n();
      sub_222B554C0(&v94, v93);

      *&v47[v24[7]] = sub_222C16F98(20, v45);
      *&v47[v24[10]] = v42;
      *&v47[v24[11]] = v92;
      *&v47[v24[8]] = v43;
      v51 = sub_222C17258(0x14uLL, v46);

      (*(v6 + 8))(v48, v5);
      sub_222B4FCD4(v90, &unk_27D026290, &qword_222C96B40);
      *&v47[v24[9]] = v51;
      return (*(*(v24 - 1) + 56))(v47, 0, 1, v24);
    }

LABEL_22:
    v56 = *(*(v24 - 1) + 56);
    v57 = v91;

    return v56(v57, 1, 1, v24);
  }

  v86 = v23;
  v87 = v6;
  v88 = v5;
  v26 = *(v25 + 40);
  sub_222C952FC();
  sub_222C9452C();
  v27 = sub_222C9534C();
  v28 = -1 << *(v25 + 32);
  v29 = v27 & ~v28;
  if (((*(v25 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
  {
    v5 = v88;
    v6 = v87;
    v24 = v86;
    if (a1)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  v82 = v19;
  v84 = v12;
  v81 = v10;
  v83 = a2;
  v30 = ~v28;
  v92 = 0x8000000222CA9400;
  v31 = a1;
  while (*(*(v25 + 48) + v29) > 3u || *(*(v25 + 48) + v29) <= 1u || *(*(v25 + 48) + v29) == 3)
  {
    v32 = sub_222C951FC();

    v31 = a1;
    if (v32)
    {
      goto LABEL_21;
    }

    v29 = (v29 + 1) & v30;
    if (((*(v25 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
    {
      v5 = v88;
      v6 = v87;
      v24 = v86;
      a2 = v83;
      v12 = v84;
      if (a1)
      {
        goto LABEL_14;
      }

      goto LABEL_22;
    }
  }

LABEL_21:
  v53 = v88;
  v54 = v87;
  v24 = v86;
  v55 = v83;
  if (v31)
  {
    goto LABEL_22;
  }

  v58 = v82;
  (*(v87 + 56))(v82, 1, 1, v88);

  v59 = sub_222C110F0(&unk_283607B30, v25);
  v92 = sub_222C701E4(&unk_283607B58, v59);
  v60 = v58;
  v61 = v85;
  sub_222B4FC6C(v60, v85, &unk_27D026290, &qword_222C96B40);
  v62 = *(v54 + 48);
  if (v62(v61, 1, v53) == 1)
  {
    v63 = *(v54 + 16);
    v63(v81, v55, v53);
    v64 = v62(v61, 1, v53);
    v65 = v91;
    if (v64 != 1)
    {
      sub_222B4FCD4(v61, &unk_27D026290, &qword_222C96B40);
    }

    v66 = v81;
  }

  else
  {
    v67 = v61;
    v66 = v81;
    (*(v54 + 32))(v81, v67, v53);
    v63 = *(v54 + 16);
    v65 = v91;
  }

  v68 = v24[5];
  v69 = (v55 + v24[6]);
  v97 = *(v69 + 24);
  v70 = v69[2];
  v95 = v69[1];
  v96 = v70;
  v94 = *v69;
  v71 = *(v55 + v24[10]);
  v72 = *(v55 + v24[8]);
  v73 = *(v55 + v68);
  v74 = v55;
  v75 = *(v55 + v24[7]);
  v76 = *(v74 + v24[9]);
  v63(v65, v66, v53);
  *&v65[v24[5]] = v73;
  v77 = &v65[v24[6]];
  v78 = v95;
  *v77 = v94;
  *(v77 + 1) = v78;
  *(v77 + 2) = v96;
  *(v77 + 24) = v97;
  swift_retain_n();
  sub_222B554C0(&v94, v93);

  *&v65[v24[7]] = sub_222C16F98(20, v75);
  *&v65[v24[10]] = v71;
  *&v65[v24[11]] = v92;
  *&v65[v24[8]] = v72;
  v79 = sub_222C17258(0x14uLL, v76);

  (*(v54 + 8))(v66, v53);
  sub_222B4FCD4(v82, &unk_27D026290, &qword_222C96B40);
  *&v65[v24[9]] = v79;
  return (*(*(v24 - 1) + 56))(v65, 0, 1, v24);
}

void *AdaptiveMediaSuggestionNominator.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 5);
  return v0;
}

uint64_t AdaptiveMediaSuggestionNominator.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 5);

  return swift_deallocClassInstance();
}

uint64_t sub_222BA6434(uint64_t a1, void (*a2)(uint64_t *, __int128 *))
{
  v4 = a1;
  v10 = a1;
  sub_222C94E9C();
  sub_222C94FBC();
  v5 = v8;
  if (v8)
  {
    v6 = v9;
    while (1)
    {
      v8 = v5;
      v9 = v6;
      a2(&v10, &v8);
      swift_unknownObjectRelease();
      if (v2)
      {
        break;
      }

      sub_222C94FBC();
      v5 = v8;
      v6 = v9;
      if (!v8)
      {
        v4 = v10;
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
  }

  return v4;
}

uint64_t sub_222BA6518(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(sub_222C9367C() - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

uint64_t sub_222BA65FC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v6 = a4 + 32;
  v7 = *(a4 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 40;
    a2(&v10);
    v6 = v8;
    if (v4)
    {
    }
  }

  return v10;
}

uint64_t sub_222BA6678()
{
  type metadata accessor for PlusClientEventFeatureExtractor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025F30, &qword_222C9B780);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D025E98 = 91;
  unk_27D025EA0 = 0xE100000000000000;
  return result;
}

uint64_t PlusClientEventFeatureExtractor.__allocating_init(_:)(uint64_t *a1)
{
  v2 = type metadata accessor for PlusContactSuggestion();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_222C9367C();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v30);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 16))(v34, v11, v12);
  v13 = v35;
  v14 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  v15 = (*(v14 + 40))(v13, v14);
  v16 = *(v15 + 16);
  if (v16)
  {
    v29 = a1;
    v33 = MEMORY[0x277D84F90];
    sub_222B4C9A8(0, v16, 0);
    v17 = v33;
    v18 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v28[1] = v15;
    v19 = v15 + v18;
    v20 = *(v3 + 72);
    v31 = v7 + 32;
    v32 = v20;
    v21 = v30;
    do
    {
      sub_222BADB30(v19, v6, type metadata accessor for PlusContactSuggestion);
      (*(v7 + 16))(v10, v6, v21);
      sub_222BADBB4(v6, type metadata accessor for PlusContactSuggestion);
      v33 = v17;
      v23 = *(v17 + 16);
      v22 = *(v17 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_222B4C9A8(v22 > 1, v23 + 1, 1);
        v21 = v30;
        v17 = v33;
      }

      *(v17 + 16) = v23 + 1;
      (*(v7 + 32))(v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v23, v10, v21);
      v19 += v32;
      --v16;
    }

    while (v16);

    a1 = v29;
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  type metadata accessor for PlusClientEventFeatureExtractor();
  v24 = swift_allocObject();
  type metadata accessor for SELFPlusSuggestionIdMapper();
  v25 = swift_allocObject();
  v26 = sub_222B632D4(MEMORY[0x277D84F90]);
  *(v25 + 16) = v17;
  *(v25 + 24) = v26;
  *(v24 + 16) = v25;
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v24;
}

uint64_t PlusClientEventFeatureExtractor.__allocating_init(picsIds:)(uint64_t a1)
{
  v2 = swift_allocObject();
  type metadata accessor for SELFPlusSuggestionIdMapper();
  v3 = swift_allocObject();
  v4 = sub_222B632D4(MEMORY[0x277D84F90]);
  *(v3 + 16) = a1;
  *(v3 + 24) = v4;
  *(v2 + 16) = v3;
  return v2;
}

uint64_t PlusClientEventFeatureExtractor.init(picsIds:)(uint64_t a1)
{
  type metadata accessor for SELFPlusSuggestionIdMapper();
  v3 = swift_allocObject();
  v4 = sub_222B632D4(MEMORY[0x277D84F90]);
  *(v3 + 16) = a1;
  *(v3 + 24) = v4;
  *(v1 + 16) = v3;
  return v1;
}

void *sub_222BA6B08(void (**a1)(char *, uint64_t, void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025EA8, &qword_222C9B2A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v194 = &v183 - v5;
  v193 = type metadata accessor for PlusGenericSuggestionRuntimeSummary(0);
  v186 = *(v193 - 8);
  v6 = *(v186 + 64);
  MEMORY[0x28223BE20](v193);
  v184 = &v183 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025EB0, &unk_222C9B2A8);
  v8 = *(*(v192 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v192);
  v191 = &v183 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v190 = &v183 - v12;
  MEMORY[0x28223BE20](v11);
  v189 = &v183 - v13;
  KeyPath = type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary(0);
  v185 = *(KeyPath - 1);
  v14 = *(v185 + 64);
  MEMORY[0x28223BE20](KeyPath);
  v209 = (&v183 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for PlusContactSuggestionRuntimeSummary(0);
  v201 = *(v16 - 8);
  v202 = v16;
  v17 = v201[8];
  MEMORY[0x28223BE20](v16);
  v203 = &v183 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v205 = &v183 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v200 = (&v183 - v24);
  MEMORY[0x28223BE20](v23);
  v198 = &v183 - v25;
  v206 = 0;
  v26 = a1;
  v27 = sub_222C9367C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v188 = (&v183 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = MEMORY[0x28223BE20](v30);
  v195 = &v183 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v199 = &v183 - v35;
  *&v216 = MEMORY[0x277D84F90];
  v204 = v26;
  if (v26 >> 62)
  {
    goto LABEL_88;
  }

  v36 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v207 = v34;
    v196 = v28;
    if (v36)
    {
      v37 = 0;
      v38 = v26 & 0xC000000000000001;
      v39 = v26 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v38)
        {
          v34 = MEMORY[0x223DC9B30](v37, v26);
        }

        else
        {
          if (v37 >= *(v39 + 16))
          {
            goto LABEL_83;
          }

          v34 = *(v26 + 8 * v37 + 32);
        }

        v40 = v34;
        v28 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_82;
        }

        if ([v34 anyEventType] == 38)
        {
          sub_222C94DEC();
          v1 = *(v216 + 16);
          sub_222C94E2C();
          sub_222C94E3C();
          v34 = sub_222C94DFC();
          v26 = v204;
        }

        else
        {
        }

        ++v37;
        if (v28 == v36)
        {
          v41 = v216;
          v226 = MEMORY[0x277D84F90];
          if ((v216 & 0x8000000000000000) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_89;
        }
      }
    }

    v41 = MEMORY[0x277D84F90];
    v226 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
    {
LABEL_17:
      if ((v41 & 0x4000000000000000) == 0)
      {
        v42 = *(v41 + 16);
        goto LABEL_19;
      }
    }

LABEL_89:
    v34 = sub_222C94C6C();
    v42 = v34;
LABEL_19:
    v43 = 0;
    v197 = MEMORY[0x277D84F90];
    if (v42)
    {
      while (1)
      {
        if ((v41 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x223DC9B30](v43, v41);
        }

        else
        {
          if (v43 >= *(v41 + 16))
          {
            goto LABEL_81;
          }

          v34 = *(v41 + 8 * v43 + 32);
        }

        v58 = v34;
        v59 = (v43 + 1);
        if (__OFADD__(v43, 1))
        {
          break;
        }

        v60 = [v34 payload];
        if (v60)
        {
          v54 = v60;
          v55 = sub_222C9350C();
          v28 = v56;

          v1 = sub_222C934FC();
          sub_222B803C0(v55, v28);
        }

        else
        {
          v1 = 0;
        }

        v57 = [objc_allocWithZone(MEMORY[0x277D59C50]) initWithData_];

        ++v43;
        if (v57)
        {
          MEMORY[0x223DC94A0]();
          if (*((v226 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v226 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v28 = *((v226 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_222C9475C();
          }

          v34 = sub_222C947AC();
          v197 = v226;
          v43 = v59;
          if (v42 == v59)
          {
            goto LABEL_20;
          }
        }

        else if (v42 == v43)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

LABEL_20:

    *&v216 = v204;
    *(&v216 + 1) = sub_222BA9728;
    *&v217 = 0;
    *(&v217 + 1) = sub_222BA9754;
    *&v218 = 0;
    *(&v218 + 1) = sub_222BABE98;
    *&v219 = 0;
    *(&v219 + 1) = sub_222BABEA8;
    *&v220 = 0;
    *(&v220 + 1) = sub_222BA97F8;
    *&v221 = 0;
    *(&v221 + 1) = sub_222BA9850;
    *&v222 = 0;
    *(&v222 + 1) = sub_222BAB2DC;
    v223 = 0;
    v224 = sub_222BAB340;
    v225 = 0;
    v229 = v218;
    v230 = v219;
    v227 = v216;
    v228 = v217;
    v234 = 0;
    v232 = v221;
    v233 = v222;
    v231 = v220;

    sub_222BAB45C();
    v45 = v216;
    v47 = *(&v217 + 1);
    v46 = v218;
    if (v216 >> 62)
    {
      v108 = v44;
      v48 = sub_222C94C6C();
      v44 = v108;
    }

    else
    {
      v48 = *((v216 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49 = v207;
    if (v44 == v48)
    {
      v50 = v196;
      v51 = *(v196 + 56);
      v28 = v198;
      v52 = v198;
      v53 = 1;
    }

    else
    {
      if ((v45 & 0xC000000000000001) != 0)
      {
        v61 = MEMORY[0x223DC9B30]();
      }

      else
      {
        if ((v44 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          v188 = sub_222B4A108(0, v188[2] + 1, 1, v188);
LABEL_62:
          v80 = v197;
          v28 = v188[2];
          v90 = v188[3];
          if (v28 >= v90 >> 1)
          {
            v188 = sub_222B4A108((v90 > 1), v28 + 1, 1, v188);
          }

          v214 = v49;
          v215 = sub_222BAC6B0(&qword_27D025EC0, 255, type metadata accessor for PlusForcePrompted);
          *&v213 = v46;
          v91 = v188;
          v188[2] = v28 + 1;
          v34 = sub_222B405A0(&v213, &v91[5 * v28 + 4]);
LABEL_65:
          v92 = 0;
          while (1)
          {
            if (v1)
            {
              v34 = MEMORY[0x223DC9B30](v92, v80);
            }

            else
            {
              if (v92 >= *(v47 + 16))
              {
                goto LABEL_87;
              }

              v34 = *(v80 + 8 * v92 + 32);
            }

            v93 = v34;
            v28 = v92 + 1;
            if (__OFADD__(v92, 1))
            {
              goto LABEL_86;
            }

            v94 = [v34 contactSuggesterRequestMetadataReported];
            if (v94)
            {
              v95 = v94;
              [v94 isPlusContactSuggesterEnabled];

              v96 = [v93 contactSuggesterRequestMetadataReported];
              v97 = v196;
              if (v96)
              {
                v98 = v96;
                v99 = [v96 isPlusContactSuggesterEnabled];

                v100 = type metadata accessor for PlusContactSuggesterEnabled(0);
                v101 = *(v100 + 48);
                v102 = *(v100 + 52);
                swift_allocObject();
                LOBYTE(v213) = v99;
                v103 = sub_222C93EEC();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v188 = sub_222B4A108(0, v188[2] + 1, 1, v188);
                }

                v105 = v188[2];
                v104 = v188[3];
                if (v105 >= v104 >> 1)
                {
                  v188 = sub_222B4A108((v104 > 1), v105 + 1, 1, v188);
                }

                v214 = v100;
                v215 = sub_222BAC6B0(&qword_27D025EC8, 255, type metadata accessor for PlusContactSuggesterEnabled);
                *&v213 = v103;
                v106 = v188;
                v188[2] = v105 + 1;
                sub_222B405A0(&v213, &v106[5 * v105 + 4]);
              }

              goto LABEL_93;
            }

            ++v92;
            if (v28 == v45)
            {
              goto LABEL_92;
            }
          }
        }

        if (v44 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_140;
        }

        v61 = *(v45 + v44 + 4);
      }

      v62 = v61;
      v63 = v224;
      v64 = *(&v221 + 1);
      v65 = *(&v219 + 1);
      v211[0] = v61;
      (v47)(&v213, v211);

      v66 = v213;
      v211[0] = v213;
      v65(&v213, v211);

      v67 = v213;
      v68 = v200;
      v64(&v213);

      v28 = v198;
      (v63)(v68);
      sub_222B4FCD4(v68, &unk_27D026290, &qword_222C96B40);
      v50 = v196;
      v51 = *(v196 + 56);
      v52 = v28;
      v53 = 0;
      v49 = v207;
    }

    v200 = v51;
    (v51)(v52, v53, 1, v49);
    sub_222B4FCD4(&v216, &qword_27D025EB8, &qword_222C9B2B8);
    if ((*(v50 + 48))(v28, 1, v49) == 1)
    {
      v34 = sub_222B4FCD4(v28, &unk_27D026290, &qword_222C96B40);
      v69 = MEMORY[0x277D84F90];
    }

    else
    {
      v70 = v199;
      (*(v50 + 32))(v199, v28, v49);
      v71 = *(v50 + 16);
      v72 = v195;
      v71(v195, v70, v49);
      v73 = type metadata accessor for PlusClientEventIdFeature(0);
      v74 = *(v73 + 48);
      v75 = *(v73 + 52);
      swift_allocObject();
      v71(v188, v72, v49);
      v76 = sub_222C93EEC();
      v77 = *(v50 + 8);
      v77(v72, v49);
      v78 = sub_222B4A108(0, 1, 1, MEMORY[0x277D84F90]);
      v28 = v78[2];
      v79 = v78[3];
      v69 = v78;
      if (v28 >= v79 >> 1)
      {
        v69 = sub_222B4A108((v79 > 1), v28 + 1, 1, v78);
      }

      v77(v199, v207);
      v214 = v73;
      v215 = sub_222BAC6B0(&qword_27D025EF0, 255, type metadata accessor for PlusClientEventIdFeature);
      *&v213 = v76;
      v69[2] = v28 + 1;
      v34 = sub_222B405A0(&v213, &v69[5 * v28 + 4]);
    }

    v80 = v197;
    if (!(v197 >> 62))
    {
      v45 = *((v197 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v188 = v69;
      if (!v45)
      {
        break;
      }

      goto LABEL_50;
    }

    v34 = sub_222C94C6C();
    v45 = v34;
    v188 = v69;
    if (!v34)
    {
      break;
    }

LABEL_50:
    v81 = 0;
    v1 = (v80 & 0xC000000000000001);
    v47 = v80 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v1)
      {
        v34 = MEMORY[0x223DC9B30](v81, v80);
      }

      else
      {
        if (v81 >= *(v47 + 16))
        {
          goto LABEL_85;
        }

        v34 = *(v80 + 8 * v81 + 32);
      }

      v83 = v34;
      v84 = (v81 + 1);
      if (__OFADD__(v81, 1))
      {
        break;
      }

      v85 = [v34 contactSuggesterRequestMetadataReported];
      if (v85)
      {
        v28 = v85;
        v86 = [v85 isForcePromptUsed];

        if (v86)
        {
          v49 = type metadata accessor for PlusForcePrompted(0);
          v87 = *(v49 + 48);
          v88 = *(v49 + 52);
          swift_allocObject();
          LOBYTE(v213) = 1;
          v46 = sub_222C93EEC();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            goto LABEL_141;
          }

          goto LABEL_62;
        }
      }

      else
      {
      }

      ++v81;
      v82 = v84 == v45;
      v80 = v197;
      if (v82)
      {
        goto LABEL_65;
      }
    }

LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    v107 = v34;
    v36 = sub_222C94C6C();
    v34 = v107;
    v26 = v204;
  }

LABEL_92:
  v93 = 0;
  v97 = v196;
LABEL_93:
  sub_222BAD420(v80);
  v109 = sub_222BAD5C8();

  v110 = v109[2];
  v195 = v93;
  if (!v110)
  {

    goto LABEL_112;
  }

  v212 = MEMORY[0x277D84F90];
  sub_222B4C9EC(0, v110, 0);
  v111 = v212;
  v112 = *(v187 + 16);
  v113 = v185;
  v114 = (*(v185 + 80) + 32) & ~*(v185 + 80);
  v183 = v109;
  v115 = v109 + v114;
  swift_beginAccess();
  v116 = *(v113 + 72);
  v198 = (v97 + 56);
  v199 = v116;
  v204 = (v97 + 16);
  while (2)
  {
    v117 = v209;
    v118 = sub_222BADB30(v115, v209, type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary);
    v119 = v117 + KeyPath[5];
    v120 = *(v112 + 24);
    if (!*(v120 + 16))
    {
LABEL_100:
      v125 = *(v112 + 16);
      MEMORY[0x28223BE20](v118);
      *(&v183 - 2) = v119;
      v126 = v206;
      v124 = sub_222BA6518(MEMORY[0x277D84F98], sub_222BADB98, (&v183 - 4), v127);
      v206 = v126;
      swift_beginAccess();

      v128 = *(v112 + 24);
      v129 = swift_isUniquelyReferenced_nonNull_native();
      v210 = *(v112 + 24);
      *(v112 + 24) = 0x8000000000000000;
      sub_222BAA908(v124, v119, v129);
      *(v112 + 24) = v210;
      swift_endAccess();
      if (!*(v124 + 16))
      {
        goto LABEL_103;
      }

      goto LABEL_101;
    }

    v121 = *(v112 + 24);

    v122 = sub_222B8CA54(v119);
    if ((v123 & 1) == 0)
    {

      goto LABEL_100;
    }

    v124 = *(*(v120 + 56) + 8 * v122);

    if (!*(v124 + 16))
    {
LABEL_103:
      v132 = 1;
      goto LABEL_104;
    }

LABEL_101:
    v130 = sub_222B8CA54(v209);
    if ((v131 & 1) == 0)
    {
      goto LABEL_103;
    }

    (*(v196 + 16))(v205, *(v124 + 56) + *(v196 + 72) * v130, v207);
    v132 = 0;
LABEL_104:

    v133 = v205;
    v134 = v132;
    v135 = v207;
    v200(v205, v134, 1, v207);
    v136 = v203;
    v137 = v209;
    (*v204)(v203, v209, v135);
    LOBYTE(v135) = *(v137 + KeyPath[6]);
    v138 = *(v137 + KeyPath[7]);
    sub_222BADBB4(v137, type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary);
    v139 = v202;
    sub_222B55BA0(v133, v136 + *(v202 + 20));
    *(v136 + *(v139 + 24)) = v135;
    *(v136 + *(v139 + 28)) = v138;
    v212 = v111;
    v141 = *(v111 + 16);
    v140 = *(v111 + 24);
    if (v141 >= v140 >> 1)
    {
      sub_222B4C9EC(v140 > 1, v141 + 1, 1);
      v136 = v203;
      v111 = v212;
    }

    *(v111 + 16) = v141 + 1;
    sub_222BADC98(v136, v111 + ((*(v201 + 80) + 32) & ~*(v201 + 80)) + v201[9] * v141, type metadata accessor for PlusContactSuggestionRuntimeSummary);
    v115 += v199;
    if (--v110)
    {
      continue;
    }

    break;
  }

  v142 = type metadata accessor for PlusRuntimeContactSuggestions(0);
  v143 = *(v142 + 48);
  v144 = *(v142 + 52);
  swift_allocObject();
  *&v213 = v111;
  v145 = sub_222C93EEC();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_137:
    v188 = sub_222B4A108(0, v188[2] + 1, 1, v188);
  }

  v80 = v197;
  v147 = v188[2];
  v146 = v188[3];
  if (v147 >= v146 >> 1)
  {
    v188 = sub_222B4A108((v146 > 1), v147 + 1, 1, v188);
  }

  v93 = v195;
  v214 = v142;
  v215 = sub_222BAC6B0(&qword_27D025ED0, 255, type metadata accessor for PlusRuntimeContactSuggestions);
  *&v213 = v145;
  v148 = v188;
  v188[2] = v147 + 1;
  sub_222B405A0(&v213, &v148[5 * v147 + 4]);
LABEL_112:
  v149 = sub_222BA8AF0(v80);

  v145 = sub_222BAC6F8(v149);

  KeyPath = swift_getKeyPath();
  v150 = (v145 + 8);
  v151 = 1 << *(v145 + 32);
  v152 = -1;
  if (v151 < 64)
  {
    v152 = ~(-1 << v151);
  }

  v142 = v152 & v145[8];
  v153 = (v151 + 63) >> 6;
  v203 = (v196 + 32);
  v204 = (v196 + 16);
  v202 = v186 + 48;
  v209 = v145;

  v154 = 0;
  v201 = MEMORY[0x277D84F90];
  v205 = v153;
  v206 = (v145 + 8);
  v155 = v189;
LABEL_115:
  v156 = v154;
  if (!v142)
  {
    goto LABEL_117;
  }

  do
  {
    v154 = v156;
LABEL_120:
    v157 = __clz(__rbit64(v142));
    v142 &= v142 - 1;
    v158 = v157 | (v154 << 6);
    v159 = v209;
    v160 = v196;
    v161 = v207;
    (*(v196 + 16))(v155, v209[6] + *(v196 + 72) * v158, v207);
    v162 = v192;
    *(v155 + *(v192 + 48)) = *(*(v159 + 56) + 8 * v158);
    v163 = v190;
    sub_222B4FC6C(v155, v190, &qword_27D025EB0, &unk_222C9B2A8);
    v164 = *(v162 + 48);
    v165 = *(v163 + v164);
    v166 = *(v160 + 32);
    v167 = v191;
    v166(v191, v163, v161);
    *(v167 + v164) = v165;

    v168 = v194;
    swift_getAtKeyPath();
    v145 = &qword_27D025EB0;
    sub_222B4FCD4(v167, &qword_27D025EB0, &unk_222C9B2A8);
    sub_222B4FCD4(v155, &qword_27D025EB0, &unk_222C9B2A8);
    if ((*v202)(v168, 1, v193) != 1)
    {
      sub_222BADC98(v168, v184, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
      v169 = swift_isUniquelyReferenced_nonNull_native();
      v153 = v205;
      if ((v169 & 1) == 0)
      {
        v201 = sub_222B4B09C(0, v201[2] + 1, 1, v201);
      }

      v93 = v195;
      v150 = v206;
      v171 = v201[2];
      v170 = v201[3];
      v145 = (v171 + 1);
      if (v171 >= v170 >> 1)
      {
        v201 = sub_222B4B09C(v170 > 1, v171 + 1, 1, v201);
      }

      v172 = v201;
      v201[2] = v145;
      sub_222BADC98(v184, v172 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v171, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
      goto LABEL_115;
    }

    sub_222B4FCD4(v168, &qword_27D025EA8, &qword_222C9B2A0);
    v156 = v154;
    v93 = v195;
    v153 = v205;
    v150 = v206;
  }

  while (v142);
  while (1)
  {
LABEL_117:
    v154 = v156 + 1;
    if (__OFADD__(v156, 1))
    {
      __break(1u);
      goto LABEL_137;
    }

    if (v154 >= v153)
    {
      break;
    }

    v142 = *&v150[8 * v154];
    ++v156;
    if (v142)
    {
      goto LABEL_120;
    }
  }

  v173 = v201;
  if (v201[2])
  {
    v174 = type metadata accessor for PlusRuntimeGenericSuggestions(0);
    v175 = *(v174 + 48);
    v176 = *(v174 + 52);
    swift_allocObject();
    *&v213 = v173;
    v177 = sub_222C93EEC();
    v178 = v188;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v178 = sub_222B4A108(0, v178[2] + 1, 1, v178);
    }

    v180 = v178[2];
    v179 = v178[3];
    v181 = v178;
    if (v180 >= v179 >> 1)
    {
      v181 = sub_222B4A108((v179 > 1), v180 + 1, 1, v178);
    }

    v214 = v174;
    v215 = sub_222BAC6B0(&qword_27D025EE8, 255, type metadata accessor for PlusRuntimeGenericSuggestions);
    *&v213 = v177;
    v181[2] = v180 + 1;
    sub_222B405A0(&v213, &v181[5 * v180 + 4]);
  }

  else
  {

    return v188;
  }

  return v181;
}