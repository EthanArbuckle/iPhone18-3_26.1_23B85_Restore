void *sub_22633A104()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793840, &unk_226354360);
  v2 = *v0;
  v3 = sub_226350A7C();
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

uint64_t sub_22633A2A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_22633A2E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_22633A3AC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v49 = a4;
  v7 = v4;
  v8 = a1(0);
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v47 = &v39 - v10;
  v46 = sub_22634EEFC();
  v51 = *(v46 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v13 = *v4;
  v14 = sub_226350A7C();
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
        sub_22633B870(v35 + v37, v47, v27);
        (*(v26 + 32))(*(v25 + 48) + v32, v34, v33);
        v38 = v36;
        v13 = v44;
        result = sub_22633B8D8(v38, *(v25 + 56) + v37, v27);
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

char *sub_22633A6C4()
{
  v1 = v0;
  v34 = sub_22634EEFC();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793CB0, &qword_226355678);
  v4 = *v0;
  v5 = sub_226350A7C();
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

id sub_22633A944()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793830, &qword_226355650);
  v2 = *v0;
  v3 = sub_226350A7C();
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

void *sub_22633AAEC()
{
  v1 = v0;
  v2 = type metadata accessor for VisualAction(0);
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793C30, &unk_226355620);
  v5 = *v0;
  v6 = sub_226350A7C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v35 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = *(v5 + 56);
        v23 = (*(v5 + 48) + 16 * v20);
        v24 = v5;
        v25 = *v23;
        v26 = v23[1];
        v27 = v33;
        v28 = *(v34 + 72) * v20;
        sub_22633B870(v22 + v28, v33, type metadata accessor for VisualAction);
        v29 = v35;
        v30 = (*(v35 + 48) + v21);
        *v30 = v25;
        v30[1] = v26;
        v5 = v24;
        sub_22633B8D8(v27, *(v29 + 56) + v28, type metadata accessor for VisualAction);

        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        v7 = v35;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
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

char *sub_22633AE00(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v8 = v4;
  v50 = a1(0);
  v53 = *(v50 - 8);
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v39 - v10;
  v48 = a2(0);
  v52 = *(v48 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v39 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = *v4;
  v14 = sub_226350A7C();
  v15 = v14;
  if (*(v13 + 16))
  {
    result = (v14 + 64);
    v17 = (v13 + 64);
    v18 = ((1 << *(v15 + 32)) + 63) >> 6;
    v39 = v8;
    v40 = v13 + 64;
    if (v15 != v13 || result >= &v17[8 * v18])
    {
      result = memmove(result, v17, 8 * v18);
    }

    v19 = 0;
    v20 = *(v13 + 16);
    v51 = v15;
    *(v15 + 16) = v20;
    v21 = 1 << *(v13 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v13 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = v52 + 16;
    v45 = v24;
    v42 = v52 + 32;
    v43 = v53 + 16;
    v41 = v53 + 32;
    v46 = v13;
    v26 = v47;
    v25 = v48;
    if (v23)
    {
      do
      {
        v27 = __clz(__rbit64(v23));
        v54 = (v23 - 1) & v23;
LABEL_14:
        v30 = v27 | (v19 << 6);
        v31 = v52;
        v32 = *(v52 + 72) * v30;
        (*(v52 + 16))(v26, *(v13 + 48) + v32, v25);
        v33 = v53;
        v34 = *(v53 + 72) * v30;
        v35 = v49;
        v36 = v50;
        (*(v53 + 16))(v49, *(v13 + 56) + v34, v50);
        v37 = v51;
        (*(v31 + 32))(*(v51 + 48) + v32, v26, v25);
        v38 = *(v37 + 56);
        v13 = v46;
        result = (*(v33 + 32))(v38 + v34, v35, v36);
        v24 = v45;
        v23 = v54;
      }

      while (v54);
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v8 = v39;
        v15 = v51;
        goto LABEL_18;
      }

      v29 = *(v40 + 8 * v19);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v54 = (v29 - 1) & v29;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v8 = v15;
  }

  return result;
}

void *sub_22633B15C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793C60, &qword_226355648);
  v2 = *v0;
  v3 = sub_226350A7C();
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

char *sub_22633B2CC()
{
  v1 = v0;
  v34 = sub_22634EEFC();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793C48, &qword_226355630);
  v4 = *v0;
  v5 = sub_226350A7C();
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

char *sub_22633B54C()
{
  v1 = v0;
  v34 = sub_22634EEFC();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793C50, &qword_226355638);
  v4 = *v0;
  v5 = sub_226350A7C();
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

uint64_t sub_22633B828(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22633B870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22633B8D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22633B940(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793CC0, qword_226352A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22633B9A8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_22633BA54(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_226350C4C() & 1;
  }
}

uint64_t sub_22633BAAC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for PBVisualActionEvent()
{
  result = qword_27D793CC8;
  if (!qword_27D793CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22633BB58()
{
  sub_22634F1AC();
  if (v0 <= 0x3F)
  {
    sub_22633BC44(319, &qword_28137E030);
    if (v1 <= 0x3F)
    {
      sub_22633BC44(319, &qword_27D793CD8);
      if (v2 <= 0x3F)
      {
        sub_22633BC44(319, &qword_27D793CE0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22633BC44(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22635085C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for PBVisualActionEvent.VisualActionOutcomeType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PBVisualActionEvent.VisualActionOutcomeType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_22633BCE0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22633BCFC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_22633BD3C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_22633BD6C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22633BD94()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_226350CEC();
  sub_22635041C();
  return sub_226350D0C();
}

uint64_t sub_22633BE00(uint64_t a1, uint64_t a2)
{
  v4 = sub_22633D050();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22633BE4C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_226350CEC();
  sub_22635041C();
  return sub_226350D0C();
}

unint64_t sub_22633BEB8()
{
  result = qword_27D793CE8;
  if (!qword_27D793CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793CE8);
  }

  return result;
}

unint64_t sub_22633BF10()
{
  result = qword_27D793CF0;
  if (!qword_27D793CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D793CF8, qword_2263557A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793CF0);
  }

  return result;
}

unint64_t sub_22633BF78()
{
  result = qword_27D793D00;
  if (!qword_27D793D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793D00);
  }

  return result;
}

unint64_t sub_22633BFD0()
{
  result = qword_27D793D08;
  if (!qword_27D793D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793D08);
  }

  return result;
}

uint64_t sub_22633C024()
{
  v0 = sub_22634F30C();
  __swift_allocate_value_buffer(v0, qword_27D793EF0);
  __swift_project_value_buffer(v0, qword_27D793EF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793D38, &qword_2263559C0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793D40, &qword_2263559C8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_226355690;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "actionId";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22634F2EC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "outcome";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "bundleId";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "majorLabel";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "minorLabel";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "timestamp";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v7();
  return sub_22634F2FC();
}

uint64_t sub_22633C2E4()
{
  while (1)
  {
    result = sub_22634F22C();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          v6 = *(type metadata accessor for PBVisualActionEvent() + 32);
          goto LABEL_3;
        case 5:
          v7 = *(type metadata accessor for PBVisualActionEvent() + 36);
LABEL_3:
          v0 = 0;
          sub_22634F25C();
          break;
        case 6:
          v5 = *(type metadata accessor for PBVisualActionEvent() + 40);
          sub_22634F24C();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          v1 = *(type metadata accessor for PBVisualActionEvent() + 20);
          goto LABEL_3;
        case 2:
          sub_22633C42C();
          break;
        case 3:
          v4 = *(type metadata accessor for PBVisualActionEvent() + 28);
          goto LABEL_3;
      }
    }
  }
}

uint64_t sub_22633C42C()
{
  v0 = *(type metadata accessor for PBVisualActionEvent() + 24);
  sub_22633D050();
  return sub_22634F23C();
}

uint64_t sub_22633C4A0()
{
  result = sub_22633C570(v0);
  if (!v1)
  {
    sub_22633C5E8(v0);
    sub_22633C68C(v0);
    sub_22633C704(v0);
    sub_22633C77C(v0);
    sub_22633C7F4(v0);
    return sub_22634F18C();
  }

  return result;
}

uint64_t sub_22633C570(uint64_t a1)
{
  result = type metadata accessor for PBVisualActionEvent();
  v3 = (a1 + *(result + 20));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22634F2DC();
  }

  return result;
}

uint64_t sub_22633C5E8(uint64_t a1)
{
  result = type metadata accessor for PBVisualActionEvent();
  v3 = (a1 + *(result + 24));
  if ((*(v3 + 9) & 1) == 0)
  {
    v4 = *v3;
    v5 = v3[1] & 1;
    sub_22633D050();
    return sub_22634F2BC();
  }

  return result;
}

uint64_t sub_22633C68C(uint64_t a1)
{
  result = type metadata accessor for PBVisualActionEvent();
  v3 = (a1 + *(result + 28));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22634F2DC();
  }

  return result;
}

uint64_t sub_22633C704(uint64_t a1)
{
  result = type metadata accessor for PBVisualActionEvent();
  v3 = (a1 + *(result + 32));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22634F2DC();
  }

  return result;
}

uint64_t sub_22633C77C(uint64_t a1)
{
  result = type metadata accessor for PBVisualActionEvent();
  v3 = (a1 + *(result + 36));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22634F2DC();
  }

  return result;
}

uint64_t sub_22633C7F4(uint64_t a1)
{
  result = type metadata accessor for PBVisualActionEvent();
  v3 = (a1 + *(result + 40));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_22634F2CC();
  }

  return result;
}

uint64_t sub_22633C86C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22634F19C();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 256;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1[10];
  v12 = (a2 + a1[9]);
  *v12 = 0;
  v12[1] = 0;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 8) = 1;
  return result;
}

uint64_t sub_22633C900@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22634F1AC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_22633C968(uint64_t a1)
{
  v3 = sub_22634F1AC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_22633CA24(uint64_t a1, uint64_t a2)
{
  v4 = sub_22633D328(&qword_27D793D28, type metadata accessor for PBVisualActionEvent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22633CAC8(uint64_t a1)
{
  v2 = sub_22633D328(&qword_27D793270, type metadata accessor for PBVisualActionEvent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22633CB34()
{
  sub_226350CEC();
  sub_22635041C();
  return sub_226350D0C();
}

uint64_t sub_22633CB8C()
{
  sub_22633D328(&qword_27D793270, type metadata accessor for PBVisualActionEvent);

  return sub_22634F2AC();
}

uint64_t sub_22633CC08()
{
  sub_226350CEC();
  sub_22635041C();
  return sub_226350D0C();
}

uint64_t sub_22633CC60()
{
  v0 = sub_22634F30C();
  __swift_allocate_value_buffer(v0, qword_27D793F08);
  __swift_project_value_buffer(v0, qword_27D793F08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793D38, &qword_2263559C0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793D40, &qword_2263559C8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2263556A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Conversion";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22634F2EC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Rejection";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Abandon";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_22634F2FC();
}

uint64_t sub_22633CE94@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_22634F30C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

unint64_t sub_22633D050()
{
  result = qword_27D793D30;
  if (!qword_27D793D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793D30);
  }

  return result;
}

uint64_t sub_22633D0A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBVisualActionEvent();
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_226350C4C();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 9);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 9);
  if (v15)
  {
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v17)
    {
      return 0;
    }

    v26 = *v14;
    v27 = *v16;
    if (v16[1])
    {
      if (v27)
      {
        if (v27 == 1)
        {
          if (v26 != 1)
          {
            return 0;
          }
        }

        else if (v26 != 2)
        {
          return 0;
        }
      }

      else if (v26)
      {
        return 0;
      }
    }

    else if (v26 != v27)
    {
      return 0;
    }
  }

  v18 = v4[7];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }

    if (*v19 != *v21 || v20 != v22)
    {
      v24 = v4;
      v25 = sub_226350C4C();
      v4 = v24;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v28 = v4[8];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = v31[1];
  if (v30)
  {
    if (!v32)
    {
      return 0;
    }

    if (*v29 != *v31 || v30 != v32)
    {
      v34 = v4;
      v35 = sub_226350C4C();
      v4 = v34;
      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v32)
  {
    return 0;
  }

  v36 = v4[9];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (a2 + v36);
  v40 = v39[1];
  if (!v38)
  {
    if (!v40)
    {
      goto LABEL_49;
    }

    return 0;
  }

  if (!v40)
  {
    return 0;
  }

  if (*v37 != *v39 || v38 != v40)
  {
    v41 = v4;
    v42 = sub_226350C4C();
    v4 = v41;
    if ((v42 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_49:
  v43 = v4[10];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 8);
  v46 = (a2 + v43);
  v47 = *(a2 + v43 + 8);
  if (v45)
  {
    if (!v47)
    {
      return 0;
    }
  }

  else
  {
    if (*v44 != *v46)
    {
      LOBYTE(v47) = 1;
    }

    if (v47)
    {
      return 0;
    }
  }

  sub_22634F1AC();
  sub_22633D328(&qword_27D793D48, MEMORY[0x277D216C8]);
  return sub_22635044C() & 1;
}

uint64_t sub_22633D328(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22633D3A8()
{
  v1 = OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___toolManager;
  if (*(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___toolManager))
  {
    v2 = *(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___toolManager);
  }

  else
  {
    type metadata accessor for ToolManager();
    v2 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v2 + 112) = 1;
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_22633D460(uint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v9 = v4;
    a2();
    swift_allocObject();
    v7 = a4();
    v10 = *(v9 + v5);
    *(v9 + v5) = v7;
  }

  return v7;
}

uint64_t sub_22633D4F0()
{
  v1 = OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___vectorDatabase;
  if (*(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___vectorDatabase))
  {
    v2 = *(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___vectorDatabase);
  }

  else
  {
    v2 = sub_22633D558();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_22633D558()
{
  v29 = sub_22634EE0C();
  v0 = *(v29 - 8);
  v1 = *(v0 + 64);
  v2 = MEMORY[0x28223BE20](v29);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v28 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793BD0, &qword_226355528);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793BE0, &qword_226355A70);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v28 - v17;
  v19 = *(sub_22633D370() + 120);
  (*(v11 + 104))(v14, *MEMORY[0x277D85778], v10);
  sub_22634FB5C();
  (*(v11 + 8))(v14, v10);

  v20 = [objc_opt_self() appPredictionDirectory];
  sub_22635046C();

  sub_22634EDCC();

  sub_22634EDEC();
  v21 = *(v0 + 8);
  v22 = v4;
  v23 = v29;
  v21(v22, v29);
  sub_22634EDBC();
  v21(v7, v23);
  v24 = type metadata accessor for VectorDatabase();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  return sub_226300688(v9, 512, 51, 0xE100000000000000, v18);
}

id sub_22633D864@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___engagementStream;
  v4 = *(v1 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___engagementStream);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___engagementStream);
  }

  else
  {
    v6 = [objc_opt_self() atx:7257600.0 storeConfigWithMaxAge:?];
    type metadata accessor for VisualActionEvent();
    v7 = objc_allocWithZone(MEMORY[0x277CF1B30]);
    v8 = v6;
    v9 = sub_22635045C();
    v10 = [v7 initWithPrivateStreamIdentifier:v9 storeConfig:v8 eventDataClass:swift_getObjCClassFromMetadata()];

    v11 = *(v1 + v3);
    *(v1 + v3) = v10;
    v5 = v10;

    v4 = 0;
  }

  *a1 = v5;

  return v4;
}

uint64_t sub_22633D988()
{
  v1 = OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___remoteCustomActionProvider;
  if (*(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___remoteCustomActionProvider))
  {
    v2 = *(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___remoteCustomActionProvider);
  }

  else
  {
    type metadata accessor for RemoteCustomActionProvider();
    v2 = swift_allocObject();
    swift_defaultActor_initialize();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_22633DA00()
{
  v1 = OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___remoteCustomActionExecutor;
  if (*(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___remoteCustomActionExecutor))
  {
    v2 = *(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___remoteCustomActionExecutor);
  }

  else
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for RemoteCustomActionExecutor();
    v2 = swift_allocObject();

    swift_defaultActor_initialize();
    v2[14] = MEMORY[0x277D84F98];
    v2[15] = &unk_226355A50;
    v2[16] = v3;

    v4 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_22633DAD4(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x2822009F8](sub_22633DAF4, 0, 0);
}

uint64_t sub_22633DAF4()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = swift_allocObject();
  v0[9] = v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v5 = swift_task_alloc();
  v0[10] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = *(MEMORY[0x277D859E0] + 4);
  v7 = swift_task_alloc();
  v0[11] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793DC0, &qword_226355A58);
  *v7 = v0;
  v7[1] = sub_22633DC48;

  return MEMORY[0x2822007B8](v0 + 5, 0, 0, 0xD00000000000001ALL, 0x8000000226357C90, sub_2263459B4, v5, v8);
}

uint64_t sub_22633DC48()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22633DD7C, 0, 0);
}

void sub_22633DD94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793DC8, &unk_226355A60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR___ATXVisualActionPredictionCoreServer_serviceListener);
    v9 = Strong;
    (*(v3 + 16))(v6, a1, v2);
    v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v11 = swift_allocObject();
    (*(v3 + 32))(v11 + v10, v6, v2);
    sub_22634FB1C();
  }

  else
  {
    v12[1] = 0;
    v12[2] = 0;
    sub_2263505EC();
  }
}

uint64_t sub_22633DF3C()
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793DC8, &unk_226355A60);
  return sub_2263505EC();
}

