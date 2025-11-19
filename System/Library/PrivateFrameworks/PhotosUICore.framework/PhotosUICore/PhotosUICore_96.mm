void sub_1A4890588(uint64_t a1, uint64_t a2, char a3)
{
  sub_1A48921B4(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15[-v6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong[OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor_monitoringEnabled];

    if (v9 == 1)
    {
      swift_beginAccess();
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = v10;
        if (a3)
        {
          sub_1A488F4A0();
        }

        else
        {
          v12 = sub_1A524CCB4();
          (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
          v13 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v14 = swift_allocObject();
          v14[2] = 0;
          v14[3] = 0;
          v14[4] = v13;
          v14[5] = a2;
          sub_1A3DCC930(0, 0, v7, &unk_1A536C358, v14);
        }
      }
    }
  }
}

id LemonadeFeatureAvailabilityMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LemonadeFeatureAvailabilityMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t LemonadeProcessingFeatureState.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

float sub_1A4890930()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor___progress) = result;
  return result;
}

void sub_1A4890948()
{
  v1 = *(v0 + 32);
  if (((1 << *(v0 + 16)) & 0x4E) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_1A488DC40(v1);
    }
  }
}

void sub_1A48909BC()
{
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  if (qword_1EB17AE18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_1EB17AE20;
  if (*(qword_1EB17AE20 + 16))
  {
    v5 = v3;
    v6 = sub_1A4891310(v1, v5);
    if (v7)
    {
      v8 = *(*(v4 + 56) + 8 * v6);
      swift_endAccess();

      v9 = *v2;
      *v2 = v8;

      return;
    }
  }

  swift_endAccess();
  v18[0] = v1;
  v10 = objc_allocWithZone(type metadata accessor for LemonadeFeatureAvailabilityMonitor());
  v11 = v3;
  v12 = sub_1A488D918(v18, v11);
  v13 = *v2;
  *v2 = v12;
  v14 = v12;

  swift_beginAccess();
  v15 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = qword_1EB17AE20;
  qword_1EB17AE20 = 0x8000000000000000;
  sub_1A4891730(v14, v1, v15, isUniquelyReferenced_nonNull_native);

  qword_1EB17AE20 = v17;
  swift_endAccess();
}

uint64_t sub_1A4890B3C()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0x616974696E696E55;
  }

  if (v1 == 2)
  {
    return 0x64656873696E6946;
  }

  if (v1 == 1)
  {
    return 0x69737365636F7250;
  }

  result = sub_1A524EB44();
  __break(1u);
  return result;
}

uint64_t LemonadeProcessingFeature.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

unint64_t sub_1A4890C54()
{
  v1 = *v0;
  v2 = 0x656C706F6550;
  v3 = 0x2064657461727543;
  if (v1 != 6)
  {
    v3 = 0x686372616553;
  }

  v4 = 0x7370697254;
  if (v1 != 4)
  {
    v4 = 0x73746E657645;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7370756F7247;
  if (v1 != 2)
  {
    v5 = 0x2065736F62726556;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1A4890D58()
{
  if (*(v0 + 8))
  {
    return 0xD00000000000001ELL;
  }

  else
  {
    return 0xD000000000000029;
  }
}

uint64_t sub_1A4890D94()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  sub_1A524DC04();
  return sub_1A524ECE4();
}

uint64_t sub_1A4890E38()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  sub_1A524DC04();
  return sub_1A524ECE4();
}

uint64_t sub_1A4890E94(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 1);
  v3 = *(a1 + 1);
  sub_1A3C52C70(0, &qword_1EB12B160);
  v4 = v3;
  v5 = v2;
  v6 = sub_1A524DBF4();

  return v6 & 1;
}

unint64_t sub_1A4890F24()
{
  result = qword_1EB144238;
  if (!qword_1EB144238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144238);
  }

  return result;
}

unint64_t sub_1A4890F7C()
{
  result = qword_1EB144240;
  if (!qword_1EB144240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144240);
  }

  return result;
}

unint64_t sub_1A4890FD4()
{
  result = qword_1EB144248;
  if (!qword_1EB144248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144248);
  }

  return result;
}

unint64_t sub_1A489102C()
{
  result = qword_1EB144250;
  if (!qword_1EB144250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144250);
  }

  return result;
}

unint64_t sub_1A4891084()
{
  result = qword_1EB144258;
  if (!qword_1EB144258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144258);
  }

  return result;
}

unint64_t sub_1A48910DC()
{
  result = qword_1EB144260;
  if (!qword_1EB144260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144260);
  }

  return result;
}

void sub_1A4891138()
{
  sub_1A48921B4(319, &qword_1EB127070, MEMORY[0x1E69E7F50], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1A5241614();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1A4891310(unsigned __int8 a1, uint64_t a2)
{
  sub_1A524EC94();
  MEMORY[0x1A590A010](a1);
  sub_1A524DC04();
  v4 = sub_1A524ECE4();

  return sub_1A4891390(a1, a2, v4);
}

unint64_t sub_1A4891390(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v8 = a1;
    v9 = ~v5;
    do
    {
      v10 = (*(v7 + 48) + 16 * v6);
      if (*v10 == v8)
      {
        v11 = *(v10 + 1);
        sub_1A3C52C70(0, &qword_1EB12B160);
        v12 = v11;
        v13 = sub_1A524DBF4();

        if (v13)
        {
          break;
        }
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_1A489148C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A4891B10();
  v36 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = *(v21 + 1);
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {
        v25 = v23;
        v26 = v24;
      }

      sub_1A524EC94();
      MEMORY[0x1A590A010](v22);
      sub_1A524DC04();
      result = sub_1A524ECE4();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v22;
      *(v16 + 8) = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_1A4891730(uint64_t a1, unsigned __int8 a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1A4891310(a2, a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_1A489148C(v15, a4 & 1);
      v10 = sub_1A4891310(a2, a3);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_18:
        sub_1A524EB84();
        __break(1u);
        return;
      }
    }

    else
    {
      v18 = v10;
      sub_1A48918AC();
      v10 = v18;
    }
  }

  v20 = *v5;
  if (v16)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v10);
    *(v21 + 8 * v10) = a1;

    return;
  }

  v20[(v10 >> 6) + 8] |= 1 << v10;
  v23 = v20[6] + 16 * v10;
  *v23 = a2;
  *(v23 + 8) = a3;
  *(v20[7] + 8 * v10) = a1;
  v24 = v20[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;

  v26 = a3;
}

id sub_1A48918AC()
{
  v1 = v0;
  sub_1A4891B10();
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
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 16 * v17;
        *v22 = v19;
        *(v22 + 8) = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
        v23 = v20;
        result = v21;
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

unint64_t sub_1A4891A14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A4891B10();
    v3 = sub_1A524E794();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v6 = *i;
      v7 = *(i - 1);
      v8 = v6;
      result = sub_1A4891310(v5, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 16 * result;
      *v11 = v5;
      *(v11 + 8) = v7;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1A4891B10()
{
  if (!qword_1EB126460)
  {
    type metadata accessor for LemonadeFeatureAvailabilityMonitor();
    sub_1A4891B7C();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126460);
    }
  }
}

unint64_t sub_1A4891B7C()
{
  result = qword_1EB179970[0];
  if (!qword_1EB179970[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB179970);
  }

  return result;
}

uint64_t sub_1A4891BD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4891C18()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A488E760(v4, v5, v6, v2, v3);
}

uint64_t sub_1A4891CB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A48921B4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A4891D38(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3CA8098;

  return sub_1A4890450(a1, v5, v6, v4);
}

uint64_t sub_1A4891DD8(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3D60150;

  return sub_1A4890318(a1, v5, v6, v4);
}

uint64_t sub_1A4891E78(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3CA8098;

  return sub_1A48901C8(a1, v6, v7, v5, v4);
}

uint64_t sub_1A4891F24()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A488FF24(v3, v4, v5, v2);
}

uint64_t sub_1A4891FB8(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3CA8098;

  return sub_1A488FB14(a1, v6, v7, v5, v4);
}

uint64_t sub_1A4892064()
{
  swift_getKeyPath();
  sub_1A4891BD0(&qword_1EB1295C8, type metadata accessor for LemonadeFeatureAvailabilityMonitor);
  sub_1A52415D4();

  swift_getKeyPath();
  sub_1A52415D4();
}

uint64_t (*sub_1A489213C())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1A48921A0;
}

void sub_1A48921B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4892218()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A488E760(v4, v5, v6, v2, v3);
}

uint64_t sub_1A48922B0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A48921B4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A4892330(uint64_t a1, uint64_t a2)
{
  sub_1A48921B4(0, &qword_1EB127070, MEMORY[0x1E69E7F50], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A48923C4()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor_observable);
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = v1;
    v5 = v3;
    sub_1A524D1B4();
  }

  return result;
}

unint64_t sub_1A4892490()
{
  result = qword_1EB179960;
  if (!qword_1EB179960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB179960);
  }

  return result;
}

uint64_t type metadata accessor for GenerativeStoryEventSuggestion()
{
  result = qword_1EB1DC360;
  if (!qword_1EB1DC360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A48925AC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for GenerativeStoryEventSuggestion();
  sub_1A5246714();
}

uint64_t sub_1A489262C(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1A524EAB4() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (sub_1A524EAB4() & 1) != 0)
    {
      v6 = a1[5];
      v7 = a2[5];
      if (v6)
      {
        if (!v7 || (a1[4] != a2[4] || v6 != v7) && (sub_1A524EAB4() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v7)
      {
        return 0;
      }

      if (sub_1A3C5A018(a1[6], a2[6]) & 1) != 0 && (sub_1A3C5A018(a1[7], a2[7]))
      {
        type metadata accessor for GenerativeStoryEventSuggestion();

          ;
        }
      }
    }
  }

  return 0;
}

void sub_1A489274C()
{
  sub_1A48927F8();
  if (v0 <= 0x3F)
  {
    sub_1A4892848();
    if (v1 <= 0x3F)
    {
      sub_1A5246734();
    }
  }
}

void sub_1A48927F8()
{
  if (!qword_1EB126FA0)
  {
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126FA0);
    }
  }
}

void sub_1A4892848()
{
  if (!qword_1EB120B48)
  {
    v0 = sub_1A524CFA4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120B48);
    }
  }
}

id static PXSharedCollectionsCollaborationViewManager.sharedInstance()()
{
  if (qword_1EB1DC370 != -1)
  {
    swift_once();
  }

  v0 = swift_dynamicCastUnknownClassUnconditional();

  return v0;
}

id PXSharedCollectionsCollaborationViewManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  *&v0[OBJC_IVAR___PXSharedCollectionsCollaborationViewManager_observedPhotoLibraries] = MEMORY[0x1E69E7CC0];
  v1 = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
  *&v0[OBJC_IVAR___PXSharedCollectionsCollaborationViewManager_collaborationViewsById] = v1;
  v3.receiver = v0;
  v3.super_class = PXSharedCollectionsCollaborationViewManager;
  return objc_msgSendSuper2(&v3, sel_init);
}

void __swiftcall PXSharedCollectionsCollaborationViewManager.collaborationView(for:)(SWCollaborationView_optional *__return_ptr retstr, PHAssetCollection *a2)
{
  if (![v2 cachedCollaborationViewFor_])
  {
    v4 = [v2 createCollaborationViewFor_];
    if (v4)
    {
      v5 = v4;
      [v2 cacheCollaborationView:v5 for:a2];
      [v2 startObservingChangesFor_];
    }
  }
}

id sub_1A4892CD8(void *a1)
{
  v2 = v1;
  v62[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1A5246E54();
  v61 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5246F24();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - v12;
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v17 = &v52 - v16;
  v18 = 0;
  if (![a1 px_isCloudKitSharedAlbum])
  {
    return v18;
  }

  v60 = v8;
  v62[0] = 0;
  v19 = SharedCollectionsCKShare(from:error:)(a1, v62);
  if (!v19)
  {
    v28 = v62[0];
    SharedCollectionsLogger.getter();
    v29 = a1;
    v30 = sub_1A5246F04();
    v31 = sub_1A524D244();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v59 = v28;
      v33 = v32;
      swift_slowAlloc();
      v61 = swift_slowAlloc();
      v62[0] = v61;
      *v33 = 136315394;
      v34 = v29;
      v35 = [v34 description];
      sub_1A524C674();
      v57 = v7;

      sub_1A3C2EF94();
    }

    (*(v60 + 8))(v10, v7);
    return 0;
  }

  v20 = v19;
  v21 = v62[0];
  v58 = SharedCollectionsMakeItemProvider(from:)(v20);
  if (!v58)
  {
    SharedCollectionsLogger.getter();
    v36 = a1;
    v37 = sub_1A5246F04();
    v38 = sub_1A524D244();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v62[0] = swift_slowAlloc();
      *v39 = 136315138;
      v40 = v36;
      v59 = v21;
      v57 = v7;
      v41 = v40;
      v42 = [v40 description];
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    (*(v60 + 8))(v13, v7);
    return 0;
  }

  v55 = v20;
  v56 = v2;
  SharedCollectionsLogger.getter();
  v22 = a1;
  v23 = sub_1A5246F04();
  v24 = sub_1A524D264();

  v25 = os_log_type_enabled(v23, v24);
  v59 = v21;
  v54 = v22;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v62[0] = v53;
    *v26 = 136315394;
    v27 = [v22 title];
    sub_1A524C674();
    v57 = v7;

    sub_1A3C2EF94();
  }

  (*(v60 + 8))(v17, v7);
  v43 = v56;
  v44 = v58;
  v45 = sub_1A497BB3C();
  v46 = *v45;
  sub_1A5246E24();
  sub_1A524D654();
  v47 = *v45;
  sub_1A5246E04();

  v18 = [objc_allocWithZone(MEMORY[0x1E697B6A8]) initWithItemProvider_];
  v48 = sub_1A524C634();
  v49 = PXLocalizedSharedCollectionsString(v48);

  if (!v49)
  {
    sub_1A524C674();
    v49 = sub_1A524C634();
  }

  [v18 setManageButtonTitle_];

  [v43 updateCollaborationView:v18 with:v54];
  sub_1A524D644();
  v50 = *v45;
  sub_1A5246E04();

  (v61)[1](v6, v4);
  return v18;
}

id sub_1A48935EC()
{
  result = [objc_allocWithZone(PXSharedCollectionsCollaborationViewManager) init];
  qword_1EB1DC378 = result;
  return result;
}

NSObject *sub_1A4893710(void *a1)
{
  v3 = sub_1A5246F24();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = &v42 - v12;
  result = [a1 uuid];
  if (result)
  {
    v15 = result;
    v44 = v1;
    v16 = [v1 collaborationViewsById];
    v17 = [v16 objectForKey_];

    v45 = v17;
    v46 = v15;
    if (v17)
    {
      SharedCollectionsLogger.getter();
      v18 = a1;
      v19 = sub_1A5246F04();
      v20 = sub_1A524D224();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v21 = 136315394;
        v22 = [v18 title];
        sub_1A524C674();
        v42 = v4;
        v43 = v6;

        sub_1A3C2EF94();
      }

      v23 = *(v4 + 8);
      v23(v13, v3);
    }

    else
    {
      SharedCollectionsLogger.getter();
      v24 = a1;
      v25 = sub_1A5246F04();
      v26 = sub_1A524D224();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v27 = 136315394;
        v28 = [v24 title];
        v43 = v6;
        v29 = v28;
        sub_1A524C674();
        v42 = v3;

        sub_1A3C2EF94();
      }

      v23 = *(v4 + 8);
      v23(v9, v3);
    }

    v30 = v44;
    SharedCollectionsLogger.getter();
    v31 = v30;
    v32 = sub_1A5246F04();
    v33 = sub_1A524D224();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = v6;
      v35 = swift_slowAlloc();
      *v35 = 134217984;
      v36 = [v31 collaborationViewsById];
      v37 = [v36 objectEnumerator];

      if (v37)
      {
        v38 = [v37 allObjects];

        v39 = v3;
        v40 = sub_1A524CA34();

        v41 = *(v40 + 16);
        v3 = v39;
      }

      else
      {
        v41 = 0;
      }

      *(v35 + 4) = v41;

      _os_log_impl(&dword_1A3C1C000, v32, v33, "There are %ld SWCollaborationView instances in the table", v35, 0xCu);
      MEMORY[0x1A590EEC0](v35, -1, -1);
      v31 = v46;
      v6 = v34;
    }

    else
    {

      v32 = v46;
    }

    v23(v6, v3);
    return v45;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A4893D64(uint64_t a1, id a2)
{
  result = [a2 uuid];
  if (result)
  {
    v5 = result;
    v6 = [v2 collaborationViewsById];
    [v6 setObject:a1 forKey:v5];

    sub_1A4893E30();
  }

  __break(1u);
  return result;
}

void sub_1A4893E30()
{
  if (qword_1EB1DC380 != -1)
  {
    swift_once();
  }

  sub_1A5246664();
}

void sub_1A4894040(void *a1)
{
  v2 = v1;
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 photoLibrary];
  if (v9)
  {
    v10 = v9;
    v26 = v5;
    v11 = [v2 observedPhotoLibraries];
    sub_1A3C52C70(0, &qword_1EB144298);
    v12 = sub_1A524CA34();

    v13 = [v10 photoLibraryIdentifier];
    v27 = v13;
    MEMORY[0x1EEE9AC00](v13);
    *(&v25 - 2) = &v27;
    v14 = sub_1A40C23C4(sub_1A4895090, (&v25 - 4), v12);

    if ((v14 & 1) == 0)
    {
      v15 = [v10 photoLibraryIdentifier];
      v16 = [v2 observedPhotoLibraries];
      v17 = sub_1A524CA34();

      v27 = v17;
      MEMORY[0x1A5907D70]();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();
      v18 = sub_1A524CA14();

      [v2 setObservedPhotoLibraries_];

      SharedCollectionsLogger.getter();
      v19 = v10;
      v20 = sub_1A5246F04();
      v21 = sub_1A524D224();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        v24 = [v19 &selRef_insetContentBorderWidth + 2];
        *(v22 + 4) = v24;
        *v23 = v24;
        _os_log_impl(&dword_1A3C1C000, v20, v21, "Starting to observe changes in photoLibrary %@ for changes to update collaboaration views", v22, 0xCu);
        sub_1A3CB65E4(v23);
        MEMORY[0x1A590EEC0](v23, -1, -1);
        MEMORY[0x1A590EEC0](v22, -1, -1);
      }

      (*(v26 + 8))(v8, v4);
      [v19 registerChangeObserver_];
    }
  }
}

