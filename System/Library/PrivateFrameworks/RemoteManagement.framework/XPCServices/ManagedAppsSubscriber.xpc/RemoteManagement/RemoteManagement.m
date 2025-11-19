int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_self();
  sub_100001658(&qword_100020C90, &unk_100017AD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100017AC0;
  *(v4 + 32) = type metadata accessor for ManagedAppsApplicator();
  sub_100001658(&qword_100020AB0, &qword_100017F00);
  isa = sub_100016F20().super.isa;

  type metadata accessor for ManagedAppsStatus();
  [v3 runConfigurationSubscriberClientWithApplicators:isa publisherClass:swift_getObjCClassFromMetadata()];

  return 0;
}

uint64_t sub_100001658(uint64_t *a1, uint64_t *a2)
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

void *sub_1000016A8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000016CC(uint64_t a1, id *a2)
{
  result = sub_100016E00();
  *a2 = 0;
  return result;
}

uint64_t sub_100001744(uint64_t a1, id *a2)
{
  v3 = sub_100016E10();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000017C4@<X0>(void *a1@<X8>)
{
  sub_100016E20();
  v2 = sub_100016DF0();

  *a1 = v2;
  return result;
}

uint64_t sub_100001808()
{
  v1 = *v0;
  sub_100016E20();
  v2 = sub_100016EE0();

  return v2;
}

uint64_t sub_100001844()
{
  v1 = *v0;
  sub_100016E20();
  sub_100016E70();
}

Swift::Int sub_100001898()
{
  v1 = *v0;
  sub_100016E20();
  sub_100017220();
  sub_100016E70();
  v2 = sub_100017230();

  return v2;
}

uint64_t sub_10000190C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_100016E20();
  v6 = v5;
  if (v4 == sub_100016E20() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000171B0();
  }

  return v9 & 1;
}

uint64_t sub_100001994@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_100016DF0();

  *a2 = v5;
  return result;
}

uint64_t sub_1000019DC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_100016E20();
  *a1 = result;
  a1[1] = v5;
  return result;
}

void sub_100001A30(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100001A7C(uint64_t a1)
{
  v2 = sub_100001B7C(&qword_100020AE0);
  v3 = sub_100001B7C(&qword_100020AE8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100001B7C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RMUIConfigurationUIHiddenDetail(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100001BF4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = v0;
    v3 = sub_100016850();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v1 = sub_100016840();
    v6 = *(v2 + 16);
    *(v2 + 16) = v1;
  }

  return v1;
}

uint64_t sub_100001C6C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = v0;
    v3 = sub_100016850();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v1 = sub_100016840();
    v6 = *(v2 + 24);
    *(v2 + 24) = v1;
  }

  return v1;
}

uint64_t MACAPIImpl.setAppConfig(recordID:appConfigRecord:scope:persona:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return _swift_task_switch(sub_100001D10, 0, 0);
}

uint64_t sub_100001D10()
{
  v1 = v0[8];
  if (v0[5] == 1)
  {
    v2 = sub_100001BF4();
  }

  else
  {
    v2 = sub_100001C6C();
  }

  v0[9] = v2;
  v3 = async function pointer to ManagedAppsDaemonClient.setAppConfig(recordID:appConfigRecord:persona:)[1];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_100001DD4;
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return ManagedAppsDaemonClient.setAppConfig(recordID:appConfigRecord:persona:)(v9, v7, v8, v5, v6);
}

uint64_t sub_100001DD4()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_100001F4C;
  }

  else
  {
    v3 = sub_100001EE8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100001EE8()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100001F4C()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t MACAPIImpl.removeAppConfig(recordID:scope:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100001FD4, 0, 0);
}

uint64_t sub_100001FD4()
{
  v1 = v0[5];
  if (v0[4] == 1)
  {
    v2 = sub_100001BF4();
  }

  else
  {
    v2 = sub_100001C6C();
  }

  v0[6] = v2;
  v3 = async function pointer to ManagedAppsDaemonClient.removeAppConfig(recordID:)[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_10000208C;
  v6 = v0[2];
  v5 = v0[3];

  return ManagedAppsDaemonClient.removeAppConfig(recordID:)(v6, v5);
}

uint64_t sub_10000208C()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_100002204;
  }

  else
  {
    v3 = sub_1000021A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000021A0()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100002204()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t MACAPIImpl.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t MACAPIImpl.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1000022D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a5;
  v7[7] = a6;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v7[8] = *v6;
  return _swift_task_switch(sub_100002300, 0, 0);
}

uint64_t sub_100002300()
{
  v1 = v0[8];
  if (v0[5] == 1)
  {
    v2 = sub_100001BF4();
  }

  else
  {
    v2 = sub_100001C6C();
  }

  v0[9] = v2;
  v3 = async function pointer to ManagedAppsDaemonClient.setAppConfig(recordID:appConfigRecord:persona:)[1];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1000023C4;
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return ManagedAppsDaemonClient.setAppConfig(recordID:appConfigRecord:persona:)(v9, v7, v8, v5, v6);
}

uint64_t sub_1000023C4()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1000026F0;
  }

  else
  {
    v3 = sub_1000026F8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000024D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return _swift_task_switch(sub_100002500, 0, 0);
}

