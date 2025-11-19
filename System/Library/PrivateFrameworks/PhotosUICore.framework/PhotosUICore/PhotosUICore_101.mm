uint64_t sub_1A4936ADC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4936B48()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[3];

  (*(v2 + 8))(v3, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A4936BDC()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1A4936C48(uint64_t a1)
{
  v3 = type metadata accessor for PhotosPPTTestRunner();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(v1);
  sub_1A3DE0CA0(a1, v5);
  v7 = sub_1A3FA4E54(v5);
  sub_1A3DE0D04(a1);
  return v7;
}

id sub_1A4936CE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeShelvesPPTTests();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for LemonadeShelvesPPTTests()
{
  result = qword_1EB1E0C88;
  if (!qword_1EB1E0C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4936DC0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A49338DC(v2);
}

uint64_t sub_1A4936E54()
{
  v2 = *(sub_1A5240E64() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A4935804(v4, v0 + v3);
}

uint64_t sub_1A4936F2C(uint64_t a1, uint64_t a2)
{
  sub_1A3C4D338(0, &qword_1EB136EA0, MEMORY[0x1E69C2610]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4936FAC(uint64_t a1, uint64_t a2)
{
  sub_1A3C4D338(0, &qword_1EB136EA0, MEMORY[0x1E69C2610]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A493702C()
{
  v2 = *(sub_1A5240E64() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1A3C4D338(0, &qword_1EB136EA0, MEMORY[0x1E69C2610]);
  v6 = (v4 + *(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  v7 = *(v0 + 16);
  v8 = v0 + v4;
  v9 = *(v0 + v4);
  v10 = *(v8 + 8);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1A3CA8098;

  return sub_1A4934D38(v7, v0 + v3, v9, v10, v0 + v6);
}

uint64_t sub_1A49371A0(uint64_t a1)
{
  sub_1A3C4D338(0, &qword_1EB136EA0, MEMORY[0x1E69C2610]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_178Tm()
{
  v1 = sub_1A5240E64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1A3C4D338(0, &qword_1EB136EA0, MEMORY[0x1E69C2610]);
  v6 = (v4 + *(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);

  (*(v2 + 8))(v0 + v3, v1);

  v7 = sub_1A5243724();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_1A49373EC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A49343B0(v2, v3);
}

uint64_t sub_1A4937AEC()
{
  sub_1A4938BAC(*(v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_1A4937B40()
{
  result = sub_1A4938AA8(MEMORY[0x1E69E7CC0]);
  qword_1EB17BCA8 = result;
  return result;
}

void sub_1A4937B70(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A435B4C4(0, &qword_1EB1263C0);
    sub_1A524E794();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

size_t sub_1A4937E3C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A49388EC(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for TestNotificationPhotosItem(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1A493B3D0(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

void sub_1A4938108()
{
  sub_1A4938900(0);
  sub_1A4938C94(&qword_1EB128D98, 255, sub_1A4938900);

  sub_1A5245C54();
}

size_t sub_1A49381D0(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1A3C7D258(0, &unk_1EB1453E0, type metadata accessor for TestNotificationPhotosItem, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for TestNotificationPhotosItem(0) - 8);
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
  v15 = *(type metadata accessor for TestNotificationPhotosItem(0) - 8);
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

uint64_t sub_1A49383CC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A4938E28();
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_1A524EC84();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_1A4938634(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1A3CAB9BC(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A49383CC(v16, a4 & 1);
      result = sub_1A3CAB9BC(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1A4938794();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

void *sub_1A4938794()
{
  v1 = v0;
  sub_1A4938E28();
  v2 = *v0;
  v3 = sub_1A524E764();
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

void sub_1A4938920(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TestNotificationPhotosItem(255);
    v7 = sub_1A4938C94(&qword_1EB12AE90, 255, type metadata accessor for TestNotificationPhotosItem);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A49389C0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A4938900(0);
    sub_1A4938C94(&qword_1EB1453D8, 255, sub_1A4938900);

    sub_1A5245F44();
  }

  return result;
}

unint64_t sub_1A4938AA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A4938E28();
  v3 = sub_1A524E794();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_1A3CAB9BC(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 1);
    v13 = *v7;

    result = sub_1A3CAB9BC(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4938BAC(uint64_t a1)
{
  if (qword_1EB17BCA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = sub_1A3CAB9BC(a1);
  if (v3)
  {
    v4 = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = qword_1EB17BCA8;
    v8 = qword_1EB17BCA8;
    qword_1EB17BCA8 = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A4938794();
      v6 = v8;
    }

    sub_1A3DBD0B0(v4, v6);
    qword_1EB17BCA8 = v6;
  }

  return swift_endAccess();
}

uint64_t sub_1A4938C94(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1A4938E28()
{
  if (!qword_1EB126408)
  {
    sub_1A3C3637C();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126408);
    }
  }
}

uint64_t sub_1A4938E90(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A435B4C4(0, qword_1EB120420);
    sub_1A524E794();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t sub_1A4938FA0()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TestNotificationPhotosItem(0);
  v77 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v69 - v8;
  sub_1A3C7D258(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v69 - v11;
  v13 = sub_1A5241144();
  v78 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v69 - v17;
  v19 = sub_1A5240554();
  if (v19)
  {
    v20 = v19;
    v79 = sub_1A524C674();
    v80 = v21;
    sub_1A524E384();
    if (*(v20 + 16) && (v22 = sub_1A3D5C0BC(v81), (v23 & 1) != 0))
    {
      sub_1A3C2F0BC(*(v20 + 56) + 32 * v22, &v82);
      sub_1A3D5FAFC(v81);
      sub_1A3DAF588();
      if (swift_dynamicCast())
      {
        v24 = v79;
        v79 = 0x656C746974;
        v80 = 0xE500000000000000;
        sub_1A524E384();
        if (*(v20 + 16) && (v25 = sub_1A3D5C0BC(v81), (v26 & 1) != 0))
        {
          sub_1A3C2F0BC(*(v20 + 56) + 32 * v25, &v82);
          sub_1A3D5FAFC(v81);
          if (swift_dynamicCast())
          {
            v27 = v80;
            v75 = v79;
            v28 = &v87;
LABEL_16:
            *(v28 - 32) = v27;
            v79 = 0x7470697263736564;
            v80 = 0xEB000000006E6F69;
            sub_1A524E384();
            if (*(v20 + 16) && (v34 = sub_1A3D5C0BC(v81), (v35 & 1) != 0))
            {
              sub_1A3C2F0BC(*(v20 + 56) + 32 * v34, &v82);
              sub_1A3D5FAFC(v81);
              if (swift_dynamicCast())
              {
                v36 = v80;
                v74 = v79;
                v37 = &v84;
LABEL_22:
                *(v37 - 32) = v36;
                v82 = 0x656C746974627573;
                v83 = 0xE800000000000000;
                sub_1A524E384();
                if (*(v20 + 16) && (v38 = sub_1A3D5C0BC(v81), (v39 & 1) != 0))
                {
                  sub_1A3C2F0BC(*(v20 + 56) + 32 * v38, &v82);
                  sub_1A3D5FAFC(v81);
                  v40 = swift_dynamicCast();
                  if (v40)
                  {
                    v41 = v79;
                  }

                  else
                  {
                    v41 = 0;
                  }

                  if (v40)
                  {
                    v42 = v80;
                  }

                  else
                  {
                    v42 = 0;
                  }
                }

                else
                {
                  sub_1A3D5FAFC(v81);
                  v41 = 0;
                  v42 = 0;
                }

                v79 = 0x7463617265746E69;
                v80 = 0xEF657079546E6F69;
                sub_1A524E384();
                v43 = *(v20 + 16);
                v72 = v41;
                if (v43 && (v44 = sub_1A3D5C0BC(v81), (v45 & 1) != 0))
                {
                  sub_1A3C2F0BC(*(v20 + 56) + 32 * v44, &v82);
                  sub_1A3D5FAFC(v81);
                  swift_dynamicCast();
                }

                else
                {
                  sub_1A3D5FAFC(v81);
                }

                v46 = sub_1A4057DE0();
                if (v46 == 3)
                {
                  v47 = 0;
                }

                else
                {
                  v47 = v46;
                }

                LODWORD(v70) = v47;
                v79 = 0x6C7974536E6F6369;
                v80 = 0xE900000000000065;
                sub_1A524E384();
                v48 = *(v20 + 16);
                v69 = v24;
                v71 = v42;
                if (v48 && (v49 = sub_1A3D5C0BC(v81), (v50 & 1) != 0))
                {
                  sub_1A3C2F0BC(*(v20 + 56) + 32 * v49, &v82);
                  sub_1A3D5FAFC(v81);
                  swift_dynamicCast();
                }

                else
                {
                  sub_1A3D5FAFC(v81);
                }

                v51 = sub_1A405810C();
                if (v51 == 3)
                {
                  v52 = 0;
                }

                else
                {
                  v52 = v51;
                }

                v82 = 0x697373696D736964;
                v83 = 0xEB00000000656C62;
                sub_1A524E384();
                if (*(v20 + 16) && (v53 = sub_1A3D5C0BC(v81), (v54 & 1) != 0))
                {
                  sub_1A3C2F0BC(*(v20 + 56) + 32 * v53, &v82);
                  sub_1A3D5FAFC(v81);
                  if (swift_dynamicCast())
                  {
                    v55 = v79;
LABEL_51:
                    v82 = 0x646165726E75;
                    v83 = 0xE600000000000000;
                    sub_1A524E384();
                    if (*(v20 + 16) && (v56 = sub_1A3D5C0BC(v81), (v57 & 1) != 0))
                    {
                      sub_1A3C2F0BC(*(v20 + 56) + 32 * v56, &v82);
                      sub_1A3D5FAFC(v81);
                      if (swift_dynamicCast())
                      {
                        v58 = v79;
LABEL_57:
                        v79 = 1702125924;
                        v80 = 0xE400000000000000;
                        sub_1A524E384();
                        if (*(v20 + 16) && (v59 = sub_1A3D5C0BC(v81), (v60 & 1) != 0))
                        {
                          sub_1A3C2F0BC(*(v20 + 56) + 32 * v59, &v82);
                          sub_1A3D5FAFC(v81);

                          v61 = swift_dynamicCast();
                          v62 = v78;
                          (*(v78 + 56))(v12, v61 ^ 1u, 1, v13);
                          if ((*(v62 + 48))(v12, 1, v13) != 1)
                          {
                            (*(v62 + 32))(v18, v12, v13);
                            goto LABEL_64;
                          }
                        }

                        else
                        {

                          sub_1A3D5FAFC(v81);
                          v62 = v78;
                          (*(v78 + 56))(v12, 1, 1, v13);
                        }

                        sub_1A5241104();
                        if ((*(v62 + 48))(v12, 1, v13) != 1)
                        {
                          sub_1A493B30C(v12, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1A3C7D258);
                        }

LABEL_64:
                        v63 = qword_1EB1E0C98++;
                        (*(v62 + 16))(v15, v18, v13);
                        v68 = v70;
                        v70 = v63;
                        sub_1A4057D00(v63, v75, v76, v74, v73, v55, v72, v71, v9, v68, v52, v58, v15);
                        if (qword_1EB17BC90 != -1)
                        {
                          swift_once();
                        }

                        sub_1A493B24C(v9, v6);
                        swift_beginAccess();
                        v64 = qword_1EB17BC98;
                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        qword_1EB17BC98 = v64;
                        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                        {
                          v64 = sub_1A49381D0(0, v64[2] + 1, 1, v64);
                          qword_1EB17BC98 = v64;
                        }

                        v67 = v64[2];
                        v66 = v64[3];
                        if (v67 >= v66 >> 1)
                        {
                          v64 = sub_1A49381D0(v66 > 1, v67 + 1, 1, v64);
                        }

                        v64[2] = v67 + 1;
                        sub_1A493B3D0(v6, v64 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v67);
                        qword_1EB17BC98 = v64;
                        swift_endAccess();
                        if (qword_1EB17BCA0 != -1)
                        {
                          swift_once();
                        }

                        swift_beginAccess();
                        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
                      }
                    }

                    else
                    {
                      sub_1A3D5FAFC(v81);
                    }

                    v58 = 0;
                    goto LABEL_57;
                  }
                }

                else
                {
                  sub_1A3D5FAFC(v81);
                }

                v55 = 0;
                goto LABEL_51;
              }
            }

            else
            {
              sub_1A3D5FAFC(v81);
            }

            v73 = 0x80000001A53F35C0;
            v36 = 0xD000000000000013;
            v37 = &v85;
            goto LABEL_22;
          }
        }

        else
        {
          sub_1A3D5FAFC(v81);
        }

        v76 = 0xED0000656C746954;
        v27 = 0x20676E697373694DLL;
        v28 = &v86;
        goto LABEL_16;
      }
    }

    else
    {

      sub_1A3D5FAFC(v81);
    }
  }

  v29 = sub_1A45350E8();
  (*(v1 + 16))(v3, v29, v0);
  v30 = sub_1A524D244();
  v31 = sub_1A5246F04();
  if (os_log_type_enabled(v31, v30))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1A3C1C000, v31, v30, "Failed to get reply handle for post notification", v32, 2u);
    MEMORY[0x1A590EEC0](v32, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_1A4939E44()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C7D258(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v31 - v5;
  v7 = sub_1A5241144();
  MEMORY[0x1EEE9AC00](v7);
  v31[13] = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v31[15] = v31 - v10;
  v11 = type metadata accessor for TestNotificationPhotosItem(0);
  MEMORY[0x1EEE9AC00](v11);
  v31[14] = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v31[16] = v31 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_1A5240554();
  if (v16)
  {
    v17 = v16;
    v32 = sub_1A524C674();
    v33 = v18;
    sub_1A524E384();
    if (*(v17 + 16) && (v19 = sub_1A3D5C0BC(&v34), (v20 & 1) != 0))
    {
      sub_1A3C2F0BC(*(v17 + 56) + 32 * v19, &v36);
      sub_1A3D5FAFC(&v34);
      sub_1A3DAF588();
      if (swift_dynamicCast())
      {
        v21 = v32;
        v32 = 0x696669746E656469;
        v33 = 0xEA00000000007265;
        v22 = MEMORY[0x1E69E6158];
        sub_1A524E384();
        if (*(v17 + 16) && (v23 = sub_1A3D5C0BC(&v34), (v24 & 1) != 0))
        {
          sub_1A3C2F0BC(*(v17 + 56) + 32 * v23, &v36);
          sub_1A3D5FAFC(&v34);
          if (swift_dynamicCast())
          {
            v31[8] = v11;
            v31[9] = v6;
            v31[10] = v21;
            v31[12] = v32;
            if (qword_1EB17BC90 != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }
        }

        else
        {

          sub_1A3D5FAFC(&v34);
        }

        sub_1A493B1F0(0, &qword_1EB1261A0, &qword_1EB126530);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1A52FC9F0;
        v34 = 0x73736563637573;
        v35 = 0xE700000000000000;
        sub_1A524E384();
        *(v29 + 96) = MEMORY[0x1E69E6370];
        *(v29 + 72) = 0;
        v34 = 0x726F727265;
        v35 = 0xE500000000000000;
        sub_1A524E384();
        *(v29 + 168) = v22;
        *(v29 + 144) = 0xD000000000000012;
        *(v29 + 152) = 0x80000001A53F3580;
        sub_1A3DAED90(v29);
        swift_setDeallocating();
        sub_1A435B310(0, &qword_1EB126530);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v30 = sub_1A524C3D4();

        [v21 replyWithInfo_];
        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {

      sub_1A3D5FAFC(&v34);
    }
  }

  v25 = sub_1A45350E8();
  (*(v1 + 16))(v3, v25, v0);
  v26 = sub_1A524D244();
  v27 = sub_1A5246F04();
  if (os_log_type_enabled(v27, v26))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1A3C1C000, v27, v26, "Failed to get reply handle for update notification", v28, 2u);
    MEMORY[0x1A590EEC0](v28, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
}

void sub_1A493B1F0(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1A435B310(255, a3);
    v4 = sub_1A524EA54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A493B24C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TestNotificationPhotosItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A493B2B0(uint64_t a1)
{
  v2 = type metadata accessor for TestNotificationPhotosItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A493B30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A493B36C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TestNotificationPhotosItem(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A493B3D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TestNotificationPhotosItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1A493B43C()
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524A274();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126910);
  v7 = [swift_getObjCClassFromMetadata() sharedInstance];
  v8 = [v7 showParticipantCountBadges];

  (*(v4 + 104))(v6, *MEMORY[0x1E6980F28], v3);
  v9 = sub_1A524A154();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  v10 = sub_1A524A1C4();
  sub_1A4943CD4(v2, sub_1A3E75D84);
  (*(v4 + 8))(v6, v3);
  v11 = sub_1A524B434();
  qword_1EB1EC030 = MEMORY[0x1E69815C0];
  unk_1EB1EC038 = MEMORY[0x1E6981568];
  word_1EB1EBFF0 = 0;
  byte_1EB1EBFF2 = v8;
  result = 0.0;
  unk_1EB1EBFF8 = xmmword_1A5374DC0;
  qword_1EB1EC008 = v10;
  qword_1EB1EC010 = 0x4000000000000000;
  unk_1EB1EC018 = v11;
  return result;
}

__int16 *sub_1A493B664()
{
  if (qword_1EB1E0CA0 != -1)
  {
    swift_once();
  }

  return &word_1EB1EBFF0;
}

double sub_1A493B6B4()
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524A274();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126910);
  v7 = [swift_getObjCClassFromMetadata() sharedInstance];
  v8 = [v7 showParticipantCountBadges];

  (*(v4 + 104))(v6, *MEMORY[0x1E6980F28], v3);
  v9 = sub_1A524A154();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  v10 = sub_1A524A1C4();
  sub_1A4943CD4(v2, sub_1A3E75D84);
  (*(v4 + 8))(v6, v3);
  v11 = sub_1A524B434();
  qword_1EB1EC080 = MEMORY[0x1E69815C0];
  unk_1EB1EC088 = MEMORY[0x1E6981568];
  word_1EB1EC040 = 257;
  byte_1EB1EC042 = v8;
  result = 0.0;
  unk_1EB1EC048 = xmmword_1A5374DC0;
  qword_1EB1EC058 = v10;
  qword_1EB1EC060 = 0x4000000000000000;
  unk_1EB1EC068 = v11;
  return result;
}

__int16 *sub_1A493B8E0()
{
  if (qword_1EB1E0CA8 != -1)
  {
    swift_once();
  }

  return &word_1EB1EC040;
}

double sub_1A493B930()
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524A274();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126910);
  v7 = [swift_getObjCClassFromMetadata() sharedInstance];
  v8 = [v7 showParticipantCountBadges];

  (*(v4 + 104))(v6, *MEMORY[0x1E6980F28], v3);
  v9 = sub_1A524A154();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  sub_1A524A164();
  v10 = sub_1A524A1C4();
  sub_1A4943CD4(v2, sub_1A3E75D84);
  (*(v4 + 8))(v6, v3);
  v11 = sub_1A524B434();
  qword_1EB1EC0D0 = MEMORY[0x1E69815C0];
  unk_1EB1EC0D8 = MEMORY[0x1E6981568];
  word_1EB1EC090 = 0;
  byte_1EB1EC092 = v8;
  result = 0.0;
  unk_1EB1EC098 = xmmword_1A5321AC0;
  qword_1EB1EC0A8 = v10;
  qword_1EB1EC0B0 = 0x4000000000000000;
  unk_1EB1EC0B8 = v11;
  return result;
}

__int16 *sub_1A493BB5C()
{
  if (qword_1EB1E0CB0 != -1)
  {
    swift_once();
  }

  return &word_1EB1EC090;
}

double sub_1A493BBAC()
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524A274();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126910);
  v7 = [swift_getObjCClassFromMetadata() sharedInstance];
  v8 = [v7 showParticipantCountBadges];

  (*(v4 + 104))(v6, *MEMORY[0x1E6980F28], v3);
  v9 = sub_1A524A154();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  sub_1A524A164();
  v10 = sub_1A524A1C4();
  sub_1A4943CD4(v2, sub_1A3E75D84);
  (*(v4 + 8))(v6, v3);
  v11 = sub_1A524B434();
  qword_1EB1EC120 = MEMORY[0x1E69815C0];
  unk_1EB1EC128 = MEMORY[0x1E6981568];
  word_1EB1EC0E0 = 257;
  byte_1EB1EC0E2 = v8;
  result = 0.0;
  unk_1EB1EC0E8 = xmmword_1A5321AC0;
  qword_1EB1EC0F8 = v10;
  qword_1EB1EC100 = 0x4000000000000000;
  unk_1EB1EC108 = v11;
  return result;
}

__int16 *sub_1A493BDDC()
{
  if (qword_1EB1E0CB8 != -1)
  {
    swift_once();
  }

  return &word_1EB1EC0E0;
}

uint64_t sub_1A493BE50@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  v8 = type metadata accessor for LemonadeSharedAlbumsAvatarView();
  v9 = v8[5];
  *(a3 + v9) = swift_getKeyPath();
  sub_1A493D238(0, &qword_1EB1248A0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8]);
  result = swift_storeEnumTagMultiPayload();
  *(a3 + v8[6]) = a4;
  *(a3 + v8[7]) = a1;
  if (*(a1 + 16))
  {
    v11 = (a3 + v8[8]);
    v12 = a2[3];
    v11[2] = a2[2];
    v11[3] = v12;
    v11[4] = a2[4];
    v13 = a2[1];
    *v11 = *a2;
    v11[1] = v13;
  }

  else
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for LemonadeSharedAlbumsAvatarView()
{
  result = qword_1EB1E0ED0;
  if (!qword_1EB1E0ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A493BFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  sub_1A49435B0(0, &qword_1EB1454D0, sub_1A493D6A8);
  v96 = *(v3 - 8);
  v97 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v82[2] = v82 - v4;
  sub_1A493D62C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v99 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v98 = v82 - v8;
  v103 = sub_1A5241F84();
  v95 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v82[1] = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v93 = v82 - v11;
  v101 = sub_1A52429A4();
  v12 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v14 = v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ShareParticipantImageConfiguration(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4942B7C(0, &qword_1EB145450, sub_1A493D168, &type metadata for ShareParticipantImageProvider, MEMORY[0x1E69C1ED0]);
  v19 = v18;
  v86 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v82 - v20;
  sub_1A493D09C();
  v84 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A493CFFC();
  v83 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A493CFC8(0);
  v104 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v105 = v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A493CF28();
  v89 = *(v30 - 8);
  v90 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v88 = v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A493CF00(0);
  v87 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v102 = v82 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A493CED8(0);
  v91 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v94 = v82 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v92 = v82 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v106 = v82 - v39;
  PXDisplayCollectionDetailedCountsMake(v40);
  sub_1A493D97C(v17);
  (*(v12 + 104))(v14, *MEMORY[0x1E69C2050], v101);
  v41 = a1;
  sub_1A493D168();
  v85 = v21;
  sub_1A5242594();
  v101 = type metadata accessor for LemonadeSharedAlbumsAvatarView();
  v42 = a1 + *(v101 + 32);
  if (*v42 == 1)
  {
    v43 = *(v42 + 64);
    v82[0] = *(v42 + 72);
    v44 = __swift_project_boxed_opaque_existential_1((v42 + 40), v43);
    v45 = MEMORY[0x1EEE9AC00](v44);
    (*(v47 + 16))(v82 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0), v45);
  }

  else
  {
    v112[0] = sub_1A524B414();
  }

  v48 = sub_1A5248204();
  v49 = sub_1A524A064();
  (*(v86 + 32))(v24, v85, v19);
  v50 = &v24[*(v84 + 36)];
  *v50 = v48;
  v50[8] = v49;
  sub_1A4943944(v24, v27, sub_1A493D09C);
  *&v27[*(v83 + 36)] = 256;
  v51 = sub_1A524BC74();
  v53 = v52;
  sub_1A493DC28(v41, &v107);
  v115 = v109;
  v116 = v110;
  v113 = v107;
  v114 = v108;
  *&v117 = v111;
  *(&v117 + 1) = v51;
  v118 = v53;
  v54 = v27;
  v55 = v105;
  sub_1A4943944(v54, v105, sub_1A493CFFC);
  v56 = v55 + *(v104 + 36);
  v57 = v116;
  *(v56 + 32) = v115;
  *(v56 + 48) = v57;
  *(v56 + 64) = v117;
  *(v56 + 80) = v118;
  v58 = v114;
  *v56 = v113;
  *(v56 + 16) = v58;
  v119[2] = v109;
  v119[3] = v110;
  v119[0] = v107;
  v119[1] = v108;
  v120 = v111;
  v121 = v51;
  v122 = v53;
  sub_1A4943C6C(&v113, v112, sub_1A493D1BC);
  sub_1A4943CD4(v119, sub_1A493D1BC);
  v59 = v95;
  v60 = v42;
  v61 = v93;
  if (*(v42 + 1) == 1)
  {
    sub_1A5241F64();
  }

  else
  {
    sub_1A5241F54();
  }

  v62 = v103;
  v63 = v101;
  sub_1A493D3D4();
  v64 = sub_1A3FA9580();
  v65 = v88;
  v104 = v64;
  v66 = v105;
  sub_1A524A504();
  (*(v59 + 8))(v61, v62);
  sub_1A4943CD4(v66, sub_1A493CFC8);
  sub_1A524BC74();
  sub_1A52481F4();
  v67 = v102;
  (*(v89 + 32))(v102, v65, v90);
  v68 = (v67 + *(v87 + 36));
  v69 = v124;
  *v68 = v123;
  v68[1] = v69;
  v68[2] = v125;
  sub_1A524BC74();
  sub_1A5248AD4();
  v70 = v92;
  sub_1A4943B3C(v67, v92, sub_1A493CF00);
  v71 = (v70 + *(v91 + 36));
  v72 = v131;
  v71[4] = v130;
  v71[5] = v72;
  v71[6] = v132;
  v73 = v127;
  *v71 = v126;
  v71[1] = v73;
  v74 = v129;
  v71[2] = v128;
  v71[3] = v74;
  sub_1A4943B3C(v70, v106, sub_1A493CED8);
  if ((*(v60 + 2) & 1) != 0 && *(*(v41 + *(v63 + 28)) + 16) != 1)
  {
    sub_1A5249574();
    sub_1A5249314();
    sub_1A493DDB8(v41, v112);
  }

  v75 = v98;
  (*(v96 + 56))(v98, 1, 1, v97);
  v76 = v106;
  v77 = v94;
  sub_1A4943BA4(v106, v94, sub_1A493CED8);
  v78 = v99;
  sub_1A4943BA4(v75, v99, sub_1A493D62C);
  v79 = v100;
  sub_1A4943BA4(v77, v100, sub_1A493CED8);
  sub_1A4942A68(0, &qword_1EB145418, sub_1A493CED8, sub_1A493D62C);
  sub_1A4943BA4(v78, v79 + *(v80 + 48), sub_1A493D62C);
  sub_1A4943C0C(v75, sub_1A493D62C);
  sub_1A4943C0C(v76, sub_1A493CED8);
  sub_1A4943C0C(v78, sub_1A493D62C);
  return sub_1A4943C0C(v77, sub_1A493CED8);
}

void sub_1A493CE7C(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A4942A68(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A493CF28()
{
  if (!qword_1EB145430)
  {
    sub_1A493CFC8(255);
    sub_1A493D3D4();
    sub_1A3FA9580();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB145430);
    }
  }
}

void sub_1A493CFFC()
{
  if (!qword_1EB145440)
  {
    sub_1A493D09C();
    sub_1A4942B7C(255, &qword_1EB1289E0, sub_1A3FA9580, MEMORY[0x1E69817E8], MEMORY[0x1E697DDA0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145440);
    }
  }
}

void sub_1A493D09C()
{
  if (!qword_1EB145448)
  {
    sub_1A4942B7C(255, &qword_1EB145450, sub_1A493D168, &type metadata for ShareParticipantImageProvider, MEMORY[0x1E69C1ED0]);
    sub_1A4942478(255, &qword_1EB145460, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980460]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145448);
    }
  }
}

unint64_t sub_1A493D168()
{
  result = qword_1EB145458;
  if (!qword_1EB145458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145458);
  }

  return result;
}

void sub_1A493D238(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A493D29C()
{
  if (!qword_1EB145478)
  {
    sub_1A3FA9580();
    v0 = sub_1A52488F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145478);
    }
  }
}

unint64_t sub_1A493D32C()
{
  result = qword_1EB145480;
  if (!qword_1EB145480)
  {
    sub_1A493D204(255);
    sub_1A49436A8(&qword_1EB145488, sub_1A493D29C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145480);
  }

  return result;
}

unint64_t sub_1A493D3D4()
{
  result = qword_1EB145490;
  if (!qword_1EB145490)
  {
    sub_1A493CFC8(255);
    sub_1A493D4C8(&qword_1EB145498, sub_1A493CFFC, sub_1A493D554, sub_1A40708E8);
    sub_1A49436A8(&qword_1EB1454C0, sub_1A493D1BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145490);
  }

  return result;
}

uint64_t sub_1A493D4C8(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A493D59C()
{
  result = qword_1EB1454A8;
  if (!qword_1EB1454A8)
  {
    sub_1A4942B7C(255, &qword_1EB145450, sub_1A493D168, &type metadata for ShareParticipantImageProvider, MEMORY[0x1E69C1ED0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1454A8);
  }

  return result;
}

void sub_1A493D62C()
{
  if (!qword_1EB1454C8)
  {
    sub_1A49435B0(255, &qword_1EB1454D0, sub_1A493D6A8);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1454C8);
    }
  }
}

void sub_1A493D6A8()
{
  if (!qword_1EB1454D8)
  {
    sub_1A493D778();
    sub_1A49436A8(&qword_1EB145510, sub_1A493D778);
    sub_1A3FA9580();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1454D8);
    }
  }
}

void sub_1A493D778()
{
  if (!qword_1EB1454E0)
  {
    sub_1A493D80C(255);
    sub_1A49436A8(&qword_1EB145508, sub_1A493D80C);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1454E0);
    }
  }
}

void sub_1A493D840()
{
  if (!qword_1EB1454F0)
  {
    sub_1A47EB7C8(255);
    sub_1A493D8E8(255, &unk_1EB1454F8, sub_1A400F530, &qword_1EB127AD0, MEMORY[0x1E6980480]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1454F0);
    }
  }
}

void sub_1A493D8E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A4942478(255, a4, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], a5);
    v8 = sub_1A5248804();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A493D97C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5248714();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5249234();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for LemonadeSharedAlbumsAvatarView();
  v12 = *(v1 + *(result + 28));
  if (*(v12 + 16))
  {
    v18 = v8;
    v19 = result;
    v13 = type metadata accessor for ShareParticipantImageConfiguration(0);
    sub_1A4943C6C(v12 + ((*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80)), a1, type metadata accessor for ShareParticipantImageConfiguration);
    v14 = *v1;
    if (*(v1 + 8) == 1)
    {
      v15 = *v1;
    }

    else
    {

      sub_1A524D254();
      v17 = v7;
      v16 = sub_1A524A014();
      sub_1A5246DF4();

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3DD15BC(v14, 0);
      (*(v18 + 8))(v10, v17);
      v15 = v20;
    }

    *(a1 + *(v13 + 36)) = v15;
    sub_1A401DA00(v6);
    return (*(v4 + 40))(a1 + *(v13 + 32), v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A493DC28@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for LemonadeSharedAlbumsAvatarView();
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  result = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = a1 + *(v4 + 32);
  if (*v14 == 1)
  {
    v15 = __swift_project_boxed_opaque_existential_1((v14 + 40), *(v14 + 64));
    v16 = MEMORY[0x1EEE9AC00](v15);
    (*(v18 + 16))(v19 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
    v9 = sub_1A5248204();
    sub_1A5247EE4();
    v5 = v19[1];
    v13 = v19[2];
    v6 = v19[3];
    v7 = v19[4];
    v8 = v19[5];
    result = sub_1A524BC74();
    v12 = 256;
  }

  *a2 = v5;
  a2[1] = v13;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  a2[6] = v12;
  a2[7] = result;
  a2[8] = v11;
  return result;
}

void sub_1A493DDB8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A5249424();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524B3D4();
  v6 = type metadata accessor for LemonadeSharedAlbumsAvatarView();
  sub_1A524BC74();
  sub_1A52481F4();
  *&v24[6] = v25;
  *&v24[22] = v26;
  *&v24[38] = v27;
  sub_1A5249414();
  sub_1A5249404();
  v29 = *(*(a1 + *(v6 + 28)) + 16);
  sub_1A52493B4();
  sub_1A5249404();
  sub_1A5249444();
  v7 = sub_1A524A444();
  v9 = v8;
  v11 = v10;
  v12 = sub_1A524A3C4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1A3E04DF4(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  v20 = sub_1A524B434();
  *v28 = v5;
  *&v28[8] = 256;
  *&v28[10] = *v24;
  *&v28[26] = *&v24[16];
  *&v28[42] = *&v24[32];
  *&v28[56] = *(&v27 + 1);
  v21 = *v28;
  v22 = *&v28[16];
  v23 = *&v28[48];
  *(a2 + 32) = *&v28[32];
  *(a2 + 48) = v23;
  *a2 = v21;
  *(a2 + 16) = v22;
  *(a2 + 64) = v12;
  *(a2 + 72) = v14;
  *(a2 + 80) = v16 & 1;
  *(a2 + 88) = v18;
  *(a2 + 96) = KeyPath;
  *(a2 + 104) = 0x3FD3333333333333;
  *(a2 + 112) = v20;
  sub_1A4943C6C(v28, &v29, sub_1A47EB7C8);
  sub_1A3E75E68(v12, v14, v16 & 1);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A493E0F0@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1A5249594();
  v4 = sub_1A5249304();
  *a1 = v3;
  a1[1] = v4;
  sub_1A4943A48(0, &qword_1EB145408, sub_1A493CE40);
  return sub_1A493BFE8(v1, a1 + *(v5 + 44));
}

uint64_t sub_1A493E16C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  if (*a1 != -1)
  {
    swift_once();
    v4 = a3;
  }

  return sub_1A4207508(a2, v4);
}

__n128 sub_1A493E1C4@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, __int128 *a4@<X4>, uint64_t a5@<X8>)
{
  v5 = *a4;
  *(a5 + 40) = a4[1];
  v6 = a4[3];
  *(a5 + 56) = a4[2];
  *(a5 + 72) = v6;
  result = a4[4];
  *(a5 + 88) = result;
  *(a5 + 16) = a3;
  *(a5 + 24) = v5;
  *a5 = a1;
  *(a5 + 8) = a2 & 1;
  return result;
}

__n128 sub_1A493E1F8@<Q0>(uint64_t a1@<X8>)
{
  sub_1A44B3B70(v1, &v10);
  v3 = swift_allocObject();
  v4 = v15;
  *(v3 + 80) = v14;
  *(v3 + 96) = v4;
  *(v3 + 112) = v16;
  v5 = v11;
  *(v3 + 16) = v10;
  *(v3 + 32) = v5;
  v6 = v13;
  *(v3 + 48) = v12;
  *(v3 + 64) = v6;
  sub_1A524BC74();
  sub_1A5248AD4();
  *a1 = sub_1A493E610;
  *(a1 + 8) = v3;
  v7 = v15;
  *(a1 + 80) = v14;
  *(a1 + 96) = v7;
  *(a1 + 112) = v16;
  v8 = v11;
  *(a1 + 16) = v10;
  *(a1 + 32) = v8;
  result = v13;
  *(a1 + 48) = v12;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1A493E37C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LemonadeSharedAlbumsAvatarView();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - v7;
  sub_1A52482B4();
  v10 = v9;
  sub_1A52482B4();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = *a2;
  if (*(a2 + 8))
  {
    v13 = 1.79769313e308;
  }

  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(a2 + 16);
  sub_1A4207508(a2 + 24, v21);
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v16 = v3[5];
  *&v5[v16] = swift_getKeyPath();
  sub_1A493D238(0, &qword_1EB1248A0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  *&v5[v3[6]] = v14;
  *&v5[v3[7]] = v15;
  if (*(v15 + 16))
  {
    v17 = &v5[v3[8]];
    v18 = v21[3];
    *(v17 + 2) = v21[2];
    *(v17 + 3) = v18;
    *(v17 + 4) = v21[4];
    v19 = v21[1];
    *v17 = v21[0];
    *(v17 + 1) = v19;
    sub_1A4943944(v5, v8, type metadata accessor for LemonadeSharedAlbumsAvatarView);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A493E61C@<X0>(uint64_t a1@<X8>)
{
  v180[6] = a1;
  sub_1A4942D78();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v180[4] = v180 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v219 = v180 - v4;
  sub_1A4942BE4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v180[5] = v180 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v220 = v180 - v8;
  sub_1A4942AE4();
  v188 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v190 = v180 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v189 = v180 - v12;
  sub_1A4942904();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v191 = v180 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v222 = v180 - v16;
  sub_1A49427C0();
  v208 = v17;
  v221 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v180[1] = v180 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v186 = v180 - v20;
  sub_1A4942798(0);
  v230 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v180[0] = v180 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v187 = v180 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v183 = v180 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v185 = v180 - v28;
  sub_1A49426D0(0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v184 = v180 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v207 = v180 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v206 = v180 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v205 = v180 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v211 = v180 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v212 = v180 - v40;
  sub_1A4942588();
  MEMORY[0x1EEE9AC00](v41 - 8);
  v209 = v180 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v210 = v180 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v227 = v180 - v46;
  sub_1A49424CC();
  MEMORY[0x1EEE9AC00](v47 - 8);
  v180[3] = v180 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v223 = v180 - v50;
  v229 = type metadata accessor for LemonadeSharedAlbumsAvatarView();
  MEMORY[0x1EEE9AC00](v229);
  v198 = v180 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v215 = v180 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v217 = v180 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v199 = v180 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v214 = v180 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v197 = (v180 - v61);
  MEMORY[0x1EEE9AC00](v62);
  v213 = v180 - v63;
  sub_1A4942238(0);
  v216 = v64;
  MEMORY[0x1EEE9AC00](v64);
  v201 = v180 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v200 = v180 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v224 = v180 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v218 = (v180 - v71);
  sub_1A4942150();
  MEMORY[0x1EEE9AC00](v72 - 8);
  v202 = v180 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74);
  v228 = (v180 - v75);
  sub_1A4942020();
  MEMORY[0x1EEE9AC00](v76 - 8);
  v180[2] = v180 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v78);
  v226 = (v180 - v79);
  v80 = sub_1A5248714();
  v195 = *(v80 - 8);
  v196 = v80;
  MEMORY[0x1EEE9AC00](v80);
  v194 = v180 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A493D238(0, &qword_1EB145710, sub_1A4943744, MEMORY[0x1E69E6F90]);
  v82 = swift_allocObject();
  v83 = objc_opt_self();
  v84 = [v83 redColor];
  v82[4] = v84;
  v192 = v82 + 4;
  isEscapingClosureAtFileLocation = [v83 greenColor];
  v82[5] = isEscapingClosureAtFileLocation;
  v86 = [v83 blueColor];
  v82[6] = v86;
  v231 = [v83 cyanColor];
  v82[7] = v231;
  v225 = [v83 orangeColor];
  v82[8] = v225;
  v204 = [v83 purpleColor];
  v82[9] = v204;
  v87 = [v83 magentaColor];
  v193 = v82;
  v203 = v87;
  v82[10] = v87;
  v236[0] = MEMORY[0x1E69E7CC0];
  sub_1A524E554();
  v232[2] = v84;
  v88 = objc_allocWithZone(off_1E77218F8);
  v89 = swift_allocObject();
  *(v89 + 16) = sub_1A49437AC;
  *(v89 + 24) = v232;
  v241 = sub_1A3D78DD0;
  v242 = v89;
  v237 = MEMORY[0x1E69E9820];
  v238 = 1107296256;
  v239 = sub_1A3D77CC4;
  v240 = &block_descriptor_306;
  v90 = _Block_copy(&v237);
  v91 = v84;

  v92 = [v88 initWithConfiguration_];
  _Block_release(v90);

  LOBYTE(v90) = swift_isEscapingClosureAtFileLocation();

  if (v90)
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_1A524E514();
  sub_1A524E564();
  sub_1A524E574();
  v93 = sub_1A524E524();
  MEMORY[0x1EEE9AC00](v93);
  v178 = isEscapingClosureAtFileLocation;
  v94 = objc_allocWithZone(off_1E77218F8);
  v95 = swift_allocObject();
  *(v95 + 16) = sub_1A4943D34;
  *(v95 + 24) = &v177;
  v241 = sub_1A3D7B4F8;
  v242 = v95;
  v237 = MEMORY[0x1E69E9820];
  v238 = 1107296256;
  v239 = sub_1A3D77CC4;
  v240 = &block_descriptor_32_5;
  v96 = _Block_copy(&v237);
  v92 = isEscapingClosureAtFileLocation;

  isEscapingClosureAtFileLocation = [v94 initWithConfiguration_];
  _Block_release(v96);

  LOBYTE(v94) = swift_isEscapingClosureAtFileLocation();

  if (v94)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1A524E514();
  sub_1A524E564();
  sub_1A524E574();
  v97 = sub_1A524E524();
  MEMORY[0x1EEE9AC00](v97);
  v178 = v86;
  v98 = objc_allocWithZone(off_1E77218F8);
  v99 = swift_allocObject();
  *(v99 + 16) = sub_1A4943D34;
  *(v99 + 24) = &v177;
  v241 = sub_1A3D7B4F8;
  v242 = v99;
  v237 = MEMORY[0x1E69E9820];
  v238 = 1107296256;
  v239 = sub_1A3D77CC4;
  v240 = &block_descriptor_40_4;
  v100 = _Block_copy(&v237);
  v92 = v86;

  isEscapingClosureAtFileLocation = [v98 initWithConfiguration_];
  _Block_release(v100);

  LOBYTE(v98) = swift_isEscapingClosureAtFileLocation();

  if (v98)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1A524E514();
  sub_1A524E564();
  sub_1A524E574();
  v101 = sub_1A524E524();
  MEMORY[0x1EEE9AC00](v101);
  v102 = v231;
  v178 = v231;
  v103 = objc_allocWithZone(off_1E77218F8);
  v104 = swift_allocObject();
  *(v104 + 16) = sub_1A4943D34;
  *(v104 + 24) = &v177;
  v241 = sub_1A3D7B4F8;
  v242 = v104;
  v237 = MEMORY[0x1E69E9820];
  v238 = 1107296256;
  v239 = sub_1A3D77CC4;
  v240 = &block_descriptor_48_2;
  v105 = _Block_copy(&v237);
  v106 = v102;

  [v103 initWithConfiguration_];
  _Block_release(v105);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1A524E514();
  sub_1A524E564();
  sub_1A524E574();
  v107 = sub_1A524E524();
  MEMORY[0x1EEE9AC00](v107);
  v108 = v225;
  v178 = v225;
  v109 = objc_allocWithZone(off_1E77218F8);
  v110 = swift_allocObject();
  *(v110 + 16) = sub_1A4943D34;
  *(v110 + 24) = &v177;
  v241 = sub_1A3D7B4F8;
  v242 = v110;
  v237 = MEMORY[0x1E69E9820];
  v238 = 1107296256;
  v92 = &v239;
  v239 = sub_1A3D77CC4;
  v240 = &block_descriptor_56_3;
  v111 = _Block_copy(&v237);
  v112 = v108;

  [v109 initWithConfiguration_];
  _Block_release(v111);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1A524E514();
  sub_1A524E564();
  sub_1A524E574();
  v113 = sub_1A524E524();
  MEMORY[0x1EEE9AC00](v113);
  v114 = v204;
  v178 = v204;
  v115 = objc_allocWithZone(off_1E77218F8);
  v116 = swift_allocObject();
  *(v116 + 16) = sub_1A4943D34;
  *(v116 + 24) = &v177;
  v241 = sub_1A3D7B4F8;
  v242 = v116;
  v237 = MEMORY[0x1E69E9820];
  v238 = 1107296256;
  v239 = sub_1A3D77CC4;
  v240 = &block_descriptor_64_6;
  v117 = _Block_copy(&v237);
  v118 = v114;

  [v115 initWithConfiguration_];
  _Block_release(v117);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1A524E514();
  sub_1A524E564();
  sub_1A524E574();
  v119 = sub_1A524E524();
  MEMORY[0x1EEE9AC00](v119);
  v120 = v203;
  v178 = v203;
  v121 = objc_allocWithZone(off_1E77218F8);
  v122 = swift_allocObject();
  *(v122 + 16) = sub_1A4943D34;
  *(v122 + 24) = &v177;
  v241 = sub_1A3D7B4F8;
  v242 = v122;
  v237 = MEMORY[0x1E69E9820];
  v238 = 1107296256;
  v239 = sub_1A3D77CC4;
  v240 = &block_descriptor_72_1;
  v123 = _Block_copy(&v237);
  v124 = v120;

  [v121 initWithConfiguration_];
  _Block_release(v123);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    sub_1A524E514();
    sub_1A524E564();
    sub_1A524E574();
    sub_1A524E524();
    swift_setDeallocating();
    sub_1A4943744();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    isEscapingClosureAtFileLocation = v236[0];
    sub_1A493D238(0, &qword_1EB13B1F0, type metadata accessor for ShareParticipantImageConfiguration, MEMORY[0x1E69E6F90]);
    v125 = *(type metadata accessor for ShareParticipantImageConfiguration(0) - 8);
    v126 = *(v125 + 72);
    v127 = (*(v125 + 80) + 32) & ~*(v125 + 80);
    v92 = swift_allocObject();
    *(v92 + 1) = xmmword_1A52FC9F0;
    v128 = v92 + v127;
    v129 = *MEMORY[0x1E697E7D0];
    v130 = v194;
    v131 = *(v195 + 104);
    v132 = v196;
    v131(v194, v129, v196);
    sub_1A481E150(0, 0, 0, 0, 0x796E6E686F4ALL, 0xE600000000000000, 0x656573656C707041, 0xE900000000000064, v128, 2.0, v130);
    v131(v130, v129, v132);
    sub_1A481E150(0, 0, 0, 0, 1634627137, 0xE400000000000000, 1869766984, 0xE400000000000000, &v128[v126], 2.0, v130);
    if (qword_1EB1E0CA0 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  swift_once();
LABEL_9:
  sub_1A4207508(&word_1EB1EBFF0, &v237);
  sub_1A4207508(&word_1EB1EBFF0, v236);
  LOWORD(v236[0]) = 257;
  v133 = v214;
  if (qword_1EB1E0CB0 != -1)
  {
    swift_once();
  }

  v225 = isEscapingClosureAtFileLocation;
  sub_1A4207508(&word_1EB1EC090, v235);
  sub_1A4207508(&word_1EB1EC090, v234);
  v234[0] = 257;
  v134 = sub_1A5249574();
  v135 = v226;
  *v226 = v134;
  v135[1] = 0;
  *(v135 + 16) = 1;
  sub_1A5249434();
  LOWORD(v179) = 256;
  v178 = 0;
  v136 = sub_1A524A444();
  v138 = v137;
  v140 = v139;
  sub_1A524A264();
  v203 = sub_1A524A3C4();
  v204 = v141;
  v196 = v142;
  LODWORD(v195) = v143;

  sub_1A3E04DF4(v136, v138, v140 & 1);

  v144 = sub_1A5249314();
  v145 = v228;
  *v228 = v144;
  v145[1] = 0x4020000000000000;
  *(v145 + 16) = 0;
  v146 = sub_1A5249574();
  v147 = v218;
  *v218 = v146;
  v147[1] = 0;
  *(v147 + 16) = 1;
  sub_1A4207508(&v237, v233);
  KeyPath = swift_getKeyPath();
  v149 = v197;
  *v197 = KeyPath;
  *(v149 + 8) = 0;
  v150 = v229;
  v151 = *(v229 + 20);
  *(v149 + v151) = swift_getKeyPath();
  sub_1A493D238(0, &qword_1EB1248A0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8]);
  v153 = v152;
  swift_storeEnumTagMultiPayload();
  *(v149 + v150[6]) = 0x4046000000000000;
  *(v149 + v150[7]) = v92;
  if (v92[2])
  {
    sub_1A4943A48(0, &qword_1EB145790, sub_1A49423D8);
    v155 = *(v154 + 44);
    v156 = (v149 + v150[8]);
    v157 = v233[1];
    v158 = v233[3];
    v159 = v233[4];
    v156[2] = v233[2];
    v156[3] = v158;
    v192 = (v147 + v155);
    v193 = v154;
    v156[4] = v159;
    *v156 = v233[0];
    v156[1] = v157;
    v160 = v149;
    v161 = v213;
    sub_1A4943944(v160, v213, type metadata accessor for LemonadeSharedAlbumsAvatarView);
    sub_1A4207508(v235, v133 + v150[8]);
    *v133 = swift_getKeyPath();
    *(v133 + 8) = 0;
    v162 = v150[5];
    *(v133 + v162) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *(v133 + v150[6]) = 0x404E000000000000;
    *(v133 + v150[7]) = v92;
    swift_bridgeObjectRetain_n();
    sub_1A5249434();
    LOWORD(v179) = 256;
    v178 = 0;
    v163 = sub_1A524A444();
    v231 = v92;
    v164 = v163;
    v166 = v165;
    v181 = v167;
    v197 = v153;
    v182 = v168;
    v169 = v199;
    sub_1A4943C6C(v161, v199, type metadata accessor for LemonadeSharedAlbumsAvatarView);
    v170 = v217;
    sub_1A4943C6C(v133, v217, type metadata accessor for LemonadeSharedAlbumsAvatarView);
    v171 = v192;
    sub_1A4943C6C(v169, v192, type metadata accessor for LemonadeSharedAlbumsAvatarView);
    sub_1A494240C();
    v173 = v172;
    sub_1A4943C6C(v170, v171 + *(v172 + 12), type metadata accessor for LemonadeSharedAlbumsAvatarView);
    v194 = v173;
    v174 = v171 + *(v173 + 16);
    *v174 = v164;
    *(v174 + 8) = v166;
    v175 = v181;
    *(v174 + 16) = v181 & 1;
    *(v174 + 24) = v182;
    sub_1A3E75E68(v164, v166, v175 & 1);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v179 = 0;
  v178 = 43;
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void sub_1A4941F98()
{
  if (!qword_1EB145528)
  {
    sub_1A4942020();
    sub_1A49424CC();
    sub_1A4942BE4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB145528);
    }
  }
}

void sub_1A4942020()
{
  if (!qword_1EB145530)
  {
    sub_1A49420B4(255);
    sub_1A49436A8(&qword_1EB1455A8, sub_1A49420B4);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145530);
    }
  }
}

void sub_1A49420E8()
{
  if (!qword_1EB145540)
  {
    sub_1A4942150();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB145540);
    }
  }
}

void sub_1A4942150()
{
  if (!qword_1EB145548)
  {
    sub_1A49421E4(255);
    sub_1A49436A8(&qword_1EB1455A0, sub_1A49421E4);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145548);
    }
  }
}

void sub_1A494226C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A4942344()
{
  if (!qword_1EB145578)
  {
    sub_1A49423D8(255);
    sub_1A49436A8(&unk_1EB145590, sub_1A49423D8);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145578);
    }
  }
}

void sub_1A494240C()
{
  if (!qword_1EB145588)
  {
    type metadata accessor for LemonadeSharedAlbumsAvatarView();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB145588);
    }
  }
}

void sub_1A4942478(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A49424CC()
{
  if (!qword_1EB1455B0)
  {
    sub_1A4942560(255);
    sub_1A49436A8(&qword_1EB145660, sub_1A4942560);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1455B0);
    }
  }
}

void sub_1A4942588()
{
  if (!qword_1EB1455C8)
  {
    sub_1A494261C(255);
    sub_1A49436A8(&qword_1EB145610, sub_1A494261C);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1455C8);
    }
  }
}

void sub_1A4942670(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A4942718(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A49427C0()
{
  if (!qword_1EB1455F0)
  {
    type metadata accessor for LemonadeSharedAlbumsAvatarView();
    sub_1A49436A8(&qword_1EB134E00, type metadata accessor for LemonadeSharedAlbumsAvatarView);
    v0 = sub_1A5242D24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1455F0);
    }
  }
}

unint64_t sub_1A4942854()
{
  result = qword_1EB145600;
  if (!qword_1EB145600)
  {
    sub_1A4942798(255);
    sub_1A49436A8(&qword_1EB145608, sub_1A49427C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145600);
  }

  return result;
}

void sub_1A4942904()
{
  if (!qword_1EB145618)
  {
    sub_1A4942998();
    sub_1A49436A8(&qword_1EB145658, sub_1A4942998);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145618);
    }
  }
}

void sub_1A4942998()
{
  if (!qword_1EB145620)
  {
    sub_1A4942A2C(255);
    sub_1A49436A8(&qword_1EB145650, sub_1A4942A2C);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145620);
    }
  }
}

