uint64_t sub_2203D7D04()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v4 = v0[30];
  v5 = v0[27];
  v6 = v0[28];
  sub_2203DF1B0(v0[42], v0[43]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[45];
  if (qword_280FA09F8 != -1)
  {
    swift_once();
  }

  sub_22042BC90();
  sub_2203C1EE8();
  v8 = swift_allocObject();
  v0[10] = 0;
  *(v8 + 16) = xmmword_22042D3F0;
  v0[11] = 0xE000000000000000;
  v0[18] = v7;
  sub_2203CFDB8(0, &unk_280FA01A0);
  sub_22042BDF0();
  v9 = v0[10];
  v10 = v0[11];
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_2203C1FA8();
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  sub_22042B8D0();

  MEMORY[0x223D7C730](v7);
  v11 = v0[40];
  v12 = v0[37];
  v14 = v0[33];
  v13 = v0[34];
  v16 = v0[29];
  v15 = v0[30];
  v18 = v0[25];
  v17 = v0[26];
  v19 = v0[24];

  v20 = v0[1];

  return v20();
}

uint64_t sub_2203D7F28(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
  v2[18] = v3;
  v4 = *(v3 - 8);
  v2[19] = v4;
  v5 = *(v4 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v6 = sub_22042AF80();
  v2[22] = v6;
  v7 = *(v6 - 8);
  v2[23] = v7;
  v8 = *(v7 + 64) + 15;
  v2[24] = swift_task_alloc();
  sub_2203DE8BC(0, &qword_27CF52398, type metadata accessor for WatchSymbolEventUserInfo, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v11 = sub_22042AAC0();
  v2[26] = v11;
  v12 = *(v11 - 8);
  v2[27] = v12;
  v13 = *(v12 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2203D8114, 0, 0);
}

uint64_t sub_2203D8114()
{
  v1 = v0[16];
  sub_2203DEC7C();
  sub_22042ABD0();
  v2 = v0[25];
  if (!v0[5])
  {
    sub_2203DF738((v0 + 2), &qword_280FA0188, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2203DF5B8);
    v15 = type metadata accessor for WatchSymbolEventUserInfo();
    (*(*(v15 - 8) + 56))(v2, 1, 1, v15);
LABEL_6:
    sub_2203DF738(v0[25], &unk_27CF52398, type metadata accessor for WatchSymbolEventUserInfo, MEMORY[0x277D83D88], sub_2203DE8BC);
    sub_22042ACE0();
    if (sub_22042ACD0())
    {
      if (qword_280FA09F8 != -1)
      {
        swift_once();
      }

      sub_22042BC90();
      sub_22042B8D0();
    }

    goto LABEL_13;
  }

  v3 = type metadata accessor for WatchSymbolEventUserInfo();
  v4 = swift_dynamicCast();
  v5 = *(v3 - 8);
  (*(v5 + 56))(v2, v4 ^ 1u, 1, v3);
  if ((*(v5 + 48))(v2, 1, v3) == 1)
  {
    goto LABEL_6;
  }

  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[26];
  v9 = v0[27];
  v10 = v0[25];
  v11 = v0[17];
  (*(v9 + 16))(v7, v10, v8);
  sub_2203DF670(v10, type metadata accessor for WatchSymbolEventUserInfo);
  (*(v9 + 32))(v6, v7, v8);
  v0[30] = *(v11 + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_sessionManager);
  if (sub_22042B410())
  {
    v12 = v0[16];

    v13 = sub_22042ABC0();
    v0[31] = sub_22042AC60();
    v0[32] = v14;
    v21 = v0[24];
    v22 = v0[22];

    v23 = sub_22042A380();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    sub_22042A370();
    sub_2203DEB0C(&qword_27CF523A0, MEMORY[0x277D687C0]);
    sub_22042A360();

    v40 = swift_task_alloc();
    v0[33] = v40;
    *v40 = v0;
    v40[1] = sub_2203D874C;
    v41 = v0[29];
    v42 = v0[17];

    return sub_2203DD16C(v41);
  }

  v16 = v0[26];
  v17 = v0[27];
  type metadata accessor for UserEventHistoryEventProcessor.Errors(0);
  sub_2203DEB0C(&qword_27CF52388, type metadata accessor for UserEventHistoryEventProcessor.Errors);
  v18 = swift_allocError();
  (*(v17 + 56))(v19, 2, 2, v16);
  swift_willThrow();
  v20 = v18;
  if (qword_280FA09F8 != -1)
  {
    swift_once();
  }

  v26 = v0[29];
  v27 = v0[26];
  v28 = v0[27];
  sub_22042BC90();
  sub_2203C1EE8();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_22042D3F0;
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  v0[14] = v20;
  sub_2203CFDB8(0, &unk_280FA01A0);
  sub_22042BDF0();
  v30 = v0[10];
  v31 = v0[11];
  *(v29 + 56) = MEMORY[0x277D837D0];
  *(v29 + 64) = sub_2203C1FA8();
  *(v29 + 32) = v30;
  *(v29 + 40) = v31;
  sub_22042B8D0();

  MEMORY[0x223D7C730](v20);
  (*(v28 + 8))(v26, v27);
LABEL_13:
  v33 = v0[28];
  v32 = v0[29];
  v35 = v0[24];
  v34 = v0[25];
  v37 = v0[20];
  v36 = v0[21];

  v38 = v0[1];

  return v38();
}

uint64_t sub_2203D874C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 264);
  v8 = *v3;
  *(*v3 + 272) = v2;

  if (v2)
  {
    v9 = sub_2203D8D88;
  }

  else
  {
    *(v6 + 280) = a2;
    *(v6 + 288) = a1;
    v9 = sub_2203D8880;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2203D8880()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  v4 = v0[29];
  v5 = v0[21];
  v7 = v0[17];
  v6 = v0[18];
  v8 = swift_task_alloc();
  v8[2] = v7;
  v8[3] = v4;
  v8[4] = v2;
  v8[5] = v1;
  sub_2203DEB0C(&unk_280FA2130, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
  sub_22042B810();

  sub_22042ACE0();
  if (sub_22042ACD0())
  {
    if (qword_280FA09F8 != -1)
    {
      swift_once();
    }

    v9 = v0[21];
    sub_2203C1EE8();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_22042D3F0;
    v11 = sub_2203D9FF8(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent, &unk_280FA2130, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    if (v3)
    {
      *(v10 + 16) = 0;

      sub_22042BC80();
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_22042D3F0;
      v0[12] = 0;
      v0[13] = 0xE000000000000000;
      v0[15] = v3;
      sub_2203CFDB8(0, &unk_280FA01A0);
      sub_22042BDF0();
      v14 = v0[12];
      v15 = v0[13];
      *(v13 + 56) = MEMORY[0x277D837D0];
      *(v13 + 64) = sub_2203C1FA8();
      *(v13 + 32) = v14;
      *(v13 + 40) = v15;
      sub_22042B8D0();

      MEMORY[0x223D7C730](v3);
    }

    else
    {
      v16 = v11;
      v17 = v12;
      *(v10 + 56) = MEMORY[0x277D837D0];
      *(v10 + 64) = sub_2203C1FA8();
      *(v10 + 32) = v16;
      *(v10 + 40) = v17;
      sub_22042BCA0();
      sub_22042B8D0();
    }
  }

  v18 = v0[30];
  if (sub_22042B410())
  {
    sub_2203DF42C(v0[21], v0[20], type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    v51 = sub_22042B480();
    v20 = v19;
    v21 = *(v19 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v20 + 16) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_22041EF10(0, v21[2] + 1, 1, v21);
      *(v20 + 16) = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_22041EF10(v23 > 1, v24 + 1, 1, v21);
      *(v20 + 16) = v21;
    }

    v26 = v0[31];
    v25 = v0[32];
    v27 = v0[27];
    v49 = v0[26];
    v50 = v0[29];
    v28 = v0[23];
    v29 = v0[21];
    v47 = v0[22];
    v48 = v0[24];
    v31 = v0[19];
    v30 = v0[20];
    v21[2] = v24 + 1;
    sub_2203DF148(v30, v21 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v24, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    v51();
    sub_2203DF1B0(v26, v25);

    sub_2203DF670(v29, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    (*(v28 + 8))(v48, v47);
    (*(v27 + 8))(v50, v49);
  }

  else
  {
    v32 = v0[29];
    v33 = v0[26];
    v34 = v0[27];
    v36 = v0[23];
    v35 = v0[24];
    v38 = v0[21];
    v37 = v0[22];
    sub_2203DF1B0(v0[31], v0[32]);
    sub_2203DF670(v38, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    (*(v36 + 8))(v35, v37);
    (*(v34 + 8))(v32, v33);
  }

  v40 = v0[28];
  v39 = v0[29];
  v42 = v0[24];
  v41 = v0[25];
  v44 = v0[20];
  v43 = v0[21];

  v45 = v0[1];

  return v45();
}

uint64_t sub_2203D8D88()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  sub_2203DF1B0(v0[31], v0[32]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[34];
  if (qword_280FA09F8 != -1)
  {
    swift_once();
  }

  v5 = v0[29];
  v6 = v0[26];
  v7 = v0[27];
  sub_22042BC90();
  sub_2203C1EE8();
  v8 = swift_allocObject();
  v0[10] = 0;
  *(v8 + 16) = xmmword_22042D3F0;
  v0[11] = 0xE000000000000000;
  v0[14] = v4;
  sub_2203CFDB8(0, &unk_280FA01A0);
  sub_22042BDF0();
  v9 = v0[10];
  v10 = v0[11];
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_2203C1FA8();
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  sub_22042B8D0();

  MEMORY[0x223D7C730](v4);
  (*(v7 + 8))(v5, v6);
  v12 = v0[28];
  v11 = v0[29];
  v14 = v0[24];
  v13 = v0[25];
  v16 = v0[20];
  v15 = v0[21];

  v17 = v0[1];

  return v17();
}

uint64_t sub_2203D8F90(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0);
  v2[18] = v3;
  v4 = *(v3 - 8);
  v2[19] = v4;
  v5 = *(v4 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v6 = sub_22042AFD0();
  v2[22] = v6;
  v7 = *(v6 - 8);
  v2[23] = v7;
  v8 = *(v7 + 64) + 15;
  v2[24] = swift_task_alloc();
  sub_2203DE8BC(0, &qword_27CF523B0, type metadata accessor for UnwatchSymbolEventUserInfo, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v11 = sub_22042AAC0();
  v2[26] = v11;
  v12 = *(v11 - 8);
  v2[27] = v12;
  v13 = *(v12 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2203D917C, 0, 0);
}

uint64_t sub_2203D917C()
{
  v1 = v0[16];
  sub_2203DED10();
  sub_22042ABD0();
  v2 = v0[25];
  if (!v0[5])
  {
    sub_2203DF738((v0 + 2), &qword_280FA0188, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2203DF5B8);
    v15 = type metadata accessor for UnwatchSymbolEventUserInfo();
    (*(*(v15 - 8) + 56))(v2, 1, 1, v15);
LABEL_6:
    sub_2203DF738(v0[25], &unk_27CF523B0, type metadata accessor for UnwatchSymbolEventUserInfo, MEMORY[0x277D83D88], sub_2203DE8BC);
    sub_22042ACE0();
    if (sub_22042ACD0())
    {
      if (qword_280FA09F8 != -1)
      {
        swift_once();
      }

      sub_22042BC90();
      sub_22042B8D0();
    }

    goto LABEL_13;
  }

  v3 = type metadata accessor for UnwatchSymbolEventUserInfo();
  v4 = swift_dynamicCast();
  v5 = *(v3 - 8);
  (*(v5 + 56))(v2, v4 ^ 1u, 1, v3);
  if ((*(v5 + 48))(v2, 1, v3) == 1)
  {
    goto LABEL_6;
  }

  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[26];
  v9 = v0[27];
  v10 = v0[25];
  v11 = v0[17];
  (*(v9 + 16))(v7, v10, v8);
  sub_2203DF670(v10, type metadata accessor for UnwatchSymbolEventUserInfo);
  (*(v9 + 32))(v6, v7, v8);
  v0[30] = *(v11 + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_sessionManager);
  if (sub_22042B410())
  {
    v12 = v0[16];

    v13 = sub_22042ABC0();
    v0[31] = sub_22042AC60();
    v0[32] = v14;
    v21 = v0[24];
    v22 = v0[22];

    v23 = sub_22042A380();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    sub_22042A370();
    sub_2203DEB0C(&qword_27CF523B8, MEMORY[0x277D688D8]);
    sub_22042A360();

    v40 = swift_task_alloc();
    v0[33] = v40;
    *v40 = v0;
    v40[1] = sub_2203D97B4;
    v41 = v0[29];
    v42 = v0[17];

    return sub_2203DD16C(v41);
  }

  v16 = v0[26];
  v17 = v0[27];
  type metadata accessor for UserEventHistoryEventProcessor.Errors(0);
  sub_2203DEB0C(&qword_27CF52388, type metadata accessor for UserEventHistoryEventProcessor.Errors);
  v18 = swift_allocError();
  (*(v17 + 56))(v19, 2, 2, v16);
  swift_willThrow();
  v20 = v18;
  if (qword_280FA09F8 != -1)
  {
    swift_once();
  }

  v26 = v0[29];
  v27 = v0[26];
  v28 = v0[27];
  sub_22042BC90();
  sub_2203C1EE8();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_22042D3F0;
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  v0[14] = v20;
  sub_2203CFDB8(0, &unk_280FA01A0);
  sub_22042BDF0();
  v30 = v0[10];
  v31 = v0[11];
  *(v29 + 56) = MEMORY[0x277D837D0];
  *(v29 + 64) = sub_2203C1FA8();
  *(v29 + 32) = v30;
  *(v29 + 40) = v31;
  sub_22042B8D0();

  MEMORY[0x223D7C730](v20);
  (*(v28 + 8))(v26, v27);
LABEL_13:
  v33 = v0[28];
  v32 = v0[29];
  v35 = v0[24];
  v34 = v0[25];
  v37 = v0[20];
  v36 = v0[21];

  v38 = v0[1];

  return v38();
}

uint64_t sub_2203D97B4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 264);
  v8 = *v3;
  *(*v3 + 272) = v2;

  if (v2)
  {
    v9 = sub_2203D9DF0;
  }

  else
  {
    *(v6 + 280) = a2;
    *(v6 + 288) = a1;
    v9 = sub_2203D98E8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2203D98E8()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  v4 = v0[29];
  v5 = v0[21];
  v7 = v0[17];
  v6 = v0[18];
  v8 = swift_task_alloc();
  v8[2] = v7;
  v8[3] = v4;
  v8[4] = v2;
  v8[5] = v1;
  sub_2203DEB0C(&unk_280FA2130, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
  sub_22042B810();

  sub_22042ACE0();
  if (sub_22042ACD0())
  {
    if (qword_280FA09F8 != -1)
    {
      swift_once();
    }

    v9 = v0[21];
    sub_2203C1EE8();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_22042D3F0;
    v11 = sub_2203D9FF8(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent, &unk_280FA2130, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    if (v3)
    {
      *(v10 + 16) = 0;

      sub_22042BC80();
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_22042D3F0;
      v0[12] = 0;
      v0[13] = 0xE000000000000000;
      v0[15] = v3;
      sub_2203CFDB8(0, &unk_280FA01A0);
      sub_22042BDF0();
      v14 = v0[12];
      v15 = v0[13];
      *(v13 + 56) = MEMORY[0x277D837D0];
      *(v13 + 64) = sub_2203C1FA8();
      *(v13 + 32) = v14;
      *(v13 + 40) = v15;
      sub_22042B8D0();

      MEMORY[0x223D7C730](v3);
    }

    else
    {
      v16 = v11;
      v17 = v12;
      *(v10 + 56) = MEMORY[0x277D837D0];
      *(v10 + 64) = sub_2203C1FA8();
      *(v10 + 32) = v16;
      *(v10 + 40) = v17;
      sub_22042BCA0();
      sub_22042B8D0();
    }
  }

  v18 = v0[30];
  if (sub_22042B410())
  {
    sub_2203DF42C(v0[21], v0[20], type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    v51 = sub_22042B480();
    v20 = v19;
    v21 = *(v19 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v20 + 16) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_22041EF10(0, v21[2] + 1, 1, v21);
      *(v20 + 16) = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_22041EF10(v23 > 1, v24 + 1, 1, v21);
      *(v20 + 16) = v21;
    }

    v26 = v0[31];
    v25 = v0[32];
    v27 = v0[27];
    v49 = v0[26];
    v50 = v0[29];
    v28 = v0[23];
    v29 = v0[21];
    v47 = v0[22];
    v48 = v0[24];
    v31 = v0[19];
    v30 = v0[20];
    v21[2] = v24 + 1;
    sub_2203DF148(v30, v21 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v24, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    v51();
    sub_2203DF1B0(v26, v25);

    sub_2203DF670(v29, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    (*(v28 + 8))(v48, v47);
    (*(v27 + 8))(v50, v49);
  }

  else
  {
    v32 = v0[29];
    v33 = v0[26];
    v34 = v0[27];
    v36 = v0[23];
    v35 = v0[24];
    v38 = v0[21];
    v37 = v0[22];
    sub_2203DF1B0(v0[31], v0[32]);
    sub_2203DF670(v38, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent);
    (*(v36 + 8))(v35, v37);
    (*(v34 + 8))(v32, v33);
  }

  v40 = v0[28];
  v39 = v0[29];
  v42 = v0[24];
  v41 = v0[25];
  v44 = v0[20];
  v43 = v0[21];

  v45 = v0[1];

  return v45();
}

uint64_t sub_2203D9DF0()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  sub_2203DF1B0(v0[31], v0[32]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[34];
  if (qword_280FA09F8 != -1)
  {
    swift_once();
  }

  v5 = v0[29];
  v6 = v0[26];
  v7 = v0[27];
  sub_22042BC90();
  sub_2203C1EE8();
  v8 = swift_allocObject();
  v0[10] = 0;
  *(v8 + 16) = xmmword_22042D3F0;
  v0[11] = 0xE000000000000000;
  v0[14] = v4;
  sub_2203CFDB8(0, &unk_280FA01A0);
  sub_22042BDF0();
  v9 = v0[10];
  v10 = v0[11];
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_2203C1FA8();
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  sub_22042B8D0();

  MEMORY[0x223D7C730](v4);
  (*(v7 + 8))(v5, v6);
  v12 = v0[28];
  v11 = v0[29];
  v14 = v0[24];
  v13 = v0[25];
  v16 = v0[20];
  v15 = v0[21];

  v17 = v0[1];

  return v17();
}

char *sub_2203D9FF8(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  v39[1] = *MEMORY[0x277D85DE8];
  v6 = sub_22042BA70();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22042B6A0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22042B690();
  a1(0);
  sub_2203DEB0C(a2, a3);
  v17 = v38;
  sub_22042B7B0();
  if (!v17)
  {
    (*(v12 + 8))(v16, v11);
    sub_22042BA60();
    v18 = sub_22042BA40();
    v20 = v19;

    (*(v36 + 8))(v10, v37);
    if (v20 >> 60 == 15)
    {
      sub_2203DF244();
      swift_allocError();
      swift_willThrow();
      goto LABEL_13;
    }

    v21 = objc_opt_self();
    v22 = sub_22042A540();
    v39[0] = 0;
    v23 = [v21 JSONObjectWithData:v22 options:0 error:v39];

    v24 = v39[0];
    if (v23)
    {
      v39[0] = 0;
      v25 = v24;
      v26 = [v21 dataWithJSONObject:v23 options:3 error:v39];
      swift_unknownObjectRelease();
      v27 = v39[0];
      if (v26)
      {
        v28 = sub_22042A550();
        v30 = v29;

        sub_22042BA60();
        v16 = sub_22042BA50();
        v32 = v31;
        sub_2203DF1B0(v28, v30);
        if (v32)
        {
          sub_2203DF298(v18, v20);
          goto LABEL_13;
        }

        sub_2203DF244();
        swift_allocError();
LABEL_12:
        swift_willThrow();
        sub_2203DF298(v18, v20);
        goto LABEL_13;
      }

      v16 = v27;
    }

    else
    {
      v16 = v39[0];
    }

    sub_22042A480();

    goto LABEL_12;
  }

  (*(v12 + 8))(v16, v11);
LABEL_13:
  v33 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t sub_2203DA3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  sub_2203DE8BC(0, &qword_280FA2378, MEMORY[0x277D68FD8], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2203DA480, 0, 0);
}

uint64_t sub_2203DA480()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = __swift_project_boxed_opaque_existential_1((v0[6] + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_groupIDStockMessageTranslator), *(v0[6] + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_groupIDStockMessageTranslator + 24));
  sub_22042B050();
  v4 = *v3;
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_2203DA54C;
  v6 = v0[8];
  v7 = v0[5];

  return sub_22042407C(v7, v6);
}

uint64_t sub_2203DA54C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 80) = v0;

  sub_2203DF738(v4, &qword_280FA2378, MEMORY[0x277D68FD8], MEMORY[0x277D83D88], sub_2203DE8BC);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2203DA6FC, 0, 0);
  }

  else
  {
    v6 = *(v2 + 64);

    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_2203DA6FC()
{
  if (qword_280FA09F8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[5];
  sub_2203C1EE8();
  v3 = swift_allocObject();
  v0[2] = 0;
  *(v3 + 16) = xmmword_22042D3F0;
  v0[3] = 0xE000000000000000;
  v0[4] = v1;
  sub_2203CFDB8(0, &unk_280FA01A0);
  sub_22042BDF0();
  v4 = v0[2];
  v5 = v0[3];
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2203C1FA8();
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  sub_22042BCA0();
  sub_22042B8D0();
  MEMORY[0x223D7C730](v1);

  v6 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = v0[8];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2203DA8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v6 = MEMORY[0x277D83D88];
  sub_2203DE8BC(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v24 - v10;
  v12 = sub_22042A5B0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v15 = sub_22042B600();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22042A5A0();
  sub_22042B5E0();
  v21 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0) + 24);
  sub_2203DF738(a1 + v21, &qword_280FA2228, MEMORY[0x277D21570], v6, sub_2203DE8BC);
  (*(v16 + 32))(a1 + v21, v20, v15);
  (*(v16 + 56))(a1 + v21, 0, 1, v15);
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead();
  v26 = a2;
  v27 = v24;
  v28 = v25;
  sub_2203DEB0C(&qword_280FA1CD0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
  sub_22042B810();
  v22 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v22 - 8) + 56))(v11, 0, 1, v22);
  return sub_2203DF494(v11, a1, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
}

uint64_t sub_2203DABCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v32 = a3;
  v30 = a2;
  v5 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v37 = *(v5 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v31 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22042ACA0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22042B650();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22042B060();
  v21 = sub_22042AC90();
  v22 = (*(v10 + 8))(v14, v9);
  MEMORY[0x223D7B930](v22, v21 / 1000.0);
  v23 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead();
  v24 = *(v23 + 24);
  v25 = MEMORY[0x277D83D88];
  sub_2203DF738(a1 + v24, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88], sub_2203DE8BC);
  (*(v16 + 32))(a1 + v24, v20, v15);
  (*(v16 + 56))(a1 + v24, 0, 1, v15);
  v34 = v32;
  v35 = v30;
  v36 = v33;
  sub_2203DEB0C(&qword_280FA1EE8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  v26 = v31;
  sub_22042B810();
  v27 = *(v23 + 20);
  sub_2203DF738(a1 + v27, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle, v25, sub_2203DE8BC);
  sub_2203DF148(v26, a1 + v27, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  return (*(v37 + 56))(a1 + v27, 0, 1, v5);
}

uint64_t sub_2203DAF74(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_2203DE8BC(0, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v21[-v11];
  v13 = [a2 articleID];
  v14 = sub_22042BA30();
  v16 = v15;

  v17 = a1[1];

  *a1 = v14;
  a1[1] = v16;
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0);
  v22 = a2;
  v23 = a3;
  v24 = a4;
  sub_2203DEB0C(&unk_280FA1798, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  sub_22042B810();
  v18 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
  v19 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  return sub_2203DF494(v12, a1 + *(v19 + 20), &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
}

id sub_2203DB15C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v218 = a4;
  v221 = a3;
  v6 = MEMORY[0x277D83D88];
  sub_2203DE8BC(0, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v207 = &v206 - v10;
  v11 = sub_22042B6C0();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v208 = &v206 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List();
  v206 = *(v15 - 8);
  v16 = *(v206 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v206 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203DE8BC(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, v6);
  v21 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20 - 8, v22);
  v211 = &v206 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v217 = &v206 - v26;
  v226 = sub_22042A7E0();
  v227 = *(v226 - 8);
  v27 = *(v227 + 64);
  MEMORY[0x28223BE20](v226, v28);
  v225 = &v206 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v228 = *(v229 - 8);
  v30 = *(v228 + 64);
  v32 = MEMORY[0x28223BE20](v229, v31);
  v213 = &v206 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32, v34);
  v210 = &v206 - v36;
  MEMORY[0x28223BE20](v35, v37);
  v39 = &v206 - v38;
  v223 = sub_22042A810();
  v216 = *(v223 - 8);
  v40 = *(v216 + 64);
  MEMORY[0x28223BE20](v223, v41);
  v215 = &v206 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203DE8BC(0, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures, v6);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8, v45);
  v47 = &v206 - v46;
  v48 = type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures();
  v214 = *(v48 - 8);
  v49 = *(v214 + 64);
  MEMORY[0x28223BE20](v48, v50);
  v224 = (&v206 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  ObjectType = swift_getObjectType();
  v52 = [a2 publisherID];
  v219 = v19;
  v212 = v39;
  if (v52)
  {
    v53 = v52;
    v54 = sub_22042BA30();
    v56 = v55;
  }

  else
  {
    v54 = 0;
    v56 = 0xE000000000000000;
  }

  v57 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v58 = *(a1 + v57);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = *(a1 + v57);
  v222 = v57;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v61 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v62 = *(v61 + 48);
    v63 = *(v61 + 52);
    swift_allocObject();
    v60 = sub_22040B3C8(v60);
    *(a1 + v57) = v60;
  }

  swift_beginAccess();
  v64 = *(v60 + 4);
  *(v60 + 3) = v54;
  *(v60 + 4) = v56;

  v65 = [a2 topicIDs];
  v66 = MEMORY[0x277D84F90];
  v209 = v15;
  if (v65)
  {
    v67 = v65;
    v68 = sub_22042BB10();
  }

  else
  {
    v68 = MEMORY[0x277D84F90];
  }

  v69 = v222;
  v70 = *(a1 + v222);
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *(a1 + v69);
  if ((v71 & 1) == 0)
  {
    v73 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v74 = *(v73 + 48);
    v75 = *(v73 + 52);
    swift_allocObject();
    v72 = sub_22040B3C8(v72);
    *(a1 + v69) = v72;
  }

  swift_beginAccess();
  v76 = *(v72 + 2);
  *(v72 + 2) = v68;

  MEMORY[0x28223BE20](v77, v78);
  v79 = v221;
  *(&v206 - 2) = a2;
  *(&v206 - 1) = v79;
  sub_2203DEB0C(&qword_280FA1DD8, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  v80 = v234;
  sub_22042B810();
  v234 = v80;
  v81 = *(a1 + v69);
  v82 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *(a1 + v69);
  if ((v82 & 1) == 0)
  {
    v84 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v85 = *(v84 + 48);
    v86 = *(v84 + 52);
    swift_allocObject();
    v83 = sub_22040B3C8(v83);
    *(a1 + v69) = v83;
  }

  v87 = v223;
  v88 = v214;
  sub_2203DF148(v224, v47, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  (*(v88 + 56))(v47, 0, 1, v48);
  v89 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features;
  swift_beginAccess();
  sub_2203DF494(v47, &v83[v89], qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  swift_endAccess();
  v90 = v215;
  ObjectType = a2;
  sub_22042BCB0();
  v91 = sub_22042A800();
  (*(v216 + 8))(v90, v87);
  v92 = *(v91 + 16);
  if (v92)
  {
    v216 = a1;
    *&v230[0] = v66;
    sub_2203CE95C(0, v92, 0);
    v93 = *&v230[0];
    v224 = *(v227 + 16);
    v94 = (*(v227 + 80) + 32) & ~*(v227 + 80);
    v215 = v91;
    v95 = v91 + v94;
    v223 = *(v227 + 72);
    v227 += 16;
    v96 = (v227 - 8);
    v97 = v212;
    do
    {
      v98 = v225;
      v99 = v226;
      v100 = v224(v225, v95, v226);
      MEMORY[0x28223BE20](v100, v101);
      *(&v206 - 2) = v98;
      sub_2203DEB0C(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
      v102 = v234;
      sub_22042B810();
      v234 = v102;
      (*v96)(v98, v99);
      *&v230[0] = v93;
      v104 = *(v93 + 16);
      v103 = *(v93 + 24);
      if (v104 >= v103 >> 1)
      {
        sub_2203CE95C(v103 > 1, v104 + 1, 1);
        v93 = *&v230[0];
      }

      *(v93 + 16) = v104 + 1;
      sub_2203DF148(v97, v93 + ((*(v228 + 80) + 32) & ~*(v228 + 80)) + *(v228 + 72) * v104, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
      v95 += v223;
      --v92;
    }

    while (v92);

    a1 = v216;
  }

  else
  {

    v93 = MEMORY[0x277D84F90];
  }

  v105 = v222;
  v106 = *(a1 + v222);
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v108 = *(a1 + v105);
  if ((v107 & 1) == 0)
  {
    v109 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v110 = *(v109 + 48);
    v111 = *(v109 + 52);
    swift_allocObject();
    v108 = sub_22040B3C8(v108);
    *(a1 + v105) = v108;
  }

  v112 = v234;
  v113 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__stocks;
  swift_beginAccess();
  v114 = *&v108[v113];
  *&v108[v113] = v93;

  sub_2203DC86C(v230);
  v115 = *&v230[0];
  v116 = BYTE8(v230[0]);
  v117 = *(a1 + v105);
  v118 = swift_isUniquelyReferenced_nonNull_native();
  v119 = *(a1 + v105);
  if ((v118 & 1) == 0)
  {
    v120 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v121 = *(v120 + 48);
    v122 = *(v120 + 52);
    swift_allocObject();
    v119 = sub_22040B3C8(v119);
    *(a1 + v105) = v119;
  }

  v123 = ObjectType;
  v124 = &v119[OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__feed];
  swift_beginAccess();
  *v124 = v115;
  v124[8] = v116;
  sub_2203DCB80(v230);
  v125 = *&v230[0];
  v126 = BYTE8(v230[0]);
  v127 = *(a1 + v105);
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v129 = *(a1 + v105);
  if ((v128 & 1) == 0)
  {
    v130 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v131 = *(v130 + 48);
    v132 = *(v130 + 52);
    swift_allocObject();
    v129 = sub_22040B3C8(v129);
    *(a1 + v105) = v129;
  }

  v133 = &v129[OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__group];
  swift_beginAccess();
  *v133 = v125;
  v133[8] = v126;
  sub_2203DCEE8(v230);
  v134 = *&v230[0];
  v135 = BYTE8(v230[0]);
  v136 = *(a1 + v105);
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v138 = *(a1 + v105);
  if ((v137 & 1) == 0)
  {
    v139 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v140 = *(v139 + 48);
    v141 = *(v139 + 52);
    swift_allocObject();
    v138 = sub_22040B3C8(v138);
    *(a1 + v105) = v138;
  }

  v142 = v218;
  v143 = v217;
  v144 = &v138[OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__viewAction];
  swift_beginAccess();
  *v144 = v134;
  v144[8] = v135;
  sub_2203DF344(v142, v143);
  if ((*(v228 + 48))(v143, 1, v229) == 1)
  {
    sub_2203DF738(v143, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88], sub_2203DE8BC);
    v145 = v219;
  }

  else
  {
    v146 = v143;
    v147 = v210;
    sub_2203DF148(v146, v210, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    v148 = v213;
    sub_2203DF42C(v147, v213, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    v149 = *(a1 + v105);
    v150 = swift_isUniquelyReferenced_nonNull_native();
    v145 = v219;
    if (v150)
    {
      sub_2203DF670(v147, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
      v151 = *(a1 + v105);
    }

    else
    {
      v152 = *(a1 + v105);
      v153 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v154 = *(v153 + 48);
      v155 = *(v153 + 52);
      swift_allocObject();

      v157 = sub_22040B3C8(v156);
      v148 = v213;
      v151 = v157;
      sub_2203DF670(v147, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);

      *(a1 + v105) = v151;
    }

    v158 = v211;
    sub_2203DF148(v148, v211, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    (*(v228 + 56))(v158, 0, 1, v229);
    v159 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
    swift_beginAccess();
    sub_2203DF494(v158, &v151[v159], qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    swift_endAccess();
  }

  if ([v123 respondsToSelector_])
  {
    v160 = [v123 float16TitleEncoding];
    if (v160)
    {
      v161 = v160;
      v162 = sub_22042A550();
      v164 = v163;

      v232 = v162;
      v233 = v164;
      v231 = 0;
      memset(v230, 0, sizeof(v230));
      sub_2203DF3D8(v162, v164);
      sub_22042B6B0();
      sub_2203DEB0C(&unk_280FA0618, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v165 = v112;
      sub_22042B7E0();
      if (v112)
      {
        sub_22042ACE0();
        if (sub_22042ACD0())
        {
          v234 = 0;
          v216 = a1;
          if (qword_280FA09F8 != -1)
          {
            swift_once();
          }

          v229 = qword_280FA0A00;
          LODWORD(v228) = sub_22042BC90();
          sub_2203C1EE8();
          v166 = swift_allocObject();
          *(v166 + 16) = xmmword_22042D3E0;
          v167 = ObjectType;
          v168 = [ObjectType articleID];
          v169 = sub_22042BA30();
          v171 = v170;

          *(v166 + 56) = MEMORY[0x277D837D0];
          v172 = sub_2203C1FA8();
          *(v166 + 64) = v172;
          *(v166 + 32) = v169;
          *(v166 + 40) = v171;
          *&v230[0] = 0;
          *(&v230[0] + 1) = 0xE000000000000000;
          v232 = v165;
          sub_2203CFDB8(0, &unk_280FA01A0);
          sub_22042BDF0();
          v173 = v230[0];
          *(v166 + 96) = MEMORY[0x277D837D0];
          *(v166 + 104) = v172;
          *(v166 + 72) = v173;
          sub_22042B8D0();
          sub_2203DF1B0(v162, v164);
          MEMORY[0x223D7C730](v165);
          v123 = v167;

          a1 = v216;
          v105 = v222;
        }

        else
        {
          sub_2203DF1B0(v162, v164);
          MEMORY[0x223D7C730](v112);
        }
      }

      else
      {
        v174 = *(a1 + v105);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          sub_2203DF1B0(v162, v164);
          v175 = *(a1 + v105);
        }

        else
        {
          v176 = *(a1 + v105);
          v177 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
          v178 = *(v177 + 48);
          v179 = *(v177 + 52);
          swift_allocObject();

          v175 = sub_22040B3C8(v180);
          sub_2203DF1B0(v162, v164);
          v145 = v219;

          *(a1 + v105) = v175;
        }

        v181 = v207;
        sub_2203DF148(v145, v207, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        (*(v206 + 56))(v181, 0, 1, v209);
        v182 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
        swift_beginAccess();
        sub_2203DF494(v181, &v175[v182], qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        swift_endAccess();
      }
    }
  }

  if ([v123 respondsToSelector_])
  {
    v183 = [v123 bodyTextLength];
    if (HIDWORD(v183))
    {
      sub_22042ACE0();
      if (sub_22042ACD0())
      {
        if (qword_280FA09F8 != -1)
        {
          swift_once();
        }

        sub_22042BC90();
        sub_2203C1EE8();
        v184 = swift_allocObject();
        *(v184 + 16) = xmmword_22042D3F0;
        *&v230[0] = v183;
        v185 = sub_22042BF20();
        v187 = v186;
        *(v184 + 56) = MEMORY[0x277D837D0];
        *(v184 + 64) = sub_2203C1FA8();
        *(v184 + 32) = v185;
        *(v184 + 40) = v187;
        sub_22042B8D0();
      }
    }

    else
    {
      v188 = *(a1 + v105);
      v189 = swift_isUniquelyReferenced_nonNull_native();
      v190 = *(a1 + v105);
      if ((v189 & 1) == 0)
      {
        v191 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
        v192 = *(v191 + 48);
        v193 = *(v191 + 52);
        swift_allocObject();
        v190 = sub_22040B3C8(v190);
        *(a1 + v105) = v190;
      }

      v194 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__length;
      swift_beginAccess();
      *&v190[v194] = v183;
    }
  }

  result = [v123 iAdCategories];
  if (result)
  {
    v196 = result;
    v197 = sub_22042BB10();

    v198 = *(a1 + v105);
    v199 = swift_isUniquelyReferenced_nonNull_native();
    v200 = *(a1 + v105);
    if ((v199 & 1) == 0)
    {
      v201 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v202 = *(v201 + 48);
      v203 = *(v201 + 52);
      swift_allocObject();
      v200 = sub_22040B3C8(v200);
      *(a1 + v105) = v200;
    }

    v204 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__adCategories;
    swift_beginAccess();
    v205 = *&v200[v204];
    *&v200[v204] = v197;
  }

  return result;
}

id sub_2203DC5D0(unsigned __int8 *a1, void *a2)
{
  v4 = sub_22042AF30();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a2 respondsToSelector_])
  {
    v10 = [a2 hasAudioTrack];
  }

  else
  {
    v10 = 0;
  }

  *a1 = v10;
  if ([a2 respondsToSelector_])
  {
    v11 = [a2 isFeatured];
  }

  else
  {
    v11 = 0;
  }

  a1[1] = v11;
  if ([a2 respondsToSelector_])
  {
    v12 = [a2 isEvergreen];
  }

  else
  {
    v12 = 0;
  }

  a1[2] = v12;
  a1[3] = [a2 isANF];
  a1[4] = [a2 isPaid];
  a1[5] = [a2 hasVideo];
  sub_22042B020();
  v13 = sub_22042AF20();
  (*(v5 + 8))(v9, v4);
  if (v13)
  {
    v14 = [a2 isPaid];
  }

  else
  {
    v14 = 0;
  }

  a1[6] = v14;
  a1[8] = [a2 isPressRelease];
  result = [a2 isAIGenerated];
  a1[7] = result;
  return result;
}

uint64_t sub_2203DC7DC(uint64_t a1)
{
  v2 = sub_22042A7D0();
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = (a1 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock() + 20));
    v7 = v6[1];

    *v6 = v4;
    v6[1] = v5;
  }

  v8 = sub_22042A7A0();
  v10 = v9;
  v11 = (a1 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock() + 24));
  v12 = v11[1];

  *v11 = v8;
  v11[1] = v10;
  return result;
}

uint64_t sub_2203DC86C@<X0>(uint64_t a1@<X8>)
{
  sub_2203DE8BC(0, &qword_280FA2388, MEMORY[0x277D68ED8], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v22 - v5;
  v7 = sub_22042B0B0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v22 - v15;
  sub_22042B030();
  v17 = sub_22042B0A0();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v6, 1, v17) == 1)
  {
    sub_2203DF738(v6, &qword_280FA2388, MEMORY[0x277D68ED8], MEMORY[0x277D83D88], sub_2203DE8BC);
    v19 = *MEMORY[0x277D68EF8];
    (*(v8 + 104))(v16, *MEMORY[0x277D68EF8], v7);
  }

  else
  {
    sub_22042B090();
    (*(v18 + 8))(v6, v17);
    (*(v8 + 32))(v16, v13, v7);
    v19 = *MEMORY[0x277D68EF8];
  }

  result = (*(v8 + 88))(v16, v7);
  if (result == v19)
  {
    v21 = 0;
LABEL_12:
    *a1 = v21;
    *(a1 + 8) = 1;
    return result;
  }

  if (result == *MEMORY[0x277D68EF0])
  {
    v21 = 1;
    goto LABEL_12;
  }

  if (result == *MEMORY[0x277D68EE8])
  {
    v21 = 2;
    goto LABEL_12;
  }

  if (result == *MEMORY[0x277D68EE0])
  {
    v21 = 3;
    goto LABEL_12;
  }

  result = sub_22042BF40();
  __break(1u);
  return result;
}

uint64_t sub_2203DCB80@<X0>(uint64_t a1@<X8>)
{
  sub_2203DE8BC(0, &qword_280FA2378, MEMORY[0x277D68FD8], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v22 - v5;
  v7 = sub_22042B110();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v22 - v15;
  sub_22042B050();
  v17 = sub_22042B100();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v6, 1, v17) == 1)
  {
    sub_2203DF738(v6, &qword_280FA2378, MEMORY[0x277D68FD8], MEMORY[0x277D83D88], sub_2203DE8BC);
    v19 = *MEMORY[0x277D69008];
    (*(v8 + 104))(v16, *MEMORY[0x277D69008], v7);
  }

  else
  {
    sub_22042B0F0();
    (*(v18 + 8))(v6, v17);
    (*(v8 + 32))(v16, v13, v7);
    v19 = *MEMORY[0x277D69008];
  }

  result = (*(v8 + 88))(v16, v7);
  if (result == v19)
  {
    v21 = 0;
LABEL_18:
    *a1 = v21;
    *(a1 + 8) = 1;
    return result;
  }

  if (result == *MEMORY[0x277D68FF8])
  {
    v21 = 1;
    goto LABEL_18;
  }

  if (result == *MEMORY[0x277D68FE0])
  {
    v21 = 2;
    goto LABEL_18;
  }

  if (result == *MEMORY[0x277D68FF0])
  {
    v21 = 3;
    goto LABEL_18;
  }

  if (result == *MEMORY[0x277D69010])
  {
    v21 = 4;
    goto LABEL_18;
  }

  if (result == *MEMORY[0x277D69000])
  {
    v21 = 5;
    goto LABEL_18;
  }

  if (result == *MEMORY[0x277D68FE8])
  {
    v21 = 6;
    goto LABEL_18;
  }

  result = sub_22042BF40();
  __break(1u);
  return result;
}

uint64_t sub_2203DCEE8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22042AF10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22042B0D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22042B040();
  sub_22042B0C0();
  (*(v9 + 8))(v13, v8);
  result = (*(v3 + 88))(v7, v2);
  v15 = 0;
  if (result == *MEMORY[0x277D682E8])
  {
    goto LABEL_18;
  }

  if (result == *MEMORY[0x277D682F8])
  {
    v15 = 1;
LABEL_18:
    *a1 = v15;
    *(a1 + 8) = 1;
    return result;
  }

  if (result == *MEMORY[0x277D682E0])
  {
    v15 = 2;
    goto LABEL_18;
  }

  if (result == *MEMORY[0x277D682B8])
  {
    v15 = 3;
    goto LABEL_18;
  }

  if (result == *MEMORY[0x277D682F0])
  {
    v15 = 4;
    goto LABEL_18;
  }

  if (result == *MEMORY[0x277D682C0])
  {
    v15 = 5;
    goto LABEL_18;
  }

  if (result == *MEMORY[0x277D682D0])
  {
    v15 = 6;
    goto LABEL_18;
  }

  if (result == *MEMORY[0x277D682C8])
  {
    v15 = 7;
    goto LABEL_18;
  }

  if (result == *MEMORY[0x277D682D8])
  {
    v15 = 8;
    goto LABEL_18;
  }

  result = sub_22042BF40();
  __break(1u);
  return result;
}

uint64_t sub_2203DD16C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22042A830();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2203DD22C, 0, 0);
}

uint64_t sub_2203DD22C()
{
  v1 = v0[2];
  v2 = (v0[3] + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_stockEntityService);
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2203DF5B8(0, &qword_280FA2560, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22042D3F0;
  *(v4 + 32) = sub_22042AAB0();
  *(v4 + 40) = v5;
  v0[7] = sub_22042A9E0();

  v6 = *(MEMORY[0x277D6CF28] + 4);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_2203DD368;
  v8 = v0[6];

  return MEMORY[0x2821D23D8](v8);
}

uint64_t sub_2203DD368()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_2203DD69C;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_2203DD484;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2203DD484()
{
  v1 = v0[6];
  v2 = v0[2];
  sub_22042AAB0();
  v3 = sub_22042A820();
  v5 = v4;

  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];
  if (v5)
  {
    (*(v7 + 8))(v0[6], v0[4]);

    v9 = v0[1];

    return v9(v3, v5);
  }

  else
  {
    v11 = v0[2];
    type metadata accessor for UserEventHistoryEventProcessor.Errors(0);
    sub_2203DEB0C(&qword_27CF52388, type metadata accessor for UserEventHistoryEventProcessor.Errors);
    swift_allocError();
    v13 = v12;
    v14 = sub_22042AAC0();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v13, v11, v14);
    (*(v15 + 56))(v13, 0, 2, v14);
    swift_willThrow();
    (*(v7 + 8))(v6, v8);
    v16 = v0[6];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_2203DD69C()
{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2203DD708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a5;
  v29 = a6;
  v26 = a3;
  v27 = a4;
  v8 = MEMORY[0x277D83D88];
  sub_2203DE8BC(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v26 - v12;
  v14 = sub_22042A5B0();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v17 = sub_22042B600();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22042A5A0();
  sub_22042B5E0();
  v23 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0) + 24);
  sub_2203DF738(a1 + v23, &qword_280FA2228, MEMORY[0x277D21570], v8, sub_2203DE8BC);
  (*(v18 + 32))(a1 + v23, v22, v17);
  (*(v18 + 56))(a1 + v23, 0, 1, v17);
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit();
  v30 = a2;
  v31 = v26;
  v32 = v27;
  v33 = v28;
  v34 = v29;
  sub_2203DEB0C(&qword_280FA1AE0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit);
  sub_22042B810();
  v24 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v24 - 8) + 56))(v13, 0, 1, v24);
  return sub_2203DF494(v13, a1, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
}

uint64_t sub_2203DDA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a6;
  v33 = a4;
  v34 = a5;
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v32 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22042ACA0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22042B650();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22042AF50();
  v23 = sub_22042AC90();
  v24 = (*(v12 + 8))(v16, v11);
  MEMORY[0x223D7B930](v24, v23 / 1000.0);
  v25 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit();
  v26 = *(v25 + 24);
  v27 = MEMORY[0x277D83D88];
  sub_2203DF738(a1 + v26, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88], sub_2203DE8BC);
  (*(v18 + 32))(a1 + v26, v22, v17);
  (*(v18 + 56))(a1 + v26, 0, 1, v17);
  v36 = v33;
  v37 = v34;
  v38 = v35;
  sub_2203DEB0C(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v28 = v32;
  sub_22042B810();
  v29 = *(v25 + 20);
  sub_2203DF738(a1 + v29, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, v27, sub_2203DE8BC);
  sub_2203DF148(v28, a1 + v29, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  return (*(v39 + 56))(a1 + v29, 0, 1, v7);
}

uint64_t sub_2203DDDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v26 = a3;
  v7 = MEMORY[0x277D83D88];
  sub_2203DE8BC(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v25 - v11;
  v13 = sub_22042A5B0();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v16 = sub_22042B600();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22042A5A0();
  sub_22042B5E0();
  v22 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0) + 24);
  sub_2203DF738(a1 + v22, &qword_280FA2228, MEMORY[0x277D21570], v7, sub_2203DE8BC);
  (*(v17 + 32))(a1 + v22, v21, v16);
  (*(v17 + 56))(a1 + v22, 0, 1, v16);
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol();
  v29 = a2;
  v30 = v26;
  v31 = v27;
  v32 = v28;
  sub_2203DEB0C(&qword_27CF523A8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
  sub_22042B810();
  v23 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v23 - 8) + 56))(v12, 0, 1, v23);
  return sub_2203DF494(v12, a1, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
}

uint64_t sub_2203DE0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v26 = a3;
  v7 = MEMORY[0x277D83D88];
  sub_2203DE8BC(0, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v25 - v11;
  v13 = sub_22042A5B0();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v16 = sub_22042B600();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22042A5A0();
  sub_22042B5E0();
  v22 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent(0) + 24);
  sub_2203DF738(a1 + v22, &qword_280FA2228, MEMORY[0x277D21570], v7, sub_2203DE8BC);
  (*(v17 + 32))(a1 + v22, v21, v16);
  (*(v17 + 56))(a1 + v22, 0, 1, v16);
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol();
  v29 = a2;
  v30 = v26;
  v31 = v27;
  v32 = v28;
  sub_2203DEB0C(&qword_27CF523C0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
  sub_22042B810();
  v23 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v23 - 8) + 56))(v12, 0, 1, v23);
  return sub_2203DF494(v12, a1, qword_280FA21D0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
}

uint64_t sub_2203DE3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  v23 = a7;
  v11 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v19[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = a3;
  v21 = a4;
  v22 = a5;
  sub_2203DEB0C(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_22042B810();
  v17 = *(v23(0) + 20);
  sub_2203DF738(a1 + v17, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88], sub_2203DE8BC);
  sub_2203DF148(v16, a1 + v17, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  return (*(v12 + 56))(a1 + v17, 0, 1, v11);
}

uint64_t sub_2203DE5CC()
{
  v1 = OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_eventStream;
  sub_2203DE8BC(0, &qword_280FA03B8, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D857B8]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_continuation;
  sub_2203DE8BC(0, &qword_280FA03D0, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D85788]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_groupIDStockMessageTranslator));
  v5 = *(v0 + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_sessionManager);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_stockEntityService));
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_2203DE75C()
{
  sub_2203DE8BC(319, &qword_280FA03B8, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2203DE8BC(319, &qword_280FA03D0, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D85788]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2203DE8BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2203DE920()
{
  sub_2203DE9E4();
  if (v0 <= 0x3F)
  {
    sub_2203DEA78();
    if (v1 <= 0x3F)
    {
      sub_2203DEB54();
      if (v2 <= 0x3F)
      {
        sub_2203DEBE8();
        if (v3 <= 0x3F)
        {
          sub_2203DEC7C();
          if (v4 <= 0x3F)
          {
            sub_2203DED10();
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2203DE9E4()
{
  if (!qword_280FA2440)
  {
    sub_22042AFC0();
    sub_2203DEB0C(&qword_280FA23B8, MEMORY[0x277D68850]);
    v0 = sub_22042ABE0();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA2440);
    }
  }
}

void sub_2203DEA78()
{
  if (!qword_280FA2430)
  {
    sub_22042B010();
    sub_2203DEB0C(&qword_280FA23A0, MEMORY[0x277D68990]);
    v0 = sub_22042ABE0();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA2430);
    }
  }
}

uint64_t sub_2203DEB0C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2203DEB54()
{
  if (!qword_280FA2460)
  {
    sub_22042B080();
    sub_2203DEB0C(&qword_280FA2390, MEMORY[0x277D689F0]);
    v0 = sub_22042ABE0();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA2460);
    }
  }
}

void sub_2203DEBE8()
{
  if (!qword_280FA2450)
  {
    sub_22042AF70();
    sub_2203DEB0C(&qword_280FA23D0, MEMORY[0x277D68488]);
    v0 = sub_22042ABE0();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA2450);
    }
  }
}