uint64_t sub_100002500()
{
  v1 = v0[5];
  if (v0[4] == 1)
  {
    v2 = sub_100001BF4();
  }

  else
  {
    v2 = sub_100001C6C();
  }

  v0[6] = v2;
  v3 = async function pointer to ManagedAppsDaemonClient.removeAppConfig(recordID:)[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1000025B8;
  v6 = v0[2];
  v5 = v0[3];

  return ManagedAppsDaemonClient.removeAppConfig(recordID:)(v6, v5);
}

uint64_t sub_1000025B8()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1000026F4;
  }

  else
  {
    v3 = sub_1000026FC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100002700()
{
  v0 = sub_100016D40();
  sub_1000068E0(v0, qword_100021550);
  sub_100006810(v0, qword_100021550);
  type metadata accessor for ManagedAppsAdapter();
  sub_100001658(&qword_100020C80, &unk_100017E18);
  sub_100016E40();
  return sub_100016D30();
}

void sub_1000027A0(uint64_t a1@<X0>, void *a2@<X1>, unsigned __int8 a3@<W2>, unint64_t *a4@<X8>)
{
  if (a3 <= 4u)
  {
    if (a3 <= 1u)
    {
      if (a3)
      {
        v9 = 0x800000010001A180;
        sub_1000170D0(25);

        v20._countAndFlagsBits = a1;
        v20._object = a2;
        sub_100016E80(v20);
        v10 = 0xD000000000000017;
        v11 = 0x800000010001A1B0;
        v12 = 0xD000000000000022;
        goto LABEL_20;
      }

      sub_1000170D0(18);

      v7 = 0x800000010001A1D0;
      v8 = 0xD000000000000010;
    }

    else
    {
      if (a3 == 2)
      {
        sub_1000170D0(17);

        v13 = 0x2064696C61766E49;
        v14 = 0xEF203A65706F6373;
        goto LABEL_16;
      }

      if (a3 != 3)
      {
        v12 = 0xD00000000000001DLL;
        v9 = 0x800000010001A0D0;
        sub_1000170D0(35);

        v13 = 0xD000000000000021;
        v14 = 0x800000010001A0F0;
        v19._countAndFlagsBits = a1;
        v19._object = a2;
        sub_100016E80(v19);
        goto LABEL_19;
      }

      sub_1000170D0(31);

      v7 = 0x8000000100019950;
      v8 = 0xD00000000000001DLL;
    }

    v13 = v8;
    v14 = v7;
LABEL_16:
    v17._countAndFlagsBits = a1;
    v17._object = a2;
    sub_100016E80(v17);
    v12 = 0;
    v9 = 0;
LABEL_19:
    v10 = v13;
    v11 = v14;
    goto LABEL_20;
  }

  if (a3 <= 6u)
  {
    if (a3 == 5)
    {
      v9 = 0x800000010001A0B0;
      sub_1000170D0(17);

      v16._countAndFlagsBits = a1;
      v16._object = a2;
      sub_100016E80(v16);
      v10 = 0x20676E697373694DLL;
      v11 = 0xEF203A7465737361;
      v12 = 0xD000000000000018;
    }

    else
    {
      v9 = 0x800000010001A090;
      sub_1000170D0(17);

      v21._countAndFlagsBits = a1;
      v21._object = a2;
      sub_100016E80(v21);
      v10 = 0x2064696C61766E49;
      v11 = 0xEF203A7465737361;
      v12 = 0xD00000000000001CLL;
    }
  }

  else if (a3 == 7)
  {
    v9 = 0x800000010001A040;
    sub_1000170D0(27);

    sub_10000F018();
    v18._countAndFlagsBits = sub_100016920();
    sub_100016E80(v18);

    v10 = 0xD000000000000019;
    v11 = 0x800000010001A070;
    v12 = 0xD000000000000021;
  }

  else if (a3 == 8)
  {
    v9 = 0x8000000100019FF0;
    sub_1000170D0(37);

    sub_10000F018();
    v15._countAndFlagsBits = sub_100016920();
    sub_100016E80(v15);

    v10 = 0xD000000000000023;
    v11 = 0x800000010001A010;
    v12 = 0xD00000000000001BLL;
  }

  else
  {
    v12 = 0xD00000000000001DLL;
    v9 = 0x800000010001A120;
    v11 = 0x800000010001A140;
    v10 = 0xD000000000000032;
  }

LABEL_20:
  *a4 = v12;
  a4[1] = v9;
  a4[2] = v10;
  a4[3] = v11;
  a4[4] = 0;
}

__n128 sub_100002C10@<Q0>(uint64_t a1@<X8>)
{
  sub_1000027A0(*v1, *(v1 + 8), *(v1 + 16), v5);
  v3 = v6;
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100002C60(uint64_t a1)
{
  v2 = sub_10000F018();

  return RMAdapterError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100002C9C(uint64_t a1)
{
  v2 = sub_10000F018();

  return RMAdapterError.errorDescription.getter(a1, v2);
}

uint64_t sub_100002CE4(uint64_t a1)
{
  v2 = sub_10000EF6C();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100002D20(uint64_t a1)
{
  v2 = sub_10000EF6C();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100003008(uint64_t a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000030BC;

  return sub_100007728(a1);
}

uint64_t sub_1000030BC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *v1;

  if (v2)
  {
    v6 = sub_1000167C0();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    sub_10000EE34(0, &qword_100020D10, RMStoreDeclarationKey_ptr);
    sub_10000EDCC();
    isa = sub_100016FB0().super.isa;

    v8 = isa;
    v7 = 0;
    v6 = isa;
  }

  v10 = *(v3 + 16);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_1000033EC(void *a1, void *a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a2;
  a5;
  v12 = swift_task_alloc();
  v5[6] = v12;
  *v12 = v5;
  v12[1] = sub_1000034E0;

  return sub_10000ACB0(v10, a3);
}

uint64_t sub_1000034E0()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  if (v2)
  {
    v9 = sub_1000167C0();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    sub_10000EE34(0, &qword_100020CF0, RMModelStatusReason_ptr);
    isa = sub_100016F20().super.isa;

    v11 = isa;
    v10 = 0;
    v9 = isa;
  }

  v13 = *(v3 + 40);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v8 + 8);

  return v14();
}

void sub_1000036B4(void *a1)
{
  v1 = [a1 payloadInstallBehavior];
  if (!v1)
  {
    sub_100016A80();
    return;
  }

  v2 = v1;
  v3 = [v1 payloadInstall];
  v4 = sub_100016E20();
  v6 = v5;

  if (sub_100016E20() == v4 && v7 == v6)
  {
  }

  else
  {
    v9 = sub_1000171B0();

    if ((v9 & 1) == 0)
    {
      if (sub_100016E20() == v4 && v10 == v6)
      {
      }

      else
      {
        v12 = sub_1000171B0();

        if ((v12 & 1) == 0)
        {
          sub_1000170D0(34);

          v13 = [v2 payloadInstall];
          v14 = sub_100016E20();
          v16 = v15;

          v18._countAndFlagsBits = v14;
          v18._object = v16;
          sub_100016E80(v18);

          sub_10000688C();
          swift_allocError();
          *v17 = 0xD000000000000020;
          *(v17 + 8) = 0x8000000100019F60;
          *(v17 + 16) = 1;
          swift_willThrow();
          goto LABEL_11;
        }
      }

      sub_100016A70();
      goto LABEL_11;
    }
  }

  sub_100016A80();
LABEL_11:
}

void sub_1000038D0(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v61 = a3;
  v5 = (*(*(sub_100001658(&qword_100020D08, &qword_100017ED0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v7 = &v59 - v6;
  v8 = sub_1000167E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  (__chkstk_darwin)();
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100016B50();
  v59 = *(v13 - 8);
  v60 = v13;
  v14 = *(v59 + 64);
  v15 = (__chkstk_darwin)();
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v59 - v18;
  v20 = [a1 payloadAppStoreID];
  if (v20)
  {
    v21 = v20;
    v22 = sub_100016E20();
    v24 = v23;

    v25 = HIBYTE(v24) & 0xF;
    v26 = v22 & 0xFFFFFFFFFFFFLL;
    if ((v24 & 0x2000000000000000) != 0)
    {
      v27 = HIBYTE(v24) & 0xF;
    }

    else
    {
      v27 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      if ((v24 & 0x1000000000000000) == 0)
      {
        if ((v24 & 0x2000000000000000) != 0)
        {
          v63[0] = v22;
          v63[1] = v24 & 0xFFFFFFFFFFFFFFLL;
          if (v22 == 43)
          {
            if (v25)
            {
              if (--v25)
              {
                v46 = 0;
                v47 = v63 + 1;
                while (1)
                {
                  v48 = *v47 - 48;
                  if (v48 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v46, 0xAuLL))
                  {
                    break;
                  }

                  v33 = __CFADD__(10 * v46, v48);
                  v46 = 10 * v46 + v48;
                  if (v33)
                  {
                    break;
                  }

                  ++v47;
                  if (!--v25)
                  {
                    goto LABEL_73;
                  }
                }
              }

              goto LABEL_72;
            }

LABEL_89:
            __break(1u);
            return;
          }

          if (v22 != 45)
          {
            if (v25)
            {
              v51 = 0;
              v52 = v63;
              while (1)
              {
                v53 = *v52 - 48;
                if (v53 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v51, 0xAuLL))
                {
                  break;
                }

                v33 = __CFADD__(10 * v51, v53);
                v51 = 10 * v51 + v53;
                if (v33)
                {
                  break;
                }

                ++v52;
                if (!--v25)
                {
                  goto LABEL_73;
                }
              }
            }

            goto LABEL_72;
          }

          if (v25)
          {
            if (--v25)
            {
              v37 = 0;
              v38 = v63 + 1;
              while (1)
              {
                v39 = *v38 - 48;
                if (v39 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v37, 0xAuLL))
                {
                  break;
                }

                v33 = 10 * v37 >= v39;
                v37 = 10 * v37 - v39;
                if (!v33)
                {
                  break;
                }

                ++v38;
                if (!--v25)
                {
                  goto LABEL_73;
                }
              }
            }

            goto LABEL_72;
          }
        }

        else
        {
          if ((v22 & 0x1000000000000000) != 0)
          {
            v28 = ((v24 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v28 = sub_1000170F0();
          }

          v29 = *v28;
          if (v29 == 43)
          {
            if (v26 >= 1)
            {
              v25 = v26 - 1;
              if (v26 != 1)
              {
                v43 = 0;
                if (v28)
                {
                  v44 = v28 + 1;
                  while (1)
                  {
                    v45 = *v44 - 48;
                    if (v45 > 9)
                    {
                      goto LABEL_72;
                    }

                    if (!is_mul_ok(v43, 0xAuLL))
                    {
                      goto LABEL_72;
                    }

                    v33 = __CFADD__(10 * v43, v45);
                    v43 = 10 * v43 + v45;
                    if (v33)
                    {
                      goto LABEL_72;
                    }

                    ++v44;
                    if (!--v25)
                    {
                      goto LABEL_73;
                    }
                  }
                }

                goto LABEL_64;
              }

              goto LABEL_72;
            }

            goto LABEL_88;
          }

          if (v29 != 45)
          {
            if (v26)
            {
              v49 = 0;
              if (v28)
              {
                while (1)
                {
                  v50 = *v28 - 48;
                  if (v50 > 9)
                  {
                    goto LABEL_72;
                  }

                  if (!is_mul_ok(v49, 0xAuLL))
                  {
                    goto LABEL_72;
                  }

                  v33 = __CFADD__(10 * v49, v50);
                  v49 = 10 * v49 + v50;
                  if (v33)
                  {
                    goto LABEL_72;
                  }

                  ++v28;
                  if (!--v26)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_64;
            }

LABEL_72:
            LOBYTE(v25) = 1;
            goto LABEL_73;
          }

          if (v26 >= 1)
          {
            v25 = v26 - 1;
            if (v26 != 1)
            {
              v30 = 0;
              if (v28)
              {
                v31 = v28 + 1;
                while (1)
                {
                  v32 = *v31 - 48;
                  if (v32 > 9)
                  {
                    goto LABEL_72;
                  }

                  if (!is_mul_ok(v30, 0xAuLL))
                  {
                    goto LABEL_72;
                  }

                  v33 = 10 * v30 >= v32;
                  v30 = 10 * v30 - v32;
                  if (!v33)
                  {
                    goto LABEL_72;
                  }

                  ++v31;
                  if (!--v25)
                  {
                    goto LABEL_73;
                  }
                }
              }

LABEL_64:
              LOBYTE(v25) = 0;
LABEL_73:
              v64 = v25;

              goto LABEL_74;
            }

            goto LABEL_72;
          }

          __break(1u);
        }

        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      v64 = 0;
      sub_100006944(v22, v24, 10);
    }

    else
    {
    }

LABEL_74:
    v54 = v62;
    sub_100004538(a1);
    if (!v54)
    {
      sub_100016AB0();
      (*(v59 + 8))(v19, v60);
    }

    return;
  }

  v34 = [a1 payloadBundleID];
  if (!v34)
  {
    v40 = [a1 payloadManifestURL];
    if (v40)
    {
      v41 = v40;
      sub_100016E20();

      sub_1000167D0();

      if ((*(v9 + 48))(v7, 1, v8) != 1)
      {
        (*(v9 + 32))(v12, v7, v8);
        sub_100016AD0();
        (*(v9 + 8))(v12, v8);
        return;
      }

      sub_10000EC38(v7, &qword_100020D08, &qword_100017ED0);
    }

    else
    {
      v55 = [a1 payloadAppComposedIdentifier];
      if (v55)
      {

        v56 = 0x8000000100019FB0;
        sub_10000688C();
        swift_allocError();
        v58 = 0xD000000000000032;
LABEL_79:
        *v57 = v58;
        *(v57 + 8) = v56;
        *(v57 + 16) = 1;
        swift_willThrow();
        return;
      }
    }

    v56 = 0x8000000100019F90;
    sub_10000688C();
    swift_allocError();
    v58 = 0xD00000000000001BLL;
    goto LABEL_79;
  }

  v35 = v34;
  sub_100016E20();
  if (a2)
  {

    v36 = [objc_opt_self() newComposedIdentifierWithBundleID:v35];

    sub_100016AC0();
  }

  else
  {

    v42 = v62;
    sub_100004538(a1);
    if (v42)
    {
    }

    else
    {
      sub_100016AB0();

      (*(v59 + 8))(v17, v60);
    }
  }
}

void sub_100004020(void *a1)
{
  v1 = [a1 payloadInstallBehavior];
  if (!v1)
  {
    sub_100016AF0();
    return;
  }

  v2 = v1;
  v3 = [v1 payloadAllowDownloadsOverCellular];
  v4 = sub_100016E20();
  v6 = v5;

  if (sub_100016E20() == v4 && v7 == v6)
  {

LABEL_10:

    sub_100016B00();
    goto LABEL_11;
  }

  v9 = sub_1000171B0();

  if (v9)
  {
    goto LABEL_10;
  }

  if (sub_100016E20() == v4 && v10 == v6)
  {

LABEL_19:

    sub_100016B10();
    goto LABEL_11;
  }

  v12 = sub_1000171B0();

  if (v12)
  {
    goto LABEL_19;
  }

  if (sub_100016E20() == v4 && v13 == v6)
  {
  }

  else
  {
    v14 = sub_1000171B0();

    if ((v14 & 1) == 0)
    {
      sub_1000170D0(34);

      v15 = [v2 payloadAllowDownloadsOverCellular];
      v16 = sub_100016E20();
      v18 = v17;

      v20._countAndFlagsBits = v16;
      v20._object = v18;
      sub_100016E80(v20);

      sub_10000688C();
      swift_allocError();
      *v19 = 0xD000000000000020;
      *(v19 + 8) = 0x8000000100019F60;
      *(v19 + 16) = 1;
      swift_willThrow();
      goto LABEL_11;
    }
  }

  sub_100016AF0();
LABEL_11:
}

void sub_1000042AC(void *a1)
{
  v1 = [a1 payloadUpdateBehavior];
  if (!v1)
  {
    sub_100016A00();
    return;
  }

  v2 = v1;
  v3 = [v1 payloadAutomaticAppUpdates];
  v4 = sub_100016E20();
  v6 = v5;

  if (sub_100016E20() == v4 && v7 == v6)
  {

LABEL_10:

    sub_100016A10();
    goto LABEL_11;
  }

  v9 = sub_1000171B0();

  if (v9)
  {
    goto LABEL_10;
  }

  if (sub_100016E20() == v4 && v10 == v6)
  {

LABEL_19:

    sub_100016A20();
    goto LABEL_11;
  }

  v12 = sub_1000171B0();

  if (v12)
  {
    goto LABEL_19;
  }

  if (sub_100016E20() == v4 && v13 == v6)
  {
  }

  else
  {
    v14 = sub_1000171B0();

    if ((v14 & 1) == 0)
    {
      sub_1000170D0(34);

      v15 = [v2 payloadAutomaticAppUpdates];
      v16 = sub_100016E20();
      v18 = v17;

      v20._countAndFlagsBits = v16;
      v20._object = v18;
      sub_100016E80(v20);

      sub_10000688C();
      swift_allocError();
      *v19 = 0xD000000000000020;
      *(v19 + 8) = 0x8000000100019F60;
      *(v19 + 16) = 1;
      swift_willThrow();
      goto LABEL_11;
    }
  }

  sub_100016A00();
LABEL_11:
}

uint64_t sub_100004538(void *a1)
{
  v1 = [a1 payloadInstallBehavior];
  if (!v1 || (v2 = v1, v3 = [v1 payloadLicense], v2, !v3) || (v4 = objc_msgSend(v3, "payloadAssignment"), v3, !v4))
  {
    if (qword_100020AA0 != -1)
    {
      swift_once();
    }

    v11 = sub_100016D40();
    sub_100006810(v11, qword_100021550);
    v12 = sub_100016D20();
    v13 = sub_100016FE0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Configuration for App Store app is missing the license assignment type", v14, 2u);
    }

    sub_10000688C();
    swift_allocError();
    *v15 = 0;
    *(v15 + 8) = 0;
    v16 = 9;
    goto LABEL_15;
  }

  v5 = sub_100016E20();
  v7 = v6;

  if (sub_100016E20() == v5 && v8 == v7)
  {

LABEL_17:

    return sub_100016B40();
  }

  v10 = sub_1000171B0();

  if (v10)
  {
    goto LABEL_17;
  }

  if (sub_100016E20() != v5 || v18 != v7)
  {
    v19 = sub_1000171B0();

    if (v19)
    {
      goto LABEL_22;
    }

    if (qword_100020AA0 != -1)
    {
      swift_once();
    }

    v20 = sub_100016D40();
    sub_100006810(v20, qword_100021550);
    v21 = sub_100016D20();
    v22 = sub_100016FE0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Configuration for App Store app has invalid license assignment type", v23, 2u);
    }

    sub_10000688C();
    swift_allocError();
    *v15 = v5;
    *(v15 + 8) = v7;
    v16 = 4;
LABEL_15:
    *(v15 + 16) = v16;
    return swift_willThrow();
  }

LABEL_22:

  return sub_100016B30();
}

uint64_t sub_100004880(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1000169A0();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_100004944, 0, 0);
}

uint64_t sub_100004944()
{
  v23 = v0;
  if (qword_100020AA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_100016D40();
  sub_100006810(v2, qword_100021550);
  v3 = v1;
  v4 = sub_100016D20();
  v5 = sub_100016FF0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136446210;
    v9 = [v6 key];
    v10 = sub_100016E20();
    v12 = v11;

    v13 = sub_10001070C(v10, v12, &v22);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Removing configuration with key: %{public}s", v7, 0xCu);
    sub_100009990(v8);
  }

  v14 = *(v0 + 56);
  v15 = *(v0 + 24);
  v16 = [*(v0 + 16) declarationIdentifier];
  sub_100016E20();

  sub_100016980();
  v17 = sub_1000074B0(v15);
  v18 = async function pointer to DDMRemoveManagedAppRequest.send(to:)[1];
  v19 = swift_task_alloc();
  *(v0 + 64) = v19;
  *v19 = v0;
  v19[1] = sub_100004BF8;
  v20 = *(v0 + 56);

  return DDMRemoveManagedAppRequest.send(to:)(v17 & 1);
}

uint64_t sub_100004BF8()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100004F00, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[10] = v4;
    *v4 = v3;
    v4[1] = sub_100004D6C;
    v5 = v3[3];
    v6 = v3[4];
    v7 = v3[2];

    return sub_1000061E4(v7, v5);
  }
}

uint64_t sub_100004D6C()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_100004F80;
  }

  else
  {
    v3 = sub_100004E80;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100004E80()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100004F00()
{
  v1 = v0[9];
  (*(v0[6] + 8))(v0[7], v0[5]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100004F80()
{
  v1 = v0[11];
  (*(v0[6] + 8))(v0[7], v0[5]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10000518C(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_100005258;

  return sub_100004880(v8, a2);
}

uint64_t sub_100005258()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 32);
  if (v2)
  {
    v10 = sub_1000167C0();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_100005618(void *a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a4;
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_1000056F8;

  return (sub_10000DDC4)(v8, a2);
}

uint64_t sub_1000056F8(char a1, void *a2)
{
  v4 = v2;
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 32);
  v9 = *(*v3 + 24);
  v10 = *(*v3 + 16);
  v11 = *v3;

  v12 = (v8 + 16);
  v13 = *(v11 + 32);
  if (v4)
  {
    v14 = sub_1000167C0();

    (*v12)(v13, 0, 0, v14);

    _Block_release(v13);
  }

  else
  {
    (*v12)(v13, a1 & 1, a2, 0);
    _Block_release(v13);
  }

  v15 = *(v11 + 8);

  return v15();
}

uint64_t sub_1000058C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return _swift_task_switch(sub_1000058E4, 0, 0);
}

uint64_t sub_1000058E4()
{
  v55 = v0;
  if (qword_100020AA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = sub_100016D40();
  *(v0 + 88) = sub_100006810(v2, qword_100021550);
  v3 = v1;
  v4 = sub_100016D20();
  v5 = sub_100016FD0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 72);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v54[0] = v8;
    *v7 = 136446210;
    v9 = [v6 key];
    v10 = sub_100016E20();
    v12 = v11;

    v13 = sub_10001070C(v10, v12, v54);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Applying app config: %{public}s", v7, 0xCu);
    sub_100009990(v8);
  }

  v14 = *(v0 + 56);
  v15 = [*(v0 + 64) payloadAppConfig];
  sub_100009038(v14, v15, v54);
  v16 = v54[3];
  v17 = v54[4];
  v18 = *(v0 + 64);

  v19 = [v18 payloadExtensionConfigs];
  if (v19 && (v20 = v19, v21 = [v19 payloadDictionary], v20, v21))
  {
    sub_10000EE34(0, &qword_100020C88, RMModelAppManagedDeclaration_AppConfigDictionary_ptr);
    v22 = sub_100016D60();
  }

  else
  {
    v22 = 0;
  }

  sub_100009420(*(v0 + 56), v22);
  v23 = *(v0 + 64);

  v24 = [v23 payloadLegacyAppConfigAssetReference];
  if (v24)
  {
    v25 = v24;
    v26 = sub_100016E20();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  sub_100008A94(*(v0 + 56), v26, v28);
  v29 = *(v0 + 72);
  v51 = *(v0 + 80);
  v52 = *(v0 + 56);

  v30 = [v29 key];
  sub_100016E20();

  v31 = objc_allocWithZone(sub_1000168D0());
  v50 = v17;
  v32 = sub_1000168C0();
  *(v0 + 96) = v32;
  sub_10000992C(v51 + OBJC_IVAR____TtC21ManagedAppsSubscriber18ManagedAppsAdapter_macapi, v0 + 16);
  v33 = *(v0 + 40);
  v34 = *(v0 + 48);
  sub_100006848((v0 + 16), v33);
  v35 = [v29 keyWithoutServerToken];
  v36 = sub_100016E20();
  v38 = v37;

  *(v0 + 104) = v38;
  v39 = [v52 store];
  v40 = [v39 scope];

  v41 = [v52 store];
  v42 = [v41 personaIdentifier];

  if (v42)
  {
    v43 = sub_100016E20();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  *(v0 + 112) = v45;
  v46 = *(v34 + 8);
  v53 = (v46 + *v46);
  v47 = v46[1];
  v48 = swift_task_alloc();
  *(v0 + 120) = v48;
  *v48 = v0;
  v48[1] = sub_100005EB4;

  return v53(v36, v38, v32, v40, v43, v45, v33, v34);
}

uint64_t sub_100005EB4()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v8 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_100006044;
  }

  else
  {
    v5 = *(v2 + 104);
    v6 = *(v2 + 112);

    v4 = sub_100005FD8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100005FD8()
{
  sub_100009990((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100006044()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[11];

  sub_100009990(v0 + 2);
  swift_errorRetain();
  v5 = sub_100016D20();
  v6 = sub_100016FE0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[16];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to apply app config with error: %{public}@", v8, 0xCu);
    sub_10000EC38(v9, &qword_100020F40, &qword_100017E10);
  }

  v11 = v0[16];
  v12 = v0[12];

  sub_10000688C();
  swift_allocError();
  *v13 = v11;
  *(v13 + 8) = 0;
  *(v13 + 16) = 8;
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000061E4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100006208, 0, 0);
}

uint64_t sub_100006208()
{
  v29 = v0;
  if (qword_100020AA0 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_100016D40();
  v0[5] = sub_100006810(v2, qword_100021550);
  v3 = v1;
  v4 = sub_100016D20();
  v5 = sub_100016FD0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136446210;
    v9 = [v6 key];
    v10 = sub_100016E20();
    v12 = v11;

    v13 = sub_10001070C(v10, v12, &v28);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Removing app config: %{public}s", v7, 0xCu);
    sub_100009990(v8);
  }

  v14 = v0[2];
  v15 = (v0[4] + OBJC_IVAR____TtC21ManagedAppsSubscriber18ManagedAppsAdapter_macapi);
  v16 = v15[3];
  v17 = v15[4];
  sub_100006848(v15, v16);
  v18 = [v14 keyWithoutServerToken];
  v19 = sub_100016E20();
  v21 = v20;

  v0[6] = v21;
  v22 = *(v17 + 16);
  v27 = (v22 + *v22);
  v23 = v22[1];
  v24 = swift_task_alloc();
  v0[7] = v24;
  *v24 = v0;
  v24[1] = sub_1000064D4;
  v25 = v0[3];

  return v27(v19, v21, v25, v16, v17);
}

uint64_t sub_1000064D4()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100006610, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_100006610()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];

  swift_errorRetain();
  v4 = sub_100016D20();
  v5 = sub_100016FE0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to remove app config with error: %{public}@", v7, 0xCu);
    sub_10000EC38(v8, &qword_100020F40, &qword_100017E10);
  }

  v10 = v0[8];

  sub_10000688C();
  swift_allocError();
  *v11 = v10;
  *(v11 + 8) = 0;
  *(v11 + 16) = 8;
  swift_willThrow();
  v12 = v0[1];

  return v12();
}

id sub_100006794()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedAppsAdapter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100006810(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_100006848(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000688C()
{
  result = qword_100020C70;
  if (!qword_100020C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020C70);
  }

  return result;
}

uint64_t *sub_1000068E0(uint64_t a1, uint64_t *a2)
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

unsigned __int8 *sub_100006944(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_100016EF0();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100006EC8();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1000170F0();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
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

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_100006EC8()
{
  v0 = sub_100016F00();
  v4 = sub_100006F48(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100006F48(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_100016E60();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_100017020();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100010B4C(v9, 0);
  v12 = sub_1000070A0(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_100016E60();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1000170F0();
LABEL_4:

  return sub_100016E60();
}

unint64_t sub_1000070A0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000072C0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_100016EC0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1000170F0();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000072C0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_100016EA0();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1000072C0(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_100016ED0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_100016EB0();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

id sub_10000733C(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_100012274(a3);
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
      sub_100012380(v15, a4 & 1);
      v19 = *v5;
      v10 = sub_100012274(a3);
      if ((v16 & 1) != (v20 & 1))
      {
LABEL_18:
        type metadata accessor for RMUIConfigurationUIHiddenDetail(0);
        result = sub_1000171D0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = v10;
      sub_100012AC8();
      v10 = v18;
    }
  }

  v21 = *v5;
  if (v16)
  {
    v22 = (v21[7] + 16 * v10);
    v23 = v22[1];
    *v22 = a1;
    v22[1] = a2;
  }

  v21[(v10 >> 6) + 8] |= 1 << v10;
  *(v21[6] + 8 * v10) = a3;
  v25 = (v21[7] + 16 * v10);
  *v25 = a1;
  v25[1] = a2;
  v26 = v21[2];
  v14 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v27;

  return a3;
}

uint64_t sub_1000074B0(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0;
  }

  if (!a1)
  {
    return 1;
  }

  if (qword_100020AA0 != -1)
  {
    swift_once();
  }

  v2 = sub_100016D40();
  sub_100006810(v2, qword_100021550);
  v3 = sub_100016D20();
  v4 = sub_100016FE0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unknown scope", v5, 2u);
  }

  sub_10000688C();
  swift_allocError();
  *v6 = xmmword_100017D90;
  *(v6 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_1000075E8(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    sub_10000EE34(0, &qword_100020D10, RMStoreDeclarationKey_ptr);
    sub_10000EDCC();
    result = sub_100016FC0();
    v10 = result;
    if (i)
    {
      break;
    }

    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_1000170E0();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(a1 + 8 * i + 32);
      }

      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_100010CB4(&v9, v7);

      if (v8 == v5)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    sub_100017150();
  }

  v6 = result;
  v5 = sub_100017150();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100007728(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_100016CC0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000077E8, 0, 0);
}

uint64_t sub_1000077E8()
{
  v1 = v0[5];
  v2 = v0[2];
  sub_100016CB0();
  v3 = sub_1000074B0(v2);
  v4 = async function pointer to DDMDeclarationKeysRequest.send(to:)[1];
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_100007908;
  v6 = v0[5];

  return DDMDeclarationKeysRequest.send(to:)(v3 & 1);
}

uint64_t sub_100007908(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v7 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v5 = sub_100007BA8;
  }

  else
  {
    v5 = sub_100007A1C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100007A1C()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_100017120();
    v3 = objc_opt_self();
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      v7 = sub_100016DF0();
      [v3 newDeclarationKey:v7];

      sub_100017100();
      v8 = _swiftEmptyArrayStorage[2];
      sub_100017130();
      sub_100017140();
      sub_100017110();
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  v9 = v0[7];

  v11 = v0[4];
  v10 = v0[5];
  v12 = v0[3];
  v13 = sub_1000075E8(_swiftEmptyArrayStorage);

  (*(v11 + 8))(v10, v12);

  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_100007BA8()
{
  v1 = v0[8];
  (*(v0[4] + 8))(v0[5], v0[3]);

  v2 = v0[1];

  return v2();
}

unint64_t sub_100007C28(void *a1)
{
  v2 = [a1 payloadAppStoreID];
  if (!v2)
  {
    v2 = [a1 payloadBundleID];
    if (!v2)
    {
      v2 = [a1 payloadManifestURL];
      if (!v2)
      {
        v2 = [a1 payloadAppComposedIdentifier];
        if (!v2)
        {
          return 0xD000000000000013;
        }
      }
    }
  }

  v3 = v2;
  v4 = sub_100016E20();

  return v4;
}

uint64_t sub_100007CF4(void *a1)
{
  v100 = 0;
  v101 = 0xE000000000000000;
  v2 = [a1 payloadAppStoreID];
  if (v2)
  {
    v3 = v2;
    v4 = sub_100016E20();
    v6 = v5;

    sub_1000170D0(18);

    v99._countAndFlagsBits = 0x6F74537070412020;
    v99._object = 0xEF203A4449646572;
    v102._countAndFlagsBits = v4;
    v102._object = v6;
    sub_100016E80(v102);

    v103._countAndFlagsBits = 10;
    v103._object = 0xE100000000000000;
    sub_100016E80(v103);
    v104._countAndFlagsBits = 0x6F74537070412020;
    v104._object = 0xEF203A4449646572;
    sub_100016E80(v104);
  }

  v7 = [a1 payloadBundleID];
  if (v7)
  {
    v8 = v7;
    v9 = sub_100016E20();
    v11 = v10;

    strcpy(&v99, "  BundleID: ");
    BYTE5(v99._object) = 0;
    HIWORD(v99._object) = -5120;
    v105._countAndFlagsBits = v9;
    v105._object = v11;
    sub_100016E80(v105);

    v106._countAndFlagsBits = 10;
    v106._object = 0xE100000000000000;
    sub_100016E80(v106);
    sub_100016E80(v99);
  }

  v12 = [a1 payloadManifestURL];
  if (v12)
  {
    v13 = v12;
    v14 = sub_100016E20();
    v16 = v15;

    sub_1000170D0(18);

    v99._countAndFlagsBits = 0x6566696E614D2020;
    v99._object = 0xEF203A4C52557473;
    v107._countAndFlagsBits = v14;
    v107._object = v16;
    sub_100016E80(v107);

    v108._countAndFlagsBits = 10;
    v108._object = 0xE100000000000000;
    sub_100016E80(v108);
    v109._countAndFlagsBits = 0x6566696E614D2020;
    v109._object = 0xEF203A4C52557473;
    sub_100016E80(v109);
  }

  v17 = [a1 payloadAppComposedIdentifier];
  if (v17)
  {
    v18 = v17;
    v19 = sub_100016E20();
    v21 = v20;

    sub_1000170D0(25);

    v110._countAndFlagsBits = v19;
    v110._object = v21;
    sub_100016E80(v110);

    v111._countAndFlagsBits = 10;
    v111._object = 0xE100000000000000;
    sub_100016E80(v111);
    v112._countAndFlagsBits = 0xD000000000000016;
    v112._object = 0x8000000100019F40;
    sub_100016E80(v112);
  }

  sub_1000170D0(22);

  v22 = [a1 payloadIncludeInBackup];
  v23 = [v22 description];
  v24 = sub_100016E20();
  v26 = v25;

  v113._countAndFlagsBits = v24;
  v113._object = v26;
  sub_100016E80(v113);

  v114._countAndFlagsBits = 10;
  v114._object = 0xE100000000000000;
  sub_100016E80(v114);
  v115._countAndFlagsBits = 0xD000000000000013;
  v115._object = 0x8000000100019DC0;
  sub_100016E80(v115);

  v27 = [a1 payloadInstallBehavior];
  if (v27)
  {
    v28 = v27;
    v116._countAndFlagsBits = 0xD000000000000014;
    v116._object = 0x8000000100019EF0;
    sub_100016E80(v116);
    sub_1000170D0(16);

    strcpy(&v99, "    Install: ");
    HIWORD(v99._object) = -4864;
    v29 = [v28 payloadInstall];
    v30 = sub_100016E20();
    v32 = v31;

    v117._countAndFlagsBits = v30;
    v117._object = v32;
    sub_100016E80(v117);

    v33 = 0xE100000000000000;
    v118._countAndFlagsBits = 10;
    v118._object = 0xE100000000000000;
    sub_100016E80(v118);
    sub_100016E80(v99);

    sub_1000170D0(16);

    strcpy(&v99, "    License: ");
    HIWORD(v99._object) = -4864;
    v34 = [v28 payloadLicense];
    if (v34)
    {
      v35 = v34;
      v36 = [v34 payloadAssignment];

      if (v36)
      {
        v37 = sub_100016E20();
        v33 = v38;

        v39._countAndFlagsBits = v37;
LABEL_15:
        v39._object = v33;
        sub_100016E80(v39);

        v40 = 0xE100000000000000;
        v119._countAndFlagsBits = 10;
        v119._object = 0xE100000000000000;
        sub_100016E80(v119);
        sub_100016E80(v99);

        sub_1000170D0(16);

        strcpy(&v99, "    Version: ");
        HIWORD(v99._object) = -4864;
        v41 = [v28 payloadVersion];
        if (v41)
        {
          v42 = v41;
          v43 = [v41 description];

          v44 = sub_100016E20();
          v40 = v45;
        }

        else
        {
          v44 = 45;
        }

        v120._countAndFlagsBits = v44;
        v120._object = v40;
        sub_100016E80(v120);

        v121._countAndFlagsBits = 10;
        v121._object = 0xE100000000000000;
        sub_100016E80(v121);
        sub_100016E80(v99);

        sub_1000170D0(38);

        v46 = [v28 payloadAllowDownloadsOverCellular];
        v47 = sub_100016E20();
        v49 = v48;

        v122._countAndFlagsBits = v47;
        v122._object = v49;
        sub_100016E80(v122);

        v123._countAndFlagsBits = 10;
        v123._object = 0xE100000000000000;
        sub_100016E80(v123);
        v124._countAndFlagsBits = 0xD000000000000023;
        v124._object = 0x8000000100019F10;
        sub_100016E80(v124);

        v125._countAndFlagsBits = 175972384;
        v125._object = 0xE400000000000000;
        sub_100016E80(v125);

        goto LABEL_19;
      }

      v33 = 0xE100000000000000;
    }

    v39._countAndFlagsBits = 45;
    goto LABEL_15;
  }

LABEL_19:
  v50 = [a1 payloadUpdateBehavior];
  if (v50)
  {
    v51 = v50;
    v126._object = 0x8000000100019EB0;
    v126._countAndFlagsBits = 0xD000000000000013;
    sub_100016E80(v126);
    sub_1000170D0(30);

    v52 = [v51 payloadAutomaticAppUpdates];
    v53 = sub_100016E20();
    v55 = v54;

    v127._countAndFlagsBits = v53;
    v127._object = v55;
    sub_100016E80(v127);

    v128._countAndFlagsBits = 10;
    v128._object = 0xE100000000000000;
    sub_100016E80(v128);
    v129._countAndFlagsBits = 0xD00000000000001BLL;
    v129._object = 0x8000000100019ED0;
    sub_100016E80(v129);

    v130._countAndFlagsBits = 175972384;
    v130._object = 0xE400000000000000;
    sub_100016E80(v130);
  }

  v56 = [a1 payloadAttributes];
  if (v56)
  {
    v57 = v56;
    v131._countAndFlagsBits = 0x6269727474412020;
    v131._object = 0xEF0A7B2073657475;
    sub_100016E80(v131);
    v58 = [v57 payloadAssociatedDomains];
    if (v58)
    {
      v59 = v58;
      sub_100016F30();

      sub_1000170D0(26);

      v60 = sub_100016F40();
      v62 = v61;

      v132._countAndFlagsBits = v60;
      v132._object = v62;
      sub_100016E80(v132);

      v133._countAndFlagsBits = 10;
      v133._object = 0xE100000000000000;
      sub_100016E80(v133);
      v134._countAndFlagsBits = 0xD000000000000017;
      v134._object = 0x8000000100019E90;
      sub_100016E80(v134);
    }

    sub_1000170D0(47);

    v99._countAndFlagsBits = 0xD00000000000002CLL;
    v99._object = 0x8000000100019DE0;
    v63 = [v57 payloadAssociatedDomainsEnableDirectDownloads];
    v64 = [v63 description];
    v65 = sub_100016E20();
    v67 = v66;

    v135._countAndFlagsBits = v65;
    v135._object = v67;
    sub_100016E80(v135);

    v136._countAndFlagsBits = 10;
    v136._object = 0xE100000000000000;
    sub_100016E80(v136);
    v137._countAndFlagsBits = 0xD00000000000002CLL;
    v137._object = 0x8000000100019DE0;
    sub_100016E80(v137);

    v68 = [v57 payloadCellularSliceUUID];
    if (v68)
    {
      v69 = v68;
      v70 = sub_100016E20();
      v72 = v71;

      sub_1000170D0(26);

      v99._countAndFlagsBits = 0xD000000000000017;
      v99._object = 0x8000000100019E70;
      v138._countAndFlagsBits = v70;
      v138._object = v72;
      sub_100016E80(v138);

      v139._countAndFlagsBits = 10;
      v139._object = 0xE100000000000000;
      sub_100016E80(v139);
      v140._countAndFlagsBits = 0xD000000000000017;
      v140._object = 0x8000000100019E70;
      sub_100016E80(v140);
    }

    v73 = [v57 payloadContentFilterUUID];
    if (v73)
    {
      v74 = v73;
      v75 = sub_100016E20();
      v77 = v76;

      sub_1000170D0(26);

      v99._countAndFlagsBits = 0xD000000000000017;
      v99._object = 0x8000000100019E50;
      v141._countAndFlagsBits = v75;
      v141._object = v77;
      sub_100016E80(v141);

      v142._countAndFlagsBits = 10;
      v142._object = 0xE100000000000000;
      sub_100016E80(v142);
      v143._countAndFlagsBits = 0xD000000000000017;
      v143._object = 0x8000000100019E50;
      sub_100016E80(v143);
    }

    v78 = [v57 payloadDNSProxyUUID];
    if (v78)
    {
      v79 = v78;
      v80 = sub_100016E20();
      v82 = v81;

      sub_1000170D0(21);

      v99._countAndFlagsBits = 0xD000000000000012;
      v99._object = 0x8000000100019E30;
      v144._countAndFlagsBits = v80;
      v144._object = v82;
      sub_100016E80(v144);

      v145._countAndFlagsBits = 10;
      v145._object = 0xE100000000000000;
      sub_100016E80(v145);
      v146._countAndFlagsBits = 0xD000000000000012;
      v146._object = 0x8000000100019E30;
      sub_100016E80(v146);
    }

    v83 = [v57 payloadRelayUUID];
    if (v83)
    {
      v84 = v83;
      v85 = sub_100016E20();
      v87 = v86;

      sub_1000170D0(18);

      v147._countAndFlagsBits = v85;
      v147._object = v87;
      sub_100016E80(v147);

      v148._countAndFlagsBits = 10;
      v148._object = 0xE100000000000000;
      sub_100016E80(v148);
      v149._countAndFlagsBits = 0x616C655220202020;
      v149._object = 0xEF203A4449555579;
      sub_100016E80(v149);
    }

    sub_1000170D0(27);

    v88 = [v57 payloadTapToPayScreenLock];
    v89 = [v88 description];
    v90 = sub_100016E20();
    v92 = v91;

    v150._countAndFlagsBits = v90;
    v150._object = v92;
    sub_100016E80(v150);

    v151._countAndFlagsBits = 10;
    v151._object = 0xE100000000000000;
    sub_100016E80(v151);
    v152._countAndFlagsBits = 0xD000000000000018;
    v152._object = 0x8000000100019E10;
    sub_100016E80(v152);

    v93 = [v57 payloadVPNUUID];
    if (v93)
    {
      v94 = v93;
      v95 = sub_100016E20();
      v97 = v96;

      sub_1000170D0(16);

      strcpy(&v99, "    VPNUUID: ");
      HIWORD(v99._object) = -4864;
      v153._countAndFlagsBits = v95;
      v153._object = v97;
      sub_100016E80(v153);

      v154._countAndFlagsBits = 10;
      v154._object = 0xE100000000000000;
      sub_100016E80(v154);
      sub_100016E80(v99);
    }

    v155._countAndFlagsBits = 175972384;
    v155._object = 0xE400000000000000;
    sub_100016E80(v155);
  }

  return v100;
}

uint64_t sub_100008A94(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    v6 = sub_100016DF0();
    v7 = [a1 assetWithIdentifier:v6];

    if (v7 && (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = v8;
        v10 = v7;

        v11 = [objc_opt_self() newAssetKeyWithAsset:v9];
        v12 = [v11 key];
        a2 = sub_100016E20();

        return a2;
      }

      sub_10000688C();
      swift_allocError();
      *v13 = a2;
      *(v13 + 8) = a3;
      v14 = 6;
    }

    else
    {
      sub_10000688C();
      swift_allocError();
      *v13 = a2;
      *(v13 + 8) = a3;
      v14 = 5;
    }

    *(v13 + 16) = v14;
    swift_willThrow();
  }

  return a2;
}

void sub_100008C3C(void *a1, unint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = (a2 & 0xFFFFFFFFFFFFFF8);
    if (a2 >> 62)
    {
LABEL_27:
      v7 = sub_100017150();
      if (!v7)
      {
        return;
      }
    }

    else
    {
      v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        return;
      }
    }

    v8 = 0;
    v9 = a2 & 0xC000000000000001;
    v36 = v6;
    v40 = (a3 + 32);
    v10 = &MACAPIImpl;
    v6 = &MACAPIImpl;
    v38 = a1;
    v39 = a3;
    v37 = v7;
    while (1)
    {
      if (v9)
      {
        v11 = sub_1000170E0();
        v12 = __OFADD__(v8, 1);
        v8 = v8 + 1;
        if (v12)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v8 >= v36->ivar_lyt)
        {
          __break(1u);
          return;
        }

        v11 = *(a2 + 32 + 8 * v8);
        v12 = __OFADD__(v8, 1);
        v8 = v8 + 1;
        if (v12)
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }
      }

      v41 = v11;
      v13 = [v11 *&v10[17].ivar_base_size];
      if (!v13)
      {
        sub_100016E20();
        v13 = sub_100016DF0();
      }

      v14 = [a1 assetWithIdentifier:v13];

      if (!v14)
      {
        break;
      }

      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (!v15)
      {
        break;
      }

      v16 = v15;
      v17 = *(a3 + 16);
      v14 = v14;
      v18 = v40;
      do
      {
        if (!v17)
        {

          v25 = [v41 payloadAssetReference];
          v26 = sub_100016E20();
          v28 = v27;

          sub_10000688C();
          swift_allocError();
          *v29 = v26;
          *(v29 + 8) = v28;
          *(v29 + 16) = 6;
          swift_willThrow();

          v30 = v14;
          goto LABEL_24;
        }

        v19 = *v18++;
        --v17;
      }

      while (![v16 isKindOfClass:swift_getObjCClassFromMetadata()]);

      v20 = [objc_opt_self() newAssetKeyWithAsset:v16];
      v21 = [v41 payloadIdentifier];
      sub_100016E20();

      v22 = [v20 key];
      sub_100016E20();

      v23 = objc_allocWithZone(sub_100016870());
      v24 = sub_100016860();
      sub_100016F10();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100016F50();
      }

      sub_100016F60();

      a1 = v38;
      a3 = v39;
      v10 = &MACAPIImpl;
      v9 = a2 & 0xC000000000000001;
      if (v8 == v37)
      {
        return;
      }
    }

    v30 = v41;
    v31 = [v41 payloadAssetReference];
    v32 = sub_100016E20();
    v34 = v33;

    sub_10000688C();
    swift_allocError();
    *v35 = v32;
    *(v35 + 8) = v34;
    *(v35 + 16) = 5;
    swift_willThrow();
LABEL_24:
  }
}

uint64_t sub_100009038@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (!a2)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
LABEL_5:
    *a3 = v11;
    a3[1] = v12;
    a3[2] = v13;
    a3[3] = v14;
    a3[4] = v15;
    return result;
  }

  v4 = result;
  v34 = a3;
  v5 = a2;
  v6 = [v5 payloadDataAssetReference];
  if (v6)
  {
    v7 = v6;
    v8 = sub_100016E20();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v16 = sub_100008A94(v4, v8, v10);
  if (!v3)
  {
    v12 = v17;
    v33 = v16;

    v18 = [v5 payloadPasswords];
    if (v18)
    {
      v19 = v18;
      sub_10000EE34(0, &qword_100020CC0, RMModelAppManagedDeclaration_CredentialConfig_ptr);
      v20 = sub_100016F30();
    }

    else
    {
      v20 = 0;
    }

    sub_100001658(&qword_100020C90, &unk_100017AD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100017AC0;
    *(inited + 32) = sub_10000EE34(0, &qword_100020C98, RMModelAssetCredentialUserNameAndPasswordDeclaration_ptr);
    sub_100008C3C(v4, v20, inited);
    v13 = v22;

    swift_setDeallocating();
    v23 = [v5 payloadIdentities];
    if (v23)
    {
      v24 = v23;
      sub_10000EE34(0, &qword_100020CC0, RMModelAppManagedDeclaration_CredentialConfig_ptr);
      v25 = sub_100016F30();
    }

    else
    {
      v25 = 0;
    }

    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_100017DA0;
    *(v26 + 32) = sub_10000EE34(0, &qword_100020CA0, RMModelAssetCredentialACMEDeclaration_ptr);
    *(v26 + 40) = sub_10000EE34(0, &qword_100020CA8, RMModelAssetCredentialIdentityDeclaration_ptr);
    *(v26 + 48) = sub_10000EE34(0, &qword_100020CB0, RMModelAssetCredentialSCEPDeclaration_ptr);
    sub_100008C3C(v4, v25, v26);
    v14 = v27;

    swift_setDeallocating();
    v28 = [v5 payloadCertificates];
    if (v28)
    {
      v29 = v28;
      sub_10000EE34(0, &qword_100020CC0, RMModelAppManagedDeclaration_CredentialConfig_ptr);
      v30 = sub_100016F30();
    }

    else
    {
      v30 = 0;
    }

    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_100017AC0;
    *(v31 + 32) = sub_10000EE34(0, &qword_100020CB8, RMModelAssetCredentialCertificateDeclaration_ptr);
    sub_100008C3C(v4, v30, v31);
    v15 = v32;

    result = swift_setDeallocating();
    a3 = v34;
    v11 = v33;
    goto LABEL_5;
  }
}

unint64_t sub_100009420(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v3 = qword_100020AA0;

  if (v3 != -1)
  {
LABEL_31:
    swift_once();
  }

  v4 = sub_100016D40();
  sub_100006810(v4, qword_100021550);

  v5 = sub_100016D20();
  v6 = sub_100016FD0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v46 = v8;
    *v7 = 136315138;
    sub_10000EE34(0, &qword_100020C88, RMModelAppManagedDeclaration_AppConfigDictionary_ptr);
    v9 = sub_100016D70();
    v11 = sub_10001070C(v9, v10, &v46);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "loading extension config: %s", v7, 0xCu);
    sub_100009990(v8);
  }

  v12 = 0;
  v13 = &_swiftEmptyArrayStorage;
  v48 = &_swiftEmptyArrayStorage;
  v14 = v2 + 64;
  v15 = 1 << *(v2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v2 + 64);
  v18 = (v15 + 63) >> 6;
  v40 = v18;
  v41 = v2 + 64;
  v42 = v2;
  if (!v17)
  {
    while (1)
    {
LABEL_8:
      v19 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v19 >= v18)
      {
        break;
      }

      v17 = *(v14 + 8 * v19);
      ++v12;
      if (v17)
      {
        v12 = v19;
        goto LABEL_12;
      }
    }

    if (v13 >> 62)
    {
      v36 = sub_100017150();
    }

    else
    {
      v36 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v36 <= 0)
    {

      return 0;
    }

    return v13;
  }

  while (1)
  {
LABEL_12:
    v20 = __clz(__rbit64(v17)) | (v12 << 6);
    v21 = (*(v2 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    v24 = *(*(v2 + 56) + 8 * v20);
    v25 = objc_opt_self();

    v26 = v24;
    v27 = sub_100016DF0();
    v28 = [v25 newComposedIdentifier:v27];

    if (!v28)
    {

LABEL_26:
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_1000170D0(31);

      v46 = 0xD00000000000001DLL;
      v47 = 0x8000000100019950;
      v49._countAndFlagsBits = v23;
      v49._object = v22;
      sub_100016E80(v49);

      v37 = v46;
      v13 = v47;
      sub_10000688C();
      swift_allocError();
      *v38 = v37;
      *(v38 + 8) = v13;
      *(v38 + 16) = 1;
      swift_willThrow();
      goto LABEL_28;
    }

    v29 = [v28 teamID];
    if (!v29)
    {

      goto LABEL_26;
    }

    v30 = v29;

    sub_100016E20();

    v31 = v26;
    sub_100009038(a1, v26, &v46);
    if (v45)
    {
      break;
    }

    v44 = v28;
    v32 = [v28 bundleID];
    sub_100016E20();

    v33 = objc_allocWithZone(sub_100016910());
    v34 = sub_100016900();
    sub_100016F10();
    if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v35 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_100016F50();
    }

    v17 &= v17 - 1;
    sub_100016F60();

    v13 = v48;
    v14 = v41;
    v2 = v42;
    v18 = v40;
    if (!v17)
    {
      goto LABEL_8;
    }
  }

  v26 = v28;
LABEL_28:

  return v13;
}