void sub_1A4942A68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A4942AE4()
{
  if (!qword_1EB145638)
  {
    sub_1A4942B7C(255, &unk_1EB145640, sub_1A44B3B1C, &type metadata for LemonadeSharedAlbumsExpandingAvatarView, MEMORY[0x1E69C2228]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145638);
    }
  }
}

void sub_1A4942B7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A4942BE4()
{
  if (!qword_1EB145668)
  {
    sub_1A4942C78(255);
    sub_1A49436A8(&qword_1EB145690, sub_1A4942C78);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145668);
    }
  }
}

void sub_1A4942CA0(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A4942CF8(255, a3, a4);
    v5 = sub_1A524BE24();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A4942CF8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1A4942588();
    a3(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_1A4942D78()
{
  if (!qword_1EB145680)
  {
    sub_1A49426D0(255);
    sub_1A49436A8(&qword_1EB145688, sub_1A49426D0);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145680);
    }
  }
}

uint64_t sub_1A4942E0C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = type metadata accessor for LemonadeSharedAlbumsAvatarView();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = a3;
  }

  else
  {
    v15 = a4;
  }

  sub_1A4207508(v15, v21);
  *v14 = swift_getKeyPath();
  v14[8] = 0;
  v16 = v12[5];
  *&v14[v16] = swift_getKeyPath();
  sub_1A493D238(0, &qword_1EB1248A0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  *&v14[v12[6]] = a6;
  *&v14[v12[7]] = a2;
  if (*(a2 + 16))
  {
    v17 = &v14[v12[8]];
    v18 = v21[3];
    *(v17 + 2) = v21[2];
    *(v17 + 3) = v18;
    *(v17 + 4) = v21[4];
    v19 = v21[1];
    *v17 = v21[0];
    *(v17 + 1) = v19;
    sub_1A4943944(v14, a5, type metadata accessor for LemonadeSharedAlbumsAvatarView);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

unint64_t sub_1A4943024()
{
  result = qword_1EB145698;
  if (!qword_1EB145698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145698);
  }

  return result;
}

uint64_t sub_1A4943094@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0x4038000000000000;
  *(a1 + 16) = 0;
  sub_1A4943A48(0, &qword_1EB145518, sub_1A4941F64);
  return sub_1A493E61C(a1 + *(v2 + 44));
}

