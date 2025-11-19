uint64_t sub_27225FDF8(uint64_t a1)
{
  v3 = 0;
  v4 = *(v1 + 16);
LABEL_3:
  v5 = 0;
  v6 = v3 + 1;
  while (1)
  {
    v7 = *(a1 + 4 * v5);
    v8 = *v4;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v8;
    if (result)
    {
      if (!v8[2])
      {
        break;
      }

      goto LABEL_6;
    }

    result = sub_272258428(v8);
    v8 = result;
    *v4 = result;
    if (!*(result + 16))
    {
      break;
    }

LABEL_6:
    v10 = v8[4];
    result = swift_isUniquelyReferenced_nonNull_native();
    v8[4] = v10;
    if ((result & 1) == 0)
    {
      result = sub_272200344(v10);
      v10 = result;
      v8[4] = result;
    }

    if (v3 >= v10[2])
    {
      goto LABEL_18;
    }

    v11 = v10 + 4;
    v12 = v11[v3];
    result = swift_isUniquelyReferenced_nonNull_native();
    v11[v3] = v12;
    if ((result & 1) == 0)
    {
      result = sub_2722002AC(v12);
      v12 = result;
      v11[v3] = result;
    }

    if (v5 >= *(v12 + 16))
    {
      goto LABEL_19;
    }

    *(v12 + 4 * v5++ + 32) = v7;
    if (v5 == 128)
    {
      a1 += 512;
      ++v3;
      if (v6 == 48)
      {
        return result;
      }

      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_27225FF4C(uint64_t result)
{
  v2 = *(v1 + 16);
  if (!*(v2 + 16))
  {
    goto LABEL_11;
  }

  v3 = 0;
  v4 = *(v2 + 32);
  v5 = v4 + 32;
  v6 = *(v4 + 16);
  while (2)
  {
    if (v3 == v6)
    {
LABEL_10:
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    v7 = 0;
    v8 = v3 + 1;
    do
    {
      v9 = *(v5 + 8 * v3);
      if (v7 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_10;
      }

      *(result + 4 * v7) = *(v9 + 4 * v7 + 32);
      ++v7;
    }

    while (v7 != 128);
    result += 512;
    ++v3;
    if (v8 != 48)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_27225FFC8(uint64_t a1)
{
  v3 = 0;
  v4 = *(v1 + 16);
LABEL_3:
  v5 = 0;
  v6 = v3 + 1;
  while (1)
  {
    v7 = *(a1 + 4 * v5);
    v8 = *v4;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v8;
    if (result)
    {
      if (!v8[2])
      {
        break;
      }

      goto LABEL_6;
    }

    result = sub_272258428(v8);
    v8 = result;
    *v4 = result;
    if (!*(result + 16))
    {
      break;
    }

LABEL_6:
    v10 = v8[4];
    result = swift_isUniquelyReferenced_nonNull_native();
    v8[4] = v10;
    if ((result & 1) == 0)
    {
      result = sub_272200344(v10);
      v10 = result;
      v8[4] = result;
    }

    if (v3 >= v10[2])
    {
      goto LABEL_18;
    }

    v11 = v10 + 4;
    v12 = v11[v3];
    result = swift_isUniquelyReferenced_nonNull_native();
    v11[v3] = v12;
    if ((result & 1) == 0)
    {
      result = sub_2722002AC(v12);
      v12 = result;
      v11[v3] = result;
    }

    if (v5 >= *(v12 + 16))
    {
      goto LABEL_19;
    }

    *(v12 + 4 * v5++ + 32) = v7;
    if (v5 == 384)
    {
      a1 += 1536;
      ++v3;
      if (v6 == 48)
      {
        return result;
      }

      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

unint64_t sub_272260218()
{
  result = qword_280882150;
  if (!qword_280882150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882150);
  }

  return result;
}

uint64_t sub_2722602B4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_2723773DC();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_2721F065C(&qword_280881F88, qword_27237E340);
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();
  v12 = *(*(sub_2721F065C(&qword_280881F80, &qword_27237E338) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272260488, v1, 0);
}

uint64_t sub_272260488()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[6];
  v5 = OBJC_IVAR____TtC12VoiceActions18VAInputStreamActor_inputStreamBuilder;
  v0[18] = OBJC_IVAR____TtC12VoiceActions18VAInputStreamActor_inputStreamBuilder;
  swift_beginAccess();
  sub_2721F07F4(v4 + v5, v1, &qword_280881F80, &qword_27237E338);
  v6 = *(v3 + 48);
  v0[19] = v6;
  if (v6(v1, 1, v2) == 1)
  {
    sub_2721F40F0(v0[17], &qword_280881F80, &qword_27237E338);
    v7 = *(MEMORY[0x277D857F8] + 4);
    v8 = swift_task_alloc();
    v0[20] = v8;
    *v8 = v0;
    v8[1] = sub_272260850;

    return MEMORY[0x282200490]();
  }

  else
  {
    v9 = v0[18];
    v10 = v0[16];
    v11 = v0[13];
    v12 = v0[6];
    sub_2721F40F0(v0[17], &qword_280881F80, &qword_27237E338);
    sub_2721F07F4(v12 + v9, v10, &qword_280881F80, &qword_27237E338);
    if (v6(v10, 1, v11) == 1)
    {
      v13 = v0[6];
      sub_2721F40F0(v0[16], &qword_280881F80, &qword_27237E338);
      v14 = *(*v13 + 120);
      v35 = (v14 + *v14);
      v15 = v14[1];
      v16 = swift_task_alloc();
      v0[21] = v16;
      *v16 = v0;
      v16[1] = sub_272260D08;
      v17 = v0[5];
      v18 = v0[6];

      return v35(v17);
    }

    else
    {
      v20 = v0[14];
      v19 = v0[15];
      v22 = v0[12];
      v21 = v0[13];
      v23 = v0[11];
      v36 = v0[10];
      v24 = v0[8];
      v25 = v0[9];
      v26 = v0[7];
      v27 = v0[5];
      (*(v20 + 32))(v19, v0[16], v21);
      (*(v24 + 16))(v25, v27, v26);
      sub_272377C6C();
      (*(v23 + 8))(v22, v36);
      (*(v20 + 8))(v19, v21);
      v29 = v0[16];
      v28 = v0[17];
      v30 = v0[15];
      v31 = v0[12];
      v32 = v0[9];

      v33 = v0[1];

      return v33();
    }
  }
}

uint64_t sub_272260850()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_272260960, v2, 0);
}

uint64_t sub_272260960()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[14] + 48;
  sub_2721F07F4(v0[6] + v0[18], v2, &qword_280881F80, &qword_27237E338);
  if (v1(v2, 1, v3) == 1)
  {
    sub_2721F40F0(v0[17], &qword_280881F80, &qword_27237E338);
    v5 = *(MEMORY[0x277D857F8] + 4);
    v6 = swift_task_alloc();
    v0[20] = v6;
    *v6 = v0;
    v6[1] = sub_272260850;

    return MEMORY[0x282200490]();
  }

  else
  {
    v8 = v0[18];
    v7 = v0[19];
    v9 = v0[16];
    v10 = v0[13];
    v11 = v0[6];
    sub_2721F40F0(v0[17], &qword_280881F80, &qword_27237E338);
    sub_2721F07F4(v11 + v8, v9, &qword_280881F80, &qword_27237E338);
    if (v7(v9, 1, v10) == 1)
    {
      v12 = v0[6];
      sub_2721F40F0(v0[16], &qword_280881F80, &qword_27237E338);
      v13 = *(*v12 + 120);
      v34 = (v13 + *v13);
      v14 = v13[1];
      v15 = swift_task_alloc();
      v0[21] = v15;
      *v15 = v0;
      v15[1] = sub_272260D08;
      v16 = v0[5];
      v17 = v0[6];

      return v34(v16);
    }

    else
    {
      v19 = v0[14];
      v18 = v0[15];
      v21 = v0[12];
      v20 = v0[13];
      v22 = v0[11];
      v35 = v0[10];
      v23 = v0[8];
      v24 = v0[9];
      v25 = v0[7];
      v26 = v0[5];
      (*(v19 + 32))(v18, v0[16], v20);
      (*(v23 + 16))(v24, v26, v25);
      sub_272377C6C();
      (*(v22 + 8))(v21, v35);
      (*(v19 + 8))(v18, v20);
      v28 = v0[16];
      v27 = v0[17];
      v29 = v0[15];
      v30 = v0[12];
      v31 = v0[9];

      v32 = v0[1];

      return v32();
    }
  }
}

uint64_t sub_272260D08()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v10 = *v0;

  v3 = v1[17];
  v4 = v1[16];
  v5 = v1[15];
  v6 = v1[12];
  v7 = v1[9];

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_272260E98()
{
  v1[5] = v0;
  v2 = *(*(sub_2721F065C(&qword_280881F80, &qword_27237E338) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();
  v6 = sub_27237728C();
  v1[10] = v6;
  v7 = *(v6 - 8);
  v1[11] = v7;
  v8 = *(v7 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272261004, v0, 0);
}

uint64_t sub_272261004()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = sub_2722C3774();
  v35 = *(v3 + 16);
  v36 = v4;
  v35(v1);
  v5 = sub_27237725C();
  v6 = sub_272377E6C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2721E4000, v5, v6, "Trying to finish input strem", v7, 2u);
    MEMORY[0x2743C69C0](v7, -1, -1);
  }

  v8 = v0[13];
  v9 = v0[10];
  v10 = v0[11];
  v12 = v0[7];
  v11 = v0[8];
  v14 = v0[5];
  v13 = v0[6];

  v15 = *(v10 + 8);
  v15(v8, v9);
  v16 = v15;
  v17 = OBJC_IVAR____TtC12VoiceActions18VAInputStreamActor_inputStreamBuilder;
  swift_beginAccess();
  sub_2721F07F4(v14 + v17, v13, &qword_280881F80, &qword_27237E338);
  if ((*(v11 + 48))(v13, 1, v12) == 1)
  {
    sub_2721F40F0(v0[6], &qword_280881F80, &qword_27237E338);
  }

  else
  {
    v18 = v0[12];
    v19 = v0[10];
    (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
    (v35)(v18, v36, v19);
    v20 = sub_27237725C();
    v21 = sub_272377E6C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2721E4000, v20, v21, "Finishing input stream", v22, 2u);
      MEMORY[0x2743C69C0](v22, -1, -1);
    }

    v24 = v0[11];
    v23 = v0[12];
    v26 = v0[9];
    v25 = v0[10];
    v27 = v0[7];
    v28 = v0[8];

    v16(v23, v25);
    sub_272377C7C();
    (*(v28 + 8))(v26, v27);
  }

  v30 = v0[12];
  v29 = v0[13];
  v31 = v0[9];
  v32 = v0[6];

  v33 = v0[1];

  return v33();
}

uint64_t sub_2722612D0(uint64_t a1)
{
  v3 = sub_2721F065C(&qword_280881F80, &qword_27237E338);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  sub_2721F065C(&qword_280882040, &unk_27237E470);
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D837D0];
  *(v7 + 16) = xmmword_27237AF80;
  *(v7 + 56) = v8;
  *(v7 + 32) = 0x6B636F6C626E75;
  *(v7 + 40) = 0xE700000000000000;
  sub_27237872C();

  v9 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v6, a1, v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  v11 = OBJC_IVAR____TtC12VoiceActions18VAInputStreamActor_inputStreamBuilder;
  swift_beginAccess();
  sub_27226A7E8(v6, v1 + v11);
  return swift_endAccess();
}

uint64_t sub_272261474()
{
  v1 = sub_2721F065C(&qword_280881F80, &qword_27237E338);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  sub_2721F065C(&qword_280882040, &unk_27237E470);
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D837D0];
  *(v5 + 16) = xmmword_27237AF80;
  *(v5 + 56) = v6;
  *(v5 + 32) = 0x6B636F6C62;
  *(v5 + 40) = 0xE500000000000000;
  sub_27237872C();

  v7 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = OBJC_IVAR____TtC12VoiceActions18VAInputStreamActor_inputStreamBuilder;
  swift_beginAccess();
  sub_27226A7E8(v4, v0 + v8);
  return swift_endAccess();
}

uint64_t sub_2722615D4()
{
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions18VAInputStreamActor_inputStreamBuilder, &qword_280881F80, &qword_27237E338);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_272261624()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = OBJC_IVAR____TtC12VoiceActions18VAInputStreamActor_inputStreamBuilder;
  v5 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  return v3;
}

uint64_t sub_2722616B0()
{
  v1 = OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_inputStreamActor;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_2722616F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_inputStreamActor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_272261834(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_272261884(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

char *VASpeechAPISpotterV2.init(delegate:asrDelegate:speechDetectorDelegate:stringMatchingStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v43 = a1;
  v40 = OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_speechAnalyzer;
  *&v4[OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_speechAnalyzer] = 0;
  v9 = OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_inputStreamActor;
  v10 = type metadata accessor for VAInputStreamActor();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  swift_defaultActor_initialize();
  v14 = OBJC_IVAR____TtC12VoiceActions18VAInputStreamActor_inputStreamBuilder;
  v15 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
  *&v5[v9] = v13;
  v37 = OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_processSpeechApiResultsTask;
  *&v5[OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_processSpeechApiResultsTask] = 0;
  v38 = OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_sendAudioToSpeechApiTask;
  *&v5[OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_sendAudioToSpeechApiTask] = 0;
  v16 = OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_asrDelegate;
  *&v5[OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_asrDelegate] = 0;
  v17 = OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_speechDetectorDelegate;
  *&v5[OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_speechDetectorDelegate] = 0;
  v18 = OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_speechEnded;
  type metadata accessor for SharedBool();
  v39 = v18;
  *&v5[v18] = sub_272244CEC(0, 0x6E45686365657073, 0xEB00000000646564);
  v36 = OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_gotFinalResult;
  *&v5[v36] = sub_272244CEC(0, 0x6C616E6946746F67, 0xEE00746C75736552);
  v35 = OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_gotPartialResult;
  *&v5[v35] = sub_272244CEC(0, 0xD000000000000010, 0x800000027238AA40);
  v19 = *&v5[v16];
  *&v5[v16] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v20 = *&v5[v17];
  *&v5[v17] = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v21 = OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_stringMatchingStrategy;
  *&v5[OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_stringMatchingStrategy] = a4;
  type metadata accessor for VAConfiguration();

  v22 = static VAConfiguration.buildForSpeechApiV2()();
  if (v41)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v23 = *&v5[v40];

    v24 = *&v5[v9];

    v25 = *&v5[v37];

    v26 = *&v5[v38];

    v27 = *&v5[v16];
    swift_unknownObjectRelease();
    v28 = *&v5[v17];
    swift_unknownObjectRelease();
    v29 = *&v5[v39];

    v30 = *&v5[v36];

    v31 = *&v5[v35];

    v32 = *&v5[v21];

    type metadata accessor for VASpeechAPISpotterV2();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v33 = v22;
    sub_272335304(v42);
    v5 = sub_272335390(v43, v33, v42);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v5;
}

uint64_t sub_272261CD4()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_272245878;
  v2 = swift_continuation_init();
  v0[17] = sub_2721F065C(&qword_280881F60, &qword_27237E308);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2722459C4;
  v0[13] = &unk_28817E8A8;
  v0[14] = v2;
  [v1 installedLanguagesForTaskHint:1009 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t static VASpeechAPISpotterV2.downloadGeneralASRModel(progress:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return MEMORY[0x2822009F8](sub_272261E20, 0, 0);
}

uint64_t sub_272261E20()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v1[20];
  v4 = v1[21];
  v6 = objc_allocWithZone(MEMORY[0x277CDCE88]);
  v7 = sub_2723777FC();
  v8 = [v6 initWithLanguage:v7 assetType:7];
  v1[22] = v8;

  v16 = objc_opt_self();
  v9 = sub_2723777FC();
  v1[23] = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v4;
  v1[14] = sub_272252A2C;
  v1[15] = v10;
  v11 = MEMORY[0x277D85DD0];
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_272245EC4;
  v1[13] = &unk_28817E8F8;
  v12 = _Block_copy(v3);
  v1[24] = v12;
  v13 = v1[15];

  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_272245CA4;
  v14 = swift_continuation_init();
  v1[17] = sub_2721F065C(&qword_280881F68, &qword_27237E318);
  v1[10] = v11;
  v1[11] = 1107296256;
  v1[12] = sub_272245F18;
  v1[13] = &unk_28817E920;
  v1[14] = v14;
  [v16 fetchAssetWithConfig:v8 clientIdentifier:v9 progress:v12 completion:v3];

  return MEMORY[0x282200938](v2);
}

unint64_t sub_272262090(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v57 = &v56 - v6;
  v7 = sub_27237728C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for VARuntimeParameters();
  v12 = *(*(v59 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v59);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v56 - v16;
  type metadata accessor for VAStrategyLayerPassthrough();
  sub_272216374(a1, v17);
  v18 = swift_unknownObjectRetain();
  v58 = v17;
  v19 = sub_2723457E8(v18, &protocol witness table for VAKeywordSpotterBase, v17);
  v20 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x158))(v19);
  v21 = sub_2722C389C();
  v60 = v8;
  v61 = v7;
  (*(v8 + 16))(v11, v21, v7);
  v62 = a1;
  sub_272216374(a1, v15);
  v22 = sub_27237725C();
  v23 = sub_272377EAC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v64 = v25;
    *v24 = 136315138;
    sub_27226AC10(&qword_2808821A8, type metadata accessor for VARuntimeParameters);
    v26 = sub_27237862C();
    v28 = v27;
    sub_27226ABB0(v15, type metadata accessor for VARuntimeParameters);
    v29 = sub_2721FFD04(v26, v28, &v64);
    v20 = MEMORY[0x277D85000];

    *(v24 + 4) = v29;
    _os_log_impl(&dword_2721E4000, v22, v23, "start Flexibile spotter: %s", v24, 0xCu);
    sub_2722039C8(v25);
    MEMORY[0x2743C69C0](v25, -1, -1);
    MEMORY[0x2743C69C0](v24, -1, -1);
  }

  else
  {

    sub_27226ABB0(v15, type metadata accessor for VARuntimeParameters);
  }

  (*(v60 + 8))(v11, v61);
  v30 = v62;
  if ((VARuntimeParameters.allKeywordsAreValid.getter() & 1) == 0)
  {
    v47 = 0x80000002723888A0;
    sub_2722032B4();
    v48 = swift_allocError();
    v50 = 0xD00000000000006DLL;
LABEL_12:
    *v49 = v50;
    v49[1] = v47;
    v63 = v48;
    swift_willThrow();
    return v47;
  }

  v31 = (*((*v20 & *v2) + 0x78))();
  if (!v31)
  {
    v47 = 0x8000000272388910;
    sub_2722032B4();
    v48 = swift_allocError();
    v50 = 0xD000000000000011;
    goto LABEL_12;
  }

  v32 = v31;
  type metadata accessor for VARequestContext(0);
  v33 = v58;
  sub_272216374(v30, v58);
  v34 = v32;
  v35 = sub_272232E00(v34, v33);
  v36 = (*((*v20 & *v2) + 0x128))(v35);
  v37 = (*((*v20 & *v2) + 0x120))(v36);
  if (v37)
  {
    v38 = v20;
    v39 = v37;
    v40 = sub_272377C3C();
    v41 = v57;
    (*(*(v40 - 8) + 56))(v57, 1, 1, v40);
    v42 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v43 = swift_allocObject();
    v43[2] = 0;
    v43[3] = 0;
    v43[4] = v42;
    v43[5] = v39;

    v44 = sub_272262CC0(0, 0, v41, &unk_27237EB50, v43);
    v45 = (*((*v38 & *v2) + 0x140))(v44);
    v46 = (*((*v38 & *v2) + 0x138))(v45);
    if (v46)
    {
      v47 = v46;
    }

    else
    {
      v47 = 0x8000000272388930;
      sub_2722032B4();
      v54 = swift_allocError();
      *v55 = 0xD00000000000001DLL;
      v55[1] = 0x8000000272388930;
      v63 = v54;
      swift_willThrow();
    }
  }

  else
  {
    v47 = 0x800000027238B430;
    sub_2722032B4();
    v52 = swift_allocError();
    *v53 = 0xD00000000000001DLL;
    v53[1] = 0x800000027238B430;
    v63 = v52;
    swift_willThrow();
  }

  return v47;
}

uint64_t sub_2722627BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v6 = sub_27237728C();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27226288C, 0, 0);
}

uint64_t sub_27226288C()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_272262A68;
    v4 = v0[7];

    return sub_272262F64(v4);
  }

  else
  {
    v6 = v0[11];
    v7 = v0[8];
    v8 = v0[9];
    v9 = sub_2722C389C();
    (*(v8 + 16))(v6, v9, v7);
    v10 = sub_27237725C();
    v11 = sub_272377E6C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2721E4000, v10, v11, "startProcessingAudio() is done", v12, 2u);
      MEMORY[0x2743C69C0](v12, -1, -1);
    }

    v14 = v0[10];
    v13 = v0[11];
    v15 = v0[8];
    v16 = v0[9];
    v17 = v0[5];

    (*(v16 + 8))(v13, v15);
    *v17 = 1;

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_272262A68()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_27226AE54;
  }

  else
  {

    v4 = sub_272262B84;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_272262B84()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_2722C389C();
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_27237725C();
  v6 = sub_272377E6C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2721E4000, v5, v6, "startProcessingAudio() is done", v7, 2u);
    MEMORY[0x2743C69C0](v7, -1, -1);
  }

  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[8];
  v11 = v0[9];
  v12 = v0[5];

  (*(v11 + 8))(v8, v10);
  *v12 = 1;

  v13 = v0[1];

  return v13();
}

uint64_t sub_272262CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2721F07F4(a3, v24 - v10, &qword_2808819D8, &qword_27237CB50);
  v12 = sub_272377C3C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2721F40F0(v11, &qword_2808819D8, &qword_27237CB50);
  }

  else
  {
    sub_272377C2C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_272377BDC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2723778BC() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_2721F40F0(a3, &qword_2808819D8, &qword_27237CB50);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2721F40F0(a3, &qword_2808819D8, &qword_27237CB50);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_272262F64(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_2721F065C(&qword_2808819D8, &qword_27237CB50) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272263000, 0, 0);
}

