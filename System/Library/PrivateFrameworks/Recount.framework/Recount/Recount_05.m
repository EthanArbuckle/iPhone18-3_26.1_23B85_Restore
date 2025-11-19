uint64_t CounterSample.init(time:cpuKind:counterValues:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  *a4 = result;
  *(a4 + 8) = v4;
  *(a4 + 16) = a3;
  return result;
}

uint64_t - infix(_:_:)@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *result - *a2;
  if (*result < *a2)
  {
    __break(1u);
  }

  else
  {
    v5 = a2[2];
    v6 = *(result + 16);
    v7 = *(result + 8);

    v8 = sub_261A7EE80(v6, v5);

    *a3 = v4;
    *(a3 + 8) = v7;
    *(a3 + 16) = v8;
  }

  return result;
}

uint64_t sub_261A7EE80(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v27 = MEMORY[0x277D84F90];
  sub_261A3F3C0(0, v6, 0);
  result = v27;
  v26 = v4;
  v24 = a1;
  v25 = a2;
  if (v6)
  {
    v8 = (a1 + 32);
    v9 = (a2 + 32);
    v10 = v6;
    v11 = v5;
    v12 = v5;
    while (v4)
    {
      if (!v11)
      {
        goto LABEL_23;
      }

      v13 = *v8;
      v14 = *v9;
      v28 = result;
      v16 = *(result + 16);
      v15 = *(result + 24);
      if (v16 >= v15 >> 1)
      {
        v23 = v12;
        sub_261A3F3C0((v15 > 1), v16 + 1, 1);
        v12 = v23;
        result = v28;
      }

      --v11;
      *(result + 16) = v16 + 1;
      *(result + 8 * v16 + 32) = v13 - v14;
      --v4;
      ++v9;
      ++v8;
      if (!--v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = v5;
LABEL_13:
  if (v26 > v12)
  {
    while (v6 < v26)
    {
      v17 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_25;
      }

      if (v12 != v6)
      {
        if (v6 >= v12)
        {
          goto LABEL_26;
        }

        v18 = *(v24 + 32 + 8 * v6);
        v19 = *(v25 + 32 + 8 * v6);
        v29 = result;
        v21 = *(result + 16);
        v20 = *(result + 24);
        if (v21 >= v20 >> 1)
        {
          v22 = v12;
          sub_261A3F3C0((v20 > 1), v21 + 1, 1);
          v12 = v22;
          result = v29;
        }

        *(result + 16) = v21 + 1;
        *(result + 8 * v21 + 32) = v18 - v19;
        ++v6;
        if (v17 != v26)
        {
          continue;
        }
      }

      return result;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_261A7F07C()
{
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A7F15C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_261A81300(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void *sub_261A7F260(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_261A65C08(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBCB8, &qword_261A8BFC8);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_261A7F368(uint64_t result)
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

  result = sub_261A6639C(result, v12, 1, v3);
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

  memcpy((v3 + 4 * v8 + 32), (v6 + 32), 4 * v2);

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

uint64_t sub_261A7F454(uint64_t result)
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

  result = sub_261A66820(result, v12, 1, v3);
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

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

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

void *sub_261A7F540(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_261A660EC(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB088, &unk_261A87D30);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_261A7F648(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_261A67388(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_261A7F740(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_261A67244(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB0B8, &unk_261A8C900);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_261A7F848(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v4 + 3) >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_261A66A68(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = *(v4 + 3) >> 1;
  }

  v12 = *(v4 + 2);
  v13 = v10 - v12;
  result = sub_261A7BC64(&v43, &v4[16 * v12 + 32], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v16 = result;
  if (result)
  {
    v17 = *(v4 + 2);
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
LABEL_19:
      v22 = (v15 + 64) >> 6;
      if (v22 <= v2 + 1)
      {
        v23 = v2 + 1;
      }

      else
      {
        v23 = (v15 + 64) >> 6;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v46 = v24;
          v47 = 0;
          goto LABEL_13;
        }

        v26 = *(v14 + 8 * v25);
        ++v2;
      }

      while (!v26);
      v40 = v15;
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v2 = v25;
      goto LABEL_27;
    }

    *(v4 + 2) = v19;
  }

  result = v43;
  if (v16 != v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v13 = *(v4 + 2);
  v14 = v44;
  v15 = v45;
  v2 = v46;
  v42 = v44;
  if (!v47)
  {
    goto LABEL_19;
  }

  v20 = (v47 - 1) & v47;
  v21 = __clz(__rbit64(v47)) | (v46 << 6);
  v40 = v45;
  v22 = (v45 + 64) >> 6;
LABEL_27:
  v41 = result;
  v27 = (*(result + 48) + 16 * v21);
  v29 = *v27;
  v28 = v27[1];

  v30 = v42;
LABEL_29:
  while (1)
  {
    v31 = *(v4 + 3);
    v32 = v31 >> 1;
    if ((v31 >> 1) < v13 + 1)
    {
      break;
    }

    if (v13 < v32)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v13;
  }

  v38 = sub_261A66A68((v31 > 1), v13 + 1, 1, v4);
  v30 = v42;
  v4 = v38;
  v32 = *(v38 + 3) >> 1;
  if (v13 >= v32)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v33 = &v4[16 * v13 + 32];
    *v33 = v29;
    *(v33 + 1) = v28;
    ++v13;
    if (!v20)
    {
      break;
    }

    result = v41;
LABEL_38:
    v36 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v37 = (*(result + 48) + ((v2 << 10) | (16 * v36)));
    v29 = *v37;
    v28 = v37[1];

    v30 = v42;
    if (v13 == v32)
    {
      v13 = v32;
      *(v4 + 2) = v32;
      goto LABEL_29;
    }
  }

  v34 = v2;
  result = v41;
  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v35 >= v22)
    {
      break;
    }

    v20 = *(v30 + 8 * v35);
    ++v34;
    if (v20)
    {
      v2 = v35;
      goto LABEL_38;
    }
  }

  if (v22 <= v2 + 1)
  {
    v39 = v2 + 1;
  }

  else
  {
    v39 = v22;
  }

  v45 = v40;
  v46 = v39 - 1;
  v47 = 0;
  *(v4 + 2) = v13;
LABEL_13:
  result = sub_261A70290();
  *v1 = v4;
  return result;
}

uint64_t sub_261A7FB04(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_261A676B8(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_261A85394();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_261A7FC30(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_261A67890(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_261A7FD2C()
{
  *v0;
  *v0;
  *v0;
  sub_261A85554();
}

uint64_t sub_261A7FDFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_261A82228();
  *a2 = result;
  return result;
}

void sub_261A7FE2C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7235949;
  v5 = 0xE400000000000000;
  v6 = 1818846563;
  v7 = 0x646E756F72;
  if (v2 != 4)
  {
    v7 = 0x636E757274;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE500000000000000;
  }

  v8 = 0xE300000000000000;
  v9 = 7889261;
  if (v2 != 1)
  {
    v9 = 0x726F6F6C66;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_261A7FEE4(uint64_t *a1, uint64_t a2, int64_t a3, unint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 1u)
  {
    if (!a6)
    {
      v10 = *a1;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
LABEL_4:
        v12 = *(v10 + 16);
        v13 = *(v10 + 24);
        v14 = v12 + 1;
        if (v12 >= v13 >> 1)
        {
          v36 = v10;
          v37 = *(v10 + 16);
          result = sub_261A66820((v13 > 1), v12 + 1, 1, v36);
          v12 = v37;
          v10 = result;
        }

        *(v10 + 16) = v14;
        *(v10 + 8 * v12 + 32) = a3;
        goto LABEL_73;
      }

LABEL_79:
      result = sub_261A66820(0, *(v10 + 16) + 1, 1, v10);
      v10 = result;
      goto LABEL_4;
    }

    sub_261A7739C();
    swift_allocError();
    *v17 = a3;
    *(v17 + 8) = a4;
    *(v17 + 16) = 0;

    return swift_willThrow();
  }

  if (a6 == 2)
  {
    v10 = *(a2 + 16);
    if (v10 <= a5)
    {
      sub_261A7739C();
      swift_allocError();
      *v26 = v10;
      *(v26 + 8) = a5;
      *(v26 + 16) = 1;
      return swift_willThrow();
    }

    if ((a5 & 0x8000000000000000) == 0)
    {
      v6 = *(a2 + 8 * a5 + 32);
      v10 = *a1;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
LABEL_11:
        v16 = *(v10 + 16);
        v15 = *(v10 + 24);
        if (v16 >= v15 >> 1)
        {
          result = sub_261A66820((v15 > 1), v16 + 1, 1, v10);
          v10 = result;
        }

        *(v10 + 16) = v16 + 1;
        *(v10 + 8 * v16 + 32) = v6;
        goto LABEL_73;
      }

LABEL_84:
      result = sub_261A66820(0, *(v10 + 16) + 1, 1, v10);
      v10 = result;
      goto LABEL_11;
    }

LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v10 = *a1;
  if (*(*a1 + 16))
  {
    v18 = *a1;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v19 = *(v10 + 16);
      if (v19)
      {
        goto LABEL_18;
      }

LABEL_82:
      __break(1u);
      goto LABEL_83;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_261A67BA8(v10);
  v10 = result;
  v19 = *(result + 16);
  if (!v19)
  {
    goto LABEL_82;
  }

LABEL_18:
  v20 = v19 - 1;
  v21 = v10 + 32;
  v22 = *(v10 + 32 + 8 * v20);
  *(v10 + 16) = v20;
  *a1 = v10;
  if (a3 <= 5u)
  {
    if (a3 > 2u)
    {
      if (a3 != 3)
      {
        if (a3 != 4)
        {
          if (a4 == 1)
          {
            a4 = *(v10 + 16);
            v33 = *(v10 + 24);
            a3 = a4 + 1;
            if (a4 >= v33 >> 1)
            {
              v42 = v22;
              result = sub_261A66820((v33 > 1), a4 + 1, 1, v10);
              v22 = v42;
              v10 = result;
            }

            v22 = trunc(v22);
            goto LABEL_72;
          }

          goto LABEL_93;
        }

        if (a4 == 1)
        {
          a4 = *(v10 + 16);
          v28 = *(v10 + 24);
          a3 = a4 + 1;
          if (a4 >= v28 >> 1)
          {
            v40 = v22;
            result = sub_261A66820((v28 > 1), a4 + 1, 1, v10);
            v22 = v40;
            v10 = result;
          }

          v22 = round(v22);
          goto LABEL_72;
        }

        goto LABEL_90;
      }

      if (a4 == 1)
      {
        a4 = *(v10 + 16);
        v21 = *(v10 + 24);
        a3 = a4 + 1;
        if (a4 < v21 >> 1)
        {
LABEL_56:
          v22 = ceil(v22);
LABEL_72:
          *(v10 + 16) = a3;
          *(v10 + 8 * a4 + 32) = v22;
          goto LABEL_73;
        }

LABEL_95:
        v39 = v22;
        result = sub_261A66820((v21 > 1), a3, 1, v10);
        v22 = v39;
        v10 = result;
        goto LABEL_56;
      }

      goto LABEL_87;
    }

    if (a3)
    {
      if (a3 != 1)
      {
        if (a4 == 1)
        {
          a4 = *(v10 + 16);
          v32 = *(v10 + 24);
          a3 = a4 + 1;
          if (a4 >= v32 >> 1)
          {
            v41 = v22;
            result = sub_261A66820((v32 > 1), a4 + 1, 1, v10);
            v22 = v41;
            v10 = result;
          }

          v22 = floor(v22);
          goto LABEL_72;
        }

        goto LABEL_92;
      }

      v21 = a4 - 1;
      if (a4 >= 1)
      {
        v23 = *(v10 + 16);
        if (a4 != 1)
        {
          while (v21)
          {
            if (!v23)
            {
              goto LABEL_78;
            }

            v24 = *(v10 + 24 + 8 * v23);
            a4 = v23 - 1;
            *(v10 + 16) = v23 - 1;
            if (v22 <= v24)
            {
              v22 = v24;
            }

            --v23;
            if (!--v21)
            {
              goto LABEL_70;
            }
          }

LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

LABEL_69:
        a4 = v23;
LABEL_70:
        v35 = *(v10 + 24);
        a3 = a4 + 1;
        if (a4 >= v35 >> 1)
        {
          v38 = v22;
          result = sub_261A66820((v35 > 1), a4 + 1, 1, v10);
          v22 = v38;
          v10 = result;
        }

        goto LABEL_72;
      }

      goto LABEL_89;
    }

    v21 = a4 - 1;
    if (a4 >= 1)
    {
      v23 = *(v10 + 16);
      if (a4 != 1)
      {
        while (v21)
        {
          if (!v23)
          {
            goto LABEL_77;
          }

          v30 = *(v10 + 24 + 8 * v23);
          a4 = v23 - 1;
          *(v10 + 16) = v23 - 1;
          if (v30 < v22)
          {
            v22 = v30;
          }

          --v23;
          if (!--v21)
          {
            goto LABEL_70;
          }
        }

        __break(1u);
        goto LABEL_76;
      }

      goto LABEL_69;
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (a3 > 8u)
  {
    if (a3 == 9)
    {
      v31 = *(v10 + 16);
      if (!v31)
      {
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      *(v21 + 8 * v31 - 8) = *(v21 + 8 * v31 - 8) - v22;
    }

    else if (a3 == 10)
    {
      v29 = *(v10 + 16);
      if (!v29)
      {
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

      *(v21 + 8 * v29 - 8) = v22 * *(v21 + 8 * v29 - 8);
    }

    else
    {
      v34 = *(v10 + 16);
      if (!v34)
      {
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      *(v21 + 8 * v34 - 8) = *(v21 + 8 * v34 - 8) / v22;
    }
  }

  else
  {
    if (a3 - 6 < 2)
    {
      return result;
    }

    v27 = *(v10 + 16);
    if (!v27)
    {
      __break(1u);
      goto LABEL_86;
    }

    *(v21 + 8 * v27 - 8) = v22 + *(v21 + 8 * v27 - 8);
  }

LABEL_73:
  *a1 = v10;
  return result;
}

uint64_t sub_261A803F0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
    if (!a5)
    {
      v19 = 0;
      sub_261A85704();
      return v19;
    }

    v19 = 2238582;
    v8 = a2;
    v9 = a3;
    goto LABEL_10;
  }

  if (a5 == 2)
  {
    if (!result)
    {
      v19 = 2238582;
      MEMORY[0x2667168A0](a2, a3);
      MEMORY[0x2667168A0](2108450, 0xE300000000000000);
      v18 = sub_261A85B94();
      MEMORY[0x2667168A0](v18);

      v10 = 41;
      v11 = 0xE100000000000000;
      goto LABEL_11;
    }

    v19 = 0;
    if ((a4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(result + 16) > a4)
    {
      v7 = *(result + 8 * a4 + 32);
      sub_261A85704();
      MEMORY[0x2667168A0](8744, 0xE200000000000000);
      v8 = a2;
      v9 = a3;
LABEL_10:
      MEMORY[0x2667168A0](v8, v9);
      v10 = 10530;
      v11 = 0xE200000000000000;
LABEL_11:
      MEMORY[0x2667168A0](v10, v11);
      return v19;
    }

    __break(1u);
  }

  else
  {
    if (a2 <= 5u)
    {
      v12 = 7235949;
      v13 = 1818846563;
      v14 = 0x646E756F72;
      if (a2 != 4)
      {
        v14 = 0x636E757274;
      }

      if (a2 != 3)
      {
        v13 = v14;
      }

      v15 = 7889261;
      if (a2 != 1)
      {
        v15 = 0x726F6F6C66;
      }

      if (a2)
      {
        v12 = v15;
      }

      if (a2 <= 2u)
      {
        v16 = v12;
      }

      else
      {
        v16 = v13;
      }

      v19 = v16;

      MEMORY[0x2667168A0](40, 0xE100000000000000);

      return v19;
    }

    if (a2 > 8u)
    {
      if (a2 == 11)
      {
        return 47;
      }

      else if (a2 == 10)
      {
        return 42;
      }

      else
      {
        return 45;
      }
    }

    else
    {
      v17 = 43;
      if (a2 == 7)
      {
        v17 = 10285;
      }

      if (a2 == 6)
      {
        return 40;
      }

      else
      {
        return v17;
      }
    }
  }

  return result;
}

unint64_t sub_261A806B0(uint64_t a1, unint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 3u)
  {
    if (a4 > 1u)
    {
      if (a4 != 2)
      {
        v25 = a3;
        v26 = a2;
        sub_261A858C4();

        v32 = 14897;
        v27 = sub_261A85B94();
        MEMORY[0x2667168A0](v27);

        v28 = 0xD000000000000021;
        v29 = 0x8000000261A8EF90;
        goto LABEL_35;
      }

      sub_261A858C4();

      v32 = 14897;
      v19 = sub_261A85B94();
      MEMORY[0x2667168A0](v19);

      v17 = "sion is invalid: ";
      v20 = 0xD00000000000001ALL;
    }

    else
    {
      if (a4)
      {
        sub_261A858C4();

        v32 = 14897;
        v24 = sub_261A85B94();
        MEMORY[0x2667168A0](v24);

        v17 = ": operator missing operand";
        v18 = 9;
      }

      else
      {
        sub_261A858C4();

        v32 = 14897;
        v16 = sub_261A85B94();
        MEMORY[0x2667168A0](v16);

        v17 = ": unbalanced left parenthesis";
        v18 = 10;
      }

      v20 = v18 | 0xD000000000000014;
    }

    v22 = v17 | 0x8000000000000000;
    goto LABEL_36;
  }

  if (a4 <= 5u)
  {
    if (a4 == 4)
    {
      sub_261A858C4();

      v32 = 14897;
      v21 = sub_261A85B94();
      MEMORY[0x2667168A0](v21);

      v20 = 0x206172747865203ALL;
      v22 = 0xEF646E617265706FLL;
LABEL_36:
      MEMORY[0x2667168A0](v20, v22);
      return v32;
    }

    v25 = a3;
    v26 = a2;
    sub_261A858C4();

    v32 = 14897;
    v31 = sub_261A85B94();
    MEMORY[0x2667168A0](v31);

    v29 = 0x8000000261A8EF70;
    v28 = 0xD000000000000014;
LABEL_35:
    MEMORY[0x2667168A0](v28, v29);
    v20 = v26;
    v22 = v25;
    goto LABEL_36;
  }

  if (a4 == 6)
  {
    sub_261A858C4();

    v32 = 14897;
    v23 = sub_261A85B94();
    MEMORY[0x2667168A0](v23);

    v20 = 0x207961727473203ALL;
    v22 = 0xED0000616D6D6F63;
    goto LABEL_36;
  }

  if (a4 != 7)
  {
    return 0xD00000000000003FLL;
  }

  v32 = 0;
  v4 = a2;
  sub_261A858C4();
  MEMORY[0x2667168A0](14897, 0xE200000000000000);
  v5 = sub_261A85B94();
  MEMORY[0x2667168A0](v5);

  MEMORY[0x2667168A0](0x6974636E7566203ALL, 0xEB00000000206E6FLL);
  v6 = 0xE300000000000000;
  v7 = 7235949;
  v8 = 0xE400000000000000;
  v9 = 1818846563;
  v10 = 0x646E756F72;
  if (v4 != 4)
  {
    v10 = 0x636E757274;
  }

  if (v4 != 3)
  {
    v9 = v10;
    v8 = 0xE500000000000000;
  }

  v11 = 0xE300000000000000;
  v12 = 7889261;
  if (v4 != 1)
  {
    v12 = 0x726F6F6C66;
    v11 = 0xE500000000000000;
  }

  if (v4)
  {
    v7 = v12;
    v6 = v11;
  }

  if (v4 <= 2u)
  {
    v13 = v7;
  }

  else
  {
    v13 = v9;
  }

  if (v4 <= 2u)
  {
    v14 = v6;
  }

  else
  {
    v14 = v8;
  }

  MEMORY[0x2667168A0](v13, v14);

  MEMORY[0x2667168A0](0xD000000000000026, 0x8000000261A8EF40);
  v15 = sub_261A85B94();
  MEMORY[0x2667168A0](v15);

  return v32;
}

uint64_t sub_261A80C98(uint64_t a1, uint64_t *a2)
{
  v3 = sub_261A85214();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_261A851C4();
}

uint64_t sub_261A80CF8()
{
  v0 = sub_261A85214();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v20 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v20 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v20 - v13;
  __swift_allocate_value_buffer(v12, qword_27FED7D10);
  v20[1] = __swift_project_value_buffer(v0, qword_27FED7D10);
  sub_261A851D4();
  if (qword_27FECAD78 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v0, qword_27FED7CE0);
  v16 = v1[2];
  v16(v5, v15, v0);
  sub_261A851E4();
  v17 = v1[1];
  v17(v5, v0);
  v17(v8, v0);
  if (qword_27FECAD80 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v0, qword_27FED7CF8);
  v16(v8, v18, v0);
  sub_261A851E4();
  v17(v8, v0);
  v17(v11, v0);
  sub_261A851C4();
  sub_261A851E4();
  v17(v11, v0);
  return (v17)(v14, v0);
}

unint64_t sub_261A80FB0(unint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_261A858C4();

    v7 = 0xD000000000000013;
    v4 = sub_261A85B94();
    MEMORY[0x2667168A0](v4);

    MEMORY[0x2667168A0](0xD000000000000015, 0x8000000261A8EF00);
    v5 = sub_261A85B94();
    MEMORY[0x2667168A0](v5);
  }

  else
  {
    sub_261A858C4();

    v7 = a1;
    MEMORY[0x2667168A0](0xD000000000000012, 0x8000000261A8EF20);
  }

  return v7;
}

uint64_t sub_261A81104@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A85CA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v6 = sub_261A85BB4();
  v8 = v7;
  v9 = sub_261A698B4(MEMORY[0x277D84F90]);
  v10 = sub_261A82274(v6, v8, v9);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  __swift_destroy_boxed_opaque_existential_1(v18);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v10;
  a2[1] = v12;
  a2[2] = v14;
  a2[3] = v16;
  return result;
}

uint64_t sub_261A81218(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A85CC4();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_261A85BC4();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

unint64_t sub_261A812B8(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_261A812E0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_261A81300(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_261A85C44();
  sub_261A85554();
  v9 = sub_261A85C84();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_261A85BA4() & 1) != 0)
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

    sub_261A816B0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_261A81450(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBDC8, &qword_261A8C8F0);
  result = sub_261A85884();
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
      sub_261A85C44();
      sub_261A85554();
      result = sub_261A85C84();
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

uint64_t sub_261A816B0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_261A81450(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_261A81830();
      goto LABEL_16;
    }

    sub_261A8198C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_261A85C44();
  sub_261A85554();
  result = sub_261A85C84();
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

      result = sub_261A85BA4();
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
  result = sub_261A85BD4();
  __break(1u);
  return result;
}

void *sub_261A81830()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBDC8, &qword_261A8C8F0);
  v2 = *v0;
  v3 = sub_261A85874();
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

uint64_t sub_261A8198C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBDC8, &qword_261A8C8F0);
  result = sub_261A85884();
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
      sub_261A85C44();

      sub_261A85554();
      result = sub_261A85C84();
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

BOOL sub_261A81BC4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_261A858B4();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_261A81CBC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4 <= 3u)
  {
    if (a4 <= 1u)
    {
      if (a4)
      {
        if (a8 != 1)
        {
          return 0;
        }
      }

      else if (a8)
      {
        return 0;
      }

      return a1 == a5;
    }

    if (a4 == 2)
    {
      if (a8 != 2)
      {
        return 0;
      }

      return a1 == a5;
    }

    if (a8 != 3 || a1 != a5)
    {
      return 0;
    }

    if (a2 == a6 && a3 == a7)
    {
      return 1;
    }
  }

  else
  {
    if (a4 > 5u)
    {
      if (a4 != 6)
      {
        if (a4 == 7)
        {
          if (a8 == 7 && a1 == a5)
          {
            v8 = 7235949;
            if (a2 > 2u)
            {
              if (a2 == 3)
              {
                v12 = 0xE400000000000000;
                v11 = 1818846563;
              }

              else
              {
                v12 = 0xE500000000000000;
                if (a2 == 4)
                {
                  v11 = 0x646E756F72;
                }

                else
                {
                  v11 = 0x636E757274;
                }
              }
            }

            else
            {
              v9 = 0xE300000000000000;
              v10 = 7889261;
              if (a2 != 1)
              {
                v10 = 0x726F6F6C66;
                v9 = 0xE500000000000000;
              }

              if (a2)
              {
                v11 = v10;
              }

              else
              {
                v11 = 7235949;
              }

              if (a2)
              {
                v12 = v9;
              }

              else
              {
                v12 = 0xE300000000000000;
              }
            }

            if (a6 > 2u)
            {
              if (a6 == 3)
              {
                v17 = 0xE400000000000000;
                v8 = 1818846563;
              }

              else
              {
                v8 = 0x646E756F72;
                if (a6 != 4)
                {
                  v8 = 0x636E757274;
                }

                v17 = 0xE500000000000000;
              }
            }

            else
            {
              v15 = 0xE300000000000000;
              v16 = 7889261;
              if (a6 != 1)
              {
                v16 = 0x726F6F6C66;
                v15 = 0xE500000000000000;
              }

              if (a6)
              {
                v8 = v16;
                v17 = v15;
              }

              else
              {
                v17 = 0xE300000000000000;
              }
            }

            if (v11 == v8 && v12 == v17)
            {

              return a3 == a7;
            }

            v20 = sub_261A85BA4();

            if (v20)
            {
              return a3 == a7;
            }
          }

          return 0;
        }

        return a8 == 8 && !(a6 | a5 | a7);
      }

      if (a8 != 6)
      {
        return 0;
      }

      return a1 == a5;
    }

    if (a4 == 4)
    {
      if (a8 != 4)
      {
        return 0;
      }

      return a1 == a5;
    }

    if (a8 != 5 || a1 != a5)
    {
      return 0;
    }

    if (a2 == a6 && a3 == a7)
    {
      return 1;
    }
  }

  return sub_261A85BA4();
}

BOOL sub_261A81FB8(unsigned __int8 a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  if (a1 > 8u)
  {
    switch(a1)
    {
      case 9u:
        return a3 == 9;
      case 0xAu:
        return a3 == 10;
      case 0xBu:
        return a3 == 11;
    }
  }

  else
  {
    switch(a1)
    {
      case 6u:
        return a3 == 6;
      case 7u:
        return a3 == 7;
      case 8u:
        return a3 == 8;
    }
  }

  v5 = a3;
  if (a3 - 6 < 6)
  {
    return 0;
  }

  v6 = 7235949;
  v7 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v11 = 0xE400000000000000;
      v10 = 1818846563;
    }

    else
    {
      v11 = 0xE500000000000000;
      if (a1 == 4)
      {
        v10 = 0x646E756F72;
      }

      else
      {
        v10 = 0x636E757274;
      }
    }
  }

  else
  {
    v8 = 0xE300000000000000;
    v9 = 7889261;
    if (a1 != 1)
    {
      v9 = 0x726F6F6C66;
      v8 = 0xE500000000000000;
    }

    if (a1)
    {
      v10 = v9;
    }

    else
    {
      v10 = 7235949;
    }

    if (v7)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0xE300000000000000;
    }
  }

  v12 = 0xE300000000000000;
  v13 = 0xE400000000000000;
  v14 = 1818846563;
  v15 = 0x646E756F72;
  if (a3 != 4)
  {
    v15 = 0x636E757274;
  }

  if (a3 != 3)
  {
    v14 = v15;
    v13 = 0xE500000000000000;
  }

  v16 = 0xE300000000000000;
  v17 = 7889261;
  if (a3 != 1)
  {
    v17 = 0x726F6F6C66;
    v16 = 0xE500000000000000;
  }

  if (a3)
  {
    v6 = v17;
    v12 = v16;
  }

  if (a3 <= 2u)
  {
    v18 = v6;
  }

  else
  {
    v18 = v14;
  }

  if (v5 <= 2)
  {
    v19 = v12;
  }

  else
  {
    v19 = v13;
  }

  if (v10 == v18 && v11 == v19)
  {
  }

  else
  {
    v22 = sub_261A85BA4();

    result = 0;
    if ((v22 & 1) == 0)
    {
      return result;
    }
  }

  return a2 == a4;
}

uint64_t sub_261A82228()
{
  v0 = sub_261A859E4();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_261A82274(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v210 = a3;
  v5 = sub_261A85214();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v204 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v204 - v11;
  v223 = MEMORY[0x277D84F90];
  v13 = objc_allocWithZone(MEMORY[0x277CCAC80]);
  v204[1] = a1;
  v209 = a2;
  v14 = sub_261A85494();
  v15 = [v13 initWithString_];

  [v15 setCharactersToBeSkipped_];
  sub_261A851D4();
  sub_261A85804();
  v17 = v16;
  v18 = *(v6 + 8);
  v217 = v12;
  v218 = v6 + 8;
  *&v220 = v5;
  v216 = v18;
  v18(v12, v5);
  v204[0] = v10;
  if (v17)
  {
    v19 = sub_261A85564();

    v20 = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v20 = 1;
LABEL_6:
  v219 = 0;
  v21 = MEMORY[0x277D84F90];
  LODWORD(v212) = 2;
  v222[2] = MEMORY[0x277D84FA0];
  v213 = xmmword_261A8D380;
  v205 = xmmword_261A8D370;
  v22 = 1;
  v211 = v15;
  while (1)
  {
    if ([v15 isAtEnd])
    {

      v175 = *(v21 + 2);
      v176 = v219 - v175;
      if (!__OFSUB__(v219, v175))
      {
        if (v176 >= 1)
        {
          if (v176 != 1)
          {

            sub_261A84268();
            swift_allocError();
            *(v182 + 8) = 0;
            *(v182 + 16) = 0;
            *v182 = 0;
            v183 = 8;
            goto LABEL_288;
          }

          v177 = (v21 + 32);
          v178 = v175 + 1;
          while (--v178)
          {
            v179 = v177 + 24;
            v180 = *v177;
            v177 += 24;
            if (v180 == 6)
            {
              v13 = *(v179 - 1);

              goto LABEL_281;
            }
          }

          if (v175)
          {
            v221 = MEMORY[0x277D84F90];
            result = sub_261A3F360(0, v175, 0);
            v185 = *(v21 + 2);
            *&v186 = v221;
            v187 = v185 - 1;
            v188 = 24 * v185 + 8;
            do
            {
              if (v187 == -1)
              {
                goto LABEL_326;
              }

              if (v187 >= *(v21 + 2))
              {
                goto LABEL_327;
              }

              v189 = *&v21[v188];
              v221 = *&v186;
              v191 = *(v186 + 16);
              v190 = *(v186 + 24);
              if (v191 >= v190 >> 1)
              {
                v220 = v189;
                result = sub_261A3F360((v190 > 1), v191 + 1, 1);
                v189 = v220;
                *&v186 = v221;
              }

              *(v186 + 16) = v191 + 1;
              v192 = v186 + 32 * v191;
              *(v192 + 32) = v189;
              *(v192 + 48) = 0;
              *(v192 + 56) = 3;
              --v187;
              v188 -= 24;
              --v175;
            }

            while (v175);

            v15 = v211;
          }

          else
          {

            *&v186 = MEMORY[0x277D84F90];
          }

          swift_beginAccess();
          sub_261A7FC30(v186);
          swift_endAccess();

          v13 = v223;
          swift_beginAccess();
          return v13;
        }

        if (*(v21 + 2))
        {
          v13 = *(v21 + 4);
          v20 = *(v21 + 6);

          if ((v13 & 0xFE) == 6)
          {
            sub_261A84268();
            swift_allocError();
            *(v182 + 16) = 0;
            *v182 = v20;
            goto LABEL_283;
          }
        }

        else
        {
LABEL_285:
        }

        sub_261A84268();
        swift_allocError();
        *(v182 + 16) = 0;
        *v182 = v20;
        goto LABEL_287;
      }

      goto LABEL_331;
    }

    sub_261A857F4();
    if (v23)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_261A6799C(0, *(v21 + 2) + 1, 1, v21);
        v21 = result;
      }

      v41 = *(v21 + 2);
      v40 = *(v21 + 3);
      if (v41 >= v40 >> 1)
      {
        result = sub_261A6799C((v40 > 1), v41 + 1, 1, v21);
        v21 = result;
      }

      *(v21 + 2) = v41 + 1;
      v42 = &v21[24 * v41];
      *(v42 + 2) = v205;
      *(v42 + 6) = v20;
      v35 = __OFADD__(v20++, 1);
      if (!v35)
      {
        goto LABEL_227;
      }

      goto LABEL_332;
    }

    sub_261A857F4();
    if (v24)
    {
      break;
    }

    sub_261A857F4();
    if (v25)
    {

      if (!*(v21 + 2))
      {
LABEL_269:

        sub_261A84268();
        swift_allocError();
        *(v184 + 8) = 0;
        *(v184 + 16) = 0;
        *v184 = v20;
        *(v184 + 24) = 0;
        goto LABEL_289;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_261A67C20(v21);
        v21 = result;
      }

      v52 = v21 + 16;
      v51 = *(v21 + 2);
      if (v51)
      {
        v53 = v51 - 1;
        v54 = (v21 + 32);
        v55 = &v21[24 * v53 + 32];
        v56 = v21;
        v13 = *v55;
        v57 = *(v55 + 8);
        v22 = *(v55 + 16);
        v215 = v56;
        *(v56 + 2) = v53;
        v58 = v13;
        if (v13 - 8 >= 4)
        {
          v64 = 0;
          if (v13 == 6)
          {
            LODWORD(v214) = 1;
            result = v210;
            v21 = v215;
            v63 = v219;
            goto LABEL_208;
          }

          LODWORD(v214) = 1;
          v50 = v219;
          if (v13 == 7)
          {
            goto LABEL_124;
          }

          v97 = v57 + 1;
          if (__OFADD__(v57, 1))
          {
            goto LABEL_341;
          }

          goto LABEL_196;
        }

        swift_beginAccess();
        v59 = v223;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_261A67890(0, *(v59 + 2) + 1, 1, v59);
        }

        v61 = *(v59 + 2);
        v60 = *(v59 + 3);
        if (v61 >= v60 >> 1)
        {
          v59 = sub_261A67890((v60 > 1), v61 + 1, 1, v59);
        }

        *(v59 + 2) = v61 + 1;
        v62 = &v59[32 * v61];
        *(v62 + 4) = v13;
        *(v62 + 5) = v57;
        *(v62 + 6) = 0;
        v62[56] = 3;
        v223 = v59;
        swift_endAccess();
        v63 = v219 - 1;
        if (!__OFSUB__(v219, 1))
        {
          v64 = v22;
          while (1)
          {
            v65 = v215;
            if (!*(v215 + 16))
            {
              v15 = v211;
              goto LABEL_269;
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_261A67C20(v65);
              v65 = result;
            }

            v52 = (v65 + 16);
            v66 = *(v65 + 16);
            if (!v66)
            {
              goto LABEL_318;
            }

            v67 = v66 - 1;
            v54 = (v65 + 32);
            v68 = v65 + 32 + 24 * v67;
            v69 = v65;
            v13 = *v68;
            v70 = *(v68 + 8);
            v22 = *(v68 + 16);
            v215 = v69;
            *(v69 + 16) = v67;
            v58 = v13;
            if (v13 - 8 >= 4)
            {
              break;
            }

            swift_beginAccess();
            v71 = v223;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v71 = sub_261A67890(0, *(v71 + 2) + 1, 1, v71);
            }

            v73 = *(v71 + 2);
            v72 = *(v71 + 3);
            if (v73 >= v72 >> 1)
            {
              v71 = sub_261A67890((v72 > 1), v73 + 1, 1, v71);
            }

            *(v71 + 2) = v73 + 1;
            v74 = &v71[32 * v73];
            *(v74 + 4) = v13;
            *(v74 + 5) = v70;
            *(v74 + 6) = 0;
            v74[56] = 3;
            v223 = v71;
            swift_endAccess();
            v64 = v22;
            v35 = __OFSUB__(v63--, 1);
            if (v35)
            {
              goto LABEL_319;
            }
          }

          if (v13 == 6)
          {
            LODWORD(v214) = 0;
            result = v210;
            v21 = v215;
            goto LABEL_208;
          }

          v50 = v63;
          if (v13 == 7)
          {
            LODWORD(v214) = 0;
LABEL_124:
            v63 = v50;
            swift_beginAccess();
            v103 = v223;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v103 = sub_261A67890(0, *(v103 + 2) + 1, 1, v103);
            }

            v21 = v215;
            v105 = *(v103 + 2);
            v104 = *(v103 + 3);
            v106 = v104 >> 1;
            v107 = v105 + 1;
            if (v104 >> 1 <= v105)
            {
              v103 = sub_261A67890((v104 > 1), v105 + 1, 1, v103);
              v104 = *(v103 + 3);
              v106 = v104 >> 1;
            }

            *(v103 + 2) = v107;
            v108 = &v103[32 * v105];
            *(v108 + 5) = 0;
            *(v108 + 6) = 0;
            v109 = v105 + 2;
            *(v108 + 4) = 0xBFF0000000000000;
            v108[56] = 0;
            if (v106 < v109)
            {
              v103 = sub_261A67890((v104 > 1), v109, 1, v103);
            }

            *(v103 + 2) = v109;
            v110 = &v103[32 * v107];
            *(v110 + 5) = 0;
            *(v110 + 6) = 0;
            *(v110 + 4) = 10;
            v110[56] = 3;
            v223 = v103;
            swift_endAccess();
LABEL_207:
            result = v210;
LABEL_208:
            if (v63 >= 1)
            {
              v35 = __OFADD__(v20++, 1);
              if (!v35)
              {
                v219 = v63;
                v22 = 0;
                LODWORD(v212) = 0;
                v15 = v211;
                goto LABEL_228;
              }

              goto LABEL_335;
            }

            if (*v52)
            {
              v201 = *v54;
              v13 = *(v21 + 6);

              v15 = v211;
              if ((v201 & 0xFE) == 6)
              {
                goto LABEL_282;
              }
            }

            else
            {

              if (v214)
              {
                v13 = v20;
              }

              else
              {
                v13 = v64;
              }

              v15 = v211;
            }

            sub_261A84268();
            swift_allocError();
            *(v182 + 16) = 0;
            *v182 = v13;
LABEL_287:
            *(v182 + 8) = 0;
            v183 = 2;
            goto LABEL_288;
          }

          LODWORD(v214) = 0;
          v97 = v70 + 1;
          if (__OFADD__(v70, 1))
          {
            goto LABEL_341;
          }

LABEL_196:
          if (v58 <= 1)
          {
            if (!v50)
            {

              v13 &= 1u;
              sub_261A84268();
              swift_allocError();
              *v203 = v22;
              *(v203 + 8) = v13;
              *(v203 + 16) = 0;
              goto LABEL_323;
            }

LABEL_201:
            v219 = v50;
            swift_beginAccess();
            v141 = v223;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v141 = sub_261A67890(0, *(v141 + 2) + 1, 1, v141);
            }

            v143 = *(v141 + 2);
            v142 = *(v141 + 3);
            if (v143 >= v142 >> 1)
            {
              v141 = sub_261A67890((v142 > 1), v143 + 1, 1, v141);
            }

            *(v141 + 2) = v143 + 1;
            v144 = &v141[32 * v143];
            *(v144 + 4) = v13;
            *(v144 + 5) = v97;
            *(v144 + 6) = 0;
            v144[56] = 3;
            v223 = v141;
            result = swift_endAccess();
            v145 = v97 - 1;
            if (__OFSUB__(v97, 1))
            {
              goto LABEL_342;
            }

            v63 = v219 - v145;
            v21 = v215;
            if (!__OFSUB__(v219, v145))
            {
              goto LABEL_207;
            }

LABEL_343:
            __break(1u);
LABEL_344:
            __break(1u);
            goto LABEL_345;
          }

          if (v50 >= 1)
          {
            if (v97 == 1)
            {
              goto LABEL_201;
            }

            v13 = v13;
            sub_261A84268();
            swift_allocError();
            *v203 = v22;
            *(v203 + 8) = v13;
            *(v203 + 16) = v97;
LABEL_323:
            v181 = 7;
LABEL_264:
            *(v203 + 24) = v181;
            v15 = v211;
            goto LABEL_289;
          }

LABEL_321:
          v202 = v50;

          v13 = v13;
          sub_261A84268();
          swift_allocError();
          *v203 = v22;
          *(v203 + 8) = v13;
          *(v203 + 16) = v202;
          goto LABEL_323;
        }
      }

      else
      {
LABEL_318:
        __break(1u);
      }

LABEL_319:
      __break(1u);
LABEL_320:
      __break(1u);
      goto LABEL_321;
    }

    if (qword_27FECAD78 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v220, qword_27FED7CE0);
    v26 = sub_261A85804();
    if (!v27)
    {
      goto LABEL_216;
    }

    v28 = v26;
    v29 = v27;
    if (v26 == 43 && v27 == 0xE100000000000000 || (sub_261A85BA4() & 1) != 0)
    {
      LODWORD(v214) = 0;
      v30 = 8;
    }

    else
    {
      if ((v28 != 45 || v29 != 0xE100000000000000) && (sub_261A85BA4() & 1) == 0)
      {
        if (v28 == 42 && v29 == 0xE100000000000000 || (sub_261A85BA4() & 1) != 0)
        {
          v121 = 10;
        }

        else
        {
          if ((v28 != 47 || v29 != 0xE100000000000000) && (sub_261A85BA4() & 1) == 0)
          {

LABEL_216:
            if (qword_27FECAD88 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v220, qword_27FED7D10);
            v146 = sub_261A85814();
            if (!v147)
            {

              v193 = v217;
              sub_261A85204();
              v194 = v204[0];
              sub_261A851F4();
              v195 = v220;
              v196 = v216;
              v216(v193, v220);
              v197 = sub_261A85804();
              v199 = v198;
              v196(v194, v195);

              if (v199)
              {
                v13 = v197;
              }

              else
              {
                v13 = 0;
              }

              if (v199)
              {
                v200 = v199;
              }

              else
              {
                v200 = 0xE000000000000000;
              }

              sub_261A84268();
              swift_allocError();
              *v182 = v20;
              *(v182 + 8) = v13;
              *(v182 + 16) = v200;
              v183 = 3;
              goto LABEL_288;
            }

            v148 = v146;
            v149 = v147;
            sub_261A857F4();
            if (v150)
            {

              v151 = sub_261A859E4();

              if (v151 >= 6)
              {

                sub_261A84268();
                swift_allocError();
                *v182 = v20;
                *(v182 + 8) = v148;
                *(v182 + 16) = v149;
                v183 = 5;
                goto LABEL_288;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v21 = sub_261A6799C(0, *(v21 + 2) + 1, 1, v21);
              }

              v153 = *(v21 + 2);
              v152 = *(v21 + 3);
              if (v153 >= v152 >> 1)
              {
                v21 = sub_261A6799C((v152 > 1), v153 + 1, 1, v21);
              }

              *(v21 + 2) = v153 + 1;
              v154 = &v21[24 * v153];
              *(v154 + 4) = v151;
              *(v154 + 5) = 0;
              *(v154 + 6) = v20;
              v155 = sub_261A85564();

              v156 = v155 + 1;
              if (!__OFADD__(v155, 1))
              {
                v35 = __OFADD__(v20, v156);
                v20 += v156;
                if (!v35)
                {
LABEL_227:
                  v22 = 1;
                  LODWORD(v212) = 1;
                  goto LABEL_228;
                }

LABEL_337:
                __break(1u);
LABEL_338:
                __break(1u);
LABEL_339:
                __break(1u);
LABEL_340:
                __break(1u);
LABEL_341:
                __break(1u);
LABEL_342:
                __break(1u);
                goto LABEL_343;
              }

LABEL_336:
              __break(1u);
              goto LABEL_337;
            }

            if (v212)
            {
              v221 = 0.0;
              v160 = v207;
              result = sub_261A81BC4(v148, v149);
              v207 = v160;
              if (result)
              {
                v35 = __OFADD__(v219++, 1);
                if (!v35)
                {
                  v161 = v221;
                  swift_beginAccess();
                  v162 = v223;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v162 = sub_261A67890(0, *(v162 + 2) + 1, 1, v162);
                  }

                  v164 = *(v162 + 2);
                  v163 = *(v162 + 3);
                  if (v164 >= v163 >> 1)
                  {
                    v162 = sub_261A67890((v163 > 1), v164 + 1, 1, v162);
                  }

                  *(v162 + 2) = v164 + 1;
                  v165 = &v162[32 * v164];
                  *(v165 + 4) = v161;
                  *(v165 + 5) = 0;
                  *(v165 + 6) = 0;
                  v165[56] = 0;
                  goto LABEL_250;
                }

LABEL_345:
                __break(1u);
LABEL_346:
                __break(1u);
LABEL_347:
                __break(1u);
LABEL_348:
                __break(1u);
                return result;
              }

              if (*(v210 + 16) && (result = sub_261A5BD84(v148, v149), (v166 & 1) != 0))
              {
                v35 = __OFADD__(v219++, 1);
                if (v35)
                {
                  goto LABEL_348;
                }

                v167 = (*(v210 + 56) + 32 * result);
                v169 = *v167;
                v168 = v167[1];
                swift_beginAccess();

                sub_261A7F15C(v170);
                swift_endAccess();
                swift_beginAccess();
                sub_261A7FC30(v169);
              }

              else
              {
                v35 = __OFADD__(v219++, 1);
                if (v35)
                {
                  goto LABEL_346;
                }

                swift_beginAccess();

                sub_261A81300(v222, v148, v149);
                swift_endAccess();

                swift_beginAccess();
                v162 = v223;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v162 = sub_261A67890(0, *(v162 + 2) + 1, 1, v162);
                }

                v172 = *(v162 + 2);
                v171 = *(v162 + 3);
                if (v172 >= v171 >> 1)
                {
                  v162 = sub_261A67890((v171 > 1), v172 + 1, 1, v162);
                }

                *(v162 + 2) = v172 + 1;
                v173 = &v162[32 * v172];
                *(v173 + 4) = v148;
                *(v173 + 5) = v149;
                *(v173 + 6) = 0;
                v173[56] = 1;
LABEL_250:
                v223 = v162;
              }

              swift_endAccess();
              v174 = sub_261A85564();

              v35 = __OFADD__(v20, v174);
              v20 += v174;
              if (!v35)
              {
                v22 = 0;
                LODWORD(v212) = 0;
                goto LABEL_228;
              }

              goto LABEL_339;
            }

LABEL_309:

            sub_261A84268();
            swift_allocError();
            *(v182 + 8) = 0;
            *(v182 + 16) = 0;
            *v182 = v20;
            v183 = 4;
            goto LABEL_288;
          }

          v121 = 11;
        }

        v215 = v121;
        if (v212 == 1)
        {
LABEL_284:

          goto LABEL_285;
        }

LABEL_162:
        v208 = v28;
LABEL_163:
        v206 = 0;
        v33 = 0;
        goto LABEL_164;
      }

      LODWORD(v214) = 1;
      v30 = 9;
    }

    v215 = v30;
    v13 = v217;
    sub_261A851D4();
    sub_261A85804();
    v32 = v31;
    v216(v13, v220);
    if (!v32)
    {
      if ((v22 & 1) == 0)
      {
        if (v212 == 1)
        {
          goto LABEL_284;
        }

        goto LABEL_162;
      }

      goto LABEL_28;
    }

    v33 = sub_261A85564();

    if ((v22 & (v33 == 0)) != 0)
    {
LABEL_28:
      if ([v15 isAtEnd])
      {
        v208 = v28;
LABEL_89:
        if (v212 == 1)
        {
          goto LABEL_284;
        }

        goto LABEL_163;
      }

      v34 = sub_261A85564();
      v35 = __OFADD__(v20, v34);
      v20 += v34;
      if (v35)
      {
        __break(1u);
LABEL_308:
        __break(1u);
        goto LABEL_309;
      }

      sub_261A857F4();
      if (v36)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_261A6799C(0, *(v21 + 2) + 1, 1, v21);
        }

        v13 = *(v21 + 2);
        v37 = *(v21 + 3);
        if (v13 >= v37 >> 1)
        {
          v21 = sub_261A6799C((v37 > 1), v13 + 1, 1, v21);
        }

        *(v21 + 2) = v13 + 1;
        v38 = &v21[24 * v13];
        *(v38 + 2) = v213;
        *(v38 + 6) = v20;
        v22 = 1;
        v35 = __OFADD__(v20++, 1);
        if (v35)
        {
          goto LABEL_308;
        }
      }

      else
      {
        v208 = v28;
        if (qword_27FECAD88 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v220, qword_27FED7D10);
        v75 = sub_261A85814();
        if (!v76)
        {
          goto LABEL_89;
        }

        v77 = v75;
        v78 = v76;

        v221 = 0.0;
        v79 = v207;
        result = sub_261A81BC4(v77, v78);
        v207 = v79;
        if (result)
        {
          if (v214)
          {
            v80 = -v221;
          }

          else
          {
            v80 = v221;
          }

          v35 = __OFADD__(v219++, 1);
          if (v35)
          {
            goto LABEL_340;
          }

          swift_beginAccess();
          v81 = v223;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v81 = sub_261A67890(0, *(v81 + 2) + 1, 1, v81);
          }

          v13 = *(v81 + 2);
          v82 = *(v81 + 3);
          if (v13 >= v82 >> 1)
          {
            v81 = sub_261A67890((v82 > 1), v13 + 1, 1, v81);
          }

          *(v81 + 2) = v13 + 1;
          v83 = &v81[32 * v13];
          *(v83 + 4) = v80;
          *(v83 + 5) = 0;
          *(v83 + 6) = 0;
          v83[56] = 0;
        }

        else
        {
          if (*(v210 + 16))
          {
            result = sub_261A5BD84(v77, v78);
            if (v98)
            {
              v35 = __OFADD__(v219++, 1);
              if (v35)
              {
                goto LABEL_347;
              }

              v99 = (*(v210 + 56) + 32 * result);
              v101 = *v99;
              v100 = v99[1];
              swift_beginAccess();

              sub_261A7F15C(v102);
              swift_endAccess();
              swift_beginAccess();
              sub_261A7FC30(v101);
              goto LABEL_145;
            }
          }

          v35 = __OFADD__(v219++, 1);
          if (v35)
          {
            goto LABEL_344;
          }

          swift_beginAccess();

          sub_261A81300(v222, v77, v78);
          swift_endAccess();

          swift_beginAccess();
          v81 = v223;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v81 = sub_261A67890(0, *(v81 + 2) + 1, 1, v81);
          }

          v13 = *(v81 + 2);
          v111 = *(v81 + 3);
          if (v13 >= v111 >> 1)
          {
            v81 = sub_261A67890((v111 > 1), v13 + 1, 1, v81);
          }

          *(v81 + 2) = v13 + 1;
          v112 = &v81[32 * v13];
          *(v112 + 4) = v77;
          *(v112 + 5) = v78;
          *(v112 + 6) = 0;
          v112[56] = 1;
          v223 = v81;
          swift_endAccess();
          if (!v214)
          {
            goto LABEL_146;
          }

          swift_beginAccess();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v81 = sub_261A67890(0, v13 + 2, 1, v81);
          }

          v13 = *(v81 + 2);
          v113 = *(v81 + 3);
          v114 = v113 >> 1;
          v115 = (v13 + 1);
          if (v113 >> 1 <= v13)
          {
            v81 = sub_261A67890((v113 > 1), v13 + 1, 1, v81);
            v113 = *(v81 + 3);
            v114 = v113 >> 1;
          }

          *(v81 + 2) = v115;
          v116 = &v81[32 * v13];
          *(v116 + 5) = 0;
          *(v116 + 6) = 0;
          *(v116 + 4) = 0xBFF0000000000000;
          v116[56] = 0;
          if (v114 < v13 + 2)
          {
            v81 = sub_261A67890((v113 > 1), v13 + 2, 1, v81);
          }

          *(v81 + 2) = v13 + 2;
          v117 = &v81[32 * v115];
          *(v117 + 5) = 0;
          *(v117 + 6) = 0;
          *(v117 + 4) = 10;
          v117[56] = 3;
        }

        v223 = v81;