Swift::Void __swiftcall PXSharedCollectionsCollaborationViewManager.photoLibraryDidChange(_:)(PHChange a1)
{
  sub_1A3C56B04(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v11[2] = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v13 = v11 - v7;
  v12 = v1;
  v8 = [v1 collaborationViewsById];
  v9 = [v8 objectEnumerator];

  if (v9)
  {
    v10 = MEMORY[0x1E69E7CA0];
    v11[0] = v9;
    v11[1] = a1.super.isa;
    if ([v9 nextObject])
    {
      sub_1A524E0B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v16[0] = v14;
    v16[1] = v15;
    if (*(&v15 + 1))
    {
      sub_1A3C52C70(0, &qword_1EB144280);
      if (swift_dynamicCast())
      {
        if (qword_1EB1DC380 != -1)
        {
          swift_once();
        }

        sub_1A5246664();
      }
    }

    else
    {

      sub_1A3C2CC98(v16, &qword_1EB126130, v10 + 8, sub_1A3C37060);
    }
  }
}

uint64_t sub_1A4894B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = sub_1A5246F24();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  sub_1A524CC54();
  v7[12] = sub_1A524CC44();
  v10 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4894C00, v10, v9);
}

uint64_t sub_1A4894C00()
{
  v1 = v0[5];

  SharedCollectionsLogger.getter();
  v2 = v1;
  v3 = sub_1A5246F04();
  v4 = sub_1A524D224();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  if (v5)
  {
    v9 = v0[5];
    v10 = swift_slowAlloc();
    swift_slowAlloc();
    *v10 = 136315394;
    v11 = [v9 title];
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  (*(v7 + 8))(v6, v8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [Strong updateCollaborationView:v0[7] with:v0[8]];
  }

  v14 = v0[1];

  return v14();
}

id sub_1A4894F1C()
{
  v2.receiver = v0;
  v2.super_class = _s14AssociatedDataCMa_12();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A4894FD0()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3D60150;

  return sub_1A4894B08(v6, v7, v8, v2, v3, v5, v4);
}

void sub_1A48950F8(void *a1, void *a2)
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  SharedCollectionsLogger.getter();
  v8 = a2;
  v9 = sub_1A5246F04();
  v10 = sub_1A524D264();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v43 = a1;
    aBlock[0] = v12;
    *v11 = 136315394;
    v13 = [v8 title];
    sub_1A524C674();
    v42[1] = v4;

    sub_1A3C2EF94();
  }

  (*(v5 + 8))(v7, v4);
  v14 = [v8 localizedTitle];
  if (v14)
  {
    v15 = v14;
    sub_1A524C674();
  }

  v16 = sub_1A524C634();

  [a1 setHeaderTitle_];

  v17 = SharedCollectionsFetchParticipants(in:)(v8);
  v18 = [v17 count];

  v19 = sub_1A524C634();
  v20 = PXLocalizedString(v19);

  sub_1A524C674();
  sub_1A3C56B04(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E6530];
  *(v21 + 16) = xmmword_1A52F8E10;
  v23 = MEMORY[0x1E69E65A8];
  *(v21 + 56) = v22;
  *(v21 + 64) = v23;
  *(v21 + 32) = v18;
  sub_1A524C644();

  v24 = sub_1A524C634();

  [a1 setHeaderSubtitle_];

  v25 = [v8 photoLibrary];
  if (!v25)
  {
    __break(1u);
    goto LABEL_16;
  }

  v26 = v25;
  PHPhotoLibrary.fetcher.getter();

  v27 = sub_1A3C6E9EC();
  PhotoKitFetcher.Options.init(fetchLimit:libraryFilter:referencePersons:curationContext:assetFilterPredicate:)(1, v27, 0, 0, 0, aBlock);
  v28 = v49;
  v44 = 4;
  v45 = 0;
  v43 = v47;
  v29 = PhotoKitFetcher.fetch(_:for:options:)(&v44, v8, aBlock);
  if (!v29 || (v30 = v29, v31 = [v29 firstObject], v30, !v31))
  {

LABEL_12:

    goto LABEL_13;
  }

  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (!v32)
  {

    goto LABEL_12;
  }

  v33 = v32;
  v34 = [v8 photoLibrary];
  if (v34)
  {
    v35 = v34;
    v36 = [objc_opt_self() mediaProviderWithLibrary_];

    v37 = [objc_allocWithZone(off_1E7721750) init];
    [v37 setUseAsyncForFastOpportunisticResult_];
    [v37 setNetworkAccessAllowed_];
    [v37 setDeliveryMode_];
    v38 = swift_allocObject();
    v39 = v31;
    swift_unknownObjectWeakInit();
    v48 = sub_1A4895794;
    v49 = v38;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    *&v47 = sub_1A3DD5B38;
    *(&v47 + 1) = &block_descriptor_292;
    v40 = _Block_copy(aBlock);
    v41 = v37;

    [v36 requestImageForAsset:v33 targetSize:1 contentMode:v41 options:v40 resultHandler:{64.0, 64.0}];

    _Block_release(v40);
    v28 = v41;
LABEL_13:

    return;
  }

LABEL_16:
  __break(1u);
}

void sub_1A4895794(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      [Strong setHeaderImage_];
    }
  }
}

id sub_1A48957FC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PhotosDetailsFilenameWidgetView();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for PhotosDetailsFilenameWidgetViewModel();
  v7 = MEMORY[0x1E69E7D40];
  v8 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x108);
  v9 = a1;
  v10 = v8();
  v11 = (*((*v7 & *v2) + 0xA8))();
  sub_1A47284C8(v9, v10, v11);
  v13 = v12;
  v14 = *((*v7 & *v2) + 0xE0);
  v15 = v12;
  v14(v13);
  sub_1A4895994();
  v16 = v15;
  sub_1A499BA20(v16, v6);
  v17 = PXSecureLockscreenSwiftUIHostingController.__allocating_init(rootView:)(v6);

  return v17;
}

void sub_1A4895994()
{
  if (!qword_1EB1442A0)
  {
    type metadata accessor for PhotosDetailsFilenameWidgetView();
    sub_1A48959F8();
    v0 = type metadata accessor for PXSecureLockscreenSwiftUIHostingController();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1442A0);
    }
  }
}

unint64_t sub_1A48959F8()
{
  result = qword_1EB1442A8;
  if (!qword_1EB1442A8)
  {
    type metadata accessor for PhotosDetailsFilenameWidgetView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1442A8);
  }

  return result;
}

double sub_1A4895A50()
{
  v1 = sub_1A52486A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PhotosDetailsFilenameWidgetView();
  v6 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x108))();
  v7 = [v6 contentSizeCategory];

  sub_1A412028C(v7, v4);
  v8 = sub_1A4394B64(v4, v5, &off_1EE6EE130);
  (*(v2 + 8))(v4, v1);
  return v8;
}

id sub_1A4895D98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDetailsFilenameWidget();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *sub_1A4895DCC()
{
  if (qword_1EB18D6F0 != -1)
  {
    swift_once();
  }

  return &qword_1EB18D6F8;
}

id PXAppIntentsLog.getter()
{
  if (qword_1EB18D6F0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB18D6F8;

  return v1;
}

uint64_t PXAppIntentsLogger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB194500 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5246F24();
  v3 = __swift_project_value_buffer(v2, qword_1EB194508);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A4895F20(char a1)
{
  *(v1 + 32) = a1;
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A4895FC4;

  return sub_1A489C5D0();
}

uint64_t sub_1A4895FC4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 24) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1A48960F8, 0, 0);
  }
}

uint64_t sub_1A48960F8()
{
  v1 = [objc_opt_self() sharedLibraryStatusProviderWithPhotoLibrary_];
  if (![v1 hasSharedLibraryOrPreview])
  {
LABEL_4:
    v2 = *(v0 + 32);
    sub_1A3F5ADB4();
    swift_allocError();
    if (v2)
    {
      *v3 = xmmword_1A5317AF0;
    }

    else
    {
      *v3 = 0;
      *(v3 + 8) = 0;
    }

    v4 = *(v0 + 24);
    *(v3 + 16) = 3;
    swift_willThrow();

    v5 = *(v0 + 8);
    goto LABEL_8;
  }

  if ([v1 exiting])
  {
    swift_unknownObjectRelease();
    goto LABEL_4;
  }

  v7 = *(v0 + 24);

  v5 = *(v0 + 8);
LABEL_8:

  return v5();
}

uint64_t sub_1A4896234()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3FBB594;

  return sub_1A489C5D0();
}

id sub_1A48962D4(void *a1, char a2)
{
  if ([a1 hasSharedLibraryOrPreview])
  {
    result = [a1 exiting];
    if (!result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  sub_1A3F5ADB4();
  swift_allocError();
  if (a2)
  {
    *v5 = xmmword_1A5317AF0;
  }

  else
  {
    *v5 = 0;
    *(v5 + 8) = 0;
  }

  *(v5 + 16) = 3;
  return swift_willThrow();
}

void sub_1A4896380(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E6978868]) init];
  [v2 setSynchronous_];
  [v2 setNetworkAccessAllowed_];
  [a1 bestCropRectForAspectRatioV2:0 verticalContentMode:3 cropMode:1.0];
  [v2 setNormalizedCropRect_];
  [v2 setDeliveryMode_];
  [v2 setResizeMode_];
  *(swift_allocObject() + 16) = 0;
  *(swift_allocObject() + 16) = 0;
  v3 = [objc_opt_self() defaultManager];
  v4 = [objc_opt_self() px_mainScreen];
  [v4 scale];

  PXSizeMakeSquare();
}

uint64_t sub_1A4896C94(uint64_t a1)
{
  v2 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1A5240BA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1A524C624();
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(v10 + 16))(&v12[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v8);
  *v6 = type metadata accessor for PXAppDependencyManager();
  (*(v4 + 104))(v6, *MEMORY[0x1E6968E00], v3);
  sub_1A5241244();
  return sub_1A5240BC4();
}

void sub_1A4896E90(void *a1)
{
  v2 = sub_1A5240244();
  MEMORY[0x1EEE9AC00](v2);
  v3 = [objc_opt_self() fetchKeyAssetsInAssetCollection:a1 options:0];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 firstObject];

    if (v5)
    {
      sub_1A4896380(v5);
    }
  }

  sub_1A4897078(a1);
}

