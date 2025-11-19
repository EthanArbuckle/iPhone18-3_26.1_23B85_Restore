Swift::Int sub_16B0()
{
  sub_76C8();
  sub_76D8(0);
  return sub_76E8();
}

Swift::Int sub_1700()
{
  sub_76C8();
  sub_76D8(0);
  return sub_76E8();
}

Swift::Bool __swiftcall SuggestionsPluginFeatureFlagsImpl.isSiriHelpEnabled()()
{
  v2[3] = &type metadata for SettingsSuggestionsPluginFeatures;
  v2[4] = sub_179C();
  v0 = sub_7368();
  sub_17F0(v2);
  return v0 & 1;
}

unint64_t sub_179C()
{
  result = qword_104C8;
  if (!qword_104C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_104C8);
  }

  return result;
}

uint64_t sub_17F0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t getEnumTagSinglePayload for SettingsSuggestionsPluginFeatures(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for SettingsSuggestionsPluginFeatures(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1944);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1988()
{
  result = qword_104D0;
  if (!qword_104D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_104D0);
  }

  return result;
}

uint64_t sub_19DC(char a1)
{
  result = 0x7041664F65707974;
  switch(a1)
  {
    case 1:
      sub_3F30();
      result = v6 + 29;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      sub_3F30();
      result = v4 + 18;
      break;
    case 5:
      sub_3F30();
      result = v7 | 3;
      break;
    case 6:
      sub_3F30();
      result = v8 | 4;
      break;
    case 7:
      sub_3F30();
      result = v5 + 17;
      break;
    default:
      sub_3F30();
      result = v3 | 7;
      break;
  }

  return result;
}

uint64_t sub_1B38()
{
  sub_3EE8();
  v2 = 0x695365676E616863;
  v4 = v3;
  v5 = 0x695365676E616863;
  v6 = v0;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000011;
      v7 = "notificationSetting";
      goto LABEL_6;
    case 2:
      v5 = 0xD000000000000011;
      v7 = "readBatteryStatus";
LABEL_6:
      v6 = v7 | 0x8000000000000000;
      break;
    case 3:
      break;
    case 4:
      v5 = 0x65537972616E6962;
      v6 = 0xED0000676E697474;
      break;
    case 5:
      v5 = 0x53636972656D756ELL;
      v6 = 0xEE00676E69747465;
      break;
    default:
      v6 = 0x8000000000008260;
      v5 = 0xD000000000000013;
      break;
  }

  switch(v1)
  {
    case 1:
      v2 = 0xD000000000000011;
      v8 = "notificationSetting";
      goto LABEL_13;
    case 2:
      v2 = 0xD000000000000011;
      v8 = "readBatteryStatus";
LABEL_13:
      v0 = v8 | 0x8000000000000000;
      break;
    case 3:
      break;
    case 4:
      sub_3EAC();
      break;
    case 5:
      sub_3EFC();
      break;
    default:
      v0 = 0x8000000000008260;
      v2 = 0xD000000000000013;
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_76A8();
  }

  return v10 & 1;
}

uint64_t sub_1D2C()
{
  sub_3EE8();
  switch(v0)
  {
    case 4:
      sub_3EAC();
      break;
    case 5:
      sub_3EFC();
      break;
    default:
      break;
  }

  sub_7608();
}

Swift::Int sub_1E34(uint64_t a1, char a2)
{
  sub_76C8();
  sub_50AC(a2);
  sub_7608();

  return sub_76E8();
}

uint64_t sub_1E94()
{
  sub_35FC(&qword_10858, &qword_7FA0);
  v0 = sub_7588();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_7B60;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for BinarySettingIdentifier.airplaneMode(_:), v0);
  v6(v5 + v2, enum case for BinarySettingIdentifier.assistiveTouch(_:), v0);
  v6(v5 + 2 * v2, enum case for BinarySettingIdentifier.bluetooth(_:), v0);
  v6(v5 + 3 * v2, enum case for BinarySettingIdentifier.cellularData(_:), v0);
  v6(v5 + 4 * v2, enum case for BinarySettingIdentifier.doNotDisturb(_:), v0);
  v6(v5 + 5 * v2, enum case for BinarySettingIdentifier.heySiri(_:), v0);
  v6(v5 + 6 * v2, enum case for BinarySettingIdentifier.siri(_:), v0);
  v6(v5 + 7 * v2, enum case for BinarySettingIdentifier.nightShift(_:), v0);
  v6(v5 + 8 * v2, enum case for BinarySettingIdentifier.powerSaving(_:), v0);
  v6(v5 + 9 * v2, enum case for BinarySettingIdentifier.wifi(_:), v0);
  result = (v6)(v5 + 10 * v2, enum case for BinarySettingIdentifier.invertColors(_:), v0);
  qword_115A0 = v4;
  return result;
}

