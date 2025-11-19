void static AppStoreModule.preWarm()()
{
  v0 = sub_1C1A6F1FC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C1A6F22C();
  v4 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1A6F20C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C198FB8C(0, &qword_1EDE62718);
  v11 = [swift_getObjCClassFromMetadata() sharedInstance];
  v12 = [v11 activeDSIDRecord];

  if (v12 && (v13 = [v12 isProtoU13], v12, v13))
  {
    sub_1C1A6F65C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v19 = sub_1C1A6F8EC();
    sub_1C1A6F18C();
    v14 = v19;
  }

  else
  {
    sub_1C198FB8C(0, &qword_1EDE63F38);
    (*(v8 + 104))(v10, *MEMORY[0x1E69E7F98], v7);
    v15 = sub_1C1A6F72C();
    (*(v8 + 8))(v10, v7);
    v16 = swift_allocObject();
    *(v16 + 16) = v18[1];
    aBlock[4] = sub_1C198FEE8;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C198FEA4;
    aBlock[3] = &unk_1F4141308;
    v17 = _Block_copy(aBlock);
    sub_1C1A6F21C();
    v20 = MEMORY[0x1E69E7CC0];
    sub_1C198FDCC(&qword_1EDE63F68, MEMORY[0x1E69E7F60]);
    sub_1C19A9E58(&qword_1EBF03E28);
    sub_1C19BF710();
    sub_1C1A6F94C();
    MEMORY[0x1C69051C0](0, v6, v3, v17);
    _Block_release(v17);

    (*(v1 + 8))(v3, v0);
    (*(v4 + 8))(v6, v19);
  }
}

uint64_t sub_1C198FB8C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1C198FBD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C198FBE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C198FBF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C198FC04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C198FC14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C198FC24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C198FC34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C198FC44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C198FC54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C198FC64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C198FC74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C198FC84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C198FC94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C198FCA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C198FCB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C198FCC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C198FCF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C198FD04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C198FD14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C198FD24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C198FD44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C198FD54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C198FD64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C198FD84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C198FDCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C198FE14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C198FE5C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C19A9F04(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C198FEA4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1C198FEF0()
{
  if (qword_1EDE634E8 != -1)
  {
    swift_once();
  }

  if (byte_1EDE634F0)
  {
    if (byte_1EDE634F0 == 1)
    {
      sub_1C19A9E58(&qword_1EBF047B8);
      v0 = *(sub_1C19A9E58(&qword_1EBF03C78) - 8);
      v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1C1A73A30;
      v3 = (v2 + v1);
      *v3 = 0x5474726174536370;
      v3[1] = 0xEB00000000656D69;
      sub_1C1A6D5CC();
      v4 = sub_1C1990280(v2);
      swift_setDeallocating();
      sub_1C1991140(v3, &qword_1EBF03C78);
      swift_deallocClassInstance();
    }

    else
    {
      v4 = 0;
    }

    v5 = [objc_allocWithZone(MEMORY[0x1E698A048]) initWithDeliveryBlock_];
    if (v4)
    {
      sub_1C19911A0(v4);

      v4 = sub_1C1A6F2FC();
    }

    v7[4] = sub_1C199174C;
    v7[5] = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1C199284C;
    v7[3] = &unk_1F4141528;
    v6 = _Block_copy(v7);

    [v5 preWarm:v4 completion:v6];
    _Block_release(v6);

    [v5 endRequests];
  }
}

uint64_t sub_1C1990184()
{
  result = sub_1C19901A4();
  byte_1EDE634F0 = result;
  return result;
}

uint64_t sub_1C19901A4()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_1C1A6F3CC();
    v4 = v3;

    if (v2 == 0xD000000000000027 && 0x80000001C1A7FB50 == v4)
    {
    }

    else
    {
      v6 = sub_1C1A6FCEC();

      if ((v6 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 2;
}

unint64_t sub_1C1990280(uint64_t a1)
{
  v2 = sub_1C19A9E58(&qword_1EBF03C78);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00]();
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1C19A9E58(&qword_1EBF03C80);
    v7 = sub_1C1A6FBEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1C1990FA8(v9, v5, &qword_1EBF03C78);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1C1991010(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1C1A6D5DC();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_1C199046C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C19909C4;

  return sub_1C1990524(a1, v4);
}

uint64_t sub_1C1990524(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C1990AB8;

  return v6(a1);
}

uint64_t sub_1C199061C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C19909C4;

  return sub_1C19906C8();
}

uint64_t sub_1C19906C8()
{
  sub_1C1A6F58C();
  *(v0 + 16) = sub_1C1A6F57C();
  v2 = sub_1C1A6F56C();

  return MEMORY[0x1EEE6DFA0](sub_1C199075C, v2, v1);
}

uint64_t sub_1C199075C()
{

  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v1 = sub_1C1A6F1BC();
  sub_1C1994600(v1, qword_1EDE665F0);
  v2 = sub_1C1A6F19C();
  v3 = sub_1C1A6F65C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C198D000, v2, v3, "Starting APClientInfoUI.", v4, 2u);
    MEMORY[0x1C6906260](v4, -1, -1);
  }

  v5 = sub_1C1A6F19C();
  v6 = sub_1C1A6F65C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1C198D000, v5, v6, "Starting APLocationManager.", v7, 2u);
    MEMORY[0x1C6906260](v7, -1, -1);
  }

  if (!qword_1EDE63E80)
  {
    v8 = sub_1C1A6F19C();
    v9 = sub_1C1A6F65C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1C198D000, v8, v9, "Refreshing SponsorshipAdManager.", v10, 2u);
      MEMORY[0x1C6906260](v10, -1, -1);
    }

    sub_1C1A6E41C();
    if (sub_1C1A6E3FC())
    {
      sub_1C1A6E40C();
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1C19909C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C1990AB8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C1990BB4()
{
  v0 = sub_1C19A9E58(&unk_1EBF050D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_1C1A6F5AC();
  v4 = *(*(v3 - 8) + 56);
  v4(v2, 1, 1, v3);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_1C1A40E34(0, 0, v2, &unk_1C1A75AA8, v5);

  v4(v2, 1, 1, v3);
  sub_1C1A6F58C();
  v6 = sub_1C1A6F57C();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  sub_1C1A40E34(0, 0, v2, &unk_1C1A75AB8, v7);
}

uint64_t sub_1C1990D2C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1C1990D68()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E698A048]) initWithDeliveryBlock_];
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v11 = sub_1C1A1D428;
  v12 = v1;
  v7 = MEMORY[0x1E69E9820];
  v8 = 1107296256;
  v9 = sub_1C1A1C524;
  v10 = &unk_1F4141B70;
  v2 = _Block_copy(&v7);
  v3 = v0;

  [v3 proxyURLWithCompletionHandler_];
  _Block_release(v2);
  v4 = objc_opt_self();
  sub_1C198FB8C(0, &qword_1EDE62700);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = sub_1C1A1C5A0;
  v12 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 1107296256;
  v9 = sub_1C19DF764;
  v10 = &unk_1F4141B98;
  v6 = _Block_copy(&v7);
  [v4 fetchConfigurationForClass:ObjCClassFromMetadata completion:v6];
  _Block_release(v6);
}

uint64_t sub_1C1990F18()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C1990F58()
{
  type metadata accessor for AdPolicyManager();
  v0 = swift_allocObject();
  result = sub_1C1992A64();
  qword_1EDE66610 = v0;
  return result;
}