uint64_t sub_10000992C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100009990(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000099E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100009AA0;

  return sub_100005618(v2, v3, v5, v4);
}

uint64_t sub_100009AA0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100009B98()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000F090;

  return sub_10000FB98(v2, v3, v5);
}

uint64_t sub_100009C58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000F090;

  return sub_10000FC84(a1, v4, v5, v7);
}

uint64_t sub_100009D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 304) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = sub_100016970();
  *(v6 + 56) = v7;
  v8 = *(v7 - 8);
  *(v6 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 72) = swift_task_alloc();
  v10 = *(*(sub_100001658(&qword_100020CF8, &qword_100017EC0) - 8) + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  v11 = *(*(sub_100016D10() - 8) + 64) + 15;
  *(v6 + 88) = swift_task_alloc();
  v12 = sub_100016B70();
  *(v6 + 96) = v12;
  v13 = *(v12 - 8);
  *(v6 + 104) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  v15 = *(*(sub_100016A30() - 8) + 64) + 15;
  *(v6 + 128) = swift_task_alloc();
  v16 = sub_100016A50();
  *(v6 + 136) = v16;
  v17 = *(v16 - 8);
  *(v6 + 144) = v17;
  v18 = *(v17 + 64) + 15;
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = swift_task_alloc();
  v19 = sub_1000169F0();
  *(v6 + 168) = v19;
  v20 = *(v19 - 8);
  *(v6 + 176) = v20;
  v21 = *(v20 + 64) + 15;
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  v22 = *(*(sub_100001658(&qword_100020D00, &qword_100017EC8) - 8) + 64) + 15;
  *(v6 + 200) = swift_task_alloc();
  v23 = sub_100016AE0();
  *(v6 + 208) = v23;
  v24 = *(v23 - 8);
  *(v6 + 216) = v24;
  v25 = *(v24 + 64) + 15;
  *(v6 + 224) = swift_task_alloc();
  v26 = sub_100016A90();
  *(v6 + 232) = v26;
  v27 = *(v26 - 8);
  *(v6 + 240) = v27;
  v28 = *(v27 + 64) + 15;
  *(v6 + 248) = swift_task_alloc();
  v29 = sub_100016B60();
  *(v6 + 256) = v29;
  v30 = *(v29 - 8);
  *(v6 + 264) = v30;
  v31 = *(v30 + 64) + 15;
  *(v6 + 272) = swift_task_alloc();
  *(v6 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_10000A110, 0, 0);
}

