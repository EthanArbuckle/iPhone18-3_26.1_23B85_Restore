uint64_t sub_26EEA5F84(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v3 = sub_26EF38AAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v2;
  v9 = *v2;
  MEMORY[0x274383950](*(*v2 + 16));
  v10 = *(v9 + 16);
  if (v10)
  {
    v13 = *(v4 + 16);
    v12 = v4 + 16;
    v11 = v13;
    v14 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v15 = *(v12 + 56);
    do
    {
      v11(v8, v14, v3);
      sub_26EEA5D44(&qword_2806C8A38, MEMORY[0x277D70530]);
      sub_26EF3B05C();
      (*(v12 - 8))(v8, v3);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  v16 = *(v18 + 20);
  sub_26EF37FEC();
  sub_26EEA5D44(&qword_2806C7048, MEMORY[0x277CC9788]);
  return sub_26EF3B05C();
}

uint64_t sub_26EEA6164(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = sub_26EF38AAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EF3B87C();
  v20 = v2;
  v9 = *v2;
  MEMORY[0x274383950](*(*v2 + 16));
  v10 = *(v9 + 16);
  if (v10)
  {
    v13 = *(v4 + 16);
    v11 = v4 + 16;
    v12 = v13;
    v14 = v9 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v8, v14, v3);
      sub_26EEA5D44(&qword_2806C8A38, MEMORY[0x277D70530]);
      sub_26EF3B05C();
      (*(v11 - 8))(v8, v3);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  v16 = *(v19 + 20);
  sub_26EF37FEC();
  sub_26EEA5D44(&qword_2806C7048, MEMORY[0x277CC9788]);
  sub_26EF3B05C();
  return sub_26EF3B8CC();
}

uint64_t sub_26EEA635C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (sub_26EEA5B30(*a1, *a2))
  {
    v4 = *(a3 + 20);

    JUMPOUT(0x274380060);
  }

  return 0;
}

BOOL sub_26EEA63CC(_BYTE *a1, _BYTE *a2)
{
  v2 = 30.0;
  if (*a1)
  {
    v3 = 5.0;
  }

  else
  {
    v3 = 30.0;
  }

  if (*a2)
  {
    v2 = 5.0;
  }

  return v3 == v2;
}

uint64_t sub_26EEA6400(char a1)
{
  sub_26EF3B87C();
  if (a1)
  {
    v2 = 0x4014000000000000;
  }

  else
  {
    v2 = 0x403E000000000000;
  }

  MEMORY[0x274383980](v2);
  return sub_26EF3B8CC();
}

uint64_t sub_26EEA6454()
{
  if (*v0)
  {
    v1 = 0x4014000000000000;
  }

  else
  {
    v1 = 0x403E000000000000;
  }

  return MEMORY[0x274383980](v1);
}

uint64_t sub_26EEA6498(uint64_t a1, char a2)
{
  sub_26EF3B87C();
  if (a2)
  {
    v3 = 0x4014000000000000;
  }

  else
  {
    v3 = 0x403E000000000000;
  }

  MEMORY[0x274383980](v3);
  return sub_26EF3B8CC();
}

double *sub_26EEA64E8@<X0>(double *result@<X0>, char *a2@<X8>)
{
  if (*result == 5.0)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 30.0)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void sub_26EEA6510(double *a1@<X8>)
{
  v2 = 30.0;
  if (*v1)
  {
    v2 = 5.0;
  }

  *a1 = v2;
}

void *sub_26EEA65A4()
{
  v0 = type metadata accessor for TTSVBVoicesByLocaleContainer(0);
  v36 = *(v0 - 8);
  v37 = v0;
  v1 = *(v36 + 64);
  MEMORY[0x28223BE20](v0, v2);
  v4 = (&v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_26EF37FEC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v38 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  v10 = sub_26EEAA9E4(v39);
  v32 = 0;

  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;
  v33 = (v6 + 8);
  v34 = (v6 + 16);

  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  v35 = v5;
  if (v13)
  {
    while (1)
    {
      v17 = v4;
LABEL_9:
      v19 = (*(v10 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v13)))));
      v21 = *v19;
      v20 = v19[1];
      swift_bridgeObjectRetain_n();
      sub_26EF37EEC();
      if (*(v10 + 16))
      {
        v22 = sub_26EE1FCF4(v21, v20);
        v24 = v23;

        v25 = MEMORY[0x277D84F90];
        if (v24)
        {
          v25 = *(*(v10 + 56) + 8 * v22);
        }
      }

      else
      {

        v25 = MEMORY[0x277D84F90];
      }

      v4 = v17;
      v26 = v17 + *(v37 + 20);
      v27 = v35;
      (*v34)(v26, v38, v35);
      *v4 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_26EEA8DDC(0, v16[2] + 1, 1, v16, &qword_2806C8A70, &unk_26EF41580, type metadata accessor for TTSVBVoicesByLocaleContainer);
      }

      v29 = v16[2];
      v28 = v16[3];
      if (v29 >= v28 >> 1)
      {
        v16 = sub_26EEA8DDC(v28 > 1, v29 + 1, 1, v16, &qword_2806C8A70, &unk_26EF41580, type metadata accessor for TTSVBVoicesByLocaleContainer);
      }

      v13 &= v13 - 1;
      (*v33)(v38, v27);
      v16[2] = v29 + 1;
      sub_26EEAADA0(v4, v16 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v29);
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v18 >= v14)
    {
      break;
    }

    v13 = *(v10 + 64 + 8 * v18);
    ++v15;
    if (v13)
    {
      v17 = v4;
      v15 = v18;
      goto LABEL_9;
    }
  }

  v39 = v16;

  v13 = v32;
  sub_26EEA9260(&v39);
  if (!v13)
  {

    return v39;
  }

LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_26EEA69C4()
{
  v1[7] = v0;
  v1[8] = *v0;
  v2 = sub_26EF38A2C();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v6 = sub_26EF38DBC();
  v1[13] = v6;
  v7 = *(v6 - 8);
  v1[14] = v7;
  v8 = *(v7 + 64) + 15;
  v1[15] = swift_task_alloc();
  v9 = sub_26EF3883C();
  v1[16] = v9;
  v10 = *(v9 - 8);
  v1[17] = v10;
  v11 = *(v10 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = sub_26EF3B2DC();
  v1[23] = sub_26EF3B2CC();
  v13 = sub_26EF3B29C();
  v1[24] = v13;
  v1[25] = v12;

  return MEMORY[0x2822009F8](sub_26EEA6BF8, v13, v12);
}

uint64_t sub_26EEA6BF8()
{
  v0[26] = *(v0[7] + 16);
  v1 = swift_task_alloc();
  v0[27] = v1;
  *v1 = v0;
  v1[1] = sub_26EEA6C94;

  return VoiceBankingSession.fetchVoices()();
}

uint64_t sub_26EEA6C94(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v7 = v4[24];
    v8 = v4[25];
    v9 = sub_26EEA75D8;
  }

  else
  {
    v4[29] = a1;
    v7 = v4[24];
    v8 = v4[25];
    v9 = sub_26EEA6DBC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_26EEA6DBC()
{
  v1 = v0[29];
  v2 = v0[7];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v1;

  sub_26EF3953C();
  v3 = swift_task_alloc();
  v0[30] = v3;
  *v3 = v0;
  v3[1] = sub_26EEA6EAC;
  v4 = v0[26];

  return VoiceBankingSession.refreshModels()();
}

uint64_t sub_26EEA6EAC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 240);
  v6 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v7 = v4[24];
    v8 = v4[25];
    v9 = sub_26EEA7874;
  }

  else
  {
    v4[32] = a1;
    v7 = v4[24];
    v8 = v4[25];
    v9 = sub_26EEA6FD4;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_26EEA6FD4()
{
  v1 = v0[32];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[7];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[3] = v1;

  sub_26EF3953C();
  v52 = sub_26EE27ED0();
  v53 = *(v5 + 16);
  v53(v3);
  swift_retain_n();
  v7 = sub_26EF3881C();
  v8 = sub_26EF3B43C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[7];
    v10 = swift_slowAlloc();
    *v10 = 134218240;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26EF3952C();

    v11 = *(v0[5] + 16);

    *(v10 + 4) = v11;

    *(v10 + 12) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26EF3952C();

    v12 = *(v0[6] + 16);

    *(v10 + 14) = v12;

    _os_log_impl(&dword_26EE01000, v7, v8, "VoiceRefreshViewModel: Did finish refresh. voices=%ld models=%ld", v10, 0x16u);
    MEMORY[0x2743842A0](v10, -1, -1);
  }

  else
  {
    v13 = v0[7];
  }

  v14 = v0[14];
  v15 = v0[7];
  v51 = *(v0[17] + 8);
  v51(v0[21], v0[16]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26EF3952C();

  v17 = 0;
  v18 = v0[4];
  v19 = *(v18 + 16);
  while (v19 != v17)
  {
    if (v17 >= *(v18 + 16))
    {
      __break(1u);
      return result;
    }

    v20 = v0[15];
    v21 = v0[13];
    (*(v14 + 16))(v20, v18 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v17++, v21);
    v22 = sub_26EF38CFC();
    result = (*(v14 + 8))(v20, v21);
    if (v22)
    {
      v23 = v0[7];

      v24 = (v23 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel_interval);
      if (*(v23 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel_interval))
      {
        goto LABEL_18;
      }

      v25 = v0 + 19;
      (v53)(v0[19], v52, v0[16]);
      v26 = sub_26EF3881C();
      v27 = sub_26EF3B43C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = 1;
        v29 = "VoiceRefreshViewModel: Found voice that is training. Updating timer refresh rate.";
LABEL_14:
        v31 = *v25;
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_26EE01000, v26, v27, v29, v32, 2u);
        MEMORY[0x2743842A0](v32, -1, -1);
        goto LABEL_17;
      }

      v31 = *v25;
      v28 = 1;
      goto LABEL_17;
    }
  }

  v30 = v0[7];

  v24 = (v30 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel_interval);
  if ((*(v30 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel_interval) & 1) == 0)
  {
    goto LABEL_18;
  }

  v25 = v0 + 20;
  (v53)(v0[20], v52, v0[16]);
  v26 = sub_26EF3881C();
  v27 = sub_26EF3B43C();
  v28 = 0;
  if (os_log_type_enabled(v26, v27))
  {
    v29 = "VoiceRefreshViewModel: No actively training models. Resetting timer.";
    goto LABEL_14;
  }

  v31 = *v25;
LABEL_17:
  v33 = v0[22];
  v34 = v0[16];
  v35 = v0[12];
  v36 = v0[7];

  v51(v31, v34);
  *v24 = v28;
  sub_26EEA7B10(0);
  v37 = sub_26EF3B30C();
  (*(*(v37 - 8) + 56))(v35, 1, 1, v37);

  v38 = sub_26EF3B2CC();
  v39 = swift_allocObject();
  v40 = MEMORY[0x277D85700];
  v39[2] = v38;
  v39[3] = v40;
  v39[4] = v36;
  sub_26EE2C388(0, 0, v35, &unk_26EF41390, v39);

LABEL_18:
  v42 = v0[7];
  v41 = v0[8];
  sub_26EEA5D44(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel);
  sub_26EF394BC();
  sub_26EF394DC();

  v44 = v0[20];
  v43 = v0[21];
  v46 = v0[18];
  v45 = v0[19];
  v47 = v0[15];
  v49 = v0[11];
  v48 = v0[12];

  v50 = v0[1];

  return v50();
}

uint64_t sub_26EEA75D8()
{
  v1 = v0[23];

  v2 = v0[28];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  v6 = sub_26EE27ED0();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_26EF3881C();
  v9 = sub_26EF3B45C();

  if (os_log_type_enabled(v8, v9))
  {
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[9];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    (*(v11 + 104))(v10, *MEMORY[0x277D704D8], v12);
    sub_26EF38A4C();
    sub_26EEA5D44(&unk_2806C9CD0, MEMORY[0x277D70518]);
    swift_allocError();
    sub_26EF389BC();
    (*(v11 + 8))(v10, v12);
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&dword_26EE01000, v8, v9, "%@", v13, 0xCu);
    sub_26EE14578(v14, &qword_2806C7140, &unk_26EF3E420);
    MEMORY[0x2743842A0](v14, -1, -1);
    MEMORY[0x2743842A0](v13, -1, -1);
  }

  else
  {
  }

  (*(v0[17] + 8))(v0[18], v0[16]);
  v17 = v0[20];
  v16 = v0[21];
  v19 = v0[18];
  v18 = v0[19];
  v20 = v0[15];
  v22 = v0[11];
  v21 = v0[12];

  v23 = v0[1];

  return v23();
}

uint64_t sub_26EEA7874()
{
  v1 = v0[23];

  v2 = v0[31];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  v6 = sub_26EE27ED0();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v2;
  v8 = sub_26EF3881C();
  v9 = sub_26EF3B45C();

  if (os_log_type_enabled(v8, v9))
  {
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[9];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    (*(v11 + 104))(v10, *MEMORY[0x277D704D8], v12);
    sub_26EF38A4C();
    sub_26EEA5D44(&unk_2806C9CD0, MEMORY[0x277D70518]);
    swift_allocError();
    sub_26EF389BC();
    (*(v11 + 8))(v10, v12);
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&dword_26EE01000, v8, v9, "%@", v13, 0xCu);
    sub_26EE14578(v14, &qword_2806C7140, &unk_26EF3E420);
    MEMORY[0x2743842A0](v14, -1, -1);
    MEMORY[0x2743842A0](v13, -1, -1);
  }

  else
  {
  }

  (*(v0[17] + 8))(v0[18], v0[16]);
  v17 = v0[20];
  v16 = v0[21];
  v19 = v0[18];
  v18 = v0[19];
  v20 = v0[15];
  v22 = v0[11];
  v21 = v0[12];

  v23 = v0[1];

  return v23();
}

void sub_26EEA7B10(char a1)
{
  v2 = v1;
  v4 = sub_26EF3883C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v26 - v13;
  if (a1)
  {
    v15 = sub_26EF3B30C();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
    sub_26EF3B2DC();

    v16 = sub_26EF3B2CC();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v2;
    sub_26EE2C388(0, 0, v14, &unk_26EF41398, v17);
  }

  else
  {
    v19 = sub_26EE27ED0();
    (*(v5 + 16))(v9, v19, v4);
    v20 = sub_26EF3881C();
    v21 = sub_26EF3B43C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_26EE01000, v20, v21, "VoiceRefreshViewModel: Will cancel refresh timer.", v22, 2u);
      MEMORY[0x2743842A0](v22, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    v23 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel_timer;
    v24 = *(v2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel_timer);
    if (v24)
    {
      [v24 invalidate];
      v25 = *(v2 + v23);
    }

    else
    {
      v25 = 0;
    }

    *(v2 + v23) = 0;
  }
}

uint64_t sub_26EEA7DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_26EF3883C();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  sub_26EF3B2DC();
  v4[6] = sub_26EF3B2CC();
  v9 = sub_26EF3B29C();
  v4[7] = v9;
  v4[8] = v8;

  return MEMORY[0x2822009F8](sub_26EEA7E94, v9, v8);
}

uint64_t sub_26EEA7E94()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_26EE27ED0();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_26EF3881C();
  v6 = sub_26EF3B43C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26EE01000, v5, v6, "VoiceRefreshViewModel: Creating new timer. Will refresh voices and models", v7, 2u);
    MEMORY[0x2743842A0](v7, -1, -1);
  }

  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];

  (*(v9 + 8))(v8, v10);
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_26EEA7FE0;
  v12 = v0[2];

  return sub_26EEA69C4();
}

uint64_t sub_26EEA7FE0()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_26EEA8100, v4, v3);
}

uint64_t sub_26EEA8100()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];

  sub_26EEA8170();

  v4 = v0[1];

  return v4();
}

void sub_26EEA8170()
{
  v1 = sub_26EF3883C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1, v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v38 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v38 - v13;
  v15 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel_timer;
  if (*(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel_timer))
  {
    v16 = sub_26EE27ED0();
    (*(v2 + 16))(v7, v16, v1);
    v17 = sub_26EF3881C();
    v18 = sub_26EF3B47C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_26EE01000, v17, v18, "VoiceRefreshViewModel: Attempted to create a new timer but it was already active. Bailing.", v19, 2u);
      MEMORY[0x2743842A0](v19, -1, -1);
    }

    (*(v2 + 8))(v7, v1);
  }

  else
  {
    v20 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel_interval;
    if (*(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel_interval))
    {
      v21 = 5.0;
    }

    else
    {
      v21 = 30.0;
    }

    v22 = [objc_opt_self() scheduledTimerWithTimeInterval:v0 target:sel_timerFired selector:0 userInfo:1 repeats:v21];
    v23 = *(v0 + v15);
    *(v0 + v15) = v22;
    v24 = v22;

    v25 = sub_26EE27ED0();
    v26 = *(v2 + 16);
    if (v24)
    {
      v26(v14, v25, v1);

      v27 = v0;
      v28 = sub_26EF3881C();
      v29 = sub_26EF3B43C();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = v30;
        v32 = *(v27 + v20);
        *v30 = 134217984;
        v33 = 30.0;
        if (v32)
        {
          v33 = 5.0;
        }

        *(v30 + 4) = v33;
        _os_log_impl(&dword_26EE01000, v28, v29, "VoiceRefreshViewModel: Successfully created timer with %f second sequence for voice and model refresh.", v30, 0xCu);
        MEMORY[0x2743842A0](v31, -1, -1);
      }

      (*(v2 + 8))(v14, v1);
      v34 = [objc_opt_self() mainRunLoop];
      [v34 addTimer:v24 forMode:*MEMORY[0x277CBE738]];
    }

    else
    {
      v26(v11, v25, v1);
      v35 = sub_26EF3881C();
      v36 = sub_26EF3B45C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_26EE01000, v35, v36, "VoiceRefreshViewModel: Unable to initialize timer", v37, 2u);
        MEMORY[0x2743842A0](v37, -1, -1);
      }

      (*(v2 + 8))(v11, v1);
    }
  }
}

uint64_t sub_26EEA8554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_26EF3883C();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  sub_26EF3B2DC();
  v4[6] = sub_26EF3B2CC();
  v9 = sub_26EF3B29C();
  v4[7] = v9;
  v4[8] = v8;

  return MEMORY[0x2822009F8](sub_26EEA8648, v9, v8);
}

uint64_t sub_26EEA8648()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_26EE27ED0();
  (*(v2 + 16))(v1, v5, v3);

  v6 = sub_26EF3881C();
  v7 = sub_26EF3B43C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = v9;
    *v9 = 134217984;
    v11 = 30.0;
    if (*(v8 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel_interval))
    {
      v11 = 5.0;
    }

    *(v9 + 4) = v11;
    _os_log_impl(&dword_26EE01000, v6, v7, "VoiceRefreshViewModel: Refresh timer fired. Will refresh voices and models. Interval: %f", v9, 0xCu);
    MEMORY[0x2743842A0](v10, -1, -1);
  }

  v13 = v0[4];
  v12 = v0[5];
  v14 = v0[3];

  (*(v13 + 8))(v12, v14);
  v15 = swift_task_alloc();
  v0[9] = v15;
  *v15 = v0;
  v15[1] = sub_26EEA87D0;
  v16 = v0[2];

  return sub_26EEA69C4();
}

uint64_t sub_26EEA87D0()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_26EEA88F0, v4, v3);
}

uint64_t sub_26EEA88F0()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26EEA8A88()
{
  v1 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel__voices;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A40, &qword_26EF41320);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel__models;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A48, &unk_26EF41370);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 12);
  v6 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_26EEA8B94()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_26EEA8BCC();
  return v3;
}

uint64_t sub_26EEA8BCC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A48, &unk_26EF41370);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A40, &qword_26EF41320);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v20 - v11;
  v13 = sub_26EED2EB8();
  v14 = *v13;
  *(v0 + 16) = *v13;
  v15 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel__voices;
  v16 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7D20, &qword_26EF412D0);
  sub_26EF394EC();
  (*(v8 + 32))(v0 + v15, v12, v7);
  v18 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel__models;
  v21 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8908, &qword_26EF41090);
  sub_26EF394EC();
  (*(v2 + 32))(v0 + v18, v6, v1);
  *(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel_timer) = 0;
  *(v0 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI21VoiceRefreshViewModel_interval) = 0;
  return v0;
}

size_t sub_26EEA8DDC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