uint64_t sub_1A4943104(uint64_t a1)
{
  v2 = sub_1A49436F0();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A4943150(uint64_t a1)
{
  v2 = sub_1A49436F0();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void sub_1A49431D4()
{
  sub_1A49437BC(319, &qword_1EB124830, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A493D238(319, &qword_1EB124710, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A493D238(319, &qword_1EB135B58, type metadata accessor for ShareParticipantImageConfiguration, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A4943300(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A4943348(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A49433C0()
{
  if (!qword_1EB1456B0)
  {
    sub_1A493CE40(255);
    sub_1A49436A8(&qword_1EB1456B8, sub_1A493CE40);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1456B0);
    }
  }
}

unint64_t sub_1A4943454()
{
  result = qword_1EB1456C0;
  if (!qword_1EB1456C0)
  {
    sub_1A49435B0(255, &qword_1EB1456C8, sub_1A4943528);
    sub_1A49436A8(&qword_1EB1456E8, sub_1A4943528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1456C0);
  }

  return result;
}

void sub_1A4943528()
{
  if (!qword_1EB1456D0)
  {
    sub_1A49435B0(255, &qword_1EB1355C0, type metadata accessor for LemonadeSharedAlbumsAvatarView);
    sub_1A4205ACC();
    v0 = sub_1A5248414();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1456D0);
    }
  }
}

void sub_1A49435B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A4943614()
{
  if (!qword_1EB1456F8)
  {
    sub_1A4941F64(255);
    sub_1A49436A8(&qword_1EB145700, sub_1A4941F64);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1456F8);
    }
  }
}

uint64_t sub_1A49436A8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A49436F0()
{
  result = qword_1EB145708;
  if (!qword_1EB145708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145708);
  }

  return result;
}

void sub_1A4943744()
{
  if (!qword_1EB145718)
  {
    sub_1A3C52C70(255, &qword_1EB1205C0);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145718);
    }
  }
}

void sub_1A49437BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A494380C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1A3C52C70(0, &qword_1EB13D178);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1A49437BC(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1A4943944(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A49439AC(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = 112;
  if (a1)
  {
    v6 = 32;
  }

  sub_1A4207508(v2 + v6, v9);
  v10 = 0;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  v7 = v9[0];
  *(a2 + 40) = v9[1];
  v8 = v9[3];
  *(a2 + 56) = v9[2];
  *(a2 + 72) = v8;
  *(a2 + 88) = v9[4];
  *(a2 + 24) = v7;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4943A48(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t objectdestroy_74Tm_0()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 72);

  __swift_destroy_boxed_opaque_existential_0(v0 + 152);

  return swift_deallocObject();
}

uint64_t sub_1A4943B3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4943BA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4943C0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4943C6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4943CD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4943D64()
{
  v1 = [v0 presentingViewController];
  v2 = [v1 view];

  if (v2)
  {
    [v2 px_screenScale];
  }

  else
  {
    sub_1A524D244();
    v3 = *sub_1A3CAA3FC();
    sub_1A5246DF4();

    PLPhysicalScreenScale();
  }
}

uint64_t sub_1A4943E48@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1A5248464();
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  swift_getOpaqueTypeMetadata2();
  v21 = v5;
  v22 = v6;
  swift_getOpaqueTypeConformance2();
  sub_1A5247D04();
  swift_getWitnessTable();
  v7 = sub_1A5248834();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17[-v12];
  v18 = v5;
  v19 = v6;
  v20 = v2;
  sub_1A5248824();
  swift_getWitnessTable();
  v14 = *(v8 + 16);
  v14(v13, v10, v7);
  v15 = *(v8 + 8);
  v15(v10, v7);
  v14(a2, v13, v7);
  return (v15)(v13, v7);
}

uint64_t sub_1A4944070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  swift_getOpaqueTypeMetadata2();
  v22 = a2;
  v23 = a3;
  swift_getOpaqueTypeConformance2();
  v8 = sub_1A5247D04();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18[-v13];
  v19 = a2;
  v20 = a3;
  v21 = a1;
  sub_1A524A044();
  sub_1A5247D14();
  swift_getWitnessTable();
  v15 = *(v9 + 16);
  v15(v14, v11, v8);
  v16 = *(v9 + 8);
  v16(v11, v8);
  v15(a4, v14, v8);
  return (v16)(v14, v8);
}

uint64_t sub_1A4944270@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v14[0] = a1;
  v14[1] = a2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v5 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - v9;
  sub_1A524A024();
  sub_1A524BC74();
  sub_1A524AE64();
  v11 = *(v5 + 16);
  v11(v10, v7, OpaqueTypeMetadata2);
  v12 = *(v5 + 8);
  v12(v7, OpaqueTypeMetadata2);
  v11(a3, v10, OpaqueTypeMetadata2);
  return (v12)(v10, OpaqueTypeMetadata2);
}

uint64_t sub_1A4944418@<X0>(uint64_t *a1@<X8>)
{
  sub_1A4944708();
  a1[3] = v2;
  a1[4] = sub_1A4944918(&qword_1EB145810, sub_1A4944708);
  __swift_allocate_boxed_opaque_existential_1(a1);
  swift_getKeyPath();
  sub_1A3D868AC();
  sub_1A4944804();
  sub_1A3DE77C8();
  sub_1A4944918(&qword_1EB145808, sub_1A4944804);
  return sub_1A524B9B4();
}

uint64_t sub_1A4944550()
{
  v0 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v0);

  return sub_1A5248444();
}

void sub_1A4944708()
{
  if (!qword_1EB1457E8)
  {
    sub_1A494476C();
    sub_1A4944870();
    v0 = type metadata accessor for ProtoRootScrollView();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1457E8);
    }
  }
}

void sub_1A494476C()
{
  if (!qword_1EB1457F0)
  {
    sub_1A3D868AC();
    sub_1A4944804();
    sub_1A3DE77C8();
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1457F0);
    }
  }
}

void sub_1A4944804()
{
  if (!qword_1EB1457F8)
  {
    v0 = sub_1A5248454();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1457F8);
    }
  }
}

unint64_t sub_1A4944870()
{
  result = qword_1EB145800;
  if (!qword_1EB145800)
  {
    sub_1A494476C();
    sub_1A4944918(&qword_1EB145808, sub_1A4944804);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145800);
  }

  return result;
}

uint64_t sub_1A4944918(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4944960@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v2);

  *a1 = 0x23206D657449;
  *(a1 + 8) = 0xE600000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

char *sub_1A49449FC(void *a1, void *a2, void *a3)
{
  v4 = v3;
  sub_1A4944CB4(0, &qword_1EB128B08, sub_1A418478C, MEMORY[0x1E695C070]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - v11;
  v13 = objc_allocWithZone(v4);
  v14 = OBJC_IVAR____TtC12PhotosUICore42PhotosDetailsKnowledgeGraphWidgetViewModel__visualLookupData;
  v16[1] = 0;
  sub_1A418478C();
  sub_1A52479A4();
  (*(v10 + 32))(&v13[v14], v12, v9);
  return sub_1A4467460(a1, a2, a3);
}

uint64_t sub_1A4944B4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v1;
}

uint64_t sub_1A4944BC0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  *a1 = v3;
  return result;
}

uint64_t sub_1A4944C40(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_1A52479F4();
}