uint64_t sub_272263000()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_272377C3C();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  v7[5] = v3;

  v8 = sub_272262CC0(0, 0, v1, &unk_27237EC10, v7);
  v9 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x310))(v8);
  v5(v1, 1, 1, v4);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  v11[5] = v3;

  v12 = sub_272262CC0(0, 0, v1, &unk_27237EC20, v11);
  v13 = (*((*v9 & *v2) + 0x2F8))(v12);
  v14 = (*((*v9 & *v2) + 0x308))(v13);
  v0[5] = v14;
  if (v14)
  {
    v15 = v14;
    v16 = *(MEMORY[0x277D857C8] + 4);
    v17 = swift_task_alloc();
    v0[6] = v17;
    v18 = sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    *v17 = v0;
    v17[1] = sub_272263458;
    v19 = MEMORY[0x277D839B0];
    v20 = MEMORY[0x277D84950];
    v21 = v0 + 11;
LABEL_5:

    return MEMORY[0x282200430](v21, v15, v19, v18, v20);
  }

  v22 = (*((*v9 & *v0[3]) + 0x2F0))();
  v0[8] = v22;
  if (v22)
  {
    v15 = v22;
    v23 = *(MEMORY[0x277D857C8] + 4);
    v24 = swift_task_alloc();
    v0[9] = v24;
    v18 = sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    *v24 = v0;
    v24[1] = sub_27226372C;
    v19 = MEMORY[0x277D839B0];
    v20 = MEMORY[0x277D84950];
    v21 = (v0 + 89);
    goto LABEL_5;
  }

  (*((*v9 & *v0[3]) + 0x220))();
  v25 = v0[4];

  v26 = v0[1];

  return v26();
}

uint64_t sub_272263458()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = v0;

  v5 = *(v2 + 40);

  if (v0)
  {
    v6 = sub_272263920;
  }

  else
  {
    v6 = sub_27226358C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_27226358C()
{
  v1 = *(v0 + 56);
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0x2F0))();
  *(v0 + 64) = v3;
  if (v3)
  {
    v4 = v3;
    v5 = *(MEMORY[0x277D857C8] + 4);
    v6 = swift_task_alloc();
    *(v0 + 72) = v6;
    v7 = sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    *v6 = v0;
    v6[1] = sub_27226372C;
    v8 = MEMORY[0x277D839B0];
    v9 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 89, v4, v8, v7, v9);
  }

  else
  {
    (*((*v2 & **(v0 + 24)) + 0x220))();
    v10 = *(v0 + 32);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_27226372C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 64);

  if (v0)
  {
    v6 = sub_272263984;
  }

  else
  {
    v6 = sub_272263860;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_272263860()
{
  v1 = *(v0 + 80);
  (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0x220))(0);
  v2 = *(v0 + 32);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_272263920()
{
  v1 = v0[7];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_272263984()
{
  v1 = v0[10];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2722639E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[11] = a1;
  v6 = sub_27237728C();
  v5[14] = v6;
  v7 = *(v6 - 8);
  v5[15] = v7;
  v8 = *(v7 + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272263AB8, 0, 0);
}

uint64_t sub_272263AB8()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 144) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 152) = v3;
    *v3 = v0;
    v3[1] = sub_272263EB0;
    v4 = *(v0 + 104);

    return sub_2722652D4(v4);
  }

  else
  {
    v6 = *(v0 + 136);
    v7 = *(v0 + 112);
    v8 = *(v0 + 120);
    v9 = sub_2722C389C();
    (*(v8 + 16))(v6, v9, v7);
    v10 = sub_27237725C();
    v11 = sub_272377E6C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2721E4000, v10, v11, "sendAudioToSpeechApiTask() is done", v12, 2u);
      MEMORY[0x2743C69C0](v12, -1, -1);
    }

    v13 = *(v0 + 136);
    v14 = *(v0 + 112);
    v15 = *(v0 + 120);
    v16 = *(v0 + 96);

    (*(v15 + 8))(v13, v14);
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = (*((*MEMORY[0x277D85000] & *v17) + 0x2D8))();
      *(v0 + 168) = v19;

      v20 = *(*v19 + 128);
      v32 = (v20 + *v20);
      v21 = v20[1];
      v22 = swift_task_alloc();
      *(v0 + 176) = v22;
      *v22 = v0;
      v22[1] = sub_272264324;

      return v32();
    }

    else
    {
      v23 = *(v0 + 96);
      swift_beginAccess();
      v24 = swift_unknownObjectWeakLoadStrong();
      if (v24 && (v25 = *(v24 + OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_speechAnalyzer), *(v0 + 192) = v25, v26 = v24, , v26, v25))
      {
        v27 = *(MEMORY[0x277CDCA48] + 4);
        v28 = swift_task_alloc();
        *(v0 + 200) = v28;
        *v28 = v0;
        v28[1] = sub_272264568;

        return MEMORY[0x28212BBF0]();
      }

      else
      {
        v30 = *(v0 + 128);
        v29 = *(v0 + 136);
        **(v0 + 88) = 1;

        v31 = *(v0 + 8);

        return v31();
      }
    }
  }
}

uint64_t sub_272263EB0()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v6 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_2722646FC;
  }

  else
  {

    v4 = sub_272263FCC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_272263FCC()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = sub_2722C389C();
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_27237725C();
  v6 = sub_272377E6C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2721E4000, v5, v6, "sendAudioToSpeechApiTask() is done", v7, 2u);
    MEMORY[0x2743C69C0](v7, -1, -1);
  }

  v8 = *(v0 + 136);
  v9 = *(v0 + 112);
  v10 = *(v0 + 120);
  v11 = *(v0 + 96);

  (*(v10 + 8))(v8, v9);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = (*((*MEMORY[0x277D85000] & *Strong) + 0x2D8))();
    *(v0 + 168) = v14;

    v15 = *(*v14 + 128);
    v28 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    *(v0 + 176) = v17;
    *v17 = v0;
    v17[1] = sub_272264324;

    return v28();
  }

  else
  {
    v19 = *(v0 + 96);
    swift_beginAccess();
    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20 && (v21 = *(v20 + OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_speechAnalyzer), *(v0 + 192) = v21, v22 = v20, , v22, v21))
    {
      v23 = *(MEMORY[0x277CDCA48] + 4);
      v24 = swift_task_alloc();
      *(v0 + 200) = v24;
      *v24 = v0;
      v24[1] = sub_272264568;

      return MEMORY[0x28212BBF0]();
    }

    else
    {
      v26 = *(v0 + 128);
      v25 = *(v0 + 136);
      **(v0 + 88) = 1;

      v27 = *(v0 + 8);

      return v27();
    }
  }
}

uint64_t sub_272264324()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = sub_2722648B0;
  }

  else
  {
    v5 = *(v2 + 168);

    v4 = sub_272264440;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_272264440()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = *(Strong + OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_speechAnalyzer), *(v0 + 192) = v3, v4 = Strong, , v4, v3))
  {
    v5 = *(MEMORY[0x277CDCA48] + 4);
    v6 = swift_task_alloc();
    *(v0 + 200) = v6;
    *v6 = v0;
    v6[1] = sub_272264568;

    return MEMORY[0x28212BBF0]();
  }

  else
  {
    v8 = *(v0 + 128);
    v7 = *(v0 + 136);
    **(v0 + 88) = 1;

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_272264568()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = sub_272264A64;
  }

  else
  {
    v5 = *(v2 + 192);

    v4 = sub_272264684;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_272264684()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  **(v0 + 88) = 1;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2722646FC()
{
  v1 = *(v0 + 160);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);
  v5 = sub_2722C389C();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_27237725C();
  v8 = sub_272377E8C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2721E4000, v7, v8, "Error processing audio: %@", v9, 0xCu);
    sub_2721F40F0(v10, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v10, -1, -1);
    MEMORY[0x2743C69C0](v9, -1, -1);
  }

  v14 = *(v0 + 128);
  v13 = *(v0 + 136);
  v15 = *(v0 + 112);
  v16 = *(v0 + 120);

  (*(v16 + 8))(v14, v15);
  swift_willThrow();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2722648B0()
{
  v1 = v0[21];

  v2 = v0[23];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = sub_2722C389C();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_27237725C();
  v9 = sub_272377E8C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_2721E4000, v8, v9, "Error processing audio: %@", v10, 0xCu);
    sub_2721F40F0(v11, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v11, -1, -1);
    MEMORY[0x2743C69C0](v10, -1, -1);
  }

  v15 = v0[16];
  v14 = v0[17];
  v16 = v0[14];
  v17 = v0[15];

  (*(v17 + 8))(v15, v16);
  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_272264A64()
{
  v1 = v0[24];

  v2 = v0[26];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = sub_2722C389C();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_27237725C();
  v9 = sub_272377E8C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_2721E4000, v8, v9, "Error processing audio: %@", v10, 0xCu);
    sub_2721F40F0(v11, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v11, -1, -1);
    MEMORY[0x2743C69C0](v10, -1, -1);
  }

  v15 = v0[16];
  v14 = v0[17];
  v16 = v0[14];
  v17 = v0[15];

  (*(v17 + 8))(v15, v16);
  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_272264C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v6 = sub_27237728C();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272264CE8, 0, 0);
}

uint64_t sub_272264CE8()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_272264EC4;
    v4 = v0[7];

    return sub_272266018(v4);
  }

  else
  {
    v6 = v0[11];
    v7 = v0[8];
    v8 = v0[9];
    v9 = sub_2722C389C();
    (*(v8 + 16))(v6, v9, v7);
    v10 = sub_27237725C();
    v11 = sub_272377E6C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2721E4000, v10, v11, "processSpeechApiResults() is done", v12, 2u);
      MEMORY[0x2743C69C0](v12, -1, -1);
    }

    v14 = v0[10];
    v13 = v0[11];
    v15 = v0[8];
    v16 = v0[9];
    v17 = v0[5];

    (*(v16 + 8))(v13, v15);
    *v17 = 1;

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_272264EC4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_27226511C;
  }

  else
  {

    v4 = sub_272264FE0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_272264FE0()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_2722C389C();
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_27237725C();
  v6 = sub_272377E6C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2721E4000, v5, v6, "processSpeechApiResults() is done", v7, 2u);
    MEMORY[0x2743C69C0](v7, -1, -1);
  }

  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[8];
  v11 = v0[9];
  v12 = v0[5];

  (*(v11 + 8))(v8, v10);
  *v12 = 1;

  v13 = v0[1];

  return v13();
}

uint64_t sub_27226511C()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);

  v5 = sub_2722C389C();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_27237725C();
  v8 = sub_272377E8C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 112);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_2721E4000, v7, v8, "Error processing audio: %@", v10, 0xCu);
    sub_2721F40F0(v11, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v11, -1, -1);
    MEMORY[0x2743C69C0](v10, -1, -1);
  }

  v14 = *(v0 + 112);
  v16 = *(v0 + 80);
  v15 = *(v0 + 88);
  v17 = *(v0 + 64);
  v18 = *(v0 + 72);

  (*(v18 + 8))(v16, v17);
  swift_willThrow();

  v19 = *(v0 + 8);
  v20 = *(v0 + 112);

  return v19();
}

uint64_t sub_2722652D4(uint64_t *a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v4 = sub_2723773DC();
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();
  v7 = sub_27237728C();
  v2[7] = v7;
  v8 = *(v7 - 8);
  v2[8] = v8;
  v9 = *(v8 + 64) + 15;
  v2[9] = swift_task_alloc();
  v10 = *a1;
  v11 = *(*a1 + 368);
  v2[10] = v11;
  v2[11] = (v10 + 368) & 0xFFFFFFFFFFFFLL | 0x454C000000000000;
  v17 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v2[12] = v13;
  *v13 = v2;
  v13[1] = sub_2722654C4;
  v14 = v2[11];
  v15 = v2[2];

  return v17();
}

uint64_t sub_2722654C4(char a1)
{
  v2 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 184) = a1;

  return MEMORY[0x2822009F8](sub_2722655C4, 0, 0);
}

uint64_t sub_2722655C4()
{
  if (*(v0 + 184))
  {
    v1 = *(v0 + 72);
    v2 = *(v0 + 48);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 16);
    v6 = sub_27222CD4C();
    v7 = *(*v5 + 384);
    v11 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    *(v0 + 104) = v9;
    *v9 = v0;
    v9[1] = sub_272265754;
    v10 = *(v0 + 16);

    return (v11)(0, 1, v6 & 1);
  }
}

uint64_t sub_272265754(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 104);
  v8 = *v3;

  if (v2)
  {
    v9 = v6[9];
    v10 = v6[6];

    v11 = *(v8 + 8);

    return v11();
  }

  else
  {
    v6[14] = a2;
    v6[15] = a1;

    return MEMORY[0x2822009F8](sub_2722658C4, 0, 0);
  }
}

uint64_t sub_2722658C4()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = *(v0 + 112);
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3._rawValue = *(v0 + 120);
  }

  else
  {
    v3._rawValue = MEMORY[0x277D84F90];
  }

  if (*(v3._rawValue + 2))
  {
    v4 = (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0x2D8))();
    *(v0 + 136) = v4;
    convert(audioBytes:)(v3);

    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v6 = *(v0 + 48);
      CMTimeMake((v0 + 160), v2, 1);
      v7 = *(v0 + 160);
      v8 = *(v0 + 168);
      v9 = *(v0 + 176);
      sub_2723773BC();
      v10 = *(*v4 + 120);
      v29 = (v10 + *v10);
      v11 = v10[1];
      v12 = swift_task_alloc();
      *(v0 + 144) = v12;
      *v12 = v0;
      v12[1] = sub_272265D94;
      v13 = *(v0 + 48);

      return v29(v13);
    }
  }

  else
  {
    v15 = *(v0 + 64);
    v14 = *(v0 + 72);
    v16 = *(v0 + 56);

    v17 = sub_2722C389C();
    (*(v15 + 16))(v14, v17, v16);
    v18 = sub_27237725C();
    v19 = sub_272377EAC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2721E4000, v18, v19, "Stop(): processing was stopped, break out of sendAudioToSpeechApi()", v20, 2u);
      MEMORY[0x2743C69C0](v20, -1, -1);
    }

    v22 = *(v0 + 64);
    v21 = *(v0 + 72);
    v23 = *(v0 + 56);
    v24 = *(v0 + 16);

    (*(v22 + 8))(v21, v23);
    v28 = (*v24 + 360);
    v30 = (*v28 + **v28);
    v25 = (*v28)[1];
    v26 = swift_task_alloc();
    *(v0 + 128) = v26;
    *v26 = v0;
    v26[1] = sub_272265C64;
    v27 = *(v0 + 16);

    return v30();
  }

  return result;
}

uint64_t sub_272265C64()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v7 = *v0;

  v3 = *(v1 + 72);
  v4 = *(v1 + 48);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_272265D94()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;

  if (v0)
  {
    v4 = v3[17];
    (*(v3[5] + 8))(v3[6], v3[4]);

    return MEMORY[0x2822009F8](sub_272265FA8, 0, 0);
  }

  else
  {
    v5 = v3[17];
    (*(v3[5] + 8))(v3[6], v3[4]);

    v6 = v3[11];
    v12 = (v3[10] + *v3[10]);
    v7 = *(v3[10] + 4);
    v8 = swift_task_alloc();
    v3[12] = v8;
    *v8 = v3;
    v8[1] = sub_2722654C4;
    v9 = v3[11];
    v10 = v3[2];

    return v12();
  }
}

uint64_t sub_272265FA8()
{
  v1 = v0[19];
  v2 = v0[9];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_272266018(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = sub_272376C2C();
  v2[26] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v5 = sub_272376C3C();
  v2[28] = v5;
  v6 = *(v5 - 8);
  v2[29] = v6;
  v7 = *(v6 + 64) + 15;
  v2[30] = swift_task_alloc();
  v8 = sub_2723773FC();
  v2[31] = v8;
  v9 = *(v8 - 8);
  v2[32] = v9;
  v10 = *(v9 + 64) + 15;
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v11 = sub_27237736C();
  v2[35] = v11;
  v12 = *(v11 - 8);
  v2[36] = v12;
  v13 = *(v12 + 64) + 15;
  v2[37] = swift_task_alloc();
  v14 = *(*(sub_2721F065C(&qword_280882018, &unk_27237EBF0) - 8) + 64) + 15;
  v2[38] = swift_task_alloc();
  v15 = sub_2721F065C(&qword_280882020, &unk_27237E460);
  v2[39] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v2[40] = swift_task_alloc();
  v17 = sub_2721F065C(&qword_280882028, &qword_27237EC00);
  v2[41] = v17;
  v18 = *(v17 - 8);
  v2[42] = v18;
  v19 = *(v18 + 64) + 15;
  v2[43] = swift_task_alloc();
  v20 = sub_27237728C();
  v2[44] = v20;
  v21 = *(v20 - 8);
  v2[45] = v21;
  v22 = *(v21 + 64) + 15;
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v23 = sub_27237768C();
  v2[54] = v23;
  v24 = *(v23 - 8);
  v2[55] = v24;
  v25 = *(v24 + 64) + 15;
  v2[56] = swift_task_alloc();
  v26 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  v2[57] = v26;
  v27 = *(v26 - 8);
  v2[58] = v27;
  v28 = *(v27 + 64) + 15;
  v2[59] = swift_task_alloc();
  v29 = *(*(type metadata accessor for VASpeechBiasData() - 8) + 64) + 15;
  v2[60] = swift_task_alloc();
  v30 = sub_272376EBC();
  v2[61] = v30;
  v31 = *(v30 - 8);
  v2[62] = v31;
  v32 = *(v31 + 64) + 15;
  v2[63] = swift_task_alloc();
  v33 = type metadata accessor for VARuntimeParameters();
  v2[64] = v33;
  v34 = *(*(v33 - 8) + 64) + 15;
  v2[65] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722664D4, 0, 0);
}

uint64_t sub_2722664D4()
{
  v1 = *(v0 + 520);
  v3 = *(v0 + 504);
  v2 = *(v0 + 512);
  v4 = *(v0 + 488);
  v5 = *(v0 + 496);
  v6 = *(v0 + 200);
  (*(**(v0 + 192) + 312))();
  v7 = *(v6 + OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_stringMatchingStrategy);
  *(v0 + 528) = v7;
  v8 = *(v2 + 108);
  *(v0 + 856) = v8;
  (*(v5 + 16))(v3, v1 + v8, v4);
  (*(*v7 + 264))(v3);
  v9 = *(v1 + 80);
  if (*(v9 + 16))
  {
    v10 = v9 + 64;
    v11 = -1;
    v12 = -1 << *(v9 + 32);
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v13 = v11 & *(v9 + 64);
    v14 = (63 - v12) >> 6;

    v16 = 0;
    v17 = MEMORY[0x277D84F90];
    v50 = result;
    while (v13)
    {
LABEL_11:
      v19 = (v16 << 9) | (8 * __clz(__rbit64(v13)));
      v20 = *(*(result + 56) + v19);
      v21 = *(v20 + 16);
      v22 = *(v17 + 2);
      v23 = v22 + v21;
      if (__OFADD__(v22, v21))
      {
        goto LABEL_37;
      }

      v24 = *(*(result + 56) + v19);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v23 > *(v17 + 3) >> 1)
      {
        if (v22 <= v23)
        {
          v25 = v22 + v21;
        }

        else
        {
          v25 = v22;
        }

        result = sub_2721FFBF8(result, v25, 1, v17);
        v17 = result;
      }

      v13 &= v13 - 1;
      if (*(v20 + 16))
      {
        if ((*(v17 + 3) >> 1) - *(v17 + 2) < v21)
        {
          goto LABEL_39;
        }

        swift_arrayInitWithCopy();

        result = v50;
        if (v21)
        {
          v26 = *(v17 + 2);
          v27 = __OFADD__(v26, v21);
          v28 = v26 + v21;
          if (v27)
          {
            goto LABEL_40;
          }

          *(v17 + 2) = v28;
        }
      }

      else
      {

        result = v50;
        if (v21)
        {
          goto LABEL_38;
        }
      }
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v14)
      {

        goto LABEL_24;
      }

      v13 = *(v10 + 8 * v18);
      ++v16;
      if (v13)
      {
        v16 = v18;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  else
  {
    v37 = *(v0 + 520);
    v38 = *v37;
    v39 = *(*v37 + 16);
    if (v39)
    {
      sub_272203AC4();
      v17 = MEMORY[0x277D84F90];
      v40 = (v38 + 40);
      do
      {
        v41 = *v40;
        *(v0 + 120) = *(v40 - 1);
        *(v0 + 128) = v41;
        *(v0 + 136) = 95;
        *(v0 + 144) = 0xE100000000000000;
        *(v0 + 152) = 32;
        *(v0 + 160) = 0xE100000000000000;
        v42 = sub_2723780FC();
        v44 = sub_2722D6FA4(v42, v43);
        v46 = v45;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_2721FFBF8(0, *(v17 + 2) + 1, 1, v17);
        }

        v48 = *(v17 + 2);
        v47 = *(v17 + 3);
        if (v48 >= v47 >> 1)
        {
          v17 = sub_2721FFBF8((v47 > 1), v48 + 1, 1, v17);
        }

        *(v17 + 2) = v48 + 1;
        v49 = &v17[16 * v48];
        *(v49 + 4) = v44;
        *(v49 + 5) = v46;
        v40 += 2;
        --v39;
      }

      while (v39);
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

LABEL_24:
    *(v0 + 536) = v17;
    v29 = *(v0 + 192);
    *(v0 + 869) = *(*(v0 + 520) + 89);
    *(v0 + 544) = VARuntimeParameters.asrMatchToKeywords()();
    v30 = *v29;
    v31 = *(*v29 + 368);
    *(v0 + 552) = v31;
    *(v0 + 560) = (v30 + 368) & 0xFFFFFFFFFFFFLL | 0x454C000000000000;
    *(v0 + 568) = OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_speechAnalyzer;
    *(v0 + 576) = OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_gotPartialResult;
    *(v0 + 584) = OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_gotFinalResult;
    *(v0 + 592) = OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_asrDelegate;
    *(v0 + 600) = OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_speechEnded;
    v32 = MEMORY[0x277CDCBA0];
    *(v0 + 860) = *MEMORY[0x277CDCBB8];
    *(v0 + 864) = *v32;
    v51 = (v31 + *v31);
    v33 = v31[1];
    v34 = swift_task_alloc();
    *(v0 + 608) = v34;
    *v34 = v0;
    v34[1] = sub_2722669D4;
    v35 = *(v0 + 560);
    v36 = *(v0 + 192);

    return v51();
  }

  return result;
}

uint64_t sub_2722669D4(char a1)
{
  v2 = *(*v1 + 608);
  v4 = *v1;
  *(*v1 + 870) = a1;

  return MEMORY[0x2822009F8](sub_272266AD4, 0, 0);
}

uint64_t sub_272266AD4()
{
  if (*(v0 + 870))
  {
    v1 = *(v0 + 544);
    v2 = *(v0 + 536);
    v3 = *(v0 + 520);
    v4 = *(v0 + 504);
    v5 = *(v0 + 472);
    v6 = *(v0 + 480);
    v7 = *(v0 + 448);
    v9 = *(v0 + 416);
    v8 = *(v0 + 424);
    v10 = *(v0 + 408);
    v20 = *(v0 + 400);
    v21 = *(v0 + 392);
    v22 = *(v0 + 384);
    v23 = *(v0 + 376);
    v24 = *(v0 + 368);
    v25 = *(v0 + 344);
    v26 = *(v0 + 320);
    v27 = *(v0 + 304);
    v28 = *(v0 + 296);
    v29 = *(v0 + 272);
    v30 = *(v0 + 264);
    v31 = *(v0 + 240);
    v32 = *(v0 + 216);

    sub_27226ABB0(v3, type metadata accessor for VARuntimeParameters);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *((*MEMORY[0x277D85000] & **(v0 + 200)) + 0x258);
    v33 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    *(v0 + 616) = v15;
    *v15 = v0;
    v15[1] = sub_272266DB0;
    v16 = *(v0 + 536);
    v17 = *(v0 + 520);
    v18 = *(v0 + 480);
    v19 = *(v0 + 200);

    return v33(v18, v16, v17);
  }
}

uint64_t sub_272266DB0()
{
  v2 = *v1;
  v3 = *(*v1 + 616);
  v8 = *v1;
  *(*v1 + 624) = v0;

  if (v0)
  {
    v4 = *(v2 + 544);
    v5 = *(v2 + 536);

    v6 = sub_272269664;
  }

  else
  {
    v6 = sub_272266ED8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_272266ED8()
{
  v1 = *(v0 + 869);
  v2 = *(v0 + 856);
  v3 = *(v0 + 520);
  v4 = *(v0 + 448);
  type metadata accessor for VASpeechAPI();
  VATaskHintCommand.speechTaskHint()(v4);
  *(v0 + 868) = *(v3 + 88);
  v5 = swift_task_alloc();
  *(v0 + 632) = v5;
  *v5 = v0;
  v5[1] = sub_272266FC8;
  v6 = *(v0 + 536);
  v7 = *(v0 + 472);
  v8 = *(v0 + 480);
  v9 = *(v0 + 448);

  return static VASpeechAPI.prepareTranscriber(taskHint:uniqueNames:locale:biasOptions:biasData:)(v7, v9, v6, v3 + v2, (v0 + 868), v8);
}

uint64_t sub_272266FC8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 632);
  v10 = *v3;
  v4[80] = a1;
  v4[81] = a2;
  v4[82] = v2;

  if (v2)
  {
    v6 = v4[68];
    v7 = v4[67];
    (*(v4[55] + 8))(v4[56], v4[54]);

    v8 = sub_2722697FC;
  }

  else
  {
    (*(v4[55] + 8))(v4[56], v4[54]);
    v8 = sub_272267134;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_272267134()
{
  v1 = v0[71];
  v2 = v0[59];
  v3 = v0[57];
  v4 = v0[25];
  v5 = *(v4 + v1);
  *(v4 + v1) = v0[80];

  v6 = sub_272377C5C();
  v7 = *MEMORY[0x277D85000] & *v4;
  v8 = *(v7 + 0x2D8);
  v0[83] = v8;
  v0[84] = (v7 + 728) & 0xFFFFFFFFFFFFLL | 0x2DD4000000000000;
  v9 = v8(v6);
  v0[85] = v9;
  v10 = *v9 + 136;
  v0[86] = *v10;
  v0[87] = v10 & 0xFFFFFFFFFFFFLL | 0x65F000000000000;

  return MEMORY[0x2822009F8](sub_272267264, v9, 0);
}

uint64_t sub_272267264()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 680);
  (*(v0 + 688))(*(v0 + 472));

  return MEMORY[0x2822009F8](sub_2722672E0, 0, 0);
}

uint64_t sub_2722672E0()
{
  v1 = v0[53];
  v2 = v0[44];
  v3 = v0[45];
  v4 = sub_2722C389C();
  v0[88] = v4;
  v5 = *(v3 + 16);
  v0[89] = v5;
  v0[90] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_27237725C();
  v7 = sub_272377E7C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2721E4000, v6, v7, "Speech API actively listening", v8, 2u);
    MEMORY[0x2743C69C0](v8, -1, -1);
  }

  v9 = v0[81];
  v10 = v0[53];
  v11 = v0[44];
  v12 = v0[45];
  v13 = v0[43];
  v15 = v0[39];
  v14 = v0[40];

  v16 = *(v12 + 8);
  v0[91] = v16;
  v16(v10, v11);
  sub_27237738C();
  v0[92] = swift_getOpaqueTypeConformance2();
  sub_272377D0C();
  v17 = v0[92];
  v18 = v0[41];
  v19 = v0[39];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = *(MEMORY[0x277D856D8] + 4);
  v22 = swift_task_alloc();
  v0[93] = v22;
  *v22 = v0;
  v22[1] = sub_2722674E0;
  v23 = v0[43];
  v24 = v0[41];
  v25 = v0[38];

  return MEMORY[0x282200310](v25, 0, 0, v0 + 21, v24, AssociatedConformanceWitness);
}