LABEL_145:
        swift_endAccess();
LABEL_146:
        v118 = sub_261A85564();

        LODWORD(v212) = 0;
        v22 = 1;
        v35 = __OFADD__(v20, v118);
        v20 += v118;
        if (v35)
        {
          goto LABEL_338;
        }
      }
    }

    else
    {
      v208 = v28;
      if (!v33)
      {
        goto LABEL_89;
      }

      if (v212 == 1)
      {
        goto LABEL_284;
      }

      v206 = 1;
LABEL_164:
      v123 = v21 + 16;
      v122 = *(v21 + 2);
      if (v122)
      {
        v124 = (v215 - 8);
        v22 = v124;
        while (1)
        {
          v125 = &v21[24 * v122];
          if ((*(v125 + 8) - 8) > 3u)
          {
            v126 = 0;
            if (v124 > 3)
            {
              goto LABEL_171;
            }
          }

          else
          {
            v126 = qword_261A8D880[(*(v125 + 8) - 8)];
            if (v124 > 3)
            {
              goto LABEL_171;
            }
          }

          if (v126 < qword_261A8D880[v124])
          {
            goto LABEL_185;
          }

LABEL_171:
          v214 = *(v125 + 8);
          v13 = v20;
          v212 = *(v125 + 3);
          swift_beginAccess();
          v127 = v223;
          v128 = v21;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v127 = sub_261A67890(0, *(v127 + 2) + 1, 1, v127);
          }

          v130 = *(v127 + 2);
          v129 = *(v127 + 3);
          v131 = v214;
          if (v130 >= v129 >> 1)
          {
            v134 = sub_261A67890((v129 > 1), v130 + 1, 1, v127);
            v131 = v214;
            v127 = v134;
          }

          *(v127 + 2) = v130 + 1;
          v132 = &v127[32 * v130];
          *(v132 + 2) = v131;
          *(v132 + 6) = 0;
          v132[56] = 3;
          v223 = v127;
          swift_endAccess();
          if (*v123)
          {
            v21 = v128;
            v124 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = sub_261A67C20(v128);
            }

            v20 = v13;
            v133 = *(v21 + 2);
            v50 = v219;
            if (!v133)
            {
              goto LABEL_320;
            }

            *(v21 + 2) = v133 - 1;
            v35 = __OFSUB__(v50--, 1);
            if (v35)
            {
LABEL_317:
              __break(1u);
              goto LABEL_318;
            }
          }

          else
          {
            v21 = v128;
            v20 = v13;
            v124 = v22;
            v50 = v219 - 1;
            if (__OFSUB__(v219, 1))
            {
              goto LABEL_317;
            }
          }

          if (v50 < 0)
          {

            sub_261A84268();
            swift_allocError();
            *(v203 + 8) = 0;
            *(v203 + 16) = 0;
            *v203 = v212;
            v181 = 2;
            goto LABEL_264;
          }

          v219 = v50;
          v123 = v21 + 16;
          v122 = *(v21 + 2);
          if (!v122)
          {
LABEL_185:
            v135 = v122 + 1;
            goto LABEL_187;
          }
        }
      }

      v135 = 1;
