char *sub_26BE6D5C0()
{
  v1 = v0;
  v2 = sub_26C00928C();
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E820, &qword_26C02A220);
  v6 = *v0;
  v7 = sub_26C00AD8C();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v41 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = v40 + 32;
    v36 = v40 + 16;
    v37 = v6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v42 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v39;
        v23 = v40;
        v24 = *(v40 + 72) * v21;
        v25 = v38;
        (*(v40 + 16))(v38, *(v6 + 48) + v24, v39);
        v26 = *(v6 + 56);
        v27 = 16 * v21;
        v28 = (v26 + 16 * v21);
        v29 = *v28;
        v30 = v28[1];
        v31 = v41;
        (*(v23 + 32))(*(v41 + 48) + v24, v25, v22);
        v32 = (*(v31 + 56) + v27);
        v6 = v37;
        *v32 = v29;
        v32[1] = v30;
        result = sub_26BE00608(v29, v30);
        v16 = v42;
      }

      while (v42);
    }

    v19 = v12;
    v8 = v41;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v20 = *(v34 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v42 = (v20 - 1) & v20;
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

void *sub_26BE6D84C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E850, &qword_26C0124F0);
  v2 = *v0;
  v3 = sub_26C00AD8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v28 = v1;
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
        v22 = 80 * v17;
        sub_26BE2E07C(*(v2 + 56) + 80 * v17, v29);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = (*(v4 + 56) + v22);
        *v24 = v29[0];
        v25 = v29[1];
        v26 = v29[2];
        v27 = v29[4];
        v24[3] = v29[3];
        v24[4] = v27;
        v24[1] = v25;
        v24[2] = v26;
        result = sub_26BE00608(v20, v21);
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

        v1 = v28;
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

void *sub_26BE6DA08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E858, &qword_26C0124F8);
  v2 = *v0;
  v3 = sub_26C00AD8C();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_26BE2DFC0(&v40, v39))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v16 *= 184;
      v18 = *(v2 + 56) + v16;
      v19 = *(*(v2 + 48) + v17);
      v20 = *(v18 + 112);
      v22 = *(v18 + 64);
      v21 = *(v18 + 80);
      v46 = *(v18 + 96);
      v47 = v20;
      v44 = v22;
      v45 = v21;
      v24 = *(v18 + 144);
      v23 = *(v18 + 160);
      v25 = *(v18 + 128);
      v51 = *(v18 + 176);
      v49 = v24;
      v50 = v23;
      v48 = v25;
      v27 = *v18;
      v26 = *(v18 + 16);
      v28 = *(v18 + 48);
      v42 = *(v18 + 32);
      v43 = v28;
      v40 = v27;
      v41 = v26;
      *(*(v4 + 48) + v17) = v19;
      v29 = *(v4 + 56) + v16;
      v30 = v40;
      v31 = v41;
      v32 = v43;
      *(v29 + 32) = v42;
      *(v29 + 48) = v32;
      *v29 = v30;
      *(v29 + 16) = v31;
      v33 = v44;
      v34 = v45;
      v35 = v47;
      *(v29 + 96) = v46;
      *(v29 + 112) = v35;
      *(v29 + 64) = v33;
      *(v29 + 80) = v34;
      v36 = v48;
      v37 = v49;
      v38 = v50;
      *(v29 + 176) = v51;
      *(v29 + 144) = v37;
      *(v29 + 160) = v38;
      *(v29 + 128) = v36;
      sub_26BE00608(v19, *(&v19 + 1));
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

void *sub_26BE6DC08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8A0, &unk_26C012540);
  v2 = *v0;
  v3 = sub_26C00AD8C();
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
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        result = sub_26BE00608(v18, *(&v18 + 1));
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

void *sub_26BE6DD70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E898, &qword_26C012538);
  v2 = *v0;
  v3 = sub_26C00AD8C();
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
        v18 = 4 * v17;
        v19 = *(*(v2 + 48) + 4 * v17);
        v20 = 40 * v17;
        sub_26BE038A8(*(v2 + 56) + 40 * v17, v21);
        *(*(v4 + 48) + v18) = v19;
        result = sub_26BE03890(v21, *(v4 + 56) + v20);
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

char *sub_26BE6DEF4()
{
  v1 = v0;
  v36 = sub_26C00921C();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E7F8, &unk_26C0124A0);
  v4 = *v0;
  v5 = sub_26C00AD8C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    v16 = v35;
    if (v14)
    {
      do
      {
        v17 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = *(v4 + 48) + 16 * v20;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = v38;
        v26 = *(v38 + 72) * v20;
        v27 = v36;
        (*(v38 + 16))(v16, *(v4 + 56) + v26, v36);
        v28 = v37;
        v29 = *(v37 + 48) + v21;
        *v29 = v23;
        *(v29 + 8) = v24;
        result = (*(v25 + 32))(*(v28 + 56) + v26, v16, v27);
        v14 = v39;
      }

      while (v39);
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

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v19 = *(v32 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
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

void *sub_26BE6E178()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E7E8, &qword_26C012490);
  v2 = *v0;
  v3 = sub_26C00AD8C();
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
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = *(v4 + 56) + v17;
        *v25 = v22;
        *(v25 + 8) = v23;
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

void *sub_26BE6E2F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E838, &qword_26C0124D8);
  v2 = *v0;
  v3 = sub_26C00AD8C();
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
        v18 = *(*(v2 + 48) + v17);
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + v17) = v18;
        *(*(v4 + 56) + v17) = v19;
        sub_26BE00608(v18, *(&v18 + 1));
        result = sub_26BE00608(v19, *(&v19 + 1));
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

void *sub_26BE6E474()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E830, &qword_26C0124D0);
  v2 = *v0;
  v3 = sub_26C00AD8C();
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
        v18 = 32 * v17;
        v19 = *(v2 + 48) + 32 * v17;
        v20 = *v19;
        v21 = *(v19 + 24);
        v17 *= 16;
        v22 = *(v4 + 48) + v18;
        v23 = *(v19 + 8);
        v24 = *(*(v2 + 56) + v17);
        *v22 = *v19;
        *(v22 + 8) = v23;
        *(v22 + 24) = v21;
        *(*(v4 + 56) + v17) = v24;
        sub_26BE00608(v20, v23);
        result = sub_26BE00608(v24, *(&v24 + 1));
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

void *sub_26BE6E610()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E840, &unk_26C0124E0);
  v2 = *v0;
  v3 = sub_26C00AD8C();
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
        v18 = 24 * v17;
        v19 = *(v2 + 48) + 24 * v17;
        v20 = *v19;
        v17 *= 16;
        v21 = *(v4 + 48) + v18;
        v22 = *(v19 + 8);
        v23 = *(*(v2 + 56) + v17);
        *v21 = *v19;
        *(v21 + 8) = v22;
        *(*(v4 + 56) + v17) = v23;
        sub_26BE00608(v20, v22);
        result = sub_26BE00608(v23, *(&v23 + 1));
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

void *sub_26BE6E7A8()
{
  v1 = v0;
  v30 = sub_26C009C8C();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E890, &qword_26C012530);
  v4 = *v0;
  v5 = sub_26C00AD8C();
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
      v19 = *(*(v4 + 48) + 4 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 4 * v18) = v19;
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

void *sub_26BE6EA10()
{
  v1 = v0;
  v2 = _s11HashRatchetVMa(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E888, &unk_26C02A1B0);
  v5 = *v0;
  v6 = sub_26C00AD8C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
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
        v22 = 8 * v21;
        v23 = *(v5 + 48) + 8 * v21;
        v24 = *v23;
        v25 = *(v23 + 4);
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_26BE6FEC8(*(v5 + 56) + v27, v31, _s11HashRatchetVMa);
        v28 = v33;
        v29 = *(v33 + 48) + v22;
        *v29 = v24;
        *(v29 + 4) = v25;
        result = sub_26BE70034(v26, *(v28 + 56) + v27, _s11HashRatchetVMa);
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

        v1 = v30;
        v7 = v33;
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

void *sub_26BE6EC68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E818, &unk_26C0124C0);
  v2 = *v0;
  v3 = sub_26C00AD8C();
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
        sub_26BE2E2EC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_26BE5B0F0(v25, (*(v4 + 56) + v22));
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

void *sub_26BE6EE0C()
{
  v1 = v0;
  v2 = type metadata accessor for MLS.KeyAndNonce(0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E848, &qword_26C02A1A0);
  v6 = *v0;
  v7 = sub_26C00AD8C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
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
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 4 * v21);
        v23 = *(v25 + 72) * v21;
        sub_26BE6FEC8(*(v6 + 56) + v23, v5, type metadata accessor for MLS.KeyAndNonce);
        *(*(v8 + 48) + 4 * v21) = v22;
        result = sub_26BE70034(v5, *(v8 + 56) + v23, type metadata accessor for MLS.KeyAndNonce);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

void *sub_26BE6F040()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8D0, &qword_26C012578);
  v2 = *v0;
  v3 = sub_26C00AD8C();
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
    for (i = (v9 + 63) >> 6; v11; result = sub_26BE5CDE4(&v40, v39))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v16 *= 200;
      v18 = *(v2 + 56) + v16;
      v19 = *(*(v2 + 48) + v17);
      v21 = *(v18 + 16);
      v20 = *(v18 + 32);
      v22 = *(v18 + 64);
      v43 = *(v18 + 48);
      v44 = v22;
      v23 = *(v18 + 128);
      v25 = *(v18 + 80);
      v24 = *(v18 + 96);
      v47 = *(v18 + 112);
      v48 = v23;
      v45 = v25;
      v46 = v24;
      v27 = *(v18 + 160);
      v26 = *(v18 + 176);
      v28 = *(v18 + 144);
      v52 = *(v18 + 192);
      v50 = v27;
      v51 = v26;
      v49 = v28;
      v40 = *v18;
      v41 = v21;
      v42 = v20;
      *(*(v4 + 48) + v17) = v19;
      v29 = *(v4 + 56) + v16;
      *v29 = v40;
      v30 = v41;
      v31 = v42;
      v32 = v44;
      *(v29 + 48) = v43;
      *(v29 + 64) = v32;
      *(v29 + 16) = v30;
      *(v29 + 32) = v31;
      v33 = v45;
      v34 = v46;
      v35 = v48;
      *(v29 + 112) = v47;
      *(v29 + 128) = v35;
      *(v29 + 80) = v33;
      *(v29 + 96) = v34;
      v36 = v49;
      v37 = v50;
      v38 = v51;
      *(v29 + 192) = v52;
      *(v29 + 160) = v37;
      *(v29 + 176) = v38;
      *(v29 + 144) = v36;
      sub_26BE00608(v19, *(&v19 + 1));
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

void *sub_26BE6F28C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_26C00AD8C();
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

void *sub_26BE6F414(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_26C00AD8C();
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

void *sub_26BE6F574()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E880, &unk_26C012520);
  v29 = v0;
  v1 = *v0;
  v30 = sub_26C00AD8C();
  v31 = v1;
  if (*(v1 + 16))
  {
    result = (v30 + 64);
    v3 = v1 + 64;
    v4 = ((1 << *(v30 + 32)) + 63) >> 6;
    if (v30 != v1 || result >= v1 + 64 + 8 * v4)
    {
      result = memmove(result, (v1 + 64), 8 * v4);
    }

    v6 = 0;
    *(v30 + 16) = *(v31 + 16);
    v7 = 1 << *(v31 + 32);
    v8 = *(v31 + 64);
    v9 = -1;
    if (v7 < 64)
    {
      v9 = ~(-1 << v7);
    }

    v10 = v9 & v8;
    v11 = (v7 + 63) >> 6;
    if ((v9 & v8) != 0)
    {
      do
      {
        v12 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_17:
        v15 = v12 | (v6 << 6);
        v16 = 16 * v15;
        v17 = (*(v31 + 48) + 16 * v15);
        v19 = *v17;
        v18 = v17[1];
        v15 *= 48;
        v20 = (*(v31 + 56) + v15);
        v21 = *v20;
        v22 = v20[1];
        v23 = v20[2];
        v24 = v20[3];
        v25 = v20[4];
        v26 = v20[5];
        v27 = (*(v30 + 48) + v16);
        *v27 = v19;
        v27[1] = v18;
        v28 = (*(v30 + 56) + v15);
        *v28 = v21;
        v28[1] = v22;
        v28[2] = v23;
        v28[3] = v24;
        v28[4] = v25;
        v28[5] = v26;

        sub_26BE00608(v21, v22);
        sub_26BE00608(v23, v24);
        result = sub_26BE00608(v25, v26);
      }

      while (v10);
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
        goto LABEL_19;
      }

      v14 = *(v3 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v29 = v30;
  }

  return result;
}

void *sub_26BE6F748()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E878, &qword_26C012518);
  v2 = *v0;
  v3 = sub_26C00AD8C();
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

void *sub_26BE6F8C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E868, &qword_26C02A180);
  v2 = *v0;
  v3 = sub_26C00AD8C();
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
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_26BE00608(v22, *(&v22 + 1));
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

void *sub_26BE6FA44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E7E0, &qword_26C012488);
  v2 = *v0;
  v3 = sub_26C00AD8C();
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
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_26BE04890(v22, *(&v22 + 1));
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

void *sub_26BE6FBC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E7F0, &qword_26C012498);
  v2 = *v0;
  v3 = sub_26C00AD8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v28 = v1;
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
        v22 = 56 * v17;
        sub_26BE2DA9C(*(v2 + 56) + 56 * v17, v29);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v30;
        v26 = v29[2];
        v27 = v29[1];
        *v24 = v29[0];
        *(v24 + 16) = v27;
        *(v24 + 32) = v26;
        *(v24 + 48) = v25;
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

        v1 = v28;
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

uint64_t sub_26BE6FEC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BE70034(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BE701EC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t _s8SwiftMLS0B0O6CommitV14isPathRequired9proposalsSbSayAC16ResolvedProposalVG_tFZ_0(uint64_t a1)
{
  result = sub_26BEC7F24(&unk_287CBA1E0);
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_37:

    return 1;
  }

  v5 = 0;
  v6 = 0;
  v7 = result + 56;
  do
  {
    v8 = v5 + 1;
    if (v6)
    {
      goto LABEL_7;
    }

    v9 = a1 + 32 + 200 * v5;
    v10 = *(v9 + 144);
    v20[8] = *(v9 + 128);
    v20[9] = v10;
    v20[10] = *(v9 + 160);
    v21 = *(v9 + 176);
    v11 = *(v9 + 80);
    v20[4] = *(v9 + 64);
    v20[5] = v11;
    v12 = *(v9 + 112);
    v20[6] = *(v9 + 96);
    v20[7] = v12;
    v13 = *(v9 + 16);
    v20[0] = *v9;
    v20[1] = v13;
    v14 = *(v9 + 48);
    v20[2] = *(v9 + 32);
    v20[3] = v14;
    result = sub_26BE5CD48(v20);
    if (result <= 4)
    {
      if (result <= 1)
      {
        if (result)
        {
          v15 = 2;
        }

        else
        {
          v15 = 1;
        }
      }

      else if (result == 2)
      {
        v15 = 3;
      }

      else if (result == 3)
      {
        v15 = 4;
      }

      else
      {
        v15 = 5;
      }

LABEL_29:
      result = sub_26BE5CDC8(v20);
      if (!*(v3 + 16))
      {
        goto LABEL_3;
      }

      goto LABEL_30;
    }

    if (result <= 7)
    {
      if (result == 5)
      {
        v15 = 6;
      }

      else if (result == 6)
      {
        v15 = 7;
      }

      else
      {
        v15 = 61442;
      }

      goto LABEL_29;
    }

    if (result == 8)
    {
      v15 = 61444;
      goto LABEL_29;
    }

    if (result == 9)
    {
      v15 = 61443;
      goto LABEL_29;
    }

    v15 = 0xFFFF;
    if (!*(v3 + 16))
    {
      goto LABEL_3;
    }

LABEL_30:
    v16 = *(v3 + 40);
    sub_26C00B05C();
    sub_26C00B08C();
    result = sub_26C00B0CC();
    v17 = -1 << *(v3 + 32);
    v18 = result & ~v17;
    if ((*(v7 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
    {
      v19 = ~v17;
      while (*(*(v3 + 48) + 2 * v18) != v15)
      {
        v18 = (v18 + 1) & v19;
        if (((*(v7 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_3;
        }
      }

LABEL_7:
      if (v8 == v4)
      {
        goto LABEL_37;
      }

      v6 = 1;
      goto LABEL_5;
    }

LABEL_3:
    if (v8 == v4)
    {

      return 0;
    }

    v6 = 0;
LABEL_5:
    v5 = v8;
  }

  while (v8 != v4);
  __break(1u);
  return result;
}

unint64_t sub_26BE7049C()
{
  result = qword_28045E758;
  if (!qword_28045E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E758);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8SwiftMLS0B0O8ProposalO(uint64_t a1)
{
  v1 = (*(a1 + 176) >> 58) & 0xC | (*(a1 + 152) >> 60) & 3;
  if (v1 <= 9)
  {
    return v1;
  }

  else
  {
    return (*a1 + 10);
  }
}

__n128 __swift_memcpy193_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_26BE7056C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x36 && *(a1 + 193))
  {
    return (*a1 + 54);
  }

  v3 = (*(a1 + 135) & 0x30 | ((*(a1 + 183) & 0x30 | ((*(a1 + 152) >> 58) & 0xC)) >> 2)) ^ 0x3F;
  if (v3 >= 0x35)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26BE705D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x35)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 192) = 0;
    *result = a2 - 54;
    if (a3 >= 0x36)
    {
      *(result + 193) = 1;
    }
  }

  else
  {
    if (a3 >= 0x36)
    {
      *(result + 193) = 0;
    }

    if (a2)
    {
      *(result + 96) = 0u;
      *(result + 112) = 0u;
      v3 = (-a2 >> 4) & 3 | (4 * (-a2 & 0x3F));
      *(result + 64) = 0u;
      *(result + 80) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 128) = ((-a2 >> 4) & 3) << 60;
      *(result + 136) = 0;
      *(result + 144) = 0;
      *(result + 152) = (v3 << 58) & 0x3000000000000000;
      *(result + 160) = 0;
      *(result + 168) = 0;
      *(result + 176) = (v3 << 56) & 0x3000000000000000;
    }
  }

  return result;
}

void sub_26BE706E8()
{
  sub_26BE70770(319);
  if (v0 <= 0x3F)
  {
    sub_26BE708C0();
    if (v1 <= 0x3F)
    {
      sub_26BE70924();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_26BE70770(uint64_t a1)
{
  if (!qword_28045E770)
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045E778, &qword_26C0159E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045E780, &qword_26C012140);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_28045E770);
    }
  }
}

void sub_26BE708C0()
{
  if (!qword_28045E788)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28045E788);
    }
  }
}