uint64_t sub_26EEA8FB8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A78, &qword_26EF41590);
  v38 = a2;
  result = sub_26EF3B7BC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_26EF3B87C();
      sub_26EF3B16C();
      result = sub_26EF3B8CC();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26EEA9260(void **a1)
{
  v2 = *(type metadata accessor for TTSVBVoicesByLocaleContainer(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_26EEAA7F8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_26EEA9308(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_26EEA9308(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26EF3B7EC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for TTSVBVoicesByLocaleContainer(0);
        v6 = sub_26EF3B24C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for TTSVBVoicesByLocaleContainer(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_26EEA96C0(v8, v9, a1, v4);
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
    return sub_26EEA9434(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26EEA9434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v51 = type metadata accessor for TTSVBVoicesByLocaleContainer(0);
  v8 = *(*(v51 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v51, v9);
  v50 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v41 - v14;
  result = MEMORY[0x28223BE20](v13, v16);
  v20 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v18 + 72);
    v23 = *a4 + v22 * (a3 - 1);
    v48 = -v22;
    v49 = v21;
    v24 = a1 - a3;
    v42 = v22;
    v25 = v21 + v22 * a3;
LABEL_6:
    v46 = v23;
    v47 = a3;
    v44 = v25;
    v45 = v24;
    v26 = v23;
    while (1)
    {
      sub_26EEAB378(v25, v20);
      sub_26EEAB378(v26, v15);
      v27 = v51;
      v28 = &v20[*(v51 + 20)];
      v29 = sub_26EF37F2C();
      if (v30)
      {
        v31 = v29;
      }

      else
      {
        v31 = 0;
      }

      if (v30)
      {
        v32 = v30;
      }

      else
      {
        v32 = 0xE000000000000000;
      }

      v33 = &v15[*(v27 + 20)];
      v34 = sub_26EF37F2C();
      if (v35)
      {
        v36 = v35;
      }

      else
      {
        v34 = 0;
        v36 = 0xE000000000000000;
      }

      if (v34 == v31 && v36 == v32)
      {

        sub_26EEAB3DC(v15);
        result = sub_26EEAB3DC(v20);
LABEL_5:
        a3 = v47 + 1;
        v23 = v46 + v42;
        v24 = v45 - 1;
        v25 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return result;
        }

        goto LABEL_6;
      }

      v38 = sub_26EF3B82C();

      sub_26EEAB3DC(v15);
      result = sub_26EEAB3DC(v20);
      if ((v38 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v49)
      {
        break;
      }

      v39 = v50;
      sub_26EEAADA0(v25, v50);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_26EEAADA0(v39, v26);
      v26 += v48;
      v25 += v48;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26EEA96C0(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v162 = a1;
  v178 = type metadata accessor for TTSVBVoicesByLocaleContainer(0);
  v8 = *(v178 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v178, v10);
  v167 = &v154 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v176 = &v154 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = MEMORY[0x28223BE20](v19, v20);
  v173 = &v154 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v172 = &v154 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v158 = &v154 - v28;
  result = MEMORY[0x28223BE20](v27, v29);
  v161 = &v154 - v33;
  v34 = a3[1];
  if (v34 < 1)
  {
    v36 = MEMORY[0x277D84F90];
LABEL_139:
    v38 = *v162;
    if (!*v162)
    {
      goto LABEL_179;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_141;
    }

    goto LABEL_173;
  }

  v155 = v32;
  v177 = v31;
  v156 = a4;
  v35 = 0;
  v36 = MEMORY[0x277D84F90];
  v163 = a3;
  v157 = v8;
  while (1)
  {
    v37 = v35;
    v38 = v35 + 1;
    v164 = v35;
    if (v35 + 1 < v34)
    {
      v168 = v34;
      v39 = *a3;
      v40 = *(v8 + 72);
      v170 = v35 + 1;
      v41 = v39 + v40 * v38;
      v42 = v161;
      sub_26EEAB378(v41, v161);
      v171 = v40;
      v43 = v158;
      sub_26EEAB378(v39 + v40 * v37, v158);
      a3 = v178;
      v44 = v42 + *(v178 + 20);
      v45 = sub_26EF37F2C();
      if (v46)
      {
        v38 = v45;
      }

      else
      {
        v38 = 0;
      }

      if (v46)
      {
        v47 = v46;
      }

      else
      {
        v47 = 0xE000000000000000;
      }

      v48 = v43 + *(a3 + 5);
      v49 = sub_26EF37F2C();
      if (v50)
      {
        v51 = v50;
      }

      else
      {
        v49 = 0;
        v51 = 0xE000000000000000;
      }

      if (v49 == v38 && v51 == v47)
      {
        LODWORD(v169) = 0;
      }

      else
      {
        LODWORD(v169) = sub_26EF3B82C();
      }

      v53 = v170;
      v54 = v161;
      if (v5)
      {
        sub_26EEAB3DC(v43);
        sub_26EEAB3DC(v54);
      }

      v159 = v36;
      v160 = 0;
      sub_26EEAB3DC(v43);
      result = sub_26EEAB3DC(v54);
      v55 = v164 + 2;
      v56 = v171 * (v164 + 2);
      v57 = v39 + v56;
      v58 = v171 * v53;
      v59 = v39 + v171 * v53;
      do
      {
        v61 = v55;
        v8 = v53;
        v5 = v58;
        v36 = v56;
        if (v55 >= v168)
        {
          break;
        }

        v174 = v53;
        v175 = v55;
        v63 = v172;
        sub_26EEAB378(v57, v172);
        v64 = v173;
        sub_26EEAB378(v59, v173);
        v65 = v63 + *(a3 + 5);
        v66 = sub_26EF37F2C();
        v68 = a3;
        v69 = v67 ? v66 : 0;
        v38 = v67 ? v67 : 0xE000000000000000;
        v70 = v64 + *(v68 + 5);
        v71 = sub_26EF37F2C();
        if (v72)
        {
          v73 = v72;
        }

        else
        {
          v71 = 0;
          v73 = 0xE000000000000000;
        }

        v74 = v71 == v69 && v73 == v38;
        v60 = v74 ? 0 : sub_26EF3B82C();
        v8 = v174;
        v61 = v175;

        sub_26EEAB3DC(v173);
        result = sub_26EEAB3DC(v172);
        v62 = v169 ^ v60;
        v55 = v61 + 1;
        v57 += v171;
        v59 += v171;
        v53 = v8 + 1;
        v58 = v5 + v171;
        v56 = &v36[v171];
        a3 = v178;
      }

      while ((v62 & 1) == 0);
      if (v169)
      {
        v37 = v164;
        if (v61 < v164)
        {
          goto LABEL_172;
        }

        if (v164 >= v61)
        {
          v38 = v61;
          v36 = v159;
          v5 = v160;
          a3 = v163;
          goto LABEL_55;
        }

        v75 = v164;
        v76 = v164 * v171;
        do
        {
          if (v75 != v8)
          {
            v78 = *v163;
            if (!*v163)
            {
              goto LABEL_176;
            }

            sub_26EEAADA0(v78 + v76, v167);
            if (v76 < v5 || v78 + v76 >= &v36[v78])
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v76 != v5)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_26EEAADA0(v167, v78 + v5);
          }

          ++v75;
          v5 -= v171;
          v36 -= v171;
          v76 += v171;
        }

        while (v75 < v8--);
      }

      v38 = v61;
      v36 = v159;
      v5 = v160;
      a3 = v163;
      v37 = v164;
LABEL_55:
      v8 = v157;
    }

    v79 = a3[1];
    if (v38 < v79)
    {
      if (__OFSUB__(v38, v37))
      {
        goto LABEL_169;
      }

      if (v38 - v37 < v156)
      {
        break;
      }
    }

LABEL_88:
    if (v38 < v37)
    {
      goto LABEL_168;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26EE12E30(0, *(v36 + 2) + 1, 1, v36);
      v36 = result;
    }

    v105 = *(v36 + 2);
    v104 = *(v36 + 3);
    v106 = v105 + 1;
    if (v105 >= v104 >> 1)
    {
      result = sub_26EE12E30((v104 > 1), v105 + 1, 1, v36);
      v36 = result;
    }

    *(v36 + 2) = v106;
    v107 = &v36[16 * v105];
    *(v107 + 4) = v164;
    *(v107 + 5) = v38;
    v108 = *v162;
    if (!*v162)
    {
      goto LABEL_178;
    }

    v170 = v38;
    if (v105)
    {
      while (1)
      {
        v38 = v106 - 1;
        if (v106 >= 4)
        {
          break;
        }

        if (v106 == 3)
        {
          v109 = *(v36 + 4);
          v110 = *(v36 + 5);
          v119 = __OFSUB__(v110, v109);
          v111 = v110 - v109;
          v112 = v119;
LABEL_108:
          if (v112)
          {
            goto LABEL_157;
          }

          v125 = &v36[16 * v106];
          v127 = *v125;
          v126 = *(v125 + 1);
          v128 = __OFSUB__(v126, v127);
          v129 = v126 - v127;
          v130 = v128;
          if (v128)
          {
            goto LABEL_160;
          }

          v131 = &v36[16 * v38 + 32];
          v133 = *v131;
          v132 = *(v131 + 1);
          v119 = __OFSUB__(v132, v133);
          v134 = v132 - v133;
          if (v119)
          {
            goto LABEL_163;
          }

          if (__OFADD__(v129, v134))
          {
            goto LABEL_164;
          }

          if (v129 + v134 >= v111)
          {
            if (v111 < v134)
            {
              v38 = v106 - 2;
            }

            goto LABEL_129;
          }

          goto LABEL_122;
        }

        v135 = &v36[16 * v106];
        v137 = *v135;
        v136 = *(v135 + 1);
        v119 = __OFSUB__(v136, v137);
        v129 = v136 - v137;
        v130 = v119;
LABEL_122:
        if (v130)
        {
          goto LABEL_159;
        }

        v138 = &v36[16 * v38];
        v140 = *(v138 + 4);
        v139 = *(v138 + 5);
        v119 = __OFSUB__(v139, v140);
        v141 = v139 - v140;
        if (v119)
        {
          goto LABEL_162;
        }

        if (v141 < v129)
        {
          goto LABEL_3;
        }

LABEL_129:
        v146 = v38 - 1;
        if (v38 - 1 >= v106)
        {
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
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
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
          goto LABEL_171;
        }

        if (!*a3)
        {
          goto LABEL_175;
        }

        v147 = *&v36[16 * v146 + 32];
        v148 = *&v36[16 * v38 + 40];
        sub_26EEAA120(*a3 + *(v8 + 72) * v147, *a3 + *(v8 + 72) * *&v36[16 * v38 + 32], *a3 + *(v8 + 72) * v148, v108);
        if (v5)
        {
        }

        if (v148 < v147)
        {
          goto LABEL_153;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_26EE13990(v36);
        }

        if (v146 >= *(v36 + 2))
        {
          goto LABEL_154;
        }

        v149 = &v36[16 * v146];
        *(v149 + 4) = v147;
        *(v149 + 5) = v148;
        v179 = v36;
        result = sub_26EE5C168(v38);
        v36 = v179;
        v106 = *(v179 + 2);
        if (v106 <= 1)
        {
          goto LABEL_3;
        }
      }

      v113 = &v36[16 * v106 + 32];
      v114 = *(v113 - 64);
      v115 = *(v113 - 56);
      v119 = __OFSUB__(v115, v114);
      v116 = v115 - v114;
      if (v119)
      {
        goto LABEL_155;
      }

      v118 = *(v113 - 48);
      v117 = *(v113 - 40);
      v119 = __OFSUB__(v117, v118);
      v111 = v117 - v118;
      v112 = v119;
      if (v119)
      {
        goto LABEL_156;
      }

      v120 = &v36[16 * v106];
      v122 = *v120;
      v121 = *(v120 + 1);
      v119 = __OFSUB__(v121, v122);
      v123 = v121 - v122;
      if (v119)
      {
        goto LABEL_158;
      }

      v119 = __OFADD__(v111, v123);
      v124 = v111 + v123;
      if (v119)
      {
        goto LABEL_161;
      }

      if (v124 >= v116)
      {
        v142 = &v36[16 * v38 + 32];
        v144 = *v142;
        v143 = *(v142 + 1);
        v119 = __OFSUB__(v143, v144);
        v145 = v143 - v144;
        if (v119)
        {
          goto LABEL_165;
        }

        if (v111 < v145)
        {
          v38 = v106 - 2;
        }

        goto LABEL_129;
      }

      goto LABEL_108;
    }

LABEL_3:
    v34 = a3[1];
    v35 = v170;
    if (v170 >= v34)
    {
      goto LABEL_139;
    }
  }

  v80 = v37 + v156;
  if (__OFADD__(v37, v156))
  {
    goto LABEL_170;
  }

  if (v80 >= v79)
  {
    v80 = a3[1];
  }

  if (v80 < v37)
  {
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    result = sub_26EE13990(v36);
    v36 = result;
LABEL_141:
    v179 = v36;
    v150 = *(v36 + 2);
    if (v150 >= 2)
    {
      while (*a3)
      {
        v151 = *&v36[16 * v150];
        v152 = *&v36[16 * v150 + 24];
        sub_26EEAA120(*a3 + *(v8 + 72) * v151, *a3 + *(v8 + 72) * *&v36[16 * v150 + 16], *a3 + *(v8 + 72) * v152, v38);
        if (v5)
        {
        }

        if (v152 < v151)
        {
          goto LABEL_166;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_26EE13990(v36);
        }

        if (v150 - 2 >= *(v36 + 2))
        {
          goto LABEL_167;
        }

        v153 = &v36[16 * v150];
        *v153 = v151;
        *(v153 + 1) = v152;
        v179 = v36;
        result = sub_26EE5C168(v150 - 1);
        v36 = v179;
        v150 = *(v179 + 2);
        if (v150 <= 1)
        {
        }
      }

      goto LABEL_177;
    }
  }

  if (v38 == v80)
  {
    goto LABEL_88;
  }

  v159 = v36;
  v160 = v5;
  v81 = *a3;
  v82 = *(v8 + 72);
  v83 = *a3 + v82 * (v38 - 1);
  v174 = -v82;
  v175 = v81;
  v84 = v37 - v38;
  v165 = v82;
  v85 = v81 + v38 * v82;
  v86 = v178;
  v87 = v155;
  v166 = v80;
LABEL_68:
  v169 = v84;
  v170 = v38;
  v168 = v85;
  v171 = v83;
  v88 = v83;
  while (1)
  {
    sub_26EEAB378(v85, v87);
    v89 = v177;
    sub_26EEAB378(v88, v177);
    v90 = v87 + *(v86 + 20);
    v91 = sub_26EF37F2C();
    v93 = v86;
    if (v92)
    {
      v94 = v91;
    }

    else
    {
      v94 = 0;
    }

    if (v92)
    {
      v95 = v92;
    }

    else
    {
      v95 = 0xE000000000000000;
    }

    v96 = v89 + *(v93 + 20);
    v97 = sub_26EF37F2C();
    if (v98)
    {
      v99 = v98;
    }

    else
    {
      v97 = 0;
      v99 = 0xE000000000000000;
    }

    if (v97 == v94 && v99 == v95)
    {

      sub_26EEAB3DC(v89);
      sub_26EEAB3DC(v87);
LABEL_66:
      v86 = v178;
LABEL_67:
      v38 = v170 + 1;
      v83 = v171 + v165;
      v84 = v169 - 1;
      v85 = v168 + v165;
      if (v170 + 1 == v166)
      {
        v38 = v166;
        v36 = v159;
        v5 = v160;
        a3 = v163;
        v37 = v164;
        v8 = v157;
        goto LABEL_88;
      }

      goto LABEL_68;
    }

    v101 = sub_26EF3B82C();

    sub_26EEAB3DC(v89);
    result = sub_26EEAB3DC(v87);
    if ((v101 & 1) == 0)
    {
      goto LABEL_66;
    }

    if (!v175)
    {
      break;
    }

    v102 = v176;
    sub_26EEAADA0(v85, v176);
    v86 = v178;
    swift_arrayInitWithTakeFrontToBack();
    sub_26EEAADA0(v102, v88);
    v88 += v174;
    v85 += v174;
    if (__CFADD__(v84++, 1))
    {
      goto LABEL_67;
    }
  }

  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
  return result;
}

unint64_t sub_26EEAA120(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v80 = type metadata accessor for TTSVBVoicesByLocaleContainer(0);
  v8 = *(*(v80 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v80, v9);
  v78 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v77 = &v70 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v70 - v17;
  result = MEMORY[0x28223BE20](v16, v19);
  v22 = &v70 - v21;
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = a2;
  if (a2 - a1 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_93;
  }

  v25 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v24 != -1)
  {
    v26 = (a2 - a1) / v24;
    v83 = a1;
    v82 = a4;
    if (v26 >= v25 / v24)
    {
      v28 = v25 / v24 * v24;
      if (a4 < a2 || a2 + v28 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v47 = a4 + v28;
      if (v28 < 1)
      {
        v50 = a4 + v28;
      }

      else
      {
        v48 = -v24;
        v49 = a4 + v28;
        v50 = v47;
        v73 = a4;
        v76 = v48;
        while (2)
        {
          while (1)
          {
            v71 = v50;
            v51 = a2 + v48;
            v79 = a2 + v48;
            v74 = a2;
            while (1)
            {
              if (a2 <= a1)
              {
                v83 = a2;
                v81 = v71;
                goto LABEL_91;
              }

              v53 = a3;
              v72 = v50;
              v75 = v49 + v48;
              v54 = v77;
              sub_26EEAB378(v49 + v48, v77);
              v55 = v78;
              sub_26EEAB378(v51, v78);
              v56 = v80;
              v57 = v54 + *(v80 + 20);
              v58 = sub_26EF37F2C();
              v60 = v59 ? v58 : 0;
              v61 = v59 ? v59 : 0xE000000000000000;
              v62 = v55 + *(v56 + 20);
              v63 = sub_26EF37F2C();
              if (v64)
              {
                v65 = v64;
              }

              else
              {
                v63 = 0;
                v65 = 0xE000000000000000;
              }

              v66 = v63 == v60 && v65 == v61;
              v67 = v66 ? 0 : sub_26EF3B82C();

              a3 = v53 + v76;
              sub_26EEAB3DC(v78);
              sub_26EEAB3DC(v77);
              v68 = v73;
              if (v67)
              {
                break;
              }

              v69 = v75;
              v50 = v75;
              if (v53 < v49 || a3 >= v49)
              {
                swift_arrayInitWithTakeFrontToBack();
                v51 = v79;
              }

              else
              {
                v51 = v79;
                if (v53 != v49)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v49 = v50;
              v52 = v69 > v68;
              v48 = v76;
              a2 = v74;
              if (!v52)
              {
                goto LABEL_89;
              }
            }

            if (v53 < v74 || a3 >= v74)
            {
              break;
            }

            a2 = v79;
            v50 = v72;
            v48 = v76;
            if (v53 != v74)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            if (v49 <= v68)
            {
              goto LABEL_89;
            }
          }

          a2 = v79;
          swift_arrayInitWithTakeFrontToBack();
          v50 = v72;
          v48 = v76;
          if (v49 > v68)
          {
            continue;
          }

          break;
        }
      }

LABEL_89:
      v83 = a2;
      v81 = v50;
LABEL_91:
      sub_26EEAA714(&v83, &v82, &v81);
      return 1;
    }

    v27 = v26 * v24;
    if (a4 < a1 || a1 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a1)
      {
        goto LABEL_17;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    result = a2;
LABEL_17:
    v78 = a4 + v27;
    v81 = a4 + v27;
    if (v27 >= 1 && result < a3)
    {
      v76 = v24;
      v77 = v22;
      v75 = a3;
      while (1)
      {
        v79 = result;
        sub_26EEAB378(result, v22);
        sub_26EEAB378(a4, v18);
        v30 = v80;
        v31 = &v22[*(v80 + 20)];
        v32 = sub_26EF37F2C();
        v34 = v33 ? v32 : 0;
        v35 = v22;
        v36 = v18;
        v37 = v33 ? v33 : 0xE000000000000000;
        v38 = v36 + *(v30 + 20);
        v39 = sub_26EF37F2C();
        if (v40)
        {
          v41 = v40;
        }

        else
        {
          v39 = 0;
          v41 = 0xE000000000000000;
        }

        if (v39 == v34 && v41 == v37)
        {
          break;
        }

        v43 = sub_26EF3B82C();

        sub_26EEAB3DC(v36);
        sub_26EEAB3DC(v35);
        v44 = v76;
        v18 = v36;
        if ((v43 & 1) == 0)
        {
          goto LABEL_41;
        }

        v45 = v79 + v76;
        if (a1 < v79 || a1 >= v45)
        {
          swift_arrayInitWithTakeFrontToBack();
          result = v45;
          v46 = v75;
          v22 = v77;
        }

        else
        {
          v46 = v75;
          v22 = v77;
          if (a1 == v79)
          {
            result = v79 + v76;
          }

          else
          {
            swift_arrayInitWithTakeBackToFront();
            result = v45;
          }
        }

LABEL_47:
        a1 += v44;
        v83 = a1;
        if (a4 >= v78 || result >= v46)
        {
          goto LABEL_91;
        }
      }

      sub_26EEAB3DC(v36);
      sub_26EEAB3DC(v35);
      v44 = v76;
      v18 = v36;
LABEL_41:
      if (a1 < a4 || a1 >= a4 + v44)
      {
        swift_arrayInitWithTakeFrontToBack();
        v22 = v77;
      }

      else
      {
        v22 = v77;
        if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v82 = a4 + v44;
      a4 += v44;
      result = v79;
      v46 = v75;
      goto LABEL_47;
    }

    goto LABEL_91;
  }

LABEL_94:
  __break(1u);
  return result;
}

uint64_t sub_26EEAA714(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for TTSVBVoicesByLocaleContainer(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_26EEAA80C(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A70, &unk_26EF41580);
  v10 = *(type metadata accessor for TTSVBVoicesByLocaleContainer(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
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
  v15 = *(type metadata accessor for TTSVBVoicesByLocaleContainer(0) - 8);
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

uint64_t sub_26EEAA9E4(uint64_t a1)
{
  v2 = sub_26EF38AAC();
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v52 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v56 = &v45 - v9;
  v10 = MEMORY[0x277D84F98];
  v57 = MEMORY[0x277D84F98];
  v11 = *(a1 + 16);
  if (!v11)
  {
    return v10;
  }

  v13 = *(v8 + 16);
  v12 = v8 + 16;
  v47 = *(v12 + 64);
  v14 = *(v12 + 56);
  v50 = (v47 + 32) & ~v47;
  v51 = v13;
  v15 = a1 + v50;
  v54 = (v12 + 16);
  v46 = xmmword_26EF3C6B0;
  v48 = v2;
  v49 = v12;
  v53 = v14;
  while (1)
  {
    v55 = v11;
    v17 = v12;
    v51(v56, v15, v2);
    v21 = sub_26EF38A9C();
    v23 = v22;
    v25 = sub_26EE1FCF4(v21, v22);
    v26 = v10[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v29 = v24;
    if (v10[3] < v28)
    {
      sub_26EEA8FB8(v28, 1);
      v10 = v57;
      v30 = sub_26EE1FCF4(v21, v23);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_19;
      }

      v25 = v30;
    }

    if (v29)
    {

      v32 = v10[7];
      v33 = *v54;
      (*v54)(v52, v56, v2);
      v34 = *(v32 + 8 * v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v32 + 8 * v25) = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = sub_26EEA8DDC(0, v34[2] + 1, 1, v34, &qword_2806C7CC0, &qword_26EF3F438, MEMORY[0x277D70530]);
        *(v32 + 8 * v25) = v34;
      }

      v37 = v34[2];
      v36 = v34[3];
      if (v37 >= v36 >> 1)
      {
        v34 = sub_26EEA8DDC(v36 > 1, v37 + 1, 1, v34, &qword_2806C7CC0, &qword_26EF3F438, MEMORY[0x277D70530]);
        *(v32 + 8 * v25) = v34;
      }

      v17 = v49;
      v16 = v50;
      v34[2] = v37 + 1;
      v18 = v53;
      v19 = v34 + v16 + v37 * v53;
      v2 = v48;
      v20 = v55;
      v33(v19, v52, v48);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7CC0, &qword_26EF3F438);
      v38 = v50;
      v39 = swift_allocObject();
      *(v39 + 16) = v46;
      (*v54)((v39 + v38), v56, v2);
      v10[(v25 >> 6) + 8] |= 1 << v25;
      v40 = (v10[6] + 16 * v25);
      *v40 = v21;
      v40[1] = v23;
      *(v10[7] + 8 * v25) = v39;
      v41 = v10[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_18;
      }

      v10[2] = v43;
      v18 = v53;
      v20 = v55;
    }

    v15 += v18;
    v11 = v20 - 1;
    v12 = v17;
    if (!v11)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_26EF3B86C();
  __break(1u);
  return result;
}

uint64_t sub_26EEAADA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSVBVoicesByLocaleContainer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EEAAE08()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26EE15538;

  return sub_26EEA7DA0(v3, v4, v5, v2);
}

uint64_t sub_26EEAAF18(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26EF37FEC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_26EEAAFD8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_26EF37FEC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26EEAB07C()
{
  sub_26EEAB100();
  if (v0 <= 0x3F)
  {
    sub_26EF37FEC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26EEAB100()
{
  if (!qword_2806C8A58)
  {
    sub_26EF38AAC();
    v0 = sub_26EF3B27C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C8A58);
    }
  }
}

void sub_26EEAB160()
{
  sub_26EE11978(319, &qword_2806C8A60, &qword_2806C7D20, &qword_26EF412D0);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_26EE11978(319, &qword_2806C8A68, &qword_2806C8908, &qword_26EF41090);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_26EEAB290()
{
  result = qword_2806CD470;
  if (!qword_2806CD470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CD470);
  }

  return result;
}

uint64_t sub_26EEAB2E4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26EE05D7C;

  return sub_26EEA8554(v3, v4, v5, v2);
}

uint64_t sub_26EEAB378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSVBVoicesByLocaleContainer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EEAB3DC(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBVoicesByLocaleContainer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CompatibilitySection()
{
  result = qword_2806CD600;
  if (!qword_2806CD600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EEAB48C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CompatibilitySection();
  v41 = *(v3 - 8);
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v42 = v6;
  v43 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26EF387DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A88, &qword_26EF41598);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v45 = v36 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A90, &unk_26EF415A0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v44 = v36 - v22;
  LOBYTE(v46) = sub_26EEABA18();
  v47 = 3;
  sub_26EEABDA8();
  if (sub_26EF3B0AC())
  {
    v23 = 1;
  }

  else
  {
    v24 = (*(v8 + 104))(v12, *MEMORY[0x277CE76B8], v7);
    v36[1] = v36;
    v26 = MEMORY[0x28223BE20](v24, v25);
    MEMORY[0x28223BE20](v26, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C08, &qword_26EF3F0C8);
    v40 = a1;
    v37 = v13;
    v38 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8AA0, &qword_26EF415B0);
    sub_26EE63944();
    v39 = v18;
    sub_26EE154C8(&qword_2806C8AA8, &qword_2806C8AA0, &qword_26EF415B0);
    v28 = v45;
    sub_26EF3878C();
    v29 = *(v1 + 56);
    v47 = *(v1 + 48);
    v48 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
    sub_26EF3AB1C();
    v30 = v43;
    sub_26EEAC104(v1, v43);
    v31 = (*(v41 + 80) + 16) & ~*(v41 + 80);
    v32 = swift_allocObject();
    sub_26EEAC16C(v30, v32 + v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8AB0, qword_26EF415B8);
    sub_26EE154C8(&qword_2806C8AB8, &qword_2806C8A88, &qword_26EF41598);
    a1 = v40;
    sub_26EE154C8(&qword_2806C8AC0, &qword_2806C8AB0, qword_26EF415B8);
    v18 = v39;
    v33 = v44;
    v34 = v37;
    sub_26EF3A8BC();

    (*(v38 + 8))(v28, v34);
    (*(v19 + 32))(a1, v33, v18);
    v23 = 0;
  }

  return (*(v19 + 56))(a1, v23, 1, v18);
}

uint64_t sub_26EEABA18()
{
  v1 = sub_26EF37EDC();
  v30 = *(v1 - 8);
  v31 = v1;
  v2 = *(v30 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26EF39DDC();
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v29 - v14;
  v16 = sub_26EF38AAC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for CompatibilitySection();
  sub_26EE13B88(v0 + *(v22 + 32), v15, &qword_2806C7080, &unk_26EF3DBF0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_26EE14578(v15, &qword_2806C7080, &unk_26EF3DBF0);
    return 3;
  }

  else
  {
    (*(v17 + 32))(v21, v15, v16);
    v24 = *(v0 + 16);
    v25 = *(v0 + 24);

    if ((v25 & 1) == 0)
    {
      sub_26EF3B46C();
      v27 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();

      v26 = (*(v29 + 8))(v10, v6);
      v24 = v32;
    }

    MEMORY[0x274380B50](v26);
    v28 = (*(*v24 + 168))(v5);

    (*(v30 + 8))(v5, v31);
    (*(v17 + 8))(v21, v16);
    return v28;
  }
}

unint64_t sub_26EEABDA8()
{
  result = qword_2806C8A98;
  if (!qword_2806C8A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8A98);
  }

  return result;
}

uint64_t sub_26EEABE20@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CompatibilitySection();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7138, &unk_26EF3DCC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v23[-v10];
  v12 = sub_26EE17094();
  v13._object = 0x800000026EF46200;
  v14 = v12 & 1;
  v13._countAndFlagsBits = 0xD00000000000001ALL;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v13, v14, 0);
  sub_26EEAE310();
  v15 = sub_26EF3961C();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  sub_26EEAC104(v1, &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_26EEAC16C(&v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v17 + v16);
  sub_26EF3874C();
  v23[15] = sub_26EEABA18();
  v23[14] = 0;
  sub_26EEABDA8();
  v18 = sub_26EF3B0AC();
  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = (v18 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C08, &qword_26EF3F0C8);
  v22 = (a1 + *(result + 36));
  *v22 = KeyPath;
  v22[1] = sub_26EE274EC;
  v22[2] = v20;
  return result;
}

uint64_t sub_26EEAC0AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  *a1 = sub_26EF39E4C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8AF0, &qword_26EF41658);
  return sub_26EEAE92C(v3, a1 + *(v4 + 44));
}

uint64_t sub_26EEAC104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompatibilitySection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EEAC16C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompatibilitySection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EEAC1D0()
{
  v1 = *(type metadata accessor for CompatibilitySection() - 8);
  v3 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  type metadata accessor for PrepareForCloudView();
  sub_26EEAFAE0(&qword_2806C8AE8, type metadata accessor for PrepareForCloudView);
  return sub_26EF39ADC();
}

uint64_t sub_26EEAC2A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for CompatibilitySection();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8, v7);
  sub_26EEAC104(a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_26EEAC16C(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  return sub_26EE79EC0(sub_26EEAF854, v9, a2);
}

uint64_t sub_26EEAC3A4(uint64_t a1)
{
  v2 = type metadata accessor for CompatibilitySection();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8, v5);
  v6 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = sub_26EF3B30C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_26EEAC104(a1, v6);
  sub_26EF3B2DC();
  v13 = sub_26EF3B2CC();
  v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  sub_26EEAC16C(v6, v15 + v14);
  sub_26EE2C388(0, 0, v11, &unk_26EF41640, v15);
}

uint64_t sub_26EEAC55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v6 = sub_26EF38AAC();
  v4[6] = v6;
  v7 = *(v6 - 8);
  v4[7] = v7;
  v8 = *(v7 + 64) + 15;
  v4[8] = swift_task_alloc();
  v9 = sub_26EF3883C();
  v4[9] = v9;
  v10 = *(v9 - 8);
  v4[10] = v10;
  v11 = *(v10 + 64) + 15;
  v4[11] = swift_task_alloc();
  v12 = sub_26EF37EDC();
  v4[12] = v12;
  v13 = *(v12 - 8);
  v4[13] = v13;
  v14 = *(v13 + 64) + 15;
  v4[14] = swift_task_alloc();
  v15 = sub_26EF39DDC();
  v4[15] = v15;
  v16 = *(v15 - 8);
  v4[16] = v16;
  v17 = *(v16 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = sub_26EF3B2DC();
  v4[19] = sub_26EF3B2CC();
  v18 = swift_task_alloc();
  v4[20] = v18;
  *v18 = v4;
  v18[1] = sub_26EEAC7B4;

  return sub_26EEACE5C();
}

uint64_t sub_26EEAC7B4()
{
  v2 = v0;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  v10 = *v1;
  *(*v1 + 168) = v2;

  v7 = sub_26EF3B29C();
  if (v2)
  {
    v8 = sub_26EEAC9B0;
  }

  else
  {
    v8 = sub_26EEAC910;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_26EEAC910()
{
  v1 = v0[19];

  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_26EEAC9B0()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);

  v6 = type metadata accessor for CompatibilitySection();
  sub_26EE13B88(v5 + *(v6 + 32), v4, &qword_2806C7080, &unk_26EF3DBF0);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v7 = *(v0 + 40);

    sub_26EE14578(v7, &qword_2806C7080, &unk_26EF3DBF0);
  }

  else
  {
    v58 = v6;
    v8 = *(v0 + 32);
    (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 40), *(v0 + 48));
    v9 = *(v8 + 16);
    v10 = *(v8 + 24);

    v12 = v9;
    if ((v10 & 1) == 0)
    {
      v13 = *(v0 + 128);
      v14 = *(v0 + 136);
      v15 = *(v0 + 120);
      sub_26EF3B46C();
      v16 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();

      v11 = (*(v13 + 8))(v14, v15);
      v12 = *(v0 + 16);
    }

    v18 = *(v0 + 104);
    v17 = *(v0 + 112);
    v19 = *(v0 + 96);
    v20 = *(v0 + 64);
    MEMORY[0x274380B50](v11);
    (*(*v12 + 160))(3, v17);

    v57 = *(v18 + 8);
    v57(v17, v19);

    if ((v10 & 1) == 0)
    {
      v23 = *(v0 + 128);
      v22 = *(v0 + 136);
      v24 = *(v0 + 120);
      sub_26EF3B46C();
      v25 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();

      v21 = (*(v23 + 8))(v22, v24);
      v9 = *(v0 + 24);
    }

    v26 = *(v0 + 168);
    v27 = *(v0 + 112);
    v29 = *(v0 + 88);
    v28 = *(v0 + 96);
    v30 = *(v0 + 80);
    v56 = *(v0 + 72);
    v31 = *(v0 + 64);
    v32 = *(v0 + 32);
    MEMORY[0x274380B50](v21);
    (*(*v9 + 152))(v27, *(v32 + *(v58 + 36)));

    v57(v27, v28);
    v33 = sub_26EE27DAC();
    (*(v30 + 16))(v29, v33, v56);
    v34 = v26;
    v35 = sub_26EF3881C();
    v36 = sub_26EF3B45C();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = *(v0 + 168);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v40 = v37;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v41;
      *v39 = v41;
      _os_log_impl(&dword_26EE01000, v35, v36, "VoiceManagementView: Unable to create supplementary model. %@", v38, 0xCu);
      sub_26EE14578(v39, &qword_2806C7140, &unk_26EF3E420);
      MEMORY[0x2743842A0](v39, -1, -1);
      MEMORY[0x2743842A0](v38, -1, -1);
    }

    v42 = *(v0 + 168);
    v44 = *(v0 + 80);
    v43 = *(v0 + 88);
    v46 = *(v0 + 64);
    v45 = *(v0 + 72);
    v47 = *(v0 + 48);
    v48 = *(v0 + 56);

    (*(v48 + 8))(v46, v47);
    (*(v44 + 8))(v43, v45);
  }

  v49 = *(v0 + 136);
  v50 = *(v0 + 112);
  v51 = *(v0 + 88);
  v52 = *(v0 + 64);
  v53 = *(v0 + 40);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_26EEACE5C()
{
  v1[5] = v0;
  v2 = sub_26EF391EC();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v5 = sub_26EF37EDC();
  v1[10] = v5;
  v6 = *(v5 - 8);
  v1[11] = v6;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v8 = sub_26EF39DDC();
  v1[15] = v8;
  v9 = *(v8 - 8);
  v1[16] = v9;
  v10 = *(v9 + 64) + 15;
  v1[17] = swift_task_alloc();
  v11 = sub_26EF3883C();
  v1[18] = v11;
  v12 = *(v11 - 8);
  v1[19] = v12;
  v13 = *(v12 + 64) + 15;
  v1[20] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330) - 8) + 64) + 15;
  v1[21] = swift_task_alloc();
  v15 = sub_26EF38DBC();
  v1[22] = v15;
  v16 = *(v15 - 8);
  v1[23] = v16;
  v17 = *(v16 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0) - 8) + 64) + 15;
  v1[26] = swift_task_alloc();
  v19 = sub_26EF38AAC();
  v1[27] = v19;
  v20 = *(v19 - 8);
  v1[28] = v20;
  v21 = *(v20 + 64) + 15;
  v1[29] = swift_task_alloc();
  sub_26EF3B2DC();
  v1[30] = sub_26EF3B2CC();
  v23 = sub_26EF3B29C();
  v1[31] = v23;
  v1[32] = v22;

  return MEMORY[0x2822009F8](sub_26EEAD1BC, v23, v22);
}

uint64_t sub_26EEAD1BC()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[5];
  v5 = type metadata accessor for CompatibilitySection();
  sub_26EE13B88(v4 + *(v5 + 32), v3, &qword_2806C7080, &unk_26EF3DBF0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[30];
    v7 = v0[26];

    sub_26EE14578(v7, &qword_2806C7080, &unk_26EF3DBF0);
    v8 = v0[29];
    v9 = v0[25];
    v10 = v0[26];
    v11 = v0[24];
    v13 = v0[20];
    v12 = v0[21];
    v14 = v0[17];
    v16 = v0[13];
    v15 = v0[14];
    v17 = v0[12];
    v84 = v0[9];
    v85 = v0[8];

    v18 = v0[1];

    return v18();
  }

  v20 = v0[22];
  v21 = v0[23];
  v22 = v0[21];
  v23 = v0[5];
  (*(v0[28] + 32))(v0[29], v0[26], v0[27]);
  sub_26EEAEDF8(v22);
  if ((*(v21 + 48))(v22, 1, v20) == 1)
  {
    sub_26EE14578(v0[21], &qword_2806C7088, &unk_26EF3E330);
LABEL_9:
    v24 = v0[5];
    v25 = *(v24 + 16);
    v26 = *(v24 + 24);

    if ((v26 & 1) == 0)
    {
      v29 = v0[16];
      v28 = v0[17];
      v30 = v0[15];
      sub_26EF3B46C();
      v31 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();

      v27 = (*(v29 + 8))(v28, v30);
      v25 = v0[2];
      v24 = v0[5];
    }

    v32 = v0[29];
    v33 = v0[13];
    v34 = v0[10];
    v35 = v0[11];
    MEMORY[0x274380B50](v27);
    (*(*v25 + 160))(1, v33);

    v36 = *(v35 + 8);
    v0[37] = v36;
    v0[38] = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v36(v33, v34);
    v37 = *v24;
    if (*(v24 + 8) == 1)
    {
      v38 = v37;
    }

    else
    {
      v40 = v0[16];
      v39 = v0[17];
      v41 = v0[15];
      v42 = *v24;

      sub_26EF3B46C();
      v43 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v37, 0);
      (*(v40 + 8))(v39, v41);
      v38 = v0[3];
    }

    v0[39] = v38;
    v44 = v0[29];
    v45 = v0[12];
    v47 = v0[8];
    v46 = v0[9];
    MEMORY[0x274380B50]();
    sub_26EF391BC();
    sub_26EF391CC();
    v48 = swift_task_alloc();
    v0[40] = v48;
    *v48 = v0;
    v48[1] = sub_26EEADD24;
    v49 = v0[12];
    v51 = v0[8];
    v50 = v0[9];

    return sub_26EED7F5C(v49, v50, v51);
  }

  (*(v0[23] + 32))(v0[25], v0[21], v0[22]);
  if (sub_26EF38D8C() == 7)
  {
    (*(v0[23] + 8))(v0[25], v0[22]);
    goto LABEL_9;
  }

  v52 = v0[24];
  v53 = v0[25];
  v54 = v0[22];
  v55 = v0[23];
  v57 = v0[19];
  v56 = v0[20];
  v58 = v0[18];
  v59 = sub_26EE27DAC();
  (*(v57 + 16))(v56, v59, v58);
  (*(v55 + 16))(v52, v53, v54);
  v60 = sub_26EF3881C();
  v61 = sub_26EF3B45C();
  v62 = os_log_type_enabled(v60, v61);
  v64 = v0[23];
  v63 = v0[24];
  v65 = v0[22];
  if (v62)
  {
    v66 = swift_slowAlloc();
    *v66 = 134217984;
    v67 = sub_26EF38D8C();
    v68 = *(v64 + 8);
    v68(v63, v65);
    *(v66 + 4) = v67;
    _os_log_impl(&dword_26EE01000, v60, v61, "VoiceManagementView: Enhanced model exists but %ld to complete training. Removing and trying again.", v66, 0xCu);
    MEMORY[0x2743842A0](v66, -1, -1);
  }

  else
  {
    v68 = *(v64 + 8);
    v68(v0[24], v0[22]);
  }

  v0[33] = v68;
  v70 = v0[19];
  v69 = v0[20];
  v71 = v0[18];
  v72 = v0[5];

  (*(v70 + 8))(v69, v71);
  v73 = *v72;
  if (*(v72 + 8) == 1)
  {
    v74 = v73;
  }

  else
  {
    v76 = v0[16];
    v75 = v0[17];
    v77 = v0[15];
    v78 = *v72;

    sub_26EF3B46C();
    v79 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v73, 0);
    (*(v76 + 8))(v75, v77);
    v74 = v0[4];
  }

  v0[34] = v74;
  v80 = v0[25];
  v81 = v0[14];
  MEMORY[0x274380E60]();
  v82 = swift_task_alloc();
  v0[35] = v82;
  *v82 = v0;
  v82[1] = sub_26EEAD8C0;
  v83 = v0[14];

  return VoiceBankingSession.deleteModel(modelID:)(v83);
}