void sub_1A4944CB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A4944D6C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore42PhotosDetailsKnowledgeGraphWidgetViewModel__visualLookupData;
  sub_1A4944CB4(0, &qword_1EB128B08, sub_1A418478C, MEMORY[0x1E695C070]);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t type metadata accessor for PhotosDetailsKnowledgeGraphWidgetViewModel()
{
  result = qword_1EB171100;
  if (!qword_1EB171100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4944EF4()
{
  sub_1A4944CB4(319, &qword_1EB128B08, sub_1A418478C, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 sub_1A4944FB4@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v42 = a1;
  v43 = a2;
  v41 = sub_1A524A204();
  v2 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4945CC0(0, &unk_1EB1276B0, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v40 - v6;
  v8 = sub_1A524A274();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4947068();
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4947040(0);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v40 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5249BD4();
  (*(v9 + 104))(v11, *MEMORY[0x1E6980EF8], v8);
  v19 = sub_1A524A154();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  sub_1A524A1C4();
  sub_1A441183C(v7);
  (*(v9 + 8))(v11, v8);
  v20 = v41;
  (*(v2 + 104))(v4, *MEMORY[0x1E6980EA8], v41);
  v21 = sub_1A524A234();

  (*(v2 + 8))(v4, v20);
  KeyPath = swift_getKeyPath();
  sub_1A4946F2C();
  v24 = &v15[*(v23 + 36)];
  *v24 = KeyPath;
  v24[1] = v21;
  v25 = swift_getKeyPath();
  sub_1A49470E8();
  v27 = &v15[*(v26 + 36)];
  *v27 = v25;
  v27[8] = 0;
  v28 = swift_getKeyPath();
  v29 = &v15[*(v13 + 44)];
  *v29 = v28;
  *(v29 + 1) = 3;
  v29[16] = 0;
  v30 = qword_1A53757D0[v42];
  v31 = qword_1A53757F0[v42];
  LOBYTE(v25) = sub_1A524A064();
  v32 = v40;
  sub_1A49497F4(v15, v40, sub_1A4947068);
  v33 = v32 + *(v17 + 44);
  *v33 = v25;
  *(v33 + 8) = v30;
  *(v33 + 16) = v31;
  *(v33 + 24) = v30;
  *(v33 + 32) = v31;
  *(v33 + 40) = 0;
  sub_1A524BC74();
  sub_1A5248AD4();
  v34 = v43;
  sub_1A49497F4(v32, v43, sub_1A4947040);
  sub_1A4947018(0);
  v36 = v34 + *(v35 + 36);
  v37 = v49;
  *(v36 + 64) = v48;
  *(v36 + 80) = v37;
  *(v36 + 96) = v50;
  v38 = v45;
  *v36 = v44;
  *(v36 + 16) = v38;
  result = v47;
  *(v36 + 32) = v46;
  *(v36 + 48) = result;
  return result;
}

double sub_1A4945474@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v54 = a1;
  v55 = a2;
  v2 = sub_1A5242D14();
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v51 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524A204();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4945CC0(0, &unk_1EB1276B0, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v50 - v9;
  v11 = sub_1A524A274();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4946E5C(0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5249BD4();
  (*(v12 + 104))(v14, *MEMORY[0x1E6980EF8], v11);
  v19 = sub_1A524A154();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  sub_1A524A1C4();
  sub_1A441183C(v10);
  (*(v12 + 8))(v14, v11);
  (*(v5 + 104))(v7, *MEMORY[0x1E6980EA8], v4);
  v20 = sub_1A524A234();

  (*(v5 + 8))(v7, v4);
  KeyPath = swift_getKeyPath();
  sub_1A4946F2C();
  v23 = &v18[*(v22 + 36)];
  *v23 = KeyPath;
  v23[1] = v20;
  v24 = swift_getKeyPath();
  sub_1A4946EAC();
  v26 = &v18[*(v25 + 36)];
  *v26 = v24;
  *(v26 + 1) = 1;
  v26[16] = 0;
  LOBYTE(v24) = sub_1A524A054();
  sub_1A5247BC4();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_1A4946E84(0);
  v36 = &v18[*(v35 + 36)];
  *v36 = v24;
  *(v36 + 1) = v28;
  *(v36 + 2) = v30;
  *(v36 + 3) = v32;
  *(v36 + 4) = v34;
  v36[40] = 0;
  LOBYTE(v24) = sub_1A524A0C4();
  sub_1A5247BC4();
  v37 = &v18[*(v16 + 44)];
  *v37 = v24;
  *(v37 + 1) = v38;
  *(v37 + 2) = v39;
  *(v37 + 3) = v40;
  *(v37 + 4) = v41;
  v37[40] = 0;
  v43 = v51;
  v42 = v52;
  v44 = v53;
  (*(v52 + 104))(v51, *MEMORY[0x1E69C2200], v53);
  sub_1A5242D04();
  (*(v42 + 8))(v43, v44);
  sub_1A524BC74();
  sub_1A52481F4();
  v45 = v55;
  sub_1A49497F4(v18, v55, sub_1A4946E5C);
  sub_1A4946E34(0);
  v47 = (v45 + *(v46 + 36));
  v48 = v57;
  *v47 = v56;
  v47[1] = v48;
  result = *&v58;
  v47[2] = v58;
  return result;
}

uint64_t sub_1A4945980()
{
  sub_1A49459BC();
  sub_1A5249244();
  return v1;
}

unint64_t sub_1A49459BC()
{
  result = qword_1EB15C798[0];
  if (!qword_1EB15C798[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15C798);
  }

  return result;
}

uint64_t sub_1A4945A4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E697DBD0];
  sub_1A4945CC0(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for GenerativeStoryCommonButtonStyle(0);
  sub_1A49499A8(v1 + *(v11 + 24), v10, &qword_1EB128A70, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1A5247E04();
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  else
  {
    sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_1A4945CC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A4945D24(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v4 = sub_1A5249234();
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1A5248A14();
  MEMORY[0x1EEE9AC00](v53);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A494985C(0, &qword_1EB122738, sub_1A4946E34, sub_1A4947018, MEMORY[0x1E697F960]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v47 - v9;
  sub_1A4947174();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4947238(0);
  v16 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A494741C();
  v51 = *(v19 - 8);
  v52 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  sub_1A49462E0(a1, v10);
  if (*v2 == 1)
  {
    v22 = sub_1A524B4A4();
  }

  else
  {
    v22 = sub_1A524B484();
  }

  v23 = v22;
  KeyPath = swift_getKeyPath();
  sub_1A4948D88(v10, v14, &qword_1EB122738, sub_1A4946E34, sub_1A4947018, MEMORY[0x1E697F960]);
  v25 = &v14[*(v12 + 36)];
  *v25 = KeyPath;
  v25[1] = v23;
  v26 = sub_1A524BC74();
  v28 = v27;
  v29 = &v18[*(v16 + 36)];
  sub_1A494682C(v2, v29);
  sub_1A4947280();
  v31 = (v29 + *(v30 + 36));
  *v31 = v26;
  v31[1] = v28;
  sub_1A49497F4(v14, v18, sub_1A4947174);
  v32 = *(v2 + 8);
  if (*(v2 + 16) != 1)
  {

    sub_1A524D254();
    v33 = sub_1A524A014();
    sub_1A5246DF4();

    v34 = v48;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v32, 0);
    (*(v49 + 8))(v34, v50);
    LOBYTE(v32) = v56;
  }

  v35 = qword_1A5375830[v32];
  v36 = *(v53 + 20);
  v37 = *MEMORY[0x1E697F468];
  v38 = sub_1A52494A4();
  (*(*(v38 - 8) + 104))(&v7[v36], v37, v38);
  *v7 = v35;
  *(v7 + 1) = v35;
  sub_1A49474F0();
  sub_1A4949644(&qword_1EB128080, MEMORY[0x1E697EAF0]);
  sub_1A524A5B4();
  sub_1A4949948(v7, MEMORY[0x1E697EAF0]);
  sub_1A4949948(v18, sub_1A4947238);
  if (sub_1A5249BE4())
  {
    v39 = 0.95;
  }

  else
  {
    v39 = 1.0;
  }

  sub_1A524BE94();
  v41 = v40;
  v43 = v42;
  v44 = v55;
  (*(v51 + 32))(v55, v21, v52);
  sub_1A4948B50(0, &qword_1EB123FC8, sub_1A494741C);
  v46 = v44 + *(v45 + 36);
  *v46 = v39;
  *(v46 + 8) = v39;
  *(v46 + 16) = v41;
  *(v46 + 24) = v43;
}

uint64_t sub_1A49462E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v30 = a2;
  v3 = sub_1A5249234();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4947018(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A494985C(0, &qword_1EB122C00, sub_1A4946E34, sub_1A4947018, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = sub_1A5242D14();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4946E34(0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v2 == 1)
  {
    type metadata accessor for GenerativeStoryCommonButtonStyle(0);
    sub_1A4947BA4(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v15);
    v20 = sub_1A4945474(v15, v19);
    (*(v13 + 8))(v15, v12, v20);
    sub_1A49498E0(v19, v11, sub_1A4946E34);
    swift_storeEnumTagMultiPayload();
    sub_1A49493F8(&qword_1EB1230E8, sub_1A4946E34, sub_1A4947774);
    sub_1A49493F8(&qword_1EB1230F8, sub_1A4947018, sub_1A49479E4);
    sub_1A5249744();
    v21 = sub_1A4946E34;
    v22 = v19;
  }

  else
  {
    v26 = v17;
    v23 = *(v2 + 8);
    if (*(v2 + 16) != 1)
    {

      sub_1A524D254();
      v24 = sub_1A524A014();
      sub_1A5246DF4();

      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3C53AEC(v23, 0);
      (*(v27 + 8))(v5, v28);
      v23 = v31;
    }

    sub_1A4944FB4(v23, v8);
    sub_1A49498E0(v8, v11, sub_1A4947018);
    swift_storeEnumTagMultiPayload();
    sub_1A49493F8(&qword_1EB1230E8, sub_1A4946E34, sub_1A4947774);
    sub_1A49493F8(&qword_1EB1230F8, sub_1A4947018, sub_1A49479E4);
    sub_1A5249744();
    v21 = sub_1A4947018;
    v22 = v8;
  }

  return sub_1A4949948(v22, v21);
}

uint64_t sub_1A494682C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_1A5248A14();
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BBF4();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5249234();
  v50 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5247E04();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  sub_1A3E42C60(0);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v56 = (&v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*a1 == 1)
  {
    sub_1A4945A4C(v15);
    (*(v10 + 104))(v12, *MEMORY[0x1E697DBA8], v9);
    v19 = sub_1A5247DF4();
    v20 = *(v10 + 8);
    v20(v12, v9);
    v20(v15, v9);
    if (v19)
    {
      sub_1A524B404();
    }

    else
    {
      sub_1A524B434();
    }
  }

  else
  {
    sub_1A524B414();
  }

  v48 = sub_1A524B474();

  v21 = *(a1 + 8);
  v22 = *(a1 + 16);
  v47 = v7;
  if (v22 == 1)
  {
    v23 = v21;
  }

  else
  {

    sub_1A524D254();
    v24 = sub_1A524A014();
    sub_1A5246DF4();

    v25 = v49;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v21, 0);
    (*(v50 + 8))(v25, v7);
    v23 = v58;
  }

  v26 = qword_1A5375830[v23];
  v27 = v56;
  v28 = v56 + *(v17 + 36);
  v29 = v3;
  v30 = *(v3 + 20);
  v31 = *MEMORY[0x1E697F468];
  v32 = sub_1A52494A4();
  v33 = *(*(v32 - 8) + 104);
  v33(&v28[v30], v31, v32);
  *v28 = v26;
  *(v28 + 1) = v26;
  sub_1A3E42C88();
  *&v28[*(v34 + 36)] = 256;
  *v27 = v48;
  v35 = v51;
  sub_1A524BBE4();
  if (!v22)
  {

    sub_1A524D254();
    v36 = sub_1A524A014();
    sub_1A5246DF4();

    v37 = v49;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v21, 0);
    (*(v50 + 8))(v37, v47);
    LOBYTE(v21) = v57;
  }

  v38 = qword_1A5375830[v21];
  v39 = v54;
  v33(&v54[*(v29 + 20)], v31, v32);
  *v39 = v38;
  v39[1] = v38;
  sub_1A494985C(0, &qword_1EB123748, sub_1A3E42C60, sub_1A41CD0B0, MEMORY[0x1E697E830]);
  v41 = v55;
  v42 = v55 + *(v40 + 36);
  (*(v52 + 32))(v42, v35, v53);
  sub_1A41CD0B0();
  v44 = v43;
  sub_1A49497F4(v39, v42 + *(v43 + 52), MEMORY[0x1E697EAF0]);
  *(v42 + *(v44 + 56)) = 256;
  return sub_1A49497F4(v56, v41, sub_1A3E42C60);
}

void sub_1A4946EAC()
{
  if (!qword_1EB123878)
  {
    sub_1A4946F2C();
    sub_1A4946FAC(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123878);
    }
  }
}

void sub_1A4946F2C()
{
  if (!qword_1EB124090)
  {
    sub_1A5249BC4();
    sub_1A4946FAC(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124090);
    }
  }
}

void sub_1A4946FAC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A4949138(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A4947068()
{
  if (!qword_1EB123448)
  {
    sub_1A49470E8();
    sub_1A4946FAC(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123448);
    }
  }
}

void sub_1A49470E8()
{
  if (!qword_1EB123888)
  {
    sub_1A4946F2C();
    sub_1A4949138(255, &unk_1EB127840, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123888);
    }
  }
}

void sub_1A4947174()
{
  if (!qword_1EB124140)
  {
    sub_1A494985C(255, &qword_1EB122738, sub_1A4946E34, sub_1A4947018, MEMORY[0x1E697F960]);
    sub_1A4946FAC(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124140);
    }
  }
}

void sub_1A4947280()
{
  if (!qword_1EB122D50)
  {
    sub_1A494985C(255, &qword_1EB123748, sub_1A3E42C60, sub_1A41CD0B0, MEMORY[0x1E697E830]);
    sub_1A4947328();
    v0 = sub_1A5249724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122D50);
    }
  }
}

unint64_t sub_1A4947328()
{
  result = qword_1EB123750;
  if (!qword_1EB123750)
  {
    sub_1A494985C(255, &qword_1EB123748, sub_1A3E42C60, sub_1A41CD0B0, MEMORY[0x1E697E830]);
    sub_1A3E43048();
    sub_1A4949644(&qword_1EB122098, sub_1A41CD0B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123750);
  }

  return result;
}

void sub_1A494741C()
{
  if (!qword_1EB121FD8)
  {
    sub_1A4947238(255);
    sub_1A5248A14();
    sub_1A49474F0();
    sub_1A4949644(&qword_1EB128080, MEMORY[0x1E697EAF0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121FD8);
    }
  }
}

unint64_t sub_1A49474F0()
{
  result = qword_1EB1238B0;
  if (!qword_1EB1238B0)
  {
    sub_1A4947238(255);
    sub_1A49475A0();
    sub_1A4949644(&unk_1EB122D58, sub_1A4947280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1238B0);
  }

  return result;
}

unint64_t sub_1A49475A0()
{
  result = qword_1EB124148;
  if (!qword_1EB124148)
  {
    sub_1A4947174();
    sub_1A4947640();
    sub_1A4947994(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124148);
  }

  return result;
}

unint64_t sub_1A4947640()
{
  result = qword_1EB122740;
  if (!qword_1EB122740)
  {
    sub_1A494985C(255, &qword_1EB122738, sub_1A4946E34, sub_1A4947018, MEMORY[0x1E697F960]);
    sub_1A49493F8(&qword_1EB1230E8, sub_1A4946E34, sub_1A4947774);
    sub_1A49493F8(&qword_1EB1230F8, sub_1A4947018, sub_1A49479E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122740);
  }

  return result;
}

