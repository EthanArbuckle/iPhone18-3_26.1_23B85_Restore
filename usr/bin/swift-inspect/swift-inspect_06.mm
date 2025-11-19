uint64_t sub_100061F2C(Swift::UInt a1, Swift::UInt a2, __int16 a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  v8 = *(a4 + 40);
  Hasher.init(_seed:)();
  if (a3 & 0x100) != 0 || (Hasher._combine(_:)(1uLL), Hasher._combine(_:)(a1), (a3))
  {
    v9 = 0;
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    v9 = a2;
  }

  Hasher._combine(_:)(v9);
  v11 = Hasher._finalize()();
  v12 = -1 << *(a4 + 32);
  v13 = v11 & ~v12;
  if ((*(a4 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    do
    {
      v15 = *(a4 + 48) + 24 * v13;
      if (*(v15 + 17))
      {
        if ((a3 & 0x100) != 0)
        {
          return 1;
        }
      }

      else if ((a3 & 0x100) == 0 && *v15 == a1)
      {
        if (*(v15 + 16))
        {
          if (a3)
          {
            return 1;
          }
        }

        else if ((a3 & 1) == 0 && *(v15 + 8) == a2)
        {
          return 1;
        }
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(a4 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return 0;
}

void *sub_100062078(void *result, char *__dst, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = result;
  if (!__dst)
  {
    v8 = 0;
    goto LABEL_12;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_12:
    *v7 = a4;
    v7[1] = a5;
    v7[2] = v8;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(a4 + 16);
    if (v9)
    {
      v10 = __dst;
      v11 = 0;
      v12 = (a4 + 32);
      v13 = a3 - 1;
      while (v11 < *(a4 + 16))
      {
        v14 = v12[9];
        v21[8] = v12[8];
        v21[9] = v14;
        v15 = v12[11];
        v21[10] = v12[10];
        v21[11] = v15;
        v16 = v12[5];
        v21[4] = v12[4];
        v21[5] = v16;
        v17 = v12[7];
        v21[6] = v12[6];
        v21[7] = v17;
        v18 = v12[1];
        v21[0] = *v12;
        v21[1] = v18;
        v19 = v12[3];
        v21[2] = v12[2];
        v21[3] = v19;
        memmove(v10, v12, 0xC0uLL);
        if (v13 == v11)
        {
          sub_1000289DC(v21, v20);
          goto LABEL_12;
        }

        v10 += 192;
        result = sub_1000289DC(v21, v20);
        ++v11;
        v12 += 12;
        if (v9 == v11)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    v8 = v9;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

void *sub_100062194(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = *(a4 + 48) + 24 * (v14 | (v9 << 6));
      v16 = *(v15 + 16);
      v17 = *(v15 + 17);
      *a2 = *v15;
      *(a2 + 16) = v16;
      *(a2 + 17) = v17;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 24;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v19 = v9 + 1;
    }

    else
    {
      v19 = (63 - v6) >> 6;
    }

    v9 = v19 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_1000622A8(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_13:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_16;
  }

  if (result > v4)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_100062314(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v10 = a6[2];
  v11 = a6[3];
  v13 = a6[4];
  v12 = a6[5];
  v30 = *(a6 + 48);
  sub_1000021C0(&qword_1000B5210, &unk_100092A40);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10008E640;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3;
  v15 = a6[1];
  if (v15)
  {
    v16 = *a6;
    v51[0] = v16;
    v51[1] = v15;
    if (v12)
    {
      sub_100039960(v51, v40);

      goto LABEL_7;
    }

    sub_100039960(v51, v40);
  }

  else
  {
    v30 = 0;
    v16 = 0;
    v10 = 0;
    v15 = 0xE000000000000000;
    v11 = 0xE000000000000000;
  }

  v13 = 0;
  v12 = 0xE000000000000000;
LABEL_7:
  v17 = 1702195828;
  if ((a5 & 1) == 0)
  {
    v17 = 0;
  }

  *&v32 = a5 != 2;
  *(&v32 + 1) = v17;
  v18 = 0xE400000000000000;
  if ((a5 & 1) == 0)
  {
    v18 = 0;
  }

  *&v33 = v18;
  *(&v33 + 1) = v14;
  *&v34 = &_swiftEmptyArrayStorage;
  BYTE8(v34) = 0;
  *&v35 = v16;
  *(&v35 + 1) = v15;
  *&v36 = v10;
  *(&v36 + 1) = v11;
  *&v37 = v13;
  *(&v37 + 1) = v12;
  LOBYTE(v38) = v30;
  *(&v38 + 1) = 0;
  v39 = 0xE000000000000000;
  v40[0] = a5 != 2;
  v40[1] = v17;
  v40[2] = v18;
  v40[3] = v14;
  v40[4] = &_swiftEmptyArrayStorage;
  v41 = 0;
  v42 = v16;
  v43 = v15;
  v44 = v10;
  v45 = v11;
  v46 = v13;
  v47 = v12;
  v48 = v30;
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_10002F094(&v32, v31);
  sub_10002F0F0(v40);
  v19 = sub_10003B384(a1, a2, a4);
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a3;
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  *(v21 + 24) = a1;
  *(v21 + 32) = a2;
  *(v21 + 40) = a3;
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10008E640;
  v23 = v37;
  *(v22 + 104) = v36;
  *(v22 + 120) = v23;
  *(v22 + 136) = v38;
  v24 = v33;
  *(v22 + 40) = v32;
  *(v22 + 56) = v24;
  v25 = v35;
  *(v22 + 72) = v34;
  *(v22 + 32) = v19;
  v26 = v39;
  *(v22 + 88) = v25;
  *(v22 + 160) = 0;
  *(v22 + 168) = 0;
  *(v22 + 152) = v26;
  *(v22 + 176) = 4;
  *(v22 + 184) = sub_100062D50;
  *(v22 + 192) = v20;
  *(v22 + 200) = 0;
  *(v22 + 208) = sub_100062DB0;
  *(v22 + 216) = v21;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  return sub_100072F04(v22);
}

uint64_t sub_100062604(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = a5[2];
  v9 = a5[3];
  v12 = a5[4];
  v11 = a5[5];
  v26 = *(a5 + 48);
  sub_1000021C0(&qword_1000B5210, &unk_100092A40);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10008E640;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  *(v13 + 48) = a3;
  v14 = a5[1];
  if (!v14)
  {
    v26 = 0;
    v15 = 0;
    v10 = 0;
    v14 = 0xE000000000000000;
    v9 = 0xE000000000000000;
LABEL_6:

    v12 = 0;
    v11 = 0xE000000000000000;
    goto LABEL_7;
  }

  v15 = *a5;
  v47[0] = v15;
  v47[1] = v14;
  if (!v11)
  {
    sub_100039960(v47, v36);

    goto LABEL_6;
  }

  sub_100039960(v47, v36);

LABEL_7:
  v28 = 3uLL;
  *&v29 = 0;
  *(&v29 + 1) = v13;
  *&v30 = _swiftEmptyArrayStorage;
  BYTE8(v30) = 0;
  *&v31 = v15;
  *(&v31 + 1) = v14;
  *&v32 = v10;
  *(&v32 + 1) = v9;
  *&v33 = v12;
  *(&v33 + 1) = v11;
  LOBYTE(v34) = v26;
  *(&v34 + 1) = 0;
  v35 = 0xE000000000000000;
  v36[0] = 3;
  v36[1] = 0;
  v36[2] = 0;
  v36[3] = v13;
  v36[4] = _swiftEmptyArrayStorage;
  v37 = 0;
  v38 = v15;
  v39 = v14;
  v40 = v10;
  v41 = v9;
  v42 = v12;
  v43 = v11;
  v44 = v26;
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_10002F094(&v28, v27);
  sub_10002F0F0(v36);
  v16 = sub_10003B384(a1, a2, a4);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10008E640;
  v20 = v33;
  *(v19 + 104) = v32;
  *(v19 + 120) = v20;
  *(v19 + 136) = v34;
  v21 = v29;
  *(v19 + 40) = v28;
  *(v19 + 56) = v21;
  v22 = v31;
  *(v19 + 72) = v30;
  *(v19 + 32) = v16;
  v23 = v35;
  *(v19 + 88) = v22;
  *(v19 + 160) = 0;
  *(v19 + 168) = 0;
  *(v19 + 152) = v23;
  *(v19 + 176) = 4;
  *(v19 + 184) = sub_100062C60;
  *(v19 + 192) = v17;
  *(v19 + 200) = 0;
  *(v19 + 208) = sub_100062C80;
  *(v19 + 216) = v18;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  return sub_100072F04(v19);
}

uint64_t sub_1000628C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_10004E820(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[9];
      v21[8] = v4[8];
      v21[9] = v5;
      v6 = v4[11];
      v21[10] = v4[10];
      v21[11] = v6;
      v7 = v4[5];
      v21[4] = v4[4];
      v21[5] = v7;
      v8 = v4[7];
      v21[6] = v4[6];
      v21[7] = v8;
      v9 = v4[1];
      v21[0] = *v4;
      v21[1] = v9;
      v10 = v4[3];
      v21[2] = v4[2];
      v21[3] = v10;
      sub_1000289DC(v21, &v19);
      v11 = sub_100059614();
      v13 = v12;
      sub_100028A38(v21);
      v20 = v2;
      v15 = v2[2];
      v14 = v2[3];
      if (v15 >= v14 >> 1)
      {
        sub_10004E820((v14 > 1), v15 + 1, 1);
        v2 = v20;
      }

      v2[2] = v15 + 1;
      v16 = &v2[2 * v15];
      v16[4] = v11;
      v16[5] = v13;
      v4 += 12;
      --v1;
    }

    while (v1);
  }

  v19 = v2;
  sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
  sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0);
  v17 = BidirectionalCollection<>.joined(separator:)();

  return v17;
}

unint64_t sub_100062BE0()
{
  result = qword_1000B5C60;
  if (!qword_1000B5C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5C60);
  }

  return result;
}

uint64_t sub_100062CA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021C0(&qword_1000B5428, &qword_100093030);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100062D10()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100062D70()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100062E0C(uint64_t a1)
{
  v1 = (*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x7D)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100062E34(uint64_t a1)
{
  if ((*(a1 + 80) & 0xF) == 0xF)
  {
    return (*a1 + 15);
  }

  else
  {
    return *(a1 + 80) & 0xF;
  }
}

__n128 sub_100062E50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100062E74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_100062EBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100062F24(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v15 = *(a5 + 8);
  v16 = *(a5 + 16);
  v44 = *(a5 + 32);
  v46 = *(a5 + 24);
  v17 = *(a5 + 40);
  v42 = *(a5 + 48);

  v40 = sub_10003B384(a1, a2, a4);
  sub_1000021C0(&qword_1000B5210, &unk_100092A40);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10008E640;
  v39 = a8;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  *(v18 + 48) = a3;
  if (v15)
  {
    v37 = *a5;
    v38 = v16;
    v68[0] = *a5;
    v68[1] = v15;
    if (v17)
    {
      sub_10003357C(a7, a8, a9);

      sub_10003357C(a7, a8, a9);
      sub_10002600C(a5, v57, &qword_1000B52F0, qword_100091640);
      sub_100039960(v68, v57);

      v19 = v15;
      v20 = v17;
LABEL_8:

      v23 = v44;
      v24 = v42;
      goto LABEL_10;
    }

    sub_100039960(v68, v57);

    v19 = v15;
  }

  else
  {
    v37 = 0;
    v38 = 0;
    v19 = 0xE000000000000000;
    v46 = 0xE000000000000000;
  }

  sub_10003357C(a7, a8, a9);

  sub_10003357C(a7, a8, a9);
  sub_10002600C(a5, v57, &qword_1000B52F0, qword_100091640);

  if (*(a5 + 8))
  {
    v44 = 0;
    v42 = *(a5 + 48);
    v21 = *(a5 + 40);
    v20 = 0xE000000000000000;
    v22 = *(a5 + 24);
    goto LABEL_8;
  }

  v23 = 0;
  v24 = 0;
  v20 = 0xE000000000000000;
LABEL_10:
  v49 = 0uLL;
  if (a9 == 255)
  {
    v25 = 4;
  }

  else
  {
    v25 = a9;
  }

  v45 = v25;
  if (a9 == 255)
  {
    v26 = 0;
  }

  else
  {
    v26 = v39;
  }

  v43 = v26;
  if (a9 == 255)
  {
    v27 = 0;
  }

  else
  {
    v27 = a7;
  }

  v36 = v27;
  *&v50 = 0;
  *(&v50 + 1) = v18;
  *&v51 = _swiftEmptyArrayStorage;
  BYTE8(v51) = 0;
  *&v52 = v37;
  *(&v52 + 1) = v19;
  *&v53 = v38;
  *(&v53 + 1) = v46;
  *&v54 = v23;
  *(&v54 + 1) = v20;
  LOBYTE(v55) = v24;
  *(&v55 + 1) = 0;
  v56 = 0xE000000000000000;
  memset(v57, 0, 24);
  v57[3] = v18;
  v57[4] = _swiftEmptyArrayStorage;
  v58 = 0;
  v59 = v37;
  v60 = v19;
  v61 = v38;
  v62 = v46;
  v63 = v23;
  v64 = v20;
  v65 = v24;
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_10002F094(&v49, v48);
  sub_10002F0F0(v57);
  v28 = swift_allocObject();
  v28[2] = sub_100065610;
  v28[3] = 0;
  v28[4] = a1;
  v28[5] = a2;
  v28[6] = a3;
  v29 = swift_allocObject();
  v29[2] = v40;
  v29[3] = 0;
  v29[4] = 0;
  v29[5] = a1;
  v29[6] = a2;
  v29[7] = a3;

  sub_1000676CC(a7, v39, a9);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10008E640;
  v31 = v54;
  *(v30 + 104) = v53;
  *(v30 + 120) = v31;
  *(v30 + 136) = v55;
  v32 = v50;
  *(v30 + 40) = v49;
  *(v30 + 56) = v32;
  v33 = v52;
  *(v30 + 72) = v51;
  *(v30 + 32) = v40;
  v34 = v56;
  *(v30 + 88) = v33;
  *(v30 + 152) = v34;
  *(v30 + 160) = v36;
  *(v30 + 168) = v43;
  *(v30 + 176) = v45;
  *(v30 + 177) = a6;
  *(v30 + 184) = sub_10006761C;
  *(v30 + 192) = v28;
  *(v30 + 200) = 1;
  *(v30 + 208) = sub_1000676A8;
  *(v30 + 216) = v29;
  return sub_100072F04(v30);
}

uint64_t sub_100063360@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  sub_100065F38(a1, *v2);

  v60 = sub_10006FC54(v7);
  v61 = v8;
  v62 = v9;
  sub_100064EB0(&v60, v4, v5, v6);
  sub_100064724(&v60);
  v10 = *v2;
  sub_100063E54(v60, v61, v62, v2[1], v2[2], v59);

  sub_10002F35C(v59, &v58);
  sub_1000021C0(&qword_1000B55E8, &qword_100092588);
  if (!swift_dynamicCast())
  {
    result = sub_100040F6C(v59, a2);
    goto LABEL_34;
  }

  if ((v64 & 1) == 0)
  {
    v11 = v63[0];
    v12 = v63[1];
    v13 = v65;
    v14 = v66;
    v15 = v67;
    v47 = v68;
    v43 = v69;
    sub_1000021C0(&qword_1000B5190, &qword_100092750);
    v16 = swift_allocObject();
    *(v16 + 1) = xmmword_10008E640;
    *(v16 + 2) = *(v10 + 16);
    v44 = *(v11 + 16);
    if (v44)
    {
      v46 = v11 + 32;
      sub_100066F1C(v11, v12, 0);
      v39 = v12;
      sub_100066F1C(v11, v12, 0);
      v41 = v14;
      v42 = v13;
      v40 = v15;
      sub_10004FDF8(v13, v14, v15);

      v17 = 0;
      v45 = v11;
      while (1)
      {
        v49 = v16;
        if (v17 >= *(v11 + 16))
        {
          break;
        }

        v50 = v17;
        v18 = (v46 + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        swift_beginAccess();
        v21 = *(v10 + 40);
        v48 = v10;
        if (v21 >> 62)
        {
          v22 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v22)
        {
LABEL_31:
          v11 = v45;
          v36 = v39;
          sub_10004BA18(v45, v39, 0);

          v14 = v41;
          v13 = v42;
          LOBYTE(v15) = v40;
          v16 = v49;
          goto LABEL_33;
        }

        v23 = 0;
        ++v50;
        v51 = v22;
        v52 = v21 & 0xFFFFFFFFFFFFFF8;
        v53 = v21 & 0xC000000000000001;
        while (1)
        {
          if (v53)
          {
            v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v23 >= *(v52 + 16))
            {
              goto LABEL_36;
            }

            v24 = *(v21 + 8 * v23 + 32);
          }

          *&v55 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          v25 = *(v24 + 16);
          if ((*(*(v24 + 24) + 24))() == v19 && v26 == v20)
          {
            break;
          }

          v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v28)
          {
            goto LABEL_25;
          }

          v29 = *(v24 + 16);
          (*(*(v24 + 24) + 16))(v63);
          v30 = v70;

          sub_100027BE4(v63);
          v54 = &v39;
          v57[0] = v19;
          v57[1] = v20;
          __chkstk_darwin();
          v37 = v57;
          v31 = sub_100083AB4(sub_10002EFA8, (&v39 - 4), v30);

          if (v31)
          {
            goto LABEL_25;
          }

          ++v23;
          if (v55 == v51)
          {
            goto LABEL_31;
          }
        }

LABEL_25:

        v55 = *(v24 + 16);
        v16 = v49;
        v33 = *(v49 + 2);
        v32 = *(v49 + 3);
        v11 = v45;
        if (v33 >= v32 >> 1)
        {
          v16 = sub_100043048((v32 > 1), v33 + 1, 1, v49);
        }

        *(v16 + 2) = v33 + 1;
        *&v16[16 * v33 + 32] = v55;
        v10 = v24;
        v17 = v50;
        if (v50 == v44)
        {
          v36 = v39;
          sub_10004BA18(v11, v39, 0);

          v14 = v41;
          v13 = v42;
          LOBYTE(v15) = v40;
          goto LABEL_33;
        }
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    sub_100066F1C(v11, v12, 0);
    sub_10004FDF8(v13, v14, v15);

    v36 = v12;
LABEL_33:
    LOBYTE(v57[0]) = 0;
    v56 = v15;
    *(a2 + 24) = &type metadata for HelpCommand;
    *(a2 + 32) = sub_100028988();
    v35 = swift_allocObject();
    *a2 = v35;
    *(v35 + 16) = v11;
    *(v35 + 24) = v36;
    *(v35 + 32) = v57[0];
    *(v35 + 40) = v13;
    *(v35 + 48) = v14;
    *(v35 + 56) = v56;
    *(v35 + 64) = v16;
    *(v35 + 72) = v43;

    sub_100002B38(v59);
    sub_10004BA18(v11, v36, 0);
    sub_1000022C8(v13, v14, v15);

LABEL_34:
    *(a2 + 89) = 0;
    return result;
  }

LABEL_38:
  v38 = 0;
  v37 = 79;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100063DA0()
{
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v2 = *((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return swift_weakAssign();
}

uint64_t sub_100063E54@<X0>(uint64_t a1@<X0>, int64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  result = sub_100066A98(a1, a2, a3, 0, a4, a5);
  if (v6)
  {
    return result;
  }

  result = sub_100070064(a1, a2);
  if (result)
  {
    v13 = *(a1 + 16);
    if (v13 < a2)
    {
LABEL_30:
      __break(1u);
    }

    else if ((a2 & 0x8000000000000000) == 0)
    {
      v14 = v13 + 1;
      v15 = a1 + (a2 << 6) + 8;
      while (a2 != --v14)
      {
        v16 = v15 + 64;
        v17 = *(v15 + 40);
        v15 += 64;
        if ((v17 & 0x6000000000000000) == 0)
        {
          v18 = *(v16 - 40);
          v19 = *(v16 - 32);
          v20 = *v16;
          v21 = *(v16 + 8);
          v22 = *(v16 + 16);
          LOBYTE(v41) = 0;
          sub_10002A1BC();
          swift_allocError();
          *v23 = v20;
          *(v23 + 8) = v21;
          *(v23 + 16) = v22;
          *(v23 + 17) = v41;
          *(v23 + 24) = v18;
          *(v23 + 32) = v19;
          v24 = *&v36[16];
          *(v23 + 41) = *v36;
          *(v23 + 40) = v17;
          *(v23 + 57) = v24;
          *(v23 + 72) = *&v36[31];
          *(v23 + 80) = 4;
          swift_willThrow();
          return sub_10002BB8C(v18, v19, v17);
        }
      }

      v30 = sub_10006D110(a1, a2, a3);
      sub_10002A1BC();
      swift_allocError();
      *v31 = v30;
      *(v31 + 8) = *v36;
      v32 = *&v36[16];
      v33 = *&v36[32];
      v34 = v37;
      *(v31 + 72) = v38;
      *(v31 + 56) = v34;
      *(v31 + 40) = v33;
      *(v31 + 24) = v32;
      *(v31 + 80) = 9;
      return swift_willThrow();
    }

    __break(1u);
    goto LABEL_32;
  }

  v25 = *(a5 + 16);
  v44 = a5;

  if (!v25)
  {
LABEL_24:
    memset(v36, 0, 40);
LABEL_25:

    if (*&v36[24])
    {
      return sub_100040F6C(v36, a6);
    }

    sub_100002BCC(v36, &qword_1000B5C70, &qword_100094208);
    sub_10002A1BC();
    swift_allocError();
    *v35 = 3;
    *(v35 + 8) = 0u;
    *(v35 + 24) = 0u;
    *(v35 + 40) = 0u;
    *(v35 + 56) = 0u;
    *(v35 + 72) = 0;
    *(v35 + 80) = 15;
    return swift_willThrow();
  }

  v26 = v44 + 48;
  v27 = v25;
  while (1)
  {
    sub_10002F35C(v26, &v39);
    sub_1000021C0(&qword_1000B59D0, &qword_100093060);
    sub_1000021C0(&qword_1000B55E8, &qword_100092588);
    if (swift_dynamicCast())
    {
      break;
    }

    v43 = 0;
    v41 = 0u;
    v42 = 0u;
LABEL_12:
    sub_100002BCC(&v41, &qword_1000B5C70, &qword_100094208);
    v26 += 56;
    if (!--v27)
    {
      goto LABEL_24;
    }
  }

  if (!*(&v42 + 1))
  {
    goto LABEL_12;
  }

  sub_100002BCC(&v41, &qword_1000B5C70, &qword_100094208);
  v28 = v25 - 1;
  v29 = v44 + 56 * v25 - 8;
  while (1)
  {
    sub_10002F35C(v29, &v39);
    if (swift_dynamicCast())
    {
      break;
    }

    v43 = 0;
    v41 = 0u;
    v42 = 0u;
LABEL_17:
    result = sub_100002BCC(&v41, &qword_1000B5C70, &qword_100094208);
    --v28;
    v29 -= 56;
    if (v28 >= v25)
    {
      __break(1u);
      goto LABEL_30;
    }
  }

  if (!*(&v42 + 1))
  {
    goto LABEL_17;
  }

  sub_100002BCC(&v41, &qword_1000B5C70, &qword_100094208);
  sub_10002F35C(v29, &v39);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
  }

  result = sub_10002600C(&v41, &v39, &qword_1000B5C70, &qword_100094208);
  if (v40)
  {
    sub_100040F6C(&v39, v36);
    sub_100002BCC(&v41, &qword_1000B5C70, &qword_100094208);
    goto LABEL_25;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000642B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = *(v5 + 8);

  v48 = v4;
  v49 = v5;
  v50 = sub_10004C130(v4, v9, 2, 0, 0, 0);
  v51 = v10;
  v52 = v7;
  v53 = v6;
  v54 = v8;
  sub_100061248(&v55);
  if (v40)
  {
  }

  else
  {

    if (sub_10004E040(*(v3 + 16), *(v3 + 24)))
    {
      sub_100066A98(v56, *(&v56 + 1), v57, 0, v3, *(v39 + 16));
    }

    v12 = *(v39 + 16);
    v13 = type metadata accessor for ArgumentDecoder();
    v14 = swift_allocObject();
    *(v14 + 64) = 0;
    *(v14 + 72) = _swiftEmptyArrayStorage;
    *(v14 + 80) = _swiftEmptyArrayStorage;

    *(v14 + 88) = sub_100075204(_swiftEmptyArrayStorage);
    v15 = v56;
    *(v14 + 16) = v55;
    *(v14 + 32) = v15;
    *(v14 + 48) = v57;
    swift_beginAccess();
    v16 = *(v14 + 72);
    *(v14 + 72) = v12;

    *(v14 + 56) = &_swiftEmptySetSingleton;
    v18 = *(v3 + 16);
    v17 = *(v3 + 24);
    v46 = v13;
    v47 = sub_10006700C();
    v45 = v14;
    *(&v42 + 1) = v18;
    *&v43 = v17;
    sub_100007DE4(&v41);
    v19 = *(*(v17 + 8) + 8);

    dispatch thunk of Decodable.init(from:)();
    sub_100040F6C(&v41, a2);
    swift_beginAccess();
    v20 = *(v14 + 56);

    sub_100068908(v21);

    v22 = *(v14 + 72);

    v24 = sub_100065630(v23, v39);

    sub_100041A18(v24);
    v25 = *(v3 + 16);
    v26 = *(*(v3 + 24) + 8);
    v27 = a2[3];
    v28 = a2[4];
    v29 = sub_100002AA0(a2, v27);
    *(&v43 + 1) = v27;
    v44 = *(v28 + 8);
    v30 = sub_100007DE4(&v42);
    (*(*(v27 - 8) + 16))(v30, v29, v27);
    *&v41 = v25;
    *(&v41 + 1) = v26;
    v31 = *(v39 + 16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_100043A20(0, *(v31 + 2) + 1, 1, v31);
    }

    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    if (v33 >= v32 >> 1)
    {
      v31 = sub_100043A20((v32 > 1), v33 + 1, 1, v31);
    }

    *(v31 + 2) = v33 + 1;
    v34 = &v31[56 * v33];
    v35 = v41;
    v36 = v42;
    v37 = v43;
    *(v34 + 10) = v44;
    *(v34 + 3) = v36;
    *(v34 + 4) = v37;
    *(v34 + 2) = v35;
    *(v39 + 16) = v31;
  }

  return result;
}

uint64_t sub_100064724(uint64_t *a1)
{
  v3 = v1;
  v4 = a1;
  result = sub_1000642B4(a1, v91);
  v6 = v2;
  if (!v2)
  {
    v76 = v4;
    v81 = v1;
    while (1)
    {
      v8 = v92;
      v7 = v93;
      sub_100006190(v91, v92);
      result = (*(*(v7 + 8) + 24))(v8);
      v9 = v6;
      if (v6)
      {
        break;
      }

      v10 = *(v3 + 16);
      if (!*(v10 + 2))
      {
        goto LABEL_64;
      }

      v11 = *(v3 + 16);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v12 = *(v10 + 2);
        if (!v12)
        {
          goto LABEL_65;
        }
      }

      else
      {
        result = sub_10005888C(v10);
        v10 = result;
        v12 = *(result + 16);
        if (!v12)
        {
          goto LABEL_65;
        }
      }

      *(v10 + 2) = v12 - 1;
      v13 = &v10[56 * v12];
      v14 = *(v13 - 24);
      v15 = *(v13 - 8);
      v16 = *(v13 + 8);
      *&v89 = *(v13 + 3);
      v88 = v16;
      v86 = v14;
      v87 = v15;
      v17 = v92;
      v18 = v93;
      v19 = sub_100002AA0(v91, v92);
      *(&v83 + 1) = v17;
      *&v84 = *(v18 + 8);
      v20 = sub_100007DE4(&v82);
      (*(*(v17 - 8) + 16))(v20, v19, v17);
      sub_100002B38(&v87);
      sub_100040F6C(&v82, &v87);
      sub_100058E3C(&v86, &v82);
      v22 = *(v10 + 2);
      v21 = *(v10 + 3);
      if (v22 >= v21 >> 1)
      {
        v10 = sub_100043A20((v21 > 1), v22 + 1, 1, v10);
      }

      *(v10 + 2) = v22 + 1;
      v23 = &v10[56 * v22];
      v24 = v82;
      v25 = v83;
      v26 = v84;
      *(v23 + 10) = v85;
      *(v23 + 3) = v25;
      *(v23 + 4) = v26;
      *(v23 + 2) = v24;
      v27 = v81;
      *(v81 + 16) = v10;
      sub_100058E74(&v86);
      v28 = *(v27 + 8);
      v29 = v4[1];
      v30 = v4[2];
      v31 = *v4;
      sub_10006FF78(v31, v29, v94);
      v101 = v28;
      if ((v96 & 0x7FFFFFFFFFFFFF3ELL) == 0x7FFFFFF3ELL)
      {
        goto LABEL_34;
      }

      if ((v96 & 0x6000000000000000) != 0x2000000000000000)
      {
        sub_100002BCC(v94, &qword_1000B5C80, &qword_100094210);
        goto LABEL_34;
      }

      v32 = v94[0];
      v33 = v95;
      result = sub_100002BCC(v94, &qword_1000B5C80, &qword_100094210);
      if (v33)
      {
        goto LABEL_34;
      }

      if ((v32 & 0x8000000000000000) != 0)
      {
        goto LABEL_68;
      }

      if (v32 >= *(v30 + 16))
      {
LABEL_69:
        __break(1u);
        return result;
      }

      v34 = v30 + 16 * v32;
      v36 = *(v34 + 32);
      v35 = *(v34 + 40);
      v74 = v36;
      v75 = v35;
      swift_beginAccess();
      v79 = v28[5];
      if (v79 >> 62)
      {
        v37 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v37 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v68 = v31;
      v69 = v30;

      if (!v37)
      {
LABEL_33:

        v31 = v68;
        v30 = v69;
LABEL_34:
        sub_100066A98(v31, v29, v30, 1, v28, v10);
        v52 = v28[2];
        (*(v28[3] + 16))(v99);
        sub_100027BE4(v99);
        v53 = v100;
        if (v100)
        {
          swift_beginAccess();
          v54 = v28[5];
          v80 = 0;
          if (v54 >> 62)
          {
            v55 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v55)
          {
            v56 = 0;
            do
            {
              if ((v54 & 0xC000000000000001) != 0)
              {
                result = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v57 = result;
                v58 = v56 + 1;
                if (__OFADD__(v56, 1))
                {
                  goto LABEL_62;
                }
              }

              else
              {
                if (v56 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_63;
                }

                v57 = *(v54 + 8 * v56 + 32);

                v58 = v56 + 1;
                if (__OFADD__(v56, 1))
                {
LABEL_62:
                  __break(1u);
LABEL_63:
                  __break(1u);
LABEL_64:
                  __break(1u);
LABEL_65:
                  __break(1u);
LABEL_66:
                  __break(1u);
LABEL_67:
                  __break(1u);
LABEL_68:
                  __break(1u);
                  goto LABEL_69;
                }
              }

              if (*(v57 + 16) == v53)
              {

                v3 = v81;
                *(v81 + 8) = v57;
                sub_100002B38(v91);
                v9 = v80;
                v4 = v76;
                goto LABEL_49;
              }

              ++v56;
            }

            while (v58 != v55);
          }

          sub_10002A1BC();
          swift_allocError();
          *v59 = 3;
          *(v59 + 8) = 0u;
          *(v59 + 24) = 0u;
          *(v59 + 40) = 0u;
          *(v59 + 56) = 0u;
          *(v59 + 72) = 0;
          *(v59 + 80) = 15;
LABEL_58:
          swift_willThrow();
        }

        return sub_100002B38(v91);
      }

      v38 = 0;
      v72 = v79 & 0xFFFFFFFFFFFFFF8;
      v73 = v79 & 0xC000000000000001;
      v70 = v37;
      v71 = v29;
      while (1)
      {
        if (v73)
        {
          result = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v39 = result;
          v40 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (v38 >= *(v72 + 16))
          {
            goto LABEL_67;
          }

          v39 = *(v79 + 8 * v38 + 32);

          v40 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_66;
          }
        }

        v41 = *(v39 + 16);
        v42 = *(v39 + 24);
        v80 = v39;
        v43 = (*(v42 + 24))();
        v45 = v74;
        v46 = v75;
        if (v43 == v74 && v44 == v75)
        {
          break;
        }

        v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v48)
        {
          goto LABEL_52;
        }

        v77 = v40;
        v49 = *(v80 + 16);
        (*(*(v80 + 24) + 16))(v97);
        v50 = v97[18];

        sub_100027BE4(v97);
        v78 = &v67;
        *&v86 = v45;
        *(&v86 + 1) = v46;
        __chkstk_darwin();
        *(&v67 - 2) = &v86;
        v51 = sub_100083AB4(sub_10002F224, (&v67 - 4), v50);

        if (v51)
        {
          goto LABEL_52;
        }

        ++v38;
        v29 = v71;
        v28 = v101;
        if (v77 == v70)
        {
          goto LABEL_33;
        }
      }

      v79 = v46;
LABEL_52:

      v4 = v76;
      sub_10006D038(v98);
      sub_100002BCC(v98, &qword_1000B5C88, &qword_100094218);

      v3 = v81;
      *(v81 + 8) = v80;
      sub_100002B38(v91);
LABEL_49:
      result = sub_1000642B4(v4, v91);
      v6 = v9;
      if (v9)
      {
        return result;
      }
    }

    v60 = *(v3 + 8);
    v61 = *(v3 + 16);
    sub_100066A98(*v4, v4[1], v4[2], 0, v60, v61);
    v62 = sub_1000667A8(v60, v61);
    sub_10004FD40();
    swift_allocError();
    *v63 = v62;
    *(v63 + 8) = v6;
    v64 = v90;
    v65 = v89;
    *(v63 + 48) = v88;
    *(v63 + 64) = v65;
    *(v63 + 80) = v64;
    v66 = v87;
    *(v63 + 16) = v86;
    *(v63 + 32) = v66;
    *(v63 + 88) = 13;
    goto LABEL_58;
  }

  return result;
}

uint64_t sub_100064EB0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 16);
  (*(*(a2 + 24) + 16))(v42);
  v44[0] = v43;
  sub_10002600C(v44, &v30, &qword_1000B51D8, &qword_100094230);
  sub_100027BE4(v42);
  if (*(&v44[0] + 1))
  {
    return sub_100002BCC(v44, &qword_1000B51D8, &qword_100094230);
  }

  v10 = sub_1000670B4();
  v39 = sub_100065C18(&type metadata for GenerateCompletions, v10);
  v40 = v11;
  v41 = v12;
  sub_1000642B4(a1, &v30);
  if (v4)
  {
  }

  else
  {
    sub_1000021C0(&qword_1000B55E8, &qword_100092588);
    if (swift_dynamicCast())
    {
      v13 = v36;
      v14 = v37;
      v15 = v38;
      v16 = sub_1000667A8(a3, a4);
      if ((v15 & 1) == 0)
      {
        v17 = v16;
        sub_10004FD40();
        swift_allocError();
        *v18 = v17;
        *(v18 + 8) = v13;
        *(v18 + 16) = v14;
        v20 = v32;
        v19 = v33;
        v21 = v30;
        *(v18 + 40) = v31;
        *(v18 + 24) = v21;
        *(v18 + 56) = v20;
        *(v18 + 72) = v19;
        *(v18 + 88) = 1;
        swift_willThrow();
      }

      goto LABEL_14;
    }
  }

  v22 = sub_100067108();
  v36 = sub_100065C18(&type metadata for AutodetectedGenerateCompletions, v22);
  v37 = v23;
  v38 = v24;
  sub_1000642B4(a1, &v30);
  sub_1000021C0(&qword_1000B55E8, &qword_100092588);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
  }

  if ((v35 & 1) == 0)
  {
    if (v34)
    {
      v25 = sub_1000667A8(a3, a4);
      sub_10004FD40();
      swift_allocError();
      *(v26 + 8) = 0;
      *(v26 + 16) = 0;
      *v26 = v25;
      v28 = v32;
      v27 = v33;
      v29 = v31;
      *(v26 + 24) = v30;
      *(v26 + 56) = v28;
      *(v26 + 40) = v29;
      *(v26 + 72) = v27;
      *(v26 + 88) = 1;
      swift_willThrow();
    }

    goto LABEL_12;
  }

LABEL_14:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100065290(uint64_t a1)
{
  v2 = sub_1000676E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000652CC(uint64_t a1)
{
  v2 = sub_1000676E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100065308@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10003AD7C(&off_1000ABFF0);
  sub_10003AF24(&unk_1000AC010);

  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  result = 0.0;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 96) = -1;
  *a1 = sub_10006759C;
  *(a1 + 8) = v3;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_1000653F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x80000001000994E0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_100065484(uint64_t a1)
{
  v2 = sub_1000674E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000654C0(uint64_t a1)
{
  v2 = sub_1000674E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000654FC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10003AD7C(&off_1000AC028);
  sub_10003AF24(&unk_1000AC048);

  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  result = 0.0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0;
  *a1 = sub_1000674D0;
  *(a1 + 8) = v3;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_1000655D8@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_100065610@<X0>(uint64_t a1@<X7>, void *a2@<X8>, uint64_t a3)
{
  *a2 = a1;
  a2[1] = a3;
}

void *sub_100065630(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = 0;
    v20 = a1 + 32;
    v5 = _swiftEmptyArrayStorage;
LABEL_7:
    v12 = v20 + 56 * v4++;
    sub_100058E3C(v12, v25);
    v13 = *(a2 + 16);
    v14 = *(v13 + 16);

    result = (v13 + 32);
    v16 = -1;
    while (1)
    {
      if (v16 - v14 == -1)
      {

        v21 = v25[0];
        v22 = v25[1];
        v23 = v25[2];
        v24 = v26;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10004E8E0(0, v5[2] + 1, 1);
          v5 = v27;
        }

        v7 = v5[2];
        v6 = v5[3];
        if (v7 >= v6 >> 1)
        {
          sub_10004E8E0((v6 > 1), v7 + 1, 1);
          v5 = v27;
        }

        v5[2] = v7 + 1;
        v8 = &v5[7 * v7];
        v9 = v21;
        v10 = v22;
        v11 = v23;
        v8[10] = v24;
        *(v8 + 3) = v10;
        *(v8 + 4) = v11;
        *(v8 + 2) = v9;
LABEL_6:
        if (v4 == v2)
        {
          return v5;
        }

        goto LABEL_7;
      }

      if (++v16 >= *(v13 + 16))
      {
        break;
      }

      v17 = result + 7;
      sub_100058E3C(result, &v21);
      v18 = v21;
      sub_100058E74(&v21);
      result = v17;
      if (v18 == *&v25[0])
      {

        sub_100058E74(v25);
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
    return _swiftEmptyArrayStorage;
  }

  return result;
}

void *sub_1000657F0(uint64_t *a1)
{
  v3 = sub_1000021C0(&qword_1000B5CF8, &qword_100094488);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v12 = &_swiftEmptySetSingleton;
  sub_10003AD7C(&off_1000AC268);
  sub_10003AF24(&unk_1000AC288);

  v8 = a1[4];
  v9 = sub_100002AA0(a1, a1[3]);
  sub_1000676E0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {

    sub_100002B38(a1);
  }

  else
  {
    sub_1000021C0(&qword_1000B5D08, &qword_100094490);
    sub_10000BD8C(&qword_1000B5D10, &qword_1000B5D08, &qword_100094490);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);

    v9 = v12;
    sub_100002B38(a1);
  }

  return v9;
}

void *sub_100065A04(uint64_t *a1)
{
  v3 = sub_1000021C0(&qword_1000B5CD8, &qword_100094470);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v12 = &_swiftEmptySetSingleton;
  sub_10003AD7C(&off_1000AC2A0);
  sub_10003AF24(&unk_1000AC2C0);

  v8 = a1[4];
  v9 = sub_100002AA0(a1, a1[3]);
  sub_1000674E0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {

    sub_100002B38(a1);
  }

  else
  {
    sub_1000021C0(&qword_1000B5CE8, &unk_100094478);
    sub_10000BD8C(&qword_1000B5CF0, &qword_1000B5CE8, &unk_100094478);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);

    v9 = v12;
    sub_100002B38(a1);
  }

  return v9;
}

uint64_t sub_100065C18(uint64_t a1, uint64_t a2)
{
  v2 = sub_100085194(a1, a2);
  swift_beginAccess();
  v3 = *(v2 + 40);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v6 = *(v2 + 40);
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_7:

    return v2;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = sub_100028988();
  sub_1000021C0(&qword_1000B59C0, &unk_100093050);
  v5 = swift_allocObject();
  swift_weakInit();
  v5[2] = &type metadata for HelpCommand;
  v5[3] = v4;
  swift_weakAssign();
  v5[5] = _swiftEmptyArrayStorage;

  sub_100063DA0();

  return v2;
}

void *sub_100065F38(void *result, uint64_t a2)
{
  v4 = result[2];
  if (!v4)
  {
    return result;
  }

  v6 = (result + 4);
  if (result[4] != 0x6C706D6F632D2D2DLL || result[5] != 0xED00006E6F697465)
  {
    v8 = result;
    v9 = result[4];
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = v8;
    if ((v10 & 1) == 0)
    {
      return result;
    }
  }

  v87 = v2;
  v65 = result;
  v66 = v6;
  v67 = 1;
  v68 = (2 * v4) | 1;

  v11 = &v65;
  v12 = sub_10006CE68();
  if (!v13)
  {
LABEL_41:
    v6 = a2;
    goto LABEL_42;
  }

  v14 = v12;
  v15 = v13;
  do
  {
    v16 = v14 == 11565 && v15 == 0xE200000000000000;
    if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      goto LABEL_41;
    }

    swift_beginAccess();
    v17 = *(a2 + 40);
    v59[1] = a2;
    if (v17 >> 62)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v18)
    {
LABEL_39:

      sub_10002A1BC();
      swift_allocError();
      *v26 = 3;
      *(v26 + 8) = 0u;
      *(v26 + 24) = 0u;
      *(v26 + 40) = 0u;
      *(v26 + 56) = 0u;
      *(v26 + 72) = 0;
      *(v26 + 80) = 15;
      swift_willThrow();
      goto LABEL_68;
    }

    v19 = 0;
    v60 = v17 & 0xFFFFFFFFFFFFFF8;
    v61 = v17 & 0xC000000000000001;
    while (1)
    {
      if (v61)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v3 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_70;
        }
      }

      else
      {
        if (v19 >= *(v60 + 16))
        {
          goto LABEL_71;
        }

        v6 = *(v17 + 8 * v19 + 32);

        v3 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }
      }

      v20 = *(v6 + 16);
      if ((*(*(v6 + 24) + 24))() == v14 && v15 == v21)
      {

LABEL_34:

        goto LABEL_36;
      }

      v63 = v3;
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v3)
      {

        goto LABEL_34;
      }

      v23 = *(v6 + 16);
      (*(*(v6 + 24) + 16))(v69);
      v11 = v69[18];

      sub_100027BE4(v69);
      v62 = v59;
      *&v64[0] = v14;
      *(&v64[0] + 1) = v15;
      __chkstk_darwin();
      v59[-2] = v64;
      v24 = v87;
      v3 = sub_100083AB4(sub_10002F224, &v59[-4], v11);
      v87 = v24;

      if (v3)
      {
        break;
      }

      ++v19;
      if (v63 == v18)
      {
        goto LABEL_39;
      }
    }

LABEL_36:

    v11 = &v65;
    v14 = sub_10006CE68();
    v15 = v25;
    a2 = v6;
  }

  while (v25);
LABEL_42:
  v27 = sub_10006CE68();
  if (v28)
  {
    v14 = v27;
    v11 = v28;
    v15 = v65;
    v29 = v66;
    v17 = v67;
    v3 = v68;
    if (v68)
    {
      v63 = v66;
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v32 = swift_dynamicCastClass();
      if (!v32)
      {
        swift_unknownObjectRelease();
        v32 = _swiftEmptyArrayStorage;
      }

      v33 = v32[2];

      if (__OFSUB__(v3 >> 1, v17))
      {
        goto LABEL_73;
      }

      if (v33 != (v3 >> 1) - v17)
      {
        goto LABEL_74;
      }

      v31 = swift_dynamicCastClass();
      if (!v31)
      {
        swift_unknownObjectRelease();
        v31 = _swiftEmptyArrayStorage;
      }

      goto LABEL_51;
    }

    while (1)
    {
      sub_10004E638(v15, v29, v17, v3);
      v31 = v30;
LABEL_51:
      v17 = sub_10004C130(*(v6 + 16), *(*(v6 + 24) + 8), 2, 0, 0, 0);
      v35 = v34;
      v36 = v87;
      v37 = sub_10006D8FC(v14, v11, 0);
      if (v36)
      {
        goto LABEL_76;
      }

      v15 = v37;
      if (!*(v37 + 16))
      {

        __break(1u);
LABEL_76:
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v63 = v35;
      v87 = v31;

      if (v15[2])
      {
        break;
      }

LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      swift_unknownObjectRelease();
      v29 = v63;
    }

    v38 = v15[4];
    v39 = v15[5];
    v40 = v15[6];
    v41 = v15[7];
    v42 = v15[8];
    sub_100066FA0(v38, v39, v40);

    v43 = (v40 >> 61) & 3;
    if (v43)
    {
      if (v43 == 1 && (v44 = sub_10006832C(v38, v39), v45))
      {
        sub_10005E084(v71, v44);

        v79 = v71[9];
        v80 = v71[10];
        v81 = v71[11];
        v77[4] = v71[4];
        v77[5] = v71[5];
        v77[6] = v71[6];
        v77[7] = v71[7];
        v78 = v71[8];
        v77[0] = v71[0];
        v77[1] = v71[1];
        v77[2] = v71[2];
        v77[3] = v71[3];
        if (sub_10002F07C(v77) != 1)
        {
          v82 = v78;
          v46 = v79;
          v83 = v79;
          v47 = v78;
          sub_10006715C(&v82, v64);
          sub_100002BCC(v71, &qword_1000B5208, &qword_1000914C0);
          if (v46 != 3)
          {
            v48 = &v82;
            goto LABEL_65;
          }

LABEL_62:

          v50 = v47(v87);

          *&v64[0] = v50;
          sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
          sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0);
          v51 = BidirectionalCollection<>.joined(separator:)();
          v53 = v52;

          sub_10002A1BC();
          swift_allocError();
          *v54 = v51;
          *(v54 + 8) = v53;
          v55 = v64[3];
          v56 = v64[2];
          v57 = v64[1];
          *(v54 + 16) = v64[0];
          *(v54 + 32) = v57;
          *(v54 + 48) = v56;
          *(v54 + 64) = v55;
          *(v54 + 80) = 2;
          swift_willThrow();

          goto LABEL_68;
        }
      }

      else
      {
      }
    }

    else
    {
      v86[0] = v38;
      v86[1] = v39;
      v86[2] = v40;
      v86[3] = v41;
      v86[4] = v42;
      sub_10005DF24(v70, v86, v17, v63);

      sub_100058C08(v38, v39, v40);
      v73 = v70[8];
      v74 = v70[9];
      v75 = v70[10];
      v76 = v70[11];
      v72[4] = v70[4];
      v72[5] = v70[5];
      v72[6] = v70[6];
      v72[7] = v70[7];
      v72[0] = v70[0];
      v72[1] = v70[1];
      v72[2] = v70[2];
      v72[3] = v70[3];
      if (sub_10002F07C(v72) != 1)
      {
        v84 = v73;
        v49 = v74;
        v85 = v74;
        v47 = v73;
        sub_10006715C(&v84, v64);
        sub_100002BCC(v70, &qword_1000B5208, &qword_1000914C0);
        if (v49 == 3)
        {
          goto LABEL_62;
        }

        v48 = &v84;
LABEL_65:
        sub_1000671B8(v48);
      }
    }
  }

  sub_10002A1BC();
  swift_allocError();
  *v58 = 3;
  *(v58 + 8) = 0u;
  *(v58 + 24) = 0u;
  *(v58 + 40) = 0u;
  *(v58 + 56) = 0u;
  *(v58 + 72) = 0;
  *(v58 + 80) = 15;
  swift_willThrow();
LABEL_68:

  return swift_unknownObjectRelease();
}

char *sub_1000667A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = a2 + 32;
    v5 = _swiftEmptyArrayStorage;
    do
    {
      sub_100058E3C(v4, v17);
      v7 = v17[0];
      sub_100058E74(v17);
      v8 = swift_conformsToProtocol2();
      if (v8)
      {
        v9 = v7 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        v10 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_100043048(0, *(v5 + 2) + 1, 1, v5);
        }

        v12 = *(v5 + 2);
        v11 = *(v5 + 3);
        if (v12 >= v11 >> 1)
        {
          v5 = sub_100043048((v11 > 1), v12 + 1, 1, v5);
        }

        *(v5 + 2) = v12 + 1;
        v6 = &v5[16 * v12];
        *(v6 + 4) = v7;
        *(v6 + 5) = v10;
      }

      v4 += 56;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v13 = *(v5 + 2);
  if (!v13 || *(a1 + 16) != *&v5[16 * v13 + 16])
  {
    v16 = *(a1 + 16);
    sub_1000021C0(&qword_1000B5190, &qword_100092750);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10008E640;
    *(inited + 32) = v16;
    v17[0] = v5;
    sub_100041744(inited);
    return v17[0];
  }

  return v5;
}

