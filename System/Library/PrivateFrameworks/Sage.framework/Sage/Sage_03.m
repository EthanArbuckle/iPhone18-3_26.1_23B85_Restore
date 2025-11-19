uint64_t sub_1B5E2E434()
{
  sub_1B5E01DFC();
  v1[17] = v2;
  v1[18] = v0;
  v1[16] = v3;
  v4 = type metadata accessor for GenerativeExperiencesSessionClientData.Conversation(0);
  v1[19] = v4;
  sub_1B5E01C50(v4);
  v1[20] = v5;
  v7 = *(v6 + 64);
  v1[21] = sub_1B5E2D0C8();
  v8 = sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0);
  sub_1B5E01CF8(v8);
  v10 = *(v9 + 64);
  v1[22] = sub_1B5E2D0C8();
  v11 = sub_1B5EA5450();
  v1[23] = v11;
  sub_1B5E01C50(v11);
  v1[24] = v12;
  v14 = *(v13 + 64);
  v1[25] = sub_1B5E2D0C8();
  v15 = sub_1B5DF33E0(&qword_1EB90E5D8, &qword_1B5EB6038);
  sub_1B5E01CF8(v15);
  v17 = *(v16 + 64);
  v1[26] = sub_1B5E34E90();
  v1[27] = swift_task_alloc();
  v18 = sub_1B5E34D50();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

void sub_1B5E2E58C()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_position;
  v0[28] = OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_position;
  sub_1B5E2D094();
  while (1)
  {
    v4 = *(v2 + 128);
    v5 = *(v4 + 16);
    if (*(v2 + v3) >= v5 - 1)
    {
      break;
    }

    sub_1B5E34E78();
    if (v5)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 128) = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B5E34A84(v4);
        v4 = v15;
      }

      if (!*(v4 + 16))
      {
        __break(1u);
        return;
      }

      v7 = v0[27];
      v8 = *(v1 + 80);
      sub_1B5E34EF8();
      v11 = v4 + v9 + *(v1 + 72) * v10;
      *(v4 + 16) = v10;
      *(v2 + 128) = v4;
      sub_1B5E34A20(v11, v12);
      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    v14 = v0[27];
    sub_1B5DF3658(v14, v13, 1, v0[19]);
    sub_1B5DF4428(v14, &qword_1EB90E5D8, &qword_1B5EB6038);
    swift_endAccess();
  }

  swift_task_alloc();
  sub_1B5E34EEC();
  v0[29] = v16;
  *v16 = v17;
  v16[1] = sub_1B5E2E724;
  v18 = v0[25];
  v19 = v0[18];
  v20 = v0[16];

  sub_1B5E2F928();
}

uint64_t sub_1B5E2E724()
{
  sub_1B5E01DFC();
  v2 = *v1;
  sub_1B5E34F1C();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *v1;
  sub_1B5E34F1C();
  *v7 = v6;
  v2[30] = v0;

  if (v0)
  {
    v8 = v2[18];

    return MEMORY[0x1EEE6DFA0](sub_1B5E2EC78, v8, 0);
  }

  else
  {
    swift_task_alloc();
    sub_1B5E34EEC();
    v2[31] = v9;
    *v9 = v10;
    v9[1] = sub_1B5E2E888;
    v11 = v2[22];
    v12 = v2[17];
    v13 = v2[18];

    return sub_1B5E2FE80();
  }
}

uint64_t sub_1B5E2E888()
{
  v2 = *v1;
  sub_1B5E34F1C();
  *v4 = v3;
  v5 = *(v2 + 248);
  *v4 = *v1;
  *(v3 + 256) = v0;

  v6 = *(v2 + 144);
  if (v0)
  {
    v7 = sub_1B5E2ED0C;
  }

  else
  {
    v7 = sub_1B5E2E9B0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1B5E2E9B0()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 152);
  sub_1B5E2EDB8(*(*(v0 + 144) + 128), v1);
  if (sub_1B5DF46E0(v1, 1, v2) == 1)
  {
    sub_1B5DF4428(*(v0 + 208), &qword_1EB90E5D8, &qword_1B5EB6038);
    sub_1B5EA55A0();
    sub_1B5E34D28();
    sub_1B5E34900(v3, v4);
    v5 = sub_1B5EA55E0();
  }

  else
  {
    v5 = *(*(v0 + 208) + *(*(v0 + 152) + 24) + 16);

    sub_1B5E34D78();
    sub_1B5E34A98();
  }

  v7 = *(v0 + 192);
  v6 = *(v0 + 200);
  v8 = *(v0 + 176);
  v9 = *(v0 + 184);
  v31 = v9;
  v32 = *(v0 + 224);
  v10 = *(v0 + 168);
  v30 = *(v0 + 160);
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);
  type metadata accessor for GenerativeExperiencesSessionClientData(0);
  sub_1B5E2D848(v6, v5, (v0 + 16));

  (*(v7 + 16))(v10, v6, v9);
  sub_1B5E11D08(v8, v10 + *(v12 + 20), &qword_1EB90E5C0, &unk_1B5EB6EB0);
  v13 = v10 + *(v12 + 24);
  v14 = *(v0 + 16);
  v15 = *(v0 + 32);
  *(v13 + 32) = *(v0 + 48);
  *v13 = v14;
  *(v13 + 16) = v15;
  sub_1B5E34E78();
  sub_1B5E32A70(sub_1B5E6D8EC);
  v16 = *(*(v11 + 128) + 16);
  sub_1B5E32B14(v16, sub_1B5E6D8EC);
  v17 = *(v11 + 128);
  *(v17 + 16) = v16 + 1;
  sub_1B5E34D40();
  sub_1B5E34A20(v10, v17 + v18 + *(v19 + 72) * v16);
  *(v11 + 128) = v17;
  swift_endAccess();
  sub_1B5DF4428(v8, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  result = (*(v7 + 8))(v6, v31);
  v21 = *(v11 + v32);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    v24 = *(v0 + 216);
    v25 = *(v0 + 200);
    v26 = *(v0 + 208);
    v28 = *(v0 + 168);
    v27 = *(v0 + 176);
    *(*(v0 + 144) + *(v0 + 224)) = v23;

    sub_1B5E2CF4C();

    return v29();
  }

  return result;
}

uint64_t sub_1B5E2EC78()
{
  sub_1B5E34EC0();
  v1 = v0[30];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v6 = v0[21];
  v5 = v0[22];

  sub_1B5E2CF4C();

  return v7();
}

uint64_t sub_1B5E2ED0C()
{
  sub_1B5E34EC0();
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = v0[32];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v6 = v0[21];
  v5 = v0[22];

  sub_1B5E2CF4C();

  return v7();
}

uint64_t sub_1B5E2EDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = type metadata accessor for GenerativeExperiencesSessionClientData.Conversation(0);
    sub_1B5E34AEC(a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, a2, type metadata accessor for GenerativeExperiencesSessionClientData.Conversation);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = type metadata accessor for GenerativeExperiencesSessionClientData.Conversation(0);
    v7 = a2;
    v8 = 1;
  }

  return sub_1B5DF3658(v7, v8, 1, v9);
}

uint64_t sub_1B5E2EEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_1B5DF33E0(&qword_1EB90E630, &unk_1B5EB60A0);
    sub_1B5E11D08(a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, a2, &qword_1EB90E630, &unk_1B5EB60A0);
    v7 = sub_1B5E34D9C();
    v10 = v6;
  }

  else
  {
    sub_1B5DF33E0(&qword_1EB90E630, &unk_1B5EB60A0);
    sub_1B5DF5DF0();
  }

  return sub_1B5DF3658(v7, v8, v9, v10);
}

uint64_t sub_1B5E2EFB0(uint64_t a1)
{
  v3 = sub_1B5EA4EE0();
  v4 = sub_1B5DF5DA8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  sub_1B5E01CF8(v9);
  v11 = *(v10 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  sub_1B5EA5920();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v15, v16, v17, v18);
  (*(v6 + 16))(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v19 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = v1;
  (*(v6 + 32))(&v20[v19], &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  sub_1B5E2A07C(0, 0, v14, &unk_1B5EB6090, v20);
}

uint64_t sub_1B5E2F150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B5E2F170, a4, 0);
}

uint64_t sub_1B5E2F170()
{
  sub_1B5E01DFC();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_1B5E305C4();
  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E2F1C8(uint64_t a1)
{
  v3 = sub_1B5DF33E0(&qword_1EB90E590, &qword_1B5EB6080);
  sub_1B5E01CF8(v3);
  v5 = *(v4 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  sub_1B5EA5920();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v9, v10, v11, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v1;
  v13[5] = a1;

  sub_1B5E2A07C(0, 0, v8, &unk_1B5EB60C0, v13);
}

uint64_t sub_1B5E2F2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B5E2F2CC, a4, 0);
}

uint64_t sub_1B5E2F2CC()
{
  sub_1B5E01DFC();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_1B5E306D0();
  sub_1B5E2CF4C();

  return v3();
}

uint64_t sub_1B5E2F324()
{
  sub_1B5E01DFC();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0);
  sub_1B5E01CF8(v3);
  v5 = *(v4 + 64);
  v1[7] = sub_1B5E2D0C8();
  v6 = sub_1B5E34D50();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B5E2F3A8()
{
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_position;
  if (*(v1 + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_position) < 2)
  {
    if (qword_1EB90D178 != -1)
    {
      sub_1B5E34CF4();
    }

    v17 = sub_1B5EA53B0();
    sub_1B5DFD794(v17, qword_1EB90D180);
    v18 = sub_1B5EA5380();
    v19 = sub_1B5EA5A40();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = sub_1B5E34E60();
      sub_1B5E34EA8(v20);
      sub_1B5E34F28(&dword_1B5DED000, v21, v22, "Unable to perform undo operation.");
      sub_1B5E34DF0();
    }

    v23 = v0[5];

    sub_1B5EA47C0();
  }

  else
  {
    sub_1B5E31C7C();
    v4 = v3;
    v5 = v3 - 1;
    *(v1 + v2) = v3 - 1;
    result = sub_1B5E2D094();
    v7 = *(v1 + 128);
    if (v4 <= *(v7 + 16))
    {
      if (!v4)
      {
        __break(1u);
        return result;
      }

      v8 = v0[7];
      v9 = type metadata accessor for GenerativeExperiencesSessionClientData.Conversation(0);
      v10 = sub_1B5E01C50(v9);
      sub_1B5E11D08(v7 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v12 + 72) * v5 + *(v10 + 28), v8, &qword_1EB90E5C0, &unk_1B5EB6EB0);
      v13 = sub_1B5EA47C0();
      v14 = sub_1B5DF46E0(v8, 1, v13);
      v15 = v0[7];
      if (v14 != 1)
      {
        (*(*(v13 - 8) + 32))(v0[5], v0[7], v13);
        v24 = sub_1B5E34D9C();
        v27 = v13;
        goto LABEL_13;
      }

      sub_1B5DF4428(v0[7], &qword_1EB90E5C0, &unk_1B5EB6EB0);
    }

    v16 = v0[5];
    sub_1B5EA47C0();
  }

  sub_1B5DF5DF0();
LABEL_13:
  sub_1B5DF3658(v24, v25, v26, v27);
  v28 = v0[7];

  sub_1B5E2CF4C();

  return v29();
}

uint64_t sub_1B5E2F604()
{
  sub_1B5E01DFC();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0);
  sub_1B5E01CF8(v3);
  v5 = *(v4 + 64);
  v1[7] = sub_1B5E2D0C8();
  v6 = sub_1B5E34D50();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B5E2F688()
{
  v1 = v0[6];
  if (!sub_1B5E2F8D8())
  {
    if (qword_1EB90D178 == -1)
    {
LABEL_7:
      v20 = sub_1B5EA53B0();
      sub_1B5DFD794(v20, qword_1EB90D180);
      v21 = sub_1B5EA5380();
      v22 = sub_1B5EA5A40();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = sub_1B5E34E60();
        sub_1B5E34EA8(v23);
        sub_1B5E34F28(&dword_1B5DED000, v24, v25, "Unable to perform redo operation. No undo operations submitted.");
        sub_1B5E34DF0();
      }

      v26 = v0[5];

      sub_1B5EA47C0();
      sub_1B5DF5DF0();
      goto LABEL_10;
    }

LABEL_14:
    sub_1B5E34CF4();
    goto LABEL_7;
  }

  v2 = v0[6];
  v3 = OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_position;
  v4 = *(v2 + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_position);
  sub_1B5E31F74();
  sub_1B5E3229C();
  v6 = v5;
  *(v2 + v3) = v5;
  sub_1B5E2D094();
  v8 = *(v2 + 128);
  if (v6 >= *(v8 + 16))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = v0[7];
  v10 = type metadata accessor for GenerativeExperiencesSessionClientData.Conversation(0);
  v11 = sub_1B5E01C50(v10);
  sub_1B5E11D08(v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v13 + 72) * v6 + *(v11 + 28), v9, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  v14 = sub_1B5EA47C0();
  v15 = sub_1B5DF46E0(v9, 1, v14);
  v7 = v0[7];
  if (v15 == 1)
  {
LABEL_16:
    result = sub_1B5DF4428(v7, &qword_1EB90E5C0, &unk_1B5EB6EB0);
    __break(1u);
    return result;
  }

  (*(*(v14 - 8) + 32))(v0[5], v7, v14);
  v16 = sub_1B5E34D9C();
  v19 = v14;
LABEL_10:
  sub_1B5DF3658(v16, v17, v18, v19);
  v27 = v0[7];

  sub_1B5E2CF4C();

  return v28();
}

BOOL sub_1B5E2F8D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_position);
  sub_1B5E2D094();
  return v1 < *(*(v0 + 128) + 16) - 1;
}

uint64_t sub_1B5E2F928()
{
  sub_1B5E01DFC();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1B5DF33E0(&qword_1EB90E5D0, &qword_1B5EB6030);
  sub_1B5E01CF8(v3);
  v5 = *(v4 + 64);
  v0[4] = sub_1B5E2D0C8();
  v6 = sub_1B5EA55A0();
  sub_1B5E01CF8(v6);
  v8 = *(v7 + 64);
  v0[5] = sub_1B5E2D0C8();
  v9 = sub_1B5EA5520();
  v0[6] = v9;
  sub_1B5E01C50(v9);
  v0[7] = v10;
  v12 = *(v11 + 64);
  v0[8] = sub_1B5E2D0C8();
  v13 = sub_1B5EA5540();
  v0[9] = v13;
  sub_1B5E01C50(v13);
  v0[10] = v14;
  v16 = *(v15 + 64);
  v0[11] = sub_1B5E34E90();
  v0[12] = swift_task_alloc();
  v17 = sub_1B5EA5560();
  v0[13] = v17;
  sub_1B5E01C50(v17);
  v0[14] = v18;
  v20 = *(v19 + 64);
  v0[15] = sub_1B5E34E90();
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();
  v21 = sub_1B5E34D50();

  return MEMORY[0x1EEE6DFA0](v21, v22, v23);
}

uint64_t sub_1B5E2FAD4()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[3];
  sub_1B5EA5440();
  sub_1B5EA5550();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v7 = v0[17];
  v40 = v6;
  v8 = *(sub_1B5EA54E0() + 16);
  if (v8)
  {
    v9 = v0[10];
    v10 = v0[7];
    v12 = *(v9 + 16);
    v9 += 16;
    v11 = v12;
    v13 = *(v9 + 64);
    sub_1B5E34EF8();
    v42 = v14;
    v16 = v15 + v14;
    v17 = *(v9 + 56);
    v48 = (v18 + 88);
    v46 = *MEMORY[0x1E69C6338];
    v41 = (v9 + 16);
    v43 = (v18 + 8);
    v44 = (v9 - 8);
    v19 = MEMORY[0x1E69E7CC0];
    v50 = v12;
    do
    {
      v20 = v0[8];
      v21 = v0[6];
      v11(v0[12], v16, v0[9]);
      sub_1B5EA5530();
      v22 = (*v48)(v20, v21);
      v23 = v0[12];
      if (v22 == v46)
      {
        (*v44)(v0[12], v0[9]);
      }

      else
      {
        v11(v0[11], v0[12], v0[9]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = *(v19 + 16);
          sub_1B5E34E18();
          sub_1B5E6D9C4();
          v19 = v29;
        }

        v25 = *(v19 + 16);
        v24 = *(v19 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1B5E34E0C(v24);
          sub_1B5E6D9C4();
          v19 = v30;
        }

        v26 = v0[11];
        v27 = v0[9];
        (*v44)(v0[12], v27);
        *(v19 + 16) = v25 + 1;
        (*v41)(v19 + v42 + v25 * v17, v26, v27);
      }

      (*v43)(v0[8], v0[6]);
      v16 += v17;
      --v8;
      v11 = v50;
    }

    while (v8);
  }

  v31 = v0[17];
  v32 = v0[15];
  v33 = v0[13];
  v45 = v0[16];
  v47 = v0[12];
  v49 = v0[11];
  v51 = v0[8];
  v34 = v0[4];
  v35 = v0[5];
  v37 = v0[2];
  v36 = v0[3];
  sub_1B5EA5420();
  sub_1B5EA54D0();
  sub_1B5EA5430();
  sub_1B5EA53F0();
  v40(v31, v33);

  sub_1B5E2CF4C();

  return v38();
}

uint64_t sub_1B5E2FE80()
{
  sub_1B5E01DFC();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1B5EA4750();
  v0[4] = v3;
  sub_1B5E01C50(v3);
  v0[5] = v4;
  v6 = *(v5 + 64);
  v0[6] = sub_1B5E2D0C8();
  v7 = sub_1B5EA4770();
  v0[7] = v7;
  sub_1B5E01C50(v7);
  v0[8] = v8;
  v10 = *(v9 + 64);
  v0[9] = sub_1B5E34E90();
  v0[10] = swift_task_alloc();
  v11 = sub_1B5EA47B0();
  v0[11] = v11;
  sub_1B5E01C50(v11);
  v0[12] = v12;
  v14 = *(v13 + 64);
  v0[13] = sub_1B5E34E90();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v15 = sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0);
  sub_1B5E01CF8(v15);
  v17 = *(v16 + 64);
  v0[16] = sub_1B5E2D0C8();
  v18 = sub_1B5EA47C0();
  v0[17] = v18;
  sub_1B5E01C50(v18);
  v0[18] = v19;
  v21 = *(v20 + 64);
  v0[19] = sub_1B5E2D0C8();
  v22 = sub_1B5E34D50();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

void sub_1B5E30058()
{
  v1 = v0[16];
  v2 = v0[17];
  sub_1B5E11D08(v0[3], v1, &qword_1EB90E5C0, &unk_1B5EB6EB0);
  if (sub_1B5DF46E0(v1, 1, v2) == 1)
  {
    v3 = v0[17];
    v4 = v0[2];
    sub_1B5DF4428(v0[16], &qword_1EB90E5C0, &unk_1B5EB6EB0);
    sub_1B5DF5DF0();
    v8 = v3;
LABEL_26:
    sub_1B5DF3658(v5, v6, v7, v8);
    v58 = v0[19];
    v59 = v0[15];
    v60 = v0[16];
    v62 = v0[13];
    v61 = v0[14];
    v64 = v0[9];
    v63 = v0[10];
    v65 = v0[6];

    sub_1B5E2CF4C();

    v66();
    return;
  }

  (*(v0[18] + 32))(v0[19], v0[16], v0[17]);
  v9 = sub_1B5EA4700();
  v73 = *(v9 + 16);
  if (!v73)
  {
LABEL_25:

    v55 = v0[18];
    v54 = v0[19];
    v56 = v0[17];
    v57 = v0[2];
    (*(v55 + 16))(v57, v54, v56);
    sub_1B5EA4710();
    (*(v55 + 8))(v54, v56);
    v5 = v57;
    v6 = 0;
    v7 = 1;
    v8 = v56;
    goto LABEL_26;
  }

  v10 = 0;
  v11 = v0[8];
  v12 = v0[5];
  v13 = *(v0[12] + 80);
  sub_1B5E34EF8();
  v70 = v14;
  v69 = v9 + v14;
  v82 = *MEMORY[0x1E69DA548];
  v81 = (v15 + 8);
  v78 = (v15 + 32);
  v80 = (v16 + 8);
  v71 = v17;
  v67 = (v17 + 32);
  v68 = (v17 + 8);
  v18 = MEMORY[0x1E69E7CC0];
  v72 = v9;
  while (v10 < *(v9 + 16))
  {
    v77 = *(v71 + 72);
    v19 = *(v71 + 16);
    v19(v0[15], v69 + v77 * v10, v0[11]);
    v20 = *(sub_1B5EA4780() + 16);
    if (v20)
    {
      v74 = v19;
      v75 = v18;
      v76 = v10;
      sub_1B5E34D40();
      v79 = v21;
      v23 = v22 + v21;
      v25 = *(v24 + 72);
      v26 = *(v24 + 16);
      v27 = MEMORY[0x1E69E7CC0];
      do
      {
        v28 = v0[6];
        v29 = v0[4];
        v26(v0[10], v23, v0[7]);
        sub_1B5EA4760();
        v30 = sub_1B5E34ECC();
        v32 = v31(v30, v29);
        v33 = v0[10];
        if (v32 == v82)
        {
          (*v81)(v0[10], v0[7]);
        }

        else
        {
          v26(v0[9], v0[10], v0[7]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v38 = *(v27 + 16);
            sub_1B5E34E18();
            sub_1B5E6DB74();
            v27 = v39;
          }

          v35 = *(v27 + 16);
          v34 = *(v27 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_1B5E34E0C(v34);
            sub_1B5E6DB74();
            v27 = v40;
          }

          v36 = v0[9];
          v37 = v0[7];
          (*v81)(v0[10], v37);
          *(v27 + 16) = v35 + 1;
          (*v78)(v27 + v79 + v35 * v25, v36, v37);
        }

        (*v80)(v0[6], v0[4]);
        v23 += v25;
        --v20;
      }

      while (v20);

      v18 = v75;
      v10 = v76;
      v19 = v74;
    }

    else
    {
    }

    v41 = v0[14];
    v42 = v0[13];
    v43 = v0[11];
    v19(v41, v0[15], v43);
    sub_1B5EA4790();
    v19(v42, v41, v43);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = *(v18 + 16);
      sub_1B5E34E18();
      sub_1B5E6DA9C();
      v18 = v52;
    }

    v45 = *(v18 + 16);
    v44 = *(v18 + 24);
    if (v45 >= v44 >> 1)
    {
      sub_1B5E34E0C(v44);
      sub_1B5E6DA9C();
      v46 = v53;
    }

    else
    {
      v46 = v18;
    }

    ++v10;
    v47 = v0[15];
    v48 = v0[13];
    v49 = v0[11];
    v50 = *v68;
    (*v68)(v0[14], v49);
    v50(v47, v49);
    v18 = v46;
    *(v46 + 16) = v45 + 1;
    (*v67)(v46 + v70 + v45 * v77, v48, v49);
    v9 = v72;
    if (v10 == v73)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
}

uint64_t sub_1B5E305C4()
{
  sub_1B5E1A084();
  v1 = sub_1B5EA4EE0();
  v2 = sub_1B5DF5DA8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1B5DFD7F8();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  (*(v4 + 16))(v9, v0, v1);
  sub_1B5E34E78();
  sub_1B5E34F04();
  sub_1B5E32B5C();
  v11 = *(v4 + 8);
  v12 = sub_1B5E34F10();
  v13(v12);
  return swift_endAccess();
}

