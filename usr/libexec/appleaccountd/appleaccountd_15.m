void sub_1001AE97C(char a1, void *a2, uint64_t a3)
{
  *(a3 + qword_1003E3FC0) = a1;
  v5 = qword_1003E3FB8;
  v6 = *(a3 + qword_1003E3FB8);
  *(a3 + qword_1003E3FB8) = a2;

  v7 = qword_1003D7F48;
  v8 = a2;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100008D04(v9, qword_1003FAAB8);
  swift_unknownObjectRetain();
  oslog = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v11 = 136315394;
    if (qword_1003D7E28 != -1)
    {
      swift_once();
    }

    *(v11 + 4) = sub_10021145C(qword_1003E10D0, *algn_1003E10D8, &v17);
    *(v11 + 12) = 2112;
    v14 = *(a3 + v5);
    *(v11 + 14) = v14;
    *v12 = v14;
    v15 = v14;
    _os_log_impl(&_mh_execute_header, oslog, v10, "%s: claimCodeVerificationError appended to the event\n%@", v11, 0x16u);
    sub_100008D3C(v12, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v13);
  }
}

uint64_t sub_1001AEB84(uint64_t a1, uint64_t a2)
{
  if (a2 >= a1)
  {
    if (a1 >= a2)
    {
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_100008D04(v10, qword_1003FAAB8);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_15;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "idMS has EQUAL number of beneficiaries registered.";
    }

    else
    {
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100008D04(v9, qword_1003FAAB8);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_15;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "idMS has LESS number of beneficiaries registered.";
    }

    goto LABEL_14;
  }

  if (qword_1003D7F48 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAAB8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "idMS has MORE number of beneficiaries registered.";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v5, v6, v8, v7, 2u);
    }

LABEL_15:

    result = a1 - a2;
    if (!__OFSUB__(a1, a2))
    {
      break;
    }

    __break(1u);
LABEL_18:
    swift_once();
  }

  return result;
}