void sub_1A4897078(void *a1)
{
  sub_1A3C69D4C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F9790;
  *(inited + 32) = a1;
  v3 = a1;
  if ((inited & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1A59097F0](0, inited);
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  swift_getObjectType();
  sub_1A414CF3C();
  v6 = v5;
  v7 = sub_1A524C714();
  v9 = v8;
  sub_1A3E072BC();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A52FF950;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1A3D710E8();
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;
  v12 = MEMORY[0x1E69E65A8];
  *(v10 + 96) = MEMORY[0x1E69E6530];
  *(v10 + 104) = v12;
  *(v10 + 64) = v11;
  *(v10 + 72) = v6;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

Swift::String __swiftcall PXAppIntentsDebugDescription(for:)(Swift::OpaquePointer a1)
{
  v2 = a1._rawValue >> 62;
  if (!(a1._rawValue >> 62))
  {
    v3 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_9:
    v5 = 0;
    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v3 = sub_1A524E2B4();
  if (!v3)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((a1._rawValue & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1A59097F0](0, a1._rawValue);
  }

  else
  {
    if (!*((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_14;
    }

    v4 = *(a1._rawValue + 4);
  }

  v5 = v4;
  if (v2)
  {
LABEL_10:
    sub_1A524E2B4();
  }

LABEL_11:
  v7 = sub_1A4899040(v5);
  v9 = v8;

  v3 = v7;
  v6 = v9;
LABEL_14:
  result._object = v6;
  result._countAndFlagsBits = v3;
  return result;
}

{
  v1 = *(a1._rawValue + 2);
  if (v1)
  {
    if (v1 == 1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v2 = 0xE100000000000000;
  v3 = 45;
  result._object = v2;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_1A4897488()
{
  v0 = objc_opt_self();
  v1 = sub_1A524C634();
  LODWORD(v0) = [v0 isValidCloudIdentifierStringValue_];

  result = MEMORY[0x1E69E7CC0];
  if (v0)
  {
    v3 = objc_allocWithZone(MEMORY[0x1E6978738]);
    v4 = sub_1A524C634();
    v5 = [v3 initWithStringValue_];

    sub_1A3C69D4C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1A52F9790;
    *(v6 + 32) = v5;
    v7 = v5;
    sub_1A524D2B4();

    sub_1A48975DC();
  }

  return result;
}

uint64_t sub_1A4897988()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1A4897A7C;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v3, 0, 0, 0xD000000000000020, 0x80000001A53EFA80, sub_1A489CA24, v2, v4);
}

uint64_t sub_1A4897A7C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A4897B94, 0, 0);
}

void sub_1A4897BAC(uint64_t a1)
{
  sub_1A3F6D768();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = sub_1A5240D44();
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  aBlock[4] = sub_1A3FBB1C4;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3E01E70;
  aBlock[3] = &block_descriptor_54_2;
  v9 = _Block_copy(aBlock);

  PXOpenSensitiveURL(v6, v9);
  _Block_release(v9);
}

uint64_t sub_1A4897DA0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  *a2 = a1;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t static PXAppDependencyManager.navigateToURLDestination(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A489CA2C(a1);
}

id static PXAppDependencyManager.navigationDestination()()
{
  swift_beginAccess();
  if (qword_1EB1EAF10)
  {
    return [qword_1EB1EAF10 provideNavigationDestination];
  }

  sub_1A40DCE64();
  swift_allocError();
  *v1 = 3;
  return swift_willThrow();
}

uint64_t sub_1A4897F4C()
{
  swift_beginAccess();
  if (qword_1EB1EAF28)
  {
    *(swift_allocObject() + 16) = 0;
    [swift_unknownObjectRetain() displayScale];
    v0 = [objc_opt_self() px_mainScreen];
    [v0 scale];

    PXSizeMakeSquare();
  }

  sub_1A40DCE64();
  swift_allocError();
  *v1 = 3;
  return swift_willThrow();
}

uint64_t static PXAppDependencyManager.search(for:)(uint64_t a1, uint64_t a2)
{
  v2[21] = a1;
  v2[22] = a2;
  sub_1A524CC54();
  v2[23] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[24] = v4;
  v2[25] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A48985C8, v4, v3);
}

uint64_t sub_1A48985C8()
{
  swift_beginAccess();
  v1 = qword_1EB1EBFD0;
  v0[26] = qword_1EB1EBFD0;
  if (v1)
  {
    swift_unknownObjectRetain();
    v2 = sub_1A524C634();
    v0[27] = v2;
    v0[2] = v0;
    v0[7] = v0 + 29;
    v0[3] = sub_1A48987A0;
    v3 = swift_continuation_init();
    sub_1A3FA4F7C();
    v0[17] = v4;
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1A3FA485C;
    v0[13] = &block_descriptor_10_13;
    v0[14] = v3;
    [v1 performSearchWithQuery:v2 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    sub_1A40DCE64();
    swift_allocError();
    *v5 = 3;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1A48987A0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 200);
  v4 = *(v1 + 192);
  if (v2)
  {
    v5 = sub_1A4898944;
  }

  else
  {
    v5 = sub_1A48988D0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A48988D0()
{
  v1 = *(v0 + 216);

  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A4898944()
{
  v1 = *(v0 + 216);

  swift_willThrow();
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t static PXAppDependencyManager.search(for:)(uint64_t a1)
{
  v1[21] = a1;
  sub_1A524CC54();
  v1[22] = sub_1A524CC44();
  v3 = sub_1A524CBC4();
  v1[23] = v3;
  v1[24] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A4898A60, v3, v2);
}

uint64_t sub_1A4898A60()
{
  swift_beginAccess();
  v1 = qword_1EB1EBFD0;
  v0[25] = qword_1EB1EBFD0;
  if (v1)
  {
    v2 = v0[21];
    v0[2] = v0;
    v0[7] = v0 + 27;
    v0[3] = sub_1A4898C14;
    v3 = swift_continuation_init();
    sub_1A3FA4F7C();
    v0[17] = v4;
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1A3FA485C;
    v0[13] = &block_descriptor_14_9;
    v0[14] = v3;
    [swift_unknownObjectRetain() performSearchWithDecoratedQuery:v2 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    sub_1A40DCE64();
    swift_allocError();
    *v5 = 3;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1A4898C14()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = sub_1A4898DB4;
  }

  else
  {
    v5 = sub_1A4898D44;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A4898D44()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4898DB4()
{

  swift_willThrow();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

id PXAppDependencyManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PXAppDependencyManager.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXAppDependencyManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PXAppDependencyManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXAppDependencyManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A4899040(void *a1)
{
  if (a1)
  {
    swift_getObjectType();
    sub_1A414CF3C();
    v2 = a1;
    v3 = sub_1A524C714();
    v5 = v4;
    sub_1A3E072BC();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1A52FF950;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    v7 = sub_1A3D710E8();
    *(v6 + 32) = v3;
    *(v6 + 40) = v5;
    v8 = MEMORY[0x1E69E65A8];
    *(v6 + 96) = MEMORY[0x1E69E6530];
    *(v6 + 104) = v8;
    *(v6 + 64) = v7;
    *(v6 + 72) = a1;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 45;
}

uint64_t PXAppIntentsDebugDescription(for:)(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    swift_getObjectType();
    sub_1A414CF3C();
    v2 = v1;
    v3 = sub_1A524C714();
    v5 = v4;
    sub_1A3E072BC();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1A52FF950;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    v7 = sub_1A3D710E8();
    *(v6 + 32) = v3;
    *(v6 + 40) = v5;
    v8 = MEMORY[0x1E69E65A8];
    *(v6 + 96) = MEMORY[0x1E69E6530];
    *(v6 + 104) = v8;
    *(v6 + 64) = v7;
    *(v6 + 72) = v1;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 45;
}

{
  v1 = *a1;
  if (*a1)
  {
    swift_getObjectType();
    sub_1A414CF3C();
    v2 = v1;
    v3 = sub_1A524C714();
    v5 = v4;
    sub_1A3E072BC();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1A52FF950;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    v7 = sub_1A3D710E8();
    *(v6 + 32) = v3;
    *(v6 + 40) = v5;
    v8 = MEMORY[0x1E69E65A8];
    *(v6 + 96) = MEMORY[0x1E69E6530];
    *(v6 + 104) = v8;
    *(v6 + 64) = v7;
    *(v6 + 72) = v1;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 45;
}

uint64_t _s12PhotosUICore28PXAppIntentsDebugDescription3forSSSayAA11AlbumEntityVG_tF_0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = *(a1 + 32);
    v2 = v1;
  }

  else
  {
    v1 = 0;
  }

  v3 = sub_1A4899040(v1);

  return v3;
}

uint64_t sub_1A48995FC()
{
  v1 = sub_1A524EA44();
  MEMORY[0x1A5907B60](0x297328656C696620, 0xE800000000000000);
  return v1;
}

unint64_t PXAppIntentsAssets(for:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1A524E554();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v4 += 13;
      v6 = v5;
      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
      --v1;
    }

    while (v1);
    v2 = v9;
  }

  if (v2 >> 62)
  {
    if (sub_1A524E2B4() > 0)
    {
      return v2;
    }

    goto LABEL_7;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
  {
LABEL_7:

    sub_1A40DCE64();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
  }

  return v2;
}

unint64_t sub_1A4899780(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1A524E554();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v4 += 4;
      v6 = v5;
      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
      --v1;
    }

    while (v1);
    v2 = v9;
  }

  if (v2 >> 62)
  {
    if (sub_1A524E2B4() > 0)
    {
      return v2;
    }

    goto LABEL_7;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
  {
LABEL_7:

    sub_1A40DCE64();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
  }

  return v2;
}

unint64_t sub_1A489989C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1A524E554();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v4 += 2;
      v6 = v5;
      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
      --v1;
    }

    while (v1);
    v2 = v9;
  }

  if (v2 >> 62)
  {
    if (sub_1A524E2B4() > 0)
    {
      return v2;
    }

    goto LABEL_7;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
  {
LABEL_7:

    sub_1A40DCE64();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
  }

  return v2;
}

unint64_t sub_1A48999B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1A524E554();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v4 += 3;
      v6 = v5;
      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
      --v1;
    }

    while (v1);
    v2 = v9;
  }

  if (v2 >> 62)
  {
    if (sub_1A524E2B4() > 0)
    {
      return v2;
    }

    goto LABEL_7;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
  {
LABEL_7:

    sub_1A40DCE64();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1A4899AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v3[11] = sub_1A524CC54();
  v3[12] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[13] = v5;
  v3[14] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A4899B74, v5, v4);
}

uint64_t sub_1A4899B74()
{
  v1 = v0[8];
  if (!v1)
  {

    if (qword_1EB194500 != -1)
    {
      swift_once();
    }

    v7 = sub_1A5246F24();
    __swift_project_value_buffer(v7, qword_1EB194508);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v2 = swift_allocObject();
  v0[15] = v2;
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  v0[16] = v3;
  *(v3 + 16) = 0;
  v4 = v1;
  v0[17] = sub_1A524CC44();
  v5 = swift_task_alloc();
  v0[18] = v5;
  v5[2] = v4;
  v5[3] = 0;
  v5[4] = v2;
  v5[5] = v3;
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_1A4899E38;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1A4899E38()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1A4899F98, v3, v2);
}

uint64_t sub_1A4899F98()
{
  v1 = v0[15];

  swift_beginAccess();
  if ((*(v1 + 16) & 1) == 0)
  {
    if (qword_1EB194500 != -1)
    {
      swift_once();
    }

    v5 = sub_1A5246F24();
    __swift_project_value_buffer(v5, qword_1EB194508);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v2 = v0[8];
  v3 = [objc_opt_self() defaultCenter];
  [v3 postNotificationName:PXAppIntentsAssetsActionDidFinishNotification object:0];

  v4 = v0[1];

  return v4();
}

void sub_1A489A2C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A3F6D768();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10);
  (*(v12 + 16))(aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11, v14);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  (*(v12 + 32))(v16 + v15, aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  aBlock[4] = sub_1A489D5B4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D6084C;
  aBlock[3] = &block_descriptor_44_1;
  v17 = _Block_copy(aBlock);

  [a2 executeWithUndoManager:a3 completionHandler:v17];
  _Block_release(v17);
}

Swift::Void __swiftcall PXAppIntentsAssetsActionDidFinish()()
{
  v0 = [objc_opt_self() defaultCenter];
  [v0 postNotificationName:PXAppIntentsAssetsActionDidFinishNotification object:0];
}

uint64_t sub_1A489A508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  sub_1A489D1B8(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v3[16] = swift_task_alloc();
  v4 = sub_1A523FD74();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v5 = sub_1A52411C4();
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v6 = sub_1A5240CB4();
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();
  v7 = sub_1A5240E64();
  v3[26] = v7;
  v3[27] = *(v7 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A489A7BC, 0, 0);
}

uint64_t sub_1A489A7BC()
{
  if (!*(v0[13] + 16))
  {
    sub_1A40DCE64();
    swift_allocError();
    *v57 = 0;
    swift_willThrow();
LABEL_26:

    v76 = v0[1];

    return v76();
  }

  v96 = *(v0[13] + 16);
  v85 = v0[34];
  v1 = v0[33];
  v93 = v0[26];
  v95 = v0[27];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v88 = v0[22];
  v89 = v0[21];
  v90 = v0[20];
  v77 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v0[36] = v77;
  v5 = NSTemporaryDirectory();
  sub_1A524C674();

  sub_1A5240D04();

  v0[2] = 0xD00000000000001BLL;
  v0[3] = 0x80000001A53EFB00;
  v6 = *MEMORY[0x1E6968F70];
  v92 = *(v3 + 104);
  v92(v2, v6, v4);
  sub_1A3D5F9DC();
  sub_1A5240E54();
  v7 = *(v3 + 8);
  v7(v2, v4);
  v8 = *(v95 + 8);
  v0[37] = v8;
  v0[38] = (v95 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v93);
  sub_1A52411B4();
  v9 = sub_1A5241164();
  v11 = v10;
  (*(v89 + 8))(v88, v90);
  v0[4] = v9;
  v0[5] = v11;
  v91 = v6;
  v92(v2, v6, v4);
  sub_1A5240E54();
  v87 = v7;
  v7(v2, v4);

  v8(v85, v93);
  v12 = sub_1A5240D44();
  v0[10] = 0;
  LODWORD(v11) = [v77 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:v0 + 10];

  v13 = v0[10];
  if (!v11)
  {
    v58 = v13;
    sub_1A5240B84();

    swift_willThrow();
LABEL_25:
    v74 = v0[35];
    v75 = v0[26];
    swift_willThrow();

    v8(v74, v75);
    goto LABEL_26;
  }

  v86 = v8;
  v14 = v0[27];
  v15 = v0[18];
  v16 = *(v15 + 16);
  v15 += 16;
  v83 = v16;
  v17 = v0[13] + ((*(v15 + 64) + 32) & ~*(v15 + 64));
  v82 = (v14 + 48);
  v94 = (v14 + 32);
  v80 = (v14 + 16);
  v81 = v14;
  v84 = (v15 - 8);
  v79 = *(v15 + 56);
  v18 = v13;
  v19 = MEMORY[0x1E69E7CC0];
  do
  {
    v24 = v0[26];
    v25 = v0[16];
    v83(v0[19], v17, v0[17]);
    sub_1A523FD54();
    if ((*v82)(v25, 1, v24) == 1)
    {
      v26 = v0[25];
      v27 = v0[23];
      v28 = sub_1A3C5915C(v0[16], &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1A489D1B8);
      v0[6] = MEMORY[0x1A58FB0D0](v28);
      v0[7] = v29;
      v92(v26, v91, v27);
      sub_1A5240E54();
      v87(v26, v27);

      v30 = sub_1A523FD44();
      v32 = v31;
      sub_1A5240EB4();
      v33 = v0[29];
      v34 = v0[28];
      v35 = v0[26];
      sub_1A3C59280(v30, v32);
      (*v80)(v34, v33, v35);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1A3ECD488(0, *(v19 + 2) + 1, 1, v19);
      }

      v37 = *(v19 + 2);
      v36 = *(v19 + 3);
      if (v37 >= v36 >> 1)
      {
        v19 = sub_1A3ECD488(v36 > 1, v37 + 1, 1, v19);
      }

      v20 = v0[28];
      v21 = v0[26];
      v22 = v0[19];
      v23 = v0[17];
      v86(v0[29], v21);
      (*v84)(v22, v23);
      *(v19 + 2) = v37 + 1;
      (*(v81 + 32))(&v19[((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v37], v20, v21);
    }

    else
    {
      v38 = *v94;
      (*v94)(v0[32], v0[16], v0[26]);
      if ((sub_1A5240DF4() & 1) == 0)
      {
        v61 = v0[32];
        v62 = v0[26];
        v63 = v0[19];
        v64 = v0[17];

        sub_1A40DCE64();
        swift_allocError();
        *v65 = 1;
        swift_willThrow();
        v86(v61, v62);
        v66 = v63;
        v8 = v86;
        (*v84)(v66, v64);
        goto LABEL_25;
      }

      v78 = v38;
      v39 = v19;
      v40 = v0[25];
      v41 = v0[23];
      v0[8] = sub_1A5240D34();
      v0[9] = v42;
      v92(v40, v91, v41);
      sub_1A5240E54();
      v87(v40, v41);

      v43 = sub_1A5240D44();
      v44 = sub_1A5240D44();
      v0[12] = 0;
      v45 = [v77 copyItemAtURL:v43 toURL:v44 error:v0 + 12];

      v46 = v0[12];
      if (!v45)
      {
        v68 = v0[31];
        v67 = v0[32];
        v69 = v0[19];
        v70 = v0[17];
        v71 = v0[26];
        v72 = v46;

        sub_1A5240B84();

        swift_willThrow();
        v86(v68, v71);
        v86(v67, v71);
        v73 = v69;
        v8 = v86;
        (*v84)(v73, v70);
        goto LABEL_25;
      }

      (*v80)(v0[30], v0[31], v0[26]);
      v47 = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_1A3ECD488(0, *(v39 + 2) + 1, 1, v39);
      }

      v49 = *(v39 + 2);
      v48 = *(v39 + 3);
      if (v49 >= v48 >> 1)
      {
        v39 = sub_1A3ECD488(v48 > 1, v49 + 1, 1, v39);
      }

      v51 = v0[31];
      v50 = v0[32];
      v52 = v0[30];
      v53 = v0[26];
      v54 = v0[19];
      v55 = v0[17];
      *(v39 + 2) = v49 + 1;
      v78(&v39[((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v49], v52, v53);
      sub_1A5240DD4();
      v86(v51, v53);
      v86(v50, v53);
      v56 = v55;
      v19 = v39;
      (*v84)(v54, v56);
    }

    v0[39] = v19;
    v17 += v79;
    --v96;
  }

  while (v96);
  v97 = (v0[14] + *v0[14]);
  v59 = swift_task_alloc();
  v0[40] = v59;
  *v59 = v0;
  v59[1] = sub_1A489B338;

  return v97(v19);
}

uint64_t sub_1A489B338()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_1A489B7C4;
  }

  else
  {
    v2 = sub_1A489B498;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A489B498()
{
  v1 = v0[36];
  v2 = sub_1A5240D44();
  v0[11] = 0;
  LODWORD(v1) = [v1 removeItemAtURL:v2 error:v0 + 11];

  v3 = v0[11];
  if (v1)
  {
    v4 = v0[37];
    v5 = v0[35];
    v6 = v0[36];
    v7 = v0[26];
    v8 = v3;
    v4(v5, v7);
  }

  else
  {
    v9 = v3;
    v10 = sub_1A5240B84();

    swift_willThrow();
    if (qword_1EB194500 != -1)
    {
      swift_once();
    }

    v11 = sub_1A5246F24();
    __swift_project_value_buffer(v11, qword_1EB194508);
    v12 = v10;
    v13 = sub_1A5246F04();
    v14 = sub_1A524D244();

    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[37];
    v17 = v0[35];
    v18 = v0[36];
    v19 = v0[26];
    if (v15)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = v10;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_1A3C1C000, v13, v14, "Ignoring tmp dir cleanup error: %@", v20, 0xCu);
      sub_1A3C5915C(v21, &qword_1EB12B150, &qword_1EB12B160, 0x1E69E58C0, sub_1A3C4B7E8);
      MEMORY[0x1A590EEC0](v21, -1, -1);
      MEMORY[0x1A590EEC0](v20, -1, -1);
    }

    else
    {
    }

    v16(v17, v19);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_1A489B7C4()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);
  v3 = *(v0 + 208);

  v1(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A489B910(uint64_t a1)
{
  v1[6] = a1;
  v2 = sub_1A5240E64();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  sub_1A524CC54();
  v1[10] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v1[11] = v4;
  v1[12] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A489BA04, v4, v3);
}

uint64_t sub_1A489BA04()
{
  if (qword_1EB194500 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = sub_1A5246F24();
  v0[13] = __swift_project_value_buffer(v5, qword_1EB194508);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_1A5246F04();
  v7 = sub_1A524D264();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[7];
  if (v8)
  {
    v12 = swift_slowAlloc();
    swift_slowAlloc();
    *v12 = 136446210;
    sub_1A489D244(&qword_1EB12B000, MEMORY[0x1E6968FB0]);
    sub_1A524EA44();
    (*(v10 + 8))(v9, v11);
    sub_1A3C2EF94();
  }

  (*(v10 + 8))(v9, v11);
  v13 = swift_task_alloc();
  v0[14] = v13;
  *v13 = v0;
  v13[1] = sub_1A489BC88;
  v14 = v0[6];

  return sub_1A489CA2C(v14);
}

uint64_t sub_1A489BC88()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_1A489BEA8;
  }

  else
  {
    v5 = sub_1A489BDC4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A489BDC4()
{

  v1 = sub_1A5246F04();
  v2 = sub_1A524D264();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1A3C1C000, v1, v2, "Did perform navigation", v3, 2u);
    MEMORY[0x1A590EEC0](v3, -1, -1);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A489BEA8()
{
  v1 = *(v0 + 120);

  *(v0 + 16) = v1;
  v2 = v1;
  sub_1A3C34400(0, &qword_1EB126160);
  type metadata accessor for PXProgrammaticNavigationError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 24);
    *(v0 + 32) = v3;
    sub_1A489D244(&qword_1EB1442B0, type metadata accessor for PXProgrammaticNavigationError);
    sub_1A5240B24();
    if (*(v0 + 40) == -1002)
    {

      v4 = v3;
      v5 = sub_1A5246F04();
      v6 = sub_1A524D244();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *v7 = 138412290;
        v9 = v4;
        v10 = _swift_stdlib_bridgeErrorToNSError();
        *(v7 + 4) = v10;
        *v8 = v10;
        _os_log_impl(&dword_1A3C1C000, v5, v6, "Did perform navigation with ignored error: %@", v7, 0xCu);
        sub_1A3C5915C(v8, &qword_1EB12B150, &qword_1EB12B160, 0x1E69E58C0, sub_1A3C4B7E8);
        MEMORY[0x1A590EEC0](v8, -1, -1);
        MEMORY[0x1A590EEC0](v7, -1, -1);
        v4 = v5;
        v5 = v9;
      }

      v11 = *(v0 + 8);
      goto LABEL_10;
    }
  }

  v12 = *(v0 + 120);

  v13 = v12;
  v14 = sub_1A5246F04();
  v15 = sub_1A524D244();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 120);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = v16;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_1A3C1C000, v14, v15, "Failed to perform navigation: %@", v17, 0xCu);
    sub_1A3C5915C(v18, &qword_1EB12B150, &qword_1EB12B160, 0x1E69E58C0, sub_1A3C4B7E8);
    MEMORY[0x1A590EEC0](v18, -1, -1);
    MEMORY[0x1A590EEC0](v17, -1, -1);
  }

  swift_willThrow();

  v11 = *(v0 + 8);
LABEL_10:

  return v11();
}

uint64_t sub_1A489C214(uint64_t a1)
{
  v2 = sub_1A489D244(&qword_1EB1442D8, type metadata accessor for PXProgrammaticNavigationError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1A489C280(uint64_t a1)
{
  v2 = sub_1A489D244(&qword_1EB1442D8, type metadata accessor for PXProgrammaticNavigationError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1A489C2EC(uint64_t a1)
{
  v2 = sub_1A489D244(&qword_1EB1442B0, type metadata accessor for PXProgrammaticNavigationError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1A489C368(uint64_t a1)
{
  v2 = sub_1A489D244(&qword_1EB1442B0, type metadata accessor for PXProgrammaticNavigationError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1A489C3D4(uint64_t a1)
{
  v2 = sub_1A489D244(&qword_1EB1442B0, type metadata accessor for PXProgrammaticNavigationError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1A489C440(void *a1, uint64_t a2)
{
  v4 = sub_1A489D244(&qword_1EB1442B0, type metadata accessor for PXProgrammaticNavigationError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1A489C4D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A489D244(&qword_1EB1442B0, type metadata accessor for PXProgrammaticNavigationError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1A489C54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A489D244(&qword_1EB1442B0, type metadata accessor for PXProgrammaticNavigationError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1A489C5D0()
{
  sub_1A524CC54();
  v0[22] = sub_1A524CC44();
  v2 = sub_1A524CBC4();
  v0[23] = v2;
  v0[24] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1A489C664, v2, v1);
}

uint64_t sub_1A489C664()
{
  swift_beginAccess();
  v1 = qword_1EB1EAF20;
  v0[25] = qword_1EB1EAF20;
  if (v1)
  {
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_1A489C810;
    v2 = swift_continuation_init();
    sub_1A489D808();
    v0[17] = v3;
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1A43001A8;
    v0[13] = &block_descriptor_67_2;
    v0[14] = v2;
    [swift_unknownObjectRetain() providePhotoLibrary_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    sub_1A40DCE64();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1A489C810()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1A489C918, v2, v1);
}

uint64_t sub_1A489C918()
{

  swift_unknownObjectRelease();
  if (*(v0 + 168))
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1A40DCE64();
    swift_allocError();
    *v3 = 3;
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1A489CA2C(uint64_t a1)
{
  v1[21] = a1;
  sub_1A524CC54();
  v1[22] = sub_1A524CC44();
  v3 = sub_1A524CBC4();
  v1[23] = v3;
  v1[24] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A489CAC4, v3, v2);
}

uint64_t sub_1A489CAC4()
{
  swift_beginAccess();
  v1 = qword_1EB1EAF18;
  v0[25] = qword_1EB1EAF18;
  if (v1)
  {
    swift_unknownObjectRetain();
    v2 = sub_1A5240D44();
    v0[26] = v2;
    v0[2] = v0;
    v0[7] = v0 + 28;
    v0[3] = sub_1A489CC88;
    v3 = swift_continuation_init();
    sub_1A3FA4F7C();
    v0[17] = v4;
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1A3FA485C;
    v0[13] = &block_descriptor_47_1;
    v0[14] = v3;
    [v1 navigateToURLDestination:v2 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    sub_1A40DCE64();
    swift_allocError();
    *v5 = 3;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1A489CC88()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = sub_1A489CE2C;
  }

  else
  {
    v5 = sub_1A489CDB8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A489CDB8()
{
  v1 = *(v0 + 208);

  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A489CE2C()
{
  v1 = *(v0 + 208);

  swift_willThrow();
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

void sub_1A489CEB0(void *a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    v4 = *(v2 + 16);
    *(v2 + 16) = a1;
    v5 = a1;
    goto LABEL_15;
  }

  v18 = sub_1A524C674();
  sub_1A524E384();
  if (*(a2 + 16) && (v7 = sub_1A3D5C0BC(v19), (v8 & 1) != 0))
  {
    sub_1A3C2F0BC(*(a2 + 56) + 32 * v7, v20);
    sub_1A3D5FAFC(v19);
    sub_1A3C52C70(0, &qword_1EB12C740);
    if (swift_dynamicCast())
    {
      if (qword_1EB194500 != -1)
      {
        swift_once();
      }

      v9 = sub_1A5246F24();
      __swift_project_value_buffer(v9, qword_1EB194508);
      v10 = v18;
      v4 = sub_1A5246F04();
      v11 = sub_1A524D244();

      if (os_log_type_enabled(v4, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        *(v12 + 4) = v10;
        *v13 = v10;
        v14 = v10;
        _os_log_impl(&dword_1A3C1C000, v4, v11, "Failed to fetch face crop: %@", v12, 0xCu);
        sub_1A3C5915C(v13, &qword_1EB12B150, &qword_1EB12B160, 0x1E69E58C0, sub_1A3C4B7E8);
        MEMORY[0x1A590EEC0](v13, -1, -1);
        MEMORY[0x1A590EEC0](v12, -1, -1);

        v4 = v14;
      }

      else
      {
      }

      goto LABEL_15;
    }
  }

  else
  {
    sub_1A3D5FAFC(v19);
  }

  if (qword_1EB194500 != -1)
  {
    swift_once();
  }

  v15 = sub_1A5246F24();
  __swift_project_value_buffer(v15, qword_1EB194508);
  v4 = sub_1A5246F04();
  v16 = sub_1A524D244();
  if (os_log_type_enabled(v4, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1A3C1C000, v4, v16, "Failed to fetch face crop", v17, 2u);
    MEMORY[0x1A590EEC0](v17, -1, -1);
  }

LABEL_15:
}

void sub_1A489D1B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A489D244(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A489D290()
{
  result = qword_1EB1442B8;
  if (!qword_1EB1442B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1442B8);
  }

  return result;
}

uint64_t sub_1A489D5B4(char a1, void *a2)
{
  sub_1A3F6D768();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  swift_beginAccess();
  *(v5 + 16) = a1;
  swift_beginAccess();
  v7 = *(v6 + 16);
  *(v6 + 16) = a2;
  v8 = a2;

  return sub_1A524CBE4();
}

void sub_1A489D688(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_1A489D6CC(void *a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  swift_beginAccess();
  v7 = *(v6 + 16);
  *(v6 + 16) = a1;
  v8 = a1;

  if (a2)
  {
    v16[0] = sub_1A524C674();
    v16[1] = v9;
    sub_1A524E384();
    if (*(a2 + 16) && (v10 = sub_1A3D5C0BC(v15), (v11 & 1) != 0))
    {
      sub_1A3C2F0BC(*(a2 + 56) + 32 * v10, v16);
      sub_1A3D5FAFC(v15);
      sub_1A3C52C70(0, &qword_1EB12C740);
      if (swift_dynamicCast())
      {
        v12 = v14;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      sub_1A3D5FAFC(v15);
      v12 = 0;
    }

    swift_beginAccess();
    v13 = *(v5 + 16);
    *(v5 + 16) = v12;
  }
}

void sub_1A489D808()
{
  if (!qword_1EB120B80)
  {
    sub_1A3C4B7E8(255, &qword_1EB126BE0, &qword_1EB126BF0);
    v0 = sub_1A524CDF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120B80);
    }
  }
}

uint64_t sub_1A489D8B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A489DD24();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A489E0DC(0, &qword_1EB144328, sub_1A489DD24);
  v8 = v7;
  v13 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v9);
  if (sub_1A43AD204())
  {
    *v6 = sub_1A5249584();
    *(v6 + 1) = 0x4028000000000000;
    v6[16] = 0;
    sub_1A489F900(0, &qword_1EB1443C0, sub_1A489DDB8);
    sub_1A489E140(a1);
  }

  v10 = *(v13 + 56);

  return v10(a2, 1, 1, v8);
}

void sub_1A489DC0C()
{
  if (!qword_1EB144310)
  {
    sub_1A489DC74(255);
    sub_1A3EE278C();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB144310);
    }
  }
}

void sub_1A489DCA8()
{
  if (!qword_1EB144320)
  {
    sub_1A489E0DC(255, &qword_1EB144328, sub_1A489DD24);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB144320);
    }
  }
}

void sub_1A489DD24()
{
  if (!qword_1EB144330)
  {
    sub_1A489DDB8(255);
    sub_1A489FCE4(&qword_1EB144390, sub_1A489DDB8);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB144330);
    }
  }
}

void sub_1A489DDF4(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A489E060(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A489DEA0()
{
  if (!qword_1EB144358)
  {
    sub_1A489DDF4(255, &qword_1EB144360, &qword_1EB144368, sub_1A489DF30, sub_1A3EE16E8);
    v0 = sub_1A524B514();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB144358);
    }
  }
}

void sub_1A489DF30()
{
  if (!qword_1EB144370)
  {
    sub_1A489DFC4(255);
    sub_1A489FCE4(&qword_1EB144388, sub_1A489DFC4);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB144370);
    }
  }
}

void sub_1A489DFF8()
{
  if (!qword_1EB144380)
  {
    sub_1A3EE19E8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB144380);
    }
  }
}

void sub_1A489E060(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_1A489E0DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A489E140(uint64_t a1)
{
  sub_1A489DE78(0);
  MEMORY[0x1EEE9AC00](v2);
  sub_1A489DE50(0);
  v12[0] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v12[1] = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1A3EE16E8(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v12 - v10;
  sub_1A524B994();
  *&v11[*(v8 + 44)] = 0;
  sub_1A489E54C(a1);
}

void sub_1A489E54C(uint64_t a1)
{
  sub_1A3EE16E8(0);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A489DF30();
  MEMORY[0x1EEE9AC00](v4 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  *v7 = sub_1A5249314();
  *(v7 + 1) = 0;
  v7[16] = 1;
  sub_1A489F900(0, &qword_1EB1443C8, sub_1A489DFC4);
  sub_1A489E7B8(a1, &v7[*(v8 + 44)]);
}

void sub_1A489E7B8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[0] = a1;
  v13[1] = a2;
  v2 = MEMORY[0x1E69E6720];
  sub_1A489FC80(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  MEMORY[0x1EEE9AC00](v4);
  sub_1A489FC80(0, &qword_1EB121598, sub_1A3EE1A7C, v2);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (v13 - v6);
  sub_1A3EE19E8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  MEMORY[0x1EEE9AC00](v9);
  *v7 = sub_1A524BC74();
  v7[1] = v10;
  sub_1A489F900(0, &qword_1EB124438, sub_1A3EE1B10);
  sub_1A489ED50(v7 + *(v11 + 44));
  sub_1A3EE1A7C();
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  sub_1A489EB74();
}

void sub_1A489EB74()
{
  v0 = sub_1A52408C4();
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A43AD120();
  sub_1A52408B4();
  v2 = [objc_opt_self() labelColor];
  sub_1A524B284();
  sub_1A3EE4384();
  sub_1A52408D4();
  PXCappedFontWithTextStyle();
}

uint64_t sub_1A489ED50@<X0>(char *a1@<X8>)
{
  v68 = a1;
  sub_1A3EE4C14(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE1D04();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE1BA8();
  v69 = *(v7 - 8);
  v70 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v63 - v10;
  sub_1A43AD138();
  v12 = sub_1A524B574();
  v13 = sub_1A524A0E4();
  KeyPath = swift_getKeyPath();
  sub_1A524BC74();
  sub_1A52481F4();
  v15 = *sub_1A44DE9B8();
  v16 = swift_getKeyPath();
  *&v80 = v12;
  *(&v80 + 1) = KeyPath;
  *(v81 + 8) = v92;
  *(&v81[1] + 8) = v93;
  *(&v81[2] + 8) = v94;
  *&v81[0] = v13;
  *(&v81[3] + 1) = v16;
  v82 = v15;
  v17 = *MEMORY[0x1E697E6E8];
  v18 = sub_1A52486A4();
  (*(*(v18 - 8) + 104))(v6, v17, v18);
  sub_1A489FCE4(&unk_1EB1288C0, MEMORY[0x1E697E730]);

  result = sub_1A524C594();
  if (result)
  {
    sub_1A4070578();
    sub_1A3EE1DE0();
    sub_1A489FCE4(&unk_1EB1263B0, sub_1A3EE1D04);
    v67 = v11;
    sub_1A524AB84();
    sub_1A489FD94(v6, sub_1A3EE1D04);
    v95[2] = v81[1];
    v95[3] = v81[2];
    v95[4] = v81[3];
    v96 = v82;
    v95[0] = v80;
    v95[1] = v81[0];
    sub_1A489FD94(v95, sub_1A4070578);
    v20 = *sub_1A4758698();
    sub_1A524B5D4();
    v21 = *MEMORY[0x1E6981698];
    v22 = sub_1A524B594();
    v23 = *(v22 - 8);
    (*(v23 + 104))(v3, v21, v22);
    (*(v23 + 56))(v3, 0, 1, v22);
    v66 = sub_1A524B564();

    sub_1A489FD94(v3, sub_1A3EE4C14);
    v24 = *sub_1A44DE954();
    v64 = swift_getKeyPath();
    v65 = v24;

    v25 = sub_1A524A094();
    v26 = sub_1A524A0A4();
    sub_1A524A0A4();
    if (sub_1A524A0A4() != v25)
    {
      v26 = sub_1A524A0A4();
    }

    sub_1A5247BC4();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v87 = 0;
    v35 = sub_1A524A074();
    v36 = sub_1A524A0A4();
    sub_1A524A0A4();
    if (sub_1A524A0A4() != v35)
    {
      v36 = sub_1A524A0A4();
    }

    sub_1A5247BC4();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v89 = 0;
    v45 = v69;
    v46 = v70;
    v47 = *(v69 + 16);
    v48 = v71;
    v49 = v67;
    v47(v71, v67, v70);
    v50 = v68;
    v47(v68, v48, v46);
    sub_1A489E060(0, &qword_1EB1275B8, sub_1A3EE1BA8, sub_1A3EE1F24);
    v52 = &v50[*(v51 + 48)];
    v54 = v65;
    v53 = v66;
    v55 = v64;
    *&v72 = v66;
    *(&v72 + 1) = v64;
    *&v73 = v65;
    BYTE8(v73) = v26;
    LODWORD(v68) = v26;
    *(&v73 + 9) = *v88;
    HIDWORD(v73) = *&v88[3];
    *&v74 = v28;
    *(&v74 + 1) = v30;
    *&v75 = v32;
    *(&v75 + 1) = v34;
    LOBYTE(v76) = 0;
    *(&v76 + 1) = *v91;
    DWORD1(v76) = *&v91[3];
    BYTE8(v76) = v36;
    HIDWORD(v76) = *&v90[3];
    *(&v76 + 9) = *v90;
    *&v77 = v38;
    *(&v77 + 1) = v40;
    *&v78 = v42;
    *(&v78 + 1) = v44;
    v79 = 0;
    v56 = v76;
    v57 = v77;
    v58 = v78;
    v52[112] = 0;
    *(v52 + 5) = v57;
    *(v52 + 6) = v58;
    v59 = v72;
    v60 = v73;
    v61 = v74;
    *(v52 + 3) = v75;
    *(v52 + 4) = v56;
    *(v52 + 1) = v60;
    *(v52 + 2) = v61;
    *v52 = v59;
    sub_1A489FD2C(&v72, &v80, sub_1A3EE1F24);
    v62 = *(v45 + 8);
    v62(v49, v46);
    *&v80 = v53;
    *(&v80 + 1) = v55;
    *&v81[0] = v54;
    BYTE8(v81[0]) = v68;
    *(v81 + 9) = *v88;
    HIDWORD(v81[0]) = *&v88[3];
    *&v81[1] = v28;
    *(&v81[1] + 1) = v30;
    *&v81[2] = v32;
    *(&v81[2] + 1) = v34;
    LOBYTE(v81[3]) = 0;
    *(&v81[3] + 1) = *v91;
    DWORD1(v81[3]) = *&v91[3];
    BYTE8(v81[3]) = v36;
    HIDWORD(v81[3]) = *&v90[3];
    *(&v81[3] + 9) = *v90;
    v82 = v38;
    v83 = v40;
    v84 = v42;
    v85 = v44;
    v86 = 0;
    sub_1A489FD94(&v80, sub_1A3EE1F24);
    return (v62)(v71, v46);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A489F468()
{
  type metadata accessor for PhotosDetailsPhototypeWidgetViewModel();
  sub_1A489FCE4(&qword_1EB12D2A8, type metadata accessor for PhotosDetailsPhototypeWidgetViewModel);

  return sub_1A5248494();
}

uint64_t sub_1A489F4E4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotosDetailsPhototypeWidgetViewModel();
  sub_1A489FCE4(&qword_1EB12D2A8, type metadata accessor for PhotosDetailsPhototypeWidgetViewModel);
  result = sub_1A5248494();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1A489F564(uint64_t a1)
{
  result = sub_1A3E76A78();
  *(a1 + 8) = result;
  return result;
}

void sub_1A489F5A8(uint64_t a1@<X8>)
{
  sub_1A489D8B8(*v1, a1);
  v3 = sub_1A524BD54();
  v4 = sub_1A43AD204();
  sub_1A489DC0C();
  v6 = a1 + *(v5 + 36);
  *v6 = v3;
  *(v6 + 8) = v4;
}

unint64_t sub_1A489F618()
{
  result = qword_1EB144398;
  if (!qword_1EB144398)
  {
    sub_1A489DC0C();
    sub_1A489F754(&qword_1EB1443A0, sub_1A489DC74, sub_1A489F70C);
    sub_1A489FCE4(&qword_1EB122E08, sub_1A3EE278C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144398);
  }

  return result;
}

uint64_t sub_1A489F754(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1A489F7C4()
{
  result = qword_1EB1443B0;
  if (!qword_1EB1443B0)
  {
    sub_1A489E0DC(255, &qword_1EB144328, sub_1A489DD24);
    sub_1A489FCE4(&qword_1EB1443B8, sub_1A489DD24);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1443B0);
  }

  return result;
}

uint64_t sub_1A489F898(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A489F900(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A489F96C()
{
  v1 = *(v0 + 24);
  if (sub_1A43ACFB4())
  {
    swift_getObjectType();
    v2 = PXPhototypeSupport.phototype.getter(v9);
    v8[0] = 3;
    v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))(v2);
    PhototypeContext.init(kind:asset:)(v8, v3);
  }

  if (qword_1EB1DC9B0 != -1)
  {
    swift_once();
  }

  v4 = sub_1A5246F24();
  __swift_project_value_buffer(v4, qword_1EB1DC9B8);
  oslog = sub_1A5246F04();
  v5 = sub_1A524D244();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1A3C1C000, oslog, v5, "Missing phototype support", v6, 2u);
    MEMORY[0x1A590EEC0](v6, -1, -1);
  }
}

uint64_t sub_1A489FB54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A489FBBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A489FC1C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1DC9B8);
  __swift_project_value_buffer(v0, qword_1EB1DC9B8);
  sub_1A5246EF4();
}

void sub_1A489FC80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A489FCE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A489FD2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A489FD94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A489FDF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v36 = type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationFeedProvider();
  MEMORY[0x1EEE9AC00](v36);
  v35[6] = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48A08A0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v37 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48A0AE4(0, &qword_1EB1443D8, sub_1A48A08A0, type metadata accessor for GenerativeStoryEventFeedView.LayoutMarginsModifier);
  v35[4] = v6;
  MEMORY[0x1EEE9AC00](v6);
  v35[8] = v35 - v7;
  sub_1A48A099C();
  v35[7] = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48A0A58();
  v35[9] = v11;
  MEMORY[0x1EEE9AC00](v11);
  v38 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48A0AE4(0, &qword_1EB1443F0, sub_1A48A0A58, sub_1A4558B3C);
  v35[5] = v13;
  MEMORY[0x1EEE9AC00](v13);
  v40 = v35 - v14;
  sub_1A48A0B58();
  v39 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48A0BE8();
  v42 = v18;
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v41 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1A5249234();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(v2 + 16);
  v25 = *(v2 + 8);
  v47 = v25;
  if (v48 == 1)
  {
    v26 = v25;
    if (!v25)
    {
      return (*(v19 + 56))(v43, 1, 1, v42);
    }
  }

  else
  {

    sub_1A524D254();
    v27 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A48A22E0(&v47, sub_1A3FF2CA0);
    (*(v22 + 8))(v24, v21);
    v25 = v44;
    if (!v44)
    {
      return (*(v19 + 56))(v43, 1, 1, v42);
    }
  }

  v35[2] = v10;
  v46 = *(v2 + 32);
  v28 = *(v2 + 24);
  v45 = v28;
  v29 = v46;

  v35[3] = v17;
  if ((v29 & 1) == 0)
  {
    sub_1A524D254();
    v31 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A48A22E0(&v45, sub_1A429658C);
    v30 = (*(v22 + 8))(v24, v21);
    v28 = v44;
  }

  if (!v28)
  {

    return (*(v19 + 56))(v43, 1, 1, v42);
  }

  v32 = *(**v2 + 1184);
  v35[1] = *v2;
  result = v32(v30);
  if (result)
  {
    v34 = (*(*result + 840))(result);

    (*(*v34 + 496))(v25);

    sub_1A44061A4();
    sub_1A48A1E00(&qword_1EB131AA8, type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationFeedProvider);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

void sub_1A48A08A0()
{
  if (!qword_1EB1443D0)
  {
    type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationFeedProvider();
    sub_1A48A1E00(&qword_1EB131AA8, type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationFeedProvider);
    v0 = type metadata accessor for LemonadeFeed();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1443D0);
    }
  }
}

uint64_t type metadata accessor for GenerativeStoryEventFeedView.LayoutMarginsModifier()
{
  result = qword_1EB1DCBA8;
  if (!qword_1EB1DCBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A48A099C()
{
  if (!qword_1EB1443E0)
  {
    sub_1A48A0AE4(255, &qword_1EB1443D8, sub_1A48A08A0, type metadata accessor for GenerativeStoryEventFeedView.LayoutMarginsModifier);
    sub_1A48A2340(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1443E0);
    }
  }
}

void sub_1A48A0A58()
{
  if (!qword_1EB1443E8)
  {
    sub_1A48A099C();
    sub_1A48A2340(255, &unk_1EB1277B0, MEMORY[0x1E69E6530], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1443E8);
    }
  }
}

void sub_1A48A0AE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_1A48A0B58()
{
  if (!qword_1EB1443F8)
  {
    sub_1A48A0AE4(255, &qword_1EB1443F0, sub_1A48A0A58, sub_1A4558B3C);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1443F8);
    }
  }
}

void sub_1A48A0BE8()
{
  if (!qword_1EB144400)
  {
    sub_1A48A0B58();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB144400);
    }
  }
}

void sub_1A48A0C48(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 48);
  v10 = *(a1 + 40);
  v6 = v11;

  if ((v6 & 1) == 0)
  {
    sub_1A524D254();
    v7 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A48A22E0(&v10, sub_1A40A50B0);
    (*(v3 + 8))(v5, v2);
  }

  sub_1A48A2340(0, &qword_1EB1261A8, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1A52F8E10;
  v8 = *(a1 + 64);
  v9[0] = *(a1 + 56);
  v9[1] = v8;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A48A0E30(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 48);
  v10 = *(a1 + 40);
  v6 = v11;

  if ((v6 & 1) == 0)
  {
    sub_1A524D254();
    v7 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A48A22E0(&v10, sub_1A40A50B0);
    (*(v3 + 8))(v5, v2);
  }

  sub_1A5242FA4();
}

uint64_t sub_1A48A0FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v45 = a2;
  v2 = MEMORY[0x1E697F948];
  sub_1A48A1FE4(0, &qword_1EB144450, MEMORY[0x1E697F948]);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v36 - v4;
  sub_1A48A2188(0, &qword_1EB144478, v2);
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v36 - v6;
  sub_1A48A2188(0, &qword_1EB144458, MEMORY[0x1E697F960]);
  v42 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v36 - v8;
  sub_1A48A2070();
  v10 = v9;
  v40 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5242D14();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  sub_1A3D61808(&v36 - v17);
  v19 = *(v13 + 104);
  v19(v15, *MEMORY[0x1E69C21F8], v12);
  LOBYTE(v2) = sub_1A5242D04();
  v20 = *(v13 + 8);
  v20(v15, v12);
  v20(v18, v12);
  if (v2 & 1) != 0 || (sub_1A3D61808(v18), v19(v15, *MEMORY[0x1E69C2200], v12), v21 = sub_1A5242D04(), v20(v15, v12), v20(v18, v12), (v21))
  {
    sub_1A48A2124();
    v23 = v22;
    v24 = sub_1A48A1E00(&qword_1EB144470, sub_1A48A2124);
    v25 = v38;
    sub_1A524A604();
    v26 = v40;
    (*(v40 + 16))(v37, v25, v10);
    swift_storeEnumTagMultiPayload();
    v46 = v23;
    v47 = v24;
    swift_getOpaqueTypeConformance2();
    v27 = v39;
    sub_1A5249744();
    sub_1A3D27120(v27, v44);
    swift_storeEnumTagMultiPayload();
    sub_1A48A21EC();
    sub_1A5249744();
    sub_1A3D271A0(v27);
    return (*(v26 + 8))(v25, v10);
  }

  else
  {
    sub_1A3D61808(v18);
    v19(v15, *MEMORY[0x1E69C21F0], v12);
    v29 = sub_1A5242D04();
    v20(v15, v12);
    v20(v18, v12);
    sub_1A48A2124();
    v31 = v30;
    if (v29)
    {
      v32 = sub_1A48A1E00(&qword_1EB144470, sub_1A48A2124);
      v33 = v38;
      sub_1A524A604();
      v34 = v40;
      (*(v40 + 16))(v37, v33, v10);
      swift_storeEnumTagMultiPayload();
      v46 = v31;
      v47 = v32;
      swift_getOpaqueTypeConformance2();
      v35 = v39;
      sub_1A5249744();
      sub_1A3D27120(v35, v44);
      swift_storeEnumTagMultiPayload();
      sub_1A48A21EC();
      sub_1A5249744();
      sub_1A3D271A0(v35);
      return (*(v34 + 8))(v33, v10);
    }

    else
    {
      (*(*(v30 - 8) + 16))(v44, v41, v30);
      swift_storeEnumTagMultiPayload();
      sub_1A48A21EC();
      sub_1A48A1E00(&qword_1EB144470, sub_1A48A2124);
      return sub_1A5249744();
    }
  }
}

uint64_t sub_1A48A1694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();
  result = swift_getKeyPath();
  *a2 = a1;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = 0;
  *(a2 + 24) = v5;
  *(a2 + 32) = 0;
  *(a2 + 40) = result;
  *(a2 + 48) = 0;
  strcpy((a2 + 56), "mc-event-feed");
  *(a2 + 70) = -4864;
  return result;
}

uint64_t sub_1A48A1740(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  sub_1A48A0AE4(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A48A17B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_83()
{

  sub_1A3D35BAC(*(v0 + 24), *(v0 + 32));
  j__swift_release(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1A48A1888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A48A191C()
{
  result = qword_1EB144408;
  if (!qword_1EB144408)
  {
    sub_1A48A19F4(255, &qword_1EB144410, sub_1A48A0BE8, MEMORY[0x1E69E6720]);
    sub_1A48A1A8C(&qword_1EB144418, sub_1A48A0BE8, sub_1A48A1A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144408);
  }

  return result;
}

void sub_1A48A19F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A48A1A8C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1A48A1B10()
{
  result = qword_1EB144428;
  if (!qword_1EB144428)
  {
    sub_1A48A0AE4(255, &qword_1EB1443F0, sub_1A48A0A58, sub_1A4558B3C);
    sub_1A48A1BF0();
    sub_1A48A1E00(&qword_1EB1220A8, sub_1A4558B3C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144428);
  }

  return result;
}

unint64_t sub_1A48A1BF0()
{
  result = qword_1EB144430;
  if (!qword_1EB144430)
  {
    sub_1A48A0A58();
    sub_1A48A1C88();
    sub_1A48A1EA0(&qword_1EB1277C0, &unk_1EB1277B0, MEMORY[0x1E69E6530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144430);
  }

  return result;
}

unint64_t sub_1A48A1C88()
{
  result = qword_1EB144438;
  if (!qword_1EB144438)
  {
    sub_1A48A099C();
    sub_1A48A1D20();
    sub_1A48A1EA0(&qword_1EB1277D0, &qword_1EB1277C8, MEMORY[0x1E69E6370]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144438);
  }

  return result;
}

unint64_t sub_1A48A1D20()
{
  result = qword_1EB144440;
  if (!qword_1EB144440)
  {
    sub_1A48A0AE4(255, &qword_1EB1443D8, sub_1A48A08A0, type metadata accessor for GenerativeStoryEventFeedView.LayoutMarginsModifier);
    sub_1A48A1E00(&qword_1EB144448, sub_1A48A08A0);
    sub_1A48A1E48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144440);
  }

  return result;
}

uint64_t sub_1A48A1E00(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A48A1E48()
{
  result = qword_1EB1DCBA0;
  if (!qword_1EB1DCBA0)
  {
    type metadata accessor for GenerativeStoryEventFeedView.LayoutMarginsModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1DCBA0);
  }

  return result;
}

uint64_t sub_1A48A1EA0(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A48A2340(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A48A1F2C()
{
  sub_1A48A19F4(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A48A1FE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A48A2188(255, &qword_1EB144458, MEMORY[0x1E697F960]);
    v7 = v6;
    sub_1A48A2124();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A48A2070()
{
  if (!qword_1EB144460)
  {
    sub_1A48A2124();
    sub_1A48A1E00(&qword_1EB144470, sub_1A48A2124);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB144460);
    }
  }
}

void sub_1A48A2124()
{
  if (!qword_1EB144468)
  {
    type metadata accessor for GenerativeStoryEventFeedView.LayoutMarginsModifier();
    sub_1A48A1E48();
    v0 = sub_1A52499C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB144468);
    }
  }
}

void sub_1A48A2188(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A48A2070();
    v7 = a3(a1, v6, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1A48A21EC()
{
  result = qword_1EB144480;
  if (!qword_1EB144480)
  {
    sub_1A48A2188(255, &qword_1EB144458, MEMORY[0x1E697F960]);
    sub_1A48A2124();
    sub_1A48A1E00(&qword_1EB144470, sub_1A48A2124);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144480);
  }

  return result;
}

uint64_t sub_1A48A22E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A48A2340(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A48A2390()
{
  result = qword_1EB144488;
  if (!qword_1EB144488)
  {
    sub_1A48A1FE4(255, &qword_1EB144490, MEMORY[0x1E697F960]);
    sub_1A48A21EC();
    sub_1A48A1E00(&qword_1EB144470, sub_1A48A2124);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144488);
  }

  return result;
}

uint64_t sub_1A48A245C()
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
  __swift_allocate_value_buffer(v6, qword_1EB1DCC48);
  __swift_project_value_buffer(v6, qword_1EB1DCC48);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

uint64_t (*static EditAssetIntent.title.modify())()
{
  if (qword_1EB1DCC40 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5240BB4();
  __swift_project_value_buffer(v0, qword_1EB1DCC48);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A48A274C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1DCC40 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1DCC48);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1A48A280C(uint64_t a1)
{
  if (qword_1EB1DCC40 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1DCC48);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t static EditAssetIntent.parameterSummary.getter()
{
  sub_1A48A41C4(0, &qword_1EB144498, sub_1A48A2ABC, &type metadata for EditAssetIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A48A41C4(0, &qword_1EB1444A8, sub_1A48A2ABC, &type metadata for EditAssetIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A48A2ABC();
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A48A2B34();
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

unint64_t sub_1A48A2ABC()
{
  result = qword_1EB1444A0;
  if (!qword_1EB1444A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1444A0);
  }

  return result;
}

void sub_1A48A2B34()
{
  if (!qword_1EB1444B0)
  {
    sub_1A48A41C4(255, &qword_1EB12F0B0, sub_1A3F57FA8, &type metadata for AssetEntity, MEMORY[0x1E695A1A0]);
    v0 = sub_1A524ED44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1444B0);
    }
  }
}

uint64_t EditAssetIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v32 = a1;
  v1 = sub_1A5240334();
  v30 = *(v1 - 8);
  v31 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v29 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DB7B48(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v28 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v23 - v6;
  sub_1A3DB7B48(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v26 = &v23 - v8;
  v9 = sub_1A5240BA4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v24 = sub_1A5240BB4();
  v15 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  sub_1A48A41C4(0, &qword_1EB12F0B0, sub_1A3F57FA8, &type metadata for AssetEntity, MEMORY[0x1E695A1A0]);
  v25 = v16;
  sub_1A524C5B4();
  sub_1A5241244();
  v17 = *MEMORY[0x1E6968DF0];
  v18 = *(v10 + 104);
  v18(v12, v17, v9);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v18(v12, v17, v9);
  v19 = v26;
  sub_1A5240BC4();
  (*(v15 + 56))(v19, 0, 1, v24);
  v20 = sub_1A523FDB4();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  v21 = *(*(v20 - 8) + 56);
  v21(v27, 1, 1, v20);
  v21(v28, 1, 1, v20);
  (*(v30 + 104))(v29, *MEMORY[0x1E695A500], v31);
  sub_1A3F58824();
  result = sub_1A523FFB4();
  *v32 = result;
  return result;
}

uint64_t EditAssetIntent.perform()(uint64_t a1)
{
  v3 = *v1;
  v2[3] = a1;
  v2[4] = v3;
  sub_1A524CC54();
  v2[5] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v2[6] = v5;
  v2[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A48A31E0, v5, v4);
}

uint64_t sub_1A48A31E0()
{
  v0[2] = v0[4];
  v1 = swift_task_alloc();
  v0[8] = v1;
  sub_1A48A2ABC();
  *v1 = v0;
  v1[1] = sub_1A3DEB8E8;
  v2 = v0[3];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v2, 0, 0, 0, 0, 0, 1, &unk_1A536CD70);
}

uint64_t sub_1A48A32CC(uint64_t a1, uint64_t a2)
{
  v2[54] = a1;
  v2[55] = a2;
  sub_1A524CC54();
  v2[56] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[57] = v4;
  v2[58] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A48A3364, v4, v3);
}

uint64_t sub_1A48A3364()
{
  sub_1A523FF44();
  v1 = *(v0 + 48);
  *(v0 + 168) = *(v0 + 64);
  v2 = *(v0 + 96);
  *(v0 + 184) = *(v0 + 80);
  *(v0 + 200) = v2;
  v3 = *(v0 + 32);
  *(v0 + 120) = *(v0 + 16);
  *(v0 + 136) = v3;
  *(v0 + 216) = *(v0 + 112);
  *(v0 + 152) = v1;
  v4 = swift_task_alloc();
  *(v0 + 472) = v4;
  *v4 = v0;
  v4[1] = sub_1A3F65E90;

  return sub_1A48A3940((v0 + 120), 1);
}

uint64_t sub_1A48A3448(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3CA8098;

  return sub_1A48A32CC(a1, v1);
}

uint64_t static EditAssetIntent.perform(with:inEdit:)(uint64_t *a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3D60150;

  return sub_1A48A3940(a1, a2);
}

uint64_t sub_1A48A3598()
{
  sub_1A48A41C4(0, &qword_1EB144498, sub_1A48A2ABC, &type metadata for EditAssetIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A48A41C4(0, &qword_1EB1444A8, sub_1A48A2ABC, &type metadata for EditAssetIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A48A2B34();
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

uint64_t sub_1A48A3780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a1;
  v4[4] = a2;
  v5 = *v3;
  v4[5] = a3;
  v4[6] = v5;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  v4[8] = v7;
  v4[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A48A3820, v7, v6);
}

uint64_t sub_1A48A3820()
{
  v0[2] = v0[6];
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1A3DED2C4;
  v2 = v0[3];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v2, 0, 0, 0, 0, 0, 1, &unk_1A536CEA8);
}

uint64_t sub_1A48A3904(uint64_t a1)
{
  v2 = sub_1A48A2ABC();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A48A3940(uint64_t *a1, char a2)
{
  *(v2 + 104) = a2;
  sub_1A3DB7B48(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  *(v2 + 16) = swift_task_alloc();
  *(v2 + 24) = swift_task_alloc();
  v4 = sub_1A5240E64();
  *(v2 + 32) = v4;
  *(v2 + 40) = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a1;
  *(v2 + 48) = v5;
  *(v2 + 56) = v6;
  sub_1A524CC54();
  *(v2 + 64) = sub_1A524CC44();
  v8 = sub_1A524CBC4();
  *(v2 + 72) = v8;
  *(v2 + 80) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A48A3A90, v8, v7);
}

id sub_1A48A3A90()
{
  v1 = [*(v0 + 56) canPerformEditOperation_];
  v2 = *(v0 + 56);
  if (!v1)
  {
LABEL_6:

    v11 = [v2 mediaType];
    sub_1A3F5ADB4();
    swift_allocError();
    *v12 = v11;
    *(v12 + 8) = 1;
    *(v12 + 16) = 0;
    swift_willThrow();

    v13 = *(v0 + 8);

    return v13();
  }

  if (*(v0 + 104) != 1)
  {
    v14 = *(v0 + 32);
    v15 = *(v0 + 40);
    v16 = *(v0 + 16);
    sub_1A524E404();

    v17 = [v2 localIdentifier];
    v18 = sub_1A524C674();
    v20 = v19;

    MEMORY[0x1A5907B60](v18, v20);

    sub_1A5240E34();

    result = (*(v15 + 48))(v16, 1, v14);
    if (result != 1)
    {
      v5 = (v0 + 16);
      goto LABEL_11;
    }

LABEL_15:
    __break(1u);
    return result;
  }

  sub_1A524E404();

  result = [v2 uuid];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = result;
  v5 = (v0 + 24);
  v2 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = sub_1A524C674();
  v10 = v9;

  MEMORY[0x1A5907B60](v8, v10);

  sub_1A5240E34();

  if ((*(v7 + 48))(v2, 1, v6) == 1)
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_11:
  (*(*(v0 + 40) + 32))(*(v0 + 48), *v5, *(v0 + 32));
  v21 = swift_task_alloc();
  *(v0 + 88) = v21;
  *v21 = v0;
  v21[1] = sub_1A48A3DC4;
  v22 = *(v0 + 48);

  return sub_1A489B910(v22);
}

uint64_t sub_1A48A3DC4()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);
  if (v0)
  {
    v5 = sub_1A48A3FB0;
  }

  else
  {
    v5 = sub_1A48A3F00;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A48A3F00()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A48A3FB0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

unint64_t sub_1A48A405C()
{
  result = qword_1EB1444B8;
  if (!qword_1EB1444B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1444B8);
  }

  return result;
}

unint64_t sub_1A48A40B4()
{
  result = qword_1EB1444C0;
  if (!qword_1EB1444C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1444C0);
  }

  return result;
}

unint64_t sub_1A48A4134()
{
  result = qword_1EB1444C8;
  if (!qword_1EB1444C8)
  {
    sub_1A48A41C4(255, &qword_1EB1444D0, sub_1A48A2ABC, &type metadata for EditAssetIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1444C8);
  }

  return result;
}

void sub_1A48A41C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1A48A422C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return sub_1A48A32CC(a1, v1);
}

uint64_t sub_1A48A42C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t GenerativeStoryAnimationText.__allocating_init(word:confidence:)(uint64_t a1, uint64_t a2, double a3)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

uint64_t GenerativeStoryAnimationText.init(word:confidence:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t static GenerativeStoryAnimationText.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 96))();
  v6 = v5;
  if (v4 == (*(*a2 + 96))() && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = sub_1A524EAB4();

  result = 0;
  if (v9)
  {
LABEL_8:
    v11 = (*(*a1 + 120))(result);
    return v11 == (*(*a2 + 120))();
  }

  return result;
}

uint64_t GenerativeStoryAnimationText.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A48A4610(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (*(**a1 + 96))();
  v6 = v5;
  if (v4 == (*(*v3 + 96))() && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = sub_1A524EAB4();

  result = 0;
  if (v9)
  {
LABEL_8:
    v11 = (*(*v2 + 120))(result);
    return v11 == (*(*v3 + 120))();
  }

  return result;
}

void sub_1A48A4758()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15E378);
  __swift_project_value_buffer(v0, qword_1EB15E378);
  sub_1A5246EF4();
}

BOOL sub_1A48A47BC(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_1A52445F4();
  v5 = v4;
  if (v4)
  {
    v18 = *(v4 + 16);
  }

  else
  {
    v18 = 0;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = sub_1A52445F4();
  if (v6)
  {
    v7 = *(v6 + 16);

    if (v5 && v18 == v7)
    {
LABEL_7:
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v8 = sub_1A5244604();
      v10 = v9;
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      if (v8 == sub_1A5244604() && v10 == v11)
      {

        return 0;
      }

      else
      {
        v15 = sub_1A524EAB4();

        return v15 & 1;
      }
    }
  }

  else if (!v5)
  {
    goto LABEL_7;
  }

  v13 = sub_1A52445F4();
  if (v13)
  {
    v14 = *(v13 + 16);
  }

  else
  {
    v14 = -1;
  }

  v16 = sub_1A52445F4();
  if (v16)
  {
    v17 = *(v16 + 16);
  }

  else
  {
    v17 = -1;
  }

  return v17 < v14;
}

uint64_t sub_1A48A4984(uint64_t a1)
{
  v20 = sub_1A5244D34();
  v18 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5244B64();
  v19 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A52448C4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5244C84();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C341C8(a1, v21);
  sub_1A3C34400(0, &qword_1EB124CA0);
  if (swift_dynamicCast())
  {
    (*(v12 + 8))(v14, v11);
    v15 = 1;
  }

  else if (swift_dynamicCast())
  {
    (*(v8 + 8))(v10, v7);
    v15 = 1;
  }

  else
  {
    if (swift_dynamicCast())
    {
      (*(v19 + 8))(v6, v4);
    }

    else
    {
      v16 = v20;
      if (swift_dynamicCast())
      {
        (*(v18 + 8))(v3, v16);
      }
    }

    v15 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v21);
  return v15;
}

uint64_t (*static GenerativeStoryAnimationTokenDataSource.extendedQueryTokenAllowed.getter())()
{
  swift_beginAccess();
  v0 = off_1EE6EBBF0;

  return v0;
}

uint64_t static GenerativeStoryAnimationTokenDataSource.extendedQueryTokenAllowed.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  off_1EE6EBBF0 = a1;
  qword_1EE6EBBF8 = a2;
}

uint64_t sub_1A48A4DD0@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = off_1EE6EBBF0;
  v2 = qword_1EE6EBBF8;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = sub_1A48AD00C;
  a1[1] = v4;
}

uint64_t sub_1A48A4E54(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  off_1EE6EBBF0 = sub_1A48ACFD4;
  qword_1EE6EBBF8 = v3;
}

void static GenerativeStoryAnimationTokenDataSource.elect(extendedTokens:photoLibrary:)(uint64_t a1)
{
  if (qword_1EB15E370 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5246F24();
  __swift_project_value_buffer(v2, qword_1EB15E378);
  v3 = sub_1A5246F04();
  v4 = sub_1A524D264();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A3C1C000, v3, v4, "elect(extendedTokens:photoLibrary:) started.", v5, 2u);
    MEMORY[0x1A590EEC0](v5, -1, -1);
  }

  sub_1A48A98FC(a1);
}

uint64_t sub_1A48A50A8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = MEMORY[0x1E69E7CC0];
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_1A3C341C8(v8, v16);
      v10 = v6(v16);
      if (v3)
      {
        __swift_destroy_boxed_opaque_existential_0(v16);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_1A3C34460(v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A48A580C(0, *(v9 + 16) + 1, 1);
          v9 = v17;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1A48A580C((v12 > 1), v13 + 1, 1);
          v9 = v17;
        }

        *(v9 + 16) = v13 + 1;
        result = sub_1A3C34460(v15, v9 + 40 * v13 + 32);
        v6 = v14;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_0(v16);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v9;
  }

  return result;
}

unint64_t static GenerativeStoryAnimationTokenDataSource.dedupeTexts(originalTexts:)(unint64_t a1)
{
  if (qword_1EB15E370 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5246F24();
  __swift_project_value_buffer(v2, qword_1EB15E378);
  v3 = sub_1A5246F04();
  v4 = sub_1A524D264();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A3C1C000, v3, v4, "dedupeTexts(originalTexts:) started.", v5, 2u);
    MEMORY[0x1A590EEC0](v5, -1, -1);
  }

  v6 = sub_1A48AB8CC(a1);
  if (qword_1EB15E370 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_1EB15E378);
  v7 = sub_1A5246F04();
  v8 = sub_1A524D264();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1A3C1C000, v7, v8, "dedupeTexts(originalTexts:) ended.", v9, 2u);
    MEMORY[0x1A590EEC0](v9, -1, -1);
  }

  return v6;
}