void sub_1B5E306D0()
{
  sub_1B5DFD8A8();
  v3 = v0;
  v5 = v4;
  v6 = sub_1B5DF33E0(&qword_1EB90E610, &qword_1B5EB6070);
  sub_1B5E01CF8(v6);
  v8 = *(v7 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5DFA50C();
  v32 = v10;
  sub_1B5E34DC8();
  v11 = sub_1B5EA4EE0();
  v12 = sub_1B5DF5DA8(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1B5DFD7F8();
  sub_1B5E34E28();
  MEMORY[0x1EEE9AC00](v15);
  sub_1B5E34E38();
  v35 = *(v5 + 16);
  if (v35)
  {
    v17 = v16;
    v18 = *(v16 + 80);
    sub_1B5E34D90();
    v34 = v5 + v19;
    sub_1B5E34DAC();
    v20 = 0;
    v38 = *(v17 + 16);
    v21 = (v17 + 8);
    v37 = *(v17 + 72);
    v33 = v3;
    do
    {
      v38(v2, v34 + v37 * v20, v11);
      v22 = *(v3 + 136);
      if (*(v22 + 16))
      {
        v36 = v20;
        v23 = *(v22 + 40);
        sub_1B5E34CDC();
        sub_1B5E34900(&qword_1EB90DBA8, v24);

        v25 = sub_1B5EA55F0();
        v26 = ~(-1 << *(v22 + 32));
        while (1)
        {
          v27 = v25 & v26;
          if (((*(v22 + 56 + (((v25 & v26) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v25 & v26)) & 1) == 0)
          {
            break;
          }

          v38(v1, *(v22 + 48) + v27 * v37, v11);
          sub_1B5E34CDC();
          sub_1B5E34900(&qword_1EB90E618, v28);
          v29 = sub_1B5EA5660();
          v30 = *v21;
          v31 = sub_1B5E34F04();
          (v30)(v31);
          v25 = v27 + 1;
          if (v29)
          {

            v3 = v33;
            sub_1B5E34E78();
            sub_1B5E34310(v2, v32);
            sub_1B5DF4428(v32, &qword_1EB90E610, &qword_1B5EB6070);
            swift_endAccess();
            v30(v2, v11);
            v20 = v36;
            goto LABEL_10;
          }
        }

        v3 = v33;
        v20 = v36;
      }

      (*v21)(v2, v11);
LABEL_10:
      ++v20;
    }

    while (v20 != v35);
  }

  sub_1B5DFD8C0();
}

void sub_1B5E309CC()
{
  sub_1B5DFD8A8();
  v87 = v2;
  sub_1B5E1A084();
  v78 = sub_1B5EA5560();
  v3 = sub_1B5DF5DA8(v78);
  v85 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1B5E34D14();
  v90 = v7;
  sub_1B5E34DC8();
  v8 = sub_1B5EA5450();
  v9 = sub_1B5DF5DA8(v8);
  v86 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5DFD7E8();
  v15 = v14 - v13;
  v89 = type metadata accessor for GenerativeExperiencesSessionClientData.Conversation(0);
  v16 = sub_1B5DF5DA8(v89);
  v84 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1B5DFD7E8();
  v22 = v21 - v20;
  v88 = sub_1B5DF33E0(&unk_1EB90E970, &unk_1B5EB66C0);
  sub_1B5DF5DA8(v88);
  v24 = v23;
  v26 = *(v25 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v27);
  v29 = (v76 - v28);
  v30 = sub_1B5DF33E0(&qword_1EB90E600, &unk_1B5EB6060);
  sub_1B5E01CF8(v30);
  v32 = *(v31 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v33);
  sub_1B5DFA50C();
  v80 = v34;
  sub_1B5E2D094();
  v35 = *(v1 + 128);
  v36 = *(v35 + 16);
  v83 = v8;
  if (v36)
  {
    v81 = v0;
    v82 = v15;
    v91 = MEMORY[0x1E69E7CC0];

    sub_1B5E5BEDC(0, v36, 0);
    v37 = v91;
    sub_1B5E34D40();
    v79 = v35;
    v39 = v35 + v38;
    v41 = *(v40 + 72);
    do
    {
      sub_1B5E34AEC(v39, v22, type metadata accessor for GenerativeExperiencesSessionClientData.Conversation);
      v42 = *(v88 + 12);
      v43 = v22 + *(v89 + 24);
      v44 = *(v43 + 32);
      *v29 = *(v43 + 24);
      v29[1] = v44;

      sub_1B5EA5440();
      sub_1B5E34A98();
      v91 = v37;
      v46 = *(v37 + 16);
      v45 = *(v37 + 24);
      if (v46 >= v45 >> 1)
      {
        v49 = sub_1B5E34E0C(v45);
        sub_1B5E5BEDC(v49, v46 + 1, 1);
        v37 = v91;
      }

      *(v37 + 16) = v46 + 1;
      v47 = *(v24 + 80);
      sub_1B5E34D90();
      sub_1B5E34890(v29, v37 + v48 + *(v24 + 72) * v46);
      v39 += v41;
      --v36;
    }

    while (v36);

    v15 = v82;
    v8 = v83;
  }

  v50 = sub_1B5E35354();
  v51 = sub_1B5EA5460();
  v52 = 0;
  v84 = *(v51 + 16);
  v79 = (v86 + 32);
  v81 = (v86 + 8);
  v82 = v86 + 16;
  v76[1] = v85 + 40;
  v76[2] = v85 + 32;
  v53 = (v87 + 64);
  for (i = v51; ; v51 = i)
  {
    if (v84 == v52)
    {

LABEL_23:
      sub_1B5DFD8C0();
      return;
    }

    if (v52 >= *(v51 + 16))
    {
      break;
    }

    sub_1B5E34D40();
    (*(v55 + 16))(v15, v51 + v54 + *(v55 + 72) * v52, v8);
    v56 = *(v87 + 16);
    if (v52 == v56)
    {

      (*v81)(v15, v8);
      goto LABEL_23;
    }

    if (v52 >= v56)
    {
      goto LABEL_25;
    }

    v88 = v53;
    v89 = v52;
    v57 = *(v53 - 3);
    v58 = *(v53 - 2);
    v60 = *(v53 - 1);
    v59 = *v53;
    v61 = v80;
    (*v79)(v80, v15, v8);

    sub_1B5EA5440();
    (*v81)(v61, v8);
    swift_isUniquelyReferenced_nonNull_native();
    v91 = v50;
    v62 = sub_1B5E5AE4C();
    if (__OFADD__(*(v50 + 16), (v63 & 1) == 0))
    {
      goto LABEL_26;
    }

    v64 = v62;
    v65 = v63;
    sub_1B5DF33E0(&qword_1EB90E608, &unk_1B5EBB5D0);
    if (sub_1B5EA5C70())
    {
      v66 = sub_1B5E5AE4C();
      if ((v65 & 1) != (v67 & 1))
      {
        goto LABEL_28;
      }

      v64 = v66;
    }

    v50 = v91;
    if (v65)
    {
      v68 = sub_1B5E34ED8();
      (*(v69 + 40))(v68, v90, v78);
    }

    else
    {
      *(v91 + 8 * (v64 >> 6) + 64) |= 1 << v64;
      v70 = (*(v50 + 48) + 16 * v64);
      *v70 = v60;
      v70[1] = v59;
      v71 = sub_1B5E34ED8();
      (*(v72 + 32))(v71, v90, v78);

      v73 = *(v50 + 16);
      v74 = __OFADD__(v73, 1);
      v75 = v73 + 1;
      if (v74)
      {
        goto LABEL_27;
      }

      *(v50 + 16) = v75;
    }

    v53 = v88 + 5;
    v52 = v89 + 1;
    v8 = v83;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  sub_1B5EA5F40();
  __break(1u);
}

void sub_1B5E30FD0()
{
  sub_1B5DFD8A8();
  v2 = v0;
  v141 = v3;
  v140 = v4;
  v151 = v5;
  v147 = v6;
  v132 = sub_1B5EA5560();
  v7 = sub_1B5DF5DA8(v132);
  v130 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B5DFD7F8();
  v131 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v133 = &v129 - v14;
  v15 = sub_1B5DF33E0(&qword_1EB90E5C8, &qword_1B5EB6028);
  sub_1B5E01CF8(v15);
  v17 = *(v16 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v18);
  sub_1B5DFA50C();
  v139 = v19;
  sub_1B5E34DC8();
  v146 = sub_1B5EA4E40();
  v20 = sub_1B5DF5DA8(v146);
  v145 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1B5E34D14();
  v144 = v24;
  v25 = sub_1B5DF33E0(&qword_1EB90E5D0, &qword_1B5EB6030);
  sub_1B5E01CF8(v25);
  v27 = *(v26 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v28);
  sub_1B5DFA50C();
  v136 = v29;
  sub_1B5E34DC8();
  v138 = sub_1B5EA4B10();
  v30 = sub_1B5DF5DA8(v138);
  v137 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1B5E34D14();
  v135 = v34;
  v35 = sub_1B5E34DC8();
  v149 = type metadata accessor for GenerativeExperiencesSessionClientData.Conversation(v35);
  v36 = sub_1B5DF5DA8(v149);
  v134 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1B5E34D14();
  v152 = v40;
  v41 = sub_1B5DF33E0(&qword_1EB90E5D8, &qword_1B5EB6038);
  sub_1B5E01CF8(v41);
  v43 = *(v42 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v129 - v45;
  v47 = sub_1B5DF33E0(&qword_1EB90E5E0, &qword_1B5EB6040);
  sub_1B5E01CF8(v47);
  v49 = *(v48 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v129 - v51;
  v53 = sub_1B5EA42B0();
  v54 = sub_1B5DF5DA8(v53);
  v56 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v54);
  sub_1B5DFD7F8();
  sub_1B5E34E28();
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v129 - v60;
  v62 = v0 + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_configuration;
  v63 = &v62[*(type metadata accessor for SessionConfiguration() + 20)];
  v64 = sub_1B5EA48D0();
  sub_1B5E10A64(v64, v52);

  v65 = sub_1B5EA4660();
  if (sub_1B5DF46E0(v52, 1, v65) == 1)
  {
    sub_1B5DF4428(v52, &qword_1EB90E5E0, &qword_1B5EB6040);
    sub_1B5EA5CA0();
    __break(1u);
  }

  else
  {
    sub_1B5EA4640();
    (*(*(v65 - 8) + 8))(v52, v65);
    v66 = *(v56 + 32);
    v143 = v53;
    v66(v61, v1, v53);
    sub_1B5E2D094();
    sub_1B5E2EDB8(v2[16], v46);
    v67 = v149;
    v68 = sub_1B5DF46E0(v46, 1, v149);
    v150 = v61;
    if (v68 == 1)
    {
      sub_1B5DF4428(v46, &qword_1EB90E5D8, &qword_1B5EB6038);
      sub_1B5EA55A0();
      sub_1B5E34D28();
      sub_1B5E34900(v69, v70);
      v71 = sub_1B5EA55E0();
    }

    else
    {
      v71 = *&v46[*(v67 + 24) + 16];

      sub_1B5E34D78();
      sub_1B5E34A98();
    }

    v142 = v56;
    v72 = sub_1B5EA5460();
    v73 = *(v72 + 16);
    v148 = v2;
    if (v73)
    {
      v155 = MEMORY[0x1E69E7CC0];
      sub_1B5E5BEFC(0, v73, 0);
      v74 = v155;
      v75 = *(sub_1B5EA5450() - 8);
      v76 = *(v75 + 80);
      sub_1B5E34D90();
      v78 = v72 + v77;
      type metadata accessor for GenerativeExperiencesSessionClientData(0);
      v79 = *(v75 + 72);
      v80 = v71;
      do
      {

        sub_1B5E2D848(v78, v80, &v157);

        v80 = v158;

        v155 = v74;
        v82 = *(v74 + 16);
        v81 = *(v74 + 24);
        if (v82 >= v81 >> 1)
        {
          v86 = sub_1B5E34E0C(v81);
          sub_1B5E5BEFC(v86, v82 + 1, 1);
          v74 = v155;
        }

        *(v74 + 16) = v82 + 1;
        v83 = v74 + 40 * v82;
        v84 = v157;
        v85 = v158;
        *(v83 + 64) = v159;
        *(v83 + 32) = v84;
        *(v83 + 48) = v85;
        v78 += v79;
        --v73;
      }

      while (v73);

      v2 = v148;
      v67 = v149;
    }

    else
    {

      v74 = MEMORY[0x1E69E7CC0];
      v80 = v71;
    }

    v149 = v80;
    v87 = *(v2[16] + 16);
    v88 = v152;
    if (v87)
    {
      v89 = (v152 + *(v67 + 24));
      sub_1B5E34D40();
      v92 = v90 + v91;
      v94 = *(v93 + 72);
      v134 = v90;

      v95 = 0;
      v96 = 0xE000000000000000;
      do
      {
        v2 = type metadata accessor for GenerativeExperiencesSessionClientData.Conversation;
        sub_1B5E34AEC(v92, v88, type metadata accessor for GenerativeExperiencesSessionClientData.Conversation);
        v97 = *v89;
        v98 = v89[1];
        v155 = v95;
        v156 = v96;

        v99 = v97;
        v88 = v152;
        MEMORY[0x1B8C8A360](v99, v98);

        v95 = v155;
        v96 = v156;
        sub_1B5E34A98();
        v92 += v94;
        --v87;
      }

      while (v87);
    }

    else
    {
      v95 = 0;
      v96 = 0xE000000000000000;
    }

    v100 = 0;
    v101 = 0;
    v155 = v95;
    v156 = v96;
    v102 = (v74 + 64);
    v103 = 0xE000000000000000;
    v104 = *(v74 + 16);
    while (v104 != v100)
    {
      if (v100 >= *(v74 + 16))
      {
        __break(1u);
        sub_1B5E34CF4();
        v123 = sub_1B5EA53B0();
        sub_1B5DFD794(v123, qword_1EB90D180);
        v124 = sub_1B5EA5380();
        v125 = sub_1B5EA5A40();
        v126 = os_log_type_enabled(v124, v125);
        v127 = v143;
        if (v126)
        {
          v128 = sub_1B5E34E60();
          *v128 = 0;
          _os_log_impl(&dword_1B5DED000, v124, v125, "Failed to encode variable bindings for inclusion in template", v128, 2u);
          MEMORY[0x1B8C8B330](v128, -1, -1);
        }

        goto LABEL_28;
      }

      ++v100;
      v2 = *v102;
      v106 = *(v102 - 3);
      v105 = *(v102 - 2);
      v87 = *(v102 - 4);
      v153 = v101;
      v154 = v103;

      MEMORY[0x1B8C8A360](v87, v106);

      v101 = v153;
      v103 = v154;
      v102 += 5;
    }

    MEMORY[0x1B8C8A360](v101, v103);

    v153 = 0;
    v154 = 0xE000000000000000;
    sub_1B5EA5BC0();

    v153 = 0xD000000000000010;
    v154 = 0x80000001B5EA90F0;
    sub_1B5EA4360();
    v107 = v136;
    sub_1B5DF5DF0();
    sub_1B5DF3658(v108, v109, v110, v111);
    v112 = v135;
    sub_1B5EA4B00();
    sub_1B5DF4428(v107, &qword_1EB90E5D0, &qword_1B5EB6030);
    v113 = sub_1B5EA4AB0();
    v115 = v114;
    (*(v137 + 8))(v112, v138);
    MEMORY[0x1B8C8A360](v113, v115);

    MEMORY[0x1B8C8A360](8224032, 0xE300000000000000);
    MEMORY[0x1B8C8A360](v153, v154);

    sub_1B5EA4250();
    sub_1B5EA4390();
    sub_1B5E34900(&qword_1EB90E5E8, MEMORY[0x1E69B2540]);
    sub_1B5DFA488();
    sub_1B5EA4380();
    sub_1B5DF33E0(&qword_1EB90E5F0, &qword_1B5EB6048);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B5EAFC20;
    v117 = v141;
    *(inited + 32) = v140;
    *(inited + 40) = v117;
    v118 = v156;
    *(inited + 48) = v155;
    *(inited + 56) = v118;
    swift_bridgeObjectRetain_n();
    sub_1B5EA55E0();
    v102 = v144;
    sub_1B5EA4E30();
    v119 = v148;
    sub_1B5E309CC();
    v121 = v120;

    if (*(*(v119 + OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_instructionsTemplateVariableBindings) + 16))
    {

      sub_1B5EA4D50();
      v122 = v133;
      sub_1B5EA51D0();
      sub_1B5E34DD4();

      (*(v130 + 32))(v131, v122, v132);
      swift_isUniquelyReferenced_nonNull_native();
      v153 = v121;
      sub_1B5EA0390();
    }

    else
    {
      sub_1B5E34DD4();
    }

    v127 = v143;
LABEL_28:
    (*(v142 + 8))(v150, v127);
    (*(v104 + 32))(v87, v102, v100);

    sub_1B5E34EB4();
    sub_1B5DFD8C0();
  }
}

void sub_1B5E31C7C()
{
  sub_1B5DFD8A8();
  v4 = v3;
  v39 = sub_1B5EA55A0();
  v5 = sub_1B5DF5DA8(v39);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DFD7F8();
  sub_1B5E34E28();
  MEMORY[0x1EEE9AC00](v10);
  sub_1B5E34E38();
  v38 = sub_1B5EA5450();
  v11 = sub_1B5DF5DA8(v38);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1B5DFD7E8();
  sub_1B5E34DAC();
  v40 = 0;
  v37 = *MEMORY[0x1E69C63E0];
  v14 = (v7 + 104);
  v15 = (v7 + 8);
  do
  {
    v16 = v4;
    v17 = v4 == 1;
    if (v4-- <= 1)
    {
      v19 = !v17;
      if ((v19 | v40))
      {
        goto LABEL_13;
      }

      v40 = 1;
      v4 = 1;
    }

    v20 = *(v0 + 128);
    if (v16 >= *(v20 + 16))
    {
      __break(1u);
LABEL_13:
      if (qword_1EB90D178 != -1)
      {
        goto LABEL_17;
      }

      while (1)
      {
        v31 = sub_1B5EA53B0();
        sub_1B5DFD794(v31, qword_1EB90D180);
        v32 = sub_1B5EA5380();
        v33 = sub_1B5EA5A50();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = sub_1B5E34E60();
          sub_1B5E34EA8(v34);
          sub_1B5E34F48(&dword_1B5DED000, v35, v36, "Invalid prompt configuration. Unable to find previous user message.");
          sub_1B5E34DF0();
        }

        __break(1u);
LABEL_17:
        sub_1B5E34CF4();
      }
    }

    v21 = type metadata accessor for GenerativeExperiencesSessionClientData.Conversation(0);
    sub_1B5E01C50(v21);
    v24 = v20 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v23 + 72) * v16;
    v25 = sub_1B5E34ECC();
    v26(v25);
    sub_1B5EA5420();
    v27 = sub_1B5E34ECC();
    v28(v27, v38);
    (*v14)(v1, v37, v39);
    v29 = sub_1B5EA5590();
    v30 = *v15;
    (*v15)(v1, v39);
    v30(v2, v39);
  }

  while ((v29 & 1) == 0);
  sub_1B5DFD8C0();
}

void sub_1B5E31F74()
{
  sub_1B5DFD8A8();
  sub_1B5E1A084();
  v39 = sub_1B5EA55A0();
  v3 = sub_1B5DF5DA8(v39);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1B5DFD7F8();
  v37 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1B5E34E38();
  v38 = sub_1B5EA5450();
  v11 = sub_1B5DF5DA8(v38);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1B5DFD7E8();
  v18 = v17 - v16;
  v19 = v0 + 1;
  if (__OFADD__(v0, 1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1B5E34DAC();
  v20 = *(*(v1 + 128) + 16);
  if (v20 < v19)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    if (qword_1EB90D178 != -1)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v30 = sub_1B5EA53B0();
      sub_1B5DFD794(v30, qword_1EB90D180);
      v31 = sub_1B5EA5380();
      v32 = sub_1B5EA5A50();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = sub_1B5E34E60();
        sub_1B5E34EA8(v33);
        sub_1B5E34F48(&dword_1B5DED000, v34, v35, "Invalid prompt configuration. Unable to find next user message.");
        sub_1B5E34DF0();
      }

      __break(1u);
LABEL_17:
      sub_1B5E34CF4();
    }
  }

  v36 = *MEMORY[0x1E69C63E0];
  v21 = (v5 + 8);
  v40 = v20 - 1;
  do
  {
    if (v40 == v0)
    {
      goto LABEL_13;
    }

    if (v19 < 0)
    {
      __break(1u);
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    v22 = *(v1 + 128);
    if ((v0 + 1) >= *(v22 + 16))
    {
      goto LABEL_10;
    }

    v23 = type metadata accessor for GenerativeExperiencesSessionClientData.Conversation(0);
    sub_1B5E01C50(v23);
    (*(v13 + 16))(v18, v22 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v25 + 72) * (v0 + 1), v38);
    sub_1B5EA5420();
    (*(v13 + 8))(v18, v38);
    v26 = sub_1B5E34ECC();
    v27(v26, v36, v39);
    v28 = sub_1B5EA5590();
    v29 = *v21;
    (*v21)(v37, v39);
    v29(v2, v39);
    ++v0;
  }

  while ((v28 & 1) == 0);
  sub_1B5E34EB4();
  sub_1B5DFD8C0();
}

void sub_1B5E3229C()
{
  sub_1B5DFD8A8();
  v1 = v0;
  v3 = v2;
  v4 = sub_1B5EA55A0();
  v5 = sub_1B5DF5DA8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DFD7F8();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v44 = sub_1B5EA5450();
  v14 = sub_1B5DF5DA8(v44);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1B5DFD7E8();
  v21 = v20 - v19;
  sub_1B5E34DAC();
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = *(v1 + 128);
  if (*(v22 + 16) <= v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v23 = type metadata accessor for GenerativeExperiencesSessionClientData.Conversation(0);
  sub_1B5E01C50(v23);
  v37 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v43 = *(v25 + 72);
  v41 = *(v16 + 16);
  v41(v21, v22 + v37 + v43 * v3, v44);
  sub_1B5EA5420();
  v40 = *(v16 + 8);
  v40(v21, v44);
  v39 = *MEMORY[0x1E69C63E0];
  v38 = *(v7 + 104);
  v38(v12);
  sub_1B5E34F04();
  v26 = sub_1B5EA5590();
  v27 = *(v7 + 8);
  v27(v12, v4);
  v28 = sub_1B5E34F10();
  (v27)(v28);
  if ((v26 & 1) == 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v29 = v3;
  v30 = *(*(v1 + 128) + 16);
  if (v30 > v29)
  {
    v42 = v1;
    v31 = v29 + 1;
    v32 = v37 + v43 * (v29 + 1);
    while (1)
    {
      if (v30 == v31)
      {
        v36 = *(*(v42 + 128) + 16) - 1;
LABEL_12:
        sub_1B5DFD8C0();
        return;
      }

      if (v31 >= v30)
      {
        break;
      }

      v33 = *(v42 + 128);
      if (v31 >= *(v33 + 16))
      {
        goto LABEL_14;
      }

      v41(v21, v33 + v32, v44);
      sub_1B5EA5420();
      v40(v21, v44);
      (v38)(v12, v39, v4);
      sub_1B5E34F04();
      v34 = sub_1B5EA5590();
      v27(v12, v4);
      v35 = sub_1B5E34F10();
      (v27)(v35);
      ++v31;
      v32 += v43;
      if (v34)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_18:
  __break(1u);
}

char *sub_1B5E32610()
{
  v1 = *(v0 + 15);

  v2 = *(v0 + 16);

  v3 = *(v0 + 17);

  v4 = OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_toolChoice;
  v5 = sub_1B5EA5160();
  sub_1B5DF5EB8(v5);
  (*(v6 + 8))(&v0[v4]);
  v7 = *&v0[OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_tools];

  v8 = *&v0[OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_instructionsTemplateVariableBindings];

  sub_1B5E34D60();
  sub_1B5E34A98();
  v9 = *&v0[OBJC_IVAR____TtC4Sage38GenerativeExperiencesSessionClientData_identifier + 8];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1B5E326D0()
{
  sub_1B5E32610();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B5E32724()
{
  result = sub_1B5EA5160();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for SessionConfiguration();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1B5E32870()
{
  sub_1B5EA5450();
  if (v0 <= 0x3F)
  {
    sub_1B5E328FC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B5E328FC()
{
  if (!qword_1EB90D1A8)
  {
    sub_1B5EA47C0();
    v0 = sub_1B5EA5AD0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB90D1A8);
    }
  }
}

__n128 sub_1B5E32954(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B5E32968(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1B5E329A8(uint64_t result, int a2, int a3)
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

uint64_t sub_1B5E32A70(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1B5E32B14(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_1B5E32B5C()
{
  sub_1B5DFD8A8();
  v2 = v1;
  v28 = v3;
  v4 = sub_1B5EA4EE0();
  v5 = sub_1B5DF5DA8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DFD7E8();
  v12 = v11 - v10;
  v27 = v0;
  v13 = *v0;
  v14 = *(*v0 + 40);
  sub_1B5E34CDC();
  sub_1B5E34900(v15, v16);
  v17 = sub_1B5EA55F0();
  v29 = v13;
  v30 = v13 + 56;
  v18 = ~(-1 << *(v13 + 32));
  while (1)
  {
    v19 = v17 & v18;
    if (((1 << (v17 & v18)) & *(v30 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v25 = *v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      (*(v7 + 16))(v12, v2, v4);
      v31 = *v27;
      sub_1B5E334DC(v12, v19, isUniquelyReferenced_nonNull_native);
      *v27 = v31;
      (*(v7 + 32))(v28, v2, v4);
      goto LABEL_7;
    }

    v20 = *(v7 + 72) * v19;
    v21 = *(v7 + 16);
    v21(v12, *(v29 + 48) + v20, v4);
    sub_1B5E34CDC();
    sub_1B5E34900(&qword_1EB90E618, v22);
    v23 = sub_1B5EA5660();
    v24 = *(v7 + 8);
    v24(v12, v4);
    if (v23)
    {
      break;
    }

    v17 = v19 + 1;
  }

  v24(v2, v4);
  v21(v28, *(v29 + 48) + v20, v4);
LABEL_7:
  sub_1B5DFD8C0();
}

BOOL sub_1B5E32DE0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1B5EA5FD0();
  sub_1B5EA5710();
  v9 = sub_1B5EA6020();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_1B5EA5F00() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v3;

  v19 = sub_1B5E34F10();
  sub_1B5E33768(v19, v20, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v22;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_1B5E32F28(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1B5EA4EE0();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1B5DF33E0(&qword_1EB90E620, &qword_1B5EB6078);
  result = sub_1B5EA5B80();
  v10 = result;
  if (!*(v7 + 16))
  {
LABEL_29:

    *v2 = v10;
    return result;
  }

  v35 = v2;
  v36 = v7;
  v11 = 0;
  v12 = (v7 + 56);
  v13 = 1 << *(v7 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v7 + 56);
  v16 = (v13 + 63) >> 6;
  v39 = v4 + 4;
  v17 = result + 56;
  if (!v15)
  {
LABEL_9:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      sub_1B5E41824(0, (v33 + 63) >> 6, v12);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_14:
    v21 = *(v7 + 48) + v4[9] * (v18 | (v11 << 6));
    v22 = v4[4];
    v37 = v4[9];
    v38 = v22;
    v22(v40, v21, v41);
    v23 = v10;
    v24 = *(v10 + 40);
    sub_1B5E34900(&qword_1EB90DBA8, MEMORY[0x1E69C6178]);
    result = sub_1B5EA55F0();
    v10 = v23;
    v25 = -1 << *(v23 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    result = v38(*(v23 + 48) + v28 * v37, v40, v41);
    ++*(v23 + 16);
    v7 = v36;
    if (!v15)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1B5E33280(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1B5DF33E0(&qword_1EB90E628, &qword_1B5EB7650);
  result = sub_1B5EA5B80();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

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
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_1B5E41824(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_1B5EA5FD0();
    sub_1B5EA5710();
    result = sub_1B5EA6020();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1B5E334DC(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_1B5EA4EE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1B5E32F28(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1B5E33C5C(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_1B5E34900(&qword_1EB90DBA8, MEMORY[0x1E69C6178]);
      v15 = sub_1B5EA55F0();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1B5E34900(&qword_1EB90E618, MEMORY[0x1E69C6178]);
        v17 = sub_1B5EA5660();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_1B5E338D0();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_1B5EA5F30();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t sub_1B5E33768(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1B5E33280(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1B5E33F74(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_1B5EA5FD0();
      sub_1B5EA5710();
      result = sub_1B5EA6020();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_1B5EA5F00() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1B5E33B04();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1B5EA5F30();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_1B5E338D0()
{
  v1 = v0;
  v2 = sub_1B5EA4EE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B5DF33E0(&qword_1EB90E620, &qword_1B5EB6078);
  v7 = *v0;
  v8 = sub_1B5EA5B70();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

void *sub_1B5E33B04()
{
  v1 = v0;
  sub_1B5DF33E0(&qword_1EB90E628, &qword_1B5EB7650);
  v2 = *v0;
  v3 = sub_1B5EA5B70();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
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

uint64_t sub_1B5E33C5C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1B5EA4EE0();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1B5DF33E0(&qword_1EB90E620, &qword_1B5EB6078);
  v10 = sub_1B5EA5B80();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v22 = *(v36 + 72);
        (*(v36 + 16))(v7, *(result + 48) + v22 * (v19 | (v12 << 6)), v37);
        v23 = *(v10 + 40);
        sub_1B5E34900(&qword_1EB90DBA8, MEMORY[0x1E69C6178]);
        result = sub_1B5EA55F0();
        v24 = -1 << *(v10 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v18 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v18 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v18 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        (*v33)(*(v10 + 48) + v27 * v22, v7, v37);
        ++*(v10 + 16);
        result = v34;
        if (!v16)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v18 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          v2 = v32;
          goto LABEL_27;
        }

        v21 = *(v13 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1B5E33F74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1B5DF33E0(&qword_1EB90E628, &qword_1B5EB7650);
  result = sub_1B5EA5B80();
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_1B5EA5FD0();

        sub_1B5EA5710();
        result = sub_1B5EA6020();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B5E341A8(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1B5E342A8(result);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_1B5EA5450();
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1B5E342A8(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) > a1)
    {
      v5 = *(v3 + 16);
    }

    sub_1B5E6D814();
    *v1 = v6;
  }
}

uint64_t sub_1B5E34310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1B5EA4EE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_1B5E34900(&qword_1EB90DBA8, MEMORY[0x1E69C6178]);
  v28 = a1;
  v11 = sub_1B5EA55F0();
  v27 = v9;
  v12 = ~(-1 << *(v9 + 32));
  while (1)
  {
    v13 = v11 & v12;
    if (((*(v9 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
    {
      v16 = 1;
      v17 = v26;
      return sub_1B5DF3658(v17, v16, 1, v4);
    }

    v14 = *(v5 + 72) * v13;
    (*(v5 + 16))(v8, *(v27 + 48) + v14, v4);
    sub_1B5E34900(&qword_1EB90E618, MEMORY[0x1E69C6178]);
    v15 = sub_1B5EA5660();
    (*(v5 + 8))(v8, v4);
    if (v15)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18 = v25;
  v19 = *v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v18;
  v29 = *v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1B5E338D0();
    v21 = v29;
  }

  v22 = *(v21 + 48) + v14;
  v17 = v26;
  (*(v5 + 32))(v26, v22, v4);
  sub_1B5E34584(v13);
  v16 = 0;
  *v18 = v29;
  return sub_1B5DF3658(v17, v16, 1, v4);
}

uint64_t sub_1B5E34584(int64_t a1)
{
  v3 = sub_1B5EA4EE0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v3);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_1B5EA5B20();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v40 = (v15 + 1) & v13;
      v17 = *(v4 + 16);
      v16 = v4 + 16;
      v39 = v17;
      v18 = *(v16 + 56);
      v41 = v16;
      v42 = v18;
      v19 = v13;
      v20 = (v16 - 8);
      v21 = v9;
      while (1)
      {
        v22 = v10;
        v23 = v42 * v12;
        v24 = v19;
        v39(v8, *(v21 + 48) + v42 * v12, v3);
        v25 = v21;
        v26 = *(v21 + 40);
        sub_1B5E34900(&qword_1EB90DBA8, MEMORY[0x1E69C6178]);
        v27 = sub_1B5EA55F0();
        (*v20)(v8, v3);
        v19 = v24;
        v28 = v27 & v24;
        if (a1 >= v40)
        {
          if (v28 < v40 || a1 < v28)
          {
LABEL_20:
            v21 = v25;
            goto LABEL_24;
          }
        }

        else if (v28 < v40 && a1 < v28)
        {
          goto LABEL_20;
        }

        v21 = v25;
        v30 = *(v25 + 48);
        v31 = v42 * a1;
        v32 = v30 + v42 * a1;
        v33 = v30 + v23 + v42;
        if (v42 * a1 < v23 || v32 >= v33)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_23:
          v19 = v24;
          a1 = v12;
          goto LABEL_24;
        }

        a1 = v12;
        if (v31 != v23)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_23;
        }

LABEL_24:
        v12 = (v12 + 1) & v19;
        v10 = v22;
        if (((*(v22 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v21 = v9;
LABEL_28:
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v21 = v9;
  }

  v36 = *(v21 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v38;
    ++*(v21 + 36);
  }

  return result;
}

uint64_t sub_1B5E34890(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5DF33E0(&unk_1EB90E970, &unk_1B5EB66C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B5E34900(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B5E34948()
{
  sub_1B5E34EC0();
  sub_1B5E1A084();
  v2 = sub_1B5EA4EE0();
  sub_1B5E01CF8(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  swift_task_alloc();
  sub_1B5E34EEC();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1B5E34CD8;
  v10 = sub_1B5E34E48();

  return sub_1B5E2F150(v10, v11, v12, v13, v14);
}

uint64_t sub_1B5E34A20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeExperiencesSessionClientData.Conversation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B5E34A98()
{
  v1 = sub_1B5E1A084();
  v3 = v2(v1);
  sub_1B5DF5EB8(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1B5E34AEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1B5DF5EB8(v4);
  v6 = *(v5 + 16);
  v7 = sub_1B5DFA488();
  v8(v7);
  return a2;
}

uint64_t sub_1B5E34B48()
{
  sub_1B5E34EC0();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  swift_task_alloc();
  sub_1B5E34EEC();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1B5E34BF0;
  v8 = sub_1B5E34E48();

  return sub_1B5E2F2AC(v8, v9, v10, v11, v4);
}

uint64_t sub_1B5E34BF0()
{
  sub_1B5E01DFC();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_1B5E34F1C();
  *v3 = v2;

  sub_1B5E2CF4C();

  return v4();
}

uint64_t sub_1B5E34CF4()
{

  return swift_once();
}

uint64_t sub_1B5E34DAC()
{

  return swift_beginAccess();
}

void sub_1B5E34DD4()
{
  v1 = *(v0 - 304);
  v2 = *(v0 - 312);
  v3 = *(v0 - 320);
}

void sub_1B5E34DF0()
{

  JUMPOUT(0x1B8C8B330);
}

uint64_t sub_1B5E34E60()
{

  return swift_slowAlloc();
}

uint64_t sub_1B5E34E78()
{

  return swift_beginAccess();
}

uint64_t sub_1B5E34E90()
{

  return swift_task_alloc();
}

void sub_1B5E34F28(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void sub_1B5E34F48(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1B5E34F68(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B5DF33E0(&unk_1EB90E970, &unk_1B5EB66C0);
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v50 = (&v37 - v6);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v51 = MEMORY[0x1E69E7CC0];
  sub_1B5E5BEDC(0, v7, 0);
  v8 = v51;
  v9 = sub_1B5E4287C(a1);
  v11 = v10;
  v13 = v12;
  v14 = a1 + 64;
  v41 = sub_1B5EA5560();
  v42 = a1;
  v15 = 0;
  v38 = v11;
  v39 = v7;
  v37 = a1 + 72;
  v40 = a1 + 64;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v45 = v13;
    v16 = v9 >> 6;
    if ((*(v14 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    if (*(a1 + 36) != v11)
    {
      goto LABEL_24;
    }

    v47 = v11;
    v48 = 1 << v9;
    v46 = v15;
    v17 = *(a1 + 56);
    v18 = (*(a1 + 48) + 16 * v9);
    v19 = v18[1];
    v49 = *v18;
    v20 = (v17 + 16 * v9);
    v21 = *v20;
    v22 = v20[1];
    swift_bridgeObjectRetain_n();
    sub_1B5E35720(v21, v22);
    sub_1B5E35720(v21, v22);

    sub_1B5E24A58(v21, v22);
    v23 = v2;
    v24 = *(v44 + 48);

    sub_1B5E35720(v21, v22);
    sub_1B5E24A58(v21, v22);
    v25 = v50;
    *v50 = v49;
    v25[1] = v19;
    sub_1B5E35778(&unk_1EB90E980, MEMORY[0x1E69C63A0]);
    sub_1B5EA4670();
    v2 = v23;
    if (v23)
    {
      goto LABEL_28;
    }

    sub_1B5E24A58(v21, v22);
    v51 = v8;
    v27 = *(v8 + 16);
    v26 = *(v8 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_1B5E5BEDC(v26 > 1, v27 + 1, 1);
      v8 = v51;
    }

    *(v8 + 16) = v27 + 1;
    sub_1B5E34890(v50, v8 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v27);
    a1 = v42;
    v28 = 1 << *(v42 + 32);
    if (v9 >= v28)
    {
      goto LABEL_25;
    }

    v14 = v40;
    v29 = *(v40 + 8 * v16);
    if ((v29 & v48) == 0)
    {
      goto LABEL_26;
    }

    if (*(v42 + 36) != v47)
    {
      goto LABEL_27;
    }

    v30 = v29 & (-2 << (v9 & 0x3F));
    if (v30)
    {
      v28 = __clz(__rbit64(v30)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v31 = v16 << 6;
      v32 = v16 + 1;
      v33 = (v37 + 8 * v16);
      while (v32 < (v28 + 63) >> 6)
      {
        v35 = *v33++;
        v34 = v35;
        v31 += 64;
        ++v32;
        if (v35)
        {
          sub_1B5E427F8(v9, v47, v45 & 1);
          v28 = __clz(__rbit64(v34)) + v31;
          goto LABEL_20;
        }
      }

      sub_1B5E427F8(v9, v47, v45 & 1);
    }

LABEL_20:
    v13 = 0;
    v15 = v46 + 1;
    v9 = v28;
    v11 = v38;
    if (v46 + 1 == v39)
    {
      return v8;
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
LABEL_28:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1B5E3537C(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    sub_1B5DF33E0(a2, a3);
    v5 = sub_1B5EA5CE0();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t sub_1B5E35420(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = *(a2 + 16);
  }

  if (v4)
  {
    sub_1B5DF33E0(&qword_1EB90E948, &qword_1B5EB6698);
    v5 = sub_1B5EA5CE0();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v7 = v5;

  sub_1B5E42014(a1, a2, 1, &v7);

  return v7;
}

uint64_t sub_1B5E35504()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage26GenerativeErrorXPCEnvelope__error);
  sub_1B5E35720(v1, *(v0 + OBJC_IVAR____TtC4Sage26GenerativeErrorXPCEnvelope__error + 8));
  return v1;
}

uint64_t sub_1B5E3555C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC4Sage26GenerativeErrorXPCEnvelope__error);
  v4 = *(v2 + OBJC_IVAR____TtC4Sage26GenerativeErrorXPCEnvelope__error);
  v5 = *(v2 + OBJC_IVAR____TtC4Sage26GenerativeErrorXPCEnvelope__error + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1B5E24A58(v4, v5);
}

uint64_t GenerativeErrorXPCEnvelope.__allocating_init(sealing:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  return GenerativeErrorXPCEnvelope.init(sealing:)();
}

uint64_t GenerativeErrorXPCEnvelope.init(sealing:)()
{
  sub_1B5E43350();
  swift_getObjectType();
  sub_1B5E43750();
  sub_1B5EA5130();
  sub_1B5E4345C();
  sub_1B5E35778(v0, v1);
  sub_1B5DFA488();
  v2 = sub_1B5EA4680();
  sub_1B5E4351C(v2, v3, OBJC_IVAR____TtC4Sage26GenerativeErrorXPCEnvelope__error);
  objc_msgSendSuper2(&v9, sel_init);
  sub_1B5E4335C();
  v5 = *(v4 + 8);
  v6 = sub_1B5DFA488();
  v7(v6);
  return 0;
}

uint64_t GenerativeErrorXPCEnvelope.unseal()()
{
  sub_1B5DF5E80();
  v0 = sub_1B5EA5130();
  sub_1B5E435FC(OBJC_IVAR____TtC4Sage26GenerativeErrorXPCEnvelope__error);
  v1 = sub_1B5E26234();
  sub_1B5E35720(v1, v2);
  sub_1B5E4345C();
  sub_1B5E35778(v3, v4);
  sub_1B5E432D8();
  v5 = sub_1B5E26234();
  result = sub_1B5E24A58(v5, v6);
  if (v0)
  {
    sub_1B5E43234();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B5E35720(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1B5E35778(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static GenerativeErrorXPCEnvelope.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E640 = a1;
  return result;
}

uint64_t sub_1B5E358A8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E640;
  return result;
}

uint64_t sub_1B5E358F4(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E640 = v1;
  return result;
}

id GenerativeErrorXPCEnvelope.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  v1 = sub_1B5E2624C();
  return GenerativeErrorXPCEnvelope.init(coder:)(v1, v2, v3);
}

uint64_t sub_1B5E35A84()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage21ToolChoiceXPCEnvelope__toolChoice);
  sub_1B5E35720(v1, *(v0 + OBJC_IVAR____TtC4Sage21ToolChoiceXPCEnvelope__toolChoice + 8));
  return v1;
}

uint64_t sub_1B5E35ADC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC4Sage21ToolChoiceXPCEnvelope__toolChoice);
  v4 = *(v2 + OBJC_IVAR____TtC4Sage21ToolChoiceXPCEnvelope__toolChoice);
  v5 = *(v2 + OBJC_IVAR____TtC4Sage21ToolChoiceXPCEnvelope__toolChoice + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1B5E24A58(v4, v5);
}

void ToolChoiceXPCEnvelope.__allocating_init(sealing:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  ToolChoiceXPCEnvelope.init(sealing:)();
}

void ToolChoiceXPCEnvelope.init(sealing:)()
{
  sub_1B5DFD8A8();
  sub_1B5E43350();
  ObjectType = swift_getObjectType();
  sub_1B5E43694(ObjectType);
  v1 = sub_1B5EA5160();
  v2 = sub_1B5DF5DA8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1B5DFD7E8();
  sub_1B5E4332C();
  v5 = sub_1B5EA4850();
  v6 = sub_1B5DF5DA8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = sub_1B5E431F0();
  v10(v9);
  sub_1B5E4375C();
  sub_1B5EA4840();
  sub_1B5E4348C();
  sub_1B5E35778(v11, v12);
  sub_1B5E26048();
  sub_1B5EA4680();
  v13 = sub_1B5E43244();
  v14(v13);
  sub_1B5E43318(OBJC_IVAR____TtC4Sage21ToolChoiceXPCEnvelope__toolChoice);
  objc_msgSendSuper2(&v17, sel_init);
  v15 = sub_1B5E43304();
  v16(v15);
  sub_1B5E43688();
  sub_1B5DFD8C0();
}

uint64_t ToolChoiceXPCEnvelope.unseal()()
{
  sub_1B5E4367C();
  v3 = sub_1B5EA4850();
  v4 = sub_1B5DF5DA8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5E2829C();
  sub_1B5E43584(OBJC_IVAR____TtC4Sage21ToolChoiceXPCEnvelope__toolChoice);
  sub_1B5E4348C();
  sub_1B5E35778(v7, v8);
  sub_1B5E432C4();
  sub_1B5E436F4();
  sub_1B5E24A58(v0, v2);
  if (v1)
  {
    sub_1B5E43234();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    sub_1B5E43670();
    sub_1B5EA4830();
    v9 = sub_1B5E43618();
    return v10(v9);
  }

  return result;
}

uint64_t static ToolChoiceXPCEnvelope.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E641 = a1;
  return result;
}

uint64_t sub_1B5E35EC8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E641;
  return result;
}

uint64_t sub_1B5E35F14(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E641 = v1;
  return result;
}

id ToolChoiceXPCEnvelope.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  v1 = sub_1B5E2624C();
  return ToolChoiceXPCEnvelope.init(coder:)(v1);
}

id sub_1B5E35FAC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  sub_1B5E433C0();
  v8 = sub_1B5EA5670();
  v9 = [a1 decodeObjectForKey_];

  if (v9)
  {
    sub_1B5EA5AF0();
    v10 = swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  sub_1B5E43638(v10, v11, v12, v13, v14, v15, v16, v17, v21.receiver, v21.super_class, v22, *(&v22 + 1), v23, *(&v23 + 1), v24);
  if (!v18)
  {

    sub_1B5DF4428(v25, &qword_1EB90E668, &qword_1B5EB60D0);
LABEL_9:
    swift_deallocPartialClassInstance();
    return 0;
  }

  if ((sub_1B5E43734() & 1) == 0)
  {

    goto LABEL_9;
  }

  *&v4[*a4] = v22;
  v21.receiver = v4;
  v21.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v21, sel_init);

  return v19;
}

uint64_t sub_1B5E361F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage19ToolTypeXPCEnvelope__tool);
  sub_1B5E35720(v1, *(v0 + OBJC_IVAR____TtC4Sage19ToolTypeXPCEnvelope__tool + 8));
  return v1;
}

uint64_t sub_1B5E36248(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC4Sage19ToolTypeXPCEnvelope__tool);
  v4 = *(v2 + OBJC_IVAR____TtC4Sage19ToolTypeXPCEnvelope__tool);
  v5 = *(v2 + OBJC_IVAR____TtC4Sage19ToolTypeXPCEnvelope__tool + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1B5E24A58(v4, v5);
}

void ToolTypeXPCEnvelope.__allocating_init(sealing:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  ToolTypeXPCEnvelope.init(sealing:)();
}

void ToolTypeXPCEnvelope.init(sealing:)()
{
  sub_1B5DFD8A8();
  sub_1B5E43350();
  ObjectType = swift_getObjectType();
  sub_1B5E43694(ObjectType);
  v1 = sub_1B5EA5350();
  v2 = sub_1B5DF5DA8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1B5DFD7E8();
  sub_1B5E4332C();
  v5 = sub_1B5EA46B0();
  v6 = sub_1B5E01CF8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1B5DFD7E8();
  v9 = sub_1B5EA49C0();
  v10 = sub_1B5DF5DA8(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = sub_1B5E431F0();
  v14(v13);
  sub_1B5EA46A0();
  sub_1B5EA49B0();
  sub_1B5E434A4();
  sub_1B5E35778(v15, v16);
  sub_1B5E26048();
  sub_1B5EA4680();
  v17 = sub_1B5E43244();
  v18(v17);
  sub_1B5E43318(OBJC_IVAR____TtC4Sage19ToolTypeXPCEnvelope__tool);
  objc_msgSendSuper2(&v21, sel_init);
  v19 = sub_1B5E43304();
  v20(v19);
  sub_1B5E43688();
  sub_1B5DFD8C0();
}

void ToolTypeXPCEnvelope.unseal()()
{
  sub_1B5DFD8A8();
  sub_1B5DF5E80();
  v2 = sub_1B5EA49C0();
  v3 = sub_1B5DF5DA8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1B5E4321C();
  v8 = sub_1B5EA46B0();
  v9 = sub_1B5DF5DA8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5DFD7E8();
  sub_1B5E01D10();
  v14 = v0 + OBJC_IVAR____TtC4Sage19ToolTypeXPCEnvelope__tool;
  v15 = *(v0 + OBJC_IVAR____TtC4Sage19ToolTypeXPCEnvelope__tool);
  v16 = *(v14 + 8);
  sub_1B5E35720(v15, v16);
  sub_1B5E434A4();
  sub_1B5E35778(v17, v18);
  sub_1B5EA4670();
  sub_1B5E24A58(v15, v16);
  sub_1B5EA49A0();
  (*(v5 + 8))(v1, v2);
  sub_1B5EA4690();
  v19 = *(v11 + 8);
  v20 = sub_1B5E433C0();
  v21(v20);
  sub_1B5DFD8C0();
}

uint64_t static ToolTypeXPCEnvelope.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E642 = a1;
  return result;
}

uint64_t sub_1B5E36728@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E642;
  return result;
}

uint64_t sub_1B5E36774(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E642 = v1;
  return result;
}

id ToolTypeXPCEnvelope.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  v1 = sub_1B5E2624C();
  return ToolTypeXPCEnvelope.init(coder:)(v1);
}

uint64_t sub_1B5E3690C()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage17SchemaXPCEnvelope__schema);
  sub_1B5E42804(v1, *(v0 + OBJC_IVAR____TtC4Sage17SchemaXPCEnvelope__schema + 8));
  return v1;
}

uint64_t sub_1B5E369D4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC4Sage17SchemaXPCEnvelope__schema);
  v4 = *(v2 + OBJC_IVAR____TtC4Sage17SchemaXPCEnvelope__schema);
  v5 = *(v2 + OBJC_IVAR____TtC4Sage17SchemaXPCEnvelope__schema + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1B5E25DA0(v4, v5);
}

void SchemaXPCEnvelope.__allocating_init(sealing:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  SchemaXPCEnvelope.init(sealing:)();
}

void SchemaXPCEnvelope.init(sealing:)()
{
  sub_1B5DFD8A8();
  v2 = v0;
  v4 = v3;
  ObjectType = swift_getObjectType();
  v5 = sub_1B5EA51B0();
  v6 = sub_1B5DF5DA8(v5);
  v37 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1B5E4321C();
  v10 = sub_1B5DF33E0(&qword_1EB90E6A0, &qword_1B5EB60D8);
  sub_1B5E01CF8(v10);
  v12 = *(v11 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v13);
  sub_1B5E4332C();
  v14 = sub_1B5EA5290();
  v15 = sub_1B5DF5DA8(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1B5DFD7E8();
  v22 = v21 - v20;
  v23 = &v2[OBJC_IVAR____TtC4Sage17SchemaXPCEnvelope__schema];
  *&v2[OBJC_IVAR____TtC4Sage17SchemaXPCEnvelope__schema] = xmmword_1B5EB4730;
  sub_1B5E11D08(v4, v1, &qword_1EB90E6A0, &qword_1B5EB60D8);
  if (sub_1B5DF46E0(v1, 1, v14) == 1)
  {
    sub_1B5DF4428(v1, &qword_1EB90E6A0, &qword_1B5EB60D8);
    v24 = 0;
    v25 = 0xF000000000000000;
  }

  else
  {
    v26 = *(v17 + 32);
    v27 = sub_1B5E436DC();
    v28(v27);
    sub_1B5EA5270();
    sub_1B5E433E4();
    sub_1B5E35778(v29, v30);
    v24 = sub_1B5EA4680();
    v25 = v31;
    v32 = *(v37 + 8);
    v33 = sub_1B5E26048();
    v34(v33);
    (*(v17 + 8))(v22, v14);
  }

  v35 = *v23;
  v36 = v23[1];
  *v23 = v24;
  v23[1] = v25;
  sub_1B5E25DA0(v35, v36);
  v39.receiver = v2;
  v39.super_class = ObjectType;
  objc_msgSendSuper2(&v39, sel_init);
  sub_1B5DF4428(v4, &qword_1EB90E6A0, &qword_1B5EB60D8);
  sub_1B5E436D0();
  sub_1B5DFD8C0();
}

uint64_t SchemaXPCEnvelope.unseal()()
{
  sub_1B5DF5E80();
  v1 = sub_1B5EA51B0();
  v2 = sub_1B5DF5EB8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1B5E2829C();
  if (*(v0 + OBJC_IVAR____TtC4Sage17SchemaXPCEnvelope__schema + 8) >> 60 == 15)
  {
    sub_1B5EA5290();
    v5 = sub_1B5E43628();

    return sub_1B5DF3658(v5, v6, v7, v8);
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC4Sage17SchemaXPCEnvelope__schema);
    v11 = sub_1B5E433C0();
    sub_1B5E35720(v11, v12);
    sub_1B5E433E4();
    sub_1B5E35778(v13, v14);
    sub_1B5EA4670();
    sub_1B5EA5280();
    v15 = sub_1B5E433C0();
    sub_1B5E25DA0(v15, v16);
    sub_1B5EA5290();
    v17 = sub_1B5E34D9C();
    return sub_1B5DF3658(v17, v18, v19, v20);
  }
}

uint64_t static SchemaXPCEnvelope.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E643 = a1;
  return result;
}

uint64_t sub_1B5E36F18@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E643;
  return result;
}

uint64_t sub_1B5E36F64(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E643 = v1;
  return result;
}

id SchemaXPCEnvelope.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  return SchemaXPCEnvelope.init(coder:)();
}

id SchemaXPCEnvelope.init(coder:)()
{
  sub_1B5E43350();
  ObjectType = swift_getObjectType();
  v3 = &v1[OBJC_IVAR____TtC4Sage17SchemaXPCEnvelope__schema];
  *&v1[OBJC_IVAR____TtC4Sage17SchemaXPCEnvelope__schema] = xmmword_1B5EB4730;
  v4 = sub_1B5E43710();
  v5 = [v0 decodeObjectForKey_];

  if (v5)
  {
    sub_1B5EA5AF0();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (!*(&v14 + 1))
  {
    sub_1B5DF4428(v15, &qword_1EB90E668, &qword_1B5EB60D0);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v6 = xmmword_1B5EB4730;
    goto LABEL_9;
  }

  v6 = v11;
LABEL_9:
  v7 = *v3;
  v8 = v3[1];
  *v3 = v6;
  sub_1B5E25DA0(v7, v8);
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v12, sel_init);

  return v9;
}

Swift::Void __swiftcall SchemaXPCEnvelope.encode(with:)(NSCoder with)
{
  if (*(v1 + OBJC_IVAR____TtC4Sage17SchemaXPCEnvelope__schema + 8) >> 60 != 15)
  {
    v2 = *(v1 + OBJC_IVAR____TtC4Sage17SchemaXPCEnvelope__schema);
    v3 = sub_1B5E43768();
    sub_1B5E35720(v3, v4);
    sub_1B5E43768();
    sub_1B5EA42C0();
    v5 = sub_1B5E43768();
    sub_1B5E25DA0(v5, v6);
  }

  sub_1B5E43710();
  sub_1B5E436E8();
  v7 = sub_1B5E43780();
  [v7 v8];
  swift_unknownObjectRelease();
}

id SchemaXPCEnvelope.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B5E372D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage40StringRenderedPromptSanitizerXPCEnvelope__sanitizer);
  sub_1B5E35720(v1, *(v0 + OBJC_IVAR____TtC4Sage40StringRenderedPromptSanitizerXPCEnvelope__sanitizer + 8));
  return v1;
}

uint64_t sub_1B5E37330(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC4Sage40StringRenderedPromptSanitizerXPCEnvelope__sanitizer);
  v4 = *(v2 + OBJC_IVAR____TtC4Sage40StringRenderedPromptSanitizerXPCEnvelope__sanitizer);
  v5 = *(v2 + OBJC_IVAR____TtC4Sage40StringRenderedPromptSanitizerXPCEnvelope__sanitizer + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1B5E24A58(v4, v5);
}

uint64_t StringRenderedPromptSanitizerXPCEnvelope.__allocating_init(sealing:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  return StringRenderedPromptSanitizerXPCEnvelope.init(sealing:)();
}

uint64_t StringRenderedPromptSanitizerXPCEnvelope.init(sealing:)()
{
  sub_1B5E43350();
  swift_getObjectType();
  sub_1B5E43750();
  sub_1B5EA4D20();
  sub_1B5E43474();
  sub_1B5E35778(v0, v1);
  sub_1B5DFA488();
  v2 = sub_1B5EA4680();
  sub_1B5E4351C(v2, v3, OBJC_IVAR____TtC4Sage40StringRenderedPromptSanitizerXPCEnvelope__sanitizer);
  objc_msgSendSuper2(&v9, sel_init);
  sub_1B5E4335C();
  v5 = *(v4 + 8);
  v6 = sub_1B5DFA488();
  v7(v6);
  return 0;
}

uint64_t StringRenderedPromptSanitizerXPCEnvelope.unseal()()
{
  sub_1B5DF5E80();
  v0 = sub_1B5EA4D20();
  sub_1B5E435FC(OBJC_IVAR____TtC4Sage40StringRenderedPromptSanitizerXPCEnvelope__sanitizer);
  v1 = sub_1B5E26234();
  sub_1B5E35720(v1, v2);
  sub_1B5E43474();
  sub_1B5E35778(v3, v4);
  sub_1B5E432D8();
  v5 = sub_1B5E26234();
  result = sub_1B5E24A58(v5, v6);
  if (v0)
  {
    sub_1B5E43234();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t static StringRenderedPromptSanitizerXPCEnvelope.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E644 = a1;
  return result;
}

uint64_t sub_1B5E375DC@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E644;
  return result;
}

uint64_t sub_1B5E37628(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E644 = v1;
  return result;
}

id StringRenderedPromptSanitizerXPCEnvelope.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  v1 = sub_1B5E2624C();
  return StringRenderedPromptSanitizerXPCEnvelope.init(coder:)(v1, v2, v3);
}

uint64_t sub_1B5E377A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage34StringResponseSanitizerXPCEnvelope__sanitizer);
  sub_1B5E35720(v1, *(v0 + OBJC_IVAR____TtC4Sage34StringResponseSanitizerXPCEnvelope__sanitizer + 8));
  return v1;
}

uint64_t sub_1B5E377F8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC4Sage34StringResponseSanitizerXPCEnvelope__sanitizer);
  v4 = *(v2 + OBJC_IVAR____TtC4Sage34StringResponseSanitizerXPCEnvelope__sanitizer);
  v5 = *(v2 + OBJC_IVAR____TtC4Sage34StringResponseSanitizerXPCEnvelope__sanitizer + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1B5E24A58(v4, v5);
}

uint64_t StringResponseSanitizerXPCEnvelope.__allocating_init(sealing:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  return StringResponseSanitizerXPCEnvelope.init(sealing:)();
}

uint64_t StringResponseSanitizerXPCEnvelope.init(sealing:)()
{
  sub_1B5E43350();
  swift_getObjectType();
  sub_1B5E43750();
  sub_1B5EA4CC0();
  sub_1B5E43414();
  sub_1B5E35778(v0, v1);
  sub_1B5DFA488();
  v2 = sub_1B5EA4680();
  sub_1B5E4351C(v2, v3, OBJC_IVAR____TtC4Sage34StringResponseSanitizerXPCEnvelope__sanitizer);
  objc_msgSendSuper2(&v9, sel_init);
  sub_1B5E4335C();
  v5 = *(v4 + 8);
  v6 = sub_1B5DFA488();
  v7(v6);
  return 0;
}

uint64_t StringResponseSanitizerXPCEnvelope.unseal()()
{
  sub_1B5DF5E80();
  v0 = sub_1B5EA4CC0();
  sub_1B5E435FC(OBJC_IVAR____TtC4Sage34StringResponseSanitizerXPCEnvelope__sanitizer);
  v1 = sub_1B5E26234();
  sub_1B5E35720(v1, v2);
  sub_1B5E43414();
  sub_1B5E35778(v3, v4);
  sub_1B5E432D8();
  v5 = sub_1B5E26234();
  result = sub_1B5E24A58(v5, v6);
  if (v0)
  {
    sub_1B5E43234();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t static StringResponseSanitizerXPCEnvelope.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E645 = a1;
  return result;
}

uint64_t sub_1B5E37AA4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E645;
  return result;
}

uint64_t sub_1B5E37AF0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E645 = v1;
  return result;
}

id StringResponseSanitizerXPCEnvelope.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  v1 = sub_1B5E2624C();
  return StringResponseSanitizerXPCEnvelope.init(coder:)(v1, v2, v3);
}

uint64_t sub_1B5E37C68()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage29DocumentIdentifierXPCEnvelope__document);
  sub_1B5E35720(v1, *(v0 + OBJC_IVAR____TtC4Sage29DocumentIdentifierXPCEnvelope__document + 8));
  return v1;
}

uint64_t sub_1B5E37CC0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC4Sage29DocumentIdentifierXPCEnvelope__document);
  v4 = *(v2 + OBJC_IVAR____TtC4Sage29DocumentIdentifierXPCEnvelope__document);
  v5 = *(v2 + OBJC_IVAR____TtC4Sage29DocumentIdentifierXPCEnvelope__document + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1B5E24A58(v4, v5);
}

uint64_t DocumentIdentifierXPCEnvelope.__allocating_init(sealing:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  return DocumentIdentifierXPCEnvelope.init(sealing:)();
}

uint64_t DocumentIdentifierXPCEnvelope.init(sealing:)()
{
  sub_1B5E43350();
  swift_getObjectType();
  sub_1B5E43750();
  sub_1B5EA4EE0();
  sub_1B5E433FC();
  sub_1B5E35778(v0, v1);
  sub_1B5DFA488();
  v2 = sub_1B5EA4680();
  sub_1B5E4351C(v2, v3, OBJC_IVAR____TtC4Sage29DocumentIdentifierXPCEnvelope__document);
  objc_msgSendSuper2(&v9, sel_init);
  sub_1B5E4335C();
  v5 = *(v4 + 8);
  v6 = sub_1B5DFA488();
  v7(v6);
  return 0;
}

uint64_t DocumentIdentifierXPCEnvelope.unseal()()
{
  sub_1B5DF5E80();
  v0 = sub_1B5EA4EE0();
  sub_1B5E435FC(OBJC_IVAR____TtC4Sage29DocumentIdentifierXPCEnvelope__document);
  v1 = sub_1B5E26234();
  sub_1B5E35720(v1, v2);
  sub_1B5E433FC();
  sub_1B5E35778(v3, v4);
  sub_1B5E432D8();
  v5 = sub_1B5E26234();
  result = sub_1B5E24A58(v5, v6);
  if (v0)
  {
    sub_1B5E43234();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t static DocumentIdentifierXPCEnvelope.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E646 = a1;
  return result;
}

uint64_t sub_1B5E37F6C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E646;
  return result;
}

uint64_t sub_1B5E37FB8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E646 = v1;
  return result;
}

id DocumentIdentifierXPCEnvelope.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  v1 = sub_1B5E2624C();
  return DocumentIdentifierXPCEnvelope.init(coder:)(v1);
}

uint64_t sub_1B5E38160()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage31DocumentRegistrationXPCResponse__registration);
  sub_1B5E35720(v1, *(v0 + OBJC_IVAR____TtC4Sage31DocumentRegistrationXPCResponse__registration + 8));
  return v1;
}

void DocumentRegistrationXPCResponse.__allocating_init(sealing:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  DocumentRegistrationXPCResponse.init(sealing:)();
}

void DocumentRegistrationXPCResponse.init(sealing:)()
{
  sub_1B5DFD8A8();
  sub_1B5E43350();
  ObjectType = swift_getObjectType();
  sub_1B5E43694(ObjectType);
  v1 = sub_1B5EA4ED0();
  v2 = sub_1B5DF5DA8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1B5DFD7E8();
  sub_1B5E4332C();
  v5 = sub_1B5EA4A50();
  v6 = sub_1B5DF5DA8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = sub_1B5E431F0();
  v10(v9);
  sub_1B5E4375C();
  sub_1B5EA4A40();
  sub_1B5E43504();
  sub_1B5E35778(v11, v12);
  sub_1B5E26048();
  sub_1B5EA4680();
  v13 = sub_1B5E43244();
  v14(v13);
  sub_1B5E43318(OBJC_IVAR____TtC4Sage31DocumentRegistrationXPCResponse__registration);
  objc_msgSendSuper2(&v17, sel_init);
  v15 = sub_1B5E43304();
  v16(v15);
  sub_1B5E43688();
  sub_1B5DFD8C0();
}

uint64_t DocumentRegistrationXPCResponse.unseal()()
{
  sub_1B5E4367C();
  v2 = sub_1B5EA4A50();
  v3 = sub_1B5DF5DA8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1B5E2829C();
  v8 = v0 + OBJC_IVAR____TtC4Sage31DocumentRegistrationXPCResponse__registration;
  v9 = *(v0 + OBJC_IVAR____TtC4Sage31DocumentRegistrationXPCResponse__registration);
  v10 = *(v8 + 8);
  sub_1B5E43504();
  sub_1B5E35778(v11, v12);
  sub_1B5E432C4();
  sub_1B5EA4670();
  sub_1B5E43670();
  MEMORY[0x1B8C89650]();
  return (*(v5 + 8))(v1, v2);
}

uint64_t static DocumentRegistrationXPCResponse.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E647 = a1;
  return result;
}

uint64_t sub_1B5E38570@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E647;
  return result;
}

uint64_t sub_1B5E385BC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E647 = v1;
  return result;
}

id DocumentRegistrationXPCResponse.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  v1 = sub_1B5E2624C();
  return DocumentRegistrationXPCResponse.init(coder:)(v1);
}

uint64_t sub_1B5E38774()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage23ChatMessagesXPCEnvelope__messages);
  sub_1B5E42804(v1, *(v0 + OBJC_IVAR____TtC4Sage23ChatMessagesXPCEnvelope__messages + 8));
  return v1;
}

void sub_1B5E387B4()
{
  sub_1B5DFD8A8();
  sub_1B5E43350();
  ObjectType = swift_getObjectType();
  v4 = &qword_1EB90E938;
  v5 = &qword_1B5EB6690;
  v6 = sub_1B5DF33E0(&qword_1EB90E938, &qword_1B5EB6690);
  sub_1B5E01CF8(v6);
  v8 = *(v7 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5E4332C();
  v10 = sub_1B5EA5470();
  v11 = sub_1B5DF5DA8(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1B5DFD7E8();
  sub_1B5E01D10();
  sub_1B5E437AC();
  if (sub_1B5DF46E0(v2, 1, v10) == 1)
  {
    sub_1B5DF4428(v2, &qword_1EB90E938, &qword_1B5EB6690);
    v4 = 0;
    v5 = 0xF000000000000000;
  }

  else
  {
    v14 = sub_1B5E436A0();
    v15(v14);
    sub_1B5E434BC();
    sub_1B5E35778(v16, v17);
    sub_1B5E433C0();
    sub_1B5EA4680();
    v18 = sub_1B5E433A8();
    v19(v18);
  }

  v20 = &v1[OBJC_IVAR____TtC4Sage23ChatMessagesXPCEnvelope__messages];
  *v20 = v4;
  v20[1] = v5;
  v21.receiver = v1;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, sel_init);
  sub_1B5DF4428(v0, &qword_1EB90E938, &qword_1B5EB6690);
  sub_1B5E436D0();
  sub_1B5DFD8C0();
}

uint64_t ChatMessagesXPCEnvelope.unseal()()
{
  sub_1B5E435FC(OBJC_IVAR____TtC4Sage23ChatMessagesXPCEnvelope__messages);
  v2 = sub_1B5EA5470();
  if (v1 >> 60 == 15)
  {
    sub_1B5E43628();
    sub_1B5E437EC();

    return sub_1B5DF3658(v3, v4, v5, v6);
  }

  else
  {
    v9 = sub_1B5E26234();
    sub_1B5E35720(v9, v10);
    sub_1B5E434BC();
    sub_1B5E35778(v11, v12);
    sub_1B5E435D0();
    if (v0)
    {
      sub_1B5E43234();
      result = swift_unexpectedError();
      __break(1u);
    }

    else
    {
      v13 = sub_1B5E34D9C();
      sub_1B5DF3658(v13, v14, v15, v2);
      sub_1B5E26234();
      sub_1B5E437EC();

      return sub_1B5E25DA0(v16, v17);
    }
  }

  return result;
}

uint64_t static ChatMessagesXPCEnvelope.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E648 = a1;
  return result;
}

uint64_t sub_1B5E38B60@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E648;
  return result;
}

uint64_t sub_1B5E38BAC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E648 = v1;
  return result;
}

id ChatMessagesXPCEnvelope.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  v1 = sub_1B5E2624C();
  return ChatMessagesXPCEnvelope.init(coder:)(v1);
}

id sub_1B5E38D4C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1B5EA42C0();
    v5 = sub_1B5DFA488();
    sub_1B5E25DA0(v5, v6);
  }

  return v4;
}

uint64_t sub_1B5E38DBC()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage19TemplateXPCEnvelope__template);
  sub_1B5E42804(v1, *(v0 + OBJC_IVAR____TtC4Sage19TemplateXPCEnvelope__template + 8));
  return v1;
}