uint64_t sub_1001AED9C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001AEDD4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1001AEE14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001AEE2C()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);
  v7 = *(v0 + v2 + v1[5] + 8);

  v8 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v9 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v9, 1, v4))
  {
    v6(v3 + v9, v4);
  }

  v10 = (v16 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v3 + v1[12] + 8);

  v13 = *(v3 + v1[14] + 8);

  v14 = *(v0 + v10);

  return _swift_deallocObject(v0, ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

void sub_1001AF020(uint64_t a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1001A56AC(a1, v1 + v4, v7, v8);
}

uint64_t sub_1001AF0D4()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80);
  v17 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);
  swift_unknownObjectRelease();
  v4 = *(v0 + 40);

  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v2, v6);
  v9 = *(v0 + v2 + v1[5] + 8);

  v10 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  v8(v0 + v2 + v1[8], v6);
  sub_100012324(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v11 = v1[11];
  if (!(*(v7 + 48))(v0 + v2 + v11, 1, v6))
  {
    v8(v5 + v11, v6);
  }

  v12 = (v17 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v5 + v1[12] + 8);

  v14 = *(v5 + v1[14] + 8);

  v15 = *(v0 + v12);

  return _swift_deallocObject(v0, ((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1001AF2C8(uint64_t *a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = *(v1 + v5);
  v11 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001A6374(a1, v6, v7, v8, v9, v1 + v4, v10, v11);
}

uint64_t sub_1001AF378()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4 + 8);

  v8 = *(v0 + v5);

  v9 = *(v0 + v6);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1001AF448(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1 + v5;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v1 + v6);
  v12 = *(v1 + v7);
  v13 = *(v1 + v7 + 8);
  v14 = *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001A7794(a1, v1 + v4, v9, v10, v11, v12, v13);
}

uint64_t sub_1001AF510(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003E4F40, &unk_1003446D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AF580()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v28 = *(*(v1 - 1) + 80);
  v2 = (v28 + 16) & ~v28;
  v27 = *(*(v1 - 1) + 64);
  v3 = type metadata accessor for InheritanceInvitationRecord();
  v4 = *(*(v3 - 1) + 80);
  v26 = *(*(v3 - 1) + 64);
  v29 = v0;
  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v5, v6);
  v9 = *(v5 + v1[5] + 8);

  v10 = *(v5 + v1[6] + 8);

  sub_100012324(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  v8(v5 + v1[8], v6);
  sub_100012324(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v11 = v1[11];
  if (!(*(v7 + 48))(v5 + v11, 1, v6))
  {
    v8(v5 + v11, v6);
  }

  v12 = (v27 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = v8;
  v14 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v4 + v14 + 8) & ~v4;
  v16 = *(v5 + v1[12] + 8);

  v17 = *(v5 + v1[14] + 8);

  v18 = *(v29 + v12);
  swift_unknownObjectRelease();
  v19 = *(v29 + v13 + 8);

  v20 = *(v29 + v14);

  v25(v29 + v15, v6);
  v21 = *(v29 + v15 + v3[5] + 8);

  v22 = *(v29 + v15 + v3[6] + 8);

  v23 = *(v29 + v15 + v3[7] + 8);

  v25(v29 + v15 + v3[9], v6);
  sub_100012324(*(v29 + v15 + v3[10]), *(v29 + v15 + v3[10] + 8));

  return _swift_deallocObject(v29, ((v26 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1001AF884(uint64_t a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for InheritanceInvitationRecord() - 8);
  v9 = (*(v8 + 80) + v7 + 8) & ~*(v8 + 80);
  v11 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1001A6F2C(a1, v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + v6), *(v1 + v6 + 8), *(v1 + v7), v1 + v9);
}

uint64_t sub_1001AF9BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001AFA24()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v32 = *(*(v1 - 1) + 80);
  v29 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for InheritanceInvitationRecord();
  v28 = *(*(v2 - 1) + 80);
  v27 = *(*(v2 - 1) + 64);
  v33 = type metadata accessor for InheritanceHealthRecord();
  v3 = *(*(v33 - 8) + 80);
  v26 = *(*(v33 - 8) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  v31 = (v32 + 40) & ~v32;
  v6 = v0 + v31;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v31, v7);
  v10 = *(v0 + v31 + v1[5] + 8);

  v11 = *(v0 + v31 + v1[6] + 8);

  sub_100012324(*(v6 + v1[7]), *(v6 + v1[7] + 8));
  v9(v0 + v31 + v1[8], v7);
  sub_100012324(*(v6 + v1[9]), *(v6 + v1[9] + 8));
  v12 = v1[11];
  if (!(*(v8 + 48))(v0 + v31 + v12, 1, v7))
  {
    v9(v6 + v12, v7);
  }

  v13 = (v31 + v29 + v28) & ~v28;
  v14 = (v13 + v27 + v3) & ~v3;
  v30 = (v26 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v6 + v1[12] + 8);

  v16 = *(v6 + v1[14] + 8);

  v9(v0 + v13, v7);
  v17 = *(v0 + v13 + v2[5] + 8);

  v18 = *(v0 + v13 + v2[6] + 8);

  v19 = *(v0 + v13 + v2[7] + 8);

  v9(v0 + v13 + v2[9], v7);
  sub_100012324(*(v0 + v13 + v2[10]), *(v0 + v13 + v2[10] + 8));
  v20 = v0 + v14;
  v9(v0 + v14, v7);
  v21 = v33;
  v22 = *(v33 + 20);
  v23 = type metadata accessor for Date();
  (*(*(v23 - 8) + 8))(v20 + v22, v23);
  sub_100012324(*(v20 + *(v21 + 24)), *(v20 + *(v21 + 24) + 8));
  v9(v20 + *(v33 + 28), v7);
  sub_100012324(*(v20 + *(v21 + 32)), *(v20 + *(v21 + 32) + 8));
  v24 = *(v0 + v30 + 8);

  return _swift_deallocObject(v0, ((v30 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1001AFE10(char a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for InheritanceInvitationRecord() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for InheritanceHealthRecord() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v1 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8));
  return sub_1001A908C(a1, v1[2], v1[3], v1[4], v1 + v4, v1 + v7, v1 + v10, *(v1 + v11), *(v1 + v11 + 8));
}

uint64_t sub_1001AFF8C()
{
  v1 = (type metadata accessor for InheritanceHealthRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v7 = v1[7];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  sub_100012324(*(v4 + v1[8]), *(v4 + v1[8] + 8));
  v6(v4 + v1[9], v5);
  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));
  v9 = *(v0 + v3 + 8);

  return _swift_deallocObject(v0, ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_1001B0110(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for InheritanceHealthRecord() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v2 + v7;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v2 + v8);

  return sub_1001AC0E8(a1, a2 & 1, v2 + v6, v10);
}

uint64_t sub_1001B01CC()
{
  v1 = (type metadata accessor for InheritanceHealthRecord() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  v6 = v0 + v2;
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v9 = v1[7];
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);
  sub_100012324(*(v6 + v1[8]), *(v6 + v1[8] + 8));
  v8(v6 + v1[9], v7);
  sub_100012324(*(v6 + v1[10]), *(v6 + v1[10] + 8));
  v11 = *(v0 + v3 + 8);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_1001B0358(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for InheritanceHealthRecord() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000082A8;

  return sub_1001AC8AC(a1, v7, v8, v1 + 32, v1 + v6, v10, v11);
}

uint64_t sub_1001B049C(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for UUID();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for CustodianHealthRecord();
  v1[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_1001B05D4, 0, 0);
}

uint64_t sub_1001B05D4()
{
  v29 = v0;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  v0[14] = sub_100008D04(v4, qword_1003FAA58);
  sub_1001B2990(v3, v2, type metadata accessor for CustodianHealthRecord);
  sub_1001B2990(v3, v1, type metadata accessor for CustodianHealthRecord);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[12];
  v9 = v0[13];
  if (v7)
  {
    v26 = v0[6];
    v27 = v6;
    v11 = v0[4];
    v10 = v0[5];
    v12 = v0[3];
    v13 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v13 = 136315394;
    (*(v11 + 16))(v10, v9, v12);
    sub_1001B29F8(v9, type metadata accessor for CustodianHealthRecord);
    sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_10021145C(v14, v16, &v28);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = v8 + *(v26 + 20);
    v19 = UUID.uuidString.getter();
    v21 = v20;
    sub_1001B29F8(v8, type metadata accessor for CustodianHealthRecord);
    v22 = sub_10021145C(v19, v21, &v28);

    *(v13 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v5, v27, "Checking if the record is shared and accepted, recordID: %s, zoneName: %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1001B29F8(v0[13], type metadata accessor for CustodianHealthRecord);

    sub_1001B29F8(v8, type metadata accessor for CustodianHealthRecord);
  }

  v23 = swift_task_alloc();
  v0[15] = v23;
  *v23 = v0;
  v23[1] = sub_1001B0924;
  v24 = v0[2];

  return sub_10013A698(v24);
}

uint64_t sub_1001B0924(uint64_t a1)
{
  v3 = *(*v2 + 120);
  v4 = *v2;
  v4[16] = a1;

  if (v1)
  {
    v6 = v4[12];
    v5 = v4[13];
    v8 = v4[10];
    v7 = v4[11];
    v10 = v4[8];
    v9 = v4[9];
    v11 = v4[7];
    v12 = v4[5];

    v13 = v4[1];

    return v13(0);
  }

  else
  {

    return _swift_task_switch(sub_1001B0AD0, 0, 0);
  }
}

uint64_t sub_1001B0AD0()
{
  v98 = v0;
  v1 = v0[16];
  v2 = v0[14];
  if (v1)
  {
    sub_1001B2990(v0[2], v0[11], type metadata accessor for CustodianHealthRecord);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[11];
    if (v6)
    {
      v8 = v0[6];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v97 = v11;
      *v9 = 138412546;
      v12 = [v3 recordID];
      *(v9 + 4) = v12;
      *v10 = v12;
      *(v9 + 12) = 2080;
      v13 = v7 + *(v8 + 5);
      v14 = UUID.uuidString.getter();
      v16 = v15;
      sub_1001B29F8(v7, type metadata accessor for CustodianHealthRecord);
      v17 = sub_10021145C(v14, v16, &v97);

      *(v9 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v4, v5, "Existing CKShare found, recordID: %@, zoneName: %s", v9, 0x16u);
      sub_100008D3C(v10, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v11);
    }

    else
    {

      sub_1001B29F8(v7, type metadata accessor for CustodianHealthRecord);
    }

    v39 = v0[14];
    v40 = v0[8];
    v41 = v0[2];
    v95 = v3;
    v42 = [v3 participants];
    sub_100016034(0, &unk_1003DEBE0, CKShareParticipant_ptr);
    v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001B2990(v41, v40, type metadata accessor for CustodianHealthRecord);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.info.getter();
    v46 = v43 >> 62;
    if (os_log_type_enabled(v44, v45))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v97 = v48;
      *v47 = 134218242;
      if (v46)
      {
        v49 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v49 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v50 = v0[8];
      v51 = v0[6];
      *(v47 + 4) = v49;

      *(v47 + 12) = 2080;
      v52 = v50 + *(v51 + 5);
      v53 = UUID.uuidString.getter();
      v55 = v54;
      sub_1001B29F8(v50, type metadata accessor for CustodianHealthRecord);
      v56 = sub_10021145C(v53, v55, &v97);

      *(v47 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v44, v45, "Found %ld participant(s) for zone %s", v47, 0x16u);
      sub_10000839C(v48);
    }

    else
    {
      v57 = v0[8];

      sub_1001B29F8(v57, type metadata accessor for CustodianHealthRecord);
    }

    if (v46)
    {
      goto LABEL_31;
    }

    for (i = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v93 = v0;
      v59 = 0;
      v0 = &selRef_setPath_;
      while (1)
      {
        if ((v43 & 0xC000000000000001) != 0)
        {
          v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v59 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v60 = *(v43 + 8 * v59 + 32);
        }

        v61 = v60;
        v62 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          break;
        }

        if ([v60 isCurrentUser])
        {
        }

        else
        {
          v63 = [v61 acceptanceStatus];

          if (v63 == 2)
          {
            v38 = 1;
LABEL_28:
            v0 = v93;
            goto LABEL_33;
          }
        }

        ++v59;
        if (v62 == i)
        {
          v38 = 0;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

    v38 = 0;
LABEL_33:
    v64 = v0[14];
    v65 = v0[7];
    v66 = v0[2];

    sub_1001B2990(v66, v65, type metadata accessor for CustodianHealthRecord);
    v67 = v95;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.info.getter();

    v70 = os_log_type_enabled(v68, v69);
    v71 = v0[7];
    if (v70)
    {
      v72 = v0[6];
      v73 = swift_slowAlloc();
      v96 = v38;
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v97 = v75;
      *v73 = 138412546;
      v76 = [v67 recordID];
      *(v73 + 4) = v76;
      *v74 = v76;
      *(v73 + 12) = 2080;
      v77 = v71 + *(v72 + 5);
      v78 = UUID.uuidString.getter();
      v80 = v79;
      sub_1001B29F8(v71, type metadata accessor for CustodianHealthRecord);
      v81 = sub_10021145C(v78, v80, &v97);

      *(v73 + 14) = v81;
      _os_log_impl(&_mh_execute_header, v68, v69, "CKShare accepted for recordID: %@, zoneName: %s", v73, 0x16u);
      sub_100008D3C(v74, &unk_1003D9140, &qword_10033E640);
      v38 = v96;

      sub_10000839C(v75);
    }

    else
    {

      sub_1001B29F8(v71, type metadata accessor for CustodianHealthRecord);
    }
  }

  else
  {
    v18 = v0[9];
    v19 = v0[2];
    sub_1001B2990(v19, v0[10], type metadata accessor for CustodianHealthRecord);
    sub_1001B2990(v19, v18, type metadata accessor for CustodianHealthRecord);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[9];
    v24 = v0[10];
    if (v22)
    {
      v92 = v0[6];
      v94 = v21;
      v26 = v0[4];
      v25 = v0[5];
      v27 = v0[3];
      v28 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *v28 = 136315394;
      (*(v26 + 2))(v25, v24, v27);
      sub_1001B29F8(v24, type metadata accessor for CustodianHealthRecord);
      sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      (*(v26 + 1))(v25, v27);
      v32 = sub_10021145C(v29, v31, &v97);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      v33 = v23 + *(v92 + 5);
      v34 = UUID.uuidString.getter();
      v36 = v35;
      sub_1001B29F8(v23, type metadata accessor for CustodianHealthRecord);
      v37 = sub_10021145C(v34, v36, &v97);

      *(v28 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v20, v94, "CKShare not found for recordID: %s, zoneName: %s", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_1001B29F8(v0[10], type metadata accessor for CustodianHealthRecord);

      sub_1001B29F8(v23, type metadata accessor for CustodianHealthRecord);
    }

    v38 = 0;
  }

  v83 = v0[12];
  v82 = v0[13];
  v85 = v0[10];
  v84 = v0[11];
  v87 = v0[8];
  v86 = v0[9];
  v88 = v0[7];
  v89 = v0[5];

  v90 = v0[1];

  return (v90)(v38);
}

uint64_t sub_1001B142C(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for UUID();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for InheritanceHealthRecord();
  v1[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_1001B1564, 0, 0);
}

uint64_t sub_1001B1564()
{
  v28 = v0;
  if (qword_1003D7F28 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[2];
  v4 = type metadata accessor for Logger();
  v0[14] = sub_100008D04(v4, qword_1003FAA58);
  sub_1001B2990(v3, v2, type metadata accessor for InheritanceHealthRecord);
  sub_1001B2990(v3, v1, type metadata accessor for InheritanceHealthRecord);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[12];
  v9 = v0[13];
  if (v7)
  {
    v26 = v6;
    v10 = v0[5];
    v11 = v0[6];
    v13 = v0[3];
    v12 = v0[4];
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v14 = 136315394;
    (*(v12 + 16))(v10, v9 + *(v11 + 28), v13);
    sub_1001B29F8(v9, type metadata accessor for InheritanceHealthRecord);
    sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v10, v13);
    v18 = sub_10021145C(v15, v17, &v27);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = UUID.uuidString.getter();
    v21 = v20;
    sub_1001B29F8(v8, type metadata accessor for InheritanceHealthRecord);
    v22 = sub_10021145C(v19, v21, &v27);

    *(v14 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v5, v26, "Checking if the record is shared and accepted, recordID: %s, zoneName: %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1001B29F8(v0[13], type metadata accessor for InheritanceHealthRecord);

    sub_1001B29F8(v8, type metadata accessor for InheritanceHealthRecord);
  }

  v23 = swift_task_alloc();
  v0[15] = v23;
  *v23 = v0;
  v23[1] = sub_1001B18A8;
  v24 = v0[2];

  return sub_10013A278(v24);
}

uint64_t sub_1001B18A8(uint64_t a1)
{
  v3 = *(*v2 + 120);
  v4 = *v2;
  v4[16] = a1;

  if (v1)
  {
    v6 = v4[12];
    v5 = v4[13];
    v8 = v4[10];
    v7 = v4[11];
    v10 = v4[8];
    v9 = v4[9];
    v11 = v4[7];
    v12 = v4[5];

    v13 = v4[1];

    return v13(0);
  }

  else
  {

    return _swift_task_switch(sub_1001B1A54, 0, 0);
  }
}

uint64_t sub_1001B1A54()
{
  v91 = v0;
  v1 = v0[16];
  v2 = v0[14];
  if (v1)
  {
    sub_1001B2990(v0[2], v0[11], type metadata accessor for InheritanceHealthRecord);
    v3 = v1;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[11];
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v90 = v10;
      *v8 = 138412546;
      v11 = [v3 recordID];
      *(v8 + 4) = v11;
      *v9 = v11;
      *(v8 + 12) = 2080;
      v12 = UUID.uuidString.getter();
      v14 = v13;
      sub_1001B29F8(v7, type metadata accessor for InheritanceHealthRecord);
      v0 = v89;
      v15 = sub_10021145C(v12, v14, &v90);

      *(v8 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v4, v5, "Existing CKShare found, recordID: %@, zoneName: %s", v8, 0x16u);
      sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v10);
    }

    else
    {

      sub_1001B29F8(v7, type metadata accessor for InheritanceHealthRecord);
    }

    v37 = v0[14];
    v38 = v0[8];
    v39 = v0[2];
    v88 = v3;
    v40 = [v3 participants];
    sub_100016034(0, &unk_1003DEBE0, CKShareParticipant_ptr);
    v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001B2990(v39, v38, type metadata accessor for InheritanceHealthRecord);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    v44 = v41 >> 62;
    if (os_log_type_enabled(v42, v43))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v90 = v46;
      *v45 = 134218242;
      if (v44)
      {
        v47 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v47 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v48 = v0[8];
      *(v45 + 4) = v47;

      *(v45 + 12) = 2080;
      v49 = UUID.uuidString.getter();
      v51 = v50;
      sub_1001B29F8(v48, type metadata accessor for InheritanceHealthRecord);
      v0 = v89;
      v52 = sub_10021145C(v49, v51, &v90);

      *(v45 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v42, v43, "Found %ld participant(s) for zone %s", v45, 0x16u);
      sub_10000839C(v46);
    }

    else
    {
      v53 = v0[8];

      sub_1001B29F8(v53, type metadata accessor for InheritanceHealthRecord);
    }

    if (v44)
    {
      goto LABEL_31;
    }

    for (i = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v55 = 0;
      v0 = &selRef_setPath_;
      while (1)
      {
        if ((v41 & 0xC000000000000001) != 0)
        {
          v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v55 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v56 = *(v41 + 8 * v55 + 32);
        }

        v57 = v56;
        v58 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          break;
        }

        if ([v56 isCurrentUser])
        {
        }

        else
        {
          v59 = [v57 acceptanceStatus];

          if (v59 == 2)
          {
            v36 = 1;
LABEL_28:
            v0 = v89;
            goto LABEL_33;
          }
        }

        ++v55;
        if (v58 == i)
        {
          v36 = 0;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

    v36 = 0;
LABEL_33:
    v60 = v0[14];
    v61 = v0[7];
    v62 = v0[2];

    sub_1001B2990(v62, v61, type metadata accessor for InheritanceHealthRecord);
    v63 = v88;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.info.getter();

    v66 = os_log_type_enabled(v64, v65);
    v67 = v0[7];
    if (v66)
    {
      v68 = swift_slowAlloc();
      v69 = v36;
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v90 = v71;
      *v68 = 138412546;
      v72 = [v63 recordID];
      *(v68 + 4) = v72;
      *v70 = v72;
      *(v68 + 12) = 2080;
      v73 = UUID.uuidString.getter();
      v75 = v74;
      sub_1001B29F8(v67, type metadata accessor for InheritanceHealthRecord);
      v76 = sub_10021145C(v73, v75, &v90);

      *(v68 + 14) = v76;
      _os_log_impl(&_mh_execute_header, v64, v65, "CKShare accepted for recordID: %@, zoneName: %s", v68, 0x16u);
      sub_100008D3C(v70, &unk_1003D9140, &qword_10033E640);
      v36 = v69;
      v0 = v89;

      sub_10000839C(v71);
    }

    else
    {

      sub_1001B29F8(v67, type metadata accessor for InheritanceHealthRecord);
    }
  }

  else
  {
    v16 = v0[9];
    v17 = v0[2];
    sub_1001B2990(v17, v0[10], type metadata accessor for InheritanceHealthRecord);
    sub_1001B2990(v17, v16, type metadata accessor for InheritanceHealthRecord);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[9];
    v22 = v0[10];
    if (v20)
    {
      v87 = v19;
      v23 = v0[5];
      v24 = v0[6];
      v26 = v0[3];
      v25 = v0[4];
      v27 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *v27 = 136315394;
      (*(v25 + 2))(v23, v22 + *(v24 + 7), v26);
      sub_1001B29F8(v22, type metadata accessor for InheritanceHealthRecord);
      sub_1001B271C(&qword_1003D9150, &type metadata accessor for UUID);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v25 + 1))(v23, v26);
      v31 = sub_10021145C(v28, v30, &v90);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      v32 = UUID.uuidString.getter();
      v34 = v33;
      v0 = v89;
      sub_1001B29F8(v21, type metadata accessor for InheritanceHealthRecord);
      v35 = sub_10021145C(v32, v34, &v90);

      *(v27 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v18, v87, "CKShare not found for recordID: %s, zoneName: %s", v27, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_1001B29F8(v0[10], type metadata accessor for InheritanceHealthRecord);

      sub_1001B29F8(v21, type metadata accessor for InheritanceHealthRecord);
    }

    v36 = 0;
  }

  v78 = v0[12];
  v77 = v0[13];
  v80 = v0[10];
  v79 = v0[11];
  v82 = v0[8];
  v81 = v0[9];
  v83 = v0[7];
  v84 = v0[5];

  v85 = v0[1];

  return (v85)(v36);
}

uint64_t sub_1001B2390()
{
  v1 = (type metadata accessor for InheritanceInvitationRecord() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (type metadata accessor for InheritanceHealthRecord() - 8);
  v5 = (v2 + v3 + *(*v4 + 80)) & ~*(*v4 + 80);
  v6 = (*(*v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  v9 = v0 + v2;
  v10 = type metadata accessor for UUID();
  v11 = *(*(v10 - 8) + 8);
  v11(v9, v10);
  v12 = *(v9 + v1[7] + 8);

  v13 = *(v9 + v1[8] + 8);

  v14 = *(v9 + v1[9] + 8);

  v11(v9 + v1[11], v10);
  sub_100012324(*(v9 + v1[12]), *(v9 + v1[12] + 8));
  v15 = v0 + v5;
  v11(v0 + v5, v10);
  v16 = v4[7];
  v17 = type metadata accessor for Date();
  (*(*(v17 - 8) + 8))(v0 + v5 + v16, v17);
  sub_100012324(*(v15 + v4[8]), *(v15 + v4[8] + 8));
  v11(v0 + v5 + v4[9], v10);
  sub_100012324(*(v15 + v4[10]), *(v15 + v4[10] + 8));
  v18 = *(v0 + v6);
  swift_unknownObjectRelease();
  v19 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16);
}

uint64_t sub_1001B2604(uint64_t a1)
{
  v3 = *(type metadata accessor for InheritanceInvitationRecord() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for InheritanceHealthRecord() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  v11 = (v1 + v8);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v9);
  v15 = *(v1 + v9 + 8);

  return sub_1001AAAB0(a1, v10, v1 + v4, v1 + v7, v12, v13, v14, v15);
}

uint64_t sub_1001B271C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001B2764()
{
  v1 = (type metadata accessor for InheritanceInvitationRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v7 = *(v4 + v1[7] + 8);

  v8 = *(v4 + v1[8] + 8);

  v9 = *(v4 + v1[9] + 8);

  v6(v4 + v1[11], v5);
  sub_100012324(*(v4 + v1[12]), *(v4 + v1[12] + 8));

  return _swift_deallocObject(v0, v3 + 8);
}

void sub_1001B28B0(uint64_t a1)
{
  v3 = *(type metadata accessor for InheritanceInvitationRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1001AB8A8(a1, v1 + v4);
}

uint64_t sub_1001B294C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1001B2984(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1001ABE1C(a1, *(v1 + 16));
}

uint64_t sub_1001B2990(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001B29F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001B2A58(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  __chkstk_darwin(v10);
  v13 = &v35 - v12;
  v14 = sub_100005814(&unk_1003E1650, &unk_1003447C0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v35 - v17;
  if (a2)
  {
    if (qword_1003D7F70 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAB30);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v36 = a5;
      v23 = v22;
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = _convertErrorToNSError(_:)();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to fetch invitations %@", v23, 0xCu);
      sub_100008D3C(v24, &unk_1003D9140, &qword_10033E640);

      a5 = v36;
    }

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Continuing with preflight....", v28, 2u);
    }

    v29 = v37;
    (*(v37 + 16))(v13, a3 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__inheritanceStorage, v10);
    Dependency.wrappedValue.getter();
    (*(v29 + 8))(v13, v10);
    v30 = sub_1000080F8(v38, v39);
    v31 = swift_allocObject();
    v31[2] = a3;
    v31[3] = a4;
    v31[4] = a5;
    v32 = *v30;

    sub_100216650(sub_1001BC0CC, v31);
  }

  else
  {
    (*(v15 + 16))(v18, a3 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__inheritanceRecordCleaner, v14);
    Dependency.wrappedValue.getter();
    (*(v15 + 8))(v18, v14);
    v33 = *sub_1000080F8(v38, v39);

    sub_1001C4714(a1, v33, a3, a4, a5);
  }

  return sub_10000839C(v38);
}

uint64_t sub_1001B2EA8(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if ((a2 & 1) == 0)
  {
    return sub_1001B30A4(a1, a4, a5);
  }

  if (qword_1003D7F70 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAB30);

  sub_1000BCBF4(a1, 1);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  sub_1000399DC(a1, 1);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_10021145C(*(a3 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(a3 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v16);
    *(v11 + 12) = 2112;
    v14 = _convertErrorToNSError(_:)();
    *(v11 + 14) = v14;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s - error fetching inheritance records: %@", v11, 0x16u);
    sub_100008D3C(v12, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v13);
  }

  return a4(a1);
}

uint64_t sub_1001B30A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v6 = type metadata accessor for BeneficiaryInfoRecord();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v10 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v30 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100308AA8(_swiftEmptyArrayStorage);
  v14 = sub_1001B3E30(a1);
  v15 = *(a1 + 16);
  if (v15)
  {
    v31 = a3;
    v16 = *(v3 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_queue);
    v17 = *(v7 + 80);
    v18 = a1 + ((v17 + 32) & ~v17);
    v19 = *(v7 + 72);
    v36 = v17;
    v37 = v16;
    v34 = (v17 + 24) & ~v17;
    v35 = v19;
    v33 = (v8 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
    do
    {
      sub_100168334(v18, v12);
      sub_100168334(v12, v10);
      v21 = swift_allocObject();
      *(v21 + 16) = v3;
      sub_1001BC960(v10, v21 + v34);
      *(v21 + v33) = v14;
      *(v21 + v20) = v13;
      v22 = type metadata accessor for AsyncOperation();
      v23 = objc_allocWithZone(v22);
      v23[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] = 0;
      v24 = &v23[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_workBlock];
      *v24 = sub_1001BC9C4;
      v24[1] = v21;
      v39.receiver = v23;
      v39.super_class = v22;

      v25 = objc_msgSendSuper2(&v39, "init");
      [v37 addOperation:v25];

      sub_1001BCA80(v12);
      v18 += v35;
      --v15;
    }

    while (v15);

    a3 = v31;
  }

  else
  {
  }

  v26 = *(v3 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_queue);
  v27 = swift_allocObject();
  v27[2] = v13;
  v27[3] = v3;
  v27[4] = v32;
  v27[5] = a3;
  aBlock[4] = sub_1001BCB24;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003AD0A8;
  v28 = _Block_copy(aBlock);

  [v26 addBarrierBlock:v28];
  _Block_release(v28);
}

uint64_t sub_1001B33F0()
{
  v1 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__inheritanceStorage;
  v2 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__securityController;
  v4 = sub_100005814(&qword_1003E2D20, &unk_1003447E0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__urlBagProvider;
  v6 = sub_100005814(&qword_1003DB070, &qword_10033F9A0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__beneficiaryInfoVerificationProtocol;
  v8 = sub_100005814(&qword_1003E1270, &qword_1003446B8);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__inheritanceRecordCleaner;
  v10 = sub_100005814(&unk_1003E1650, &unk_1003447C0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__followUpController;
  v12 = sub_100005814(&qword_1003DB0C0, &unk_10033FC00);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__cdpController;
  v14 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__accountStore;
  v16 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__akAccountManager;
  v18 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__keychainManager;
  v20 = sub_100005814(&qword_1003E1670, &qword_1003447F0);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  v21 = *(v0 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_analyticsReporter);
  swift_unknownObjectRelease();

  v22 = *(v0 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8);

  return v0;
}

uint64_t sub_1001B373C()
{
  sub_1001B33F0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InheritancePreflightHealthCheck()
{
  result = qword_1003E1330;
  if (!qword_1003E1330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001B37E8()
{
  sub_10000DAB8(319, &qword_1003E1160, &unk_1003E01A0, &qword_1003443F0);
  if (v1 <= 0x3F)
  {
    v20 = *(v0 - 8) + 64;
    sub_10000DAB8(319, &unk_1003E1170, &unk_1003E0210, &qword_100343D90);
    if (v3 <= 0x3F)
    {
      v21 = *(v2 - 8) + 64;
      sub_10000DAB8(319, &qword_1003DB6F0, &qword_1003D7FD0, &unk_10033FB30);
      if (v5 <= 0x3F)
      {
        v22 = *(v4 - 8) + 64;
        sub_10000DAB8(319, &qword_1003E1190, &unk_1003E1198, &qword_100344650);
        if (v7 <= 0x3F)
        {
          v23 = *(v6 - 8) + 64;
          sub_10000DAB8(319, &unk_1003E1340, &unk_1003E03C0, &unk_100343DA0);
          if (v9 <= 0x3F)
          {
            v24 = *(v8 - 8) + 64;
            sub_10000DAB8(319, &qword_1003DB700, &unk_1003DACE0, &unk_10033F920);
            if (v11 <= 0x3F)
            {
              v25 = *(v10 - 8) + 64;
              sub_10000DAB8(319, qword_1003DB720, &unk_1003DACD0, &unk_10033F020);
              if (v13 <= 0x3F)
              {
                v26 = *(v12 - 8) + 64;
                sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
                if (v15 <= 0x3F)
                {
                  v27 = *(v14 - 8) + 64;
                  sub_10000DA14();
                  if (v17 <= 0x3F)
                  {
                    v28 = *(v16 - 8) + 64;
                    sub_10000DAB8(319, qword_1003E1350, &qword_1003E0400, &qword_100344870);
                    if (v19 <= 0x3F)
                    {
                      v29 = *(v18 - 8) + 64;
                      swift_updateClassMetadata2();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1001B3BB4()
{
  v1 = (*v0 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1001B3C2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  v7 = sub_100005814(a3, a4);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v13 - v10;
  (*(v8 + 16))(&v13 - v10, *v5 + *a5, v7);
  Dependency.wrappedValue.getter();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1001B3D2C()
{
  v1 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v7 - v4;
  (*(v2 + 16))(v7 - v4, *v0 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__akAccountManager, v1);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v5, v1);
  return v7[1];
}

void *sub_1001B3E30(uint64_t a1)
{
  v3 = sub_100005814(&qword_1003E1670, &qword_1003447F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v30 - v6;
  (*(v4 + 16))(&v30 - v6, v1 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__keychainManager, v3);
  Dependency.wrappedValue.getter();
  (*(v4 + 8))(v7, v3);
  v8 = v33;
  v9 = v34;
  sub_1000080F8(v32, v33);
  v10 = [objc_allocWithZone(AAFKeychainItemDescriptor) init];
  [v10 setItemClass:3];
  [v10 setUseDataProtection:2];
  v11 = String._bridgeToObjectiveC()();
  [v10 setAccessGroup:v11];

  v12 = (*(v9 + 16))(v10, v8, v9);
  sub_10000839C(v32);
  if (v12 && (v13 = [v12 value]) != 0)
  {
    v14 = v13;
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v31 = 0;
    sub_100016034(0, &qword_1003E1678, NSKeyedUnarchiver_ptr);
    sub_100005814(&unk_1003E1680, &qword_1003447F8);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10033E5C0;
    *(v18 + 32) = sub_100016034(0, &qword_1003D9250, NSString_ptr);
    *(v18 + 40) = sub_100016034(0, &unk_1003E1690, NSDictionary_ptr);
    static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

    if (v33)
    {
      if (swift_dynamicCast())
      {
        v25 = v30;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      sub_100008D3C(v32, &qword_1003D87C8, qword_100344800);
      v25 = 0;
    }

    v31 = v25;
    v23 = &_swiftEmptyDictionarySingleton;
    v32[0] = &_swiftEmptyDictionarySingleton;
    v26 = *(a1 + 16);
    if (v26)
    {
      v27 = *(type metadata accessor for BeneficiaryInfoRecord() - 8);
      v28 = a1 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
      v29 = *(v27 + 72);
      do
      {
        sub_1001B96D4(v28, &v31, v32);
        v28 += v29;
        --v26;
      }

      while (v26);
      v23 = v32[0];
    }

    sub_100012324(v15, v17);
  }

  else
  {
    if (qword_1003D7F70 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAB30);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Wrapped key data is nil.", v22, 2u);
    }

    v23 = sub_10030950C(_swiftEmptyArrayStorage);
  }

  return v23;
}

uint64_t sub_1001B467C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a6;
  v37 = a2;
  v35 = a1;
  v9 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for BeneficiaryInfoRecord();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  if (qword_1003D7F70 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAB30);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v34 = a5;
    v20 = a4;
    v21 = v19;
    v22 = swift_slowAlloc();
    v38 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_10021145C(*(a3 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(a3 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v38);
    _os_log_impl(&_mh_execute_header, v17, v18, "%s - Creating analytics event.", v21, 0xCu);
    sub_10000839C(v22);

    a4 = v20;
    a5 = v34;
  }

  sub_100168334(a4, &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v24 = (v15 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = a3;
  sub_1001BC960(&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v23);
  *(v26 + v24) = a5;
  v27 = v35;
  *(v26 + v25) = v36;
  v28 = (v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
  v29 = v37;
  *v28 = v27;
  v28[1] = v29;
  v30 = type metadata accessor for TaskPriority();
  (*(*(v30 - 8) + 56))(v12, 1, 1, v30);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = a3;
  v31[5] = sub_1001BCD50;
  v31[6] = v26;
  swift_retain_n();

  sub_1000BCD5C(0, 0, v12, &unk_1003447D8, v31);
}

uint64_t sub_1001B49EC(int *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v60 = a5;
  v15 = type metadata accessor for BeneficiaryInfoRecord();
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v18 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v54 - v20;
  if ((a2 & 1) == 0)
  {
    v54 = v19;
    v55 = a6;
    v58 = a7;
    v59 = a8;
    if (qword_1003D7F70 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100008D04(v31, qword_1003FAB30);
    sub_100168334(a4, v21);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    v34 = os_log_type_enabled(v32, v33);
    v56 = a3;
    v57 = a1;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v35 = 136315394;
      *(v35 + 4) = sub_10021145C(*(a3 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(a3 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v61);
      *(v35 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1001BD1B8(&qword_1003D9150, &type metadata accessor for UUID);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      sub_1001BCA80(v21);
      v39 = sub_10021145C(v36, v38, &v61);

      *(v35 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v32, v33, "%s - Event created. Starting Preflight for %s", v35, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1001BCA80(v21);
    }

    v40 = UUID.uuidString.getter();
    v43 = v59;
    v42 = v60;
    v44 = v58;
    if (*(v60 + 16))
    {
      v45 = sub_1003084DC(v40, v41);
      v47 = v46;

      if (v47)
      {
        v48 = (*(v42 + 56) + 16 * v45);
        v49 = *v48;
        v50 = v48[1];
        sub_100015D6C(*v48, v50);
LABEL_17:
        sub_100168334(a4, v18);
        v51 = (*(v54 + 80) + 24) & ~*(v54 + 80);
        v52 = swift_allocObject();
        *(v52 + 16) = v55;
        sub_1001BC960(v18, v52 + v51);
        v53 = (v52 + ((v16 + v51 + 7) & 0xFFFFFFFFFFFFFFF8));
        *v53 = v44;
        v53[1] = v43;

        sub_1001B523C(a4, v49, v50, v57, sub_1001BD114, v52);
        sub_100015D58(v49, v50);
      }
    }

    else
    {
    }

    v49 = 0;
    v50 = 0xF000000000000000;
    goto LABEL_17;
  }

  if (qword_1003D7F70 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100008D04(v22, qword_1003FAB30);
  v23 = a1;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = v23;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 4) = v29;
    *v27 = v29;
    _os_log_impl(&_mh_execute_header, v24, v25, "Preflight event creation failed with error: %@", v26, 0xCu);
    sub_100008D3C(v27, &unk_1003D9140, &qword_10033E640);
  }

  return a7();
}

uint64_t sub_1001B4EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a1)
  {
    v6 = a1;
    v7 = (a2 + 16);
    swift_errorRetain();
    v8 = _convertErrorToNSError(_:)();
    v9 = [v8 aa_partialErrorsByName];

    if (v9)
    {
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v10 + 16))
      {
        __chkstk_darwin(v11);
        v24[2] = v7;
        v24[3] = a3;
        sub_10001CF50(sub_1001BDFC4, v24, v10);

        return a4(a1);
      }
    }

    v26 = 0;
    v27 = 0xE000000000000000;
    v12 = (a3 + *(type metadata accessor for BeneficiaryInfoRecord() + 20));
    v13 = v12[1];
    if (v13)
    {
      v14 = *v12;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v15 = v12[1];
    }

    else
    {
      v15 = 0xE000000000000000;
    }

    v16._countAndFlagsBits = v14;
    v16._object = v15;
    String.append(_:)(v16);

    v17._countAndFlagsBits = 58;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    v18._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v18);

    v19 = v26;
    v20 = v27;
    swift_beginAccess();
    swift_errorRetain();
    v21 = *v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v7;
    *v7 = 0x8000000000000000;
    sub_1002CEFC4(v6, v19, v20, isUniquelyReferenced_nonNull_native);

    *v7 = v25;
    swift_endAccess();
  }

  return a4(a1);
}

uint64_t sub_1001B50F0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = (a3 + *(type metadata accessor for BeneficiaryInfoRecord() + 20));
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
  }

  else
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v7[1];
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  v11._countAndFlagsBits = v9;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 58;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 59;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = v4;
  v15._object = v5;
  String.append(_:)(v15);
  swift_beginAccess();
  swift_errorRetain();
  v16 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *a2;
  *a2 = 0x8000000000000000;
  sub_1002CEFC4(v6, 0, 0xE000000000000000, isUniquelyReferenced_nonNull_native);

  *a2 = v19;
  return swift_endAccess();
}

uint64_t sub_1001B523C(uint64_t a1, uint64_t a2, unint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v202 = a6;
  v198 = a5;
  v194 = a4;
  v199 = a3;
  v188 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  v187 = *(v188 - 8);
  v10 = *(v187 + 64);
  __chkstk_darwin(v188);
  v186 = &v176 - v11;
  v185 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v184 = *(v185 - 8);
  v12 = *(v184 + 64);
  __chkstk_darwin(v185);
  v183 = &v176 - v13;
  v191 = sub_100005814(&qword_1003E1270, &qword_1003446B8);
  v190 = *(v191 - 8);
  v14 = v190[8];
  __chkstk_darwin(v191);
  v189 = &v176 - v15;
  v200 = type metadata accessor for BeneficiaryInfoRecord();
  v177 = *(v200 - 1);
  v16 = *(v177 + 64);
  v17 = __chkstk_darwin(v200);
  v19 = &v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = v18;
  __chkstk_darwin(v17);
  v179 = &v176 - v20;
  v197 = sub_100005814(&qword_1003E2D20, &unk_1003447E0);
  v196 = *(v197 - 8);
  v21 = *(v196 + 64);
  __chkstk_darwin(v197);
  v195 = &v176 - v22;
  v181 = sub_100005814(&qword_1003DB070, &qword_10033F9A0);
  v192 = *(v181 - 8);
  v23 = *(v192 + 64);
  __chkstk_darwin(v181);
  v180 = &v176 - v24;
  v25 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v176 - v27;
  v29 = type metadata accessor for UUID();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v176 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F70 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  v35 = sub_100008D04(v34, qword_1003FAB30);

  v193 = v35;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.debug.getter();

  v38 = os_log_type_enabled(v36, v37);
  v201 = a1;
  v182 = a2;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v207[0] = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_10021145C(*(v7 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v7 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), v207);
    _os_log_impl(&_mh_execute_header, v36, v37, "%s - Starting Preflight!", v39, 0xCu);
    sub_10000839C(v40);
    a1 = v201;
  }

  v41 = (a1 + v200[7]);
  v42 = *v41;
  v43 = v41[1];
  sub_100015D6C(*v41, v43);
  sub_1001E92AC(v42, v43, v207);
  if (v207[3])
  {
    if (v199 >> 60 == 15)
    {
      sub_100168334(a1, v19);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        aBlock[0] = v47;
        *v46 = 136315138;
        v48 = sub_1001E6794();
        v50 = v49;
        sub_1001BCA80(v19);
        v51 = sub_10021145C(v48, v50, aBlock);

        *(v46 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v44, v45, "Wrapped key is nil for beneficiary: %s", v46, 0xCu);
        sub_10000839C(v47);
      }

      else
      {

        sub_1001BCA80(v19);
      }

      type metadata accessor for InheritanceError(0);
      v205 = 2105;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_1001BD1B8(&qword_1003D8040, type metadata accessor for InheritanceError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v92 = aBlock[0];
      swift_retain_n();
      v93 = v194;
      swift_retain_n();
      v200 = v92;
      v94 = v92;
      v95 = v93;
      v194 = v94;
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v199 = v95;
      [v95 setObject:isa forKeyedSubscript:kAAFDidSucceed];

      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        aBlock[0] = v100;
        *v99 = 136315138;
        *(v99 + 4) = sub_10021145C(*(v7 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v7 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), aBlock);
        _os_log_impl(&_mh_execute_header, v97, v98, "%s - Verifying claim code", v99, 0xCu);
        sub_10000839C(v100);
      }

      v101 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__beneficiaryInfoVerificationProtocol;
      v102 = v190;
      v193 = v190[2];
      v103 = v189;
      v104 = v191;
      v193(v189, v7 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__beneficiaryInfoVerificationProtocol, v191);
      Dependency.wrappedValue.getter();
      v105 = v102[1];
      v105(v103, v104);
      v106 = v184;
      v107 = v183;
      v108 = v185;
      (*(v184 + 16))(v183, v7 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__accountStore, v185);
      Dependency.wrappedValue.getter();
      (*(v106 + 8))(v107, v108);
      v109 = v187;
      v110 = v186;
      v111 = v188;
      (*(v187 + 16))(v186, v7 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__akAccountManager, v188);
      Dependency.wrappedValue.getter();
      (*(v109 + 8))(v110, v111);
      v112 = v204;
      v113 = sub_1000080F8(&v205, v206);
      v114 = sub_1001AD018(*v113, v112);

      sub_10000839C(&v205);
      sub_10000839C(aBlock);
      v193(v103, v7 + v101, v104);
      Dependency.wrappedValue.getter();
      v105(v103, v104);
      v115 = v196;
      v116 = v195;
      v117 = v197;
      (*(v196 + 16))(v195, v7 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__securityController, v197);
      Dependency.wrappedValue.getter();
      (*(v115 + 8))(v116, v117);
      v118 = v205;
      swift_retain_n();
      v119 = v199;
      v120 = v194;
      v121 = v119;
      v122 = v202;

      v123 = v120;
      sub_100168644(v201, v114, v118, v200, v121, v7, v7, v121, v198, v122, v123);
      swift_unknownObjectRelease();

      sub_10000839C(aBlock);
    }

    else
    {
      v191 = v7;
      v189 = v207[0];
      v188 = v207[1];
      v187 = v207[5];
      sub_100012D04(a1 + v200[11], v28, &qword_1003D8B60, &unk_10033F210);
      v90 = *(v30 + 48);
      if (v90(v28, 1, v29) == 1)
      {
        (*(v30 + 16))(v33, a1, v29);
        v91 = v90(v28, 1, v29);
        sub_100015D6C(v182, v199);
        if (v91 != 1)
        {
          sub_100008D3C(v28, &qword_1003D8B60, &unk_10033F210);
        }
      }

      else
      {
        (*(v30 + 32))(v33, v28, v29);
        sub_100015D6C(v182, v199);
      }

      v124 = objc_allocWithZone(AKInheritanceAccessKey);
      v125 = UUID._bridgeToObjectiveC()().super.isa;
      v126 = [v124 initWithBeneficiairyIdentifier:v125];

      (*(v30 + 8))(v33, v29);
      v127 = Data._bridgeToObjectiveC()().super.isa;
      [v126 setWrappedKeyData:v127];

      v128 = v189;
      v129 = v188;
      v130 = Data._bridgeToObjectiveC()().super.isa;
      v190 = v126;
      [v126 setWrappingKeyData:v130];

      sub_100015D6C(v128, v129);

      v131 = Logger.logObject.getter();
      v132 = static os_log_type_t.debug.getter();
      sub_100008D3C(v207, &unk_1003E1660, &qword_100344608);
      if (os_log_type_enabled(v131, v132))
      {
        v133 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        aBlock[0] = v134;
        *v133 = 136315138;
        v135 = Data.base64EncodedString(options:)(0);
        v136 = sub_10021145C(v135._countAndFlagsBits, v135._object, aBlock);

        *(v133 + 4) = v136;
        a1 = v201;
        _os_log_impl(&_mh_execute_header, v131, v132, "wrappingKey:%s", v133, 0xCu);
        sub_10000839C(v134);
      }

      v137 = v191;
      v138 = v192;
      v139 = a1 + v200[13];
      if (*(v139 + 8))
      {
        v140 = 0;
      }

      else
      {
        v140 = *v139;
      }

      v141 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__urlBagProvider;
      v142 = *(v192 + 16);
      v143 = v180;
      v144 = v181;
      v142(v180, v191 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__urlBagProvider, v181);
      Dependency.wrappedValue.getter();
      v145 = *(v138 + 8);
      v145(v143, v144);
      v146 = objc_opt_self();
      v147 = [v146 maxRepairCountForBeneficiaries];
      sub_10000839C(aBlock);
      v192 = v138 + 8;
      v191 = v140;
      if (v147 < 1 || v140 >= v147)
      {
        LODWORD(v200) = 0;
      }

      else
      {
        v148 = v180;
        v149 = v181;
        v142(v180, v137 + v141, v181);
        Dependency.wrappedValue.getter();
        v145(v148, v149);
        LODWORD(v200) = [v146 canRepairBeneficiary];
        sub_10000839C(aBlock);
      }

      v150 = Logger.logObject.getter();
      v151 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v150, v151))
      {
        v152 = swift_slowAlloc();
        *v152 = 134218496;
        *(v152 + 4) = v191;
        *(v152 + 12) = 2048;
        v153 = v137 + v141;
        v154 = v180;
        v155 = v181;
        v142(v180, v153, v181);
        Dependency.wrappedValue.getter();
        v145(v154, v155);
        v156 = [v146 maxRepairCountForBeneficiaries];
        sub_10000839C(aBlock);
        *(v152 + 14) = v156;

        *(v152 + 22) = 1024;
        *(v152 + 24) = v200;
        _os_log_impl(&_mh_execute_header, v150, v151, "Beneficiary repair count  %lu < IdMS maxRepairCount %ld. Can repair beneficiaries: %{BOOL}d", v152, 0x1Cu);
      }

      else
      {
      }

      v157 = v196;
      v158 = v195;
      v159 = v197;
      (*(v196 + 16))(v195, v137 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__securityController, v197);
      Dependency.wrappedValue.getter();
      (*(v157 + 8))(v158, v159);
      v160 = aBlock[0];
      v161 = v201;
      v162 = UUID._bridgeToObjectiveC()().super.isa;
      v163 = v179;
      sub_100168334(v161, v179);
      v164 = (*(v177 + 80) + 24) & ~*(v177 + 80);
      v165 = v164 + v178;
      v166 = (v164 + v178) & 0xFFFFFFFFFFFFFFF8;
      v167 = (v166 + 23) & 0xFFFFFFFFFFFFFFF8;
      v168 = swift_allocObject();
      *(v168 + 16) = v137;
      sub_1001BC960(v163, v168 + v164);
      *(v168 + v165) = v200;
      v169 = v194;
      *(v168 + v166 + 8) = v194;
      v170 = (v168 + v167);
      v171 = v202;
      *v170 = v198;
      v170[1] = v171;
      v172 = v190;
      *(v168 + ((v167 + 23) & 0xFFFFFFFFFFFFFFF8)) = v190;
      aBlock[4] = sub_1001BD408;
      aBlock[5] = v168;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10020E828;
      aBlock[3] = &unk_1003AD170;
      v173 = _Block_copy(aBlock);

      v174 = v169;

      v175 = v172;

      [v160 preflightInheritanceRecoveryForBeneficiaryID:v162 accessKey:v175 completion:v173];
      _Block_release(v173);

      swift_unknownObjectRelease();
      sub_100015D58(v182, v199);
    }

    return sub_100008D3C(v207, &unk_1003E1660, &qword_100344608);
  }

  else
  {

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      aBlock[0] = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_10021145C(*(v7 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v7 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), aBlock);
      _os_log_impl(&_mh_execute_header, v52, v53, "%s - Error creating InheritanceAccessKeyRecord", v54, 0xCu);
      sub_10000839C(v55);
    }

    type metadata accessor for InheritanceError(0);
    v205 = 2;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001BD1B8(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v56 = aBlock[0];
    swift_retain_n();
    v57 = v194;
    swift_retain_n();
    v200 = v56;
    v58 = v56;
    v59 = v57;
    v194 = v58;
    v60 = Bool._bridgeToObjectiveC()().super.super.isa;
    v199 = v59;
    [v59 setObject:v60 forKeyedSubscript:kAAFDidSucceed];

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      aBlock[0] = v64;
      *v63 = 136315138;
      *(v63 + 4) = sub_10021145C(*(v7 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v7 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), aBlock);
      _os_log_impl(&_mh_execute_header, v61, v62, "%s - Verifying claim code", v63, 0xCu);
      sub_10000839C(v64);
    }

    v65 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__beneficiaryInfoVerificationProtocol;
    v66 = v190;
    v193 = v190[2];
    v67 = v189;
    v68 = v191;
    v193(v189, v7 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__beneficiaryInfoVerificationProtocol, v191);
    Dependency.wrappedValue.getter();
    v69 = v66[1];
    v69(v67, v68);
    v70 = v184;
    v71 = v183;
    v72 = v185;
    (*(v184 + 16))(v183, v7 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__accountStore, v185);
    Dependency.wrappedValue.getter();
    (*(v70 + 8))(v71, v72);
    v73 = v7;
    v74 = v187;
    v75 = v186;
    v76 = v188;
    (*(v187 + 16))(v186, v73 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__akAccountManager, v188);
    Dependency.wrappedValue.getter();
    (*(v74 + 8))(v75, v76);
    v77 = v204;
    v78 = sub_1000080F8(&v205, v206);
    v79 = sub_1001AD018(*v78, v77);

    sub_10000839C(&v205);
    sub_10000839C(aBlock);
    v193(v67, v73 + v65, v68);
    Dependency.wrappedValue.getter();
    v69(v67, v68);
    v80 = v196;
    v81 = v195;
    v82 = v197;
    (*(v196 + 16))(v195, v73 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__securityController, v197);
    Dependency.wrappedValue.getter();
    (*(v80 + 8))(v81, v82);
    v83 = v205;
    swift_retain_n();
    v84 = v199;
    v85 = v194;
    v86 = v84;
    v87 = v202;

    v88 = v85;
    sub_1001685AC(v201, v79, v83, v200, v86, v73, v73, v86, v198, v87, v88);
    swift_unknownObjectRelease();

    sub_10000839C(aBlock);
  }
}

void sub_1001B6B20(uint64_t a1, uint64_t a2, void (*a3)(id))
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (*(v6 + 16))
  {
    type metadata accessor for AAError(0);
    sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033EB30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v8;
    *(inited + 72) = sub_100005814(&unk_1003D91D0, &unk_10033F9C0);
    *(inited + 48) = v6;

    sub_100308978(inited);
    swift_setDeallocating();
    sub_100008D3C(inited + 32, &qword_1003DB0B0, &unk_10033E710);
    sub_1001BD1B8(&qword_1003D8370, type metadata accessor for AAError);
    _BridgedStoredNSError.init(_:userInfo:)();
    if (qword_1003D7F70 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAB30);

    v10 = v23;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v13 = 136315394;
      *(v13 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v23);
      *(v13 + 12) = 2112;
      v16 = _convertErrorToNSError(_:)();
      *(v13 + 14) = v16;
      *v14 = v16;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s - failed: %@", v13, 0x16u);
      sub_100008D3C(v14, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v15);
    }

    v17 = v10;
    a3(v10);
  }

  else
  {
    if (qword_1003D7F70 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAB30);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v23);
      _os_log_impl(&_mh_execute_header, v19, v20, "%s - successful.", v21, 0xCu);
      sub_10000839C(v22);
    }

    a3(0);
  }
}

void sub_1001B6F60(uint64_t a1, uint64_t a2, void *a3, int a4, void *a5, uint64_t (*a6)(void), void *a7, void (*a8)(void, void, void))
{
  v158 = a7;
  v159 = a3;
  v153 = a5;
  v154 = a6;
  LODWORD(v9) = a4;
  v149 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  v148 = *(v149 - 8);
  v12 = *(v148 + 64);
  __chkstk_darwin(v149);
  v147 = &v137 - v13;
  v146 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v145 = *(v146 - 8);
  v14 = *(v145 + 64);
  __chkstk_darwin(v146);
  v144 = &v137 - v15;
  v16 = sub_100005814(&qword_1003E1270, &qword_1003446B8);
  v151 = *(v16 - 8);
  v152 = v16;
  v17 = *(v151 + 64);
  __chkstk_darwin(v16);
  v150 = &v137 - v18;
  v19 = sub_100005814(&qword_1003E2D20, &unk_1003447E0);
  v156 = *(v19 - 8);
  v157 = v19;
  v20 = *(v156 + 64);
  __chkstk_darwin(v19);
  v155 = &v137 - v21;
  v22 = type metadata accessor for BeneficiaryInfoRecord();
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v25 = &v137 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v137 - v27;
  __chkstk_darwin(v26);
  v31 = &v137 - v30;
  if (a1)
  {
    v142 = v29;
    v143 = a8;
    swift_errorRetain();
    if (qword_1003D7F70 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100008D04(v32, qword_1003FAB30);
    sub_100168334(v159, v31);
    swift_errorRetain();

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      LODWORD(v140) = v9;
      v9 = v35;
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      aBlock[0] = v138;
      *v9 = 136315650;
      *(v9 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), aBlock);
      *(v9 + 12) = 2080;
      type metadata accessor for UUID();
      v139 = a2;
      v36 = a1;
      v37 = v28;
      sub_1001BD1B8(&qword_1003D9150, &type metadata accessor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      sub_1001BCA80(v31);
      v41 = sub_10021145C(v38, v40, aBlock);
      v28 = v37;
      a1 = v36;
      a2 = v139;

      *(v9 + 14) = v41;
      *(v9 + 22) = 2112;
      v42 = _convertErrorToNSError(_:)();
      *(v9 + 24) = v42;
      v43 = v137;
      *v137 = v42;
      _os_log_impl(&_mh_execute_header, v33, v34, "%s - failed for beneficiaryID %s    error: %@", v9, 0x20u);
      sub_100008D3C(v43, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();

      LOBYTE(v9) = v140;
    }

    else
    {

      sub_1001BCA80(v31);
    }

    v52 = _convertErrorToNSError(_:)();
    if ([v52 code] == 32 || objc_msgSend(v52, "code") == 34)
    {
      if (v9)
      {
        swift_errorRetain();
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          *v55 = 138412290;
          swift_errorRetain();
          v57 = _swift_stdlib_bridgeErrorToNSError();
          *(v55 + 4) = v57;
          *v56 = v57;
          _os_log_impl(&_mh_execute_header, v53, v54, "Recreating PeerID due to preflight error: %@", v55, 0xCu);
          sub_100008D3C(v56, &unk_1003D9140, &qword_10033E640);
        }

        sub_100168334(v159, v28);
        v58 = (*(v142 + 80) + 40) & ~*(v142 + 80);
        v59 = (v23 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
        v60 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
        v61 = swift_allocObject();
        v62 = v158;
        v61[2] = v154;
        v61[3] = v62;
        v61[4] = a2;
        sub_1001BC960(v28, v61 + v58);
        v63 = v143;
        *(v61 + v59) = v143;
        v64 = v153;
        *(v61 + v60) = v153;
        v65 = v155;
        v66 = v156;
        v67 = v157;
        (*(v156 + 16))(v155, a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__securityController, v157);

        v68 = v63;
        v69 = v64;
        Dependency.wrappedValue.getter();
        (*(v66 + 8))(v65, v67);
        v70 = aBlock[0];
        v71 = swift_allocObject();
        *(v71 + 16) = sub_1001BD6C4;
        *(v71 + 24) = v61;
        aBlock[4] = sub_1001BD7BC;
        aBlock[5] = v71;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100015858;
        aBlock[3] = &unk_1003AD1E8;
        v72 = _Block_copy(aBlock);

        [v70 recreateInheritanceKeyWithAccessKey:v68 completion:v72];
        _Block_release(v72);
        swift_unknownObjectRelease();

        return;
      }
    }

    else if (v9)
    {
      swift_errorRetain();
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        *v102 = 138412290;
        swift_errorRetain();
        v104 = _swift_stdlib_bridgeErrorToNSError();
        *(v102 + 4) = v104;
        *v103 = v104;
        _os_log_impl(&_mh_execute_header, v100, v101, "Preflight error other than error 32 or error 34. Error: %@", v102, 0xCu);
        sub_100008D3C(v103, &unk_1003D9140, &qword_10033E640);

LABEL_26:
      }

LABEL_27:

      swift_errorRetain();

      v107 = v153;
      swift_errorRetain();

      v108 = v107;
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v153 = v108;
      [v108 setObject:isa forKeyedSubscript:kAAFDidSucceed];

      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.debug.getter();

      v112 = os_log_type_enabled(v110, v111);
      v141 = a1;
      v140 = v52;
      if (v112)
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        aBlock[0] = v114;
        *v113 = 136315138;
        *(v113 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), aBlock);
        _os_log_impl(&_mh_execute_header, v110, v111, "%s - Verifying claim code", v113, 0xCu);
        sub_10000839C(v114);
      }

      v115 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__beneficiaryInfoVerificationProtocol;
      v116 = v151;
      v143 = *(v151 + 16);
      v117 = v150;
      v118 = v152;
      v143(v150, a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__beneficiaryInfoVerificationProtocol, v152);
      Dependency.wrappedValue.getter();
      v119 = *(v116 + 8);
      v119(v117, v118);
      v120 = v145;
      v121 = v144;
      v122 = v146;
      (*(v145 + 16))(v144, a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__accountStore, v146);
      Dependency.wrappedValue.getter();
      (*(v120 + 8))(v121, v122);
      v123 = v148;
      v124 = v147;
      v125 = v149;
      (*(v148 + 16))(v147, a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__akAccountManager, v149);
      Dependency.wrappedValue.getter();
      (*(v123 + 8))(v124, v125);
      v126 = v161;
      v127 = sub_1000080F8(v162, v163);
      v128 = sub_1001AD018(*v127, v126);

      sub_10000839C(v162);
      sub_10000839C(aBlock);
      v143(v117, a2 + v115, v118);
      Dependency.wrappedValue.getter();
      v119(v117, v118);
      v129 = v155;
      v130 = v156;
      v131 = v157;
      (*(v156 + 16))(v155, a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__securityController, v157);
      Dependency.wrappedValue.getter();
      (*(v130 + 8))(v129, v131);
      v132 = v162[0];
      v133 = v141;
      swift_errorRetain();

      v134 = v153;
      swift_errorRetain();

      v135 = v158;

      v136 = v134;
      sub_10016A0E0(v159, v128, v132, v133, v136, a2, a2, v136, v154, v135, v133);

      swift_unknownObjectRelease();

      sub_10000839C(aBlock);

      return;
    }

    v100 = Logger.logObject.getter();
    v105 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v100, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&_mh_execute_header, v100, v105, "Feature flag turned off, not recreating new access key.", v106, 2u);
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (qword_1003D7F70 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_100008D04(v44, qword_1003FAB30);
  sub_100168334(v159, v25);

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v47 = 136315394;
    *(v47 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), aBlock);
    *(v47 + 12) = 2080;
    type metadata accessor for UUID();
    sub_1001BD1B8(&qword_1003D9150, &type metadata accessor for UUID);
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v49;
    sub_1001BCA80(v25);
    v51 = sub_10021145C(v48, v50, aBlock);

    *(v47 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v45, v46, "%s - succeeded for beneficiaryID %s", v47, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1001BCA80(v25);
  }

  swift_retain_n();
  swift_retain_n();
  v73 = v153;
  v74 = Bool._bridgeToObjectiveC()().super.super.isa;
  v153 = v73;
  [v73 setObject:v74 forKeyedSubscript:kAAFDidSucceed];

  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    aBlock[0] = v78;
    *v77 = 136315138;
    *(v77 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), aBlock);
    _os_log_impl(&_mh_execute_header, v75, v76, "%s - Verifying claim code", v77, 0xCu);
    sub_10000839C(v78);
  }

  v79 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__beneficiaryInfoVerificationProtocol;
  v80 = v151;
  v143 = *(v151 + 16);
  v81 = v150;
  v82 = v152;
  v143(v150, a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__beneficiaryInfoVerificationProtocol, v152);
  Dependency.wrappedValue.getter();
  v83 = *(v80 + 8);
  v83(v81, v82);
  v84 = v145;
  v85 = v144;
  v86 = v146;
  (*(v145 + 16))(v144, a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__accountStore, v146);
  Dependency.wrappedValue.getter();
  (*(v84 + 8))(v85, v86);
  v87 = v148;
  v88 = v147;
  v89 = v149;
  (*(v148 + 16))(v147, a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__akAccountManager, v149);
  Dependency.wrappedValue.getter();
  (*(v87 + 8))(v88, v89);
  v90 = v161;
  v91 = sub_1000080F8(v162, v163);
  v92 = sub_1001AD018(*v91, v90);

  sub_10000839C(v162);
  sub_10000839C(aBlock);
  v143(v81, a2 + v79, v82);
  Dependency.wrappedValue.getter();
  v83(v81, v82);
  v93 = v155;
  v94 = v156;
  v95 = v157;
  (*(v156 + 16))(v155, a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__securityController, v157);
  Dependency.wrappedValue.getter();
  (*(v94 + 8))(v93, v95);
  v96 = v162[0];
  swift_retain_n();
  v97 = v153;
  v98 = v158;

  v99 = v97;
  sub_10016A04C(v159, v92, v96, 0, v99, a2, a2, v99, v154, v98);
  swift_unknownObjectRelease();

  sub_10000839C(aBlock);
}

uint64_t sub_1001B8344(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, const char *a6)
{
  if (qword_1003D7F70 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAB30);

  v12 = a2;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_10021145C(*(a1 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(a1 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v25);
    *(v15 + 12) = 2080;
    v16 = [v12 debugDescription];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = a3;
    v19 = a6;
    v21 = v20;

    v22 = sub_10021145C(v17, v21, &v25);

    *(v15 + 14) = v22;
    v23 = v19;
    a3 = v18;
    _os_log_impl(&_mh_execute_header, v13, v14, v23, v15, 0x16u);
    swift_arrayDestroy();
  }

  return a3(a5);
}

uint64_t sub_1001B8548(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v78 = a8;
  v79 = a7;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for BeneficiaryInfoRecord();
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v22 = __chkstk_darwin(v21);
  __chkstk_darwin(v22);
  if (a2)
  {
    swift_errorRetain();
    a3(a2);
  }

  else
  {
    v72 = v15;
    v73 = v18;
    v74 = v14;
    v75 = a3;
    v76 = a4;
    v77 = a6;
    if (a1)
    {
      v28 = &v65 - v23;
      v69 = v25;
      v70 = v26;
      v71 = v24;
      v29 = qword_1003D7F70;
      v30 = a1;
      if (v29 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_100008D04(v31, qword_1003FAB30);
      sub_100168334(v77, v28);
      v32 = v30;
      v33 = a5;

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();

      v36 = os_log_type_enabled(v34, v35);
      v38 = v73;
      v37 = v74;
      v68 = v32;
      if (v36)
      {
        v39 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v80 = v67;
        *v39 = 136315650;
        *(v39 + 4) = sub_10021145C(*(v33 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v33 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v80);
        *(v39 + 12) = 2080;
        sub_1001BD1B8(&qword_1003D9150, &type metadata accessor for UUID);
        v65 = v34;
        v66 = v35;
        v40 = dispatch thunk of CustomStringConvertible.description.getter();
        v42 = v41;
        sub_1001BCA80(v28);
        v43 = sub_10021145C(v40, v42, &v80);

        *(v39 + 14) = v43;
        *(v39 + 22) = 2080;
        v44 = [v32 beneficiaryID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        v47 = v46;
        (*(v72 + 8))(v38, v37);
        v48 = sub_10021145C(v45, v47, &v80);

        *(v39 + 24) = v48;
        v49 = v65;
        _os_log_impl(&_mh_execute_header, v65, v66, "%s - successfully recreated inheritanceKey for beneficiaryID %s and new OTPeerID %s", v39, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1001BCA80(v28);
      }

      v50 = v33;
      v52 = v75;
      v51 = v76;
      v53 = v77;
      v54 = v69;
      sub_100168334(v77, v69);
      v55 = (*(v70 + 80) + 40) & ~*(v70 + 80);
      v56 = (v20 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
      v57 = swift_allocObject();
      v57[2] = v50;
      v57[3] = v52;
      v57[4] = v51;
      sub_1001BC960(v54, v57 + v55);
      v58 = v78;
      *(v57 + v56) = v78;
      v59 = v53;
      v60 = v71;
      sub_100168334(v59, v71);
      v61 = swift_allocObject();
      v61[2] = v50;
      v61[3] = sub_1001BD7C8;
      v61[4] = v57;
      sub_1001BC960(v60, v61 + v55);
      v62 = v68;
      *(v61 + v56) = v68;
      swift_retain_n();
      v63 = v62;

      v64 = v58;

      sub_1001BB15C(v79, v63, sub_1001BD9CC);
    }

    else
    {
      return (v75)(0);
    }
  }
}

uint64_t sub_1001B8AEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void (*a6)(void, void, void))
{
  v88 = a6;
  v93 = a5;
  v94 = a2;
  v95 = a3;
  v96 = a4;
  v7 = sub_100005814(&qword_1003E2D20, &unk_1003447E0);
  v91 = *(v7 - 8);
  v92 = v7;
  v8 = *(v91 + 64);
  __chkstk_darwin(v7);
  v10 = &v79 - v9;
  v11 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  v90 = *(v11 - 8);
  v12 = *(v90 + 64);
  __chkstk_darwin(v11);
  v14 = &v79 - v13;
  v15 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v89 = *(v15 - 8);
  v16 = v89[8];
  __chkstk_darwin(v15);
  v18 = &v79 - v17;
  v19 = sub_100005814(&qword_1003E1270, &qword_1003446B8);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v79 - v22;
  v24 = type metadata accessor for BeneficiaryInfoRecord();
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v28 = v95;
    swift_errorRetain();
    if (qword_1003D7F70 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAB30);
    v30 = v94;

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v99[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_10021145C(*(v30 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v30 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), v99);
      _os_log_impl(&_mh_execute_header, v31, v32, "  %s - failed to verify and update BeneficiaryInfoRecord", v33, 0xCu);
      sub_10000839C(v34);
    }

    swift_errorRetain();
    v28(a1);
  }

  else
  {
    v36 = v93;
    v82 = v18;
    v83 = v15;
    v84 = v23;
    v85 = v14;
    v86 = v20;
    v87 = v10;
    if (qword_1003D7F70 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100008D04(v37, qword_1003FAB30);
    sub_100168334(v36, v27);
    v38 = v94;

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();

    v41 = os_log_type_enabled(v39, v40);
    v81 = v11;
    v80 = v19;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v99[0] = swift_slowAlloc();
      *v42 = 136315394;
      *(v42 + 4) = sub_10021145C(*(v38 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v38 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), v99);
      *(v42 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1001BD1B8(&qword_1003D9150, &type metadata accessor for UUID);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      sub_1001BCA80(v27);
      v46 = sub_10021145C(v43, v45, v99);

      *(v42 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v39, v40, "%s - succeeded for beneficiaryID %s", v42, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1001BCA80(v27);
    }

    v47 = v84;
    v48 = v88;
    v49 = v89;
    v50 = v82;
    swift_retain_n();
    v51 = v48;
    swift_retain_n();
    v52 = v51;
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v89 = v52;
    [v52 setObject:isa forKeyedSubscript:kAAFDidSucceed];

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v99[0] = v57;
      *v56 = 136315138;
      *(v56 + 4) = sub_10021145C(*(v38 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v38 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), v99);
      _os_log_impl(&_mh_execute_header, v54, v55, "%s - Verifying claim code", v56, 0xCu);
      sub_10000839C(v57);
    }

    v58 = OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__beneficiaryInfoVerificationProtocol;
    v59 = v86;
    v88 = *(v86 + 16);
    v60 = v80;
    v88(v47, v38 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__beneficiaryInfoVerificationProtocol, v80);
    Dependency.wrappedValue.getter();
    v61 = *(v59 + 8);
    v61(v47, v60);
    v62 = v49[2];
    v63 = v50;
    v64 = v50;
    v65 = v49;
    v66 = v83;
    v62(v63, v38 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__accountStore, v83);
    Dependency.wrappedValue.getter();
    (v65[1])(v64, v66);
    v67 = v90;
    v68 = v85;
    v69 = v81;
    (*(v90 + 16))(v85, v38 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__akAccountManager, v81);
    Dependency.wrappedValue.getter();
    (*(v67 + 8))(v68, v69);
    v70 = v97;
    v71 = sub_1000080F8(v98, v98[3]);
    v72 = sub_1001AD018(*v71, v70);

    sub_10000839C(v98);
    sub_10000839C(v99);
    v88(v47, v38 + v58, v60);
    Dependency.wrappedValue.getter();
    v61(v47, v60);
    v74 = v91;
    v73 = v92;
    v75 = v87;
    (*(v91 + 16))(v87, v38 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__securityController, v92);
    Dependency.wrappedValue.getter();
    (*(v74 + 8))(v75, v73);
    v76 = v98[0];
    swift_retain_n();
    v77 = v89;
    v78 = v96;

    sub_10016B9B8(v93, v72, v76, 0, v77, v38, v38, v77, v95, v78);
    swift_unknownObjectRelease();

    sub_10000839C(v99);
  }
}

uint64_t sub_1001B94E8(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  if (qword_1003D7F70 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAB30);

  v7 = a2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_10021145C(*(a1 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(a1 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v17);
    *(v10 + 12) = 2080;
    v11 = [v7 debugDescription];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10021145C(v12, v14, &v17);

    *(v10 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%s] 🌈 Preflight event reported. %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  return a3(0);
}

void sub_1001B96D4(uint64_t a1, id *a2, uint64_t *a3)
{
  v6 = type metadata accessor for BeneficiaryInfoRecord();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*a2)
  {
    v32 = 0u;
    v33 = 0u;
LABEL_10:
    sub_100008D3C(&v32, &qword_1003D87C8, qword_100344800);
    goto LABEL_11;
  }

  v10 = *a2;
  *&v30 = UUID.uuidString.getter();
  *(&v30 + 1) = v11;
  v12 = [v10 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  v32 = v30;
  v33 = v31;
  if (!*(&v31 + 1))
  {
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v13 = Data.init(base64Encoded:options:)();
    v15 = v14;

    if (v15 >> 60 != 15)
    {
      v16 = UUID.uuidString.getter();
      v18 = v17;
      v19 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v32 = *a3;
      sub_1002CFA04(v13, v15, v16, v18, isUniquelyReferenced_nonNull_native);

      *a3 = v32;
      return;
    }
  }

LABEL_11:
  if (qword_1003D7F70 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100008D04(v21, qword_1003FAB30);
  sub_100168334(a1, v9);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v32 = v25;
    *v24 = 136315138;
    type metadata accessor for UUID();
    sub_1001BD1B8(&qword_1003D9150, &type metadata accessor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    sub_1001BCA80(v9);
    v29 = sub_10021145C(v26, v28, &v32);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "Wrapped key not found in keychain! UUID %s", v24, 0xCu);
    sub_10000839C(v25);
  }

  else
  {

    sub_1001BCA80(v9);
  }
}

uint64_t sub_1001B9A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v9 = *(v8 + 64) + 15;
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_1001B9B10, 0, 0);
}

uint64_t sub_1001B9B10()
{
  v1 = v0[9];
  v2 = kInheritancePreflightCheckEventName;
  sub_1001C15CC();
  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_opt_self() analyticsEventWithName:v2 altDSID:v4 flowID:0];
  v0[15] = v5;

  if (v5)
  {
    v32 = v0[9];
    v6 = sub_1001C184C();
    if (v6)
    {
      v7 = v6;
      type metadata accessor for InheritancePreflightHealthCheck();
      v8 = sub_1001B3D2C();
      [v8 securityLevelForAccount:v7];
    }

    v20 = v0[13];
    v19 = v0[14];
    v21 = v0[12];
    v22 = v0[9];
    isa = UInt._bridgeToObjectiveC()().super.super.isa;
    [v5 setObject:isa forKeyedSubscript:kAAAnalyticsSecurityLevel];

    (*(v20 + 16))(v19, v22 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__cdpController, v21);
    Dependency.wrappedValue.getter();
    (*(v20 + 8))(v19, v21);
    v24 = [objc_allocWithZone(ACAccountStore) init];
    v25 = [v24 aa_primaryAppleAccount];

    if (v25)
    {
      v26 = [v25 aa_personID];

      if (v26)
      {
        [objc_opt_self() isICDPEnabledForDSID:v26];
      }
    }

    v27 = v0[9];
    v28 = Bool._bridgeToObjectiveC()().super.super.isa;
    sub_10000839C(v0 + 2);
    [v5 setObject:v28 forKeyedSubscript:kAAAnalyticsCdpStatus];

    v29 = v5;
    sub_1001BE7BC(v5);
    v30 = swift_task_alloc();
    v0[16] = v30;
    *v30 = v0;
    v30[1] = sub_1001B9F88;
    v31 = v0[9];

    return sub_1001BF774(v5);
  }

  else
  {
    if (qword_1003D7F70 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAB30);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "createEvent: Self is nil. Aborting Report Event.", v12, 2u);
    }

    v14 = v0[10];
    v13 = v0[11];

    type metadata accessor for InheritanceError(0);
    v0[8] = 14;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001BD1B8(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v15 = v0[7];
    v14(v15, 1);

    v16 = v0[14];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1001B9F88()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *v0;

  v5 = swift_task_alloc();
  *(v1 + 136) = v5;
  *v5 = v4;
  v5[1] = sub_1001BA0F8;
  v6 = *(v1 + 72);

  return (sub_1001C0AC4)(v3);
}

uint64_t sub_1001BA0F8()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return _swift_task_switch(sub_1001BA20C, 0, 0);
}

uint64_t sub_1001BA20C()
{
  v21 = v0;
  if (qword_1003D7F70 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[9];
  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAB30);
  v4 = v1;

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[15];
    v8 = v0[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_10021145C(*(v8 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v8 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v20);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v7;
    *v10 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s - Event created %@", v9, 0x16u);
    sub_100008D3C(v10, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v11);
  }

  v13 = v0[15];
  v15 = v0[10];
  v14 = v0[11];
  v16 = v13;
  v15(v13, 0);

  v17 = v0[14];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1001BA444(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    v4 = a2;
    if (qword_1003D7F40 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008D04(v5, qword_1003FAAA0);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error creating accessKey. Error: %@", v8, 0xCu);
      sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);
    }

    a1 = 0;
    a2 = v4;
  }

  return a3(a1, a2);
}

void sub_1001BA5B8(void *a1, uint64_t a2, void (*a3)(void *), void (*a4)(void *), uint64_t a5, void *a6)
{
  v70 = a4;
  v11 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v68 = *(v11 - 1);
  v69 = v11;
  v12 = *(v68 + 64);
  __chkstk_darwin(v11);
  v14 = &v60 - v13;
  v15 = type metadata accessor for BeneficiaryInfoRecord();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15 - 8);
  v67 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v60 - v19;
  v21 = type metadata accessor for UUID();
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v27 = qword_1003D7F70;
    v28 = a1;
    if (v27 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAB30);

    v30 = v28;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = a2;
      v37 = v35;
      v71[0] = v35;
      *v33 = 136315394;
      *(v33 + 4) = sub_10021145C(*(v36 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v36 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), v71);
      *(v33 + 12) = 2112;
      v38 = _convertErrorToNSError(_:)();
      *(v33 + 14) = v38;
      *v34 = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "%s - old accessKey properties do not match new accessKey properties. Error: %@", v33, 0x16u);
      sub_100008D3C(v34, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v37);
    }

    v69 = v30;
    a3(a1);

    v39 = v69;
  }

  else
  {
    v65 = v24;
    v66 = v23;
    v62 = a6;
    v40 = [a6 beneficiaryID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100168334(a5, v20);
    v41 = *(v16 + 80);
    v61 = a3;
    v42 = v70;
    v43 = (v41 + 24) & ~v41;
    v63 = a5;
    v64 = v17 + 7;
    v44 = (v17 + 7 + v43) & 0xFFFFFFFFFFFFFFF8;
    v45 = (v44 + 23) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    *(v46 + 16) = a2;
    sub_1001BC960(v20, v46 + v43);
    v47 = (v46 + v44);
    v48 = v62;
    *v47 = v61;
    v47[1] = v42;
    *(v46 + v45) = v48;
    v50 = v68;
    v49 = v69;
    (*(v68 + 16))(v14, a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__inheritanceStorage, v69);

    v51 = v48;
    Dependency.wrappedValue.getter();
    (*(v50 + 8))(v14, v49);
    v52 = sub_1000080F8(v71, v71[3]);
    v53 = v63;
    v54 = v67;
    sub_100168334(v63, v67);
    v55 = (v41 + 16) & ~v41;
    v56 = (v64 + v55) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    sub_1001BC960(v54, v57 + v55);
    v58 = (v57 + v56);
    *v58 = sub_1001BDC94;
    v58[1] = v46;
    v59 = *v52;

    sub_100218DA0(v53, v26, sub_1001BDF24, v57);

    (*(v65 + 8))(v26, v66);
    sub_10000839C(v71);
  }
}

uint64_t sub_1001BAB44(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, void *a6)
{
  v56 = type metadata accessor for UUID();
  v12 = *(v56 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v56);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for BeneficiaryInfoRecord();
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v52 - v21;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F70 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAB30);
    sub_100168334(a3, v22);
    swift_errorRetain();

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v54 = a4;
      v28 = v27;
      v29 = swift_slowAlloc();
      v55 = a5;
      v57 = v29;
      *v26 = 136315650;
      *(v26 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v57);
      *(v26 + 12) = 2080;
      sub_1001BD1B8(&qword_1003D9150, &type metadata accessor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      sub_1001BCA80(v22);
      v33 = sub_10021145C(v30, v32, &v57);

      *(v26 + 14) = v33;
      *(v26 + 22) = 2112;
      v34 = _convertErrorToNSError(_:)();
      *(v26 + 24) = v34;
      *v28 = v34;
      _os_log_impl(&_mh_execute_header, v24, v25, " %s - failed to update and save BeneficiaryInfoRecord %s     error: %@", v26, 0x20u);
      sub_100008D3C(v28, &unk_1003D9140, &qword_10033E640);
      a4 = v54;

      swift_arrayDestroy();
    }

    else
    {

      sub_1001BCA80(v22);
    }

    swift_errorRetain();
    a4(a1);
  }

  else
  {
    v53 = v12;
    v55 = a5;
    if (qword_1003D7F70 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100008D04(v35, qword_1003FAB30);
    sub_100168334(a3, v20);

    v36 = a6;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v54 = a4;
      v40 = v39;
      v52 = swift_slowAlloc();
      v57 = v52;
      *v40 = 136315650;
      *(v40 + 4) = sub_10021145C(*(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(a2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v57);
      *(v40 + 12) = 2080;
      sub_1001BD1B8(&qword_1003D9150, &type metadata accessor for UUID);
      v41 = v56;
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      sub_1001BCA80(v20);
      v45 = sub_10021145C(v42, v44, &v57);

      *(v40 + 14) = v45;
      *(v40 + 22) = 2080;
      v46 = [v36 beneficiaryID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = v48;
      (*(v53 + 8))(v15, v41);
      v50 = sub_10021145C(v47, v49, &v57);

      *(v40 + 24) = v50;
      _os_log_impl(&_mh_execute_header, v37, v38, "%s - successfully updated and saved inheritanceKey for beneficiaryID\n%s and new OTPeerID %s", v40, 0x20u);
      swift_arrayDestroy();

      a4 = v54;
    }

    else
    {

      sub_1001BCA80(v20);
    }

    return (a4)(0);
  }
}

void sub_1001BB15C(void *a1, void *a2, void (*a3)(uint64_t *))
{
  v4 = v3;
  v7 = [a1 wrappedKeyData];
  if (v7)
  {
    v8 = v7;
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xF000000000000000;
  }

  v12 = [a2 wrappedKeyData];
  if (v12)
  {
    v13 = v12;
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (v11 >> 60 == 15)
    {
      if (v16 >> 60 != 15)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    if (v16 >> 60 != 15)
    {
      sub_100052704(v9, v11);
      sub_100052704(v14, v16);
      v22 = sub_10018F69C(v9, v11, v14, v16);
      sub_100015D58(v14, v16);
      sub_100015D58(v9, v11);
      sub_100015D58(v14, v16);
      sub_100015D58(v9, v11);
      if ((v22 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_10:
      v17 = [a1 wrappingKeyData];
      if (v17)
      {
        v18 = v17;
        v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;
      }

      else
      {
        v19 = 0;
        v21 = 0xF000000000000000;
      }

      v28 = [a2 wrappingKeyData];
      if (v28)
      {
        v29 = v28;
        v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        if (v21 >> 60 == 15)
        {
          if (v32 >> 60 != 15)
          {
            goto LABEL_35;
          }

          goto LABEL_28;
        }

        if (v32 >> 60 != 15)
        {
          sub_100052704(v19, v21);
          sub_100052704(v30, v32);
          v38 = sub_10018F69C(v19, v21, v30, v32);
          sub_100015D58(v30, v32);
          sub_100015D58(v19, v21);
          sub_100015D58(v30, v32);
          sub_100015D58(v19, v21);
          if ((v38 & 1) == 0)
          {
            goto LABEL_36;
          }

LABEL_29:
          v33 = [a1 claimTokenData];
          if (v33)
          {
            v34 = v33;
            v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v37 = v36;
          }

          else
          {
            v35 = 0;
            v37 = 0xF000000000000000;
          }

          v43 = [a2 claimTokenData];
          if (v43)
          {
            v44 = v43;
            v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v47 = v46;

            if (v37 >> 60 == 15)
            {
              if (v47 >> 60 != 15)
              {
                goto LABEL_53;
              }

              goto LABEL_47;
            }

            if (v47 >> 60 != 15)
            {
              sub_100052704(v35, v37);
              sub_100052704(v45, v47);
              v48 = sub_10018F69C(v35, v37, v45, v47);
              sub_100015D58(v45, v47);
              sub_100015D58(v35, v37);
              sub_100015D58(v45, v47);
              sub_100015D58(v35, v37);
              if ((v48 & 1) == 0)
              {
                goto LABEL_54;
              }

LABEL_48:
              a3(0);
              return;
            }
          }

          else
          {
            if (v37 >> 60 == 15)
            {
LABEL_47:
              sub_100015D58(v35, v37);
              goto LABEL_48;
            }

            v45 = 0;
            v47 = 0xF000000000000000;
          }

LABEL_53:
          sub_100015D58(v35, v37);
          sub_100015D58(v45, v47);
LABEL_54:
          if (qword_1003D7F70 != -1)
          {
            swift_once();
          }

          v49 = type metadata accessor for Logger();
          sub_100008D04(v49, qword_1003FAB30);

          v24 = Logger.logObject.getter();
          v50 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v24, v50))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v55 = v52;
            *v51 = 136315138;
            *(v51 + 4) = sub_10021145C(*(v4 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v4 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v55);
            _os_log_impl(&_mh_execute_header, v24, v50, "%s - Claim code in new inheritanceKey does not match existing claim code.", v51, 0xCu);
            sub_10000839C(v52);
          }

          goto LABEL_58;
        }
      }

      else
      {
        if (v21 >> 60 == 15)
        {
LABEL_28:
          sub_100015D58(v19, v21);
          goto LABEL_29;
        }

        v30 = 0;
        v32 = 0xF000000000000000;
      }

LABEL_35:
      sub_100015D58(v19, v21);
      sub_100015D58(v30, v32);
LABEL_36:
      if (qword_1003D7F70 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_100008D04(v39, qword_1003FAB30);

      v24 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v55 = v42;
        *v41 = 136315138;
        *(v41 + 4) = sub_10021145C(*(v4 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v4 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v55);
        _os_log_impl(&_mh_execute_header, v24, v40, "%s - Wrapping key in new inheritanceKey does not match existing wrapping key.", v41, 0xCu);
        sub_10000839C(v42);
      }

      goto LABEL_58;
    }
  }

  else
  {
    if (v11 >> 60 == 15)
    {
LABEL_9:
      sub_100015D58(v9, v11);
      goto LABEL_10;
    }

    v14 = 0;
    v16 = 0xF000000000000000;
  }

LABEL_16:
  sub_100015D58(v9, v11);
  sub_100015D58(v14, v16);
LABEL_17:
  if (qword_1003D7F70 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100008D04(v23, qword_1003FAB30);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v55 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_10021145C(*(v4 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v4 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v55);
    _os_log_impl(&_mh_execute_header, v24, v25, "%s - Wrapped key in new inheritanceKey does not match the existing wrapped key.", v26, 0xCu);
    sub_10000839C(v27);
  }

LABEL_58:

  type metadata accessor for InheritanceError(0);
  sub_100212324(_swiftEmptyArrayStorage);
  sub_1001BD1B8(&qword_1003D8040, type metadata accessor for InheritanceError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v53 = v55;
  a3(v55);
}

uint64_t sub_1001BB940(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = type metadata accessor for BeneficiaryInfoRecord();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v37 - v11;
  v13 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (&v37 - v15);
  sub_100012D04(a1, &v37 - v15, &unk_1003E10A0, &unk_100344480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    if (qword_1003D7F70 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAB30);
    sub_100168334(a2, v10);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v38 = v22;
      *v21 = 136315138;
      type metadata accessor for UUID();
      sub_1001BD1B8(&qword_1003D9150, &type metadata accessor for UUID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      sub_1001BCA80(v10);
      v26 = sub_10021145C(v23, v25, &v38);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to update BeneficiaryInfoRecord for beneficiaryUUID: %s", v21, 0xCu);
      sub_10000839C(v22);
    }

    else
    {

      sub_1001BCA80(v10);
    }

    swift_errorRetain();
    a3(v17);
  }

  else
  {
    if (qword_1003D7F70 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAB30);
    sub_100168334(a2, v12);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38 = v31;
      *v30 = 136315138;
      type metadata accessor for UUID();
      sub_1001BD1B8(&qword_1003D9150, &type metadata accessor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      sub_1001BCA80(v12);
      v35 = sub_10021145C(v32, v34, &v38);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "Successfully updated BeneficiaryInfoRecord for beneficiaryUUID: %s", v30, 0xCu);
      sub_10000839C(v31);
    }

    else
    {

      sub_1001BCA80(v12);
    }

    a3(0);
    return sub_100008D3C(v16, &unk_1003E10A0, &unk_100344480);
  }
}

uint64_t sub_1001BBDE4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1001BBE14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21[-1] - v9;
  if (qword_1003D7F70 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAB30);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_10021145C(*(v3 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v3 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), v21);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s - started.", v14, 0xCu);
    sub_10000839C(v15);
  }

  (*(v7 + 16))(v10, v3 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__inheritanceStorage, v6);
  Dependency.wrappedValue.getter();
  (*(v7 + 8))(v10, v6);
  v16 = sub_1000080F8(v21, v21[3]);
  v17 = swift_allocObject();
  v17[2] = v3;
  v17[3] = a1;
  v17[4] = a2;
  v18 = *v16;

  sub_100214428(sub_1001BC0BC, v17);

  return sub_10000839C(v21);
}

uint64_t sub_1001BC0DC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(id))
{
  v34 = a5;
  if (a1)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    v39 = sub_100016034(0, &qword_1003DB5F0, NSError_ptr);
    v38[0] = a1;
    sub_100070AF0(v38, v37);
    v12 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002CF8B4(v37, v9, v11, isUniquelyReferenced_nonNull_native);

    if (a2)
    {
      swift_getErrorValue();
      swift_errorRetain();
      sub_100256810(v36);
      swift_getErrorValue();
      v14 = sub_100256874(v35);
      v15 = objc_allocWithZone(NSError);
      v16 = String._bridgeToObjectiveC()();

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v18 = [v15 initWithDomain:v16 code:v14 userInfo:isa];

      v19 = _convertErrorToNSError(_:)();
      [a3 populateUnderlyingErrorsStartingWithRootError:v19];
    }

    else
    {

      v21 = v12;
      v22 = _convertErrorToNSError(_:)();

      [a3 populateUnderlyingErrorsStartingWithRootError:v22];
    }
  }

  else
  {
    if (a2)
    {
      v20 = _convertErrorToNSError(_:)();
    }

    else
    {
      v20 = 0;
    }

    [a3 populateUnderlyingErrorsStartingWithRootError:{v20, v34}];
  }

  if (qword_1003D7F70 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100008D04(v23, qword_1003FAB30);

  v24 = a3;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    *v27 = 136315394;
    *(v27 + 4) = sub_10021145C(*(a4 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(a4 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), v38);
    *(v27 + 12) = 2080;
    v28 = [v24 debugDescription];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = sub_10021145C(v29, v31, v38);

    *(v27 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v25, v26, "%s - Reporting Preflight Event %s", v27, 0x16u);
    swift_arrayDestroy();
  }

  return v34([*(a4 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_analyticsReporter) sendEvent:v24]);
}

uint64_t sub_1001BC4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20[-1] - v9;
  if (qword_1003D7F70 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAB30);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Cleaned up stale records. Continuing with preflight....", v14, 2u);
  }

  (*(v7 + 16))(v10, a1 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck__inheritanceStorage, v6);
  Dependency.wrappedValue.getter();
  (*(v7 + 8))(v10, v6);
  v15 = sub_1000080F8(v20, v20[3]);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v17 = *v15;

  sub_100216650(sub_1001BE000, v16);

  return sub_10000839C(v20);
}

uint64_t sub_1001BC734()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001BC76C()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v18 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v8 = *(v0 + v2 + v1[5] + 8);

  v9 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v4 + v1[7]), *(v4 + v1[7] + 8));
  v7(v0 + v2 + v1[8], v5);
  sub_100012324(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v10 = v1[11];
  if (!(*(v6 + 48))(v0 + v2 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  v11 = (v18 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v4 + v1[12] + 8);

  v14 = *(v4 + v1[14] + 8);

  v15 = *(v0 + v11);

  v16 = *(v0 + v12);

  return _swift_deallocObject(v0, v12 + 8);
}

uint64_t sub_1001BC960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeneficiaryInfoRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001BC9C4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for BeneficiaryInfoRecord() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001B467C(a1, a2, v8, v2 + v6, v9, v10);
}

uint64_t sub_1001BCA80(uint64_t a1)
{
  v2 = type metadata accessor for BeneficiaryInfoRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001BCADC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1001BCB30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001BCB48()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v20 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v8 = *(v0 + v2 + v1[5] + 8);

  v9 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v4 + v1[7]), *(v4 + v1[7] + 8));
  v7(v0 + v2 + v1[8], v5);
  sub_100012324(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v10 = v1[11];
  if (!(*(v6 + 48))(v0 + v2 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  v11 = (v20 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v4 + v1[12] + 8);

  v15 = *(v4 + v1[14] + 8);

  v16 = *(v0 + v11);

  v17 = *(v0 + v12);

  v18 = *(v0 + v13 + 8);

  return _swift_deallocObject(v0, v13 + 16);
}

uint64_t sub_1001BCD50(int *a1, char a2)
{
  v5 = *(type metadata accessor for BeneficiaryInfoRecord() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + 16);
  v12 = (v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];

  return sub_1001B49EC(a1, a2 & 1, v11, v2 + v6, v9, v10, v13, v14);
}

uint64_t sub_1001BCE1C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_1001BCE64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000082A8;

  return sub_1001B9A40(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001BCF2C()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v8 = *(v0 + v2 + v1[5] + 8);

  v9 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v4 + v1[7]), *(v4 + v1[7] + 8));
  v7(v0 + v2 + v1[8], v5);
  sub_100012324(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v10 = v1[11];
  if (!(*(v6 + 48))(v0 + v2 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  v11 = (v16 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v4 + v1[12] + 8);

  v13 = *(v4 + v1[14] + 8);

  v14 = *(v0 + v11 + 8);

  return _swift_deallocObject(v0, v11 + 16);
}

uint64_t sub_1001BD114(uint64_t a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_1001B4EDC(a1, v5, v1 + v4, v7);
}

uint64_t sub_1001BD1B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001BD200()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v18 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v8 = *(v0 + v2 + v1[5] + 8);

  v9 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v4 + v1[7]), *(v4 + v1[7] + 8));
  v7(v0 + v2 + v1[8], v5);
  sub_100012324(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v10 = v1[11];
  if (!(*(v6 + 48))(v0 + v2 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  v11 = (v2 + v18) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v4 + v1[12] + 8);

  v15 = *(v4 + v1[14] + 8);

  v16 = *(v0 + v12 + 8);

  return _swift_deallocObject(v0, v13 + 8);
}

void sub_1001BD408(uint64_t a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = ((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + v5);
  v9 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_1001B6F60(a1, v7, (v1 + v4), v8, v9, v10, v11, v12);
}

uint64_t sub_1001BD4C8()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v17 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 24);

  v4 = *(v0 + 32);

  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v2, v6);
  v9 = *(v0 + v2 + v1[5] + 8);

  v10 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  v8(v0 + v2 + v1[8], v6);
  sub_100012324(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v11 = v1[11];
  if (!(*(v7 + 48))(v0 + v2 + v11, 1, v6))
  {
    v8(v5 + v11, v6);
  }

  v12 = (v17 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v5 + v1[12] + 8);

  v15 = *(v5 + v1[14] + 8);

  return _swift_deallocObject(v0, v13 + 8);
}

uint64_t sub_1001BD6C4(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for BeneficiaryInfoRecord() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = *(v2 + v7);
  v12 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001B8548(a1, a2, v8, v9, v10, v2 + v6, v11, v12);
}

uint64_t sub_1001BD784()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_1001BD7E0()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  v4 = *(v0 + 32);

  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v2, v6);
  v9 = *(v0 + v2 + v1[5] + 8);

  v10 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  v8(v0 + v2 + v1[8], v6);
  sub_100012324(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v11 = v1[11];
  if (!(*(v7 + 48))(v0 + v2 + v11, 1, v6))
  {
    v8(v5 + v11, v6);
  }

  v12 = (v16 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v5 + v1[12] + 8);

  v14 = *(v5 + v1[14] + 8);

  return _swift_deallocObject(v0, v12 + 8);
}

uint64_t sub_1001BD9E4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t))
{
  v4 = *(type metadata accessor for BeneficiaryInfoRecord() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = *(v2 + 4);
  v9 = *&v2[(*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8];

  return a2(a1, v6, v7, v8, &v2[v5], v9);
}

uint64_t sub_1001BDA9C()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v17 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v8 = *(v0 + v2 + v1[5] + 8);

  v9 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v4 + v1[7]), *(v4 + v1[7] + 8));
  v7(v0 + v2 + v1[8], v5);
  sub_100012324(*(v4 + v1[9]), *(v4 + v1[9] + 8));
  v10 = v1[11];
  if (!(*(v6 + 48))(v0 + v2 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  v11 = (v17 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v4 + v1[12] + 8);

  v14 = *(v4 + v1[14] + 8);

  v15 = *(v0 + v11 + 8);

  return _swift_deallocObject(v0, v12 + 8);
}

uint64_t sub_1001BDC94(uint64_t a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = v1 + v5;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v1 + v6);

  return sub_1001BAB44(a1, v7, v1 + v4, v9, v10, v11);
}

uint64_t sub_1001BDD44()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v15 = *(*(v1 - 1) + 64);
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);
  v7 = *(v0 + v2 + v1[5] + 8);

  v8 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v9 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v9, 1, v4))
  {
    v6(v3 + v9, v4);
  }

  v10 = (v15 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v3 + v1[12] + 8);

  v12 = *(v3 + v1[14] + 8);

  v13 = *(v0 + v10 + 8);

  return _swift_deallocObject(v0, v10 + 16);
}

uint64_t sub_1001BDF24(uint64_t a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1001BB940(a1, v1 + v4, v6);
}

uint64_t sub_1001BE004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1002CEFC4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1003084DC(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_1002CFE94();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_1001C427C(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_1001BE0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1002CF474(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1003084DC(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_1002D04D4();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_1001C427C(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

void sub_1001BE1F4(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v4 = type metadata accessor for CustodianPreflightHealthCheck();
    sub_1000B5EDC(v4, &off_1003A7510);
    v5 = *(*sub_1000080F8(v21, v21[3]) + 16);
    v20 = 0;
    [v5 walrusStatus:&v20];
    v6 = v20;
    if (!v20)
    {
      isa = UInt._bridgeToObjectiveC()().super.super.isa;
      sub_10000839C(v21);
      [a1 setObject:isa forKeyedSubscript:kAAAnalyticsAdvancedDataProtectionState];
      goto LABEL_8;
    }

    swift_willThrow();
    v7 = v6;
    sub_10000839C(v21);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAAB8);

    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21[0] = v14;
      *v12 = 136315394;
      v15 = *(v2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName);
      v16 = *(v2 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8);

      v17 = sub_10021145C(v15, v16, v21);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2112;
      isa = v9;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v19;
      *v13 = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "%s - Failed to attach Walrus Status: %@", v12, 0x16u);
      sub_100008D3C(v13, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v14);

LABEL_8:
      return;
    }
  }
}

void sub_1001BE4D0(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v4 = v1[5];
    v5 = v1[7];
    sub_1000080F8(v1 + 2, v4);
    (*(v5 + 80))(v24, v4, v5);
    v6 = *(*sub_1000080F8(v24, v24[3]) + 16);
    v23 = 0;
    [v6 walrusStatus:&v23];
    v7 = v23;
    if (!v23)
    {
      isa = UInt._bridgeToObjectiveC()().super.super.isa;
      sub_10000839C(v24);
      [a1 setObject:isa forKeyedSubscript:kAAAnalyticsAdvancedDataProtectionState];
      goto LABEL_8;
    }

    swift_willThrow();
    v8 = v7;
    sub_10000839C(v24);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAAB8);

    v10 = v8;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24[0] = v15;
      *v13 = 136315394;
      v16 = v2[5];
      v17 = v2[7];
      sub_1000080F8(v2 + 2, v16);
      v18 = (*(v17 + 64))(v16, v17);
      v20 = sub_10021145C(v18, v19, v24);

      *(v13 + 4) = v20;
      *(v13 + 12) = 2112;
      isa = v10;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v22;
      *v14 = v22;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s - Failed to attach Walrus Status: %@", v13, 0x16u);
      sub_100008D3C(v14, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v15);

LABEL_8:
      return;
    }
  }
}

void sub_1001BE7BC(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v4 = type metadata accessor for InheritancePreflightHealthCheck();
    sub_1001B3BF4(v4, &off_1003ACF10);
    v5 = *(*sub_1000080F8(v21, v21[3]) + 16);
    v20 = 0;
    [v5 walrusStatus:&v20];
    v6 = v20;
    if (!v20)
    {
      isa = UInt._bridgeToObjectiveC()().super.super.isa;
      sub_10000839C(v21);
      [a1 setObject:isa forKeyedSubscript:kAAAnalyticsAdvancedDataProtectionState];
      goto LABEL_8;
    }

    swift_willThrow();
    v7 = v6;
    sub_10000839C(v21);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAAB8);

    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21[0] = v14;
      *v12 = 136315394;
      v15 = *(v2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName);
      v16 = *(v2 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8);

      v17 = sub_10021145C(v15, v16, v21);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2112;
      isa = v9;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v19;
      *v13 = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "%s - Failed to attach Walrus Status: %@", v12, 0x16u);
      sub_100008D3C(v13, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v14);

LABEL_8:
      return;
    }
  }
}

void sub_1001BEA98(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v4 = type metadata accessor for InheritanceRecordsCleaner();
    sub_1001C3CFC(v4, &off_1003AD2B0);
    v5 = *(*sub_1000080F8(v21, v21[3]) + 16);
    v20 = 0;
    [v5 walrusStatus:&v20];
    v6 = v20;
    if (!v20)
    {
      isa = UInt._bridgeToObjectiveC()().super.super.isa;
      sub_10000839C(v21);
      [a1 setObject:isa forKeyedSubscript:kAAAnalyticsAdvancedDataProtectionState];
      goto LABEL_8;
    }

    swift_willThrow();
    v7 = v6;
    sub_10000839C(v21);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAAB8);

    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21[0] = v14;
      *v12 = 136315394;
      v15 = *(v2 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName);
      v16 = *(v2 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName + 8);

      v17 = sub_10021145C(v15, v16, v21);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2112;
      isa = v9;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v19;
      *v13 = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "%s - Failed to attach Walrus Status: %@", v12, 0x16u);
      sub_100008D3C(v13, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v14);

LABEL_8:
      return;
    }
  }
}

uint64_t sub_1001BED5C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[7] = v1;
  return _swift_task_switch(sub_1001BED80, 0, 0);
}

uint64_t sub_1001BED80()
{
  v1 = type metadata accessor for CustodianPreflightHealthCheck();
  sub_1000B5EDC(v1, &off_1003A7510);
  v2 = *sub_1000080F8(v0 + 2, v0[5]);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1001BEE68;

  return sub_10013C9D8(0x86AC351052600000, 32);
}

uint64_t sub_1001BEE68(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v7 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v5 = sub_1001BF018;
  }

  else
  {
    v5 = sub_1001BEF7C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001BEF7C()
{
  v1 = v0[8];
  sub_10000839C(v0 + 2);
  if (v1)
  {
    v2 = v0[11];
    v3 = v0[8];
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [v3 setObject:isa forKeyedSubscript:kAAAnalyticsCliqueStatus];
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001BF018()
{
  v20 = v0;
  sub_10000839C(v0 + 2);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[9];
  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAAB8);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  v8 = v0[9];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136315394;
    v12 = *(v8 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName);
    v13 = *(v8 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8);

    v14 = sub_10021145C(v12, v13, &v19);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v10 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s - Failed to attach Octagon Status: %@", v9, 0x16u);
    sub_100008D3C(v10, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v11);
  }

  else
  {
    v16 = v0[12];
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1001BF268(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(sub_1001BF288, 0, 0);
}

uint64_t sub_1001BF288()
{
  v1 = v0[8];
  v2 = v1[5];
  v3 = v1[7];
  sub_1000080F8(v1 + 2, v2);
  (*(v3 + 80))(v2, v3);
  v4 = *sub_1000080F8(v0 + 2, v0[5]);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1001BF37C;

  return sub_10013C9D8(0x86AC351052600000, 32);
}

uint64_t sub_1001BF37C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v7 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v5 = sub_1001BF52C;
  }

  else
  {
    v5 = sub_1001BF490;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001BF490()
{
  v1 = v0[7];
  sub_10000839C(v0 + 2);
  if (v1)
  {
    v2 = v0[10];
    v3 = v0[7];
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    [v3 setObject:isa forKeyedSubscript:kAAAnalyticsCliqueStatus];
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001BF52C()
{
  v21 = v0;
  sub_10000839C(v0 + 2);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAAB8);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = v0[8];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v9 = 136315394;
    v12 = v8[5];
    v13 = v8[7];
    sub_1000080F8(v8 + 2, v12);
    v14 = (*(v13 + 64))(v12, v13);
    v16 = sub_10021145C(v14, v15, &v20);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s - Failed to attach Octagon Status: %@", v9, 0x16u);
    sub_100008D3C(v10, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v11);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1001BF774(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[7] = v1;
  return _swift_task_switch(sub_1001BF798, 0, 0);
}

uint64_t sub_1001BF798()
{
  v1 = type metadata accessor for InheritancePreflightHealthCheck();
  sub_1001B3BF4(v1, &off_1003ACF10);
  v2 = *sub_1000080F8(v0 + 2, v0[5]);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1001BF880;

  return sub_10013C9D8(0x86AC351052600000, 32);
}

uint64_t sub_1001BF880(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v7 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v5 = sub_1001BF994;
  }

  else
  {
    v5 = sub_1001C5EAC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001BF994()
{
  v20 = v0;
  sub_10000839C(v0 + 2);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[9];
  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAAB8);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  v8 = v0[9];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136315394;
    v12 = *(v8 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName);
    v13 = *(v8 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8);

    v14 = sub_10021145C(v12, v13, &v19);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v10 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s - Failed to attach Octagon Status: %@", v9, 0x16u);
    sub_100008D3C(v10, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v11);
  }

  else
  {
    v16 = v0[12];
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1001BFBE4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[7] = v1;
  return _swift_task_switch(sub_1001BFC08, 0, 0);
}

uint64_t sub_1001BFC08()
{
  v1 = type metadata accessor for InheritanceRecordsCleaner();
  sub_1001C3CFC(v1, &off_1003AD2B0);
  v2 = *sub_1000080F8(v0 + 2, v0[5]);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1001BFCD4;

  return sub_10013C9D8(0x86AC351052600000, 32);
}

uint64_t sub_1001BFCD4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v7 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v5 = sub_1001BFDE8;
  }

  else
  {
    v5 = sub_1001C5EAC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001BFDE8()
{
  v20 = v0;
  sub_10000839C(v0 + 2);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[9];
  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAAB8);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  v8 = v0[9];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136315394;
    v12 = *(v8 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName);
    v13 = *(v8 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName + 8);

    v14 = sub_10021145C(v12, v13, &v19);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v10 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s - Failed to attach Octagon Status: %@", v9, 0x16u);
    sub_100008D3C(v10, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v11);
  }

  else
  {
    v16 = v0[12];
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1001C0034(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[7] = v1;
  return _swift_task_switch(sub_1001C0058, 0, 0);
}

uint64_t sub_1001C0058()
{
  if (v0[8])
  {
    v1 = type metadata accessor for CustodianPreflightHealthCheck();
    sub_1000B5EDC(v1, &off_1003A7510);
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_1001C0174;

    return sub_10013E2C0();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1001C0174(int a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = sub_1001C0330;
  }

  else
  {
    *(v4 + 96) = a1;
    v7 = sub_1001C029C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001C029C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  isa = Int32._bridgeToObjectiveC()().super.super.isa;
  sub_10000839C((v0 + 16));
  [v2 setObject:isa forKeyedSubscript:kAAAnalyticsCircleSyncingStatus];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001C0330()
{
  v20 = v0;
  sub_10000839C(v0 + 2);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[9];
  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAAB8);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  v8 = v0[9];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136315394;
    v12 = *(v8 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName);
    v13 = *(v8 + OBJC_IVAR____TtC13appleaccountd29CustodianPreflightHealthCheck_checkName + 8);

    v14 = sub_10021145C(v12, v13, &v19);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v10 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s - Failed to attach SOS Status: %@", v9, 0x16u);
    sub_100008D3C(v10, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v11);
  }

  else
  {
    v16 = v0[11];
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1001C0580(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(sub_1001C05A0, 0, 0);
}

uint64_t sub_1001C05A0()
{
  if (v0[7])
  {
    v1 = v0[8];
    v2 = v1[5];
    v3 = v1[7];
    sub_1000080F8(v1 + 2, v2);
    (*(v3 + 80))(v2, v3);
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_1001C06C0;

    return sub_10013E2C0();
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1001C06C0(int a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_1001C087C;
  }

  else
  {
    *(v4 + 88) = a1;
    v7 = sub_1001C07E8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001C07E8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  isa = Int32._bridgeToObjectiveC()().super.super.isa;
  sub_10000839C((v0 + 16));
  [v2 setObject:isa forKeyedSubscript:kAAAnalyticsCircleSyncingStatus];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001C087C()
{
  v21 = v0;
  sub_10000839C(v0 + 2);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[8];
  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAAB8);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = v0[8];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v9 = 136315394;
    v12 = v8[5];
    v13 = v8[7];
    sub_1000080F8(v8 + 2, v12);
    v14 = (*(v13 + 64))(v12, v13);
    v16 = sub_10021145C(v14, v15, &v20);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s - Failed to attach SOS Status: %@", v9, 0x16u);
    sub_100008D3C(v10, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v11);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1001C0AC4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[7] = v1;
  return _swift_task_switch(sub_1001C0AE8, 0, 0);
}

uint64_t sub_1001C0AE8()
{
  if (v0[8])
  {
    v1 = type metadata accessor for InheritancePreflightHealthCheck();
    sub_1001B3BF4(v1, &off_1003ACF10);
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_1001C0C04;

    return sub_10013E2C0();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1001C0C04(int a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = sub_1001C0D2C;
  }

  else
  {
    *(v4 + 96) = a1;
    v7 = sub_1001C5EA0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001C0D2C()
{
  v20 = v0;
  sub_10000839C(v0 + 2);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[9];
  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAAB8);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  v8 = v0[9];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136315394;
    v12 = *(v8 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName);
    v13 = *(v8 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8);

    v14 = sub_10021145C(v12, v13, &v19);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v10 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s - Failed to attach SOS Status: %@", v9, 0x16u);
    sub_100008D3C(v10, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v11);
  }

  else
  {
    v16 = v0[11];
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1001C0F7C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[7] = v1;
  return _swift_task_switch(sub_1001C0FA0, 0, 0);
}

uint64_t sub_1001C0FA0()
{
  if (v0[8])
  {
    v1 = type metadata accessor for InheritanceRecordsCleaner();
    sub_1001C3CFC(v1, &off_1003AD2B0);
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_1001C1094;

    return sub_10013E2C0();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1001C1094(int a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = sub_1001C11BC;
  }

  else
  {
    *(v4 + 96) = a1;
    v7 = sub_1001C5EA0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001C11BC()
{
  v20 = v0;
  sub_10000839C(v0 + 2);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[9];
  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAAB8);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  v8 = v0[9];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136315394;
    v12 = *(v8 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName);
    v13 = *(v8 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName + 8);

    v14 = sub_10021145C(v12, v13, &v19);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v10 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s - Failed to attach SOS Status: %@", v9, 0x16u);
    sub_100008D3C(v10, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v11);
  }

  else
  {
    v16 = v0[11];
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1001C1408()
{
  v0 = type metadata accessor for CustodianPreflightHealthCheck();
  sub_1000B5EF8(v0, &off_1003A7510);
  v1 = [*(*sub_1000080F8(v6 v6[3]) + 16)];
  if (v1 && (v2 = v1, v3 = [v1 aa_altDSID], v2, v3))
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  sub_10000839C(v6);
  return v4;
}

uint64_t sub_1001C14E8()
{
  v1 = v0[5];
  v2 = v0[7];
  sub_1000080F8(v0 + 2, v1);
  (*(v2 + 88))(v8, v1, v2);
  v3 = [*(*sub_1000080F8(v8 v8[3]) + 16)];
  if (v3 && (v4 = v3, v5 = [v3 aa_altDSID], v4, v5))
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  sub_10000839C(v8);
  return v6;
}

uint64_t sub_1001C15CC()
{
  v0 = type metadata accessor for InheritancePreflightHealthCheck();
  sub_1001B3C10(v0, &off_1003ACF10);
  v1 = [*(*sub_1000080F8(v6 v6[3]) + 16)];
  if (v1 && (v2 = v1, v3 = [v1 aa_altDSID], v2, v3))
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  sub_10000839C(v6);
  return v4;
}

uint64_t sub_1001C16AC()
{
  v0 = type metadata accessor for InheritanceRecordsCleaner();
  sub_1001C3D18(v0, &off_1003AD2B0);
  v1 = [*(*sub_1000080F8(v6 v6[3]) + 16)];
  if (v1 && (v2 = v1, v3 = [v1 aa_altDSID], v2, v3))
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  sub_10000839C(v6);
  return v4;
}

id sub_1001C1778()
{
  sub_1001C1408();
  v1 = v0;
  type metadata accessor for CustodianPreflightHealthCheck();
  v2 = sub_1000B6014();
  v3 = v2;
  if (v1)
  {

    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 authKitAccountWithAltDSID:v4];

    swift_bridgeObjectRelease_n();
  }

  else
  {

    return 0;
  }

  return v5;
}

id sub_1001C184C()
{
  sub_1001C15CC();
  v1 = v0;
  type metadata accessor for InheritancePreflightHealthCheck();
  v2 = sub_1001B3D2C();
  v3 = v2;
  if (v1)
  {

    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 authKitAccountWithAltDSID:v4];

    swift_bridgeObjectRelease_n();
  }

  else
  {

    return 0;
  }

  return v5;
}

id sub_1001C1920()
{
  sub_1001C16AC();
  v1 = v0;
  type metadata accessor for InheritanceRecordsCleaner();
  v2 = sub_1001C3E34();
  v3 = v2;
  if (v1)
  {

    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 authKitAccountWithAltDSID:v4];

    swift_bridgeObjectRelease_n();
  }

  else
  {

    return 0;
  }

  return v5;
}

uint64_t sub_1001C19D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v40 = a2;
  v38 = a1;
  v7 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v36 - v10;
  v12 = type metadata accessor for InheritanceInvitationRecord();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F78 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAB48);
  sub_1001C51A8(a3, v15, type metadata accessor for InheritanceInvitationRecord);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v36 = a4;
    v20 = v19;
    v21 = swift_slowAlloc();
    v37 = a3;
    v22 = v21;
    v41[0] = v21;
    *v20 = 136315138;
    type metadata accessor for UUID();
    sub_1001C5E58(&qword_1003D9150, &type metadata accessor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    sub_1001C5600(v15, type metadata accessor for InheritanceInvitationRecord);
    v26 = sub_10021145C(v23, v25, v41);

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v17, v18, "Stating Cleanup for %s", v20, 0xCu);
    sub_10000839C(v22);
    a3 = v37;

    a4 = v36;
  }

  else
  {

    sub_1001C5600(v15, type metadata accessor for InheritanceInvitationRecord);
  }

  v27 = UUID.uuidString.getter();
  v29 = v28;
  v30 = swift_allocObject();
  v31 = v38;
  v30[2] = v39;
  v30[3] = v27;
  v30[4] = v29;
  v30[5] = v31;
  v30[6] = v40;
  (*(v8 + 16))(v11, a4 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner__inheritanceStorage, v7);

  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v11, v7);
  v32 = sub_1000080F8(v41, v41[3]);
  v33 = swift_allocObject();
  v33[2] = a4;
  v33[3] = sub_1001C50B4;
  v33[4] = v30;
  v34 = *v32;

  sub_100217018(a3, sub_1001C50C4, v33);

  return sub_10000839C(v41);
}

uint64_t sub_1001C1DE8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t (*a7)(uint64_t))
{
  if (a1)
  {
    v13 = a1;
    swift_errorRetain();
    v14 = _convertErrorToNSError(_:)();
    v15 = [v14 aa_partialErrorsByName];

    if (v15)
    {
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v16 + 16))
      {

        sub_1001C442C(v16, (a4 + 16), a2, a3, a5, a6);

        return a7(a1);
      }
    }

    if (a3)
    {
      v17 = a3;
    }

    else
    {
      a2 = 0;
      v17 = 0xE000000000000000;
    }

    v18._countAndFlagsBits = a2;
    v18._object = v17;
    String.append(_:)(v18);

    v19._countAndFlagsBits = 58;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    v20._countAndFlagsBits = a5;
    v20._object = a6;
    String.append(_:)(v20);
    swift_beginAccess();
    swift_errorRetain();
    v21 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_1002CEFC4(v13, 0, 0xE000000000000000, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v24;
    swift_endAccess();
  }

  return a7(a1);
}

void sub_1001C1FEC(uint64_t a1, void (*a2)(id))
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  if (*(v4 + 16))
  {
    type metadata accessor for AAError(0);
    sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033EB30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v6;
    *(inited + 72) = sub_100005814(&unk_1003D91D0, &unk_10033F9C0);
    *(inited + 48) = v4;

    sub_100308978(inited);
    swift_setDeallocating();
    sub_100008D3C(inited + 32, &qword_1003DB0B0, &unk_10033E710);
    sub_1001C5E58(&qword_1003D8370, type metadata accessor for AAError);
    _BridgedStoredNSError.init(_:userInfo:)();
    if (qword_1003D7F78 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008D04(v7, qword_1003FAB48);
    v8 = v19;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = _convertErrorToNSError(_:)();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to clean up beneficiary: %@", v11, 0xCu);
      sub_100008D3C(v12, &unk_1003D9140, &qword_10033E640);
    }

    v14 = v8;
    a2(v8);
  }

  else
  {
    if (qword_1003D7F78 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAB48);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Successfully cleaning up beneficiary.", v18, 2u);
    }

    a2(0);
  }
}

uint64_t sub_1001C2348(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void, void), uint64_t a4)
{
  v37 = a4;
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for BeneficiaryInfoRecord();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11 - 8);
  v15 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v36 - v16;
  v18 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v36 - v20);
  sub_1001C50D0(a1, &v36 - v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    if (qword_1003D7F78 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAB48);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "Error fetching beneficiary record: %@", v26, 0xCu);
      sub_100008D3C(v27, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();
    a3(v22, 0, 0);
  }

  else
  {
    sub_1001C5140(v21, v17, type metadata accessor for BeneficiaryInfoRecord);
    sub_1001C51A8(v17, v15, type metadata accessor for BeneficiaryInfoRecord);
    v30 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v31 = (v13 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    sub_1001C5140(v15, v32 + v30, type metadata accessor for BeneficiaryInfoRecord);
    *(v32 + v31) = a2;
    v33 = (v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v33 = a3;
    v33[1] = v37;
    v34 = type metadata accessor for TaskPriority();
    (*(*(v34 - 8) + 56))(v10, 1, 1, v34);
    v35 = swift_allocObject();
    v35[2] = 0;
    v35[3] = 0;
    v35[4] = a2;
    v35[5] = sub_1001C5400;
    v35[6] = v32;
    swift_retain_n();

    sub_1000BCD5C(0, 0, v10, &unk_1003448E0, v35);

    return sub_1001C5600(v17, type metadata accessor for BeneficiaryInfoRecord);
  }
}

void sub_1001C27AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v40 = a3;
  v37 = a4;
  v38 = a1;
  v6 = type metadata accessor for BeneficiaryInfoRecord();
  v7 = v6 - 8;
  v35 = *(v6 - 8);
  v8 = *(v35 + 64);
  __chkstk_darwin(v6);
  v36 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005814(&qword_1003E0D30, qword_100344420);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  v14 = (a2 + *(v7 + 32));
  v15 = *v14;
  v16 = v14[1];
  v17 = (a2 + *(v7 + 28));
  v18 = *v17;
  v19 = v17[1];
  v20.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v33 = v16;
  v34 = v15;
  v21 = String._bridgeToObjectiveC()();
  if (v19)
  {
    v19 = String._bridgeToObjectiveC()();
  }

  v22 = [objc_allocWithZone(AABeneficiaryInfo) initWithBeneficiaryID:v20.super.isa benefactorAltDSID:v21 handle:v19];

  v23 = v40;
  (*(v10 + 16))(v13, v40 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner__inheritanceRequestManager, v9);
  Dependency.wrappedValue.getter();
  (*(v10 + 8))(v13, v9);
  v24 = v41;
  v25 = v36;
  sub_1001C51A8(a2, v36, type metadata accessor for BeneficiaryInfoRecord);
  v26 = (*(v35 + 80) + 48) & ~*(v35 + 80);
  v27 = swift_allocObject();
  v28 = v37;
  v29 = v38;
  v27[2] = v23;
  v27[3] = v29;
  v30 = v39;
  v27[4] = v28;
  v27[5] = v30;
  sub_1001C5140(v25, v27 + v26, type metadata accessor for BeneficiaryInfoRecord);
  v31 = v29;

  sub_1001F9660(v22, v34, v33, sub_1001C5840, v27);
}

uint64_t sub_1001C2A80(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, void, void), uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F78 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAB48);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "👾 Failed cleaning up beneficiary with error: %@", v14, 0xCu);
      sub_100008D3C(v15, &unk_1003D9140, &qword_10033E640);
    }

    swift_errorRetain();

    sub_1001C58B8(a3, 0, a1, a2, a2, "%s Finished reporting failed event.");
  }

  else
  {
    if (qword_1003D7F78 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAB48);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "🌞 Successfully completed cleaning up beneficiary.", v20, 2u);
    }

    sub_1001C58B8(a3, 1, 0, a2, a2, "%s Finished reporting successful event.");
  }

  v21 = type metadata accessor for BeneficiaryInfoRecord();
  return a4(a1, *(a6 + *(v21 + 20)), *(a6 + *(v21 + 20) + 8));
}