LABEL_187:
      v15 = v211;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_261A6799C(0, v135, 1, v21);
      }

      v137 = *(v21 + 2);
      v136 = *(v21 + 3);
      if (v137 >= v136 >> 1)
      {
        v21 = sub_261A6799C((v136 > 1), v137 + 1, 1, v21);
      }

      *(v21 + 2) = v137 + 1;
      v138 = &v21[24 * v137];
      *(v138 + 4) = v215;
      *(v138 + 5) = 0;
      *(v138 + 6) = v20;
      v139 = sub_261A85564();

      v140 = v139 + v33;
      if (__OFADD__(v139, v33))
      {
        goto LABEL_329;
      }

      v35 = __OFADD__(v20, v140);
      v20 += v140;
      if (v35)
      {
        goto LABEL_330;
      }

      LODWORD(v212) = 1;
      v22 = v206;
LABEL_228:
      v13 = v217;
      sub_261A851D4();
      sub_261A85804();
      v158 = v157;
      v216(v13, v220);
      if (v158)
      {
        v159 = sub_261A85564();

        v22 = 1;
        v35 = __OFADD__(v20, v159);
        v20 += v159;
        if (v35)
        {
          goto LABEL_328;
        }
      }
    }
  }

  if (!*(v21 + 2))
  {
LABEL_270:

    sub_261A84268();
    swift_allocError();
    *(v182 + 8) = 0;
    *(v182 + 16) = 0;
    *v182 = v20;
    v183 = 6;
    goto LABEL_288;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v43 = *(v21 + 2);
    if (v43)
    {
      goto LABEL_48;
    }

LABEL_324:
    __break(1u);
LABEL_325:
    __break(1u);
LABEL_326:
    __break(1u);
LABEL_327:
    __break(1u);
LABEL_328:
    __break(1u);
LABEL_329:
    __break(1u);
LABEL_330:
    __break(1u);
LABEL_331:
    __break(1u);
LABEL_332:
    __break(1u);
LABEL_333:
    __break(1u);
LABEL_334:
    __break(1u);
LABEL_335:
    __break(1u);
    goto LABEL_336;
  }

  result = sub_261A67C20(v21);
  v21 = result;
  v43 = *(result + 16);
  if (!v43)
  {
    goto LABEL_324;
  }