void sub_26BE70924()
{
  if (!qword_28045E790)
  {
    type metadata accessor for MLS.GroupState();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28045E790);
    }
  }
}

uint64_t sub_26BE709B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E798, &qword_26C012178);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BE70A40(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E798, &qword_26C012178);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_26BE70AD0()
{
  sub_26BE70B28();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_26BE70B28()
{
  if (!qword_28045E7B0)
  {
    sub_26C009C8C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28045E7B0);
    }
  }
}

uint64_t sub_26BE70BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MLS.GroupState.CommitTypeOptions(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_26BE70C7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MLS.GroupState.CommitTypeOptions(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

void sub_26BE70D38()
{
  type metadata accessor for MLS.GroupState.CommitTypeOptions(319);
  if (v0 <= 0x3F)
  {
    sub_26BE71294(319, &qword_28045E208);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26BE70DE8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[32])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26BE70E3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy27_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_26BE70EA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 27))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26BE70EF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 27) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 27) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_26BE70F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MLS.MLSMessage(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for MLS.GroupState();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_26BE710AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MLS.MLSMessage(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for MLS.GroupState();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_26BE711D0()
{
  type metadata accessor for MLS.MLSMessage(319);
  if (v0 <= 0x3F)
  {
    sub_26BE71294(319, &qword_28045E7D8);
    if (v1 <= 0x3F)
    {
      type metadata accessor for MLS.GroupState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26BE71294(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_26C00A7AC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8SwiftMLS0B0O12CryptographyO19SignaturePrivateKey_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8SwiftMLS0B0O12CapabilitiesVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_26BE71360(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_26BE713BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

double sub_26BE7150C(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_26BE715E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BE7162C(uint64_t result, unint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    return sub_26BE0489C(result, a2);
  }

  return result;
}

uint64_t sub_26BE716A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.TreeKEMPrivateKey();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BE7170C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_26BE71774(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void *sub_26BE71934(void *result)
{
  v1 = result[22] & 0xCFFFFFFFFFFFFFFFLL;
  v2 = result[19] & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  result[16] &= 0xCFFFFFFFFFFFFFFFLL;
  result[19] = v2;
  result[22] = v1;
  return result;
}

uint64_t sub_26BE71984(uint64_t a1, unint64_t a2, unsigned __int16 *a3, int a4)
{
  v7 = *a3;
  v17 = xmmword_26C00BBD0;
  v18 = 0;
  v13[0] = 1;
  v13[1] = v7;
  v14 = a4;
  v15 = a1;
  v16 = a2;
  sub_26BE00608(a1, a2);
  sub_26BE7D4EC(v13);
  if (v4)
  {
    sub_26BE00258(a1, a2);
    return sub_26BE00258(v17, *(&v17 + 1));
  }

  v9 = v17;
  v10 = *(&v17 + 1) >> 62;
  if ((*(&v17 + 1) >> 62) <= 1)
  {
    if (!v10)
    {
      goto LABEL_11;
    }

    v11 = v17 >> 32;
LABEL_9:
    if (v11 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v10 == 2)
  {
    v11 = *(v17 + 24);
    goto LABEL_9;
  }

LABEL_11:
  v12 = sub_26C00909C();
  sub_26BE00258(a1, a2);
  sub_26BE00258(v9, *(&v9 + 1));
  return v12;
}

_BYTE *sub_26BE71AA0(_OWORD *a1)
{
  v1 = a1[12];
  v2 = a1[10];
  v47 = a1[11];
  v48 = v1;
  v3 = a1[12];
  v49[0] = a1[13];
  *(v49 + 9) = *(a1 + 217);
  v4 = a1[8];
  v5 = a1[6];
  v43 = a1[7];
  v44 = v4;
  v6 = a1[8];
  v7 = a1[10];
  v45 = a1[9];
  v46 = v7;
  v8 = a1[4];
  v39 = a1[3];
  v40 = v8;
  v9 = a1[6];
  v11 = a1[3];
  v10 = a1[4];
  v41 = a1[5];
  v42 = v9;
  v50[8] = v47;
  v50[9] = v3;
  v51[0] = a1[13];
  *(v51 + 9) = *(a1 + 217);
  v50[4] = v43;
  v50[5] = v6;
  v50[6] = v45;
  v50[7] = v2;
  v50[0] = v11;
  v50[1] = v10;
  v50[2] = v41;
  v50[3] = v5;
  if (sub_26BE6917C(v50))
  {
    sub_26BE01654();
    swift_allocError();
    v13 = v12;
    v36 = v47;
    v37 = v48;
    v38[0] = v49[0];
    *(v38 + 9) = *(v49 + 9);
    v32 = v43;
    v33 = v44;
    v34 = v45;
    v35 = v46;
    v28 = v39;
    v29 = v40;
    v30 = v41;
    v31 = v42;
    v14 = sub_26BE6917C(&v28);
    if (v14)
    {
      if (v14 == 1)
      {
        nullsub_1(&v28);
        v15 = 2;
      }

      else
      {
        nullsub_1(&v28);
        v15 = 3;
      }
    }

    else
    {
      nullsub_1(&v28);
      v15 = 1;
    }

    *v13 = v15;
    v13[112] = 12;
    swift_willThrow();
    return v13;
  }

  v16 = nullsub_1(v50);
  v17 = *v16;
  v18 = v16[1];
  v19 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v19 == 2)
    {
      v20 = *(v17 + 16);
LABEL_13:
      v36 = v47;
      v37 = v48;
      v38[0] = v49[0];
      *(v38 + 9) = *(v49 + 9);
      v32 = v43;
      v33 = v44;
      v34 = v45;
      v35 = v46;
      v28 = v39;
      v29 = v40;
      v30 = v41;
      v31 = v42;
      v21 = nullsub_1(&v28);
      sub_26BE00608(*v21, *(v21 + 8));
    }
  }

  else if (v19)
  {
    goto LABEL_13;
  }

  v36 = v47;
  v37 = v48;
  v38[0] = v49[0];
  *(v38 + 9) = *(v49 + 9);
  v32 = v43;
  v33 = v44;
  v34 = v45;
  v35 = v46;
  v28 = v39;
  v29 = v40;
  v30 = v41;
  v31 = v42;
  v22 = nullsub_1(&v28);
  sub_26BE00608(*v22, *(v22 + 8));
  if ((sub_26BEE6180() & 0x10000) != 0 || (sub_26BEE6180() & 0x10000) != 0 || (v23 = sub_26BEE6028(), (v23 & 0x100000000) != 0))
  {
    sub_26BE01600();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8F0, &unk_26C012590);
    v25 = sub_26C00A4FC();
    v13 = v26;
    sub_26BE826C4(v25, v26, v17, v18);

    swift_willThrow();
    sub_26BE6FD84(&v39);
    sub_26BE00258(v17, v18);
  }

  else
  {
    v13 = v23;
    sub_26BE6FD84(&v39);
    sub_26BE00258(v17, v18);
  }

  return v13;
}

uint64_t sub_26BE71DBC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v8 = *(a1 + 16);
LABEL_6:
      sub_26BE00608(a1, a2);
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  v26 = a1;
  v27 = a2;
  v9 = sub_26BEE6180();
  if ((v9 & 0x10000) != 0 || (v10 = v9, v11 = sub_26BEE6180(), (v11 & 0x10000) != 0) || (v12 = v11, v13 = sub_26BEE6028(), (v13 & 0x100000000) != 0))
  {
    sub_26BE01600();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();
    goto LABEL_14;
  }

  v14 = v13;
  v15 = sub_26BF2F7B0();
  if (v3)
  {
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8E8, &qword_26C012588);
    v21 = sub_26C00A4FC();
    sub_26BE826C4(v21, v22, a1, a2);

    swift_willThrow();
    v23 = a1;
    v24 = a2;
    return sub_26BE00258(v23, v24);
  }

  v17 = v15;
  v18 = v16;
  result = sub_26BE00258(v26, v27);
  if (v10 == 1)
  {
    *a3 = 1;
    *(a3 + 2) = v12;
    *(a3 + 4) = v14;
    *(a3 + 8) = v17;
    *(a3 + 16) = v18;
    return result;
  }

  sub_26BE01654();
  swift_allocError();
  *v25 = 5;
  v25[112] = 9;
  swift_willThrow();
  v23 = v17;
  v24 = v18;
  return sub_26BE00258(v23, v24);
}

uint64_t MockRoot.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MockRoot.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MockRoot.certificate.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MockRoot.certificate.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MockRoot.privateKey.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t MockRoot.privateKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_26BE7211C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6369666974726563;
  v4 = 0xEB00000000657461;
  if (v2 != 1)
  {
    v3 = 0x4B65746176697270;
    v4 = 0xEA00000000007965;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701667182;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x6369666974726563;
  v8 = 0xEB00000000657461;
  if (*a2 != 1)
  {
    v7 = 0x4B65746176697270;
    v8 = 0xEA00000000007965;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701667182;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26C00AF2C();
  }

  return v11 & 1;
}

uint64_t sub_26BE72230()
{
  v1 = *v0;
  sub_26C00B05C();
  sub_26C00A58C();

  return sub_26C00B0CC();
}

uint64_t sub_26BE722D8()
{
  *v0;
  *v0;
  sub_26C00A58C();
}

uint64_t sub_26BE7236C()
{
  v1 = *v0;
  sub_26C00B05C();
  sub_26C00A58C();

  return sub_26C00B0CC();
}

uint64_t sub_26BE72410@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26BE77514();
  *a2 = result;
  return result;
}

void sub_26BE72440(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEB00000000657461;
  v5 = 0x6369666974726563;
  if (v2 != 1)
  {
    v5 = 0x4B65746176697270;
    v4 = 0xEA00000000007965;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701667182;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_26BE724A4()
{
  v1 = 0x6369666974726563;
  if (*v0 != 1)
  {
    v1 = 0x4B65746176697270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_26BE72504@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26BE77514();
  *a1 = result;
  return result;
}

uint64_t sub_26BE7252C(uint64_t a1)
{
  v2 = sub_26BE7788C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BE72568(uint64_t a1)
{
  v2 = sub_26BE7788C();

  return MEMORY[0x2821FE720](a1, v2);
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MockRoot.init(name:)(SwiftMLS::MockRoot *__return_ptr retstr, Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v113 = retstr;
  v2 = sub_26C00978C();
  v123 = *(v2 - 8);
  v124 = v2;
  v3 = *(v123 + 64);
  MEMORY[0x28223BE20](v2);
  v128 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_26C00A35C();
  v118 = *(v116 - 8);
  v5 = *(v118 + 8);
  MEMORY[0x28223BE20](v116);
  v117 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C00A25C();
  v114 = *(v7 - 8);
  v115 = v7;
  v8 = *(v114 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26C00A34C();
  v126 = *(v11 - 8);
  v127 = v11;
  v12 = *(v126 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26C00A1EC();
  v121 = *(v15 - 8);
  v122 = v15;
  v16 = *(v121 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C00A1DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8F8, &qword_26C012610);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_26C0125A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E900, &qword_26C012618);
  v20 = swift_allocObject();
  v130 = xmmword_26C011280;
  *(v20 + 16) = xmmword_26C011280;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E548, &qword_26C00E4C0);
  v21 = swift_allocObject();
  v129 = xmmword_26C0125B0;
  *(v21 + 16) = xmmword_26C0125B0;
  v22 = *MEMORY[0x277CDC450];
  *(v21 + 32) = sub_26C00A48C();
  *(v21 + 40) = v23;
  *(v21 + 48) = 21333;
  *(v21 + 56) = 0xE200000000000000;
  *(v20 + 32) = v21;
  *(v19 + 32) = v20;
  v24 = swift_allocObject();
  *(v24 + 16) = v130;
  v25 = swift_allocObject();
  *(v25 + 16) = v129;
  v26 = *MEMORY[0x277CDC458];
  *(v25 + 32) = sub_26C00A48C();
  *(v25 + 40) = v27;
  *(v25 + 48) = 0x6E4920656C707041;
  *(v25 + 56) = 0xEA00000000002E63;
  *(v24 + 32) = v25;
  *(v19 + 40) = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = v130;
  v29 = swift_allocObject();
  *(v29 + 16) = v129;
  v30 = *MEMORY[0x277CDC448];
  *(v29 + 32) = sub_26C00A48C();
  *(v29 + 40) = v31;
  v133 = 0;
  v134 = 0xE000000000000000;
  sub_26C00AC1C();

  v133 = 0xD000000000000018;
  v134 = 0x800000026C02B3E0;
  MEMORY[0x26D699090](countAndFlagsBits, object);
  v32 = v134;
  *(v29 + 48) = v133;
  *(v29 + 56) = v32;
  *(v28 + 32) = v29;
  *(v19 + 48) = v28;
  v120 = v18;
  v33 = sub_26C00A19C();
  v34 = MEMORY[0x26D698CF0](v33);
  v36 = v35;
  (*(v114 + 8))(v10, v115);
  sub_26BE7737C(&qword_28045E908, MEMORY[0x277CC5598]);
  v38 = v116;
  v37 = v117;
  sub_26C009BFC();
  sub_26BE00608(v34, v36);
  v39 = v119;
  sub_26BE770BC(v34, v36);
  sub_26BE00258(v34, v36);
  sub_26C009BDC();
  sub_26BE00258(v34, v36);
  v40 = v128;
  (*(v118 + 1))(v37, v38);
  sub_26C00977C();
  v133 = 1;
  v41 = MEMORY[0x277D83B88];
  sub_26C00976C();
  if (v39)
  {

    (*(v123 + 8))(v40, v124);
    (*(v126 + 8))(v14, v127);
    (*(v121 + 8))(v120, v122);
    return;
  }

  v118 = v14;
  v119 = 0;
  v117 = v19;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0125C0;
  *(inited + 32) = 0xD000000000000018;
  v115 = inited + 32;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0x800000026C02B400;
  *(inited + 48) = 0xD00000000000001DLL;
  *(inited + 56) = 0x800000026C02B420;
  v43 = *MEMORY[0x277CDC218];
  *(inited + 80) = sub_26C00A48C();
  *(inited + 88) = v44;
  *(inited + 120) = v41;
  *(inited + 96) = 157680000;
  v45 = *MEMORY[0x277CDC210];
  *(inited + 128) = sub_26C00A48C();
  *(inited + 136) = v46;
  *(inited + 168) = MEMORY[0x277D84CC0];
  *(inited + 144) = 96;
  v47 = *MEMORY[0x277CDC1E8];
  v48 = sub_26C00A48C();
  v49 = MEMORY[0x277D839B0];
  *(inited + 176) = v48;
  *(inited + 184) = v50;
  *(inited + 216) = v49;
  *(inited + 192) = 1;
  v51 = *MEMORY[0x277CDC208];
  *(inited + 224) = sub_26C00A48C();
  *(inited + 232) = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E918, &qword_26C012628);
  v53 = swift_initStackObject();
  *(v53 + 16) = v130;
  if (qword_28045DF78 != -1)
  {
    swift_once();
  }

  v54 = sub_26C00947C();
  __swift_project_value_buffer(v54, qword_28045E610);
  sub_26BE7737C(&qword_28045E920, MEMORY[0x277D6A958]);
  *(v53 + 32) = sub_26C00AEFC();
  *(v53 + 40) = v55;
  v56 = sub_26C00971C();
  v57 = sub_26BE12418(v56);
  v59 = v58;

  *(v53 + 48) = v57;
  *(v53 + 56) = v59;
  v60 = sub_26C005940(v53);
  swift_setDeallocating();
  sub_26BE2E258(v53 + 32, &qword_28045E928, &qword_26C012630);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E930, &qword_26C012638);
  *(inited + 264) = v61;
  *(inited + 240) = v60;
  v62 = *MEMORY[0x277CDC200];
  *(inited + 272) = sub_26C00A48C();
  *(inited + 280) = v63;
  v64 = swift_initStackObject();
  *(v64 + 16) = v130;
  *(v64 + 32) = 0x312E39322E352E32;
  *(v64 + 40) = 0xE900000000000034;
  v65 = v127;
  v135 = v127;
  v136 = sub_26BE7737C(&qword_28045E938, MEMORY[0x277CC5578]);
  v66 = __swift_allocate_boxed_opaque_existential_1(&v133);
  (*(v126 + 16))(v66, v118, v65);
  __swift_project_boxed_opaque_existential_1(&v133, v135);
  v67 = v119;
  sub_26C008F3C();
  v119 = v67;
  v68 = v131;
  v69 = v132;
  __swift_destroy_boxed_opaque_existential_1(&v133);
  *(v64 + 48) = v68;
  *(v64 + 56) = v69;
  v70 = sub_26C005940(v64);
  swift_setDeallocating();
  sub_26BE2E258(v64 + 32, &qword_28045E928, &qword_26C012630);
  *(inited + 312) = v61;
  *(inited + 288) = v70;
  sub_26C0055D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E940, &unk_26C014270);
  swift_arrayDestroy();
  v71 = swift_initStackObject();
  *(v71 + 16) = v129;
  v72 = *MEMORY[0x277CDC028];
  *(v71 + 32) = sub_26C00A48C();
  *(v71 + 40) = v73;
  v74 = *MEMORY[0x277CDC040];
  type metadata accessor for CFString(0);
  v76 = v75;
  *(v71 + 72) = v75;
  *(v71 + 48) = v74;
  v77 = *MEMORY[0x277CDBFE0];
  *(v71 + 80) = sub_26C00A48C();
  *(v71 + 88) = v78;
  v79 = *MEMORY[0x277CDBFF0];
  *(v71 + 120) = v76;
  *(v71 + 96) = v79;
  v80 = v74;
  v81 = v79;
  sub_26C0055D4(v71);
  swift_setDeallocating();
  v82 = swift_arrayDestroy();
  v83 = v120;
  v84 = MEMORY[0x26D698C80](v82);
  v86 = v85;
  v87 = sub_26C0090DC();
  sub_26BE00258(v84, v86);
  v88 = sub_26C00A37C();

  v89 = SecKeyCreateWithData(v87, v88, 0);

  if (v89)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E950, &qword_26C012640);
    v90 = sub_26C00A6EC();

    v91 = sub_26C00A37C();

    SelfSignedCertificate = SecGenerateSelfSignedCertificate();

    if (SelfSignedCertificate)
    {
      v93 = SecCertificateCopyData(SelfSignedCertificate);
      v94 = sub_26C00910C();
      v96 = v95;

      v97 = sub_26C0090EC();
      v133 = 0xD00000000000001CLL;
      v134 = 0x800000026C02B490;
      MEMORY[0x26D699090](v97);

      MEMORY[0x26D699090](0xD00000000000001BLL, 0x800000026C02B4B0);

      sub_26BE00258(v94, v96);
      *&v130 = v133;
      *&v129 = v134;
      v98 = sub_26C00A1AC();
      v100 = v99;
      v101 = sub_26C0090EC();
      v103 = v102;

      sub_26BE00258(v98, v100);
      (*(v123 + 8))(v128, v124);
      (*(v126 + 8))(v118, v127);
      (*(v121 + 8))(v83, v122);
      v104 = v113;
      v105 = object;
      v113->name._countAndFlagsBits = countAndFlagsBits;
      v104->name._object = v105;
      v106 = v129;
      v104->certificate._countAndFlagsBits = v130;
      v104->certificate._object = v106;
      v104->privateKey._countAndFlagsBits = v101;
      v104->privateKey._object = v103;
      return;
    }

    v133 = 0;
    v134 = 0xE000000000000000;
    sub_26C00AC1C();

    v133 = 0xD000000000000028;
    v134 = 0x800000026C02B460;
    MEMORY[0x26D699090](countAndFlagsBits, object);

    v110 = v133;
    v111 = v134;
    sub_26BE773C4();
    swift_allocError();
    *v112 = v110;
    v112[1] = v111;
    swift_willThrow();
  }

  else
  {

    v133 = 0;
    v134 = 0xE000000000000000;
    sub_26C00AC1C();

    v133 = 0xD00000000000001FLL;
    v134 = 0x800000026C02B440;
    MEMORY[0x26D699090](countAndFlagsBits, object);

    v107 = v133;
    v108 = v134;
    sub_26BE773C4();
    swift_allocError();
    *v109 = v107;
    v109[1] = v108;
    swift_willThrow();
  }

  (*(v123 + 8))(v128, v124);
  (*(v126 + 8))(v118, v127);
  (*(v121 + 8))(v83, v122);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SecCertificateRef.mlsGetPEM()()
{
  v1 = SecCertificateCopyData(v0);
  v2 = sub_26C00910C();
  v4 = v3;

  v5 = sub_26C0090EC();
  MEMORY[0x26D699090](v5);

  MEMORY[0x26D699090](0xD00000000000001BLL, 0x800000026C02B4B0);

  sub_26BE00258(v2, v4);
  v6 = 0xD00000000000001CLL;
  v7 = 0x800000026C02B490;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

double sub_26BE734C0@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_26C00A4EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  sub_26C00A4CC();
  sub_26C00A44C();
  if (!v1)
  {
    sub_26C00A4CC();
    v10 = sub_26C00A49C();
    v12 = v11;

    (*(v4 + 8))(v8, v3);
    if (v12 >> 60 == 15)
    {
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
    }

    else
    {
      v13 = sub_26C008DBC();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      sub_26C008DAC();
      sub_26BE77CA0();
      sub_26C008D9C();
      sub_26BE136AC(v10, v12);

      result = *v19;
      v16 = v19[1];
      v17 = v20;
      v18 = v21;
      *a1 = v19[0];
      *(a1 + 16) = v16;
      *(a1 + 32) = v17;
      *(a1 + 40) = v18;
    }
  }

  return result;
}

uint64_t static MockRoot.getRootCert(rootFilepath:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v67 = a3;
  v6 = sub_26C008FDC();
  v65 = *(v6 - 8);
  v66 = v6;
  v7 = *(v65 + 64);
  MEMORY[0x28223BE20](v6);
  v64 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_26C009C8C();
  v9 = *(v69 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v69);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26C009D7C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v54 - v19;
  v62 = a1;
  v63 = a2;
  sub_26BE734C0(&v68);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_26C011280;
    *(v21 + 56) = MEMORY[0x277D837D0];
    *(v21 + 32) = 0xD000000000000013;
    *(v21 + 40) = 0x800000026C02B4D0;
    sub_26C00B03C();
  }

  else
  {
    object = v68.name._object;
    if (v68.name._object)
    {
      countAndFlagsBits = v68.privateKey._countAndFlagsBits;
      v60 = v68.privateKey._object;
      v31 = v68.certificate._countAndFlagsBits;
      v63 = v68.certificate._object;
      v32 = v68.name._countAndFlagsBits;

      v33 = v32;
      v34 = object;
      goto LABEL_7;
    }
  }

  sub_26C009D6C();
  (*(v14 + 16))(v18, v20, v13);
  sub_26C009C6C();
  sub_26C009C3C();
  (*(v9 + 8))(v12, v69);
  (*(v14 + 8))(v20, v13);
  v22 = v68.name._countAndFlagsBits;
  v23 = v68.name._object;
  v24 = sub_26C0090EC();
  object = v25;

  v27._countAndFlagsBits = v24;
  v27._object = object;
  MockRoot.init(name:)(&v68, v27);
  if (v28)
  {

    return sub_26BE00258(v22, v23);
  }

  v61 = v23;
  v56 = v24;
  v42 = v68.name._countAndFlagsBits;
  v41 = v68.name._object;
  v43 = v68.certificate._object;
  v69 = v68.certificate._countAndFlagsBits;
  v44 = v68.privateKey._countAndFlagsBits;
  v45 = v68.privateKey._object;
  v46 = sub_26C008DEC();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();

  sub_26C008DDC();
  v57 = v42;
  v58 = v44;
  v68.name._countAndFlagsBits = v42;
  v68.name._object = v41;
  v68.certificate._countAndFlagsBits = v69;
  v68.certificate._object = v43;
  v68.privateKey._countAndFlagsBits = v44;
  v68.privateKey._object = v45;
  sub_26BE77418();
  v49 = sub_26C008DCC();
  v59 = v50;
  v51 = v49;
  v55 = v41;

  v52 = v64;
  sub_26C008F9C();
  v53 = v59;
  sub_26C00912C();
  sub_26BE00258(v51, v53);
  v60 = v45;

  v63 = v43;

  v34 = v55;

  sub_26BE00258(v22, v61);
  (*(v65 + 8))(v52, v66);
  v33 = v57;
  countAndFlagsBits = v58;
  v31 = v69;
  v32 = v56;
LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_26C011280;
  v68.name._countAndFlagsBits = 0;
  v68.name._object = 0xE000000000000000;
  sub_26C00AC1C();

  v68.name._countAndFlagsBits = 0x20676E697355;
  v68.name._object = 0xE600000000000000;
  MEMORY[0x26D699090](v32, object);

  MEMORY[0x26D699090](0x746F6F7220736120, 0xE800000000000000);
  v36 = v68.name._countAndFlagsBits;
  v37 = v68.name._object;
  *(v35 + 56) = MEMORY[0x277D837D0];
  *(v35 + 32) = v36;
  *(v35 + 40) = v37;
  sub_26C00B03C();

  v38 = v67;
  *v67 = v33;
  v38[1] = v34;
  v39 = v63;
  v38[2] = v31;
  v38[3] = v39;
  v40 = v60;
  v38[4] = countAndFlagsBits;
  v38[5] = v40;
  return result;
}

void static MockRoot.getAnchors(anchorFilepaths:)(void *a1)
{
  v2 = v1;
  v26 = sub_26C00A4EC();
  v4 = *(v26 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v26);
  v25 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D84F90];
  v30 = MEMORY[0x277D84F90];
  v8 = a1[2];
  if (!v8)
  {
LABEL_14:
    if (v7 >> 62)
    {
      if (sub_26C00AB8C())
      {
        return;
      }
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_26C011280;
    *(v22 + 56) = MEMORY[0x277D837D0];
    *(v22 + 32) = 0xD000000000000015;
    *(v22 + 40) = 0x800000026C02B4F0;
    sub_26C00B03C();

    return;
  }

  v10 = a1[4];
  v9 = a1[5];

  static MockRoot.getRootCert(rootFilepath:)(v10, v9, v29);
  if (v2)
  {
LABEL_3:
  }

  else
  {
    v24 = (v4 + 8);
    v11 = (a1 + 7);
    while (1)
    {
      v27 = v29[1];
      v28 = v2;
      v12 = v25;
      sub_26C00A4CC();
      v13 = sub_26C00A49C();
      v15 = v14;
      (*v24)(v12, v26);
      if (v15 >> 60 == 15)
      {
        v16 = 0;
      }

      else
      {
        v16 = sub_26C0090DC();
        sub_26BE136AC(v13, v15);
      }

      v17 = SecCertificateCreateWithPEM();

      if (!v17)
      {
        break;
      }

      v18 = v17;
      MEMORY[0x26D699190]();
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v21 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_26C00A72C();
      }

      sub_26C00A75C();

      v7 = v30;
      --v8;
      v2 = v28;
      if (!v8)
      {
        goto LABEL_14;
      }

      v20 = *(v11 - 1);
      v19 = *v11;

      static MockRoot.getRootCert(rootFilepath:)(v20, v19, v29);
      v11 += 2;
      if (v2)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
  }
}

void MockRoot.rootCertificate.getter()
{
  v1 = sub_26C00A4EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  sub_26C00A4CC();
  v8 = sub_26C00A49C();
  v10 = v9;
  (*(v2 + 8))(v5, v1);
  v11 = 0;
  if (v10 >> 60 != 15)
  {
    v11 = sub_26C0090DC();
    sub_26BE136AC(v8, v10);
  }

  v12 = SecCertificateCreateWithPEM();

  if (!v12)
  {
    __break(1u);
  }
}

void sub_26BE74178()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E9D0, &qword_26C012868);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v56 - v3;
  v62 = sub_26C00A1EC();
  v5 = *(v62 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v62);
  v59 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C00A4EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v0[1];
  v57 = *v0;
  v58 = v13;
  v14 = v0[2];
  v15 = v0[3];
  v17 = v0[4];
  v16 = v0[5];
  sub_26C00A4CC();
  v18 = sub_26C00A49C();
  v20 = v19;
  (*(v9 + 8))(v12, v8);
  v21 = 0;
  if (v20 >> 60 != 15)
  {
    v21 = sub_26C0090DC();
    sub_26BE136AC(v18, v20);
  }

  v22 = SecCertificateCreateWithPEM();

  if (v22)
  {
    v23 = sub_26C00903C();
    v25 = v62;
    v26 = v59;
    if (v24 >> 60 == 15)
    {
LABEL_7:
      (*(v5 + 56))(v4, 1, 1, v25);
      sub_26BE2E258(v4, &qword_28045E9D0, &qword_26C012868);
      v60 = 0;
      v61 = 0xE000000000000000;
      sub_26C00AC1C();

      v60 = 0xD000000000000026;
      v61 = 0x800000026C02B580;
      MEMORY[0x26D699090](v57, v58);
      v28 = v60;
      v29 = v61;
      sub_26BE773C4();
      swift_allocError();
      *v30 = v28;
      v30[1] = v29;
      swift_willThrow();

      return;
    }

    v60 = v23;
    v61 = v24;
    v27 = v56[1];
    sub_26C00A1BC();
    if (v27)
    {

      goto LABEL_7;
    }

    (*(v5 + 56))(v4, 0, 1, v25);
    (*(v5 + 32))(v26, v4, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0125B0;
    v32 = *MEMORY[0x277CDC028];
    *(inited + 32) = sub_26C00A48C();
    *(inited + 40) = v33;
    v34 = *MEMORY[0x277CDC040];
    type metadata accessor for CFString(0);
    v36 = v35;
    *(inited + 72) = v35;
    *(inited + 48) = v34;
    v37 = *MEMORY[0x277CDBFE0];
    *(inited + 80) = sub_26C00A48C();
    *(inited + 88) = v38;
    v39 = *MEMORY[0x277CDBFF0];
    *(inited + 120) = v36;
    *(inited + 96) = v39;
    v40 = v34;
    v41 = v39;
    sub_26C0055D4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E940, &unk_26C014270);
    v42 = swift_arrayDestroy();
    v43 = MEMORY[0x26D698C80](v42);
    v45 = v44;
    v46 = sub_26C0090DC();
    sub_26BE00258(v43, v45);
    v47 = sub_26C00A37C();

    v48 = SecKeyCreateWithData(v46, v47, 0);

    if (v48)
    {
      v49 = v62;
      if (SecIdentityCreate())
      {
        (*(v5 + 8))(v59, v49);
      }

      else
      {
        v60 = 0;
        v61 = 0xE000000000000000;
        sub_26C00AC1C();

        v60 = 0xD00000000000001CLL;
        v61 = 0x800000026C02B5B0;
        MEMORY[0x26D699090](v57, v58);
        v53 = v60;
        v54 = v61;
        sub_26BE773C4();
        swift_allocError();
        *v55 = v53;
        v55[1] = v54;
        swift_willThrow();

        (*(v5 + 8))(v59, v49);
      }
    }

    else
    {
      v60 = 0;
      v61 = 0xE000000000000000;
      sub_26C00AC1C();

      v60 = 0xD00000000000001FLL;
      v61 = 0x800000026C02B440;
      MEMORY[0x26D699090](v57, v58);
      v50 = v60;
      v51 = v61;
      sub_26BE773C4();
      swift_allocError();
      *v52 = v50;
      v52[1] = v51;
      swift_willThrow();

      (*(v5 + 8))(v59, v62);
    }
  }

  else
  {
    __break(1u);
  }
}

char *sub_26BE74790()
{
  v1 = sub_26C00934C();
  v66 = *(v1 - 8);
  v67 = v1;
  v2 = *(v66 + 64);
  MEMORY[0x28223BE20](v1);
  v64 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26C00978C();
  v68 = *(v4 - 8);
  v5 = *(v68 + 64);
  MEMORY[0x28223BE20](v4);
  v65 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_26C00A35C();
  v59 = *(v61 - 8);
  v7 = *(v59 + 64);
  MEMORY[0x28223BE20](v61);
  v58 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C00A25C();
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26C00A34C();
  v62 = *(v13 - 8);
  v63 = v13;
  v14 = *(v62 + 64);
  MEMORY[0x28223BE20](v13);
  v60 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E9D0, &qword_26C012868);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v53 - v18;
  v20 = sub_26C00A1EC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v0;
  v25 = v0[1];
  v27 = v0[4];
  v28 = v0[5];
  v29 = sub_26C00903C();
  if (v30 >> 60 != 15)
  {
    v55 = v4;
    v71 = v29;
    v72 = v30;
    v31 = v75;
    sub_26C00A1BC();
    if (!v31)
    {
      (*(v21 + 56))(v19, 0, 1, v20);
      v36 = *(v21 + 32);
      v75 = v20;
      v36(v24, v19, v20);
      v54 = v24;
      v37 = sub_26C00A19C();
      v38 = MEMORY[0x26D698CF0](v37);
      v40 = v39;
      (*(v56 + 8))(v12, v57);
      sub_26BE7737C(&qword_28045E908, MEMORY[0x277CC5598]);
      v41 = v58;
      v42 = v61;
      sub_26C009BFC();
      sub_26BE00608(v38, v40);
      sub_26BE770BC(v38, v40);
      sub_26BE00258(v38, v40);
      v43 = v60;
      sub_26C009BDC();
      sub_26BE00258(v38, v40);
      (*(v59 + 8))(v41, v42);
      v44 = v63;
      v73 = v63;
      v74 = sub_26BE7737C(&qword_28045E938, MEMORY[0x277CC5578]);
      v45 = __swift_allocate_boxed_opaque_existential_1(&v71);
      v46 = v62;
      (*(v62 + 16))(v45, v43, v44);
      __swift_project_boxed_opaque_existential_1(&v71, v73);
      sub_26C008F3C();
      (*(v46 + 8))(v43, v44);
      v47 = v69;
      v48 = v70;
      __swift_destroy_boxed_opaque_existential_1(&v71);
      v49 = v65;
      sub_26C00977C();
      v50 = v64;
      v51 = _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
      MEMORY[0x28223BE20](v51);
      *(&v53 - 2) = v47;
      *(&v53 - 1) = v48;
      sub_26C00973C();
      (*(v66 + 8))(v50, v67);
      v52 = sub_26C00971C();
      v19 = sub_26BE12418(v52);

      sub_26BE00258(v47, v48);
      (*(v68 + 8))(v49, v55);
      (*(v21 + 8))(v54, v75);
      return v19;
    }
  }

  (*(v21 + 56))(v19, 1, 1, v20);
  sub_26BE2E258(v19, &qword_28045E9D0, &qword_26C012868);
  v71 = 0;
  v72 = 0xE000000000000000;
  sub_26C00AC1C();

  v71 = 0xD000000000000013;
  v72 = 0x800000026C02B560;
  MEMORY[0x26D699090](v26, v25);
  v32 = v71;
  v33 = v72;
  sub_26BE773C4();
  swift_allocError();
  *v34 = v32;
  v34[1] = v33;
  swift_willThrow();
  return v19;
}