uint64_t sub_1001C2D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v6[10] = v7;
  v8 = *(v7 - 8);
  v6[11] = v8;
  v9 = *(v8 + 64) + 15;
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_1001C2E20, 0, 0);
}

uint64_t sub_1001C2E20()
{
  v1 = v0[7];
  v2 = kInheritanceCleanupStaleRecordsEventName;
  sub_1001C16AC();
  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_opt_self() analyticsEventWithName:v2 altDSID:v4 flowID:0];
  v0[13] = v5;

  if (v5)
  {
    v31 = v0[7];
    v6 = sub_1001C1920();
    if (v6)
    {
      v7 = v6;
      type metadata accessor for InheritanceRecordsCleaner();
      v8 = sub_1001C3E34();
      [v8 securityLevelForAccount:v7];
    }

    v19 = v0[11];
    v18 = v0[12];
    v20 = v0[10];
    v21 = v0[7];
    isa = UInt._bridgeToObjectiveC()().super.super.isa;
    [v5 setObject:isa forKeyedSubscript:kAAAnalyticsSecurityLevel];

    (*(v19 + 16))(v18, v21 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner__cdpController, v20);
    Dependency.wrappedValue.getter();
    (*(v19 + 8))(v18, v20);
    v23 = [objc_allocWithZone(ACAccountStore) init];
    v24 = [v23 aa_primaryAppleAccount];

    if (v24)
    {
      v25 = [v24 aa_personID];

      if (v25)
      {
        [objc_opt_self() isICDPEnabledForDSID:v25];
      }
    }

    v26 = v0[7];
    v27 = Bool._bridgeToObjectiveC()().super.super.isa;
    sub_10000839C(v0 + 2);
    [v5 setObject:v27 forKeyedSubscript:kAAAnalyticsCdpStatus];

    v28 = v5;
    sub_1001BEA98(v5);
    v29 = swift_task_alloc();
    v0[14] = v29;
    *v29 = v0;
    v29[1] = sub_1001C3214;
    v30 = v0[7];

    return sub_1001BFBE4(v5);
  }

  else
  {
    if (qword_1003D7F78 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAB48);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "createEvent: Self is nil. Aborting Report Event.", v12, 2u);
    }

    v13 = v0[8];
    v14 = v0[9];

    v13(0);
    v15 = v0[12];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1001C3214()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *v0;

  v5 = swift_task_alloc();
  *(v1 + 120) = v5;
  *v5 = v4;
  v5[1] = sub_1001C3384;
  v6 = *(v1 + 56);

  return sub_1001C0F7C(v3);
}