uint64_t sub_10000A110()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 16);
  type metadata accessor for ManagedAppsAdapter();
  sub_1000036B4(v2);
  sub_1000038D0(*(v0 + 16), *(v0 + 304), *(v0 + 224));
  v3 = [*(v0 + 16) payloadInstallBehavior];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 payloadVersion];

    if (v5)
    {
      [v5 unsignedLongLongValue];
    }
  }

  v6 = *(v0 + 200);
  sub_100004020(*(v0 + 16));
  v7 = *(v0 + 280);
  v8 = *(v0 + 248);
  v9 = *(v0 + 224);
  v10 = *(v0 + 192);
  v11 = *(v0 + 200);
  v52 = *(v0 + 128);
  v12 = *(v0 + 16);
  v13 = sub_100016B20();
  (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  sub_100016AA0();
  v14 = [v12 payloadIncludeInBackup];
  [v14 BOOLValue];

  sub_1000169E0();
  sub_1000042AC(v12);
  v15 = *(v0 + 160);
  v16 = *(v0 + 128);
  v17 = *(v0 + 48);
  v18 = *(v0 + 24);
  sub_100016A40();
  v19 = [v18 key];
  sub_100016E20();

  v20 = [v18 declarationIdentifier];
  sub_100016E20();

  sub_1000074B0(v17);
  v21 = *(v0 + 280);
  v22 = *(v0 + 256);
  v23 = *(v0 + 184);
  v24 = *(v0 + 192);
  v25 = *(v0 + 168);
  v26 = *(v0 + 176);
  v27 = *(v0 + 152);
  v47 = *(v0 + 160);
  v48 = *(v0 + 272);
  v28 = *(v0 + 136);
  v29 = *(v0 + 144);
  v30 = *(v0 + 88);
  v45 = v28;
  v46 = *(v0 + 40);
  v49 = *(v0 + 120);
  v50 = *(v0 + 32);
  v51 = *(v0 + 16);
  (*(*(v0 + 264) + 16))();
  (*(v26 + 16))(v23, v24, v25);
  (*(v29 + 16))(v27, v47, v45);

  sub_100016D00();
  sub_100016A60();
  v31 = [v51 payloadAttributes];
  if (v31)
  {
    v32 = v31;
    v33 = *(v0 + 80);
    v34 = [v31 serializeWithType:0];
    sub_100016D60();

    sub_1000169C0();
    v35 = *(v0 + 120);
    v36 = *(v0 + 80);
    v37 = sub_1000169B0();
    (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
    sub_1000169D0();
  }

  v38 = *(v0 + 72);
  v39 = *(v0 + 48);
  (*(*(v0 + 104) + 16))(*(v0 + 112), *(v0 + 120), *(v0 + 96));
  sub_100016950();
  v40 = sub_1000074B0(v39);
  v41 = async function pointer to DDMAddOrUpdateManagedAppRequest.send(to:)[1];
  v42 = swift_task_alloc();
  *(v0 + 288) = v42;
  *v42 = v0;
  v42[1] = sub_10000A81C;
  v43 = *(v0 + 72);

  return DDMAddOrUpdateManagedAppRequest.send(to:)(v40 & 1);
}

uint64_t sub_10000A81C()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_10000AAF4;
  }

  else
  {
    v3 = sub_10000A930;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000A930()
{
  v1 = v0[35];
  v2 = v0[33];
  v15 = v0[32];
  v16 = v0[34];
  v18 = v0[28];
  v19 = v0[25];
  v14 = v0[24];
  v3 = v0[22];
  v4 = v0[20];
  v13 = v0[21];
  v5 = v0[18];
  v20 = v0[23];
  v21 = v0[19];
  v6 = v0[17];
  v7 = v0[15];
  v17 = v0[31];
  v22 = v0[16];
  v23 = v0[14];
  v8 = v0[12];
  v9 = v0[13];
  v25 = v0[11];
  v26 = v0[10];
  v24 = v0[9];
  v10 = v0[7];
  (*(v0[8] + 8))();
  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v14, v13);
  (*(v2 + 8))(v1, v15);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10000AAF4()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[20];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[15];
  v8 = v0[12];
  v9 = v0[13];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v9 + 8))(v7, v8);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  v27 = v0[37];
  (*(v0[33] + 8))(v0[35], v0[32]);
  v11 = v0[34];
  v10 = v0[35];
  v12 = v0[31];
  v13 = v0[28];
  v15 = v0[24];
  v14 = v0[25];
  v16 = v0[23];
  v18 = v0[19];
  v17 = v0[20];
  v19 = v0[16];
  v22 = v0[15];
  v23 = v0[14];
  v24 = v0[11];
  v25 = v0[10];
  v26 = v0[9];

  v20 = v0[1];

  return v20();
}