void sub_1B5E38DFC()
{
  sub_1B5DFD8A8();
  sub_1B5E43350();
  ObjectType = swift_getObjectType();
  v4 = &qword_1EB90E928;
  v5 = &qword_1B5EB6688;
  v6 = sub_1B5DF33E0(&qword_1EB90E928, &qword_1B5EB6688);
  sub_1B5E01CF8(v6);
  v8 = *(v7 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5E4332C();
  v10 = sub_1B5EA4E40();
  v11 = sub_1B5DF5DA8(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1B5DFD7E8();
  sub_1B5E01D10();
  sub_1B5E437AC();
  if (sub_1B5DF46E0(v2, 1, v10) == 1)
  {
    sub_1B5DF4428(v2, &qword_1EB90E928, &qword_1B5EB6688);
    v4 = 0;
    v5 = 0xF000000000000000;
  }

  else
  {
    v14 = sub_1B5E436A0();
    v15(v14);
    sub_1B5E43444();
    sub_1B5E35778(v16, v17);
    sub_1B5E433C0();
    sub_1B5EA4680();
    v18 = sub_1B5E433A8();
    v19(v18);
  }

  v20 = &v1[OBJC_IVAR____TtC4Sage19TemplateXPCEnvelope__template];
  *v20 = v4;
  v20[1] = v5;
  v21.receiver = v1;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, sel_init);
  sub_1B5DF4428(v0, &qword_1EB90E928, &qword_1B5EB6688);
  sub_1B5E436D0();
  sub_1B5DFD8C0();
}

uint64_t TemplateXPCEnvelope.unseal()()
{
  sub_1B5E435FC(OBJC_IVAR____TtC4Sage19TemplateXPCEnvelope__template);
  v2 = sub_1B5EA4E40();
  if (v1 >> 60 == 15)
  {
    sub_1B5E43628();
    sub_1B5E437EC();

    return sub_1B5DF3658(v3, v4, v5, v6);
  }

  else
  {
    v9 = sub_1B5E26234();
    sub_1B5E35720(v9, v10);
    sub_1B5E43444();
    sub_1B5E35778(v11, v12);
    sub_1B5E435D0();
    if (v0)
    {
      sub_1B5E43234();
      result = swift_unexpectedError();
      __break(1u);
    }

    else
    {
      v13 = sub_1B5E34D9C();
      sub_1B5DF3658(v13, v14, v15, v2);
      sub_1B5E26234();
      sub_1B5E437EC();

      return sub_1B5E25DA0(v16, v17);
    }
  }

  return result;
}

uint64_t static TemplateXPCEnvelope.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E649 = a1;
  return result;
}