uint64_t sub_1001C3384()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return _swift_task_switch(sub_1001C3480, 0, 0);
}

uint64_t sub_1001C3480()
{
  v19 = v0;
  if (qword_1003D7F78 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = *(v0 + 56);
  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAB48);
  v4 = v1;

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 104);
    v8 = *(v0 + 56);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_10021145C(*(v8 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName), *(v8 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName + 8), &v18);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v7;
    *v10 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s - Event created %@", v9, 0x16u);
    sub_100008D3C(v10, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v11);
  }

  v13 = *(v0 + 104);
  v14 = *(v0 + 72);
  (*(v0 + 64))(v13);

  v15 = *(v0 + 96);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1001C3690()
{
  v1 = OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner__inheritanceStorage;
  v2 = sub_100005814(&qword_1003E1970, &qword_1003446B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner__inheritanceRequestManager;
  v4 = sub_100005814(&qword_1003E0D30, qword_100344420);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner__followUpController;
  v6 = sub_100005814(&qword_1003DB0C0, &unk_10033FC00);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner__cdpController;
  v8 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner__accountStore;
  v10 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner__akAccountManager;
  v12 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner__keychainManager;
  v14 = sub_100005814(&qword_1003E1670, &qword_1003447F0);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = *(v0 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_analyticsReporter);
  swift_unknownObjectRelease();
  v16 = *(v0 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName + 8);

  return v0;
}

uint64_t sub_1001C38F8()
{
  sub_1001C3690();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InheritanceRecordsCleaner()
{
  result = qword_1003E1708;
  if (!qword_1003E1708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001C39A4()
{
  sub_10000DAB8(319, &qword_1003E1160, &unk_1003E01A0, &qword_1003443F0);
  if (v1 <= 0x3F)
  {
    v14 = *(v0 - 8) + 64;
    sub_1001C3C68(319, &qword_1003E0CA0, type metadata accessor for InheritanceRequestManager);
    if (v3 <= 0x3F)
    {
      v15 = *(v2 - 8) + 64;
      sub_10000DAB8(319, &qword_1003DB700, &unk_1003DACE0, &unk_10033F920);
      if (v5 <= 0x3F)
      {
        v16 = *(v4 - 8) + 64;
        sub_10000DAB8(319, qword_1003DB720, &unk_1003DACD0, &unk_10033F020);
        if (v7 <= 0x3F)
        {
          v17 = *(v6 - 8) + 64;
          sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
          if (v9 <= 0x3F)
          {
            v18 = *(v8 - 8) + 64;
            sub_1001C3C68(319, &qword_1003DB710, sub_10000DA6C);
            if (v11 <= 0x3F)
            {
              v19 = *(v10 - 8) + 64;
              sub_10000DAB8(319, qword_1003E1350, &qword_1003E0400, &qword_100344870);
              if (v13 <= 0x3F)
              {
                v20 = *(v12 - 8) + 64;
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1001C3C68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Dependency();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1001C3CBC()
{
  v1 = (*v0 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1001C3D34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  v7 = sub_100005814(a3, a4);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v13 - v10;
  (*(v8 + 16))(&v13 - v10, *v5 + *a5, v7);
  Dependency.wrappedValue.getter();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1001C3E34()
{
  v1 = sub_100005814(&unk_1003E1260, &qword_10033FBA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v7 - v4;
  (*(v2 + 16))(v7 - v4, *v0 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner__akAccountManager, v1);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v5, v1);
  return v7[1];
}

unint64_t sub_1001C3F38(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = _HashTable.previousHole(before:)();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_1001C5E58(&qword_1003DB0B8, &type metadata accessor for UUID);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(type metadata accessor for CustodianRecoveryInfoRecord() - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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

uint64_t sub_1001C427C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

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

uint64_t sub_1001C442C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v49._countAndFlagsBits = a5;
  v49._object = a6;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  if (a4)
  {
    v12 = a3;
  }

  else
  {
    v12 = 0;
  }

  v48 = v12;
  v13 = 0xE000000000000000;
  if (a4)
  {
    v13 = a4;
  }

  v47 = v13;

  v14 = 0;
  v44 = v11;
  v45 = v7;
  v46 = a2;
  while (v10)
  {
LABEL_16:
    v18 = __clz(__rbit64(v10)) | (v14 << 6);
    v19 = (*(a1 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(a1 + 56) + 8 * v18);

    swift_errorRetain();

    v23._countAndFlagsBits = v48;
    v23._object = v47;
    String.append(_:)(v23);

    v24._countAndFlagsBits = 58;
    v24._object = 0xE100000000000000;
    String.append(_:)(v24);
    String.append(_:)(v49);
    v25._countAndFlagsBits = 59;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
    v26._countAndFlagsBits = v20;
    v26._object = v21;
    String.append(_:)(v26);
    swift_beginAccess();
    swift_errorRetain();
    v27 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *a2;
    v51 = *a2;
    *a2 = 0x8000000000000000;
    v31 = sub_1003084DC(0, 0xE000000000000000);
    v32 = *(v29 + 16);
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_29;
    }

    v35 = v30;
    if (*(v29 + 24) >= v34)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v38 = v51;
        if (v30)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1002CFE94();
        v38 = v51;
        if (v35)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      sub_1002CC470(v34, isUniquelyReferenced_nonNull_native);
      v36 = sub_1003084DC(0, 0xE000000000000000);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_31;
      }

      v31 = v36;
      v38 = v51;
      if (v35)
      {
LABEL_9:
        v15 = v38[7];
        v16 = *(v15 + 8 * v31);
        *(v15 + 8 * v31) = v22;

        goto LABEL_10;
      }
    }

    v38[(v31 >> 6) + 8] |= 1 << v31;
    v39 = (v38[6] + 16 * v31);
    *v39 = 0;
    v39[1] = 0xE000000000000000;
    *(v38[7] + 8 * v31) = v22;
    v40 = v38[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_30;
    }

    v38[2] = v42;
LABEL_10:
    v10 &= v10 - 1;
    a2 = v46;
    *v46 = v38;
    swift_endAccess();

    v11 = v44;
    v7 = v45;
  }

  while (1)
  {
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v17 >= v11)
    {
    }

    v10 = *(v7 + 8 * v17);
    ++v14;
    if (v10)
    {
      v14 = v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1001C4714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v70 = a2;
  v9 = type metadata accessor for InheritanceInvitationRecord();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v62 = &v60 - v16;
  v17 = __chkstk_darwin(v15);
  v69 = &v60 - v18;
  v65 = v19;
  __chkstk_darwin(v17);
  v21 = &v60 - v20;
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a4;
  v61 = a4;
  v64 = v22;
  v22[4] = a5;
  v23 = swift_allocObject();
  v60 = a3;

  v66 = a5;

  v24 = _swiftEmptyArrayStorage;
  v25 = sub_100308AA8(_swiftEmptyArrayStorage);
  v63 = v23;
  *(v23 + 16) = v25;
  v26 = *(a1 + 16);
  v67 = v10;
  if (v26)
  {
    v27 = *(v10 + 80);
    v28 = *(v10 + 72);
    v68 = ((v27 + 32) & ~v27);
    v29 = &v68[a1];
    do
    {
      sub_1001C51A8(v29, v21, type metadata accessor for InheritanceInvitationRecord);
      if (*&v21[*(v9 + 32)] == 4)
      {
        sub_1001C5140(v21, v14, type metadata accessor for InheritanceInvitationRecord);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1002E03F4(0, v24[2] + 1, 1);
          v24 = aBlock[0];
        }

        v32 = v24[2];
        v31 = v24[3];
        if (v32 >= v31 >> 1)
        {
          sub_1002E03F4(v31 > 1, v32 + 1, 1);
          v24 = aBlock[0];
        }

        v24[2] = v32 + 1;
        sub_1001C5140(v14, &v68[v24 + v32 * v28], type metadata accessor for InheritanceInvitationRecord);
      }

      else
      {
        sub_1001C5600(v21, type metadata accessor for InheritanceInvitationRecord);
      }

      v29 += v28;
      --v26;
    }

    while (v26);
  }

  v33 = v24[2];
  if (v33)
  {
    if (qword_1003D7F78 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100008D04(v34, qword_1003FAB48);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v70;
    v39 = v67;
    if (v37)
    {
      v40 = swift_slowAlloc();
      *v40 = 134217984;
      *(v40 + 4) = v24[2];

      _os_log_impl(&_mh_execute_header, v35, v36, "%ld declined record(s) found, starting cleanup", v40, 0xCu);
    }

    else
    {
    }

    v45 = v69;
    v46 = *(v38 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_queue);
    v47 = *(v39 + 80);
    v48 = v24 + ((v47 + 32) & ~v47);
    v67 = *(v39 + 72);
    v68 = v46;
    v65 = (v65 + ((v47 + 16) & ~v47) + 7) & 0xFFFFFFFFFFFFFFF8;
    v66 = (v47 + 16) & ~v47;
    v49 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
    v51 = v62;
    v50 = v63;
    do
    {
      sub_1001C51A8(v48, v45, type metadata accessor for InheritanceInvitationRecord);
      sub_1001C51A8(v45, v51, type metadata accessor for InheritanceInvitationRecord);
      v52 = swift_allocObject();
      sub_1001C5140(v51, v52 + v66, type metadata accessor for InheritanceInvitationRecord);
      *(v52 + v65) = v38;
      *(v52 + v49) = v50;
      v53 = type metadata accessor for AsyncOperation();
      v54 = objc_allocWithZone(v53);
      v54[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] = 0;
      v55 = &v54[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_workBlock];
      *v55 = sub_1001C4FAC;
      v55[1] = v52;
      v72.receiver = v54;
      v72.super_class = v53;
      v38 = v70;

      v56 = objc_msgSendSuper2(&v72, "init");
      [v68 addOperation:v56];

      v45 = v69;
      sub_1001C5600(v69, type metadata accessor for InheritanceInvitationRecord);
      v48 += v67;
      --v33;
    }

    while (v33);

    v57 = swift_allocObject();
    v57[2] = v50;
    v57[3] = sub_1001C4DFC;
    v57[4] = v64;
    aBlock[4] = sub_1001C5064;
    aBlock[5] = v57;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031EF0;
    aBlock[3] = &unk_1003AD3E8;
    v58 = _Block_copy(aBlock);

    [v68 addBarrierBlock:v58];
    _Block_release(v58);
  }

  else
  {

    if (qword_1003D7F78 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100008D04(v41, qword_1003FAB48);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "No declined records found. Aborting cleanup.", v44, 2u);
    }

    sub_1001BC4F0(v60, v61, v66);
  }
}

uint64_t sub_1001C4E08()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001C4E40()
{
  v1 = (type metadata accessor for InheritanceInvitationRecord() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = *(v5 + v1[7] + 8);

  v9 = *(v5 + v1[8] + 8);

  v10 = *(v5 + v1[9] + 8);

  v7(v5 + v1[11], v6);
  sub_100012324(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  v11 = *(v0 + v3);

  v12 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1001C4FAC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for InheritanceInvitationRecord() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001C19D8(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_1001C5070(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001C50D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C5140(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001C51A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001C5210()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v17 = *(*(v1 - 1) + 64);
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);
  v7 = *(v0 + v2 + v1[5] + 8);

  v8 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v9 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v9, 1, v4))
  {
    v6(v3 + v9, v4);
  }

  v10 = (v17 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v3 + v1[12] + 8);

  v13 = *(v3 + v1[14] + 8);

  v14 = *(v0 + v10);

  v15 = *(v0 + v11 + 8);

  return _swift_deallocObject(v0, v11 + 16);
}

void sub_1001C5400(void *a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = (v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  sub_1001C27AC(a1, v1 + v4, v6, v8, v9);
}

uint64_t sub_1001C54D8(void (*a1)(void), void (*a2)(void))
{
  a1(v2[2]);
  a2(v2[4]);
  v4 = v2[6];

  return _swift_deallocObject(v2, 56);
}

uint64_t sub_1001C5538(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000082A8;

  return sub_1001C2D50(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001C5600(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001C5660()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord();
  v2 = (*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80);
  v15 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  v4 = *(v0 + 40);

  v5 = v0 + v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v2, v6);
  v9 = *(v0 + v2 + v1[5] + 8);

  v10 = *(v0 + v2 + v1[6] + 8);

  sub_100012324(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  v8(v0 + v2 + v1[8], v6);
  sub_100012324(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v11 = v1[11];
  if (!(*(v7 + 48))(v0 + v2 + v11, 1, v6))
  {
    v8(v5 + v11, v6);
  }

  v12 = *(v5 + v1[12] + 8);

  v13 = *(v5 + v1[14] + 8);

  return _swift_deallocObject(v0, v2 + v15);
}

uint64_t sub_1001C5840(void *a1)
{
  v3 = *(type metadata accessor for BeneficiaryInfoRecord() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_1001C2A80(a1, v4, v5, v6, v7, v8);
}

void sub_1001C58B8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, const char *a6)
{
  if (a1)
  {
    v10 = a1;
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    [v10 setObject:isa forKeyedSubscript:kAAFDidSucceed];

    if (a3)
    {
      a3 = _convertErrorToNSError(_:)();
    }

    [v10 populateUnderlyingErrorsStartingWithRootError:a3];

    if (qword_1003D7F78 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAB48);
    v13 = v10;

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      osloga = a6;
      v38 = swift_slowAlloc();
      *v16 = 136315394;
      *(v16 + 4) = sub_10021145C(*(a4 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName), *(a4 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName + 8), &v38);
      *(v16 + 12) = 2080;
      v17 = a5;
      v18 = [v13 debugDescription];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = a4;
      v22 = v21;

      a5 = v17;
      v23 = sub_10021145C(v19, v22, &v38);
      a4 = v20;

      *(v16 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s - Reporting Record Cleaning Event %s", v16, 0x16u);
      swift_arrayDestroy();
      a6 = osloga;
    }

    [*(a4 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_analyticsReporter) sendEvent:v13];

    oslog = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v38 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_10021145C(*(a5 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName), *(a5 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName + 8), &v38);
      _os_log_impl(&_mh_execute_header, oslog, v24, a6, v25, 0xCu);
      sub_10000839C(v26);

      goto LABEL_16;
    }
  }

  else
  {
    if (qword_1003D7F78 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAB48);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v38 = v32;
      *v30 = 136315394;
      *(v30 + 4) = sub_10021145C(*(a4 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName), *(a4 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName + 8), &v38);
      *(v30 + 12) = 2112;
      *(v30 + 14) = 0;
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "%s - Event is nil: %@", v30, 0x16u);
      sub_100008D3C(v31, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v32);
    }

    oslog = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v38 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_10021145C(*(a5 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName), *(a5 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName + 8), &v38);
      _os_log_impl(&_mh_execute_header, oslog, v33, a6, v34, 0xCu);
      sub_10000839C(v35);

      goto LABEL_16;
    }
  }

LABEL_16:
}

uint64_t sub_1001C5E58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001C5EB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1003D7F68 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAB18);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Benefactor Manatee migration started.", v9, 2u);
  }

  v10 = sub_1000080F8((v3 + 16), *(v3 + 40));
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v3;
  v12 = *v10;

  sub_10021AD90(sub_1001C84E8, v11);
}

uint64_t sub_1001C6010(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v10 - 8);
  v52 = v10;
  v11 = *(v51 + 64);
  __chkstk_darwin(v10);
  v49 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  v13 = *(v48 + 64);
  __chkstk_darwin(v50);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS.QoSClass();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for BenefactorInfoRecord();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAB18);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v53 = a1;
      aBlock[0] = v30;
      *v29 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v31 = String.init<A>(describing:)();
      v33 = a3;
      v34 = sub_10021145C(v31, v32, aBlock);

      *(v29 + 4) = v34;
      a3 = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to fetch Benefactors. Aborting migration : %s", v29, 0xCu);
      sub_10000839C(v30);
    }

    return a3(a1);
  }

  else
  {
    v46 = a3;
    v47 = a4;
    v36 = *(a1 + 16);
    if (v36)
    {
      v37 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
      v38 = *(v23 + 72);
      do
      {
        sub_1001C84F8(v37, v25);
        sub_1001C65D8(v25);
        sub_1001C855C(v25);
        v37 += v38;
        --v36;
      }

      while (v36);
    }

    v39 = *(a5 + 176);
    sub_100071C74();
    (*(v17 + 104))(v20, enum case for DispatchQoS.QoSClass.default(_:), v16);
    v40 = static OS_dispatch_queue.global(qos:)();
    (*(v17 + 8))(v20, v16);
    v41 = swift_allocObject();
    v42 = v47;
    v41[2] = v46;
    v41[3] = v42;
    v41[4] = a5;
    aBlock[4] = sub_1001C85F8;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031EF0;
    aBlock[3] = &unk_1003AD538;
    v43 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v53 = _swiftEmptyArrayStorage;
    sub_10016FE34(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000383E4();
    v44 = v49;
    v45 = v52;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v43);

    (*(v51 + 8))(v44, v45);
    (*(v48 + 8))(v15, v50);
  }
}

void sub_1001C65D8(uint64_t a1)
{
  v2 = type metadata accessor for BenefactorInfoRecord();
  v57 = *(v2 - 1);
  v3 = *(v57 + 64);
  v4 = __chkstk_darwin(v2);
  v5 = v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v59 = v54 - v7;
  v8 = __chkstk_darwin(v6);
  v61 = v54 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = v54 - v11;
  v13 = __chkstk_darwin(v10);
  v60 = v54 - v14;
  __chkstk_darwin(v13);
  v16 = v54 - v15;
  if (qword_1003D7F68 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_100008D04(v17, qword_1003FAB18);
  sub_1001C84F8(a1, v16);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v54[1] = v18;
    v22 = v21;
    v23 = swift_slowAlloc();
    v55 = a1;
    v24 = v23;
    v62 = v23;
    *v22 = 136315138;
    type metadata accessor for UUID();
    v56 = v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_10016FE34(&qword_1003D9150, &type metadata accessor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    sub_1001C855C(v16);
    v28 = sub_10021145C(v25, v27, &v62);
    v5 = v56;

    *(v22 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v19, v20, "Migrating Records for beneficiaryID - %s.", v22, 0xCu);
    sub_10000839C(v24);
    a1 = v55;
  }

  else
  {

    sub_1001C855C(v16);
  }

  v29 = v61;
  if (*(a1 + v2[9]))
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "BenefactorInfoRecord is already in Manatee.", v32, 2u);
    }
  }

  else
  {
    v33 = a1;
    sub_1001C84F8(a1, v12);
    v34 = type metadata accessor for UUID();
    v35 = *(*(v34 - 8) + 16);
    v35(v29, v12, v34);
    v35(v29 + v2[7], &v12[v2[7]], v34);
    v36 = v2[8];
    if (v12[v2[9]])
    {
      v37 = *&v12[v36];
      v38 = *&v12[v36 + 8];
      v39 = (v29 + v36);
      *v39 = v37;
      v39[1] = v38;
      sub_100015D6C(v37, v38);
    }

    else
    {
      *(v29 + v36) = xmmword_10033F8D0;
    }

    v40 = &v12[v2[5]];
    v42 = *v40;
    v41 = *(v40 + 1);

    sub_1001C855C(v12);
    v43 = (v29 + v2[5]);
    *v43 = v42;
    v43[1] = v41;
    *(v29 + v2[6]) = 2;
    *(v29 + v2[9]) = 1;
    v44 = v60;
    sub_1001C861C(v29, v60);
    v45 = v58;
    dispatch_group_enter(*(v58 + 176));
    v46 = sub_1000080F8((v45 + 16), *(v45 + 40));
    v47 = swift_allocObject();
    swift_weakInit();
    v48 = v59;
    sub_1001C84F8(v44, v59);
    sub_1001C84F8(v33, v5);
    v49 = *(v57 + 80);
    v50 = (v49 + 24) & ~v49;
    v51 = (v3 + v49 + v50) & ~v49;
    v52 = swift_allocObject();
    *(v52 + 16) = v47;
    sub_1001C861C(v48, v52 + v50);
    sub_1001C861C(v5, v52 + v51);
    v53 = *v46;

    sub_10021BA80(v44, sub_1001C8844, v52);

    sub_1001C855C(v44);
  }
}

uint64_t sub_1001C6B40(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  if (qword_1003D7F68 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAB18);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Benefactor Manatee migration complete.", v8, 2u);
  }

  v9 = *(a3 + 184);
  swift_errorRetain();
  a1(v9);
}

uint64_t sub_1001C6C5C()
{
  sub_10000839C((v0 + 16));
  sub_1001C8BF0(v0 + 56);

  v1 = *(v0 + 184);

  return swift_deallocClassInstance();
}

uint64_t sub_1001C6CF4()
{
  v1 = v0;
  if (qword_1003D7F68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAB18);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Manatee status changed, fetching new manatee status.", v5, 2u);
  }

  v6 = sub_1000080F8((v1 + 16), *(v1 + 40));
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = *v6;

  sub_10021E8F0(sub_1001C8DFC, v7);
}

void sub_1001C6E38(uint64_t a1, char a2)
{
  if (a2)
  {
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100008D04(v3, qword_1003FAB18);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v18[0] = v6;
      *v5 = 136315138;
      v18[3] = a1;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v7 = String.init<A>(describing:)();
      v9 = sub_10021145C(v7, v8, v18);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Failed to fetch manatee status: %s", v5, 0xCu);
      sub_10000839C(v6);

      return;
    }

    goto LABEL_18;
  }

  if ((a1 & 1) == 0)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA88);
    oslog = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v15, "Account is not manatee, skipping manatee migration.", v16, 2u);
    }

LABEL_18:

    return;
  }

  if (qword_1003D7F68 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAB18);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Account is now manatee, kicking off migration.", v13, 2u);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1001C5EB0(OSTransaction.complete(), 0);
  }
}