uint64_t sub_26BE74F74(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_26C00930C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_26C00934C();
  v10 = *(v22 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v22);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E9D8, &qword_26C012870);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v21 - v16;
  sub_26BE00608(a2, a3);
  v18 = (2 * *(sub_26BF2E8B4(a2, a3) + 16)) | 1;
  sub_26C00939C();
  v19 = sub_26C0093DC();
  (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
  (*(v6 + 104))(v9, *MEMORY[0x277D6A898], v5);
  sub_26C0092EC();
  sub_26C00974C();
  (*(v10 + 8))(v13, v22);
  return sub_26BE2E258(v17, &qword_28045E9D8, &qword_26C012870);
}

uint64_t sub_26BE75204()
{
  v0 = sub_26C00934C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
  sub_26C00973C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_26BE75300()
{
  if (qword_28045DF58 != -1)
  {
    swift_once();
  }

  v0 = sub_26C00947C();
  __swift_project_value_buffer(v0, qword_28045E5B0);
  return sub_26C00976C();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MockRoot.signCSR(csrJson:)(Swift::String csrJson)
{
  v181 = *MEMORY[0x277D85DE8];
  v3 = sub_26C00934C();
  v141 = *(v3 - 8);
  v142 = v3;
  v4 = *(v141 + 64);
  MEMORY[0x28223BE20](v3);
  v139 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C00978C();
  v143 = *(v6 - 8);
  v144 = v6;
  v7 = *(v143 + 64);
  MEMORY[0x28223BE20](v6);
  v140 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C00A35C();
  v147 = *(v9 - 8);
  v148 = v9;
  v10 = *(v147 + 64);
  MEMORY[0x28223BE20](v9);
  v146 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26C00A34C();
  v149 = *(v12 - 8);
  v150 = v12;
  v13 = *(v149 + 64);
  MEMORY[0x28223BE20](v12);
  v151 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_26C009C8C();
  v157 = *(v155 - 8);
  v15 = *(v157 + 64);
  MEMORY[0x28223BE20](v155);
  v145 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v154 = sub_26C009D7C();
  v156 = *(v154 - 8);
  v17 = *(v156 + 64);
  v18 = MEMORY[0x28223BE20](v154);
  v152 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v153 = &v128 - v20;
  v21 = sub_26C00A4EC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v1;
  v161 = v1[1];
  v162 = v26;
  v28 = v1[2];
  v27 = v1[3];
  v29 = v1[5];
  v159 = v1[4];
  v160 = v27;
  v158 = v29;
  v30 = sub_26C008DBC();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = sub_26C008DAC();
  sub_26C00A4CC();
  v34 = sub_26C00A49C();
  v36 = v35;
  (*(v22 + 8))(v25, v21);
  if (v36 >> 60 == 15)
  {
    __break(1u);
  }

  sub_26BE7746C();
  sub_26C008D9C();
  if (!v2)
  {
    sub_26BE136AC(v34, v36);

    v173 = v177;
    v174 = v178;
    v175 = v179;
    v176 = v180;
    v171 = 0;
    v172 = 0;
    v33 = sub_26C0090DC();
    v37 = SecVerifyCertificateRequest();

    if (v37)
    {
      v33 = v172;
      if (v172)
      {
        if (v171)
        {
          v36 = v171;
          v38 = v33;
          v39 = SecKeyCopyExternalRepresentation(v38, 0);
          if (v39)
          {
            v40 = v39;
            *&v166 = v162;
            *(&v166 + 1) = v161;
            v167 = v28;
            v168 = v160;
            v169 = v159;
            v170 = v158;
            sub_26BE74178();
            v128 = v36;
            v138 = v41;
            v130 = v38;
            v132 = v28;
            v46 = v153;
            sub_26C009D6C();
            v47 = v156;
            v48 = *(v156 + 16);
            v136 = v156 + 16;
            v137 = v48;
            v49 = v154;
            (v48)(v152, v46);
            v50 = v145;
            sub_26C009C6C();
            v135 = sub_26BE0FE74;
            sub_26C009C3C();
            v131 = 0;
            v51 = *(v157 + 8);
            v157 += 8;
            v134 = v51;
            v51(v50, v155);
            v52 = *(v47 + 8);
            v156 = v47 + 8;
            v133 = v52;
            v52(v46, v49);
            v165 = v166;
            sub_26C0090BC();
            v53 = v40;
            v54 = sub_26C00910C();
            v56 = v55;
            v129 = v53;

            sub_26BE7737C(&qword_28045E908, MEMORY[0x277CC5598]);
            v57 = v146;
            v58 = v148;
            sub_26C009BFC();
            sub_26BE00608(v54, v56);
            v59 = v131;
            sub_26BE770BC(v54, v56);
            v131 = v59;
            sub_26BE00258(v54, v56);
            v60 = v151;
            sub_26C009BDC();
            sub_26BE00258(v54, v56);
            (*(v147 + 8))(v57, v58);
            v61 = v153;
            sub_26C009D6C();
            v62 = v154;
            v137(v152, v61, v154);
            sub_26C009C6C();
            v63 = v131;
            sub_26C009C3C();
            v134(v50, v155);
            v133(v61, v62);
            v36 = *(&v166 + 1);
            v64 = v166;
            *&v166 = v162;
            *(&v166 + 1) = v161;
            v167 = v132;
            v168 = v160;
            v169 = v159;
            v170 = v158;
            v33 = &v166;
            v65 = sub_26BE74790();
            if (v63)
            {
              (*(v149 + 8))(v60, v150);

              sub_26BE00258(v64, v36);
              sub_26BE3B0A4(&v173);
            }

            else
            {
              v67 = v65;
              v68 = v66;
              v69 = v140;
              sub_26C00977C();
              v70 = v139;
              _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
              sub_26C00973C();
              v158 = v67;
              v159 = v68;
              v157 = v64;
              v153 = v36;
              v160 = 0;
              (*(v141 + 8))(v70, v142);
              v71 = sub_26C00971C();
              v152 = sub_26BE12418(v71);
              v156 = v72;

              (*(v143 + 8))(v69, v144);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E910, &qword_26C012620);
              inited = swift_initStackObject();
              *(inited + 32) = 0xD000000000000018;
              v148 = inited + 32;
              *(inited + 16) = xmmword_26C0125E0;
              *(inited + 72) = MEMORY[0x277D837D0];
              *(inited + 40) = 0x800000026C02B400;
              *(inited + 48) = 0xD00000000000001DLL;
              *(inited + 56) = 0x800000026C02B420;
              v74 = *MEMORY[0x277CDC218];
              *(inited + 80) = sub_26C00A48C();
              *(inited + 88) = v75;
              *(inited + 120) = MEMORY[0x277D83B88];
              *(inited + 96) = 6480000;
              v76 = *MEMORY[0x277CDC210];
              *(inited + 128) = sub_26C00A48C();
              *(inited + 136) = v77;
              *(inited + 168) = MEMORY[0x277D84CC0];
              *(inited + 144) = 1;
              v78 = *MEMORY[0x277CDC1F8];
              *(inited + 176) = sub_26C00A48C();
              *(inited + 184) = v79;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E548, &qword_26C00E4C0);
              v80 = swift_allocObject();
              v154 = xmmword_26C011280;
              *(v80 + 16) = xmmword_26C011280;
              if (qword_28045DF60 != -1)
              {
                swift_once();
              }

              v81 = sub_26C00947C();
              __swift_project_value_buffer(v81, qword_28045E5C8);
              v155 = sub_26BE7737C(&qword_28045E920, MEMORY[0x277D6A958]);
              *(v80 + 32) = sub_26C00AEFC();
              *(v80 + 40) = v82;
              *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
              *(inited + 192) = v80;
              v83 = *MEMORY[0x277CDC570];
              *(inited + 224) = sub_26C00A48C();
              *(inited + 232) = v84;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E970, &qword_26C012650);
              v85 = swift_initStackObject();
              *(v85 + 16) = v154;
              v86 = *MEMORY[0x277CDC580];
              *(v85 + 32) = sub_26C00A48C();
              *(v85 + 40) = v87;
              v88 = *(&v175 + 1);
              *(v85 + 48) = v175;
              *(v85 + 56) = v88;

              v89 = sub_26C005A58(v85);
              swift_setDeallocating();
              sub_26BE2E258(v85 + 32, &qword_28045E978, &qword_26C012658);
              *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E980, &qword_26C012660);
              *(inited + 240) = v89;
              v90 = *MEMORY[0x277CDC200];
              *(inited + 272) = sub_26C00A48C();
              *(inited + 280) = v91;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E918, &qword_26C012628);
              v92 = swift_initStackObject();
              *(v92 + 16) = v154;
              *(v92 + 32) = 0x312E39322E352E32;
              *(v92 + 40) = 0xE900000000000034;
              v93 = v150;
              v168 = v150;
              v169 = sub_26BE7737C(&qword_28045E938, MEMORY[0x277CC5578]);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v166);
              (*(v149 + 16))(boxed_opaque_existential_1, v151, v93);
              __swift_project_boxed_opaque_existential_1(&v166, v168);
              v95 = v160;
              sub_26C008F3C();
              v160 = v95;
              v96 = v163;
              v97 = v164;
              __swift_destroy_boxed_opaque_existential_1(&v166);
              *(v92 + 48) = v96;
              *(v92 + 56) = v97;
              v98 = sub_26C005940(v92);
              swift_setDeallocating();
              sub_26BE2E258(v92 + 32, &qword_28045E928, &qword_26C012630);
              v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E930, &qword_26C012638);
              *(inited + 312) = v99;
              *(inited + 288) = v98;
              v100 = *MEMORY[0x277CDC208];
              *(inited + 320) = sub_26C00A48C();
              *(inited + 328) = v101;
              v102 = swift_allocObject();
              *(v102 + 16) = xmmword_26C0125F0;
              if (qword_28045DF68 != -1)
              {
                swift_once();
              }

              __swift_project_value_buffer(v81, qword_28045E5E0);
              *(v102 + 32) = sub_26C00AEFC();
              *(v102 + 40) = v103;
              v104 = v174;
              *(v102 + 48) = v174;
              sub_26BE00608(v104, *(&v104 + 1));
              v106 = v152;
              v105 = v153;
              v107 = v156;
              if (qword_28045DF70 != -1)
              {
                swift_once();
              }

              __swift_project_value_buffer(v81, qword_28045E5F8);
              *(v102 + 64) = sub_26C00AEFC();
              *(v102 + 72) = v108;
              v109 = v157;
              v110 = v158;
              *(v102 + 80) = v157;
              *(v102 + 88) = v105;
              *(v102 + 96) = 0x332E39322E352E32;
              *(v102 + 104) = 0xE900000000000035;
              v111 = v159;
              *(v102 + 112) = v110;
              *(v102 + 120) = v111;
              *(v102 + 128) = 0x332E39322E352E32;
              *(v102 + 136) = 0xE900000000000032;
              *(v102 + 144) = v106;
              *(v102 + 152) = v107;
              sub_26BE00608(v109, v105);
              sub_26BE00608(v110, v111);
              sub_26BE00608(v106, v107);
              v112 = sub_26C005940(v102);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E928, &qword_26C012630);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              *(inited + 360) = v99;
              *(inited + 336) = v112;
              sub_26C0055D4(inited);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E940, &unk_26C014270);
              swift_arrayDestroy();
              v113 = sub_26C0090DC();
              v114 = v128;
              v115 = sub_26C00A37C();

              v116 = v130;
              v117 = v105;
              v118 = SecIdentitySignCertificateWithParameters();

              if (v118)
              {
                v119 = SecCertificateCopyData(v118);
                v120 = sub_26C00910C();
                v122 = v121;

                v123 = sub_26C0090EC();
                *&v166 = 0xD00000000000001CLL;
                *(&v166 + 1) = 0x800000026C02B490;
                MEMORY[0x26D699090](v123);

                MEMORY[0x26D699090](0xD00000000000001BLL, 0x800000026C02B4B0);

                sub_26BE00258(v120, v122);
                v36 = *(&v166 + 1);
                v33 = v166;
                sub_26BE3B0A4(&v173);

                sub_26BE00258(v152, v156);
                sub_26BE00258(v158, v159);
                sub_26BE00258(v157, v153);

                (*(v149 + 8))(v151, v150);
                sub_26BE00258(v165, *(&v165 + 1));

                goto LABEL_12;
              }

              *&v166 = 0;
              *(&v166 + 1) = 0xE000000000000000;
              sub_26C00AC1C();
              MEMORY[0x26D699090](0xD000000000000024, 0x800000026C02B510);
              v125 = *(&v176 + 1);
              v124 = v176;

              MEMORY[0x26D699090](v124, v125);

              MEMORY[0x26D699090](0x6F72206874697720, 0xEB0000000020746FLL);
              MEMORY[0x26D699090](v162, v161);
              v36 = *(&v166 + 1);
              v33 = v166;
              sub_26BE773C4();
              swift_allocError();
              *v126 = __PAIR128__(v36, v33);
              swift_willThrow();

              sub_26BE3B0A4(&v173);
              sub_26BE00258(v106, v156);
              sub_26BE00258(v158, v159);
              sub_26BE00258(v157, v117);

              (*(v149 + 8))(v151, v150);
            }

            sub_26BE00258(v165, *(&v165 + 1));
            goto LABEL_11;
          }
        }
      }
    }

    sub_26BE773C4();
    swift_allocError();
    *v42 = xmmword_26C0125D0;
    swift_willThrow();
    sub_26BE3B0A4(&v173);