void *sub_1A48A53C8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A48AD040();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A3C34400(0, &qword_1EB124CA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1A48A5508(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  sub_1A48AD0A8(0, a5, 255, a6, MEMORY[0x1E69E6F90]);
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

void *sub_1A48A5700(void *result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1A48A53C8(result, v10, 1, v3);
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

  sub_1A3C34400(0, &qword_1EB124CA0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1A48A580C(void *a1, int64_t a2, char a3)
{
  result = sub_1A48A586C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A48A582C(void *a1, int64_t a2, char a3)
{
  result = sub_1A48A59AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A48A584C(size_t a1, int64_t a2, char a3)
{
  result = sub_1A48A5AFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A48A586C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A48AD040();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A3C34400(0, &qword_1EB124CA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A48A59AC(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A48AD0A8(0, &qword_1EB120280, 255, sub_1A48AD41C, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A48AD41C();
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1A48A5AFC(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1A48AD0A8(0, &qword_1EB120288, 255, sub_1A48AD174, MEMORY[0x1E69E6F90]);
  sub_1A48AD174();
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
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
  sub_1A48AD174();
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
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

uint64_t sub_1A48A5CFC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1A524EA34();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1A3C34400(0, &qword_1EB124CA0);
        v5 = sub_1A524CAC4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1A48A61F4(v7, v8, a1, v4);
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
    return sub_1A48A5F24(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1A48A5E08(uint64_t (*a1)(__int128 *, _BYTE *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_1A524EA34();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      if (v5 < 2)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1A3C34400(0, &qword_1EB124CA0);
        v8 = sub_1A524CAC4();
        *(v8 + 16) = v5 / 2;
      }

      v10[0] = v8 + 32;
      v10[1] = v5 / 2;
      v9 = v8;
      sub_1A48A6A58(v10, v11, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_1A48A60C8(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_1A48A5F24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_6:
    v21 = a3;
    v16 = v6;
    v17 = v5;
    while (1)
    {
      sub_1A3C341C8(v5, &v19);
      sub_1A3C341C8(v5 - 40, v18);
      __swift_project_boxed_opaque_existential_1(&v19, v20);
      v7 = sub_1A5244604();
      v9 = v8;
      __swift_project_boxed_opaque_existential_1(v18, v18[3]);
      if (v7 == sub_1A5244604() && v9 == v10)
      {

        __swift_destroy_boxed_opaque_existential_0(v18);
        result = __swift_destroy_boxed_opaque_existential_0(&v19);
LABEL_5:
        a3 = v21 + 1;
        v5 = v17 + 40;
        v6 = v16 - 1;
        if (v21 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v12 = sub_1A524EAB4();

      __swift_destroy_boxed_opaque_existential_0(v18);
      result = __swift_destroy_boxed_opaque_existential_0(&v19);
      if ((v12 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_1A3C34460(v5, &v19);
      v13 = *(v5 - 24);
      *v5 = *(v5 - 40);
      *(v5 + 16) = v13;
      *(v5 + 32) = *(v5 - 8);
      result = sub_1A3C34460(&v19, v5 - 40);
      v5 -= 40;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A48A60C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, _BYTE *))
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *v4;
    v9 = *v4 + 40 * a3;
    v10 = result - a3;
LABEL_4:
    v15 = v10;
    v18 = v9;
    while (1)
    {
      sub_1A3C341C8(v9, v17);
      sub_1A3C341C8(v9 - 40, v16);
      v11 = a4(v17, v16);
      __swift_destroy_boxed_opaque_existential_0(v16);
      result = __swift_destroy_boxed_opaque_existential_0(v17);
      if (v5)
      {
        break;
      }

      if (v11)
      {
        if (!v8)
        {
          __break(1u);
          return result;
        }

        sub_1A3C34460(v9, v17);
        v12 = *(v9 - 24);
        *v9 = *(v9 - 40);
        *(v9 + 16) = v12;
        *(v9 + 32) = *(v9 - 8);
        result = sub_1A3C34460(v17, v9 - 40);
        v9 -= 40;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v18 + 40;
      v10 = v15 - 1;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1A48A61F4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_104:
    v6 = *v101;
    if (!*v101)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_106:
      v94 = v5;
      v117 = v8;
      v95 = *(v8 + 2);
      if (v95 >= 2)
      {
        while (*a3)
        {
          v96 = *&v8[16 * v95];
          v5 = *&v8[16 * v95 + 24];
          sub_1A48A7144((*a3 + 40 * v96), (*a3 + 40 * *&v8[16 * v95 + 16]), *a3 + 40 * v5, v6);
          if (v94)
          {
          }

          if (v5 < v96)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1A3D86884(v8);
          }

          if (v95 - 2 >= *(v8 + 2))
          {
            goto LABEL_131;
          }

          v97 = &v8[16 * v95];
          *v97 = v96;
          *(v97 + 1) = v5;
          v117 = v8;
          result = sub_1A3D867F8(v95 - 1);
          v8 = v117;
          v95 = *(v117 + 2);
          if (v95 <= 1)
          {
          }
        }

        goto LABEL_141;
      }
    }

LABEL_137:
    result = sub_1A3D86884(v8);
    v8 = result;
    goto LABEL_106;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    v110 = v8;
    if (v7 < v6)
    {
      v10 = *a3;
      sub_1A3C341C8(*a3 + 40 * v7, &v115);
      v102 = v9;
      sub_1A3C341C8(v10 + 40 * v9, v112);
      __swift_project_boxed_opaque_existential_1(&v115, v116);
      v11 = sub_1A5244604();
      v13 = v12;
      __swift_project_boxed_opaque_existential_1(v112, v113);
      v15 = v11 == sub_1A5244604() && v13 == v14;
      v99 = v5;
      if (v15)
      {
        v108 = 0;
      }

      else
      {
        v108 = sub_1A524EAB4();
      }

      __swift_destroy_boxed_opaque_existential_0(v112);
      result = __swift_destroy_boxed_opaque_existential_0(&v115);
      v16 = (v102 + 2);
      v17 = v10 + 40 * v102 + 80;
      v106 = v6;
      v18 = 40 * v102 + 40;
      do
      {
        v20 = v16;
        v21 = v7;
        v5 = v18;
        if (v16 >= v6)
        {
          break;
        }

        sub_1A3C341C8(v17, &v115);
        sub_1A3C341C8(v17 - 40, v112);
        __swift_project_boxed_opaque_existential_1(&v115, v116);
        v22 = sub_1A5244604();
        v24 = v23;
        __swift_project_boxed_opaque_existential_1(v112, v113);
        v26 = v22 == sub_1A5244604() && v24 == v25;
        v19 = v26 ? 0 : sub_1A524EAB4();

        __swift_destroy_boxed_opaque_existential_0(v112);
        result = __swift_destroy_boxed_opaque_existential_0(&v115);
        v16 = (v20 + 1);
        v17 += 40;
        ++v7;
        v18 = v5 + 40;
        v8 = v110;
        v6 = v106;
      }

      while (((v108 ^ v19) & 1) == 0);
      if (v108)
      {
        v9 = v102;
        if (v20 < v102)
        {
          goto LABEL_134;
        }

        if (v102 < v20)
        {
          v6 = v102;
          v27 = 40 * v102;
          do
          {
            if (v6 != v21)
            {
              v29 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v30 = v29 + v27;
              v31 = v29 + v5;
              sub_1A3C34460((v29 + v27), &v115);
              v32 = *(v31 + 32);
              v33 = *(v31 + 16);
              *v30 = *v31;
              *(v30 + 16) = v33;
              *(v30 + 32) = v32;
              result = sub_1A3C34460(&v115, v31);
            }

            ++v6;
            v5 -= 40;
            v27 += 40;
          }

          while (v6 < v21--);
        }

        v7 = v20;
        v5 = v99;
      }

      else
      {
        v7 = v20;
        v5 = v99;
        v9 = v102;
      }
    }

    v34 = a3[1];
    if (v7 < v34)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A3D8598C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v48 = *(v8 + 2);
    v47 = *(v8 + 3);
    v49 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      result = sub_1A3D8598C((v47 > 1), v48 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v49;
    v50 = &v8[16 * v48];
    *(v50 + 4) = v9;
    *(v50 + 5) = v7;
    v51 = *v101;
    if (!*v101)
    {
      goto LABEL_142;
    }

    if (v48)
    {
      while (1)
      {
        v52 = v49 - 1;
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v53 = *(v8 + 4);
          v54 = *(v8 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_73:
          if (v56)
          {
            goto LABEL_121;
          }

          v69 = &v8[16 * v49];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_124;
          }

          v75 = &v8[16 * v52 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_128;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v52 = v49 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v79 = &v8[16 * v49];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_87:
        if (v74)
        {
          goto LABEL_123;
        }

        v82 = &v8[16 * v52];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_126;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_94:
        v90 = v52 - 1;
        if (v52 - 1 >= v49)
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
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v6 = v7;
        v91 = *&v8[16 * v90 + 32];
        v92 = *&v8[16 * v52 + 40];
        sub_1A48A7144((*a3 + 40 * v91), (*a3 + 40 * *&v8[16 * v52 + 32]), *a3 + 40 * v92, v51);
        if (v5)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A3D86884(v8);
        }

        if (v90 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v93 = &v8[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        v117 = v8;
        result = sub_1A3D867F8(v52);
        v8 = v117;
        v49 = *(v117 + 2);
        v7 = v6;
        if (v49 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v8[16 * v49 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_119;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_120;
      }

      v64 = &v8[16 * v49];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_122;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_125;
      }

      if (v68 >= v60)
      {
        v86 = &v8[16 * v52 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_129;
        }

        if (v55 < v89)
        {
          v52 = v49 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_104;
    }
  }

  v35 = &v9[a4];
  if (__OFADD__(v9, a4))
  {
    goto LABEL_135;
  }

  if (v35 >= v34)
  {
    v35 = a3[1];
  }

  if (v35 < v9)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v7 == v35)
  {
    goto LABEL_53;
  }

  v100 = v5;
  v36 = *a3;
  v37 = *a3 + 40 * v7;
  v103 = v9;
  v104 = v35;
  v38 = v9 - v7;
LABEL_42:
  v107 = v37;
  v109 = v7;
  v105 = v38;
  while (1)
  {
    sub_1A3C341C8(v37, &v115);
    sub_1A3C341C8(v37 - 40, v112);
    __swift_project_boxed_opaque_existential_1(&v115, v116);
    v39 = sub_1A5244604();
    v41 = v40;
    v6 = v114;
    __swift_project_boxed_opaque_existential_1(v112, v113);
    if (v39 == sub_1A5244604() && v41 == v42)
    {

      __swift_destroy_boxed_opaque_existential_0(v112);
      __swift_destroy_boxed_opaque_existential_0(&v115);
LABEL_41:
      v7 = v109 + 1;
      v37 = v107 + 40;
      v38 = v105 - 1;
      if (v109 + 1 == v104)
      {
        v7 = v104;
        v5 = v100;
        v8 = v110;
        v9 = v103;
        goto LABEL_53;
      }

      goto LABEL_42;
    }

    v44 = sub_1A524EAB4();

    __swift_destroy_boxed_opaque_existential_0(v112);
    result = __swift_destroy_boxed_opaque_existential_0(&v115);
    if ((v44 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v36)
    {
      break;
    }

    sub_1A3C34460(v37, &v115);
    v45 = *(v37 - 24);
    *v37 = *(v37 - 40);
    *(v37 + 16) = v45;
    *(v37 + 32) = *(v37 - 8);
    sub_1A3C34460(&v115, v37 - 40);
    v37 -= 40;
    if (__CFADD__(v38++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_1A48A6A58(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(__int128 *, _BYTE *), uint64_t a5, uint64_t a6)
{
  v7 = a3;
  v101 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v8 = *v101;
    if (*v101)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_95;
    }

    goto LABEL_134;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v12 >= v8)
    {
      v8 = v12;
    }

    else
    {
      v13 = *v7;
      sub_1A3C341C8(*v7 + 40 * v12, v106);
      sub_1A3C341C8(v13 + 40 * v11, v105);
      v14 = a4(v106, v105);
      if (v6)
      {
LABEL_105:
        __swift_destroy_boxed_opaque_existential_0(v105);
        __swift_destroy_boxed_opaque_existential_0(v106);
      }

      v15 = v14;
      __swift_destroy_boxed_opaque_existential_0(v105);
      result = __swift_destroy_boxed_opaque_existential_0(v106);
      v16 = 0;
      v17 = v11;
      v18 = v11 - v8 + 2;
      v97 = v17;
      v19 = 40 * v17;
      v20 = v13 + 40 * v17 + 80;
      do
      {
        if (!(v18 + v16))
        {
          v11 = v97;
          v22 = v8 - 1;
          if ((v15 & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_13;
        }

        sub_1A3C341C8(v20, v106);
        sub_1A3C341C8(v20 - 40, v105);
        v21 = a4(v106, v105);
        __swift_destroy_boxed_opaque_existential_0(v105);
        result = __swift_destroy_boxed_opaque_existential_0(v106);
        ++v16;
        v20 += 40;
      }

      while (((v15 ^ v21) & 1) == 0);
      v11 = v97;
      v22 = v97 + v16;
      v8 = v97 + v16 + 1;
      if ((v15 & 1) == 0)
      {
LABEL_15:
        v7 = a3;
        goto LABEL_23;
      }

LABEL_13:
      if (v8 < v11)
      {
        goto LABEL_128;
      }

      if (v11 > v22)
      {
        goto LABEL_15;
      }

      v23 = 40 * v8 - 40;
      v24 = v11;
      v25 = v8;
      do
      {
        if (v24 != --v25)
        {
          v30 = *a3;
          if (!*a3)
          {
            goto LABEL_132;
          }

          v26 = v30 + v19;
          v27 = v30 + v23;
          sub_1A3C34460((v30 + v19), v106);
          v28 = *(v27 + 32);
          v29 = *(v27 + 16);
          *v26 = *v27;
          *(v26 + 16) = v29;
          *(v26 + 32) = v28;
          result = sub_1A3C34460(v106, v27);
        }

        ++v24;
        v23 -= 40;
        v19 += 40;
      }

      while (v24 < v25);
      v7 = a3;
      v11 = v97;
    }

LABEL_23:
    v31 = *(v7 + 8);
    if (v8 >= v31)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v8, v11))
    {
      goto LABEL_124;
    }

    if (v8 - v11 >= a6)
    {
      goto LABEL_32;
    }

    if (__OFADD__(v11, a6))
    {
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (v11 + a6 >= v31)
    {
      v32 = *(v7 + 8);
    }

    else
    {
      v32 = v11 + a6;
    }

    if (v32 < v11)
    {
      goto LABEL_127;
    }

    if (v8 == v32)
    {
LABEL_32:
      v33 = v8;
    }

    else
    {
      v81 = *v7;
      v82 = v81 + 40 * v8;
      v98 = v11;
      v100 = v32;
      v83 = v11 - v8;
      do
      {
        v95 = v83;
        v84 = v82;
        v85 = v82;
        do
        {
          sub_1A3C341C8(v85, v106);
          sub_1A3C341C8(v85 - 40, v105);
          v86 = a4(v106, v105);
          if (v6)
          {
            goto LABEL_105;
          }

          v87 = v86;
          __swift_destroy_boxed_opaque_existential_0(v105);
          result = __swift_destroy_boxed_opaque_existential_0(v106);
          if ((v87 & 1) == 0)
          {
            break;
          }

          if (!v81)
          {
            goto LABEL_130;
          }

          sub_1A3C34460(v85, v106);
          v88 = *(v85 - 24);
          *v85 = *(v85 - 40);
          *(v85 + 16) = v88;
          *(v85 + 32) = *(v85 - 8);
          sub_1A3C34460(v106, v85 - 40);
          v85 -= 40;
        }

        while (!__CFADD__(v83++, 1));
        ++v8;
        v82 = v84 + 40;
        v83 = v95 - 1;
        v33 = v100;
      }

      while (v8 != v100);
      v7 = a3;
      v11 = v98;
    }

    v8 = 40;
    if (v33 < v11)
    {
      goto LABEL_123;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A3D8598C(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v35 = *(v10 + 2);
    v34 = *(v10 + 3);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_1A3D8598C((v34 > 1), v35 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v36;
    v37 = &v10[16 * v35];
    *(v37 + 4) = v11;
    *(v37 + 5) = v33;
    v38 = *v101;
    if (!*v101)
    {
      goto LABEL_133;
    }

    v99 = v33;
    if (v35)
    {
      break;
    }

LABEL_3:
    v8 = *(v7 + 8);
    v9 = v99;
    if (v99 >= v8)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v39 = v36 - 1;
    if (v36 >= 4)
    {
      v44 = &v10[16 * v36 + 32];
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_110;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_111;
      }

      v51 = &v10[16 * v36];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_113;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_116;
      }

      if (v55 >= v47)
      {
        v73 = &v10[16 * v39 + 32];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_122;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

    if (v36 == 3)
    {
      v40 = *(v10 + 4);
      v41 = *(v10 + 5);
      v50 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      v43 = v50;
LABEL_53:
      if (v43)
      {
        goto LABEL_112;
      }

      v56 = &v10[16 * v36];
      v58 = *v56;
      v57 = *(v56 + 1);
      v59 = __OFSUB__(v57, v58);
      v60 = v57 - v58;
      v61 = v59;
      if (v59)
      {
        goto LABEL_115;
      }

      v62 = &v10[16 * v39 + 32];
      v64 = *v62;
      v63 = *(v62 + 1);
      v50 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v50)
      {
        goto LABEL_118;
      }

      if (__OFADD__(v60, v65))
      {
        goto LABEL_119;
      }

      if (v60 + v65 >= v42)
      {
        if (v42 < v65)
        {
          v39 = v36 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_67;
    }

    v66 = &v10[16 * v36];
    v68 = *v66;
    v67 = *(v66 + 1);
    v50 = __OFSUB__(v67, v68);
    v60 = v67 - v68;
    v61 = v50;
LABEL_67:
    if (v61)
    {
      goto LABEL_114;
    }

    v69 = &v10[16 * v39];
    v71 = *(v69 + 4);
    v70 = *(v69 + 5);
    v50 = __OFSUB__(v70, v71);
    v72 = v70 - v71;
    if (v50)
    {
      goto LABEL_117;
    }

    if (v72 < v60)
    {
      goto LABEL_3;
    }

LABEL_74:
    v77 = v39 - 1;
    if (v39 - 1 >= v36)
    {
      break;
    }

    if (!*v7)
    {
      goto LABEL_129;
    }

    v78 = *&v10[16 * v77 + 32];
    v79 = *&v10[16 * v39 + 40];
    sub_1A48A7560((*v7 + 40 * v78), (*v7 + 40 * *&v10[16 * v39 + 32]), *v7 + 40 * v79, v38, a4, a5);
    if (v6)
    {
    }

    if (v79 < v78)
    {
      goto LABEL_108;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1A3D86884(v10);
    }

    if (v77 >= *(v10 + 2))
    {
      goto LABEL_109;
    }

    v80 = &v10[16 * v77];
    *(v80 + 4) = v78;
    *(v80 + 5) = v79;
    v107 = v10;
    result = sub_1A3D867F8(v39);
    v10 = v107;
    v36 = *(v107 + 2);
    if (v36 <= 1)
    {
      goto LABEL_3;
    }
  }

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
  result = sub_1A3D86884(v10);
  v10 = result;
LABEL_95:
  v107 = v10;
  v90 = *(v10 + 2);
  if (v90 < 2)
  {
  }

  v91 = v7;
  v7 = 40;
  while (*v91)
  {
    v92 = *&v10[16 * v90];
    v93 = *&v10[16 * v90 + 24];
    sub_1A48A7560((*v91 + 40 * v92), (*v91 + 40 * *&v10[16 * v90 + 16]), *v91 + 40 * v93, v8, a4, a5);
    if (v6)
    {
    }

    if (v93 < v92)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1A3D86884(v10);
    }

    if (v90 - 2 >= *(v10 + 2))
    {
      goto LABEL_121;
    }

    v94 = &v10[16 * v90];
    *v94 = v92;
    *(v94 + 1) = v93;
    v107 = v10;
    result = sub_1A3D867F8(v90 - 1);
    v10 = v107;
    v90 = *(v107 + 2);
    if (v90 <= 1)
    {
    }
  }

LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1A48A7144(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v7 = a2;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 40;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 40;
  if (v9 >= v11)
  {
    if (a4 != a2 || &a2[40 * v11] <= a4)
    {
      memmove(a4, a2, 40 * v11);
      v7 = a2;
    }

    v48 = &v4[40 * v11];
    if (v10 >= 40 && v7 > __src)
    {
      v24 = v7;
      v43 = v4;
      do
      {
        __dst = v24;
        v25 = (v24 - 40);
        v26 = (v48 - 40);
        v5 -= 40;
        while (1)
        {
          sub_1A3C341C8(v26, v46);
          v29 = v25;
          sub_1A3C341C8(v25, v44);
          __swift_project_boxed_opaque_existential_1(v46, v47);
          v30 = sub_1A5244604();
          v32 = v31;
          __swift_project_boxed_opaque_existential_1(v44, v45);
          v34 = v30 == sub_1A5244604() && v32 == v33;
          v35 = v34 ? 0 : sub_1A524EAB4();

          __swift_destroy_boxed_opaque_existential_0(v44);
          __swift_destroy_boxed_opaque_existential_0(v46);
          if (v35)
          {
            break;
          }

          if (v5 + 40 != v26 + 40)
          {
            v36 = *v26;
            v37 = *(v26 + 16);
            *(v5 + 32) = *(v26 + 32);
            *v5 = v36;
            *(v5 + 16) = v37;
          }

          v27 = v26 - 40;
          v5 -= 40;
          v28 = v26 > v43;
          v26 -= 40;
          v25 = v29;
          if (!v28)
          {
            v48 = (v27 + 40);
            v7 = __dst;
            v4 = v43;
            goto LABEL_43;
          }
        }

        v7 = v29;
        if ((v5 + 40) != __dst)
        {
          v38 = *v29;
          v39 = *(v29 + 1);
          *(v5 + 32) = *(v29 + 4);
          *v5 = v38;
          *(v5 + 16) = v39;
        }

        v48 = (v26 + 40);
        v4 = v43;
        if (v26 + 40 <= v43)
        {
          break;
        }

        v24 = v7;
      }

      while (v7 > __src);
      v48 = (v26 + 40);
    }
  }

  else
  {
    if (a4 != __src || &__src[40 * v9] <= a4)
    {
      memmove(a4, __src, 40 * v9);
      v7 = a2;
    }

    v48 = &v4[40 * v9];
    if (v8 >= 40 && v7 < v5)
    {
      while (1)
      {
        v13 = v7;
        sub_1A3C341C8(v7, v46);
        sub_1A3C341C8(v4, v44);
        __swift_project_boxed_opaque_existential_1(v46, v47);
        v14 = sub_1A5244604();
        v16 = v15;
        __swift_project_boxed_opaque_existential_1(v44, v45);
        v18 = v14 == sub_1A5244604() && v16 == v17;
        if (v18)
        {
          break;
        }

        v19 = sub_1A524EAB4();

        __swift_destroy_boxed_opaque_existential_0(v44);
        __swift_destroy_boxed_opaque_existential_0(v46);
        if ((v19 & 1) == 0)
        {
          goto LABEL_15;
        }

        v20 = v13;
        v7 = v13 + 40;
        if (__src != v13)
        {
          goto LABEL_16;
        }

LABEL_17:
        __src += 40;
        if (v4 >= v48 || v7 >= v5)
        {
          goto LABEL_19;
        }
      }

      __swift_destroy_boxed_opaque_existential_0(v44);
      __swift_destroy_boxed_opaque_existential_0(v46);
LABEL_15:
      v20 = v4;
      v18 = __src == v4;
      v4 += 40;
      v7 = v13;
      if (v18)
      {
        goto LABEL_17;
      }

LABEL_16:
      v21 = *v20;
      v22 = *(v20 + 1);
      *(__src + 4) = *(v20 + 4);
      *__src = v21;
      *(__src + 1) = v22;
      goto LABEL_17;
    }

LABEL_19:
    v7 = __src;
  }

LABEL_43:
  v40 = (v48 - v4) / 40;
  if (v7 != v4 || v7 >= &v4[40 * v40])
  {
    memmove(v7, v4, 40 * v40);
  }

  return 1;
}

uint64_t sub_1A48A7560(char *__dst, char *__src, unint64_t a3, char *a4, uint64_t (*a5)(_BYTE *, _BYTE *), uint64_t a6)
{
  v43 = a6;
  v7 = a4;
  v8 = a3;
  v9 = __src;
  v10 = __dst;
  v11 = __src - __dst;
  v12 = (__src - __dst) / 40;
  v13 = a3 - __src;
  v14 = (a3 - __src) / 40;
  if (v12 < v14)
  {
    if (a4 != __dst || &__dst[40 * v12] <= a4)
    {
      memmove(a4, __dst, 40 * v12);
    }

    v15 = v7 + 40 * v12;
    if (v11 < 40)
    {
LABEL_6:
      v9 = v10;
      goto LABEL_42;
    }

    while (1)
    {
      if (v9 >= v8)
      {
        goto LABEL_6;
      }

      sub_1A3C341C8(v9, v42);
      sub_1A3C341C8(v7, v41);
      v20 = a5(v42, v41);
      if (v6)
      {
        __swift_destroy_boxed_opaque_existential_0(v41);
        __swift_destroy_boxed_opaque_existential_0(v42);
        v36 = (v15 - v7) / 40;
        if (v10 < v7 || v10 >= v7 + 40 * v36 || v10 != v7)
        {
          v35 = 40 * v36;
          v34 = v10;
          goto LABEL_46;
        }

        return 1;
      }

      v21 = v20;
      __swift_destroy_boxed_opaque_existential_0(v41);
      __swift_destroy_boxed_opaque_existential_0(v42);
      if (v21)
      {
        break;
      }

      v16 = v7;
      v17 = v10 == v7;
      v7 += 40;
      if (!v17)
      {
        goto LABEL_8;
      }

LABEL_9:
      v10 += 40;
      if (v7 >= v15)
      {
        goto LABEL_6;
      }
    }

    v16 = v9;
    v17 = v10 == v9;
    v9 += 40;
    if (v17)
    {
      goto LABEL_9;
    }

LABEL_8:
    v18 = *v16;
    v19 = *(v16 + 1);
    *(v10 + 4) = *(v16 + 4);
    *v10 = v18;
    *(v10 + 1) = v19;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[40 * v14] <= a4)
  {
    memmove(a4, __src, 40 * v14);
  }

  v15 = v7 + 40 * v14;
  if (v13 < 40 || v9 <= v10)
  {
LABEL_42:
    v37 = (v15 - v7) / 40;
    if (v9 < v7 || v9 >= v7 + 40 * v37 || v9 != v7)
    {
      v35 = 40 * v37;
      v34 = v9;
      goto LABEL_46;
    }

    return 1;
  }

  v22 = -v7;
LABEL_22:
  v39 = v9;
  v9 -= 40;
  v23 = v15 - 40;
  v24 = v22 + v15;
  v8 -= 40;
  while (1)
  {
    sub_1A3C341C8(v23, v42);
    sub_1A3C341C8(v9, v41);
    v27 = a5(v42, v41);
    if (v6)
    {
      break;
    }

    v28 = v27;
    __swift_destroy_boxed_opaque_existential_0(v41);
    __swift_destroy_boxed_opaque_existential_0(v42);
    if (v28)
    {
      if (v8 + 40 != v39)
      {
        v31 = *v9;
        v32 = *(v9 + 1);
        *(v8 + 32) = *(v9 + 4);
        *v8 = v31;
        *(v8 + 16) = v32;
      }

      v15 = v23 + 40;
      if (v23 + 40 <= v7 || (v22 = -v7, v9 <= v10))
      {
        v15 = v23 + 40;
        goto LABEL_42;
      }

      goto LABEL_22;
    }

    if (v8 + 40 != v23 + 40)
    {
      v29 = *v23;
      v30 = *(v23 + 16);
      *(v8 + 32) = *(v23 + 32);
      *v8 = v29;
      *(v8 + 16) = v30;
    }

    v25 = v23 - 40;
    v24 -= 40;
    v8 -= 40;
    v26 = v23 > v7;
    v23 -= 40;
    if (!v26)
    {
      v15 = v25 + 40;
      v9 = v39;
      goto LABEL_42;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v41);
  __swift_destroy_boxed_opaque_existential_0(v42);
  v33 = v24 / 40;
  v34 = v39;
  if (v39 < v7 || v39 >= v7 + 40 * v33 || v39 != v7)
  {
    v35 = 40 * v33;
LABEL_46:
    memmove(v34, v7, v35);
  }

  return 1;
}

void sub_1A48A7914(uint64_t a1, int a2, void *a3)
{
  v7 = sub_1A5244C84();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48AD10C();
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *(a1 + 16);
  if (!v64)
  {
    goto LABEL_23;
  }

  LODWORD(v61) = a2;
  v16 = &v15[*(v12 + 48)];
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v63 = *(v13 + 72);
  v65 = a1;
  v58 = v17;
  v59 = v3;
  sub_1A48AD478(a1 + v17, &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), sub_1A48AD10C);
  v60 = v8;
  v66 = *(v8 + 32);
  v67 = v7;
  v66(v10, v15, v7);
  v62 = v16;
  v18 = *v16;
  v19 = *(v16 + 1);
  v68 = a3;
  v20 = *a3;
  v22 = sub_1A48A87C4(v10);
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v26 = v21;
  if (*(v20 + 24) >= v25)
  {
    v29 = v67;
    if (v61)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1A48A8A1C();
      if ((v26 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_1A48A8F14(v25, v61 & 1);
  v27 = sub_1A48A87C4(v10);
  if ((v26 & 1) == (v28 & 1))
  {
    v22 = v27;
    v29 = v67;
    if ((v26 & 1) == 0)
    {
LABEL_13:
      v32 = *v68;
      *(*v68 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v33 = v32[6];
      v61 = *(v60 + 72);
      v66((v33 + v61 * v22), v10, v29);
      v34 = (v32[7] + 16 * v22);
      *v34 = v18;
      v34[1] = v19;
      v35 = v32[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (!v36)
      {
        v32[2] = v37;
        v38 = v65;
        if (v64 != 1)
        {
          v39 = v65 + v63 + v58;
          v40 = 1;
          while (v40 < *(v38 + 16))
          {
            sub_1A48AD478(v39, v15, sub_1A48AD10C);
            v66(v10, v15, v67);
            v41 = *v62;
            v42 = *(v62 + 1);
            v43 = *v68;
            v44 = sub_1A48A87C4(v10);
            v46 = v43[2];
            v47 = (v45 & 1) == 0;
            v36 = __OFADD__(v46, v47);
            v48 = v46 + v47;
            if (v36)
            {
              goto LABEL_25;
            }

            v49 = v45;
            if (v43[3] < v48)
            {
              sub_1A48A8F14(v48, 1);
              v44 = sub_1A48A87C4(v10);
              if ((v49 & 1) != (v50 & 1))
              {
                goto LABEL_28;
              }
            }

            if (v49)
            {
              v29 = v67;
              goto LABEL_10;
            }

            v51 = v67;
            v52 = *v68;
            *(*v68 + 8 * (v44 >> 6) + 64) |= 1 << v44;
            v53 = v44;
            v66((v52[6] + v61 * v44), v10, v51);
            v54 = (v52[7] + 16 * v53);
            *v54 = v41;
            v54[1] = v42;
            v55 = v52[2];
            v36 = __OFADD__(v55, 1);
            v56 = v55 + 1;
            if (v36)
            {
              goto LABEL_26;
            }

            ++v40;
            v52[2] = v56;
            v39 += v63;
            v38 = v65;
            if (v64 == v40)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_27;
        }

LABEL_23:

        return;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_10:
    v30 = swift_allocError();
    swift_willThrow();
    v71 = v30;
    v31 = v30;
    sub_1A3C34400(0, &qword_1EB126160);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v60 + 8))(v10, v29);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_1A524EB84();
  __break(1u);
LABEL_29:
  v69 = 0;
  v70 = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD00000000000001BLL, 0x80000001A53C2450);
  sub_1A524E624();
  MEMORY[0x1A5907B60](39, 0xE100000000000000);
  sub_1A524E6E4();
  __break(1u);
}

uint64_t sub_1A48A7EA0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

void sub_1A48A8254(uint64_t a1, char a2, void *a3)
{
  v59 = sub_1A5244C84();
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48AD174();
  v56 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = *(a1 + 16);
  if (!v54)
  {
    goto LABEL_24;
  }

  v50 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v56 + 80);
  v55 = a1;
  v14 = (v57 + 32);
  v52 = a1 + ((v13 + 32) & ~v13);
  sub_1A48AD478(v52, v11, sub_1A48AD174);
  v15 = v11[1];
  v62 = *v11;
  v16 = v62;
  v63 = v15;
  v17 = *v14;
  v53 = v12;
  v51 = v17;
  v17(v58, v11 + v12, v59);
  v18 = *a3;
  v20 = sub_1A3C5DCA4(v16, v15);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1A48A8C9C();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_1A48A92EC(v23, a2 & 1);
  v25 = sub_1A3C5DCA4(v16, v15);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v29 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v30 = (v29[6] + 16 * v20);
      *v30 = v16;
      v30[1] = v15;
      v51((v29[7] + *(v57 + 72) * v20), v58, v59);
      v31 = v29[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v29[2] = v33;
      if (v54 != 1)
      {
        v34 = 1;
        while (v34 < *(v55 + 16))
        {
          sub_1A48AD478(v52 + *(v56 + 72) * v34, v11, sub_1A48AD174);
          v35 = v11[1];
          v62 = *v11;
          v36 = v62;
          v63 = v35;
          v37 = *v14;
          (*v14)(v58, v11 + v53, v59);
          v38 = *a3;
          v39 = sub_1A3C5DCA4(v36, v35);
          v41 = v38[2];
          v42 = (v40 & 1) == 0;
          v32 = __OFADD__(v41, v42);
          v43 = v41 + v42;
          if (v32)
          {
            goto LABEL_26;
          }

          v44 = v40;
          if (v38[3] < v43)
          {
            sub_1A48A92EC(v43, 1);
            v39 = sub_1A3C5DCA4(v36, v35);
            if ((v44 & 1) != (v45 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v44)
          {
            goto LABEL_11;
          }

          v46 = *a3;
          *(*a3 + 8 * (v39 >> 6) + 64) |= 1 << v39;
          v47 = (v46[6] + 16 * v39);
          *v47 = v36;
          v47[1] = v35;
          v37((v46[7] + *(v57 + 72) * v39), v58, v59);
          v48 = v46[2];
          v32 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v32)
          {
            goto LABEL_27;
          }

          ++v34;
          v46[2] = v49;
          if (v54 == v34)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v27 = swift_allocError();
    swift_willThrow();
    v64 = v27;
    v28 = v27;
    sub_1A3C34400(0, &qword_1EB126160);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v57 + 8))(v58, v59);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_1A524EB84();
  __break(1u);
LABEL_29:
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD00000000000001BLL, 0x80000001A53C2450);
  sub_1A524E624();
  MEMORY[0x1A5907B60](39, 0xE100000000000000);
  sub_1A524E6E4();
  __break(1u);
}

unint64_t sub_1A48A87C4(uint64_t a1)
{
  sub_1A5244C84();
  sub_1A48AD4E0(&qword_1EB124C40, MEMORY[0x1E69C11D0]);
  v2 = sub_1A524C4A4();

  return sub_1A48A885C(a1, v2);
}

unint64_t sub_1A48A885C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1A5244C84();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1A48AD4E0(&qword_1EB124C38, MEMORY[0x1E69C11D0]);
      v16 = sub_1A524C594();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void *sub_1A48A8A1C()
{
  v1 = v0;
  v35 = sub_1A5244C84();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48AD380();
  v3 = *v0;
  v4 = sub_1A524E764();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = (v3 + 64);
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, v30, 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v33 = v3;
    if (v13)
    {
      v15 = __clz(__rbit64(v13));
      v38 = (v13 - 1) & v13;
      goto LABEL_17;
    }

    v16 = 0;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v29;
        v5 = v36;
        goto LABEL_20;
      }

      v17 = *(v30 + v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = v37;
        v20 = *(v37 + 72) * v18;
        v21 = v34;
        v22 = v35;
        (*(v37 + 16))(v34, *(v3 + 48) + v20, v35);
        v23 = 16 * v18;
        v24 = (*(v3 + 56) + 16 * v18);
        v25 = *v24;
        v26 = v24[1];
        v27 = v36;
        (*(v19 + 32))(*(v36 + 48) + v20, v21, v22);
        v28 = (*(v27 + 56) + v23);
        *v28 = v25;
        v28[1] = v26;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {

LABEL_20:
    *v1 = v5;
  }

  return result;
}

void *sub_1A48A8C9C()
{
  v1 = v0;
  v36 = sub_1A5244C84();
  v38 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48AD1DC();
  v3 = *v0;
  v4 = sub_1A524E764();
  v5 = v4;
  if (*(v3 + 16))
  {
    v31 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v37 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    v34 = v3;
    if (v13)
    {
      v15 = __clz(__rbit64(v13));
      v39 = (v13 - 1) & v13;
      goto LABEL_17;
    }

    v16 = 0;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v31;
        v5 = v37;
        goto LABEL_20;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v39 = (v17 - 1) & v17;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = *(v3 + 56);
        v21 = (*(v3 + 48) + 16 * v18);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v18;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, v20 + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v19);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {

LABEL_20:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_1A48A8F14(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1A5244C84();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1A48AD380();
  v44 = a2;
  result = sub_1A524E774();
  v11 = result;
  if (*(v9 + 16))
  {
    v49 = v8;
    v40 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v6;
    v45 = (v6 + 32);
    v18 = result + 64;
    v43 = v9;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v48 = *(v6 + 72);
      v27 = v26 + v48 * v25;
      if ((v44 & 1) == 0)
      {
        (*v41)(v49, v27, v5);
        v30 = (*(v9 + 56) + 16 * v25);
        v31 = *v30;
        v46 = v30[1];
        v47 = v31;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      (*v45)(v49, v27, v5);
      v28 = (*(v9 + 56) + 16 * v25);
      v29 = *v28;
      v46 = v28[1];
      v47 = v29;
      sub_1A48AD4E0(&qword_1EB124C40, MEMORY[0x1E69C11D0]);
      result = sub_1A524C4A4();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v11 + 48) + v48 * v19, v49, v5);
      v20 = (*(v11 + 56) + 16 * v19);
      v21 = v46;
      *v20 = v47;
      v20[1] = v21;
      ++*(v11 + 16);
      v6 = v42;
      v9 = v43;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v9 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1A48A92EC(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_1A5244C84();
  v5 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1A48AD1DC();
  v42 = a2;
  result = sub_1A524E774();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if ((v42 & 1) == 0)
      {
        (*v39)(v44, v28, v45);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      (*v43)(v44, v28, v45);
      sub_1A524EC94();
      sub_1A524C794();
      result = sub_1A524ECE4();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1A48A9674(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1A3C34460(&v12, v10 + 40 * a1 + 32);
}

void _s12PhotosUICore39GenerativeStoryAnimationTokenDataSourceO25filterQueryExtendedTokens05querykL0Say0A12Intelligence0kF0_pGAH_tFZ_0()
{
  if (qword_1EB15E370 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5246F24();
  __swift_project_value_buffer(v0, qword_1EB15E378);
  v1 = sub_1A5246F04();
  v2 = sub_1A524D264();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1A3C1C000, v1, v2, "filterQueryExtendedTokens(queryExtendedTokens:) started.", v3, 2u);
    MEMORY[0x1A590EEC0](v3, -1, -1);
  }

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A48A98FC(uint64_t a1)
{
  v41 = sub_1A5244C54();
  v37 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v35 - v4;
  v5 = sub_1A5244B74();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB15E370 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v36 = sub_1A5246F24();
    __swift_project_value_buffer(v36, qword_1EB15E378);
    v9 = sub_1A5246F04();
    v10 = sub_1A524D264();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1A3C1C000, v9, v10, "filterExtendedToken(extendedTokens:) started.", v11, 2u);
      MEMORY[0x1A590EEC0](v11, -1, -1);
    }

    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = a1 + 32;
      v14 = MEMORY[0x1E69E7CC0];
      v15 = (v6 + 1);
      v6 = &qword_1EB124CA0;
      do
      {
        sub_1A3C341C8(v13, &v45);
        sub_1A3C341C8(&v45, v44);
        sub_1A3C34400(0, &qword_1EB124CA0);
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_0(&v45);
          (*v15)(v8, v5);
        }

        else
        {
          sub_1A3C34460(&v45, v44);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v48 = v14;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1A48A580C(0, *(v14 + 16) + 1, 1);
            v14 = v48;
          }

          v18 = *(v14 + 16);
          v17 = *(v14 + 24);
          if (v18 >= v17 >> 1)
          {
            sub_1A48A580C((v17 > 1), v18 + 1, 1);
            v14 = v48;
          }

          *(v14 + 16) = v18 + 1;
          sub_1A3C34460(v44, v14 + 40 * v18 + 32);
          v6 = &qword_1EB124CA0;
        }

        v13 += 40;
        --v12;
      }

      while (v12);
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    v19 = *(v14 + 16);
    if (v19)
    {
      v20 = 0;
      a1 = v14 + 32;
      v5 = MEMORY[0x1E69E7CC0];
      while (v20 < *(v14 + 16))
      {
        sub_1A3C341C8(a1, &v45);
        v8 = v47;
        __swift_project_boxed_opaque_existential_1(&v45, v46);
        v21 = sub_1A5244604();
        v6 = v22;

        v23 = (v6 >> 56) & 0xF;
        if ((v6 & 0x2000000000000000) == 0)
        {
          v23 = v21 & 0xFFFFFFFFFFFFLL;
        }

        if (v23)
        {
          sub_1A3C34460(&v45, v44);
          v24 = swift_isUniquelyReferenced_nonNull_native();
          v48 = v5;
          if ((v24 & 1) == 0)
          {
            sub_1A48A580C(0, *(v5 + 16) + 1, 1);
            v5 = v48;
          }

          v8 = *(v5 + 16);
          v25 = *(v5 + 24);
          v6 = (v8 + 1);
          if (v8 >= v25 >> 1)
          {
            sub_1A48A580C((v25 > 1), v8 + 1, 1);
            v5 = v48;
          }

          *(v5 + 16) = v6;
          sub_1A3C34460(v44, v5 + 40 * v8 + 32);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(&v45);
        }

        ++v20;
        a1 += 40;
        if (v19 == v20)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
LABEL_29:

      v40 = *(v5 + 16);
      if (!v40)
      {
LABEL_40:
        _s12PhotosUICore39GenerativeStoryAnimationTokenDataSourceO25filterQueryExtendedTokens05querykL0Say0A12Intelligence0kF0_pGAH_tFZ_0();
      }

      v8 = 0;
      v26 = v5 + 32;
      v39 = *MEMORY[0x1E69C11B0];
      v38 = (v37 + 104);
      v27 = (v37 + 8);
      a1 = MEMORY[0x1E69E7CC0];
      while (v8 < *(v5 + 16))
      {
        sub_1A3C341C8(v26, &v45);
        __swift_project_boxed_opaque_existential_1(&v45, v46);
        v28 = v42;
        sub_1A5244614();
        v29 = v43;
        v30 = v41;
        (*v38)(v43, v39, v41);
        sub_1A48AD4E0(&qword_1EB124C48, MEMORY[0x1E69C11B8]);
        v31 = sub_1A524C594();
        v6 = *v27;
        (*v27)(v29, v30);
        (v6)(v28, v30);
        if (v31)
        {
          __swift_destroy_boxed_opaque_existential_0(&v45);
        }

        else
        {
          sub_1A3C34460(&v45, v44);
          v32 = swift_isUniquelyReferenced_nonNull_native();
          v48 = a1;
          if ((v32 & 1) == 0)
          {
            sub_1A48A580C(0, *(a1 + 16) + 1, 1);
            a1 = v48;
          }

          v34 = *(a1 + 16);
          v33 = *(a1 + 24);
          v6 = (v34 + 1);
          if (v34 >= v33 >> 1)
          {
            sub_1A48A580C((v33 > 1), v34 + 1, 1);
            a1 = v48;
          }

          *(a1 + 16) = v6;
          sub_1A3C34460(v44, a1 + 40 * v34 + 32);
        }

        ++v8;
        v26 += 40;
        if (v40 == v8)
        {
          goto LABEL_40;
        }
      }
    }

    __break(1u);
    __break(1u);
LABEL_43:
    swift_once();
  }
}

void sub_1A48AA1B0()
{
  if (qword_1EB15E370 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5246F24();
  __swift_project_value_buffer(v0, qword_1EB15E378);
  oslog = sub_1A5246F04();
  v1 = sub_1A524D264();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1A3C1C000, oslog, v1, "localizedNameByPersonExtendedToken(for:photoLibrary:) ended.", v2, 2u);
    MEMORY[0x1A590EEC0](v2, -1, -1);
  }
}

unint64_t sub_1A48AA298(uint64_t a1)
{
  sub_1A48AD10C();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A48AD380();
    v8 = sub_1A524E794();
    v9 = &v6[*(v3 + 48)];
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A48AD478(v10, v6, sub_1A48AD10C);
      result = sub_1A48A87C4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1A5244C84();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = (v8[7] + 16 * v14);
      v18 = *(v9 + 1);
      *v17 = *v9;
      v17[1] = v18;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1A48AA474(uint64_t a1, uint64_t a2)
{
  v30[12] = a2;
  sub_1A48AD0A8(0, &qword_1EB124C20, 255, sub_1A48AD10C, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30[16] = v30 - v4;
  sub_1A48AD10C();
  v30[15] = v5;
  v30[9] = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v30[2] = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v30[1] = v30 - v8;
  v9 = sub_1A5244C84();
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v30[10] = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v30[11] = v30 - v12;
  sub_1A48AD174();
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EB15E370 != -1)
  {
    swift_once();
  }

  v16 = sub_1A5246F24();
  v30[13] = __swift_project_value_buffer(v16, qword_1EB15E378);
  v17 = sub_1A5246F04();
  v18 = sub_1A524D264();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1A3C1C000, v17, v18, "localizedNameByPersonExtendedToken(for:photoLibrary:) started.", v19, 2u);
    MEMORY[0x1A590EEC0](v19, -1, -1);
  }

  v36 = v9;

  v20 = *(a1 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1A48A584C(0, v20, 0);
    v21 = v37;
    v22 = *(v31 + 16);
    v32 = a1;
    v33 = v22;
    v23 = a1 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v24 = *(v31 + 72);
    v25 = v20;
    do
    {
      v33(v15 + *(v35 + 48), v23, v36);
      *v15 = sub_1A5244C74();
      v15[1] = v26;
      v37 = v21;
      v28 = *(v21 + 16);
      v27 = *(v21 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1A48A584C(v27 > 1, v28 + 1, 1);
        v21 = v37;
      }

      *(v21 + 16) = v28 + 1;
      sub_1A48AD318(v15, v21 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v28, sub_1A48AD174);
      v23 += v24;
      --v25;
    }

    while (v25);
  }

  if (*(v21 + 16))
  {
    sub_1A48AD1DC();
    v29 = sub_1A524E794();
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC8];
  }

  v37 = v29;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A48AB32C(uint64_t a1)
{
  if (qword_1EB15E370 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5246F24();
  __swift_project_value_buffer(v2, qword_1EB15E378);
  sub_1A3C341C8(a1, v7);
  v3 = sub_1A5246F04();
  v4 = sub_1A524D264();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    swift_slowAlloc();
    *v5 = 136642819;
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    sub_1A5244604();
    __swift_destroy_boxed_opaque_existential_0(v7);
    sub_1A3C2EF94();
  }

  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t sub_1A48AB4C0(void *a1, uint64_t a2)
{
  sub_1A48AD0A8(0, &qword_1EB124C30, 255, MEMORY[0x1E69C11D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v22 - v5;
  v7 = sub_1A5244C84();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB15E370 != -1)
  {
    swift_once();
  }

  v11 = sub_1A5246F24();
  __swift_project_value_buffer(v11, qword_1EB15E378);
  sub_1A3C341C8(a1, v23);
  v12 = sub_1A5246F04();
  v13 = sub_1A524D264();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22[1] = v10;
    v15 = v14;
    v16 = swift_slowAlloc();
    *v15 = 136642819;
    v22[3] = a1;
    v22[4] = v16;
    v22[2] = v7;
    __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    sub_1A5244604();
    __swift_destroy_boxed_opaque_existential_0(v23);
    sub_1A3C2EF94();
  }

  __swift_destroy_boxed_opaque_existential_0(v23);
  sub_1A3C341C8(a1, v23);
  sub_1A3C34400(0, &qword_1EB124CA0);
  v17 = swift_dynamicCast();
  v18 = *(v8 + 56);
  if (v17)
  {
    v18(v6, 0, 1, v7);
    (*(v8 + 32))(v10, v6, v7);
    if (*(a2 + 16))
    {
      sub_1A48A87C4(v10);
      if (v19)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v18(v6, 1, 1, v7);
    sub_1A48AD2A0(v6, &qword_1EB124C30, MEMORY[0x1E69C11D0]);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = sub_1A5244604();
  sub_1A48AB32C(a1);
  return v20;
}

unint64_t sub_1A48AB8CC(unint64_t a1)
{
  if (qword_1EB15E370 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v33 = sub_1A5246F24();
    __swift_project_value_buffer(v33, qword_1EB15E378);
    v2 = sub_1A5246F04();
    v3 = sub_1A524D264();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1A3C1C000, v2, v3, "dedupeAnimationTexts(originalTexts:) started.", v4, 2u);
      MEMORY[0x1A590EEC0](v4, -1, -1);
    }

    v41 = MEMORY[0x1E69E7CC0];
    if (!(a1 >> 62))
    {
      v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        break;
      }

      goto LABEL_6;
    }

    v5 = sub_1A524E2B4();
    if (!v5)
    {
      break;
    }

LABEL_6:
    v6 = 0;
    v38 = a1 & 0xC000000000000001;
    v34 = a1 + 32;
    v35 = a1 & 0xFFFFFFFFFFFFFF8;
    v7 = MEMORY[0x1E69E7CC0];
    v36 = v5;
    v37 = a1;
    while (v38)
    {
      v13 = MEMORY[0x1A59097F0](v6, a1);
      v14 = __OFADD__(v6, 1);
      v15 = v6 + 1;
      if (v14)
      {
        goto LABEL_44;
      }

LABEL_18:
      v39 = v15;
      v40 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v7 >> 62)
      {
        v16 = sub_1A524E2B4();
      }

      else
      {
        v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = 0;
      v18 = v7 & 0xC000000000000001;
      v19 = v7;
      while (1)
      {
        if (v16 == v17)
        {

          MEMORY[0x1A5907D70](v28);
          if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1A524CA74();
          }

          sub_1A524CAE4();

          v7 = v41;
          goto LABEL_11;
        }

        a1 = v7 + 8 * v17;
        if (v18)
        {
          v21 = MEMORY[0x1A59097F0](v17, v7);
          v20 = v21;
        }

        else
        {
          if (v17 >= *(v40 + 16))
          {
            __break(1u);
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }

          v20 = *(a1 + 32);
        }

        v22 = (*(*v20 + 96))(v21);
        v24 = v23;
        if (v22 == (*(*v13 + 96))() && v24 == v25)
        {
          break;
        }

        v27 = sub_1A524EAB4();

        if (v27)
        {
          goto LABEL_38;
        }

        v14 = __OFADD__(v17++, 1);
        v7 = v19;
        if (v14)
        {
          goto LABEL_43;
        }
      }

LABEL_38:
      v7 = v19;
      if (v18)
      {
        v8 = MEMORY[0x1A59097F0](v17, v19);
        v9 = MEMORY[0x1A59097F0](v17, v19);
      }

      else
      {
        if (v17 >= *(v40 + 16))
        {
          goto LABEL_46;
        }

        v9 = *(a1 + 32);
        swift_retain_n();
        v8 = v9;
      }

      v10 = (*(*v9 + 120))();

      v12.n128_f64[0] = (*(*v13 + 120))(v11);
      if (v10 > v12.n128_f64[0])
      {
        v12.n128_f64[0] = v10;
      }

      (*(*v8 + 128))(v12);

LABEL_11:
      a1 = v37;
      v6 = v39;
      if (v39 == v36)
      {
        goto LABEL_50;
      }
    }

    if (v6 >= *(v35 + 16))
    {
      goto LABEL_45;
    }

    v13 = *(v34 + 8 * v6);

    v14 = __OFADD__(v6, 1);
    v15 = v6 + 1;
    if (!v14)
    {
      goto LABEL_18;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    swift_once();
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_50:
  if (qword_1EB15E370 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v33, qword_1EB15E378);
  v29 = sub_1A5246F04();
  v30 = sub_1A524D264();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1A3C1C000, v29, v30, "dedupeAnimationTexts(originalTexts:) ended.", v31, 2u);
    MEMORY[0x1A590EEC0](v31, -1, -1);
  }

  return v7;
}