uint64_t sub_20E4()
{
  sub_35FC(&qword_10860, &qword_7FB0);
  v0 = sub_75A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_7B70;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for NumericSettingIdentifier.displayBrightness(_:), v0);
  result = (v6)(v5 + v2, enum case for NumericSettingIdentifier.voice(_:), v0);
  qword_115A8 = v4;
  return result;
}

uint64_t sub_21F4()
{
  sub_3E18();
  v1 = sub_7588();
  sub_3ED4(v1);
  *(v0 + 64) = v2;
  v4 = *(v3 + 64) + 15;
  *(v0 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_22A0, 0, 0);
}

uint64_t sub_22A0()
{
  if (qword_10460 != -1)
  {
    swift_once();
  }

  v3 = qword_115A0;
  v4 = *(qword_115A0 + 16);
  v5 = &_swiftEmptyArrayStorage;
  if (v4)
  {
    sub_3E24();
    v6 = sub_7518();
    v5 = v20;
    v8 = *(v1 + 16);
    v7 = v1 + 16;
    v9 = v3 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v18 = *(v7 + 56);
    v19 = v8;
    do
    {
      v10 = sub_3E4C();
      v19(v10);
      sub_7578();
      sub_3E64();
      v11 = *(&off_C6D8 + (v0[6] >> 63) + 32);
      v12 = sub_7508();
      v0[5] = v6;
      v0[2] = v12;
      (*(v7 - 8))(v7, v2);
      sub_3EC0();
      if (v14)
      {
        sub_3E88(v13);
        v5 = v20;
      }

      sub_3F10();
      v9 += v18;
      --v4;
    }

    while (v4);
  }

  v15 = v0[9];

  sub_3E0C();

  return v16(v5);
}

uint64_t sub_2454()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_2488()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_3DF8;

  return sub_21F4();
}

uint64_t sub_2518()
{
  sub_3E18();
  v1 = sub_75A8();
  sub_3ED4(v1);
  *(v0 + 64) = v2;
  v4 = *(v3 + 64) + 15;
  *(v0 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_25C4, 0, 0);
}

uint64_t sub_25C4()
{
  if (qword_10468 != -1)
  {
    swift_once();
  }

  v3 = qword_115A8;
  v4 = *(qword_115A8 + 16);
  v5 = &_swiftEmptyArrayStorage;
  if (v4)
  {
    sub_3E24();
    v6 = sub_7538();
    v5 = v20;
    v8 = *(v1 + 16);
    v7 = v1 + 16;
    v18 = v8;
    v19 = v6;
    v9 = v3 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v17 = *(v7 + 56);
    do
    {
      v10 = sub_3E4C();
      v18(v10);
      sub_7598();
      sub_3E64();
      [objc_allocWithZone(NSNumber) initWithInteger:v0[6] >> 63];
      v11 = sub_7528();
      v0[5] = v19;
      v0[2] = v11;
      (*(v7 - 8))(v7, v2);
      sub_3EC0();
      if (v13)
      {
        sub_3E88(v12);
        v5 = v20;
      }

      sub_3F10();
      v9 += v17;
      --v4;
    }

    while (v4);
  }

  v14 = v0[9];

  sub_3E0C();

  return v15(v5);
}

uint64_t sub_2790()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_3DF8;

  return sub_2518();
}

uint64_t sub_2830()
{
  sub_3E18();
  v1 = sub_3350(v0, &off_C700);
  sub_35FC(&qword_10850, &qword_7F98);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_7B80;
  *(v2 + 56) = &type metadata for Bool;
  *(v2 + 32) = v1 & 1;
  sub_3E0C();

  return v3();
}

