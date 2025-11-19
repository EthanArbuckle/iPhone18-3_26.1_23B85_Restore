uint64_t S2CellId.rawPoint.getter@<X0>(double *a1@<X8>)
{
  v3 = *v1;
  v16 = 0;
  v17 = 0;
  v4 = sub_1D9B08A90(&v17, &v16, 7, (v3 >> 61) & 1);
  v5 = sub_1D9B08A90(&v17, &v16, 6, v4);
  v6 = sub_1D9B08A90(&v17, &v16, 5, v5);
  v7 = sub_1D9B08A90(&v17, &v16, 4, v6);
  v8 = sub_1D9B08A90(&v17, &v16, 3, v7);
  v9 = sub_1D9B08A90(&v17, &v16, 2, v8);
  v10 = sub_1D9B08A90(&v17, &v16, 1, v9);
  result = sub_1D9B08A90(&v17, &v16, 0, v10);
  v12 = 2 * ((v17 ^ (v3 >> 2)) & 1);
  if (v3)
  {
    v12 = 1;
  }

  v13 = v12 + 2 * v17;
  if (__OFADD__(v12, 2 * v17))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (__OFADD__(v13, -1073741824))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = __OFADD__(v12, 2 * v16);
  v15 = v12 + 2 * v16;
  if (v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(v15, -1073741824))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  return sub_1D9B073E4(v3 >> 61, v13 - 0x40000000, v15 - 0x40000000, a1);
}

Swift::Int __swiftcall S2CellId.toFaceIJOrientation(i:j:orientation:)(Swift::Int *i, Swift::Int *j, Swift::Int_optional *orientation)
{
  v7 = *v3;
  v8 = sub_1D9B08A90(i, j, 7, (*v3 >> 61) & 1);
  v9 = sub_1D9B08A90(i, j, 6, v8);
  v10 = sub_1D9B08A90(i, j, 5, v9);
  v11 = sub_1D9B08A90(i, j, 4, v10);
  v12 = sub_1D9B08A90(i, j, 3, v11);
  v13 = sub_1D9B08A90(i, j, 2, v12);
  v14 = sub_1D9B08A90(i, j, 1, v13);
  result = sub_1D9B08A90(i, j, 0, v14);
  if (orientation->is_nil)
  {
    return v7 >> 61;
  }

  if (!__OFSUB__(0, v7))
  {
    orientation->value = result ^ ((v7 & -v7 & 0x1111111111111110) != 0);
    orientation->is_nil = 0;
    return v7 >> 61;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9B073E4@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, double *a4@<X8>)
{
  v4 = vcvtd_n_f64_s64(a2, 0x1EuLL);
  v5 = v4 < 0.0;
  v6 = 1.0;
  v7 = 1.0 - (1.0 - v4) * (1.0 - v4);
  v8 = -1.0;
  v9 = (v4 + 1.0) * (v4 + 1.0) + -1.0;
  if (v5)
  {
    v9 = v7;
  }

  v10 = v9 * 0.333333333;
  v11 = vcvtd_n_f64_s64(a3, 0x1EuLL);
  v5 = v11 < 0.0;
  v12 = 1.0 - (1.0 - v11) * (1.0 - v11);
  v13 = (v11 + 1.0) * (v11 + 1.0) + -1.0;
  if (v5)
  {
    v13 = v12;
  }

  v14 = v13 * 0.333333333;
  v15 = -v10;
  v16 = -v14;
  if (result == 4)
  {
    v17 = -1.0;
  }

  else
  {
    v17 = v10;
  }

  if (result == 4)
  {
    v18 = -v10;
  }

  else
  {
    v18 = -1.0;
  }

  if (result == 3)
  {
    v19 = -1.0;
  }

  else
  {
    v19 = v14;
  }

  if (result == 3)
  {
    v17 = -v14;
    v18 = -v10;
  }

  if (result == 2)
  {
    v19 = -v10;
  }

  else
  {
    v16 = v17;
  }

  if (result == 2)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = v18;
  }

  if (result == 1)
  {
    v21 = 1.0;
  }

  else
  {
    v15 = v14;
    v21 = v10;
  }

  if (result == 1)
  {
    v8 = v14;
  }

  if (result)
  {
    v6 = v15;
    v10 = v21;
    v14 = v8;
  }

  if (result > 1)
  {
    v6 = v19;
    v10 = v16;
    v14 = v20;
  }

  *a4 = v6;
  a4[1] = v10;
  a4[2] = v14;
  return result;
}

void S2CellId.latLng.getter(long double *a1@<X8>)
{
  v7[3] = *v1;
  S2CellId.rawPoint.getter(v7);
  v3 = v7[0];
  v4 = v7[1];
  v5 = atan2(v7[2], sqrt(v3 * v3 + v4 * v4));
  v6 = atan2(v4, v3);
  *a1 = v5;
  a1[1] = v6;
}

BOOL S2CellId.isValid.getter()
{
  v1 = *v0;
  if (*v0 >> 62 == 3)
  {
    return 0;
  }

  if (!__OFSUB__(0, v1))
  {
    return (v1 & -v1 & 0x1555555555555555) != 0;
  }

  __break(1u);
  return result;
}