LABEL_48:
  v44 = v43 - 1;
  v45 = &v21[24 * v43];
  v46 = *(v45 + 1);
  v47 = *(v45 + 2);
  v13 = *(v45 + 3);
  *(v21 + 2) = v43 - 1;
  if (v46 - 12 < 0xFFFFFFFA)
  {
    v48 = v20;
    v35 = __OFADD__(v47, 1);
    v49 = v47 + 1;
    if (v35)
    {
      goto LABEL_333;
    }

    goto LABEL_150;
  }

  if ((v46 & 0xE) == 6)
  {
    goto LABEL_280;
  }

  swift_beginAccess();
  v84 = v223;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v211;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v84 = sub_261A67890(0, *(v84 + 2) + 1, 1, v84);
  }

  v87 = *(v84 + 2);
  v86 = *(v84 + 3);
  if (v87 >= v86 >> 1)
  {
    v84 = sub_261A67890((v86 > 1), v87 + 1, 1, v84);
  }

  *(v84 + 2) = v87 + 1;
  v88 = &v84[32 * v87];
  *(v88 + 4) = v46;
  *(v88 + 5) = v47;
  *(v88 + 6) = 0;
  v88[56] = 3;
  v223 = v84;
  result = swift_endAccess();
  while (1)
  {
    if (__OFSUB__(v219, 1))
    {
      goto LABEL_325;
    }

    if (!*(v21 + 2))
    {
      goto LABEL_270;
    }

    --v219;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v43 = *(v21 + 2);
      if (!v43)
      {
        goto LABEL_324;
      }
    }

    else
    {
      result = sub_261A67C20(v21);
      v21 = result;
      v43 = *(result + 16);
      if (!v43)
      {
        goto LABEL_324;
      }
    }

    v44 = v43 - 1;
    v89 = &v21[24 * v43];
    v46 = *(v89 + 1);
    v90 = *(v89 + 2);
    v91 = *(v89 + 3);
    *(v21 + 2) = v43 - 1;
    if (v46 - 6 >= 6)
    {
      v48 = v13;
      v13 = v91;
      v35 = __OFADD__(v90, 1);
      v49 = v90 + 1;
      if (v35)
      {
        goto LABEL_333;
      }

LABEL_150:
      v119 = *(v21 + 3);
      if (v43 > v119 >> 1)
      {
        result = sub_261A6799C((v119 > 1), v43, 1, v21);
        v21 = result;
      }

      *(v21 + 2) = v43;
      v120 = &v21[24 * v44];
      *(v120 + 4) = v46;
      *(v120 + 5) = v49;
      *(v120 + 6) = v13;
      if (v219 <= 0)
      {

        v15 = v211;
        if (*(v21 + 2))
        {
          v13 = *(v21 + 4);
          v48 = *(v21 + 6);

          if ((v13 & 0xFE) == 6)
          {
            sub_261A84268();
            swift_allocError();
            *(v182 + 16) = 0;
            *v182 = v48;
            goto LABEL_283;
          }
        }

        else
        {
        }

        sub_261A84268();
        swift_allocError();
        *(v182 + 16) = 0;
        *v182 = v48;
        goto LABEL_287;
      }

      v35 = __OFADD__(v20++, 1);
      v15 = v211;
      if (!v35)
      {
        goto LABEL_227;
      }

      goto LABEL_334;
    }

    if ((v46 & 0xE) == 6)
    {
      break;
    }

    swift_beginAccess();
    v92 = v223;
    v93 = swift_isUniquelyReferenced_nonNull_native();
    v15 = v211;
    if ((v93 & 1) == 0)
    {
      v92 = sub_261A67890(0, *(v92 + 2) + 1, 1, v92);
    }

    v95 = *(v92 + 2);
    v94 = *(v92 + 3);
    if (v95 >= v94 >> 1)
    {
      v92 = sub_261A67890((v94 > 1), v95 + 1, 1, v92);
    }

    *(v92 + 2) = v95 + 1;
    v96 = &v92[32 * v95];
    *(v96 + 4) = v46;
    *(v96 + 5) = v90;
    *(v96 + 6) = 0;
    v96[56] = 3;
    v223 = v92;
    result = swift_endAccess();
    v13 = v91;
  }

  v13 = v91;