uint64_t sub_26EEAD8C0()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *(*v1 + 272);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 88);
  v7 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 288) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 256);
  v10 = *(v2 + 248);
  if (v0)
  {
    v11 = sub_26EEAE09C;
  }

  else
  {
    v11 = sub_26EEADA78;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_26EEADA78()
{
  v1 = *(v0 + 184) + 8;
  (*(v0 + 264))(*(v0 + 200), *(v0 + 176));
  v2 = *(v0 + 40);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);

  if ((v4 & 1) == 0)
  {
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = *(v0 + 120);
    sub_26EF3B46C();
    v9 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();

    v5 = (*(v7 + 8))(v6, v8);
    v3 = *(v0 + 16);
    v2 = *(v0 + 40);
  }

  v10 = *(v0 + 232);
  v11 = *(v0 + 104);
  v12 = *(v0 + 80);
  v13 = *(v0 + 88);
  MEMORY[0x274380B50](v5);
  (*(*v3 + 160))(1, v11);

  v14 = *(v13 + 8);
  *(v0 + 296) = v14;
  *(v0 + 304) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v11, v12);
  v15 = *v2;
  if (*(v2 + 8) == 1)
  {
    v16 = v15;
  }

  else
  {
    v18 = *(v0 + 128);
    v17 = *(v0 + 136);
    v19 = *(v0 + 120);
    v20 = *v2;

    sub_26EF3B46C();
    v21 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v15, 0);
    (*(v18 + 8))(v17, v19);
    v16 = *(v0 + 24);
  }

  *(v0 + 312) = v16;
  v22 = *(v0 + 232);
  v23 = *(v0 + 96);
  v25 = *(v0 + 64);
  v24 = *(v0 + 72);
  MEMORY[0x274380B50]();
  sub_26EF391BC();
  sub_26EF391CC();
  v26 = swift_task_alloc();
  *(v0 + 320) = v26;
  *v26 = v0;
  v26[1] = sub_26EEADD24;
  v27 = *(v0 + 96);
  v29 = *(v0 + 64);
  v28 = *(v0 + 72);

  return sub_26EED7F5C(v27, v28, v29);
}

uint64_t sub_26EEADD24()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *(*v1 + 312);
  v18 = *(*v1 + 304);
  v17 = *(*v1 + 296);
  v16 = *(*v1 + 96);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v7 = *(*v1 + 64);
  v8 = *(*v1 + 56);
  v9 = *(*v1 + 48);
  v10 = *v1;
  *(*v1 + 328) = v0;

  v11 = *(v8 + 8);
  v11(v7, v9);
  v11(v6, v9);
  v17(v16, v5);
  v12 = *(v2 + 256);
  v13 = *(v2 + 248);
  if (v0)
  {
    v14 = sub_26EEAE1E8;
  }

  else
  {
    v14 = sub_26EEADF7C;
  }

  return MEMORY[0x2822009F8](v14, v13, v12);
}

uint64_t sub_26EEADF7C()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[27];
  v4 = v0[28];

  (*(v4 + 8))(v2, v3);
  v5 = v0[29];
  v6 = v0[25];
  v7 = v0[26];
  v8 = v0[24];
  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[17];
  v13 = v0[13];
  v12 = v0[14];
  v14 = v0[12];
  v17 = v0[9];
  v18 = v0[8];

  v15 = v0[1];

  return v15();
}

uint64_t sub_26EEAE09C()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[23];

  v1(v3, v4);
  v6 = v0[26];
  v8 = v0[24];
  v7 = v0[25];
  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[17];
  v12 = v0[13];
  v13 = v0[14];
  v14 = v0[12];
  v17 = v0[9];
  v18 = v0[8];
  v19 = v0[36];
  (*(v0[28] + 8))(v0[29], v0[27]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_26EEAE1E8()
{
  v1 = v0[30];

  v2 = v0[26];
  v4 = v0[24];
  v3 = v0[25];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[17];
  v8 = v0[13];
  v9 = v0[14];
  v10 = v0[12];
  v13 = v0[9];
  v14 = v0[8];
  v15 = v0[41];
  (*(v0[28] + 8))(v0[29], v0[27]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_26EEAE92C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_26EF3A2BC();
  v48 = *(v3 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7868, &unk_26EF41660);
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A70, &qword_26EF3EEF0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A18, &qword_26EF41230);
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19 - 8, v21);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v46 - v26;
  v49 = a1;
  LOBYTE(v51) = sub_26EEABA18();
  v53 = 0;
  sub_26EEABDA8();
  if (sub_26EF3B0AC())
  {
    v28 = 1;
  }

  else
  {
    sub_26EF397DC();
    sub_26EF3A2AC();
    sub_26EE154C8(&qword_2806C7870, &qword_2806C7868, &unk_26EF41660);
    sub_26EEAFAE0(&qword_2806C7A78, MEMORY[0x277CDE330]);
    sub_26EF3A63C();
    (*(v48 + 8))(v7, v3);
    (*(v47 + 8))(v12, v8);
    v29 = &v18[*(v13 + 36)];
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A80, &qword_26EF3EEF8) + 28);
    v31 = *MEMORY[0x277CDF440];
    v32 = sub_26EF396EC();
    (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
    *v29 = swift_getKeyPath();
    sub_26EEA5A50(v18, v27);
    v28 = 0;
  }

  v33 = (*(v14 + 56))(v27, v28, 1, v13);
  v34 = sub_26EEAE310(v33);
  if (v35)
  {
    v51 = v34;
    v52 = v35;
    sub_26EE12538();
    v36 = sub_26EF3A5DC();
    v38 = v37;
    v40 = v39;
    v42 = v41 & 1;
    sub_26EE13B20(v36, v37, v41 & 1);
  }

  else
  {
    v36 = 0;
    v38 = 0;
    v42 = 0;
    v40 = 0;
  }

  sub_26EEAFB28(v27, v24);
  v43 = v50;
  sub_26EEAFB28(v24, v50);
  v44 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8AF8, &unk_26EF416A0) + 48));
  sub_26EEAFB98(v36, v38, v42, v40);
  sub_26EE5AAAC(v36, v38, v42, v40);
  *v44 = v36;
  v44[1] = v38;
  v44[2] = v42;
  v44[3] = v40;
  sub_26EEAFBDC(v27);
  sub_26EE5AAAC(v36, v38, v42, v40);
  return sub_26EEAFBDC(v24);
}