uint64_t sub_2722674E0()
{
  v2 = *v1;
  v3 = *(*v1 + 744);
  v8 = *v1;
  *(*v1 + 752) = v0;

  if (v0)
  {
    v4 = *(v2 + 544);
    v5 = *(v2 + 536);

    v6 = sub_2722699B0;
  }

  else
  {
    v6 = sub_272267608;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_272267608()
{
  v1 = v0[38];
  v2 = v0[35];
  v3 = v0[36];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[81];
    v5 = v0[80];
    v7 = v0[59];
    v6 = v0[60];
    v8 = v0[57];
    v9 = v0[58];
    v11 = v0[42];
    v10 = v0[43];
    v12 = v0[41];

    (*(v11 + 8))(v10, v12);
    (*(v9 + 8))(v7, v8);
    sub_27226ABB0(v6, type metadata accessor for VASpeechBiasData);
    v13 = v0[70];
    v25 = (v0[69] + *v0[69]);
    v14 = *(v0[69] + 4);
    v15 = swift_task_alloc();
    v0[76] = v15;
    *v15 = v0;
    v15[1] = sub_2722669D4;
    v16 = v0[70];
    v17 = v0[24];

    return v25();
  }

  else
  {
    v19 = v0[84];
    v20 = v0[83];
    v21 = v0[25];
    v22 = (*(v3 + 32))(v0[37], v1, v2);
    v23 = v20(v22);
    v0[95] = v23;
    v24 = *v23 + 144;
    v0[96] = *v24;
    v0[97] = v24 & 0xFFFFFFFFFFFFLL | 0x4D8B000000000000;

    return MEMORY[0x2822009F8](sub_272267848, v23, 0);
  }
}

uint64_t sub_272267848()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 760);
  (*(v0 + 768))();

  return MEMORY[0x2822009F8](sub_2722678C0, 0, 0);
}

uint64_t sub_2722678C0()
{
  v289 = v0;
  v280 = *(v0 + 864);
  v1 = *(v0 + 860);
  v2 = *(v0 + 296);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 248);
  v6 = *(v0 + 256);
  sub_27237734C();
  v7 = *(v6 + 104);
  v7(v4, v1, v5);
  v8 = sub_2723773EC();
  v9 = *(v6 + 8);
  v9(v4, v5);
  v9(v3, v5);
  sub_27237734C();
  v7(v4, v280, v5);
  LODWORD(v2) = sub_2723773EC();
  v9(v4, v5);
  v10 = (v9)(v3, v5);
  LOBYTE(v241) = v2;
  BYTE4(v241) = v8;
  v11 = v8 | v2;
  if (((v8 | v2) & 1) == 0)
  {
    v12 = *(**(*(v0 + 200) + *(v0 + 576)) + 168);

    v12(1);
  }

  v13 = *(v0 + 296);
  v14 = *(MEMORY[0x2743C44B0](v10) + 16);

  if (!v14)
  {
    (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
    v33 = *(v0 + 736);
    v34 = *(v0 + 328);
    v35 = *(v0 + 312);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v37 = *(MEMORY[0x277D856D8] + 4);
    v38 = swift_task_alloc();
    *(v0 + 744) = v38;
    *v38 = v0;
    v38[1] = sub_2722674E0;
    v39 = *(v0 + 344);
    v40 = *(v0 + 328);
    v41 = *(v0 + 304);

    return MEMORY[0x282200310](v41, 0, 0, v0 + 168, v40, AssociatedConformanceWitness);
  }

  v275 = v11;
  v16 = *(v0 + 296);
  *(v0 + 176) = MEMORY[0x277D84F90];
  v17 = MEMORY[0x2743C44B0](v15);
  v18 = *(v17 + 16);
  v258 = v0;
  if (v18)
  {
    v19 = *(v0 + 232);
    v20 = v17 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v281 = *(v19 + 72);
    v21 = *(v19 + 16);
    v22 = MEMORY[0x277D84F90];
    do
    {
      v24 = *(v0 + 232);
      v23 = *(v0 + 240);
      v25 = *(v0 + 224);
      v26 = *(v0 + 208);
      v21(v23, v20, v25);
      sub_272376C1C();
      (*(v24 + 8))(v23, v25);
      sub_27226AC10(&qword_280882030, MEMORY[0x277CC8B30]);
      v27 = sub_272377A3C();
      v29 = v28;
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_2721FFBF8(0, *(v22 + 2) + 1, 1, v22);
      }

      v31 = *(v22 + 2);
      v30 = *(v22 + 3);
      if (v31 >= v30 >> 1)
      {
        v22 = sub_2721FFBF8((v30 > 1), v31 + 1, 1, v22);
      }

      *(v22 + 2) = v31 + 1;
      v32 = &v22[16 * v31];
      *(v32 + 4) = v27;
      *(v32 + 5) = v29;
      v0 = v258;
      *(v258 + 176) = v22;
      swift_endAccess();
      v20 += v281;
      --v18;
    }

    while (v18);
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  *(v0 + 784) = v22;
  v42 = *(v0 + 720);
  (*(v0 + 712))(*(v0 + 416), *(v0 + 704), *(v0 + 352));
  v43 = sub_27237725C();
  v44 = sub_272377E6C();
  v45 = os_log_type_enabled(v43, v44);
  v46 = *(v0 + 728);
  v47 = *(v0 + 416);
  v48 = *(v0 + 352);
  v49 = *(v0 + 360);
  if (v45)
  {
    v50 = swift_slowAlloc();
    v271 = v46;
    v51 = swift_slowAlloc();
    *&v288[0] = v51;
    *v50 = 67109634;
    *(v50 + 4) = BYTE4(v241) & 1;
    *(v50 + 8) = 1024;
    *(v50 + 10) = v241 & 1;
    *(v50 + 14) = 2080;

    v53 = MEMORY[0x2743C4C60](v52, MEMORY[0x277D837D0]);
    v55 = v54;
    v56 = v22;

    v57 = sub_2721FFD04(v53, v55, v288);

    *(v50 + 16) = v57;
    _os_log_impl(&dword_2721E4000, v43, v44, "nBest[isFinal %{BOOL}d isFinalTerminal: %{BOOL}d]: %s", v50, 0x18u);
    sub_2722039C8(v51);
    MEMORY[0x2743C69C0](v51, -1, -1);
    MEMORY[0x2743C69C0](v50, -1, -1);

    v271(v47, v48);
  }

  else
  {
    v56 = v22;

    v46(v47, v48);
  }

  v58 = v258;
  v59 = v56;
  if ((v275 & 1) == 0)
  {
    if (*(*(v258 + 520) + 77) != 1)
    {
      v184 = *(**(*(v258 + 200) + *(v258 + 576)) + 160);

      v186 = v184(v185);

      if ((v186 & 1) == 0)
      {
        v188 = *(v258 + 720);
        (*(v258 + 712))(*(v258 + 368), *(v258 + 704), *(v258 + 352));
        v189 = sub_27237725C();
        v190 = sub_272377E7C();
        if (os_log_type_enabled(v189, v190))
        {
          v191 = swift_slowAlloc();
          *v191 = 0;
          _os_log_impl(&dword_2721E4000, v189, v190, "Got first partial result after speech ended", v191, 2u);
          MEMORY[0x2743C69C0](v191, -1, -1);
        }

        v192 = *(v258 + 728);
        v193 = *(v258 + 584);
        v194 = *(v258 + 576);
        v196 = *(v258 + 360);
        v195 = *(v258 + 368);
        v197 = *(v258 + 352);
        v198 = *(v258 + 200);

        v192(v195, v197);
        v199 = *(**(v198 + v194) + 168);

        v199(1);

        v200 = *(**(v198 + v193) + 168);

        v200(0);
      }

      v201 = *(v258 + 672);
      v202 = *(v258 + 200);
      v203 = (*(v258 + 664))(v187);
      *(v258 + 832) = v203;
      v204 = *v203 + 136;
      *(v258 + 840) = *v204;
      *(v258 + 848) = v204 & 0xFFFFFFFFFFFFLL | 0x65F000000000000;

      return MEMORY[0x2822009F8](sub_2722694F0, v203, 0);
    }

    v241 = 0;
  }

  v60 = *(v56 + 2);
  v243 = v60;
  if (v60)
  {
    v242 = v56 + 32;
    v240 = *(v258 + 752);

    v239 = 0;
    v61 = 0;
    while (2)
    {
      if (v61 >= *(v59 + 2))
      {
        __break(1u);
        return MEMORY[0x28212BBF0]();
      }

      v245 = v59;
      v62 = *(v58 + 544);
      v63 = &v242[16 * v61];
      v64 = v63[1];
      v272 = *v63;
      v244 = (v61 + 1);
      v65 = -1 << *(v62 + 32);
      if (-v65 < 64)
      {
        v66 = ~(-1 << -v65);
      }

      else
      {
        v66 = -1;
      }

      v67 = v66 & *(v62 + 64);
      v68 = (63 - v65) >> 6;

      v69 = 0;
      v249 = v68;
      v251 = v64;
      if (v67)
      {
        while (1)
        {
          while (1)
          {
            v70 = *(v58 + 544);
LABEL_38:
            v72 = *(v58 + 720);
            v73 = (v69 << 10) | (16 * __clz(__rbit64(v67)));
            v74 = (*(v70 + 48) + v73);
            v76 = *v74;
            v75 = v74[1];
            v77 = (*(v70 + 56) + v73);
            v78 = v77[1];
            v282 = *v77;
            (*(v58 + 712))(*(v58 + 408), *(v58 + 704), *(v58 + 352));
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();

            v79 = sub_27237725C();
            v80 = sub_272377E7C();

            v276 = v78;

            v81 = os_log_type_enabled(v79, v80);
            v82 = *(v58 + 408);
            v261 = v82;
            v267 = *(v58 + 728);
            v84 = *(v58 + 352);
            v83 = *(v58 + 360);
            if (v81)
            {
              v253 = v75;
              v85 = swift_slowAlloc();
              v86 = swift_slowAlloc();
              *&v288[0] = v86;
              *v85 = 136315650;
              *(v85 + 4) = sub_2721FFD04(v76, v253, v288);
              *(v85 + 12) = 2080;
              *(v85 + 14) = sub_2721FFD04(v282, v276, v288);
              *(v85 + 22) = 2080;
              v87 = sub_2723778AC();
              v89 = sub_2721FFD04(v87, v88, v288);
              v64 = v251;

              *(v85 + 24) = v89;
              _os_log_impl(&dword_2721E4000, v79, v80, "Looking for %s - would match keyword %s - in %s", v85, 0x20u);
              swift_arrayDestroy();
              v90 = v86;
              v58 = v258;
              MEMORY[0x2743C69C0](v90, -1, -1);
              v91 = v85;
              v75 = v253;
              MEMORY[0x2743C69C0](v91, -1, -1);
            }

            v267(v261, v84);
            v268 = (v67 - 1) & v67;
            v92 = *(v58 + 528);
            v262 = (*(*v92 + 288))(v76, v75, v272, v64);
            v93 = (*(*v92 + 296))(v76, v75, v272, v64);

            v94 = sub_272241A18();
            v95 = sub_272241A18();
            v96 = sub_272324094();
            v97 = sub_272324094();
            sub_27232409C(v282, v276, v96, v97, v262 & 1, v93 & 1, 1, 0, v288, 1.0, v94, v95, 0);
            v98 = v288[3];
            *(v58 + 48) = v288[2];
            *(v58 + 64) = v98;
            *(v58 + 80) = v288[4];
            v99 = v288[1];
            *(v58 + 16) = v288[0];
            *(v58 + 32) = v99;
            v254 = v76;
            v100 = v76;
            v101 = v75;
            v102 = (*(*v92 + 280))(v100, v75, v272, v64);
            v103 = *(v58 + 720);
            v104 = v64;
            v105 = *(v58 + 712);
            v106 = *(v58 + 704);
            v107 = *(v58 + 352);
            if (v102)
            {
              break;
            }

            v108 = *(v58 + 384);
            sub_27226AC58(v58 + 16);
            v105(v108, v106, v107);
            v64 = v104;

            v109 = v101;

            v110 = sub_27237725C();
            v111 = sub_272377E7C();

            v112 = os_log_type_enabled(v110, v111);
            v113 = *(v58 + 728);
            v263 = *(v58 + 384);
            v114 = *(v58 + 352);
            v115 = *(v58 + 360);
            if (v112)
            {
              v116 = swift_slowAlloc();
              v117 = swift_slowAlloc();
              *&v288[0] = v117;
              *v116 = 136315650;
              v118 = sub_2721FFD04(v254, v109, v288);

              *(v116 + 4) = v118;
              *(v116 + 12) = 2080;
              v119 = sub_2721FFD04(v282, v276, v288);

              *(v116 + 14) = v119;
              v64 = v251;
              *(v116 + 22) = 2080;
              *(v116 + 24) = sub_2721FFD04(v272, v251, v288);
              _os_log_impl(&dword_2721E4000, v110, v111, "Did not match %s from keyword %s in %s", v116, 0x20u);
              swift_arrayDestroy();
              v120 = v117;
              v58 = v258;
              MEMORY[0x2743C69C0](v120, -1, -1);
              MEMORY[0x2743C69C0](v116, -1, -1);
            }

            else
            {
            }

            v113(v263, v114);
            v68 = v249;
            v67 = v268;
            if (!v268)
            {
              goto LABEL_34;
            }
          }

          v105(*(v58 + 400), *(v58 + 704), *(v58 + 352));
          v121 = v104;

          v122 = v75;

          v123 = sub_27237725C();
          v124 = sub_272377E7C();

          v125 = os_log_type_enabled(v123, v124);
          v126 = *(v58 + 728);
          v264 = *(v58 + 400);
          v128 = *(v58 + 352);
          v127 = *(v58 + 360);
          if (v125)
          {
            v129 = swift_slowAlloc();
            v130 = swift_slowAlloc();
            *&v288[0] = v130;
            *v129 = 136315650;
            v131 = sub_2721FFD04(v254, v122, v288);

            *(v129 + 4) = v131;
            v132 = v126;
            *(v129 + 12) = 2080;
            v133 = sub_2721FFD04(v282, v276, v288);

            *(v129 + 14) = v133;
            v121 = v251;
            *(v129 + 22) = 2080;
            v134 = v272;
            *(v129 + 24) = sub_2721FFD04(v272, v251, v288);
            _os_log_impl(&dword_2721E4000, v123, v124, "Did match %s from keyword %s in %s", v129, 0x20u);
            swift_arrayDestroy();
            v135 = v130;
            v58 = v258;
            MEMORY[0x2743C69C0](v135, -1, -1);
            MEMORY[0x2743C69C0](v129, -1, -1);

            v132(v264, v128);
          }

          else
          {

            v126(v264, v128);
            v134 = v272;
          }

          v67 = v268;
          v136 = *(v58 + 200);
          if (*(v136 + *(v58 + 592)))
          {
            if (!*(v245 + 2) || (v134 != *(v245 + 4) || v121 != *(v245 + 5)) && (sub_27237865C() & 1) == 0)
            {
              v137 = *(v58 + 720);
              (*(v58 + 712))(*(v58 + 392), *(v58 + 704), *(v58 + 352));

              v138 = sub_27237725C();
              v139 = sub_272377E7C();

              v140 = os_log_type_enabled(v138, v139);
              v141 = *(v58 + 728);
              v142 = *(v58 + 392);
              v143 = v121;
              v144 = *(v58 + 360);
              v283 = *(v58 + 352);
              if (v140)
              {
                v145 = swift_slowAlloc();
                v146 = swift_slowAlloc();
                *&v288[0] = v146;
                *v145 = 136315394;
                *(v145 + 4) = sub_2721FFD04(v134, v143, v288);
                *(v145 + 12) = 2080;

                v148 = MEMORY[0x2743C4C60](v147, MEMORY[0x277D837D0]);
                v255 = v142;
                v150 = v149;

                v151 = sub_2721FFD04(v148, v150, v288);

                *(v145 + 14) = v151;
                v134 = v272;
                _os_log_impl(&dword_2721E4000, v138, v139, "Picked final %s from n-best: %s", v145, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x2743C69C0](v146, -1, -1);
                v152 = v145;
                v58 = v258;
                MEMORY[0x2743C69C0](v152, -1, -1);

                v141(v255, v283);
              }

              else
              {

                v141(v142, v283);
              }

              v121 = v143;
            }

            type metadata accessor for VAASRResult();

            v153 = sub_2722E2418(v134, v121, BYTE4(v241) & 1, v241 & 1, 0, 0, 0);

            v136 = *(v58 + 200);
            v239 = v153;
          }

          type metadata accessor for VAKeywordResult();
          sub_2721F065C(&qword_2808818B8, &qword_27237CAD0);
          v154 = swift_allocObject();
          v155 = *(v58 + 48);
          v156 = *(v58 + 64);
          v157 = *(v58 + 16);
          v154[3] = *(v58 + 32);
          v154[4] = v155;
          v158 = *(v58 + 80);
          v154[5] = v156;
          v154[6] = v158;
          v154[1] = xmmword_27237AF80;
          v154[2] = v157;
          v159 = VAKeywordResult.__allocating_init(detections:)(v154);
          *(v58 + 184) = v245;

          sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
          sub_272203B18();
          v160 = sub_2723777CC();
          v162 = v161;

          (*((*MEMORY[0x277D85000] & *v136) + 0x3B8))(v159, v134, v251, v160, v162, 1);
          if (v240)
          {
            break;
          }

          v240 = 0;
          v68 = v249;
          v64 = v251;
          if (!v268)
          {
            goto LABEL_34;
          }
        }

LABEL_79:
        v221 = *(v58 + 648);
        v222 = *(v58 + 640);
        v223 = v58;
        v224 = *(v58 + 544);
        v286 = v223[67];
        v273 = v223[59];
        v278 = v223[60];
        v225 = v223[58];
        v226 = v223[42];
        v265 = v223[43];
        v269 = v223[57];
        v227 = v223[36];
        v256 = v223[37];
        v259 = v223[41];
        v228 = v223[35];

        (*(v227 + 8))(v256, v228);
        (*(v226 + 8))(v265, v259);
        (*(v225 + 8))(v273, v269);
        sub_27226ABB0(v278, type metadata accessor for VASpeechBiasData);

        v229 = v223[63];
        v231 = v223[59];
        v230 = v223[60];
        v232 = v223[56];
        v234 = v223[52];
        v233 = v223[53];
        v235 = v223[50];
        v236 = v223[51];
        v246 = v223[49];
        v247 = v223[48];
        v248 = v223[47];
        v250 = v223[46];
        v252 = v223[43];
        v257 = v223[40];
        v260 = v223[38];
        v266 = v223[37];
        v270 = v223[34];
        v274 = v223[33];
        v279 = v223[30];
        v287 = v223[27];
        sub_27226ABB0(v223[65], type metadata accessor for VARuntimeParameters);

        v237 = v223[1];

        return v237();
      }

      while (1)
      {
LABEL_34:
        v71 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          __break(1u);
          goto LABEL_79;
        }

        v70 = *(v58 + 544);
        if (v71 >= v68)
        {
          break;
        }

        v67 = *(v70 + 8 * v71 + 64);
        ++v69;
        if (v67)
        {
          v69 = v71;
          goto LABEL_38;
        }
      }

      v61 = v244;
      v59 = v245;
      if (v244 != v243)
      {
        continue;
      }

      break;
    }

    v60 = v239;
  }

  *(v58 + 800) = v59;
  v163 = v60;
  *(v58 + 792) = v60;
  v164 = *(v58 + 600);
  v165 = *(v58 + 200);
  v166 = *(**(v165 + *(v58 + 584)) + 168);

  v166(1);

  v167 = *(**(v165 + v164) + 160);

  LOBYTE(v165) = v167(v168);

  if ((v165 & 1) == 0)
  {
    v169 = *(v58 + 720);
    (*(v58 + 712))(*(v58 + 376), *(v58 + 704), *(v58 + 352));
    v170 = sub_27237725C();
    v171 = sub_272377E7C();
    if (os_log_type_enabled(v170, v171))
    {
      v172 = swift_slowAlloc();
      *v172 = 0;
      _os_log_impl(&dword_2721E4000, v170, v171, "Got final result before speech ended", v172, 2u);
      MEMORY[0x2743C69C0](v172, -1, -1);
    }

    v173 = *(v58 + 728);
    v174 = *(v58 + 376);
    v175 = *(v58 + 352);
    v176 = *(v58 + 360);

    v173(v174, v175);
  }

  v177 = *(v58 + 568);
  v178 = *(v58 + 472);
  v179 = *(v58 + 456);
  v180 = *(v58 + 200);
  sub_272377C7C();
  v181 = *(v180 + v177);
  *(v58 + 808) = v181;
  if (v181)
  {
    v182 = *(MEMORY[0x277CDCA48] + 4);

    v183 = swift_task_alloc();
    *(v58 + 816) = v183;
    *v183 = v58;
    v183[1] = sub_2722691EC;

    return MEMORY[0x28212BBF0]();
  }

  v205 = *(v58 + 648);

  v284 = *(v58 + 800);
  v206 = *(v58 + 640);
  v207 = *(v58 + 472);
  v277 = *(v58 + 480);
  v209 = *(v58 + 456);
  v208 = *(v58 + 464);
  v210 = *(v58 + 336);
  v211 = *(v58 + 344);
  v212 = *(v58 + 328);
  v213 = *(v58 + 288);
  v214 = *(v58 + 296);
  v215 = *(v58 + 280);

  (*(v213 + 8))(v214, v215);
  (*(v210 + 8))(v211, v212);
  (*(v208 + 8))(v207, v209);
  sub_27226ABB0(v277, type metadata accessor for VASpeechBiasData);

  v216 = *(v58 + 560);
  v285 = (*(v58 + 552) + **(v58 + 552));
  v217 = *(*(v58 + 552) + 4);
  v218 = swift_task_alloc();
  *(v58 + 608) = v218;
  *v218 = v58;
  v218[1] = sub_2722669D4;
  v219 = *(v58 + 560);
  v220 = *(v58 + 192);

  return v285();
}