LABEL_11:

    goto LABEL_12;
  }

  sub_26BE136AC(v34, v36);

LABEL_12:
  v43 = *MEMORY[0x277D85DE8];
  v44 = v33;
  v45 = v36;
  result._object = v45;
  result._countAndFlagsBits = v44;
  return result;
}

uint64_t MockRoot.signCSR(_:)(__int128 *a1)
{
  v4 = sub_26C00A4EC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v26 = *v1;
  v21 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = sub_26C008DEC();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_26C008DDC();
  v22 = *a1;
  v23 = a1[1];
  v24 = a1[2];
  v25 = a1[3];
  sub_26BE774C0();
  countAndFlagsBits = sub_26C008DCC();
  v15 = v14;

  if (v2)
  {
    return countAndFlagsBits;
  }

  sub_26C00A4CC();
  v16 = sub_26C00A4AC();
  v18 = v17;
  result = sub_26BE00258(countAndFlagsBits, v15);
  if (v18)
  {
    v20._countAndFlagsBits = v16;
    v20._object = v18;
    countAndFlagsBits = MockRoot.signCSR(csrJson:)(v20)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  __break(1u);
  return result;
}

uint64_t MockRoot.signCSRAndReturnFullChain(_:)(__int128 *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v9 = *v1;
  v11 = v1[1];
  v13 = v1[4];
  v14 = v1[5];
  v5 = MockRoot.signCSR(_:)(a1);
  if (!v2)
  {
    v10 = v5;
    v12 = v6;

    MEMORY[0x26D699090](v3, v4);

    sub_26BE77560(v10, v12);
    v3 = v7;
  }

  return v3;
}

uint64_t MockRoot.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E990, &qword_26C012668);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BE7788C();
  sub_26C00B10C();
  v18 = 0;
  v13 = v15[5];
  sub_26C00AE9C();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_26C00AE9C();
  v16 = 2;
  sub_26C00AE9C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t MockRoot.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E9A0, &qword_26C012670);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BE7788C();
  sub_26C00B0FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_26C00AE1C();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_26C00AE1C();
  v23 = v14;
  v25 = 2;
  v15 = sub_26C00AE1C();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);
  v19 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static SecCertificateRef.mlsPEMChainFromCertificates(_:)(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26C00AB8C())
  {
    v3 = 0;
    v16 = v1 & 0xC000000000000001;
    v14 = v1;
    v15 = v1 & 0xFFFFFFFFFFFFFF8;
    v13 = i;
    while (1)
    {
      if (v16)
      {
        v4 = MEMORY[0x26D6996F0](v3, v1);
      }

      else
      {
        if (v3 >= *(v15 + 16))
        {
          goto LABEL_12;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = SecCertificateCopyData(v4);
      v8 = sub_26C00910C();
      v10 = v9;

      v11 = sub_26C0090EC();
      MEMORY[0x26D699090](v11);

      MEMORY[0x26D699090](0xD00000000000001BLL, 0x800000026C02B4B0);

      sub_26BE00258(v8, v10);

      MEMORY[0x26D699090](0xD00000000000001CLL, 0x800000026C02B490);

      v1 = v14;

      ++v3;
      if (v6 == v13)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return 0;
}

_BYTE *sub_26BE77028@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_26BF2EA50(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_26BF2EB08(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_26BF2EB84(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_26BE770BC(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_26C00A35C();
      sub_26BE7737C(&qword_28045E908, MEMORY[0x277CC5598]);
      result = sub_26C009BCC();
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

  result = sub_26BE7729C(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BE7729C(uint64_t a1, uint64_t a2)
{
  result = sub_26C008E9C();
  if (!result || (result = sub_26C008ECC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_26C008EBC();
      sub_26C00A35C();
      sub_26BE7737C(&qword_28045E908, MEMORY[0x277CC5598]);
      return sub_26C009BCC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26BE7737C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26BE773C4()
{
  result = qword_28045E948;
  if (!qword_28045E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E948);
  }

  return result;
}

unint64_t sub_26BE77418()
{
  result = qword_28045E960;
  if (!qword_28045E960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E960);
  }

  return result;
}

unint64_t sub_26BE7746C()
{
  result = qword_28045E968;
  if (!qword_28045E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E968);
  }

  return result;
}

unint64_t sub_26BE774C0()
{
  result = qword_28045E988;
  if (!qword_28045E988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E988);
  }

  return result;
}

uint64_t sub_26BE77514()
{
  v0 = sub_26C00ADCC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void sub_26BE77560(uint64_t a1, uint64_t a2)
{
  v27 = sub_26C00A4EC();
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v27);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = a1;
  *(&v28 + 1) = a2;
  v31 = 0xD00000000000001BLL;
  v32 = 0x800000026C02B540;
  v26 = 0x800000026C02B540;
  sub_26BE77BDC();
  v7 = sub_26C00A90C();
  v8 = v7;
  v33 = MEMORY[0x277D84F90];
  v24 = *(v7 + 16);
  if (v24)
  {
    v9 = 0;
    v23 = (v4 + 8);
    v10 = (v7 + 56);
    while (v9 < *(v8 + 16))
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v31 = 0xD00000000000001BLL;
      v32 = v26;
      v28 = *(v10 - 3);
      v29 = v11;
      v30 = v12;
      sub_26BE77C30();

      sub_26C00A5CC();
      v13 = v25;
      sub_26C00A4CC();
      v14 = sub_26C00A49C();
      v16 = v15;
      (*v23)(v13, v27);
      if (v16 >> 60 == 15)
      {

        sub_26BE773C4();
        swift_allocError();
        *v21 = xmmword_26C012600;
        swift_willThrow();

        return;
      }

      v17 = sub_26C0090DC();
      v18 = SecCertificateCreateWithPEM();

      if (!v18)
      {
        goto LABEL_12;
      }

      v19 = v18;

      sub_26BE136AC(v14, v16);

      MEMORY[0x26D699190]();
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v20 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_26C00A72C();
      }

      ++v9;
      sub_26C00A75C();
      v10 += 4;
      if (v24 == v9)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_9:
  }
}

unint64_t sub_26BE7788C()
{
  result = qword_28045E998;
  if (!qword_28045E998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E998);
  }

  return result;
}

uint64_t sub_26BE778E0(uint64_t a1, int a2)
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

uint64_t sub_26BE77928(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for MockRoot.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MockRoot.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26BE77AD8()
{
  result = qword_28045E9A8;
  if (!qword_28045E9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E9A8);
  }

  return result;
}

unint64_t sub_26BE77B30()
{
  result = qword_28045E9B0;
  if (!qword_28045E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E9B0);
  }

  return result;
}

unint64_t sub_26BE77B88()
{
  result = qword_28045E9B8;
  if (!qword_28045E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E9B8);
  }

  return result;
}

unint64_t sub_26BE77BDC()
{
  result = qword_28045E9C0;
  if (!qword_28045E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E9C0);
  }

  return result;
}

unint64_t sub_26BE77C30()
{
  result = qword_28045E9C8;
  if (!qword_28045E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E9C8);
  }

  return result;
}

unint64_t sub_26BE77CA0()
{
  result = qword_28045E9E0;
  if (!qword_28045E9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E9E0);
  }

  return result;
}

void MLS.Capabilities.init()(void *a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v1;
  a1[2] = v1;
  a1[3] = v1;
  a1[4] = &unk_287CB9BF8;
}