uint64_t sub_100066928(uint64_t result, uint64_t a2, uint64_t a3)
{
  v13[0] = result;
  v3 = *(a2 + 16);
  if (v3 < a3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = a3;
  if (a3 < 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (v3 != a3)
  {
    v5 = (a2 + (a3 << 6) + 64);
    while (v4 < v3)
    {
      v6 = *(v5 - 2);
      if ((v6 & 0x6000000000000000) == 0)
      {
        v13[1] = v13;
        v8 = *(v5 - 1);
        v7 = *v5;
        v9 = *(v5 - 3);
        v14[0] = *(v5 - 4);
        v10 = v14[0];
        v14[1] = v9;
        v15 = v6;
        __chkstk_darwin();
        v12[2] = v14;
        sub_100066FA0(v10, v9, v6);
        sub_10002BB8C(v10, v9, v6);
        v11 = sub_100083C24(sub_100066F80, v12, v13[0]);
        sub_100028AE8(v10, v9, v6);
        result = sub_100058C08(v10, v9, v6);
        if (v11)
        {
          return 1;
        }
      }

      ++v4;
      v5 += 8;
      if (v3 == v4)
      {
        return 0;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return 0;
}

uint64_t sub_100066A98(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v37 = a5;
  v8 = result;
  if ((a4 & 1) == 0 || *(a3 + 16) == 1)
  {
    v9 = sub_1000667A8(v37, a6);
    v10 = sub_10002DE7C(0, v9);

    v11 = sub_100066928(v10, v8, a2);

    if (v11)
    {
      sub_100066F2C();
      swift_allocError();
      *v12 = 0;
      return swift_willThrow();
    }

    v33 = a6;
    v13 = sub_1000667A8(v37, a6);
    v14 = sub_10002DE7C(1, v13);

    v15 = sub_100066928(v14, v8, a2);

    if (v15)
    {
      sub_100066F2C();
      swift_allocError();
      *v16 = 1;
      return swift_willThrow();
    }

    v17 = *(v8 + 16);
    if (v17 >= a2)
    {
      if (a2 < 0)
      {
LABEL_46:
        __break(1u);
        return result;
      }

      if (v17 != a2)
      {
        v25 = (v8 + (a2 << 6) + 48);
        v26 = a2;
        while (1)
        {
          if (v26 >= v17)
          {
            __break(1u);
            goto LABEL_43;
          }

          if ((*v25 & 0x60000000000000C0) == 0)
          {
            if (*(v25 - 2) == 0xD000000000000016 && *(v25 - 1) == 0x80000001000993E0)
            {
              break;
            }

            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if (result)
            {
              break;
            }
          }

          ++v26;
          v25 += 8;
          if (v17 == v26)
          {
            goto LABEL_10;
          }
        }

        v28 = sub_1000667A8(v37, a6);
        sub_10004FD40();
        swift_allocError();
        *v29 = v28;
        *(v29 + 8) = 1;
        *(v29 + 16) = 0u;
        *(v29 + 32) = 0u;
        *(v29 + 48) = 0u;
        *(v29 + 64) = 0u;
        *(v29 + 80) = 0;
LABEL_28:
        *(v29 + 88) = 15;
        return swift_willThrow();
      }

LABEL_10:
      result = sub_1000667A8(v37, a6);
      v18 = result;
      v19 = *(result + 16);
      if (!v19)
      {
      }

      v20 = 0;
      v21 = result + 40;
      while (v20 < *(v18 + 16))
      {
        v22 = *(v21 - 8);
        (*(*v21 + 16))(v34);
        v36 = v35;
        v23 = v35;

        sub_100027BE4(v34);
        result = sub_1000186F4(&v36);
        v24 = HIBYTE(*(&v23 + 1)) & 0xFLL;
        if ((*(&v23 + 1) & 0x2000000000000000) == 0)
        {
          v24 = v23 & 0xFFFFFFFFFFFFLL;
        }

        if (v24)
        {

          if (v17 == a2)
          {
            return result;
          }

          v30 = (v8 + (a2 << 6) + 48);
          while (a2 < v17)
          {
            if ((*v30 & 0x60000000000000C0) == 0)
            {
              v31 = *(v30 - 2) == 0x6E6F6973726576 && *(v30 - 1) == 0xE700000000000000;
              if (v31 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
              {
                v32 = sub_1000667A8(v37, v33);
                sub_10004FD40();
                swift_allocError();
                *v29 = v32;
                *(v29 + 8) = 0u;
                *(v29 + 24) = 0u;
                *(v29 + 40) = 0u;
                *(v29 + 56) = 0u;
                *(v29 + 72) = 0u;
                goto LABEL_28;
              }
            }

            ++a2;
            v30 += 8;
            if (v17 == a2)
            {
              return result;
            }
          }

          goto LABEL_44;
        }

        ++v20;
        v21 += 16;
        if (v19 == v20)
        {
        }
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
    }

    __break(1u);
    goto LABEL_46;
  }

  return result;
}

uint64_t sub_100066E70()
{
  sub_10004BA18(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_1000022C8(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v1 = *(v0 + 64);

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_100066F1C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100066F2C()
{
  result = qword_1000B5C78;
  if (!qword_1000B5C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5C78);
  }

  return result;
}

uint64_t sub_100066FA0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = (a3 >> 61) & 3;
  if (v3 == 1)
  {
  }

  if (!v3)
  {
    return sub_100066FC0(result, a2, a3);
  }

  return result;
}

uint64_t sub_100066FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    sub_10002BB8C(a1, a2, a3);
  }

  else
  {

    return sub_10002BB8C(a1, a2, a3);
  }
}

unint64_t sub_10006700C()
{
  result = qword_1000B5C90;
  if (!qword_1000B5C90)
  {
    type metadata accessor for ArgumentDecoder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5C90);
  }

  return result;
}

void *sub_100067064(void *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    return _swift_slowDealloc(*result, *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)), *(v1 + 80) | 7);
  }

  return result;
}

unint64_t sub_1000670B4()
{
  result = qword_1000B5CA0;
  if (!qword_1000B5CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5CA0);
  }

  return result;
}

unint64_t sub_100067108()
{
  result = qword_1000B5CA8;
  if (!qword_1000B5CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5CA8);
  }

  return result;
}