void sub_2203DEC7C()
{
  if (!qword_280FA2480)
  {
    sub_22042AF90();
    sub_2203DEB0C(&qword_280FA23C8, MEMORY[0x277D687D0]);
    v0 = sub_22042ABE0();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA2480);
    }
  }
}

void sub_2203DED10()
{
  if (!qword_280FA2470)
  {
    sub_22042AFE0();
    sub_2203DEB0C(&qword_280FA23B0, MEMORY[0x277D688E8]);
    v0 = sub_22042ABE0();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA2470);
    }
  }
}

uint64_t sub_2203DEFEC()
{
  sub_22042BFC0();
  MEMORY[0x223D7C2F0](0);
  return sub_22042BFE0();
}

uint64_t sub_2203DF058()
{
  sub_22042BFC0();
  MEMORY[0x223D7C2F0](0);
  return sub_22042BFE0();
}

uint64_t sub_2203DF0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22042AAB0();
  v9 = v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v11 = (a1 + *(v10 + 20));
  v12 = v11[1];

  *v11 = v7;
  v11[1] = v9;
  v13 = (a1 + *(v10 + 24));
  v14 = v13[1];

  *v13 = a3;
  v13[1] = a4;
  return result;
}

uint64_t sub_2203DF148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2203DF1B0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_2203DF244()
{
  result = qword_27CF52390;
  if (!qword_27CF52390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF52390);
  }

  return result;
}