LABEL_280:
  v15 = v211;

LABEL_281:

LABEL_282:
  sub_261A84268();
  swift_allocError();
  *(v182 + 16) = 0;
  *v182 = v13;
LABEL_283:
  *(v182 + 8) = 0;
  v183 = 1;
LABEL_288:
  *(v182 + 24) = v183;
LABEL_289:
  swift_willThrow();

  return v13;
}

unint64_t sub_261A84268()
{
  result = qword_27FECBEC8;
  if (!qword_27FECBEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBEC8);
  }

  return result;
}

_BYTE *sub_261A842BC@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_261A8433C(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = (a2 + 56);
    while (1)
    {
      v3 = *(v10 - 3);
      v4 = *(v10 - 2);
      v5 = *(v10 - 1);
      v6 = *v10;
      sub_261A77318(v3, v4, v5, *v10);
      sub_261A7FEE4(&v13, a1, v3, v4, v5, v6);
      if (v2)
      {
        goto LABEL_9;
      }

      v10 += 32;
      sub_261A773F0(v3, v4, v5, v6);
      if (!--v9)
      {
        result = v13;
        break;
      }
    }
  }

  v11 = *(result + 16);
  if (!v11)
  {
    __break(1u);
    return result;
  }

  v12 = *(result + 32);

  if (v11 != 1)
  {
    __break(1u);
LABEL_9:
    sub_261A773F0(v3, v4, v5, v6);
  }

  return result;
}