void sub_10006720C()
{
  if (!qword_1000B5CB0)
  {
    v0 = _s19InitializationErrorOMa();
    if (!v1)
    {
      atomic_store(v0, &qword_1000B5CB0);
    }
  }
}

unint64_t sub_10006728C(uint64_t a1)
{
  result = sub_1000672B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000672B4()
{
  result = qword_1000B5CB8;
  if (!qword_1000B5CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5CB8);
  }

  return result;
}

unint64_t sub_100067308(uint64_t a1)
{
  result = sub_100067330();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100067330()
{
  result = qword_1000B5CC0;
  if (!qword_1000B5CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5CC0);
  }

  return result;
}

unint64_t sub_100067384(uint64_t a1)
{
  result = sub_1000673AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000673AC()
{
  result = qword_1000B5CC8;
  if (!qword_1000B5CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5CC8);
  }

  return result;
}

unint64_t sub_100067400(uint64_t a1)
{
  result = sub_100067428();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100067428()
{
  result = qword_1000B5CD0;
  if (!qword_1000B5CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5CD0);
  }

  return result;
}

uint64_t sub_10006747C()
{
  v1 = v0[2];

  if (v0[5])
  {

    v2 = v0[7];

    v3 = v0[9];
  }

  return _swift_deallocObject(v0, 81, 7);
}

