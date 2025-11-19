char *sub_1000110EC()
{
  v1 = v0;
  v35 = sub_1001CFDA0();
  v37 = *(v35 - 8);
  v2 = *(v37 + 64);
  __chkstk_darwin(v35, v3);
  v34 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011AC0(&qword_100227B18, &unk_1001D36B0);
  v5 = *v0;
  v6 = sub_1001D21A0();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v36 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v38 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v37;
        v22 = *(v37 + 72) * v20;
        v24 = v34;
        v23 = v35;
        (*(v37 + 16))(v34, *(v5 + 48) + v22, v35);
        v25 = *(*(v5 + 56) + 8 * v20);
        v26 = v5;
        v27 = v36;
        (*(v21 + 32))(*(v36 + 48) + v22, v24, v23);
        v28 = *(v27 + 56);
        v5 = v26;
        *(v28 + 8 * v20) = v25;

        v15 = v38;
      }

      while (v38);
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

        v1 = v30;
        v7 = v36;
        goto LABEL_18;
      }

      v19 = *(v31 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

void *sub_10001136C()
{
  v1 = v0;
  sub_100011AC0(&qword_100227B58, &qword_1001D36F8);
  v2 = *v0;
  v3 = sub_1001D21A0();
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
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
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
        v17 <<= 7;
        v24 = *(v19 + v17 + 80);
        v23 = *(v19 + v17 + 96);
        v25 = *(v19 + v17 + 64);
        *(v44 + 9) = *(v19 + v17 + 105);
        v43 = v24;
        v44[0] = v23;
        v42 = v25;
        v27 = *(v19 + v17);
        v26 = *(v19 + v17 + 16);
        v28 = *(v19 + v17 + 48);
        v40 = *(v19 + v17 + 32);
        v41 = v28;
        v38 = v27;
        v39 = v26;
        v29 = (*(v4 + 48) + v18);
        *v29 = v22;
        v29[1] = v21;
        v30 = (*(v4 + 56) + v17);
        v31 = v38;
        v32 = v39;
        v33 = v41;
        v30[2] = v40;
        v30[3] = v33;
        *v30 = v31;
        v30[1] = v32;
        v34 = v42;
        v35 = v43;
        v36 = v44[0];
        *(v30 + 105) = *(v44 + 9);
        v30[5] = v35;
        v30[6] = v36;
        v30[4] = v34;

        result = sub_10001208C(&v38, &v37, &qword_100230150, &unk_1001D3700);
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

void *sub_100011560()
{
  v1 = v0;
  sub_100011AC0(&qword_100227B50, &qword_1001D36E8);
  v2 = *v0;
  v3 = sub_1001D21A0();
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
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
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
        v17 *= 72;
        v22 = *(v2 + 56) + v17;
        v24 = *(v22 + 16);
        v23 = *(v22 + 32);
        v25 = *(v22 + 48);
        v36 = *(v22 + 64);
        v35 = v25;
        v32 = *v22;
        v33 = v24;
        v34 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v32;
        v28 = v33;
        v29 = v34;
        v30 = v35;
        *(v27 + 64) = v36;
        *(v27 + 32) = v29;
        *(v27 + 48) = v30;
        *(v27 + 16) = v28;

        result = sub_10001208C(&v32, v31, &qword_100230140, &qword_1001D36F0);
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

BOOL sub_100011744(uint64_t a1, uint64_t a2)
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

  sub_1001D2020();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

unint64_t *sub_10001183C(uint64_t a1, void (*a2)(_OWORD *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v3)
  {
    v36 = &_swiftEmptyArrayStorage;
    sub_1001514D8(0, v3, 0);
    v33 = &_swiftEmptyArrayStorage;
    v5 = a1 + 64;
    v6 = -1 << *(a1 + 32);
    result = sub_1001D1FB0();
    v7 = result;
    v8 = 0;
    v9 = *(a1 + 36);
    v30 = v3;
    v31 = v9;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (v9 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v12 = v5;
      v13 = (*(a1 + 48) + 16 * v7);
      v15 = *v13;
      v14 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v7);

      a2(v34, v15, v14, v16);

      v17 = v33;
      v36 = v33;
      v19 = v33[2];
      v18 = v33[3];
      if (v19 >= v18 >> 1)
      {
        result = sub_1001514D8((v18 > 1), v19 + 1, 1);
        v17 = v36;
      }

      v17[2] = v19 + 1;
      v33 = v17;
      v20 = &v17[5 * v19];
      v21 = v34[0];
      v22 = v34[1];
      v20[8] = v35;
      *(v20 + 2) = v21;
      *(v20 + 3) = v22;
      v10 = 1 << *(a1 + 32);
      if (v7 >= v10)
      {
        goto LABEL_25;
      }

      v23 = *(v12 + 8 * v11);
      if ((v23 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      v5 = v12;
      v9 = v31;
      if (v31 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v24 = v23 & (-2 << (v7 & 0x3F));
      if (v24)
      {
        v10 = __clz(__rbit64(v24)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v11 << 6;
        v26 = v11 + 1;
        v27 = (a1 + 72 + 8 * v11);
        while (v26 < (v10 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_10001202C(v7, v31, 0);
            v10 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_10001202C(v7, v31, 0);
      }

LABEL_4:
      ++v8;
      v7 = v10;
      if (v8 == v30)
      {
        return v33;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_100011AC0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100011B0C(uint64_t a1)
{
  v2 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v9 = *(result - 8) + 64;
    v5 = *(a1 + 88);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v10 = *(result - 8) + 64;
      result = sub_1001CFE40();
      if (v7 <= 0x3F)
      {
        v11 = *(result - 8) + 64;
        result = sub_1001D0E60();
        if (v8 <= 0x3F)
        {
          v12 = *(result - 8) + 64;
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_100011C94(uint64_t a1, int a2)
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

uint64_t sub_100011CB4(uint64_t result, int a2, int a3)
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

uint64_t sub_100011CF0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_100011D3C()
{
  result = qword_100227A48;
  if (!qword_100227A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227A48);
  }

  return result;
}

unint64_t sub_100011D90()
{
  result = qword_100227A50;
  if (!qword_100227A50)
  {
    sub_100011DF4(&qword_100227A30, &qword_1001D4990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227A50);
  }

  return result;
}

uint64_t sub_100011DF4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100011E48(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100011E9C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100011EAC()
{
  result = qword_100227A60;
  if (!qword_100227A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227A60);
  }

  return result;
}

uint64_t sub_100011F00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100011AC0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100011F60(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *sub_100011FA8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
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

uint64_t sub_10001202C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100012038(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10001208C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100011AC0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000120F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001215C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1000121D8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__n128 sub_100012314(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100012320(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100012368(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1000123B4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  result = sub_1001CFD20();
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v10 < 9.22337204e18)
  {
    v11 = sub_1001D23A0();
    v12._countAndFlagsBits = a4;
    v12._object = a5;
    sub_1001D18B0(v12);
    v13._countAndFlagsBits = a2;
    v13._object = a3;
    sub_1001D18B0(v13);
    return v11;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_10001248C(uint64_t a1)
{
  v2 = sub_1001D0E60();
  if (v3 <= 0x3F)
  {
    v9 = *(v2 - 8) + 64;
    sub_100012FF8();
    if (v5 <= 0x3F)
    {
      v10 = *(v4 - 8) + 64;
      v6 = *(a1 + 88);
      v7 = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v11 = *(v7 - 8) + 64;
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_1000125A0()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = type metadata accessor for ThimbledEvent();
  v1[4] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v4 = sub_100011AC0(&qword_100227C90, qword_1001D39D0);
  v1[6] = v4;
  v5 = *(v4 - 8);
  v1[7] = v5;
  v6 = *(v5 + 64) + 15;
  v1[8] = swift_task_alloc();
  v7 = sub_1001D0180();
  v1[9] = v7;
  v8 = *(v7 - 8);
  v1[10] = v8;
  v9 = *(v8 + 64) + 15;
  v1[11] = swift_task_alloc();
  v10 = sub_1001CFDD0();
  v1[12] = v10;
  v11 = *(v10 - 8);
  v1[13] = v11;
  v12 = *(v11 + 64) + 15;
  v1[14] = swift_task_alloc();
  v13 = sub_1001CFD60();
  v1[15] = v13;
  v14 = *(v13 - 8);
  v1[16] = v14;
  v15 = *(v14 + 64) + 15;
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_1000127D8, 0, 0);
}

uint64_t sub_1000127D8()
{
  v1 = v0[2];
  v0[18] = qword_100227BF0;
  v2 = sub_1001D0E50();
  v3 = sub_1001D1E00();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Running featureUsageAnalyzer activity", v4, 2u);
  }

  v5 = v0[17];
  v6 = v0[14];
  v7 = v0[2];

  v8 = *(v7 + qword_100227C00);
  type metadata accessor for FeatureUsageAnalyzerStoreHelper();
  sub_1001CFD50();
  sub_1001CFDC0();
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_100012928;
  v10 = v0[17];
  v11 = v0[14];

  return sub_100002010(v10, v11);
}

uint64_t sub_100012928(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 112);
  v7 = *(*v1 + 104);
  v8 = *(*v1 + 96);
  v10 = *v1;
  *(*v1 + 160) = a1;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_100012AE4, 0, 0);
}

uint64_t sub_100012AE4()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 24);
  v5 = *(**(v0 + 16) + 136);
  (*(v2 + 104))(v1, enum case for PrivateCloudComputeFeatureFlags.featureUsageAnalyzer(_:), v3);
  LOBYTE(v4) = (*(*(v4 + 104) + 8))(v1, *(v4 + 88));
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v6 = *(*(v0 + 160) + 16);
    if (v6)
    {
      v33 = *(v0 + 16);
      v34 = *(v0 + 40);
      v32 = (*(v0 + 56) + 8);
      v7 = *(v0 + 160);
      v31 = sub_1000131D4();
      v8 = (v7 + 64);
      do
      {
        v9 = *(v0 + 40);
        v35 = *(v0 + 64);
        v36 = *(v0 + 48);
        v10 = *(v0 + 32);
        v11 = *(v8 - 4);
        v12 = *(v8 - 3);
        v13 = *(v8 - 2);
        v14 = *(v8 - 1);
        v15 = *v8;
        v8 += 5;
        *(v34 + 24) = &type metadata for FeatureUsageSummaryMetric;
        *(v34 + 32) = v31;
        v16 = swift_allocObject();
        *v9 = v16;
        v16[2] = v11;
        v16[3] = v12;
        v16[4] = v13;
        v16[5] = v14;
        v16[6] = v15;
        swift_storeEnumTagMultiPayload();

        sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
        sub_1001D1BC0();
        (*v32)(v35, v36);
        --v6;
      }

      while (v6);
      v17 = *(v0 + 160);
    }
  }

  else
  {
    v18 = *(v0 + 144);
    v19 = *(v0 + 16);

    v20 = sub_1001D0E50();
    v21 = sub_1001D1E00();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Not running featureUsageAnalyzer activity because the feature flag is disabled", v22, 2u);
    }
  }

  v23 = *(v0 + 136);
  v24 = *(v0 + 112);
  v25 = *(v0 + 88);
  v26 = *(v0 + 64);
  v27 = *(v0 + 40);
  v28 = *(v0 + 16);
  sub_100012DC0();

  v29 = *(v0 + 8);

  return v29();
}

void sub_100012DC0()
{
  oslog = sub_1001D0E50();
  v0 = sub_1001D1E00();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v0, "Finished featureUsageAnalyzer activity", v1, 2u);
  }
}

uint64_t *sub_100012E6C()
{
  v1 = *v0;
  v2 = qword_100227BF0;
  v3 = sub_1001D0E60();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = qword_100227BF8;
  v5 = sub_100011AC0(&qword_100227CA0, &unk_1001D6720);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + qword_100227C00);

  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 136));
  return v0;
}

uint64_t sub_100012F88()
{
  sub_100012E6C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_100012FF8()
{
  if (!qword_100227C88)
  {
    type metadata accessor for ThimbledEvent();
    v0 = sub_1001D1BE0();
    if (!v1)
    {
      atomic_store(v0, &qword_100227C88);
    }
  }
}

uint64_t sub_100013050()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000130E0;

  return sub_1000125A0();
}

uint64_t sub_1000130E0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_1000131D4()
{
  result = qword_100227C98;
  if (!qword_100227C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227C98);
  }

  return result;
}

uint64_t sub_100013228()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100013270(char *a1)
{
  v2 = v1;
  v58 = a1;
  v3 = sub_1001CFA40();
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = *(v53 + 64);
  __chkstk_darwin(v3, v5);
  v52 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001CFB10();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  __chkstk_darwin(v7, v9);
  v55 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001D1E30();
  v50 = *(v11 - 8);
  v51 = v11;
  v12 = *(v50 + 64);
  __chkstk_darwin(v11, v13);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001D1EB0();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16, v18);
  v19 = sub_1001D1410();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8, v21);
  v22 = sub_1001D02F0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22, v25);
  v27 = v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 104))(v27, enum case for TC2LogCategory.metricReporter(_:), v22);
  sub_1001D08B0();
  (*(v23 + 8))(v27, v22);
  v49 = OBJC_IVAR____TtC20privatecloudcomputed31FeatureUsageAnalyzerStoreHelper_queue;
  v28 = sub_100015A10(0, &qword_100227DC0, OS_dispatch_queue_serial_ptr);
  v48[0] = "ngIOWork(onQueue:_:)";
  v48[1] = v28;
  if (qword_100227960 != -1)
  {
    swift_once();
  }

  v29 = blockingIOQueue;
  sub_1001D1400();
  v59[0] = _swiftEmptyArrayStorage;
  sub_100015AAC(&qword_100227DC8, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_100011AC0(&qword_100227DD0, &unk_1001D3AE0);
  sub_100015A58(&qword_100227DD8, &qword_100227DD0, &unk_1001D3AE0);
  sub_1001D1FA0();
  (*(v50 + 104))(v15, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v51);
  *(v1 + v49) = sub_1001D1EC0();
  v59[0] = 0xD000000000000013;
  v59[1] = 0x80000001001E33B0;
  v31 = v52;
  v30 = v53;
  v32 = v54;
  (*(v53 + 104))(v52, enum case for URL.DirectoryHint.inferFromPath(_:), v54);
  sub_100011EAC();
  v33 = v55;
  v34 = v58;
  sub_1001CFB00();
  (*(v30 + 8))(v31, v32);
  v35 = v56;
  v36 = v57;
  (*(v56 + 32))(v1 + OBJC_IVAR____TtC20privatecloudcomputed31FeatureUsageAnalyzerStoreHelper_storeURL, v33, v57);
  v37 = v1 + OBJC_IVAR____TtC20privatecloudcomputed31FeatureUsageAnalyzerStoreHelper_fileHandle;
  *v37 = 0;
  *(v37 + 8) = 0;

  v38 = sub_1001D0E50();
  v39 = sub_1001D1DD0();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v59[0] = v41;
    *v40 = 136315138;
    (*(v35 + 16))(v33, v1 + OBJC_IVAR____TtC20privatecloudcomputed31FeatureUsageAnalyzerStoreHelper_storeURL, v36);
    sub_100015AAC(&qword_1002302F0, &type metadata accessor for URL);
    v42 = sub_1001D23A0();
    v44 = v43;
    v45 = *(v35 + 8);
    v45(v33, v36);
    v46 = sub_1000954E0(v42, v44, v59);

    *(v40 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v38, v39, "initialized featureusageanalyzerstore, file=%s", v40, 0xCu);
    sub_100011CF0(v41);

    v45(v58, v36);
  }

  else
  {

    (*(v35 + 8))(v34, v36);
  }

  return v2;
}

void sub_100013944(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v5 = 0;
    v2 = v1;
    if ([v2 closeAndReturnError:&v5])
    {
      v3 = v5;
    }

    else
    {
      v4 = v5;
      sub_1001CFA20();

      swift_willThrow();
    }
  }
}

uint64_t sub_100013A0C()
{
  v1 = v0 + OBJC_IVAR____TtC20privatecloudcomputed31FeatureUsageAnalyzerStoreHelper_fileHandle;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC20privatecloudcomputed31FeatureUsageAnalyzerStoreHelper_fileHandle));
  sub_100013944((v1 + 8));
  os_unfair_lock_unlock(v1);
  v2 = OBJC_IVAR____TtC20privatecloudcomputed31FeatureUsageAnalyzerStoreHelper_storeURL;
  v3 = sub_1001CFB10();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  sub_1000159A8(v1 + 8);
  v4 = OBJC_IVAR____TtC20privatecloudcomputed31FeatureUsageAnalyzerStoreHelper_logger;
  v5 = sub_1001D0E60();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FeatureUsageAnalyzerStoreHelper()
{
  result = qword_100227CE8;
  if (!qword_100227CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100013B8C()
{
  result = sub_1001CFB10();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1001D0E60();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

char *sub_100013C6C()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100011AC0(&qword_100227D88, &qword_1001D4BC0);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

uint64_t sub_100013C9C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100013CBC, 0, 0);
}

uint64_t sub_100013CBC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v2 + OBJC_IVAR____TtC20privatecloudcomputed31FeatureUsageAnalyzerStoreHelper_queue);
  v4 = swift_allocObject();
  v0[4] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  v5 = swift_task_alloc();
  v0[5] = v5;
  v5[2] = v3;
  v5[3] = sub_100015810;
  v5[4] = v4;
  v6 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_100013E08;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100013E08()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_100013F44;
  }

  else
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);

    v4 = sub_100013F2C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100013F44()
{
  v1 = v0[4];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

void sub_100013FB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC20privatecloudcomputed31FeatureUsageAnalyzerStoreHelper_fileHandle;
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC20privatecloudcomputed31FeatureUsageAnalyzerStoreHelper_fileHandle));
  sub_100014038((v4 + 8), a1, a2, &v5);
  os_unfair_lock_unlock(v4);
}