uint64_t sub_28D0()
{
  v1 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_292C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_29B8;

  return sub_281C();
}

uint64_t sub_29B8()
{
  sub_3E18();
  v2 = v1;
  v3 = *(*v0 + 16);
  v6 = *v0;

  sub_3E0C();

  return v4(v2);
}

uint64_t sub_2AC0()
{
  sub_3E18();
  sub_33A8(v1, &off_C668);
  sub_3648();
  v2 = sub_2C08();
  if (v2)
  {
    v3 = sub_3CB4(v2);
    if (v3)
    {
      sub_2C6C(0xD000000000000013, 0x80000000000084E0, v3, (v0 + 48));

      if (*(v0 + 72))
      {
        sub_34C0((v0 + 48), (v0 + 16));
        sub_35FC(&qword_10850, &qword_7F98);
        v4 = swift_allocObject();
        v4[1] = xmmword_7B80;
        sub_34C0((v0 + 16), v4 + 2);
        goto LABEL_7;
      }

      sub_3D2C(v0 + 48);
    }
  }

  v4 = &_swiftEmptyArrayStorage;
LABEL_7:
  sub_3E0C();

  return v5(v4);
}

id sub_2C08()
{
  v0 = sub_75E8();

  v1 = [swift_getObjCClassFromMetadata() bundleWithIdentifier:v0];

  return v1;
}

double sub_2C6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_3840(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_3D94(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_2CD0(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_38B8(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_2D44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_3DF8;

  return sub_2AAC();
}

uint64_t sub_2DE8()
{
  sub_3E18();
  v1 = *(v0 + 16);
  sub_35FC(&qword_10850, &qword_7F98);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_7B80;
  v3 = *(v1 + 32);
  *(v2 + 56) = &type metadata for Bool;
  *(v2 + 32) = v3;
  sub_3E0C();

  return v4();
}

uint64_t sub_2E7C()
{
  v1 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 33, 7);
}

uint64_t sub_2ED8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_3DF8;

  return sub_2DD0();
}

uint64_t sub_3238(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_327C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_7358(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_7358();

    return _swift_arrayInitWithTakeFrontToBack(a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return _swift_arrayInitWithTakeBackToFront(a3, a1, a2, result);
  }

  return result;
}

unint64_t sub_3350(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 2;
  }

  result = sub_3414(*(a2 + 16));
  if (result < v2)
  {
    return *(a2 + result + 32);
  }

  __break(1u);
  return result;
}

unint64_t sub_33A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  result = sub_3414(*(a2 + 16));
  if (result < v2)
  {
    v5 = a2 + 16 * result;
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);

    return v6;
  }

  __break(1u);
  return result;
}