uint64_t sub_2203DF298(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2203DF1B0(a1, a2);
  }

  return a1;
}

uint64_t sub_2203DF344(uint64_t a1, uint64_t a2)
{
  sub_2203DE8BC(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2203DF3D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2203DF42C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2203DF494(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2203DE8BC(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_2203DF5B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2203DF670(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2203DF738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for ProtoMessageJSONEncodingError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ProtoMessageJSONEncodingError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_2203DF8A0()
{
  v0 = sub_22042AAC0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t sub_2203DF8FC()
{
  result = qword_27CF523D8;
  if (!qword_27CF523D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF523D8);
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventWatchSymbol.stock.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol() + 20);
  sub_2203DFA48(v1 + v3);
  sub_2203DFAD4(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol()
{
  result = qword_280FA1C18;
  if (!qword_280FA1C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2203DFA48(uint64_t a1)
{
  sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2203DFAD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventWatchSymbol.stock.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol();
  sub_2203DF344(v1 + *(v8 + 20), v7);
  v9 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_2203DFAD4(v7, a1);
  }

  sub_22042B670();
  v11 = (a1 + *(v9 + 20));
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + *(v9 + 24));
  *v12 = 0;
  v12[1] = 0;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_2203DFA48(v7);
  }

  return result;
}

uint64_t sub_2203DFC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol();
  sub_2203DF344(a1 + *(v9 + 20), v8);
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_2203DFAD4(v8, a2);
  }

  sub_22042B670();
  v12 = (a2 + *(v10 + 20));
  *v12 = 0;
  v12[1] = 0;
  v13 = (a2 + *(v10 + 24));
  *v13 = 0;
  v13[1] = 0;
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_2203DFA48(v8);
  }

  return result;
}

uint64_t sub_2203DFDF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203D174C(a1, v9);
  v10 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol() + 20);
  sub_2203DFA48(a2 + v10);
  sub_2203DFAD4(v9, a2 + v10);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

void (*Com_Apple_Stocks_Personalization_SessionEventWatchSymbol.stock.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol() + 20);
  *(v5 + 12) = v16;
  sub_2203DF344(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_22042B670();
    v18 = (v15 + *(v10 + 20));
    *v18 = 0;
    v18[1] = 0;
    v19 = (v15 + *(v10 + 24));
    *v19 = 0;
    v19[1] = 0;
    if (v17(v9, 1, v10) != 1)
    {
      sub_2203DFA48(v9);
    }
  }

  else
  {
    sub_2203DFAD4(v9, v15);
  }

  return sub_2203E0104;
}

void sub_2203E0104(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_2203D174C((*a1)[5], v4);
    sub_2203DFA48(v9 + v3);
    sub_2203DFAD4(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_2203E0210(v5, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  }

  else
  {
    sub_2203DFA48(v9 + v3);
    sub_2203DFAD4(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_2203E0210(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL Com_Apple_Stocks_Personalization_SessionEventWatchSymbol.hasStock.getter()
{
  sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol();
  sub_2203DF344(v0 + *(v6 + 20), v5);
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_2203DFA48(v5);
  return v8;
}

Swift::Void __swiftcall Com_Apple_Stocks_Personalization_SessionEventWatchSymbol.clearStock()()
{
  v1 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol() + 20);
  sub_2203DFA48(v0 + v1);
  v2 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventWatchSymbol.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22042B680();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventWatchSymbol.unknownFields.setter(uint64_t a1)
{
  v3 = sub_22042B680();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventWatchSymbol.init()@<X0>(uint64_t a1@<X8>)
{
  sub_22042B670();
  v2 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol() + 20);
  v3 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t sub_2203E056C()
{
  v0 = sub_22042B8C0();
  __swift_allocate_value_buffer(v0, qword_27CF523E0);
  __swift_project_value_buffer(v0, qword_27CF523E0);
  sub_2203E16A8(0, &qword_280FA01C8, sub_2203E170C, MEMORY[0x277D84560]);
  sub_2203E170C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22042D3F0;
  v6 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v6 = "stock";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22042B8A0();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  return sub_22042B8B0();
}

uint64_t static Com_Apple_Stocks_Personalization_SessionEventWatchSymbol._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF51EE0 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_27CF523E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventWatchSymbol.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22042B700();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2203E0844();
    }
  }

  return result;
}

uint64_t sub_2203E0844()
{
  v0 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol() + 20);
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  sub_2203E15FC(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  return sub_22042B7A0();
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventWatchSymbol.traverse<A>(visitor:)()
{
  result = sub_2203E0950(v0);
  if (!v1)
  {
    return sub_22042B660();
  }

  return result;
}

uint64_t sub_2203E0950(uint64_t a1)
{
  sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = v15 - v5;
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol();
  sub_2203DF344(a1 + *(v13 + 20), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_2203DFA48(v6);
  }

  sub_2203DFAD4(v6, v12);
  sub_2203E15FC(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_22042B890();
  return sub_2203E0210(v12, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventWatchSymbol.hashValue.getter()
{
  sub_22042BFC0();
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol();
  sub_2203E15FC(&qword_27CF523F8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);
  sub_22042B9F0();
  return sub_22042BFE0();
}

uint64_t sub_2203E0BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22042B670();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_2203E0C7C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22042B680();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2203E0CE4(uint64_t a1)
{
  v3 = sub_22042B680();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2203E0DA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2203E15FC(&qword_27CF52410, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2203E0E20@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF51EE0 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_27CF523E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2203E0EC8(uint64_t a1)
{
  v2 = sub_2203E15FC(&qword_27CF523A8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2203E0F34()
{
  sub_22042BFC0();
  sub_22042B9F0();
  return sub_22042BFE0();
}

uint64_t sub_2203E0F8C()
{
  sub_2203E15FC(&qword_27CF523A8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol);

  return sub_22042B800();
}

uint64_t sub_2203E1008()
{
  sub_22042BFC0();
  sub_22042B9F0();
  return sub_22042BFE0();
}

uint64_t _s21StocksPersonalization010Com_Apple_a1_B24_SessionEventWatchSymbolV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v27 - v13;
  sub_2203E1568();
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventWatchSymbol() + 20);
  v22 = *(v16 + 56);
  sub_2203DF344(a1 + v21, v20);
  sub_2203DF344(a2 + v21, &v20[v22]);
  v23 = *(v5 + 48);
  if (v23(v20, 1, v4) == 1)
  {
    if (v23(&v20[v22], 1, v4) == 1)
    {
      sub_2203DFA48(v20);
LABEL_9:
      sub_22042B680();
      sub_2203E15FC(&qword_27CF52420, MEMORY[0x277D216C8]);
      v24 = sub_22042BA10();
      return v24 & 1;
    }

    goto LABEL_6;
  }

  sub_2203DF344(v20, v14);
  if (v23(&v20[v22], 1, v4) == 1)
  {
    sub_2203E0210(v14, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
LABEL_6:
    sub_2203E0210(v20, sub_2203E1568);
    goto LABEL_7;
  }

  sub_2203DFAD4(&v20[v22], v9);
  v25 = static Com_Apple_Stocks_Personalization_SessionStock.== infix(_:_:)(v14, v9);
  sub_2203E0210(v9, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_2203E0210(v14, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_2203DFA48(v20);
  if (v25)
  {
    goto LABEL_9;
  }

LABEL_7:
  v24 = 0;
  return v24 & 1;
}

void sub_2203E14B4()
{
  sub_22042B680();
  if (v0 <= 0x3F)
  {
    sub_2203E16A8(319, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2203E1568()
{
  if (!qword_27CF52418)
  {
    sub_2203E16A8(255, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF52418);
    }
  }
}

uint64_t sub_2203E15FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

void sub_2203E16A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2203E170C()
{
  if (!qword_280FA03B0)
  {
    sub_22042B8A0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280FA03B0);
    }
  }
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol.stock.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol() + 20);
  sub_2203DFA48(v1 + v3);
  sub_2203DFAD4(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol()
{
  result = qword_280FA1B88;
  if (!qword_280FA1B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol.stock.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol();
  sub_2203DF344(v1 + *(v8 + 20), v7);
  v9 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_2203DFAD4(v7, a1);
  }

  sub_22042B670();
  v11 = (a1 + *(v9 + 20));
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + *(v9 + 24));
  *v12 = 0;
  v12[1] = 0;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_2203DFA48(v7);
  }

  return result;
}

uint64_t sub_2203E19B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol();
  sub_2203DF344(a1 + *(v9 + 20), v8);
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_2203DFAD4(v8, a2);
  }

  sub_22042B670();
  v12 = (a2 + *(v10 + 20));
  *v12 = 0;
  v12[1] = 0;
  v13 = (a2 + *(v10 + 24));
  *v13 = 0;
  v13[1] = 0;
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_2203DFA48(v8);
  }

  return result;
}

uint64_t sub_2203E1B10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203D174C(a1, v9);
  v10 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol() + 20);
  sub_2203DFA48(a2 + v10);
  sub_2203DFAD4(v9, a2 + v10);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

void (*Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol.stock.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol() + 20);
  *(v5 + 12) = v16;
  sub_2203DF344(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_22042B670();
    v18 = (v15 + *(v10 + 20));
    *v18 = 0;
    v18[1] = 0;
    v19 = (v15 + *(v10 + 24));
    *v19 = 0;
    v19[1] = 0;
    if (v17(v9, 1, v10) != 1)
    {
      sub_2203DFA48(v9);
    }
  }

  else
  {
    sub_2203DFAD4(v9, v15);
  }

  return sub_2203E0104;
}

BOOL Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol.hasStock.getter()
{
  sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol();
  sub_2203DF344(v0 + *(v6 + 20), v5);
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_2203DFA48(v5);
  return v8;
}

Swift::Void __swiftcall Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol.clearStock()()
{
  v1 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol() + 20);
  sub_2203DFA48(v0 + v1);
  v2 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22042B680();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol.unknownFields.setter(uint64_t a1)
{
  v3 = sub_22042B680();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol.init()@<X0>(uint64_t a1@<X8>)
{
  sub_22042B670();
  v2 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol() + 20);
  v3 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t sub_2203E211C()
{
  v0 = sub_22042B8C0();
  __swift_allocate_value_buffer(v0, qword_27CF52428);
  __swift_project_value_buffer(v0, qword_27CF52428);
  sub_2203E16A8(0, &qword_280FA01C8, sub_2203E170C, MEMORY[0x277D84560]);
  sub_2203E170C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22042D3F0;
  v6 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v6 = "stock";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22042B8A0();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  return sub_22042B8B0();
}

uint64_t static Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF51EE8 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_27CF52428);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22042B700();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2203E23BC();
    }
  }

  return result;
}

uint64_t sub_2203E23BC()
{
  v0 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol() + 20);
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  sub_2203E2E0C(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  return sub_22042B7A0();
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol.traverse<A>(visitor:)()
{
  result = sub_2203E24C8(v0);
  if (!v1)
  {
    return sub_22042B660();
  }

  return result;
}

uint64_t sub_2203E24C8(uint64_t a1)
{
  sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = v15 - v5;
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol();
  sub_2203DF344(a1 + *(v13 + 20), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_2203DFA48(v6);
  }

  sub_2203DFAD4(v6, v12);
  sub_2203E2E0C(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_22042B890();
  return sub_2203E0210(v12, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol.hashValue.getter()
{
  sub_22042BFC0();
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol();
  sub_2203E2E0C(&qword_27CF52440, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);
  sub_22042B9F0();
  return sub_22042BFE0();
}

uint64_t sub_2203E27A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2203E2E0C(&qword_27CF52458, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2203E2824@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF51EE8 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_27CF52428);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2203E28CC(uint64_t a1)
{
  v2 = sub_2203E2E0C(&qword_27CF523C0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2203E2938()
{
  sub_2203E2E0C(&qword_27CF523C0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol);

  return sub_22042B800();
}

uint64_t _s21StocksPersonalization010Com_Apple_a1_B26_SessionEventUnwatchSymbolV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203E16A8(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v27 - v13;
  sub_2203E1568();
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventUnwatchSymbol() + 20);
  v22 = *(v16 + 56);
  sub_2203DF344(a1 + v21, v20);
  sub_2203DF344(a2 + v21, &v20[v22]);
  v23 = *(v5 + 48);
  if (v23(v20, 1, v4) == 1)
  {
    if (v23(&v20[v22], 1, v4) == 1)
    {
      sub_2203DFA48(v20);
LABEL_9:
      sub_22042B680();
      sub_2203E2E0C(&qword_27CF52420, MEMORY[0x277D216C8]);
      v24 = sub_22042BA10();
      return v24 & 1;
    }

    goto LABEL_6;
  }

  sub_2203DF344(v20, v14);
  if (v23(&v20[v22], 1, v4) == 1)
  {
    sub_2203E0210(v14, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
LABEL_6:
    sub_2203E0210(v20, sub_2203E1568);
    goto LABEL_7;
  }

  sub_2203DFAD4(&v20[v22], v9);
  v25 = static Com_Apple_Stocks_Personalization_SessionStock.== infix(_:_:)(v14, v9);
  sub_2203E0210(v9, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_2203E0210(v14, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_2203DFA48(v20);
  if (v25)
  {
    goto LABEL_9;
  }

LABEL_7:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_2203E2E0C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2203E2E54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC21StocksPersonalization29ComputeServiceUnloaderService_configurationManager] = a1;
  *&v3[OBJC_IVAR____TtC21StocksPersonalization29ComputeServiceUnloaderService_workService] = a2;
  v13.receiver = v3;
  v13.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v13, sel_init);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 defaultCenter];
  [v10 addObserver:v9 selector:sel_applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];

  v11 = [v8 defaultCenter];
  [v11 addObserver:v9 selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

  return v9;
}

uint64_t sub_2203E2FA0()
{
  v1 = v0;
  v26 = sub_22042A790();
  v2 = *(v26 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v26, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280FA0CE8 != -1)
  {
    swift_once();
  }

  v7 = qword_280FA0CF0;
  sub_2203C1EE8();
  v25 = v8;
  v9 = swift_allocObject();
  v24 = xmmword_22042D3F0;
  *(v9 + 16) = xmmword_22042D3F0;
  sub_22042A420();
  sub_2203C1F50();
  v10 = sub_22042BF20();
  v12 = v11;
  *(v9 + 56) = MEMORY[0x277D837D0];
  v13 = sub_2203C1FA8();
  *(v9 + 64) = v13;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  sub_22042BCA0();
  v27 = v7;
  sub_22042B8D0();

  v23 = v1;
  v14 = *(v1 + OBJC_IVAR____TtC21StocksPersonalization29ComputeServiceUnloaderService_configurationManager);
  v15 = v14[6];
  __swift_project_boxed_opaque_existential_1(v14 + 2, v14[5]);
  sub_22042AA40();
  sub_2203C1FFC(&v29);
  (*(v2 + 8))(v6, v26);
  v44[12] = v41;
  v44[13] = v42;
  v44[8] = v37;
  v44[9] = v38;
  v44[10] = v39;
  v44[11] = v40;
  v44[4] = v33;
  v44[5] = v34;
  v44[6] = v35;
  v44[7] = v36;
  v44[0] = v29;
  v44[1] = v30;
  v44[2] = v31;
  v44[3] = v32;
  v47 = v41;
  v48 = v42;
  v46[8] = v37;
  v46[9] = v38;
  v46[10] = v39;
  v46[11] = v40;
  v46[4] = v33;
  v46[5] = v34;
  v46[6] = v35;
  v46[7] = v36;
  v46[0] = v29;
  v46[1] = v30;
  v45 = v43;
  v49 = v43;
  v46[2] = v31;
  v46[3] = v32;
  if (sub_2203C30A8(v46) == 1)
  {
    sub_2203C30C0();
    v16 = swift_allocError();
    swift_willThrow();
    sub_22042BC80();
    v17 = swift_allocObject();
    *(v17 + 16) = v24;
    *&v29 = 0;
    *(&v29 + 1) = 0xE000000000000000;
    v28 = v16;
    sub_2203CFDB8(0, &unk_280FA01A0);
    sub_22042BDF0();
    v18 = v29;
    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = v13;
    *(v17 + 32) = v18;
    sub_22042B8D0();

    return MEMORY[0x223D7C730](v16);
  }

  else
  {
    sub_2203E34AC(v44);
    v20 = BYTE8(v47);
    sub_22042BCA0();
    if (v20 == 1)
    {
      sub_22042B8D0();
      v21 = *(v23 + OBJC_IVAR____TtC21StocksPersonalization29ComputeServiceUnloaderService_workService);
      return sub_22042B1A0();
    }

    else
    {
      return sub_22042B8D0();
    }
  }
}

id sub_2203E3428()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2203E34AC(uint64_t a1)
{
  sub_2203E3508();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2203E3508()
{
  if (!qword_280FA08C0)
  {
    v0 = sub_22042BCF0();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA08C0);
    }
  }
}

uint64_t Com_Apple_Stocks_Personalization_SessionStock.symbol.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock() + 20));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock()
{
  result = qword_280FA2048;
  if (!qword_280FA2048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionStock.entityID.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock() + 24));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_2203E364C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock() + 20));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_2203E36B0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock() + 20));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionStock.symbol.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_2203E374C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock() + 24));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_2203E37B0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock() + 24));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionStock.entityID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionStock.init()@<X0>(uint64_t a1@<X8>)
{
  sub_22042B670();
  result = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v3 = (a1 + *(result + 20));
  *v3 = 0;
  v3[1] = 0;
  v4 = (a1 + *(result + 24));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t (*Com_Apple_Stocks_Personalization_SessionStock.symbol.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock() + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_2203E3940;
}

Swift::Void __swiftcall Com_Apple_Stocks_Personalization_SessionStock.clearSymbol()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock() + 20));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t (*Com_Apple_Stocks_Personalization_SessionStock.entityID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock() + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_2203E47CC;
}

