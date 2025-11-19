uint64_t sub_1B5E89300@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B5DF33E0(&qword_1EB90ECD8, &qword_1B5EB70B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v16 - v5;
  v7 = *(v1 + 24);
  sub_1B5E89CA0(v16 - v5);
  v8 = sub_1B5DF33E0(&qword_1EB90ECD0, &unk_1B5EBB660);
  if (sub_1B5DF46E0(v6, 1, v8) == 1)
  {
    sub_1B5DF4428(v6, &qword_1EB90ECD8, &qword_1B5EB70B0);
    if (qword_1ED7D2988 != -1)
    {
      swift_once();
    }

    v9 = sub_1B5EA53B0();
    sub_1B5DFD794(v9, qword_1ED7D2990);

    v10 = sub_1B5EA5380();
    v11 = sub_1B5EA5A40();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16[1] = v13;
      *v12 = 136446466;
      *(v12 + 4) = sub_1B5E5B1CC();
      *(v12 + 12) = 2082;
      *(v12 + 14) = sub_1B5E5B1CC();
      _os_log_impl(&dword_1B5DED000, v10, v11, "%{public}s: no continuation found for: %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C8B330](v13, -1, -1);
      MEMORY[0x1B8C8B330](v12, -1, -1);
    }

    v14 = 1;
  }

  else
  {
    (*(*(v8 - 8) + 32))(a1, v6, v8);
    v14 = 0;
  }

  return sub_1B5DF3658(a1, v14, 1, v8);
}

void SummarizationClient.didEncounterTextAssistantStreamingError(_:forRequestIdentifier:)()
{
  sub_1B5DFD8A8();
  v2 = v0;
  v4 = v3;
  v5 = sub_1B5DF33E0(&qword_1EB90ECD8, &qword_1B5EB70B0);
  sub_1B5E01CF8(v5);
  v7 = *(v6 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5E08858();
  v9 = sub_1B5DF33E0(&qword_1EB90ECD0, &unk_1B5EBB660);
  sub_1B5DF5DA8(v9);
  v28 = v10;
  v12 = *(v11 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  if (qword_1ED7D2988 != -1)
  {
    sub_1B5E25E6C();
    swift_once();
  }

  v16 = sub_1B5EA53B0();
  sub_1B5E90818(v16, qword_1ED7D2990);

  v17 = sub_1B5EA5380();
  v18 = sub_1B5EA5A60();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = sub_1B5E90C10();
    v26 = v4;
    v20 = v19;
    v21 = sub_1B5E90980();
    v27 = v2;
    v29 = v21;
    *v20 = 136446466;
    sub_1B5E90A20();
    *(v20 + 4) = sub_1B5E5B1CC();
    *(v20 + 12) = 2082;
    sub_1B5E5F940();
    *(v20 + 14) = sub_1B5E5B1CC();
    _os_log_impl(&dword_1B5DED000, v17, v18, "%{public}s called for requestIdentifier: %{public}s", v20, 0x16u);
    sub_1B5E908AC();
    v2 = v27;
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330]();
    v4 = v26;
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330]();
  }

  else
  {

    sub_1B5E90A20();
  }

  sub_1B5E6FB20();
  sub_1B5E89300(v22);
  if (sub_1B5DF46E0(v1, 1, v9) == 1)
  {
    sub_1B5DF4428(v1, &qword_1EB90ECD8, &qword_1B5EB70B0);
  }

  else
  {
    v23 = v28;
    (*(v28 + 32))(v15, v1, v9);
    v29 = v4;
    v24 = v4;
    sub_1B5EA59A0();
    v25 = *(v2 + 24);
    sub_1B5E6FB20();
    sub_1B5E88C48();
    (*(v23 + 8))(v15, v9);
  }

  sub_1B5DFD8C0();
}

Swift::Void __swiftcall SummarizationClient.didFinishTextAssistantStreaming(forRequestIdentifier:)(Swift::String forRequestIdentifier)
{
  sub_1B5DFD8A8();
  v4 = v1;
  v5 = sub_1B5DF33E0(&qword_1EB90ECD8, &qword_1B5EB70B0);
  sub_1B5E01CF8(v5);
  v7 = *(v6 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5E5F57C();
  v9 = sub_1B5DF33E0(&qword_1EB90ECD0, &unk_1B5EBB660);
  sub_1B5DF5DA8(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v14);
  sub_1B5E08858();
  if (qword_1ED7D2988 != -1)
  {
    sub_1B5E25E6C();
    swift_once();
  }

  v15 = sub_1B5EA53B0();
  sub_1B5E90818(v15, qword_1ED7D2990);

  v16 = sub_1B5EA5380();
  v17 = sub_1B5EA5A60();

  if (os_log_type_enabled(v16, v17))
  {
    v24 = v11;
    v18 = sub_1B5E90C10();
    sub_1B5E90980();
    *v18 = 136446466;
    *(v18 + 4) = sub_1B5E5B1CC();
    *(v18 + 12) = 2082;
    sub_1B5E5F940();
    *(v18 + 14) = sub_1B5E5B1CC();
    _os_log_impl(&dword_1B5DED000, v16, v17, "%{public}s called for requestIdentifier: %{public}s", v18, 0x16u);
    sub_1B5E908AC();
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330]();
    v11 = v24;
    sub_1B5E260EC();
    MEMORY[0x1B8C8B330]();
  }

  sub_1B5E6FB20();
  sub_1B5E89300(v19);
  if (sub_1B5DF46E0(v2, 1, v9) == 1)
  {
    sub_1B5DF4428(v2, &qword_1EB90ECD8, &qword_1B5EB70B0);
  }

  else
  {
    v20 = *(v11 + 32);
    v21 = sub_1B5E26048();
    v22(v21);
    sub_1B5EA59A0();
    v23 = *(v4 + 24);
    sub_1B5E6FB20();
    sub_1B5E88C48();
    (*(v11 + 8))(v3, v9);
  }

  sub_1B5DFD8C0();
}

void sub_1B5E89CA0(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_1B5E8FB4C((v3 + 16), a1);
  os_unfair_lock_unlock((v3 + 24));
}