void sub_1001C71DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v86 = a3;
  v87 = a4;
  v85 = type metadata accessor for UUID();
  v83 = *(v85 - 8);
  v6 = *(v83 + 64);
  __chkstk_darwin(v85);
  v82 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BenefactorInfoRecord();
  v81 = *(v7 - 8);
  v8 = v81[8];
  v9 = __chkstk_darwin(v7 - 8);
  v84 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v75 - v10;
  v12 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v75 - v14);
  sub_100012D04(a1, &v75 - v14, &unk_1003E1DD0, &qword_1003444D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100008D04(v17, qword_1003FAB18);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v90[0] = v21;
      *v20 = 136315138;
      *&v88[0] = v16;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v22 = String.init<A>(describing:)();
      v24 = sub_10021145C(v22, v23, v90);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to save BenefactorInfoRecord - %s", v20, 0xCu);
      sub_10000839C(v21);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v26 = *(Strong + 184);
      *(Strong + 184) = v16;
      swift_errorRetain();
    }

    swift_beginAccess();
    v27 = swift_weakLoadStrong();
    if (v27)
    {
      v28 = *(v27 + 176);

      dispatch_group_leave(v28);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    v30 = sub_100008D04(v29, qword_1003FAB18);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "BenefactorInfoRecord may have been accepted pre-CDP.\nRe-accepting and notifying the owner to prompt a new key transfer.", v33, 2u);
    }

    swift_beginAccess();
    v34 = swift_weakLoadStrong();
    v35 = v87;
    if (v34)
    {
      sub_10016FFDC(v34 + 56, v90);

      sub_1001C84F8(v35, v11);
      v36 = (*(v81 + 80) + 24) & ~*(v81 + 80);
      v37 = swift_allocObject();
      *(v37 + 16) = a2;
      v38 = v37;
      v76 = v37;
      sub_1001C861C(v11, v37 + v36);
      v39 = objc_allocWithZone(type metadata accessor for InheritanceInvitationActionAnalyticsEvent());
      v80 = v30;
      v81 = v39;
      sub_100005814(&qword_1003E30D0, &unk_100340690);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10033E5C0;
      strcpy((inited + 32), "isFamilyInvite");
      *(inited + 47) = -18;

      *(inited + 48) = Bool._bridgeToObjectiveC()();
      *(inited + 56) = 0xD000000000000013;
      *(inited + 64) = 0x8000000100330290;
      *(inited + 72) = Int._bridgeToObjectiveC()();
      sub_1003093D0(inited);
      swift_setDeallocating();
      sub_100005814(&unk_1003E8C10, &unk_100344990);
      swift_arrayDestroy();
      v41 = AAFTimedAnalyticsEvent.init(eventName:initialData:)();
      v42 = swift_initStackObject();
      *(v42 + 16) = xmmword_10033EB30;
      strcpy((v42 + 32), "didCDPRepair");
      *(v42 + 45) = 0;
      *(v42 + 46) = -5120;
      LOBYTE(v88[0]) = 3;
      String.init<A>(describing:)();
      v43 = String._bridgeToObjectiveC()();

      *(v42 + 48) = v43;
      sub_1003093D0(v42);
      swift_setDeallocating();
      sub_100008D3C(v42 + 32, &unk_1003E8C10, &unk_100344990);
      v78 = v41;
      dispatch thunk of AAFTimedAnalyticsEvent.appendEvent(data:)();

      v44 = swift_allocObject();
      *(v44 + 16) = 1;
      v77 = sub_1001C8A14;
      *(v44 + 24) = v41;
      *(v44 + 32) = sub_1001C8A14;
      *(v44 + 40) = v38;
      v79 = sub_1000080F8(v91, v91[3]);
      sub_10016FFDC(v90, v88);
      v45 = v82;
      v46 = v83;
      v47 = *(v83 + 16);
      v81 = v15;
      v48 = v85;
      v47(v82, v86, v85);
      v49 = (*(v46 + 80) + 136) & ~*(v46 + 80);
      v50 = (v6 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
      v51 = swift_allocObject();
      v52 = v88[5];
      *(v51 + 80) = v88[4];
      *(v51 + 96) = v52;
      *(v51 + 112) = v88[6];
      *(v51 + 128) = v89;
      v53 = v88[1];
      *(v51 + 16) = v88[0];
      *(v51 + 32) = v53;
      v54 = v88[3];
      *(v51 + 48) = v88[2];
      *(v51 + 64) = v54;
      v55 = v51 + v49;
      v35 = v87;
      v56 = v48;
      v15 = v81;
      (*(v46 + 32))(v55, v45, v56);
      v58 = v77;
      v57 = v78;
      *(v51 + v50) = v78;
      v59 = v51 + ((v50 + 15) & 0xFFFFFFFFFFFFFFF8);
      v60 = v76;
      *v59 = v58;
      *(v59 + 8) = v60;
      *(v59 + 16) = 1;
      v61 = (v51 + ((v50 + 39) & 0xFFFFFFFFFFFFFFF8));
      *v61 = sub_10016FFCC;
      v61[1] = v44;
      v62 = *v79;
      v63 = v57;
      swift_retain_n();
      v64 = v63;

      sub_10021B0E8(v86, sub_100170158, v51);

      sub_1001C8BF0(v90);
    }

    v65 = v35;
    v66 = v84;
    sub_1001C84F8(v65, v84);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v90[0] = v70;
      *v69 = 136315138;
      sub_10016FE34(&qword_1003D9150, &type metadata accessor for UUID);
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      v73 = v72;
      sub_1001C855C(v66);
      v74 = sub_10021145C(v71, v73, v90);

      *(v69 + 4) = v74;
      _os_log_impl(&_mh_execute_header, v67, v68, "Manatee migration complete for BenefactorInfoRecord with beneficiaryID - %s", v69, 0xCu);
      sub_10000839C(v70);
    }

    else
    {

      sub_1001C855C(v66);
    }

    sub_100008D3C(v15, &unk_1003E1DD0, &qword_1003444D0);
  }
}