void sub_2203E3A5C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    v8 = (v7 + v5);
    v9 = (*a1)[1];

    *v8 = v4;
    v8[1] = v3;
    v10 = v2[1];
  }

  else
  {
    v11 = (*a1)[3];

    v12 = (v7 + v5);
    *v12 = v4;
    v12[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall Com_Apple_Stocks_Personalization_SessionStock.clearEntityID()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock() + 24));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_Stocks_Personalization_SessionStock.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22042B680();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_Stocks_Personalization_SessionStock.unknownFields.setter(uint64_t a1)
{
  v3 = sub_22042B680();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2203E3C58()
{
  v0 = sub_22042B8C0();
  __swift_allocate_value_buffer(v0, qword_280FA2078);
  __swift_project_value_buffer(v0, qword_280FA2078);
  sub_2203E4774();
  sub_2203E170C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22042D3E0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "symbol";
  *(v7 + 8) = 6;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_22042B8A0();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "entity_id";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v12 = *MEMORY[0x277D21888];
  v10();
  return sub_22042B8B0();
}

uint64_t static Com_Apple_Stocks_Personalization_SessionStock._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA2070 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA2078);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_Stocks_Personalization_SessionStock.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22042B700();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock() + 20);
      goto LABEL_3;
    }

    if (result == 2)
    {
      v4 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock() + 24);