uint64_t sub_1C1990FA8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1C19A9E58(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C1991010(uint64_t a1, uint64_t a2)
{
  sub_1C1A6FDAC();
  sub_1C1A6F45C();
  v4 = sub_1C1A6FDDC();

  return sub_1C1991088(a1, a2, v4);
}

unint64_t sub_1C1991088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1C1A6FCEC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1C1991140(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C19A9E58(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C19911A0(uint64_t a1)
{
  v44 = sub_1C1A6D5DC();
  v45 = *(v44 - 8);
  (MEMORY[0x1EEE9AC00])();
  v43 = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1C19A9E58(&qword_1EBF048E0);
  v3 = (MEMORY[0x1EEE9AC00])();
  v41 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v40 = v37 - v5;
  v46 = a1;
  if (*(a1 + 16))
  {
    sub_1C19A9E58(&qword_1EBF03C60);
    v6 = sub_1C1A6FBEC();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC8];
  }

  v7 = v46 + 64;
  v8 = 1 << *(v46 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v46 + 64);
  v11 = (v8 + 63) >> 6;
  v37[2] = v45 + 16;
  v37[1] = v45 + 32;
  v12 = v6 + 64;

  v14 = 0;
  v39 = v6;
  v38 = v7;
  v15 = v45;
  v16 = v42;
  while (v10)
  {
LABEL_15:
    v20 = __clz(__rbit64(v10)) | (v14 << 6);
    v21 = (*(v46 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    v24 = v40;
    v25 = v44;
    (*(v15 + 16))(&v40[*(v16 + 48)], *(v46 + 56) + *(v15 + 72) * v20, v44);
    *v24 = v23;
    v24[1] = v22;
    v26 = v24;
    v27 = v41;
    sub_1C1991674(v26, v41);
    v28 = *(v16 + 48);
    v29 = *(v27 + 1);
    *&v55 = *v27;
    *(&v55 + 1) = v29;

    swift_dynamicCast();
    (*(v15 + 32))(v43, &v27[v28], v25);
    swift_dynamicCast();
    v51 = v47;
    v52 = v48;
    v53 = v49;
    sub_1C19916E4(&v50, v54);
    v47 = v51;
    v48 = v52;
    v49 = v53;
    sub_1C19916E4(v54, &v55);
    v6 = v39;
    result = sub_1C1A6FA4C();
    v30 = -1 << *(v6 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v12 + 8 * (v31 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v30) >> 6;
      v7 = v38;
      while (++v32 != v34 || (v33 & 1) == 0)
      {
        v35 = v32 == v34;
        if (v32 == v34)
        {
          v32 = 0;
        }

        v33 |= v35;
        v36 = *(v12 + 8 * v32);
        if (v36 != -1)
        {
          v17 = __clz(__rbit64(~v36)) + (v32 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v17 = __clz(__rbit64((-1 << v31) & ~*(v12 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
    v7 = v38;
LABEL_9:
    v10 &= v10 - 1;
    *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    v18 = *(v6 + 48) + 40 * v17;
    *v18 = v47;
    *(v18 + 16) = v48;
    *(v18 + 32) = v49;
    result = sub_1C19916E4(&v55, (*(v6 + 56) + 32 * v17));
    ++*(v6 + 16);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= v11)
    {

      return v6;
    }

    v10 = *(v7 + 8 * v19);
    ++v14;
    if (v10)
    {
      v14 = v19;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1C1991674(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C19A9E58(&qword_1EBF048E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1C19916E4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1C19916F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1C199174C()
{
  if (qword_1EDE634F8 != -1)
  {
    swift_once();
  }

  sub_1C1A6D85C();
}

void *sub_1C19917D8()
{
  type metadata accessor for AppStoreModule();
  swift_allocObject();
  result = sub_1C1991814();
  off_1EDE63500 = result;
  return result;
}

uint64_t sub_1C1991814()
{
  v1 = sub_1C1A6EBFC();
  v80 = *(v1 - 8);
  v81 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v79 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x1E69861E0]) init];
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = [objc_allocWithZone(MEMORY[0x1E698A098]) init];
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  sub_1C19A9E58(&qword_1EBF047C8);
  swift_allocObject();
  v3 = sub_1C1A6D86C();
  v89 = v0;
  *(v0 + 96) = v3;
  sub_1C198FB8C(0, &qword_1EDE63970);
  sub_1C1A6F68C();
  v78 = sub_1C1A6D7AC();
  swift_allocObject();
  v4 = sub_1C1A6D79C();
  v73 = sub_1C1A6F2CC();
  swift_allocObject();
  v5 = sub_1C1A6F2BC();
  v77 = sub_1C1A6F2EC();
  swift_allocObject();
  v88 = sub_1C1A6F2DC();
  if (qword_1EDE63320 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDE66578;
  v76 = type metadata accessor for SearchAdsFacade();
  *(&v95 + 1) = v76;
  v75 = sub_1C198FDCC(&qword_1EDE61D78, type metadata accessor for SearchAdsFacade);
  v96 = v75;
  *&v94 = v6;
  v92 = v6;
  sub_1C1A6EFCC();
  swift_allocObject();
  swift_retain_n();
  v90 = sub_1C1A6EF9C();
  v7 = objc_allocWithZone(MEMORY[0x1E69861C0]);
  swift_retain_n();
  v74 = [v7 init];
  v71 = type metadata accessor for NullCountryCodeSource();
  v87 = swift_allocObject();
  v69 = type metadata accessor for NullCountrySubdivisionCodeSource();
  v85 = swift_allocObject();
  v72 = sub_1C1A6D7CC();
  swift_allocObject();
  swift_retain_n();

  v86 = sub_1C1A6D7BC();
  v8 = sub_1C1A6F11C();
  *(&v95 + 1) = v8;
  v96 = sub_1C198FDCC(qword_1EDE639A0, MEMORY[0x1E6986020]);
  v9 = sub_1C19927E8(&v94);
  (*(*(v8 - 8) + 104))(v9, *MEMORY[0x1E6986008], v8);
  v10 = sub_1C1A6F16C();
  v110 = v10;
  v111 = MEMORY[0x1E6986060];
  v11 = sub_1C19927E8(v109);
  (*(*(v10 - 8) + 104))(v11, *MEMORY[0x1E6986058], v10);
  v113 = sub_1C1A6F15C();
  v114 = MEMORY[0x1E6986050];
  sub_1C19927E8(&v112);

  sub_1C1A6F14C();
  v12 = sub_1C1A6F13C();
  swift_allocObject();
  v13 = sub_1C1A6F12C();
  *(&v95 + 1) = v12;
  v96 = sub_1C198FDCC(&qword_1EDE63998, MEMORY[0x1E6986048]);
  *&v94 = v13;
  v70 = sub_1C1A6D72C();
  swift_allocObject();
  v83 = sub_1C1A6D71C();
  v84 = swift_allocObject();
  sub_1C19A9E58(&qword_1EBF047D0);
  v14 = sub_1C19A9E58(&qword_1EBF03CF0);
  v82 = v14;
  v15 = *(*(v14 - 8) + 72);
  v16 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
  v68 = 2 * v15;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C1A74920;
  v18 = (v17 + v16);
  v91 = v5;
  v19 = *(v14 + 48);
  *v18 = 0x736E657474696BLL;
  *(v18 + 1) = 0xE700000000000000;
  v20 = *MEMORY[0x1E6989D18];
  v21 = sub_1C1A6EC0C();
  v22 = *(v21 - 8);
  v66 = *(v22 + 104);
  v67 = (v22 + 104);
  v66(&v18[v19], v20, v21);
  LODWORD(v65) = *MEMORY[0x1E6989D00];
  v23 = v65;
  v24 = sub_1C1A6EC1C();
  v93 = v4;
  v25 = v24;
  v26 = *(*(v24 - 8) + 104);
  v26(&v18[v19], v23, v24);
  v27 = &v18[v15];
  v28 = v82;
  v29 = v82[12];
  *v27 = 0x73656970707570;
  *(v27 + 1) = 0xE700000000000000;
  v26(&v18[v15 + v29], *MEMORY[0x1E6989D08], v25);
  v30 = &v18[v68];
  v31 = v28[12];
  *v30 = 0x7365696E6E7562;
  *(v30 + 1) = 0xE700000000000000;
  *&v30[v31] = 30;
  v66(&v30[v31], *MEMORY[0x1E6989D10], v21);
  v26(&v30[v31], v65, v25);
  swift_retain_n();
  v32 = v83;

  v33 = sub_1C1992854(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v34 = type metadata accessor for FixedPolicyRuleStore();
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  v68 = sub_1C1A6E00C();
  swift_retain_n();

  v66 = sub_1C1A6DFFC();

  v36 = sub_1C19B7074(MEMORY[0x1E69E7CC0]);
  type metadata accessor for AppRequestMetaFieldsSource();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  v38 = sub_1C1A6EC8C();
  swift_allocObject();

  v65 = sub_1C1A6EC7C();
  v39 = v89;
  v40 = *(v89 + 48);
  v41 = objc_opt_self();

  v82 = v40;
  v64 = v41;
  v67 = [v41 sharedInstance];
  v42 = *(v39 + 96);
  *(&v95 + 1) = v73;
  v96 = sub_1C198FDCC(qword_1EDE60CD0, MEMORY[0x1E69C9E10]);
  *&v94 = v91;
  v43 = v78;
  v113 = v78;
  v114 = MEMORY[0x1E6986120];
  *&v112 = v93;
  v110 = v71;
  v111 = sub_1C198FDCC(qword_1EDE614C0, type metadata accessor for NullCountryCodeSource);
  v109[0] = v87;
  v44 = v69;
  v107[3] = v69;
  v108 = sub_1C198FDCC(qword_1EDE60E30, type metadata accessor for NullCountrySubdivisionCodeSource);
  v106[4] = MEMORY[0x1E6986128];
  v107[0] = v85;
  v106[3] = v72;
  v106[0] = v86;
  v105[4] = MEMORY[0x1E69860F0];
  v105[3] = v70;
  v105[0] = v32;
  v104[4] = MEMORY[0x1E6986118];
  v104[3] = v43;
  v104[0] = v93;
  v103[4] = v108;
  v103[3] = v44;
  v103[0] = v84;
  v102[3] = v34;
  v45 = v92;
  v102[4] = sub_1C198FDCC(qword_1EDE615F0, type metadata accessor for FixedPolicyRuleStore);
  v102[0] = v35;
  v101[3] = v77;
  v101[4] = sub_1C198FDCC(&qword_1EDE60CC8, MEMORY[0x1E69C9E20]);
  v100[4] = MEMORY[0x1E69C5F60];
  v101[0] = v88;
  v100[3] = v68;
  v99[4] = v75;
  v100[0] = v66;
  v99[3] = v76;
  v99[0] = v45;
  v98[3] = v38;
  v98[4] = MEMORY[0x1E6989D78];
  v98[0] = v65;
  type metadata accessor for ModuleFactory();
  v46 = swift_allocObject();
  sub_1C19992F8(&v94, (v46 + 2));
  v46[7] = v74;
  sub_1C19992F8(v109, (v46 + 8));
  sub_1C19992F8(v107, (v46 + 13));
  sub_1C19992F8(v103, (v46 + 18));
  sub_1C19992F8(v102, (v46 + 23));
  sub_1C19992F8(v101, (v46 + 28));
  sub_1C19992F8(v100, (v46 + 33));
  sub_1C19992F8(v99, (v46 + 38));
  v46[56] = v90;
  v46[57] = v37;
  sub_1C19992F8(v98, (v46 + 43));
  v47 = v67;
  v46[48] = v82;
  v46[49] = v47;
  v46[50] = v42;

  sub_1C1993C3C(&v112, v105, v106, v104, v46 + 51);
  sub_1C199935C(v98);
  sub_1C199935C(v99);
  sub_1C199935C(v100);
  sub_1C199935C(v101);
  sub_1C199935C(v102);
  sub_1C199935C(v103);
  sub_1C199935C(v104);
  sub_1C199935C(v105);
  sub_1C199935C(v106);
  sub_1C199935C(v107);
  sub_1C199935C(v109);
  sub_1C199935C(&v112);
  sub_1C199935C(&v94);

  v48 = v89;
  *(v89 + 24) = v46;
  sub_1C1A6EE6C();
  sub_1C19992F8((v46 + 51), &v94);
  sub_1C1A6EE5C();
  sub_1C199935C(&v94);
  sub_1C1994048((*(v48 + 24) + 408), *(*(v48 + 24) + 432));
  v50 = v79;
  v49 = v80;
  v51 = v81;
  (*(v80 + 104))(v79, *MEMORY[0x1E6989CE0], v81);
  LOBYTE(v39) = sub_1C1A6EC3C();
  (*(v49 + 8))(v50, v51);
  if (v39)
  {
    sub_1C1A2BBD4(&v112);
  }

  else
  {
    v52 = sub_1C1A6F27C();
    swift_allocObject();
    v53 = sub_1C1A6F26C();
    v113 = v52;
    v114 = MEMORY[0x1E69C9DF8];
    *&v112 = v53;
  }

  sub_1C199274C(&v112, &v94);
  sub_1C1A6F2AC();
  sub_1C199935C(&v94);
  sub_1C19992F8(*(v48 + 24) + 408, &v94);
  v54 = v92;
  swift_beginAccess();
  v55 = *(v54 + 64);
  v56 = *(&v95 + 1);
  if (v55)
  {
    sub_1C199935C(v92 + 40);
    if (v56)
    {
LABEL_8:
      sub_1C199274C(&v94, v92 + 40);
      goto LABEL_11;
    }
  }

  else if (*(&v95 + 1))
  {
    goto LABEL_8;
  }

  v57 = v95;
  v58 = v92;
  *(v92 + 40) = v94;
  *(v58 + 56) = v57;
  *(v58 + 72) = v96;
LABEL_11:
  swift_endAccess();
  if (qword_1EDE634E8 != -1)
  {
    swift_once();
  }

  v59 = byte_1EDE634F0;
  if (byte_1EDE634F0)
  {
    if (byte_1EDE634F0 != 1)
    {
      v59 = 2;
    }

    v60 = swift_allocObject();
    swift_weakInit();
    v96 = sub_1C1A0786C;
    v97 = v60;
    *&v94 = MEMORY[0x1E69E9820];
    *(&v94 + 1) = 1107296256;
    *&v95 = sub_1C199284C;
    *(&v95 + 1) = &unk_1F41415A0;
    v61 = _Block_copy(&v94);

    [v64 addAuthorizationChangedBlock_];
    _Block_release(v61);
    qword_1EDE63E80 = v59;
    if (qword_1EDE63FF8 != -1)
    {
      swift_once();
    }

    sub_1C1994154(byte_1EDE634F0);
  }

  return v48;
}

uint64_t sub_1C199274C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C1992764()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t *sub_1C19927E8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1C1992854(uint64_t a1)
{
  v2 = sub_1C19A9E58(&qword_1EBF03CF0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1C19A9E58(&qword_1EBF03CF8);
    v7 = sub_1C1A6FBEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1C1990FA8(v9, v5, &qword_1EBF03CF0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1C1991010(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1C1A6EC1C();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_1C1992A64()
{
  v1 = sub_1C1A6F6EC();
  v8 = *(v1 - 8);
  v9 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C1A6F6DC();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C1A6F22C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  *(v0 + 16) = 0x657079546461;
  *(v0 + 24) = 0xE600000000000000;
  strcpy((v0 + 32), "adFormatType");
  *(v0 + 45) = 0;
  *(v0 + 46) = -5120;
  strcpy((v0 + 48), "containerType");
  *(v0 + 62) = -4864;
  *(v0 + 64) = 0xD000000000000013;
  *(v0 + 72) = 0x80000001C1A816C0;
  *(v0 + 80) = 0x6E776F6E6B6E75;
  *(v0 + 88) = 0xE700000000000000;
  *(v0 + 96) = 0x7961646F54;
  *(v0 + 104) = 0xE500000000000000;
  *(v0 + 112) = 0x656873696C627550;
  *(v0 + 120) = 0xE900000000000072;
  *(v0 + 128) = 0x6269726373627573;
  *(v0 + 136) = 0xEA00000000007265;
  strcpy((v0 + 144), "non-subscriber");
  *(v0 + 159) = -18;
  v5 = MEMORY[0x1E69E7CC0];
  *(v0 + 160) = sub_1C1990F94(MEMORY[0x1E69E7CC0]);
  *(v0 + 168) = v5;
  *(v0 + 176) = 0;
  *(v0 + 184) = 0xE000000000000000;
  *(v0 + 192) = v5;
  *(v0 + 200) = v5;
  *(v0 + 208) = sub_1C1990280(v5);
  *(v0 + 216) = v5;
  sub_1C198FB8C(0, &qword_1EDE63F38);
  sub_1C1A6F21C();
  v10 = v5;
  sub_1C198FE14(&qword_1EDE63F40, MEMORY[0x1E69E8030]);
  sub_1C19A9E58(&qword_1EBF04180);
  sub_1C198FE5C(&qword_1EDE63F48, &qword_1EBF04180);
  sub_1C1A6F94C();
  (*(v8 + 104))(v7, *MEMORY[0x1E69E8090], v9);
  *(v0 + 224) = sub_1C1A6F71C();
  return v0;
}

void *sub_1C1992E04(void *a1, uint64_t *a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1C19A9E58(a2);
  v4 = sub_1C1A6FBEC();
  v5 = a1[4];
  v6 = a1[5];
  v7 = sub_1C1992F04(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v4;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 7;
  while (1)
  {
    *(v4 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v4[6] + 8 * v9) = v5;
    *(v4[7] + 8 * v9) = result;
    v12 = v4[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v4[2] = v14;
    if (!--v2)
    {
      goto LABEL_8;
    }

    v15 = v11 + 2;
    v5 = *(v11 - 1);
    v16 = *v11;

    v9 = sub_1C1992F04(v5);
    v11 = v15;
    result = v16;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1C1992F40()
{
  v1 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = aBlock - v2;
  v4 = [objc_allocWithZone(MEMORY[0x1E69C6148]) init];
  aBlock[4] = sub_1C1A1B950;
  v13 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C1A16158;
  aBlock[3] = &unk_1F4141B20;
  v5 = _Block_copy(aBlock);

  [v4 policiesToEnforce_];
  _Block_release(v5);
  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    v8 = sub_1C1A6F3CC();
    v10 = v9;

    sub_1C1A6D5CC();
    v11 = sub_1C1A6D5DC();
    (*(*(v11 - 8) + 56))(v3, 0, 1, v11);
    swift_beginAccess();
    sub_1C1993148(v3, v8, v10);
    swift_endAccess();
  }
}

uint64_t sub_1C1993148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_1C1A6D5DC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1C1991140(a1, &qword_1EBF038A8);
    sub_1C1A402DC(a2, a3, v9);

    return sub_1C1991140(v9, &qword_1EBF038A8);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1C1993320(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1C1993320(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1C1991010(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1C1A4A524();
      goto LABEL_7;
    }

    sub_1C19934A0(v15, a4 & 1);
    v26 = sub_1C1991010(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1C1A6FD3C();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1C1A6D5DC();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1C1993820(v12, a2, a3, a1, v18);
}

uint64_t sub_1C19934A0(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_1C1A6D5DC();
  v5 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1C19A9E58(&qword_1EBF03C80);
  v42 = a2;
  result = sub_1C1A6FBDC();
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
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_1C1A6FDAC();
      sub_1C1A6F45C();
      result = sub_1C1A6FDDC();
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

uint64_t sub_1C1993820(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1C1A6D5DC();
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

uint64_t sub_1C19938D0()
{
  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v1 = sub_1C1A6F1BC();
  sub_1C1994600(v1, qword_1EDE665F0);
  v2 = sub_1C1A6F19C();
  v3 = sub_1C1A6F65C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C198D000, v2, v3, "Prewarming APPControllerRequester.", v4, 2u);
    MEMORY[0x1C6906260](v4, -1, -1);
  }

  v5 = [objc_allocWithZone(MEMORY[0x1E698A048]) initWithDeliveryBlock_];
  v0[6] = nullsub_1;
  v0[7] = 0;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1C199284C;
  v0[5] = &unk_1F4140D58;
  v6 = _Block_copy(v0 + 2);
  [v5 preWarm:0 completion:v6];
  _Block_release(v6);
  [v5 endRequests];
  if (!qword_1EDE63E80)
  {
    v7 = sub_1C1A6F19C();
    v8 = sub_1C1A6F65C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C198D000, v7, v8, "Starting Webkit helper.", v9, 2u);
      MEMORY[0x1C6906260](v9, -1, -1);
    }

    v10 = sub_1C1A6F19C();
    v11 = sub_1C1A6F65C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1C198D000, v10, v11, "Starting AdPolicyManager.", v12, 2u);
      MEMORY[0x1C6906260](v12, -1, -1);
    }

    if (qword_1EDE63518 != -1)
    {
      swift_once();
    }

    if (qword_1EDE63E78 != -1)
    {
      swift_once();
    }

    sub_1C1992F40();
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1C1993C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1C19992F8(a3, v23);
  sub_1C19A9E58(&qword_1EBF04420);
  swift_allocObject();
  sub_1C1A6EDEC();
  sub_1C19992F8(a1, v23);
  v9 = sub_1C1A6D82C();
  swift_allocObject();
  v10 = sub_1C1A6D81C();
  v24 = v9;
  v25 = MEMORY[0x1E6986140];
  v23[0] = v10;
  sub_1C1A6D7EC();
  swift_allocObject();
  sub_1C1A6D7DC();
  sub_1C1A6D80C();
  swift_allocObject();
  sub_1C1A6D7FC();
  sub_1C1994048(a3, a3[3]);
  if (sub_1C1A6D73C())
  {
    sub_1C19992F8(a4, v23);
    sub_1C198FE5C(&unk_1EDE63F20, &qword_1EBF04420);
    v11 = &qword_1EBF04428;
    v12 = sub_1C19A9E58(&qword_1EBF04428);
    swift_allocObject();

    v13 = sub_1C1A6EEBC();

    v14 = &unk_1EDE63F18;
  }

  else
  {
    sub_1C19992F8(a2, v23);
    v15 = sub_1C1A6EE4C();
    swift_allocObject();
    v16 = sub_1C1A6EE3C();
    v24 = v15;
    v25 = MEMORY[0x1E6989E00];
    v23[0] = v16;
    v17 = sub_1C1A6F03C();
    swift_allocObject();

    v18 = sub_1C1A6F02C();
    v24 = v17;
    v25 = MEMORY[0x1E6989E58];
    v23[0] = v18;
    sub_1C198FE5C(&unk_1EDE63F20, &qword_1EBF04420);
    v19 = sub_1C19A9E58(&qword_1EBF04430);
    swift_allocObject();

    v20 = sub_1C1A6EDBC();
    v24 = v19;
    v25 = sub_1C198FE5C(&qword_1EDE62340, &qword_1EBF04430);
    v23[0] = v20;
    v11 = &qword_1EBF04438;
    v12 = sub_1C19A9E58(&qword_1EBF04438);
    swift_allocObject();

    v13 = sub_1C1A6ED6C();

    v14 = &unk_1EDE62348;
  }

  result = sub_1C198FE5C(v14, v11);
  a5[3] = v12;
  a5[4] = result;
  *a5 = v13;
  return result;
}

void *sub_1C1994048(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

double sub_1C19940B0()
{
  type metadata accessor for SearchAdsFacade();
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *(v0 + 24) = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  qword_1EDE66578 = v0;
  return result;
}

uint64_t sub_1C1994154(unsigned __int8 a1)
{
  v3 = a1;
  v4 = sub_1C1A6F20C();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 80) = a1;
  if (v3 == 1)
  {
    v9 = *(v1 + 24);
    sub_1C198FB8C(0, &qword_1EDE63F38);
    (*(v5 + 104))(v8, *MEMORY[0x1E69E7F98], v4);
    v10 = v1;
    v11 = sub_1C1A6F72C();
    (*(v5 + 8))(v8, v4);
    [v9 setUnderlyingQueue_];

    v12 = [objc_opt_self() defaultCenter];
    v13 = sub_1C1A6F39C();
    aBlock[4] = sub_1C19E79FC;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C19E63D0;
    aBlock[3] = &unk_1F4140A38;
    v14 = _Block_copy(aBlock);

    v15 = [v12 addObserverForName:v13 object:0 suspensionBehavior:2 queue:v9 usingBlock:v14];
    _Block_release(v14);

    sub_1C1A6F92C();
    swift_unknownObjectRelease();
    return sub_1C199935C(aBlock);
  }

  return result;
}

uint64_t sub_1C19943C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C1990BB0;

  return sub_1C1994470();
}

uint64_t sub_1C1994580()
{
  v0 = sub_1C1A6F1BC();
  sub_1C1994638(v0, qword_1EDE665F0);
  sub_1C1994600(v0, qword_1EDE665F0);
  return sub_1C1A6F1AC();
}

uint64_t sub_1C1994600(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1C1994638(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

char *Context.sponsorshipAdView(info:)(uint64_t a1)
{
  v203 = a1;
  v2 = sub_1C1A6D62C();
  v207 = *(v2 - 8);
  v208 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v206 = &v185 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C1A6D48C();
  v201 = *(v4 - 8);
  v202 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v192 = &v185 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v197 = &v185 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v195 = &v185 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v194 = &v185 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v193 = &v185 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v198 = &v185 - v15;
  v16 = sub_1C19A9E58(&unk_1EBF04600);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v185 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v185 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v196 = &v185 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v199 = &v185 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v185 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v185 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v200 = &v185 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v185 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v204 = &v185 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v205 = &v185 - v40;
  v41 = sub_1C19A9E58(&qword_1EBF047E0);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v43 = &v185 - v42;
  v44 = sub_1C1A6E42C();
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v185 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v209 = &v185 - v49;
  v210 = v1;
  v50 = sub_1C1A6E94C();
  if (!v50)
  {
    (*(v45 + 56))(v43, 1, 1, v44);
    goto LABEL_9;
  }

  v51 = v50;
  sub_1C1A6E4DC();

  if ((*(v45 + 48))(v43, 1, v44) == 1)
  {
LABEL_9:
    sub_1C1991140(v43, &qword_1EBF047E0);
    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v55 = sub_1C1A6F1BC();
    sub_1C1994600(v55, qword_1EDE665F0);
    v56 = v210;
    v57 = sub_1C1A6F19C();
    v58 = sub_1C1A6F66C();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v211[0] = v60;
      *v59 = 67109378;
      *(v59 + 4) = 36;
      *(v59 + 8) = 2080;
      v61 = v206;
      sub_1C1A6DD2C();
      sub_1C1A0DC0C(&qword_1EDE63968, MEMORY[0x1E69695A8]);
      v62 = v208;
      v63 = sub_1C1A6FCCC();
      v65 = v64;
      (*(v207 + 8))(v61, v62);
      v66 = sub_1C19A1884(v63, v65, v211);

      *(v59 + 10) = v66;
      _os_log_impl(&dword_1C198D000, v57, v58, "Context ID: %-*s Unable to retrieve sponsorship view for sponsorship ad without a sponsorship placement.", v59, 0x12u);
      sub_1C199935C(v60);
      MEMORY[0x1C6906260](v60, -1, -1);
      MEMORY[0x1C6906260](v59, -1, -1);
    }

    return 0;
  }

  v190 = v45;
  (*(v45 + 32))(v209, v43, v44);
  v52 = sub_1C1A6E41C();
  v53 = sub_1C1A6E3FC();
  v191 = v44;
  if (!v53 || (v54 = sub_1C1A6E3EC(), , !v54))
  {
    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v67 = sub_1C1A6F1BC();
    sub_1C1994600(v67, qword_1EDE665F0);
    v68 = v210;
    v69 = sub_1C1A6F19C();
    v70 = sub_1C1A6F66C();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v211[0] = v72;
      *v71 = 67109378;
      *(v71 + 4) = 36;
      *(v71 + 8) = 2080;
      v73 = v206;
      sub_1C1A6DD2C();
      sub_1C1A0DC0C(&qword_1EDE63968, MEMORY[0x1E69695A8]);
      v74 = v208;
      v75 = sub_1C1A6FCCC();
      v77 = v76;
      (*(v207 + 8))(v73, v74);
      v78 = sub_1C19A1884(v75, v77, v211);

      *(v71 + 10) = v78;
      _os_log_impl(&dword_1C198D000, v69, v70, "Context ID: %-*s No sponsorship ad found.", v71, 0x12u);
      sub_1C199935C(v72);
      MEMORY[0x1C6906260](v72, -1, -1);
      MEMORY[0x1C6906260](v71, -1, -1);
    }

    goto LABEL_61;
  }

  if (sub_1C1A6EAEC())
  {
    sub_1C1A6E68C();
    if (swift_dynamicCastClass())
    {
      sub_1C1A6E61C();
      swift_unknownObjectRelease();
      goto LABEL_21;
    }

    swift_unknownObjectRelease();
  }

  (*(v201 + 56))(v205, 1, 1, v202);
LABEL_21:
  v79 = sub_1C1A6EAEC();
  v188 = v52;
  if (v79)
  {
    sub_1C1A6E68C();
    if (swift_dynamicCastClass())
    {
      sub_1C1A6E62C();
      swift_unknownObjectRelease();
      goto LABEL_26;
    }

    swift_unknownObjectRelease();
  }

  (*(v201 + 56))(v204, 1, 1, v202);
LABEL_26:
  v80 = v54;
  v81 = sub_1C1A6E9CC();
  v189 = v82;

  v83 = v190;
  v84 = v191;
  (*(v190 + 16))(v47, v209, v191);
  v85 = (*(v83 + 88))(v47, v84);
  if (v85 == *MEMORY[0x1E69C6060])
  {
    v86 = objc_opt_self();
    v87 = v80;
    v88 = [v86 sharedApplication];
    v89 = sub_1C1A0E0B4(v81, v189, 0, v87, v88);
    v90 = v80;
    goto LABEL_47;
  }

  v91 = v189;
  v186 = v81;
  v187 = v80;
  if (v85 == *MEMORY[0x1E69C6058])
  {
    sub_1C1990FA8(v205, v36, &unk_1EBF04600);
    v92 = v91;
    v93 = v200;
    sub_1C1990FA8(v204, v200, &unk_1EBF04600);
    v94 = objc_opt_self();
    v199 = v187;
    v197 = [v94 sharedApplication];
    v196 = objc_allocWithZone(type metadata accessor for PromotedGroupedSponsorshipAdView());
    v95 = &v196[OBJC_IVAR____TtC17PromotedContentUI32PromotedGroupedSponsorshipAdView_text];
    *v95 = v186;
    v95[1] = v92;
    sub_1C1990FA8(v36, v31, &unk_1EBF04600);
    v97 = v201;
    v96 = v202;
    v98 = *(v201 + 48);
    if (v98(v31, 1, v202) == 1)
    {
      v28 = v31;
      v99 = v93;
    }

    else
    {
      v109 = v97[4];
      v109(v198, v31, v96);
      sub_1C1990FA8(v93, v28, &unk_1EBF04600);
      if (v98(v28, 1, v96) != 1)
      {
        v127 = v193;
        v109(v193, v28, v96);
        v128 = v97[2];
        v129 = v194;
        v130 = v198;
        v128(v194, v198, v96);
        v131 = v195;
        v128(v195, v127, v96);
        v132 = objc_allocWithZone(type metadata accessor for GroupedSponsorshipAdView());
        v133 = v189;

        v134 = v129;
        v99 = v200;
        v110 = sub_1C19C0200(v186, v133, v134, v131);
        [v110 setTranslatesAutoresizingMaskIntoConstraints_];
        v135 = v97[1];
        v135(v127, v96);
        v135(v130, v96);
        goto LABEL_46;
      }

      v99 = v93;
      (v97[1])(v198, v96);
    }

    sub_1C1991140(v28, &unk_1EBF04600);
    v110 = 0;
LABEL_46:
    v90 = v187;
    v136 = v196;
    *&v196[OBJC_IVAR____TtC17PromotedContentUI32PromotedGroupedSponsorshipAdView_groupedSponsorshipLockupView] = v110;
    v87 = v197;
    v137 = v199;
    v89 = sub_1C1A0DC54(v199, 0, 0, v87, v136);

    sub_1C1991140(v99, &unk_1EBF04600);
    sub_1C1991140(v36, &unk_1EBF04600);
    goto LABEL_47;
  }

  v100 = v189;
  if (v85 != *MEMORY[0x1E69C6068])
  {

    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v111 = sub_1C1A6F1BC();
    sub_1C1994600(v111, qword_1EDE665F0);
    v112 = v210;
    v113 = sub_1C1A6F19C();
    v114 = sub_1C1A6F66C();

    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v211[0] = v116;
      *v115 = 67109378;
      *(v115 + 4) = 36;
      *(v115 + 8) = 2080;
      v117 = v206;
      sub_1C1A6DD2C();
      sub_1C1A0DC0C(&qword_1EDE63968, MEMORY[0x1E69695A8]);
      v118 = v208;
      v119 = sub_1C1A6FCCC();
      v121 = v120;
      (*(v207 + 8))(v117, v118);
      v122 = sub_1C19A1884(v119, v121, v211);

      *(v115 + 10) = v122;
      _os_log_impl(&dword_1C198D000, v113, v114, "Context ID: %-*s Unexpected sponsorship banner placement received.", v115, 0x12u);
      sub_1C199935C(v116);
      MEMORY[0x1C6906260](v116, -1, -1);
      MEMORY[0x1C6906260](v115, -1, -1);
    }

    sub_1C1991140(v204, &unk_1EBF04600);
    sub_1C1991140(v205, &unk_1EBF04600);
    v123 = *(v190 + 8);
    v124 = v191;
    v123(v209, v191);
    v123(v47, v124);
    return 0;
  }

  v101 = v199;
  sub_1C1990FA8(v205, v199, &unk_1EBF04600);
  v102 = v196;
  sub_1C1990FA8(v204, v196, &unk_1EBF04600);
  v103 = objc_opt_self();
  v90 = v187;
  v200 = v187;
  v104 = [v103 sharedApplication];
  v198 = objc_allocWithZone(type metadata accessor for PromotedMastheadSponsorshipAdView());
  sub_1C1990FA8(v101, v21, &unk_1EBF04600);
  v106 = v201;
  v105 = v202;
  v107 = *(v201 + 48);
  if (v107(v21, 1, v202) == 1)
  {
    v18 = v21;
    v108 = v102;
  }

  else
  {
    v193 = v104;
    v125 = v106[4];
    v125(v197, v21, v105);
    sub_1C1990FA8(v102, v18, &unk_1EBF04600);
    v108 = v102;
    if (v107(v18, 1, v105) != 1)
    {
      v176 = v192;
      v125(v192, v18, v105);
      v177 = v106[2];
      v178 = v194;
      v179 = v197;
      v177(v194, v197, v105);
      v180 = v195;
      v177(v195, v176, v105);
      v181 = objc_allocWithZone(type metadata accessor for MastheadSponsorshipAdView());
      v126 = sub_1C19D00B0(v186, v100, v178, v180);
      [v126 setTranslatesAutoresizingMaskIntoConstraints_];
      v182 = v106[1];
      v182(v176, v105);
      v182(v179, v105);
      v90 = v187;
      v104 = v193;
      goto LABEL_64;
    }

    (v106[1])(v197, v105);
    v90 = v187;
    v104 = v193;
  }

  sub_1C1991140(v18, &unk_1EBF04600);
  v126 = 0;
LABEL_64:
  v183 = v198;
  *&v198[OBJC_IVAR____TtC17PromotedContentUI33PromotedMastheadSponsorshipAdView_mastheadSponsorshipLockupView] = v126;
  v87 = v104;
  v184 = v200;
  v89 = sub_1C1A0DC54(v200, 0, 0, v87, v183);

  sub_1C1991140(v108, &unk_1EBF04600);
  sub_1C1991140(v199, &unk_1EBF04600);
LABEL_47:

  v138 = MEMORY[0x1E69E7D40];
  v139 = *((*MEMORY[0x1E69E7D40] & *v89) + 0x2A8);
  v140 = v89;
  *&v141 = COERCE_DOUBLE(v139());
  v143 = v142;
  v145 = v144;

  if (v145)
  {
    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v146 = sub_1C1A6F1BC();
    sub_1C1994600(v146, qword_1EDE665F0);
    v147 = v210;
    v148 = sub_1C1A6F19C();
    v149 = sub_1C1A6F66C();

    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      v211[0] = v151;
      *v150 = 67109378;
      *(v150 + 4) = 36;
      *(v150 + 8) = 2080;
      v152 = v206;
      sub_1C1A6DD2C();
      sub_1C1A0DC0C(&qword_1EDE63968, MEMORY[0x1E69695A8]);
      v153 = v90;
      v154 = v208;
      v155 = sub_1C1A6FCCC();
      v157 = v156;
      (*(v207 + 8))(v152, v154);
      v158 = sub_1C19A1884(v155, v157, v211);

      *(v150 + 10) = v158;
      _os_log_impl(&dword_1C198D000, v148, v149, "Context ID: %-*s Unable to determine size for sponsorship ad view.", v150, 0x12u);
      sub_1C199935C(v151);
      MEMORY[0x1C6906260](v151, -1, -1);
      MEMORY[0x1C6906260](v150, -1, -1);
    }

    else
    {
    }

    sub_1C1991140(v204, &unk_1EBF04600);
    sub_1C1991140(v205, &unk_1EBF04600);
LABEL_61:
    (*(v190 + 8))(v209, v191);
    return 0;
  }

  v159 = *&v141;
  v160 = v143;
  v161 = objc_allocWithZone(type metadata accessor for MetricsView());
  v162 = v90;
  v163 = v210;
  v164 = sub_1C199AD38(v163, v162, 0, v161, 0.0, 0.0, v159, v160);

  v165 = v164;
  (*((*v138 & *v164) + 0x5B0))(v140);
  if (sub_1C1A6E3FC())
  {
    sub_1C1A6E3DC();
  }

  v166 = [v164 promotedContentInfo];
  if (v166)
  {
    v167 = v166;
    v168 = sub_1C1A6DCCC();
    v170 = v169;

    if (qword_1EDE63C40 != -1)
    {
      swift_once();
    }

    v171 = v206;
    sub_1C1A6DD2C();
    v172 = sub_1C1A6D5EC();
    v174 = v173;
    (*(v207 + 8))(v171, v208);
    sub_1C199EEB0(v165, v172, v174, v168, v170);
  }

  [sub_1C1A6EAAC() delivered];

  swift_unknownObjectRelease();
  sub_1C1991140(v204, &unk_1EBF04600);
  sub_1C1991140(v205, &unk_1EBF04600);
  (*(v190 + 8))(v209, v191);
  return v165;
}

uint64_t type metadata accessor for PromotedMastheadSponsorshipAdView()
{
  result = qword_1EDE63928;
  if (!qword_1EDE63928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for PromotedContentView()
{
  result = qword_1EDE63800;
  if (!qword_1EDE63800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1995E68()
{
  sub_1C1995F88();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C1995F88()
{
  if (!qword_1EDE62758)
  {
    sub_1C1A6F25C();
    v0 = sub_1C1A6F91C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE62758);
    }
  }
}

char *PrivacyMarker.init()()
{
  v1 = OBJC_IVAR___APPrivacyMarker_markerLabel;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v2 = OBJC_IVAR___APPrivacyMarker_markerView;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v0[OBJC_IVAR___APPrivacyMarker_privacyMarkerType] = 0;
  *&v0[OBJC_IVAR___APPrivacyMarker_privacyMarkerPosition] = 2;
  v3 = &v0[OBJC_IVAR___APPrivacyMarker_minimumTappableSize];
  *v3 = 0;
  v3[1] = 0;
  v0[OBJC_IVAR___APPrivacyMarker_adjustsFontForContentSizeCategory] = 1;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for PrivacyMarker();
  v4 = objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v5 = *&v4[OBJC_IVAR___APPrivacyMarker_markerView];
  v6 = v4;
  [v6 addSubview_];
  [v5 setUserInteractionEnabled_];
  v7 = OBJC_IVAR___APPrivacyMarker_markerLabel;
  v8 = *&v6[OBJC_IVAR___APPrivacyMarker_markerLabel];
  [v5 addSubview_];
  [v5 frame];
  [v8 setFrame_];
  [v8 setUserInteractionEnabled_];
  sub_1C19963F0();
  v9 = sub_1C1A6F39C();
  [v6 setAccessibilityIdentifier_];

  v10 = [*&v6[v7] text];
  [v6 setAccessibilityLabel_];

  v11 = objc_opt_self();
  v12 = [v11 defaultCenter];
  [v12 addObserver:v6 selector:sel_systemColorStatusChanged_ name:*MEMORY[0x1E69DD8B8] object:0];

  v13 = [v11 defaultCenter];
  [v13 addObserver:v6 selector:sel_sizeCategoryChanged_ name:*MEMORY[0x1E69DDC48] object:0];

  sub_1C1996934();
  sub_1C19970C4();

  return v6;
}

id sub_1C19963F0()
{
  v1 = *(v0 + OBJC_IVAR___APPrivacyMarker_markerLabel);
  [v1 setAdjustsFontForContentSizeCategory_];
  if (qword_1EDE62838 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v2 = sub_1C1A6F39C();

  [v1 setText_];

  v3 = [objc_opt_self() currentTraitCollection];
  v4 = [v3 preferredContentSizeCategory];

  v7 = *(v0 + OBJC_IVAR___APPrivacyMarker_privacyMarkerType);
  v5 = sub_1C19971D8(&v7);

  [v1 setFont_];
  [v1 setTextAlignment_];
  if (qword_1EDE62828 != -1)
  {
    swift_once();
  }

  [v1 setTextColor_];
  if (qword_1EDE62850 != -1)
  {
    swift_once();
  }

  return [v1 setHighlightedTextColor_];
}

void sub_1C19965E4()
{
  type metadata accessor for PromotedContentUIModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = [v1 mainBundle];
  sub_1C1996754();
  LOBYTE(v1) = sub_1C1A6F7BC();

  if (v1)
  {
    sub_1C1A6FB8C();
    __break(1u);
  }

  else
  {
    v4 = sub_1C1A6D31C();
    v6 = v5;

    qword_1EDE62840 = v4;
    qword_1EDE62848 = v6;
  }
}

unint64_t sub_1C1996754()
{
  result = qword_1EDE62678;
  if (!qword_1EDE62678)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE62678);
  }

  return result;
}

id sub_1C19967A0()
{
  result = [objc_opt_self() whiteColor];
  qword_1EDE62830 = result;
  return result;
}

void sub_1C19967DC()
{
  type metadata accessor for PromotedContentUIModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = [v1 mainBundle];
  sub_1C1996754();
  LOBYTE(v1) = sub_1C1A6F7BC();

  if (v1)
  {
    sub_1C1A6FB8C();
    __break(1u);
  }

  else
  {
    v4 = sub_1C1A6F39C();
    v5 = [objc_opt_self() colorNamed:v4 inBundle:v2 compatibleWithTraitCollection:0];

    qword_1EDE62858 = v5;
  }
}

uint64_t sub_1C1996934()
{
  v1 = *(v0 + OBJC_IVAR___APPrivacyMarker_markerView);
  result = sub_1C1996AD0();
  if ((result & 1) == 0)
  {
    if (UIAccessibilityDarkerSystemColorsEnabled())
    {
      if (qword_1EBF035B0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      [v1 setBackgroundColor_];
      if (qword_1EBF035B8 != -1)
      {
        swift_once();
      }

      v3 = &qword_1EBF04980;
    }

    else
    {
      if (qword_1EDE62860 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      [v1 setBackgroundColor_];
      if (qword_1EDE62818 != -1)
      {
        swift_once();
      }

      v3 = &qword_1EDE62820;
    }

    swift_beginAccess();
    return [v1 setTintColor_];
  }

  return result;
}

uint64_t sub_1C1996AD0()
{
  result = [objc_opt_self() isAppleInternalInstall];
  if (result)
  {
    sub_1C1A6F3CC();
    v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v2 = sub_1C1A6F39C();

    v3 = [v1 initWithSuiteName_];

    if (v3)
    {
      v4 = sub_1C1A6F39C();
      v5 = [v3 BOOLForKey_];

      if (v5)
      {
        v6 = [objc_opt_self() redColor];
        sub_1C1A6CA80(v6);

LABEL_5:
        return 1;
      }

      v7 = [v3 stringForKey_];
      if (!v7)
      {
        goto LABEL_23;
      }

      v8 = v7;
      v9 = sub_1C1A6F3CC();
      v11 = v10;

      if (v9 != sub_1C1A6F3CC() || v11 != v12)
      {
        v14 = sub_1C1A6FCEC();

        if ((v14 & 1) == 0)
        {
          v15 = sub_1C1A6CC10();
          v16 = sub_1C1A6F39C();
          v17 = [v3 dictionaryForKey_];

          if (v17)
          {
            v18 = sub_1C1A6F31C();

            v19 = sub_1C1A1FBA0(v18);

            if (v19)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v24 = v15;
              sub_1C1A6CD50(v19, sub_1C1A6CBC8, 0, isUniquelyReferenced_nonNull_native, &v24);

              v15 = v24;
            }
          }

          if (*(v15 + 16))
          {
            sub_1C1991010(v9, v11);
            v22 = v21;

            if (v22)
            {

              v23 = sub_1C1A6CFF0();

              if (v23)
              {
                sub_1C1A6CA80(v23);

                goto LABEL_5;
              }
            }
          }

          else
          {
          }
        }

LABEL_23:

        return 0;
      }
    }

    return 0;
  }

  return result;
}

void sub_1C1996E14()
{
  type metadata accessor for PromotedContentUIModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = [v1 mainBundle];
  sub_1C1996754();
  LOBYTE(v1) = sub_1C1A6F7BC();

  if (v1)
  {
    sub_1C1A6FB8C();
    __break(1u);
  }

  else
  {
    v4 = sub_1C1A6F39C();
    v5 = [objc_opt_self() colorNamed:v4 inBundle:v2 compatibleWithTraitCollection:0];

    qword_1EDE62868 = v5;
  }
}

void sub_1C1996F6C()
{
  type metadata accessor for PromotedContentUIModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = [v1 mainBundle];
  sub_1C1996754();
  LOBYTE(v1) = sub_1C1A6F7BC();

  if (v1)
  {
    sub_1C1A6FB8C();
    __break(1u);
  }

  else
  {
    v4 = sub_1C1A6F39C();
    v5 = [objc_opt_self() colorNamed:v4 inBundle:v2 compatibleWithTraitCollection:0];

    qword_1EDE62820 = v5;
  }
}

void sub_1C19970C4()
{
  v1 = [objc_opt_self() sharedApplication];
  v6 = [v1 preferredContentSizeCategory];

  v2 = *(v0 + OBJC_IVAR___APPrivacyMarker_markerLabel);
  v3 = OBJC_IVAR___APPrivacyMarker_privacyMarkerType;
  v8 = *(v0 + OBJC_IVAR___APPrivacyMarker_privacyMarkerType);
  v4 = sub_1C19971D8(&v8);
  [v2 setFont_];

  v5 = [*(v0 + OBJC_IVAR___APPrivacyMarker_markerView) layer];
  v7 = *(v0 + v3);
  [v5 setCornerRadius_];

  sub_1C199A9B4();
}

id sub_1C19971D8(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = MEMORY[0x1E69DB980];
  if (v1 != 2)
  {
    if (v1 == 3)
    {
      v3 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
      v4 = [objc_opt_self() systemFontOfSize:13.0 weight:*v2];
      v5 = [v3 scaledFontForFont_];

      return v5;
    }

    v2 = MEMORY[0x1E69DB978];
  }

  v7 = *v2;
  v8 = sub_1C1A6F3CC();
  v10 = v9;
  if (v8 == sub_1C1A6F3CC() && v10 == v11)
  {
    goto LABEL_17;
  }

  v13 = sub_1C1A6FCEC();

  if (v13)
  {
    goto LABEL_18;
  }

  v14 = sub_1C1A6F3CC();
  v16 = v15;
  if (v14 == sub_1C1A6F3CC() && v16 == v17)
  {
LABEL_17:

    goto LABEL_18;
  }

  v19 = sub_1C1A6FCEC();

  if ((v19 & 1) == 0)
  {
    v20 = sub_1C1A6F3CC();
    v22 = v21;
    if (v20 != sub_1C1A6F3CC() || v22 != v23)
    {
      v25 = sub_1C1A6FCEC();

      if (v25)
      {
        goto LABEL_18;
      }

      v26 = sub_1C1A6F3CC();
      v28 = v27;
      if (v26 != sub_1C1A6F3CC() || v28 != v29)
      {
        v30 = sub_1C1A6FCEC();

        if (v30)
        {
          goto LABEL_18;
        }

        v31 = sub_1C1A6F3CC();
        v33 = v32;
        if (v31 == sub_1C1A6F3CC() && v33 == v34)
        {

LABEL_30:
          v24 = [objc_opt_self() systemFontOfSize:15.0 weight:v7];
          goto LABEL_19;
        }

        v35 = sub_1C1A6FCEC();

        if (v35)
        {
          goto LABEL_30;
        }

        v36 = sub_1C1A6F3CC();
        v38 = v37;
        if (v36 == sub_1C1A6F3CC() && v38 == v39)
        {

LABEL_35:
          v24 = [objc_opt_self() systemFontOfSize:17.0 weight:v7];
          goto LABEL_19;
        }

        v40 = sub_1C1A6FCEC();

        if (v40)
        {
          goto LABEL_35;
        }

        v41 = sub_1C1A6F3CC();
        v43 = v42;
        if (v41 == sub_1C1A6F3CC() && v43 == v44)
        {

LABEL_40:
          v24 = [objc_opt_self() systemFontOfSize:19.0 weight:v7];
          goto LABEL_19;
        }

        v45 = sub_1C1A6FCEC();

        if (v45)
        {
          goto LABEL_40;
        }

        v46 = sub_1C1A6F3CC();
        v48 = v47;
        if (v46 == sub_1C1A6F3CC() && v48 == v49)
        {

LABEL_45:
          v24 = [objc_opt_self() systemFontOfSize:23.0 weight:v7];
          goto LABEL_19;
        }

        v50 = sub_1C1A6FCEC();

        if (v50)
        {
          goto LABEL_45;
        }

        v51 = sub_1C1A6F3CC();
        v53 = v52;
        if (v51 == sub_1C1A6F3CC() && v53 == v54)
        {
          goto LABEL_48;
        }

        v55 = sub_1C1A6FCEC();

        if (v55)
        {
          goto LABEL_50;
        }

        v56 = sub_1C1A6F3CC();
        v58 = v57;
        if (v56 == sub_1C1A6F3CC() && v58 == v59)
        {
          goto LABEL_48;
        }

        v60 = sub_1C1A6FCEC();

        if (v60)
        {
          goto LABEL_50;
        }

        v61 = sub_1C1A6F3CC();
        v63 = v62;
        if (v61 == sub_1C1A6F3CC() && v63 == v64)
        {
          goto LABEL_48;
        }

        v65 = sub_1C1A6FCEC();

        if (v65)
        {
          goto LABEL_50;
        }

        v66 = sub_1C1A6F3CC();
        v68 = v67;
        if (v66 == sub_1C1A6F3CC() && v68 == v69)
        {
LABEL_48:
        }

        else
        {
          v70 = sub_1C1A6FCEC();

          if ((v70 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

LABEL_50:
        v24 = [objc_opt_self() systemFontOfSize:27.0 weight:v7];
        goto LABEL_19;
      }
    }

    goto LABEL_17;
  }

LABEL_18:
  v24 = [objc_opt_self() systemFontOfSize:13.0 weight:v7];
LABEL_19:

  return v24;
}

double sub_1C1997908(unsigned __int8 *a1)
{
  v1 = *a1;
  result = 6.0;
  if (v1 != 3)
  {
    v3 = sub_1C1A6F3CC();
    v5 = v4;
    if (v3 != sub_1C1A6F3CC() || v5 != v6)
    {
      v8 = sub_1C1A6FCEC();

      if (v8)
      {
        goto LABEL_15;
      }

      v9 = sub_1C1A6F3CC();
      v11 = v10;
      if (v9 != sub_1C1A6F3CC() || v11 != v12)
      {
        v14 = sub_1C1A6FCEC();

        if ((v14 & 1) == 0)
        {
          v15 = sub_1C1A6F3CC();
          v17 = v16;
          if (v15 != sub_1C1A6F3CC() || v17 != v18)
          {
            v21 = sub_1C1A6FCEC();

            if (v21)
            {
              goto LABEL_15;
            }

            v22 = sub_1C1A6F3CC();
            v24 = v23;
            if (v22 != sub_1C1A6F3CC() || v24 != v25)
            {
              v26 = sub_1C1A6FCEC();

              if (v26)
              {
                goto LABEL_15;
              }

              v27 = sub_1C1A6F3CC();
              v29 = v28;
              if (v27 == sub_1C1A6F3CC() && v29 == v30)
              {

LABEL_27:
                v19 = v1 == 2;
                result = 5.0;
                v20 = 10.0;
                goto LABEL_16;
              }

              v31 = sub_1C1A6FCEC();

              if (v31)
              {
                goto LABEL_27;
              }

              v32 = sub_1C1A6F3CC();
              v34 = v33;
              if (v32 == sub_1C1A6F3CC() && v34 == v35)
              {

LABEL_32:
                v19 = v1 == 2;
                result = 6.0;
                v20 = 11.0;
                goto LABEL_16;
              }

              v36 = sub_1C1A6FCEC();

              if (v36)
              {
                goto LABEL_32;
              }

              v37 = sub_1C1A6F3CC();
              v39 = v38;
              if (v37 == sub_1C1A6F3CC() && v39 == v40)
              {

LABEL_37:
                v19 = v1 == 2;
                result = 6.0;
                v20 = 13.0;
                goto LABEL_16;
              }

              v41 = sub_1C1A6FCEC();

              if (v41)
              {
                goto LABEL_37;
              }

              v42 = sub_1C1A6F3CC();
              v44 = v43;
              if (v42 == sub_1C1A6F3CC() && v44 == v45)
              {

LABEL_42:
                v19 = v1 == 2;
                result = 8.0;
                v20 = 14.0;
                goto LABEL_16;
              }

              v46 = sub_1C1A6FCEC();

              if (v46)
              {
                goto LABEL_42;
              }

              v47 = sub_1C1A6F3CC();
              v49 = v48;
              if (v47 != sub_1C1A6F3CC() || v49 != v50)
              {
                v51 = sub_1C1A6FCEC();

                if (v51)
                {
                  goto LABEL_47;
                }

                v52 = sub_1C1A6F3CC();
                v54 = v53;
                if (v52 != sub_1C1A6F3CC() || v54 != v55)
                {
                  v56 = sub_1C1A6FCEC();

                  if (v56)
                  {
                    goto LABEL_47;
                  }

                  v57 = sub_1C1A6F3CC();
                  v59 = v58;
                  if (v57 != sub_1C1A6F3CC() || v59 != v60)
                  {
                    v61 = sub_1C1A6FCEC();

                    if (v61)
                    {
                      goto LABEL_47;
                    }

                    v62 = sub_1C1A6F3CC();
                    v64 = v63;
                    if (v62 != sub_1C1A6F3CC() || v64 != v65)
                    {
                      v66 = sub_1C1A6FCEC();

                      if ((v66 & 1) == 0)
                      {
                        goto LABEL_15;
                      }

                      goto LABEL_47;
                    }
                  }
                }
              }

LABEL_47:
              v19 = v1 == 2;
              result = 9.0;
              v20 = 16.0;
LABEL_16:
              if (v19)
              {
                return v20;
              }

              return result;
            }
          }

          goto LABEL_14;
        }

LABEL_15:
        v19 = v1 == 2;
        result = 4.0;
        v20 = 8.0;
        goto LABEL_16;
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1C1997EC8()
{
  v0 = sub_1C1A6D65C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C1A6D68C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1A6D6AC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C19A9E58(&qword_1EBF04C48);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - v13;
  sub_1C1A6D66C();
  sub_1C1A6D69C();
  (*(v9 + 8))(v11, v8);
  sub_1C1A6D67C();
  (*(v5 + 8))(v7, v4);
  if ((*(v1 + 48))(v14, 1, v0) == 1)
  {
    sub_1C1A3C6DC(v14);
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v15 = sub_1C1A6D63C();
    v16 = v17;
    (*(v1 + 8))(v14, v0);
  }

  sub_1C1A6D64C();
  v18 = sub_1C1A6D63C();
  v20 = v19;
  (*(v1 + 8))(v3, v0);
  if (v16)
  {
    if (v15 == v18 && v16 == v20)
    {
      v21 = 1;
    }

    else
    {
      v21 = sub_1C1A6FCEC();
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

double sub_1C19981FC(char a1)
{
  v2 = sub_1C1A6F3CC();
  v4 = v3;
  if (v2 == sub_1C1A6F3CC() && v4 == v5)
  {
    goto LABEL_13;
  }

  v7 = sub_1C1A6FCEC();

  if (v7)
  {
LABEL_14:
    v18 = (a1 & 1) == 0;
    result = 60.0;
    v20 = 25.0;
    goto LABEL_15;
  }

  v8 = sub_1C1A6F3CC();
  v10 = v9;
  if (v8 == sub_1C1A6F3CC() && v10 == v11)
  {
LABEL_13:

    goto LABEL_14;
  }

  v13 = sub_1C1A6FCEC();

  if (v13)
  {
    goto LABEL_14;
  }

  v14 = sub_1C1A6F3CC();
  v16 = v15;
  if (v14 == sub_1C1A6F3CC() && v16 == v17)
  {
    goto LABEL_13;
  }

  v21 = sub_1C1A6FCEC();

  if (v21)
  {
    goto LABEL_14;
  }

  v22 = sub_1C1A6F3CC();
  v24 = v23;
  if (v22 == sub_1C1A6F3CC() && v24 == v25)
  {
    goto LABEL_13;
  }

  v26 = sub_1C1A6FCEC();

  if (v26)
  {
    goto LABEL_14;
  }

  v27 = sub_1C1A6F3CC();
  v29 = v28;
  if (v27 == sub_1C1A6F3CC() && v29 == v30)
  {

LABEL_26:
    v18 = (a1 & 1) == 0;
    result = 72.0;
    v20 = 30.0;
    goto LABEL_15;
  }

  v31 = sub_1C1A6FCEC();

  if (v31)
  {
    goto LABEL_26;
  }

  v32 = sub_1C1A6F3CC();
  v34 = v33;
  if (v32 == sub_1C1A6F3CC() && v34 == v35)
  {

LABEL_31:
    v18 = (a1 & 1) == 0;
    result = 84.0;
    v20 = 35.0;
    goto LABEL_15;
  }

  v36 = sub_1C1A6FCEC();

  if (v36)
  {
    goto LABEL_31;
  }

  v37 = sub_1C1A6F3CC();
  v39 = v38;
  if (v37 == sub_1C1A6F3CC() && v39 == v40)
  {

LABEL_36:
    v18 = (a1 & 1) == 0;
    result = 92.0;
    v20 = 38.0;
    goto LABEL_15;
  }

  v41 = sub_1C1A6FCEC();

  if (v41)
  {
    goto LABEL_36;
  }

  v42 = sub_1C1A6F3CC();
  v44 = v43;
  if (v42 == sub_1C1A6F3CC() && v44 == v45)
  {

LABEL_41:
    v18 = (a1 & 1) == 0;
    result = 112.0;
    v20 = 47.0;
    goto LABEL_15;
  }

  v46 = sub_1C1A6FCEC();

  if (v46)
  {
    goto LABEL_41;
  }

  v47 = sub_1C1A6F3CC();
  v49 = v48;
  if (v47 != sub_1C1A6F3CC() || v49 != v50)
  {
    v51 = sub_1C1A6FCEC();

    if (v51)
    {
      goto LABEL_46;
    }

    v52 = sub_1C1A6F3CC();
    v54 = v53;
    if (v52 != sub_1C1A6F3CC() || v54 != v55)
    {
      v56 = sub_1C1A6FCEC();

      if (v56)
      {
        goto LABEL_46;
      }

      v57 = sub_1C1A6F3CC();
      v59 = v58;
      if (v57 != sub_1C1A6F3CC() || v59 != v60)
      {
        v61 = sub_1C1A6FCEC();

        if (v61)
        {
          goto LABEL_46;
        }

        v62 = sub_1C1A6F3CC();
        v64 = v63;
        if (v62 != sub_1C1A6F3CC() || v64 != v65)
        {
          v66 = sub_1C1A6FCEC();

          if ((v66 & 1) == 0)
          {
            sub_1C1A6F66C();
            sub_1C199E4CC();
            v67 = sub_1C1A6F8EC();
            sub_1C1A6F18C();

            goto LABEL_14;
          }

          goto LABEL_46;
        }
      }
    }
  }

LABEL_46:
  v18 = (a1 & 1) == 0;
  result = 132.0;
  v20 = 55.0;
LABEL_15:
  if (!v18)
  {
    return v20;
  }

  return result;
}

double sub_1C1998868()
{
  v0 = sub_1C1A6F3CC();
  v2 = v1;
  if (v0 == sub_1C1A6F3CC() && v2 == v3)
  {
    goto LABEL_13;
  }

  v5 = sub_1C1A6FCEC();

  if (v5)
  {
    return 15.0;
  }

  v6 = sub_1C1A6F3CC();
  v8 = v7;
  if (v6 == sub_1C1A6F3CC() && v8 == v9)
  {
LABEL_13:

    return 15.0;
  }

  v11 = sub_1C1A6FCEC();

  if (v11)
  {
    return 15.0;
  }

  v12 = sub_1C1A6F3CC();
  v14 = v13;
  if (v12 == sub_1C1A6F3CC() && v14 == v15)
  {
    goto LABEL_13;
  }

  v17 = sub_1C1A6FCEC();

  if (v17)
  {
    return 15.0;
  }

  v18 = sub_1C1A6F3CC();
  v20 = v19;
  if (v18 == sub_1C1A6F3CC() && v20 == v21)
  {
    goto LABEL_13;
  }

  v22 = sub_1C1A6FCEC();

  if (v22)
  {
    return 15.0;
  }

  v23 = sub_1C1A6F3CC();
  v25 = v24;
  if (v23 == sub_1C1A6F3CC() && v25 == v26)
  {

    return 18.0;
  }

  v27 = sub_1C1A6FCEC();

  result = 18.0;
  if ((v27 & 1) == 0)
  {
    v28 = sub_1C1A6F3CC();
    v30 = v29;
    if (v28 == sub_1C1A6F3CC() && v30 == v31)
    {

      return 21.0;
    }

    v32 = sub_1C1A6FCEC();

    result = 21.0;
    if ((v32 & 1) == 0)
    {
      v33 = sub_1C1A6F3CC();
      v35 = v34;
      if (v33 == sub_1C1A6F3CC() && v35 == v36)
      {

        return 23.0;
      }

      v37 = sub_1C1A6FCEC();

      result = 23.0;
      if ((v37 & 1) == 0)
      {
        v38 = sub_1C1A6F3CC();
        v40 = v39;
        if (v38 == sub_1C1A6F3CC() && v40 == v41)
        {

          return 28.0;
        }

        v42 = sub_1C1A6FCEC();

        result = 28.0;
        if ((v42 & 1) == 0)
        {
          v43 = sub_1C1A6F3CC();
          v45 = v44;
          if (v43 == sub_1C1A6F3CC() && v45 == v46)
          {
            goto LABEL_38;
          }

          v47 = sub_1C1A6FCEC();

          if (v47)
          {
            return 33.0;
          }

          v48 = sub_1C1A6F3CC();
          v50 = v49;
          if (v48 == sub_1C1A6F3CC() && v50 == v51)
          {
            goto LABEL_38;
          }

          v52 = sub_1C1A6FCEC();

          if (v52)
          {
            return 33.0;
          }

          v53 = sub_1C1A6F3CC();
          v55 = v54;
          if (v53 == sub_1C1A6F3CC() && v55 == v56)
          {
            goto LABEL_38;
          }

          v57 = sub_1C1A6FCEC();

          if (v57)
          {
            return 33.0;
          }

          v58 = sub_1C1A6F3CC();
          v60 = v59;
          if (v58 == sub_1C1A6F3CC() && v60 == v61)
          {
LABEL_38:

            return 33.0;
          }

          v62 = sub_1C1A6FCEC();

          if (v62)
          {
            return 33.0;
          }

          v63 = sub_1C1A6F3CC();
          v65 = v64;
          if (v63 != sub_1C1A6F3CC() || v65 != v66)
          {
            v67 = sub_1C1A6FCEC();

            if ((v67 & 1) == 0)
            {
              sub_1C1A6F66C();
              sub_1C199E4CC();
              v68 = sub_1C1A6F8EC();
              sub_1C1A6F18C();
            }

            return 15.0;
          }

          goto LABEL_13;
        }
      }
    }
  }

  return result;
}

void _s17PromotedContentUI13PrivacyMarkerC07privacyE4Size4type12sizeCategory015minimumTappableG0So6CGSizeVAA0dE4TypeO_So09UIContentgJ0aAItFZ_0(unsigned __int8 *a1, uint64_t a2)
{
  v29 = a2;
  v27 = sub_1C1A6D65C();
  v3 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1A6D68C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C1A6D6AC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C19A9E58(&qword_1EBF04C48);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v27 - v15;
  v28 = *a1;
  sub_1C1A6D66C();
  sub_1C1A6D69C();
  (*(v11 + 8))(v13, v10);
  sub_1C1A6D67C();
  (*(v7 + 8))(v9, v6);
  v17 = v27;
  if ((*(v3 + 48))(v16, 1, v27) == 1)
  {
    sub_1C1A3C6DC(v16);
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v18 = sub_1C1A6D63C();
    v19 = v20;
    (*(v3 + 8))(v16, v17);
  }

  sub_1C1A6D64C();
  v21 = sub_1C1A6D63C();
  v23 = v22;
  (*(v3 + 8))(v5, v17);
  if (v19)
  {
    if (v18 == v21 && v19 == v23)
    {
      v24 = 1;
    }

    else
    {
      v24 = sub_1C1A6FCEC();
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = v24 & 1;
  if (v28 >= 2)
  {
    if (v28 == 2)
    {
      sub_1C19F8178(v25);
      sub_1C19F7B54();
    }

    else
    {
      sub_1C19F87DC(v25);
      v30 = 3;
      v26 = sub_1C19971D8(&v30);
      [v26 capHeight];
    }
  }

  else
  {
    sub_1C19981FC(v25);
    sub_1C1998868();
  }
}

uint64_t sub_1C19992F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C199935C(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

id sub_1C19993AC()
{
  *&v0[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_kMaximumTimeSinceTap] = 0x3FC999999999999ALL;
  v1 = &v0[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_touchDownHandler];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_touchMovedHandler];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_touchUpHandler];
  *v3 = 0;
  v3[1] = 0;
  v0[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_shouldBlockNavigation] = 0;
  v4 = &v0[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_mostRecentTapLocation];
  *v4 = 0;
  v4[1] = 0;
  *&v0[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_lastTrackedTouch] = 4;
  v5 = &v0[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_mostRecentTapTimestamp];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v0[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_location];
  *v6 = 0;
  v6[1] = 0;
  v0[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_pointIsInsideView] = 0;
  *&v0[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_preventedTouches] = MEMORY[0x1E69E7CD0];
  *&v0[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer____lazy_storage___scrollableAncestor] = 1;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for TapGestureRecognizer();
  v7 = objc_msgSendSuper2(&v9, sel_initWithTarget_action_, 0, 0);
  [v7 setDelegate_];
  return v7;
}

uint64_t sub_1C1999518(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for PromotedContentView();
  v23.receiver = v5;
  v23.super_class = v10;
  objc_msgSendSuper2(&v23, sel_frame);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v22.receiver = v5;
  v22.super_class = v10;
  objc_msgSendSuper2(&v22, sel_setFrame_, a1, a2, a3, a4);
  [v5 frame];
  v25.origin.x = v12;
  v25.origin.y = v14;
  v25.size.width = v16;
  v25.size.height = v18;
  result = CGRectEqualToRect(v24, v25);
  if ((result & 1) == 0)
  {
    sub_1C1A6EB6C();
    if (swift_dynamicCastClass())
    {
      swift_unknownObjectRetain();
      if (sub_1C1A6EB3C())
      {
        v20 = sub_1C19F5B18();
        [v5 bounds];
        [v20 setFrame_];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v21 = sub_1C19A54BC();
    return (*((*MEMORY[0x1E69E7D40] & *v5) + 0x308))(v21);
  }

  return result;
}

void sub_1C1999768()
{
  sub_1C1999AD0();
  [*&v0[OBJC_IVAR___APPCPromotedContentView_privacyMarkerView] removeFromSuperview];
  v1 = *&v0[OBJC_IVAR____TtC17PromotedContentUI33PromotedMastheadSponsorshipAdView_mastheadSponsorshipLockupView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR___APPCPromotedContentView_promotedContent];
    v22 = v1;
    [v2 serverUnfilledReason];
    v3 = sub_1C1A6DF6C();
    if (v3 == sub_1C1A6DF6C())
    {
      v4 = v22;
      [v0 addSubview_];
      v5 = objc_opt_self();
      sub_1C19A9E58(&qword_1EBF03E88);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1C1A76BE0;
      v7 = [v4 leadingAnchor];
      v8 = [v0 leadingAnchor];
      v9 = [v7 constraintEqualToAnchor_];

      *(v6 + 32) = v9;
      v10 = [v4 topAnchor];

      v11 = [v0 topAnchor];
      v12 = [v10 constraintGreaterThanOrEqualToAnchor_];

      *(v6 + 40) = v12;
      v13 = [v4 trailingAnchor];

      v14 = [v0 trailingAnchor];
      v15 = [v13 constraintEqualToAnchor_];

      *(v6 + 48) = v15;
      v16 = [v4 bottomAnchor];

      v17 = [v0 bottomAnchor];
      v18 = [v16 constraintLessThanOrEqualToAnchor_];

      *(v6 + 56) = v18;
      v19 = [v4 centerYAnchor];

      v20 = [v0 centerYAnchor];
      v21 = [v19 constraintEqualToAnchor_];

      *(v6 + 64) = v21;
      sub_1C19C2864();
      v22 = sub_1C1A6F50C();

      [v5 activateConstraints_];
    }
  }
}

uint64_t sub_1C1999AD0()
{
  v1 = v0;
  sub_1C1A6EB6C();
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
    if (sub_1C1A6EB3C())
    {
      v2 = sub_1C19F5B18();
      [v1 addSubview_];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v3 = *(v1 + OBJC_IVAR___APPCPromotedContentView_dimmerView);
  [v3 setUserInteractionEnabled_];
  v4 = [v1 addSubview_];
  if ((*(v1 + OBJC_IVAR___APPCPromotedContentView_customPrivacyHandling) & 1) == 0)
  {
    v4 = [v1 addSubview_];
  }

  v5 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x308))(v4);
  sub_1C19FD224();
  v6 = *((*v5 & *v1) + 0x318);

  return v6();
}

void sub_1C1999C50()
{
  if (v0[OBJC_IVAR___APPCPromotedContentView_customPrivacyHandling])
  {
    return;
  }

  if (v0[OBJC_IVAR___APPCPromotedContentView_overriddenPrivacyMarkerPosition + 8] == 1)
  {
    v1 = [*&v0[OBJC_IVAR___APPCPromotedContentView_promotedContent] bestRepresentation];
    if (!v1)
    {
      return;
    }

    v2 = [v1 privacyMarkerPosition];
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = *&v0[OBJC_IVAR___APPCPromotedContentView_overriddenPrivacyMarkerPosition];
  }

  v3 = sub_1C1A6E45C();
  v4 = sub_1C1A6E45C();
  v5 = *&v0[OBJC_IVAR___APPCPromotedContentView_privacyMarkerView];
  if (v3 != v4)
  {
    [*&v0[OBJC_IVAR___APPCPromotedContentView_privacyMarkerView] setHidden_];
    v7 = OBJC_IVAR___APPrivacyMarker_privacyMarkerPosition;
    *&v5[OBJC_IVAR___APPrivacyMarker_privacyMarkerPosition] = v2;
    v8 = v0;
    sub_1C19970C4();
    v9 = [v0 subviews];
    sub_1C198FB8C(0, &qword_1EDE626B8);
    v10 = sub_1C1A6F51C();

    v77 = v5;
    MEMORY[0x1EEE9AC00](v11);
    v76[2] = &v77;
    LOBYTE(v9) = sub_1C1A3B710(sub_1C19F7264, v76, v10);

    if ((v9 & 1) == 0)
    {
      return;
    }

    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v12 = *&v5[v7];
    if (v12 <= 1)
    {
      if (!v12)
      {
        return;
      }
    }

    else
    {
      switch(v12)
      {
        case 2:
          v13 = objc_opt_self();
          sub_1C19A9E58(&qword_1EBF03E88);
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_1C1A74A20;
          v32 = [v5 leadingAnchor];
          v33 = [v8 safeAreaLayoutGuide];
          v34 = [v33 leadingAnchor];

          v35 = [v32 constraintGreaterThanOrEqualToAnchor:v34 constant:5.0];
          *(v31 + 32) = v35;
          v36 = [v5 topAnchor];
          v37 = [v8 safeAreaLayoutGuide];
          v38 = [v37 topAnchor];

          v39 = [v36 constraintEqualToAnchor:v38 constant:5.0];
          *(v31 + 40) = v39;
          v40 = [v5 trailingAnchor];
          v41 = [v8 safeAreaLayoutGuide];
          v42 = [v41 trailingAnchor];

          v43 = [v40 constraintEqualToAnchor:v42 constant:-5.0];
          *(v31 + 48) = v43;
          v44 = [v5 bottomAnchor];
          v45 = [v8 safeAreaLayoutGuide];
          v46 = [v45 topAnchor];

          v47 = [v44 constraintLessThanOrEqualToAnchor:v46 constant:-5.0];
          *(v31 + 56) = v47;
LABEL_23:
          sub_1C198FB8C(0, &qword_1EDE626F0);
          v75 = sub_1C1A6F50C();

          [v13 activateConstraints_];

          return;
        case 3:
          v13 = objc_opt_self();
          sub_1C19A9E58(&qword_1EBF03E88);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_1C1A74A20;
          v48 = [v5 leadingAnchor];
          v49 = [v8 safeAreaLayoutGuide];
          v50 = [v49 leadingAnchor];

          v51 = [v48 constraintEqualToAnchor:v50 constant:5.0];
          *(v14 + 32) = v51;
          v52 = [v5 topAnchor];
          v53 = [v8 safeAreaLayoutGuide];
          v54 = [v53 topAnchor];

          v55 = [v52 constraintGreaterThanOrEqualToAnchor:v54 constant:5.0];
          *(v14 + 40) = v55;
          v56 = [v5 trailingAnchor];
          v57 = [v8 safeAreaLayoutGuide];
          v58 = [v57 trailingAnchor];

          v59 = [v56 constraintLessThanOrEqualToAnchor:v58 constant:-5.0];
          *(v14 + 48) = v59;
          v27 = [v5 bottomAnchor];
          v60 = [v8 safeAreaLayoutGuide];
          v29 = [v60 bottomAnchor];

          v30 = [v27 constraintEqualToAnchor:v29 constant:-5.0];
          goto LABEL_22;
        case 4:
          v13 = objc_opt_self();
          sub_1C19A9E58(&qword_1EBF03E88);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_1C1A74A20;
          v15 = [v5 leadingAnchor];
          v16 = [v8 safeAreaLayoutGuide];
          v17 = [v16 leadingAnchor];

          v18 = [v15 constraintGreaterThanOrEqualToAnchor:v17 constant:5.0];
          *(v14 + 32) = v18;
          v19 = [v5 topAnchor];
          v20 = [v8 safeAreaLayoutGuide];
          v21 = [v20 topAnchor];

          v22 = [v19 constraintGreaterThanOrEqualToAnchor:v21 constant:5.0];
          *(v14 + 40) = v22;
          v23 = [v5 trailingAnchor];
          v24 = [v8 safeAreaLayoutGuide];
          v25 = [v24 trailingAnchor];

          v26 = [v23 constraintEqualToAnchor:v25 constant:-5.0];
          *(v14 + 48) = v26;
          v27 = [v5 bottomAnchor];
          v28 = [v8 safeAreaLayoutGuide];
          v29 = [v28 bottomAnchor];

          v30 = [v27 constraintEqualToAnchor:v29 constant:-5.0];
LABEL_22:
          v74 = v30;

          *(v14 + 56) = v74;
          goto LABEL_23;
      }
    }

    v13 = objc_opt_self();
    sub_1C19A9E58(&qword_1EBF03E88);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1C1A74A20;
    v61 = [v5 leadingAnchor];
    v62 = [v8 safeAreaLayoutGuide];
    v63 = [v62 leadingAnchor];

    v64 = [v61 constraintEqualToAnchor:v63 constant:5.0];
    *(v14 + 32) = v64;
    v65 = [v5 topAnchor];
    v66 = [v8 safeAreaLayoutGuide];
    v67 = [v66 topAnchor];

    v68 = [v65 constraintEqualToAnchor:v67 constant:5.0];
    *(v14 + 40) = v68;
    v69 = [v5 trailingAnchor];
    v70 = [v8 safeAreaLayoutGuide];
    v71 = [v70 trailingAnchor];

    v72 = [v69 constraintLessThanOrEqualToAnchor:v71 constant:-5.0];
    *(v14 + 48) = v72;
    v27 = [v5 bottomAnchor];
    v73 = [v8 safeAreaLayoutGuide];
    v29 = [v73 bottomAnchor];

    v30 = [v27 constraintGreaterThanOrEqualToAnchor:v29 constant:-5.0];
    goto LABEL_22;
  }

  v6 = *&v0[OBJC_IVAR___APPCPromotedContentView_privacyMarkerView];

  [v6 setHidden_];
}

void sub_1C199A9B4()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_1C1997EC8();
  v4 = OBJC_IVAR___APPrivacyMarker_privacyMarkerType;
  v5 = v0[OBJC_IVAR___APPrivacyMarker_privacyMarkerType];
  v6 = v3 & 1;
  if (v5 >= 2)
  {
    if (v5 != 2)
    {
      v7 = sub_1C19F87DC(v6);
      v24[0] = 3;
      v9 = sub_1C19971D8(v24);
      [v9 capHeight];
      v11 = v10;

      v12 = round(v11) + 12.0;
      goto LABEL_7;
    }

    v7 = sub_1C19F8178(v6);
    v8 = sub_1C19F7B54();
  }

  else
  {
    v7 = sub_1C19981FC(v6);
    v8 = sub_1C1998868();
  }

  v12 = v8;
LABEL_7:
  [*&v0[OBJC_IVAR___APPrivacyMarker_markerLabel] setFrame_];
  v25 = v0[v4];
  swift_beginAccess();
  _s17PromotedContentUI13PrivacyMarkerC07privacyE4Size4type12sizeCategory015minimumTappableG0So6CGSizeVAA0dE4TypeO_So09UIContentgJ0aAItFZ_0(&v25, v2);
  v14 = v13;
  v16 = v15;
  if (v0[v4] == 2)
  {
    v17 = 9.0;
  }

  else
  {
    v17 = 0.0;
  }

  v18 = *&v0[OBJC_IVAR___APPrivacyMarker_privacyMarkerPosition];
  if (v18 <= 1)
  {
    if (v18)
    {
      v19 = v17;
      if (v18 == 1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      [v0 setHidden_];
    }

LABEL_21:
    v19 = 0.0;
    v17 = 0.0;
    goto LABEL_22;
  }

  if (v18 == 2)
  {
    v19 = v13 - v7 - v17;
    goto LABEL_22;
  }

  if (v18 == 3)
  {
    v19 = v17;
    v17 = v16 - v12 - v17;
    goto LABEL_22;
  }

  if (v18 != 4)
  {
    goto LABEL_21;
  }

  v19 = v13 - v7 - v17;
  v17 = v16 - v12 - v17;
LABEL_22:
  [*&v0[OBJC_IVAR___APPrivacyMarker_markerView] setFrame_];
  [v0 frame];
  v21 = v20;
  v23 = v22;
  [v0 frame];
  [v0 setFrame_];
  if (v14 != v21 || v16 != v23)
  {
    [v0 invalidateIntrinsicContentSize];
  }
}

id sub_1C199AC50()
{
  v1 = sub_1C1A6F39C();
  [v0 setAccessibilityIdentifier_];

  v2 = [*&v0[OBJC_IVAR___APPCPromotedContentView_promotedContent] campaignText];
  [v0 setAccessibilityLabel_];

  return [v0 setIsAccessibilityElement_];
}

_BYTE *sub_1C199AD38(uint64_t a1, void *a2, char a3, _BYTE *a4, double a5, double a6, double a7, double a8)
{
  v16 = sub_1C1A6EBFC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a4[OBJC_IVAR___APPCMetricsView_frameObserver] = 0;
  a4[OBJC_IVAR___APPCMetricsView_currentlyViewable] = 0;
  v20 = OBJC_IVAR___APPCMetricsView_context;
  *&a4[OBJC_IVAR___APPCMetricsView_context] = 0;
  *&a4[OBJC_IVAR___APPCMetricsView_debugView] = 0;
  a4[OBJC_IVAR___APPCMetricsView_forcedReadiness] = 0;
  a4[OBJC_IVAR___APPCMetricsView_wasTapped] = 0;
  a4[OBJC_IVAR___APPCMetricsView_isBackgrounded] = 0;
  v21 = OBJC_IVAR___APPCMetricsView_impressionSent;
  type metadata accessor for ImpressionSent();
  *&a4[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22 = OBJC_IVAR___APPCMetricsView_timingTracking;
  *&a4[v22] = sub_1C199B450(MEMORY[0x1E69E7CC0]);
  v23 = OBJC_IVAR___APPCMetricsView_visibilityChecker;
  type metadata accessor for VisibilityChecker();
  swift_allocObject();
  *&a4[v23] = sub_1C199B784();
  a4[OBJC_IVAR___APPCMetricsView_needToSendOnScreen] = 0;
  v24 = &a4[OBJC_IVAR___APPCMetricsView_slotPosition];
  *v24 = 0u;
  v24[1] = 0u;
  v25 = &a4[OBJC_IVAR___APPCMetricsView_adContentPosition];
  *v25 = 0;
  v25[1] = 0;
  *&a4[OBJC_IVAR___APPCMetricsView_currentOrientation] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR___APPCMetricsView_offsetObserver] = 0;
  v26 = &a4[OBJC_IVAR___APPCMetricsView_lastTimeVisibilityCheckFrame];
  *v26 = 0u;
  v26[1] = 0u;
  *&a4[OBJC_IVAR___APPCMetricsView_readinessObserver] = 0;
  a4[OBJC_IVAR___APPCMetricsView____lazy_storage___debugViewEnabled] = 2;
  a4[OBJC_IVAR___APPCMetricsView____lazy_storage___debugVisibilityColorsEnabled] = 2;
  *&a4[OBJC_IVAR___APPCMetricsView_visibleThresholds] = &unk_1F413F320;
  *&a4[OBJC_IVAR___APPCMetricsView_reportedVisibilityThresholds] = MEMORY[0x1E69E7CD0];
  *&a4[OBJC_IVAR___APPCMetricsView_contentView] = 0;
  v27 = OBJC_IVAR___APPCMetricsView_visibleThresholdsLock;
  *&a4[v27] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  a4[OBJC_IVAR___APPCMetricsView_viewCollapsedState] = 0;
  a4[OBJC_IVAR___APPCMetricsView_lastCollapsedState] = 0;
  a4[OBJC_IVAR___APPCMetricsView_policyCheckCompleted] = 0;
  a4[OBJC_IVAR___APPCMetricsView_viewThroughAttributionStartedRecording] = 0;
  a4[OBJC_IVAR___APPCMetricsView_ready] = 0;
  swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR___APPCMetricsView_impressionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v28 = OBJC_IVAR___APPCMetricsView_promotedContentInfo;
  *&a4[OBJC_IVAR___APPCMetricsView_promotedContentInfo] = 0;
  *&a4[OBJC_IVAR___APPCMetricsView_appBeginViewImpressionTask] = 0;
  *&a4[v20] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_1C1A6DCFC();
  v29 = a2;
  v30 = sub_1C1A6DCBC();
  swift_beginAccess();
  v31 = *&a4[v28];
  *&a4[v28] = v30;

  *&a4[OBJC_IVAR___APPCMetricsView_promotedContent] = v29;
  a4[OBJC_IVAR___APPCMetricsView_startsCollapsed] = a3;
  a4[OBJC_IVAR___APPCMetricsView_isCollapsedInternal] = a3;
  v32 = v29;
  v33 = [v32 identifier];
  v34 = sub_1C1A6F3CC();
  v36 = v35;

  v37 = &a4[OBJC_IVAR___APPCMetricsView_identifier];
  *v37 = v34;
  v37[1] = v36;
  if (qword_1EDE637E0 != -1)
  {
    swift_once();
  }

  sub_1C19992F8(qword_1EDE66590, v48);
  sub_1C1994048(v48, v48[3]);
  (*(v17 + 104))(v19, *MEMORY[0x1E6989CF8], v16);
  v38 = sub_1C1A6EC3C();
  (*(v17 + 8))(v19, v16);
  a4[OBJC_IVAR___APPCMetricsView_isAAKEnabled] = v38 & 1;
  sub_1C199935C(v48);
  v39 = type metadata accessor for MetricsView();
  v47.receiver = a4;
  v47.super_class = v39;
  v40 = objc_msgSendSuper2(&v47, sel_initWithFrame_, a5, a6, a7, a8);
  sub_1C199C4C0(a3 & 1);
  v41 = [objc_opt_self() mainScreen];
  v42 = sub_1C199C748();

  *&v40[OBJC_IVAR___APPCMetricsView_currentOrientation] = v42;
  v43 = OBJC_IVAR___APPCMetricsView_promotedContent;
  [*&v40[OBJC_IVAR___APPCMetricsView_promotedContent] serverUnfilledReason];
  sub_1C1A6DF4C();
  v44 = sub_1C1A6EF2C();
  if ((v45 & 1) == 0)
  {
    [objc_msgSend(*&v40[v43] metricsHelper)];
    swift_unknownObjectRelease();
  }

  if (sub_1C199E87C())
  {
    v40[OBJC_IVAR___APPCMetricsView_forcedReadiness] = 1;
    sub_1C19E3B3C();
    sub_1C19DDA38();
  }

  return v40;
}

unint64_t sub_1C199B450(uint64_t a1)
{
  v2 = sub_1C19A9E58(&qword_1EBF03C98);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1C19A9E58(&qword_1EBF03CA0);
    v7 = sub_1C1A6FBEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1C1990FA8(v9, v5, &qword_1EBF03C98);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1C1991010(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for VisibilityTiming();
      result = sub_1C19B7920(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for VisibilityTiming);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t type metadata accessor for VisibilityTiming()
{
  result = qword_1EDE63FE8;
  if (!qword_1EDE63FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C199B684()
{
  sub_1C1A6D5DC();
  if (v0 <= 0x3F)
  {
    sub_1C199B708();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C199B708()
{
  if (!qword_1EDE64000)
  {
    sub_1C1A6D5DC();
    v0 = sub_1C1A6F91C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE64000);
    }
  }
}

void *sub_1C199B784()
{
  v7[0] = sub_1C1A6F6EC();
  v1 = *(v7[0] - 8);
  MEMORY[0x1EEE9AC00](v7[0]);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C1A6F6DC();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C1A6F22C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v0[2] = 2;
  sub_1C199B9C8();
  sub_1C1A6F21C();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1C199BA14();
  sub_1C19A9E58(&qword_1EBF04180);
  sub_1C199E2D8();
  sub_1C1A6F94C();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v7[0]);
  v0[3] = sub_1C1A6F71C();
  v0[4] = 0;
  if (qword_1EDE62F40 != -1)
  {
    swift_once();
  }

  return v0;
}

unint64_t sub_1C199B9C8()
{
  result = qword_1EDE63F38;
  if (!qword_1EDE63F38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE63F38);
  }

  return result;
}

unint64_t sub_1C199BA14()
{
  result = qword_1EDE63F40;
  if (!qword_1EDE63F40)
  {
    sub_1C1A6F6DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE63F40);
  }

  return result;
}

void sub_1C199BA6C()
{
  v1 = *(v0 + OBJC_IVAR___APPCMetricsView_frameObserver);
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x420))();
  if (v1)
  {
    if (!v3)
    {
      return;
    }

    v94 = v3;
    [v0 bounds];
    [v94 setFrame_];
LABEL_6:

    return;
  }

  if (!v3)
  {
    return;
  }

  v94 = v3;
  *&v4 = COERCE_DOUBLE((*((*v2 & *v3) + 0x2A8))());
  if (v6)
  {
    goto LABEL_6;
  }

  Width = *&v4;
  Height = v5;
  if (qword_1EDE63990 != -1)
  {
    swift_once();
  }

  v9 = sub_1C1A6F1BC();
  v10 = sub_1C1994600(v9, qword_1EDE665F0);
  v11 = v0;
  v12 = sub_1C1A6F19C();
  v13 = sub_1C1A6F65C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v99 = v15;
    *v14 = 136315906;
    v16 = [*(v11 + OBJC_IVAR___APPCMetricsView_promotedContent) identifier];
    v17 = sub_1C1A6F3CC();
    v19 = v18;

    v20 = sub_1C19A1884(v17, v19, &v99);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    v21 = sub_1C1A6F77C();
    v23 = sub_1C19A1884(v21, v22, &v99);

    *(v14 + 14) = v23;
    *(v14 + 22) = 2080;
    [v11 bounds];
    v24 = sub_1C1A6F76C();
    v26 = sub_1C19A1884(v24, v25, &v99);

    *(v14 + 24) = v26;
    *(v14 + 32) = 2080;
    v95 = [v11 superview];
    sub_1C19A9E58(&qword_1EBF03ED0);
    v27 = sub_1C1A6F8FC();
    v29 = v28;

    v30 = sub_1C19A1884(v27, v29, &v99);

    *(v14 + 34) = v30;
    _os_log_impl(&dword_1C198D000, v12, v13, "PC [%s] Ad Size (maxSize) [%s] Bounds [%s] SuperView [%s]", v14, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1C6906260](v15, -1, -1);
    MEMORY[0x1C6906260](v14, -1, -1);
  }

  [v11 bounds];
  if (CGRectGetHeight(v101) < Height)
  {
    v31 = v11;
    v32 = sub_1C1A6F19C();
    v33 = sub_1C1A6F65C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v99 = v35;
      *v34 = 136315906;
      v36 = [*&v31[OBJC_IVAR___APPCMetricsView_promotedContent] identifier];
      v37 = sub_1C1A6F3CC();
      v39 = v38;

      v40 = sub_1C19A1884(v37, v39, &v99);

      *(v34 + 4) = v40;
      *(v34 + 12) = 2080;
      v41 = sub_1C1A6F77C();
      v43 = sub_1C19A1884(v41, v42, &v99);

      *(v34 + 14) = v43;
      *(v34 + 22) = 2080;
      [v31 bounds];
      v44 = sub_1C1A6F76C();
      v46 = sub_1C19A1884(v44, v45, &v99);

      *(v34 + 24) = v46;
      *(v34 + 32) = 2080;
      v96 = [v31 superview];
      sub_1C19A9E58(&qword_1EBF03ED0);
      v47 = sub_1C1A6F8FC();
      v49 = v48;

      v50 = sub_1C19A1884(v47, v49, &v99);

      *(v34 + 34) = v50;
      _os_log_impl(&dword_1C198D000, v32, v33, "Size mismatch! Fallback to bounds size height. PC [%s] Ad Size (maxSize) [%s] Bounds [%s], SuperView [%s].", v34, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1C6906260](v35, -1, -1);
      MEMORY[0x1C6906260](v34, -1, -1);
    }

    [v31 bounds];
    Height = CGRectGetHeight(v102);
  }

  [v11 bounds];
  if (CGRectGetWidth(v103) < Width)
  {
    v51 = v11;
    v52 = sub_1C1A6F19C();
    v53 = sub_1C1A6F65C();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v99 = v55;
      *v54 = 136315906;
      v56 = [*&v51[OBJC_IVAR___APPCMetricsView_promotedContent] identifier];
      v57 = sub_1C1A6F3CC();
      v93 = v10;
      v59 = v58;

      v60 = sub_1C19A1884(v57, v59, &v99);

      *(v54 + 4) = v60;
      *(v54 + 12) = 2080;
      v61 = sub_1C1A6F77C();
      v63 = sub_1C19A1884(v61, v62, &v99);

      *(v54 + 14) = v63;
      *(v54 + 22) = 2080;
      [v51 &selRef_setAccessibilityIdentifier_];
      v64 = sub_1C1A6F76C();
      v66 = sub_1C19A1884(v64, v65, &v99);

      *(v54 + 24) = v66;
      *(v54 + 32) = 2080;
      v97 = [v51 superview];
      sub_1C19A9E58(&qword_1EBF03ED0);
      v67 = sub_1C1A6F8FC();
      v69 = v68;

      v70 = sub_1C19A1884(v67, v69, &v99);

      *(v54 + 34) = v70;
      _os_log_impl(&dword_1C198D000, v52, v53, "Size mismatch! Fallback to bounds size width. PC [%s] Ad Size (maxSize) [%s] Bounds [%s] SuperView [%s].", v54, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1C6906260](v55, -1, -1);
      MEMORY[0x1C6906260](v54, -1, -1);
    }

    [v51 bounds];
    Width = CGRectGetWidth(v104);
  }

  if (Width == 0.0 && Height == 0.0)
  {
    v71 = v11;
    v72 = sub_1C1A6F19C();
    v73 = sub_1C1A6F65C();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v99 = v75;
      *v74 = 136315906;
      v76 = [*&v71[OBJC_IVAR___APPCMetricsView_promotedContent] identifier];
      v77 = sub_1C1A6F3CC();
      v79 = v78;

      v80 = sub_1C19A1884(v77, v79, &v99);

      *(v74 + 4) = v80;
      *(v74 + 12) = 2080;
      v81 = sub_1C1A6F77C();
      v83 = sub_1C19A1884(v81, v82, &v99);

      *(v74 + 14) = v83;
      *(v74 + 22) = 2080;
      [v71 bounds];
      v84 = sub_1C1A6F76C();
      v86 = sub_1C19A1884(v84, v85, &v99);

      *(v74 + 24) = v86;
      *(v74 + 32) = 2080;
      v98 = [v71 superview];
      sub_1C19A9E58(&qword_1EBF03ED0);
      v87 = sub_1C1A6F8FC();
      v89 = v88;

      v90 = sub_1C19A1884(v87, v89, &v99);

      *(v74 + 34) = v90;
      _os_log_impl(&dword_1C198D000, v72, v73, "Size mismatch! Fallback to bounds size. PC [%s] Ad Size (maxSize) [%s] Bounds [%s] SuperView [%s].", v74, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1C6906260](v75, -1, -1);
      MEMORY[0x1C6906260](v74, -1, -1);
    }

    [v71 bounds];
    Width = v91;
    Height = v92;
  }

  [v11 bounds];
  [v94 setFrame_];
}

void *sub_1C199C470()
{
  v1 = *(v0 + OBJC_IVAR___APPCMetricsView_contentView);
  v2 = v1;
  return v1;
}

id sub_1C199C4C0(char a1)
{
  if (sub_1C199C4A0())
  {
    type metadata accessor for DebugOverlayView();
    v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v3 setUserInteractionEnabled_];
    swift_unknownObjectWeakAssign();
    [v1 addSubview_];
  }

  v4 = [objc_opt_self() clearColor];
  [v1 setBackgroundColor_];

  sub_1C199E724();
  [v1 frame];
  v6 = v5;
  v8 = v7;
  [v1 frame];
  Width = CGRectGetWidth(v13);
  Height = 0.0;
  if ((a1 & 1) == 0)
  {
    [v1 frame];
    Height = CGRectGetHeight(v14);
  }

  [v1 setFrame_];

  return [v1 setClipsToBounds_];
}

id sub_1C199C624()
{
  if (qword_1EDE63978 != -1)
  {
    swift_once();
  }

  if (byte_1EDE63980 != 1)
  {
    return 0;
  }

  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1C1A6F39C();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [swift_getObjCClassFromMetadata() standardUserDefaults];
  }

  v3 = sub_1C1A6F39C();
  v4 = [v2 BOOLForKey_];

  return v4;
}

uint64_t sub_1C199C748()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 orientation];

  if ((v2 - 1) < 4)
  {
    return qword_1C1A771B8[(v2 - 1)];
  }

  [v0 bounds];
  v5 = v4;
  [v0 bounds];
  if (v5 < v6)
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_1C199C7F4(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x420);
  v6 = v5();
  if (v6)
  {

    v7 = v5();
    if (v7)
    {
      v8 = v7;
      [v7 removeFromSuperview];
    }

    v6 = sub_1C19DE550();
  }

  if ((*((*v4 & *a1) + 0x338))(v6))
  {
    v9 = sub_1C1A6F50C();
  }

  else
  {
    v9 = 0;
  }

  [v2 setAccessibilityElements_];

  v10 = OBJC_IVAR___APPCMetricsView_promotedContent;
  *(v2 + OBJC_IVAR___APPCMetricsView_promotedContent) = *(a1 + OBJC_IVAR___APPCPromotedContentView_promotedContent);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = sub_1C1A6D3EC();

  v12 = *(v2 + OBJC_IVAR___APPCMetricsView_readinessObserver);
  *(v2 + OBJC_IVAR___APPCMetricsView_readinessObserver) = v11;

  [v2 addSubview_];
  v13 = *((*v4 & *v2) + 0x428);
  v14 = a1;
  v13(a1);
  sub_1C1A6DCFC();
  swift_unknownObjectRetain();
  v15 = sub_1C1A6DCBC();
  [v2 setPromotedContentInfo_];

  v16 = [*(v2 + v10) bestRepresentation];
  type metadata accessor for PromotedGroupedSponsorshipAdView();
  if (swift_dynamicCastClass() || (type metadata accessor for PromotedMastheadSponsorshipAdView(), swift_dynamicCastClass()))
  {
    [v14 intrinsicContentSize];
    Height = v17;
  }

  else
  {
    Height = 0.0;
    if ((*(v2 + OBJC_IVAR___APPCMetricsView_isCollapsedInternal) & 1) == 0)
    {
      if (v16)
      {
        [v16 adSize];
        Height = v25;
      }

      else
      {
        [v2 frame];
        Height = CGRectGetHeight(v29);
      }
    }

    if (sub_1C199E87C())
    {
      v26 = *(v2 + OBJC_IVAR___APPCMetricsView_debugView);
      if (v26)
      {
        [v26 frame];
        v27 = CGRectGetHeight(v30);
      }

      else
      {
        v27 = 0.0;
      }

      Height = Height + v27;
    }
  }

  [v2 frame];
  v20 = v19;
  v22 = v21;
  [v2 frame];
  v23 = [v2 setFrame_];
  (*((*v4 & *v14) + 0x348))(v23);
  return swift_unknownObjectRelease();
}

id sub_1C199CC0C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 readiness];
  *a2 = result;
  return result;
}

uint64_t sub_1C199CC54()
{
  ObjectType = swift_getObjectType();
  sub_1C19A9E58(&qword_1EBF03768);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C1A73A30;
  *(v2 + 56) = ObjectType;
  *(v2 + 32) = v0;
  v3 = v0;
  return v2;
}

uint64_t sub_1C199CCE0(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___APPCMetricsView_contentView;
  v5 = *(v1 + OBJC_IVAR___APPCMetricsView_contentView);
  if (v5 || (sub_1C1A6F65C(), sub_1C198FB8C(0, &qword_1EDE63F30), v6 = sub_1C1A6F8EC(), sub_1C19A9E58(&unk_1EBF03FD0), v7 = swift_allocObject(), *(v7 + 16) = xmmword_1C1A73A30, v8 = [*(v2 + OBJC_IVAR___APPCMetricsView_promotedContent) journeyIdentifier], v9 = sub_1C1A6F3CC(), v11 = v10, v8, *(v7 + 56) = MEMORY[0x1E69E6158], *(v7 + 64) = sub_1C199E518(), *(v7 + 32) = v9, *(v7 + 40) = v11, sub_1C1A6F18C(), v6, , (v5 = *(v2 + v4)) != 0))
  {
    *(v5 + OBJC_IVAR___APPCPromotedContentView_interactionDelegate + 8) = &off_1F4142EB0;
    swift_unknownObjectWeakAssign();
    if (*(v2 + v4))
    {
      swift_beginAccess();
      swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
    }
  }

  if (a1)
  {
    v12 = [*(a1 + OBJC_IVAR___APPCPromotedContentView_promotedContent) metricsHelper];
    v13 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
    v14 = *(a1 + OBJC_IVAR___APPCPromotedContentView_promotedContent);
    v15 = OBJC_IVAR___APPCMetricsView_promotedContent;
    v16 = *(v2 + OBJC_IVAR___APPCMetricsView_promotedContent);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    [v16 setMetricEventsTracking_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v17 = *(a1 + v13);
    v18 = *(v2 + v15);
    swift_unknownObjectRetain();
    [v17 replaceMetricsHelperWithNewMetricsHelper_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v19 = swift_unknownObjectRetain();
    sub_1C19E2384(v19, v2);
    swift_unknownObjectRelease_n();
  }

  result = sub_1C199E87C();
  if (result)
  {
    v21 = *(v2 + OBJC_IVAR___APPCMetricsView_debugView);
    if (v21)
    {
      v22 = v21;
      v23 = swift_unknownObjectRetain();
      sub_1C19E47A8(v23);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t type metadata accessor for PromotedGroupedSponsorshipAdView()
{
  result = qword_1EDE63940;
  if (!qword_1EDE63940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C199D114()
{
  v1 = v0;
  v2 = sub_1C1A6D62C();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  [*&v1[OBJC_IVAR___APPCPromotedContentView_promotedContent] serverUnfilledReason];
  v8 = sub_1C1A6DF6C();
  if (v8 == sub_1C1A6DF6C())
  {
    [v1 setReadiness_];
    [objc_msgSend(*&v1[v7] metricsHelper)];

    swift_unknownObjectRelease();
  }

  else
  {
    [v1 setReadiness_];
    v9 = [*&v1[v7] context];
    if (v9)
    {
      v10 = [v9 identifier];
      swift_unknownObjectRelease();
      sub_1C1A6D60C();

      v11 = sub_1C1A6D5EC();
      v13 = v12;
      (*(v3 + 8))(v6, v2);
    }

    else
    {
      v13 = 0x80000001C1A7CA00;
      v11 = 0xD000000000000012;
    }

    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v14 = sub_1C1A6F1BC();
    sub_1C1994600(v14, qword_1EDE665F0);

    v15 = sub_1C1A6F19C();
    v16 = sub_1C1A6F64C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 67109378;
      *(v17 + 4) = 36;
      *(v17 + 8) = 2080;
      v19 = sub_1C19A1884(v11, v13, &v21);

      *(v17 + 10) = v19;
      _os_log_impl(&dword_1C198D000, v15, v16, "Context ID: %-*s Collapsing sponsorship view for promoted content.", v17, 0x12u);
      sub_1C199935C(v18);
      MEMORY[0x1C6906260](v18, -1, -1);
      MEMORY[0x1C6906260](v17, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1C199D484(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___APPCPromotedContentView_readiness);
  *(v1 + OBJC_IVAR___APPCPromotedContentView_readiness) = a1;
  if (a1 == 304 && v2 == 303)
  {
    v3 = sub_1C1A6F39C();
    APSimulateCrash();
  }
}

void sub_1C199D518(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR___APPCMetricsView_debugView);
    if (v4)
    {
      v5 = v4;
      v6 = [v1 readiness];
      *&v5[OBJC_IVAR____TtC17PromotedContentUI24PromotedContentDebugView_readiness] = v6;
      v7 = *&v5[OBJC_IVAR____TtC17PromotedContentUI24PromotedContentDebugView__debugLabel];
      sub_1C19E3F78();
      v8 = sub_1C1A6F39C();

      [v7 setText_];

      v9 = &v5[OBJC_IVAR____TtC17PromotedContentUI24PromotedContentDebugView_updateDelegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v9 + 1);
        ObjectType = swift_getObjectType();
        (*(v10 + 8))(v5, ObjectType, v10);
        swift_unknownObjectRelease();
      }
    }

    v12 = OBJC_IVAR___APPCMetricsView_promotedContent;
    if ([*&v3[OBJC_IVAR___APPCMetricsView_promotedContent] discarded])
    {
      sub_1C1A6F64C();
      sub_1C198FB8C(0, &qword_1EDE63F30);
      v13 = sub_1C1A6F8EC();
      sub_1C19A9E58(&unk_1EBF03FD0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1C1A73A30;
      v15 = [*&v3[v12] identifier];
      v16 = sub_1C1A6F3CC();
      v18 = v17;

      *(v14 + 56) = MEMORY[0x1E69E6158];
      *(v14 + 64) = sub_1C199E518();
      *(v14 + 32) = v16;
      *(v14 + 40) = v18;
      sub_1C1A6F18C();

      [v3 setReady_];
    }

    else
    {
      if ([v1 readiness] == 302 || objc_msgSend(v1, sel_readiness) == 303)
      {
        if (v3[OBJC_IVAR___APPCMetricsView_forcedReadiness] == 1)
        {
          v3[OBJC_IVAR___APPCMetricsView_forcedReadiness] = 0;
          sub_1C1A6F64C();
          sub_1C198FB8C(0, &qword_1EDE63F30);
          v19 = sub_1C1A6F8EC();
          sub_1C19A9E58(&unk_1EBF03FD0);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_1C1A73A30;
          v21 = [*&v3[v12] identifier];
          v22 = sub_1C1A6F3CC();
          v24 = v23;

          *(v20 + 56) = MEMORY[0x1E69E6158];
          *(v20 + 64) = sub_1C199E518();
          *(v20 + 32) = v22;
          *(v20 + 40) = v24;
          sub_1C1A6F18C();

          [v3 &selRef:0 setText:?];
        }

        [v3 setReady_];
        v25 = [objc_msgSend(*&v3[v12] metricsHelper)];
        swift_unknownObjectRelease();
        if (v25)
        {
          v26 = [v3 promotedContentInfo];
          if (v26)
          {
            v27 = v26;
            [v26 setUnfilledReason_];
          }
        }

        [objc_msgSend(*&v3[v12] metricsHelper)];
        swift_unknownObjectRelease();
      }

      if ([v1 readiness] == 305)
      {
        [v3 setReady_];
        [v3 collapse];
      }
    }
  }
}

void *sub_1C199DA50()
{
  v1 = v0;
  v2 = sub_1C1A6D62C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[3] = sub_1C1A6F67C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v6 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C1A74920;
  v8 = *(v0 + OBJC_IVAR___APPCMetricsView_context);
  if (v8)
  {
    v9 = [v8 identifier];
    sub_1C1A6D60C();

    v10 = sub_1C1A6D5EC();
    v12 = v11;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1C199E518();
  *(v7 + 64) = v14;
  v15 = 0x4E574F4E4B4E55;
  if (v12)
  {
    v15 = v10;
  }

  v16 = 0xE700000000000000;
  if (v12)
  {
    v16 = v12;
  }

  *(v7 + 32) = v15;
  *(v7 + 40) = v16;
  v17 = OBJC_IVAR___APPCMetricsView_ready;
  swift_beginAccess();
  v18 = *(v1 + v17);
  v19 = MEMORY[0x1E69E63A8];
  *(v7 + 96) = MEMORY[0x1E69E6370];
  *(v7 + 104) = v19;
  *(v7 + 72) = v18;
  v20 = [*(v1 + OBJC_IVAR___APPCMetricsView_promotedContent) identifier];
  v21 = sub_1C1A6F3CC();
  v23 = v22;

  *(v7 + 136) = v13;
  *(v7 + 144) = v14;
  *(v7 + 112) = v21;
  *(v7 + 120) = v23;
  sub_1C1A6F18C();

  if (*(v1 + v17) == 1)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result metricsViewReady_];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

unint64_t sub_1C199DDB8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1C19A9E58(a2);
    v4 = sub_1C1A6FBEC();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = sub_1C1991010(v6, v7);
      if (v11)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v4[6] + 16 * result);
      *v12 = v6;
      v12[1] = v7;
      *(v4[7] + 8 * result) = v9;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v4[2] = v15;
      if (!--v2)
      {

        return v4;
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

unint64_t sub_1C199DEDC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1C19A9E58(a2);
    v4 = sub_1C1A6FBEC();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1C1991010(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
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

unint64_t sub_1C199DFD8(uint64_t a1)
{
  v2 = sub_1C19A9E58(&qword_1EBF03CB0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1C19A9E58(&qword_1EBF03CB8);
    v7 = sub_1C1A6FBEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1C1990FA8(v9, v5, &qword_1EBF03CB0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1C1991010(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for PreloadedContentDiagnosticPayload();
      result = sub_1C19B7920(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for PreloadedContentDiagnosticPayload);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_1C199E1C0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t type metadata accessor for PreloadedContentDiagnosticPayload()
{
  result = qword_1EDE63F08;
  if (!qword_1EDE63F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C199E25C()
{
  result = sub_1C1A6D5DC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C199E2D8()
{
  result = qword_1EDE63F48;
  if (!qword_1EDE63F48)
  {
    sub_1C19A9F04(&qword_1EBF04180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE63F48);
  }

  return result;
}

uint64_t sub_1C199E340()
{
  v0 = &off_1F413EF90;
  v1 = 29;
  v2 = MEMORY[0x1E69E6158];
  do
  {
    v5 = *(v0 - 1);
    v4 = *v0;

    v6 = sub_1C1A6F39C();
    v7 = NSClassFromString(v6);

    if (v7)
    {

      result = class_addProtocol(v7, &unk_1F4164210);
    }

    else
    {
      sub_1C1A6F64C();
      sub_1C199E4CC();
      v8 = sub_1C1A6F8EC();
      sub_1C19A9E58(&unk_1EBF03FD0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1C1A73CD0;
      *(v9 + 56) = v2;
      v10 = sub_1C199E518();
      *(v9 + 32) = v5;
      *(v9 + 40) = v4;
      *(v9 + 96) = v2;
      *(v9 + 104) = v10;
      *(v9 + 64) = v10;
      *(v9 + 72) = v5;
      *(v9 + 80) = v4;

      sub_1C1A6F18C();
    }

    v0 += 2;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_1C199E4CC()
{
  result = qword_1EDE63F30;
  if (!qword_1EDE63F30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE63F30);
  }

  return result;
}

unint64_t sub_1C199E518()
{
  result = qword_1EDE63F60;
  if (!qword_1EDE63F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE63F60);
  }

  return result;
}

uint64_t sub_1C199E684(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4 == 2)
  {
    sub_1C198FB8C(0, &qword_1EDE63970);
    LOBYTE(v4) = a2();
    *(v2 + v3) = v4 & 1;
  }

  return v4 & 1;
}

id sub_1C199E6F0()
{
  result = [objc_opt_self() isAppleInternalInstall];
  byte_1EDE63980 = result;
  return result;
}

void sub_1C199E724()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 addObserver:v0 selector:sel_appWillResignActive_ name:*MEMORY[0x1E69DDBC8] object:0];

  v3 = [v1 defaultCenter];
  [v3 addObserver:v0 selector:sel_appBackgrounded_ name:*MEMORY[0x1E69DDAC8] object:0];

  v4 = [v1 defaultCenter];
  [v4 addObserver:v0 selector:sel_appForegrounded_ name:*MEMORY[0x1E69DDAB0] object:0];

  v5 = [v1 defaultCenter];
  [v5 addObserver:v0 selector:sel_unloadAdViewIfRequired name:*MEMORY[0x1E69DDCB8] object:0];
}

id sub_1C199E89C()
{
  if (qword_1EDE63978 != -1)
  {
    swift_once();
  }

  if (byte_1EDE63980 != 1)
  {
    return 0;
  }

  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1C1A6F39C();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [swift_getObjCClassFromMetadata() standardUserDefaults];
  }

  v3 = sub_1C1A6F39C();
  v4 = [v2 BOOLForKey_];

  return v4;
}

void sub_1C199E9C0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___APPCMetricsView_contentView);
  *(v1 + OBJC_IVAR___APPCMetricsView_contentView) = a1;
  v2 = a1;
  sub_1C199CCE0(v3);
}

Swift::Void __swiftcall MetricsView.collapse()()
{
  v1 = v0;
  v2 = sub_1C1A6E6EC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[OBJC_IVAR___APPCMetricsView_isCollapsedInternal] = 1;
  v0[OBJC_IVAR___APPCMetricsView_viewCollapsedState] = 1;
  Height = 0.0;
  if (sub_1C199E87C())
  {
    v7 = *&v0[OBJC_IVAR___APPCMetricsView_debugView];
    if (v7)
    {
      [v7 frame];
      Height = CGRectGetHeight(v18);
    }
  }

  [v0 frame];
  v9 = v8;
  v11 = v10;
  [v0 frame];
  [v0 setFrame_];
  (*(v3 + 104))(v5, *MEMORY[0x1E69C60F0], v2);
  if (![objc_opt_self() isAppleInternalInstall])
  {
    goto LABEL_9;
  }

  v12 = [*&v0[OBJC_IVAR___APPCMetricsView_promotedContent] metricsHelper];
  sub_1C1A6E3AC();
  if (!swift_dynamicCastClass())
  {
LABEL_8:
    swift_unknownObjectRelease();
LABEL_9:
    (*(v3 + 8))(v5, v2);
    goto LABEL_10;
  }

  v13 = sub_1C1A6E39C();
  if (v13)
  {
    v14 = v13;
    sub_1C1A6E6DC();

    goto LABEL_8;
  }

  (*(v3 + 8))(v5, v2);
  swift_unknownObjectRelease();
LABEL_10:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if ([Strong respondsToSelector_])
    {
      [v16 metricsViewCollapsed_];
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C199ECF8()
{
  type metadata accessor for PreloadedMetricViewHolder();
  v0 = swift_allocObject();
  v0[2] = 0x4072C00000000000;
  type metadata accessor for SynchronizedDictionary();
  v1 = swift_allocObject();
  *(v1 + 16) = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = sub_1C199EE78(MEMORY[0x1E69E7CC0]);
  v0[3] = v1;
  v0[4] = sub_1C199DEC8(v2);
  v0[5] = sub_1C199DDA4(v2);
  v0[6] = sub_1C199DEB4(v2);
  v0[7] = [objc_allocWithZone(MEMORY[0x1E69861E0]) init];
  v0[8] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  v6 = &type metadata for PreloadedDiagnosticsAnalytics;
  v7 = &off_1F4142A58;
  type metadata accessor for PreloadedMetricsViewDiagnostics();
  v3 = swift_allocObject();
  sub_1C199E1C0(v5, &type metadata for PreloadedDiagnosticsAnalytics);
  v3[5] = &type metadata for PreloadedDiagnosticsAnalytics;
  v3[6] = &off_1F4142A58;
  v3[7] = v2;
  v3[8] = sub_1C199DFD8(v2);
  result = sub_1C199935C(v5);
  v0[9] = v3;
  qword_1EDE66608 = v0;
  return result;
}

uint64_t sub_1C199EEB0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  sub_1C199F2D4(a2, a3);
  sub_1C1A6F67C();
  sub_1C199E4CC();
  v12 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C1A74920;
  v37 = a1;
  v14 = [a1 debugDescription];
  v15 = sub_1C1A6F3CC();
  v17 = v16;

  v18 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v19 = sub_1C199E518();
  *(v13 + 32) = v15;
  *(v13 + 40) = v17;
  *(v13 + 96) = v18;
  *(v13 + 104) = v19;
  *(v13 + 64) = v19;
  *(v13 + 72) = a2;
  *(v13 + 80) = a3;
  *(v13 + 136) = v18;
  *(v13 + 144) = v19;
  v20 = a4;
  v21 = a5;
  *(v13 + 112) = v20;
  *(v13 + 120) = a5;

  sub_1C1A6F18C();

  [*(v6 + 56) lock];
  v22 = sub_1C199F9D8();
  v23 = sub_1C199FA28(v39, a2, a3);
  if (*v24)
  {

    sub_1C19B5C40(0, v20, v21);
  }

  (v23)(v39, 0);
  (v22)(v40, 0);
  swift_beginAccess();
  if (!*(*(v6 + 40) + 16) || (, sub_1C1991010(a2, a3), v26 = v25, , (v26 & 1) == 0))
  {

    v27 = sub_1C19A0180(MEMORY[0x1E69E7CC0]);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39[0] = *(v6 + 40);
    *(v6 + 40) = 0x8000000000000000;
    sub_1C19A0194(v27, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v6 + 40) = v39[0];
    swift_endAccess();
  }

  v29 = sub_1C19A04A0();
  v31 = sub_1C19A0418(v39, a2, a3);
  if (*v30)
  {
    v32 = v30;
    type metadata accessor for WeakMetricsView();
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = v37;
    swift_unknownObjectWeakAssign();

    v35 = swift_isUniquelyReferenced_nonNull_native();
    v38 = *v32;
    *v32 = 0x8000000000000000;
    sub_1C19A0670(v33, v20, v21, v35);

    *v32 = v38;
    (v31)(v39, 0);
    (v29)(v40, 0);
  }

  else
  {
    (v31)(v39, 0);
    (v29)(v40, 0);
    v34 = v37;
  }

  [*(v6 + 56) unlock];
  [*&v34[OBJC_IVAR___APPCMetricsView_promotedContent] setVended_];
  return sub_1C19A0684(v20, v21);
}

id sub_1C199F2D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  [*(v2 + 64) lock];
  swift_beginAccess();
  v6 = *(v2 + 48);
  if (*(v6 + 16))
  {

    v7 = sub_1C1991010(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      [v9 invalidate];
    }

    else
    {
    }
  }

  v10 = objc_opt_self();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_1C1A401D8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C19B8FA0;
  aBlock[3] = &unk_1F4142578;
  v13 = _Block_copy(aBlock);

  v14 = [v10 scheduledTimerWithTimeInterval:0 repeats:v13 block:300.0];
  _Block_release(v13);
  swift_beginAccess();

  v15 = v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v3 + 48);
  *(v3 + 48) = 0x8000000000000000;
  sub_1C199F728(v15, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v3 + 48) = v18;
  swift_endAccess();

  return [*(v3 + 64) unlock];
}

uint64_t sub_1C199F514()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C199F54C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C199F58C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = v5;
  v12 = *v5;
  v13 = sub_1C1991010(a2, a3);
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
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_1C199F73C(v18, a4 & 1, a5);
      v13 = sub_1C1991010(a2, a3);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_1C1A6FD3C();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v21 = v13;
      sub_1C1A4A944(a5);
      v13 = v21;
    }
  }

  v23 = *v7;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v24 = (v23[6] + 16 * v13);
  *v24 = a2;
  v24[1] = a3;
  *(v23[7] + 8 * v13) = a1;
  v25 = v23[2];
  v17 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v26;
}

uint64_t sub_1C199F73C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_1C19A9E58(a3);
  v36 = a2;
  result = sub_1C1A6FBDC();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {

        v26 = v25;
      }

      sub_1C1A6FDAC();
      sub_1C1A6F45C();
      result = sub_1C1A6FDDC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t (*sub_1C199FA28(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1C199FAB0(v6, a2, a3);
  return sub_1C199FFB8;
}

uint64_t (*sub_1C199FAB0(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1C199FCB4(v7);
  v7[9] = sub_1C199FB5C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1C199FFBC;
}

void (*sub_1C199FB5C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_1C1991010(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1C1A4AD44();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1C199FF7C(v18, a4 & 1);
    v13 = sub_1C1991010(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1C1A6FD3C();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_1C19A0010;
}

uint64_t (*sub_1C199FCB4(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1C19A0168;
}

uint64_t sub_1C199FCDC(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_1C19A9E58(a3);
  v35 = a2;
  result = sub_1C1A6FBDC();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_1C1A6FDAC();
      sub_1C1A6F45C();
      result = sub_1C1A6FDDC();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

void sub_1C199FFC4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_1C19A003C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void sub_1C19A009C(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = **a1;
  v6 = *(*a1 + 40);
  if (v5)
  {
    v7 = v4[4];
    v8 = *v4[3];
    if (v6)
    {
      *(*(v8 + 56) + 8 * v7) = v5;
    }

    else
    {
      a3(v7, v4[1], v4[2], v5, v8);
    }
  }

  else if ((*a1)[5])
  {
    v9 = v4[4];
    v10 = *v4[3];
    sub_1C1A014B0(*(v10 + 48) + 16 * v9);
    a4(v9, v10);
  }

  free(v4);
}

uint64_t sub_1C19A01A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = v5;
  v12 = *v5;
  v13 = sub_1C1991010(a2, a3);
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
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_1C199FCDC(v18, a4 & 1, a5);
      v13 = sub_1C1991010(a2, a3);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1C1A6FD3C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1C1A4AEE0(a5);
      v13 = v21;
    }
  }

  v23 = *v7;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a2;
  v25[1] = a3;
  *(v23[7] + 8 * v13) = a1;
  v26 = v23[2];
  v17 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v27;
}

uint64_t (*sub_1C19A036C(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1C19A0648(v7);
  v7[9] = sub_1C19A04F0(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1C199FFB4;
}

uint64_t (*sub_1C19A0418(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1C19A036C(v6, a2, a3);
  return sub_1C199FFC0;
}

void (*sub_1C19A04F0(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_1C1991010(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1C1A4AD58();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1C1A49070(v18, a4 & 1);
    v13 = sub_1C1991010(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1C1A6FD3C();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_1C19A0010;
}

uint64_t (*sub_1C19A0648(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1C19A016C;
}

uint64_t sub_1C19A0684(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C1A6D5DC();
  v38 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C19A9E58(&qword_1EBF03C30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v35 - v10;
  v12 = type metadata accessor for PreloadedContentDiagnosticPayload();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  sub_1C19A0AF0(a1, a2, v11);
  swift_endAccess();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1C19A0CCC(v11);
  }

  v36 = a2;
  v37 = v6;
  v35 = a1;
  sub_1C1A3BDCC(v11, v15);
  swift_beginAccess();
  v17 = *(v2 + 56);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *v15;
    v20 = v15[1];
    v21 = (v17 + 40);
    v22 = -v18;
    v23 = 1;
    while (1)
    {
      v24 = *(v21 - 1) == v19 && *v21 == v20;
      if (v24 || (sub_1C1A6FCEC() & 1) != 0)
      {
        break;
      }

      ++v23;
      v21 += 2;
      if (v22 + v23 == 1)
      {
        return sub_1C1A3BE88(v15);
      }
    }

    v25 = *(v17 + 16) - v23;
    sub_1C1A6D5AC();
    sub_1C1A6D5BC();
    v27 = v26;
    (*(v38 + 8))(v8, v37);
    sub_1C1A4E87C(v25, v27);
    v28 = sub_1C1A6F64C();
    sub_1C199E4CC();
    v29 = sub_1C1A6F8EC();
    if (os_log_type_enabled(v29, v28))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v31;
      *v30 = 136446466;
      *(v30 + 4) = sub_1C19A1884(v35, v36, &v39);
      *(v30 + 12) = 2050;
      *(v30 + 14) = v25;
      _os_log_impl(&dword_1C198D000, v29, v28, "[Diagnostic] vended %{public}s with distance %{public}ld", v30, 0x16u);
      sub_1C199935C(v31);
      MEMORY[0x1C6906260](v31, -1, -1);
      MEMORY[0x1C6906260](v30, -1, -1);
    }

    v32 = sub_1C1A6F64C();
    v33 = sub_1C1A6F8EC();
    if (os_log_type_enabled(v33, v32))
    {

      v34 = swift_slowAlloc();
      *v34 = 134349056;
      *(v34 + 4) = *(*(v3 + 64) + 16);

      _os_log_impl(&dword_1C198D000, v33, v32, "[Diagnostic] remaining preloads: %{public}ld", v34, 0xCu);
      MEMORY[0x1C6906260](v34, -1, -1);
    }
  }

  return sub_1C1A3BE88(v15);
}

uint64_t sub_1C19A0B68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C1A6D5DC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C19A0C20(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C1A6D5DC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C19A0CCC(uint64_t a1)
{
  v2 = sub_1C19A9E58(&qword_1EBF03C30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C19A0DB8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_1C1A6D25C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6D24C();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

id sub_1C19A0EA8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C1A6D62C();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___APPCMetricsView_promotedContent;
  v10 = [objc_msgSend(*&v2[OBJC_IVAR___APPCMetricsView_promotedContent] metricsHelper];
  swift_unknownObjectRelease();
  if (v10)
  {
    v11 = a1 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = *&v2[OBJC_IVAR___APPCMetricsView_context];
    if (v12)
    {
      v13 = [v12 identifier];
      sub_1C1A6D60C();

      v14 = sub_1C1A6D5EC();
      v16 = v15;
      (*(v5 + 8))(v8, v4);
    }

    else
    {
      v16 = 0x80000001C1A7CA00;
      v14 = 0xD000000000000012;
    }

    if (qword_1EDE63990 != -1)
    {
      swift_once();
    }

    v17 = sub_1C1A6F1BC();
    sub_1C1994600(v17, qword_1EDE665F0);

    v18 = v2;
    v19 = sub_1C1A6F19C();
    v20 = sub_1C1A6F66C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32 = v22;
      *v21 = 67109890;
      *(v21 + 4) = 36;
      *(v21 + 8) = 2080;
      v23 = sub_1C19A1884(v14, v16, &v32);

      *(v21 + 10) = v23;
      *(v21 + 18) = 1024;
      *(v21 + 20) = 36;
      *(v21 + 24) = 2080;
      v24 = [*&v2[v9] identifier];
      v25 = sub_1C1A6F3CC();
      v27 = v26;

      v28 = sub_1C19A1884(v25, v27, &v32);

      *(v21 + 26) = v28;
      _os_log_impl(&dword_1C198D000, v19, v20, "Context ID: %-*s Content ID: %-*s MetricsView has been reused.", v21, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x1C6906260](v22, -1, -1);
      MEMORY[0x1C6906260](v21, -1, -1);
    }

    else
    {
    }
  }

  v29 = type metadata accessor for MetricsView();
  v33.receiver = v2;
  v33.super_class = v29;
  return objc_msgSendSuper2(&v33, sel_willMoveToSuperview_, a1);
}

uint64_t sub_1C19A1208()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x420))();
  if (v1)
  {
    v2 = v1;
    type metadata accessor for WebAdView();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      *(v3 + OBJC_IVAR____TtC17PromotedContentUI9WebAdView_isAppActive) = 1;
      if (*(v3 + OBJC_IVAR____TtC17PromotedContentUI9WebAdView_needToUpdateVisibility) == 1)
      {
        *(v3 + OBJC_IVAR____TtC17PromotedContentUI9WebAdView_needToUpdateVisibility) = 0;
        sub_1C1A21E48(1);
      }
    }
  }

  *(v0 + OBJC_IVAR___APPCMetricsView_isBackgrounded) = 0;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1C19DACB8(0, sub_1C19A1494, v4);
}

uint64_t sub_1C19A1334()
{
  MEMORY[0x1C6906340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t type metadata accessor for WebAdView()
{
  result = qword_1EDE62760;
  if (!qword_1EDE62760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C19A13B8(uint64_t a1, unint64_t *a2)
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

void sub_1C19A149C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x420))();

    if (v2)
    {
      [objc_msgSend(*&v2[OBJC_IVAR___APPCPromotedContentView_promotedContent] metricsHelper)];

      swift_unknownObjectRelease();
    }
  }
}

void sub_1C19A1600(char *a1, SEL *a2, SEL *a3)
{
  v7 = v3;
  v8 = sub_1C1A6F67C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v9 = sub_1C1A6F8EC();
  if (os_log_type_enabled(v9, v8))
  {
    format = a1;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 136380931;
    v12 = [v3 superview];
    if (v12)
    {

      v26 = [v3 superview];
      sub_1C19A9E58(&qword_1EBF03ED0);
      v13 = sub_1C1A6F8FC();
      v15 = v14;
    }

    else
    {
      v15 = 0xE300000000000000;
      v13 = 7104878;
    }

    v16 = sub_1C19A1884(v13, v15, &v27);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2081;
    v17 = [*&v7[OBJC_IVAR___APPCMetricsView_promotedContent] identifier];
    v18 = sub_1C1A6F3CC();
    v20 = v19;

    v21 = sub_1C19A1884(v18, v20, &v27);

    *(v10 + 14) = v21;
    _os_log_impl(&dword_1C198D000, v9, v8, format, v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6906260](v11, -1, -1);
    MEMORY[0x1C6906260](v10, -1, -1);
  }

  v22 = type metadata accessor for MetricsView();
  v28.receiver = v7;
  v28.super_class = v22;
  objc_msgSendSuper2(&v28, *a2);
  v23 = [v7 *a3];
  v24 = v23;
  if (v23)
  {
  }

  sub_1C19A1AB8(v24 != 0);
}

unint64_t sub_1C19A1884(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C19A1950(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1C19A1A5C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1C199935C(v11);
  return v7;
}

unint64_t sub_1C19A1950(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1C19E1FB4(a5, a6);
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
    result = sub_1C1A6FB1C();
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

uint64_t sub_1C19A1A5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1C19A1AB8(char a1)
{
  v2 = v1;
  sub_1C19A1D9C();
  if (a1)
  {
    sub_1C19A505C();
    sub_1C19DACB8(0, 0, 0);
    v4 = [objc_msgSend(*&v1[OBJC_IVAR___APPCMetricsView_promotedContent] metricsHelper)];
    swift_unknownObjectRelease();
    if ((v4 & 1) == 0)
    {
      v5 = [v1 superview];
      if (v5)
      {

        v6 = v1;
        v7 = v6;
        while (1)
        {
          v15 = v6;
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          v8 = [v15 superview];

          v6 = v8;
          if (!v8)
          {
            return;
          }
        }

        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (v13)
        {
          if (qword_1EDE62E48 != -1)
          {
            v14 = v13;
            swift_once();
            v13 = v14;
          }

          sub_1C1A4D98C(v13, v7);
        }
      }
    }
  }

  else
  {
    sub_1C19A3828(0);
    if (v1[OBJC_IVAR___APPCMetricsView_currentlyViewable] == 1)
    {
      v1[OBJC_IVAR___APPCMetricsView_currentlyViewable] = 0;
      sub_1C19DF3D8();
      sub_1C1A6F64C();
      sub_1C198FB8C(0, &qword_1EDE63F30);
      v9 = sub_1C1A6F8EC();
      sub_1C19A9E58(&unk_1EBF03FD0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1C1A73A30;
      v12 = *&v2[OBJC_IVAR___APPCMetricsView_identifier];
      v11 = *&v2[OBJC_IVAR___APPCMetricsView_identifier + 8];
      *(v10 + 56) = MEMORY[0x1E69E6158];
      *(v10 + 64) = sub_1C199E518();
      *(v10 + 32) = v12;
      *(v10 + 40) = v11;

      sub_1C1A6F18C();
    }

    sub_1C19C38C0();
  }
}

void sub_1C19A1D9C()
{
  [*&v0[OBJC_IVAR___APPCMetricsView_promotedContent] adType];
  v1 = sub_1C1A6DEAC();
  v2 = sub_1C1A6DEAC();
  v3 = v0;
  v4 = v3;
  if (v1 == v2)
  {
    v5 = v3;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v6 = [v5 superview];

      v5 = v6;
      if (!v6)
      {
        goto LABEL_19;
      }
    }

    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (!v9)
    {

LABEL_19:
      v14 = OBJC_IVAR___APPCMetricsView_offsetObserver;
      v15 = *&v4[OBJC_IVAR___APPCMetricsView_offsetObserver];
      if (v15)
      {
        v16 = v15;
        sub_1C1A6D37C();

        v15 = *&v4[v14];
      }

      goto LABEL_25;
    }

    v7 = v9;
    v10 = [v9 superview];
    if (v10)
    {
      v11 = v10;
      v12 = v11;
      while (1)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        v13 = [v12 superview];

        v12 = v13;
        if (!v13)
        {
          goto LABEL_33;
        }
      }

      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (v19)
      {
        v20 = v5;
      }

      else
      {
        v20 = v11;
      }

      if (v19)
      {
        v7 = v19;
      }

      else
      {
        v11 = v12;
      }

LABEL_33:
    }

LABEL_34:
    swift_unknownObjectWeakAssign();
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = sub_1C1A6D3EC();

    v22 = *&v4[OBJC_IVAR___APPCMetricsView_offsetObserver];
    *&v4[OBJC_IVAR___APPCMetricsView_offsetObserver] = v21;
  }

  else
  {
    v7 = v3;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v8 = [v7 superview];

      v7 = v8;
      if (!v8)
      {
        goto LABEL_23;
      }
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_34;
    }

LABEL_23:
    v14 = OBJC_IVAR___APPCMetricsView_offsetObserver;
    v15 = *&v4[OBJC_IVAR___APPCMetricsView_offsetObserver];
    if (v15)
    {
      v17 = v15;
      sub_1C1A6D37C();

      v15 = *&v4[v14];
    }

LABEL_25:
    *&v4[v14] = 0;

    v18 = [v4 superview];
    swift_unknownObjectWeakAssign();

    sub_1C19DACB8(0, 0, 0);
  }
}

uint64_t sub_1C19A213C()
{
  MEMORY[0x1C6906340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1C19A2174@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentOffset];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

void sub_1C19A21BC()
{
  v1 = sub_1C1A6F1FC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C1A6F22C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v10 = OBJC_IVAR___APPCMetricsView_policyCheckCompleted;
    if ((v0[OBJC_IVAR___APPCMetricsView_policyCheckCompleted] & 1) == 0)
    {
      [v0 bounds];
      [v0 convertRect:0 toView:?];
      if (qword_1EDE637E8 != -1)
      {
        v37 = v11;
        swift_once();
        v11 = v37;
      }

      if (v11 <= *&qword_1EDE665B8)
      {
        v0[v10] = 1;
        v42 = OBJC_IVAR___APPCMetricsView_promotedContent;
        v12 = [*&v0[OBJC_IVAR___APPCMetricsView_promotedContent] context];
        if (v12 && (v13 = [v12 requestedAd], swift_unknownObjectRelease(), v13))
        {

          sub_1C1A6F65C();
          sub_1C198FB8C(0, &qword_1EDE63F30);
          v14 = sub_1C1A6F8EC();
          sub_1C1A6F18C();

          v15 = [*&v0[v42] metricsHelper];
          if ([objc_opt_self() isMainThread])
          {
            v16 = sub_1C19A2A40();
          }

          else
          {
            v16 = v0[OBJC_IVAR___APPCMetricsView_viewCollapsedState] != 2;
          }

          [v15 interstitialOnScreenWithCollapsed_];
        }

        else
        {
          v40 = v6;
          v41 = v2;
          v39 = objc_opt_self();
          if (([v39 isMainThread] & 1) == 0)
          {
            v17 = sub_1C1A6F39C();
            APSimulateCrash();
          }

          v18 = v0;
          v19 = v18;
          while (1)
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

            v20 = [v19 superview];

            v19 = v20;
            if (!v20)
            {
              goto LABEL_21;
            }
          }

          objc_opt_self();
          v21 = swift_dynamicCastObjCClass();
          if (v21)
          {
            [v21 contentOffset];
            v23 = v22;
            v25 = v24;

            goto LABEL_22;
          }

LABEL_21:
          v23 = 0;
          v25 = 0;
LABEL_22:
          v26 = &v18[OBJC_IVAR___APPCMetricsView_adContentPosition];
          *v26 = v23;
          *(v26 + 1) = v25;
          if (qword_1EDE63E78 != -1)
          {
            swift_once();
            v23 = *v26;
            v25 = *(v26 + 1);
          }

          v27 = qword_1EDE66610;
          v28 = v42;
          v29 = *&v0[v42];
          v30 = swift_allocObject();
          *(v30 + 16) = v18;
          v31 = v18;
          if ([swift_unknownObjectRetain() bestRepresentation])
          {
            swift_unknownObjectRelease();
            v42 = *(v27 + 224);
            v32 = swift_allocObject();
            swift_weakInit();
            v33 = swift_allocObject();
            v33[2] = v32;
            v33[3] = v29;
            v33[4] = v23;
            v33[5] = v25;
            v33[6] = sub_1C19C40F0;
            v33[7] = v30;
            aBlock[4] = sub_1C19C40F8;
            aBlock[5] = v33;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1C198FEA4;
            aBlock[3] = &unk_1F413FF00;
            v34 = _Block_copy(aBlock);
            swift_unknownObjectRetain();

            sub_1C1A6F21C();
            v43 = MEMORY[0x1E69E7CC0];
            sub_1C19C4108();
            sub_1C19A9E58(&qword_1EBF03E28);
            sub_1C19BF710();
            sub_1C1A6F94C();
            MEMORY[0x1C69051C0](0, v8, v4, v34);
            _Block_release(v34);
            swift_unknownObjectRelease();

            (*(v41 + 8))(v4, v1);
            (*(v40 + 8))(v8, v5);

            return;
          }

          v35 = [*&v0[v28] metricsHelper];
          if ([v39 isMainThread])
          {
            v36 = sub_1C19A2A40();
          }

          else
          {
            v36 = v31[OBJC_IVAR___APPCMetricsView_viewCollapsedState] != 2;
          }

          [v35 interstitialOnScreenWithCollapsed_];
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1C19A28F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A2928()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A2960()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

CGFloat sub_1C19A29AC()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v10.origin.x = v2;
  v10.origin.y = v4;
  v10.size.width = v6;
  v10.size.height = v8;
  result = CGRectGetHeight(v10) * 1.5;
  qword_1EDE665B8 = *&result;
  return result;
}

uint64_t sub_1C19A2A40()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR___APPCMetricsView_isCollapsedInternal))
  {
    v2 = 1;
    v3 = 1;
LABEL_5:
    result = 1;
    goto LABEL_6;
  }

  [v0 frame];
  if (CGRectGetHeight(v25) == 0.0)
  {
    v3 = 1;
    v2 = 2;
    goto LABEL_5;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v3 = 1;
    v2 = 3;
    goto LABEL_5;
  }

  v6 = Strong;
  [v0 bounds];
  Width = CGRectGetWidth(v26);
  v8 = MEMORY[0x1E69E7D40];
  v9 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x420))();
  if (v9 && (v10 = v9, (*((*v8 & *v9) + 0x2A8))(), v12 = v11, v14 = v13, v10, (v14 & 1) == 0))
  {
    v15 = v12;
  }

  else
  {
    v15 = 50.0;
  }

  v16 = [v1 superview];
  if (v16)
  {
    v17 = v16;
    sub_1C198FB8C(0, &qword_1EDE626B8);
    v18 = 1;
    while (1)
    {
      v19 = v17;
      v20 = v6;
      v21 = sub_1C1A6F7BC();

      if (v21)
      {
        break;
      }

      if ((v18 & 1) == 0)
      {

        goto LABEL_27;
      }

      [v19 bounds];
      v23 = Width <= ceil(v22);
      [v19 bounds];
      v18 = v15 <= ceil(v24) && v23;
      v17 = [v19 superview];

      if (!v17)
      {

        if (v18)
        {
          goto LABEL_25;
        }

        goto LABEL_27;
      }
    }

    if (v18)
    {
      goto LABEL_25;
    }

LABEL_27:
    v3 = 1;
    v2 = 5;
    goto LABEL_5;
  }

LABEL_25:
  result = 0;
  v3 = 2;
  v2 = 4;
LABEL_6:
  *(v1 + OBJC_IVAR___APPCMetricsView_lastCollapsedState) = v2;
  *(v1 + OBJC_IVAR___APPCMetricsView_viewCollapsedState) = v3;
  return result;
}

uint64_t sub_1C19A2D24(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C19A2D34()
{
  ObjCClassFromObject = swift_getObjCClassFromObject();
  if (qword_1EDE62A28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = off_1EDE62A30;
  if (*(off_1EDE62A30 + 2) && (v2 = sub_1C19A30DC(ObjCClassFromObject), (v3 & 1) != 0))
  {
    v4 = *(v1[7] + v2);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v5 = swift_dynamicCastObjCProtocolConditional();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v5 != 0;
    v18 = off_1EDE62A30;
    off_1EDE62A30 = 0x8000000000000000;
    if (v5)
    {
      v7 = 0x6C6261726F6E6769;
    }

    else
    {
      v7 = 0x656C6269736976;
    }

    if (v5)
    {
      v8 = 0xE900000000000065;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    sub_1C19A3240(v4, ObjCClassFromObject, isUniquelyReferenced_nonNull_native);
    off_1EDE62A30 = v18;
    swift_endAccess();
    sub_1C1A6F64C();
    sub_1C199E4CC();
    v9 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1C1A73CD0;
    v11 = NSStringFromClass(ObjCClassFromObject);
    v12 = sub_1C1A6F3CC();
    v14 = v13;

    v15 = MEMORY[0x1E69E6158];
    *(v10 + 56) = MEMORY[0x1E69E6158];
    v16 = sub_1C199E518();
    *(v10 + 32) = v12;
    *(v10 + 40) = v14;
    *(v10 + 96) = v15;
    *(v10 + 104) = v16;
    *(v10 + 64) = v16;
    *(v10 + 72) = v7;
    *(v10 + 80) = v8;
    sub_1C1A6F18C();
  }

  return v4;
}

void *sub_1C19A2FD4()
{
  result = sub_1C19A2FAC(MEMORY[0x1E69E7CC0]);
  off_1EDE62A30 = result;
  return result;
}

unint64_t sub_1C19A2FFC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_1C19A9E58(a2);
    v7 = sub_1C1A6FBEC();
    for (i = (a1 + 40); ; i += 16)
    {
      v9 = *(i - 1);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      *(v7[7] + result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {
        return v7;
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

unint64_t sub_1C19A30E0(char a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t), uint64_t *a5)
{
  v8 = v5;
  v12 = *v5;
  result = a4(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 >= v18 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    v21 = result;
    sub_1C1A4B18C(a5);
    result = v21;
    goto LABEL_8;
  }

  sub_1C19A3270(v18, a3 & 1, a5);
  result = a4(a2);
  if ((v19 & 1) == (v22 & 1))
  {
LABEL_8:
    v23 = *v8;
    if (v19)
    {
      *(v23[7] + result) = a1 & 1;
      return result;
    }

    v23[(result >> 6) + 8] |= 1 << result;
    *(v23[6] + 8 * result) = a2;
    *(v23[7] + result) = a1 & 1;
    v24 = v23[2];
    v17 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v17)
    {
      v23[2] = v25;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1C1A6FD3C();
  __break(1u);
  return result;
}

uint64_t sub_1C19A3270(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_1C19A9E58(a3);
  result = sub_1C1A6FBDC();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = a2;
    v32 = v4;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + v20);
      result = sub_1C1A6FD9C();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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
        goto LABEL_15;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v6 + 32);
      if (v30 >= 64)
      {
        bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v6 + 16) = 0;
    }

    v4 = v32;
  }

  else
  {
  }

  *v4 = v8;
  return result;
}

unint64_t sub_1C19A34CC(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void sub_1C19A3538(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v7 = OBJC_IVAR___APPCMetricsView_viewCollapsedState;
  if (*(v3 + OBJC_IVAR___APPCMetricsView_viewCollapsedState) || (v8 = a1, v9 = [objc_opt_self() isMainThread], a1 = v8, (v9 & 1) != 0))
  {
    sub_1C19A4200(a1, &unk_1F4140880, &unk_1F4140998, sub_1C19E37A8, sub_1C19A3828);
    if (*(v4 + v7) == 2)
    {
      sub_1C19C38C0();
    }

    if (a2)
    {
      a2();
    }
  }

  else
  {
    v10 = v8;
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v11 = sub_1C1A6F8EC();
    sub_1C1A6F66C();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C1A73A30;
    v14 = *(v4 + OBJC_IVAR___APPCMetricsView_identifier);
    v13 = *(v4 + OBJC_IVAR___APPCMetricsView_identifier + 8);
    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1C199E518();
    *(v12 + 32) = v14;
    *(v12 + 40) = v13;

    sub_1C1A6F17C();

    sub_1C198FB8C(0, &qword_1EDE63F38);
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    v16[2] = a2;
    v16[3] = a3;
    v16[4] = v15;
    v16[5] = v10;
    sub_1C19A2D24(a2);

    sub_1C1A6F6BC();
  }
}

uint64_t sub_1C19A37E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1C19A3828(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for VisibilityTiming();
  v110 = *(v4 - 8);
  v111 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v112 = &v93 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v108 = &v93 - v10;
  v11 = sub_1C19A9E58(&qword_1EBF03C58);
  *&v12 = MEMORY[0x1EEE9AC00](v11 - 8).n128_u64[0];
  v107 = &v93 - v13;
  v14 = OBJC_IVAR___APPCMetricsView_visibleThresholdsLock;
  [*(v1 + OBJC_IVAR___APPCMetricsView_visibleThresholdsLock) lock];
  sub_1C19A445C(a1);
  v15 = OBJC_IVAR___APPCMetricsView_visibleThresholds;
  v16 = *(v1 + OBJC_IVAR___APPCMetricsView_visibleThresholds);
  v17 = *(v16 + 16);
  if (!v17)
  {
    v24 = *(v1 + v14);
LABEL_12:

    return [v24 unlock];
  }

  v101 = v14;
  for (i = 0; i != v17; ++i)
  {
    v19 = a1 > 0;
    v20 = *(v16 + 8 * i + 32);
    if (v20)
    {
      v19 = v20 <= a1;
    }

    if (v19)
    {

      if (i)
      {
        v26 = 0;
        do
        {
          v27 = v26 + 1;
          sub_1C19A45AC(*(v16 + 32 + 8 * v26));
          v26 = v27;
        }

        while (i != v27);
      }

      v28 = *(v1 + v15);
      v29 = *(v28 + 16);
      if (v29 < i)
      {
        goto LABEL_72;
      }

      v100 = v6;
      v30 = OBJC_IVAR___APPCMetricsView_timingTracking;

      v102 = v30;
      swift_beginAccess();
      v104 = v28;
      if (v29 == i)
      {
        v31 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v105 = (v110 + 56);
        v106 = v28 + 32;
        v31 = MEMORY[0x1E69E7CC0];
        *&v103 = v29 - 1;
        v32 = i;
        do
        {
          v109 = v31;
          v33 = v32;
          while (1)
          {
            if (v32 < i || v33 >= v29)
            {
              goto LABEL_70;
            }

            v34 = *(v106 + 8 * v33);
            v114 = v34;
            v35 = sub_1C1A6FCCC();
            v37 = v36;
            v38 = *(v2 + v102);
            if (!*(v38 + 16))
            {
              break;
            }

            v39 = v35;

            v40 = sub_1C1991010(v39, v37);
            v42 = v41;

            if ((v42 & 1) == 0)
            {
              break;
            }

            ++v33;
            v43 = v110;
            v44 = v107;
            sub_1C19CD4A0(*(v38 + 56) + *(v110 + 72) * v40, v107);

            (*(v43 + 56))(v44, 0, 1, v111);
            sub_1C1991140(v44, &qword_1EBF03C58);
            if (v29 == v33)
            {
              v31 = v109;
              goto LABEL_34;
            }
          }

          v45 = v107;
          (*v105)(v107, 1, 1, v111);
          sub_1C1991140(v45, &qword_1EBF03C58);
          v31 = v109;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v113 = v31;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1C19AA268(0, *(v31 + 16) + 1, 1);
            v31 = v113;
          }

          v48 = *(v31 + 16);
          v47 = *(v31 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_1C19AA268((v47 > 1), v48 + 1, 1);
            v31 = v113;
          }

          v32 = v33 + 1;
          *(v31 + 16) = v48 + 1;
          *(v31 + 8 * v48 + 32) = v34;
        }

        while (v103 != v33);
      }

LABEL_34:

      v107 = *(v31 + 16);
      v49 = v102;
      if (!v107)
      {
LABEL_66:

        return [*(v2 + v101) unlock];
      }

      v50 = 0;
      v105 = "n>16@0:8";
      v106 = v31 + 32;
      v104 = " from a non-main thread.";
      v103 = xmmword_1C1A73A30;
      v109 = v31;
      while (1)
      {
        if (v50 >= *(v31 + 16))
        {
          goto LABEL_68;
        }

        v113 = *(v106 + 8 * v50);
        v51 = sub_1C1A6FCCC();
        v53 = v52;
        sub_1C1A6F65C();
        sub_1C199E4CC();
        v54 = sub_1C1A6F8EC();
        sub_1C19A9E58(&unk_1EBF03FD0);
        v55 = swift_allocObject();
        *(v55 + 16) = v103;
        *(v55 + 56) = MEMORY[0x1E69E6158];
        *(v55 + 64) = sub_1C199E518();
        *(v55 + 32) = v51;
        *(v55 + 40) = v53;

        sub_1C1A6F18C();

        v56 = v108;
        sub_1C1A6D5CC();
        v57 = *(v111 + 20);
        v58 = sub_1C1A6D5DC();
        (*(*(v58 - 8) + 56))(v56 + v57, 1, 1, v58);
        swift_beginAccess();
        sub_1C19CD504(v56, v112);
        v59 = swift_isUniquelyReferenced_nonNull_native();
        v114 = *(v2 + v49);
        v60 = v114;
        *(v2 + v49) = 0x8000000000000000;
        v62 = sub_1C1991010(v51, v53);
        v63 = *(v60 + 16);
        v64 = (v61 & 1) == 0;
        v65 = v63 + v64;
        if (__OFADD__(v63, v64))
        {
          goto LABEL_69;
        }

        v66 = v61;
        if (*(v60 + 24) >= v65)
        {
          if (v59)
          {
            v67 = v60;
            if (v61)
            {
              goto LABEL_36;
            }
          }

          else
          {
            sub_1C19A9E58(&qword_1EBF03CA0);
            v74 = sub_1C1A6FBCC();
            v67 = v74;
            if (*(v60 + 16))
            {
              v75 = (v74 + 64);
              v76 = (v60 + 64);
              v77 = ((1 << *(v67 + 32)) + 63) >> 6;
              v93 = v60 + 64;
              if (v67 != v60 || v75 >= &v76[8 * v77])
              {
                memmove(v75, v76, 8 * v77);
              }

              v78 = 0;
              *(v67 + 16) = *(v60 + 16);
              v79 = 1 << *(v60 + 32);
              if (v79 < 64)
              {
                v80 = ~(-1 << v79);
              }

              else
              {
                v80 = -1;
              }

              v81 = v80 & *(v60 + 64);
              v82 = (v79 + 63) >> 6;
              v94 = v82;
              if (v81)
              {
                do
                {
                  v83 = __clz(__rbit64(v81));
                  v98 = (v81 - 1) & v81;
LABEL_62:
                  v86 = v83 | (v78 << 6);
                  v95 = 16 * v86;
                  v87 = *(v60 + 56);
                  v88 = (*(v60 + 48) + 16 * v86);
                  v90 = *v88;
                  v89 = v88[1];
                  v97 = v90;
                  v99 = v89;
                  v96 = *(v110 + 72) * v86;
                  sub_1C19CD4A0(v87 + v96, v100);
                  v91 = (*(v67 + 48) + v95);
                  v92 = v99;
                  *v91 = v97;
                  v91[1] = v92;
                  sub_1C19CD504(v100, *(v67 + 56) + v96);

                  v82 = v94;
                  v81 = v98;
                }

                while (v98);
              }

              v84 = v78;
              while (1)
              {
                v78 = v84 + 1;
                if (__OFADD__(v84, 1))
                {
                  goto LABEL_73;
                }

                if (v78 >= v82)
                {
                  break;
                }

                v85 = *(v93 + 8 * v78);
                ++v84;
                if (v85)
                {
                  v83 = __clz(__rbit64(v85));
                  v98 = (v85 - 1) & v85;
                  goto LABEL_62;
                }
              }
            }

            if (v66)
            {
LABEL_36:
              sub_1C19CD568(v112, *(v67 + 56) + *(v110 + 72) * v62);

              goto LABEL_37;
            }
          }
        }

        else
        {
          sub_1C1A484CC(v65, v59);
          v67 = v114;
          v68 = sub_1C1991010(v51, v53);
          if ((v66 & 1) != (v69 & 1))
          {
            goto LABEL_74;
          }

          v62 = v68;
          if (v66)
          {
            goto LABEL_36;
          }
        }

        *(v67 + 8 * (v62 >> 6) + 64) |= 1 << v62;
        v70 = (*(v67 + 48) + 16 * v62);
        *v70 = v51;
        v70[1] = v53;
        sub_1C19CD504(v112, *(v67 + 56) + *(v110 + 72) * v62);
        v71 = *(v67 + 16);
        v72 = __OFADD__(v71, 1);
        v73 = v71 + 1;
        if (v72)
        {
          goto LABEL_71;
        }

        *(v67 + 16) = v73;
LABEL_37:
        ++v50;
        *(v2 + v49) = v67;

        swift_endAccess();
        v31 = v109;
        if (v50 == v107)
        {
          goto LABEL_66;
        }
      }
    }
  }

  v21 = 0;
  v22 = v101;
  while (v21 < *(v16 + 16))
  {
    v23 = v21 + 1;
    sub_1C19A45AC(*(v16 + 8 * v21 + 32));
    v21 = v23;
    if (v17 == v23)
    {

      v24 = *(v1 + v22);
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  result = sub_1C1A6FD3C();
  __break(1u);
  return result;
}

uint64_t sub_1C19A4200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = v5;
  if (sub_1C199C4A0())
  {
    sub_1C198FB8C(0, &qword_1EDE63F38);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = a1;

    sub_1C1A6F6BC();
  }

  if (a1 < 1)
  {
    result = a5(a1);
    if (!a1 && *(v5 + OBJC_IVAR___APPCMetricsView_currentlyViewable) == 1)
    {
      *(v5 + OBJC_IVAR___APPCMetricsView_currentlyViewable) = 0;
      sub_1C19DF3D8();
      sub_1C1A6F64C();
      sub_1C198FB8C(0, &qword_1EDE63F30);
      v11 = sub_1C1A6F8EC();
      sub_1C19A9E58(&unk_1EBF03FD0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1C1A73A30;
      v14 = *(v6 + OBJC_IVAR___APPCMetricsView_identifier);
      v13 = *(v6 + OBJC_IVAR___APPCMetricsView_identifier + 8);
      *(v12 + 56) = MEMORY[0x1E69E6158];
      *(v12 + 64) = sub_1C199E518();
      *(v12 + 32) = v14;
      *(v12 + 40) = v13;

      sub_1C1A6F18C();
    }
  }

  else
  {
    sub_1C1A2D630(a1);

    return a5(a1);
  }

  return result;
}

uint64_t sub_1C19A445C(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR___APPCMetricsView_promotedContent) mediaMetricHelper];
  if (v3)
  {
    [v3 setVisiblePercentage_];
    swift_unknownObjectRelease();
  }

  result = [objc_opt_self() isMainThread];
  if (result)
  {
    result = sub_1C19A2A40();
    if (result)
    {
      return result;
    }
  }

  else if (*(v1 + OBJC_IVAR___APPCMetricsView_viewCollapsedState) != 2)
  {
    return result;
  }

  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x420))();
  if (v6)
  {
    v7 = v6;
    (*((*v5 & *v6) + 0x2E8))(a1);
  }

  return sub_1C19DEB18(a1);
}

uint64_t sub_1C19A45AC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C19A9E58(&qword_1EBF03C58);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v116 = &v109 - v5;
  v6 = sub_1C1A6D5DC();
  v117 = *(v6 - 8);
  v118 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v111 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v110 = &v109 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v109 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v109 - v13;
  v15 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v113 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v112 = &v109 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v109 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v109 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v109 - v26;
  v28 = type metadata accessor for VisibilityTiming();
  v120 = *(v28 - 8);
  v121 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v109 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v109 - v32;
  v119 = a1;
  v123 = a1;
  v34 = sub_1C1A6FCCC();
  v36 = v35;
  v37 = OBJC_IVAR___APPCMetricsView_timingTracking;
  swift_beginAccess();
  v114 = v37;
  v115 = v2;
  v38 = *(v2 + v37);
  if (!*(v38 + 16))
  {
  }

  v39 = sub_1C1991010(v34, v36);
  v41 = v40;

  if ((v41 & 1) == 0)
  {
  }

  sub_1C19CD4A0(*(v38 + 56) + *(v120 + 72) * v39, v30);

  v42 = v30;
  v43 = v33;
  sub_1C19CD504(v42, v33);
  sub_1C1A6D5CC();
  v45 = v117;
  v44 = v118;
  (*(v117 + 56))(v27, 0, 1, v118);
  v46 = *(v121 + 20);
  sub_1C19B40BC(v27, &v43[v46]);
  sub_1C19AF080(&v43[v46], v24);
  v47 = *(v45 + 48);
  if (v47(v24, 1, v44) == 1)
  {
    sub_1C1991140(v24, &qword_1EBF038A8);
    goto LABEL_9;
  }

  (*(v45 + 32))(v14, v24, v44);
  sub_1C1A6D57C();
  v50 = v49;
  sub_1C1A6D57C();
  v52 = v51;
  (*(v45 + 8))(v14, v44);
  if (v50 - v52 != 0.0)
  {
LABEL_9:
    if ([objc_opt_self() isMainThread])
    {
      v55 = v115;
      if ((sub_1C19A2A40() & 1) == 0)
      {
LABEL_11:
        Height = CGRectGetHeight(*(v55 + OBJC_IVAR___APPCMetricsView_lastTimeVisibilityCheckFrame));
        v57 = 0;
LABEL_19:
        sub_1C19AF080(&v43[v46], v21);
        if (v47(v21, 1, v44) == 1)
        {
          sub_1C1991140(v21, &qword_1EBF038A8);
          v66 = -1.0;
        }

        else
        {
          v67 = *(v45 + 32);
          v118 = (v45 + 48);
          v68 = v46;
          v69 = v55;
          v70 = v57;
          v71 = v47;
          v72 = v109;
          v67(v109, v21, v44);
          sub_1C1A6D57C();
          v74 = v73;
          sub_1C1A6D57C();
          v76 = v75;
          v77 = v72;
          v47 = v71;
          v57 = v70;
          v55 = v69;
          v46 = v68;
          (*(v45 + 8))(v77, v44);
          v66 = v74 - v76;
        }

        v78 = v112;
        v79 = Height;
        v80 = v79 / v66;
        sub_1C19AF080(&v43[v46], v112);
        v118 = v47;
        if (v47(v78, 1, v44) == 1)
        {
          sub_1C1991140(v78, &qword_1EBF038A8);
          v81 = -1.0;
        }

        else
        {
          v82 = v110;
          (*(v45 + 32))(v110, v78, v44);
          sub_1C1A6D57C();
          v84 = v83;
          sub_1C1A6D57C();
          v86 = v85;
          (*(v45 + 8))(v82, v44);
          v81 = v84 - v86;
        }

        v87 = v44;
        v88 = [*(v55 + OBJC_IVAR___APPCMetricsView_promotedContent) metricsHelper];
        v89 = sub_1C1A6D52C();
        v90 = v119;
        *&v91 = v80;
        [v88 visibleWithPercent:v119 starting:v89 duration:v57 scrollVelocity:v81 collapsed:v91];
        swift_unknownObjectRelease();

        sub_1C1A6F65C();
        sub_1C199E4CC();
        v92 = sub_1C1A6F8EC();
        sub_1C19A9E58(&unk_1EBF03FD0);
        v93 = v43;
        v94 = swift_allocObject();
        *(v94 + 16) = xmmword_1C1A73CD0;
        v95 = MEMORY[0x1E69E65A8];
        *(v94 + 56) = MEMORY[0x1E69E6530];
        *(v94 + 64) = v95;
        *(v94 + 32) = v90;
        v96 = v113;
        sub_1C19AF080(v93 + v46, v113);
        if (v118(v96, 1, v87) == 1)
        {
          sub_1C1991140(v96, &qword_1EBF038A8);
          v97 = -1.0;
        }

        else
        {
          v98 = v117;
          v99 = v111;
          (*(v117 + 32))(v111, v96, v87);
          sub_1C1A6D57C();
          v101 = v100;
          sub_1C1A6D57C();
          v103 = v102;
          (*(v98 + 8))(v99, v87);
          v97 = v101 - v103;
        }

        v104 = MEMORY[0x1E69E6438];
        *(v94 + 96) = MEMORY[0x1E69E63B0];
        *(v94 + 104) = v104;
        *(v94 + 72) = v97;
        sub_1C1A6F18C();

        v122 = v119;
        v105 = sub_1C1A6FCCC();
        v107 = v106;
        v108 = v116;
        (*(v120 + 56))(v116, 1, 1, v121);
        swift_beginAccess();
        sub_1C19B5448(v108, v105, v107);
        swift_endAccess();
        v54 = v93;
        return sub_1C19CD5CC(v54);
      }
    }

    else
    {
      v55 = v115;
      if (*(v115 + OBJC_IVAR___APPCMetricsView_viewCollapsedState) == 2)
      {
        goto LABEL_11;
      }
    }

    v58 = MEMORY[0x1E69E7D40];
    v59 = (*((*MEMORY[0x1E69E7D40] & *v55) + 0x420))();
    if (v59)
    {
      v60 = v59;
      v61 = v47;
      (*((*v58 & *v59) + 0x2A8))();
      v63 = v62;
      v65 = v64;

      if (v65)
      {
        Height = 50.0;
      }

      else
      {
        Height = v63;
      }

      v44 = v118;
      v47 = v61;
      v57 = 1;
    }

    else
    {
      v57 = 1;
      Height = 50.0;
      v44 = v118;
    }

    goto LABEL_19;
  }

  sub_1C1A6F65C();
  sub_1C199E4CC();
  v53 = sub_1C1A6F8EC();
  sub_1C1A6F18C();

  v54 = v43;
  return sub_1C19CD5CC(v54);
}

uint64_t sub_1C19A504C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_1C19A505C()
{
  v1 = v0;
  result = [v0 superview];
  if (result)
  {

    result = [v0 window];
    if (result)
    {

      sub_1C1A6F64C();
      sub_1C198FB8C(0, &qword_1EDE63F30);
      v3 = sub_1C1A6F8EC();
      sub_1C19A9E58(&unk_1EBF03FD0);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1C1A73A30;
      v5 = OBJC_IVAR___APPCMetricsView_promotedContent;
      v6 = [*&v1[OBJC_IVAR___APPCMetricsView_promotedContent] identifier];
      v7 = sub_1C1A6F3CC();
      v9 = v8;

      *(v4 + 56) = MEMORY[0x1E69E6158];
      *(v4 + 64) = sub_1C199E518();
      *(v4 + 32) = v7;
      *(v4 + 40) = v9;
      sub_1C1A6F18C();

      if ([*&v1[v5] placeholder])
      {
        v10 = [*&v1[v5] metricEventsTracking];
        if (v10)
        {
          [v10 didPlacePlaceholder];
          swift_unknownObjectRelease();
        }
      }

      v11 = [*&v1[v5] adType];
      v12 = *&v1[v5];
      sub_1C1A6EB6C();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        swift_unknownObjectRetain();
        v13 = sub_1C1A6EB5C();
        swift_unknownObjectRelease();
        v12 = *&v1[v5];
      }

      [v12 adType];
      v14 = sub_1C1A6DEAC();
      [objc_msgSend(*&v1[v5] metricsHelper)];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1C19A53B0()
{
  v1 = v0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for PromotedContentView();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  sub_1C1A6EB6C();
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
    if (sub_1C1A6EB3C())
    {
      v2 = sub_1C19F5B18();
      [v1 bounds];
      [v2 setFrame_];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v3 = sub_1C19A54BC();
  return (*((*MEMORY[0x1E69E7D40] & *v1) + 0x308))(v3);
}

id sub_1C19A54BC()
{
  v1 = *&v0[OBJC_IVAR___APPCPromotedContentView_dimmerView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = OBJC_IVAR___APPCPromotedContentView_promotedContent;
  if (([*&v0[OBJC_IVAR___APPCPromotedContentView_promotedContent] isMRAID] & 1) != 0 || (objc_msgSend(*&v0[v2], sel_adType), v3 = sub_1C1A6DEAC(), v3 == sub_1C1A6DEAC()) || (objc_msgSend(*&v0[v2], sel_adType), v4 = sub_1C1A6DEAC(), result = sub_1C1A6DEAC(), v4 == result))
  {

    return [v1 setHidden_];
  }

  return result;
}

BOOL sub_1C19A55D8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1C19A5658@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C19A5690@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1A6F3CC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C19A56C8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C19A56E8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1C19A5710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C1A6D5DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1C19A9E58(&qword_1EBF038A8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1C19A580C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C1A6D5DC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1C19A9E58(&qword_1EBF038A8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1C19A5958(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C1A6D62C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C19A5A04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C1A6D62C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C19A5AA8()
{
  MEMORY[0x1C6906340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A5AE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C19A5B20()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1C19A5B68()
{
  [*(v0 + 16) invalidate];
  v1 = *(v0 + 16);
  *(v0 + 16) = 0;
}

uint64_t sub_1C19A5BA8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A5BE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C19A5C1C()
{
  v1 = sub_1C1A6D48C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  swift_unknownObjectRelease();

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v5, v3 | 7);
}

uint64_t sub_1C19A5D14()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C19A5D54()
{
  MEMORY[0x1C6906340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A5D8C()
{
  MEMORY[0x1C6906340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A5E00(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C1A6D62C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C19A5EAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C1A6D62C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C19A5F8C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C1A6D62C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C19A6038(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C1A6D62C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C19A6118(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C1A6D62C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C19A61C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C1A6D62C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C19A6268@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 96);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C19A62B8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 96) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1C19A6318()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C19A6368()
{
  v1 = sub_1C1A6D48C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  swift_unknownObjectRelease();

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v5, v3 | 7);
}

uint64_t sub_1C19A6460()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C19A64A0()
{
  MEMORY[0x1C6906340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A64D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C19A6554(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C1A6D62C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C19A6600(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C1A6D62C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C19A66A4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C19A66EC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A6774@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___APPCMetricsView_impressionDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C19A67D0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR___APPCMetricsView_impressionDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

id sub_1C19A6834@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 promotedContentInfo];
  *a2 = result;
  return result;
}

uint64_t sub_1C19A6884@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCMetricsView_appBeginViewImpressionTask;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1C19A68E4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A691C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C19A6968()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A69A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C19A69DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A6A18()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C19A6AAC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C1A6D62C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C19A6B58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C1A6D62C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C19A6C24()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A6C5C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C19A6C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C1A6D5DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C19A6D68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C1A6D5DC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1C19A6E20()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C19A6E60()
{
  MEMORY[0x1C6906340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A6E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C1A6D48C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1C19A9E58(&qword_1EBF03908);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1C19A6FC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_1C1A6D48C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1C19A9E58(&qword_1EBF03908);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C19A70F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C19A7174(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C1A6D62C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}