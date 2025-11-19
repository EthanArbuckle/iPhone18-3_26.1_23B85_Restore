uint64_t sub_1A9529D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758);
  v5 = sub_1A957C5A8();

  return MEMORY[0x1EEE6DFA0](sub_1A9529E14, v5, v4);
}

uint64_t sub_1A9529E14()
{
  v1 = v0[4];

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1A9529EB8;
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return sub_1A9533A9C(v5, v3, v4);
}

uint64_t sub_1A9529EB8()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1A9529FC8()
{
  v1[2] = v0;
  v2 = *(*(sub_1A937829C(&qword_1EB388000, &qword_1A9587710) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  type metadata accessor for TTSSpeechQueue(0);
  v1[4] = sub_1A9534BD8(&qword_1EB388758);
  v4 = sub_1A957C5A8();

  return MEMORY[0x1EEE6DFA0](sub_1A952A0A8, v4, v3);
}

uint64_t sub_1A952A0A8()
{
  v16 = v0;
  v1 = v0[2];
  v2 = *(*v1 + 152);
  v3 = v2(&v15);
  if (v15 != 3)
  {
    v4 = v0[2];
    (v2)((&v15 + 1), v3);
    if (BYTE1(v15) != 2)
    {
      v5 = v0[2];
      BYTE2(v15) = 3;
      (*(*v5 + 160))(&v15 + 2);
    }
  }

  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];
  v9 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_taskPriority;
  v10 = sub_1A957C688();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v6, v8 + v9, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  v12 = swift_allocObject();
  v12[2] = v1;
  v12[3] = v7;
  v12[4] = v8;
  swift_retain_n();
  sub_1A938A404(0, 0, v6, &unk_1A9599328, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1A952A28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758);
  v6 = sub_1A957C5A8();

  return MEMORY[0x1EEE6DFA0](sub_1A952A334, v6, v5);
}

uint64_t sub_1A952A334()
{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1A9535034;
  v3 = *(v0 + 16);

  return sub_1A952C024(&unk_1A95997B0, v3);
}

uint64_t sub_1A952A3E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A93836DC;

  return sub_1A952D6FC();
}

uint64_t sub_1A952A478()
{
  v1[2] = v0;
  type metadata accessor for TTSSpeechQueue(0);
  v1[3] = sub_1A9534BD8(&qword_1EB388758);
  v3 = sub_1A957C5A8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A952A520, v3, v2);
}

uint64_t sub_1A952A520()
{
  v14 = v0;
  v1 = v0[2];
  v2 = *(*v1 + 152);
  v3 = v2(&v13);
  if (v13 == 3 || (v4 = v0[2], (v2)((&v13 + 1), v3), BYTE1(v13) == 2))
  {
    v5 = v0[2];
    v6 = v0[3];
    BYTE2(v13) = 1;
    (*(*v5 + 160))(&v13 + 2);

    v7 = swift_task_alloc();
    v0[6] = v7;
    v7[2] = v5;
    v7[3] = &unk_1A9599340;
    v7[4] = v5;
    v8 = *(MEMORY[0x1E69E88D0] + 4);
    v9 = swift_task_alloc();
    v0[7] = v9;
    *v9 = v0;
    v9[1] = sub_1A952A6FC;
    v10 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DDE0](v9, v1, v6, 0xD000000000000020, 0x80000001A95C5040, sub_1A952F6F4, v7, v10);
  }

  else
  {
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1A952A6FC()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1A953505C, v5, v4);
}

uint64_t sub_1A952A840(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_1A937829C(&qword_1EB388790, &qword_1A9599730);
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();
  v8 = *(*(sub_1A937829C(&qword_1EB388760, &qword_1A9599360) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758);
  v10 = sub_1A957C5A8();
  v1[15] = v10;
  v1[16] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1A952A9E4, v10, v9);
}

uint64_t sub_1A952A9E4()
{
  v1 = v0[7];
  v2 = *(v1 + OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_runTask);
  v0[17] = v2;
  v3 = MEMORY[0x1E69E7CA8];
  if (v2)
  {
    swift_retain_n();
    sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
    sub_1A957C748();

    v1 = v0[7];
  }

  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_runningItem;
  swift_beginAccess();
  sub_1A9391BAC(v1 + v7, v4, &qword_1EB388760, &qword_1A9599360);
  v8 = (*(v6 + 48))(v4, 1, v5);
  v9 = v0[14];
  if (v8)
  {
    sub_1A937B960(v9, &qword_1EB388760, &qword_1A9599360);
    v10 = v0[17];
    if (v10)
    {
      v11 = *(MEMORY[0x1E69E86B0] + 4);
      v12 = v0[17];

      v13 = swift_task_alloc();
      v0[19] = v13;
      v14 = sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
      *v13 = v0;
      v13[1] = sub_1A952B0AC;
      v15 = MEMORY[0x1E69E7288];

      return MEMORY[0x1EEE6DA20](v0 + 5, v10, v3 + 8, v14, v15);
    }

    else
    {
      v25 = v0[13];
      v24 = v0[14];
      v26 = v0[10];

      v27 = v0[1];

      return v27();
    }
  }

  else
  {
    v16 = v0[13];
    v17 = v0[14];
    sub_1A9530850(v9, v16);
    sub_1A937B960(v17, &qword_1EB388760, &qword_1A9599360);
    v18 = *v16;
    v19 = v16[1];
    ObjectType = swift_getObjectType();
    v21 = *(v19 + 72);
    v29 = (v21 + *v21);
    v22 = v21[1];
    v23 = swift_task_alloc();
    v0[18] = v23;
    *v23 = v0;
    v23[1] = sub_1A952AD38;

    return (v29)(0, 0, ObjectType, v19);
  }
}

uint64_t sub_1A952AD38()
{
  v2 = *(*v1 + 144);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_1A952B048;
  }

  else
  {
    v3 = sub_1A952AE50;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A952AE50()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(*(v0 + 88) + 20);
  *(v0 + 49) = 3;
  sub_1A937829C(&qword_1EB388788, &qword_1A95996E8);
  sub_1A957C818();
  (*(v4 + 8))(v2, v3);
  sub_1A95308B4(v1);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1A952AF20, v6, v7);
}

uint64_t sub_1A952AF20()
{
  v1 = v0[17];
  if (v1)
  {
    v2 = *(MEMORY[0x1E69E86B0] + 4);
    v3 = v0[17];

    v4 = swift_task_alloc();
    v0[19] = v4;
    v5 = sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
    *v4 = v0;
    v4[1] = sub_1A952B0AC;
    v6 = MEMORY[0x1E69E7288];
    v7 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA20](v0 + 5, v1, v7, v5, v6);
  }

  else
  {
    v9 = v0[13];
    v8 = v0[14];
    v10 = v0[10];

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1A952B048()
{
  sub_1A95308B4(v0[13]);
  v1 = v0[15];
  v2 = v0[16];

  return MEMORY[0x1EEE6DFA0](sub_1A953502C, v1, v2);
}

uint64_t sub_1A952B0AC()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 136);
  v7 = *v0;

  sub_1A93CF4C8(*(v1 + 40), *(v1 + 48));
  v4 = *(v1 + 128);
  v5 = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1A952B208, v5, v4);
}

uint64_t sub_1A952B208()
{
  v1 = v0[17];

  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A952B284()
{
  v1[2] = v0;
  type metadata accessor for TTSSpeechQueue(0);
  v1[3] = sub_1A9534BD8(&qword_1EB388758);
  v3 = sub_1A957C5A8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A952B32C, v3, v2);
}

uint64_t sub_1A952B32C()
{
  v9 = v0;
  v2 = v0[2];
  v1 = v0[3];
  v8 = 0;
  (*(*v2 + 160))(&v8);

  v3 = swift_task_alloc();
  v0[6] = v3;
  v3[2] = v2;
  v3[3] = &unk_1A9599358;
  v3[4] = v2;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1A952B470;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v5, v2, v1, 0xD000000000000020, 0x80000001A95C5040, sub_1A9535054, v3, v6);
}

uint64_t sub_1A952B470()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1A952B5B4, v5, v4);
}

uint64_t sub_1A952B5B4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A952B614(uint64_t a1)
{
  v1[6] = a1;
  v2 = sub_1A937829C(&qword_1EB388790, &qword_1A9599730);
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  v1[10] = v5;
  v6 = *(v5 - 8);
  v1[11] = v6;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758);
  v9 = sub_1A957C5A8();
  v1[13] = v9;
  v1[14] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A952B780, v9, v8);
}

uint64_t sub_1A952B780()
{
  v1 = *(v0 + 48);
  if (*(v1 + OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_runTask))
  {
    v2 = *(v1 + OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_runTask);

    sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
    sub_1A957C748();

    v1 = *(v0 + 48);
  }

  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v0 + 120) = v3;
  v4 = *(v3 + 16);
  *(v0 + 128) = v4;
  v5 = *(v0 + 96);
  if (v4)
  {
    v6 = *(v0 + 88);
    v7 = *(v6 + 80);
    *(v0 + 160) = v7;
    v8 = (v7 + 32) & ~v7;
    *(v0 + 136) = *(v6 + 72);
    *(v0 + 144) = 0;

    sub_1A9530850(v9 + v8, v5);
    v11 = *v5;
    v10 = v5[1];
    ObjectType = swift_getObjectType();
    v13 = *(v10 + 64);
    v19 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    *(v0 + 152) = v15;
    *v15 = v0;
    v15[1] = sub_1A952B9C0;

    return (v19)(0, 0, ObjectType, v10);
  }

  else
  {
    v17 = *(v0 + 72);
    *(*(v0 + 48) + 40) = MEMORY[0x1E69E7CC0];

    sub_1A9526A64();

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1A952B9C0()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 104);
    v6 = *(v2 + 112);
    v7 = sub_1A9535040;
  }

  else
  {
    v7 = sub_1A952BAF0;
    v5 = 0;
    v6 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A952BAF0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(*(v0 + 80) + 20);
  *(v0 + 164) = 4;
  sub_1A937829C(&qword_1EB388788, &qword_1A95996E8);
  sub_1A957C818();
  (*(v4 + 8))(v2, v3);
  *(v0 + 40) = 0;
  sub_1A957C828();
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1A952BBD8, v6, v7);
}

uint64_t sub_1A952BBD8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 144) + 1;
  sub_1A95308B4(*(v0 + 96));
  if (v2 == v1)
  {
    v3 = *(v0 + 120);
    v4 = *(v0 + 48);

    v5 = *(v4 + 40);
    v6 = *(v0 + 96);
    v7 = *(v0 + 72);
    *(*(v0 + 48) + 40) = MEMORY[0x1E69E7CC0];

    sub_1A9526A64();

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 136);
    v11 = *(v0 + 144) + 1;
    *(v0 + 144) = v11;
    v12 = *(v0 + 96);
    sub_1A9530850(*(v0 + 120) + ((*(v0 + 160) + 32) & ~*(v0 + 160)) + v10 * v11, v12);
    v13 = *v12;
    v14 = v12[1];
    ObjectType = swift_getObjectType();
    v16 = *(v14 + 64);
    v19 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    *(v0 + 152) = v18;
    *v18 = v0;
    v18[1] = sub_1A952B9C0;

    return (v19)(0, 0, ObjectType, v14);
  }
}

uint64_t TTSSpeechQueue.__allocating_init(priority:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  TTSSpeechQueue.init(priority:)(a1);
  return v5;
}

uint64_t TTSSpeechQueue.init(priority:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A937829C(&qword_1EB388748, &qword_1A95992C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v20 - v8;
  type metadata accessor for TTSExecutor();
  *(v1 + 16) = TTSExecutor.__allocating_init()();
  v21 = 0;
  v10 = sub_1A937829C(&qword_1EB387128, &qword_1A958B510);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v1 + 24) = sub_1A957BE78();
  *(v1 + 32) = 0;
  v13 = MEMORY[0x1E69E7CC0];
  *(v2 + 40) = MEMORY[0x1E69E7CC0];
  v14 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_runningItem;
  v15 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  (*(*(v15 - 8) + 56))(v2 + v14, 1, 1, v15);
  *(v2 + OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_runTask) = 0;
  *(v2 + OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_schedulingTask) = 0;
  v16 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue__uiActions;
  v20 = v13;
  sub_1A937829C(&qword_1EB388740, &qword_1A9599278);
  sub_1A957BE88();
  (*(v5 + 32))(v2 + v16, v9, v4);
  v17 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_taskPriority;
  v18 = sub_1A957C688();
  (*(*(v18 - 8) + 32))(v2 + v17, a1, v18);
  return v2;
}

uint64_t sub_1A952C024(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = *(*(sub_1A937829C(&qword_1EB388000, &qword_1A9587710) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758);
  v6 = sub_1A957C5A8();
  v3[8] = v6;
  v3[9] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A952C104, v6, v5);
}

uint64_t sub_1A952C104()
{
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_schedulingTask;
  v0[10] = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_schedulingTask;
  v3 = *(v1 + v2);
  if (v3)
  {
    v0[11] = v3;
    v4 = *(MEMORY[0x1E69E86B0] + 4);

    v5 = swift_task_alloc();
    v0[12] = v5;
    v6 = sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
    *v5 = v0;
    v5[1] = sub_1A952C334;
    v7 = MEMORY[0x1E69E7288];
    v8 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA20](v0 + 2, v3, v8, v6, v7);
  }

  else
  {
    v9 = v0[7];
    v11 = v0[4];
    v10 = v0[5];
    v12 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_taskPriority;
    v13 = sub_1A957C688();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v9, v1 + v12, v13);
    (*(v14 + 56))(v9, 0, 1, v13);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v11;
    v15[5] = v10;

    v16 = sub_1A93C4B70(0, 0, v9, &unk_1A95997C8, v15);
    v17 = *(v1 + v2);
    *(v1 + v2) = v16;

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_1A952C334()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v6 = *v0;

  sub_1A93CF4C8(*(v1 + 16), *(v1 + 24));
  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1A952C474, v4, v3);
}

uint64_t sub_1A952C474()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = *(v2 + v1);
  if (v0[11])
  {
    if (v3)
    {
      v4 = *(v2 + v1);

      sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
      v5 = sub_1A957C728();

      if (v5)
      {
        goto LABEL_10;
      }

      v1 = v0[10];
      v2 = v0[6];
    }

    v3 = *(v2 + v1);
    if (v3)
    {
LABEL_6:
      v0[11] = v3;
      v6 = *(MEMORY[0x1E69E86B0] + 4);

      v7 = swift_task_alloc();
      v0[12] = v7;
      v8 = sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
      *v7 = v0;
      v7[1] = sub_1A952C334;
      v9 = MEMORY[0x1E69E7288];
      v10 = MEMORY[0x1E69E7CA8] + 8;

      return MEMORY[0x1EEE6DA20](v0 + 2, v3, v10, v8, v9);
    }
  }

  else if (v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  v11 = v0[10];
  v13 = v0[6];
  v12 = v0[7];
  v15 = v0[4];
  v14 = v0[5];
  v16 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_taskPriority;
  v17 = sub_1A957C688();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v12, v13 + v16, v17);
  (*(v18 + 56))(v12, 0, 1, v17);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v15;
  v19[5] = v14;

  v20 = sub_1A93C4B70(0, 0, v12, &unk_1A95997C8, v19);

  v21 = *(v13 + v11);
  *(v13 + v11) = v20;

  v22 = v0[1];

  return v22();
}

uint64_t sub_1A952C738()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A9529D68(v2, v3, v4);
}

uint64_t sub_1A952C7E0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1A938FA84;

  return v8();
}

uint64_t sub_1A952C8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A937829C(&qword_1EB386E38, &qword_1A9589CD8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v24 - v12;
  v14 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v24 - v17;
  v19 = sub_1A957C688();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v9 + 16))(v13, a1, v8);
  v20 = sub_1A9534BD8(&qword_1EB388758);
  v21 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  *(v22 + 3) = v20;
  *(v22 + 4) = a2;
  *(v22 + 5) = a3;
  *(v22 + 6) = a4;
  (*(v9 + 32))(&v22[v21], v13, v8);
  swift_retain_n();

  sub_1A938A404(0, 0, v18, &unk_1A9599788, v22);
}

uint64_t sub_1A952CAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_1A937829C(&qword_1EB386E38, &qword_1A9589CD8);
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v7[8] = *(v9 + 64);
  v7[9] = swift_task_alloc();
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758);
  v11 = sub_1A957C5A8();

  return MEMORY[0x1EEE6DFA0](sub_1A952CC14, v11, v10);
}

uint64_t sub_1A952CC14()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[3];
  (*(v3 + 16))(v1, v0[5], v2);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v0[10] = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  (*(v3 + 32))(v7 + v6, v1, v2);

  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_1A952CD54;
  v9 = v0[2];

  return sub_1A952C024(&unk_1A9599798, v7);
}

uint64_t sub_1A952CD54()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1A952CE80(int *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v7 = (a1 + *a1);
  v4 = a1[1];
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1A952CF6C;

  return v7();
}

uint64_t sub_1A952CF6C()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A952D068, 0, 0);
}

uint64_t sub_1A952D068()
{
  v1 = *(v0 + 16);
  sub_1A937829C(&qword_1EB386E38, &qword_1A9589CD8);
  sub_1A957C5C8();
  v2 = *(v0 + 8);

  return v2();
}