uint64_t sub_1A4947820(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1A4947994(&qword_1EB1277A0, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A49478C4()
{
  result = qword_1EB124098;
  if (!qword_1EB124098)
  {
    sub_1A4946F2C();
    sub_1A4949644(&qword_1EB122220, MEMORY[0x1E697C8D0]);
    sub_1A4947994(&qword_1EB127830, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124098);
  }

  return result;
}

uint64_t sub_1A4947994(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A4946FAC(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4947A54()
{
  result = qword_1EB123890;
  if (!qword_1EB123890)
  {
    sub_1A49470E8();
    sub_1A49478C4();
    sub_1A3FF8FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123890);
  }

  return result;
}

uint64_t sub_1A4947AD4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1 & 1;
  *(a3 + 8) = swift_getKeyPath();
  *(a3 + 16) = 0;
  v5 = type metadata accessor for GenerativeStoryCommonButtonStyle(0);
  sub_1A4948BB4(a2, a3 + *(v5 + 24));
  v6 = *(v5 + 28);
  *(a3 + v6) = swift_getKeyPath();
  sub_1A4945CC0(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A4947BA4@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4945CC0(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1A49499A8(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_1A524D254();
    v19 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

void sub_1A4947DBC(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A494985C(0, &qword_1EB122FF0, sub_1A4948C48, sub_1A4948CC8, MEMORY[0x1E697E830]);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  v11 = v1 + *(type metadata accessor for GenerativeStoryIntelligenceSuggestionButtonStyle(0) + 20);
  v12 = *v11;
  if (*(v11 + 8) != 1)
  {

    sub_1A524D254();
    v31 = v3;
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v12, 0);
    (*(v4 + 8))(v6, v31);
    v12 = v32;
  }

  sub_1A4944FB4(v12, v10);
  v14 = sub_1A524B484();
  KeyPath = swift_getKeyPath();
  sub_1A4948C48();
  v17 = &v10[*(v16 + 36)];
  *v17 = KeyPath;
  v17[1] = v14;
  v18 = &v10[*(v8 + 36)];
  type metadata accessor for GenerativeStorySuggestionLightingView(0);
  sub_1A49480F8();
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = sub_1A524BC74();
  v21 = v20;
  sub_1A4948CC8();
  v23 = &v18[*(v22 + 36)];
  *v23 = v19;
  v23[1] = v21;
  if (sub_1A5249BE4())
  {
    v24 = 0.95;
  }

  else
  {
    v24 = 1.0;
  }

  sub_1A524BE94();
  v26 = v25;
  v28 = v27;
  sub_1A4948D88(v10, a1, &qword_1EB122FF0, sub_1A4948C48, sub_1A4948CC8, MEMORY[0x1E697E830]);
  sub_1A4948DFC();
  v30 = a1 + *(v29 + 36);
  *v30 = v24;
  *(v30 + 8) = v24;
  *(v30 + 16) = v26;
  *(v30 + 24) = v28;
}

uint64_t sub_1A49480F8()
{
  v0 = sub_1A5247E04();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = sub_1A52472E4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A5247294();
  sub_1A4947BA4(&qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBD0], v6);
  (*(v1 + 104))(v3, *MEMORY[0x1E697DBA8], v0);
  v11 = sub_1A5247DF4();
  v12 = *(v1 + 8);
  v12(v3, v0);
  v12(v6, v0);
  v13 = 7;
  if (v11)
  {
    v13 = 8;
  }

  *v10 = v13;
  (*(v8 + 104))(v10, *MEMORY[0x1E69DC088], v7);
  return sub_1A52472A4();
}

uint64_t sub_1A4948330@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_1A4945CC0(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v2 = a1 + *(type metadata accessor for GenerativeStoryIntelligenceSuggestionButtonStyle(0) + 20);
  result = swift_getKeyPath();
  *v2 = result;
  v2[8] = 0;
  return result;
}

uint64_t sub_1A49483CC@<X0>(unint64_t *a1@<X1>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  sub_1A4945CC0(0, a1, a2, MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

id sub_1A4948574()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativeStoryIntelligenceSuggestionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1A49485B8()
{
  v1 = sub_1A5249234();
  v25 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A52472B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for GenerativeStorySuggestionLightingView(0);
  v12 = *(v5 + 16);
  v12(v10, v0 + *(v11 + 20), v4);
  v13 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_1A524D254();
    v14 = sub_1A524A014();
    v24 = v1;
    v15 = v4;
    v16 = v14;
    sub_1A5246DF4();

    v4 = v15;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v13, 0);
    (*(v25 + 8))(v3, v24);
    LOBYTE(v13) = v27;
  }

  v17 = qword_1A5375830[v13];
  v18 = type metadata accessor for GenerativeStoryIntelligenceSuggestionView();
  v19 = objc_allocWithZone(v18);
  v12(v7, v10, v4);
  v20 = objc_allocWithZone(sub_1A52472F4());
  *&v19[OBJC_IVAR____TtC12PhotosUICoreP33_A9C40A4A464D1AF98F1002330EE5183541GenerativeStoryIntelligenceSuggestionView_backdropView] = sub_1A52472C4();
  *&v19[OBJC_IVAR____TtC12PhotosUICoreP33_A9C40A4A464D1AF98F1002330EE5183541GenerativeStoryIntelligenceSuggestionView_cornerRadius] = v17;
  v26.receiver = v19;
  v26.super_class = v18;
  v21 = objc_msgSendSuper2(&v26, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v21 addSubview_];
  (*(v5 + 8))(v10, v4);
  return v21;
}

uint64_t sub_1A49488A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A49497B0(&qword_1EB15F1D0);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A4948928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A49497B0(&qword_1EB15F1D0);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A49489A8()
{
  sub_1A49497B0(&qword_1EB15F1D0);
  sub_1A52496F4();
  __break(1u);
}

uint64_t sub_1A49489EC(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == *MEMORY[0x1E69C21F8])
  {
    return 1;
  }

  if (v4 == *MEMORY[0x1E69C21F0])
  {
    return 2;
  }

  if (v4 == *MEMORY[0x1E69C2210])
  {
    return 3;
  }

  (*(v3 + 8))(a1, v2);
  return 0;
}

uint64_t sub_1A4948AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A4948F34();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void sub_1A4948B50(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A4948BB4(uint64_t a1, uint64_t a2)
{
  sub_1A4945CC0(0, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A4948C48()
{
  if (!qword_1EB123060)
  {
    sub_1A4947018(255);
    sub_1A4946FAC(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123060);
    }
  }
}

void sub_1A4948CC8()
{
  if (!qword_1EB122D78)
  {
    type metadata accessor for GenerativeStorySuggestionLightingView(255);
    sub_1A49497B0(qword_1EB15F1D8);
    v0 = sub_1A5249724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122D78);
    }
  }
}

uint64_t sub_1A4948D88(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1A494985C(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

void sub_1A4948DFC()
{
  if (!qword_1EB122F98)
  {
    sub_1A494985C(255, &qword_1EB122FF0, sub_1A4948C48, sub_1A4948CC8, MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122F98);
    }
  }
}

unint64_t sub_1A4948EA4()
{
  result = qword_1EB145818;
  if (!qword_1EB145818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145818);
  }

  return result;
}

unint64_t sub_1A4948F34()
{
  result = qword_1EB1252A0;
  if (!qword_1EB1252A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1252A0);
  }

  return result;
}

unint64_t sub_1A4948F8C()
{
  result = qword_1EB145820;
  if (!qword_1EB145820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145820);
  }

  return result;
}

void sub_1A4949008()
{
  sub_1A4949138(319, &qword_1EB124750, &type metadata for GenerativeStorySuggestionsStyleSpec, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A4945CC0(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A4945CC0(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A4949138(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A49491C0()
{
  sub_1A4945CC0(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A4949138(319, &qword_1EB124750, &type metadata for GenerativeStorySuggestionsStyleSpec, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1A49492D4()
{
  result = qword_1EB123FD0;
  if (!qword_1EB123FD0)
  {
    sub_1A4948B50(255, &qword_1EB123FC8, sub_1A494741C);
    sub_1A4947238(255);
    sub_1A5248A14();
    sub_1A49474F0();
    sub_1A4949644(&qword_1EB128080, MEMORY[0x1E697EAF0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123FD0);
  }

  return result;
}

uint64_t sub_1A49493F8(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4949478()
{
  result = qword_1EB122FF8;
  if (!qword_1EB122FF8)
  {
    sub_1A494985C(255, &qword_1EB122FF0, sub_1A4948C48, sub_1A4948CC8, MEMORY[0x1E697E830]);
    sub_1A494956C();
    sub_1A4949644(&unk_1EB122D80, sub_1A4948CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122FF8);
  }

  return result;
}

unint64_t sub_1A494956C()
{
  result = qword_1EB123068;
  if (!qword_1EB123068)
  {
    sub_1A4948C48();
    sub_1A49493F8(&qword_1EB1230F8, sub_1A4947018, sub_1A49479E4);
    sub_1A4947994(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123068);
  }

  return result;
}

uint64_t sub_1A4949644(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A49496C4()
{
  sub_1A4949138(319, &qword_1EB124750, &type metadata for GenerativeStorySuggestionsStyleSpec, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A52472B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A49497B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GenerativeStorySuggestionLightingView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A49497F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A494985C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_1A49498E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4949948(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A49499A8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A4945CC0(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A4949A2C@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v2 = *v1;
  sub_1A3DBD9A0();
  v3 = sub_1A524ECF4();
  v4 = sub_1A524DF24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v18 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = (v1 + *(v2 + 88));
  os_unfair_lock_lock(v10);
  v11 = sub_1A5241C54();
  v12 = *(v5 + 16);
  v16 = *(v11 + 28);
  v17 = v12;
  v12(v9, v10 + v16, v4);
  os_unfair_lock_unlock(v10);
  v13 = *(v3 - 8);
  v14 = *(v13 + 48);
  if (v14(v9, 1, v3) != 1)
  {
    return (*(v13 + 32))(v19, v9, v3);
  }

  (*(v5 + 8))(v9, v4);
  sub_1A524D3D4();
  os_unfair_lock_lock(v10);
  v9 = v18;
  v17(v18, v10 + v16, v4);
  os_unfair_lock_unlock(v10);
  result = (v14)(v9, 1, v3);
  if (result != 1)
  {
    return (*(v13 + 32))(v19, v9, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4949CA0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1A4949CF8(a1, a2, a3);
  return v6;
}

void *sub_1A4949CF8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v46 = a2;
  v47 = a3;
  v6 = *v3;
  v7 = sub_1A524BEE4();
  v8 = *(v7 - 8);
  v51 = v7;
  v52 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A524D464();
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A524BF64();
  v48 = *(v14 - 8);
  v49 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v6 + 80);
  sub_1A3DBD9A0();
  v40 = v17;
  v18 = sub_1A524ECF4();
  v19 = sub_1A524DF24();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v39 - v22;
  v24 = v4 + *(v6 + 88);
  (*(*(v18 - 8) + 56))(&v39 - v22, 1, 1, v18, v21);
  *v24 = 0;
  v25 = *(sub_1A5241C54() + 28);
  v26 = sub_1A5241C64();
  bzero(&v24[v25], *(*(v26 - 8) + 64));
  (*(v20 + 32))(&v24[v25], v23, v19);
  v27 = *(*v4 + 104);
  *(v4 + v27) = dispatch_group_create();
  v39 = sub_1A3C29A58();
  aBlock = 0;
  v55 = 0xE000000000000000;
  sub_1A524E404();

  aBlock = 0xD000000000000019;
  v55 = 0x80000001A53F38C0;
  swift_getMetatypeMetadata();
  v28 = sub_1A524EEF4();
  MEMORY[0x1A5907B60](v28);

  v41 = a1;
  sub_1A524BF14();
  aBlock = MEMORY[0x1E69E7CC0];
  v29 = MEMORY[0x1E69E8030];
  sub_1A3D75A78(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  sub_1A3DC59A0(0, &qword_1EB126E40, v29);
  sub_1A3C9AB70(&qword_1EB126E30, &qword_1EB126E40, v29);
  sub_1A524E224();
  (*(v44 + 104))(v43, *MEMORY[0x1E69E8090], v45);
  *(v4 + *(*v4 + 96)) = sub_1A524D4B4();
  dispatch_group_enter(*(v4 + *(*v4 + 104)));
  v45 = *(v4 + *(*v4 + 96));
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  v32 = v46;
  v33 = v47;
  v31[2] = v40;
  v31[3] = v32;
  v31[4] = v33;
  v31[5] = v30;
  v58 = sub_1A494AAEC;
  v59 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_1A3C2E0D0;
  v57 = &block_descriptor_307;
  v34 = _Block_copy(&aBlock);

  sub_1A524BF14();
  v53 = MEMORY[0x1E69E7CC0];
  v35 = MEMORY[0x1E69E7F60];
  sub_1A3D75A78(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3DC59A0(0, &qword_1EB12B1C0, v35);
  sub_1A3C9AB70(&qword_1EB12B1B0, &qword_1EB12B1C0, v35);
  v36 = v50;
  v37 = v51;
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v16, v36, v34);
  _Block_release(v34);

  (*(v52 + 8))(v36, v37);
  (*(v48 + 8))(v16, v49);

  return v4;
}

void sub_1A494A404(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v6 = sub_1A524DF24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v22 = 0;
  v14 = *(*(a4 - 8) + 56);
  v15 = v14(&v21 - v12, 1, 1, a4, v11);
  a1(v15);
  (v14)(v9, 0, 1, a4);
  (*(v7 + 40))(v13, v9, v6);
  v16 = v6;
  v17 = v21;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = (Strong + *(*Strong + 88));
    os_unfair_lock_lock(v19);
    sub_1A3DBD9A0();
    sub_1A524ECF4();
    sub_1A524DF24();
    v20 = sub_1A5241C54();
    sub_1A494A660((&v19->_os_unfair_lock_opaque + *(v20 + 28)), &v22, v13, v17, a4);
    sub_1A3F5E528();
    os_unfair_lock_unlock(v19);
  }

  (*(v7 + 8))(v13, v16);
}

void sub_1A494A660(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a3;
  v25 = a4;
  v8 = sub_1A524DF24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  sub_1A3DBD9A0();
  v12 = sub_1A524ECF4();
  v13 = sub_1A524DF24();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *a2;
  if (v18)
  {
    v19 = v18;
    (*(v14 + 8))(a1, v13);
    *a1 = v18;
    swift_storeEnumTagMultiPayload();
    (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
  }

  else
  {
    (*(v9 + 16))(v11, v24, v8, v15);
    v20 = *(a5 - 8);
    if ((*(v20 + 48))(v11, 1, a5) == 1)
    {
      __break(1u);
      return;
    }

    (*(v14 + 8))(a1, v13);
    (*(v20 + 32))(v17, v11, a5);
    swift_storeEnumTagMultiPayload();
    (*(*(v12 - 8) + 56))(v17, 0, 1, v12);
    (*(v14 + 32))(a1, v17, v13);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = *(Strong + *(*Strong + 104));

    dispatch_group_leave(v22);
  }
}

uint64_t sub_1A494A9A8()
{
  sub_1A3DBD9A0();
  sub_1A524ECF4();
  sub_1A524DF24();
  sub_1A5241C54();
  sub_1A5241C64();
  sub_1A524DF04();

  return v0;
}

uint64_t sub_1A494AA94()
{
  sub_1A494A9A8();

  return swift_deallocClassInstance();
}

uint64_t sub_1A494AAF8()
{
  sub_1A3DBD9A0();
  sub_1A524ECF4();
  sub_1A524DF24();
  result = sub_1A5241C54();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

PXLemonadeSearchViewControllerFactory __swiftcall PXLemonadeSearchViewControllerFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for PXLemonadeSearchViewControllerFactory()
{
  result = qword_1EB1E1360[0];
  if (!qword_1EB1E1360[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EB1E1360);
  }

  return result;
}

id sub_1A494AD14(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR___PXPhotosZoomableOverlayController_overlayLayoutProvider];
  *v3 = 0;
  v3[1] = 0;
  *&v1[OBJC_IVAR___PXPhotosZoomableOverlayController_photosViewModel] = 0;
  *&v1[OBJC_IVAR___PXPhotosZoomableOverlayController_currentLens] = 0;
  swift_unknownObjectWeakInit();
  v4 = &v1[OBJC_IVAR___PXPhotosZoomableOverlayController_observation];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR___PXPhotosZoomableOverlayController_isSwitchingLens] = 0;
  *&v1[OBJC_IVAR___PXPhotosZoomableOverlayController_currentZoomStep] = 0;
  *&v1[OBJC_IVAR___PXPhotosZoomableOverlayController_photoLibrary] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for PhotosZoomableOverlayController();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_1A494AEEC()
{
  v1 = (v0 + OBJC_IVAR___PXPhotosZoomableOverlayController_overlayLayoutProvider);
  swift_beginAccess();
  v2 = *v1;
  sub_1A3C66EE8(*v1);
  return v2;
}

uint64_t sub_1A494B008(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___PXPhotosZoomableOverlayController_overlayLayoutProvider);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1A3C33378(v6);
}

uint64_t sub_1A494B068@<X0>(void **a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x98))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A45C4D98;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A494B108(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A47F9E7C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xA0);
  sub_1A3C66EE8(v3);
  return v7(v6, v5);
}

uint64_t sub_1A494B260(void (*a1)(void))
{
  a1();
  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_1A494B3A4()
{
  sub_1A3C4ED78(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A52F9DE0;
  v1 = sub_1A47BCE58();
  swift_beginAccess();
  *(v0 + 32) = *v1;
  swift_unknownObjectRetain();
  v2 = sub_1A47BCEA8();
  swift_beginAccess();
  *(v0 + 40) = *v2;
  swift_unknownObjectRetain();
  return v0;
}

void *sub_1A494B4AC()
{
  v1 = OBJC_IVAR___PXPhotosZoomableOverlayController_photosViewModel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A494B578(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___PXPhotosZoomableOverlayController_photosViewModel;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_6;
  }

  if (v5 != a1)
  {
    if (!a1)
    {
      v6 = 0;
      v7 = (v2 + OBJC_IVAR___PXPhotosZoomableOverlayController_observation);
      *v7 = 0;
      v7[1] = 0;

      swift_unknownObjectRelease();
      a1 = v5;
      goto LABEL_7;
    }

LABEL_6:
    swift_allocObject();
    swift_unknownObjectWeakInit();
    a1;

    sub_1A524D1A4();
  }

LABEL_7:
}

uint64_t sub_1A494B69C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A494B6F8(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xC0);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_1A494B760(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___PXPhotosZoomableOverlayController_photosViewModel;
  result = swift_beginAccess();
  v6 = *(v2 + v4);
  if (a1)
  {
    if (v6)
    {
      v7 = v6 == a1;
    }

    else
    {
      v7 = 0;
    }

    if (!v7)
    {
      if (!v6)
      {
        v8 = (v2 + OBJC_IVAR___PXPhotosZoomableOverlayController_observation);
        *v8 = 0;
        v8[1] = 0;
        return swift_unknownObjectRelease();
      }

LABEL_9:
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v6;

      sub_1A524D1A4();
    }
  }

  else if (v6)
  {
    goto LABEL_9;
  }

  return result;
}

void sub_1A494B860()
{
  type metadata accessor for PXPhotosViewModelChanged(0);
  sub_1A494CEE4(&qword_1EB145888);
  sub_1A524EE54();
}

void (*sub_1A494B918(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PXPhotosZoomableOverlayController_photosViewModel;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1A494B9B4;
}

void sub_1A494B9B4(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v5;
  v9 = v4;
  v10 = v9;
  if (a2)
  {
    v11 = v9;
    sub_1A494B760(v8);

    v8 = *v5;
  }

  else
  {
    sub_1A494B760(v8);
  }

  free(v3);
}

uint64_t sub_1A494BB7C(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPhotosZoomableOverlayController_currentLens;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  swift_unknownObjectRetain();
  sub_1A494BCB0(v4);
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A494BBF0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A494BC4C(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xD8);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void sub_1A494BCB0(void *a1)
{
  if (a1)
  {
    v2 = [a1 identifier];
    v3 = sub_1A524C674();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = OBJC_IVAR___PXPhotosZoomableOverlayController_currentLens;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (!v7)
  {
    if (!v5)
    {
      return;
    }

    goto LABEL_16;
  }

  v8 = [v7 identifier];
  v9 = sub_1A524C674();
  v11 = v10;

  if (!v5)
  {
    if (!v11)
    {
      return;
    }

    goto LABEL_16;
  }

  if (!v11)
  {
LABEL_16:

LABEL_17:
    sub_1A494C614();
    return;
  }

  if (v3 == v9 && v5 == v11)
  {

    return;
  }

  v13 = sub_1A524EAB4();

  if ((v13 & 1) == 0)
  {
    goto LABEL_17;
  }
}

void (*sub_1A494BDDC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PXPhotosZoomableOverlayController_currentLens;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  swift_unknownObjectRetain();
  return sub_1A494BE78;
}

void sub_1A494BE78(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = *(*a1 + 24);
  swift_unknownObjectRetain();
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_1A494BCB0(v6);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1A494BCB0(v6);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  free(v3);
}

uint64_t sub_1A494C024()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A494C084@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A494C0E0(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xF0);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void (*sub_1A494C144(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PXPhotosZoomableOverlayController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A3DA46A0;
}

void sub_1A494C230()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))();
  if (v1)
  {
    v2 = v1;
    [v1 zoomStep];
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = round(v4);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v6 = *(v0 + OBJC_IVAR___PXPhotosZoomableOverlayController_currentZoomStep);
  *(v0 + OBJC_IVAR___PXPhotosZoomableOverlayController_currentZoomStep) = v5;
  if (v6 != v5)
  {

    sub_1A494C330();
  }
}

void sub_1A494C330()
{
  v1 = OBJC_IVAR___PXPhotosZoomableOverlayController_isSwitchingLens;
  if ((*(v0 + OBJC_IVAR___PXPhotosZoomableOverlayController_isSwitchingLens) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR___PXPhotosZoomableOverlayController_currentZoomStep);
    v3 = MEMORY[0x1E69E7D40];
    v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xB8);
    v5 = v4();
    if (v5 && (v6 = v5, v7 = [v5 yearsMonthsZoomStepRange], v9 = v8, v6, v9 == 2) && (v7 == 0x7FFFFFFFFFFFFFFFLL ? (v10 = 0x7FFFFFFFFFFFFFFFLL) : (v10 = v7 + 1), v10 == v2))
    {
      v11 = sub_1A47BCEA8();
    }

    else
    {
      v12 = v4();
      if (!v12 || ((v13 = v12, v14 = [v12 yearsMonthsZoomStepRange], v16 = v15, v13, v16 >= 1) ? (v17 = v14 == v2) : (v17 = 0), !v17))
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(v0 + v1) = 1;
        goto LABEL_19;
      }

      v11 = sub_1A47BCE58();
    }

    v21 = v11;
    swift_beginAccess();
    v18 = *v21;
    swift_unknownObjectRetain_n();
    *(v0 + v1) = 1;
    if (v18)
    {
      v22 = [v18 identifier];
      swift_unknownObjectRelease();
      v19 = sub_1A524C674();
      v20 = v23;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

LABEL_19:
    v24 = (*((*v3 & *v0) + 0xD0))();
    if (v24)
    {
      v25 = [v24 identifier];
      swift_unknownObjectRelease();
      v26 = sub_1A524C674();
      v28 = v27;

      if (v20)
      {
        if (v28)
        {
          if (v19 == v26 && v20 == v28)
          {
            swift_unknownObjectRelease();

            goto LABEL_35;
          }

          v30 = sub_1A524EAB4();

          if (v30)
          {
LABEL_34:
            swift_unknownObjectRelease();
LABEL_35:
            *(v0 + v1) = 0;
            return;
          }

LABEL_32:
          v32 = (*((*v3 & *v0) + 0xE8))(v31);
          if (v32)
          {
            [v32 photosOverlayController:v0 didChangeCurrentLens:v18];
            swift_unknownObjectRelease();
          }

          goto LABEL_34;
        }
      }

      else if (!v28)
      {
        goto LABEL_34;
      }
    }

    else if (!v20)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }
}

void sub_1A494C614()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xB8);
  v3 = v2();
  if (!v3)
  {
    return;
  }

  v4 = OBJC_IVAR___PXPhotosZoomableOverlayController_isSwitchingLens;
  if ((*(v0 + OBJC_IVAR___PXPhotosZoomableOverlayController_isSwitchingLens) & 1) == 0)
  {
    v36 = v3;
    v5 = (*((*v1 & *v0) + 0xD0))();
    if (v5)
    {
      v6 = [v5 identifier];
      swift_unknownObjectRelease();
      v7 = sub_1A524C674();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1A47BCEA8();
    swift_beginAccess();
    v11 = [*v10 identifier];
    v12 = sub_1A524C674();
    v14 = v13;

    if (v9)
    {
      if (v12 == v7 && v9 == v14)
      {

LABEL_22:

        v24 = (v2)(v23);
        if (v24)
        {
          v25 = v24;
          v26 = [v24 yearsMonthsZoomStepRange];
          v28 = v27;

          if (v28 == 2)
          {
            if (v26 != 0x7FFFFFFFFFFFFFFFLL)
            {
              ++v26;
            }

            goto LABEL_34;
          }
        }

        v29 = v2();
        if (!v29)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      v16 = sub_1A524EAB4();

      if (v16)
      {
        goto LABEL_22;
      }
    }

    else
    {
    }

    v17 = sub_1A47BCE58();
    swift_beginAccess();
    v18 = [*v17 identifier];
    v19 = sub_1A524C674();
    v21 = v20;

    if (!v9)
    {

      goto LABEL_33;
    }

    if (v19 == v7 && v9 == v21)
    {
    }

    else
    {
      v30 = sub_1A524EAB4();

      if ((v30 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v29 = (v2)(v22);
    if (!v29)
    {
      goto LABEL_33;
    }

LABEL_32:
    v31 = v29;
    v26 = [v29 yearsMonthsZoomStepRange];
    v33 = v32;

    if (v33 > 0)
    {
LABEL_34:
      *(v0 + v4) = 1;
      v34 = swift_allocObject();
      *(v34 + 16) = v26;
      aBlock[4] = sub_1A494CE68;
      aBlock[5] = v34;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3D7692C;
      aBlock[3] = &block_descriptor_308;
      v35 = _Block_copy(aBlock);

      [v36 performChanges_];

      _Block_release(v35);
      *(v0 + v4) = 0;
      return;
    }

LABEL_33:
    v26 = [v36 defaultZoomStep];
    goto LABEL_34;
  }
}

id PhotosZoomableOverlayController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosZoomableOverlayController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosZoomableOverlayController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A494CEE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PXPhotosViewModelChanged(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t LemonadePresentationContext.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A494D06C()
{
  v0 = sub_1A5240BA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v6, qword_1EB1EC130);
  __swift_project_value_buffer(v6, qword_1EB1EC130);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

unint64_t sub_1A494D258()
{
  result = qword_1EB1458C8;
  if (!qword_1EB1458C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1458C8);
  }

  return result;
}

void sub_1A494D2AC()
{
  if (!qword_1EB1458D8)
  {
    sub_1A494EC84(255, &qword_1EB1427A8, sub_1A420E4B0, &type metadata for DestinationAppEnum, MEMORY[0x1E695A1A0]);
    v0 = sub_1A524ED44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1458D8);
    }
  }
}

uint64_t sub_1A494D344(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_1A524CC54();
  v2[5] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A494D3DC, v4, v3);
}

uint64_t sub_1A494D3DC()
{
  *(v0 + 16) = *(v0 + 32);
  sub_1A523FF44();
  v1 = sub_1A420D290(*(v0 + 88));
  v3 = v2;
  *(v0 + 64) = v2;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  sub_1A494D258();
  *v4 = v0;
  v4[1] = sub_1A446D80C;
  v5 = *(v0 + 24);

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v5, 0, 0, v1, v3, 0, 1, &unk_1A5375BB0);
}

uint64_t sub_1A494D4F0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1A524CC54();
  v2[4] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A494D588, v4, v3);
}

uint64_t sub_1A494D588()
{
  sub_1A523FF44();
  v1 = *(v0 + 72);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1A446DAE4;

  return sub_1A494E178(v1);
}

uint64_t sub_1A494D63C(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A494E178(a1);
}

uint64_t sub_1A494D6E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A523FF44();
  *a1 = v3;
  return result;
}

void (*sub_1A494D758(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB6E78;
}

uint64_t sub_1A494D7CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1E1670 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1EC130);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1A494D88C()
{
  sub_1A494EC84(0, &qword_1EB1458C0, sub_1A494D258, &type metadata for OpenDestinationIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A494EC84(0, &qword_1EB1458D0, sub_1A494D258, &type metadata for OpenDestinationIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A494D2AC();
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

uint64_t sub_1A494DA74(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3D60150;

  return sub_1A494D344(a1, v4);
}

uint64_t sub_1A494DB14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A494DB78();
  *a1 = result;
  return result;
}

uint64_t sub_1A494DB3C(uint64_t a1)
{
  v2 = sub_1A494D258();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A494DB78()
{
  v0 = sub_1A5240334();
  v27 = *(v0 - 8);
  v28 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v26 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DB7B48(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v25 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v24 = v22 - v5;
  sub_1A3DB7B48(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v23 = v22 - v7;
  v8 = sub_1A5240BA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v22[0] = sub_1A5240BB4();
  v14 = *(v22[0] - 8);
  MEMORY[0x1EEE9AC00](v22[0]);
  sub_1A494EC84(0, &qword_1EB1427A8, sub_1A420E4B0, &type metadata for DestinationAppEnum, MEMORY[0x1E695A1A0]);
  v22[1] = v15;
  sub_1A524C5B4();
  sub_1A5241244();
  v16 = *MEMORY[0x1E6968DF0];
  v17 = *(v9 + 104);
  v17(v11, v16, v8);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v17(v11, v16, v8);
  v18 = v23;
  sub_1A5240BC4();
  (*(v14 + 56))(v18, 0, 1, v22[0]);
  v29 = 30;
  v19 = sub_1A523FDB4();
  v20 = *(*(v19 - 8) + 56);
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  (*(v27 + 104))(v26, *MEMORY[0x1E695A500], v28);
  sub_1A420E65C();
  sub_1A524E414();
  sub_1A420E5AC();
  return sub_1A523FF84();
}

uint64_t sub_1A494E0DC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return sub_1A494D4F0(a1, v1);
}

uint64_t sub_1A494E178(char a1)
{
  *(v1 + 112) = a1;
  sub_1A3DB7B48(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  *(v1 + 16) = swift_task_alloc();
  v2 = sub_1A5240E64();
  *(v1 + 24) = v2;
  *(v1 + 32) = *(v2 - 8);
  *(v1 + 40) = swift_task_alloc();
  v3 = sub_1A5246F24();
  *(v1 + 48) = v3;
  *(v1 + 56) = *(v3 - 8);
  *(v1 + 64) = swift_task_alloc();
  sub_1A524CC54();
  *(v1 + 72) = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  *(v1 + 80) = v5;
  *(v1 + 88) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A494E310, v5, v4);
}

uint64_t sub_1A494E310()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = sub_1A3CB648C();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_1A5246F04();
  v6 = sub_1A524D264();
  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);
  v10 = *(v0 + 48);
  if (v7)
  {
    v11 = *(v0 + 112);
    v12 = swift_slowAlloc();
    swift_slowAlloc();
    *v12 = 136446210;
    sub_1A420D290(v11);
    sub_1A3C2EF94();
  }

  (*(v9 + 8))(v8, v10);
  v13 = *(v0 + 24);
  v14 = *(v0 + 32);
  v15 = *(v0 + 16);
  sub_1A5240E34();
  result = (*(v14 + 48))(v15, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v18 = *(v0 + 32);
    v17 = *(v0 + 40);
    v20 = *(v0 + 16);
    v19 = *(v0 + 24);

    (*(v18 + 32))(v17, v20, v19);
    v21 = swift_task_alloc();
    *(v0 + 96) = v21;
    *v21 = v0;
    v21[1] = sub_1A494E824;
    v22 = *(v0 + 40);

    return sub_1A489B910(v22);
  }

  return result;
}

uint64_t sub_1A494E824()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_1A494EA0C;
  }

  else
  {
    v5 = sub_1A494E960;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A494E960()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A494EA0C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

unint64_t sub_1A494EABC()
{
  result = qword_1EB1458E0;
  if (!qword_1EB1458E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1458E0);
  }

  return result;
}

unint64_t sub_1A494EB1C()
{
  result = qword_1EB1458E8;
  if (!qword_1EB1458E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1458E8);
  }

  return result;
}

unint64_t sub_1A494EB74()
{
  result = qword_1EB1458F0;
  if (!qword_1EB1458F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1458F0);
  }

  return result;
}

unint64_t sub_1A494EBF4()
{
  result = qword_1EB1458F8;
  if (!qword_1EB1458F8)
  {
    sub_1A494EC84(255, &qword_1EB145900, sub_1A494D258, &type metadata for OpenDestinationIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1458F8);
  }

  return result;
}

void sub_1A494EC84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t PhotosDynamicHeaderPreview.init(titleModel:banner:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1A3F1B4DC(a1, v9, &qword_1EB128D10, &qword_1EB128D20);
  sub_1A3F1B4DC(a2, v8, &qword_1EB13FB90, &qword_1EB13FCC0);
  type metadata accessor for PhotosDynamicHeaderPreviewModel();
  v6 = swift_allocObject();
  sub_1A494FF10(v9, v8);
  sub_1A3EA8D18(a2, &qword_1EB13FB90, &qword_1EB13FCC0);
  result = sub_1A3EA8D18(a1, &qword_1EB128D10, &qword_1EB128D20);
  *a3 = v6;
  a3[1] = 0;
  return result;
}

uint64_t type metadata accessor for PhotosDynamicHeaderPreviewModel()
{
  result = qword_1EB1E1AB0;
  if (!qword_1EB1E1AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A494F054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a3;
  sub_1A4950368();
  v92 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5 - 8);
  v93 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v97 = &v80 - v8;
  sub_1A49501C0(0, &qword_1EB129018, MEMORY[0x1E69C27F8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v88 = &v80 - v10;
  sub_1A49502E8();
  v91 = v11;
  v99 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v100 = &v80 - v14;
  v15 = type metadata accessor for PhotosDynamicHeaderLegibilityOverlay(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v89 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v80 - v18;
  v95 = &v80 - v18;
  sub_1A49502C0(0);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v96 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v80 - v24;
  v98 = &v80 - v24;
  sub_1A52441A4();
  v26 = sub_1A5248874();
  v27 = sub_1A524A064();
  v28 = &v25[*(v21 + 44)];
  *v28 = v26;
  v28[8] = v27;
  v29 = a1;
  *&v132 = a1;
  *(&v132 + 1) = a2;
  v87 = type metadata accessor for PhotosDynamicHeaderPreviewModel;
  sub_1A49501C0(0, &qword_1EB145940, type metadata accessor for PhotosDynamicHeaderPreviewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v30 = v101;
  swift_getKeyPath();
  *&v132 = v30;
  sub_1A49509B0();
  sub_1A52415D4();

  v31 = *(v30 + 16);

  *(&v133 + 1) = type metadata accessor for PhotosDynamicHeaderMockGeometryModel();
  *&v134 = &protocol witness table for PhotosDynamicHeaderMockGeometryModel;
  *&v132 = v31;
  PhotosDynamicHeaderLegibilityOverlay.init(geometryModel:)(&v132, v19);
  *&v132 = v29;
  *(&v132 + 1) = a2;
  sub_1A524B6A4();
  v32 = v101;
  swift_getKeyPath();
  *&v132 = v32;
  sub_1A52415D4();

  v33 = *(v32 + 32);

  *&v132 = v29;
  *(&v132 + 1) = a2;
  sub_1A524B6A4();
  v34 = v101;
  swift_getKeyPath();
  *&v132 = v34;
  sub_1A52415D4();

  v35 = sub_1A5243B84();
  (*(*(v35 - 8) + 56))(v88, 1, 1, v35);
  sub_1A5243A94();
  sub_1A52430B4();
  v101 = v29;
  v102 = a2;
  sub_1A524B6C4();
  v36 = v132;
  v37 = v133;
  swift_getKeyPath();
  v130 = v36;
  v131 = v37;
  v84 = MEMORY[0x1E6981948];
  sub_1A49501C0(0, &qword_1EB1459C8, v87, MEMORY[0x1E6981948]);
  sub_1A524B914();

  v87 = v129;
  v88 = v128;

  *&v80 = v29;
  v101 = v29;
  v102 = a2;
  *&v81 = a2;
  sub_1A524B6C4();
  v38 = v132;
  v39 = v133;
  swift_getKeyPath();
  v126 = v38;
  v127 = v39;
  sub_1A524B914();

  v85 = v125;
  v86 = v124;

  v101 = v29;
  v102 = a2;
  sub_1A524B6C4();
  v40 = v132;
  v41 = v133;
  swift_getKeyPath();
  v122 = v40;
  v123 = v41;
  sub_1A524B914();

  v43 = v119;
  v42 = v120;
  v44 = v121;

  swift_getKeyPath();
  v116 = v43;
  v117 = v42;
  v118 = v44;
  sub_1A49501C0(0, &qword_1EB13B798, type metadata accessor for PhotosDynamicHeaderMockGeometryModel, v84);
  sub_1A524B914();

  v83 = v114;
  v84 = v113;
  v82 = v115;

  v101 = v80;
  v102 = v81;
  sub_1A524B6C4();
  v45 = v132;
  v46 = v133;
  swift_getKeyPath();
  v111 = v45;
  v112 = v46;
  sub_1A524B914();

  v47 = v108;
  v48 = v109;
  v49 = v110;

  swift_getKeyPath();
  v105 = v47;
  v106 = v48;
  v107 = v49;
  sub_1A524B914();

  v50 = v101;
  v51 = v102;
  v80 = v104;
  v81 = v103;

  *&v132 = v50;
  *(&v132 + 1) = v51;
  v133 = v81;
  v134 = v80;
  v52 = v97;
  sub_1A5243044();
  v53 = sub_1A524BC64();
  v55 = v54;
  sub_1A524A224();
  v56 = sub_1A524A3C4();
  v58 = v57;
  LOBYTE(v46) = v59;
  v61 = v60;

  sub_1A4950A08(0, &qword_1EB145938, MEMORY[0x1E69C2370], sub_1A46026D8);
  v63 = v52 + *(v62 + 36);
  *v63 = v56;
  *(v63 + 8) = v58;
  *(v63 + 16) = v46 & 1;
  *(v63 + 24) = v61;
  *(v63 + 32) = v53;
  *(v63 + 40) = v55;
  v64 = sub_1A5248874();
  v65 = sub_1A524A064();
  v66 = v52 + *(v92 + 44);
  v67 = v52;
  *v66 = v64;
  *(v66 + 8) = v65;
  v68 = v96;
  sub_1A4951824(v98, v96, sub_1A49502C0);
  v69 = v89;
  sub_1A4951824(v95, v89, type metadata accessor for PhotosDynamicHeaderLegibilityOverlay);
  v92 = *(v99 + 16);
  v71 = v90;
  v70 = v91;
  (v92)(v90, v100, v91);
  v72 = v67;
  v73 = v93;
  sub_1A4951824(v72, v93, sub_1A4950368);
  v74 = v68;
  v75 = v94;
  sub_1A4951824(v74, v94, sub_1A49502C0);
  sub_1A4950224();
  v77 = v76;
  sub_1A4951824(v69, v75 + v76[12], type metadata accessor for PhotosDynamicHeaderLegibilityOverlay);
  *(v75 + v77[16]) = v33;
  (v92)(v75 + v77[20], v71, v70);
  sub_1A4951824(v73, v75 + v77[24], sub_1A4950368);
  sub_1A495188C(v97, sub_1A4950368);
  v78 = *(v99 + 8);
  v78(v100, v70);
  sub_1A495188C(v95, type metadata accessor for PhotosDynamicHeaderLegibilityOverlay);
  sub_1A495188C(v98, sub_1A49502C0);
  sub_1A495188C(v73, sub_1A4950368);
  v78(v71, v70);
  sub_1A495188C(v69, type metadata accessor for PhotosDynamicHeaderLegibilityOverlay);
  return sub_1A495188C(v96, sub_1A49502C0);
}

double sub_1A494FB14@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A49509B0();
  sub_1A52415D4();

  result = *(v3 + 32);
  *a2 = result;
  return result;
}

double sub_1A494FBB4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A49509B0();
  sub_1A52415D4();

  result = *(v3 + 40);
  *a2 = result;
  return result;
}

uint64_t sub_1A494FC54@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A49509B0();
  sub_1A52415D4();

  *a2 = *(v3 + 16);
}

void sub_1A494FD00(uint64_t *a1@<X8>)
{
  sub_1A524B414();
  sub_1A41822D8();
  v2 = sub_1A524B4F4();
  v3 = sub_1A524BC64();
  v5 = v4;
  sub_1A4951544(0);
  v7 = (a1 + *(v6 + 36));
  *&v27 = sub_1A524B454();
  v8 = sub_1A524B4F4();
  sub_1A3E42C60(0);
  v10 = v7 + *(v9 + 36);
  v11 = *(sub_1A5248A14() + 20);
  v12 = *MEMORY[0x1E697F468];
  v13 = sub_1A52494A4();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  __asm { FMOV            V0.2D, #10.0 }

  *v10 = _Q0;
  sub_1A3E42C88();
  *&v10[*(v19 + 36)] = 256;
  *v7 = v8;
  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A4951658(0, &qword_1EB1459A8, sub_1A3E42C60);
  v21 = (v7 + *(v20 + 36));
  *v21 = v27;
  v21[1] = v28;
  v21[2] = v29;
  sub_1A49515D0();
  v23 = (v7 + *(v22 + 36));
  *v23 = v3;
  v23[1] = v5;
  *a1 = v2;
  v24 = sub_1A5248874();
  LOBYTE(v3) = sub_1A524A064();
  sub_1A4951658(0, &qword_1EB1459B8, sub_1A4951544);
  v26 = a1 + *(v25 + 36);
  *v26 = v24;
  v26[8] = v3;
}

uint64_t sub_1A494FF10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1A49501C0(0, &qword_1EB1459D0, MEMORY[0x1E69C2748], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14[-v7 - 8];
  type metadata accessor for PhotosDynamicHeaderMockGeometryModel();
  *(v2 + 16) = PhotosDynamicHeaderMockGeometryModel.__allocating_init()();
  *(v2 + 32) = xmmword_1A53503F0;
  sub_1A5241604();
  sub_1A3F1B4DC(a1, v14, &qword_1EB128D10, &qword_1EB128D20);
  v9 = *MEMORY[0x1E69C2738];
  v10 = sub_1A52439B4();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v8, v9, v10);
  (*(v11 + 56))(v8, 0, 1, v10);
  sub_1A5243A94();
  swift_allocObject();
  *(v3 + 24) = sub_1A5243A54();
  sub_1A4950C10();
  sub_1A3EA8D18(a2, &qword_1EB13FB90, &qword_1EB13FCC0);
  sub_1A3EA8D18(a1, &qword_1EB128D10, &qword_1EB128D20);
  return v3;
}

void sub_1A4950128()
{
  if (!qword_1EB145908)
  {
    sub_1A49501C0(255, &qword_1EB145910, sub_1A4950224, MEMORY[0x1E6981F40]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145908);
    }
  }
}

void sub_1A49501C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A4950224()
{
  if (!qword_1EB145918)
  {
    sub_1A49502C0(255);
    type metadata accessor for PhotosDynamicHeaderLegibilityOverlay(255);
    sub_1A49502E8();
    sub_1A4950368();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB145918);
    }
  }
}

void sub_1A49502E8()
{
  if (!qword_1EB145928)
  {
    sub_1A5243A94();
    v0 = sub_1A52430C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145928);
    }
  }
}

void sub_1A4950368()
{
  if (!qword_1EB145930)
  {
    sub_1A4950A08(255, &qword_1EB145938, MEMORY[0x1E69C2370], sub_1A46026D8);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145930);
    }
  }
}

uint64_t sub_1A49503F8(uint64_t a1)
{
  if (*(v1 + 16) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A49509B0();
    sub_1A52415C4();
  }
}

uint64_t sub_1A49504FC(double a1)
{
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;

    return sub_1A4950C10();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A49509B0();
    sub_1A52415C4();
  }
}

uint64_t sub_1A495060C(double a1)
{
  if (*(v1 + 40) == a1)
  {
    *(v1 + 40) = a1;

    return sub_1A4950C10();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A49509B0();
    sub_1A52415C4();
  }
}

uint64_t sub_1A495071C(uint64_t a1)
{
  if (*(v1 + 24) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A49509B0();
    sub_1A52415C4();
  }
}

uint64_t sub_1A4950820()
{
  swift_getKeyPath();
  sub_1A49509B0();
  sub_1A52415D4();
}

uint64_t sub_1A4950894()
{
  swift_getKeyPath();
  sub_1A49509B0();
  sub_1A52415D4();
}

uint64_t sub_1A4950908@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A49509B0();
  sub_1A52415D4();

  *a2 = *(v3 + 24);
}

unint64_t sub_1A49509B0()
{
  result = qword_1EB1E1920[0];
  if (!qword_1EB1E1920[0])
  {
    type metadata accessor for PhotosDynamicHeaderPreviewModel();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1E1920);
  }

  return result;
}

void sub_1A4950A08(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A4950A7C()
{
  if (!qword_1EB145950)
  {
    sub_1A49501C0(255, &qword_1EB145910, sub_1A4950224, MEMORY[0x1E6981F40]);
    sub_1A4951428(&qword_1EB145958, &qword_1EB145910, sub_1A4950224);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145950);
    }
  }
}

double sub_1A4950B30()
{
  swift_getKeyPath();
  sub_1A49509B0();
  sub_1A52415D4();

  return *(v0 + 32);
}

double sub_1A4950BA0()
{
  swift_getKeyPath();
  sub_1A49509B0();
  sub_1A52415D4();

  return *(v0 + 40);
}

uint64_t sub_1A4950C10()
{
  swift_getKeyPath();
  sub_1A49509B0();
  sub_1A52415D4();

  v1 = *(v0 + 16);
  swift_getKeyPath();

  sub_1A52415D4();

  v3.n128_u64[0] = *(v0 + 32);
  (*(*v1 + 304))(v2, v3);

  swift_getKeyPath();
  sub_1A52415D4();

  swift_getKeyPath();

  sub_1A52415D4();

  sub_1A5243A64();

  swift_getKeyPath();
  sub_1A52415D4();

  swift_getKeyPath();

  sub_1A52415D4();

  sub_1A5243A74();
}

uint64_t sub_1A4950E14()
{

  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_E38DBB66FFC9A000078576E6CA29014031PhotosDynamicHeaderPreviewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_1A4950EC0@<D0>(uint64_t a1@<X8>)
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  sub_1A3F1B4DC(&v10, v6, &qword_1EB128D10, &qword_1EB128D20);
  sub_1A3F1B4DC(&v7, v5, &qword_1EB13FB90, &qword_1EB13FCC0);
  type metadata accessor for PhotosDynamicHeaderPreviewModel();
  v2 = swift_allocObject();
  sub_1A494FF10(v6, v5);
  sub_1A3EA8D18(&v7, &qword_1EB13FB90, &qword_1EB13FCC0);
  sub_1A3EA8D18(&v10, &qword_1EB128D10, &qword_1EB128D20);
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  *(&v8 + 1) = sub_1A5241E94();
  v9 = sub_1A49513E0(&qword_1EB145960, MEMORY[0x1E69C1C80]);
  __swift_allocate_boxed_opaque_existential_1(&v7);
  sub_1A5241E84();
  sub_1A3F1B4DC(&v10, v6, &qword_1EB128D10, &qword_1EB128D20);
  sub_1A3F1B4DC(&v7, v5, &qword_1EB13FB90, &qword_1EB13FCC0);
  v3 = swift_allocObject();
  sub_1A494FF10(v6, v5);
  sub_1A3EA8D18(&v10, &qword_1EB128D10, &qword_1EB128D20);
  sub_1A3EA8D18(&v7, &qword_1EB13FB90, &qword_1EB13FCC0);
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  result = 0.0;
  *(a1 + 24) = xmmword_1A5375D70;
  *(a1 + 40) = 0xEB0000000072656ELL;
  return result;
}

unint64_t sub_1A49510EC()
{
  result = qword_1EB145968;
  if (!qword_1EB145968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145968);
  }

  return result;
}