uint64_t sub_26EEAEDF8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26EF391EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v32 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v31 = &v25 - v10;
  v11 = sub_26EF38DBC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for CompatibilitySection();
  v18 = *(v1 + *(result + 36));
  v28 = *(v18 + 16);
  if (v28)
  {
    v26 = a1;
    v19 = 0;
    v29 = v12 + 16;
    v30 = v11;
    v20 = (v4 + 8);
    v27 = (v12 + 8);
    while (v19 < *(v18 + 16))
    {
      (*(v12 + 16))(v16, v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v19, v11);
      sub_26EF38D1C();
      sub_26EF391CC();
      sub_26EEAFAE0(&qword_2806C7A60, MEMORY[0x277D70650]);
      sub_26EF3B1DC();
      sub_26EF3B1DC();
      if (v35 == v33 && v36 == v34)
      {
        v24 = *v20;
        (*v20)(v32, v3);
        v24(v31, v3);

LABEL_11:
        a1 = v26;
        v11 = v30;
        (*(v12 + 32))(v26, v16, v30);
        v23 = 0;
        return (*(v12 + 56))(a1, v23, 1, v11);
      }

      v21 = sub_26EF3B82C();
      v22 = *v20;
      (*v20)(v32, v3);
      v22(v31, v3);

      if (v21)
      {
        goto LABEL_11;
      }

      ++v19;
      v11 = v30;
      result = (*v27)(v16, v30);
      if (v28 == v19)
      {
        v23 = 1;
        a1 = v26;
        return (*(v12 + 56))(a1, v23, 1, v11);
      }
    }

    __break(1u);
  }

  else
  {
    v23 = 1;
    return (*(v12 + 56))(a1, v23, 1, v11);
  }

  return result;
}

uint64_t sub_26EEAF184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for VoiceBankingSession();
  sub_26EEAFAE0(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  *a3 = sub_26EF3973C();
  *(a3 + 8) = v6 & 1;
  type metadata accessor for VoiceBankingCompatibilityModel();
  sub_26EEAFAE0(&qword_2806C8940, type metadata accessor for VoiceBankingCompatibilityModel);
  *(a3 + 16) = sub_26EF3973C();
  *(a3 + 24) = v7 & 1;
  type metadata accessor for VoiceBankingBatteryMonitor();
  sub_26EEAFAE0(&qword_2806C79E8, type metadata accessor for VoiceBankingBatteryMonitor);
  *(a3 + 32) = sub_26EF39C1C();
  *(a3 + 40) = v8;
  sub_26EF3AAEC();
  *(a3 + 48) = v11;
  *(a3 + 56) = v12;
  v9 = type metadata accessor for CompatibilitySection();
  result = sub_26EEA4904(a1, a3 + *(v9 + 32));
  *(a3 + *(v9 + 36)) = a2;
  return result;
}

uint64_t sub_26EEAF344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_26EEAF424(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 32);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

void sub_26EEAF4EC()
{
  sub_26EEAF690(319, &qword_2806C66B0, type metadata accessor for VoiceBankingSession, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_26EEAF690(319, &qword_2806C8AC8, type metadata accessor for VoiceBankingCompatibilityModel, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_26EE5A8A0();
      if (v2 <= 0x3F)
      {
        sub_26EE38E90();
        if (v3 <= 0x3F)
        {
          sub_26EEAF690(319, &qword_2806C70A8, MEMORY[0x277D70530], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_26EEAF690(319, &qword_2806C8AD0, MEMORY[0x277D705D8], MEMORY[0x277D83940]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26EEAF690(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26EEAF6F8()
{
  result = qword_2806C8AD8;
  if (!qword_2806C8AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8AE0, &unk_26EF41628);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8A88, &qword_26EF41598);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8AB0, qword_26EF415B8);
    sub_26EE154C8(&qword_2806C8AB8, &qword_2806C8A88, &qword_26EF41598);
    sub_26EE154C8(&qword_2806C8AC0, &qword_2806C8AB0, qword_26EF415B8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8AD8);
  }

  return result;
}

uint64_t sub_26EEAF854()
{
  v1 = *(type metadata accessor for CompatibilitySection() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26EEAC3A4(v2);
}

uint64_t sub_26EEAF8B4()
{
  v1 = type metadata accessor for CompatibilitySection();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  sub_26EE05C9C(*(v0 + v3), *(v0 + v3 + 8));
  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 32);

  v9 = *(v0 + v3 + 56);

  v10 = *(v1 + 32);
  v11 = sub_26EF38AAC();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v6 + v10, v11);
  }

  v13 = *(v6 + *(v1 + 36));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EEAFA18()
{
  v2 = *(type metadata accessor for CompatibilitySection() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE05D7C;

  return sub_26EEAC55C(v4, v5, v6, v0 + v3);
}

uint64_t sub_26EEAFAE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26EEAFB28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A18, &qword_26EF41230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EEAFB98(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_26EE13B20(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_26EEAFBDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8A18, &qword_26EF41230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_13()
{
  v1 = type metadata accessor for CompatibilitySection();
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_26EE05C9C(*(v0 + v4), *(v0 + v4 + 8));
  v6 = *(v0 + v4 + 16);

  v7 = *(v0 + v4 + 32);

  v8 = *(v0 + v4 + 56);

  v9 = *(v1 + 32);
  v10 = sub_26EF38AAC();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v4 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = *(v5 + *(v1 + 36));

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_26EEAFDA0()
{
  v1 = *(type metadata accessor for CompatibilitySection() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v4 = *(v2 + 48);
  v5 = *(v2 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  return sub_26EF3AB0C();
}

uint64_t sub_26EEAFE58(void *a1, uint64_t a2)
{
  sub_26EF38BDC();
  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8B68, &qword_26EF417D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8B40, &qword_26EF41710);
  sub_26EE154C8(&qword_2806C8B70, &qword_2806C8B68, &qword_26EF417D0);
  sub_26EEB108C(&qword_2806C8B78, MEMORY[0x277D70580]);
  sub_26EE154C8(&qword_2806C8B38, &qword_2806C8B40, &qword_26EF41710);
  return sub_26EF3ACEC();
}

uint64_t sub_26EEAFFF0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_26EF38BEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  (*(v7 + 16))(&v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v6);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  (*(v7 + 32))(v11 + v10, &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v12 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8B80, &qword_26EF417D8);
  sub_26EE154C8(&qword_2806C8B88, &qword_2806C8B80, &qword_26EF417D8);
  return sub_26EF3AB4C();
}

void sub_26EEB01B4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26EF38BEC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v8 + 16))(v10, a3);
    v11 = a1;
    sub_26EF1051C(v10);
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EEB108C(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
    sub_26EF39BFC();
    __break(1u);
  }
}

uint64_t sub_26EEB02E8@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23[1] = a2;
  v5 = sub_26EF38BEC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_26EF38BCC();
  v27 = v11;
  sub_26EE12538();
  v12 = sub_26EF3A5DC();
  v24 = v15;
  if (a1)
  {
    v16 = v12;
    v17 = v13;
    v18 = v14;
    v19 = a1;
    sub_26EF10340();

    sub_26EEB108C(&qword_2806C8B90, MEMORY[0x277D70580]);
    sub_26EF3B1DC();
    sub_26EF3B1DC();
    (*(v6 + 8))(v10, v5);
    if (v26 == v25)
    {
      v20 = sub_26EF3AA8C();
    }

    else
    {
      v20 = 0;
    }

    v21 = v24 & 1;
    sub_26EE13B20(v16, v17, v24 & 1);
    *a3 = v16;
    *(a3 + 8) = v17;
    *(a3 + 16) = v21;
    *(a3 + 24) = v18;
    *(a3 + 32) = v20;

    sub_26EE12ABC(v16, v17, v21);
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EEB108C(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_26EEB0554(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C83C0, &qword_26EF40210);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - v5;
  v7 = sub_26EF39E4C();
  sub_26EEB0950(a1, &v21);
  v8 = v21;
  v9 = v22[0];
  v14 = *(v22 + 8);
  v20 = 1;
  v19 = v22[0];
  v10 = sub_26EF3A99C();
  v15 = v7;
  v16[0] = 1;
  *&v16[8] = v8;
  v16[24] = v9;
  v17 = v14;
  v18 = v10;
  v11 = *MEMORY[0x277CDF9A8];
  v12 = sub_26EF39A3C();
  (*(*(v12 - 8) + 104))(v6, v11, v12);
  sub_26EEB108C(&qword_2806C83D0, MEMORY[0x277CDFA28]);
  result = sub_26EF3B0AC();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8B10, &unk_26EF416F0);
    sub_26EEB07BC();
    sub_26EE154C8(&qword_2806C83D8, &qword_2806C83C0, &qword_26EF40210);
    sub_26EF3A73C();
    sub_26EE14578(v6, &qword_2806C83C0, &qword_26EF40210);
    v22[1] = *&v16[16];
    v22[2] = v17;
    v23 = v18;
    v21 = v15;
    v22[0] = *v16;
    return sub_26EE14578(&v21, &qword_2806C8B10, &unk_26EF416F0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_26EEB07BC()
{
  result = qword_2806C8B18;
  if (!qword_2806C8B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8B10, &unk_26EF416F0);
    sub_26EE154C8(&qword_2806C8B20, &qword_2806C8B28, &unk_26EF41700);
    sub_26EE154C8(&qword_2806C6F68, &qword_2806C6F70, &qword_26EF3FF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8B18);
  }

  return result;
}

unint64_t sub_26EEB08A0()
{
  result = qword_2806C8B30;
  if (!qword_2806C8B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8B08, &qword_26EF416E8);
    sub_26EE154C8(&qword_2806C8B38, &qword_2806C8B40, &qword_26EF41710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8B30);
  }

  return result;
}

uint64_t sub_26EEB0950@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26EF38BEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = a1;
    sub_26EF10340();

    v11 = sub_26EF38BCC();
    v13 = v12;
    (*(v5 + 8))(v9, v4);
    v27[2] = v11;
    v27[3] = v13;
    sub_26EE12538();
    v14 = sub_26EF3A5DC();
    v16 = v15;
    LOBYTE(v13) = v17;
    sub_26EF3A4BC();
    v18 = sub_26EF3A5BC();
    v20 = v19;
    v22 = v21;
    v24 = v23;

    sub_26EE12ABC(v14, v16, v13 & 1);

    v25 = sub_26EF3AA8C();
    *a2 = v18;
    *(a2 + 8) = v20;
    *(a2 + 16) = v22 & 1;
    *(a2 + 24) = v24;
    *(a2 + 32) = v25;
    sub_26EE13B20(v18, v20, v22 & 1);

    sub_26EE12ABC(v18, v20, v22 & 1);
  }

  else
  {
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EEB108C(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_26EEB0B88()
{
  type metadata accessor for VoiceBankingAudioServiceViewModel();
  sub_26EEB108C(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);

  return sub_26EF39C1C();
}

uint64_t sub_26EEB0C18@<X0>(uint64_t a1@<X8>)
{
  v14 = *v1;
  v15 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8B00, &qword_26EF416E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8B08, &qword_26EF416E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8B10, &unk_26EF416F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C83C0, &qword_26EF40210);
  sub_26EEB07BC();
  sub_26EE154C8(&qword_2806C83D8, &qword_2806C83C0, &qword_26EF40210);
  swift_getOpaqueTypeConformance2();
  sub_26EEB08A0();
  sub_26EF3A52C();
  v3 = sub_26EF3A3DC();
  sub_26EF3962C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8B48, qword_26EF41718);
  v13 = a1 + *(result + 36);
  *v13 = v3;
  *(v13 + 8) = v5;
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  *(v13 + 40) = 0;
  return result;
}

unint64_t sub_26EEB0DE4()
{
  result = qword_2806C8B50;
  if (!qword_2806C8B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8B48, qword_26EF41718);
    sub_26EE154C8(&qword_2806C8B58, &qword_2806C8B60, &unk_26EF417A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8B50);
  }

  return result;
}

uint64_t sub_26EEB0E9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26EEB0EDC()
{
  v1 = sub_26EF38BEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_26EEB0FA0()
{
  v1 = *(sub_26EF38BEC() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_26EEB01B4(v2, v3, v4);
}

__n128 sub_26EEB1004@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = sub_26EF39E4C();
  sub_26EEB02E8(v4, v5, &v11);
  v7 = v12;
  v8 = v13;
  v9 = v14;
  result = v11;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = result;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  return result;
}

uint64_t sub_26EEB108C(unint64_t *a1, void (*a2)(uint64_t))
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

id static VoiceManagementViewBridge.makeVoiceManagementViewController(voiceID:voiceName:dismissCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_26EF37EDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for VoiceManagementView();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v13, a1, v8);

  VoiceManagementView.init(voiceID:dismissCallback:)(v13, a4, a5, v18);
  v19 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8B98, &unk_26EF417E0));
  v20 = sub_26EF39F8C();
  v21 = sub_26EF3B0BC();
  [v20 setTitle_];

  return v20;
}

id VoiceManagementViewBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VoiceManagementViewBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceManagementViewBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VoiceManagementViewBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceManagementViewBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26EEB15B0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26EEB15F8()
{
  v0 = sub_26EF3872C();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _UISolariumEnabled();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8080, &unk_26EF3FC30);
  v8 = *(v1 + 72);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = swift_allocObject();
  if (v7)
  {
    *(v10 + 16) = xmmword_26EF3EE20;
    sub_26EF386CC();
    sub_26EF386EC();
    sub_26EF3871C();
  }

  else
  {
    *(v10 + 16) = xmmword_26EF3D070;
    sub_26EF386CC();
    sub_26EF386EC();
  }

  v12[1] = v10;
  sub_26EEB4244(&qword_2806C8088, MEMORY[0x277CE7670]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8090, &unk_26EF3FB80);
  sub_26EE154C8(&qword_2806C8098, &qword_2806C8090, &unk_26EF3FB80);
  sub_26EF3B68C();
  sub_26EF3AC8C();
  return (*(v2 + 8))(v6, v0);
}

uint64_t sub_26EEB1834@<X0>(uint64_t a1@<X8>)
{
  v27[3] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8BA0, &qword_26EF41838);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v27 - v11;
  v13 = sub_26EE17094();
  v14._object = 0x800000026EF46240;
  v15 = v13 & 1;
  v14._countAndFlagsBits = 0xD000000000000018;
  v16 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v14, v15, 0);
  v27[1] = v16._object;
  v27[2] = v16._countAndFlagsBits;
  v17 = type metadata accessor for LanguagePickerView();
  sub_26EEB1C34(v1 + *(v17 + 24), v6);
  v29 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8BA8, &qword_26EF41840);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BB0, &qword_26EF41848);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BB8, &unk_26EF41850);
  v20 = sub_26EE154C8(&qword_2806C8BC0, &qword_2806C8BB8, &unk_26EF41850);
  v30 = v19;
  v31 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v18;
  v31 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_26EF386BC();
  v28 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8BC8, &unk_26EF42490);
  sub_26EE154C8(&qword_2806C8BD0, &qword_2806C8BA0, &qword_26EF41838);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BD8, &unk_26EF41860);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BE0, &qword_26EF424A0);
  v24 = sub_26EEB2104();
  v30 = v23;
  v31 = v24;
  v25 = swift_getOpaqueTypeConformance2();
  v30 = v22;
  v31 = v25;
  swift_getOpaqueTypeConformance2();
  sub_26EF3A8EC();
  return (*(v8 + 8))(v12, v7);
}

uint64_t type metadata accessor for LanguagePickerView()
{
  result = qword_2806CD730;
  if (!qword_2806CD730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EEB1C34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EEB1CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v24 = sub_26EF3A0BC();
  v22 = *(v24 - 8);
  v3 = *(v22 + 64);
  MEMORY[0x28223BE20](v24, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8BB8, &unk_26EF41850);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8BB0, &qword_26EF41848);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v21 - v17;
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8BF8, &qword_26EF41870);
  sub_26EEB25A8();
  sub_26EF3A50C();
  v19 = sub_26EE154C8(&qword_2806C8BC0, &qword_2806C8BB8, &unk_26EF41850);
  sub_26EF3A83C();
  (*(v8 + 8))(v12, v7);
  sub_26EF3A0AC();
  LOBYTE(a1) = sub_26EF3A39C();
  sub_26EF3A38C();
  sub_26EF3A38C();
  if (sub_26EF3A38C() != a1)
  {
    sub_26EF3A38C();
  }

  v26 = v7;
  v27 = v19;
  swift_getOpaqueTypeConformance2();
  sub_26EF3A7FC();
  (*(v22 + 8))(v6, v24);
  return (*(v14 + 8))(v18, v13);
}

uint64_t sub_26EEB1FD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8BD8, &unk_26EF41860);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = v10 - v4;
  sub_26EEB21E8();
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BE0, &qword_26EF424A0);
  v7 = sub_26EEB2104();
  v10[0] = v6;
  v10[1] = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x274382230](v5, v0, OpaqueTypeConformance2);
  return (*(v1 + 8))(v5, v0);
}

unint64_t sub_26EEB2104()
{
  result = qword_2806C8BE8;
  if (!qword_2806C8BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BE0, &qword_26EF424A0);
    type metadata accessor for ToolbarCancelButton();
    sub_26EEB4244(&qword_2806C8BF0, type metadata accessor for ToolbarCancelButton);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8BE8);
  }

  return result;
}

uint64_t sub_26EEB21E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C20, &qword_26EF41880);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v28 - v4;
  v6 = type metadata accessor for ToolbarCancelButton();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8BE0, &qword_26EF424A0);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v28 - v18;
  if (_UISolariumEnabled())
  {
    (*(v1 + 56))(v16, 1, 1, v0);
    v20 = sub_26EEB4244(&qword_2806C8BF0, type metadata accessor for ToolbarCancelButton);
    v28 = v6;
    v29 = v20;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x274382260](v16, v0, OpaqueTypeConformance2);
    sub_26EEB26EC(v16);
  }

  else
  {
    v22 = sub_26EF36388();
    sub_26EF363D8(v22, v23, v10);
    v24 = sub_26EEB4244(&qword_2806C8BF0, type metadata accessor for ToolbarCancelButton);
    MEMORY[0x274382230](v10, v6, v24);
    (*(v1 + 16))(v16, v5, v0);
    (*(v1 + 56))(v16, 0, 1, v0);
    v28 = v6;
    v29 = v24;
    v25 = swift_getOpaqueTypeConformance2();
    MEMORY[0x274382260](v16, v0, v25);
    sub_26EEB26EC(v16);
    (*(v1 + 8))(v5, v0);
    sub_26EEB2754(v10);
  }

  v26 = sub_26EEB2104();
  MEMORY[0x274382230](v19, v11, v26);
  return sub_26EEB26EC(v19);
}

uint64_t sub_26EEB2530()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C10, &qword_26EF41878);
  sub_26EEB2638();
  return sub_26EF3AD6C();
}

unint64_t sub_26EEB25A8()
{
  result = qword_2806C8C00;
  if (!qword_2806C8C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BF8, &qword_26EF41870);
    sub_26EEB2638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8C00);
  }

  return result;
}

unint64_t sub_26EEB2638()
{
  result = qword_2806C8C08;
  if (!qword_2806C8C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8C10, &qword_26EF41878);
    sub_26EEB4244(&qword_2806C8C18, type metadata accessor for SelectionCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8C08);
  }

  return result;
}

uint64_t sub_26EEB26EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8BE0, &qword_26EF424A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EEB2754(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarCancelButton();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26EEB27B0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for LanguagePickerView();
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v6 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26EF3925C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v43 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v42 = &v38 - v14;
  v15 = sub_26EF39DDC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  if (*(a1 + 8) == 1)
  {
    v23 = v22;
  }

  else
  {
    v39 = v19;

    sub_26EF3B46C();
    v24 = sub_26EF3A36C();
    v6 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v22, 0);
    (*(v16 + 8))(v21, v39);
    v23 = v46;
  }

  v25 = v42;
  (*(v8 + 16))(v42, v23 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationExperience, v7);

  (*(v8 + 104))(v43, *MEMORY[0x277D70688], v7);
  sub_26EEB4244(&qword_2806C8278, MEMORY[0x277D70698]);
  sub_26EF3B1DC();
  sub_26EF3B1DC();
  if (v46 == v44 && v47 == v45)
  {
    v26 = *(v8 + 8);
    v26(v43, v7);
    v26(v25, v7);

    v27 = MEMORY[0x277D70780];
  }

  else
  {
    v28 = sub_26EF3B82C();
    v29 = *(v8 + 8);
    v29(v43, v7);
    v29(v25, v7);

    v27 = MEMORY[0x277D70778];
    if (v28)
    {
      v27 = MEMORY[0x277D70780];
    }
  }

  v30 = *v27;
  v31 = sub_26EF38CCC();
  if (*(v31 + 16) && (v32 = v31, v33 = sub_26EEB3BD4(v30), (v34 & 1) != 0))
  {
    v35 = *(*(v32 + 56) + 8 * v33);

    v46 = v35;
    sub_26EEB3C68(a1, v6);
    v36 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v37 = swift_allocObject();
    sub_26EEB3DEC(v6, v37 + v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C28, &qword_26EF418F8);
    sub_26EF38CDC();
    type metadata accessor for SelectionCell();
    sub_26EE154C8(&qword_2806C8C30, &qword_2806C8C28, &qword_26EF418F8);
    sub_26EEB4244(&qword_2806C8C18, type metadata accessor for SelectionCell);
    sub_26EEB4244(&qword_2806C8C38, MEMORY[0x277D705B0]);
    sub_26EF3ACFC();
  }

  else
  {

    __break(1u);
  }
}