int64_t sub_1A952D0E0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v23[-v7];
  v9 = sub_1A937829C(&qword_1EB388790, &qword_1A9599730);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v23[-v13];
  v15 = *(type metadata accessor for TTSSpeechQueue.QueueableWrapper(0) + 20);
  v25[0] = 2;
  sub_1A937829C(&qword_1EB388788, &qword_1A95996E8);
  sub_1A957C818();
  (*(v10 + 8))(v14, v9);
  v24 = a1;
  swift_beginAccess();
  result = sub_1A9531C10(sub_1A9530E84, v23);
  v17 = *(*(v2 + 5) + 16);
  if (v17 < result)
  {
    __break(1u);
  }

  else
  {
    sub_1A95348A0(result, v17);
    swift_endAccess();
    sub_1A9526A64();
    if (*(*(v2 + 5) + 16))
    {
      v18 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_taskPriority;
      v19 = sub_1A957C688();
      v20 = *(v19 - 8);
      (*(v20 + 16))(v8, &v2[v18], v19);
      (*(v20 + 56))(v8, 0, 1, v19);
      v21 = sub_1A9534BD8(&qword_1EB388758);
      v22 = swift_allocObject();
      v22[2] = v2;
      v22[3] = v21;
      v22[4] = v2;
      swift_retain_n();
      sub_1A938A404(0, 0, v8, &unk_1A9599740, v22);
    }

    else
    {
      v25[0] = 2;
      return (*(*v2 + 160))(v25);
    }
  }

  return result;
}

uint64_t sub_1A952D400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758);
  v6 = sub_1A957C5A8();

  return MEMORY[0x1EEE6DFA0](sub_1A952D4A8, v6, v5);
}

uint64_t sub_1A952D4A8()
{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1A952D55C;
  v3 = *(v0 + 16);

  return sub_1A952C024(&unk_1A9599750, v3);
}

uint64_t sub_1A952D55C()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1A952D66C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A9382328;

  return sub_1A952D6FC();
}

uint64_t sub_1A952D6FC()
{
  v1[8] = v0;
  v2 = sub_1A937829C(&qword_1EB388790, &qword_1A9599730);
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = *(*(sub_1A937829C(&qword_1EB388760, &qword_1A9599360) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v6 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  v1[14] = v6;
  v7 = *(v6 - 8);
  v1[15] = v7;
  v8 = *(v7 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758);
  v10 = sub_1A957C5A8();
  v1[19] = v10;
  v1[20] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1A952D8C0, v10, v9);
}

uint64_t sub_1A952D8C0()
{
  v54 = v0;
  v1 = *(**(v0 + 64) + 152);
  v2 = v1(&v53);
  if (v53 != 3)
  {
    v3 = *(v0 + 64);
    (v1)((&v53 + 1), v2);
    if (BYTE1(v53) != 2)
    {
LABEL_24:
      v38 = *(v0 + 136);
      v37 = *(v0 + 144);
      v39 = *(v0 + 128);
      v41 = *(v0 + 96);
      v40 = *(v0 + 104);
      v42 = *(v0 + 88);

      v43 = *(v0 + 8);

      return v43();
    }
  }

  v4 = *(v0 + 64);
  swift_beginAccess();
  v5 = *(v4 + 40);
  if (!*(v5 + 16))
  {
    v14 = *(v0 + 64);
    BYTE2(v53) = 2;
    (*(*v14 + 160))(&v53 + 2);
    goto LABEL_24;
  }

  v6 = *(v0 + 112);
  v7 = *(v0 + 120);
  v8 = *(v0 + 104);
  v9 = *(v0 + 64);
  sub_1A9530850(v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), *(v0 + 144));
  v10 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_runningItem;
  swift_beginAccess();
  sub_1A9391BAC(v9 + v10, v8, &qword_1EB388760, &qword_1A9599360);
  v11 = *(v7 + 48);
  if (v11(v8, 1, v6))
  {
    sub_1A937B960(*(v0 + 104), &qword_1EB388760, &qword_1A9599360);
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v15 = *(v0 + 136);
    v16 = *(v0 + 104);
    sub_1A9530850(v16, v15);
    sub_1A937B960(v16, &qword_1EB388760, &qword_1A9599360);
    v17 = *v15;
    v18 = v15[1];
    ObjectType = swift_getObjectType();
    v12 = (*(v18 + 32))(ObjectType, v18);
    v13 = v20;
    sub_1A95308B4(v15);
  }

  v21 = *(v0 + 144);
  v23 = *v21;
  v22 = v21[1];
  v24 = swift_getObjectType();
  v25 = (*(v22 + 32))(v24, v22);
  if (v13)
  {
    if (v12 == v25 && v13 == v26)
    {

LABEL_23:
      sub_1A95308B4(*(v0 + 144));
      goto LABEL_24;
    }

    v28 = sub_1A957D3E8();

    if (v28)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v29 = *(v0 + 64);
  if (*(v29 + OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_runTask))
  {
    v30 = *(v29 + OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_runTask);

    sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
    sub_1A957C748();
  }

  v31 = *(v0 + 112);
  v32 = *(v0 + 96);
  sub_1A9391BAC(v9 + v10, v32, &qword_1EB388760, &qword_1A9599360);
  if (v11(v32, 1, v31))
  {
    sub_1A937B960(*(v0 + 96), &qword_1EB388760, &qword_1A9599360);
    v33 = swift_task_alloc();
    *(v0 + 176) = v33;
    *v33 = v0;
    v33[1] = sub_1A952E148;
    v34 = *(v0 + 144);
    v35 = *(v0 + 64);

    return sub_1A952E314(v34);
  }

  else
  {
    v44 = *(v0 + 128);
    v45 = *(v0 + 96);
    sub_1A9530850(v45, v44);
    sub_1A937B960(v45, &qword_1EB388760, &qword_1A9599360);
    v47 = *v44;
    v46 = v44[1];
    v48 = swift_getObjectType();
    v49 = *(v46 + 72);
    v52 = (v49 + *v49);
    v50 = v49[1];
    v51 = swift_task_alloc();
    *(v0 + 168) = v51;
    *v51 = v0;
    v51[1] = sub_1A952DE24;

    return v52(v23, v22, v48, v46);
  }
}

uint64_t sub_1A952DE24()
{
  v2 = *(*v1 + 168);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_1A952E04C;
  }

  else
  {
    v3 = sub_1A952DF3C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A952DF3C()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(*(v0 + 112) + 20);
  *(v0 + 184) = 3;
  sub_1A937829C(&qword_1EB388788, &qword_1A95996E8);
  sub_1A957C818();
  (*(v3 + 8))(v2, v4);
  sub_1A95308B4(v1);
  v6 = swift_task_alloc();
  *(v0 + 176) = v6;
  *v6 = v0;
  v6[1] = sub_1A952E148;
  v7 = *(v0 + 144);
  v8 = *(v0 + 64);

  return sub_1A952E314(v7);
}

uint64_t sub_1A952E04C()
{
  sub_1A95308B4(v0[16]);
  v1 = v0[19];
  v2 = v0[20];

  return MEMORY[0x1EEE6DFA0](sub_1A952E0B0, v1, v2);
}

uint64_t sub_1A952E0B0()
{
  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_1A952E148;
  v2 = v0[18];
  v3 = v0[8];

  return sub_1A952E314(v2);
}

uint64_t sub_1A952E148()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v6 = *v0;

  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1A952E268, v4, v3);
}

uint64_t sub_1A952E268()
{
  sub_1A95308B4(v0[18]);
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1A952E314(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*(sub_1A937829C(&qword_1EB388000, &qword_1A9587710) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v4 = *(type metadata accessor for TTSSpeechQueue.QueueableWrapper(0) - 8);
  v2[9] = v4;
  v2[10] = *(v4 + 64);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v5 = sub_1A957BC88();
  v2[13] = v5;
  v6 = *(v5 - 8);
  v2[14] = v6;
  v7 = *(v6 + 64) + 15;
  v2[15] = swift_task_alloc();
  type metadata accessor for TTSSpeechQueue(0);
  v2[16] = sub_1A9534BD8(&qword_1EB388758);
  v9 = sub_1A957C5A8();
  v2[17] = v9;
  v2[18] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A952E4BC, v9, v8);
}

uint64_t sub_1A952E4BC()
{
  v49 = v0;
  v1 = *(v0 + 56);
  v2 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_runTask;
  *(v0 + 152) = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_runTask;
  v3 = *(v1 + v2);
  *(v0 + 160) = v3;
  if (v3)
  {
    v4 = *(MEMORY[0x1E69E86B0] + 4);

    v5 = swift_task_alloc();
    *(v0 + 168) = v5;
    v6 = sub_1A937829C(&qword_1EB387EC0, &qword_1A95892D0);
    *v5 = v0;
    v5[1] = sub_1A952E8D0;
    v7 = MEMORY[0x1E69E7288];
    v8 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA20](v0 + 32, v3, v8, v6, v7);
  }

  else
  {
    v10 = *(v0 + 112);
    v9 = *(v0 + 120);
    v12 = *(v0 + 96);
    v11 = *(v0 + 104);
    v13 = *(v0 + 48);
    v14 = sub_1A9391C54();
    (*(v10 + 16))(v9, v14, v11);
    sub_1A9530850(v13, v12);
    v15 = sub_1A957BC68();
    v16 = sub_1A957CA68();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 112);
    v19 = *(v0 + 120);
    v21 = *(v0 + 96);
    v20 = *(v0 + 104);
    if (v17)
    {
      v46 = *(v0 + 120);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v48 = v23;
      *v22 = 136315138;
      *(v0 + 16) = *v21;
      swift_unknownObjectRetain();
      sub_1A937829C(&qword_1EB3871E0, &unk_1A9599720);
      v24 = sub_1A957C198();
      v26 = v25;
      sub_1A95308B4(v21);
      v27 = sub_1A937A5C0(v24, v26, &v48);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_1A9324000, v15, v16, "Run Item => %s", v22, 0xCu);
      sub_1A9378138(v23);
      MEMORY[0x1AC587CD0](v23, -1, -1);
      MEMORY[0x1AC587CD0](v22, -1, -1);

      (*(v18 + 8))(v46, v20);
    }

    else
    {

      sub_1A95308B4(v21);
      (*(v18 + 8))(v19, v20);
    }

    v28 = *(v0 + 152);
    v44 = *(v0 + 128);
    v45 = *(v0 + 120);
    v29 = *(v0 + 88);
    v47 = *(v0 + 96);
    v30 = *(v0 + 72);
    v43 = *(v0 + 80);
    v32 = *(v0 + 56);
    v31 = *(v0 + 64);
    v33 = *(v0 + 48);
    v34 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_taskPriority;
    v35 = sub_1A957C688();
    v36 = *(v35 - 8);
    (*(v36 + 16))(v31, v32 + v34, v35);
    (*(v36 + 56))(v31, 0, 1, v35);
    sub_1A9530850(v33, v29);
    v37 = (*(v30 + 80) + 40) & ~*(v30 + 80);
    v38 = swift_allocObject();
    v38[2] = v32;
    v38[3] = v44;
    v38[4] = v32;
    sub_1A9530910(v29, v38 + v37);
    swift_retain_n();
    v39 = sub_1A93C4B70(0, 0, v31, &unk_1A9599718, v38);
    v40 = *(v32 + v28);
    *(v32 + v28) = v39;

    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_1A952E8D0()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v7 = *v0;

  sub_1A93CF4C8(*(v1 + 32), *(v1 + 40));
  v4 = *(v1 + 144);
  v5 = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1A952EA2C, v5, v4);
}

uint64_t sub_1A952EA2C()
{
  v43 = v0;
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 48);
  v6 = sub_1A9391C54();
  (*(v2 + 16))(v1, v6, v3);
  sub_1A9530850(v5, v4);
  v7 = sub_1A957BC68();
  v8 = sub_1A957CA68();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 112);
    v40 = *(v0 + 120);
    v11 = *(v0 + 96);
    v10 = *(v0 + 104);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v42 = v13;
    *v12 = 136315138;
    *(v0 + 16) = *v11;
    swift_unknownObjectRetain();
    sub_1A937829C(&qword_1EB3871E0, &unk_1A9599720);
    v14 = sub_1A957C198();
    v16 = v15;
    sub_1A95308B4(v11);
    v17 = sub_1A937A5C0(v14, v16, &v42);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1A9324000, v7, v8, "Run Item => %s", v12, 0xCu);
    sub_1A9378138(v13);
    MEMORY[0x1AC587CD0](v13, -1, -1);
    MEMORY[0x1AC587CD0](v12, -1, -1);

    (*(v9 + 8))(v40, v10);
  }

  else
  {
    v19 = *(v0 + 112);
    v18 = *(v0 + 120);
    v21 = *(v0 + 96);
    v20 = *(v0 + 104);

    sub_1A95308B4(v21);
    (*(v19 + 8))(v18, v20);
  }

  v22 = *(v0 + 152);
  v38 = *(v0 + 128);
  v39 = *(v0 + 120);
  v23 = *(v0 + 88);
  v41 = *(v0 + 96);
  v24 = *(v0 + 72);
  v37 = *(v0 + 80);
  v26 = *(v0 + 56);
  v25 = *(v0 + 64);
  v27 = *(v0 + 48);
  v28 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_taskPriority;
  v29 = sub_1A957C688();
  v30 = *(v29 - 8);
  (*(v30 + 16))(v25, v26 + v28, v29);
  (*(v30 + 56))(v25, 0, 1, v29);
  sub_1A9530850(v27, v23);
  v31 = (*(v24 + 80) + 40) & ~*(v24 + 80);
  v32 = swift_allocObject();
  v32[2] = v26;
  v32[3] = v38;
  v32[4] = v26;
  sub_1A9530910(v23, v32 + v31);
  swift_retain_n();
  v33 = sub_1A93C4B70(0, 0, v25, &unk_1A9599718, v32);
  v34 = *(v26 + v22);
  *(v26 + v22) = v33;

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_1A952ED84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_1A937829C(&qword_1EB388790, &qword_1A9599730);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  v9 = *(*(sub_1A937829C(&qword_1EB388760, &qword_1A9599360) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758);
  v11 = sub_1A957C5A8();
  v5[14] = v11;
  v5[15] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1A952EECC, v11, v10);
}

uint64_t sub_1A952EECC()
{
  v9 = v0;
  v1 = v0[13];
  v2 = v0[8];
  sub_1A9530850(v0[9], v1);
  v3 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  v0[16] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v0[17] = v5;
  v0[18] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 0, 1, v3);
  v6 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_runningItem;
  v0[19] = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_runningItem;
  swift_beginAccess();
  sub_1A9530E14(v1, v2 + v6);
  swift_endAccess();
  v8 = 3;
  (*(*v2 + 160))(&v8);

  return MEMORY[0x1EEE6DFA0](sub_1A952EFF8, 0, 0);
}

uint64_t sub_1A952EFF8()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(*(v0 + 128) + 20);
  *(v0 + 176) = 1;
  sub_1A937829C(&qword_1EB388788, &qword_1A95996E8);
  sub_1A957C818();
  (*(v2 + 8))(v1, v3);
  v7 = *v4;
  v6 = v4[1];
  ObjectType = swift_getObjectType();
  v9 = *(v6 + 56);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 160) = v11;
  *v11 = v0;
  v11[1] = sub_1A952F184;

  return v13(ObjectType, v6);
}

uint64_t sub_1A952F184()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v6 = v2[12];
    v5 = v2[13];

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {
    v9 = v2[14];
    v10 = v2[15];

    return MEMORY[0x1EEE6DFA0](sub_1A952F2D8, v9, v10);
  }
}

uint64_t sub_1A952F2D8()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 104);
  v5 = *(v0 + 64);
  (*(v0 + 136))(v4, 1, 1, *(v0 + 128));
  swift_beginAccess();
  sub_1A9530E14(v4, v5 + v3);
  swift_endAccess();
  sub_1A957C788();
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  if (v1)
  {
    v8 = *(v0 + 104);
  }

  else
  {
    v10 = *(v0 + 64);
    sub_1A952D0E0(*(v0 + 72));
  }

  v9 = *(v0 + 8);

  return v9();
}

char *TTSSpeechQueue.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 5);

  sub_1A937B960(&v0[OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_runningItem], &qword_1EB388760, &qword_1A9599360);
  v4 = *&v0[OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_runTask];

  v5 = *&v0[OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_schedulingTask];

  v6 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue_taskPriority;
  v7 = sub_1A957C688();
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = OBJC_IVAR____TtC12TextToSpeech14TTSSpeechQueue__uiActions;
  v9 = sub_1A937829C(&qword_1EB388748, &qword_1A95992C8);
  (*(*(v9 - 8) + 8))(&v0[v8], v9);
  return v0;
}

uint64_t TTSSpeechQueue.__deallocating_deinit()
{
  TTSSpeechQueue.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1A952F530()
{
  v0 = type metadata accessor for TTSSpeechQueue(0);
  v1 = sub_1A9534BD8(&qword_1EB3887A0);

  return TTSActor.unownedExecutor.getter(v0, v1);
}

uint64_t sub_1A952F590@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TTSSpeechQueue(0);
  result = sub_1A957BE48();
  *a1 = result;
  return result;
}

uint64_t sub_1A952F5D0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return sub_1A952A28C(v3, v4, v5, v2);
}

uint64_t sub_1A952F664()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A93836DC;

  return sub_1A952A840(v0);
}

uint64_t sub_1A952F700()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A93836DC;

  return sub_1A952B614(v0);
}

unint64_t sub_1A952F7C4()
{
  result = qword_1EB388768;
  if (!qword_1EB388768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388768);
  }

  return result;
}

uint64_t sub_1A952F824(uint64_t a1)
{
  result = sub_1A9534BD8(&qword_1EB388758);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A952F86C()
{
  result = qword_1EB388770;
  if (!qword_1EB388770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388770);
  }

  return result;
}

unint64_t sub_1A952F8C4()
{
  result = qword_1EB388778;
  if (!qword_1EB388778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388778);
  }

  return result;
}