unint64_t sub_1000674E0()
{
  result = qword_1000B5CE0;
  if (!qword_1000B5CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5CE0);
  }

  return result;
}

uint64_t sub_100067534()
{
  v1 = *(v0 + 16);

  if (*(v0 + 32))
  {

    v2 = *(v0 + 48);

    v3 = *(v0 + 64);
  }

  v4 = *(v0 + 96);
  if (v4 != 255)
  {
    sub_100032650(*(v0 + 80), *(v0 + 88), v4);
  }

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t sub_1000675D4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100067650()
{
  if (v0[2] >= 2uLL)
  {
  }

  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000676CC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_100032650(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_1000676E0()
{
  result = qword_1000B5D00;
  if (!qword_1000B5D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5D00);
  }

  return result;
}

unint64_t sub_100067760()
{
  result = qword_1000B5D18;
  if (!qword_1000B5D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5D18);
  }

  return result;
}

unint64_t sub_1000677B8()
{
  result = qword_1000B5D20;
  if (!qword_1000B5D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5D20);
  }

  return result;
}

unint64_t sub_100067810()
{
  result = qword_1000B5D28;
  if (!qword_1000B5D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5D28);
  }

  return result;
}

unint64_t sub_100067868()
{
  result = qword_1000B5D30;
  if (!qword_1000B5D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5D30);
  }

  return result;
}

unint64_t sub_1000678C0()
{
  result = qword_1000B5D38;
  if (!qword_1000B5D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5D38);
  }

  return result;
}

unint64_t sub_100067918()
{
  result = qword_1000B5D40;
  if (!qword_1000B5D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5D40);
  }

  return result;
}

Swift::Int sub_10006799C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = *(a3 + 16);
  Hasher._combine(_:)(v4);
  if (v4)
  {
    v5 = (a3 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      String.hash(into:)();

      v5 += 2;
      --v4;
    }

    while (v4);
  }

  return Hasher._finalize()();
}

void sub_100067A4C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  String.hash(into:)();
  Hasher._combine(_:)(*(v3 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      String.hash(into:)();

      v5 += 2;
      --v4;
    }

    while (v4);
  }
}

Swift::Int sub_100067AD0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v3 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      String.hash(into:)();

      v5 += 2;
      --v4;
    }

    while (v4);
  }

  return Hasher._finalize()();
}

uint64_t sub_100067B6C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return sub_100055CD4(v2, v3);
}

uint64_t sub_100067BE0(uint64_t a1, uint64_t a2)
{
  sub_1000021C0(&qword_1000B51D0, &qword_100092A50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008E640;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_100041830(inited);
  sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
  sub_10002BB28();
  v5 = BidirectionalCollection<>.joined(separator:)();

  return v5;
}

uint64_t sub_100067CC8(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v2 = a2;
    v3 = result;
    if (result)
    {
      v4 = *(a2 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = 0;
        v7 = a2 + 40;
        v33 = *(a2 + 16);
        v29 = v4 - 1;
        v8 = _swiftEmptyArrayStorage;
        v32 = _swiftEmptyArrayStorage;
        v30 = a2 + 40;
        while (1)
        {
          v31 = v6;
          v9 = (v7 + 16 * v5);
          while (1)
          {
            if (v5 >= *(v2 + 16))
            {
              __break(1u);
              goto LABEL_32;
            }

            v10 = *(v9 - 1);
            v11 = *v9;
            v12 = v5 + 1;
            v13 = v8[2];
            if (v13 >= v3)
            {
              break;
            }

            v14 = *v9;

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_10004E820(0, v13 + 1, 1);
            }

            v16 = v8[2];
            v15 = v8[3];
            if (v16 >= v15 >> 1)
            {
              result = sub_10004E820((v15 > 1), v16 + 1, 1);
            }

            v8[2] = v16 + 1;
            v17 = &v8[2 * v16];
            v17[4] = v10;
            v17[5] = v11;
            v9 += 2;
            v5 = v12;
            if (v33 == v12)
            {
              goto LABEL_29;
            }
          }

          if (v31 >= v13)
          {
            goto LABEL_33;
          }

          v18 = &v8[2 * v31];
          v19 = v18[5];
          v27 = v18[4];

          v28 = v19;

          v20 = v32;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10004E820(0, v32[2] + 1, 1);
            v20 = v32;
          }

          v22 = v20[2];
          v21 = v20[3];
          if (v22 >= v21 >> 1)
          {
            sub_10004E820((v21 > 1), v22 + 1, 1);
            v20 = v32;
          }

          v20[2] = v22 + 1;
          v32 = v20;
          v23 = &v20[2 * v22];
          v23[4] = v27;
          v23[5] = v28;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_100078CE4(v8);
            v8 = result;
          }

          v7 = v30;
          if (v31 >= v8[2])
          {
            goto LABEL_34;
          }

          v24 = &v8[2 * v31];
          v25 = v24[5];
          v24[4] = v10;
          v24[5] = v11;

          if ((v31 + 1) < v3)
          {
            v6 = v31 + 1;
          }

          else
          {
            v6 = 0;
          }

          if (v29 == v5++)
          {
            goto LABEL_29;
          }
        }
      }

      v32 = _swiftEmptyArrayStorage;
LABEL_29:

      return v32;
    }

    return v2;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_100067F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 32))(v8);
  v9 = dispatch thunk of CodingKey.stringValue.getter();
  v11 = v9;
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v10;
    v23 = v9;
    v25 = v3;
    v27 = _swiftEmptyArrayStorage;
    sub_10004E820(0, v12, 0);
    v13 = v27;
    v24 = a2;
    v14 = a2 + 32;
    do
    {
      sub_10002F35C(v14, v26);
      sub_100002AA0(v26, v26[3]);
      v15 = dispatch thunk of CodingKey.stringValue.getter();
      v17 = v16;
      sub_100002B38(v26);
      v27 = v13;
      v19 = v13[2];
      v18 = v13[3];
      if (v19 >= v18 >> 1)
      {
        sub_10004E820((v18 > 1), v19 + 1, 1);
        v13 = v27;
      }

      v13[2] = v19 + 1;
      v20 = &v13[2 * v19];
      v20[4] = v15;
      v20[5] = v17;
      v14 += 40;
      --v12;
    }

    while (v12);

    v3 = v25;
    v11 = v23;
  }

  else
  {
  }

  (*(v5 + 8))(v8, v3);
  return v11;
}

unint64_t sub_100068124(unint64_t result, uint64_t a2, unint64_t a3)
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
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

uint64_t sub_1000681D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    if (String.subscript.getter() == 95 && v9 == 0xE100000000000000)
    {
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v10 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    sub_100068124(1uLL, v7, a2);

    v7 = static String._fromSubstring(_:)();
  }

LABEL_9:
  if (a4)
  {
    sub_1000021C0(&qword_1000B51D0, &qword_100092A50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10008E640;
    *(inited + 32) = a3;
    *(inited + 40) = a4;
    sub_100041830(inited);
  }

  return v7;
}

uint64_t sub_10006832C(uint64_t a1, unint64_t a2)
{
  v23[0] = 46;
  v23[1] = 0xE100000000000000;
  v22[2] = v23;
  v2 = sub_10002E594(0x7FFFFFFFFFFFFFFFLL, 1, sub_10002A00C, v22, a1, a2, v23);
  v3 = v2[2];
  if (v3)
  {
    v23[0] = _swiftEmptyArrayStorage;
    result = sub_10004E820(0, v3, 0);
    v5 = 0;
    v6 = v23[0];
    v7 = v2 + 7;
    while (v5 < v2[2])
    {
      v8 = *(v7 - 3);
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;

      v12 = static String._fromSubstring(_:)();
      v14 = v13;

      v23[0] = v6;
      v16 = v6[2];
      v15 = v6[3];
      if (v16 >= v15 >> 1)
      {
        result = sub_10004E820((v15 > 1), v16 + 1, 1);
        v6 = v23[0];
      }

      ++v5;
      v6[2] = v16 + 1;
      v17 = &v6[2 * v16];
      v17[4] = v12;
      v17[5] = v14;
      v7 += 4;
      if (v3 == v5)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
LABEL_9:
    v18 = v6[2];
    if (v18)
    {
      v19 = &v6[2 * v18 + 2];
      v20 = *v19;
      v21 = v19[1];

      sub_100067CC8(1, v6);
    }

    else
    {

      return 0;
    }

    return v20;
  }

  return result;
}

unint64_t sub_100068500()
{
  result = qword_1000B5D48;
  if (!qword_1000B5D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5D48);
  }

  return result;
}

BOOL sub_100068564(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 17))
  {
    return 0;
  }

  if (*(a2 + 17))
  {
    return 1;
  }

  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a2 + 16);
  if (*(a1 + 16))
  {
    return (*(a2 + 16) & 1) == 0;
  }

  return (*(a2 + 16) & 1) == 0 && *(a1 + 8) < *(a2 + 8);
}