uint64_t MLS.Capabilities.init(versions:ciphersuites:extensions:proposals:credentials:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_26BE77DB0@<X0>(uint64_t a1@<X8>)
{
  v107 = *MEMORY[0x277D85DE8];
  v5 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  sub_26BE00608(*v1, v4);
  sub_26BE00608(v5, v4);
  sub_26BF30764(v1, &v105);
  if (v2)
  {
    sub_26BE00258(*v1, v1[1]);
    *v1 = v5;
    v1[1] = v4;
    v1[2] = v6;
LABEL_3:
    swift_willThrow();
LABEL_4:
    sub_26BE00258(*v1, v1[1]);
    *v1 = v5;
    v1[1] = v4;
    v1[2] = v6;
    goto LABEL_9;
  }

  if (v106)
  {
    sub_26BE00258(*v1, v1[1]);
    *v1 = v5;
    v1[1] = v4;
    v7 = v4;
    v8 = v5;
    v1[2] = v6;
LABEL_7:
    sub_26BE00258(v8, v7);
    *v1 = v5;
    v1[1] = v4;
    v1[2] = v6;
    goto LABEL_8;
  }

  v12 = v105;
  sub_26BE00258(v5, v4);
  if (v12 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v13 = 5;
    goto LABEL_3;
  }

  v102 = v4;
  result = sub_26BF2A44C(v12);
  if (v14 >> 60 == 15)
  {
    v8 = *v1;
    v7 = v1[1];
    goto LABEL_7;
  }

  v16 = v15;
  v100 = v6;
  v101 = v1;
  v98 = a1;
  v99 = 0;
  v17 = v14 >> 62;
  v103 = result >> 32;
  v18 = MEMORY[0x277D84F90];
  v104 = BYTE6(v14);
  if ((v14 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(result + 24);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = BYTE6(v14);
    if (v17)
    {
      v19 = result >> 32;
    }
  }

  v20 = __OFSUB__(v19, v15);
  v21 = v19 - v15;
  if (v20)
  {
    __break(1u);
    goto LABEL_81;
  }

  if (v21 >= 1)
  {
    v22 = v15 + 2;
    if (!__OFADD__(v15, 2))
    {
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          if (v22 > 0)
          {
LABEL_38:
            v24 = result;
            v25 = v14;
            v27 = 1;
            goto LABEL_39;
          }

          goto LABEL_32;
        }

        v23 = *(result + 24);
      }

      else
      {
        v23 = BYTE6(v14);
        if (v17)
        {
          v23 = result >> 32;
        }
      }

      if (v23 < v22)
      {
        goto LABEL_38;
      }

LABEL_32:
      v105 = result;
      v106 = v14;
      if (v22 >= v15)
      {
        v24 = result;
        v25 = v14;
        sub_26BE00608(result, v14);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
        sub_26BE016A8();
        sub_26BE016FC();
        sub_26C008E1C();
        sub_26BE00258(v105, v106);
        v27 = 5;
LABEL_39:
        sub_26BE01600();
        swift_allocError();
        *v28 = v27;
        swift_willThrow();

        sub_26BE00258(v24, v25);
        v6 = v100;
        v1 = v101;
        v4 = v102;
        goto LABEL_4;
      }

      goto LABEL_82;
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    v96 = v18;
    v44 = v14;
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v45 = *(result + 24);
      }

      else
      {
        v45 = 0;
      }
    }

    else
    {
      v45 = v102;
      if (!v6)
      {
        v45 = v103;
      }
    }

    v29 = v100;
    if (__OFSUB__(v45, v16))
    {
      __break(1u);
      goto LABEL_157;
    }

    if (v45 != v16)
    {
      v50 = result;
      sub_26BE01654();
      swift_allocError();
      *v51 = 0;
      v51[112] = 1;
      swift_willThrow();

      sub_26BE00258(v50, v44);
      v17 = v97;
      goto LABEL_47;
    }

    sub_26BE00258(result, v14);
    sub_26BE00258(a1, v100);
    v6 = *v1;
    a1 = v1[1];
    v49 = v1[2];
    sub_26BE00608(*v1, a1);
    sub_26BE00608(v6, a1);
    sub_26BF30764(v1, &v105);
    v102 = v49;
    if (v106)
    {
      sub_26BE00258(*v1, v1[1]);
      *v1 = v6;
      v1[1] = a1;
      v52 = a1;
      v53 = v6;
      v1[2] = v49;
LABEL_99:
      sub_26BE00258(v53, v52);

      v54 = v101;
      *v101 = v6;
      v101[1] = a1;
      goto LABEL_100;
    }

    v56 = v105;
    sub_26BE00258(v6, a1);
    if (v56 > 100000000)
    {
      sub_26BE01600();
      swift_allocError();
      *v57 = 5;
      swift_willThrow();
      goto LABEL_95;
    }

    result = sub_26BF2A44C(v56);
    if (v14 >> 60 == 15)
    {
      v53 = *v101;
      v52 = v101[1];
      goto LABEL_99;
    }

    goto LABEL_107;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v26 = *(result + 24);
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = result >> 32;
    if (!v17)
    {
      v26 = BYTE6(v14);
    }
  }

  if (__OFSUB__(v26, v15))
  {
    __break(1u);
LABEL_107:
    v17 = result;
    v35 = v14;
    v16 = v15;
    v29 = v14 >> 62;
    v97 = result >> 32;
    v103 = MEMORY[0x277D84F90];
    v100 = BYTE6(v14);
    if ((v14 >> 62) > 1)
    {
      goto LABEL_110;
    }

LABEL_108:
    v58 = v100;
    if (v29)
    {
      v58 = v97;
    }

    while (1)
    {
      v20 = __OFSUB__(v58, v16);
      v59 = v58 - v16;
      if (v20)
      {
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        if (v29 > 1)
        {
          if (v29 == 2)
          {
            v77 = *(v99 + 24);
          }

          else
          {
            v77 = 0;
          }
        }

        else
        {
          v77 = v95;
          if (!v29)
          {
            v77 = v97;
          }
        }

        if (!__OFSUB__(v77, v16))
        {
          if (v77 != v16)
          {
            sub_26BE01654();
            swift_allocError();
            *v80 = 0;
            v80[112] = 1;
LABEL_199:
            swift_willThrow();

            sub_26BE00258(v99, v35);
            goto LABEL_146;
          }

          sub_26BE00258(v99, v35);
          sub_26BE00258(a1, v6);
          v6 = *v101;
          v79 = v101[1];
          v99 = v101[2];
          sub_26BE00608(*v101, v79);
          v102 = v79;
          sub_26BE00608(v6, v79);
          sub_26BF30764(v101, &v105);
          if (v17)
          {
            sub_26BE00258(*v101, v101[1]);
            *v101 = v6;
            v101[1] = v79;
            v101[2] = v99;
LABEL_197:
            swift_willThrow();
            goto LABEL_198;
          }

          if (v106)
          {
            sub_26BE00258(*v101, v101[1]);
            v81 = v79;
            *v101 = v6;
            v101[1] = v79;
            v82 = v6;
            v101[2] = v99;
            goto LABEL_206;
          }

          v83 = v105;
          sub_26BE00258(v6, v102);
          if (v83 > 100000000)
          {
            sub_26BE01600();
            swift_allocError();
            *v84 = 5;
            goto LABEL_197;
          }

          result = sub_26BF2A44C(v83);
          v97 = result;
          if (v14 >> 60 == 15)
          {
            v82 = *v101;
            v81 = v101[1];
LABEL_206:
            sub_26BE00258(v82, v81);

            v54 = v101;
            *v101 = v6;
            v101[1] = v102;
            v55 = v99;
LABEL_101:
            v54[2] = v55;
LABEL_8:
            sub_26BE01600();
            swift_allocError();
            *v9 = 1;
LABEL_9:
            result = swift_willThrow();
            goto LABEL_10;
          }

LABEL_208:
          v35 = v14;
          v16 = v15;
          v29 = v14 >> 62;
          v94 = v97 >> 32;
          a1 = MEMORY[0x277D84F90];
          v95 = BYTE6(v14);
          if ((v14 >> 62) > 1)
          {
            goto LABEL_211;
          }

          while (2)
          {
            v85 = v95;
            if (v29)
            {
              v85 = v97 >> 32;
            }

LABEL_214:
            v20 = __OFSUB__(v85, v16);
            v86 = v85 - v16;
            if (v20)
            {
              goto LABEL_249;
            }

            if (v86 < 1)
            {
              goto LABEL_235;
            }

            v87 = v16 + 2;
            if (__OFADD__(v16, 2))
            {
              goto LABEL_250;
            }

            if (v29 <= 1)
            {
              v88 = v95;
              if (v29)
              {
                v88 = v97 >> 32;
              }

              goto LABEL_222;
            }

            if (v29 == 2)
            {
              v88 = *(v97 + 24);
LABEL_222:
              if (v88 < v87)
              {
                goto LABEL_239;
              }
            }

            else if (v87 > 0)
            {
LABEL_239:
              sub_26BE01600();
              swift_allocError();
              *v92 = 1;
              goto LABEL_247;
            }

            v105 = v97;
            v106 = v35;
            if (v87 < v16)
            {
              goto LABEL_251;
            }

            sub_26BE00608(v97, v35);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
            sub_26BE016A8();
            sub_26BE016FC();
            sub_26C008E1C();
            sub_26BE00258(v105, v106);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_26BEEBA48(0, *(a1 + 16) + 1, 1, a1);
              a1 = result;
            }

            v90 = *(a1 + 16);
            v89 = *(a1 + 24);
            if (v90 >= v89 >> 1)
            {
              result = sub_26BEEBA48((v89 > 1), v90 + 1, 1, a1);
              a1 = result;
            }

            *(a1 + 16) = v90 + 1;
            *(a1 + 2 * v90 + 32) = bswap32(0) >> 16;
            v16 += 2;
            if (v29 <= 1)
            {
              continue;
            }

            break;
          }

LABEL_211:
          if (v29 == 2)
          {
            v85 = *(v97 + 24);
          }

          else
          {
            v85 = 0;
          }

          goto LABEL_214;
        }

        __break(1u);
LABEL_249:
        __break(1u);
LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        __break(1u);
        return result;
      }

      if (v59 < 1)
      {
        goto LABEL_134;
      }

      v60 = v16 + 2;
      if (__OFADD__(v16, 2))
      {
        goto LABEL_182;
      }

      if (v29 <= 1)
      {
        break;
      }

      if (v29 == 2)
      {
        v61 = *(v17 + 24);
        goto LABEL_121;
      }

      if (v60 > 0)
      {
LABEL_138:
        sub_26BE01600();
        swift_allocError();
        *v65 = 1;
        goto LABEL_148;
      }

LABEL_124:
      v105 = v17;
      v106 = v35;
      if (v60 < v16)
      {
        goto LABEL_183;
      }

      sub_26BE00608(v17, v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
      sub_26BE016A8();
      sub_26BE016FC();
      sub_26C008E1C();
      sub_26BE00258(v105, v106);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26BEEBA70(0, *(v103 + 16) + 1, 1, v103);
        v103 = result;
      }

      v63 = *(v103 + 16);
      v62 = *(v103 + 24);
      if (v63 >= v62 >> 1)
      {
        result = sub_26BEEBA70((v62 > 1), v63 + 1, 1, v103);
        v103 = result;
      }

      *(v103 + 16) = v63 + 1;
      *(v103 + 2 * v63 + 32) = bswap32(0) >> 16;
      v16 += 2;
      if (v29 <= 1)
      {
        goto LABEL_108;
      }

LABEL_110:
      if (v29 == 2)
      {
        v58 = *(v17 + 24);
      }

      else
      {
        v58 = 0;
      }
    }

    v61 = v100;
    if (v29)
    {
      v61 = v97;
    }

LABEL_121:
    if (v61 < v60)
    {
      goto LABEL_138;
    }

    goto LABEL_124;
  }

  if (v26 != v15)
  {
    v30 = v14;
    v31 = result;
    sub_26BE01654();
    swift_allocError();
    *v32 = 0;
    v32[112] = 1;
    swift_willThrow();

    sub_26BE00258(v31, v30);
    v4 = v102;
    goto LABEL_4;
  }

  sub_26BE00258(result, v14);
  sub_26BE00258(v5, v102);
  a1 = *v1;
  v29 = v1[1];
  v17 = v1[2];
  sub_26BE00608(*v1, v29);
  sub_26BE00608(a1, v29);
  sub_26BF30764(v1, &v105);
  if (v106)
  {
    sub_26BE00258(*v1, v1[1]);
    *v1 = a1;
    v1[1] = v29;
    v33 = v29;
    v34 = a1;
    v1[2] = v17;
LABEL_50:
    sub_26BE00258(v34, v33);

    *v1 = a1;
    v1[1] = v29;
    v1[2] = v17;
    goto LABEL_8;
  }

  v35 = v105;
  sub_26BE00258(a1, v29);
  if (v35 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v36 = 5;
    swift_willThrow();
LABEL_47:
    sub_26BE00258(*v1, v1[1]);
    *v1 = a1;
    v1[1] = v29;
    v1[2] = v17;
    swift_willThrow();

    goto LABEL_10;
  }

  result = sub_26BF2A44C(v35);
  if (v14 >> 60 == 15)
  {
    v34 = *v1;
    v33 = v1[1];
    goto LABEL_50;
  }

  v16 = v15;
  v99 = 0;
  v100 = v29;
  v97 = v17;
  v6 = v14 >> 62;
  v102 = result >> 32;
  v103 = BYTE6(v14);
  v104 = MEMORY[0x277D84F90];
  if ((v14 >> 62) > 1)
  {
    goto LABEL_58;
  }