LABEL_3:
      v0 = 0;
      sub_22042B760();
    }
  }
}

uint64_t Com_Apple_Stocks_Personalization_SessionStock.traverse<A>(visitor:)()
{
  result = sub_2203E3FD0(v0);
  if (!v1)
  {
    sub_2203E4048(v0);
    return sub_22042B660();
  }

  return result;
}

uint64_t sub_2203E3FD0(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v3 = (a1 + *(result + 20));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22042B860();
  }

  return result;
}

uint64_t sub_2203E4048(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v3 = (a1 + *(result + 24));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22042B860();
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionStock.hashValue.getter()
{
  sub_22042BFC0();
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  sub_2203E472C(&qword_27CF52470, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_22042B9F0();
  return sub_22042BFE0();
}

uint64_t sub_2203E414C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22042B670();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_2203E41D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2203E472C(&qword_27CF52480, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2203E4250@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA2070 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA2078);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2203E42F8(uint64_t a1)
{
  v2 = sub_2203E472C(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2203E4364()
{
  sub_2203E472C(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);

  return sub_22042B800();
}

uint64_t _s21StocksPersonalization010Com_Apple_a1_B13_SessionStockV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_22042BF50();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = *(v4 + 24);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (v17)
    {
      v18 = *v14 == *v16 && v15 == v17;
      if (v18 || (sub_22042BF50() & 1) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (!v17)
  {
LABEL_17:
    sub_22042B680();
    sub_2203E472C(&qword_27CF52420, MEMORY[0x277D216C8]);
    return sub_22042BA10() & 1;
  }

  return 0;
}

void sub_2203E4658()
{
  sub_22042B680();
  if (v0 <= 0x3F)
  {
    sub_2203E46DC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2203E46DC()
{
  if (!qword_280FA0460)
  {
    v0 = sub_22042BCF0();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA0460);
    }
  }
}

uint64_t sub_2203E472C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2203E4774()
{
  if (!qword_280FA01C8)
  {
    sub_2203E170C();
    v0 = sub_22042BF30();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA01C8);
    }
  }
}

uint64_t sub_2203E47F4()
{
  v0 = sub_22042AB90();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22042AB80();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  (*(v10 + 104))(v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D090]);
  (*(v1 + 104))(v5, *MEMORY[0x277D6D0A8], v0);
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_2203C2F20(0, &qword_27CF52490);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  result = sub_22042ABB0();
  qword_27CF52488 = result;
  return result;
}

uint64_t sub_2203E49E8(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t sub_2203E4A58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x8000000220431180;
      v3 = 0xD000000000000024;
    }

    else
    {
      v4 = 0xE700000000000000;
      v3 = 0x6E6F6973726576;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x7475706D6F436C6DLL;
    }

    else
    {
      v3 = 0xD000000000000020;
    }

    if (v2)
    {
      v4 = 0xEE007374696E5565;
    }

    else
    {
      v4 = 0x8000000220431150;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x8000000220431180;
      if (v3 != 0xD000000000000024)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0xE700000000000000;
      if (v3 != 0x6E6F6973726576)
      {
LABEL_26:
        v7 = sub_22042BF50();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x7475706D6F436C6DLL;
    }

    else
    {
      v5 = 0xD000000000000020;
    }

    if (a2)
    {
      v6 = 0xEE007374696E5565;
    }

    else
    {
      v6 = 0x8000000220431150;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_26;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

unint64_t sub_2203E4BC4()
{
  *v0;
  if (*v0)
  {
    result = 0xD000000000000023;
  }

  else
  {
    result = 0xD00000000000001CLL;
  }

  *v0;
  return result;
}

uint64_t sub_2203E4C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2203E843C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2203E4C54(uint64_t a1)
{
  v2 = sub_2203EA080();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203E4C90(uint64_t a1)
{
  v2 = sub_2203EA080();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2203E4CCC(void *a1)
{
  v3 = v1;
  sub_2203EA908(0, &qword_280FA02A0, sub_2203EA080, &type metadata for ComputeServiceConfiguration.FeedPersonalizationConfiguration.OutputConfiguration.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5, v9);
  v11 = &v20 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203EA080();
  sub_22042C000();
  v13 = *v3;
  v14 = v3[1];
  v23 = 0;
  sub_22042BED0();
  if (!v2)
  {
    v15 = v3[2];
    v16 = v3[3];
    v22 = 1;
    sub_22042BED0();
    v17 = v3[4];
    v18 = v3[5];
    v21 = 2;
    sub_22042BED0();
  }

  return (*(v7 + 8))(v11, v6);
}

double sub_2203E4E78@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2203E8560(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_2203E4ED4(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_22042BF50() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_22042BF50() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_22042BF50();
}

uint64_t sub_2203E4FCC(void *a1)
{
  sub_2203EA908(0, &qword_280FA0290, sub_2203EA8B4, &type metadata for ComputeServiceConfiguration.FeedPersonalizationConfiguration.UserEventConfiguration.EventConditions.DurationCondition.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3, v7);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203EA8B4();
  sub_22042C000();
  v12[15] = 0;
  sub_22042BEF0();
  if (!v1)
  {
    v12[14] = 1;
    sub_22042BEF0();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_2203E5160(void *a1, double a2, double a3)
{
  sub_2203EA908(0, &qword_280FA0298, sub_2203EA690, &type metadata for ComputeServiceConfiguration.FeedPersonalizationConfiguration.UserEventConfiguration.EventConditions.CodingKeys, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6, v10);
  v12 = v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203EA690();
  sub_22042C000();
  *v15 = a2;
  *&v15[1] = a3;
  sub_2203EA738();
  sub_22042BF10();
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_2203E52E0(void *a1)
{
  v3 = v1;
  sub_2203EA908(0, &qword_280FA0288, sub_2203EA0D4, &type metadata for ComputeServiceConfiguration.FeedPersonalizationConfiguration.UserEventConfiguration.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5, v9);
  v11 = &v17 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203EA0D4();
  sub_22042C000();
  v13 = *v3;
  LOBYTE(v17) = 0;
  sub_22042BF00();
  if (!v2)
  {
    v17 = *(v3 + 1);
    v18 = 1;
    sub_2203EA17C();
    sub_22042BF10();
    v14 = v3[3];
    LOBYTE(v17) = 2;
    sub_22042BF00();
    v15 = v3[4];
    LOBYTE(v17) = 3;
    sub_22042BF00();
  }

  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_2203E54E0(void *a1)
{
  v3 = v1;
  sub_2203EA908(0, &qword_280FA0280, sub_2203E98E4, &type metadata for ComputeServiceConfiguration.FeedPersonalizationConfiguration.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5, v9);
  v11 = &v22 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203E98E4();
  sub_22042C000();
  v13 = v3[1];
  v22 = *v3;
  v23 = v13;
  v24 = v3[2];
  v25 = 0;
  sub_2203E9A34();
  sub_22042BF10();
  if (!v2)
  {
    v14 = *(v3 + 6);
    LOBYTE(v22) = 1;
    sub_22042BF00();
    v15 = *(v3 + 7);
    LOBYTE(v22) = 2;
    sub_22042BF00();
    v16 = v3[5];
    v22 = v3[4];
    v23 = v16;
    v24 = v3[6];
    v25 = 3;
    sub_22042BF10();
    v17 = *(v3 + 14);
    v18 = *(v3 + 15);
    LOBYTE(v22) = 4;
    sub_22042BED0();
    v20 = *(v3 + 16);
    LOBYTE(v22) = 5;
    sub_22042BF00();
    v21 = *(v3 + 152);
    v22 = *(v3 + 136);
    v23 = v21;
    *&v24 = *(v3 + 21);
    v25 = 6;
    sub_2203E9A88();
    sub_22042BF10();
  }

  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_2203E5780(void *a1, uint64_t a2, uint64_t a3)
{
  v14[1] = a3;
  sub_2203EA908(0, &qword_280FA02A8, sub_2203E99E0, &type metadata for ComputeServiceConfiguration.UnloadGraphOnBackgroundConfiguration.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5, v9);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203E99E0();
  sub_22042C000();
  v16 = 0;
  sub_22042BEE0();
  if (!v3)
  {
    v15 = 1;
    sub_22042BF00();
  }

  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_2203E5914()
{
  if (*v0)
  {
    result = 0x6C696261626F7270;
  }

  else
  {
    result = 0x6E6F697461727564;
  }

  *v0;
  return result;
}

uint64_t sub_2203E5958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v6 || (sub_22042BF50() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C696261626F7270 && a2 == 0xEB00000000797469)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22042BF50();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2203E5A38(uint64_t a1)
{
  v2 = sub_2203EA8B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203E5A74(uint64_t a1)
{
  v2 = sub_2203EA8B4();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2203E5AB0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2203E87E4(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_2203E5ADC(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_2203E4FCC(a1);
}

uint64_t sub_2203E5B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x52656C6369747261 && a2 == 0xEB00000000646165)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22042BF50();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2203E5BDC(uint64_t a1)
{
  v2 = sub_2203EA690();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203E5C18(uint64_t a1)
{
  v2 = sub_2203EA690();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2203E5C54(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2203E89D8(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

unint64_t sub_2203E5CB8()
{
  v1 = 0x6E6F43746E657665;
  v2 = 0x6369706F5478616DLL;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2203E5D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2203E8BA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2203E5D74(uint64_t a1)
{
  v2 = sub_2203EA0D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203E5DB0(uint64_t a1)
{
  v2 = sub_2203EA0D4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2203E5DEC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2203E8D24(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_2203E5E94()
{
  v1 = *v0;
  sub_22042BFC0();
  MEMORY[0x223D7C2F0](v1);
  return sub_22042BFE0();
}

uint64_t sub_2203E5EDC()
{
  v1 = *v0;
  sub_22042BFC0();
  MEMORY[0x223D7C2F0](v1);
  return sub_22042BFE0();
}

unint64_t sub_2203E5F20()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6369706F5478616DLL;
    if (v1 == 1)
    {
      v5 = 0xD00000000000001ALL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000019;
    }
  }

  else
  {
    v2 = 0xD000000000000017;
    if (v1 != 5)
    {
      v2 = 0xD000000000000016;
    }

    v3 = 0xD00000000000001CLL;
    if (v1 != 3)
    {
      v3 = 0x416567616B636170;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2203E6024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2203E8F80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2203E6058(uint64_t a1)
{
  v2 = sub_2203E98E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203E6094(uint64_t a1)
{
  v2 = sub_2203E98E4();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_2203E60D0@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2203E91D4(a1, v9);
  if (!v2)
  {
    v5 = v9[9];
    *(a2 + 128) = v9[8];
    *(a2 + 144) = v5;
    *(a2 + 160) = v9[10];
    v6 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v6;
    v7 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v7;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
    result = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = result;
  }

  return result;
}

BOOL sub_2203E614C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v13[8] = a1[8];
  v13[9] = v2;
  v13[10] = a1[10];
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v7 = a2[9];
  v14[8] = a2[8];
  v14[9] = v7;
  v14[10] = a2[10];
  v8 = a2[5];
  v14[4] = a2[4];
  v14[5] = v8;
  v9 = a2[7];
  v14[6] = a2[6];
  v14[7] = v9;
  v10 = a2[1];
  v14[0] = *a2;
  v14[1] = v10;
  v11 = a2[3];
  v14[2] = a2[2];
  v14[3] = v11;
  return sub_2203E822C(v13, v14);
}

unint64_t sub_2203E61E0()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x64656C62616E65;
  }

  *v0;
  return result;
}

uint64_t sub_2203E6220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v6 || (sub_22042BF50() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002204326C0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22042BF50();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2203E6304(uint64_t a1)
{
  v2 = sub_2203E99E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203E6340(uint64_t a1)
{
  v2 = sub_2203E99E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2203E637C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2203E96C0(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_2203E6408()
{
  v1 = *v0;
  sub_22042BFC0();
  sub_22042BAA0();

  return sub_22042BFE0();
}

uint64_t sub_2203E64E4()
{
  *v0;
  *v0;
  sub_22042BAA0();
}

uint64_t sub_2203E65AC()
{
  v1 = *v0;
  sub_22042BFC0();
  sub_22042BAA0();

  return sub_22042BFE0();
}

uint64_t sub_2203E6684@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2203E9898();
  *a2 = result;
  return result;
}

void sub_2203E66B4(unint64_t *a1@<X8>)
{
  v2 = 0xEE007374696E5565;
  v3 = 0x7475706D6F436C6DLL;
  v4 = 0x8000000220431180;
  v5 = 0xD000000000000024;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000020;
    v2 = 0x8000000220431150;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_2203E674C()
{
  v1 = 0x7475706D6F436C6DLL;
  v2 = 0xD000000000000024;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000020;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2203E67E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2203E9898();
  *a1 = result;
  return result;
}

uint64_t sub_2203E6808(uint64_t a1)
{
  v2 = sub_2203E7380();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2203E6844(uint64_t a1)
{
  v2 = sub_2203E7380();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ComputeServiceConfiguration.humanReadableIdentifier.getter()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  return v1;
}

uint64_t ComputeServiceConfiguration.identifier.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return v1;
}

uint64_t ComputeServiceConfiguration.computeUnits.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 192);
  v4 = sub_22042B140();
  v5 = *(*(v4 - 8) + 104);
  if ((v3 - 1) > 2)
  {
    v6 = MEMORY[0x277CFBAE8];
  }

  else
  {
    v6 = qword_278444B50[v3 - 1];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t ComputeServiceConfiguration.packageIDs.getter()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  sub_2203E69D4();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22042D3F0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  return v3;
}

void sub_2203E69D4()
{
  if (!qword_280FA2560)
  {
    v0 = sub_22042BF30();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA2560);
    }
  }
}

uint64_t ComputeServiceConfiguration.version.getter()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  return v1;
}

uint64_t sub_2203E6A54(__int128 *a1)
{
  v3 = sub_22042A3A0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v6 = sub_22042A3E0();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_22042A3D0();
  sub_22042A390();
  sub_22042A3B0();
  v32 = a1[8];
  v33 = a1[9];
  v34 = a1[10];
  v28 = a1[4];
  v29 = a1[5];
  v30 = a1[6];
  v31 = a1[7];
  v24 = *a1;
  v27 = a1[3];
  v25 = a1[1];
  v26 = a1[2];
  sub_2203E7C20();
  v9 = sub_22042A3C0();
  if (v1)
  {
  }

  v11 = v9;
  v12 = v10;
  v23 = sub_22042A3C0();
  v22 = v13;
  sub_2203E7C74();
  v14 = sub_22042A3C0();
  v16 = v15;
  v17 = sub_22042A3C0();
  v21 = v12;
  v19 = v18;
  sub_22042A560();
  sub_22042A560();
  sub_22042A560();
  sub_22042A560();
  sub_2203DF1B0(v17, v19);
  sub_2203DF1B0(v14, v16);
  sub_2203DF1B0(v23, v22);
  sub_2203DF1B0(v11, v21);

  return 0;
}

uint64_t ComputeServiceConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v61 = sub_22042B9A0();
  v57 = *(v61 - 8);
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v61, v4);
  v60 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22042B980();
  v58 = *(v6 - 8);
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203EA908(0, &qword_280FA02B0, sub_2203E7380, &type metadata for ComputeServiceConfiguration.CodingKeys, MEMORY[0x277D844C8]);
  v12 = v11;
  v59 = *(v11 - 8);
  v13 = *(v59 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v47 - v15;
  v18 = a1[3];
  v17 = a1[4];
  v99 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_2203E7380();
  v19 = v62;
  sub_22042BFF0();
  if (!v19)
  {
    v62 = v10;
    v21 = v60;
    v20 = v61;
    v22 = v59;
    v63[0] = 0;
    sub_2203E73D4();
    v23 = v16;
    sub_22042BEC0();
    v96 = v85;
    v97 = v86;
    v98 = v87;
    v92 = v81;
    v93 = v82;
    v94 = v83;
    v95 = v84;
    v88 = v77;
    v89 = v78;
    v90 = v79;
    v91 = v80;
    v24 = sub_2203E7428();
    v63[0] = 2;
    sub_2203E74F4();
    sub_22042BEC0();
    v54 = v24;
    v53 = v75;
    v52 = v76;
    v63[0] = 3;
    v25 = sub_22042BE80();
    v55 = v26;
    v72 = v96;
    v73 = v97;
    v74 = v98;
    v68 = v92;
    v69 = v93;
    v70 = v94;
    v71 = v95;
    v64 = v88;
    v65 = v89;
    v66 = v90;
    v67 = v91;
    v28 = v25;
    sub_2203CF92C(&v88, v63);

    v51 = v28;
    v48 = sub_2203E6A54(&v88);
    v50 = v29;

    sub_2203CF9DC(&v88);
    v30 = sub_2203E7D68(&qword_280FA04A0, MEMORY[0x277CC5540]);
    v49 = v23;
    v47 = v30;
    v31 = v21;
    v32 = v20;
    sub_22042B970();
    v33 = v48;
    v34 = v50;
    sub_2203DF3D8(v48, v50);
    sub_2203E7A40(v33, v34);
    sub_2203DF1B0(v33, v34);
    sub_22042B960();
    sub_2203DF1B0(v33, v50);
    (*(v57 + 8))(v31, v32);
    sub_2203E7D68(&qword_280FA04A8, MEMORY[0x277CC5290]);
    v35 = v6;
    v36 = v62;
    v37 = sub_22042B990();
    v39 = v38;
    (*(v58 + 8))(v36, v35);
    (*(v22 + 8))(v49, v12);
    v40 = v73;
    v41 = v56;
    *(v56 + 128) = v72;
    *(v41 + 144) = v40;
    *(v41 + 160) = v74;
    v42 = v69;
    *(v41 + 64) = v68;
    *(v41 + 80) = v42;
    v43 = v71;
    *(v41 + 96) = v70;
    *(v41 + 112) = v43;
    v44 = v65;
    *v41 = v64;
    *(v41 + 16) = v44;
    v45 = v67;
    *(v41 + 32) = v66;
    *(v41 + 48) = v45;
    *(v41 + 176) = v37;
    *(v41 + 184) = v39;
    *(v41 + 192) = v54;
    *(v41 + 200) = v53;
    v46 = v51;
    *(v41 + 208) = v52;
    *(v41 + 216) = v46;
    *(v41 + 224) = v55;
  }

  return __swift_destroy_boxed_opaque_existential_1(v99);
}

unint64_t sub_2203E7380()
{
  result = qword_280FA08F8;
  if (!qword_280FA08F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA08F8);
  }

  return result;
}

unint64_t sub_2203E73D4()
{
  result = qword_280FA0900;
  if (!qword_280FA0900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0900);
  }

  return result;
}

unint64_t sub_2203E7428()
{
  sub_2203EA908(0, &qword_280FA02B0, sub_2203E7380, &type metadata for ComputeServiceConfiguration.CodingKeys, MEMORY[0x277D844C8]);
  result = sub_22042BEB0();
  if (!v0 && result >= 4)
  {
    v2 = result;
    sub_2203E9ADC();
    swift_allocError();
    *v3 = v2;
    *(v3 + 8) = 0;
    swift_willThrow();
    return v2;
  }

  return result;
}

unint64_t sub_2203E74F4()
{
  result = qword_280FA09C8;
  if (!qword_280FA09C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA09C8);
  }

  return result;
}

uint64_t ComputeServiceConfiguration.encode(to:)(void *a1)
{
  sub_2203EA908(0, &qword_27CF52498, sub_2203E7380, &type metadata for ComputeServiceConfiguration.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v63 = *(v3 - 8);
  v5 = *(v63 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v21 - v7;
  v9 = v1[9];
  v60 = v1[8];
  v61 = v9;
  v62 = v1[10];
  v10 = v1[5];
  v56 = v1[4];
  v57 = v10;
  v11 = v1[7];
  v58 = v1[6];
  v59 = v11;
  v12 = v1[1];
  v52 = *v1;
  v53 = v12;
  v13 = v1[3];
  v54 = v1[2];
  v55 = v13;
  v24 = *(v1 + 24);
  v23 = *(v1 + 200);
  v14 = *(v1 + 26);
  v21[1] = *(v1 + 27);
  v21[2] = *(v1 + 28);
  v22 = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203CF92C(&v52, &v41);
  sub_2203E7380();
  sub_22042C000();
  v49 = v60;
  v50 = v61;
  v51 = v62;
  v45 = v56;
  v46 = v57;
  v47 = v58;
  v48 = v59;
  v41 = v52;
  v42 = v53;
  v43 = v54;
  v44 = v55;
  v40 = 0;
  sub_2203E7C20();
  v16 = v25;
  sub_22042BF10();
  if (v16)
  {
    v36 = v48;
    v37 = v49;
    v38 = v50;
    v39 = v51;
    v33 = v45;
    v34 = v46;
    v35 = v47;
    v29 = v41;
    v30 = v42;
    v31 = v43;
    v32 = v44;
    sub_2203CF9DC(&v29);
    return (*(v63 + 8))(v8, v4);
  }

  else
  {
    v18 = v22;
    v19 = v23;
    v20 = v63;
    v36 = v48;
    v37 = v49;
    v38 = v50;
    v39 = v51;
    v33 = v45;
    v34 = v46;
    v35 = v47;
    v29 = v41;
    v30 = v42;
    v31 = v43;
    v32 = v44;
    sub_2203CF9DC(&v29);
    v27 = 1;
    sub_22042BF00();
    v27 = v19;
    v28 = v18;
    v26 = 2;
    sub_2203E7C74();
    sub_22042BF10();
    v27 = 3;
    sub_22042BED0();
    return (*(v20 + 8))(v8, v4);
  }
}

uint64_t static ComputeServiceConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 176) == *(a2 + 176) && *(a1 + 184) == *(a2 + 184))
  {
    return 1;
  }

  else
  {
    return sub_22042BF50();
  }
}

uint64_t sub_2203E78E4()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  sub_2203E69D4();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22042D3F0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  return v3;
}

uint64_t sub_2203E7940@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 192);
  v4 = sub_22042B140();
  v5 = *(*(v4 - 8) + 104);
  if ((v3 - 1) > 2)
  {
    v6 = MEMORY[0x277CFBAE8];
  }

  else
  {
    v6 = qword_278444B50[v3 - 1];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t sub_2203E79D4()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  return v1;
}

uint64_t sub_2203E7A04(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 176) == *(a2 + 176) && *(a1 + 184) == *(a2 + 184))
  {
    return 1;
  }

  else
  {
    return sub_22042BF50();
  }
}

uint64_t sub_2203E7A34@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 184);
  *a1 = *(v1 + 176);
  a1[1] = v2;
}

uint64_t sub_2203E7A40(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_22042B9A0();
      sub_2203E7D68(&qword_280FA04A0, MEMORY[0x277CC5540]);
      result = sub_22042B950();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_2203E814C(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2203E7C20()
{
  result = qword_280FA0908;
  if (!qword_280FA0908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0908);
  }

  return result;
}

unint64_t sub_2203E7C74()
{
  result = qword_280FA09D0;
  if (!qword_280FA09D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA09D0);
  }

  return result;
}

unint64_t sub_2203E7CCC()
{
  result = qword_280FA08C8;
  if (!qword_280FA08C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA08C8);
  }

  return result;
}

uint64_t sub_2203E7D68(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy232_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_2203E7E08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ComputeServiceConfiguration.UnloadGraphOnBackgroundConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ComputeServiceConfiguration.UnloadGraphOnBackgroundConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_2203E7F80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_2203E7FC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2203E8048()
{
  result = qword_27CF524A0;
  if (!qword_27CF524A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF524A0);
  }

  return result;
}

unint64_t sub_2203E80A0()
{
  result = qword_280FA08E8;
  if (!qword_280FA08E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA08E8);
  }

  return result;
}

unint64_t sub_2203E80F8()
{
  result = qword_280FA08F0;
  if (!qword_280FA08F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA08F0);
  }

  return result;
}

uint64_t sub_2203E814C(uint64_t a1, uint64_t a2)
{
  result = sub_22042A430();
  if (!result || (result = sub_22042A460(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22042A450();
      sub_22042B9A0();
      sub_2203E7D68(&qword_280FA04A0, MEMORY[0x277CC5540]);
      return sub_22042B950();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_2203E822C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_22042BF50() & 1) == 0)
  {
    return 0;
  }

  if ((v4 != v8 || v6 != v9) && (sub_22042BF50() & 1) == 0)
  {
    return 0;
  }

  if ((v5 != v10 || v7 != v11) && (sub_22042BF50() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  v14 = *(a1 + 96);
  v15 = *(a1 + 104);
  v16 = *(a2 + 80);
  v17 = *(a2 + 88);
  v18 = *(a2 + 96);
  v19 = *(a2 + 104);
  if ((*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72)) && (sub_22042BF50() & 1) == 0)
  {
    return 0;
  }

  return (v12 == v16 && v13 == v17 || (sub_22042BF50() & 1) != 0) && (v14 == v18 && v15 == v19 || (sub_22042BF50() & 1) != 0) && (*(a1 + 112) == *(a2 + 112) && *(a1 + 120) == *(a2 + 120) || (sub_22042BF50() & 1) != 0) && *(a1 + 128) == *(a2 + 128) && *(a1 + 136) == *(a2 + 136) && *(a1 + 144) == *(a2 + 144) && *(a1 + 152) == *(a2 + 152) && *(a1 + 160) == *(a2 + 160) && *(a1 + 168) == *(a2 + 168);
}

uint64_t sub_2203E843C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001CLL && 0x80000002204326E0 == a2;
  if (v4 || (sub_22042BF50() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000220432700 == a2 || (sub_22042BF50() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000220432730 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_22042BF50();

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

uint64_t sub_2203E8560@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a2;
  sub_2203EA908(0, &qword_280FA02D8, sub_2203EA080, &type metadata for ComputeServiceConfiguration.FeedPersonalizationConfiguration.OutputConfiguration.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4, v8);
  v10 = &v24 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203EA080();
  sub_22042BFF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v6;
  v13 = v27;
  v30 = 0;
  v14 = sub_22042BE80();
  v16 = v15;
  v26 = v14;
  v29 = 1;
  v24 = sub_22042BE80();
  v25 = v17;
  v28 = 2;
  v18 = sub_22042BE80();
  v19 = v10;
  v21 = v20;
  (*(v12 + 8))(v19, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v13 = v26;
  v13[1] = v16;
  v23 = v25;
  v13[2] = v24;
  v13[3] = v23;
  v13[4] = v18;
  v13[5] = v21;
  return result;
}

double sub_2203E87E4(uint64_t *a1)
{
  sub_2203EA908(0, &qword_280FA02C8, sub_2203EA8B4, &type metadata for ComputeServiceConfiguration.FeedPersonalizationConfiguration.UserEventConfiguration.EventConditions.DurationCondition.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4, v8);
  v10 = &v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203EA8B4();
  sub_22042BFF0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v19 = 0;
    v12 = sub_22042BE70();
    v14 = v13;
    v15 = *&v12;
    v18 = 1;
    sub_22042BEA0();
    if (v14)
    {
      v2 = 0.0;
    }

    else
    {
      v2 = v15;
    }

    (*(v6 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v2;
}

double sub_2203E89D8(uint64_t *a1)
{
  sub_2203EA908(0, &qword_280FA02D0, sub_2203EA690, &type metadata for ComputeServiceConfiguration.FeedPersonalizationConfiguration.UserEventConfiguration.EventConditions.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4, v8);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203EA690();
  sub_22042BFF0();
  if (!v1)
  {
    sub_2203EA6E4();
    sub_22042BEC0();
    (*(v6 + 8))(v10, v5);
    v2 = v13;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_2203E8BA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000220432760 == a2;
  if (v3 || (sub_22042BF50() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F43746E657665 && a2 == 0xEF736E6F69746964 || (sub_22042BF50() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000220432780 == a2 || (sub_22042BF50() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6369706F5478616DLL && a2 == 0xEB00000000736449)
  {

    return 3;
  }

  else
  {
    v6 = sub_22042BF50();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2203E8D24@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = a2;
  sub_2203EA908(0, &qword_280FA02C0, sub_2203EA0D4, &type metadata for ComputeServiceConfiguration.FeedPersonalizationConfiguration.UserEventConfiguration.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4, v8);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203EA0D4();
  sub_22042BFF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v6;
  v13 = v21;
  LOBYTE(v22) = 0;
  v14 = sub_22042BEB0();
  v24 = 1;
  sub_2203EA128();
  sub_22042BEC0();
  v15 = v22;
  v16 = v23;
  LOBYTE(v22) = 2;
  v17 = sub_22042BEB0();
  LOBYTE(v22) = 3;
  v18 = sub_22042BEB0();
  (*(v12 + 8))(v10, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v13 = v14;
  v13[1] = v15;
  v13[2] = v16;
  v13[3] = v17;
  v13[4] = v18;
  return result;
}

uint64_t sub_2203E8F80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000019 && 0x8000000220432620 == a2;
  if (v4 || (sub_22042BF50() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000220432640 == a2 || (sub_22042BF50() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6369706F5478616DLL && a2 == 0xEB00000000736449 || (sub_22042BF50() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000220432660 == a2 || (sub_22042BF50() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x416567616B636170 && a2 == 0xEE00444974657373 || (sub_22042BF50() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000220432680 == a2 || (sub_22042BF50() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002204326A0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_22042BF50();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_2203E91D4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v59 = a2;
  sub_2203EA908(0, &qword_280FA02B8, sub_2203E98E4, &type metadata for ComputeServiceConfiguration.FeedPersonalizationConfiguration.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4, v8);
  v10 = &v42 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_2203E98E4();
  v60 = v10;
  sub_22042BFF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v61);
  }

  v13 = v6;
  LOBYTE(v62) = 0;
  sub_2203E9938();
  v14 = v5;
  sub_22042BEC0();
  v15 = v73;
  v16 = v75;
  v57 = v76;
  v58 = v74;
  v17 = v77;
  v56 = v78;
  LOBYTE(v73) = 1;
  v18 = sub_22042BEB0();
  v53 = v16;
  v54 = v15;
  v51 = v18;
  v52 = v17;
  LOBYTE(v73) = 2;
  v19 = sub_22042BEB0();
  LOBYTE(v62) = 3;
  sub_22042BEC0();
  v20 = v73;
  v55 = v74;
  v21 = v75;
  v22 = v77;
  v49 = v76;
  v50 = v78;
  LOBYTE(v73) = 4;
  v45 = sub_22042BE80();
  v46 = v22;
  v47 = v21;
  v48 = v20;
  v24 = v23;
  LOBYTE(v73) = 5;
  v25 = sub_22042BEB0();
  v97 = 6;
  sub_2203E998C();
  sub_22042BEC0();
  (*(v13 + 8))(v60, v14);
  v26 = v94;
  v27 = v95;
  v43 = *(&v96 + 1);
  v60 = v96;
  v44 = v19;
  v29 = v57;
  v28 = v58;
  *&v62 = v54;
  *(&v62 + 1) = v58;
  *&v63 = v53;
  *(&v63 + 1) = v57;
  *&v64 = v52;
  v30 = v19;
  v31 = v56;
  *(&v64 + 1) = v56;
  *&v65 = v51;
  *(&v65 + 1) = v30;
  *&v66 = v48;
  *(&v66 + 1) = v55;
  *&v67 = v47;
  v32 = v25;
  v42 = v25;
  v34 = v49;
  v33 = v50;
  *(&v67 + 1) = v49;
  *&v68 = v46;
  *(&v68 + 1) = v50;
  *&v69 = v45;
  *(&v69 + 1) = v24;
  *&v70 = v32;
  *(&v70 + 1) = v94;
  v71 = v95;
  v72 = v96;
  sub_2203CF92C(&v62, &v73);
  __swift_destroy_boxed_opaque_existential_1(v61);
  v73 = v54;
  v74 = v28;
  v75 = v53;
  v76 = v29;
  v77 = v52;
  v78 = v31;
  v79 = v51;
  v80 = v44;
  v81 = v48;
  v82 = v55;
  v83 = v47;
  v84 = v34;
  v85 = v46;
  v86 = v33;
  v87 = v45;
  v88 = v24;
  v89 = v42;
  v90 = v26;
  v91 = v27;
  v92 = v60;
  v93 = v43;
  result = sub_2203CF9DC(&v73);
  v36 = v71;
  v37 = v59;
  v59[8] = v70;
  v37[9] = v36;
  v37[10] = v72;
  v38 = v67;
  v37[4] = v66;
  v37[5] = v38;
  v39 = v69;
  v37[6] = v68;
  v37[7] = v39;
  v40 = v63;
  *v37 = v62;
  v37[1] = v40;
  v41 = v65;
  v37[2] = v64;
  v37[3] = v41;
  return result;
}

uint64_t sub_2203E96C0(uint64_t *a1)
{
  sub_2203EA908(0, &qword_280FA02E0, sub_2203E99E0, &type metadata for ComputeServiceConfiguration.UnloadGraphOnBackgroundConfiguration.CodingKeys, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3, v7);
  v9 = &v12 - v8;
  v10 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2203E99E0();
  sub_22042BFF0();
  if (!v1)
  {
    v14 = 0;
    LOBYTE(v10) = sub_22042BE90();
    v13 = 1;
    sub_22042BEB0();
    (*(v5 + 8))(v9, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10 & 1;
}

uint64_t sub_2203E9898()
{
  v0 = sub_22042BE60();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2203E98E4()
{
  result = qword_280FA0920;
  if (!qword_280FA0920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0920);
  }

  return result;
}

unint64_t sub_2203E9938()
{
  result = qword_280FA09A0;
  if (!qword_280FA09A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA09A0);
  }

  return result;
}

unint64_t sub_2203E998C()
{
  result = qword_280FA0928;
  if (!qword_280FA0928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0928);
  }

  return result;
}

unint64_t sub_2203E99E0()
{
  result = qword_280FA09E8;
  if (!qword_280FA09E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA09E8);
  }

  return result;
}

unint64_t sub_2203E9A34()
{
  result = qword_280FA09A8;
  if (!qword_280FA09A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA09A8);
  }

  return result;
}

unint64_t sub_2203E9A88()
{
  result = qword_280FA0930;
  if (!qword_280FA0930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0930);
  }

  return result;
}

unint64_t sub_2203E9ADC()
{
  result = qword_27CF524A8;
  if (!qword_27CF524A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF524A8);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Com_Apple_Stocks_Personalization_GroupType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Com_Apple_Stocks_Personalization_GroupType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_2203E9B94(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2203E9BB0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ComputeServiceConfiguration.FeedPersonalizationConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ComputeServiceConfiguration.FeedPersonalizationConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2203E9D54(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2203E9D74(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2203E9DCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2203E9E14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2203E9E74()
{
  result = qword_27CF524B0;
  if (!qword_27CF524B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF524B0);
  }

  return result;
}

unint64_t sub_2203E9ECC()
{
  result = qword_27CF524B8;
  if (!qword_27CF524B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF524B8);
  }

  return result;
}

unint64_t sub_2203E9F24()
{
  result = qword_280FA09D8;
  if (!qword_280FA09D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA09D8);
  }

  return result;
}

unint64_t sub_2203E9F7C()
{
  result = qword_280FA09E0;
  if (!qword_280FA09E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA09E0);
  }

  return result;
}

unint64_t sub_2203E9FD4()
{
  result = qword_280FA0910;
  if (!qword_280FA0910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0910);
  }

  return result;
}

unint64_t sub_2203EA02C()
{
  result = qword_280FA0918;
  if (!qword_280FA0918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0918);
  }

  return result;
}

unint64_t sub_2203EA080()
{
  result = qword_280FA09C0;
  if (!qword_280FA09C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA09C0);
  }

  return result;
}

unint64_t sub_2203EA0D4()
{
  result = qword_280FA0948;
  if (!qword_280FA0948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0948);
  }

  return result;
}

unint64_t sub_2203EA128()
{
  result = qword_280FA0950;
  if (!qword_280FA0950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0950);
  }

  return result;
}

unint64_t sub_2203EA17C()
{
  result = qword_280FA0958;
  if (!qword_280FA0958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0958);
  }

  return result;
}

uint64_t _s24PersistableSessionErrorsOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s24PersistableSessionErrorsOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ComputeServiceConfiguration.FeedPersonalizationConfiguration.OutputConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ComputeServiceConfiguration.FeedPersonalizationConfiguration.OutputConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2203EA484()
{
  result = qword_27CF524C0;
  if (!qword_27CF524C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF524C0);
  }

  return result;
}

unint64_t sub_2203EA4DC()
{
  result = qword_27CF524C8;
  if (!qword_27CF524C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF524C8);
  }

  return result;
}

unint64_t sub_2203EA534()
{
  result = qword_280FA0938;
  if (!qword_280FA0938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0938);
  }

  return result;
}

unint64_t sub_2203EA58C()
{
  result = qword_280FA0940;
  if (!qword_280FA0940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0940);
  }

  return result;
}

unint64_t sub_2203EA5E4()
{
  result = qword_280FA09B0;
  if (!qword_280FA09B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA09B0);
  }

  return result;
}

unint64_t sub_2203EA63C()
{
  result = qword_280FA09B8;
  if (!qword_280FA09B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA09B8);
  }

  return result;
}

unint64_t sub_2203EA690()
{
  result = qword_280FA0998;
  if (!qword_280FA0998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0998);
  }

  return result;
}

unint64_t sub_2203EA6E4()
{
  result = qword_280FA0960;
  if (!qword_280FA0960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0960);
  }

  return result;
}

unint64_t sub_2203EA738()
{
  result = qword_280FA0968;
  if (!qword_280FA0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0968);
  }

  return result;
}

unint64_t sub_2203EA7B0()
{
  result = qword_27CF524D0;
  if (!qword_27CF524D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF524D0);
  }

  return result;
}

unint64_t sub_2203EA808()
{
  result = qword_280FA0988;
  if (!qword_280FA0988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0988);
  }

  return result;
}

unint64_t sub_2203EA860()
{
  result = qword_280FA0990;
  if (!qword_280FA0990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0990);
  }

  return result;
}

unint64_t sub_2203EA8B4()
{
  result = qword_280FA0980;
  if (!qword_280FA0980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0980);
  }

  return result;
}

void sub_2203EA908(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_2203EA970(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_2203EAA00(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2203EAAC4()
{
  result = qword_27CF524D8;
  if (!qword_27CF524D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF524D8);
  }

  return result;
}

unint64_t sub_2203EAB1C()
{
  result = qword_280FA0970;
  if (!qword_280FA0970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0970);
  }

  return result;
}

unint64_t sub_2203EAB74()
{
  result = qword_280FA0978;
  if (!qword_280FA0978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0978);
  }

  return result;
}

uint64_t sub_2203EAC30()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = *(MEMORY[0x277CFBAF0] + 4);
  v5 = (*MEMORY[0x277CFBAF0] + MEMORY[0x277CFBAF0]);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_2203EACD8;

  return v5();
}

uint64_t sub_2203EACD8()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2203EADD0()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t ComputeService<>.runningConfigurationData.getter()
{
  v0 = sub_22042A3E0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_22042A3D0();
  sub_22042B150();
  v19 = v34;
  v20 = v35;
  v21 = v36;
  v15 = v30;
  v16 = v31;
  v17 = v32;
  v18 = v33;
  v11 = v26;
  v12 = v27;
  v13 = v28;
  v14 = v29;
  v7 = v22;
  v8 = v23;
  v9 = v24;
  v10 = v25;
  sub_2203C3C64(0, &qword_280FA08C0, &type metadata for ComputeServiceConfiguration, MEMORY[0x277D83D88]);
  sub_2203EAFC4();
  v5[12] = v34;
  v5[13] = v35;
  v6 = v36;
  v5[8] = v30;
  v5[9] = v31;
  v5[10] = v32;
  v5[11] = v33;
  v5[4] = v26;
  v5[5] = v27;
  v5[6] = v28;
  v5[7] = v29;
  v5[0] = v22;
  v5[1] = v23;
  v5[2] = v24;
  v5[3] = v25;
  v3 = sub_22042A3C0();
  sub_2203E34AC(v5);

  return v3;
}

unint64_t sub_2203EAFC4()
{
  result = qword_27CF524F0;
  if (!qword_27CF524F0)
  {
    sub_2203C3C64(255, &qword_280FA08C0, &type metadata for ComputeServiceConfiguration, MEMORY[0x277D83D88]);
    sub_2203C0FEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF524F0);
  }

  return result;
}

uint64_t sub_2203EB108(uint64_t a1, uint64_t a2)
{
  v5 = a1 == 0x636F72705F707061 && a2 == 0xEB00000000737365;
  if (v5 || (sub_22042BF50() & 1) != 0)
  {
    v6 = *(v2 + 16);
    v7 = *(v2 + 24);
  }

  else
  {
    v6 = 0x745F636974617473;
    if ((a1 != 0x636974617473 || a2 != 0xE600000000000000) && (sub_22042BF50() & 1) == 0)
    {
      if (qword_280FA1130 != -1)
      {
        swift_once();
      }

      sub_2203C1EE8();
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_22042D3F0;
      *(v9 + 56) = MEMORY[0x277D837D0];
      *(v9 + 64) = sub_2203C1FA8();
      *(v9 + 32) = a1;
      *(v9 + 40) = a2;

      sub_22042BCA0();
      sub_22042B8D0();

      return 0;
    }
  }

  return v6;
}

uint64_t sub_2203EB29C()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2203EB31C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2203C3E30;

  return sub_2203EAC10(a1, v1);
}