uint64_t sub_22633DF8C()
{
  v1 = OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___systemToolActionProvider;
  if (*(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___systemToolActionProvider))
  {
    v2 = *(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___systemToolActionProvider);
  }

  else
  {
    v3 = sub_22633D3A8();
    type metadata accessor for SystemToolActionProvider();
    v2 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v2 + 112) = v3;
    v4 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_22633E014()
{
  v1 = sub_22634FCDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___systemToolActionExecutor;
  if (*(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___systemToolActionExecutor))
  {
    v7 = *(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___systemToolActionExecutor);
  }

  else
  {
    v8 = sub_22633D3A8();
    v9 = *(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer_resourceManager);

    v10 = sub_22633DF8C();
    (*(v2 + 16))(v5, v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer_featureConfiguration, v1);
    v11 = type metadata accessor for SystemToolActionExecutor();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    v7 = swift_allocObject();
    swift_defaultActor_initialize();
    v7[14] = v8;
    v7[15] = v9;
    v7[16] = v10;
    (*(v2 + 32))(v7 + OBJC_IVAR____TtC26VisualActionPredictionCore24SystemToolActionExecutor_featureConfiguration, v5, v1);
    v14 = *(v0 + v6);
    *(v0 + v6) = v7;
  }

  return v7;
}

uint64_t sub_22633E19C()
{
  v1 = sub_22634FCDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___visualSearchActionProvider;
  if (*(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___visualSearchActionProvider))
  {
    v7 = *(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___visualSearchActionProvider);
  }

  else
  {
    v8 = v0;
    v9 = sub_22633D428();
    (*(v2 + 16))(v5, v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer_featureConfiguration, v1);
    v10 = type metadata accessor for VisualSearchActionProvider();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = sub_22631F6D8(v9, v5);

    v13 = *(v0 + v6);
    *(v8 + v6) = v7;
  }

  return v7;
}

void *sub_22633E2E8()
{
  v1 = sub_22634FCDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___visualSearchActionExecutor;
  if (*(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___visualSearchActionExecutor))
  {
    v7 = *(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___visualSearchActionExecutor);
  }

  else
  {
    v8 = sub_22633D3A8();
    v9 = sub_22633D428();
    v10 = *(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer_resourceManager);

    v11 = sub_22633E19C();
    (*(v2 + 16))(v5, v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer_featureConfiguration, v1);
    v12 = type metadata accessor for VisualSearchActionExecutor();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v7 = swift_allocObject();
    swift_defaultActor_initialize();
    v7[14] = v8;
    v7[15] = v9;
    v7[16] = v10;
    v7[17] = v11;
    (*(v2 + 32))(v7 + OBJC_IVAR____TtC26VisualActionPredictionCore26VisualSearchActionExecutor_featureConfiguration, v5, v1);
    v15 = *(v0 + v6);
    *(v0 + v6) = v7;
  }

  return v7;
}

uint64_t sub_22633E478()
{
  v1 = sub_22634FCDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___openEntityExecutor;
  if (*(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___openEntityExecutor))
  {
    v7 = *(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___openEntityExecutor);
  }

  else
  {
    v8 = sub_22633D3A8();
    v9 = sub_22633D428();
    (*(v2 + 16))(v5, v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer_featureConfiguration, v1);
    v10 = type metadata accessor for OpenEntityExecutor();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    v7 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v7 + 112) = v8;
    *(v7 + 120) = v9;
    (*(v2 + 32))(v7 + OBJC_IVAR____TtC26VisualActionPredictionCore18OpenEntityExecutor_featureConfiguration, v5, v1);
    v13 = *(v0 + v6);
    *(v0 + v6) = v7;
  }

  return v7;
}

uint64_t sub_22633E5E0()
{
  v1 = sub_22634FCDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___actionEligibilityChecker;
  if (*(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___actionEligibilityChecker))
  {
    v7 = *(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___actionEligibilityChecker);
  }

  else
  {
    v8 = sub_22633D370();
    (*(v2 + 16))(v5, v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer_featureConfiguration, v1);
    v9 = type metadata accessor for ActionEligibilityChecker();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    v7 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v7 + 112) = v8;
    (*(v2 + 32))(v7 + OBJC_IVAR____TtC26VisualActionPredictionCore24ActionEligibilityChecker_featureConfiguration, v5, v1);
    v12 = *(v0 + v6);
    *(v0 + v6) = v7;
  }

  return v7;
}

id Server.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Server.init()()
{
  v1 = sub_22634FCDC();
  v49 = *(v1 - 8);
  v50 = v1;
  v2 = *(v49 + 64);
  MEMORY[0x28223BE20](v1);
  v48 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22635004C();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22635076C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22635078C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22635037C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v42 = OBJC_IVAR___ATXVisualActionPredictionCoreServer_queue;
  v16 = sub_22633EE60();
  v43 = "nversion";
  v44 = v16;
  v17 = v0;
  sub_22635036C();
  (*(v10 + 104))(v13, *MEMORY[0x277D85268], v9);
  v52 = MEMORY[0x277D84F90];
  sub_2263462E8(&qword_28137DFD0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793D58, &qword_2263559D0);
  v18 = v45;
  sub_226334174(&qword_28137E000, &unk_27D793D58, &qword_2263559D0);
  v19 = v41[1];
  v20 = v42;
  sub_2263508CC();
  *(v19 + v20) = sub_2263507AC();
  v21 = OBJC_IVAR___ATXVisualActionPredictionCoreServer_resourceManager;
  type metadata accessor for ResourceManager();
  v22 = swift_allocObject();
  swift_defaultActor_initialize();
  v23 = MEMORY[0x277D84F98];
  *(v22 + 112) = MEMORY[0x277D84F98];
  *&v17[v21] = v22;
  *&v17[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___appManager] = 0;
  *&v17[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___toolManager] = 0;
  *&v17[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___linkManager] = 0;
  *&v17[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___vectorDatabase] = 0;
  *&v17[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___engagementStream] = 0;
  *&v17[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___remoteCustomActionProvider] = 0;
  *&v17[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___remoteCustomActionExecutor] = 0;
  *&v17[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___systemToolActionProvider] = 0;
  *&v17[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___systemToolActionExecutor] = 0;
  *&v17[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___linkActionProvider] = 0;
  *&v17[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___LinkActionExecutor] = 0;
  *&v17[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___visualSearchActionProvider] = 0;
  *&v17[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___visualSearchActionExecutor] = 0;
  *&v17[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___openEntityExecutor] = 0;
  *&v17[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___actionEligibilityChecker] = 0;
  *&v17[OBJC_IVAR___ATXVisualActionPredictionCoreServer_sessionMap] = v23;
  *&v17[OBJC_IVAR___ATXVisualActionPredictionCoreServer_transactionMap] = v23;
  sub_22634FFEC();
  v24 = v17;
  v25 = sub_22635003C();
  v26 = sub_22635071C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v52 = v28;
    *v27 = 136315394;
    swift_getObjectType();

    v29 = sub_226350D6C();
    v31 = sub_226345004(v29, v30, &v52);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_226345004(0x292874696E69, 0xE600000000000000, &v52);
    _os_log_impl(&dword_2262B6000, v25, v26, "%s.%s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v28, -1, -1);
    MEMORY[0x22AA7D570](v27, -1, -1);
  }

  else
  {
  }

  (*(v46 + 8))(v18, v47);
  sub_22634F95C();
  v32 = *(v19 + v20);
  sub_2263462E8(&unk_28137E0B8, MEMORY[0x277D78888]);
  v33 = v32;
  v34 = sub_22634FBFC();

  *&v24[OBJC_IVAR___ATXVisualActionPredictionCoreServer_serviceListener] = v34;
  sub_22634FD7C();
  v35 = *(v19 + v20);
  sub_2263462E8(&unk_28137E098, MEMORY[0x277D78C40]);
  v36 = v35;
  v37 = sub_22634FBFC();

  *&v24[OBJC_IVAR___ATXVisualActionPredictionCoreServer_executionResourceRetrievalListener] = v37;
  v38 = v48;
  sub_22634FC9C();
  (*(v49 + 32))(&v24[OBJC_IVAR___ATXVisualActionPredictionCoreServer_featureConfiguration], v38, v50);
  v39 = type metadata accessor for Server();
  v51.receiver = v24;
  v51.super_class = v39;
  return objc_msgSendSuper2(&v51, sel_init);
}

unint64_t sub_22633EE60()
{
  result = qword_28137DFC8;
  if (!qword_28137DFC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28137DFC8);
  }

  return result;
}

uint64_t type metadata accessor for Server()
{
  result = qword_28137E608;
  if (!qword_28137E608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22633EF1C(uint64_t a1)
{
  v3 = sub_22635004C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2263503AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *&v1[OBJC_IVAR___ATXVisualActionPredictionCoreServer_queue];
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  LOBYTE(v13) = sub_2263503CC();
  result = (*(v9 + 8))(v12, v8);
  if (v13)
  {
    sub_22634FFEC();
    v16 = v1;

    v17 = sub_22635003C();
    v18 = sub_22635071C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v3;
      v21 = v20;
      v31 = v20;
      *v19 = 136315650;
      swift_getObjectType();
      v22 = sub_226350D6C();
      v24 = sub_226345004(v22, v23, &v31);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_226345004(0x6D7261776572705FLL, 0xEE00293A726F6628, &v31);
      *(v19 + 22) = 2080;
      v29 = 0x286E6F6973736553;
      v30 = 0xE800000000000000;
      sub_22634EEFC();
      sub_2263462E8(&qword_28137FA38, MEMORY[0x277CC95F0]);
      v25 = sub_226350C1C();
      MEMORY[0x22AA7C5B0](v25);

      MEMORY[0x22AA7C5B0](41, 0xE100000000000000);
      v26 = sub_226345004(v29, v30, &v31);

      *(v19 + 24) = v26;
      _os_log_impl(&dword_2262B6000, v17, v18, "%s.%s %s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v21, -1, -1);
      MEMORY[0x22AA7D570](v19, -1, -1);

      (*(v4 + 8))(v7, v28);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    sub_22633D428();

    sub_22633D3A8();

    sub_22633D4F0();
    v27 = sub_22633D370();
    sub_2263083FC(v27);

    return sub_22634414C(a1 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_id);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22633F338()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793D90, qword_2263559D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  v7 = *(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer_queue);
  v8 = *(v0 + OBJC_IVAR___ATXVisualActionPredictionCoreServer_serviceListener);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v7;
  sub_22634FCEC();
  sub_2263462E8(&qword_28137E0A8, MEMORY[0x277D78B88]);
  v11 = v7;
  sub_22634FB4C();
  sub_22634FB3C();
  v12 = *(v3 + 8);
  v12(v6, v2);
  v13 = *(v1 + OBJC_IVAR___ATXVisualActionPredictionCoreServer_resourceManager);
  v14 = *(v1 + OBJC_IVAR___ATXVisualActionPredictionCoreServer_executionResourceRetrievalListener);

  sub_22634FB4C();
  sub_22634FB3C();
  return (v12)(v6, v2);
}

uint64_t sub_22633F548(uint64_t a1, uint64_t a2, void *a3)
{
  v175 = a3;
  v182 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v143 - v5;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793DE0, &qword_226355A90);
  v166 = *(v167 - 8);
  v7 = *(v166 + 64);
  MEMORY[0x28223BE20](v167);
  v165 = v143 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793DE8, &qword_226355A98);
  v176 = *(v9 - 8);
  v10 = *(v176 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = v12;
  MEMORY[0x28223BE20](v11);
  v15 = v143 - v14;
  v164 = sub_22635034C();
  v163 = *(v164 - 8);
  v16 = *(v163 + 64);
  MEMORY[0x28223BE20](v164);
  v161 = v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_22635037C();
  v160 = *(v162 - 8);
  v18 = *(v160 + 64);
  MEMORY[0x28223BE20](v162);
  v159 = v143 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_22635004C();
  v157 = *(v158 - 8);
  v20 = *(v157 + 8);
  MEMORY[0x28223BE20](v158);
  v173 = v143 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793DF0, &qword_226355AA0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v178 = v143 - v24;
  v25 = sub_22634FCDC();
  v177 = *(v25 - 8);
  v26 = *(v177 + 8);
  MEMORY[0x28223BE20](v25);
  v28 = v143 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22634EEFC();
  v183 = *(v29 - 8);
  v184 = v29;
  v30 = v183[8];
  v31 = MEMORY[0x28223BE20](v29);
  v179 = v143 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v172 = v143 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = v143 - v36;
  v174 = v38;
  MEMORY[0x28223BE20](v35);
  v40 = v143 - v39;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_22634FACC();
  }

  v42 = Strong;
  v155 = v13;
  v169 = v6;
  v170 = v15;
  v171 = v9;
  v180 = v40;
  sub_22634FABC();
  v43 = (v183 + 2);
  v181 = v183[2];
  v156 = v37;
  v181(v37, v40, v184);
  v151 = sub_22633D3A8();
  v150 = sub_22633D4F0();
  sub_22633D864(&v193);
  v149 = [objc_allocWithZone(MEMORY[0x277CEBBE0]) init];
  v147 = sub_22633D370();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793DF8, &qword_226355AA8);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_2263556A0;
  v45 = sub_22633DF8C();
  v46 = sub_2263462E8(&qword_28137F940, type metadata accessor for SystemToolActionProvider);
  *(v44 + 32) = v45;
  *(v44 + 40) = v46;
  v47 = sub_22633D988();
  v48 = sub_2263462E8(&qword_28137F7B8, type metadata accessor for RemoteCustomActionProvider);
  *(v44 + 48) = v47;
  *(v44 + 56) = v48;
  v49 = sub_22633E19C();
  v50 = sub_2263462E8(&qword_28137F0D0, type metadata accessor for VisualSearchActionProvider);
  *(v44 + 64) = v49;
  *(v44 + 72) = v50;
  v148 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793E08, &qword_226355AB0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_226351C80;
  v52 = sub_22633E014();
  v53 = sub_2263462E8(&qword_28137FA20, type metadata accessor for SystemToolActionExecutor);
  *(v51 + 32) = v52;
  *(v51 + 40) = v53;
  v54 = sub_22633DA00();
  v55 = sub_2263462E8(&qword_28137F888, type metadata accessor for RemoteCustomActionExecutor);
  *(v51 + 48) = v54;
  *(v51 + 56) = v55;
  v56 = sub_22633E2E8();
  v57 = sub_2263462E8(&qword_28137F1D0, type metadata accessor for VisualSearchActionExecutor);
  *(v51 + 64) = v56;
  *(v51 + 72) = v57;
  v58 = sub_22633E478();
  v59 = sub_2263462E8(&qword_28137E7D8, type metadata accessor for OpenEntityExecutor);
  *(v51 + 80) = v58;
  *(v51 + 88) = v59;
  v146 = v51;
  v144 = sub_22633E5E0();
  v60 = *&v42[OBJC_IVAR___ATXVisualActionPredictionCoreServer____lazy_storage___remoteCustomActionExecutor];
  v61 = *(v177 + 2);
  v152 = v28;
  v153 = v25;
  v61(v28, &v42[OBJC_IVAR___ATXVisualActionPredictionCoreServer_featureConfiguration], v25);
  v62 = v193;
  v187 = &type metadata for EngagementStream;
  v188 = &off_283979CE8;
  aBlock[0] = v193;
  v63 = type metadata accessor for Session();
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  v66 = swift_allocObject();
  v67 = __swift_mutable_project_boxed_opaque_existential_1(aBlock, &type metadata for EngagementStream);
  v143[1] = v143;
  v68 = *(off_283979D70 + 8);
  MEMORY[0x28223BE20](v67);
  v70 = (v143 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v71 + 16))(v70);
  v72 = *v70;
  v191 = &type metadata for EngagementStream;
  v192 = &off_283979CE8;
  *&v190 = v72;
  v145 = v60;

  v73 = v62;
  swift_defaultActor_initialize();
  sub_22634EEAC();
  v74 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_eventMultiplexer;
  sub_22634FB6C();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793E10, &qword_226355AB8);
  v76 = *(v75 + 48);
  v77 = *(v75 + 52);
  swift_allocObject();
  *(v66 + v74) = sub_22634FB7C();
  v78 = MEMORY[0x277D84F98];
  *(v66 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionMap) = MEMORY[0x277D84F98];
  *(v66 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedActionContextMap) = v78;
  *(v66 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_cachedPredictionResults) = v78;
  *(v66 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appPopularityMap) = v78;
  *(v66 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appRelevanceMap) = v78;
  *(v66 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appCategoryMapForTesting) = 0;
  v79 = v66 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_timestampForTesting;
  *v79 = 0;
  *(v79 + 8) = 1;
  *(v66 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_kMaxCacheSize) = 1000;
  *(v66 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_kTwelveWeeksInSeconds) = 0x415BAF8000000000;
  *(v66 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_bundleRankingThreshold) = 0x3FE0000000000000;
  sub_22634FFEC();
  v80 = v156;
  v178 = v43;
  v181(v172, v156, v184);
  v81 = sub_22635003C();
  v82 = sub_22635075C();
  v83 = os_log_type_enabled(v81, v82);
  v84 = v180;
  if (v83)
  {
    v85 = swift_slowAlloc();
    v143[0] = swift_slowAlloc();
    v185 = v143[0];
    *v85 = 136315138;
    sub_2263462E8(&qword_28137FA38, MEMORY[0x277CC95F0]);
    v86 = v172;
    v87 = v84;
    v88 = v184;
    v89 = sub_226350C1C();
    v91 = v90;
    v92 = v183[1];
    v154 = (v183 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v93 = v88;
    v84 = v87;
    v92(v86, v93);
    v94 = sub_226345004(v89, v91, &v185);
    v80 = v156;

    *(v85 + 4) = v94;
    _os_log_impl(&dword_2262B6000, v81, v82, "Session %s created", v85, 0xCu);
    v95 = v143[0];
    __swift_destroy_boxed_opaque_existential_1Tm(v143[0]);
    MEMORY[0x22AA7D570](v95, -1, -1);
    MEMORY[0x22AA7D570](v85, -1, -1);
  }

  else
  {

    v97 = v183[1];
    v154 = (v183 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v97(v172, v184);
  }

  (*(v157 + 1))(v173, v158);

  v98 = v183 + 4;
  v99 = v183[4];
  v100 = v184;
  v99(v66 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_id, v80);
  v101 = v99;
  v157 = v99;
  v102 = v98;
  *(v66 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_toolManager) = v151;
  *(v66 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_vectorDatabase) = v150;
  sub_2262FB3D4(&v190, v66 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_engagementStream);
  *(v66 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appInFocusStream) = v149;
  *(v66 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_appManager) = v147;
  *(v66 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_actionProviders) = v148;
  *(v66 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_actionExecutors) = v146;
  v103 = (v66 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_actionEligibilityChecker);
  v104 = sub_2263462E8(&qword_28137F348, type metadata accessor for ActionEligibilityChecker);
  *v103 = v144;
  v103[1] = v104;
  v105 = (v66 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_customActionRegister);
  v106 = sub_2263462E8(&qword_28137F880, type metadata accessor for RemoteCustomActionExecutor);
  *v105 = v145;
  v105[1] = v106;
  (*(v177 + 4))(v66 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_featureConfiguration, v152, v153);
  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  v107 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v108 = v179;
  v181(v179, v84, v100);
  v183 = v102;
  v156 = *(v102 + 48);
  v173 = (v156 | 7);
  v109 = (v156 + 24) & ~v156;
  v172 = v109;
  v110 = (v174 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
  v158 = v110;
  v111 = swift_allocObject();
  *(v111 + 16) = v107;
  v101(v111 + v109, v108, v100);
  *(v111 + v110) = v66;
  v188 = sub_226345AF4;
  v189 = v111;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22634107C;
  v187 = &block_descriptor_61;
  v112 = _Block_copy(aBlock);
  v177 = v42;

  v113 = v159;
  sub_22635035C();
  *&v190 = MEMORY[0x277D84F90];
  sub_2263462E8(&unk_28137E058, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793DB0, &qword_226355A40);
  sub_226334174(&unk_28137E008, &unk_27D793DB0, &qword_226355A40);
  v114 = v161;
  v115 = v164;
  sub_2263508CC();
  MEMORY[0x22AA7C850](0, v113, v114, v112);
  _Block_release(v112);
  (*(v163 + 8))(v114, v115);
  (*(v160 + 8))(v113, v162);

  sub_22634F6FC();
  sub_2263462E8(&qword_28137E118, MEMORY[0x277D787C8]);

  sub_22634FAAC();

  sub_22634F6DC();
  sub_2263462E8(&qword_28137E120, MEMORY[0x277D787B8]);

  sub_22634FAAC();

  sub_22634F78C();
  sub_2263462E8(&qword_28137E108, MEMORY[0x277D787E8]);

  sub_22634FAAC();

  sub_22634F72C();
  sub_2263462E8(&qword_28137E110, MEMORY[0x277D787D8]);

  sub_22634FAAC();

  sub_22634F68C();
  sub_2263462E8(&qword_28137E128, MEMORY[0x277D787A8]);

  sub_22634FAAC();

  sub_22634F60C();
  sub_2263462E8(&qword_28137E130, MEMORY[0x277D78788]);

  sub_22634FAAC();

  sub_22634F7EC();
  sub_2263462E8(&unk_28137E0F8, MEMORY[0x277D787F8]);

  sub_22634FAAC();

  sub_22634F80C();
  sub_2263462E8(&qword_28137E0F0, MEMORY[0x277D78808]);

  sub_22634FAAC();

  sub_22634F93C();
  sub_2263462E8(&unk_28137E0C8, MEMORY[0x277D78868]);

  sub_22634FAAC();

  sub_22634F88C();
  sub_2263462E8(&unk_28137E0E0, MEMORY[0x277D78828]);

  sub_22634FAAC();

  sub_22634F91C();
  sub_2263462E8(&qword_28137E0D8, MEMORY[0x277D78848]);

  sub_22634FAAC();

  v116 = *(v66 + OBJC_IVAR____TtC26VisualActionPredictionCore7Session_eventMultiplexer);
  v117 = v166;
  v118 = v165;
  v119 = v167;
  (*(v166 + 104))(v165, *MEMORY[0x277D85778], v167);
  v120 = v170;
  sub_22634FB5C();
  (*(v117 + 8))(v118, v119);
  v121 = sub_22635064C();
  (*(*(v121 - 8) + 56))(v169, 1, 1, v121);
  v167 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v122 = v176;
  v123 = v155;
  v124 = v171;
  (*(v176 + 16))(v155, v120, v171);
  v125 = v184;
  v181(v179, v180, v184);
  v126 = (*(v122 + 80) + 32) & ~*(v122 + 80);
  v127 = (v168 + v126 + 7) & 0xFFFFFFFFFFFFFFF8;
  v128 = (v127 + 15) & 0xFFFFFFFFFFFFFFF8;
  v129 = (v156 + v128 + 8) & ~v156;
  v130 = swift_allocObject();
  *(v130 + 16) = 0;
  *(v130 + 24) = 0;
  (*(v122 + 32))(v130 + v126, v123, v124);
  *(v130 + v127) = v167;
  v131 = v175;
  *(v130 + v128) = v175;
  v132 = v130 + v129;
  v133 = v179;
  v134 = v125;
  v135 = v157;
  v136 = v183;
  (v157)(v132, v179, v125);
  v175 = v131;
  v137 = sub_2262FB4D4(0, 0, v169, &unk_226355B78, v130);
  v138 = swift_allocObject();
  v139 = v177;
  swift_unknownObjectWeakInit();

  v140 = v133;
  v181(v133, v180, v134);
  v141 = v158;
  v142 = swift_allocObject();
  *(v142 + 16) = v138;
  v135(&v172[v142], v140, v134);
  *(v142 + v141) = v137;

  sub_22634FA9C();

  (*(v176 + 8))(v170, v171);
  (*(v136 - 3))(v180, v134);
}

void sub_226340F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_22634F96C();
    MEMORY[0x22AA7C5B0](0x6E6F69737365732ELL, 0xE90000000000002ELL);
    sub_22634EEFC();
    sub_2263462E8(&qword_28137FA38, MEMORY[0x277CC95F0]);
    v7 = sub_226350C1C();
    MEMORY[0x22AA7C5B0](v7);

    sub_2263434E8(a2);

    sub_226342BD0(a3);
  }
}