uint64_t SummarizationClient.summarize(_:options:)()
{
  sub_1B5E01DFC();
  v3 = v2;
  *(v1 + 48) = v4;
  *(v1 + 56) = v0;
  v5 = sub_1B5EA4340();
  *(v1 + 64) = v5;
  sub_1B5E01C50(v5);
  *(v1 + 72) = v6;
  v8 = *(v7 + 64);
  *(v1 + 80) = sub_1B5E2D0C8();
  v9 = sub_1B5DF33E0(&qword_1EB90F3E8, &qword_1B5EB9E30);
  sub_1B5E01CF8(v9);
  v11 = *(v10 + 64);
  *(v1 + 88) = sub_1B5E2D0C8();
  *(v1 + 144) = *v3;
  *(v1 + 145) = *(v3 + 1);
  *(v1 + 96) = *(v3 + 8);
  *(v1 + 44) = *(v3 + 24);
  v12 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

{
  sub_1B5E01DFC();
  v1[19] = v2;
  v1[20] = v0;
  v1[18] = v3;
  v4 = type metadata accessor for SummarizationXPCRequest.Request(0);
  v1[21] = v4;
  sub_1B5E01CF8(v4);
  v6 = *(v5 + 64);
  v1[22] = sub_1B5E2D0C8();
  sub_1B5E909C4();
  v7 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

{
  sub_1B5E01DFC();
  v4 = sub_1B5E90B58(v2, v3);
  v1[5] = v4;
  sub_1B5E01CF8(v4);
  v6 = *(v5 + 64);
  v7 = sub_1B5E2D0C8();
  v8 = *v0;
  v1[6] = v7;
  v1[7] = v8;
  sub_1B5E90414();
  v9 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

{
  sub_1B5E01DFC();
  v4 = sub_1B5E90B58(v2, v3);
  v1[5] = v4;
  sub_1B5E01CF8(v4);
  v6 = *(v5 + 64);
  v7 = sub_1B5E2D0C8();
  v8 = *v0;
  v1[6] = v7;
  v1[7] = v8;
  sub_1B5E90414();
  v9 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

{
  sub_1B5E2CED8();
  v3 = v2;
  v1[26] = v4;
  v1[27] = v0;
  v5 = type metadata accessor for SummarizationXPCRequest.Request(0);
  v1[28] = v5;
  sub_1B5E01CF8(v5);
  v7 = *(v6 + 64);
  v8 = sub_1B5E2D0C8();
  v9 = *v3;
  v1[29] = v8;
  v1[30] = v9;
  sub_1B5E909C4();
  v10 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

{
  sub_1B5E2CED8();
  v4 = sub_1B5E90B38(v3);
  v2[4] = v4;
  sub_1B5E01CF8(v4);
  v6 = *(v5 + 64);
  v7 = sub_1B5E2D0C8();
  v8 = *v1;
  v2[5] = v7;
  v2[6] = v8;
  v2[7] = *v0;
  sub_1B5E90414();
  v9 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

{
  sub_1B5E2CED8();
  v4 = sub_1B5E90B38(v3);
  v2[4] = v4;
  sub_1B5E01CF8(v4);
  v6 = *(v5 + 64);
  v7 = sub_1B5E2D0C8();
  v8 = *v1;
  v2[5] = v7;
  v2[6] = v8;
  v2[7] = *v0;
  sub_1B5E90414();
  v9 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B5E89DF0()
{
  v1 = *(v0 + 44);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 145);
  v5 = *(v0 + 144);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v17 = *(v0 + 64);
  v8 = [*(v0 + 48) string];
  sub_1B5EA56A0();
  v10 = v9;

  *(v0 + 112) = v10;
  *(v0 + 16) = v5;
  *(v0 + 17) = v4;
  *(v0 + 24) = v3;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  sub_1B5EA4330();
  sub_1B5EA4300();
  *(v0 + 120) = v11;
  (*(v7 + 8))(v6, v17);
  v12 = swift_task_alloc();
  *(v0 + 128) = v12;
  *v12 = v0;
  v12[1] = sub_1B5E89F40;
  v13 = *(v0 + 88);
  v14 = *(v0 + 56);
  sub_1B5E90AA4();

  return SummarizationClient.summarize(_:options:requestIdentifier:)();
}

uint64_t sub_1B5E89F40()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  v3[17] = v0;

  if (v0)
  {
    v10 = v3[14];
    v9 = v3[15];
  }

  else
  {
    v11 = v3[14];
    v12 = v3[15];
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1B5E8A058()
{
  sub_1B5E34EC0();
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  sub_1B5E8E32C();
  v3 = *v1;
  v4 = v1[1];

  v5 = sub_1B5E8A178(v3);
  sub_1B5DF4428(v1, &qword_1EB90F3E8, &qword_1B5EB9E30);

  sub_1B5E90998();

  return v6(v5);
}

uint64_t sub_1B5E8A114()
{
  sub_1B5E01DFC();
  v2 = v0[10];
  v1 = v0[11];

  sub_1B5E2CF4C();
  v4 = v0[17];

  return v3();
}

id sub_1B5E8A178(void *a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1B5E5F940();
  sub_1B5EA5670();
  sub_1B5E9070C();

  v3 = [v2 initWithString_];

  return v3;
}

uint64_t sub_1B5E8A26C()
{
  sub_1B5E60060();
  sub_1B5E9083C();
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  sub_1B5EA5BC0();

  sub_1B5E90308();
  sub_1B5E90914();
  MEMORY[0x1B8C8A360]();

  v8 = sub_1B5DF33E0(&qword_1EB90F208, &qword_1B5EB7840);
  sub_1B5E9048C(v8);
  v9 = *(v0 + 32);
  v10 = *(v0 + 64);
  v11 = *(v0 + 16);
  v1[2] = *(v0 + 48);
  v1[3] = v10;
  *v1 = v11;
  v1[1] = v9;
  swift_storeEnumTagMultiPayload();
  v21 = *(v0 + 48);
  v22 = *(v0 + 56);
  v23 = *(v0 + 64);
  v12 = type metadata accessor for SummarizationXPCRequest(0);
  sub_1B5E9086C(v12);
  sub_1B5E063C0(v0 + 16, v0 + 80);

  sub_1B5E903D4();
  *(v0 + 184) = SummarizationXPCRequest.init(request:requestInfo:onBehalfOfProcess:originatingProcess:)(v2, v13, v14, v15);
  v16 = swift_task_alloc();
  *(v0 + 192) = v16;
  *v16 = v0;
  v16[1] = sub_1B5E8A3F4;
  v17 = *(v0 + 160);
  sub_1B5E9043C();
  sub_1B5E5F958();

  return sub_1B5E84F28(v18);
}

uint64_t sub_1B5E8A3F4()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  sub_1B5E907CC();
  *v3 = v2;
  v5 = *(v4 + 192);
  *v3 = *v1;
  *(v2 + 200) = v6;
  *(v2 + 208) = v0;

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B5E8A4F4()
{
  sub_1B5E34EC0();
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[18];
  sub_1B5E7EE5C();
  v4 = v0[25];
  v5 = v0[23];
  if (v2)
  {

    v6 = v0[22];
  }

  else
  {
    v8 = v0[22];
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B5E8A5A4()
{
  sub_1B5E01DFC();

  v1 = *(v0 + 208);
  v2 = *(v0 + 176);

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E8A684()
{
  sub_1B5E60060();
  sub_1B5E9083C();
  sub_1B5E90A7C();
  sub_1B5E90A20();
  v2 = v0 + *(sub_1B5DF33E0(&qword_1EB90F1E8, &qword_1B5EB7830) + 48);
  sub_1B5E904C0();
  sub_1B5E8FD18();
  sub_1B5E90A54();
  swift_storeEnumTagMultiPayload();
  v3 = sub_1B5E90660();
  sub_1B5E9086C(v3);
  sub_1B5E90968();

  sub_1B5E903D4();
  v7 = SummarizationXPCRequest.init(request:requestInfo:onBehalfOfProcess:originatingProcess:)(v0, v4, v5, v6);
  sub_1B5E90740(v7);
  v8 = swift_task_alloc();
  v9 = sub_1B5E90718(v8);
  *v9 = v10;
  v9[1] = sub_1B5E8A79C;
  v11 = *(v1 + 32);
  sub_1B5E9043C();
  sub_1B5E5F958();

  return sub_1B5E84F28(v12);
}

uint64_t sub_1B5E8A79C()
{
  sub_1B5E2CED8();
  sub_1B5E2CE78();
  v4 = v3;
  sub_1B5E2CE48();
  *v5 = v4;
  v7 = *(v6 + 96);
  v8 = *v2;
  sub_1B5E2CE38();
  *v9 = v8;
  *(v4 + 104) = v0;

  if (!v0)
  {
    *(v4 + 112) = v1;
  }

  sub_1B5E2CE68();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B5E8A8A0()
{
  sub_1B5E2CED8();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[2];
  sub_1B5E7EE5C();

  v5 = v0[6];

  sub_1B5E2CF4C();

  return v6();
}

uint64_t sub_1B5E8A928()
{
  sub_1B5E01DFC();

  v1 = *(v0 + 104);
  v2 = *(v0 + 48);

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E8AA08()
{
  sub_1B5E60060();
  sub_1B5E9083C();
  sub_1B5E90A7C();
  sub_1B5E90A20();
  v2 = v0 + *(sub_1B5DF33E0(&qword_1EB90F1D0, &qword_1B5EB7820) + 48);
  sub_1B5E8FD18();
  sub_1B5E90A54();
  swift_storeEnumTagMultiPayload();
  v3 = sub_1B5E90660();
  sub_1B5E9086C(v3);
  sub_1B5E90968();

  sub_1B5E903D4();
  v7 = SummarizationXPCRequest.init(request:requestInfo:onBehalfOfProcess:originatingProcess:)(v0, v4, v5, v6);
  sub_1B5E90740(v7);
  v8 = swift_task_alloc();
  v9 = sub_1B5E90718(v8);
  *v9 = v10;
  v9[1] = sub_1B5E8AB34;
  v11 = *(v1 + 32);
  sub_1B5E9043C();
  sub_1B5E5F958();

  return sub_1B5E84F28(v12);
}

uint64_t sub_1B5E8AB34()
{
  sub_1B5E2CED8();
  sub_1B5E2CE78();
  v4 = v3;
  sub_1B5E2CE48();
  *v5 = v4;
  v7 = *(v6 + 96);
  v8 = *v2;
  sub_1B5E2CE38();
  *v9 = v8;
  *(v4 + 104) = v0;

  if (!v0)
  {
    *(v4 + 112) = v1;
  }

  sub_1B5E2CE68();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B5E8ACCC()
{
  sub_1B5E90AC0();
  sub_1B5E5FC6C();
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  sub_1B5EA5BC0();

  sub_1B5E90308();
  sub_1B5E90914();
  MEMORY[0x1B8C8A360]();

  v6 = *(v0 + 32);
  v7 = *(v0 + 48);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v6;
  v8 = *(v0 + 64);
  *(v0 + 112) = v7;
  *(v0 + 128) = v8;
  *v1 = v2;
  v9 = *(v0 + 80);
  v10 = *(v0 + 96);
  v11 = *(v0 + 112);
  *(v1 + 56) = *(v0 + 128);
  *(v1 + 40) = v11;
  *(v1 + 24) = v10;
  *(v1 + 8) = v9;
  swift_storeEnumTagMultiPayload();
  v22 = *(v0 + 48);
  v23 = *(v0 + 56);
  v24 = *(v0 + 64);
  type metadata accessor for SummarizationXPCRequest(0);
  sub_1B5E90694();
  objc_allocWithZone(v12);

  sub_1B5E0647C(v0 + 16, v0 + 144);

  v13 = sub_1B5E90428();
  *(v0 + 248) = SummarizationXPCRequest.init(request:requestInfo:onBehalfOfProcess:originatingProcess:)(v13, v14, v15, v16);
  v17 = swift_task_alloc();
  *(v0 + 256) = v17;
  *v17 = v0;
  v17[1] = sub_1B5E8AE6C;
  v18 = *(v0 + 216);
  sub_1B5E9043C();
  sub_1B5E906E0();

  return sub_1B5E84F28(v19);
}

uint64_t sub_1B5E8AE6C()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  sub_1B5E907CC();
  *v3 = v2;
  v5 = *(v4 + 256);
  *v3 = *v1;
  *(v2 + 264) = v6;
  *(v2 + 272) = v0;

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1B5E8AF6C()
{
  sub_1B5E34EC0();
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[26];
  sub_1B5E7EE5C();
  v4 = v0[33];
  v5 = v0[31];
  if (v2)
  {

    v6 = v0[29];
  }

  else
  {
    v8 = v0[29];
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B5E8B01C()
{
  sub_1B5E01DFC();

  v1 = *(v0 + 272);
  v2 = *(v0 + 232);

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E8B10C()
{
  sub_1B5E5FC6C();
  sub_1B5E90A90();
  sub_1B5E90724();
  swift_storeEnumTagMultiPayload();
  v2 = sub_1B5E90660();
  sub_1B5E9086C(v2);
  sub_1B5E90968();

  sub_1B5E903D4();
  v6 = SummarizationXPCRequest.init(request:requestInfo:onBehalfOfProcess:originatingProcess:)(v0, v3, v4, v5);
  sub_1B5E90740(v6);
  v7 = swift_task_alloc();
  v8 = sub_1B5E90718(v7);
  *v8 = v9;
  v8[1] = sub_1B5E8B210;
  v10 = *(v1 + 24);
  v11 = sub_1B5E9043C();

  return sub_1B5E84F28(v11);
}

uint64_t sub_1B5E8B210()
{
  sub_1B5E2CED8();
  sub_1B5E2CE78();
  v4 = v3;
  sub_1B5E2CE48();
  *v5 = v4;
  v7 = *(v6 + 96);
  v8 = *v2;
  sub_1B5E2CE38();
  *v9 = v8;
  *(v4 + 104) = v0;

  if (!v0)
  {
    *(v4 + 112) = v1;
  }

  sub_1B5E2CE68();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B5E8B314()
{
  sub_1B5E2CED8();
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[2];
  sub_1B5E7EE5C();

  v5 = v0[5];

  sub_1B5E2CF4C();

  return v6();
}

uint64_t sub_1B5E8B39C()
{
  sub_1B5E01DFC();

  v1 = *(v0 + 104);
  v2 = *(v0 + 40);

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E8B48C()
{
  sub_1B5E5FC6C();
  sub_1B5E90A90();
  sub_1B5E90724();
  swift_storeEnumTagMultiPayload();
  v2 = sub_1B5E90660();
  sub_1B5E9086C(v2);
  sub_1B5E90968();

  sub_1B5E903D4();
  v6 = SummarizationXPCRequest.init(request:requestInfo:onBehalfOfProcess:originatingProcess:)(v0, v3, v4, v5);
  sub_1B5E90740(v6);
  v7 = swift_task_alloc();
  v8 = sub_1B5E90718(v7);
  *v8 = v9;
  v8[1] = sub_1B5E8B590;
  v10 = *(v1 + 24);
  v11 = sub_1B5E9043C();

  return sub_1B5E84F28(v11);
}

uint64_t sub_1B5E8B590()
{
  sub_1B5E2CED8();
  sub_1B5E2CE78();
  v4 = v3;
  sub_1B5E2CE48();
  *v5 = v4;
  v7 = *(v6 + 96);
  v8 = *v2;
  sub_1B5E2CE38();
  *v9 = v8;
  *(v4 + 104) = v0;

  if (!v0)
  {
    *(v4 + 112) = v1;
  }

  sub_1B5E2CE68();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

Sage::SummarizationClient::VisualPromptUseCase_optional __swiftcall SummarizationClient.VisualPromptUseCase.init(rawValue:)(Swift::String rawValue)
{
  sub_1B5E905D8();
  sub_1B5EA5D00();
  sub_1B5E9070C();

  if (v2 >= 3)
  {
    v4 = 4;
  }

  else
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t SummarizationClient.VisualPromptUseCase.rawValue.getter()
{
  result = 0x696A6F6D6E6567;
  switch(*v0)
  {
    case 1:
      result = sub_1B5E90520();
      break;
    case 2:
      result = sub_1B5E90C28();
      break;
    case 3:
      result = sub_1B5E90898();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B5E8B790@<X0>(uint64_t *a1@<X8>)
{
  result = SummarizationClient.VisualPromptUseCase.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B5E8B89C(uint64_t a1)
{
  v2 = sub_1B5E8E370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E8B8D8(uint64_t a1)
{
  v2 = sub_1B5E8E370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SummarizationClient.VisualPromptOptions.encode(to:)()
{
  sub_1B5DF7168();
  v3 = v2;
  v4 = sub_1B5DF33E0(&qword_1EB90F590, &qword_1B5EB9E80);
  sub_1B5DF5DA8(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5E5F57C();
  v10 = *v0;
  v11 = v3[4];
  sub_1B5E0897C(v3, v3[3]);
  sub_1B5E8E370();
  sub_1B5EA6040();
  sub_1B5E065E0();
  sub_1B5EA5EA0();
  (*(v6 + 8))(v1, v4);
  sub_1B5DF7180();
}

void SummarizationClient.VisualPromptOptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_1B5DF7168();
  v16 = v15;
  v18 = v17;
  v19 = sub_1B5DF33E0(&qword_1EB90F5A0, &qword_1B5EB9E88);
  sub_1B5DF5DA8(v19);
  v21 = v20;
  v23 = *(v22 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v24);
  sub_1B5E5F57C();
  v25 = v16[4];
  sub_1B5E0897C(v16, v16[3]);
  sub_1B5E8E370();
  sub_1B5EA6030();
  if (!v13)
  {
    sub_1B5E06634();
    sub_1B5EA5DC0();
    (*(v21 + 8))(v14, v19);
    *v18 = a13;
  }

  sub_1B5DF3FB8(v16);
  sub_1B5DF7180();
}

uint64_t SummarizationClient.summarize(requestIdentifier:text:options:)()
{
  sub_1B5E01DFC();
  v3 = v2;
  *(v1 + 48) = v4;
  *(v1 + 56) = v0;
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  *(v1 + 16) = v7;
  *(v1 + 24) = v8;
  v9 = type metadata accessor for SummarizationXPCRequest.Request(0);
  *(v1 + 64) = v9;
  sub_1B5E01CF8(v9);
  v11 = *(v10 + 64);
  *(v1 + 72) = sub_1B5E2D0C8();
  *(v1 + 112) = *v3;
  v12 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1B5E8BC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1B5E60060();
  sub_1B5E9083C();
  v23 = *(v22 + 112);
  switch(v23)
  {
    case 3:
      sub_1B5E5F958();

      result = MEMORY[0x1EEE6B1D8](v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
      break;
    default:
      v25 = *(v22 + 64);
      v24 = *(v22 + 72);
      v27 = *(v22 + 40);
      v26 = *(v22 + 48);
      v29 = *(v22 + 24);
      v28 = *(v22 + 32);
      sub_1B5E90B98();

      sub_1B5E90308();
      sub_1B5E90914();
      MEMORY[0x1B8C8A360]();

      *v24 = v27;
      *(v24 + 8) = v26;
      *(v24 + 16) = v23;
      swift_storeEnumTagMultiPayload();
      v30 = sub_1B5E90660();
      sub_1B5E9086C(v30);
      sub_1B5E90688();

      sub_1B5E903D4();
      *(v22 + 80) = SummarizationXPCRequest.init(request:requestInfo:onBehalfOfProcess:originatingProcess:)(v24, v31, v32, v33);
      v34 = swift_task_alloc();
      *(v22 + 88) = v34;
      *v34 = v22;
      v34[1] = sub_1B5E8BDBC;
      v35 = *(v22 + 56);
      sub_1B5E9043C();
      sub_1B5E5F958();

      result = sub_1B5E84F28(v36);
      break;
  }

  return result;
}

uint64_t sub_1B5E8BDBC()
{
  sub_1B5E2CED8();
  sub_1B5E2CE78();
  v4 = v3;
  sub_1B5E2CE48();
  *v5 = v4;
  v7 = *(v6 + 88);
  v8 = *v2;
  sub_1B5E2CE38();
  *v9 = v8;
  *(v4 + 96) = v0;

  if (!v0)
  {
    *(v4 + 104) = v1;
  }

  sub_1B5E2CE68();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B5E8BEC0()
{
  sub_1B5E2CED8();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[2];
  sub_1B5E7EE5C();

  v5 = v0[9];

  sub_1B5E2CF4C();

  return v6();
}

uint64_t sub_1B5E8BF48()
{
  sub_1B5E01DFC();

  v1 = *(v0 + 96);
  v2 = *(v0 + 72);

  sub_1B5E2CF4C();

  return v3();
}

uint64_t SummarizationClient.summarize(requestIdentifier:message:options:)()
{
  sub_1B5E2CED8();
  v6 = sub_1B5E90560(v3, v4, v5);
  *(v2 + 48) = v6;
  sub_1B5E01CF8(v6);
  v8 = *(v7 + 64);
  *(v2 + 56) = sub_1B5E2D0C8();
  v9 = v1[1];
  *(v2 + 64) = *v1;
  *(v2 + 80) = v9;
  *(v2 + 128) = *v0;
  *(v2 + 129) = v0[1];
  *(v2 + 130) = v0[2];
  v10 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

{
  sub_1B5E01DFC();
  v5 = sub_1B5E908C8(v1, v2, v3, v4);
  *(v0 + 56) = v5;
  sub_1B5E01CF8(v5);
  v7 = *(v6 + 64);
  v8 = sub_1B5E2D0C8();
  sub_1B5E906A0(v8);
  v9 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

{
  sub_1B5E01DFC();
  v5 = sub_1B5E908C8(v1, v2, v3, v4);
  *(v0 + 56) = v5;
  sub_1B5E01CF8(v5);
  v7 = *(v6 + 64);
  v8 = sub_1B5E2D0C8();
  sub_1B5E906A0(v8);
  v9 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B5E8C048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1B5E90ADC();
  v23 = *(v22 + 128);
  switch(v23)
  {
    case 3:
      sub_1B5E90634();

      result = MEMORY[0x1EEE6B1D8](v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
      break;
    default:
      v49 = *(v22 + 129);
      v50 = *(v22 + 130);
      v25 = *(v22 + 80);
      v24 = *(v22 + 88);
      v27 = *(v22 + 64);
      v26 = *(v22 + 72);
      v28 = *(v22 + 56);
      v29 = *(v22 + 32);
      v47 = *(v22 + 48);
      v48 = *(v22 + 24);
      sub_1B5EA5BC0();

      sub_1B5E90308();
      SummarizationClient.UseCase.rawValue.getter();
      MEMORY[0x1B8C8A360]();

      *v28 = v27;
      *(v28 + 8) = v26;
      *(v28 + 16) = v25;
      *(v28 + 24) = v24;
      *(v28 + 32) = v23;
      *(v28 + 33) = v49;
      *(v28 + 34) = v50;
      swift_storeEnumTagMultiPayload();
      sub_1B5E90694();
      v30 = objc_allocWithZone(type metadata accessor for SummarizationXPCRequest(0));
      sub_1B5E90688();

      *(v22 + 96) = sub_1B5E906C0(v31, v32, v33);
      v34 = swift_task_alloc();
      *(v22 + 104) = v34;
      *v34 = v22;
      v34[1] = sub_1B5E8C220;
      v35 = *(v22 + 40);
      sub_1B5E9043C();
      sub_1B5E90634();

      result = sub_1B5E84F28(v36);
      break;
  }

  return result;
}

uint64_t sub_1B5E8C220()
{
  sub_1B5E2CED8();
  sub_1B5E2CE78();
  v4 = v3;
  sub_1B5E2CE48();
  *v5 = v4;
  v7 = *(v6 + 104);
  v8 = *v2;
  sub_1B5E2CE38();
  *v9 = v8;
  *(v4 + 112) = v0;

  if (!v0)
  {
    *(v4 + 120) = v1;
  }

  sub_1B5E2CE68();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B5E8C324()
{
  sub_1B5E2CED8();
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[2];
  sub_1B5E7EE5C();

  v5 = v0[7];

  sub_1B5E2CF4C();

  return v6();
}

uint64_t sub_1B5E8C3AC()
{
  sub_1B5E01DFC();

  v1 = *(v0 + 112);
  v2 = *(v0 + 56);

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E8C620()
{
  sub_1B5E2CED8();
  sub_1B5E2CE78();
  v4 = v3;
  sub_1B5E2CE48();
  *v5 = v4;
  v7 = *(v6 + 80);
  v8 = *v2;
  sub_1B5E2CE38();
  *v9 = v8;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  sub_1B5E2CE68();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B5E8C924()
{
  sub_1B5E2CED8();
  sub_1B5E2CE78();
  v4 = v3;
  sub_1B5E2CE48();
  *v5 = v4;
  v7 = *(v6 + 80);
  v8 = *v2;
  sub_1B5E2CE38();
  *v9 = v8;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  sub_1B5E2CE68();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B5E8CA28()
{
  sub_1B5E2CED8();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[2];
  sub_1B5E7EE5C();

  v5 = v0[8];

  sub_1B5E2CF4C();

  return v6();
}

uint64_t sub_1B5E8CAB0()
{
  sub_1B5E01DFC();

  v1 = *(v0 + 88);
  v2 = *(v0 + 64);

  sub_1B5E2CF4C();

  return v3();
}

uint64_t SummarizationClient.summarize(requestIdentifier:thread:options:)()
{
  sub_1B5E2CED8();
  v4 = sub_1B5E90560(v1, v2, v3);
  *(v0 + 48) = v4;
  sub_1B5E01CF8(v4);
  v6 = *(v5 + 64);
  v7 = sub_1B5E2D0C8();
  sub_1B5E90A40(v7);
  v8 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

{
  sub_1B5E2CED8();
  v4 = sub_1B5E90560(v1, v2, v3);
  *(v0 + 48) = v4;
  sub_1B5E01CF8(v4);
  v6 = *(v5 + 64);
  v7 = sub_1B5E2D0C8();
  sub_1B5E90A40(v7);
  v8 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1B5E8CB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1B5E90AC0();
  a27 = v31;
  a28 = v32;
  sub_1B5E5FC6C();
  a26 = v28;
  v33 = 13;
  switch(*(v28 + 104))
  {
    case 1:
      v33 = 14;
      goto LABEL_4;
    case 2:
      v33 = 15;
      goto LABEL_4;
    case 3:
      sub_1B5E906E0();

      return MEMORY[0x1EEE6B1D8](v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
    default:
LABEL_4:
      sub_1B5E9074C();

      sub_1B5E90308();
      a9 = v34;
      a10 = v35;
      LOBYTE(a16) = v33;
      sub_1B5E90914();
      MEMORY[0x1B8C8A360]();

      sub_1B5E90854();
      swift_storeEnumTagMultiPayload();
      a9 = v30;
      a10 = v29;
      a11 = &a9;
      a12 = v33;
      sub_1B5E908F8();
      sub_1B5E90694();
      v37 = objc_allocWithZone(v36);
      sub_1B5E90688();

      v38 = sub_1B5E90428();
      v42 = SummarizationXPCRequest.init(request:requestInfo:onBehalfOfProcess:originatingProcess:)(v38, v39, v40, v41);
      sub_1B5E90848(v42);
      v43 = swift_task_alloc();
      v44 = sub_1B5E90830(v43);
      *v44 = v45;
      v44[1] = sub_1B5E8CCF4;
      v46 = *(v28 + 40);
      sub_1B5E9043C();
      sub_1B5E906E0();

      return sub_1B5E84F28(v47);
  }
}

uint64_t sub_1B5E8CCF4()
{
  sub_1B5E2CED8();
  sub_1B5E2CE78();
  v4 = v3;
  sub_1B5E2CE48();
  *v5 = v4;
  v7 = *(v6 + 80);
  v8 = *v2;
  sub_1B5E2CE38();
  *v9 = v8;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  sub_1B5E2CE68();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B5E8CDF8()
{
  sub_1B5E2CED8();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[2];
  sub_1B5E7EE5C();

  v5 = v0[7];

  sub_1B5E2CF4C();

  return v6();
}

uint64_t sub_1B5E8CE80()
{
  sub_1B5E01DFC();

  v1 = *(v0 + 88);
  v2 = *(v0 + 56);

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E8CF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1B5E90AC0();
  a27 = v31;
  a28 = v32;
  sub_1B5E5FC6C();
  a26 = v28;
  v33 = 13;
  switch(*(v28 + 104))
  {
    case 1:
      v33 = 14;
      goto LABEL_4;
    case 2:
      v33 = 15;
      goto LABEL_4;
    case 3:
      sub_1B5E906E0();

      return MEMORY[0x1EEE6B1D8](v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
    default:
LABEL_4:
      sub_1B5E9074C();

      sub_1B5E90308();
      a9 = v34;
      a10 = v35;
      LOBYTE(a16) = v33;
      sub_1B5E90914();
      MEMORY[0x1B8C8A360]();

      sub_1B5E90854();
      swift_storeEnumTagMultiPayload();
      a9 = v30;
      a10 = v29;
      a11 = &a9;
      a12 = v33;
      sub_1B5E908F8();
      sub_1B5E90694();
      v37 = objc_allocWithZone(v36);
      sub_1B5E90688();

      v38 = sub_1B5E90428();
      v42 = SummarizationXPCRequest.init(request:requestInfo:onBehalfOfProcess:originatingProcess:)(v38, v39, v40, v41);
      sub_1B5E90848(v42);
      v43 = swift_task_alloc();
      v44 = sub_1B5E90830(v43);
      *v44 = v45;
      v44[1] = sub_1B5E8D0C4;
      v46 = *(v28 + 40);
      sub_1B5E9043C();
      sub_1B5E906E0();

      return sub_1B5E84F28(v47);
  }
}

uint64_t sub_1B5E8D0C4()
{
  sub_1B5E2CED8();
  sub_1B5E2CE78();
  v4 = v3;
  sub_1B5E2CE48();
  *v5 = v4;
  v7 = *(v6 + 80);
  v8 = *v2;
  sub_1B5E2CE38();
  *v9 = v8;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  sub_1B5E2CE68();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t SummarizationClient.testTaskCancellation(sleepDuration:)()
{
  sub_1B5E01DFC();
  v1[3] = v0;
  v1[2] = v2;
  v3 = type metadata accessor for SummarizationXPCRequest.Request(0);
  v1[4] = v3;
  sub_1B5E01CF8(v3);
  v5 = *(v4 + 64);
  v1[5] = sub_1B5E2D0C8();
  v6 = sub_1B5EA4340();
  v1[6] = v6;
  sub_1B5E01C50(v6);
  v1[7] = v7;
  v9 = *(v8 + 64);
  v1[8] = sub_1B5E2D0C8();
  v10 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B5E8D294()
{
  sub_1B5E5FC6C();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  v6 = v0[2];
  sub_1B5EA4330();
  sub_1B5EA4300();
  (*(v2 + 8))(v1, v4);
  sub_1B5E9067C();
  *v3 = v6;
  swift_storeEnumTagMultiPayload();
  sub_1B5E908F8();
  sub_1B5E90694();
  v8 = objc_allocWithZone(v7);
  v9 = sub_1B5E90428();
  v13 = SummarizationXPCRequest.init(request:requestInfo:onBehalfOfProcess:originatingProcess:)(v9, v10, v11, v12);
  sub_1B5E90848(v13);
  v14 = swift_task_alloc();
  v15 = sub_1B5E90830(v14);
  *v15 = v16;
  v15[1] = sub_1B5E8D3C4;
  v17 = v0[3];
  v18 = sub_1B5E9043C();

  return sub_1B5E84F28(v18);
}

uint64_t sub_1B5E8D3C4()
{
  sub_1B5E2CED8();
  sub_1B5E2CE78();
  v4 = v3;
  sub_1B5E2CE48();
  *v5 = v4;
  v7 = *(v6 + 80);
  v8 = *v2;
  sub_1B5E2CE38();
  *v9 = v8;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  sub_1B5E2CE68();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B5E8D4C8()
{
  sub_1B5E2CED8();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  sub_1B5E7ECC4();

  v4 = v0[8];
  v5 = v0[5];

  sub_1B5E2CF4C();

  return v6();
}

uint64_t sub_1B5E8D558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B5E8D57C, 0, 0);
}

uint64_t sub_1B5E8D57C(uint64_t a1, void (*a2)(void *a1, uint64_t a2, uint64_t a3), uint64_t a3, uint64_t a4)
{
  v5 = *(v4[3] + 16);
  v4[5] = v5;
  if (v5)
  {
    sub_1B5E2CED8();
    v6 = v4[4];
    v7 = swift_task_alloc();
    v4[6] = v7;
    *(v7 + 16) = v6;
    v8 = *(MEMORY[0x1E69C5B08] + 4);

    v9 = swift_task_alloc();
    v4[7] = v9;
    a4 = type metadata accessor for SummarizationXPCResult(0);
    *v9 = v4;
    v9[1] = sub_1B5E8D674;
    a1 = v4[2];
    a2 = sub_1B5E8FDD0;
    a3 = v7;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE2EE30](a1, a2, a3, a4);
}

uint64_t sub_1B5E8D674()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    sub_1B5E5F8EC();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[5];
    v13 = v3[6];

    sub_1B5E2CF4C();

    return v14();
  }
}

void sub_1B5E8D79C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v15[4] = a6;
  v15[5] = v13;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1B5E2B774;
  v15[3] = a7;
  v14 = _Block_copy(v15);

  [a1 performSummarizationRequest:a4 with:v14];
  _Block_release(v14);
}

uint64_t sub_1B5E8D87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B5E8D8A0, 0, 0);
}

void sub_1B5E8D8A0()
{
  sub_1B5E34EC0();
  if (*(v0[3] + 16))
  {
    v2 = v0[4];
    v1 = v0[5];
    v3 = v0[2];
    v4 = swift_task_alloc();
    *(v4 + 16) = v2;
    *(v4 + 24) = v1;

    sub_1B5EA4D70();

    sub_1B5E2CF4C();

    v5();
  }

  else
  {
    __break(1u);
  }
}

void sub_1B5E8D980(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v7 = sub_1B5DF33E0(&qword_1EB90ECD8, &qword_1B5EB70B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v26 - v12;
  v14 = sub_1B5DF33E0(&qword_1EB90ECD0, &unk_1B5EBB660);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v26 - v17;
  sub_1B5E4D920(*a1, v13);
  if (sub_1B5DF46E0(v13, 1, v14) == 1)
  {
    sub_1B5DF4428(v13, &qword_1EB90ECD8, &qword_1B5EB70B0);
  }

  else
  {
    v26[1] = a1;
    v26[2] = a2;
    (*(v15 + 32))(v18, v13, v14);
    if (qword_1ED7D2988 != -1)
    {
      swift_once();
    }

    v19 = sub_1B5EA53B0();
    sub_1B5DFD794(v19, qword_1ED7D2990);

    v20 = sub_1B5EA5380();
    v21 = sub_1B5EA5A40();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26[0] = v4;
      v24 = v23;
      v28 = v23;
      *v22 = 136446466;
      *(v22 + 4) = sub_1B5E5B1CC();
      *(v22 + 12) = 2082;
      *(v22 + 14) = sub_1B5E5B1CC();
      _os_log_impl(&dword_1B5DED000, v20, v21, "%{public}s called with existing continuation for request identifier %{public}s. Cancelling existing stream to prevent leak.", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C8B330](v24, -1, -1);
      MEMORY[0x1B8C8B330](v22, -1, -1);
    }

    sub_1B5EA58E0();
    sub_1B5E90230(&qword_1EB90F688, 255, MEMORY[0x1E69E8550]);
    v25 = swift_allocError();
    sub_1B5EA55B0();
    v28 = v25;
    sub_1B5EA59A0();
    (*(v15 + 8))(v18, v14);
  }

  (*(v15 + 16))(v11, v27, v14);
  sub_1B5DF3658(v11, 0, 1, v14);

  sub_1B5E44070();
}

void sub_1B5E8DD68()
{
  v0 = sub_1B5DF33E0(&qword_1EB90ECD8, &qword_1B5EB70B0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v5 - v2;
  v4 = sub_1B5DF33E0(&qword_1EB90ECD0, &unk_1B5EBB660);
  sub_1B5DF3658(v3, 1, 1, v4);

  sub_1B5E44070();
}

uint64_t sub_1B5E8DE3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16) && (v4 = sub_1B5E5AE4C(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = sub_1B5DF33E0(&qword_1EB90ECD0, &unk_1B5EBB660);
    (*(*(v8 - 8) + 16))(a2, v7 + *(*(v8 - 8) + 72) * v6, v8);
    v9 = a2;
    v10 = 0;
    v11 = v8;
  }

  else
  {
    v11 = sub_1B5DF33E0(&qword_1EB90ECD0, &unk_1B5EBB660);
    v9 = a2;
    v10 = 1;
  }

  return sub_1B5DF3658(v9, v10, 1, v11);
}

unint64_t sub_1B5E8DF24()
{
  result = qword_1EB90D598;
  if (!qword_1EB90D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D598);
  }

  return result;
}

unint64_t sub_1B5E8DF78()
{
  result = qword_1EB90F538;
  if (!qword_1EB90F538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F538);
  }

  return result;
}

unint64_t sub_1B5E8DFCC()
{
  result = qword_1EB90D570;
  if (!qword_1EB90D570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D570);
  }

  return result;
}

unint64_t sub_1B5E8E020()
{
  result = qword_1EB90F540;
  if (!qword_1EB90F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F540);
  }

  return result;
}

uint64_t sub_1B5E8E074()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 64);
  v23 = *(v0 + 56);
  v6 = *(v0 + 72);
  v22 = *(v0 + 80);
  v7 = *(v0 + 96);
  v8 = *(v0 + 48);
  v9 = swift_task_alloc();
  v10 = sub_1B5E2CEE4(v9);
  *v10 = v11;
  v10[1] = sub_1B5E2C184;
  sub_1B5E90778();
  sub_1B5E90AA4();

  return sub_1B5E84A2C(v12, v13, v14, v15, v16, v17, v18, v19);
}

unint64_t sub_1B5E8E158()
{
  result = qword_1EB90D5C8[0];
  if (!qword_1EB90D5C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB90D5C8);
  }

  return result;
}

unint64_t sub_1B5E8E1AC()
{
  result = qword_1EB90D5B0;
  if (!qword_1EB90D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D5B0);
  }

  return result;
}

unint64_t sub_1B5E8E200()
{
  result = qword_1EB90F578;
  if (!qword_1EB90F578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F578);
  }

  return result;
}

uint64_t sub_1B5E8E2D0()
{
  sub_1B5E6FB9C();
  v4 = sub_1B5DF33E0(v2, v3);
  sub_1B5DF5EB8(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

unint64_t sub_1B5E8E32C()
{
  result = qword_1EB90CD80;
  if (!qword_1EB90CD80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB90CD80);
  }

  return result;
}

unint64_t sub_1B5E8E370()
{
  result = qword_1EB90F598;
  if (!qword_1EB90F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F598);
  }

  return result;
}

uint64_t sub_1B5E8E3C4(uint64_t a1, uint64_t a2)
{
  result = sub_1B5E90230(&qword_1ED7D2B78, a2, type metadata accessor for SummarizationClient);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B5E8E46C()
{
  result = qword_1EB90F5A8;
  if (!qword_1EB90F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F5A8);
  }

  return result;
}

unint64_t sub_1B5E8E4C4()
{
  result = qword_1EB90D548;
  if (!qword_1EB90D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D548);
  }

  return result;
}

unint64_t sub_1B5E8E51C()
{
  result = qword_1EB90F5B0;
  if (!qword_1EB90F5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F5B0);
  }

  return result;
}

unint64_t sub_1B5E8E574()
{
  result = qword_1EB90F5B8;
  if (!qword_1EB90F5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F5B8);
  }

  return result;
}

unint64_t sub_1B5E8E5CC()
{
  result = qword_1EB90F5C0[0];
  if (!qword_1EB90F5C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB90F5C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummarizationClient.UseCase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SummarizationClient.UseCase(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
        break;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

__n128 sub_1B5E8E814(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_1B5E8E828(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 28))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B5E8E868(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B5E8E8D0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 28))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B5E8E924(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SummarizationClient.TextAssistantSummarizationOptions.Source(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        break;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

void sub_1B5E8EA60()
{
  if (!qword_1ED7D2BA8[0])
  {
    v0 = sub_1B5EA5AD0();
    if (!v1)
    {
      atomic_store(v0, qword_1ED7D2BA8);
    }
  }
}

void sub_1B5E8EAB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1B5E8EA60();
    if (v3 <= 0x3F)
    {
      sub_1B5DF47A0();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B5E8EB50(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  result = sub_1B5EA4350();
  v9 = *(result - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 - 1;
  if (v7 <= v12 - 1)
  {
    v14 = v12 - 1;
  }

  else
  {
    v14 = v7;
  }

  v15 = *(v6 + 64);
  v16 = *(v9 + 80);
  if (v10)
  {
    v17 = 23;
  }

  else
  {
    v17 = 24;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v16 | 7;
  if (v14 >= a2)
  {
LABEL_35:
    if (v7 >= v13)
    {

      return sub_1B5DF46E0(a1, v7, v5);
    }

    else
    {
      v25 = &a1[v15 + 1 + v18] & ~v18;
      if (v11 > 0x7FFFFFFE)
      {
        sub_1B5E903A0();
        sub_1B5E903A0();
        sub_1B5E903A0();
        v27 = sub_1B5DF46E0((v29 + v28 + 16) & v30, v31, v32);
        LODWORD(v26) = v27 - 1;
      }

      else
      {
        v26 = *(v25 + 16);
        if (v26 >= 0xFFFFFFFF)
        {
          LODWORD(v26) = -1;
        }

        v27 = v26 + 1;
      }

      if (v27 < 2)
      {
        LODWORD(v26) = 0;
      }

      if (v26 >= 2)
      {
        return (v26 - 1);
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v19 = ((v15 + v18 + 1) & ~v18) + ((v17 + *(*(result - 8) + 64) + ((v16 + 136) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 9;
    if (v19 <= 3)
    {
      v20 = ((a2 - v14 + 255) >> 8) + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      LODWORD(v21) = 4;
    }

    else
    {
      LODWORD(v21) = 2;
    }

    if (v20 < 0x100)
    {
      LODWORD(v21) = 1;
    }

    if (v20 >= 2)
    {
      v21 = v21;
    }

    else
    {
      v21 = 0;
    }

    switch(v21)
    {
      case 1:
        v22 = a1[v19];
        if (!a1[v19])
        {
          goto LABEL_35;
        }

        goto LABEL_31;
      case 2:
        v22 = *&a1[v19];
        if (!*&a1[v19])
        {
          goto LABEL_35;
        }

        goto LABEL_31;
      case 3:
        __break(1u);
        return result;
      case 4:
        v22 = *&a1[v19];
        if (!v22)
        {
          goto LABEL_35;
        }

LABEL_31:
        v23 = (v22 - 1) << (8 * v19);
        if (v19 <= 3)
        {
          v24 = *a1;
        }

        else
        {
          v23 = 0;
          v24 = *a1;
        }

        result = v14 + (v24 | v23) + 1;
        break;
      default:
        goto LABEL_35;
    }
  }

  return result;
}

void sub_1B5E8EDE8(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_1B5EA4350();
  v11 = 0;
  sub_1B5E01C50(v10);
  v14 = *(v13 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v15 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  else
  {
    v16 = v15;
  }

  v17 = v16 - 1;
  if (v9 <= v16 - 1)
  {
    v18 = v16 - 1;
  }

  else
  {
    v18 = v9;
  }

  v19 = *(v8 + 64);
  v20 = *(v13 + 80);
  v21 = (v19 + (v20 | 7) + 1) & ~(v20 | 7);
  v22 = (v20 + 136) & ~v20;
  v23 = *(v12 + 64);
  if (v14)
  {
    v24 = v23;
  }

  else
  {
    v24 = v23 + 1;
  }

  v25 = v21 + ((v22 + v24 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v18 < a3)
  {
    if (v25 <= 3)
    {
      v26 = ((a3 - v18 + 255) >> 8) + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v11 = v27;
    }

    else
    {
      v11 = 0;
    }
  }

  if (v18 < a2)
  {
    v28 = ~v18 + a2;
    bzero(a1, v21 + ((v22 + v24 + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v25 <= 3)
    {
      v29 = (v28 >> 8) + 1;
    }

    else
    {
      v29 = 1;
    }

    if (v25 > 3)
    {
      *a1 = v28;
    }

    else
    {
      *a1 = v28;
    }

    switch(v11)
    {
      case 1:
        *(a1 + v25) = v29;
        break;
      case 2:
        *(a1 + v25) = v29;
        break;
      case 3:
        goto LABEL_68;
      case 4:
        *(a1 + v25) = v29;
        break;
      default:
        return;
    }

    return;
  }

  switch(v11)
  {
    case 1:
      *(a1 + v25) = 0;
      if (a2)
      {
        goto LABEL_38;
      }

      return;
    case 2:
      *(a1 + v25) = 0;
      if (a2)
      {
        goto LABEL_38;
      }

      return;
    case 3:
LABEL_68:
      __break(1u);
      return;
    case 4:
      *(a1 + v25) = 0;
      goto LABEL_37;
    default:
LABEL_37:
      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v9 >= v17)
      {
        v33 = a1;
        v34 = a2;
        v35 = v9;
        v36 = v7;
LABEL_43:

        sub_1B5DF3658(v33, v34, v35, v36);
        return;
      }

      v30 = ((a1 + v19 + (v20 | 7) + 1) & ~(v20 | 7));
      if (v17 < a2)
      {
        v31 = ((v22 + v24 + 23) & 0xFFFFFFF8) + 9;
        v32 = a2 - v16;
        bzero(v30, v31);
        if (v31 <= 3)
        {
LABEL_64:
          *v30 = v32;
        }

        else
        {
LABEL_41:
          *v30 = v32;
        }

        return;
      }

      if (v15 <= 0x7FFFFFFE)
      {
        if (a2 > 0x7FFFFFFD)
        {
          *(v30 + 1) = 0;
          *(v30 + 2) = 0;
          *(v30 + 2) = a2 - 2147483646;
        }

        else
        {
          *(v30 + 2) = (a2 + 1);
        }

        return;
      }

      sub_1B5E903A0();
      sub_1B5E903A0();
      sub_1B5E903A0();
      v30 = ((v39 + v38 + 16) & v41);
      if (a2 < v40)
      {
        v34 = (a2 + 2);
        v33 = (v39 + v38 + 16) & v41;
        goto LABEL_43;
      }

      if (v37 <= 3)
      {
        v42 = ~(-1 << (8 * v37));
      }

      else
      {
        v42 = -1;
      }

      if (v37)
      {
        v32 = v42 & (a2 - v40);
        if (v37 <= 3)
        {
          v43 = v37;
        }

        else
        {
          v43 = 4;
        }

        bzero(v30, v37);
        switch(v43)
        {
          case 2:
            *v30 = v32;
            break;
          case 3:
            *v30 = v32;
            v30[2] = BYTE2(v32);
            break;
          case 4:
            goto LABEL_41;
          default:
            goto LABEL_64;
        }
      }

      return;
  }
}

_BYTE *sub_1B5E8F18C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        break;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1B5E8F264(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_1B5E8F320(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B5E8F430()
{
  result = qword_1EB90F648;
  if (!qword_1EB90F648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F648);
  }

  return result;
}

unint64_t sub_1B5E8F488()
{
  result = qword_1EB90F650;
  if (!qword_1EB90F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F650);
  }

  return result;
}

unint64_t sub_1B5E8F518()
{
  result = qword_1EB90F658;
  if (!qword_1EB90F658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F658);
  }

  return result;
}

unint64_t sub_1B5E8F570()
{
  result = qword_1EB90F660;
  if (!qword_1EB90F660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F660);
  }

  return result;
}

unint64_t sub_1B5E8F5C8()
{
  result = qword_1EB90F668;
  if (!qword_1EB90F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F668);
  }

  return result;
}

unint64_t sub_1B5E8F690()
{
  result = qword_1EB90D5B8;
  if (!qword_1EB90D5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D5B8);
  }

  return result;
}

unint64_t sub_1B5E8F6E8()
{
  result = qword_1EB90D5C0;
  if (!qword_1EB90D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D5C0);
  }

  return result;
}

unint64_t sub_1B5E8F740()
{
  result = qword_1EB90D578;
  if (!qword_1EB90D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D578);
  }

  return result;
}

unint64_t sub_1B5E8F798()
{
  result = qword_1EB90D580;
  if (!qword_1EB90D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D580);
  }

  return result;
}

unint64_t sub_1B5E8F7F0()
{
  result = qword_1EB90D560;
  if (!qword_1EB90D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D560);
  }

  return result;
}

unint64_t sub_1B5E8F848()
{
  result = qword_1EB90D568;
  if (!qword_1EB90D568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D568);
  }

  return result;
}

unint64_t sub_1B5E8F8A0()
{
  result = qword_1EB90D550;
  if (!qword_1EB90D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D550);
  }

  return result;
}

unint64_t sub_1B5E8F8F8()
{
  result = qword_1EB90D558;
  if (!qword_1EB90D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D558);
  }

  return result;
}

unint64_t sub_1B5E8F950()
{
  result = qword_1EB90D588;
  if (!qword_1EB90D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D588);
  }

  return result;
}

unint64_t sub_1B5E8F9A8()
{
  result = qword_1EB90D590;
  if (!qword_1EB90D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D590);
  }

  return result;
}

unint64_t sub_1B5E8F9FC()
{
  result = qword_1EB90F670;
  if (!qword_1EB90F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F670);
  }

  return result;
}

unint64_t sub_1B5E8FA50()
{
  result = qword_1EB90D5A8;
  if (!qword_1EB90D5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D5A8);
  }

  return result;
}

unint64_t sub_1B5E8FAA4()
{
  result = qword_1EB90F678;
  if (!qword_1EB90F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F678);
  }

  return result;
}

unint64_t sub_1B5E8FAF8()
{
  result = qword_1EB90F680;
  if (!qword_1EB90F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F680);
  }

  return result;
}

uint64_t sub_1B5E8FB4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1B5E8DE3C(a1, a2);
}

uint64_t sub_1B5E8FB68()
{
  sub_1B5E34EC0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = sub_1B5E2CEE4(v6);
  *v7 = v8;
  v7[1] = sub_1B5E2CDCC;
  v9 = sub_1B5E90778();

  return sub_1B5E8D87C(v9, v10, v11, v12, v13, v5);
}

void sub_1B5E8FC10()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1B5E8DD68();
}

uint64_t sub_1B5E8FC4C()
{
  sub_1B5E2CED8();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = sub_1B5E2CEE4(v5);
  *v6 = v7;
  v6[1] = sub_1B5E2C184;

  return sub_1B5E8D558(v2, v4, v3);
}

void sub_1B5E8FCEC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_1B5E88C9C(v1, v2);
}

uint64_t sub_1B5E8FD18()
{
  sub_1B5E6FB9C();
  v3 = v2(0);
  sub_1B5DF5EB8(v3);
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1B5E8FD74(uint64_t a1)
{
  v2 = type metadata accessor for SummarizationXPCRequest.Request(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B5E8FE10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1B5E8FE68()
{
  sub_1B5DFD8A8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1B5EA4EE0();
  v43 = sub_1B5DF5DA8(v8);
  v44 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v43);
  sub_1B5E7CB8C();
  v42 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v41 = &v34 - v14;
  v16 = v1 + 56;
  v15 = *(v1 + 56);
  v40 = -1 << *(v1 + 32);
  if (-v40 < 64)
  {
    v17 = ~(-1 << -v40);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  if (!v5)
  {
    v21 = 0;
LABEL_22:
    v33 = ~v40;
    *v7 = v1;
    v7[1] = v16;
    v7[2] = v33;
    v7[3] = v21;
    v7[4] = v18;
    sub_1B5DFD8C0();
    return;
  }

  v19 = v3;
  if (!v3)
  {
    v21 = 0;
    goto LABEL_22;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v35 = v7;
    v36 = v1 + 56;
    v20 = 0;
    v21 = 0;
    v22 = (63 - v40) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    v39 = v19;
    while (v20 < v19)
    {
      if (__OFADD__(v20, 1))
      {
        goto LABEL_26;
      }

      if (!v18)
      {
        v16 = v36;
        while (1)
        {
          v23 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v23 >= v22)
          {
            v18 = 0;
            v7 = v35;
            goto LABEL_22;
          }

          v18 = *(v36 + 8 * v23);
          ++v21;
          if (v18)
          {
            v45 = v20 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v45 = v20 + 1;
      v23 = v21;
LABEL_17:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v1;
      v26 = *(v1 + 48);
      v28 = v43;
      v27 = v44;
      v29 = *(v44 + 72);
      v30 = v42;
      (*(v44 + 16))(v42, v26 + v29 * (v24 | (v23 << 6)), v43);
      v31 = *(v27 + 32);
      v31(v41, v30, v28);
      v32 = sub_1B5E6FB20();
      (v31)(v32);
      v19 = v39;
      v20 = v45;
      if (v45 == v39)
      {
        v21 = v23;
        v7 = v35;
        v16 = v36;
        v1 = v25;
        goto LABEL_22;
      }

      v5 += v29;
      v21 = v23;
      v1 = v25;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1B5E900D4(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B5E90230(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1B5E90340()
{

  return swift_once();
}

uint64_t sub_1B5E90360()
{

  return swift_once();
}

uint64_t sub_1B5E90380()
{

  return swift_once();
}

__n128 sub_1B5E90414()
{
  result = *(v0 + 8);
  v1[4] = result;
  v1[5].n128_u64[0] = *(v0 + 24);
  return result;
}

void sub_1B5E90458()
{

  SummarizationClient.TextAssistantSummarizationOptions.init(source:useExternalIntelligence:originatingProcess:)();
}

uint64_t sub_1B5E9048C(uint64_t a1)
{
  v3 = v1 + *(a1 + 48);

  return sub_1B5E8FD18();
}

uint64_t sub_1B5E90560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;

  return type metadata accessor for SummarizationXPCRequest.Request(0);
}

uint64_t sub_1B5E905F8()
{
  v8 = *(v0 + 106);
  v2 = *(v0 + 105);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v9 = *(v0 + 24);

  return sub_1B5EA5BC0();
}

uint64_t sub_1B5E90660()
{

  return type metadata accessor for SummarizationXPCRequest(0);
}

uint64_t sub_1B5E906A0(uint64_t result)
{
  *(v2 + 64) = result;
  *(v2 + 104) = *v1;
  *(v2 + 105) = v1[1];
  *(v2 + 106) = v1[2];
  return result;
}

id sub_1B5E906C0(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, __int128);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);

  return SummarizationXPCRequest.init(request:requestInfo:onBehalfOfProcess:originatingProcess:)(v3, va, va1, va2);
}

void *sub_1B5E90724()
{
  *v1 = v4;
  v1[1] = v5;
  v1[2] = v3;
  v1[3] = v2;
  v1[4] = v0;
  return v1;
}

uint64_t sub_1B5E9074C()
{
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];

  return sub_1B5EA5BC0();
}

uint64_t sub_1B5E90794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  *v14 = v12;
  v14[1] = v13;
  v14[2] = a11;
  return v11;
}

uint64_t sub_1B5E90854()
{
  *v0 = v1;
  *(v0 + 8) = v2;
  return v0;
}

id sub_1B5E9086C(Class a1)
{

  return objc_allocWithZone(a1);
}

uint64_t sub_1B5E908AC()
{

  return swift_arrayDestroy();
}

uint64_t sub_1B5E908C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;

  return type metadata accessor for SummarizationXPCRequest.Request(0);
}

uint64_t sub_1B5E908F8()
{

  return type metadata accessor for SummarizationXPCRequest(0);
}

uint64_t sub_1B5E90940()
{

  return sub_1B5EA5F00();
}

uint64_t sub_1B5E90968()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1B5E90980()
{

  return swift_slowAlloc();
}

__n128 sub_1B5E909C4()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  result = *(v0 + 32);
  v4 = *(v0 + 48);
  *(v1 + 48) = result;
  *(v1 + 64) = v4;
  return result;
}

void sub_1B5E909E4(char a1@<W8>, __n128 a2@<Q0>)
{
  *v4 = a1;
  *(v4 + 1) = v2;
  *(v4 + 8) = a2;
  *(v4 + 24) = v3;
}

uint64_t sub_1B5E90A40(uint64_t result)
{
  v4 = *v2;
  *(v3 + 56) = result;
  *(v3 + 64) = v4;
  *(v3 + 104) = *v1;
  return result;
}

uint64_t sub_1B5E90A54()
{
  *v5 = v4;
  v5[1] = v3;
  v5[2] = v2;
  v5[3] = v0;
  return v1;
}

void sub_1B5E90A7C()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
}

void sub_1B5E90A90()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];
}

uint64_t sub_1B5E90AF8(uint64_t a1)
{

  return MEMORY[0x1EEE0B118](a1, v4, v1, v3, v2);
}

id sub_1B5E90B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, __int128);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);

  return SummarizationXPCRequest.init(request:requestInfo:onBehalfOfProcess:originatingProcess:)(v5, va, va1, va2);
}

uint64_t sub_1B5E90B38(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;

  return type metadata accessor for SummarizationXPCRequest.Request(0);
}

uint64_t sub_1B5E90B58(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;

  return type metadata accessor for SummarizationXPCRequest.Request(0);
}

uint64_t sub_1B5E90B78()
{
  v2 = *(v0 - 184);

  return sub_1B5EA5D10();
}

uint64_t sub_1B5E90B98()
{

  return sub_1B5EA5BC0();
}

uint64_t sub_1B5E90BB8()
{
  *(v0 - 120) = 0;
  *(v0 - 112) = 0xE000000000000000;

  return sub_1B5EA5BC0();
}

uint64_t sub_1B5E90BD8()
{
  *(v0 - 112) = 0;
  *(v0 - 104) = 0xE000000000000000;

  return sub_1B5EA5BC0();
}

uint64_t sub_1B5E90BF8()
{

  return swift_slowAlloc();
}

uint64_t sub_1B5E90C10()
{

  return swift_slowAlloc();
}

uint64_t sub_1B5E90C40()
{
  sub_1B5EA5FD0();
  sub_1B5EA3540();
  return sub_1B5EA6020();
}

uint64_t sub_1B5E90D00(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_1B5EA5FD0();
  a2(v5, a1);
  return sub_1B5EA6020();
}

uint64_t sub_1B5E90D50(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_1B5EA3174();
  }

  sub_1B5EA5710();
}

uint64_t sub_1B5E90DD0(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      sub_1B5EA3174();
      break;
    case 4:
      sub_1B5EA3200();
      break;
    default:
      break;
  }

  sub_1B5EA5710();
}

uint64_t sub_1B5E90EBC()
{
  sub_1B5EA5710();
}

uint64_t sub_1B5E91030()
{
  sub_1B5EA37C8();
  switch(v0)
  {
    case 6:
    case 7:
      break;
    default:
      sub_1B5EA3200();
      break;
  }

  sub_1B5EA5710();
}

uint64_t sub_1B5E9115C()
{
  SummarizationClient.UseCase.rawValue.getter();
  sub_1B5EA5710();
}

uint64_t sub_1B5E911BC(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      sub_1B5EA3200();
      break;
    case 3:
      sub_1B5EA37C8();
      break;
    default:
      break;
  }

  sub_1B5EA5710();
}

uint64_t sub_1B5E91268()
{
  sub_1B5EA320C();
  switch(v0)
  {
    case 1:
    case 3:
      break;
    case 2:
      sub_1B5EA33B4();
      break;
    default:
      sub_1B5EA3200();
      break;
  }

  sub_1B5EA5710();
}

uint64_t sub_1B5E91300()
{
  sub_1B5EA320C();
  switch(v0)
  {
    case 1:
      sub_1B5EA33B4();
      break;
    case 2:
    case 3:
    case 4:
      sub_1B5EA3200();
      break;
    default:
      break;
  }

  sub_1B5EA5710();
}

uint64_t sub_1B5E913B0(uint64_t a1, char a2)
{
  sub_1B5EA5FD0();
  if (!a2)
  {
    sub_1B5EA3174();
  }

  sub_1B5EA5710();

  return sub_1B5EA6020();
}

uint64_t sub_1B5E9145C()
{
  sub_1B5EA5FD0();
  sub_1B5EA5710();

  return sub_1B5EA6020();
}

uint64_t sub_1B5E914F4()
{
  sub_1B5EA5FD0();
  sub_1B5EA3540();
  return sub_1B5EA6020();
}

uint64_t sub_1B5E9152C()
{
  sub_1B5EA5FD0();
  SummarizationClient.UseCase.rawValue.getter();
  sub_1B5EA5710();

  return sub_1B5EA6020();
}

uint64_t sub_1B5E915D8(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_1B5EA5FD0();
  a3(v6, a2);
  return sub_1B5EA6020();
}

uint64_t *sub_1B5E91638()
{
  if (qword_1ED7D2A68 != -1)
  {
    sub_1B5EA32AC();
  }

  return &qword_1ED7D2A70;
}

uint64_t static TextCompositionXPCService.interface.modify()
{
  if (qword_1ED7D2A68 != -1)
  {
    sub_1B5EA32AC();
  }

  sub_1B5E2CF7C();
  return sub_1B5E2D0FC();
}

uint64_t sub_1B5E917DC()
{
  sub_1B5DF33E0(&qword_1EB90F878, &unk_1B5EBB640);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B5EAFC20;
  *(v0 + 32) = sel_reviewWithString_range_options_with_;
  *(v0 + 40) = 0;
  sub_1B5DF33E0(&qword_1EB90EAD0, &qword_1B5EB6CC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B5EB6C60;
  v2 = sub_1B5E479E8(0, &qword_1ED7D2B90, 0x1E695DEC8);
  *(v1 + 56) = sub_1B5DF33E0(&qword_1EB90EB38, &qword_1B5EB6D28);
  *(v1 + 32) = v2;
  v3 = sub_1B5E479E8(0, qword_1ED7D29C0, 0x1E696AEF8);
  *(v1 + 88) = sub_1B5DF33E0(&unk_1EB90F880, &unk_1B5EBB650);
  *(v1 + 64) = v3;
  sub_1B5E479E8(0, &qword_1ED7D2B98, 0x1E695DFD8);
  v4 = MEMORY[0x1B8C8A6B0](v1);
  sub_1B5E479E8(0, &qword_1ED7D2B80, 0x1E69E58C0);
  sub_1B5E47980();
  v5 = sub_1B5EA5A00();

  v6 = sub_1B5E46144(v5);

  *(v0 + 48) = v6;
  qword_1ED7D2A98 = v0;
  return result;
}

uint64_t *sub_1B5E91960()
{
  if (qword_1ED7D2AA0 != -1)
  {
    sub_1B5EA328C();
  }

  return &qword_1ED7D2A98;
}

uint64_t static TextCompositionXPCService.selectorClasses.modify()
{
  if (qword_1ED7D2AA0 != -1)
  {
    sub_1B5EA328C();
  }

  sub_1B5E2CF7C();
  return sub_1B5E2D0FC();
}

uint64_t static TextCompositionXPCService.logger.modify()
{
  if (qword_1ED7D2A78 != -1)
  {
    sub_1B5EA2EDC();
  }

  v0 = sub_1B5EA53B0();
  sub_1B5DFD794(v0, qword_1ED7D2A80);
  sub_1B5E34E78();
  return sub_1B5E2D0FC();
}

uint64_t *sub_1B5E91B44()
{
  if (qword_1EB90D920 != -1)
  {
    sub_1B5EA326C();
  }

  return &qword_1EB90F6B0;
}

id sub_1B5E91BA8(uint64_t *a1)
{
  sub_1B5EA3530(a1);
  if (!v2)
  {
    swift_once();
  }

  sub_1B5EA3374();
  sub_1B5E26214();
  swift_beginAccess();
  v3 = *v1;

  return v3;
}

void sub_1B5E91C24(uint64_t a1, uint64_t *a2)
{
  sub_1B5EA37A8(a1, a2);
  if (!v4)
  {
    swift_once();
  }

  sub_1B5EA31C8();
  v5 = *v2;
  *v2 = v3;
}

uint64_t static ExternalTextCompositionXPCService.interface.modify()
{
  if (qword_1EB90D920 != -1)
  {
    sub_1B5EA326C();
  }

  sub_1B5E2CF7C();
  return sub_1B5E2D0FC();
}

id sub_1B5E91CD4@<X0>(void (*a1)(void)@<X3>, void **a2@<X4>, void **a3@<X8>)
{
  a1();
  sub_1B5EA3374();
  sub_1B5E26214();
  swift_beginAccess();
  v5 = *a2;
  *a3 = *a2;

  return v5;
}

void sub_1B5E91D2C(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void **a6)
{
  v8 = *a1;
  a5();
  sub_1B5EA31C8();
  v9 = *a6;
  *a6 = v8;
}

uint64_t sub_1B5E91DEC(uint64_t a1, uint64_t *a2)
{
  sub_1B5EA35B0();
  sub_1B5E26214();
  swift_beginAccess();
  v4 = *v2;
  v5 = *a2;

  return sub_1B5E5F324();
}

uint64_t sub_1B5E91E40()
{
  sub_1B5EA37F0();
  swift_beginAccess();
  v4 = *v0;
  *v1 = v3;
  *v0 = v2;
}

uint64_t sub_1B5E91ED8@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  sub_1B5E26214();
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
}

uint64_t *sub_1B5E91F44()
{
  if (qword_1EB90D928 != -1)
  {
    sub_1B5EA3330();
  }

  return &qword_1EB90F6D8;
}

uint64_t sub_1B5E91FA8(uint64_t *a1)
{
  sub_1B5EA3530(a1);
  if (!v2)
  {
    swift_once();
  }

  sub_1B5EA3374();
  sub_1B5E26214();
  swift_beginAccess();
  v3 = *v1;
}

uint64_t sub_1B5E92018(uint64_t a1, uint64_t *a2)
{
  sub_1B5EA37A8(a1, a2);
  if (!v4)
  {
    swift_once();
  }

  sub_1B5EA31C8();
  v5 = *v2;
  *v2 = v3;
}

uint64_t static ExternalTextCompositionXPCService.selectorClasses.modify()
{
  if (qword_1EB90D928 != -1)
  {
    sub_1B5EA3330();
  }

  sub_1B5E2CF7C();
  return sub_1B5E2D0FC();
}

uint64_t sub_1B5E920C8@<X0>(void (*a1)(void)@<X3>, void *a2@<X4>, void *a3@<X8>)
{
  a1();
  sub_1B5EA3374();
  sub_1B5E26214();
  swift_beginAccess();
  *a3 = *a2;
}

uint64_t sub_1B5E92114(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t *a6)
{
  v8 = *a1;

  a5(v9);
  sub_1B5EA31C8();
  v10 = *a6;
  *a6 = v8;
}

uint64_t sub_1B5E92178(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B5EA53B0();
  sub_1B5E1FE5C(v3, a2);
  v4 = sub_1B5E5F324();
  sub_1B5DFD794(v4, v5);
  return sub_1B5EA4E00();
}

uint64_t sub_1B5E921BC(uint64_t *a1)
{
  sub_1B5EA3530(a1);
  if (!v2)
  {
    swift_once();
  }

  v3 = sub_1B5EA53B0();

  return sub_1B5DFD794(v3, v1);
}

uint64_t sub_1B5E92230@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1B5EA53B0();
  sub_1B5DFD794(v5, a2);
  sub_1B5EA35B0();
  sub_1B5E26214();
  swift_beginAccess();
  sub_1B5E2D1D8(v5);
  return (*(v6 + 16))(a3, a2, v5);
}

uint64_t sub_1B5E922F0(uint64_t a1, void *a2, uint64_t a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v5 = sub_1B5EA53B0();
  sub_1B5DFD794(v5, a3);
  sub_1B5EA35B0();
  sub_1B5E34E78();
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v8 = sub_1B5E5F324();
  v9(v8);
  swift_endAccess();
  return (*(v6 + 8))(a1, v5);
}

uint64_t static ExternalTextCompositionXPCService.logger.modify()
{
  if (qword_1EB90D930 != -1)
  {
    swift_once();
  }

  v0 = sub_1B5EA53B0();
  sub_1B5DFD794(v0, qword_1EB90F6E0);
  sub_1B5E34E78();
  return sub_1B5E2D0FC();
}

uint64_t sub_1B5E92448@<X0>(uint64_t *a1@<X3>, uint64_t a2@<X8>)
{
  sub_1B5E921BC(a1);
  sub_1B5EA35B0();
  sub_1B5E26214();
  swift_beginAccess();
  v4 = sub_1B5EA53B0();
  sub_1B5E6384C(v4);
  return (*(v5 + 16))(a2, v2);
}

uint64_t sub_1B5E924BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_1B5E921BC(a5);
  sub_1B5EA35B0();
  sub_1B5E34E78();
  v5 = sub_1B5EA53B0();
  sub_1B5E6384C(v5);
  v7 = *(v6 + 24);
  v8 = sub_1B5E5F324();
  v9(v8);
  return swift_endAccess();
}

uint64_t sub_1B5E92544()
{
  v0 = *MEMORY[0x1E69D9460];
  result = sub_1B5EA56A0();
  qword_1EB90CFF8 = result;
  unk_1EB90D000 = v2;
  return result;
}

uint64_t sub_1B5E92594()
{
  v0 = *MEMORY[0x1E69D94A8];
  result = sub_1B5EA56A0();
  qword_1EB90F6F8 = result;
  unk_1EB90F700 = v2;
  return result;
}

uint64_t sub_1B5E925E4()
{
  v0 = *MEMORY[0x1E69D9428];
  result = sub_1B5EA56A0();
  qword_1EB90CF80 = result;
  *algn_1EB90CF88 = v2;
  return result;
}

uint64_t sub_1B5E92634()
{
  v0 = *MEMORY[0x1E69D94A0];
  result = sub_1B5EA56A0();
  qword_1ED7D1F80 = result;
  *algn_1ED7D1F88 = v2;
  return result;
}

uint64_t sub_1B5E92684()
{
  v0 = *MEMORY[0x1E69D94F0];
  result = sub_1B5EA56A0();
  qword_1ED7D2540 = result;
  *algn_1ED7D2548 = v2;
  return result;
}

id static TextCompositionClient.textCompositionClientUseCaseIdentifierKey.getter()
{
  if (qword_1EB90D940 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB90F708;

  return v1;
}

uint64_t sub_1B5E92748()
{
  v0 = *MEMORY[0x1E69D9508];
  result = sub_1B5EA56A0();
  qword_1EB90F710 = result;
  *algn_1EB90F718 = v2;
  return result;
}

uint64_t sub_1B5E92798()
{
  v0 = *MEMORY[0x1E69D94C0];
  result = sub_1B5EA56A0();
  qword_1EB90CFB0 = result;
  *algn_1EB90CFB8 = v2;
  return result;
}

uint64_t sub_1B5E927E8()
{
  v0 = *MEMORY[0x1E69D94B8];
  result = sub_1B5EA56A0();
  qword_1EB90CFC8 = result;
  unk_1EB90CFD0 = v2;
  return result;
}

uint64_t sub_1B5E92838()
{
  v0 = *MEMORY[0x1E69D9450];
  result = sub_1B5EA56A0();
  qword_1EB90CFE0 = result;
  *algn_1EB90CFE8 = v2;
  return result;
}

uint64_t sub_1B5E92888()
{
  v0 = *MEMORY[0x1E69D94C8];
  result = sub_1B5EA56A0();
  qword_1EB90CF98 = result;
  unk_1EB90CFA0 = v2;
  return result;
}

uint64_t sub_1B5E928D8()
{
  v0 = *MEMORY[0x1E69D9468];
  result = sub_1B5EA56A0();
  qword_1EB90F720 = result;
  *algn_1EB90F728 = v2;
  return result;
}

uint64_t sub_1B5E92928()
{
  v0 = *MEMORY[0x1E69D9458];
  result = sub_1B5EA56A0();
  qword_1EB90F730 = result;
  *algn_1EB90F738 = v2;
  return result;
}

uint64_t sub_1B5E92978()
{
  v0 = *MEMORY[0x1E69D94D0];
  result = sub_1B5EA56A0();
  qword_1EB90F740 = result;
  *algn_1EB90F748 = v2;
  return result;
}

uint64_t sub_1B5E929C8()
{
  v0 = *MEMORY[0x1E69D94E0];
  result = sub_1B5EA56A0();
  qword_1EB90F750 = result;
  *algn_1EB90F758 = v2;
  return result;
}

uint64_t sub_1B5E92A18()
{
  v0 = *MEMORY[0x1E69D94D8];
  result = sub_1B5EA56A0();
  qword_1EB90F760 = result;
  *algn_1EB90F768 = v2;
  return result;
}

uint64_t sub_1B5E92A68()
{
  v0 = *MEMORY[0x1E69D9510];
  result = sub_1B5EA56A0();
  qword_1EB90F770 = result;
  *algn_1EB90F778 = v2;
  return result;
}

uint64_t sub_1B5E92AB8()
{
  v0 = *MEMORY[0x1E69D9500];
  result = sub_1B5EA56A0();
  qword_1EB90F780 = result;
  *algn_1EB90F788 = v2;
  return result;
}

uint64_t sub_1B5E92B08()
{
  v0 = *MEMORY[0x1E69D9440];
  result = sub_1B5EA56A0();
  qword_1EB90F790 = result;
  *algn_1EB90F798 = v2;
  return result;
}

uint64_t sub_1B5E92B58(void *a1, uint64_t *a2, uint64_t *a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = *a2;
  v6 = *a3;

  return sub_1B5E5F324();
}

Sage::TextCompositionClient::RewritingType_optional __swiftcall TextCompositionClient.RewritingType.init(rawValue:)(Swift::String rawValue)
{
  v3 = v1;
  sub_1B5EA5D00();
  sub_1B5E9070C();

  v5 = 11;
  if (v2 < 0xB)
  {
    v5 = v2;
  }

  *v3 = v5;
  return result;
}

unint64_t TextCompositionClient.RewritingType.rawValue.getter()
{
  result = 0x636967614DLL;
  switch(*v0)
  {
    case 1:
      result = 0x657369636E6F43;
      break;
    case 2:
      result = 0x796C646E65697246;
      break;
    case 3:
      result = 0x69737365666F7250;
      break;
    case 4:
      result = 0x6574696C6F50;
      break;
    case 5:
      result = 0x65646E456E65704FLL;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x7374656C6C7542;
      break;
    case 8:
      result = 0x73656C626154;
      break;
    case 9:
      result = 0x79617761656B6154;
      break;
    case 0xA:
      result = 0x616572666F6F7250;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B5E92DBC@<X0>(unint64_t *a1@<X8>)
{
  result = TextCompositionClient.RewritingType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TextCompositionClient.TCDocumentType.rawValue.getter()
{
  if (*v0)
  {
    return 0x7373654D74786554;
  }

  else
  {
    return 0x7373654D6C69614DLL;
  }
}

id TextCompositionClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B5E92E78(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  if (a1)
  {
    v11 = a1;
  }

  else
  {
    v11 = sub_1B5EA55E0();
  }

  v12 = qword_1EB90CFD8;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_1EB90CFE0;
  v14 = *algn_1EB90CFE8;
  v27 = MEMORY[0x1E69E6370];
  LOBYTE(v26) = a2 & 1;
  sub_1B5DF7148(&v26, v25);

  swift_isUniquelyReferenced_nonNull_native();
  v24 = v11;
  sub_1B5EA07B0(v25, v13, v14);

  v15 = v11;
  v16 = MEMORY[0x1E69E6530];
  if ((a4 & 1) == 0)
  {
    if (qword_1EB90CFA8 != -1)
    {
      swift_once();
    }

    v17 = qword_1EB90CFB0;
    v18 = *algn_1EB90CFB8;
    v27 = v16;
    *&v26 = a3;
    sub_1B5DF7148(&v26, v25);

    swift_isUniquelyReferenced_nonNull_native();
    sub_1B5EA3774();
    sub_1B5EA07B0(v19, v17, v18);

    v15 = v24;
  }

  if ((a6 & 1) == 0)
  {
    if (qword_1EB90CFC0 != -1)
    {
      swift_once();
    }

    v20 = qword_1EB90CFC8;
    v21 = unk_1EB90CFD0;
    v27 = v16;
    *&v26 = a5;
    sub_1B5DF7148(&v26, v25);

    swift_isUniquelyReferenced_nonNull_native();
    sub_1B5EA3774();
    sub_1B5EA07B0(v22, v20, v21);

    return v24;
  }

  return v15;
}

uint64_t sub_1B5E930AC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 16) && (v2 = sub_1B5E5AE4C(), (v3 & 1) != 0))
    {
      sub_1B5E5E268(*(v1 + 56) + 32 * v2, v5);
      result = swift_dynamicCast();
      if (result)
      {
        return v4;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1B5E93138(unint64_t a1)
{
  v3 = sub_1B5EA53B0();
  v4 = sub_1B5DF5DA8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24[-1] - v10;
  v12 = sub_1B5EA4570();
  v24[3] = v12;
  sub_1B5EA2E88();
  v24[4] = sub_1B5DEEE50(v13, 255, v14);
  sub_1B5E5E724(v24);
  v15 = *MEMORY[0x1E69D9308];
  sub_1B5E2D1D8(v12);
  (*(v16 + 104))();
  LOBYTE(v12) = sub_1B5EA4370();
  sub_1B5DF3FB8(v24);
  if (v12)
  {
    v17 = *(v1 + OBJC_IVAR___TextCompositionClient_tcClient);

    sub_1B5EA4420();

LABEL_9:
    sub_1B5E601B8();
    return;
  }

  if (a1 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1B5EA53A0();
    v20 = sub_1B5EA5380();
    v21 = sub_1B5EA5A60();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = sub_1B5E5FD88();
      *v22 = 134217984;
      *(v22 + 4) = a1;
      _os_log_impl(&dword_1B5DED000, v20, v21, "Error cancelling request: %lu - token value needs to be smaller than MAXINT", v22, 0xCu);
      sub_1B5EA3250();
    }

    (*(v6 + 8))(v11, v3);
    goto LABEL_9;
  }

  v18 = [objc_allocWithZone(MEMORY[0x1E69D9370]) init];
  [v18 requestCancellationForToken_];

  if (*(v1 + OBJC_IVAR___TextCompositionClient_client))
  {
    MEMORY[0x1EEE9AC00](v19);
    *(&v23 - 2) = a1;

    sub_1B5EA3788();
    sub_1B5EA4D70();

    goto LABEL_9;
  }

  __break(1u);
}

id sub_1B5E934F4(id result, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    return [result cancelWithToken_];
  }

  __break(1u);
  return result;
}

void sub_1B5E93548()
{
  sub_1B5DFD8A8();
  v1 = v0;
  v3 = v2;
  v4 = sub_1B5EA53B0();
  v5 = sub_1B5DF5DA8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5EA2FE0();
  v8 = sub_1B5EA4190();
  v9 = sub_1B5E01CF8(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5DFD7E8();
  v26 = sub_1B5EA4570();
  sub_1B5EA2E88();
  v14 = sub_1B5DEEE50(v12, 255, v13);
  sub_1B5EA36AC(v14);
  v15 = *MEMORY[0x1E69D9308];
  sub_1B5E2D1D8(v26);
  (*(v16 + 104))();
  v17 = sub_1B5EA4370();
  sub_1B5DF3FB8(&v25);
  if (v17)
  {
    v18 = *(v0 + OBJC_IVAR___TextCompositionClient_tcClient);

    sub_1B5EA4400();

LABEL_5:
    sub_1B5DFD8C0();
    return;
  }

  sub_1B5E479E8(0, &qword_1EB90CD80, 0x1E696AAB0);
  sub_1B5EA4180();
  v19 = sub_1B5EA5A80();
  v20 = [v19 length];
  v21 = objc_allocWithZone(MEMORY[0x1E69D9388]);
  v22 = sub_1B5E9FC90(v19, 0, v20, 0);
  if (*(v1 + OBJC_IVAR___TextCompositionClient_client))
  {
    v23 = v22;
    *(&v24 - 2) = MEMORY[0x1EEE9AC00](v22);
    *(&v24 - 1) = v3;

    sub_1B5EA3788();
    sub_1B5EA4D70();

    goto LABEL_5;
  }

  __break(1u);
}

void sub_1B5E938F0(void *a1, uint64_t a2)
{
  v4 = sub_1B5EA5840();
  [a1 prewarmWithInput:a2 rewritingTypes:v4];
}

void sub_1B5E9395C()
{
  sub_1B5DFD8A8();
  v2 = v1;
  v3 = sub_1B5EA53B0();
  v4 = sub_1B5DF5DA8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5EA2FE0();
  v7 = sub_1B5EA4560();
  v8 = sub_1B5DF5DA8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5DFD7E8();
  v15 = v14 - v13;
  v16 = *v2;
  v26 = sub_1B5EA4570();
  sub_1B5EA2E88();
  v19 = sub_1B5DEEE50(v17, 255, v18);
  sub_1B5EA36AC(v19);
  v20 = *MEMORY[0x1E69D9308];
  sub_1B5E2D1D8(v26);
  (*(v21 + 104))();
  LOBYTE(v2) = sub_1B5EA4370();
  v22 = sub_1B5DF3FB8(v25);
  if (v2)
  {
    v23 = *(v0 + OBJC_IVAR___TextCompositionClient_tcClient);
    LOBYTE(v25[0]) = v16;

    sub_1B5E9EC58(v25);
    sub_1B5EA4450();

    (*(v10 + 8))(v15, v7);
LABEL_5:
    sub_1B5DFD8C0();
    return;
  }

  if (*(v0 + OBJC_IVAR___TextCompositionClient_client))
  {
    MEMORY[0x1EEE9AC00](v22);
    *(&v24 - 16) = v16;

    sub_1B5EA3788();
    sub_1B5EA4D70();

    goto LABEL_5;
  }

  __break(1u);
}

void sub_1B5E93CAC(void *a1)
{
  v2 = sub_1B5EA5670();

  [a1 prewarmSmartRepliesWithDocumentType_];
}

void sub_1B5E93D44()
{
  sub_1B5DFD8A8();
  v2 = v1;
  v4 = v3;
  v5 = sub_1B5EA53B0();
  v6 = sub_1B5DF5DA8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1B5EA2FE0();
  v9 = sub_1B5EA4560();
  v10 = sub_1B5DF5DA8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1B5DFD7E8();
  v17 = v16 - v15;
  v18 = *v4;
  v28 = sub_1B5EA4570();
  sub_1B5EA2E88();
  v21 = sub_1B5DEEE50(v19, 255, v20);
  sub_1B5EA36AC(v21);
  v22 = *MEMORY[0x1E69D9308];
  sub_1B5E2D1D8(v28);
  (*(v23 + 104))();
  LOBYTE(v4) = sub_1B5EA4370();
  v24 = sub_1B5DF3FB8(v27);
  if (v4)
  {
    v25 = *(v0 + OBJC_IVAR___TextCompositionClient_tcClient);
    LOBYTE(v27[0]) = v18;

    sub_1B5E9EC58(v27);
    sub_1B5EA4440();

    (*(v12 + 8))(v17, v9);
LABEL_5:
    sub_1B5DFD8C0();
    return;
  }

  if (*(v0 + OBJC_IVAR___TextCompositionClient_client))
  {
    MEMORY[0x1EEE9AC00](v24);
    *(&v26 - 16) = v18;
    *(&v26 - 1) = v2;

    sub_1B5EA3788();
    sub_1B5EA4D70();

    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_1B5E940A0(void *a1, char a2, uint64_t a3)
{
  if (a2)
  {
    v4 = 0x7373654D74786554;
  }

  else
  {
    v4 = 0x7373654D6C69614DLL;
  }

  sub_1B5E94110(v4, 0xEB00000000656761, a3, a1);
}

void sub_1B5E94110(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1B5EA5670();
  if (a3)
  {
    v7 = sub_1B5EA55C0();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [a4 prewarmSmartRepliesWithDocumentType:v6 options:?];
}

NSUInteger sub_1B5E941B0(uint64_t a1, uint64_t a2, NSUInteger a3, unsigned __int8 *a4, uint64_t a5)
{
  v59 = *MEMORY[0x1E69E9840];
  v12 = sub_1B5DF33E0(&qword_1EB90F7B8, &unk_1B5EBAFF0);
  sub_1B5E01CF8(v12);
  v14 = *(v13 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v54 - v16;
  v18 = *a4;
  v19 = sub_1B5EA4570();
  v57 = v19;
  sub_1B5EA2E88();
  v58 = sub_1B5DEEE50(v20, 255, v21);
  sub_1B5E5E724(&v56);
  v22 = *MEMORY[0x1E69D9308];
  sub_1B5E2D1D8(v19);
  (*(v23 + 104))();
  LOBYTE(v19) = sub_1B5EA4370();
  sub_1B5DF3FB8(&v56);
  if (v19)
  {
    v24 = a3;
    v25 = *(v5 + OBJC_IVAR___TextCompositionClient_tcClient);
    LOBYTE(v56) = v18;

    sub_1B5E9EC5C(&v56, v17);
    v26 = sub_1B5EA4430();
    if (!v6)
    {
      v24 = v26;
    }

    sub_1B5DF4428(v17, &qword_1EB90F7B8, &unk_1B5EBAFF0);
  }

  else
  {
    v24 = sub_1B5EA4120();
    if (a5)
    {
      v27 = a5;
    }

    else
    {
      v27 = sub_1B5EA55E0();
    }

    if (v18 == 11)
    {
      v28 = a3;
    }

    else
    {
      v29 = qword_1EB90CF90;

      if (v29 != -1)
      {
        sub_1B5EA31B4();
        swift_once();
      }

      v31 = qword_1EB90CF98;
      v30 = unk_1EB90CFA0;
      sub_1B5EA3598();
      switch(v34)
      {
        case 1:
          sub_1B5EA3568();
          break;
        case 2:
          sub_1B5EA3614();
          break;
        case 3:
          sub_1B5EA342C();
          break;
        case 4:
          sub_1B5EA3818();
          break;
        case 5:
          sub_1B5EA34E4();
          break;
        case 6:
          sub_1B5EA37DC();
          break;
        case 7:
          sub_1B5EA3580();
          break;
        case 8:
          sub_1B5EA3804();
          break;
        case 9:
          sub_1B5EA33D4();
          break;
        case 10:
          sub_1B5EA340C();
          break;
        default:
          break;
      }

      v28 = a3;
      v57 = MEMORY[0x1E69E6158];
      *&v56 = v33;
      *(&v56 + 1) = v32;
      sub_1B5DF7148(&v56, &v55);

      swift_isUniquelyReferenced_nonNull_native();
      v35 = sub_1B5EA3760();
      sub_1B5EA07B0(v35, v31, v30);

      v27 = v54[1];
    }

    v36 = [objc_allocWithZone(MEMORY[0x1E69D9370]) init];
    *&v56 = 0;
    v37 = sub_1B5EA08F8(a1, a2, v28, v27, &v56, v36);

    v38 = v56;
    if (v37)
    {
      sub_1B5E479E8(0, &qword_1EB90CD78, 0x1E69D9388);
      sub_1B5E5F3AC();
      v39 = sub_1B5EA5850();
      v40 = v38;

      v41 = sub_1B5DF2A0C(v39);
      if (v41)
      {
        v42 = v41;
        if (v41 < 1)
        {
          __break(1u);
        }

        v43 = 0;
        for (i = 0; i != v42; ++i)
        {
          if ((v39 & 0xC000000000000001) != 0)
          {
            v45 = MEMORY[0x1B8C8A7F0](i, v39);
          }

          else
          {
            v45 = *(v39 + 8 * i + 32);
          }

          v46 = v45;
          location = [v45 actualRange];
          v49.location = location;
          v49.length = length;
          if (v43)
          {
            v60.location = v24;
            v60.length = v43;
            v50 = NSUnionRange(v60, v49);
            length = v50.length;
            location = v50.location;
          }

          v24 = location;
          v43 = length;
        }
      }
    }

    else
    {
      v51 = v56;
      sub_1B5EA4240();

      swift_willThrow();
    }
  }

  v52 = *MEMORY[0x1E69E9840];
  return v24;
}

uint64_t sub_1B5E94658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = sub_1B5E2CE58();
  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B5E94688()
{
  sub_1B5E34EC0();
  v2 = sub_1B5EA4570();
  sub_1B5EA3124(v2);
  sub_1B5EA2E88();
  v5 = sub_1B5DEEE50(v3, 255, v4);
  sub_1B5EA347C(v5);
  v6 = *MEMORY[0x1E69D9308];
  sub_1B5EA2F44();
  (*(v7 + 104))();
  sub_1B5EA4370();
  v8 = sub_1B5EA34B4();
  v12 = v1[12];
  if (v0)
  {
    v1[17] = *(v12 + OBJC_IVAR___TextCompositionClient_tcClient);
    v13 = *(MEMORY[0x1E69D92A0] + 4);
    v29 = *MEMORY[0x1E69D92A0] + MEMORY[0x1E69D92A0];

    v14 = swift_task_alloc();
    v1[18] = v14;
    *v14 = v1;
    v14[1] = sub_1B5E94A4C;
    v15 = v1[10];
    v16 = v1[11];
    v17 = v1[9];
    sub_1B5E5F780(v1[8]);
    sub_1B5EA38B0();

    __asm { BR              X4 }
  }

  v20 = *(v12 + OBJC_IVAR___TextCompositionClient_client);
  v1[13] = v20;
  if (v20)
  {
    v22 = v1[10];
    v21 = v1[11];
    v30 = *(v1 + 4);
    v23 = swift_task_alloc();
    v1[14] = v23;
    *(v23 + 16) = v30;
    *(v23 + 32) = v22;
    *(v23 + 40) = v21;
    v24 = *(MEMORY[0x1E69C5B08] + 4);

    v25 = swift_task_alloc();
    v1[15] = v25;
    sub_1B5DF33E0(&qword_1EB90F7C0, &qword_1B5EBB000);
    sub_1B5EA2F34();
    *v25 = v26;
    v25[1] = sub_1B5E948B0;
    sub_1B5EA2F64();
    sub_1B5EA38B0();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE2EE30](v8, v9, v10, v11);
}

uint64_t sub_1B5E948B0()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  v3[16] = v0;

  if (!v0)
  {
    v9 = v3[13];
    v10 = v3[14];
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B5E949B8()
{
  sub_1B5E01DFC();
  v1 = *(v0 + 56);
  if (*(v0 + 88))
  {
    v2 = *(v0 + 88);
  }

  else
  {
    sub_1B5EA55E0();
  }

  v3 = sub_1B5EA2EC4();

  return v4(v3);
}

uint64_t sub_1B5E94A4C()
{
  sub_1B5E34EC0();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  *(v3 + 152) = v0;

  if (!v0)
  {
    v13 = *(v3 + 136);

    sub_1B5EA35E0();
    sub_1B5E5FEF8();

    __asm { BRAA            X3, X16 }
  }

  sub_1B5E5F8EC();
  sub_1B5E5FEF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B5E94B84()
{
  sub_1B5E01DFC();
  v1 = *(v0 + 136);

  v2 = *(v0 + 152);
  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E94BE0()
{
  sub_1B5E01DFC();
  v1 = v0[13];
  v2 = v0[14];

  v3 = v0[16];
  sub_1B5E2CF4C();

  return v4();
}

void sub_1B5E94C44(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  v15 = [a4 string];
  if (!v15)
  {
    sub_1B5EA56A0();
    v15 = sub_1B5EA5670();
  }

  if (a7)
  {
    a7 = sub_1B5EA55C0();
  }

  v17[4] = sub_1B5E902E4;
  v17[5] = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1B5E94DD8;
  v17[3] = &unk_1F2D68E88;
  v16 = _Block_copy(v17);

  [a1 reviewWithString:v15 range:a5 options:a6 with:{a7, v16}];
  _Block_release(v16);
}

uint64_t sub_1B5E94DD8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1B5E479E8(0, qword_1ED7D29C0, 0x1E696AEF8);
    v4 = sub_1B5EA5850();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_1B5E94E7C()
{
  sub_1B5DFD8A8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  sub_1B5E01CF8(v11);
  v13 = *(v12 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v14);
  if (v10 >> 62)
  {
    v15 = sub_1B5EA5B40();
  }

  else
  {
    v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v15 <= v8)
  {
    goto LABEL_8;
  }

  sub_1B5E9FDEC(v8, (v10 & 0xC000000000000001) == 0, v10);
  if ((v10 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x1B8C8A7F0](v8, v10);
  }

  else
  {
    v16 = *(v10 + 8 * v8 + 32);
  }

  v17 = v16;
  v18 = [v16 modifiedRange];
  v19 = [v17 offset];
  if (!__OFADD__(v18, v19))
  {
    v25 = &v19[v18];
    [v17 modifiedRange];
    v24 = v20;
    sub_1B5EA0C04(v17, &selRef_filteredOptions);
    v21 = sub_1B5EA3654();
    sub_1B5EA3878(v21);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    *(v22 + 32) = v0;
    *(v22 + 40) = v17;
    *(v22 + 48) = v6;
    *(v22 + 56) = &selRef_requestLongFormSmartRepliesWithInputContextHistory_documentType_replyType_userFilledQuestionnaire_options_with_;
    *(v22 + 64) = v4;
    *(v22 + 72) = v2;
    *(v22 + 80) = v25;
    *(v22 + 88) = v24;
    *(v22 + 96) = v18;
    *(v22 + 104) = v8;
    *(v22 + 112) = v10;
    v23 = v0;

    sub_1B5EA3688();

LABEL_8:
    sub_1B5DFD8C0();
    return;
  }

  __break(1u);
}

uint64_t sub_1B5E95034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v13;
  *(v8 + 96) = v14;
  *(v8 + 136) = v12;
  *(v8 + 80) = v11;
  *(v8 + 64) = v10;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B5E95080, 0, 0);
}

uint64_t sub_1B5E95080(void *a1, uint64_t (*a2)(void *a1, uint64_t a2, uint64_t a3), uint64_t a3, uint64_t a4)
{
  v5 = *(v4[3] + OBJC_IVAR___TextCompositionClient_client);
  v4[13] = v5;
  if (v5)
  {
    sub_1B5E2CED8();
    v6 = v4[4];
    v7 = swift_task_alloc();
    v4[14] = v7;
    *(v7 + 16) = v6;
    v8 = *(MEMORY[0x1E69C5B08] + 4);

    v9 = swift_task_alloc();
    v4[15] = v9;
    sub_1B5E479E8(0, &qword_1EB90CD68, 0x1E69D93A8);
    sub_1B5EA2F34();
    *v9 = v10;
    v9[1] = sub_1B5E95188;
    a2 = sub_1B5EA2DAC;
    a1 = v4 + 2;
    a3 = v7;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE2EE30](a1, a2, a3, a4);
}

uint64_t sub_1B5E95188()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  v3[16] = v0;

  if (!v0)
  {
    v9 = v3[13];
    v10 = v3[14];
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B5E95290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1B5EA385C();
  sub_1B5E2D114();
  v13 = *(v12 + 40);
  v14 = *(v12 + 16);
  v15 = [objc_allocWithZone(MEMORY[0x1E69D9370]) init];
  LODWORD(v13) = [v15 cancellationRequestedForToken_];

  if (v13)
  {
    v16 = *(v12 + 72);
    v17 = *(v12 + 80);
    v19 = *(v12 + 56);
    v18 = *(v12 + 64);
    v20 = *(v12 + 40);
    v21 = sub_1B5EA30C0(*(v12 + 48));
    v22 = [objc_allocWithZone(MEMORY[0x1E69D9370]) init];
    v23 = [v22 cancellationErrorForToken_];

    v24 = v23;
    v19(0, v16, v17, v21, v23);
  }

  else
  {
    v26 = *(v12 + 88);
    v25 = *(v12 + 96);
    v27 = *(v12 + 136);
    v29 = *(v12 + 72);
    v28 = *(v12 + 80);
    v31 = *(v12 + 56);
    v30 = *(v12 + 64);
    v32 = sub_1B5EA0C04(v14, &selRef_options);
    v33 = sub_1B5DF2A0C(v25);
    sub_1B5E92E78(v32, v27, v26, 0, v33, 0);

    v34 = [v14 results];
    sub_1B5E479E8(0, qword_1ED7D29C0, 0x1E696AEF8);
    sub_1B5EA5850();

    sub_1B5EA31F4();
    v31();

    if ((v27 & 1) == 0)
    {
      if (__OFADD__(*(v12 + 88), 1))
      {
        __break(1u);
        return result;
      }

      v36 = *(v12 + 96);
      v37 = *(v12 + 56);
      v38 = *(v12 + 64);
      v39 = *(v12 + 40);
      v40 = *(v12 + 24);
      sub_1B5E94E7C();
    }
  }

  sub_1B5E2CF4C();
  sub_1B5E6FB04();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
}

uint64_t sub_1B5E9549C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1B5EA339C();
  sub_1B5EA30E4();
  v11 = v10[16];
  v12 = v10[13];
  v13 = v10[14];
  v15 = v10[9];
  v14 = v10[10];
  v17 = v10[7];
  v16 = v10[8];
  v18 = v10[6];

  v19 = sub_1B5EA30C0(v18);
  v20 = v11;
  v17(0, v15, v14, v19, v11);

  sub_1B5E2CF4C();
  sub_1B5EA3238();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_1B5E9555C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  sub_1B5E955F4(a4, sub_1B5E902E4, v8, a1);
}

void sub_1B5E955F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7[4] = a2;
  v7[5] = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1B5EA2E68;
  v7[3] = &unk_1F2D68E38;
  v6 = _Block_copy(v7);

  [a4 reviewWithInput:a1 with:v6];
  _Block_release(v6);
}

id sub_1B5E956BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = v5;
  v41 = *MEMORY[0x1E69E9840];
  v12 = sub_1B5EA4570();
  v39 = v12;
  sub_1B5EA2E88();
  v40 = sub_1B5DEEE50(v13, 255, v14);
  sub_1B5E5E724(&v38);
  v15 = *MEMORY[0x1E69D9308];
  sub_1B5E2D1D8(v12);
  (*(v16 + 104))();
  LOBYTE(v12) = sub_1B5EA4370();
  sub_1B5DF3FB8(&v38);
  if (v12)
  {
    v17 = *(v6 + OBJC_IVAR___TextCompositionClient_tcClient);

    sub_1B5EA31F4();
    v18 = sub_1B5EA43D0();
  }

  else
  {
    v36 = a5;
    v19 = [objc_allocWithZone(MEMORY[0x1E69D9370]) init];
    v18 = [v19 nextToken];

    if (a4)
    {
      v20 = a4;
    }

    else
    {
      v20 = sub_1B5EA55E0();
    }

    v21 = qword_1ED7D2538;

    if (v21 != -1)
    {
      sub_1B5EA3310();
    }

    v23 = qword_1ED7D2540;
    v22 = *algn_1ED7D2548;
    v39 = MEMORY[0x1E69E6530];
    *&v38 = v18;
    sub_1B5DF7148(&v38, v37);

    swift_isUniquelyReferenced_nonNull_native();
    sub_1B5EA07B0(v37, v23, v22);

    v24 = [objc_allocWithZone(MEMORY[0x1E69D9370]) init];
    v25 = MEMORY[0x1E69E6158];
    v26 = sub_1B5EA55C0();
    *&v38 = 0;
    v27 = [v24 inputArrayForAttributedString:a1 range:a2 options:a3 error:{v26, &v38}];

    v28 = v38;
    if (v27)
    {

      sub_1B5E479E8(0, &qword_1EB90CD78, 0x1E69D9388);
      sub_1B5E5F3AC();
      sub_1B5EA5850();

      sub_1B5E94E7C();
    }

    else
    {
      v29 = v28;
      v30 = sub_1B5EA4240();

      swift_willThrow();
      sub_1B5DF33E0(&qword_1EB90EAD0, &qword_1B5EB6CC0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1B5EAFC20;
      *&v38 = 0;
      *(&v38 + 1) = 0xE000000000000000;
      MEMORY[0x1B8C8A360](0x20726F727265, 0xE600000000000000);
      *&v37[0] = v30;
      sub_1B5DF33E0(&qword_1EB90E920, &qword_1B5EB6680);
      sub_1B5EA5C60();
      v32 = v38;
      *(v31 + 56) = v25;
      *(v31 + 32) = v32;
      sub_1B5EA5FC0();

      sub_1B5EA30C0(v20);

      v33 = v30;
      sub_1B5EA31F4();
      v36();
    }
  }

  v34 = *MEMORY[0x1E69E9840];
  return v18;
}

void sub_1B5E95B14()
{
  sub_1B5DFD8A8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1B5DF33E0(&qword_1EB90F7C8, &qword_1B5EBB008);
  sub_1B5DF5DA8(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25[-1] - v13;
  v15 = sub_1B5EA4570();
  v25[3] = v15;
  sub_1B5EA2E88();
  v18 = sub_1B5DEEE50(v16, 255, v17);
  sub_1B5EA36AC(v18);
  v19 = *MEMORY[0x1E69D9308];
  sub_1B5E2D1D8(v15);
  (*(v20 + 104))();
  LOBYTE(v15) = sub_1B5EA4370();
  v21 = sub_1B5DF3FB8(v25);
  if (v15)
  {
    v22 = *(v0 + OBJC_IVAR___TextCompositionClient_tcClient);

    sub_1B5E34F04();
    sub_1B5EA43E0();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v21);
    *(&v24 - 6) = v0;
    *(&v24 - 5) = v6;
    *(&v24 - 4) = v4;
    *(&v24 - 3) = v2;
    *(&v24 - 2) = v23;
    sub_1B5DF33E0(&qword_1EB90F7D0, &unk_1B5EBB010);
    (*(v9 + 104))(v14, *MEMORY[0x1E69E8790], v7);
    sub_1B5EA59E0();
  }

  sub_1B5DFD8C0();
}

uint64_t sub_1B5E95D28(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a6;
  v11 = sub_1B5DF33E0(&qword_1EB90F858, &qword_1B5EBB610);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  (*(v12 + 16))(&v23 - v14, a1, v11);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  (*(v12 + 32))(v17 + v16, v15, v11);
  v18 = a2;
  v19 = sub_1B5E956BC(a3, a4, a5, v24, sub_1B5EA2B9C);

  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v19;
  v21 = v18;
  return sub_1B5EA5980();
}

uint64_t sub_1B5E95EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_1B5DF33E0(&qword_1EB90F868, &qword_1B5EBB620);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v19 - v13;
  if (qword_1EB90CFD8 != -1)
  {
    swift_once();
  }

  v15 = sub_1B5E930AC(a4);
  if (a1)
  {
    v16 = v15;
    v19[0] = a1;
    v19[1] = a2;
    v19[2] = a3;
    v19[3] = a4;

    sub_1B5DF33E0(&qword_1EB90F858, &qword_1B5EBB610);
    sub_1B5EA5990();
    result = (*(v11 + 8))(v14, v10);
    if ((v16 & 1) == 0)
    {
      return result;
    }

    v19[0] = 0;
  }

  else
  {
    if (a5)
    {
      v19[0] = a5;
      v18 = a5;
    }

    else
    {
      v19[0] = 0;
    }

    sub_1B5DF33E0(&qword_1EB90F858, &qword_1B5EBB610);
  }

  return sub_1B5EA59A0();
}

uint64_t sub_1B5E960C0()
{
  sub_1B5E01DFC();
  v3 = v2;
  *(v1 + 96) = v4;
  *(v1 + 104) = v0;
  *(v1 + 80) = v5;
  *(v1 + 88) = v6;
  *(v1 + 72) = v7;
  v8 = sub_1B5DF33E0(&qword_1EB90F7B8, &unk_1B5EBAFF0);
  sub_1B5E01CF8(v8);
  v10 = *(v9 + 64);
  *(v1 + 112) = sub_1B5E2D0C8();
  *(v1 + 184) = *v3;
  v11 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B5E96158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1B5EA3848();
  a20 = v23;
  a21 = v24;
  sub_1B5EA30E4();
  a19 = v22;
  v25 = sub_1B5EA4570();
  sub_1B5EA3124(v25);
  sub_1B5EA2E88();
  v28 = sub_1B5DEEE50(v26, 255, v27);
  sub_1B5EA347C(v28);
  v29 = *MEMORY[0x1E69D9308];
  sub_1B5EA2F44();
  (*(v30 + 104))();
  sub_1B5EA4370();
  v31 = sub_1B5EA34B4();
  if ((v21 & 1) == 0)
  {
    v55 = *(*(v22 + 104) + OBJC_IVAR___TextCompositionClient_client);
    *(v22 + 120) = v55;
    if (v55)
    {
      v56 = *(v22 + 184);
      v58 = *(v22 + 88);
      v57 = *(v22 + 96);
      v64 = *(v22 + 72);
      v59 = swift_task_alloc();
      *(v22 + 128) = v59;
      *(v59 + 16) = v64;
      *(v59 + 32) = v58;
      *(v59 + 40) = v56;
      *(v59 + 48) = v57;
      v60 = *(MEMORY[0x1E69C5B08] + 4);

      v61 = swift_task_alloc();
      *(v22 + 136) = v61;
      *v61 = v22;
      v61[1] = sub_1B5E963BC;
      sub_1B5EA36C4();

      return MEMORY[0x1EEE2EE30](v31, v32, v33, v34);
    }

LABEL_11:
    __break(1u);
    return MEMORY[0x1EEE2EE30](v31, v32, v33, v34);
  }

  v35 = *(v22 + 184);
  v36 = *(v22 + 112);
  *(v22 + 152) = *(*(v22 + 104) + OBJC_IVAR___TextCompositionClient_tcClient);
  a14 = v35;

  sub_1B5E9EC5C(&a14, v36);
  v37 = sub_1B5EA4530();
  *(v22 + 160) = v37;
  v31 = sub_1B5DF46E0(v36, 1, v37);
  if (v31 == 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_1B5EA2F54(MEMORY[0x1E69D92A8]);
  v63 = v38;
  v39 = swift_task_alloc();
  v40 = sub_1B5EA37BC(v39);
  *v40 = v41;
  v40[1] = sub_1B5E965B0;
  v42 = *(v22 + 112);
  v43 = *(v22 + 88);
  v44 = *(v22 + 96);
  v45 = *(v22 + 80);
  sub_1B5E5F780(*(v22 + 72));
  sub_1B5EA36C4();

  return v51(v46, v47, v48, v49, v50, v51, v52, v53, v63, a10);
}

uint64_t sub_1B5E963BC()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  v3[18] = v0;

  if (!v0)
  {
    v9 = v3[15];
    v10 = v3[16];
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B5E964C4()
{
  sub_1B5E2CED8();
  v1 = v0[12];
  v3 = v0[7];
  v2 = v0[8];
  sub_1B5E479E8(0, &qword_1EB90CD80, 0x1E696AAB0);
  v4 = sub_1B5E5F324();
  sub_1B5E8A178(v4);
  if (v1)
  {
    v5 = v0[12];
  }

  else
  {
    sub_1B5EA55E0();
  }

  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[14];

  v9 = v0[1];
  sub_1B5EA3400();

  return v10();
}

uint64_t sub_1B5E965B0()
{
  sub_1B5EA30E4();
  sub_1B5EA32CC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *(v5 + 152);
  v8 = *v1;
  sub_1B5E2CE38();
  *v9 = v8;
  v3[22] = v0;

  if (!v0)
  {
    v14 = v3[14];
    sub_1B5E2D1D8(v3[20]);
    (*(v15 + 8))();
    v16 = v3[14];

    v17 = *(v8 + 8);
    sub_1B5EA3300();
    sub_1B5EA3898();

    __asm { BRAA            X5, X16 }
  }

  sub_1B5E5F8EC();
  sub_1B5EA3898();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B5E96744()
{
  sub_1B5E01DFC();
  v1 = v0[14];
  sub_1B5E2D1D8(v0[20]);
  (*(v2 + 8))();
  v3 = v0[22];
  v4 = v0[14];

  sub_1B5E2CF4C();

  return v5();
}

uint64_t sub_1B5E967CC()
{
  sub_1B5E01DFC();
  v1 = v0[15];
  v2 = v0[16];

  v3 = v0[18];
  v4 = v0[14];

  sub_1B5E2CF4C();

  return v5();
}

void sub_1B5E96838(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;

  v16 = [a4 string];
  if (!v16)
  {
    sub_1B5EA56A0();
    v16 = sub_1B5EA5670();
  }

  v17 = sub_1B5EA5670();

  if (a8)
  {
    a8 = sub_1B5EA55C0();
  }

  v19[4] = sub_1B5EA2AAC;
  v19[5] = v15;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1B5E96B2C;
  v19[3] = &unk_1F2D68D70;
  v18 = _Block_copy(v19);

  [a1 rewriteWithString:v16 range:a5 rewritingType:a6 options:v17 with:{a8, v18}];
  _Block_release(v18);
}

uint64_t sub_1B5E96B2C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_1B5EA56A0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

void sub_1B5E96BC4()
{
  sub_1B5DFD8A8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  sub_1B5E01CF8(v13);
  v15 = *(v14 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v16);
  v17 = *v6;
  if (v12 >> 62)
  {
    v18 = sub_1B5EA5B40();
  }

  else
  {
    v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v18 <= v10)
  {
    goto LABEL_8;
  }

  v29 = v17;
  sub_1B5E9FDEC(v10, (v12 & 0xC000000000000001) == 0, v12);
  if ((v12 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x1B8C8A7F0](v10, v12);
  }

  else
  {
    v19 = *(v12 + 8 * v10 + 32);
  }

  v20 = v19;
  v21 = [v19 modifiedRange];
  v22 = [v20 offset];
  if (!__OFADD__(v21, v22))
  {
    v28 = &v22[v21];
    [v20 modifiedRange];
    v27 = v23;
    sub_1B5EA0C04(v20, &selRef_filteredOptions);
    v24 = sub_1B5EA3654();
    sub_1B5EA3878(v24);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = v0;
    *(v25 + 40) = v20;
    *(v25 + 48) = v29;
    *(v25 + 56) = v8;
    *(v25 + 64) = v4;
    *(v25 + 72) = v2;
    *(v25 + 80) = v28;
    *(v25 + 88) = v27;
    *(v25 + 96) = v21;
    *(v25 + 104) = v10;
    *(v25 + 112) = v12;
    *(v25 + 120) = &selRef_requestLongFormSmartRepliesWithInputContextHistory_documentType_replyType_userFilledQuestionnaire_options_with_;
    v26 = v0;

    sub_1B5EA3688();

LABEL_8:
    sub_1B5DFD8C0();
    return;
  }

  __break(1u);
}

uint64_t sub_1B5E96D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v14;
  *(v8 + 144) = v15;
  *(v8 + 185) = v12;
  *(v8 + 120) = v11;
  *(v8 + 128) = v13;
  *(v8 + 104) = v10;
  *(v8 + 88) = a7;
  *(v8 + 96) = a8;
  *(v8 + 184) = a6;
  *(v8 + 72) = a4;
  *(v8 + 80) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B5E96DE4, 0, 0);
}

uint64_t sub_1B5E96DE4(uint64_t a1, uint64_t (*a2)(void *a1, uint64_t a2, uint64_t a3), uint64_t a3, uint64_t a4)
{
  v5 = *(*(v4 + 72) + OBJC_IVAR___TextCompositionClient_client);
  *(v4 + 152) = v5;
  if (v5)
  {
    sub_1B5E2CED8();
    v6 = *(v4 + 184);
    v7 = *(v4 + 80);
    v8 = swift_task_alloc();
    *(v4 + 160) = v8;
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = *(MEMORY[0x1E69C5B08] + 4);

    v10 = swift_task_alloc();
    *(v4 + 168) = v10;
    sub_1B5E479E8(0, &qword_1EB90CD70, 0x1E69D93A0);
    sub_1B5EA2F34();
    *v10 = v11;
    v10[1] = sub_1B5E96EF4;
    a2 = sub_1B5EA2A50;
    a1 = v4 + 64;
    a3 = v8;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE2EE30](a1, a2, a3, a4);
}

uint64_t sub_1B5E96EF4()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  v3[22] = v0;

  if (!v0)
  {
    v9 = v3[19];
    v10 = v3[20];
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1B5E96FFC()
{
  v21 = *(v0 + 128);
  v22 = *(v0 + 136);
  v1 = *(v0 + 185);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = *(v0 + 88);
  v23 = *(v0 + 80);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  *(v9 + 32) = v4;
  *(v9 + 40) = v5;
  *(v9 + 48) = v2;
  *(v9 + 56) = v3;
  *(v9 + 64) = v1;
  *(v9 + 72) = v7;
  *(v9 + 80) = v21;
  *(v9 + 88) = v22;
  *(v0 + 48) = sub_1B5EA2A5C;
  *(v0 + 56) = v9;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B5E9773C;
  *(v0 + 40) = &unk_1F2D68CD0;
  v10 = _Block_copy((v0 + 16));
  v11 = *(v0 + 56);
  v12 = v8;

  v13 = v7;
  sub_1B5E9070C();

  [v7 enumerateRewrittenAttributedStringsWithInput:v23 usingBlock:v10];
  _Block_release(v10);
  if (v1)
  {
    goto LABEL_4;
  }

  if (!__OFADD__(*(v0 + 128), 1))
  {
    v14 = *(v0 + 136);
    v15 = *(v0 + 96);
    v16 = *(v0 + 104);
    v17 = *(v0 + 88);
    v18 = *(v0 + 72);
    v24 = *(v0 + 184);
    sub_1B5E96BC4();
LABEL_4:

    sub_1B5E2CF4C();
    sub_1B5E2D0AC();

    __asm { BRAA            X1, X16 }
  }

  __break(1u);
}

uint64_t sub_1B5E97194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1B5EA339C();
  sub_1B5EA30E4();
  v11 = v10[22];
  v12 = v10[19];
  v13 = v10[20];
  v14 = v10[18];
  v16 = v10[14];
  v15 = v10[15];
  v18 = v10[12];
  v17 = v10[13];

  sub_1B5EA30C0(v14);
  v19 = sub_1B5E9070C();
  sub_1B5EA31F4();
  v18();

  sub_1B5E2CF4C();
  sub_1B5EA3238();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_1B5E9724C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = 0xE500000000000000;
  v12 = 0x636967614DLL;
  v13 = v10;
  switch(a5)
  {
    case 1:
      v11 = 0xE700000000000000;
      v12 = 0x657369636E6F43;
      break;
    case 2:
      v11 = 0xE800000000000000;
      v12 = 0x796C646E65697246;
      break;
    case 3:
      v11 = 0xEC0000006C616E6FLL;
      v12 = 0x69737365666F7250;
      break;
    case 4:
      v11 = 0xE600000000000000;
      v12 = 0x6574696C6F50;
      break;
    case 5:
      v12 = 0x65646E456E65704FLL;
      v11 = 0xE900000000000064;
      break;
    case 6:
      v11 = 0x80000001B5EA77D0;
      v12 = 0xD000000000000011;
      break;
    case 7:
      v11 = 0xE700000000000000;
      v12 = 0x7374656C6C7542;
      break;
    case 8:
      v11 = 0xE600000000000000;
      v12 = 0x73656C626154;
      break;
    case 9:
      v11 = 0xE900000000000073;
      v12 = 0x79617761656B6154;
      break;
    case 10:
      v11 = 0xEC000000676E6964;
      v12 = 0x616572666F6F7250;
      break;
    default:
      break;
  }

  sub_1B5E97438(a4, v12, v11, sub_1B5E902E4, v13, a1);
}

void sub_1B5E97438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_1B5EA5670();
  v12[4] = a4;
  v12[5] = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1B5EA2E68;
  v12[3] = &unk_1F2D68D20;
  v11 = _Block_copy(v12);

  [a6 rewriteWithInput:a1 rewritingType:v10 with:v11];
  _Block_release(v11);
}

void sub_1B5E9751C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void, uint64_t, uint64_t, uint64_t, id), uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13, uint64_t a14, unint64_t a15)
{
  v19 = [objc_allocWithZone(MEMORY[0x1E69D9370]) init];
  v20 = [v19 cancellationRequestedForToken_];

  if (v20)
  {
    v21 = sub_1B5E92E78(a4, 1, 0, 1, 0, 1);
    v22 = [objc_allocWithZone(MEMORY[0x1E69D9370]) init];
    v23 = [v22 cancellationErrorForToken_];

    v32 = v23;
    a8(0, a10, a11, v21, v23);
  }

  else
  {
    if (a12)
    {
      v24 = a3;
      v25 = [a13 range];
      v27 = a3 + a2 >= v25 + v26;
      v28 = a8;
    }

    else
    {
      v27 = 0;
      v28 = a8;
      v24 = a3;
    }

    v29 = sub_1B5DF2A0C(a15);
    v30 = sub_1B5E92E78(a4, v27, a14, 0, v29, 0);
    v28(a1, a2, v24, v30, 0);
  }
}

uint64_t sub_1B5E9773C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a5)
  {
    sub_1B5EA55D0();
  }

  v8 = a2;
  v7();
}

void sub_1B5E97804()
{
  sub_1B5DFD8A8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v58 = *MEMORY[0x1E69E9840];
  v16 = sub_1B5DF33E0(&qword_1EB90F7B8, &unk_1B5EBAFF0);
  sub_1B5E01CF8(v16);
  v18 = *(v17 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v52 - v20;
  v22 = *v9;
  v23 = sub_1B5EA4570();
  v56 = v23;
  sub_1B5EA2E88();
  v57 = sub_1B5DEEE50(v24, 255, v25);
  sub_1B5E5E724(&v55);
  v26 = *MEMORY[0x1E69D9308];
  sub_1B5E2D1D8(v23);
  (*(v27 + 104))();
  LOBYTE(v23) = sub_1B5EA4370();
  sub_1B5DF3FB8(&v55);
  if ((v23 & 1) == 0)
  {
    v31 = [objc_allocWithZone(MEMORY[0x1E69D9370]) init];
    v32 = [v31 nextToken];

    v52[1] = v3;
    if (v7)
    {
      v33 = v7;
    }

    else
    {
      v33 = sub_1B5EA55E0();
    }

    v52[0] = v5;
    v34 = qword_1ED7D2538;

    if (v34 != -1)
    {
      sub_1B5EA3310();
    }

    v36 = qword_1ED7D2540;
    v35 = *algn_1ED7D2548;
    v56 = MEMORY[0x1E69E6530];
    *&v55 = v32;
    sub_1B5DF7148(&v55, v54);

    swift_isUniquelyReferenced_nonNull_native();
    v53 = v33;
    sub_1B5EA07B0(v54, v36, v35);

    if (qword_1EB90CF90 != -1)
    {
      sub_1B5EA31B4();
      swift_once();
    }

    v37 = qword_1EB90CF98;
    v38 = unk_1EB90CFA0;
    sub_1B5EA3598();
    switch(v41)
    {
      case 1:
        sub_1B5EA3568();
        break;
      case 2:
        sub_1B5EA3614();
        break;
      case 3:
        sub_1B5EA342C();
        break;
      case 4:
        sub_1B5EA3818();
        break;
      case 5:
        sub_1B5EA34E4();
        break;
      case 6:
        sub_1B5EA37DC();
        break;
      case 7:
        sub_1B5EA3580();
        break;
      case 8:
        sub_1B5EA3804();
        break;
      case 9:
        sub_1B5EA33D4();
        break;
      case 10:
        sub_1B5EA340C();
        break;
      default:
        break;
    }

    v56 = MEMORY[0x1E69E6158];
    *&v55 = v40;
    *(&v55 + 1) = v39;
    sub_1B5DF7148(&v55, v54);

    swift_isUniquelyReferenced_nonNull_native();
    v42 = sub_1B5EA3760();
    sub_1B5EA07B0(v42, v37, v38);

    v43 = v53;
    v44 = [objc_allocWithZone(MEMORY[0x1E69D9370]) init];
    v45 = sub_1B5EA55C0();
    *&v55 = 0;
    v46 = [v44 inputArrayForAttributedString:v15 range:v13 options:v11 error:{v45, &v55}];

    v47 = v55;
    if (v46)
    {

      sub_1B5E479E8(0, &qword_1EB90CD78, 0x1E69D9388);
      sub_1B5E5F3AC();
      sub_1B5EA5850();

      LOBYTE(v55) = v22;
      sub_1B5E96BC4();
    }

    else
    {
      v48 = v47;
      v49 = sub_1B5EA4240();

      swift_willThrow();
      sub_1B5EA30C0(v43);
      sub_1B5E9070C();

      v50 = v49;
      sub_1B5EA31F4();
      (v52[0])();
    }

    goto LABEL_25;
  }

  v28 = *(v1 + OBJC_IVAR___TextCompositionClient_tcClient);
  LOBYTE(v55) = v22;

  sub_1B5E9EC5C(&v55, v21);
  v29 = sub_1B5EA4530();
  if (sub_1B5DF46E0(v21, 1, v29) != 1)
  {
    sub_1B5EA31F4();
    sub_1B5EA43F0();

    sub_1B5E2D1D8(v29);
    (*(v30 + 8))(v21, v29);
LABEL_25:
    v51 = *MEMORY[0x1E69E9840];
    sub_1B5DFD8C0();
    return;
  }

  __break(1u);
}

void sub_1B5E97D38()
{
  sub_1B5DFD8A8();
  v37 = v1;
  v38 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1B5DF33E0(&qword_1EB90F7B8, &unk_1B5EBAFF0);
  sub_1B5E01CF8(v11);
  v13 = *(v12 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  v17 = sub_1B5DF33E0(&qword_1EB90F7D8, &qword_1B5EBB020);
  sub_1B5DF5DA8(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v36 - v23;
  v25 = *v4;
  v26 = sub_1B5EA4570();
  v39[3] = v26;
  sub_1B5EA2E88();
  v29 = sub_1B5DEEE50(v27, 255, v28);
  sub_1B5EA36AC(v29);
  v30 = *MEMORY[0x1E69D9308];
  sub_1B5E2D1D8(v26);
  (*(v31 + 104))();
  LOBYTE(v26) = sub_1B5EA4370();
  v32 = sub_1B5DF3FB8(v39);
  if ((v26 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v32);
    *(&v36 - 6) = v0;
    *(&v36 - 5) = v10;
    *(&v36 - 4) = v8;
    *(&v36 - 3) = v6;
    *(&v36 - 16) = v25;
    *(&v36 - 1) = v37;
    sub_1B5DF33E0(&qword_1EB90F7E0, qword_1B5EBB028);
    (*(v19 + 104))(v24, *MEMORY[0x1E69E8790], v17);
    sub_1B5EA59E0();
    goto LABEL_5;
  }

  v33 = *(v0 + OBJC_IVAR___TextCompositionClient_tcClient);
  LOBYTE(v39[0]) = v25;

  sub_1B5E9EC5C(v39, v16);
  v34 = sub_1B5EA4530();
  if (sub_1B5DF46E0(v16, 1, v34) != 1)
  {
    sub_1B5EA4410();

    sub_1B5E2D1D8(v34);
    (*(v35 + 8))(v16, v34);
LABEL_5:
    sub_1B5DFD8C0();
    return;
  }

  __break(1u);
}

uint64_t sub_1B5E98010(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v23[1] = a5;
  v23[2] = a7;
  v10 = sub_1B5DF33E0(&qword_1EB90F840, &qword_1B5EBB5E0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v23 - v13;
  v24 = a6;
  (*(v11 + 16))(v23 - v13, a1, v10);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  (*(v11 + 32))(v16 + v15, v14, v10);
  v17 = a2;
  sub_1B5E97804();
  v19 = v18;

  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = v19;
  v21 = v17;
  return sub_1B5EA5980();
}

void sub_1B5E981E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_1B5DF33E0(&qword_1EB90F850, &unk_1B5EBB5F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v19 - v13;
  if (qword_1EB90CFD8 != -1)
  {
    swift_once();
  }

  v15 = sub_1B5E930AC(a4);
  if (a1)
  {
    v16 = v15;
    v19[0] = a1;
    v19[1] = a2;
    v19[2] = a3;
    v19[3] = a4;
    v17 = a1;

    sub_1B5DF33E0(&qword_1EB90F840, &qword_1B5EBB5E0);
    sub_1B5EA5990();
    (*(v11 + 8))(v14, v10);
    if (v16)
    {
      v19[0] = 0;
      sub_1B5EA59A0();
    }
  }

  else
  {
    if (a5)
    {
      v19[0] = a5;
      v18 = a5;
    }

    else
    {
      v19[0] = 0;
    }

    sub_1B5DF33E0(&qword_1EB90F840, &qword_1B5EBB5E0);
    sub_1B5EA59A0();
  }
}

void sub_1B5E983B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = sub_1B5DF33E0(a4, a5);
  sub_1B5DF5DA8(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v11);
  (*(v8 + 16))(&v20 - v12, a1, v6);
  v13 = *(v8 + 88);
  v14 = sub_1B5E34F04();
  LODWORD(a1) = v15(v14);
  v16 = *MEMORY[0x1E69E8760];
  v17 = *(v8 + 8);
  v18 = sub_1B5E34F04();
  v19(v18);
  if (a1 == v16)
  {
    sub_1B5E9350C();
  }

  sub_1B5E601B8();
}

uint64_t sub_1B5E984CC()
{
  sub_1B5E01DFC();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v1[11] = v5;
  v1[12] = v6;
  v1[9] = v7;
  v1[10] = v8;
  sub_1B5EA33F4(v9);
  v10 = sub_1B5EA45B0();
  v1[17] = v10;
  sub_1B5E01C50(v10);
  v1[18] = v11;
  v13 = *(v12 + 64);
  v1[19] = sub_1B5E2D0C8();
  v14 = sub_1B5EA4560();
  v1[20] = v14;
  sub_1B5E01C50(v14);
  v1[21] = v15;
  v17 = *(v16 + 64);
  v1[22] = sub_1B5E2D0C8();
  v18 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1B5E985C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1B5EA35BC();
  sub_1B5EA30E4();
  v12 = sub_1B5EA4570();
  sub_1B5EA3124(v12);
  sub_1B5EA2E88();
  v15 = sub_1B5DEEE50(v13, 255, v14);
  sub_1B5EA347C(v15);
  v16 = *MEMORY[0x1E69D9308];
  sub_1B5EA2F44();
  (*(v17 + 104))();
  sub_1B5EA4370();
  v18 = sub_1B5EA34B4();
  if (v10)
  {
    v22 = v11[22];
    v24 = v11[11];
    v23 = v11[12];
    v11[27] = *(v11[16] + OBJC_IVAR___TextCompositionClient_tcClient);

    sub_1B5E9EB44();
    v25 = sub_1B5E10BD8(v23);
    if (!v25)
    {
      v25 = *MEMORY[0x1E69D9518];
    }

    v26 = v25;
    v27 = v11[19];
    sub_1B5E9E99C();

    sub_1B5EA2F54(MEMORY[0x1E69D92F0]);
    v59 = v28;
    v29 = swift_task_alloc();
    v11[28] = v29;
    *v29 = v11;
    v29[1] = sub_1B5E98A30;
    v30 = v11[22];
    v31 = v11[19];
    v32 = v11[14];
    v33 = v11[15];
    v34 = v11[13];
    v35 = v11[9];
    v36 = v11[10];
    sub_1B5E5F780(v11[8]);
    sub_1B5EA34CC();

    return v45(v37, v38, v39, v40, v41, v42, v43, v44, v59, a10);
  }

  else
  {
    v48 = *(v11[16] + OBJC_IVAR___TextCompositionClient_client);
    v11[23] = v48;
    if (v48)
    {
      v50 = v11[14];
      v49 = v11[15];
      v60 = *(v11 + 6);
      v52 = v11[8];
      v51 = v11[9];
      v53 = swift_task_alloc();
      v11[24] = v53;
      v54 = *(v11 + 5);
      *(v53 + 16) = v52;
      *(v53 + 24) = v51;
      *(v53 + 32) = v54;
      *(v53 + 48) = v60;
      *(v53 + 64) = v50;
      *(v53 + 72) = v49;
      v55 = *(MEMORY[0x1E69C5B08] + 4);

      v56 = swift_task_alloc();
      v11[25] = v56;
      sub_1B5E479E8(0, &qword_1EB90D1F0, 0x1E69D9368);
      sub_1B5EA2F34();
      *v56 = v57;
      v56[1] = sub_1B5E98844;
      sub_1B5EA2F64();
      sub_1B5EA34CC();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE2EE30](v18, v19, v20, v21);
  }
}

uint64_t sub_1B5E98844()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v6 = *(v5 + 200);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  v3[26] = v0;

  if (!v0)
  {
    v9 = v3[23];
    v10 = v3[24];
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B5E9894C()
{
  sub_1B5E2CED8();
  v1 = [*(v0 + 56) repliesResponse];
  if (!v1 || !sub_1B5EA0A08(v1))
  {
    if (*(v0 + 120))
    {
      v2 = *(v0 + 120);
    }

    else
    {
      sub_1B5EA55E0();
      sub_1B5E1A084();
    }
  }

  v3 = *(v0 + 176);
  v4 = *(v0 + 152);

  v5 = sub_1B5EA2EC4();

  return v6(v5);
}

uint64_t sub_1B5E98A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1B5EA385C();
  sub_1B5E2D114();
  sub_1B5EA2EFC();
  sub_1B5E2CE38();
  *v15 = v14;
  v16 = v14[28];
  v17 = v14[27];
  *v15 = *v13;
  v14[29] = v12;

  sub_1B5EA31E8();
  v19 = *(v18 + 176);
  v20 = v14[21];
  v21 = v14[20];
  (*(v14[18] + 8))(v14[19], v14[17]);
  (*(v20 + 8))(v19, v21);
  if (v12)
  {
    sub_1B5EA2F84();
    sub_1B5E6FB04();

    return MEMORY[0x1EEE6DFA0](v22, v23, v24);
  }

  else
  {
    v26 = v14[22];
    v27 = v14[19];

    sub_1B5EA2EAC();
    sub_1B5E6FB04();

    return v31(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
  }
}

uint64_t sub_1B5E98C24()
{
  sub_1B5E01DFC();
  v1 = v0[29];
  v2 = v0[22];
  v3 = v0[19];

  sub_1B5E2CF4C();

  return v4();
}

uint64_t sub_1B5E98C8C()
{
  sub_1B5E01DFC();
  v1 = v0[23];
  v2 = v0[24];

  v3 = v0[26];
  v4 = v0[22];
  v5 = v0[19];

  sub_1B5E2CF4C();

  return v6();
}

void sub_1B5E98D04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v14 = a11;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;

  v16 = sub_1B5EA5670();
  type metadata accessor for TCTextCompositionAssistantResponseType(0);
  sub_1B5DEEE50(&qword_1EB90D1E0, 255, type metadata accessor for TCTextCompositionAssistantResponseType);
  v17 = sub_1B5EA59F0();
  v18 = sub_1B5EA5670();
  if (a11)
  {
    v14 = sub_1B5EA55C0();
  }

  aBlock[4] = sub_1B5E902E4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EA2E68;
  aBlock[3] = &unk_1F2D68C08;
  v19 = _Block_copy(aBlock);

  [a1 requestShortFormSmartResponsesWithInputContextHistory:a4 replyToMessageID:v16 documentType:a7 responseTypes:v17 contextBeforeCursor:v18 options:v14 with:v19];
  _Block_release(v19);
}

uint64_t sub_1B5E98EF4()
{
  sub_1B5E01DFC();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v6 = sub_1B5EA4560();
  v1[12] = v6;
  sub_1B5E01C50(v6);
  v1[13] = v7;
  v9 = *(v8 + 64);
  v1[14] = sub_1B5E2D0C8();
  v10 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B5E98FA0()
{
  sub_1B5E2CED8();
  v2 = sub_1B5EA4570();
  sub_1B5EA3124(v2);
  sub_1B5EA2E88();
  v5 = sub_1B5DEEE50(v3, 255, v4);
  sub_1B5EA347C(v5);
  v6 = *MEMORY[0x1E69D9308];
  sub_1B5EA2F44();
  (*(v7 + 104))();
  sub_1B5EA4370();
  sub_1B5EA34B4();
  if (v0)
  {
    v8 = v1[14];
    v9 = v1[9];
    v1[16] = *(v1[11] + OBJC_IVAR___TextCompositionClient_tcClient);

    sub_1B5E9EB44();
    sub_1B5EA2F54(MEMORY[0x1E69D92E8]);
    v21 = v10;
    v11 = swift_task_alloc();
    v1[17] = v11;
    *v11 = v1;
    v11[1] = sub_1B5E992A4;
    v12 = v1[14];
    v13 = v1[10];
    v14 = v1[8];
    sub_1B5E5F780(v1[7]);
    sub_1B5E26214();

    return v21();
  }

  else
  {
    v16 = swift_task_alloc();
    v1[15] = v16;
    *v16 = v1;
    v16[1] = sub_1B5E99180;
    v17 = v1[10];
    v18 = v1[11];
    v19 = v1[8];
    v20 = v1[9];
    sub_1B5E5F780(v1[7]);
    sub_1B5E26214();

    return sub_1B5E994A0();
  }
}

void sub_1B5E99180()
{
  sub_1B5E34EC0();
  sub_1B5DFA47C();
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  sub_1B5E2CE38();
  *v5 = v4;

  v6 = *(v2 + 112);

  v7 = *(v4 + 8);
  if (!v0)
  {
    sub_1B5E5F940();
  }

  sub_1B5E5FEF8();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_1B5E992A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1B5EA385C();
  sub_1B5E2D114();
  sub_1B5E2CF58();
  v15 = v14;
  sub_1B5E2CE48();
  *v16 = v15;
  v18 = v17[17];
  v19 = v17[16];
  v20 = v17[14];
  v21 = v17[13];
  v22 = v17[12];
  v23 = *v13;
  sub_1B5E2CE38();
  *v24 = v23;
  *(v15 + 144) = v12;

  (*(v21 + 8))(v20, v22);

  if (v12)
  {
    sub_1B5EA2F84();
    sub_1B5E6FB04();

    return MEMORY[0x1EEE6DFA0](v25, v26, v27);
  }

  else
  {
    v29 = *(v15 + 112);

    sub_1B5EA2EAC();
    sub_1B5E6FB04();

    return v33(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
  }
}

uint64_t sub_1B5E99444()
{
  sub_1B5E01DFC();
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E994A0()
{
  sub_1B5E01DFC();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v1[11] = v5;
  v1[12] = v6;
  v1[9] = v7;
  v1[10] = v8;
  sub_1B5EA33F4(v9);
  v10 = sub_1B5EA4560();
  v1[17] = v10;
  sub_1B5E01C50(v10);
  v1[18] = v11;
  v13 = *(v12 + 64);
  v1[19] = sub_1B5E2D0C8();
  v14 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1B5E99550()
{
  sub_1B5EA30E4();
  v2 = sub_1B5EA4570();
  sub_1B5EA3124(v2);
  sub_1B5EA2E88();
  v5 = sub_1B5DEEE50(v3, 255, v4);
  sub_1B5EA347C(v5);
  v6 = *MEMORY[0x1E69D9308];
  sub_1B5EA2F44();
  (*(v7 + 104))();
  sub_1B5EA4370();
  v8 = sub_1B5EA34B4();
  if (v0)
  {
    v12 = v1[19];
    v13 = v1[12];
    v1[24] = *(v1[16] + OBJC_IVAR___TextCompositionClient_tcClient);

    sub_1B5E9EB44();
    sub_1B5EA2F54(MEMORY[0x1E69D92E8]);
    v33 = v14;
    v15 = swift_task_alloc();
    v1[25] = v15;
    *v15 = v1;
    v15[1] = sub_1B5E9994C;
    v16 = v1[19];
    v17 = v1[14];
    v18 = v1[15];
    v19 = v1[13];
    v20 = v1[10];
    v21 = v1[11];
    v22 = v1[9];
    v23 = sub_1B5E5F780(v1[8]);

    return v33(v23);
  }

  else
  {
    v25 = *(v1[16] + OBJC_IVAR___TextCompositionClient_client);
    v1[20] = v25;
    if (v25)
    {
      v27 = v1[14];
      v26 = v1[15];
      v32 = *(v1 + 5);
      v34 = *(v1 + 6);
      v28 = swift_task_alloc();
      v1[21] = v28;
      *(v28 + 16) = *(v1 + 4);
      *(v28 + 32) = v32;
      *(v28 + 48) = v34;
      *(v28 + 64) = v27;
      *(v28 + 72) = v26;
      v29 = *(MEMORY[0x1E69C5B08] + 4);

      v30 = swift_task_alloc();
      v1[22] = v30;
      sub_1B5E479E8(0, &qword_1EB90F7E8, 0x1E69D9340);
      sub_1B5EA2F34();
      *v30 = v31;
      v30[1] = sub_1B5E997A8;
      v8 = sub_1B5EA2F64();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE2EE30](v8, v9, v10, v11);
  }
}

uint64_t sub_1B5E997A8()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v6 = *(v5 + 176);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  v3[23] = v0;

  if (!v0)
  {
    v9 = v3[20];
    v10 = v3[21];
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B5E998B0()
{
  sub_1B5E01DFC();
  v1 = v0[7];
  if (v0[15])
  {
    v2 = v0[15];
  }

  else
  {
    sub_1B5EA55E0();
  }

  v3 = v0[19];

  v4 = sub_1B5EA2EC4();

  return v5(v4);
}

uint64_t sub_1B5E9994C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1B5EA339C();
  sub_1B5EA30E4();
  sub_1B5EA2EFC();
  sub_1B5E2CE38();
  *v13 = v12;
  v14 = v12[25];
  *v13 = *v11;
  v12[26] = v10;

  sub_1B5EA31E8();
  v16 = *(v15 + 192);
  (*(v12[18] + 8))(v12[19], v12[17]);

  if (v10)
  {
    sub_1B5EA2F84();
    sub_1B5EA3238();

    return MEMORY[0x1EEE6DFA0](v17, v18, v19);
  }

  else
  {
    v21 = v12[19];

    sub_1B5EA2EAC();
    sub_1B5EA3238();

    return v25(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }
}

uint64_t sub_1B5E99ADC()
{
  sub_1B5E01DFC();
  v1 = *(v0 + 208);
  v2 = *(v0 + 152);

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E99B38()
{
  sub_1B5E01DFC();
  v1 = v0[20];
  v2 = v0[21];

  v3 = v0[23];
  v4 = v0[19];

  sub_1B5E2CF4C();

  return v5();
}

void sub_1B5E99BA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v16 = a11;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;

  if (a7)
  {
    a7 = sub_1B5EA5670();
  }

  v18 = sub_1B5EA5670();
  if (a11)
  {
    v16 = sub_1B5EA55C0();
  }

  aBlock[4] = sub_1B5E902E4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EA2E68;
  aBlock[3] = &unk_1F2D68BB8;
  v19 = _Block_copy(aBlock);

  [a1 requestFollowUpForSmartActionWithSmartAction:a4 inputContextHistory:a5 replyToMessageID:a7 documentType:a8 contextBeforeCursor:v18 options:v16 with:v19];
  _Block_release(v19);
}

uint64_t sub_1B5E99D48()
{
  sub_1B5E01DFC();
  v3 = v2;
  *(v1 + 72) = v4;
  *(v1 + 80) = v0;
  sub_1B5EA33F4(v5);
  v6 = sub_1B5EA4560();
  *(v1 + 88) = v6;
  sub_1B5E01C50(v6);
  *(v1 + 96) = v7;
  v9 = *(v8 + 64);
  *(v1 + 104) = sub_1B5E2D0C8();
  *(v1 + 168) = *v3;
  v10 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B5E9A020()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  v3[17] = v0;

  if (!v0)
  {
    v9 = v3[14];
    v10 = v3[15];
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B5E9A128()
{
  sub_1B5E01DFC();
  if (!sub_1B5EA0C04(*(v0 + 56), &selRef_options))
  {
    if (*(v0 + 72))
    {
      v1 = *(v0 + 72);
    }

    else
    {
      sub_1B5EA55E0();
      sub_1B5E1A084();
    }
  }

  v2 = *(v0 + 104);

  v3 = sub_1B5EA2EC4();

  return v4(v3);
}

uint64_t sub_1B5E9A1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1B5EA339C();
  sub_1B5EA30E4();
  sub_1B5EA2EFC();
  sub_1B5E2CE38();
  *v13 = v12;
  v14 = v12[19];
  *v13 = *v11;
  v12[20] = v10;

  sub_1B5EA31E8();
  v16 = *(v15 + 144);
  (*(v12[12] + 8))(v12[13], v12[11]);

  if (v10)
  {
    sub_1B5EA2F84();
    sub_1B5EA3238();

    return MEMORY[0x1EEE6DFA0](v17, v18, v19);
  }

  else
  {
    v21 = v12[13];

    sub_1B5EA2EAC();
    sub_1B5EA3238();

    return v25(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }
}

uint64_t sub_1B5E9A370()
{
  sub_1B5E01DFC();
  v1 = *(v0 + 160);
  v2 = *(v0 + 104);

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E9A3CC()
{
  sub_1B5E01DFC();
  v1 = v0[14];
  v2 = v0[15];

  v3 = v0[17];
  v4 = v0[13];

  sub_1B5E2CF4C();

  return v5();
}

void sub_1B5E9A438(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;

  v12 = sub_1B5EA5670();

  if (a6)
  {
    a6 = sub_1B5EA55C0();
  }

  v14[4] = sub_1B5E902E4;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1B5EA2E68;
  v14[3] = &unk_1F2D68B68;
  v13 = _Block_copy(v14);

  [a1 requestShortFormSmartRepliesWithInputContextHistory:a4 documentType:v12 options:a6 with:v13];
  _Block_release(v13);
}

uint64_t sub_1B5E9A5D8()
{
  sub_1B5E01DFC();
  v6 = sub_1B5EA3350(v1, v2, v3, v4, v5);
  *(v0 + 104) = v6;
  sub_1B5E01C50(v6);
  *(v0 + 112) = v7;
  v9 = *(v8 + 64);
  v10 = sub_1B5E2D0C8();
  sub_1B5EA3510(v10);
  v11 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B5E9A858()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  v3[19] = v0;

  if (!v0)
  {
    v9 = v3[16];
    v10 = v3[17];
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B5E9A960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1B5EA339C();
  sub_1B5EA30E4();
  sub_1B5EA2EFC();
  sub_1B5E2CE38();
  *v13 = v12;
  v14 = v12[21];
  *v13 = *v11;
  v12[22] = v10;

  sub_1B5EA31E8();
  v16 = *(v15 + 160);
  (*(v12[14] + 8))(v12[15], v12[13]);

  if (v10)
  {
    sub_1B5EA2F84();
    sub_1B5EA3238();

    return MEMORY[0x1EEE6DFA0](v17, v18, v19);
  }

  else
  {
    v21 = v12[15];

    sub_1B5EA2EAC();
    sub_1B5EA3238();

    return v25(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }
}

void sub_1B5E9AAF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  v14 = sub_1B5EA5670();

  v15 = sub_1B5EA5670();
  if (a8)
  {
    a8 = sub_1B5EA55C0();
  }

  v17[4] = sub_1B5E902E4;
  v17[5] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1B5EA2E68;
  v17[3] = &unk_1F2D68B18;
  v16 = _Block_copy(v17);

  [a1 requestLongFormSmartRepliesWithInputContextHistory:a4 documentType:v14 replyType:v15 options:a8 with:v16];
  _Block_release(v16);
}

uint64_t sub_1B5E9ACB8()
{
  sub_1B5E01DFC();
  v6 = sub_1B5EA3350(v1, v2, v3, v4, v5);
  *(v0 + 104) = v6;
  sub_1B5E01C50(v6);
  *(v0 + 112) = v7;
  v9 = *(v8 + 64);
  v10 = sub_1B5E2D0C8();
  sub_1B5EA3510(v10);
  v11 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B5E9AF38()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  v3[19] = v0;

  if (!v0)
  {
    v9 = v3[16];
    v10 = v3[17];
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B5E9B040()
{
  sub_1B5E01DFC();
  if (!sub_1B5EA0C04(*(v0 + 56), &selRef_options))
  {
    if (*(v0 + 88))
    {
      v1 = *(v0 + 88);
    }

    else
    {
      sub_1B5EA55E0();
      sub_1B5E1A084();
    }
  }

  v2 = *(v0 + 120);

  v3 = sub_1B5EA2EC4();

  return v4(v3);
}

uint64_t sub_1B5E9B0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1B5EA339C();
  sub_1B5EA30E4();
  sub_1B5EA2EFC();
  sub_1B5E2CE38();
  *v13 = v12;
  v14 = v12[21];
  *v13 = *v11;
  v12[22] = v10;

  sub_1B5EA31E8();
  v16 = *(v15 + 160);
  (*(v12[14] + 8))(v12[15], v12[13]);

  if (v10)
  {
    sub_1B5EA2F84();
    sub_1B5EA3238();

    return MEMORY[0x1EEE6DFA0](v17, v18, v19);
  }

  else
  {
    v21 = v12[15];

    sub_1B5EA2EAC();
    sub_1B5EA3238();

    return v25(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }
}

uint64_t sub_1B5E9B288()
{
  sub_1B5E01DFC();
  v1 = *(v0 + 176);
  v2 = *(v0 + 120);

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E9B2E4()
{
  sub_1B5E01DFC();
  v1 = v0[16];
  v2 = v0[17];

  v3 = v0[19];
  v4 = v0[15];

  sub_1B5E2CF4C();

  return v5();
}

void sub_1B5E9B350(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  v14 = sub_1B5EA5670();

  v15 = sub_1B5EA5670();
  if (a8)
  {
    a8 = sub_1B5EA55C0();
  }

  v17[4] = sub_1B5E902E4;
  v17[5] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1B5EA2E68;
  v17[3] = &unk_1F2D68AC8;
  v16 = _Block_copy(v17);

  [a1 requestUserQuestionnaireWithInputContextHistory:a4 documentType:v14 replyType:v15 options:a8 with:v16];
  _Block_release(v16);
}

uint64_t sub_1B5E9B518()
{
  sub_1B5E01DFC();
  v3 = v2;
  *(v1 + 112) = v4;
  *(v1 + 120) = v0;
  *(v1 + 96) = v5;
  *(v1 + 104) = v6;
  *(v1 + 80) = v7;
  *(v1 + 88) = v8;
  *(v1 + 64) = v9;
  *(v1 + 72) = v10;
  v11 = sub_1B5EA4560();
  *(v1 + 128) = v11;
  sub_1B5E01C50(v11);
  *(v1 + 136) = v12;
  v14 = *(v13 + 64);
  *(v1 + 144) = sub_1B5E2D0C8();
  *(v1 + 208) = *v3;
  v15 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1B5E9B5D4()
{
  sub_1B5E2D114();
  v38 = v1;
  v2 = sub_1B5EA4570();
  sub_1B5EA3124(v2);
  sub_1B5EA2E88();
  v5 = sub_1B5DEEE50(v3, 255, v4);
  sub_1B5EA347C(v5);
  v6 = *MEMORY[0x1E69D9308];
  sub_1B5EA2F44();
  (*(v7 + 104))();
  sub_1B5EA4370();
  v8 = sub_1B5EA34B4();
  if (v0)
  {
    v12 = *(v1 + 208);
    v13 = *(v1 + 144);
    *(v1 + 184) = *(*(v1 + 120) + OBJC_IVAR___TextCompositionClient_tcClient);
    v37 = v12;

    sub_1B5E9EC58(&v37);
    sub_1B5EA2F54(MEMORY[0x1E69D92D0]);
    v35 = v14;
    v15 = swift_task_alloc();
    *(v1 + 192) = v15;
    *v15 = v1;
    v15[1] = sub_1B5E9BA10;
    v16 = *(v1 + 144);
    v17 = *(v1 + 104);
    v18 = *(v1 + 112);
    v19 = *(v1 + 88);
    v20 = *(v1 + 96);
    v21 = *(v1 + 72);
    v22 = *(v1 + 80);
    v23 = sub_1B5EA3070(*(v1 + 64));

    return v35(v23);
  }

  else
  {
    v25 = *(*(v1 + 120) + OBJC_IVAR___TextCompositionClient_client);
    *(v1 + 152) = v25;
    if (v25)
    {
      v26 = *(v1 + 208);
      v27 = *(v1 + 112);
      v28 = *(v1 + 88);
      v36 = *(v1 + 72);
      v29 = *(v1 + 64);
      v30 = swift_task_alloc();
      *(v1 + 160) = v30;
      v31 = *(v1 + 96);
      *(v30 + 16) = v29;
      *(v30 + 24) = v26;
      *(v30 + 32) = v36;
      *(v30 + 48) = v28;
      *(v30 + 56) = v31;
      *(v30 + 72) = v27;
      v32 = *(MEMORY[0x1E69C5B08] + 4);

      v33 = swift_task_alloc();
      *(v1 + 168) = v33;
      sub_1B5E479E8(0, &qword_1EB90D1E8, 0x1E69D9350);
      sub_1B5EA2F34();
      *v33 = v34;
      v33[1] = sub_1B5E9B850;
      v8 = sub_1B5EA2F64();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE2EE30](v8, v9, v10, v11);
  }
}

uint64_t sub_1B5E9B850()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  v3[22] = v0;

  if (!v0)
  {
    v9 = v3[19];
    v10 = v3[20];
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B5E9B958()
{
  sub_1B5E01DFC();
  if (!sub_1B5EA0C04(*(v0 + 56), &selRef_options))
  {
    if (*(v0 + 112))
    {
      v1 = *(v0 + 112);
    }

    else
    {
      sub_1B5EA55E0();
      sub_1B5E1A084();
    }
  }

  v2 = *(v0 + 144);

  v3 = sub_1B5EA2EC4();

  return v4(v3);
}

uint64_t sub_1B5E9BA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1B5EA339C();
  sub_1B5EA30E4();
  sub_1B5EA2EFC();
  sub_1B5E2CE38();
  *v13 = v12;
  v14 = v12[24];
  *v13 = *v11;
  v12[25] = v10;

  sub_1B5EA31E8();
  v16 = *(v15 + 184);
  (*(v12[17] + 8))(v12[18], v12[16]);

  if (v10)
  {
    sub_1B5EA2F84();
    sub_1B5EA3238();

    return MEMORY[0x1EEE6DFA0](v17, v18, v19);
  }

  else
  {
    v21 = v12[18];

    sub_1B5EA2EAC();
    sub_1B5EA3238();

    return v25(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }
}

uint64_t sub_1B5E9BBA0()
{
  sub_1B5E01DFC();
  v1 = *(v0 + 200);
  v2 = *(v0 + 144);

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E9BBFC()
{
  sub_1B5E01DFC();
  v1 = v0[19];
  v2 = v0[20];

  v3 = v0[22];
  v4 = v0[18];

  sub_1B5E2CF4C();

  return v5();
}

void sub_1B5E9BC68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v14 = a11;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;

  v16 = sub_1B5EA5670();

  v17 = sub_1B5EA5670();
  v18 = sub_1B5EA5670();
  if (a11)
  {
    v14 = sub_1B5EA55C0();
  }

  aBlock[4] = sub_1B5E902E4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EA2E68;
  aBlock[3] = &unk_1F2D68A78;
  v19 = _Block_copy(aBlock);

  [a1 requestLongFormSmartRepliesWithInputContextHistory:a4 documentType:v16 replyType:v17 baseResponse:v18 userFilledQuestionnaire:a10 options:v14 with:v19];
  _Block_release(v19);
}

uint64_t sub_1B5E9BE54()
{
  sub_1B5E01DFC();
  v3 = v2;
  *(v1 + 80) = v4;
  *(v1 + 88) = v0;
  *(v1 + 64) = v5;
  *(v1 + 72) = v6;
  v7 = sub_1B5EA4560();
  *(v1 + 96) = v7;
  sub_1B5E01C50(v7);
  *(v1 + 104) = v8;
  v10 = *(v9 + 64);
  *(v1 + 112) = sub_1B5E2D0C8();
  *(v1 + 176) = *v3;
  v11 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B5E9BF08()
{
  sub_1B5E34EC0();
  v30 = v1;
  v2 = sub_1B5EA4570();
  sub_1B5EA3124(v2);
  sub_1B5EA2E88();
  v5 = sub_1B5DEEE50(v3, 255, v4);
  sub_1B5EA347C(v5);
  v6 = *MEMORY[0x1E69D9308];
  sub_1B5EA2F44();
  (*(v7 + 104))();
  sub_1B5EA4370();
  v8 = sub_1B5EA34B4();
  if (v0)
  {
    v12 = *(v1 + 176);
    v13 = *(v1 + 112);
    *(v1 + 152) = *(*(v1 + 88) + OBJC_IVAR___TextCompositionClient_tcClient);
    v29 = v12;

    sub_1B5E9EC58(&v29);
    sub_1B5EA2F54(MEMORY[0x1E69D92B8]);
    v14 = swift_task_alloc();
    *(v1 + 160) = v14;
    *v14 = v1;
    v14[1] = sub_1B5E9C2E8;
    v15 = *(v1 + 112);
    v16 = *(v1 + 72);
    v17 = *(v1 + 80);
    sub_1B5EA3070(*(v1 + 64));
    sub_1B5EA38B0();

    __asm { BR              X4 }
  }

  v20 = *(*(v1 + 88) + OBJC_IVAR___TextCompositionClient_client);
  *(v1 + 120) = v20;
  if (v20)
  {
    v21 = *(v1 + 176);
    v22 = *(v1 + 80);
    v23 = swift_task_alloc();
    *(v1 + 128) = v23;
    *(v23 + 16) = *(v1 + 64);
    *(v23 + 32) = v21;
    *(v23 + 40) = v22;
    v24 = *(MEMORY[0x1E69C5B08] + 4);

    v25 = swift_task_alloc();
    *(v1 + 136) = v25;
    sub_1B5DF33E0(&qword_1EB90F7F8, qword_1B5EBB070);
    sub_1B5EA2F34();
    *v25 = v26;
    v25[1] = sub_1B5E9C144;
    sub_1B5EA2F64();
    sub_1B5EA38B0();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE2EE30](v8, v9, v10, v11);
}

uint64_t sub_1B5E9C144()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  v3[18] = v0;

  if (!v0)
  {
    v9 = v3[15];
    v10 = v3[16];
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B5E9C24C()
{
  sub_1B5E01DFC();
  v1 = v0[7];
  if (v0[10])
  {
    v2 = v0[10];
  }

  else
  {
    sub_1B5EA55E0();
  }

  v3 = v0[14];

  v4 = sub_1B5EA2EC4();

  return v5(v4);
}

uint64_t sub_1B5E9C2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1B5EA339C();
  sub_1B5EA30E4();
  sub_1B5EA2EFC();
  sub_1B5E2CE38();
  *v13 = v12;
  v14 = v12[20];
  *v13 = *v11;
  v12[21] = v10;

  sub_1B5EA31E8();
  v16 = *(v15 + 152);
  (*(v12[13] + 8))(v12[14], v12[12]);

  if (v10)
  {
    sub_1B5EA2F84();
    sub_1B5EA3238();

    return MEMORY[0x1EEE6DFA0](v17, v18, v19);
  }

  else
  {
    v21 = v12[14];

    sub_1B5EA2EAC();
    sub_1B5EA3238();

    return v25(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }
}

uint64_t sub_1B5E9C478()
{
  sub_1B5E01DFC();
  v1 = *(v0 + 168);
  v2 = *(v0 + 112);

  sub_1B5E2CF4C();

  return v3();
}

void sub_1B5E9C4D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;

  v13 = sub_1B5EA5840();
  v14 = sub_1B5EA5670();

  if (a7)
  {
    a7 = sub_1B5EA55C0();
  }

  v16[4] = sub_1B5E2CBFC;
  v16[5] = v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1B5E9C694;
  v16[3] = &unk_1F2D68A28;
  v15 = _Block_copy(v16);

  [a1 requestEmojiSmartRepliesWithInputContextHistory:a4 tapbackMessageGUIDs:v13 documentType:v14 options:a7 with:v15];
  _Block_release(v15);
}

uint64_t sub_1B5E9C694(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1B5DF33E0(&qword_1EB90EE58, &qword_1B5EB73E8);
    v4 = sub_1B5EA55D0();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_1B5E9C744()
{
  sub_1B5E01DFC();
  v3 = v2;
  *(v1 + 96) = v4;
  *(v1 + 104) = v0;
  *(v1 + 80) = v5;
  *(v1 + 88) = v6;
  *(v1 + 64) = v7;
  *(v1 + 72) = v8;
  v9 = sub_1B5EA4560();
  *(v1 + 112) = v9;
  sub_1B5E01C50(v9);
  *(v1 + 120) = v10;
  v12 = *(v11 + 64);
  *(v1 + 128) = sub_1B5E2D0C8();
  *(v1 + 192) = *v3;
  v13 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1B5E9C7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1B5EA35BC();
  a17 = v20;
  a18 = v21;
  sub_1B5EA30E4();
  a16 = v19;
  v22 = sub_1B5EA4570();
  sub_1B5EA3124(v22);
  sub_1B5EA2E88();
  v25 = sub_1B5DEEE50(v23, 255, v24);
  sub_1B5EA347C(v25);
  v26 = *MEMORY[0x1E69D9308];
  sub_1B5EA2F44();
  (*(v27 + 104))();
  sub_1B5EA4370();
  v28 = sub_1B5EA34B4();
  if (v18)
  {
    v32 = *(v19 + 192);
    v33 = *(v19 + 128);
    *(v19 + 168) = *(*(v19 + 104) + OBJC_IVAR___TextCompositionClient_tcClient);
    HIBYTE(a10) = v32;

    sub_1B5E9EC58(&a10 + 7);
    sub_1B5EA2F54(MEMORY[0x1E69D92D0]);
    v63 = v34;
    v35 = swift_task_alloc();
    *(v19 + 176) = v35;
    *v35 = v19;
    v35[1] = sub_1B5E9CC14;
    v36 = *(v19 + 128);
    v37 = *(v19 + 88);
    v38 = *(v19 + 96);
    v39 = *(v19 + 72);
    v40 = *(v19 + 80);
    sub_1B5E5F780(*(v19 + 64));
    sub_1B5EA34CC();

    return v49(v41, v42, v43, v44, v45, v46, v47, v48, v63, a10);
  }

  else
  {
    v52 = *(*(v19 + 104) + OBJC_IVAR___TextCompositionClient_client);
    *(v19 + 136) = v52;
    if (v52)
    {
      v53 = *(v19 + 192);
      v54 = *(v19 + 96);
      v56 = *(v19 + 64);
      v55 = *(v19 + 72);
      v57 = swift_task_alloc();
      *(v19 + 144) = v57;
      v58 = *(v19 + 80);
      *(v57 + 16) = v56;
      *(v57 + 24) = v53;
      *(v57 + 32) = v55;
      *(v57 + 40) = v58;
      *(v57 + 56) = v54;
      v59 = *(MEMORY[0x1E69C5B08] + 4);

      v60 = swift_task_alloc();
      *(v19 + 152) = v60;
      sub_1B5E479E8(0, &qword_1EB90D1E8, 0x1E69D9350);
      sub_1B5EA2F34();
      *v60 = v61;
      v60[1] = sub_1B5E9CA54;
      sub_1B5EA2F64();
      sub_1B5EA34CC();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE2EE30](v28, v29, v30, v31);
  }
}

uint64_t sub_1B5E9CA54()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  v3[20] = v0;

  if (!v0)
  {
    v9 = v3[17];
    v10 = v3[18];
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B5E9CB5C()
{
  sub_1B5E01DFC();
  if (!sub_1B5EA0C04(*(v0 + 56), &selRef_options))
  {
    if (*(v0 + 96))
    {
      v1 = *(v0 + 96);
    }

    else
    {
      sub_1B5EA55E0();
      sub_1B5E1A084();
    }
  }

  v2 = *(v0 + 128);

  v3 = sub_1B5EA2EC4();

  return v4(v3);
}

uint64_t sub_1B5E9CC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1B5EA339C();
  sub_1B5EA30E4();
  sub_1B5EA2EFC();
  sub_1B5E2CE38();
  *v13 = v12;
  v14 = v12[22];
  *v13 = *v11;
  v12[23] = v10;

  sub_1B5EA31E8();
  v16 = *(v15 + 168);
  (*(v12[15] + 8))(v12[16], v12[14]);

  if (v10)
  {
    sub_1B5EA2F84();
    sub_1B5EA3238();

    return MEMORY[0x1EEE6DFA0](v17, v18, v19);
  }

  else
  {
    v21 = v12[16];

    sub_1B5EA2EAC();
    sub_1B5EA3238();

    return v25(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }
}

uint64_t sub_1B5E9CDA4()
{
  sub_1B5E01DFC();
  v1 = *(v0 + 184);
  v2 = *(v0 + 128);

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E9CE00()
{
  sub_1B5E01DFC();
  v1 = v0[17];
  v2 = v0[18];

  v3 = v0[20];
  v4 = v0[16];

  sub_1B5E2CF4C();

  return v5();
}

void sub_1B5E9CE6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v14 = a9;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;

  v16 = sub_1B5EA5670();

  v17 = sub_1B5EA5670();
  if (a9)
  {
    v14 = sub_1B5EA55C0();
  }

  v19[4] = sub_1B5E902E4;
  v19[5] = v15;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1B5EA2E68;
  v19[3] = &unk_1F2D689D8;
  v18 = _Block_copy(v19);

  [a1 requestLongFormSmartRepliesWithInputContextHistory:a4 documentType:v16 replyType:v17 userFilledQuestionnaire:a8 options:v14 with:v18];
  _Block_release(v18);
}

uint64_t sub_1B5E9D03C()
{
  sub_1B5E01DFC();
  v3 = v2;
  *(v1 + 104) = v4;
  *(v1 + 112) = v0;
  *(v1 + 88) = v5;
  *(v1 + 96) = v6;
  *(v1 + 72) = v7;
  *(v1 + 80) = v8;
  sub_1B5EA33F4(v9);
  v10 = sub_1B5EA4560();
  *(v1 + 120) = v10;
  sub_1B5E01C50(v10);
  *(v1 + 128) = v11;
  v13 = *(v12 + 64);
  *(v1 + 136) = sub_1B5E2D0C8();
  *(v1 + 200) = *v3;
  v14 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1B5E9D0F4()
{
  sub_1B5E2D114();
  v35 = v1;
  v2 = sub_1B5EA4570();
  sub_1B5EA3124(v2);
  sub_1B5EA2E88();
  v5 = sub_1B5DEEE50(v3, 255, v4);
  sub_1B5EA347C(v5);
  v6 = *MEMORY[0x1E69D9308];
  sub_1B5EA2F44();
  (*(v7 + 104))();
  sub_1B5EA4370();
  v8 = sub_1B5EA34B4();
  if (v0)
  {
    v12 = *(v1 + 200);
    v13 = *(v1 + 136);
    *(v1 + 176) = *(*(v1 + 112) + OBJC_IVAR___TextCompositionClient_tcClient);
    v34 = v12;

    sub_1B5E9EC58(&v34);
    sub_1B5EA2F54(MEMORY[0x1E69D92C0]);
    v32 = v14;
    v15 = swift_task_alloc();
    *(v1 + 184) = v15;
    *v15 = v1;
    v15[1] = sub_1B5E9D510;
    v16 = *(v1 + 136);
    v17 = *(v1 + 96);
    v18 = *(v1 + 104);
    v19 = *(v1 + 80);
    v20 = *(v1 + 88);
    v21 = sub_1B5EA305C();

    return v32(v21);
  }

  else
  {
    v23 = *(*(v1 + 112) + OBJC_IVAR___TextCompositionClient_client);
    *(v1 + 144) = v23;
    if (v23)
    {
      v24 = *(v1 + 200);
      v25 = *(v1 + 104);
      v31 = *(v1 + 72);
      v33 = *(v1 + 88);
      v26 = *(v1 + 64);
      v27 = swift_task_alloc();
      *(v1 + 152) = v27;
      *(v27 + 16) = v26;
      *(v27 + 24) = v24;
      *(v27 + 32) = v31;
      *(v27 + 48) = v33;
      *(v27 + 64) = v25;
      v28 = *(MEMORY[0x1E69C5B08] + 4);

      v29 = swift_task_alloc();
      *(v1 + 160) = v29;
      sub_1B5E479E8(0, &qword_1EB90F7F0, 0x1E69D9360);
      sub_1B5EA2F34();
      *v29 = v30;
      v29[1] = sub_1B5E9D350;
      v8 = sub_1B5EA2F64();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE2EE30](v8, v9, v10, v11);
  }
}

uint64_t sub_1B5E9D350()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  v3[21] = v0;

  if (!v0)
  {
    v9 = v3[18];
    v10 = v3[19];
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B5E9D458()
{
  sub_1B5E01DFC();
  if (!sub_1B5EA0C04(*(v0 + 56), &selRef_options))
  {
    if (*(v0 + 104))
    {
      v1 = *(v0 + 104);
    }

    else
    {
      sub_1B5EA55E0();
      sub_1B5E1A084();
    }
  }

  v2 = *(v0 + 136);

  v3 = sub_1B5EA2EC4();

  return v4(v3);
}

uint64_t sub_1B5E9D510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1B5EA339C();
  sub_1B5EA30E4();
  sub_1B5EA2EFC();
  sub_1B5E2CE38();
  *v13 = v12;
  v14 = v12[23];
  *v13 = *v11;
  v12[24] = v10;

  sub_1B5EA31E8();
  v16 = *(v15 + 176);
  (*(v12[16] + 8))(v12[17], v12[15]);

  if (v10)
  {
    sub_1B5EA2F84();
    sub_1B5EA3238();

    return MEMORY[0x1EEE6DFA0](v17, v18, v19);
  }

  else
  {
    v21 = v12[17];

    sub_1B5EA2EAC();
    sub_1B5EA3238();

    return v25(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }
}

uint64_t sub_1B5E9D6A0()
{
  sub_1B5E01DFC();
  v1 = *(v0 + 192);
  v2 = *(v0 + 136);

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E9D6FC()
{
  sub_1B5E01DFC();
  v1 = v0[18];
  v2 = v0[19];

  v3 = v0[21];
  v4 = v0[17];

  sub_1B5E2CF4C();

  return v5();
}

void sub_1B5E9D768(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v13 = a10;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  v15 = sub_1B5EA5670();

  v16 = sub_1B5EA5670();
  v17 = sub_1B5EA5670();
  if (a10)
  {
    v13 = sub_1B5EA55C0();
  }

  aBlock[4] = sub_1B5E902E4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EA2E68;
  aBlock[3] = &unk_1F2D68988;
  v18 = _Block_copy(aBlock);

  [a1 requestUserQuestionnaireWithInputContextHistory:a4 documentType:v15 replyType:v16 baseResponse:v17 options:v13 with:v18];
  _Block_release(v18);
}

uint64_t sub_1B5E9D94C()
{
  sub_1B5E01DFC();
  v6 = sub_1B5EA3350(v1, v2, v3, v4, v5);
  *(v0 + 104) = v6;
  sub_1B5E01C50(v6);
  *(v0 + 112) = v7;
  v9 = *(v8 + 64);
  v10 = sub_1B5E2D0C8();
  sub_1B5EA3510(v10);
  v11 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B5E9DBCC()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  v3[19] = v0;

  if (!v0)
  {
    v9 = v3[16];
    v10 = v3[17];
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

id sub_1B5E9DCD4()
{
  sub_1B5E2CED8();
  v1 = v0[7];
  result = [v1 response];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = result;
  result = [v1 questionnaire];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = sub_1B5EA0C04(v1, &selRef_options);
  if (!v5)
  {
    v6 = v0[11];
    if (v6)
    {
      v7 = v0[11];

      goto LABEL_7;
    }

    v5 = sub_1B5EA55E0();
  }

  v6 = v5;
LABEL_7:

  v8 = v0[15];

  v9 = v0[1];

  return v9(v3, v4, v6);
}

uint64_t sub_1B5E9DDF0()
{
  sub_1B5EA30E4();
  sub_1B5DFA47C();
  v2 = *v1;
  v3 = *v1;
  sub_1B5E2CE38();
  *v4 = v3;
  v5 = v2[21];
  v6 = *v1;
  *v4 = *v1;
  v3[22] = v0;

  v7 = v2[20];
  (*(v2[14] + 8))(v2[15], v2[13]);

  if (!v0)
  {
    v12 = v3[15];

    v13 = v6[1];
    sub_1B5E5F940();
    sub_1B5EA3898();

    __asm { BRAA            X4, X16 }
  }

  sub_1B5E5F8EC();
  sub_1B5EA3898();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1B5E9DFAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;

  v14 = sub_1B5EA5670();

  v15 = sub_1B5EA5670();
  if (a8)
  {
    a8 = sub_1B5EA55C0();
  }

  v17[4] = sub_1B5E902E4;
  v17[5] = v13;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1B5EA2E68;
  v17[3] = &unk_1F2D68938;
  v16 = _Block_copy(v17);

  [a1 requestBasicLongFormRepliesAndQuestionnaireWithInputContextHistory:a4 documentType:v14 replyType:v15 options:a8 with:v16];
  _Block_release(v16);
}

uint64_t sub_1B5E9E174(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_1B5E2CE58();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B5E9E1A0()
{
  sub_1B5E34EC0();
  v2 = sub_1B5EA4570();
  sub_1B5EA3124(v2);
  sub_1B5EA2E88();
  v5 = sub_1B5DEEE50(v3, 255, v4);
  sub_1B5EA347C(v5);
  v6 = *MEMORY[0x1E69D9308];
  sub_1B5EA2F44();
  (*(v7 + 104))();
  sub_1B5EA4370();
  v8 = sub_1B5EA34B4();
  v12 = v1[10];
  if (v0)
  {
    v1[15] = *(v12 + OBJC_IVAR___TextCompositionClient_tcClient);
    v13 = *(MEMORY[0x1E69D92B0] + 4);
    v26 = (*MEMORY[0x1E69D92B0] + MEMORY[0x1E69D92B0]);

    v14 = swift_task_alloc();
    v1[16] = v14;
    *v14 = v1;
    v14[1] = sub_1B5E9E570;
    v15 = v1[9];
    v16 = sub_1B5E5F780(v1[8]);

    return v26(v16);
  }

  else
  {
    v18 = *(v12 + OBJC_IVAR___TextCompositionClient_client);
    v1[11] = v18;
    if (v18)
    {
      v20 = v1[8];
      v19 = v1[9];
      v21 = swift_task_alloc();
      v1[12] = v21;
      *(v21 + 16) = v20;
      *(v21 + 24) = v19;
      v22 = *(MEMORY[0x1E69C5B08] + 4);

      v23 = swift_task_alloc();
      v1[13] = v23;
      sub_1B5E479E8(0, &qword_1EB90F808, 0x1E69D9380);
      sub_1B5EA2F34();
      *v23 = v24;
      v23[1] = sub_1B5E9E3B8;
      sub_1B5EA2F64();
      sub_1B5EA38B0();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE2EE30](v8, v9, v10, v11);
  }
}

uint64_t sub_1B5E9E3B8()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  v3[14] = v0;

  if (!v0)
  {
    v9 = v3[11];
    v10 = v3[12];
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B5E9E4C0()
{
  sub_1B5E01DFC();
  if (!sub_1B5EA0C04(*(v0 + 56), &selRef_options))
  {
    if (*(v0 + 72))
    {
      v1 = *(v0 + 72);
    }

    else
    {
      sub_1B5EA55E0();
      sub_1B5E1A084();
    }
  }

  v2 = sub_1B5EA2EC4();

  return v3(v2);
}

uint64_t sub_1B5E9E570()
{
  sub_1B5E34EC0();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  *(v3 + 136) = v0;

  if (!v0)
  {
    v13 = *(v3 + 120);

    sub_1B5EA35E0();
    sub_1B5E5FEF8();

    __asm { BRAA            X3, X16 }
  }

  sub_1B5E5F8EC();
  sub_1B5E5FEF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1B5E9E6A8()
{
  sub_1B5E01DFC();
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);
  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E9E704()
{
  sub_1B5E01DFC();
  v1 = v0[11];
  v2 = v0[12];

  v3 = v0[14];
  sub_1B5E2CF4C();

  return v4();
}

uint64_t sub_1B5E9E768(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  sub_1B5E9E808(a4, a5, sub_1B5E902E4, v10, a1);
}

void sub_1B5E9E808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v9 = sub_1B5EA55C0();
  }

  else
  {
    v9 = 0;
  }

  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B5EA2E68;
  v11[3] = &unk_1F2D688E8;
  v10 = _Block_copy(v11);

  [a5 requestCalendarEventFromOCRInput:a1 inputOptions:v9 with:v10];
  _Block_release(v10);
}

void sub_1B5E9E914(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v9 = a2;
  v7 = a3;
  v8 = sub_1B5E5F324();
  v6(v8);
}

uint64_t sub_1B5E9E99C()
{
  v2 = *MEMORY[0x1E69D9518];
  sub_1B5EA56A0();
  if (v1 == sub_1B5EA36D8() && v0 == v3)
  {

    goto LABEL_18;
  }

  v5 = sub_1B5EA32DC();

  if (v5)
  {
LABEL_18:

    return MEMORY[0x1EEE48BB8](v6);
  }

  v7 = *MEMORY[0x1E69D9528];
  sub_1B5EA56A0();
  if (v5 == sub_1B5EA36D8() && v0 == v8)
  {
  }

  else
  {
    v10 = sub_1B5EA32DC();

    if ((v10 & 1) == 0)
    {
      v12 = *MEMORY[0x1E69D9520];
      v13 = sub_1B5EA56A0();
      v15 = v14;
      if (v13 == sub_1B5EA56A0() && v15 == v16)
      {

LABEL_26:

        return MEMORY[0x1EEE48BB0](v6);
      }

      sub_1B5E43768();
      v18 = sub_1B5EA5F00();

      if (v18)
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }
  }

  return MEMORY[0x1EEE48BA8](v11);
}

uint64_t sub_1B5E9EB44()
{
  v2 = *MEMORY[0x1E69D93F0];
  sub_1B5EA56A0();
  if (v1 == sub_1B5EA36D8() && v0 == v3)
  {
  }

  else
  {
    v5 = sub_1B5EA32DC();

    if ((v5 & 1) == 0)
    {
      v7 = *MEMORY[0x1E69D93F8];
      v8 = sub_1B5EA56A0();
      v10 = v9;
      if (v8 != sub_1B5EA56A0() || v10 != v11)
      {
        sub_1B5E43768();
        sub_1B5EA5F00();
      }

      return MEMORY[0x1EEE48B90](v13);
    }
  }

  return MEMORY[0x1EEE48B88](v6);
}

uint64_t sub_1B5E9EC5C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = 1;
  switch(*a1)
  {
    case 1:
      sub_1B5EA44F0();
      goto LABEL_13;
    case 2:
      sub_1B5EA4500();
      goto LABEL_13;
    case 3:
      sub_1B5EA4480();
      goto LABEL_13;
    case 4:
      sub_1B5EA44C0();
      goto LABEL_13;
    case 5:
      sub_1B5EA4510();
      goto LABEL_13;
    case 6:
      sub_1B5EA44A0();
      goto LABEL_13;
    case 7:
      sub_1B5EA44E0();
      goto LABEL_13;
    case 8:
      sub_1B5EA44D0();
      goto LABEL_13;
    case 9:
      sub_1B5EA4520();
      goto LABEL_13;
    case 0xA:
      sub_1B5EA4490();
      goto LABEL_13;
    case 0xB:
      goto LABEL_14;
    default:
      sub_1B5EA44B0();
LABEL_13:
      v2 = 0;
LABEL_14:
      v4 = sub_1B5EA4530();

      return sub_1B5DF3658(a2, v2, 1, v4);
  }
}

uint64_t sub_1B5E9ED7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TextCompositionClient();

  return MEMORY[0x1EEE2EE60](a1, v5, a3);
}

uint64_t sub_1B5E9EE2C@<X0>(char *a1@<X8>)
{
  sub_1B5EA5D00();
  sub_1B5E9070C();

  if (v1 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v1)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1B5E9EED0()
{
  sub_1B5DFD8A8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1B5EA53B0();
  v10 = sub_1B5DF5DA8(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1B5EA2FE0();
  v23 = sub_1B5EA4570();
  sub_1B5EA2E88();
  v15 = sub_1B5DEEE50(v13, 255, v14);
  sub_1B5EA36AC(v15);
  v16 = *MEMORY[0x1E69D9308];
  sub_1B5E2D1D8(v23);
  (*(v17 + 104))();
  v18 = sub_1B5EA4370();
  sub_1B5DF3FB8(&v22);
  if (v18)
  {
    v19 = *(v0 + *v4);

    v2(v8);

LABEL_5:
    sub_1B5DFD8C0();
    return;
  }

  v20 = [objc_allocWithZone(MEMORY[0x1E69D9370]) init];
  [v20 requestCancellationForToken_];

  if (*(v0 + *v6))
  {
    MEMORY[0x1EEE9AC00](v21);

    sub_1B5EA4D70();

    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_1B5E9F1C0()
{
  sub_1B5E01DFC();
  v3 = v2;
  *(v1 + 144) = v4;
  *(v1 + 152) = v0;
  *(v1 + 136) = v5;
  v6 = sub_1B5EA4560();
  *(v1 + 160) = v6;
  sub_1B5E01C50(v6);
  *(v1 + 168) = v7;
  v9 = *(v8 + 64);
  *(v1 + 176) = sub_1B5E2D0C8();
  *(v1 + 248) = *v3;
  v10 = sub_1B5E2CE58();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1B5E9F550()
{
  sub_1B5E01DFC();
  sub_1B5E2CF58();
  v3 = v2;
  sub_1B5E2CE48();
  *v4 = v3;
  v6 = *(v5 + 208);
  v7 = *v1;
  sub_1B5E2CE38();
  *v8 = v7;
  v3[27] = v0;

  if (!v0)
  {
    v9 = v3[24];
    v10 = v3[25];
  }

  sub_1B5E5F8EC();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1B5E9F658()
{
  sub_1B5E01DFC();
  if (!sub_1B5EA0C04(*(v0 + 128), &selRef_options))
  {
    if (!*(v0 + 144))
    {
      sub_1B5EA55E0();
    }

    v1 = *(v0 + 184);
  }

  v2 = *(v0 + 120);

  v3 = *(v0 + 176);

  v4 = sub_1B5EA2EC4();

  return v5(v4);
}

uint64_t sub_1B5E9F720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1B5EA339C();
  sub_1B5EA30E4();
  sub_1B5EA2EFC();
  sub_1B5E2CE38();
  *v13 = v12;
  v14 = v12[29];
  *v13 = *v11;
  v12[30] = v10;

  sub_1B5EA31E8();
  v16 = *(v15 + 224);
  (*(v12[21] + 8))(v12[22], v12[20]);

  if (v10)
  {
    sub_1B5EA2F84();
    sub_1B5EA3238();

    return MEMORY[0x1EEE6DFA0](v17, v18, v19);
  }

  else
  {
    v21 = v12[22];

    sub_1B5EA2EAC();
    sub_1B5EA3238();

    return v25(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }
}

uint64_t sub_1B5E9F8B0()
{
  sub_1B5E01DFC();
  v1 = *(v0 + 240);
  v2 = *(v0 + 176);

  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E9F90C()
{
  sub_1B5E01DFC();
  v1 = v0[24];
  v2 = v0[25];

  v3 = v0[15];

  v4 = v0[27];
  v5 = v0[22];

  sub_1B5E2CF4C();

  return v6();
}

void sub_1B5E9F980(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = *a6;

  v13 = sub_1B5EA5670();

  v14 = sub_1B5EA55C0();
  v16[4] = sub_1B5E902E4;
  v16[5] = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1B5EA2E68;
  v16[3] = &unk_1F2D68898;
  v15 = _Block_copy(v16);

  [a1 requestShortFormSmartRepliesWithInputContextHistory:a4 documentType:v13 options:v14 with:v15];
  _Block_release(v15);
}

uint64_t sub_1B5E9FB30(_BYTE *a1)
{
  if (*a1)
  {
    return MEMORY[0x1EEE48B90]();
  }

  else
  {
    return MEMORY[0x1EEE48B88]();
  }
}

id sub_1B5E9FB58(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B5E9FBA4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + *a3);

  v7 = *(a1 + *a4);
}

uint64_t sub_1B5E9FBEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ExternalTextCompositionClient();

  return MEMORY[0x1EEE2EE60](a1, v5, a3);
}

id sub_1B5E9FC90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v15[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v9 = sub_1B5EA55C0();
  }

  else
  {
    v9 = 0;
  }

  v15[0] = 0;
  v10 = [v5 initWithAttributedString:a1 range:a2 options:a3 error:{v9, v15}];

  if (v10)
  {
    v11 = v15[0];
  }

  else
  {
    v12 = v15[0];
    sub_1B5EA4240();

    swift_willThrow();
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

unint64_t sub_1B5E9FDEC(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B5E9FE10()
{
  sub_1B5EA37F0();
  sub_1B5EA313C(v5, v4 + 8 * (v5 >> 6));
  v7 = *(v6 + 48);
  v8 = sub_1B5EA55A0();
  sub_1B5E6384C(v8);
  result = (*(v9 + 32))(v7 + *(v9 + 72) * v3, v2);
  *(*(v0 + 56) + 8 * v3) = v1;
  v11 = *(v0 + 16);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v13;
  }

  return result;
}

uint64_t sub_1B5E9FEA0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1B5EA4340();
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

uint64_t sub_1B5E9FF58(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1B5EA313C(a1, a5 + 8 * (a1 >> 6));
  v10 = (*(v9 + 48) + 16 * v8);
  *v10 = v11;
  v10[1] = v12;
  v13 = *(v9 + 56);
  v14 = sub_1B5EA5560();
  sub_1B5E6384C(v14);
  result = (*(v15 + 32))(v13 + *(v15 + 72) * a1, a4);
  v17 = *(a5 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v19;
  }

  return result;
}

void sub_1B5E9FFEC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  sub_1B5EA313C(a1, a4 + 8 * (a1 >> 6));
  v13 = *(v12 + 48);
  v14 = sub_1B5EA4340();
  sub_1B5E6384C(v14);
  (*(v15 + 32))(v13 + *(v15 + 72) * a1, a2);
  v16 = *(a4 + 56);
  v17 = sub_1B5DF33E0(a5, a6);
  sub_1B5E6384C(v17);
  (*(v18 + 32))(v16 + *(v18 + 72) * a1, a3);
  v19 = *(a4 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v21;
    sub_1B5E601B8();
  }
}

uint64_t sub_1B5EA00C8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1B5DF33E0(&qword_1EB90ECD0, &unk_1B5EBB660);
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

_OWORD *sub_1B5EA0184(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1B5DF7148(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_1B5EA0214()
{
  sub_1B5DFD8A8();
  v2 = v1;
  v4 = v3;
  sub_1B5E1A084();
  v5 = sub_1B5EA4340();
  v6 = sub_1B5DF5DA8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1B5DFD7E8();
  v13 = v12 - v11;
  v14 = *v1;
  sub_1B5E5AF88();
  sub_1B5EA30F0(v15, v16);
  if (v19)
  {
    __break(1u);
    goto LABEL_11;
  }

  v20 = v17;
  v21 = v18;
  sub_1B5DF33E0(&qword_1EB90ED30, &qword_1B5EB7108);
  sub_1B5EA3520();
  if ((sub_1B5EA5C70() & 1) == 0)
  {
    goto LABEL_5;
  }

  v22 = *v2;
  sub_1B5E5AF88();
  if ((v21 & 1) != (v24 & 1))
  {
LABEL_11:
    sub_1B5EA5F40();
    __break(1u);
    return;
  }

  v20 = v23;
LABEL_5:
  v25 = *v2;
  if (v21)
  {
    v26 = v25[7];
    v27 = *(v26 + 8 * v20);
    *(v26 + 8 * v20) = v0;
    sub_1B5DFD8C0();
  }

  else
  {
    (*(v8 + 16))(v13, v4, v5);
    sub_1B5E9FEA0(v20, v13, v0, v25);
    sub_1B5DFD8C0();
  }
}

uint64_t sub_1B5EA0390()
{
  v1 = sub_1B5EA344C();
  sub_1B5EA30F0(v1, v2);
  if (v4)
  {
    __break(1u);
LABEL_12:
    result = sub_1B5EA5F40();
    __break(1u);
    return result;
  }

  v5 = v3;
  sub_1B5DF33E0(&qword_1EB90E608, &unk_1B5EBB5D0);
  sub_1B5EA3520();
  if (sub_1B5EA5C70())
  {
    v6 = *v0;
    sub_1B5E43768();
    sub_1B5E5AE4C();
    if ((v5 & 1) != (v7 & 1))
    {
      goto LABEL_12;
    }
  }

  if (v5)
  {
    v8 = *(*v0 + 56);
    v9 = sub_1B5EA5560();
    sub_1B5DF5EB8(v9);
    v11 = *(v10 + 40);
    sub_1B5EA3794(*(v10 + 72));
    sub_1B5E601B8();

    __asm { BRAA            X3, X16 }
  }

  sub_1B5E34F04();
  sub_1B5EA3400();
  sub_1B5E9FF58(v14, v15, v16, v17, v18);
  sub_1B5E601B8();
}

void sub_1B5EA04CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1B5DFD8A8();
  v55 = v13;
  v56 = v14;
  v15 = v12;
  v17 = v16;
  v57 = v18;
  v54 = sub_1B5EA4340();
  v19 = sub_1B5DF5DA8(v54);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1B5DFD7E8();
  v26 = v25 - v24;
  v27 = *v12;
  sub_1B5E5AF88();
  sub_1B5EA30F0(v28, v29);
  if (v32)
  {
    __break(1u);
    goto LABEL_11;
  }

  v33 = v30;
  v34 = v31;
  v35 = sub_1B5E43768();
  sub_1B5DF33E0(v35, v36);
  if ((sub_1B5EA5C70() & 1) == 0)
  {
    goto LABEL_5;
  }

  v37 = *v15;
  sub_1B5E5AF88();
  if ((v34 & 1) != (v39 & 1))
  {
LABEL_11:
    sub_1B5EA5F40();
    __break(1u);
    return;
  }

  v33 = v38;
LABEL_5:
  v40 = *v15;
  if (v34)
  {
    v41 = *(v40 + 56);
    v42 = sub_1B5DF33E0(v55, v56);
    sub_1B5DF5EB8(v42);
    v44 = *(v43 + 40);
    v45 = v41 + *(v43 + 72) * v33;
    sub_1B5DFD8C0();

    v49(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12);
  }

  else
  {
    (*(v21 + 16))(v26, v17, v54);
    sub_1B5E9FFEC(v33, v26, v57, v40, v55, v56);
    sub_1B5DFD8C0();
  }
}

uint64_t sub_1B5EA068C()
{
  v1 = sub_1B5EA344C();
  sub_1B5EA30F0(v1, v2);
  if (v4)
  {
    __break(1u);
LABEL_12:
    result = sub_1B5EA5F40();
    __break(1u);
    return result;
  }

  v5 = v3;
  sub_1B5DF33E0(&qword_1EB90ECE0, &qword_1B5EB70B8);
  sub_1B5EA3520();
  if (sub_1B5EA5C70())
  {
    v6 = *v0;
    sub_1B5E43768();
    sub_1B5E5AE4C();
    if ((v5 & 1) != (v7 & 1))
    {
      goto LABEL_12;
    }
  }

  if (v5)
  {
    v8 = *(*v0 + 56);
    v9 = sub_1B5DF33E0(&qword_1EB90ECD0, &unk_1B5EBB660);
    sub_1B5DF5EB8(v9);
    v11 = *(v10 + 40);
    sub_1B5EA3794(*(v10 + 72));
    sub_1B5E601B8();

    __asm { BRAA            X3, X16 }
  }

  sub_1B5E34F04();
  sub_1B5EA3400();
  sub_1B5EA00C8(v14, v15, v16, v17, v18);
  sub_1B5E601B8();
}

_OWORD *sub_1B5EA07B0(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1B5E5AE4C();
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  sub_1B5DF33E0(&qword_1EB90F870, &qword_1B5EBB638);
  if ((sub_1B5EA5C70() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_1B5E5AE4C();
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1B5EA5F40();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = (v16[7] + 32 * v11);
    sub_1B5DF3FB8(v17);

    return sub_1B5DF7148(a1, v17);
  }

  else
  {
    sub_1B5EA0184(v11, a2, a3, a1, v16);
  }
}

id sub_1B5EA08F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = sub_1B5EA55C0();

  v12 = [a6 inputArrayForAttributedString:a1 range:a2 options:a3 error:{v11, a5}];

  return v12;
}

uint64_t sub_1B5EA0A08(void *a1)
{
  v2 = [a1 options];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1B5EA55D0();

  return v3;
}

uint64_t sub_1B5EA0BD8()
{
  sub_1B5EA3678();
  v1 = *(v0 + 48);
  return v2();
}

uint64_t sub_1B5EA0C04(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1B5EA55D0();

  return v4;
}

unint64_t sub_1B5EA0C80()
{
  result = qword_1EB90F828;
  if (!qword_1EB90F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F828);
  }

  return result;
}

unint64_t sub_1B5EA0CD8()
{
  result = qword_1EB90F830;
  if (!qword_1EB90F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F830);
  }

  return result;
}

uint64_t sub_1B5EA0D2C(uint64_t a1, uint64_t a2)
{
  result = sub_1B5DEEE50(&qword_1ED7D2D40, a2, type metadata accessor for TextCompositionClient);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B5EA0D88()
{
  result = qword_1EB90F838;
  if (!qword_1EB90F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90F838);
  }

  return result;
}

uint64_t sub_1B5EA0DDC(uint64_t a1, uint64_t a2)
{
  result = sub_1B5DEEE50(&qword_1ED7D2D38, a2, type metadata accessor for ExternalTextCompositionClient);
  *(a1 + 8) = result;
  return result;
}

_BYTE *sub_1B5EA0E34(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t dispatch thunk of TextCompositionClient.requestCancellation(token:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1B5EA3754();
  return (*(v3 + 160))();
}

uint64_t dispatch thunk of TextCompositionClient.cancelRequest(token:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1B5EA3754();
  return (*(v3 + 168))();
}

uint64_t dispatch thunk of TextCompositionClient.requestPrewarming(for:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1B5EA3754();
  return (*(v3 + 176))();
}

uint64_t dispatch thunk of TextCompositionClient.requestPrewarmingForSmartReplies(documentType:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1B5EA3754();
  return (*(v3 + 192))();
}

uint64_t dispatch thunk of TextCompositionClient.requestPrewarmingForSmartReplies(documentType:options:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1B5EA3754();
  return (*(v3 + 200))();
}

uint64_t dispatch thunk of TextCompositionClient.actualRangeForRewritingOrReview(of:range:rewritingType:options:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1B5EA3754();
  return (*(v3 + 208))();
}

uint64_t dispatch thunk of TextCompositionClient.requestReview(of:range:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1B5EA3848();
  sub_1B5EA30E4();
  sub_1B5EA3104();
  v10 = *v9;
  v11 = *MEMORY[0x1E69E7D40];
  sub_1B5EA3754();
  v13 = *(v12 + 216);
  v27 = v12 + 216;
  v28 = v13 + *v13;
  v14 = v13[1];
  v15 = swift_task_alloc();
  v16 = sub_1B5EA3118(v15);
  *v16 = v17;
  sub_1B5EA3080(v16);
  sub_1B5EA36C4();

  return v22(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_1B5EA1184()
{
  sub_1B5E2CED8();
  sub_1B5DFA47C();
  sub_1B5E2CF58();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1B5E2CE38();
  *v4 = v3;

  v5 = *(v3 + 8);
  v6 = sub_1B5E5F940();

  return v7(v6);
}

uint64_t dispatch thunk of TextCompositionClient.requestRewriting(of:range:rewritingType:options:)()
{
  sub_1B5EA35BC();
  sub_1B5EA30E4();
  sub_1B5EA2FC4();
  v0 = *MEMORY[0x1E69E7D40];
  sub_1B5EA3754();
  v2 = *(v1 + 248);
  v16 = v1 + 248;
  v17 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = sub_1B5EA3118(v4);
  *v5 = v6;
  sub_1B5EA2F10(v5);
  sub_1B5EA34CC();

  return v12(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17);
}

void sub_1B5EA13F4()
{
  sub_1B5E34EC0();
  sub_1B5EA3104();
  sub_1B5E2CF58();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1B5E2CE38();
  *v4 = v3;

  v5 = *(v3 + 8);
  sub_1B5EA3400();
  sub_1B5E5FEF8();

  __asm { BRAA            X5, X16 }
}

uint64_t dispatch thunk of TextCompositionClient.requestRewriting(of:range:rewritingType:options:resultHandler:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1B5EA3754();
  return (*(v3 + 264))();
}

uint64_t dispatch thunk of TextCompositionClient.requestShortFormSmartResponses(with:replyToMessageID:documentType:responseTypes:contextBeforeCursor:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1B5EA382C();
  sub_1B5EA2FFC();
  v14 = *MEMORY[0x1E69E7D40];
  sub_1B5EA3754();
  v31 = (v15 + 280);
  v32 = *v31 + **v31;
  v16 = *(*(v15 + 280) + 4);
  v17 = swift_task_alloc();
  v18 = sub_1B5EA3118(v17);
  *v18 = v19;
  sub_1B5EA2F94(v18);
  sub_1B5E90AA4();

  return v28(v20, v21, v22, v23, v24, v25, v26, v27, a9, v31, v32, a12, a13, a14);
}

uint64_t dispatch thunk of TextCompositionClient.requestFollowUpForSmartAction(smartAction:inputContextHistory:documentType:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1B5EA3848();
  sub_1B5EA30E4();
  sub_1B5EA3104();
  v10 = *v9;
  v11 = *MEMORY[0x1E69E7D40];
  sub_1B5EA3754();
  v26 = (v12 + 288);
  v27 = *v26 + **v26;
  v13 = *(*(v12 + 288) + 4);
  v14 = swift_task_alloc();
  v15 = sub_1B5EA3118(v14);
  *v15 = v16;
  sub_1B5EA3080(v15);
  sub_1B5EA36C4();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26);
}

uint64_t dispatch thunk of TextCompositionClient.requestFollowUpForSmartAction(smartAction:inputContextHistory:replyToMessageID:documentType:contextBeforeCursor:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1B5EA382C();
  sub_1B5EA2FFC();
  v14 = *MEMORY[0x1E69E7D40];
  sub_1B5EA3754();
  v31 = (v15 + 296);
  v32 = *v31 + **v31;
  v16 = *(*(v15 + 296) + 4);
  v17 = swift_task_alloc();
  v18 = sub_1B5EA3118(v17);
  *v18 = v19;
  sub_1B5EA2F94(v18);
  sub_1B5E90AA4();

  return v28(v20, v21, v22, v23, v24, v25, v26, v27, a9, v31, v32, a12, a13, a14);
}

void dispatch thunk of TextCompositionClient.requestShortFormSmartReplies(with:documentType:options:)()
{
  sub_1B5E34EC0();
  sub_1B5EA32CC();
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1B5EA3754();
  v10 = *(v3 + 304) + **(v3 + 304);
  v4 = *(*(v3 + 304) + 4);
  v5 = swift_task_alloc();
  v6 = sub_1B5EA3118(v5);
  *v6 = v7;
  sub_1B5EA3130(v6);
  sub_1B5EA3300();
  sub_1B5EA38B0();

  __asm { BRAA            X3, X16 }
}

uint64_t dispatch thunk of TextCompositionClient.requestLongFormSmartReplies(with:documentType:replyType:options:)()
{
  sub_1B5EA35BC();
  sub_1B5EA30E4();
  sub_1B5EA2FC4();
  v0 = *MEMORY[0x1E69E7D40];
  sub_1B5EA3754();
  v15 = (v1 + 312);
  v16 = *v15 + **v15;
  v2 = *(*(v1 + 312) + 4);
  v3 = swift_task_alloc();
  v4 = sub_1B5EA3118(v3);
  *v4 = v5;
  sub_1B5EA2F10(v4);
  sub_1B5EA34CC();

  return v11(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
}

uint64_t dispatch thunk of TextCompositionClient.requestUserQuestionnaire(with:documentType:replyType:options:)()
{
  sub_1B5EA35BC();
  sub_1B5EA30E4();
  sub_1B5EA2FC4();
  v0 = *MEMORY[0x1E69E7D40];
  sub_1B5EA3754();
  v15 = (v1 + 320);
  v16 = *v15 + **v15;
  v2 = *(*(v1 + 320) + 4);
  v3 = swift_task_alloc();
  v4 = sub_1B5EA3118(v3);
  *v4 = v5;
  sub_1B5EA2F10(v4);
  sub_1B5EA34CC();

  return v11(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
}

uint64_t dispatch thunk of TextCompositionClient.requestLongFormSmartReplies(with:documentType:replyType:baseResponse:userFilledQuestionnaire:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1B5EA382C();
  sub_1B5EA2FFC();
  v14 = *MEMORY[0x1E69E7D40];
  sub_1B5EA3754();
  v31 = (v15 + 328);
  v32 = *v31 + **v31;
  v16 = *(*(v15 + 328) + 4);
  v17 = swift_task_alloc();
  v18 = sub_1B5EA3118(v17);
  *v18 = v19;
  sub_1B5EA2F94(v18);
  sub_1B5E90AA4();

  return v28(v20, v21, v22, v23, v24, v25, v26, v27, a9, v31, v32, a12, a13, a14);
}

uint64_t dispatch thunk of TextCompositionClient.requestEmojiSmartReplies(inputContextHistory:tapbackMessageGUIDs:documentType:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1B5EA3848();
  sub_1B5EA30E4();
  sub_1B5EA3104();
  v10 = *v9;
  v11 = *MEMORY[0x1E69E7D40];
  sub_1B5EA3754();
  v26 = (v12 + 336);
  v27 = *v26 + **v26;
  v13 = *(*(v12 + 336) + 4);
  v14 = swift_task_alloc();
  v15 = sub_1B5EA3118(v14);
  *v15 = v16;
  sub_1B5EA3080(v15);
  sub_1B5EA36C4();

  return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, v26);
}

uint64_t dispatch thunk of TextCompositionClient.requestLongFormSmartReplies(with:documentType:replyType:userFilledQuestionnaire:options:)()
{
  sub_1B5E2D114();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = *v0;
  v14 = *MEMORY[0x1E69E7D40];
  sub_1B5EA3754();
  v21 = (*(v15 + 344) + **(v15 + 344));
  v16 = *(*(v15 + 344) + 4);
  v17 = swift_task_alloc();
  v18 = sub_1B5EA3118(v17);
  *v18 = v19;
  sub_1B5EA3130(v18);

  return v21(v12, v10, v8, v6, v4, v2);
}

uint64_t dispatch thunk of TextCompositionClient.requestUserQuestionnaire(with:documentType:replyType:baseResponse:options:)()
{
  sub_1B5E2D114();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = *v0;
  v16 = *MEMORY[0x1E69E7D40];
  sub_1B5EA3754();
  v23 = (*(v17 + 352) + **(v17 + 352));
  v18 = *(*(v17 + 352) + 4);
  v19 = swift_task_alloc();
  v20 = sub_1B5EA3118(v19);
  *v20 = v21;
  sub_1B5EA3130(v20);

  return v23(v14, v12, v10, v8, v6, v4, v2);
}

uint64_t dispatch thunk of TextCompositionClient.requestBasicLongFormRepliesAndQuestionnaire(with:documentType:replyType:options:)()
{
  sub_1B5EA35BC();
  sub_1B5EA30E4();
  sub_1B5EA2FC4();
  v0 = *MEMORY[0x1E69E7D40];
  sub_1B5EA3754();
  v15 = (v1 + 360);
  v16 = *v15 + **v15;
  v2 = *(*(v1 + 360) + 4);
  v3 = swift_task_alloc();
  v4 = sub_1B5EA3118(v3);
  *v4 = v5;
  sub_1B5EA2F10(v4);
  sub_1B5EA34CC();

  return v11(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16);
}

uint64_t sub_1B5EA2268()
{
  sub_1B5E2CED8();
  sub_1B5EA32CC();
  sub_1B5E2CF58();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1B5E2CE38();
  *v4 = v3;

  v5 = *(v3 + 8);
  v6 = sub_1B5EA3300();

  return v7(v6);
}

uint64_t dispatch thunk of TextCompositionClient.requestCalendarEventFrom(fromOCRInput:inputOptions:)()
{
  sub_1B5E34EC0();
  sub_1B5DFA47C();
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1B5EA3754();
  v10 = (*(v3 + 368) + **(v3 + 368));
  v4 = *(*(v3 + 368) + 4);
  v5 = swift_task_alloc();
  v6 = sub_1B5EA3118(v5);
  *v6 = v7;
  sub_1B5EA3130(v6);
  v8 = sub_1B5E5F940();

  return v10(v8);
}

uint64_t getEnumTagSinglePayload for TextCompositionClient.RewritingType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TextCompositionClient.RewritingType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
        break;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t dispatch thunk of ExternalTextCompositionClient.cancelRequest(token:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1B5EA3754();
  return (*(v3 + 144))();
}

void dispatch thunk of ExternalTextCompositionClient.requestShortFormSmartReplies(with:documentType:options:)()
{
  sub_1B5E34EC0();
  sub_1B5EA32CC();
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1B5EA3754();
  v4 = *(v3 + 152);
  v11 = v4 + *v4;
  v5 = v4[1];
  v6 = swift_task_alloc();
  v7 = sub_1B5EA3118(v6);
  *v7 = v8;
  sub_1B5EA3130(v7);
  sub_1B5EA3300();
  sub_1B5EA38B0();

  __asm { BRAA            X3, X16 }
}

_BYTE *sub_1B5EA2774(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        break;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B5EA2850(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B5EA2868()
{
  v0 = sub_1B5EA56A0();
  v2 = v1;
  if (v0 == sub_1B5EA56A0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    sub_1B5E5F940();
    v5 = sub_1B5EA5F00();
  }

  return v5 & 1;
}

uint64_t sub_1B5EA293C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v25 = *(v0 + 56);
  v24 = *(v0 + 64);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v22 = *(v0 + 104);
  v23 = *(v0 + 72);
  v7 = *(v0 + 120);
  v8 = *(v0 + 48);
  v9 = swift_task_alloc();
  v10 = sub_1B5EA3118(v9);
  *v10 = v11;
  v10[1] = sub_1B5E2CDCC;
  sub_1B5E2D0AC();

  return sub_1B5E96D94(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1B5EA2AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7[0] = a1;
  v7[1] = a2;
  return v4(v7, a3);
}

uint64_t sub_1B5EA2AE8(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_1B5DF33E0(a1, a2);
  sub_1B5DF5DA8(v3);
  v5 = v4;
  v6 = *(v4 + 80);
  v7 = (v6 + 24) & ~v6;
  v9 = *(v8 + 64);

  (*(v5 + 8))(v2 + v7, v3);

  return MEMORY[0x1EEE6BDD0](v2, v7 + v9, v6 | 7);
}

uint64_t sub_1B5EA2BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = sub_1B5DF33E0(a6, a7);
  sub_1B5E01CF8(v14);
  v16 = *(v8 + 16);
  v17 = v8 + ((*(v15 + 80) + 24) & ~*(v15 + 80));

  return a8(a1, a2, a3, a4, a5, v16, v17);
}

uint64_t sub_1B5EA2CA8()
{
  v24 = *(v0 + 24);
  v25 = *(v0 + 16);
  v1 = *(v0 + 40);
  v23 = *(v0 + 32);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v22 = *(v0 + 72);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v8 = *(v0 + 104);
  v7 = *(v0 + 112);
  v9 = swift_task_alloc();
  v10 = sub_1B5EA3118(v9);
  *v10 = v11;
  v10[1] = sub_1B5E2C184;
  sub_1B5E2D0AC();

  return sub_1B5E95034(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1B5EA2EDC()
{

  return swift_once();
}

uint64_t sub_1B5EA2F54@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t sub_1B5EA3024(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[15];
  v4 = v2[10];
  v5 = v2[11];
  v6 = v2[9];
  return v2[8];
}

__n128 sub_1B5EA30A0(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  *(v10 + 136) = a1;
  a1[1].n128_u64[0] = v12;
  a1[1].n128_u8[8] = v9;
  result = a9;
  a1[2] = a9;
  a1[3].n128_u64[0] = v11;
  return result;
}

uint64_t sub_1B5EA30C0(uint64_t a1)
{

  return sub_1B5E92E78(a1, 1, 0, 1, 0, 1);
}

void sub_1B5EA3154(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1B5EA318C()
{
  v2 = *(v0 + 184);
  v3 = *(v0 + 88);
  v6 = *(v0 + 72);
  v4 = *(v0 + 64);

  return swift_task_alloc();
}

uint64_t sub_1B5EA31C8()
{

  return swift_beginAccess();
}

void sub_1B5EA3250()
{

  JUMPOUT(0x1B8C8B330);
}

uint64_t sub_1B5EA326C()
{

  return swift_once();
}

uint64_t sub_1B5EA328C()
{

  return swift_once();
}

uint64_t sub_1B5EA32AC()
{

  return swift_once();
}

uint64_t sub_1B5EA32DC()
{

  return sub_1B5EA5F00();
}

uint64_t sub_1B5EA3310()
{

  return swift_once();
}

uint64_t sub_1B5EA3330()
{

  return swift_once();
}

uint64_t sub_1B5EA3350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[8] = a1;

  return sub_1B5EA4560();
}

uint64_t sub_1B5EA3380()
{

  return swift_slowAlloc();
}

unint64_t sub_1B5EA344C()
{
  v2 = *v0;

  return sub_1B5E5AE4C();
}

uint64_t *sub_1B5EA347C(uint64_t a1)
{
  *(v1 + 48) = a1;

  return sub_1B5E5E724((v1 + 16));
}

uint64_t sub_1B5EA3494()
{
  *(v2 + 160) = *(v0 + v1);
}

uint64_t sub_1B5EA34B4()
{

  return sub_1B5DF3FB8((v0 + 16));
}

void sub_1B5EA3500()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
}

uint64_t sub_1B5EA3510(uint64_t result)
{
  *(v2 + 120) = result;
  *(v2 + 184) = *v1;
  return result;
}

uint64_t sub_1B5EA3540()
{

  return sub_1B5EA5710();
}

uint64_t sub_1B5EA35D4(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t sub_1B5EA3654()
{

  return sub_1B5EA5920();
}

void sub_1B5EA3678()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
}

uint64_t sub_1B5EA3688()
{

  return sub_1B5E2A07C(0, 0, v1, v0, v2);
}

uint64_t *sub_1B5EA36AC(uint64_t a1)
{
  *(v1 - 88) = a1;

  return sub_1B5E5E724((v1 - 120));
}

uint64_t sub_1B5EA36D8()
{

  return sub_1B5EA56A0();
}

uint64_t sub_1B5EA36F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{

  return sub_1B5E9EC58(&a14);
}

id sub_1B5EA370C(float a1)
{
  *v2 = a1;

  return v1;
}

BOOL sub_1B5EA3724()
{

  return os_log_type_enabled(v0, v1);
}

void sub_1B5EA373C()
{
}

uint64_t sub_1B5EA3878(uint64_t a1)
{

  return sub_1B5DF3658(v1, 1, 1, a1);
}

id XPCValue.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for XPCValue();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

void sub_1B5EA3934(void *a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x70))();
  v5 = v4;
  v6 = sub_1B5EA42C0();
  sub_1B5E24A58(v3, v5);
  v7 = sub_1B5EA5670();
  [a1 encodeObject:v6 forKey:v7];
}

id sub_1B5EA3B74(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E696A250];
  v5 = sub_1B5EA56A0();
  v7 = v6;
  sub_1B5DF33E0(&unk_1EB90F8A0, &qword_1B5EBB6C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B5EAFC20;
  v9 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1B5EA56A0();
  *(inited + 40) = v10;
  sub_1B5EA5BC0();
  MEMORY[0x1B8C8A360](0x6F662065756C6156, 0xEF222079656B2072);
  MEMORY[0x1B8C8A360](a1, a2);
  MEMORY[0x1B8C8A360](0xD000000000000031, 0x80000001B5EAAE30);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  v11 = sub_1B5EA55E0();
  v12 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  return sub_1B5EA3F9C(v5, v7, 4865, v11);
}

id XPCValue.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCValue.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XPCValue();
  return objc_msgSendSuper2(&v2, sel_init);
}

id XPCValue.__allocating_init(coder:)(void *a1)
{
  v5.receiver = objc_allocWithZone(v1);
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

id XPCValue.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XPCValue();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B5EA3F48(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

id sub_1B5EA3F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B5EA5670();

  if (a4)
  {
    v8 = sub_1B5EA55C0();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}