uint64_t sub_2203EB3B8()
{
  v0 = sub_22042AB90();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_22042AB80();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  (*(v10 + 104))(&v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D090]);
  (*(v1 + 104))(v5, *MEMORY[0x277D6D0A8], v0);
  v15[15] = 0;
  sub_2203EB5D8();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  result = sub_22042ABB0();
  qword_280FA24B0 = result;
  return result;
}

uint64_t static Settings.UserEventHistory.verboseLoggingEnabled.getter()
{
  if (qword_280FA24A8 != -1)
  {
    swift_once();
  }
}

void sub_2203EB5D8()
{
  if (!qword_280FA2488)
  {
    v0 = sub_22042ABA0();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA2488);
    }
  }
}

uint64_t Com_Apple_Stocks_Personalization_Session.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Com_Apple_Stocks_Personalization_Session.start(at:)(uint64_t a1)
{
  v24 = a1;
  v23 = sub_22042A5B0();
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v23, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22042B600();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203EB8E4();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for Com_Apple_Stocks_Personalization_Session() + 36);
  sub_2203EB93C(v1 + v18, v17);
  v19 = (*(v8 + 48))(v17, 1, v7);
  sub_2203EB9A0(v17);
  if (v19 == 1)
  {
    (*(v2 + 16))(v6, v24, v23);
    sub_22042B5E0();
    sub_2203EB9A0(v1 + v18);
    (*(v8 + 32))(v1 + v18, v12, v7);
    return (*(v8 + 56))(v1 + v18, 0, 1, v7);
  }

  else
  {
    sub_2203EB9FC();
    swift_allocError();
    *v21 = 0;
    return swift_willThrow();
  }
}