uint64_t sub_1000685EC(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if ((a6 & 0x100) == 0)
  {
    if ((a3 & 0x100) != 0 || a4 < a1)
    {
      return 0;
    }

    if (a4 == a1)
    {
      if (a6)
      {
        if ((a3 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((a3 & 1) == 0 && a5 < a2)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t sub_10006867C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if ((a3 & 0x100) == 0)
  {
    if ((a6 & 0x100) != 0 || a1 < a4)
    {
      return 0;
    }

    if (a1 == a4)
    {
      if (a3)
      {
        if ((a6 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((a6 & 1) == 0 && a2 < a5)
      {
        return 0;
      }
    }
  }

  return 1;
}

BOOL sub_1000686B8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 17))
  {
    return 0;
  }

  if (*(a1 + 17))
  {
    return 1;
  }

  if (*a2 < *a1)
  {
    return 1;
  }

  if (*a2 != *a1)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  if (*(a2 + 16))
  {
    return (*(a1 + 16) & 1) == 0;
  }

  return (*(a1 + 16) & 1) == 0 && *(a2 + 8) < *(a1 + 8);
}

Swift::Int sub_100068728()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  Hasher.init(_seed:)();
  if (v4 & 1) != 0 || (Hasher._combine(_:)(1uLL), Hasher._combine(_:)(v2), (v3))
  {
    v1 = 0;
  }

  else
  {
    Hasher._combine(_:)(1uLL);
  }

  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_1000687B4()
{
  if (*(v0 + 17) & 1) != 0 || (v1 = *(v0 + 16), v3 = *v0, v2 = *(v0 + 8), Hasher._combine(_:)(1uLL), Hasher._combine(_:)(v3), (v1))
  {
    v2 = 0;
  }

  else
  {
    Hasher._combine(_:)(1uLL);
  }

  Hasher._combine(_:)(v2);
}

Swift::Int sub_10006881C()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  Hasher.init(_seed:)();
  if (v4 & 1) != 0 || (Hasher._combine(_:)(1uLL), Hasher._combine(_:)(v2), (v3))
  {
    v1 = 0;
  }

  else
  {
    Hasher._combine(_:)(1uLL);
  }

  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

BOOL sub_1000688A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 17);
  if (*(a1 + 17))
  {
    return (*(a2 + 17) & 1) != 0;
  }

  if (*(a2 + 17))
  {
    return 0;
  }

  if (*a1 == *a2)
  {
    v4 = *(a2 + 16);
    if (*(a1 + 16))
    {
      if (*(a2 + 16))
      {
        return 1;
      }
    }

    else if ((*(a2 + 16) & 1) == 0 && *(a1 + 8) == *(a2 + 8))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_100068908(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(a1 + 48) + 24 * (v10 | (v8 << 6));
    if ((*(v11 + 17) & 1) == 0)
    {
      result = sub_10006EFF0(*v11, *(v11 + 8), *(v11 + 16) & 1);
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }
}

uint64_t sub_100068A00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100068C4C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100068A40(uint64_t result, uint64_t a2)
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
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v25 = result;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(result + 48) + 24 * (v10 | (v3 << 6));
    v14 = *v13;
    v27 = *(v13 + 8);
    v15 = *(v13 + 16);
    v16 = *(v13 + 17);
    v17 = *(a2 + 40);
    Hasher.init(_seed:)();
    if (v16 & 1) != 0 || (Hasher._combine(_:)(1uLL), Hasher._combine(_:)(v14), (v15))
    {
      v18 = 0;
    }

    else
    {
      Hasher._combine(_:)(1uLL);
      v18 = v27;
    }

    Hasher._combine(_:)(v18);
    v19 = Hasher._finalize()();
    v20 = -1 << *(a2 + 32);
    v21 = v19 & ~v20;
    if (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      return 0;
    }

    v22 = ~v20;
    while (1)
    {
      v23 = *(a2 + 48) + 24 * v21;
      if (*(v23 + 17))
      {
        if (v16)
        {
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (*v23 == v14)
      {
        v24 = v16;
      }

      else
      {
        v24 = 1;
      }

      if (v24)
      {
        goto LABEL_20;
      }

      if ((*(v23 + 16) & 1) == 0)
      {
        break;
      }

      if (v15)
      {
        goto LABEL_31;
      }

LABEL_20:
      v21 = (v21 + 1) & v22;
      if (((*(v9 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        return 0;
      }
    }

    if ((v15 & 1) != 0 || *(v23 + 8) != v27)
    {
      goto LABEL_20;
    }

LABEL_31:
    result = v25;
    v7 = v26;
  }

  while (v26);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v26 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100068C4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100062BE0();
  result = Set.init(minimumCapacity:)();
  v10 = result;
  if (v2)
  {
    v4 = (a1 + 49);
    do
    {
      v5 = *(v4 - 17);
      v6 = *(v4 - 9);
      v7 = *(v4 - 1);
      v8 = *v4;
      v4 += 24;
      sub_100056A44(v9, v5, v6, v7 | (v8 << 8));
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for InputOrigin.Element(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for InputOrigin.Element(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 18))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for InputOrigin.Element(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 18) = v3;
  return result;
}

uint64_t sub_100068D34(uint64_t a1)
{
  if (*(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100068D50(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 17) = 1;
  }

  else
  {
    *(result + 17) = 0;
  }

  return result;
}

unint64_t sub_100068D84()
{
  result = qword_1000B5D50;
  if (!qword_1000B5D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5D50);
  }

  return result;
}

unint64_t sub_100068DE4()
{
  result = qword_1000B5D58[0];
  if (!qword_1000B5D58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B5D58);
  }

  return result;
}

Swift::Int sub_100068EDC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  Hasher.init(_seed:)();
  if (!(a3 >> 6))
  {
    v4 = 0;
LABEL_6:
    Hasher._combine(_:)(v4);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  if (a3 >> 6 != 1)
  {
    v4 = 2;
    goto LABEL_6;
  }

  Hasher._combine(_:)(1uLL);
  Character.hash(into:)();
  Hasher._combine(_:)(a3 & 1);
  return Hasher._finalize()();
}

uint64_t sub_100068F84(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(a2 + 16);
  v5 = sub_100068E38(*a1, *(a1 + 8), *(a1 + 16));
  v7 = v6;
  if (v5 == sub_100068E38(v2, v3, v4) && v7 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_10006902C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = sub_100068E38(*a2, *(a2 + 8), *(a2 + 16));
  v7 = v6;
  if (v5 == sub_100068E38(v2, v3, v4) && v7 == v8)
  {

    v11 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v11 = v10 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_1000690E8(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(a2 + 16);
  v5 = sub_100068E38(*a1, *(a1 + 8), *(a1 + 16));
  v7 = v6;
  if (v5 == sub_100068E38(v2, v3, v4) && v7 == v8)
  {

    v11 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v11 = v10 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_1000691A4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = sub_100068E38(*a2, *(a2 + 8), *(a2 + 16));
  v7 = v6;
  if (v5 == sub_100068E38(v2, v3, v4) && v7 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

void sub_100069274()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  if (v3 >> 6)
  {
    if (v3 >> 6 == 1)
    {
      Hasher._combine(_:)(1uLL);
      Character.hash(into:)();
      Hasher._combine(_:)(v3 & 1);
      return;
    }

    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  Hasher._combine(_:)(v4);

  String.hash(into:)();
}

Swift::Int sub_100069324()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (!(v3 >> 6))
  {
    v4 = 0;
LABEL_6:
    Hasher._combine(_:)(v4);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  if (v3 >> 6 != 1)
  {
    v4 = 2;
    goto LABEL_6;
  }

  Hasher._combine(_:)(1uLL);
  Character.hash(into:)();
  Hasher._combine(_:)(v3 & 1);
  return Hasher._finalize()();
}

uint64_t sub_1000693C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3 ^ a4;

  if (v5 >= 0x4000)
  {
    while (1)
    {
      v9 = Substring.subscript.getter();
      v11 = v10;
      v12 = Substring.index(after:)();
      v13 = String.Iterator.next()();
      if (!v13.value._object)
      {
        break;
      }

      if (v9 == v13.value._countAndFlagsBits && v13.value._object == v11)
      {
      }

      else
      {
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v8 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      if ((v12 ^ a4) < 0x4000)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    object = String.Iterator.next()().value._object;

    if (object)
    {
LABEL_3:

      return 0;
    }
  }

  return 1;
}

uint64_t sub_100069534(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (!(a3 >> 6))
  {
    if (a6 < 0x40u)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      goto LABEL_17;
    }

    return 0;
  }

  if (a3 >> 6 == 1)
  {
    if ((a6 & 0xC0) == 0x40)
    {
      if (a1 == a4 && a2 == a5)
      {
        return (a6 ^ a3 ^ 1) & 1;
      }

      v7 = a3;
      v8 = a6;
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a3 = v7;
      a6 = v8;
      if (v9)
      {
        return (a6 ^ a3 ^ 1) & 1;
      }
    }

    return 0;
  }

  if ((a6 & 0xC0) != 0x80)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

LABEL_17:

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_10006961C(uint64_t a1, unint64_t a2)
{
  if (sub_1000693C4(11565, 0xE200000000000000, a1, a2))
  {
    result = Substring.index(_:offsetBy:limitedBy:)();
    if (v5)
    {
      result = a2;
    }

    if (a2 >> 14 >= result >> 14)
    {
LABEL_12:
      Substring.subscript.getter();

      v6 = static String._fromSubstring(_:)();
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  result = Substring.distance(from:to:)();
  if (result == 2)
  {
    if ((a2 ^ a1) >= 0x4000)
    {
      Substring.index(before:)();
      v6 = Substring.subscript.getter();
LABEL_13:

      return v6;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = Substring.index(_:offsetBy:limitedBy:)();
  if (v7)
  {
    result = a2;
  }

  if (a2 >> 14 >= result >> 14)
  {
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_10006983C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_1000698CC();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000698CC()
{
  result = qword_1000B5DE0;
  if (!qword_1000B5DE0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1000B5DE0);
  }

  return result;
}

uint64_t sub_10006991C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v48 = a3;
  v33 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = type metadata accessor for Parsed();
  v6 = *(*(v31 - 8) + 64);
  __chkstk_darwin();
  v8 = &v29 - v7;
  v9 = type metadata accessor for Optional();
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  __chkstk_darwin();
  v12 = &v29 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v29 - v15;
  sub_10002F35C(a1, v42);
  sub_1000021C0(&qword_1000B5528, &unk_100094A90);
  if (swift_dynamicCast())
  {
    v29 = a1;
    v46[1] = v38;
    v46[2] = v39;
    v46[3] = v40;
    v47 = v41;
    v43 = v34;
    v44 = v35;
    v45 = v36;
    v46[0] = v37;
    sub_10002600C(v46, &v34, &qword_1000B5978, &qword_100094AA0);
    if (*(&v34 + 1))
    {
      sub_10002600C(&v35 + 8, v42, &qword_1000B5428, &qword_100093030);
      sub_100039234(&v34);
    }

    else
    {
      sub_100002BCC(&v34, &qword_1000B5978, &qword_100094AA0);
      memset(v42, 0, 32);
    }

    sub_1000021C0(&qword_1000B5428, &qword_100093030);
    v19 = swift_dynamicCast();
    v20 = *(v13 + 56);
    v21 = v29;
    if (v19)
    {
      v20(v12, 0, 1, AssociatedTypeWitness);
      (*(v13 + 32))(v16, v12, AssociatedTypeWitness);
      (*(v13 + 16))(v8, v16, AssociatedTypeWitness);
      swift_storeEnumTagMultiPayload();
      (*(v48 + 40))(v8, v33);
      sub_100002B38(v21);
      (*(v13 + 8))(v16, AssociatedTypeWitness);
    }

    else
    {
      v20(v12, 1, 1, AssociatedTypeWitness);
      (*(v30 + 8))(v12, v9);
      sub_10002600C(v46, &v34, &qword_1000B5978, &qword_100094AA0);
      v22 = *(&v34 + 1);
      if (*(&v34 + 1))
      {
        v23 = v34;
        v24 = v35;

        sub_100039234(&v34);
      }

      else
      {
        sub_100002BCC(&v34, &qword_1000B5978, &qword_100094AA0);
        v23 = *(&v44 + 1);
        v24 = *(&v45 + 1);
        v22 = v45;
      }

      sub_10002A1BC();
      swift_allocError();
      *v25 = v23;
      *(v25 + 8) = v22;
      *(v25 + 16) = v24;
      v26 = v37;
      v27 = v36;
      v28 = v34;
      *(v25 + 40) = v35;
      *(v25 + 24) = v28;
      *(v25 + 56) = v27;
      *(v25 + 72) = v26;
      *(v25 + 80) = 11;
      swift_willThrow();
      sub_100002B38(v21);
    }

    return sub_100040178(&v43);
  }

  else
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    sub_100002BCC(&v34, &qword_1000B5530, &qword_1000924C8);
    sub_10002A1BC();
    swift_allocError();
    *v17 = 3;
    *(v17 + 8) = 0u;
    *(v17 + 24) = 0u;
    *(v17 + 40) = 0u;
    *(v17 + 56) = 0u;
    *(v17 + 72) = 0;
    *(v17 + 80) = 15;
    swift_willThrow();
    return sub_100002B38(a1);
  }
}

uint64_t sub_100069E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100069EC4(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100069EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  v10 = *(*(type metadata accessor for Parsed() - 8) + 64);
  __chkstk_darwin();
  v12 = &v16 - v11;
  (*(a5 + 32))(a4, a5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *(v12 + 1);
    v14 = (*v12)(a1, a2, a3);

    return v14;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10006A034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for Parsed();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10006A080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100069EC4(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_10006A0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100069EC4(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_10006A178@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v40 = a3;
  v27 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v21 = *(v7 - 8);
  v22 = v7;
  v8 = *(v21 + 64);
  __chkstk_darwin();
  v23 = &v21 - v9;
  v25 = type metadata accessor for Parsed();
  v10 = *(*(v25 - 8) + 64);
  __chkstk_darwin();
  v24 = &v21 - v11;
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v21 - v16;
  sub_10002F35C(a1, v37);
  dispatch thunk of Decodable.init(from:)();
  if (!v4)
  {
    (*(v12 + 32))(v17, v15, AssociatedTypeWitness);
LABEL_10:
    v19 = v24;
    (*(v12 + 16))(v24, v17, AssociatedTypeWitness);
    swift_storeEnumTagMultiPayload();
    (*(v40 + 40))(v19, v27);
    sub_100002B38(a1);
    return (*(v12 + 8))(v17, AssociatedTypeWitness);
  }

  sub_10002F35C(a1, v36);
  sub_1000021C0(&qword_1000B5528, &unk_100094A90);
  if (swift_dynamicCast())
  {
    v38[1] = v32;
    v38[2] = v33;
    v38[3] = v34;
    v39 = v35;
    v37[0] = v28;
    v37[1] = v29;
    v37[2] = v30;
    v38[0] = v31;
    sub_10002600C(v38, &v28, &qword_1000B5978, &qword_100094AA0);
    sub_100040178(v37);
    if (*(&v28 + 1))
    {
      sub_10002600C(&v29 + 8, v36, &qword_1000B5428, &qword_100093030);
      sub_100039234(&v28);
    }

    else
    {
      sub_100002BCC(&v28, &qword_1000B5978, &qword_100094AA0);
      memset(v36, 0, 32);
    }

    sub_1000021C0(&qword_1000B5428, &qword_100093030);
    v18 = v23;
    if (swift_dynamicCast())
    {

      (*(v12 + 56))(v18, 0, 1, AssociatedTypeWitness);
      (*(v12 + 32))(v17, v18, AssociatedTypeWitness);
      goto LABEL_10;
    }

    (*(v12 + 56))(v18, 1, 1, AssociatedTypeWitness);
    (*(v21 + 8))(v18, v22);
  }

  else
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    sub_100002BCC(&v28, &qword_1000B5530, &qword_1000924C8);
  }

  swift_willThrow();
  return sub_100002B38(a1);
}

uint64_t sub_10006A614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100069EC4(a1, a2, a3, a4, WitnessTable);
}

__n128 sub_10006A690(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10006A6A4(uint64_t *a1, int a2)
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

uint64_t sub_10006A6EC(uint64_t result, int a2, int a3)
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

uint64_t sub_10006A744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *))
{
  v12 = *v6;
  if (*(v12 + 16) && (v13 = sub_1000561CC(a1, a2, a3), (v14 & 1) != 0))
  {
    sub_100058AFC(*(v12 + 56) + 72 * v13, &v19);
    v25[1] = v21;
    v26 = v22;
    v27 = v23;
    v24 = v19;
    v25[0] = v20;
  }

  else
  {
    *&v24 = a1;
    *(&v24 + 1) = a2;
    *&v25[0] = a3;
    *(&v25[0] + 1) = a5;
    *&v26 = type metadata accessor for Array();
    *(&v26 + 1) = &_swiftEmptySetSingleton;
    v27 = 1;
  }

  sub_10005AC84(v25 + 8, &v19);
  if (*(&v20 + 1))
  {
    type metadata accessor for Array();
    if (swift_dynamicCast())
    {
      if ((v27 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else
  {
    sub_100002BCC(&v19, &qword_1000B5428, &qword_100093030);
  }

  v18 = a5;

  if (v27)
  {
LABEL_11:
    type metadata accessor for Array();
    Array.removeAll(keepingCapacity:)(0);
    v27 = 0;
  }

LABEL_12:
  a6(&v18);
  v15 = v18;
  *(&v20 + 1) = type metadata accessor for Array();
  *&v19 = v15;
  sub_100062CA0(&v19, v25 + 8);

  sub_100055BDC(v16);
  sub_10006AD50(&v24);
  return sub_100039234(&v24);
}

uint64_t sub_10006A948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 8))
  {
    v8 = *(a1 + 48);
    v14[2] = *(a1 + 32);
    v14[3] = v8;
    v15 = *(a1 + 64);
    v9 = *(a1 + 16);
    v14[0] = *a1;
    v14[1] = v9;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v4;
    sub_10006C3D0(v14, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v13;
  }

  else
  {
    sub_100002BCC(a1, &qword_1000B5978, &qword_100094AA0);
    sub_10006C0A0(a2, a3, a4, v14);

    return sub_100002BCC(v14, &qword_1000B5978, &qword_100094AA0);
  }

  return result;
}

uint64_t sub_10006AA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7, uint64_t a8)
{
  v30[1] = a7;
  v31 = a6;
  v14 = *(*(type metadata accessor for Optional() - 8) + 64);
  __chkstk_darwin();
  v16 = v30 - v15;
  v17 = *(a8 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = v8;
  v21 = *v8;
  if (*(v21 + 16) && (v22 = sub_1000561CC(a1, a2, a3), (v23 & 1) != 0))
  {
    sub_100058AFC(*(v21 + 56) + 72 * v22, &v32);
    v38[1] = v34;
    v39 = v35;
    v40 = v36;
    v37 = v32;
    v38[0] = v33;
  }

  else
  {
    *&v39 = a8;
    v24 = sub_100007DE4(v38 + 1);
    (*(v17 + 16))(v24, a5, a8);
    *&v37 = a1;
    *(&v37 + 1) = a2;
    *&v38[0] = a3;
    *(&v39 + 1) = &_swiftEmptySetSingleton;
    v40 = 1;
  }

  sub_10005AC84(v38 + 8, &v32);
  sub_1000021C0(&qword_1000B5428, &qword_100093030);
  v25 = swift_dynamicCast();
  v26 = *(v17 + 56);
  if (v25)
  {
    v26(v16, 0, 1, a8);
    (*(v17 + 32))(v20, v16, a8);
  }

  else
  {
    v26(v16, 1, 1, a8);
    (*(v17 + 16))(v20, a5, a8);
  }

  v31(v20);
  *(&v33 + 1) = a8;
  v27 = sub_100007DE4(&v32);
  (*(v17 + 16))(v27, v20, a8);
  sub_100062CA0(&v32, v38 + 8);

  sub_100055BDC(v28);
  sub_10006AD50(&v37);
  (*(v17 + 8))(v20, a8);
  return sub_100039234(&v37);
}

uint64_t sub_10006AD50(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *v1;
  if (*(v6 + 16) && (v7 = sub_1000561CC(*a1, v4, v5), (v8 & 1) != 0))
  {
    sub_100058AFC(*(v6 + 56) + 72 * v7, v16);
    sub_100058AFC(a1, v15);

    sub_100055BDC(v9);
    v10 = v15[0];
    v11 = v15[1];
    v12 = v15[2];
    sub_100058AFC(v15, v14);

    sub_10006A948(v14, v10, v11, v12);
    sub_100039234(v15);
    return sub_100039234(v16);
  }

  else
  {
    sub_100058AFC(a1, v16);

    return sub_10006A948(v16, v3, v4, v5);
  }
}

void *sub_10006AE74()
{
  v1 = v0;
  sub_1000021C0(&qword_1000B5DF0, &qword_100094B08);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 24 * v17;
        v23 = *(v18 + 16);
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v23;
        *(*(v4 + 56) + 8 * v17) = v21;
        result = sub_10002BB8C(v19, v20, v23);
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

void *sub_10006AFE8()
{
  v1 = v0;
  sub_1000021C0(&qword_1000B5DE8, &qword_100094B00);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v29 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    v30 = v4;
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
        v19 = (*(v2 + 48) + 24 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        v23 = 72 * v17;
        sub_100058AFC(*(v2 + 56) + 72 * v17, v31);
        v24 = (*(v30 + 48) + v18);
        *v24 = v20;
        v24[1] = v21;
        v24[2] = v22;
        v25 = *(v30 + 56) + v23;
        *v25 = v31[0];
        v26 = v31[1];
        v27 = v31[2];
        v28 = v31[3];
        *(v25 + 64) = v32;
        *(v25 + 32) = v27;
        *(v25 + 48) = v28;
        *(v25 + 16) = v26;
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

        v1 = v29;
        v4 = v30;
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

void *sub_10006B1C8()
{
  v1 = v0;
  sub_1000021C0(&qword_1000B5E00, &qword_100094B10);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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

void *sub_10006B338()
{
  v1 = v0;
  sub_1000021C0(&qword_1000B5DF8, &unk_100096560);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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

uint64_t sub_10006B49C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000021C0(&qword_1000B5DF0, &qword_100094B08);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (1)
    {
      if (!v13)
      {
        v19 = v9;
        while (1)
        {
          v9 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_43;
          }

          if (v9 >= v14)
          {
            break;
          }

          v20 = v10[v9];
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v13 = (v20 - 1) & v20;
            goto LABEL_17;
          }
        }

        if ((v39 & 1) == 0)
        {

          v3 = v37;
          goto LABEL_41;
        }

        v36 = 1 << *(v5 + 32);
        v3 = v37;
        if (v36 >= 64)
        {
          bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v10 = -1 << v36;
        }

        *(v5 + 16) = 0;
        break;
      }

      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 24 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v40 = *(v22 + 8 * v21);
      if ((v39 & 1) == 0)
      {
        sub_10002BB8C(v24, v25, v26);
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      if (v26 >> 6)
      {
        if (v26 >> 6 == 1)
        {
          Hasher._combine(_:)(1uLL);
          Character.hash(into:)();
          Hasher._combine(_:)(v26 & 1);
          goto LABEL_25;
        }

        v28 = 2;
      }

      else
      {
        v28 = 0;
      }

      Hasher._combine(_:)(v28);
      String.hash(into:)();
LABEL_25:
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_43:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 24 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(v17 + 16) = v26;
      *(*(v8 + 56) + 8 * v16) = v40;
      ++*(v8 + 16);
      v5 = v38;
    }
  }

LABEL_41:
  *v3 = v8;
  return result;
}

uint64_t sub_10006B7A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000021C0(&qword_1000B5DE8, &qword_100094B00);
  v52 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v50 = v3;
    v51 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v24 = __clz(__rbit64(v13));
      v53 = (v13 - 1) & v13;
LABEL_17:
      v27 = v24 | (v9 << 6);
      v28 = *(v5 + 56);
      v29 = (*(v5 + 48) + 24 * v27);
      v30 = *v29;
      v31 = v29[1];
      v32 = v29[2];
      v33 = v28 + 72 * v27;
      if (v52)
      {
        v56 = *v33;
        v34 = *(v33 + 16);
        v35 = *(v33 + 32);
        v36 = *(v33 + 48);
        v60 = *(v33 + 64);
        v58 = v35;
        v59 = v36;
        v57 = v34;
      }

      else
      {
        sub_100058AFC(v33, &v56);
      }

      v37 = *(v8 + 40);
      Hasher.init(_seed:)();
      v54 = v31;
      v55 = v30;
      String.hash(into:)();
      Hasher._combine(_:)(*(v32 + 16));
      v38 = *(v32 + 16);
      if (v38)
      {
        v39 = (v32 + 40);
        do
        {
          v40 = *(v39 - 1);
          v41 = *v39;

          String.hash(into:)();

          v39 += 2;
          --v38;
        }

        while (v38);
      }

      result = Hasher._finalize()();
      v42 = -1 << *(v8 + 32);
      v43 = result & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*(v15 + 8 * (v43 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        v18 = v54;
        v17 = v55;
        while (++v44 != v46 || (v45 & 1) == 0)
        {
          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v15 + 8 * v44);
          if (v48 != -1)
          {
            v16 = __clz(__rbit64(~v48)) + (v44 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v43) & ~*(v15 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
      v18 = v54;
      v17 = v55;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v19 = (*(v8 + 48) + 24 * v16);
      *v19 = v17;
      v19[1] = v18;
      v19[2] = v32;
      v20 = *(v8 + 56) + 72 * v16;
      *v20 = v56;
      v21 = v57;
      v22 = v58;
      v23 = v59;
      *(v20 + 64) = v60;
      *(v20 + 32) = v22;
      *(v20 + 48) = v23;
      *(v20 + 16) = v21;
      ++*(v8 + 16);
      v5 = v51;
      v13 = v53;
    }

    v25 = v9;
    while (1)
    {
      v9 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v9 >= v14)
      {
        break;
      }

      v26 = v10[v9];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v53 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v50;
      goto LABEL_39;
    }

    v49 = 1 << *(v5 + 32);
    v3 = v50;
    if (v49 >= 64)
    {
      bzero(v10, ((v49 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v49;
    }

    *(v5 + 16) = 0;
  }

LABEL_39:
  *v3 = v8;
  return result;
}

uint64_t sub_10006BB18(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000021C0(&qword_1000B5E00, &qword_100094B10);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10006BDC0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000021C0(&qword_1000B5DF8, &unk_100096560);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_10006C058(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

double sub_10006C0A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = *v4;
  v8 = sub_1000561CC(a1, a2, a3);
  if (v9)
  {
    v10 = v8;
    v11 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v5;
    v21 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10006AFE8();
      v13 = v21;
    }

    v14 = *(v13 + 48) + 24 * v10;
    v16 = *(v14 + 8);
    v15 = *(v14 + 16);

    v17 = *(v13 + 56) + 72 * v10;
    v18 = *(v17 + 48);
    *(a4 + 32) = *(v17 + 32);
    *(a4 + 48) = v18;
    *(a4 + 64) = *(v17 + 64);
    v19 = *(v17 + 16);
    *a4 = *v17;
    *(a4 + 16) = v19;
    sub_10006C174(v10, v13);
    *v5 = v13;
  }

  else
  {
    *(a4 + 64) = 0;
    result = 0.0;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

char *sub_10006C174(char *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v30 = v4;
    v31 = v2;
    do
    {
      v9 = v7;
      v10 = *(v2 + 40);
      v11 = (*(v2 + 48) + 24 * v6);
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];
      Hasher.init(_seed:)();

      String.hash(into:)();
      Hasher._combine(_:)(*(v14 + 16));
      v15 = *(v14 + 16);
      if (v15)
      {
        v16 = (v14 + 40);
        do
        {
          v17 = *(v16 - 1);
          v18 = *v16;

          String.hash(into:)();

          v16 += 2;
          --v15;
        }

        while (v15);
      }

      v19 = Hasher._finalize()();

      v7 = v9;
      v20 = v19 & v9;
      if (v3 >= v8)
      {
        v4 = v30;
        if (v20 < v8)
        {
          v2 = v31;
        }

        else
        {
          v2 = v31;
          if (v3 >= v20)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        v4 = v30;
        v2 = v31;
        if (v20 >= v8 || v3 >= v20)
        {
LABEL_14:
          v21 = *(v2 + 48);
          v22 = v21 + 24 * v3;
          v23 = (v21 + 24 * v6);
          if (v3 != v6 || v22 >= v23 + 24)
          {
            v24 = *v23;
            *(v22 + 16) = *(v23 + 2);
            *v22 = v24;
          }

          v25 = *(v2 + 56);
          result = (v25 + 72 * v3);
          v26 = (v25 + 72 * v6);
          if (72 * v3 < (72 * v6) || result >= v26 + 72 || v3 != v6)
          {
            result = memmove(result, v26, 0x48uLL);
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v27 = *(v2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v29;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_10006C3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1000561CC(a2, a3, a4);
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
      sub_10006B7A8(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_1000561CC(a2, a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_10006AFE8();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = v24[7] + 72 * v13;

    return sub_10006C58C(a1, v25);
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v27 = (v24[6] + 24 * v13);
  *v27 = a2;
  v27[1] = a3;
  v27[2] = a4;
  v28 = v24[7] + 72 * v13;
  *v28 = *a1;
  v29 = *(a1 + 16);
  v30 = *(a1 + 32);
  v31 = *(a1 + 48);
  *(v28 + 64) = *(a1 + 64);
  *(v28 + 32) = v30;
  *(v28 + 48) = v31;
  *(v28 + 16) = v29;
  v32 = v24[2];
  v17 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v33;
}

uint64_t sub_10006C5C4(uint64_t a1, Swift::UInt a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100056308(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_10006BDC0(v14, a3 & 1);
      v18 = *v4;
      v9 = sub_100056308(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_18:
        sub_1000021C0(&qword_1000B59C0, &unk_100093050);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_10006B338();
      v9 = v17;
    }
  }

  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  v20[(v9 >> 6) + 8] |= 1 << v9;
  *(v20[6] + 8 * v9) = a2;
  *(v20[7] + 8 * v9) = a1;
  v24 = v20[2];
  v13 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;
}

__n128 sub_10006C730(uint64_t a1, uint64_t a2)
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

uint64_t sub_10006C754(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_10006C79C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10006C800(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10006C824(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF1 && *(a1 + 81))
  {
    return (*a1 + 241);
  }

  v3 = *(a1 + 80);
  if (v3 <= 0xF)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10006C86C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 241;
    if (a3 >= 0xF1)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF1)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_10006C8C8(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xF)
  {
    *result = a2 - 15;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0;
    LOBYTE(a2) = 15;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t sub_10006C908(uint64_t a1)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 40) & 7;
  }
}

__n128 sub_10006C924(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10006C938(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10006C980(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_10006C9D0(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_10006CA04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *v4;
  v7 = v4[1];
  result = sub_10006FEE0(a1, a2, a3 & 0x1FF, *v4, v7);
  v9 = 0uLL;
  if (v10)
  {
    goto LABEL_15;
  }

  if (v7 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = *(v6 + 16);
  if (v11 < v7 || v11 < result)
  {
    goto LABEL_18;
  }

  if (result >= v7)
  {
    if (result != v11)
    {
      v13 = v6 + (result << 6) + 48;
      while ((*(v13 + 40) & 1) == 0)
      {
        ++result;
        v13 += 64;
        if (v11 == result)
        {
          goto LABEL_15;
        }
      }

      if ((*v13 & 0x6000000000000000) == 0x2000000000000000)
      {
        v20 = *(v13 + 24);
        v14 = *(v13 + 8);
        v15 = *(v13 + 16);
        v16 = *(v13 - 16);
        v17 = *(v13 - 8);
        v18 = result;
        sub_100066FA0(v16, v17, *v13);
        result = sub_10006EE9C(v4, v18);
        v9 = v20;
        v19 = 1;
LABEL_16:
        *a4 = v9;
        *(a4 + 16) = v19;
        *(a4 + 24) = v16;
        *(a4 + 32) = v17;
        return result;
      }
    }

LABEL_15:
    v19 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_16;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_10006CB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *v4;
  v7 = v4[1];
  result = sub_10006FEE0(a1, a2, a3 & 0x1FF, *v4, v7);
  v9 = 0uLL;
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_11;
  }

  if (v7 < 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v14 = result;
  v15 = *(v6 + 16);
  if (v15 < v7 || v15 < result)
  {
    goto LABEL_22;
  }

  if (result < v7)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v14 == v15)
  {
LABEL_10:

    v11 = 0;
    v12 = 0;
    v13 = 0;
    v9 = 0uLL;
    goto LABEL_11;
  }

  v17 = v14 << 6;
  while (1)
  {
    v18 = (v6 + v17);
    v19 = *(v6 + v17 + 48);
    v20 = (v19 >> 61) & 3;
    if (v20)
    {
      break;
    }

LABEL_13:
    ++v14;
    v17 += 64;
    if (v15 == v14)
    {
      goto LABEL_10;
    }
  }

  if (v20 == 2)
  {
    v21 = v18[7];
    v22 = v18[8];
    sub_100058C08(v18[4], v18[5], v19);
    goto LABEL_13;
  }

  v23 = *(v6 + 16);
  if (v23 < v7)
  {
    goto LABEL_24;
  }

  if (v14 >= v23)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v24 = (v6 + v17);
  v25 = *(v6 + v17 + 48);
  if ((v25 & 0x6000000000000000) != 0x2000000000000000)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v26 = v24[7];
  v27 = v24[8];
  v12 = v24[4];
  v13 = v24[5];
  v28 = v6 + v17;
  v11 = *(v6 + v17 + 88);
  v29 = *(v28 + 72);
  sub_100066FA0(v12, v13, v25);
  result = sub_10006EE9C(v4, v14);
  v9 = v29;
LABEL_11:
  *a4 = v9;
  *(a4 + 16) = v11;
  *(a4 + 24) = v12;
  *(a4 + 32) = v13;
  return result;
}

uint64_t sub_10006CC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *v4;
  v7 = v4[1];
  result = sub_10006FEE0(a1, a2, a3 & 0x1FF, *v4, v7);
  if (v9)
  {
LABEL_2:
    result = 0;
    v10 = 0uLL;
    v11 = 0uLL;
LABEL_15:
    *a4 = v10;
    *(a4 + 16) = v11;
    *(a4 + 32) = result;
    return result;
  }

  if (v7 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = *(v6 + 16);
  if (v12 < v7 || v12 < result)
  {
    goto LABEL_17;
  }

  if (result >= v7)
  {
    v14 = (v6 + (result << 6) + 88);
    v15 = v12 - result + 1;
    while (--v15)
    {
      v16 = v14 + 64;
      v17 = *v14;
      v14 += 64;
      if (v17 == 1)
      {
        v19 = *(v16 - 10);
        v18 = *(v16 - 9);
        result = sub_10006EFF0(v19, v18, 1);
        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_19;
        }

        v20 = v4[2];
        if (v19 < *(v20 + 16))
        {
          v21 = v20 + 16 * v19;
          v22 = *(v21 + 40);
          *&v23 = vdupq_n_s64(1uLL).u64[0];
          *(&v23 + 1) = *(v21 + 32);
          v24 = v23;

          v11 = v24;
          *&v10 = v19;
          *(&v10 + 1) = v18;
          goto LABEL_15;
        }

        goto LABEL_20;
      }
    }

    goto LABEL_2;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10006CDA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v3 < v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = 0uLL;
  if (v2 == v3)
  {
    goto LABEL_7;
  }

  if (v2 < v3)
  {
    v5 = *v1 + (v2 << 6);
    v6 = *(v5 + 48);
    if ((v6 & 0x6000000000000000) == 0x2000000000000000)
    {
      v7 = *(v5 + 88);
      v14 = *(v5 + 72);
      v8 = *(v5 + 56);
      v9 = *(v5 + 64);
      v11 = *(v5 + 32);
      v10 = *(v5 + 40);
      v1[1] = v2 + 1;
      v12 = a1;
      result = sub_100066FA0(v11, v10, v6);
      v4 = v14;
      a1 = v12;
LABEL_8:
      *a1 = v4;
      *(a1 + 16) = v7;
      *(a1 + 24) = v11;
      *(a1 + 32) = v10;
      return result;
    }

LABEL_7:
    v7 = 0;
    v11 = 0;
    v10 = 0;
    goto LABEL_8;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_10006CE68()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 0;
  }

  if (v1 >= v2)
  {
    __break(1u);
    return result;
  }

  v4 = (v0[1] + 16 * v1);
  v3 = *v4;
  v5 = v4[1];
  v0[2] = v1 + 1;

  return v3;
}

void *sub_10006CED4()
{
  if ((v0[2] & 0x8000000000000080) != 0x80)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = *v0;
  v2 = v0[1];
  v3 = String.count.getter();
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  result = sub_10004E8A0(0, v3 & ~(v3 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v7 = v1 & 0xFFFFFFFFFFFFLL;
    }

    v8 = 4 * v7;
    v9 = 15;
    while (v8 > v9 >> 14)
    {
      v10 = String.subscript.getter();
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        v15 = v11;
        v16 = v10;
        sub_10004E8A0((v12 > 1), v13 + 1, 1);
        v11 = v15;
        v10 = v16;
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[6 * v13];
      v14[4] = v6;
      v14[5] = v10;
      v14[6] = v11;
      v14[7] = 64;
      v14[8] = 0;
      v14[9] = 0;
      result = String.index(after:)();
      v9 = result;
      if (v4 == ++v6)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10006D038@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v3 < v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v2 < 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v4 = 0uLL;
  if (v2 == v3)
  {
LABEL_7:
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v5 = *v1 + (v2 << 6) + 48;
    while ((*v5 & 0x6000000000000000) != 0x2000000000000000)
    {
      ++v2;
      v5 += 64;
      if (v3 == v2)
      {
        goto LABEL_7;
      }
    }

    v7 = *(v5 - 16);
    v8 = *(v5 - 8);
    v9 = *(v5 + 8);
    v10 = *(v5 + 16);
    v13 = *(v5 + 24);
    v6 = *(v5 + 40);
    v11 = a1;
    sub_100066FA0(v7, v8, *v5);
    result = sub_10006F1A0(v2);
    v4 = v13;
    a1 = v11;
  }

  *a1 = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  return result;
}

void *sub_10006D110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 < a2)
  {
    goto LABEL_106;
  }

  if (a2 < 0)
  {
LABEL_107:
    __break(1u);
LABEL_108:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    v5 = a1 + 32;
    v6 =  + 88;
    v7 = _swiftEmptyArrayStorage;
    v8 = a2;
    v9 = a2;
LABEL_4:
    v10 = (v6 + (v8 << 6));
    while (v3 != v9)
    {
      if (v8 < a2 || v9 >= v3)
      {
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      ++v9;
      v11 = *v10;
      v10 += 64;
      if (v11)
      {
        v12 = *(v10 - 10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_100043D74(0, *(v7 + 2) + 1, 1, v7);
        }

        v14 = *(v7 + 2);
        v13 = *(v7 + 3);
        if (v14 >= v13 >> 1)
        {
          v7 = sub_100043D74((v13 > 1), v14 + 1, 1, v7);
        }

        *(v7 + 2) = v14 + 1;
        *&v7[8 * v14 + 32] = v12;
        v8 = v9;
        goto LABEL_4;
      }
    }

    v73 = _swiftEmptyArrayStorage;
    if (v3 != a2)
    {
      v73 = _swiftEmptyArrayStorage;
      v58 = a2;
      do
      {
        v59 = v58;
        while (1)
        {
          if (v59 < a2 || v58 >= v3)
          {
            goto LABEL_100;
          }

          v60 = (v5 + (v58 << 6));
          v61 = v60[1];
          v81 = *v60;
          v82 = v61;
          *v83 = v60[2];
          *&v83[9] = *(v60 + 41);
          ++v58;
          if ((v61 & 0x6000000000000000) != 0x4000000000000000 || v82 != 0x4000000000000000 || *(&v82 + 1) | *v83 | *(&v81 + 1) | v81)
          {
            break;
          }

LABEL_89:
          if (v58 == v3)
          {
            goto LABEL_15;
          }
        }

        if ((v83[24] & 1) == 0)
        {
          v62 = *(v7 + 2);
          v63 = (v7 + 32);
          while (v62)
          {
            v64 = *v63++;
            --v62;
            if (v64 == *&v83[8])
            {
              goto LABEL_89;
            }
          }
        }

        sub_100062A60(&v81, &v85);
        v65 = v73;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10004E8C0(0, v73[2] + 1, 1);
          v65 = v73;
        }

        v67 = v65[2];
        v66 = v65[3];
        if (v67 >= v66 >> 1)
        {
          sub_10004E8C0((v66 > 1), v67 + 1, 1);
          v65 = v73;
        }

        v65[2] = v67 + 1;
        v73 = v65;
        v68 = &v65[8 * v67];
        v69 = v81;
        v70 = v82;
        v71 = *v83;
        *(v68 + 73) = *&v83[9];
        v68[3] = v70;
        v68[4] = v71;
        v68[2] = v69;
      }

      while (v58 != v3);
    }

LABEL_15:

    v15 = v73[2];
    if (v15)
    {
      v84 = _swiftEmptyArrayStorage;
      sub_10004E900(0, v15, 0);
      v16 = 0;
      v17 = v84;
      v75 = v15;
      while (1)
      {
        v18 = &v73[8 * v16 + 4];
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        *&v87[9] = *(v18 + 41);
        v86 = v20;
        *v87 = v21;
        v85 = v19;
        v23 = *(&v21 + 1);
        v22 = *&v87[16];
        v24 = v87[24];
        if (v87[24] == 1)
        {
          if ((*(&v21 + 1) & 0x8000000000000000) != 0)
          {
            goto LABEL_102;
          }

          if (*(&v21 + 1) >= *(a3 + 16))
          {
            goto LABEL_103;
          }
        }

        else
        {
          if ((v86 & 0x6000000000000000) == 0)
          {
            v50 = v85;
            if ((v86 & 0x8000000000000000) != 0)
            {
              v52 = *v87;
              v77 = *(&v86 + 1);
              if (v86 >> 6)
              {
                if (v86 >> 6 == 1)
                {
                  *&v79 = 0;
                  *(&v79 + 1) = 0xE000000000000000;
                  sub_100062A60(&v85, &v81);
                  v53._countAndFlagsBits = 45;
                  v53._object = 0xE100000000000000;
                  String.append(_:)(v53);
                  Character.write<A>(to:)();
LABEL_77:
                  v81 = v79;
                  v56._countAndFlagsBits = 61;
                  v56._object = 0xE100000000000000;
                  String.append(_:)(v56);
                  v57._countAndFlagsBits = v77;
                  v57._object = v52;
                  String.append(_:)(v57);
                  v26 = *(&v81 + 1);
                  v76 = v81;
                  goto LABEL_25;
                }

                *&v79 = 45;
                v55 = 0xE100000000000000;
              }

              else
              {
                *&v79 = 11565;
                v55 = 0xE200000000000000;
              }

              *(&v79 + 1) = v55;
              sub_100062A60(&v85, &v81);
              String.append(_:)(v50);
              goto LABEL_77;
            }

            if (v86 >> 6)
            {
              if (v86 >> 6 == 1)
              {
                v78 = 0;
                v80 = 0xE000000000000000;
                sub_100062A60(&v85, &v81);
                v51._countAndFlagsBits = 45;
                v51._object = 0xE100000000000000;
                String.append(_:)(v51);
                Character.write<A>(to:)();
LABEL_73:
                v26 = v80;
                v76 = v78;
                goto LABEL_25;
              }

              v78 = 45;
              v54 = 0xE100000000000000;
            }

            else
            {
              v78 = 11565;
              v54 = 0xE200000000000000;
            }

            v80 = v54;
            sub_100062A60(&v85, &v81);
            String.append(_:)(v50);
            goto LABEL_73;
          }

          if ((*(&v21 + 1) & 0x8000000000000000) != 0)
          {
            goto LABEL_104;
          }

          if (*(&v21 + 1) >= *(a3 + 16))
          {
            goto LABEL_105;
          }
        }

        v25 = (a3 + 32 + 16 * *(&v21 + 1));
        v26 = v25[1];
        v76 = *v25;
        sub_100062A60(&v85, &v81);

LABEL_25:
        sub_100062BE0();
        v27 = Set.init(minimumCapacity:)();
        v28 = *(v27 + 40);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(v23);
        if (v24)
        {
          v29 = 0;
        }

        else
        {
          Hasher._combine(_:)(1uLL);
          v29 = v22;
        }

        Hasher._combine(_:)(v29);
        v30 = Hasher._finalize()();
        v31 = -1 << *(v27 + 32);
        v32 = v30 & ~v31;
        if ((*(v27 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
        {
          v33 = ~v31;
          do
          {
            v34 = *(v27 + 48) + 24 * v32;
            if ((*(v34 + 17) & 1) == 0 && *v34 == v23)
            {
              if (*(v34 + 16))
              {
                if (v24)
                {
                  goto LABEL_59;
                }
              }

              else if ((v24 & 1) == 0 && *(v34 + 8) == v22)
              {
                goto LABEL_59;
              }
            }

            v32 = (v32 + 1) & v33;
          }

          while (((*(v27 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0);
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = *(v27 + 16);
        if (*(v27 + 24) <= v36)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            sub_10005717C(v36 + 1);
          }

          else
          {
            sub_1000583B8(v36 + 1);
          }

          v37 = *(v27 + 40);
          Hasher.init(_seed:)();
          Hasher._combine(_:)(1uLL);
          Hasher._combine(_:)(v23);
          if (v24)
          {
            v38 = 0;
          }

          else
          {
            Hasher._combine(_:)(1uLL);
            v38 = v22;
          }

          Hasher._combine(_:)(v38);
          v39 = Hasher._finalize()();
          v40 = -1 << *(v27 + 32);
          v32 = v39 & ~v40;
          if ((*(v27 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
          {
            v41 = ~v40;
            do
            {
              v42 = *(v27 + 48) + 24 * v32;
              if ((*(v42 + 17) & 1) == 0 && *v42 == v23)
              {
                if (*(v42 + 16))
                {
                  if (v24)
                  {
                    goto LABEL_108;
                  }
                }

                else if ((v24 & 1) == 0 && *(v42 + 8) == v22)
                {
                  goto LABEL_108;
                }
              }

              v32 = (v32 + 1) & v41;
            }

            while (((*(v27 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0);
          }
        }

        else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100057FB0();
        }

        *(v27 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v32;
        v43 = *(v27 + 48) + 24 * v32;
        *v43 = v23;
        *(v43 + 8) = v22;
        *(v43 + 16) = v24;
        *(v43 + 17) = 0;
        v44 = *(v27 + 16);
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (v45)
        {
          goto LABEL_101;
        }

        *(v27 + 16) = v46;
LABEL_59:
        sub_100062ABC(&v85);
        v84 = v17;
        v48 = v17[2];
        v47 = v17[3];
        if (v48 >= v47 >> 1)
        {
          sub_10004E900((v47 > 1), v48 + 1, 1);
          v17 = v84;
        }

        ++v16;
        v17[2] = v48 + 1;
        v49 = &v17[3 * v48];
        v49[4] = v27;
        v49[5] = v76;
        v49[6] = v26;
        if (v16 == v75)
        {

          return v17;
        }
      }
    }

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_10006D8FC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
LABEL_11:
    v11 = String.count.getter();
    if (v11 < 2)
    {
      sub_1000021C0(&qword_1000B5688, &qword_100092748);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_10008E640;
      *(v3 + 32) = a1;
      *(v3 + 40) = a2;
      *(v3 + 48) = 0x2000000000000000;
      *(v3 + 56) = 0;
      *(v3 + 64) = 0;
      *(v3 + 72) = a3;
      *(v3 + 80) = 0;
      *(v3 + 88) = 1;

      return v3;
    }

    if (v11 == 2)
    {
      sub_1000021C0(&qword_1000B5688, &qword_100092748);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_10008E640;
      *(v3 + 32) = 0;
      *(v3 + 40) = 0;
      *(v3 + 48) = 0x4000000000000000;
      *(v3 + 56) = 0;
      *(v3 + 64) = 0;
      *(v3 + 72) = a3;
      *(v3 + 80) = 0;
      *(v3 + 88) = 1;
      return v3;
    }

    goto LABEL_23;
  }

  v7 = 0;
  v8 = 4 * v6;
  v3 = 15;
  while (1)
  {
    if (String.subscript.getter() == 45 && v10 == 0xE100000000000000)
    {

      goto LABEL_7;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      break;
    }

LABEL_7:
    v3 = String.index(after:)();
    v7 = v3 >> 14;
    if (v3 >> 14 == v8)
    {
      goto LABEL_11;
    }
  }

  result = String.distance(from:to:)();
  if (v8 < v7)
  {
    __break(1u);
    goto LABEL_39;
  }

  v13 = result;
  v14 = String.subscript.getter();
  if (v13 == 1)
  {
    v16 = v14;
    v17 = v15;

    sub_10006F844(v16, v17, v54);
    if (v47)
    {
LABEL_20:

      return v3;
    }

    v21 = v54[0];
    v22 = v54[1];
    v45 = v54[2];
    v48 = v54[3];
    v23 = v54[4];
    v24 = sub_10006CED4();
    v25 = v24[2];
    if (!v25)
    {

      sub_1000021C0(&qword_1000B5688, &qword_100092748);
      v29 = swift_allocObject();
      v30 = v23;
      v3 = v29;
      *(v29 + 16) = xmmword_10008E640;
      *(v29 + 32) = v21;
      *(v29 + 40) = v22;
      *(v29 + 48) = v45;
      *(v29 + 56) = v48;
      *(v29 + 64) = v30;
      *(v29 + 72) = a3;
      *(v29 + 80) = 0;
      *(v29 + 88) = 1;
      return v3;
    }

    if (v25 != 1)
    {
      v31 = v24;

      sub_1000021C0(&qword_1000B5688, &qword_100092748);
      v32 = swift_allocObject();
      v33 = v23;
      v3 = v32;
      *(v32 + 16) = xmmword_10008E640;
      *(v32 + 32) = v21;
      *(v32 + 40) = v22;
      *(v32 + 48) = v45;
      *(v32 + 56) = v48;
      *(v32 + 64) = v33;
      *(v32 + 72) = a3;
      *(v32 + 80) = 0;
      *(v32 + 88) = 1;
      v34 = v31[2];
      if (v34)
      {
        v46 = v34 - 1;
        for (i = v31 + 5; ; i += 6)
        {
          v36 = *i;
          v44 = *(i - 1);
          v37 = i[1];
          v38 = i[2];
          v39 = i[3];
          v40 = i[4];
          sub_100066FC0(*i, v37, v38);
          v42 = *(v3 + 16);
          v41 = *(v3 + 24);
          if (v42 >= v41 >> 1)
          {
            v3 = sub_100043C68((v41 > 1), v42 + 1, 1, v3);
          }

          v57 = 0;
          *(v3 + 16) = v42 + 1;
          v43 = v3 + (v42 << 6);
          *(v43 + 32) = v36;
          *(v43 + 40) = v37;
          *(v43 + 48) = v38;
          *(v43 + 56) = v39;
          *(v43 + 64) = v40;
          *(v43 + 72) = a3;
          *(v43 + 80) = v44;
          *(v43 + 88) = v57;
          if (!v46)
          {
            break;
          }

          --v46;
        }
      }

      goto LABEL_20;
    }

    sub_1000021C0(&qword_1000B5688, &qword_100092748);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10008E640;
    result = sub_100070364(v54);
    if ((v16 ^ v17) >= 0x4000)
    {
      v26 = Substring.subscript.getter();
      v28 = v27;

      *(v3 + 32) = v26;
      *(v3 + 40) = v28;
      *(v3 + 48) = 64;
      *(v3 + 56) = 0;
      *(v3 + 64) = 0;
      *(v3 + 72) = a3;
      *(v3 + 80) = 0;
      *(v3 + 88) = 1;
      return v3;
    }

LABEL_39:
    __break(1u);
    return result;
  }

  if (!v13)
  {

    sub_1000021C0(&qword_1000B5688, &qword_100092748);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10008E640;
    *(v3 + 32) = a1;
    *(v3 + 40) = a2;
    *(v3 + 48) = 0x2000000000000000;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = a3;
    *(v3 + 80) = 0;
    *(v3 + 88) = 1;

    return v3;
  }

  if (v13 == 2)
  {
    sub_1000021C0(&qword_1000B5688, &qword_100092748);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10008E640;

    sub_10006DF1C(a1, a2, v55);
    v18 = v56;
    v19 = v55[1];
    *(v3 + 32) = v55[0];
    *(v3 + 48) = v19;
    *(v3 + 64) = v18;
    *(v3 + 72) = a3;
    *(v3 + 80) = 0;
    *(v3 + 88) = 1;
    return v3;
  }

LABEL_23:
  sub_10002A1BC();
  swift_allocError();
  *v20 = a1;
  *(v20 + 8) = a2;
  *(v20 + 16) = v50;
  *(v20 + 32) = v51;
  *(v20 + 48) = v52;
  *(v20 + 64) = v53;
  *(v20 + 80) = 5;
  swift_willThrow();

  return v3;
}

unint64_t sub_10006DF1C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = sub_10006E0DC(61, 0xE100000000000000, a1, a2);
  if (v7)
  {
    v8 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v8 = a1;
    }

    v9 = v8 << 16;
    if ((a2 & 0x1000000000000000) == 0 || (a1 & 0x800000000000000) != 0)
    {
      v10 = v9 | 7;
    }

    else
    {
      v10 = v9 | 0xB;
    }
  }

  else
  {
    v10 = v6;
  }

  v11 = String.subscript.getter();
  v13 = v12;
  sub_1000117E4(v10, a1, a2);
  v15 = v14;

  result = Substring.index(_:offsetBy:limitedBy:)();
  if (v17)
  {
    result = v15;
  }

  if (v15 >> 14 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v18 = Substring.subscript.getter();
    v20 = v19;

    v21 = sub_10006961C(v11, v13);
    v23 = v22;
    v25 = v24;
    if ((v18 ^ v20) >> 14)
    {
      v26 = static String._fromSubstring(_:)();
      v27 = v29;

      v28 = v25 | 0x8000000000000000;
    }

    else
    {

      v26 = 0;
      v27 = 0;
      v28 = v25;
    }

    *a3 = v21;
    a3[1] = v23;
    a3[2] = v28;
    a3[3] = v26;
    a3[4] = v27;
  }

  return result;
}

unint64_t sub_10006E0DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (String.subscript.getter() != a1 || v9 != a2)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return v8;
    }

    v8 = String.index(after:)();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_10006E2A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_10006F464(v5, v7) & 1;
}

uint64_t sub_10006E2F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_10006F628(v5, v7) & 1;
}

BOOL sub_10006E344(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v2;
  v3 = *(a1 + 40);
  v13 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v6;
  v7 = *(a2 + 40);
  v15 = *(a2 + 32);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  if ((sub_10006F628(v12, v14) & 1) == 0 || v3 != v7)
  {
    return 0;
  }

  if (!v5)
  {
    if (v4 == v8)
    {
      v11 = v9;
    }

    else
    {
      v11 = 1;
    }

    return (v11 & 1) == 0;
  }

  return (v9 & 1) != 0;
}

Swift::Int sub_10006E3E0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10006E454()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10006E4E8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    Hasher._combine(_:)(1uLL);
    v3 = v1;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_10006E548()
{
  if (*(v0 + 8))
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    Hasher._combine(_:)(1uLL);
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_10006E590()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v2)
  {
    v1 = 0;
  }

  else
  {
    Hasher._combine(_:)(1uLL);
  }

  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10006E5F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (*a1 >= *a2)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_10006E628(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(a2 + 8) == 1)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a2 >= *a1)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10006E660(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 >= *a2)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10006E698(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(a2 + 8) == 1)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (*a2 >= *a1)
    {
      v2 = 1;
    }

    if ((v2 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_10006E6D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

Swift::Int sub_10006E70C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v4 = 0;
  if ((v3 & 1) == 0)
  {
    Hasher._combine(_:)(1uLL);
    v4 = v2;
  }

  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

void sub_10006E780()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Hasher._combine(_:)(*v0);
  if (v2)
  {
    v1 = 0;
  }

  else
  {
    Hasher._combine(_:)(1uLL);
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_10006E7D4()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  if (v3)
  {
    v1 = 0;
  }

  else
  {
    Hasher._combine(_:)(1uLL);
  }

  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10006E848(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a1 == *a2)
  {
    v3 = *(a2 + 16);
    if (*(a1 + 16))
    {
      if ((v3 & 1) == 0)
      {
        return 1;
      }
    }

    else
    {
      if (*(a1 + 8) >= *(a2 + 8))
      {
        v3 = 1;
      }

      if (v3 != 1)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_10006E898(uint64_t a1, uint64_t a2)
{
  if (*a2 < *a1)
  {
    return 0;
  }

  if (*a2 == *a1)
  {
    v3 = *(a1 + 16);
    if (*(a2 + 16))
    {
      if ((v3 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a2 + 8) >= *(a1 + 8))
      {
        v3 = 1;
      }

      if (v3 != 1)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t sub_10006E8E8(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    return 0;
  }

  if (*a1 == *a2)
  {
    v3 = *(a2 + 16);
    if (*(a1 + 16))
    {
      if ((v3 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 8) >= *(a2 + 8))
      {
        v3 = 1;
      }

      if (v3 != 1)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t sub_10006E938(uint64_t a1, uint64_t a2)
{
  if (*a2 < *a1)
  {
    return 1;
  }

  if (*a2 == *a1)
  {
    v3 = *(a1 + 16);
    if (*(a2 + 16))
    {
      if ((v3 & 1) == 0)
      {
        return 1;
      }
    }

    else
    {
      if (*(a2 + 8) >= *(a1 + 8))
      {
        v3 = 1;
      }

      if (v3 != 1)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_10006E988(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 16);
    if (*(a1 + 16) == 1)
    {
      if (v2)
      {
        return 1;
      }
    }

    else
    {
      if (*(a1 + 8) != *(a2 + 8))
      {
        v2 = 1;
      }

      if (v2 != 1)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_10006E9D4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_100055D64(*a1, *a2) & 1) == 0 || v2 != v4)
  {
    return 0;
  }

  return sub_100055CD4(v3, v5);
}

uint64_t sub_10006EBE4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return dispatch thunk of CustomStringConvertible.description.getter();
  }

  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  v4._countAndFlagsBits = 46;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  return v6;
}

uint64_t sub_10006EE9C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 <= a2)
  {
    v3 = result;
    if (v2 != a2)
    {
      if (v2 < a2)
      {
        v5 = a2 << 6;
        v6 = a2;
        while (1)
        {
          v7 = v6 - 1;
          if (v6 < 1)
          {
            break;
          }

          v8 = *v3;
          if (v7 >= *(*v3 + 16))
          {
            goto LABEL_17;
          }

          v9 = *(v8 + v5 - 32);
          v10 = *(v8 + v5 - 16);
          v11 = *(v8 + v5);
          *&v24[9] = *(v8 + v5 + 9);
          v23 = v10;
          *v24 = v11;
          v22 = v9;
          sub_100062A60(&v22, v20);
          result = swift_isUniquelyReferenced_nonNull_native();
          *v3 = v8;
          if ((result & 1) == 0)
          {
            result = sub_100058878(v8);
            v8 = result;
            *v3 = result;
          }

          v12 = v7 + 1;
          if (v12 >= *(v8 + 16))
          {
            goto LABEL_18;
          }

          v13 = (v8 + v5);
          v14 = *(v8 + v5 + 32);
          v15 = *(v8 + v5 + 48);
          v16 = *(v8 + v5 + 64);
          *&v21[9] = *(v8 + v5 + 73);
          v20[1] = v15;
          *v21 = v16;
          v20[0] = v14;
          v17 = v22;
          v18 = v23;
          v19 = *v24;
          *(v13 + 73) = *&v24[9];
          v13[3] = v18;
          v13[4] = v19;
          v13[2] = v17;
          result = sub_100062ABC(v20);
          v6 = v12 - 1;
          if (v12 - 1 == v2)
          {
            goto LABEL_14;
          }

          if (v2 < v6)
          {
            v5 -= 64;
            if (v6 <= a2)
            {
              continue;
            }
          }

          goto LABEL_13;
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

LABEL_13:
      __break(1u);
    }

LABEL_14:
    if (!__OFADD__(v2, 1))
    {
      v3[1] = v2 + 1;
      return result;
    }

    goto LABEL_19;
  }

  return result;
}

uint64_t sub_10006EFF0(uint64_t result, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = v3[1];
  v6 = *(*v3 + 16);
  if (v6 < v5)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v5 < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v5 >= v6)
  {
    return result;
  }

  v7 = v5 << 6;
  v8 = v3[1];
  while (1)
  {
    v9 = *(v4 + v7 + 72);
    if (v9 == result)
    {
      break;
    }

    ++v8;
    v7 += 64;
    if (v9 > result || v8 >= v6)
    {
      return result;
    }
  }

  if (a3)
  {
    if (v6 != v8)
    {
      v11 = (v4 + v7 + 72);
      v12 = v8;
      while (1)
      {
        v13 = *v11;
        v11 += 8;
        if (v13 != result)
        {
          break;
        }

        if (v6 == ++v12)
        {
          goto LABEL_35;
        }
      }

      v6 = v12;
    }

LABEL_35:
    if (v6 >= v8)
    {

      return sub_10006F2EC(v8, v6);
    }

    goto LABEL_43;
  }

  if (*(v4 + v7 + 88) == 1)
  {
    v14 = result;
    v15 = a2;
    sub_10006F1A0(v8);
    a2 = v15;
    result = v14;
    ++v8;
    v4 = *v3;
    v5 = v3[1];
  }

  if (v5 < 0)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v16 = *(v4 + 16);
  if (v16 < v5 || v16 < v8)
  {
    goto LABEL_44;
  }

  if (v8 < v5)
  {
LABEL_45:
    __break(1u);
    return result;
  }

  if (v8 != v16)
  {
    for (i = (v4 + (v8 << 6) + 88); ; i += 64)
    {
      if (v8 >= v16)
      {
        __break(1u);
        goto LABEL_40;
      }

      if (*(i - 2) == result && (*i & 1) == 0 && *(i - 1) == a2)
      {
        break;
      }

      if (v16 == ++v8)
      {
        return result;
      }
    }

    return sub_10006F1A0(v8);
  }

  return result;
}

uint64_t sub_10006F1A0(uint64_t result)
{
  v3 = v1[1];
  if (v3 <= result)
  {
    if (v3 != result)
    {
      v4 = result;
      if (v3 >= result)
      {
LABEL_13:
        __break(1u);
      }

      else
      {
        v2 = *v1;
        v5 = result << 6;
        v6 = result;
        while (1)
        {
          v7 = v6 - 1;
          if (v6 < 1)
          {
            break;
          }

          if (v7 >= *(v2 + 16))
          {
            goto LABEL_15;
          }

          v8 = *(v2 + v5 - 32);
          v9 = *(v2 + v5 - 16);
          v10 = *(v2 + v5);
          *&v23[9] = *(v2 + v5 + 9);
          v22 = v9;
          *v23 = v10;
          v21 = v8;
          sub_100062A60(&v21, v19);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_100058878(v2);
            v2 = result;
          }

          v11 = v7 + 1;
          if (v11 >= *(v2 + 16))
          {
            goto LABEL_16;
          }

          v12 = (v2 + v5);
          v13 = *(v2 + v5 + 32);
          v14 = *(v2 + v5 + 48);
          v15 = *(v2 + v5 + 64);
          *&v20[9] = *(v2 + v5 + 73);
          v19[1] = v14;
          *v20 = v15;
          v19[0] = v13;
          v16 = v21;
          v17 = v22;
          v18 = *v23;
          *(v12 + 73) = *&v23[9];
          v12[3] = v17;
          v12[4] = v18;
          v12[2] = v16;
          result = sub_100062ABC(v19);
          v6 = v11 - 1;
          if (v11 - 1 == v3)
          {
            goto LABEL_17;
          }

          if (v3 < v6)
          {
            v5 -= 64;
            if (v6 <= v4)
            {
              continue;
            }
          }

          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      *v1 = v2;
    }

    if (__OFADD__(v3, 1))
    {
      __break(1u);
    }

    else
    {
      v1[1] = v3 + 1;
    }
  }

  return result;
}

uint64_t sub_10006F2EC(uint64_t result, unint64_t a2)
{
  v5 = result;
  v6 = v2[1];
  if (v6 >= result)
  {
    goto LABEL_12;
  }

  v3 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_19;
  }

  v7 = a2 - 1;
  if (!__OFSUB__(a2, 1))
  {
    while (1)
    {
      v24 = a2;
      if (v5 >= 1)
      {
        break;
      }

LABEL_10:
      __break(1u);
LABEL_11:
      *v2 = v3;
      a2 = v24;
LABEL_12:
      v21 = a2 - v5;
      if (__OFSUB__(a2, v5))
      {
        goto LABEL_17;
      }

      v22 = __OFADD__(v6, v21);
      v23 = v6 + v21;
      if (!v22)
      {
        v2[1] = v23;
        return result;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      result = sub_100058878(v3);
      v3 = result;
      v7 = a2 - 1;
      if (__OFSUB__(a2, 1))
      {
        goto LABEL_21;
      }
    }

    v8 = v5 + 1;
    v9 = (v5 << 6) - 32;
    v10 = (a2 << 6) - 32;
    while (1)
    {
      a2 = *(v3 + 16);
      if (v8 - 2 >= a2)
      {
        break;
      }

      v11 = *(v3 + v9);
      v12 = *(v3 + v9 + 16);
      v13 = *(v3 + v9 + 32);
      *&v28[9] = *(v3 + v9 + 41);
      v27 = v12;
      *v28 = v13;
      v26 = v11;
      sub_100062A60(&v26, v25);
      if (v7 >= a2)
      {
        goto LABEL_16;
      }

      v14 = (v3 + v10);
      v15 = *(v3 + v10);
      v16 = *(v3 + v10 + 16);
      v17 = *(v3 + v10 + 32);
      *&v30[9] = *(v3 + v10 + 41);
      v29[1] = v16;
      *v30 = v17;
      v29[0] = v15;
      v18 = v26;
      v19 = v27;
      v20 = *v28;
      *(v14 + 41) = *&v28[9];
      v14[1] = v19;
      v14[2] = v20;
      *v14 = v18;
      result = sub_100062ABC(v29);
      if (v6 >= v8 - 2)
      {
        goto LABEL_11;
      }

      --v7;
      --v8;
      v9 -= 64;
      v10 -= 64;
      if (v8 < 2)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10006F464(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = a2[2];
    if (v7 < 0)
    {
      return 0;
    }

    v8 = *a2;
    v9 = a2[1];
    v10 = a2[2];
    if (v6 >> 6)
    {
      v11 = v7 & 0xC0;
      if (v6 >> 6 == 1)
      {
        if (v11 == 64)
        {
          if (v4 == v8 && v5 == v9)
          {
            if ((v6 ^ v7))
            {
              return 0;
            }
          }

          else
          {
            v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
            if (((v6 ^ v7) & 1) != 0 || (v20 & 1) == 0)
            {
              return 0;
            }
          }

          return 1;
        }

        return 0;
      }

      if (v11 != 128)
      {
        return 0;
      }
    }

    else if (v10 >= 0x40)
    {
      return 0;
    }

    return v4 == v8 && v5 == v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
  }

  v12 = a2[2];
  if ((v12 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v13 = a1[3];
  v14 = a1[4];
  v15 = *a2;
  v16 = a2[1];
  v17 = a2[3];
  v18 = a2[4];
  if (!(v6 >> 6))
  {
    if (a2[2] >= 0x40u)
    {
      return 0;
    }

LABEL_28:
    if ((v4 != v15 || v5 != v16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_38;
  }

  v19 = v12 & 0xC0;
  if (v6 >> 6 != 1)
  {
    if (v19 != 128)
    {
      return 0;
    }

    goto LABEL_28;
  }

  if (v19 != 64)
  {
    return 0;
  }

  if (v4 == v15 && v5 == v16)
  {
    if ((v6 ^ v12))
    {
      return 0;
    }
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if (v22 & 1) == 0 || ((v6 ^ v12))
    {
      return result;
    }
  }

LABEL_38:
  if (v13 == v17 && v14 == v18)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10006F628(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = (v6 >> 61) & 3;
  if (!v7)
  {
    v10 = a2[2];
    if ((v10 & 0x6000000000000000) != 0)
    {
      return 0;
    }

    v11 = *a2;
    v12 = a2[1];
    if ((v6 & 0x8000000000000000) == 0)
    {
      if (v10 < 0)
      {
        return 0;
      }

      v13 = a2[2];
      if (v6 >> 6)
      {
        v14 = v10 & 0xC0;
        if (v6 >> 6 == 1)
        {
          if (v14 != 64)
          {
            return 0;
          }

          if (v4 == v11 && v5 == v12)
          {
            if ((v6 ^ v10))
            {
              return 0;
            }
          }

          else
          {
            v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
            if (((v6 ^ v10) & 1) != 0 || (v21 & 1) == 0)
            {
              return 0;
            }
          }

          return 1;
        }

        if (v14 != 128)
        {
          return 0;
        }
      }

      else if (v13 >= 0x40)
      {
        return 0;
      }

      if (v4 == v11 && v5 == v12)
      {
        return 1;
      }

      return (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      return 0;
    }

    v16 = a1[3];
    v17 = a1[4];
    v18 = a2[3];
    v19 = a2[4];
    if (v6 >> 6)
    {
      v20 = v10 & 0xC0;
      if (v6 >> 6 == 1)
      {
        if (v20 != 64 || (v4 != v11 || v5 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v6 ^ v10) & 1) != 0)
        {
          return 0;
        }

        goto LABEL_46;
      }

      if (v20 != 128)
      {
        return 0;
      }
    }

    else if (a2[2] >= 0x40u)
    {
      return 0;
    }

    if ((v4 != v11 || v5 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

LABEL_46:
    if (v16 == v18 && v17 == v19)
    {
      return 1;
    }

    return (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
  }

  if (v7 != 1)
  {
    v15 = a2[2];
    return (v15 & 0x6000000000000000) == 0x4000000000000000 && v15 == 0x4000000000000000 && !(a2[3] | a2[4] | a2[1] | *a2);
  }

  if ((a2[2] & 0x6000000000000000) != 0x2000000000000000)
  {
    return 0;
  }

  if (v4 == *a2 && v5 == a2[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_10006F844@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a3;
  v4 = a2 >> 14;
  v5 = a1 >> 14;
  if (a1 >> 14 == a2 >> 14)
  {
    result = Substring.distance(from:to:)();
    if (result == 1)
    {
      goto LABEL_27;
    }

LABEL_3:
    v7 = static String._fromSubstring(_:)();
    v9 = v8;

    v10 = 0;
    v11 = 0;
    v12 = 128;
    goto LABEL_24;
  }

  v35 = a1 >> 14;
  do
  {
    if (Substring.subscript.getter() == 61 && v13 == 0xE100000000000000)
    {

LABEL_13:
      if (v5 < v35)
      {
        __break(1u);
      }

      else
      {
        v16 = Substring.subscript.getter();
        if ((v16 ^ v17) < 0x4000)
        {

          if (Substring.distance(from:to:)() == 1)
          {
            v18 = Substring.subscript.getter();
            v20 = v19;
            v21 = 64;
          }

          else
          {
            v18 = static String._fromSubstring(_:)();
            v20 = v24;
            v21 = 128;
          }

          v25 = sub_100068E38(v18, v20, v21);
          v27 = v26;
          sub_100028AE8(v18, v20, v21);
          sub_10002A1BC();
          swift_allocError();
          *v28 = v25;
          *(v28 + 8) = v27;
          *(v28 + 16) = v31;
          *(v28 + 32) = v32;
          *(v28 + 48) = v33;
          *(v28 + 64) = v34;
          *(v28 + 80) = 5;
          return swift_willThrow();
        }

        result = Substring.index(after:)();
        if (v4 >= result >> 14)
        {
          Substring.subscript.getter();

          v10 = static String._fromSubstring(_:)();
          v11 = v22;

          if (Substring.distance(from:to:)() == 1)
          {
            v12 = 0x8000000000000040;
            v7 = Substring.subscript.getter();
            v9 = v23;
          }

          else
          {
            v7 = static String._fromSubstring(_:)();
            v9 = v29;
            v12 = 0x8000000000000080;
          }

          v3 = a3;

LABEL_24:
          *v3 = v7;
          v3[1] = v9;
          v3[2] = v12;
          v3[3] = v10;
          v3[4] = v11;
          return result;
        }
      }

      __break(1u);
      goto LABEL_27;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_13;
    }

    v5 = Substring.index(after:)() >> 14;
  }

  while (v5 != v4);
  result = Substring.distance(from:to:)();
  v3 = a3;
  if (result != 1)
  {
    goto LABEL_3;
  }

  if (v35 != v4)
  {
    v7 = Substring.subscript.getter();
    v9 = v15;

    v10 = 0;
    v11 = 0;
    v12 = 64;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10006FC54(uint64_t a1)
{
  v28 = _swiftEmptyArrayStorage;
  v2 = (2 * *(a1 + 16)) | 1;
  v24 = a1;
  v25 = a1 + 32;
  v26 = 0;
  v27 = v2;

  result = sub_10006CE68();
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    while (1)
    {
      v7 = sub_10006D8FC(result, v5, v6);
      if (v1)
      {

        swift_unknownObjectRelease();

        return v5;
      }

      v8 = v7;

      result = sub_100041924(v9);
      if (!*(v8 + 16))
      {
        goto LABEL_28;
      }

      v10 = *(v8 + 48);
      v21 = *(v8 + 32);
      v22 = v10;
      v23[0] = *(v8 + 64);
      *(v23 + 9) = *(v8 + 73);
      sub_100062A60(&v21, v20);

      if ((v22 & 0x6000000000000000) == 0x4000000000000000 && v22 == 0x4000000000000000 && !(*(&v22 + 1) | *&v23[0] | *(&v21 + 1) | v21))
      {
        break;
      }

      result = sub_100062ABC(&v21);
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_29;
      }

      result = sub_10006CE68();
      v5 = v12;
      ++v6;
      if (!v12)
      {
        goto LABEL_14;
      }
    }

    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_31;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_14:
  v13 = (v27 >> 1) - v26;
  if (v27 >> 1 != v26)
  {
    if ((v27 >> 1) > v26)
    {
      v5 = v28;
      v14 = (v25 + 16 * v26 + 8);
      while (1)
      {
        v16 = *(v14 - 1);
        v15 = *v14;

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100043C68(0, *(v5 + 16) + 1, 1, v5);
          v5 = result;
        }

        v18 = *(v5 + 16);
        v17 = *(v5 + 24);
        if (v18 >= v17 >> 1)
        {
          result = sub_100043C68((v17 > 1), v18 + 1, 1, v5);
          v5 = result;
        }

        LOBYTE(v21) = 1;
        *(v5 + 16) = v18 + 1;
        v19 = v5 + (v18 << 6);
        *(v19 + 32) = v16;
        *(v19 + 40) = v15;
        *(v19 + 48) = 0x2000000000000000;
        *(v19 + 56) = 0;
        *(v19 + 64) = 0;
        *(v19 + 72) = v11;
        *(v19 + 80) = 0;
        *(v19 + 88) = v21;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        ++v11;
        v14 += 2;
        if (!--v13)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  v5 = v28;
LABEL_16:
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_10006FEE0(uint64_t result, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  if ((a3 & 0x100) == 0)
  {
    v5 = *(a4 + 16);
    if (v5 >= a5)
    {
      if (a5 < 0)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      v6 = (a4 + (a5 << 6) + 88);
      do
      {
        if (v5 == a5)
        {
          return 0;
        }

        v9 = *(v6 - 2);
        if (v9 > result)
        {
          return a5;
        }

        if (v9 == result)
        {
          v7 = *v6;
          if (a3)
          {
            if ((v7 & 1) == 0)
            {
              return a5;
            }
          }

          else
          {
            if (*(v6 - 1) <= a2)
            {
              v7 = 1;
            }

            if (v7 != 1)
            {
              return a5;
            }
          }
        }

        v6 += 64;
      }

      while (!__OFADD__(a5++, 1));
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

  return 0;
}

uint64_t sub_10006FF78@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 16);
  if (v4 < a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v4 == a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    LOBYTE(v8) = 0;
    v9 = 0;
    v10 = xmmword_100091330;
    v11 = 0uLL;
LABEL_7:
    *a3 = v5;
    *(a3 + 8) = v6;
    *(a3 + 16) = v9;
    *(a3 + 24) = v11;
    *(a3 + 40) = v10;
    *(a3 + 56) = v7;
    *(a3 + 64) = v5;
    *(a3 + 72) = v6;
    *(a3 + 80) = v8;
    return result;
  }

  if (v4 > a2)
  {
    v12 = (result + (a2 << 6));
    *&v19[9] = *(v12 + 73);
    v13 = v12[4];
    v18 = v12[3];
    *v19 = v13;
    v17 = v12[2];
    v5 = *(&v13 + 1);
    v6 = *&v19[16];
    v8 = v19[24];
    v20 = 0;
    v14 = v18;
    v15 = v17;
    v7 = v13;
    result = sub_100062A60(&v17, v16);
    v10 = v14;
    v11 = v15;
    v9 = v8;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}