int *sub_26EEB2D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v24 = a3;
  v5 = type metadata accessor for LanguagePickerView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8, v8);
  v9 = sub_26EF38CDC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v13 = sub_26EF38C8C();
  v23 = v14;
  (*(v10 + 16))(&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  sub_26EEB3C68(a2, &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = (v11 + *(v6 + 80) + v15) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v15, &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  sub_26EEB3DEC(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v18 = sub_26EE1709C();
  v19 = sub_26EE170A4();
  return sub_26EE170E0(v13, v23, 1, v18, v19, v20, v21, sub_26EEB4074, v24, v17);
}

uint64_t sub_26EEB2F84(uint64_t a1, uint64_t a2)
{
  v4 = sub_26EF39DDC();
  v69 = *(v4 - 8);
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v68 = &v62[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_26EF38CDC();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v62[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v62[-v16];
  v18 = sub_26EF3883C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v62[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_26EE27DAC();
  v70 = v19;
  v71 = v18;
  (*(v19 + 16))(v23, v24, v18);
  v25 = v9[2];
  v25(v17, a1, v8);
  v25(v14, a1, v8);
  v26 = sub_26EF3881C();
  v27 = sub_26EF3B47C();
  v28 = os_log_type_enabled(v26, v27);
  v72 = v9;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v64 = v26;
    v30 = v29;
    v65 = swift_slowAlloc();
    v73[0] = v65;
    *v30 = 136315394;
    v63 = v27;
    v31 = sub_26EF38CAC();
    v66 = v4;
    v67 = a2;
    v32 = a1;
    v34 = v33;
    v35 = v9[1];
    v35(v17, v8);
    v36 = sub_26EE40670(v31, v34, v73);
    a1 = v32;
    v4 = v66;

    *(v30 + 4) = v36;
    *(v30 + 12) = 2080;
    v37 = sub_26EF38C7C();
    v39 = v38;
    v35(v14, v8);
    a2 = v67;
    v40 = sub_26EE40670(v37, v39, v73);

    *(v30 + 14) = v40;
    v41 = v64;
    _os_log_impl(&dword_26EE01000, v64, v63, "User has chosen to create an %s voice. Using %s asr asset.", v30, 0x16u);
    v42 = v65;
    swift_arrayDestroy();
    MEMORY[0x2743842A0](v42, -1, -1);
    MEMORY[0x2743842A0](v30, -1, -1);
  }

  else
  {

    v43 = v9[1];
    v43(v14, v8);
    v43(v17, v8);
  }

  (*(v70 + 8))(v23, v71);
  v44 = *a2;
  if (*(a2 + 8) == 1)
  {
    v45 = v44;
  }

  else
  {
    v46 = *a2;

    sub_26EF3B46C();
    v47 = sub_26EF3A36C();
    sub_26EF3880C();

    v48 = v68;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v44, 0);
    (*(v69 + 8))(v48, v4);
    v45 = v73[0];
  }

  v49 = v72;
  v50 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationLocale;
  swift_beginAccess();
  (v49[3])(&v45[v50], a1, v8);
  swift_endAccess();

  if (*(a2 + 16))
  {
    v51 = *(a2 + 16);

    v52 = VoiceBankingNavigationModel.itemPath.modify(v73);
    v54 = v53;
    v55 = *v53;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v54 = v55;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v55 = sub_26EEB3AD4(0, *(v55 + 2) + 1, 1, v55);
      *v54 = v55;
    }

    v58 = *(v55 + 2);
    v57 = *(v55 + 3);
    if (v58 >= v57 >> 1)
    {
      v55 = sub_26EEB3AD4((v57 > 1), v58 + 1, 1, v55);
      *v54 = v55;
    }

    *(v55 + 2) = v58 + 1;
    v59 = &v55[16 * v58];
    *(v59 + 4) = 3;
    v59[40] = 1;
    (v52)(v73, 0);
  }

  else
  {
    v61 = *(a2 + 24);
    type metadata accessor for VoiceBankingNavigationModel();
    sub_26EEB4244(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_26EEB359C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for VoiceBankingSession();
  sub_26EEB4244(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  *a1 = sub_26EF3973C();
  *(a1 + 8) = v2 & 1;
  type metadata accessor for VoiceBankingNavigationModel();
  sub_26EEB4244(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);
  *(a1 + 16) = sub_26EF39C1C();
  *(a1 + 24) = v3;
  v4 = a1 + *(type metadata accessor for LanguagePickerView() + 24);
  return sub_26EEB15F8();
}

uint64_t sub_26EEB36B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_26EEB378C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26EEB383C()
{
  sub_26EEB3938(319, &qword_2806C66B0, type metadata accessor for VoiceBankingSession, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_26EE1F73C();
    if (v1 <= 0x3F)
    {
      sub_26EEB3938(319, &qword_2806C8070, MEMORY[0x277CE7670], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26EEB3938(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26EEB399C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BA0, &qword_26EF41838);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BC8, &unk_26EF42490);
  sub_26EE154C8(&qword_2806C8BD0, &qword_2806C8BA0, &qword_26EF41838);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BD8, &unk_26EF41860);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8BE0, &qword_26EF424A0);
  sub_26EEB2104();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

char *sub_26EEB3AD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C40, &unk_26EF41CA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
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

unint64_t sub_26EEB3BD4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_26EF3B0FC();
  sub_26EF3B87C();
  sub_26EF3B16C();
  v4 = sub_26EF3B8CC();

  return sub_26EEB4140(a1, v4);
}

uint64_t sub_26EEB3C68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguagePickerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EEB3CCC()
{
  v1 = (type metadata accessor for LanguagePickerView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_26EE05C9C(*(v0 + v3), *(v0 + v3 + 8));
  v5 = *(v0 + v3 + 16);

  v6 = (v0 + v3 + v1[8]);
  v7 = *v6;

  v8 = *(v6 + 1);

  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830) + 32);
  v10 = sub_26EF3872C();
  (*(*(v10 - 8) + 8))(&v6[v9], v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EEB3DEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguagePickerView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

int *sub_26EEB3E50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for LanguagePickerView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26EEB2D68(a1, v6, a2);
}

uint64_t sub_26EEB3ED0()
{
  v1 = sub_26EF38CDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for LanguagePickerView() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);
  sub_26EE05C9C(*(v0 + v8), *(v0 + v8 + 8));
  v11 = *(v0 + v8 + 16);

  v12 = (v0 + v8 + v6[8]);
  v13 = *v12;

  v14 = *(v12 + 1);

  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830) + 32);
  v16 = sub_26EF3872C();
  (*(*(v16 - 8) + 8))(&v12[v15], v16);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_26EEB4074()
{
  v1 = *(sub_26EF38CDC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for LanguagePickerView() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_26EEB2F84(v0 + v2, v5);
}

unint64_t sub_26EEB4140(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_26EF3B0FC();
      v9 = v8;
      if (v7 == sub_26EF3B0FC() && v9 == v10)
      {
        break;
      }

      v12 = sub_26EF3B82C();

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

uint64_t sub_26EEB4244(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26EEB4290()
{
  v0 = type metadata accessor for VoiceBankingCompatibilityModel();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = [objc_allocWithZone(sub_26EF3914C()) init];
  *(v3 + 24) = sub_26EEB7924(MEMORY[0x277D84F90]);
  result = sub_26EF3803C();
  qword_2806CFA58 = v3;
  return result;
}

uint64_t sub_26EEB4308()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = [objc_allocWithZone(sub_26EF3914C()) init];
  *(v3 + 24) = sub_26EEB7924(MEMORY[0x277D84F90]);
  sub_26EF3803C();
  return v3;
}

uint64_t *sub_26EEB4378()
{
  if (qword_2806CD740 != -1)
  {
    swift_once();
  }

  return &qword_2806CFA58;
}

uint64_t sub_26EEB43C8()
{
  swift_getKeyPath();
  (*(*v0 + 176))();

  swift_beginAccess();
  v1 = v0[3];
}

uint64_t sub_26EEB4444@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 176))();

  swift_beginAccess();
  *a2 = v3[3];
}

uint64_t sub_26EEB44D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26EEB4500(v4);
}

uint64_t sub_26EEB4500(uint64_t a1)
{
  swift_beginAccess();
  v3 = v1[3];

  v5 = sub_26EEB74D4(v4, a1);

  if (v5)
  {
    v6 = v1[3];
    v1[3] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x28223BE20](KeyPath, v9);
    v11 = v1;
    v12 = a1;
    (*(*v1 + 184))(v10, sub_26EEB7E98);
  }
}

uint64_t sub_26EEB4614(uint64_t a1, uint64_t a2)
{
  v161 = sub_26EF37EDC();
  v160 = *(v161 - 8);
  v5 = *(v160 + 64);
  MEMORY[0x28223BE20](v161, v6);
  v158 = v7;
  v159 = &v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v167 = &v156 - v11;
  v173 = sub_26EF3883C();
  v177 = *(v173 - 8);
  v12 = *(v177 + 64);
  v14 = MEMORY[0x28223BE20](v173, v13);
  v165 = &v156 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v176 = &v156 - v17;
  v192 = sub_26EF391EC();
  v18 = *(v192 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v192, v20);
  v166 = &v156 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v168 = &v156 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v175 = &v156 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v172 = &v156 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v191 = &v156 - v34;
  MEMORY[0x28223BE20](v33, v35);
  v37 = &v156 - v36;
  v190 = sub_26EF38DBC();
  v181 = *(v190 - 8);
  v38 = *(v181 + 64);
  v40 = MEMORY[0x28223BE20](v190, v39);
  v169 = &v156 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v40, v42);
  v162 = &v156 - v44;
  v46 = MEMORY[0x28223BE20](v43, v45);
  v163 = &v156 - v47;
  v49 = MEMORY[0x28223BE20](v46, v48);
  v178 = &v156 - v50;
  v52 = MEMORY[0x28223BE20](v49, v51);
  v171 = &v156 - v53;
  v55 = MEMORY[0x28223BE20](v52, v54);
  v57 = &v156 - v56;
  v59 = MEMORY[0x28223BE20](v55, v58);
  v170 = &v156 - v60;
  MEMORY[0x28223BE20](v59, v61);
  v174 = &v156 - v62;
  swift_getKeyPath();
  v63 = (*v2 + 176);
  v179 = *v63;
  v180 = v63;
  v179();

  swift_beginAccess();
  v64 = *(v2[3] + 16);
  v183 = v2;
  if (!v64 || (, sub_26EEB66D8(a1), v66 = v65, result = , (v66 & 1) == 0))
  {
    swift_getKeyPath();
    v179();

    v195 = v183;
    swift_getKeyPath();
    sub_26EEB7F9C(&qword_2806C8940, type metadata accessor for VoiceBankingCompatibilityModel);
    sub_26EF3802C();

    swift_beginAccess();
    v68 = v183[3];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v193 = v183[3];
    v183[3] = 0x8000000000000000;
    sub_26EEB7010(3, a1, isUniquelyReferenced_nonNull_native);
    v183[3] = v193;
    swift_endAccess();
    v195 = v183;
    swift_getKeyPath();
    sub_26EF3801C();
  }

  v164 = a1;
  v70 = v190;
  v182 = *(a2 + 16);
  if (!v182)
  {
    return result;
  }

  v188 = *(v181 + 16);
  v189 = v181 + 16;
  v71 = a2 + ((*(v181 + 80) + 32) & ~*(v181 + 80));
  v185 = *(v181 + 72);
  v186 = (v18 + 8);
  v187 = (v181 + 8);
  v157 = v71;
  v72 = v182;
  v73 = v192;
  while (1)
  {
    v188(v57, v71, v70);
    sub_26EF38D1C();
    sub_26EF391BC();
    v74 = sub_26EEB7F9C(&qword_2806C7A60, MEMORY[0x277D70650]);
    sub_26EF3B1DC();
    v184 = v74;
    sub_26EF3B1DC();
    v75 = v195 == v193 && v196 == v194;
    v76 = v75 ? 1 : sub_26EF3B82C();
    v77 = *v186;
    (*v186)(v191, v73);
    v77(v37, v73);

    if (v76)
    {
      break;
    }

    v70 = v190;
    result = (*v187)(v57, v190);
    v71 += v185;
    if (!--v72)
    {
      return result;
    }
  }

  v78 = (v181 + 32);
  v79 = *(v181 + 32);
  v80 = v170;
  v81 = v190;
  v79(v170, v57, v190);
  v82 = v174;
  v170 = v78;
  v156 = v79;
  v79(v174, v80, v81);
  sub_26EF3932C();
  v83 = v171;
  v188(v171, v82, v81);
  v84 = v183;
  swift_retain_n();
  v85 = sub_26EF3881C();
  v86 = sub_26EF3B47C();
  v87 = os_log_type_enabled(v85, v86);
  v88 = v172;
  if (v87)
  {
    v89 = swift_slowAlloc();
    *v89 = 67109632;
    v90 = sub_26EF38CFC() & 1;
    v191 = *v187;
    (v191)(v83, v81);
    *(v89 + 4) = v90;
    *(v89 + 8) = 1024;
    v91 = v84[2];
    sub_26EF390FC();
    v92 = sub_26EF391AC();
    v94 = v93;
    if (v92 == sub_26EF391AC() && v94 == v95)
    {

      v96 = 1;
    }

    else
    {
      v97 = sub_26EF3B82C();

      v96 = v97 & 1;
      v81 = v190;
      v84 = v183;
    }

    *(v89 + 10) = v96;

    *(v89 + 14) = 1024;
    *(v89 + 16) = sub_26EF3910C() & 1;

    _os_log_impl(&dword_26EE01000, v85, v86, "[VoiceBankingCompatibilityModel]: Primary model training: %{BOOL}d, tccCloudKitAccess granted: %{BOOL}d, iCloud sync available: %{BOOL}d", v89, 0x14u);
    MEMORY[0x2743842A0](v89, -1, -1);

    v82 = v174;
  }

  else
  {
    v191 = *v187;
    (v191)(v83, v81);
  }

  v98 = *(v177 + 8);
  v99 = v176;
  v177 += 8;
  v176 = v98;
  (v98)(v99, v173);
  v100 = sub_26EF38CFC();
  v101 = v175;
  if ((v100 & 1) != 0 || sub_26EF38D8C() != 7)
  {
    goto LABEL_48;
  }

  v102 = v84[2];
  sub_26EF390FC();
  v103 = sub_26EF391AC();
  v105 = v104;
  if (v103 == sub_26EF391AC() && v105 == v106)
  {

    v82 = v174;
  }

  else
  {
    v107 = sub_26EF3B82C();

    v82 = v174;
    if ((v107 & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  result = sub_26EF3910C();
  if ((result & 1) == 0)
  {
LABEL_48:
    v130 = v82;
    v131 = v81;
    return (v191)(v130, v131);
  }

  v171 = v102;
  v108 = 0;
  v109 = v157;
  while (1)
  {
    v110 = v108 + 1;
    if (__OFADD__(v108, 1))
    {
      __break(1u);
LABEL_71:
      __break(1u);
      return result;
    }

    v188(v178, v109, v190);
    sub_26EF38D1C();
    sub_26EF391DC();
    v111 = v192;
    sub_26EF3B1DC();
    sub_26EF3B1DC();
    if (v195 == v193 && v196 == v194)
    {
      break;
    }

    v113 = sub_26EF3B82C();
    v77(v101, v111);
    v77(v88, v111);

    if (v113)
    {
      goto LABEL_52;
    }

    result = (v191)(v178, v190);
    ++v108;
    v109 += v185;
    v101 = v175;
    if (v110 == v182)
    {
      v114 = v167;
      v115 = v190;
      (*(v181 + 56))(v167, 1, 1, v190);
      sub_26EE14578(v114, &qword_2806C7088, &unk_26EF3E330);
      v116 = v165;
      sub_26EF3932C();
      v117 = sub_26EF3881C();
      v118 = sub_26EF3B47C();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        *v119 = 0;
        _os_log_impl(&dword_26EE01000, v117, v118, "[VoiceBankingCompatibilityModel]: Primary model doesn't have v1 voice.", v119, 2u);
        MEMORY[0x2743842A0](v119, -1, -1);
      }

      result = (v176)(v116, v173);
      v120 = 0;
      v121 = v166;
      v122 = v157;
      while (1)
      {
        v181 = v120;
        v123 = v120 + 1;
        if (__OFADD__(v120, 1))
        {
          goto LABEL_71;
        }

        v188(v169, v122, v115);
        v124 = v168;
        sub_26EF38D1C();
        sub_26EF391CC();
        v125 = v192;
        sub_26EF3B1DC();
        sub_26EF3B1DC();
        if (v195 == v193 && v196 == v194)
        {
          break;
        }

        LODWORD(v178) = sub_26EF3B82C();
        v77(v121, v125);
        v77(v124, v125);

        if (v178)
        {
          goto LABEL_54;
        }

        result = (v191)(v169, v115);
        v120 = v181 + 1;
        v122 += v185;
        if (v123 == v182)
        {
          v127 = 1;
          v128 = v164;
          v129 = v179;
          goto LABEL_60;
        }
      }

      v77(v121, v125);
      v77(v124, v125);

LABEL_54:
      v134 = v162;
      v135 = v156;
      v156(v162, v169, v115);
      v136 = v163;
      v135(v163, v134, v115);
      if (sub_26EF38CFC())
      {
        swift_getKeyPath();
        v137 = v183;
        v129 = v179;
        v179();

        v195 = v137;
        swift_getKeyPath();
        sub_26EEB7F9C(&qword_2806C8940, type metadata accessor for VoiceBankingCompatibilityModel);
        sub_26EF3802C();

        swift_beginAccess();
        v138 = v137[3];
        v139 = swift_isUniquelyReferenced_nonNull_native();
        v193 = v137[3];
        v137[3] = 0x8000000000000000;
        v128 = v164;
        sub_26EEB7010(2, v164, v139);
        v137[3] = v193;
        swift_endAccess();
        v195 = v137;
        swift_getKeyPath();
        sub_26EF3801C();

        v140 = v136;
        v141 = v115;
        goto LABEL_58;
      }

      v142 = sub_26EF38D8C();
      v128 = v164;
      if (v142 == 7)
      {
        swift_getKeyPath();
        v137 = v183;
        v129 = v179;
        v179();

        v195 = v137;
        swift_getKeyPath();
        sub_26EEB7F9C(&qword_2806C8940, type metadata accessor for VoiceBankingCompatibilityModel);
        sub_26EF3802C();

        swift_beginAccess();
        v143 = v137[3];
        v144 = swift_isUniquelyReferenced_nonNull_native();
        v193 = v137[3];
        v137[3] = 0x8000000000000000;
        sub_26EEB7010(3, v128, v144);
        v137[3] = v193;
        swift_endAccess();
        v195 = v137;
        swift_getKeyPath();
        sub_26EF3801C();

        v140 = v136;
        v141 = v190;
LABEL_58:
        (v191)(v140, v141);
        v127 = 0;
      }

      else
      {
        (v191)(v136, v190);
        v127 = 1;
        v129 = v179;
LABEL_60:
        v137 = v183;
      }

      swift_getKeyPath();
      v129();

      v145 = v137[3];
      v146 = v174;
      if (*(v145 + 16))
      {
        v147 = v137[3];

        v148 = sub_26EEB66D8(v128);
        if (v149)
        {
          v150 = *(*(v145 + 56) + v148);

          v75 = v150 == 1;
          v146 = v174;
          if (!v75)
          {
            goto LABEL_67;
          }

LABEL_69:
          v130 = v146;
          v131 = v190;
          return (v191)(v130, v131);
        }
      }

LABEL_67:
      if (v127)
      {
        v151 = v160;
        v152 = v159;
        v153 = v161;
        (*(v160 + 16))(v159, v128, v161);
        v154 = (*(v151 + 80) + 24) & ~*(v151 + 80);
        v155 = swift_allocObject();
        *(v155 + 16) = v137;
        (*(v151 + 32))(v155 + v154, v152, v153);

        sub_26EF390BC();

        v130 = v146;
        v131 = v190;
        return (v191)(v130, v131);
      }

      goto LABEL_69;
    }
  }

  v77(v101, v111);
  v77(v88, v111);

LABEL_52:
  v132 = v190;
  (v191)(v174, v190);
  v133 = v167;
  v156(v167, v178, v132);
  (*(v181 + 56))(v133, 0, 1, v132);
  return sub_26EE14578(v133, &qword_2806C7088, &unk_26EF3E330);
}

uint64_t sub_26EEB5A8C(char a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  if (a1 == 4)
  {
    v6 = sub_26EEB66D8(a2);
    if (v7)
    {
      v8 = v6;
      v9 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_26EEB7264();
        v11 = v22;
      }

      v12 = *(v11 + 48);
      v13 = sub_26EF37EDC();
      v14 = *(v13 - 8);
      v15 = *(v14 + 8);
      v15(v12 + *(v14 + 72) * v8, v13);
      sub_26EEB6CF0(v8, v11);
      result = (v15)(a2, v13);
      *v3 = v11;
    }

    else
    {
      v20 = sub_26EF37EDC();
      v21 = *(*(v20 - 8) + 8);

      return v21(a2, v20);
    }
  }

  else
  {
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    sub_26EEB7010(a1, a2, v18);
    v19 = sub_26EF37EDC();
    result = (*(*(v19 - 8) + 8))(a2, v19);
    *v3 = v23;
  }

  return result;
}

uint64_t sub_26EEB5C48(uint64_t a1, void *a2, uint64_t a3)
{
  v42 = a2;
  v43 = a3;
  v4 = sub_26EF3883C();
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26EF38A4C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v44 = &v41 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C58, &unk_26EF41A20);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v41 - v21;
  sub_26EE13B88(a1, &v41 - v21, &qword_2806C8C58, &unk_26EF41A20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v25 = v44;
    (*(v10 + 32))(v44, v22, v9);
    v26 = sub_26EE27DAC();
    v27 = *(v45 + 16);
    v43 = v4;
    v27(v8, v26, v4);
    v28 = *(v10 + 16);
    v28(v15, v25, v9);
    v29 = sub_26EF3881C();
    v30 = sub_26EF3B45C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v31 = 138412290;
      sub_26EEB7F9C(&unk_2806C9CD0, MEMORY[0x277D70518]);
      swift_allocError();
      v28(v32, v15, v9);
      v33 = _swift_stdlib_bridgeErrorToNSError();
      v34 = *(v10 + 8);
      v34(v15, v9);
      *(v31 + 4) = v33;
      v35 = v42;
      *v42 = v33;
      _os_log_impl(&dword_26EE01000, v29, v30, "VoiceManagementView: Unable to check iCloud device list. %@", v31, 0xCu);
      sub_26EE14578(v35, &qword_2806C7140, &unk_26EF3E420);
      MEMORY[0x2743842A0](v35, -1, -1);
      MEMORY[0x2743842A0](v31, -1, -1);

      (*(v45 + 8))(v8, v43);
      return (v34)(v44, v9);
    }

    else
    {

      v40 = *(v10 + 8);
      v40(v15, v9);
      (*(v45 + 8))(v8, v43);
      return (v40)(v44, v9);
    }
  }

  else
  {
    v37 = *v22;
    MEMORY[0x28223BE20](EnumCaseMultiPayload, v24);
    v38 = v43;
    *(&v41 - 4) = v42;
    *(&v41 - 3) = v38;
    *(&v41 - 16) = v39;
    sub_26EF3AEAC();
    sub_26EF3992C();
  }
}