uint64_t sub_261A84448(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_261A81300(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_261A844B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v29 = MEMORY[0x277D84F90];
    sub_261A3EFB0(0, v1, 0);
    v3 = (a1 + 56);
    do
    {
      v4 = *(v3 - 3);
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      if (*v3 > 1u)
      {
        if (*v3 == 2)
        {
          v27 = 2238582;
          v28 = 0xE300000000000000;

          MEMORY[0x2667168A0](v4, v5);
          MEMORY[0x2667168A0](2108450, 0xE300000000000000);
          v8 = sub_261A85B94();
          MEMORY[0x2667168A0](v8);

          MEMORY[0x2667168A0](41, 0xE100000000000000);
          v9 = v4;
          v10 = v5;
          v11 = v6;
          v12 = 2;
LABEL_9:
          sub_261A773F0(v9, v10, v11, v12);
          goto LABEL_10;
        }

        v18 = *(v3 - 3);
        if (v18 > 5)
        {
          if (*(v3 - 3) > 8u)
          {
            v13 = 0xE100000000000000;
            if (v18 == 9)
            {
              v14 = 45;
            }

            else if (v18 == 10)
            {
              v14 = 42;
            }

            else
            {
              v14 = 47;
            }
          }

          else if (v18 == 6)
          {
            v13 = 0xE100000000000000;
            v14 = 40;
          }

          else if (v18 == 7)
          {
            v13 = 0xE200000000000000;
            v14 = 10285;
          }

          else
          {
            v13 = 0xE100000000000000;
            v14 = 43;
          }

          goto LABEL_11;
        }

        v19 = 0x646E756F72;
        if (v18 != 4)
        {
          v19 = 0x636E757274;
        }

        v20 = 0xE500000000000000;
        v21 = 0xE500000000000000;
        if (v18 == 3)
        {
          v19 = 1818846563;
          v21 = 0xE400000000000000;
        }

        v22 = 7889261;
        if (v18 == 1)
        {
          v20 = 0xE300000000000000;
        }

        else
        {
          v22 = 0x726F6F6C66;
        }

        if (!*(v3 - 3))
        {
          v22 = 7235949;
          v20 = 0xE300000000000000;
        }

        if (*(v3 - 3) <= 2u)
        {
          v23 = v22;
        }

        else
        {
          v23 = v19;
        }

        if (*(v3 - 3) <= 2u)
        {
          v24 = v20;
        }

        else
        {
          v24 = v21;
        }

        v27 = v23;
        v28 = v24;

        MEMORY[0x2667168A0](40, 0xE100000000000000);
      }

      else
      {
        if (*v3)
        {
          v27 = 2238582;
          v28 = 0xE300000000000000;

          MEMORY[0x2667168A0](v4, v5);
          MEMORY[0x2667168A0](10530, 0xE200000000000000);
          v9 = v4;
          v10 = v5;
          v11 = v6;
          v12 = 1;
          goto LABEL_9;
        }

        v7 = *(v3 - 3);
        v27 = 0;
        v28 = 0xE000000000000000;
        sub_261A85704();
      }

LABEL_10:
      v14 = v27;
      v13 = v28;
LABEL_11:
      v16 = *(v29 + 16);
      v15 = *(v29 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_261A3EFB0((v15 > 1), v16 + 1, 1);
      }

      v3 += 32;
      *(v29 + 16) = v16 + 1;
      v17 = v29 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v13;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAF58, &qword_261A87428);
  sub_261A84808();
  v25 = sub_261A85474();

  return v25;
}

unint64_t sub_261A84808()
{
  result = qword_27FECAF60;
  if (!qword_27FECAF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECAF58, &qword_261A87428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECAF60);
  }

  return result;
}