id sub_100014038(void **a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = v4;
  v10 = sub_1001CFB10();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  if (!*a1)
  {
    v37 = a1;
    v38 = v4;
    *&v39 = a3;
    v36 = a2;
    v34 = a4;
    v35 = OBJC_IVAR____TtC20privatecloudcomputed31FeatureUsageAnalyzerStoreHelper_storeURL;
    sub_1001CFAC0(1);
    v24 = objc_opt_self();
    v25 = [v24 defaultManager];
    v26 = sub_1001D17A0();
    v27 = [v25 fileExistsAtPath:v26];

    if (v27)
    {
    }

    else
    {
      v29 = [v24 defaultManager];
      v30 = sub_1001D17A0();

      [v29 createFileAtPath:v30 contents:0 attributes:0];
    }

    v31 = v38;
    sub_100015A10(0, &qword_100227DA0, NSFileHandle_ptr);
    (*(v11 + 16))(v15, v36 + v35, v10);
    result = sub_1000143C0(v15);
    a3 = v39;
    v32 = v37;
    if (v31)
    {
      *v34 = v31;
      return result;
    }

    v16 = result;
    sub_1001D1DA0();
    v6 = 0;
    *v32 = v16;
  }

  _s27FileHandle_UTF8OutputStreamCMa();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v40 = v17;
  v18 = *(a3 + 16);
  if (v18)
  {
    v38 = v6;
    v37 = v16;
    v19 = (a3 + 40);
    v39 = xmmword_1001D39F0;
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      sub_100011AC0(&qword_100227DA8, &unk_1001D3AD0);
      v22 = swift_allocObject();
      *(v22 + 16) = v39;
      *(v22 + 56) = &type metadata for String;
      *(v22 + 32) = v20;
      *(v22 + 40) = v21;
      sub_100015AAC(&qword_100227DB0, _s27FileHandle_UTF8OutputStreamCMa);

      sub_1001D2560();

      v19 += 2;
      --v18;
    }

    while (v18);
  }

  else
  {
    v28 = v16;
  }
}

id sub_1000143C0(uint64_t a1)
{
  sub_1001CFA80(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = sub_1001CFB10();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    sub_1001CFA20();

    swift_willThrow();
    v10 = sub_1001CFB10();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

uint64_t sub_100014538()
{
  v1 = v0[4];
  v2 = *(v1 + OBJC_IVAR____TtC20privatecloudcomputed31FeatureUsageAnalyzerStoreHelper_queue);

  v3 = swift_task_alloc();
  v0[5] = v3;
  v3[2] = v2;
  v3[3] = sub_100014EA0;
  v3[4] = v1;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_100014658;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000024, 0x80000001001E3340, sub_100015628, v3, &type metadata for Data);
}

uint64_t sub_100014658()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_100013F44;
  }

  else
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);

    v4 = sub_10001477C;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_100014798(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1 + OBJC_IVAR____TtC20privatecloudcomputed31FeatureUsageAnalyzerStoreHelper_fileHandle;
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC20privatecloudcomputed31FeatureUsageAnalyzerStoreHelper_fileHandle));
  sub_100014818((v3 + 8), &v4, a2);
  os_unfair_lock_unlock(v3);
}

void sub_100014818(void **a1@<X0>, uint64_t *a2@<X2>, _OWORD *a3@<X8>)
{
  v41 = a2;
  v4 = v3;
  v47 = a3;
  v6 = sub_1001CFA40();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  __chkstk_darwin(v6, v8);
  v43 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100011AC0(&unk_100230170, &unk_1001E0D90);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v40 - v13;
  v44 = sub_1001CFB10();
  v15 = *(v44 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v44, v17);
  v42 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  if (*a1)
  {
    v48 = 0;
    if ([v19 closeAndReturnError:&v48])
    {
      v20 = v48;
    }

    else
    {
      v21 = v48;
      sub_1001CFA20();

      swift_willThrow();

      v4 = 0;
    }

    *a1 = 0;
  }

  v22 = objc_opt_self();
  v23 = [v22 defaultManager];
  sub_1001CFAC0(1);
  v24 = sub_1001D17A0();

  v25 = [v23 fileExistsAtPath:v24];

  if ((v25 & 1) == 0)
  {
    *v47 = xmmword_1001D3A00;
    return;
  }

  v40 = v22;
  sub_1001CFAC0(1);
  v26 = v44;
  (*(v15 + 56))(v14, 1, 1, v44);
  (*(v45 + 104))(v43, enum case for URL.DirectoryHint.inferFromPath(_:), v46);
  v27 = v42;
  sub_1001CFAF0();
  v28 = sub_1001CFB30();
  if (v4)
  {
    (*(v15 + 8))(v27, v26);
  }

  else
  {
    v30 = v26;
    v31 = v28;
    v46 = v29;
    (*(v15 + 8))(v27, v30);
    v32 = [v40 defaultManager];
    sub_1001CFAC0(1);
    v33 = sub_1001D17A0();

    v48 = 0;
    v34 = [v32 removeItemAtPath:v33 error:&v48];

    v35 = v48;
    if (v34)
    {
      v37 = v46;
      v36 = v47;
      *v47 = v31;
      *(v36 + 1) = v37;
      v38 = v35;
      return;
    }

    v39 = v48;
    v4 = sub_1001CFA20();

    swift_willThrow();
    sub_100011E48(v31, v46);
  }

  *v41 = v4;
}

uint64_t sub_100014C68(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000130E0;

  return sub_100013C9C(a1);
}

uint64_t sub_100014D00()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014D90;

  return sub_100014518();
}