uint64_t sub_2722691EC()
{
  v2 = *v1;
  v3 = *(*v1 + 816);
  v4 = *v1;
  v2[103] = v0;

  v5 = v2[101];
  if (v0)
  {
    v6 = v2[68];
    v7 = v2[67];

    v8 = sub_272269BB8;
  }

  else
  {

    v8 = sub_272269340;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_272269340()
{
  v1 = v0[99];
  v2 = v0[81];

  v3 = v0[80];
  v4 = v0[59];
  v19 = v0[60];
  v20 = v0[100];
  v5 = v0[57];
  v6 = v0[58];
  v7 = v0[42];
  v8 = v0[43];
  v9 = v0[41];
  v10 = v0[36];
  v11 = v0[37];
  v12 = v0[35];

  (*(v10 + 8))(v11, v12);
  (*(v7 + 8))(v8, v9);
  (*(v6 + 8))(v4, v5);
  sub_27226ABB0(v19, type metadata accessor for VASpeechBiasData);

  v13 = v0[70];
  v21 = (v0[69] + *v0[69]);
  v14 = *(v0[69] + 4);
  v15 = swift_task_alloc();
  v0[76] = v15;
  *v15 = v0;
  v15[1] = sub_2722669D4;
  v16 = v0[70];
  v17 = v0[24];

  return v21();
}

uint64_t sub_2722694F0()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 832);
  (*(v0 + 840))(*(v0 + 472));

  return MEMORY[0x2822009F8](sub_27226956C, 0, 0);
}

uint64_t sub_27226956C()
{
  v1 = v0[98];
  (*(v0[36] + 8))(v0[37], v0[35]);

  v2 = v0[92];
  v3 = v0[41];
  v4 = v0[39];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(MEMORY[0x277D856D8] + 4);
  v7 = swift_task_alloc();
  v0[93] = v7;
  *v7 = v0;
  v7[1] = sub_2722674E0;
  v8 = v0[43];
  v9 = v0[41];
  v10 = v0[38];

  return MEMORY[0x282200310](v10, 0, 0, v0 + 21, v9, AssociatedConformanceWitness);
}

uint64_t sub_272269664()
{
  v23 = v0[78];
  v1 = v0[63];
  v3 = v0[59];
  v2 = v0[60];
  v4 = v0[56];
  v5 = v0[52];
  v6 = v0[53];
  v8 = v0[50];
  v7 = v0[51];
  v11 = v0[49];
  v12 = v0[48];
  v13 = v0[47];
  v14 = v0[46];
  v15 = v0[43];
  v16 = v0[40];
  v17 = v0[38];
  v18 = v0[37];
  v19 = v0[34];
  v20 = v0[33];
  v21 = v0[30];
  v22 = v0[27];
  sub_27226ABB0(v0[65], type metadata accessor for VARuntimeParameters);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2722697FC()
{
  sub_27226ABB0(v0[60], type metadata accessor for VASpeechBiasData);
  v23 = v0[82];
  v1 = v0[63];
  v3 = v0[59];
  v2 = v0[60];
  v4 = v0[56];
  v5 = v0[52];
  v6 = v0[53];
  v8 = v0[50];
  v7 = v0[51];
  v11 = v0[49];
  v12 = v0[48];
  v13 = v0[47];
  v14 = v0[46];
  v15 = v0[43];
  v16 = v0[40];
  v17 = v0[38];
  v18 = v0[37];
  v19 = v0[34];
  v20 = v0[33];
  v21 = v0[30];
  v22 = v0[27];
  sub_27226ABB0(v0[65], type metadata accessor for VARuntimeParameters);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2722699B0()
{
  v1 = v0[81];
  v2 = v0[80];
  v4 = v0[59];
  v3 = v0[60];
  v5 = v0[57];
  v6 = v0[58];
  v8 = v0[42];
  v7 = v0[43];
  v9 = v0[41];

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  sub_27226ABB0(v3, type metadata accessor for VASpeechBiasData);
  v32 = v0[21];
  v10 = v0[63];
  v12 = v0[59];
  v11 = v0[60];
  v13 = v0[56];
  v14 = v0[52];
  v15 = v0[53];
  v17 = v0[50];
  v16 = v0[51];
  v20 = v0[49];
  v21 = v0[48];
  v22 = v0[47];
  v23 = v0[46];
  v24 = v0[43];
  v25 = v0[40];
  v26 = v0[38];
  v27 = v0[37];
  v28 = v0[34];
  v29 = v0[33];
  v30 = v0[30];
  v31 = v0[27];
  sub_27226ABB0(v0[65], type metadata accessor for VARuntimeParameters);

  v18 = v0[1];

  return v18();
}

uint64_t sub_272269BB8()
{
  v36 = v0[100];
  v1 = v0[99];
  v2 = v0[81];
  v3 = v0[80];
  v32 = v0[59];
  v34 = v0[60];
  v4 = v0[58];
  v30 = v0[57];
  v5 = v0[42];
  v6 = v0[43];
  v7 = v0[41];
  v8 = v0[36];
  v9 = v0[37];
  v10 = v0[35];

  (*(v8 + 8))(v9, v10);
  (*(v5 + 8))(v6, v7);
  (*(v4 + 8))(v32, v30);
  sub_27226ABB0(v34, type metadata accessor for VASpeechBiasData);

  v37 = v0[103];
  v11 = v0[63];
  v13 = v0[59];
  v12 = v0[60];
  v14 = v0[56];
  v15 = v0[52];
  v16 = v0[53];
  v18 = v0[50];
  v17 = v0[51];
  v21 = v0[49];
  v22 = v0[48];
  v23 = v0[47];
  v24 = v0[46];
  v25 = v0[43];
  v26 = v0[40];
  v27 = v0[38];
  v28 = v0[37];
  v29 = v0[34];
  v31 = v0[33];
  v33 = v0[30];
  v35 = v0[27];
  sub_27226ABB0(v0[65], type metadata accessor for VARuntimeParameters);

  v19 = v0[1];

  return v19();
}

uint64_t sub_272269DFC(uint64_t a1)
{
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v34 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  v13 = sub_2721F065C(&qword_280882010, &unk_27237E450);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  (*(v14 + 16))(&v34 - v16, a1, v13);
  v18 = (*(v14 + 88))(v17, v13);
  if (v18 == *MEMORY[0x277D85738])
  {
    v19 = sub_2722C389C();
    (*(v3 + 16))(v12, v19, v2);
    v20 = sub_27237725C();
    v21 = sub_272377E7C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2721E4000, v20, v21, "Speech API Input stream finished successfully.", v22, 2u);
      MEMORY[0x2743C69C0](v22, -1, -1);
    }

    return (*(v3 + 8))(v12, v2);
  }

  else
  {
    v24 = v18;
    v25 = *MEMORY[0x277D85740];
    v26 = sub_2722C389C();
    v27 = *(v3 + 16);
    if (v24 == v25)
    {
      v27(v10, v26, v2);
      v28 = sub_27237725C();
      v29 = sub_272377E7C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_2721E4000, v28, v29, "Speech API Input stream was cancelled.", v30, 2u);
        MEMORY[0x2743C69C0](v30, -1, -1);
      }

      return (*(v3 + 8))(v10, v2);
    }

    else
    {
      v27(v7, v26, v2);
      v31 = sub_27237725C();
      v32 = sub_272377E7C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_2721E4000, v31, v32, "Speech API Unknown termination reason.", v33, 2u);
        MEMORY[0x2743C69C0](v33, -1, -1);
      }

      (*(v3 + 8))(v7, v2);
      return (*(v14 + 8))(v17, v13);
    }
  }
}

uint64_t sub_27226A1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v33 = a6;
  v32 = a4;
  v11 = sub_272376E5C();
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D85000];
  v17 = (*((*MEMORY[0x277D85000] & *v6) + 0x120))(v13);
  if (v17)
  {
    v18 = v17;
    v30 = v11;
    v19 = (*((*v16 & *v6) + 0x150))();
    if (v19)
    {
      v20 = v19;
      type metadata accessor for VAInstrumentedKeywordResult();
      v21 = (*(*a1 + 104))();
      v22 = VAInstrumentedKeywordResult.__allocating_init(detections:)(v21);
      v23 = *(*v22 + 480);

      v23(a2, a3);
      v24 = *(*v22 + 528);

      v24(v32, a5);
      (*(*v22 + 504))((v33 & 1) == 0);
      v25 = v34;
      v26 = (*(*v18 + 432))(v22);
      if (!v25)
      {
        (*(*v18 + 144))(v26);
        (*(*v20 + 80))(v22, v15);
        (*(v31 + 8))(v15, v30);
      }
    }

    else
    {
      sub_2722032B4();
      swift_allocError();
      *v29 = 0xD000000000000011;
      v29[1] = 0x8000000272388A20;
      swift_willThrow();
    }
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v27 = 0x75716552206C694ELL;
    v27[1] = 0xEF6F666E49747365;
    return swift_willThrow();
  }
}

uint64_t sub_27226A628()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_speechAnalyzer);

  v2 = *(v0 + OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_inputStreamActor);

  v3 = *(v0 + OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_processSpeechApiResultsTask);

  v4 = *(v0 + OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_sendAudioToSpeechApiTask);

  v5 = *(v0 + OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_asrDelegate);
  swift_unknownObjectRelease();
  v6 = *(v0 + OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_speechDetectorDelegate);
  swift_unknownObjectRelease();
  v7 = *(v0 + OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_speechEnded);

  v8 = *(v0 + OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_gotFinalResult);

  v9 = *(v0 + OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_gotPartialResult);

  v10 = *(v0 + OBJC_IVAR____TtC12VoiceActions20VASpeechAPISpotterV2_stringMatchingStrategy);
}