uint64_t sub_26EEB60D0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_26EF37EDC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a2);
  swift_getKeyPath();
  (*(*a1 + 176))();

  v15 = a1;
  swift_getKeyPath();
  sub_26EEB7F9C(&qword_2806C8940, type metadata accessor for VoiceBankingCompatibilityModel);
  sub_26EF3802C();

  swift_beginAccess();
  if (a3)
  {
    v12 = 0;
  }

  else
  {
    v12 = 3;
  }

  sub_26EEB5A8C(v12, v10);
  swift_endAccess();
  v15 = a1;
  swift_getKeyPath();
  sub_26EF3801C();
}

uint64_t sub_26EEB62B8(char a1, uint64_t a2)
{
  swift_getKeyPath();
  (*(*v2 + 176))();

  swift_getKeyPath();
  sub_26EEB7F9C(&qword_2806C8940, type metadata accessor for VoiceBankingCompatibilityModel);
  sub_26EF3802C();

  swift_beginAccess();
  v5 = v2[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v2[3];
  v2[3] = 0x8000000000000000;
  sub_26EEB7010(a1, a2, isUniquelyReferenced_nonNull_native);
  v2[3] = v8;
  swift_endAccess();
  swift_getKeyPath();
  sub_26EF3801C();
}

uint64_t sub_26EEB6428(uint64_t a1)
{
  swift_getKeyPath();
  (*(*v1 + 176))();

  swift_beginAccess();
  v3 = v1[3];
  if (!*(v3 + 16))
  {
    return 3;
  }

  v4 = sub_26EEB66D8(a1);
  if (v5)
  {
    v6 = *(*(v3 + 56) + v4);
  }

  else
  {
    v6 = 3;
  }

  return v6;
}

uint64_t sub_26EEB662C()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI30VoiceBankingCompatibilityModel___observationRegistrar;
  v3 = sub_26EF3804C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

unint64_t sub_26EEB66D8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_26EF37EDC();
  sub_26EEB7F9C(&qword_2806C8C68, MEMORY[0x277CC95F0]);
  v5 = sub_26EF3B04C();

  return sub_26EEB6770(a1, v5);
}

unint64_t sub_26EEB6770(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_26EF37EDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4);
      sub_26EEB7F9C(&qword_2806C81E0, MEMORY[0x277CC95F0]);
      v17 = sub_26EF3B0AC();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_26EEB6930(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_26EF37EDC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C60, &qword_26EF41A30);
  v45 = a2;
  result = sub_26EF3B7BC();
  v15 = result;
  if (*(v12 + 16))
  {
    v48 = v11;
    v41 = v3;
    v16 = 0;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v42 = (v7 + 16);
    v43 = v7;
    v46 = (v7 + 32);
    v22 = result + 64;
    v44 = v12;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v25 = (v20 - 1) & v20;
LABEL_17:
      v28 = v24 | (v16 << 6);
      v47 = v25;
      v29 = *(v7 + 72);
      v30 = *(v12 + 48) + v29 * v28;
      if (v45)
      {
        (*v46)(v48, v30, v6);
      }

      else
      {
        (*v42)(v48, v30, v6);
      }

      v31 = *(*(v12 + 56) + v28);
      v32 = *(v15 + 40);
      sub_26EEB7F9C(&qword_2806C8C68, MEMORY[0x277CC95F0]);
      result = sub_26EF3B04C();
      v33 = -1 << *(v15 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v22 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v22 + 8 * v35);
          if (v39 != -1)
          {
            v23 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v34) & ~*(v22 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v46)(*(v15 + 48) + v29 * v23, v48, v6);
      *(*(v15 + 56) + v23) = v31;
      ++*(v15 + 16);
      v7 = v43;
      v12 = v44;
      v20 = v47;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v12 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v17, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v40;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v15;
  return result;
}

unint64_t sub_26EEB6CF0(int64_t a1, uint64_t a2)
{
  v44 = sub_26EF37EDC();
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v44, v6);
  v43 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v45 = v8;
    v14 = sub_26EF3B6AC();
    v15 = v44;
    v8 = v45;
    v16 = v13;
    v42 = (v14 + 1) & v13;
    v18 = *(v4 + 16);
    v17 = v4 + 16;
    v40 = a2 + 64;
    v41 = v18;
    v19 = *(v17 + 56);
    v39 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v12;
      v22 = v43;
      v23 = v16;
      v24 = v17;
      v25 = v8;
      v41(v43, *(v8 + 48) + v19 * v12, v15);
      v26 = *(v25 + 40);
      sub_26EEB7F9C(&qword_2806C8C68, MEMORY[0x277CC95F0]);
      v27 = sub_26EF3B04C();
      result = (*v39)(v22, v15);
      v16 = v23;
      v28 = v27 & v23;
      if (a1 >= v42)
      {
        if (v28 >= v42 && a1 >= v28)
        {
LABEL_15:
          v8 = v45;
          v31 = *(v45 + 48);
          result = v31 + v20 * a1;
          v17 = v24;
          if (v20 * a1 < v21 || (v19 = v20, result >= v31 + v21 + v20))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v8 = v45;
            v19 = v20;
            v16 = v23;
            v10 = v40;
          }

          else
          {
            v10 = v40;
            if (v20 * a1 != v21)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v8 = v45;
              v19 = v20;
              v16 = v23;
            }
          }

          v32 = *(v8 + 56);
          v33 = (v32 + a1);
          v34 = (v32 + v12);
          if (a1 != v12 || v33 >= v34 + 1)
          {
            *v33 = *v34;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v28 >= v42 || a1 >= v28)
      {
        goto LABEL_15;
      }

      v17 = v24;
      v10 = v40;
      v19 = v20;
      v8 = v45;
LABEL_4:
      v12 = (v12 + 1) & v16;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(v8 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v37;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t sub_26EEB7010(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_26EF37EDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_26EEB66D8(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  result = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v22 = *v4;
    if (v20)
    {
LABEL_8:
      *(v22[7] + v16) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v21 >= result && (a3 & 1) == 0)
  {
    result = sub_26EEB7264();
    goto LABEL_7;
  }

  sub_26EEB6930(result, a3 & 1);
  v23 = *v4;
  result = sub_26EEB66D8(a2);
  if ((v20 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_26EF3B86C();
    __break(1u);
    return result;
  }

  v16 = result;
  v22 = *v4;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v13, a2, v8);
  return sub_26EEB71AC(v16, v13, a1, v22);
}

uint64_t sub_26EEB71AC(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_26EF37EDC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
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

char *sub_26EEB7264()
{
  v1 = v0;
  v33 = sub_26EF37EDC();
  v35 = *(v33 - 8);
  v2 = *(v35 + 64);
  MEMORY[0x28223BE20](v33, v3);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C60, &qword_26EF41A30);
  v5 = *v0;
  v6 = sub_26EF3B7AC();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v34 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v35;
        v22 = *(v35 + 72) * v20;
        v24 = v32;
        v23 = v33;
        (*(v35 + 16))(v32, *(v5 + 48) + v22, v33);
        v25 = *(*(v5 + 56) + v20);
        v26 = v34;
        result = (*(v21 + 32))(*(v34 + 48) + v22, v24, v23);
        *(*(v26 + 56) + v20) = v25;
        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v28;
        v7 = v34;
        goto LABEL_18;
      }

      v19 = *(v29 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_26EEB74D4(uint64_t a1, uint64_t a2)
{
  v62 = sub_26EF37EDC();
  v57 = *(v62 - 8);
  v4 = *(v57 + 64);
  v6 = MEMORY[0x28223BE20](v62, v5);
  v58 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v56 = v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C48, &qword_26EF41A10);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  result = MEMORY[0x28223BE20](v13, v14);
  v18 = v52 - v16;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v55 = v17;
  v19 = 0;
  v53 = a1;
  v22 = *(a1 + 64);
  v21 = a1 + 64;
  v20 = v22;
  v23 = 1 << *(v21 - 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v26 = (v23 + 63) >> 6;
  v52[0] = v21;
  v52[1] = v57 + 16;
  v59 = v52 - v16;
  v60 = (v57 + 32);
  v54 = (v57 + 8);
  while (v25)
  {
    v61 = (v25 - 1) & v25;
    v27 = __clz(__rbit64(v25)) | (v19 << 6);
LABEL_16:
    v32 = v53;
    v33 = v56;
    v34 = v57;
    v35 = v62;
    (*(v57 + 16))(v56, *(v53 + 48) + *(v57 + 72) * v27, v62);
    v36 = *(*(v32 + 56) + v27);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C50, &qword_26EF41A18);
    v38 = *(v37 + 48);
    v39 = *(v34 + 32);
    v40 = v55;
    v39(v55, v33, v35);
    *(v40 + v38) = v36;
    (*(*(v37 - 8) + 56))(v40, 0, 1, v37);
    v18 = v59;
LABEL_17:
    sub_26EEB7EFC(v40, v18);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C50, &qword_26EF41A18);
    v42 = (*(*(v41 - 8) + 48))(v18, 1, v41);
    v43 = v42 == 1;
    if (v42 != 1)
    {
      v44 = *(v41 + 48);
      v45 = v58;
      v46 = v62;
      (*v60)(v58, v18, v62);
      v47 = v18[v44];
      v48 = sub_26EEB66D8(v45);
      LOBYTE(v44) = v49;
      result = (*v54)(v45, v46);
      if (v44)
      {
        v50 = *(*(a2 + 56) + v48) == v47;
        v18 = v59;
        v25 = v61;
        if (v50)
        {
          continue;
        }
      }
    }

    return v43;
  }

  if (v26 <= v19 + 1)
  {
    v28 = v19 + 1;
  }

  else
  {
    v28 = v26;
  }

  v29 = v28 - 1;
  while (1)
  {
    v30 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v30 >= v26)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C50, &qword_26EF41A18);
      v40 = v55;
      (*(*(v51 - 8) + 56))(v55, 1, 1, v51);
      v61 = 0;
      v19 = v29;
      goto LABEL_17;
    }

    v31 = *(v52[0] + 8 * v30);
    ++v19;
    if (v31)
    {
      v61 = (v31 - 1) & v31;
      v27 = __clz(__rbit64(v31)) | (v30 << 6);
      v19 = v30;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26EEB7924(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C70, &qword_26EF41A38);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C60, &qword_26EF41A30);
    v9 = sub_26EF3B7CC();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_26EE13B88(v11, v7, &qword_2806C8C70, &qword_26EF41A38);
      result = sub_26EEB66D8(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_26EF37EDC();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      *(v9[7] + v15) = v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t type metadata accessor for VoiceBankingCompatibilityModel()
{
  result = qword_2806CD8E0;
  if (!qword_2806CD8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EEB7B58()
{
  v1 = sub_26EF37EDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26EEB7C1C(uint64_t a1)
{
  v3 = *(sub_26EF37EDC() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_26EEB5C48(a1, v4, v5);
}

uint64_t getEnumTagSinglePayload for CompatibilityState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CompatibilityState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26EEB7DEC()
{
  result = sub_26EF3804C();
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

uint64_t sub_26EEB7E98()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 24);
  *(v2 + 24) = v1;
}

uint64_t sub_26EEB7EFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C48, &qword_26EF41A10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EEB7F9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26EEB7FE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26EEB8078@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26EF3872C();
  v3 = *(v2 - 8);
  v4 = v3;
  v5 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _UISolariumEnabled();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8080, &unk_26EF3FC30);
  v10 = *(v3 + 72);
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  if (v9)
  {
    v14[0] = a1;
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_26EF41A50;
    sub_26EF386EC();
    sub_26EF3870C();
    sub_26EF386CC();
    sub_26EF386FC();
    sub_26EF3871C();
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_26EF41A40;
    sub_26EF386EC();
    sub_26EF3870C();
    sub_26EF386CC();
    sub_26EF386FC();
  }

  v14[1] = v12;
  sub_26EEB7FE4(&qword_2806C8088, MEMORY[0x277CE7670]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8090, &unk_26EF3FB80);
  sub_26EE154C8(&qword_2806C8098, &qword_2806C8090, &unk_26EF3FB80);
  sub_26EF3B68C();
  sub_26EF3AC8C();
  return (*(v4 + 8))(v8, v2);
}

uint64_t sub_26EEB82E4@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  VoiceView = type metadata accessor for CreateVoiceView(0);
  v3 = VoiceView - 8;
  v60 = *(VoiceView - 8);
  v59 = *(v60 + 64);
  MEMORY[0x28223BE20](VoiceView, v4);
  v57 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26EF3A32C();
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = *(v53 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v52 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C78, &qword_26EF41A78);
  v51 = *(v15 - 8);
  v16 = *(v51 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = v48 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C80, &qword_26EF41A80);
  v21 = *(v20 - 8);
  v55 = v20;
  v56 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v50 = v48 - v24;
  v25 = sub_26EE17094();
  v26._object = 0x800000026EF462C0;
  v27 = v25 & 1;
  v26._countAndFlagsBits = 0xD000000000000017;
  v28 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v26, v27, 0);
  v48[3] = v28._countAndFlagsBits;
  v48[2] = v28._object;
  v29 = sub_26EE17094();
  v30._countAndFlagsBits = 0xD000000000000019;
  v30._object = 0x800000026EF462E0;
  v31 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v30, v29 & 1, 0);
  v48[1] = v31._countAndFlagsBits;
  v48[0] = v31._object;
  v32 = *(v3 + 52);
  v49 = v1;
  sub_26EE13B88(v1 + v32, v14, &qword_2806C8018, &qword_26EF41830);
  v63 = v1;
  v62 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C88, &qword_26EF41A88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C90, &qword_26EF41A90);
  sub_26EE154C8(&qword_2806C8C98, &qword_2806C8C88, &qword_26EF41A88);
  sub_26EEBE8BC(&qword_2806C8CA0, &qword_2806C8C90, &qword_26EF41A90, sub_26EEB8F68);
  sub_26EF386BC();
  v33 = v52;
  sub_26EF3A31C();
  v34 = sub_26EE154C8(&qword_2806C8CB8, &qword_2806C8C78, &qword_26EF41A78);
  v35 = v50;
  sub_26EF3A84C();
  (*(v53 + 8))(v33, v54);
  (*(v51 + 8))(v19, v15);
  v36 = v49;
  v61 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8CC0, &qword_26EF41AA8);
  v64 = v15;
  v65 = v34;
  swift_getOpaqueTypeConformance2();
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8CC8, &qword_26EF41AB0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8CD0, &unk_26EF41AB8);
  v39 = sub_26EEB9158();
  v64 = v38;
  v65 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = v37;
  v65 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v41 = v58;
  v42 = v55;
  sub_26EF3A8EC();
  (*(v56 + 8))(v35, v42);
  v43 = v57;
  sub_26EEB9B08(v36, v57);
  v44 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v45 = swift_allocObject();
  sub_26EEB9B70(v43, v45 + v44);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8CE0, &qword_26EF41AC8);
  v47 = (v41 + *(result + 36));
  *v47 = sub_26EEB9BD4;
  v47[1] = v45;
  v47[2] = 0;
  v47[3] = 0;
  return result;
}

uint64_t sub_26EEB8988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8CE8, &qword_26EF41AD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8CF8, &qword_26EF41AE0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v29 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v29 - v21;
  *v8 = sub_26EF39F6C();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8CF0, &qword_26EF41AD8);
  sub_26EEBAB40(a1, &v8[*(v23 + 44)]);
  if (AXDeviceIsPad())
  {
    v24 = 0x4034000000000000;
  }

  else
  {
    v24 = 0x4030000000000000;
  }

  v25 = sub_26EF3A3BC();
  sub_26EE14D98(v8, v19, &qword_2806C8CE8, &qword_26EF41AD0);
  v26 = &v19[*(v10 + 44)];
  *v26 = v25;
  *(v26 + 1) = 0x403E000000000000;
  *(v26 + 2) = v24;
  *(v26 + 3) = 0;
  *(v26 + 4) = v24;
  v26[40] = 0;
  sub_26EE14D98(v19, v22, &qword_2806C8CF8, &qword_26EF41AE0);
  sub_26EE13B88(v22, v15, &qword_2806C8CF8, &qword_26EF41AE0);
  sub_26EE13B88(v15, a2, &qword_2806C8CF8, &qword_26EF41AE0);
  v27 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8DF0, &unk_26EF41CD0) + 48);
  *v27 = 0;
  *(v27 + 8) = 1;
  sub_26EE14578(v22, &qword_2806C8CF8, &qword_26EF41AE0);
  return sub_26EE14578(v15, &qword_2806C8CF8, &qword_26EF41AE0);
}

uint64_t sub_26EEB8BCC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_26EEB8C50(&v13);
  v4 = v13;
  LOBYTE(v3) = sub_26EF3A3DC();
  result = sub_26EF3962C();
  v6 = v14;
  v7 = v15;
  v8 = v16;
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 24) = v7;
  *(a1 + 40) = v8;
  *(a1 + 56) = v3;
  *(a1 + 64) = v9;
  *(a1 + 72) = v10;
  *(a1 + 80) = v11;
  *(a1 + 88) = v12;
  *(a1 + 96) = 0;
  return result;
}

uint64_t sub_26EEB8C50@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_26EF37CEC();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  VoiceView = type metadata accessor for CreateVoiceView(0);
  v10 = *(VoiceView - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](VoiceView, v12);
  v13 = sub_26EE17094();
  v14._object = 0xEB0000000045554ELL;
  v15 = v13 & 1;
  v14._countAndFlagsBits = 0x49544E4F435F4256;
  countAndFlagsBits = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v14, v15, 0)._countAndFlagsBits;
  sub_26EEB9B08(v2, &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  sub_26EEB9B70(&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  CGSizeMake(countAndFlagsBits, v19, v20);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = v2 + *(VoiceView + 40);
  v30 = *v29;
  v31 = *(v29 + 8);
  LOBYTE(v46) = v30;
  *(&v46 + 1) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  if (v45)
  {
    v32 = 1;
  }

  else
  {
    v33 = v2 + *(VoiceView + 32);
    v34 = *v33;
    v35 = *(v33 + 16);
    v46 = v34;
    v47 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F88, &qword_26EF41A70);
    sub_26EF3AAFC();
    v46 = v45;
    sub_26EF37CCC();
    sub_26EE12538();
    v36 = sub_26EF3B5EC();
    v38 = v37;
    (*(v43 + 8))(v8, v44);

    v39 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v39 = v36 & 0xFFFFFFFFFFFFLL;
    }

    v32 = v39 == 0;
  }

  KeyPath = swift_getKeyPath();
  result = swift_allocObject();
  *(result + 16) = v32;
  *a1 = v22;
  a1[1] = v24;
  a1[2] = v26;
  a1[3] = v28;
  a1[4] = KeyPath;
  a1[5] = sub_26EE274EC;
  a1[6] = result;
  return result;
}

unint64_t sub_26EEB8F68()
{
  result = qword_2806C8CA8;
  if (!qword_2806C8CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8CB0, &unk_26EF41A98);
    sub_26EE793AC();
    sub_26EE154C8(&qword_2806C7020, &qword_2806C7028, &unk_26EF3F090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8CA8);
  }

  return result;
}

uint64_t sub_26EEB9020()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8CC8, &qword_26EF41AB0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = v10 - v4;
  sub_26EEB924C(v10 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8CD0, &unk_26EF41AB8);
  v7 = sub_26EEB9158();
  v10[0] = v6;
  v10[1] = v7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x274382230](v5, v0, OpaqueTypeConformance2);
  return (*(v1 + 8))(v5, v0);
}

unint64_t sub_26EEB9158()
{
  result = qword_2806C8CD8;
  if (!qword_2806C8CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8CD0, &unk_26EF41AB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C73A8, &qword_26EF3E150);
    sub_26EE154C8(&qword_2806C73B0, &qword_2806C73A8, &qword_26EF3E150);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8CD8);
  }

  return result;
}

uint64_t sub_26EEB924C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7388, &unk_26EF3FAE0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v37 - v7;
  v9 = sub_26EF3A13C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C73A8, &qword_26EF3E150);
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v41 = &v37 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8CD0, &unk_26EF41AB8);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v37 - v23;
  if (_UISolariumEnabled())
  {
    (*(v4 + 56))(v21, 1, 1, v3);
    v25 = sub_26EE154C8(&qword_2806C73B0, &qword_2806C73A8, &qword_26EF3E150);
    v43 = v12;
    v44 = v25;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x274382260](v21, v3, OpaqueTypeConformance2);
    sub_26EE14578(v21, &qword_2806C8CD0, &unk_26EF41AB8);
  }

  else
  {
    v27 = sub_26EF3A0DC();
    v37 = &v37;
    MEMORY[0x28223BE20](v27, v28);
    v39 = v8;
    v40 = a1;
    *(&v37 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
    v38 = v12;
    v29 = v3;
    sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080);
    v30 = v41;
    sub_26EF397CC();
    v31 = sub_26EE154C8(&qword_2806C73B0, &qword_2806C73A8, &qword_26EF3E150);
    v32 = v38;
    v33 = v39;
    MEMORY[0x274382230](v30, v38, v31);
    (*(v4 + 16))(v21, v33, v29);
    (*(v4 + 56))(v21, 0, 1, v29);
    v43 = v32;
    v44 = v31;
    v34 = swift_getOpaqueTypeConformance2();
    MEMORY[0x274382260](v21, v29, v34);
    sub_26EE14578(v21, &qword_2806C8CD0, &unk_26EF41AB8);
    (*(v4 + 8))(v33, v29);
    (*(v42 + 8))(v30, v32);
  }

  v35 = sub_26EEB9158();
  MEMORY[0x274382230](v24, v16, v35);
  return sub_26EE14578(v24, &qword_2806C8CD0, &unk_26EF41AB8);
}

uint64_t sub_26EEB9708(uint64_t a1)
{
  VoiceView = type metadata accessor for CreateVoiceView(0);
  v38 = *(VoiceView - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](VoiceView - 8, v4);
  v39 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v35 - v8;
  v10 = sub_26EF39DDC();
  v36 = *(v10 - 8);
  v37 = v10;
  v11 = *(v36 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26EF3883C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EF3934C();
  v21 = sub_26EF3881C();
  v22 = sub_26EF3B44C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_26EE01000, v21, v22, "CreateVoiceView: On appear. Resetting configuration stage.", v23, 2u);
    MEMORY[0x2743842A0](v23, -1, -1);
  }

  (*(v16 + 8))(v20, v15);
  v24 = *(a1 + 16);
  if (*(a1 + 24) == 1)
  {
    v25 = v24;
  }

  else
  {
    v26 = *(a1 + 16);

    sub_26EF3B46C();
    v27 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v24, 0);
    (*(v36 + 8))(v14, v37);
    v25 = v40;
  }

  sub_26EED366C(3);

  v28 = sub_26EF3B30C();
  (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
  v29 = v39;
  sub_26EEB9B08(a1, v39);
  sub_26EF3B2DC();
  v30 = sub_26EF3B2CC();
  v31 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v32 = swift_allocObject();
  v33 = MEMORY[0x277D85700];
  *(v32 + 16) = v30;
  *(v32 + 24) = v33;
  sub_26EEB9B70(v29, v32 + v31);
  sub_26EE2C388(0, 0, v9, &unk_26EF41CC8, v32);
}