uint64_t sub_1B5E391A8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E649;
  return result;
}

uint64_t sub_1B5E391F4(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E649 = v1;
  return result;
}

id TemplateXPCEnvelope.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  v1 = sub_1B5E2624C();
  return TemplateXPCEnvelope.init(coder:)(v1);
}

id sub_1B5E39288(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1B5E43350();
  ObjectType = swift_getObjectType();
  sub_1B5E433C0();
  v8 = sub_1B5EA5670();
  v9 = [v4 decodeObjectForKey_];

  if (v9)
  {
    sub_1B5EA5AF0();
    v10 = swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  sub_1B5E43638(v10, v11, v12, v13, v14, v15, v16, v17, v22, v24, v25.receiver, v25.super_class, v26, *(&v26 + 1), v27);
  if (!v18)
  {
    sub_1B5DF4428(v28, &qword_1EB90E668, &qword_1B5EB60D0);
    goto LABEL_8;
  }

  if ((sub_1B5E43734() & 1) == 0)
  {
LABEL_8:
    v19 = xmmword_1B5EB4730;
    goto LABEL_9;
  }

  v19 = v23;
LABEL_9:
  *&v5[*a4] = v19;
  v25.receiver = v5;
  v25.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v25, sel_init);

  return v20;
}

void sub_1B5E393E4(uint64_t a1, void *a2)
{
  v3 = (v2 + *a2);
  if (v3[1] >> 60 != 15)
  {
    v4 = *v3;
    sub_1B5EA42C0();
  }

  sub_1B5E43768();
  sub_1B5EA5670();
  sub_1B5E436E8();
  v5 = sub_1B5E43780();
  [v5 v6];
  swift_unknownObjectRelease();
}

void sub_1B5E395AC()
{
  sub_1B5DFD8A8();
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_1B5DF33E0(&qword_1EB90E900, &qword_1B5EB6668);
  v5 = sub_1B5DF5EB8(v4);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = (&v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v56 - v13;
  if (!v2)
  {
    v55 = 0;
LABEL_26:
    *&v0[OBJC_IVAR____TtC4Sage27BindingVariablesXPCEnvelope__bindingVariables] = v55;
    v76.receiver = v0;
    v76.super_class = ObjectType;
    objc_msgSendSuper2(&v76, sel_init);
    sub_1B5DFD8C0();
    return;
  }

  v14 = *(v2 + 16);
  if (!v14)
  {

    v15 = MEMORY[0x1E69E7CC0];
LABEL_25:
    v55 = sub_1B5E3537C(v15, &qword_1EB90E910, &qword_1B5EB6670, sub_1B5E41D14);
    goto LABEL_26;
  }

  v63 = v12;
  v56 = ObjectType;
  v57 = v0;
  v75 = MEMORY[0x1E69E7CC0];
  sub_1B5E5BF74(0, v14, 0);
  v15 = v75;
  v18 = sub_1B5E4287C(v2);
  v19 = 0;
  v74 = 0;
  v20 = v2 + 64;
  v59 = v16;
  v60 = v14;
  v58 = v2 + 72;
  v64 = v2;
  v61 = v4;
  v62 = v2 + 64;
  while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(v2 + 32))
  {
    if ((*(v20 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
    {
      goto LABEL_28;
    }

    if (*(v2 + 36) != v16)
    {
      goto LABEL_29;
    }

    v69 = 1 << v18;
    v70 = v18 >> 6;
    v67 = v19;
    v68 = v16;
    v66 = v17;
    v73 = v15;
    v21 = *(v4 + 48);
    v22 = *(v2 + 56);
    v23 = (*(v2 + 48) + 16 * v18);
    v25 = *v23;
    v24 = v23[1];
    v26 = sub_1B5EA5560();
    sub_1B5DF5DA8(v26);
    v28 = v27;
    v30 = v22 + *(v29 + 72) * v18;
    v31 = v65;
    (*(v27 + 16))(&v65[v21], v30, v26);
    v32 = v63;
    *v63 = v25;
    *(v32 + 8) = v24;
    (*(v28 + 32))(v32 + *(v4 + 48), &v31[v21], v26);
    v33 = sub_1B5E34F10();
    sub_1B5E11D08(v33, v34, &qword_1EB90E900, &qword_1B5EB6668);
    v35 = *v10;
    v71 = v10[1];
    v72 = v35;
    sub_1B5E35778(&qword_1EB90E908, MEMORY[0x1E69C63A0]);

    v36 = v10;
    v37 = v74;
    v38 = sub_1B5EA4680();
    v74 = v37;
    if (v37)
    {
      goto LABEL_33;
    }

    v40 = v38;
    v41 = v39;
    v42 = *(v4 + 48);
    sub_1B5DF4428(v32, &qword_1EB90E900, &qword_1B5EB6668);
    v10 = v36;
    (*(v28 + 8))(v36 + v42, v26);
    v15 = v73;
    v75 = v73;
    v44 = *(v73 + 16);
    v43 = *(v73 + 24);
    if (v44 >= v43 >> 1)
    {
      sub_1B5E5BF74(v43 > 1, v44 + 1, 1);
      v15 = v75;
    }

    *(v15 + 16) = v44 + 1;
    v45 = (v15 + 32 * v44);
    v46 = v71;
    v45[4] = v72;
    v45[5] = v46;
    v45[6] = v40;
    v45[7] = v41;
    v2 = v64;
    v47 = 1 << *(v64 + 32);
    if (v18 >= v47)
    {
      goto LABEL_30;
    }

    v20 = v62;
    v48 = *(v62 + 8 * v70);
    if ((v48 & v69) == 0)
    {
      goto LABEL_31;
    }

    if (*(v64 + 36) != v68)
    {
      goto LABEL_32;
    }

    v49 = v48 & (-2 << (v18 & 0x3F));
    if (v49)
    {
      v47 = __clz(__rbit64(v49)) | v18 & 0x7FFFFFFFFFFFFFC0;
      v4 = v61;
    }

    else
    {
      v50 = v70 << 6;
      v51 = v70 + 1;
      v52 = (v58 + 8 * v70);
      v4 = v61;
      while (v51 < (v47 + 63) >> 6)
      {
        v54 = *v52++;
        v53 = v54;
        v50 += 64;
        ++v51;
        if (v54)
        {
          sub_1B5E427F8(v18, v68, v66 & 1);
          v47 = __clz(__rbit64(v53)) + v50;
          goto LABEL_21;
        }
      }

      sub_1B5E427F8(v18, v68, v66 & 1);
    }

LABEL_21:
    v17 = 0;
    v19 = v67 + 1;
    v18 = v47;
    v16 = v59;
    if (v67 + 1 == v60)
    {

      v0 = v57;
      ObjectType = v56;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  swift_unexpectedError();
  __break(1u);
}

Swift::OpaquePointer_optional __swiftcall BindingVariablesXPCEnvelope.unseal()()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage27BindingVariablesXPCEnvelope__bindingVariables);
  if (v1)
  {
    sub_1B5E34F68(v1);
    sub_1B5E43554();
    v1 = sub_1B5E3537C(v2, v3, v4, v5);
  }

  result.value._rawValue = v1;
  result.is_nil = v6;
  return result;
}

uint64_t static BindingVariablesXPCEnvelope.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E64A = a1;
  return result;
}

uint64_t sub_1B5E39BD0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E64A;
  return result;
}

uint64_t sub_1B5E39C1C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E64A = v1;
  return result;
}

id BindingVariablesXPCEnvelope.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  return BindingVariablesXPCEnvelope.init(coder:)();
}