unint64_t static S2CellId.lowestOnBit(forLevel:)(unint64_t result)
{
  if (__OFSUB__(30, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((0x400000000000001ELL - result) < 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v1 = 2 * (30 - result);
  v2 = v1 - 65;
  v3 = 1 << v1;
  if (v1 >= 0x40)
  {
    v3 = 0;
  }

  v4 = 1uLL >> ((-2 * (30 - result)) & 0x3E);
  if (v1 <= 0xFFFFFFFFFFFFFFC0)
  {
    v4 = 0;
  }

  if (((30 - result) & 0x4000000000000000) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  if (v2 >= 0xFFFFFFFFFFFFFF7FLL)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

Swift::Int __swiftcall S2CellId.childPosition(level:)(Swift::Int level)
{
  v2 = 30 - level;
  if (__OFSUB__(30, level))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (0x400000000000001ELL - level < 0)
  {
LABEL_12:
    __break(1u);
    return level;
  }

  v3 = (2 * v2) | 1;
  v4 = *v1 >> v3;
  if (v2 < 0)
  {
    v4 = *v1 << -v3;
  }

  if (v2 >= 32)
  {
    v5 = *v1 >> 63;
  }

  else
  {
    LOBYTE(v5) = v4;
  }

  if (v3 < -64)
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 3;
}

void *S2CellId.intersects(with:)(void *result)
{
  v2 = *result;
  if (__OFSUB__(0, *result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = -*result & v2;
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (__OFSUB__(v2, v5))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = *v1;
  if (__OFSUB__(0, *v1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = -*v1 & v6;
  v4 = __OFSUB__(v7, 1);
  v8 = v7 - 1;
  if (v4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (__OFADD__(v6, v8))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v2 - v5 > (v6 + v8))
  {
    return 0;
  }

  v4 = __OFADD__(v2, v5);
  v9 = v2 + v5;
  if (v4)
  {
    goto LABEL_18;
  }

  if (!__OFSUB__(v6, v8))
  {
    return (v9 >= v6 - v8);
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t S2CellId.childBegin(level:)@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *v2;
  if (__OFSUB__(0, *v2))
  {
    __break(1u);
    goto LABEL_18;
  }

  v4 = 30 - result;
  if (__OFSUB__(30, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (0x400000000000001ELL - result < 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = -*v2 & v3;
  v6 = 2 * v4;
  v7 = 2 * v4 - 65;
  v8 = 1 << v6;
  if (v6 >= 0x40)
  {
    v8 = 0;
  }

  v9 = 1uLL >> (-v6 & 0x3E);
  if (v6 <= 0xFFFFFFFFFFFFFFC0)
  {
    v9 = 0;
  }

  if (v6 < 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  if (v7 <= 0xFFFFFFFFFFFFFF7ELL)
  {
    v10 = 0;
  }

  v11 = v3 >= v5;
  v12 = v3 - v5;
  if (!v11)
  {
    goto LABEL_20;
  }

  v11 = __CFADD__(v12, v10);
  v13 = v12 + v10;
  if (!v11)
  {
    *a2 = v13;
    return result;
  }

LABEL_21:
  __break(1u);
  return result;
}

void S2CellId.childEnd()(void *a1@<X8>)
{
  v2 = *v1;
  if (__OFSUB__(0, *v1))
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = -*v1 & v2;
  v4 = __CFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = __CFADD__(v5, v3 >> 2);
  v6 = v5 + (v3 >> 2);
  if (!v4)
  {
    *a1 = v6;
    return;
  }

LABEL_7:
  __break(1u);
}

void S2CellId.prev()(void *a1@<X8>)
{
  if (__OFSUB__(0, *v1))
  {
    __break(1u);
  }

  else
  {
    *a1 = *v1 - 2 * (-*v1 & *v1);
  }
}

void S2CellId.nextWrap()(unint64_t *a1@<X8>)
{
  if (__OFSUB__(0, *v1))
  {
    __break(1u);
  }

  else
  {
    v2 = *v1 + 2 * (-*v1 & *v1);
    if (v2 >> 62 == 3)
    {
      v2 += 0x4000000000000000;
    }

    *a1 = v2;
  }
}

void S2CellId.prevWrap()(uint64_t *a1@<X8>)
{
  if (__OFSUB__(0, *v1))
  {
    __break(1u);
  }

  else
  {
    v2 = *v1 - 2 * (-*v1 & *v1);
    if (v2 >= 0xC000000000000000)
    {
      v2 -= 0x4000000000000000;
    }

    *a1 = v2;
  }
}

uint64_t static S2CellId.begin(level:)@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  if (__OFSUB__(30, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (0x400000000000001ELL - result < 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v2 = 2 * (30 - result);
  v3 = v2 - 65;
  v4 = 1 << v2;
  if (v2 >= 0x40)
  {
    v4 = 0;
  }

  v5 = 1uLL >> ((-2 * (30 - result)) & 0x3E);
  if (v2 <= 0xFFFFFFFFFFFFFFC0)
  {
    v5 = 0;
  }

  if (((30 - result) & 0x4000000000000000) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if (v3 <= 0xFFFFFFFFFFFFFF7ELL)
  {
    v6 = 0;
  }

  *a2 = v6;
  return result;
}

uint64_t static S2CellId.end(level:)@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  if (__OFSUB__(30, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (0x400000000000001ELL - result < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v2 = 2 * (30 - result);
  v3 = v2 - 65;
  v4 = 1 << v2;
  if (v2 >= 0x40)
  {
    v4 = 0;
  }

  v5 = 1uLL >> ((-2 * (30 - result)) & 0x3E);
  if (v2 <= 0xFFFFFFFFFFFFFFC0)
  {
    v5 = 0;
  }

  if (((30 - result) & 0x4000000000000000) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if (v3 <= 0xFFFFFFFFFFFFFF7ELL)
  {
    v6 = 0;
  }

  v7 = __CFADD__(v6, 0xC000000000000000);
  v8 = v6 - 0x4000000000000000;
  if (!v7)
  {
    *a2 = v8;
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t S2CellId.NumberFormatException.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t S2CellId.init(token:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{

  v7 = sub_1D9C7DD7C();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D9B08F94(v7, 0);

    v10 = sub_1D9B08ECC(&v23, v9 + 4, v8, a1, a2);

    if (v10 != v8)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v12 = v9[2];
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_10:

    v13 = 0x80000001D9CA9E00;
    v14 = 0xD000000000000022;
LABEL_11:
    sub_1D9B09018();
    swift_allocError();
    *v15 = v14;
    v15[1] = v13;
    return swift_willThrow();
  }

  v9 = MEMORY[0x1E69E7CC0];
  v12 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v12 > 0x10 || a1 == 88 && a2 == 0xE100000000000000 || (result = sub_1D9C7E7DC(), (result & 1) != 0))
  {

    *a3 = 0;
    return result;
  }

  v22 = a3;
  v25 = v3;
  v16 = 0;
  v17 = 0;
  for (i = v9 + 5; ; i += 2)
  {
    if (v17 >= v12)
    {
      v20 = 0;
      goto LABEL_19;
    }

    if (v17 >= v9[2])
    {
      goto LABEL_27;
    }

    v19 = sub_1D9C7DD2C();
    v20 = strtoul((v19 + 32), 0, 16);

    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_28;
    }

    if (v16 >= 0x1999999999999999)
    {
      break;
    }

LABEL_19:
    if (v16 >> 60)
    {
      goto LABEL_30;
    }

    v21 = __CFADD__(v20, 16 * v16);
    v16 = v20 + 16 * v16;
    if (v21)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (++v17 == 16)
    {

      *v22 = v16;
      return result;
    }
  }

  if (v16 != 0x1999999999999999 || v20 >= 6)
  {

    v23 = 0xD00000000000001DLL;
    v24 = 0x80000001D9CA9E30;
    MEMORY[0x1DA73DF90](a1, a2);

    v14 = v23;
    v13 = v24;
    goto LABEL_11;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t S2CellId.token.getter()
{
  if (!*v0)
  {
    return 88;
  }

  sub_1D9AB81F4();
  sub_1D9C7DE6C();
  v1 = sub_1D9C7DCFC();
  v3 = v2;

  v23 = v3;

  v4 = sub_1D9C7DD7C();

  if (!__OFSUB__(16, v4))
  {
    if (16 - v4 >= 1)
    {
      v6 = v4 - 16;
      do
      {
        sub_1D9C7DDCC();
      }

      while (!__CFADD__(v6++, 1));
    }

    v8 = sub_1D9C7DD7C();
    v9 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v9 = v1;
    }

    v10 = 7;
    if (((v23 >> 60) & ((v1 & 0x800000000000000) == 0)) != 0)
    {
      v10 = 11;
    }

    v11 = v10 | (v9 << 16);
    while (v11 >= 0x4000)
    {
      v11 = sub_1D9C7DD8C();
      if (sub_1D9C7DE7C() == 48 && v14 == 0xE100000000000000)
      {

        v13 = __OFSUB__(v8--, 1);
        if (v13)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v12 = sub_1D9C7E7DC();

        if ((v12 & 1) == 0)
        {
          break;
        }

        v13 = __OFSUB__(v8--, 1);
        if (v13)
        {
LABEL_19:
          __break(1u);
          break;
        }
      }
    }

    v15 = sub_1D9B0906C(v8);
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v22 = MEMORY[0x1DA73DF10](v15, v17, v19, v21);

    return v22;
  }

  __break(1u);
  return result;
}

uint64_t S2CellId.getEdgeNeighbors()()
{
  v1 = *v0;
  v2 = S2CellId.level.getter();
  v17 = 0;
  v18 = 0;
  v3 = sub_1D9B08A90(&v18, &v17, 7, (v1 >> 61) & 1);
  v4 = sub_1D9B08A90(&v18, &v17, 6, v3);
  v5 = sub_1D9B08A90(&v18, &v17, 5, v4);
  v6 = sub_1D9B08A90(&v18, &v17, 4, v5);
  v7 = sub_1D9B08A90(&v18, &v17, 3, v6);
  v8 = sub_1D9B08A90(&v18, &v17, 2, v7);
  v9 = sub_1D9B08A90(&v18, &v17, 1, v8);
  v16 = v1;
  sub_1D9B08A90(&v18, &v17, 0, v9);
  v10 = 1 << (30 - v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB517D8);
  result = swift_allocObject();
  *(result + 16) = xmmword_1D9C85E90;
  v12 = v17;
  if (__OFSUB__(v17, v10))
  {
    __break(1u);
    goto LABEL_7;
  }

  v13 = result;
  v14 = v1 >> 61;
  v15 = v18;
  S2CellId.init(face:i:j:sameFace:)(v14, v18, v17 - v10, v17 - v10 >= 0, &v16);
  result = S2CellId.parent(level:)(v2, v13 + 4);
  if (__OFADD__(v15, v10))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  S2CellId.init(face:i:j:sameFace:)(v14, v15 + v10, v12, v15 + v10 < 0x40000000, &v16);
  result = S2CellId.parent(level:)(v2, v13 + 5);
  if (__OFADD__(v12, v10))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  S2CellId.init(face:i:j:sameFace:)(v14, v15, v12 + v10, v12 + v10 < 0x40000000, &v16);
  result = S2CellId.parent(level:)(v2, v13 + 6);
  if (!__OFSUB__(v15, v10))
  {
    S2CellId.init(face:i:j:sameFace:)(v14, v15 - v10, v12, v15 - v10 >= 0, &v16);
    S2CellId.parent(level:)(v2, v13 + 7);
    return v13;
  }

LABEL_9:
  __break(1u);
  return result;
}

char *S2CellId.getVertexNeighbors(level:)(char *a1)
{
  v10 = *v2;
  v42 = 0;
  v43 = 0;
  v11 = sub_1D9B08A90(&v43, &v42, 7, (v10 >> 61) & 1);
  v12 = sub_1D9B08A90(&v43, &v42, 6, v11);
  v13 = sub_1D9B08A90(&v43, &v42, 5, v12);
  v14 = sub_1D9B08A90(&v43, &v42, 4, v13);
  v15 = sub_1D9B08A90(&v43, &v42, 3, v14);
  v16 = sub_1D9B08A90(&v43, &v42, 2, v15);
  v17 = sub_1D9B08A90(&v43, &v42, 1, v16);
  v41 = v10;
  v18 = &v41;
  sub_1D9B08A90(&v43, &v42, 0, v17);
  v19 = (a1 + 1);
  if (__OFADD__(a1, 1))
  {
    __break(1u);
    goto LABEL_53;
  }

  v20 = __OFSUB__(30, v19);
  v19 = 29 - a1;
  if (v20)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v21 = v19 > 0x40;
  if (v19 >= 0x40)
  {
    v22 = 0;
  }

  else
  {
    v22 = 1 << v19;
  }

  if (v21)
  {
    v22 = 0;
  }

  v1 = 2 * v22;
  v3 = v43;
  if ((v43 & v22) == 0)
  {
    v8 = -2 * v22;
    if (__OFSUB__(0, v1))
    {
      __break(1u);
    }

    else if (!__OFSUB__(v43, v1))
    {
      v23 = v43 - v1 >= 0;
      goto LABEL_14;
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (__OFADD__(v43, v1))
  {
    __break(1u);
    goto LABEL_62;
  }

  v23 = v43 + v1 < 0x40000000;
  v8 = 2 * v22;
LABEL_14:
  v4 = v42;
  if ((v42 & v22) != 0)
  {
    if (!__OFADD__(v42, v1))
    {
      v24 = v42 + v1 < 0x40000000;
      goto LABEL_20;
    }

LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v22 *= -2;
  if (__OFSUB__(0, v1))
  {
    goto LABEL_71;
  }

  if (__OFSUB__(v42, v1))
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v24 = v42 - v1 >= 0;
  v1 = -v1;
LABEL_20:
  v19 = 30 - a1;
  if (__OFSUB__(30, a1))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (0x400000000000001ELL - a1 >= 0)
  {
    v7 = 2 * v19;
    v40 = v23;
    v38 = v24;
    v39 = 2 * v19 - 65;
    if (v39 <= 0xFFFFFFFFFFFFFF7ELL)
    {
LABEL_23:
      v25 = 0;
      goto LABEL_27;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      v25 = 1 << v7;
      if (v7 >= 0x40)
      {
        v25 = 0;
      }

      goto LABEL_27;
    }

LABEL_63:
    if (v7 <= 0xFFFFFFFFFFFFFFC0)
    {
      goto LABEL_23;
    }

    v25 = 1uLL >> (-v7 & 0x3E);
LABEL_27:
    v18 = (v10 & -v25 | v25);
    a1 = sub_1D9AFAA28(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v6 = *(a1 + 2);
    v19 = *(a1 + 3);
    v5 = v6 + 1;
    if (v6 < v19 >> 1)
    {
      goto LABEL_28;
    }

    goto LABEL_56;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  a1 = sub_1D9AFAA28((v19 > 1), v5, 1, a1);
LABEL_28:
  *(a1 + 2) = v5;
  v26 = &a1[8 * v6];
  *(v26 + 32) = v18;
  v27 = v3 + v8;
  if (!__OFADD__(v3, v8))
  {
    v10 >>= 61;
    S2CellId.init(face:i:j:sameFace:)(v10, v3 + v8, v4, v40, &v41);
    v8 = v39;
    v37 = v27;
    if (v39 < 0xFFFFFFFFFFFFFF7FLL)
    {
LABEL_30:
      v28 = 0;
      goto LABEL_34;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      if (v7 <= 0xFFFFFFFFFFFFFFC0)
      {
        goto LABEL_30;
      }

      v28 = 1uLL >> (-v7 & 0x3E);
    }

    else
    {
      v28 = 1 << v7;
      if (v7 >= 0x40)
      {
        v28 = 0;
      }
    }

LABEL_34:
    v27 = v41 & -v28 | v28;
    v5 = *(a1 + 2);
    v26 = *(a1 + 3);
    v6 = v5 + 1;
    if (v5 < v26 >> 1)
    {
      goto LABEL_35;
    }

    goto LABEL_58;
  }

  __break(1u);
LABEL_58:
  a1 = sub_1D9AFAA28((v26 > 1), v6, 1, a1);
LABEL_35:
  *(a1 + 2) = v6;
  v29 = &a1[8 * v5];
  *(v29 + 32) = v27;
  v20 = __OFADD__(v4, v1);
  v30 = v4 + v1;
  if (v20)
  {
    __break(1u);
    goto LABEL_60;
  }

  LODWORD(v5) = v38;
  S2CellId.init(face:i:j:sameFace:)(v10, v3, v30, v38, &v41);
  if (v8 < 0xFFFFFFFFFFFFFF7FLL)
  {
    goto LABEL_37;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    if (v7 <= 0xFFFFFFFFFFFFFFC0)
    {
LABEL_37:
      v31 = 0;
      goto LABEL_41;
    }

    v31 = 1uLL >> (-v7 & 0x3E);
  }

  else
  {
    v31 = 1 << v7;
    if (v7 >= 0x40)
    {
      v31 = 0;
    }
  }

LABEL_41:
  v1 = v41 & -v31 | v31;
  v27 = *(a1 + 2);
  v29 = *(a1 + 3);
  v3 = v27 + 1;
  if (v27 >= v29 >> 1)
  {
LABEL_60:
    a1 = sub_1D9AFAA28((v29 > 1), v3, 1, a1);
  }

  *(a1 + 2) = v3;
  *&a1[8 * v27 + 32] = v1;
  if (((v40 | v5) & 1) == 0)
  {
    return a1;
  }

  S2CellId.init(face:i:j:sameFace:)(v10, v37, v30, v40 & v5, &v41);
  v22 = v41;
  if (v8 <= 0xFFFFFFFFFFFFFF7ELL)
  {
    goto LABEL_44;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    v32 = 1 << v7;
    if (v7 >= 0x40)
    {
      v32 = 0;
    }

    goto LABEL_48;
  }

LABEL_73:
  if (v7 > 0xFFFFFFFFFFFFFFC0)
  {
    v32 = 1uLL >> (-v7 & 0x3E);
    goto LABEL_48;
  }

LABEL_44:
  v32 = 0;
LABEL_48:
  v33 = v22 & -v32 | v32;
  v35 = *(a1 + 2);
  v34 = *(a1 + 3);
  if (v35 >= v34 >> 1)
  {
    a1 = sub_1D9AFAA28((v34 > 1), v35 + 1, 1, a1);
  }

  *(a1 + 2) = v35 + 1;
  *&a1[8 * v35 + 32] = v33;
  return a1;
}

void S2CellId.getAllNeighbors(level:)(uint64_t a1)
{
  v3 = *v1;
  v69 = 0;
  v70[0] = 0;
  v4 = sub_1D9B08A90(v70, &v69, 7, (v3 >> 61) & 1);
  v5 = sub_1D9B08A90(v70, &v69, 6, v4);
  v6 = sub_1D9B08A90(v70, &v69, 5, v5);
  v7 = sub_1D9B08A90(v70, &v69, 4, v6);
  v8 = sub_1D9B08A90(v70, &v69, 3, v7);
  v9 = sub_1D9B08A90(v70, &v69, 2, v8);
  v10 = sub_1D9B08A90(v70, &v69, 1, v9);
  sub_1D9B08A90(v70, &v69, 0, v10);
  v68 = v3;
  v11 = S2CellId.level.getter();
  v12 = 30 - a1;
  if (__OFSUB__(30, a1))
  {
    goto LABEL_93;
  }

  v13 = 1 << v12;
  if (v12 >= 0x40)
  {
    v13 = 0;
  }

  if (v12 > 0x40)
  {
    v13 = 0;
  }

  v64 = v13;
  v14 = -v13;
  if (__OFSUB__(0, v13))
  {
LABEL_94:
    __break(1u);
  }

  else if (0x400000000000001ELL - a1 >= 0)
  {
    v15 = v3 >> 61;
    v16 = 1 << (30 - v11);
    v17 = v70[0] & -v16;
    v18 = v69 & -v16;
    v19 = 2 * v12;
    v54 = v18 - v13;
    v20 = __OFSUB__(v18, v13);
    v21 = __OFSUB__(v18, v16);
    v55 = v21;
    v56 = v20;
    v22 = 1 << v19;
    if (v19 >= 0x40)
    {
      v22 = 0;
    }

    v66 = 1 << (30 - v11);
    v67 = v69 & -v16;
    v51 = v18 + v16;
    v23 = __OFADD__(v18, v16);
    v53 = v23;
    v61 = v17 - v64;
    v24 = __OFSUB__(v17, v64);
    v60 = v17 - v16;
    v25 = __OFSUB__(v17, v16);
    v62 = v25;
    v63 = v24;
    v57 = v70[0] & -v16;
    v58 = v17 + v16;
    v26 = __OFADD__(v17, v16);
    v59 = v26;
    if (v19 - 65 >= 0xFFFFFFFFFFFFFF7FLL)
    {
      v27 = v22;
    }

    else
    {
      v27 = 0;
    }

    if (v19 <= 0xFFFFFFFFFFFFFFC0)
    {
      v28 = 0;
    }

    else
    {
      v28 = 1uLL >> ((-2 * v12) & 0x3E);
    }

    v50 = v28;
    v29 = MEMORY[0x1E69E7CC0];
    v52 = (v18 - v16) >> 63;
    v65 = v15;
    while (1)
    {
      if (v14 < 0)
      {
        if (__OFADD__(v67, v14))
        {
          goto LABEL_87;
        }

        v38 = v67 + v14 >= 0;
        if (v63)
        {
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
          goto LABEL_94;
        }
      }

      else if (v14 >= v66)
      {
        if (__OFADD__(v67, v14))
        {
          goto LABEL_88;
        }

        v38 = v67 + v14 < 30;
        if (v63)
        {
          goto LABEL_82;
        }
      }

      else
      {
        if (__OFADD__(v57, v14))
        {
          goto LABEL_89;
        }

        if (v56)
        {
          goto LABEL_90;
        }

        if (v55)
        {
          goto LABEL_91;
        }

        S2CellId.init(face:i:j:sameFace:)(v15, v57 + v14, v54, v52 ^ 1, &v68);
        v30 = v27;
        if (v19 > 0xFFFFFFFFFFFFFFBFLL)
        {
          v30 = v50;
        }

        v31 = v68;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1D9AFAA28(0, *(v29 + 2) + 1, 1, v29);
        }

        v33 = *(v29 + 2);
        v32 = *(v29 + 3);
        if (v33 >= v32 >> 1)
        {
          v29 = sub_1D9AFAA28((v32 > 1), v33 + 1, 1, v29);
        }

        *(v29 + 2) = v33 + 1;
        *&v29[8 * v33 + 32] = v31 & -v30 | v30;
        if (v53)
        {
          goto LABEL_92;
        }

        v15 = v65;
        S2CellId.init(face:i:j:sameFace:)(v65, v57 + v14, v51, v51 < 30, &v68);
        v34 = v27;
        if (v19 >= 0xFFFFFFFFFFFFFFC0)
        {
          v34 = v50;
        }

        v35 = v68;
        v37 = *(v29 + 2);
        v36 = *(v29 + 3);
        if (v37 >= v36 >> 1)
        {
          v29 = sub_1D9AFAA28((v36 > 1), v37 + 1, 1, v29);
        }

        *(v29 + 2) = v37 + 1;
        *&v29[8 * v37 + 32] = v35 & -v34 | v34;
        v38 = 1;
        if (v63)
        {
          goto LABEL_82;
        }
      }

      if (__OFADD__(v67, v14))
      {
        goto LABEL_83;
      }

      if (v38 && v62)
      {
        goto LABEL_86;
      }

      v39 = v60 >= 0 && v38;
      S2CellId.init(face:i:j:sameFace:)(v15, v61, v67 + v14, v39, &v68);
      v40 = v27;
      if (v19 > 0xFFFFFFFFFFFFFFBFLL)
      {
        v40 = v50;
      }

      v41 = v68;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1D9AFAA28(0, *(v29 + 2) + 1, 1, v29);
      }

      v43 = *(v29 + 2);
      v42 = *(v29 + 3);
      if (v43 >= v42 >> 1)
      {
        v29 = sub_1D9AFAA28((v42 > 1), v43 + 1, 1, v29);
      }

      *(v29 + 2) = v43 + 1;
      *&v29[8 * v43 + 32] = v41 & -v40 | v40;
      if (v59)
      {
        goto LABEL_84;
      }

      v44 = v58 < 30 && v38;
      v15 = v65;
      S2CellId.init(face:i:j:sameFace:)(v65, v58, v67 + v14, v44, &v68);
      v45 = v27;
      if (v19 >= 0xFFFFFFFFFFFFFFC0)
      {
        v45 = v50;
      }

      v46 = v68;
      v48 = *(v29 + 2);
      v47 = *(v29 + 3);
      if (v48 >= v47 >> 1)
      {
        v29 = sub_1D9AFAA28((v47 > 1), v48 + 1, 1, v29);
      }

      *(v29 + 2) = v48 + 1;
      *&v29[8 * v48 + 32] = v46 & -v45 | v45;
      if (v14 >= v66)
      {
        return;
      }

      v49 = __OFADD__(v14, v64);
      v14 += v64;
      if (v49)
      {
        goto LABEL_85;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1D9B08A90(unint64_t *a1, int64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v6 = a3;
  if ((2 * a3 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v8 = (8 * a3) | 1;
  v9 = *v5 >> v8;
  if ((a3 & 0x1000000000000000) != 0)
  {
    v9 = *v5 << -v8;
  }

  v10 = *v5 >> 63;
  if (8 * a3 < 64)
  {
    v10 = v9;
  }

  if (v8 < -64)
  {
    v10 = 0;
  }

  v11 = 255;
  v12 = 15;
  if (a3 == 7)
  {
    v11 = 15;
  }

  v13 = v10 & v11;
  v5 = a4 + 4 * v13;
  if (__OFADD__(a4, 4 * v13))
  {
    goto LABEL_35;
  }

  v4 = a2;
  v7 = a1;
  if ((byte_1EDD2A9A8 & 1) == 0)
  {
    sub_1D9B066A0(0, 0, 0, 0, 0, 0);
    sub_1D9B066A0(0, 0, 0, 1uLL, 0, 1uLL);
    sub_1D9B066A0(0, 0, 0, 2uLL, 0, 2uLL);
    sub_1D9B066A0(0, 0, 0, 3uLL, 0, 3uLL);
    byte_1EDD2A9A8 = 1;
  }

  LOBYTE(v14) = qword_1EDD2A990;
  if (qword_1EDD2A990 == -1)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_36:
  swift_once();
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_37;
  }

LABEL_16:
  LOBYTE(v14) = off_1EDD2A9A0;
  v11 = *(off_1EDD2A9A0 + 2);
  if (v5 >= v11)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v11 = (v6 - 0x2000000000000000) >> 62;
  if (v11 != 3)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v14 = *(off_1EDD2A9A0 + v5 + 4);
  v11 = 4 * v6;
  if (4 * v6 <= -65)
  {
LABEL_19:
    v15 = v14 >> 63;
    goto LABEL_25;
  }

  if (v11 > 64)
  {
    goto LABEL_21;
  }

  v16 = v14 >> 6;
  if (v11 < 0)
  {
    if (v11 == -64)
    {
      goto LABEL_19;
    }

    v15 = v16 >> ((-4 * v6) & 0x3C);
  }

  else
  {
    if (v11 == 64)
    {
LABEL_21:
      v15 = 0;
      goto LABEL_25;
    }

    v15 = v16 << (v11 & 0x3C);
  }

LABEL_25:
  v17 = __OFADD__(*v7, v15);
  v12 = *v7 + v15;
  if (v17)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  *v7 = v12;
  if ((v11 - 65) < 0xFFFFFFFFFFFFFF7FLL)
  {
    goto LABEL_27;
  }

  v12 = (v14 >> 2) & 0xF;
  if (v11 < 0)
  {
    goto LABEL_42;
  }

  if (v11 == 64)
  {
    goto LABEL_27;
  }

  v18 = v12 << (v11 & 0x3C);
  while (1)
  {
    v12 = *v4;
    v17 = __OFADD__(*v4, v18);
    v11 = *v4 + v18;
    if (!v17)
    {
      break;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    if (v11 == -64)
    {
LABEL_27:
      v18 = 0;
    }

    else
    {
      v18 = v12 >> (-v11 & 0x3C);
    }
  }

  *v4 = v11;
  return v14 & 3;
}

uint64_t S2CellId.hash(into:)()
{
  result = *v0 + HIDWORD(*v0);
  if (!__CFADD__(*v0, HIDWORD(*v0)))
  {
    return MEMORY[0x1DA73EAC0](result);
  }

  __break(1u);
  return result;
}

uint64_t S2CellId.hashValue.getter()
{
  v1 = *v0;
  sub_1D9C7E8DC();
  result = v1 + HIDWORD(v1);
  if (__CFADD__(v1, HIDWORD(v1)))
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1DA73EAC0](result);
    return sub_1D9C7E93C();
  }

  return result;
}

uint64_t sub_1D9B08DE4()
{
  v1 = *v0;
  sub_1D9C7E8DC();
  result = v1 + HIDWORD(v1);
  if (__CFADD__(v1, HIDWORD(v1)))
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1DA73EAC0](result);
    return sub_1D9C7E93C();
  }

  return result;
}

uint64_t sub_1D9B08E34()
{
  result = *v0 + HIDWORD(*v0);
  if (!__CFADD__(*v0, HIDWORD(*v0)))
  {
    return MEMORY[0x1DA73EAC0](result);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9B08E6C()
{
  v1 = *v0;
  sub_1D9C7E8DC();
  result = v1 + HIDWORD(v1);
  if (__CFADD__(v1, HIDWORD(v1)))
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1DA73EAC0](result);
    return sub_1D9C7E93C();
  }

  return result;
}

uint64_t sub_1D9B08ECC(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  *&v16 = 0;
  *(&v16 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_1D9C7DDDC();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1D9B08F94(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51668);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_1D9B09018()
{
  result = qword_1ECB533E8;
  if (!qword_1ECB533E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB533E8);
  }

  return result;
}

uint64_t sub_1D9B0906C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D9C7DD9C();

    return sub_1D9C7DEAC();
  }

  return result;
}

unint64_t sub_1D9B09108()
{
  result = qword_1ECB533F0;
  if (!qword_1ECB533F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB533F0);
  }

  return result;
}

uint64_t sub_1D9B09188(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  for (i = (a3 + 40); ; i += 2)
  {
    v8 = *(i - 1);
    v7 = *i;
    v11[0] = v8;
    v11[1] = v7;

    v9 = a1(v11);
    if (v3)
    {
      break;
    }

    if (v9)
    {
      return v8;
    }

    if (!--v4)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1D9B0923C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  for (i = (a3 + 48); ; i += 3)
  {
    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;
    v12[0] = v8;
    v12[1] = v7;
    v12[2] = v9;

    v10 = a1(v12);
    if (v3)
    {
      break;
    }

    if (v10)
    {
      return v8;
    }

    if (!--v4)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1D9B09318@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = _s14DetectedResultVMa();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_1D9B17250(v12, v10, _s14DetectedResultVMa);
      v14 = a1(v10);
      if (v3)
      {
        return sub_1D9B1719C(v10, _s14DetectedResultVMa);
      }

      if (v14)
      {
        break;
      }

      sub_1D9B1719C(v10, _s14DetectedResultVMa);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_1D9B1850C(v10, v18, _s14DetectedResultVMa);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_1D9B094E4@<X0>(uint64_t (*a1)(__int128 *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v37 = a1;
  v4 = v3;
  v6 = a2 + 64;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = __clz(__rbit64(v9)) | (v13 << 6);
      v15 = (*(a2 + 48) + 16 * v14);
      v17 = *v15;
      v16 = v15[1];
      v18 = *(a2 + 56) + 32 * v14;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 17);
      v23 = *(v18 + 24);
      *&v31 = v17;
      *(&v31 + 1) = v16;
      v32 = v19;
      v33 = v20;
      v34 = v21;
      v35 = v22;
      v36 = v23;

      v24 = v37(&v31);
      if (v4)
      {
      }

      if (v24)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v25 = v32;
    v26 = v33;
    v27 = v36;
    v28 = 256;
    if (!v35)
    {
      v28 = 0;
    }

    v29 = v28 | v34;
    *a3 = v31;
    *(a3 + 16) = v25;
    *(a3 + 24) = v26;
    *(a3 + 32) = v29;
    *(a3 + 40) = v27;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        *(a3 + 16) = 0u;
        *(a3 + 32) = 0u;
        *a3 = 0u;
        return result;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D9B096D4(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_1D9C7E50C();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1DA73E610](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_1D9B097F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = result;
    v8 = (a2 + 72);
    while (1)
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = *(v8 - 3);
      v13 = *(v8 - 5);
      v14 = v11;
      *&v15 = v9;
      *(&v15 + 1) = v10;

      result = v7(&v13);
      if (v4)
      {
      }

      if (result)
      {
        break;
      }

      v8 += 6;
      if (!--v6)
      {
        goto LABEL_6;
      }
    }

    v12 = v14;
    *a3 = v13;
    a3[1] = v12;
    a3[2] = v15;
  }

  else
  {
LABEL_6:
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_1D9B098E0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA73E610](v6, a3);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);

        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_1D9C7E50C();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1D9B099F4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; i += 10)
    {
      v7 = i[7];
      v8 = i[5];
      v38 = i[6];
      v39 = v7;
      v9 = i[7];
      v40[0] = i[8];
      *(v40 + 13) = *(i + 141);
      v10 = i[3];
      v11 = i[1];
      v34 = i[2];
      v35 = v10;
      v12 = i[3];
      v13 = i[5];
      v36 = i[4];
      v37 = v13;
      v14 = i[1];
      v33[0] = *i;
      v33[1] = v14;
      v30 = v38;
      v31 = v9;
      v32[0] = i[8];
      *(v32 + 13) = *(i + 141);
      v26 = v34;
      v27 = v12;
      v28 = v36;
      v29 = v8;
      v24 = v33[0];
      v25 = v11;
      sub_1D99AE054(v33, &v15);
      v5(&v24);
      if (v3)
      {
        break;
      }

      v21 = v30;
      v22 = v31;
      v23[0] = v32[0];
      *(v23 + 13) = *(v32 + 13);
      v17 = v26;
      v18 = v27;
      v19 = v28;
      v20 = v29;
      v15 = v24;
      v16 = v25;
      result = sub_1D99AE0B0(&v15);
      if (!--v4)
      {
        return result;
      }
    }

    v21 = v30;
    v22 = v31;
    v23[0] = v32[0];
    *(v23 + 13) = *(v32 + 13);
    v17 = v26;
    v18 = v27;
    v19 = v28;
    v20 = v29;
    v15 = v24;
    v16 = v25;
    return sub_1D99AE0B0(&v15);
  }

  return result;
}

void sub_1D9B09B58(void **a1)
{
  v2 = *(type metadata accessor for VisualUnderstanding.ImageRegion() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D99E9140(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D9B1144C(v5);
  *a1 = v3;
}

uint64_t sub_1D9B09C00(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, void *a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v61 = a6;
  v60 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v32 = &v49 - v31;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v57 = a18;
    v56 = a17;
    v55 = a16;
    v54 = a15;
    v53 = a14;
    v52 = a13;
    v59 = result;
    sub_1D99A17C8(a5, v63);
    sub_1D99AB100(a7, v32, &unk_1ECB51B10);
    v34 = (*(v29 + 80) + 160) & ~*(v29 + 80);
    v51 = (v30 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8;
    v58 = a3;
    v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v50 = (v37 + 23) & 0xFFFFFFFFFFFFFFF8;
    v49 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    *(v38 + 16) = a1;
    sub_1D9979B9C(v63, v38 + 24);
    *(v38 + 64) = a9;
    *(v38 + 72) = a10;
    *(v38 + 80) = a11;
    *(v38 + 88) = a12;
    v39 = v61;
    v40 = v61[1];
    *(v38 + 96) = *v61;
    *(v38 + 112) = v40;
    v41 = *(v39 + 48);
    *(v38 + 128) = *(v39 + 32);
    *(v38 + 144) = v41;
    sub_1D99B1C20(v32, v38 + v34, &unk_1ECB51B10);
    *(v38 + v51) = a4;
    *(v38 + v35) = a8;
    v42 = v52;
    *(v38 + v36) = v52;
    v43 = (v38 + v37);
    v44 = v53;
    v45 = v54;
    *v43 = v53;
    v43[1] = v45;
    *(v38 + v50) = v55;
    v46 = (v38 + v49);
    v47 = v57;
    *v46 = v56;
    v46[1] = v47;

    sub_1D99AB100(v39, v62, &qword_1ECB514D0);

    v48 = v42;
    sub_1D99AF2FC(v44, v45);

    sub_1D9B0C81C(v60, v58, a4, sub_1D9B18404, v38);
  }

  return result;
}

uint64_t sub_1D9B09F60(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7, __int128 *a8, __int128 *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, unint64_t a14, uint64_t a15, void (*a16)(uint64_t), uint64_t a17)
{
  v65 = a12;
  v61 = a9;
  v62 = a10;
  v59 = a7;
  v60 = a8;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B20);
  MEMORY[0x1EEE9AC00](v63);
  v64 = v57 - v23;
  v24 = sub_1D9C7D8DC();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v57 - v27;
  v29 = type metadata accessor for ParseResult(0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = v57 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v57 - v33;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v57[1] = a17;
    v58 = a16;
    *&v90 = a2;
    *(&v90 + 1) = a3;
    *&v91 = a4;
    *(&v91 + 1) = a5;
    v36 = v65;
    v65 = result;
    sub_1D9B0D108(v59, &v90, a1, v60, v61, v62, a11, v36, v34, a13, a14, a15);
    static Logger.argos.getter(v28);
    if (qword_1EDD2C988 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v24, qword_1EDD2C990);
    (*(v25 + 8))(v28, v24);
    sub_1D9B17250(v34, v31, type metadata accessor for ParseResult);
    v37 = sub_1D9C7D8BC();
    v38 = sub_1D9C7E09C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 136315138;
      v41 = *(v31 + 9);
      v42 = *(v31 + 7);
      v86 = *(v31 + 8);
      v87 = v41;
      v43 = *(v31 + 9);
      v88 = *(v31 + 10);
      v44 = *(v31 + 5);
      v45 = *(v31 + 3);
      v82 = *(v31 + 4);
      v83 = v44;
      v46 = *(v31 + 5);
      v47 = *(v31 + 7);
      v84 = *(v31 + 6);
      v85 = v47;
      v48 = *(v31 + 1);
      v79[0] = *v31;
      v79[1] = v48;
      v49 = *(v31 + 3);
      v51 = *v31;
      v50 = *(v31 + 1);
      v80 = *(v31 + 2);
      v81 = v49;
      v74 = v86;
      v75 = v43;
      v76 = *(v31 + 10);
      v70 = v82;
      v71 = v46;
      v72 = v84;
      v73 = v42;
      v66 = v51;
      v67 = v50;
      v89 = *(v31 + 22);
      v77 = *(v31 + 22);
      v78 = v40;
      v68 = v80;
      v69 = v45;
      sub_1D99BB40C(v79, &v90);
      v52 = sub_1D9BE9D4C();
      v54 = v53;
      v98 = v74;
      v99 = v75;
      v100 = v76;
      v101 = v77;
      v94 = v70;
      v95 = v71;
      v96 = v72;
      v97 = v73;
      v90 = v66;
      v91 = v67;
      v92 = v68;
      v93 = v69;
      sub_1D9A0009C(&v90);
      sub_1D9B1719C(v31, type metadata accessor for ParseResult);
      v55 = sub_1D9A0E224(v52, v54, &v78);

      *(v39 + 4) = v55;
      _os_log_impl(&dword_1D9962000, v37, v38, "parse(): successful %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      MEMORY[0x1DA7405F0](v40, -1, -1);
      MEMORY[0x1DA7405F0](v39, -1, -1);
    }

    else
    {

      sub_1D9B1719C(v31, type metadata accessor for ParseResult);
    }

    v56 = v64;
    sub_1D9B17250(v34, v64, type metadata accessor for ParseResult);
    swift_storeEnumTagMultiPayload();
    v58(v56);

    sub_1D99A6AE0(v56, &unk_1ECB51B20);
    return sub_1D9B1719C(v34, type metadata accessor for ParseResult);
  }

  return result;
}

uint64_t sub_1D9B0A6AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void), uint64_t a7, unsigned __int8 a8, char a9, const char *a10)
{
  v29 = a7;
  v28 = sub_1D9C7D8DC();
  v16 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v30[0] = a8;
    v21 = sub_1D9B0AA0C(a2, a3, v30, a9 & 1, a4, a5);
    v22 = a6;
    v23 = v21;
    static Logger.argos.getter(v19);
    v24 = sub_1D9C7D8BC();
    v25 = sub_1D9C7E09C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1D9962000, v24, v25, a10, v26, 2u);
      MEMORY[0x1DA7405F0](v26, -1, -1);
    }

    (*(v16 + 8))(v19, v28);
    v22(v23, 0);
  }

  return result;
}

uint64_t sub_1D9B0AA0C(void *a1, uint64_t a2, unsigned __int8 *a3, int a4, uint64_t a5, uint64_t a6)
{
  v130 = a6;
  v127 = a4;
  *&v140 = a2;
  v9 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v142 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v125 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v129 = &v120 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v128 = &v120 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v124 = &v120 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v135 = &v120 - v21;
  v134 = sub_1D9C7D8DC();
  v22 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v123 = &v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  *&v139 = &v120 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v120 - v27;
  v29 = *a3;
  static Logger.argos.getter(&v120 - v27);
  v30 = sub_1D9C7D8BC();
  v31 = sub_1D9C7E09C();
  v32 = os_log_type_enabled(v30, v31);
  v133 = v22;
  v131 = a1;
  v138 = v29;
  if (v32)
  {
    v33 = swift_slowAlloc();
    *&v137 = swift_slowAlloc();
    *&v141[0] = v137;
    *v33 = 136315138;
    v34 = sub_1D9A15C94(v29);
    v36 = a5;
    v37 = sub_1D9A0E224(v34, v35, v141);

    *(v33 + 4) = v37;
    a5 = v36;
    v38 = v33;
    _os_log_impl(&dword_1D9962000, v30, v31, "performRunArgos2D() with domain: %s", v33, 0xCu);
    v39 = v137;
    __swift_destroy_boxed_opaque_existential_0Tm(v137);
    MEMORY[0x1DA7405F0](v39, -1, -1);
    MEMORY[0x1DA7405F0](v38, -1, -1);

    v22 = v133;
  }

  else
  {
  }

  v40 = *(v22 + 8);
  v41 = v134;
  v40(v28, v134);
  v42 = *(a5 + OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock);
  os_unfair_lock_lock(v42 + 4);
  v43 = OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled;
  v44 = *(a5 + OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled);
  os_unfair_lock_unlock(v42 + 4);
  if (v44 == 1)
  {
    v45 = v139;
    static Logger.argos.getter(v139);
    v46 = sub_1D9C7D8BC();
    v47 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1D9962000, v46, v47, "performRunArgos2D(): canceled", v48, 2u);
      MEMORY[0x1DA7405F0](v48, -1, -1);
    }

    v40(v45, v41);
    goto LABEL_8;
  }

  v122 = v43;
  v120 = v42;
  v121 = a5;
  v50 = v140;
  v51 = *(v140 + 16);
  v52 = MEMORY[0x1E69E7CC0];
  if (v51)
  {
    *&v141[0] = MEMORY[0x1E69E7CC0];
    sub_1D99FE2B8(0, v51, 0);
    v53 = *&v141[0];
    v54 = (v50 + 32);
    *(&v55 + 1) = 2;
    v137 = xmmword_1D9C85660;
    *&v55 = 16777217;
    v136 = v55;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51728);
      v56 = swift_allocObject();
      *(v56 + 16) = v137;
      *(v56 + 32) = v138;
      *(v56 + 40) = 0u;
      *(v56 + 56) = 0u;
      *(v56 + 72) = 0;
      *(v56 + 80) = 0u;
      *(v56 + 96) = 0u;
      *(v56 + 112) = 0u;
      *(v56 + 128) = 0u;
      *(v56 + 140) = 0u;
      *(v56 + 156) = v136;
      *(v56 + 160) = 0;
      *(v56 + 168) = 0;
      *(v56 + 176) = 0;
      *(v56 + 181) = 0;
      v57 = *v54;
      v139 = v54[1];
      v140 = v57;
      sub_1D9C7B92C();
      v58 = v139;
      *v11 = v140;
      *(v11 + 1) = v58;
      v11[32] = 1;
      *(v11 + 5) = v52;
      *(v11 + 6) = v56;
      *(v11 + 7) = v52;
      *(v11 + 8) = v52;
      *(v11 + 72) = 0u;
      *(v11 + 88) = 0u;
      v11[104] = 0;
      *(v11 + 14) = v52;
      v11[*(v9 + 64)] = 0;
      *&v11[*(v9 + 68)] = v52;
      *&v141[0] = v53;
      v60 = *(v53 + 16);
      v59 = *(v53 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_1D99FE2B8(v59 > 1, v60 + 1, 1);
        v53 = *&v141[0];
      }

      *(v53 + 16) = v60 + 1;
      sub_1D9B1850C(v11, v53 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v60, type metadata accessor for VisualUnderstanding.ImageRegion);
      v54 += 2;
      --v51;
    }

    while (v51);
  }

  else
  {
    v53 = MEMORY[0x1E69E7CC0];
  }

  v61 = *(v126 + 88);
  Context = type metadata accessor for VisualQueryContext();
  v63 = Context[10];
  v64 = sub_1D9C7B80C();
  v65 = *(*(v64 - 8) + 56);
  v66 = v135;
  v65(&v135[v63], 1, 1, v64);
  v65(&v66[Context[14]], 1, 1, v64);
  v67 = sub_1D9A455B8(v52);
  *v66 = 0;
  *(v66 + 1) = 0;
  *(v66 + 2) = v52;
  *(v66 + 3) = v67;
  *(v66 + 4) = 0;
  *(v66 + 5) = 0;
  *(v66 + 6) = 0;
  *(v66 + 7) = 3;
  *&v66[Context[11]] = 0;
  *&v66[Context[12]] = 0;
  *&v66[Context[13]] = 0;
  v68 = &v66[Context[15]];
  *v68 = 0;
  *(v68 + 1) = 0;
  v69 = &v66[Context[16]];
  *v69 = 0;
  v69[8] = 1;
  *&v66[Context[17]] = 0;
  v70 = &v66[Context[18]];
  *v70 = 0;
  *(v70 + 1) = 0;
  v66[Context[19]] = 0;
  v71 = &v66[Context[20]];
  *v71 = 0;
  *(v71 + 1) = 0;
  v66[Context[21]] = 3;
  v72 = *(Context - 1);
  (*(v72 + 56))(v66, 0, 1, Context);
  v73 = *(type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0) + 20);
  v74 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__maxNumOfRegionsWithDomainSignals;
  v75 = v127;
  *&v140 = v61;
  if (v127)
  {
    v76 = *(v61 + OBJC_IVAR____TtC12VisualLookUp24DomainSelectionProcessor_groundingConfig + v73);
    swift_beginAccess();
    LODWORD(v139) = *(v76 + v74);
    v77 = v124;
  }

  else
  {
    v78 = *(v61 + OBJC_IVAR____TtC12VisualLookUp24DomainSelectionProcessor_config + v73);
    swift_beginAccess();
    v79 = *(v78 + v74);
    v80 = sub_1D9A75D94();
    LODWORD(v139) = v79;
    if (v80)
    {
      if (qword_1ECB50988 != -1)
      {
        swift_once();
      }

      v81 = &off_1ECB51BA8;
    }

    else
    {
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
      }

      v81 = &qword_1EDD355A8;
    }

    v82 = *(*v81 + 32);

    v83 = sub_1D9C7DC4C();
    LOBYTE(v82) = [v82 0x1FAAE6E78];

    if ((v82 & 1) == 0)
    {
      v89 = 0;
      if (sub_1D9A75D94())
      {
        goto LABEL_38;
      }

      goto LABEL_42;
    }

    v77 = v124;
  }

  sub_1D99AB100(v135, v77, &unk_1ECB51B10);
  v84 = *(v72 + 48);
  if (v84(v77, 1, Context) == 1)
  {
    sub_1D99A6AE0(v77, &unk_1ECB51B10);
    v85 = v125;
    goto LABEL_33;
  }

  v86 = v77;
  v87 = *(v77 + 56);
  sub_1D9B1719C(v86, type metadata accessor for VisualQueryContext);
  _ZF = v87 == 3;
  v85 = v125;
  if (!_ZF)
  {
LABEL_33:
    sub_1D99AB100(v135, v85, &unk_1ECB51B10);
    if (v84(v85, 1, Context) == 1)
    {
      sub_1D99A6AE0(v85, &unk_1ECB51B10);
      v89 = 0;
      if (v75)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v90 = *(v85 + 56);
      sub_1D9B1719C(v85, type metadata accessor for VisualQueryContext);
      v89 = v90 == 5;
      if (v75)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_37;
  }

  v89 = 1;
  if (v75)
  {
    goto LABEL_46;
  }

LABEL_37:
  if (sub_1D9A75D94())
  {
LABEL_38:
    if (qword_1ECB50988 != -1)
    {
      swift_once();
    }

    v91 = &off_1ECB51BA8;
    goto LABEL_45;
  }

LABEL_42:
  if (qword_1EDD355A0 != -1)
  {
    swift_once();
  }

  v91 = &qword_1EDD355A8;
LABEL_45:
  v92 = *(*v91 + 32);

  v93 = sub_1D9C7DC4C();
  LOBYTE(v92) = [v92 0x1FAAE6E78];

  if ((v92 & 1) == 0)
  {
    v94 = &OBJC_IVAR____TtC12VisualLookUp24DomainSelectionProcessor_domainConfigMap;
    goto LABEL_48;
  }

LABEL_46:
  v94 = &OBJC_IVAR____TtC12VisualLookUp24DomainSelectionProcessor_domainConfigMapForGroundingModel;
LABEL_48:
  v95 = v140;
  v96 = (v140 + *v94);
  swift_beginAccess();
  v97 = *v96;

  v47 = *(v95 + OBJC_IVAR____TtC12VisualLookUp24DomainSelectionProcessor_domainSignalsExtractor);
  v141[0] = 0uLL;
  __asm { FMOV            V0.2D, #1.0 }

  v141[1] = _Q0;
  v102 = v128;
  sub_1D99AB100(v135, v128, &unk_1ECB51B10);
  v103 = *(v72 + 48);
  v104 = v103(v102, 1, Context);
  v105 = v129;
  if (v104 == 1)
  {
    sub_1D99A6AE0(v102, &unk_1ECB51B10);
    v106 = 0;
  }

  else
  {
    v107 = v102;
    v106 = *(v102 + Context[12]);
    swift_unknownObjectRetain();
    sub_1D9B1719C(v107, type metadata accessor for VisualQueryContext);
  }

  sub_1D99AB100(v135, v105, &unk_1ECB51B10);
  if (v103(v105, 1, Context) == 1)
  {
    sub_1D99A6AE0(v105, &unk_1ECB51B10);
    v108 = 0;
  }

  else
  {
    v108 = *(v105 + 56);
    sub_1D9B1719C(v105, type metadata accessor for VisualQueryContext);
  }

  v109 = v132;
  v110 = v122;
  v111 = sub_1D9AF1BD4(v53, v141, v131, v97, v139, v106, v108, v89, v130);
  if (v109)
  {
    sub_1D99A6AE0(v135, &unk_1ECB51B10);

    swift_unknownObjectRelease();
    return v47;
  }

  v113 = v111;
  sub_1D99A6AE0(v135, &unk_1ECB51B10);

  swift_unknownObjectRelease();
  sub_1D9BFB9D4(v113);
  v47 = v114;

  v115 = v120;
  os_unfair_lock_lock(v120 + 4);
  v116 = *(v121 + v110);
  os_unfair_lock_unlock(v115 + 4);
  if ((v116 & 1) == 0)
  {
    return v47;
  }

  v117 = v123;
  static Logger.argos.getter(v123);
  v118 = sub_1D9C7D8BC();
  v47 = sub_1D9C7E0AC();
  if (os_log_type_enabled(v118, v47))
  {
    v119 = swift_slowAlloc();
    *v119 = 0;
    _os_log_impl(&dword_1D9962000, v118, v47, "performRunArgos2D(): canceled", v119, 2u);
    MEMORY[0x1DA7405F0](v119, -1, -1);
  }

  (*(v133 + 8))(v117, v134);
LABEL_8:
  sub_1D9A0EEC0();
  swift_allocError();
  *v49 = 0;
  swift_willThrow();
  return v47;
}

size_t sub_1D9B0B874@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D9C7D8DC();
  v176 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v164 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v170 = &v134 - v9;
  v10 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v151 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v150 = &v134 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v149 = &v134 - v16;
  v155 = *a1;
  v17 = *(a1 + 3);
  v208 = *(a1 + 1);
  v209 = v17;
  v18 = *(a1 + 7);
  v210 = *(a1 + 5);
  v211 = v18;
  v146 = *(a1 + 11);
  v136 = *(a1 + 9);
  v19 = a1[13];
  v144 = a1[14];
  v145 = v19;
  v143 = *(a1 + 120);
  v20 = a1[17];
  v142 = a1[16];
  v21 = a1[19];
  v140 = a1[18];
  v22 = a1[20];
  v147 = a1[21];
  v23 = a1[22];
  type metadata accessor for RichLabelMapper();
  inited = swift_initStackObject();
  sub_1D99AB100(&v208, v198, &qword_1ECB514D0);
  v141 = v20;

  v138 = v22;
  v139 = v21;
  v24 = v155;
  sub_1D99BB2FC(v21);
  v137 = v23;

  v25 = sub_1D9AC0CF8(28261, 0xE200000000000000);
  v26 = *(v24 + 16);
  if (v26)
  {
    v160 = v25;
    v135 = a3;
    v207 = MEMORY[0x1E69E7CC0];
    v154 = v26;
    result = sub_1D99FE2B8(0, v26, 0);
    v169 = 0;
    v28 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v29 = 0;
    v158 = v207;
    v152 = v24 + v28;
    v153 = v28;
    v161 = 0x80000001D9CA3A40;
    v166 = (v176 + 16);
    *&v30 = 136315138;
    v159 = v30;
    v32 = v150;
    v31 = v151;
    v33 = v149;
    v165 = a2;
    v168 = v6;
    v148 = v11;
    v163 = (v176 + 8);
    while (v29 < *(v24 + 16))
    {
      v156 = *(v11 + 72);
      v157 = v29;
      sub_1D9B17250(v152 + v156 * v29, v32, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9B17250(v32, v31, type metadata accessor for VisualUnderstanding.ImageRegion);
      v34 = *(v32 + 48);
      v35 = *(v34 + 16);
      if (v35)
      {
        v206 = MEMORY[0x1E69E7CC0];
        sub_1D99FE2D8(0, v35, 0);
        v36 = v206;
        v174 = v35 - 1;
        v37 = (v34 + 112);
        v38 = v169;
        while (2)
        {
          v39 = *(v37 - 4);
          v198[0] = *(v37 - 5);
          v198[1] = v39;
          v40 = *(v37 - 3);
          v41 = *(v37 - 2);
          v42 = *v37;
          v201 = *(v37 - 1);
          v202 = v42;
          v199 = v40;
          v200 = v41;
          v43 = v37[1];
          v44 = v37[2];
          v45 = v37[3];
          *(v205 + 13) = *(v37 + 61);
          v204 = v44;
          v205[0] = v45;
          v203 = v43;
          v46 = v200;
          v175 = *(&v45 + 1);
          v47 = *(v37 - 4);
          v195 = *(v37 - 5);
          v196 = v47;
          v197 = *(v37 - 6);
          v194[0] = *(v37 - 39);
          *(v194 + 3) = *(v37 - 9);
          v173 = v201;
          v48 = *v37;
          v49 = v37[1];
          v50 = v37[2];
          v193 = *(v37 + 6);
          v191 = v49;
          v192 = v50;
          v190 = v48;
          v51 = *(v37 + 18);
          v189 = *(v37 + 76);
          v188 = v51;
          v176 = *&v205[1];
          v172 = BYTE8(v199);
          if (!*(&v200 + 1))
          {
            sub_1D99AE054(v198, &v184);
            sub_1D99AE054(v198, &v184);
            inited = 0;
            if (!*(a2 + 16))
            {
              goto LABEL_73;
            }

            goto LABEL_66;
          }

          inited = *(&v200 + 1);
          if (!*&v205[1])
          {
            sub_1D99AE054(v198, &v184);
            sub_1D99AE054(v198, &v184);
            if (!*(a2 + 16))
            {
              goto LABEL_73;
            }

            goto LABEL_66;
          }

          v167 = v200;
          sub_1D99AE054(v198, &v184);
          sub_1D99AE054(v198, &v184);
          v52 = qword_1EDD354B8;

          if (v52 != -1)
          {
            swift_once();
          }

          v53 = byte_1EDD354C0;
          v171 = v36;
          v169 = v38;
          if (byte_1EDD354C0 != 1)
          {
            goto LABEL_28;
          }

          v54 = [objc_opt_self() mainBundle];
          v55 = [v54 bundleIdentifier];

          if (v55)
          {
            v56 = sub_1D9C7DC7C();
            v58 = v57;

            if (v56 == 0xD00000000000002BLL && v161 == v58)
            {

LABEL_20:
              v60 = &off_1ECB51BA8;
              if (qword_1ECB50988 != -1)
              {
                swift_once();
                v60 = &off_1ECB51BA8;
              }

LABEL_24:
              v61 = *(*v60 + 32);

              v62 = sub_1D9C7DC4C();
              LODWORD(v61) = [v61 BOOLForKey_];

              if (v61)
              {
                if (qword_1EDD2C988 != -1)
                {
                  swift_once();
                }

                v63 = v168;
                v64 = __swift_project_value_buffer(v168, qword_1EDD2C990);
                v65 = *v166;
                (*v166)(v170, v64, v63);
                goto LABEL_31;
              }

LABEL_28:
              if (qword_1EDD354D0 != -1)
              {
                swift_once();
              }

              v66 = v168;
              v67 = __swift_project_value_buffer(v168, qword_1EDD354D8);
              v65 = *v166;
              (*v166)(v170, v67, v66);
              if ((v53 & 1) == 0)
              {
                goto LABEL_43;
              }

LABEL_31:
              v68 = [objc_opt_self() mainBundle];
              v69 = [v68 bundleIdentifier];

              if (!v69)
              {
                goto LABEL_38;
              }

              v70 = sub_1D9C7DC7C();
              v72 = v71;

              if (v70 == 0xD00000000000002BLL && v161 == v72)
              {
              }

              else
              {
                v73 = sub_1D9C7E7DC();

                if ((v73 & 1) == 0)
                {
LABEL_38:
                  v74 = &qword_1EDD355A8;
                  if (qword_1EDD355A0 != -1)
                  {
                    swift_once();
                    v74 = &qword_1EDD355A8;
                  }

                  goto LABEL_40;
                }
              }

              v74 = &off_1ECB51BA8;
              if (qword_1ECB50988 != -1)
              {
                swift_once();
                v74 = &off_1ECB51BA8;
              }

LABEL_40:
              v75 = *(*v74 + 32);

              v76 = sub_1D9C7DC4C();
              LODWORD(v75) = [v75 BOOLForKey_];

              if (v75)
              {
                v77 = v164;
                v78 = v164;
                v79 = v170;
                v66 = v168;
                goto LABEL_46;
              }

              v66 = v168;
LABEL_43:
              if (qword_1EDD354D0 != -1)
              {
                swift_once();
              }

              v79 = __swift_project_value_buffer(v66, qword_1EDD354D8);
              v77 = v164;
              v78 = v164;
LABEL_46:
              v65(v78, v79, v66);
              v80 = *v163;
              (*v163)(v170, v66);
              v81 = v176;

              v82 = sub_1D9C7D8BC();
              v83 = sub_1D9C7E09C();

              if (os_log_type_enabled(v82, v83))
              {
                v84 = swift_slowAlloc();
                v85 = swift_slowAlloc();
                v162 = v80;
                v86 = v85;
                *&v184 = v85;
                *v84 = v159;
                v87 = v175;
                *(v84 + 4) = sub_1D9A0E224(v175, v81, &v184);
                _os_log_impl(&dword_1D9962000, v82, v83, "RichLabelMapper [convertKnowledgeIdToLabel]: %s", v84, 0xCu);
                __swift_destroy_boxed_opaque_existential_0Tm(v86);
                MEMORY[0x1DA7405F0](v86, -1, -1);
                MEMORY[0x1DA7405F0](v84, -1, -1);

                v162(v77, v168);
                v36 = v171;
              }

              else
              {

                v80(v77, v66);
                v36 = v171;
                v87 = v175;
              }

              v88 = sub_1D9B14820(1uLL, v87, v81);
              v90 = v89;
              v92 = v91;
              v94 = v93;

              v38 = v169;
              if (!((v88 ^ v90) >> 14))
              {

                a2 = v165;
                goto LABEL_65;
              }

              v95 = sub_1D9B140F8(v88, v90, v92, v94, 10);
              if ((v95 & 0x10000000000) != 0)
              {
                v95 = sub_1D99C6548(v88, v90, v92, v94, 10);
              }

              v96 = v95;

              a2 = v165;
              if ((v96 & 0x100000000) != 0)
              {
                goto LABEL_63;
              }

              v97 = sub_1D9C19C14();
              if (v38)
              {

                v98 = sub_1D9A46AEC(MEMORY[0x1E69E7CC0]);
                v38 = 0;
                if (!v98[2])
                {
                  goto LABEL_62;
                }
              }

              else
              {
                v98 = v97;

                if (!v98[2])
                {
                  goto LABEL_62;
                }
              }

              v99 = sub_1D99EE164(v96);
              if ((v100 & 1) == 0)
              {
LABEL_62:

LABEL_63:

LABEL_64:
                v36 = v171;
LABEL_65:
                v46 = v167;
                if (!*(a2 + 16))
                {
                  goto LABEL_73;
                }

                goto LABEL_66;
              }

              v101 = (v98[7] + 16 * v99);
              v103 = *v101;
              v102 = v101[1];

              v46 = v167;
              if (v167 == v103 && inited == v102)
              {
              }

              else
              {
                v111 = sub_1D9C7E7DC();

                if (v111)
                {

                  a2 = v165;
                  goto LABEL_64;
                }

                v46 = v103;
                inited = v102;
              }

              a2 = v165;
              v36 = v171;
              if (!*(v165 + 16))
              {
LABEL_73:
                sub_1D99AE0B0(v198);
                v107 = v175;
                v106 = v176;
                goto LABEL_74;
              }

LABEL_66:
              v104 = v46;
              v105 = sub_1D9B66654(v198[0], a2);
              sub_1D99AE0B0(v198);
              if ((v105 & 1) == 0)
              {

                v108 = 0;
                v46 = 0;
                v109 = 0;
                v107 = 0;
                v106 = 0;
                v110 = 0uLL;
                goto LABEL_75;
              }

              v107 = v175;
              v106 = v176;
              v46 = v104;
LABEL_74:
              v108 = v172;
              v109 = inited;
              v110 = v173;
LABEL_75:
              v181 = v195;
              v182 = v196;
              v183 = v197;
              v180[0] = v194[0];
              *(v180 + 3) = *(v194 + 3);
              v184 = v190;
              v185 = v191;
              v186 = v192;
              v187 = v193;
              v179 = v189;
              v178 = v188;
              v113 = *(v36 + 16);
              v112 = *(v36 + 24);
              v206 = v36;
              if (v113 >= v112 >> 1)
              {
                v175 = v107;
                v176 = v106;
                v167 = v46;
                inited = v109;
                v121 = v108;
                v173 = v110;
                sub_1D99FE2D8((v112 > 1), v113 + 1, 1);
                v110 = v173;
                v106 = v176;
                v109 = inited;
                v108 = v121;
                v46 = v167;
                v107 = v175;
                v36 = v206;
              }

              *(v36 + 16) = v113 + 1;
              v114 = v36 + 160 * v113;
              v115 = v181;
              v116 = v182;
              *(v114 + 64) = v183;
              *(v114 + 32) = v115;
              *(v114 + 48) = v116;
              *(v114 + 72) = v108;
              v117 = v180[0];
              *(v114 + 76) = *(v180 + 3);
              *(v114 + 73) = v117;
              *(v114 + 80) = v46;
              *(v114 + 88) = v109;
              *(v114 + 96) = v110;
              v118 = v184;
              v119 = v186;
              v120 = v187;
              *(v114 + 128) = v185;
              *(v114 + 144) = v119;
              *(v114 + 112) = v118;
              *(v114 + 160) = v120;
              *(v114 + 168) = v107;
              *(v114 + 176) = v106;
              LOBYTE(v120) = v179;
              *(v114 + 184) = v178;
              *(v114 + 188) = v120;
              if (!v174)
              {
                v169 = v38;
                v122 = v36;
                v32 = v150;
                sub_1D9B1719C(v150, type metadata accessor for VisualUnderstanding.ImageRegion);
                v11 = v148;
                v33 = v149;
                v31 = v151;
                goto LABEL_82;
              }

              --v174;
              v37 += 10;
              continue;
            }

            v59 = sub_1D9C7E7DC();

            if (v59)
            {
              goto LABEL_20;
            }
          }

          break;
        }

        v60 = &qword_1EDD355A8;
        if (qword_1EDD355A0 != -1)
        {
          swift_once();
          v60 = &qword_1EDD355A8;
        }

        goto LABEL_24;
      }

      sub_1D9B1719C(v32, type metadata accessor for VisualUnderstanding.ImageRegion);
      v122 = MEMORY[0x1E69E7CC0];
LABEL_82:

      *(v31 + 48) = v122;
      sub_1D9B1850C(v31, v33, type metadata accessor for VisualUnderstanding.ImageRegion);
      v123 = v158;
      v207 = v158;
      v125 = *(v158 + 16);
      v124 = *(v158 + 24);
      if (v125 >= v124 >> 1)
      {
        sub_1D99FE2B8(v124 > 1, v125 + 1, 1);
        v123 = v207;
      }

      v126 = v157 + 1;
      *(v123 + 16) = v125 + 1;
      v158 = v123;
      result = sub_1D9B1850C(v33, v123 + v153 + v125 * v156, type metadata accessor for VisualUnderstanding.ImageRegion);
      v29 = v126;
      v24 = v155;
      if (v126 == v154)
      {

        a3 = v135;
        v127 = v158;
        goto LABEL_87;
      }
    }

    __break(1u);
  }

  else
  {

    v127 = MEMORY[0x1E69E7CC0];
LABEL_87:
    v128 = v209;
    *(a3 + 8) = v208;
    *(a3 + 24) = v128;
    v129 = v211;
    *(a3 + 40) = v210;
    *a3 = v127;
    *(a3 + 56) = v129;
    *(a3 + 72) = v136;
    *(a3 + 88) = v146;
    v130 = v144;
    *(a3 + 104) = v145;
    *(a3 + 112) = v130;
    *(a3 + 120) = v143;
    v131 = v141;
    *(a3 + 128) = v142;
    *(a3 + 136) = v131;
    v132 = v139;
    *(a3 + 144) = v140;
    *(a3 + 152) = v132;
    v133 = v147;
    *(a3 + 160) = v138;
    *(a3 + 168) = v133;
    *(a3 + 176) = v137;
  }

  return result;
}

uint64_t sub_1D9B0C81C(uint64_t a1, int a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v6 = v5;
  v65 = a5;
  v69 = a4;
  LODWORD(v66) = a2;
  v63 = a1;
  v8 = sub_1D9C7D8DC();
  v67 = *(v8 - 8);
  v68 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v61 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v61 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v61 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v62 = &v61 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v61 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB540E0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v61 - v25;
  v71[0] = 0x6C46206573726150;
  v71[1] = 0xEA0000000000776FLL;
  v71[2] = "Fetch Available Domains";
  v71[3] = 23;
  v72 = 2;
  type metadata accessor for DurationMeasurement();
  swift_allocObject();

  v64 = sub_1D9AFD4B8(v71, a3);

  v27 = dispatch_group_create();
  v28 = swift_allocObject();
  *(v28 + 16) = 1;
  dispatch_group_enter(v27);
  v29 = sub_1D9C7DFBC();
  (*(*(v29 - 8) + 56))(v26, 1, 1, v29);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v27;
  *(v30 + 40) = v28;
  *(v30 + 48) = v6;
  *(v30 + 56) = v66;
  v31 = v27;

  v32 = v30;
  v33 = v31;
  sub_1D9BC1E20(0, 0, v26, &unk_1D9C953E8, v32);

  sub_1D9C7E0DC();
  swift_beginAccess();
  v34 = *(v28 + 16);
  if (!v34)
  {
    static Logger.argos.getter(v18);
    sub_1D9A3E0E0(v15);
    v42 = *(v67 + 1);
    v43 = v18;
    v44 = v68;
    v42(v43, v68);
    v45 = sub_1D9C7D8BC();
    v46 = sub_1D9C7E09C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1D9962000, v45, v46, "Application can parse any domain", v47, 2u);
      MEMORY[0x1DA7405F0](v47, -1, -1);
    }

    v42(v15, v44);
    v41 = v63;

    goto LABEL_9;
  }

  if (v34 == 1)
  {
    static Logger.argos.getter(v12);
    v35 = v61;
    sub_1D9A3E0E0(v61);
    v36 = v68;
    v37 = *(v67 + 1);
    v37(v12, v68);
    v38 = sub_1D9C7D8BC();
    v39 = sub_1D9C7E09C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1D9962000, v38, v39, "Application does not have any allowed domains", v40, 2u);
      MEMORY[0x1DA7405F0](v40, -1, -1);
    }

    v37(v35, v36);
    v41 = MEMORY[0x1E69E7CD0];
LABEL_9:
    v48 = v69;
    goto LABEL_14;
  }

  v66 = v31;

  static Logger.argos.getter(v23);
  v49 = v62;
  sub_1D9A3E0E0(v62);
  v50 = v68;
  v51 = *(v67 + 1);
  v51(v23, v68);

  v52 = sub_1D9C7D8BC();
  v53 = sub_1D9C7E09C();
  sub_1D99E93D8(v34);
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v70 = v55;
    *v54 = 136315138;
    sub_1D9ABD044();
    v56 = sub_1D9C7E04C();
    v67 = v51;
    v58 = sub_1D9A0E224(v56, v57, &v70);

    *(v54 + 4) = v58;
    _os_log_impl(&dword_1D9962000, v52, v53, "Application can parse some domains: %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v55);
    MEMORY[0x1DA7405F0](v55, -1, -1);
    MEMORY[0x1DA7405F0](v54, -1, -1);

    v67(v62, v50);
  }

  else
  {

    v51(v49, v50);
  }

  v59 = v63;

  v41 = sub_1D9B125E8(v34, v59);
  sub_1D99E93D8(v34);
  v48 = v69;
  v33 = v66;
LABEL_14:
  sub_1D9AFCCA4();
  v48(v41);
}

uint64_t sub_1D9B0CEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 80) = a7;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 40) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D9B0CEDC, 0, 0);
}

uint64_t sub_1D9B0CEDC()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1D9B0CF78;
  v2 = *(v0 + 80);

  return sub_1D99E465C(v2);
}

uint64_t sub_1D9B0CF78(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D9B0D078, 0, 0);
}

uint64_t sub_1D9B0D078()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v1;
  sub_1D99E93D8(v4);
  dispatch_group_leave(v2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1D9B0D108@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12)
{
  v443 = a1;
  v461 = a8;
  v448 = a7;
  v437 = a6;
  v450 = a5;
  v453 = a3;
  *&v452 = a2;
  v421 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512D0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v429 = &v400 - v14;
  v441 = type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig(0);
  v460 = *(v441 - 8);
  MEMORY[0x1EEE9AC00](v441);
  v428 = (&v400 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v454 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v449 = *(v454 - 8);
  MEMORY[0x1EEE9AC00](v454);
  v445 = &v400 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v447 = &v400 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v446 = &v400 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v455 = &v400 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB514C8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v424 = &v400 - v24;
  v25 = type metadata accessor for Argos_Protos_Queryflow_SafetyConfig(0);
  v422 = *(v25 - 8);
  v423 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v425 = &v400 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v456 = sub_1D9C7D8DC();
  v430 = *(v456 - 8);
  MEMORY[0x1EEE9AC00](v456);
  v517 = &v400 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v459 = &v400 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v413 = &v400 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v439 = &v400 - v33;
  v433 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults(0);
  v451 = *(v433 - 8);
  MEMORY[0x1EEE9AC00](v433);
  v419 = &v400 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v434 = &v400 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v408 = &v400 - v38;
  v39 = sub_1D9C7D44C();
  MEMORY[0x1EEE9AC00](v39 - 8);
  v416 = &v400 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB533F8);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v420 = &v400 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v409 = &v400 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v411 = &v400 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v438 = &v400 - v48;
  v431 = type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0);
  MEMORY[0x1EEE9AC00](v431);
  v457 = &v400 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v418 = &v400 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v417 = &v400 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v410 = &v400 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v427 = &v400 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v426 = &v400 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v412 = &v400 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v415 = &v400 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v414 = &v400 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v400 - v67;
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v400 - v70;
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v400 - v73;
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v400 - v76;
  MEMORY[0x1EEE9AC00](v78);
  v80 = &v400 - v79;
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v400 - v82;
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v400 - v85;
  v87 = *v452;
  v442 = *(v452 + 16);
  v452 = v87;
  v88 = a4[1];
  v513 = *a4;
  v514 = v88;
  v89 = a4[3];
  v515 = a4[2];
  v516 = v89;
  v90 = v458;
  result = sub_1D9B1081C(v443, v453, v461);
  if (v90)
  {
    return result;
  }

  v440 = v83;
  v404 = v71;
  v405 = v74;
  v400 = v68;
  v407 = v80;
  v92 = v450;
  sub_1D99AB100(v450, v86, &unk_1ECB51B10);
  Context = type metadata accessor for VisualQueryContext();
  v94 = *(Context - 8);
  v95 = *(v94 + 48);
  v435 = v94 + 48;
  v436 = v95;
  v96 = v95(v86, 1, Context);
  v432 = Context;
  v458 = 0;
  if (v96 == 1)
  {
    sub_1D99A6AE0(v86, &unk_1ECB51B10);
  }

  else
  {
    v97 = *(v86 + 7);
    sub_1D9B1719C(v86, type metadata accessor for VisualQueryContext);
    if (v97 == 3)
    {
      v98 = 0;
      goto LABEL_9;
    }
  }

  v99 = v440;
  sub_1D99AB100(v92, v440, &unk_1ECB51B10);
  if (v436(v99, 1, Context) == 1)
  {
    sub_1D99A6AE0(v99, &unk_1ECB51B10);
    v98 = 1;
  }

  else
  {
    v100 = *(v99 + 56);
    sub_1D9B1719C(v99, type metadata accessor for VisualQueryContext);
    v98 = v100 != 5;
  }

LABEL_9:
  v440 = a12;
  v406 = a11;
  v101 = v407;
  sub_1D99AB100(v92, v407, &unk_1ECB51B10);
  sub_1D99AB100(v101, v77, &unk_1ECB51B10);
  sub_1D9A9499C(v77, 1, &v495);
  v102 = v495;
  v103 = *(&v496 + 1);
  v402 = v496;
  v104 = v497;
  v105 = v498;
  sub_1D99A6AE0(v101, &unk_1ECB51B10);
  v106 = v98;
  if (v98)
  {
    v510 = v496;
    v107 = objc_opt_self();
    *&v482[24] = &type metadata for ParseStartEvent;
    *&v482[32] = &off_1F552D188;
    v108 = swift_allocObject();
    *v482 = v108;
    v109 = v402;
    *(v108 + 16) = v102;
    *(v108 + 24) = v109;
    *(v108 + 32) = v103;
    *(v108 + 40) = v104;
    *(v108 + 48) = v105;
    v110 = type metadata accessor for AnyVIAEvent();
    v111 = objc_allocWithZone(v110);
    sub_1D99A17C8(v482, v111 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
    sub_1D9B1734C(&v510, &v470);
    v112 = v104;
    sub_1D9B1734C(&v510, &v470);
    v462.receiver = v111;
    v462.super_class = v110;
    v113 = v112;
    v114 = objc_msgSendSuper2(&v462, sel_init);
    __swift_destroy_boxed_opaque_existential_0Tm(v482);
    [v107 logEvent_];

    sub_1D9B172F8(&v510);
  }

  v115 = &OBJC_IVAR____TtC12VisualLookUp9ParseFlow_groundingConfig;
  if (!v440)
  {
    v115 = &OBJC_IVAR____TtC12VisualLookUp9ParseFlow_config;
  }

  v116 = v444;
  v117 = v457;
  sub_1D9B17250(v444 + *v115, v457, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  v118 = v433;
  v401 = *(v451 + 56);
  v402 = v451 + 56;
  v401(v438, 1, 1, v433);
  v119 = v406;
  v120 = v432;
  if (v406 >> 60 == 15)
  {
    v121 = v434;
    v122 = v460;
LABEL_15:
    v123 = v450;
    goto LABEL_28;
  }

  v124 = v406 >> 62;
  v122 = v460;
  v123 = v450;
  if ((v406 >> 62) > 1)
  {
    if (v124 != 2)
    {
LABEL_26:
      sub_1D99B3C44(a10, v119);
      goto LABEL_27;
    }

    if (*(a10 + 16) != *(a10 + 24))
    {
LABEL_25:
      sub_1D99DF410(a10, v406);
      v119 = v406;
      if (!v440)
      {
        goto LABEL_60;
      }

      goto LABEL_26;
    }
  }

  else
  {
    if (!v124)
    {
      if ((v406 & 0xFF000000000000) != 0 && !v440)
      {
LABEL_60:
        *&v470 = a10;
        *(&v470 + 1) = v119;
        memset(v482, 0, 40);
        sub_1D9C7D43C();
        sub_1D9B183BC(qword_1EDD2D160, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults);
        v198 = v411;
        v199 = v458;
        sub_1D9C7D67C();
        if (v199)
        {
          sub_1D99A6AE0(v438, &qword_1ECB533F8);
          v509 = v496;
          sub_1D9B172F8(&v509);

          return sub_1D9B1719C(v117, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
        }

        v458 = 0;
        v246 = v438;
        sub_1D99A6AE0(v438, &qword_1ECB533F8);
        v401(v198, 0, 1, v118);
        sub_1D99B1C20(v198, v246, &qword_1ECB533F8);
        v247 = v246;
        v248 = v409;
        sub_1D99AB100(v247, v409, &qword_1ECB533F8);
        if ((*(v451 + 48))(v248, 1, v118) == 1)
        {
          sub_1D99A6AE0(v248, &qword_1ECB533F8);
          v121 = v434;
          v116 = v444;
        }

        else
        {
          v395 = v408;
          sub_1D9B1850C(v248, v408, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults);
          v396 = sub_1D99C4384();
          v121 = v434;
          v116 = v444;
          if (!v396)
          {
            sub_1D9A0EEC0();
            swift_allocError();
            *v397 = 2;
            swift_willThrow();
            v508 = v496;
            sub_1D9B172F8(&v508);

            sub_1D9B1719C(v395, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults);
            sub_1D99A6AE0(v438, &qword_1ECB533F8);
            return sub_1D9B1719C(v117, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
          }

          sub_1D9B1719C(v395, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults);
        }

        goto LABEL_15;
      }

      goto LABEL_26;
    }

    if (a10 != a10 >> 32)
    {
      goto LABEL_25;
    }
  }

LABEL_27:
  v121 = v434;
LABEL_28:
  v125 = v405;
  sub_1D99AB100(v123, v405, &unk_1ECB51B10);
  v126 = v436(v125, 1, v120);
  v403 = v106;
  if (v126 == 1)
  {
    sub_1D99A6AE0(v125, &unk_1ECB51B10);
  }

  else
  {
    v127 = *(v125 + 56);
    sub_1D9B1719C(v125, type metadata accessor for VisualQueryContext);
    v289 = v127 == 3;
    v123 = v450;
    if (v289)
    {
      sub_1D99A17C8(v443, v494);
      goto LABEL_37;
    }
  }

  v128 = v404;
  sub_1D99AB100(v123, v404, &unk_1ECB51B10);
  if (v436(v128, 1, v120) == 1)
  {
    sub_1D99A6AE0(v128, &unk_1ECB51B10);
    v129 = v443;
    sub_1D99A17C8(v443, v494);
  }

  else
  {
    v130 = *(v128 + 56);
    sub_1D9B1719C(v128, type metadata accessor for VisualQueryContext);
    v129 = v443;
    sub_1D99A17C8(v443, v494);
    if (v130 == 5)
    {
      goto LABEL_37;
    }
  }

  sub_1D99A17C8(v129, v482);
  v131 = type metadata accessor for ImageContentLazy();
  v132 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51500);
  v133 = swift_allocObject();
  *(v133 + 16) = 0;
  v134 = MEMORY[0x1E69E7CC0];
  *(v132 + 56) = v133;
  *(v132 + 64) = v134;
  *(v132 + 72) = 0u;
  *(v132 + 88) = 0u;
  *(v132 + 104) = 0u;
  sub_1D9979B9C(v482, v132 + 16);
  sub_1D9AFC0D4(sub_1D9AFC1FC, 0);
  v135 = v129[3];
  v136 = v129[4];
  __swift_project_boxed_opaque_existential_1(v129, v135);
  v137 = (*(v136 + 16))(v135, v136);
  v139 = sub_1D9C1C360(v137, v138);
  LOBYTE(v135) = v140;
  v141 = swift_allocObject();
  *(v141 + 16) = v139;
  v142 = v135 & 1;
  v116 = v444;
  *(v141 + 24) = v142;
  sub_1D9AFC0D4(sub_1D9B173A8, v141);
  v122 = v460;

  *&v482[32] = &off_1F5530ED0;
  *&v482[24] = v131;
  *v482 = v132;
  v121 = v434;
  __swift_destroy_boxed_opaque_existential_0Tm(v494);
  sub_1D9979B9C(v482, v494);
LABEL_37:
  v470 = v452;
  v471 = v442;
  v143 = v440;
  v144 = sub_1D9BDE5F4(v482, v121, v494, &v470, v450, v117, v438, v440, v437);
  v145 = *v482;
  v146 = *&v482[16];
  v147 = v461;
  v148 = *(v461 + OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock);
  os_unfair_lock_lock(v148 + 4);
  LODWORD(v147) = *(v147 + OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled);
  os_unfair_lock_unlock(v148 + 4);
  if (v147 == 1)
  {

    v149 = v439;
    static Logger.argos.getter(v439);
    v150 = sub_1D9C7D8BC();
    v151 = sub_1D9C7E09C();
    v152 = os_log_type_enabled(v150, v151);
    v153 = v430;
    if (v152)
    {
      v154 = swift_slowAlloc();
      *v154 = 0;
      _os_log_impl(&dword_1D9962000, v150, v151, "parse(): canceled", v154, 2u);
      MEMORY[0x1DA7405F0](v154, -1, -1);
    }

    (*(v153 + 8))(v149, v456);
    sub_1D9A0EEC0();
    swift_allocError();
    *v155 = 0;
    swift_willThrow();
    v501 = v496;
    v156 = &v501;
LABEL_41:
    sub_1D9B172F8(v156);

    __swift_destroy_boxed_opaque_existential_0Tm(v494);
    sub_1D99A6AE0(v438, &qword_1ECB533F8);
    sub_1D9B1719C(v434, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults);
    return sub_1D9B1719C(v117, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  }

  if (v143 && [objc_opt_self() isCameraDPNDisabled])
  {
    v157 = sub_1D9B14D3C(v144);

    v158 = v455;
  }

  else
  {
    v159 = v116;
    v160 = v437;
    v161 = sub_1D9AE0E3C(v144, v453, v450, v143 != 0, v437);

    *v482 = v145;
    *&v482[16] = v146;
    v461 = sub_1D99AF40C(v161, v482, v117, v160);

    v162 = *(v159 + 72);
    v472 = v515;
    v473 = v516;
    v470 = v513;
    v471 = v514;
    v163 = *(v117 + *(v431 + 20));
    v164 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__safetyConfig;
    swift_beginAccess();
    v165 = v424;
    sub_1D99AB100(v163 + v164, v424, &qword_1ECB514C8);
    v166 = v423;
    v167 = *(v422 + 48);
    v168 = v167(v165, 1, v423);
    v158 = v455;
    if (v168 == 1)
    {
      v169 = v425;
      *v425 = 0;
      *&v452 = v162;
      v170 = v166;
      v171 = MEMORY[0x1E69E7CC0];
      *(v169 + 1) = sub_1D9A441B8(MEMORY[0x1E69E7CC0]);
      *(v169 + 2) = sub_1D9A445A8(v171);
      *(v169 + 3) = v171;
      *(v169 + 4) = v171;
      *(v169 + 5) = v171;
      sub_1D9C7D3BC();
      v172 = *(v170 + 48);
      v173 = type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.CornerGlyphConfig(0);
      (*(*(v173 - 8) + 56))(&v169[v172], 1, 1, v173);
      v289 = v167(v165, 1, v170) == 1;
      v174 = v165;
      v175 = v443;
      if (!v289)
      {
        sub_1D99A6AE0(v174, &qword_1ECB514C8);
      }
    }

    else
    {
      v169 = v425;
      sub_1D9B1850C(v165, v425, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig);
      v175 = v443;
    }

    v176 = v461;
    sub_1D9A4E9B8(v461, &v470, v169, v482);
    sub_1D9B1719C(v169, type metadata accessor for Argos_Protos_Queryflow_SafetyConfig);
    v466 = *v482;
    v467 = *&v482[16];
    v468 = *&v482[32];
    v469 = *&v482[48];
    v177 = v444;
    v493[0] = v145;
    v493[1] = v146;
    v178 = v175;
    v179 = v175[3];
    v180 = v175[4];
    __swift_project_boxed_opaque_existential_1(v178, v179);
    v181 = v179;
    v116 = v177;
    v182 = (*(v180 + 16))(v181, v180);
    v489 = v466;
    v490 = v467;
    v491 = v468;
    v492 = v469;
    v157 = sub_1D9AA6464(v176, v493, &v489, v117, v437, v450, v182, v183);

    sub_1D99A6AE0(&v466, &qword_1ECB514D0);

    v122 = v460;
  }

  v482[0] = *(v116 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_mlEngineType);
  v184 = sub_1D9C1C880(v482, v157);

  if ((v184 & 1) == 0)
  {
    goto LABEL_96;
  }

  v185 = v413;
  static Logger.argos.getter(v413);
  v186 = sub_1D9C7D8BC();
  v187 = sub_1D9C7E09C();
  if (os_log_type_enabled(v186, v187))
  {
    v188 = swift_slowAlloc();
    *v188 = 0;
    _os_log_impl(&dword_1D9962000, v186, v187, "Domain selection is enabled.", v188, 2u);
    MEMORY[0x1DA7405F0](v188, -1, -1);
  }

  (*(v430 + 8))(v185, v456);
  v189 = *(v116 + 88);
  v190 = *(v431 + 20);
  v191 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__maxNumOfRegionsWithDomainSignals;
  if (v440)
  {
    v192 = *(v189 + OBJC_IVAR____TtC12VisualLookUp24DomainSelectionProcessor_groundingConfig + v190);
    swift_beginAccess();
    LODWORD(v461) = *(v192 + v191);
    v193 = v414;
    v194 = v400;
  }

  else
  {
    v195 = *(v189 + OBJC_IVAR____TtC12VisualLookUp24DomainSelectionProcessor_config + v190);
    swift_beginAccess();
    LODWORD(v461) = *(v195 + v191);
    v196 = sub_1D9A75D94();
    v193 = v414;
    v194 = v400;
    if (v196)
    {
      if (qword_1ECB50988 != -1)
      {
        swift_once();
      }

      v197 = &off_1ECB51BA8;
    }

    else
    {
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
      }

      v197 = &qword_1EDD355A8;
    }

    v200 = *(*v197 + 32);

    v201 = sub_1D9C7DC4C();
    LOBYTE(v200) = [v200 BOOLForKey_];

    if ((v200 & 1) == 0)
    {
      v205 = 0;
      goto LABEL_77;
    }
  }

  sub_1D99AB100(v450, v194, &unk_1ECB51B10);
  v202 = v436(v194, 1, v432);
  v203 = v412;
  if (v202 == 1)
  {
    sub_1D99A6AE0(v194, &unk_1ECB51B10);
  }

  else
  {
    v204 = *(v194 + 56);
    sub_1D9B1719C(v194, type metadata accessor for VisualQueryContext);
    if (v204 == 3)
    {
      v205 = 1;
      if (v440)
      {
        goto LABEL_85;
      }

      goto LABEL_77;
    }
  }

  sub_1D99AB100(v450, v203, &unk_1ECB51B10);
  if (v436(v203, 1, v432) == 1)
  {
    sub_1D99A6AE0(v203, &unk_1ECB51B10);
    v205 = 0;
    if (v440)
    {
      goto LABEL_85;
    }
  }

  else
  {
    v206 = *(v203 + 56);
    sub_1D9B1719C(v203, type metadata accessor for VisualQueryContext);
    v205 = v206 == 5;
    if (v440)
    {
      goto LABEL_85;
    }
  }

LABEL_77:
  if (sub_1D9A75D94())
  {
    if (qword_1ECB50988 != -1)
    {
      swift_once();
    }

    v207 = &off_1ECB51BA8;
  }

  else
  {
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
    }

    v207 = &qword_1EDD355A8;
  }

  v208 = *(*v207 + 32);

  v209 = sub_1D9C7DC4C();
  LOBYTE(v208) = [v208 BOOLForKey_];

  if ((v208 & 1) == 0)
  {
    v210 = &OBJC_IVAR____TtC12VisualLookUp24DomainSelectionProcessor_domainConfigMap;
    goto LABEL_87;
  }

LABEL_85:
  v210 = &OBJC_IVAR____TtC12VisualLookUp24DomainSelectionProcessor_domainConfigMapForGroundingModel;
LABEL_87:
  v211 = (v189 + *v210);
  swift_beginAccess();
  v212 = *v211;

  *v482 = v145;
  *&v482[16] = v146;
  sub_1D99AB100(v450, v193, &unk_1ECB51B10);
  v213 = v432;
  if (v436(v193, 1, v432) == 1)
  {
    sub_1D99A6AE0(v193, &unk_1ECB51B10);
    v214 = 0;
  }

  else
  {
    v214 = *(v193 + *(v213 + 48));
    swift_unknownObjectRetain();
    sub_1D9B1719C(v193, type metadata accessor for VisualQueryContext);
  }

  v215 = v415;
  sub_1D99AB100(v450, v415, &unk_1ECB51B10);
  if (v436(v215, 1, v213) == 1)
  {
    sub_1D99A6AE0(v215, &unk_1ECB51B10);
    v216 = 0;
  }

  else
  {
    v216 = *(v215 + 56);
    sub_1D9B1719C(v215, type metadata accessor for VisualQueryContext);
  }

  v217 = v458;
  v218 = sub_1D9AF1BD4(v157, v482, v443, v212, v461, v214, v216, v205, v437);
  v458 = v217;
  if (v217)
  {

    swift_unknownObjectRelease();
    v507 = v496;
    sub_1D9B172F8(&v507);

    __swift_destroy_boxed_opaque_existential_0Tm(v494);
    sub_1D99A6AE0(v438, &qword_1ECB533F8);
    sub_1D9B1719C(v434, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults);
    return sub_1D9B1719C(v457, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  }

  v219 = v218;

  swift_unknownObjectRelease();
  v157 = v219;
  v117 = v457;
  v122 = v460;
  v116 = v444;
LABEL_96:
  v220 = *(v116 + 48);
  v511[0] = 0x6C46206573726150;
  v511[1] = 0xEA0000000000776FLL;
  v511[2] = "VI: Region Grouping";
  v511[3] = 19;
  v512 = 2;
  type metadata accessor for DurationMeasurement();
  swift_allocObject();
  v221 = v437;

  sub_1D9AFD4B8(v511, v221);

  type metadata accessor for RegionGroupingProcessor();
  *v482 = v145;
  *&v482[16] = v146;
  sub_1D9BCF834(v157, v482, *(v220 + 16), v117);
  *v482 = v222;

  v223 = v458;
  sub_1D9B09B58(v482);
  v458 = v223;
  if (v223)
  {

    __break(1u);
    return result;
  }

  *&v442 = *v482;
  sub_1D9AFCCA4();

  v224 = v426;
  sub_1D99AB100(v450, v426, &unk_1ECB51B10);
  v225 = v436(v224, 1, v432);
  v226 = v517;
  v227 = v427;
  if (v225 == 1)
  {
    sub_1D99A6AE0(v224, &unk_1ECB51B10);
    v228 = v449;
  }

  else
  {
    v229 = *(v224 + 56);
    sub_1D9B1719C(v224, type metadata accessor for VisualQueryContext);
    v228 = v449;
    if (v229 == 3)
    {
      goto LABEL_103;
    }
  }

  sub_1D99AB100(v450, v227, &unk_1ECB51B10);
  if (v436(v227, 1, v432) != 1)
  {
    v230 = *(v227 + 56);
    sub_1D9B1719C(v227, type metadata accessor for VisualQueryContext);
    if (v230 != 5)
    {
      goto LABEL_106;
    }

LABEL_103:
    if ((sub_1D9A75D94() & 1) == 0)
    {
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
      }

      v231 = &qword_1EDD355A8;
      goto LABEL_110;
    }

    if (qword_1ECB50988 != -1)
    {
      goto LABEL_211;
    }

    goto LABEL_105;
  }

  sub_1D99A6AE0(v227, &unk_1ECB51B10);
LABEL_106:
  v426 = 0;
  v232 = 0;
  v233 = 0;
  v234 = v442;
  while (1)
  {
    v427 = v233;
    v425 = v232;
    v440 = *(v234 + 16);
    if (!v440)
    {
      break;
    }

    v251 = 0;
    v439 = *(v444 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_domainGlyphConfig);
    v461 = MEMORY[0x1E69E7CC0];
    *&v442 = v234;
    while (v251 < *(v234 + 16))
    {
      v252 = (*(v228 + 80) + 32) & ~*(v228 + 80);
      v451 = *(v228 + 72);
      v253 = v234 + v252 + v451 * v251;
      v254 = v117;
      v255 = swift_allocBox();
      v257 = v256;
      sub_1D9B17250(v253, v256, type metadata accessor for VisualUnderstanding.ImageRegion);
      v258 = swift_beginAccess();
      v259 = *(v257 + 48);
      MEMORY[0x1EEE9AC00](v258);
      *(&v400 - 4) = v453;
      *(&v400 - 3) = v255;
      *&v452 = v255;
      v398 = v439;
      v399 = v254;

      v260 = v458;
      v261 = sub_1D9BE77D4(sub_1D9B172B8, (&v400 - 6), v259);
      v458 = v260;

      v262 = v445;
      *(v257 + 48) = v261;

      sub_1D9B17250(v257, v262, type metadata accessor for VisualUnderstanding.ImageRegion);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v461 = sub_1D9AF8A90(0, v461[2] + 1, 1, v461);
      }

      v264 = v461[2];
      v263 = v461[3];
      v117 = v457;
      if (v264 >= v263 >> 1)
      {
        v461 = sub_1D9AF8A90(v263 > 1, v264 + 1, 1, v461);
      }

      ++v251;
      v265 = v461;
      v461[2] = v264 + 1;
      sub_1D9B1850C(v262, v265 + v252 + v264 * v451, type metadata accessor for VisualUnderstanding.ImageRegion);

      v122 = v460;
      v158 = v455;
      v226 = v517;
      v228 = v449;
      v234 = v442;
      if (v440 == v251)
      {
        goto LABEL_131;
      }
    }

    __break(1u);
LABEL_211:
    swift_once();
LABEL_105:
    v231 = &off_1ECB51BA8;
LABEL_110:
    v235 = *(*v231 + 32);

    v236 = sub_1D9C7DC4C();
    LODWORD(v235) = [v235 BOOLForKey_];

    if (v235)
    {
      *v482 = v145;
      *&v482[16] = v146;
      v237 = v410;
      sub_1D99AB100(v450, v410, &unk_1ECB51B10);
      v238 = v432;
      v239 = v436(v237, 1, v432);
      v226 = v517;
      if (v239 == 1)
      {
        sub_1D99A6AE0(v237, &unk_1ECB51B10);
        v240 = 0;
      }

      else
      {
        v240 = *(v237 + *(v238 + 48));
        swift_unknownObjectRetain();
        sub_1D9B1719C(v237, type metadata accessor for VisualQueryContext);
      }

      v241 = v442;
      v461 = v240;
      v242 = v458;
      v243 = sub_1D9A40E94(v443, v442, v482, v240, v437);
      if (v242)
      {

        swift_unknownObjectRelease();
        v506 = v496;
        v156 = &v506;
        goto LABEL_41;
      }

      v232 = v244;
      v426 = v243;
      v427 = v245;
      v458 = 0;
      swift_unknownObjectRelease();
    }

    else
    {
      v426 = 0;
      v427 = 0;
      v232 = 0;
      v226 = v517;
      v241 = v442;
    }

    v249 = sub_1D9C18114(v241, v117);

    sub_1D9BFB9D4(v249);
    v234 = v250;

    v228 = v449;
    v233 = v427;
  }

  v461 = MEMORY[0x1E69E7CC0];
LABEL_131:

  v266 = v417;
  sub_1D99AB100(v450, v417, &unk_1ECB51B10);
  v267 = v432;
  if (v436(v266, 1, v432) == 1)
  {
    sub_1D99A6AE0(v266, &unk_1ECB51B10);
    v268 = 0;
  }

  else
  {
    v268 = *(v266 + *(v267 + 48));
    swift_unknownObjectRetain();
    sub_1D9B1719C(v266, type metadata accessor for VisualQueryContext);
  }

  sub_1D99D1128(v268);
  swift_unknownObjectRelease();
  v470 = v513;
  v471 = v514;
  v472 = v515;
  v473 = v516;
  v269 = sub_1D99D1398(v482, v494, v461, &v470, v117, v437);

  v489 = *v482;
  v490 = *&v482[16];
  *(&v270 + 1) = *&v482[40];
  v491 = *&v482[32];
  v492 = *&v482[48];
  v271 = *(v269 + 16);
  v440 = v269;
  v272 = v441;
  if (v271)
  {
    v273 = v269 + ((*(v228 + 80) + 32) & ~*(v228 + 80));
    v449 = *(v228 + 72);
    v445 = 0x80000001D9CA3A40;
    v451 = v430 + 8;
    *&v452 = v430 + 16;
    *&v442 = v430 + 32;
    *&v270 = 136315138;
    v444 = v270;
    v274 = v456;
    while (1)
    {
      v461 = v271;
      v453 = v273;
      sub_1D9B17250(v273, v158, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (qword_1EDD354B8 != -1)
      {
        swift_once();
      }

      v283 = byte_1EDD354C0;
      if (byte_1EDD354C0 != 1)
      {
        goto LABEL_156;
      }

      v284 = [objc_opt_self() mainBundle];
      v285 = [v284 bundleIdentifier];

      if (!v285)
      {
        break;
      }

      v286 = sub_1D9C7DC7C();
      v288 = v287;

      v289 = v286 == 0xD00000000000002BLL && v445 == v288;
      if (v289)
      {
      }

      else
      {
        v290 = sub_1D9C7E7DC();

        if ((v290 & 1) == 0)
        {
          break;
        }
      }

      v291 = &off_1ECB51BA8;
      if (qword_1ECB50988 != -1)
      {
        swift_once();
        v291 = &off_1ECB51BA8;
      }

LABEL_152:
      v292 = *(*v291 + 32);

      v293 = sub_1D9C7DC4C();
      LODWORD(v292) = [v292 BOOLForKey_];

      v226 = v517;
      if (v292)
      {
        v294 = v459;
        if (qword_1EDD2C988 != -1)
        {
          swift_once();
        }

        v295 = __swift_project_value_buffer(v274, qword_1EDD2C990);
        v296 = v274;
        v297 = *v452;
        (*v452)(v294, v295, v296);
        goto LABEL_159;
      }

LABEL_156:
      v298 = v459;
      if (qword_1EDD354D0 != -1)
      {
        swift_once();
      }

      v299 = __swift_project_value_buffer(v274, qword_1EDD354D8);
      v300 = v274;
      v297 = *v452;
      (*v452)(v298, v299, v300);
      if (!v283)
      {
LABEL_172:
        if (qword_1EDD354D0 != -1)
        {
          swift_once();
        }

        v311 = v456;
        v312 = __swift_project_value_buffer(v456, qword_1EDD354D8);
        v297(v226, v312, v311);
        v274 = v311;
        (*v451)(v459, v311);
        goto LABEL_175;
      }

LABEL_159:
      v301 = [objc_opt_self() mainBundle];
      v302 = [v301 bundleIdentifier];

      if (!v302)
      {
        goto LABEL_165;
      }

      v303 = sub_1D9C7DC7C();
      v305 = v304;

      if (v303 == 0xD00000000000002BLL && v445 == v305)
      {
      }

      else
      {
        v307 = sub_1D9C7E7DC();

        if ((v307 & 1) == 0)
        {
LABEL_165:
          v308 = &qword_1EDD355A8;
          if (qword_1EDD355A0 != -1)
          {
            swift_once();
            v308 = &qword_1EDD355A8;
          }

          goto LABEL_170;
        }
      }

      v308 = &off_1ECB51BA8;
      if (qword_1ECB50988 != -1)
      {
        swift_once();
        v308 = &off_1ECB51BA8;
      }

LABEL_170:
      v309 = *(*v308 + 32);

      v310 = sub_1D9C7DC4C();
      LODWORD(v309) = [v309 BOOLForKey_];

      v226 = v517;
      if (!v309)
      {
        goto LABEL_172;
      }

      v274 = v456;
      (*v442)(v517, v459, v456);
LABEL_175:
      v313 = v446;
      v314 = v447;
      sub_1D9B17250(v158, v446, type metadata accessor for VisualUnderstanding.ImageRegion);
      v315 = sub_1D9C7D8BC();
      v316 = sub_1D9C7E09C();
      if (os_log_type_enabled(v315, v316))
      {
        v275 = swift_slowAlloc();
        v276 = swift_slowAlloc();
        *v482 = v276;
        *v275 = v444;
        sub_1D9B17250(v313, v314, type metadata accessor for VisualUnderstanding.ImageRegion);
        v277 = sub_1D9C7DD0C();
        v279 = v278;
        sub_1D9B1719C(v313, type metadata accessor for VisualUnderstanding.ImageRegion);
        v280 = sub_1D9A0E224(v277, v279, v482);
        v274 = v456;

        *(v275 + 4) = v280;
        v272 = v441;
        _os_log_impl(&dword_1D9962000, v315, v316, "%s", v275, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v276);
        v281 = v276;
        v117 = v457;
        MEMORY[0x1DA7405F0](v281, -1, -1);
        v282 = v275;
        v158 = v455;
        MEMORY[0x1DA7405F0](v282, -1, -1);
      }

      else
      {

        sub_1D9B1719C(v313, type metadata accessor for VisualUnderstanding.ImageRegion);
      }

      v226 = v517;
      (*v451)(v517, v274);
      sub_1D9B1719C(v158, type metadata accessor for VisualUnderstanding.ImageRegion);
      v122 = v460;
      v273 = &v453[v449];
      v271 = (v461 - 1);
      if (v461 == 1)
      {
        goto LABEL_177;
      }
    }

    v291 = &qword_1EDD355A8;
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
      v291 = &qword_1EDD355A8;
    }

    goto LABEL_152;
  }

LABEL_177:
  sub_1D9AFCCA4();
  if (v403)
  {
    v505 = v496;
    v317 = v495;
    v318 = v496;
    v319 = v497;
    v320 = *(&v496 + 1);
    v321 = v498;
    v322 = objc_allocWithZone(MEMORY[0x1E69CA058]);
    sub_1D9B1734C(&v505, v482);
    v323 = v319;
    v324 = [v322 initWithStartSearch_];
    v325 = objc_opt_self();
    *&v482[24] = &type metadata for ParseEndEvent;
    *&v482[32] = &off_1F552D1B8;
    v326 = swift_allocObject();
    *v482 = v326;
    *(v326 + 16) = v324;
    *(v326 + 24) = v317;
    *(v326 + 32) = v318;
    *(v326 + 40) = v320;
    *(v326 + 48) = v323;
    v327 = v321 & 1;
    v117 = v457;
    *(v326 + 56) = v327;
    v328 = type metadata accessor for AnyVIAEvent();
    v329 = objc_allocWithZone(v328);
    sub_1D99A17C8(v482, v329 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
    v463.receiver = v329;
    v272 = v441;
    v463.super_class = v328;
    v330 = v324;

    v331 = v323;
    v332 = objc_msgSendSuper2(&v463, sel_init);
    __swift_destroy_boxed_opaque_existential_0Tm(v482);
    [v325 logEvent_];

    v122 = v460;
  }

  v333 = v443[3];
  v334 = v443[4];
  __swift_project_boxed_opaque_existential_1(v443, v333);
  v335 = (*(v334 + 16))(v333, v334);
  v337 = v336;
  v338 = v418;
  sub_1D99AB100(v450, v418, &unk_1ECB51B10);
  v339 = v432;
  v340 = v436(v338, 1, v432);
  v341 = v428;
  if (v340 == 1)
  {
    sub_1D99AB100(&v489, v482, &qword_1ECB514D0);
    sub_1D99A6AE0(v338, &unk_1ECB51B10);
    v342 = 0;
  }

  else
  {
    v342 = *(v338 + *(v339 + 52));
    sub_1D99AB100(&v489, v482, &qword_1ECB514D0);
    sub_1D9B1719C(v338, type metadata accessor for VisualQueryContext);
  }

  v343 = v434;
  if (v437)
  {
    swift_beginAccess();
  }

  else
  {
    v344 = MEMORY[0x1E69E7CC0];
  }

  v345 = v407;
  *&v482[8] = v489;
  *&v482[24] = v490;
  *&v482[40] = v491;
  *&v482[56] = v492;
  v488 = 0;
  *v482 = v440;
  *&v482[72] = v145;
  *&v482[88] = v146;
  *&v482[104] = v335;
  *&v483 = v337;
  BYTE8(v483) = 0;
  *&v484 = 0;
  *(&v484 + 1) = 0xE000000000000000;
  *&v485 = v342;
  *(&v485 + 1) = v426;
  *&v486 = v425;
  *(&v486 + 1) = v427;
  v487 = v344;
  if (v403)
  {
    v479 = v485;
    v480 = v486;
    v481 = v487;
    v474 = *&v482[64];
    v475 = *&v482[80];
    v476 = *&v482[96];
    v477 = v483;
    v478 = v484;
    v470 = *v482;
    v471 = *&v482[16];
    v472 = *&v482[32];
    v473 = *&v482[48];

    v346 = *(VisualUnderstanding.imageRegions.getter() + 16);

    if (v346)
    {
      sub_1D99AB100(v450, v345, &unk_1ECB51B10);
      v479 = v485;
      v480 = v486;
      v481 = v487;
      v474 = *&v482[64];
      v475 = *&v482[80];
      v476 = *&v482[96];
      v477 = v483;
      v478 = v484;
      v470 = *v482;
      v471 = *&v482[16];
      v472 = *&v482[32];
      v473 = *&v482[48];
      sub_1D99BB40C(v482, &v466);
      sub_1D9A10510(v345, &v470, v499);
      v347 = objc_opt_self();
      *(&v471 + 1) = &type metadata for ParseResultEvent;
      *&v472 = &off_1F552D218;
      v348 = swift_allocObject();
      *&v470 = v348;
      v504 = *(v499 + 8);
      v503 = *(&v499[1] + 1);
      v349 = v499[1];
      *(v348 + 16) = v499[0];
      *(v348 + 32) = v349;
      *(v348 + 48) = v500;
      v350 = type metadata accessor for AnyVIAEvent();
      v351 = objc_allocWithZone(v350);
      sub_1D99A17C8(&v470, v351 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
      sub_1D9B1734C(&v504, &v466);
      sub_1D99AB100(&v503, &v466, &qword_1ECB53400);
      v465.receiver = v351;
      v343 = v434;
      v465.super_class = v350;
      v352 = objc_msgSendSuper2(&v465, sel_init);
      __swift_destroy_boxed_opaque_existential_0Tm(&v470);
      v353 = v347;
      v272 = v441;
      [v353 logEvent_];

      sub_1D9B172F8(&v504);
      v122 = v460;
      sub_1D99A6AE0(&v503, &qword_1ECB53400);
    }

    if (v437)
    {
      v354 = v437;
      swift_beginAccess();
      v355 = *(v354 + 16);

      v356 = sub_1D99A7220(v450, 0, v355);

      v357 = v356;
    }

    else
    {
      v357 = MEMORY[0x1E69E7CC0];
    }

    v358 = v431;
    v359 = v357[2];
    if (!v359)
    {

      v117 = v457;
      goto LABEL_197;
    }

    v360 = v357;
    v517 = objc_opt_self();
    v461 = v360;
    v361 = v360 + 8;
    do
    {
      v362 = *(v361 - 4);
      v363 = *(v361 - 3);
      v365 = *(v361 - 2);
      v364 = *(v361 - 1);
      v366 = *v361;
      v361 += 40;
      *(&v471 + 1) = &type metadata for DurationEvent;
      *&v472 = &off_1F552D1E8;
      v367 = swift_allocObject();
      *&v470 = v367;
      *(v367 + 16) = v362;
      *(v367 + 24) = v363;
      *(v367 + 32) = v365;
      *(v367 + 40) = v364;
      *(v367 + 48) = v366;
      v368 = type metadata accessor for AnyVIAEvent();
      v369 = objc_allocWithZone(v368);
      sub_1D99A17C8(&v470, v369 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
      v464.receiver = v369;
      v464.super_class = v368;
      swift_bridgeObjectRetain_n();
      v370 = v364;
      v371 = objc_msgSendSuper2(&v464, sel_init);
      __swift_destroy_boxed_opaque_existential_0Tm(&v470);
      [v517 logEvent_];

      --v359;
    }

    while (v359);

    v117 = v457;
    v343 = v434;
    v341 = v428;
    v272 = v441;
    v122 = v460;
  }

  else
  {
  }

  v358 = v431;
LABEL_197:
  v372 = *(v117 + *(v358 + 20));
  v373 = OBJC_IVAR____TtCV12VisualLookUp34Argos_Protos_Queryflow_ParseConfigP33_7F9C57E29FAA1A94E975A43DED566DE513_StorageClass__parseCachingConfig;
  swift_beginAccess();
  v374 = v372 + v373;
  v375 = v429;
  sub_1D99AB100(v374, v429, &qword_1ECB512D0);
  v376 = *(v122 + 48);
  if (v376(v375, 1, v272) == 1)
  {
    v377 = MEMORY[0x1E69E7CC0];
    *v341 = sub_1D9A441B8(MEMORY[0x1E69E7CC0]);
    v341[1] = sub_1D9A441B8(v377);
    v341[2] = sub_1D9A441B8(v377);
    sub_1D9C7D3BC();
    v378 = *(v272 + 32);
    v379 = type metadata accessor for Argos_Protos_Queryflow_DomainSignalsCachingConfig(0);
    v380 = v341 + v378;
    v381 = v429;
    (*(*(v379 - 8) + 56))(v380, 1, 1, v379);
    v382 = v376(v381, 1, v272);
    if (v382 != 1)
    {
      v382 = sub_1D99A6AE0(v381, &qword_1ECB512D0);
    }
  }

  else
  {
    v382 = sub_1D9B1850C(v375, v341, type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig);
  }

  MEMORY[0x1EEE9AC00](v382);
  v383 = v440;
  *(&v400 - 4) = v343;
  *(&v400 - 3) = v383;
  v398 = v341;
  sub_1D9B183BC(qword_1EDD2D160, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults);
  v384 = v419;
  sub_1D9C7D6BC();

  sub_1D9B1719C(v341, type metadata accessor for Argos_Protos_Queryflow_ParseCachingConfig);
  v470 = v489;
  v471 = v490;
  v472 = v491;
  v473 = v492;
  v385 = sub_1D99C2988(&v470, v117);
  v502 = v496;
  sub_1D9B172F8(&v502);

  __swift_destroy_boxed_opaque_existential_0Tm(v494);
  sub_1D99A6AE0(v438, &qword_1ECB533F8);
  sub_1D99A6AE0(&v489, &qword_1ECB514D0);
  if (v385)
  {
    v386 = v420;
    sub_1D9B1850C(v384, v420, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults);
    v387 = 0;
  }

  else
  {
    sub_1D9B1719C(v384, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults);
    v387 = 1;
    v386 = v420;
  }

  v388 = v421;
  v401(v386, v387, 1, v433);
  v389 = v485;
  *(v388 + 128) = v484;
  *(v388 + 144) = v389;
  *(v388 + 160) = v486;
  *(v388 + 176) = v487;
  v390 = *&v482[80];
  *(v388 + 64) = *&v482[64];
  *(v388 + 80) = v390;
  v391 = v483;
  *(v388 + 96) = *&v482[96];
  *(v388 + 112) = v391;
  v392 = *&v482[16];
  *v388 = *v482;
  *(v388 + 16) = v392;
  v393 = *&v482[48];
  *(v388 + 32) = *&v482[32];
  *(v388 + 48) = v393;
  v394 = type metadata accessor for ParseResult(0);
  sub_1D99B1C20(v386, v388 + *(v394 + 20), &qword_1ECB533F8);
  sub_1D9B1719C(v343, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults);
  return sub_1D9B1719C(v117, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
}

uint64_t sub_1D9B107AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = a2 + *(_s14DetectedResultVMa() + 28);
  if (v2 == *(v4 + 16) && v3 == *(v4 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D9C7E7DC() & 1;
  }
}

uint64_t sub_1D9B1081C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v6 = sub_1D9C7D8DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v33 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v33 - v14;
  v16 = *(a3 + OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock);
  os_unfair_lock_lock(v16 + 4);
  LODWORD(a3) = *(a3 + OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled);
  os_unfair_lock_unlock(v16 + 4);
  if (a3 == 1)
  {
    static Logger.argos.getter(v15);
    v17 = sub_1D9C7D8BC();
    v18 = sub_1D9C7E09C();
    if (!os_log_type_enabled(v17, v18))
    {
      v20 = 0;
LABEL_14:

      (*(v7 + 8))(v15, v6);
      sub_1D9A0EEC0();
      swift_allocError();
      *v32 = v20;
      return swift_willThrow();
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1D9962000, v17, v18, "parse(): canceled", v19, 2u);
    v20 = 0;
LABEL_10:
    MEMORY[0x1DA7405F0](v19, -1, -1);
    goto LABEL_14;
  }

  if (!*(a2 + 16))
  {
    static Logger.argos.getter(v12);
    v17 = sub_1D9C7D8BC();
    v30 = sub_1D9C7E09C();
    if (!os_log_type_enabled(v17, v30))
    {
      v20 = 1;
      v15 = v12;
      goto LABEL_14;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1D9962000, v17, v30, "parse(): no domain is allowed.", v19, 2u);
    v20 = 1;
    v15 = v12;
    goto LABEL_10;
  }

  v33[1] = v3;
  static Logger.argos.getter(v9);

  v21 = sub_1D9C7D8BC();
  v22 = sub_1D9C7E09C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    v36 = v33[0];
    *v23 = 134218242;
    *(v23 + 4) = *(a2 + 16);

    *(v23 + 12) = 2080;
    v24 = v35;
    sub_1D99E3A84(a2);
    v35 = v24;
    v25 = MEMORY[0x1DA73E110]();
    v27 = v26;

    v28 = sub_1D9A0E224(v25, v27, &v36);

    *(v23 + 14) = v28;
    _os_log_impl(&dword_1D9962000, v21, v22, "Parse allowed domain count %ld, domains: %s", v23, 0x16u);
    v29 = v33[0];
    __swift_destroy_boxed_opaque_existential_0Tm(v33[0]);
    MEMORY[0x1DA7405F0](v29, -1, -1);
    MEMORY[0x1DA7405F0](v23, -1, -1);
  }

  else
  {
  }

  (*(v7 + 8))(v9, v6);
  return sub_1D9A723CC(v34);
}

uint64_t sub_1D9B10C30()
{

  sub_1D9B1719C(v0 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_config, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  sub_1D9B1719C(v0 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_groundingConfig, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_modelProviderService);

  return v0;
}

uint64_t sub_1D9B10D5C()
{
  sub_1D9B10C30();

  return swift_deallocClassInstance();
}

uint64_t ParseResult.visualUnderstanding.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[7];
  v25 = v1[8];
  v26 = v2;
  v4 = v1[9];
  v27 = v1[10];
  v5 = v1[5];
  v7 = v1[3];
  v21 = v1[4];
  v6 = v21;
  v22 = v5;
  v8 = v1[5];
  v9 = v1[7];
  v23 = v1[6];
  v10 = v23;
  v24 = v9;
  v11 = v1[1];
  v18[0] = *v1;
  v18[1] = v11;
  v12 = v1[3];
  v14 = *v1;
  v13 = v1[1];
  v19 = v1[2];
  v15 = v19;
  v20 = v12;
  *(a1 + 128) = v25;
  *(a1 + 144) = v4;
  *(a1 + 160) = v1[10];
  *(a1 + 64) = v6;
  *(a1 + 80) = v8;
  *(a1 + 96) = v10;
  *(a1 + 112) = v3;
  *a1 = v14;
  *(a1 + 16) = v13;
  v28 = *(v1 + 22);
  *(a1 + 176) = *(v1 + 22);
  *(a1 + 32) = v15;
  *(a1 + 48) = v7;
  return sub_1D99BB40C(v18, v17);
}

uint64_t ParseResult.cachedResults.getter()
{
  v1 = sub_1D9C7D8DC();
  MEMORY[0x1EEE9AC00](v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB533F8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for ParseResult(0);
  sub_1D99AB100(v0 + *(v9 + 20), v4, &qword_1ECB533F8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D99A6AE0(v4, &qword_1ECB533F8);
    return 0;
  }

  else
  {
    sub_1D9B1850C(v4, v8, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults);
    sub_1D9B183BC(qword_1EDD2D160, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults);
    v11 = sub_1D9C7D66C();
    v13 = v12;
    v14 = sub_1D9C7B86C();
    sub_1D99A5748(v11, v13);
    sub_1D9B1719C(v8, type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults);
    return v14;
  }
}

uint64_t sub_1D9B11258()
{
  result = type metadata accessor for Argos_Protos_Queryflow_ParseConfig(319);
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1D9B11378()
{
  sub_1D9B113F4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D9B113F4()
{
  if (!qword_1EDD2D110)
  {
    type metadata accessor for Argos_Protos_Queryflow_ParseFlowIntermediateResults(255);
    v0 = sub_1D9C7E27C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD2D110);
    }
  }
}

void sub_1D9B1144C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D9C7E79C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for VisualUnderstanding.ImageRegion();
        v6 = sub_1D9C7DF5C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for VisualUnderstanding.ImageRegion() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D9B117C4(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D9B11578(0, v2, 1, a1);
  }
}

void sub_1D9B11578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v26 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v26 - v15);
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_1D9B17250(v22, v16, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9B17250(v19, v12, type metadata accessor for VisualUnderstanding.ImageRegion);
      v23 = v16[18];
      v24 = v12[18];
      sub_1D9B1719C(v12, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9B1719C(v16, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (v24 >= v23)
      {
LABEL_4:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v17)
      {
        break;
      }

      sub_1D9B1850C(v22, v9, type metadata accessor for VisualUnderstanding.ImageRegion);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D9B1850C(v9, v19, type metadata accessor for VisualUnderstanding.ImageRegion);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D9B117C4(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v116 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v112 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v106 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v115 = &v100 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v100 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v100 - v16);
  v114 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v95 = a4;
    }

    else
    {
LABEL_128:
      v95 = sub_1D99E8FDC(a4);
    }

    v117 = v95;
    a4 = *(v95 + 2);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *&v95[16 * a4];
        v97 = v95;
        v98 = *&v95[16 * a4 + 24];
        sub_1D9B120F0(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *&v95[16 * a4 + 16], *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1D99E8FDC(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v117 = v97;
        sub_1D99E8F50(a4 - 1);
        v95 = v117;
        a4 = *(v117 + 2);
        if (a4 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v103 = a4;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v107 = v20;
    if (v22 >= v18)
    {
      v18 = v22;
    }

    else
    {
      v23 = v21;
      v24 = *v114;
      v25 = *(v112 + 72);
      v5 = *v114 + v25 * v22;
      sub_1D9B17250(v5, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9B17250(v24 + v25 * v23, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
      v26 = v17[18];
      v27 = v14[18];
      sub_1D9B1719C(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9B1719C(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
      v102 = v23;
      v28 = v23 + 2;
      v113 = v25;
      v29 = v24 + v25 * v28;
      while (v18 != v28)
      {
        sub_1D9B17250(v29, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D9B17250(v5, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
        v30 = v17[18];
        v31 = v14[18];
        sub_1D9B1719C(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D9B1719C(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
        ++v28;
        v29 += v113;
        v5 += v113;
        if (v27 < v26 == v31 >= v30)
        {
          v18 = v28 - 1;
          break;
        }
      }

      v21 = v102;
      a4 = v103;
      if (v27 < v26)
      {
        if (v18 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v18)
        {
          v101 = v6;
          v32 = v113 * (v18 - 1);
          v33 = v18 * v113;
          v111 = v18;
          v34 = v18;
          v35 = v102;
          v36 = v102 * v113;
          do
          {
            if (v35 != --v34)
            {
              v37 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v37 + v36;
              sub_1D9B1850C(v37 + v36, v106, type metadata accessor for VisualUnderstanding.ImageRegion);
              if (v36 < v32 || v5 >= v37 + v33)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v36 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D9B1850C(v106, v37 + v32, type metadata accessor for VisualUnderstanding.ImageRegion);
            }

            ++v35;
            v32 -= v113;
            v33 -= v113;
            v36 += v113;
          }

          while (v35 < v34);
          v6 = v101;
          v21 = v102;
          a4 = v103;
          v18 = v111;
        }
      }
    }

    v38 = v114[1];
    if (v18 < v38)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_124;
      }

      if (v18 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_126;
        }

        if ((v21 + a4) >= v38)
        {
          v39 = v114[1];
        }

        else
        {
          v39 = v21 + a4;
        }

        if (v39 < v21)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v18 != v39)
        {
          break;
        }
      }
    }

    v40 = v18;
    if (v18 < v21)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v107;
    }

    else
    {
      v20 = sub_1D99E8FF0(0, *(v107 + 2) + 1, 1, v107);
    }

    a4 = *(v20 + 2);
    v41 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v41 >> 1)
    {
      v20 = sub_1D99E8FF0((v41 > 1), a4 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v42 = &v20[16 * a4];
    *(v42 + 4) = v21;
    *(v42 + 5) = v40;
    v43 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    v108 = v40;
    if (a4)
    {
      while (1)
      {
        v44 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v45 = *(v20 + 4);
          v46 = *(v20 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_52:
          if (v48)
          {
            goto LABEL_112;
          }

          v61 = &v20[16 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_115;
          }

          v67 = &v20[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_119;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v71 = &v20[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_66:
        if (v66)
        {
          goto LABEL_114;
        }

        v74 = &v20[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_117;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v44 - 1;
        if (v44 - 1 >= v5)
        {
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v82 = v20;
        v83 = *&v20[16 * a4 + 32];
        v5 = *&v20[16 * v44 + 40];
        sub_1D9B120F0(*v114 + *(v112 + 72) * v83, *v114 + *(v112 + 72) * *&v20[16 * v44 + 32], *v114 + *(v112 + 72) * v5, v43);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v5 < v83)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_1D99E8FDC(v82);
        }

        if (a4 >= *(v82 + 2))
        {
          goto LABEL_109;
        }

        v84 = &v82[16 * a4];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        v117 = v82;
        sub_1D99E8F50(v44);
        v20 = v117;
        v5 = *(v117 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v20[16 * v5 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_110;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v56 = &v20[16 * v5];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_113;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_116;
      }

      if (v60 >= v52)
      {
        v78 = &v20[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_120;
        }

        if (v47 < v81)
        {
          v44 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = v114[1];
    v19 = v108;
    a4 = v103;
    if (v108 >= v18)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v85 = *v114;
  v86 = *(v112 + 72);
  v87 = *v114 + v86 * (v18 - 1);
  v88 = v21;
  v89 = -v86;
  v102 = v88;
  v90 = v88 - v18;
  v105 = v86;
  v5 = v85 + v18 * v86;
  v108 = v39;
LABEL_85:
  v110 = v90;
  v111 = v18;
  v109 = v5;
  v113 = v87;
  v91 = v87;
  while (1)
  {
    sub_1D9B17250(v5, v17, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D9B17250(v91, v14, type metadata accessor for VisualUnderstanding.ImageRegion);
    v92 = v17[18];
    v93 = v14[18];
    sub_1D9B1719C(v14, type metadata accessor for VisualUnderstanding.ImageRegion);
    sub_1D9B1719C(v17, type metadata accessor for VisualUnderstanding.ImageRegion);
    if (v93 >= v92)
    {
LABEL_84:
      v18 = v111 + 1;
      v87 = v113 + v105;
      v90 = v110 - 1;
      v40 = v108;
      v5 = v109 + v105;
      if (v111 + 1 != v108)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v21 = v102;
      if (v108 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v85)
    {
      break;
    }

    a4 = v115;
    sub_1D9B1850C(v5, v115, type metadata accessor for VisualUnderstanding.ImageRegion);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D9B1850C(a4, v91, type metadata accessor for VisualUnderstanding.ImageRegion);
    v91 += v89;
    v5 += v89;
    if (__CFADD__(v90++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_1D9B120F0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = a3;
  v43 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v43);
  v44 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v39 - v10);
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = v45 - a2;
  if (v45 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v39[1] = v4;
    v23 = a4 + v17;
    if (v17 < 1)
    {
      v26 = a4 + v17;
    }

    else
    {
      v24 = -v13;
      v25 = a4 + v17;
      v26 = v23;
      v41 = v24;
      v42 = a4;
      do
      {
        v39[0] = v26;
        v27 = a2;
        v28 = a2 + v24;
        while (1)
        {
          v30 = v45;
          if (v27 <= a1)
          {
            v48 = v27;
            v46 = v39[0];
            goto LABEL_59;
          }

          v40 = v26;
          v45 += v24;
          v31 = v25 + v24;
          sub_1D9B17250(v31, v11, type metadata accessor for VisualUnderstanding.ImageRegion);
          v32 = v28;
          v33 = v28;
          v34 = v11;
          v35 = v44;
          sub_1D9B17250(v33, v44, type metadata accessor for VisualUnderstanding.ImageRegion);
          v36 = *(v34 + 72);
          v37 = *(v35 + 72);
          v38 = v35;
          v11 = v34;
          sub_1D9B1719C(v38, type metadata accessor for VisualUnderstanding.ImageRegion);
          sub_1D9B1719C(v34, type metadata accessor for VisualUnderstanding.ImageRegion);
          if (v37 < v36)
          {
            break;
          }

          v26 = v31;
          if (v30 < v25 || v45 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v32;
          }

          else
          {
            v28 = v32;
            if (v30 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v31;
          v29 = v31 > v42;
          v24 = v41;
          if (!v29)
          {
            a2 = v27;
            goto LABEL_58;
          }
        }

        if (v30 < v27 || v45 >= v27)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v40;
          v24 = v41;
        }

        else
        {
          v26 = v40;
          v24 = v41;
          a2 = v32;
          if (v30 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v42);
    }

LABEL_58:
    v48 = a2;
    v46 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v18 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < v45)
    {
      do
      {
        sub_1D9B17250(a2, v11, type metadata accessor for VisualUnderstanding.ImageRegion);
        v20 = v44;
        sub_1D9B17250(a4, v44, type metadata accessor for VisualUnderstanding.ImageRegion);
        v21 = v11[18];
        v22 = *(v20 + 72);
        sub_1D9B1719C(v20, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D9B1719C(v11, type metadata accessor for VisualUnderstanding.ImageRegion);
        if (v22 >= v21)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v18 && a2 < v45);
    }
  }

LABEL_59:
  sub_1D9B015E8(&v48, &v47, &v46);
}

uint64_t sub_1D9B125E8(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_1D9B1283C(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1D9B127AC(v11, v6, a2, a1);

    MEMORY[0x1DA7405F0](v11, -1, -1);
  }

  return v9;
}

void *sub_1D9B127AC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1D9B1283C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1D9B1283C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v58 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v31 = 0;
    v32 = a3 + 56;
    v33 = 1 << *(a3 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v60 = v34 & *(a3 + 56);
    v62 = 0;
    v35 = (v33 + 63) >> 6;
    v64 = a4 + 56;
LABEL_107:
    if (v60)
    {
      v36 = __clz(__rbit64(v60));
      v60 &= v60 - 1;
      goto LABEL_114;
    }

    v37 = v31;
    while (1)
    {
      v31 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        goto LABEL_209;
      }

      if (v31 >= v35)
      {
        break;
      }

      v38 = *(v32 + 8 * v31);
      ++v37;
      if (v38)
      {
        v36 = __clz(__rbit64(v38));
        v60 = (v38 - 1) & v38;
LABEL_114:
        v57 = v36 | (v31 << 6);
        v39 = *(*(v5 + 48) + v57);
        sub_1D9C7E8DC();
        sub_1D9C7DD6C();

        result = sub_1D9C7E93C();
        v40 = -1 << *(v4 + 32);
        v41 = result & ~v40;
        if (((*(v64 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
        {
          goto LABEL_107;
        }

        v42 = ~v40;
        while (2)
        {
          v43 = 0xE300000000000000;
          v44 = 7631457;
          switch(*(*(a4 + 48) + v41))
          {
            case 1:
              v43 = 0xE600000000000000;
              v44 = 0x65727574616ELL;
              break;
            case 2:
              v43 = 0xE800000000000000;
              v44 = 0x6B72616D646E616CLL;
              break;
            case 3:
              v44 = 0x4C6C61727574616ELL;
              v43 = 0xEF6B72616D646E61;
              break;
            case 4:
              v43 = 0xE500000000000000;
              v44 = 0x616964656DLL;
              break;
            case 5:
              v43 = 0xE400000000000000;
              v44 = 1802465122;
              break;
            case 6:
              v43 = 0xE500000000000000;
              v44 = 0x6D75626C61;
              break;
            case 7:
              v43 = 0xE400000000000000;
              v44 = 1937006947;
              break;
            case 8:
              v43 = 0xE400000000000000;
              v44 = 1936158564;
              break;
            case 9:
              v43 = 0xE700000000000000;
              v45 = 1835626081;
              goto LABEL_135;
            case 0xA:
              v43 = 0xE500000000000000;
              v44 = 0x7364726962;
              break;
            case 0xB:
              v43 = 0xE700000000000000;
              v44 = 0x73746365736E69;
              break;
            case 0xC:
              v43 = 0xE800000000000000;
              v44 = 0x73656C6974706572;
              break;
            case 0xD:
              v43 = 0xE700000000000000;
              v45 = 1835884909;
LABEL_135:
              v44 = v45 | 0x736C6100000000;
              break;
            case 0xE:
              v44 = 0xD000000000000010;
              v43 = 0x80000001D9CA2910;
              break;
            case 0xF:
              v43 = 0xE700000000000000;
              v44 = 0x6C657261707061;
              break;
            case 0x10:
              v44 = 0x726F737365636361;
              v43 = 0xEB00000000736569;
              break;
            case 0x11:
              v43 = 0xE400000000000000;
              v44 = 1685024614;
              break;
            case 0x12:
              v43 = 0xEA0000000000746ELL;
              v44 = 0x6F726665726F7473;
              break;
            case 0x13:
              v46 = 1852270963;
              goto LABEL_142;
            case 0x14:
              v44 = 0xD000000000000011;
              v43 = 0x80000001D9CA2950;
              break;
            case 0x15:
              v46 = 1869903201;
LABEL_142:
              v44 = v46 | 0x626D795300000000;
              v43 = 0xEA00000000006C6FLL;
              break;
            case 0x16:
              v44 = 0x676F4C646E617262;
              v43 = 0xEF6C6F626D79536FLL;
              break;
            case 0x17:
              v43 = 0xE700000000000000;
              v44 = 0x65646F63726162;
              break;
            case 0x18:
              v44 = 0x727574706C756373;
              v43 = 0xE900000000000065;
              break;
            case 0x19:
              v43 = 0xE700000000000000;
              v44 = 0x656E696C796B73;
              break;
            case 0x1A:
              v43 = 0xE800000000000000;
              v44 = 0x44327463656A626FLL;
              break;
            default:
              break;
          }

          v47 = 0xE300000000000000;
          v48 = 7631457;
          switch(v39)
          {
            case 1:
              v47 = 0xE600000000000000;
              if (v44 == 0x65727574616ELL)
              {
                goto LABEL_196;
              }

              goto LABEL_197;
            case 2:
              v47 = 0xE800000000000000;
              if (v44 != 0x6B72616D646E616CLL)
              {
                goto LABEL_197;
              }

              goto LABEL_196;
            case 3:
              v47 = 0xEF6B72616D646E61;
              if (v44 != 0x4C6C61727574616ELL)
              {
                goto LABEL_197;
              }

              goto LABEL_196;
            case 4:
              v47 = 0xE500000000000000;
              if (v44 != 0x616964656DLL)
              {
                goto LABEL_197;
              }

              goto LABEL_196;
            case 5:
              v47 = 0xE400000000000000;
              if (v44 != 1802465122)
              {
                goto LABEL_197;
              }

              goto LABEL_196;
            case 6:
              v47 = 0xE500000000000000;
              if (v44 != 0x6D75626C61)
              {
                goto LABEL_197;
              }

              goto LABEL_196;
            case 7:
              v47 = 0xE400000000000000;
              if (v44 != 1937006947)
              {
                goto LABEL_197;
              }

              goto LABEL_196;
            case 8:
              v47 = 0xE400000000000000;
              if (v44 != 1936158564)
              {
                goto LABEL_197;
              }

              goto LABEL_196;
            case 9:
              v47 = 0xE700000000000000;
              v50 = 1835626081;
              goto LABEL_178;
            case 10:
              v47 = 0xE500000000000000;
              if (v44 != 0x7364726962)
              {
                goto LABEL_197;
              }

              goto LABEL_196;
            case 11:
              v47 = 0xE700000000000000;
              v49 = 0x746365736E69;
              goto LABEL_179;
            case 12:
              v47 = 0xE800000000000000;
              if (v44 != 0x73656C6974706572)
              {
                goto LABEL_197;
              }

              goto LABEL_196;
            case 13:
              v47 = 0xE700000000000000;
              v50 = 1835884909;
LABEL_178:
              v49 = v50 & 0xFFFF0000FFFFFFFFLL | 0x6C6100000000;
LABEL_179:
              if (v44 != (v49 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
              {
                goto LABEL_197;
              }

              goto LABEL_196;
            case 14:
              v47 = 0x80000001D9CA2910;
              if (v44 != 0xD000000000000010)
              {
                goto LABEL_197;
              }

              goto LABEL_196;
            case 15:
              v47 = 0xE700000000000000;
              if (v44 != 0x6C657261707061)
              {
                goto LABEL_197;
              }

              goto LABEL_196;
            case 16:
              v47 = 0xEB00000000736569;
              if (v44 != 0x726F737365636361)
              {
                goto LABEL_197;
              }

              goto LABEL_196;
            case 17:
              v47 = 0xE400000000000000;
              if (v44 != 1685024614)
              {
                goto LABEL_197;
              }

              goto LABEL_196;
            case 18:
              v47 = 0xEA0000000000746ELL;
              if (v44 != 0x6F726665726F7473)
              {
                goto LABEL_197;
              }

              goto LABEL_196;
            case 19:
              v51 = 1852270963;
              goto LABEL_192;
            case 20:
              v47 = 0x80000001D9CA2950;
              if (v44 != 0xD000000000000011)
              {
                goto LABEL_197;
              }

              goto LABEL_196;
            case 21:
              v51 = 1869903201;
LABEL_192:
              v47 = 0xEA00000000006C6FLL;
              if (v44 != (v51 | 0x626D795300000000))
              {
                goto LABEL_197;
              }

              goto LABEL_196;
            case 22:
              v47 = 0xEF6C6F626D79536FLL;
              if (v44 != 0x676F4C646E617262)
              {
                goto LABEL_197;
              }

              goto LABEL_196;
            case 23:
              v47 = 0xE700000000000000;
              v48 = 0x65646F63726162;
              goto LABEL_195;
            case 24:
              v47 = 0xE900000000000065;
              if (v44 != 0x727574706C756373)
              {
                goto LABEL_197;
              }

              goto LABEL_196;
            case 25:
              v47 = 0xE700000000000000;
              if (v44 != 0x656E696C796B73)
              {
                goto LABEL_197;
              }

              goto LABEL_196;
            case 26:
              v47 = 0xE800000000000000;
              if (v44 != 0x44327463656A626FLL)
              {
                goto LABEL_197;
              }

              goto LABEL_196;
            default:
LABEL_195:
              if (v44 != v48)
              {
                goto LABEL_197;
              }

LABEL_196:
              if (v43 != v47)
              {
LABEL_197:
                v52 = sub_1D9C7E7DC();

                if (v52)
                {
                  goto LABEL_203;
                }

                v41 = (v41 + 1) & v42;
                if (((*(v64 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
                {
                  v5 = a3;
                  v4 = a4;
                  goto LABEL_107;
                }

                continue;
              }

LABEL_203:
              *(v58 + ((v57 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v57;
              v53 = __OFADD__(v62++, 1);
              v5 = a3;
              v4 = a4;
              if (!v53)
              {
                goto LABEL_107;
              }

              goto LABEL_211;
          }
        }
      }
    }

    v6 = v62;
LABEL_207:

    return sub_1D9B13CB0(v58, a2, v6, v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v56 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v59 = v9 & *(a4 + 56);
    v54 = (v8 + 63) >> 6;
    v63 = a3 + 56;
LABEL_5:
    if (v59)
    {
      v10 = __clz(__rbit64(v59));
      v59 &= v59 - 1;
      v11 = v10 | (v7 << 6);
      v12 = a4;
      goto LABEL_12;
    }

    v13 = v7;
    v12 = a4;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v54)
      {
        goto LABEL_207;
      }

      v14 = *(v56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v59 = (v14 - 1) & v14;
        v11 = __clz(__rbit64(v14)) | (v7 << 6);
LABEL_12:
        v15 = *(*(v12 + 48) + v11);
        sub_1D9C7E8DC();
        sub_1D9C7DD6C();

        result = sub_1D9C7E93C();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        v19 = 1 << v17;
        if (((1 << v17) & *(v63 + 8 * (v17 >> 6))) == 0)
        {
          goto LABEL_5;
        }

        v61 = v6;
        v20 = ~v16;
        while (2)
        {
          v21 = 0xE300000000000000;
          v22 = 7631457;
          switch(*(*(v5 + 48) + v17))
          {
            case 1:
              v21 = 0xE600000000000000;
              v22 = 0x65727574616ELL;
              break;
            case 2:
              v21 = 0xE800000000000000;
              v22 = 0x6B72616D646E616CLL;
              break;
            case 3:
              v22 = 0x4C6C61727574616ELL;
              v21 = 0xEF6B72616D646E61;
              break;
            case 4:
              v21 = 0xE500000000000000;
              v22 = 0x616964656DLL;
              break;
            case 5:
              v21 = 0xE400000000000000;
              v22 = 1802465122;
              break;
            case 6:
              v21 = 0xE500000000000000;
              v22 = 0x6D75626C61;
              break;
            case 7:
              v21 = 0xE400000000000000;
              v22 = 1937006947;
              break;
            case 8:
              v21 = 0xE400000000000000;
              v22 = 1936158564;
              break;
            case 9:
              v21 = 0xE700000000000000;
              v23 = 1835626081;
              goto LABEL_33;
            case 0xA:
              v21 = 0xE500000000000000;
              v22 = 0x7364726962;
              break;
            case 0xB:
              v21 = 0xE700000000000000;
              v22 = 0x73746365736E69;
              break;
            case 0xC:
              v21 = 0xE800000000000000;
              v22 = 0x73656C6974706572;
              break;
            case 0xD:
              v21 = 0xE700000000000000;
              v23 = 1835884909;
LABEL_33:
              v22 = v23 | 0x736C6100000000;
              break;
            case 0xE:
              v22 = 0xD000000000000010;
              v21 = 0x80000001D9CA2910;
              break;
            case 0xF:
              v21 = 0xE700000000000000;
              v22 = 0x6C657261707061;
              break;
            case 0x10:
              v22 = 0x726F737365636361;
              v21 = 0xEB00000000736569;
              break;
            case 0x11:
              v21 = 0xE400000000000000;
              v22 = 1685024614;
              break;
            case 0x12:
              v21 = 0xEA0000000000746ELL;
              v22 = 0x6F726665726F7473;
              break;
            case 0x13:
              v24 = 1852270963;
              goto LABEL_40;
            case 0x14:
              v22 = 0xD000000000000011;
              v21 = 0x80000001D9CA2950;
              break;
            case 0x15:
              v24 = 1869903201;
LABEL_40:
              v22 = v24 | 0x626D795300000000;
              v21 = 0xEA00000000006C6FLL;
              break;
            case 0x16:
              v22 = 0x676F4C646E617262;
              v21 = 0xEF6C6F626D79536FLL;
              break;
            case 0x17:
              v21 = 0xE700000000000000;
              v22 = 0x65646F63726162;
              break;
            case 0x18:
              v22 = 0x727574706C756373;
              v21 = 0xE900000000000065;
              break;
            case 0x19:
              v21 = 0xE700000000000000;
              v22 = 0x656E696C796B73;
              break;
            case 0x1A:
              v21 = 0xE800000000000000;
              v22 = 0x44327463656A626FLL;
              break;
            default:
              break;
          }

          v25 = 0xE300000000000000;
          v26 = 7631457;
          switch(v15)
          {
            case 1:
              v25 = 0xE600000000000000;
              if (v22 == 0x65727574616ELL)
              {
                goto LABEL_94;
              }

              goto LABEL_95;
            case 2:
              v25 = 0xE800000000000000;
              if (v22 != 0x6B72616D646E616CLL)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 3:
              v25 = 0xEF6B72616D646E61;
              if (v22 != 0x4C6C61727574616ELL)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 4:
              v25 = 0xE500000000000000;
              if (v22 != 0x616964656DLL)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 5:
              v25 = 0xE400000000000000;
              if (v22 != 1802465122)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 6:
              v25 = 0xE500000000000000;
              if (v22 != 0x6D75626C61)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 7:
              v25 = 0xE400000000000000;
              if (v22 != 1937006947)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 8:
              v25 = 0xE400000000000000;
              if (v22 != 1936158564)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 9:
              v25 = 0xE700000000000000;
              v28 = 1835626081;
              goto LABEL_76;
            case 10:
              v25 = 0xE500000000000000;
              if (v22 != 0x7364726962)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 11:
              v25 = 0xE700000000000000;
              v27 = 0x746365736E69;
              goto LABEL_77;
            case 12:
              v25 = 0xE800000000000000;
              if (v22 != 0x73656C6974706572)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 13:
              v25 = 0xE700000000000000;
              v28 = 1835884909;
LABEL_76:
              v27 = v28 & 0xFFFF0000FFFFFFFFLL | 0x6C6100000000;
LABEL_77:
              if (v22 != (v27 & 0xFFFFFFFFFFFFLL | 0x73000000000000))
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 14:
              v25 = 0x80000001D9CA2910;
              if (v22 != 0xD000000000000010)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 15:
              v25 = 0xE700000000000000;
              if (v22 != 0x6C657261707061)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 16:
              v25 = 0xEB00000000736569;
              if (v22 != 0x726F737365636361)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 17:
              v25 = 0xE400000000000000;
              if (v22 != 1685024614)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 18:
              v25 = 0xEA0000000000746ELL;
              if (v22 != 0x6F726665726F7473)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 19:
              v29 = 1852270963;
              goto LABEL_90;
            case 20:
              v25 = 0x80000001D9CA2950;
              if (v22 != 0xD000000000000011)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 21:
              v29 = 1869903201;
LABEL_90:
              v25 = 0xEA00000000006C6FLL;
              if (v22 != (v29 | 0x626D795300000000))
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 22:
              v25 = 0xEF6C6F626D79536FLL;
              if (v22 != 0x676F4C646E617262)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 23:
              v25 = 0xE700000000000000;
              v26 = 0x65646F63726162;
              goto LABEL_93;
            case 24:
              v25 = 0xE900000000000065;
              if (v22 != 0x727574706C756373)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 25:
              v25 = 0xE700000000000000;
              if (v22 != 0x656E696C796B73)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            case 26:
              v25 = 0xE800000000000000;
              if (v22 != 0x44327463656A626FLL)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            default:
LABEL_93:
              if (v22 != v26)
              {
                goto LABEL_95;
              }

LABEL_94:
              if (v21 != v25)
              {
LABEL_95:
                v30 = sub_1D9C7E7DC();

                if (v30)
                {
                  goto LABEL_101;
                }

                v17 = (v17 + 1) & v20;
                v18 = v17 >> 6;
                v5 = a3;
                v19 = 1 << v17;
                if ((*(v63 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
                {
                  v6 = v61;
                  goto LABEL_5;
                }

                continue;
              }

LABEL_101:
              v58[v18] |= v19;
              v6 = v61 + 1;
              v5 = a3;
              if (!__OFADD__(v61, 1))
              {
                goto LABEL_5;
              }

              goto LABEL_210;
          }
        }
      }
    }

    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D9B13CB0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53408);
  result = sub_1D9C7E3CC();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_1D9C7E8DC();
    sub_1D9A15C94(v16);
    sub_1D9C7DD6C();

    result = sub_1D9C7E93C();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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

uint64_t sub_1D9B13ED4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53410);
  result = sub_1D9C7E3CC();
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
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1D9C7E8DC();

    sub_1D9C7DD6C();
    result = sub_1D9C7E93C();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
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

uint64_t sub_1D9B140F8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_1D9C7E47C();
  }

  result = sub_1D9B148D0(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE4(result) & 1;
    v13 = result | ((BYTE4(result) & 1) << 32);
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

uint64_t sub_1D9B141C0(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, uint64_t a5, void *a6, int a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v68 = a7;
  v71 = a6;
  v67 = a5;
  v83 = a3;
  v66 = a12;
  v72 = a11;
  v69 = a10;
  v70 = a9;
  v18 = sub_1D9C7DA2C();
  v77 = *(v18 - 8);
  v78 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v76 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D9C7DA4C();
  v74 = *(v20 - 8);
  v75 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v73 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10);
  v64 = *(v22 - 8);
  v23 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v60 - v24;
  v87[3] = a13;
  v87[4] = a14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v87);
  (*(*(a13 - 8) + 16))(boxed_opaque_existential_1, a1, a13);
  v27 = *a2;
  v62 = a2[1];
  v63 = v27;
  v28 = a4[1];
  v88 = *a4;
  v89 = v28;
  v29 = a4[3];
  v90 = a4[2];
  v91 = v29;
  type metadata accessor for MetricsBucket();
  v30 = swift_allocObject();
  *(v30 + 16) = MEMORY[0x1E69E7CC0];
  v92[0] = 0x6150202D20453245;
  v92[1] = 0xEB00000000657372;
  v92[2] = "Parse Overall";
  v92[3] = 13;
  v93 = 2;
  type metadata accessor for DurationMeasurement();
  swift_allocObject();

  v31 = sub_1D9AFD4B8(v92, v30);
  v81 = v30;
  v82 = v31;

  if (a8)
  {
    v32 = a8;
  }

  else
  {
    v32 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
  }

  v33 = a8;
  v79 = sub_1D9C7B87C();
  v61 = v34;

  v65 = *(v66 + OBJC_IVAR____TtC12VisualLookUp9ParseFlow_queue);
  v35 = swift_allocObject();
  v80 = v35;
  swift_weakInit();
  sub_1D99A17C8(v87, v86);
  v36 = v25;
  sub_1D99AB100(v67, v25, &unk_1ECB51B10);
  v37 = (*(v64 + 80) + 184) & ~*(v64 + 80);
  v38 = (v23 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + 23) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v43 = v83;
  *(v42 + 16) = v35;
  *(v42 + 24) = v43;
  *(v42 + 32) = v68;
  *(v42 + 40) = v81;
  sub_1D9979B9C(v86, v42 + 48);
  v44 = v63;
  *(v42 + 104) = v62;
  *(v42 + 88) = v44;
  v45 = v89;
  *(v42 + 120) = v88;
  *(v42 + 136) = v45;
  v46 = v91;
  *(v42 + 152) = v90;
  *(v42 + 168) = v46;
  sub_1D99B1C20(v36, v42 + v37, &unk_1ECB51B10);
  *(v42 + v38) = v82;
  v48 = v70;
  v47 = v71;
  *(v42 + v39) = v71;
  v49 = (v42 + v40);
  v50 = v79;
  v51 = v61;
  *v49 = v79;
  v49[1] = v51;
  *(v42 + v41) = v48;
  v52 = (v42 + ((v41 + 15) & 0xFFFFFFFFFFFFFFF8));
  v53 = v72;
  *v52 = v69;
  v52[1] = v53;
  v85[4] = sub_1D9A0F94C;
  v85[5] = v42;
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 1107296256;
  v85[2] = sub_1D9A0A1E0;
  v85[3] = &block_descriptor_8;
  v54 = _Block_copy(v85);

  sub_1D99AB100(&v88, v84, &qword_1ECB514D0);

  v55 = v47;
  sub_1D99AF2FC(v50, v51);

  v56 = v73;
  sub_1D9C7DA3C();
  v84[0] = MEMORY[0x1E69E7CC0];
  sub_1D9B183BC(&qword_1EDD2C680, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0);
  sub_1D9A0E83C();
  v57 = v76;
  v58 = v78;
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v56, v57, v54);
  _Block_release(v54);
  sub_1D99A5748(v79, v51);

  (*(v77 + 8))(v57, v58);
  (*(v74 + 8))(v56, v75);

  return __swift_destroy_boxed_opaque_existential_0Tm(v87);
}

unint64_t sub_1D9B14820(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1D9C7DD9C();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1D9C7DEAC();
}

uint64_t sub_1D9B148D0(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1D99C7458(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1D9C7DE1C();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1D99C7458(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1D99C7458(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_1D9C7DE1C();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            v48 = v32 * a6;
            if (v48 != v48)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__OFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if (v55 != v55)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__OFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
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

          v39 = v32 * a6;
          if (v39 != v39)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (__OFSUB__(v39, v40))
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

void *sub_1D9B14D3C(uint64_t a1)
{
  v56 = _s14DetectedResultVMa();
  v42 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51220);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v41 - v5;
  v49 = type metadata accessor for VisualUnderstanding.ImageRegion();
  MEMORY[0x1EEE9AC00](v49);
  v54 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v41 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v41 - v12;
  v47 = *(a1 + 16);
  if (v47)
  {
    v13 = 0;
    v41 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v45 = a1 + v41;
    v50 = *(v11 + 72);
    v44 = (v11 + 56);
    v43 = (v11 + 48);
    v14 = &qword_1EDD2B000;
    v51 = MEMORY[0x1E69E7CC0];
    v55 = v3;
    v46 = v6;
    while (1)
    {
      v52 = v13;
      v15 = v53;
      sub_1D9B17250(v45 + v50 * v13, v53, type metadata accessor for VisualUnderstanding.ImageRegion);
      v16 = v15;
      v17 = v54;
      sub_1D9B17250(v16, v54, type metadata accessor for VisualUnderstanding.ImageRegion);
      v18 = *(v17 + 56);
      v19 = *(v18 + 16);
      if (v19)
      {
        break;
      }

      v58 = MEMORY[0x1E69E7CC0];
LABEL_20:
      sub_1D9B1719C(v53, type metadata accessor for VisualUnderstanding.ImageRegion);
      v33 = v54;

      *(v33 + 48) = v58;
      v34 = v46;
      sub_1D9B17250(v33, v46, type metadata accessor for VisualUnderstanding.ImageRegion);
      v35 = v49;
      (*v44)(v34, 0, 1, v49);
      sub_1D9B1719C(v33, type metadata accessor for VisualUnderstanding.ImageRegion);
      if ((*v43)(v34, 1, v35) == 1)
      {
        sub_1D99A6AE0(v34, &qword_1ECB51220);
      }

      else
      {
        sub_1D9B1850C(v34, v48, type metadata accessor for VisualUnderstanding.ImageRegion);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_1D9AF8A90(0, v51[2] + 1, 1, v51);
        }

        v37 = v51[2];
        v36 = v51[3];
        if (v37 >= v36 >> 1)
        {
          v51 = sub_1D9AF8A90(v36 > 1, v37 + 1, 1, v51);
        }

        v38 = v50;
        v39 = v51;
        v51[2] = v37 + 1;
        sub_1D9B1850C(v48, v39 + v41 + v37 * v38, type metadata accessor for VisualUnderstanding.ImageRegion);
      }

      v13 = v52 + 1;
      if (v52 + 1 == v47)
      {
        return v51;
      }
    }

    v20 = v18 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v57 = *(v42 + 72);
    v58 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v21 = sub_1D9B17250(v20, v3, _s14DetectedResultVMa);
      if (v14[252] != -1)
      {
        v21 = swift_once();
      }

      MEMORY[0x1EEE9AC00](v21);
      *(&v41 - 2) = v3;
      sub_1D9B094E4(sub_1D9B17408, v22, &v62);
      v23 = v63;
      if (v63)
      {
        v24 = v62;
        v25 = v64;
        v26 = v65;
        v27 = v66;
        if (v66 != 27)
        {

          v28 = *&v3[*(v56 + 32)];
          sub_1D9B1719C(v3, _s14DetectedResultVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v58 = sub_1D9AF8974(0, *(v58 + 2) + 1, 1, v58);
          }

          v30 = *(v58 + 2);
          v29 = *(v58 + 3);
          if (v30 >= v29 >> 1)
          {
            v58 = sub_1D9AF8974((v29 > 1), v30 + 1, 1, v58);
          }

          v31 = v58;
          *(v58 + 2) = v30 + 1;
          v32 = &v31[160 * v30];
          v32[32] = v27;
          LODWORD(v31) = *(&v62 + 3);
          *(v32 + 33) = v62;
          *(v32 + 9) = v31;
          *(v32 + 40) = 0u;
          *(v32 + 56) = 0u;
          v32[72] = 0;
          LODWORD(v31) = v61[0];
          *(v32 + 19) = *(v61 + 3);
          *(v32 + 73) = v31;
          *(v32 + 5) = 0u;
          *(v32 + 6) = 0u;
          *(v32 + 14) = v24;
          *(v32 + 15) = v23;
          *(v32 + 16) = v25;
          *(v32 + 17) = v26;
          *(v32 + 36) = 0;
          *(v32 + 37) = v28;
          *(v32 + 38) = 0;
          v32[156] = 1;
          *(v32 + 157) = 0;
          v32[161] = 0;
          LODWORD(v31) = v59;
          *(v32 + 83) = v60;
          *(v32 + 162) = v31;
          *(v32 + 21) = 0;
          *(v32 + 22) = 0;
          *(v32 + 181) = 0;
          v3 = v55;
          v14 = &qword_1EDD2B000;
          goto LABEL_9;
        }

        sub_1D9B17428(v62, v63);
      }

      sub_1D9B1719C(v3, _s14DetectedResultVMa);
LABEL_9:
      v20 += v57;
      if (!--v19)
      {
        goto LABEL_20;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D9B15408(__int128 *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v113 = a4;
  v6 = type metadata accessor for RegionSearchResult.ResultItem(0);
  v7 = *(v6 - 8);
  v105 = v6;
  v106 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v107 = &v102[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v108 = type metadata accessor for ObjectKnowledge();
  v104 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v102[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v112 = &v102[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v102[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51220);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v111 = &v102[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v19 = a1[9];
  v185 = a1[8];
  v186 = v19;
  v187 = a1[10];
  v188 = *(a1 + 22);
  v20 = a1[5];
  v181 = a1[4];
  v182 = v20;
  v21 = a1[7];
  v183 = a1[6];
  v184 = v21;
  v22 = a1[1];
  v177 = *a1;
  v178 = v22;
  v23 = a1[3];
  v179 = a1[2];
  v180 = v23;
  v24 = *(v11 + 56);
  v121 = &v102[-v25];
  *&v120 = v10;
  v118 = v24;
  *&v119 = v11 + 56;
  v24();
  sub_1D99D3B54(&v189);
  v116 = *(v177 + 16);
  if (v116)
  {
    v110 = a3;
    v115 = v177 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v161 = v195;
    v162 = v196;
    v163[0] = v197[0];
    *(v163 + 13) = *(v197 + 13);
    v157 = v191;
    v158 = v192;
    v159 = v193;
    v160 = v194;
    v155 = v189;
    v156 = v190;
    *&v114 = *(v11 + 72);
    v26 = v11;
    v27 = 0;
    v28 = v121;
    while (1)
    {
      v117 = v27;
      sub_1D9B17250(v115 + v114 * v27, v15, type metadata accessor for VisualUnderstanding.ImageRegion);
      v29 = *(v15 + 6);
      v30 = *(v29 + 16);
      v142 = v155;
      v143 = v156;
      v146 = v159;
      v147 = v160;
      v144 = v157;
      v145 = v158;
      *(v150 + 13) = *(v163 + 13);
      v149 = v162;
      v150[0] = v163[0];
      v148 = v161;
      if (v30)
      {
        v31 = (v29 + 32);
        do
        {
          v32 = v31[1];
          v129 = *v31;
          v130 = v32;
          v33 = v31[2];
          v34 = v31[3];
          v35 = v31[5];
          v133 = v31[4];
          v134 = v35;
          v131 = v33;
          v132 = v34;
          v36 = v31[6];
          v37 = v31[7];
          v38 = v31[8];
          *(v137 + 13) = *(v31 + 141);
          v136 = v37;
          v137[0] = v38;
          v135 = v36;
          if (*&v137[1])
          {
            sub_1D99AE054(&v129, &v168);
            sub_1D99A6AE0(v28, &qword_1ECB51220);
            sub_1D9B17250(v15, v28, type metadata accessor for VisualUnderstanding.ImageRegion);
            (v118)(v28, 0, 1, v120);
            sub_1D99A6AE0(&v142, &qword_1ECB510B8);
            v174 = v135;
            v175 = v136;
            v176[0] = v137[0];
            *(v176 + 13) = *(v137 + 13);
            v170 = v131;
            v171 = v132;
            v172 = v133;
            v173 = v134;
            v168 = v129;
            v169 = v130;
            faiss::NormalizationTransform::~NormalizationTransform(&v168);
            v148 = v174;
            v149 = v175;
            v150[0] = v176[0];
            *(v150 + 13) = *(v176 + 13);
            v144 = v170;
            v145 = v171;
            v146 = v172;
            v147 = v173;
            v142 = v168;
            v143 = v169;
          }

          v31 += 10;
          --v30;
        }

        while (v30);
      }

      v27 = v117 + 1;
      sub_1D9B1719C(v15, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (v27 == v116)
      {
        break;
      }

      v161 = v148;
      v162 = v149;
      v163[0] = v150[0];
      *(v163 + 13) = *(v150 + 13);
      v157 = v144;
      v158 = v145;
      v159 = v146;
      v160 = v147;
      v155 = v142;
      v156 = v143;
    }

    v174 = v148;
    v175 = v149;
    v176[0] = v150[0];
    *(v176 + 13) = *(v150 + 13);
    v170 = v144;
    v171 = v145;
    v172 = v146;
    v173 = v147;
    v168 = v142;
    v169 = v143;
    a3 = v110;
  }

  else
  {
    v174 = v195;
    v175 = v196;
    v176[0] = v197[0];
    *(v176 + 13) = *(v197 + 13);
    v170 = v191;
    v171 = v192;
    v172 = v193;
    v173 = v194;
    v168 = v189;
    v169 = v190;
    v26 = v11;
  }

  v39 = v111;
  sub_1D99AB100(v121, v111, &qword_1ECB51220);
  v40 = (*(v26 + 48))(v39, 1, v120);
  v41 = v112;
  if (v40 == 1)
  {
    sub_1D99A6AE0(v39, &qword_1ECB51220);
LABEL_22:
    v150[0] = v185;
    v150[1] = v186;
    v151 = v187;
    v146 = v181;
    v147 = v182;
    v148 = v183;
    v149 = v184;
    v142 = v177;
    v143 = v178;
    v144 = v179;
    v145 = v180;
    *&v152 = v188;
    *(&v152 + 1) = MEMORY[0x1E69E7CC0];
    v153 = xmmword_1D9C8CD70;
    sub_1D9B1839C(&v142);
    v138 = v151;
    v139 = v152;
    v140 = v153;
    v141 = v154;
    v135 = v148;
    v136 = v149;
    v137[0] = v150[0];
    v137[1] = v150[1];
    v131 = v144;
    v132 = v145;
    v133 = v146;
    v134 = v147;
    v129 = v142;
    v130 = v143;
    sub_1D99BB40C(&v177, &v155);
    a3(&v129);
    v164 = v138;
    v165 = v139;
    v166 = v140;
    v167 = v141;
    v161 = v135;
    v162 = v136;
    v163[0] = v137[0];
    v163[1] = v137[1];
    v157 = v131;
    v158 = v132;
    v159 = v133;
    v160 = v134;
    v155 = v129;
    v156 = v130;
    goto LABEL_23;
  }

  sub_1D9B1850C(v39, v112, type metadata accessor for VisualUnderstanding.ImageRegion);
  v126 = v174;
  v127 = v175;
  v128[0] = v176[0];
  *(v128 + 13) = *(v176 + 13);
  v122[2] = v170;
  v123 = v171;
  v124 = v172;
  v125 = v173;
  v122[0] = v168;
  v122[1] = v169;
  if (sub_1D99AE104(v122) == 1 || !*(&v123 + 1) || !*&v128[1])
  {
    sub_1D9B1719C(v41, type metadata accessor for VisualUnderstanding.ImageRegion);
    goto LABEL_22;
  }

  v110 = a3;
  *&v120 = v123;
  v117 = *(&v128[0] + 1);
  v118 = *(&v123 + 1);
  v42 = v108;
  *&v119 = *(v108 + 24);
  v43 = *&v128[1];
  v44 = sub_1D9C7B80C();
  v45 = *(*(v44 - 8) + 56);
  v46 = v109;
  v45(&v109[v119], 1, 1, v44);
  v47 = *(v42 + 40);
  v48 = v118;
  v45(&v46[v47], 1, 1, v44);
  v49 = v117;
  swift_bridgeObjectRetain_n();

  v50 = sub_1D9C7DE4C();
  v51 = 0;
  if (v50)
  {

    v52 = sub_1D9B14820(1uLL, v49, v43);
    v54 = v53;
    v56 = v55;
    v58 = v57;

    if ((v52 ^ v54) >> 14)
    {
      *&v119 = v56;
      v116 = sub_1D99C7688(v52, v54, v56, v58, 10);
      if ((v59 & 0x100) != 0)
      {
        v61 = sub_1D99C6AD0(v52, v54, v119, v58, 10);
        v60 = v63;
      }

      else
      {
        v60 = v59;

        v61 = v116;
      }

      if (v60)
      {
        v51 = 0;
      }

      else
      {
        v51 = v61;
      }
    }

    else
    {

      v51 = 0;
    }
  }

  v116 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52518);
  v64 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520A0) - 8);
  v65 = *(*v64 + 80);
  *&v114 = v43;
  v66 = (v65 + 32) & ~v65;
  v67 = swift_allocObject();
  v119 = xmmword_1D9C85660;
  *(v67 + 16) = xmmword_1D9C85660;
  v68 = v67 + v66;
  v69 = (v67 + v66 + v64[14]);

  sub_1D9C7B97C();
  *v69 = v120;
  v69[1] = v48;

  v115 = sub_1D9A449E0(v67);
  swift_setDeallocating();
  sub_1D99A6AE0(v68, &qword_1ECB520A0);
  swift_deallocClassInstance();
  v70 = *(&v128[1] + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52520);
  v71 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52090) - 8);
  v72 = (*(*v71 + 80) + 32) & ~*(*v71 + 80);
  v73 = swift_allocObject();
  *(v73 + 16) = v119;
  v74 = v73 + v72;
  v75 = v71[14];
  sub_1D9C7B97C();
  *(v74 + v75) = MEMORY[0x1E69E7CD0];
  v76 = sub_1D9A44BD0(v73);
  swift_setDeallocating();
  sub_1D99A6AE0(v74, &qword_1ECB52090);
  swift_deallocClassInstance();
  v77 = v109;
  v78 = v114;
  *v109 = v117;
  v77[1] = v78;
  v79 = v120;
  v77[2] = v120;
  v77[3] = v48;
  v80 = v48;
  v81 = v108;
  *(v77 + *(v108 + 28)) = 0;
  v82 = (v77 + v81[8]);
  *v82 = 0;
  v82[1] = 0xE000000000000000;
  v83 = (v77 + v81[9]);
  *v83 = 0;
  v83[1] = 0xE000000000000000;
  *(v77 + v81[11]) = MEMORY[0x1E69E7CC0];
  v84 = (v77 + v81[12]);
  v84[2] = 0u;
  v84[3] = 0u;
  *v84 = 0u;
  v84[1] = 0u;
  v85 = v77 + v81[13];
  *v85 = 123711979;
  v85[8] = 0;
  v86 = v81[14];
  v114 = xmmword_1D9C8CD70;
  *(v77 + v86) = xmmword_1D9C8CD70;
  v87 = v77 + v81[15];
  *v87 = v116;
  *(v87 + 4) = 1;
  *(v87 + 2) = v79;
  *(v87 + 3) = v80;
  *(v87 + 4) = v115;
  *(v87 + 5) = v70;
  v87[48] = 0;
  *(v87 + 7) = 0;
  *(v87 + 8) = 0xE000000000000000;
  *(v87 + 9) = 0;
  *(v87 + 10) = 0xE000000000000000;
  *(v87 + 12) = 0;
  *(v87 + 13) = 0;
  *(v87 + 11) = v76;
  *(v87 + 28) = 0;
  *(v77 + v81[16]) = 0;
  v103 = LOBYTE(v122[0]);
  v88 = v125;
  v111 = v125;
  v116 = v126;
  v117 = *(&v125 + 1);
  v115 = *(&v126 + 1);
  v89 = v105;
  v90 = *(v105 + 28);
  v91 = v107;
  sub_1D9B17250(v77, &v107[v90], type metadata accessor for ObjectKnowledge);
  (*(v104 + 56))(v91 + v90, 0, 1, v81);
  *v91 = v103;
  v92 = v117;
  v93 = v118;
  *(v91 + 8) = v120;
  *(v91 + 16) = v93;
  *(v91 + 24) = v88;
  *(v91 + 32) = v92;
  v94 = v115;
  *(v91 + 40) = v116;
  *(v91 + 48) = v94;
  *(v91 + *(v89 + 32)) = 1065353216;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53270);
  v95 = swift_allocObject();
  *(v95 + 16) = v119;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51720);
  v96 = (*(v106 + 80) + 32) & ~*(v106 + 80);
  v97 = swift_allocObject();
  *(v97 + 16) = v119;
  v98 = v112;
  v99 = *v112;
  v119 = v112[1];
  v120 = v99;
  sub_1D9B17250(v91, v97 + v96, type metadata accessor for RegionSearchResult.ResultItem);
  v100 = v119;
  *(v95 + 32) = v120;
  *(v95 + 48) = v100;
  *(v95 + 64) = v97;
  v101 = MEMORY[0x1E69E7CC0];
  *(v95 + 72) = MEMORY[0x1E69E7CC0];
  *(v95 + 80) = v101;
  *(v95 + 88) = 0;
  *(v95 + 96) = 0xE000000000000000;
  v150[0] = v185;
  v150[1] = v186;
  v151 = v187;
  v146 = v181;
  v147 = v182;
  v148 = v183;
  v149 = v184;
  v142 = v177;
  v143 = v178;
  v144 = v179;
  v145 = v180;
  *&v152 = v188;
  *(&v152 + 1) = v95;
  v153 = v114;
  sub_1D9B1839C(&v142);
  v138 = v151;
  v139 = v152;
  v140 = v153;
  v141 = v154;
  v135 = v148;
  v136 = v149;
  v137[0] = v150[0];
  v137[1] = v150[1];
  v131 = v144;
  v132 = v145;
  v133 = v146;
  v134 = v147;
  v129 = v142;
  v130 = v143;
  sub_1D99FE1B4(v111, v117);
  sub_1D99BB40C(&v177, &v155);
  v110(&v129);
  sub_1D9B1719C(v91, type metadata accessor for RegionSearchResult.ResultItem);
  sub_1D9B1719C(v77, type metadata accessor for ObjectKnowledge);
  sub_1D9B1719C(v98, type metadata accessor for VisualUnderstanding.ImageRegion);
  v164 = v138;
  v165 = v139;
  v166 = v140;
  v167 = v141;
  v161 = v135;
  v162 = v136;
  v163[0] = v137[0];
  v163[1] = v137[1];
  v157 = v131;
  v158 = v132;
  v159 = v133;
  v160 = v134;
  v155 = v129;
  v156 = v130;
LABEL_23:
  sub_1D99A6AE0(&v155, &qword_1ECB51B40);
  sub_1D99A6AE0(&v168, &qword_1ECB510B8);
  return sub_1D99A6AE0(v121, &qword_1ECB51220);
}

void sub_1D9B1630C(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = type metadata accessor for RegionSearchResult.ResultItem(0);
  v6 = *(v5 - 8);
  v117 = v5;
  v118 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v119 = &v114[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v120 = type metadata accessor for ObjectKnowledge();
  v116 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v121 = &v114[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v114[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v114[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51220);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v125 = &v114[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v18);
  v20 = *(v10 + 56);
  v133 = &v114[-v21];
  *&v132 = v9;
  *&v131 = v10 + 56;
  *&v130 = v20;
  v20(v19);
  sub_1D99D3B54(&v183);
  v22 = *a1;
  *&v128 = *(*a1 + 16);
  if (v128)
  {
    v122 = v12;
    v123 = a1;
    v127 = v22 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    _Block_copy(a3);
    v124 = a3;
    _Block_copy(a3);
    v23 = 0;
    v168 = v189;
    v169 = v190;
    v170[0] = v191[0];
    *(v170 + 13) = *(v191 + 13);
    v164 = v185;
    v165 = v186;
    v166 = v187;
    v167 = v188;
    v162 = v183;
    v163 = v184;
    v24 = v10;
    v126 = *(v10 + 72);
    while (1)
    {
      v129 = v23;
      sub_1D9B17250(v127 + v126 * v23, v15, type metadata accessor for VisualUnderstanding.ImageRegion);
      v25 = *(v15 + 6);
      v26 = *(v25 + 16);
      v150 = v162;
      v151 = v163;
      v154 = v166;
      v155 = v167;
      v152 = v164;
      v153 = v165;
      *(v158 + 13) = *(v170 + 13);
      v157 = v169;
      v158[0] = v170[0];
      v156 = v168;
      v27 = v24;
      if (v26)
      {
        v28 = (v25 + 32);
        do
        {
          v29 = v28[1];
          v141 = *v28;
          v142 = v29;
          v30 = v28[2];
          v31 = v28[3];
          v32 = v28[5];
          v145 = v28[4];
          v146 = v32;
          v143 = v30;
          v144 = v31;
          v33 = v28[6];
          v34 = v28[7];
          v35 = v28[8];
          *(v149 + 13) = *(v28 + 141);
          v148 = v34;
          v149[0] = v35;
          v147 = v33;
          if (*&v149[1])
          {
            sub_1D99AE054(&v141, &v174);
            v36 = v133;
            sub_1D99A6AE0(v133, &qword_1ECB51220);
            sub_1D9B17250(v15, v36, type metadata accessor for VisualUnderstanding.ImageRegion);
            v37 = v36;
            v27 = v24;
            (v130)(v37, 0, 1, v132);
            sub_1D99A6AE0(&v150, &qword_1ECB510B8);
            v180 = v147;
            v181 = v148;
            v182[0] = v149[0];
            *(v182 + 13) = *(v149 + 13);
            v176 = v143;
            v177 = v144;
            v178 = v145;
            v179 = v146;
            v174 = v141;
            v175 = v142;
            faiss::NormalizationTransform::~NormalizationTransform(&v174);
            v156 = v180;
            v157 = v181;
            v158[0] = v182[0];
            *(v158 + 13) = *(v182 + 13);
            v152 = v176;
            v153 = v177;
            v154 = v178;
            v155 = v179;
            v150 = v174;
            v151 = v175;
          }

          v28 += 10;
          --v26;
        }

        while (v26);
      }

      v23 = v129 + 1;
      sub_1D9B1719C(v15, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (v23 == v128)
      {
        break;
      }

      v168 = v156;
      v169 = v157;
      v170[0] = v158[0];
      *(v170 + 13) = *(v158 + 13);
      v164 = v152;
      v165 = v153;
      v166 = v154;
      v167 = v155;
      v162 = v150;
      v163 = v151;
    }

    v180 = v156;
    v181 = v157;
    v182[0] = v158[0];
    *(v182 + 13) = *(v158 + 13);
    v176 = v152;
    v177 = v153;
    v178 = v154;
    v179 = v155;
    v174 = v150;
    v175 = v151;
    a1 = v123;
    a3 = v124;
    v12 = v122;
  }

  else
  {
    _Block_copy(a3);
    _Block_copy(a3);
    v180 = v189;
    v181 = v190;
    v182[0] = v191[0];
    *(v182 + 13) = *(v191 + 13);
    v176 = v185;
    v177 = v186;
    v178 = v187;
    v179 = v188;
    v174 = v183;
    v175 = v184;
    v27 = v10;
  }

  v38 = v125;
  sub_1D99AB100(v133, v125, &qword_1ECB51220);
  if ((*(v27 + 48))(v38, 1, v132) == 1)
  {
    sub_1D99A6AE0(v38, &qword_1ECB51220);
LABEL_26:
    v107 = *(a1 + 144);
    v170[0] = *(a1 + 128);
    v170[1] = v107;
    v171 = *(a1 + 160);
    v108 = *(a1 + 176);
    v109 = *(a1 + 80);
    v166 = *(a1 + 64);
    v167 = v109;
    v110 = *(a1 + 112);
    v168 = *(a1 + 96);
    v169 = v110;
    v111 = *(a1 + 16);
    v162 = *a1;
    v163 = v111;
    v112 = *(a1 + 48);
    v164 = *(a1 + 32);
    v165 = v112;
    *&v172 = v108;
    *(&v172 + 1) = MEMORY[0x1E69E7CC0];
    v173 = xmmword_1D9C8CD70;
    v159 = v171;
    v160 = v172;
    v161 = xmmword_1D9C8CD70;
    v156 = v168;
    v157 = v169;
    v158[0] = v170[0];
    v158[1] = v170[1];
    v152 = v164;
    v153 = v112;
    v154 = v166;
    v155 = v167;
    v150 = v162;
    v151 = v163;
    _Block_copy(a3);
    sub_1D99BB40C(a1, &v141);
    v113 = sub_1D9A159F4();
    (*(a3 + 2))(a3, v113, 0);

    _Block_release(a3);
    goto LABEL_27;
  }

  sub_1D9B1850C(v38, v12, type metadata accessor for VisualUnderstanding.ImageRegion);
  v138 = v180;
  v139 = v181;
  v140[0] = v182[0];
  *(v140 + 13) = *(v182 + 13);
  v134[2] = v176;
  v135 = v177;
  v136 = v178;
  v137 = v179;
  v134[0] = v174;
  v134[1] = v175;
  if (sub_1D99AE104(v134) == 1 || !*(&v135 + 1) || (v39 = *&v140[1]) == 0)
  {
    sub_1D9B1719C(v12, type metadata accessor for VisualUnderstanding.ImageRegion);
    goto LABEL_26;
  }

  v122 = v12;
  v123 = a1;
  v124 = a3;
  *&v131 = *(&v135 + 1);
  *&v132 = v135;
  v40 = *(&v140[0] + 1);
  v41 = v120;
  v42 = *(v120 + 24);
  v43 = sub_1D9C7B80C();
  v44 = *(*(v43 - 8) + 56);
  v45 = v121;
  v46 = &v121[v42];
  v47 = v40;
  v44(v46, 1, 1, v43);
  v44(&v45[*(v41 + 40)], 1, 1, v43);
  swift_bridgeObjectRetain_n();

  v48 = sub_1D9C7DE4C();
  v49 = 0;
  if (v48)
  {

    v50 = sub_1D9B14820(1uLL, v40, v39);
    v52 = v51;
    v54 = v53;
    v56 = v55;

    if ((v50 ^ v52) >> 14)
    {
      v57 = sub_1D99C7688(v50, v52, v54, v56, 10);
      if ((v58 & 0x100) != 0)
      {
        v57 = sub_1D99C6AD0(v50, v52, v54, v56, 10);
      }

      v59 = v57;
      v60 = v58;

      if (v60)
      {
        v49 = 0;
      }

      else
      {
        v49 = v59;
      }
    }

    else
    {

      v49 = 0;
    }
  }

  v129 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52518);
  v61 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520A0) - 8);
  v62 = *(*v61 + 80);
  *&v128 = v47;
  v63 = (v62 + 32) & ~v62;
  v64 = swift_allocObject();
  v130 = xmmword_1D9C85660;
  *(v64 + 16) = xmmword_1D9C85660;
  v65 = v64 + v63;
  v66 = (v64 + v63 + v61[14]);
  v67 = v131;

  sub_1D9C7B97C();
  *v66 = v132;
  v66[1] = v67;

  v127 = sub_1D9A449E0(v64);
  swift_setDeallocating();
  sub_1D99A6AE0(v65, &qword_1ECB520A0);
  swift_deallocClassInstance();
  v68 = *(&v140[1] + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52520);
  v69 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52090) - 8);
  v70 = (*(*v69 + 80) + 32) & ~*(*v69 + 80);
  v71 = swift_allocObject();
  *(v71 + 16) = v130;
  v72 = v71 + v70;
  v73 = v69[14];
  sub_1D9C7B97C();
  *(v72 + v73) = MEMORY[0x1E69E7CD0];
  v74 = v39;
  v75 = sub_1D9A44BD0(v71);
  swift_setDeallocating();
  sub_1D99A6AE0(v72, &qword_1ECB52090);
  swift_deallocClassInstance();
  v76 = v121;
  *v121 = v128;
  v76[1] = v74;
  v77 = v132;
  v76[2] = v132;
  v76[3] = v67;
  v78 = v120;
  *(v76 + *(v120 + 28)) = 0;
  v79 = (v76 + v78[8]);
  *v79 = 0;
  v79[1] = 0xE000000000000000;
  v80 = (v76 + v78[9]);
  *v80 = 0;
  v80[1] = 0xE000000000000000;
  *(v76 + v78[11]) = MEMORY[0x1E69E7CC0];
  v81 = (v76 + v78[12]);
  v81[2] = 0u;
  v81[3] = 0u;
  *v81 = 0u;
  v81[1] = 0u;
  v82 = v76 + v78[13];
  *v82 = 123711979;
  v82[8] = 0;
  v83 = v78[14];
  v128 = xmmword_1D9C8CD70;
  *(v76 + v83) = xmmword_1D9C8CD70;
  v84 = v76 + v78[15];
  *v84 = v129;
  *(v84 + 4) = 1;
  *(v84 + 2) = v77;
  *(v84 + 3) = v67;
  *(v84 + 4) = v127;
  *(v84 + 5) = v68;
  v84[48] = 0;
  *(v84 + 7) = 0;
  *(v84 + 8) = 0xE000000000000000;
  *(v84 + 9) = 0;
  *(v84 + 10) = 0xE000000000000000;
  *(v84 + 12) = 0;
  *(v84 + 13) = 0;
  *(v84 + 11) = v75;
  *(v84 + 28) = 0;
  *(v76 + v78[16]) = 0;
  v115 = LOBYTE(v134[0]);
  v85 = v137;
  v129 = v137;
  v86 = v138;
  v126 = v138;
  v127 = *(&v137 + 1);
  v125 = *(&v138 + 1);
  v87 = v117;
  v88 = *(v117 + 28);
  v89 = v119;
  sub_1D9B17250(v76, &v119[v88], type metadata accessor for ObjectKnowledge);
  (*(v116 + 56))(v89 + v88, 0, 1, v78);
  *v89 = v115;
  v90 = v131;
  *(v89 + 8) = v132;
  *(v89 + 16) = v90;
  *(v89 + 24) = v85;
  v91 = v125;
  *(v89 + 40) = v86;
  *(v89 + 48) = v91;
  *(v89 + *(v87 + 32)) = 1065353216;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53270);
  v92 = swift_allocObject();
  *(v92 + 16) = v130;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51720);
  v93 = (*(v118 + 80) + 32) & ~*(v118 + 80);
  v94 = swift_allocObject();
  *(v94 + 16) = v130;
  v95 = v122;
  v96 = *v122;
  v131 = v122[1];
  v132 = v96;
  sub_1D9B17250(v89, v94 + v93, type metadata accessor for RegionSearchResult.ResultItem);
  v97 = v131;
  *(v92 + 32) = v132;
  *(v92 + 48) = v97;
  *(v92 + 64) = v94;
  v98 = MEMORY[0x1E69E7CC0];
  *(v92 + 72) = MEMORY[0x1E69E7CC0];
  *(v92 + 80) = v98;
  *(v92 + 88) = 0;
  *(v92 + 96) = 0xE000000000000000;
  v99 = v123;
  v100 = *(v123 + 144);
  v170[0] = *(v123 + 128);
  v170[1] = v100;
  v171 = *(v123 + 160);
  v101 = *(v123 + 176);
  v102 = *(v123 + 80);
  v166 = *(v123 + 64);
  v167 = v102;
  v103 = *(v123 + 112);
  v168 = *(v123 + 96);
  v169 = v103;
  v104 = *(v123 + 16);
  v162 = *v123;
  v163 = v104;
  v105 = *(v123 + 48);
  v164 = *(v123 + 32);
  v165 = v105;
  *&v172 = v101;
  *(&v172 + 1) = v92;
  v173 = v128;
  v159 = v171;
  v160 = v172;
  v161 = v128;
  v156 = v168;
  v157 = v169;
  v158[0] = v170[0];
  v158[1] = v170[1];
  v152 = v164;
  v153 = v105;
  v154 = v166;
  v155 = v167;
  v150 = v162;
  v151 = v163;
  a3 = v124;
  _Block_copy(v124);
  sub_1D99FE1B4(v129, v127);
  sub_1D99BB40C(v99, &v141);
  v106 = sub_1D9A159F4();
  (*(a3 + 2))(a3, v106, 0);

  _Block_release(a3);
  sub_1D9B1719C(v89, type metadata accessor for RegionSearchResult.ResultItem);
  sub_1D9B1719C(v76, type metadata accessor for ObjectKnowledge);
  sub_1D9B1719C(v95, type metadata accessor for VisualUnderstanding.ImageRegion);
LABEL_27:
  sub_1D9B171FC(&v162);
  sub_1D99A6AE0(&v174, &qword_1ECB510B8);
  sub_1D99A6AE0(v133, &qword_1ECB51220);
  _Block_release(a3);
  _Block_release(a3);
}

uint64_t sub_1D9B1719C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9B17250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1D9B17428(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1D9B17478(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D9AD9A18;

  return sub_1D9B0CEB4(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D9B17550(uint64_t a1, uint64_t a2, void (*a3)(id, void), uint64_t a4)
{
  v130 = a3;
  v6 = type metadata accessor for RegionSearchResult.ResultItem(0);
  v7 = *(v6 - 8);
  v121 = v6;
  v122 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v123 = &v118[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v124 = type metadata accessor for ObjectKnowledge();
  v120 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v118[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for VisualUnderstanding.ImageRegion();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v129 = &v118[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v118[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51220);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v128 = &v118[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v18);
  v20 = *(v11 + 56);
  v138 = &v118[-v21];
  *&v137 = v10;
  v135 = v20;
  *&v136 = v11 + 56;
  v20(v19);
  sub_1D99D3B54(&v188);
  v22 = *a1;
  v133 = *(*a1 + 16);
  if (v133)
  {
    v126 = a1;
    v127 = a4;
    v23 = 0;
    v132 = v22 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v173 = v194;
    v174 = v195;
    v175[0] = v196[0];
    *(v175 + 13) = *(v196 + 13);
    v169 = v190;
    v170 = v191;
    v171 = v192;
    v172 = v193;
    v167 = v188;
    v168 = v189;
    v131 = *(v11 + 72);
    while (1)
    {
      *&v134 = v23;
      sub_1D9B17250(v132 + v131 * v23, v15, type metadata accessor for VisualUnderstanding.ImageRegion);
      v24 = *(v15 + 6);
      v25 = *(v24 + 16);
      v155 = v167;
      v156 = v168;
      v159 = v171;
      v160 = v172;
      v157 = v169;
      v158 = v170;
      *(v163 + 13) = *(v175 + 13);
      v162 = v174;
      v163[0] = v175[0];
      v161 = v173;
      if (v25)
      {
        v26 = (v24 + 32);
        do
        {
          v27 = v26[1];
          v146 = *v26;
          v147 = v27;
          v28 = v26[2];
          v29 = v26[3];
          v30 = v26[5];
          v150 = v26[4];
          v151 = v30;
          v148 = v28;
          v149 = v29;
          v31 = v26[6];
          v32 = v26[7];
          v33 = v26[8];
          *(v154 + 13) = *(v26 + 141);
          v153 = v32;
          v154[0] = v33;
          v152 = v31;
          if (*&v154[1])
          {
            sub_1D99AE054(&v146, &v179);
            v34 = v11;
            v35 = v138;
            sub_1D99A6AE0(v138, &qword_1ECB51220);
            sub_1D9B17250(v15, v35, type metadata accessor for VisualUnderstanding.ImageRegion);
            v36 = v35;
            v11 = v34;
            (v135)(v36, 0, 1, v137);
            sub_1D99A6AE0(&v155, &qword_1ECB510B8);
            v185 = v152;
            v186 = v153;
            v187[0] = v154[0];
            *(v187 + 13) = *(v154 + 13);
            v181 = v148;
            v182 = v149;
            v183 = v150;
            v184 = v151;
            v179 = v146;
            v180 = v147;
            faiss::NormalizationTransform::~NormalizationTransform(&v179);
            v161 = v185;
            v162 = v186;
            v163[0] = v187[0];
            *(v163 + 13) = *(v187 + 13);
            v157 = v181;
            v158 = v182;
            v159 = v183;
            v160 = v184;
            v155 = v179;
            v156 = v180;
          }

          v26 += 10;
          --v25;
        }

        while (v25);
      }

      v23 = v134 + 1;
      sub_1D9B1719C(v15, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (v23 == v133)
      {
        break;
      }

      v173 = v161;
      v174 = v162;
      v175[0] = v163[0];
      *(v175 + 13) = *(v163 + 13);
      v169 = v157;
      v170 = v158;
      v171 = v159;
      v172 = v160;
      v167 = v155;
      v168 = v156;
    }

    v185 = v161;
    v186 = v162;
    v187[0] = v163[0];
    *(v187 + 13) = *(v163 + 13);
    v181 = v157;
    v182 = v158;
    v183 = v159;
    v184 = v160;
    v179 = v155;
    v180 = v156;
    v37 = v130;
    a1 = v126;
    v38 = v127;
  }

  else
  {
    v185 = v194;
    v186 = v195;
    v187[0] = v196[0];
    *(v187 + 13) = *(v196 + 13);
    v181 = v190;
    v182 = v191;
    v183 = v192;
    v184 = v193;
    v179 = v188;
    v180 = v189;
    v38 = a4;
    v37 = v130;
  }

  v39 = v128;
  sub_1D99AB100(v138, v128, &qword_1ECB51220);
  v40 = (*(v11 + 48))(v39, 1, v137);
  v41 = v129;
  if (v40 == 1)
  {
    sub_1D99A6AE0(v39, &qword_1ECB51220);
LABEL_27:
    v110 = *(a1 + 144);
    v175[0] = *(a1 + 128);
    v175[1] = v110;
    v176 = *(a1 + 160);
    v111 = *(a1 + 176);
    v112 = *(a1 + 80);
    v171 = *(a1 + 64);
    v172 = v112;
    v113 = *(a1 + 112);
    v173 = *(a1 + 96);
    v174 = v113;
    v114 = *(a1 + 16);
    v167 = *a1;
    v168 = v114;
    v115 = *(a1 + 48);
    v169 = *(a1 + 32);
    v170 = v115;
    *&v177 = v111;
    *(&v177 + 1) = MEMORY[0x1E69E7CC0];
    v178 = xmmword_1D9C8CD70;
    v164 = v176;
    v165 = v177;
    v166 = xmmword_1D9C8CD70;
    v161 = v173;
    v162 = v174;
    v163[0] = v175[0];
    v163[1] = v175[1];
    v157 = v169;
    v158 = v115;
    v159 = v171;
    v160 = v172;
    v155 = v167;
    v156 = v168;
    sub_1D99BB40C(a1, &v146);
    v116 = sub_1D9A159F4();
    v37(v116, 0);

    goto LABEL_28;
  }

  sub_1D9B1850C(v39, v129, type metadata accessor for VisualUnderstanding.ImageRegion);
  v143 = v185;
  v144 = v186;
  v145[0] = v187[0];
  *(v145 + 13) = *(v187 + 13);
  v139[2] = v181;
  v140 = v182;
  v141 = v183;
  v142 = v184;
  v139[0] = v179;
  v139[1] = v180;
  if (sub_1D99AE104(v139) == 1)
  {
    sub_1D9B1719C(v41, type metadata accessor for VisualUnderstanding.ImageRegion);
    goto LABEL_27;
  }

  v42 = v37;
  v43 = *(&v140 + 1);
  if (!*(&v140 + 1) || (v44 = *&v145[1]) == 0)
  {
    sub_1D9B1719C(v41, type metadata accessor for VisualUnderstanding.ImageRegion);
    v37 = v42;
    goto LABEL_27;
  }

  v126 = a1;
  v127 = v38;
  *&v137 = v140;
  *&v134 = *(&v145[0] + 1);
  v45 = v124;
  v46 = *(v124 + 24);
  v47 = sub_1D9C7B80C();
  v48 = *(*(v47 - 8) + 56);
  v49 = v125;
  v50 = &v125[v46];
  v51 = v134;
  v48(v50, 1, 1, v47);
  v48(&v49[*(v45 + 40)], 1, 1, v47);
  v135 = v43;
  swift_bridgeObjectRetain_n();

  v52 = sub_1D9C7DE4C();
  v53 = 0;
  v54 = v44;
  if (v52)
  {

    v55 = sub_1D9B14820(1uLL, v51, v44);
    v57 = v56;
    v59 = v58;
    v61 = v60;

    if ((v55 ^ v57) >> 14)
    {
      v62 = sub_1D99C7688(v55, v57, v59, v61, 10);
      if ((v63 & 0x100) != 0)
      {
        v62 = sub_1D99C6AD0(v55, v57, v59, v61, 10);
      }

      v64 = v62;
      v65 = v63;

      if (v65)
      {
        v53 = 0;
      }

      else
      {
        v53 = v64;
      }
    }

    else
    {

      v53 = 0;
    }
  }

  v133 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52518);
  v66 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520A0) - 8);
  v67 = (*(*v66 + 80) + 32) & ~*(*v66 + 80);
  v68 = swift_allocObject();
  v136 = xmmword_1D9C85660;
  *(v68 + 16) = xmmword_1D9C85660;
  v69 = v68 + v67;
  v70 = (v68 + v67 + v66[14]);
  v71 = v135;

  sub_1D9C7B97C();
  *v70 = v137;
  v70[1] = v71;

  v132 = sub_1D9A449E0(v68);
  swift_setDeallocating();
  sub_1D99A6AE0(v69, &qword_1ECB520A0);
  swift_deallocClassInstance();
  v72 = *(&v145[1] + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52520);
  v73 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52090) - 8);
  v74 = (*(*v73 + 80) + 32) & ~*(*v73 + 80);
  v75 = swift_allocObject();
  *(v75 + 16) = v136;
  v76 = v75 + v74;
  v77 = v73[14];
  sub_1D9C7B97C();
  *(v76 + v77) = MEMORY[0x1E69E7CD0];
  v78 = sub_1D9A44BD0(v75);
  swift_setDeallocating();
  sub_1D99A6AE0(v76, &qword_1ECB52090);
  swift_deallocClassInstance();
  v80 = v124;
  v79 = v125;
  *v125 = v134;
  v79[1] = v54;
  v81 = v137;
  v79[2] = v137;
  v79[3] = v71;
  *(v79 + v80[7]) = 0;
  v82 = (v79 + v80[8]);
  *v82 = 0;
  v82[1] = 0xE000000000000000;
  v83 = (v79 + v80[9]);
  *v83 = 0;
  v83[1] = 0xE000000000000000;
  *(v79 + v80[11]) = MEMORY[0x1E69E7CC0];
  v84 = (v79 + v80[12]);
  v84[2] = 0u;
  v84[3] = 0u;
  *v84 = 0u;
  v84[1] = 0u;
  v85 = v79 + v80[13];
  *v85 = 123711979;
  v85[8] = 0;
  v86 = v80[14];
  v134 = xmmword_1D9C8CD70;
  *(v79 + v86) = xmmword_1D9C8CD70;
  v87 = v79 + v80[15];
  *v87 = v133;
  *(v87 + 4) = 1;
  *(v87 + 2) = v81;
  *(v87 + 3) = v71;
  *(v87 + 4) = v132;
  *(v87 + 5) = v72;
  v87[48] = 0;
  *(v87 + 7) = 0;
  *(v87 + 8) = 0xE000000000000000;
  *(v87 + 9) = 0;
  *(v87 + 10) = 0xE000000000000000;
  *(v87 + 12) = 0;
  *(v87 + 13) = 0;
  *(v87 + 11) = v78;
  *(v87 + 28) = 0;
  *(v79 + v80[16]) = 0;
  v119 = LOBYTE(v139[0]);
  v88 = v142;
  v132 = *(&v142 + 1);
  v133 = v142;
  v128 = *(&v143 + 1);
  v89 = v143;
  v131 = v143;
  v90 = v121;
  v91 = *(v121 + 28);
  v92 = v123;
  sub_1D9B17250(v79, &v123[v91], type metadata accessor for ObjectKnowledge);
  (*(v120 + 56))(v92 + v91, 0, 1, v80);
  *v92 = v119;
  v93 = v135;
  *(v92 + 8) = v137;
  *(v92 + 16) = v93;
  *(v92 + 24) = v88;
  v94 = v128;
  *(v92 + 40) = v89;
  *(v92 + 48) = v94;
  *(v92 + *(v90 + 32)) = 1065353216;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53270);
  v95 = swift_allocObject();
  *(v95 + 16) = v136;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51720);
  v96 = (*(v122 + 80) + 32) & ~*(v122 + 80);
  v97 = swift_allocObject();
  *(v97 + 16) = v136;
  v98 = v129;
  v99 = *v129;
  v136 = v129[1];
  v137 = v99;
  sub_1D9B17250(v92, v97 + v96, type metadata accessor for RegionSearchResult.ResultItem);
  v100 = v136;
  *(v95 + 32) = v137;
  *(v95 + 48) = v100;
  *(v95 + 64) = v97;
  v101 = MEMORY[0x1E69E7CC0];
  *(v95 + 72) = MEMORY[0x1E69E7CC0];
  *(v95 + 80) = v101;
  *(v95 + 88) = 0;
  *(v95 + 96) = 0xE000000000000000;
  v102 = v126;
  v103 = *(v126 + 144);
  v175[0] = *(v126 + 128);
  v175[1] = v103;
  v176 = *(v126 + 160);
  v104 = *(v126 + 176);
  v105 = *(v126 + 80);
  v171 = *(v126 + 64);
  v172 = v105;
  v106 = *(v126 + 112);
  v173 = *(v126 + 96);
  v174 = v106;
  v107 = *(v126 + 16);
  v167 = *v126;
  v168 = v107;
  v108 = *(v126 + 48);
  v169 = *(v126 + 32);
  v170 = v108;
  *&v177 = v104;
  *(&v177 + 1) = v95;
  v178 = v134;
  v164 = v176;
  v165 = v177;
  v166 = v134;
  v161 = v173;
  v162 = v174;
  v163[0] = v175[0];
  v163[1] = v175[1];
  v157 = v169;
  v158 = v108;
  v159 = v171;
  v160 = v172;
  v155 = v167;
  v156 = v168;
  sub_1D99FE1B4(v133, v132);
  sub_1D99BB40C(v102, &v146);
  v109 = sub_1D9A159F4();
  v130(v109, 0);

  sub_1D9B1719C(v92, type metadata accessor for RegionSearchResult.ResultItem);
  sub_1D9B1719C(v79, type metadata accessor for ObjectKnowledge);
  sub_1D9B1719C(v98, type metadata accessor for VisualUnderstanding.ImageRegion);
LABEL_28:
  sub_1D9B171FC(&v167);
  sub_1D99A6AE0(&v179, &qword_1ECB510B8);
  return sub_1D99A6AE0(v138, &qword_1ECB51220);
}