uint64_t sub_26EEB9B08(uint64_t a1, uint64_t a2)
{
  VoiceView = type metadata accessor for CreateVoiceView(0);
  (*(*(VoiceView - 8) + 16))(a2, a1, VoiceView);
  return a2;
}

uint64_t sub_26EEB9B70(uint64_t a1, uint64_t a2)
{
  VoiceView = type metadata accessor for CreateVoiceView(0);
  (*(*(VoiceView - 8) + 32))(a2, a1, VoiceView);
  return a2;
}

uint64_t sub_26EEB9BD4()
{
  v1 = *(type metadata accessor for CreateVoiceView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26EEB9708(v2);
}

uint64_t sub_26EEB9C34()
{
  v0[2] = sub_26EF3B2DC();
  v0[3] = sub_26EF3B2CC();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26EE751BC;

  return sub_26EEB9CE0();
}

uint64_t sub_26EEB9CE0()
{
  v1[18] = v0;
  v2 = sub_26EF38A2C();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v5 = sub_26EF3883C();
  v1[22] = v5;
  v6 = *(v5 - 8);
  v1[23] = v6;
  v7 = *(v6 + 64) + 15;
  v1[24] = swift_task_alloc();
  v8 = sub_26EF38AAC();
  v1[25] = v8;
  v9 = *(v8 - 8);
  v1[26] = v9;
  v10 = *(v9 + 64) + 15;
  v1[27] = swift_task_alloc();
  v11 = sub_26EF39DDC();
  v1[28] = v11;
  v12 = *(v11 - 8);
  v1[29] = v12;
  v13 = *(v12 + 64) + 15;
  v1[30] = swift_task_alloc();
  sub_26EF3B2DC();
  v1[31] = sub_26EF3B2CC();
  v15 = sub_26EF3B29C();
  v1[32] = v15;
  v1[33] = v14;

  return MEMORY[0x2822009F8](sub_26EEB9EE8, v15, v14);
}

uint64_t sub_26EEB9EE8()
{
  v1 = *(v0 + 144);
  *(v0 + 272) = *(v1 + 32);
  *(v0 + 280) = *(v1 + 40);
  *(v0 + 360) = *(v1 + 48);
  *(v0 + 288) = type metadata accessor for VoiceBankingAccountInformationModel();
  *(v0 + 296) = sub_26EEB7FE4(&qword_2806C8D00, type metadata accessor for VoiceBankingAccountInformationModel);
  sub_26EF3976C();
  v2 = VoiceBankingAccountInformationModel.iCloudFirstName.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_26EE17094();
    v6._object = 0x800000026EF46330;
    v7 = v5 & 1;
    v6._countAndFlagsBits = 0xD000000000000017;
    TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v6, v7, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_26EF3D070;
    *(v8 + 56) = MEMORY[0x277D837D0];
    v9 = sub_26EE1EFBC();
    *(v8 + 32) = v2;
    *(v8 + 40) = v4;
    v10 = MEMORY[0x277D83C10];
    *(v8 + 96) = MEMORY[0x277D83B88];
    *(v8 + 104) = v10;
    *(v8 + 64) = v9;
    *(v8 + 72) = 0;
  }

  else
  {
    v11 = sub_26EE17094();
    v12._countAndFlagsBits = 0xD000000000000023;
    v12._object = 0x800000026EF46300;
    TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v12, v11 & 1, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D83B88];
    *(v13 + 16) = xmmword_26EF3C6B0;
    v15 = MEMORY[0x277D83C10];
    *(v13 + 56) = v14;
    *(v13 + 64) = v15;
    *(v13 + 32) = 0;
  }

  v16 = sub_26EF3B10C();
  v18 = v17;

  *(v0 + 304) = v16;
  *(v0 + 312) = v18;
  result = sub_26EF3899C();
  *(v0 + 320) = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v20 = *(v0 + 144);
    v21 = *(v20 + 16);
    if (*(v20 + 24) == 1)
    {
      v22 = v21;
    }

    else
    {
      v24 = *(v0 + 232);
      v23 = *(v0 + 240);
      v25 = *(v0 + 224);

      sub_26EF3B46C();
      v26 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v21, 0);
      (*(v24 + 8))(v23, v25);
      v22 = *(v0 + 128);
    }

    *(v0 + 328) = v22;
    v27 = swift_task_alloc();
    *(v0 + 336) = v27;
    *v27 = v0;
    v27[1] = sub_26EEBA228;

    return VoiceBankingSession.fetchVoices()();
  }

  return result;
}

uint64_t sub_26EEBA228(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 336);
  v9 = *v2;
  *(v3 + 344) = a1;
  *(v3 + 352) = v1;

  if (v1)
  {
    v5 = *(v3 + 256);
    v6 = *(v3 + 264);
    v7 = sub_26EEBA8A0;
  }

  else
  {

    v5 = *(v3 + 256);
    v6 = *(v3 + 264);
    v7 = sub_26EEBA344;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_26EEBA344()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 248);

  v3 = *(v1 + 16);
  v4 = *(v0 + 344);
  if (v3)
  {
    v5 = *(v0 + 208);
    v83 = MEMORY[0x277D84F90];
    sub_26EEBDD80(0, v3, 0);
    v6 = v83;
    v7 = *(v5 + 16);
    v5 += 16;
    v8 = v4 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v81 = *(v5 + 56);
    v82 = v7;
    v9 = (v5 - 8);
    do
    {
      v10 = *(v0 + 216);
      v11 = *(v0 + 200);
      v82(v10, v8, v11);
      v12 = sub_26EF38A7C();
      v14 = v13;
      (*v9)(v10, v11);
      v16 = *(v83 + 16);
      v15 = *(v83 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_26EEBDD80((v15 > 1), v16 + 1, 1);
      }

      *(v83 + 16) = v16 + 1;
      v17 = v83 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v8 += v81;
      --v3;
    }

    while (v3);
    v18 = *(v0 + 344);
  }

  else
  {
    v20 = *(v0 + 344);

    v6 = MEMORY[0x277D84F90];
  }

  v21 = 0;
  v22 = MEMORY[0x277D837D0];
  while (2)
  {
    v23 = *(v6 + 16);
    if (v21)
    {
      v24 = -v23;
      v25 = -1;
      v26 = (v6 + 40);
      while (v24 + v25 != -1)
      {
        if (++v25 >= *(v6 + 16))
        {
          __break(1u);
          return result;
        }

        v27 = v26 + 2;
        v28 = *v26;
        *(v0 + 64) = *(v26 - 1);
        *(v0 + 72) = v28;
        *(v0 + 136) = v21;

        *(v0 + 80) = sub_26EF3B7FC();
        *(v0 + 88) = v29;
        sub_26EE12538();
        v30 = sub_26EF3B62C();

        v26 = v27;
        if (v30)
        {
          goto LABEL_24;
        }
      }

LABEL_29:
    }

    else
    {
      v31 = v23 + 1;
      v32 = (v6 + 40);
      while (1)
      {
        if (!--v31)
        {
          goto LABEL_28;
        }

        v34 = *(v0 + 304);
        v33 = *(v0 + 312);
        v35 = *(v32 - 1);
        v36 = *v32;
        v37 = sub_26EF3B11C();
        v39 = v38;
        if (v37 == sub_26EF3B11C() && v39 == v40)
        {
          break;
        }

        v32 += 2;
        v42 = sub_26EF3B82C();

        if (v42)
        {
          goto LABEL_24;
        }
      }

LABEL_24:
      if (v21 != *(v0 + 320))
      {
        if (!__OFADD__(v21++, 1))
        {
          continue;
        }

        __break(1u);
LABEL_28:
        v21 = 0;
        goto LABEL_29;
      }

      v21 = 0;
    }

    break;
  }

  v44 = *(v0 + 288);
  v45 = *(v0 + 296);
  v46 = *(v0 + 360);
  v47 = *(v0 + 272);
  v48 = *(v0 + 280);
  sub_26EF3976C();
  v49 = VoiceBankingAccountInformationModel.iCloudFirstName.getter();
  v51 = v50;

  v52 = *(v0 + 312);
  v53 = *(v0 + 144);
  if (v51)
  {
    v54 = sub_26EE17094();
    v55._object = 0x800000026EF46330;
    v56 = v54 & 1;
    v55._countAndFlagsBits = 0xD000000000000017;
    TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v55, v56, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_26EF3D070;
    *(v57 + 56) = v22;
    v58 = sub_26EE1EFBC();
    *(v57 + 32) = v49;
    *(v57 + 40) = v51;
    v59 = MEMORY[0x277D83C10];
    *(v57 + 96) = MEMORY[0x277D83B88];
    *(v57 + 104) = v59;
    *(v57 + 64) = v58;
    *(v57 + 72) = v21;
    v60 = sub_26EF3B10C();
    v62 = v61;

    v63 = (v53 + *(type metadata accessor for CreateVoiceView(0) + 32));
    v64 = *v63;
    v65 = *(v63 + 2);
    *(v0 + 40) = v64;
    *(v0 + 56) = v65;
    *(v0 + 112) = v60;
    *(v0 + 120) = v62;
  }

  else
  {
    v66 = sub_26EE17094();
    v67._countAndFlagsBits = 0xD000000000000023;
    v67._object = 0x800000026EF46300;
    TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v67, v66 & 1, v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_26EF3C6B0;
    v69 = MEMORY[0x277D83C10];
    *(v68 + 56) = MEMORY[0x277D83B88];
    *(v68 + 64) = v69;
    *(v68 + 32) = v21;
    v70 = sub_26EF3B10C();
    v72 = v71;

    v73 = (v53 + *(type metadata accessor for CreateVoiceView(0) + 32));
    v74 = *v73;
    v75 = *(v73 + 2);
    *(v0 + 16) = v74;
    *(v0 + 32) = v75;
    *(v0 + 96) = v70;
    *(v0 + 104) = v72;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F88, &qword_26EF41A70);
  sub_26EF3AB0C();

  v76 = *(v0 + 240);
  v77 = *(v0 + 216);
  v78 = *(v0 + 192);
  v79 = *(v0 + 168);

  v80 = *(v0 + 8);

  return v80();
}

uint64_t sub_26EEBA8A0()
{
  v1 = v0[44];
  v2 = v0[41];
  v3 = v0[39];
  v4 = v0[31];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];

  v8 = sub_26EE27DAC();
  (*(v6 + 16))(v5, v8, v7);
  v9 = v1;
  v10 = sub_26EF3881C();
  v11 = sub_26EF3B45C();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[44];
  if (v12)
  {
    v15 = v0[20];
    v14 = v0[21];
    v16 = v0[19];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    (*(v15 + 104))(v14, *MEMORY[0x277D704D8], v16);
    sub_26EF38A4C();
    sub_26EEB7FE4(&unk_2806C9CD0, MEMORY[0x277D70518]);
    swift_allocError();
    sub_26EF389BC();
    (*(v15 + 8))(v14, v16);
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v19;
    *v18 = v19;
    _os_log_impl(&dword_26EE01000, v10, v11, "CreateVoiceView: Could not fetch voices. %@", v17, 0xCu);
    sub_26EE14578(v18, &qword_2806C7140, &unk_26EF3E420);
    MEMORY[0x2743842A0](v18, -1, -1);
    MEMORY[0x2743842A0](v17, -1, -1);
  }

  else
  {
  }

  (*(v0[23] + 8))(v0[24], v0[22]);
  v20 = v0[30];
  v21 = v0[27];
  v22 = v0[24];
  v23 = v0[21];

  v24 = v0[1];

  return v24();
}

uint64_t sub_26EEBAB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8D30, &qword_26EF41B80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8DD8, &qword_26EF41CB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v36 - v12;
  v14 = (a1 + *(type metadata accessor for CreateVoiceView(0) + 40));
  v15 = *v14;
  v16 = *(v14 + 1);
  LOBYTE(v41._countAndFlagsBits) = v15;
  v41._object = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  if (v40 == 1)
  {
    v37 = sub_26EF39F5C();
    CGSizeMake(v37, v17, v18);
    v19 = sub_26EE17094();
    v20._object = 0x800000026EF46370;
    v21 = v19 & 1;
    v20._countAndFlagsBits = 0xD000000000000019;
    v41 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v20, v21, 0);
    sub_26EE12538();
    v22 = sub_26EF3A5DC();
    v24 = v23;
    v38 = a2;
    v39 = v4;
    v26 = v25;
    v27 = sub_26EF3A5AC();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    sub_26EE12ABC(v22, v24, v26 & 1);

    v31 &= 1u;
    LOBYTE(v41._countAndFlagsBits) = v31;
    sub_26EE13B20(v27, v29, v31);

    sub_26EE12ABC(v27, v29, v31);

    countAndFlagsBits = v41._countAndFlagsBits;
    *v13 = v37;
    *(v13 + 1) = 0;
    v13[16] = 1;
    *(v13 + 3) = v27;
    *(v13 + 4) = v29;
    v13[40] = countAndFlagsBits;
    *(v13 + 6) = v33;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8DE0, &qword_26EF41CB8);
    sub_26EE154C8(&qword_2806C8DE8, &qword_2806C8DE0, &qword_26EF41CB8);
    sub_26EEBE8BC(&qword_2806C8D78, &qword_2806C8D30, &qword_26EF41B80, sub_26EEBE940);
    return sub_26EF3A06C();
  }

  else
  {
    sub_26EEBAEF8(v8);
    sub_26EE13B88(v8, v13, &qword_2806C8D30, &qword_26EF41B80);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8DE0, &qword_26EF41CB8);
    sub_26EE154C8(&qword_2806C8DE8, &qword_2806C8DE0, &qword_26EF41CB8);
    sub_26EEBE8BC(&qword_2806C8D78, &qword_2806C8D30, &qword_26EF41B80, sub_26EEBE940);
    sub_26EF3A06C();
    return sub_26EE14578(v8, &qword_2806C8D30, &qword_26EF41B80);
  }
}

uint64_t sub_26EEBAEF8@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v41 = type metadata accessor for CustomTextFieldStyle(0);
  v1 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41, v2);
  v4 = (&v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8D08, &qword_26EF41B20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8D10, &qword_26EF41B28);
  v12 = *(v11 - 8);
  v42 = v11;
  v43 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v41 - v15;
  sub_26EEBB348(v10);
  *v4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B30, &qword_26EF3D210);
  swift_storeEnumTagMultiPayload();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8D18, &qword_26EF41B68);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8D20, &unk_26EF41B70);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7F40, &unk_26EF3F938);
  v20 = sub_26EE154C8(&qword_2806C7F48, &qword_2806C7F40, &unk_26EF3F938);
  v46 = v19;
  v47 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v18;
  v47 = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeConformance2();
  v46 = v17;
  v47 = MEMORY[0x277D837D0];
  v48 = v22;
  v49 = MEMORY[0x277D837F8];
  v23 = swift_getOpaqueTypeConformance2();
  v24 = sub_26EEB7FE4(&qword_2806C8D28, type metadata accessor for CustomTextFieldStyle);
  v25 = v41;
  sub_26EF3A72C();
  sub_26EEBDDC0(v4);
  (*(v6 + 8))(v10, v5);
  v26 = sub_26EE17094();
  v27._object = 0x800000026EF46350;
  v28 = v26 & 1;
  v27._countAndFlagsBits = 0xD000000000000016;
  v45 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v27, v28, 0);
  v46 = v5;
  v47 = v25;
  v48 = v23;
  v49 = v24;
  swift_getOpaqueTypeConformance2();
  sub_26EE12538();
  v29 = v44;
  v30 = v42;
  sub_26EF3A78C();

  (*(v43 + 8))(v16, v30);
  LOBYTE(v23) = sub_26EF3A3CC();
  sub_26EF3962C();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8D30, &qword_26EF41B80);
  v40 = v29 + *(result + 36);
  *v40 = v23;
  *(v40 + 8) = v32;
  *(v40 + 16) = v34;
  *(v40 + 24) = v36;
  *(v40 + 32) = v38;
  *(v40 + 40) = 0;
  return result;
}

uint64_t sub_26EEBB348@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  VoiceView = type metadata accessor for CreateVoiceView(0);
  v3 = VoiceView - 8;
  v53 = *(VoiceView - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](VoiceView, v4);
  v51 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F40, &unk_26EF3F938);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8D20, &unk_26EF41B70);
  v13 = *(v12 - 8);
  v47 = v12;
  v48 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8D18, &qword_26EF41B68);
  v19 = *(v18 - 8);
  v49 = v18;
  v50 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v46 = v42 - v22;
  v23 = sub_26EE17094();
  v24._object = 0xED0000454D414E5FLL;
  v25 = v23 & 1;
  v24._countAndFlagsBits = 0x5245544E455F4256;
  v61 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v24, v25, 0);
  v26 = (v1 + *(v3 + 40));
  v27 = *v26;
  v44 = v26[1];
  v45 = v27;
  v43 = v26[2];
  v58 = v27;
  v59 = v44;
  v60 = v43;
  v42[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F88, &qword_26EF41A70);
  sub_26EF3AB1C();
  sub_26EE12538();
  sub_26EF3AEFC();
  v28 = sub_26EE154C8(&qword_2806C7F48, &qword_2806C7F40, &unk_26EF3F938);
  sub_26EF3A94C();
  (*(v7 + 8))(v11, v6);
  v29 = v1 + *(v3 + 56);
  v30 = *v29;
  v31 = *(v29 + 8);
  LOBYTE(v29) = *(v29 + 16);
  LOBYTE(v55) = v30;
  v56 = v31;
  LOBYTE(v57) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F90, &qword_26EF3F978);
  sub_26EF3966C();
  v55 = v6;
  v56 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v46;
  v33 = v47;
  sub_26EF3A8CC();

  v35 = v17;
  v36 = v33;
  (*(v48 + 8))(v35, v33);
  v55 = v45;
  v56 = v44;
  v57 = v43;
  sub_26EF3AAFC();
  v55 = v58;
  v56 = v59;
  v37 = v51;
  sub_26EEB9B08(v1, v51);
  v38 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v39 = swift_allocObject();
  sub_26EEB9B70(v37, v39 + v38);
  v58 = v36;
  v59 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v40 = v49;
  sub_26EF3A8FC();

  return (*(v50 + 8))(v34, v40);
}

uint64_t sub_26EEBB87C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_26EF3806C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  *&v24 = *a1;
  *(&v24 + 1) = v11;
  sub_26EF3867C();
  sub_26EEBEDB8();
  sub_26EEB7FE4(&qword_2806C8DD0, MEMORY[0x277D853D0]);
  LOBYTE(a1) = sub_26EF3B06C();
  result = (*(v5 + 8))(v9, v4);
  if (a1)
  {
    *&v24 = v10;
    *(&v24 + 1) = v11;
    v28 = 10;
    v29 = 0xE100000000000000;
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_26EE12538();
    v13 = sub_26EF3B5FC();
    v15 = v14;
    VoiceView = type metadata accessor for CreateVoiceView(0);
    v17 = (a2 + *(VoiceView + 32));
    v18 = *v17;
    v19 = *(v17 + 2);
    v24 = v18;
    v25 = v19;
    v28 = v13;
    v29 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F88, &qword_26EF41A70);
    sub_26EF3AB0C();
    v20 = (a2 + *(VoiceView + 48));
    v21 = *v20;
    v22 = *(v20 + 1);
    LOBYTE(v20) = v20[16];
    LOBYTE(v24) = v21;
    *(&v24 + 1) = v22;
    LOBYTE(v25) = v20;
    LOBYTE(v28) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F90, &qword_26EF3F978);
    return sub_26EF3965C();
  }

  return result;
}

uint64_t objectdestroyTm_14()
{
  VoiceView = type metadata accessor for CreateVoiceView(0);
  v2 = *(*(VoiceView - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(VoiceView - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  sub_26EE05C9C(*(v5 + 16), *(v5 + 24));
  v7 = *(v0 + v3 + 32);
  v8 = *(v0 + v3 + 40);
  v9 = *(v0 + v3 + 48);
  sub_26EE05CA8();
  v10 = (v0 + v3 + VoiceView[7]);
  v11 = *v10;

  v12 = *(v10 + 1);

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DA8, &unk_26EF41A60) + 32);
  v14 = sub_26EF38A4C();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(&v10[v13], 1, v14))
  {
    (*(v15 + 8))(&v10[v13], v14);
  }

  v16 = v5 + VoiceView[8];
  v17 = *(v16 + 8);

  v18 = *(v16 + 16);

  v19 = *(v5 + VoiceView[9] + 8);

  v20 = *(v5 + VoiceView[10] + 8);

  v21 = (v5 + VoiceView[11]);
  v22 = *v21;

  v23 = *(v21 + 1);

  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830) + 32);
  v25 = sub_26EF3872C();
  (*(*(v25 - 8) + 8))(&v21[v24], v25);
  v26 = *(v5 + VoiceView[12] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EEBBCE8()
{
  v1 = *(type metadata accessor for CreateVoiceView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_26EEBBD44();
}

uint64_t sub_26EEBBD44()
{
  v1 = v0;
  VoiceView = type metadata accessor for CreateVoiceView(0);
  v3 = VoiceView - 8;
  v4 = *(VoiceView - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](VoiceView, v6);
  v7 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v22[-v11];
  v13 = v1 + *(v3 + 48);
  v14 = *v13;
  v15 = *(v13 + 8);
  v22[16] = v14;
  v23 = v15;
  v22[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB0C();
  v16 = sub_26EF3B30C();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  sub_26EEB9B08(v1, v7);
  sub_26EF3B2DC();
  v17 = sub_26EF3B2CC();
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v17;
  *(v19 + 24) = v20;
  sub_26EEB9B70(v7, v19 + v18);
  sub_26EE2C388(0, 0, v12, &unk_26EF41B90, v19);
}

uint64_t sub_26EEBBF48(uint64_t a1)
{
  VoiceView = type metadata accessor for CreateVoiceView(0);
  v3 = *(VoiceView - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](VoiceView - 8, v5);
  v6 = sub_26EE17094() & 1;
  v7._countAndFlagsBits = 0x4B4341425F4256;
  v7._object = 0xE700000000000000;
  v11 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v7, v6, 0);
  sub_26EEB9B08(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_26EEB9B70(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_26EE12538();
  return sub_26EF3AB7C();
}

uint64_t sub_26EEBC094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a4;
  v5 = sub_26EF38A2C();
  v4[27] = v5;
  v6 = *(v5 - 8);
  v4[28] = v6;
  v7 = *(v6 + 64) + 15;
  v4[29] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0) - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v9 = sub_26EF3883C();
  v4[32] = v9;
  v10 = *(v9 - 8);
  v4[33] = v10;
  v11 = *(v10 + 64) + 15;
  v4[34] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20) - 8) + 64) + 15;
  v4[35] = swift_task_alloc();
  v13 = sub_26EF38CDC();
  v4[36] = v13;
  v14 = *(v13 - 8);
  v4[37] = v14;
  v15 = *(v14 + 64) + 15;
  v4[38] = swift_task_alloc();
  v16 = sub_26EF39DDC();
  v4[39] = v16;
  v17 = *(v16 - 8);
  v4[40] = v17;
  v18 = *(v17 + 64) + 15;
  v4[41] = swift_task_alloc();
  v19 = sub_26EF37EDC();
  v4[42] = v19;
  v20 = *(v19 - 8);
  v4[43] = v20;
  v21 = *(v20 + 64) + 15;
  v4[44] = swift_task_alloc();
  sub_26EF3B2DC();
  v4[45] = sub_26EF3B2CC();
  v23 = sub_26EF3B29C();
  v4[46] = v23;
  v4[47] = v22;

  return MEMORY[0x2822009F8](sub_26EEBC374, v23, v22);
}