id BindingVariablesXPCEnvelope.init(coder:)()
{
  sub_1B5E43350();
  ObjectType = swift_getObjectType();
  v3 = sub_1B5E437CC();
  v4 = [v0 decodeObjectForKey_];

  if (v4)
  {
    sub_1B5EA5AF0();
    v5 = swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  sub_1B5E43638(v5, v6, v7, v8, v9, v10, v11, v12, v17, v18, v20.receiver, v20.super_class, v21, *(&v21 + 1), v22);
  if (!v13)
  {
    sub_1B5DF4428(v23, &qword_1EB90E668, &qword_1B5EB60D0);
    goto LABEL_8;
  }

  sub_1B5DF33E0(&qword_1EB90E748, &qword_1B5EB60E0);
  if ((sub_1B5E43734() & 1) == 0)
  {
LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

  v14 = v19;
LABEL_9:
  *&v1[OBJC_IVAR____TtC4Sage27BindingVariablesXPCEnvelope__bindingVariables] = v14;
  v20.receiver = v1;
  v20.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v20, sel_init);

  return v15;
}

Swift::Void __swiftcall BindingVariablesXPCEnvelope.encode(with:)(NSCoder with)
{
  if (*(v1 + OBJC_IVAR____TtC4Sage27BindingVariablesXPCEnvelope__bindingVariables))
  {
    sub_1B5EA55C0();
  }

  sub_1B5E437CC();
  sub_1B5E436E8();
  v2 = sub_1B5E43780();
  [v2 v3];
  swift_unknownObjectRelease();
}

uint64_t sub_1B5E39F38()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage29SamplingParametersXPCEnvelope__parameters);
  sub_1B5E35720(v1, *(v0 + OBJC_IVAR____TtC4Sage29SamplingParametersXPCEnvelope__parameters + 8));
  return v1;
}

void sub_1B5E39F78()
{
  sub_1B5DFD8A8();
  sub_1B5E43350();
  ObjectType = swift_getObjectType();
  sub_1B5E43694(ObjectType);
  v1 = sub_1B5EA4820();
  v2 = sub_1B5DF5DA8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1B5DFD7E8();
  sub_1B5E4332C();
  v5 = sub_1B5EA4A20();
  v6 = sub_1B5DF5DA8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = sub_1B5E431F0();
  v10(v9);
  sub_1B5E4375C();
  sub_1B5EA4A10();
  sub_1B5E434D4();
  sub_1B5E35778(v11, v12);
  sub_1B5E26048();
  sub_1B5EA4680();
  v13 = sub_1B5E43244();
  v14(v13);
  sub_1B5E43318(OBJC_IVAR____TtC4Sage29SamplingParametersXPCEnvelope__parameters);
  objc_msgSendSuper2(&v17, sel_init);
  v15 = sub_1B5E43304();
  v16(v15);
  sub_1B5E43688();
  sub_1B5DFD8C0();
}

uint64_t SamplingParametersXPCEnvelope.unseal()()
{
  sub_1B5E4367C();
  v2 = sub_1B5EA4A20();
  v3 = sub_1B5DF5DA8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1B5E2829C();
  v8 = v0 + OBJC_IVAR____TtC4Sage29SamplingParametersXPCEnvelope__parameters;
  v9 = *(v0 + OBJC_IVAR____TtC4Sage29SamplingParametersXPCEnvelope__parameters);
  v10 = *(v8 + 8);
  sub_1B5E434D4();
  sub_1B5E35778(v11, v12);
  sub_1B5E432C4();
  sub_1B5EA4670();
  sub_1B5E43670();
  sub_1B5EA4A00();
  return (*(v5 + 8))(v1, v2);
}

uint64_t static SamplingParametersXPCEnvelope.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E64B = a1;
  return result;
}

uint64_t sub_1B5E3A31C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E64B;
  return result;
}

uint64_t sub_1B5E3A368(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E64B = v1;
  return result;
}

id SamplingParametersXPCEnvelope.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  v1 = sub_1B5E2624C();
  return SamplingParametersXPCEnvelope.init(coder:)(v1);
}

void sub_1B5E3A450(uint64_t a1, void *a2)
{
  sub_1B5E436B8(a1, a2);
  v4 = *v3;
  v5 = v3[1];
  v6 = sub_1B5EA42C0();
  sub_1B5EA5670();
  sub_1B5E436E8();
  [v2 encodeObject:v6 forKey:?];
}

uint64_t sub_1B5E3A658@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__url;
  swift_beginAccess();
  v4 = sub_1B5EA42B0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1B5E3A774(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__url;
  swift_beginAccess();
  v4 = sub_1B5EA42B0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1B5E3A8A4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__fileHandle);
  *(v1 + OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__fileHandle) = a1;
  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1B5E3A8D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__metadata);
  sub_1B5E35720(v1, *(v0 + OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__metadata + 8));
  return v1;
}

uint64_t sub_1B5E3A928(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__metadata);
  v4 = *(v2 + OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__metadata);
  v5 = *(v2 + OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__metadata + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1B5E24A58(v4, v5);
}

void DocumentXPCEnvelope.__allocating_init(sealing:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  DocumentXPCEnvelope.init(sealing:)();
}

void DocumentXPCEnvelope.init(sealing:)()
{
  sub_1B5DFD8A8();
  sub_1B5E2624C();
  ObjectType = swift_getObjectType();
  v3 = sub_1B5EA42B0();
  v4 = sub_1B5DF5DA8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5DFD7E8();
  sub_1B5E43774();
  sub_1B5EA4E60();
  v9 = OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__url;
  (*(v6 + 32))(&v0[OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__url], v1, v3);
  if ((sub_1B5EA4E50() & 0x80000000) != 0)
  {
    v19 = sub_1B5EA4E90();
    sub_1B5DF5EB8(v19);
    (*(v20 + 8))(v0);
    (*(v6 + 8))(&v0[v9], v3);
    v21 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x30);
    v22 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *&v0[OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__fileHandle] = [objc_allocWithZone(MEMORY[0x1E696AC00]) initWithFileDescriptor:sub_1B5EA4E50() closeOnDealloc:0];
    sub_1B5EA4E80();
    sub_1B5DF33E0(&qword_1EB90E760, &qword_1B5EB60E8);
    sub_1B5E3AE00(&unk_1EB90E768);
    v10 = sub_1B5EA4680();
    v12 = v11;

    v24 = sub_1B5EA4E80();
    v13 = sub_1B5EA4680();
    v15 = v14;

    sub_1B5E24A58(v10, v12);
    v16 = &v0[OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__metadata];
    *v16 = v13;
    v16[1] = v15;
    v23.receiver = v0;
    v23.super_class = ObjectType;
    objc_msgSendSuper2(&v23, sel_init);
    v17 = sub_1B5EA4E90();
    sub_1B5DF5EB8(v17);
    (*(v18 + 8))(v0);
  }

  sub_1B5DFD8C0();
}

uint64_t DocumentXPCEnvelope.unseal()()
{
  sub_1B5DF5E80();
  v2 = sub_1B5EA42B0();
  v3 = sub_1B5DF5DA8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1B5DFD7E8();
  sub_1B5E43774();
  sub_1B5DF33E0(&qword_1EB90E760, &qword_1B5EB60E8);
  v8 = *(v0 + OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__metadata);
  v9 = *(v0 + OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__metadata + 8);
  sub_1B5E35720(v8, v9);
  sub_1B5E3AE00(&qword_1EB90E778);
  sub_1B5EA4670();
  sub_1B5E24A58(v8, v9);
  v10 = OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__url;
  swift_beginAccess();
  (*(v5 + 16))(v1, v0 + v10, v2);
  [*(v0 + OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__fileHandle) fileDescriptor];
  return sub_1B5EA4EA0();
}

uint64_t sub_1B5E3AE00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B5DFD694(&qword_1EB90E760, &qword_1B5EB60E8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static DocumentXPCEnvelope.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E64C = a1;
  return result;
}

uint64_t sub_1B5E3AF54@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E64C;
  return result;
}

uint64_t sub_1B5E3AFA0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E64C = v1;
  return result;
}

void DocumentXPCEnvelope.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  DocumentXPCEnvelope.init(coder:)();
}

void DocumentXPCEnvelope.init(coder:)()
{
  sub_1B5DFD8A8();
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = sub_1B5DF33E0(&unk_1EB90E780, &unk_1B5EB60F0);
  sub_1B5E01CF8(v6);
  v8 = *(v7 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5E01D10();
  v10 = sub_1B5EA42B0();
  v11 = sub_1B5DF5DA8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1B5DFD7E8();
  sub_1B5E43774();
  v16 = sub_1B5EA5670();
  v17 = [v4 decodeObjectForKey_];

  if (v17)
  {
    sub_1B5EA5AF0();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  sub_1B5E43608();
  if (!v18)
  {

    sub_1B5DF4428(v41, &qword_1EB90E668, &qword_1B5EB60D0);
    sub_1B5DF3658(v2, 1, 1, v10);
    goto LABEL_8;
  }

  v19 = swift_dynamicCast();
  sub_1B5DF3658(v2, v19 ^ 1u, 1, v10);
  if (sub_1B5DF46E0(v2, 1, v10) == 1)
  {

LABEL_8:
    sub_1B5DF4428(v2, &unk_1EB90E780, &unk_1B5EB60F0);
LABEL_26:
    v34 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x30);
    v35 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x34);
    swift_deallocPartialClassInstance();
    goto LABEL_27;
  }

  (*(v13 + 32))(v1, v2, v10);
  v20 = OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__url;
  (*(v13 + 16))(v0 + OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__url, v1, v10);
  v21 = sub_1B5E435A4();
  v22 = [v4 decodeObjectForKey_];

  if (v22)
  {
    sub_1B5EA5AF0();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  sub_1B5E43608();
  if (!v23)
  {

    sub_1B5DF4428(v41, &qword_1EB90E668, &qword_1B5EB60D0);
LABEL_18:
    v30 = *(v13 + 8);
    v31 = sub_1B5E34F10();
    v30(v31);
    (v30)(v0 + v20, v10);
    goto LABEL_26;
  }

  sub_1B5E3B4B4();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_18;
  }

  v36 = v20;
  v24 = v38;
  *(v0 + OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__fileHandle) = v38;
  v25 = v24;
  v26 = sub_1B5E43648();
  v27 = [v4 decodeObjectForKey_];

  if (v27)
  {
    sub_1B5EA5AF0();

    swift_unknownObjectRelease();
    v28 = *(v13 + 8);
    v29 = sub_1B5E34F10();
    v28(v29);
  }

  else
  {
    v28 = *(v13 + 8);
    v32 = sub_1B5E34F10();
    v28(v32);

    v39 = 0u;
    v40 = 0u;
  }

  sub_1B5E43608();
  if (!v33)
  {

    sub_1B5DF4428(v41, &qword_1EB90E668, &qword_1B5EB60D0);
LABEL_25:
    (v28)(v0 + v36, v10);

    goto LABEL_26;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_25;
  }

  *(v0 + OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__metadata) = v38;
  v37.receiver = v0;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, sel_init);

LABEL_27:
  sub_1B5DFD8C0();
}

unint64_t sub_1B5E3B4B4()
{
  result = qword_1EB90CD88;
  if (!qword_1EB90CD88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB90CD88);
  }

  return result;
}

Swift::Void __swiftcall DocumentXPCEnvelope.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = sub_1B5EA42B0();
  v5 = sub_1B5DF5DA8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DFD7E8();
  v12 = v11 - v10;
  v13 = OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__url;
  swift_beginAccess();
  (*(v7 + 16))(v12, v2 + v13, v4);
  v14 = sub_1B5EA4260();
  v15 = *(v7 + 8);
  v16 = sub_1B5E26234();
  v17(v16);
  v18 = sub_1B5EA5670();
  [(objc_class *)with.super.isa encodeObject:v14 forKey:v18];

  v19 = *(v2 + OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__fileHandle);
  v20 = sub_1B5E435A4();
  v21 = sub_1B5E43780();
  [v21 v22];

  v23 = *(v2 + OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__metadata);
  v24 = *(v2 + OBJC_IVAR____TtC4Sage19DocumentXPCEnvelope__metadata + 8);
  v25 = sub_1B5E436DC();
  sub_1B5E35720(v25, v26);
  sub_1B5E436DC();
  v27 = sub_1B5EA42C0();
  v28 = sub_1B5E436DC();
  sub_1B5E24A58(v28, v29);
  v30 = sub_1B5E43648();
  [(objc_class *)with.super.isa encodeObject:v27 forKey:v30];
}

uint64_t sub_1B5E3B810()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage31SessionConfigurationXPCEnvelope__configuration);
  sub_1B5E35720(v1, *(v0 + OBJC_IVAR____TtC4Sage31SessionConfigurationXPCEnvelope__configuration + 8));
  return v1;
}

uint64_t sub_1B5E3B868(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC4Sage31SessionConfigurationXPCEnvelope__configuration);
  v4 = *(v2 + OBJC_IVAR____TtC4Sage31SessionConfigurationXPCEnvelope__configuration);
  v5 = *(v2 + OBJC_IVAR____TtC4Sage31SessionConfigurationXPCEnvelope__configuration + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1B5E24A58(v4, v5);
}

void SessionConfigurationXPCEnvelope.__allocating_init(sealing:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  SessionConfigurationXPCEnvelope.init(sealing:)();
}

void SessionConfigurationXPCEnvelope.init(sealing:)()
{
  sub_1B5DFD8A8();
  sub_1B5E43350();
  ObjectType = swift_getObjectType();
  v4 = sub_1B5EA4930();
  v5 = sub_1B5DF5DA8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DFD7E8();
  v12 = v11 - v10;
  v13 = type metadata accessor for SessionConfiguration();
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1B5DFD7E8();
  sub_1B5E01D10();
  v16 = type metadata accessor for SessionConfigurationEnvelope(0);
  v17 = sub_1B5DF5EB8(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1B5DFD7E8();
  sub_1B5E43774();
  sub_1B5E402FC(v0, v3, type metadata accessor for SessionConfiguration);
  (*(v7 + 16))(v12, &v3[v14[7]], v4);
  sub_1B5E3D134(v12, v40);
  memcpy(v2, v40, 0x50uLL);
  *(v2 + v16[8]) = *v3;
  v20 = v14[8];
  v21 = v16[6];
  v22 = sub_1B5EA5450();
  sub_1B5DF5EB8(v22);
  (*(v23 + 16))(v2 + v21, &v3[v20]);
  v24 = &v3[v14[9]];
  v26 = *v24;
  v25 = *(v24 + 1);
  v27 = (v2 + v16[7]);
  *v27 = v26;
  v27[1] = v25;
  v28 = &v3[v14[10]];
  v29 = *v28;
  v30 = *(v28 + 1);

  sub_1B5E3D640(v3, type metadata accessor for SessionConfiguration);
  v2[10] = v29;
  v2[11] = v30;
  sub_1B5E4342C();
  sub_1B5E35778(v31, v32);
  sub_1B5E34F10();
  v33 = sub_1B5EA4680();
  v35 = v34;
  sub_1B5E4325C();
  sub_1B5E3D640(v2, v36);
  v37 = &v1[OBJC_IVAR____TtC4Sage31SessionConfigurationXPCEnvelope__configuration];
  *v37 = v33;
  v37[1] = v35;
  v39.receiver = v1;
  v39.super_class = ObjectType;
  objc_msgSendSuper2(&v39, sel_init);
  sub_1B5E3D640(v0, type metadata accessor for SessionConfiguration);
  sub_1B5E436D0();
  sub_1B5DFD8C0();
}

uint64_t SessionConfigurationXPCEnvelope.unseal()()
{
  v3 = sub_1B5DF5E80();
  v4 = type metadata accessor for SessionConfigurationEnvelope(v3);
  v5 = sub_1B5DF5EB8(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5E2829C();
  v8 = v1 + OBJC_IVAR____TtC4Sage31SessionConfigurationXPCEnvelope__configuration;
  v9 = *(v1 + OBJC_IVAR____TtC4Sage31SessionConfigurationXPCEnvelope__configuration);
  v10 = *(v8 + 8);
  v11 = sub_1B5E26240();
  sub_1B5E35720(v11, v12);
  sub_1B5E4342C();
  sub_1B5E35778(v13, v14);
  sub_1B5EA4670();
  v15 = sub_1B5E26240();
  sub_1B5E24A58(v15, v16);
  sub_1B5E3BC8C(v0);
  sub_1B5E4325C();
  return sub_1B5E3D640(v2, v17);
}

uint64_t sub_1B5E3BC8C@<X0>(char *a1@<X8>)
{
  v55 = a1;
  v2 = sub_1B5EA5450();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v61 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v45 - v7;
  v47 = sub_1B5EA4930();
  v9 = *(v47 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v47);
  v46 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v45 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v45 - v16;
  v18 = type metadata accessor for SessionConfigurationEnvelope(0);
  v49 = *(v1 + v18[8]);
  memcpy(__dst, v1, sizeof(__dst));
  sub_1B5E3DEAC(v17);
  v19 = v1[11];
  v59 = v1[10];
  v60 = v19;
  v20 = v18[6];
  v57 = v3;
  v21 = *(v3 + 16);
  v21(v8, v1 + v20, v2);
  v22 = (v1 + v18[7]);
  v23 = v22[1];
  v50 = *v22;
  v53 = v17;
  v54 = v9;
  v24 = v17;
  v25 = *(v9 + 16);
  v26 = v47;
  v25(v15, v24, v47);
  v56 = v8;
  v27 = v2;
  v28 = v46;
  v58 = v27;
  v48 = v21;
  (v21)(v61, v8);
  v52 = v15;
  v29 = v15;
  v30 = v26;
  v25(v28, v29, v26);
  v51 = v23;

  sub_1B5EA4900();
  if (!v31)
  {
  }

  v32 = type metadata accessor for SessionConfiguration();
  v33 = v55;
  v34 = &v55[v32[7]];
  v45 = v32[9];
  sub_1B5EA4910();
  v25(&v33[v32[5]], v28, v26);
  v35 = v61;
  v36 = v58;
  v48(&v33[v32[6]], v61, v58);
  v37 = &v33[v32[8]];
  v38 = v60;
  *v37 = v59;
  *(v37 + 1) = v38;
  sub_1B5DFAA14(v49, 0);
  v40 = v39;
  v41 = *(v54 + 8);
  v41(v28, v30);
  v42 = *(v57 + 8);
  v42(v35, v36);
  v41(v52, v30);
  v42(v56, v36);
  result = (v41)(v53, v30);
  *v33 = v40;
  v44 = v51;
  *v34 = v50;
  *(v34 + 1) = v44;
  *&v33[v45] = 0;
  return result;
}

uint64_t static SessionConfigurationXPCEnvelope.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E64D = a1;
  return result;
}

uint64_t sub_1B5E3C19C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E64D;
  return result;
}

uint64_t sub_1B5E3C1E8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E64D = v1;
  return result;
}

id SessionConfigurationXPCEnvelope.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  v1 = sub_1B5E2624C();
  return SessionConfigurationXPCEnvelope.init(coder:)(v1);
}

uint64_t sub_1B5E3C3A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage40CompletePromptResponseElementXPCEnvelope__event);
  sub_1B5E35720(v1, *(v0 + OBJC_IVAR____TtC4Sage40CompletePromptResponseElementXPCEnvelope__event + 8));
  return v1;
}

uint64_t sub_1B5E3C3F8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC4Sage40CompletePromptResponseElementXPCEnvelope__event);
  v4 = *(v2 + OBJC_IVAR____TtC4Sage40CompletePromptResponseElementXPCEnvelope__event);
  v5 = *(v2 + OBJC_IVAR____TtC4Sage40CompletePromptResponseElementXPCEnvelope__event + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1B5E24A58(v4, v5);
}

void CompletePromptResponseElementXPCEnvelope.__allocating_init(sealing:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  CompletePromptResponseElementXPCEnvelope.init(sealing:)();
}

void CompletePromptResponseElementXPCEnvelope.init(sealing:)()
{
  sub_1B5DFD8A8();
  sub_1B5E43350();
  ObjectType = swift_getObjectType();
  v5 = sub_1B5EA4A80();
  v6 = sub_1B5DF5DA8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1B5DFD7E8();
  sub_1B5E01D10();
  sub_1B5DFC6BC(v0, &v16);
  sub_1B5EA4A70();
  sub_1B5E433CC();
  sub_1B5E35778(v9, v10);
  sub_1B5E433C0();
  sub_1B5EA4680();
  v11 = sub_1B5E433A8();
  v12(v11);
  v13 = &v1[OBJC_IVAR____TtC4Sage40CompletePromptResponseElementXPCEnvelope__event];
  *v13 = v2;
  *(v13 + 1) = v3;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, sel_init);
  v14 = sub_1B5E2624C();
  sub_1B5DF3FB8(v14);
  sub_1B5E436D0();
  sub_1B5DFD8C0();
}

uint64_t CompletePromptResponseElementXPCEnvelope.unseal()()
{
  sub_1B5E4367C();
  v3 = sub_1B5EA4A80();
  v4 = sub_1B5DF5DA8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5E2829C();
  sub_1B5E43584(OBJC_IVAR____TtC4Sage40CompletePromptResponseElementXPCEnvelope__event);
  sub_1B5E433CC();
  sub_1B5E35778(v7, v8);
  sub_1B5E432C4();
  sub_1B5E436F4();
  sub_1B5E24A58(v0, v2);
  if (v1)
  {
    sub_1B5E43234();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    sub_1B5E43670();
    MEMORY[0x1B8C89680]();
    v9 = sub_1B5E43618();
    return v10(v9);
  }

  return result;
}

uint64_t static CompletePromptResponseElementXPCEnvelope.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E64E = a1;
  return result;
}

uint64_t sub_1B5E3C794@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E64E;
  return result;
}

uint64_t sub_1B5E3C7E0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E64E = v1;
  return result;
}

id CompletePromptResponseElementXPCEnvelope.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  v1 = sub_1B5E2624C();
  return CompletePromptResponseElementXPCEnvelope.init(coder:)(v1, v2, v3);
}

id sub_1B5E3C970(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_1B5EA42C0();
  v4 = sub_1B5DFA488();
  sub_1B5E24A58(v4, v5);

  return v3;
}

uint64_t sub_1B5E3C9CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Sage33CompletePromptResponseXPCEnvelope__completion);
  sub_1B5E35720(v1, *(v0 + OBJC_IVAR____TtC4Sage33CompletePromptResponseXPCEnvelope__completion + 8));
  return v1;
}

void sub_1B5E3CA24(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v6 = a3;
  v8 = a1;
  sub_1B5EA42E0();

  v7 = sub_1B5E436DC();
  a4(v7);
}

uint64_t sub_1B5E3CAA4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC4Sage33CompletePromptResponseXPCEnvelope__completion);
  v4 = *(v2 + OBJC_IVAR____TtC4Sage33CompletePromptResponseXPCEnvelope__completion);
  v5 = *(v2 + OBJC_IVAR____TtC4Sage33CompletePromptResponseXPCEnvelope__completion + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1B5E24A58(v4, v5);
}

void CompletePromptResponseXPCEnvelope.__allocating_init(sealing:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  CompletePromptResponseXPCEnvelope.init(sealing:)();
}

void CompletePromptResponseXPCEnvelope.init(sealing:)()
{
  sub_1B5DFD8A8();
  sub_1B5E43350();
  ObjectType = swift_getObjectType();
  sub_1B5E43694(ObjectType);
  v1 = sub_1B5EA47C0();
  v2 = sub_1B5DF5DA8(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1B5DFD7E8();
  sub_1B5E4332C();
  v5 = sub_1B5EA49F0();
  v6 = sub_1B5DF5DA8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = sub_1B5E431F0();
  v10(v9);
  sub_1B5E4375C();
  sub_1B5EA49E0();
  sub_1B5E434EC();
  sub_1B5E35778(v11, v12);
  sub_1B5E26048();
  sub_1B5EA4680();
  v13 = sub_1B5E43244();
  v14(v13);
  sub_1B5E43318(OBJC_IVAR____TtC4Sage33CompletePromptResponseXPCEnvelope__completion);
  objc_msgSendSuper2(&v17, sel_init);
  v15 = sub_1B5E43304();
  v16(v15);
  sub_1B5E43688();
  sub_1B5DFD8C0();
}

uint64_t CompletePromptResponseXPCEnvelope.unseal()()
{
  sub_1B5E4367C();
  v3 = sub_1B5EA49F0();
  v4 = sub_1B5DF5DA8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5E2829C();
  sub_1B5E43584(OBJC_IVAR____TtC4Sage33CompletePromptResponseXPCEnvelope__completion);
  sub_1B5E434EC();
  sub_1B5E35778(v7, v8);
  sub_1B5E432C4();
  sub_1B5E436F4();
  sub_1B5E24A58(v0, v2);
  if (v1)
  {
    sub_1B5E43234();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    sub_1B5E43670();
    sub_1B5EA49D0();
    v9 = sub_1B5E43618();
    return v10(v9);
  }

  return result;
}

uint64_t static CompletePromptResponseXPCEnvelope.supportsSecureCoding.setter(char a1)
{
  result = sub_1B5E43294();
  byte_1EB90E64F = a1;
  return result;
}

uint64_t sub_1B5E3CE90@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB90E64F;
  return result;
}

uint64_t sub_1B5E3CEDC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB90E64F = v1;
  return result;
}

id CompletePromptResponseXPCEnvelope.__allocating_init(coder:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  v1 = sub_1B5E2624C();
  return CompletePromptResponseXPCEnvelope.init(coder:)(v1);
}

void sub_1B5E3CFC0(uint64_t a1, void *a2)
{
  sub_1B5E436B8(a1, a2);
  v4 = *v3;
  v5 = v3[1];
  v6 = sub_1B5E26240();
  sub_1B5E35720(v6, v7);
  sub_1B5E26240();
  v8 = sub_1B5EA42C0();
  v9 = sub_1B5E26240();
  sub_1B5E24A58(v9, v10);
  sub_1B5EA5670();
  sub_1B5E436E8();
  [v2 encodeObject:v8 forKey:?];

  sub_1B5E437EC();
}

id _s4Sage17SchemaXPCEnvelopeCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1B5E3D134@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v56 = sub_1B5EA4660();
  v4 = *(v56 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v56);
  v59 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v58 = v43 - v8;
  v9 = type metadata accessor for ModelBundleEnvelope(0);
  v57 = *(v9 - 8);
  v10 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B5EA4630();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1B5EA4890();
  v51 = v18;
  v50 = sub_1B5EA4900();
  v49 = v19;
  v20 = sub_1B5EA48D0();
  v21 = *(v20 + 16);
  if (v21)
  {
    v44 = v17;
    v45 = v14;
    v46 = v13;
    v47 = a1;
    v48 = a2;
    v62[0] = MEMORY[0x1E69E7CC0];
    v22 = v20;
    sub_1B5E5BF94();
    v23 = v62[0];
    v25 = *(v4 + 16);
    v24 = v4 + 16;
    v54 = v25;
    v26 = (*(v24 + 64) + 32) & ~*(v24 + 64);
    v43[1] = v22;
    v27 = v22 + v26;
    v53 = *(v24 + 56);
    v28 = (v24 - 8);
    v55 = v24;
    do
    {
      v29 = v58;
      v30 = v56;
      v31 = v54;
      v54(v58, v27, v56);
      v32 = v59;
      v31(v59, v29, v30);
      sub_1B5EA4640();
      v33 = *v28;
      (*v28)(v32, v30);
      v33(v29, v30);
      v62[0] = v23;
      v34 = *(v23 + 16);
      if (v34 >= *(v23 + 24) >> 1)
      {
        sub_1B5E5BF94();
        v23 = v62[0];
      }

      *(v23 + 16) = v34 + 1;
      sub_1B5E42818(v12, v23 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v34);
      v27 += v53;
      --v21;
    }

    while (v21);

    a2 = v48;
    a1 = v47;
    v13 = v46;
    v14 = v45;
    v17 = v44;
  }

  else
  {

    v23 = MEMORY[0x1E69E7CC0];
  }

  v35 = sub_1B5EA48C0() & 1;
  sub_1B5EA48A0();
  (*(v14 + 8))(v17, v13);
  v36 = sub_1B5EA4920();
  v38 = v37;
  v39 = sub_1B5EA48B0();
  v40 = sub_1B5EA4860();
  v41 = sub_1B5EA4930();
  (*(*(v41 - 8) + 8))(a1, v41);
  __src[0] = v52;
  __src[1] = v51;
  __src[2] = v50;
  __src[3] = v49;
  __src[4] = v23;
  LOBYTE(__src[5]) = v35;
  *(&__src[5] + 1) = *v69;
  HIDWORD(__src[5]) = *&v69[3];
  __src[6] = v36;
  __src[7] = v38;
  __src[8] = v39;
  __src[9] = v40;
  v62[0] = v52;
  v62[1] = v51;
  v62[2] = v50;
  v62[3] = v49;
  v62[4] = v23;
  v63 = v35;
  *&v64[3] = *&v69[3];
  *v64 = *v69;
  v65 = v36;
  v66 = v38;
  v67 = v39;
  v68 = v40;
  sub_1B5E401EC(__src, v60);
  sub_1B5E40278(v62);
  return memcpy(a2, __src, 0x50uLL);
}