unint64_t sub_1A952F91C()
{
  result = qword_1EB388780;
  if (!qword_1EB388780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB388780);
  }

  return result;
}

void sub_1A952F978()
{
  sub_1A95301F8();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = sub_1A957C688();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1A9530250();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of TTSSpeechQueue.enqueue(work:run:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 328);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A93916A8;

  return v10(a1, a2);
}

uint64_t dispatch thunk of TTSSpeechQueue.cancel(withId:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 336);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1A93836DC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of TTSSpeechQueue.run()()
{
  v2 = *(*v0 + 344);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return v6();
}

uint64_t dispatch thunk of TTSSpeechQueue.pause()()
{
  v2 = *(*v0 + 352);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return v6();
}

uint64_t dispatch thunk of TTSSpeechQueue.stop()()
{
  v2 = *(*v0 + 360);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return v6();
}

void sub_1A95301F8()
{
  if (!qword_1EB386320)
  {
    type metadata accessor for TTSSpeechQueue.QueueableWrapper(255);
    v0 = sub_1A957CC58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB386320);
    }
  }
}

void sub_1A9530250()
{
  if (!qword_1EB386298)
  {
    sub_1A93A7B68(&qword_1EB388740, &qword_1A9599278);
    v0 = sub_1A957BEE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB386298);
    }
  }
}

uint64_t dispatch thunk of TTSQueueable.run()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 56);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A9382328;

  return v9(a1, a2);
}

uint64_t dispatch thunk of TTSQueueable.stop(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 64);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1A93836DC;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of TTSQueueable.suspend(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 72);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1A93836DC;

  return v13(a1, a2, a3, a4);
}

void sub_1A95306F8()
{
  sub_1A953077C();
  if (v0 <= 0x3F)
  {
    sub_1A95307DC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1A953077C()
{
  result = qword_1EB386218;
  if (!qword_1EB386218)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB386218);
  }

  return result;
}

void sub_1A95307DC()
{
  if (!qword_1EB386270)
  {
    sub_1A93A7B68(&qword_1EB387EC0, &qword_1A95892D0);
    v0 = sub_1A957C838();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB386270);
    }
  }
}