uint64_t sub_261A84878(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_261A848C0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Operator(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF5 && a1[16])
  {
    return (*a1 + 245);
  }

  v3 = *a1;
  if (v3 >= 6)
  {
    v4 = v3 - 5;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 7)
  {
    return v4 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Operator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF4)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 245;
    if (a3 >= 0xF5)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF5)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 11;
    }
  }

  return result;
}

uint64_t sub_261A849AC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 6)
  {
    return v1 - 5;
  }

  else
  {
    return 0;
  }
}

void *sub_261A849C0(void *result, unsigned int a2)
{
  if (a2 > 0xFA)
  {
    *result = a2 - 251;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = a2 + 5;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7Recount10ExpressionV10ParseErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 24) & 0xF;
  }
}

uint64_t sub_261A84A10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 25))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 24);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_261A84A58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_261A84AA0(uint64_t result, unsigned int a2)
{
  v2 = a2 - 8;
  if (a2 >= 8)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 8;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_261A84AD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_261A84B20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_261A84B9C()
{
  result = qword_27FECBED0;
  if (!qword_27FECBED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBED0);
  }

  return result;
}

uint64_t CountingMode.Trigger.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t CountingMode.Trigger.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t CountingMode.trigger(counter:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 200);
    if (*(v2 + 16) > result)
    {
      v3 = *(v2 + 8 * result + 32);
    }
  }

  __break(1u);
  return result;
}