LABEL_56:
  v37 = v103;
  if (v6)
  {
    v37 = v102;
  }

  while (1)
  {
    v20 = __OFSUB__(v37, v16);
    v38 = v37 - v16;
    if (v20)
    {
      break;
    }

    if (v38 < 1)
    {
      goto LABEL_83;
    }

    v39 = v16 + 2;
    if (__OFADD__(v16, 2))
    {
      goto LABEL_132;
    }

    if (v6 <= 1)
    {
      v40 = v103;
      if (v6)
      {
        v40 = v102;
      }

LABEL_69:
      if (v40 < v39)
      {
        goto LABEL_87;
      }

      goto LABEL_72;
    }

    if (v6 == 2)
    {
      v40 = *(result + 24);
      goto LABEL_69;
    }

    if (v39 > 0)
    {
LABEL_87:
      v46 = result;
      v47 = v14;
      sub_26BE01600();
      swift_allocError();
      *v48 = 1;
      swift_willThrow();

      sub_26BE00258(v46, v47);
      v17 = v97;
      v29 = v100;
      v1 = v101;
      goto LABEL_47;
    }

LABEL_72:
    v105 = result;
    v106 = v14;
    if (v39 < v16)
    {
      goto LABEL_133;
    }

    v17 = v18;
    v35 = result;
    v29 = v14;
    sub_26BE00608(result, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    sub_26BE016A8();
    sub_26BE016FC();
    sub_26C008E1C();
    sub_26BE00258(v105, v106);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v104 = sub_26BEEBB90(0, *(v104 + 2) + 1, 1, v104);
    }

    v42 = *(v104 + 2);
    v41 = *(v104 + 3);
    if (v42 >= v41 >> 1)
    {
      v43 = sub_26BEEBB90((v41 > 1), v42 + 1, 1, v104);
      v14 = v29;
      v104 = v43;
      result = v35;
    }

    else
    {
      result = v35;
      v14 = v29;
    }

    *(v104 + 2) = v42 + 1;
    *&v104[2 * v42 + 32] = bswap32(0) >> 16;
    v16 += 2;
    if (v6 <= 1)
    {
      goto LABEL_56;
    }

LABEL_58:
    if (v6 == 2)
    {
      v37 = *(result + 24);
    }

    else
    {
      v37 = 0;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  if (v29 > 1)
  {
    if (v29 == 2)
    {
      v64 = *(v17 + 24);
    }

    else
    {
      v64 = 0;
    }
  }

  else
  {
    v64 = v97;
    if (!v29)
    {
      v64 = v100;
    }
  }

  if (__OFSUB__(v64, v16))
  {
    __break(1u);
    goto LABEL_208;
  }

  if (v64 != v16)
  {
    sub_26BE01654();
    swift_allocError();
    *v66 = 0;
    v66[112] = 1;
LABEL_148:
    swift_willThrow();

    sub_26BE00258(v17, v35);
LABEL_95:
    sub_26BE00258(*v101, v101[1]);
    *v101 = v6;
    v101[1] = a1;
    v101[2] = v102;
    swift_willThrow();
    goto LABEL_96;
  }

  sub_26BE00258(v17, v35);
  sub_26BE00258(v6, a1);
  a1 = *v101;
  v6 = v101[1];
  v102 = v101[2];
  sub_26BE00608(*v101, v6);
  sub_26BE00608(a1, v6);
  sub_26BF30764(v101, &v105);
  v17 = 0;
  if (v106)
  {
    sub_26BE00258(*v101, v101[1]);
    *v101 = a1;
    v101[1] = v6;
    v67 = v6;
    v68 = a1;
    v101[2] = v102;
    goto LABEL_151;
  }

  v69 = v105;
  sub_26BE00258(a1, v6);
  if (v69 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v70 = 5;
    swift_willThrow();
LABEL_146:
    sub_26BE00258(*v101, v101[1]);
    *v101 = a1;
    v101[1] = v6;
    v101[2] = v102;
    swift_willThrow();
    goto LABEL_147;
  }

  result = sub_26BF2A44C(v69);
  v99 = result;
  if (v14 >> 60 == 15)
  {
    v68 = *v101;
    v67 = v101[1];
LABEL_151:
    sub_26BE00258(v68, v67);

    v54 = v101;
    *v101 = a1;
    v101[1] = v6;
LABEL_100:
    v55 = v102;
    goto LABEL_101;
  }

LABEL_157:
  v35 = v14;
  v16 = v15;
  v29 = v14 >> 62;
  v95 = v99 >> 32;
  v100 = MEMORY[0x277D84F90];
  v97 = BYTE6(v14);
  if ((v14 >> 62) > 1)
  {
    goto LABEL_160;
  }

  while (2)
  {
    v71 = v97;
    if (v29)
    {
      v71 = v99 >> 32;
    }

LABEL_163:
    v20 = __OFSUB__(v71, v16);
    v72 = v71 - v16;
    if (!v20)
    {
      if (v72 < 1)
      {
        goto LABEL_184;
      }

      v73 = v16 + 2;
      if (__OFADD__(v16, 2))
      {
        goto LABEL_233;
      }

      if (v29 <= 1)
      {
        v74 = v97;
        if (v29)
        {
          v74 = v99 >> 32;
        }

        goto LABEL_171;
      }

      if (v29 == 2)
      {
        v74 = *(v99 + 24);
LABEL_171:
        if (v74 < v73)
        {
          goto LABEL_188;
        }
      }

      else if (v73 > 0)
      {
LABEL_188:
        sub_26BE01600();
        swift_allocError();
        *v78 = 1;
        goto LABEL_199;
      }

      v105 = v99;
      v106 = v35;
      if (v73 < v16)
      {
        goto LABEL_234;
      }

      sub_26BE00608(v99, v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
      sub_26BE016A8();
      sub_26BE016FC();
      sub_26C008E1C();
      sub_26BE00258(v105, v106);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26BEEBA5C(0, *(v100 + 16) + 1, 1, v100);
        v100 = result;
      }

      v76 = *(v100 + 16);
      v75 = *(v100 + 24);
      if (v76 >= v75 >> 1)
      {
        result = sub_26BEEBA5C((v75 > 1), v76 + 1, 1, v100);
        v100 = result;
      }

      *(v100 + 16) = v76 + 1;
      *(v100 + 2 * v76 + 32) = bswap32(0) >> 16;
      v16 += 2;
      if (v29 <= 1)
      {
        continue;
      }

LABEL_160:
      if (v29 == 2)
      {
        v71 = *(v99 + 24);
      }

      else
      {
        v71 = 0;
      }

      goto LABEL_163;
    }

    break;
  }

  __break(1u);
LABEL_233:
  __break(1u);
LABEL_234:
  __break(1u);
LABEL_235:
  if (v29 > 1)
  {
    if (v29 == 2)
    {
      v91 = *(v97 + 24);
    }

    else
    {
      v91 = 0;
    }
  }

  else
  {
    v91 = v94;
    if (!v29)
    {
      v91 = v95;
    }
  }

  if (__OFSUB__(v91, v16))
  {
    goto LABEL_252;
  }

  if (v91 == v16)
  {
    sub_26BE00258(v97, v35);
    result = sub_26BE00258(v6, v102);
    *v98 = v96;
    v98[1] = v104;
    v98[2] = v103;
    v98[3] = v100;
    v98[4] = a1;
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v93 = 0;
    v93[112] = 1;
LABEL_247:
    swift_willThrow();

    sub_26BE00258(v97, v35);
LABEL_198:
    sub_26BE00258(*v101, v101[1]);
    *v101 = v6;
    v101[1] = v102;
    v101[2] = v99;
    swift_willThrow();

LABEL_147:

LABEL_96:
  }

LABEL_10:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _s8SwiftMLS0B0O12CapabilitiesV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  if (!sub_26BFB2088(*a1, *a2) || (sub_26BFB76FC(v2, v6) & 1) == 0 || (sub_26BFB76FC(v4, v8) & 1) == 0 || (sub_26BFB76FC(v3, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_26BFB76FC(v5, v9);
}

uint64_t sub_26BE792AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26BE792F4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_8SwiftMLS0B0O10UpdatePathVSg(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_26BE79398(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_26BE793E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BE7945C(uint64_t a1)
{
  v105 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  v5 = *(a1 + 128);
  v102 = *(a1 + 112);
  v103 = v5;
  v104 = *(a1 + 144);
  v6 = *(a1 + 64);
  v98 = *(a1 + 48);
  v99 = v6;
  v7 = *(a1 + 96);
  v100 = *(a1 + 80);
  v101 = v7;
  v8 = *(a1 + 32);
  v96 = *(a1 + 16);
  v97 = v8;
  v10 = *(a1 + 160);
  v9 = *(a1 + 168);
  v57 = 0;
  v87 = xmmword_26C00BBD0;
  *&v88 = 0;
  v11 = sub_26BE7AAD8(0, v2);
  if (!v1)
  {
    v12 = v11;
    v15 = sub_26BF30414(v11);
    v16 = 0;
    sub_26BF2A30C(&v87);
    sub_26BE00258(v87, *(&v87 + 1));
    v17 = __OFADD__(v15, v12);
    v18 = v15 + v12;
    if (v17)
    {
LABEL_36:
      __break(1u);
    }

    else
    {
      v19 = MEMORY[0x277D838B0];
      v20 = MEMORY[0x277CC9C18];
      if (v4)
      {
        LOBYTE(v78) = 0;
        *(&v88 + 1) = MEMORY[0x277D838B0];
        *&v89 = MEMORY[0x277CC9C18];
        *&v87 = &v78;
        *(&v87 + 1) = &v78 + 1;
        v21 = __swift_project_boxed_opaque_existential_1(&v87, MEMORY[0x277D838B0]);
        v23 = *v21;
        v22 = v21[1];
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v87);
        v24 = 1;
      }

      else
      {
        LOBYTE(v78) = 1;
        *(&v88 + 1) = MEMORY[0x277D838B0];
        *&v89 = MEMORY[0x277CC9C18];
        *&v87 = &v78;
        *(&v87 + 1) = &v78 + 1;
        v25 = __swift_project_boxed_opaque_existential_1(&v87, MEMORY[0x277D838B0]);
        v27 = *v25;
        v26 = v25[1];
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v87);
        LODWORD(v78) = bswap32(v3);
        *(&v88 + 1) = v19;
        *&v89 = v20;
        *&v87 = &v78;
        *(&v87 + 1) = &v78 + 4;
        v28 = __swift_project_boxed_opaque_existential_1(&v87, v19);
        v30 = *v28;
        v29 = v28[1];
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v87);
        v24 = 5;
      }

      v31 = v18 + v24;
      if (!__OFADD__(v18, v24))
      {
        v93 = v102;
        v94 = v103;
        v95 = v104;
        v89 = v98;
        v90 = v99;
        v91 = v100;
        v92 = v101;
        v87 = v96;
        v88 = v97;
        if (sub_26BE59C80(&v87) != 1)
        {
          v84 = v102;
          v85 = v103;
          v86 = v104;
          v80 = v98;
          v81 = v99;
          v82 = v100;
          v83 = v101;
          v78 = v96;
          v79 = v97;
          LOBYTE(v58) = 1;
          *(&v61 + 1) = v19;
          *&v62 = v20;
          *&v60 = &v58;
          *(&v60 + 1) = &v58 + 1;
          v41 = __swift_project_boxed_opaque_existential_1(&v60, v19);
          v42 = *v41;
          v43 = v41[1];
          sub_26BE7ABF0(&v96, &v69);
          sub_26C00908C();
          __swift_destroy_boxed_opaque_existential_1(&v60);
          v75 = v84;
          v76 = v85;
          v77 = v86;
          v71 = v80;
          v72 = v81;
          v73 = v82;
          v74 = v83;
          v69 = v78;
          v70 = v79;
          sub_26BE00758(&v78, &v60);
          v44 = 0;
          v36 = sub_26BE7DD28(&v69);
          v49 = *(&v86 + 1);
          v66 = v75;
          v67 = v76;
          v68 = v77;
          v62 = v71;
          v63 = v72;
          v64 = v73;
          v65 = v74;
          v60 = v69;
          v61 = v70;
          sub_26BE00854(&v60);
          v58 = xmmword_26C00BBD0;
          v59 = 0;
          v57 = sub_26BEEB0F4(0, v49);
          result = sub_26BF30414(v57);
          goto LABEL_31;
        }

        LOBYTE(v69) = 0;
        *(&v79 + 1) = v19;
        *&v80 = v20;
        *&v78 = &v69;
        *(&v78 + 1) = &v69 + 1;
        v32 = __swift_project_boxed_opaque_existential_1(&v78, v19);
        v34 = *v32;
        v33 = v32[1];
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v78);
        v35 = 1;
        while (1)
        {
          v36 = v31 + v35;
          if (__OFADD__(v31, v35))
          {
            goto LABEL_38;
          }

          if (v9 >> 60 != 15)
          {
            break;
          }

          LOBYTE(v69) = 0;
          *(&v79 + 1) = v19;
          *&v80 = v20;
          *&v78 = &v69;
          *(&v78 + 1) = &v69 + 1;
          v37 = __swift_project_boxed_opaque_existential_1(&v78, v19);
          v39 = *v37;
          v38 = v37[1];
          sub_26C00908C();
          __swift_destroy_boxed_opaque_existential_1(&v78);
          v40 = 1;
LABEL_28:
          v44 = v16;
          result = v36 + v40;
          if (!__OFADD__(v36, v40))
          {
            goto LABEL_4;
          }

          __break(1u);
LABEL_31:
          v54 = result;
          v16 = v44;
          sub_26BF2A30C(&v58);
          sub_26BE00258(v58, *(&v58 + 1));
          sub_26BE7AC60(&v96);
          v55 = v54 + v57;
          if (__OFADD__(v54, v57))
          {
            goto LABEL_42;
          }

          v17 = __OFADD__(v36, v55);
          v56 = v36 + v55;
          if (v17)
          {
            goto LABEL_43;
          }

          v17 = __OFADD__(v56, 1);
          v35 = v56 + 1;
          if (v17)
          {
            __break(1u);
            goto LABEL_36;
          }
        }

        LOBYTE(v69) = 1;
        *(&v79 + 1) = v19;
        *&v80 = v20;
        *&v78 = &v69;
        *(&v78 + 1) = &v69 + 1;
        v45 = __swift_project_boxed_opaque_existential_1(&v78, v19);
        v46 = *v45;
        v47 = v45[1];
        sub_26BE00608(v10, v9);
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v78);
        v48 = v9 >> 62;
        if ((v9 >> 62) > 1)
        {
          if (v48 != 2)
          {
            v19 = 0;
            goto LABEL_26;
          }

          v51 = *(v10 + 16);
          v50 = *(v10 + 24);
          v19 = v50 - v51;
          if (!__OFSUB__(v50, v51))
          {
LABEL_26:
            v52 = sub_26BF30414(v19);
            sub_26BE11228(v10, v9);
            sub_26BE136AC(v10, v9);
            v53 = v52 + v19;
            if (__OFADD__(v52, v19))
            {
              goto LABEL_39;
            }

            v17 = __OFADD__(v53, 1);
            v40 = v53 + 1;
            if (v17)
            {
              goto LABEL_40;
            }

            goto LABEL_28;
          }

          __break(1u);
        }

        else if (!v48)
        {
          v19 = BYTE6(v9);
          goto LABEL_26;
        }

        if (__OFSUB__(HIDWORD(v10), v10))
        {
          goto LABEL_41;
        }

        v19 = HIDWORD(v10) - v10;
        goto LABEL_26;
      }
    }

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

  result = sub_26BE00258(v87, *(&v87 + 1));
LABEL_4:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BE799B4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  sub_26BE00608(*v2, v6);
  sub_26BE00608(v7, v6);
  sub_26BF30764(v2, &v119);
  if (v3)
  {
    sub_26BE00258(*v2, v2[1]);
    *v2 = v7;
    v2[1] = v6;
    v2[2] = v8;
LABEL_3:
    swift_willThrow();
    goto LABEL_4;
  }

  if (BYTE8(v119))
  {
    sub_26BE00258(*v2, v2[1]);
    *v2 = v7;
    v2[1] = v6;
    v9 = v6;
    v10 = v7;
    v2[2] = v8;
LABEL_7:
    sub_26BE00258(v10, v9);
    *v2 = v7;
    v2[1] = v6;
    v2[2] = v8;
LABEL_8:
    sub_26BE01600();
    swift_allocError();
    v12 = 1;
    goto LABEL_9;
  }

  v14 = v119;
  sub_26BE00258(v7, v6);
  if (v14 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v15 = 5;
    goto LABEL_3;
  }

  v144 = v2;
  result = sub_26BF2A44C(v14);
  if (v16 >> 60 == 15)
  {
    v2 = v144;
    v10 = *v144;
    v9 = v144[1];
    goto LABEL_7;
  }

  v92 = a2;
  *&v135 = result;
  *(&v135 + 1) = v16;
  *&v136 = v17;
  v18 = MEMORY[0x277D84F90];
  while (1)
  {
    v19 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      if (v19 == 2)
      {
        v20 = *(result + 24);
      }

      else
      {
        v20 = 0;
      }
    }

    else if (v19)
    {
      v20 = result >> 32;
    }

    else
    {
      v20 = BYTE6(v16);
    }

    v21 = __OFSUB__(v20, v17);
    v22 = v20 - v17;
    if (v21)
    {
      __break(1u);
      goto LABEL_58;
    }

    if (v22 < 1)
    {
      break;
    }

    sub_26BE7A938(&v119);
    v116 = v129;
    v117 = v130;
    v118 = v131;
    v112 = v125;
    v113 = v126;
    v114 = v127;
    v115 = v128;
    v108 = v121;
    v109 = v122;
    v110 = v123;
    v111 = v124;
    v106 = v119;
    v107 = v120;
    sub_26BE5CDE4(&v106, &v93);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_26BEED658(0, *(v18 + 2) + 1, 1, v18);
    }

    v24 = *(v18 + 2);
    v23 = *(v18 + 3);
    if (v24 >= v23 >> 1)
    {
      v18 = sub_26BEED658((v23 > 1), v24 + 1, 1, v18);
    }

    v103 = v129;
    v104 = v130;
    v105 = v131;
    v99 = v125;
    v100 = v126;
    v101 = v127;
    v102 = v128;
    v95 = v121;
    v96 = v122;
    v97 = v123;
    v98 = v124;
    v93 = v119;
    v94 = v120;
    sub_26BE5CD74(&v93);
    *(v18 + 2) = v24 + 1;
    v25 = &v18[200 * v24];
    *(v25 + 2) = v106;
    v26 = v110;
    v28 = v107;
    v27 = v108;
    *(v25 + 5) = v109;
    *(v25 + 6) = v26;
    *(v25 + 3) = v28;
    *(v25 + 4) = v27;
    v29 = v114;
    v31 = v111;
    v30 = v112;
    *(v25 + 9) = v113;
    *(v25 + 10) = v29;
    *(v25 + 7) = v31;
    *(v25 + 8) = v30;
    v33 = v116;
    v32 = v117;
    v34 = v115;
    v25[224] = v118;
    *(v25 + 12) = v33;
    *(v25 + 13) = v32;
    *(v25 + 11) = v34;
    v16 = *(&v135 + 1);
    result = v135;
    v17 = v136;
  }

  if (v19 > 1)
  {
    v2 = v144;
    if (v19 == 2)
    {
      v35 = *(result + 24);
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    if (v19)
    {
      v35 = result >> 32;
    }

    else
    {
      v35 = BYTE6(v16);
    }

    v2 = v144;
  }

  if (__OFSUB__(v35, v17))
  {
    __break(1u);
  }

  else
  {
    if (v35 != v17)
    {
      sub_26BE01654();
      swift_allocError();
      *v38 = 0;
      v38[112] = 1;
      swift_willThrow();

      sub_26BE00258(v135, *(&v135 + 1));
LABEL_4:
      sub_26BE00258(*v2, v2[1]);
      *v2 = v7;
      v2[1] = v6;
      v2[2] = v8;
      return swift_willThrow();
    }

    sub_26BE00258(result, v16);
    sub_26BE00258(v7, v6);
    v36 = sub_26BEE62D4();
    if ((v36 & 0x100) != 0)
    {
      goto LABEL_51;
    }

    LODWORD(v6) = v36;
    if (v36)
    {
      if (v36 == 1)
      {
        v37 = sub_26BEE6028();
        if ((v37 & 0x100000000) == 0)
        {
          LODWORD(v6) = v37;
          LOBYTE(v8) = 0;
          goto LABEL_47;
        }

        goto LABEL_51;
      }

LABEL_52:

      sub_26BE01600();
      swift_allocError();
      v12 = 5;
LABEL_9:
      *v11 = v12;
      return swift_willThrow();
    }

    LOBYTE(v8) = 1;
LABEL_47:
    v39 = sub_26BEE62D4();
    if ((v39 & 0x100) != 0)
    {
LABEL_51:

      goto LABEL_8;
    }

    if (!v39)
    {
      sub_26BE7150C(&v119);
      if (a1 >= 3)
      {
        goto LABEL_119;
      }

      goto LABEL_54;
    }

    if (v39 != 1)
    {
      goto LABEL_52;
    }

    sub_26BE7DE38(&v93);
LABEL_58:
    v88 = v6;
    v141 = v99;
    v142 = v100;
    v143 = v101;
    v137 = v95;
    v138 = v96;
    v139 = v97;
    v140 = v98;
    v135 = v93;
    v136 = v94;
    v45 = v144;
    v47 = *v144;
    v46 = v144[1];
    v48 = v144[2];
    sub_26BE00608(*v144, v46);
    sub_26BE00608(v47, v46);
    sub_26BF30764(v45, &v106);
    v87 = v48;
    v84 = v47;
    v85 = v46;
    if (BYTE8(v106))
    {
      v49 = v144;
      sub_26BE00258(*v144, v144[1]);
      *v49 = v47;
      v49[1] = v46;
      v50 = v46;
      v51 = v47;
      v49[2] = v48;
LABEL_60:
      sub_26BE00258(v51, v50);

      v52 = v144;
      *v144 = v47;
      v52[1] = v46;
      v52[2] = v48;
      sub_26BE01600();
      swift_allocError();
      *v53 = 1;
      swift_willThrow();
      return sub_26BE00854(&v135);
    }

    v54 = v106;
    sub_26BE00258(v47, v46);
    if (v54 > 100000000)
    {
      sub_26BE01600();
      swift_allocError();
      *v55 = 5;
      swift_willThrow();
LABEL_111:
      v79 = v144;
      sub_26BE00258(*v79, v79[1]);
      *v79 = v84;
      v79[1] = v85;
      v79[2] = v87;
      swift_willThrow();

      return sub_26BE00854(&v135);
    }

    result = sub_26BF2A44C(v54);
    v91 = result;
    if (v16 >> 60 == 15)
    {
      v51 = *v144;
      v50 = v144[1];
      goto LABEL_60;
    }
  }

  v56 = v16;
  v57 = v17;
  v132 = v91;
  v133 = v16;
  v134 = v17;
  v86 = MEMORY[0x277D84F90];
  while (1)
  {
    v58 = v56 >> 62;
    if ((v56 >> 62) > 1)
    {
      if (v58 == 2)
      {
        v59 = *(v91 + 24);
      }

      else
      {
        v59 = 0;
      }
    }

    else if (v58)
    {
      v59 = v91 >> 32;
    }

    else
    {
      v59 = BYTE6(v56);
    }

    v21 = __OFSUB__(v59, v57);
    v60 = v59 - v57;
    if (v21)
    {
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (v60 < 1)
    {
      break;
    }

    sub_26BE00608(v91, v56);
    sub_26BE00608(v91, v56);
    sub_26BF30764(&v132, &v106);
    if (BYTE8(v106))
    {
      sub_26BE00258(v132, v133);
      v89 = v56;
      v90 = v91;
LABEL_107:
      sub_26BE00258(v90, v89);
      v132 = v91;
      v133 = v56;
      v134 = v57;
      sub_26BE01600();
      swift_allocError();
      *v77 = 1;
      goto LABEL_108;
    }

    v61 = v106;
    sub_26BE00258(v91, v56);
    result = v134;
    v21 = __OFADD__(v134, v61);
    v62 = v134 + v61;
    if (v21)
    {
      goto LABEL_128;
    }

    v89 = v133;
    v90 = v132;
    v63 = v133 >> 62;
    if ((v133 >> 62) <= 1)
    {
      if (v63)
      {
        v64 = v132 >> 32;
      }

      else
      {
        v64 = BYTE6(v133);
      }

LABEL_85:
      if (v64 < v62)
      {
        goto LABEL_107;
      }

      goto LABEL_88;
    }

    if (v63 == 2)
    {
      v64 = *(v132 + 24);
      goto LABEL_85;
    }

    if (v62 > 0)
    {
      goto LABEL_107;
    }

LABEL_88:
    if (v62 < v134)
    {
      goto LABEL_129;
    }

    result = sub_26C00909C();
    v65 = result;
    v67 = v66;
    v134 = v62;
    v68 = v66 >> 62;
    if ((v66 >> 62) > 1)
    {
      if (v68 != 2)
      {
        goto LABEL_96;
      }

      result = *(result + 16);
      v69 = *(v65 + 24);
    }

    else
    {
      if (!v68)
      {
        goto LABEL_96;
      }

      result = result;
      v69 = v65 >> 32;
    }

    if (v69 < result)
    {
      goto LABEL_130;
    }

LABEL_96:
    v70 = sub_26C00909C();
    v83 = v71;
    sub_26BE00258(v65, v67);
    sub_26BE00258(v91, v56);
    sub_26BE00608(v90, v89);
    v72 = sub_26BF2FE68(&v132, sub_26BFF72A0, 0);
    if (!v72)
    {
      sub_26BE00258(v132, v133);
      v132 = v90;
      v133 = v89;
      v134 = v62;
      sub_26BE01600();
      swift_allocError();
      *v78 = 1;
      swift_willThrow();
      sub_26BE00258(v70, v83);
      goto LABEL_110;
    }

    sub_26BE00258(v90, v89);
    sub_26BE00608(v70, v83);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v86 = sub_26BEECC88(0, *(v86 + 2) + 1, 1, v86);
    }

    v74 = *(v86 + 2);
    v73 = *(v86 + 3);
    if (v74 >= v73 >> 1)
    {
      v86 = sub_26BEECC88((v73 > 1), v74 + 1, 1, v86);
    }

    sub_26BE00258(v70, v83);

    *(v86 + 2) = v74 + 1;
    v75 = &v86[24 * v74];
    *(v75 + 4) = v70;
    *(v75 + 5) = v83;
    *(v75 + 6) = v72;
    v56 = v133;
    v91 = v132;
    v57 = v134;
  }

  if (v58 > 1)
  {
    if (v58 == 2)
    {
      v76 = *(v91 + 24);
    }

    else
    {
      v76 = 0;
    }
  }

  else if (v58)
  {
    v76 = v91 >> 32;
  }

  else
  {
    v76 = BYTE6(v56);
  }

  if (__OFSUB__(v76, v57))
  {
LABEL_131:
    __break(1u);
    return result;
  }

  if (v76 != v57)
  {
    sub_26BE01654();
    swift_allocError();
    *v82 = 0;
    v82[112] = 1;
LABEL_108:
    swift_willThrow();
LABEL_110:

    sub_26BE00258(v132, v133);
    goto LABEL_111;
  }

  sub_26BE00258(v91, v56);
  sub_26BE00258(v84, v85);
  v112 = v141;
  v113 = v142;
  v108 = v137;
  v109 = v138;
  v110 = v139;
  v111 = v140;
  v106 = v135;
  v107 = v136;
  *&v114 = v143;
  *(&v114 + 1) = v86;
  nullsub_1(&v106);
  v125 = v112;
  v126 = v113;
  v127 = v114;
  v121 = v108;
  v122 = v109;
  v123 = v110;
  v124 = v111;
  v119 = v106;
  v120 = v107;
  LODWORD(v6) = v88;
  a2 = v92;
  if (a1 < 3)
  {
LABEL_54:
    result = 0;
LABEL_55:
    v40 = 0xF000000000000000;
    goto LABEL_56;
  }

LABEL_119:
  LOWORD(result) = sub_26BEE62D4();
  if ((result & 0x100) != 0)
  {

    sub_26BE01600();
    swift_allocError();
    v81 = 1;
LABEL_126:
    *v80 = v81;
    swift_willThrow();
    return sub_26BE7AC60(&v119);
  }

  if (!result)
  {
    result = result;
    goto LABEL_55;
  }

  if (result != 1)
  {

    sub_26BE01600();
    swift_allocError();
    v81 = 5;
    goto LABEL_126;
  }

  result = sub_26BF2F7B0();
  a2 = v92;
LABEL_56:
  *a2 = v18;
  *(a2 + 8) = v6;
  *(a2 + 12) = v8;
  v41 = v126;
  *(a2 + 112) = v125;
  *(a2 + 128) = v41;
  *(a2 + 144) = v127;
  v42 = v122;
  *(a2 + 48) = v121;
  *(a2 + 64) = v42;
  v43 = v124;
  *(a2 + 80) = v123;
  *(a2 + 96) = v43;
  v44 = v120;
  *(a2 + 16) = v119;
  *(a2 + 32) = v44;
  *(a2 + 160) = result;
  *(a2 + 168) = v40;
  return result;
}

uint64_t sub_26BE7A5E4(__int128 *a1)
{
  v86 = *MEMORY[0x277D85DE8];
  v2 = a1[9];
  v3 = a1[7];
  v82 = a1[8];
  v83 = v2;
  v4 = a1[9];
  v84 = a1[10];
  v5 = a1[5];
  v6 = a1[3];
  v78 = a1[4];
  v79 = v5;
  v7 = a1[5];
  v8 = a1[7];
  v80 = a1[6];
  v81 = v8;
  v9 = a1[1];
  v75[0] = *a1;
  v75[1] = v9;
  v10 = a1[3];
  v12 = *a1;
  v11 = a1[1];
  v76 = a1[2];
  v77 = v10;
  v71 = v82;
  v72 = v4;
  v73 = a1[10];
  v67 = v78;
  v68 = v7;
  v69 = v80;
  v70 = v3;
  v63 = v12;
  v64 = v11;
  v85 = *(a1 + 22);
  v13 = *(a1 + 46);
  v14 = *(a1 + 188);
  v15 = *(a1 + 95);
  v16 = *(a1 + 192);
  v74 = *(a1 + 22);
  v65 = v76;
  v66 = v6;
  sub_26BE6FE6C(v75, &v51);
  v17 = sub_26BF31160(&v63);
  if (v1)
  {
    v59 = v71;
    v60 = v72;
    v61 = v73;
    v62 = v74;
    v55 = v67;
    v56 = v68;
    v57 = v69;
    v58 = v70;
    v51 = v63;
    v52 = v64;
    v53 = v65;
    v54 = v66;
    result = sub_26BE718E0(&v51);
    goto LABEL_11;
  }

  v19 = v17;
  v59 = v71;
  v60 = v72;
  v61 = v73;
  v62 = v74;
  v55 = v67;
  v56 = v68;
  v57 = v69;
  v58 = v70;
  v51 = v63;
  v52 = v64;
  v53 = v65;
  v54 = v66;
  sub_26BE718E0(&v51);
  if (v14)
  {
    LOBYTE(v46) = 0;
    v49 = MEMORY[0x277D838B0];
    v50 = MEMORY[0x277CC9C18];
    v47 = &v46;
    v48 = (&v46 + 1);
    v20 = __swift_project_boxed_opaque_existential_1(&v47, MEMORY[0x277D838B0]);
    v22 = *v20;
    v21 = v20[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v47);
    v23 = 1;
  }

  else
  {
    LOBYTE(v46) = 1;
    v24 = MEMORY[0x277D838B0];
    v25 = MEMORY[0x277CC9C18];
    v49 = MEMORY[0x277D838B0];
    v50 = MEMORY[0x277CC9C18];
    v47 = &v46;
    v48 = (&v46 + 1);
    v26 = __swift_project_boxed_opaque_existential_1(&v47, MEMORY[0x277D838B0]);
    v28 = *v26;
    v27 = v26[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v47);
    v46 = bswap32(v13);
    v49 = v24;
    v50 = v25;
    v47 = &v46;
    v48 = &v47;
    v29 = __swift_project_boxed_opaque_existential_1(&v47, v24);
    v31 = *v29;
    v30 = v29[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v47);
    v23 = 5;
  }

  v32 = v19 + v23;
  if (__OFADD__(v19, v23))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v16)
  {
    LOBYTE(v46) = 0;
    v49 = MEMORY[0x277D838B0];
    v50 = MEMORY[0x277CC9C18];
    v47 = &v46;
    v48 = (&v46 + 1);
    v33 = __swift_project_boxed_opaque_existential_1(&v47, MEMORY[0x277D838B0]);
    v35 = *v33;
    v34 = v33[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v47);
    v36 = 1;
  }

  else
  {
    LOBYTE(v46) = 1;
    v37 = MEMORY[0x277D838B0];
    v38 = MEMORY[0x277CC9C18];
    v49 = MEMORY[0x277D838B0];
    v50 = MEMORY[0x277CC9C18];
    v47 = &v46;
    v48 = (&v46 + 1);
    v39 = __swift_project_boxed_opaque_existential_1(&v47, MEMORY[0x277D838B0]);
    v41 = *v39;
    v40 = v39[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v47);
    LOWORD(v46) = __rev16(v15);
    v49 = v37;
    v50 = v38;
    v47 = &v46;
    v48 = (&v46 + 2);
    v42 = __swift_project_boxed_opaque_existential_1(&v47, v37);
    v44 = *v42;
    v43 = v42[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v47);
    v36 = 3;
  }

  result = v32 + v36;
  if (__OFADD__(v32, v36))
  {
LABEL_13:
    __break(1u);
  }

LABEL_11:
  v45 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_26BE7A938@<D0>(uint64_t a1@<X8>)
{
  sub_26BF3182C(&v20);
  if (!v1)
  {
    v18[8] = v28;
    v18[9] = v29;
    v18[10] = v30;
    v19 = v31;
    v18[4] = v24;
    v18[5] = v25;
    v18[6] = v26;
    v18[7] = v27;
    v18[0] = v20;
    v18[1] = v21;
    v18[2] = v22;
    v18[3] = v23;
    v4 = sub_26BEE62D4();
    if ((v4 & 0x100) != 0)
    {
      goto LABEL_13;
    }

    v5 = v4;
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_14;
      }

      v6 = sub_26BEE6028();
      if ((v6 & 0x100000000) != 0)
      {
        goto LABEL_13;
      }

      v5 = v6;
      v7 = 0;
      v8 = sub_26BEE62D4();
      if ((v8 & 0x100) != 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v7 = 1;
      v8 = sub_26BEE62D4();
      if ((v8 & 0x100) != 0)
      {
        goto LABEL_13;
      }
    }

    if (!v8)
    {
      LOWORD(v9) = 0;
      v10 = 1;
      goto LABEL_18;
    }

    if (v8 == 1)
    {
      v9 = sub_26BEE6180();
      if ((v9 & 0x10000) == 0)
      {
        v10 = 0;
LABEL_18:
        v13 = v29;
        *(a1 + 128) = v28;
        *(a1 + 144) = v13;
        *(a1 + 160) = v30;
        *(a1 + 176) = v31;
        v14 = v25;
        *(a1 + 64) = v24;
        *(a1 + 80) = v14;
        v15 = v27;
        *(a1 + 96) = v26;
        *(a1 + 112) = v15;
        v16 = v21;
        *a1 = v20;
        *(a1 + 16) = v16;
        result = *&v22;
        v17 = v23;
        *(a1 + 32) = v22;
        *(a1 + 48) = v17;
        *(a1 + 184) = v5;
        *(a1 + 188) = v7;
        *(a1 + 190) = v9;
        *(a1 + 192) = v10;
        return result;
      }

LABEL_13:
      sub_26BE01600();
      swift_allocError();
      v12 = 1;
LABEL_15:
      *v11 = v12;
      swift_willThrow();
      sub_26BE718E0(v18);
      return result;
    }

LABEL_14:
    sub_26BE01600();
    swift_allocError();
    v12 = 5;
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_26BE7AAD8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = a2 + 32;
    do
    {
      v6 = *(v5 + 144);
      v7 = *(v5 + 176);
      v33 = *(v5 + 160);
      v34 = v7;
      v8 = *(v5 + 80);
      v9 = *(v5 + 112);
      v29 = *(v5 + 96);
      v30 = v9;
      v10 = *(v5 + 112);
      v11 = *(v5 + 144);
      v31 = *(v5 + 128);
      v32 = v11;
      v12 = *(v5 + 16);
      v13 = *(v5 + 48);
      v25 = *(v5 + 32);
      v26 = v13;
      v14 = *(v5 + 48);
      v15 = *(v5 + 80);
      v27 = *(v5 + 64);
      v28 = v15;
      v16 = *(v5 + 16);
      v24[0] = *v5;
      v24[1] = v16;
      v17 = *(v5 + 176);
      v22[10] = v33;
      v22[11] = v17;
      v22[6] = v29;
      v22[7] = v10;
      v22[8] = v31;
      v22[9] = v6;
      v22[2] = v25;
      v22[3] = v14;
      v22[4] = v27;
      v22[5] = v8;
      v35 = *(v5 + 192);
      v23 = *(v5 + 192);
      v22[0] = v24[0];
      v22[1] = v12;
      sub_26BE5CDE4(v24, v21);
      v18 = sub_26BE7A5E4(v22);
      result = sub_26BE5CD74(v24);
      if (v2)
      {
        break;
      }

      v20 = __OFADD__(a1, v18);
      a1 += v18;
      if (v20)
      {
        __break(1u);
        return result;
      }

      v5 += 200;
      --v4;
    }

    while (v4);
  }

  return a1;
}