uint64_t sub_100014D90(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_100014EBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100014F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v30 = a2;
  v5 = sub_1001D13E0();
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  __chkstk_darwin(v5, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1001D1410();
  v10 = *(v28 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v28, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v20 = &v26 - v19;
  (*(v16 + 16))(&v26 - v19, a1, v15);
  v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v22 = swift_allocObject();
  v23 = v27;
  *(v22 + 16) = v26;
  *(v22 + 24) = v23;
  (*(v16 + 32))(v22 + v21, v20, v15);
  aBlock[4] = sub_10001590C;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100014EBC;
  aBlock[3] = &unk_10021D470;
  v24 = _Block_copy(aBlock);

  sub_1001D1400();
  v31 = &_swiftEmptyArrayStorage;
  sub_100015AAC(&unk_100230180, &type metadata accessor for DispatchWorkItemFlags);
  sub_100011AC0(&qword_100227D98, &unk_1001D3AB0);
  sub_100015A58(&unk_100230190, &qword_100227D98, &unk_1001D3AB0);
  sub_1001D1FA0();
  sub_1001D1E50();
  _Block_release(v24);
  (*(v29 + 8))(v9, v5);
  (*(v10 + 8))(v14, v28);
}

uint64_t sub_100015294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v30 = a2;
  v5 = sub_1001D13E0();
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  __chkstk_darwin(v5, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1001D1410();
  v10 = *(v28 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v28, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100011AC0(&qword_100227D90, &qword_1001D3AA8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v20 = &v26 - v19;
  (*(v16 + 16))(&v26 - v19, a1, v15);
  v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v22 = swift_allocObject();
  v23 = v27;
  *(v22 + 16) = v26;
  *(v22 + 24) = v23;
  (*(v16 + 32))(v22 + v21, v20, v15);
  aBlock[4] = sub_100015790;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100014EBC;
  aBlock[3] = &unk_10021D3F8;
  v24 = _Block_copy(aBlock);

  sub_1001D1400();
  v31 = &_swiftEmptyArrayStorage;
  sub_100015AAC(&unk_100230180, &type metadata accessor for DispatchWorkItemFlags);
  sub_100011AC0(&qword_100227D98, &unk_1001D3AB0);
  sub_100015A58(&unk_100230190, &qword_100227D98, &unk_1001D3AB0);
  sub_1001D1FA0();
  sub_1001D1E50();
  _Block_release(v24);
  (*(v29 + 8))(v9, v5);
  (*(v10 + 8))(v14, v28);
}

uint64_t sub_100015634(void (*a1)(void))
{
  a1();
  sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
  return sub_1001D1AA0();
}

uint64_t sub_1000156C4(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v4);
  v1 = v4;
  v2 = v5;
  sub_100012038(v4, v5);
  sub_100011AC0(&qword_100227D90, &qword_1001D3AA8);
  sub_1001D1AA0();
  return sub_100011E48(v1, v2);
}

uint64_t sub_1000157B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000157D0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001584C(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100011AC0(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v2 + 24);

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_100015934(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_100011AC0(a1, a2) - 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a3(v5, v6, v7);
}

uint64_t sub_1000159A8(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_100227DB8, &qword_1001D4C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015A10(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100015A58(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100011DF4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100015AAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100015B14()
{
  *v0;
  sub_1001D1880();
}

uint64_t sub_100015C40@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001B824(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100015C70(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE900000000000065;
    v9 = 0xE300000000000000;
    v10 = 7761509;
    if (v2 != 1)
    {
      v10 = 0x696C43656C707061;
      v9 = 0xEF6F666E49746E65;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0x6D6954746E657665;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x80000001001E2350;
    v4 = 0xD000000000000019;
    if (v2 == 5)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v3 = 0x80000001001E2370;
    }

    v5 = 0xEB00000000656C61;
    v6 = 0xD000000000000017;
    if (v2 == 3)
    {
      v6 = 0x636F4C656C707061;
    }

    else
    {
      v5 = 0x80000001001E2330;
    }

    if (*v1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_100015D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v75 = a7;
  v74 = a6;
  v79 = a4;
  v18 = sub_100011AC0(&qword_100227DE0, &qword_1001D3B00);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8, v20);
  v66 = (&v64 - v21);
  sub_100011AC0(&qword_100227DE8, &qword_1001D3B08);
  v22 = sub_100011AC0(&qword_100227DF0, &unk_1001D3B10);
  v23 = (*(*(v22 - 8) + 80) + 32) & ~*(*(v22 - 8) + 80);
  v78 = *(*(v22 - 8) + 72);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1001D3AF0;
  v25 = v24 + v23;
  v77 = v22;
  v26 = *(v22 + 48);
  *(v24 + v23) = 0;
  result = sub_1001CFD20();
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v71 = v24;
  v72 = a1;
  v65 = a8;
  v73 = a9;
  v67 = a12;
  v76 = a11;
  v70 = a10;
  *(v25 + v26) = v28;
  v29 = enum case for EventValue.int(_:);
  v30 = sub_1001CFEE0();
  v64 = *(v30 - 8);
  v31 = a5;
  v32 = *(v64 + 104);
  v68 = v29;
  (v32)(v25 + v26, v29, v30);
  v33 = a3;
  v34 = v77;
  v35 = v78;
  v36 = (v25 + v78 + *(v77 + 48));
  *(v25 + v78) = 1;
  *v36 = a2;
  v36[1] = v33;
  v37 = enum case for EventValue.string(_:);
  v32();
  v69 = v31;
  v38 = (v25 + 2 * v35);
  v39 = &v38[*(v34 + 48)];
  *v38 = 2;
  *v39 = (*(v67 + 96))(v76);
  v39[1] = v40;
  v41 = v39;
  v42 = v37;
  v43 = v32;
  (v32)(v41, v42, v30);
  v44 = v69;
  v45 = (v25 + 3 * v35);
  v46 = &v45[*(v34 + 48)];
  *v45 = 3;
  *v46 = sub_1001CFDB0();
  v46[1] = v47;
  (v32)(v46, v42, v30);
  v48 = (v25 + 4 * v35);
  *v48 = 5;
  if (v74)
  {
    v49 = 0xE700000000000000;
    if (v74 == 1)
    {
      v50 = 0x6D726177657270;
    }

    else
    {
      v50 = 0x74736575716572;
    }
  }

  else
  {
    v49 = 0xE800000000000000;
    v50 = 0x6863746566657270;
  }

  v51 = v77;
  v52 = &v48[*(v77 + 48)];
  *v52 = v50;
  v52[1] = v49;
  v43();
  v53 = (v25 + 5 * v78);
  v54 = *(v51 + 48);
  *v53 = 6;
  sub_10001B870(v75);
  *&v53[v54] = v55;
  (v43)(&v53[v54], v68, v30);
  v56 = sub_1000D4FC0(v71);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v80 = v56;
  v57 = v70;
  if (v70)
  {
    v58 = v66;
    *v66 = v65;
    *(v58 + 8) = v57;
    (v43)(v58, v42, v30);
    (*(v64 + 56))(v58, 0, 1, v30);
    sub_100016378(v58, 4);
    v59 = sub_1001CFDD0();
    (*(*(v59 - 8) + 8))(v44, v59);
    (*(*(v76 - 8) + 8))(v79);
    v60 = sub_1001CFD60();
    result = (*(*(v60 - 8) + 8))(v72, v60);
    v56 = v80;
  }

  else
  {
    v61 = sub_1001CFDD0();
    (*(*(v61 - 8) + 8))(v44, v61);
    (*(*(v76 - 8) + 8))(v79);
    v62 = sub_1001CFD60();
    result = (*(*(v62 - 8) + 8))(v72, v62);
  }

  v63 = v73;
  *v73 = 0xD000000000000015;
  v63[1] = 0x80000001001E33D0;
  v63[3] = 0;
  v63[4] = 0;
  v63[2] = v56;
  return result;
}

uint64_t sub_100016378(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100011AC0(&qword_100227DE0, &qword_1001D3B00);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v27 - v9;
  v11 = sub_1001CFEE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_100011F00(a1, &qword_100227DE0, &qword_1001D3B00);
    v17 = *v3;
    v18 = sub_1000060E4(a2);
    if (v19)
    {
      v20 = v18;
      v21 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v3;
      v28 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10000F618();
        v23 = v28;
      }

      (*(v12 + 32))(v10, *(v23 + 56) + *(v12 + 72) * v20, v11);
      sub_10001831C(v20, v23);
      *v3 = v23;
      (*(v12 + 56))(v10, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);
    }

    return sub_100011F00(v10, &qword_100227DE0, &qword_1001D3B00);
  }

  else
  {
    (*(v12 + 32))(v16, a1, v11);
    v24 = *v3;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v3;
    result = sub_10001A74C(v16, a2, v25, sub_1000060E4, sub_10000F618, sub_100009E58);
    *v3 = v28;
  }

  return result;
}

uint64_t sub_10001660C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100011AC0(&qword_100227DE0, &qword_1001D3B00);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v27 - v9;
  v11 = sub_1001CFEE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_100011F00(a1, &qword_100227DE0, &qword_1001D3B00);
    v17 = *v3;
    v18 = sub_100006128(a2);
    if (v19)
    {
      v20 = v18;
      v21 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v3;
      v28 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10000F62C();
        v23 = v28;
      }

      (*(v12 + 32))(v10, *(v23 + 56) + *(v12 + 72) * v20, v11);
      sub_1000185F8(v20, v23);
      *v3 = v23;
      (*(v12 + 56))(v10, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);
    }

    return sub_100011F00(v10, &qword_100227DE0, &qword_1001D3B00);
  }

  else
  {
    (*(v12 + 32))(v16, a1, v11);
    v24 = *v3;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v3;
    result = sub_10001A74C(v16, a2, v25, sub_100006128, sub_10000F62C, sub_10000A2D4);
    *v3 = v28;
  }

  return result;
}

uint64_t sub_1000168A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100011AC0(&qword_100227DE0, &qword_1001D3B00);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v27 - v9;
  v11 = sub_1001CFEE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_100011F00(a1, &qword_100227DE0, &qword_1001D3B00);
    v17 = *v3;
    v18 = sub_100006154(a2);
    if (v19)
    {
      v20 = v18;
      v21 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v3;
      v28 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10000F640();
        v23 = v28;
      }

      (*(v12 + 32))(v10, *(v23 + 56) + *(v12 + 72) * v20, v11);
      sub_1000189A4(v20, v23);
      *v3 = v23;
      (*(v12 + 56))(v10, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);
    }

    return sub_100011F00(v10, &qword_100227DE0, &qword_1001D3B00);
  }

  else
  {
    (*(v12 + 32))(v16, a1, v11);
    v24 = *v3;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v3;
    result = sub_10001A74C(v16, a2, v25, sub_100006154, sub_10000F640, sub_10000A820);
    *v3 = v28;
  }

  return result;
}

uint64_t sub_100016B34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100011AC0(&qword_100227DE0, &qword_1001D3B00);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v27 - v9;
  v11 = sub_1001CFEE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_100011F00(a1, &qword_100227DE0, &qword_1001D3B00);
    v17 = *v3;
    v18 = sub_1000062EC(a2);
    if (v19)
    {
      v20 = v18;
      v21 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v3;
      v28 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10000F654();
        v23 = v28;
      }

      (*(v12 + 32))(v10, *(v23 + 56) + *(v12 + 72) * v20, v11);
      sub_100018D78(v20, v23);
      *v3 = v23;
      (*(v12 + 56))(v10, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);
    }

    return sub_100011F00(v10, &qword_100227DE0, &qword_1001D3B00);
  }

  else
  {
    (*(v12 + 32))(v16, a1, v11);
    v24 = *v3;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v3;
    result = sub_10001A74C(v16, a2, v25, sub_1000062EC, sub_10000F654, sub_10000AD98);
    *v3 = v28;
  }

  return result;
}

uint64_t sub_100016DC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100011AC0(&qword_100227DE0, &qword_1001D3B00);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v27 - v9;
  v11 = sub_1001CFEE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_100011F00(a1, &qword_100227DE0, &qword_1001D3B00);
    v17 = *v3;
    v18 = sub_100006358(a2);
    if (v19)
    {
      v20 = v18;
      v21 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v3;
      v28 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10000F668();
        v23 = v28;
      }

      (*(v12 + 32))(v10, *(v23 + 56) + *(v12 + 72) * v20, v11);
      sub_1000190B0(v20, v23);
      *v3 = v23;
      (*(v12 + 56))(v10, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);
    }

    return sub_100011F00(v10, &qword_100227DE0, &qword_1001D3B00);
  }

  else
  {
    (*(v12 + 32))(v16, a1, v11);
    v24 = *v3;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v3;
    result = sub_10001A74C(v16, a2, v25, sub_100006358, sub_10000F668, sub_10000B268);
    *v3 = v28;
  }

  return result;
}

uint64_t sub_10001705C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100011AC0(&qword_100227DE0, &qword_1001D3B00);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v27 - v9;
  v11 = sub_1001CFEE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_100011F00(a1, &qword_100227DE0, &qword_1001D3B00);
    v17 = *v3;
    v18 = sub_100006384(a2);
    if (v19)
    {
      v20 = v18;
      v21 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v3;
      v28 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10000F67C();
        v23 = v28;
      }

      (*(v12 + 32))(v10, *(v23 + 56) + *(v12 + 72) * v20, v11);
      sub_100019408(v20, v23);
      *v3 = v23;
      (*(v12 + 56))(v10, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);
    }

    return sub_100011F00(v10, &qword_100227DE0, &qword_1001D3B00);
  }

  else
  {
    (*(v12 + 32))(v16, a1, v11);
    v24 = *v3;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v3;
    result = sub_10001A74C(v16, a2, v25, sub_100006384, sub_10000F67C, sub_10000B754);
    *v3 = v28;
  }

  return result;
}

uint64_t sub_1000172F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100011AC0(&qword_100227DE0, &qword_1001D3B00);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v27 - v9;
  v11 = sub_1001CFEE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_100011F00(a1, &qword_100227DE0, &qword_1001D3B00);
    v17 = *v3;
    v18 = sub_1000063B0(a2);
    if (v19)
    {
      v20 = v18;
      v21 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v3;
      v28 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10000F690();
        v23 = v28;
      }

      (*(v12 + 32))(v10, *(v23 + 56) + *(v12 + 72) * v20, v11);
      sub_100019768(v20, v23);
      *v3 = v23;
      (*(v12 + 56))(v10, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);
    }

    return sub_100011F00(v10, &qword_100227DE0, &qword_1001D3B00);
  }

  else
  {
    (*(v12 + 32))(v16, a1, v11);
    v24 = *v3;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v3;
    result = sub_10001A74C(v16, a2, v25, sub_1000063B0, sub_10000F690, sub_10000BC54);
    *v3 = v28;
  }

  return result;
}

uint64_t sub_100017584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100011AC0(&qword_100227E00, &unk_1001D3B20);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for ValidatedAttestation();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12, v14);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v17 + 48))(a1, 1) == 1)
  {
    sub_100011F00(a1, &qword_100227E00, &unk_1001D3B20);
    sub_1000E48C4(a2, a3, v11);

    return sub_100011F00(v11, &qword_100227E00, &unk_1001D3B20);
  }

  else
  {
    sub_10001215C(a1, v16, type metadata accessor for ValidatedAttestation);
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_10001A8DC(v16, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v22;
  }

  return result;
}