void sub_1001C7BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BenefactorInfoRecord();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100008D04(v10, qword_1003FAB18);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v29 = v14;
      *v13 = 136315138;
      v28[0] = a1;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v15 = String.init<A>(describing:)();
      v17 = sub_10021145C(v15, v16, &v29);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to notify owner of acceptance - %s", v13, 0xCu);
      sub_10000839C(v14);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v19 = *(Strong + 184);
      *(Strong + 184) = a1;
      swift_errorRetain();
    }

    swift_beginAccess();
    v20 = swift_weakLoadStrong();
    if (v20)
    {
      v21 = *(v20 + 176);

      dispatch_group_leave(v21);
    }

    else
    {
    }
  }

  else
  {
    swift_beginAccess();
    v22 = swift_weakLoadStrong();
    if (v22)
    {
      v23 = sub_1000080F8((v22 + 16), *(v22 + 40));
      v24 = swift_allocObject();
      swift_weakInit();
      sub_1001C84F8(a3, v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      v25 = (*(v7 + 80) + 40) & ~*(v7 + 80);
      v26 = swift_allocObject();
      v26[2] = v24;
      v26[3] = sub_1001C8C44;
      v26[4] = a2;
      sub_1001C861C(v9, v26 + v25);
      v27 = *v23;
      swift_retain_n();

      sub_10021C184(a3, sub_1001C8D84, v26);
    }
  }
}