uint64_t sub_1A4951160(uint64_t a1)
{
  v2 = sub_1A49517D0();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A49511AC(uint64_t a1)
{
  v2 = sub_1A49517D0();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

uint64_t sub_1A4951210()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A49512D0()
{
  result = qword_1EB145970;
  if (!qword_1EB145970)
  {
    sub_1A4950A08(255, &qword_1EB145948, sub_1A4950A7C, MEMORY[0x1E6980270]);
    sub_1A49513E0(&qword_1EB145978, sub_1A4950A7C);
    sub_1A49513E0(&qword_1EB130608, MEMORY[0x1E6980270]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145970);
  }

  return result;
}

uint64_t sub_1A49513E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4951428(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A49501C0(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A495148C()
{
  if (!qword_1EB145990)
  {
    sub_1A495156C(255, &qword_1EB13EC58, sub_1A4005524);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB145990);
    }
  }
}

void sub_1A495156C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A49515D0()
{
  if (!qword_1EB1459A0)
  {
    sub_1A4951658(255, &qword_1EB1459A8, sub_1A3E42C60);
    sub_1A49516BC();
    v0 = sub_1A5248AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1459A0);
    }
  }
}

void sub_1A4951658(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A49516BC()
{
  result = qword_1EB1459B0;
  if (!qword_1EB1459B0)
  {
    sub_1A4951658(255, &qword_1EB1459A8, sub_1A3E42C60);
    sub_1A3E43048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1459B0);
  }

  return result;
}

unint64_t sub_1A49517D0()
{
  result = qword_1EB1459C0;
  if (!qword_1EB1459C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1459C0);
  }

  return result;
}

uint64_t sub_1A4951824(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A495188C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A49518EC()
{
  result = qword_1EB1459D8;
  if (!qword_1EB1459D8)
  {
    sub_1A4951658(255, &qword_1EB1459B8, sub_1A4951544);
    sub_1A4951990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1459D8);
  }

  return result;
}

unint64_t sub_1A4951990()
{
  result = qword_1EB1459E0;
  if (!qword_1EB1459E0)
  {
    sub_1A4951544(255);
    sub_1A49513E0(&qword_1EB1459E8, sub_1A49515D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1459E0);
  }

  return result;
}

uint64_t sub_1A4951B60()
{
  v1 = OBJC_IVAR___PXStoryExceptionThrowingSongsProducer_logContext;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A4951BF8(uint64_t a1)
{
  v3 = OBJC_IVAR___PXStoryExceptionThrowingSongsProducer_logContext;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1A4951CF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryExceptionThrowingSongsProducer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A4951D80()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v1;
}

uint64_t sub_1A4951DF4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  *a1 = v3;
  return result;
}

uint64_t sub_1A4951E74()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A52479F4();
}

uint64_t sub_1A4951EE8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A52479F4();
}