uint64_t sub_1A9530850(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A95308B4(uint64_t a1)
{
  v2 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A9530910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A9530974()
{
  v2 = *(type metadata accessor for TTSSpeechQueue.QueueableWrapper(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A93836DC;

  return sub_1A952ED84(v5, v6, v7, v4, v0 + v3);
}

size_t sub_1A9530A4C(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1A937829C(&qword_1EB388798, &unk_1A9599770);
  v10 = *(type metadata accessor for TTSSpeechQueue.QueueableWrapper(0) - 8);
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
  v15 = *(type metadata accessor for TTSSpeechQueue.QueueableWrapper(0) - 8);
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

size_t sub_1A9530C24(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1A937829C(&qword_1EB3887C8, &qword_1A9599808);
  v10 = *(sub_1A937829C(&qword_1EB387158, &unk_1A958B6D0) - 8);
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
  v15 = *(sub_1A937829C(&qword_1EB387158, &unk_1A958B6D0) - 8);
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

uint64_t sub_1A9530E14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB388760, &qword_1A9599360);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A9530E84(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = a1[1];
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 32))(ObjectType, v4);
  v8 = v7;
  v9 = *v2;
  v10 = v2[1];
  v11 = swift_getObjectType();
  if (v6 == (*(v10 + 32))(v11, v10) && v8 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1A957D3E8();
  }

  return v14 & 1;
}

size_t sub_1A9530F54(size_t a1, int64_t a2, char a3)
{
  result = sub_1A9530F94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A9530F74(char *a1, int64_t a2, char a3)
{
  result = sub_1A953116C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A9530F94(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1A937829C(&qword_1EB388798, &unk_1A9599770);
  v10 = *(type metadata accessor for TTSSpeechQueue.QueueableWrapper(0) - 8);
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
  v15 = *(type metadata accessor for TTSSpeechQueue.QueueableWrapper(0) - 8);
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

char *sub_1A953116C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB3887B8, &qword_1A95997F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_1A9531270(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_1A957D4E8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1A9531574(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1A9531350(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1A937829C(&qword_1EB3887B0, &qword_1A95997E8);
  result = sub_1A957CEA8();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
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
      v19 = *(v6 + 40);
      result = sub_1A957D4E8();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
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

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1A9531574(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A9531350(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1A9531694();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1A95317D4(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_1A957D4E8();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A957D428();
  __break(1u);
  return result;
}

void *sub_1A9531694()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB3887B0, &qword_1A95997E8);
  v2 = *v0;
  v3 = sub_1A957CE98();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_1A95317D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1A937829C(&qword_1EB3887B0, &qword_1A95997E8);
  result = sub_1A957CEA8();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_1A957D4E8();
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
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
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

unint64_t sub_1A95319C4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_1A9530A4C(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_1A9531A98(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1A9531A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1A937B960(a4, &qword_1EB3887A8, &qword_1A95997D0);
  }

  if (v17 < 1)
  {
    return sub_1A937B960(a4, &qword_1EB3887A8, &qword_1A95997D0);
  }

  result = sub_1A9530850(a4, v15);
  if (v12 >= v17)
  {
    return sub_1A937B960(a4, &qword_1EB3887A8, &qword_1A95997D0);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1A9531C10(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v37 - v15;
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v37 - v18;
  v20 = *v2;
  result = sub_1A9531EE0(a1, a2, *v2);
  if (!v3)
  {
    v47 = 0;
    if (v22)
    {
      return *(v20 + 16);
    }

    v43 = v19;
    v44 = a1;
    v39 = v16;
    v40 = v12;
    v38 = v2;
    v46 = result;
    v23 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v25 = (v20 + 16);
      v24 = *(v20 + 16);
      if (v23 == v24)
      {
        return v46;
      }

      v41 = v7;
      v42 = a2;
      while (v23 < v24)
      {
        v26 = v20;
        v45 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v27 = v20 + v45;
        v28 = *(v7 + 72);
        v29 = v28 * v23;
        v30 = v43;
        sub_1A9530850(v27 + v28 * v23, v43);
        v31 = v47;
        v32 = v44(v30);
        result = sub_1A95308B4(v30);
        v47 = v31;
        if (v31)
        {
          return result;
        }

        if (v32)
        {
          v7 = v41;
          v20 = v26;
        }

        else
        {
          v33 = v46;
          if (v23 == v46)
          {
            v7 = v41;
            v20 = v26;
          }

          else
          {
            if ((v46 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v34 = *v25;
            if (v46 >= *v25)
            {
              goto LABEL_27;
            }

            v35 = v28 * v46;
            result = sub_1A9530850(v27 + v28 * v46, v39);
            if (v23 >= v34)
            {
              goto LABEL_28;
            }

            sub_1A9530850(v27 + v29, v40);
            v20 = v26;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = sub_1A9531FCC(v26);
            }

            v36 = v20 + v45;
            result = sub_1A9534B74(v40, v20 + v45 + v35);
            if (v23 >= *(v20 + 16))
            {
              goto LABEL_29;
            }

            result = sub_1A9534B74(v39, v36 + v29);
            *v38 = v20;
            v7 = v41;
            v33 = v46;
          }

          v46 = v33 + 1;
        }

        ++v23;
        v25 = (v20 + 16);
        v24 = *(v20 + 16);
        if (v23 == v24)
        {
          return v46;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A9531EE0(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for TTSSpeechQueue.QueueableWrapper(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_1A9531FE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1AC585770](v2, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1A9531270(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1A9532054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_1A937829C(&qword_1EB388790, &qword_1A9599730);
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758);
  v11 = sub_1A957C5A8();
  v3[19] = v11;
  v3[20] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1A95321F4, v11, v10);
}

uint64_t sub_1A95321F4()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  v2 = *(v1 + 40);
  v3 = *(v2 + 16);

  v68 = v3;
  if (v3)
  {
    v5 = 0;
    v64 = *(v0 + 104);
    v66 = *(v0 + 144);
    v62 = (*(v0 + 64) + 24);
    v6 = MEMORY[0x1E69E7CC0];
    while (v5 < *(v2 + 16))
    {
      v7 = *(v0 + 144);
      v9 = *(v0 + 56);
      v8 = *(v0 + 64);
      v10 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v11 = *(v64 + 72);
      v12 = v2;
      sub_1A9530850(v2 + v10 + v11 * v5, v7);
      v13 = *v7;
      v14 = *(v66 + 8);
      ObjectType = swift_getObjectType();
      v16 = (*(v14 + 24))(ObjectType, v14);
      v17 = swift_getObjectType();
      v18 = (*v62)(v17, v8);
      v19 = *(v0 + 144);
      if (v16 >= v18)
      {
        result = sub_1A95308B4(v19);
        v2 = v12;
      }

      else
      {
        sub_1A9530910(v19, *(v0 + 112));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A9530F54(0, *(v6 + 16) + 1, 1);
        }

        v2 = v12;
        v21 = *(v6 + 16);
        v20 = *(v6 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1A9530F54(v20 > 1, v21 + 1, 1);
        }

        v22 = *(v0 + 112);
        *(v6 + 16) = v21 + 1;
        result = sub_1A9530910(v22, v6 + v10 + v21 * v11);
      }

      if (v68 == ++v5)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_13:
  *(v0 + 168) = v6;

  v23 = *(v6 + 16);
  *(v0 + 176) = v23;
  if (v23)
  {
    v24 = *(v0 + 120);
    v25 = *(v0 + 104);
    v26 = *(v25 + 80);
    *(v0 + 208) = v26;
    *(v0 + 184) = *(v25 + 72);
    *(v0 + 192) = 0;
    sub_1A9530850(*(v0 + 168) + ((v26 + 32) & ~v26), v24);
    v27 = *v24;
    v28 = v24[1];
    v29 = swift_getObjectType();
    v30 = *(v28 + 64);
    v69 = (v30 + *v30);
    v31 = v30[1];
    v32 = swift_task_alloc();
    *(v0 + 200) = v32;
    *v32 = v0;
    v32[1] = sub_1A9532754;

    return (v69)(0, 0, v29, v28);
  }

  else
  {

    v33 = *(v0 + 48);
    v34 = *(v33 + 40);
    v35 = *(v34 + 16);

    v70 = v35;
    if (v35)
    {
      v36 = 0;
      v65 = *(v0 + 104);
      v67 = *(v0 + 136);
      v63 = (*(v0 + 64) + 24);
      v37 = MEMORY[0x1E69E7CC0];
      while (v36 < *(v34 + 16))
      {
        v38 = *(v0 + 136);
        v40 = *(v0 + 56);
        v39 = *(v0 + 64);
        v41 = (*(v65 + 80) + 32) & ~*(v65 + 80);
        v42 = *(v65 + 72);
        v43 = v34;
        sub_1A9530850(v34 + v41 + v42 * v36, v38);
        v44 = *v38;
        v45 = *(v67 + 8);
        v46 = swift_getObjectType();
        v47 = (*(v45 + 24))(v46, v45);
        v48 = swift_getObjectType();
        v49 = (*v63)(v48, v39);
        v50 = *(v0 + 136);
        if (v47 < v49)
        {
          result = sub_1A95308B4(v50);
          v34 = v43;
        }

        else
        {
          sub_1A9530910(v50, *(v0 + 128));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1A9530F54(0, *(v37 + 16) + 1, 1);
          }

          v34 = v43;
          v52 = *(v37 + 16);
          v51 = *(v37 + 24);
          if (v52 >= v51 >> 1)
          {
            sub_1A9530F54(v51 > 1, v52 + 1, 1);
          }

          v53 = *(v0 + 128);
          *(v37 + 16) = v52 + 1;
          result = sub_1A9530910(v53, v37 + v41 + v52 * v42);
        }

        if (v70 == ++v36)
        {
          v33 = *(v0 + 48);
          goto LABEL_30;
        }
      }

LABEL_34:
      __break(1u);
      return result;
    }

    v37 = MEMORY[0x1E69E7CC0];
LABEL_30:
    v55 = *(v0 + 136);
    v54 = *(v0 + 144);
    v56 = *(v0 + 120);
    v57 = *(v0 + 128);
    v58 = *(v0 + 112);
    v59 = *(v0 + 88);

    v60 = *(v33 + 40);
    *(v33 + 40) = v37;

    sub_1A9526A64();

    v61 = *(v0 + 8);

    return v61();
  }
}

uint64_t sub_1A9532754()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 152);
    v6 = *(v2 + 160);
    v7 = sub_1A9535044;
  }

  else
  {
    v7 = sub_1A9532884;
    v5 = 0;
    v6 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A9532884()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(*(v0 + 96) + 20);
  *(v0 + 212) = 4;
  sub_1A937829C(&qword_1EB388788, &qword_1A95996E8);
  sub_1A957C818();
  (*(v4 + 8))(v2, v3);
  *(v0 + 40) = 0;
  sub_1A957C828();
  v6 = *(v0 + 152);
  v7 = *(v0 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1A953296C, v6, v7);
}

uint64_t sub_1A953296C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 192) + 1;
  sub_1A95308B4(*(v0 + 120));
  if (v2 == v1)
  {
    v3 = *(v0 + 168);

    v4 = *(v0 + 48);
    v5 = *(v4 + 40);
    v6 = *(v5 + 16);

    v46 = v6;
    if (v6)
    {
      v8 = 0;
      v44 = *(v0 + 104);
      v45 = *(v0 + 136);
      v43 = (*(v0 + 64) + 24);
      v9 = MEMORY[0x1E69E7CC0];
      while (v8 < *(v5 + 16))
      {
        v10 = *(v0 + 136);
        v12 = *(v0 + 56);
        v11 = *(v0 + 64);
        v13 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v14 = *(v44 + 72);
        v15 = v5;
        sub_1A9530850(v5 + v13 + v14 * v8, v10);
        v16 = *v10;
        v17 = *(v45 + 8);
        ObjectType = swift_getObjectType();
        v19 = (*(v17 + 24))(ObjectType, v17);
        v20 = swift_getObjectType();
        v21 = (*v43)(v20, v11);
        v22 = *(v0 + 136);
        if (v19 < v21)
        {
          result = sub_1A95308B4(v22);
          v5 = v15;
        }

        else
        {
          sub_1A9530910(v22, *(v0 + 128));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1A9530F54(0, *(v9 + 16) + 1, 1);
          }

          v5 = v15;
          v24 = *(v9 + 16);
          v23 = *(v9 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_1A9530F54(v23 > 1, v24 + 1, 1);
          }

          v25 = *(v0 + 128);
          *(v9 + 16) = v24 + 1;
          result = sub_1A9530910(v25, v9 + v13 + v24 * v14);
        }

        if (v46 == ++v8)
        {
          v4 = *(v0 + 48);
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
LABEL_18:
      v36 = *(v0 + 136);
      v35 = *(v0 + 144);
      v37 = *(v0 + 120);
      v38 = *(v0 + 128);
      v39 = *(v0 + 112);
      v40 = *(v0 + 88);

      v41 = *(v4 + 40);
      *(v4 + 40) = v9;

      sub_1A9526A64();

      v42 = *(v0 + 8);

      return v42();
    }
  }

  else
  {
    v26 = *(v0 + 184);
    v27 = *(v0 + 192) + 1;
    *(v0 + 192) = v27;
    v28 = *(v0 + 120);
    sub_1A9530850(*(v0 + 168) + ((*(v0 + 208) + 32) & ~*(v0 + 208)) + v26 * v27, v28);
    v29 = *v28;
    v30 = v28[1];
    v31 = swift_getObjectType();
    v32 = *(v30 + 64);
    v47 = (v32 + *v32);
    v33 = v32[1];
    v34 = swift_task_alloc();
    *(v0 + 200) = v34;
    *v34 = v0;
    v34[1] = sub_1A9532754;

    return (v47)(0, 0, v31, v30);
  }

  return result;
}

uint64_t sub_1A9532D30(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_1A937829C(&qword_1EB388790, &qword_1A9599730);
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758);
  v10 = sub_1A957C5A8();
  v2[18] = v10;
  v2[19] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1A9532ECC, v10, v9);
}

uint64_t sub_1A9532ECC()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  v2 = *(v1 + 40);
  v3 = *(v2 + 16);

  v74 = v3;
  if (v3)
  {
    v5 = 0;
    v72 = *(v0 + 136);
    v6 = *(v0 + 96);
    v7 = *(v0 + 56);
    v8 = v7 + 56;
    v70 = MEMORY[0x1E69E7CC0];
    while (v5 < *(v2 + 16))
    {
      v9 = *(v0 + 136);
      v10 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v11 = *(v6 + 72);
      sub_1A9530850(v2 + v10 + v11 * v5, v9);
      v12 = *v9;
      v13 = *(v72 + 8);
      ObjectType = swift_getObjectType();
      v15 = (*(v13 + 24))(ObjectType, v13);
      if (*(v7 + 16) && (v16 = v15, v17 = *(v7 + 40), v18 = sub_1A957D4E8(), v19 = -1 << *(v7 + 32), v20 = v18 & ~v19, ((*(v8 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0))
      {
        v21 = ~v19;
        while (*(*(v7 + 48) + 8 * v20) != v16)
        {
          v20 = (v20 + 1) & v21;
          if (((*(v8 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        sub_1A9530910(*(v0 + 136), *(v0 + 104));
        v22 = v70;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A9530F54(0, *(v70 + 16) + 1, 1);
          v22 = v70;
        }

        v24 = *(v22 + 16);
        v23 = *(v22 + 24);
        v25 = v24 + 1;
        if (v24 >= v23 >> 1)
        {
          sub_1A9530F54(v23 > 1, v24 + 1, 1);
          v25 = v24 + 1;
          v22 = v70;
        }

        v26 = *(v0 + 104);
        *(v22 + 16) = v25;
        v70 = v22;
        result = sub_1A9530910(v26, v22 + v10 + v24 * v11);
      }

      else
      {
LABEL_3:
        result = sub_1A95308B4(*(v0 + 136));
      }

      if (++v5 == v74)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

  v70 = MEMORY[0x1E69E7CC0];
LABEL_18:
  *(v0 + 160) = v70;

  v27 = *(v70 + 16);
  *(v0 + 168) = v27;
  if (v27)
  {
    v28 = *(v0 + 112);
    v29 = *(v0 + 96);
    v30 = *(v29 + 80);
    *(v0 + 200) = v30;
    *(v0 + 176) = *(v29 + 72);
    *(v0 + 184) = 0;
    sub_1A9530850(*(v0 + 160) + ((v30 + 32) & ~v30), v28);
    v31 = *v28;
    v32 = v28[1];
    v33 = swift_getObjectType();
    v34 = *(v32 + 64);
    v75 = (v34 + *v34);
    v35 = v34[1];
    v36 = swift_task_alloc();
    *(v0 + 192) = v36;
    *v36 = v0;
    v36[1] = sub_1A9533498;

    return (v75)(0, 0, v33, v32);
  }

  else
  {

    v37 = *(v0 + 48);
    v38 = *(v37 + 40);
    v39 = *(v38 + 16);

    v69 = v38;
    v76 = v39;
    if (v39)
    {
      v40 = 0;
      v41 = *(v0 + 96);
      v71 = v41;
      v73 = *(v0 + 128);
      v42 = *(v0 + 56);
      v43 = v42 + 56;
      v44 = MEMORY[0x1E69E7CC0];
      while (v40 < *(v38 + 16))
      {
        v45 = *(v0 + 128);
        v46 = (*(v71 + 80) + 32) & ~*(v71 + 80);
        v47 = *(v71 + 72);
        sub_1A9530850(v38 + v46 + v47 * v40, v45);
        v48 = *v45;
        v49 = *(v73 + 8);
        v50 = swift_getObjectType();
        v51 = (*(v49 + 24))(v50, v49);
        if (*(v42 + 16) && (v52 = v51, v53 = *(v42 + 40), v54 = sub_1A957D4E8(), v55 = -1 << *(v42 + 32), v56 = v54 & ~v55, ((*(v43 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) != 0))
        {
          v57 = ~v55;
          while (*(*(v42 + 48) + 8 * v56) != v52)
          {
            v56 = (v56 + 1) & v57;
            if (((*(v43 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
            {
              goto LABEL_32;
            }
          }

          result = sub_1A95308B4(*(v0 + 128));
        }

        else
        {
LABEL_32:
          sub_1A9530910(*(v0 + 128), *(v0 + 120));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1A9530F54(0, *(v44 + 16) + 1, 1);
          }

          v59 = *(v44 + 16);
          v58 = *(v44 + 24);
          if (v59 >= v58 >> 1)
          {
            sub_1A9530F54(v58 > 1, v59 + 1, 1);
          }

          v60 = *(v0 + 120);
          *(v44 + 16) = v59 + 1;
          result = sub_1A9530910(v60, v44 + v46 + v59 * v47);
          v38 = v69;
        }

        if (++v40 == v76)
        {
          v37 = *(v0 + 48);
          goto LABEL_39;
        }
      }

LABEL_43:
      __break(1u);
      return result;
    }

    v44 = MEMORY[0x1E69E7CC0];
LABEL_39:
    v62 = *(v0 + 128);
    v61 = *(v0 + 136);
    v64 = *(v0 + 112);
    v63 = *(v0 + 120);
    v65 = *(v0 + 104);
    v66 = *(v0 + 80);

    v67 = *(v37 + 40);
    *(v37 + 40) = v44;

    sub_1A9526A64();

    v68 = *(v0 + 8);

    return v68();
  }
}

uint64_t sub_1A9533498()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 144);
    v6 = *(v2 + 152);
    v7 = sub_1A9535030;
  }

  else
  {
    v7 = sub_1A95335C8;
    v5 = 0;
    v6 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A95335C8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(*(v0 + 88) + 20);
  *(v0 + 204) = 4;
  sub_1A937829C(&qword_1EB388788, &qword_1A95996E8);
  sub_1A957C818();
  (*(v4 + 8))(v2, v3);
  *(v0 + 40) = 0;
  sub_1A957C828();
  v6 = *(v0 + 144);
  v7 = *(v0 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1A95336B0, v6, v7);
}

uint64_t sub_1A95336B0()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 184) + 1;
  sub_1A95308B4(*(v0 + 112));
  if (v2 == v1)
  {
    v3 = *(v0 + 160);

    v4 = *(v0 + 48);
    v5 = *(v4 + 40);
    v6 = *(v5 + 16);

    v46 = v5;
    v49 = v6;
    if (v6)
    {
      v8 = 0;
      v9 = *(v0 + 96);
      v47 = v9;
      v48 = *(v0 + 128);
      v10 = *(v0 + 56);
      v11 = v10 + 56;
      v12 = MEMORY[0x1E69E7CC0];
      while (v8 < *(v5 + 16))
      {
        v13 = *(v0 + 128);
        v14 = (*(v47 + 80) + 32) & ~*(v47 + 80);
        v15 = *(v47 + 72);
        sub_1A9530850(v5 + v14 + v15 * v8, v13);
        v16 = *v13;
        v17 = *(v48 + 8);
        ObjectType = swift_getObjectType();
        v19 = (*(v17 + 24))(ObjectType, v17);
        if (*(v10 + 16) && (v20 = v19, v21 = *(v10 + 40), v22 = sub_1A957D4E8(), v23 = -1 << *(v10 + 32), v24 = v22 & ~v23, ((*(v11 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0))
        {
          v25 = ~v23;
          while (*(*(v10 + 48) + 8 * v24) != v20)
          {
            v24 = (v24 + 1) & v25;
            if (((*(v11 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_12;
            }
          }

          result = sub_1A95308B4(*(v0 + 128));
        }

        else
        {
LABEL_12:
          sub_1A9530910(*(v0 + 128), *(v0 + 120));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1A9530F54(0, *(v12 + 16) + 1, 1);
          }

          v27 = *(v12 + 16);
          v26 = *(v12 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_1A9530F54(v26 > 1, v27 + 1, 1);
          }

          v28 = *(v0 + 120);
          *(v12 + 16) = v27 + 1;
          result = sub_1A9530910(v28, v12 + v14 + v27 * v15);
          v5 = v46;
        }

        if (++v8 == v49)
        {
          v4 = *(v0 + 48);
          goto LABEL_22;
        }
      }

      __break(1u);
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
LABEL_22:
      v39 = *(v0 + 128);
      v38 = *(v0 + 136);
      v41 = *(v0 + 112);
      v40 = *(v0 + 120);
      v42 = *(v0 + 104);
      v43 = *(v0 + 80);

      v44 = *(v4 + 40);
      *(v4 + 40) = v12;

      sub_1A9526A64();

      v45 = *(v0 + 8);

      return v45();
    }
  }

  else
  {
    v29 = *(v0 + 176);
    v30 = *(v0 + 184) + 1;
    *(v0 + 184) = v30;
    v31 = *(v0 + 112);
    sub_1A9530850(*(v0 + 160) + ((*(v0 + 200) + 32) & ~*(v0 + 200)) + v29 * v30, v31);
    v32 = *v31;
    v33 = v31[1];
    v34 = swift_getObjectType();
    v35 = *(v33 + 64);
    v50 = (v35 + *v35);
    v36 = v35[1];
    v37 = swift_task_alloc();
    *(v0 + 192) = v37;
    *v37 = v0;
    v37[1] = sub_1A9533498;

    return (v50)(0, 0, v34, v33);
  }

  return result;
}

uint64_t sub_1A9533A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = sub_1A937829C(&qword_1EB388790, &qword_1A9599730);
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  type metadata accessor for TTSSpeechQueue(0);
  sub_1A9534BD8(&qword_1EB388758);
  v11 = sub_1A957C5A8();
  v3[19] = v11;
  v3[20] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1A9533C3C, v11, v10);
}

uint64_t sub_1A9533C3C()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  v2 = *(*(v1 + 40) + 16);

  v69 = v2;
  if (!v2)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_19:
    *(v0 + 168) = v6;

    v24 = *(v6 + 16);
    *(v0 + 176) = v24;
    if (v24)
    {
      v25 = *(v0 + 120);
      v26 = *(v0 + 104);
      v27 = *(v26 + 80);
      *(v0 + 208) = v27;
      *(v0 + 184) = *(v26 + 72);
      *(v0 + 192) = 0;
      sub_1A9530850(*(v0 + 168) + ((v27 + 32) & ~v27), v25);
      v28 = *v25;
      v29 = v25[1];
      ObjectType = swift_getObjectType();
      v31 = *(v29 + 64);
      v70 = (v31 + *v31);
      v32 = v31[1];
      v33 = swift_task_alloc();
      *(v0 + 200) = v33;
      *v33 = v0;
      v33[1] = sub_1A9534184;

      return (v70)(0, 0, ObjectType, v29);
    }

    v34 = *(v0 + 48);
    v35 = *(*(v34 + 40) + 16);

    v71 = v35;
    if (!v35)
    {
      v56 = MEMORY[0x1E69E7CC0];
LABEL_41:
      v58 = *(v0 + 136);
      v57 = *(v0 + 144);
      v60 = *(v0 + 120);
      v59 = *(v0 + 128);
      v61 = *(v0 + 112);
      v62 = *(v0 + 88);

      v63 = *(v34 + 40);
      *(v34 + 40) = v56;

      sub_1A9526A64();

      v64 = *(v0 + 8);

      return v64();
    }

    v36 = 0;
    v68 = *(v0 + 136);
    v37 = *(v0 + 104);
    v66 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v36 >= *(result + 16))
      {
        goto LABEL_45;
      }

      v38 = *(v0 + 136);
      v39 = *(v0 + 56);
      v40 = *(v0 + 64);
      v41 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v42 = *(v37 + 72);
      v43 = result;
      sub_1A9530850(result + v41 + v42 * v36, v38);
      v44 = *v38;
      v45 = *(v68 + 8);
      v46 = swift_getObjectType();
      if ((*(v45 + 32))(v46, v45) == v39 && v47 == v40)
      {
      }

      else
      {
        v49 = *(v0 + 56);
        v50 = *(v0 + 64);
        v51 = sub_1A957D3E8();

        if ((v51 & 1) == 0)
        {
          sub_1A9530910(*(v0 + 136), *(v0 + 128));
          v52 = v66;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1A9530F54(0, *(v66 + 16) + 1, 1);
            v52 = v66;
          }

          v54 = *(v52 + 16);
          v53 = *(v52 + 24);
          if (v54 >= v53 >> 1)
          {
            sub_1A9530F54(v53 > 1, v54 + 1, 1);
            v52 = v66;
          }

          v55 = *(v0 + 128);
          *(v52 + 16) = v54 + 1;
          v66 = v52;
          sub_1A9530910(v55, v52 + v41 + v54 * v42);
          goto LABEL_27;
        }
      }

      sub_1A95308B4(*(v0 + 136));
LABEL_27:
      ++v36;
      result = v43;
      if (v71 == v36)
      {
        v34 = *(v0 + 48);
        v56 = v66;
        goto LABEL_41;
      }
    }
  }

  v4 = 0;
  v5 = *(v0 + 104);
  v65 = v5;
  v67 = *(v0 + 144);
  v6 = MEMORY[0x1E69E7CC0];
  while (v4 < *(result + 16))
  {
    v7 = *(v0 + 144);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    v10 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v11 = *(v65 + 72);
    v12 = result;
    sub_1A9530850(result + v10 + v11 * v4, v7);
    v13 = *v7;
    v14 = *(v67 + 8);
    v15 = swift_getObjectType();
    if ((*(v14 + 32))(v15, v14) == v8 && v16 == v9)
    {

LABEL_13:
      sub_1A9530910(*(v0 + 144), *(v0 + 112));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1A9530F54(0, *(v6 + 16) + 1, 1);
      }

      v22 = *(v6 + 16);
      v21 = *(v6 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1A9530F54(v21 > 1, v22 + 1, 1);
      }

      v23 = *(v0 + 112);
      *(v6 + 16) = v22 + 1;
      sub_1A9530910(v23, v6 + v10 + v22 * v11);
      goto LABEL_4;
    }

    v18 = *(v0 + 56);
    v19 = *(v0 + 64);
    v20 = sub_1A957D3E8();

    if (v20)
    {
      goto LABEL_13;
    }

    sub_1A95308B4(*(v0 + 144));
LABEL_4:
    ++v4;
    result = v12;
    if (v69 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1A9534184()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 152);
    v6 = *(v2 + 160);
    v7 = sub_1A9535028;
  }

  else
  {
    v7 = sub_1A95342B4;
    v5 = 0;
    v6 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A95342B4()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(*(v0 + 96) + 20);
  *(v0 + 212) = 4;
  sub_1A937829C(&qword_1EB388788, &qword_1A95996E8);
  sub_1A957C818();
  (*(v4 + 8))(v2, v3);
  *(v0 + 40) = 0;
  sub_1A957C828();
  v6 = *(v0 + 152);
  v7 = *(v0 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1A953439C, v6, v7);
}

uint64_t sub_1A953439C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 192) + 1;
  sub_1A95308B4(*(v0 + 120));
  if (v2 == v1)
  {
    v3 = *(v0 + 168);

    v4 = *(v0 + 48);
    v5 = *(*(v4 + 40) + 16);

    v47 = v5;
    if (v5)
    {
      v7 = 0;
      v46 = *(v0 + 136);
      v8 = *(v0 + 104);
      v45 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v7 >= *(result + 16))
        {
          __break(1u);
          return result;
        }

        v9 = *(v0 + 136);
        v10 = *(v0 + 56);
        v11 = *(v0 + 64);
        v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v13 = *(v8 + 72);
        v14 = result;
        sub_1A9530850(result + v12 + v13 * v7, v9);
        v15 = *v9;
        v16 = *(v46 + 8);
        ObjectType = swift_getObjectType();
        if ((*(v16 + 32))(ObjectType, v16) == v10 && v18 == v11)
        {
        }

        else
        {
          v20 = *(v0 + 56);
          v21 = *(v0 + 64);
          v22 = sub_1A957D3E8();

          if ((v22 & 1) == 0)
          {
            sub_1A9530910(*(v0 + 136), *(v0 + 128));
            v23 = v45;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1A9530F54(0, *(v45 + 16) + 1, 1);
              v23 = v45;
            }

            v25 = *(v23 + 16);
            v24 = *(v23 + 24);
            if (v25 >= v24 >> 1)
            {
              sub_1A9530F54(v24 > 1, v25 + 1, 1);
              v23 = v45;
            }

            v26 = *(v0 + 128);
            *(v23 + 16) = v25 + 1;
            v45 = v23;
            sub_1A9530910(v26, v23 + v12 + v25 * v13);
            goto LABEL_6;
          }
        }

        sub_1A95308B4(*(v0 + 136));
LABEL_6:
        ++v7;
        result = v14;
        if (v47 == v7)
        {
          v4 = *(v0 + 48);
          v36 = v45;
          goto LABEL_23;
        }
      }
    }

    v36 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v38 = *(v0 + 136);
    v37 = *(v0 + 144);
    v40 = *(v0 + 120);
    v39 = *(v0 + 128);
    v41 = *(v0 + 112);
    v42 = *(v0 + 88);

    v43 = *(v4 + 40);
    *(v4 + 40) = v36;

    sub_1A9526A64();

    v44 = *(v0 + 8);

    return v44();
  }

  else
  {
    v27 = *(v0 + 184);
    v28 = *(v0 + 192) + 1;
    *(v0 + 192) = v28;
    v29 = *(v0 + 120);
    sub_1A9530850(*(v0 + 168) + ((*(v0 + 208) + 32) & ~*(v0 + 208)) + v27 * v28, v29);
    v30 = *v29;
    v31 = v29[1];
    v32 = swift_getObjectType();
    v33 = *(v31 + 64);
    v48 = (v33 + *v33);
    v34 = v33[1];
    v35 = swift_task_alloc();
    *(v0 + 200) = v35;
    *v35 = v0;
    v35[1] = sub_1A9534184;

    return (v48)(0, 0, v32, v31);
  }
}

unint64_t sub_1A9534758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1A95348A0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1A9530A4C(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1A9534758(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1A9534960(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x1EEE6BDD0](v2, 40, 7);
}

uint64_t sub_1A95349B8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A9382328;

  return sub_1A952D400(v3, v4, v5, v2);
}

uint64_t sub_1A9534A4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A93836DC;

  return sub_1A952D66C();
}

uint64_t sub_1A9534ADC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return sub_1A9527050(v4, v5, v6, v2, v3);
}

uint64_t sub_1A9534B74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A9534BD8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTSSpeechQueue(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A9534C1C()
{
  v2 = *(sub_1A937829C(&qword_1EB386E38, &qword_1A9589CD8) - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A93836DC;

  return sub_1A952CAF8(v7, v8, v9, v4, v5, v6, v0 + v3);
}

uint64_t sub_1A9534D14()
{
  v2 = *(sub_1A937829C(&qword_1EB386E38, &qword_1A9589CD8) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A93836DC;

  return sub_1A952CE80(v4, v5, v0 + v3);
}

uint64_t sub_1A9534DFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A93836DC;

  return sub_1A952A3E8();
}

uint64_t sub_1A9534E8C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return sub_1A952C7E0(v4, v5, v6, v2);
}

uint64_t sub_1A9534F24(uint64_t a1)
{
  v3 = *(v1 + 16);
  v8 = *(v1 + 24);
  sub_1A937B960(v3, &qword_1EB388760, &qword_1A9599360);
  v4 = type metadata accessor for TTSSpeechQueue.QueueableWrapper(0);
  v5 = *(v4 + 20);
  v6 = sub_1A937829C(&qword_1EB388788, &qword_1A95996E8);
  (*(*(v6 - 8) + 16))(&v3[v5], a1, v6);
  *v3 = v8;
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);

  return swift_unknownObjectRetain();
}

uint64_t TTSMarkup.SayAs.context.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t TTSMarkup.SayAs.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 72))(v3);
}

{
  v7 = *(a3 + 72);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A9382328;

  return v11(v3, a2, a3);
}

uint64_t TTSMarkup.SayAs.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = SpeechContext.init<each A>(_:)(v43, 0, v43, &v39);
  v40 = 2574;
  v5 = *MEMORY[0x1E69E7D40] & *a1;
  memset(v41, 0, sizeof(v41));
  v42 = 0;
  v6 = (*(v5 + 256))(v4);
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_19;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v32 = a1;
  for (i = a2; v8; i = a2)
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    a2 = 40;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1AC585DE0](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v11 = *(v7 + 8 * v9 + 32);
      }

      a1 = v11;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_1A93D1250(&v34);

      if (v35)
      {
        sub_1A932D070(&v34, &v36);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1A93ADC90(0, v10[2] + 1, 1, v10);
        }

        v14 = v10[2];
        v13 = v10[3];
        a1 = (v14 + 1);
        if (v14 >= v13 >> 1)
        {
          v10 = sub_1A93ADC90((v13 > 1), v14 + 1, 1, v10);
        }

        v10[2] = a1;
        sub_1A932D070(&v36, &v10[5 * v14 + 4]);
      }

      else
      {
        sub_1A9383404(&v34);
      }

      ++v9;
      if (v12 == v8)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v8 = sub_1A957CE48();
    v32 = a1;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_21:

  v37 = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
  v38 = &protocol witness table for <A> [A];
  *&v36 = v10;
  v15 = sub_1A93A38D8(&v36, v41);
  v16 = *((*MEMORY[0x1E69E7D40] & *v32) + 0xE8);
  v17 = v16(v15);
  if (*(v17 + 16) && (v18 = sub_1A937A490(0x6572707265746E69, 0xEC00000073612D74), (v19 & 1) != 0))
  {
    v20 = (*(v17 + 56) + 16 * v18);
    v21 = *v20;
    v22 = v20[1];

    v23 = TTSMarkup.SayAs.Interpretation.init(rawValue:)(&v36);
    if (v36 != 14)
    {
      LOBYTE(v40) = v36;
    }
  }

  else
  {
  }

  v24 = v16(v23);
  if (*(v24 + 16))
  {
    v25 = sub_1A937A490(0x74616D726F66, 0xE600000000000000);
    v26 = i;
    if (v27)
    {
      v28 = (*(v24 + 56) + 16 * v25);
      v29 = *v28;
      v30 = v28[1];

      TTSMarkup.SayAs.Format.init(rawValue:)(&v36);

      if (v36 != 10)
      {
        HIBYTE(v40) = v36;
      }
    }

    else
    {
    }
  }

  else
  {

    v26 = i;
  }

  sub_1A94A86D0(&v39, v26);
  return sub_1A93B8E0C(&v39);
}

uint64_t TTSMarkup.SayAs.Interpretation.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1A957D158();

  v4 = 14;
  if (v2 < 0xE)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t TTSMarkup.SayAs.Format.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1A957D158();

  v4 = 10;
  if (v2 < 0xA)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1A953568C()
{
  result = 0x6574636172616863;
  switch(*v0)
  {
    case 1:
      result = 0x756F2D6C6C657073;
      break;
    case 2:
      result = 0x6C616E6964726163;
      break;
    case 3:
      result = 0x7265626D756ELL;
      break;
    case 4:
      result = 0x6C616E6964726FLL;
      break;
    case 5:
      result = 0x737469676964;
      break;
    case 6:
      result = 0x6E6F697463617266;
      break;
    case 7:
      result = 1953066613;
      break;
    case 8:
      result = 1702125924;
      break;
    case 9:
      result = 1701669236;
      break;
    case 0xA:
      result = 0x6E6F6870656C6574;
      break;
    case 0xB:
      result = 0x73736572646461;
      break;
    case 0xC:
      result = 0x63656A7265746E69;
      break;
    case 0xD:
      result = 0x766974656C707865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A95357F0(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = TTSMarkup.SayAs.Interpretation.description.getter();
  v4 = v3;
  if (v2 == TTSMarkup.SayAs.Interpretation.description.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1A957D3E8();
  }

  return v7 & 1;
}

uint64_t sub_1A953588C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7955565;
  v3 = a1;
  if (a1 > 4u)
  {
    v10 = 100;
    v11 = 109;
    if (a1 != 8)
    {
      v11 = 121;
    }

    if (a1 != 7)
    {
      v10 = v11;
    }

    v12 = 28025;
    if (a1 != 5)
    {
      v12 = 31085;
    }

    if (a1 <= 6u)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }

    if (v3 <= 6)
    {
      v9 = 0xE200000000000000;
    }

    else
    {
      v9 = 0xE100000000000000;
    }
  }

  else
  {
    v4 = 0xE300000000000000;
    v5 = 6581625;
    v6 = 25709;
    if (a1 != 3)
    {
      v6 = 28004;
    }

    if (a1 != 2)
    {
      v5 = v6;
      v4 = 0xE200000000000000;
    }

    v7 = 7957860;
    if (!a1)
    {
      v7 = 7955565;
    }

    if (a1 <= 1u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    if (v3 <= 1)
    {
      v9 = 0xE300000000000000;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      v13 = 0xE200000000000000;
      if (a2 == 5)
      {
        if (v8 != 28025)
        {
          goto LABEL_55;
        }
      }

      else if (v8 != 31085)
      {
LABEL_55:
        v14 = sub_1A957D3E8();
        goto LABEL_56;
      }
    }

    else
    {
      v13 = 0xE100000000000000;
      if (a2 == 7)
      {
        if (v8 != 100)
        {
          goto LABEL_55;
        }
      }

      else if (a2 == 8)
      {
        if (v8 != 109)
        {
          goto LABEL_55;
        }
      }

      else if (v8 != 121)
      {
        goto LABEL_55;
      }
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v2 = 7957860;
    }

    v13 = 0xE300000000000000;
    if (v8 != v2)
    {
      goto LABEL_55;
    }
  }

  else if (a2 == 2)
  {
    v13 = 0xE300000000000000;
    if (v8 != 6581625)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v13 = 0xE200000000000000;
    if (a2 == 3)
    {
      if (v8 != 25709)
      {
        goto LABEL_55;
      }
    }

    else if (v8 != 28004)
    {
      goto LABEL_55;
    }
  }

  if (v9 != v13)
  {
    goto LABEL_55;
  }

  v14 = 1;
LABEL_56:

  return v14 & 1;
}

uint64_t sub_1A9535A9C()
{
  v1 = *v0;
  v2 = sub_1A957D4F8();
  TTSMarkup.SayAs.Interpretation.description.getter(v2);
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A9535B04(uint64_t a1)
{
  v3 = *v1;
  TTSMarkup.SayAs.Interpretation.description.getter(a1);
  sub_1A957C228();
}

uint64_t sub_1A9535B68()
{
  sub_1A957C228();
}

uint64_t sub_1A9535C68()
{
  v1 = *v0;
  v2 = sub_1A957D4F8();
  TTSMarkup.SayAs.Interpretation.description.getter(v2);
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A9535CCC@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return TTSMarkup.SayAs.Interpretation.init(rawValue:)(a1);
}

uint64_t sub_1A9535CD8@<X0>(uint64_t *a1@<X8>)
{
  result = TTSMarkup.SayAs.Interpretation.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A9535D08()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 100;
    v7 = 109;
    if (v1 != 8)
    {
      v7 = 121;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 28025;
    if (v1 != 5)
    {
      v8 = 31085;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 7955565;
    v3 = 6581625;
    v4 = 25709;
    if (v1 != 3)
    {
      v4 = 28004;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 7957860;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1A9535DE0()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A9535B68();
  return sub_1A957D548();
}

uint64_t sub_1A9535E30()
{
  v1 = *v0;
  sub_1A957D4F8();
  sub_1A9535B68();
  return sub_1A957D548();
}

uint64_t sub_1A9535E74@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return TTSMarkup.SayAs.Format.init(rawValue:)(a1);
}

uint64_t sub_1A9535E80@<X0>(uint64_t *a1@<X8>)
{
  result = TTSMarkup.SayAs.Format.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TTSMarkup.SayAs.init(interpretation:_:speech:)@<X0>(char *a1@<X0>, char *a2@<X1>, void (*a3)(void *__return_ptr, uint64_t)@<X2>, void *a4@<X8>)
{
  v5 = a4;
  v6 = *a1;
  v7 = *a2;
  v8 = SpeechContext.init<each A>(_:)(v11, 0, v11, a4);
  *(v5 + 16) = 0u;
  v5 += 16;
  *(v5 + 32) = 0;
  *(v5 + 16) = 0u;
  *(v5 - 8) = v6;
  *(v5 - 7) = v7;
  a3(v10, v8);
  return sub_1A93A38D8(v10, v5);
}

uint64_t TTSMarkup.SayAs.init(format:speech:)@<X0>(char *a1@<X0>, void (*a2)(void *__return_ptr, uint64_t)@<X1>, void *a3@<X8>)
{
  v4 = a3;
  v5 = *a1;
  v6 = SpeechContext.init<each A>(_:)(v9, 0, v9, a3);
  *(v4 + 16) = 0u;
  v4 += 16;
  *(v4 - 8) = 14;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  *(v4 - 7) = v5;
  a2(v8, v6);
  return sub_1A93A38D8(v8, v4);
}

uint64_t TTSMarkup.SayAs.init(interpretation:speech:)@<X0>(char *a1@<X0>, void (*a2)(void *__return_ptr, uint64_t)@<X1>, void *a3@<X8>)
{
  v4 = a3;
  v5 = *a1;
  v6 = SpeechContext.init<each A>(_:)(v9, 0, v9, a3);
  *(v4 + 16) = 0u;
  v4 += 16;
  *(v4 - 7) = 10;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  *(v4 - 8) = v5;
  a2(v8, v6);
  return sub_1A93A38D8(v8, v4);
}

uint64_t TTSMarkup.SayAs.attributes.getter(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  if (*(v1 + 8) != 14)
  {
    v18 = *(v1 + 8);
    v3 = TTSMarkup.SayAs.Interpretation.description.getter(a1);
    v5 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A938126C(v3, v5, 0x6572707265746E69, 0xEC00000073612D74, isUniquelyReferenced_nonNull_native);
  }

  v7 = *(v1 + 9);
  if (v7 <= 4)
  {
    v12 = 7955565;
    v13 = 0xE300000000000000;
    v14 = 6581625;
    v15 = 25709;
    if (v7 != 3)
    {
      v15 = 28004;
    }

    if (v7 != 2)
    {
      v14 = v15;
      v13 = 0xE200000000000000;
    }

    if (*(v1 + 9))
    {
      v12 = 7957860;
    }

    if (*(v1 + 9) <= 1u)
    {
      v10 = v12;
    }

    else
    {
      v10 = v14;
    }

    if (*(v1 + 9) <= 1u)
    {
      v11 = 0xE300000000000000;
    }

    else
    {
      v11 = v13;
    }
  }

  else if (*(v1 + 9) > 7u)
  {
    if (v7 == 8)
    {
      v11 = 0xE100000000000000;
      v10 = 109;
    }

    else
    {
      if (v7 != 9)
      {
        return v2;
      }

      v11 = 0xE100000000000000;
      v10 = 121;
    }
  }

  else
  {
    v8 = 0xE200000000000000;
    v9 = 31085;
    if (v7 != 6)
    {
      v9 = 100;
      v8 = 0xE100000000000000;
    }

    if (v7 == 5)
    {
      v10 = 28025;
    }

    else
    {
      v10 = v9;
    }

    if (v7 == 5)
    {
      v11 = 0xE200000000000000;
    }

    else
    {
      v11 = v8;
    }
  }

  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A938126C(v10, v11, 0x74616D726F66, 0xE600000000000000, v16);
  return v2;
}

uint64_t sub_1A9536270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkup.SayAs.accept<A>(_:)(a1, a2, a3);
}

unint64_t sub_1A9536324()
{
  result = qword_1EB3887D0;
  if (!qword_1EB3887D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3887D0);
  }

  return result;
}

unint64_t sub_1A953637C()
{
  result = qword_1EB3887D8;
  if (!qword_1EB3887D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3887D8);
  }

  return result;
}

uint64_t sub_1A95363D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1A9536418(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s5SayAsV14InterpretationOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5SayAsV14InterpretationOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s5SayAsV6FormatOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5SayAsV6FormatOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t TTSMarkup.Pause.context.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t TTSMarkup.Pause.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 2);
  v5 = *(v3 + 12);
  v6 = *(v3 + 13);
  v7 = v3[2];
  v8 = v3[3];
  v10 = *v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  return (*(a3 + 24))(&v10);
}

{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A9382328;

  return v11(v3, a2, a3);
}

void TTSMarkup.Pause.init(_:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = SpeechContext.init<each A>(_:)(v54, 0, v54, &v48);
  v49 = 0.0;
  v50 = 1537;
  v51 = 0;
  v52 = 0xE000000000000000;
  v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xE8);
  v6 = v5(v4);
  if (*(v6 + 16))
  {
    v7 = sub_1A937A490(1701669236, 0xE400000000000000);
    if (v8)
    {
      v9 = (*(v6 + 56) + 16 * v7);
      v11 = *v9;
      v10 = v9[1];

      v51 = v11;
      v52 = v10;
      v12 = MEMORY[0x1E696AE70];

      v13 = objc_allocWithZone(v12);
      v14 = sub_1A943639C(0xD000000000000031, 0x80000001A95C51F0, 1);
      if (!v14)
      {
        goto LABEL_4;
      }

      v25 = v14;
      v26 = sub_1A957C0C8();
      v27 = [v25 firstMatchInString:v26 options:0 range:{0, MEMORY[0x1AC5851E0](v11, v10)}];

      if (!v27)
      {
        goto LABEL_38;
      }

      v28 = sub_1A957C0C8();
      [v27 rangeWithName_];

      sub_1A957CA08();
      if (v29 & 1) != 0 || (v30 = sub_1A957C0C8(), [v27 rangeWithName_], v30, sub_1A957CA08(), (v31))
      {

        goto LABEL_4;
      }

      v35 = sub_1A957C3B8();
      v46 = MEMORY[0x1AC585090](v35);
      v47 = v36;

      v37 = sub_1A957C3B8();
      v38 = MEMORY[0x1AC585090](v37);
      v40 = v39;

      v41 = v38 == 115 && v40 == 0xE100000000000000;
      if (v41 || (sub_1A957D3E8() & 1) != 0)
      {

        v53[0] = 0.0;
        v42 = sub_1A94F3B24(v46, v47);

        if (v42)
        {
          v15 = v53[0];
        }

        else
        {
          v15 = 0.0;
        }

        v16 = !v42;
        goto LABEL_5;
      }

      if (v38 == 29549 && v40 == 0xE200000000000000)
      {
      }

      else
      {
        v44 = sub_1A957D3E8();

        if ((v44 & 1) == 0)
        {

LABEL_38:
          goto LABEL_4;
        }
      }

      v53[0] = 0.0;
      v45 = sub_1A94F3B24(v46, v47);

      if (v45)
      {
        v16 = 0;
        v15 = v53[0] / 1000.0;
LABEL_5:

        if (v16)
        {
          v15 = v49;
          v17 = 0x100000000;
          if (!v50)
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }

        goto LABEL_22;
      }

LABEL_4:
      v15 = 0.0;
      v16 = 1;
      goto LABEL_5;
    }
  }

  v19 = v5(v18);
  if (*(v19 + 16) && (v20 = sub_1A937A490(0x6874676E65727473, 0xE800000000000000), (v21 & 1) != 0))
  {
    v22 = (*(v19 + 56) + 16 * v20);
    v23 = *v22;
    v24 = v22[1];

    TTSMarkup.Pause.Strength.init(rawValue:)(v23, v24, v53);

    v15 = 0.0;
    if (LOBYTE(v53[0]) != 6)
    {
      HIBYTE(v50) = LOBYTE(v53[0]);
    }

    v17 = 0x100000000;
  }

  else
  {

    v17 = 0;
    HIBYTE(v50) = 0;
    v15 = 0.325;
  }

LABEL_22:
  v32 = v51;
  v33 = v52;
  v34 = v17 | LODWORD(v15) | (HIBYTE(v50) << 40);
  *a2 = v48;
  a2[1] = v34;
  a2[2] = v32;
  a2[3] = v33;
}

uint64_t TTSMarkup.Pause.Strength.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B6165772D78 && a2 == 0xE600000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 1;
  }

  else if (a1 == 1801545079 && a2 == 0xE400000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 2;
  }

  else if (a1 == 0x6D756964656DLL && a2 == 0xE600000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 3;
  }

  else if (a1 == 0x676E6F727473 && a2 == 0xE600000000000000 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 4;
  }

  else if (a1 == 0x676E6F7274732D78 && a2 == 0xE800000000000000)
  {

    v8 = 5;
  }

  else
  {
    v9 = sub_1A957D3E8();

    if (v9)
    {
      v8 = 5;
    }

    else
    {
      v8 = 6;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t TTSMarkup.Pause.Strength.description.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x6D756964656DLL;
  v4 = 0x676E6F727473;
  if (v1 != 4)
  {
    v4 = 0x676E6F7274732D78;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6B6165772D78;
  if (v1 != 1)
  {
    v5 = 1801545079;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A9537080(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x6D756964656DLL;
  v6 = 0xE600000000000000;
  v7 = 0x676E6F727473;
  if (a1 != 4)
  {
    v7 = 0x676E6F7274732D78;
    v6 = 0xE800000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x6B6165772D78;
  if (a1 != 1)
  {
    v9 = 1801545079;
    v8 = 0xE400000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6D756964656DLL)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x676E6F727473)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x676E6F7274732D78)
      {
LABEL_34:
        v13 = sub_1A957D3E8();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6B6165772D78)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1801545079)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1701736302)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1A9537240()
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

uint64_t sub_1A953732C()
{
  *v0;
  *v0;
  *v0;
  sub_1A957C228();
}

uint64_t sub_1A9537408()
{
  sub_1A957D4F8();
  sub_1A957C228();

  return sub_1A957D548();
}

void sub_1A95374FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xE600000000000000;
  v6 = 0x6D756964656DLL;
  v7 = 0xE600000000000000;
  v8 = 0x676E6F727473;
  if (v2 != 4)
  {
    v8 = 0x676E6F7274732D78;
    v7 = 0xE800000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6B6165772D78;
  if (v2 != 1)
  {
    v10 = 1801545079;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1A95375A0()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x6D756964656DLL;
  v4 = 0x676E6F727473;
  if (v1 != 4)
  {
    v4 = 0x676E6F7274732D78;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6B6165772D78;
  if (v1 != 1)
  {
    v5 = 1801545079;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t TTSMarkup.Pause.attributes.getter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A9587160;
    *(inited + 32) = 1701669236;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v2;
    *(inited + 56) = v1;

    v5 = sub_1A9381740(inited);
    swift_setDeallocating();
    v6 = inited + 32;
LABEL_26:
    sub_1A9537B00(v6);
    return v5;
  }

  if ((*(v0 + 12) & 1) == 0)
  {
    v12 = *(v0 + 8);
    sub_1A957C898();
    v13 = fabsf(v12);
    if (v13 >= 1.0)
    {
      v14 = 115;
    }

    else
    {
      v14 = 29549;
    }

    if (v13 >= 1.0)
    {
      v15 = 0xE100000000000000;
    }

    else
    {
      v15 = 0xE200000000000000;
    }

    MEMORY[0x1AC585140](v14, v15);

    sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_1A9587160;
    *(v16 + 32) = 1701669236;
    v17 = v16 + 32;
    *(v16 + 40) = 0xE400000000000000;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0xE000000000000000;
    v5 = sub_1A9381740(v16);
    swift_setDeallocating();
    v6 = v17;
    goto LABEL_26;
  }

  v7 = *(v0 + 13);
  if (v7 != 6)
  {
    sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_1A9587160;
    *(v8 + 32) = 0x6874676E65727473;
    v9 = v8 + 32;
    v10 = 0xE800000000000000;
    *(v8 + 40) = 0xE800000000000000;
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        v10 = 0xE600000000000000;
        v11 = 0x6D756964656DLL;
      }

      else if (v7 == 4)
      {
        v10 = 0xE600000000000000;
        v11 = 0x676E6F727473;
      }

      else
      {
        v11 = 0x676E6F7274732D78;
      }
    }

    else if (v7)
    {
      if (v7 == 1)
      {
        v10 = 0xE600000000000000;
        v11 = 0x6B6165772D78;
      }

      else
      {
        v10 = 0xE400000000000000;
        v11 = 1801545079;
      }
    }

    else
    {
      v10 = 0xE400000000000000;
      v11 = 1701736302;
    }

    *(v8 + 48) = v11;
    *(v8 + 56) = v10;
    v5 = sub_1A9381740(v8);
    swift_setDeallocating();
    v6 = v9;
    goto LABEL_26;
  }

  result = sub_1A957D0A8();
  __break(1u);
  return result;
}

uint64_t TTSMarkup.Pause.init(seconds:)@<X0>(uint64_t a1@<X8>, float a2@<S0>)
{
  result = SpeechContext.init<each A>(_:)(v5, 0, v5, a1);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 8) = a2;
  *(a1 + 12) = 1536;
  return result;
}

uint64_t TTSMarkup.Pause.init(strength:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = SpeechContext.init<each A>(_:)(v5, 0, v5, a2);
  *(a2 + 8) = 0;
  *(a2 + 12) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 13) = v3;
  return result;
}

double sub_1A95379EC()
{
  if (*(v0 + 12))
  {
    return dbl_1A9599BF8[*(v0 + 13)];
  }

  else
  {
    return *(v0 + 8);
  }
}

uint64_t sub_1A9537A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkup.Pause.accept<A>(_:)(a1, a2, a3);
}

uint64_t sub_1A9537B00(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB3868E0, &qword_1A95885D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A9537B6C()
{
  result = qword_1EB3887E0;
  if (!qword_1EB3887E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3887E0);
  }

  return result;
}

uint64_t Dictionary<>.authoritative.getter(uint64_t a1)
{
  v227 = MEMORY[0x1E69E7CC8];
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v205 = v5;
  while (v4)
  {
    v7 = a1;
LABEL_11:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    memcpy(__dst, (*(v7 + 56) + 280 * (v9 | (v6 << 6))), sizeof(__dst));
    if (!LOBYTE(__dst[15]))
    {
LABEL_19:
      v12 = sub_1A957C1A8();
      v14 = v16;
      v223[0] = 0x5F697269735FLL;
      v15 = 0xE600000000000000;
      goto LABEL_20;
    }

    if (LOBYTE(__dst[15]) != 1)
    {
      v10 = __dst[12] | __dst[13] | __dst[14];
      if (v10 | __dst[9] | __dst[11] | __dst[10])
      {
        v11 = v10 | __dst[11] | __dst[10];
        if (__dst[9] != 1 || v11)
        {
          if (__dst[9] == 2 && !v11)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v12 = sub_1A957C1A8();
          v14 = v13;
          v223[0] = 0x65636E657265635FLL;
          v15 = 0xE90000000000005FLL;
LABEL_20:
          v223[1] = v15;
          sub_1A937B3DC(__dst, v225);
          MEMORY[0x1AC585140](v12, v14);

          v18 = v223[0];
          v17 = v223[1];
          v19 = v227;
          if (*(v227 + 16) && (v20 = sub_1A937A490(v223[0], v223[1]), (v21 & 1) != 0))
          {
            v22 = (v19[7] + 48 * v20);
            v209 = *v22;
            v211 = v22[1];
            v23 = v22[2];
            v214 = v22[3];
            v25 = v22[4];
            v24 = v22[5];

            v213 = v23;

            v217 = v25;
          }

          else
          {
            v26 = MEMORY[0x1E69E7CC0];
            v223[0] = MEMORY[0x1E69E7CC0];
            sub_1A9387410();

            sub_1A937829C(&unk_1EB388360, qword_1A958B690);
            sub_1A93B0F54();
            sub_1A957CE08();
            v24 = MEMORY[0x1E69E7CC8];
            v214 = *v225;
            v217 = MEMORY[0x1E69E7CC8];
            v211 = v17;
            v213 = v26;
            v209 = v18;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v225 = v19;
          v220 = v17;
          v29 = sub_1A937A490(v18, v17);
          v30 = v19[2];
          v31 = (v28 & 1) == 0;
          v32 = v30 + v31;
          if (__OFADD__(v30, v31))
          {
            goto LABEL_166;
          }

          v33 = v28;
          if (v19[3] >= v32)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1A953ABFC();
              v19 = *v225;
            }
          }

          else
          {
            sub_1A953A370(v32, isUniquelyReferenced_nonNull_native);
            v19 = *v225;
            v34 = sub_1A937A490(v18, v220);
            if ((v33 & 1) != (v35 & 1))
            {
              goto LABEL_168;
            }

            v29 = v34;
          }

          if (v33)
          {
            v36 = (v19[7] + 48 * v29);
            v37 = v36[1];
            v38 = v36[2];
            v39 = v36[4];
            v40 = v36[5];
            *v36 = v209;
            v36[1] = v211;
            v36[2] = v213;
            v36[3] = v214;
            v36[4] = v217;
            v36[5] = v24;

            v41 = v220;
          }

          else
          {
            v19[(v29 >> 6) + 8] |= 1 << v29;
            v42 = (v19[6] + 16 * v29);
            v41 = v220;
            *v42 = v18;
            v42[1] = v220;
            v43 = (v19[7] + 48 * v29);
            *v43 = v209;
            v43[1] = v211;
            v43[2] = v213;
            v43[3] = v214;
            v43[4] = v217;
            v43[5] = v24;
            v44 = v19[2];
            v45 = __OFADD__(v44, 1);
            v46 = v44 + 1;
            if (v45)
            {
              goto LABEL_167;
            }

            v19[2] = v46;
          }

          v227 = v19;
          v47 = sub_1A9539418(v224, v18, v41);
          if (v48[1])
          {
            v49 = v48;
            v215 = v47;
            v218 = __dst[7];
            v50 = __dst[8];
            *v225 = *&__dst[9];
            *&v225[16] = *&__dst[11];
            *&v225[32] = *&__dst[13];
            v225[48] = __dst[15];
            v51 = sub_1A957C1A8();
            v53 = v52;
            v54 = v49[2];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v54 = sub_1A93AC2AC(0, *(v54 + 2) + 1, 1, v54);
            }

            v56 = *(v54 + 2);
            v55 = *(v54 + 3);
            if (v56 >= v55 >> 1)
            {
              v54 = sub_1A93AC2AC((v55 > 1), v56 + 1, 1, v54);
            }

            *(v54 + 2) = v56 + 1;
            v57 = &v54[16 * v56];
            *(v57 + 4) = v51;
            *(v57 + 5) = v53;
            v49[2] = v54;
            v223[0] = v50;
            sub_1A93FC780();
            sub_1A957C438();
            sub_1A957C438();
            v222[0] = v229 | v228;
            sub_1A93FC7D4();
            sub_1A957D5D8();
            sub_1A937829C(&qword_1EB388390, &qword_1A9588580);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1A9587160;
            *(inited + 32) = sub_1A957C1A8();
            *(inited + 40) = v59;
            v60 = v49[4];
            if (v60[2])
            {
              v61 = sub_1A9539778(v218);
              if (v62)
              {
                v63 = *(v60[7] + 8 * v61);
              }

              else
              {
                v64 = MEMORY[0x1E69E7CD0];
              }
            }

            else
            {
              v64 = MEMORY[0x1E69E7CD0];
            }

            v223[0] = inited;
            sub_1A953BD30(v64);
            v65 = sub_1A93AD200(v223[0]);

            v66 = v49[4];
            v67 = swift_isUniquelyReferenced_nonNull_native();
            v223[0] = v49[4];
            sub_1A953AF3C(v65, v218, v67);
            v49[4] = v223[0];
            v68 = swift_initStackObject();
            *(v68 + 16) = xmmword_1A9587160;
            *(v68 + 32) = sub_1A957C1A8();
            *(v68 + 40) = v69;
            v70 = v49[5];
            if (v70[2])
            {
              sub_1A93B7280(v225, v223);
              v71 = sub_1A9489FA8(v225);
              v72 = MEMORY[0x1E69E7CD0];
              if (v73)
              {
                v74 = *(v70[7] + 8 * v71);
              }
            }

            else
            {
              sub_1A93B7280(v225, v223);
              v72 = MEMORY[0x1E69E7CD0];
            }

            v223[0] = v68;
            sub_1A953BD30(v72);
            v75 = sub_1A93AD200(v223[0]);

            v76 = v49[5];
            v77 = swift_isUniquelyReferenced_nonNull_native();
            v223[0] = v49[5];
            sub_1A953ADBC(v75, v225, v77);
            sub_1A953C0C8(v225);
            v49[5] = v223[0];
            v215(v224, 0);

            sub_1A937B48C(__dst);
          }

          else
          {
            (v47)(v224, 0);
            sub_1A937B48C(__dst);
          }

          v5 = v205;
        }
      }
    }
  }

  v7 = a1;
  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_162;
    }

    if (v8 >= v5)
    {
      break;
    }

    v4 = *(v1 + 8 * v8);
    ++v6;
    if (v4)
    {
      v6 = v8;
      goto LABEL_11;
    }
  }

  v78 = *(v227 + 64);
  v228 = a1;
  v202 = v227;
  v79 = 1 << *(v227 + 32);
  if (v79 < 64)
  {
    v80 = ~(-1 << v79);
  }

  else
  {
    v80 = -1;
  }

  v206 = v80 & v78;
  v203 = (v79 + 63) >> 6;
  v81 = (v227 + 64);

  v82 = 0;
  v201 = v81;
  while (1)
  {
LABEL_57:
    v83 = v206;
    if (v206)
    {
      v84 = v82;
    }

    else
    {
      do
      {
        v84 = v82 + 1;
        if (__OFADD__(v82, 1))
        {
          goto LABEL_163;
        }

        if (v84 >= v203)
        {

          return v228;
        }

        v83 = v81[v84];
        ++v82;
      }

      while (!v83);
    }

    v206 = (v83 - 1) & v83;
    v85 = (*(v202 + 56) + 48 * (__clz(__rbit64(v83)) | (v84 << 6)));
    v86 = v85[2];
    v204 = v85[3];
    v88 = v85[4];
    v87 = v85[5];
    swift_bridgeObjectRetain_n();

    v89 = sub_1A95392D8(v87);
    v221 = *(v86 + 16);
    if (v221)
    {
      break;
    }

    v82 = v84;
  }

  v90 = 0;
  v216 = v88;
  v219 = v86 + 32;
  v208 = v89;
  v210 = v89 + 56;
  v212 = v86;
  while (2)
  {
    if (v90 < *(v86 + 16))
    {
      v91 = v228;
      if (!v228[2])
      {
        goto LABEL_65;
      }

      v92 = (v219 + 16 * v90);
      v93 = *v92;
      v94 = v92[1];

      v95 = sub_1A937A490(v93, v94);
      if ((v96 & 1) == 0)
      {

        goto LABEL_65;
      }

      memcpy(__dst, (v91[7] + 280 * v95), sizeof(__dst));
      v223[0] = MEMORY[0x1E69E7CC0];
      sub_1A937B3DC(__dst, v225);
      sub_1A9387410();
      sub_1A937829C(&unk_1EB388360, qword_1A958B690);
      sub_1A93B0F54();
      sub_1A957CE08();
      if (LOBYTE(__dst[15]))
      {
        if (LOBYTE(__dst[15]) != 2)
        {
          goto LABEL_127;
        }

        v97 = vorrq_s8(*&__dst[11], *&__dst[13]);
        v98 = *&vorr_s8(*v97.i8, *&vextq_s8(v97, v97, 8uLL)) | __dst[10];
        if (__dst[9] == 1 && !v98)
        {
          v99 = __dst[7];
          LOBYTE(v222[0]) = __dst[7];
          LOBYTE(v229) = 2;
          sub_1A93B1148();
          sub_1A957C438();
          sub_1A957C438();
          if (*v225 == v223[0] && *&v225[8] == v223[1])
          {

            goto LABEL_96;
          }

          v129 = sub_1A957D3E8();

          if (v129)
          {
LABEL_96:
            if (*(v216 + 16))
            {
              sub_1A9539778(1u);
              if (v130)
              {
                *v225 = *sub_1A9493D14();
                v222[0] = v224[0];
                sub_1A957CD98();
                sub_1A93B1F40();
                if ((sub_1A957C098() & 1) == 0)
                {
                  v222[0] = *v225;
                  sub_1A957CDD8();
                }
              }
            }
          }

          v131 = sub_1A9493C3C();
          *v225 = *v131;
          v223[0] = v204;
          if (sub_1A957CD88())
          {
            *v225 = *sub_1A9493CB4();
            v222[0] = v224[0];
            sub_1A957CD98();
            sub_1A93B1F40();
            if ((sub_1A957C098() & 1) == 0)
            {
              v222[0] = *v225;
              sub_1A957CDD8();
            }

            LOBYTE(v222[0]) = v99;
            LOBYTE(v229) = 2;
            sub_1A957C438();
            sub_1A957C438();
            if (*v225 == v223[0] && *&v225[8] == v223[1])
            {

              goto LABEL_113;
            }

            v145 = sub_1A957D3E8();

            if (v145)
            {
LABEL_113:
              *v225 = *v131;
              v222[0] = v224[0];
              sub_1A957CD98();
              if (sub_1A957C098())
              {
                goto LABEL_127;
              }

LABEL_126:
              v222[0] = *v225;
              sub_1A957CDD8();
            }
          }

LABEL_127:
          v159 = sub_1A9485504(v223, v93, v94);
          memmove(v225, v160, 0x118uLL);
          if (sub_1A932D058(v225) != 1)
          {
            v222[0] = v224[0];
            sub_1A93FC780();
            sub_1A957C438();
            sub_1A957C438();
            v229 = v223[35] | v227;
            sub_1A93FC7D4();
            sub_1A957D5D8();
          }

          (v159)(v223, 0);

          LOBYTE(v229) = __dst[7];
          LOBYTE(v227) = 1;
          sub_1A93B1148();
          sub_1A957C438();
          sub_1A957C438();
          if (v223[0] == v222[0] && v223[1] == v222[1])
          {

LABEL_133:
            if (*(v216 + 16))
            {
              v162 = sub_1A9539778(2u);
              if (v163)
              {
                v164 = *(*(v216 + 56) + 8 * v162);
                v165 = -1 << *(v164 + 32);

                v166 = sub_1A957CE18();
                if (v166 == 1 << *(v164 + 32) || (v167 = sub_1A953BFEC(v166, *(v164 + 36), 0, v164), v169 = v168, , , !*(a1 + 16)))
                {
                }

                else
                {
                  v170 = sub_1A937A490(v167, v169);
                  v172 = v171;

                  if (v172)
                  {
                    memcpy(v223, (*(a1 + 56) + 280 * v170), 0x118uLL);
                    v173 = v223[8];
                    sub_1A937B3DC(v223, v222);
                    v222[0] = *sub_1A9493C84();
                    v229 = v173;
                    if (sub_1A957CD88())
                    {
                      v174 = TTSSpeechUnitTestingMode();
                      sub_1A937B48C(v223);
                      if ((v174 & 1) == 0)
                      {
                        goto LABEL_141;
                      }
                    }

                    else
                    {
                      sub_1A937B48C(v223);
                    }
                  }
                }
              }
            }

            memcpy(v223, __dst, 0x118uLL);
            CoreSynthesizer.Voice.cannonicId.getter();
            v175 = sub_1A957C1A8();
            v177 = v176;

            sub_1A937B3DC(__dst, v223);
            v178 = v228;
            v179 = swift_isUniquelyReferenced_nonNull_native();
            v222[0] = v178;
            v180 = sub_1A937A490(v175, v177);
            v182 = v178[2];
            v183 = (v181 & 1) == 0;
            v45 = __OFADD__(v182, v183);
            v184 = v182 + v183;
            if (v45)
            {
              goto LABEL_164;
            }

            v185 = v181;
            if (v178[3] >= v184)
            {
              if (v179)
              {
                goto LABEL_149;
              }

              v195 = v180;
              sub_1A93ED3EC();
              v180 = v195;
              if ((v185 & 1) == 0)
              {
                goto LABEL_156;
              }

LABEL_150:
              v187 = v180;

              v188 = v222[0];
              v189 = (*(v222[0] + 56) + 280 * v187);
              memcpy(v223, v189, 0x118uLL);
              memcpy(v189, __dst, 0x118uLL);
              sub_1A937B48C(v223);
              sub_1A937B48C(__dst);
              v228 = v188;
            }

            else
            {
              sub_1A93EBE70(v184, v179);
              v180 = sub_1A937A490(v175, v177);
              if ((v185 & 1) != (v186 & 1))
              {
                goto LABEL_168;
              }

LABEL_149:
              if (v185)
              {
                goto LABEL_150;
              }

LABEL_156:
              v196 = v222[0];
              *(v222[0] + 8 * (v180 >> 6) + 64) |= 1 << v180;
              v197 = (v196[6] + 16 * v180);
              *v197 = v175;
              v197[1] = v177;
              memcpy((v196[7] + 280 * v180), __dst, 0x118uLL);
              sub_1A937B48C(__dst);
              v198 = v196[2];
              v45 = __OFADD__(v198, 1);
              v199 = v198 + 1;
              if (v45)
              {
                goto LABEL_165;
              }

              v196[2] = v199;
              v228 = v196;
            }
          }

          else
          {
            v161 = sub_1A957D3E8();

            if (v161)
            {
              goto LABEL_133;
            }

LABEL_141:
            sub_1A937B48C(__dst);
          }

          v86 = v212;
LABEL_65:
          if (++v90 == v221)
          {

            v82 = v84;
            v81 = v201;
            goto LABEL_57;
          }

          continue;
        }

        if (__dst[9] != 2)
        {
          goto LABEL_127;
        }

        if (v98)
        {
          goto LABEL_127;
        }

        v113 = sub_1A95397E0(&unk_1F1CFD908, v208);
        swift_arrayDestroy();
        v114 = *(v113 + 16);

        if (!v114)
        {
          goto LABEL_127;
        }

        v115 = sub_1A9493CFC();
      }

      else if (LOBYTE(__dst[9]))
      {
        if (LOBYTE(__dst[9]) != 1)
        {
          if (LOBYTE(__dst[9]) == 2)
          {
            *v225 = 3;
            memset(&v225[8], 0, 41);
            if (*(v208 + 16))
            {
              v100 = *(v208 + 40);
              sub_1A948C16C();
              v101 = sub_1A957C058();
              v102 = -1 << *(v208 + 32);
              v103 = v101 & ~v102;
              if ((*(v210 + ((v103 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v103))
              {
                v104 = ~v102;
                while (1)
                {
                  v105 = *(v208 + 48) + 56 * v103;
                  v106 = *(v105 + 8);
                  v107 = *(v105 + 16);
                  v108 = *(v105 + 24);
                  v109 = *(v105 + 32);
                  v110 = *(v105 + 40);
                  v111 = *(v105 + 48);
                  v223[0] = *v105;
                  v223[1] = v106;
                  v223[2] = v107;
                  v223[3] = v108;
                  v223[4] = v109;
                  v223[5] = v110;
                  LOBYTE(v223[6]) = v111;
                  sub_1A93B10F0(v223[0], v106, v107, v108, v109, v110, v111);
                  sub_1A93B72DC();
                  v112 = sub_1A957C098();
                  sub_1A93B183C(v223[0], v223[1], v223[2], v223[3], v223[4], v223[5], v223[6]);
                  if (v112)
                  {
                    break;
                  }

                  v103 = (v103 + 1) & v104;
                  if (((*(v210 + ((v103 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v103) & 1) == 0)
                  {
                    goto LABEL_127;
                  }
                }

                v190 = sub_1A937A490(v93, v94);
                if (v191)
                {
                  v192 = v190;
                  v193 = swift_isUniquelyReferenced_nonNull_native();
                  v223[0] = v91;
                  if (!v193)
                  {
                    sub_1A93ED3EC();
                    v91 = v223[0];
                  }

                  v194 = *(v91[6] + 16 * v192 + 8);

                  memcpy(v225, (v91[7] + 280 * v192), sizeof(v225));
                  sub_1A937B48C(v225);
                  sub_1A948A5EC(v192, v91);
                  v228 = v91;
                }
              }
            }
          }

          goto LABEL_127;
        }

        *v225 = 4;
        memset(&v225[8], 0, 41);
        if (!*(v208 + 16))
        {
          goto LABEL_127;
        }

        v116 = *(v208 + 40);
        sub_1A948C16C();
        v117 = sub_1A957C058();
        v118 = -1 << *(v208 + 32);
        v119 = v117 & ~v118;
        if (((*(v210 + ((v119 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v119) & 1) == 0)
        {
          goto LABEL_127;
        }

        v120 = ~v118;
        while (1)
        {
          v121 = *(v208 + 48) + 56 * v119;
          v122 = *(v121 + 8);
          v123 = *(v121 + 16);
          v124 = *(v121 + 24);
          v125 = *(v121 + 32);
          v126 = *(v121 + 40);
          v127 = *(v121 + 48);
          v223[0] = *v121;
          v223[1] = v122;
          v223[2] = v123;
          v223[3] = v124;
          v223[4] = v125;
          v223[5] = v126;
          LOBYTE(v223[6]) = v127;
          sub_1A93B10F0(v223[0], v122, v123, v124, v125, v126, v127);
          sub_1A93B72DC();
          v128 = sub_1A957C098();
          sub_1A93B183C(v223[0], v223[1], v223[2], v223[3], v223[4], v223[5], v223[6]);
          if (v128)
          {
            break;
          }

          v119 = (v119 + 1) & v120;
          if (((*(v210 + ((v119 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v119) & 1) == 0)
          {
            goto LABEL_127;
          }
        }

        v115 = sub_1A9493D74();
      }

      else
      {
        *v225 = 1;
        memset(&v225[8], 0, 41);
        if (*(v208 + 16))
        {
          v132 = *(v208 + 40);
          sub_1A948C16C();
          v133 = sub_1A957C058();
          v134 = -1 << *(v208 + 32);
          v135 = v133 & ~v134;
          if ((*(v210 + ((v135 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v135))
          {
            v136 = ~v134;
            while (1)
            {
              v137 = *(v208 + 48) + 56 * v135;
              v138 = *(v137 + 8);
              v139 = *(v137 + 16);
              v140 = *(v137 + 24);
              v141 = *(v137 + 32);
              v142 = *(v137 + 40);
              v143 = *(v137 + 48);
              v223[0] = *v137;
              v223[1] = v138;
              v223[2] = v139;
              v223[3] = v140;
              v223[4] = v141;
              v223[5] = v142;
              LOBYTE(v223[6]) = v143;
              sub_1A93B10F0(v223[0], v138, v139, v140, v141, v142, v143);
              sub_1A93B72DC();
              v144 = sub_1A957C098();
              sub_1A93B183C(v223[0], v223[1], v223[2], v223[3], v223[4], v223[5], v223[6]);
              if (v144)
              {
                break;
              }

              v135 = (v135 + 1) & v136;
              if (((*(v210 + ((v135 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v135) & 1) == 0)
              {
                goto LABEL_118;
              }
            }

            *v225 = *sub_1A9493CCC();
            v222[0] = v224[0];
            sub_1A957CD98();
            sub_1A93B1F40();
            if ((sub_1A957C098() & 1) == 0)
            {
              v222[0] = *v225;
              sub_1A957CDD8();
            }
          }
        }

LABEL_118:
        *v225 = 2;
        memset(&v225[8], 0, 41);
        if (!*(v208 + 16))
        {
          goto LABEL_127;
        }

        v146 = *(v208 + 40);
        sub_1A948C16C();
        v147 = sub_1A957C058();
        v148 = -1 << *(v208 + 32);
        v149 = v147 & ~v148;
        if (((*(v210 + ((v149 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v149) & 1) == 0)
        {
          goto LABEL_127;
        }

        v150 = ~v148;
        while (1)
        {
          v151 = *(v208 + 48) + 56 * v149;
          v152 = *(v151 + 8);
          v153 = *(v151 + 16);
          v154 = *(v151 + 24);
          v155 = *(v151 + 32);
          v156 = *(v151 + 40);
          v157 = *(v151 + 48);
          v223[0] = *v151;
          v223[1] = v152;
          v223[2] = v153;
          v223[3] = v154;
          v223[4] = v155;
          v223[5] = v156;
          LOBYTE(v223[6]) = v157;
          sub_1A93B10F0(v223[0], v152, v153, v154, v155, v156, v157);
          sub_1A93B72DC();
          v158 = sub_1A957C098();
          sub_1A93B183C(v223[0], v223[1], v223[2], v223[3], v223[4], v223[5], v223[6]);
          if (v158)
          {
            break;
          }

          v149 = (v149 + 1) & v150;
          if (((*(v210 + ((v149 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v149) & 1) == 0)
          {
            goto LABEL_127;
          }
        }

        v115 = sub_1A9493CE4();
      }

      *v225 = *v115;
      v222[0] = v224[0];
      sub_1A957CD98();
      sub_1A93B1F40();
      if (sub_1A957C098())
      {
        goto LABEL_127;
      }

      goto LABEL_126;
    }

    break;
  }

  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  result = sub_1A957D438();
  __break(1u);
  return result;
}

uint64_t sub_1A95392D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1A948C16C();
  result = MEMORY[0x1AC585770](v2, &type metadata for CoreSynthesizer.Voice.VoiceType, v3);
  v5 = 0;
  v6 = *(a1 + 64);
  v19 = result;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  if ((v8 & v6) != 0)
  {
    do
    {
      v11 = v5;
LABEL_9:
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v13 = *(a1 + 48) + 56 * (v12 | (v11 << 6));
      v15 = *(v13 + 16);
      v14 = *(v13 + 32);
      v16 = *v13;
      v21 = *(v13 + 48);
      v20[1] = v15;
      v20[2] = v14;
      v20[0] = v16;
      sub_1A93B7280(v20, v17);
      sub_1A9539580(v17, v20);
      result = sub_1A93B183C(v17[0], v17[1], v17[2], v17[3], v17[4], v17[5], v18);
    }

    while (v9);
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return v19;
    }

    v9 = *(a1 + 64 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void (*sub_1A9539418(uint64_t **a1, uint64_t a2, uint64_t a3))(void *)
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
  v6[4] = sub_1A9539980(v6, a2, a3);
  return sub_1A953C23C;
}

uint64_t CoreSynthesizer.Voice.talentGroupKey.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  if (*(v0 + 120))
  {
    if (*(v0 + 120) == 1)
    {
      return 0;
    }

    v3 = *(v0 + 72);
    v4 = *(v0 + 96);
    v5 = *(v0 + 104) | *(v0 + 112);
    v6 = *(v0 + 88) | *(v0 + 80);
    if (!(v5 | v3 | v4 | v6))
    {
      return 0;
    }

    v7 = v5 | v4 | v6;
    if (v3 == 1 && v7 == 0)
    {
      v9 = sub_1A957C1A8();
      v10 = 0x65636E657265635FLL;
      goto LABEL_13;
    }

    if (v3 != 2 || v7)
    {
      return 0;
    }
  }

  v9 = sub_1A957C1A8();
  v10 = 0x5F697269735FLL;
LABEL_13:
  v12 = v10;
  MEMORY[0x1AC585140](v9);

  return v12;
}

uint64_t sub_1A9539580(uint64_t a1, __int128 *a2)
{
  v4 = a2[2];
  v35 = a2[1];
  v36 = v4;
  v37 = *(a2 + 48);
  v34 = *a2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1A948C16C();
  v7 = sub_1A957C058();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(v5 + 48) + 56 * v9;
      v12 = *(v11 + 8);
      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
      v15 = *(v11 + 32);
      v16 = *(v11 + 40);
      v17 = *(v11 + 48);
      *&v38 = *v11;
      *(&v38 + 1) = v12;
      *&v39 = v13;
      *(&v39 + 1) = v14;
      *&v40 = v15;
      *(&v40 + 1) = v16;
      v41 = v17;
      sub_1A93B10F0(v38, v12, v13, v14, v15, v16, v17);
      sub_1A93B72DC();
      v18 = sub_1A957C098();
      sub_1A93B183C(v38, *(&v38 + 1), v39, *(&v39 + 1), v40, *(&v40 + 1), v41);
      if (v18)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1A93B183C(v34, *(&v34 + 1), v35, *(&v35 + 1), v36, *(&v36 + 1), v37);
    v24 = *(v5 + 48) + 56 * v9;
    v25 = *v24;
    v26 = *(v24 + 8);
    v27 = *(v24 + 16);
    v28 = *(v24 + 24);
    v29 = *(v24 + 32);
    v30 = *(v24 + 40);
    *a1 = *v24;
    *(a1 + 8) = v26;
    *(a1 + 16) = v27;
    *(a1 + 24) = v28;
    *(a1 + 32) = v29;
    *(a1 + 40) = v30;
    v31 = *(v24 + 48);
    *(a1 + 48) = v31;
    sub_1A93B10F0(v25, v26, v27, v28, v29, v30, v31);
    return 0;
  }

  else
  {
LABEL_5:
    v19 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v34;
    v39 = v35;
    v40 = v36;
    v41 = v37;
    v33 = *v2;
    sub_1A93B7280(&v38, &v32);
    sub_1A953B770(&v38, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v33;
    v21 = v37;
    v22 = v35;
    *a1 = v34;
    *(a1 + 16) = v22;
    *(a1 + 32) = v36;
    *(a1 + 48) = v21;
    return 1;
  }
}

unint64_t sub_1A9539778(unsigned __int8 a1)
{
  v2 = *(v1 + 40);
  sub_1A953C074();
  v3 = sub_1A957C058();
  return sub_1A953A848(a1, v3);
}

uint64_t sub_1A95397E0(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v19[6] = *MEMORY[0x1E69E9840];
  v18 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v19[3] = &v18;
  v19[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD || (v14 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), v8 = v14, (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe, v8);
    v10 = &v17 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    v11 = sub_1A953B310(v10, v7, v3, a2);
  }

  else
  {
    v15 = v14;
    v16 = swift_slowAlloc();
    bzero(v16, v15);
    sub_1A953C040(v16, v7, v19);
    v11 = v19[0];

    MEMORY[0x1AC587CD0](v16, -1, -1);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void (*sub_1A9539980(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_1A9539DDC(v8);
  v8[9] = sub_1A9539A30(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1A953C240;
}

void (*sub_1A9539A30(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x58uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[7] = a3;
  v10[8] = v4;
  v10[6] = a2;
  v12 = *v4;
  v13 = sub_1A937A490(a2, a3);
  *(v11 + 80) = v14 & 1;
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
      sub_1A953ABFC();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1A953A370(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_1A937A490(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1A957D438();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[9] = v13;
  if (v19)
  {
    v24 = *(*v5 + 56) + 48 * v13;
    v25 = *v24;
    v26 = *(v24 + 8);
    v27 = *(v24 + 24);
    v28 = *(v24 + 32);
  }

  else
  {
    v25 = 0;
    v27 = 0;
    v26 = 0uLL;
    v28 = 0uLL;
  }

  *v11 = v25;
  *(v11 + 1) = v26;
  v11[3] = v27;
  *(v11 + 2) = v28;
  return sub_1A9539BB4;
}

void sub_1A9539BB4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  LOBYTE(v9) = *(v2 + 80);
  if (a2)
  {
    if (!v4)
    {
      if (v2[10])
      {
        v20 = v2[9];
        v21 = *v2[8];
        v22 = v3;
        v23 = v2[2];
        v24 = v2[3];
        sub_1A948C1C0(*(v21 + 48) + 16 * v20);
        sub_1A953A68C(v20, v21);
        v3 = v22;
      }

      goto LABEL_16;
    }

    v10 = v2[9];
    v11 = *v2[8];
    if (v2[10])
    {
      goto LABEL_9;
    }

    v13 = v2[6];
    v12 = v2[7];
    v11[(v10 >> 6) + 8] |= 1 << v10;
    v14 = (v11[6] + 16 * v10);
    *v14 = v13;
    v14[1] = v12;
    v9 = v11[7];
    v15 = (v9 + 48 * v10);
    *v15 = v3;
    v15[1] = v4;
    v15[2] = v5;
    v15[3] = v6;
    v15[4] = v7;
    v15[5] = v8;
    v16 = v11[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (!v17)
    {
LABEL_15:
      v33 = v3;
      v34 = v2[7];
      v11[2] = v18;

      v3 = v33;
      goto LABEL_16;
    }

    __break(1u);
  }

  if (!v4)
  {
    if (v9)
    {
      v25 = v2[9];
      v26 = *v2[8];
      v27 = v3;
      sub_1A948C1C0(*(v26 + 48) + 16 * v25);
      sub_1A953A68C(v25, v26);
      v3 = v27;
    }

    goto LABEL_16;
  }

  v10 = v2[9];
  v11 = *v2[8];
  if ((v9 & 1) == 0)
  {
    v29 = v2[6];
    v28 = v2[7];
    v11[(v10 >> 6) + 8] |= 1 << v10;
    v30 = (v11[6] + 16 * v10);
    *v30 = v29;
    v30[1] = v28;
    v31 = (v11[7] + 48 * v10);
    *v31 = v3;
    v31[1] = v4;
    v31[2] = v5;
    v31[3] = v6;
    v31[4] = v7;
    v31[5] = v8;
    v32 = v11[2];
    v17 = __OFADD__(v32, 1);
    v18 = v32 + 1;
    if (v17)
    {
      __break(1u);
      return;
    }

    goto LABEL_15;
  }

LABEL_9:
  v19 = (v11[7] + 48 * v10);
  *v19 = v3;
  v19[1] = v4;
  v19[2] = v5;
  v19[3] = v6;
  v19[4] = v7;
  v19[5] = v8;
LABEL_16:
  v35 = *v2;
  v36 = v2[1];
  v38 = v2[2];
  v37 = v2[3];
  v39 = v2[4];
  v40 = v2[5];
  sub_1A953C11C(v3, v4);
  sub_1A953C180(v35, v36);

  free(v2);
}

uint64_t (*sub_1A9539DDC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1A953C238;
}

uint64_t sub_1A9539E04(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB3887F8, &qword_1A9599C48);
  v34 = a2;
  result = sub_1A957D118();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v22 = *(v5 + 48) + 56 * v21;
      v35 = *v22;
      v36 = *(v22 + 16);
      v37 = *(v22 + 32);
      v38 = *(v22 + 48);
      v23 = *(*(v5 + 56) + 8 * v21);
      if ((v34 & 1) == 0)
      {
        sub_1A93B10F0(*v22, *(v22 + 8), *(v22 + 16), *(v22 + 24), *(v22 + 32), *(v22 + 40), *(v22 + 48));
      }

      v24 = *(v8 + 40);
      sub_1A948C16C();
      result = sub_1A957C058();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 56 * v16;
      *v17 = v35;
      *(v17 + 16) = v36;
      *(v17 + 32) = v37;
      *(v17 + 48) = v38;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
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

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1A953A0D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB388800, &qword_1A9599C50);
  v33 = a2;
  result = sub_1A957D118();
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
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_1A953C074();
      result = sub_1A957C058();
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
      *(*(v8 + 48) + v16) = v21;
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

uint64_t sub_1A953A370(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1A937829C(&qword_1EB3887F0, &qword_1A9599C40);
  v47 = a2;
  result = sub_1A957D118();
  v8 = result;
  if (*(v5 + 16))
  {
    v44 = v3;
    v45 = v5;
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
    v46 = result;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v48 = (v13 - 1) & v13;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = v25[1];
      v52 = *v25;
      v27 = (*(v5 + 56) + 48 * v24);
      v28 = v27[1];
      v30 = v27[2];
      v29 = v27[3];
      v49 = v29;
      v50 = *v27;
      v31 = v27[4];
      v32 = v27[5];
      if ((v47 & 1) == 0)
      {
      }

      v51 = v31;
      v33 = v30;
      v34 = v28;
      v35 = *(v46 + 40);
      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v8 = v46;
      v36 = -1 << *(v46 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v15 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v17 = v51;
        v18 = v32;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v15 + 8 * v38);
          if (v42 != -1)
          {
            v16 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v37) & ~*(v15 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v17 = v51;
      v18 = v32;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v19 = (*(v46 + 48) + 16 * v16);
      *v19 = v52;
      v19[1] = v26;
      v20 = (*(v46 + 56) + 48 * v16);
      *v20 = v50;
      v20[1] = v34;
      v20[2] = v33;
      v20[3] = v49;
      v20[4] = v17;
      v20[5] = v18;
      ++*(v46 + 16);
      v5 = v45;
      v13 = v48;
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v48 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_35;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v10, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1A953A68C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A957CE28() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_1A957D4F8();

      sub_1A957C228();
      v15 = sub_1A957D548();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 48 * v3);
        v22 = (v20 + 48 * v6);
        if (v3 != v6 || v21 >= v22 + 3)
        {
          v9 = *v22;
          v10 = v22[2];
          v21[1] = v22[1];
          v21[2] = v10;
          *v21 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1A953A848(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1A9496DE0();
    do
    {
      v7 = *(*(v2 + 48) + v4);
      if (sub_1A957C098())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_1A953A910()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB3887F8, &qword_1A9599C48);
  v2 = *v0;
  v3 = sub_1A957D108();
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
        v18 = v17 << 6;
        v17 *= 8;
        v19 = v18 - v17;
        v20 = *(v2 + 48) + v19;
        v21 = *v20;
        v22 = *(v20 + 8);
        v23 = *(v20 + 16);
        v24 = *(v20 + 24);
        v25 = *(v20 + 32);
        v26 = *(v20 + 40);
        v27 = *(*(v2 + 56) + v17);
        v28 = *(v4 + 48) + v19;
        v29 = *(v20 + 48);
        *v28 = *v20;
        *(v28 + 8) = v22;
        *(v28 + 16) = v23;
        *(v28 + 24) = v24;
        *(v28 + 32) = v25;
        *(v28 + 40) = v26;
        *(v28 + 48) = v29;
        *(*(v4 + 56) + v17) = v27;
        sub_1A93B10F0(v21, v22, v23, v24, v25, v26, v29);
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

void *sub_1A953AAA0()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB388800, &qword_1A9599C50);
  v2 = *v0;
  v3 = sub_1A957D108();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
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

void *sub_1A953ABFC()
{
  sub_1A937829C(&qword_1EB3887F0, &qword_1A9599C40);
  v30 = v0;
  v1 = *v0;
  v2 = sub_1A957D108();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 16 * v16;
        v18 = (*(v1 + 48) + 16 * v16);
        v20 = *v18;
        v19 = v18[1];
        v16 *= 48;
        v21 = (*(v1 + 56) + v16);
        v22 = *v21;
        v23 = v21[1];
        v25 = v21[2];
        v24 = v21[3];
        v26 = v21[4];
        v27 = v21[5];
        v28 = (*(v3 + 48) + v17);
        *v28 = v20;
        v28[1] = v19;
        v29 = (*(v3 + 56) + v16);
        *v29 = v22;
        v29[1] = v23;
        v29[2] = v25;
        v29[3] = v24;
        v29[4] = v26;
        v29[5] = v27;
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v30 = v3;
  }

  return result;
}

uint64_t sub_1A953ADBC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1A9489FA8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1A9539E04(v14, a3 & 1);
      v18 = *v4;
      v9 = sub_1A9489FA8(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_1A957D438();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_1A953A910();
      v9 = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(v9 >> 6) + 8] |= 1 << v9;
    v24 = v20[6] + 56 * v9;
    v25 = *a2;
    v26 = *(a2 + 16);
    v27 = *(a2 + 32);
    *(v24 + 48) = *(a2 + 48);
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    *v24 = v25;
    *(v20[7] + 8 * v9) = a1;
    v28 = v20[2];
    v13 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v13)
    {
      v20[2] = v29;
      return sub_1A93B7280(a2, v30);
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * v9);
  *(v21 + 8 * v9) = a1;
}

unint64_t sub_1A953AF3C(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1A9539778(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1A953A0D8(v14, a3 & 1);
      v18 = *v4;
      result = sub_1A9539778(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_1A957D438();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1A953AAA0();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

uint64_t sub_1A953B088(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1A937829C(&qword_1EB3887E8, &qword_1A9599C38);
  result = sub_1A957CEA8();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v19 = *(v3 + 48) + 56 * (v16 | (v7 << 6));
      v30 = *v19;
      v31 = *(v19 + 16);
      v32 = *(v19 + 32);
      v33 = *(v19 + 48);
      v20 = *(v6 + 40);
      sub_1A948C16C();
      result = sub_1A957C058();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 56 * v14;
      *v15 = v30;
      *(v15 + 16) = v31;
      *(v15 + 32) = v32;
      *(v15 + 48) = v33;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1A953B310(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = *(a3 + 16);
  if (v37)
  {
    v5 = 0;
    v20 = 0;
    v22 = a3 + 32;
    v6 = a4 + 56;
    while (1)
    {
      v7 = v22 + 56 * v5;
      v30 = *v7;
      v31 = *(v7 + 8);
      v32 = *(v7 + 16);
      v33 = *(v7 + 24);
      v34 = *(v7 + 32);
      v35 = *(v7 + 40);
      v36 = *(v7 + 48);
      v8 = *(a4 + 40);
      sub_1A93B10F0(*v7, v31, v32, v33, v34, v35, v36);
      sub_1A948C16C();
      v9 = sub_1A957C058();
      v10 = -1 << *(a4 + 32);
      v11 = v9 & ~v10;
      v12 = v11 >> 6;
      v13 = 1 << v11;
      if (((1 << v11) & *(v6 + 8 * (v11 >> 6))) != 0)
      {
        v14 = ~v10;
        while (1)
        {
          v15 = *(a4 + 48) + 56 * v11;
          v23 = *v15;
          v24 = *(v15 + 8);
          v25 = *(v15 + 16);
          v26 = *(v15 + 24);
          v27 = *(v15 + 32);
          v28 = *(v15 + 40);
          v29 = *(v15 + 48);
          sub_1A93B10F0(*v15, v24, v25, v26, v27, v28, v29);
          sub_1A93B72DC();
          v16 = sub_1A957C098();
          sub_1A93B183C(v23, v24, v25, v26, v27, v28, v29);
          if (v16)
          {
            break;
          }

          v11 = (v11 + 1) & v14;
          v12 = v11 >> 6;
          v13 = 1 << v11;
          if (((1 << v11) & *(v6 + 8 * (v11 >> 6))) == 0)
          {
            goto LABEL_3;
          }
        }

        result = sub_1A93B183C(v30, v31, v32, v33, v34, v35, v36);
        v18 = a1[v12];
        a1[v12] = v18 | v13;
        if ((v18 & v13) == 0)
        {
          if (__OFADD__(v20, 1))
          {
            __break(1u);
            return result;
          }

          ++v20;
        }
      }

      else
      {
LABEL_3:
        sub_1A93B183C(v30, v31, v32, v33, v34, v35, v36);
      }

      if (++v5 == v37)
      {
        goto LABEL_14;
      }
    }
  }

  v20 = 0;
LABEL_14:

  return sub_1A953B518(a1, a2, v20, a4);
}

uint64_t sub_1A953B518(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1A937829C(&qword_1EB3887E8, &qword_1A9599C38);
  result = sub_1A957CEB8();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = *(a4 + 48) + 56 * (v13 | (v11 << 6));
    v28 = *v16;
    v29 = *(v16 + 16);
    v30 = *(v16 + 32);
    v31 = *(v16 + 48);
    v17 = *(v6 + 40);
    sub_1A93B10F0(*v16, *(v16 + 8), v29, *(&v29 + 1), v30, *(&v30 + 1), v31);
    sub_1A948C16C();
    result = sub_1A957C058();
    v18 = -1 << *(v6 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = *(v6 + 48) + 56 * v21;
    *v26 = v28;
    *(v26 + 16) = v29;
    *(v26 + 32) = v30;
    *(v26 + 48) = v31;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
LABEL_28:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_28;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1A953B770(uint64_t result, unint64_t a2, char a3)
{
  v28 = *(result + 48);
  v26 = *(result + 16);
  v27 = *(result + 32);
  v25 = *result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A953B088(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_1A953B954();
      goto LABEL_12;
    }

    sub_1A953BACC(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1A948C16C();
  result = sub_1A957C058();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = *(v7 + 48) + 56 * a2;
      v18 = *v11;
      v19 = *(v11 + 8);
      v20 = *(v11 + 16);
      v21 = *(v11 + 24);
      v22 = *(v11 + 32);
      v23 = *(v11 + 40);
      v24 = *(v11 + 48);
      sub_1A93B10F0(*v11, v19, v20, v21, v22, v23, v24);
      sub_1A93B72DC();
      v12 = sub_1A957C098();
      result = sub_1A93B183C(v18, v19, v20, v21, v22, v23, v24);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 56 * a2;
  *v14 = v25;
  *(v14 + 16) = v26;
  *(v14 + 32) = v27;
  *(v14 + 48) = v28;
  v15 = *(v13 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v13 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A957D428();
  __break(1u);
  return result;
}

void *sub_1A953B954()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB3887E8, &qword_1A9599C38);
  v2 = *v0;
  v3 = sub_1A957CE98();
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
        v17 = 56 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(v18 + 40);
        v25 = *(v4 + 48) + v17;
        v26 = *(v18 + 48);
        *v25 = *v18;
        *(v25 + 8) = v20;
        *(v25 + 16) = v21;
        *(v25 + 24) = v22;
        *(v25 + 32) = v23;
        *(v25 + 40) = v24;
        *(v25 + 48) = v26;
        result = sub_1A93B10F0(v19, v20, v21, v22, v23, v24, v26);
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

uint64_t sub_1A953BACC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1A937829C(&qword_1EB3887E8, &qword_1A9599C38);
  result = sub_1A957CEA8();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
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
      v18 = *(v3 + 48) + 56 * (v15 | (v7 << 6));
      v28 = *v18;
      v29 = *(v18 + 16);
      v30 = *(v18 + 32);
      v31 = *(v18 + 48);
      v19 = *(v6 + 40);
      sub_1A93B10F0(*v18, *(v18 + 8), v29, *(&v29 + 1), v30, *(&v30 + 1), v31);
      sub_1A948C16C();
      result = sub_1A957C058();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 56 * v13;
      *v14 = v28;
      *(v14 + 16) = v29;
      *(v14 + 32) = v30;
      *(v14 + 48) = v31;
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

        v2 = v27;
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

uint64_t sub_1A953BD30(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v4 + 3) >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1A93AC2AC(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = *(v4 + 3) >> 1;
  }

  v12 = *(v4 + 2);
  v13 = v10 - v12;
  result = sub_1A9457918(&v43, &v4[16 * v12 + 32], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v16 = result;
  if (result)
  {
    v17 = *(v4 + 2);
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
LABEL_19:
      v22 = (v15 + 64) >> 6;
      if (v22 <= v2 + 1)
      {
        v23 = v2 + 1;
      }

      else
      {
        v23 = (v15 + 64) >> 6;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v46 = v24;
          v47 = 0;
          goto LABEL_13;
        }

        v26 = *(v14 + 8 * v25);
        ++v2;
      }

      while (!v26);
      v40 = v15;
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v2 = v25;
      goto LABEL_27;
    }

    *(v4 + 2) = v19;
  }

  result = v43;
  if (v16 != v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v13 = *(v4 + 2);
  v14 = v44;
  v15 = v45;
  v2 = v46;
  v42 = v44;
  if (!v47)
  {
    goto LABEL_19;
  }

  v20 = (v47 - 1) & v47;
  v21 = __clz(__rbit64(v47)) | (v46 << 6);
  v40 = v45;
  v22 = (v45 + 64) >> 6;
LABEL_27:
  v41 = result;
  v27 = (*(result + 48) + 16 * v21);
  v29 = *v27;
  v28 = v27[1];

  v30 = v42;
LABEL_29:
  while (1)
  {
    v31 = *(v4 + 3);
    v32 = v31 >> 1;
    if ((v31 >> 1) < v13 + 1)
    {
      break;
    }

    if (v13 < v32)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v13;
  }

  v38 = sub_1A93AC2AC((v31 > 1), v13 + 1, 1, v4);
  v30 = v42;
  v4 = v38;
  v32 = *(v38 + 3) >> 1;
  if (v13 >= v32)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v33 = &v4[16 * v13 + 32];
    *v33 = v29;
    *(v33 + 1) = v28;
    ++v13;
    if (!v20)
    {
      break;
    }

    result = v41;
LABEL_38:
    v36 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v37 = (*(result + 48) + ((v2 << 10) | (16 * v36)));
    v29 = *v37;
    v28 = v37[1];

    v30 = v42;
    if (v13 == v32)
    {
      v13 = v32;
      *(v4 + 2) = v32;
      goto LABEL_29;
    }
  }

  v34 = v2;
  result = v41;
  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v35 >= v22)
    {
      break;
    }

    v20 = *(v30 + 8 * v35);
    ++v34;
    if (v20)
    {
      v2 = v35;
      goto LABEL_38;
    }
  }

  if (v22 <= v2 + 1)
  {
    v39 = v2 + 1;
  }

  else
  {
    v39 = v22;
  }

  v45 = v40;
  v46 = v39 - 1;
  v47 = 0;
  *(v4 + 2) = v13;
LABEL_13:
  result = sub_1A932D088();
  *v1 = v4;
  return result;
}