uint64_t sub_1B5E3D640(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1B5DF5EB8(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1B5E3DB20()
{
  result = sub_1B5EA42B0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1B5E3DD5C()
{
  sub_1B5EA5450();
  if (v0 <= 0x3F)
  {
    sub_1B5DFD5E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B5E3DE08(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1B5E3DE48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B5E3DEAC@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = type metadata accessor for ModelBundleEnvelope(0);
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1B5EA4660();
  v6 = *(v34 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B5EA4630();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = *v1;
  v13 = v1[1];
  v16 = v1[2];
  v15 = v1[3];
  v17 = v1[7];
  v30 = v1[6];
  v31 = v16;
  v18 = v1[4];
  v19 = *(v18 + 16);
  if (v19)
  {
    v28[3] = v14;
    v28[4] = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = v1;
    v35 = MEMORY[0x1E69E7CC0];
    v28[2] = v13;
    v20 = v15;

    v28[1] = v20;

    v28[0] = v17;

    sub_1B5E5BFEC();
    v21 = v35;
    v22 = v18 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v33 = *(v33 + 72);
    do
    {
      sub_1B5E402FC(v22, v5, type metadata accessor for ModelBundleEnvelope);
      sub_1B5EA4250();
      sub_1B5EA4650();
      sub_1B5E3D640(v5, type metadata accessor for ModelBundleEnvelope);
      v35 = v21;
      v23 = *(v21 + 16);
      if (v23 >= *(v21 + 24) >> 1)
      {
        sub_1B5E5BFEC();
        v21 = v35;
      }

      *(v21 + 16) = v23 + 1;
      (*(v6 + 32))(v21 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v23, v9, v34);
      v22 += v33;
      --v19;
    }

    while (v19);
    v1 = v29;
  }

  else
  {
  }

  v24 = *(v1 + 40);
  sub_1B5EA4610();
  v27 = v1[9];
  v26 = v1[8];
  return sub_1B5EA4880();
}

BOOL sub_1B5E3E1F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v36 = *(a1 + 40);
  v34 = *(a1 + 56);
  v35 = *(a1 + 48);
  v31 = *(a1 + 64);
  v32 = *(a1 + 72);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v33 = *(a2 + 56);
  v12 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v29 = *(a2 + 64);
  v30 = *(a2 + 72);
  if (!v12 && (sub_1B5EA5F00() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v13 = v4 == v8 && v6 == v7;
    if (!v13 && (sub_1B5EA5F00() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v15 = sub_1B5E40CC4(v5, v9);
  result = 0;
  if (v15 & 1) == 0 || ((v36 ^ v10))
  {
    return result;
  }

  if (v35 == v11 && v34 == v33)
  {
    if (v31 != v29 || v32 != v30)
    {
      return 0;
    }

    goto LABEL_34;
  }

  v17 = sub_1B5EA5F00();
  result = 0;
  if ((v17 & 1) != 0 && v31 == v29 && v32 == v30)
  {
LABEL_34:
    v20 = *(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88);
    if (v20 || (sub_1B5EA5F00() & 1) != 0)
    {
      v21 = type metadata accessor for SessionConfigurationEnvelope(0);
      v22 = v21[6];
      if (sub_1B5EA53E0())
      {
        v23 = v21[7];
        v24 = (a1 + v23);
        v25 = *(a1 + v23 + 8);
        v26 = (a2 + v23);
        v27 = v26[1];
        if (v25)
        {
          if (v27)
          {
            v28 = *v24 == *v26 && v25 == v27;
            if (v28 || (sub_1B5EA5F00() & 1) != 0)
            {
              return *(a1 + v21[8]) == *(a2 + v21[8]);
            }
          }
        }

        else if (!v27)
        {
          return *(a1 + v21[8]) == *(a2 + v21[8]);
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1B5E3E3EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x80000001B5EA9940 == a2;
  if (v3 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7463757274736E69 && a2 == 0xEC000000736E6F69;
      if (v7 || (sub_1B5EA5F00() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6574616C706D6574 && a2 == 0xEA00000000004449;
        if (v8 || (sub_1B5EA5F00() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x694C6F54656D6974 && a2 == 0xEA00000000006576)
        {

          return 4;
        }

        else
        {
          v10 = sub_1B5EA5F00();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1B5E3E5B4(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x7463757274736E69;
      break;
    case 3:
      result = 0x6574616C706D6574;
      break;
    case 4:
      result = 0x694C6F54656D6974;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_1B5E3E66C(void *a1)
{
  v3 = v1;
  v5 = sub_1B5DF33E0(&qword_1EB90E860, &qword_1B5EB6640);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E40198();
  sub_1B5EA6040();
  memcpy(__dst, v3, sizeof(__dst));
  memcpy(__src, v3, sizeof(__src));
  v24 = 0;
  sub_1B5E401EC(__dst, v20);
  sub_1B5E40224();
  sub_1B5EA5EA0();
  if (v2)
  {
    memcpy(v20, __src, sizeof(v20));
    sub_1B5E40278(v20);
  }

  else
  {
    memcpy(v20, __src, sizeof(v20));
    sub_1B5E40278(v20);
    v11 = v3[10];
    v12 = v3[11];
    v23 = 1;
    sub_1B5EA5E50();
    v13 = type metadata accessor for SessionConfigurationEnvelope(0);
    v14 = v13[6];
    v23 = 2;
    sub_1B5EA5450();
    sub_1B5E35778(&qword_1EB90E878, MEMORY[0x1E69C61C0]);
    sub_1B5EA5EA0();
    v15 = (v3 + v13[7]);
    v16 = *v15;
    v17 = v15[1];
    v23 = 3;
    sub_1B5EA5E10();
    v18 = *(v3 + v13[8]);
    v23 = 4;
    sub_1B5EA5E70();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B5E3E918(uint64_t a1)
{
  v2 = v1;
  memcpy(v12, v1, sizeof(v12));
  sub_1B5E3F864(a1);
  v4 = v1[10];
  v5 = v1[11];
  sub_1B5EA5710();
  v6 = type metadata accessor for SessionConfigurationEnvelope(0);
  v7 = v6[6];
  sub_1B5EA5450();
  sub_1B5E35778(&qword_1EB90DB48, MEMORY[0x1E69C61C0]);
  sub_1B5EA5600();
  v8 = (v2 + v6[7]);
  if (v8[1])
  {
    v9 = *v8;
    sub_1B5EA5FF0();
    sub_1B5EA5710();
  }

  else
  {
    sub_1B5EA5FF0();
  }

  v10 = *(v2 + v6[8]);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  return MEMORY[0x1B8C8AC30](*&v10);
}

uint64_t sub_1B5E3EA40()
{
  sub_1B5EA5FD0();
  sub_1B5E3E918(v1);
  return sub_1B5EA6020();
}

uint64_t sub_1B5E3EA80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_1B5EA5450();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1B5DF33E0(&qword_1EB90E880, &qword_1B5EB6648);
  v26 = *(v27 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v8 = type metadata accessor for SessionConfigurationEnvelope(0);
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v13 = a1[4];
  v29 = a1;
  sub_1B5DF3BFC(a1, v12);
  sub_1B5E40198();
  v14 = v28;
  sub_1B5EA6030();
  if (v14)
  {
    return sub_1B5DF3FB8(v29);
  }

  v28 = v6;
  v15 = v26;
  v31 = 0;
  sub_1B5E402A8();
  sub_1B5EA5DC0();
  memcpy(v11, __src, 0x50uLL);
  __dst = 1;
  v11[10] = sub_1B5EA5D70();
  v11[11] = v16;
  __dst = 2;
  sub_1B5E35778(&unk_1EB90E890, MEMORY[0x1E69C61C0]);
  v17 = v28;
  sub_1B5EA5DC0();
  (*(v25 + 32))(v11 + v8[6], v17, v3);
  __dst = 3;
  v18 = sub_1B5EA5D30();
  v19 = (v11 + v8[7]);
  *v19 = v18;
  v19[1] = v20;
  __dst = 4;
  sub_1B5EA5D90();
  v22 = v21;
  (*(v15 + 8))(0, v27);
  *(v11 + v8[8]) = v22;
  sub_1B5E402FC(v11, v24, type metadata accessor for SessionConfigurationEnvelope);
  sub_1B5DF3FB8(v29);
  return sub_1B5E3D640(v11, type metadata accessor for SessionConfigurationEnvelope);
}

uint64_t sub_1B5E3EFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E3E3EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E3EFF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B5E3E5AC();
  *a1 = result;
  return result;
}

uint64_t sub_1B5E3F018(uint64_t a1)
{
  v2 = sub_1B5E40198();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E3F054(uint64_t a1)
{
  v2 = sub_1B5E40198();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E3F098()
{
  sub_1B5EA5FD0();
  sub_1B5E3E918(v1);
  return sub_1B5EA6020();
}

BOOL sub_1B5E3F108(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1B5EA5F00() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 16) == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_1B5EA5F00() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if ((sub_1B5E40CC4(*(a1 + 32), *(a2 + 32)) & 1) != 0 && ((*(a1 + 40) ^ *(a2 + 40)) & 1) == 0)
  {
    v8 = *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56);
    if (v8 || (sub_1B5EA5F00()) && *(a1 + 64) == *(a2 + 64))
    {
      return *(a1 + 72) == *(a2 + 72);
    }
  }

  return 0;
}

uint64_t sub_1B5E3F1F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x444970756F7267 && a2 == 0xE700000000000000;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x80000001B5EA9960 == a2;
      if (v7 || (sub_1B5EA5F00() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x80000001B5EA9980 == a2;
        if (v8 || (sub_1B5EA5F00() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6C6F506568636163 && a2 == 0xEB00000000796369;
          if (v9 || (sub_1B5EA5F00() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4965736143657375 && a2 == 0xE900000000000044;
            if (v10 || (sub_1B5EA5F00() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x666C616865426E6FLL && a2 == 0xED0000444950664FLL;
              if (v11 || (sub_1B5EA5F00() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000013 && 0x80000001B5EA99A0 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_1B5EA5F00();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1B5E3F48C(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x444970756F7267;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0x6C6F506568636163;
      break;
    case 5:
      result = 0x4965736143657375;
      break;
    case 6:
      result = 0x666C616865426E6FLL;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B5E3F5A0(void *a1)
{
  v3 = v1;
  v5 = sub_1B5DF33E0(&qword_1EB90E8D8, &qword_1B5EB6660);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E42668();
  sub_1B5EA6040();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v22) = 0;
  sub_1B5EA5E50();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v22) = 1;
    sub_1B5EA5E10();
    v22 = v3[4];
    v21[7] = 2;
    sub_1B5DF33E0(&qword_1EB90E8B8, &qword_1B5EB6658);
    sub_1B5E42710(&qword_1EB90E8E0, &qword_1EB90E8E8);
    sub_1B5EA5EA0();
    v15 = *(v3 + 40);
    LOBYTE(v22) = 3;
    sub_1B5EA5E60();
    LOBYTE(v22) = 4;
    sub_1B5E427A4();
    sub_1B5EA5EA0();
    v16 = v3[6];
    v17 = v3[7];
    LOBYTE(v22) = 5;
    sub_1B5EA5E50();
    v18 = v3[8];
    LOBYTE(v22) = 6;
    sub_1B5EA5E90();
    v19 = v3[9];
    LOBYTE(v22) = 7;
    sub_1B5EA5E90();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B5E3F864(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  sub_1B5EA5710();
  if (v2[3])
  {
    v6 = v2[2];
    sub_1B5EA5FF0();
    sub_1B5EA5710();
  }

  else
  {
    sub_1B5EA5FF0();
  }

  sub_1B5E424D4(a1, v2[4]);
  v7 = *(v2 + 40);
  sub_1B5EA5FF0();
  v8 = v2[6];
  v9 = v2[7];
  sub_1B5EA5710();
  MEMORY[0x1B8C8AC00](v2[8]);
  return MEMORY[0x1B8C8AC00](v2[9]);
}

uint64_t sub_1B5E3F8FC()
{
  sub_1B5EA5FD0();
  sub_1B5E3F864(v1);
  return sub_1B5EA6020();
}

void *sub_1B5E3F93C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1B5DF33E0(&qword_1EB90E8A8, &qword_1B5EB6650);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E42668();
  sub_1B5EA6030();
  if (v2)
  {
    sub_1B5DF3FB8(a1);
  }

  else
  {
    LOBYTE(v32[0]) = 0;
    v11 = sub_1B5EA5D70();
    v13 = v12;
    v29 = v11;
    LOBYTE(v32[0]) = 1;
    v14 = sub_1B5EA5D30();
    v16 = v15;
    v28 = v14;
    sub_1B5DF33E0(&qword_1EB90E8B8, &qword_1B5EB6658);
    LOBYTE(__src[0]) = 2;
    sub_1B5E42710(&qword_1EB90E8C0, &qword_1EB90E8C8);
    sub_1B5EA5DC0();
    v27 = v32[0];
    LOBYTE(v32[0]) = 3;
    v38 = sub_1B5EA5D80();
    LOBYTE(v32[0]) = 4;
    sub_1B5E426BC();
    sub_1B5EA5DC0();
    LOBYTE(v32[0]) = 5;
    v26 = sub_1B5EA5D70();
    v30 = v17;
    LOBYTE(v32[0]) = 6;
    v25 = sub_1B5EA5DB0();
    v39 = 7;
    v18 = sub_1B5EA5DB0();
    v38 &= 1u;
    v19 = v18;
    (*(v6 + 8))(v9, v5);
    v20 = v29;
    __src[0] = v29;
    __src[1] = v13;
    __src[2] = v28;
    __src[3] = v16;
    v21 = v27;
    __src[4] = v27;
    LOBYTE(__src[5]) = v38;
    v22 = v30;
    __src[6] = v26;
    __src[7] = v30;
    __src[8] = v25;
    __src[9] = v19;
    sub_1B5E401EC(__src, v32);
    sub_1B5DF3FB8(a1);
    v32[0] = v20;
    v32[1] = v13;
    v32[2] = v28;
    v32[3] = v16;
    v32[4] = v21;
    v33 = v38;
    v34 = v26;
    v35 = v22;
    v36 = v25;
    v37 = v19;
    sub_1B5E40278(v32);
    return memcpy(a2, __src, 0x50uLL);
  }
}

uint64_t sub_1B5E3FE34(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1B5EA5FD0();
  a4(v8, v6);
  return sub_1B5EA6020();
}

uint64_t sub_1B5E3FE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E3F1F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E3FEB0(uint64_t a1)
{
  v2 = sub_1B5E42668();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E3FEEC(uint64_t a1)
{
  v2 = sub_1B5E42668();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E3FFA8()
{
  memcpy(__dst, v0, sizeof(__dst));
  sub_1B5EA5FD0();
  sub_1B5E3F864(v2);
  return sub_1B5EA6020();
}

void *sub_1B5E40000@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1B5E3F93C(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x50uLL);
  }

  return result;
}

BOOL sub_1B5E400A0(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1B5E3F108(v4, __dst);
}

unint64_t sub_1B5E400FC()
{
  result = qword_1EB90E850;
  if (!qword_1EB90E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E850);
  }

  return result;
}

unint64_t sub_1B5E40198()
{
  result = qword_1EB90E868;
  if (!qword_1EB90E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E868);
  }

  return result;
}

unint64_t sub_1B5E40224()
{
  result = qword_1EB90E870;
  if (!qword_1EB90E870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E870);
  }

  return result;
}

unint64_t sub_1B5E402A8()
{
  result = qword_1EB90E888;
  if (!qword_1EB90E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E888);
  }

  return result;
}

uint64_t sub_1B5E402FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1B5DF5EB8(v4);
  v6 = *(v5 + 16);
  v7 = sub_1B5DFA488();
  v8(v7);
  return a2;
}

uint64_t sub_1B5E40358(void *a1)
{
  v2 = sub_1B5DF33E0(&qword_1EB90EA10, &qword_1B5EB6AA8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E42EA4();
  sub_1B5EA6040();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1B5E404CC(uint64_t a1)
{
  v2 = sub_1B5E42EA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E40508(uint64_t a1)
{
  v2 = sub_1B5E42EA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E405B4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656372756F736572 && a2 == 0xEB00000000495255)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B5EA5F00();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B5E40650(void *a1)
{
  v2 = sub_1B5DF33E0(&qword_1EB90EA00, &qword_1B5EB6AA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E42E50();
  sub_1B5EA6040();
  sub_1B5EA42B0();
  sub_1B5E35778(&qword_1EB90EA08, MEMORY[0x1E6968FB0]);
  sub_1B5EA5EA0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1B5E407C8()
{
  sub_1B5EA42B0();
  sub_1B5E35778(&qword_1EB90E8A0, MEMORY[0x1E6968FB0]);

  return sub_1B5EA5600();
}

uint64_t sub_1B5E4084C()
{
  sub_1B5EA5FD0();
  sub_1B5EA42B0();
  sub_1B5E35778(&qword_1EB90E8A0, MEMORY[0x1E6968FB0]);
  sub_1B5EA5600();
  return sub_1B5EA6020();
}

uint64_t sub_1B5E408D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1B5EA42B0();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B5DF33E0(&qword_1EB90E9E8, &qword_1B5EB6A98);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for ModelBundleEnvelope(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5E42E50();
  sub_1B5EA6030();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_1B5E35778(&qword_1EB90E9F8, MEMORY[0x1E6968FB0]);
    sub_1B5EA5DC0();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_1B5E42818(v14, v17);
  }

  return sub_1B5DF3FB8(a1);
}

uint64_t sub_1B5E40B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E405B4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B5E40B8C(uint64_t a1)
{
  v2 = sub_1B5E42E50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E40BC8(uint64_t a1)
{
  v2 = sub_1B5E42E50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5E40C0C()
{
  sub_1B5EA5FD0();
  sub_1B5EA42B0();
  sub_1B5E35778(&qword_1EB90E8A0, MEMORY[0x1E6968FB0]);
  sub_1B5EA5600();
  return sub_1B5EA6020();
}

uint64_t sub_1B5E40CC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelBundleEnvelope(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_1B5E402FC(v14, v11, type metadata accessor for ModelBundleEnvelope);
        sub_1B5E402FC(v15, v8, type metadata accessor for ModelBundleEnvelope);
        v17 = sub_1B5EA4270();
        sub_1B5E3D640(v8, type metadata accessor for ModelBundleEnvelope);
        sub_1B5E3D640(v11, type metadata accessor for ModelBundleEnvelope);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1B5E40E6C(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_1B5EA5560();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_1B5DF33E0(&qword_1EB90E968, &qword_1B5EB66B8);
  v46 = a2;
  result = sub_1B5EA5CD0();
  v12 = result;
  if (!*(v9 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v12;
    return result;
  }

  v42 = v2;
  v13 = 0;
  v14 = (v9 + 64);
  v15 = 1 << *(v9 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v9 + 64);
  v18 = (v15 + 63) >> 6;
  v43 = (v6 + 16);
  v44 = v9;
  v45 = v6;
  v47 = (v6 + 32);
  v19 = result + 64;
  if (!v17)
  {
LABEL_9:
    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v13 >= v18)
      {
        break;
      }

      v22 = v14[v13];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_35;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      sub_1B5E41824(0, (v40 + 63) >> 6, v14);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_14:
    v23 = v20 | (v13 << 6);
    v24 = *(v9 + 56);
    v25 = (*(v9 + 48) + 16 * v23);
    v27 = *v25;
    v26 = v25[1];
    v28 = *(v45 + 72);
    v29 = v24 + v28 * v23;
    if (v46)
    {
      (*v47)(v48, v29, v49);
    }

    else
    {
      (*v43)(v48, v29, v49);
    }

    v30 = *(v12 + 40);
    sub_1B5EA5FD0();
    sub_1B5EA5710();
    result = sub_1B5EA6020();
    v31 = -1 << *(v12 + 32);
    v32 = result & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
    {
      break;
    }

    v34 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v19 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    v39 = (*(v12 + 48) + 16 * v34);
    *v39 = v27;
    v39[1] = v26;
    result = (*v47)(*(v12 + 56) + v28 * v34, v48, v49);
    ++*(v12 + 16);
    v9 = v44;
    if (!v17)
    {
      goto LABEL_9;
    }
  }

  v35 = 0;
  v36 = (63 - v31) >> 6;
  while (++v33 != v36 || (v35 & 1) == 0)
  {
    v37 = v33 == v36;
    if (v33 == v36)
    {
      v33 = 0;
    }

    v35 |= v37;
    v38 = *(v19 + 8 * v33);
    if (v38 != -1)
    {
      v34 = __clz(__rbit64(~v38)) + (v33 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1B5E411EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B5DF33E0(&qword_1EB90E910, &qword_1B5EB6670);
  v35 = a2;
  result = sub_1B5EA5CD0();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v34 = v3;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      sub_1B5E41824(0, (v33 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v36 = *(*(v5 + 56) + 16 * v19);
    if ((v35 & 1) == 0)
    {

      sub_1B5E35720(v36, *(&v36 + 1));
    }

    v23 = *(v8 + 40);
    sub_1B5EA5FD0();
    sub_1B5EA5710();
    result = sub_1B5EA6020();
    v24 = -1 << *(v8 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v8 + 48) + 16 * v27);
    *v32 = v21;
    v32[1] = v22;
    *(*(v8 + 56) + 16 * v27) = v36;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v15 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1B5E4149C(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_1B5DF33E0(&qword_1EB90E950, &qword_1B5EB66A0);
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v41 - v8;
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_1B5DF33E0(&qword_1EB90E948, &qword_1B5EB6698);
  v46 = a2;
  result = sub_1B5EA5CD0();
  v12 = result;
  if (!*(v9 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v12;
    return result;
  }

  v42 = v2;
  v13 = 0;
  v14 = (v9 + 64);
  v15 = 1 << *(v9 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v9 + 64);
  v18 = (v15 + 63) >> 6;
  v43 = (v6 + 16);
  v44 = v9;
  v45 = v6;
  v47 = (v6 + 32);
  v19 = result + 64;
  if (!v17)
  {
LABEL_9:
    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v13 >= v18)
      {
        break;
      }

      v22 = v14[v13];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_35;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      sub_1B5E41824(0, (v40 + 63) >> 6, v14);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_14:
    v23 = v20 | (v13 << 6);
    v24 = *(v9 + 56);
    v25 = (*(v9 + 48) + 16 * v23);
    v27 = *v25;
    v26 = v25[1];
    v28 = *(v45 + 72);
    v29 = v24 + v28 * v23;
    if (v46)
    {
      (*v47)(v48, v29, v49);
    }

    else
    {
      (*v43)(v48, v29, v49);
    }

    v30 = *(v12 + 40);
    sub_1B5EA5FD0();
    sub_1B5EA5710();
    result = sub_1B5EA6020();
    v31 = -1 << *(v12 + 32);
    v32 = result & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
    {
      break;
    }

    v34 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v19 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    v39 = (*(v12 + 48) + 16 * v34);
    *v39 = v27;
    v39[1] = v26;
    result = (*v47)(*(v12 + 56) + v28 * v34, v48, v49);
    ++*(v12 + 16);
    v9 = v44;
    if (!v17)
    {
      goto LABEL_9;
    }
  }

  v35 = 0;
  v36 = (63 - v31) >> 6;
  while (++v33 != v36 || (v35 & 1) == 0)
  {
    v37 = v33 == v36;
    if (v33 == v36)
    {
      v33 = 0;
    }

    v35 |= v37;
    v38 = *(v19 + 8 * v33);
    if (v38 != -1)
    {
      v34 = __clz(__rbit64(~v38)) + (v33 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1B5E41824(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1B5EB1380;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_1B5E41888(uint64_t a1, char a2, uint64_t *a3)
{
  v52 = a3;
  v6 = sub_1B5EA5560();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B5DF33E0(&unk_1EB90E970, &unk_1B5EB66C0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v50 = v42 - v15;
  v49 = *(a1 + 16);
  if (!v49)
  {
LABEL_13:

    return;
  }

  v42[1] = v3;
  v43 = a1;
  v16 = 0;
  v48 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v17 = *(v13 + 48);
  v46 = v7;
  v47 = v17;
  v51 = (v7 + 32);
  v44 = v10;
  v45 = v6;
  while (1)
  {
    if (v16 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1B5EA5F40();
      __break(1u);
      goto LABEL_22;
    }

    v18 = v14;
    v19 = v50;
    sub_1B5E11D08(v48 + *(v14 + 72) * v16, v50, &unk_1EB90E970, &unk_1B5EB66C0);
    v20 = *v19;
    v21 = *(v19 + 1);
    v55 = *v19;
    v56 = v21;
    v22 = *v51;
    (*v51)(v10, &v19[v47], v6);
    v23 = *v52;
    v25 = sub_1B5E5AE4C();
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_19;
    }

    v29 = v24;
    if (v23[3] < v28)
    {
      break;
    }

    if (a2)
    {
      if (v24)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1B5DF33E0(&qword_1EB90E608, &unk_1B5EBB5D0);
      sub_1B5EA5C80();
      if (v29)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v34 = *v52;
    *(*v52 + 8 * (v25 >> 6) + 64) |= 1 << v25;
    v35 = (v34[6] + 16 * v25);
    *v35 = v20;
    v35[1] = v21;
    v6 = v45;
    v36 = v34[7] + *(v46 + 72) * v25;
    v10 = v44;
    v22(v36, v44, v45);
    v37 = v34[2];
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_20;
    }

    ++v16;
    v34[2] = v39;
    a2 = 1;
    a1 = v43;
    v14 = v18;
    if (v49 == v16)
    {
      goto LABEL_13;
    }
  }

  v30 = v52;
  sub_1B5E40E6C(v28, a2 & 1);
  v31 = *v30;
  v32 = sub_1B5E5AE4C();
  if ((v29 & 1) != (v33 & 1))
  {
    goto LABEL_21;
  }

  v25 = v32;
  if ((v29 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v40 = swift_allocError();
  swift_willThrow();
  v57 = v40;
  v41 = v40;
  sub_1B5DF33E0(&qword_1EB90E920, &qword_1B5EB6680);
  if ((swift_dynamicCast() & 1) == 0)
  {

    (*(v46 + 8))(v44, v45);

    return;
  }

LABEL_22:
  v53 = 0;
  v54 = 0xE000000000000000;
  sub_1B5EA5BC0();
  MEMORY[0x1B8C8A360](0xD00000000000001BLL, 0x80000001B5EA9920);
  sub_1B5EA5C60();
  MEMORY[0x1B8C8A360](39, 0xE100000000000000);
  sub_1B5EA5CA0();
  __break(1u);
}

void sub_1B5E41D14(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v28 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v28 == v4)
    {
LABEL_17:

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1B5EA5F40();
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(i - 1);
    v6 = *i;
    v9 = *(i - 3);
    v8 = *(i - 2);

    sub_1B5E35720(v7, v6);
    if (!v8)
    {
      goto LABEL_17;
    }

    v30 = v6;
    v10 = *a3;
    v12 = sub_1B5E5AE4C();
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_20;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1B5DF33E0(&qword_1EB90E918, &qword_1B5EB6678);
      sub_1B5EA5C80();
      if (v16)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v20 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v21 = (v20[6] + 16 * v12);
    *v21 = v9;
    v21[1] = v8;
    v22 = (v20[7] + 16 * v12);
    *v22 = v7;
    v22[1] = v30;
    v23 = v20[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_21;
    }

    v20[2] = v25;
    ++v4;
    a2 = 1;
  }

  sub_1B5E411EC(v15, a2 & 1);
  v17 = *a3;
  v18 = sub_1B5E5AE4C();
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_22;
  }

  v12 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v26 = swift_allocError();
  swift_willThrow();
  v27 = v26;
  sub_1B5DF33E0(&qword_1EB90E920, &qword_1B5EB6680);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_1B5E24A58(v7, v30);

    return;
  }

LABEL_23:
  sub_1B5EA5BC0();
  MEMORY[0x1B8C8A360](0xD00000000000001BLL, 0x80000001B5EA9920);
  sub_1B5EA5C60();
  MEMORY[0x1B8C8A360](39, 0xE100000000000000);
  sub_1B5EA5CA0();
  __break(1u);
}

void sub_1B5E42014(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v60 = a4;
  v7 = sub_1B5DF33E0(&qword_1EB90E950, &qword_1B5EB66A0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v48 - v10;
  v53 = sub_1B5DF33E0(&qword_1EB90E958, &qword_1B5EB66A8);
  v12 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v48 - v13;
  v14 = *(a1 + 16);
  v54 = v8;
  v55 = v14;
  v51 = v8 + 16;
  v15 = v8 + 32;

  v16 = 0;
  v56 = a1;
  v17 = (a1 + 40);
  v49 = a2;
  v50 = v7;
  while (1)
  {
    if (v55 == v16)
    {
LABEL_18:
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      return;
    }

    if (v16 >= *(v56 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      sub_1B5EA5F40();
      __break(1u);
      goto LABEL_25;
    }

    v18 = *(a2 + 16);
    if (v16 == v18)
    {
      goto LABEL_18;
    }

    if (v16 >= v18)
    {
      goto LABEL_21;
    }

    v19 = *(v17 - 1);
    v20 = *v17;
    v57 = v17;
    v58 = v16;
    v21 = v54;
    v22 = a2 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v59 = *(v54 + 72);
    v23 = *(v53 + 48);
    v24 = v15;
    v25 = v52;
    (*(v54 + 16))(&v52[v23], v22 + v59 * v16, v7);
    v63 = v19;
    v64 = v20;
    v26 = *(v21 + 32);
    v27 = &v25[v23];
    v15 = v24;
    v28 = v11;
    v26(v11, v27, v7);
    v29 = *v60;

    v31 = sub_1B5E5AE4C();
    v32 = v29[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_22;
    }

    v35 = v30;
    if (v29[3] < v34)
    {
      break;
    }

    if (a3)
    {
      if (v30)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1B5DF33E0(&qword_1EB90E960, &qword_1B5EB66B0);
      sub_1B5EA5C80();
      if (v35)
      {
        goto LABEL_16;
      }
    }

LABEL_13:
    v40 = *v60;
    *(*v60 + 8 * (v31 >> 6) + 64) |= 1 << v31;
    v41 = (v40[6] + 16 * v31);
    *v41 = v19;
    v41[1] = v20;
    v42 = v40[7] + v31 * v59;
    v11 = v28;
    v7 = v50;
    v26(v42, v28, v50);
    v43 = v40[2];
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (v44)
    {
      goto LABEL_23;
    }

    v40[2] = v45;
    v17 = v57 + 2;
    v16 = v58 + 1;
    a3 = 1;
    a2 = v49;
  }

  v36 = v60;
  sub_1B5E4149C(v34, a3 & 1);
  v37 = *v36;
  v38 = sub_1B5E5AE4C();
  if ((v35 & 1) != (v39 & 1))
  {
    goto LABEL_24;
  }

  v31 = v38;
  if ((v35 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_16:
  v46 = swift_allocError();
  swift_willThrow();
  v65 = v46;
  v47 = v46;
  sub_1B5DF33E0(&qword_1EB90E920, &qword_1B5EB6680);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v54 + 8))(v28, v50);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return;
  }

LABEL_25:
  v61 = 0;
  v62 = 0xE000000000000000;
  sub_1B5EA5BC0();
  MEMORY[0x1B8C8A360](0xD00000000000001BLL, 0x80000001B5EA9920);
  sub_1B5EA5C60();
  MEMORY[0x1B8C8A360](39, 0xE100000000000000);
  sub_1B5EA5CA0();
  __break(1u);
}

uint64_t sub_1B5E424D4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ModelBundleEnvelope(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x1B8C8AC00](v8);
  if (v8)
  {
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_1B5E402FC(v10, v7, type metadata accessor for ModelBundleEnvelope);
      sub_1B5EA42B0();
      sub_1B5E35778(&qword_1EB90E8A0, MEMORY[0x1E6968FB0]);
      sub_1B5EA5600();
      result = sub_1B5E3D640(v7, type metadata accessor for ModelBundleEnvelope);
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t sub_1B5E42668()
{
  result = qword_1EB90E8B0;
  if (!qword_1EB90E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E8B0);
  }

  return result;
}

unint64_t sub_1B5E426BC()
{
  result = qword_1EB90E8D0;
  if (!qword_1EB90E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E8D0);
  }

  return result;
}

void sub_1B5E42710(unint64_t *a1, unint64_t *a2)
{
  if (!*a1)
  {
    sub_1B5DFD694(&qword_1EB90E8B8, &qword_1B5EB6658);
    sub_1B5E35778(a2, type metadata accessor for ModelBundleEnvelope);
    sub_1B5E26240();
    atomic_store(swift_getWitnessTable(), a1);
  }

  sub_1B5E437EC();
}

unint64_t sub_1B5E427A4()
{
  result = qword_1EB90E8F0;
  if (!qword_1EB90E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E8F0);
  }

  return result;
}

uint64_t sub_1B5E427F8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1B5E42804(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B5E35720(a1, a2);
  }

  return a1;
}

uint64_t sub_1B5E42818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelBundleEnvelope(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B5E4287C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1B5EA5B10();
  v4 = *(a1 + 36);
  return result;
}

_BYTE *storeEnumTagSinglePayload for TGSessionConfigurationEnvelope.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SessionConfigurationEnvelope.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SessionConfigurationEnvelope.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B5E42B34()
{
  result = sub_1B5EA42B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B5E42BEC()
{
  result = qword_1EB90E9B0;
  if (!qword_1EB90E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E9B0);
  }

  return result;
}

unint64_t sub_1B5E42C44()
{
  result = qword_1EB90E9B8;
  if (!qword_1EB90E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E9B8);
  }

  return result;
}

unint64_t sub_1B5E42C9C()
{
  result = qword_1EB90E9C0;
  if (!qword_1EB90E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E9C0);
  }

  return result;
}

unint64_t sub_1B5E42CF4()
{
  result = qword_1EB90E9C8;
  if (!qword_1EB90E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E9C8);
  }

  return result;
}

unint64_t sub_1B5E42D4C()
{
  result = qword_1EB90E9D0;
  if (!qword_1EB90E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E9D0);
  }

  return result;
}

unint64_t sub_1B5E42DA4()
{
  result = qword_1EB90E9D8;
  if (!qword_1EB90E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E9D8);
  }

  return result;
}

unint64_t sub_1B5E42DFC()
{
  result = qword_1EB90E9E0;
  if (!qword_1EB90E9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E9E0);
  }

  return result;
}

unint64_t sub_1B5E42E50()
{
  result = qword_1EB90E9F0;
  if (!qword_1EB90E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90E9F0);
  }

  return result;
}

unint64_t sub_1B5E42EA4()
{
  result = qword_1EB90EA18;
  if (!qword_1EB90EA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90EA18);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ModelBundleEnvelope.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B5E42FB8()
{
  result = qword_1EB90EA20;
  if (!qword_1EB90EA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90EA20);
  }

  return result;
}

unint64_t sub_1B5E43010()
{
  result = qword_1EB90EA28;
  if (!qword_1EB90EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90EA28);
  }

  return result;
}

unint64_t sub_1B5E43068()
{
  result = qword_1EB90EA30;
  if (!qword_1EB90EA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90EA30);
  }

  return result;
}

unint64_t sub_1B5E430C0()
{
  result = qword_1EB90EA38;
  if (!qword_1EB90EA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90EA38);
  }

  return result;
}

unint64_t sub_1B5E43118()
{
  result = qword_1EB90EA40;
  if (!qword_1EB90EA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90EA40);
  }

  return result;
}

uint64_t sub_1B5E43274()
{

  return swift_beginAccess();
}

uint64_t sub_1B5E43294()
{

  return swift_beginAccess();
}

uint64_t sub_1B5E432D8()
{

  return sub_1B5EA4670();
}

void sub_1B5E43318(uint64_t a1@<X8>)
{
  v5 = (v1 + a1);
  *v5 = v2;
  v5[1] = v3;
  v6 = *(v4 - 112);
  *(v4 - 104) = v1;
  *(v4 - 96) = v6;
}

uint64_t sub_1B5E4351C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t sub_1B5E4356C()
{

  return _swift_stdlib_reportUnimplementedInitializer();
}

uint64_t sub_1B5E43584@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];

  return sub_1B5E35720(v4, v5);
}

uint64_t sub_1B5E435A4()
{

  return sub_1B5EA5670();
}

uint64_t sub_1B5E435D0()
{

  return sub_1B5EA4670();
}

void sub_1B5E435FC(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v3 = *v2;
  v4 = v2[1];
}

__n128 sub_1B5E43608()
{
  result = *(v0 - 128);
  *(v0 - 112) = *(v0 - 144);
  *(v0 - 96) = result;
  v2 = *(v0 - 88);
  return result;
}

uint64_t sub_1B5E43648()
{

  return sub_1B5EA5670();
}

uint64_t sub_1B5E436F4()
{

  return sub_1B5EA4670();
}

uint64_t sub_1B5E43710()
{

  return sub_1B5EA5670();
}

uint64_t sub_1B5E43734()
{

  return swift_dynamicCast();
}

uint64_t sub_1B5E4378C()
{

  return swift_unexpectedError();
}

uint64_t sub_1B5E437AC()
{

  return sub_1B5E11D08(v0, v1, v2, v3);
}

uint64_t sub_1B5E437CC()
{

  return sub_1B5EA5670();
}

void GenerativeExperiencesSessionClient.__allocating_init(_:)()
{
  v0 = objc_allocWithZone(sub_1B5E43350());
  sub_1B5E2624C();
  GenerativeExperiencesSessionClient.init(_:)();
}

void GenerativeExperiencesSessionClient.__allocating_init(identifer:)()
{
  v1 = objc_allocWithZone(v0);
  sub_1B5E5F940();
  GenerativeExperiencesSessionClient.init(identifer:)();
}

size_t sub_1B5E4386C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_1B5E6E0D4(*(a1 + 16), 0);
  v3 = *(*(sub_1B5EA4EE0() - 8) + 80);
  sub_1B5E8FE68();
  v5 = v4;
  sub_1B5E5ECC8();
  if (v5 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1B5E43934@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B5DF33E0(&qword_1EB90DBA0, &qword_1B5EAFC90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v3);
  v8 = &v25 - v7;
  if (*(v1 + 32) != 1)
  {
    v10 = *(v1 + 8);
    v11 = *(*v1 + 16);
    if (v10 != v11)
    {
      if (v10 >= v11)
      {
        __break(1u);
      }

      else
      {
        v12 = *(v4 + 16);
        v13 = *v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10;
        *(v1 + 8) = v10 + 1;
        result = v12(v8, v13, v3);
        v15 = *(v1 + 16);
        v14 = *(v1 + 24);
        v16 = *(v15 + 16);
        if (v14 == v16)
        {
          (*(v4 + 8))(v8, v3);
          goto LABEL_9;
        }

        if (v14 < v16)
        {
          v20 = *(sub_1B5DF33E0(&qword_1EB90EC00, &qword_1B5EB6DC8) - 8);
          v21 = v14 + 1;
          v22 = v15 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v14;
          *(v1 + 24) = v21;
          v23 = sub_1B5DF33E0(&qword_1EB90EDA0, &qword_1B5EB7188);
          v24 = *(v23 + 48);
          (*(v4 + 32))(a1, v8, v3);
          sub_1B5E5EEBC(v22, a1 + v24, &qword_1EB90EC00, &qword_1B5EB6DC8);
          v18 = a1;
          v19 = 0;
          v17 = v23;
          return sub_1B5DF3658(v18, v19, 1, v17);
        }
      }

      __break(1u);
      return result;
    }

LABEL_9:
    *(v1 + 32) = 1;
    v17 = sub_1B5DF33E0(&qword_1EB90EDA0, &qword_1B5EB7188);
    v18 = a1;
    v19 = 1;
    return sub_1B5DF3658(v18, v19, 1, v17);
  }

  v9 = sub_1B5DF33E0(&qword_1EB90EDA0, &qword_1B5EB7188);

  return sub_1B5DF3658(a1, 1, 1, v9);
}

uint64_t sub_1B5E43BE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1B5DF33E0(&qword_1EB90EC18, &qword_1B5EB6E90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v25 - v8;
  v10 = sub_1B5DF33E0(&qword_1EB90EBD8, &qword_1B5EB6DA0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v25 - v13;
  if (sub_1B5DF46E0(a1, 1, v10) == 1)
  {
    sub_1B5DF4428(a1, &qword_1EB90EC18, &qword_1B5EB6E90);
    sub_1B5E5D330(v9);
    v15 = sub_1B5EA4340();
    (*(*(v15 - 8) + 8))(a2, v15);
    return sub_1B5DF4428(v9, &qword_1EB90EC18, &qword_1B5EB6E90);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1B5EA01F0(v14, a2, isUniquelyReferenced_nonNull_native, v19, v20, v21, v22, v23, v25[0], *v3, v25[2], v25[3]);
    *v3 = v25[1];
    v24 = sub_1B5EA4340();
    return (*(*(v24 - 8) + 8))(a2, v24);
  }
}

uint64_t sub_1B5E43E28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1B5DF33E0(&qword_1EB90EC30, &qword_1B5EB6EA8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v25 - v8;
  v10 = sub_1B5DF33E0(&qword_1EB90EBE8, &qword_1B5EB6DA8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v25 - v13;
  if (sub_1B5DF46E0(a1, 1, v10) == 1)
  {
    sub_1B5DF4428(a1, &qword_1EB90EC30, &qword_1B5EB6EA8);
    sub_1B5E5D330(v9);
    v15 = sub_1B5EA4340();
    (*(*(v15 - 8) + 8))(a2, v15);
    return sub_1B5DF4428(v9, &qword_1EB90EC30, &qword_1B5EB6EA8);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1B5EA04A8(v14, a2, isUniquelyReferenced_nonNull_native, v19, v20, v21, v22, v23, v25[0], *v3, v25[2], v25[3]);
    *v3 = v25[1];
    v24 = sub_1B5EA4340();
    return (*(*(v24 - 8) + 8))(a2, v24);
  }
}

void sub_1B5E44070()
{
  sub_1B5E601CC();
  v1 = sub_1B5DF33E0(&qword_1EB90ECD8, &qword_1B5EB70B0);
  sub_1B5E01CF8(v1);
  v3 = *(v2 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5E5F1E8();
  v5 = sub_1B5DF33E0(&qword_1EB90ECD0, &unk_1B5EBB660);
  sub_1B5DF5DA8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v10);
  sub_1B5E5F57C();
  v11 = sub_1B5E5F8E0();
  sub_1B5E5F5A8(v11, v12, v5);
  if (v13)
  {
    v14 = sub_1B5E5F78C();
    sub_1B5DF4428(v14, v15, &qword_1B5EB70B0);
    sub_1B5E43768();
    sub_1B5E5E068(v16);

    v17 = sub_1B5E5FA54();
    sub_1B5DF4428(v17, v18, &qword_1B5EB70B0);
  }

  else
  {
    v19 = *(v7 + 32);
    v20 = sub_1B5E5F8A8();
    v21(v20);
    v22 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    v23 = *v0;
    sub_1B5EA068C();

    *v0 = v23;
  }

  sub_1B5E601B8();
}

uint64_t *sub_1B5E4420C()
{
  if (qword_1EB90CE70 != -1)
  {
    sub_1B5E5F118();
  }

  return &qword_1EB90CE78;
}

id static GenerativeExperiencesSessionXPCService.interface.getter()
{
  if (qword_1EB90CE70 != -1)
  {
    sub_1B5E5F118();
  }

  sub_1B5E2D094();
  v0 = qword_1EB90CE78;

  return v0;
}

void static GenerativeExperiencesSessionXPCService.interface.setter(uint64_t a1)
{
  if (qword_1EB90CE70 != -1)
  {
    sub_1B5E5F118();
  }

  sub_1B5E2D240();
  v2 = qword_1EB90CE78;
  qword_1EB90CE78 = a1;
}

uint64_t static GenerativeExperiencesSessionXPCService.interface.modify()
{
  if (qword_1EB90CE70 != -1)
  {
    sub_1B5E5F118();
  }

  sub_1B5E5F324();
  sub_1B5E34E78();
  return sub_1B5E2D0FC();
}

id sub_1B5E44388@<X0>(void *a1@<X8>)
{
  sub_1B5E4420C();
  swift_beginAccess();
  v2 = qword_1EB90CE78;
  *a1 = qword_1EB90CE78;

  return v2;
}

void sub_1B5E443E8(id *a1)
{
  v1 = *a1;
  sub_1B5E4420C();
  swift_beginAccess();
  v2 = qword_1EB90CE78;
  qword_1EB90CE78 = v1;
}

uint64_t static GenerativeExperiencesSessionXPCService.serviceName.modify()
{
  sub_1B5E5F324();
  sub_1B5E34E78();
  return sub_1B5E2D0FC();
}

uint64_t sub_1B5E444B0(uint64_t *a1, uint64_t *a2)
{
  sub_1B5E2D094();
  v4 = *a1;
  v5 = *a2;

  return sub_1B5E5F324();
}

uint64_t static GenerativeExperiencesSessionXPCService.entitlementName.modify()
{
  sub_1B5E5F324();
  sub_1B5E34E78();
  return sub_1B5E2D0FC();
}

uint64_t sub_1B5E4454C()
{
  v0 = sub_1B5EA53B0();
  sub_1B5E1FE5C(v0, qword_1EB90CE88);
  v1 = sub_1B5DFD794(v0, qword_1EB90CE88);
  if (qword_1EB90D178 != -1)
  {
    swift_once();
  }

  v2 = sub_1B5DFD794(v0, qword_1EB90D180);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1B5E44614()
{
  if (qword_1EB90CE80 != -1)
  {
    sub_1B5E5EF54();
  }

  v0 = sub_1B5EA53B0();

  return sub_1B5DFD794(v0, qword_1EB90CE88);
}

uint64_t static GenerativeExperiencesSessionXPCService.logger.getter()
{
  if (qword_1EB90CE80 != -1)
  {
    sub_1B5E5EF54();
  }

  v0 = sub_1B5EA53B0();
  sub_1B5DFD794(v0, qword_1EB90CE88);
  sub_1B5E2D094();
  sub_1B5E2D1D8(v0);
  v2 = *(v1 + 16);
  v3 = sub_1B5E5F318();
  return v4(v3);
}

uint64_t static GenerativeExperiencesSessionXPCService.logger.setter()
{
  if (qword_1EB90CE80 != -1)
  {
    sub_1B5E5EF54();
  }

  v0 = sub_1B5EA53B0();
  sub_1B5DFD794(v0, qword_1EB90CE88);
  sub_1B5E34E78();
  v1 = *(v0 - 8);
  v2 = *(v1 + 24);
  v3 = sub_1B5E5F940();
  v4(v3);
  swift_endAccess();
  v5 = *(v1 + 8);
  v6 = sub_1B5DFA488();
  return v7(v6);
}

uint64_t static GenerativeExperiencesSessionXPCService.logger.modify()
{
  if (qword_1EB90CE80 != -1)
  {
    sub_1B5E5EF54();
  }

  v0 = sub_1B5EA53B0();
  sub_1B5DFD794(v0, qword_1EB90CE88);
  sub_1B5E34E78();
  return sub_1B5E2D0FC();
}

uint64_t sub_1B5E44854@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B5E44614();
  swift_beginAccess();
  v3 = sub_1B5EA53B0();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_1B5E448D0(uint64_t a1)
{
  v2 = sub_1B5E44614();
  swift_beginAccess();
  v3 = sub_1B5EA53B0();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t *sub_1B5E44968()
{
  if (qword_1EB90CEA8 != -1)
  {
    sub_1B5E5F0F8();
  }

  return &qword_1EB90CEA0;
}

uint64_t static GenerativeExperiencesSessionXPCService.selectorClasses.getter()
{
  if (qword_1EB90CEA8 != -1)
  {
    sub_1B5E5F0F8();
  }

  sub_1B5E2D094();
}

uint64_t static GenerativeExperiencesSessionXPCService.selectorClasses.setter(uint64_t a1)
{
  if (qword_1EB90CEA8 != -1)
  {
    sub_1B5E5F0F8();
  }

  sub_1B5E2D240();
  qword_1EB90CEA0 = a1;
}

uint64_t static GenerativeExperiencesSessionXPCService.selectorClasses.modify()
{
  if (qword_1EB90CEA8 != -1)
  {
    sub_1B5E5F0F8();
  }

  sub_1B5E5F324();
  sub_1B5E34E78();
  return sub_1B5E2D0FC();
}

uint64_t sub_1B5E44AD8@<X0>(void *a1@<X8>)
{
  sub_1B5E44968();
  swift_beginAccess();
  *a1 = qword_1EB90CEA0;
}

uint64_t sub_1B5E44B2C(uint64_t *a1)
{
  v1 = *a1;

  sub_1B5E44968();
  swift_beginAccess();
  qword_1EB90CEA0 = v1;
}

void static GenerativeExperiencesSessionXPCService.customize(serverInterface:)(void *a1)
{
  v178 = [objc_opt_self() interfaceWithProtocol_];
  sub_1B5E479E8(0, &qword_1ED7D2B98, 0x1E695DFD8);
  sub_1B5DF33E0(&qword_1EB90EAD0, &qword_1B5EB6CC0);
  v1 = sub_1B5E5F9CC();
  sub_1B5E5F514(v1, xmmword_1B5EB6C60);
  v2 = type metadata accessor for DocumentRegistrationXPCResponse();
  v1[3].n128_u64[1] = sub_1B5DF33E0(&qword_1EB90EAD8, &qword_1B5EB6CC8);
  v1[2].n128_u64[0] = v2;
  v177 = sub_1B5E479E8(0, &qword_1ED7D29B8, 0x1E695DEF0);
  v3 = sub_1B5DF33E0(&qword_1EB90EAE0, &qword_1B5EB6CD0);
  v1[5].n128_u64[1] = v3;
  v1[4].n128_u64[0] = v177;
  v4 = MEMORY[0x1B8C8A6C0](v1);
  sub_1B5E479E8(0, &qword_1ED7D2B80, 0x1E69E58C0);
  v5 = sub_1B5E47980();
  sub_1B5E5FA60();
  v6 = sub_1B5EA5A00();

  sub_1B5E46144(v6);

  sub_1B5E5FF70();
  v7 = sub_1B5EA59F0();

  sub_1B5E601F8(v178, sel_setClasses_forSelector_argumentIndex_ofReply_, v7, sel_sessionDidProduceDocumentRegistrationStatusFor_documentID_registrationStatus_isComplete_);

  v8 = sub_1B5E5F9CC();
  sub_1B5E5F330(v8);
  v9 = type metadata accessor for CompletePromptResponseElementXPCEnvelope();
  v10 = sub_1B5DF33E0(&qword_1EB90EAE8, &qword_1B5EB6CD8);
  v8[2].n128_u64[0] = v9;
  v8[5].n128_u64[1] = v3;
  v8[3].n128_u64[1] = v10;
  v8[4].n128_u64[0] = v177;
  v11 = MEMORY[0x1B8C8A6C0](v8);
  sub_1B5E5FA60();
  v12 = sub_1B5EA5A00();

  sub_1B5E46144(v12);

  sub_1B5E5FF70();
  v13 = sub_1B5EA59F0();

  sub_1B5E5FD70(v178, &off_1E7C224F8, v13, sel_sessionDidProduceCompletionResponseFor_element_isComplete_);

  v14 = sub_1B5E5F9CC();
  sub_1B5E5F330(v14);
  v15 = type metadata accessor for GenerativeErrorXPCEnvelope();
  v16 = sub_1B5DF33E0(&qword_1EB90EAF0, &qword_1B5EB6CE0);
  v14[2].n128_u64[0] = v15;
  v14[5].n128_u64[1] = v3;
  v14[3].n128_u64[1] = v16;
  v14[4].n128_u64[0] = v177;
  v17 = MEMORY[0x1B8C8A6C0](v14);
  sub_1B5E5FA60();
  v18 = sub_1B5EA5A00();

  sub_1B5E46144(v18);
  sub_1B5E60210();
  v19 = sub_1B5EA59F0();

  sub_1B5E5FD70(v178, sel_setClasses_forSelector_argumentIndex_ofReply_, v19, sel_sessionDidEncounterCompletionErrorFor_generativeError_);

  v20 = sub_1B5E5F9CC();
  v21 = sub_1B5E5F330(v20);
  v22[4] = v15;
  v22[11] = v3;
  v22[7] = v16;
  v22[8] = v177;
  v23 = MEMORY[0x1B8C8A6C0](v21);
  sub_1B5E5FA60();
  v24 = sub_1B5EA5A00();

  v25 = sub_1B5E46144(v24);

  sub_1B5EA59F0();
  sub_1B5E60210();
  sub_1B5E601F8(v178, sel_setClasses_forSelector_argumentIndex_ofReply_, v24, sel_sessionDidEncounterRegistrationErrorFor_documentID_generativeError_);

  v26 = sub_1B5E5F9CC();
  sub_1B5E5F0A8(v26);
  v27 = type metadata accessor for CompletePromptResponseXPCEnvelope();
  v28 = sub_1B5DF33E0(&qword_1EB90EAF8, &qword_1B5EB6CE8);
  v25[4] = v27;
  v25[11] = v3;
  v25[7] = v28;
  v25[8] = v177;
  MEMORY[0x1B8C8A6C0](v25);
  sub_1B5E5F598();
  v29 = sub_1B5EA5A00();

  v30 = sub_1B5E46144(v29);

  sub_1B5EA59F0();
  sub_1B5E60210();
  sub_1B5E5FD70(v178, sel_setClasses_forSelector_argumentIndex_ofReply_, v29, sel_sessionDidProduceOneShotCompletionFor_completion_);

  v31 = sub_1B5E5F9CC();
  v32 = sub_1B5E5F330(v31);
  v33[4] = v15;
  v33[11] = v3;
  v33[7] = v16;
  v33[8] = v177;
  MEMORY[0x1B8C8A6C0](v32);
  sub_1B5E5F598();
  v34 = sub_1B5EA5A00();

  sub_1B5E46144(v34);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  sub_1B5E5FD70(v178, sel_setClasses_forSelector_argumentIndex_ofReply_, v34, sel_sessionDidProduceOneShotCompletionErrorFor_generativeError_);

  v35 = sub_1B5E5F9CC();
  sub_1B5E5F0A8(v35);
  v174 = type metadata accessor for SessionConfigurationXPCEnvelope();
  v173 = sub_1B5DF33E0(&qword_1EB90EB00, &qword_1B5EB6CF0);
  v30[4] = v174;
  v30[11] = v3;
  v30[7] = v173;
  v30[8] = v177;
  MEMORY[0x1B8C8A6C0](v30);
  sub_1B5E5F598();
  v36 = sub_1B5EA5A00();

  sub_1B5E46144(v36);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  v37 = sub_1B5E5FC9C();
  v39 = v38;
  [v37 v40];

  v41 = sub_1B5E5F9CC();
  sub_1B5E5F0A8(v41);
  v171 = type metadata accessor for ChatMessagesXPCEnvelope();
  v170 = sub_1B5DF33E0(&qword_1EB90EB08, &qword_1B5EB6CF8);
  v30[4] = v171;
  v30[11] = v3;
  v30[7] = v170;
  v30[8] = v177;
  MEMORY[0x1B8C8A6C0](v30);
  sub_1B5E5F798();
  v42 = sub_1B5EA5A00();

  sub_1B5E46144(v42);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  sub_1B5E5FD70(a1, sel_setClasses_forSelector_argumentIndex_ofReply_, v42, v39);

  v43 = sub_1B5E5F9CC();
  sub_1B5E5F0A8(v43);
  v169 = type metadata accessor for TemplateXPCEnvelope();
  v168 = sub_1B5DF33E0(&qword_1EB90EB10, &qword_1B5EB6D00);
  v30[4] = v169;
  v30[11] = v3;
  v30[7] = v168;
  v30[8] = v177;
  MEMORY[0x1B8C8A6C0](v30);
  sub_1B5E5F798();
  v44 = sub_1B5EA5A00();

  sub_1B5E46144(v44);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  v45 = sub_1B5E5FC90();
  v175 = v39;
  sub_1B5E601F8(v45, v46, v47, v39);

  v48 = swift_allocObject();
  sub_1B5E5F514(v48, xmmword_1B5EB6C70);
  v166 = type metadata accessor for BindingVariablesXPCEnvelope();
  v167 = sub_1B5DF33E0(&qword_1EB90EB18, &qword_1B5EB6D08);
  v48[3].n128_u64[1] = v167;
  v48[2].n128_u64[0] = v166;
  v164 = sub_1B5E479E8(0, &qword_1EB90CD90, 0x1E695DF20);
  v165 = sub_1B5DF33E0(&qword_1EB90EB20, &qword_1B5EB6D10);
  v48[5].n128_u64[1] = v165;
  v48[4].n128_u64[0] = v164;
  v163 = sub_1B5E479E8(0, &qword_1EB90CD58, 0x1E696AEC0);
  v162 = sub_1B5DF33E0(&qword_1EB90EB28, &qword_1B5EB6D18);
  v48[6].n128_u64[0] = v163;
  v48[9].n128_u64[1] = v3;
  v48[7].n128_u64[1] = v162;
  v48[8].n128_u64[0] = v177;
  v49 = MEMORY[0x1B8C8A6C0](v48);
  v50 = sub_1B5EA5A00();

  sub_1B5E46144(v50);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  [a1 setClasses:v50 forSelector:v39 argumentIndex:3 ofReply:0];

  v51 = sub_1B5E601E0();
  sub_1B5E5F514(v51, xmmword_1B5EB6C80);
  v160 = type metadata accessor for DocumentIdentifierXPCEnvelope();
  v161 = sub_1B5DF33E0(&qword_1EB90EB30, &qword_1B5EB6D20);
  v51[3].n128_u64[1] = v161;
  v51[2].n128_u64[0] = v160;
  v52 = sub_1B5E479E8(0, &qword_1ED7D2B90, 0x1E695DEC8);
  v53 = sub_1B5DF33E0(&qword_1EB90EB38, &qword_1B5EB6D28);
  v51[4].n128_u64[0] = v52;
  v54 = v52;
  v172 = v52;
  v51[7].n128_u64[1] = v3;
  v51[5].n128_u64[1] = v53;
  v51[6].n128_u64[0] = v177;
  v55 = MEMORY[0x1B8C8A6C0](v51);
  v56 = sub_1B5EA5A00();

  sub_1B5E46144(v56);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  v57 = sub_1B5E5FC90();
  [v57 v58];

  v59 = sub_1B5E601E0();
  sub_1B5E5F514(v59, xmmword_1B5EB6C80);
  v159 = type metadata accessor for ToolTypeXPCEnvelope();
  v158 = sub_1B5DF33E0(&qword_1EB90EB40, &qword_1B5EB6D30);
  v59[2].n128_u64[0] = v159;
  v59[3].n128_u64[1] = v158;
  v59[4].n128_u64[0] = v54;
  v59[7].n128_u64[1] = v3;
  v59[5].n128_u64[1] = v53;
  v59[6].n128_u64[0] = v177;
  MEMORY[0x1B8C8A6C0](v59);
  sub_1B5E5F598();
  v60 = sub_1B5EA5A00();

  sub_1B5E46144(v60);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  v61 = sub_1B5E5FC90();
  [v61 v62];

  v63 = sub_1B5E5F9CC();
  sub_1B5E5F0A8(v63);
  v157 = type metadata accessor for ToolChoiceXPCEnvelope();
  v156 = sub_1B5DF33E0(&qword_1EB90EB48, &qword_1B5EB6D38);
  v59[2].n128_u64[0] = v157;
  v59[5].n128_u64[1] = v3;
  v59[3].n128_u64[1] = v156;
  v59[4].n128_u64[0] = v177;
  MEMORY[0x1B8C8A6C0](v59);
  sub_1B5E5F798();
  v64 = sub_1B5EA5A00();

  sub_1B5E46144(v64);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  v65 = sub_1B5E5FC90();
  [v65 v66];

  v67 = sub_1B5E5F9CC();
  sub_1B5E5F0A8(v67);
  v154 = type metadata accessor for SamplingParametersXPCEnvelope();
  v155 = sub_1B5DF33E0(&qword_1EB90EB50, &qword_1B5EB6D40);
  v59[2].n128_u64[0] = v154;
  v59[5].n128_u64[1] = v3;
  v59[3].n128_u64[1] = v155;
  v59[4].n128_u64[0] = v177;
  v68 = MEMORY[0x1B8C8A6C0](v59);
  v69 = sub_1B5EA5A00();

  sub_1B5E46144(v69);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  [a1 setClasses:v69 forSelector:v175 argumentIndex:7 ofReply:0];

  v70 = sub_1B5E5F9CC();
  sub_1B5E5F0A8(v70);
  v153 = type metadata accessor for SchemaXPCEnvelope();
  v152 = sub_1B5DF33E0(&qword_1EB90EB58, &qword_1B5EB6D48);
  v68[4] = v153;
  v68[11] = v3;
  v68[7] = v152;
  v68[8] = v177;
  MEMORY[0x1B8C8A6C0](v68);
  sub_1B5E60024();
  v71 = sub_1B5EA5A00();

  sub_1B5E46144(v71);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  [a1 setClasses:v71 forSelector:v175 argumentIndex:8 ofReply:0];

  v72 = sub_1B5E5F9CC();
  sub_1B5E5F0A8(v72);
  v151 = type metadata accessor for StringRenderedPromptSanitizerXPCEnvelope();
  v150 = sub_1B5DF33E0(&qword_1EB90EB60, &qword_1B5EB6D50);
  v68[4] = v151;
  v68[11] = v3;
  v68[7] = v150;
  v68[8] = v177;
  v73 = MEMORY[0x1B8C8A6C0](v68);
  v74 = sub_1B5EA5A00();

  sub_1B5E46144(v74);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  v75 = sub_1B5E5FC9C();
  [v75 v76];

  v77 = sub_1B5E5F9CC();
  sub_1B5E5F0A8(v77);
  v149 = type metadata accessor for StringResponseSanitizerXPCEnvelope();
  v148 = sub_1B5DF33E0(&qword_1EB90EB68, &qword_1B5EB6D58);
  v73[4] = v149;
  v73[11] = v3;
  v73[7] = v148;
  v73[8] = v177;
  v78 = MEMORY[0x1B8C8A6C0](v73);
  v79 = sub_1B5EA5A00();

  sub_1B5E46144(v79);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  v80 = sub_1B5E5FC9C();
  [v80 v81];

  [a1 setInterface:v178 forSelector:v175 argumentIndex:13 ofReply:0];
  v82 = sub_1B5E5F9CC();
  v83 = sub_1B5E5F330(v82);
  v84[4] = v174;
  v84[11] = v3;
  v84[7] = v173;
  v84[8] = v177;
  MEMORY[0x1B8C8A6C0](v83);
  sub_1B5E60024();
  v85 = sub_1B5EA5A00();

  sub_1B5E46144(v85);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  [a1 setClasses:v85 forSelector:? argumentIndex:? ofReply:?];

  v86 = sub_1B5E5F9CC();
  v87 = sub_1B5E5F330(v86);
  v88[4] = v171;
  v88[11] = v3;
  v88[7] = v170;
  v88[8] = v177;
  MEMORY[0x1B8C8A6C0](v87);
  sub_1B5E60024();
  v89 = sub_1B5EA5A00();

  sub_1B5E46144(v89);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  sub_1B5E5FD70(a1, sel_setClasses_forSelector_argumentIndex_ofReply_, v89, sel_completeWithConfiguration_query_template_bindingVariables_documents_tools_toolChoice_parameters_schema_promptSanitizer_responseSanitizer_clientRequestID_requestUUID_delegate_);

  v90 = sub_1B5E5F9CC();
  v91 = sub_1B5E5F330(v90);
  v92[4] = v169;
  v92[11] = v3;
  v92[7] = v168;
  v92[8] = v177;
  v93 = MEMORY[0x1B8C8A6C0](v91);
  v94 = sub_1B5EA5A00();

  sub_1B5E46144(v94);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  v95 = sub_1B5E5FC9C();
  sub_1B5E601F8(v95, v96, v97, sel_completeWithConfiguration_query_template_bindingVariables_documents_tools_toolChoice_parameters_schema_promptSanitizer_responseSanitizer_clientRequestID_requestUUID_delegate_);

  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_1B5EB6C70;
  *(v98 + 32) = v166;
  *(v98 + 56) = v167;
  *(v98 + 64) = v164;
  *(v98 + 88) = v165;
  *(v98 + 96) = v163;
  *(v98 + 152) = v3;
  *(v98 + 120) = v162;
  *(v98 + 128) = v177;
  v99 = MEMORY[0x1B8C8A6C0]();
  v100 = sub_1B5EA5A00();

  sub_1B5E46144(v100);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  v101 = sub_1B5E5FC9C();
  [v101 v102];

  v103 = sub_1B5E601E0();
  *(v103 + 16) = xmmword_1B5EB6C80;
  *(v103 + 32) = v160;
  *(v103 + 56) = v161;
  *(v103 + 64) = v172;
  *(v103 + 120) = v3;
  *(v103 + 88) = v53;
  *(v103 + 96) = v177;
  v104 = MEMORY[0x1B8C8A6C0]();
  v105 = sub_1B5EA5A00();

  sub_1B5E46144(v105);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  v106 = sub_1B5E5FEBC();
  [v106 v107];

  v108 = sub_1B5E601E0();
  *(v108 + 16) = xmmword_1B5EB6C80;
  *(v108 + 32) = v159;
  *(v108 + 56) = v158;
  *(v108 + 64) = v172;
  *(v108 + 120) = v3;
  *(v108 + 88) = v53;
  *(v108 + 96) = v177;
  v109 = MEMORY[0x1B8C8A6C0]();
  v110 = sub_1B5EA5A00();

  sub_1B5E46144(v110);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  [v5 setClasses:v110 forSelector:sel_completeWithConfiguration_query_template_bindingVariables_documents_tools_toolChoice_parameters_schema_promptSanitizer_responseSanitizer_clientRequestID_requestUUID_delegate_ argumentIndex:5 ofReply:0];

  v111 = sub_1B5E5F9CC();
  v112 = sub_1B5E5F330(v111);
  v113[4] = v157;
  v113[11] = v3;
  v113[7] = v156;
  v113[8] = v177;
  MEMORY[0x1B8C8A6C0](v112);
  sub_1B5E60024();
  v114 = sub_1B5EA5A00();

  sub_1B5E46144(v114);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  v115 = sub_1B5E5FC90();
  [v115 v116];

  v117 = sub_1B5E5F9CC();
  v118 = sub_1B5E5F330(v117);
  v119[4] = v154;
  v119[11] = v3;
  v119[7] = v155;
  v119[8] = v177;
  MEMORY[0x1B8C8A6C0](v118);
  sub_1B5E5F598();
  v120 = sub_1B5EA5A00();

  sub_1B5E46144(v120);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  v121 = sub_1B5E5FEBC();
  [v121 v122];

  v123 = sub_1B5E5F9CC();
  v124 = sub_1B5E5F330(v123);
  v125[4] = v153;
  v125[11] = v3;
  v125[7] = v152;
  v125[8] = v177;
  MEMORY[0x1B8C8A6C0](v124);
  sub_1B5E5F798();
  v126 = sub_1B5EA5A00();

  sub_1B5E46144(v126);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  [(completeWithConfiguration:query:template:bindingVariables:documents:tools:toolChoice:parameters:schema:promptSanitizer:responseSanitizer:clientRequestID:requestUUID:delegate: *)sel_completeWithConfiguration_query_template_bindingVariables_documents_tools_toolChoice_parameters_schema_promptSanitizer_responseSanitizer_clientRequestID_requestUUID_delegate_ setClasses:v126 forSelector:sel_completeWithConfiguration_query_template_bindingVariables_documents_tools_toolChoice_parameters_schema_promptSanitizer_responseSanitizer_clientRequestID_requestUUID_delegate_ argumentIndex:8 ofReply:0];

  v127 = sub_1B5E5F9CC();
  v128 = sub_1B5E5F330(v127);
  v129[4] = v151;
  v129[11] = v3;
  v129[7] = v150;
  v129[8] = v177;
  MEMORY[0x1B8C8A6C0](v128);
  sub_1B5E5F798();
  v130 = sub_1B5EA5A00();

  sub_1B5E46144(v130);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  [(completeWithConfiguration:query:template:bindingVariables:documents:tools:toolChoice:parameters:schema:promptSanitizer:responseSanitizer:clientRequestID:requestUUID:delegate: *)sel_completeWithConfiguration_query_template_bindingVariables_documents_tools_toolChoice_parameters_schema_promptSanitizer_responseSanitizer_clientRequestID_requestUUID_delegate_ setClasses:v130 forSelector:sel_completeWithConfiguration_query_template_bindingVariables_documents_tools_toolChoice_parameters_schema_promptSanitizer_responseSanitizer_clientRequestID_requestUUID_delegate_ argumentIndex:9 ofReply:0];

  v131 = sub_1B5E5F9CC();
  v132 = sub_1B5E5F330(v131);
  v133[4] = v149;
  v133[11] = v3;
  v133[7] = v148;
  v133[8] = v177;
  v134 = MEMORY[0x1B8C8A6C0](v132);
  v135 = sub_1B5EA5A00();

  sub_1B5E46144(v135);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E5F9E4();
  [(completeWithConfiguration:query:template:bindingVariables:documents:tools:toolChoice:parameters:schema:promptSanitizer:responseSanitizer:clientRequestID:requestUUID:delegate: *)sel_completeWithConfiguration_query_template_bindingVariables_documents_tools_toolChoice_parameters_schema_promptSanitizer_responseSanitizer_clientRequestID_requestUUID_delegate_ setClasses:v135 forSelector:sel_completeWithConfiguration_query_template_bindingVariables_documents_tools_toolChoice_parameters_schema_promptSanitizer_responseSanitizer_clientRequestID_requestUUID_delegate_ argumentIndex:10 ofReply:0];

  [(completeWithConfiguration:query:template:bindingVariables:documents:tools:toolChoice:parameters:schema:promptSanitizer:responseSanitizer:clientRequestID:requestUUID:delegate: *)sel_completeWithConfiguration_query_template_bindingVariables_documents_tools_toolChoice_parameters_schema_promptSanitizer_responseSanitizer_clientRequestID_requestUUID_delegate_ setInterface:v178 forSelector:sel_completeWithConfiguration_query_template_bindingVariables_documents_tools_toolChoice_parameters_schema_promptSanitizer_responseSanitizer_clientRequestID_requestUUID_delegate_ argumentIndex:13 ofReply:0];
  v136 = sub_1B5E5F9CC();
  v137 = sub_1B5E5F330(v136);
  v138[4] = v174;
  v138[11] = v3;
  v138[7] = v173;
  v138[8] = v177;
  v139 = MEMORY[0x1B8C8A6C0](v137);
  v140 = sub_1B5EA5A00();

  sub_1B5E46144(v140);
  sub_1B5E5F9B4();
  sub_1B5EA59F0();
  sub_1B5E60210();
  [(completeWithConfiguration:query:template:bindingVariables:documents:tools:toolChoice:parameters:schema:promptSanitizer:responseSanitizer:clientRequestID:requestUUID:delegate: *)sel_completeWithConfiguration_query_template_bindingVariables_documents_tools_toolChoice_parameters_schema_promptSanitizer_responseSanitizer_clientRequestID_requestUUID_delegate_ setClasses:sel_completeWithConfiguration_query_template_bindingVariables_documents_tools_toolChoice_parameters_schema_promptSanitizer_responseSanitizer_clientRequestID_requestUUID_delegate_ forSelector:sel_registerWithConfiguration_documents_requestUUID_delegate_ argumentIndex:0 ofReply:0];

  v141 = swift_allocObject();
  *(v141 + 16) = xmmword_1B5EB6C90;
  *(v141 + 56) = v53;
  *(v141 + 32) = v172;
  v142 = type metadata accessor for DocumentXPCEnvelope(0);
  *(v141 + 88) = sub_1B5DF33E0(&qword_1EB90EB70, &qword_1B5EB6D60);
  *(v141 + 64) = v142;
  v143 = sub_1B5E479E8(0, &qword_1EB90CD60, 0x1E695DFF8);
  *(v141 + 120) = sub_1B5DF33E0(&qword_1EB90EB78, &qword_1B5EB6D68);
  *(v141 + 96) = v143;
  v144 = sub_1B5E479E8(0, &qword_1EB90CD88, 0x1E696AC00);
  v145 = sub_1B5DF33E0(&qword_1EB90EB80, &qword_1B5EB6D70);
  *(v141 + 128) = v144;
  *(v141 + 184) = v3;
  *(v141 + 152) = v145;
  *(v141 + 160) = v177;
  v146 = MEMORY[0x1B8C8A6C0](v141);
  v147 = sub_1B5EA5A00();

  sub_1B5E46144(v147);
  sub_1B5E43350();

  sub_1B5EA59F0();
  sub_1B5E2624C();

  sub_1B5E5FD70(sel_completeWithConfiguration_query_template_bindingVariables_documents_tools_toolChoice_parameters_schema_promptSanitizer_responseSanitizer_clientRequestID_requestUUID_delegate_, sel_setClasses_forSelector_argumentIndex_ofReply_, v147, sel_registerWithConfiguration_documents_requestUUID_delegate_);

  [(completeWithConfiguration:query:template:bindingVariables:documents:tools:toolChoice:parameters:schema:promptSanitizer:responseSanitizer:clientRequestID:requestUUID:delegate: *)sel_completeWithConfiguration_query_template_bindingVariables_documents_tools_toolChoice_parameters_schema_promptSanitizer_responseSanitizer_clientRequestID_requestUUID_delegate_ setInterface:v178 forSelector:sel_registerWithConfiguration_documents_requestUUID_delegate_ argumentIndex:3 ofReply:0];
}