unint64_t sub_3414(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_34A0(char *a1, int64_t a2, char a3)
{
  result = sub_34F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_OWORD *sub_34C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

size_t sub_34D0(size_t a1, int64_t a2, char a3)
{
  result = sub_368C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_34F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_35FC(&qword_10850, &qword_7F98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_35FC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_3648()
{
  result = qword_10868;
  if (!qword_10868)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10868);
  }

  return result;
}

size_t sub_368C(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_35FC(&qword_10878, qword_7FD8);
  v10 = *(sub_7358() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_7358() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_327C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_3840(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_76C8();
  sub_7608();
  v6 = sub_76E8();

  return sub_3940(a1, a2, v6);
}

unint64_t sub_38B8(char a1)
{
  v3 = *(v1 + 40);
  sub_76C8();
  sub_50AC(a1);
  sub_7608();

  v4 = sub_76E8();

  return sub_39F4(a1, v4);
}

unint64_t sub_3940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_76A8() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_39F4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEF6563696F566972;
      v8 = 0x695365676E616863;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000011;
          v7 = 0x8000000000008280;
          break;
        case 2:
          v8 = 0xD000000000000011;
          v7 = 0x80000000000082A0;
          break;
        case 3:
          break;
        case 4:
          v8 = 0x65537972616E6962;
          v7 = 0xED0000676E697474;
          break;
        case 5:
          v8 = 0x53636972656D756ELL;
          v7 = 0xEE00676E69747465;
          break;
        default:
          v8 = 0xD000000000000013;
          v7 = 0x8000000000008260;
          break;
      }

      v9 = 0x695365676E616863;
      v10 = 0xEF6563696F566972;
      switch(a1)
      {
        case 1:
          v9 = 0xD000000000000011;
          v10 = 0x8000000000008280;
          break;
        case 2:
          v9 = 0xD000000000000011;
          v10 = 0x80000000000082A0;
          break;
        case 3:
          break;
        case 4:
          v9 = 0x65537972616E6962;
          v10 = 0xED0000676E697474;
          break;
        case 5:
          v9 = 0x53636972656D756ELL;
          v10 = 0xEE00676E69747465;
          break;
        default:
          v9 = 0xD000000000000013;
          v10 = 0x8000000000008260;
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = sub_76A8();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_3CB4(void *a1)
{
  v2 = [a1 localizedInfoDictionary];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_75C8();

  return v3;
}

uint64_t sub_3D2C(uint64_t a1)
{
  v2 = sub_35FC(&qword_10870, &qword_7FC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3D94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_3E24()
{
  v3 = *(v1 + 64);

  return sub_34A0(0, v0, 0);
}

uint64_t sub_3E64()
{
  *(v0 + 48) = 0;

  return swift_stdlib_random();
}

char *sub_3E88@<X0>(unint64_t a1@<X8>)
{

  return sub_34A0((a1 > 1), v1, 1);
}

uint64_t sub_3ED4(uint64_t a1)
{
  *(v1 + 56) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

_OWORD *sub_3F10()
{
  *(v0 + 16) = v2;

  return sub_34C0((v1 + 16), (v0 + 32 * v3 + 32));
}

Swift::Int sub_3F44(char a1)
{
  sub_76C8();
  sub_50AC(a1);
  sub_7608();

  return sub_76E8();
}

uint64_t sub_3FA8()
{
  sub_7034();
  result = sub_7648();
  qword_10880 = result;
  return result;
}

uint64_t sub_4010()
{
  v0 = sub_73C8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_73D8();
  qword_115B0 = result;
  return result;
}

uint64_t sub_4104(uint64_t a1, uint64_t *a2)
{
  v3 = sub_35FC(&qword_109D0, &unk_80E0);
  sub_6F88(v3, a2);
  sub_6F50(v3, a2);
  sub_35FC(&qword_10870, &qword_7FC8);
  return sub_7378();
}

uint64_t sub_41D4@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, void (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_7398();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_3D94(a1, v19);
  a2(0);
  result = swift_dynamicCast();
  if (result)
  {
    a3();
    v14 = sub_7388();
    v16 = v15;
    (*(v9 + 8))(v12, v8);

    *a4 = v14;
    a4[1] = v16;
    v17 = &type metadata for String;
  }

  else
  {
    *a4 = 0;
    v17 = &type metadata for Bool;
  }

  a4[3] = v17;
  return result;
}

uint64_t sub_4340(uint64_t a1, uint64_t a2)
{
  v3[48] = a2;
  v3[49] = v2;
  v3[47] = a1;
  v4 = sub_7358();
  v3[50] = v4;
  v5 = *(v4 - 8);
  v3[51] = v5;
  v6 = *(v5 + 64) + 15;
  v3[52] = swift_task_alloc();

  return _swift_task_switch(sub_4404, 0, 0);
}

uint64_t sub_4404()
{
  if (qword_10480 != -1)
  {
    swift_once();
  }

  sub_5974(&unk_115B8, (v0 + 32));
  v1 = v0[35];
  v2 = v0[36];
  sub_6444(v0 + 32, v1);
  v3 = (*(v2 + 8))(v1, v2);
  sub_17F0(v0 + 32);
  if (v3)
  {
    v4 = v0[51];
    sub_35FC(&qword_10980, &qword_80B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_7FF0;
    *(inited + 32) = 0x45442D6564;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = 0x55412D6E65;
    *(inited + 56) = 0xE500000000000000;
    *(inited + 64) = 0x41432D6E65;
    *(inited + 72) = 0xE500000000000000;
    *(inited + 80) = 0x42472D6E65;
    *(inited + 88) = 0xE500000000000000;
    *(inited + 96) = 0x4E492D6E65;
    *(inited + 104) = 0xE500000000000000;
    *(inited + 112) = 0x53552D6E65;
    *(inited + 120) = 0xE500000000000000;
    *(inited + 128) = 0x53452D7365;
    *(inited + 136) = 0xE500000000000000;
    *(inited + 144) = 0x584D2D7365;
    *(inited + 152) = 0xE500000000000000;
    *(inited + 160) = 0x53552D7365;
    *(inited + 168) = 0xE500000000000000;
    *(inited + 176) = 0x52462D7266;
    *(inited + 184) = 0xE500000000000000;
    *(inited + 192) = 0x504A2D616ALL;
    *(inited + 200) = 0xE500000000000000;
    *(inited + 208) = 0x4E432D687ALL;
    *(inited + 216) = 0xE500000000000000;
    *(inited + 224) = 0x4B482D687ALL;
    *(inited + 232) = 0xE500000000000000;
    sub_34D0(0, 13, 0);
    for (i = 0; i != 208; i += 16)
    {
      v7 = v0[52];
      v8 = *(inited + i + 32);
      v9 = *(inited + i + 40);

      sub_7348();
      v11 = *(&_swiftEmptyArrayStorage + 2);
      v10 = *(&_swiftEmptyArrayStorage + 3);
      if (v11 >= v10 >> 1)
      {
        sub_34D0(v10 > 1, v11 + 1, 1);
      }

      v0[55] = &_swiftEmptyArrayStorage;
      v12 = v0[52];
      v13 = v0[50];
      *(&_swiftEmptyArrayStorage + 2) = v11 + 1;
      (*(v4 + 32))(&_swiftEmptyArrayStorage + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v12, v13);
    }

    swift_setDeallocating();
    sub_5DAC();
    if (qword_10478 != -1)
    {
      swift_once();
    }

    v17 = v0[47];
    v18 = qword_115B0;
    v0[40] = sub_73C8();
    v0[41] = sub_6FEC(&qword_10988, &type metadata accessor for DomainOwner);
    v0[37] = v18;

    v22 = (v17 + *v17);
    v19 = v17[1];
    v20 = swift_task_alloc();
    v0[53] = v20;
    *v20 = v0;
    v20[1] = sub_48A0;
    v21 = v0[48];

    return v22(v0 + 37);
  }

  else
  {
    sub_7638();
    if (qword_10470 != -1)
    {
      sub_7328();
    }

    sub_75B8();
    v14 = v0[52];

    v15 = v0[1];

    return v15(&_swiftEmptyArrayStorage);
  }
}

uint64_t sub_48A0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v5 = *v1;
  *(v2 + 432) = a1;

  sub_17F0((v2 + 296));

  return _swift_task_switch(sub_49A8, 0, 0);
}

uint64_t sub_49A8()
{
  v26 = v0;
  v23 = sub_4E78();
  v1 = sub_7638();
  if (qword_10470 != -1)
  {
    sub_7328();
  }

  v2 = qword_10880;
  if (os_log_type_enabled(qword_10880, v1))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v24 = v4;
    *v3 = 136315138;
    sub_35FC(&qword_10998, &qword_80C0);
    sub_638C();
    v5 = sub_75D8();
    v7 = sub_5DF0(v5, v6, &v24);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_0, v2, v1, "SiriSettingsSuggestionsPlugin Signals Dictionary: %s", v3, 0xCu);
    sub_17F0(v4);
  }

  v8 = 0;
  do
  {
    v9 = *(&off_C728 + v8 + 32);
    switch(*(&off_C728 + v8 + 32))
    {
      case 4:
      case 5:
        break;
      default:
        v24 = 0;
        v25 = 0xE000000000000000;
        sub_7668(22);

        v24 = 0xD000000000000014;
        v25 = 0x8000000000008760;
        v10._countAndFlagsBits = 0x695365676E616863;
        v11 = 0xEF6563696F566972;
        switch(v9)
        {
          case 1:
            v10._countAndFlagsBits = 0xD000000000000011;
            v11 = 0x8000000000008280;
            break;
          case 2:
            v10._countAndFlagsBits = 0xD000000000000011;
            v11 = 0x80000000000082A0;
            break;
          case 3:
            break;
          default:
            v10._countAndFlagsBits = 0xD000000000000013;
            v11 = 0x8000000000008260;
            break;
        }

        v10._object = v11;
        sub_7618(v10);

        break;
    }

    v13 = *(v22 + 432);
    v12 = *(v22 + 440);
    ++v8;
    v14 = *(v22 + 392);
    v15 = swift_task_alloc();
    *(v15 + 16) = v14;
    *(v15 + 24) = v9;
    *(v15 + 32) = v23;
    *(v15 + 40) = v12;
    *(v15 + 48) = 0xD000000000000049;
    *(v15 + 56) = 0x80000000000086B0;
    sub_7488();
  }

  while (v8 != 6);
  v17 = *(v22 + 432);
  v16 = *(v22 + 440);

  sub_7498();
  sub_35FC(&qword_10990, &qword_80B8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_7B80;
  sub_6374((v22 + 336), v18 + 32);

  v19 = *(v22 + 416);

  v20 = *(v22 + 8);

  return v20(v18);
}

uint64_t sub_4E78()
{
  if (qword_104C0 != -1)
  {
LABEL_18:
    swift_once();
  }

  swift_beginAccess();
  if (*(&dword_10 + off_108E0))
  {
  }

  if (qword_104B8 != -1)
  {
    swift_once();
  }

  v0 = 0;
  v1 = qword_108D8;
  while (1)
  {
    v2 = *(&off_C728 + v0 + 32);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = off_108E0;
    v20 = off_108E0;
    off_108E0 = 0x8000000000000000;
    v5 = sub_38B8(v2);
    v7 = *(&dword_10 + v4);
    v8 = (v6 & 1) == 0;
    v9 = v7 + v8;
    if (__OFADD__(v7, v8))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v10 = v5;
    v11 = v6;
    sub_35FC(&qword_109E8, &qword_80F0);
    if (sub_7688(isUniquelyReferenced_nonNull_native, v9))
    {
      break;
    }

LABEL_10:
    if (v11)
    {
      v14 = *(v20 + 7);
      v15 = *(v14 + 8 * v10);
      *(v14 + 8 * v10) = v1;
    }

    else
    {
      *&v20[2 * (v10 >> 6) + 16] |= 1 << v10;
      *(*(v20 + 6) + v10) = v2;
      *(*(v20 + 7) + 8 * v10) = v1;
      v16 = *(v20 + 2);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_17;
      }

      *(v20 + 2) = v18;
    }

    ++v0;
    off_108E0 = v20;
    swift_endAccess();
    if (v0 == 6)
    {
    }
  }

  v12 = sub_38B8(v2);
  if ((v11 & 1) == (v13 & 1))
  {
    v10 = v12;
    goto LABEL_10;
  }

  result = sub_76B8();
  __break(1u);
  return result;
}

unint64_t sub_50AC(char a1)
{
  result = 0x695365676E616863;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      return result;
    case 4:
      result = 0x65537972616E6962;
      break;
    case 5:
      result = 0x53636972656D756ELL;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_51A4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45 = a7;
  v44 = a6;
  v46 = a2;
  v10 = sub_7638();
  if (qword_10470 != -1)
  {
    swift_once();
  }

  v11 = qword_10880;
  if (os_log_type_enabled(qword_10880, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v59[0] = v13;
    *v12 = 136315138;
    LOBYTE(v57[0]) = a3;
    v14 = sub_75F8();
    v16 = sub_5DF0(v14, v15, v59);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_0, v11, v10, "Set up suggestion: %s", v12, 0xCu);
    sub_17F0(v13);
  }

  sub_63E0(a1, v59);
  v17 = v60;
  v47 = v61;
  sub_6444(v59, v60);
  sub_2CD0(a3, a4);
  *v58 = v17;
  *&v58[8] = v47;
  sub_68A0(v57);
  sub_73A8();

  v18 = *&v58[16];
  v47 = *v58;
  sub_6444(v57, *v58);
  v55 = v47;
  v56 = v18;
  sub_68A0(v54);
  sub_7458();
  v19 = v56;
  v43 = v55;
  *&v47 = a1;
  sub_6444(v54, v55);
  sub_35FC(&qword_109B0, &qword_80D0);
  v20 = sub_73B8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_7B70;
  v25 = v24 + v23;
  v26 = a3;
  v27 = *(v21 + 104);
  v27(v25, enum case for DeviceType.iPhone(_:), v20);
  v27(v25 + v22, enum case for DeviceType.iPad(_:), v20);
  v52 = v43;
  v53 = v19;
  sub_68A0(v51);
  sub_7448();

  v28 = v53;
  v43 = v52;
  sub_6444(v51, v52);
  sub_50AC(a3);
  v49 = v43;
  v50 = v28;
  sub_68A0(v48);
  sub_7468();

  v29 = v49;
  v30 = sub_6444(v48, v49);
  v31 = *(v29 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v43 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7438();
  (*(v31 + 8))(v34, v29);
  sub_17F0(v48);
  sub_17F0(v51);
  sub_17F0(v54);
  sub_17F0(v57);
  sub_17F0(v59);
  v35 = *(v47 + 24);
  v36 = *(v47 + 40);
  v37 = sub_6444(v47, v35);
  v38 = *(v35 - 8);
  v39 = *(v38 + 64);
  __chkstk_darwin(v37);
  v41 = &v43 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v38 + 16))(v41);
  sub_6488(v41, v26, v46, v35, v36);
  return (*(v38 + 8))(v41, v35);
}

unint64_t sub_579C(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_57D4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5878;

  return sub_4340(a1, a2);
}

uint64_t sub_5878(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_5974(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_59D8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_C778;
  v6._object = a2;
  v4 = sub_7698(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_5A24(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1B38();
}

uint64_t sub_5A30@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_59D8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_5A60@<X0>(unint64_t *a1@<X8>)
{
  result = sub_50AC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_5AB4()
{
  sub_74E8();
  v0 = sub_73E8();
  v3[3] = v0;
  v3[4] = sub_6FEC(&qword_109F8, &type metadata accessor for CoreSignalTypes);
  v1 = sub_68A0(v3);
  (*(*(v0 - 8) + 104))(v1, enum case for CoreSignalTypes.app(_:), v0);
  result = sub_74B8();
  qword_108B8 = result;
  return result;
}

uint64_t sub_5B9C()
{
  sub_74E8();
  result = sub_74A8();
  qword_108C0 = result;
  return result;
}

uint64_t sub_5BD0()
{
  sub_74E8();
  result = sub_74D8();
  qword_108C8 = result;
  return result;
}

uint64_t sub_5C04()
{
  sub_74E8();
  result = sub_74C8();
  qword_108D0 = result;
  return result;
}

uint64_t sub_5C38()
{
  sub_35FC(&qword_109F0, &qword_80F8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_8000;
  if (qword_10498 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_108B8;
  v1 = qword_104A0;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_108C0;
  v2 = qword_104A8;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v0 + 48) = qword_108C8;
  v3 = qword_104B0;

  if (v3 != -1)
  {
    swift_once();
  }

  *(v0 + 56) = qword_108D0;
  qword_108D8 = v0;
}

uint64_t sub_5DAC()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_5DF0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_5EB4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_3D94(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_17F0(v11);
  return v7;
}

unint64_t sub_5EB4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_5FB4(a5, a6);
    *a1 = v9;
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
    result = sub_7678();
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

char *sub_5FB4(uint64_t a1, unint64_t a2)
{
  v4 = sub_6000(a1, a2);
  sub_6118(&off_C750);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_6000(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_7628())
  {
    result = sub_61FC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_7658();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_7678();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_6118(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_626C(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_61FC(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_35FC(&qword_109A8, &qword_80C8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_626C(char *result, int64_t a2, char a3, char *a4)
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
    sub_35FC(&qword_109A8, &qword_80C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_6374(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_638C()
{
  result = qword_109A0;
  if (!qword_109A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_109A0);
  }

  return result;
}

uint64_t sub_63E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_6444(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_6488(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v28 = a4;
  v29 = a5;
  v10 = sub_68A0(v27);
  (*(*(a4 - 8) + 16))(v10, a1, a4);
  switch(v9)
  {
    case 0:
      v11 = v28;
      sub_6444(v27, v28);
      v12 = *(v11 - 8);
      v13 = *(v12 + 64);
      __chkstk_darwin();
      v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = type metadata accessor for iOSSettingSuggestionsActionResolver();
      v17 = swift_allocObject();
      *(v17 + 16) = 0xD00000000000002DLL;
      *(v17 + 24) = 0x80000000000085C0;
      v25 = v16;
      v26 = sub_6FEC(&qword_109C8, type metadata accessor for iOSSettingSuggestionsActionResolver);
      v24[0] = v17;
      sub_7418();
      sub_7408();
      goto LABEL_5;
    case 2:
      sub_7568();
      sub_7558();
      v18 = sub_7548();

      v11 = v28;
      sub_6444(v27, v28);
      v12 = *(v11 - 8);
      v19 = *(v12 + 64);
      __chkstk_darwin();
      v15 = v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = type metadata accessor for iOSSettingDisplayModeSuggestionsResolver();
      v22 = swift_allocObject();
      *(v22 + 16) = 0xD000000000000017;
      *(v22 + 24) = 0x80000000000085F0;
      *(v22 + 32) = v18 & 1;
      v25 = v21;
      v26 = sub_6FEC(&qword_109B8, type metadata accessor for iOSSettingDisplayModeSuggestionsResolver);
      v24[0] = v22;
      sub_7418();
      sub_7408();
LABEL_5:
      sub_7478();

      (*(v12 + 8))(v15, v11);
      sub_6900(v24);
      break;
    case 4:
      sub_6968(v10, 4, a3, a4, a5);
      break;
    case 5:
      sub_6C5C(v10, 5, a3, a4, a5);
      break;
    default:
      return sub_17F0(v27);
  }

  return sub_17F0(v27);
}

uint64_t *sub_68A0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_6900(uint64_t a1)
{
  v2 = sub_35FC(&qword_109C0, &qword_80D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_35FC(&qword_109D0, &unk_80E0);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = v23 - v11;
  v26 = a4;
  v27 = a5;
  v13 = sub_68A0(v25);
  (*(*(a4 - 8) + 16))(v13, a1, a4);
  v14 = v26;
  v23[1] = v27;
  sub_6444(v25, v26);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for iOSBinarySettingSuggestionsResolver();
  v20 = swift_allocObject();
  *(v20 + 16) = 0xD000000000000013;
  *(v20 + 24) = 0x8000000000008550;
  v24[3] = v19;
  v24[4] = sub_6FEC(&qword_109D8, type metadata accessor for iOSBinarySettingSuggestionsResolver);
  v24[0] = v20;
  sub_7418();
  if (qword_10488 != -1)
  {
    swift_once();
  }

  v21 = sub_6F50(v8, qword_10888);
  (*(v9 + 16))(v12, v21, v8);
  sub_73F8();
  sub_7478();

  (*(v15 + 8))(v18, v14);
  sub_6900(v24);
  return sub_17F0(v25);
}

uint64_t sub_6C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_35FC(&qword_109D0, &unk_80E0);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = v23 - v11;
  v26 = a4;
  v27 = a5;
  v13 = sub_68A0(v25);
  (*(*(a4 - 8) + 16))(v13, a1, a4);
  v14 = v26;
  v23[1] = v27;
  sub_6444(v25, v26);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for iOSNumericSettingSuggestionsResolver();
  v20 = swift_allocObject();
  *(v20 + 16) = 0xD000000000000014;
  *(v20 + 24) = 0x8000000000008530;
  v24[3] = v19;
  v24[4] = sub_6FEC(&qword_109E0, type metadata accessor for iOSNumericSettingSuggestionsResolver);
  v24[0] = v20;
  sub_7418();
  if (qword_10490 != -1)
  {
    swift_once();
  }

  v21 = sub_6F50(v8, qword_108A0);
  (*(v9 + 16))(v12, v21, v8);
  sub_73F8();
  sub_7478();

  (*(v15 + 8))(v18, v14);
  sub_6900(v24);
  return sub_17F0(v25);
}

uint64_t sub_6F50(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_6F88(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_6FEC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_7034()
{
  result = qword_10A00;
  if (!qword_10A00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10A00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SettingsSuggestion(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SettingsSuggestion(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x71D8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_7224()
{
  result = qword_10A08;
  if (!qword_10A08)
  {
    sub_7288(&qword_10A10, qword_8118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10A08);
  }

  return result;
}

uint64_t sub_7288(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_72D4()
{
  result = qword_10A18;
  if (!qword_10A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10A18);
  }

  return result;
}

uint64_t sub_7328()
{

  return swift_once();
}