void sub_2203EB8E4()
{
  if (!qword_280FA2228)
  {
    sub_22042B600();
    v0 = sub_22042BCF0();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA2228);
    }
  }
}

uint64_t sub_2203EB93C(uint64_t a1, uint64_t a2)
{
  sub_2203EB8E4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2203EB9A0(uint64_t a1)
{
  sub_2203EB8E4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2203EB9FC()
{
  result = qword_27CF524F8;
  if (!qword_27CF524F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF524F8);
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_Session.end(at:)(uint64_t a1)
{
  v24 = a1;
  v23 = sub_22042A5B0();
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v23, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22042B600();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203EB8E4();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for Com_Apple_Stocks_Personalization_Session() + 40);
  sub_2203EB93C(v1 + v18, v17);
  v19 = (*(v8 + 48))(v17, 1, v7);
  sub_2203EB9A0(v17);
  if (v19 == 1)
  {
    (*(v2 + 16))(v6, v24, v23);
    sub_22042B5E0();
    sub_2203EB9A0(v1 + v18);
    (*(v8 + 32))(v1 + v18, v12, v7);
    return (*(v8 + 56))(v1 + v18, 0, 1, v7);
  }

  else
  {
    sub_2203EB9FC();
    swift_allocError();
    *v21 = 0;
    return swift_willThrow();
  }
}

uint64_t Com_Apple_Stocks_Personalization_Session.serialize()()
{
  sub_2203EB8E4();
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v21 - v9;
  v11 = type metadata accessor for Com_Apple_Stocks_Personalization_Session();
  sub_2203EB93C(v0 + *(v11 + 36), v10);
  v12 = sub_22042B600();
  v13 = *(*(v12 - 8) + 48);
  v14 = v13(v10, 1, v12);
  sub_2203EB9A0(v10);
  if (v14 == 1)
  {
    v15 = 2;
LABEL_5:
    sub_2203EB9FC();
    v17 = swift_allocError();
    *v18 = v15;
    v1 = v17;
    swift_willThrow();
    return v1;
  }

  sub_2203EB93C(v0 + *(v11 + 40), v7);
  v16 = v13(v7, 1, v12);
  sub_2203EB9A0(v7);
  if (v16 == 1)
  {
    v15 = 3;
    goto LABEL_5;
  }

  sub_2203EC354(&qword_280FA1638, type metadata accessor for Com_Apple_Stocks_Personalization_Session);
  sub_22042B7D0();
  if (!v1)
  {
    v1 = *v0;
    v20 = v0[1];
  }

  return v1;
}

uint64_t sub_2203EBEBC()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2203EBF3C()
{
  result = Com_Apple_Stocks_Personalization_Session.serialize()();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_2203EBF68(uint64_t a1, uint64_t a2)
{
  v4 = sub_22042A5E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22042A5B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22042A590();
  sub_22042A570();
  v17 = v16;
  v18 = v16;
  result = (*(v11 + 8))(v15, v10);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v17 < 9.22337204e18)
  {
    v31[1] = v17;
    v32 = sub_22042BF20();
    v33 = v20;
    MEMORY[0x223D7BDE0](45, 0xE100000000000000);
    sub_22042A5D0();
    v21 = sub_22042A5C0();
    v23 = v22;
    (*(v5 + 8))(v9, v4);
    MEMORY[0x223D7BDE0](v21, v23);

    v24 = v32;
    v25 = v33;
    v26 = *(a1 + 8);

    *a1 = v24;
    *(a1 + 8) = v25;
    v27 = *(a2 + 16);
    v28 = *(a2 + 24);
    v29 = *(a1 + 32);

    *(a1 + 24) = v27;
    *(a1 + 32) = v28;
    v30 = *(a2 + 40);
    *(a1 + 40) = *(a2 + 32);
    *(a1 + 48) = v30;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2203EC1D8()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_2203EC224()
{
  result = qword_27CF52500;
  if (!qword_27CF52500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF52500);
  }

  return result;
}

void sub_2203EC2C0()
{
  if (!qword_280FA22B0)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_Session();
    sub_2203EC354(qword_280FA1640, type metadata accessor for Com_Apple_Stocks_Personalization_Session);
    v0 = sub_22042B4A0();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA22B0);
    }
  }
}