uint64_t sub_100017758(uint64_t a1, void *a2)
{
  v5 = sub_100011AC0(&qword_100227DF8, &qword_1001DD020);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for RateLimitTimingDetails(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_100011F00(a1, &qword_100227DF8, &qword_1001DD020);
    sub_1000E4A30(a2, v9);
    sub_10001B958(a2);
    return sub_100011F00(v9, &qword_100227DF8, &qword_1001DD020);
  }

  else
  {
    sub_10001215C(a1, v14, type metadata accessor for RateLimitTimingDetails);
    v17 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_10001AA48(v14, a2, isUniquelyReferenced_nonNull_native);
    result = sub_10001B958(a2);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_100017918(uint64_t a1, uint64_t *a2)
{
  v5 = sub_100011AC0(&qword_100227E08, &unk_1001D3B30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v19 - v8;
  v10 = sub_1001D0260();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_100011F00(a1, &qword_100227E08, &unk_1001D3B30);
    sub_1000E4BC8(a2, v9);
    sub_10001BB30(a2);
    return sub_100011F00(v9, &qword_100227E08, &unk_1001D3B30);
  }

  else
  {
    (*(v11 + 32))(v15, a1, v10);
    v17 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_10001AB90(v15, a2, isUniquelyReferenced_nonNull_native);
    result = sub_10001BB30(a2);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_100017AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100011AC0(&qword_100227A38, &unk_1001D35F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v21 - v10;
  v12 = sub_1001CFD60();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1, v12) == 1)
  {
    sub_100011F00(a1, &qword_100227A38, &unk_1001D35F0);
    sub_1000E4D64(a2, a3, v11);

    return sub_100011F00(v11, &qword_100227A38, &unk_1001D35F0);
  }

  else
  {
    (*(v13 + 32))(v17, a1, v12);
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_10001AD04(v17, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v22;
  }

  return result;
}

uint64_t Proto_Ropes_HttpService_InvokeRequest.SetupRequest.AttestationMapping.nodeIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_100017CEC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_100017D24(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = sub_1001CFEE0();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_100017DD0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for ValidatedAttestation();
  result = sub_10001215C(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for ValidatedAttestation);
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

uint64_t sub_100017E7C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6] + 56 * a1;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  v9 = a4[7];
  v10 = type metadata accessor for RateLimitTimingDetails(0);
  result = sub_10001215C(a3, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for RateLimitTimingDetails);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_100017F40(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6] + 56 * a1;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  v9 = a4[7];
  v10 = sub_1001D0260();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a3, v10);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_100018008(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1001CFDA0();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for SessionLog.Element();
  result = sub_10001215C(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for SessionLog.Element);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_1000180F8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1001CFD60();
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

uint64_t sub_1000181A8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
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

uint64_t sub_100018264(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1001CFDA0();
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

unint64_t sub_10001831C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1001D1FC0() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_1001D2580();
      sub_1001D1880();

      result = sub_1001D25C0();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_1001CFEE0() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1000185F8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1001D1FC0() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_1001D2580();
      sub_1001D1880();

      result = sub_1001D25C0();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_1001CFEE0() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1000189A4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1001D1FC0() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_1001D2580();
      sub_1001D1880();

      result = sub_1001D25C0();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_1001CFEE0() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
    JUMPOUT(0x100018D44);
  }

  *(a2 + 16) = v23;
  ++*(a2 + 36);
  return result;
}

unint64_t sub_100018D78(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1001D1FC0() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_1001D2580();
      sub_1001D1880();

      result = sub_1001D25C0();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_1001CFEE0() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1000190B0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1001D1FC0() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_1001D2580();
      sub_1001D1880();

      result = sub_1001D25C0();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_1001CFEE0() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100019408(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1001D1FC0() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_1001D2580();
      sub_1001D1880();

      result = sub_1001D25C0();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_1001CFEE0() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100019768(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1001D1FC0() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_1001D2580();
      sub_10001F72C(v10);
      sub_1001D1880();

      result = sub_1001D25C0();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_1001CFEE0() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100019964(unint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v38 = a2 + 64;
    v36 = (sub_1001D1FC0() + 1) & ~v5;
    v37 = v7;
    do
    {
      v40 = v3;
      v8 = *(v2 + 40);
      v9 = (*(v2 + 48) + 56 * v6);
      v11 = *v9;
      v10 = v9[1];
      v12 = v9[2];
      v13 = v9[3];
      v15 = v9[4];
      v14 = v9[5];
      v16 = v9[6];
      sub_1001D2580();
      if (v10)
      {
        sub_1001D25A0(1u);

        sub_1001D1880();
        if (v13)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_1001D25A0(0);

        if (v13)
        {
LABEL_8:
          sub_1001D25A0(1u);
          sub_1001D1880();
          goto LABEL_11;
        }
      }

      sub_1001D25A0(0);
LABEL_11:
      if (v14)
      {
        sub_1001D25A0(1u);
        sub_1001D1880();
      }

      else
      {
        sub_1001D25A0(0);
      }

      sub_1001D2590(*(v16 + 16));
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = (v16 + 56);
        do
        {
          v19 = *(v18 - 3);
          v20 = *(v18 - 2);
          v21 = *(v18 - 1);
          v22 = *v18;

          sub_1001D1880();

          sub_1001D1880();
          swift_bridgeObjectRelease_n();

          v18 += 4;
          --v17;
        }

        while (v17);
      }

      v23 = sub_1001D25C0();

      v24 = v23 & v37;
      v3 = v40;
      if (v40 >= v36)
      {
        v4 = v38;
        v2 = a2;
        if (v24 < v36)
        {
          goto LABEL_5;
        }

LABEL_21:
        if (v40 < v24)
        {
          goto LABEL_5;
        }

        goto LABEL_22;
      }

      v4 = v38;
      v2 = a2;
      if (v24 < v36)
      {
        goto LABEL_21;
      }

LABEL_22:
      v25 = *(v2 + 48);
      v26 = v25 + 56 * v40;
      v27 = (v25 + 56 * v6);
      if (v40 != v6 || v26 >= v27 + 56)
      {
        v28 = *v27;
        v29 = v27[1];
        v30 = v27[2];
        *(v26 + 48) = *(v27 + 6);
        *(v26 + 16) = v29;
        *(v26 + 32) = v30;
        *v26 = v28;
      }

      v31 = *(v2 + 56);
      v32 = *(*(type metadata accessor for RateLimitTimingDetails(0) - 8) + 72);
      result = v31 + v32 * v40;
      if (v32 * v40 < (v32 * v6) || result >= v31 + v32 * v6 + v32)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v32 * v40 == v32 * v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v37;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v33 = *(v2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v35;
    ++*(v2 + 36);
  }

  return result;
}

unint64_t sub_100019CD4(unint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v51 = a2 + 64;
    v49 = (sub_1001D1FC0() + 1) & ~v5;
    v50 = v7;
LABEL_6:
    v53 = v3;
    v54 = v6;
    v8 = *(v2 + 40);
    v9 = (*(v2 + 48) + 56 * v6);
    v11 = *v9;
    v10 = v9[1];
    v13 = v9[2];
    v12 = v9[3];
    v14 = v9[4];
    v15 = v9[5];
    v16 = v9[6];
    sub_1001D2580();

    sub_1001D1880();
    sub_1001D1880();
    sub_1001D1880();
    v17 = 1 << *(v16 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v16 + 64);
    v20 = (v17 + 63) >> 6;

    v21 = 0;
    for (i = 0; v19; v21 ^= result)
    {
      v23 = i;
LABEL_15:
      v24 = *(v16 + 48);
      v25 = (v23 << 10) | (16 * __clz(__rbit64(v19)));
      v26 = *(v24 + v25);
      v27 = *(v24 + v25 + 8);
      v19 &= v19 - 1;
      v28 = (*(v16 + 56) + v25);
      v30 = *v28;
      v29 = v28[1];

      sub_1001D1880();

      sub_1001D1880();

      result = sub_1001D25C0();
    }

    while (1)
    {
      v23 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v23 >= v20)
      {

        sub_1001D2590(v21);
        v31 = sub_1001D25C0();

        v32 = v31 & v50;
        v3 = v53;
        if (v53 >= v49)
        {
          v4 = v51;
          v2 = a2;
          v33 = v54;
          if (v32 >= v49)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v4 = v51;
          v2 = a2;
          v33 = v54;
          if (v32 >= v49)
          {
            goto LABEL_22;
          }

LABEL_21:
          if (v53 >= v32)
          {
LABEL_22:
            v34 = *(v2 + 48);
            v35 = v34 + 56 * v53;
            v36 = (v34 + 56 * v33);
            if (v53 != v33 || v35 >= v36 + 56)
            {
              v37 = *v36;
              v38 = v36[1];
              v39 = v36[2];
              *(v35 + 48) = *(v36 + 6);
              *(v35 + 16) = v38;
              *(v35 + 32) = v39;
              *v35 = v37;
            }

            v40 = *(v2 + 56);
            v41 = *(*(sub_1001D0260() - 8) + 72);
            v42 = v41 * v53;
            result = v40 + v41 * v53;
            v43 = v41 * v33;
            v44 = v40 + v41 * v33 + v41;
            if (v42 < v43 || result >= v44)
            {
              result = swift_arrayInitWithTakeFrontToBack();
              goto LABEL_4;
            }

            v3 = v33;
            if (v42 != v43)
            {
              result = swift_arrayInitWithTakeBackToFront();
LABEL_4:
              v3 = v33;
            }
          }
        }

        v6 = (v33 + 1) & v50;
        if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_6;
      }

      v19 = *(v16 + 64 + 8 * v23);
      ++i;
      if (v19)
      {
        i = v23;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_31:
    *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
    v46 = *(v2 + 16);
    v47 = __OFSUB__(v46, 1);
    v48 = v46 - 1;
    if (!v47)
    {
      *(v2 + 16) = v48;
      ++*(v2 + 36);
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10001A09C(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_1001D1FC0() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      sub_1001D2580();

      sub_1001D1880();
      v15 = sub_1001D25C0();

      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10001A290(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1001D1FC0() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1001D2580();

      sub_1001D1880();
      v13 = sub_1001D25C0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_100011AC0(&qword_100227B38, &qword_1001D36D0) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10001A494(int64_t a1, uint64_t a2)
{
  v4 = sub_1001CFDA0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4, v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = sub_1001D1FC0();
    v16 = v14;
    v40 = (v15 + 1) & v14;
    v18 = *(v5 + 16);
    v17 = v5 + 16;
    v41 = *(v17 + 56);
    v38 = (v17 - 8);
    v39 = v18;
    do
    {
      v19 = v11;
      v20 = v41 * v13;
      v21 = v16;
      v22 = v17;
      v39(v10, *(a2 + 48) + v41 * v13, v4);
      v23 = *(a2 + 40);
      sub_10001BA70();
      v24 = sub_1001D1730();
      result = (*v38)(v10, v4);
      v16 = v21;
      v25 = v24 & v21;
      if (a1 >= v40)
      {
        if (v25 >= v40 && a1 >= v25)
        {
LABEL_15:
          v28 = *(a2 + 48);
          result = v28 + v41 * a1;
          v29 = v28 + v20 + v41;
          v30 = v41 * a1 < v20 || result >= v29;
          v17 = v22;
          if (v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v16 = v21;
            v11 = v19;
          }

          else
          {
            v31 = v41 * a1 == v20;
            v11 = v19;
            if (!v31)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v21;
            }
          }

          v32 = *(a2 + 56);
          v33 = (v32 + 8 * a1);
          v34 = (v32 + 8 * v13);
          if (a1 != v13 || v33 >= v34 + 1)
          {
            *v33 = *v34;
            a1 = v13;
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v40 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v17 = v22;
      v11 = v19;
LABEL_4:
      v13 = (v13 + 1) & v16;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10001A74C(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), void (*a5)(void), void (*a6)(void))
{
  v10 = v6;
  v14 = *v6;
  v16 = a4(a2);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      a5();
      goto LABEL_7;
    }

    a6();
    v30 = *v10;
    v31 = a4(a2);
    if ((v20 & 1) == (v32 & 1))
    {
      v16 = v31;
      v22 = *v10;
      if (v20)
      {
        goto LABEL_8;
      }

      return sub_100017D24(v16, a2, a1, v22);
    }

LABEL_15:
    result = sub_1001D24F0();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v10;
  if ((v20 & 1) == 0)
  {
    return sub_100017D24(v16, a2, a1, v22);
  }

LABEL_8:
  v23 = v22[7];
  v24 = sub_1001CFEE0();
  v25 = *(v24 - 8);
  v26 = *(v25 + 40);
  v27 = v24;
  v28 = v23 + *(v25 + 72) * v16;

  return v26(v28, a1, v27);
}

uint64_t sub_10001A8DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100006028(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for ValidatedAttestation();
      return sub_10001BA08(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for ValidatedAttestation);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_10000F934();
    goto LABEL_7;
  }

  sub_10000C004(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_100006028(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_1001D24F0();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_100017DD0(v12, a2, a3, a1, v18);
}

uint64_t sub_10001AA48(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100006478(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for RateLimitTimingDetails(0);
      return sub_10001BA08(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for RateLimitTimingDetails);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_10000FD18();
    goto LABEL_7;
  }

  sub_10000C638(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_100006478(a2);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_1001D24F0();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_100017E7C(v10, a2, a1, v16);
  return sub_10001B9AC(a2, v23);
}

uint64_t sub_10001AB90(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1000064E4(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10000FFC0();
      goto LABEL_7;
    }

    sub_10000CB50(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_1000064E4(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100017F40(v10, a2, a1, v16);
      return sub_10001BB84(a2, v27);
    }

LABEL_15:
    result = sub_1001D24F0();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = v16[7];
  v18 = sub_1001D0260();
  v19 = *(v18 - 8);
  v20 = *(v19 + 40);
  v21 = v18;
  v22 = v17 + *(v19 + 72) * v10;

  return v20(v22, a1, v21);
}

uint64_t sub_10001AD04(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100006028(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_100010764();
      goto LABEL_7;
    }

    sub_10000DAA4(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_100006028(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1001D24F0();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1001CFD60();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1000180F8(v12, a2, a3, a1, v18);
}

uint64_t sub_10001AE84(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100006028(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_100010A14();
      goto LABEL_7;
    }

    sub_10000DE50(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_100006028(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1001D24F0();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_100011AC0(&qword_100227B38, &qword_1001D36D0);
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1000181A8(v12, a2, a3, a1, v18);
}

uint64_t sub_10001B010(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5)
{
  v6 = v5;
  v8 = a4;
  v12 = *v5;
  v13 = sub_100006708(a2, a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_10000E708(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_100006708(a2, a3, v8 & 1);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_1001D24F0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_100010F70();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = v24[7];
    v26 = *(v25 + 8 * v13);
    *(v25 + 8 * v13) = a1;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = v24[6] + 24 * v13;
  *v28 = a2;
  *(v28 + 8) = a3;
  *(v28 + 16) = v8 & 1;
  *(v24[7] + 8 * v13) = a1;
  v29 = v24[2];
  v17 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v30;
}

uint64_t sub_10001B1A4(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100006028(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10000EDB0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100006028(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_1001D24F0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10001136C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    return sub_10001BAC8(a1, v22[7] + (v11 << 7), &qword_100230150, &unk_1001D3700);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v22[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v22[7] + (v11 << 7));
  v26 = *a1;
  v27 = a1[1];
  v28 = a1[3];
  v25[2] = a1[2];
  v25[3] = v28;
  *v25 = v26;
  v25[1] = v27;
  v29 = a1[4];
  v30 = a1[5];
  v31 = a1[6];
  *(v25 + 105) = *(a1 + 105);
  v25[5] = v30;
  v25[6] = v31;
  v25[4] = v29;
  v32 = v22[2];
  v15 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v33;
}

uint64_t sub_10001B348(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100006028(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10000F15C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100006028(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_1001D24F0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100011560();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    return sub_10001BAC8(a1, v22[7] + 72 * v11, &qword_100230140, &qword_1001D36F0);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v22[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v22[7] + 72 * v11;
  *v25 = *a1;
  v26 = *(a1 + 16);
  v27 = *(a1 + 32);
  v28 = *(a1 + 48);
  *(v25 + 64) = *(a1 + 64);
  *(v25 + 32) = v27;
  *(v25 + 48) = v28;
  *(v25 + 16) = v26;
  v29 = v22[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v30;
}

uint64_t sub_10001B4EC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1001CFDA0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_100006598(a2);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_1000110EC();
      goto LABEL_7;
    }

    sub_10000E9D4(v19, a3 & 1);
    v26 = *v4;
    v27 = sub_100006598(a2);
    if ((v20 & 1) == (v28 & 1))
    {
      v16 = v27;
      v22 = *v4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v13, a2, v8);
      return sub_100018264(v16, v13, a1, v22);
    }

LABEL_15:
    result = sub_1001D24F0();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v4;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v22[7];
  v24 = *(v23 + 8 * v16);
  *(v23 + 8 * v16) = a1;
}

void sub_10001B6B8(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  for (i = 0; v6; v8 ^= sub_1001D25C0())
  {
    v10 = i;
LABEL_9:
    v11 = *(a2 + 48);
    v12 = (v10 << 10) | (16 * __clz(__rbit64(v6)));
    v13 = *(v11 + v12);
    v14 = *(v11 + v12 + 8);
    v6 &= v6 - 1;
    v15 = (*(a2 + 56) + v12);
    v16 = *v15;
    v17 = v15[1];
    v21 = a1[2];
    v22 = a1[3];
    v23 = *(a1 + 8);
    v19 = *a1;
    v20 = a1[1];

    sub_1001D1880();

    sub_1001D1880();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      sub_1001D2590(v8);
      return;
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10001B824(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10021B968;
  v6._object = a2;
  v4 = sub_1001D21E0(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

void sub_10001B870(uint64_t a1)
{
  if (a1)
  {
    v2 = a1;
    if (a1 < 0)
    {
      v2 = -a1;
      if (__OFSUB__(0, a1))
      {
        goto LABEL_17;
      }
    }

    v3 = log10(v2);
    if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v3 > -9.22337204e18)
    {
      if (v3 < 9.22337204e18)
      {
        v4 = __exp10(v3);
        v5 = v4 * round(a1 / v4);
        if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v5 > -9.22337204e18)
          {
            if (v5 < 9.22337204e18)
            {
              return;
            }

            goto LABEL_16;
          }

LABEL_15:
          __break(1u);
LABEL_16:
          __break(1u);
LABEL_17:
          __break(1u);
          return;
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_13;
  }
}

uint64_t sub_10001BA08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_10001BA70()
{
  result = qword_100227AD8;
  if (!qword_100227AD8)
  {
    sub_1001CFDA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227AD8);
  }

  return result;
}

uint64_t sub_10001BAC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100011AC0(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for AttestationDistributionMetric.EventName(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AttestationDistributionMetric.EventName(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_10001BD50(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001BD64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10001BDAC(uint64_t result, int a2, int a3)
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

unint64_t sub_10001BE08()
{
  result = qword_100227E10;
  if (!qword_100227E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227E10);
  }

  return result;
}

unint64_t sub_10001BE60()
{
  result = qword_100227E18;
  if (!qword_100227E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227E18);
  }

  return result;
}

unint64_t sub_10001BEB8()
{
  result = qword_100227E20;
  if (!qword_100227E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227E20);
  }

  return result;
}

unint64_t sub_10001BF0C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD00000000000001DLL;
    v7 = 0x5064657473757274;
    if (a1 == 10)
    {
      v7 = 0xD00000000000001DLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD00000000000001CLL;
    if (a1 == 7)
    {
      v8 = 0xD000000000000017;
    }

    if (a1 == 6)
    {
      v8 = 0x6572746E65696C63;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6D6974746E657665;
    v2 = 0x616566656C707061;
    v3 = 0x6E7562656C707061;
    if (a1 != 4)
    {
      v3 = 0x636F6C656C707061;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 7761509;
    if (a1 != 1)
    {
      v4 = 0x696C63656C707061;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10001C0CC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10001BF0C(*a1);
  v5 = v4;
  if (v3 == sub_10001BF0C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1001D2470();
  }

  return v8 & 1;
}

Swift::Int sub_10001C154()
{
  v1 = *v0;
  sub_1001D2580();
  sub_10001BF0C(v1);
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_10001C1B8()
{
  sub_10001BF0C(*v0);
  sub_1001D1880();
}

Swift::Int sub_10001C20C()
{
  v1 = *v0;
  sub_1001D2580();
  sub_10001BF0C(v1);
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_10001C26C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001CC58(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_10001C29C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10001BF0C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10001C2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v105 = a8;
  v106 = a7;
  v100 = a5;
  v101 = a6;
  v98 = a3;
  v99 = a4;
  v97 = a9;
  v24 = sub_100011AC0(&qword_100227DE0, &qword_1001D3B00);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8, v26);
  v94 = (&v83 - v27);
  sub_100011AC0(&qword_100227E70, &qword_1001D3C78);
  v28 = sub_100011AC0(&qword_100227E78, &qword_1001D3C80);
  v29 = *(*(v28 - 8) + 72);
  v30 = (*(*(v28 - 8) + 80) + 32) & ~*(*(v28 - 8) + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1001D3C60;
  v92 = v31;
  v32 = v31 + v30;
  v33 = (v31 + v30 + *(v28 + 48));
  *(v31 + v30) = 6;
  v95 = a2;
  *v33 = sub_1001CFD70();
  v33[1] = v34;
  v35 = enum case for EventValue.string(_:);
  v36 = sub_1001CFEE0();
  v93 = *(v36 - 8);
  v104 = *(v93 + 104);
  (v104)(v33, v35, v36);
  v37 = v32 + v29;
  v38 = *(v28 + 48);
  *(v32 + v29) = 0;
  v96 = a1;
  result = sub_1001CFD20();
  if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v40 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v40 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v90 = a22;
  v85 = a21;
  v91 = a15;
  v102 = a13;
  v103 = a20;
  v88 = a12;
  v89 = a14;
  v87 = a11;
  v86 = a10;
  *(v37 + v38) = v40;
  v41 = v37 + v38;
  v84 = enum case for EventValue.int(_:);
  v42 = v104;
  (v104)(v41);
  v43 = (v32 + 2 * v29);
  v44 = *(v28 + 48);
  *v43 = 1;
  v45 = &v43[v44];
  v46 = v101;
  *v45 = v100;
  v45[1] = v46;
  v42();
  v47 = (v32 + 3 * v29);
  v48 = &v47[*(v28 + 48)];
  *v47 = 2;
  v49 = *(v85 + 96);
  v101 = a19;
  *v48 = v49(a19);
  v48[1] = v50;
  (v42)(v48, v35, v36);
  v51 = (v32 + 4 * v29);
  v52 = &v51[*(v28 + 48)];
  *v51 = 5;
  *v52 = sub_1001CFDB0();
  v52[1] = v53;
  (v42)(v52, v35, v36);
  v54 = (v32 + 5 * v29);
  v55 = *(v28 + 48);
  *v54 = 7;
  v54[v55] = v86 & 1;
  v86 = enum case for EventValue.BOOL(_:);
  (v42)(&v54[v55]);
  v56 = (v32 + 6 * v29);
  v57 = *(v28 + 48);
  *v56 = 9;
  v58 = &v56[v57];
  v59 = v88;
  *v58 = v87;
  v58[1] = v59;
  LODWORD(v100) = v35;
  v42();
  v60 = (v32 + 7 * v29);
  v61 = *(v28 + 48);
  *v60 = 8;
  Error.telemetryString.getter(v103, v90, &v60[v61]);
  v62 = (v32 + 8 * v29);
  v63 = *(v28 + 48);
  *v62 = 10;
  result = sub_1001D2600();
  v64 = 1000 * result;
  if ((result * 1000) >> 64 != (1000 * result) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = sub_1001D2600();
  if (__OFADD__(v64, v65 / 1000000000000000))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *&v62[v63] = v64 + v65 / 1000000000000000;
  v66 = &v62[v63];
  v67 = v104;
  (v104)(v66, v84, v36);
  v68 = 9 * v29;
  v69 = v67;
  v70 = (v32 + v68);
  v71 = *(v28 + 48);
  *v70 = 11;
  v70[v71] = a18 & 1;
  (v67)(&v70[v71], v86, v36);
  v72 = sub_1000D51A8(v92);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v107 = v72;
  v74 = v98;
  v73 = v99;
  v76 = v93;
  v75 = v94;
  v77 = v100;
  if (v99)
  {
    *v94 = v98;
    v75[1] = v73;
    (v69)(v75, v77, v36);
    (*(v76 + 56))(v75, 0, 1, v36);

    sub_10001660C(v75, 4);
  }

  if (a17)
  {
    *v75 = a16;
    v75[1] = a17;
    (v69)(v75, v77, v36);
    (*(v76 + 56))(v75, 0, 1, v36);
    sub_10001660C(v75, 3);
  }

  (*(*(v103 - 8) + 8))(v102);
  v78 = sub_1001CFDD0();
  (*(*(v78 - 8) + 8))(v105, v78);
  (*(*(v101 - 8) + 8))(v106);
  v79 = sub_1001CFDA0();
  (*(*(v79 - 8) + 8))(v95, v79);
  v80 = sub_1001CFD60();
  result = (*(*(v80 - 8) + 8))(v96, v80);
  v81 = v107;
  v82 = v97;
  *v97 = 0xD000000000000015;
  v82[1] = 0x80000001001E33F0;
  v82[2] = v81;
  v82[3] = v74;
  v82[4] = v73;
  return result;
}

uint64_t getEnumTagSinglePayload for AttestationVerificationErrorMetric.EventName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AttestationVerificationErrorMetric.EventName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001CB54()
{
  result = qword_100227E80;
  if (!qword_100227E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227E80);
  }

  return result;
}

unint64_t sub_10001CBAC()
{
  result = qword_100227E88;
  if (!qword_100227E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227E88);
  }

  return result;
}

unint64_t sub_10001CC04()
{
  result = qword_100227E90;
  if (!qword_100227E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227E90);
  }

  return result;
}

uint64_t sub_10001CC58(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10021BA30;
  v6._object = a2;
  v4 = sub_1001D21E0(v3, v6);

  if (v4 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10001CCA4(char a1)
{
  result = 0x6D6974746E657665;
  switch(a1)
  {
    case 1:
      result = 7761509;
      break;
    case 2:
      result = 0x696C63656C707061;
      break;
    case 3:
      result = 0x616566656C707061;
      break;
    case 4:
      result = 0x6E7562656C707061;
      break;
    case 5:
      result = 0x636F6C656C707061;
      break;
    case 6:
      result = 0x6572746E65696C63;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 9:
      result = 0xD00000000000001CLL;
      break;
    case 10:
      result = 0xD00000000000001DLL;
      break;
    case 11:
      result = 0xD00000000000001DLL;
      break;
    case 12:
      result = 0x5064657473757274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10001CE88(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10001CCA4(*a1);
  v5 = v4;
  if (v3 == sub_10001CCA4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1001D2470();
  }

  return v8 & 1;
}

Swift::Int sub_10001CF10()
{
  v1 = *v0;
  sub_1001D2580();
  sub_10001CCA4(v1);
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_10001CF74()
{
  sub_10001CCA4(*v0);
  sub_1001D1880();
}

Swift::Int sub_10001CFC8()
{
  v1 = *v0;
  sub_1001D2580();
  sub_10001CCA4(v1);
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_10001D028@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001D2EC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_10001D058@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10001CCA4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for AttestationVerificationMetric.EventName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AttestationVerificationMetric.EventName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001D1E8()
{
  result = qword_100227EE0;
  if (!qword_100227EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227EE0);
  }

  return result;
}

unint64_t sub_10001D240()
{
  result = qword_100227EE8;
  if (!qword_100227EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227EE8);
  }

  return result;
}

unint64_t sub_10001D298()
{
  result = qword_100227EF0;
  if (!qword_100227EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227EF0);
  }

  return result;
}

uint64_t sub_10001D2EC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10021BB70;
  v6._object = a2;
  v4 = sub_1001D21E0(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10001D350()
{
  *v0;
  *v0;
  *v0;
  sub_1001D1880();
}

uint64_t sub_10001D494@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001DC24(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10001D4C4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000747261;
  v4 = 0x7453646F69726570;
  v5 = 0xEC00000044495555;
  v6 = 0x676E696C706D6173;
  if (v2 != 5)
  {
    v6 = 0xD00000000000001ALL;
    v5 = 0x80000001001E24C0;
  }

  v7 = 0xEB00000000656C61;
  v8 = 0x636F4C656C707061;
  if (v2 != 3)
  {
    v8 = 0x616546656C707061;
    v7 = 0xEE00444965727574;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 7761509;
  if (v2 != 1)
  {
    v10 = 0x696C43656C707061;
    v9 = 0xEF6F666E49746E65;
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

uint64_t sub_10001D5D0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_1001D2470()) && (sub_1000CFF98(v2, v6))
  {
    if (v4)
    {
      if (v7 && (v3 == v5 && v4 == v7 || (sub_1001D2470() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v7)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_10001D688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_100011AC0(&qword_100227F40, &unk_1001D3EE0);
  v15 = sub_100011AC0(&qword_100227F48, &qword_1001DB750);
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1001D3ED0;
  v51 = v18;
  v19 = v18 + v17;
  v20 = (v18 + v17 + *(v15 + 48));
  *(v18 + v17) = 4;
  *v20 = a1;
  v20[1] = a2;
  v21 = enum case for EventValue.string(_:);
  v22 = sub_1001CFEE0();
  v23 = *(*(v22 - 8) + 104);
  v48 = v21;
  (v23)(v20, v21, v22);
  v24 = v19 + v16;
  v25 = *(v15 + 48);
  *(v19 + v16) = 0;
  v52 = a3;
  result = sub_1001CFD20();
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v27 < 9.22337204e18)
  {
    v47 = a8;
    *(v24 + v25) = v27;
    v46 = enum case for EventValue.int(_:);
    v23(v24 + v25);
    v28 = (v19 + 2 * v16);
    v29 = *(v15 + 48);
    *v28 = 1;
    v30 = &v28[v29];
    *v30 = a4;
    v30[1] = a5;
    (v23)();
    v31 = (v19 + 3 * v16);
    v32 = &v31[*(v15 + 48)];
    *v31 = 2;
    *v32 = (*(a11 + 96))(a10, a11);
    v32[1] = v33;
    (v23)(v32, v48, v22);
    v34 = (v19 + 4 * v16);
    v35 = &v34[*(v15 + 48)];
    *v34 = 3;
    *v35 = sub_1001CFDB0();
    v35[1] = v36;
    (v23)(v35, v48, v22);
    v37 = (v19 + 5 * v16);
    v38 = *(v15 + 48);
    *v37 = 5;
    v39 = sub_1001CFDA0();
    v40 = *(v39 - 8);
    (*(v40 + 16))(&v37[v38], a7, v39);
    (v23)(&v37[v38], enum case for EventValue.uuid(_:), v22);
    v41 = *(v15 + 48);
    v42 = (v19 + 6 * v16);
    *v42 = 6;
    *&v42[v41] = a9;
    (v23)(&v42[v41], v46, v22);
    v43 = sub_1000D4DD8(v51);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v40 + 8))(a7, v39);
    v44 = sub_1001CFDD0();
    (*(*(v44 - 8) + 8))(a6, v44);
    v45 = sub_1001CFD60();
    result = (*(*(v45 - 8) + 8))(v52, v45);
    *v47 = 0xD000000000000013;
    v47[1] = 0x80000001001E3410;
    v47[2] = v43;
    v47[3] = 0;
    v47[4] = 0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_10001DB20()
{
  result = qword_100227F50;
  if (!qword_100227F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227F50);
  }

  return result;
}

unint64_t sub_10001DB78()
{
  result = qword_100227F58;
  if (!qword_100227F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227F58);
  }

  return result;
}

unint64_t sub_10001DBD0()
{
  result = qword_100227F60;
  if (!qword_100227F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227F60);
  }

  return result;
}

uint64_t sub_10001DC24(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10021BCC8;
  v6._object = a2;
  v4 = sub_1001D21E0(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

Swift::Int sub_10001DC7C()
{
  v1 = *v0;
  sub_1001D2580();
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_10001DD7C()
{
  *v0;
  *v0;
  *v0;
  sub_1001D1880();
}

Swift::Int sub_10001DE68()
{
  v1 = *v0;
  sub_1001D2580();
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_10001DF64@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001E2B8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10001DF94(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x6D6974746E657665;
  v5 = 0xEF64697473657571;
  v6 = 0x6572746E65696C63;
  v7 = 0xEF6F666E69746E65;
  v8 = 0x696C63656C707061;
  if (v2 != 3)
  {
    v8 = 0x636F6C656C707061;
    v7 = 0xEB00000000656C61;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 7761509;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for FirstInvokeRequestSendMetric.EventName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FirstInvokeRequestSendMetric.EventName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001E1B4()
{
  result = qword_100227FB0;
  if (!qword_100227FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227FB0);
  }

  return result;
}

unint64_t sub_10001E20C()
{
  result = qword_100227FB8;
  if (!qword_100227FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227FB8);
  }

  return result;
}

unint64_t sub_10001E264()
{
  result = qword_100227FC0;
  if (!qword_100227FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100227FC0);
  }

  return result;
}

uint64_t sub_10001E2B8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10021BD90;
  v6._object = a2;
  v4 = sub_1001D21E0(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10001E31C()
{
  *v0;
  *v0;
  *v0;
  sub_1001D1880();
}

uint64_t sub_10001E454@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001E6AC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10001E484(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x6D6954746E657665;
  v5 = 0xD000000000000017;
  v6 = 0x80000001001E24F0;
  if (v2 != 5)
  {
    v5 = 0xD00000000000001FLL;
    v6 = 0x80000001001E2510;
  }

  v7 = 0xEF6F666E49746E65;
  v8 = 0x696C43656C707061;
  if (v2 != 3)
  {
    v8 = 0x636F4C656C707061;
    v7 = 0xEB00000000656C61;
  }

  if (*v1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 7761509;
  if (v2 != 1)
  {
    v10 = 0x6552746E65696C63;
    v9 = 0xEF64497473657571;
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
    v14 = v5;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v6;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_10001E5A8()
{
  result = qword_100228010;
  if (!qword_100228010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228010);
  }

  return result;
}

unint64_t sub_10001E600()
{
  result = qword_100228018;
  if (!qword_100228018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228018);
  }

  return result;
}

unint64_t sub_10001E658()
{
  result = qword_100228020;
  if (!qword_100228020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228020);
  }

  return result;
}

uint64_t sub_10001E6AC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10021BE28;
  v6._object = a2;
  v4 = sub_1001D21E0(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10001E6F8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6D6954746E657665;
    v6 = 0x696C43656C707061;
    if (a1 != 2)
    {
      v6 = 0x616546656C707061;
    }

    if (a1)
    {
      v5 = 7761509;
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
    v1 = 0x6552746E65696C63;
    v2 = 0xD000000000000015;
    if (a1 != 7)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6E7542656C707061;
    if (a1 != 4)
    {
      v3 = 0x636F4C656C707061;
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

Swift::Int sub_10001E860()
{
  v1 = *v0;
  sub_1001D2580();
  sub_100005134();
  return sub_1001D25C0();
}

Swift::Int sub_10001E8B0()
{
  v1 = *v0;
  sub_1001D2580();
  sub_100005134();
  return sub_1001D25C0();
}

uint64_t sub_10001E8F4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001EBB8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10001E924@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001E6F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for InvokeResponseMetric.EventName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InvokeResponseMetric.EventName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001EAB4()
{
  result = qword_100228070;
  if (!qword_100228070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228070);
  }

  return result;
}

unint64_t sub_10001EB0C()
{
  result = qword_100228078;
  if (!qword_100228078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228078);
  }

  return result;
}

unint64_t sub_10001EB64()
{
  result = qword_100228080;
  if (!qword_100228080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228080);
  }

  return result;
}

uint64_t sub_10001EBB8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10021BEF0;
  v6._object = a2;
  v4 = sub_1001D21E0(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10001EC04(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000010;
    if (a1 != 7)
    {
      v5 = 0x6E6553617461646BLL;
    }

    v6 = 0x636F4C656C707061;
    if (a1 != 5)
    {
      v6 = 0x6552746E65696C63;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6D6954746E657665;
    v2 = 0x696C43656C707061;
    v3 = 0x616546656C707061;
    if (a1 != 3)
    {
      v3 = 0x6E7542656C707061;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 7761509;
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
}

uint64_t sub_10001ED90(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10001EC04(*a1);
  v5 = v4;
  if (v3 == sub_10001EC04(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1001D2470();
  }

  return v8 & 1;
}

Swift::Int sub_10001EE18()
{
  v1 = *v0;
  sub_1001D2580();
  sub_10001EC04(v1);
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_10001EE7C()
{
  sub_10001EC04(*v0);
  sub_1001D1880();
}

Swift::Int sub_10001EED0()
{
  v1 = *v0;
  sub_1001D2580();
  sub_10001EC04(v1);
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_10001EF30@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001F1F4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_10001EF60@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10001EC04(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for KDataSendMetric.EventName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KDataSendMetric.EventName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001F0F0()
{
  result = qword_1002280D0;
  if (!qword_1002280D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002280D0);
  }

  return result;
}

unint64_t sub_10001F148()
{
  result = qword_1002280D8;
  if (!qword_1002280D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002280D8);
  }

  return result;
}

unint64_t sub_10001F1A0()
{
  result = qword_1002280E0;
  if (!qword_1002280E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002280E0);
  }

  return result;
}

uint64_t sub_10001F1F4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10021BFE8;
  v6._object = a2;
  v4 = sub_1001D21E0(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10001F240(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD00000000000001ELL;
    v6 = 0xD00000000000001CLL;
    if (a1 != 8)
    {
      v6 = 0xD00000000000001DLL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x636F4C656C707061;
    if (a1 != 5)
    {
      v7 = 0x6552746E65696C63;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6D6954746E657665;
    v2 = 0x696C43656C707061;
    v3 = 0x616546656C707061;
    if (a1 != 3)
    {
      v3 = 0x6E7542656C707061;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 7761509;
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
}

uint64_t sub_10001F3BC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10001F240(*a1);
  v5 = v4;
  if (v3 == sub_10001F240(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1001D2470();
  }

  return v8 & 1;
}

Swift::Int sub_10001F444()
{
  v1 = *v0;
  sub_1001D2580();
  sub_10001F240(v1);
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_10001F4A8()
{
  sub_10001F240(*v0);
  sub_1001D1880();
}

Swift::Int sub_10001F4FC()
{
  v1 = *v0;
  sub_1001D2580();
  sub_10001F240(v1);
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_10001F55C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001F6E0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_10001F58C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10001F240(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10001F5DC()
{
  result = qword_100228130;
  if (!qword_100228130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228130);
  }

  return result;
}

unint64_t sub_10001F634()
{
  result = qword_100228138;
  if (!qword_100228138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228138);
  }

  return result;
}

unint64_t sub_10001F68C()
{
  result = qword_100228140;
  if (!qword_100228140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228140);
  }

  return result;
}

uint64_t sub_10001F6E0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10021C0F8;
  v6._object = a2;
  v4 = sub_1001D21E0(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10001F72C(char a1)
{
  result = 0x6D6954746E657665;
  switch(a1)
  {
    case 1:
      result = 7761509;
      break;
    case 2:
      result = 0x696C43656C707061;
      break;
    case 3:
      result = 0x616546656C707061;
      break;
    case 4:
      result = 0x6E7542656C707061;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x636F4C656C707061;
      break;
    case 7:
      result = 0x6552746E65696C63;
      break;
    case 8:
    case 12:
    case 30:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
    case 15:
    case 25:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 16:
    case 34:
    case 37:
      result = 0xD000000000000012;
      break;
    case 17:
    case 18:
      result = 0xD000000000000023;
      break;
    case 19:
      result = 0xD000000000000021;
      break;
    case 20:
      result = 0xD000000000000010;
      break;
    case 21:
      result = 0xD00000000000002BLL;
      break;
    case 22:
    case 28:
      result = 0xD000000000000017;
      break;
    case 23:
    case 29:
    case 35:
      result = 0xD000000000000018;
      break;
    case 24:
    case 27:
    case 31:
      result = 0xD000000000000016;
      break;
    case 26:
      result = 0xD00000000000001ALL;
      break;
    case 32:
      result = 0x6E6573617461646BLL;
      break;
    case 33:
      result = 0x6E6553617461646BLL;
      break;
    case 36:
      result = 0xD00000000000001BLL;
      break;
    case 38:
      result = 0x5064657473757274;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10001FBB8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10001F72C(*a1);
  v5 = v4;
  if (v3 == sub_10001F72C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1001D2470();
  }

  return v8 & 1;
}

Swift::Int sub_10001FC40()
{
  v1 = *v0;
  sub_1001D2580();
  sub_10001F72C(v1);
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_10001FCA4()
{
  sub_10001F72C(*v0);
  sub_1001D1880();
}

Swift::Int sub_10001FCF8()
{
  v1 = *v0;
  sub_1001D2580();
  sub_10001F72C(v1);
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_10001FD58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_10002001C();
  *a2 = result;
  return result;
}

unint64_t sub_10001FD88@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10001F72C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for TrustedRequestMetric.EventName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDA)
  {
    goto LABEL_17;
  }

  if (a2 + 38 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 38) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 38;
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

      return (*a1 | (v4 << 8)) - 38;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 38;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x27;
  v8 = v6 - 39;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrustedRequestMetric.EventName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 38 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 38) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDA)
  {
    v4 = 0;
  }

  if (a2 > 0xD9)
  {
    v5 = ((a2 - 218) >> 8) + 1;
    *result = a2 + 38;
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
    *result = a2 + 38;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001FF18()
{
  result = qword_100228190;
  if (!qword_100228190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228190);
  }

  return result;
}

unint64_t sub_10001FF70()
{
  result = qword_100228198;
  if (!qword_100228198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100228198);
  }

  return result;
}

unint64_t sub_10001FFC8()
{
  result = qword_1002281A0;
  if (!qword_1002281A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002281A0);
  }

  return result;
}

uint64_t sub_10002001C()
{
  v0 = sub_1001D24A0();

  if (v0 >= 0x27)
  {
    return 39;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_100020070(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a8;
  v48 = a1;
  v49 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1, a2);
  v50 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v16 = *(v52 + 64);
  v18 = __chkstk_darwin(AssociatedTypeWitness, v17);
  v20 = &v37 - v19;
  v21 = *(*(a4 - 8) + 64);
  __chkstk_darwin(v18, v22);
  v46 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_getAssociatedTypeWitness();
  v40 = *(v24 - 8);
  v41 = v24;
  v25 = *(v40 + 64);
  __chkstk_darwin(v24, v26);
  v28 = &v37 - v27;
  v29 = sub_1001D1D00();
  if (!v29)
  {
    return sub_1001D1A00();
  }

  v51 = v29;
  v55 = sub_1001D20B0();
  v42 = sub_1001D20C0();
  sub_1001D2090(v51);
  result = sub_1001D1CF0();
  if ((v51 & 0x8000000000000000) == 0)
  {
    v37 = v11;
    v38 = a5;
    v31 = 0;
    v43 = (v52 + 16);
    v44 = (v52 + 8);
    v45 = v8;
    while (!__OFADD__(v31, 1))
    {
      v52 = v31 + 1;
      v32 = sub_1001D1D40();
      v33 = v20;
      v34 = v20;
      v35 = AssociatedTypeWitness;
      (*v43)(v33);
      v32(v54, 0);
      v36 = v53;
      v48(v34, v50);
      if (v36)
      {
        (*v44)(v34, v35);
        (*(v40 + 8))(v28, v41);

        return (*(v37 + 32))(v39, v50, v38);
      }

      v53 = 0;
      (*v44)(v34, v35);
      sub_1001D20A0();
      result = sub_1001D1D20();
      ++v31;
      v20 = v34;
      if (v52 == v51)
      {
        (*(v40 + 8))(v28, v41);
        return v55;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100020490(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001CFEE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = __chkstk_darwin(v4, v7);
  v10 = v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v8, v11);
  v110 = v87 - v13;
  __chkstk_darwin(v12, v14);
  v91 = v87 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 64);
  v20 = __chkstk_darwin(AssociatedTypeWitness, v19);
  v109 = v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v22);
  v89 = v87 - v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v102 = sub_1001D1F00();
  v108 = *(v102 - 8);
  v25 = *(v108 + 64);
  v27 = __chkstk_darwin(v102, v26);
  v103 = v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v29);
  v101 = v87 - v30;
  v111 = sub_1000D60E8(_swiftEmptyArrayStorage);
  v31 = *(a2 + 64);
  v97 = a1;
  v98 = a2;
  v32 = v31(a1, a2);
  v33 = 0;
  v34 = *(v32 + 64);
  v87[0] = v32 + 64;
  v92 = v32;
  v35 = 1 << *(v32 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & v34;
  v38 = (v35 + 63) >> 6;
  v104 = TupleTypeMetadata2;
  v100 = TupleTypeMetadata2 - 8;
  v87[2] = v17 + 16;
  v106 = (v17 + 32);
  v107 = (v5 + 16);
  v112 = (v5 + 32);
  v99 = (v108 + 32);
  v95 = v5 + 8;
  v90 = v17;
  v94 = (v17 + 8);
  v105 = v5;
  v87[1] = v5 + 40;
  v93 = v38;
  v96 = AssociatedTypeWitness;
  v88 = v10;
  while (v37)
  {
    v40 = v33;
LABEL_15:
    v45 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v46 = v45 | (v40 << 6);
    v47 = v92;
    v48 = v90;
    v49 = v89;
    (*(v90 + 16))(v89, *(v92 + 48) + *(v90 + 72) * v46, AssociatedTypeWitness);
    v50 = *(v47 + 56);
    v51 = v105;
    v52 = v91;
    (*(v105 + 16))(v91, v50 + *(v105 + 72) * v46, v4);
    v43 = v103;
    v53 = *(v104 + 48);
    v54 = *(v48 + 32);
    v44 = v104;
    v54(v103, v49, AssociatedTypeWitness);
    v55 = *(v51 + 32);
    v56 = v4;
    v55(&v43[v53], v52, v4);
    v57 = 0;
    v42 = v40;
    v10 = v88;
LABEL_16:
    v58 = *(v44 - 8);
    (*(v58 + 56))(v43, v57, 1, v44);
    v59 = v101;
    (*v99)(v101, v43, v102);
    if ((*(v58 + 48))(v59, 1, v44) == 1)
    {

      return v111;
    }

    v108 = v42;
    v60 = *(v44 + 48);
    (*v106)(v109, v59, AssociatedTypeWitness);
    v61 = *v112;
    v62 = &v59[v60];
    v63 = v110;
    v64 = v56;
    (*v112)(v110, v62, v56);
    swift_getAssociatedConformanceWitness();
    sub_1001D1950();
    v65 = v114;
    v66 = v115;
    v67 = v10;
    v68 = v10;
    v69 = v64;
    (*v107)(v68, v63, v64);
    v70 = v111;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v113 = v70;
    v73 = sub_100006028(v65, v66);
    v74 = *(v70 + 16);
    v75 = (v72 & 1) == 0;
    v76 = v74 + v75;
    if (__OFADD__(v74, v75))
    {
      goto LABEL_29;
    }

    v77 = v72;
    if (*(v70 + 24) >= v76)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10000F90C();
      }
    }

    else
    {
      sub_10000BFDC(v76, isUniquelyReferenced_nonNull_native);
      v78 = sub_100006028(v65, v66);
      if ((v77 & 1) != (v79 & 1))
      {
        goto LABEL_31;
      }

      v73 = v78;
    }

    v4 = v69;
    v10 = v67;
    if (v77)
    {

      v111 = v113;
      v39 = v105;
      (*(v105 + 40))(v113[7] + *(v105 + 72) * v73, v67, v4);
      (*(v39 + 8))(v110, v4);
      AssociatedTypeWitness = v96;
      (*v94)(v109, v96);
    }

    else
    {
      v80 = v113;
      v113[(v73 >> 6) + 8] |= 1 << v73;
      v81 = (v80[6] + 16 * v73);
      *v81 = v65;
      v81[1] = v66;
      v82 = v105;
      v61((v80[7] + *(v105 + 72) * v73), v67, v4);
      (*(v82 + 8))(v110, v4);
      AssociatedTypeWitness = v96;
      (*v94)(v109, v96);
      v83 = v80[2];
      v84 = __OFADD__(v83, 1);
      v85 = v83 + 1;
      if (v84)
      {
        goto LABEL_30;
      }

      v111 = v80;
      v80[2] = v85;
    }

    v33 = v108;
    v38 = v93;
  }

  if (v38 <= v33 + 1)
  {
    v41 = v33 + 1;
  }

  else
  {
    v41 = v38;
  }

  v42 = v41 - 1;
  v43 = v103;
  v44 = v104;
  while (1)
  {
    v40 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v40 >= v38)
    {
      v56 = v4;
      v37 = 0;
      v57 = 1;
      goto LABEL_16;
    }

    v37 = *(v87[0] + 8 * v40);
    ++v33;
    if (v37)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_1001D24F0();
  __break(1u);
  return result;
}

uint64_t sub_100020CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(a2 - 8);
  v4[6] = v5;
  v6 = *(v5 + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v7 = *(*(sub_100011AC0(&qword_1002301F0, &qword_1001E2120) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = sub_1001CFF00();
  v4[11] = v8;
  v9 = *(v8 - 8);
  v4[12] = v9;
  v10 = *(v9 + 64) + 15;
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_100020E04, 0, 0);
}

uint64_t sub_100020E04()
{
  v1 = v0[2];
  (*(v0[4] + 40))(v0[3]);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = [objc_opt_self() mainBundle];
    v5 = [v4 bundleIdentifier];

    if (v5)
    {
      sub_1001D17D0();
      v3 = v6;
    }

    else
    {
      v3 = 0;
    }
  }

  v0[14] = v3;
  v7 = v0[12];
  v8 = v0[13];
  v9 = v0[10];
  v24 = v0[11];
  v11 = v0[4];
  v10 = v0[5];
  v12 = v0[2];
  v13 = v0[3];

  sub_1001CFEF0();
  sub_1001CFF20();
  v14 = v10[1];
  v25 = *v10;
  v15 = *(v11 + 32);
  v0[15] = v15;
  v0[16] = (v11 + 32) & 0xFFFFFFFFFFFFLL | 0x9FA7000000000000;
  v16 = v15(v13, v11);
  v18 = v17;
  v0[17] = v17;
  v19 = sub_100020490(v13, v11);
  v0[18] = v19;
  (*(v7 + 16))(v9, v8, v24);
  (*(v7 + 56))(v9, 0, 1, v24);
  v20 = async function pointer to static Reporter.report(teamID:eventType:event:transportConfiguration:)[1];
  v21 = swift_task_alloc();
  v0[19] = v21;
  *v21 = v0;
  v21[1] = sub_100021030;
  v22 = v0[10];

  return static Reporter.report(teamID:eventType:event:transportConfiguration:)(v25, v14, v16, v18, v19, v22);
}

uint64_t sub_100021030()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 80);
  v5 = *v1;
  v2[20] = v0;

  sub_100021DF4(v4);
  v6 = v2[18];
  v7 = v2[17];
  if (v0)
  {
    v8 = v2[14];

    v9 = sub_10002153C;
  }

  else
  {

    v9 = sub_1000211BC;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1000211BC()
{
  v53 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[2];
  v5 = v0[3];
  v7 = *(type metadata accessor for MetricReporter() + 20);
  v8 = *(v3 + 16);
  v8(v2, v6, v5);
  v8(v1, v6, v5);
  v9 = sub_1001D0E50();
  v10 = sub_1001D1E00();
  if (os_log_type_enabled(v9, v10))
  {
    v12 = v0[15];
    v11 = v0[16];
    v47 = v0[14];
    v49 = v0[12];
    v50 = v0[11];
    v51 = v0[13];
    v48 = v10;
    v13 = v0[9];
    v46 = v0[8];
    v14 = v0[6];
    v15 = v0[3];
    v16 = v0[4];
    v17 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v17 = 136315394;
    v18 = v12(v15, v16);
    v20 = v19;
    v21 = *(v14 + 8);
    v21(v13, v15);
    v22 = sub_1000954E0(v18, v20, &v52);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v23 = (*(v16 + 64))(v15, v16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v26 = sub_100021770(v23, AssociatedTypeWitness, AssociatedConformanceWitness);
    v28 = v27;

    v21(v46, v15);
    v29 = sub_1000954E0(v26, v28, &v52);

    *(v17 + 14) = v29;

    _os_log_impl(&_mh_execute_header, v9, v48, "Logged metric %s\n%s", v17, 0x16u);
    swift_arrayDestroy();

    (*(v49 + 8))(v51, v50);
  }

  else
  {
    v31 = v0[13];
    v30 = v0[14];
    v32 = v0[11];
    v33 = v0[12];
    v35 = v0[8];
    v34 = v0[9];
    v36 = v0[6];
    v37 = v0[3];

    v38 = *(v36 + 8);
    v38(v35, v37);
    v38(v34, v37);
    (*(v33 + 8))(v31, v32);
  }

  v39 = v0[13];
  v40 = v0[9];
  v41 = v0[10];
  v43 = v0[7];
  v42 = v0[8];

  v44 = v0[1];

  return v44();
}

uint64_t sub_10002153C()
{
  v34 = v0;
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  (*(v0[12] + 8))(v0[13], v0[11]);
  v6 = *(type metadata accessor for MetricReporter() + 20);
  (*(v2 + 16))(v1, v5, v4);
  v7 = sub_1001D0E50();
  v8 = sub_1001D1DE0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[15];
    v31 = v0[16];
    v32 = v0[20];
    v11 = v0[6];
    v10 = v0[7];
    v13 = v0[3];
    v12 = v0[4];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33 = v15;
    *v14 = 136315138;
    v16 = v9(v13, v12);
    v18 = v17;
    (*(v11 + 8))(v10, v13);
    v19 = sub_1000954E0(v16, v18, &v33);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to report metric %s", v14, 0xCu);
    sub_100011CF0(v15);
  }

  else
  {
    v21 = v0[6];
    v20 = v0[7];
    v22 = v0[3];
    v23 = v0[20];

    (*(v21 + 8))(v20, v22);
  }

  v24 = v0[13];
  v25 = v0[9];
  v26 = v0[10];
  v28 = v0[7];
  v27 = v0[8];

  v29 = v0[1];

  return v29();
}

uint64_t sub_100021770(char *a1, uint64_t a2, uint64_t a3)
{
  v12 = a1;
  v10 = a2;
  v11 = a3;
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = sub_100021948;
  v8[5] = &v9;
  sub_1001CFEE0();
  v3 = sub_1001D1720();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_100020070(sub_100021D10, v8, v3, &type metadata for String, &type metadata for Never, WitnessTable, &protocol witness table for Never, v5);

  sub_100152064(&v12);

  sub_100011AC0(&unk_100230200, &qword_1001D4F80);
  sub_100021D90();
  v6 = sub_1001D1750();

  return v6;
}

uint64_t sub_1000218CC()
{
  sub_1001D2440();
  v1._countAndFlagsBits = 8250;
  v1._object = 0xE200000000000000;
  sub_1001D18B0(v1);
  v2._countAndFlagsBits = sub_100021950();
  sub_1001D18B0(v2);

  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  sub_1001D18B0(v3);
  return 0;
}

uint64_t sub_100021948()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000218CC();
}

uint64_t sub_100021950()
{
  v1 = v0;
  v2 = sub_1001CFDA0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001CFEE0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = __chkstk_darwin(v8, v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = (v25 - v16);
  v18 = *(v9 + 16);
  v18(v25 - v16, v1, v8);
  v19 = (*(v9 + 88))(v17, v8);
  if (v19 == enum case for EventValue.string(_:))
  {
    (*(v9 + 96))(v17, v8);
    result = *v17;
    v21 = v17[1];
  }

  else if (v19 == enum case for EventValue.int(_:) || v19 == enum case for EventValue.uint(_:))
  {
    (*(v9 + 96))(v17, v8);
    v25[1] = *v17;
    return sub_1001D23A0();
  }

  else if (v19 == enum case for EventValue.double(_:))
  {
    (*(v9 + 96))(v17, v8);
    v22 = *v17;
    return sub_1001D1CA0();
  }

  else if (v19 == enum case for EventValue.BOOL(_:))
  {
    (*(v9 + 96))(v17, v8);
    if (*v17)
    {
      result = 1702195828;
    }

    else
    {
      result = 0x65736C6166;
    }

    *v17;
  }

  else if (v19 == enum case for EventValue.uuid(_:))
  {
    (*(v9 + 96))(v17, v8);
    (*(v3 + 32))(v7, v17, v2);
    v23 = sub_1001CFD70();
    (*(v3 + 8))(v7, v2);
    return v23;
  }

  else
  {
    v18(v14, v1, v8);
    v24 = sub_1001D1820();
    (*(v9 + 8))(v17, v8);
    return v24;
  }

  return result;
}

uint64_t sub_100021D10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[2];
  v7 = v2[4];
  v6 = v2[5];
  sub_1001CFEE0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = v7(a1, a1 + *(TupleTypeMetadata2 + 48));
  *a2 = result;
  a2[1] = v10;
  return result;
}

unint64_t sub_100021D90()
{
  result = qword_1002281F0;
  if (!qword_1002281F0)
  {
    sub_100011DF4(&unk_100230200, &qword_1001D4F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002281F0);
  }

  return result;
}

uint64_t sub_100021DF4(uint64_t a1)
{
  v2 = sub_100011AC0(&qword_1002301F0, &qword_1001E2120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for MetricReporter()
{
  result = qword_100228250;
  if (!qword_100228250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100021EBC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001D0E60();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100021F7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001D0E60();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100022020()
{
  result = sub_1001D0E60();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t NodeReceivingSource.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6863746566657270;
  }

  if (a1 == 1)
  {
    return 0x6D726177657270;
  }

  return 0x74736575716572;
}

uint64_t sub_100022104(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6D726177657270;
  if (v2 != 1)
  {
    v3 = 0x74736575716572;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6863746566657270;
  }

  if (v2)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  v6 = 0x6D726177657270;
  if (*a2 != 1)
  {
    v6 = 0x74736575716572;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6863746566657270;
  }

  if (*a2)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1001D2470();
  }

  return v9 & 1;
}

Swift::Int sub_100022208()
{
  v1 = *v0;
  sub_1001D2580();
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_1000222AC()
{
  *v0;
  *v0;
  sub_1001D1880();
}

Swift::Int sub_10002233C()
{
  v1 = *v0;
  sub_1001D2580();
  sub_1001D1880();

  return sub_1001D25C0();
}

uint64_t sub_1000223DC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s20privatecloudcomputed19NodeReceivingSourceO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10002240C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6D726177657270;
  if (v2 != 1)
  {
    v4 = 0x74736575716572;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6863746566657270;
  }

  if (!v5)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_10002252C(unint64_t result)
{
  if (__OFADD__(*v2, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  v1 = v2;
  v3 = result;
  ++*v2;
  i = *(result + 16);
  v8 = v2[1];
  v9 = __OFADD__(v8, i);
  v10 = i + v8;
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v2[1] = v10;
  if (!i)
  {
    return result;
  }

  v5 = *(result + 32);
  v4 = *(result + 40);

  sub_100011E9C(0);
  v11 = v2[2];
  LOBYTE(v12) = swift_isUniquelyReferenced_nonNull_native();
  v13 = v2[2];
  v41 = v1[2];
  result = sub_100006028(v5, v4);
  v15 = v13[2];
  v16 = (v14 & 1) == 0;
  v9 = __OFADD__(v15, v16);
  v17 = v15 + v16;
  if (v9)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  isUniquelyReferenced_nonNull_native = v14;
  if (v13[3] < v17)
  {
    sub_100009BB8(v17, v12);
    v13 = v41;
    result = sub_100006028(v5, v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == (v18 & 1))
    {
      goto LABEL_9;
    }

LABEL_7:
    result = sub_1001D24F0();
    __break(1u);
  }

  if ((v12 & 1) == 0)
  {
LABEL_13:
    v20 = result;
    sub_10000F4B0();
    result = v20;
    v13 = v41;
    v1[2] = v41;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

LABEL_9:
  v1[2] = v13;
  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_10:
    v19 = result;

    result = v19;
    goto LABEL_16;
  }

LABEL_14:
  v13[(result >> 6) + 8] |= 1 << result;
  v21 = (v13[6] + 16 * result);
  *v21 = v5;
  v21[1] = v4;
  *(v13[7] + 8 * result) = 0;
  v22 = v13[2];
  v9 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v9)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v13[2] = v23;
LABEL_16:
  v24 = v13[7];
  v25 = *(v24 + 8 * result);
  v9 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v9)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  *(v24 + 8 * result) = v26;
  v12 = i - 1;
  if (i != 1)
  {
    for (i = (v3 + 56); ; i += 2)
    {
      v4 = *(i - 1);
      v3 = *i;

      sub_100011E9C(sub_100003EC0);
      v27 = v1[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = v1[2];
      v41 = v13;
      result = sub_100006028(v4, v3);
      v29 = v13[2];
      v30 = (v28 & 1) == 0;
      v9 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v9)
      {
        goto LABEL_32;
      }

      v5 = v28;
      if (v13[3] < v31)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_24;
      }

      v34 = result;
      sub_10000F4B0();
      result = v34;
      v1[2] = v13;
      if ((v5 & 1) == 0)
      {
LABEL_27:
        v13[(result >> 6) + 8] |= 1 << result;
        v35 = (v13[6] + 16 * result);
        *v35 = v4;
        v35[1] = v3;
        *(v13[7] + 8 * result) = 0;
        v36 = v13[2];
        v9 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v13[2] = v37;
        goto LABEL_29;
      }

LABEL_25:
      v33 = result;

      result = v33;
LABEL_29:
      v38 = v13[7];
      v39 = *(v38 + 8 * result);
      v9 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v9)
      {
        goto LABEL_33;
      }

      *(v38 + 8 * result) = v40;
      if (!--v12)
      {
        return result;
      }
    }

    sub_100009BB8(v31, isUniquelyReferenced_nonNull_native);
    result = sub_100006028(v4, v3);
    if ((v5 & 1) != (v32 & 1))
    {
      goto LABEL_7;
    }

LABEL_24:
    v1[2] = v13;
    if ((v5 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  return result;
}

uint64_t sub_100022828(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F436863746162 && a2 == 0xEA0000000000746ELL;
  if (v4 || (sub_1001D2470() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F436C61746F74 && a2 == 0xEA0000000000746ELL || (sub_1001D2470() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001001E3450 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1001D2470();

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

Swift::Int sub_100022990(unsigned __int8 a1)
{
  sub_1001D2580();
  sub_1001D2590(a1);
  return sub_1001D25C0();
}

uint64_t sub_1000229D8(char a1)
{
  if (!a1)
  {
    return 0x756F436863746162;
  }

  if (a1 == 1)
  {
    return 0x756F436C61746F74;
  }

  return 0xD000000000000014;
}

BOOL sub_100022A34(char *a1, char *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_100022958(*a1, *a2);
}

Swift::Int sub_100022A48(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_100022990(*v1);
}

void sub_100022A54(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  sub_100022968(a1, *v2);
}

Swift::Int sub_100022A60(uint64_t a1, uint64_t a2)
{
  sub_1001D2580();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_100022968(v7, *v2);
  return sub_1001D25C0();
}

uint64_t sub_100022AA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1000229D8(*v1);
}

uint64_t sub_100022AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_100022828(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_100022AE4@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_100025018();
  *a2 = result;
  return result;
}

uint64_t sub_100022B10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100022B64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_100022BB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a3;
  v15[0] = a4;
  type metadata accessor for NodeDistributionAnalyzer.NodeDistribution.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1001D2350();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = v15 - v9;
  v11 = a1[4];
  sub_100024DC8(a1, a1[3]);
  sub_1001D25F0();
  v18 = 0;
  v12 = v15[2];
  sub_1001D2320();
  if (!v12)
  {
    v13 = v15[0];
    v17 = 1;
    sub_1001D2320();
    v15[3] = v13;
    v16 = 2;
    sub_100011AC0(&qword_1002283B8, &qword_1001D4A50);
    sub_100024E0C(qword_1002283C8);
    sub_1001D2340();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_100022DCC(uint64_t *a1)
{
  type metadata accessor for NodeDistributionAnalyzer.NodeDistribution.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v4 = sub_1001D22A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v12[-v8];
  sub_1000D4CDC(&_swiftEmptyArrayStorage);

  v10 = a1[4];
  sub_100024DC8(a1, a1[3]);
  sub_1001D25E0();
  if (!v1)
  {
    v12[31] = 0;
    WitnessTable = sub_1001D2270();
    v12[30] = 1;
    sub_1001D2270();
    sub_100011AC0(&qword_1002283B8, &qword_1001D4A50);
    v12[29] = 2;
    sub_100024E0C(&qword_1002283C0);
    sub_1001D2290();
    (*(v5 + 8))(v9, v4);
  }

  sub_100011CF0(a1);
  return WitnessTable;
}

uint64_t sub_100023030@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  result = sub_100022DCC(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
  }

  return result;
}

uint64_t sub_100023068(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_100022BB8(a1, *v2, v2[1], v2[2]);
}

uint64_t sub_100023090()
{
  v1[20] = v0;
  v1[21] = *v0;
  v1[22] = *v0;
  v2 = sub_1001CF840();
  v1[23] = v2;
  v3 = *(v2 - 8);
  v1[24] = v3;
  v4 = *(v3 + 64) + 15;
  v1[25] = swift_task_alloc();
  v5 = sub_100011AC0(&qword_100227A28, &unk_1001D35E0);
  v1[26] = v5;
  v6 = *(v5 - 8);
  v1[27] = v6;
  v7 = *(v6 + 64) + 15;
  v1[28] = swift_task_alloc();
  v8 = sub_100011AC0(&qword_100227A30, &qword_1001D4990);
  v1[29] = v8;
  v9 = *(v8 - 8);
  v1[30] = v9;
  v10 = *(v9 + 64) + 15;
  v1[31] = swift_task_alloc();

  return _swift_task_switch(sub_100023270, v0, 0);
}

uint64_t sub_100023270()
{
  v1 = *(*(v0 + 160) + *(**(v0 + 160) + 144));
  v2 = swift_task_alloc();
  *(v0 + 256) = v2;
  *v2 = v0;
  v2[1] = sub_100023318;

  return sub_10002519C();
}

uint64_t sub_100023318(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 256);
  v7 = *v3;
  v5[33] = a1;
  v5[34] = a2;
  v5[35] = v2;

  v8 = v4[20];
  if (v2)
  {
    v9 = sub_100023E24;
  }

  else
  {
    v9 = sub_100023450;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100023450()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  *(v0 + 288) = swift_getWitnessTable();
  *(v0 + 296) = *(v3 + 80);
  v4 = *(v3 + 88);
  *(v0 + 312) = 0;
  *(v0 + 320) = &_swiftEmptyArrayStorage;
  *(v0 + 304) = v4;
  v5 = *(v0 + 264);
  v6 = *(v0 + 272);
  v7 = *(v0 + 248);
  v8 = *(v0 + 224);
  v9 = *(v0 + 208);
  *(v0 + 368) = 0;
  v10 = sub_1000D4CDC(&_swiftEmptyArrayStorage);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = v10;
  *(v0 + 104) = v5;
  *(v0 + 112) = v6;
  sub_100012038(v5, v6);
  sub_100011D3C();
  sub_1001D1C80();
  sub_1001CF8F0();
  (*(v1 + 8))(v8, v9);
  *(v0 + 369) = 0;
  *(v0 + 328) = &_swiftEmptyArrayStorage;
  v11 = sub_100024B78(&qword_100227A50, &qword_100227A30, &qword_1001D4990);
  v12 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v13 = swift_task_alloc();
  *(v0 + 336) = v13;
  *v13 = v0;
  v13[1] = sub_10002360C;
  v14 = *(v0 + 248);
  v15 = *(v0 + 232);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 120, v15, v11);
}

uint64_t sub_10002360C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 344) = v2;

  v6 = *(v3 + 288);
  v7 = *(v3 + 160);
  swift_getObjectType();
  v9 = sub_1001D1A70();
  if (v2)
  {
    v10 = sub_100023D98;
  }

  else
  {
    v10 = sub_100023768;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_100023768()
{
  v1 = *(v0 + 160);
  *(v0 + 352) = *(v0 + 120);
  return _swift_task_switch(sub_10002378C, v1, 0);
}

uint64_t sub_10002378C()
{
  v1 = *(v0 + 360);
  if (v1)
  {
    *(v0 + 136) = *(v0 + 352);
    v3 = *(v0 + 192);
    v2 = *(v0 + 200);
    v4 = *(v0 + 184);
    *(v0 + 144) = v1;
    sub_1001CF830();
    sub_100011EAC();
    v5 = sub_1001D1F20();
    v7 = v6;
    (*(v3 + 8))(v2, v4);

    v8 = v5 == 0x6863746566657270 && v7 == 0xE800000000000000;
    if (v8 || (sub_1001D2470() & 1) != 0)
    {

      v9 = 0;
    }

    else
    {
      v33 = v5 == 0x6D726177657270 && v7 == 0xE700000000000000;
      if (v33 || (sub_1001D2470() & 1) != 0)
      {

        v9 = 1;
      }

      else
      {
        v53 = v5 == 0x74736575716572 && v7 == 0xE700000000000000;
        if (!v53 && (sub_1001D2470() & 1) == 0)
        {
          if (*(v0 + 369) == 1)
          {
            v54 = *(v0 + 328);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v47 = *(v0 + 328);
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v47 = sub_100008F3C(0, *(v47 + 2) + 1, 1, v47);
            }

            v57 = *(v47 + 2);
            v56 = *(v47 + 3);
            if (v57 >= v56 >> 1)
            {
              v47 = sub_100008F3C((v56 > 1), v57 + 1, 1, v47);
            }

            *(v47 + 2) = v57 + 1;
            v58 = &v47[16 * v57];
            *(v58 + 4) = v5;
            *(v58 + 5) = v7;
          }

          else
          {

            v47 = *(v0 + 328);
          }

          goto LABEL_51;
        }

        v9 = 2;
      }
    }

    if (*(v0 + 369) == 1 && *(*(v0 + 328) + 16))
    {
      v10 = *(v0 + 296);
      v11 = *(v0 + 304);
      v12 = *(v0 + 328);
      type metadata accessor for NodeDistributionAnalyzer.NodeDistribution();
      sub_10002252C(v12);
    }

    if (v9)
    {
      v13 = 0xE700000000000000;
      if (v9 == 1)
      {
        v14 = 0x6D726177657270;
      }

      else
      {
        v14 = 0x74736575716572;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      v14 = 0x6863746566657270;
    }

    v29 = 0x6D726177657270;
    if (*(v0 + 368) != 1)
    {
      v29 = 0x74736575716572;
    }

    if (*(v0 + 368))
    {
      v30 = v29;
    }

    else
    {
      v30 = 0x6863746566657270;
    }

    if (*(v0 + 368))
    {
      v31 = 0xE700000000000000;
    }

    else
    {
      v31 = 0xE800000000000000;
    }

    if (v14 == v30 && v13 == v31)
    {
      v32 = 1;
    }

    else
    {
      v32 = sub_1001D2470();
    }

LABEL_50:
    *(v0 + 369) = v32 & 1;
    v47 = &_swiftEmptyArrayStorage;
LABEL_51:
    *(v0 + 328) = v47;
    v48 = sub_100024B78(&qword_100227A50, &qword_100227A30, &qword_1001D4990);
    v49 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v50 = swift_task_alloc();
    *(v0 + 336) = v50;
    *v50 = v0;
    v50[1] = sub_10002360C;
    v51 = *(v0 + 248);
    v52 = *(v0 + 232);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 120, v52, v48);
  }

  v15 = *(v0 + 369);
  (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  if (v15 == 1 && *(*(v0 + 328) + 16))
  {
    v16 = *(v0 + 296);
    v17 = *(v0 + 304);
    v18 = *(v0 + 328);
    type metadata accessor for NodeDistributionAnalyzer.NodeDistribution();
    sub_10002252C(v18);
  }

  v19 = *(v0 + 160);
  sub_100023FA8(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 368), v0 + 16);

  v20 = *(v0 + 24);
  if (v20)
  {
    v21 = *(v0 + 16);
    v22 = *(v0 + 320);
    *(v0 + 56) = *(v0 + 32);
    *(v0 + 72) = *(v0 + 48);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v0 + 320);
    if ((v23 & 1) == 0)
    {
      v24 = sub_10000914C(0, *(v24 + 2) + 1, 1, *(v0 + 320));
    }

    v26 = *(v24 + 2);
    v25 = *(v24 + 3);
    if (v26 >= v25 >> 1)
    {
      v24 = sub_10000914C((v25 > 1), v26 + 1, 1, v24);
    }

    sub_100011E48(*(v0 + 264), *(v0 + 272));
    *(v24 + 2) = v26 + 1;
    v27 = &v24[40 * v26];
    *(v27 + 4) = v21;
    *(v27 + 5) = v20;
    v28 = *(v0 + 56);
    *(v27 + 8) = *(v0 + 72);
    *(v27 + 3) = v28;
  }

  else
  {
    sub_100011E48(*(v0 + 264), *(v0 + 272));
    v24 = *(v0 + 320);
  }

  v34 = *(v0 + 312) + 1;
  if (*(v0 + 312) != 2)
  {
    *(v0 + 312) = v34;
    *(v0 + 320) = v24;
    v40 = *(v0 + 264);
    v41 = *(v0 + 272);
    v42 = *(v0 + 248);
    v44 = *(v0 + 216);
    v43 = *(v0 + 224);
    v45 = *(v0 + 208);
    *(v0 + 368) = *(&off_10021C688 + v34 + 32);
    v46 = sub_1000D4CDC(&_swiftEmptyArrayStorage);
    *(v0 + 80) = 0;
    *(v0 + 88) = 0;
    *(v0 + 96) = v46;
    *(v0 + 104) = v40;
    *(v0 + 112) = v41;
    sub_100012038(v40, v41);
    sub_100011D3C();
    sub_1001D1C80();
    sub_1001CF8F0();
    (*(v44 + 8))(v43, v45);
    v32 = 0;
    goto LABEL_50;
  }

  sub_100011E48(*(v0 + 264), *(v0 + 272));
  v35 = *(v0 + 248);
  v36 = *(v0 + 224);
  v37 = *(v0 + 200);

  v38 = *(v0 + 8);

  return v38(v24);
}