uint64_t static CountingMode.Threshold.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v4 || (v5 = sub_261A85BA4(), result = 0, (v5 & 1) != 0))
  {
    if (a1[13] == a2[13] && a1[14] == a2[14])
    {
      return 1;
    }

    else
    {

      return sub_261A85BA4();
    }
  }

  return result;
}

uint64_t CountingMode.Threshold.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t CountingMode.Threshold.synopsis.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t CountingMode.Threshold.documentation.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t CountingMode.Threshold.nextCountingModeID.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t CountingMode.Threshold.nextCountingModeName.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t CountingMode.Threshold.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_261A85554();
  v3 = v0[13];
  v4 = v0[14];

  return sub_261A85554();
}

void *CountingMode.Threshold.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[12];

  v7 = v0[14];

  v8 = v0[15];

  return v0;
}

uint64_t CountingMode.Threshold.__deallocating_deinit()
{
  CountingMode.Threshold.deinit();

  return MEMORY[0x2821FE8D8](v0, 128, 7);
}

uint64_t CountingMode.Threshold.hashValue.getter()
{
  sub_261A85C44();
  v1 = v0[2];
  v2 = v0[3];
  sub_261A85554();
  v3 = v0[13];
  v4 = v0[14];
  sub_261A85554();
  return sub_261A85C84();
}

uint64_t sub_261A84F54()
{
  v1 = *v0;
  sub_261A85C44();
  v2 = v1[2];
  v3 = v1[3];
  sub_261A85554();
  v4 = v1[13];
  v5 = v1[14];
  sub_261A85554();
  return sub_261A85C84();
}

uint64_t sub_261A84FA8()
{
  v1 = *v0;
  v2 = v1[2];
  v3 = v1[3];
  sub_261A85554();
  v4 = v1[13];
  v5 = v1[14];

  return sub_261A85554();
}

uint64_t sub_261A84FEC()
{
  v1 = *v0;
  sub_261A85C44();
  v2 = v1[2];
  v3 = v1[3];
  sub_261A85554();
  v4 = v1[13];
  v5 = v1[14];
  sub_261A85554();
  return sub_261A85C84();
}

unint64_t sub_261A85040()
{
  result = qword_27FECBED8;
  if (!qword_27FECBED8)
  {
    type metadata accessor for CountingMode.Threshold();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECBED8);
  }

  return result;
}

uint64_t sub_261A850B8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == v3[3];
  if (v4 || (v5 = sub_261A85BA4(), result = 0, (v5 & 1) != 0))
  {
    if (*(v2 + 104) == v3[13] && *(v2 + 112) == v3[14])
    {
      return 1;
    }

    else
    {

      return sub_261A85BA4();
    }
  }

  return result;
}