uint64_t sub_1DEEC7584(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for SessionManager.Session();
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v58 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v50 = v46 - v12;
  v57 = sub_1DEF8D3F8();
  v55 = *(v57 - 8);
  v13 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v49 = v46 - v17;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4080, &qword_1DEF91BB8);
  result = sub_1DEF8E148();
  v19 = result;
  if (a2 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = *a1;
  }

  v21 = 0;
  v46[1] = v55 + 16;
  v47 = a2;
  v56 = v55 + 32;
  v22 = result + 64;
  v48 = a1;
  v46[0] = a4;
  v23 = v57;
  while (v20)
  {
    v24 = v15;
    v25 = __clz(__rbit64(v20));
    v52 = (v20 - 1) & v20;
LABEL_16:
    v28 = v25 | (v21 << 6);
    v29 = a4[6];
    v30 = v55;
    v54 = *(v55 + 72);
    v31 = v49;
    (*(v55 + 16))(v49, v29 + v54 * v28, v23);
    v32 = a4[7];
    v53 = *(v51 + 72);
    v33 = v32 + v53 * v28;
    v34 = v50;
    sub_1DEECF44C(v33, v50, type metadata accessor for SessionManager.Session);
    v35 = *(v30 + 32);
    v15 = v24;
    v35(v24, v31, v23);
    sub_1DEECF4B4(v34, v58, type metadata accessor for SessionManager.Session);
    v36 = *(v19 + 40);
    sub_1DEE1B968(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
    result = sub_1DEF8D8B8();
    v37 = -1 << *(v19 + 32);
    v38 = result & ~v37;
    v39 = v38 >> 6;
    if (((-1 << v38) & ~*(v22 + 8 * (v38 >> 6))) == 0)
    {
      v41 = 0;
      v42 = (63 - v37) >> 6;
      a2 = v47;
      a1 = v48;
      while (++v39 != v42 || (v41 & 1) == 0)
      {
        v43 = v39 == v42;
        if (v39 == v42)
        {
          v39 = 0;
        }

        v41 |= v43;
        v44 = *(v22 + 8 * v39);
        if (v44 != -1)
        {
          v40 = __clz(__rbit64(~v44)) + (v39 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v40 = __clz(__rbit64((-1 << v38) & ~*(v22 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
    a2 = v47;
    a1 = v48;
LABEL_26:
    *(v22 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
    v35((*(v19 + 48) + v40 * v54), v15, v57);
    result = sub_1DEECF4B4(v58, *(v19 + 56) + v40 * v53, type metadata accessor for SessionManager.Session);
    ++*(v19 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v46[0];
    v20 = v52;
    if (!a3)
    {
      return v19;
    }
  }

  v26 = v21;
  while (1)
  {
    v21 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v21 >= a2)
    {
      return v19;
    }

    v27 = a1[v21];
    ++v26;
    if (v27)
    {
      v24 = v15;
      v25 = __clz(__rbit64(v27));
      v52 = (v27 - 1) & v27;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1DEEC7A14(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v39 - v12;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v41 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3FF0, qword_1DEF91B80);
  result = sub_1DEF8E148();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  v18 = v41;
  v40 = a4;
  while (v15)
  {
    v19 = __clz(__rbit64(v15));
    v44 = (v15 - 1) & v15;
LABEL_16:
    v22 = v19 | (v16 << 6);
    v23 = a4[7];
    v24 = (a4[6] + 16 * v22);
    v26 = *v24;
    v25 = v24[1];
    v27 = v42;
    v45 = *(v43 + 72);
    sub_1DEECF44C(v23 + v45 * v22, v42, type metadata accessor for NetworkMessenger.ExpiringConnection);
    sub_1DEECF4B4(v27, v18, type metadata accessor for NetworkMessenger.ExpiringConnection);
    v28 = *(v14 + 40);
    sub_1DEF8E7A8();

    sub_1DEF8D9B8();
    result = sub_1DEF8E7F8();
    v29 = -1 << *(v14 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      v18 = v41;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v17 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    v18 = v41;
LABEL_26:
    *(v17 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v37 = (*(v14 + 48) + 16 * v32);
    *v37 = v26;
    v37[1] = v25;
    result = sub_1DEECF4B4(v18, *(v14 + 56) + v32 * v45, type metadata accessor for NetworkMessenger.ExpiringConnection);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v40;
    v15 = v44;
    if (!a3)
    {
      return v14;
    }
  }

  v20 = v16;
  while (1)
  {
    v16 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v21 = a1[v16];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v44 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

size_t sub_1DEEC7D60(size_t a1, int64_t a2, char a3)
{
  result = sub_1DEEC85E4(a1, a2, a3, *v3, &qword_1ECDE3DF8, &unk_1DEF91710, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

size_t sub_1DEEC7DA4(size_t a1, int64_t a2, char a3)
{
  result = sub_1DEEC85E4(a1, a2, a3, *v3, &qword_1ECDE4290, &qword_1DEF95B60, type metadata accessor for PairingRelationship);
  *v3 = result;
  return result;
}

char *sub_1DEEC7DE8(char *a1, int64_t a2, char a3)
{
  result = sub_1DEEC7F94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DEEC7E08(char *a1, int64_t a2, char a3)
{
  result = sub_1DEEC82A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DEEC7E28(char *a1, int64_t a2, char a3)
{
  result = sub_1DEEC83B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DEEC7E48(char *a1, int64_t a2, char a3)
{
  result = sub_1DEEC84D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DEEC7E68(void *a1, int64_t a2, char a3)
{
  result = sub_1DEEC8A00(a1, a2, a3, *v3, &qword_1ECDE4320, &qword_1DEF91E88, &qword_1ECDE4328, &qword_1DEF91E90);
  *v3 = result;
  return result;
}

size_t sub_1DEEC7EA8(size_t a1, int64_t a2, char a3)
{
  result = sub_1DEEC85E4(a1, a2, a3, *v3, &qword_1ECDE42C8, &unk_1DEF91E30, MEMORY[0x1E6969530]);
  *v3 = result;
  return result;
}

char *sub_1DEEC7EEC(char *a1, int64_t a2, char a3)
{
  result = sub_1DEEC87C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DEEC7F0C(void *a1, int64_t a2, char a3)
{
  result = sub_1DEEC88CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DEEC7F2C(void *a1, int64_t a2, char a3)
{
  result = sub_1DEEC8A00(a1, a2, a3, *v3, &qword_1ECDE4308, &qword_1DEF91E78, &qword_1ECDE4310, &qword_1DEF91E80);
  *v3 = result;
  return result;
}

char *sub_1DEEC7F94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE42D8, &unk_1DEF91E50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1DEEC80B4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4EC0, &unk_1DEF91EA0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1DEEC82A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE42A0, &unk_1DEF95E40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DEEC83B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4360, &qword_1DEF91760);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DEEC84D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4270, &unk_1DEF91DF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1DEEC85E4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1DEEC87C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4280, &qword_1DEF91E08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DEEC88CC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE42B0, &qword_1DEF91E18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE42B8, &qword_1DEF91E20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DEEC8A00(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_1DEEC8B48(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v20 - v5;
  v7 = sub_1DEF8D3F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v20[0] = v8 + 8;
    v20[1] = v8 + 16;

    for (i = 0; v15; result = sub_1DEE171B4(v6, &unk_1ECDE3E80, &unk_1DEF90970))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v8 + 16))(v12, *(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v7);
      sub_1DEECB43C(v12, v6);
      (*(v8 + 8))(v12, v7);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DEEC8D64(uint64_t result)
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

        sub_1DEECB6E4(v12, v13);

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

uint64_t sub_1DEEC8E90(uint64_t result)
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

        v14 = sub_1DEECB820(v12, v13);
        sub_1DEEA889C(v14, v15);

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

uint64_t sub_1DEEC8FB4(uint64_t a1, uint64_t a2)
{
  v98 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v69 - v10);
  v12 = sub_1DEF8D3F8();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v89 = (&v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v69 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v84 = (&v69 - v20);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x1E69E7CD0];
    goto LABEL_54;
  }

  v70 = v11;
  v72 = v9;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v83 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v91 = (v24 & v21);
  v76 = (63 - v23) >> 6;
  v90 = v19 + 16;
  v81 = (v19 + 48);
  v82 = (v19 + 56);
  v80 = (v19 + 32);
  v86 = (a2 + 56);
  v71 = v19;
  v92 = (v19 + 8);

  v26 = 0;
  v73 = a1;
  for (i = a1 + 56; ; v22 = i)
  {
    v27 = v91;
    v28 = v26;
    if (v91)
    {
LABEL_14:
      v2 = (v27 - 1) & v27;
      v32 = v70;
      (*(v71 + 16))(v70, *(a1 + 48) + *(v71 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
      v33 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v76 <= (v26 + 1) ? v26 + 1 : v76;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_57;
        }

        if (v28 >= v76)
        {
          break;
        }

        v27 = *(v22 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v33 = 1;
      v32 = v70;
    }

    v78 = *v82;
    v78(v32, v33, 1, v12);
    v93 = a1;
    v94 = v22;
    v95 = v83;
    v96 = v30;
    v97 = v2;
    v77 = *v81;
    if (v77(v32, 1, v12) == 1)
    {
      sub_1DEE171B4(v32, &unk_1ECDE3E80, &unk_1DEF90970);
      goto LABEL_52;
    }

    v75 = *v80;
    v75(v84, v32, v12);
    v34 = *(a2 + 40);
    v74 = sub_1DEE1B968(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
    v35 = sub_1DEF8D8B8();
    v36 = -1 << *(a2 + 32);
    v26 = v35 & ~v36;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) != 0)
    {
      break;
    }

    (*v92)(v84, v12);
LABEL_22:
    v26 = v30;
    v91 = v2;
  }

  v69 = v92 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v85 = ~v36;
  v37 = *(v71 + 72);
  v87 = *(v71 + 16);
  v88 = v37;
  while (1)
  {
    v87(v18, *(a2 + 48) + v88 * v26, v12);
    v38 = sub_1DEE1B968(&qword_1ECDE40E0, MEMORY[0x1E69695A8]);
    v39 = sub_1DEF8D908();
    v91 = *v92;
    v91(v18, v12);
    if (v39)
    {
      break;
    }

    v26 = (v26 + 1) & v85;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) == 0)
    {
      a1 = v73;
      v91(v84, v12);
      goto LABEL_22;
    }
  }

  v85 = v38;
  v40 = (v91)(v84, v12);
  v41 = *(a2 + 32);
  v69 = ((1 << v41) + 63) >> 6;
  v25 = 8 * v69;
  a1 = v73;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v70 = &v69;
    MEMORY[0x1EEE9AC00](v40);
    v43 = &v69 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v86, v42);
    v44 = *&v43[8 * v28] & ~v22;
    v45 = *(a2 + 16);
    v84 = v43;
    *&v43[8 * v28] = v44;
    v46 = v45 - 1;
    v26 = v72;
    v47 = i;
    v48 = v76;
LABEL_26:
    v71 = v46;
    while (v2)
    {
      v49 = v30;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v87(v26, *(a1 + 48) + (v52 | (v49 << 6)) * v88, v12);
      v53 = 0;
LABEL_39:
      v78(v26, v53, 1, v12);
      v93 = a1;
      v94 = v47;
      v95 = v83;
      v96 = v30;
      v97 = v2;
      if (v77(v26, 1, v12) == 1)
      {
        sub_1DEE171B4(v26, &unk_1ECDE3E80, &unk_1DEF90970);
        a2 = sub_1DEECCCE8(v84, v69, v71, a2);
        goto LABEL_52;
      }

      v75(v89, v26, v12);
      v54 = *(a2 + 40);
      v55 = sub_1DEF8D8B8();
      v56 = a2;
      v57 = -1 << *(a2 + 32);
      v58 = v55 & ~v57;
      v28 = v58 >> 6;
      v22 = 1 << v58;
      if (((1 << v58) & v86[v58 >> 6]) != 0)
      {
        v87(v18, *(v56 + 48) + v58 * v88, v12);
        v59 = sub_1DEF8D908();
        v91(v18, v12);
        if ((v59 & 1) == 0)
        {
          v60 = ~v57;
          do
          {
            v58 = (v58 + 1) & v60;
            v28 = v58 >> 6;
            v22 = 1 << v58;
            if (((1 << v58) & v86[v58 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v87(v18, *(v56 + 48) + v58 * v88, v12);
            v61 = sub_1DEF8D908();
            v91(v18, v12);
          }

          while ((v61 & 1) == 0);
        }

        v91(v89, v12);
        v62 = v84[v28];
        v84[v28] = v62 & ~v22;
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
        if ((v62 & v22) != 0)
        {
          v46 = v71 - 1;
          if (__OFSUB__(v71, 1))
          {
            __break(1u);
          }

          if (v71 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v91(v89, v12);
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
      }
    }

    if (v48 <= (v30 + 1))
    {
      v50 = v30 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v30 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v30;
      if (v2)
      {
        v30 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v65 = v25;

    v84 = a2;
    v66 = v65;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v67 = v84;

      a2 = v67;
      continue;
    }

    break;
  }

  v68 = swift_slowAlloc();
  memcpy(v68, v86, v66);
  a2 = sub_1DEECBBE4(v68, v69, v84, v26, &v93);

  MEMORY[0x1E12CCD70](v68, -1, -1);
LABEL_52:
  sub_1DEE2774C();
LABEL_54:
  v63 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t sub_1DEEC9A18(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v69 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x1E69E7CD0];
LABEL_53:
    v50 = *MEMORY[0x1E69E9840];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
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
  v64 = (a2 + 56);

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_1DEF8E7A8();

    sub_1DEF8D9B8();
    v24 = sub_1DEF8E7F8();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_1DEF8E4E8() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x1EEE9AC00](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_1DEECD010(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            sub_1DEF8E7A8();

            sub_1DEF8D9B8();
            v43 = sub_1DEF8E7F8();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_1DEF8E4E8() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x1E69E7CD0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = sub_1DEECC0B8(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x1E12CCD70](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    sub_1DEE2774C();
    goto LABEL_53;
  }

  result = MEMORY[0x1E12CCD70](v53, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1DEEC9F88(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v75 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    v4 = MEMORY[0x1E69E7CD0];
LABEL_62:
    v52 = *MEMORY[0x1E69E9840];
    return v4;
  }

  v5 = a1;
  v60 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1 << *(a1 + 32);
  v65 = ~v8;
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = (63 - v8) >> 6;
  v12 = (a2 + 56);

  v15 = 0;
  v67 = v4;
  v68 = v7;
  v66 = v13;
  while (1)
  {
    if (v10)
    {
      goto LABEL_13;
    }

    v16 = v15;
    do
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_64;
      }

      if (v17 >= v11)
      {
LABEL_61:
        sub_1DEE2774C();
        goto LABEL_62;
      }

      v10 = *(v7 + 8 * v17);
      ++v16;
    }

    while (!v10);
    v15 = v17;
LABEL_13:
    v18 = *(v5 + 48);
    v69 = v15;
    v19 = (v18 + ((v15 << 10) | (16 * __clz(__rbit64(v10)))));
    v21 = *v19;
    v20 = v19[1];
    v22 = *(v4 + 40);
    sub_1DEF8E7A8();
    if (v20)
    {
      MEMORY[0x1E12CBF60](1);

      sub_1DEF8D9B8();
    }

    else
    {
      MEMORY[0x1E12CBF60](0);
    }

    v10 &= v10 - 1;
    v23 = sub_1DEF8E7F8();
    v24 = -1 << *(v4 + 32);
    v7 = v23 & ~v24;
    v2 = v7 >> 6;
    v5 = 1 << v7;
    if (((1 << v7) & v12[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v66;
    v4 = v67;
    v7 = v68;
    v15 = v69;
  }

  v25 = v4;
  v26 = ~v24;
  v3 = *(v25 + 48);
  while (1)
  {
    v27 = (v3 + 16 * v7);
    v28 = v27[1];
    if (!v28)
    {
      break;
    }

    if (v20)
    {
      v29 = *v27 == v21 && v28 == v20;
      if (v29 || (v23 = sub_1DEF8E4E8(), (v23 & 1) != 0))
      {
        v3 = v66;
        v30 = v68;
        v72 = v65;
        v73 = v69;
        v74 = v10;
        v70 = v66;
        v71 = v68;
        v31 = v69;

        goto LABEL_31;
      }
    }

LABEL_19:
    v7 = (v7 + 1) & v26;
    v2 = v7 >> 6;
    v5 = 1 << v7;
    if ((v12[v7 >> 6] & (1 << v7)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (v20)
  {
    goto LABEL_19;
  }

  v3 = v66;
  v30 = v68;
  v31 = v69;
  v72 = v65;
  v73 = v69;
  v74 = v10;
  v70 = v66;
  v71 = v68;
LABEL_31:
  v4 = v67;
  v32 = *(v67 + 32);
  v61 = ((1 << v32) + 63) >> 6;
  v14 = 8 * v61;
  if ((v32 & 0x3Fu) > 0xD)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v62 = &v59;
    MEMORY[0x1EEE9AC00](v23);
    v7 = &v59 - ((v33 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v7, v12, v33);
    v34 = *(v7 + 8 * v2) & ~v5;
    v35 = *(v4 + 16);
    v64 = v7;
    *(v7 + 8 * v2) = v34;
    v36 = v35 - 1;
LABEL_33:
    v63 = v36;
LABEL_35:
    while (2)
    {
      if (v10)
      {
LABEL_41:
        v39 = *(v3 + 48);
        v69 = v31;
        v40 = (v39 + ((v31 << 10) | (16 * __clz(__rbit64(v10)))));
        v42 = *v40;
        v41 = v40[1];
        v43 = *(v4 + 40);
        sub_1DEF8E7A8();
        if (v41)
        {
          MEMORY[0x1E12CBF60](1);

          sub_1DEF8D9B8();
        }

        else
        {
          MEMORY[0x1E12CBF60](0);
        }

        v10 &= v10 - 1;
        v44 = sub_1DEF8E7F8();
        v45 = -1 << *(v4 + 32);
        v7 = v44 & ~v45;
        v5 = v7 >> 6;
        v2 = 1 << v7;
        if (((1 << v7) & v12[v7 >> 6]) == 0)
        {
LABEL_34:

          v3 = v66;
          v4 = v67;
          v30 = v68;
          v31 = v69;
          continue;
        }

        v46 = ~v45;
        v47 = *(v4 + 48);
        while (1)
        {
          v48 = (v47 + 16 * v7);
          v49 = v48[1];
          if (v49)
          {
            if (v41)
            {
              v50 = *v48 == v42 && v49 == v41;
              if (v50 || (sub_1DEF8E4E8() & 1) != 0)
              {

LABEL_56:
                v51 = v64[v5];
                v64[v5] = v51 & ~v2;
                v3 = v66;
                v4 = v67;
                v30 = v68;
                v31 = v69;
                if ((v51 & v2) != 0)
                {
                  v36 = v63 - 1;
                  if (__OFSUB__(v63, 1))
                  {
                    __break(1u);
                  }

                  if (v63 == 1)
                  {

                    v4 = MEMORY[0x1E69E7CD0];
                    goto LABEL_61;
                  }

                  goto LABEL_33;
                }

                goto LABEL_35;
              }
            }
          }

          else if (!v41)
          {
            goto LABEL_56;
          }

          v7 = (v7 + 1) & v46;
          v5 = v7 >> 6;
          v2 = 1 << v7;
          if ((v12[v7 >> 6] & (1 << v7)) == 0)
          {
            goto LABEL_34;
          }
        }
      }

      break;
    }

    v37 = v31;
    while (1)
    {
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v38 >= v11)
      {
        v4 = sub_1DEECD234(v64, v61, v63, v4);
        goto LABEL_61;
      }

      v10 = *(v30 + 8 * v38);
      ++v37;
      if (v10)
      {
        v31 = v38;
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    v54 = v14;

    v55 = v4;
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v30 = v68;
    v31 = v69;
  }

  v56 = swift_slowAlloc();
  memcpy(v56, v12, v54);
  v57 = v60;
  v58 = sub_1DEECC2F0(v56, v61, v55, v7, &v70);

  if (!v57)
  {

    MEMORY[0x1E12CCD70](v56, -1, -1);
    v65 = v72;
    v4 = v58;
    goto LABEL_61;
  }

  result = MEMORY[0x1E12CCD70](v56, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1DEECA55C(uint64_t a1, uint64_t a2)
{
  v125[2] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for PairingRelationship();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v7);
  v121 = &v100[-v8];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v100[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v100[-v14];
  if (*(a2 + 16))
  {
    v107 = v13;
    v125[0] = a1;
    v16 = *(a1 + 16);
    v108 = a1;

    v109 = v16;
    if (v16)
    {
      v17 = 0;
      v113 = v108 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v18 = *(v5 + 72);
      v122 = (a2 + 56);
      v123 = v18;
      v116 = a2;
      do
      {
        v19 = v17 + 1;
        v125[1] = v17 + 1;
        sub_1DEECF44C(v113 + v123 * v17, v15, type metadata accessor for PairingRelationship);
        v20 = *(a2 + 40);
        sub_1DEF8E7A8();
        v21 = sub_1DEF8D3F8();
        v22 = sub_1DEE1B968(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
        v111 = v21;
        v110 = v22;
        sub_1DEF8D8C8();
        v23 = v4[5];
        DeviceDescriptor.hash(into:)(v124);
        v24 = v4[6];
        v25 = sub_1DEF8D378();
        v26 = sub_1DEE1B968(&qword_1ECDE42F8, MEMORY[0x1E6969530]);
        v120 = v24;
        sub_1DEF8D8C8();
        v119 = v4[7];
        sub_1DEF8D8C8();
        v117 = &v15[v4[8]];
        v118 = v19;
        v27 = v117[1];
        if (v27 > 1)
        {
          if (v27 == 2)
          {
            v28 = 2;
          }

          else
          {
            if (v27 != 3)
            {
LABEL_12:
              v29 = *v117;
              MEMORY[0x1E12CBF60](3);
              a2 = v116;
              sub_1DEF8D9B8();
              goto LABEL_16;
            }

            v28 = 4;
          }
        }

        else if (v27)
        {
          if (v27 != 1)
          {
            goto LABEL_12;
          }

          v28 = 1;
        }

        else
        {
          v28 = 0;
        }

        MEMORY[0x1E12CBF60](v28);
LABEL_16:
        v115 = v4[9];
        v112 = v25;
        v114 = v26;
        sub_1DEF8D8C8();
        v30 = sub_1DEF8E7F8();
        v31 = -1 << *(a2 + 32);
        v32 = v30 & ~v31;
        v33 = v32 >> 6;
        v34 = 1 << v32;
        if (((1 << v32) & *(v122 + (v32 >> 6))) != 0)
        {
          v35 = ~v31;
          do
          {
            sub_1DEECF44C(*(a2 + 48) + v32 * v123, v11, type metadata accessor for PairingRelationship);
            if ((sub_1DEF8D3A8() & 1) == 0)
            {
              goto LABEL_44;
            }

            if (!_s16ReplicatorEngine16DeviceDescriptorV2eeoiySbAC_ACtFZ_0(&v11[v4[5]], &v15[v23]))
            {
              goto LABEL_44;
            }

            v36 = &v11[v4[6]];
            if ((sub_1DEF8D338() & 1) == 0)
            {
              goto LABEL_44;
            }

            v37 = &v11[v4[7]];
            if ((sub_1DEF8D338() & 1) == 0)
            {
              goto LABEL_44;
            }

            v38 = &v11[v4[8]];
            v39 = *v38;
            v40 = v38[1];
            v41 = *v117;
            v42 = v117[1];
            if (v40 > 1)
            {
              if (v40 == 2)
              {
                if (v42 != 2)
                {
                  v47 = *v38;
                  v48 = *v117;
                  sub_1DEE4F8C0(*v117, v117[1]);
                  v40 = 2;
                  goto LABEL_43;
                }

                v49 = *v117;
                sub_1DEE4F8D4(v39, 2uLL);
                v44 = v49;
                v45 = 2;
                goto LABEL_48;
              }

              if (v40 == 3)
              {
                if (v42 != 3)
                {
                  v47 = *v38;
                  v48 = *v117;
                  sub_1DEE4F8C0(*v117, v117[1]);
                  v40 = 3;
                  goto LABEL_43;
                }

                v46 = *v117;
                sub_1DEE4F8D4(v39, 3uLL);
                v44 = v46;
                v45 = 3;
                goto LABEL_48;
              }
            }

            else
            {
              if (!v40)
              {
                if (v42)
                {
                  v47 = *v38;
                  v48 = *v117;
                  sub_1DEE4F8C0(*v117, v117[1]);
                  v40 = 0;
                  goto LABEL_43;
                }

                v51 = *v117;
                sub_1DEE4F8D4(v39, 0);
                v44 = v51;
                v45 = 0;
                goto LABEL_48;
              }

              if (v40 == 1)
              {
                if (v42 != 1)
                {
                  v47 = *v38;
                  v48 = *v117;
                  sub_1DEE4F8C0(*v117, v117[1]);
                  v40 = 1;
                  goto LABEL_43;
                }

                v43 = *v117;
                sub_1DEE4F8D4(v39, 1uLL);
                v44 = v43;
                v45 = 1;
                goto LABEL_48;
              }
            }

            if (v42 < 4)
            {
              v47 = *v38;
              v48 = *v117;
              sub_1DEE4F8C0(*v117, v117[1]);
              sub_1DEE4F8C0(v47, v40);
LABEL_43:
              sub_1DEE4F8D4(v47, v40);
              sub_1DEE4F8D4(v48, v42);
              a2 = v116;
LABEL_44:
              sub_1DEECF3EC(v11, type metadata accessor for PairingRelationship);
              goto LABEL_45;
            }

            if (v39 == v41 && v40 == v42)
            {
              v50 = *v38;
              sub_1DEE4F8C0(v39, v40);
              sub_1DEE4F8C0(v50, v40);
              sub_1DEE4F8D4(v50, v40);
              v44 = v50;
              v45 = v40;
LABEL_48:
              sub_1DEE4F8D4(v44, v45);
              a2 = v116;
              goto LABEL_49;
            }

            v105 = *v38;
            v106 = v41;
            LODWORD(v104) = sub_1DEF8E4E8();
            sub_1DEE4F8C0(v106, v42);
            sub_1DEE4F8C0(v105, v40);
            sub_1DEE4F8D4(v105, v40);
            sub_1DEE4F8D4(v106, v42);
            a2 = v116;
            if ((v104 & 1) == 0)
            {
              goto LABEL_44;
            }

LABEL_49:
            v52 = &v11[v4[9]];
            v53 = sub_1DEF8D338();
            sub_1DEECF3EC(v11, type metadata accessor for PairingRelationship);
            if (v53)
            {
              v54 = sub_1DEECF3EC(v15, type metadata accessor for PairingRelationship);
              v55 = *(a2 + 32);
              v56 = ((1 << v55) + 63) >> 6;
              v57 = 8 * v56;
              if ((v55 & 0x3Fu) > 0xD)
              {
                goto LABEL_119;
              }

              while (1)
              {
                v102 = v56;
                v103 = v100;
                MEMORY[0x1EEE9AC00](v54);
                v59 = &v100[-((v58 + 15) & 0x3FFFFFFFFFFFFFF0)];
                memcpy(v59, v122, v58);
                v60 = *(a2 + 16);
                v61 = *&v59[8 * v33] & ~v34;
                v104 = v59;
                *&v59[8 * v33] = v61;
                v105 = v60 - 1;
                v62 = v108;
                v33 = v118;
                v109 = *(v108 + 16);
                v63 = v107;
                if (v118 == v109)
                {
                  goto LABEL_58;
                }

                v56 = 1;
                v32 = v121;
                v34 = v112;
LABEL_61:
                if (v33 < *(v62 + 16))
                {
                  break;
                }

                __break(1u);
LABEL_119:
                v95 = v57;

                v96 = v95;
                if (!swift_stdlib_isStackAllocationSafe())
                {
                  v97 = swift_slowAlloc();
                  memcpy(v97, v122, v96);
                  sub_1DEECC53C(v97, v56, a2, v32, v125);
                  v99 = v98;

                  MEMORY[0x1E12CCD70](v97, -1, -1);
                  a2 = v99;
                  goto LABEL_59;
                }
              }

              sub_1DEECF44C(v113 + v33 * v123, v32, type metadata accessor for PairingRelationship);
              v66 = *(a2 + 40);
              sub_1DEF8E7A8();
              sub_1DEF8D8C8();
              v67 = v4[5];
              DeviceDescriptor.hash(into:)(v124);
              v120 = v4[6];
              sub_1DEF8D8C8();
              v119 = v4[7];
              sub_1DEF8D8C8();
              v117 = &v121[v4[8]];
              v118 = v33;
              v68 = v117[1];
              if (v68 > 1)
              {
                if (v68 == 2)
                {
                  v69 = 2;
                }

                else
                {
                  if (v68 != 3)
                  {
                    goto LABEL_69;
                  }

                  v69 = 4;
                }
              }

              else
              {
                if (v68)
                {
                  if (v68 == 1)
                  {
                    v69 = 1;
                    goto LABEL_72;
                  }

LABEL_69:
                  v70 = *v117;
                  MEMORY[0x1E12CBF60](3);
                  a2 = v116;
                  sub_1DEF8D9B8();
LABEL_73:
                  v115 = v4[9];
                  sub_1DEF8D8C8();
                  v71 = sub_1DEF8E7F8();
                  v72 = -1 << *(a2 + 32);
                  v73 = v71 & ~v72;
                  v74 = v73 >> 6;
                  v75 = 1 << v73;
                  if (((1 << v73) & *(v122 + (v73 >> 6))) == 0)
                  {
LABEL_110:
                    v32 = v121;
                    sub_1DEECF3EC(v121, type metadata accessor for PairingRelationship);
                    v62 = v108;
                    goto LABEL_111;
                  }

                  v76 = ~v72;
                  while (2)
                  {
                    sub_1DEECF44C(*(a2 + 48) + v73 * v123, v63, type metadata accessor for PairingRelationship);
                    v77 = v121;
                    if ((sub_1DEF8D3A8() & 1) == 0)
                    {
                      goto LABEL_101;
                    }

                    if (!_s16ReplicatorEngine16DeviceDescriptorV2eeoiySbAC_ACtFZ_0(v63 + v4[5], &v77[v67]))
                    {
                      goto LABEL_101;
                    }

                    v78 = v63 + v4[6];
                    if ((sub_1DEF8D338() & 1) == 0)
                    {
                      goto LABEL_101;
                    }

                    v79 = v63 + v4[7];
                    if ((sub_1DEF8D338() & 1) == 0)
                    {
                      goto LABEL_101;
                    }

                    v80 = (v63 + v4[8]);
                    v81 = *v80;
                    v82 = v80[1];
                    v83 = *v117;
                    v84 = v117[1];
                    if (v82 > 1)
                    {
                      if (v82 == 2)
                      {
                        if (v84 != 2)
                        {
                          v88 = *v80;
                          sub_1DEE4F8C0(*v117, v117[1]);
                          v82 = 2;
                          goto LABEL_100;
                        }

                        sub_1DEE4F8D4(v81, 2uLL);
                        v85 = v83;
                        v86 = 2;
                      }

                      else
                      {
                        if (v82 != 3)
                        {
                          goto LABEL_88;
                        }

                        if (v84 != 3)
                        {
                          v88 = *v80;
                          sub_1DEE4F8C0(*v117, v117[1]);
                          v82 = 3;
                          goto LABEL_100;
                        }

                        sub_1DEE4F8D4(v81, 3uLL);
                        v85 = v83;
                        v86 = 3;
                      }
                    }

                    else
                    {
                      if (v82)
                      {
                        if (v82 == 1)
                        {
                          if (v84 == 1)
                          {
                            sub_1DEE4F8D4(v81, 1uLL);
                            v85 = v83;
                            v86 = 1;
                            break;
                          }

                          v88 = *v80;
                          sub_1DEE4F8C0(*v117, v117[1]);
                          v82 = 1;
LABEL_100:
                          sub_1DEE4F8D4(v88, v82);
                          sub_1DEE4F8D4(v83, v84);
                          a2 = v116;
                          v63 = v107;
LABEL_101:
                          sub_1DEECF3EC(v63, type metadata accessor for PairingRelationship);
LABEL_102:
                          v73 = (v73 + 1) & v76;
                          v74 = v73 >> 6;
                          v75 = 1 << v73;
                          if ((*(v122 + (v73 >> 6)) & (1 << v73)) == 0)
                          {
                            goto LABEL_110;
                          }

                          continue;
                        }

LABEL_88:
                        if (v84 < 4)
                        {
                          v87 = *v80;
                          sub_1DEE4F8C0(*v117, v117[1]);
                          v88 = v87;
                          sub_1DEE4F8C0(v87, v82);
                          goto LABEL_100;
                        }

                        if (v81 == v83 && v82 == v84)
                        {
                          v89 = *v80;
                          sub_1DEE4F8C0(v81, v82);
                          sub_1DEE4F8C0(v89, v82);
                          sub_1DEE4F8D4(v89, v82);
                          v85 = v89;
                          v86 = v82;
                          break;
                        }

                        v106 = *v80;
                        v101 = sub_1DEF8E4E8();
                        sub_1DEE4F8C0(v83, v84);
                        sub_1DEE4F8C0(v106, v82);
                        sub_1DEE4F8D4(v106, v82);
                        sub_1DEE4F8D4(v83, v84);
                        a2 = v116;
                        v63 = v107;
                        if ((v101 & 1) == 0)
                        {
                          goto LABEL_101;
                        }

LABEL_106:
                        v90 = v63 + v4[9];
                        v91 = sub_1DEF8D338();
                        sub_1DEECF3EC(v63, type metadata accessor for PairingRelationship);
                        if (v91)
                        {
                          v32 = v121;
                          sub_1DEECF3EC(v121, type metadata accessor for PairingRelationship);
                          v93 = v104[v74];
                          v104[v74] = v93 & ~v75;
                          v62 = v108;
                          if ((v93 & v75) != 0)
                          {
                            v94 = v105 - 1;
                            v92 = v118;
                            v34 = v112;
                            if (__OFSUB__(v105, 1))
                            {
                              __break(1u);
                            }

                            --v105;
                            if (!v94)
                            {

                              a2 = MEMORY[0x1E69E7CD0];
                              goto LABEL_59;
                            }

LABEL_112:
                            v33 = v92 + 1;
                            if (v33 == v109)
                            {
LABEL_58:
                              a2 = sub_1DEECD474(v104, v102, v105, a2);
                              goto LABEL_59;
                            }

                            goto LABEL_61;
                          }

LABEL_111:
                          v92 = v118;
                          v34 = v112;
                          goto LABEL_112;
                        }

                        goto LABEL_102;
                      }

                      if (v84)
                      {
                        v88 = *v80;
                        sub_1DEE4F8C0(*v117, v117[1]);
                        v82 = 0;
                        goto LABEL_100;
                      }

                      sub_1DEE4F8D4(v81, 0);
                      v85 = v83;
                      v86 = 0;
                    }

                    break;
                  }

                  sub_1DEE4F8D4(v85, v86);
                  a2 = v116;
                  v63 = v107;
                  goto LABEL_106;
                }

                v69 = 0;
              }

LABEL_72:
              MEMORY[0x1E12CBF60](v69);
              goto LABEL_73;
            }

LABEL_45:
            v32 = (v32 + 1) & v35;
            v33 = v32 >> 6;
            v34 = 1 << v32;
          }

          while ((*(v122 + (v32 >> 6)) & (1 << v32)) != 0);
        }

        sub_1DEECF3EC(v15, type metadata accessor for PairingRelationship);
        v17 = v118;
      }

      while (v118 != v109);
    }

LABEL_59:
  }

  else
  {

    a2 = MEMORY[0x1E69E7CD0];
  }

  v64 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t sub_1DEECB43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1DEE1B968(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
  v35 = a1;
  v13 = sub_1DEF8D8B8();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_1DEE1B968(&qword_1ECDE40E0, MEMORY[0x1E69695A8]);
      v22 = sub_1DEF8D908();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1DEEC5600();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_1DEECD63C(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_1DEECB6E4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  v7 = sub_1DEF8E7F8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1DEF8E4E8() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DEEC54A4();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1DEECD944(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_1DEECB820(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1DEF8E7A8();
  if (a2)
  {
    MEMORY[0x1E12CBF60](1);
    sub_1DEF8D9B8();
  }

  else
  {
    MEMORY[0x1E12CBF60](0);
  }

  v7 = sub_1DEF8E7F8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  v11 = *(v5 + 48);
  while (1)
  {
    v12 = (v11 + 16 * v9);
    v13 = v12[1];
    if (v13)
    {
      break;
    }

    if (!a2)
    {
      goto LABEL_15;
    }

LABEL_7:
    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  if (!a2)
  {
    goto LABEL_7;
  }

  v14 = *v12 == a1 && v13 == a2;
  if (!v14 && (sub_1DEF8E4E8() & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_15:
  v15 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v2;
  v22 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DEEC5AE0();
    v17 = v22;
  }

  v18 = (*(v17 + 48) + 16 * v9);
  v19 = *v18;
  v20 = v18[1];
  sub_1DEECDB08(v9);
  result = v19;
  *v2 = v22;
  return result;
}

unint64_t sub_1DEECB998@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1DEF8E7A8();
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v43 = *a1;
  sub_1DEF8D9B8();
  v38 = v7;
  v42 = v8;
  sub_1DEF8E7C8();
  if (v8)
  {
    sub_1DEF8D9B8();
  }

  v9 = *(a1 + 32);
  v11 = a1[5];
  v10 = a1[6];
  v41 = v9;
  MEMORY[0x1E12CBF90]();
  v40 = v11;
  MEMORY[0x1E12CBF90](v11);
  v39 = v10;
  MEMORY[0x1E12CBF90](v10);
  result = sub_1DEF8E7F8();
  v13 = v4 + 56;
  v14 = -1 << *(v4 + 32);
  v15 = result & ~v14;
  v17 = v42;
  v16 = v43;
  if (((*(v4 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_27:
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return result;
  }

  v18 = ~v14;
  v19 = *(v4 + 48);
  while (1)
  {
    v22 = v19 + 56 * v15;
    result = *v22;
    v24 = *(v22 + 16);
    v23 = *(v22 + 24);
    v25 = *(v22 + 32);
    v27 = *(v22 + 40);
    v26 = *(v22 + 48);
    if (*v22 != v16 || *(v22 + 8) != v6)
    {
      result = sub_1DEF8E4E8();
      v17 = v42;
      v16 = v43;
      if ((result & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    if (v23)
    {
      break;
    }

    if (!v17)
    {
      goto LABEL_6;
    }

LABEL_13:
    v15 = (v15 + 1) & v18;
    if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (!v17)
  {
    goto LABEL_13;
  }

  if (v24 != v38 || v23 != v17)
  {
    result = sub_1DEF8E4E8();
    v17 = v42;
    v16 = v43;
    if ((result & 1) == 0)
    {
      goto LABEL_13;
    }
  }

LABEL_6:
  if (v25 != v41 || v27 != v40 || v26 != v39)
  {
    goto LABEL_13;
  }

  v30 = *v36;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v36;
  v44 = *v36;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DEEC5E44();
    v32 = v44;
  }

  v33 = *(v32 + 48) + 56 * v15;
  v34 = *(v33 + 8);
  v35 = *(v33 + 32);
  *a2 = *v33;
  *(a2 + 8) = v34;
  *(a2 + 16) = *(v33 + 16);
  *(a2 + 32) = v35;
  *(a2 + 40) = *(v33 + 40);
  result = sub_1DEECDCF0(v15);
  *v36 = v44;
  return result;
}

uint64_t sub_1DEECBBE4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v49 - v11;
  v13 = sub_1DEF8D3F8();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v15);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v25 = *a5;
        v26 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v26 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v25 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v25;
        a5[1] = v26;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_1DEE171B4(v12, &unk_1ECDE3E80, &unk_1DEF90970);
          v48 = v64;

          return sub_1DEECCCE8(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_1DEE1B968(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
        v38 = sub_1DEF8D8B8();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        result = (v24)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_1DEE1B968(&qword_1ECDE40E0, MEMORY[0x1E69695A8]);
        v46 = sub_1DEF8D908();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v24)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t sub_1DEECC0B8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_1DEECD010(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_1DEF8E7A8();

        sub_1DEF8D9B8();
        v20 = sub_1DEF8E7F8();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_1DEF8E4E8() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x1E69E7CD0];
    }

    return result;
  }
}

uint64_t sub_1DEECC2F0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = a3;
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
LABEL_2:
  v31 = v8;
LABEL_4:
  while (2)
  {
    v10 = a5[3];
    v11 = a5[4];
    if (v11)
    {
      v12 = a5[3];
LABEL_10:
      v15 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
      v17 = *v15;
      v16 = v15[1];
      a5[3] = v12;
      a5[4] = (v11 - 1) & v11;
      v18 = *(v6 + 40);
      sub_1DEF8E7A8();
      if (v16)
      {
        MEMORY[0x1E12CBF60](1);

        sub_1DEF8D9B8();
      }

      else
      {
        MEMORY[0x1E12CBF60](0);
      }

      result = sub_1DEF8E7F8();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      v22 = 1 << v20;
      if (((1 << v20) & *(v9 + 8 * (v20 >> 6))) == 0)
      {
LABEL_3:

        v6 = a3;
        continue;
      }

      v23 = ~v19;
      v24 = *(v6 + 48);
      while (1)
      {
        v25 = (v24 + 16 * v20);
        v26 = v25[1];
        if (v26)
        {
          if (v16)
          {
            v27 = *v25 == v17 && v26 == v16;
            if (v27 || (result = sub_1DEF8E4E8(), (result & 1) != 0))
            {

LABEL_25:
              v28 = v32[v21];
              v32[v21] = v28 & ~v22;
              v6 = a3;
              if ((v28 & v22) != 0)
              {
                v8 = v31 - 1;
                if (__OFSUB__(v31, 1))
                {
LABEL_34:
                  __break(1u);
                  return result;
                }

                if (v31 == 1)
                {
                  return MEMORY[0x1E69E7CD0];
                }

                goto LABEL_2;
              }

              goto LABEL_4;
            }
          }
        }

        else if (!v16)
        {
          goto LABEL_25;
        }

        v20 = (v20 + 1) & v23;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if ((*(v9 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v13 = (a5[2] + 64) >> 6;
  v14 = a5[3];
  while (1)
  {
    v12 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v12 >= v13)
    {
      break;
    }

    v11 = *(a5[1] + 8 * v12);
    ++v14;
    if (v11)
    {
      goto LABEL_10;
    }
  }

  if (v13 <= v10 + 1)
  {
    v29 = v10 + 1;
  }

  else
  {
    v29 = (a5[2] + 64) >> 6;
  }

  a5[3] = v29 - 1;
  a5[4] = 0;

  return sub_1DEECD234(v32, a2, v31, v6);
}

void sub_1DEECC53C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v59 = a2;
  v75 = type metadata accessor for PairingRelationship();
  v66 = *(v75 - 1);
  v9 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v11 = &v57[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v57[-v13];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57[-v15];
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18) & ((-1 << a4) - 1);
  v60 = a1;
  *(a1 + v18) = v19;
  v61 = v17 - 1;
  v20 = *a5;
  v21 = a5[1];
  v22 = *(*a5 + 16);
  if (v21 == v22)
  {
LABEL_2:

    sub_1DEECD474(v60, v59, v61, a3);
    return;
  }

  v73 = a3 + 56;
  v64 = a5;
  while (2)
  {
    if (v21 >= v22)
    {
      __break(1u);
LABEL_62:
      __break(1u);
      return;
    }

    v23 = v65;
    v24 = *(v66 + 72);
    sub_1DEECF44C(v20 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + v24 * v21, v65, type metadata accessor for PairingRelationship);
    a5[1] = v21 + 1;
    sub_1DEECF4B4(v23, v16, type metadata accessor for PairingRelationship);
    v25 = *(a3 + 40);
    sub_1DEF8E7A8();
    sub_1DEF8D3F8();
    sub_1DEE1B968(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
    sub_1DEF8D8C8();
    v26 = v75;
    v72 = v75[5];
    DeviceDescriptor.hash(into:)(v74);
    v27 = v26[6];
    sub_1DEF8D378();
    sub_1DEE1B968(&qword_1ECDE42F8, MEMORY[0x1E6969530]);
    v71 = v27;
    sub_1DEF8D8C8();
    v70 = v26[7];
    sub_1DEF8D8C8();
    v69 = &v16[v26[8]];
    v28 = v69[1];
    if (v28 > 1)
    {
      if (v28 == 2)
      {
        v29 = 2;
        goto LABEL_15;
      }

      if (v28 == 3)
      {
        v29 = 4;
        goto LABEL_15;
      }
    }

    else
    {
      if (!v28)
      {
        v29 = 0;
        goto LABEL_15;
      }

      if (v28 == 1)
      {
        v29 = 1;
LABEL_15:
        MEMORY[0x1E12CBF60](v29);
        goto LABEL_16;
      }
    }

    v30 = *v69;
    MEMORY[0x1E12CBF60](3);
    sub_1DEF8D9B8();
LABEL_16:
    v67 = v75[9];
    sub_1DEF8D8C8();
    v31 = sub_1DEF8E7F8();
    v32 = a3;
    v33 = -1 << *(a3 + 32);
    v34 = v31 & ~v33;
    v35 = v34 >> 6;
    v36 = 1 << v34;
    if (((1 << v34) & *(v73 + 8 * (v34 >> 6))) == 0)
    {
LABEL_53:
      sub_1DEECF3EC(v16, type metadata accessor for PairingRelationship);
LABEL_54:
      a3 = v32;
      a5 = v64;
      goto LABEL_55;
    }

    v37 = ~v33;
    while (1)
    {
      sub_1DEECF44C(*(v32 + 48) + v34 * v24, v11, type metadata accessor for PairingRelationship);
      if ((sub_1DEF8D3A8() & 1) == 0)
      {
        goto LABEL_44;
      }

      if (!_s16ReplicatorEngine16DeviceDescriptorV2eeoiySbAC_ACtFZ_0(&v11[v75[5]], &v16[v72]))
      {
        goto LABEL_44;
      }

      v38 = &v11[v75[6]];
      if ((sub_1DEF8D338() & 1) == 0)
      {
        goto LABEL_44;
      }

      v39 = &v11[v75[7]];
      if ((sub_1DEF8D338() & 1) == 0)
      {
        goto LABEL_44;
      }

      v40 = &v11[v75[8]];
      v41 = *v40;
      v42 = v40[1];
      v44 = *v69;
      v43 = v69[1];
      if (v42 > 1)
      {
        if (v42 == 2)
        {
          if (v43 == 2)
          {
            v51 = *v69;
            sub_1DEE4F8D4(v41, 2uLL);
            v46 = v51;
            v47 = 2;
            goto LABEL_48;
          }

          v68 = v41;
          v49 = v44;
          v50 = v43;
          sub_1DEE4F8C0(v44, v43);
          v42 = 2;
          goto LABEL_43;
        }

        if (v42 == 3)
        {
          if (v43 == 3)
          {
            v48 = *v69;
            sub_1DEE4F8D4(v41, 3uLL);
            v46 = v48;
            v47 = 3;
            goto LABEL_48;
          }

          v68 = v41;
          v49 = v44;
          v50 = v43;
          sub_1DEE4F8C0(v44, v43);
          v42 = 3;
          goto LABEL_43;
        }

        goto LABEL_31;
      }

      if (!v42)
      {
        break;
      }

      if (v42 == 1)
      {
        if (v43 == 1)
        {
          v45 = *v69;
          sub_1DEE4F8D4(v41, 1uLL);
          v46 = v45;
          v47 = 1;
          goto LABEL_48;
        }

        v68 = v41;
        v49 = v44;
        v50 = v43;
        sub_1DEE4F8C0(v44, v43);
        v42 = 1;
        goto LABEL_43;
      }

LABEL_31:
      v68 = v41;
      if (v43 < 4)
      {
        v49 = v44;
        v50 = v43;
        sub_1DEE4F8C0(v44, v43);
        sub_1DEE4F8C0(v68, v42);
LABEL_43:
        sub_1DEE4F8D4(v68, v42);
        sub_1DEE4F8D4(v49, v50);
        goto LABEL_44;
      }

      if (v41 == v44 && v42 == v43)
      {
        sub_1DEE4F8C0(v41, v42);
        sub_1DEE4F8C0(v68, v42);
        sub_1DEE4F8D4(v68, v42);
        v46 = v68;
        v47 = v42;
        goto LABEL_48;
      }

      v62 = v43;
      v63 = v44;
      v58 = sub_1DEF8E4E8();
      sub_1DEE4F8C0(v63, v62);
      sub_1DEE4F8C0(v68, v42);
      sub_1DEE4F8D4(v68, v42);
      sub_1DEE4F8D4(v63, v62);
      if (v58)
      {
        goto LABEL_49;
      }

LABEL_44:
      sub_1DEECF3EC(v11, type metadata accessor for PairingRelationship);
LABEL_45:
      v34 = (v34 + 1) & v37;
      v35 = v34 >> 6;
      v36 = 1 << v34;
      if ((*(v73 + 8 * (v34 >> 6)) & (1 << v34)) == 0)
      {
        goto LABEL_53;
      }
    }

    if (v43)
    {
      v68 = v41;
      v49 = v44;
      v50 = v43;
      sub_1DEE4F8C0(v44, v43);
      v42 = 0;
      goto LABEL_43;
    }

    v52 = *v69;
    sub_1DEE4F8D4(v41, 0);
    v46 = v52;
    v47 = 0;
LABEL_48:
    sub_1DEE4F8D4(v46, v47);
LABEL_49:
    v53 = &v11[v75[9]];
    v54 = sub_1DEF8D338();
    sub_1DEECF3EC(v11, type metadata accessor for PairingRelationship);
    if ((v54 & 1) == 0)
    {
      goto LABEL_45;
    }

    sub_1DEECF3EC(v16, type metadata accessor for PairingRelationship);
    v55 = v60[v35];
    v60[v35] = v55 & ~v36;
    if ((v55 & v36) == 0)
    {
      goto LABEL_54;
    }

    v56 = v61 - 1;
    if (__OFSUB__(v61, 1))
    {
      goto LABEL_62;
    }

    a3 = v32;
    a5 = v64;
    --v61;
    if (v56)
    {
LABEL_55:
      v20 = *a5;
      v21 = a5[1];
      v22 = *(*a5 + 16);
      if (v21 == v22)
      {
        goto LABEL_2;
      }

      continue;
    }

    break;
  }
}

uint64_t sub_1DEECCCE8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = sub_1DEF8D3F8();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE42D0, &qword_1DEF91E48);
  result = sub_1DEF8DF08();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_1DEE1B968(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
    result = sub_1DEF8D8B8();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1DEECD010(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4298, &qword_1DEF91E10);
  result = sub_1DEF8DF08();
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
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_1DEF8E7A8();

    sub_1DEF8D9B8();
    result = sub_1DEF8E7F8();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1DEECD234(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4250, &qword_1DEF91DE0);
  result = sub_1DEF8DF08();
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
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v18 = *v16;
    v17 = v16[1];
    v19 = *(v9 + 40);
    sub_1DEF8E7A8();
    if (v17)
    {
      MEMORY[0x1E12CBF60](1);

      sub_1DEF8D9B8();
    }

    else
    {
      MEMORY[0x1E12CBF60](0);
    }

    result = sub_1DEF8E7F8();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_30;
        }
      }

      goto LABEL_34;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_30:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v18;
    v28[1] = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_35;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1DEECD474(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PairingRelationship();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4300, &qword_1DEF91E70);
  result = sub_1DEF8DF08();
  v13 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_16:
    sub_1DEECF44C(*(a4 + 48) + *(v9 + 72) * (v17 | (v16 << 6)), v12, type metadata accessor for PairingRelationship);
    result = sub_1DEEC524C(v12, v13);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    if (!a3)
    {
LABEL_18:

      return v13;
    }
  }

  v18 = v16;
  while (1)
  {
    v16 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      goto LABEL_18;
    }

    v19 = a1[v16];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1DEECD63C(int64_t a1)
{
  v3 = sub_1DEF8D3F8();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = MEMORY[0x1EEE9AC00](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_1DEF8DE28();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_1DEE1B968(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
        v27 = sub_1DEF8D8B8();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t sub_1DEECD944(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1DEF8DE28();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1DEF8E7A8();

        sub_1DEF8D9B8();
        v15 = sub_1DEF8E7F8();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1DEECDB08(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1DEF8DE28();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v14 = *v12;
        v13 = v12[1];
        sub_1DEF8E7A8();
        if (v13)
        {
          MEMORY[0x1E12CBF60](1);

          sub_1DEF8D9B8();
        }

        else
        {
          MEMORY[0x1E12CBF60](0);
        }

        v15 = sub_1DEF8E7F8();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_14;
        }

        if (v2 >= v16)
        {
LABEL_14:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1DEECDCF0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1DEF8DE28();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v32 = v3;
      v33 = v4;
      v31 = (v9 + 1) & v7;
      do
      {
        v13 = v2;
        v14 = *(v3 + 40);
        v15 = *(v3 + 48) + 56 * v6;
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        v19 = *(v15 + 24);
        v20 = *(v15 + 32);
        v22 = *(v15 + 40);
        v21 = *(v15 + 48);
        sub_1DEF8E7A8();

        sub_1DEF8D9B8();
        sub_1DEF8E7C8();
        if (v19)
        {
          sub_1DEF8D9B8();
        }

        MEMORY[0x1E12CBF90](v20);
        MEMORY[0x1E12CBF90](v22);
        MEMORY[0x1E12CBF90](v21);
        v23 = sub_1DEF8E7F8();

        v24 = v23 & v7;
        v2 = v13;
        if (v13 >= v31)
        {
          v3 = v32;
          v4 = v33;
          if (v24 < v31)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v3 = v32;
          v4 = v33;
          if (v24 >= v31)
          {
            goto LABEL_13;
          }
        }

        if (v2 >= v24)
        {
LABEL_13:
          v25 = *(v3 + 48);
          v26 = v25 + 56 * v2;
          v27 = (v25 + 56 * v6);
          if (v2 != v6 || v26 >= v27 + 56)
          {
            v10 = *v27;
            v11 = v27[1];
            v12 = v27[2];
            *(v26 + 48) = *(v27 + 6);
            *(v26 + 16) = v11;
            *(v26 + 32) = v12;
            *v26 = v10;
            v2 = v6;
          }
        }

LABEL_5:
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

  v28 = *(v3 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v30;
    ++*(v3 + 36);
  }

  return result;
}

void (*sub_1DEECDF5C(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x68uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = sub_1DEF8D3F8();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v7[9] = v9;
  if (v5)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v9 + 64));
  }

  v12 = v11;
  v7[10] = v11;
  v13 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v10 + 16))(v12, a2, v8);
  v7[11] = sub_1DEECE6F0(v7);
  v7[12] = sub_1DEECE130(v7 + 4, v12, isUniquelyReferenced_nonNull_native);
  return sub_1DEECE098;
}

void sub_1DEECE098(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_1DEECE130(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x78uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a2;
  v8[1] = v3;
  v10 = sub_1DEF8D3F8();
  v9[2] = v10;
  v11 = *(v10 - 8);
  v9[3] = v11;
  if (v7)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  v9[4] = v12;
  v13 = type metadata accessor for NetworkBrowser.Monitor();
  v9[5] = v13;
  v14 = *(v13 - 8);
  v15 = v14;
  v9[6] = v14;
  v16 = *(v14 + 64);
  if (v7)
  {
    v9[7] = swift_coroFrameAlloc();
    v9[8] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v9[7] = malloc(*(v14 + 64));
    v9[8] = malloc(v16);
    v17 = malloc(v16);
  }

  v9[9] = v17;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4200, &unk_1DEF91DB0) - 8) + 64);
  if (v7)
  {
    v9[10] = swift_coroFrameAlloc();
    v9[11] = swift_coroFrameAlloc();
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v9[10] = malloc(v18);
    v9[11] = malloc(v18);
    v19 = malloc(v18);
  }

  v20 = v19;
  v9[12] = v19;
  v21 = *v4;
  v23 = sub_1DEEAF350(a2);
  *(v9 + 112) = v22 & 1;
  v24 = *(v21 + 16);
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    __break(1u);
    goto LABEL_26;
  }

  v27 = v22;
  v28 = *(v21 + 24);
  if (v28 < v26 || (a3 & 1) == 0)
  {
    if (v28 >= v26 && (a3 & 1) == 0)
    {
      sub_1DEEB8F5C();
      goto LABEL_21;
    }

    sub_1DEEB432C(v26, a3 & 1);
    v29 = *v4;
    v30 = sub_1DEEAF350(a2);
    if ((v27 & 1) == (v31 & 1))
    {
      v23 = v30;
      goto LABEL_21;
    }

LABEL_26:
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

LABEL_21:
  v9[13] = v23;
  if (v27)
  {
    sub_1DEECF4B4(*(*v4 + 56) + *(v15 + 72) * v23, v20, type metadata accessor for NetworkBrowser.Monitor);
    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  (*(v15 + 56))(v20, v32, 1, v13);
  return sub_1DEECE460;
}

void sub_1DEECE460(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = (*(*a1 + 48) + 48);
  v5 = *(*a1 + 96);
  if (a2)
  {
    v6 = v2[10];
    sub_1DEE17214(v5, v6, &unk_1ECDE4200, &unk_1DEF91DB0);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[10];
    if (v7 != 1)
    {
      v10 = v2[1];
      sub_1DEECF4B4(v9, v2[8], type metadata accessor for NetworkBrowser.Monitor);
      v11 = *v10;
      v12 = v2[13];
      v13 = v2[8];
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = v2[7];
        v15 = v2[4];
        (*(v2[3] + 16))(v15, *v2, v2[2]);
        sub_1DEECF4B4(v13, v14, type metadata accessor for NetworkBrowser.Monitor);
        sub_1DEF408A8(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = v2[11];
    sub_1DEE17214(v5, v16, &unk_1ECDE4200, &unk_1DEF91DB0);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[11];
    if (v17 != 1)
    {
      v20 = v2[1];
      sub_1DEECF4B4(v9, v2[9], type metadata accessor for NetworkBrowser.Monitor);
      v11 = *v20;
      v12 = v2[13];
      v13 = v2[9];
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_1DEECF4B4(v13, v11[7] + *(v2[6] + 72) * v12, type metadata accessor for NetworkBrowser.Monitor);
      goto LABEL_10;
    }
  }

  sub_1DEE171B4(v9, &unk_1ECDE4200, &unk_1DEF91DB0);
  if (v8)
  {
    v18 = v2[13];
    v19 = *v2[1];
    (*(v2[3] + 8))(*(v19 + 48) + *(v2[3] + 72) * v18, v2[2]);
    sub_1DEF77028(v18, v19);
  }

LABEL_10:
  v21 = v2[11];
  v22 = v2[12];
  v24 = v2[9];
  v23 = v2[10];
  v26 = v2[7];
  v25 = v2[8];
  v27 = v2[4];
  sub_1DEE171B4(v22, &unk_1ECDE4200, &unk_1DEF91DB0);
  free(v22);
  free(v21);
  free(v23);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

uint64_t (*sub_1DEECE6F0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1DEECE718;
}

uint64_t sub_1DEECE724(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a4;
  v15 = sub_1DEEAF350(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1DEEB9288();
      goto LABEL_7;
    }

    sub_1DEEB47CC(v18, a3 & 1);
    v25 = *a4;
    v26 = sub_1DEEAF350(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *a4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1DEECEADC(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1DEF8E6E8();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *a4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;

  return swift_unknownObjectRelease();
}

unint64_t sub_1DEECE95C()
{
  result = qword_1ECDE2C50;
  if (!qword_1ECDE2C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECDE4210, &unk_1DEF90800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2C50);
  }

  return result;
}

void sub_1DEECE9C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

unint64_t sub_1DEECEA24()
{
  result = qword_1ECDE4248;
  if (!qword_1ECDE4248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4248);
  }

  return result;
}

uint64_t sub_1DEECEA78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkBrowser.Monitor();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEECEADC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1DEF8D3F8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void sub_1DEECEBB0(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v53 = a2;
  v56 = a4;
  v54 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
  v7 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v72 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v71 = &v52 - v10;
  v11 = type metadata accessor for NetworkBrowser.Monitor();
  v64 = *(v11 - 8);
  v12 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v70 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1DEF8D3F8();
  v14 = *(*(v69 - 8) + 64);
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v69);
  v68 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = 0;
  v18 = 0;
  v66 = a3;
  v21 = a3[8];
  v20 = a3 + 8;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v57 = (v22 + 63) >> 6;
  v58 = a5;
  v62 = v15 + 16;
  v63 = v15;
  v61 = a5 == 0;
  v60 = (v15 + 8);
  while (v24)
  {
    v29 = __clz(__rbit64(v24));
    v67 = (v24 - 1) & v24;
LABEL_17:
    v32 = v29 | (v18 << 6);
    v33 = v66;
    v34 = *(v63 + 16);
    v36 = v68;
    v35 = v69;
    v34(v68, v66[6] + *(v63 + 72) * v32, v69, v16);
    v37 = v33[7];
    v38 = *(v64 + 72);
    v59 = v32;
    v39 = v37 + v38 * v32;
    v40 = v70;
    sub_1DEECF44C(v39, v70, type metadata accessor for NetworkBrowser.Monitor);
    v41 = v71;
    (v34)(v71, v36, v35);
    v42 = v65;
    sub_1DEECF44C(v40, v41 + *(v65 + 48), type metadata accessor for NetworkBrowser.Monitor);
    v43 = v72;
    sub_1DEE17214(v41, v72, &unk_1ECDE4220, &unk_1DEF91DC0);
    v44 = v43 + *(v42 + 48);
    v45 = *(v44 + 16);
    v46 = *(v44 + 24);

    sub_1DEECF3EC(v44, type metadata accessor for NetworkBrowser.Monitor);
    v26 = v61;
    v24 = v67;
    if (!v46)
    {
      goto LABEL_9;
    }

    if (v58)
    {
      if (v45 == v56 && v46 == v58)
      {

        sub_1DEE171B4(v71, &unk_1ECDE4220, &unk_1DEF91DC0);
        v49 = *v60;
        v50 = v69;
        (*v60)(v72, v69);
        sub_1DEECF3EC(v70, type metadata accessor for NetworkBrowser.Monitor);
        v49(v68, v50);
        goto LABEL_21;
      }

      v26 = sub_1DEF8E4E8();

LABEL_9:
      sub_1DEE171B4(v71, &unk_1ECDE4220, &unk_1DEF91DC0);
      v27 = *v60;
      v28 = v69;
      (*v60)(v72, v69);
      sub_1DEECF3EC(v70, type metadata accessor for NetworkBrowser.Monitor);
      v27(v68, v28);
      if (v26)
      {
LABEL_21:
        *(v54 + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v59;
        if (__OFADD__(v55++, 1))
        {
          __break(1u);
LABEL_24:
          sub_1DEEC70F4(v54, v53, v55, v66);
          return;
        }
      }
    }

    else
    {

      sub_1DEE171B4(v71, &unk_1ECDE4220, &unk_1DEF91DC0);
      v47 = *v60;
      v48 = v69;
      (*v60)(v72, v69);
      sub_1DEECF3EC(v70, type metadata accessor for NetworkBrowser.Monitor);
      v47(v68, v48);
    }
  }

  v30 = v18;
  while (1)
  {
    v18 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v18 >= v57)
    {
      goto LABEL_24;
    }

    v31 = v20[v18];
    ++v30;
    if (v31)
    {
      v29 = __clz(__rbit64(v31));
      v67 = (v31 - 1) & v31;
      goto LABEL_17;
    }
  }

  __break(1u);
}

unint64_t *sub_1DEECF0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();

      v13 = sub_1DEEC5FC4(v16, v9, a1, a2, a3);
      MEMORY[0x1E12CCD70](v16, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v11);
  bzero(v17 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  sub_1DEECEBB0((v17 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);
  v13 = v12;

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t objectdestroy_9Tm()
{
  v1 = sub_1DEF8D3F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void sub_1DEECF388()
{
  v1 = *(sub_1DEF8D3F8() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1DEEBE208(v2, v3);
}

uint64_t sub_1DEECF3EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DEECF44C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEECF4B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DEECF530()
{
  result = qword_1ECDE4370;
  if (!qword_1ECDE4370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4370);
  }

  return result;
}

uint64_t RecordStub.recordID.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t RecordStub.clientDefinedID.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t RecordStub.clientDefinedID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t RecordStub.version.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecordStub() + 24);
  v4 = sub_1DEF8D3F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for RecordStub()
{
  result = qword_1ECDE35A8;
  if (!qword_1ECDE35A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RecordStub.version.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecordStub() + 24);
  v4 = sub_1DEF8D3F8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecordStub.expiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecordStub() + 28);

  return sub_1DEECF850(v3, a1);
}

uint64_t sub_1DEECF850(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RecordStub.expiration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RecordStub() + 28);

  return sub_1DEECF904(a1, v3);
}

uint64_t sub_1DEECF904(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t RecordStub.options.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for RecordStub();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t RecordStub.options.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for RecordStub();
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t RecordStub.init(recordID:clientDefinedID:version:expiration:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, char *a7@<X8>)
{
  v13 = *a6;
  v14 = type metadata accessor for RecordStub();
  v15 = v14[7];
  v16 = sub_1DEF8D378();
  (*(*(v16 - 8) + 56))(&a7[v15], 1, 1, v16);
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  v17 = v14[6];
  v18 = sub_1DEF8D3F8();
  (*(*(v18 - 8) + 32))(&a7[v17], a4, v18);
  result = sub_1DEECF904(a5, &a7[v15]);
  *&a7[v14[8]] = v13;
  return result;
}

void sub_1DEECFB94()
{
  type metadata accessor for Record.ID(319);
  if (v0 <= 0x3F)
  {
    sub_1DEF8D3F8();
    if (v1 <= 0x3F)
    {
      sub_1DEECFC40();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DEECFC40()
{
  if (!qword_1ECDE3700)
  {
    sub_1DEF8D378();
    v0 = sub_1DEF8DDC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECDE3700);
    }
  }
}

uint64_t MismatchedRecordIDResolver.mismatchedRecordIDs(for:remoteRecordVersions:zoneIDs:disabledClientIDs:metadataStore:sourcesByZone:)(uint64_t a1, int64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v12 = a5[3];
  v13 = a5[4];
  v14 = __swift_project_boxed_opaque_existential_1(a5, v12);
  return sub_1DEED02EC(a1, a2, a3, a4, v14, a6, v6, v12, v13);
}

BOOL sub_1DEECFDAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D80, &qword_1DEF91698);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v37[-v14];
  v16 = MEMORY[0x1E12CC160](v13);
  v17 = *(a1 + 32);
  v18 = *(v17 + 40);
  *&v39 = *(v17 + 32);
  *(&v39 + 1) = v18;
  v38 = &v39;

  LOBYTE(a3) = sub_1DEF34BEC(sub_1DEED2B54, v37, a3);

  if (a3)
  {
    goto LABEL_9;
  }

  v19 = a4[3];
  v20 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v19);
  v21 = (*(*(v20 + 8) + 24))(v19);
  v22 = sub_1DEF718D0(a1, v21);

  if (!v22)
  {
    goto LABEL_9;
  }

  v23 = type metadata accessor for PairingRelationship();
  v24 = sub_1DEF71928(v17, *(a5 + *(v23 + 20) + 96));
  if (!v24)
  {
    goto LABEL_9;
  }

  if (!*(a6 + 16))
  {
LABEL_8:

LABEL_9:
    v35 = 0;
    goto LABEL_10;
  }

  v25 = v24;
  v26 = *(v24 + 16);

  v28 = sub_1DEEAF20C(v27);
  if ((v29 & 1) == 0)
  {

    goto LABEL_8;
  }

  v30 = (*(a6 + 56) + 16 * v28);
  v31 = *v30;
  v32 = v30[1];
  swift_unknownObjectRetain();

  ObjectType = swift_getObjectType();
  v39 = *(v25 + 24);
  (*(v32 + 32))(a1, a5, &v39, ObjectType, v32);
  swift_unknownObjectRelease();

  v34 = type metadata accessor for PrioritizedRecordValue();
  v35 = (*(*(v34 - 8) + 48))(v15, 1, v34) != 1;
  sub_1DEE171B4(v15, &qword_1ECDE3D80, &qword_1DEF91698);
LABEL_10:
  objc_autoreleasePoolPop(v16);
  return v35;
}

uint64_t sub_1DEED002C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3ED0, &qword_1DEF92030);
  v12[4] = sub_1DEEBBD90();
  v12[0] = a1;
  v12[1] = a2;
  type metadata accessor for PropertyListTypeEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 1;

  v7 = sub_1DEE29274(v12);
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  v8 = sub_1DEE1187C(v7);
  v10 = v9;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v12);
  sub_1DEE1BFF4(v8, v10);
  sub_1DEF11C10(v8, v10);
  sub_1DEE1BFA0(v8, v10);
  return sub_1DEE1BFA0(v8, v10);
}

uint64_t sub_1DEED014C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v10[3] = MEMORY[0x1E69E6158];
  v10[4] = MEMORY[0x1E69E6160];
  v10[0] = a1;
  v10[1] = a2;
  type metadata accessor for PropertyListTypeEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 1;

  v5 = sub_1DEE29274(v10);
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  v6 = sub_1DEE1187C(v5);
  v8 = v7;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v10);
  sub_1DEE1BFF4(v6, v8);
  sub_1DEF11C10(v6, v8);
  sub_1DEE1BFA0(v6, v8);
  return sub_1DEE1BFA0(v6, v8);
}

void *sub_1DEED025C(void *result, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1DEED2678(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1DEED02EC(uint64_t a1, int64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v305 = a6;
  v304 = a4;
  v357 = *MEMORY[0x1E69E9840];
  v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40D8, &unk_1DEF91C10);
  v13 = *(*(v336 - 8) + 64);
  MEMORY[0x1EEE9AC00](v336);
  v318 = &v296 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v327 = &v296 - v16;
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4108, &unk_1DEF95370);
  v17 = *(*(v300 - 8) + 64);
  MEMORY[0x1EEE9AC00](v300);
  v299 = &v296 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v316 = &v296 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v321 = &v296 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v314 = &v296 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v319 = &v296 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v320 = &v296 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v338 = (&v296 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v298 = &v296 - v33;
  v34 = type metadata accessor for UniformHasher();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v309 = &v296 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Record.ID.Ownership(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v310 = &v296 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v302 = type metadata accessor for MetadataRecordPredicate();
  v40 = *(*(v302 - 8) + 64);
  MEMORY[0x1EEE9AC00](v302);
  v307 = &v296 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1DEF8D3F8();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v325 = &v296 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v330 = &v296 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v313 = &v296 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v297 = &v296 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v296 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v345 = &v296 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D50, &qword_1DEF91668);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57 - 8);
  v333 = &v296 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v324 = (&v296 - v61);
  MEMORY[0x1EEE9AC00](v62);
  v329 = &v296 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v328 = (&v296 - v65);
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v296 - v67;
  MEMORY[0x1EEE9AC00](v69);
  v341 = &v296 - v70;
  v355 = a8;
  v356 = a9;
  v71 = __swift_allocate_boxed_opaque_existential_1(&v354);
  v72 = a5;
  v73 = v68;
  (*(*(a8 - 8) + 16))(v71, v72, a8);

  v75 = sub_1DEEA3D0C(v74);

  v76 = *(a2 + 64);
  v335 = (a2 + 64);
  v77 = 1 << *(a2 + 32);
  if (v77 < 64)
  {
    v78 = ~(-1 << v77);
  }

  else
  {
    v78 = -1;
  }

  v79 = v78 & v76;
  v334 = ((v77 + 63) >> 6);
  v348 = (v43 + 16);
  v350 = (v43 + 32);
  v332 = v75 & 0xC000000000000001;
  v80 = v75 & 0xFFFFFFFFFFFFFF8;
  if (v75 < 0)
  {
    v80 = v75;
  }

  v322 = v80;
  v323 = v75;
  v344 = v75 + 56;
  v347 = (v43 + 8);
  v303 = a1;
  v81 = a1 + 32;
  v82 = v42;
  v308 = v81;
  v83 = v54;
  v339 = (v43 + 56);
  v337 = (v43 + 48);
  v301 = @"STRPCodingErrorDomain";
  v346 = v43;
  v306 = v43 + 40;
  v326 = a2;

  v84 = 0;
  v311 = 0;
  v85 = MEMORY[0x1E69E7CC8];
  v315 = MEMORY[0x1E69E7CC8];
  v349 = v82;
  v342 = v73;
  v331 = v83;
  while (2)
  {
    v340 = v85;
    v87 = v341;
    v88 = v335;
    v89 = v334;
    while (1)
    {
      if (v79)
      {
        v92 = v84;
        goto LABEL_23;
      }

      if (v89 <= v84 + 1)
      {
        v93 = (v84 + 1);
      }

      else
      {
        v93 = v89;
      }

      v94 = v93 - 1;
      do
      {
        v92 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
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
          goto LABEL_165;
        }

        if (v92 >= v89)
        {
          v104 = v82;
          v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D68, &qword_1DEF91680);
          (*(*(v123 - 8) + 56))(v73, 1, 1, v123);
          v79 = 0;
          v84 = v94;
          goto LABEL_24;
        }

        v79 = v88[v92];
        ++v84;
      }

      while (!v79);
      v84 = v92;
LABEL_23:
      v95 = __clz(__rbit64(v79));
      v79 &= v79 - 1;
      v96 = v95 | (v92 << 6);
      v97 = *(*(v326 + 48) + 8 * v96);
      v98 = v346;
      v99 = v345;
      (*(v346 + 16))(v345, *(v326 + 56) + *(v346 + 72) * v96, v82);
      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D68, &qword_1DEF91680);
      v101 = *(v100 + 48);
      v102 = v342;
      *v342 = v97;
      v103 = *(v98 + 32);
      v73 = v102;
      v104 = v82;
      v103(&v102[v101], v99, v82);
      (*(*(v100 - 8) + 56))(v73, 0, 1, v100);

      v87 = v341;
LABEL_24:
      sub_1DEED25FC(v73, v87);
      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D68, &qword_1DEF91680);
      v106 = *(v105 - 8);
      v107 = *(v106 + 48);
      if (v107(v87, 1, v105) == 1)
      {
        v343 = v107;
        v344 = v106 + 48;

        v193 = v307;
        v194 = v303;
        sub_1DEE27FC0(v303, v307 + *(v302 + 32), type metadata accessor for PairingRelationship);
        *v193 = 513;
        *(v193 + 2) = 1;
        *(v193 + 8) = v323;
        v195 = v355;
        v196 = v356;
        __swift_project_boxed_opaque_existential_1(&v354, v355);
        v197 = MetadataStoring.recordVersions(matching:)(v193, v195, v196);
        MEMORY[0x1EEE9AC00](v197);
        *(&v296 - 4) = v304;
        *(&v296 - 3) = &v354;
        v198 = v305;
        *(&v296 - 2) = v194;
        *(&v296 - 1) = v198;
        sub_1DEED28B8(v199, sub_1DEED266C);
        v201 = v200;

        v353[0] = MEMORY[0x1E69E7CD0];
        v202 = v201 + 64;
        v203 = 1 << *(v201 + 32);
        v204 = -1;
        if (v203 < 64)
        {
          v204 = ~(-1 << v203);
        }

        v205 = v204 & *(v201 + 64);
        v326 = (v203 + 63) >> 6;
        v342 = (v106 + 56);
        v335 = v201;

        v206 = 0;
        v207 = v320;
        v208 = v330;
        v334 = v105;
        v209 = v340;
        v332 = v202;
        if (!v205)
        {
          goto LABEL_88;
        }

        while (2)
        {
          while (2)
          {
            v210 = v206;
LABEL_96:
            v213 = __clz(__rbit64(v205));
            v205 &= v205 - 1;
            v214 = v213 | (v210 << 6);
            v215 = *(v335[6] + 8 * v214);
            v216 = v346;
            v217 = v345;
            v218 = v349;
            (*(v346 + 16))(v345, v335[7] + *(v346 + 72) * v214, v349);
            v219 = *(v105 + 48);
            v220 = v329;
            *v329 = v215;
            v221 = v218;
            v222 = v220;
            (*(v216 + 32))(&v220[v219], v217, v221);
            v223 = *v342;
            (*v342)(v222, 0, 1, v105);

LABEL_97:
            v224 = v328;
            sub_1DEED25FC(v222, v328);
            if ((v343)(v224, 1, v105) == 1)
            {
              v334 = v223;

              v245 = v209[8];
              v338 = v209 + 8;
              v246 = 1 << *(v209 + 32);
              v247 = -1;
              if (v246 < 64)
              {
                v247 = ~(-1 << v246);
              }

              v248 = v247 & v245;
              v330 = ((v246 + 63) >> 6);
              v329 = (v315 & 0xC000000000000001);
              v249 = v315 & 0xFFFFFFFFFFFFFF8;
              if (v315 < 0)
              {
                v249 = v315;
              }

              v328 = v249;

              v250 = 0;
              v251 = v314;
              v252 = v349;
              v253 = v325;
              while (2)
              {
                if (v248)
                {
                  v255 = v250;
LABEL_133:
                  v259 = __clz(__rbit64(v248));
                  v248 &= v248 - 1;
                  v260 = v259 | (v255 << 6);
                  v261 = *(v209[6] + 8 * v260);
                  v262 = v346;
                  v263 = v345;
                  (*(v346 + 16))(v345, v209[7] + *(v346 + 72) * v260, v252);
                  v264 = *(v105 + 48);
                  v265 = v333;
                  *v333 = v261;
                  v266 = *(v262 + 32);
                  v258 = v265;
                  v266(&v265[v264], v263, v252);
                  v334(v258, 0, 1, v105);
                }

                else
                {
                  if (v330 <= v250 + 1)
                  {
                    v256 = (v250 + 1);
                  }

                  else
                  {
                    v256 = v330;
                  }

                  v257 = v256 - 1;
                  v258 = v333;
                  while (1)
                  {
                    v255 = v250 + 1;
                    if (__OFADD__(v250, 1))
                    {
                      goto LABEL_161;
                    }

                    if (v255 >= v330)
                    {
                      break;
                    }

                    v248 = v338[v255];
                    ++v250;
                    if (v248)
                    {
                      v250 = v255;
                      goto LABEL_133;
                    }
                  }

                  v334(v333, 1, 1, v105);
                  v248 = 0;
                  v250 = v257;
                }

                v267 = v324;
                sub_1DEED25FC(v258, v324);
                if ((v343)(v267, 1, v105) == 1)
                {

                  v293 = sub_1DEF4133C(v353[0]);
                  sub_1DEED2AF4(v307, type metadata accessor for MetadataRecordPredicate);

                  __swift_destroy_boxed_opaque_existential_1(&v354);
                  v294 = *MEMORY[0x1E69E9840];
                  return v293;
                }

                v268 = v267 + *(v105 + 48);
                v269 = *v267;
                v341 = *v350;
                v270 = (v341)(v253, v268, v252);
                v254 = MEMORY[0x1E12CC160](v270);
                if (sub_1DEF01F34(v269, v353[0]))
                {
                  goto LABEL_122;
                }

                v332 = v254;
                v271 = v335;
                v272 = v335[2];
                v331 = v269;
                if (v272 && (v273 = sub_1DEEAF3E8(v269), (v274 & 1) != 0))
                {
                  (*(v346 + 16))(v251, v271[7] + *(v346 + 72) * v273, v252);
                  v275 = 0;
                }

                else
                {
                  v275 = 1;
                }

                v276 = *v339;
                (*v339)(v251, v275, 1, v252);
                v277 = v251;
                v278 = v252;
                v279 = v321;
                (*v348)(v321, v325, v278);
                v276(v279, 0, 1, v278);
                v280 = *(v336 + 48);
                v281 = v318;
                sub_1DEE205E0(v251, v318);
                sub_1DEE205E0(v279, v281 + v280);
                v282 = *v337;
                if ((*v337)(v281, 1, v278) == 1)
                {
                  sub_1DEE171B4(v279, &unk_1ECDE3E80, &unk_1DEF90970);
                  sub_1DEE171B4(v277, &unk_1ECDE3E80, &unk_1DEF90970);
                  v283 = v282(v281 + v280, 1, v278);
                  v251 = v277;
                  v252 = v278;
                  v253 = v325;
                  v209 = v340;
                  if (v283 != 1)
                  {
LABEL_145:
                    sub_1DEE171B4(v281, &qword_1ECDE40D8, &unk_1DEF91C10);
                    v285 = v331;
                    goto LABEL_146;
                  }

                  sub_1DEE171B4(v281, &unk_1ECDE3E80, &unk_1DEF90970);
LABEL_121:
                  v254 = v332;
LABEL_122:
                  objc_autoreleasePoolPop(v254);

                  (*v347)(v253, v252);
                  continue;
                }

                break;
              }

              v284 = v316;
              sub_1DEE205E0(v281, v316);
              v252 = v278;
              if (v282(v281 + v280, 1, v278) == 1)
              {
                sub_1DEE171B4(v321, &unk_1ECDE3E80, &unk_1DEF90970);
                v251 = v314;
                sub_1DEE171B4(v314, &unk_1ECDE3E80, &unk_1DEF90970);
                (*v347)(v284, v278);
                v253 = v325;
                v209 = v340;
                goto LABEL_145;
              }

              v288 = v345;
              (v341)(v345, v281 + v280, v278);
              sub_1DEED2A38();
              LODWORD(v341) = sub_1DEF8D908();
              v289 = *v347;
              (*v347)(v288, v252);
              sub_1DEE171B4(v321, &unk_1ECDE3E80, &unk_1DEF90970);
              v251 = v314;
              sub_1DEE171B4(v314, &unk_1ECDE3E80, &unk_1DEF90970);
              v289(v316, v252);
              sub_1DEE171B4(v281, &unk_1ECDE3E80, &unk_1DEF90970);
              v253 = v325;
              v209 = v340;
              v285 = v331;
              v254 = v332;
              if (v341)
              {
                goto LABEL_122;
              }

LABEL_146:
              if (v329)
              {

                v286 = sub_1DEF8E0B8();

                if (!v286)
                {
                  goto LABEL_156;
                }

                v351 = v286;
                type metadata accessor for Record.ID(0);
                swift_dynamicCast();
                v287 = v352;
                if (!v352)
                {
                  goto LABEL_156;
                }
              }

              else if (!*(v315 + 16) || (v290 = sub_1DEEAF3E8(v285), (v291 & 1) == 0) || (v292 = *(*(v315 + 56) + 8 * v290), (v287 = ) == 0))
              {
LABEL_156:

                v287 = v285;
              }

              sub_1DEF38D20(&v352, v287);

              goto LABEL_121;
            }

            v225 = *v224;
            v226 = *v350;
            (*v350)(v208, v224 + *(v105 + 48), v349);
            v227 = v209[2];
            v341 = v225;
            if (v227 && (v228 = sub_1DEEAF3E8(v225), (v229 & 1) != 0))
            {
              v230 = v209[7] + *(v346 + 72) * v228;
              v231 = v338;
              (*(v346 + 16))(v338, v230, v349);
              v232 = 0;
            }

            else
            {
              v232 = 1;
              v231 = v338;
            }

            v233 = *v339;
            v234 = v349;
            (*v339)(v231, v232, 1, v349);
            (*v348)(v207, v208, v234);
            v233(v207, 0, 1, v234);
            v235 = *(v336 + 48);
            v236 = v327;
            sub_1DEE205E0(v231, v327);
            sub_1DEE205E0(v207, v236 + v235);
            v237 = *v337;
            if ((*v337)(v236, 1, v234) == 1)
            {
              sub_1DEE171B4(v207, &unk_1ECDE3E80, &unk_1DEF90970);
              sub_1DEE171B4(v231, &unk_1ECDE3E80, &unk_1DEF90970);
              v238 = v237(v236 + v235, 1, v234);
              v209 = v340;
              if (v238 == 1)
              {
                sub_1DEE171B4(v236, &unk_1ECDE3E80, &unk_1DEF90970);
                v208 = v330;
                v105 = v334;
                v202 = v332;
                (*v347)(v330, v349);
LABEL_112:

                if (v205)
                {
                  continue;
                }

LABEL_88:
                if (v326 <= v206 + 1)
                {
                  v211 = v206 + 1;
                }

                else
                {
                  v211 = v326;
                }

                v212 = v211 - 1;
                while (1)
                {
                  v210 = v206 + 1;
                  if (__OFADD__(v206, 1))
                  {
                    goto LABEL_160;
                  }

                  if (v210 >= v326)
                  {
                    break;
                  }

                  v205 = *(v202 + 8 * v210);
                  ++v206;
                  if (v205)
                  {
                    v206 = v210;
                    goto LABEL_96;
                  }
                }

                v223 = *v342;
                v244 = v329;
                (*v342)(v329, 1, 1, v105);
                v205 = 0;
                v206 = v212;
                v222 = v244;
                goto LABEL_97;
              }

LABEL_107:
              sub_1DEE171B4(v236, &qword_1ECDE40D8, &unk_1DEF91C10);
              v208 = v330;
              v105 = v334;
              v240 = v341;
            }

            else
            {
              v239 = v319;
              sub_1DEE205E0(v236, v319);
              if (v237(v236 + v235, 1, v234) == 1)
              {
                v207 = v320;
                sub_1DEE171B4(v320, &unk_1ECDE3E80, &unk_1DEF90970);
                sub_1DEE171B4(v338, &unk_1ECDE3E80, &unk_1DEF90970);
                (*v347)(v239, v234);
                v209 = v340;
                goto LABEL_107;
              }

              v241 = v345;
              (v226)(v345, v236 + v235, v234);
              sub_1DEED2A38();
              LODWORD(v331) = sub_1DEF8D908();
              v242 = *v347;
              (*v347)(v241, v234);
              v243 = v320;
              sub_1DEE171B4(v320, &unk_1ECDE3E80, &unk_1DEF90970);
              sub_1DEE171B4(v338, &unk_1ECDE3E80, &unk_1DEF90970);
              v242(v239, v234);
              v207 = v243;
              sub_1DEE171B4(v236, &unk_1ECDE3E80, &unk_1DEF90970);
              v209 = v340;
              v208 = v330;
              v105 = v334;
              v240 = v341;
              if (v331)
              {
                v202 = v332;
                v242(v330, v349);
                goto LABEL_112;
              }
            }

            break;
          }

          sub_1DEF38D20(&v352, v240);
          (*v347)(v208, v349);

          v202 = v332;
          if (v205)
          {
            continue;
          }

          goto LABEL_88;
        }
      }

      v108 = *v87;
      v109 = *v350;
      (*v350)(v83, v87 + *(v105 + 48), v104);
      v110 = v108[4];
      if (v332)
      {
        v90 = v108[4];

        v91 = sub_1DEF8DE98();

        if (v91)
        {
          v312 = v109;
          v124 = v104;
          v125 = v340;
          goto LABEL_45;
        }

LABEL_11:
        v82 = v104;
        goto LABEL_12;
      }

      if (!*(v323 + 16))
      {
        goto LABEL_11;
      }

      v111 = *(v323 + 40);
      sub_1DEF8E7A8();
      v112 = v110[2];
      v113 = v110[3];

      sub_1DEF8D9B8();
      v114 = v110[4];
      v115 = v110[5];
      sub_1DEF8D9B8();
      v116 = sub_1DEF8E7F8();
      v117 = -1 << *(v323 + 32);
      v118 = v116 & ~v117;
      if ((*(v344 + ((v118 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v118))
      {
        break;
      }

LABEL_42:

      v82 = v349;
      v87 = v341;
LABEL_12:
      v83 = v331;
      (*v347)(v331, v82);

      v88 = v335;
      v89 = v334;
      v73 = v342;
    }

    v312 = v109;
    v317 = v108;
    v343 = ~v117;
    v119 = *(v323 + 48);
    while (1)
    {
      v120 = *(v119 + 8 * v118);
      v121 = v112 == v120[2] && v113 == v120[3];
      if (v121 || (sub_1DEF8E4E8() & 1) != 0)
      {
        v122 = v114 == v120[4] && v115 == v120[5];
        if (v122 || (sub_1DEF8E4E8() & 1) != 0)
        {
          break;
        }
      }

      v118 = (v118 + 1) & v343;
      if (((*(v344 + ((v118 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v118) & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v124 = v349;
    v125 = v340;
    v108 = v317;
LABEL_45:
    v126 = v108[2];
    v127 = v108[3];
    v128 = v108[4];
    v129 = v310;
    (*v339)(v310, 1, 1, v124);
    v130 = type metadata accessor for Record.ID(0);
    v131 = *(v130 + 48);
    v132 = *(v130 + 52);
    v343 = v130;
    v133 = swift_allocObject();
    v133[2] = v126;
    v133[3] = v127;
    v133[4] = v128;
    sub_1DEED2A90(v129, v133 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership);
    v134 = *(v308 + *(type metadata accessor for PairingRelationship() + 20));

    if (v134 >= 0xE)
    {

      goto LABEL_62;
    }

    v317 = v108;

    v135 = _s16ReplicatorEngine13UniformHasherVACycfC_0();
    v136 = MEMORY[0x1E12CC160](v135);
    v353[3] = MEMORY[0x1E69E6158];
    v353[4] = MEMORY[0x1E69E6160];
    v353[0] = v126;
    v353[1] = v127;
    type metadata accessor for PropertyListTypeEncoder();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = 1;

    v138 = v311;
    v139 = sub_1DEE29274(v353);
    v140 = v138;
    if (v138)
    {
      v311 = 0;
      goto LABEL_61;
    }

    v296 = v133;
    LODWORD(v352) = 0;
    NSData = OPACKEncoderCreateNSData(v139);
    if (!NSData)
    {
      v143 = 0;
      v145 = 0xF000000000000000;
LABEL_60:
      v166 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v140 = [v166 initWithDomain:v301 code:2 userInfo:0];
      swift_willThrow();
      sub_1DEE2416C(v143, v145);
      swift_unknownObjectRelease();
      v311 = 0;
      v125 = v340;
      v133 = v296;
LABEL_61:
      __swift_destroy_boxed_opaque_existential_1(v353);

      objc_autoreleasePoolPop(v136);

      sub_1DEED2AF4(v309, type metadata accessor for UniformHasher);
      goto LABEL_62;
    }

    v142 = NSData;
    v143 = sub_1DEF8D278();
    v145 = v144;

    v146 = v352;
    if (v146 != sub_1DEF8D558())
    {
      goto LABEL_60;
    }

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v353);
    sub_1DEE1BFF4(v143, v145);
    v147 = v309;
    sub_1DEF11C10(v143, v145);
    v311 = 0;
    sub_1DEE1BFA0(v143, v145);
    sub_1DEE1BFA0(v143, v145);
    objc_autoreleasePoolPop(v136);
    v148 = v299;
    sub_1DEF8D7F8();
    *(v148 + *(v300 + 36)) = 16;
    v149 = sub_1DEF7F578(v148);
    v150 = v298;
    sub_1DEE3DF08(v149, v151, v298);
    v152 = v349;
    if ((*v337)(v150, 1, v349) != 1)
    {

      sub_1DEED2AF4(v147, type metadata accessor for UniformHasher);
      v153 = v297;
      (v312)(v297, v150, v152);
      v154 = sub_1DEF8D398();
      v156 = v155;
      (*v347)(v153, v152);
      v157 = v296;
      v158 = v296[4];
      v159 = v310;
      sub_1DEE27FC0(v296 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v310, type metadata accessor for Record.ID.Ownership);
      v160 = *(v343 + 48);
      v161 = *(v343 + 52);
      v162 = swift_allocObject();
      v162[2] = v154;
      v162[3] = v156;
      v162[4] = v158;
      sub_1DEED2A90(v159, v162 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership);
      if ((v315 & 0xC000000000000001) != 0)
      {
        if (v315 < 0)
        {
          v163 = v315;
        }

        else
        {
          v163 = v315 & 0xFFFFFFFFFFFFFF8;
        }

        v164 = sub_1DEF8DE68();
        if (!__OFADD__(v164, 1))
        {
          v165 = sub_1DEEB0BA0(v163, v164 + 1);
          goto LABEL_72;
        }

LABEL_165:
        __break(1u);
      }

      v165 = v315;
LABEL_72:
      v180 = v165;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v353[0] = v180;
      v182 = sub_1DEEAF3E8(v162);
      v184 = *(v180 + 16);
      v185 = (v183 & 1) == 0;
      v173 = __OFADD__(v184, v185);
      v186 = v184 + v185;
      if (v173)
      {
        goto LABEL_164;
      }

      v187 = v183;
      if (*(v180 + 24) >= v186)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v192 = v182;
          sub_1DEEB83F0();
          v182 = v192;
        }
      }

      else
      {
        sub_1DEEB2DFC(v186, isUniquelyReferenced_nonNull_native);
        v182 = sub_1DEEAF3E8(v162);
        if ((v187 & 1) != (v188 & 1))
        {
          goto LABEL_167;
        }
      }

      v125 = v340;
      v315 = v353[0];
      if (v187)
      {
        v189 = *(v353[0] + 56);
        v190 = *(v189 + 8 * v182);
        *(v189 + 8 * v182) = v157;
      }

      else
      {
        sub_1DEF41EB8(v182, v162, v157);
      }

      v133 = v162;
LABEL_62:
      v83 = v331;
      v82 = v349;
      (*v348)(v313, v331, v349);
      v167 = v125;
      v168 = swift_isUniquelyReferenced_nonNull_native();
      v353[0] = v167;
      v169 = sub_1DEEAF3E8(v133);
      v171 = *(v167 + 16);
      v172 = (v170 & 1) == 0;
      v173 = __OFADD__(v171, v172);
      v174 = v171 + v172;
      if (v173)
      {
        goto LABEL_162;
      }

      v175 = v170;
      if (*(v167 + 24) >= v174)
      {
        if (v168)
        {
          v85 = v353[0];
          if ((v170 & 1) == 0)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v191 = v169;
          sub_1DEEB8164();
          v169 = v191;
          v85 = v353[0];
          if ((v175 & 1) == 0)
          {
            goto LABEL_69;
          }
        }

LABEL_7:
        v86 = v346;
        (*(v346 + 40))(v85[7] + *(v346 + 72) * v169, v313, v82);

        (*(v86 + 8))(v83, v82);
        goto LABEL_8;
      }

      sub_1DEEB28C8(v174, v168);
      v169 = sub_1DEEAF3E8(v133);
      if ((v175 & 1) != (v176 & 1))
      {
        goto LABEL_167;
      }

      v85 = v353[0];
      if (v175)
      {
        goto LABEL_7;
      }

LABEL_69:
      v85[(v169 >> 6) + 8] |= 1 << v169;
      *(v85[6] + 8 * v169) = v133;
      v177 = v346;
      (v312)(v85[7] + *(v346 + 72) * v169, v313, v82);

      (*(v177 + 8))(v83, v82);
      v178 = v85[2];
      v173 = __OFADD__(v178, 1);
      v179 = v178 + 1;
      if (v173)
      {
        goto LABEL_163;
      }

      v85[2] = v179;
LABEL_8:
      v73 = v342;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_167:
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

uint64_t sub_1DEED25FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D50, &qword_1DEF91668);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1DEED2678(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, char *))
{
  v30 = a2;
  v39 = a4;
  v31 = a1;
  v38 = sub_1DEF8D3F8();
  v5 = *(*(v38 - 8) + 64);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v38);
  v36 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v6;
  v32 = 0;
  v9 = 0;
  v40 = a3;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v34 = v6 + 8;
  v35 = v6 + 16;
  v17 = v36;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v41 = (v15 - 1) & v15;
LABEL_11:
    v21 = v18 | (v9 << 6);
    v22 = v40[7];
    v23 = *(v40[6] + 8 * v21);
    v25 = v37;
    v24 = v38;
    v26 = *(v37 + 72);
    v33 = v21;
    (*(v37 + 16))(v17, v22 + v26 * v21, v38, v7);

    v28 = v39(v27, v17);
    (*(v25 + 8))(v17, v24);

    v15 = v41;
    if (v28)
    {
      *(v31 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1DEEC6B58(v31, v30, v32, v40);
        return;
      }
    }
  }

  v19 = v9;
  while (1)
  {
    v9 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_15;
    }

    v20 = v11[v9];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v41 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1DEED28B8(uint64_t a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      sub_1DEED025C(v10, v6, v4, a2);
      MEMORY[0x1E12CCD70](v10, -1, -1);
      goto LABEL_4;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v8 = v11 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_1DEED2678(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

LABEL_4:
  v9 = *MEMORY[0x1E69E9840];
}

unint64_t sub_1DEED2A38()
{
  result = qword_1ECDE40E0;
  if (!qword_1ECDE40E0)
  {
    sub_1DEF8D3F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE40E0);
  }

  return result;
}

uint64_t sub_1DEED2A90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Record.ID.Ownership(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEED2AF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DEED2B54(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DEF8E4E8() & 1;
  }
}

void *Record.ID.__allocating_init(identifier:zoneIdentifier:ownership:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  sub_1DEED4720(a4, v11 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, type metadata accessor for Record.ID.Ownership);
  return v11;
}

uint64_t Record.Value.init(protocolVersion:data:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for Record.Value(0);
  v11 = *(v10 + 20);
  v12 = sub_1DEF8D1E8();
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  *&a5[*(v10 + 24)] = a1;
  *a5 = a2;
  *(a5 + 1) = a3;

  return sub_1DEED4690(a4, &a5[v11]);
}

uint64_t Record.init(metadata:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v5 = type metadata accessor for Record(0);
  return sub_1DEED4720(a2, a3 + *(v5 + 20), type metadata accessor for Record.Value);
}

uint64_t Record.ID.hash(into:)()
{
  v1 = sub_1DEF8D3F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Record.ID.Ownership(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0[2];
  v11 = v0[3];
  sub_1DEF8D9B8();
  v12 = v0[4];
  v13 = v12[2];
  v14 = v12[3];
  sub_1DEF8D9B8();
  v15 = v12[4];
  v16 = v12[5];

  sub_1DEF8D9B8();

  sub_1DEED9760(v0 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v9, type metadata accessor for Record.ID.Ownership);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    return MEMORY[0x1E12CBF60](0);
  }

  (*(v2 + 32))(v5, v9, v1);
  MEMORY[0x1E12CBF60](1);
  sub_1DEED92F0(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
  sub_1DEF8D8C8();
  return (*(v2 + 8))(v5, v1);
}

uint64_t Record.ID.Ownership.hash(into:)()
{
  v1 = sub_1DEF8D3F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Record.ID.Ownership(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEED9760(v0, v9, type metadata accessor for Record.ID.Ownership);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    return MEMORY[0x1E12CBF60](0);
  }

  (*(v2 + 32))(v5, v9, v1);
  MEMORY[0x1E12CBF60](1);
  sub_1DEED92F0(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
  sub_1DEF8D8C8();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1DEED313C()
{
  if (*v0)
  {
    result = 0x65746F6D6572;
  }

  else
  {
    result = 0x6C61636F6CLL;
  }

  *v0;
  return result;
}

uint64_t sub_1DEED3170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1DEF8E4E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746F6D6572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DEF8E4E8();

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

uint64_t sub_1DEED3244(uint64_t a1)
{
  v2 = sub_1DEED9248();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEED3280(uint64_t a1)
{
  v2 = sub_1DEED9248();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEED32BC(uint64_t a1)
{
  v2 = sub_1DEED9338();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEED32F8(uint64_t a1)
{
  v2 = sub_1DEED9338();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEED3334(uint64_t a1)
{
  v2 = sub_1DEED929C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEED3370(uint64_t a1)
{
  v2 = sub_1DEED929C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Record.ID.Ownership.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4380, &qword_1DEF92038);
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v31 = &v27 - v4;
  v5 = sub_1DEF8D3F8();
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4388, &qword_1DEF92040);
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for Record.ID.Ownership(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4390, &qword_1DEF92048);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v27 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEED9248();
  v22 = v34;
  sub_1DEF8E858();
  sub_1DEED9760(v35, v15, type metadata accessor for Record.ID.Ownership);
  if ((*(v22 + 48))(v15, 1, v5) == 1)
  {
    v36 = 0;
    sub_1DEED9338();
    sub_1DEF8E248();
    (*(v28 + 8))(v11, v29);
  }

  else
  {
    v24 = v30;
    (*(v22 + 32))(v30, v15, v5);
    v37 = 1;
    sub_1DEED929C();
    v25 = v31;
    sub_1DEF8E248();
    sub_1DEED92F0(&qword_1ECDE3640, MEMORY[0x1E69695A8]);
    v26 = v33;
    sub_1DEF8E298();
    (*(v32 + 8))(v25, v26);
    (*(v22 + 8))(v24, v5);
  }

  return (*(v17 + 8))(v20, v16);
}

uint64_t Record.ID.Ownership.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1DEF8D3F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Record.ID.Ownership(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEF8E7A8();
  sub_1DEED9760(v1, v10, type metadata accessor for Record.ID.Ownership);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    MEMORY[0x1E12CBF60](0);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x1E12CBF60](1);
    sub_1DEED92F0(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
    sub_1DEF8D8C8();
    (*(v3 + 8))(v6, v2);
  }

  return sub_1DEF8E7F8();
}

uint64_t Record.ID.Ownership.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE43B0, &qword_1DEF92050);
  v4 = *(v3 - 8);
  v53 = v3;
  v54 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE43B8, &qword_1DEF92058);
  v8 = *(v7 - 8);
  v51 = v7;
  v52 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE43C0, &unk_1DEF92060);
  v57 = *(v12 - 8);
  v13 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - v14;
  v16 = type metadata accessor for Record.ID.Ownership(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v48 - v21;
  v24 = a1[3];
  v23 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1DEED9248();
  v25 = v58;
  sub_1DEF8E848();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  v58 = v16;
  v49 = v19;
  v50 = v22;
  v27 = v55;
  v26 = v56;
  v28 = sub_1DEF8E228();
  v29 = (2 * *(v28 + 16)) | 1;
  v60 = v28;
  v61 = v28 + 32;
  v62 = 0;
  v63 = v29;
  v30 = sub_1DEE25E0C();
  v31 = v12;
  v32 = v15;
  if (v30 == 2 || v62 != v63 >> 1)
  {
    v35 = sub_1DEF8DF68();
    swift_allocError();
    v37 = v36;
    v38 = v31;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
    *v37 = v58;
    sub_1DEF8E188();
    sub_1DEF8DF48();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    (*(v57 + 8))(v15, v38);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  if (v30)
  {
    v64 = 1;
    sub_1DEED929C();
    v33 = v27;
    sub_1DEF8E178();
    v34 = v57;
    v42 = v26;
    v43 = sub_1DEF8D3F8();
    sub_1DEED92F0(&qword_1ECDE3630, MEMORY[0x1E69695A8]);
    v44 = v49;
    v45 = v53;
    sub_1DEF8E1F8();
    (*(v54 + 8))(v33, v45);
    (*(v34 + 8))(v32, v31);
    swift_unknownObjectRelease();
    (*(*(v43 - 8) + 56))(v44, 0, 1, v43);
    v46 = v50;
    sub_1DEED4720(v44, v50, type metadata accessor for Record.ID.Ownership);
  }

  else
  {
    v64 = 0;
    sub_1DEED9338();
    sub_1DEF8E178();
    v41 = v57;
    v42 = v26;
    (*(v52 + 8))(v11, v51);
    (*(v41 + 8))(v15, v12);
    swift_unknownObjectRelease();
    v47 = sub_1DEF8D3F8();
    v46 = v50;
    (*(*(v47 - 8) + 56))(v50, 1, 1, v47);
  }

  sub_1DEED4720(v46, v42, type metadata accessor for Record.ID.Ownership);
  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t sub_1DEED4098(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEED9760(v2, v12, type metadata accessor for Record.ID.Ownership);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return MEMORY[0x1E12CBF60](0);
  }

  (*(v5 + 32))(v8, v12, v4);
  MEMORY[0x1E12CBF60](1);
  sub_1DEED92F0(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
  sub_1DEF8D8C8();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DEED4264(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1DEF8D3F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEF8E7A8();
  sub_1DEED9760(v4, v13, type metadata accessor for Record.ID.Ownership);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    MEMORY[0x1E12CBF60](0);
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    MEMORY[0x1E12CBF60](1);
    sub_1DEED92F0(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
    sub_1DEF8D8C8();
    (*(v6 + 8))(v9, v5);
  }

  return sub_1DEF8E7F8();
}

uint64_t Record.ID.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Record.ID.description.getter()
{
  sub_1DEF8DF28();
  MEMORY[0x1E12CB180](0x203A656E6F7ALL, 0xE600000000000000);
  v1 = v0[4];
  v3 = v1[4];
  v4 = v1[5];

  MEMORY[0x1E12CB180](14906, 0xE200000000000000);
  MEMORY[0x1E12CB180](v1[2], v1[3]);
  MEMORY[0x1E12CB180](v3, v4);

  MEMORY[0x1E12CB180](0x7372656E776F203BLL, 0xED0000203A706968);
  type metadata accessor for Record.ID.Ownership(0);
  sub_1DEF8E008();
  MEMORY[0x1E12CB180](0x69746E656469203BLL, 0xEE00203A72656966);
  MEMORY[0x1E12CB180](v0[2], v0[3]);
  return 0;
}

void *Record.ID.init(identifier:zoneIdentifier:ownership:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  sub_1DEED4720(a4, v4 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, type metadata accessor for Record.ID.Ownership);
  return v4;
}

uint64_t sub_1DEED4690(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEED4720(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t Record.ID.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  Record.ID.init(from:)(a1);
  return v5;
}

void *Record.ID.init(from:)(uint64_t *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = *v1;
  v42 = type metadata accessor for Record.ID.Versions.V8(0);
  v7 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = type metadata accessor for Record.ID.Ownership(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Record.ID.Versions.V0(0);
  v17 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v19 = (&v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DEE29594(a1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE43C8, &qword_1DEF92070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE43D0, &qword_1DEF92078);
  if (swift_dynamicCast())
  {
    v33 = v16;
    v34 = v6;
    sub_1DEE2F1AC(v36, v39);
    v20 = v40;
    v21 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v22 = (*(v21 + 16))(v20, v21);
    if (v23)
    {
      __swift_destroy_boxed_opaque_existential_1(v39);
      v3 = v2;
      goto LABEL_5;
    }

    if (v22 > 7)
    {
      sub_1DEE29594(a1, v38);
      sub_1DEED4FC0(v38, v12);
      __swift_destroy_boxed_opaque_existential_1(a1);
      if (v2)
      {
        goto LABEL_11;
      }

      v1[2] = *v12;
      *(v1 + 3) = *(v12 + 8);
      v31 = &v12[*(v42 + 24)];
    }

    else
    {
      sub_1DEE29594(a1, v38);
      sub_1DEED4C34(v38, v19);
      if (v2)
      {
        __swift_destroy_boxed_opaque_existential_1(a1);
LABEL_11:
        __swift_destroy_boxed_opaque_existential_1(v39);
        goto LABEL_12;
      }

      v27 = v19[1];
      v4[2] = *v19;
      v4[3] = v27;
      v28 = v19[2];
      v29 = v19[3];
      type metadata accessor for Zone.ID.Pool();

      v30 = sub_1DEF4A4A0();
      __swift_destroy_boxed_opaque_existential_1(a1);
      v4[4] = v30;
      v31 = v33;
      sub_1DEED9760(v19 + *(v35 + 24), v33, type metadata accessor for Record.ID.Ownership);
      sub_1DEED93CC(v19, type metadata accessor for Record.ID.Versions.V0);
    }

    sub_1DEED4720(v31, v4 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, type metadata accessor for Record.ID.Ownership);
    __swift_destroy_boxed_opaque_existential_1(v39);
    return v4;
  }

  v37 = 0;
  memset(v36, 0, sizeof(v36));
  sub_1DEE171B4(v36, &qword_1ECDE43D8, &qword_1DEF92080);
LABEL_5:
  sub_1DEE29594(a1, v39);
  sub_1DEED4FC0(v39, v9);
  __swift_destroy_boxed_opaque_existential_1(a1);
  if (v3)
  {
LABEL_12:
    v24 = *(*v1 + 48);
    v25 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
    return v4;
  }

  v1[2] = *v9;
  *(v1 + 3) = *(v9 + 8);
  sub_1DEED4720(&v9[*(v42 + 24)], v1 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, type metadata accessor for Record.ID.Ownership);
  return v4;
}

uint64_t sub_1DEED4C34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = type metadata accessor for Record.ID.Ownership(0);
  v4 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4578, &qword_1DEF929A0);
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = type metadata accessor for Record.ID.Versions.V0(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEDA6B4();
  sub_1DEF8E848();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = a1;
  v16 = v27;
  v17 = v28;
  v31 = 0;
  *v14 = sub_1DEF8E1D8();
  v14[1] = v18;
  v30 = 1;
  v14[2] = sub_1DEF8E1D8();
  v14[3] = v19;
  v29 = 2;
  sub_1DEED92F0(&qword_1ECDE4580, type metadata accessor for Record.ID.Ownership);
  v23 = v14;
  sub_1DEF8E1F8();
  (*(v16 + 8))(v10, v17);
  v20 = *(v11 + 24);
  v21 = v23;
  sub_1DEED4720(v6, v23 + v20, type metadata accessor for Record.ID.Ownership);
  sub_1DEED9760(v21, v25, type metadata accessor for Record.ID.Versions.V0);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_1DEED93CC(v21, type metadata accessor for Record.ID.Versions.V0);
}

uint64_t sub_1DEED4FC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for Record.ID.Ownership(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4588, &unk_1DEF929A8);
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - v9;
  v11 = type metadata accessor for Record.ID.Versions.V8(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEDA660();
  v25 = v10;
  v16 = v26;
  sub_1DEF8E848();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v3;
  v17 = v23;
  v18 = v24;
  v30 = 0;
  *v14 = sub_1DEF8E1D8();
  v14[1] = v19;
  v21[1] = v19;
  type metadata accessor for Zone.ID();
  v29 = 1;
  sub_1DEED92F0(&qword_1ECDE2E98, type metadata accessor for Zone.ID);
  sub_1DEF8E1F8();
  v14[2] = v27;
  v28 = 2;
  sub_1DEED92F0(&qword_1ECDE4580, type metadata accessor for Record.ID.Ownership);
  sub_1DEF8E1F8();
  (*(v17 + 8))(v25, v18);
  sub_1DEED4720(v6, v14 + *(v11 + 24), type metadata accessor for Record.ID.Ownership);
  sub_1DEED9760(v14, v22, type metadata accessor for Record.ID.Versions.V8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DEED93CC(v14, type metadata accessor for Record.ID.Versions.V8);
}

uint64_t Record.ID.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  sub_1DEED93CC(v0 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, type metadata accessor for Record.ID.Ownership);
  return v0;
}

uint64_t Record.ID.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  sub_1DEED93CC(v0 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, type metadata accessor for Record.ID.Ownership);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t Record.ID.hashValue.getter()
{
  v1 = sub_1DEF8D3F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Record.ID.Ownership(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEF8E7A8();
  v10 = v0[2];
  v11 = v0[3];
  sub_1DEF8D9B8();
  v12 = v0[4];
  v13 = v12[2];
  v14 = v12[3];
  sub_1DEF8D9B8();
  v15 = v12[4];
  v16 = v12[5];

  sub_1DEF8D9B8();

  sub_1DEED9760(v0 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v9, type metadata accessor for Record.ID.Ownership);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    MEMORY[0x1E12CBF60](0);
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    MEMORY[0x1E12CBF60](1);
    sub_1DEED92F0(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
    sub_1DEF8D8C8();
    (*(v2 + 8))(v5, v1);
  }

  return sub_1DEF8E7F8();
}

uint64_t sub_1DEED56CC()
{
  v1 = sub_1DEF8D3F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Record.ID.Ownership(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v0;
  v11 = *(*v0 + 16);
  v12 = *(*v0 + 24);
  sub_1DEF8D9B8();
  v13 = *(v10 + 32);
  v14 = v13[2];
  v15 = v13[3];
  sub_1DEF8D9B8();
  v16 = v13[4];
  v17 = v13[5];

  sub_1DEF8D9B8();

  sub_1DEED9760(v10 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v9, type metadata accessor for Record.ID.Ownership);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    return MEMORY[0x1E12CBF60](0);
  }

  (*(v2 + 32))(v5, v9, v1);
  MEMORY[0x1E12CBF60](1);
  sub_1DEED92F0(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
  sub_1DEF8D8C8();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1DEED58F4()
{
  v1 = sub_1DEF8D3F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Record.ID.Ownership(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v0;
  sub_1DEF8E7A8();
  v11 = v10[2];
  v12 = v10[3];
  sub_1DEF8D9B8();
  v13 = v10[4];
  v14 = v13[2];
  v15 = v13[3];
  sub_1DEF8D9B8();
  v16 = v13[4];
  v17 = v13[5];

  sub_1DEF8D9B8();

  sub_1DEED9760(v10 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v9, type metadata accessor for Record.ID.Ownership);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    MEMORY[0x1E12CBF60](0);
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    MEMORY[0x1E12CBF60](1);
    sub_1DEED92F0(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
    sub_1DEF8D8C8();
    (*(v2 + 8))(v5, v1);
  }

  return sub_1DEF8E7F8();
}

uint64_t Record.Value.data.getter()
{
  v1 = *v0;
  sub_1DEE1BFF4(*v0, *(v0 + 8));
  return v1;
}

uint64_t Record.Value.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1DEE1BFA0(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t Record.Value.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Record.Value(0) + 20);

  return sub_1DEE2C3D8(v3, a1);
}

uint64_t Record.Value.protocolVersion.setter(uint64_t a1)
{
  result = type metadata accessor for Record.Value(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t Record.metadata.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_1DEED5E24(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3 + *(a2(0) + 20);

  return a3(a1, v5);
}

uint64_t Record.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Record.Value(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_1DEF8DF28();

  v11 = 0x617461646174656DLL;
  v12 = 0xEA0000000000203ALL;
  v6 = *v0;
  v7 = RecordMetadata.description.getter();
  MEMORY[0x1E12CB180](v7);

  MEMORY[0x1E12CB180](0x3A65756C6176203BLL, 0xE900000000000020);
  v8 = type metadata accessor for Record(0);
  sub_1DEED9760(v1 + *(v8 + 20), v5, type metadata accessor for Record.Value);
  v9 = sub_1DEF8D988();
  MEMORY[0x1E12CB180](v9);

  MEMORY[0x1E12CB180](59, 0xE100000000000000);
  return v11;
}

BOOL static Record.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if (!_s16ReplicatorEngine14RecordMetadataC2eeoiySbAC_ACtFZ_0(*a1, *a2))
  {
    return 0;
  }

  v4 = *(type metadata accessor for Record(0) + 20);

  return _s16ReplicatorEngine6RecordV5ValueV2eeoiySbAE_AEtFZ_0(a1 + v4, a2 + v4);
}

uint64_t sub_1DEED607C()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 0x617461646174656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_1DEED60B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1DEF8E4E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DEF8E4E8();

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

uint64_t sub_1DEED618C(uint64_t a1)
{
  v2 = sub_1DEED982C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEED61C8(uint64_t a1)
{
  v2 = sub_1DEED982C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Record.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE43E0, &qword_1DEF92088);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEED982C();
  sub_1DEF8E858();
  v14 = *v3;
  v13[7] = 0;
  type metadata accessor for RecordMetadata();
  sub_1DEED92F0(&qword_1ECDE43F0, type metadata accessor for RecordMetadata);
  sub_1DEF8E298();
  if (!v2)
  {
    v11 = *(type metadata accessor for Record(0) + 20);
    v13[6] = 1;
    type metadata accessor for Record.Value(0);
    sub_1DEED92F0(&qword_1ECDE43F8, type metadata accessor for Record.Value);
    sub_1DEF8E298();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t Record.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = type metadata accessor for Record.Value(0);
  v4 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4400, &qword_1DEF92090);
  v24 = *(v26 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v9 = v21 - v8;
  v10 = type metadata accessor for Record(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEED982C();
  sub_1DEF8E848();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = a1;
  v15 = v13;
  v16 = v24;
  type metadata accessor for RecordMetadata();
  v28 = 0;
  sub_1DEED92F0(&qword_1ECDE4408, type metadata accessor for RecordMetadata);
  v17 = v26;
  sub_1DEF8E1F8();
  v21[0] = v15;
  v21[1] = v29;
  *v15 = v29;
  v27 = 1;
  sub_1DEED92F0(&qword_1ECDE4410, type metadata accessor for Record.Value);
  sub_1DEF8E1F8();
  (*(v16 + 8))(v9, v17);
  v18 = *(v10 + 20);
  v19 = v21[0];
  sub_1DEED4720(v6, v21[0] + v18, type metadata accessor for Record.Value);
  sub_1DEED9760(v19, v23, type metadata accessor for Record);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return sub_1DEED93CC(v19, type metadata accessor for Record);
}

BOOL sub_1DEED67B0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  type metadata accessor for RecordMetadata();
  if (!static RecordMetadata.== infix(_:_:)(*a1, *a2))
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return static Record.Value.== infix(_:_:)(a1 + v6, a2 + v6);
}

uint64_t sub_1DEED6830(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1701736314;
  if (v2 != 1)
  {
    v4 = 0x69687372656E776FLL;
    v3 = 0xE900000000000070;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  v7 = 0xE400000000000000;
  v8 = 1701736314;
  if (*a2 != 1)
  {
    v8 = 0x69687372656E776FLL;
    v7 = 0xE900000000000070;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x696669746E656469;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000007265;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DEF8E4E8();
  }

  return v11 & 1;
}

uint64_t sub_1DEED692C()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();

  return sub_1DEF8E7F8();
}

uint64_t sub_1DEED69D0()
{
  *v0;
  *v0;
  sub_1DEF8D9B8();
}

uint64_t sub_1DEED6A60()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();

  return sub_1DEF8E7F8();
}

uint64_t sub_1DEED6B00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DEEDAD70();
  *a2 = result;
  return result;
}

void sub_1DEED6B30(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0xE400000000000000;
  v5 = 1701736314;
  if (v2 != 1)
  {
    v5 = 0x69687372656E776FLL;
    v4 = 0xE900000000000070;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696669746E656469;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DEED6B90()
{
  v1 = 1701736314;
  if (*v0 != 1)
  {
    v1 = 0x69687372656E776FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1DEED6BEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DEEDAD70();
  *a1 = result;
  return result;
}

uint64_t sub_1DEED6C14(uint64_t a1)
{
  v2 = sub_1DEEDA6B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEED6C50(uint64_t a1)
{
  v2 = sub_1DEEDA6B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEED6C8C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4518, &qword_1DEF92970);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEDA6B4();
  sub_1DEF8E858();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  sub_1DEF8E278();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v17[14] = 1;
    sub_1DEF8E278();
    v16 = *(type metadata accessor for Record.ID.Versions.V0(0) + 24);
    v17[13] = 2;
    type metadata accessor for Record.ID.Ownership(0);
    sub_1DEED92F0(&qword_1ECDE4510, type metadata accessor for Record.ID.Ownership);
    sub_1DEF8E298();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DEED6ED8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E656449656E6F7ALL;
  v4 = 0xEE00726569666974;
  if (v2 != 1)
  {
    v3 = 0x69687372656E776FLL;
    v4 = 0xE900000000000070;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  v7 = 0x6E656449656E6F7ALL;
  v8 = 0xEE00726569666974;
  if (*a2 != 1)
  {
    v7 = 0x69687372656E776FLL;
    v8 = 0xE900000000000070;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x696669746E656469;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000007265;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DEF8E4E8();
  }

  return v11 & 1;
}

uint64_t sub_1DEED6FFC()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();

  return sub_1DEF8E7F8();
}

uint64_t sub_1DEED70B4()
{
  *v0;
  *v0;
  sub_1DEF8D9B8();
}

uint64_t sub_1DEED7158()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();

  return sub_1DEF8E7F8();
}

uint64_t sub_1DEED720C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DEEDADBC();
  *a2 = result;
  return result;
}

void sub_1DEED723C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0xEE00726569666974;
  v5 = 0x6E656449656E6F7ALL;
  if (v2 != 1)
  {
    v5 = 0x69687372656E776FLL;
    v4 = 0xE900000000000070;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696669746E656469;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DEED72B0()
{
  v1 = 0x6E656449656E6F7ALL;
  if (*v0 != 1)
  {
    v1 = 0x69687372656E776FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1DEED7320@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DEEDADBC();
  *a1 = result;
  return result;
}

uint64_t sub_1DEED7348(uint64_t a1)
{
  v2 = sub_1DEEDA660();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEED7384(uint64_t a1)
{
  v2 = sub_1DEEDA660();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEED73C0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4500, &qword_1DEF92968);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEDA660();
  sub_1DEF8E858();
  v11 = *v3;
  v12 = v3[1];
  v17 = 0;
  sub_1DEF8E278();
  if (!v2)
  {
    v16 = v3[2];
    v15[15] = 1;
    type metadata accessor for Zone.ID();
    sub_1DEED92F0(&qword_1ECDE2EA8, type metadata accessor for Zone.ID);
    sub_1DEF8E298();
    v13 = *(type metadata accessor for Record.ID.Versions.V8(0) + 24);
    v15[14] = 2;
    type metadata accessor for Record.ID.Ownership(0);
    sub_1DEED92F0(&qword_1ECDE4510, type metadata accessor for Record.ID.Ownership);
    sub_1DEF8E298();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t Record.ID.encode(to:)(uint64_t a1)
{
  v2 = v1;
  sub_1DEE29594(a1, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4418, &qword_1DEF92098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4420, &qword_1DEF920A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_1DEE171B4(v25, &qword_1ECDE4428, &qword_1DEF920A8);
    goto LABEL_5;
  }

  sub_1DEE2F1AC(v25, v27);
  v3 = v28;
  v4 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v5 = (*(v4 + 16))(v3, v4);
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
LABEL_5:
    v8 = *(v1 + 16);
    v7 = *(v1 + 24);
    v9 = *(v2 + 32);
    v10 = OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership;
    v11 = type metadata accessor for Record.ID.Versions.V8(0);
    v31 = v11;
    v32 = sub_1DEED92F0(&qword_1ECDE4430, type metadata accessor for Record.ID.Versions.V8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
    sub_1DEED9760(v2 + v10, boxed_opaque_existential_1 + *(v11 + 24), type metadata accessor for Record.ID.Ownership);
    *boxed_opaque_existential_1 = v8;
    boxed_opaque_existential_1[1] = v7;
    boxed_opaque_existential_1[2] = v9;

    goto LABEL_10;
  }

  v14 = *(v1 + 16);
  v13 = *(v1 + 24);
  v15 = *(v2 + 32);
  if (v5 > 7)
  {
    v21 = OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership;
    v22 = type metadata accessor for Record.ID.Versions.V8(0);
    v31 = v22;
    v32 = sub_1DEED92F0(&qword_1ECDE4430, type metadata accessor for Record.ID.Versions.V8);
    v23 = __swift_allocate_boxed_opaque_existential_1(v30);
    sub_1DEED9760(v2 + v21, v23 + *(v22 + 24), type metadata accessor for Record.ID.Ownership);
    *v23 = v14;
    v23[1] = v13;
    v23[2] = v15;
  }

  else
  {
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    v33 = v16;
    v18 = OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership;
    v19 = type metadata accessor for Record.ID.Versions.V0(0);
    v31 = v19;
    v32 = sub_1DEED92F0(&qword_1ECDE4438, type metadata accessor for Record.ID.Versions.V0);
    v20 = __swift_allocate_boxed_opaque_existential_1(v30);
    sub_1DEED9760(v2 + v18, v20 + *(v19 + 24), type metadata accessor for Record.ID.Ownership);
    *v20 = v14;
    v20[1] = v13;
    v20[2] = v33;
    v20[3] = v17;
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
LABEL_10:
  __swift_project_boxed_opaque_existential_1(v30, v31);
  sub_1DEF8D8A8();
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

void *sub_1DEED7964@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = Record.ID.init(from:)(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_1DEED79E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4540, &qword_1DEF92980);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEDA75C();
  sub_1DEF8E858();
  v11 = v3[1];
  v15 = *v3;
  v16 = v11;
  v14[15] = 0;
  sub_1DEE1BFF4(v15, v11);
  sub_1DEEBBEC0();
  sub_1DEF8E298();
  sub_1DEE1BFA0(v15, v16);
  if (!v2)
  {
    v12 = *(type metadata accessor for Record.Value.Versions.V0(0) + 20);
    LOBYTE(v15) = 1;
    sub_1DEF8D1E8();
    sub_1DEED92F0(&qword_1ECDE4538, MEMORY[0x1E6968FB0]);
    sub_1DEF8E258();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DEED7BBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4550, &qword_1DEF92988);
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for Record.Value.Versions.V0(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 28);
  v18 = sub_1DEF8D1E8();
  v19 = *(*(v18 - 8) + 56);
  v27 = v17;
  v19(&v15[v17], 1, 1, v18);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEDA75C();
  sub_1DEF8E848();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1DEE171B4(&v15[v27], &qword_1ECDE4890, &qword_1DEF90990);
  }

  else
  {
    v21 = v25;
    v29 = 0;
    sub_1DEE1E77C();
    v22 = v26;
    sub_1DEF8E1F8();
    *v15 = v28;
    LOBYTE(v28) = 1;
    sub_1DEED92F0(&qword_1ECDE4558, MEMORY[0x1E6968FB0]);
    sub_1DEF8E1B8();
    (*(v21 + 8))(v11, v22);
    sub_1DEED4690(v7, &v15[v27]);
    sub_1DEED9760(v15, v24, type metadata accessor for Record.Value.Versions.V0);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1DEED93CC(v15, type metadata accessor for Record.Value.Versions.V0);
  }
}

uint64_t sub_1DEED7F1C()
{
  if (*v0)
  {
    result = 7107189;
  }

  else
  {
    result = 1635017060;
  }

  *v0;
  return result;
}

uint64_t sub_1DEED7F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DEF8E4E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DEF8E4E8();

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

uint64_t sub_1DEED8024(uint64_t a1)
{
  v2 = sub_1DEEDA75C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEED8060(uint64_t a1)
{
  v2 = sub_1DEEDA75C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEED80CC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4528, &qword_1DEF92978);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEDA708();
  sub_1DEF8E858();
  v11 = v3[1];
  v17 = *v3;
  v18 = v11;
  v16[15] = 0;
  sub_1DEE1BFF4(v17, v11);
  sub_1DEEBBEC0();
  sub_1DEF8E298();
  sub_1DEE1BFA0(v17, v18);
  if (!v2)
  {
    v12 = type metadata accessor for Record.Value.Versions.V8(0);
    v13 = *(v12 + 20);
    LOBYTE(v17) = 1;
    sub_1DEF8D1E8();
    sub_1DEED92F0(&qword_1ECDE4538, MEMORY[0x1E6968FB0]);
    sub_1DEF8E258();
    v14 = *(v3 + *(v12 + 24));
    LOBYTE(v17) = 2;
    sub_1DEF8E2B8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DEED82D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4560, &qword_1DEF92990);
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for Record.Value.Versions.V8(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 20);
  v18 = sub_1DEF8D1E8();
  v19 = *(*(v18 - 8) + 56);
  v31 = v15;
  v32 = v17;
  v19(&v15[v17], 1, 1, v18);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEEDA708();
  sub_1DEF8E848();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1DEE171B4(v31 + v32, &qword_1ECDE4890, &qword_1DEF90990);
  }

  else
  {
    v27 = a1;
    v21 = v7;
    v22 = v29;
    v34 = 0;
    sub_1DEE1E77C();
    v23 = v30;
    sub_1DEF8E1F8();
    v24 = v31;
    *v31 = v33;
    LOBYTE(v33) = 1;
    sub_1DEED92F0(&qword_1ECDE4558, MEMORY[0x1E6968FB0]);
    sub_1DEF8E1B8();
    sub_1DEED4690(v21, v24 + v32);
    LOBYTE(v33) = 2;
    v25 = sub_1DEF8E218();
    (*(v22 + 8))(v11, v23);
    *(v24 + *(v12 + 24)) = v25;
    sub_1DEED9760(v24, v28, type metadata accessor for Record.Value.Versions.V8);
    __swift_destroy_boxed_opaque_existential_1(v27);
    return sub_1DEED93CC(v24, type metadata accessor for Record.Value.Versions.V8);
  }
}

uint64_t sub_1DEED86A0()
{
  v1 = 7107189;
  if (*v0 != 1)
  {
    v1 = 0x6C6F636F746F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1DEED86F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DEEDAE08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DEED8720(uint64_t a1)
{
  v2 = sub_1DEEDA708();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEED875C(uint64_t a1)
{
  v2 = sub_1DEEDA708();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Record.Value.encode(to:)(uint64_t a1)
{
  v2 = v1;
  sub_1DEE29594(a1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4418, &qword_1DEF92098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4420, &qword_1DEF920A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    sub_1DEE171B4(v26, &qword_1ECDE4428, &qword_1DEF920A8);
    goto LABEL_5;
  }

  sub_1DEE2F1AC(v26, v28);
  v3 = v29;
  v4 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v5 = (*(v4 + 16))(v3, v4);
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_5:
    v7 = *v1;
    v8 = v2[1];
    v9 = type metadata accessor for Record.Value(0);
    v10 = *(v9 + 20);
    v11 = type metadata accessor for Record.Value.Versions.V8(0);
    v32 = v11;
    v33 = sub_1DEED92F0(&qword_1ECDE4440, type metadata accessor for Record.Value.Versions.V8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
    sub_1DEE2C3D8(v2 + v10, boxed_opaque_existential_1 + *(v11 + 20));
    v13 = *(v2 + *(v9 + 24));
    *boxed_opaque_existential_1 = v7;
    boxed_opaque_existential_1[1] = v8;
    *(boxed_opaque_existential_1 + *(v11 + 24)) = v13;
    sub_1DEE1BFF4(v7, v8);
    goto LABEL_10;
  }

  v14 = v5;
  v15 = *v1;
  v16 = v2[1];
  v17 = type metadata accessor for Record.Value(0);
  v18 = *(v17 + 20);
  if (v14 > 7)
  {
    v21 = v17;
    v22 = type metadata accessor for Record.Value.Versions.V8(0);
    v32 = v22;
    v33 = sub_1DEED92F0(&qword_1ECDE4440, type metadata accessor for Record.Value.Versions.V8);
    v23 = __swift_allocate_boxed_opaque_existential_1(v31);
    sub_1DEE2C3D8(v2 + v18, v23 + *(v22 + 20));
    v24 = *(v2 + *(v21 + 24));
    *v23 = v15;
    v23[1] = v16;
    *(v23 + *(v22 + 24)) = v24;
  }

  else
  {
    v19 = type metadata accessor for Record.Value.Versions.V0(0);
    v32 = v19;
    v33 = sub_1DEED92F0(&qword_1ECDE4448, type metadata accessor for Record.Value.Versions.V0);
    v20 = __swift_allocate_boxed_opaque_existential_1(v31);
    sub_1DEE2C3D8(v2 + v18, v20 + *(v19 + 20));
    *v20 = v15;
    v20[1] = v16;
  }

  sub_1DEE1BFF4(v15, v16);
  __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_10:
  __swift_project_boxed_opaque_existential_1(v31, v32);
  sub_1DEF8D8A8();
  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t Record.Value.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = type metadata accessor for Record.Value.Versions.V8(0);
  v4 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v6 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v36 - v8);
  v10 = type metadata accessor for Record.Value.Versions.V0(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for Record.Value(0);
  v15 = *(v14 + 20);
  v16 = sub_1DEF8D1E8();
  (*(*(v16 - 8) + 56))(a2 + v15, 1, 1, v16);
  sub_1DEE29594(a1, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE43C8, &qword_1DEF92070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE43D0, &qword_1DEF92078);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v41 = 0;
    memset(v40, 0, sizeof(v40));
    sub_1DEE171B4(v40, &qword_1ECDE43D8, &qword_1DEF92080);
LABEL_5:
    sub_1DEE29594(a1, v43);
    v21 = v46;
    sub_1DEED82D8(v43, v6);
    __swift_destroy_boxed_opaque_existential_1(a1);
    if (!v21)
    {
      v22 = *v6;
      v23 = v6[1];
      *a2 = *v6;
      a2[1] = v23;
      v24 = v39;
      v25 = *(v39 + 20);
      sub_1DEE1BFF4(v22, v23);
      sub_1DEED98C0(v6 + v25, a2 + v15);
      v26 = *(v6 + *(v24 + 24));
      result = sub_1DEED93CC(v6, type metadata accessor for Record.Value.Versions.V8);
      *(a2 + *(v14 + 24)) = v26;
      return result;
    }

    return sub_1DEE171B4(a2 + v15, &qword_1ECDE4890, &qword_1DEF90990);
  }

  v37 = v15;
  v38 = v14;
  sub_1DEE2F1AC(v40, v43);
  v18 = v44;
  v17 = v45;
  __swift_project_boxed_opaque_existential_1(v43, v44);
  v19 = (*(v17 + 16))(v18, v17);
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
    v15 = v37;
    v14 = v38;
    goto LABEL_5;
  }

  if (v19 > 7)
  {
    sub_1DEE29594(a1, v42);
    v31 = v46;
    sub_1DEED82D8(v42, v9);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v15 = v37;
    v29 = v38;
    if (!v31)
    {
      v32 = *v9;
      v33 = v9[1];
      *a2 = *v9;
      a2[1] = v33;
      v34 = v39;
      v35 = *(v39 + 20);
      sub_1DEE1BFF4(v32, v33);
      sub_1DEED98C0(v9 + v35, a2 + v15);
      v30 = *(v9 + *(v34 + 24));
      sub_1DEED93CC(v9, type metadata accessor for Record.Value.Versions.V8);
      goto LABEL_15;
    }
  }

  else
  {
    sub_1DEE29594(a1, v42);
    v28 = v46;
    sub_1DEED7BBC(v42, v13);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v15 = v37;
    v29 = v38;
    if (!v28)
    {
      *a2 = *v13;
      sub_1DEED4690(v13 + *(v10 + 20), a2 + v15);
      v30 = 1;
LABEL_15:
      *(a2 + *(v29 + 24)) = v30;
      return __swift_destroy_boxed_opaque_existential_1(v43);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v43);
  return sub_1DEE171B4(a2 + v15, &qword_1ECDE4890, &qword_1DEF90990);
}

uint64_t _s16ReplicatorEngine6RecordV2IDC9OwnershipO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Record.ID.Ownership(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE40F0, &unk_1DEF91C20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v23 - v15;
  v18 = *(v17 + 56);
  sub_1DEED9760(a1, &v23 - v15, type metadata accessor for Record.ID.Ownership);
  sub_1DEED9760(a2, &v16[v18], type metadata accessor for Record.ID.Ownership);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1DEED9760(v16, v12, type metadata accessor for Record.ID.Ownership);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      v20 = sub_1DEF8D3A8();
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_1DEED93CC(v16, type metadata accessor for Record.ID.Ownership);
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1DEE171B4(v16, &unk_1ECDE40F0, &unk_1DEF91C20);
    v20 = 0;
    return v20 & 1;
  }

  sub_1DEED93CC(v16, type metadata accessor for Record.ID.Ownership);
  v20 = 1;
  return v20 & 1;
}

uint64_t _s16ReplicatorEngine6RecordV2IDC2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (sub_1DEF8E4E8() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[4];
  v6 = a2[4];
  v7 = v6[2] == v5[2] && v6[3] == v5[3];
  if (!v7 && (sub_1DEF8E4E8() & 1) == 0)
  {
    return 0;
  }

  v8 = v6[4] == v5[4] && v6[5] == v5[5];
  if (!v8 && (sub_1DEF8E4E8() & 1) == 0)
  {
    return 0;
  }

  v9 = a1 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership;
  v10 = a2 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership;

  return _s16ReplicatorEngine6RecordV2IDC9OwnershipO2eeoiySbAG_AGtFZ_0(v9, v10);
}

unint64_t sub_1DEED9248()
{
  result = qword_1ECDE4398;
  if (!qword_1ECDE4398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4398);
  }

  return result;
}

unint64_t sub_1DEED929C()
{
  result = qword_1ECDE43A0;
  if (!qword_1ECDE43A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE43A0);
  }

  return result;
}

uint64_t sub_1DEED92F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DEED9338()
{
  result = qword_1ECDE43A8;
  if (!qword_1ECDE43A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE43A8);
  }

  return result;
}

uint64_t sub_1DEED93CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL _s16ReplicatorEngine6RecordV5ValueV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D1E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4568, &qword_1DEF92998);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  if ((sub_1DEEDFFD4(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v24 = type metadata accessor for Record.Value(0);
  v17 = *(v24 + 20);
  v18 = *(v13 + 48);
  sub_1DEE2C3D8(a1 + v17, v16);
  sub_1DEE2C3D8(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1DEE171B4(v16, &qword_1ECDE4890, &qword_1DEF90990);
      return *(a1 + *(v24 + 24)) == *(a2 + *(v24 + 24));
    }

    goto LABEL_7;
  }

  sub_1DEE2C3D8(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_1DEE171B4(v16, &qword_1ECDE4568, &qword_1DEF92998);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v18], v4);
  sub_1DEED92F0(&qword_1ECDE4570, MEMORY[0x1E6968FB0]);
  v21 = sub_1DEF8D908();
  v22 = *(v5 + 8);
  v22(v8, v4);
  v22(v12, v4);
  sub_1DEE171B4(v16, &qword_1ECDE4890, &qword_1DEF90990);
  if (v21)
  {
    return *(a1 + *(v24 + 24)) == *(a2 + *(v24 + 24));
  }

  return 0;
}

uint64_t sub_1DEED9760(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEED97C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Record.Value(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DEED982C()
{
  result = qword_1ECDE43E8;
  if (!qword_1ECDE43E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE43E8);
  }

  return result;
}

uint64_t sub_1DEED98C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEED9A50()
{
  result = type metadata accessor for RecordMetadata();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Record.Value(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DEED9ADC()
{
  result = type metadata accessor for Record.ID.Ownership(319);
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

uint64_t sub_1DEED9C00()
{
  v0 = sub_1DEF8D3F8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_1DEED9C80()
{
  if (!qword_1ECDE3708)
  {
    sub_1DEF8D1E8();
    v0 = sub_1DEF8DDC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECDE3708);
    }
  }
}

void sub_1DEED9D00()
{
  sub_1DEED9C80();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t __swift_get_extra_inhabitant_index_19Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_20Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1DEED9F24()
{
  sub_1DEED9C80();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1DEED9FE0()
{
  result = type metadata accessor for Record.ID.Ownership(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_50Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Record.ID.Ownership(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_51Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Record.ID.Ownership(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DEEDA1D4()
{
  result = type metadata accessor for Zone.ID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Record.ID.Ownership(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1DEEDA29C()
{
  result = qword_1ECDE44A8;
  if (!qword_1ECDE44A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE44A8);
  }

  return result;
}

unint64_t sub_1DEEDA2F4()
{
  result = qword_1ECDE44B0;
  if (!qword_1ECDE44B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE44B0);
  }

  return result;
}

unint64_t sub_1DEEDA34C()
{
  result = qword_1ECDE44B8;
  if (!qword_1ECDE44B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE44B8);
  }

  return result;
}

unint64_t sub_1DEEDA3A4()
{
  result = qword_1ECDE44C0;
  if (!qword_1ECDE44C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE44C0);
  }

  return result;
}

unint64_t sub_1DEEDA3FC()
{
  result = qword_1ECDE44C8;
  if (!qword_1ECDE44C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE44C8);
  }

  return result;
}

unint64_t sub_1DEEDA454()
{
  result = qword_1ECDE44D0;
  if (!qword_1ECDE44D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE44D0);
  }

  return result;
}

unint64_t sub_1DEEDA4AC()
{
  result = qword_1ECDE44D8;
  if (!qword_1ECDE44D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE44D8);
  }

  return result;
}

unint64_t sub_1DEEDA504()
{
  result = qword_1ECDE44E0;
  if (!qword_1ECDE44E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE44E0);
  }

  return result;
}

unint64_t sub_1DEEDA55C()
{
  result = qword_1ECDE44E8;
  if (!qword_1ECDE44E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE44E8);
  }

  return result;
}

unint64_t sub_1DEEDA5B4()
{
  result = qword_1ECDE44F0;
  if (!qword_1ECDE44F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE44F0);
  }

  return result;
}

unint64_t sub_1DEEDA60C()
{
  result = qword_1ECDE44F8;
  if (!qword_1ECDE44F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE44F8);
  }

  return result;
}

unint64_t sub_1DEEDA660()
{
  result = qword_1ECDE4508;
  if (!qword_1ECDE4508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4508);
  }

  return result;
}

unint64_t sub_1DEEDA6B4()
{
  result = qword_1ECDE4520;
  if (!qword_1ECDE4520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4520);
  }

  return result;
}

unint64_t sub_1DEEDA708()
{
  result = qword_1ECDE4530;
  if (!qword_1ECDE4530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4530);
  }

  return result;
}

unint64_t sub_1DEEDA75C()
{
  result = qword_1ECDE4548;
  if (!qword_1ECDE4548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4548);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessagePriority(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MessagePriority(uint64_t result, unsigned int a2, unsigned int a3)
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