uint64_t sub_1A4951F58(uint64_t a1, uint64_t a2)
{
  sub_1A4370038(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A4951FBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A4952020(void *a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1A4952570(a1, a2);

  return v4;
}

void *sub_1A4952078(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if (v3 != a1)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result chooseMapViewDidTapCardForMapStyle_];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1A495213C()
{
  sub_1A4370038(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (&v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5240E64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4951F58(v0 + OBJC_IVAR____TtC12PhotosUICore28MapOptionsChooseMapViewModel_mapAttribution, v3);
  sub_1A437006C();
  v12 = v11;
  if ((*(*(v11 - 8) + 48))(v3, 1, v11) == 1)
  {
    sub_1A49529A8(v3, sub_1A4370038);
    (*(v8 + 56))(v6, 1, 1, v7);
    return sub_1A49529A8(v6, sub_1A3EE53E0);
  }

  sub_1A408A03C(v3 + *(v12 + 48), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1A49529A8(v6, sub_1A3EE53E0);
  }

  (*(v8 + 32))(v10, v6, v7);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = sub_1A5240D44();
    [v15 chooseMapViewDidTapAttributionWithURL_];
    swift_unknownObjectRelease();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1A4952404()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore28MapOptionsChooseMapViewModel__availableStyles;
  v2 = MEMORY[0x1E695C070];
  sub_1A4951FBC(0, &qword_1EB145A60, sub_1A4951D4C, MEMORY[0x1E695C070]);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = OBJC_IVAR____TtC12PhotosUICore28MapOptionsChooseMapViewModel__mapStyle;
  sub_1A4951FBC(0, &qword_1EB145A68, type metadata accessor for MapOptionsMapStyle, v2);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_1A49529A8(v0 + OBJC_IVAR____TtC12PhotosUICore28MapOptionsChooseMapViewModel_mapAttribution, sub_1A4370038);
  sub_1A3D35A10(v0 + OBJC_IVAR____TtC12PhotosUICore28MapOptionsChooseMapViewModel_delegate);

  return swift_deallocClassInstance();
}

uint64_t sub_1A4952570(void *a1, uint64_t a2)
{
  v37 = a2;
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = sub_1A5240E64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4951FBC(0, &qword_1EB145A60, sub_1A4951D4C, MEMORY[0x1E695C070]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - v16;
  v18 = OBJC_IVAR____TtC12PhotosUICore28MapOptionsChooseMapViewModel__availableStyles;
  v39 = &unk_1F172F3F8;
  sub_1A4951D4C(0);
  sub_1A52479A4();
  (*(v15 + 32))(v2 + v18, v17, v14);
  swift_unknownObjectWeakInit();
  if (a1)
  {
    v19 = [a1 string];
    if (v19)
    {
      v20 = v19;
      v21 = [a1 url];
      if (v21)
      {
        v22 = v21;
        sub_1A5240DE4();

        v23 = 0;
      }

      else
      {
        v23 = 1;
      }

      v24 = *(v11 + 56);
      v24(v6, v23, 1, v10);
      sub_1A408A03C(v6, v9);
      if ((*(v11 + 48))(v9, 1, v10) != 1)
      {
        v35 = v24;
        v28 = *(v11 + 32);
        v29 = v36;
        v28(v36, v9, v10);
        v30 = (v2 + OBJC_IVAR____TtC12PhotosUICore28MapOptionsChooseMapViewModel_mapAttribution);
        sub_1A437006C();
        v32 = v31;
        v33 = *(v31 + 48);
        *v30 = v20;
        v28(&v30[v33], v29, v10);
        v35(&v30[v33], 0, 1, v10);
        (*(*(v32 - 8) + 56))(v30, 0, 1, v32);
        goto LABEL_9;
      }

      sub_1A49529A8(v9, sub_1A3EE53E0);
    }
  }

  v25 = OBJC_IVAR____TtC12PhotosUICore28MapOptionsChooseMapViewModel_mapAttribution;
  sub_1A437006C();
  (*(*(v26 - 8) + 56))(v2 + v25, 1, 1, v26);
LABEL_9:
  swift_beginAccess();
  v38 = v37;
  type metadata accessor for MapOptionsMapStyle(0);
  sub_1A52479A4();
  swift_endAccess();
  return v2;
}

uint64_t sub_1A49529A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for MapOptionsChooseMapViewModel()
{
  result = qword_1EB1E1C90;
  if (!qword_1EB1E1C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4952A5C()
{
  sub_1A4951FBC(319, &qword_1EB145A60, sub_1A4951D4C, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_1A4951FBC(319, &qword_1EB145A68, type metadata accessor for MapOptionsMapStyle, MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      sub_1A4370038(319);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1A4952BC8()
{
  v0 = sub_1A5240BA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v6, qword_1EB1E1CA8);
  __swift_project_value_buffer(v6, qword_1EB1E1CA8);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

uint64_t (*static RenamePersonIntent.title.modify())()
{
  if (qword_1EB1E1CA0 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5240BB4();
  __swift_project_value_buffer(v0, qword_1EB1E1CA8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A4952EB8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1E1CA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1E1CA8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1A4952F78(uint64_t a1)
{
  if (qword_1EB1E1CA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1E1CA8);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t static RenamePersonIntent.parameterSummary.getter()
{
  sub_1A4954D1C(0, &qword_1EB145A70, sub_1A49532C0, &type metadata for RenamePersonIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A4954D1C(0, &qword_1EB145A80, sub_1A49532C0, &type metadata for RenamePersonIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A49532C0();
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A495335C(0, &qword_1EB145A88, &qword_1EB12FDB8, sub_1A3FC0108, &type metadata for PersonEntity);
  sub_1A52402F4();

  sub_1A5240304();
  swift_getKeyPath();
  sub_1A495335C(0, &qword_1EB145A90, &qword_1EB138CE0, sub_1A3DEB710, MEMORY[0x1E69E6158]);
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

unint64_t sub_1A49532C0()
{
  result = qword_1EB145A78;
  if (!qword_1EB145A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145A78);
  }

  return result;
}

void sub_1A495335C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    sub_1A4954D1C(255, a3, a4, a5, MEMORY[0x1E695A1A0]);
    v6 = sub_1A524ED44();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t RenamePersonIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v54 = a1;
  sub_1A45D6CA0(0, &qword_1EB12C828, MEMORY[0x1E695A7D8]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v50 = &v35 - v2;
  v53 = sub_1A5240334();
  v56 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v49 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45D6CA0(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v48 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v35 - v7;
  sub_1A45D6CA0(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v51 = &v35 - v9;
  v10 = sub_1A5240BA4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_1A5240BB4();
  v45 = v16;
  v55 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v35 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1E695A1A0];
  sub_1A4954D1C(0, &qword_1EB12FDB8, sub_1A3FC0108, &type metadata for PersonEntity, MEMORY[0x1E695A1A0]);
  v40 = v18;
  sub_1A524C5B4();
  sub_1A5241244();
  v19 = *MEMORY[0x1E6968DF0];
  v20 = *(v11 + 104);
  v36 = v10;
  v20(v13, v19, v10);
  v38 = v20;
  v37 = v11 + 104;
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v20(v13, v19, v10);
  v21 = v51;
  sub_1A5240BC4();
  v22 = *(v55 + 56);
  v55 += 56;
  v46 = v22;
  v22(v21, 0, 1, v16);
  v23 = sub_1A523FDB4();
  v39 = v23;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v43 = v25;
  v44 = v24 + 56;
  v25(v52, 1, 1, v23);
  v25(v48, 1, 1, v23);
  v41 = *MEMORY[0x1E695A500];
  v26 = *(v56 + 104);
  v56 += 104;
  v42 = v26;
  v27 = v49;
  v26(v49);
  sub_1A3FC19D8();
  v28 = v27;
  *v54 = sub_1A523FFB4();
  sub_1A4954D1C(0, &qword_1EB138CE0, sub_1A3DEB710, MEMORY[0x1E69E6158], v47);
  v48 = v29;
  sub_1A524C5B4();
  sub_1A5241244();
  v30 = v36;
  v31 = v38;
  v38(v13, v19, v36);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v31(v13, v19, v30);
  v32 = v51;
  sub_1A5240BC4();
  v46(v32, 0, 1, v45);
  v33 = sub_1A524C5A4();
  v57 = 0;
  v58 = 0;
  (*(*(v33 - 8) + 56))(v50, 1, 1, v33);
  v43(v52, 1, 1, v39);
  v42(v28, v41, v53);
  result = sub_1A5240004();
  v54[1] = result;
  return result;
}

uint64_t RenamePersonIntent.perform()(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = *v1;
  sub_1A524CC54();
  *(v2 + 56) = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  *(v2 + 64) = v4;
  *(v2 + 72) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A4953CA4, v4, v3);
}

uint64_t sub_1A4953CA4()
{
  v2 = v0[5];
  v1 = v0[6];
  v0[2] = v2;
  v0[3] = v1;
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  sub_1A49532C0();
  *v4 = v0;
  v4[1] = sub_1A47D2970;
  v5 = v0[4];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v5, 0, 0, 0, 0, 0, 1, &unk_1A53761E0);
}

uint64_t sub_1A4953DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  sub_1A524CC54();
  v3[15] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[16] = v5;
  v3[17] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A4953E4C, v5, v4);
}

uint64_t sub_1A4953E4C()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  sub_1A523FF44();
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  *(v0 + 144) = v4;
  sub_1A523FF44();
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 56) = *(v0 + 32);
  *(v0 + 80) = v2;
  *(v0 + 88) = v1;
  sub_1A49532C0();
  v5 = AppIntent.px_intentName.getter();
  v7 = v6;
  *(v0 + 152) = v6;
  v8 = swift_task_alloc();
  *(v0 + 160) = v8;
  *v8 = v0;
  v8[1] = sub_1A4953F78;

  return (sub_1A49547D8)(v3, v4, v0 + 40, v5, v7);
}

uint64_t sub_1A4953F78()
{
  v2 = *v1;
  *(v2 + 168) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_1A4954190;
  }

  else
  {
    v5 = sub_1A4954120;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A4954120()
{

  sub_1A523FDD4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4954190()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A49541F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3CA8098;

  return sub_1A4953DB0(a1, v5, v4);
}

uint64_t sub_1A49542F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1A3D60150;

  return sub_1A49547D8(a1, a2, a3, a4, a5);
}

double sub_1A49543D0@<D0>(uint64_t a1@<X8>)
{
  sub_1A523FF44();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1A4954414(id *a1)
{
  v1 = *a1;

  sub_1A523FF54();
}

void (*RenamePersonIntent.person.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3F5CD2C;
}

void (*RenamePersonIntent.name.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB6E78;
}

uint64_t sub_1A49545F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;
  *(v4 + 32) = a1;
  *(v4 + 56) = *v3;
  sub_1A524CC54();
  *(v4 + 72) = sub_1A524CC44();
  v6 = sub_1A524CBC4();
  *(v4 + 80) = v6;
  *(v4 + 88) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A4954698, v6, v5);
}

uint64_t sub_1A4954698()
{
  v2 = v0[7];
  v1 = v0[8];
  v0[2] = v2;
  v0[3] = v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1A47D341C;
  v5 = v0[4];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v5, 0, 0, 0, 0, 0, 1, &unk_1A5376328);
}

uint64_t sub_1A495479C(uint64_t a1)
{
  v2 = sub_1A49532C0();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A49547D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v7 = sub_1A5246F24();
  v5[6] = v7;
  v5[7] = *(v7 - 8);
  v8 = swift_task_alloc();
  v9 = *a3;
  v5[8] = v8;
  v5[9] = v9;
  sub_1A524CC54();
  v5[10] = sub_1A524CC44();
  v11 = sub_1A524CBC4();
  v5[11] = v11;
  v5[12] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1A49548D8, v11, v10);
}

void sub_1A49548D8()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  sub_1A3C4D548(0, &qword_1EB126180);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A52F9790;
  *(v5 + 32) = v2;
  v6 = v2;
  PXAppIntentsDebugDescription(for:)(v5);

  v7 = sub_1A3CB648C();
  (*(v4 + 16))(v1, v7, v3);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

unint64_t sub_1A4954BB4()
{
  result = qword_1EB145A98;
  if (!qword_1EB145A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145A98);
  }

  return result;
}

unint64_t sub_1A4954C0C()
{
  result = qword_1EB145AA0;
  if (!qword_1EB145AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145AA0);
  }

  return result;
}

unint64_t sub_1A4954C8C()
{
  result = qword_1EB145AA8;
  if (!qword_1EB145AA8)
  {
    sub_1A4954D1C(255, &qword_1EB145AB0, sub_1A49532C0, &type metadata for RenamePersonIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145AA8);
  }

  return result;
}

void sub_1A4954D1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1A4954D84(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3D60150;

  return sub_1A4953DB0(a1, v5, v4);
}

id sub_1A4954E30(void *a1, char a2)
{
  if (a2)
  {
    v3 = [a1 objectAtIndexedSubscript_];

    return v3;
  }

  else
  {

    return a1;
  }
}

uint64_t sub_1A4954E7C(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0x746F6850796E614DLL;
  }

  else
  {
    return 0x6F746F6850656E4FLL;
  }
}

uint64_t View.tapToRadar(workflow:completion:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a5;
  v29 = a6;
  v30 = a4;
  v27 = a2;
  v28 = a3;
  sub_1A3EE53E0(0);
  v26[1] = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v26 - v11;
  v13 = type metadata accessor for TTRWorkflowSheetPresentation(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *a1;
  v17 = a1[1];
  v18 = a1[2];
  v19 = a1[3];
  v20 = a1[4];
  *v15 = v16;
  v15[1] = v17;
  v15[2] = v18;
  v15[3] = v19;
  v15[4] = v20;
  v21 = sub_1A5240E64();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  sub_1A49579D4(v12, v9, sub_1A3EE53E0);

  sub_1A40C7F38(v18, v19);
  sub_1A524B694();
  sub_1A3C68A60(v12, sub_1A3EE53E0);
  v22 = (v15 + *(v13 + 24));
  v23 = v27;
  v24 = v28;
  *v22 = v27;
  v22[1] = v24;
  sub_1A3C66EE8(v23);
  MEMORY[0x1A5906490](v15, v30, v13, v31);
  return sub_1A3C68A60(v15, type metadata accessor for TTRWorkflowSheetPresentation);
}

uint64_t sub_1A495510C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v36 = a2;
  v3 = type metadata accessor for TTRWorkflowSheetPresentation(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = v5;
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4957854();
  v8 = *(v7 - 8);
  v34 = v7;
  v35 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 8);
  v11 = *(v2 + 32);
  *&v45 = *v2;
  *(&v45 + 1) = v10;
  v46 = *(v2 + 16);
  v47 = v11;
  sub_1A3C4D38C(0, &qword_1EB1214F0, sub_1A49572A4, MEMORY[0x1E6981948]);
  v31 = v12;
  MEMORY[0x1A5906C60](&v42);
  v45 = v42;
  *&v46 = v43;
  v32 = type metadata accessor for TTRWorkflowSheetPresentation;
  sub_1A49579D4(v2, v6, type metadata accessor for TTRWorkflowSheetPresentation);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  v29 = type metadata accessor for TTRWorkflowSheetPresentation;
  sub_1A4957A3C(v6, v14 + v13, type metadata accessor for TTRWorkflowSheetPresentation);
  sub_1A4957928();
  v16 = v15;
  sub_1A49572A4();
  v18 = v17;
  v19 = sub_1A495798C(&qword_1EB122258, sub_1A4957928);
  v20 = sub_1A4957444();
  sub_1A524B144();

  sub_1A3DAECB8(v45, *(&v45 + 1));
  v21 = *(v2 + 8);
  v22 = *(v2 + 32);
  *&v42 = *v2;
  *(&v42 + 1) = v21;
  v43 = *(v2 + 16);
  v44 = v22;
  sub_1A524B924();
  v42 = v45;
  v43 = v46;
  v44 = v47;
  sub_1A49579D4(v2, v6, v32);
  v23 = swift_allocObject();
  sub_1A4957A3C(v6, v23 + v13, v29);
  sub_1A4957D6C();
  v38 = v16;
  v39 = v18;
  v40 = v19;
  v41 = v20;
  swift_getOpaqueTypeConformance2();
  sub_1A4957EB4();
  sub_1A4957F08();
  v24 = v37;
  v25 = v34;
  sub_1A524B004();

  v26 = v43;

  sub_1A3DAECB8(v26, *(&v26 + 1));
  return (*(v35 + 8))(v24, v25);
}

void sub_1A4955548(uint64_t a1, uint64_t a2)
{
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  if (*(a1 + 8))
  {
    v10 = 1;
  }

  else
  {
    v10 = *(a2 + 8) == 0;
  }

  if (!v10)
  {
    v11 = [objc_opt_self() captureScreenshot];
    if (v11)
    {
      v12 = v11;
      sub_1A5240DE4();

      v13 = sub_1A5240E64();
      (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
    }

    else
    {
      v14 = sub_1A5240E64();
      (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    }

    type metadata accessor for TTRWorkflowSheetPresentation(0);
    sub_1A49579D4(v9, v6, sub_1A3EE53E0);
    sub_1A3C4D38C(0, &qword_1EB121CA0, sub_1A3EE53E0, MEMORY[0x1E6981790]);
    sub_1A524B6B4();
    sub_1A3C68A60(v9, sub_1A3EE53E0);
  }
}

void sub_1A4955730(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRWorkflowSheetPresentation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = *a1;
  sub_1A49579D4(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTRWorkflowSheetPresentation);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1A4957A3C(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for TTRWorkflowSheetPresentation);
  v10[1] = v7;
  v11 = *(a1 + 1);
  sub_1A49D6330();
}

void sub_1A49558FC(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 208))();

  swift_beginAccess();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  sub_1A40C7F38(v3, v4);
}

double sub_1A4955990@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 128))(&v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1A49559F4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a2;
  v7[0] = *a1;
  v7[1] = v2;
  v7[2] = v3;
  v5 = *(*v4 + 136);
  sub_1A40C7F38(v7[0], v2);
  return v5(v7);
}

uint64_t sub_1A4955A68(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  swift_beginAccess();
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  sub_1A40C7F38(v5, v6);
  v8 = sub_1A4956E28(v5, v6, v7, v2, v3);
  sub_1A3DAECB8(v5, v6);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    v14 = v1;
    v15 = v2;
    v16 = v3;
    v17 = v4;
    (*(*v1 + 216))(v10);
    sub_1A3DAECB8(v2, v3);
  }

  else
  {
    v12 = v1[2];
    v13 = v1[3];
    v1[2] = v2;
    v1[3] = v3;
    v1[4] = v4;
    return sub_1A3DAECB8(v12, v13);
  }
}

uint64_t sub_1A4955BC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = a1[2];
  v9 = a1[3];
  a1[2] = a2;
  a1[3] = a3;
  a1[4] = a4;
  sub_1A40C7F38(a2, a3);
  return sub_1A3DAECB8(v8, v9);
}

void (*sub_1A4955C54(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 208))();

  v4[5] = OBJC_IVAR____TtCV12PhotosUICore27TTRWorkflowSheetHostingView9ViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A495798C(&qword_1EB145AB8, type metadata accessor for TTRWorkflowSheetHostingView.ViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A3E65F84();
  return sub_1A4955D90;
}

void (*sub_1A4955D9C(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A4955E2C;
}

void sub_1A4955E2C(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1A4955EA8()
{
  swift_getKeyPath();
  (*(*v0 + 208))();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1A4955F30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4955F7C(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 184);
  v4 = *a1;
  return v3(v2);
}

void sub_1A4955FD4(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a1)
    {
      sub_1A3D63AC0();
      v5 = v4;
      v6 = sub_1A524DBF4();

      if ((v6 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      swift_unknownObjectWeakAssign();

      return;
    }
  }

  else if (!a1)
  {
    goto LABEL_6;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  v8 = MEMORY[0x1EEE9AC00](KeyPath);
  (*(*v1 + 216))(v8);
}

void (*sub_1A495611C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 208))();

  v4[5] = OBJC_IVAR____TtCV12PhotosUICore27TTRWorkflowSheetHostingView9ViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A495798C(&qword_1EB145AB8, type metadata accessor for TTRWorkflowSheetHostingView.ViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4955D9C(v4);
  return sub_1A4956258;
}

uint64_t sub_1A4956264(uint64_t *a1, void *a2)
{
  v4 = swift_allocObject();
  sub_1A49562B4(a1, a2);
  return v4;
}

void *sub_1A49562B4(uint64_t *a1, void *a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = 0;
  swift_unknownObjectWeakInit();
  sub_1A5241604();
  swift_beginAccess();
  v8 = v2[2];
  v9 = v3[3];
  v10 = v3[4];
  sub_1A40C7F38(v8, v9);
  v11 = sub_1A4956E28(v8, v9, v10, v5, v6);
  sub_1A3DAECB8(v8, v9);
  if (v11)
  {
    KeyPath = swift_getKeyPath();
    v13 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v3 + 216))(v13);
    sub_1A3DAECB8(v5, v6);
  }

  else
  {
    v14 = v3[2];
    v15 = v3[3];
    v3[2] = v5;
    v3[3] = v6;
    v3[4] = v7;
    sub_1A3DAECB8(v14, v15);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a2)
    {
      v19 = 0;
      goto LABEL_10;
    }

LABEL_12:
    v21 = swift_getKeyPath();
    v22 = MEMORY[0x1EEE9AC00](v21);
    (*(*v3 + 216))(v22);

    return v3;
  }

  v17 = Strong;
  if (!a2)
  {

    goto LABEL_12;
  }

  sub_1A3D63AC0();
  v18 = v17;
  v19 = a2;
  v20 = sub_1A524DBF4();

  if ((v20 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  swift_unknownObjectWeakAssign();

  return v3;
}

uint64_t sub_1A49566A0()
{
  sub_1A3DAECB8(*(v0 + 16), *(v0 + 24));
  MEMORY[0x1A590F020](v0 + 40);
  v1 = OBJC_IVAR____TtCV12PhotosUICore27TTRWorkflowSheetHostingView9ViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A4956750@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = type metadata accessor for TTRWorkflowSheetHostingView(0);
  v3 = v2 - 8;
  v43 = *(v2 - 8);
  v42 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE53E0(0);
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  sub_1A3C4D38C(0, &qword_1EB145AC0, type metadata accessor for TTRWorkflowSheetHostingView.ViewModel, MEMORY[0x1E6981AA0]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - v13;
  sub_1A49570AC();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1A524B414();
  sub_1A524BC74();
  sub_1A5248AD4();
  v37 = v1;
  sub_1A524BAB4();
  swift_getKeyPath();
  sub_1A524BAD4();

  (*(v12 + 8))(v14, v11);
  v19 = *(&v47 + 1);
  v20 = v49;
  v21 = (v1 + *(v3 + 28));
  v22 = *v21;
  v23 = v21[1];
  v24 = &v18[*(v16 + 36)];
  *v24 = v47;
  *(v24 + 1) = v19;
  *(v24 + 1) = v48;
  *(v24 + 4) = v20;
  v25 = type metadata accessor for TTRWorkflowSheetPresentation(0);
  v26 = sub_1A5240E64();
  (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
  sub_1A49579D4(v9, v39, sub_1A3EE53E0);
  sub_1A524B694();
  sub_1A3C68A60(v9, sub_1A3EE53E0);
  v27 = &v24[*(v25 + 24)];
  *v27 = v22;
  v27[1] = v23;
  v28 = v53;
  *(v18 + 40) = v52;
  v29 = v50;
  *(v18 + 24) = v51;
  *(v18 + 8) = v29;
  *(v18 + 104) = v56;
  v30 = v54;
  *(v18 + 88) = v55;
  *(v18 + 72) = v30;
  *v18 = v38;
  *(v18 + 56) = v28;
  sub_1A3C66EE8(v22);
  v31 = v37;
  v32 = sub_1A524BAA4();
  (*(*v47 + 128))(&v47, v32);

  v45 = v47;
  v46 = v48;
  v33 = v41;
  sub_1A49579D4(v31, v41, type metadata accessor for TTRWorkflowSheetHostingView);
  v34 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v35 = swift_allocObject();
  sub_1A4957A3C(v33, v35 + v34, type metadata accessor for TTRWorkflowSheetHostingView);
  sub_1A49572A4();
  sub_1A49572F4();
  sub_1A4957444();
  sub_1A524B144();

  sub_1A3DAECB8(v45, *(&v45 + 1));
  return sub_1A3C68A60(v18, sub_1A49570AC);
}

id sub_1A4956CE4()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *v0;
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
    v1 = 0;
  }

  v3 = v1;
  return v2;
}

uint64_t sub_1A4956D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4958114();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A4956D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4958114();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A4956E00()
{
  sub_1A4958114();
  sub_1A5249ED4();
  __break(1u);
}

uint64_t sub_1A4956E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    sub_1A40C7F38(a1, 0);
    if (!a5)
    {
      sub_1A40C7F38(a4, 0);
      sub_1A3DAECB8(a1, 0);
      v10 = 0;
      return v10 & 1;
    }

    sub_1A40C7F38(a4, a5);
    goto LABEL_7;
  }

  if (!a5)
  {
    sub_1A40C7F38(a1, a2);
    sub_1A40C7F38(a4, 0);
    sub_1A40C7F38(a1, a2);

LABEL_7:
    sub_1A3DAECB8(a1, a2);
    sub_1A3DAECB8(a4, a5);
    v10 = 1;
    return v10 & 1;
  }

  sub_1A40C7F38(a1, a2);
  sub_1A40C7F38(a4, a5);
  sub_1A40C7F38(a1, a2);
  sub_1A49574BC();
  v9 = sub_1A524C594();

  sub_1A3DAECB8(a1, a2);
  v10 = v9 ^ 1;
  return v10 & 1;
}