uint64_t sub_22634107C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2263410C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_2262BADA4(a1, a2);
}

uint64_t sub_22634116C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_2262BB364(a1, a2);
}

uint64_t sub_226341218(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_2262C3288(a1, a2);
}

uint64_t sub_2263412C4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_2262C9CC4(a1, a2);
}

uint64_t sub_226341370(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_2262CDB7C(a1, a2);
}

uint64_t sub_22634141C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262D641C;

  return sub_2262CE3AC(a1, a2);
}

uint64_t sub_2263414C8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_2262CEEE4(a1, a2);
}

uint64_t sub_226341574(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_2262CF7E0(a1, a2);
}

uint64_t sub_226341620(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_2262CFE60(a1, a2);
}

uint64_t sub_2263416CC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_2262D0460(a1, a2);
}

uint64_t sub_226341778(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_2262D0AC4(a1, a2);
}

uint64_t sub_226341824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v8 = sub_22635034C();
  v7[16] = v8;
  v9 = *(v8 - 8);
  v7[17] = v9;
  v10 = *(v9 + 64) + 15;
  v7[18] = swift_task_alloc();
  v11 = sub_22635037C();
  v7[19] = v11;
  v12 = *(v11 - 8);
  v7[20] = v12;
  v13 = *(v12 + 64) + 15;
  v7[21] = swift_task_alloc();
  v14 = sub_22634EEFC();
  v7[22] = v14;
  v15 = *(v14 - 8);
  v7[23] = v15;
  v7[24] = *(v15 + 64);
  v7[25] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793E20, &qword_226355B80);
  v7[26] = v16;
  v17 = *(v16 - 8);
  v7[27] = v17;
  v18 = *(v17 + 64) + 15;
  v7[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226341A10, 0, 0);
}

uint64_t sub_226341A10()
{
  v1 = v0[28];
  v2 = v0[12];
  v3 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793DE8, &qword_226355A98);
  sub_22635069C();
  swift_beginAccess();
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[29] = v5;
  *v5 = v0;
  v5[1] = sub_226341AF8;
  v6 = v0[28];
  v7 = v0[26];

  return MEMORY[0x2822003E8](v0 + 30, 0, 0, v7);
}

uint64_t sub_226341AF8()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226341BF4, 0, 0);
}

uint64_t sub_226341BF4()
{
  if ((*(v0 + 240) & 1) != 0 || (v1 = *(v0 + 104), (Strong = swift_unknownObjectWeakLoadStrong()) == 0))
  {
    v17 = *(v0 + 200);
    v18 = *(v0 + 168);
    v19 = *(v0 + 144);
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    v3 = Strong;
    v4 = *(v0 + 200);
    v6 = *(v0 + 176);
    v5 = *(v0 + 184);
    v7 = *(v0 + 160);
    v27 = v7;
    v28 = *(v0 + 152);
    v23 = *(v0 + 168);
    v24 = *(v0 + 144);
    v8 = *(v0 + 128);
    v25 = *(v0 + 112);
    v26 = *(v0 + 136);
    (*(v5 + 16))(v4, *(v0 + 120), v6);
    v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = v3;
    (*(v5 + 32))(v10 + v9, v4, v6);
    *(v0 + 48) = sub_226346630;
    *(v0 + 56) = v10;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_22634107C;
    *(v0 + 40) = &block_descriptor_88;
    v11 = _Block_copy((v0 + 16));
    v22 = v3;
    sub_22635035C();
    *(v0 + 88) = MEMORY[0x277D84F90];
    sub_2263462E8(&unk_28137E058, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793DB0, &qword_226355A40);
    sub_226334174(&unk_28137E008, &unk_27D793DB0, &qword_226355A40);
    sub_2263508CC();
    MEMORY[0x22AA7C850](0, v23, v24, v11);
    _Block_release(v11);

    (*(v26 + 8))(v24, v8);
    (*(v27 + 8))(v23, v28);
    v12 = *(v0 + 56);

    v13 = *(MEMORY[0x277D85798] + 4);
    v14 = swift_task_alloc();
    *(v0 + 232) = v14;
    *v14 = v0;
    v14[1] = sub_226341AF8;
    v15 = *(v0 + 224);
    v16 = *(v0 + 208);

    return MEMORY[0x2822003E8](v0 + 240, 0, 0, v16);
  }
}

void sub_226341F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_226343000(a3);
    sub_226343A04(a3);
    sub_2263506BC();
  }
}

uint64_t sub_226341FF0()
{
  sub_22634FD5C();
  sub_2263462E8(&unk_27D793DD0, MEMORY[0x277D78C30]);

  sub_22634FAAC();
}

uint64_t sub_2263420A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_22634FD5C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_22635004C();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2263421D0, 0, 0);
}

uint64_t sub_2263421D0()
{
  v31 = v0;
  v1 = v0[11];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = v0[3];
  sub_22635002C();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_22635003C();
  v7 = sub_22635072C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[11];
  v10 = v0[8];
  v11 = v0[9];
  v13 = v0[6];
  v12 = v0[7];
  v14 = v0[5];
  if (v8)
  {
    v27 = v7;
    v15 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v30 = v26;
    *v15 = 136315138;
    v16 = sub_22634FD4C();
    v17 = sub_22634EEFC();
    v28 = v10;
    v29 = v9;
    v18 = MEMORY[0x22AA7C630](v16, v17);
    v20 = v19;

    (*(v13 + 8))(v12, v14);
    v21 = sub_226345004(v18, v20, &v30);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_2262B6000, v6, v27, "Client requested for resources with IDs %s...", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x22AA7D570](v26, -1, -1);
    MEMORY[0x22AA7D570](v15, -1, -1);

    v22 = *(v11 + 8);
    v22(v29, v28);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    v22 = *(v11 + 8);
    v22(v9, v10);
  }

  v0[12] = v22;
  v24 = v0[3];
  v23 = v0[4];
  v0[13] = sub_22634FD4C();

  return MEMORY[0x2822009F8](sub_2263423F8, v23, 0);
}

uint64_t sub_2263423F8()
{
  v1 = v0[4];
  v0[14] = sub_2262E1420(v0[13]);

  return MEMORY[0x2822009F8](sub_226342474, 0, 0);
}

uint64_t sub_226342474()
{
  v36 = v0;
  v1 = v0[14];
  v2 = v0[10];
  sub_22635002C();

  v3 = sub_22635003C();
  v4 = sub_22635072C();

  if (os_log_type_enabled(v3, v4))
  {
    v33 = v4;
    v5 = v0[14];
    v6 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = v32;
    *v6 = 136315138;
    v7 = *(v5 + 16);
    if (v7)
    {
      v8 = v0[14];
      v9 = sub_2262DD844(v7, 0);
      v10 = *(sub_22634EEFC() - 8);
      v31 = sub_2262DF254(&v35, (v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80))), v7, v8);

      result = sub_2262D66F4();
      if (v31 != v7)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    v16 = v0[12];
    v18 = v0[9];
    v17 = v0[10];
    v19 = v0[8];
    v20 = sub_22634EEFC();
    v21 = MEMORY[0x22AA7C630](v9, v20);
    v23 = v22;

    v24 = sub_226345004(v21, v23, &v34);

    *(v6 + 4) = v24;
    _os_log_impl(&dword_2262B6000, v3, v33, "Responding to client with resources with IDs %s.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x22AA7D570](v32, -1, -1);
    MEMORY[0x22AA7D570](v6, -1, -1);

    v16(v17, v19);
  }

  else
  {
    v12 = v0[12];
    v14 = v0[9];
    v13 = v0[10];
    v15 = v0[8];

    v12(v13, v15);
  }

  v25 = v0[14];
  v26 = v0[10];
  v27 = v0[11];
  v28 = v0[7];
  v29 = v0[2];
  sub_22634FD6C();

  v30 = v0[1];

  return v30();
}