uint64_t sub_26BE7ABF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8B0, &qword_26C012560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BE7AC60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8B0, &qword_26C012560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BE7ACD8(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 44);
  v6 = *(a1 + 48);
  v7 = *(a1 + 52);
  v8 = v3 >> 62;
  v43 = *(a1 + 40);
  v44 = *(a1 + 32);
  v45 = *(a1 + 16);
  if ((v3 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v11 = *(v2 + 16);
  v10 = *(v2 + 24);
  v9 = v10 - v11;
  if (__OFSUB__(v10, v11))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
      goto LABEL_33;
    }

    v9 = HIDWORD(v2) - v2;
  }

LABEL_11:
  result = sub_26BF30414(v9);
  if (!v1)
  {
    v13 = result;
    v42 = v5;
    sub_26BE11228(v2, v3);
    v14 = __OFADD__(v13, v9);
    v15 = v13 + v9;
    if (!v14)
    {
      v16 = v4 >> 62;
      if ((v4 >> 62) > 1)
      {
        if (v16 != 2)
        {
          v17 = 0;
          goto LABEL_24;
        }

        v19 = *(v45 + 16);
        v18 = *(v45 + 24);
        v17 = v18 - v19;
        if (!__OFSUB__(v18, v19))
        {
LABEL_24:
          v21 = sub_26BF30414(v17);
          sub_26BE11228(v45, v4);
          v22 = v21 + v17;
          if (!__OFADD__(v21, v17))
          {
            v23 = v15 + v22;
            if (!__OFADD__(v15, v22))
            {
              v46 = bswap64(v44);
              v24 = MEMORY[0x277D838B0];
              v25 = MEMORY[0x277CC9C18];
              v49 = MEMORY[0x277D838B0];
              v50 = MEMORY[0x277CC9C18];
              v47 = &v46;
              v48 = &v47;
              v26 = __swift_project_boxed_opaque_existential_1(&v47, MEMORY[0x277D838B0]);
              v28 = *v26;
              v27 = v26[1];
              sub_26C00908C();
              __swift_destroy_boxed_opaque_existential_1(&v47);
              v14 = __OFADD__(v23, 8);
              v29 = v23 + 8;
              if (!v14)
              {
                LODWORD(v46) = bswap32(v43);
                v49 = v24;
                v50 = v25;
                v47 = &v46;
                v48 = (&v46 + 4);
                v30 = __swift_project_boxed_opaque_existential_1(&v47, v24);
                v32 = *v30;
                v31 = v30[1];
                sub_26C00908C();
                __swift_destroy_boxed_opaque_existential_1(&v47);
                if (!__OFADD__(v29, 4))
                {
                  LODWORD(v46) = bswap32(v42);
                  v49 = v24;
                  v50 = v25;
                  v47 = &v46;
                  v48 = (&v46 + 4);
                  v33 = __swift_project_boxed_opaque_existential_1(&v47, v24);
                  v35 = *v33;
                  v34 = v33[1];
                  sub_26C00908C();
                  __swift_destroy_boxed_opaque_existential_1(&v47);
                  if (!__OFADD__(v29 + 4, 4))
                  {
                    LODWORD(v46) = bswap32(v6);
                    v49 = v24;
                    v50 = v25;
                    v47 = &v46;
                    v48 = (&v46 + 4);
                    v36 = __swift_project_boxed_opaque_existential_1(&v47, v24);
                    v38 = *v36;
                    v37 = v36[1];
                    sub_26C00908C();
                    __swift_destroy_boxed_opaque_existential_1(&v47);
                    if (!__OFADD__(v29 + 8, 4))
                    {
                      LOBYTE(v46) = v7;
                      v49 = v24;
                      v50 = v25;
                      v47 = &v46;
                      v48 = (&v46 + 1);
                      v39 = __swift_project_boxed_opaque_existential_1(&v47, v24);
                      v41 = *v39;
                      v40 = v39[1];
                      sub_26C00908C();
                      __swift_destroy_boxed_opaque_existential_1(&v47);
                      result = v29 + 13;
                      if (!__OFADD__(v29 + 12, 1))
                      {
                        goto LABEL_23;
                      }

                      goto LABEL_40;
                    }

LABEL_39:
                    __break(1u);
LABEL_40:
                    __break(1u);
LABEL_41:
                    __break(1u);
                  }

LABEL_38:
                  __break(1u);
                  goto LABEL_39;
                }

LABEL_37:
                __break(1u);
                goto LABEL_38;
              }

LABEL_36:
              __break(1u);
              goto LABEL_37;
            }

LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        __break(1u);
      }

      else if (!v16)
      {
        v17 = BYTE6(v4);
        goto LABEL_24;
      }

      if (__OFSUB__(HIDWORD(v45), v45))
      {
        goto LABEL_41;
      }

      v17 = HIDWORD(v45) - v45;
      goto LABEL_24;
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_23:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BE7AFEC(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 28);
  v7 = *(a1 + 32);
  v8 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v11 = *(v2 + 16);
  v10 = *(v2 + 24);
  v9 = v10 - v11;
  if (__OFSUB__(v10, v11))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
      goto LABEL_23;
    }

    v9 = HIDWORD(v2) - v2;
  }

LABEL_11:
  result = sub_26BF30414(v9);
  v13 = result;
  if (!v1)
  {
    sub_26BE11228(v2, v3);
    v14 = __OFADD__(v13, v9);
    v15 = v13 + v9;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      v32 = bswap64(v4);
      v16 = MEMORY[0x277D838B0];
      v17 = MEMORY[0x277CC9C18];
      v35 = MEMORY[0x277D838B0];
      v36 = MEMORY[0x277CC9C18];
      v33 = &v32;
      v34 = &v33;
      v18 = __swift_project_boxed_opaque_existential_1(&v33, MEMORY[0x277D838B0]);
      v20 = *v18;
      v19 = v18[1];
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v33);
      v14 = __OFADD__(v15, 8);
      v21 = v15 + 8;
      if (!v14)
      {
        LODWORD(v32) = bswap32(v6);
        v35 = v16;
        v36 = v17;
        v33 = &v32;
        v34 = (&v32 + 4);
        v22 = __swift_project_boxed_opaque_existential_1(&v33, v16);
        v24 = *v22;
        v23 = v22[1];
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(&v33);
        if (!__OFADD__(v21, 4))
        {
          LODWORD(v32) = bswap32(v5);
          v35 = v16;
          v36 = v17;
          v33 = &v32;
          v34 = (&v32 + 4);
          v25 = __swift_project_boxed_opaque_existential_1(&v33, v16);
          v27 = *v25;
          v26 = v25[1];
          sub_26C00908C();
          __swift_destroy_boxed_opaque_existential_1(&v33);
          if (!__OFADD__(v21 + 4, 4))
          {
            LODWORD(v32) = bswap32(v7);
            v35 = v16;
            v36 = v17;
            v33 = &v32;
            v34 = (&v32 + 4);
            v28 = __swift_project_boxed_opaque_existential_1(&v33, v16);
            v30 = *v28;
            v29 = v28[1];
            sub_26C00908C();
            __swift_destroy_boxed_opaque_existential_1(&v33);
            result = v21 + 12;
            if (!__OFADD__(v21 + 8, 4))
            {
              goto LABEL_17;
            }

            goto LABEL_22;
          }

LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_17:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BE7B1F4(uint64_t a1)
{
  v25[5] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v24 = bswap32(*a1);
  v25[3] = MEMORY[0x277D838B0];
  v25[4] = MEMORY[0x277CC9C18];
  v25[0] = &v24;
  v25[1] = v25;
  v6 = __swift_project_boxed_opaque_existential_1(v25, MEMORY[0x277D838B0]);
  v8 = *v6;
  v7 = v6[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(v25);
  v9 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v9 != 2)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v12 = *(v2 + 16);
  v11 = *(v2 + 24);
  v10 = v11 - v12;
  if (__OFSUB__(v11, v12))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
      goto LABEL_30;
    }

    v10 = HIDWORD(v2) - v2;
  }

LABEL_11:
  result = sub_26BF30414(v10);
  if (!v1)
  {
    v14 = result;
    sub_26BE11228(v2, v3);
    v15 = v14 + v10;
    if (__OFADD__(v14, v10))
    {
      __break(1u);
    }

    else
    {
      v16 = v15 + 4;
      if (!__OFADD__(v15, 4))
      {
        v17 = v5 >> 62;
        if ((v5 >> 62) > 1)
        {
          if (v17 != 2)
          {
            v18 = 0;
            goto LABEL_25;
          }

          v20 = *(v4 + 16);
          v19 = *(v4 + 24);
          v18 = v19 - v20;
          if (!__OFSUB__(v19, v20))
          {
LABEL_25:
            v22 = sub_26BF30414(v18);
            sub_26BE11228(v4, v5);
            v23 = v22 + v18;
            if (!__OFADD__(v22, v18))
            {
              result = v16 + v23;
              if (!__OFADD__(v16, v23))
              {
                goto LABEL_24;
              }

              goto LABEL_32;
            }

LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
          }

          __break(1u);
        }

        else if (!v17)
        {
          v18 = BYTE6(v5);
          goto LABEL_25;
        }

        if (__OFSUB__(HIDWORD(v4), v4))
        {
          goto LABEL_33;
        }

        v18 = HIDWORD(v4) - v4;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_24:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 __swift_memcpy53_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26BE7B3F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 53))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26BE7B44C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 53) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 53) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

_DWORD *MLS.NodeIndex.init(fromLeafIndex:)@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X8>)
{
  if ((*result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = 2 * *result;
  }

  return result;
}

_DWORD *MLS.NodeCount.init(fromLeafCount:)@<X0>(_DWORD *result@<X0>, int *a2@<X8>)
{
  v2 = *result - 1;
  if (*result)
  {
    if ((v2 & 0x80000000) == 0)
    {
      *a2 = (2 * v2) | 1;
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

char *sub_26BE7B518(int *a1)
{
  v7 = *a1;
  v8 = *a1 - 1;
  if (!*a1)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v8 < 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    v2 = sub_26BEEBFB0(0, *(v2 + 2) + 1, 1, v2);
    goto LABEL_27;
  }

  v27 = v4;
  v28 = v2;
  v29 = v1;
  v30 = v5;
  v31 = v6;
  v2 = *v2;
  v9 = 2 * v8;
  if (v2 > 2 * v8)
  {
    sub_26BE01654();
    swift_allocError();
    v11 = 0x800000026C02B660;
    v12 = 0xD000000000000023;
LABEL_5:
    *v10 = v12;
    *(v10 + 8) = v11;
    *(v10 + 112) = 15;
    swift_willThrow();
    return v2;
  }

  v25 = v7;
  MLS.NodeIndex.init(forRoot:)(&v25, &v26);
  if (v3)
  {
    return v2;
  }

  LODWORD(v4) = v26;
  if (v2 == v26)
  {
    return MEMORY[0x277D84F90];
  }

  v14 = __clz(__rbit32(~v2));
  v15 = (-1 << (v14 + 1)) - 1;
  if (v14 > 0x1E)
  {
    v15 = -1;
  }

  v16 = v15 & ((1 << v14) | v2);
  if (v16 > v9)
  {
LABEL_30:
    sub_26BE01654();
    swift_allocError();
    v11 = 0x800000026C02B690;
    v12 = 0xD000000000000015;
    goto LABEL_5;
  }

  v2 = MEMORY[0x277D84F90];
  while (1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v16 == v4)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = sub_26BEEBFB0(0, *(v2 + 2) + 1, 1, v2);
    }

    v19 = *(v2 + 2);
    v18 = *(v2 + 3);
    if (v19 >= v18 >> 1)
    {
      v2 = sub_26BEEBFB0((v18 > 1), v19 + 1, 1, v2);
    }

    *(v2 + 2) = v19 + 1;
    *&v2[4 * v19 + 32] = v16;
    v20 = __clz(__rbit32(~v16));
    v21 = (-1 << (v20 + 1)) - 1;
    if (v20 > 0x1E)
    {
      v21 = -1;
    }

    if (v20 >= 0x20)
    {
      v22 = 0;
    }

    else
    {
      v22 = 1 << v20;
    }

    v16 = v21 & (v22 | v16);
    if (v16 > v9)
    {

      goto LABEL_30;
    }
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_27:
  v24 = *(v2 + 2);
  v23 = *(v2 + 3);
  if (v24 >= v23 >> 1)
  {
    v2 = sub_26BEEBFB0((v23 > 1), v24 + 1, 1, v2);
  }

  *(v2 + 2) = v24 + 1;
  *&v2[4 * v24 + 32] = v4;
  return v2;
}

unint64_t sub_26BE7B7A4(int *a1)
{
  v3 = *a1;
  v4 = *v1;
  LODWORD(v37) = *v1;
  v38 = v3;
  v5 = &v37;
  v6 = sub_26BE7B518(&v38);
  if (v2)
  {
    return v5;
  }

  v7 = v6;
  v8 = *(v6 + 2);
  if (!v8)
  {
LABEL_44:

    return MEMORY[0x277D84F90];
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = v7;
  if (!isUniquelyReferenced_nonNull_native || v8 >= *(v7 + 3) >> 1)
  {
    v7 = sub_26BEEBFB0(isUniquelyReferenced_nonNull_native, v8 + 1, 1, v7);
    v39 = v7;
  }

  result = sub_26BE58910(0, 0, 1, v4);
  v11 = *(v7 + 2);
  if (!v11)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v12 = v11 - 1;
  *(v7 + 2) = v11 - 1;
  v13 = v3 - 1;
  if (!v3)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if ((v13 & 0x80000000) == 0)
  {
    if (v12)
    {
      v14 = 2 * v13;
      v37 = MEMORY[0x277D84F90];
      result = sub_26BECB934(0, v12, 0);
      v15 = 0;
      v5 = v37;
      while (v12 != v15)
      {
        if (v15 >= *(v7 + 2))
        {
          goto LABEL_48;
        }

        v16 = *&v7[4 * v15 + 32];
        v17 = __clz(__rbit32(~v16));
        v18 = (-1 << (v17 + 1)) - 1;
        if (v17 > 0x1E)
        {
          v18 = -1;
        }

        v19 = 1;
        v20 = 1 << v17;
        if (v17 >= 0x20)
        {
          v20 = 0;
        }

        v21 = v18 & (v20 | v16);
        if (v21 > v14)
        {
          goto LABEL_25;
        }

        v22 = __clz(__rbit32(~v21));
        if (v22 < v17 || (v22 <= 0x1E ? (v23 = v16 >> (v22 + 1) == v21 >> (v22 + 1)) : (v23 = 1), !v23))
        {
          sub_26BE01654();
          swift_allocError();
          *v36 = 0xD000000000000022;
          *(v36 + 8) = 0x800000026C02B630;
          *(v36 + 112) = 15;
          swift_willThrow();

          return v5;
        }

        if (v21)
        {
          v25 = v22 != 0;
          v26 = v22 - 1;
          if (!v25)
          {
            goto LABEL_49;
          }

          v27 = (1 << v26) ^ v21;
          v28 = __clz(__rbit32((1 << v26) ^ ~v21));
          v29 = (3 << v26) ^ v21;
          if (v16 >> (v28 + 1) == v27 >> (v28 + 1) || v28 > 0x1E)
          {
            v31 = v29;
          }

          else
          {
            v31 = v27;
          }

          if (v28 >= v17)
          {
            v32 = v31;
          }

          else
          {
            v32 = v27;
          }

          v19 = v32 > v14;
          if (v32 <= v14)
          {
            v24 = v32;
          }

          else
          {
            v24 = 0;
          }
        }

        else
        {
LABEL_25:
          v24 = 0;
        }

        v37 = v5;
        v34 = v5[2];
        v33 = v5[3];
        if (v34 >= v33 >> 1)
        {
          result = sub_26BECB934((v33 > 1), v34 + 1, 1);
          v5 = v37;
        }

        ++v15;
        v5[2] = v34 + 1;
        v35 = &v5[v34];
        *(v35 + 8) = v24;
        *(v35 + 36) = v19;
        if (v12 == v15)
        {

          return v5;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    goto LABEL_44;
  }

LABEL_52:
  __break(1u);
  return result;
}

unsigned int *MLS.NodeIndex.parent(forNodeCount:)@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = __clz(__rbit32(~*v2));
  v4 = (-1 << (v3 + 1)) - 1;
  if (v3 > 0x1E)
  {
    v4 = -1;
  }

  if (v3 >= 0x20)
  {
    v5 = 0;
  }

  else
  {
    v5 = 1 << v3;
  }

  v6 = v4 & (v5 | *v2);
  v7 = v6 >= *result;
  if (v6 >= *result)
  {
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 4) = v7;
  return result;
}

_DWORD *MLS.NodeIndex.init(forRoot:)@<X0>(_DWORD *result@<X0>, int *a2@<X8>)
{
  if (*result)
  {
    v2 = *result - 1;
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      *a2 = ~(-1 << (__clz((2 * v2) | 1) ^ 0x1F));
    }
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v3 = 0xD000000000000024;
    *(v3 + 8) = 0x800000026C02B5D0;
    *(v3 + 112) = 15;
    return swift_willThrow();
  }

  return result;
}

unsigned int *sub_26BE7BBA8@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = __clz(__rbit32(~*v2));
  v6 = __clz(__rbit32(~*result));
  if (v6 >= v5 && (v6 <= 0x1E ? (v7 = v4 >> (v6 + 1) == v3 >> (v6 + 1)) : (v7 = 1), v7))
  {
    if (v3)
    {
      v9 = v6 - 1;
      v10 = (1 << v9) ^ v3;
      v11 = __clz(__rbit32((1 << v9) ^ ~v3));
      if (v11 >= v5 && ((v12 = v4 >> (v11 + 1), v11 <= 0x1E) ? (v13 = v12 == v10 >> (v11 + 1)) : (v13 = 1), v13))
      {
        *a2 = (3 << v9) ^ v3;
      }

      else
      {
        *a2 = v10;
      }

      *(a2 + 4) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 4) = 1;
    }
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v8 = 0xD000000000000022;
    *(v8 + 8) = 0x800000026C02B630;
    *(v8 + 112) = 15;
    return swift_willThrow();
  }

  return result;
}

_DWORD *MLS.LeafIndex.init(fromNodeIndex:)@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X8>)
{
  if (*result)
  {
    sub_26BE01654();
    swift_allocError();
    *v2 = 0xD000000000000026;
    *(v2 + 8) = 0x800000026C02B600;
    *(v2 + 112) = 15;
    return swift_willThrow();
  }

  else
  {
    *a2 = *result >> 1;
  }

  return result;
}

void MLS.NodeIndex.left.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = (1 << (__clz(__rbit32(~v2)) - 1)) ^ v2;
  if ((*v1 & 1) == 0)
  {
    v3 = 0;
  }

  *a1 = v3;
  *(a1 + 4) = (v2 & 1) == 0;
}

void MLS.NodeIndex.right.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = (3 << (__clz(__rbit32(~v2)) - 1)) ^ v2;
  if ((*v1 & 1) == 0)
  {
    v3 = 0;
  }

  *a1 = v3;
  *(a1 + 4) = (v2 & 1) == 0;
}