void sub_1001C7F5C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 176);

    dispatch_group_leave(v1);
  }
}

uint64_t sub_1001C7FC8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v45 = a5;
  v46 = a4;
  v7 = type metadata accessor for BenefactorInfoRecord();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v44 - v12;
  v14 = sub_100005814(&unk_1003D9220, &unk_10033E8C0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v44 - v16);
  sub_100012D04(a1, &v44 - v16, &unk_1003D9220, &unk_10033E8C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAB18);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Error removing non-manatee Benefactor record.", v22, 2u);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v24 = *(Strong + 184);
      *(Strong + 184) = v18;
      swift_errorRetain();
    }

    swift_errorRetain();
    a3(v18);
  }

  else
  {
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAB18);
    sub_1001C84F8(v45, v13);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    v29 = os_log_type_enabled(v27, v28);
    v44 = a3;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v47[0] = v31;
      *v30 = 136315138;
      v32 = &v13[*(v7 + 20)];
      v34 = *v32;
      v33 = v32[1];

      sub_1001C855C(v13);
      v35 = sub_10021145C(v34, v33, v47);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "Notified benefactor (%s).", v30, 0xCu);
      sub_10000839C(v31);
    }

    else
    {

      sub_1001C855C(v13);
    }

    sub_1001C84F8(v45, v11);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v47[0] = v39;
      *v38 = 136315138;
      type metadata accessor for UUID();
      sub_10016FE34(&qword_1003D9150, &type metadata accessor for UUID);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      sub_1001C855C(v11);
      v43 = sub_10021145C(v40, v42, v47);

      *(v38 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v36, v37, "Manatee migration complete for BenefactorInfoRecord with beneficiaryID - %s", v38, 0xCu);
      sub_10000839C(v39);
    }

    else
    {

      sub_1001C855C(v11);
    }

    v44(0);
    return sub_100008D3C(v17, &unk_1003D9220, &unk_10033E8C0);
  }
}