void sub_1A49570AC()
{
  if (!qword_1EB145AC8)
  {
    sub_1A4957114();
    type metadata accessor for TTRWorkflowSheetPresentation(255);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145AC8);
    }
  }
}

void sub_1A4957114()
{
  if (!qword_1EB123DA8)
  {
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123DA8);
    }
  }
}

void sub_1A495716C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TTRWorkflowSheetHostingView(0);
  if (*(a1 + 8))
  {
    v4 = *(a2 + 8) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    sub_1A3C4D38C(0, &qword_1EB145AC0, type metadata accessor for TTRWorkflowSheetHostingView.ViewModel, MEMORY[0x1E6981AA0]);
    v5 = sub_1A524BAA4();
    v6 = (*(*v9 + 176))(v5);

    if (v6)
    {
      v7 = [v6 presentingViewController];
      if (v7)
      {
        v8 = v7;
        [v7 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }
}

void sub_1A49572A4()
{
  if (!qword_1EB125C80)
  {
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB125C80);
    }
  }
}

unint64_t sub_1A49572F4()
{
  result = qword_1EB145AD0;
  if (!qword_1EB145AD0)
  {
    sub_1A49570AC();
    sub_1A4957374();
    sub_1A49573EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145AD0);
  }

  return result;
}

unint64_t sub_1A4957374()
{
  result = qword_1EB145AD8;
  if (!qword_1EB145AD8)
  {
    sub_1A4957114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145AD8);
  }

  return result;
}

unint64_t sub_1A49573EC()
{
  result = qword_1EB164EE8[0];
  if (!qword_1EB164EE8[0])
  {
    type metadata accessor for TTRWorkflowSheetPresentation(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB164EE8);
  }

  return result;
}

unint64_t sub_1A4957444()
{
  result = qword_1EB125C78;
  if (!qword_1EB125C78)
  {
    sub_1A49572A4();
    sub_1A49574BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125C78);
  }

  return result;
}

unint64_t sub_1A49574BC()
{
  result = qword_1EB125C90;
  if (!qword_1EB125C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125C90);
  }

  return result;
}

void sub_1A4957554()
{
  sub_1A3C4D38C(319, &qword_1EB145AC0, type metadata accessor for TTRWorkflowSheetHostingView.ViewModel, MEMORY[0x1E6981AA0]);
  if (v0 <= 0x3F)
  {
    sub_1A3C4D38C(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A4957640()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1A495770C()
{
  sub_1A3C4D38C(319, &qword_1EB1214F0, sub_1A49572A4, MEMORY[0x1E6981948]);
  if (v0 <= 0x3F)
  {
    sub_1A3C4D38C(319, &qword_1EB121CA0, sub_1A3EE53E0, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1A3C4D38C(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A4957854()
{
  if (!qword_1EB121DA8)
  {
    sub_1A4957928();
    sub_1A49572A4();
    sub_1A495798C(&qword_1EB122258, sub_1A4957928);
    sub_1A4957444();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121DA8);
    }
  }
}

void sub_1A4957928()
{
  if (!qword_1EB122250)
  {
    type metadata accessor for TTRWorkflowSheetPresentation(255);
    sub_1A49573EC();
    v0 = sub_1A52499C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122250);
    }
  }
}

uint64_t sub_1A495798C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A49579D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4957A3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A4957AA4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TTRWorkflowSheetPresentation(0);

  sub_1A4955548(a1, a2);
}

uint64_t objectdestroy_28Tm_0()
{
  v1 = type metadata accessor for TTRWorkflowSheetPresentation(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 24))
  {
  }

  v3 = v2 + *(v1 + 20);
  v4 = sub_1A5240E64();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  sub_1A3C4D38C(0, &qword_1EB121CA0, sub_1A3EE53E0, MEMORY[0x1E6981790]);

  if (*(v2 + *(v1 + 24)))
  {
  }

  return swift_deallocObject();
}

void sub_1A4957CEC(uint64_t *a1)
{
  v3 = *(type metadata accessor for TTRWorkflowSheetPresentation(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1A4955730(a1, v4);
}

void sub_1A4957D6C()
{
  if (!qword_1EB123E68)
  {
    sub_1A4957DCC();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123E68);
    }
  }
}

void sub_1A4957DCC()
{
  if (!qword_1EB121E10)
  {
    sub_1A4957E60();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121E10);
    }
  }
}

unint64_t sub_1A4957E60()
{
  result = qword_1EB15E390[0];
  if (!qword_1EB15E390[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15E390);
  }

  return result;
}

unint64_t sub_1A4957EB4()
{
  result = qword_1EB125C88;
  if (!qword_1EB125C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125C88);
  }

  return result;
}

unint64_t sub_1A4957F08()
{
  result = qword_1EB123E70;
  if (!qword_1EB123E70)
  {
    sub_1A4957D6C();
    sub_1A4957E60();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123E70);
  }

  return result;
}

uint64_t sub_1A4957FC8(uint64_t a1)
{
  v3 = type metadata accessor for TTRWorkflowSheetPresentation(0);
  v4 = v1 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));
  v5 = *(v4 + *(v3 + 24));
  if (v5)
  {
    v5(a1);
  }

  v6 = *(v4 + 16);
  v7 = *(v4 + 24);

  sub_1A40C7F38(v6, v7);
  sub_1A3C4D38C(0, &qword_1EB1214F0, sub_1A49572A4, MEMORY[0x1E6981948]);
  sub_1A524B904();

  return sub_1A3DAECB8(v6, v7);
}

unint64_t sub_1A4958114()
{
  result = qword_1EB1E2020[0];
  if (!qword_1EB1E2020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1E2020);
  }

  return result;
}

uint64_t sub_1A4958198@<X0>(uint64_t a1@<X8>)
{
  sub_1A49583C4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  *v7 = sub_1A524A024();
  sub_1A495E048();
  sub_1A49585F8(&v7[*(v8 + 44)]);
  sub_1A495E0E4(v7, v4, sub_1A49583C4);
  *a1 = 0;
  *(a1 + 8) = 1;
  sub_1A495835C();
  sub_1A495E0E4(v4, a1 + *(v9 + 48), sub_1A49583C4);
  sub_1A495CCF4(v7, sub_1A49583C4);
  return sub_1A495CCF4(v4, sub_1A49583C4);
}

void sub_1A49582C4()
{
  if (!qword_1EB145AE0)
  {
    sub_1A4958458(255, &qword_1EB145AE8, sub_1A495835C, MEMORY[0x1E6981F40]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145AE0);
    }
  }
}

void sub_1A495835C()
{
  if (!qword_1EB145AF0)
  {
    sub_1A49583C4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB145AF0);
    }
  }
}

void sub_1A49583C4()
{
  if (!qword_1EB145AF8)
  {
    sub_1A4958458(255, &qword_1EB145B00, sub_1A49584BC, MEMORY[0x1E6981F40]);
    sub_1A4958570();
    v0 = sub_1A52481C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB145AF8);
    }
  }
}

void sub_1A4958458(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A49584BC()
{
  if (!qword_1EB145B08)
  {
    type metadata accessor for LabelPill();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB145B08);
    }
  }
}

uint64_t type metadata accessor for LabelPill()
{
  result = qword_1EB1E20C0;
  if (!qword_1EB1E20C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A4958570()
{
  result = qword_1EB145B10;
  if (!qword_1EB145B10)
  {
    sub_1A4958458(255, &qword_1EB145B00, sub_1A49584BC, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145B10);
  }

  return result;
}

uint64_t sub_1A49585F8@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = type metadata accessor for LabelPill();
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v27 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  sub_1A4958904(&v32);
  *v18 = v32;
  v18[1] = 2;
  v19 = *(v2 + 32);
  *&v18[v19] = swift_getKeyPath();
  sub_1A4958458(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  sub_1A4958904(&v31);
  *v15 = v31;
  v15[1] = 1;
  v20 = *(v2 + 32);
  *&v15[v20] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_1A4958904(&v30);
  *v12 = v30;
  v21 = *(v2 + 32);
  *(v12 + v21) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_1A495E0E4(v18, v9, type metadata accessor for LabelPill);
  sub_1A495E0E4(v15, v6, type metadata accessor for LabelPill);
  v22 = v28;
  sub_1A495E0E4(v12, v28, type metadata accessor for LabelPill);
  v23 = v29;
  sub_1A495E0E4(v9, v29, type metadata accessor for LabelPill);
  sub_1A49584BC();
  v25 = v24;
  sub_1A495E0E4(v6, v23 + *(v24 + 48), type metadata accessor for LabelPill);
  sub_1A495E0E4(v22, v23 + *(v25 + 64), type metadata accessor for LabelPill);
  sub_1A495CCF4(v12, type metadata accessor for LabelPill);
  sub_1A495CCF4(v15, type metadata accessor for LabelPill);
  sub_1A495CCF4(v18, type metadata accessor for LabelPill);
  sub_1A495CCF4(v22, type metadata accessor for LabelPill);
  sub_1A495CCF4(v6, type metadata accessor for LabelPill);
  return sub_1A495CCF4(v9, type metadata accessor for LabelPill);
}

uint64_t sub_1A4958904@<X0>(char *a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  result = sub_1A40B1BE4(*v1, 3);
  if (result)
  {
    goto LABEL_2;
  }

  if (v10)
  {
    if (v9)
    {
LABEL_2:
      v12 = 2;
      goto LABEL_15;
    }
  }

  else
  {

    sub_1A524D254();
    v13 = sub_1A524A014();
    v12 = 2;
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v9, 0);
    result = (*(v4 + 8))(v6, v3);
    if (v18)
    {
      goto LABEL_15;
    }
  }

  if (v8)
  {
    v22 = v7;
  }

  else
  {

    sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v7, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v7) = v22;
  }

  v21 = v7;
  v20 = 0;
  sub_1A40A51C0();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v18 == v17[1] && v19 == v17[2])
  {

    v15 = 0;
  }

  else
  {
    v16 = sub_1A524EAB4();

    v15 = v16 ^ 1;
  }

  v12 = v15 & 1;
LABEL_15:
  *a1 = v12;
  return result;
}

uint64_t sub_1A4958BC0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = swift_getKeyPath();
  *(a2 + 16) = 0;
  result = swift_getKeyPath();
  *(a2 + 24) = result;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_1A4958C0C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A49582C4();
  return sub_1A4958198(a1 + *(v2 + 44));
}

uint64_t sub_1A4958C54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v162 = a1;
  sub_1A3EC2854();
  v161 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v160 = &v156 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v157 = &v156 - v6;
  v7 = sub_1A52486A4();
  v190 = *(v7 - 8);
  v191 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v189 = &v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v188 = &v156 - v10;
  sub_1A3EC1A14();
  v159 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v158 = &v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A5242D14();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v156 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v156 - v18;
  sub_1A495BC9C();
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v156 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A495BF70();
  v164 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v156 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A495C190(0, &qword_1EB145B68, sub_1A495BF70, MEMORY[0x1E697EBC8]);
  v163 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v156 - v28;
  sub_1A495C004();
  v165 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v168 = &v156 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A495C0B4(0);
  v167 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v173 = &v156 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A495C0DC(0);
  v169 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v177 = &v156 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A495C168(0);
  v176 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v178 = &v156 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A495C190(0, &qword_1EB145B90, sub_1A495C168, sub_1A495C204);
  v166 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v180 = &v156 - v39;
  sub_1A495C2C0();
  v179 = v40;
  MEMORY[0x1EEE9AC00](v40);
  v194 = &v156 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A495C350(0);
  v181 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v182 = &v156 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A495C378();
  v192 = v44;
  MEMORY[0x1EEE9AC00](v44);
  v193 = &v156 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1A4959CA4();
  *v23 = sub_1A5249314();
  v23[1] = v46;
  *(v23 + 16) = 0;
  sub_1A495C410(0, &qword_1EB145BB0, &qword_1EB145B40, sub_1A495BDB0);
  sub_1A4959EA4(v1, v23 + *(v47 + 44));
  v48 = sub_1A495A7C0();
  KeyPath = swift_getKeyPath();
  v50 = (v23 + *(v21 + 44));
  *v50 = KeyPath;
  v50[1] = v48;
  v51 = *(type metadata accessor for LabelPill() + 24);
  v183 = v2;
  v174 = v51;
  sub_1A3D61808(v19);
  v52 = *(v14 + 104);
  v171 = *MEMORY[0x1E69C2210];
  v172 = v14 + 104;
  v170 = v52;
  v52(v16);
  LOBYTE(v48) = sub_1A5242D04();
  v53 = *(v14 + 8);
  v186 = v16;
  v53(v16, v13);
  v184 = v14 + 8;
  v185 = v19;
  v187 = v13;
  v175 = v53;
  v53(v19, v13);
  if (v48)
  {
    v54 = sub_1A524B4A4();
  }

  else
  {
    sub_1A524B404();
    v54 = sub_1A524B474();
  }

  sub_1A495C6CC(v23, v26, sub_1A495BC9C);
  *&v26[*(v164 + 36)] = v54;
  v55 = *(v163 + 36);
  v56 = *MEMORY[0x1E6981DA0];
  v57 = sub_1A524BD64();
  (*(*(v57 - 8) + 104))(&v29[v55], v56, v57);
  sub_1A495C6CC(v26, v29, sub_1A495BF70);
  v58 = swift_getKeyPath();
  v59 = v168;
  sub_1A495C734(v29, v168, &qword_1EB145B68, sub_1A495BF70, MEMORY[0x1E697EBC8]);
  v60 = v59 + *(v165 + 36);
  *v60 = v58;
  *(v60 + 8) = 1;
  *(v60 + 16) = 0;
  LOBYTE(v55) = sub_1A524A0C4();
  v61 = v183;
  sub_1A495AB08();
  sub_1A5247BC4();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v70 = v59;
  v71 = v173;
  sub_1A495C6CC(v70, v173, sub_1A495C004);
  v72 = v71 + *(v167 + 36);
  *v72 = v55;
  *(v72 + 8) = v63;
  *(v72 + 16) = v65;
  *(v72 + 24) = v67;
  *(v72 + 32) = v69;
  *(v72 + 40) = 0;
  LOBYTE(v55) = sub_1A524A094();
  sub_1A495AE90();
  sub_1A5247BC4();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v81 = v71;
  v82 = v177;
  sub_1A495C6CC(v81, v177, sub_1A495C0B4);
  v83 = v82 + *(v169 + 36);
  *v83 = v55;
  *(v83 + 8) = v74;
  *(v83 + 16) = v76;
  *(v83 + 24) = v78;
  *(v83 + 32) = v80;
  *(v83 + 40) = 0;
  LOBYTE(v58) = sub_1A524A0B4();
  sub_1A5247BC4();
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v91 = v90;
  v92 = v82;
  v93 = v178;
  sub_1A495C6CC(v92, v178, sub_1A495C0DC);
  v94 = v93 + *(v176 + 36);
  *v94 = v58;
  *(v94 + 8) = v85;
  *(v94 + 16) = v87;
  *(v94 + 24) = v89;
  *(v94 + 32) = v91;
  *(v94 + 40) = 0;
  v95 = v180;
  v96 = &v180[*(v166 + 36)];
  sub_1A524BBE4();
  sub_1A495C204();
  v98 = v97;
  v99 = *(v97 + 52);
  v100 = *MEMORY[0x1E697F468];
  v101 = sub_1A52494A4();
  (*(*(v101 - 8) + 104))(&v96[v99], v100, v101);
  *&v96[*(v98 + 56)] = 256;
  sub_1A495C6CC(v93, v95, sub_1A495C168);
  v102 = sub_1A524A054();
  v103 = v192;
  if (*v61 >= 2u)
  {
    v104 = v185;
    sub_1A3D61808(v185);
    v106 = v186;
    v105 = v187;
    v170(v186, v171, v187);
    sub_1A5242D04();
    v107 = v175;
    v175(v106, v105);
    v107(v104, v105);
  }

  sub_1A5247BC4();
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v115 = v114;
  v116 = v194;
  sub_1A495C734(v95, v194, &qword_1EB145B90, sub_1A495C168, sub_1A495C204);
  v117 = v116 + *(v179 + 36);
  *v117 = v102;
  *(v117 + 8) = v109;
  *(v117 + 16) = v111;
  *(v117 + 24) = v113;
  *(v117 + 32) = v115;
  *(v117 + 40) = 0;
  v118 = sub_1A524A084();
  v120 = v190;
  v119 = v191;
  v121 = v188;
  v122 = v193;
  if (*v61 >= 2u)
  {
    v123 = v185;
    sub_1A3D61808(v185);
    v125 = v186;
    v124 = v187;
    v170(v186, v171, v187);
    sub_1A5242D04();
    LODWORD(v183) = v118;
    v126 = v121;
    v127 = v122;
    v128 = v103;
    v129 = v175;
    v175(v125, v124);
    v129(v123, v124);
    v103 = v128;
    v122 = v127;
    v121 = v126;
    LOBYTE(v118) = v183;
  }

  sub_1A5247BC4();
  v131 = v130;
  v133 = v132;
  v135 = v134;
  v137 = v136;
  v138 = v182;
  sub_1A495C6CC(v194, v182, sub_1A495C2C0);
  v139 = v138 + *(v181 + 36);
  *v139 = v118;
  *(v139 + 8) = v131;
  *(v139 + 16) = v133;
  *(v139 + 24) = v135;
  *(v139 + 32) = v137;
  *(v139 + 40) = 0;
  v140 = (v122 + *(v103 + 36));
  sub_1A4958458(0, &qword_1EB127890, MEMORY[0x1E697DBD0], MEMORY[0x1E6980A08]);
  v142 = *(v141 + 28);
  v143 = *MEMORY[0x1E697DBB8];
  v144 = sub_1A5247E04();
  (*(*(v144 - 8) + 104))(v140 + v142, v143, v144);
  *v140 = swift_getKeyPath();
  sub_1A495C6CC(v138, v122, sub_1A495C350);
  v145 = v120[13];
  v145(v121, *MEMORY[0x1E697E6F0], v119);
  v146 = v189;
  v145(v189, *MEMORY[0x1E697E6D0], v119);
  sub_1A495BC54(&qword_1EB1288D0, MEMORY[0x1E697E730]);
  result = sub_1A524C544();
  if (result)
  {
    v148 = v120[4];
    v149 = v157;
    v148(v157, v121, v119);
    v150 = v161;
    v148((v149 + *(v161 + 48)), v146, v119);
    v151 = v160;
    sub_1A495E0E4(v149, v160, sub_1A3EC2854);
    v152 = *(v150 + 48);
    v153 = v158;
    v148(v158, v151, v119);
    v154 = v120[1];
    v154(v151 + v152, v119);
    sub_1A495C6CC(v149, v151, sub_1A3EC2854);
    v148((v153 + *(v159 + 36)), (v151 + *(v150 + 48)), v119);
    v154(v151, v119);
    sub_1A495CAC4(&qword_1EB145BB8, sub_1A495C378, sub_1A495C7D0, sub_1A3DEAC1C);
    sub_1A495BC54(&qword_1EB126FC0, sub_1A3EC1A14);
    v155 = v193;
    sub_1A524AB84();
    sub_1A495CCF4(v153, sub_1A3EC1A14);
    return sub_1A495CCF4(v155, sub_1A495C378);
  }

  else
  {
    __break(1u);
  }

  return result;
}