BOOL sub_26BE7BDC4(_DWORD *a1)
{
  v2 = __clz(__rbit32(~*a1));
  if (v2 < __clz(__rbit32(~*v1)))
  {
    return 0;
  }

  return v2 > 0x1E || *v1 >> (v2 + 1) == *a1 >> (v2 + 1);
}

int *sub_26BE7BE10@<X0>(int *result@<X0>, unsigned int *a2@<X8>)
{
  if ((*v2 & 0x80000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v3 = *result;
  if (*result < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v4 = 2 * *v2;
  v5 = 2 * v3;
  if (v4 == 2 * v3)
  {
LABEL_22:
    *a2 = v4;
    return result;
  }

  v6 = 0;
  do
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    v4 >>= 1;
    v5 >>= 1;
    ++v6;
  }

  while (v4 != v5);
  v8 = v4 << v7;
  if (v7 >= 0x20)
  {
    v8 = 0;
  }

  v9 = v4 >> -v7;
  if (v7 <= 0xFFFFFFFFFFFFFFE0)
  {
    v9 = 0;
  }

  if (v7 >= 0)
  {
    v9 = v8;
  }

  if ((v7 - 33) <= 0xFFFFFFFFFFFFFFBELL)
  {
    v9 = 0;
  }

  v10 = __OFSUB__(v7, 1);
  v11 = v7 - 1;
  if (v10)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v11 >= 0x20)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1 << v11;
  }

  v13 = v12 != 0;
  v14 = v12 - 1;
  if (v13)
  {
    v13 = __CFADD__(v9, v14);
    v4 = v9 + v14;
    if (v13)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

Swift::Int __swiftcall UInt32.log2Floor()()
{
  v1 = __clz(v0) ^ 0x1F;
  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

Swift::UInt32 __swiftcall UInt32.nextPowerOfTwo()()
{
  v1 = __clz(v0);
  v2 = 1 << (v1 ^ 0x1F);
  if (v1)
  {
    v3 = 1 << -v1;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == v0)
  {
    v3 = v0;
  }

  if (v0)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

unsigned int *MLS.NodeIndex.sibling(forNodeCount:)@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  v4 = *result;
  v5 = *v2;
  v6 = __clz(__rbit32(~*v2));
  v7 = (-1 << (v6 + 1)) - 1;
  if (v6 > 0x1E)
  {
    v7 = -1;
  }

  if (v6 >= 0x20)
  {
    v8 = 0;
  }

  else
  {
    v8 = 1 << v6;
  }

  v9 = v7 & (v8 | v5);
  if (v9 >= v4)
  {
    goto LABEL_10;
  }

  v10 = a2;
  v13[0] = v9;
  v13[1] = v5;
  result = sub_26BE7BBA8(v13, &v14);
  if (v3)
  {
    return result;
  }

  if (v15 == 1)
  {
    a2 = v10;
LABEL_10:
    *a2 = 0;
    *(a2 + 4) = 1;
    return result;
  }

  v11 = v14;
  v12 = v14 >= v4;
  if (v14 >= v4)
  {
    v11 = 0;
  }

  *v10 = v11;
  *(v10 + 4) = v12;
  return result;
}

uint64_t _s8SwiftMLS0B0O9LeafCountV9hashValueSivg_0()
{
  v1 = *v0;
  sub_26C00B05C();
  sub_26C00B09C();
  return sub_26C00B0CC();
}

uint64_t sub_26BE7C140()
{
  v1 = *v0;
  sub_26C00B05C();
  sub_26C00B09C();
  return sub_26C00B0CC();
}

unint64_t sub_26BE7C188()
{
  result = qword_28045E9E8;
  if (!qword_28045E9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E9E8);
  }

  return result;
}

unint64_t sub_26BE7C1E0()
{
  result = qword_28045E9F0;
  if (!qword_28045E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E9F0);
  }

  return result;
}

unint64_t sub_26BE7C238()
{
  result = qword_28045E9F8;
  if (!qword_28045E9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E9F8);
  }

  return result;
}

uint64_t _s9LeafIndexVwet(uint64_t a1, int a2)
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

uint64_t _s9LeafIndexVwst(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_26BE7C3DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BE7C3FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 128) = v3;
  return result;
}

void sub_26BE7C458(uint64_t a1, unsigned __int8 a2)
{
  v5 = *(v2 + 48);
  v6 = sub_26C00A45C();
  sub_26BE2DC18(a1, v13);
  v7 = swift_allocObject();
  v8 = v13[5];
  *(v7 + 88) = v13[4];
  *(v7 + 104) = v8;
  *(v7 + 120) = v13[6];
  v9 = v13[1];
  *(v7 + 24) = v13[0];
  *(v7 + 40) = v9;
  v10 = v13[3];
  *(v7 + 56) = v13[2];
  *(v7 + 16) = 1;
  *(v7 + 136) = v14;
  *(v7 + 72) = v10;
  aBlock[4] = sub_26BE2DC78;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BEB8234;
  aBlock[3] = &block_descriptor_1;
  v11 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v11);

  sub_26BE7C9B8(a2, 0);
}