id VASpeechAPISpotterV2.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VASpeechAPISpotterV2();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27226A7E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280881F80, &qword_27237E338);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for VAInputStreamActor()
{
  result = qword_280888040;
  if (!qword_280888040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27226A8E0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27226A918(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27226A930()
{
  MEMORY[0x2743C6A90](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27226A96C(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_272219D80;

  return sub_2722627BC(a1, v6, v7, v5, v4);
}

void sub_27226AA20()
{
  sub_27226AABC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_27226AABC()
{
  if (!qword_280881FA8)
  {
    sub_2721F214C(&qword_280881F58, &unk_27237E2F0);
    v0 = sub_27237801C();
    if (!v1)
    {
      atomic_store(v0, &qword_280881FA8);
    }
  }
}

uint64_t sub_27226ABB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_27226AC10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27226ACAC(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_272219D80;

  return sub_2722639E8(a1, v6, v7, v5, v4);
}

uint64_t sub_27226AD58()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27226ADA0(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_272211DBC;

  return sub_272264C18(a1, v6, v7, v5, v4);
}

uint64_t sub_27226AE60()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
}

uint64_t sub_27226AE98(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 72) = a1;
}

uint64_t sub_27226AF30@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions25VAResultGeneratorVerifier_runtimeParams;
  swift_beginAccess();
  return sub_27226AF88(v1 + v3, a1);
}

uint64_t sub_27226AF88(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280881F70, &qword_27237E320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27226AFF8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions25VAResultGeneratorVerifier_runtimeParams;
  swift_beginAccess();
  sub_27226B058(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_27226B058(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280881F70, &qword_27237E320);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t VAResultGeneratorVerifier.__allocating_init(subVerifier:config:)(uint64_t *a1, void *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  v7 = sub_27226C1C0(a1, a2);

  return v7;
}

uint64_t VAResultGeneratorVerifier.init(subVerifier:config:)(uint64_t *a1, void *a2)
{
  v3 = sub_27226C1C0(a1, a2);

  return v3;
}

uint64_t sub_27226B1B0(uint64_t a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280881F70, &qword_27237E320);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v18 - v7;
  v9 = type metadata accessor for VARuntimeParameters();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VAResultGenerator();
  v14 = v3[7];
  sub_272216374(a1, v13);
  result = sub_2722C53D8(v14, v13);
  if (!v2)
  {
    (*(*v3 + 160))(result);
    sub_272216374(a1, v8);
    (*(v10 + 56))(v8, 0, 1, v9);
    (*(*v3 + 184))(v8);
    v16 = v3[5];
    v17 = v3[6];
    sub_27220300C(v3 + 2, v16);
    return (*(v17 + 16))(a1, v16, v17);
  }

  return result;
}

void sub_27226B3AC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = v3;
  v84 = a3;
  v8 = sub_2721F065C(&qword_280881F70, &qword_27237E320);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v73 - v10;
  v12 = type metadata accessor for VARuntimeParameters();
  v83 = *(v12 - 8);
  v13 = *(v83 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v5[5];
  v16 = v5[6];
  sub_27220300C(v5 + 2, v17);
  v18 = (*(v16 + 8))(a1, a2, v17, v16);
  if (v4)
  {
    return;
  }

  v19 = v83;
  v82 = v15;
  if ((*(v18 + 16) & 1) == 0)
  {
    static VAVerifierModelOutput.none.getter(v84);

    return;
  }

  v20 = v12;
  v21 = v18;
  v22 = *(v18 + 24);
  if (!v22)
  {
    v26 = 0x800000027238B560;
    sub_2722032B4();
    swift_allocError();
    v28 = 0xD00000000000002BLL;
LABEL_10:
    *v27 = v28;
    v27[1] = v26;
    swift_willThrow();
    goto LABEL_11;
  }

  v73[1] = 0;
  v23 = *(*v5 + 152);

  v81 = v23(v24);
  if (!v81)
  {

    v26 = 0x800000027238B590;
    sub_2722032B4();
    swift_allocError();
    v28 = 0xD000000000000017;
    goto LABEL_10;
  }

  (*(*v5 + 176))();
  if ((*(v19 + 48))(v11, 1, v20) == 1)
  {

    sub_27226C3A0(v11);
    sub_2722032B4();
    swift_allocError();
    *v25 = 0xD000000000000015;
    v25[1] = 0x800000027238B5B0;
    swift_willThrow();

LABEL_11:

    return;
  }

  sub_2722164B8(v11, v82);
  v83 = *(v22 + 16);
  if (!v83)
  {
    goto LABEL_67;
  }

  v76 = v5;
  v77 = v22;
  v78 = v21;
  v29 = *(v22 + 32);
  v80 = v22 + 32;
  v30 = *(v29 + 16);
  isUniquelyReferenced_nonNull_native = sub_27220392C(MEMORY[0x277D84F90], v30);
  v32 = isUniquelyReferenced_nonNull_native;
  v79 = v30;
  if (v30)
  {
    v33 = 0;
LABEL_17:
    v34 = v33 + 1;
    v35 = v80;
    v36 = v83;
    while (v33 < *(*v35 + 16))
    {
      v37 = *(*v35 + 4 * v33 + 32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_272200344(v32);
      }

      if (v33 >= v32[2])
      {
        goto LABEL_59;
      }

      v38 = v32 + 4;
      v39 = v32[v33 + 4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32[v33 + 4] = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_2721FF8B4(0, *(v39 + 16) + 1, 1, v39);
        v39 = isUniquelyReferenced_nonNull_native;
        v38[v33] = isUniquelyReferenced_nonNull_native;
      }

      v41 = *(v39 + 16);
      v40 = *(v39 + 24);
      if (v41 >= v40 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_2721FF8B4((v40 > 1), v41 + 1, 1, v39);
        v39 = isUniquelyReferenced_nonNull_native;
        v38[v33] = isUniquelyReferenced_nonNull_native;
      }

      *(v39 + 16) = v41 + 1;
      *(v39 + 4 * v41 + 32) = v37;
      v35 += 8;
      if (!--v36)
      {
        ++v33;
        if (v34 == v79)
        {
          goto LABEL_28;
        }

        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return;
  }

LABEL_28:
  v42 = v76;
  if (v76[64] == 1)
  {
    isUniquelyReferenced_nonNull_native = (*(*v76 + 216))(v32);
  }

  v43 = MEMORY[0x277D85000];
  v44 = (*((*MEMORY[0x277D85000] & **(v42 + 7)) + 0xD0))(isUniquelyReferenced_nonNull_native);
  v45 = v78;
  if (!v44)
  {
    goto LABEL_68;
  }

  v47 = (*((*v43 & *v44) + 0x138))(v46);

  v48 = v32[2];
  if (v48)
  {
    v49 = 0;
    LODWORD(v83) = v82[72];
    LODWORD(v80) = v82[73];
    LODWORD(v79) = v82[74];
    v50 = *(*v81 + 592);
    v76 = (*v81 + 592);
    v77 = v50;
    v73[0] = v47 & 0xFFFFFFFFFFFFFFF8;
    v74 = 4 * v47;
    v75 = v32 + 4;
    v51 = 48;
    v52 = v47;
    while (1)
    {
      v53 = v49 + 1;
      v54 = *(v45 + 32);
      if (v54)
      {
        v55 = v49 * v47;
        if ((v49 * v47) >> 64 != (v49 * v47) >> 63)
        {
          goto LABEL_61;
        }

        v56 = v53 * v47;
        if ((v53 * v47) >> 64 != (v53 * v47) >> 63)
        {
          goto LABEL_62;
        }

        if (v56 < v55)
        {
          goto LABEL_63;
        }

        v57 = 0.0;
        if (v55 != v56)
        {
          if (v55 >= v56)
          {
            goto LABEL_64;
          }

          if (v55 < 0)
          {
            goto LABEL_65;
          }

          v58 = *(v54 + 16);
          if (v55 >= v58 || v56 - 1 >= v58)
          {
            goto LABEL_66;
          }

          if (v47 < 8)
          {
            goto LABEL_46;
          }

          v59 = v73[0];
          v55 += v73[0];
          v60 = v54 + v51;
          do
          {
            v57 = (((((((v57 + COERCE_FLOAT(*(v60 - 16))) + COERCE_FLOAT(HIDWORD(*(v60 - 16)))) + COERCE_FLOAT(*(v60 - 8))) + COERCE_FLOAT(HIDWORD(*(v60 - 16)))) + COERCE_FLOAT(*v60)) + COERCE_FLOAT(HIDWORD(*v60))) + COERCE_FLOAT(*(v60 + 8))) + COERCE_FLOAT(HIDWORD(*v60));
            v60 += 32;
            v59 -= 8;
          }

          while (v59);
          if (v47 != v73[0])
          {
LABEL_46:
            v61 = v52 - v55;
            v62 = (v54 + 4 * v55 + 32);
            do
            {
              v63 = *v62++;
              v57 = v57 + v63;
              --v61;
            }

            while (v61);
          }
        }

        v64 = v57 / v47;
      }

      else
      {
        v64 = 0.0;
      }

      if (v49 >= v32[2])
      {
        goto LABEL_60;
      }

      v65 = v75[v49];

      v66 = VARuntimeParameters.keywordsNoThresholds.getter();
      v67 = v77(v65, v66, 0, 0, v83, v80, v79, v64);

      v69 = *((*(*v67 + 104))(v68) + 16);

      if (v69)
      {
        break;
      }

      v51 += v74;
      v52 += v47;
      v49 = v53;
      v45 = v78;
      v70 = v84;
      v71 = v82;
      if (v53 == v48)
      {
        goto LABEL_55;
      }
    }

    sub_2722E45C4(v67, v84);

    v72 = v82;
  }

  else
  {
    v70 = v84;
    v71 = v82;
LABEL_55:
    static VAVerifierModelOutput.none.getter(v70);

    v72 = v71;
  }

  sub_272216BD8(v72);
}

uint64_t sub_27226BB7C(uint64_t result)
{
  v33 = *(result + 16);
  if (v33)
  {
    v1 = 0;
    v2 = result + 32;
    while (2)
    {
      v3 = *(v2 + 8 * v1++);
      v4 = *(v3 + 16);
      v5 = (v3 + 32);
      while (v4)
      {
        v6 = *v5++;
        --v4;
        if (v6 >= 0.2)
        {
          v7 = 0;
          v32 = result + 32;
          do
          {
            v12 = *(v2 + 8 * v7);
            v13 = *(v12 + 16);
            if (v13)
            {
              v34 = v7;
              v14 = *(v12 + 32);
              v15 = v13 - 1;
              if (v13 != 1)
              {
                v16 = (v12 + 36);
                do
                {
                  v17 = *v16++;
                  v18 = v17;
                  if (v14 < v17)
                  {
                    v14 = v18;
                  }

                  --v15;
                }

                while (v15);
              }

              v35 = MEMORY[0x277D84F90];

              sub_27220056C(0, v13, 0);
              v19 = 32;
              do
              {
                v20 = *(v12 + v19);
                sub_2721F065C(&qword_280881CB0, qword_27237D820);
                v21 = swift_allocObject();
                *(v21 + 16) = xmmword_27237AF80;
                *(v21 + 56) = MEMORY[0x277D83A90];
                *(v21 + 64) = MEMORY[0x277D83B08];
                *(v21 + 32) = v20;
                v22 = sub_27237786C();
                MEMORY[0x2743C4AD0](v22, v23);

                if (v20 == v14)
                {
                  v24 = 42;
                }

                else
                {
                  v24 = 32;
                }

                MEMORY[0x2743C4AD0](v24, 0xE100000000000000);
                sub_272203AC4();
                v25 = sub_27237812C();
                v27 = v26;

                v29 = *(v35 + 16);
                v28 = *(v35 + 24);
                if (v29 >= v28 >> 1)
                {
                  sub_27220056C((v28 > 1), v29 + 1, 1);
                }

                *(v35 + 16) = v29 + 1;
                v30 = v35 + 16 * v29;
                *(v30 + 32) = v25;
                *(v30 + 40) = v27;
                v19 += 4;
                --v13;
              }

              while (v13);

              sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
              sub_272203B18();
              v8 = sub_2723777CC();
              v10 = v9;

              sub_2721F065C(&qword_280882040, &unk_27237E470);
              v11 = swift_allocObject();
              *(v11 + 16) = xmmword_27237AF80;
              MEMORY[0x2743C4AD0](v8, v10);

              MEMORY[0x2743C4AD0](93, 0xE100000000000000);
              *(v11 + 56) = MEMORY[0x277D837D0];
              *(v11 + 32) = 91;
              *(v11 + 40) = 0xE100000000000000;
              sub_27237872C();

              v2 = v32;
              v7 = v34;
            }

            ++v7;
          }

          while (v7 != v33);
          sub_2721F065C(&qword_280882040, &unk_27237E470);
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_27237AF80;
          *(v31 + 56) = MEMORY[0x277D837D0];
          *(v31 + 32) = 32;
          *(v31 + 40) = 0xE100000000000000;
          sub_27237872C();
        }
      }

      if (v1 != v33)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_27226BF80()
{
  sub_2722039C8((v0 + 16));

  v1 = *(v0 + 72);

  v2 = v0 + OBJC_IVAR____TtC12VoiceActions25VAResultGeneratorVerifier_runtimeParams;

  return sub_27226C3A0(v2);
}

uint64_t VAResultGeneratorVerifier.deinit()
{
  v0 = VAVerifierModel.deinit();
  sub_2722039C8((v0 + 16));

  v1 = *(v0 + 72);

  sub_27226C3A0(v0 + OBJC_IVAR____TtC12VoiceActions25VAResultGeneratorVerifier_runtimeParams);
  return v0;
}

uint64_t VAResultGeneratorVerifier.__deallocating_deinit()
{
  v0 = VAVerifierModel.deinit();

  sub_2722039C8((v1 + 16));

  v2 = *(v0 + 72);

  sub_27226C3A0(v0 + OBJC_IVAR____TtC12VoiceActions25VAResultGeneratorVerifier_runtimeParams);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t VAResultGeneratorInput.__allocating_init(hasInput:scores:vadBuffer:)(char a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

uint64_t VAResultGeneratorInput.init(hasInput:scores:vadBuffer:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t VAResultGeneratorInput.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t VAResultGeneratorInput.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_27226C1C0(uint64_t *a1, void *a2)
{
  *(v2 + 72) = 0;
  v5 = OBJC_IVAR____TtC12VoiceActions25VAResultGeneratorVerifier_runtimeParams;
  v6 = type metadata accessor for VARuntimeParameters();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  sub_27221629C(a1, v2 + 16);
  *(v2 + 56) = a2;
  v7 = objc_opt_self();
  v8 = a2;
  v9 = [v7 processInfo];
  v10 = [v9 environment];

  v11 = sub_27237772C();
  if (*(v11 + 16))
  {
    v12 = v2;
    v13 = sub_27220038C(0x414D5F544E495250, 0xEC00000058495254);
    if (v14)
    {
      v15 = (*(v11 + 56) + 16 * v13);
      v17 = *v15;
      v16 = v15[1];

      if (v17 == 1702195828 && v16 == 0xE400000000000000)
      {

        v19 = 1;
      }

      else
      {
        v19 = sub_27237865C();
      }
    }

    else
    {

      v19 = 0;
    }

    v2 = v12;
  }

  else
  {

    v19 = 0;
  }

  *(v2 + 64) = v19 & 1;
  v20 = sub_2722591B0();
  sub_2722039C8(a1);
  return v20;
}

uint64_t sub_27226C3A0(uint64_t a1)
{
  v2 = sub_2721F065C(&qword_280881F70, &qword_27237E320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for VAResultGeneratorVerifier()
{
  result = qword_280888050;
  if (!qword_280888050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27226C45C()
{
  sub_272253328();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_27226C61C@<X0>(uint64_t *a1@<X8>)
{
  VARuntimeParameters.init()(a1);
  v2 = *a1;

  *a1 = &unk_28817E9E8;
  return result;
}

uint64_t sub_27226C6B0(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_27226C6E4@<X0>(uint64_t *a1@<X8>)
{
  VARuntimeParameters.init()(a1);
  v3 = *(v1 + 16);
  v4 = *a1;

  *a1 = v3;
  return result;
}

id sub_27226C7B4(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_runtimeParameters;
  v15 = type metadata accessor for VARuntimeParameters();
  (*(*(v15 - 8) + 56))(&v13[v14], 1, 1, v15);
  sub_27221629C(a3, &v13[OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_strategyProvider]);
  *&v13[OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_kwsModel] = a4;
  *&v13[OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_vadModel] = a5;
  sub_27221629C(a6, v18);
  v16 = sub_272335390(a1, a2, v18);
  sub_2722039C8(a6);
  sub_2722039C8(a3);
  return v16;
}

uint64_t static VAFixedKeywordSpotter.buildForAudioToText(delegate:jsonConfigFilename:vadGated:computeUnits:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for VAConfiguration();
  v9 = static VAConfiguration.buildForFixedVCWakeupRuntime(vadGated:)(a4);
  if (!v4)
  {
    v10 = v9;
    v29[3] = type metadata accessor for VARuntimeParametersFactoryForVCWakeup();
    v29[4] = &off_28817EA70;
    v29[0] = swift_allocObject();
    if (a3)
    {
      v11 = static VAConfiguration.buildFromConfigFile(jsonFile:)(a2, a3);
    }

    else
    {
      v11 = v10;
    }

    v12 = v11;
    type metadata accessor for VAKWSModel();
    v13 = v12;
    v14 = sub_272333404(v13);
    type metadata accessor for VASilenceModel();
    v15 = (*((*MEMORY[0x277D85000] & *v13) + 0xE8))();
    v17 = v16;
    _s12VoiceActions19VASpeechBiasOptionsO010defaultForaB0ACyFZ_0(v28);
    LOBYTE(v27[0]) = v28[0];
    v19 = sub_27228DC9C(v15, v17, v27);
    v20 = type metadata accessor for VAStrategyProviderPassthrough();
    v21 = sub_2722043D8();
    v28[3] = v20;
    v28[4] = &protocol witness table for VAStrategyProviderPassthrough;
    v28[0] = v21;
    sub_27221629C(v29, v27);
    v22 = objc_allocWithZone(type metadata accessor for VAFixedKeywordSpotter());
    v23 = OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_runtimeParameters;
    v24 = type metadata accessor for VARuntimeParameters();
    (*(*(v24 - 8) + 56))(&v22[v23], 1, 1, v24);
    sub_27221629C(v28, &v22[OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_strategyProvider]);
    *&v22[OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_kwsModel] = v14;
    *&v22[OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_vadModel] = v19;
    sub_27221629C(v27, v26);
    v25 = swift_unknownObjectRetain();
    v8 = sub_272335390(v25, v13, v26);

    sub_2722039C8(v27);
    sub_2722039C8(v28);
    sub_2722039C8(v29);
  }

  return v8;
}

uint64_t static VAFixedKeywordSpotter.buildForVoiceControlWakeup(delegate:jsonConfigFilename:vadGated:evalMode:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v10 = type metadata accessor for VAConfiguration();
  v11 = a4 & 1;
  if (a5)
  {
    v12 = static VAConfiguration.buildForFixedVCWakeupEval(vadGated:)(v11);
    if (v5)
    {
      return v10;
    }
  }

  else
  {
    v12 = static VAConfiguration.buildForFixedVCWakeupRuntime(vadGated:)(v11);
    if (v5)
    {
      return v10;
    }
  }

  v13 = v12;
  v32[3] = type metadata accessor for VARuntimeParametersFactoryForVCWakeup();
  v32[4] = &off_28817EA70;
  v32[0] = swift_allocObject();
  if (a3)
  {
    v14 = static VAConfiguration.buildFromConfigFile(jsonFile:)(a2, a3);
  }

  else
  {
    v14 = v13;
  }

  v15 = v14;
  type metadata accessor for VAKWSModel();
  v16 = v15;
  v17 = sub_272333404(v16);
  type metadata accessor for VASilenceModel();
  v18 = (*((*MEMORY[0x277D85000] & *v16) + 0xE8))();
  v20 = v19;
  _s12VoiceActions19VASpeechBiasOptionsO010defaultForaB0ACyFZ_0(v31);
  LOBYTE(v30[0]) = v31[0];
  v22 = sub_27228DC9C(v18, v20, v30);
  v23 = type metadata accessor for VAStrategyProviderPassthrough();
  v24 = sub_2722043D8();
  v31[3] = v23;
  v31[4] = &protocol witness table for VAStrategyProviderPassthrough;
  v31[0] = v24;
  sub_27221629C(v32, v30);
  v25 = objc_allocWithZone(type metadata accessor for VAFixedKeywordSpotter());
  v26 = OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_runtimeParameters;
  v27 = type metadata accessor for VARuntimeParameters();
  (*(*(v27 - 8) + 56))(&v25[v26], 1, 1, v27);
  sub_27221629C(v31, &v25[OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_strategyProvider]);
  *&v25[OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_kwsModel] = v17;
  *&v25[OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_vadModel] = v22;
  sub_27221629C(v30, v29);
  v28 = swift_unknownObjectRetain();
  v10 = sub_272335390(v28, v16, v29);

  sub_2722039C8(v30);
  sub_2722039C8(v31);
  sub_2722039C8(v32);
  return v10;
}

uint64_t type metadata accessor for VAFixedKeywordSpotter()
{
  result = qword_280888068;
  if (!qword_280888068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t static VAFixedKeywordSpotter.buildForCustomModel(delegate:jsonConfigFilename:modelFilePath:vadGated:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v11 = type metadata accessor for VAConfiguration();
  v12 = static VAConfiguration.buildForFixedWithCustomModel(modelFilepath:vadGated:)(a4, a5);
  if (!v5)
  {
    v13 = v12;
    v14 = MEMORY[0x277D85000];
    v15 = (*((*MEMORY[0x277D85000] & *v12) + 0xA0))();
    if (!v15)
    {
LABEL_6:
      v11 = 0x800000027238B6D0;
      sub_2722032B4();
      swift_allocError();
      *v22 = 0xD000000000000014;
      v22[1] = 0x800000027238B6D0;
      swift_willThrow();

      return v11;
    }

    v16 = v15;
    v44[7] = a1;
    v17 = (*((*v14 & *v15) + 0xB8))();
    v18 = v17;
    v19 = *(v17 + 16);
    if (v19)
    {
      v20 = sub_2722702A8(*(v17 + 16), 0);
      v21 = sub_27227032C(v44, v20 + 4, v19, v18);
      sub_272270484();
      if (v21 != v19)
      {
        __break(1u);
        goto LABEL_6;
      }
    }

    else
    {

      v20 = MEMORY[0x277D84F90];
    }

    v23 = MEMORY[0x277D85000];
    v24 = type metadata accessor for VARuntimeParametersFactoryForCustomModel();
    v25 = swift_allocObject();
    *(v25 + 16) = v20;
    v44[3] = v24;
    v44[4] = &off_28817EA80;
    v44[0] = v25;
    if (a3)
    {
      v26 = static VAConfiguration.buildFromConfigFile(jsonFile:)(a2, a3);
    }

    else
    {
      v26 = v13;
    }

    v27 = v26;
    type metadata accessor for VAKWSModel();
    v28 = v27;
    v29 = sub_272333404(v28);
    type metadata accessor for VASilenceModel();
    v30 = (*((*v23 & *v28) + 0xE8))();
    v32 = v31;
    _s12VoiceActions19VASpeechBiasOptionsO010defaultForaB0ACyFZ_0(v43);
    LOBYTE(v42[0]) = v43[0];
    v34 = sub_27228DC9C(v30, v32, v42);
    v35 = type metadata accessor for VAStrategyProviderPassthrough();
    v36 = sub_2722043D8();
    v43[3] = v35;
    v43[4] = &protocol witness table for VAStrategyProviderPassthrough;
    v43[0] = v36;
    sub_27221629C(v44, v42);
    v37 = objc_allocWithZone(type metadata accessor for VAFixedKeywordSpotter());
    v38 = OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_runtimeParameters;
    v39 = type metadata accessor for VARuntimeParameters();
    (*(*(v39 - 8) + 56))(&v37[v38], 1, 1, v39);
    sub_27221629C(v43, &v37[OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_strategyProvider]);
    *&v37[OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_kwsModel] = v29;
    *&v37[OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_vadModel] = v34;
    sub_27221629C(v42, v41);
    swift_retain_n();

    v40 = swift_unknownObjectRetain();
    v11 = sub_272335390(v40, v28, v41);

    sub_2722039C8(v42);
    sub_2722039C8(v43);
    sub_2722039C8(v44);
  }

  return v11;
}

uint64_t static VAFixedKeywordSpotter.buildForBreakthrough(delegate:jsonConfigFilename:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for VAConfiguration();
  v7 = static VAConfiguration.buildForFixedBreakthrough()();
  if (!v3)
  {
    v8 = v7;
    v27[3] = type metadata accessor for VARuntimeParametersFactoryDummy();
    v27[4] = &protocol witness table for VARuntimeParametersFactoryDummy;
    v27[0] = sub_2722043D8();
    if (a3)
    {
      v9 = static VAConfiguration.buildFromConfigFile(jsonFile:)(a2, a3);
    }

    else
    {
      v9 = v8;
    }

    v10 = v9;
    type metadata accessor for VAKWSModel();
    v11 = v10;
    v12 = sub_272333404(v11);
    type metadata accessor for VASilenceModel();
    v13 = (*((*MEMORY[0x277D85000] & *v11) + 0xE8))();
    v15 = v14;
    _s12VoiceActions19VASpeechBiasOptionsO010defaultForaB0ACyFZ_0(v26);
    LOBYTE(v25[0]) = v26[0];
    v17 = sub_27228DC9C(v13, v15, v25);
    v18 = type metadata accessor for VAStrategyProviderPassthrough();
    v19 = sub_2722043D8();
    v26[3] = v18;
    v26[4] = &protocol witness table for VAStrategyProviderPassthrough;
    v26[0] = v19;
    sub_27221629C(v27, v25);
    v20 = objc_allocWithZone(type metadata accessor for VAFixedKeywordSpotter());
    v21 = OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_runtimeParameters;
    v22 = type metadata accessor for VARuntimeParameters();
    (*(*(v22 - 8) + 56))(&v20[v21], 1, 1, v22);
    sub_27221629C(v26, &v20[OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_strategyProvider]);
    *&v20[OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_kwsModel] = v12;
    *&v20[OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_vadModel] = v17;
    sub_27221629C(v25, v24);
    v23 = swift_unknownObjectRetain();
    v6 = sub_272335390(v23, v11, v24);
    sub_2722039C8(v25);
    sub_2722039C8(v26);

    sub_2722039C8(v27);
  }

  return v6;
}

uint64_t sub_27226D4F8()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x168))(&v5);
  if (v6)
  {
    sub_2721F41B4(&v5, v7);
    v1 = v8;
    v2 = v9;
    sub_27220300C(v7, v8);
    (*(v2 + 8))(v1, v2);
    return sub_2722039C8(v7);
  }

  else
  {
    sub_2721F40F0(&v5, &qword_2808821C8, &qword_272386260);
    sub_2722032B4();
    swift_allocError();
    *v4 = 0xD00000000000001ALL;
    v4[1] = 0x800000027238B6F0;
    return swift_willThrow();
  }
}

unint64_t sub_27226D630(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v45 - v6;
  v8 = type metadata accessor for VARuntimeParameters();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2721F065C(&qword_280881F70, &qword_27237E320);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v45 - v15;
  if ((VARuntimeParameters.allKeywordsAreValid.getter() & 1) == 0)
  {
    v37 = 0x80000002723888A0;
    sub_2722032B4();
    swift_allocError();
    v39 = 0xD00000000000006DLL;
LABEL_12:
    *v38 = v39;
    v38[1] = v37;
    swift_willThrow();
    return v37;
  }

  sub_272216374(a1, v16);
  (*(v9 + 56))(v16, 0, 1, v8);
  v17 = OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_runtimeParameters;
  swift_beginAccess();
  sub_27226B058(v16, v2 + v17);
  v18 = swift_endAccess();
  v19 = MEMORY[0x277D85000];
  v20 = (*((*MEMORY[0x277D85000] & *v2) + 0x78))(v18);
  if (!v20)
  {
    v37 = 0x8000000272388910;
    sub_2722032B4();
    swift_allocError();
    v39 = 0xD000000000000011;
    goto LABEL_12;
  }

  v21 = v20;
  v22 = (*((*v19 & *v20) + 0xA0))();
  if (!v22)
  {
    v37 = 0x800000027238B710;
    sub_2722032B4();
    swift_allocError();
    *v41 = 0xD00000000000001ELL;
    v41[1] = 0x800000027238B710;
    swift_willThrow();

    return v37;
  }

  v23 = v22;
  if (((*((*v19 & *v22) + 0x178))() & 1) != 0 && !*(v2 + OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_vadModel))
  {
    v37 = 0x800000027238B730;
    sub_2722032B4();
    swift_allocError();
    v43 = 0xD00000000000003BLL;
    goto LABEL_18;
  }

  type metadata accessor for VARequestContext(0);
  sub_272216374(a1, v12);
  v21 = v21;
  v24 = sub_272232E00(v21, v12);
  v25 = (*((*v19 & *v2) + 0x128))(v24);
  v26 = (*((*v19 & *v2) + 0x120))(v25);
  if (!v26)
  {
    v37 = 0x800000027238B430;
    sub_2722032B4();
    swift_allocError();
    v43 = 0xD00000000000001DLL;
LABEL_18:
    *v42 = v43;
    v42[1] = v37;
    swift_willThrow();

    return v37;
  }

  v27 = v26;
  v45 = v21;
  v46 = v23;
  v29 = *(v2 + OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_strategyProvider + 24);
  v28 = *(v2 + OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_strategyProvider + 32);
  sub_27220300C((v2 + OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_strategyProvider), v29);
  v30 = (*(v28 + 8))(v2, &protocol witness table for VAKeywordSpotterBase, a1, v29, v28);
  (*((*v19 & *v2) + 0x158))(v30);
  v31 = sub_272377C3C();
  (*(*(v31 - 8) + 56))(v7, 1, 1, v31);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v2;
  v32[5] = v27;
  v33 = v2;

  v34 = sub_272262CC0(0, 0, v7, &unk_27237ED58, v32);
  v35 = (*((*v19 & *v33) + 0x140))(v34);
  v36 = (*((*v19 & *v33) + 0x138))(v35);
  if (v36)
  {
    v37 = v36;
  }

  else
  {
    v37 = 0x8000000272388930;
    sub_2722032B4();
    swift_allocError();
    *v44 = 0xD00000000000001DLL;
    v44[1] = 0x8000000272388930;
    swift_willThrow();
  }

  return v37;
}

uint64_t sub_27226DD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v7 = sub_27237728C();
  v5[3] = v7;
  v8 = *(v7 - 8);
  v5[4] = v8;
  v9 = *(v8 + 64) + 15;
  v5[5] = swift_task_alloc();
  v10 = swift_task_alloc();
  v5[6] = v10;
  *v10 = v5;
  v10[1] = sub_27220AFF8;

  return sub_27226DE0C(a5);
}

uint64_t sub_27226DE0C(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *(*(sub_2721F065C(&qword_280881F70, &qword_27237E320) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v4 = type metadata accessor for VARuntimeParameters();
  v2[20] = v4;
  v5 = *(v4 - 8);
  v2[21] = v5;
  v6 = *(v5 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v7 = sub_27237728C();
  v2[25] = v7;
  v8 = *(v7 - 8);
  v2[26] = v8;
  v9 = *(v8 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27226DF9C, 0, 0);
}

uint64_t sub_27226DF9C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = sub_2722C389C();
  *(v0 + 248) = v4;
  v5 = *(v3 + 16);
  *(v0 + 256) = v5;
  *(v0 + 264) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_27237725C();
  v7 = sub_272377E7C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2721E4000, v6, v7, "Entering StartProcessingAudio()", v8, 2u);
    MEMORY[0x2743C69C0](v8, -1, -1);
  }

  v9 = *(v0 + 240);
  v10 = *(v0 + 200);
  v11 = *(v0 + 208);
  v12 = *(v0 + 160);
  v13 = *(v0 + 168);
  v15 = *(v0 + 144);
  v14 = *(v0 + 152);

  v16 = *(v11 + 8);
  *(v0 + 272) = v16;
  v16(v9, v10);
  v17 = OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_runtimeParameters;
  swift_beginAccess();
  sub_2721F07F4(v15 + v17, v14, &qword_280881F70, &qword_27237E320);
  if ((*(v13 + 48))(v14, 1, v12) == 1)
  {
    sub_2721F40F0(*(v0 + 152), &qword_280881F70, &qword_27237E320);
    sub_2722032B4();
    swift_allocError();
    *v18 = 0xD000000000000016;
    v18[1] = 0x8000000272388EA0;
    swift_willThrow();
LABEL_20:
    v69 = *(v0 + 232);
    v68 = *(v0 + 240);
    v71 = *(v0 + 216);
    v70 = *(v0 + 224);
    v73 = *(v0 + 184);
    v72 = *(v0 + 192);
    v74 = *(v0 + 176);
    v75 = *(v0 + 152);

    v76 = *(v0 + 8);

    return v76();
  }

  v19 = *(v0 + 144);
  v20 = sub_2722164B8(*(v0 + 152), *(v0 + 192));
  v21 = MEMORY[0x277D85000];
  v22 = (*((*MEMORY[0x277D85000] & *v19) + 0x78))(v20);
  *(v0 + 280) = v22;
  if (!v22)
  {
    v37 = *(v0 + 192);
    sub_2722032B4();
    swift_allocError();
    *v38 = 0xD000000000000011;
    v38[1] = 0x8000000272388910;
    swift_willThrow();
LABEL_11:
    sub_272216BD8(v37);
    goto LABEL_20;
  }

  v23 = v22;
  v24 = *((*v21 & *v22) + 0xA0);
  v25 = v24();
  *(v0 + 288) = v25;
  if (!v25)
  {
    v37 = *(v0 + 192);
    sub_2722032B4();
    swift_allocError();
    *v39 = 0xD00000000000001ELL;
    v39[1] = 0x800000027238B710;
    swift_willThrow();

    goto LABEL_11;
  }

  v26 = v25;
  v27 = (*((*v21 & *v25) + 0x130))();
  v93 = v24;
  if (v27)
  {
    v28 = sub_272323818();
    v29 = sub_272323820();
    v30 = sub_272241B00();
    v27 = sub_272323828(v28, v29, v30, (v0 + 16));
    v31 = *(v0 + 16);
    v32 = *(v0 + 24);
    v33 = *(v0 + 32);
    v34 = *(v0 + 40);
    v35 = *(v0 + 48);
    v36 = *(v0 + 56);
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
  }

  v91 = v32;
  v92 = v31;
  *(v0 + 64) = v31;
  *(v0 + 72) = v32;
  v89 = v34;
  v90 = v33;
  *(v0 + 80) = v33;
  *(v0 + 88) = v34;
  v88 = v35;
  *(v0 + 96) = v35;
  *(v0 + 104) = v36;
  v40 = *((*v21 & *v26) + 0x160);
  v41 = *((v40)(v27) + 16);

  if (v41)
  {
    v43 = (*((*v21 & *v23) + 0x88))(v42);
    v44 = (*((*v21 & *v43) + 0x148))();

    v45 = (*((*v21 & *v26) + 0x148))();
    v40();
    sub_272323698();
    v46 = sub_2723236A8(v44, v45);
    v49 = v48;
  }

  else
  {
    v46 = 0;
    v47 = 0;
    v49 = 0;
  }

  *(v0 + 464) = v49;
  v87 = v46;
  *(v0 + 296) = v46;
  *(v0 + 304) = v47;
  v50 = *(*(v0 + 144) + OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_vadModel);
  *(v0 + 312) = v50;
  v51 = 0;
  if (v50)
  {
    type metadata accessor for VACircularMatrixBuffer();
    v52 = (*((*v21 & *v23) + 0x88))();
    v53 = (*((*v21 & *v52) + 0x148))();

    v51 = sub_272302780(66, v53);
  }

  v86 = v26;
  *(v0 + 320) = v51;
  result = v93();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v55 = result;
  v56 = *(v0 + 184);
  v57 = *(v0 + 136);
  type metadata accessor for VACircularMatrixBuffer();
  v58 = (*((*v21 & *v55) + 0xE8))();

  v59 = *((*v21 & *v23) + 0x88);
  v60 = ((*v21 & *v23) + 136) & 0xFFFFFFFFFFFFLL | 0xF95A000000000000;
  *(v0 + 328) = v59;
  *(v0 + 336) = v60;
  v61 = v59();
  v62 = (*((*v21 & *v61) + 0x148))();

  *(v0 + 344) = sub_272302780(v58, v62);
  type metadata accessor for VAFeatureExtract();
  v63 = VAFeatureExtract.__allocating_init()();
  *(v0 + 352) = v63;
  type metadata accessor for VAResultGenerator();
  v64 = (*v57 + 312);
  v65 = *v64;
  *(v0 + 360) = *v64;
  *(v0 + 368) = v64 & 0xFFFFFFFFFFFFLL | 0xEDEA000000000000;
  v66 = v23;
  v65();
  v67 = sub_2722C53D8(v66, v56);
  *(v0 + 376) = v67;
  if (!v67)
  {
    v84 = *(v0 + 192);
    sub_272270678(v87);
    sub_2722032B4();
    swift_allocError();
    *v85 = 0xD000000000000014;
    v85[1] = 0x800000027238B870;
    swift_willThrow();

    sub_272216BD8(v84);
    sub_2722706B8(v92, v91, v90, v89, v88);
    goto LABEL_20;
  }

  v77 = **(v0 + 136) + 368;
  v78 = *v77;
  *(v0 + 384) = *v77;
  *(v0 + 392) = v77 & 0xFFFFFFFFFFFFLL | 0x454C000000000000;
  v79 = OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_kwsModel;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0;
  *(v0 + 400) = v79;
  v94 = (v78 + *v78);
  v80 = v78[1];
  v81 = swift_task_alloc();
  *(v0 + 424) = v81;
  *v81 = v0;
  v81[1] = sub_27226E968;
  v82 = *(v0 + 392);
  v83 = *(v0 + 136);

  return v94();
}

uint64_t sub_27226E968(char a1)
{
  v2 = *(*v1 + 424);
  v4 = *v1;
  *(*v1 + 468) = a1;

  return MEMORY[0x2822009F8](sub_27226EA68, 0, 0);
}

void sub_27226EA68()
{
  if (*(v0 + 468))
  {
    v1 = *(v0 + 464);
    v2 = *(v0 + 304);
    sub_272270678(*(v0 + 296));
    v3 = *(v0 + 408);
    (*((*MEMORY[0x277D85000] & **(v0 + 144)) + 0x220))(0);
    v4 = *(v0 + 376);
    v6 = *(v0 + 344);
    v5 = *(v0 + 352);
    v7 = *(v0 + 320);
    v8 = *(v0 + 280);
    v9 = *(v0 + 288);
    if (v3)
    {
      sub_272216BD8(*(v0 + 192));

      v10 = *(v0 + 104);
      sub_2722706B8(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));
      v12 = *(v0 + 232);
      v11 = *(v0 + 240);
      v14 = *(v0 + 216);
      v13 = *(v0 + 224);
      v16 = *(v0 + 184);
      v15 = *(v0 + 192);
      v17 = *(v0 + 176);
      v18 = *(v0 + 152);
    }

    else
    {
      v33 = *(v0 + 232);
      v34 = *(v0 + 240);
      v36 = *(v0 + 224);
      v37 = *(v0 + 216);
      v38 = *(v0 + 184);
      v39 = *(v0 + 176);
      v41 = *(v0 + 152);
      sub_272216BD8(*(v0 + 192));

      v35 = *(v0 + 104);
      sub_2722706B8(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));
    }

    v19 = *(v0 + 8);

    v19();
    return;
  }

  v20 = *(v0 + 416);
  v21 = v20 + 1;
  *(v0 + 432) = v20 + 1;
  if (__OFADD__(v20, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v22 = *(v0 + 336);
  v23 = *(v0 + 280);
  v24 = (*(v0 + 328))();
  v25 = (*((*MEMORY[0x277D85000] & *v24) + 0x160))();

  if (!v25)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  if (v21 == 0x8000000000000000 && v25 == -1)
  {
    goto LABEL_19;
  }

  v27 = *(v0 + 136);
  v28 = sub_27222CD4C();
  v29 = *(*v27 + 384);
  v40 = (v29 + *v29);
  v30 = v29[1];
  v31 = swift_task_alloc();
  *(v0 + 440) = v31;
  *v31 = v0;
  v31[1] = sub_27226EE48;
  v32 = *(v0 + 136);

  (v40)(0, 1, v28 & 1);
}

uint64_t sub_27226EE48(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 440);
  v6 = *v2;
  *(*v2 + 448) = v1;

  if (v1)
  {
    v7 = *(v4 + 464);
    v8 = *(v4 + 304);
    sub_272270678(*(v4 + 296));
    v9 = sub_272270058;
  }

  else
  {
    *(v4 + 456) = a1;
    v9 = sub_27226EF7C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

void sub_27226EF7C()
{
  if (*(v0 + 456))
  {
    v1 = *(v0 + 456);
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  if (!*(v1 + 16))
  {
    v17 = *(v0 + 464);
    v19 = *(v0 + 296);
    v18 = *(v0 + 304);
    v21 = *(v0 + 256);
    v20 = *(v0 + 264);
    v22 = *(v0 + 248);
    v23 = *(v0 + 232);
    v24 = *(v0 + 200);

    sub_272270678(v19);
    v21(v23, v22, v24);
    v25 = sub_27237725C();
    v26 = sub_272377E7C();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 272);
    v29 = *(v0 + 232);
    v30 = *(v0 + 200);
    v31 = *(v0 + 208);
    if (v27)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2721E4000, v25, v26, "processing was stopped, stop predictions", v32, 2u);
      MEMORY[0x2743C69C0](v32, -1, -1);
    }

    v28(v29, v30);
    v33 = *(v0 + 448);
    (*((*MEMORY[0x277D85000] & **(v0 + 144)) + 0x220))(0);
    v34 = *(v0 + 376);
    v36 = *(v0 + 344);
    v35 = *(v0 + 352);
    v37 = *(v0 + 320);
    v38 = *(v0 + 280);
    v39 = *(v0 + 288);
    if (!v33)
    {
      v83 = *(v0 + 232);
      v84 = *(v0 + 240);
      v189 = *(v0 + 224);
      v193 = *(v0 + 216);
      v199 = *(v0 + 184);
      v201 = *(v0 + 176);
      v204 = *(v0 + 152);
      sub_272216BD8(*(v0 + 192));

      v85 = *(v0 + 104);
      sub_2722706B8(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

      v49 = *(v0 + 8);
      goto LABEL_17;
    }

    sub_272216BD8(*(v0 + 192));

    goto LABEL_15;
  }

  v3 = *(v0 + 312);
  v2 = *(v0 + 320);
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & **(v0 + 352)) + 0x170))(v1);
  if (v3 && v2)
  {
    v6 = *(**(v0 + 320) + 168);

    v6(v5);
  }

  v7 = *(v0 + 448);
  if (!*(v0 + 96))
  {

    v50 = v5;
    v51 = *(v0 + 296);
    if (!v51)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v8 = sub_272323A58(v5);
  if (v7)
  {
    v9 = *(v0 + 376);
    v10 = *(v0 + 344);
    v11 = *(v0 + 352);
    v197 = *(v0 + 320);
    v12 = *(v0 + 464);
    v14 = *(v0 + 296);
    v13 = *(v0 + 304);
    v16 = *(v0 + 280);
    v15 = *(v0 + 288);
    sub_272216BD8(*(v0 + 192));

    sub_272270678(v14);

LABEL_15:

LABEL_16:
    v40 = *(v0 + 104);
    sub_2722706B8(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));
    v42 = *(v0 + 232);
    v41 = *(v0 + 240);
    v44 = *(v0 + 216);
    v43 = *(v0 + 224);
    v46 = *(v0 + 184);
    v45 = *(v0 + 192);
    v47 = *(v0 + 176);
    v48 = *(v0 + 152);

    v49 = *(v0 + 8);
LABEL_17:

    v49();
    return;
  }

  v50 = v8;
  v51 = *(v0 + 296);
  if (v51)
  {
LABEL_21:
    v52 = *(v0 + 464);
    v53 = *(v0 + 304);

    v54 = sub_2723236B4(v50, v51, v53, v52);

    v50 = v54;
  }

LABEL_22:
  v55 = *(v0 + 336);
  v56 = *(v0 + 328);
  v57 = *(v0 + 280);
  v58 = (*(**(v0 + 344) + 168))(v50);
  v59 = v56(v58);
  v60 = (*((*v4 & *v59) + 0x160))();

  if (!v60)
  {
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v61 = *(v0 + 432);
  if (v61 == 0x8000000000000000 && v60 == -1)
  {
    goto LABEL_93;
  }

  if (!(v61 % v60))
  {
    v68 = 0;
    v69 = 0;
    v70 = *(v0 + 312);
    if (v70)
    {
      v71 = *(v0 + 320);
      if (v71)
      {
        v72 = *(*v71 + 176);
        v73 = *(v0 + 320);

        v72(v74);
        v75 = (*(*v70 + 128))();
        if (v7)
        {
          v76 = *(v0 + 376);
          v78 = *(v0 + 344);
          v77 = *(v0 + 352);
          v80 = *(v0 + 312);
          v79 = *(v0 + 320);
          v198 = *(v0 + 464);
          v188 = *(v0 + 296);
          v192 = *(v0 + 304);
          v82 = *(v0 + 280);
          v81 = *(v0 + 288);
          sub_272216BD8(*(v0 + 192));

          sub_272270678(v188);

          goto LABEL_16;
        }

        v68 = v75;
        v86 = *(v0 + 288);

        v87 = *((*v4 & *v86) + 0x178);

        if (v87(v88))
        {
          v89 = (*((*v4 & **(v0 + 144)) + 0x238))(v68, *(*(v0 + 192) + 52));

          v69 = (v89 >> 8) & 1;
          if ((v89 & 0x100) != 0)
          {
            v90 = *(v0 + 264);
            (*(v0 + 256))(*(v0 + 224), *(v0 + 248), *(v0 + 200));
            v91 = sub_27237725C();
            v92 = sub_272377E7C();
            if (os_log_type_enabled(v91, v92))
            {
              v93 = *(v0 + 432);
              v94 = swift_slowAlloc();
              *v94 = 134217984;
              *(v94 + 4) = v93;
              _os_log_impl(&dword_2721E4000, v91, v92, "Speech stopped detected at frame %lld", v94, 0xCu);
              MEMORY[0x2743C69C0](v94, -1, -1);
            }

            v95 = *(v0 + 272);
            v96 = *(v0 + 224);
            v97 = v91;
            v99 = *(v0 + 200);
            v98 = *(v0 + 208);

            v95(v96, v99);
          }

          if (v89)
          {
            v100 = *(v0 + 264);
            (*(v0 + 256))(*(v0 + 216), *(v0 + 248), *(v0 + 200));
            v101 = sub_27237725C();
            v102 = sub_272377E7C();
            if (os_log_type_enabled(v101, v102))
            {
              v103 = *(v0 + 432);
              v104 = swift_slowAlloc();
              *v104 = 134217984;
              *(v104 + 4) = v103;
              _os_log_impl(&dword_2721E4000, v101, v102, "Speech started detected at frame %lld", v104, 0xCu);
              MEMORY[0x2743C69C0](v104, -1, -1);
            }

            v106 = *(v0 + 312);
            v105 = *(v0 + 320);
            v205 = *(v0 + 272);
            v107 = v101;
            v108 = *(v0 + 208);
            v109 = *(v0 + 216);
            v110 = *(v0 + 200);

            v205(v109, v110);
          }

          else
          {
            v113 = *(v0 + 312);
            v114 = *(v0 + 320);
          }

          v7 = 0;
        }

        else
        {
          v111 = *(v0 + 312);
          v112 = *(v0 + 320);

          v7 = 0;
          v69 = 0;
        }
      }
    }

    v200 = v68;
    if ((*((*v4 & **(v0 + 288)) + 0x178))())
    {
      v115 = (*((*v4 & **(v0 + 144)) + 0x198))();
      v116 = *(v0 + 400);
      if (((v69 | v115) & 1) == 0)
      {
        v117 = (*(**(*(v0 + 144) + v116) + 168))();
        if (v7)
        {
          v120 = *(v0 + 376);
          v121 = *(v0 + 344);
          v122 = *(v0 + 352);
          v194 = *(v0 + 320);
          v123 = *(v0 + 464);
          v124 = *(v0 + 296);
          v125 = *(v0 + 304);
          v127 = *(v0 + 280);
          v126 = *(v0 + 288);
          sub_272216BD8(*(v0 + 192));

          v128 = v124;
LABEL_56:
          sub_272270678(v128);

          goto LABEL_16;
        }

        v142 = v117;
        v191 = v119;
        v196 = v118;
LABEL_59:
        v143 = v68;
        v144 = *((*v4 & **(v0 + 280)) + 0xD0);

        v146 = v144(v145);
        if (!v146)
        {
LABEL_97:
          __break(1u);
          return;
        }

        v147 = v146;

        v149 = (*((*v4 & *v147) + 0x138))(v148);

        v150 = *(v142 + 16);

        v187 = v150;
        if (!v150)
        {
LABEL_85:

          v7 = 0;
          goto LABEL_27;
        }

        v151 = 0;
        v152 = *(v0 + 192);
        v183 = v152[73];
        v184 = v152[72];
        v182 = v152[74];
        v181 = *(**(v0 + 376) + 592);
        v186 = v142 + 32;
        v153 = v68 + 48;
        v179 = v149 & 0xFFFFFFFFFFFFFFF8;
        v154 = v149;
        v180 = v142;
        while (1)
        {
          v155 = v151 + 1;
          if (v143)
          {
            v156 = v151 * v149;
            if ((v151 * v149) >> 64 != (v151 * v149) >> 63)
            {
              goto LABEL_90;
            }

            v157 = v155 * v149;
            if ((v155 * v149) >> 64 != (v155 * v149) >> 63)
            {
              goto LABEL_91;
            }

            if (v157 < v156)
            {
              goto LABEL_92;
            }

            v158 = 0.0;
            if (v156 != v157)
            {
              if (v156 >= v157)
              {
                goto LABEL_94;
              }

              if (v156 < 0)
              {
                goto LABEL_95;
              }

              v159 = *(v143 + 16);
              if (v156 >= v159 || v157 - 1 >= v159)
              {
                goto LABEL_96;
              }

              if (v149 < 8)
              {
                goto LABEL_76;
              }

              v160 = v149 & 0xFFFFFFFFFFFFFFF8;
              v156 += v179;
              v161 = v153;
              do
              {
                v158 = (((((((v158 + COERCE_FLOAT(*(v161 - 16))) + COERCE_FLOAT(HIDWORD(*(v161 - 16)))) + COERCE_FLOAT(*(v161 - 8))) + COERCE_FLOAT(HIDWORD(*(v161 - 16)))) + COERCE_FLOAT(*v161)) + COERCE_FLOAT(HIDWORD(*v161))) + COERCE_FLOAT(*(v161 + 8))) + COERCE_FLOAT(HIDWORD(*v161));
                v161 += 32;
                v160 -= 8;
              }

              while (v160);
              if (v149 != v179)
              {
LABEL_76:
                v162 = (v200 + 32 + 4 * v156);
                v163 = v154 - v156;
                do
                {
                  v164 = *v162++;
                  v158 = v158 + v164;
                  --v163;
                }

                while (v163);
              }
            }

            v165 = v158 / v149;
          }

          else
          {
            v165 = 0.0;
          }

          if (v151 >= *(v142 + 16))
          {
            break;
          }

          v202 = v151 + 1;
          v167 = *(v0 + 360);
          v166 = *(v0 + 368);
          v168 = *(v0 + 176);
          v169 = *(v0 + 136);
          v170 = *(v186 + 8 * v151);

          v167(v171);
          v172 = VARuntimeParameters.keywordsNoThresholds.getter();
          sub_272216BD8(v168);
          if (v151 >= *(v196 + 16))
          {
            goto LABEL_87;
          }

          if (v151 >= *(v191 + 16))
          {
            goto LABEL_88;
          }

          v173 = *(v0 + 376);
          v174 = *(v196 + 32 + 8 * v151);
          v175 = *(v191 + 32 + 8 * v151);

          v176 = v181(v170, v172, v174, v175, v184, v183, v182, v165);

          v178 = *((*(*v176 + 104))(v177) + 16);

          if (v178)
          {
            (*((*MEMORY[0x277D85000] & **(v0 + 144)) + 0x240))(v176);
          }

          v142 = v180;
          v153 += 4 * v149;
          v154 += v149;
          v151 = v202;
          v143 = v200;
          if (v202 == v187)
          {
            goto LABEL_85;
          }
        }

        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }
    }

    else
    {
      v116 = *(v0 + 400);
    }

    v129 = *(v0 + 376);
    v130 = *(v0 + 144);
    v131 = (*(**(v0 + 344) + 176))();
    v132 = *(v130 + v116);
    v133 = (*(*v129 + 344))();
    v134 = (*(*v132 + 176))(v131, v133);
    if (v7)
    {
      v137 = *(v0 + 376);
      v139 = *(v0 + 344);
      v138 = *(v0 + 352);
      v195 = *(v0 + 320);
      v190 = *(v0 + 464);
      v140 = *(v0 + 296);
      v185 = *(v0 + 304);
      v127 = *(v0 + 280);
      v141 = *(v0 + 288);
      sub_272216BD8(*(v0 + 192));

      v128 = v140;
      goto LABEL_56;
    }

    v142 = v134;
    v191 = v136;
    v196 = v135;

    goto LABEL_59;
  }

LABEL_27:

  v62 = *(v0 + 432);
  *(v0 + 408) = v7;
  *(v0 + 416) = v62;
  v63 = *(v0 + 392);
  v203 = (*(v0 + 384) + **(v0 + 384));
  v64 = *(*(v0 + 384) + 4);
  v65 = swift_task_alloc();
  *(v0 + 424) = v65;
  *v65 = v0;
  v65[1] = sub_27226E968;
  v66 = *(v0 + 392);
  v67 = *(v0 + 136);

  v203();
}

uint64_t sub_272270058()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 344);
  v3 = *(v0 + 320);
  v5 = *(v0 + 280);
  v4 = *(v0 + 288);
  v6 = *(v0 + 192);

  sub_272216BD8(v6);
  v7 = *(v0 + 104);
  sub_2722706B8(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));
  v8 = *(v0 + 448);
  v10 = *(v0 + 232);
  v9 = *(v0 + 240);
  v12 = *(v0 + 216);
  v11 = *(v0 + 224);
  v14 = *(v0 + 184);
  v13 = *(v0 + 192);
  v15 = *(v0 + 176);
  v16 = *(v0 + 152);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_27227019C()
{
  sub_2722039C8((v0 + OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_strategyProvider));
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_kwsModel);

  v2 = *(v0 + OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_vadModel);

  return sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions21VAFixedKeywordSpotter_runtimeParameters, &qword_280881F70, &qword_27237E320);
}

id VAFixedKeywordSpotter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VAFixedKeywordSpotter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_2722702A8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_2721F065C(&qword_280881860, &unk_27237C340);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_27227032C(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2722704B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2722704F8(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_272211DBC;

  return sub_27226DD10(a1, v6, v7, v5, v4);
}

void sub_2722705AC()
{
  sub_272253328();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_272270678(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2722706B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_27227074C(__int128 *a1)
{
  swift_beginAccess();
  sub_2722039C8((v1 + 32));
  sub_2721F41B4(a1, v1 + 32);
  return swift_endAccess();
}

void *sub_2722707A4()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

void sub_2722707E8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = a1;
}

uint64_t sub_272270884(unsigned __int8 *a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *a1;
  v7 = MEMORY[0x277D84F90];
  v2[3] = MEMORY[0x277D84F90];
  v2[9] = v7;
  v2[10] = v7;
  v2[11] = 0;
  v8 = [objc_allocWithZone(MEMORY[0x277CBFF30]) init];
  v9 = v8;
  if (v6)
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  [v8 setComputeUnits_];
  type metadata accessor for at_verifier_rdr_125141826();
  v11 = sub_2722B4458(v9);
  if (v3)
  {
    sub_2722039C8(a2);
    v12 = v4[3];

    v13 = v4[9];

    v14 = v4[10];

    type metadata accessor for VAA2TVerifierV2();
    return swift_deallocPartialClassInstance();
  }

  else
  {
    v4[2] = v11;
    sub_27221629C(a2, (v4 + 4));
    v16 = sub_2722591B0();
    sub_2722039C8(a2);
    return v16;
  }
}

uint64_t sub_2722709C0(uint64_t a1)
{
  v4 = type metadata accessor for G2PFactored();
  v30 = (*(v4 + 80))();
  if (!v30)
  {
    sub_2722032B4();
    swift_allocError();
    *v28 = 0xD000000000000014;
    v28[1] = 0x800000027238B890;
    swift_willThrow();
    return v2;
  }

  v2 = sub_27223D5A8(MEMORY[0x277D84F90]);
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_18:

    return v2;
  }

  v6 = (a1 + 40);
  while (1)
  {
    v11 = *(v6 - 1);
    v10 = *v6;
    v12 = *((*MEMORY[0x277D85000] & *v30) + 0x60);

    v13 = v12(v11, v10);
    if (v1)
    {

      return v2;
    }

    v14 = v13;
    v31 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v2;
    v16 = sub_27220038C(v11, v10);
    v18 = *(v2 + 16);
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (*(v2 + 24) < v21)
    {
      sub_27223C9E8(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_27220038C(v11, v10);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_23;
      }

LABEL_12:
      v1 = 0;
      if (v22)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v27 = v16;
    sub_27223D2B8();
    v16 = v27;
    v1 = 0;
    if (v22)
    {
LABEL_4:
      v7 = v16;

      v2 = v32;
      v8 = v32[7];
      v9 = *(v8 + 8 * v7);
      *(v8 + 8 * v7) = v14;

      goto LABEL_5;
    }

LABEL_13:
    v2 = v32;
    v32[(v16 >> 6) + 8] |= 1 << v16;
    v24 = (v32[6] + 16 * v16);
    *v24 = v11;
    v24[1] = v10;
    *(v32[7] + 8 * v16) = v14;
    v25 = v32[2];
    v20 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v20)
    {
      goto LABEL_22;
    }

    v32[2] = v26;
LABEL_5:
    v6 += 2;
    --v5;
    if (v31 == 1)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_2723786BC();
  __break(1u);
  return result;
}

uint64_t sub_272270C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_2722722B0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_27220038C(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_27223D2B8();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_27223CF60(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_272270D64(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for VASignpostInterval();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(VARuntimeParameters.keywordsNoThresholds.getter() + 2);

  v10 = sub_27220392C(&unk_28817EA90, v9);
  v11 = (*(*v3 + 168))(v10);
  v12 = *(*v3 + 184);
  v13 = *v3 + 184;
  v12(&v127, v11);
  v14 = v129;
  v15 = v130;
  sub_27220300C(&v127, v129);
  v16 = (*(v15 + 8))(v14, v15);
  if (v2)
  {
    return sub_2722039C8(&v127);
  }

  v18 = v16;
  v120 = v13;
  v121 = v12;
  *&v119 = v8;
  v124 = v3;
  v131 = v16;
  sub_2722039C8(&v127);
  v118 = a1;
  v19 = VARuntimeParameters.keywordsNoThresholds.getter();
  v20 = *(v19 + 2);
  if (v20)
  {
    v21 = (v19 + 40);
    v125 = MEMORY[0x277D84F90];
    do
    {
      v24 = *(v21 - 1);
      v23 = *v21;
      v25 = *(v18 + 16);

      if (v25 && (sub_27220038C(v24, v23), (v26 & 1) != 0))
      {

        v22 = v125;
      }

      else
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v22 = v125;
        }

        else
        {
          v22 = sub_2721FFBF8(0, *(v125 + 2) + 1, 1, v125);
        }

        v28 = *(v22 + 2);
        v27 = *(v22 + 3);
        if (v28 >= v27 >> 1)
        {
          v22 = sub_2721FFBF8((v27 > 1), v28 + 1, 1, v22);
        }

        *(v22 + 2) = v28 + 1;
        v29 = &v22[16 * v28];
        *(v29 + 4) = v24;
        *(v29 + 5) = v23;
      }

      v125 = v22;
      v21 += 2;
      --v20;
    }

    while (v20);
  }

  else
  {
    v125 = MEMORY[0x277D84F90];
  }

  v30 = v125;
  if (*(v125 + 2))
  {
    type metadata accessor for VALog();
    static VALog.begin(_:_:)("G2p", 3, 2u, 0, 0, v119);
    v31 = v124;
    v32 = (*(*v124 + 288))(v30);
    v122 = 0;
    v66 = v32 + 64;
    v67 = 1 << *(v32 + 32);
    v68 = -1;
    if (v67 < 64)
    {
      v68 = ~(-1 << v67);
    }

    v69 = v68 & *(v32 + 64);
    v70 = (v67 + 63) >> 6;
    v71 = 0;
    v33 = v30;

    v115 = v72;
    v116 = v70;
    for (i = v66; ; v66 = i)
    {
      v125 = v33;
      v74 = v121;
      if (!v69)
      {
        break;
      }

LABEL_53:
      v76 = (v72[6] + ((v71 << 10) | (16 * __clz(__rbit64(v69)))));
      v77 = *v76;
      v78 = v76[1];
      v79 = *(v33 + 2);

      if (v79)
      {
        v80 = 0;
        v81 = v33 + 40;
        v113 = v79 - 1;
        v123 = MEMORY[0x277D84F90];
        v114 = v33 + 40;
LABEL_55:
        v82 = &v81[16 * v80];
        v83 = v80;
        while (v83 < *(v33 + 2))
        {
          v84 = *(v82 - 1);
          v85 = *v82;
          v86 = v84 == v77 && v85 == v78;
          if (!v86)
          {
            v87 = *(v82 - 1);
            v88 = *v82;
            v89 = sub_27237865C();
            v33 = v125;
            if ((v89 & 1) == 0)
            {

              v90 = v123;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v127 = v90;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_27220056C(0, *(v90 + 2) + 1, 1);
                v90 = v127;
              }

              v93 = *(v90 + 2);
              v92 = *(v90 + 3);
              v94 = (v93 + 1);
              v33 = v125;
              if (v93 >= v92 >> 1)
              {
                v123 = (v93 + 1);
                v112 = v93;
                sub_27220056C((v92 > 1), v93 + 1, 1);
                v94 = v123;
                v93 = v112;
                v33 = v125;
                v90 = v127;
              }

              v80 = v83 + 1;
              *(v90 + 2) = v94;
              v123 = v90;
              v95 = &v90[16 * v93];
              *(v95 + 4) = v84;
              *(v95 + 5) = v85;
              v86 = v113 == v83;
              v31 = v124;
              v72 = v115;
              v81 = v114;
              if (v86)
              {
                goto LABEL_72;
              }

              goto LABEL_55;
            }
          }

          ++v83;
          v82 += 16;
          v31 = v124;
          if (v79 == v83)
          {
            v72 = v115;
            goto LABEL_72;
          }
        }

LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);

        __break(1u);
        return result;
      }

      v123 = MEMORY[0x277D84F90];
LABEL_72:

      if (v72[2] && (v96 = sub_27220038C(v77, v78), (v97 & 1) != 0))
      {
        v98 = *(v72[7] + 8 * v96);
      }

      else
      {
        v73 = 0;
      }

      v69 &= v69 - 1;
      sub_272270C6C(v73, v77, v78);
      v33 = v123;
      v70 = v116;
    }

    while (1)
    {
      v75 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        goto LABEL_86;
      }

      if (v75 >= v70)
      {
        break;
      }

      v69 = *(v66 + 8 * v75);
      ++v71;
      if (v69)
      {
        v71 = v75;
        goto LABEL_53;
      }
    }

    if (*(v33 + 2))
    {
      v127 = 0;
      v128 = 0xE000000000000000;
      sub_27237820C();

      v127 = 0xD000000000000012;
      v128 = 0x800000027238B8B0;
      v126 = v33;
      sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
      sub_272203B18();
      v100 = sub_2723777CC();
      v102 = v101;

      MEMORY[0x2743C4AD0](v100, v102);

      v103 = v127;
      v104 = v128;
      sub_2722032B4();
      swift_allocError();
      *v105 = v103;
      v105[1] = v104;
      swift_willThrow();
      sub_272272F68(v119);
    }

    v74(&v127, v99);
    v107 = v129;
    v108 = v130;
    sub_27220300C(&v127, v129);
    v18 = v131;
    v109 = v122;
    (*(v108 + 16))(v131, v107, v108);
    if (v109)
    {
      sub_272272F68(v119);

      sub_2722039C8(&v127);
    }

    sub_2722039C8(&v127);
    v110 = v119;
    VASignpostInterval.end(_:)(0);
    sub_272272F68(v110);
  }

  else
  {
    v31 = v124;
  }

  v127 = VARuntimeParameters.keywordsNoThresholds.getter();

  v33 = 0;
  sub_272272490(&v127);

  v34 = v127;
  v35 = sub_272377B5C();
  *(v35 + 16) = 48;
  *(v35 + 32) = 0u;
  *(v35 + 48) = 0u;
  *(v35 + 64) = 0u;
  *(v35 + 80) = 0u;
  *(v35 + 96) = 0u;
  *(v35 + 112) = 0u;
  *(v35 + 128) = 0u;
  *(v35 + 144) = 0u;
  *(v35 + 160) = 0u;
  *(v35 + 176) = 0u;
  *(v35 + 192) = 0u;
  *(v35 + 208) = 0u;
  v36 = *(VARuntimeParameters.keywordsNoThresholds.getter() + 2);

  v37 = sub_27220392C(v35, v36);

  v38 = *(v31 + 72);
  *(v31 + 72) = v37;

  v39 = [objc_allocWithZone(MEMORY[0x277CBFF40]) init];
  v40 = *(VARuntimeParameters.keywordsNoThresholds.getter() + 2);

  v41 = sub_272272FC4(v39, v40);

  swift_beginAccess();
  v42 = *(v31 + 80);
  *(v31 + 80) = v41;

  v121 = *(v34 + 2);
  if (v121)
  {
    v43 = 0;
    v120 = v34 + 32;
    v119 = xmmword_27237AF80;
    v123 = v34;
    while (v43 < *(v34 + 2))
    {
      if (!*(v18 + 16))
      {
        goto LABEL_77;
      }

      v44 = 0;
      v45 = &v120[16 * v43];
      v33 = *v45;
      v46 = *(v45 + 1);

      v47 = sub_27220038C(v33, v46);
      v49 = v48;

      if ((v49 & 1) == 0)
      {
LABEL_77:

        sub_2722032B4();
        swift_allocError();
        *v106 = 0xD00000000000001DLL;
        v106[1] = 0x800000027238B8D0;
        swift_willThrow();
      }

      v50 = *(*(v18 + 56) + 8 * v47);
      v51 = *(v50 + 16);
      if (v51)
      {
        v122 = 0;

        v52 = 0;
        v53 = *(v31 + 72);
        while (1)
        {
          v54 = *(v50 + 8 * v52 + 32);
          v55 = swift_isUniquelyReferenced_nonNull_native();
          *(v31 + 72) = v53;
          if ((v55 & 1) == 0)
          {
            v53 = sub_272200344(v53);
            *(v31 + 72) = v53;
          }

          if (v43 >= v53[2])
          {
            break;
          }

          v56 = v53[v43 + 4];
          v57 = swift_isUniquelyReferenced_nonNull_native();
          v53[v43 + 4] = v56;
          if ((v57 & 1) == 0)
          {
            v56 = sub_2722002AC(v56);
            v53[v43 + 4] = v56;
          }

          v31 = v124;
          if (v52 >= *(v56 + 2))
          {
            goto LABEL_84;
          }

          *&v56[4 * v52 + 32] = v54;
          *(v31 + 72) = v53;
          if (v51 == ++v52)
          {

            v44 = v122;
            goto LABEL_34;
          }
        }

        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

LABEL_34:
      sub_2721F065C(&qword_280881850, &unk_27237E840);
      v58 = swift_allocObject();
      *(v58 + 16) = v119;
      v59 = *(v31 + 72);
      if (v43 >= *(v59 + 16))
      {
        goto LABEL_88;
      }

      v60 = v58;
      *(v58 + 32) = *(v59 + 8 * v43 + 32);

      v33 = v44;
      sub_272256C78(v60);
      if (v44)
      {
      }

      v62 = v61;

      swift_beginAccess();
      v63 = *(v31 + 80);
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *(v31 + 80) = v63;
      if (!isUniquelyReferenced_nonNull_bridgeObject || (v63 & 0x8000000000000000) != 0 || (v63 & 0x4000000000000000) != 0)
      {
        v63 = sub_27227242C(v63);
        *(v31 + 80) = v63;
      }

      if (v43 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_89;
      }

      v65 = *((v63 & 0xFFFFFFFFFFFFFF8) + 8 * v43 + 0x20);
      *((v63 & 0xFFFFFFFFFFFFFF8) + 8 * v43 + 0x20) = v62;
      *(v31 + 80) = v63;
      swift_endAccess();

      ++v43;
      v34 = v123;
      if (v43 == v121)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_87;
  }

LABEL_42:
}

uint64_t sub_272271854(unint64_t a1, char a2)
{
  v6 = sub_27237728C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v16 = result;
    if (sub_2723783AC())
    {
      v17 = sub_2723783AC();
      result = v16;
      if (v17 >= 2)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }

LABEL_16:
    type metadata accessor for VAResultGeneratorInput();
    return VAResultGeneratorInput.__allocating_init(hasInput:scores:vadBuffer:)(0, 0, 0);
  }

  v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_16;
  }

  if (v12 >= 2)
  {
LABEL_4:
    v13 = 0x80000002723886D0;
    sub_2722032B4();
    swift_allocError();
    v15 = 0xD00000000000001FLL;
LABEL_18:
    *v14 = v15;
    v14[1] = v13;
    return swift_willThrow();
  }

LABEL_7:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v18 = result;
    MEMORY[0x2743C5370](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v18 = result;
    v19 = *(a1 + 32);
    swift_unknownObjectRetain();
  }

  type metadata accessor for VAFeatureExtractingEncoderOutput();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    swift_unknownObjectRelease();
    v13 = 0x80000002723886B0;
    sub_2722032B4();
    swift_allocError();
    v15 = 0xD000000000000018;
    goto LABEL_18;
  }

  if ((*(v20 + 16) & 1) == 0)
  {
LABEL_22:
    type metadata accessor for VAResultGeneratorInput();
    v24 = 0;
    v25 = 0;
    v26 = 0;
    goto LABEL_23;
  }

  if (!*(v2[9] + 16))
  {
    v27 = sub_2722C389C();
    (*(v7 + 16))(v11, v27, v18);
    v28 = sub_27237725C();
    v29 = sub_272377E8C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2721E4000, v28, v29, "No pronunciations set for this model", v30, 2u);
      MEMORY[0x2743C69C0](v30, -1, -1);
    }

    (*(v7 + 8))(v11, v18);
    goto LABEL_22;
  }

  if (a2)
  {
    v21 = v20;
    v22 = (*(*v2 + 160))();
LABEL_15:
    type metadata accessor for VAResultGeneratorInput();
    v23 = *(v21 + 32);

    v24 = 1;
    v25 = v22;
    v26 = v23;
LABEL_23:
    v31 = VAResultGeneratorInput.__allocating_init(hasInput:scores:vadBuffer:)(v24, v25, v26);
    swift_unknownObjectRelease();
    return v31;
  }

  if (*(v20 + 40))
  {
    v21 = v20;
    v32 = *(*v2 + 312);
    v33 = *(v20 + 40);

    v22 = v32(v34);

    if (!v3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v35 = 0xD00000000000001ELL;
    v35[1] = 0x800000027238B8F0;
    swift_willThrow();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_272271C60(uint64_t a1)
{
  v3 = v1;
  v5 = sub_27220392C(MEMORY[0x277D84F90], *(v1[9] + 16));
  v6 = (*(*v1 + 272))(v41);
  sub_27225677C(a1, v7);
  if (v2)
  {

    v6(v41, 1);
    return v5;
  }

  v9 = (v6)(v41, 0);
  v10 = (*(*v3 + 256))(v9);
  if (!v10)
  {

    sub_2722032B4();
    swift_allocError();
    *v36 = 0xD000000000000024;
    v36[1] = 0x800000027238B910;
    swift_willThrow();
    return v5;
  }

  v11 = v10;
  v12 = *(v3[9] + 16);
  result = swift_beginAccess();
  if (!v12)
  {
LABEL_16:

    return v5;
  }

  v13 = 4;
  v37 = v11;
  v38 = v3;
  while (1)
  {
    v14 = v3[10];
    if ((v14 & 0xC000000000000001) == 0)
    {
      break;
    }

    v35 = v11;

    v17 = MEMORY[0x2743C5370](v13 - 4, v14);

LABEL_10:
    type metadata accessor for at_verifier_rdr_125141826Input();
    sub_2722B4168(v11, v17);
    v18 = (*(*v3[2] + 136))();
    v40 = v12;
    sub_2721F065C(&qword_280881848, &unk_27237C250);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_27237AFB0;
    v39 = v5;
    v20 = *(*v18 + 88);
    v21 = v20();
    v22 = [v21 objectAtIndexedSubscript_];

    [v22 floatValue];
    v24 = v23;

    *(v19 + 32) = v24;
    v25 = v20();
    v26 = [v25 objectAtIndexedSubscript_];

    [v26 floatValue];
    v28 = v27;

    *(v19 + 36) = v28;
    v29 = v20();
    v5 = v39;
    v30 = v29;
    v31 = [v29 objectAtIndexedSubscript_];

    [v31 floatValue];
    v33 = v32;

    *(v19 + 40) = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_272200344(v39);
    }

    v11 = v37;
    v3 = v38;
    if ((v13 - 4) >= *(v5 + 16))
    {
      goto LABEL_19;
    }

    v34 = *(v5 + 8 * v13);
    *(v5 + 8 * v13) = v19;

    ++v13;
    --v12;
    if (v40 == 1)
    {
      goto LABEL_16;
    }
  }

  if ((v13 - 4) < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v14 + 8 * v13);
    v16 = v11;
    v17 = v15;
    goto LABEL_10;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void sub_2722720B0()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_2722039C8(v0 + 4);
  v3 = v0[9];

  v4 = v0[10];

  v5 = v0[11];
}

uint64_t VAA2TVerifierV2.deinit()
{
  v0 = VAVerifierModel.deinit();
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_2722039C8((v0 + 32));
  v3 = *(v0 + 72);

  v4 = *(v0 + 80);

  return v0;
}

uint64_t VAA2TVerifierV2.__deallocating_deinit()
{
  v0 = VAVerifierModel.deinit();
  v1 = v0[2];

  v2 = v0[3];

  sub_2722039C8(v0 + 4);
  v3 = v0[9];

  v4 = v0[10];

  v5 = v0[11];

  return swift_deallocClassInstance();
}

uint64_t sub_2722722B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_27220038C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_27223C9E8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_27220038C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_2723786BC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_27223D2B8();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_27227242C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2723783AC();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_27237822C();
}

uint64_t sub_272272490(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_272272F54(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2722724FC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2722724FC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_27237861C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_272377B5C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2722726C4(v7, v8, a1, v4);
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
    return sub_2722725F4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2722725F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_27237865C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2722726C4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_272244CC4(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_272272CA0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_27237865C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_27237865C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_272244480(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_272244480((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
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
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_272272CA0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_272244CC4(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_272272EC8(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_27237865C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_272272CA0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_27237865C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_27237865C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_272272EC8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_272244CC4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_272272F68(uint64_t a1)
{
  v2 = type metadata accessor for VASignpostInterval();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_272272FC4(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    sub_272273128();
    v4 = sub_272377B5C();
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    *(v5 + 16) = a2;
    *(v5 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v5 + 40);
      do
      {
        *v7++ = v3;
        v8 = v3;
        --v6;
      }

      while (v6);
    }

    v9 = v3;
    return v4;
  }

  return result;
}

unint64_t sub_272273128()
{
  result = qword_2808821D0;
  if (!qword_2808821D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2808821D0);
  }

  return result;
}

VoiceActions::SpeechDetectorMode_optional __swiftcall SpeechDetectorMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_272273248@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t sub_27227328C(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_27227330C()
{
  v1 = (v0 + OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_taskHintString);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_272273364(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_taskHintString);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2722733C4()
{
  v1 = OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_batchAudioMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272273408(char a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_batchAudioMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272273458()
{
  v1 = (v0 + OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_hypothesisCallback);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_2722734B4(v3);
  return v3;
}

uint64_t sub_2722734B4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2722734C4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_hypothesisCallback);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_272273524(v6);
}

uint64_t sub_272273524(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_272273574()
{
  v1 = OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_locale;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_2722735C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_locale;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_272273640@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = a2(0);
  return (*(*(v7 - 8) + 16))(a3, v3 + v6, v7);
}

uint64_t sub_2722736EC(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = a3(0);
  (*(*(v7 - 8) + 40))(v3 + v6, a1, v7);
  return swift_endAccess();
}

uint64_t VASpeechAPISpotterConfiguration.__allocating_init(taskHint:farField:keepModelLoaded:speechDetectorMode:batchAudioMode:hypothesisCallback:)(uint64_t a1, int a2, int a3, unsigned __int8 *a4, int a5, uint64_t a6, uint64_t a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  swift_allocObject();
  v17 = sub_272273AC8(a1, a2, a3, a4, a5, a6, a7);
  sub_272273524(a6);
  return v17;
}

uint64_t VASpeechAPISpotterConfiguration.init(taskHint:farField:keepModelLoaded:speechDetectorMode:batchAudioMode:hypothesisCallback:)(uint64_t a1, int a2, int a3, unsigned __int8 *a4, int a5, uint64_t a6, uint64_t a7)
{
  v8 = sub_272273AC8(a1, a2, a3, a4, a5, a6, a7);
  sub_272273524(a6);
  return v8;
}

uint64_t VASpeechAPISpotterConfiguration.deinit()
{
  v1 = OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_taskHint;
  v2 = sub_27237768C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_taskHintString + 8);

  v4 = *(v0 + OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_hypothesisCallback + 8);
  sub_272273524(*(v0 + OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_hypothesisCallback));
  v5 = OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_modelOptions;
  v6 = sub_27237732C();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  v7 = OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_analysisOptions;
  v8 = sub_2723774DC();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t VASpeechAPISpotterConfiguration.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_taskHint;
  v2 = sub_27237768C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_taskHintString + 8);

  v4 = *(v0 + OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_hypothesisCallback + 8);
  sub_272273524(*(v0 + OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_hypothesisCallback));
  v5 = OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_modelOptions;
  v6 = sub_27237732C();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  v7 = OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_analysisOptions;
  v8 = sub_2723774DC();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_272273AC8(uint64_t a1, int a2, int a3, unsigned __int8 *a4, int a5, uint64_t a6, uint64_t a7)
{
  v103 = a6;
  v104 = a7;
  v102 = a5;
  v93 = a3;
  v101 = a2;
  v91 = a1;
  v9 = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v99 = &v81[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v97 = &v81[-v13];
  v100 = sub_27237732C();
  v98 = *(v100 - 8);
  v14 = *(v98 + 64);
  MEMORY[0x28223BE20](v100);
  v96 = &v81[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_27237768C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v92 = &v81[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_2721F065C(&qword_2808821D8, &unk_27237F088);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v90 = &v81[-v22];
  v89 = sub_2723774BC();
  v87 = *(v89 - 8);
  v23 = *(v87 + 64);
  MEMORY[0x28223BE20](v89);
  v85 = &v81[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_272377C3C();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v83 = &v81[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = sub_2723774DC();
  v86 = *(v88 - 8);
  v28 = *(v86 + 64);
  MEMORY[0x28223BE20](v88);
  v30 = &v81[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v82 = *a4;
  *(v7 + 16) = 1;
  v31 = OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_taskHint;
  v84 = *MEMORY[0x277CDCE70];
  v32 = v16;
  (*(v17 + 104))(v7 + OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_taskHint);
  v33 = (v7 + OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_taskHintString);
  *v33 = 0x6F69746174636944;
  v33[1] = 0xE90000000000006ELL;
  v94 = OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_batchAudioMode;
  *(v7 + OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_batchAudioMode) = 0;
  v34 = (v7 + OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_hypothesisCallback);
  *v34 = 0;
  v34[1] = 0;
  v95 = v34;
  v35 = OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_locale;
  v36 = objc_allocWithZone(MEMORY[0x277CBEAF8]);
  v37 = sub_2723777FC();
  v38 = [v36 initWithLocaleIdentifier_];

  *(v7 + v35) = v38;
  v39 = v91;
  swift_beginAccess();
  v40 = v7 + v31;
  v41 = v7;
  v42 = v32;
  (*(v17 + 24))(v40, v39, v32);
  swift_endAccess();
  swift_beginAccess();
  *(v7 + 16) = v82;
  sub_272377C1C();
  v43 = MEMORY[0x277CDCC20];
  if ((v93 & 1) == 0)
  {
    v43 = MEMORY[0x277CDCC10];
  }

  (*(v87 + 104))(v85, *v43, v89);
  v44 = sub_2723774AC();
  (*(*(v44 - 8) + 56))(v90, 1, 1, v44);
  sub_2723774CC();
  (*(v86 + 32))(v7 + OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_analysisOptions, v30, v88);
  v45 = v39;
  v46 = v92;
  (*(v17 + 16))(v92, v45, v42);
  v47 = (*(v17 + 88))(v46, v42);
  if (v47 != v84)
  {
    if (v47 == *MEMORY[0x277CDCE50])
    {
      swift_beginAccess();
      v50 = v33[1];
      v51 = 0x686372616553;
      v52 = 0xE600000000000000;
LABEL_12:
      *v33 = v51;
      v33[1] = v52;
      goto LABEL_13;
    }

    if (v47 == *MEMORY[0x277CDCE10])
    {
      swift_beginAccess();
      v53 = v33[1];
      v51 = 0x616D7269666E6F43;
      v52 = 0xEC0000006E6F6974;
      goto LABEL_12;
    }

    if (v47 == *MEMORY[0x277CDCE68])
    {
      swift_beginAccess();
      v54 = v33[1];
      v51 = 0x6E61747369737341;
      v52 = 0xE900000000000074;
      goto LABEL_12;
    }

    if (v47 == *MEMORY[0x277CDCE38])
    {
      v67 = 0x800000027238BB20;
      swift_beginAccess();
      v68 = v33[1];
      v69 = 0xD000000000000012;
    }

    else
    {
      if (v47 == *MEMORY[0x277CDCE28])
      {
        v67 = 0x800000027238BB00;
      }

      else
      {
        if (v47 == *MEMORY[0x277CDCE20])
        {
          swift_beginAccess();
          v71 = v33[1];
          v51 = 0x6369446863746157;
          v52 = 0xEE006E6F69746174;
          goto LABEL_12;
        }

        if (v47 == *MEMORY[0x277CDCE78])
        {
          swift_beginAccess();
          v72 = v33[1];
          v51 = 0x69616D6563696F56;
          v52 = 0xE90000000000006CLL;
          goto LABEL_12;
        }

        if (v47 == *MEMORY[0x277CDCE18])
        {
          swift_beginAccess();
          v73 = v33[1];
          v51 = 0x436E49646E756F46;
          v52 = 0xEC000000736C6C61;
          goto LABEL_12;
        }

        if (v47 == *MEMORY[0x277CDCE00])
        {
          swift_beginAccess();
          v74 = v33[1];
          v51 = 0x696E6F6974706143;
          v52 = 0xEA0000000000676ELL;
          goto LABEL_12;
        }

        if (v47 == *MEMORY[0x277CDCE08])
        {
          swift_beginAccess();
          v75 = v33[1];
          v49 = 0xEB0000000043436ELL;
          *v33 = 0x6F69746174636944;
          goto LABEL_5;
        }

        if (v47 == *MEMORY[0x277CDCE58])
        {
          swift_beginAccess();
          v76 = v33[1];
          v51 = 0x43436C6C657053;
          v52 = 0xE700000000000000;
          goto LABEL_12;
        }

        if (v47 == *MEMORY[0x277CDCE60])
        {
          swift_beginAccess();
          v77 = v33[1];
          v51 = 0x676E696C6C657053;
          v52 = 0xE800000000000000;
          goto LABEL_12;
        }

        if (v47 == *MEMORY[0x277CDCE48])
        {
          swift_beginAccess();
          v78 = v33[1];
          v51 = 0x746F687354;
          v52 = 0xE500000000000000;
          goto LABEL_12;
        }

        if (v47 == *MEMORY[0x277CDCE40])
        {
          v67 = 0x800000027238BAE0;
          swift_beginAccess();
          v79 = v33[1];
          v69 = 0xD000000000000014;
          goto LABEL_20;
        }

        if (v47 != *MEMORY[0x277CDCE30])
        {
          swift_beginAccess();
          v80 = v33[1];
          *v33 = 0x746C7561666544;
          v33[1] = 0xE700000000000000;

          (*(v17 + 8))(v46, v42);
          goto LABEL_14;
        }

        v67 = 0x800000027238BAC0;
      }

      swift_beginAccess();
      v70 = v33[1];
      v69 = 0xD000000000000011;
    }

LABEL_20:
    *v33 = v69;
    v33[1] = v67;
    goto LABEL_13;
  }

  swift_beginAccess();
  v48 = v33[1];
  *v33 = 0x6F69746174636944;
  v49 = 0xE90000000000006ELL;
LABEL_5:
  v33[1] = v49;
LABEL_13:

LABEL_14:
  v55 = sub_272376D5C();
  v56 = *(*(v55 - 8) + 56);
  v56(v97, 1, 1, v55);
  v56(v99, 1, 1, v55);
  swift_beginAccess();
  v58 = *v33;
  v57 = v33[1];

  v59 = v96;
  sub_27237731C();
  (*(v17 + 8))(v45, v42);
  (*(v98 + 32))(v41 + OBJC_IVAR____TtC12VoiceActions31VASpeechAPISpotterConfiguration_modelOptions, v59, v100);
  v60 = v94;
  swift_beginAccess();
  *(v41 + v60) = v102 & 1;
  v61 = v95;
  swift_beginAccess();
  v62 = *v61;
  v63 = v61[1];
  v64 = v103;
  v65 = v104;
  *v61 = v103;
  v61[1] = v65;
  sub_2722734B4(v64);
  sub_272273524(v62);
  return v41;
}

uint64_t type metadata accessor for VASpeechAPISpotterConfiguration()
{
  result = qword_280888300;
  if (!qword_280888300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2722747C0()
{
  result = sub_27237768C();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_27237732C();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_2723774DC();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

unint64_t sub_272274924()
{
  result = qword_2808821E0;
  if (!qword_2808821E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808821E0);
  }

  return result;
}

uint64_t sub_272274988()
{
  v1 = v0;
  v12 = 4;
  type metadata accessor for e5rt_tensor_desc_component_dtype_t(0);
  type metadata accessor for e5rt_error_code_t(0);
  sub_272292FA0(&v12, sub_272276E48, v2, &v11);
  if (!v0)
  {
    v3 = v11;
    v4 = sub_272275FF0();
    v5 = (v4 + 32);
    v6 = *(v4 + 16) + 1;
    while (--v6)
    {
      v7 = v5 + 2;
      v8 = *v5;
      v5 += 2;
      if (v8 == v3)
      {
        v1 = *(v7 - 4);

        return v1;
      }
    }

    sub_272274924();
    v1 = swift_allocError();
    *v9 = 5;
    *(v9 + 4) = 1;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_272274ABC()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D07970];

  return sub_2722759BC(v1);
}

uint64_t sub_272274B6C()
{
  v4 = *(v0 + 16);
  v6 = 0;
  type metadata accessor for e5rt_error_code_t(0);
  result = sub_272292FA0(&v6, sub_272276E48, v2, &v5);
  if (!v1)
  {
    return v5;
  }

  return result;
}

uint64_t sub_272274C60()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D077D0];

  return sub_2722759BC(v1);
}

uint64_t sub_272274CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v13 = a2;
  v14 = a1;
  v11[2] = a3;
  v11[3] = &v12;
  v8 = sub_2721F065C(&qword_2808821E8, &qword_27237F098);
  type metadata accessor for e5rt_error_code_t(0);
  result = sub_2722930D4(sub_272275BA8, a4, v11, v8, v9, &v15);
  if (!v5)
  {
    *a5 = v15;
  }

  return result;
}

void *sub_272274D74(uint64_t a1, void *a2)
{
  v8[2] = a1;
  v9 = 0;
  v4 = sub_2721F065C(&qword_2808821E8, &qword_27237F098);
  sub_272292CB8(&v11, &v10, &v9, a2, v8, MEMORY[0x277D83B88], v4);
  if (!v2)
  {
    v5 = v11;
    if (v11)
    {
      v6 = v10;
      a2 = sub_272275CE4(v11, 0);
      memcpy(a2 + 4, v6, 8 * v5);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

uint64_t sub_272274E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v9[2] = a2;
  v9[3] = &v10;
  type metadata accessor for e5rt_error_code_t(0);
  result = sub_2722930D4(sub_272275BA8, a3, v9, a4, v7, &v12);
  if (!v4)
  {
    return v12;
  }

  return result;
}

uint64_t sub_272274EC0()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D07990];

  return sub_2722759BC(v1);
}

uint64_t sub_272275078(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v12 = *(v3 + 16);
  v10[2] = a1;
  v10[3] = &v11;
  type metadata accessor for e5rt_error_code_t(0);
  result = sub_2722930D4(sub_272275BA8, a2, v10, MEMORY[0x277D841D8], v7, &v13);
  if (!v4)
  {
    v9 = v13;
    a3(result);
    result = swift_allocObject();
    *(result + 16) = v9;
  }

  return result;
}

uint64_t sub_27227512C()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D078D8];

  return sub_2722759BC(v1);
}

uint64_t sub_27227521C()
{
  sub_2723778BC();
  sub_2723778BC();
  sub_2723778BC();
  precompiled_compute_operation = e5rt_execution_stream_operation_create_precompiled_compute_operation();

  return precompiled_compute_operation;
}

char *sub_2722752D8(int64_t a1, unint64_t a2, uint64_t (*a3)(unint64_t, void, char *))
{
  if (a1 < 0)
  {
    goto LABEL_24;
  }

  v7 = a3;
  v6 = v5;
  v8 = a2;
  v10 = a1;
  v9 = MEMORY[0x277D84F90];
  if (a1)
  {
    v23 = MEMORY[0x277D84F90];
    v4 = &v23;
    sub_272275D88(0, a1, 0);
    v3 = v23;
    v11 = *(v23 + 2);
    do
    {
      v23 = v3;
      v12 = *(v3 + 3);
      if (v11 >= v12 >> 1)
      {
        v4 = &v23;
        sub_272275D88((v12 > 1), v11 + 1, 1);
        v3 = v23;
      }

      *(v3 + 2) = v11 + 1;
      *&v3[8 * v11++ + 32] = 0;
      --v10;
    }

    while (v10);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v13 = v7(v8, *(v3 + 2), v3 + 32);
    sub_2722761A4(v13);
    if (v6)
    {
LABEL_11:

      return v4;
    }

    v7 = *(v3 + 2);
    if (!v7)
    {
      break;
    }

    v23 = v9;
    sub_27220056C(0, v7, 0);
    v15 = 0;
    v4 = v23;
    while (v15 < *(v3 + 2))
    {
      if (!*&v3[8 * v15 + 32])
      {

        sub_272274924();
        swift_allocError();
        *v22 = 3;
        *(v22 + 4) = 1;
        swift_willThrow();

        return v4;
      }

      v16 = sub_27237798C();
      v23 = v4;
      v19 = *(v4 + 2);
      v18 = *(v4 + 3);
      v8 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v9 = v16;
        v21 = v17;
        sub_27220056C((v18 > 1), v19 + 1, 1);
        v17 = v21;
        v16 = v9;
        v4 = v23;
      }

      ++v15;
      *(v4 + 2) = v8;
      v20 = &v4[16 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      if (v7 == v15)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v3 = sub_272275FAC(v3);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_272275514()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D07890];

  return sub_2722759BC(v1);
}

uint64_t sub_272275584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v12[2] = sub_272276E64;
  v12[3] = &v13;
  type metadata accessor for e5rt_error_code_t(0);
  result = sub_2722930D4(sub_272275BA8, sub_272276D4C, v12, MEMORY[0x277D841D8], v9, &v22);
  if (!v8)
  {
    v11 = v22;
    result = swift_allocObject();
    *(result + 16) = v11;
  }

  return result;
}

uint64_t sub_272275668()
{
  sub_2722032B4();
  swift_allocError();
  *v0 = 0xD000000000000028;
  v0[1] = 0x800000027238BB70;
  return swift_willThrow();
}

char *sub_272275774(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t, void, char *))
{
  v6 = *(v3 + 16);
  v10 = 0;
  type metadata accessor for e5rt_error_code_t(0);
  result = sub_272292FA0(&v10, sub_272276E48, v7, &v9);
  if (!v4)
  {
    return sub_2722752D8(v9, v6, a3);
  }

  return result;
}

uint64_t sub_27227589C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *(v4 + 16);
  v13 = a1;
  v14 = a2;
  v10[2] = a3;
  v10[3] = &v11;
  type metadata accessor for e5rt_error_code_t(0);
  result = sub_2722930D4(sub_272275BA8, a4, v10, MEMORY[0x277D841D8], v7, &v15);
  if (!v5)
  {
    v9 = v15;
    type metadata accessor for E5RTIOPort();
    result = swift_allocObject();
    *(result + 16) = v9;
  }

  return result;
}

uint64_t sub_27227594C()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D078A8];

  return sub_2722759BC(v1);
}

uint64_t sub_2722759BC(uint64_t (*a1)(void *))
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *(v1 + 16);
  v2 = a1(v5);
  sub_2722761A4(v2);
  result = swift_deallocClassInstance();
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_272275A6C()
{
  type metadata accessor for e5rt_error_code_t(0);
  result = sub_2722930D4(sub_272275BA8, sub_272275FC0, 0, MEMORY[0x277D841D8], v1, &v4);
  if (!v0)
  {
    v3 = v4;
    result = swift_allocObject();
    *(result + 16) = v3;
  }

  return result;
}

uint64_t sub_272275B0C()
{
  v1 = *(v0 + 16);
  v2 = e5rt_execution_stream_execute_sync();
  return sub_2722761A4(v2);
}

_DWORD *sub_272275BC4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

char *sub_272275BE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_280882218, &unk_27237F4A0);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_272275CE4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_2721F065C(&qword_2808818A0, &unk_27237E2A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

char *sub_272275D68(char *a1, int64_t a2, char a3)
{
  result = sub_272275DA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_272275D88(char *a1, int64_t a2, char a3)
{
  result = sub_272275EA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_272275DA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_280882220, &qword_27237F4B0);
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
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 8 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_272275EA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_280882218, &unk_27237F4A0);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_272275FC0@<X0>(_DWORD *a1@<X8>)
{
  result = e5rt_execution_stream_create();
  *a1 = result;
  return result;
}

uint64_t sub_272275FF0()
{
  v16 = MEMORY[0x277D84F90];
  sub_272275D68(0, 5, 0);
  v0 = v16;
  v2 = *(v16 + 16);
  v1 = *(v16 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_272275D68((v1 > 1), v2 + 1, 1);
    v0 = v16;
    v1 = *(v16 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 8 * v2;
  *(v5 + 32) = 0;
  *(v5 + 36) = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_272275D68((v1 > 1), v2 + 2, 1);
    v0 = v16;
    v1 = *(v16 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 8 * v4;
  *(v7 + 32) = 1;
  *(v7 + 36) = 1;
  v8 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    sub_272275D68((v1 > 1), v2 + 3, 1);
  }

  result = v16;
  *(v16 + 16) = v8;
  v10 = v16 + 8 * v6;
  *(v10 + 32) = 2;
  *(v10 + 36) = 2;
  v11 = *(v16 + 24);
  v12 = v2 + 4;
  if ((v2 + 4) > (v11 >> 1))
  {
    sub_272275D68((v11 > 1), v2 + 4, 1);
    result = v16;
  }

  *(result + 16) = v12;
  v13 = result + 8 * v8;
  *(v13 + 32) = 3;
  *(v13 + 36) = 3;
  v14 = *(result + 24);
  if ((v2 + 5) > (v14 >> 1))
  {
    sub_272275D68((v14 > 1), v2 + 5, 1);
    result = v16;
  }

  *(result + 16) = v2 + 5;
  v15 = result + 8 * v12;
  *(v15 + 32) = 4;
  *(v15 + 36) = 4;
  return result;
}

uint64_t sub_2722761A4(uint64_t *a1)
{
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v34 - v9;
  if (a1)
  {
    if (MEMORY[0x2743C5F20](a1))
    {
      v11 = sub_27237798C();
      v13 = v12;
      v14 = sub_2722C389C();
      (*(v3 + 16))(v10, v14, v2);

      v15 = sub_27237725C();
      v16 = sub_272377E8C();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        LODWORD(v36) = a1;
        a1 = v18;
        v38 = v18;
        *v17 = 136315138;
        v19 = sub_2721FFD04(v11, v13, &v38);

        *(v17 + 4) = v19;
        _os_log_impl(&dword_2721E4000, v15, v16, "Error in E5RTWrapper: %s", v17, 0xCu);
        sub_2722039C8(a1);
        v20 = a1;
        LODWORD(a1) = v36;
        MEMORY[0x2743C69C0](v20, -1, -1);
        MEMORY[0x2743C69C0](v17, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v10, v2);
    }

    else
    {
      sub_272274924();
      v21 = swift_allocError();
      *v22 = 4;
      *(v22 + 4) = 1;
      swift_willThrow();
      v23 = sub_2722C389C();
      (*(v3 + 16))(v7, v23, v2);
      v24 = sub_27237725C();
      v25 = sub_272377E8C();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v38 = v36;
        *v26 = 136315138;
        v37 = a1;
        type metadata accessor for e5rt_error_code_t(0);
        v27 = sub_27237789C();
        v29 = sub_2721FFD04(v27, v28, &v38);
        v35 = v21;
        v30 = v29;

        *(v26 + 4) = v30;
        _os_log_impl(&dword_2721E4000, v24, v25, "Error in E5RTWrapper and could not get error string. Code: %s", v26, 0xCu);
        v31 = v36;
        sub_2722039C8(v36);
        MEMORY[0x2743C69C0](v31, -1, -1);
        MEMORY[0x2743C69C0](v26, -1, -1);
        v32 = v35;
      }

      else
      {
        v32 = v21;
      }

      (*(v3 + 8))(v7, v2);
    }

    sub_272274924();
    swift_allocError();
    *v33 = a1;
    *(v33 + 4) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2722765D0@<X0>(_DWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_272276618(uint64_t a1, unint64_t *a2)
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

uint64_t sub_272276920()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v9 = *(v0 + 72);
  return sub_27227521C();
}

uint64_t sub_27227698C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = sub_2723778BC();
  v9 = a2(v6, v8 + 32, a1);

  return v9;
}

unint64_t sub_272276A00()
{
  result = qword_2808821F0;
  if (!qword_2808821F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808821F0);
  }

  return result;
}