uint64_t sub_26EEBC374()
{
  v1 = *(v0 + 208);
  v2 = *(v1 + 16);
  *(v0 + 384) = v2;
  v3 = *(v1 + 24);
  *(v0 + 466) = v3;
  if (v3 == 1)
  {
    v4 = v2;
  }

  else
  {
    v6 = *(v0 + 320);
    v5 = *(v0 + 328);
    v7 = *(v0 + 312);

    sub_26EF3B46C();
    v8 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v2, 0);
    (*(v6 + 8))(v5, v7);
    v4 = *(v0 + 168);
    v1 = *(v0 + 208);
  }

  *(v0 + 392) = v4;
  VoiceView = type metadata accessor for CreateVoiceView(0);
  *(v0 + 400) = VoiceView;
  v10 = (v1 + *(VoiceView + 32));
  v11 = *v10;
  v12 = *(v10 + 2);
  *(v0 + 48) = v11;
  *(v0 + 64) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7F88, &qword_26EF41A70);
  sub_26EF3AAFC();
  v13 = *(v0 + 120);
  v14 = *(v0 + 128);
  *(v0 + 408) = v14;
  if (v3)
  {
    v15 = v2;
  }

  else
  {
    v17 = *(v0 + 320);
    v16 = *(v0 + 328);
    v18 = *(v0 + 312);

    sub_26EF3B46C();
    v19 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v2, 0);
    (*(v17 + 8))(v16, v18);
    v15 = *(v0 + 176);
  }

  v21 = *(v0 + 296);
  v20 = *(v0 + 304);
  v22 = *(v0 + 288);
  v23 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationLocale;
  swift_beginAccess();
  (*(v21 + 16))(v20, &v15[v23], v22);

  v24 = sub_26EF38CAC();
  v26 = v25;
  *(v0 + 416) = v25;
  (*(v21 + 8))(v20, v22);
  v27 = swift_task_alloc();
  *(v0 + 424) = v27;
  *v27 = v0;
  v27[1] = sub_26EEBC664;
  v28 = *(v0 + 352);

  return VoiceBankingSession.createVoice(named:localeID:)(v28, v13, v14, v24, v26);
}

uint64_t sub_26EEBC664()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *v1;
  v2[54] = v0;

  v5 = v2[52];
  v6 = v2[51];
  v7 = v2[49];
  if (v0)
  {
    v8 = v2[52];

    v9 = v2[46];
    v10 = v2[47];
    v11 = sub_26EEBCF14;
  }

  else
  {
    v12 = v2[51];

    v9 = v2[46];
    v10 = v2[47];
    v11 = sub_26EEBC7EC;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_26EEBC7EC()
{
  v1 = (*(v0 + 208) + *(*(v0 + 400) + 40));
  v2 = *v1;
  v3 = *(v1 + 1);
  *(v0 + 152) = v2;
  v4 = *(v0 + 466);
  v5 = *(v0 + 384);
  *(v0 + 160) = v3;
  *(v0 + 465) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB0C();
  if (v4 == 1)
  {
    v6 = v5;
  }

  else
  {
    v7 = *(v0 + 384);
    v9 = *(v0 + 320);
    v8 = *(v0 + 328);
    v10 = *(v0 + 312);

    sub_26EF3B46C();
    v11 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v7, 0);
    (*(v9 + 8))(v8, v10);
    v6 = *(v0 + 192);
  }

  v12 = *(v0 + 344);
  v13 = *(v0 + 336);
  v14 = *(v0 + 280);
  v15 = *(v0 + 208);
  (*(v12 + 16))(v14, *(v0 + 352), v13);
  (*(v12 + 56))(v14, 0, 1, v13);
  v16 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceID;
  swift_beginAccess();
  sub_26EE65A2C(v14, v6 + v16);
  swift_endAccess();

  if (*v15)
  {
    v17 = *v15;

    v46 = VoiceBankingNavigationModel.itemPath.modify((v0 + 16));
    v19 = v18;
    v20 = *v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v19 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_26EEB3AD4(0, *(v20 + 2) + 1, 1, v20);
      *v19 = v20;
    }

    v23 = *(v20 + 2);
    v22 = *(v20 + 3);
    if (v23 >= v22 >> 1)
    {
      v20 = sub_26EEB3AD4((v22 > 1), v23 + 1, 1, v20);
      *v19 = v20;
    }

    v24 = *(v0 + 264);
    v25 = *(v0 + 272);
    v26 = *(v0 + 256);
    *(v20 + 2) = v23 + 1;
    v27 = &v20[16 * v23];
    *(v27 + 4) = 1;
    v27[40] = 1;
    (v46)(v0 + 16, 0);

    v28 = sub_26EE27DAC();
    (*(v24 + 16))(v25, v28, v26);
    v29 = sub_26EF3881C();
    v30 = sub_26EF3B47C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_26EE01000, v29, v30, "CreateVoiceView: Setting up session.", v31, 2u);
      MEMORY[0x2743842A0](v31, -1, -1);
    }

    v32 = *(v0 + 466);
    v33 = *(v0 + 384);
    v35 = *(v0 + 264);
    v34 = *(v0 + 272);
    v36 = *(v0 + 256);

    (*(v35 + 8))(v34, v36);
    if (v32 == 1)
    {
      v37 = v33;
    }

    else
    {
      v40 = *(v0 + 384);
      v42 = *(v0 + 320);
      v41 = *(v0 + 328);
      v43 = *(v0 + 312);

      sub_26EF3B46C();
      v44 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v40, 0);
      (*(v42 + 8))(v41, v43);
      v37 = *(v0 + 200);
    }

    *(v0 + 440) = v37;
    v45 = swift_task_alloc();
    *(v0 + 448) = v45;
    *v45 = v0;
    v45[1] = sub_26EEBCCD8;

    return VoiceBankingSession.setUpSession()();
  }

  else
  {
    v38 = *(*(v0 + 208) + 8);
    type metadata accessor for VoiceBankingNavigationModel();
    sub_26EEB7FE4(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EEBCCD8()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v4 = *(*v1 + 440);
  v5 = *v1;
  *(*v1 + 456) = v0;

  v6 = *(v2 + 376);
  v7 = *(v2 + 368);
  if (v0)
  {
    v8 = sub_26EEBD1E8;
  }

  else
  {
    v8 = sub_26EEBCE2C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_26EEBCE2C()
{
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[42];
  v4 = v0[43];

  (*(v4 + 8))(v2, v3);
  v5 = v0[44];
  v6 = v0[41];
  v7 = v0[38];
  v9 = v0[34];
  v8 = v0[35];
  v11 = v0[30];
  v10 = v0[31];
  v12 = v0[29];

  v13 = v0[1];

  return v13();
}

uint64_t sub_26EEBCF14()
{
  v1 = *(v0 + 360);

  v2 = *(v0 + 432);
  v3 = *(v0 + 384);
  if (*(v0 + 466) == 1)
  {
    v4 = v3;
  }

  else
  {
    v6 = *(v0 + 320);
    v5 = *(v0 + 328);
    v7 = *(v0 + 312);
    v8 = *(v0 + 384);

    sub_26EF3B46C();
    v9 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v3, 0);
    (*(v6 + 8))(v5, v7);
    v4 = *(v0 + 184);
  }

  v10 = *(v0 + 400);
  v12 = *(v0 + 240);
  v11 = *(v0 + 248);
  v14 = *(v0 + 224);
  v13 = *(v0 + 232);
  v16 = *(v0 + 208);
  v15 = *(v0 + 216);
  sub_26EED366C(3);

  v17 = (v16 + *(v10 + 40));
  v18 = *v17;
  v19 = *(v17 + 1);
  *(v0 + 136) = v18;
  *(v0 + 144) = v19;
  *(v0 + 464) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB0C();
  (*(v14 + 104))(v13, *MEMORY[0x277D704D8], v15);
  sub_26EF389BC();
  (*(v14 + 8))(v13, v15);
  v20 = sub_26EF38A4C();
  (*(*(v20 - 8) + 56))(v11, 0, 1, v20);
  v21 = *(v10 + 28);
  sub_26EE13B88(v11, v12, &qword_2806C9BE0, &qword_26EF3D3C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DA8, &unk_26EF41A60);
  sub_26EF3AC3C();

  sub_26EE14578(v11, &qword_2806C9BE0, &qword_26EF3D3C0);
  v22 = *(v0 + 352);
  v23 = *(v0 + 328);
  v24 = *(v0 + 304);
  v26 = *(v0 + 272);
  v25 = *(v0 + 280);
  v28 = *(v0 + 240);
  v27 = *(v0 + 248);
  v29 = *(v0 + 232);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_26EEBD1E8()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 336);
  v4 = *(v0 + 344);

  (*(v4 + 8))(v2, v3);
  v5 = *(v0 + 456);
  v6 = *(v0 + 384);
  if (*(v0 + 466) == 1)
  {
    v7 = v6;
  }

  else
  {
    v9 = *(v0 + 320);
    v8 = *(v0 + 328);
    v10 = *(v0 + 312);
    v11 = *(v0 + 384);

    sub_26EF3B46C();
    v12 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v6, 0);
    (*(v9 + 8))(v8, v10);
    v7 = *(v0 + 184);
  }

  v13 = *(v0 + 400);
  v15 = *(v0 + 240);
  v14 = *(v0 + 248);
  v17 = *(v0 + 224);
  v16 = *(v0 + 232);
  v19 = *(v0 + 208);
  v18 = *(v0 + 216);
  sub_26EED366C(3);

  v20 = (v19 + *(v13 + 40));
  v21 = *v20;
  v22 = *(v20 + 1);
  *(v0 + 136) = v21;
  *(v0 + 144) = v22;
  *(v0 + 464) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB0C();
  (*(v17 + 104))(v16, *MEMORY[0x277D704D8], v18);
  sub_26EF389BC();
  (*(v17 + 8))(v16, v18);
  v23 = sub_26EF38A4C();
  (*(*(v23 - 8) + 56))(v14, 0, 1, v23);
  v24 = *(v13 + 28);
  sub_26EE13B88(v14, v15, &qword_2806C9BE0, &qword_26EF3D3C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DA8, &unk_26EF41A60);
  sub_26EF3AC3C();

  sub_26EE14578(v14, &qword_2806C9BE0, &qword_26EF3D3C0);
  v25 = *(v0 + 352);
  v26 = *(v0 + 328);
  v27 = *(v0 + 304);
  v29 = *(v0 + 272);
  v28 = *(v0 + 280);
  v31 = *(v0 + 240);
  v30 = *(v0 + 248);
  v32 = *(v0 + 232);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_26EEBD4E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for VoiceBankingNavigationModel();
  sub_26EEB7FE4(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);
  *a2 = sub_26EF39C1C();
  *(a2 + 8) = v4;
  type metadata accessor for VoiceBankingSession();
  sub_26EEB7FE4(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  *(a2 + 16) = sub_26EF3973C();
  *(a2 + 24) = v5 & 1;
  *(a2 + 32) = sub_26EEB802C;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  VoiceView = type metadata accessor for CreateVoiceView(0);
  sub_26EE14D98(a1, a2 + VoiceView[7], &qword_2806C6DA8, &unk_26EF41A60);
  v7 = a2 + VoiceView[8];
  sub_26EF3AAEC();
  *v7 = v14;
  *(v7 + 16) = v15;
  v8 = a2 + VoiceView[9];
  sub_26EF3AAEC();
  *v8 = v14;
  *(v8 + 8) = *(&v14 + 1);
  v9 = a2 + VoiceView[10];
  sub_26EF3AAEC();
  *v9 = v14;
  *(v9 + 8) = *(&v14 + 1);
  sub_26EEB8078(a2 + VoiceView[11]);
  v10 = a2 + VoiceView[12];
  result = sub_26EF3967C();
  *v10 = result & 1;
  *(v10 + 8) = v12;
  *(v10 + 16) = v13 & 1;
  return result;
}

uint64_t sub_26EEBD6E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26EF39DDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6B30, &qword_26EF3D210);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = (&v19 - v13);
  sub_26EE13B88(v2, &v19 - v13, &qword_2806C6B30, &qword_26EF3D210);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_26EF396DC();
    return (*(*(v15 - 8) + 32))(a1, v14, v15);
  }

  else
  {
    v17 = *v14;
    sub_26EF3B46C();
    v18 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v4);
  }
}

uint64_t sub_26EEBD8E8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26EF396DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8DB8, &qword_26EF41C90);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v34 - v16;
  v18 = *(sub_26EF39B7C() + 20);
  v19 = *MEMORY[0x277CE0118];
  v20 = sub_26EF39ECC();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
  __asm { FMOV            V0.2D, #12.0 }

  *v17 = _Q0;
  sub_26EF3A9BC();
  sub_26EF3AA2C();

  v26 = &v17[*(v13 + 60)];
  sub_26EF3975C();

  *&v17[*(v13 + 64)] = 256;
  sub_26EEBD6E8(v11);
  (*(v3 + 104))(v8, *MEMORY[0x277CDF3C0], v2);
  v27 = sub_26EF396CC();
  v28 = *(v3 + 8);
  v28(v8, v2);
  v28(v11, v2);
  v29 = objc_opt_self();
  v30 = &selRef_secondarySystemGroupedBackgroundColor;
  if ((v27 & 1) == 0)
  {
    v30 = &selRef_systemGroupedBackgroundColor;
  }

  v31 = [v29 *v30];
  v32 = sub_26EF3AA5C();
  sub_26EE14D98(v17, a1, &qword_2806C8DB8, &qword_26EF41C90);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8DC0, &qword_26EF41C98);
  *(a1 + *(result + 36)) = v32;
  return result;
}

uint64_t sub_26EEBDBA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26EF3A3BC();
  sub_26EF3962C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8D38, &qword_26EF41B98);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8D40, &qword_26EF41BA0) + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  v15 = sub_26EF3AE4C();
  v17 = v16;
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8D48, &qword_26EF41BA8) + 36);
  sub_26EEBD8E8(v18);
  v19 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8D50, &qword_26EF41BB0) + 36));
  *v19 = v15;
  v19[1] = v17;
  v20 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8D58, &qword_26EF41BB8) + 36));
  v21 = *(sub_26EF39B7C() + 20);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_26EF39ECC();
  (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
  __asm { FMOV            V0.2D, #12.0 }

  *v20 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8358, &qword_26EF40040);
  *&v20[*(result + 36)] = 256;
  return result;
}

char *sub_26EEBDD80(char *a1, int64_t a2, char a3)
{
  result = sub_26EEBEE0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26EEBDDC0(uint64_t a1)
{
  v2 = type metadata accessor for CustomTextFieldStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26EEBDE1C(uint64_t a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for CreateVoiceView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_26EEBB87C(a2, v5);
}

uint64_t sub_26EEBDE90()
{
  v2 = *(type metadata accessor for CreateVoiceView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE05D7C;

  return sub_26EEBC094(v4, v5, v6, v0 + v3);
}

uint64_t sub_26EEBDFA4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DA8, &unk_26EF41A60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[7];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[8] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[11];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_26EEBE0FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DA8, &unk_26EF41A60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[7];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[11];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_26EEBE240()
{
  sub_26EE1F73C();
  if (v0 <= 0x3F)
  {
    sub_26EEBE684(319, &qword_2806C66B0, type metadata accessor for VoiceBankingSession, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_26EEBE3D4();
      if (v2 <= 0x3F)
      {
        sub_26EEBE468();
        if (v3 <= 0x3F)
        {
          sub_26EE78014(319, &qword_2806C7FA8);
          if (v4 <= 0x3F)
          {
            sub_26EE78014(319, &qword_2806C7350);
            if (v5 <= 0x3F)
            {
              sub_26EEBE684(319, &qword_2806C8070, MEMORY[0x277CE7670], MEMORY[0x277CE11F8]);
              if (v6 <= 0x3F)
              {
                sub_26EE78060();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_26EEBE3D4()
{
  if (!qword_2806C8D60)
  {
    type metadata accessor for VoiceBankingAccountInformationModel();
    sub_26EEB7FE4(&qword_2806C8D00, type metadata accessor for VoiceBankingAccountInformationModel);
    v0 = sub_26EF3978C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C8D60);
    }
  }
}

void sub_26EEBE468()
{
  if (!qword_2806C8D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9BE0, &qword_26EF3D3C0);
    v0 = sub_26EF3AC9C();
    if (!v1)
    {
      atomic_store(v0, &qword_2806C8D68);
    }
  }
}

uint64_t sub_26EEBE4E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6BD0, qword_26EF3D350);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26EEBE56C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6BD0, qword_26EF3D350);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_26EEBE5E8()
{
  sub_26EEBE684(319, &qword_2806C6BD8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26EEBE684(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26EEBE6EC()
{
  result = qword_2806C8D70;
  if (!qword_2806C8D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8CE0, &qword_26EF41AC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8C80, &qword_26EF41A80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8CC0, &qword_26EF41AA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8C78, &qword_26EF41A78);
    sub_26EE154C8(&qword_2806C8CB8, &qword_2806C8C78, &qword_26EF41A78);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8CC8, &qword_26EF41AB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8CD0, &unk_26EF41AB8);
    sub_26EEB9158();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8D70);
  }

  return result;
}

uint64_t sub_26EEBE8BC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26EEBE940()
{
  result = qword_2806C8D80;
  if (!qword_2806C8D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8D88, &qword_26EF41C88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8D08, &qword_26EF41B20);
    type metadata accessor for CustomTextFieldStyle(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8D18, &qword_26EF41B68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8D20, &unk_26EF41B70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7F40, &unk_26EF3F938);
    sub_26EE154C8(&qword_2806C7F48, &qword_2806C7F40, &unk_26EF3F938);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26EEB7FE4(&qword_2806C8D28, type metadata accessor for CustomTextFieldStyle);
    swift_getOpaqueTypeConformance2();
    sub_26EEB7FE4(&qword_2806C6AD8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8D80);
  }

  return result;
}

unint64_t sub_26EEBEB90()
{
  result = qword_2806C8D90;
  if (!qword_2806C8D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8D58, &qword_26EF41BB8);
    sub_26EEBEC48();
    sub_26EE154C8(&qword_2806C83B0, &qword_2806C8358, &qword_26EF40040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8D90);
  }

  return result;
}

unint64_t sub_26EEBEC48()
{
  result = qword_2806C8D98;
  if (!qword_2806C8D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8D48, &qword_26EF41BA8);
    sub_26EEBED00();
    sub_26EE154C8(&qword_2806C8DB0, &qword_2806C8D50, &qword_26EF41BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8D98);
  }

  return result;
}

unint64_t sub_26EEBED00()
{
  result = qword_2806C8DA0;
  if (!qword_2806C8DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8D40, &qword_26EF41BA0);
    sub_26EE154C8(&qword_2806C8DA8, &qword_2806C8D38, &qword_26EF41B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8DA0);
  }

  return result;
}

unint64_t sub_26EEBEDB8()
{
  result = qword_2806C8DC8;
  if (!qword_2806C8DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8DC8);
  }

  return result;
}

char *sub_26EEBEE0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8620, &qword_26EF40730);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26EEBEF18()
{
  v1 = *(type metadata accessor for CreateVoiceView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  if (*v2)
  {
    v3 = *v2;

    v5 = VoiceBankingNavigationModel.itemPath.modify(v10);
    if (*(*v4 + 16))
    {
      v6 = v4;
      sub_26EEBF0E8(v9);
      if (v9[9] == 1)
      {
        sub_26EEBF054(*(*v6 + 16) - 1, v9);
      }
    }

    (v5)(v10, 0);
  }

  else
  {
    v8 = v2[1];
    type metadata accessor for VoiceBankingNavigationModel();
    sub_26EEB7FE4(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_26EEBF054@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26EEBF164(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v5 + 16 * a1;
    v9 = *(v8 + 32);
    v8 += 32;
    v10 = v7 - 1;
    v11 = *(v8 + 8);
    *a2 = v9;
    *(a2 + 8) = v11;
    result = memmove(v8, (v8 + 16), 16 * (v10 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_26EEBF0E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v5 = *(v3 + 16);
    if (v5)
    {
LABEL_3:
      v6 = v5 - 1;
      v7 = v3 + 16 * v6;
      v8 = *(v7 + 32);
      LOBYTE(v7) = *(v7 + 40);
      *a1 = v8;
      *(a1 + 8) = v7;
      *(v3 + 16) = v6;
      *v1 = v3;
      *(a1 + 9) = 0;
      return result;
    }
  }

  else
  {
    result = sub_26EEBF164(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t objectdestroy_21Tm()
{
  VoiceView = type metadata accessor for CreateVoiceView(0);
  v2 = *(*(VoiceView - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(VoiceView - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  sub_26EE05C9C(*(v6 + 16), *(v6 + 24));
  v8 = *(v0 + v3 + 32);
  v9 = *(v0 + v3 + 40);
  v10 = *(v0 + v3 + 48);
  sub_26EE05CA8();
  v11 = (v0 + v3 + VoiceView[7]);
  v12 = *v11;

  v13 = *(v11 + 1);

  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DA8, &unk_26EF41A60) + 32);
  v15 = sub_26EF38A4C();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(&v11[v14], 1, v15))
  {
    (*(v16 + 8))(&v11[v14], v15);
  }

  v17 = v6 + VoiceView[8];
  v18 = *(v17 + 8);

  v19 = *(v17 + 16);

  v20 = *(v6 + VoiceView[9] + 8);

  v21 = *(v6 + VoiceView[10] + 8);

  v22 = (v6 + VoiceView[11]);
  v23 = *v22;

  v24 = *(v22 + 1);

  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830) + 32);
  v26 = sub_26EF3872C();
  (*(*(v26 - 8) + 8))(&v22[v25], v26);
  v27 = *(v6 + VoiceView[12] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}