uint64_t sub_1001C84F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BenefactorInfoRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C855C(uint64_t a1)
{
  v2 = type metadata accessor for BenefactorInfoRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001C85B8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1001C8604(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001C861C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BenefactorInfoRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C8680()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_1001C86B8()
{
  v1 = (type metadata accessor for BenefactorInfoRecord() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = (v4 + v2 + v3) & ~v2;
  v6 = *(v0 + 16);

  v7 = v0 + v3;
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 8);
  v9(v7, v8);
  v10 = *(v7 + v1[7] + 8);

  v9(v7 + v1[9], v8);
  sub_100012324(*(v7 + v1[10]), *(v7 + v1[10] + 8));
  v9(v0 + v5, v8);
  v11 = *(v0 + v5 + v1[7] + 8);

  v9(v0 + v5 + v1[9], v8);
  sub_100012324(*(v0 + v5 + v1[10]), *(v0 + v5 + v1[10] + 8));

  return _swift_deallocObject(v0, v5 + v4);
}

void sub_1001C8844(uint64_t a1)
{
  v3 = *(type metadata accessor for BenefactorInfoRecord() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v3 + 64) + v4 + v5) & ~v4);

  sub_1001C71DC(a1, v6, v1 + v5, v7);
}

uint64_t sub_1001C88E4()
{
  v1 = (type metadata accessor for BenefactorInfoRecord() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);

  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2, v5);
  v7 = *(v0 + v2 + v1[7] + 8);

  v6(v0 + v2 + v1[9], v5);
  sub_100012324(*(v0 + v2 + v1[10]), *(v0 + v2 + v1[10] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

void sub_1001C8A14(uint64_t a1)
{
  v3 = *(type metadata accessor for BenefactorInfoRecord() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1001C7BAC(a1, v4, v5);
}

uint64_t sub_1001C8A88()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 40);
  }

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_1001C8AD0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 136) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_10000839C(v0 + 2);
  sub_10000839C(v0 + 7);
  sub_10000839C(v0 + 12);
  (*(v2 + 8))(v0 + v3, v1);

  v5 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  if (*v5)
  {
    v6 = v5[1];
  }

  v7 = (v4 + 39) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16);
}

uint64_t sub_1001C8C4C()
{
  v1 = (type metadata accessor for BenefactorInfoRecord() - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);

  v5 = *(v0 + 32);

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v2, v6);
  v8 = *(v0 + v2 + v1[7] + 8);

  v7(v0 + v2 + v1[9], v6);
  sub_100012324(*(v0 + v2 + v1[10]), *(v0 + v2 + v1[10] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_1001C8D84(uint64_t a1)
{
  v3 = *(type metadata accessor for BenefactorInfoRecord() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_1001C7FC8(a1, v4, v5, v6, v7);
}

void sub_1001C8E0C(void *a1)
{
  v2 = [*(*sub_1000080F8(a1 + 2 a1[5]) + 16)];
  if (v2)
  {

    v3 = objc_allocWithZone(type metadata accessor for InheritanceMigrationAnalyticsEvent());
    sub_100309C2C(_swiftEmptyArrayStorage);
    v4 = AAFTimedAnalyticsEvent.init(eventName:initialData:)();
    v5 = swift_allocObject();
    v5[2] = a1;
    v5[3] = v4;
    v5[4] = OSTransaction.complete();
    v5[5] = 0;
    v6 = qword_1003D7F68;

    v7 = v4;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAB18);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Starting beneficiary manatee migration.", v11, 2u);
    }

    v12 = sub_1000080F8(a1 + 7, a1[10]);
    v13 = swift_allocObject();
    v13[2] = sub_1001CC5D0;
    v13[3] = v5;
    v13[4] = a1;
    v14 = *v12;

    sub_100216650(sub_1001CC5E0, v13);
  }

  else
  {
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAB18);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Not logged in to AppleAccount, Aborting migration!", v18, 2u);
    }

    type metadata accessor for InheritanceError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001CC2A0(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
  }
}

void sub_1001C917C(void (*a1)(), uint64_t a2)
{
  v3 = v2;
  v6 = [*(*sub_1000080F8((v2 + 16) *(v2 + 40)) + 16)];
  if (v6)
  {

    v7 = objc_allocWithZone(type metadata accessor for InheritanceMigrationAnalyticsEvent());
    sub_100309C2C(_swiftEmptyArrayStorage);
    v8 = AAFTimedAnalyticsEvent.init(eventName:initialData:)();
    v9 = swift_allocObject();
    v9[2] = v3;
    v9[3] = v8;
    v9[4] = a1;
    v9[5] = a2;
    v10 = qword_1003D7F68;

    v11 = v8;

    if (v10 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAB18);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Starting beneficiary manatee migration.", v15, 2u);
    }

    v16 = sub_1000080F8((v3 + 56), *(v3 + 80));
    v17 = swift_allocObject();
    v17[2] = sub_1001CBD34;
    v17[3] = v9;
    v17[4] = v3;
    v18 = *v16;

    sub_100216650(sub_1001CBD40, v17);
  }

  else
  {
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAB18);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Not logged in to AppleAccount, Aborting migration!", v22, 2u);
    }

    type metadata accessor for InheritanceError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001CC2A0(&qword_1003D8040, type metadata accessor for InheritanceError);
    _BridgedStoredNSError.init(_:userInfo:)();
    a1();
  }
}

uint64_t sub_1001C94FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (*(a2 + 112) <= 0)
  {
    if (!a1)
    {
      return a4(a1);
    }

    goto LABEL_5;
  }

  if (a1)
  {
LABEL_5:
    v7 = _convertErrorToNSError(_:)();
    v8 = *(a2 + 112);
    goto LABEL_6;
  }

  v7 = 0;
LABEL_6:
  swift_beginAccess();
  v9 = *(*(a2 + 120) + 16);
  if ((AAUnderTest.getter() & 1) == 0)
  {
    sub_100005814(&qword_1003E30D0, &unk_100340690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033E5C0;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x800000010032DFF0;
    *(inited + 48) = Int._bridgeToObjectiveC()();
    *(inited + 56) = 0xD000000000000012;
    *(inited + 64) = 0x800000010032E010;
    *(inited + 72) = Int._bridgeToObjectiveC()();
    sub_1003093D0(inited);
    swift_setDeallocating();
    sub_100005814(&unk_1003E8C10, &unk_100344990);
    swift_arrayDestroy();
    dispatch thunk of AAFTimedAnalyticsEvent.completeEvent(withSuccess:error:additionalData:)();
  }

  return a4(a1);
}

uint64_t sub_1001C9694(uint64_t a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v74 = a3;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v72 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for DispatchQoS();
  v13 = *(v73 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v73);
  v71 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS.QoSClass();
  v70 = *(v16 - 8);
  v17 = *(v70 + 64);
  __chkstk_darwin(v16);
  v69 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for BeneficiaryInfoRecord();
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v78 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v26 = &v63 - v25;
  if (a2)
  {
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAB18);
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    sub_1000399DC(a1, 1);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v79 = a1;
      aBlock[0] = v31;
      *v30 = 136315138;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v32 = String.init<A>(describing:)();
      v34 = sub_10021145C(v32, v33, aBlock);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to fetch Beneficiaries. Aborting migration : %s", v30, 0xCu);
      sub_10000839C(v31);
    }

    return v74(a1);
  }

  else
  {
    v64 = v16;
    v65 = v13;
    v66 = v10;
    v67 = v9;
    v68 = a4;
    v36 = *(a1 + 16);
    v37 = v78;
    if (v36)
    {
      v38 = a1 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
      v39 = *(a5 + 96);
      v40 = *(v23 + 72);
      *&v24 = 136315138;
      v75 = v24;
      v76 = v40;
      v77 = a5;
      do
      {
        sub_1001CC4BC(v38, v26, type metadata accessor for BeneficiaryInfoRecord);
        if (qword_1003D7F68 != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for Logger();
        sub_100008D04(v49, qword_1003FAB18);
        sub_1001CC4BC(v26, v37, type metadata accessor for BeneficiaryInfoRecord);
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v50, v51))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          aBlock[0] = v42;
          *v41 = v75;
          type metadata accessor for UUID();
          v43 = v39;
          sub_1001CC2A0(&qword_1003D9150, &type metadata accessor for UUID);
          v44 = dispatch thunk of CustomStringConvertible.description.getter();
          v46 = v45;
          sub_1001CC524(v78, type metadata accessor for BeneficiaryInfoRecord);
          v47 = sub_10021145C(v44, v46, aBlock);
          v39 = v43;

          *(v41 + 4) = v47;
          _os_log_impl(&_mh_execute_header, v50, v51, "Migrating Records for beneficiaryID - %s.", v41, 0xCu);
          sub_10000839C(v42);
          v40 = v76;

          a5 = v77;
          v37 = v78;
        }

        else
        {

          sub_1001CC524(v37, type metadata accessor for BeneficiaryInfoRecord);
        }

        dispatch_group_enter(v39);
        v48 = swift_allocObject();
        swift_weakInit();
        sub_1001CBD50(v26, a5, v48);

        sub_1001CC524(v26, type metadata accessor for BeneficiaryInfoRecord);
        v38 += v40;
        --v36;
      }

      while (v36);
    }

    v52 = *(a5 + 96);
    sub_100071C74();
    v54 = v69;
    v53 = v70;
    v55 = v64;
    (*(v70 + 104))(v69, enum case for DispatchQoS.QoSClass.default(_:), v64);
    v56 = static OS_dispatch_queue.global(qos:)();
    (*(v53 + 8))(v54, v55);
    v57 = swift_allocObject();
    v58 = v68;
    v57[2] = v74;
    v57[3] = v58;
    v57[4] = a5;
    aBlock[4] = sub_1001CC27C;
    aBlock[5] = v57;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031EF0;
    aBlock[3] = &unk_1003AD700;
    v59 = _Block_copy(aBlock);

    v60 = v71;
    static DispatchQoS.unspecified.getter();
    v79 = _swiftEmptyArrayStorage;
    sub_1001CC2A0(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000383E4();
    v61 = v72;
    v62 = v67;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v59);

    (*(v66 + 8))(v61, v62);
    (*(v65 + 8))(v60, v73);
  }
}

uint64_t sub_1001C9EFC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  if (qword_1003D7F68 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAB18);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Beneficiary Manatee migration complete.", v8, 2u);
  }

  swift_beginAccess();
  v9 = *(a3 + 120);
  if (*(v9 + 16))
  {
    v10 = *(v9 + 32);
    swift_errorRetain();
  }

  else
  {
    v10 = 0;
  }

  a1(v10);
}

uint64_t sub_1001CA03C()
{
  sub_10000839C((v0 + 16));
  sub_10000839C((v0 + 56));

  v1 = *(v0 + 120);

  v2 = OBJC_IVAR____TtC13appleaccountd26BeneficiaryManateeMigrator__accessKeyRepairHandler;
  v3 = sub_100005814(&unk_1003E1298, &unk_100344700);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BeneficiaryManateeMigrator()
{
  result = qword_1003E1A60;
  if (!qword_1003E1A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001CA158()
{
  sub_1001CA22C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1001CA22C()
{
  if (!qword_1003E1180)
  {
    sub_100008CBC(&qword_1003E1188, &unk_100346930);
    v0 = type metadata accessor for Dependency();
    if (!v1)
    {
      atomic_store(v0, &qword_1003E1180);
    }
  }
}

uint64_t sub_1001CA2B4()
{
  v1 = v0;
  if (qword_1003D7F68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAB18);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Manatee status changed, fetching new manatee status.", v5, 2u);
  }

  v6 = sub_1000080F8((v1 + 56), *(v1 + 80));
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = *v6;

  sub_10021E8F0(sub_1001CC5C4, v7);
}

void sub_1001CA3F8(uint64_t a1, char a2)
{
  if (a2)
  {
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100008D04(v3, qword_1003FAB18);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v19[0] = v6;
      *v5 = 136315138;
      v19[3] = a1;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v7 = String.init<A>(describing:)();
      v9 = sub_10021145C(v7, v8, v19);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Failed to fetch manatee status: %s", v5, 0xCu);
      sub_10000839C(v6);

      return;
    }

    goto LABEL_18;
  }

  if ((a1 & 1) == 0)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAA88);
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v16, "Account is not manatee, skipping manatee migration.", v17, 2u);
    }

LABEL_18:

    return;
  }

  if (qword_1003D7F68 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAB18);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Account is now manatee, kicking off migration.", v13, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1001C8E0C(Strong);
  }
}

void sub_1001CA784(uint64_t a1, void (*a2)(uint64_t a1))
{
  v56 = type metadata accessor for UUID();
  v4 = *(v56 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v56);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BeneficiaryInfoRecord();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v53 - v13);
  sub_100012D04(a1, &v53 - v13, &unk_1003E10A0, &unk_100344480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    if (qword_1003D7F68 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAB18);
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v58 = v20;
      *v19 = 136315138;
      v57 = v15;
      swift_errorRetain();
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v21 = String.init<A>(describing:)();
      v23 = sub_10021145C(v21, v22, &v58);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Error migrating BeneficiaryInfoRecord : %s", v19, 0xCu);
      sub_10000839C(v20);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v25 = *(Strong + 104);

      os_unfair_lock_lock(v25);
    }

    swift_beginAccess();
    v26 = swift_weakLoadStrong();
    if (v26)
    {
      v27 = v26;
      swift_beginAccess();
      v28 = *(v27 + 120);
      swift_errorRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v27 + 120) = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = sub_1003062A8(0, v28[2] + 1, 1, v28);
        *(v27 + 120) = v28;
      }

      v31 = v28[2];
      v30 = v28[3];
      if (v31 >= v30 >> 1)
      {
        v28 = sub_1003062A8((v30 > 1), v31 + 1, 1, v28);
      }

      v28[2] = v31 + 1;
      v28[v31 + 4] = v15;
      *(v27 + 120) = v28;
      swift_endAccess();
    }

    swift_beginAccess();
    v32 = swift_weakLoadStrong();
    if (v32)
    {
      v33 = *(v32 + 104);

      os_unfair_lock_unlock(v33);
    }

    swift_beginAccess();
    v34 = swift_weakLoadStrong();
    if (v34)
    {
      v35 = *(v34 + 96);

      dispatch_group_leave(v35);
    }

    else
    {
    }
  }

  else
  {
    sub_1001CC454(v14, v10, type metadata accessor for BeneficiaryInfoRecord);
    swift_beginAccess();
    v36 = swift_weakLoadStrong();
    if (v36)
    {
      v37 = *(v36 + 104);

      os_unfair_lock_lock(v37);
    }

    swift_beginAccess();
    v38 = swift_weakLoadStrong();
    if (v38)
    {
      v39 = *(v38 + 112);
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        __break(1u);
        return;
      }

      *(v38 + 112) = v41;
    }

    swift_beginAccess();
    v42 = swift_weakLoadStrong();
    if (v42)
    {
      v43 = *(v42 + 104);

      os_unfair_lock_unlock(v43);
    }

    swift_beginAccess();
    v44 = swift_weakLoadStrong();
    if (v44)
    {
      v45 = *(v44 + 80);
      v55 = v44;
      v54 = sub_1000080F8((v44 + 56), v45);
      v46 = swift_allocObject();
      swift_weakInit();
      v47 = v56;
      (*(v4 + 16))(&v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v56);
      v48 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v49 = (v5 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
      v50 = swift_allocObject();
      (*(v4 + 32))(v50 + v48, v6, v47);
      v51 = (v50 + v49);
      *v51 = sub_1001CC2F0;
      v51[1] = a2;
      *(v50 + ((v49 + 23) & 0xFFFFFFFFFFFFFFF8)) = v46;
      v52 = *v54;
      swift_retain_n();

      sub_100214780(v10, sub_1001CC3A8, v50);

      sub_1001CC524(v10, type metadata accessor for BeneficiaryInfoRecord);
    }

    else
    {
      sub_1001CC524(v10, type metadata accessor for BeneficiaryInfoRecord);
    }
  }
}