uint64_t sub_10000ACB0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10000ACD4, 0, 0);
}

uint64_t sub_10000ACD4()
{
  v51 = v0;
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = sub_100016DF0();
  v4 = [v2 newDeclarationKeyWithSubscriberIdentifier:v3 reference:v1];
  *(v0 + 40) = v4;

  if (qword_100020AA0 != -1)
  {
    swift_once();
  }

  v5 = sub_100016D40();
  sub_100006810(v5, qword_100021550);
  v6 = v4;
  v7 = sub_100016D20();
  v8 = sub_100016FF0();

  v49 = v6;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v50[0] = v10;
    *v9 = 136446210;
    v11 = [v6 key];
    v12 = sub_100016E20();
    v14 = v13;

    v15 = sub_10001070C(v12, v14, v50);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Applying configuration with key: %{public}s", v9, 0xCu);
    sub_100009990(v10);
  }

  v16 = [*(v0 + 16) declaration];
  *(v0 + 48) = v16;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  *(v0 + 56) = v17;
  if (v17)
  {
    v18 = v17;
    v19 = v16;
    v20 = sub_100016D20();
    v21 = sub_100016FF0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v50[0] = v23;
      *v22 = 136446210;
      v24 = sub_100007C28(v18);
      v26 = sub_10001070C(v24, v25, v50);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "App: %{public}s", v22, 0xCu);
      sub_100009990(v23);
    }

    v27 = v19;
    v28 = sub_100016D20();
    v29 = sub_100016FF0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v50[0] = v31;
      *v30 = 136446210;
      v32 = sub_100007CF4(v18);
      v34 = sub_10001070C(v32, v33, v50);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "Declaration:\n%{public}s", v30, 0xCu);
      sub_100009990(v31);
    }

    v35 = swift_task_alloc();
    *(v0 + 64) = v35;
    *v35 = v0;
    v35[1] = sub_10000B220;
    v36 = *(v0 + 32);
    v37 = *(v0 + 16);

    return sub_1000058C0(v37, v18, v49);
  }

  else
  {
    v39 = *(v0 + 16);

    strcpy(v50, "Wrong type: ");
    BYTE5(v50[1]) = 0;
    HIWORD(v50[1]) = -5120;
    v40 = [v39 declaration];
    v41 = [v40 declarationType];

    v42 = sub_100016E20();
    v44 = v43;

    v53._countAndFlagsBits = v42;
    v53._object = v44;
    sub_100016E80(v53);

    v45 = v50[0];
    v46 = v50[1];
    sub_10000688C();
    swift_allocError();
    *v47 = v45;
    *(v47 + 8) = v46;
    *(v47 + 16) = 1;
    swift_willThrow();

    v48 = *(v0 + 8);

    return v48();
  }
}

uint64_t sub_10000B220()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_10000B8D4;
  }

  else
  {
    v3 = sub_10000B334;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000B334()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = [v1 store];
  LODWORD(v2) = [v2 isPreEnrollmentErSSOStore:v3];

  if (v2)
  {
    v4 = [objc_opt_self() ESSOTestModeEnabled];
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(v0 + 16) store];
  v6 = [v5 personaIdentifier];

  if (v6)
  {
    v7 = sub_100016E20();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  *(v0 + 80) = v9;
  v10 = swift_task_alloc();
  *(v0 + 88) = v10;
  *v10 = v0;
  v10[1] = sub_10000B4CC;
  v11 = *(v0 + 56);
  v12 = *(v0 + 40);
  v13 = *(v0 + 24);

  return sub_100009D24(v11, v12, v7, v9, v13, v4);
}

uint64_t sub_10000B4CC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 80);

  if (v0)
  {
    v6 = sub_10000B670;
  }

  else
  {
    v6 = sub_10000B600;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10000B600()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2(&_swiftEmptyArrayStorage);
}

uint64_t sub_10000B670()
{
  *(v0 + 104) = *(v0 + 96);
  v1 = [*(v0 + 16) store];
  v2 = [v1 scope];

  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_10000B740;
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);

  return sub_1000061E4(v4, v2);
}

uint64_t sub_10000B740()
{
  v2 = *(*v1 + 112);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_10000F06C;
  }

  else
  {
    v3 = sub_10000B858;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000B858()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 40);
  swift_willThrow();

  v3 = *(v0 + 104);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10000B8D4()
{
  *(v0 + 104) = *(v0 + 72);
  v1 = [*(v0 + 16) store];
  v2 = [v1 scope];

  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_10000B740;
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);

  return sub_1000061E4(v4, v2);
}