uint64_t sub_2203EC354(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2203EC39C()
{
  v1 = type metadata accessor for Com_Apple_Stocks_Personalization_Session();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v4 = *v0;
  sub_2203EC354(&qword_280FA1638, type metadata accessor for Com_Apple_Stocks_Personalization_Session);
  sub_22042B810();
  sub_2203EC2C0();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  return sub_22042B470();
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticle.legacy.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2203EEEF0(0, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  sub_2203EEFC4(v1 + *(v8 + 20), v7, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  v9 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) != 1)
  {
    return sub_2203EEE88(v7, a1, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  }

  sub_2203EEF54(v7, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  sub_22042B670();
  v10 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  if (qword_280FA1A10 != -1)
  {
    swift_once();
  }

  *(a1 + v10) = qword_280FA1A18;
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticle.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticle.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticle.metadata.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0) + 20);

  return sub_2203EE2D8(a1, v3);
}

uint64_t sub_2203EC7EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203EE3D0(a1, v8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  v9 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0) + 20);
  sub_2203EEF54(a2 + v9, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  sub_2203EEE88(v8, a2 + v9, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
  return (*(*(v10 - 8) + 56))(a2 + v9, 0, 1, v10);
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticle.legacy.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0) + 20);
  sub_2203EEF54(v1 + v3, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  sub_2203EEE88(a1, v1 + v3, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_Stocks_Personalization_SessionArticle.legacy.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_2203EEEF0(0, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0) + 20);
  *(v5 + 12) = v14;
  sub_2203EEFC4(v1 + v14, v9, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  v15 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
  v5[4] = v15;
  v16 = *(v15 - 8);
  v5[5] = v16;
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_2203EEF54(v9, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    sub_22042B670();
    v17 = *(v10 + 20);
    if (qword_280FA1A10 != -1)
    {
      swift_once();
    }

    *(v13 + v17) = qword_280FA1A18;
  }

  else
  {
    sub_2203EEE88(v9, v13, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  }

  return sub_2203ECC78;
}

void sub_2203ECC78(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = *(*a1 + 12);
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_2203EE3D0((*a1)[3], v6, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    sub_2203EEF54(v9 + v5, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    sub_2203EEE88(v6, v9 + v5, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    (*(v4 + 56))(v9 + v5, 0, 1, v3);
    sub_2203EEE28(v7, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  }

  else
  {
    sub_2203EEF54(v9 + v5, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    sub_2203EEE88(v7, v9 + v5, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    (*(v4 + 56))(v9 + v5, 0, 1, v3);
  }

  free(v7);
  free(v6);
  free(v8);

  free(v2);
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticle.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0) + 24);
  v4 = sub_22042B680();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticle.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0) + 24);
  v4 = sub_22042B680();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_2203EE36C();
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v9[*(v7 + 56)];
  sub_2203EE3D0(a1, v9, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  sub_2203EE3D0(a2, v10, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  v11 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v12 = *&v9[v11];
  v13 = *(v10 + v11);
  if (v12 != v13)
  {
    v14 = *&v9[v11];

    v15 = sub_22040D064(v12, v13);

    if ((v15 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  sub_22042B680();
  sub_2203EE9DC(&qword_27CF52420, MEMORY[0x277D216C8]);
  if (sub_22042BA10())
  {
    v16 = 1;
  }

  else
  {
LABEL_5:
    v16 = 0;
  }

  sub_2203EEE28(v10, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  sub_2203EEE28(v9, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  return v16;
}

uint64_t sub_2203ED0D0(uint64_t a1, uint64_t a2)
{
  sub_2203EE36C();
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 56);
  sub_2203EE3D0(a1, v9, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  sub_2203EE3D0(a2, &v9[v10], type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  LOBYTE(a2) = _s21StocksPersonalization010Com_Apple_a1_B29_SessionArticleLegacyMetadataV2eeoiySbAC_ACtFZ_0(v9, &v9[v10]);
  sub_2203EEE28(&v9[v10], type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  sub_2203EEE28(v9, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  return a2 & 1;
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticle.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 24)];
  return sub_22042B670();
}

uint64_t sub_2203ED26C()
{
  v0 = sub_22042B8C0();
  __swift_allocate_value_buffer(v0, qword_280FA1EF8);
  __swift_project_value_buffer(v0, qword_280FA1EF8);
  sub_2203EEEF0(0, &qword_280FA01C8, sub_2203E170C, MEMORY[0x277D84560]);
  sub_2203E170C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22042D3E0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "id";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_22042B8A0();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "legacy";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v10();
  return sub_22042B8B0();
}

uint64_t static Com_Apple_Stocks_Personalization_SessionArticle._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA1EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA1EF8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticle.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_22042B700();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22042B770();
    }

    else if (result == 2)
    {
      sub_2203ED580(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_2203ED580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a2;
  v57 = a3;
  v58 = a4;
  v59 = a1;
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v49 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v52 = &v47 - v11;
  v12 = MEMORY[0x277D83D88];
  sub_2203EEEF0(0, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v47 - v16;
  v18 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v51 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v47 - v25;
  sub_2203EEEF0(0, qword_280FA1750, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata, v12);
  v28 = *(*(v27 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v27 - 8, v29);
  v53 = &v47 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v47 - v33;
  v50 = v5;
  v35 = *(v5 + 56);
  v54 = v4;
  v35(&v47 - v33, 1, 1, v4);
  v36 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0) + 20);
  sub_2203EEFC4(v59 + v36, v17, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  v47 = v19;
  v48 = v18;
  v37 = (*(v19 + 48))(v17, 1, v18);
  if (v37 == 1)
  {
    sub_2203EEF54(v17, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    v38 = v54;
  }

  else
  {
    sub_2203EEE88(v17, v26, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    v39 = v51;
    sub_2203EEE88(v26, v51, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    sub_2203EEF54(v34, qword_280FA1750, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    v40 = v39;
    v41 = v52;
    sub_2203EEE88(v40, v52, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    sub_2203EEE88(v41, v34, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    v38 = v54;
    v35(v34, 0, 1, v54);
  }

  sub_2203EE9DC(&unk_280FA1798, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  v42 = v55;
  sub_22042B7A0();
  v43 = v53;
  if (v42)
  {
    return sub_2203EEF54(v34, qword_280FA1750, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  }

  sub_2203EEFC4(v34, v53, qword_280FA1750, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  if ((*(v50 + 48))(v43, 1, v38) == 1)
  {
    sub_2203EEF54(v34, qword_280FA1750, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    return sub_2203EEF54(v43, qword_280FA1750, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  }

  else
  {
    v45 = v49;
    sub_2203EEE88(v43, v49, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    if (v37 != 1)
    {
      sub_22042B710();
    }

    sub_2203EEF54(v34, qword_280FA1750, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    v46 = v59;
    sub_2203EEF54(v59 + v36, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    sub_2203EEE88(v45, v46 + v36, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    return (*(v47 + 56))(v46 + v36, 0, 1, v48);
  }
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticle.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_22042B860(), !v4))
  {
    result = sub_2203EDC24(v3, a1, a2, a3);
    if (!v4)
    {
      v12 = v3 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0) + 24);
      return sub_22042B660();
    }
  }

  return result;
}

uint64_t sub_2203EDC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = a4;
  sub_2203EEEF0(0, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  sub_2203EEFC4(a1 + *(v15 + 20), v9, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  v16 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
  if ((*(*(v16 - 8) + 48))(v9, 1, v16) == 1)
  {
    return sub_2203EEF54(v9, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  }

  sub_2203EEE88(v9, v14, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  sub_2203EE9DC(&unk_280FA1798, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  sub_22042B890();
  return sub_2203EEE28(v14, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticle.hashValue.getter()
{
  sub_22042BFC0();
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  sub_2203EE9DC(&qword_27CF52510, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  sub_22042B9F0();
  return sub_22042BFE0();
}

uint64_t sub_2203EDEEC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 24)];
  return sub_22042B670();
}

uint64_t sub_2203EDF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_22042B680();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2203EE000(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_22042B680();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_2203EE074(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_2203EE0C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2203EE9DC(&qword_27CF52520, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2203EE144@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA1EF0 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA1EF8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2203EE1EC(uint64_t a1)
{
  v2 = sub_2203EE9DC(&qword_280FA1EE8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2203EE258()
{
  sub_2203EE9DC(&qword_280FA1EE8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);

  return sub_22042B800();
}

uint64_t sub_2203EE2D8(uint64_t a1, uint64_t a2)
{
  sub_2203EEEF0(0, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_2203EE36C()
{
  if (!qword_27CF52508)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF52508);
    }
  }
}

uint64_t sub_2203EE3D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s21StocksPersonalization010Com_Apple_a1_B15_SessionArticleV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  sub_2203EE36C();
  v5 = v4;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203EEEF0(0, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x277D83D88]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v43 - v19;
  sub_2203EED94();
  v22 = v21;
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_22042BF50() & 1) == 0)
  {
    goto LABEL_10;
  }

  v43 = v5;
  v44 = v15;
  v45 = v9;
  v46 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v27 = *(v46 + 20);
  v28 = *(v22 + 48);
  sub_2203EEFC4(a1 + v27, v26, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  sub_2203EEFC4(a2 + v27, &v26[v28], &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  v29 = *(v11 + 48);
  if (v29(v26, 1, v10) == 1)
  {
    if (v29(&v26[v28], 1, v10) == 1)
    {
      sub_2203EEF54(v26, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
LABEL_14:
      v41 = *(v46 + 24);
      sub_22042B680();
      sub_2203EE9DC(&qword_27CF52420, MEMORY[0x277D216C8]);
      v30 = sub_22042BA10();
      return v30 & 1;
    }

    goto LABEL_9;
  }

  sub_2203EEFC4(v26, v20, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  if (v29(&v26[v28], 1, v10) == 1)
  {
    sub_2203EEE28(v20, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
LABEL_9:
    sub_2203EEE28(v26, sub_2203EED94);
    goto LABEL_10;
  }

  v31 = &v26[v28];
  v32 = v44;
  sub_2203EEE88(v31, v44, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  v33 = v45;
  v34 = &v45[*(v43 + 48)];
  sub_2203EE3D0(v20, v45, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  sub_2203EE3D0(v32, v34, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  v35 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v36 = *(v33 + v35);
  v37 = *(v34 + v35);
  if (v36 == v37 || (v38 = *(v33 + v35), , , v39 = sub_22040D064(v36, v37), , , (v39 & 1) != 0))
  {
    sub_22042B680();
    sub_2203EE9DC(&qword_27CF52420, MEMORY[0x277D216C8]);
    v40 = sub_22042BA10();
    sub_2203EEE28(v32, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    sub_2203EEE28(v34, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    sub_2203EEE28(v33, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    sub_2203EEE28(v20, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    sub_2203EEF54(v26, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    if (v40)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_2203EEE28(v32, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    sub_2203EEE28(v34, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    sub_2203EEE28(v33, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
    sub_2203EEE28(v20, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
    sub_2203EEF54(v26, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata);
  }

LABEL_10:
  v30 = 0;
  return v30 & 1;
}

uint64_t sub_2203EE9DC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2203EEB6C()
{
  sub_2203EEEF0(319, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_22042B680();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2203EEC30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_2203C4C14);
}

uint64_t sub_2203EEC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_2203C4CD0);
}

uint64_t sub_2203EECF0(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_2203EED94()
{
  if (!qword_27CF52528)
  {
    sub_2203EEEF0(255, &qword_280FA1F80, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF52528);
    }
  }
}

uint64_t sub_2203EEE28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2203EEE88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2203EEEF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2203EEF54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2203EEEF0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2203EEFC4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2203EEEF0(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t StocksUserEventHistorySessionUnarchiver.unarchive(session:)()
{
  v0 = sub_22042B6C0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = sub_22042B8F0();
  if (v4 >> 60 == 15)
  {
    sub_2203EF1A4();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v6 = v3;
    v7 = v4;
    type metadata accessor for Com_Apple_Stocks_Personalization_Session();
    sub_2203DF3D8(v6, v7);
    sub_22042B6B0();
    sub_2203EF244(&qword_280FA1638);
    sub_22042B7E0();
    return sub_2203DF298(v6, v7);
  }
}

unint64_t sub_2203EF1A4()
{
  result = qword_27CF52530;
  if (!qword_27CF52530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF52530);
  }

  return result;
}

uint64_t sub_2203EF244(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_Session();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2203EF2CC()
{
  result = qword_27CF52538;
  if (!qword_27CF52538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF52538);
  }

  return result;
}

uint64_t FeedViewEventUserInfo.stock.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22042AAC0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FeedViewEventUserInfo.init(stock:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22042AAC0();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for FeedViewEventUserInfo()
{
  result = qword_280FA0DF8;
  if (!qword_280FA0DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2203EF468()
{
  result = sub_22042AAC0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.duration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit() + 24);
  sub_2203EF6B4(v1 + v3, &qword_280FA2210, MEMORY[0x277D21628]);
  v4 = sub_22042B650();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit()
{
  result = qword_280FA1AC8;
  if (!qword_280FA1AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.stock.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit() + 20);
  sub_2203EF6B4(v1 + v3, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_2203DFAD4(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_2203EF6B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2203F2458(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.stock.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2203F2458(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit();
  sub_2203F026C(v1 + *(v8 + 20), v7, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v9 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_2203DFAD4(v7, a1);
  }

  sub_22042B670();
  v11 = (a1 + *(v9 + 20));
  *v11 = 0;
  v11[1] = 0;
  v12 = (a1 + *(v9 + 24));
  *v12 = 0;
  v12[1] = 0;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_2203EF6B4(v7, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  }

  return result;
}

uint64_t sub_2203EF8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2203F2458(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit();
  sub_2203F026C(a1 + *(v9 + 20), v8, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_2203DFAD4(v8, a2);
  }

  sub_22042B670();
  v12 = (a2 + *(v10 + 20));
  *v12 = 0;
  v12[1] = 0;
  v13 = (a2 + *(v10 + 24));
  *v13 = 0;
  v13[1] = 0;
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_2203EF6B4(v8, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  }

  return result;
}

uint64_t sub_2203EFA38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203D174C(a1, v9);
  v10 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit() + 20);
  sub_2203EF6B4(a2 + v10, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_2203DFAD4(v9, a2 + v10);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

void (*Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.stock.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_2203F2458(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit() + 20);
  *(v5 + 12) = v16;
  sub_2203F026C(v1 + v16, v9, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_22042B670();
    v18 = (v15 + *(v10 + 20));
    *v18 = 0;
    v18[1] = 0;
    v19 = (v15 + *(v10 + 24));
    *v19 = 0;
    v19[1] = 0;
    if (v17(v9, 1, v10) != 1)
    {
      sub_2203EF6B4(v9, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    }
  }

  else
  {
    sub_2203DFAD4(v9, v15);
  }

  return sub_2203EFD9C;
}

void sub_2203EFD9C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_2203D174C((*a1)[5], v4);
    sub_2203EF6B4(v9 + v3, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    sub_2203DFAD4(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_2203EFECC(v5);
  }

  else
  {
    sub_2203EF6B4(v9 + v3, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    sub_2203DFAD4(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_2203EFECC(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.hasStock.getter()
{
  sub_2203F2458(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit();
  sub_2203F026C(v0 + *(v6 + 20), v5, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_2203EF6B4(v5, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  return v8;
}

Swift::Void __swiftcall Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.clearStock()()
{
  v1 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit() + 20);
  sub_2203EF6B4(v0 + v1, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v2 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D21628];
  sub_2203F2458(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit();
  sub_2203F026C(v1 + *(v9 + 24), v8, &qword_280FA2210, v3);
  v10 = sub_22042B650();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_22042B640();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_2203EF6B4(v8, &qword_280FA2210, MEMORY[0x277D21628]);
  }

  return result;
}

uint64_t sub_2203F026C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2203F2458(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2203F02EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D21628];
  sub_2203F2458(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit();
  sub_2203F026C(a1 + *(v10 + 24), v9, &qword_280FA2210, v4);
  v11 = sub_22042B650();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a2, v9, v11);
  }

  sub_22042B640();
  result = (v13)(v9, 1, v11);
  if (result != 1)
  {
    return sub_2203EF6B4(v9, &qword_280FA2210, MEMORY[0x277D21628]);
  }

  return result;
}

uint64_t sub_2203F0484(uint64_t a1, uint64_t a2)
{
  v4 = sub_22042B650();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4);
  v10 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit() + 24);
  sub_2203EF6B4(a2 + v10, &qword_280FA2210, MEMORY[0x277D21628]);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

void (*Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.duration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_2203F2458(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_22042B650();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit() + 24);
  *(v5 + 12) = v16;
  sub_2203F026C(v1 + v16, v9, &qword_280FA2210, MEMORY[0x277D21628]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_22042B640();
    if (v17(v9, 1, v10) != 1)
    {
      sub_2203EF6B4(v9, &qword_280FA2210, MEMORY[0x277D21628]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_2203F080C;
}

void sub_2203F080C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_2203EF6B4(v9 + v3, &qword_280FA2210, MEMORY[0x277D21628]);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_2203EF6B4(v9 + v3, &qword_280FA2210, MEMORY[0x277D21628]);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.hasDuration.getter()
{
  v1 = MEMORY[0x277D21628];
  sub_2203F2458(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit();
  sub_2203F026C(v0 + *(v7 + 24), v6, &qword_280FA2210, v1);
  v8 = sub_22042B650();
  v9 = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  sub_2203EF6B4(v6, &qword_280FA2210, v1);
  return v9;
}

Swift::Void __swiftcall Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.clearDuration()()
{
  v1 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit() + 24);
  sub_2203EF6B4(v0 + v1, &qword_280FA2210, MEMORY[0x277D21628]);
  v2 = sub_22042B650();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22042B680();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.unknownFields.setter(uint64_t a1)
{
  v3 = sub_22042B680();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit.init()@<X0>(uint64_t a1@<X8>)
{
  sub_22042B670();
  v2 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventSymbolFeedVisit();
  v3 = *(v2 + 20);
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 24);
  v6 = sub_22042B650();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t sub_2203F0D14()
{
  v0 = sub_22042B8C0();
  __swift_allocate_value_buffer(v0, qword_280FA1AF0);
  __swift_project_value_buffer(v0, qword_280FA1AF0);
  sub_2203F2458(0, &qword_280FA01C8, sub_2203E170C, MEMORY[0x277D84560]);
  sub_2203E170C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22042D3E0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "stock";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_22042B8A0();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "duration";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  return sub_22042B8B0();
}