id Server.__deallocating_deinit()
{
  v1 = sub_22635004C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22634FFEC();
  v6 = v0;
  v7 = sub_22635003C();
  v8 = sub_22635071C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315394;
    swift_getObjectType();
    v11 = sub_226350D6C();
    v13 = sub_226345004(v11, v12, &v19);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_226345004(0x74696E696564, 0xE600000000000000, &v19);
    _os_log_impl(&dword_2262B6000, v7, v8, "%s.%s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v10, -1, -1);
    MEMORY[0x22AA7D570](v9, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
  v14 = *&v6[OBJC_IVAR___ATXVisualActionPredictionCoreServer_serviceListener];

  sub_22634FB2C();

  v15 = *&v6[OBJC_IVAR___ATXVisualActionPredictionCoreServer_executionResourceRetrievalListener];

  sub_22634FB2C();

  v16 = type metadata accessor for Server();
  v20.receiver = v6;
  v20.super_class = v16;
  return objc_msgSendSuper2(&v20, sel_dealloc);
}

uint64_t sub_226342BD0(uint64_t a1)
{
  v3 = sub_22635004C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2263503AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *&v1[OBJC_IVAR___ATXVisualActionPredictionCoreServer_queue];
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  LOBYTE(v13) = sub_2263503CC();
  result = (*(v9 + 8))(v12, v8);
  if (v13)
  {
    sub_22634FFEC();
    v16 = v1;

    v17 = sub_22635003C();
    v18 = sub_22635071C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32 = v3;
      v33 = v20;
      v21 = v20;
      *v19 = 136315650;
      swift_getObjectType();
      v22 = sub_226350D6C();
      v24 = sub_226345004(v22, v23, &v33);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_226345004(0x737365536464615FLL, 0xEF293A5F286E6F69, &v33);
      *(v19 + 22) = 2080;
      v34 = 0x286E6F6973736553;
      v35 = 0xE800000000000000;
      sub_22634EEFC();
      sub_2263462E8(&qword_28137FA38, MEMORY[0x277CC95F0]);
      v25 = sub_226350C1C();
      MEMORY[0x22AA7C5B0](v25);

      MEMORY[0x22AA7C5B0](41, 0xE100000000000000);
      v26 = sub_226345004(v34, v35, &v33);

      *(v19 + 24) = v26;
      _os_log_impl(&dword_2262B6000, v17, v18, "%s.%s %s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v21, -1, -1);
      MEMORY[0x22AA7D570](v19, -1, -1);

      (*(v4 + 8))(v7, v32);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    v27 = OBJC_IVAR____TtC26VisualActionPredictionCore7Session_id;
    v28 = OBJC_IVAR___ATXVisualActionPredictionCoreServer_sessionMap;
    swift_beginAccess();

    v29 = *&v16[v28];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *&v16[v28];
    *&v16[v28] = 0x8000000000000000;
    sub_2262E4608(a1, a1 + v27, isUniquelyReferenced_nonNull_native);
    *&v16[v28] = v33;
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_226343000(uint64_t a1)
{
  v2 = v1;
  v48 = a1;
  v3 = sub_22634EEFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v42 - v9;
  v11 = sub_22635004C();
  v46 = *(v11 - 8);
  v47 = v11;
  v12 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2263503AC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *&v2[OBJC_IVAR___ATXVisualActionPredictionCoreServer_queue];
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x277D85200], v15);
  v21 = v20;
  LOBYTE(v20) = sub_2263503CC();
  result = (*(v16 + 8))(v19, v15);
  if (v20)
  {
    v23 = OBJC_IVAR___ATXVisualActionPredictionCoreServer_sessionMap;
    result = swift_beginAccess();
    if (*(*&v2[v23] + 16))
    {
      v24 = *&v2[v23];

      sub_2263394D8(v48);
      v26 = v25;

      if (v26)
      {
        v44 = v8;
        sub_22634FFEC();
        v45 = *(v4 + 16);
        v45(v10, v48, v3);
        v27 = v2;
        v28 = sub_22635003C();
        v29 = sub_22635071C();

        v43 = v29;
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v42[1] = (v4 + 16);
          v31 = v30;
          v32 = swift_slowAlloc();
          v49[0] = v32;
          *v31 = 136315650;
          swift_getObjectType();
          v33 = sub_226350D6C();
          v42[0] = v28;
          v35 = sub_226345004(v33, v34, v49);

          *(v31 + 4) = v35;
          *(v31 + 12) = 2080;
          *(v31 + 14) = sub_226345004(0xD000000000000014, 0x8000000226357C70, v49);
          *(v31 + 22) = 2080;
          sub_2263462E8(&qword_28137FA38, MEMORY[0x277CC95F0]);
          v36 = sub_226350C1C();
          v38 = v37;
          (*(v4 + 8))(v10, v3);
          v39 = sub_226345004(v36, v38, v49);

          *(v31 + 24) = v39;
          v40 = v42[0];
          _os_log_impl(&dword_2262B6000, v42[0], v43, "%s.%s %s", v31, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x22AA7D570](v32, -1, -1);
          MEMORY[0x22AA7D570](v31, -1, -1);
        }

        else
        {

          (*(v4 + 8))(v10, v3);
        }

        (*(v46 + 8))(v14, v47);
        v41 = v44;
        v45(v44, v48, v3);
        swift_beginAccess();
        sub_2262E0300(0, v41);
        return swift_endAccess();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2263434E8(uint64_t a1)
{
  v2 = v1;
  v48 = a1;
  v3 = sub_22635004C();
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = *(v50 + 64);
  MEMORY[0x28223BE20](v3);
  v52 = &v45[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_22634EEFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v49 = &v45[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v45[-v11];
  v13 = sub_2263503AC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v45[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *&v1[OBJC_IVAR___ATXVisualActionPredictionCoreServer_queue];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13);
  v19 = v18;
  LOBYTE(v18) = sub_2263503CC();
  result = (*(v14 + 8))(v17, v13);
  if (v18)
  {
    sub_2263504DC();
    v21 = os_transaction_create();

    if (v21)
    {
      v22 = v7;
      v23 = *(v7 + 16);
      v24 = v48;
      v23(v12, v48, v6);
      v25 = OBJC_IVAR___ATXVisualActionPredictionCoreServer_transactionMap;
      swift_beginAccess();
      v26 = swift_unknownObjectRetain();
      v47 = v25;
      sub_2262E0140(v26, v12);
      swift_endAccess();
      sub_22634FFEC();
      v27 = v49;
      v23(v49, v24, v6);
      v28 = v2;
      swift_unknownObjectRetain();
      v29 = v28;
      v30 = sub_22635003C();
      v31 = sub_22635071C();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = v27;
        v33 = v22;
        v34 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v54[0] = v48;
        *v34 = 136315650;
        swift_getObjectType();
        v46 = v31;
        v53 = v21;
        swift_unknownObjectRetain();
        v35 = sub_2263504CC();
        v37 = sub_226345004(v35, v36, v54);

        *(v34 + 4) = v37;
        *(v34 + 12) = 2080;
        sub_2263462E8(&qword_28137FA38, MEMORY[0x277CC95F0]);
        v38 = v32;
        v39 = sub_226350C1C();
        v41 = v40;
        (*(v33 + 8))(v38, v6);
        v42 = sub_226345004(v39, v41, v54);

        *(v34 + 14) = v42;
        *(v34 + 22) = 2048;
        v43 = *(*&v2[v47] + 16);

        *(v34 + 24) = v43;
        _os_log_impl(&dword_2262B6000, v30, v46, "Acquired OS transaction %s. (uuid = %s, count = %ld)", v34, 0x20u);
        v44 = v48;
        swift_arrayDestroy();
        MEMORY[0x22AA7D570](v44, -1, -1);
        MEMORY[0x22AA7D570](v34, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();

        (*(v22 + 8))(v27, v6);
      }

      return (*(v50 + 8))(v52, v51);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_226343A04(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22635004C();
  v73 = *(v4 - 8);
  v74 = v4;
  v5 = *(v73 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v75 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v68 - v8;
  v76 = sub_22634EEFC();
  v10 = *(v76 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v76);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v71 = &v68 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v68 - v17;
  v19 = sub_2263503AC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *&v2[OBJC_IVAR___ATXVisualActionPredictionCoreServer_queue];
  *v23 = v24;
  (*(v20 + 104))(v23, *MEMORY[0x277D85200], v19);
  v25 = v24;
  LOBYTE(v24) = sub_2263503CC();
  result = (*(v20 + 8))(v23, v19);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v27 = OBJC_IVAR___ATXVisualActionPredictionCoreServer_transactionMap;
  swift_beginAccess();
  v28 = *&v2[v27];
  if (!*(v28 + 16))
  {
    goto LABEL_7;
  }

  v29 = *&v2[v27];

  v30 = sub_2263394D8(a1);
  if ((v31 & 1) == 0)
  {

LABEL_7:
    v72 = v27;
    v54 = v75;
    sub_22634FFEC();
    v55 = v10;
    v56 = v76;
    (*(v10 + 16))(v14, a1, v76);
    v57 = v2;
    v58 = sub_22635003C();
    v59 = sub_22635073C();
    if (!os_log_type_enabled(v58, v59))
    {

      (*(v10 + 8))(v14, v56);
      return (*(v73 + 8))(v54, v74);
    }

    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v78[0] = v61;
    *v60 = 136315394;
    sub_2263462E8(&qword_28137FA38, MEMORY[0x277CC95F0]);
    v62 = sub_226350C1C();
    v63 = v56;
    v65 = v64;
    (*(v55 + 8))(v14, v63);
    v66 = sub_226345004(v62, v65, v78);

    *(v60 + 4) = v66;
    *(v60 + 12) = 2048;
    v67 = *(*&v2[v72] + 16);

    *(v60 + 14) = v67;
    _os_log_impl(&dword_2262B6000, v58, v59, "Unable to relinquish OS transaction because it no longer exists. (uuid = %s, count = %ld)", v60, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    MEMORY[0x22AA7D570](v61, -1, -1);
    MEMORY[0x22AA7D570](v60, -1, -1);

    return (*(v73 + 8))(v75, v74);
  }

  v32 = *(*(v28 + 56) + 8 * v30);
  swift_unknownObjectRetain();

  v70 = v10;
  v33 = *(v10 + 16);
  v34 = v76;
  v33(v18, a1, v76);
  swift_beginAccess();
  sub_2262E0140(0, v18);
  swift_endAccess();
  sub_22634FFEC();
  v35 = v71;
  v33(v71, a1, v34);
  v36 = v2;
  swift_unknownObjectRetain();
  v37 = v36;
  v75 = v9;
  v38 = sub_22635003C();
  v39 = sub_22635071C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = v35;
    v41 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v78[0] = v69;
    *v41 = 136315650;
    swift_getObjectType();
    v77 = v32;
    swift_unknownObjectRetain();
    v42 = sub_2263504CC();
    v44 = sub_226345004(v42, v43, v78);
    v72 = v27;
    v45 = v44;

    *(v41 + 4) = v45;
    *(v41 + 12) = 2080;
    sub_2263462E8(&qword_28137FA38, MEMORY[0x277CC95F0]);
    v46 = v40;
    v47 = v76;
    v48 = sub_226350C1C();
    v50 = v49;
    (*(v70 + 8))(v46, v47);
    v51 = sub_226345004(v48, v50, v78);

    *(v41 + 14) = v51;
    *(v41 + 22) = 2048;
    v52 = *(*&v2[v72] + 16);

    *(v41 + 24) = v52;
    _os_log_impl(&dword_2262B6000, v38, v39, "Relinquished OS transaction %s. (uuid = %s, count = %ld)", v41, 0x20u);
    v53 = v69;
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v53, -1, -1);
    MEMORY[0x22AA7D570](v41, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    (*(v70 + 8))(v35, v76);
  }

  return (*(v73 + 8))(v75, v74);
}

uint64_t sub_22634414C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22635034C();
  v93 = *(v4 - 8);
  v94 = v4;
  v5 = *(v93 + 64);
  MEMORY[0x28223BE20](v4);
  v91 = &v75[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v92 = sub_22635037C();
  v90 = *(v92 - 8);
  v7 = *(v90 + 64);
  MEMORY[0x28223BE20](v92);
  v89 = &v75[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v85 = sub_22635033C();
  v84 = *(v85 - 8);
  v9 = *(v84 + 64);
  MEMORY[0x28223BE20](v85);
  v83 = &v75[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v95 = sub_22635039C();
  v88 = *(v95 - 8);
  v11 = *(v88 + 64);
  v12 = MEMORY[0x28223BE20](v95);
  v82 = &v75[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v87 = &v75[-v14];
  v15 = sub_22634EEFC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v19 = &v75[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v81 = &v75[-v21];
  MEMORY[0x28223BE20](v20);
  v23 = &v75[-v22];
  v24 = sub_22635004C();
  v96 = *(v24 - 8);
  v97 = v24;
  v25 = *(v96 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v75[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v30 = &v75[-v29];
  v31 = OBJC_IVAR___ATXVisualActionPredictionCoreServer_transactionMap;
  swift_beginAccess();
  v86 = v2;
  v32 = *(v2 + v31);
  if (*(v32 + 16))
  {

    v33 = sub_2263394D8(a1);
    if (v34)
    {
      v35 = *(*(v32 + 56) + 8 * v33);
      swift_unknownObjectRetain();

      sub_22634FFEC();
      v36 = *(v16 + 16);
      v80 = a1;
      v79 = v16 + 16;
      v78 = v36;
      v36(v23, a1, v15);
      swift_unknownObjectRetain();
      v37 = sub_22635003C();
      v38 = sub_22635071C();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        aBlock[0] = v77;
        *v39 = 136315394;
        swift_getObjectType();
        v76 = v38;
        v98 = v35;
        swift_unknownObjectRetain();
        v40 = sub_2263504CC();
        v42 = sub_226345004(v40, v41, aBlock);

        *(v39 + 4) = v42;
        *(v39 + 12) = 2080;
        sub_2263462E8(&qword_28137FA38, MEMORY[0x277CC95F0]);
        v43 = sub_226350C1C();
        v45 = v44;
        (*(v16 + 8))(v23, v15);
        v46 = sub_226345004(v43, v45, aBlock);

        *(v39 + 14) = v46;
        _os_log_impl(&dword_2262B6000, v37, v76, "Begin extending OS transaction %s for 8 seconds... (uuid = %s)", v39, 0x16u);
        v47 = v77;
        swift_arrayDestroy();
        MEMORY[0x22AA7D570](v47, -1, -1);
        MEMORY[0x22AA7D570](v39, -1, -1);
      }

      else
      {

        (*(v16 + 8))(v23, v15);
      }

      (*(v96 + 8))(v30, v97);
      aBlock[0] = v35;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793DA0, &qword_226355A38);
      v58 = *(v57 + 48);
      v59 = *(v57 + 52);
      swift_allocObject();
      swift_unknownObjectRetain();
      v60 = sub_22634FD2C();
      v97 = *(v86 + OBJC_IVAR___ATXVisualActionPredictionCoreServer_queue);
      v61 = v82;
      sub_22635038C();
      v62 = v83;
      *v83 = 8;
      v63 = *MEMORY[0x277D85188];
      v64 = v84;
      v65 = *(v84 + 104);
      v86 = v35;
      v66 = v85;
      v65(v62, v63, v85);
      v67 = v87;
      MEMORY[0x22AA7C470](v61, v62);
      (*(v64 + 8))(v62, v66);
      v96 = *(v88 + 8);
      (v96)(v61, v95);
      v68 = v81;
      v78(v81, v80, v15);
      v69 = (*(v16 + 80) + 24) & ~*(v16 + 80);
      v70 = swift_allocObject();
      *(v70 + 16) = v60;
      (*(v16 + 32))(v70 + v69, v68, v15);
      aBlock[4] = sub_226345744;
      aBlock[5] = v70;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22634107C;
      aBlock[3] = &block_descriptor_2;
      v71 = _Block_copy(aBlock);

      v72 = v89;
      sub_22635035C();
      v98 = MEMORY[0x277D84F90];
      sub_2263462E8(&unk_28137E058, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D793DB0, &qword_226355A40);
      sub_226334174(&unk_28137E008, &unk_27D793DB0, &qword_226355A40);
      v73 = v91;
      v74 = v94;
      sub_2263508CC();
      MEMORY[0x22AA7C830](v67, v72, v73, v71);
      _Block_release(v71);
      swift_unknownObjectRelease();

      (*(v93 + 8))(v73, v74);
      (*(v90 + 8))(v72, v92);
      (v96)(v67, v95);
    }
  }

  sub_22634FFEC();
  (*(v16 + 16))(v19, a1, v15);
  v48 = sub_22635003C();
  v49 = sub_22635073C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    aBlock[0] = v51;
    *v50 = 136315138;
    sub_2263462E8(&qword_28137FA38, MEMORY[0x277CC95F0]);
    v52 = sub_226350C1C();
    v54 = v53;
    (*(v16 + 8))(v19, v15);
    v55 = sub_226345004(v52, v54, aBlock);

    *(v50 + 4) = v55;
    _os_log_impl(&dword_2262B6000, v48, v49, "Unable to extend OS transaction because it no longer exists. (uuid = %s)", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    MEMORY[0x22AA7D570](v51, -1, -1);
    MEMORY[0x22AA7D570](v50, -1, -1);
  }

  else
  {

    (*(v16 + 8))(v19, v15);
  }

  return (*(v96 + 8))(v28, v97);
}

uint64_t sub_226344C40(uint64_t *a1, uint64_t a2)
{
  v5 = sub_22634EEFC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22635004C();
  v31 = *(v10 - 8);
  v32 = v10;
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  sub_22634FFEC();
  (*(v6 + 16))(v9, a2, v5);
  swift_unknownObjectRetain();
  v15 = sub_22635003C();
  v16 = sub_22635071C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v2;
    v18 = v17;
    v29 = swift_slowAlloc();
    v34 = v29;
    *v18 = 136315394;
    swift_getObjectType();
    v33 = v14;
    swift_unknownObjectRetain();
    v19 = sub_2263504CC();
    v21 = sub_226345004(v19, v20, &v34);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    sub_2263462E8(&qword_28137FA38, MEMORY[0x277CC95F0]);
    v22 = sub_226350C1C();
    v24 = v23;
    (*(v6 + 8))(v9, v5);
    v25 = sub_226345004(v22, v24, &v34);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_2262B6000, v15, v16, "End extending OS transaction %s after 8 seconds. (uuid = %s)", v18, 0x16u);
    v26 = v29;
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v26, -1, -1);
    MEMORY[0x22AA7D570](v18, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  return (*(v31 + 8))(v13, v32);
}

uint64_t sub_226344FA8(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_226345004(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_226345004(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2263450D0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2262FB40C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_2263450D0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2263451DC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2263509AC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2263451DC(uint64_t a1, unint64_t a2)
{
  v4 = sub_226345228(a1, a2);
  sub_226345358(&unk_283977F10);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_226345228(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_226345444(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2263509AC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_22635050C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_226345444(v10, 0);
        result = sub_22635095C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_226345358(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2263454B8(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_226345444(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793E28, &qword_226355B88);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2263454B8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793E28, &qword_226355B88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_2263455AC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_2263455BC(void (*a1)(void))
{
  a1();

  return sub_226350D6C();
}

uint64_t sub_226345610()
{
  result = sub_22634FCDC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_226345744()
{
  v1 = *(sub_22634EEFC() - 8);
  v2 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  return sub_22634FD1C();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226345818(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2263458B0;

  return sub_22633DAD4(a1, v1);
}

uint64_t sub_2263458B0(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

void sub_2263459B4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_22633DD94(a1);
}

uint64_t sub_2263459BC()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793DC8, &unk_226355A60) - 8) + 80);

  return sub_22633DF3C();
}

uint64_t sub_226345A48(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2262D641C;

  return sub_2263420A4(a1, a2, v2);
}

void sub_226345AF4()
{
  v1 = *(sub_22634EEFC() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_226340F64(v3, v0 + v2, v4);
}

uint64_t sub_226345B84(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_2263410C0(a1, a2);
}

uint64_t sub_226345C30(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_22634116C(a1, a2);
}

uint64_t sub_226345CDC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_226341218(a1, a2);
}

uint64_t sub_226345D88(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_2263412C4(a1, a2);
}

uint64_t sub_226345E34(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_226341370(a1, a2);
}

uint64_t sub_226345EE0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_22634141C(a1, a2);
}

uint64_t sub_226345F8C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_2263414C8(a1, a2);
}

uint64_t sub_226346038(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_226341574(a1, a2);
}

uint64_t sub_2263460E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_226341620(a1, a2);
}

uint64_t sub_226346190(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_2263416CC(a1, a2);
}

uint64_t sub_22634623C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262FF0E0;

  return sub_226341778(a1, a2);
}

uint64_t sub_2263462E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226346330(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793DE8, &qword_226355A98) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_22634EEFC() - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v7);
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2262FF0E0;

  return sub_226341824(a1, v11, v12, v1 + v6, v13, v14, v1 + v10);
}

uint64_t objectdestroy_57Tm()
{
  v1 = sub_22634EEFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_226346590(uint64_t a1)
{
  v3 = *(sub_22634EEFC() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_226341F5C(a1, v5, v1 + v4);
}

uint64_t sub_226346630()
{
  v1 = *(sub_22634EEFC() - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v3 = *(v0 + 16);
  return sub_226346694(v2);
}

uint64_t sub_226346694(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22635004C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_2263503AC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v34[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *&v2[OBJC_IVAR___ATXVisualActionPredictionCoreServer_queue];
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v15 = v14;
  LOBYTE(v14) = sub_2263503CC();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v17 = OBJC_IVAR___ATXVisualActionPredictionCoreServer_sessionMap;
    result = swift_beginAccess();
    v18 = *&v2[v17];
    if (*(v18 + 16))
    {
      v19 = *&v2[v17];

      v20 = sub_2263394D8(a1);
      if (v21)
      {
        v22 = *(*(v18 + 56) + 8 * v20);

        sub_22634FFEC();

        v23 = v2;
        v24 = sub_22635003C();
        v25 = sub_22635071C();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v39 = v36;
          *v26 = 136315906;
          swift_getObjectType();
          v27 = sub_226350D6C();
          v35 = v25;
          v29 = sub_226345004(v27, v28, &v39);

          *(v26 + 4) = v29;
          *(v26 + 12) = 2080;
          *(v26 + 14) = sub_226345004(0xD00000000000001BLL, 0x8000000226357CD0, &v39);
          *(v26 + 22) = 2080;
          *(v26 + 24) = sub_226345004(0x206E6F6973736553, 0xEF6D726177657250, &v39);
          *(v26 + 32) = 2080;
          v37 = 0x286E6F6973736553;
          v38 = 0xE800000000000000;
          sub_22634EEFC();
          sub_2263462E8(&qword_28137FA38, MEMORY[0x277CC95F0]);
          v30 = v5;

          v31 = sub_226350C1C();
          MEMORY[0x22AA7C5B0](v31);

          MEMORY[0x22AA7C5B0](41, 0xE100000000000000);

          v32 = sub_226345004(v37, v38, &v39);

          *(v26 + 34) = v32;
          _os_log_impl(&dword_2262B6000, v24, v35, "%s.%s %s %s", v26, 0x2Au);
          v33 = v36;
          swift_arrayDestroy();
          MEMORY[0x22AA7D570](v33, -1, -1);
          MEMORY[0x22AA7D570](v26, -1, -1);

          (*(v30 + 8))(v8, v4);
        }

        else
        {

          (*(v5 + 8))(v8, v4);
        }

        sub_22633EF1C(v22);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_226346B34()
{
  v1 = *(v0 + 14);

  v2 = *(v0 + 15);

  v3 = *(v0 + 16);

  v4 = OBJC_IVAR____TtC26VisualActionPredictionCore18LinkActionExecutor_featureConfiguration;
  v5 = sub_22634FCDC();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t type metadata accessor for LinkActionExecutor()
{
  result = qword_28137F6F8;
  if (!qword_28137F6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226346C18()
{
  result = sub_22634FCDC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_226346CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7939E0, &qword_2263548B0) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793010, &unk_226354CE0) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793800, &qword_2263542B0) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v9 = sub_22634F17C();
  v5[15] = v9;
  v10 = *(v9 - 8);
  v5[16] = v10;
  v11 = *(v10 + 64) + 15;
  v5[17] = swift_task_alloc();
  v12 = sub_22634FDDC();
  v5[18] = v12;
  v13 = *(v12 - 8);
  v5[19] = v13;
  v14 = *(v13 + 64) + 15;
  v5[20] = swift_task_alloc();
  v15 = sub_22634EEFC();
  v5[21] = v15;
  v16 = *(v15 - 8);
  v5[22] = v16;
  v5[23] = *(v16 + 64);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v17 = type metadata accessor for VisualAction.Kind(0);
  v5[26] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v5[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226346F30, v4, 0);
}

uint64_t sub_226346F30()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[8];
  v4 = type metadata accessor for VisualAction(0);
  sub_2262D76C0(v3 + *(v4 + 20), v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = v0[27];
  if (EnumCaseMultiPayload != 1)
  {
    v9 = v0[7];
    sub_226325C38(v6);
    goto LABEL_5;
  }

  v7 = v6[1];
  v0[28] = v6[2];
  v0[29] = v6[3];
  v0[30] = v6[4];
  v0[31] = v6[5];
  v8 = v6[6];
  v0[32] = v8;
  if (v7)
  {
    v9 = v0[7];

LABEL_5:
    v10 = MEMORY[0x277D78AE8];
LABEL_6:
    v11 = *v10;
    v12 = sub_22634FB9C();
    (*(*(v12 - 8) + 104))(v9, v11, v12);
    v13 = *MEMORY[0x277D78A40];
    v14 = sub_22634FAEC();
    (*(*(v14 - 8) + 104))(v9, v13, v14);
    v15 = v0[27];
    v16 = v0[24];
    v17 = v0[25];
    v18 = v0[20];
    v19 = v0[17];
    v21 = v0[13];
    v20 = v0[14];
    v22 = v0[12];

    v23 = v0[1];

    return v23();
  }

  v25 = v0[11] + OBJC_IVAR____TtC26VisualActionPredictionCore18LinkActionExecutor_featureConfiguration;
  if ((sub_22634FCAC() & 1) == 0)
  {
    v9 = v0[7];

    v10 = MEMORY[0x277D78AD8];
    goto LABEL_6;
  }

  v27 = v0[19];
  v26 = v0[20];
  v28 = v0[18];
  v29 = v0[10];
  v30 = *(v0[11] + 120);
  v0[33] = v30;
  v31 = sub_22634F9BC();
  (*(*(v31 - 8) + 16))(v26, v29, v31);
  (*(v27 + 104))(v26, *MEMORY[0x277D78CD0], v28);

  return MEMORY[0x2822009F8](sub_226347218, v30, 0);
}

uint64_t sub_226347218()
{
  v1 = v0[33];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v5 = v0[11];
  sub_2262E0528(v2, v0[25]);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_2263472BC, v5, 0);
}

uint64_t sub_2263472BC()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 200);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 136);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  v8 = *(v0 + 72);
  v13 = *(v0 + 248);
  v14 = *(v0 + 224);
  sub_22634F4EC();
  sub_22634F50C();
  v9 = *(v4 + 16);
  *(v0 + 272) = v9;
  *(v0 + 280) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v7, v2, v3);
  (*(v4 + 56))(v7, 0, 1, v3);
  sub_22634F16C();
  *(v0 + 16) = v14;
  *(v0 + 32) = v1;
  *(v0 + 40) = v13;
  v10 = swift_task_alloc();
  *(v0 + 288) = v10;
  *v10 = v0;
  v10[1] = sub_226347430;
  v11 = *(v0 + 136);

  return sub_226312BC0(v11, v0 + 16);
}

uint64_t sub_226347430(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 288);
  v6 = *v2;
  *(*v2 + 296) = v1;

  v7 = *(v4 + 88);
  if (v1)
  {
    v8 = sub_2263477DC;
  }

  else
  {

    v8 = sub_226347568;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_226347568()
{
  v1 = v0[34];
  v29 = v0[31];
  v30 = v0[32];
  v3 = v0[24];
  v2 = v0[25];
  v27 = v2;
  v28 = v0[29];
  v4 = v0[22];
  v25 = v0[35];
  v26 = v0[23];
  v5 = v0[21];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[7];
  (*(v0[16] + 8))(v0[17], v0[15]);
  v9 = *MEMORY[0x277D78A48];
  v10 = sub_22634FAEC();
  (*(*(v10 - 8) + 104))(v8, v9, v10);
  v11 = sub_22635064C();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v1(v3, v2, v5);
  v12 = sub_226347C3C();
  v13 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v7;
  *(v14 + 3) = v12;
  *(v14 + 4) = v7;
  (*(v4 + 32))(&v14[v13], v3, v5);
  swift_retain_n();
  sub_2262FB7D4(0, 0, v6, &unk_226355C70, v14);

  (*(v4 + 8))(v27, v5);
  v15 = v0[27];
  v16 = v0[24];
  v17 = v0[25];
  v18 = v0[20];
  v19 = v0[17];
  v21 = v0[13];
  v20 = v0[14];
  v22 = v0[12];

  v23 = v0[1];

  return v23();
}

uint64_t sub_2263477DC()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[32];
  v30 = v3;
  v31 = v0[37];
  v5 = v0[24];
  v4 = v0[25];
  v29 = v4;
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v10 = v0[11];
  v9 = v0[12];
  v32 = v0[7];
  (*(v0[16] + 8))(v0[17], v0[15]);
  v11 = sub_22635064C();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v2(v5, v4, v8);
  v12 = sub_226347C3C();
  v13 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v10;
  *(v14 + 3) = v12;
  *(v14 + 4) = v10;
  (*(v7 + 32))(&v14[v13], v5, v8);
  swift_retain_n();
  sub_2262FB7D4(0, 0, v9, &unk_226355C68, v14);

  (*(v7 + 8))(v29, v8);
  v15 = *MEMORY[0x277D78AE0];
  v16 = sub_22634FB9C();
  (*(*(v16 - 8) + 104))(v32, v15, v16);
  v17 = *MEMORY[0x277D78A40];
  v18 = sub_22634FAEC();
  (*(*(v18 - 8) + 104))(v32, v17, v18);
  v19 = v0[27];
  v20 = v0[24];
  v21 = v0[25];
  v22 = v0[20];
  v23 = v0[17];
  v25 = v0[13];
  v24 = v0[14];
  v26 = v0[12];

  v27 = v0[1];

  return v27();
}

BOOL sub_226347AA4(uint64_t a1)
{
  v2 = type metadata accessor for VisualAction.Kind(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VisualAction(0);
  sub_2262D76C0(a1 + *(v6 + 20), v5);
  v7 = swift_getEnumCaseMultiPayload() == 1;
  sub_226325C38(v5);
  return v7;
}

uint64_t sub_226347B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2262D641C;

  return sub_226346CC4(a1, a2, a3, a4);
}

unint64_t sub_226347C14(uint64_t a1)
{
  result = sub_226347C3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_226347C3C()
{
  result = qword_28137F708;
  if (!qword_28137F708)
  {
    type metadata accessor for LinkActionExecutor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28137F708);
  }

  return result;
}

uint64_t sub_226347C94(uint64_t a1)
{
  v4 = *(sub_22634EEFC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2262FF0E0;

  return sub_2262FD8FC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_226347D8C(uint64_t a1)
{
  v4 = *(sub_22634EEFC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2262D641C;

  return sub_2262FD8FC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_226347E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 24);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_2262D641C;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_226347FF8()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = OBJC_IVAR____TtC26VisualActionPredictionCore18OpenEntityExecutor_featureConfiguration;
  v4 = sub_22634FCDC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t type metadata accessor for OpenEntityExecutor()
{
  result = qword_28137E7C8;
  if (!qword_28137E7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2263480D4()
{
  result = sub_22634FCDC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_226348180(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = type metadata accessor for VisualAction(0);
  v3[13] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v6 = sub_22635004C();
  v3[15] = v6;
  v7 = *(v6 - 8);
  v3[16] = v7;
  v8 = *(v7 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v9 = sub_22634FBEC();
  v3[23] = v9;
  v10 = *(v9 - 8);
  v3[24] = v10;
  v11 = *(v10 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v12 = type metadata accessor for VisualAction.Kind(0);
  v3[32] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226348390, v2, 0);
}

uint64_t sub_226348390()
{
  v92 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 88);
  v3 = *(*(v0 + 104) + 20);
  sub_2262D76C0(v2 + v3, *(v0 + 272));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(v0 + 272);
  if (EnumCaseMultiPayload != 3)
  {
    goto LABEL_6;
  }

  v6 = *(v0 + 256);
  v7 = *(v0 + 264);
  v8 = *(v0 + 184);
  v9 = *(v0 + 192);
  v10 = *(v9 + 8);
  *(v0 + 280) = v10;
  *(v0 + 288) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v5, v8);
  sub_2262D76C0(v2 + v3, v7);
  v11 = swift_getEnumCaseMultiPayload();
  v5 = *(v0 + 264);
  if (v11 == 3)
  {
    v12 = *(v0 + 192);
    v13 = *(v0 + 96);
    (*(v12 + 32))(*(v0 + 248), *(v0 + 264), *(v0 + 184));
    *(v0 + 296) = CFAbsoluteTimeGetCurrent();
    v14 = sub_22634FC8C();
    v15 = (v12 + 16);
    v16 = *(v0 + 248);
    v17 = *(v0 + 184);
    if (v14)
    {
      v18 = *(v0 + 240);
      v19 = *(v0 + 176);
      sub_22635001C();
      v20 = *v15;
      *(v0 + 304) = *v15;
      *(v0 + 312) = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v20(v18, v16, v17);
      v21 = sub_22635003C();
      v22 = sub_22635071C();
      v23 = os_log_type_enabled(v21, v22);
      v24 = *(v0 + 240);
      v25 = *(v0 + 176);
      v26 = *(v0 + 184);
      v28 = *(v0 + 120);
      v27 = *(v0 + 128);
      if (v23)
      {
        v88 = *(v0 + 120);
        v29 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v91 = v85;
        *v29 = 136315138;
        sub_22634A440(&qword_27D7939C8, MEMORY[0x277D78B10]);
        v79 = v22;
        v30 = sub_226350C1C();
        v82 = v25;
        v32 = v31;
        v10(v24, v26);
        v33 = sub_226345004(v30, v32, &v91);

        *(v29 + 4) = v33;
        _os_log_impl(&dword_2262B6000, v21, v79, "Executing open action for target %s using ToolKit...", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v85);
        MEMORY[0x22AA7D570](v85, -1, -1);
        MEMORY[0x22AA7D570](v29, -1, -1);

        v34 = *(v27 + 8);
        v34(v82, v88);
      }

      else
      {

        v10(v24, v26);
        v34 = *(v27 + 8);
        v34(v25, v28);
      }

      *(v0 + 320) = v34;
      v69 = *(v0 + 248);
      v70 = *(v0 + 88);
      v71 = *(*(v0 + 96) + 112);
      *(v0 + 328) = v71;
      *(v0 + 336) = *v70;
      *(v0 + 344) = v70[1];
      *(v0 + 352) = sub_22634FBAC();
      *(v0 + 360) = v72;
      *(v0 + 368) = sub_22634FBDC();
      *(v0 + 376) = v73;

      return MEMORY[0x2822009F8](sub_226348AA8, v71, 0);
    }

    else
    {
      v52 = *(v0 + 224);
      v53 = *(v0 + 160);
      sub_22635001C();
      v54 = *v15;
      *(v0 + 408) = *v15;
      *(v0 + 416) = v15 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v54(v52, v16, v17);
      v55 = sub_22635003C();
      v56 = sub_22635071C();
      v57 = os_log_type_enabled(v55, v56);
      v58 = *(v0 + 224);
      v59 = *(v0 + 184);
      v60 = *(v0 + 160);
      v62 = *(v0 + 120);
      v61 = *(v0 + 128);
      if (v57)
      {
        v90 = *(v0 + 120);
        v63 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v91 = v87;
        *v63 = 136315138;
        sub_22634A440(&qword_27D7939C8, MEMORY[0x277D78B10]);
        v81 = v56;
        v64 = sub_226350C1C();
        v84 = v60;
        v66 = v65;
        v10(v58, v59);
        v67 = sub_226345004(v64, v66, &v91);

        *(v63 + 4) = v67;
        _os_log_impl(&dword_2262B6000, v55, v81, "Executing open action for target %s using LinkServices...", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v87);
        MEMORY[0x22AA7D570](v87, -1, -1);
        MEMORY[0x22AA7D570](v63, -1, -1);

        v68 = *(v61 + 8);
        v68(v84, v90);
      }

      else
      {

        v10(v58, v59);
        v68 = *(v61 + 8);
        v68(v60, v62);
      }

      *(v0 + 424) = v68;
      v74 = *(*(v0 + 96) + 120);
      v75 = swift_task_alloc();
      *(v0 + 432) = v75;
      *v75 = v0;
      v75[1] = sub_2263494F8;
      v76 = *(v0 + 248);

      return sub_22630F928(v76);
    }
  }

  else
  {
LABEL_6:
    v35 = *(v0 + 80);
    sub_2262FE61C(v5, type metadata accessor for VisualAction.Kind);
    v36 = *MEMORY[0x277D78AE8];
    v37 = sub_22634FB9C();
    (*(*(v37 - 8) + 104))(v35, v36, v37);
    v38 = *MEMORY[0x277D78A40];
    v39 = sub_22634FAEC();
    (*(*(v39 - 8) + 104))(v35, v38, v39);
    v41 = *(v0 + 264);
    v40 = *(v0 + 272);
    v43 = *(v0 + 240);
    v42 = *(v0 + 248);
    v45 = *(v0 + 224);
    v44 = *(v0 + 232);
    v47 = *(v0 + 208);
    v46 = *(v0 + 216);
    v48 = *(v0 + 200);
    v49 = *(v0 + 176);
    v77 = *(v0 + 168);
    v78 = *(v0 + 160);
    v80 = *(v0 + 152);
    v83 = *(v0 + 144);
    v86 = *(v0 + 136);
    v89 = *(v0 + 112);

    v50 = *(v0 + 8);

    return v50();
  }
}

uint64_t sub_226348AA8()
{
  v1 = v0[41];
  sub_2262F929C(v0[42], v0[43], v0[44], v0[45], v0[46], v0[47], v0[14]);
  v0[48] = 0;
  v2 = v0[47];
  v3 = v0[45];

  v4 = swift_task_alloc();
  v0[49] = v4;
  *v4 = v0;
  v4[1] = sub_226348BCC;
  v5 = v0[41];
  v6 = v0[14];

  return sub_2262F6C00(v6);
}

uint64_t sub_226348BCC()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_2263499B0;
  }

  else
  {
    v6 = sub_226349130;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_226348CF8()
{
  v66 = v0;
  v1 = v0[48];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[31];
  v5 = v0[26];
  v6 = v0[23];
  v7 = v0[18];
  sub_22635001C();
  v3(v5, v4, v6);
  v8 = v1;
  v9 = sub_22635003C();
  v10 = sub_22635073C();

  if (os_log_type_enabled(v9, v10))
  {
    v60 = v0[40];
    v62 = v0[35];
    v11 = v0[26];
    v12 = v0[23];
    v56 = v0[18];
    v58 = v0[31];
    v51 = v0[36];
    v52 = v0[16];
    v54 = v0[15];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v65 = v14;
    *v13 = 136315394;
    swift_getErrorValue();
    v16 = v0[5];
    v15 = v0[6];
    v17 = v0[7];
    v18 = sub_226350C9C();
    v20 = sub_226345004(v18, v19, &v65);

    *(v13 + 4) = v20;
    *(v13 + 12) = 2080;
    sub_22634A440(&qword_27D7939C8, MEMORY[0x277D78B10]);
    v21 = sub_226350C1C();
    v23 = v22;
    v62(v11, v12);
    v24 = sub_226345004(v21, v23, &v65);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_2262B6000, v9, v10, "Error %s occurred while executing open action for target %s using ToolKit.", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v14, -1, -1);
    MEMORY[0x22AA7D570](v13, -1, -1);

    v60(v56, v54);
    v62(v58, v12);
  }

  else
  {
    v63 = v0[40];
    v25 = v9;
    v26 = v0[35];
    v27 = v0[36];
    v28 = v0[31];
    v29 = v0[26];
    v30 = v0[23];
    v31 = v0[18];
    v32 = v0[15];
    v33 = v0[16];

    v26(v29, v30);
    v63(v31, v32);
    v26(v28, v30);
  }

  v34 = v0[10];
  v35 = *MEMORY[0x277D78AB8];
  v36 = sub_22634FB9C();
  (*(*(v36 - 8) + 104))(v34, v35, v36);
  v37 = *MEMORY[0x277D78A40];
  v38 = sub_22634FAEC();
  (*(*(v38 - 8) + 104))(v34, v37, v38);
  v40 = v0[33];
  v39 = v0[34];
  v42 = v0[30];
  v41 = v0[31];
  v44 = v0[28];
  v43 = v0[29];
  v46 = v0[26];
  v45 = v0[27];
  v47 = v0[25];
  v48 = v0[22];
  v53 = v0[21];
  v55 = v0[20];
  v57 = v0[19];
  v59 = v0[18];
  v61 = v0[17];
  v64 = v0[14];

  v49 = v0[1];

  return v49();
}

uint64_t sub_226349130()
{
  v58 = v0;
  v2 = *(v0 + 304);
  v1 = *(v0 + 312);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  v5 = *(v0 + 184);
  v6 = *(v0 + 168);
  sub_22635001C();
  v2(v4, v3, v5);
  v7 = sub_22635003C();
  v8 = sub_22635071C();
  v9 = os_log_type_enabled(v7, v8);
  v55 = *(v0 + 320);
  if (v9)
  {
    v10 = *(v0 + 296);
    v11 = *(v0 + 280);
    v50 = *(v0 + 248);
    v52 = *(v0 + 288);
    v12 = *(v0 + 232);
    v13 = *(v0 + 184);
    v43 = *(v0 + 128);
    v44 = *(v0 + 120);
    v46 = *(v0 + 168);
    v48 = *(v0 + 112);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v57 = v15;
    *v14 = 136315394;
    sub_22634A440(&qword_27D7939C8, MEMORY[0x277D78B10]);
    v16 = sub_226350C1C();
    v18 = v17;
    v11(v12, v13);
    v19 = sub_226345004(v16, v18, &v57);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2048;
    *(v14 + 14) = CFAbsoluteTimeGetCurrent() - v10;
    _os_log_impl(&dword_2262B6000, v7, v8, "Executing open action for target %s using ToolKit. (latency = %f", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x22AA7D570](v15, -1, -1);
    MEMORY[0x22AA7D570](v14, -1, -1);

    v55(v46, v44);
    sub_2262FE61C(v48, type metadata accessor for VisualAction);
    v11(v50, v13);
  }

  else
  {
    v21 = *(v0 + 280);
    v20 = *(v0 + 288);
    v53 = *(v0 + 248);
    v22 = *(v0 + 232);
    v23 = *(v0 + 184);
    v24 = *(v0 + 168);
    v26 = *(v0 + 120);
    v25 = *(v0 + 128);
    v27 = *(v0 + 112);

    v21(v22, v23);
    v55(v24, v26);
    sub_2262FE61C(v27, type metadata accessor for VisualAction);
    v21(v53, v23);
  }

  v28 = *(v0 + 80);
  v29 = *MEMORY[0x277D78A48];
  v30 = sub_22634FAEC();
  (*(*(v30 - 8) + 104))(v28, v29, v30);
  v32 = *(v0 + 264);
  v31 = *(v0 + 272);
  v34 = *(v0 + 240);
  v33 = *(v0 + 248);
  v36 = *(v0 + 224);
  v35 = *(v0 + 232);
  v38 = *(v0 + 208);
  v37 = *(v0 + 216);
  v39 = *(v0 + 200);
  v40 = *(v0 + 176);
  v45 = *(v0 + 168);
  v47 = *(v0 + 160);
  v49 = *(v0 + 152);
  v51 = *(v0 + 144);
  v54 = *(v0 + 136);
  v56 = *(v0 + 112);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_2263494F8(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 432);
  v6 = *v2;
  *(*v2 + 440) = v1;

  v7 = *(v4 + 96);
  if (v1)
  {
    v8 = sub_226349E04;
  }

  else
  {

    v8 = sub_226349630;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_226349630()
{
  v56 = v0;
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v3 = *(v0 + 248);
  v4 = *(v0 + 216);
  v5 = *(v0 + 184);
  v6 = *(v0 + 152);
  sub_22635001C();
  v2(v4, v3, v5);
  v7 = sub_22635003C();
  v8 = sub_22635071C();
  v9 = os_log_type_enabled(v7, v8);
  v53 = *(v0 + 424);
  if (v9)
  {
    v10 = *(v0 + 296);
    v11 = *(v0 + 280);
    v49 = *(v0 + 248);
    v51 = *(v0 + 288);
    v12 = *(v0 + 216);
    v13 = *(v0 + 184);
    v43 = *(v0 + 128);
    v45 = *(v0 + 120);
    v47 = *(v0 + 152);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v55 = v15;
    *v14 = 136315394;
    sub_22634A440(&qword_27D7939C8, MEMORY[0x277D78B10]);
    v16 = sub_226350C1C();
    v18 = v17;
    v11(v12, v13);
    v19 = sub_226345004(v16, v18, &v55);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2048;
    *(v14 + 14) = CFAbsoluteTimeGetCurrent() - v10;
    _os_log_impl(&dword_2262B6000, v7, v8, "Executing open action for target %s using LinkServices. (latency = %f", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x22AA7D570](v15, -1, -1);
    MEMORY[0x22AA7D570](v14, -1, -1);

    v53(v47, v45);
    v11(v49, v13);
  }

  else
  {
    v21 = *(v0 + 280);
    v20 = *(v0 + 288);
    v22 = *(v0 + 248);
    v23 = *(v0 + 216);
    v24 = *(v0 + 184);
    v25 = *(v0 + 152);
    v26 = *(v0 + 120);
    v27 = *(v0 + 128);

    v21(v23, v24);
    v53(v25, v26);
    v21(v22, v24);
  }

  v28 = *(v0 + 80);
  v29 = *MEMORY[0x277D78A48];
  v30 = sub_22634FAEC();
  (*(*(v30 - 8) + 104))(v28, v29, v30);
  v32 = *(v0 + 264);
  v31 = *(v0 + 272);
  v34 = *(v0 + 240);
  v33 = *(v0 + 248);
  v36 = *(v0 + 224);
  v35 = *(v0 + 232);
  v38 = *(v0 + 208);
  v37 = *(v0 + 216);
  v39 = *(v0 + 200);
  v40 = *(v0 + 176);
  v44 = *(v0 + 168);
  v46 = *(v0 + 160);
  v48 = *(v0 + 152);
  v50 = *(v0 + 144);
  v52 = *(v0 + 136);
  v54 = *(v0 + 112);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_2263499B0()
{
  v66 = v0;
  sub_2262FE61C(v0[14], type metadata accessor for VisualAction);
  v1 = v0[50];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[31];
  v5 = v0[26];
  v6 = v0[23];
  v7 = v0[18];
  sub_22635001C();
  v3(v5, v4, v6);
  v8 = v1;
  v9 = sub_22635003C();
  v10 = sub_22635073C();

  if (os_log_type_enabled(v9, v10))
  {
    v60 = v0[40];
    v62 = v0[35];
    v11 = v0[26];
    v12 = v0[23];
    v56 = v0[18];
    v58 = v0[31];
    v51 = v0[36];
    v52 = v0[16];
    v54 = v0[15];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v65 = v14;
    *v13 = 136315394;
    swift_getErrorValue();
    v16 = v0[5];
    v15 = v0[6];
    v17 = v0[7];
    v18 = sub_226350C9C();
    v20 = sub_226345004(v18, v19, &v65);

    *(v13 + 4) = v20;
    *(v13 + 12) = 2080;
    sub_22634A440(&qword_27D7939C8, MEMORY[0x277D78B10]);
    v21 = sub_226350C1C();
    v23 = v22;
    v62(v11, v12);
    v24 = sub_226345004(v21, v23, &v65);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_2262B6000, v9, v10, "Error %s occurred while executing open action for target %s using ToolKit.", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v14, -1, -1);
    MEMORY[0x22AA7D570](v13, -1, -1);

    v60(v56, v54);
    v62(v58, v12);
  }

  else
  {
    v63 = v0[40];
    v25 = v9;
    v26 = v0[35];
    v27 = v0[36];
    v28 = v0[31];
    v29 = v0[26];
    v30 = v0[23];
    v31 = v0[18];
    v32 = v0[15];
    v33 = v0[16];

    v26(v29, v30);
    v63(v31, v32);
    v26(v28, v30);
  }

  v34 = v0[10];
  v35 = *MEMORY[0x277D78AB8];
  v36 = sub_22634FB9C();
  (*(*(v36 - 8) + 104))(v34, v35, v36);
  v37 = *MEMORY[0x277D78A40];
  v38 = sub_22634FAEC();
  (*(*(v38 - 8) + 104))(v34, v37, v38);
  v40 = v0[33];
  v39 = v0[34];
  v42 = v0[30];
  v41 = v0[31];
  v44 = v0[28];
  v43 = v0[29];
  v46 = v0[26];
  v45 = v0[27];
  v47 = v0[25];
  v48 = v0[22];
  v53 = v0[21];
  v55 = v0[20];
  v57 = v0[19];
  v59 = v0[18];
  v61 = v0[17];
  v64 = v0[14];

  v49 = v0[1];

  return v49();
}

uint64_t sub_226349E04()
{
  v68 = v0;
  v1 = v0[55];
  v3 = v0[51];
  v2 = v0[52];
  v4 = v0[31];
  v5 = v0[25];
  v6 = v0[23];
  v7 = v0[17];
  sub_22635001C();
  v3(v5, v4, v6);
  v8 = v1;
  v9 = sub_22635003C();
  v10 = sub_22635073C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[36];
    v53 = v0[35];
    v54 = v0[55];
    v62 = v0[31];
    v64 = v0[53];
    v12 = v0[25];
    v13 = v0[23];
    v56 = v0[16];
    v58 = v0[15];
    v60 = v0[17];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v67 = v15;
    *v14 = 136315394;
    swift_getErrorValue();
    v17 = v0[2];
    v16 = v0[3];
    v18 = v0[4];
    v19 = sub_226350C9C();
    v21 = sub_226345004(v19, v20, &v67);

    *(v14 + 4) = v21;
    *(v14 + 12) = 2080;
    sub_22634A440(&qword_27D7939C8, MEMORY[0x277D78B10]);
    v22 = sub_226350C1C();
    v24 = v23;
    v53(v12, v13);
    v25 = sub_226345004(v22, v24, &v67);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_2262B6000, v9, v10, "Error %s occurred while executing open action for target %s using LinkServices.", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v15, -1, -1);
    MEMORY[0x22AA7D570](v14, -1, -1);

    v64(v60, v58);
    v53(v62, v13);
  }

  else
  {
    v26 = v0[55];
    v65 = v0[53];
    v27 = v9;
    v28 = v0[35];
    v29 = v0[36];
    v30 = v0[31];
    v31 = v0[25];
    v32 = v0[23];
    v34 = v0[16];
    v33 = v0[17];
    v35 = v0[15];

    v28(v31, v32);
    v65(v33, v35);
    v28(v30, v32);
  }

  v36 = v0[10];
  v37 = *MEMORY[0x277D78AE0];
  v38 = sub_22634FB9C();
  (*(*(v38 - 8) + 104))(v36, v37, v38);
  v39 = *MEMORY[0x277D78A40];
  v40 = sub_22634FAEC();
  (*(*(v40 - 8) + 104))(v36, v39, v40);
  v42 = v0[33];
  v41 = v0[34];
  v44 = v0[30];
  v43 = v0[31];
  v46 = v0[28];
  v45 = v0[29];
  v48 = v0[26];
  v47 = v0[27];
  v49 = v0[25];
  v50 = v0[22];
  v55 = v0[21];
  v57 = v0[20];
  v59 = v0[19];
  v61 = v0[18];
  v63 = v0[17];
  v66 = v0[14];

  v51 = v0[1];

  return v51();
}

BOOL sub_22634A238(uint64_t a1)
{
  v2 = type metadata accessor for VisualAction.Kind(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VisualAction(0);
  sub_2262D76C0(a1 + *(v6 + 20), v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v8 = sub_22634FBEC();
    (*(*(v8 - 8) + 8))(v5, v8);
  }

  else
  {
    sub_2262FE61C(v5, type metadata accessor for VisualAction.Kind);
  }

  return EnumCaseMultiPayload == 3;
}

uint64_t sub_22634A340(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2262D641C;

  return sub_226348180(a1, a2);
}

uint64_t sub_22634A3E8(uint64_t a1)
{
  result = sub_22634A440(&qword_28137E7E0, type metadata accessor for OpenEntityExecutor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22634A440(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22634A488()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  v1 = sub_2262F78BC(v0);

  if (*(v1 + 16) && (v2 = sub_22633941C(0xD00000000000001CLL, 0x8000000226357FD0), (v3 & 1) != 0))
  {
    sub_2262FB40C(*(v1 + 56) + 32 * v2, v7);

    sub_2262FB4D0(v7, &v5);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return 10;
}

uint64_t sub_22634A558()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  v1 = sub_2262F78BC(v0);

  if (*(v1 + 16) && (v2 = sub_22633941C(0x6769654E4E78616DLL, 0xED000073726F6268), (v3 & 1) != 0))
  {
    sub_2262FB40C(*(v1 + 56) + 32 * v2, v7);

    sub_2262FB4D0(v7, &v5);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return 3;
}

uint64_t sub_22634A630()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  v1 = sub_2262F78BC(v0);

  if (*(v1 + 16) && (v2 = sub_22633941C(0xD00000000000001CLL, 0x8000000226357FB0), (v3 & 1) != 0))
  {
    sub_2262FB40C(*(v1 + 56) + 32 * v2, v7);

    sub_2262FB4D0(v7, &v5);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return 3;
}

double sub_22634A700()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  v1 = sub_2262F78BC(v0);

  if (*(v1 + 16) && (v2 = sub_22633941C(0xD000000000000023, 0x8000000226357F60), (v3 & 1) != 0))
  {
    sub_2262FB40C(*(v1 + 56) + 32 * v2, v7);

    sub_2262FB4D0(v7, &v5);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return 1.0;
}

double sub_22634A7D0()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  v1 = sub_2262F78BC(v0);

  if (*(v1 + 16) && (v2 = sub_22633941C(0xD000000000000017, 0x8000000226357F90), (v3 & 1) != 0))
  {
    sub_2262FB40C(*(v1 + 56) + 32 * v2, v7);

    sub_2262FB4D0(v7, &v5);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return 0.1;
}

double sub_22634A8A4()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  v1 = sub_2262F78BC(v0);

  if (*(v1 + 16) && (v2 = sub_22633941C(0x6563655279726576, 0xEF7961636544746ELL), (v3 & 1) != 0))
  {
    sub_2262FB40C(*(v1 + 56) + 32 * v2, v7);

    sub_2262FB4D0(v7, &v5);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return 0.693;
}

double sub_22634A980()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  v1 = sub_2262F78BC(v0);

  if (*(v1 + 16) && (v2 = sub_22633941C(0x44796144656D6173, 0xEC00000079616365), (v3 & 1) != 0))
  {
    sub_2262FB40C(*(v1 + 56) + 32 * v2, v7);

    sub_2262FB4D0(v7, &v5);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return 0.115;
}

double sub_22634AA58()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  v1 = sub_2262F78BC(v0);

  if (*(v1 + 16) && (v2 = sub_22633941C(0x6B656557656D6173, 0xED00007961636544), (v3 & 1) != 0))
  {
    sub_2262FB40C(*(v1 + 56) + 32 * v2, v7);

    sub_2262FB4D0(v7, &v5);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return 0.01;
}

double sub_22634AB34()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  v1 = sub_2262F78BC(v0);

  if (*(v1 + 16) && (v2 = sub_22633941C(0x6365447265646C6FLL, 0xEA00000000007961), (v3 & 1) != 0))
  {
    sub_2262FB40C(*(v1 + 56) + 32 * v2, v7);

    sub_2262FB4D0(v7, &v5);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return 0.001;
}

double sub_22634AC08()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  v1 = sub_2262F78BC(v0);

  if (*(v1 + 16) && (v2 = sub_22633941C(0xD00000000000001CLL, 0x8000000226357F40), (v3 & 1) != 0))
  {
    sub_2262FB40C(*(v1 + 56) + 32 * v2, v7);

    sub_2262FB4D0(v7, &v5);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return 10.0;
}

double sub_22634ACD8()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  v1 = sub_2262F78BC(v0);

  if (*(v1 + 16) && (v2 = sub_22633941C(0xD00000000000001ELL, 0x8000000226357F20), (v3 & 1) != 0))
  {
    sub_2262FB40C(*(v1 + 56) + 32 * v2, v7);

    sub_2262FB4D0(v7, &v5);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return 0.06;
}

double sub_22634ADAC()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  v1 = sub_2262F78BC(v0);

  if (*(v1 + 16) && (v2 = sub_22633941C(0xD00000000000001ELL, 0x8000000226357F00), (v3 & 1) != 0))
  {
    sub_2262FB40C(*(v1 + 56) + 32 * v2, v7);

    sub_2262FB4D0(v7, &v5);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return 0.06;
}

double sub_22634AE80()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  v1 = sub_2262F78BC(v0);

  if (*(v1 + 16) && (v2 = sub_22633941C(0xD00000000000001ALL, 0x8000000226357EE0), (v3 & 1) != 0))
  {
    sub_2262FB40C(*(v1 + 56) + 32 * v2, v7);

    sub_2262FB4D0(v7, &v5);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return 0.06;
}

double sub_22634AF54()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  v1 = sub_2262F78BC(v0);

  if (*(v1 + 16) && (v2 = sub_22633941C(0xD000000000000019, 0x8000000226356A30), (v3 & 1) != 0))
  {
    sub_2262FB40C(*(v1 + 56) + 32 * v2, v7);

    sub_2262FB4D0(v7, &v5);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return 0.16;
}

double sub_22634B028()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  v1 = sub_2262F78BC(v0);

  if (*(v1 + 16) && (v2 = sub_22633941C(0xD000000000000019, 0x8000000226356A50), (v3 & 1) != 0))
  {
    sub_2262FB40C(*(v1 + 56) + 32 * v2, v7);

    sub_2262FB4D0(v7, &v5);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return 0.12;
}

double sub_22634B0FC()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  v1 = sub_2262F78BC(v0);

  if (*(v1 + 16) && (v2 = sub_22633941C(0xD000000000000015, 0x8000000226357EC0), (v3 & 1) != 0))
  {
    sub_2262FB40C(*(v1 + 56) + 32 * v2, v7);

    sub_2262FB4D0(v7, &v5);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return 0.08;
}

double sub_22634B1D0()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  v1 = sub_2262F78BC(v0);

  if (*(v1 + 16) && (v2 = sub_22633941C(0xD000000000000017, 0x8000000226357EA0), (v3 & 1) != 0))
  {
    sub_2262FB40C(*(v1 + 56) + 32 * v2, v7);

    sub_2262FB4D0(v7, &v5);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return 0.04;
}

double sub_22634B2A4()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  v1 = sub_2262F78BC(v0);

  if (*(v1 + 16) && (v2 = sub_22633941C(0xD000000000000017, 0x8000000226357E80), (v3 & 1) != 0))
  {
    sub_2262FB40C(*(v1 + 56) + 32 * v2, v7);

    sub_2262FB4D0(v7, &v5);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return 0.04;
}

double sub_22634B378()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  v1 = sub_2262F78BC(v0);

  if (*(v1 + 16) && (v2 = sub_22633941C(0xD000000000000013, 0x8000000226357E60), (v3 & 1) != 0))
  {
    sub_2262FB40C(*(v1 + 56) + 32 * v2, v7);

    sub_2262FB4D0(v7, &v5);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return 0.04;
}

double sub_22634B44C()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  v1 = sub_2262F78BC(v0);

  if (*(v1 + 16) && (v2 = sub_22633941C(0xD00000000000001ELL, 0x8000000226357E40), (v3 & 1) != 0))
  {
    sub_2262FB40C(*(v1 + 56) + 32 * v2, v7);

    sub_2262FB4D0(v7, &v5);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return 0.12;
}

double sub_22634B520()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  v1 = sub_2262F78BC(v0);

  if (*(v1 + 16) && (v2 = sub_22633941C(0xD00000000000001ELL, 0x8000000226357E20), (v3 & 1) != 0))
  {
    sub_2262FB40C(*(v1 + 56) + 32 * v2, v7);

    sub_2262FB4D0(v7, &v5);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return 0.08;
}

double sub_22634B5F4()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  v1 = sub_2262F78BC(v0);

  if (*(v1 + 16) && (v2 = sub_22633941C(0xD00000000000001ALL, 0x8000000226357E00), (v3 & 1) != 0))
  {
    sub_2262FB40C(*(v1 + 56) + 32 * v2, v7);

    sub_2262FB4D0(v7, &v5);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return 0.04;
}

double sub_22634B6C8()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  v1 = sub_2262F78BC(v0);

  if (*(v1 + 16) && (v2 = sub_22633941C(0xD000000000000014, 0x8000000226357DE0), (v3 & 1) != 0))
  {
    sub_2262FB40C(*(v1 + 56) + 32 * v2, v7);

    sub_2262FB4D0(v7, &v5);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return 0.1;
}

double sub_22634B79C()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  v1 = sub_2262F78BC(v0);

  if (*(v1 + 16) && (v2 = sub_22633941C(0xD000000000000017, 0x8000000226357DC0), (v3 & 1) != 0))
  {
    sub_2262FB40C(*(v1 + 56) + 32 * v2, v7);

    sub_2262FB4D0(v7, &v5);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return 0.1;
}

double sub_22634B870()
{
  sub_22634FA3C();
  v0 = sub_22634FA1C();
  v1 = sub_2262F78BC(v0);

  if (*(v1 + 16) && (v2 = sub_22633941C(0xD000000000000017, 0x8000000226357DA0), (v3 & 1) != 0))
  {
    sub_2262FB40C(*(v1 + 56) + 32 * v2, v7);

    sub_2262FB4D0(v7, &v5);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return 0.5;
}

uint64_t sub_22634B940(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, unint64_t a6, _BOOL8 a7, uint64_t a8)
{
  v156 = a2;
  v158 = a8;
  v167 = a6;
  v165 = a5;
  v12 = sub_22635004C();
  v163 = *(v12 - 8);
  v164 = v12;
  v13 = *(v163 + 64);
  MEMORY[0x28223BE20](v12);
  v162 = &v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v157 = &v149 - v17;
  v154 = type metadata accessor for VisualAction.Kind(0);
  v18 = *(*(v154 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v154);
  v153 = &v149 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v149 - v21;
  v155 = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7935C8, &unk_226353200);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_226355DD0;
  *(v23 + 32) = 0x6E496E6F69746361;
  v161 = v23 + 32;
  *(v23 + 40) = 0xEB00000000786564;
  *(v23 + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v23 + 56) = 0x6449656C646E7562;
  *(v23 + 64) = 0xE800000000000000;
  v166 = a1;
  v25 = *a1;
  v24 = a1[1];
  v26 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v27 = sub_22635045C();
  v28 = [v26 initWithString_];

  *(v23 + 72) = v28;
  strcpy((v23 + 80), "executionType");
  *(v23 + 94) = -4864;
  *(v23 + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  strcpy((v23 + 104), "groundingLabel");
  *(v23 + 119) = -18;
  if (a7)
  {
    v29 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v30 = v167;
    v31 = sub_22635045C();
    v32 = [v29 initWithString_];

    v33 = HIBYTE(a7) & 0xF;
    if ((a7 & 0x2000000000000000) == 0)
    {
      v33 = v30 & 0xFFFFFFFFFFFFLL;
    }

    a7 = v33 != 0;
  }

  else
  {
    v32 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  *(v23 + 120) = v32;
  *(v23 + 128) = 0xD000000000000011;
  v159 = 0xD000000000000011;
  *(v23 + 136) = 0x8000000226356B70;
  *(v23 + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(v23 + 152) = 0xD000000000000018;
  *(v23 + 160) = 0x8000000226356B90;
  v34 = sub_22634F47C();
  v149 = *(v34 - 8);
  v150 = v34;
  v35 = *(v149 + 48);
  v151 = v149 + 48;
  v152 = v35;
  *(v23 + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(v23 + 176) = 0xD000000000000013;
  v160 = 0xD000000000000013;
  *(v23 + 184) = 0x8000000226358030;
  v36 = v166;
  *(v23 + 192) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(v23 + 200) = 0xD000000000000010;
  *(v23 + 208) = 0x8000000226358050;
  v37 = type metadata accessor for RankedVisualAction();
  *(v23 + 216) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  strcpy((v23 + 224), "isCustomAction");
  *(v23 + 239) = -18;
  v38 = *(type metadata accessor for VisualAction(0) + 20);
  sub_2262D76C0(v36 + v38, v22);
  v39 = swift_getEnumCaseMultiPayload() == 2;
  sub_226325C38(v22);
  *(v23 + 240) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(v23 + 248) = 0xD000000000000014;
  v167 = 0xD000000000000014;
  *(v23 + 256) = 0x8000000226358070;
  v40 = v153;
  sub_2262D76C0(v36 + v38, v153);
  v41 = swift_getEnumCaseMultiPayload() == 4;
  sub_226325C38(v40);
  *(v23 + 264) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(v23 + 272) = 1684957547;
  *(v23 + 280) = 0xE400000000000000;
  sub_2262DC4AC();
  v42 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v43 = sub_22635045C();
  v44 = [v42 initWithString_];

  *(v23 + 288) = v44;
  *(v23 + 296) = 0x656D6F6374756FLL;
  *(v23 + 304) = 0xE700000000000000;
  v45 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *(v23 + 312) = [v45 initWithInteger_];
  *(v23 + 320) = 0x5574736575716572;
  *(v23 + 328) = 0xEB00000000444955;
  sub_22634EEDC();
  v46 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v47 = sub_22635045C();
  v48 = [v46 initWithString_];

  *(v23 + 336) = v48;
  *(v23 + 344) = 0x65726F6373;
  *(v23 + 352) = 0xE500000000000000;
  v156 = v37;
  *(v23 + 360) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(v23 + 368) = 0x556E6F6973736573;
  *(v23 + 376) = 0xEB00000000444955;
  v49 = v150;
  sub_22634EEDC();
  v50 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v51 = sub_22635045C();
  v52 = [v50 initWithString_];

  *(v23 + 384) = v52;
  *(v23 + 392) = 0xD000000000000015;
  *(v23 + 400) = 0x8000000226356BD0;
  v53 = v157;
  sub_22632C3D4(v165, v157);
  if (v152(v53, 1, v49) == 1)
  {
    sub_22634D3A4(v53);
    v54 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v55 = &off_27858F000;
  }

  else
  {
    v56 = sub_22634F44C();
    (*(v149 + 8))(v53, v49);
    v55 = &off_27858F000;
    v54 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  *(v23 + 408) = v54;
  *(v23 + 416) = 0x776F6C666B726F77;
  *(v23 + 424) = 0xE800000000000000;
  *(v23 + 432) = [objc_allocWithZone(MEMORY[0x277CCABB0]) v55[146]];
  *(v23 + 440) = 0xD000000000000018;
  *(v23 + 448) = 0x8000000226358090;
  v57 = v166 + *(v156 + 20);
  v58 = *(v57 + 7);
  v254[6] = *(v57 + 6);
  v254[7] = v58;
  v255 = v57[128];
  v59 = *(v57 + 3);
  v254[2] = *(v57 + 2);
  v254[3] = v59;
  v60 = *(v57 + 5);
  v254[4] = *(v57 + 4);
  v254[5] = v60;
  v61 = *(v57 + 1);
  v254[0] = *v57;
  v254[1] = v61;
  v62 = sub_2262D66D8(v254);
  v63 = v159;
  if (v62 == 1)
  {
    v64 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v64 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  v65 = v160;
  *(v23 + 456) = v64;
  *(v23 + 464) = 0xD000000000000018;
  *(v23 + 472) = 0x80000002263580B0;
  v66 = *(v57 + 7);
  v252[6] = *(v57 + 6);
  v252[7] = v66;
  v253 = v57[128];
  v67 = *(v57 + 3);
  v252[2] = *(v57 + 2);
  v252[3] = v67;
  v68 = *(v57 + 4);
  v252[5] = *(v57 + 5);
  v252[4] = v68;
  v69 = *v57;
  v252[1] = *(v57 + 1);
  v252[0] = v69;
  if (sub_2262D66D8(v252) == 1)
  {
    v70 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v70 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  v71 = v167;
  *(v23 + 480) = v70;
  *(v23 + 488) = v71;
  *(v23 + 496) = 0x80000002263580D0;
  v72 = *(v57 + 7);
  v249 = *(v57 + 6);
  v250 = v72;
  v251 = v57[128];
  v73 = *(v57 + 3);
  v245 = *(v57 + 2);
  v246 = v73;
  v74 = *(v57 + 4);
  v248 = *(v57 + 5);
  v247 = v74;
  v75 = *v57;
  v244 = *(v57 + 1);
  v243 = v75;
  if (sub_2262D66D8(&v243) == 1)
  {
    v76 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v76 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  *(v23 + 504) = v76;
  *(v23 + 512) = v65;
  *(v23 + 520) = 0x80000002263580F0;
  v77 = *(v57 + 7);
  v240 = *(v57 + 6);
  v241 = v77;
  v242 = v57[128];
  v78 = *(v57 + 3);
  v236 = *(v57 + 2);
  v237 = v78;
  v79 = *(v57 + 4);
  v239 = *(v57 + 5);
  v238 = v79;
  v80 = *v57;
  v235 = *(v57 + 1);
  v234 = v80;
  if (sub_2262D66D8(&v234) == 1)
  {
    v81 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v81 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  *(v23 + 528) = v81;
  *(v23 + 536) = v65;
  *(v23 + 544) = 0x8000000226358110;
  v82 = *(v57 + 7);
  v231 = *(v57 + 6);
  v232 = v82;
  v233 = v57[128];
  v83 = *(v57 + 3);
  v227 = *(v57 + 2);
  v228 = v83;
  v84 = *(v57 + 4);
  v230 = *(v57 + 5);
  v229 = v84;
  v85 = *v57;
  v226[1] = *(v57 + 1);
  v226[0] = v85;
  if (sub_2262D66D8(v226) == 1)
  {
    v86 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v86 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  *(v23 + 552) = v86;
  *(v23 + 560) = 0x72466C61626F6C67;
  *(v23 + 568) = 0xEF79636E65757165;
  v87 = *(v57 + 7);
  v223 = *(v57 + 6);
  v224 = v87;
  v225 = v57[128];
  v88 = *(v57 + 3);
  v219 = *(v57 + 2);
  v220 = v88;
  v89 = *(v57 + 4);
  v222 = *(v57 + 5);
  v221 = v89;
  v90 = *v57;
  v218[1] = *(v57 + 1);
  v218[0] = v90;
  if (sub_2262D66D8(v218) == 1)
  {
    v91 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v91 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  *(v23 + 576) = v91;
  *(v23 + 584) = v63;
  *(v23 + 592) = 0x8000000226358130;
  v92 = *(v57 + 7);
  v215 = *(v57 + 6);
  v216 = v92;
  v217 = v57[128];
  v93 = *(v57 + 3);
  v211[2] = *(v57 + 2);
  v212 = v93;
  v94 = *(v57 + 4);
  v214 = *(v57 + 5);
  v213 = v94;
  v95 = *v57;
  v211[1] = *(v57 + 1);
  v211[0] = v95;
  if (sub_2262D66D8(v211) == 1)
  {
    v96 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v96 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  *(v23 + 600) = v96;
  *(v23 + 608) = v63;
  *(v23 + 616) = 0x8000000226358150;
  v97 = *(v57 + 7);
  v208 = *(v57 + 6);
  v209 = v97;
  v210 = v57[128];
  v98 = *(v57 + 3);
  v204[2] = *(v57 + 2);
  v205 = v98;
  v99 = *(v57 + 4);
  v207 = *(v57 + 5);
  v206 = v99;
  v100 = *v57;
  v204[1] = *(v57 + 1);
  v204[0] = v100;
  if (sub_2262D66D8(v204) == 1)
  {
    v101 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v101 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  *(v23 + 624) = v101;
  strcpy((v23 + 632), "globalRecency");
  *(v23 + 646) = -4864;
  v102 = *(v57 + 7);
  v201 = *(v57 + 6);
  v202 = v102;
  v203 = v57[128];
  v103 = *(v57 + 3);
  v198[2] = *(v57 + 2);
  v198[3] = v103;
  v104 = *(v57 + 4);
  v200 = *(v57 + 5);
  v199 = v104;
  v105 = *v57;
  v198[1] = *(v57 + 1);
  v198[0] = v105;
  if (sub_2262D66D8(v198) == 1)
  {
    v106 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v106 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  *(v23 + 648) = v106;
  *(v23 + 656) = 0xD000000000000018;
  *(v23 + 664) = 0x8000000226358170;
  v107 = *(v57 + 7);
  v195 = *(v57 + 6);
  v196 = v107;
  v197 = v57[128];
  v108 = *(v57 + 3);
  v192[2] = *(v57 + 2);
  v192[3] = v108;
  v109 = *(v57 + 4);
  v194 = *(v57 + 5);
  v193 = v109;
  v110 = *v57;
  v192[1] = *(v57 + 1);
  v192[0] = v110;
  if (sub_2262D66D8(v192) == 1)
  {
    v111 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v111 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  *(v23 + 672) = v111;
  *(v23 + 680) = 0xD000000000000018;
  *(v23 + 688) = 0x8000000226358190;
  v112 = *(v57 + 7);
  v189 = *(v57 + 6);
  v190 = v112;
  v191 = v57[128];
  v113 = *(v57 + 3);
  v187[2] = *(v57 + 2);
  v187[3] = v113;
  v114 = *(v57 + 5);
  v187[4] = *(v57 + 4);
  v188 = v114;
  v115 = *(v57 + 1);
  v187[0] = *v57;
  v187[1] = v115;
  if (sub_2262D66D8(v187) == 1)
  {
    v116 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v116 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  *(v23 + 696) = v116;
  *(v23 + 704) = v167;
  *(v23 + 712) = 0x80000002263581B0;
  v117 = *(v57 + 7);
  v184 = *(v57 + 6);
  v185 = v117;
  v186 = v57[128];
  v118 = *(v57 + 3);
  v182[2] = *(v57 + 2);
  v182[3] = v118;
  v119 = *(v57 + 5);
  v182[4] = *(v57 + 4);
  v183 = v119;
  v120 = *(v57 + 1);
  v182[0] = *v57;
  v182[1] = v120;
  if (sub_2262D66D8(v182) == 1)
  {
    v121 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v121 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  *(v23 + 720) = v121;
  strcpy((v23 + 728), "embeddingScore");
  *(v23 + 743) = -18;
  v122 = *(v57 + 7);
  v179 = *(v57 + 6);
  v180 = v122;
  v181 = v57[128];
  v123 = *(v57 + 3);
  v178[2] = *(v57 + 2);
  v178[3] = v123;
  v124 = *(v57 + 5);
  v178[4] = *(v57 + 4);
  v178[5] = v124;
  v125 = *(v57 + 1);
  v178[0] = *v57;
  v178[1] = v125;
  if (sub_2262D66D8(v178) == 1)
  {
    v126 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v126 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  *(v23 + 744) = v126;
  *(v23 + 752) = v63;
  *(v23 + 760) = 0x80000002263581D0;
  v127 = *(v57 + 7);
  v175 = *(v57 + 6);
  v176 = v127;
  v177 = v57[128];
  v128 = *(v57 + 3);
  v174[2] = *(v57 + 2);
  v174[3] = v128;
  v129 = *(v57 + 5);
  v174[4] = *(v57 + 4);
  v174[5] = v129;
  v130 = *(v57 + 1);
  v174[0] = *v57;
  v174[1] = v130;
  if (sub_2262D66D8(v174) == 1)
  {
    v131 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v131 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  *(v23 + 768) = v131;
  *(v23 + 776) = v65;
  *(v23 + 784) = 0x8000000226357690;
  v132 = *(v57 + 7);
  v171[6] = *(v57 + 6);
  v172 = v132;
  v173 = v57[128];
  v133 = *(v57 + 3);
  v171[2] = *(v57 + 2);
  v171[3] = v133;
  v134 = *(v57 + 5);
  v171[4] = *(v57 + 4);
  v171[5] = v134;
  v135 = *(v57 + 1);
  v171[0] = *v57;
  v171[1] = v135;
  if (sub_2262D66D8(v171) == 1)
  {
    v136 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v136 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v55[146]];
  }

  *(v23 + 792) = v136;
  *(v23 + 800) = 0xD000000000000018;
  *(v23 + 808) = 0x8000000226357670;
  v137 = *(v57 + 7);
  v168[6] = *(v57 + 6);
  v169 = v137;
  v170 = v57[128];
  v138 = *(v57 + 3);
  v168[2] = *(v57 + 2);
  v168[3] = v138;
  v139 = *(v57 + 5);
  v168[4] = *(v57 + 4);
  v168[5] = v139;
  v140 = *(v57 + 1);
  v168[0] = *v57;
  v168[1] = v140;
  if (sub_2262D66D8(v168) == 1)
  {
    v141 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  }

  else
  {
    v141 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v55[146]];
  }

  *(v23 + 816) = v141;
  sub_2262FE32C(v23);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7935D0, &qword_226355E70);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v142 = sub_22635045C();
  sub_2262DA244();
  v143 = sub_2263503DC();

  AnalyticsSendEvent();

  v144 = v162;
  sub_22635000C();
  v145 = sub_22635003C();
  v146 = sub_22635072C();
  if (os_log_type_enabled(v145, v146))
  {
    v147 = swift_slowAlloc();
    *v147 = 0;
    _os_log_impl(&dword_2262B6000, v145, v146, "DataHarvester: Finished logging", v147, 2u);
    MEMORY[0x22AA7D570](v147, -1, -1);
  }

  return (*(v163 + 8))(v144, v164);
}

uint64_t sub_22634CC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x556E6F6973736573 && a2 == 0xEB00000000444955)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_226350C4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22634CCBC(uint64_t a1)
{
  v2 = sub_22634D30C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22634CCF8(uint64_t a1)
{
  v2 = sub_22634D30C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22634CD34()
{
  v1 = OBJC_IVAR____TtC26VisualActionPredictionCore13DataHarvester_sessionUUID;
  v2 = sub_22634EEFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DataHarvester()
{
  result = qword_27D793E30;
  if (!qword_27D793E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22634CE24()
{
  result = sub_22634EEFC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_22634CEB4(uint64_t *a1)
{
  v20 = *v1;
  v3 = sub_22634EEFC();
  v18 = *(v3 - 8);
  v4 = *(v18 + 64);
  MEMORY[0x28223BE20](v3);
  v19 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793E40, &qword_226355E60);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22634D30C();
  v12 = v21;
  sub_226350D1C();
  if (v12)
  {
    v14 = *(*v1 + 48);
    v15 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v18;
    sub_22634D360(&qword_27D793460);
    sub_226350B3C();
    (*(v7 + 8))(v10, v6);
    (*(v13 + 32))(v1 + OBJC_IVAR____TtC26VisualActionPredictionCore13DataHarvester_sessionUUID, v19, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t *sub_22634D140@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = sub_22634CEB4(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_22634D198(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793E50, &qword_226355E68);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22634D30C();
  sub_226350D2C();
  sub_22634EEFC();
  sub_22634D360(&qword_27D793498);
  sub_226350BEC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_22634D30C()
{
  result = qword_27D793E48;
  if (!qword_27D793E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793E48);
  }

  return result;
}

uint64_t sub_22634D360(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22634EEFC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22634D3A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792FE0, &unk_226351C10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22634D420()
{
  result = qword_27D793E58;
  if (!qword_27D793E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793E58);
  }

  return result;
}

unint64_t sub_22634D478()
{
  result = qword_27D793E60;
  if (!qword_27D793E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793E60);
  }

  return result;
}

unint64_t sub_22634D4D0()
{
  result = qword_27D793E68;
  if (!qword_27D793E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D793E68);
  }

  return result;
}

uint64_t type metadata accessor for AppProtectionMonitor()
{
  result = qword_28137E6F0;
  if (!qword_28137E6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22634D6A0(unint64_t a1)
{
  v32 = sub_22634FD8C();
  v29 = *(v32 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793B28, &qword_226354F08);
  v28 = *(v30 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v27 = &v25 - v6;
  if (!(a1 >> 62))
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_22:
    v9 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v7 = sub_226350A6C();
  if (!v7)
  {
    goto LABEL_22;
  }

LABEL_3:
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  do
  {
    v10 = v8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AA7CA30](v10, a1);
      }

      else
      {
        if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v11 = *(a1 + 8 * v10 + 32);
      }

      v12 = v11;
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        break;
      }

      ++v10;
      if (v8 == v7)
      {
        goto LABEL_23;
      }
    }

    v26 = v1;
    v14 = [v13 bundleIdentifier];
    v15 = sub_22635046C();
    v25 = v16;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_2262DCFC4(0, *(v9 + 2) + 1, 1, v9);
    }

    v18 = *(v9 + 2);
    v17 = *(v9 + 3);
    if (v18 >= v17 >> 1)
    {
      v9 = sub_2262DCFC4((v17 > 1), v18 + 1, 1, v9);
    }

    *(v9 + 2) = v18 + 1;
    v19 = &v9[16 * v18];
    v20 = v25;
    v1 = v26;
    *(v19 + 4) = v15;
    *(v19 + 5) = v20;
  }

  while (v8 != v7);
LABEL_23:
  v22 = v31;
  v21 = v32;
  *v31 = v9;
  (*(v29 + 104))(v22, *MEMORY[0x277D78CB0], v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D793B30, &unk_226354F10);
  v23 = v27;
  sub_22635067C();
  return (*(v28 + 8))(v23, v30);
}

uint64_t sub_22634D9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_226316434;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_22634DAF0(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for VisualAction(0);
  v3[9] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v6 = sub_22635004C();
  v3[15] = v6;
  v7 = *(v6 - 8);
  v3[16] = v7;
  v8 = *(v7 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v9 = sub_22634FF9C();
  v3[20] = v9;
  v10 = *(v9 - 8);
  v3[21] = v10;
  v11 = *(v10 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22634DCB8, v2, 0);
}

uint64_t sub_22634DCB8()
{
  v1 = v0[6];
  v2 = *v1;
  v0[27] = *v1;
  v3 = v1[1];
  v0[28] = v3;
  if (v2 == sub_22634FFAC() && v3 == v4)
  {
  }

  else
  {
    v6 = sub_226350C4C();

    if ((v6 & 1) == 0)
    {
      v7 = *(v0[8] + 112);
      v0[29] = v7;

      return MEMORY[0x2822009F8](sub_22634DE68, v7, 0);
    }
  }

  v9 = v0[25];
  v8 = v0[26];
  v11 = v0[23];
  v10 = v0[24];
  v12 = v0[22];
  v14 = v0[18];
  v13 = v0[19];
  v15 = v0[17];
  v17 = v0[13];
  v16 = v0[14];
  v20 = v0[12];
  v21 = v0[11];
  v22 = v0[10];

  v18 = v0[1];

  return v18(1);
}

uint64_t sub_22634DE68()
{
  v1 = v0[29];
  sub_22632F498(v0[27], v0[28], v0[25]);
  v0[30] = 0;
  v2 = v0[8];

  return MEMORY[0x2822009F8](sub_22634DEFC, v2, 0);
}

uint64_t sub_22634DEFC()
{
  v103 = v0;
  (*(v0[21] + 32))(v0[26], v0[25], v0[20]);
  v1 = sub_22634FE4C();
  v2 = v0[26];
  if (v1)
  {
    if (sub_22634FE3C() & 1) == 0 || (v3 = v0[8] + OBJC_IVAR____TtC26VisualActionPredictionCore24ActionEligibilityChecker_featureConfiguration, (sub_22634FCCC()) || (v4 = v0[7], (sub_22634F5CC()))
    {
      (*(v0[21] + 8))(v0[26], v0[20]);
      v99 = 1;
      goto LABEL_10;
    }

    v50 = v0[26];
    v51 = v0[24];
    v52 = v0[20];
    v53 = v0[21];
    v54 = v0[19];
    v55 = v0[14];
    v56 = v0[6];
    sub_22634FFBC();
    sub_22634EAC4(v56, v55);
    v57 = *(v53 + 16);
    v57(v51, v50, v52);
    v58 = sub_22635003C();
    v59 = sub_22635072C();
    v60 = os_log_type_enabled(v58, v59);
    v101 = v0[26];
    v61 = v0[24];
    if (v60)
    {
      v87 = v0[21];
      v83 = v0[23];
      v85 = v0[20];
      v92 = v0[16];
      v95 = v0[15];
      v98 = v0[19];
      v62 = v0[13];
      v63 = v0[14];
      v64 = v0[9];
      v65 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v102 = v89;
      *v65 = 136315394;
      sub_22634EAC4(v63, v62);
      v66 = sub_2263504CC();
      v68 = v67;
      sub_22634EB28(v63);
      v69 = sub_226345004(v66, v68, &v102);

      *(v65 + 4) = v69;
      *(v65 + 12) = 2080;
      v57(v83, v61, v85);
      v70 = sub_2263504CC();
      v72 = v71;
      v73 = *(v87 + 8);
      v73(v61, v85);
      v74 = sub_226345004(v70, v72, &v102);

      *(v65 + 14) = v74;
      _os_log_impl(&dword_2262B6000, v58, v59, "Excluding candidate action %s because app %s is internal.", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v89, -1, -1);
      MEMORY[0x22AA7D570](v65, -1, -1);

      (*(v92 + 8))(v98, v95);
      v73(v101, v85);
    }

    else
    {
      v75 = v0[20];
      v76 = v0[21];
      v77 = v0[19];
      v78 = v0[15];
      v79 = v0[16];
      v80 = v0[14];

      v81 = *(v76 + 8);
      v81(v61, v75);
      sub_22634EB28(v80);
      (*(v79 + 8))(v77, v78);
      v81(v101, v75);
    }
  }

  else
  {
    v6 = v0[21];
    v5 = v0[22];
    v7 = v0[20];
    v8 = v0[18];
    v9 = v0[12];
    v10 = v0[6];
    sub_22634FFBC();
    sub_22634EAC4(v10, v9);
    v11 = *(v6 + 16);
    v11(v5, v2, v7);
    v12 = sub_22635003C();
    v13 = sub_22635072C();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[26];
    if (v14)
    {
      v16 = v0[23];
      v84 = v0[22];
      v86 = v0[21];
      v82 = v0[20];
      v90 = v0[16];
      v93 = v0[15];
      v96 = v0[18];
      v17 = v0[12];
      v18 = v0[13];
      v100 = v0[26];
      v19 = v0[9];
      v20 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v102 = v88;
      *v20 = 136315394;
      sub_22634EAC4(v17, v18);
      v21 = sub_2263504CC();
      v23 = v22;
      sub_22634EB28(v17);
      v24 = sub_226345004(v21, v23, &v102);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v11(v16, v84, v82);
      v25 = sub_2263504CC();
      v27 = v26;
      v28 = *(v86 + 8);
      v28(v84, v82);
      v29 = sub_226345004(v25, v27, &v102);

      *(v20 + 14) = v29;
      _os_log_impl(&dword_2262B6000, v12, v13, "Excluding action %s because app %s is not launchable.", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA7D570](v88, -1, -1);
      MEMORY[0x22AA7D570](v20, -1, -1);

      (*(v90 + 8))(v96, v93);
      v28(v100, v82);
    }

    else
    {
      v31 = v0[21];
      v30 = v0[22];
      v32 = v0[20];
      v33 = v0[18];
      v34 = v0[15];
      v35 = v0[16];
      v36 = v0[12];

      v37 = *(v31 + 8);
      v37(v30, v32);
      sub_22634EB28(v36);
      (*(v35 + 8))(v33, v34);
      v37(v15, v32);
    }
  }

  v99 = 0;
LABEL_10:
  v39 = v0[25];
  v38 = v0[26];
  v41 = v0[23];
  v40 = v0[24];
  v42 = v0[22];
  v44 = v0[18];
  v43 = v0[19];
  v45 = v0[17];
  v46 = v0[13];
  v47 = v0[14];
  v91 = v0[12];
  v94 = v0[11];
  v97 = v0[10];

  v48 = v0[1];

  return v48(v99);
}

uint64_t sub_22634E588()
{
  v54 = v0;
  v1 = v0[30];
  v2 = v0[17];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[6];
  sub_22634FFBC();
  sub_22634EAC4(v5, v3);
  sub_22634EAC4(v5, v4);
  v6 = v1;
  v7 = sub_22635003C();
  v8 = sub_22635073C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[30];
    v47 = v0[16];
    v49 = v0[15];
    v51 = v0[17];
    v10 = v0[13];
    v12 = v0[10];
    v11 = v0[11];
    v13 = v0[9];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v53 = v15;
    *v14 = 136315650;
    sub_22634EAC4(v11, v10);
    v16 = sub_2263504CC();
    v18 = v17;
    sub_22634EB28(v11);
    v19 = sub_226345004(v16, v18, &v53);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v21 = v0[2];
    v20 = v0[3];
    v22 = v0[4];
    v23 = sub_226350C9C();
    v25 = sub_226345004(v23, v24, &v53);

    *(v14 + 14) = v25;
    *(v14 + 22) = 2080;
    v26 = *v12;
    v27 = v12[1];

    sub_22634EB28(v12);
    v28 = sub_226345004(v26, v27, &v53);

    *(v14 + 24) = v28;
    _os_log_impl(&dword_2262B6000, v7, v8, "Excluding action %s because an error %s occured while retrieving app record for its bundle identifier '%s'.", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA7D570](v15, -1, -1);
    MEMORY[0x22AA7D570](v14, -1, -1);

    (*(v47 + 8))(v51, v49);
  }

  else
  {
    v29 = v0[30];
    v31 = v0[16];
    v30 = v0[17];
    v32 = v0[15];
    v34 = v0[10];
    v33 = v0[11];

    sub_22634EB28(v34);
    sub_22634EB28(v33);
    (*(v31 + 8))(v30, v32);
  }

  v36 = v0[25];
  v35 = v0[26];
  v38 = v0[23];
  v37 = v0[24];
  v39 = v0[22];
  v41 = v0[18];
  v40 = v0[19];
  v42 = v0[17];
  v44 = v0[13];
  v43 = v0[14];
  v48 = v0[12];
  v50 = v0[11];
  v52 = v0[10];

  v45 = v0[1];

  return v45(0);
}

uint64_t sub_22634E8C8()
{
  v1 = *(v0 + 112);

  v2 = OBJC_IVAR____TtC26VisualActionPredictionCore24ActionEligibilityChecker_featureConfiguration;
  v3 = sub_22634FCDC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t type metadata accessor for ActionEligibilityChecker()
{
  result = qword_28137F330;
  if (!qword_28137F330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22634E99C()
{
  result = sub_22634FCDC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_22634EA44(uint64_t a1)
{
  result = sub_22634EA6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22634EA6C()
{
  result = qword_28137F350;
  if (!qword_28137F350)
  {
    type metadata accessor for ActionEligibilityChecker();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28137F350);
  }

  return result;
}

uint64_t sub_22634EAC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22634EB28(uint64_t a1)
{
  v2 = type metadata accessor for VisualAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22634EB84()
{
  sub_22634FA3C();
  v0 = sub_22634FA2C();
  v1 = sub_22634FE0C();
  if (!*(v0 + 16))
  {

    goto LABEL_8;
  }

  v3 = sub_22633941C(v1, v2);
  v5 = v4;

  if ((v5 & 1) == 0)
  {
LABEL_8:
    v12 = 0;
LABEL_16:

    return v12;
  }

  v6 = *(*(v0 + 56) + 8 * v3);

  v7 = sub_22634F46C();
  if (*(v6 + 16))
  {
    v9 = sub_22633941C(v7, v8);
    v11 = v10;

    if (v11)
    {
      v12 = *(*(v6 + 56) + 8 * v9);
      if (v12 <= 3)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
  }

  if (!*(v6 + 16) || (v13 = sub_22633941C(0x746C7561666564, 0xE700000000000000), (v14 & 1) == 0))
  {
    v12 = 0;
    goto LABEL_16;
  }

  v12 = *(*(v6 + 56) + 8 * v13);

  if (v12 >= 4)
  {
    return 0;
  }

  else
  {
    return v12;
  }
}