uint64_t sub_10000B9A4(void *a1, uint64_t a2)
{
  v266 = a1;
  v3 = sub_100016DC0();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v265 = &v248 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100016800();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v248 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100016DE0();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v248 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100001658(&qword_100020CD0, &qword_100017E58);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = (&v248 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __chkstk_darwin(v16);
  v21 = &v248 - v20;
  __chkstk_darwin(v19);
  v23 = &v248 - v22;
  sub_10000E950(a2, &v248 - v22);
  v24 = sub_100016C90();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  v258 = v25 + 48;
  v257 = v26;
  v27 = v26(v23, 1, v24);
  v259 = v24;
  v254 = v25;
  if (v27 == 1)
  {
    sub_10000EC38(v23, &qword_100020CD0, &qword_100017E58);
    sub_100016D80();
    sub_1000167F0();
    v28 = sub_100016E30();
    v30 = v29;
  }

  else
  {
    v28 = sub_100016C20();
    v30 = v31;
    (*(v25 + 8))(v23, v24);
  }

  v32 = v9;
  v269 = sub_100001658(&qword_100020CD8, &unk_100017E60);
  v33 = swift_allocObject();
  v268 = xmmword_100017DB0;
  *(v33 + 16) = xmmword_100017DB0;
  sub_100016D80();
  sub_1000167F0();
  v267 = v13;
  *(v33 + 32) = sub_100016E30();
  *(v33 + 40) = v34;
  v252 = v28;
  *(v33 + 48) = v28;
  *(v33 + 56) = v30;

  v35 = sub_100010400(0, 1, 1, &_swiftEmptyArrayStorage);
  v37 = v35[2];
  v36 = v35[3];
  v38 = v37 + 1;
  if (v37 >= v36 >> 1)
  {
    goto LABEL_163;
  }

  while (1)
  {
    v39 = v266;
    v253 = v30;
    v35[2] = v38;
    v35[v37 + 4] = v33;
    v40 = swift_allocObject();
    *(v40 + 16) = v268;
    sub_100016D80();
    sub_1000167F0();
    *(v40 + 32) = sub_100016E30();
    *(v40 + 40) = v41;
    sub_10000E950(a2, v21);
    v42 = v259;
    if (v257(v21, 1, v259) == 1)
    {
      sub_10000EC38(v21, &qword_100020CD0, &qword_100017E58);
      sub_100016D80();
      sub_1000167F0();
      v43 = sub_100016E30();
      v45 = v44;
    }

    else
    {
      v43 = sub_100016C80();
      v45 = v46;
      (*(v254 + 8))(v21, v42);
    }

    *(v40 + 48) = v43;
    *(v40 + 56) = v45;
    v48 = v35[2];
    v47 = v35[3];
    if (v48 >= v47 >> 1)
    {
      v35 = sub_100010400((v47 > 1), v48 + 1, 1, v35);
    }

    v35[2] = v48 + 1;
    v35[v48 + 4] = v40;
    sub_100016D80();
    sub_1000167F0();
    v256 = sub_100016E30();
    v50 = v49;
    v51 = [v39 payloadAppStoreID];
    v270 = v32;
    if (v51)
    {
      v52 = v51;
      v53 = sub_100016E20();
      v55 = v54;

      v56 = swift_allocObject();
      *(v56 + 16) = v268;
      goto LABEL_14;
    }

    v57 = [v39 payloadManifestURL];
    if (v57)
    {
      v58 = v57;

      v53 = sub_100016E20();
      v55 = v59;

      sub_100016D80();
      sub_1000167F0();
      v256 = sub_100016E30();
      v50 = v60;
      v56 = swift_allocObject();
      *(v56 + 16) = v268;
LABEL_14:
      sub_100016D80();
      sub_1000167F0();
      *(v56 + 32) = sub_100016E30();
      *(v56 + 40) = v61;
      *(v56 + 48) = v53;
      *(v56 + 56) = v55;
      v63 = v35[2];
      v62 = v35[3];
      v64 = v63 + 1;
      if (v63 < v62 >> 1)
      {
LABEL_15:
        v35[2] = v64;
        v35[v63 + 4] = v56;
        goto LABEL_16;
      }

      goto LABEL_168;
    }

    v235 = [v39 payloadAppComposedIdentifier];
    if (v235)
    {
      v236 = v235;
      v249 = a2;

      v237 = sub_100016E20();
      v239 = v238;

      sub_100016D80();
      sub_1000167F0();
      v256 = sub_100016E30();
      v50 = v240;
      v56 = swift_allocObject();
      *(v56 + 16) = v268;
      sub_100016D80();
      sub_1000167F0();
      *(v56 + 32) = sub_100016E30();
      *(v56 + 40) = v241;
      *(v56 + 48) = v237;
      *(v56 + 56) = v239;
      v63 = v35[2];
      v62 = v35[3];
      v64 = v63 + 1;
      if (v63 < v62 >> 1)
      {
        a2 = v249;
        goto LABEL_15;
      }

      a2 = v249;
LABEL_168:
      v35 = sub_100010400((v62 > 1), v64, 1, v35);
      goto LABEL_15;
    }

LABEL_16:
    v65 = [v39 payloadInstallBehavior];
    v251 = v50;
    if (!v65)
    {
      sub_100016E20();
LABEL_22:

      goto LABEL_24;
    }

    v66 = v65;
    v67 = [v65 payloadInstall];

    v68 = sub_100016E20();
    v70 = v69;

    v71 = sub_100016E20();
    if (!v70)
    {
      goto LABEL_22;
    }

    if (v68 == v71 && v70 == v72)
    {
    }

    else
    {
      sub_1000171B0();
    }

LABEL_24:
    v30 = v267;
    sub_100016D80();
    sub_1000167F0();
    v73 = sub_100016E30();
    v75 = v74;
    v76 = swift_allocObject();
    *(v76 + 16) = v268;
    sub_100016D80();
    sub_1000167F0();
    *(v76 + 32) = sub_100016E30();
    *(v76 + 40) = v77;
    *(v76 + 48) = v73;
    *(v76 + 56) = v75;
    v79 = v35[2];
    v78 = v35[3];
    if (v79 >= v78 >> 1)
    {
      v35 = sub_100010400((v78 > 1), v79 + 1, 1, v35);
    }

    v35[2] = v79 + 1;
    v35[v79 + 4] = v76;
    v80 = [v39 payloadInstallBehavior];
    if (v80)
    {
      v81 = v80;
      v82 = [v80 payloadVersion];

      if (v82)
      {
        v83 = swift_allocObject();
        *(v83 + 16) = v268;
        sub_100016D80();
        sub_1000167F0();
        *(v83 + 32) = sub_100016E30();
        *(v83 + 40) = v84;
        v271 = [v82 unsignedLongLongValue];
        *(v83 + 48) = sub_1000171A0();
        *(v83 + 56) = v85;
        v87 = v35[2];
        v86 = v35[3];
        if (v87 >= v86 >> 1)
        {
          v35 = sub_100010400((v86 > 1), v87 + 1, 1, v35);
        }

        v35[2] = v87 + 1;
        v35[v87 + 4] = v83;
      }
    }

    v88 = [v39 payloadInstallBehavior];
    if (!v88)
    {
      v32 = v270;
      goto LABEL_43;
    }

    v89 = v88;
    v90 = [v88 payloadAllowDownloadsOverCellular];

    v91 = sub_100016E20();
    v93 = v92;

    if (v91 == sub_100016E20() && v93 == v94)
    {

LABEL_37:
      v32 = v270;

      goto LABEL_38;
    }

    v95 = sub_1000171B0();

    if (v95)
    {
      goto LABEL_37;
    }

    if (v91 == sub_100016E20() && v93 == v232)
    {

LABEL_146:

      sub_100016D80();
      v32 = v270;
      goto LABEL_39;
    }

    v242 = sub_1000171B0();

    if (v242)
    {
      goto LABEL_146;
    }

    if (v91 == sub_100016E20() && v93 == v244)
    {

      v32 = v270;
LABEL_157:
      sub_100016D80();
      sub_1000167F0();
      goto LABEL_40;
    }

    v246 = sub_1000171B0();

    v32 = v270;
    if (v246)
    {
      goto LABEL_157;
    }

LABEL_38:
    sub_100016D80();
LABEL_39:
    sub_1000167F0();
LABEL_40:
    v96 = sub_100016E30();
    v98 = v97;
    v30 = swift_allocObject();
    v30[1] = v268;
    sub_100016D80();
    sub_1000167F0();
    *(v30 + 4) = sub_100016E30();
    *(v30 + 5) = v99;
    *(v30 + 6) = v96;
    *(v30 + 7) = v98;
    v101 = v35[2];
    v100 = v35[3];
    if (v101 >= v100 >> 1)
    {
      v35 = sub_100010400((v100 > 1), v101 + 1, 1, v35);
    }

    v35[2] = v101 + 1;
    v35[v101 + 4] = v30;
LABEL_43:
    v102 = [v39 payloadUpdateBehavior];
    if (!v102)
    {
      goto LABEL_55;
    }

    v103 = v102;
    v104 = [v102 payloadAutomaticAppUpdates];

    v105 = sub_100016E20();
    v107 = v106;

    v108 = sub_100016E20();
    v30 = v109;
    if (v105 != v108)
    {
      goto LABEL_47;
    }

    if (v107 == v109)
    {
    }

    else
    {
LABEL_47:
      v110 = sub_1000171B0();

      if ((v110 & 1) == 0)
      {
        v233 = sub_100016E20();
        v30 = v234;
        if (v105 == v233 && v107 == v234)
        {
        }

        else
        {
          v243 = sub_1000171B0();

          if ((v243 & 1) == 0)
          {
            if (v105 == sub_100016E20() && v107 == v245)
            {

              v32 = v270;
LABEL_159:
              sub_100016D80();
              sub_1000167F0();
              goto LABEL_52;
            }

            v247 = sub_1000171B0();

            v32 = v270;
            if (v247)
            {
              goto LABEL_159;
            }

            goto LABEL_50;
          }

          v30 = v107;
        }

        sub_100016D80();
        v32 = v270;
        goto LABEL_51;
      }

      v30 = v107;
      v32 = v270;
    }

LABEL_50:
    sub_100016D80();
LABEL_51:
    sub_1000167F0();
LABEL_52:
    v111 = sub_100016E30();
    v113 = v112;
    v114 = swift_allocObject();
    *(v114 + 16) = v268;
    sub_100016D80();
    sub_1000167F0();
    *(v114 + 32) = sub_100016E30();
    *(v114 + 40) = v115;
    *(v114 + 48) = v111;
    *(v114 + 56) = v113;
    v117 = v35[2];
    v116 = v35[3];
    if (v117 >= v116 >> 1)
    {
      v35 = sub_100010400((v116 > 1), v117 + 1, 1, v35);
    }

    v35[2] = v117 + 1;
    v35[v117 + 4] = v114;
LABEL_55:
    sub_100016D80();
    sub_1000167F0();
    v250 = sub_100016E30();
    v255 = v118;
    sub_100016D80();
    sub_1000167F0();
    v119 = sub_100016E30();
    v21 = v120;
    if ([objc_opt_self() isSharediPad])
    {
    }

    else
    {
      v121 = swift_allocObject();
      *(v121 + 16) = v268;
      sub_100016D80();
      sub_1000167F0();
      *(v121 + 32) = sub_100016E30();
      *(v121 + 40) = v122;
      v30 = [v39 payloadIncludeInBackup];
      LOBYTE(v271) = 2;
      result = sub_100016F70();
      v124 = v271;
      if (v271 == 2)
      {
        __break(1u);
        return result;
      }

      if (v124)
      {

        v21 = v255;

        v119 = v250;
      }

      *(v121 + 48) = v119;
      *(v121 + 56) = v21;
      v126 = v35[2];
      v125 = v35[3];
      v21 = v126 + 1;
      if (v126 >= v125 >> 1)
      {
        v35 = sub_100010400((v125 > 1), v126 + 1, 1, v35);
      }

      v35[2] = v21;
      v35[v126 + 4] = v121;
    }

    v127 = [v39 payloadAttributes];
    if (!v127)
    {
      goto LABEL_105;
    }

    v128 = v127;
    sub_100016D80();
    sub_1000167F0();
    v261 = sub_100016E30();
    v262 = v129;
    v130 = [v128 payloadAssociatedDomains];
    v260 = v128;
    if (!v130)
    {
      goto LABEL_75;
    }

    v131 = v130;
    v132 = sub_100016F30();

    v37 = *(v132 + 16);
    v249 = a2;
    v248 = v18;
    if (!v37)
    {
      break;
    }

    v38 = 0;
    v36 = "SOCIATED-DOMAIN ";
    v263 = "SOCIATED-DOMAIN ";
    v264 = "SOCIATED-DOMAINS-DOWNLOAD";
    v18 = (v132 + 40);
    while (1)
    {
      v33 = *(v132 + 16);
      if (v38 >= v33)
      {
        break;
      }

      v134 = *(v18 - 1);
      v133 = *v18;
      ++v38;
      v30 = swift_allocObject();
      v30[1] = v268;

      if (v33 == 1)
      {
        a2 = v267;
        sub_100016D80();
      }

      else
      {
        sub_100016DB0();
        v272._countAndFlagsBits = 0xD000000000000020;
        v272._object = (v264 | 0x8000000000000000);
        sub_100016DA0(v272);
        v271 = v38;
        sub_100016D90();
        v273._countAndFlagsBits = 0;
        v273._object = 0xE000000000000000;
        sub_100016DA0(v273);
        a2 = v267;
        sub_100016DD0();
      }

      sub_1000167F0();
      *(v30 + 4) = sub_100016E30();
      *(v30 + 5) = v135;
      *(v30 + 6) = v134;
      *(v30 + 7) = v133;
      v21 = v35[2];
      v136 = v35[3];
      v32 = v270;
      if (v21 >= v136 >> 1)
      {
        v35 = sub_100010400((v136 > 1), v21 + 1, 1, v35);
      }

      v35[2] = v21 + 1;
      v36 = &v35[v21];
      *(v36 + 32) = v30;
      v18 += 2;
      if (v37 == v38)
      {
        goto LABEL_74;
      }
    }

    __break(1u);
LABEL_163:
    v35 = sub_100010400((v36 > 1), v38, 1, v35);
  }

LABEL_74:

  a2 = v249;
  v18 = v248;
  v128 = v260;
LABEL_75:
  v137 = [v128 payloadAssociatedDomainsEnableDirectDownloads];
  v138 = [v137 BOOLValue];

  if (v138)
  {
    v139 = swift_allocObject();
    *(v139 + 16) = v268;
    sub_100016D80();
    sub_1000167F0();
    *(v139 + 32) = sub_100016E30();
    *(v139 + 40) = v140;
    v141 = v262;
    *(v139 + 48) = v261;
    *(v139 + 56) = v141;
    v142 = v35[2];
    v143 = v35[3];

    if (v142 >= v143 >> 1)
    {
      v35 = sub_100010400((v143 > 1), v142 + 1, 1, v35);
    }

    v35[2] = v142 + 1;
    v35[v142 + 4] = v139;
    v128 = v260;
  }

  v144 = [v128 payloadCellularSliceUUID];
  if (v144)
  {

    v145 = swift_allocObject();
    *(v145 + 16) = v268;
    sub_100016D80();
    sub_1000167F0();
    *(v145 + 32) = sub_100016E30();
    *(v145 + 40) = v146;
    v147 = v262;
    *(v145 + 48) = v261;
    *(v145 + 56) = v147;
    v148 = v35[2];
    v149 = v35[3];

    if (v148 >= v149 >> 1)
    {
      v35 = sub_100010400((v149 > 1), v148 + 1, 1, v35);
    }

    v35[2] = v148 + 1;
    v35[v148 + 4] = v145;
    v128 = v260;
  }

  v150 = [v128 payloadContentFilterUUID];
  if (v150)
  {

    v151 = swift_allocObject();
    *(v151 + 16) = v268;
    sub_100016D80();
    sub_1000167F0();
    *(v151 + 32) = sub_100016E30();
    *(v151 + 40) = v152;
    v153 = v262;
    *(v151 + 48) = v261;
    *(v151 + 56) = v153;
    v154 = v35[2];
    v155 = v35[3];

    if (v154 >= v155 >> 1)
    {
      v35 = sub_100010400((v155 > 1), v154 + 1, 1, v35);
    }

    v35[2] = v154 + 1;
    v35[v154 + 4] = v151;
    v128 = v260;
  }

  v156 = [v128 payloadDNSProxyUUID];
  if (v156)
  {

    v157 = swift_allocObject();
    *(v157 + 16) = v268;
    sub_100016D80();
    sub_1000167F0();
    *(v157 + 32) = sub_100016E30();
    *(v157 + 40) = v158;
    v159 = v262;
    *(v157 + 48) = v261;
    *(v157 + 56) = v159;
    v160 = v35[2];
    v161 = v35[3];

    if (v160 >= v161 >> 1)
    {
      v35 = sub_100010400((v161 > 1), v160 + 1, 1, v35);
    }

    v35[2] = v160 + 1;
    v35[v160 + 4] = v157;
    v128 = v260;
  }

  v162 = [v128 payloadRelayUUID];
  if (v162)
  {

    v163 = swift_allocObject();
    *(v163 + 16) = v268;
    sub_100016D80();
    sub_1000167F0();
    *(v163 + 32) = sub_100016E30();
    *(v163 + 40) = v164;
    v165 = v262;
    *(v163 + 48) = v261;
    *(v163 + 56) = v165;
    v166 = v35[2];
    v167 = v35[3];

    if (v166 >= v167 >> 1)
    {
      v35 = sub_100010400((v167 > 1), v166 + 1, 1, v35);
    }

    v35[2] = v166 + 1;
    v35[v166 + 4] = v163;
    v128 = v260;
  }

  v168 = [v128 payloadTapToPayScreenLock];
  v169 = [v168 BOOLValue];

  if (v169)
  {
    v170 = swift_allocObject();
    *(v170 + 16) = v268;
    sub_100016D80();
    sub_1000167F0();
    *(v170 + 32) = sub_100016E30();
    *(v170 + 40) = v171;
    v172 = v262;
    *(v170 + 48) = v261;
    *(v170 + 56) = v172;
    v173 = v35[2];
    v174 = v35[3];

    if (v173 >= v174 >> 1)
    {
      v35 = sub_100010400((v174 > 1), v173 + 1, 1, v35);
    }

    v35[2] = v173 + 1;
    v35[v173 + 4] = v170;
    v128 = v260;
  }

  v175 = [v128 payloadVPNUUID];
  if (v175)
  {

    v176 = swift_allocObject();
    *(v176 + 16) = v268;
    sub_100016D80();
    sub_1000167F0();
    *(v176 + 32) = sub_100016E30();
    *(v176 + 40) = v177;
    v178 = v262;
    *(v176 + 48) = v261;
    *(v176 + 56) = v178;
    v180 = v35[2];
    v179 = v35[3];
    if (v180 >= v179 >> 1)
    {
      v35 = sub_100010400((v179 > 1), v180 + 1, 1, v35);
    }

    v35[2] = v180 + 1;
    v35[v180 + 4] = v176;
  }

  else
  {
  }

LABEL_105:
  v181 = [v266 payloadAppConfig];
  if (v181 && (v182 = v181, v183 = [v181 payloadDataAssetReference], v182, v183))
  {

    v184 = swift_allocObject();
    *(v184 + 16) = v268;
    sub_100016D80();
    sub_1000167F0();
    *(v184 + 32) = sub_100016E30();
    *(v184 + 40) = v185;
    v186 = v255;
    *(v184 + 48) = v250;
    *(v184 + 56) = v186;
    v188 = v35[2];
    v187 = v35[3];
    if (v188 >= v187 >> 1)
    {
      v35 = sub_100010400((v187 > 1), v188 + 1, 1, v35);
    }

    v35[2] = v188 + 1;
    v35[v188 + 4] = v184;
  }

  else
  {
  }

  v189 = [v266 payloadAppConfig];
  if (v189)
  {
    v190 = v189;
    v191 = [v189 payloadPasswords];

    if (v191)
    {
      sub_10000EE34(0, &qword_100020CC0, RMModelAppManagedDeclaration_CredentialConfig_ptr);
      v192 = sub_100016F30();

      v193 = swift_allocObject();
      *(v193 + 16) = v268;
      sub_100016D80();
      sub_1000167F0();
      *(v193 + 32) = sub_100016E30();
      *(v193 + 40) = v194;
      if (v192 >> 62)
      {
        v195 = sub_100017150();
      }

      else
      {
        v195 = *((v192 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v271 = v195;
      *(v193 + 48) = sub_1000171A0();
      *(v193 + 56) = v196;
      v198 = v35[2];
      v197 = v35[3];
      if (v198 >= v197 >> 1)
      {
        v35 = sub_100010400((v197 > 1), v198 + 1, 1, v35);
      }

      v35[2] = v198 + 1;
      v35[v198 + 4] = v193;
    }
  }

  v199 = [v266 payloadAppConfig];
  if (v199)
  {
    v200 = v199;
    v201 = [v199 payloadIdentities];

    if (v201)
    {
      sub_10000EE34(0, &qword_100020CC0, RMModelAppManagedDeclaration_CredentialConfig_ptr);
      v202 = sub_100016F30();

      v203 = swift_allocObject();
      *(v203 + 16) = v268;
      sub_100016D80();
      sub_1000167F0();
      *(v203 + 32) = sub_100016E30();
      *(v203 + 40) = v204;
      if (v202 >> 62)
      {
        v205 = sub_100017150();
      }

      else
      {
        v205 = *((v202 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v271 = v205;
      *(v203 + 48) = sub_1000171A0();
      *(v203 + 56) = v206;
      v208 = v35[2];
      v207 = v35[3];
      if (v208 >= v207 >> 1)
      {
        v35 = sub_100010400((v207 > 1), v208 + 1, 1, v35);
      }

      v35[2] = v208 + 1;
      v35[v208 + 4] = v203;
    }
  }

  v209 = [v266 payloadAppConfig];
  if (v209)
  {
    v210 = v209;
    v211 = [v209 payloadCertificates];

    if (v211)
    {
      sub_10000EE34(0, &qword_100020CC0, RMModelAppManagedDeclaration_CredentialConfig_ptr);
      v212 = sub_100016F30();

      v213 = swift_allocObject();
      *(v213 + 16) = v268;
      sub_100016D80();
      sub_1000167F0();
      *(v213 + 32) = sub_100016E30();
      *(v213 + 40) = v214;
      if (v212 >> 62)
      {
        v215 = sub_100017150();
      }

      else
      {
        v215 = *((v212 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v271 = v215;
      *(v213 + 48) = sub_1000171A0();
      *(v213 + 56) = v216;
      v218 = v35[2];
      v217 = v35[3];
      if (v218 >= v217 >> 1)
      {
        v35 = sub_100010400((v217 > 1), v218 + 1, 1, v35);
      }

      v35[2] = v218 + 1;
      v35[v218 + 4] = v213;
    }
  }

  v219 = sub_100012DDC(&_swiftEmptyArrayStorage);
  sub_10000E950(a2, v18);
  v220 = v259;
  if (v257(v18, 1, v259) == 1)
  {
    sub_10000EC38(v18, &qword_100020CD0, &qword_100017E58);
  }

  else
  {
    v221 = sub_100016C80();
    v223 = v222;
    (*(v254 + 8))(v18, v220);
    v224 = RMUIConfigurationUIHiddenDetailAppBundleID;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v271 = v219;
    sub_10000733C(v221, v223, v224, isUniquelyReferenced_nonNull_native);
  }

  v226 = objc_opt_self();
  v227 = sub_100016DF0();

  v228 = sub_100016DF0();

  sub_100001658(&unk_100020CE0, &qword_100018260);
  isa = sub_100016F20().super.isa;

  type metadata accessor for RMUIConfigurationUIHiddenDetail(0);
  sub_10000E9C0();
  v230 = sub_100016D50().super.isa;

  v231 = [v226 configurationUIWithTitle:v227 description:v228 details:isa hiddenDetails:v230];

  return v231;
}

uint64_t sub_10000DDC4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_100001658(&qword_100020CD0, &qword_100017E58) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_100016CF0();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10000DEBC, 0, 0);
}

uint64_t sub_10000DEBC()
{
  v37 = v0;
  if (qword_100020AA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_100016D40();
  *(v0 + 64) = sub_100006810(v2, qword_100021550);
  v3 = v1;
  v4 = sub_100016D20();
  v5 = sub_100016FD0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v36 = v8;
    *v7 = 136446210;
    v9 = [v6 declaration];
    v10 = [v9 declarationIdentifier];

    v11 = sub_100016E20();
    v13 = v12;

    v14 = sub_10001070C(v11, v13, &v36);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Get configuration UI for: %{public}s", v7, 0xCu);
    sub_100009990(v8);
  }

  v15 = [*(v0 + 16) declaration];
  *(v0 + 72) = v15;
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  *(v0 + 80) = v16;
  if (v16)
  {
    v17 = *(v0 + 56);
    v19 = *(v0 + 16);
    v18 = *(v0 + 24);
    v20 = objc_opt_self();
    v21 = sub_100016DF0();
    v22 = [v20 newDeclarationKeyWithSubscriberIdentifier:v21 reference:v19];
    *(v0 + 88) = v22;

    v23 = [v22 key];
    sub_100016E20();

    sub_100016CD0();
    v32 = sub_1000074B0(v18);
    v33 = async function pointer to DDMDeclarationStatusRequest.send(to:)[1];
    v34 = swift_task_alloc();
    *(v0 + 96) = v34;
    *v34 = v0;
    v34[1] = sub_10000E3D0;
    v35 = *(v0 + 56);

    return DDMDeclarationStatusRequest.send(to:)(v32 & 1);
  }

  else
  {

    v24 = sub_100016D20();
    v25 = sub_100016FE0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Invalid configuration type in configurationUI", v26, 2u);
    }

    sub_10000688C();
    swift_allocError();
    *v27 = 0xD00000000000002DLL;
    *(v27 + 8) = 0x8000000100019970;
    *(v27 + 16) = 1;
    swift_willThrow();
    v28 = *(v0 + 56);
    v29 = *(v0 + 32);

    v30 = *(v0 + 8);

    return v30(0);
  }
}

uint64_t sub_10000E3D0(uint64_t a1)
{
  v3 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = a1;

  if (v1)
  {

    v4 = sub_10000E7DC;
  }

  else
  {
    v4 = sub_10000E4EC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000E4EC()
{
  v1 = *(v0 + 104);
  if (*(v1 + 16) == 1)
  {
    goto LABEL_6;
  }

  v2 = *(v0 + 64);
  v3 = *(v0 + 88);

  v4 = sub_100016D20();
  v5 = sub_100016FE0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 104);
  if (v6)
  {
    v8 = *(v0 + 88);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543618;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2048;
    *(v9 + 14) = *(v1 + 16);
    v11 = v8;

    _os_log_impl(&_mh_execute_header, v4, v5, "Invalid status returned for: %{public}@ - count: %ld", v9, 0x16u);
    sub_10000EC38(v10, &qword_100020F40, &qword_100017E10);
  }

  else
  {
    v12 = *(v0 + 104);
  }

  v13 = *(v1 + 16);
  v1 = *(v0 + 104);
  if (v13)
  {
LABEL_6:
    v14 = *(v0 + 32);
    v15 = sub_100016C90();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v14, v1 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v15);

    v17 = 0;
  }

  else
  {
    v28 = *(v0 + 104);

    v15 = sub_100016C90();
    v16 = *(v15 - 8);
    v17 = 1;
  }

  v18 = *(v0 + 80);
  v19 = *(v0 + 88);
  v20 = *(v0 + 72);
  v22 = *(v0 + 48);
  v21 = *(v0 + 56);
  v24 = *(v0 + 32);
  v23 = *(v0 + 40);
  (*(v16 + 56))(v24, v17, 1, v15);
  v25 = sub_10000B9A4(v18, v24);

  sub_10000EC38(v24, &qword_100020CD0, &qword_100017E58);
  (*(v22 + 8))(v21, v23);

  v26 = *(v0 + 8);

  return v26(1, v25);
}

uint64_t sub_10000E7DC()
{
  v1 = v0[8];
  v2 = sub_100016D20();
  v3 = sub_100016FE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get app status for configurationUI", v4, 2u);
  }

  v5 = v0[11];
  v6 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[5];

  sub_10000688C();
  swift_allocError();
  *v10 = 0xD00000000000002CLL;
  *(v10 + 8) = 0x80000001000199D0;
  *(v10 + 16) = 1;
  swift_willThrow();

  (*(v8 + 8))(v7, v9);
  v11 = v0[7];
  v12 = v0[4];

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_10000E950(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001658(&qword_100020CD0, &qword_100017E58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000E9C0()
{
  result = qword_100020AE0;
  if (!qword_100020AE0)
  {
    type metadata accessor for RMUIConfigurationUIHiddenDetail(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020AE0);
  }

  return result;
}

uint64_t sub_10000EA18()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000EA60()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000F090;

  return sub_10000518C(v2, v3, v5, v4);
}

uint64_t sub_10000EB20()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000EB70()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000F090;

  return sub_1000033EC(v2, v3, v4, v5, v6);
}

uint64_t sub_10000EC38(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001658(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000EC98()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000ECD8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000F090;

  return sub_100003008(v2, v3);
}

uint64_t sub_10000ED8C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_10000EDCC()
{
  result = qword_100020D18;
  if (!qword_100020D18)
  {
    sub_10000EE34(255, &qword_100020D10, RMStoreDeclarationKey_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020D18);
  }

  return result;
}

uint64_t sub_10000EE34(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10000EE7C(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 8)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 9);
  }
}

__n128 sub_10000EE98(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000EEAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 17))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 16);
  if (v3 <= 9)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10000EEF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
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

uint64_t sub_10000EF3C(uint64_t result, unsigned int a2)
{
  if (a2 >= 9)
  {
    *result = a2 - 9;
    *(result + 8) = 0;
    LOBYTE(a2) = 9;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_10000EF6C()
{
  result = qword_100020D30;
  if (!qword_100020D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020D30);
  }

  return result;
}

unint64_t sub_10000EFC4()
{
  result = qword_100020D38;
  if (!qword_100020D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020D38);
  }

  return result;
}

unint64_t sub_10000F018()
{
  result = qword_100020D40;
  if (!qword_100020D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020D40);
  }

  return result;
}

id sub_10000F238()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedAppsApplicator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int sub_10000F290(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001658(&unk_100020EA0, &unk_100018160);
    v3 = sub_1000170B0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_100017220();

      sub_100016E70();
      result = sub_100017230();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_1000171B0();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_10000F44C()
{
  v0 = sub_100016D40();
  sub_1000068E0(v0, qword_100021568);
  sub_100006810(v0, qword_100021568);
  type metadata accessor for ManagedAppsStatus();
  sub_100001658(&unk_100020FA8, &unk_100018240);
  sub_100016E40();
  return sub_100016D30();
}

uint64_t sub_10000F71C(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = sub_100016F30();
  v4[5] = v7;
  v8 = a2;
  v9 = a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_10000F814;

  return (sub_1000157A4)(v7, v8);
}

uint64_t sub_10000F814()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  if (v2)
  {
    v9 = sub_1000167C0();

    v10 = v9;
    v11 = 0;
  }

  else
  {
    isa = sub_100016D50().super.isa;

    v11 = isa;
    v10 = 0;
    v9 = isa;
  }

  v13 = *(v3 + 32);
  (v13)[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v8 + 8);

  return v14();
}

id sub_10000FA2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedAppsStatus();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000FA88()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000FAD8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100009AA0;

  return sub_10000F71C(v2, v3, v5, v4);
}

uint64_t sub_10000FB98(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10000F090;

  return v7();
}

uint64_t sub_10000FC84(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100009AA0;

  return v8();
}

uint64_t sub_10000FD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100001658(&qword_100020CC8, &qword_100017E28) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v24 - v10;
  sub_100016700(a3, v24 - v10, &qword_100020CC8, &qword_100017E28);
  v12 = sub_100016FA0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000EC38(v11, &qword_100020CC8, &qword_100017E28);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_100016F90();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_100016F80();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_100016E50() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_10000EC38(a3, &qword_100020CC8, &qword_100017E28);

    return v22;
  }

LABEL_8:
  sub_10000EC38(a3, &qword_100020CC8, &qword_100017E28);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100010068(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100010160;

  return v7(a1);
}

uint64_t sub_100010160()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100010258()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100010290(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000F090;

  return sub_100010068(a1, v5);
}

uint64_t sub_100010348(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100009AA0;

  return sub_100010068(a1, v5);
}

void *sub_100010400(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001658(&qword_100020FC0, &qword_100018258);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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
    sub_100001658(&unk_100020CE0, &qword_100018260);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100010534(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001658(&qword_100020F58, &qword_100018200);
  v10 = *(sub_100016C90() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_100016C90() - 8);
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

uint64_t sub_10001070C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000107D8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_1000166A0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100009990(v11);
  return v7;
}

unint64_t sub_1000107D8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000108E4(a5, a6);
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
    result = sub_1000170F0();
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

char *sub_1000108E4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100010930(a1, a2);
  sub_100010A60(&off_10001CD58);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100010930(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100010B4C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000170F0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100016E90();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100010B4C(v10, 0);
        result = sub_1000170C0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100010A60(uint64_t result)
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

  result = sub_100010BC0(result, v12, 1, v3);
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

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

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

void *sub_100010B4C(uint64_t a1, uint64_t a2)
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

  sub_100001658(&qword_100020F98, &qword_100018230);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100010BC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001658(&qword_100020F98, &qword_100018230);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

uint64_t sub_100010CB4(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_100017060();

    if (v9)
    {

      sub_10000EE34(0, &qword_100020D10, RMStoreDeclarationKey_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = sub_100017050();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_10001103C(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_10001122C(v21 + 1);
    }

    v19 = v8;
    sub_1000116B4(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_10000EE34(0, &qword_100020D10, RMStoreDeclarationKey_ptr);
  v11 = sub_100017000(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_100011738(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_100017010();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

uint64_t sub_100010EEC(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_100017220();
  sub_100016E70();
  v9 = sub_100017230();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1000171B0() & 1) != 0)
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

    sub_1000118A8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_10001103C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100001658(&qword_100020FC8, &qword_100018268);
    v2 = sub_1000170A0();
    v15 = v2;
    sub_100017040();
    if (sub_100017070())
    {
      sub_10000EE34(0, &qword_100020D10, RMStoreDeclarationKey_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10001122C(v9 + 1);
        }

        v2 = v15;
        result = sub_100017000(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_100017070());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_10001122C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001658(&qword_100020FC8, &qword_100018268);
  result = sub_100017090();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_100017000(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100011454(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001658(&unk_100020EA0, &unk_100018160);
  result = sub_100017090();
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
      sub_100017220();
      sub_100016E70();
      result = sub_100017230();
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

unint64_t sub_1000116B4(uint64_t a1, uint64_t a2)
{
  sub_100017000(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = sub_100017030();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_100011738(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10001122C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100011A28();
      goto LABEL_12;
    }

    sub_100011CD4(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_100017000(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10000EE34(0, &qword_100020D10, RMStoreDeclarationKey_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_100017010();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1000171C0();
  __break(1u);
}

Swift::Int sub_1000118A8(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_100011454(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100011B78();
      goto LABEL_16;
    }

    sub_100011EE8(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_100017220();
  sub_100016E70();
  result = sub_100017230();
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

      result = sub_1000171B0();
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
  result = sub_1000171C0();
  __break(1u);
  return result;
}

id sub_100011A28()
{
  v1 = v0;
  sub_100001658(&qword_100020FC8, &qword_100018268);
  v2 = *v0;
  v3 = sub_100017080();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *sub_100011B78()
{
  v1 = v0;
  sub_100001658(&unk_100020EA0, &unk_100018160);
  v2 = *v0;
  v3 = sub_100017080();
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

uint64_t sub_100011CD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001658(&qword_100020FC8, &qword_100018268);
  result = sub_100017090();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_100017000(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_100011EE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001658(&unk_100020EA0, &unk_100018160);
  result = sub_100017090();
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
      sub_100017220();

      sub_100016E70();
      result = sub_100017230();
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

void *sub_100012120(void *a1, int64_t a2, char a3)
{
  result = sub_100012140(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100012140(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001658(&qword_100020F88, &qword_100018220);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    sub_100001658(&qword_100020F90, &qword_100018228);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100012274(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_100016E20();
  sub_100017220();
  sub_100016E70();
  v4 = sub_100017230();

  return sub_10001290C(a1, v4);
}

unint64_t sub_100012308(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100017220();
  sub_100016E70();
  v6 = sub_100017230();

  return sub_100012A10(a1, a2, v6);
}

uint64_t sub_100012380(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001658(&qword_100020FB8, &qword_100018250);
  v39 = a2;
  result = sub_100017170();
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
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v40 = (v13 - 1) & v13;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = *(*(v5 + 48) + 8 * v21);
      v24 = (v22 + 16 * v21);
      v25 = v24[1];
      v41 = *v24;
      if ((v39 & 1) == 0)
      {
        v26 = v23;
      }

      v27 = *(v8 + 40);
      sub_100016E20();
      sub_100017220();
      sub_100016E70();
      v28 = sub_100017230();

      v29 = -1 << *(v8 + 32);
      v30 = v28 & ~v29;
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v23;
      v17 = (*(v8 + 56) + 16 * v16);
      v13 = v40;
      *v17 = v41;
      v17[1] = v25;
      ++*(v8 + 16);
      v5 = v38;
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
        v40 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
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
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100012654(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001658(&qword_100020F50, &qword_1000181F8);
  v36 = a2;
  result = sub_100017170();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_100016690(v25, v37);
      }

      else
      {
        sub_1000166A0(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_100017220();
      sub_100016E70();
      result = sub_100017230();
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
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_100016690(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

unint64_t sub_10001290C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_100016E20();
      v9 = v8;
      if (v7 == sub_100016E20() && v9 == v10)
      {
        break;
      }

      v12 = sub_1000171B0();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

unint64_t sub_100012A10(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1000171B0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_100012AC8()
{
  v1 = v0;
  sub_100001658(&qword_100020FB8, &qword_100018250);
  v2 = *v0;
  v3 = sub_100017160();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
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

void *sub_100012C38()
{
  v1 = v0;
  sub_100001658(&qword_100020F50, &qword_1000181F8);
  v2 = *v0;
  v3 = sub_100017160();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1000166A0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100016690(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
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

unint64_t sub_100012DDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001658(&qword_100020FB8, &qword_100018250);
    v3 = sub_100017180();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_100012274(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100012EDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001658(&qword_100020F50, &qword_1000181F8);
    v3 = sub_100017180();
    v4 = a1 + 32;

    while (1)
    {
      sub_100016700(v4, &v13, &qword_100020FA0, &qword_100018238);
      v5 = v13;
      v6 = v14;
      result = sub_100012308(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100016690(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_10001300C()
{
  v0 = sub_1000168F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000168A0();
  v6 = &_s22ManagedAppDistribution014DDMAddOrUpdateaB7RequestV3appAcA0aB11DeclarationV_tcfC_ptr;
  if (v5)
  {
    v7 = v5;
    v8 = objc_opt_self();
    v9 = v7;
    sub_1000168B0();
    sub_1000168E0();
    (*(v1 + 8))(v4, v0);
    v10 = sub_100016DF0();

    v11 = [v8 buildWithState:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_100016890();
  if (*(v12 + 16))
  {
    v46 = v4;
    v47 = v0;
    v41 = v11;
    v40 = [objc_opt_self() build];
    sub_100001658(&qword_100020F78, &qword_100018218);
    v13 = sub_100017160();
    v14 = 0;
    v15 = v12 + 64;
    v16 = 1 << *(v12 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v12 + 64);
    v19 = (v16 + 63) >> 6;
    v44 = v13;
    v45 = (v1 + 8);
    v42 = v12;
    v43 = v13 + 64;
    if (v18)
    {
      while (1)
      {
        v20 = __clz(__rbit64(v18));
        v48 = (v18 - 1) & v18;
LABEL_14:
        v23 = v20 | (v14 << 6);
        v24 = (*(v12 + 48) + 16 * v23);
        v26 = *v24;
        v25 = v24[1];
        v27 = *(*(v12 + 56) + 8 * v23);
        v28 = v6[304];
        v49 = objc_opt_self();
        v29 = v27;

        v30 = v46;
        sub_1000168B0();
        sub_1000168E0();
        (*v45)(v30, v47);
        v31 = sub_100016DF0();

        v32 = [v49 buildWithState:v31];

        if (!v32)
        {
          break;
        }

        v33 = v44;
        *(v43 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v34 = (v33[6] + 16 * v23);
        *v34 = v26;
        v34[1] = v25;
        *(v33[7] + 8 * v23) = v32;
        v35 = v33[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_22;
        }

        v33[2] = v37;
        v6 = &_s22ManagedAppDistribution014DDMAddOrUpdateaB7RequestV3appAcA0aB11DeclarationV_tcfC_ptr;
        v12 = v42;
        v18 = v48;
        if (!v48)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v21 = v14;
      while (1)
      {
        v14 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          sub_10000EE34(0, &qword_100020F80, RMModelStatusAppManagedList_ManagedConfigurationState_ptr);
          isa = sub_100016D50().super.isa;

          v39 = v40;
          [v40 setStatusDictionary:isa];

          v11 = v41;
          goto LABEL_20;
        }

        v22 = *(v15 + 8 * v14);
        ++v21;
        if (v22)
        {
          v20 = __clz(__rbit64(v22));
          v48 = (v22 - 1) & v22;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v39 = 0;
LABEL_20:

    [objc_opt_self() buildWithAppConfigState:v11 extensionConfigState:v39];
  }
}

uint64_t sub_100013434(uint64_t a1)
{
  v2 = sub_100016C40();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v27[-v8];
  v10 = *(v3 + 16);
  v10(&v27[-v8], a1, v2);
  v11 = (*(v3 + 88))(v9, v2);
  if (v11 == enum case for ManagedAppStatus.State.optional(_:))
  {
    v12 = &RMModelStatusAppManagedList_State_optional;
LABEL_23:
    v13 = *v12;
    return sub_100016E20();
  }

  if (v11 == enum case for ManagedAppStatus.State.queued(_:))
  {
    goto LABEL_4;
  }

  if (v11 == enum case for ManagedAppStatus.State.promptingForConsent(_:))
  {
    v12 = &RMModelStatusAppManagedList_State_promptingForConsent;
    goto LABEL_23;
  }

  if (v11 == enum case for ManagedAppStatus.State.promptingForLogin(_:))
  {
    v12 = &RMModelStatusAppManagedList_State_promptingForLogin;
    goto LABEL_23;
  }

  if (v11 == enum case for ManagedAppStatus.State.promptingForManagement(_:))
  {
    v12 = &RMModelStatusAppManagedList_State_promptingForManagement;
    goto LABEL_23;
  }

  if (v11 == enum case for ManagedAppStatus.State.downloading(_:))
  {
    v12 = &RMModelStatusAppManagedList_State_downloading;
    goto LABEL_23;
  }

  if (v11 == enum case for ManagedAppStatus.State.installing(_:))
  {
    v12 = &RMModelStatusAppManagedList_State_installing;
    goto LABEL_23;
  }

  if (v11 == enum case for ManagedAppStatus.State.managed(_:))
  {
    v12 = &RMModelStatusAppManagedList_State_managed;
    goto LABEL_23;
  }

  if (v11 == enum case for ManagedAppStatus.State.managedButUninstalled(_:))
  {
    v12 = &RMModelStatusAppManagedList_State_managedButUninstalled;
    goto LABEL_23;
  }

  if (v11 == enum case for ManagedAppStatus.State.failed(_:))
  {
    v12 = &RMModelStatusAppManagedList_State_failed;
    goto LABEL_23;
  }

  if (v11 == enum case for ManagedAppStatus.State.notPresent(_:))
  {
    v12 = &RMModelStatusAppManagedList_State_notPresent;
    goto LABEL_23;
  }

  if (v11 == enum case for ManagedAppStatus.State.configurationApplied(_:))
  {
LABEL_4:
    v12 = &RMModelStatusAppManagedList_State_queued;
    goto LABEL_23;
  }

  if (qword_100020AA8 != -1)
  {
    swift_once();
  }

  v15 = sub_100016D40();
  sub_100006810(v15, qword_100021568);
  v10(v7, a1, v2);
  v16 = sub_100016D20();
  v17 = sub_100016FE0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = v3;
    v20 = swift_slowAlloc();
    *v18 = 136315138;
    v29 = v16;
    v30 = v20;
    v28 = v17;
    v21 = sub_100016C30();
    v23 = v22;
    v24 = *(v19 + 8);
    v24(v7, v2);
    v25 = sub_10001070C(v21, v23, &v30);

    *(v18 + 4) = v25;
    v26 = v29;
    _os_log_impl(&_mh_execute_header, v29, v28, "Unknown managed app state:%s", v18, 0xCu);
    sub_100009990(v20);
  }

  else
  {

    v24 = *(v3 + 8);
    v24(v7, v2);
  }

  v24(v9, v2);
  return 0;
}

uint64_t sub_10001386C(uint64_t a1)
{
  v2 = sub_100001658(&qword_100020F60, &qword_100018208);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v33 - v4;
  v6 = sub_100016B90();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v33 - v13;
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  sub_100016700(a1, v5, &qword_100020F60, &qword_100018208);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000EC38(v5, &qword_100020F60, &qword_100018208);
    return 0;
  }

  (*(v7 + 32))(v16, v5, v6);
  v18 = *(v7 + 16);
  v18(v14, v16, v6);
  v19 = (*(v7 + 88))(v14, v6);
  if (v19 == enum case for ManagedAppStatus.UpdateState.available(_:))
  {
    v20 = &RMModelStatusAppManagedList_UpdateState_available;
  }

  else if (v19 == enum case for ManagedAppStatus.UpdateState.promptingForUpdate(_:))
  {
    v20 = &RMModelStatusAppManagedList_UpdateState_promptingForUpdate;
  }

  else if (v19 == enum case for ManagedAppStatus.UpdateState.promptingForUpdateLogin(_:))
  {
    v20 = &RMModelStatusAppManagedList_UpdateState_promptingForUpdateLogin;
  }

  else if (v19 == enum case for ManagedAppStatus.UpdateState.updating(_:))
  {
    v20 = &RMModelStatusAppManagedList_UpdateState_updating;
  }

  else
  {
    if (v19 != enum case for ManagedAppStatus.UpdateState.failed(_:))
    {
      if (qword_100020AA8 != -1)
      {
        swift_once();
      }

      v23 = sub_100016D40();
      sub_100006810(v23, qword_100021568);
      v18(v11, v16, v6);
      v24 = sub_100016D20();
      v25 = sub_100016FE0();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v33 = v26;
        v35 = swift_slowAlloc();
        v36 = v35;
        *v26 = 136315138;
        v34 = v25;
        v27 = sub_100016B80();
        v29 = v28;
        v30 = *(v7 + 8);
        v30(v11, v6);
        v31 = sub_10001070C(v27, v29, &v36);

        v32 = v33;
        *(v33 + 1) = v31;
        _os_log_impl(&_mh_execute_header, v24, v34, "Unknown managed app update state: %s", v32, 0xCu);
        sub_100009990(v35);
      }

      else
      {

        v30 = *(v7 + 8);
        v30(v11, v6);
      }

      v30(v16, v6);
      v30(v14, v6);
      return 0;
    }

    v20 = &RMModelStatusAppManagedList_UpdateState_failed;
  }

  v21 = *v20;
  v22 = sub_100016E20();
  (*(v7 + 8))(v16, v6);
  return v22;
}

uint64_t sub_100013CF4(uint64_t a1)
{
  v2 = sub_100016C60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for ManagedAppStatus.Reason.unmanagedAppAlreadyInstalled(_:))
  {
    return 0xD000000000000022;
  }

  if (v7 == enum case for ManagedAppStatus.Reason.duplicateConfiguredApp(_:))
  {
    return 0xD00000000000001CLL;
  }

  if (v7 == enum case for ManagedAppStatus.Reason.appStoreDisabled(_:))
  {
    return 0xD000000000000016;
  }

  if (v7 == enum case for ManagedAppStatus.Reason.couldNotVerifyAppID(_:))
  {
    return 0xD000000000000012;
  }

  if (v7 == enum case for ManagedAppStatus.Reason.notAnApp(_:))
  {
    return 0x6F4E2E726F727245;
  }

  if (v7 == enum case for ManagedAppStatus.Reason.notSupported(_:))
  {
    return 0;
  }

  if (v7 == enum case for ManagedAppStatus.Reason.licenseNotFound(_:))
  {
    return 0xD000000000000015;
  }

  if (v7 == enum case for ManagedAppStatus.Reason.downloadFailed(_:))
  {
    return 0xD000000000000014;
  }

  if (v7 == enum case for ManagedAppStatus.Reason.installFailed(_:))
  {
    return 0xD000000000000013;
  }

  if (v7 == enum case for ManagedAppStatus.Reason.userRejected(_:))
  {
    return 0xD000000000000012;
  }

  if (v7 == enum case for ManagedAppStatus.Reason.updateAvailable(_:))
  {
    return 0xD000000000000014;
  }

  if (v7 == enum case for ManagedAppStatus.Reason.updateFailed(_:))
  {
    return 0xD000000000000012;
  }

  if (v7 == enum case for ManagedAppStatus.Reason.isSystemApp(_:))
  {
    return 0xD000000000000011;
  }

  if (v7 == enum case for ManagedAppStatus.Reason.invalidCodeSignature(_:))
  {
    return 0xD00000000000001ALL;
  }

  (*(v3 + 8))(v6, v2);
  return 0x6E552E726F727245;
}

void *sub_1000140A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  sub_100017120();
  v3 = *(sub_100016C60() - 8);
  v4 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v5 = objc_opt_self();
  v6 = *(v3 + 72);
  do
  {
    sub_100013CF4(v4);
    v7 = sub_100016DF0();

    v8 = [v5 buildRequiredOnlyWithCode:v7];

    sub_100017100();
    v9 = _swiftEmptyArrayStorage[2];
    sub_100017130();
    sub_100017140();
    sub_100017110();
    v4 += v6;
    --v1;
  }

  while (v1);
  return _swiftEmptyArrayStorage;
}

id sub_1000141F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_100001658(&qword_100020F60, &qword_100018208);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v69 = (&v60 - v5);
  v6 = sub_100016C40();
  v65 = *(v6 - 8);
  v66 = v6;
  v7 = *(v65 + 64);
  __chkstk_darwin(v6);
  v63 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001658(&unk_100020F68, &qword_100018210);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v60 - v15;
  __chkstk_darwin(v14);
  v18 = &v60 - v17;
  if (a2)
  {
    v19 = sub_100016880();
    v20 = sub_100016C80();
    if (*(v19 + 16))
    {
      v22 = sub_100012308(v20, v21);
      v24 = v23;

      if (v24)
      {
        v25 = *(*(v19 + 56) + 8 * v22);

        sub_10001300C();
        v68 = v26;

        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v68 = 0;
LABEL_8:
  sub_100016C80();
  v67 = sub_100016DF0();

  sub_100016C10();
  v64 = sub_100016DF0();

  sub_100016C20();
  v62 = sub_100016DF0();

  sub_100016C00();
  v27 = sub_100016BF0();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  if (v29(v18, 1, v27) == 1)
  {
    sub_10000EC38(v18, &unk_100020F68, &qword_100018210);
    isa = 0;
  }

  else
  {
    sub_100016BD0();
    v31 = v30;
    (*(v28 + 8))(v18, v27);
    if (v31)
    {
      isa = 0;
    }

    else
    {
      isa = sub_100017240().super.super.isa;
    }
  }

  sub_100016C00();
  if (v29(v16, 1, v27) == 1)
  {
    sub_10000EC38(v16, &unk_100020F68, &qword_100018210);
    v60 = 0;
  }

  else
  {
    sub_100016BE0();
    (*(v28 + 8))(v16, v27);
    v60 = sub_100016DF0();
  }

  sub_100016C00();
  if (v29(v13, 1, v27) == 1)
  {
    sub_10000EC38(v13, &unk_100020F68, &qword_100018210);
    v32 = 0;
  }

  else
  {
    sub_100016BC0();
    (*(v28 + 8))(v13, v27);
    v32 = sub_100016DF0();
  }

  v33 = v63;
  sub_100016C50();
  sub_100013434(v33);
  v35 = v34;
  (*(v65 + 8))(v33, v66);
  if (v35)
  {
    v36 = sub_100016DF0();
  }

  else
  {
    v36 = 0;
  }

  v37 = v69;
  sub_100016BA0();
  sub_10001386C(v37);
  v39 = v38;
  sub_10000EC38(v37, &qword_100020F60, &qword_100018208);
  if (v39)
  {
    v40 = sub_100016DF0();
  }

  else
  {
    v40 = 0;
  }

  v41 = sub_100016C70();
  v42 = sub_1000140A4(v41);

  if (v42)
  {
    sub_10000EE34(0, &qword_100020CF0, RMModelStatusReason_ptr);
    v43.super.isa = sub_100016F20().super.isa;
  }

  else
  {
    v43.super.isa = 0;
  }

  v69 = v43.super.isa;
  v44 = objc_opt_self();
  v59 = v43.super.isa;
  v45 = v68;
  v58 = v40;
  v56 = v32;
  v57 = v36;
  v46 = v67;
  v47 = v64;
  v48 = v32;
  v49 = v62;
  v50 = v40;
  v51 = v36;
  v53 = v60;
  v52 = isa;
  v54 = [v44 buildWithIdentifier:v67 removed:0 declarationIdentifier:v64 name:v62 externalVersionId:isa version:v60 shortVersion:v56 state:v57 updateState:v58 configState:v68 reasons:v59];

  return v54;
}

uint64_t sub_100014808(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_100016C90();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v5 = sub_100016CF0();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_10001493C, 0, 0);
}

uint64_t sub_10001493C()
{
  v1 = v0[10];
  v2 = v0[2];
  sub_100016CD0();
  v3 = [v2 scope] != 1;
  v4 = async function pointer to DDMDeclarationStatusRequest.send(to:)[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_100014A00;
  v6 = v0[10];

  return DDMDeclarationStatusRequest.send(to:)(v3);
}

uint64_t sub_100014A00(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v7 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v5 = sub_10001521C;
  }

  else
  {
    v5 = sub_100014B14;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100014B14()
{
  [*(v0 + 16) scope];
  v1 = sub_100016850();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 112) = sub_100016840();
  v4 = async function pointer to ManagedAppsDaemonClient.getAllAppConfigState()[1];
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_100014BE8;

  return ManagedAppsDaemonClient.getAllAppConfigState()();
}

uint64_t sub_100014BE8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;

  if (v1)
  {

    v7 = sub_1000152C0;
  }

  else
  {
    *(v4 + 128) = a1;
    v7 = sub_100014D14;
  }

  return _swift_task_switch(v7, 0, 0);
}

void *sub_100014D14()
{
  v56 = v0[16];
  v1 = v0[12];
  v2 = *(v1 + 16);
  if (!v2)
  {
    v41 = v0[12];

    v5 = _swiftEmptyArrayStorage;
    v26 = _swiftEmptyArrayStorage[2];
    if (v26)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  v3 = v0[4];
  v55 = objc_opt_self();
  v57 = *(v3 + 16);
  v52 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v4 = v1 + v52;
  v53 = (v3 + 8);
  v51 = (v3 + 32);
  v5 = _swiftEmptyArrayStorage;
  v54 = *(v3 + 72);
  do
  {
    v7 = v0[2];
    v57(v0[7], v4, v0[3]);
    sub_100016BB0();
    v8 = sub_100016DF0();

    v9 = [v55 newDeclarationKey:v8];

    v10 = [v9 storeIdentifier];
    v11 = sub_100016E20();
    v13 = v12;

    v14 = [v7 identifier];
    v15 = sub_100016E20();
    v17 = v16;

    if (v11 == v15 && v13 == v17)
    {
    }

    else
    {
      v19 = sub_1000171B0();

      if ((v19 & 1) == 0)
      {
        (*v53)(v0[7], v0[3]);

        v6 = v54;
        goto LABEL_4;
      }
    }

    v57(v0[6], v0[7], v0[3]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_100010534(0, *(v5 + 2) + 1, 1, v5);
    }

    v21 = *(v5 + 2);
    v20 = *(v5 + 3);
    if (v21 >= v20 >> 1)
    {
      v5 = sub_100010534(v20 > 1, v21 + 1, 1, v5);
    }

    v23 = v0[6];
    v22 = v0[7];
    v24 = v0[3];

    (*v53)(v22, v24);
    *(v5 + 2) = v21 + 1;
    v6 = v54;
    (*v51)(&v5[v52 + v21 * v54], v23, v24);
LABEL_4:
    v4 += v6;
    --v2;
  }

  while (v2);
  v25 = v0[12];

  v26 = *(v5 + 2);
  if (v26)
  {
LABEL_18:
    v27 = v0[4];
    result = sub_100012120(0, v26, 0);
    v29 = 0;
    v58 = &v5[(*(v27 + 80) + 32) & ~*(v27 + 80)];
    while (v29 < *(v5 + 2))
    {
      v30 = v0[5];
      v31 = v0[3];
      (*(v27 + 16))(v30, &v58[*(v27 + 72) * v29], v31);
      v32 = sub_1000141F8(v30, v56);
      v33 = [v32 serializeWithType:1];

      v34 = sub_100016D60();
      result = (*(v27 + 8))(v30, v31);
      v36 = _swiftEmptyArrayStorage[2];
      v35 = _swiftEmptyArrayStorage[3];
      if (v36 >= v35 >> 1)
      {
        result = sub_100012120((v35 > 1), v36 + 1, 1);
      }

      ++v29;
      _swiftEmptyArrayStorage[2] = v36 + 1;
      _swiftEmptyArrayStorage[v36 + 4] = v34;
      if (v26 == v29)
      {
        v37 = v0[14];
        v39 = v0[9];
        v38 = v0[10];
        v40 = v0[8];

        (*(v39 + 8))(v38, v40);

        goto LABEL_26;
      }
    }

    __break(1u);
    return result;
  }

LABEL_25:
  v42 = v0[14];
  v44 = v0[9];
  v43 = v0[10];
  v45 = v0[8];

  (*(v44 + 8))(v43, v45);

LABEL_26:
  v46 = v0[10];
  v48 = v0[6];
  v47 = v0[7];
  v49 = v0[5];

  v50 = v0[1];

  return v50(_swiftEmptyArrayStorage);
}