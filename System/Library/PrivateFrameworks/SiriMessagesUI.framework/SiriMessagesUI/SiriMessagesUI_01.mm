uint64_t sub_267FC33D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for AppDisambiguationSnippetView();

  return sub_267FC2454(a1, a2);
}

uint64_t sub_267FC3450(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267FC3498()
{
  v1 = *(type metadata accessor for AppDisambiguationSnippetView() - 8);
  v2 = v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_267FC2A8C(*v2, *(v2 + 8));
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void sub_267FC3584(char a1)
{
  if (a1)
  {
    sub_267FC39C0();
  }

  else
  {
    sub_267FC3D8C();
  }

  *(v1 + OBJC_IVAR____TtC14SiriMessagesUI11AudioPlayer__isPlaying) = a1 & 1;
}

uint64_t sub_267FC35C4()
{
  swift_getKeyPath();
  sub_267FC4690();
  sub_26804C03C();

  return *(v0 + OBJC_IVAR____TtC14SiriMessagesUI11AudioPlayer__isPlaying);
}

void sub_267FC363C(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC14SiriMessagesUI11AudioPlayer__isPlaying) == (a1 & 1))
  {
    v3 = a1 & 1;

    sub_267FC3584(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_267FC4250();
  }
}

char *sub_267FC3718(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26804BD7C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20]();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[OBJC_IVAR____TtC14SiriMessagesUI11AudioPlayer__isPlaying] = 0;
  sub_26804C06C();
  (*(v5 + 16))(v7, a1, v4);
  v8 = objc_allocWithZone(MEMORY[0x277CB83D0]);
  *&v2[OBJC_IVAR____TtC14SiriMessagesUI11AudioPlayer_player] = sub_267FC4510(v7);
  v9 = type metadata accessor for AudioPlayer();
  v14.receiver = v2;
  v14.super_class = v9;
  v10 = objc_msgSendSuper2(&v14, sel_init);
  v11 = *&v10[OBJC_IVAR____TtC14SiriMessagesUI11AudioPlayer_player];
  if (v11)
  {
    [v11 setDelegate_];
  }

  (*(v5 + 8))(a1, v4);
  return v10;
}

void sub_267FC39C0()
{
  v30[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + OBJC_IVAR____TtC14SiriMessagesUI11AudioPlayer_player);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 sharedInstance];
    v5 = *MEMORY[0x277CB8030];
    v30[0] = 0;
    v6 = [v4 setCategory:v5 error:v30];

    if (v6)
    {
      v7 = v30[0];
    }

    else
    {
      v11 = v30[0];
      v12 = sub_26804BD0C();

      swift_willThrow();
      if (qword_280241130 != -1)
      {
        OUTLINED_FUNCTION_10_0();
      }

      v13 = sub_26804CD4C();
      OUTLINED_FUNCTION_2_0(v13, qword_2802487E0);
      v14 = v12;
      v15 = sub_26804CD3C();
      v16 = sub_26804E89C();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v30[0] = v18;
        *v17 = 136315138;
        swift_getErrorValue();
        v19 = sub_26804ED2C();
        v21 = sub_267FAE0C4(v19, v20, v30);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_267FA7000, v15, v16, "#AudioPlayer failed to set AVAudioSession category with error=%s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        OUTLINED_FUNCTION_1_1();
        OUTLINED_FUNCTION_1_1();
      }

      else
      {
      }
    }

    [v3 setCurrentTime_];
    v22 = [v3 play];
    if (qword_280241130 != -1)
    {
      OUTLINED_FUNCTION_10_0();
    }

    v23 = sub_26804CD4C();
    OUTLINED_FUNCTION_2_0(v23, qword_2802487E0);
    v24 = sub_26804CD3C();
    v25 = sub_26804E88C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 67109120;
      v26[1] = v22;
      OUTLINED_FUNCTION_3_2(&dword_267FA7000, v27, v28, "#AudioPlayer played audio message result=%{BOOL}d");
      OUTLINED_FUNCTION_1_1();
    }
  }

  else
  {
    if (qword_280241130 != -1)
    {
      OUTLINED_FUNCTION_10_0();
    }

    v8 = sub_26804CD4C();
    OUTLINED_FUNCTION_2_0(v8, qword_2802487E0);
    oslog = sub_26804CD3C();
    v9 = sub_26804E88C();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_267FA7000, oslog, v9, "#AudioPlayer player is nil, won't play", v10, 2u);
      OUTLINED_FUNCTION_1_1();
    }
  }
}

void sub_267FC3D8C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriMessagesUI11AudioPlayer_player);
  if (v1)
  {
    v2 = qword_280241130;
    v10 = v1;
    if (v2 != -1)
    {
      OUTLINED_FUNCTION_10_0();
    }

    v3 = sub_26804CD4C();
    OUTLINED_FUNCTION_2_0(v3, qword_2802487E0);
    v4 = sub_26804CD3C();
    v5 = sub_26804E88C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_267FA7000, v4, v5, "#AudioPlayer Pausing audio message playout", v6, 2u);
      OUTLINED_FUNCTION_1_1();
    }

    [v10 pause];
  }

  else
  {
    if (qword_280241130 != -1)
    {
      OUTLINED_FUNCTION_10_0();
    }

    v7 = sub_26804CD4C();
    OUTLINED_FUNCTION_2_0(v7, qword_2802487E0);
    v10 = sub_26804CD3C();
    v8 = sub_26804E88C();
    if (os_log_type_enabled(v10, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_267FA7000, v10, v8, "#AudioPlayer player is nil, won't pause", v9, 2u);
      OUTLINED_FUNCTION_1_1();
    }
  }
}

void sub_267FC3F24(uint64_t a1, char a2)
{
  if (qword_280241130 != -1)
  {
    OUTLINED_FUNCTION_10_0();
  }

  v3 = sub_26804CD4C();
  OUTLINED_FUNCTION_2_0(v3, qword_2802487E0);
  v4 = sub_26804CD3C();
  v5 = sub_26804E88C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    v6[1] = a2 & 1;
    OUTLINED_FUNCTION_3_2(&dword_267FA7000, v7, v8, "#AudioPlayer Finished playing audio message successfully=%{BOOL}d");
    OUTLINED_FUNCTION_1_1();
  }

  sub_267FC363C(0);
}

void sub_267FC406C(uint64_t a1, void *a2)
{
  if (qword_280241130 != -1)
  {
    OUTLINED_FUNCTION_10_0();
  }

  v3 = sub_26804CD4C();
  OUTLINED_FUNCTION_2_0(v3, qword_2802487E0);
  v4 = a2;
  v5 = sub_26804CD3C();
  v6 = sub_26804E89C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    if (a2)
    {
      swift_getErrorValue();
      v9 = sub_26804ED2C();
      v11 = v10;
    }

    else
    {
      v11 = 0xE300000000000000;
      v9 = 7104878;
    }

    v12 = sub_267FAE0C4(v9, v11, &v13);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_267FA7000, v5, v6, "#AudioPlayer Decode error playing audio error=%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1_1();
  }

  sub_267FC363C(0);
}

id sub_267FC4318()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioPlayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AudioPlayer()
{
  result = qword_2802418D0;
  if (!qword_2802418D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267FC4420()
{
  result = sub_26804C07C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_267FC44D0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AudioPlayer();
  result = sub_26804CD9C();
  *a1 = result;
  return result;
}

id sub_267FC4510(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_26804BD2C();
  v13[0] = 0;
  v5 = [v2 initWithContentsOfURL:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_26804BD7C();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_26804BD0C();

    swift_willThrow();
    v11 = sub_26804BD7C();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

unint64_t sub_267FC4690()
{
  result = qword_2802418E0;
  if (!qword_2802418E0)
  {
    type metadata accessor for AudioPlayer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802418E0);
  }

  return result;
}

uint64_t sub_267FC46E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802413B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267FC4798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802419D0);
  v5 = OUTLINED_FUNCTION_15(v4);
  MEMORY[0x28223BE20](v5);
  v7 = v29 - v6;
  type metadata accessor for TimerState();
  OUTLINED_FUNCTION_4();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v29 - v12;
  v14 = type metadata accessor for ReadingCompactCarPlayButtonView();
  swift_storeEnumTagMultiPayload();
  sub_267FC68A4(v13, v11, type metadata accessor for TimerState);
  sub_26804DDDC();
  sub_267FC12B4(v13);
  v15 = (a2 + v14[8]);
  sub_26804E62C();
  sub_267FC6914(&qword_2802412E0, MEMORY[0x277D63F60]);
  *v15 = sub_26804D17C();
  v15[1] = v16;
  v17 = sub_26804CBFC();
  v18 = *(v17 - 8);
  (*(v18 + 16))(a2, a1, v17);
  sub_267FC69D8();
  v19 = [objc_opt_self() mainRunLoop];
  v20 = sub_26804EA4C();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v20);
  v21 = sub_26804E9CC();

  sub_267FC16BC(v7, &qword_2802419D0);
  v29[1] = v21;
  sub_26804E9BC();
  sub_267FC6914(&qword_280241910, MEMORY[0x277CC9DF0]);
  v22 = sub_26804CDAC();

  *(a2 + v14[5]) = v22;
  sub_26804CBDC();
  *(a2 + v14[6]) = v23 > 1.0;
  if (v23 <= 1.0)
  {
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v24 = sub_26804CD4C();
    __swift_project_value_buffer(v24, qword_2802487E0);
    v25 = sub_26804CD3C();
    v26 = sub_26804E88C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_267FA7000, v25, v26, "#ReadingCompactCarPlayButtonView short speech duration, not animating progress bar", v27, 2u);
      MEMORY[0x26D60E1E0](v27, -1, -1);
    }
  }

  return (*(v18 + 8))(a1, v17);
}

uint64_t sub_267FC4B80@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v2 = type metadata accessor for ReadingCompactCarPlayButtonView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241920);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v13 = &v13 - v6;
  v14 = type metadata accessor for ReadingCompactCarPlayButtonView;
  sub_267FC68A4(v1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReadingCompactCarPlayButtonView);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_267FC64B8(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v18 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241928);
  sub_267FC126C(&qword_280241930, &qword_280241928);
  v9 = v13;
  sub_26804DE2C();
  sub_267FC68A4(v1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  v10 = swift_allocObject();
  sub_267FC64B8(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v7);
  v11 = (v9 + *(v15 + 36));
  *v11 = 0;
  v11[1] = 0;
  v11[2] = sub_267FC657C;
  v11[3] = v10;
  v17 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241938);
  sub_267FC659C();
  OUTLINED_FUNCTION_1_2(&qword_280241958);
  sub_26804DA2C();
  return sub_267FC16BC(v9, &qword_280241920);
}

void sub_267FC4E5C()
{
  v1 = v0;
  v2 = type metadata accessor for TimerState();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = (&v26 - v7);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ReadingCompactCarPlayButtonView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802418F0);
  sub_26804DDEC();
  if (!swift_getEnumCaseMultiPayload())
  {
    v19 = sub_26804BDFC();
    (*(*(v19 - 8) + 8))(v10, v19);
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v20 = sub_26804CD4C();
    __swift_project_value_buffer(v20, qword_2802487E0);
    v21 = sub_26804CD3C();
    v22 = sub_26804E88C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_267FA7000, v21, v22, "#ReadingCompactCarPlayButtonView tapped while reading, cancelling speech", v23, 2u);
      MEMORY[0x26D60E1E0](v23, -1, -1);
    }

    v24 = *(v1 + *(v11 + 32));
    if (v24)
    {
      v25 = v24;
      sub_26804E58C();

      *v8 = 0x3FF0000000000000;
      goto LABEL_15;
    }

LABEL_17:
    sub_26804E62C();
    sub_267FC6914(&qword_2802412E0, MEMORY[0x277D63F60]);
    sub_26804D15C();
    __break(1u);
    return;
  }

  sub_267FC12B4(v10);
  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v12 = sub_26804CD4C();
  __swift_project_value_buffer(v12, qword_2802487E0);
  v13 = sub_26804CD3C();
  v14 = sub_26804E88C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_267FA7000, v13, v14, "#ReadingCompactCarPlayButtonView tapped after reading, restarting speech", v15, 2u);
    MEMORY[0x26D60E1E0](v15, -1, -1);
  }

  v16 = *(v1 + *(v11 + 32));
  if (!v16)
  {
    goto LABEL_17;
  }

  v17 = v16;
  sub_26804E59C();

  if ((*(v1 + *(v11 + 24)) & 1) == 0)
  {
    return;
  }

  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241400) + 48);
  sub_26804BDDC();
  *(v8 + v18) = 0;
LABEL_15:
  swift_storeEnumTagMultiPayload();
  sub_267FC68A4(v8, v5, type metadata accessor for TimerState);
  sub_26804DDFC();
  sub_267FC12B4(v8);
}

uint64_t sub_267FC523C()
{
  sub_26804E35C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802419A0);
  sub_267FC6914(&qword_2802419A8, MEMORY[0x277D63CB0]);
  sub_267FC695C();
  return sub_26804DD6C();
}

uint64_t sub_267FC531C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802419B8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v13 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802419C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v13 - v4;
  v6 = sub_26804BF4C();
  MEMORY[0x28223BE20](v6 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802419C8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_268050170;
  sub_26804CBEC();
  v8 = sub_26804BE9C();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v8);
  v9 = sub_26804BFDC();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
  v10 = sub_26804BEAC();
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  v11 = MEMORY[0x277D62918];
  *(v7 + 56) = v10;
  *(v7 + 64) = v11;
  __swift_allocate_boxed_opaque_existential_1((v7 + 32));
  sub_26804BEBC();
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_26804BF6C();
  return sub_26804E36C();
}

uint64_t sub_267FC5554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TimerState();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for ReadingCompactCarPlayButtonView() + 24)) == 1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802418F0), sub_26804DDEC(), v7 = sub_26800DA5C(), sub_267FC12B4(v6), v7 < 1.0))
  {
    v10 = sub_26804DD1C();
    v11 = 0;
  }

  else
  {
    v10 = sub_26804DD1C();
    v11 = 1;
  }

  result = sub_26804D5AC();
  v9 = v13;
  *a2 = v12;
  *(a2 + 8) = v9;
  return result;
}

uint64_t sub_267FC56B4()
{
  type metadata accessor for ReadingCompactCarPlayButtonView();
  sub_26804CD6C();
  sub_26804E9AC();

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_26804CD8C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v1);
}

uint64_t sub_267FC5738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ReadingCompactCarPlayButtonView();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = sub_26804DFAC();
  v12 = v11;
  v13 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241960) + 36));
  sub_267FC596C(a2, v13);
  v14 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241968) + 36));
  *v14 = v10;
  v14[1] = v12;
  sub_267FB035C(a1, a3, &qword_280241920);
  sub_267FC68A4(a2, &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReadingCompactCarPlayButtonView);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_267FC64B8(&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241970) + 36));
  *v17 = sub_267FC6654;
  v17[1] = v16;
  v17[2] = 0;
  v17[3] = 0;
  v18 = *(a2 + *(v7 + 28));
  sub_267FC68A4(a2, &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReadingCompactCarPlayButtonView);
  v19 = swift_allocObject();
  sub_267FC64B8(&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v15);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241938);
  *(a3 + *(v20 + 52)) = v18;
  v21 = (a3 + *(v20 + 56));
  *v21 = sub_267FC6844;
  v21[1] = v19;
}

double sub_267FC596C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a1;
  v35 = a2;
  v2 = type metadata accessor for TimerState();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26804DC9C();
  v36 = sub_26804DCAC();

  KeyPath = swift_getKeyPath();
  v5 = sub_26804DFBC();
  v32 = v6;
  v33 = v5;
  sub_26804DC9C();
  v31 = sub_26804DCAC();

  v30 = *(type metadata accessor for ReadingCompactCarPlayButtonView() + 28);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802418F0);
  sub_26804DDEC();
  sub_26800DA5C();
  sub_267FC12B4(v4);
  sub_26804DFAC();
  sub_26804CFBC();
  v7 = v40;
  v8 = v41;
  v9 = v42;
  v10 = v43;
  v11 = v44;
  v12 = v45;
  v13 = sub_26804DFEC();
  sub_26804DDEC();
  v14 = sub_26800DA5C();
  sub_267FC12B4(v4);
  v27[3] = v8;
  v46[0] = v31;
  v46[1] = v7;
  LOBYTE(v46[2]) = v8;
  v46[3] = v9;
  LOBYTE(v46[4]) = v10;
  v46[5] = v11;
  v46[6] = v12;
  v46[7] = v13;
  *&v46[8] = v14;
  v46[9] = v33;
  v46[10] = v32;
  memcpy(__dst, v46, sizeof(__dst));
  v47[0] = v31;
  v47[1] = v7;
  v48 = v8;
  v49 = v9;
  v50 = v10;
  v51 = v11;
  v52 = v12;
  v53 = v13;
  v54 = v14;
  v55 = v33;
  v56 = v32;
  sub_267FB035C(v46, &v37, &qword_280241978);
  sub_267FC16BC(v47, &qword_280241978);
  *(&v38 + 1) = &type metadata for Features;
  *&v39 = sub_267FB0C70();
  LOBYTE(v37) = 27;
  v15 = sub_26804C08C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v37);
  if (v15)
  {
    v16 = 18.0;
  }

  else
  {
    v16 = 12.0;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241988);
  v18 = v35;
  v19 = (v35 + *(v17 + 36));
  v20 = *(sub_26804D11C() + 20);
  v21 = *MEMORY[0x277CE0118];
  v22 = sub_26804D48C();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = v16;
  v19[1] = v16;
  *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241990) + 36)) = 256;
  v23 = v36;
  *v18 = KeyPath;
  v18[1] = v23;
  memcpy(v18 + 2, __dst, 0x58uLL);
  sub_26804DFAC();
  sub_26804CFBC();
  v24 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241998) + 36));
  v25 = v38;
  *v24 = v37;
  v24[1] = v25;
  result = *&v39;
  v24[2] = v39;
  return result;
}

uint64_t sub_267FC5D10()
{
  v0 = type metadata accessor for TimerState();
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241400) + 48);
  sub_26804BDDC();
  *&v5[v6] = 0;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ReadingCompactCarPlayButtonView();
  sub_267FC68A4(v5, v3, type metadata accessor for TimerState);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802418F0);
  sub_26804DDFC();
  return sub_267FC12B4(v5);
}

uint64_t sub_267FC5E3C(uint64_t a1)
{
  v34 = a1;
  v1 = type metadata accessor for TimerState();
  v2 = MEMORY[0x28223BE20](v1);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = (v31 - v6);
  MEMORY[0x28223BE20](v5);
  v9 = v31 - v8;
  v10 = sub_26804BDFC();
  v33 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for ReadingCompactCarPlayButtonView() + 28);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802418F0);
  sub_26804DDEC();
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_267FC12B4(v9);
  }

  v31[0] = v1;
  v31[1] = v14;
  v31[2] = v13;
  v32 = v4;
  v16 = v33;
  (*(v33 + 32))(v12, v9, v10);
  sub_26804BDBC();
  v18 = v17;
  sub_26804CBDC();
  v20 = v18 / v19;
  if (v20 <= 1.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1.0;
  }

  v22 = v12;
  if (v21 >= 1.0)
  {
    v25 = v32;
    v24 = v7;
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v26 = sub_26804CD4C();
    __swift_project_value_buffer(v26, qword_2802487E0);
    v27 = sub_26804CD3C();
    v28 = sub_26804E88C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_267FA7000, v27, v28, "#ReadingCompactCarPlayButtonView timer expired", v29, 2u);
      v30 = v29;
      v25 = v32;
      MEMORY[0x26D60E1E0](v30, -1, -1);
    }

    *v7 = 0x3FF0000000000000;
    swift_storeEnumTagMultiPayload();
    sub_267FC68A4(v7, v25, type metadata accessor for TimerState);
  }

  else
  {
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241400) + 48);
    v24 = v7;
    (*(v16 + 16))(v7, v22, v10);
    *(v7 + v23) = v21;
    swift_storeEnumTagMultiPayload();
    sub_267FC68A4(v7, v32, type metadata accessor for TimerState);
  }

  sub_26804DDFC();
  sub_267FC12B4(v24);
  return (*(v16 + 8))(v22, v10);
}

uint64_t sub_267FC6200@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26804CBFC();
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v1);
  return sub_267FC4798(v5, a1);
}

void sub_267FC62F4()
{
  sub_26804CBFC();
  if (v0 <= 0x3F)
  {
    sub_267FC63B0();
    if (v1 <= 0x3F)
    {
      sub_267FC6444();
      if (v2 <= 0x3F)
      {
        sub_267FC1004();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_267FC63B0()
{
  if (!qword_280241908)
  {
    sub_26804E9BC();
    sub_267FC6914(&qword_280241910, MEMORY[0x277CC9DF0]);
    v0 = sub_26804CD7C();
    if (!v1)
    {
      atomic_store(v0, &qword_280241908);
    }
  }
}

void sub_267FC6444()
{
  if (!qword_280241918)
  {
    type metadata accessor for TimerState();
    v0 = sub_26804DE1C();
    if (!v1)
    {
      atomic_store(v0, &qword_280241918);
    }
  }
}

uint64_t sub_267FC64B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingCompactCarPlayButtonView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_267FC651C()
{
  v0 = type metadata accessor for ReadingCompactCarPlayButtonView();
  OUTLINED_FUNCTION_15(v0);
  sub_267FC4E5C();
}

unint64_t sub_267FC659C()
{
  result = qword_280241940;
  if (!qword_280241940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241920);
    sub_267FC126C(&qword_280241948, &qword_280241950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280241940);
  }

  return result;
}

uint64_t sub_267FC666C(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for ReadingCompactCarPlayButtonView();
  OUTLINED_FUNCTION_15(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for ReadingCompactCarPlayButtonView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_26804CBFC();
  OUTLINED_FUNCTION_4();
  (*(v5 + 8))(v0 + v3);

  v6 = v0 + v3 + *(v1 + 28);
  type metadata accessor for TimerState();
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_26804BDFC();
    OUTLINED_FUNCTION_4();
    (*(v7 + 8))(v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802418F0);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_267FC6844(uint64_t a1)
{
  v2 = type metadata accessor for ReadingCompactCarPlayButtonView();
  OUTLINED_FUNCTION_15(v2);
  return sub_267FC5E3C(a1);
}

uint64_t sub_267FC68A4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_267FC6914(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_267FC695C()
{
  result = qword_2802419B0;
  if (!qword_2802419B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802419A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802419B0);
  }

  return result;
}

unint64_t sub_267FC69D8()
{
  result = qword_2802419D8;
  if (!qword_2802419D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802419D8);
  }

  return result;
}

uint64_t sub_267FC6A1C()
{
  OUTLINED_FUNCTION_9();
  if (sub_26804BE1C() & 1) != 0 && ((v2 = type metadata accessor for ContactResult(0), v3 = v2[5], v4 = *(v1 + v3), v5 = *(v1 + v3 + 8), v6 = (v0 + v3), v4 == *v6) ? (v7 = v5 == v6[1]) : (v7 = 0), (v7 || (sub_26804EC9C()) && (sub_267FCADF4(*(v1 + v2[6]), *(v0 + v2[6]), &qword_2802419F8)))
  {
    v8 = sub_267FCADF4(*(v1 + v2[7]), *(v0 + v2[7]), &qword_2802441F0);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_267FC6AD4(uint64_t a1)
{
  sub_26804BE4C();
  OUTLINED_FUNCTION_6_2();
  sub_267FCABF0(v2, v3);
  sub_26804E69C();
  type metadata accessor for ContactResult(0);
  sub_26804E71C();
  OUTLINED_FUNCTION_4_0();
  sub_267FCB660(a1, v4, v5, sub_267FDA00C);
  OUTLINED_FUNCTION_4_0();
  sub_267FCB660(a1, v6, v7, sub_267FDA00C);
}

uint64_t sub_267FC6BA4()
{
  sub_26804ED7C();
  sub_26804BE4C();
  OUTLINED_FUNCTION_6_2();
  sub_267FCABF0(v0, v1);
  sub_26804E69C();
  type metadata accessor for ContactResult(0);
  sub_26804E71C();
  OUTLINED_FUNCTION_4_0();
  sub_267FCB660(v7, v2, v3, sub_267FDA00C);
  OUTLINED_FUNCTION_4_0();
  sub_267FCB660(v7, v4, v5, sub_267FDA00C);
  return sub_26804ED9C();
}

uint64_t sub_267FC6C8C(uint64_t a1, uint64_t a2)
{
  sub_26804ED7C();
  sub_26804BE4C();
  sub_267FCABF0(&qword_280241A08, MEMORY[0x277CC95F0]);
  sub_26804E69C();
  sub_26804E71C();
  sub_267FCB660(v5, *(v2 + *(a2 + 24)), sub_267FDA00C, sub_267FDA00C);
  sub_267FCB660(v5, *(v2 + *(a2 + 28)), sub_267FDA00C, sub_267FDA00C);
  return sub_26804ED9C();
}

uint64_t sub_267FC6DA0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26804BE4C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_267FC6E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A18);
  OUTLINED_FUNCTION_20();
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for ContactAutocompleteView(0);
  v9 = a4 + v8[7];
  sub_26804DDDC();
  *v9 = v15;
  *(v9 + 2) = v16;
  v10 = (a4 + v8[8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802441B0);
  sub_26804DDDC();
  *v10 = v15;
  v11 = a4 + v8[9];
  *v11 = sub_26804CE8C() & 1;
  *(v11 + 1) = v12;
  v11[16] = v13 & 1;
  sub_267FCAFE4(a1, a4 + v8[5]);
  sub_267FCAFE4(a3, a4 + v8[6]);
  sub_267FCC068();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A28);
  sub_26804CE3C();
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  sub_267FB05B4(a2, &qword_280241A20);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

void sub_267FC6FE4()
{
  OUTLINED_FUNCTION_24();
  v5 = v0;
  v1 = type metadata accessor for ContactAutocompleteView(0);
  v2 = OUTLINED_FUNCTION_3_3(v1);
  MEMORY[0x28223BE20](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241AA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241AA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241AB0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241AB8);
  sub_267FCCA4C(&qword_280241AC0, &qword_280241AB8);
  sub_267FB0C1C();
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_15_1();
  sub_267FCCA4C(&qword_280241AC8, &qword_280241AA8);
  OUTLINED_FUNCTION_15_1();
  sub_26804D0EC();
  sub_267FCBAE4();
  v3 = swift_allocObject();
  sub_267FCBB3C();
  v4 = (v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241AD0) + 36));
  *v4 = sub_267FCBB94;
  v4[1] = v3;
  v4[2] = 0;
  v4[3] = 0;
  OUTLINED_FUNCTION_23_0();
}

uint64_t sub_267FC727C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v33 = sub_26804D3BC();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241AB8);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241AB0);
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241AA0);
  v11 = *(v10 - 8);
  v34 = v10;
  v35 = v11;
  MEMORY[0x28223BE20](v10);
  v29 = &v27 - v12;
  *v7 = sub_26804D49C();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v13 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241AD8) + 44)];
  v28 = a1;
  sub_267FC7710(a1, v13);
  v14 = (a1 + *(type metadata accessor for ContactAutocompleteView(0) + 24));
  v15 = v14[3];
  v16 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v38 = (*(v16 + 16))(v15, v16);
  v39 = v17;
  v18 = sub_267FCCA4C(&qword_280241AC0, &qword_280241AB8);
  v19 = sub_267FB0C1C();
  sub_26804DB2C();

  sub_267FB05B4(v7, &qword_280241AB8);
  v20 = v31;
  v21 = v33;
  (*(v3 + 104))(v31, *MEMORY[0x277CDDDC0], v33);
  v38 = v5;
  v39 = MEMORY[0x277D837D0];
  v40 = v18;
  v41 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v29;
  v24 = v30;
  sub_26804DB7C();
  (*(v3 + 8))(v20, v21);
  (*(v32 + 8))(v9, v24);
  v37 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241AA8);
  v38 = v24;
  v39 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_267FCCA4C(&qword_280241AC8, &qword_280241AA8);
  v25 = v34;
  sub_26804DBBC();
  return (*(v35 + 8))(v23, v25);
}

uint64_t sub_267FC7710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v91 = sub_26804D07C();
  v92 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A90);
  MEMORY[0x28223BE20](v89);
  v81 = &v79 - v4;
  v5 = type metadata accessor for ContactAutocompleteView(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B60);
  v84 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v98 = &v79 - v7;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B68);
  v87 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v79 = &v79 - v8;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B70);
  v100 = *(v88 - 8);
  v9 = MEMORY[0x28223BE20](v88);
  v85 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v97 = &v79 - v11;
  v82 = sub_26804DEEC();
  v99 = *(v82 - 8);
  v12 = MEMORY[0x28223BE20](v82);
  v80 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v94 = &v79 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B78);
  v16 = v15 - 8;
  v17 = MEMORY[0x28223BE20](v15);
  v96 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v79 - v19;
  *v20 = sub_26804D3DC();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B80);
  sub_267FC8130(a1, &v20[*(v21 + 44)]);
  v22 = sub_26804D7DC();
  sub_26804CE1C();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B88) + 36)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = sub_26804D7BC();
  sub_26804CE1C();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B90) + 36)];
  v95 = v20;
  *v41 = v32;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  v42 = sub_26804D7CC();
  sub_26804CE1C();
  v43 = &v20[*(v16 + 44)];
  *v43 = v42;
  *(v43 + 1) = v44;
  *(v43 + 2) = v45;
  *(v43 + 3) = v46;
  *(v43 + 4) = v47;
  v43[40] = 0;
  sub_26804DEDC();
  v48 = (a1 + *(v6 + 40));
  v50 = *v48;
  v49 = v48[1];
  v104 = v50;
  v105 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B98);
  sub_26804DDEC();
  v51 = v108;
  sub_267FCBAE4();
  v52 = swift_allocObject();
  sub_267FCBB3C();
  v104 = v51;
  v101 = &v104;
  v102 = sub_267FCC0C0;
  v103 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241BA0);
  sub_267FCC150();
  sub_26804D8AC();

  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A20);
  v54 = v81;
  MEMORY[0x26D60CAE0](v53);
  sub_267FCBAE4();
  swift_allocObject();
  sub_267FCBB3C();
  v55 = sub_267FCCA4C(&qword_280241BF0, &qword_280241B60);
  v56 = sub_267FCC394();
  v57 = v79;
  v58 = v83;
  v59 = v89;
  v60 = v98;
  sub_26804DBEC();

  sub_267FB05B4(v54, &qword_280241A90);
  (*(v84 + 8))(v60, v58);
  v61 = v90;
  sub_26804D06C();
  v104 = v58;
  v105 = v59;
  v106 = v55;
  v107 = v56;
  swift_getOpaqueTypeConformance2();
  v62 = v97;
  v63 = v61;
  v64 = v86;
  v65 = v91;
  sub_26804DBFC();
  (*(v92 + 8))(v63, v65);
  (*(v87 + 8))(v57, v64);
  sub_267FB2600();
  v66 = *(v99 + 16);
  v67 = v80;
  v68 = v82;
  v66(v80, v94, v82);
  v69 = *(v100 + 16);
  v70 = v85;
  v71 = v88;
  v69(v85, v62, v88);
  LOBYTE(v104) = 1;
  v72 = v93;
  sub_267FB2600();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241C00);
  v66((v72 + v73[12]), v67, v68);
  v69((v72 + v73[16]), v70, v71);
  v74 = v72 + v73[20];
  v75 = v104;
  *v74 = 0;
  *(v74 + 8) = v75;
  v76 = *(v100 + 8);
  v76(v97, v71);
  v77 = *(v99 + 8);
  v77(v94, v68);
  sub_267FB05B4(v95, &qword_280241B78);
  v76(v70, v71);
  v77(v67, v68);
  return sub_267FB05B4(v96, &qword_280241B78);
}

uint64_t sub_267FC8130@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v68 = a2;
  v3 = type metadata accessor for ContactAutocompleteView(0);
  v4 = (v3 - 8);
  v67 = *(v3 - 8);
  v66 = *(v67 + 64);
  MEMORY[0x28223BE20](v3);
  v64 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241C38);
  v54 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v7 = &v47 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241C40);
  MEMORY[0x28223BE20](v59);
  v51 = &v47 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241C48);
  v65 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v52 = &v47 - v9;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241C50);
  v61 = *(v63 - 8);
  v10 = MEMORY[0x28223BE20](v63);
  v60 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v69 = &v47 - v12;
  v13 = (a1 + v4[8]);
  v14 = v13[3];
  v15 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v70 = (*(v15 + 8))(v14, v15);
  v71 = v16;
  sub_267FB0C1C();
  v17 = sub_26804D95C();
  v19 = v18;
  LOBYTE(v15) = v20;
  LODWORD(v70) = sub_26804D65C();
  v56 = sub_26804D90C();
  v55 = v21;
  v57 = v22;
  v58 = v23;
  sub_267FB0FB4(v17, v19, v15 & 1);

  sub_26804D45C();
  v24 = (a1 + v4[9]);
  v50 = *v24;
  v26 = v24[1];
  v25 = v24[2];
  v49 = v26;
  v48 = v25;
  v73 = v50;
  v74 = v26;
  v75 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B58);
  sub_26804DE0C();
  sub_26804E00C();
  sub_267FCCA4C(&qword_280241C58, &qword_280241C38);
  v27 = v51;
  v28 = v53;
  sub_26804DB6C();
  (*(v54 + 8))(v7, v28);
  v29 = (a1 + v4[11]);
  v30 = *v29;
  v31 = *(v29 + 1);
  LOBYTE(v29) = v29[16];
  LOBYTE(v70) = v30;
  v71 = v31;
  LOBYTE(v72) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A28);
  sub_26804CE4C();
  v32 = sub_267FCC604();
  v33 = v52;
  v34 = v59;
  sub_26804DBAC();

  sub_267FB05B4(v27, &qword_280241C40);
  v70 = v50;
  v71 = v49;
  v72 = v48;
  sub_26804DDEC();
  v70 = v73;
  v71 = v74;
  sub_267FCBAE4();
  swift_allocObject();
  sub_267FCBB3C();
  v73 = v34;
  v74 = v32;
  swift_getOpaqueTypeConformance2();
  v35 = v69;
  v36 = v62;
  sub_26804DBEC();

  (*(v65 + 8))(v33, v36);
  v38 = v60;
  v37 = v61;
  v39 = *(v61 + 16);
  v40 = v63;
  v39(v60, v35, v63);
  v41 = v68;
  v42 = v56;
  v43 = v55;
  *v68 = v56;
  v41[1] = v43;
  LOBYTE(v36) = v57 & 1;
  *(v41 + 16) = v57 & 1;
  v41[3] = v58;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241C70);
  v39(v41 + *(v44 + 48), v38, v40);
  sub_267FCC774(v42, v43, v36);
  v45 = *(v37 + 8);

  v45(v69, v40);
  v45(v38, v40);
  sub_267FB0FB4(v42, v43, v36);
}

uint64_t sub_267FC88D8(uint64_t a1)
{
  v2 = type metadata accessor for ContactAutocompleteView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802413A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  v8 = (a1 + *(v2 + 28));
  v9 = *v8;
  v10 = *(v8 + 2);
  v27 = v9;
  v28 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B58);
  sub_26804DDEC();
  v12 = v25;
  v11 = v26;
  v13 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v13 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v14 = sub_26804E84C();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v14);
    sub_267FCBAE4();
    sub_26804E81C();
    v15 = sub_26804E80C();
    v16 = (v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    *(v17 + 16) = v15;
    *(v17 + 24) = v18;
    sub_267FCBB3C();
    v19 = (v17 + v16);
    *v19 = v12;
    v19[1] = v11;
    sub_267FF4998(0, 0, v7, &unk_2680508C8, v17);
  }

  else
  {

    v21 = (a1 + *(v2 + 32));
    v23 = *v21;
    v22 = v21[1];
    *&v27 = v23;
    *(&v27 + 1) = v22;
    v25 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B98);
    return sub_26804DDFC();
  }
}

uint64_t sub_267FC8B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  sub_26804E81C();
  v6[8] = sub_26804E80C();
  v8 = sub_26804E7EC();
  v6[9] = v8;
  v6[10] = v7;

  return MEMORY[0x2822009F8](sub_267FC8BEC, v8, v7);
}

uint64_t sub_267FC8BEC()
{
  v1 = v0[5];
  v2 = type metadata accessor for ContactAutocompleteView(0);
  v0[11] = v2;
  v3 = (v1 + *(v2 + 20));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  OUTLINED_FUNCTION_22_1(v5);
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_267FC8D20;
  v9 = v0[6];
  v8 = v0[7];

  return v11(v9, v8, v4, v5);
}

uint64_t sub_267FC8D20()
{
  OUTLINED_FUNCTION_13();
  v1 = *v0;
  *(*v0 + 104) = v2;

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_267FC8E44, v4, v3);
}

uint64_t sub_267FC8E44()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[5];

  v4 = (v3 + *(v2 + 32));
  v6 = *v4;
  v5 = v4[1];
  v0[2] = v6;
  v0[3] = v5;
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B98);
  sub_26804DDFC();
  v7 = v0[1];

  return v7();
}

double sub_267FC8EF8@<D0>(uint64_t a1@<X8>)
{
  v1 = type metadata accessor for ContactResult(0);
  MEMORY[0x28223BE20](v1 - 8);
  v2 = type metadata accessor for ContactAutocompleteView(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_267FCBAE4();
  sub_267FCBAE4();
  swift_allocObject();
  sub_267FCBB3C();
  sub_267FCBB3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241C18);
  sub_267FCCA4C(&qword_280241C20, &qword_280241C18);
  sub_26804DE2C();
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241BC8) + 36);
  *v3 = xmmword_268050500;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  sub_26804DFAC();
  sub_26804CFBC();
  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241BB8) + 36));
  *v4 = v7;
  v4[1] = v8;
  result = *&v9;
  v4[2] = v9;
  return result;
}

uint64_t sub_267FC91D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A90);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - v2;
  sub_267FCBAE4();
  v4 = type metadata accessor for ContactResult(0);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  type metadata accessor for ContactAutocompleteView(0);
  sub_267FCC068();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A20);
  sub_26804DE9C();
  return sub_267FB05B4(v3, &qword_280241A90);
}

uint64_t sub_267FC9318()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241C28);
  sub_267FCC548();
  return sub_26804DD6C();
}

uint64_t sub_267FC93B4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ContactResult(0);
  sub_267FB0C1C();

  result = sub_26804D95C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_267FC9434@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_26804BF1C();
  MEMORY[0x28223BE20](v4 - 8);
  sub_267FC9520(a1, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26804E31C();
  LOBYTE(a1) = sub_26804D7DC();
  sub_26804CE1C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241C28);
  v15 = a2 + *(result + 36);
  *v15 = a1;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_267FC9520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26804BEFC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ContactResult(0);
  v9 = *(a1 + *(v8 + 24));
  if (sub_267FDA00C(v9) == 1 && sub_267FDA00C(v9))
  {
    sub_267FDA010(0, (v9 & 0xC000000000000001) == 0, v9);
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x26D60D7C0](0, v9);
    }

    else
    {
      v10 = *(v9 + 32);
    }

    v11 = v10;
    if (!sub_267FDA00C(*(a1 + *(v8 + 28))))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802441D0);
      v22 = swift_allocObject();
      v31 = xmmword_268050170;
      *(v22 + 16) = xmmword_268050170;
      v23 = [v11 identifier];
      v24 = sub_26804E6CC();
      v26 = v25;

      *(v22 + 32) = v24;
      *(v22 + 40) = v26;
      (*(v5 + 104))(v7, *MEMORY[0x277D62A90], v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802417E8);
      v27 = sub_26804BECC();
      v28 = *(v27 - 8);
      v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = v31;
      (*(v28 + 104))(v30 + v29, *MEMORY[0x277D62A28], v27);
      sub_267FAFE24(v30);
      sub_26804BEDC();

      goto LABEL_15;
    }
  }

  if (sub_267FDA00C(v9))
  {
    sub_267FDA010(0, (v9 & 0xC000000000000001) == 0, v9);
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x26D60D7C0](0, v9);
    }

    else
    {
      v12 = *(v9 + 32);
    }

    v13 = v12;
  }

  else
  {
    v13 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
    v14 = sub_26804E6BC();
    [v13 setGivenName_];
  }

  v15 = [objc_opt_self() stringFromContact:v13 style:1002];
  v32 = a2;
  if (v15)
  {
    v16 = v15;
    sub_26804E6CC();
  }

  (*(v5 + 104))(v7, *MEMORY[0x277D62A90], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802417E8);
  v17 = sub_26804BECC();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_268050170;
  (*(v18 + 104))(v20 + v19, *MEMORY[0x277D62A28], v17);
  sub_267FAFE24(v20);
  sub_26804BEEC();

LABEL_15:

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_267FC99D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241AE0);
  MEMORY[0x28223BE20](v16[0]);
  v4 = v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241AE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  v9 = sub_26804D61C();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241AF0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - v12;
  sub_26804D5EC();
  v16[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241AF8);
  sub_267FCBBBC();
  sub_26804CF7C();
  sub_26804D5FC();
  v16[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B28);
  sub_267FCBCA8();
  sub_26804CF7C();
  v14 = *(v16[0] + 48);
  (*(v11 + 16))(v4, v13, v10);
  (*(v6 + 16))(&v4[v14], v8, v5);
  sub_26804D4CC();
  (*(v6 + 8))(v8, v5);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_267FC9CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ContactAutocompleteView(0);
  v5 = (a1 + *(MEMORY[0x28223BE20](v4 - 8) + 32));
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v7 + 24))(v6, v7);
  sub_267FCBAE4();
  swift_allocObject();
  sub_267FCBB3C();
  sub_267FB0C1C();
  sub_26804DE4C();
  v8 = sub_26804DC2C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241AF8);
  *(a2 + *(result + 36)) = v8;
  return result;
}

void sub_267FC9E88()
{
  OUTLINED_FUNCTION_24();
  v16 = sub_26804D3AC();
  OUTLINED_FUNCTION_1();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A18);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_26804CFDC();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267FCC068();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  else
  {
    sub_26804E8AC();
    v14 = sub_26804D77C();
    sub_26804CD2C();

    sub_26804D39C();
    swift_getAtKeyPath();

    (*(v1 + 8))(v4, v16);
  }

  sub_26804CFCC();
  (*(v10 + 8))(v13, v8);
  OUTLINED_FUNCTION_23_0();
}

uint64_t sub_267FCA0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for ContactAutocompleteView(0);
  v4 = v3 - 8;
  v30[1] = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B10);
  v6 = *(v5 - 8);
  v31 = v5;
  v32 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B40);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = v30 - v11;
  v13 = (a1 + *(v4 + 32));
  v14 = v13[3];
  v15 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v14);
  *&v36 = (*(v15 + 32))(v14, v15);
  *(&v36 + 1) = v16;
  sub_267FCBAE4();
  swift_allocObject();
  sub_267FCBB3C();
  sub_267FB0C1C();
  sub_26804DE4C();
  sub_26804D84C();
  sub_267FCCA4C(&qword_280241B08, &qword_280241B10);
  v17 = v31;
  sub_26804DA9C();
  (*(v32 + 8))(v8, v17);
  *&v12[*(v10 + 44)] = sub_26804DC2C();
  v18 = (a1 + *(v4 + 36));
  v19 = *v18;
  v20 = *(v18 + 2);
  v36 = v19;
  v37 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B58);
  sub_26804DDEC();
  v22 = v34;
  v21 = v35;

  v23 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v23 = v22 & 0xFFFFFFFFFFFFLL;
  }

  v24 = v23 == 0;
  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  v27 = v33;
  sub_267FB25A0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B28);
  v29 = (v27 + *(result + 36));
  *v29 = KeyPath;
  v29[1] = sub_267FCC05C;
  v29[2] = v26;
  return result;
}

uint64_t sub_267FCA474(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A90);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v15 - v4;
  v6 = (a1 + *(type metadata accessor for ContactAutocompleteView(0) + 28));
  v7 = *v6;
  v8 = *(v6 + 2);
  v16 = v7;
  v17 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B58);
  sub_26804DDEC();
  v9 = v15[1];
  v10 = v15[2];
  sub_26804BE3C();
  v11 = type metadata accessor for ContactResult(0);
  v12 = &v5[v11[5]];
  *v12 = v9;
  *(v12 + 1) = v10;
  v13 = MEMORY[0x277D84F90];
  *&v5[v11[6]] = MEMORY[0x277D84F90];
  *&v5[v11[7]] = v13;
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v11);
  sub_267FCC068();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A20);
  sub_26804DE9C();
  return sub_267FB05B4(v5, &qword_280241A90);
}

uint64_t sub_267FCA608()
{
  type metadata accessor for ContactAutocompleteView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A28);
  return sub_26804CE3C();
}

uint64_t sub_267FCA6B8()
{
  OUTLINED_FUNCTION_13();
  v1[7] = v2;
  v1[8] = v0;
  v1[6] = v3;
  v4 = type metadata accessor for ContactResult(0);
  v1[9] = v4;
  OUTLINED_FUNCTION_3_3(v4);
  v1[10] = v5;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267FCA77C, 0, 0);
}

void sub_267FCA77C()
{
  v1 = 0;
  v14 = v0[9];
  v2 = *(v0[8] + 16);
  v3 = *(v2 + 16);
  v13 = MEMORY[0x277D84F90];
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v4 = v0[12];
    v5 = v0[6];
    v6 = v0[7];
    OUTLINED_FUNCTION_2_1();
    sub_267FCBAE4();
    v7 = (v4 + *(v14 + 20));
    v9 = *v7;
    v8 = v7[1];
    v0[2] = v9;
    v0[3] = v8;
    v0[4] = v5;
    v0[5] = v6;
    sub_267FB0C1C();
    if (sub_26804EA8C())
    {
      OUTLINED_FUNCTION_2_1();
      sub_267FCBB3C();
      v10 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_267FCB1AC();
        v10 = v13;
      }

      v11 = *(v10 + 16);
      if (v11 >= *(v10 + 24) >> 1)
      {
        sub_267FCB1AC();
        v10 = v13;
      }

      ++v1;
      *(v10 + 16) = v11 + 1;
      v13 = v10;
      OUTLINED_FUNCTION_2_1();
      sub_267FCBB3C();
    }

    else
    {
      sub_267FCB710(v0[12]);
      ++v1;
    }
  }

  v12 = v0[1];

  v12(v13);
}

uint64_t sub_267FCA954()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_267FCA9F8()
{
  sub_26804BE4C();
  if (v0 <= 0x3F)
  {
    sub_267FCAACC(319, &qword_2802419F0, &qword_2802419F8);
    if (v1 <= 0x3F)
    {
      sub_267FCAACC(319, &qword_280241A00, &qword_2802441F0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_267FCAACC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_267FCAB20(255, a3);
    OUTLINED_FUNCTION_20();
    v4 = sub_26804E7CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_267FCAB20(uint64_t a1, unint64_t *a2)
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

uint64_t sub_267FCABF0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267FCAC34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267FCACDC;

  return sub_267FCA6B8();
}

uint64_t sub_267FCACDC()
{
  OUTLINED_FUNCTION_13();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_10();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_267FCADF4(unint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26804EC1C())
  {
    if (a2 >> 62)
    {
      result = sub_26804EC1C();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v20 = 0;
      return v20 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v21 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_31:
      v20 = 1;
      return v20 & 1;
    }

    if (i < 0)
    {
      break;
    }

    sub_267FCAB20(0, a3);
    v23 = v5;
    v13 = v5 & 0xC000000000000001;
    v5 = a2;
    v14 = a2 & 0xC000000000000001;
    v15 = 4;
    a2 = i;
    while (1)
    {
      v16 = v15 - 4;
      v6 = v15 - 3;
      if (__OFADD__(v15 - 4, 1))
      {
        break;
      }

      if (v13)
      {
        v17 = MEMORY[0x26D60D7C0](v15 - 4, v23);
      }

      else
      {
        if (v16 >= *(v22 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v23 + 8 * v15);
      }

      a3 = v17;
      if (v14)
      {
        v18 = MEMORY[0x26D60D7C0](v15 - 4, v5);
      }

      else
      {
        if (v16 >= *(v21 + 16))
        {
          goto LABEL_35;
        }

        v18 = *(v5 + 8 * v15);
      }

      v19 = v18;
      v20 = sub_26804EA1C();

      if (v20)
      {
        ++v15;
        if (v6 != a2)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_267FCAFE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_267FCB048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802441B0);
  sub_26804BE4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241BB8);
  sub_267FCCA4C(&qword_280241C08, &qword_2802441B0);
  sub_267FCC1D4();
  sub_267FCABF0(&qword_280241C10, type metadata accessor for ContactResult);
  return sub_26804DF0C();
}

uint64_t sub_267FCB204(uint64_t a1, int64_t a2, char a3)
{
  result = sub_267FCB29C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_267FCB224(uint64_t a1, int64_t a2, char a3)
{
  result = sub_267FCB3B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_267FCB29C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241C78);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_268007424((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241C80);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_267FCB3B4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802441D0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_26800744C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_267FCB4B4()
{
  OUTLINED_FUNCTION_24();
  v4 = v3;
  v6 = v5;
  v7 = v1;
  v9 = v8;
  if (v10)
  {
    v11 = *(v1 + 24);
    v12 = v11 >> 1;
    if ((v11 >> 1) < v0)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v12 = v0;
      }
    }
  }

  else
  {
    v12 = v0;
  }

  v13 = *(v1 + 16);
  if (v12 <= v13)
  {
    v14 = *(v1 + 16);
  }

  else
  {
    v14 = v12;
  }

  if (!v14)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  v15 = v6(0);
  OUTLINED_FUNCTION_3_3(v15);
  v17 = *(v16 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v21 - v19 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v20[2] = v13;
  v20[3] = 2 * ((v21 - v19) / v17);
LABEL_19:
  v6(0);
  OUTLINED_FUNCTION_11();
  if (v9)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v4(v7 + v24, v13, v20 + v24);
    *(v7 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_23_0();
}

void sub_267FCB660(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v6 = a3(a2);
  MEMORY[0x26D60D9E0](v6);
  v7 = a4(a2);
  if (v7)
  {
    v8 = v7;
    if (v7 < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v8; ++i)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x26D60D7C0](i, a2);
        }

        else
        {
          v10 = *(a2 + 8 * i + 32);
        }

        v11 = v10;
        sub_26804EA2C();
      }
    }
  }
}

uint64_t sub_267FCB710(uint64_t a1)
{
  v2 = type metadata accessor for ContactResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_267FCB794()
{
  sub_267FCB908();
  if (v0 <= 0x3F)
  {
    sub_267FCB960(319, &qword_280241A60);
    if (v1 <= 0x3F)
    {
      sub_267FCB960(319, &qword_280241A68);
      if (v2 <= 0x3F)
      {
        sub_267FCB9B4();
        if (v3 <= 0x3F)
        {
          sub_267FCBA5C(319, &qword_280241A78, &qword_2802441B0, &unk_268055230, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_267FCBA04();
            if (v5 <= 0x3F)
            {
              sub_267FCBA5C(319, &qword_280241A88, &qword_280241A90, &unk_268050700, MEMORY[0x277CE11F8]);
              if (v6 <= 0x3F)
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

void sub_267FCB908()
{
  if (!qword_280241A58)
  {
    sub_26804CFDC();
    v0 = sub_26804CF2C();
    if (!v1)
    {
      atomic_store(v0, &qword_280241A58);
    }
  }
}

uint64_t sub_267FCB960(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_267FCB9B4()
{
  if (!qword_280241A70)
  {
    v0 = sub_26804DE1C();
    if (!v1)
    {
      atomic_store(v0, &qword_280241A70);
    }
  }
}

void sub_267FCBA04()
{
  if (!qword_280241A80)
  {
    v0 = sub_26804CEAC();
    if (!v1)
    {
      atomic_store(v0, &qword_280241A80);
    }
  }
}

void sub_267FCBA5C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_267FCBAE4()
{
  OUTLINED_FUNCTION_9();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_12_0();
  v3(v2);
  return v0;
}

uint64_t sub_267FCBB3C()
{
  OUTLINED_FUNCTION_9();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_12_0();
  v3(v2);
  return v0;
}

unint64_t sub_267FCBBBC()
{
  result = qword_280241B00;
  if (!qword_280241B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241AF8);
    sub_267FCCA4C(&qword_280241B08, &qword_280241B10);
    sub_267FCCA4C(&qword_280241B18, &qword_280241B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280241B00);
  }

  return result;
}

unint64_t sub_267FCBCA8()
{
  result = qword_280241B30;
  if (!qword_280241B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241B28);
    sub_267FCBD60();
    sub_267FCCA4C(&qword_280241B48, &qword_280241B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280241B30);
  }

  return result;
}

unint64_t sub_267FCBD60()
{
  result = qword_280241B38;
  if (!qword_280241B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241B40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241B10);
    sub_267FCCA4C(&qword_280241B08, &qword_280241B10);
    swift_getOpaqueTypeConformance2();
    sub_267FCCA4C(&qword_280241B18, &qword_280241B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280241B38);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for ContactAutocompleteView(0);
  OUTLINED_FUNCTION_7_0();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26804CFDC();
    OUTLINED_FUNCTION_0();
    (*(v7 + 8))(v0 + v4);
  }

  else
  {
  }

  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_21_0(*(v1 + 36));

  v8 = v0 + v4 + *(v1 + 40);

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A20);
  if (!OUTLINED_FUNCTION_16_1(v9))
  {
    sub_26804BE4C();
    OUTLINED_FUNCTION_0();
    (*(v10 + 8))(v8);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v6, v3 | 7);
}

uint64_t sub_267FCC068()
{
  OUTLINED_FUNCTION_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_12_0();
  v3(v2);
  return v0;
}

double sub_267FCC0C0@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContactAutocompleteView(0);
  OUTLINED_FUNCTION_15(v2);

  return sub_267FC8EF8(a1);
}

unint64_t sub_267FCC150()
{
  result = qword_280241BA8;
  if (!qword_280241BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241BA0);
    sub_267FCC1D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280241BA8);
  }

  return result;
}

unint64_t sub_267FCC1D4()
{
  result = qword_280241BB0;
  if (!qword_280241BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241BB8);
    sub_267FCC260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280241BB0);
  }

  return result;
}

unint64_t sub_267FCC260()
{
  result = qword_280241BC0;
  if (!qword_280241BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241BC8);
    sub_267FCCA4C(&qword_280241BD0, &qword_280241BD8);
    sub_267FCCA4C(&qword_280241BE0, &qword_280241BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280241BC0);
  }

  return result;
}

void sub_267FCC344()
{
  v0 = type metadata accessor for ContactAutocompleteView(0);
  OUTLINED_FUNCTION_15(v0);
  sub_267FC9E88();
}

unint64_t sub_267FCC394()
{
  result = qword_280241BF8;
  if (!qword_280241BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241A90);
    sub_267FCABF0(&qword_280241A10, type metadata accessor for ContactResult);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280241BF8);
  }

  return result;
}

uint64_t sub_267FCC470()
{
  v0 = type metadata accessor for ContactAutocompleteView(0);
  OUTLINED_FUNCTION_3_3(v0);
  v1 = type metadata accessor for ContactResult(0);
  OUTLINED_FUNCTION_15(v1);

  return sub_267FC91D8();
}

unint64_t sub_267FCC548()
{
  result = qword_280241C30;
  if (!qword_280241C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241C28);
    sub_267FCABF0(&qword_280241800, MEMORY[0x277D63C68]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280241C30);
  }

  return result;
}

unint64_t sub_267FCC604()
{
  result = qword_280241C60;
  if (!qword_280241C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241C40);
    sub_267FCCA4C(&qword_280241C58, &qword_280241C38);
    sub_267FCABF0(&qword_280241C68, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280241C60);
  }

  return result;
}

uint64_t sub_267FCC704(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for ContactAutocompleteView(0);
  OUTLINED_FUNCTION_15(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t sub_267FCC774(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_267FCC784(uint64_t a1)
{
  v4 = type metadata accessor for ContactAutocompleteView(0);
  OUTLINED_FUNCTION_3_3(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = (v1 + ((*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_267FCC8AC;

  return sub_267FC8B50(a1, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_267FCC8AC()
{
  OUTLINED_FUNCTION_13();
  v1 = *v0;
  OUTLINED_FUNCTION_10();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

unint64_t sub_267FCC994()
{
  result = qword_280241C90;
  if (!qword_280241C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241AD0);
    sub_267FCCA4C(&qword_280241C98, &qword_280241CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280241C90);
  }

  return result;
}

uint64_t sub_267FCCA4C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    OUTLINED_FUNCTION_20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + *(v0 + 20));
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + *(v0 + 24));
}

uint64_t type metadata accessor for ConfirmationButtonSnippetView()
{
  result = qword_280241CA8;
  if (!qword_280241CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267FCCB4C()
{
  result = sub_26804CC4C();
  if (v1 <= 0x3F)
  {
    result = sub_26804E22C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_267FCCBEC()
{
  v2 = type metadata accessor for ConfirmationButtonSnippetView();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_2_2();
  sub_267FCDDA0(v0, v1);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  sub_267FCDE04(v1, v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241CB8);
  sub_267FC126C(&qword_280241CC0, &qword_280241CB8);
  return sub_26804E2AC();
}

uint64_t sub_267FCCD2C@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241CC8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v37 - v3;
  v41 = sub_26804E2FC();
  v38 = *(v41 - 8);
  v5 = MEMORY[0x28223BE20](v41);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v37 - v7;
  v8 = sub_26804E4AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241CD0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v37 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  v17 = sub_26804CC3C();
  if (v18)
  {
    v48 = MEMORY[0x277D837D0];
    v49 = MEMORY[0x277D63F80];
    v46 = v17;
    v47 = v18;
    sub_26804E49C();
    (*(v9 + 32))(v16, v11, v8);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  __swift_storeEnumTagSinglePayload(v16, v19, 1, v8);
  sub_267FCD240(&unk_2878EB670, sub_267FCE090, sub_267FCE10C, MEMORY[0x277D63A90], v4);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241B10);
  v21 = sub_267FC126C(&qword_280241B08, &qword_280241B10);
  v46 = v20;
  v47 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = sub_26804D97C();
  v23 = *(v2 + 8);
  v23(v4, v1);
  v24 = MEMORY[0x277CE11C8];
  v25 = MEMORY[0x277D63A60];
  v48 = MEMORY[0x277CE11C8];
  v49 = MEMORY[0x277D63A60];
  v46 = v22;
  sub_267FCD240(&unk_2878EB648, sub_267FCDF48, sub_267FCDF60, MEMORY[0x277D63A88], v4);
  v26 = sub_26804D97C();
  v23(v4, v1);
  v44 = v24;
  v45 = v25;
  v43 = v26;
  v27 = v39;
  sub_26804E2EC();
  v28 = v37;
  sub_267FCDED8(v16, v37);
  v29 = v38;
  v30 = *(v38 + 16);
  v32 = v40;
  v31 = v41;
  v30(v40, v27, v41);
  v33 = v42;
  sub_267FCDED8(v28, v42);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241CD8);
  v30((v33 + *(v34 + 48)), v32, v31);
  v35 = *(v29 + 8);
  v35(v27, v31);
  sub_267FB05B4(v16, &qword_280241CD0);
  v35(v32, v31);
  return sub_267FB05B4(v28, &qword_280241CD0);
}

uint64_t sub_267FCD240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int *a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a3;
  v27 = a4;
  v24[0] = a1;
  v24[1] = a2;
  v28 = a5;
  v25 = sub_26804E1EC();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ConfirmationButtonSnippetView();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_2_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B10);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = v24 - v18;
  sub_267FCDDA0(v5, v6);
  v20 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v21 = swift_allocObject();
  sub_267FCDE04(v6, v21 + v20);
  v29 = v5;
  sub_26804DE2C();
  v22 = v25;
  (*(v8 + 104))(v11, *v27, v25);
  sub_267FC126C(&qword_280241B08, &qword_280241B10);
  sub_26804D98C();
  (*(v8 + 8))(v11, v22);
  return (*(v16 + 8))(v19, v14);
}

uint64_t sub_267FCD4D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241810);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v52 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241818);
  MEMORY[0x28223BE20](v5 - 8);
  v53 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241820);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v52 - v8;
  v10 = sub_26804C85C();
  v55 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26804BF7C();
  v58 = *(v13 - 8);
  v59 = v13;
  MEMORY[0x28223BE20](v13);
  v57 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26804C30C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v60 = v9;
  v19 = sub_26804CD4C();
  __swift_project_value_buffer(v19, qword_2802487E0);
  v20 = *(v16 + 16);
  v56 = a1;
  v20(v18, a1, v15);
  v21 = sub_26804CD3C();
  v22 = sub_26804E88C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v52 = v10;
    v24 = v23;
    v25 = swift_slowAlloc();
    *&v54 = v4;
    v26 = v25;
    v61[0] = v25;
    *v24 = 136446210;
    v27 = sub_26804C2FC();
    v29 = v28;
    (*(v16 + 8))(v18, v15);
    v30 = sub_267FAE0C4(v27, v29, v61);

    *(v24 + 4) = v30;
    _os_log_impl(&dword_267FA7000, v21, v22, "#ConfirmationButtonSnippetView %{public}s button tapped", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v31 = v26;
    v4 = v54;
    MEMORY[0x26D60E1E0](v31, -1, -1);
    v32 = v24;
    v10 = v52;
    MEMORY[0x26D60E1E0](v32, -1, -1);
  }

  else
  {

    (*(v16 + 8))(v18, v15);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241828);
  v33 = swift_allocObject();
  v54 = xmmword_268050170;
  *(v33 + 16) = xmmword_268050170;
  v34 = v55;
  (*(v55 + 104))(v12, *MEMORY[0x277D5D6F8], v10);
  sub_26804C84C();
  (*(v34 + 8))(v12, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241830);
  inited = swift_initStackObject();
  *(inited + 16) = v54;
  strcpy(v61, "buttonPressed");
  HIWORD(v61[1]) = -4864;
  v36 = MEMORY[0x277D837D0];
  sub_26804EAFC();
  v37 = sub_26804C2FC();
  *(inited + 96) = v36;
  *(inited + 72) = v37;
  *(inited + 80) = v38;
  sub_26804E65C();
  v39 = sub_26804BFFC();
  v40 = MEMORY[0x277D63778];
  *(v33 + 56) = v39;
  *(v33 + 64) = v40;
  __swift_allocate_boxed_opaque_existential_1((v33 + 32));
  sub_26804BFEC();

  v61[0] = 0;
  v61[1] = 0xE000000000000000;
  sub_26804EB4C();
  sub_26804C2FC();
  v41 = sub_26804E6FC();
  v43 = v42;

  v61[0] = v41;
  v61[1] = v43;
  MEMORY[0x26D60D390](0x5F4E4F545455425FLL, 0xEE00444550504154);
  v44 = v57;
  sub_26804BF8C();
  type metadata accessor for ConfirmationButtonSnippetView();
  v45 = v60;
  sub_26804E20C();
  v46 = sub_26804E40C();
  if (__swift_getEnumTagSinglePayload(v45, 1, v46) == 1)
  {
    (*(v58 + 8))(v44, v59);
    return sub_267FB05B4(v45, &qword_280241820);
  }

  else
  {
    v49 = v58;
    v48 = v59;
    v50 = v53;
    (*(v58 + 16))(v53, v44, v59);
    __swift_storeEnumTagSinglePayload(v50, 0, 1, v48);
    v51 = sub_26804E2DC();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v51);
    sub_26804E3FC();
    sub_267FB05B4(v4, &qword_280241810);
    sub_267FB05B4(v50, &qword_280241818);
    (*(v49 + 8))(v44, v48);
    return (*(*(v46 - 8) + 8))(v45, v46);
  }
}

uint64_t sub_267FCDC6C(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = sub_26804C30C();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v7);
  sub_267FCD4D8(v9);
  return (*(v5 + 8))(v9, v3);
}

uint64_t sub_267FCDD3C@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  a1();
  sub_267FB0C1C();
  result = sub_26804D95C();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_267FCDDA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationButtonSnippetView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267FCDE04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationButtonSnippetView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267FCDE68@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConfirmationButtonSnippetView();

  return sub_267FCCD2C(a1);
}

uint64_t sub_267FCDED8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241CD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for ConfirmationButtonSnippetView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_26804CC4C();
  OUTLINED_FUNCTION_0();
  (*(v5 + 8))(v0 + v3);
  v6 = v1[7];
  sub_26804E22C();
  OUTLINED_FUNCTION_0();
  (*(v7 + 8))(v0 + v3 + v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double sub_267FCE13C()
{
  swift_getKeyPath();
  sub_267FCF008();
  OUTLINED_FUNCTION_2_3();

  return *(v0 + 16);
}

void sub_267FCE19C(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_3_0();
    *(v4 - 16) = v1;
    *(v4 - 8) = a1;
    sub_267FCECC4();
  }
}

void *sub_267FCE244()
{
  swift_getKeyPath();
  sub_267FCF008();
  OUTLINED_FUNCTION_2_3();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_267FCE2AC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_267FCE2DC(v1);
}

void sub_267FCE2DC(void *a1)
{
  v3 = *(v1 + 24);
  v4 = v3;
  LOBYTE(v3) = sub_267FCED4C(v3, a1);

  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_3_0();
    *(v6 - 16) = v1;
    *(v6 - 8) = a1;
    sub_267FCECC4();
  }

  else
  {
    v7 = *(v1 + 24);
    *(v1 + 24) = a1;
  }
}

void sub_267FCE3C4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = a2;
  v3 = a2;
}

double sub_267FCE3F8()
{
  swift_getKeyPath();
  sub_267FCF008();
  OUTLINED_FUNCTION_2_3();

  return *(v0 + 32);
}

void sub_267FCE458(double a1)
{
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_3_0();
    *(v4 - 16) = v1;
    *(v4 - 8) = a1;
    sub_267FCECC4();
  }
}

uint64_t sub_267FCE500(double a1)
{
  *(v1 + 24) = 0;
  sub_26804C06C();
  *(v1 + 16) = a1;
  *(v1 + 32) = 0;
  return v1;
}

BOOL sub_267FCE540()
{
  v0 = sub_267FCE244();
  v1 = v0;
  if (v0)
  {
  }

  else
  {
    if (qword_280241130 != -1)
    {
      OUTLINED_FUNCTION_10_0();
    }

    v2 = sub_26804CD4C();
    __swift_project_value_buffer(v2, qword_2802487E0);
    v3 = sub_26804CD3C();
    v4 = sub_26804E88C();
    if (OUTLINED_FUNCTION_6_3(v4))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_1_3(&dword_267FA7000, v5, v6, "#ViewTimer starting");
      OUTLINED_FUNCTION_5_1();
    }

    sub_267FCE7B0();
  }

  return v1 == 0;
}

BOOL sub_267FCE610()
{
  v0 = sub_267FCE244();
  v1 = v0;
  if (v0)
  {

    if (qword_280241130 != -1)
    {
      OUTLINED_FUNCTION_10_0();
    }

    v2 = sub_26804CD4C();
    __swift_project_value_buffer(v2, qword_2802487E0);
    v3 = sub_26804CD3C();
    v4 = sub_26804E88C();
    if (OUTLINED_FUNCTION_6_3(v4))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_1_3(&dword_267FA7000, v5, v6, "#ViewTimer stopping");
      OUTLINED_FUNCTION_5_1();
    }

    sub_267FCEC7C();
  }

  return v1 != 0;
}

BOOL sub_267FCE6DC()
{
  v0 = sub_267FCE244();
  v1 = v0;
  if (v0)
  {
  }

  else
  {
    if (qword_280241130 != -1)
    {
      OUTLINED_FUNCTION_10_0();
    }

    v2 = sub_26804CD4C();
    __swift_project_value_buffer(v2, qword_2802487E0);
    v3 = sub_26804CD3C();
    v4 = sub_26804E88C();
    if (OUTLINED_FUNCTION_6_3(v4))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_1_3(&dword_267FA7000, v5, v6, "#ViewTimer resetting");
      OUTLINED_FUNCTION_5_1();
    }

    sub_267FCE458(0.0);
  }

  return v1 == 0;
}

uint64_t sub_267FCE7B0()
{
  sub_26804BDFC();
  OUTLINED_FUNCTION_4_1();
  v2 = v1;
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v5);
  v7 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  sub_26804BDDC();
  sub_267FCE3F8();
  sub_267FCE13C();
  sub_26804BDCC();
  v10 = *(v2 + 8);
  v10(v7, v0);
  v18 = objc_opt_self();
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v2 + 16))(v7, v9, v0);
  v12 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  (*(v2 + 32))(v13 + v12, v7, v0);
  aBlock[4] = sub_267FCEF6C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_267FCEC14;
  aBlock[3] = &block_descriptor_0;
  v14 = _Block_copy(aBlock);

  v15 = [v18 scheduledTimerWithTimeInterval:1 repeats:v14 block:0.1];
  _Block_release(v14);
  sub_267FCE2DC(v15);
  return (v10)(v9, v0);
}

uint64_t sub_267FCEA18()
{
  v0 = sub_26804BDFC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_26804BDDC();
    sub_26804BDBC();
    v6 = v5;
    (*(v1 + 8))(v3, v0);
    v7 = v6 / sub_267FCE13C();
    if (v7 > 1.0)
    {
      v7 = 1.0;
    }

    sub_267FCE458(v7);
    if (sub_267FCE3F8() == 1.0)
    {
      if (qword_280241130 != -1)
      {
        swift_once();
      }

      v8 = sub_26804CD4C();
      __swift_project_value_buffer(v8, qword_2802487E0);
      v9 = sub_26804CD3C();
      v10 = sub_26804E88C();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_267FA7000, v9, v10, "#ViewTimer timer expired", v11, 2u);
        MEMORY[0x26D60E1E0](v11, -1, -1);
      }

      sub_267FCEC7C();
    }
  }

  return result;
}

void sub_267FCEC14(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_267FCEC7C()
{
  v0 = sub_267FCE244();
  [v0 invalidate];

  sub_267FCE2DC(0);
}

BOOL sub_267FCED4C(unint64_t a1, unint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    sub_267FC69D8();
    v5 = a1;
    v6 = a2;
    v2 = sub_26804EA1C();
  }

  return (v2 & 1) == 0;
}

uint64_t sub_267FCEDC8()
{
  v1 = OBJC_IVAR____TtC14SiriMessagesUI9ViewTimer___observationRegistrar;
  v2 = sub_26804C07C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for ViewTimer()
{
  result = qword_280241CF8;
  if (!qword_280241CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267FCEEC0()
{
  result = sub_26804C07C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_267FCEF6C()
{
  sub_26804BDFC();

  return sub_267FCEA18();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_267FCEFF8()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 32) = result;
  return result;
}

unint64_t sub_267FCF008()
{
  result = qword_280241D08;
  if (!qword_280241D08)
  {
    type metadata accessor for ViewTimer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280241D08);
  }

  return result;
}

double sub_267FCF07C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

void OUTLINED_FUNCTION_5_1()
{

  JUMPOUT(0x26D60E1E0);
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

uint64_t sub_267FCF0C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_267FCF108(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_267FCF180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26804CABC();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26804BE4C();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = qword_280248770;
  if (!qword_280248770)
  {
    goto LABEL_5;
  }

  v28[0] = v4;

  v17 = a1;
  sub_26804CA6C();
  v18 = sub_26804BE1C();
  (*(v12 + 8))(v15, v10);
  if ((v18 & 1) == 0)
  {

    a1 = v17;
    v4 = v28[0];
LABEL_5:
    (*(v6 + 16))(v9, a1, v4);
    type metadata accessor for MessageDraftSnippetViewModel();
    swift_allocObject();
    v19 = a1;
    sub_26803FFA0();
    v16 = v20;
    qword_280248770 = v20;
    swift_retain_n();

    goto LABEL_6;
  }

  v19 = v17;
  v4 = v28[0];
LABEL_6:
  sub_26804E62C();
  sub_267FD05B0(&qword_2802412E0, MEMORY[0x277D63F60]);
  v21 = sub_26804D17C();
  v23 = v22;
  KeyPath = swift_getKeyPath();
  v28[1] = v16;
  type metadata accessor for MessageDraftSnippetViewModel();
  sub_26804DDDC();

  v25 = v28[2];
  v26 = v28[3];
  result = (*(v6 + 8))(v19, v4);
  *a2 = v21;
  *(a2 + 8) = v23;
  *(a2 + 16) = KeyPath;
  *(a2 + 24) = 0;
  *(a2 + 32) = v25;
  *(a2 + 40) = v26;
  return result;
}

uint64_t sub_267FCF43C@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241D10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241D18);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241D20);
  OUTLINED_FUNCTION_1();
  v32 = v11;
  v33 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  v15 = *(v1 + 4);
  v31 = *(v1 + 5);
  v40 = *v1;
  v16 = *(v1 + 2);
  v37 = v31;
  v38 = v16;
  v39 = *(v1 + 24);
  v17 = swift_allocObject();
  v18 = v1[1];
  v17[1] = *v1;
  v17[2] = v18;
  v17[3] = v1[2];
  sub_267FB035C(&v40, &v35, &qword_280241D28);
  sub_267FB035C(&v38, &v35, &qword_280241D30);

  sub_267FB035C(&v37, &v35, &qword_280241D38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241D40);
  sub_267FC126C(&qword_280241D48, &qword_280241D40);
  sub_26804E2AC();
  v19 = *MEMORY[0x277D63BA8];
  sub_26804E2BC();
  OUTLINED_FUNCTION_4();
  (*(v20 + 104))(v4, v19);
  v21 = *MEMORY[0x277D63BC0];
  v22 = sub_26804E2CC();
  OUTLINED_FUNCTION_4();
  (*(v23 + 104))(v4, v21, v22);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v22);
  OUTLINED_FUNCTION_2_4();
  v25 = sub_267FC126C(v24, &qword_280241D18);
  sub_26804D9FC();
  sub_267FC16BC(v4, &qword_280241D10);
  (*(v7 + 8))(v10, v5);
  sub_26804CBCC();
  v35 = v15;
  v36 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241D58);
  sub_26804DDEC();
  v35 = v5;
  v36 = v25;
  OUTLINED_FUNCTION_5_2();
  swift_getOpaqueTypeConformance2();
  v26 = MEMORY[0x277D5D8A8];
  sub_267FD05B0(&qword_280241D60, MEMORY[0x277D5D8A8]);
  OUTLINED_FUNCTION_4_2();
  sub_267FD05B0(v27, v26);
  OUTLINED_FUNCTION_3_4();
  sub_267FD05B0(v28, v26);
  v29 = v32;
  sub_26804DA0C();

  return (*(v33 + 8))(v14, v29);
}

uint64_t sub_267FCF8F0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v82 = a2;
  v80 = type metadata accessor for ButtonView();
  MEMORY[0x28223BE20](v80);
  v79 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241D78);
  v78 = *(v81 - 8);
  v4 = MEMORY[0x28223BE20](v81);
  v90 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v89 = &v76 - v6;
  v7 = type metadata accessor for TextFieldView();
  MEMORY[0x28223BE20](v7);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241D80);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v88 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v91 = &v76 - v13;
  v14 = type metadata accessor for AttachmentView();
  MEMORY[0x28223BE20](v14);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241D88);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v87 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v92 = &v76 - v20;
  v21 = type metadata accessor for RecipientView();
  MEMORY[0x28223BE20](v21);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241D90);
  v85 = *(v24 - 8);
  v86 = v24;
  v25 = MEMORY[0x28223BE20](v24);
  v84 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v76 - v27;
  v93 = *(a1 + 32);
  v94 = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241D58);
  sub_26804DDEC();
  sub_2680116A4(v23);
  sub_267FD05B0(&qword_280241D98, type metadata accessor for RecipientView);
  v83 = v28;
  sub_26804DB3C();
  sub_267FD0558(v23, type metadata accessor for RecipientView);
  v93 = v94;
  sub_26804DDEC();
  v29 = sub_26803F5EC();
  v31 = v30;

  v93 = v94;
  sub_26804DDEC();
  v32 = sub_26803C850();

  LOBYTE(a1) = sub_26804E90C();

  if (a1 & 1) != 0 || (v93 = v94, sub_26804DDEC(), v33 = sub_268040504(), , (v33) || (v93 = v94, sub_26804DDEC(), v34 = sub_26803FB60(), , (v34))
  {
    v93 = v94;
    sub_26804DDEC();
    sub_26804E21C();
    v35 = v14[6];
    *&v16[v35] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241DB8);
    swift_storeEnumTagMultiPayload();
    v36 = v14[7];
    *&v16[v36] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241DC0);
    swift_storeEnumTagMultiPayload();
    v37 = &v16[v14[8]];
    *v37 = swift_getKeyPath();
    v37[8] = 0;
    v38 = &v16[v14[9]];
    *v38 = swift_getKeyPath();
    v38[8] = 0;
    type metadata accessor for MessageSnippetViewModel();
    sub_267FD05B0(&qword_280241DC8, type metadata accessor for MessageSnippetViewModel);
    sub_26804DF3C();
    v39 = v92;
    sub_267FD05F8(v16, v92, type metadata accessor for AttachmentView);
    v40 = 0;
  }

  else
  {
    v40 = 1;
    v39 = v92;
  }

  v41 = 1;
  __swift_storeEnumTagSinglePayload(v39, v40, 1, v14);
  v93 = v94;
  sub_26804DDEC();
  v42 = sub_26803C850();

  v43 = sub_26804E8DC();

  if (v43)
  {
    v93 = v94;
    sub_26804DDEC();
    v44 = &v9[v7[5]];
    sub_26804E62C();
    sub_267FD05B0(&qword_2802412E0, MEMORY[0x277D63F60]);
    *v44 = sub_26804D17C();
    v44[1] = v45;
    v46 = v7[6];
    *&v9[v46] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241DB8);
    swift_storeEnumTagMultiPayload();
    v47 = &v9[v7[7]];
    *v47 = swift_getKeyPath();
    v47[8] = 0;
    v48 = v7[8];
    *&v9[v48] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241DC0);
    swift_storeEnumTagMultiPayload();
    v49 = &v9[v7[9]];
    *v49 = swift_getKeyPath();
    v49[8] = 0;
    v50 = &v9[v7[10]];
    *v50 = swift_getKeyPath();
    v50[8] = 0;
    sub_26804E21C();
    v51 = &v9[v7[12]];
    *v51 = sub_26804CE8C() & 1;
    *(v51 + 1) = v52;
    v51[16] = v53 & 1;
    v54 = &v9[v7[13]];
    *(v54 + 3) = &type metadata for MessagesFeatureFlagsImpl;
    *(v54 + 4) = &off_2878ECAC8;
    type metadata accessor for MessageDraftSnippetViewModel();
    sub_267FD05B0(&qword_280241DA0, type metadata accessor for MessageDraftSnippetViewModel);
    sub_26804DF3C();
    sub_267FD05F8(v9, v91, type metadata accessor for TextFieldView);
    v41 = 0;
  }

  v55 = v91;
  __swift_storeEnumTagSinglePayload(v91, v41, 1, v7);
  if (v31)
  {
    v56 = v29;
  }

  else
  {
    v56 = 0;
  }

  v77 = v56;
  v93 = v94;
  sub_26804DDEC();
  v76 = v31;
  v57 = v79;
  sub_26804E21C();
  type metadata accessor for MessageDraftSnippetViewModel();
  sub_267FD05B0(&qword_280241DA0, type metadata accessor for MessageDraftSnippetViewModel);
  sub_26804DF3C();
  sub_267FD05B0(&qword_280241DA8, type metadata accessor for ButtonView);
  v58 = v89;
  sub_26804DB3C();
  sub_267FD0558(v57, type metadata accessor for ButtonView);
  v59 = v84;
  v60 = *(v85 + 16);
  v61 = v86;
  v60(v84, v83, v86);
  v62 = v87;
  sub_267FB035C(v92, v87, &qword_280241D88);
  sub_267FB035C(v55, v88, &qword_280241D80);
  v63 = v78;
  v64 = *(v78 + 16);
  v65 = v81;
  v64(v90, v58, v81);
  v66 = v82;
  v60(v82, v59, v61);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241DB0);
  v68 = &v66[v67[12]];
  v69 = v76;
  *v68 = v77;
  v68[1] = v69;
  sub_267FB035C(v62, &v66[v67[16]], &qword_280241D88);
  v70 = v88;
  sub_267FB035C(v88, &v66[v67[20]], &qword_280241D80);
  v71 = v90;
  v64(&v66[v67[24]], v90, v65);
  v72 = *(v63 + 8);

  v72(v89, v65);
  sub_267FC16BC(v91, &qword_280241D80);
  sub_267FC16BC(v92, &qword_280241D88);
  v73 = v86;
  v74 = *(v85 + 8);
  v74(v83, v86);
  v72(v71, v65);
  sub_267FC16BC(v70, &qword_280241D80);
  sub_267FC16BC(v87, &qword_280241D88);

  return (v74)(v84, v73);
}

uint64_t sub_267FD0500@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26804D2FC();
  *a1 = result;
  return result;
}

uint64_t sub_267FD0558(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_267FD05B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267FD05F8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_267FD06B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267FC35C4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_267FD0710@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_26804BD7C();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26804E62C();
  sub_267FD1DCC(&qword_2802412E0, MEMORY[0x277D63F60]);
  *a2 = sub_26804D17C();
  a2[1] = v7;
  v8 = type metadata accessor for AudioMessagePlayerView();
  v9 = a2 + v8[7];
  v21 = 0;
  v22 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241DF8);
  sub_26804DDDC();
  v10 = v24;
  v11 = v25;
  *v9 = v23;
  v9[8] = v10;
  *(v9 + 2) = v11;
  v12 = v8[5];
  v13 = sub_26804C76C();
  v14 = *(v13 - 8);
  (*(v14 + 16))(a2 + v12, a1, v13);
  sub_26804C74C();
  v15 = objc_allocWithZone(type metadata accessor for AudioPlayer());
  v16 = sub_267FC3718(v6);
  v17 = (a2 + v8[6]);
  v21 = v16;
  sub_26804DDDC();
  result = (*(v14 + 8))(a1, v13);
  v19 = v24;
  *v17 = v23;
  v17[1] = v19;
  return result;
}

uint64_t sub_267FD0900()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241E00);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - v3;
  *v4 = sub_26804D3DC();
  *(v4 + 1) = 0x4024000000000000;
  v4[16] = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241E08);
  sub_267FD0A14(v0, &v4[*(v5 + 44)]);
  v6 = sub_26804D7AC();
  sub_26804CE1C();
  v7 = &v4[*(v1 + 36)];
  *v7 = v6;
  *(v7 + 1) = v8;
  *(v7 + 2) = v9;
  *(v7 + 3) = v10;
  *(v7 + 4) = v11;
  v7[40] = 0;
  sub_267FD1A68();
  sub_26804D9AC();
  return sub_267FC16BC(v4, &qword_280241E00);
}

uint64_t sub_267FD0A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_26804DD2C();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v45 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241E28);
  MEMORY[0x28223BE20](v5 - 8);
  v43 = &v42 - v6;
  v50 = sub_26804BD7C();
  KeyPath = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AudioMessagePlayerView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241E30);
  v13 = v12 - 8;
  v14 = MEMORY[0x28223BE20](v12);
  v51 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - v16;
  sub_267FD1B20(a1, &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  sub_267FD1B84(&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v52 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241E38);
  sub_267FD1C4C();
  sub_26804DE2C();
  sub_26804DFAC();
  sub_26804CFBC();
  v20 = &v17[*(v13 + 44)];
  v21 = v56;
  *v20 = v55;
  *(v20 + 1) = v21;
  *(v20 + 2) = v57;
  sub_26804C74C();
  v22 = sub_267FD1574();
  (*(KeyPath + 8))(v8, v50);
  if (v22)
  {
    v23 = *MEMORY[0x277CE1020];
    v24 = sub_26804DD4C();
    v25 = v43;
    (*(*(v24 - 8) + 104))(v43, v23, v24);
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
    sub_26804DD3C();
    sub_267FC16BC(v25, &qword_280241E28);
    v27 = v45;
    v26 = v46;
    v28 = v47;
    (*(v46 + 104))(v45, *MEMORY[0x277CE0FE0], v47);
    v29 = sub_26804DD5C();

    (*(v26 + 8))(v27, v28);
    v47 = sub_26804DCCC();
    KeyPath = swift_getKeyPath();
    sub_26804DFAC();
    sub_26804CFBC();

    v31 = v58;
    v30 = v59;
    v32 = v60;
    v50 = v61;
    v45 = v63;
    v46 = v62;
  }

  else
  {
    v29 = 0;
    v47 = 0;
    KeyPath = 0;
    v31 = 0;
    v30 = 0;
    v32 = 0;
    v50 = 0;
    v45 = 0;
    v46 = 0;
  }

  v44 = v17;
  v33 = v51;
  sub_267FB035C(v17, v51, &qword_280241E30);
  v34 = v33;
  v35 = v49;
  sub_267FB035C(v34, v49, &qword_280241E30);
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241E68) + 48);
  v37 = v47;
  v38 = KeyPath;
  v53[0] = v29;
  v53[1] = KeyPath;
  v53[2] = v47;
  v53[3] = v31;
  v53[4] = v30;
  v53[5] = v32;
  v39 = v45;
  v40 = v46;
  v53[6] = v50;
  v53[7] = v46;
  v53[8] = v45;
  memcpy((v35 + v36), v53, 0x48uLL);
  sub_267FB035C(v53, v54, &qword_280241E70);
  sub_267FC16BC(v44, &qword_280241E30);
  v54[0] = v29;
  v54[1] = v38;
  v54[2] = v37;
  v54[3] = v31;
  v54[4] = v30;
  v54[5] = v32;
  v54[6] = v50;
  v54[7] = v40;
  v54[8] = v39;
  sub_267FC16BC(v54, &qword_280241E70);
  return sub_267FC16BC(v51, &qword_280241E30);
}

uint64_t sub_267FD1028()
{
  v1 = v0;
  type metadata accessor for AudioMessagePlayerView();
  if ((sub_26804C75C() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v2 = sub_26804CD4C();
  __swift_project_value_buffer(v2, qword_2802487E0);
  v3 = sub_26804CD3C();
  v4 = sub_26804E88C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_267FA7000, v3, v4, "#AudioMessagePlayerView play button tapped, cancelling auto send", v5, 2u);
    MEMORY[0x26D60E1E0](v5, -1, -1);
  }

  if (*v1)
  {
    v6 = *v1;
    sub_268015CD8(0);

LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241E80);
    sub_26804DDEC();
    swift_getKeyPath();
    sub_267FD1DCC(&qword_2802418E0, type metadata accessor for AudioPlayer);
    sub_26804C03C();

    swift_getKeyPath();
    sub_26804C05C();

    sub_267FC3584((v8[OBJC_IVAR____TtC14SiriMessagesUI11AudioPlayer__isPlaying] & 1) == 0);
    swift_getKeyPath();
    sub_26804C04C();
  }

  sub_26804E62C();
  sub_267FD1DCC(&qword_2802412E0, MEMORY[0x277D63F60]);
  result = sub_26804D15C();
  __break(1u);
  return result;
}

uint64_t sub_267FD12C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26804DD2C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241E28);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  v11 = (a1 + *(type metadata accessor for AudioMessagePlayerView() + 24));
  v13 = *v11;
  v12 = v11[1];
  v20[2] = v13;
  v20[3] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241E80);
  sub_26804DDEC();
  v14 = v20[1];
  sub_267FC35C4();

  sub_26804DD1C();
  v15 = *MEMORY[0x277CE1020];
  v16 = sub_26804DD4C();
  (*(*(v16 - 8) + 104))(v10, v15, v16);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v16);
  sub_26804DD3C();

  sub_267FC16BC(v10, &qword_280241E28);
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v17 = sub_26804DD5C();

  (*(v5 + 8))(v7, v4);
  v18 = sub_26804DCCC();
  result = swift_getKeyPath();
  *a2 = v17;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 32) = v18;
  return result;
}

uint64_t sub_267FD1574()
{
  sub_267FD1D88();
  v0 = sub_26804E91C();
  v1 = sub_26804BD2C();
  v2 = [v0 mediaObjectWithFileURL:v1 filename:0 transcoderUserInfo:0];

  if (v2 && (objc_opt_self(), (v3 = swift_dynamicCastObjCClass()) != 0))
  {
    v4 = v3;
    v5 = v2;
    v6 = [v4 composeWaveformForWidth:1 orientation:230.0];
    v7 = sub_26804DD0C();
  }

  else
  {
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v8 = sub_26804CD4C();
    __swift_project_value_buffer(v8, qword_2802487E0);
    v9 = v2;
    v10 = sub_26804CD3C();
    v11 = sub_26804E89C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      if (v2)
      {
        v14 = [v9 description];
        v15 = sub_26804E6CC();
        v17 = v16;
      }

      else
      {
        v17 = 0xE300000000000000;
        v15 = 7104878;
      }

      v18 = sub_267FAE0C4(v15, v17, &v20);

      *(v12 + 4) = v18;
      _os_log_impl(&dword_267FA7000, v10, v11, "#AudioMessageViewView media object is not CKAudioMediaObject, mediaObject=%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x26D60E1E0](v13, -1, -1);
      MEMORY[0x26D60E1E0](v12, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v7;
}

uint64_t sub_267FD17E8@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_26804C76C();
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v1);
  return sub_267FD0710(v5, a1);
}

void sub_267FD18DC()
{
  sub_267FC1004();
  if (v0 <= 0x3F)
  {
    sub_26804C76C();
    if (v1 <= 0x3F)
    {
      sub_267FD1990();
      if (v2 <= 0x3F)
      {
        sub_267FD19E8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_267FD1990()
{
  if (!qword_280241DE8)
  {
    type metadata accessor for AudioPlayer();
    v0 = sub_26804DE1C();
    if (!v1)
    {
      atomic_store(v0, &qword_280241DE8);
    }
  }
}

void sub_267FD19E8()
{
  if (!qword_280241DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241DF8);
    v0 = sub_26804DE1C();
    if (!v1)
    {
      atomic_store(v0, &qword_280241DF0);
    }
  }
}

unint64_t sub_267FD1A68()
{
  result = qword_280241E10;
  if (!qword_280241E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241E00);
    sub_267FC126C(&qword_280241E18, &qword_280241E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280241E10);
  }

  return result;
}

uint64_t sub_267FD1B20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioMessagePlayerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267FD1B84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioMessagePlayerView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_267FD1C4C()
{
  result = qword_280241E40;
  if (!qword_280241E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241E38);
    sub_267FD1D04();
    sub_267FC126C(&qword_280241E58, &qword_280241E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280241E40);
  }

  return result;
}

unint64_t sub_267FD1D04()
{
  result = qword_280241E48;
  if (!qword_280241E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280241E48);
  }

  return result;
}

unint64_t sub_267FD1D88()
{
  result = qword_280241E78;
  if (!qword_280241E78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280241E78);
  }

  return result;
}

uint64_t sub_267FD1DCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for WatchConfirmationSnippetView()
{
  result = qword_280241E88;
  if (!qword_280241E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267FD1E88()
{
  sub_26804C9FC();
  if (v0 <= 0x3F)
  {
    sub_267FC1004();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_267FD1F28()
{
  v1 = type metadata accessor for WatchConfirmationSnippetView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_267FD43B4(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WatchConfirmationSnippetView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_267FD3FD4(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241E98);
  sub_267FC126C(&qword_280241EA0, &qword_280241E98);
  return sub_26804E2AC();
}

uint64_t sub_267FD208C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v235 = a2;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241EA8);
  MEMORY[0x28223BE20](v234);
  v213 = &v165 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241EB0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v212 = &v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v216 = &v165 - v7;
  v183 = type metadata accessor for VideoAttachmentView();
  MEMORY[0x28223BE20](v183);
  v170 = &v165 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_26804C61C();
  v169 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v180 = &v165 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241EB8);
  MEMORY[0x28223BE20](v178);
  v181 = &v165 - v10;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241EC0);
  MEMORY[0x28223BE20](v211);
  v182 = &v165 - v11;
  v179 = type metadata accessor for PhotoAttachmentView();
  MEMORY[0x28223BE20](v179);
  v167 = &v165 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_26804C59C();
  v166 = *(v168 - 8);
  v13 = MEMORY[0x28223BE20](v168);
  v165 = &v165 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v177 = &v165 - v15;
  v198 = type metadata accessor for MapAttachmentView();
  MEMORY[0x28223BE20](v198);
  v175 = &v165 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_26804C39C();
  v174 = *(v176 - 8);
  v17 = MEMORY[0x28223BE20](v176);
  v172 = &v165 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v173 = &v165 - v19;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241EC8);
  MEMORY[0x28223BE20](v207);
  v209 = &v165 - v20;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241ED0);
  MEMORY[0x28223BE20](v194);
  v196 = &v165 - v21;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241ED8);
  MEMORY[0x28223BE20](v208);
  v197 = &v165 - v22;
  v195 = type metadata accessor for LinkAttachmentView(0);
  MEMORY[0x28223BE20](v195);
  v192 = &v165 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_26804C47C();
  v191 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v190 = &v165 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241EE0);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v210 = &v165 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v223 = &v165 - v28;
  v224 = sub_26804C55C();
  v222 = *(v224 - 8);
  v29 = MEMORY[0x28223BE20](v224);
  v199 = &v165 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v221 = &v165 - v31;
  v227 = sub_26804E33C();
  v215 = *(v227 - 8);
  MEMORY[0x28223BE20](v227);
  v214 = &v165 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_26804C2AC();
  v189 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v201 = &v165 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241EE8);
  MEMORY[0x28223BE20](v225);
  v233 = &v165 - v34;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241EF0);
  MEMORY[0x28223BE20](v202);
  v205 = &v165 - v35;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241EF8);
  MEMORY[0x28223BE20](v229);
  v206 = &v165 - v36;
  v37 = sub_26804BD7C();
  MEMORY[0x28223BE20](v37 - 8);
  v185 = &v165 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for AudioMessagePlayerView();
  MEMORY[0x28223BE20](v204);
  v188 = (&v165 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_26804C76C();
  v186 = *(v40 - 8);
  v187 = v40;
  v41 = MEMORY[0x28223BE20](v40);
  v184 = &v165 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v200 = &v165 - v43;
  v44 = sub_26804C9BC();
  v218 = *(v44 - 8);
  v219 = v44;
  MEMORY[0x28223BE20](v44);
  v220 = &v165 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241F00);
  v47 = MEMORY[0x28223BE20](v46 - 8);
  v232 = &v165 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v236 = &v165 - v49;
  v231 = sub_26804E47C();
  v230 = *(v231 - 8);
  v50 = MEMORY[0x28223BE20](v231);
  v228 = &v165 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v53 = &v165 - v52;
  v217 = a1;
  v252 = sub_26804C9DC();
  v253 = v54;

  MEMORY[0x26D60D390](32, 0xE100000000000000);

  v55 = v252;
  v56 = v253;
  v57 = sub_26804C9EC();
  v59 = v58;
  v252 = v55;
  v253 = v56;

  MEMORY[0x26D60D390](v57, v59);

  sub_267FB0C1C();
  v60 = sub_26804D95C();
  v62 = v61;
  LOBYTE(v59) = v63;
  v64 = sub_26804D92C();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = v62;
  v72 = v218;
  sub_267FB0FB4(v60, v71, v59 & 1);

  v255 = MEMORY[0x277CE0BD8];
  v256 = MEMORY[0x277D638E8];
  v73 = swift_allocObject();
  v252 = v73;
  *(v73 + 16) = v64;
  *(v73 + 24) = v66;
  v74 = v219;
  *(v73 + 32) = v68 & 1;
  *(v73 + 40) = v70;
  v251 = 0;
  v249 = 0u;
  v250 = 0u;
  v248 = 0;
  v246 = 0u;
  v247 = 0u;
  v245 = 0;
  v243 = 0u;
  v244 = 0u;
  v242 = 0;
  v240 = 0u;
  v241 = 0u;
  v239 = 0;
  v237 = 0u;
  v238 = 0u;
  v226 = v53;
  sub_26804E46C();
  v75 = v220;
  sub_26804C9CC();
  v76 = v75;
  v77 = (*(v72 + 88))(v75, v74);
  if (v77 != *MEMORY[0x277D5D860])
  {
    if (v77 == *MEMORY[0x277D5D870])
    {
      (*(v72 + 96))(v75, v74);
      v101 = v186;
      v100 = v187;
      v102 = v200;
      (*(v186 + 32))(v200, v76, v187);
      v103 = *(v101 + 16);
      v104 = v184;
      v103(v184, v102, v100);
      sub_26804E62C();
      sub_267FD436C(&qword_2802412E0, MEMORY[0x277D63F60]);
      v105 = sub_26804D17C();
      v106 = v188;
      *v188 = v105;
      *(v106 + 8) = v107;
      v108 = v204;
      v109 = v106 + *(v204 + 28);
      *&v249 = 0;
      BYTE8(v249) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241DF8);
      sub_26804DDDC();
      v110 = v253;
      v111 = v254;
      *v109 = v252;
      *(v109 + 8) = v110;
      *(v109 + 16) = v111;
      v103((v106 + *(v108 + 20)), v104, v100);
      v112 = v185;
      sub_26804C74C();
      v113 = objc_allocWithZone(type metadata accessor for AudioPlayer());
      v114 = sub_267FC3718(v112);
      v115 = (v106 + *(v108 + 24));
      *&v249 = v114;
      sub_26804DDDC();
      v116 = *(v101 + 8);
      v116(v104, v100);
      v117 = v253;
      *v115 = v252;
      v115[1] = v117;
      sub_267FD43B4(v106, v205, type metadata accessor for AudioMessagePlayerView);
      swift_storeEnumTagMultiPayload();
      sub_267FD436C(&qword_280241DD0, type metadata accessor for AudioMessagePlayerView);
      sub_267FD436C(&qword_280241F58, MEMORY[0x277D63C80]);
      v118 = v206;
      sub_26804D5AC();
      sub_267FB035C(v118, v233, &qword_280241EF8);
      swift_storeEnumTagMultiPayload();
      sub_267FD4280();
      sub_267FC126C(&qword_280241F60, &qword_280241EA8);
      sub_26804D5AC();
      sub_267FC16BC(v118, &qword_280241EF8);
      sub_267FD4414(v106, type metadata accessor for AudioMessagePlayerView);
      v116(v200, v100);
    }

    else
    {
      if (v77 != *MEMORY[0x277D5D868])
      {
        goto LABEL_20;
      }

      (*(v72 + 96))(v75, v74);
      v127 = v189;
      (*(v189 + 32))(v201, v75, v203);
      v128 = sub_26804C29C();
      v255 = MEMORY[0x277D837D0];
      v256 = MEMORY[0x277D63F80];
      v252 = v128;
      v253 = v129;
      v130 = v214;
      sub_26804E32C();
      v131 = v215;
      v132 = v227;
      (*(v215 + 16))(v205, v130, v227);
      swift_storeEnumTagMultiPayload();
      sub_267FD436C(&qword_280241DD0, type metadata accessor for AudioMessagePlayerView);
      sub_267FD436C(&qword_280241F58, MEMORY[0x277D63C80]);
      v133 = v206;
      sub_26804D5AC();
      sub_267FB035C(v133, v233, &qword_280241EF8);
      swift_storeEnumTagMultiPayload();
      sub_267FD4280();
      sub_267FC126C(&qword_280241F60, &qword_280241EA8);
      sub_26804D5AC();
      sub_267FC16BC(v133, &qword_280241EF8);
      (*(v131 + 8))(v130, v132);
      (*(v127 + 8))(v201, v203);
    }

LABEL_17:
    v148 = v230;
    v149 = *(v230 + 16);
    v150 = v228;
    v151 = v226;
    v152 = v231;
    v149(v228, v226, v231);
    v153 = v236;
    v154 = v232;
    sub_267FB035C(v236, v232, &qword_280241F00);
    v155 = v235;
    v149(v235, v150, v152);
    v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241F68);
    sub_267FB035C(v154, &v155[*(v156 + 48)], &qword_280241F00);
    sub_267FC16BC(v153, &qword_280241F00);
    v157 = *(v148 + 8);
    v157(v151, v152);
    sub_267FC16BC(v154, &qword_280241F00);
    return (v157)(v150, v152);
  }

  (*(v72 + 96))(v75, v74);
  v78 = &v75[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241F08) + 48)];
  v79 = *v78;
  v219 = *(v78 + 1);
  v81 = v221;
  v80 = v222;
  v82 = v76;
  v83 = v224;
  (*(v222 + 32))(v221, v82, v224);
  v84 = v199;
  (*(v80 + 16))(v199, v81, v83);
  v85 = (*(v80 + 88))(v84, v83);
  v86 = v83;
  v87 = v84;
  if (v85 == *MEMORY[0x277D5D618])
  {
    (*(v80 + 96))(v84, v86);
    v89 = v190;
    v88 = v191;
    v90 = *(v191 + 32);
    v220 = v79;
    v91 = v193;
    v90(v190, v84, v193);
    v92 = v192;
    (*(v88 + 16))(v192, v89, v91);
    v93 = v195;
    v94 = v92 + *(v195 + 20);
    LOBYTE(v249) = 0;
    sub_26804DDDC();
    v95 = v253;
    *v94 = v252;
    *(v94 + 8) = v95;
    v96 = *(v93 + 24);
    *(v92 + v96) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241F10);
    swift_storeEnumTagMultiPayload();
    sub_267FD43B4(v92, v196, type metadata accessor for LinkAttachmentView);
    swift_storeEnumTagMultiPayload();
    sub_267FD436C(&qword_280241F30, type metadata accessor for LinkAttachmentView);
    sub_267FD436C(&qword_280241F38, type metadata accessor for MapAttachmentView);
    v97 = v197;
    sub_26804D5AC();
    sub_267FB035C(v97, v209, &qword_280241ED8);
    swift_storeEnumTagMultiPayload();
    sub_267FD40A8();
    sub_267FD4194();
    sub_26804D5AC();
    sub_267FC16BC(v97, &qword_280241ED8);
    sub_267FD4414(v92, type metadata accessor for LinkAttachmentView);
    v98 = v91;
    v79 = v220;
    (*(v88 + 8))(v89, v98);
LABEL_4:
    v99 = v216;
LABEL_13:
    v140 = v227;
    if (v219)
    {
      v255 = MEMORY[0x277D837D0];
      v256 = MEMORY[0x277D63F80];
      v252 = v79;
      v253 = v219;
      v141 = v214;
      sub_26804E32C();
      (*(v215 + 32))(v99, v141, v140);
      v142 = 0;
    }

    else
    {
      v142 = 1;
    }

    __swift_storeEnumTagSinglePayload(v99, v142, 1, v140);
    v143 = v223;
    v144 = v210;
    sub_267FB035C(v223, v210, &qword_280241EE0);
    v145 = v212;
    sub_267FB035C(v99, v212, &qword_280241EB0);
    v146 = v213;
    sub_267FB035C(v144, v213, &qword_280241EE0);
    v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241F48);
    sub_267FB035C(v145, v146 + *(v147 + 48), &qword_280241EB0);
    sub_267FC16BC(v145, &qword_280241EB0);
    sub_267FC16BC(v144, &qword_280241EE0);
    sub_267FB035C(v146, v233, &qword_280241EA8);
    swift_storeEnumTagMultiPayload();
    sub_267FD4280();
    sub_267FC126C(&qword_280241F60, &qword_280241EA8);
    sub_26804D5AC();
    sub_267FC16BC(v146, &qword_280241EA8);
    sub_267FC16BC(v99, &qword_280241EB0);
    sub_267FC16BC(v143, &qword_280241EE0);
    (*(v222 + 8))(v221, v224);
    goto LABEL_17;
  }

  v99 = v216;
  if (v85 == *MEMORY[0x277D5D610])
  {
    (*(v80 + 96))(v87, v86);
    v119 = v174;
    v120 = *(v174 + 32);
    v220 = v79;
    v121 = v173;
    v122 = v176;
    v120(v173, v87, v176);
    v123 = v172;
    (*(v119 + 16))(v172, v121, v122);
    v124 = v175;
    sub_267FE54EC(v123, v175);
    sub_267FD43B4(v124, v196, type metadata accessor for MapAttachmentView);
    swift_storeEnumTagMultiPayload();
    sub_267FD436C(&qword_280241F30, type metadata accessor for LinkAttachmentView);
    sub_267FD436C(&qword_280241F38, type metadata accessor for MapAttachmentView);
    v125 = v197;
    sub_26804D5AC();
    sub_267FB035C(v125, v209, &qword_280241ED8);
    swift_storeEnumTagMultiPayload();
    sub_267FD40A8();
    sub_267FD4194();
    sub_26804D5AC();
    sub_267FC16BC(v125, &qword_280241ED8);
    sub_267FD4414(v124, type metadata accessor for MapAttachmentView);
    v126 = v121;
    v79 = v220;
    (*(v119 + 8))(v126, v122);
    goto LABEL_13;
  }

  if (v85 == *MEMORY[0x277D5D620])
  {
    (*(v80 + 96))(v87, v86);
    v134 = v166;
    v135 = v177;
    v136 = v168;
    (*(v166 + 32))(v177, v87, v168);
    v137 = v165;
    (*(v134 + 16))(v165, v135, v136);
    v138 = v167;
    sub_268003904(v137, v167);
    sub_267FD43B4(v138, v181, type metadata accessor for PhotoAttachmentView);
    swift_storeEnumTagMultiPayload();
    sub_267FD436C(&qword_280241F18, type metadata accessor for PhotoAttachmentView);
    sub_267FD436C(&qword_280241F20, type metadata accessor for VideoAttachmentView);
    v139 = v182;
    sub_26804D5AC();
    sub_267FB035C(v139, v209, &qword_280241EC0);
    swift_storeEnumTagMultiPayload();
    sub_267FD40A8();
    sub_267FD4194();
    sub_26804D5AC();
    sub_267FC16BC(v139, &qword_280241EC0);
    sub_267FD4414(v138, type metadata accessor for PhotoAttachmentView);
    (*(v134 + 8))(v177, v136);
    goto LABEL_13;
  }

  if (v85 == *MEMORY[0x277D5D628])
  {
    (*(v80 + 96))(v87, v86);
    v159 = v169;
    v160 = v180;
    v161 = v171;
    (*(v169 + 32))(v180, v87, v171);
    v162 = v170;
    (*(v159 + 16))(v170, v160, v161);
    v163 = *(v183 + 20);
    *(v162 + v163) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241F10);
    swift_storeEnumTagMultiPayload();
    sub_267FD43B4(v162, v181, type metadata accessor for VideoAttachmentView);
    swift_storeEnumTagMultiPayload();
    sub_267FD436C(&qword_280241F18, type metadata accessor for PhotoAttachmentView);
    sub_267FD436C(&qword_280241F20, type metadata accessor for VideoAttachmentView);
    v164 = v182;
    sub_26804D5AC();
    sub_267FB035C(v164, v209, &qword_280241EC0);
    swift_storeEnumTagMultiPayload();
    sub_267FD40A8();
    sub_267FD4194();
    sub_26804D5AC();
    sub_267FC16BC(v164, &qword_280241EC0);
    sub_267FD4414(v162, type metadata accessor for VideoAttachmentView);
    (*(v159 + 8))(v180, v161);
    goto LABEL_4;
  }

LABEL_20:
  result = sub_26804EC8C();
  __break(1u);
  return result;
}

uint64_t sub_267FD3FD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WatchConfirmationSnippetView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267FD4038@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for WatchConfirmationSnippetView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_267FD208C(v4, a1);
}

unint64_t sub_267FD40A8()
{
  result = qword_280241F28;
  if (!qword_280241F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241ED8);
    sub_267FD436C(&qword_280241F30, type metadata accessor for LinkAttachmentView);
    sub_267FD436C(&qword_280241F38, type metadata accessor for MapAttachmentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280241F28);
  }

  return result;
}

unint64_t sub_267FD4194()
{
  result = qword_280241F40;
  if (!qword_280241F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241EC0);
    sub_267FD436C(&qword_280241F18, type metadata accessor for PhotoAttachmentView);
    sub_267FD436C(&qword_280241F20, type metadata accessor for VideoAttachmentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280241F40);
  }

  return result;
}

unint64_t sub_267FD4280()
{
  result = qword_280241F50;
  if (!qword_280241F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241EF8);
    sub_267FD436C(&qword_280241DD0, type metadata accessor for AudioMessagePlayerView);
    sub_267FD436C(&qword_280241F58, MEMORY[0x277D63C80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280241F50);
  }

  return result;
}

uint64_t sub_267FD436C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267FD43B4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_267FD4414(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_267FD446C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_26804EC1C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_267FD4490()
{
  v1 = sub_26804C24C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FD0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FD8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v29 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v16 = type metadata accessor for TapbackButton(0);
  v17 = *(v16 + 20);
  v30 = v2;
  (*(v2 + 16))(v15, v0 + v17, v1);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v1);
  v18 = (v0 + *(v16 + 28));
  v20 = *v18;
  v19 = v18[1];
  v31 = v20;
  v32 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802420B8);
  sub_26804DDEC();
  sub_26803B048(v13);

  v21 = *(v5 + 56);
  sub_267FD9D8C(v15, v7, &qword_280241FD8);
  sub_267FD9D8C(v13, &v7[v21], &qword_280241FD8);
  if (__swift_getEnumTagSinglePayload(v7, 1, v1) != 1)
  {
    v23 = v29;
    sub_267FD9D8C(v7, v29, &qword_280241FD8);
    if (__swift_getEnumTagSinglePayload(&v7[v21], 1, v1) != 1)
    {
      v24 = v30;
      v25 = v28;
      (*(v30 + 32))(v28, &v7[v21], v1);
      sub_267FD9028(&qword_280241FE0, MEMORY[0x277D5D3D8]);
      v22 = sub_26804E6AC();
      v26 = *(v24 + 8);
      v26(v25, v1);
      sub_267FC16BC(v13, &qword_280241FD8);
      sub_267FC16BC(v15, &qword_280241FD8);
      v26(v23, v1);
      sub_267FC16BC(v7, &qword_280241FD8);
      return v22 & 1;
    }

    sub_267FC16BC(v13, &qword_280241FD8);
    sub_267FC16BC(v15, &qword_280241FD8);
    (*(v30 + 8))(v23, v1);
    goto LABEL_6;
  }

  sub_267FC16BC(v13, &qword_280241FD8);
  sub_267FC16BC(v15, &qword_280241FD8);
  if (__swift_getEnumTagSinglePayload(&v7[v21], 1, v1) != 1)
  {
LABEL_6:
    sub_267FC16BC(v7, &qword_280241FD0);
    v22 = 0;
    return v22 & 1;
  }

  sub_267FC16BC(v7, &qword_280241FD8);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_267FD48FC()
{
  v1 = sub_26804C24C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v24 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FD0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FD8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v23 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  (*(v2 + 16))(&v23 - v15, v0, v1);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v1);
  type metadata accessor for TapbackAnimationView(0);
  sub_26803B048(v14);
  v17 = *(v5 + 56);
  sub_267FD9D8C(v16, v7, &qword_280241FD8);
  sub_267FD9D8C(v14, &v7[v17], &qword_280241FD8);
  if (__swift_getEnumTagSinglePayload(v7, 1, v1) != 1)
  {
    sub_267FD9D8C(v7, v11, &qword_280241FD8);
    if (__swift_getEnumTagSinglePayload(&v7[v17], 1, v1) != 1)
    {
      v19 = &v7[v17];
      v20 = v24;
      (*(v2 + 32))(v24, v19, v1);
      sub_267FD9028(&qword_280241FE0, MEMORY[0x277D5D3D8]);
      v18 = sub_26804E6AC();
      v21 = *(v2 + 8);
      v21(v20, v1);
      sub_267FC16BC(v14, &qword_280241FD8);
      sub_267FC16BC(v16, &qword_280241FD8);
      v21(v11, v1);
      sub_267FC16BC(v7, &qword_280241FD8);
      return v18 & 1;
    }

    sub_267FC16BC(v14, &qword_280241FD8);
    sub_267FC16BC(v16, &qword_280241FD8);
    (*(v2 + 8))(v11, v1);
    goto LABEL_6;
  }

  sub_267FC16BC(v14, &qword_280241FD8);
  sub_267FC16BC(v16, &qword_280241FD8);
  if (__swift_getEnumTagSinglePayload(&v7[v17], 1, v1) != 1)
  {
LABEL_6:
    sub_267FC16BC(v7, &qword_280241FD0);
    v18 = 0;
    return v18 & 1;
  }

  sub_267FC16BC(v7, &qword_280241FD8);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_267FD4D14()
{
  v1 = v0;
  v2 = sub_26804C24C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v26 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FD0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FD8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v27 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = type metadata accessor for TapbackButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242000);
  sub_26804CE5C();
  v18 = v3;
  (*(v3 + 16))(v14, v1 + *(v17 + 20), v2);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v2);
  v19 = *(v6 + 56);
  sub_267FD9D8C(v16, v8, &qword_280241FD8);
  sub_267FD9D8C(v14, &v8[v19], &qword_280241FD8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) != 1)
  {
    v21 = v27;
    sub_267FD9D8C(v8, v27, &qword_280241FD8);
    if (__swift_getEnumTagSinglePayload(&v8[v19], 1, v2) != 1)
    {
      v22 = v3;
      v23 = v26;
      (*(v18 + 32))(v26, &v8[v19], v2);
      sub_267FD9028(&qword_280241FE0, MEMORY[0x277D5D3D8]);
      v20 = sub_26804E6AC();
      v24 = *(v22 + 8);
      v24(v23, v2);
      sub_267FC16BC(v14, &qword_280241FD8);
      sub_267FC16BC(v16, &qword_280241FD8);
      v24(v21, v2);
      sub_267FC16BC(v8, &qword_280241FD8);
      return v20 & 1;
    }

    sub_267FC16BC(v14, &qword_280241FD8);
    sub_267FC16BC(v16, &qword_280241FD8);
    (*(v3 + 8))(v21, v2);
    goto LABEL_6;
  }

  sub_267FC16BC(v14, &qword_280241FD8);
  sub_267FC16BC(v16, &qword_280241FD8);
  if (__swift_getEnumTagSinglePayload(&v8[v19], 1, v2) != 1)
  {
LABEL_6:
    sub_267FC16BC(v8, &qword_280241FD0);
    v20 = 0;
    return v20 & 1;
  }

  sub_267FC16BC(v8, &qword_280241FD8);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_267FD5154@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v81 = a1;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FD8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_21();
  v79 = v4;
  v5 = type metadata accessor for TapbackButton(0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242038);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  v14 = &v67 - v13;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242040);
  OUTLINED_FUNCTION_1();
  v70 = v15;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v16);
  v18 = &v67 - v17;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242048);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_21();
  v72 = v20;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242050);
  OUTLINED_FUNCTION_1();
  v75 = v21;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_21();
  v86 = v23;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242058);
  OUTLINED_FUNCTION_1();
  v76 = v24;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_21();
  v74 = v26;
  OUTLINED_FUNCTION_5_3();
  sub_267FD9360(v2, &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
  v28 = *(v7 + 80);
  v29 = (v28 + 16) & ~v28;
  v83 = v29 + v9;
  v84 = v28;
  v30 = swift_allocObject();
  v85 = v29;
  v69 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267FD93C0(v69, v30 + v29);
  v87 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242068);
  sub_267FD9444();
  sub_26804DE2C();
  v31 = sub_26804DC8C();
  v32 = sub_26804D7AC();
  v33 = &v14[*(v11 + 36)];
  *v33 = v31;
  v33[8] = v32;
  v34 = sub_267FD4490();
  if (sub_267FD4D14())
  {
    v35 = v2 + v5[9];
    v36 = *v35;
    v37 = *(v35 + 8);
    v89[0] = v36;
    *&v89[8] = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
    sub_26804DDEC();
    v38 = v88;
  }

  else
  {
    v38 = 0;
  }

  v39 = v5[6];
  v89[0] = v34 & 1;
  v89[1] = v38;
  *&v89[8] = *(v2 + v39);
  v40 = sub_267FD9500();
  v41 = sub_267FD95E4();
  sub_26804DACC();
  sub_267FC16BC(v14, &qword_280242038);
  *v89 = 0;
  *&v89[8] = 0xE000000000000000;
  sub_26804EB4C();

  strcpy(v89, "tapbackButton_");
  v89[15] = -18;
  v42 = sub_26804C23C();
  MEMORY[0x26D60D390](v42);

  *v89 = v11;
  *&v89[8] = &type metadata for TapbackButtonStyle;
  *&v89[16] = v40;
  v90 = v41;
  swift_getOpaqueTypeConformance2();
  v43 = v72;
  v44 = v71;
  sub_26804DB6C();

  (*(v70 + 8))(v18, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242000);
  v82 = v2;
  v45 = v79;
  sub_26804CE5C();
  OUTLINED_FUNCTION_5_3();
  v71 = v46;
  v47 = v69;
  sub_267FD9360(v2, v69, v48);
  v49 = swift_allocObject();
  sub_267FD93C0(v47, v49 + v85);
  v70 = sub_267FD9810();
  v68 = sub_267FD9924(&qword_2802420B0, &qword_280241FE0);
  v50 = v73;
  v51 = v80;
  sub_26804DBDC();

  sub_267FC16BC(v45, &qword_280241FD8);
  sub_267FB39B0(v43);
  v52 = v82;
  v53 = (v82 + v5[7]);
  v55 = *v53;
  v54 = v53[1];
  *v89 = v55;
  *&v89[8] = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802420B8);
  sub_26804DDEC();
  sub_26803B048(v45);

  v56 = v52;
  v57 = v71;
  sub_267FD9360(v56, v47, v71);
  v58 = swift_allocObject();
  v59 = v85;
  sub_267FD93C0(v47, v58 + v85);
  *v89 = v50;
  *&v89[8] = v51;
  *&v89[16] = v70;
  v90 = v68;
  swift_getOpaqueTypeConformance2();
  v60 = v74;
  v61 = v77;
  v62 = v86;
  sub_26804DBDC();

  sub_267FC16BC(v45, &qword_280241FD8);
  (*(v75 + 8))(v62, v61);
  sub_267FD9360(v82, v47, v57);
  v63 = swift_allocObject();
  sub_267FD93C0(v47, v63 + v59);
  v64 = v81;
  (*(v76 + 32))(v81, v60, v78);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802420C0);
  v66 = (v64 + *(result + 36));
  *v66 = sub_267FD9A5C;
  v66[1] = v63;
  v66[2] = 0;
  v66[3] = 0;
  return result;
}

void sub_267FD59D0()
{
  if (sub_267FD4490())
  {
    sub_267FD5A04();
  }

  else
  {
    sub_267FD62F8();
  }
}

void sub_267FD5A04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241810);
  MEMORY[0x28223BE20](v1 - 8);
  v54 = &v52 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241818);
  MEMORY[0x28223BE20](v3 - 8);
  v53 = &v52 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241820);
  MEMORY[0x28223BE20](v5 - 8);
  v62 = &v52 - v6;
  v56 = sub_26804C85C();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26804BF7C();
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x28223BE20](v9);
  v57 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26804C30C();
  v58 = *(v11 - 8);
  v59 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FD8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v52 - v15;
  v17 = (v0 + *(type metadata accessor for TapbackButton(0) + 28));
  v18 = *v17;
  v19 = v17[1];
  v63[0] = *v17;
  v63[1] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802420B8);
  sub_26804DDEC();
  v20 = sub_26803B3C0();

  if (v20)
  {
    v63[0] = v18;
    v63[1] = v19;
    sub_26804DDEC();
    sub_26803B3D4(0);

    v63[0] = v18;
    v63[1] = v19;
    sub_26804DDEC();
    v21 = sub_26804C24C();
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v21);
    sub_26803B1BC(v16);

    v63[0] = v18;
    v63[1] = v19;
    sub_26804DDEC();
    sub_26803B4A0(1);

    sub_26804C20C();
    v22 = v13;
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v23 = sub_26804CD4C();
    __swift_project_value_buffer(v23, qword_2802487E0);
    v24 = sub_26804CD3C();
    v25 = sub_26804E87C();
    v26 = os_log_type_enabled(v24, v25);
    v27 = v62;
    if (v26)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_267FA7000, v24, v25, "#TapbackButton The selected tapback was tapped again, removing tapback", v28, 2u);
      MEMORY[0x26D60E1E0](v28, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241828);
    v29 = swift_allocObject();
    v52 = xmmword_268050170;
    *(v29 + 16) = xmmword_268050170;
    v30 = v55;
    v31 = v56;
    (*(v55 + 104))(v8, *MEMORY[0x277D5D6F8], v56);
    sub_26804C84C();
    (*(v30 + 8))(v8, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241830);
    inited = swift_initStackObject();
    *(inited + 16) = v52;
    strcpy(v63, "buttonPressed");
    HIWORD(v63[1]) = -4864;
    v33 = MEMORY[0x277D837D0];
    sub_26804EAFC();
    v34 = sub_26804C2FC();
    *(inited + 96) = v33;
    *(inited + 72) = v34;
    *(inited + 80) = v35;
    sub_26804E65C();
    v36 = sub_26804BFFC();
    v37 = MEMORY[0x277D63778];
    *(v29 + 56) = v36;
    *(v29 + 64) = v37;
    __swift_allocate_boxed_opaque_existential_1((v29 + 32));
    sub_26804BFEC();

    v63[0] = 0;
    v63[1] = 0xE000000000000000;
    sub_26804EB4C();
    sub_26804C2FC();
    v38 = sub_26804E6FC();
    v40 = v39;

    v63[0] = v38;
    v63[1] = v40;
    MEMORY[0x26D60D390](0x5F4E4F545455425FLL, 0xEE00444550504154);
    v41 = v57;
    sub_26804BF8C();
    sub_26804E20C();
    v42 = sub_26804E40C();
    if (__swift_getEnumTagSinglePayload(v27, 1, v42) == 1)
    {
      (*(v60 + 8))(v41, v61);
      (*(v58 + 8))(v22, v59);
      sub_267FC16BC(v27, &qword_280241820);
    }

    else
    {
      v48 = v60;
      v47 = v61;
      v49 = v53;
      (*(v60 + 16))(v53, v41, v61);
      __swift_storeEnumTagSinglePayload(v49, 0, 1, v47);
      v50 = sub_26804E2DC();
      v51 = v54;
      __swift_storeEnumTagSinglePayload(v54, 1, 1, v50);
      sub_26804E3FC();
      sub_267FC16BC(v51, &qword_280241810);
      sub_267FC16BC(v49, &qword_280241818);
      (*(v48 + 8))(v41, v47);
      (*(v58 + 8))(v22, v59);
      (*(*(v42 - 8) + 8))(v27, v42);
    }
  }

  else
  {
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v43 = sub_26804CD4C();
    __swift_project_value_buffer(v43, qword_2802487E0);
    v44 = sub_26804CD3C();
    v45 = sub_26804E88C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_267FA7000, v44, v45, "#TapbackButton received deselection tap when snippet cannot send a request", v46, 2u);
      MEMORY[0x26D60E1E0](v46, -1, -1);
    }
  }
}

void sub_267FD62F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241810);
  MEMORY[0x28223BE20](v1 - 8);
  v62 = &v59 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241818);
  MEMORY[0x28223BE20](v3 - 8);
  v61 = &v59 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241820);
  MEMORY[0x28223BE20](v5 - 8);
  v68 = &v59 - v6;
  v64 = sub_26804C85C();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26804BF7C();
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x28223BE20](v9);
  v65 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26804C30C();
  v69 = *(v11 - 8);
  v70 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v59 - v15;
  v17 = type metadata accessor for TapbackButton(0);
  v18 = (v0 + *(v17 + 28));
  v19 = *v18;
  v20 = v18[1];
  v71[0] = *v18;
  v71[1] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802420B8);
  sub_26804DDEC();
  v21 = sub_26803B3C0();

  if (v21)
  {
    v71[0] = v19;
    v71[1] = v20;
    sub_26804DDEC();
    sub_26803B3D4(0);

    v71[0] = v19;
    v71[1] = v20;
    sub_26804DDEC();
    sub_26803B684(v0 + *(v17 + 20));

    v71[0] = v19;
    v71[1] = v20;
    sub_26804DDEC();
    sub_26803B4A0(1);

    sub_26804C1FC();
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v22 = sub_26804CD4C();
    __swift_project_value_buffer(v22, qword_2802487E0);
    v24 = v69;
    v23 = v70;
    (*(v69 + 16))(v14, v16, v70);
    v25 = sub_26804CD3C();
    v26 = sub_26804E87C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v59 = v16;
      v29 = v28;
      v71[0] = v28;
      *v27 = 136315138;
      v30 = sub_26804C2FC();
      v32 = v31;
      v60 = *(v24 + 8);
      v60(v14, v23);
      v33 = sub_267FAE0C4(v30, v32, v71);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_267FA7000, v25, v26, "#TapbackButton %s tapback selected", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      v34 = v29;
      v16 = v59;
      MEMORY[0x26D60E1E0](v34, -1, -1);
      MEMORY[0x26D60E1E0](v27, -1, -1);
    }

    else
    {

      v60 = *(v24 + 8);
      v60(v14, v23);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241828);
    v39 = swift_allocObject();
    v59 = xmmword_268050170;
    *(v39 + 16) = xmmword_268050170;
    v40 = v63;
    v41 = v64;
    (*(v63 + 104))(v8, *MEMORY[0x277D5D6F8], v64);
    sub_26804C84C();
    (*(v40 + 8))(v8, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241830);
    inited = swift_initStackObject();
    *(inited + 16) = v59;
    strcpy(v71, "buttonPressed");
    HIWORD(v71[1]) = -4864;
    v43 = MEMORY[0x277D837D0];
    sub_26804EAFC();
    v44 = sub_26804C2FC();
    *(inited + 96) = v43;
    *(inited + 72) = v44;
    *(inited + 80) = v45;
    sub_26804E65C();
    v46 = sub_26804BFFC();
    v47 = MEMORY[0x277D63778];
    *(v39 + 56) = v46;
    *(v39 + 64) = v47;
    __swift_allocate_boxed_opaque_existential_1((v39 + 32));
    sub_26804BFEC();

    v71[0] = 0;
    v71[1] = 0xE000000000000000;
    sub_26804EB4C();
    sub_26804C2FC();
    v48 = sub_26804E6FC();
    v50 = v49;

    v71[0] = v48;
    v71[1] = v50;
    MEMORY[0x26D60D390](0x5F4E4F545455425FLL, 0xEE00444550504154);
    v51 = v65;
    sub_26804BF8C();
    v52 = v68;
    sub_26804E20C();
    v53 = sub_26804E40C();
    if (__swift_getEnumTagSinglePayload(v52, 1, v53) == 1)
    {
      (*(v66 + 8))(v51, v67);
      v60(v16, v70);
      sub_267FC16BC(v52, &qword_280241820);
    }

    else
    {
      v55 = v66;
      v54 = v67;
      v56 = v61;
      (*(v66 + 16))(v61, v51, v67);
      __swift_storeEnumTagSinglePayload(v56, 0, 1, v54);
      v57 = sub_26804E2DC();
      v58 = v62;
      __swift_storeEnumTagSinglePayload(v62, 1, 1, v57);
      sub_26804E3FC();
      sub_267FC16BC(v58, &qword_280241810);
      sub_267FC16BC(v56, &qword_280241818);
      (*(v55 + 8))(v51, v54);
      v60(v16, v70);
      (*(*(v53 - 8) + 8))(v52, v53);
    }
  }

  else
  {
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v35 = sub_26804CD4C();
    __swift_project_value_buffer(v35, qword_2802487E0);
    v36 = sub_26804CD3C();
    v37 = sub_26804E88C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_267FA7000, v36, v37, "#TapbackButton received selection tap when snippet cannot send a request", v38, 2u);
      MEMORY[0x26D60E1E0](v38, -1, -1);
    }
  }
}

uint64_t sub_267FD6CA0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_26804C24C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TapbackButton(0);
  v9 = *(v5 + 16);
  v9(v7, a1 + v8[5], v4);
  v10 = (a1 + v8[7]);
  v12 = *v10;
  v11 = v10[1];
  *&v24 = v12;
  *(&v24 + 1) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802420B8);
  sub_26804DDEC();
  v13 = v23[1];
  v14 = (a1 + v8[6]);
  v16 = *v14;
  v15 = v14[1];
  v9(a2, v7, v4);

  v17 = sub_26804C21C();
  result = (*(v5 + 8))(v7, v4);
  if (v17 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v19 = type metadata accessor for TapbackAnimationView(0);
    *&a2[v19[5]] = 2 * v17;
    *&a2[v19[7]] = v13;
    v20 = &a2[v19[6]];
    *v20 = v16;
    *(v20 + 1) = v15;
    sub_26804DFAC();
    sub_26804CFBC();
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242068);
    v21 = &a2[*(result + 36)];
    v22 = v25;
    *v21 = v24;
    *(v21 + 1) = v22;
    *(v21 + 2) = v26;
  }

  return result;
}

uint64_t sub_267FD6EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26804C24C();
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FD0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FD8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  v30 = type metadata accessor for TapbackButton(0);
  v31 = a3;
  v18 = (a3 + *(v30 + 28));
  v20 = *v18;
  v19 = v18[1];
  v33 = v20;
  v34 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802420B8);
  sub_26804DDEC();
  sub_26803B048(v17);

  v21 = *(v9 + 56);
  sub_267FD9D8C(a2, v11, &qword_280241FD8);
  sub_267FD9D8C(v17, &v11[v21], &qword_280241FD8);
  if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
  {
    sub_267FC16BC(v17, &qword_280241FD8);
    if (__swift_getEnumTagSinglePayload(&v11[v21], 1, v5) == 1)
    {
      return sub_267FC16BC(v11, &qword_280241FD8);
    }

    goto LABEL_6;
  }

  sub_267FD9D8C(v11, v15, &qword_280241FD8);
  if (__swift_getEnumTagSinglePayload(&v11[v21], 1, v5) == 1)
  {
    sub_267FC16BC(v17, &qword_280241FD8);
    (*(v29 + 8))(v15, v5);
LABEL_6:
    sub_267FC16BC(v11, &qword_280241FD0);
LABEL_7:
    v23 = (v31 + *(v30 + 36));
    v24 = *v23;
    v25 = *(v23 + 1);
    LOBYTE(v33) = v24;
    v34 = v25;
    LOBYTE(v32) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
    return sub_26804DDFC();
  }

  v26 = v29;
  (*(v29 + 32))(v7, &v11[v21], v5);
  sub_267FD9028(&qword_280241FE0, MEMORY[0x277D5D3D8]);
  v27 = sub_26804E6AC();
  v28 = *(v26 + 8);
  v28(v7, v5);
  sub_267FC16BC(v17, &qword_280241FD8);
  v28(v15, v5);
  result = sub_267FC16BC(v11, &qword_280241FD8);
  if ((v27 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_267FD72A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FD8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_26804C24C();
  LODWORD(a2) = __swift_getEnumTagSinglePayload(a2, 1, v8);
  v9 = type metadata accessor for TapbackButton(0);
  v10 = (a3 + *(v9 + 36));
  v11 = *v10;
  v12 = *(v10 + 1);
  if (a2 == 1)
  {
    LOBYTE(v20) = v11;
    v21 = v12;
    LOBYTE(v19) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
    return sub_26804DDFC();
  }

  else
  {
    v14 = v9;
    LOBYTE(v20) = v11;
    v21 = v12;
    LOBYTE(v19) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
    sub_26804DDFC();
    v15 = (a3 + *(v14 + 28));
    v17 = *v15;
    v16 = v15[1];
    v20 = v17;
    v21 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802420B8);
    sub_26804DDEC();
    sub_26803B048(v7);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242000);
    return sub_26804CE6C();
  }
}

uint64_t sub_267FD7438(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FD8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v18[-v6];
  v8 = type metadata accessor for TapbackButton(0);
  v9 = (a1 + v8[7]);
  v11 = *v9;
  v10 = v9[1];
  v19 = v11;
  v20 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802420B8);
  sub_26804DDEC();
  sub_26803B048(v7);

  v12 = sub_26804C24C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v12);
  result = sub_267FC16BC(v7, &qword_280241FD8);
  if (EnumTagSinglePayload != 1)
  {
    v15 = (a1 + v8[9]);
    v16 = *v15;
    v17 = *(v15 + 1);
    LOBYTE(v19) = v16;
    v20 = v17;
    v18[8] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
    sub_26804DDFC();
    result = sub_267FD4490();
    if (result)
    {
      (*(*(v12 - 8) + 16))(v5, a1 + v8[5], v12);
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242000);
      return sub_26804CE6C();
    }
  }

  return result;
}

uint64_t sub_267FD763C()
{
  v1 = sub_26804C24C();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = type metadata accessor for TapbackAnimationView(0);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_2_5();
  sub_267FD9360(v0, v11, v12);
  (*(v3 + 16))(v7, v0, v1);
  type metadata accessor for TapbackAnimationView.Coordinator(0);
  v13 = swift_allocObject();
  sub_267FD7760(v11, v7);
  return v13;
}

uint64_t sub_267FD7760(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtCV14SiriMessagesUI20TapbackAnimationView11Coordinator_hasShownSelectionAnimation) = 0;
  *(v2 + OBJC_IVAR____TtCV14SiriMessagesUI20TapbackAnimationView11Coordinator_hasShownInitialAnimation) = 0;
  OUTLINED_FUNCTION_2_5();
  sub_267FD9360(v6, v2 + v5, v7);
  v8 = sub_26800B95C(a2);
  sub_26804C24C();
  OUTLINED_FUNCTION_4();
  (*(v9 + 8))(a2);
  sub_267FD889C(a1);
  *(v2 + OBJC_IVAR____TtCV14SiriMessagesUI20TapbackAnimationView11Coordinator_asset) = v8;
  return v2;
}

uint64_t sub_267FD780C()
{
  sub_267FD889C(v0 + OBJC_IVAR____TtCV14SiriMessagesUI20TapbackAnimationView11Coordinator_parent);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_267FD78A8()
{
  result = type metadata accessor for TapbackAnimationView(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_267FD7998()
{
  sub_26804C24C();
  if (v0 <= 0x3F)
  {
    sub_267FD92F4(319, &qword_280241FA0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for TapbackCarPlaySnippetViewModel();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_267FD7A6C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TapbackAnimationView.Coordinator(0);
  result = sub_26804CD9C();
  *a1 = result;
  return result;
}

id sub_267FD7AAC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v1 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v1 setTag_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FB0);
  sub_26804D6DC();

  v2 = sub_26800C01C();

  v3 = sub_267FD7E78(v2);

  [v1 setImage_];

  [v1 setContentMode_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  v18 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FE8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_268050FC0;
  v5 = [v0 widthAnchor];
  v6 = [v5 constraintEqualToConstant_];

  *(v4 + 32) = v6;
  v7 = OUTLINED_FUNCTION_10_1([v0 heightAnchor]);

  *(v4 + 40) = v7;
  v8 = OUTLINED_FUNCTION_10_1([v1 widthAnchor]);

  *(v4 + 48) = v8;
  v9 = OUTLINED_FUNCTION_10_1([v1 heightAnchor]);

  *(v4 + 56) = v9;
  v10 = [v1 centerXAnchor];
  v11 = [v0 centerXAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v4 + 64) = v12;
  v13 = [v1 centerYAnchor];

  v14 = [v0 centerYAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v4 + 72) = v15;
  sub_267FCAB20(0, &qword_280241FF0);
  v16 = sub_26804E77C();

  [v18 activateConstraints_];

  sub_267FD7F0C(v1);
  if (sub_267FD48FC())
  {
    sub_26804D6DC();

    *(v19 + OBJC_IVAR____TtCV14SiriMessagesUI20TapbackAnimationView11Coordinator_hasShownSelectionAnimation) = 1;
  }

  else
  {
  }

  return v0;
}

char *sub_267FD7E78(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_267FD8F04((result - 1), (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    return MEMORY[0x26D60D7C0](v3, a1);
  }

  result = sub_26804EC1C();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

id sub_267FD7F0C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FB0);
  sub_26804D6DC();
  if (*(v26 + OBJC_IVAR____TtCV14SiriMessagesUI20TapbackAnimationView11Coordinator_hasShownInitialAnimation) == 1)
  {
    v2 = sub_26800C3FC();
  }

  else
  {
    v2 = sub_26800C01C();
  }

  v3 = v2;

  v4 = sub_267FDA00C(v3);
  if (!v4)
  {
  }

  v5 = v4;
  v21 = a1;
  sub_267FCAB20(0, &qword_280241FC0);
  result = sub_267FD8278(0x73746E65746E6F63, 0xE800000000000000);
  v20 = result;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v5 == v7)
    {
      sub_267FD8FB0(v8, v20, &selRef_setValues_);
      v16 = sub_267FD446C(v3);

      v17 = v20;
      [v17 setDuration_];
      LODWORD(v18) = 1.0;
      [v17 setRepeatCount_];

      [v17 setCalculationMode_];
      v19 = [v21 layer];
      sub_267FD8F28(v17, 0x6F6974616D696E61, 0xE90000000000006ELL, v19);

      sub_26804D6DC();
      *(v26 + OBJC_IVAR____TtCV14SiriMessagesUI20TapbackAnimationView11Coordinator_hasShownInitialAnimation) = 1;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D60D7C0](v7, v3);
    }

    else
    {
      if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      result = *(v3 + 8 * v7 + 32);
    }

    v9 = result;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    v10 = [result CGImage];
    if (v10)
    {
      v11 = v10;
      type metadata accessor for CGImage();
      v23 = v12;
      *&v22 = v11;
      sub_267FD9070(&v22, &v26);
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
    }

    v24 = v26;
    v25 = v27;

    if (*(&v25 + 1))
    {
      sub_267FD9070(&v24, &v26);
      sub_267FD9070(&v26, &v24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_268006E1C();
        v8 = v14;
      }

      v13 = *(v8 + 16);
      if (v13 >= *(v8 + 24) >> 1)
      {
        sub_268006E1C();
        v8 = v15;
      }

      *(v8 + 16) = v13 + 1;
      result = sub_267FD9070(&v24, (v8 + 32 * v13 + 32));
    }

    else
    {
      result = sub_267FC16BC(&v24, &qword_280241FC8);
    }

    ++v7;
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_267FD8278(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_26804E6BC();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() animationWithKeyPath_];

  return v3;
}

void sub_267FD82E8(void *a1)
{
  v2 = v1;
  type metadata accessor for TapbackAnimationView(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  if ((sub_267FD48FC() & 1) == 0)
  {
    v27 = [a1 layer];
    sub_267FD8FB0(MEMORY[0x277D84F90], v27, &selRef_setFilters_);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FB0);
    sub_26804D6DC();
    *(v30 + OBJC_IVAR____TtCV14SiriMessagesUI20TapbackAnimationView11Coordinator_hasShownSelectionAnimation) = 0;
LABEL_12:

    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FB0);
  sub_26804D6DC();

  v8 = sub_26800C828();

  if (v8)
  {
    sub_268007A68(v8);
  }

  sub_26804D6DC();
  v9 = &unk_280248000;
  v10 = *(v30 + OBJC_IVAR____TtCV14SiriMessagesUI20TapbackAnimationView11Coordinator_hasShownSelectionAnimation);

  if ((v10 & 1) == 0)
  {
    v11 = [a1 viewWithTag_];
    if (v11)
    {
      v12 = v11;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (!v13)
      {

        return;
      }

      v14 = v13;
      if (qword_280241130 != -1)
      {
        swift_once();
      }

      v15 = sub_26804CD4C();
      __swift_project_value_buffer(v15, qword_2802487E0);
      OUTLINED_FUNCTION_2_5();
      sub_267FD9360(v2, v7, v16);
      v17 = sub_26804CD3C();
      v18 = sub_26804E88C();
      if (os_log_type_enabled(v17, v18))
      {
        v29 = v14;
        v19 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v30 = v28;
        *v19 = 136315138;
        sub_26804C24C();
        OUTLINED_FUNCTION_4_3();
        sub_267FD9028(v20, v21);
        v22 = sub_26804EC7C();
        v24 = v23;
        sub_267FD889C(v7);
        v25 = sub_267FAE0C4(v22, v24, &v30);
        v9 = &unk_280248000;

        *(v19 + 4) = v25;
        _os_log_impl(&dword_267FA7000, v17, v18, "#TapbackAnimationView updateUIView called for %s. Triggering selection animation.", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        MEMORY[0x26D60E1E0](v28, -1, -1);
        v26 = v19;
        v14 = v29;
        MEMORY[0x26D60E1E0](v26, -1, -1);
      }

      else
      {

        sub_267FD889C(v7);
      }

      sub_267FD7F0C(v14);
      sub_26804D6DC();

      *(v30 + v9[241]) = 1;
      goto LABEL_12;
    }
  }
}

uint64_t sub_267FD86A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267FD763C();
  *a1 = result;
  return result;
}

uint64_t sub_267FD86D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_267FD9028(&qword_280241FF8, type metadata accessor for TapbackAnimationView);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_267FD8768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_267FD9028(&qword_280241FF8, type metadata accessor for TapbackAnimationView);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_267FD87FC()
{
  sub_267FD9028(&qword_280241FF8, type metadata accessor for TapbackAnimationView);
  sub_26804D56C();
  __break(1u);
}

uint64_t sub_267FD889C(uint64_t a1)
{
  v2 = type metadata accessor for TapbackAnimationView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267FD88F8()
{
  v0 = sub_26804C26C();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  sub_26804C25C();
  v7 = (*(v2 + 88))(v6, v0);
  if (v7 == *MEMORY[0x277D5D410])
  {
    v8 = &selRef_systemBlueColor;
  }

  else
  {
    if (v7 != *MEMORY[0x277D5D400] && v7 != *MEMORY[0x277D5D408])
    {
      result = sub_26804EC8C();
      __break(1u);
      return result;
    }

    v8 = &selRef_systemGreenColor;
  }

  v10 = [objc_opt_self() *v8];
  return sub_26804DC1C();
}

uint64_t sub_267FD8A38@<X0>(int a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v51 = a4;
  v7 = sub_26804D6AC();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802420D0) - 8;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802420D8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_21();
  v49 = v19;
  sub_26804D6BC();
  if (sub_26804D6CC())
  {
    v20 = 0.3;
  }

  else
  {
    v20 = 1.0;
  }

  (*(v9 + 32))(v17, v13, v7);
  v21 = *(v14 + 44);
  v43 = v17;
  *&v17[v21] = v20;
  v22 = sub_26804DFAC();
  v44 = v23;
  v45 = v22;
  v50 = a1;
  v46 = a2;
  v47 = a3;
  if (a1)
  {
    v24 = sub_267FD88F8();
  }

  else
  {
    v24 = sub_26804DC8C();
  }

  v25 = v24;
  v42 = v24;
  sub_26804DFAC();
  sub_26804CFBC();
  v26 = v69;
  v27 = v70;
  v28 = v71;
  v29 = v72;
  v31 = v73;
  v30 = v74;
  v68 = v70;
  v67 = v72;
  v54[0] = v25;
  v54[1] = v69;
  LOBYTE(v54[2]) = v70;
  v54[3] = v71;
  LOBYTE(v54[4]) = v72;
  v54[5] = v73;
  v54[6] = v74;
  v32 = v44;
  v33 = v45;
  v54[7] = v45;
  v54[8] = v44;
  v34 = v49;
  sub_267FD9D3C(v43, v49, &qword_2802420D0);
  memcpy((v34 + *(v48 + 36)), v54, 0x48uLL);
  v55[0] = v42;
  v55[1] = v26;
  v56 = v27;
  v57 = v28;
  v58 = v29;
  v59 = v31;
  v60 = v30;
  v61 = v33;
  v62 = v32;
  sub_267FD9D8C(v54, v64, &qword_2802420E0);
  sub_267FC16BC(v55, &qword_2802420E0);
  v35 = sub_26804DFAC();
  v37 = v36;
  sub_267FD8DC0(v50 & 0x101, v53);
  memcpy(v63, v53, 0x78uLL);
  v63[15] = v35;
  v63[16] = v37;
  v38 = v51;
  sub_267FD9D3C(v34, v51, &qword_2802420D8);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802420E8);
  memcpy((v38 + *(v39 + 36)), v63, 0x88uLL);
  memcpy(v64, v53, sizeof(v64));
  v65 = v35;
  v66 = v37;
  sub_267FD9D8C(v63, &v52, &qword_2802420F0);
  return sub_267FC16BC(v64, &qword_2802420F0);
}

double sub_267FD8DC0@<D0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  if ((a1 & 0x100) != 0)
  {
    v4 = [objc_opt_self() _carSystemFocusColor];
    v3 = sub_26804DC1C();
  }

  else
  {
    v3 = sub_26804DC8C();
  }

  v5 = v3;
  sub_26804CF6C();
  v6 = sub_26804DFAC();
  v8 = v7;
  sub_26804DFAC();
  sub_26804CFBC();
  *a2 = v13;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  *(a2 + 40) = v5;
  *(a2 + 48) = 256;
  *(a2 + 56) = v6;
  *(a2 + 64) = v8;
  *(a2 + 72) = v10;
  *(a2 + 88) = v11;
  result = *&v12;
  *(a2 + 104) = v12;
  return result;
}

uint64_t sub_267FD8EE4@<X0>(uint64_t a1@<X8>)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_267FD8A38(v2 | *v1, *(v1 + 1), *(v1 + 2), a1);
}

unint64_t sub_267FD8F04(unint64_t result, char a2, uint64_t a3)
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

void sub_267FD8F28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_26804E6BC();

  [a4 addAnimation:a1 forKey:v6];
}

void sub_267FD8FB0(uint64_t a1, void *a2, SEL *a3)
{
  v5 = sub_26804E77C();

  [a2 *a3];
}

uint64_t sub_267FD9028(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_267FD9070(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_267FD90C8()
{
  sub_26804E22C();
  if (v0 <= 0x3F)
  {
    sub_26804C24C();
    if (v1 <= 0x3F)
    {
      sub_267FD92F4(319, &qword_280241FA0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_267FD91F4();
        if (v3 <= 0x3F)
        {
          sub_267FD924C();
          if (v4 <= 0x3F)
          {
            sub_267FD92F4(319, &qword_280242BB0, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
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

void sub_267FD91F4()
{
  if (!qword_280242018)
  {
    type metadata accessor for TapbackCarPlaySnippetViewModel();
    v0 = sub_26804DE1C();
    if (!v1)
    {
      atomic_store(v0, &qword_280242018);
    }
  }
}

void sub_267FD924C()
{
  if (!qword_280242020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241FD8);
    sub_267FD9924(&qword_280242028, &qword_280242030);
    v0 = sub_26804CE7C();
    if (!v1)
    {
      atomic_store(v0, &qword_280242020);
    }
  }
}

void sub_267FD92F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_267FD9360(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_267FD93C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TapbackButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_267FD9444()
{
  result = qword_280242070;
  if (!qword_280242070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242068);
    sub_267FD9028(&qword_280241FA8, type metadata accessor for TapbackAnimationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242070);
  }

  return result;
}

unint64_t sub_267FD9500()
{
  result = qword_280242078;
  if (!qword_280242078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242038);
    sub_267FC126C(&qword_280242080, &qword_280242088);
    sub_267FC126C(&qword_280242090, &qword_280242098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242078);
  }

  return result;
}

unint64_t sub_267FD95E4()
{
  result = qword_2802420A0;
  if (!qword_2802420A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802420A0);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for TapbackButton(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v12 = *(*(v1 - 8) + 64);
  sub_26804E22C();
  OUTLINED_FUNCTION_4();
  (*(v4 + 8))(v0 + v3);
  v5 = *(v1 + 20);
  v6 = sub_26804C24C();
  OUTLINED_FUNCTION_4();
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);

  v9 = v0 + v3 + *(v1 + 32);

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242060) + 32);
  if (!__swift_getEnumTagSinglePayload(v9 + v10, 1, v6))
  {
    v8(v9 + v10, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v12, v2 | 7);
}

unint64_t sub_267FD9810()
{
  result = qword_2802420A8;
  if (!qword_2802420A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242048);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242038);
    sub_267FD9500();
    sub_267FD95E4();
    swift_getOpaqueTypeConformance2();
    sub_267FD9028(&qword_280241C68, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802420A8);
  }

  return result;
}

uint64_t sub_267FD9924(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241FD8);
    OUTLINED_FUNCTION_4_3();
    sub_267FD9028(a2, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267FD99C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for TapbackButton(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_267FD9A74(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TapbackButton(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_267FD9AFC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_267FD9B50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_267FD9BB4()
{
  result = qword_2802420C8;
  if (!qword_2802420C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802420C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242050);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241FD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242048);
    sub_267FD9810();
    sub_267FD9924(&qword_2802420B0, &qword_280241FE0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802420C8);
  }

  return result;
}

uint64_t sub_267FD9D3C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_12_1(a1, a2, a3);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(v3, v4);
  return v3;
}

uint64_t sub_267FD9D8C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_12_1(a1, a2, a3);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(v3, v4);
  return v3;
}

unint64_t sub_267FD9DDC()
{
  result = qword_2802420F8;
  if (!qword_2802420F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802420E8);
    sub_267FD9E94();
    sub_267FC126C(&qword_280242120, &qword_2802420F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802420F8);
  }

  return result;
}

unint64_t sub_267FD9E94()
{
  result = qword_280242100;
  if (!qword_280242100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802420D8);
    sub_267FD9F4C();
    sub_267FC126C(&qword_280242118, &qword_2802420E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242100);
  }

  return result;
}

unint64_t sub_267FD9F4C()
{
  result = qword_280242108;
  if (!qword_280242108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802420D0);
    sub_267FD9028(&qword_280242110, MEMORY[0x277CDE278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242108);
  }

  return result;
}

uint64_t sub_267FDA074@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26804C37C();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v10 = type metadata accessor for CarPlayHeaderView(0);
  v11 = v10[6];
  *(a2 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241DB8);
  swift_storeEnumTagMultiPayload();
  v12 = a2 + v10[7];
  *v12 = sub_26804CE8C() & 1;
  *(v12 + 8) = v13;
  *(v12 + 16) = v14 & 1;
  (*(v6 + 16))(a2, a1, v4);
  v15 = *(v6 + 32);
  v15(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  result = v15(v17 + v16, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v19 = a2 + v10[5];
  *v19 = sub_267FAE698;
  *(v19 + 8) = v17;
  *(v19 + 16) = 0;
  return result;
}

uint64_t sub_267FDA224@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v28 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242310);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  sub_26804C31C();
  sub_267FB0964(v40);

  memcpy(__dst, v40, sizeof(__dst));
  v40[0] = a1;
  v40[1] = a2;
  sub_267FB0C1C();

  v8 = sub_26804D95C();
  v10 = v9;
  v12 = v11;
  sub_26804D83C();
  v13 = sub_26804D81C();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v13);
  sub_26804D85C();
  sub_267FDC010(v7, &qword_280242310);
  v14 = sub_26804D93C();
  v16 = v15;
  v18 = v17;

  sub_267FB0FB4(v8, v10, v12 & 1);

  v19 = [objc_opt_self() secondaryLabelColor];
  v40[0] = sub_26804DC1C();
  v20 = sub_26804D90C();
  v22 = v21;
  LOBYTE(v8) = v23;
  v25 = v24;
  sub_267FB0FB4(v14, v16, v18 & 1);

  sub_26804DFBC();
  sub_26804D13C();
  v39 = v8 & 1;
  memcpy(v31, __dst, 0xA1uLL);
  memcpy(v29, __dst, 0xA1uLL);
  v32[0] = v20;
  v32[1] = v22;
  LOBYTE(v32[2]) = v8 & 1;
  *(&v32[2] + 1) = *v38;
  HIDWORD(v32[2]) = *&v38[3];
  v32[3] = v25;
  memcpy(&v32[4], v30, 0x70uLL);
  memcpy(&v29[168], v32, 0x90uLL);
  memcpy(v28, v29, 0x138uLL);
  v33[0] = v20;
  v33[1] = v22;
  v34 = v8 & 1;
  *v35 = *v38;
  *&v35[3] = *&v38[3];
  v36 = v25;
  memcpy(v37, v30, sizeof(v37));
  sub_267FDC224(v31, v40, &qword_2802422E0);
  sub_267FDC224(v32, v40, &qword_2802422F0);
  sub_267FDC010(v33, &qword_2802422F0);
  memcpy(v40, __dst, 0xA1uLL);
  return sub_267FDC010(v40, &qword_2802422E0);
}

uint64_t sub_267FDA5D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_26804D10C();
  v4 = *(v3 - 8);
  v31 = v3;
  v32 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CarPlayHeaderView(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242200);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242208);
  MEMORY[0x28223BE20](v30);
  v15 = &v30 - v14;
  sub_267FB178C(a1, &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  sub_267FB17F0(&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v34 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242210);
  sub_267FDBB94();
  sub_26804DE2C();
  v13[*(v11 + 36)] = 0;
  sub_26804D0FC();
  sub_267FDBE14();
  sub_267FB15EC(&qword_280242288, MEMORY[0x277CDDB18]);
  v18 = v31;
  sub_26804DABC();
  (*(v32 + 8))(v6, v18);
  sub_267FDC010(v13, &qword_280242200);
  sub_26804DFCC();
  sub_26804CFBC();
  v19 = &v15[*(v30 + 36)];
  v20 = v38;
  *v19 = v37;
  *(v19 + 1) = v20;
  *(v19 + 2) = v39;
  v21 = a1 + *(v8 + 36);
  v22 = *v21;
  v23 = *(v21 + 8);
  LOBYTE(v21) = *(v21 + 16);
  LOBYTE(v41[0]) = v22;
  v41[1] = v23;
  LOBYTE(v41[2]) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A28);
  sub_26804CE4C();
  sub_267FDBEF8();
  v24 = v33;
  sub_26804DBAC();

  sub_267FDC010(v15, &qword_280242208);
  v25 = sub_26804DFAC();
  v27 = v26;
  sub_267FDAF0C(v36);
  memcpy(v40, v36, 0xE8uLL);
  v40[29] = v25;
  v40[30] = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242298);
  memcpy((v24 + *(v28 + 36)), v40, 0xF8uLL);
  memcpy(v41, v36, 0xE8uLL);
  v41[29] = v25;
  v41[30] = v27;
  sub_267FDC224(v40, &v35, &qword_2802422A0);
  return sub_267FDC010(v41, &qword_2802422A0);
}

void sub_267FDAA80()
{
  type metadata accessor for CarPlayHeaderView(0);
  type metadata accessor for AnnounceButtonViewModel(0);
  sub_267FB15EC(&qword_280242170, type metadata accessor for AnnounceButtonViewModel);
  sub_26804CF3C();
  sub_267FDB0BC();

  sub_26804CF3C();
  v0 = sub_267FAD8C8();

  if (v0)
  {
    v1 = sub_26804EC9C();
  }

  else
  {
    v1 = 1;
  }

  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v2 = sub_26804CD4C();
  __swift_project_value_buffer(v2, qword_2802487E0);
  v3 = sub_26804CD3C();
  v4 = sub_26804E88C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1 & 1;
    _os_log_impl(&dword_267FA7000, v3, v4, "#CarPlayHeaderView Announce button tapped, setting announceNotificationsInCarPlayTemporarilyDisabled=%{BOOL}d)", v5, 8u);
    MEMORY[0x26D60E1E0](v5, -1, -1);
  }

  v6 = [objc_opt_self() sharedPreferences];
  [v6 setAnnounceNotificationsInCarPlayTemporarilyDisabled_];
}

__n128 sub_267FDACC0@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_26804CF1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267FB116C(&v29);
  v27 = v29;
  HIDWORD(v26) = sub_26804D7AC();
  sub_26804CE1C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  type metadata accessor for CarPlayHeaderView(0);
  type metadata accessor for AnnounceButtonViewModel(0);
  sub_267FB15EC(&qword_280242170, type metadata accessor for AnnounceButtonViewModel);
  v14 = sub_26804CF3C();
  sub_267FB1634(v14, v15, v16, v17, v18, v19, v20, v21, v26, v27, *v28, *&v28[8], *&v28[16], *&v28[24], *&v28[32], *&v28[40], *&v28[48], v29, *(&v29 + 1), v30);
  v22 = sub_267FB165C();

  (*(v3 + 8))(v5, v2);
  LOBYTE(v2) = sub_26804D7AC();
  LOBYTE(v29) = 0;
  sub_26804DFAC();
  sub_26804CFBC();
  *&v28[5] = v29;
  *&v28[21] = v30;
  *&v28[37] = v31;
  *a1 = v27;
  *(a1 + 8) = BYTE4(v26);
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = 0;
  *(a1 + 56) = v22;
  *(a1 + 64) = v2;
  *(a1 + 65) = 256;
  result = *v28;
  v24 = *&v28[16];
  v25 = *&v28[32];
  *(a1 + 112) = *&v28[45];
  *(a1 + 99) = v25;
  *(a1 + 83) = v24;
  *(a1 + 67) = result;
  return result;
}

double sub_267FDAF0C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_26804D65C();
  v3 = 0.0;
  sub_26804CF6C();
  v4 = v19;
  v5 = v20;
  v6 = v21;
  v7 = sub_26804DFAC();
  v9 = v8;
  sub_26804DFCC();
  sub_26804D13C();
  sub_26804DFAC();
  sub_26804CFBC();
  type metadata accessor for CarPlayHeaderView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A28);
  sub_26804CE2C();
  if (v12)
  {
    v3 = 1.0;
  }

  v10 = v18;
  *a1 = v17;
  *(a1 + 8) = v10;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v2;
  *(a1 + 44) = 256;
  *(a1 + 48) = v7;
  *(a1 + 56) = v9;
  memcpy((a1 + 64), __src, 0x70uLL);
  *(a1 + 176) = v13;
  *(a1 + 192) = v14;
  result = *&v15;
  *(a1 + 208) = v15;
  *(a1 + 224) = v3;
  return result;
}

uint64_t sub_267FDB0BC()
{
  sub_267FAD8C8();

  return sub_267FDB0EC();
}

uint64_t sub_267FDB0EC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26804CDDC();
}

uint64_t sub_267FDB160@<X0>(uint64_t a1@<X8>)
{
  sub_26804C37C();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v1);
  return sub_267FDA074(v5, a1);
}

uint64_t sub_267FDB220()
{
  v0 = sub_26804EC5C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267FDB294(char a1)
{
  sub_26804ED7C();
  sub_268021B00(a1);
  OUTLINED_FUNCTION_4_4();

  return sub_26804ED9C();
}

uint64_t sub_267FDB2EC()
{
  sub_26804E71C();
}

uint64_t sub_267FDB358(uint64_t a1, char a2)
{
  sub_268021B00(a2);
  sub_26804E71C();
}

uint64_t sub_267FDB3B4(uint64_t a1, char a2)
{
  sub_26804ED7C();
  sub_268021B00(a2);
  OUTLINED_FUNCTION_4_4();

  return sub_26804ED9C();
}

uint64_t sub_267FDB400()
{
  sub_26804ED7C();
  sub_26804E71C();

  return sub_26804ED9C();
}

uint64_t sub_267FDB480@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267FDB220();
  *a1 = result;
  return result;
}

uint64_t sub_267FDB4C0()
{
  v1 = OBJC_IVAR____TtC14SiriMessagesUI23AnnounceButtonViewModel__currentState;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242348);
  OUTLINED_FUNCTION_0();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void sub_267FDB564()
{
  sub_267FDB5F4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_267FDB5F4()
{
  if (!qword_280242148)
  {
    v0 = sub_26804CDEC();
    if (!v1)
    {
      atomic_store(v0, &qword_280242148);
    }
  }
}

uint64_t getEnumTagSinglePayload for AnnounceButtonViewModel.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AnnounceButtonViewModel.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_267FDB7CC()
{
  sub_26804C37C();
  if (v0 <= 0x3F)
  {
    sub_267FDB880();
    if (v1 <= 0x3F)
    {
      sub_267FDB914();
      if (v2 <= 0x3F)
      {
        sub_267FCBA04();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_267FDB880()
{
  if (!qword_280242168)
  {
    type metadata accessor for AnnounceButtonViewModel(255);
    sub_267FB15EC(&qword_280242170, type metadata accessor for AnnounceButtonViewModel);
    v0 = sub_26804CF5C();
    if (!v1)
    {
      atomic_store(v0, &qword_280242168);
    }
  }
}

void sub_267FDB914()
{
  if (!qword_280242178)
  {
    sub_26804CF1C();
    v0 = sub_26804CF2C();
    if (!v1)
    {
      atomic_store(v0, &qword_280242178);
    }
  }
}

unint64_t sub_267FDB9B4()
{
  result = qword_280242190;
  if (!qword_280242190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242190);
  }

  return result;
}

unint64_t sub_267FDBA24()
{
  result = qword_2802421C0;
  if (!qword_2802421C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802421A0);
    sub_267FB0FC4(&qword_2802421C8, &unk_280242198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802421C0);
  }

  return result;
}

uint64_t sub_267FDBADC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_12_1(a1, a2, a3);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_12_0();
  v5(v4);
  return v3;
}

unint64_t sub_267FDBB94()
{
  result = qword_280242218;
  if (!qword_280242218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242210);
    sub_267FDBC20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242218);
  }

  return result;
}

unint64_t sub_267FDBC20()
{
  result = qword_280242220;
  if (!qword_280242220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242228);
    sub_267FDBCD8();
    sub_267FB0FC4(&qword_280242250, &unk_280242258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242220);
  }

  return result;
}

unint64_t sub_267FDBCD8()
{
  result = qword_280242230;
  if (!qword_280242230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242238);
    sub_267FDBD90();
    sub_267FB0FC4(&qword_280242090, &unk_280242098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242230);
  }

  return result;
}

unint64_t sub_267FDBD90()
{
  result = qword_280242240;
  if (!qword_280242240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242240);
  }

  return result;
}

unint64_t sub_267FDBE14()
{
  result = qword_280242260;
  if (!qword_280242260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242200);
    sub_267FB0FC4(&qword_280242268, &unk_280242270);
    sub_267FB0FC4(&qword_280242278, &unk_280242280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242260);
  }

  return result;
}

unint64_t sub_267FDBEF8()
{
  result = qword_280242290;
  if (!qword_280242290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242208);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242200);
    sub_26804D10C();
    sub_267FDBE14();
    sub_267FB15EC(&qword_280242288, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242290);
  }

  return result;
}

uint64_t sub_267FDC010(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_6_0(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_267FDC060(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_6_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_267FDC0E0()
{
  result = qword_2802422D8;
  if (!qword_2802422D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802422E0);
    sub_267FDC198();
    sub_267FB0FC4(&qword_2802422F8, &unk_280242300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802422D8);
  }

  return result;
}

unint64_t sub_267FDC198()
{
  result = qword_2802422E8;
  if (!qword_2802422E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802422F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802422E8);
  }

  return result;
}

uint64_t sub_267FDC224(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_12_1(a1, a2, a3);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_12_0();
  v5(v4);
  return v3;
}

id sub_267FDC270()
{
  result = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  qword_280242350 = result;
  return result;
}

uint64_t sub_267FDC2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_26804C54C();
  v16 = sub_26804C53C();
  result = swift_getKeyPath();
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  *(a8 + 56) = v16;
  *(a8 + 64) = result;
  *(a8 + 72) = 0;
  return result;
}

uint64_t sub_267FDC344()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242358);
  sub_26804DEAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242360);
  sub_267FDD3F0();
  return sub_26804DE6C();
}

uint64_t sub_267FDC41C(const void *a1)
{
  v5 = sub_267FDC58C();
  swift_getKeyPath();
  v2 = swift_allocObject();
  memcpy((v2 + 16), a1, 0x49uLL);
  sub_267FDD4A8(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802417C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242378);
  sub_267FC126C(&qword_2802417D8, &qword_2802417C8);
  sub_267FC126C(&qword_280242370, &qword_280242378);
  return sub_26804DEFC();
}

uint64_t sub_267FDC58C()
{
  v1 = sub_26804BE7C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277D3A0D0]) init];
  v6 = *(v0 + 48);
  v7 = sub_26804E77C();
  v8 = [v5 relativeAppUsageProbabilitiesForCandidateBundleIds:v7 daysAgo:28];

  sub_267FCAB20(0, &qword_2802441E0);
  v9 = sub_26804E64C();

  v10 = [objc_opt_self() sharedPreferences];
  sub_267FDE4A0(v10);
  if (v11)
  {
    v12 = sub_26804BE5C();
  }

  else
  {
    v12 = sub_26804BE6C();
  }

  MEMORY[0x28223BE20](v12);
  *(&v15 - 4) = v0;
  *(&v15 - 3) = v9;
  *(&v15 - 2) = v4;
  v16 = v6;

  sub_267FDD6AC(sub_267FDE510, (&v15 - 6));

  v13 = v16;
  (*(v2 + 8))(v4, v1);
  return v13;
}

uint64_t sub_267FDC7BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242380);
  sub_267FDD4F8();
  return sub_26804DD6C();
}

uint64_t sub_267FDC864@<X0>(uint64_t a1@<X8>)
{
  sub_26804C52C();
  sub_267FB0C1C();
  v2 = sub_26804D95C();
  v4 = v3;
  v6 = v5;
  sub_26804DCCC();
  v7 = sub_26804D8FC();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_267FB0FB4(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_267FDC954(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242398);
  MEMORY[0x28223BE20](v5);
  v7 = (&v19 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802423A8);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  v11 = sub_267FDCB9C(a2, a3);
  if (v11)
  {
    v12 = v11;
    v13 = sub_26804DD0C();
    v14 = (v7 + *(v5 + 36));
    v15 = *(sub_26804D11C() + 20);
    v16 = *MEMORY[0x277CE0118];
    v17 = sub_26804D48C();
    (*(*(v17 - 8) + 104))(&v14->i8[v15], v16, v17);
    *v14 = vdupq_n_s64(0x4011555555555555uLL);
    *(v14->i16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241990) + 36)) = 256;
    *v7 = v13;
    sub_267FDD63C(v7, v10);
    swift_storeEnumTagMultiPayload();
    sub_267FDD584();
    sub_26804D5AC();

    return sub_267FDE548(v7, &qword_280242398);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_267FDD584();
    return sub_26804D5AC();
  }
}

id sub_267FDCB9C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_26804D3AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280241110 != -1)
  {
    swift_once();
  }

  v10 = qword_280242350;
  v11 = sub_26804E6BC();
  v12 = [v10 objectForKey_];

  if (!v12)
  {
    sub_267FCAB20(0, &qword_2802423B0);

    v13 = sub_267FDD25C();
    v14 = *(v3 + 64);
    v30 = v14;
    v31 = *(v3 + 72);
    if (v31 == 1)
    {
      v15 = v14;
    }

    else
    {

      sub_26804E8AC();
      v16 = sub_26804D77C();
      sub_26804CD2C();

      sub_26804D39C();
      swift_getAtKeyPath();
      sub_267FDE548(&v30, &qword_2802423B8);
      (*(v7 + 8))(v9, v6);
      v15 = v29;
    }

    v17 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:20.0 scale:{20.0, v15}];
    v18 = [v13 prepareImageForDescriptor_];
    if (v18 && (v19 = v18, v20 = [v18 CGImage], v19, v20))
    {
      v12 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];
      v21 = sub_26804E6BC();
      [v10 setObject:v12 forKey:v21];
    }

    else
    {
      if (qword_280241130 != -1)
      {
        swift_once();
      }

      v22 = sub_26804CD4C();
      __swift_project_value_buffer(v22, qword_2802487E0);

      v23 = sub_26804CD3C();
      v24 = sub_26804E89C();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *&v26 = COERCE_DOUBLE(swift_slowAlloc());
        v29 = *&v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_267FAE0C4(a1, a2, &v29);
        _os_log_impl(&dword_267FA7000, v23, v24, "#AppSashView failed to retrieve app icon for %s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x26D60E1E0](v26, -1, -1);
        MEMORY[0x26D60E1E0](v25, -1, -1);
      }

      return 0;
    }
  }

  return v12;
}

uint64_t sub_267FDCFAC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802423C8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v40 - v11;
  v13 = *a1;
  v14 = a1[1];
  v16 = *(a3 + 32);
  v15 = *(a3 + 40);
  if (v13 == v16 && v14 == v15)
  {
    return 1;
  }

  v40[1] = v5;
  v18 = *a2;
  v19 = a2[1];
  if (sub_26804EC9C())
  {
    return 1;
  }

  v21 = v18 == v16 && v19 == v15;
  if (v21 || (sub_26804EC9C() & 1) != 0)
  {
    return 0;
  }

  v22 = sub_2680042F0(v13, v14, a4);
  if (v22)
  {
    v23 = v22;
    [v22 doubleValue];
    v25 = v24;
  }

  else
  {
    v25 = 0.0;
  }

  v26 = sub_2680042F0(v18, v19, a4);
  if (v26)
  {
    v27 = v26;
    [v26 doubleValue];
    v29 = v28;

    if (v25 != v29)
    {
      return v29 < v25;
    }
  }

  else if (v25 != 0.0)
  {
    v29 = 0.0;
    return v29 < v25;
  }

  v30 = sub_26804C52C();
  if (v31)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0;
  }

  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0xE000000000000000;
  }

  v34 = sub_26804C52C();
  if (v35)
  {
    v36 = v34;
  }

  else
  {
    v36 = 0;
  }

  v40[4] = v32;
  v40[5] = v33;
  if (v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = 0xE000000000000000;
  }

  v40[2] = v36;
  v40[3] = v37;
  v38 = sub_26804BE7C();
  (*(*(v38 - 8) + 16))(v12, v41, v38);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v38);
  sub_267FB0C1C();
  v39 = sub_26804EA7C();
  sub_267FDE548(v12, &qword_2802423C8);

  return v39 == -1;
}

id sub_267FDD25C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_26804E6BC();

  v2 = [v0 initWithBundleIdentifier_];

  return v2;
}

uint64_t sub_267FDD328(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_267FDD368(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_267FDD3F0()
{
  result = qword_280242368;
  if (!qword_280242368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242360);
    sub_267FC126C(&qword_280242370, &qword_280242378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242368);
  }

  return result;
}

unint64_t sub_267FDD4F8()
{
  result = qword_280242388;
  if (!qword_280242388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242380);
    sub_267FDD584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242388);
  }

  return result;
}

unint64_t sub_267FDD584()
{
  result = qword_280242390;
  if (!qword_280242390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242398);
    sub_267FC126C(&qword_2802423A0, &qword_280241990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242390);
  }

  return result;
}

uint64_t sub_267FDD63C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242398);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267FDD6AC(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_267FDE534(v5);
  }

  result = sub_267FDD730(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_267FDD730(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_26804EC6C();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        v9 = sub_26804E7AC();
        *(v9 + 16) = v8;
      }

      v10[0] = (v9 + 32);
      v10[1] = v8;
      sub_267FDD94C(v10, v11, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_267FDD834(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_267FDD834(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void *))
{
  v21 = a4;
  if (a3 != a2)
  {
    v6 = *v4;
    v7 = (*v4 + 16 * a3);
    v8 = result - a3;
LABEL_4:
    v17 = v7;
    v18 = a3;
    v9 = (v6 + 16 * a3);
    v10 = *v9;
    v11 = v9[1];
    v16 = v8;
    while (1)
    {
      v20[0] = v10;
      v20[1] = v11;
      v12 = *(v7 - 1);
      v19[0] = *(v7 - 2);
      v19[1] = v12;

      v13 = v21(v20, v19);

      if (v5)
      {
        break;
      }

      if (v13)
      {
        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = *v7;
        v11 = v7[1];
        *v7 = *(v7 - 1);
        *(v7 - 1) = v11;
        *(v7 - 2) = v10;
        v7 -= 2;
        if (!__CFADD__(v8++, 1))
        {
          continue;
        }
      }

      a3 = v18 + 1;
      v7 = v17 + 2;
      v8 = v16 - 1;
      if (v18 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

void sub_267FDD94C(char **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t *, uint64_t *), uint64_t a5, uint64_t a6)
{
  v117 = a5;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_93:
    v110 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_95;
    }

    goto LABEL_138;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 < v7)
    {
      v12 = *a3;
      v13 = (*a3 + 16 * v11);
      v14 = v13[1];
      v115 = *v13;
      v116 = v14;
      v15 = (v12 + 16 * v10);
      v16 = v15[1];
      v113 = *v15;
      v114 = v16;

      LODWORD(v110) = a4(&v115, &v113);
      if (v6)
      {
LABEL_105:

        goto LABEL_106;
      }

      v104 = v9;

      v107 = 16 * v10;
      v17 = v15 + 3;
      v102 = v10;
      v18 = v10 + 2;
      while (1)
      {
        v19 = v11;
        v20 = v18;
        if (v11 + 1 >= v7)
        {
          break;
        }

        v21 = v7;
        v22 = v17[2];
        v115 = v17[1];
        v116 = v22;
        v23 = *v17;
        v113 = *(v17 - 1);
        v114 = v23;

        v24 = a4(&v115, &v113);

        v25 = v110 ^ v24;
        v17 += 2;
        ++v11;
        v18 = v20 + 1;
        v7 = v21;
        if (v25)
        {
          goto LABEL_10;
        }
      }

      v11 = v7;
LABEL_10:
      if (v110)
      {
        v26 = v102;
        if (v11 < v102)
        {
          goto LABEL_132;
        }

        v9 = v104;
        if (v102 > v19)
        {
          v10 = v102;
          goto LABEL_24;
        }

        if (v7 >= v20)
        {
          v27 = v20;
        }

        else
        {
          v27 = v7;
        }

        v28 = 16 * v27;
        v29 = v11;
        v30 = v107;
        do
        {
          if (v26 != --v29)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_136;
            }

            v32 = (v31 + v30);
            v33 = v31 + v28;
            v34 = *v32;
            v35 = v32[1];
            *v32 = *(v33 - 16);
            *(v33 - 16) = v34;
            *(v33 - 8) = v35;
          }

          ++v26;
          v28 -= 16;
          v30 += 16;
        }

        while (v26 < v29);
      }

      else
      {
        v9 = v104;
      }

      v10 = v102;
    }

LABEL_24:
    v36 = a3[1];
    if (v11 >= v36)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v11, v10))
    {
      goto LABEL_128;
    }

    if (v11 - v10 >= a6)
    {
      goto LABEL_32;
    }

    v37 = v10 + a6;
    if (__OFADD__(v10, a6))
    {
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
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
      return;
    }

    if (v37 >= v36)
    {
      v37 = a3[1];
    }

    if (v37 < v10)
    {
      goto LABEL_131;
    }

    if (v11 != v37)
    {
      v103 = v10;
      v105 = v9;
      v80 = *a3;
      v81 = (*a3 + 16 * v11);
      v82 = v10 - v11;
      v99 = v37;
      do
      {
        v109 = v11;
        v110 = v81;
        v83 = (v80 + 16 * v11);
        v84 = *v83;
        v85 = v83[1];
        v100 = v82;
        do
        {
          v115 = v84;
          v116 = v85;
          v86 = *(v81 - 1);
          v113 = *(v81 - 2);
          v114 = v86;

          v87 = a4(&v115, &v113);
          if (v6)
          {
            goto LABEL_105;
          }

          v88 = v87;

          if ((v88 & 1) == 0)
          {
            break;
          }

          if (!v80)
          {
            goto LABEL_135;
          }

          v84 = *v81;
          v85 = *(v81 + 1);
          *v81 = *(v81 - 1);
          *(v81 - 1) = v85;
          *(v81 - 2) = v84;
          v81 -= 16;
        }

        while (!__CFADD__(v82++, 1));
        ++v11;
        v81 = v110 + 16;
        v82 = v100 - 1;
      }

      while (v109 + 1 != v99);
      v11 = v99;
      v10 = v103;
      v9 = v105;
    }

LABEL_32:
    if (v11 < v10)
    {
      goto LABEL_127;
    }

    v108 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_268006EFC();
      v9 = v90;
    }

    v38 = *(v9 + 2);
    v39 = v38 + 1;
    if (v38 >= *(v9 + 3) >> 1)
    {
      sub_268006EFC();
      v9 = v91;
    }

    *(v9 + 2) = v39;
    v40 = v9 + 32;
    v41 = &v9[16 * v38 + 32];
    *v41 = v10;
    *(v41 + 1) = v108;
    v110 = *a1;
    if (!*a1)
    {
      goto LABEL_137;
    }

    if (v38)
    {
      break;
    }

LABEL_81:
    v7 = a3[1];
    v8 = v108;
    if (v108 >= v7)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v42 = v39 - 1;
    v43 = &v40[16 * v39 - 16];
    v44 = &v9[16 * v39];
    if (v39 >= 4)
    {
      v49 = &v40[16 * v39];
      v50 = *(v49 - 8);
      v51 = *(v49 - 7);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_115;
      }

      v54 = *(v49 - 6);
      v53 = *(v49 - 5);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_116;
      }

      v56 = *(v44 + 1);
      v57 = v56 - *v44;
      if (__OFSUB__(v56, *v44))
      {
        goto LABEL_118;
      }

      v55 = __OFADD__(v47, v57);
      v58 = v47 + v57;
      if (v55)
      {
        goto LABEL_121;
      }

      if (v58 >= v52)
      {
        v72 = *v43;
        v71 = *(v43 + 1);
        v55 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v47 < v73)
        {
          v42 = v39 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_52;
    }

    if (v39 == 3)
    {
      v45 = *(v9 + 4);
      v46 = *(v9 + 5);
      v55 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      v48 = v55;
LABEL_52:
      if (v48)
      {
        goto LABEL_117;
      }

      v60 = *v44;
      v59 = *(v44 + 1);
      v61 = __OFSUB__(v59, v60);
      v62 = v59 - v60;
      v63 = v61;
      if (v61)
      {
        goto LABEL_120;
      }

      v64 = *(v43 + 1);
      v65 = v64 - *v43;
      if (__OFSUB__(v64, *v43))
      {
        goto LABEL_123;
      }

      if (__OFADD__(v62, v65))
      {
        goto LABEL_125;
      }

      if (v62 + v65 >= v47)
      {
        if (v47 < v65)
        {
          v42 = v39 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_67;
    }

    if (v39 < 2)
    {
      goto LABEL_119;
    }

    v67 = *v44;
    v66 = *(v44 + 1);
    v55 = __OFSUB__(v66, v67);
    v62 = v66 - v67;
    v63 = v55;
LABEL_67:
    if (v63)
    {
      goto LABEL_122;
    }

    v69 = *v43;
    v68 = *(v43 + 1);
    v55 = __OFSUB__(v68, v69);
    v70 = v68 - v69;
    if (v55)
    {
      goto LABEL_124;
    }

    if (v70 < v62)
    {
      goto LABEL_81;
    }

LABEL_74:
    if (v42 - 1 >= v39)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_133;
    }

    v74 = &v40[16 * v42 - 16];
    v75 = *v74;
    v76 = &v40[16 * v42];
    v77 = *(v76 + 1);
    sub_267FDE040((*a3 + 16 * *v74), (*a3 + 16 * *v76), *a3 + 16 * v77, v110, a4);
    if (v6)
    {
      goto LABEL_106;
    }

    if (v77 < v75)
    {
      goto LABEL_109;
    }

    v78 = v9;
    v9 = *(v9 + 2);
    if (v42 > v9)
    {
      goto LABEL_110;
    }

    *v74 = v75;
    *(v74 + 1) = v77;
    if (v42 >= v9)
    {
      goto LABEL_111;
    }

    v39 = (v9 - 1);
    memmove(&v40[16 * v42], v76 + 16, 16 * &v9[-v42 - 1]);
    *(v78 + 2) = v9 - 1;
    v79 = v9 > 2;
    v9 = v78;
    if (!v79)
    {
      goto LABEL_81;
    }
  }

  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
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
  v9 = sub_267FDE38C(v9);
LABEL_95:
  v92 = v9 + 16;
  v93 = *(v9 + 2);
  while (v93 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_134;
    }

    v94 = v9;
    v95 = &v9[16 * v93];
    v9 = *v95;
    v96 = &v92[2 * v93];
    v97 = v96[1];
    sub_267FDE040((*a3 + 16 * *v95), (*a3 + 16 * *v96), *a3 + 16 * v97, v110, a4);
    if (v6)
    {
      break;
    }

    if (v97 < v9)
    {
      goto LABEL_112;
    }

    if (v93 - 2 >= *v92)
    {
      goto LABEL_113;
    }

    *v95 = v9;
    *(v95 + 1) = v97;
    v98 = *v92 - v93;
    if (*v92 < v93)
    {
      goto LABEL_114;
    }

    v93 = *v92 - 1;
    memmove(v96, v96 + 2, 16 * v98);
    *v92 = v93;
    v9 = v94;
  }

LABEL_106:
}

uint64_t sub_267FDE040(char *a1, char *a2, unint64_t a3, char *a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 16;
  v10 = (a3 - a2) / 16;
  if (v9 >= v10)
  {
    sub_26800744C(a2, (a3 - a2) / 16, a4);
    v47 = &v5[16 * v10];
    __src = v5;
LABEL_15:
    v21 = 0;
    v44 = v7 - 16;
    while (1)
    {
      v11 = &v47[v21];
      if (&v47[v21] <= v5 || v7 <= a1)
      {
LABEL_29:
        v34 = (v11 - v5) / 16;
        if (v7 < v5 || v7 >= &v5[16 * v34])
        {
          v36 = 16 * v34;
          v37 = v7;
          goto LABEL_43;
        }

        if (v7 != v5)
        {
          v36 = 16 * v34;
          v37 = v7;
          goto LABEL_52;
        }

        return 1;
      }

      v23 = v7;
      v24 = v6;
      v26 = *(v11 - 1);
      v25 = v11 - 16;
      v51 = *(v11 - 2);
      v52 = v26;
      v27 = *(v23 - 1);
      v28 = v23;
      v49 = *(v23 - 2);
      v50 = v27;

      v29 = v53;
      v30 = a5(&v51, &v49);
      v53 = v29;
      if (v29)
      {
        break;
      }

      v31 = v30;

      v32 = v24 + v21;
      v33 = (v24 + v21 - 16);
      if (v31)
      {
        v47 += v21;
        v6 = v24 + v21 - 16;
        v5 = __src;
        v7 = v44;
        if (v32 != v28)
        {
          *v33 = *v44;
          v7 = v44;
          v6 = v33;
        }

        goto LABEL_15;
      }

      v6 = v24;
      v20 = &v47[v21] == (v24 + v21);
      v7 = v28;
      if (!v20)
      {
        *v33 = *v25;
      }

      v21 -= 16;
      v5 = __src;
    }

    v40 = __src;
    v41 = (v47 - __src + v21) / 16;
    if (v28 < __src || v28 >= &__src[16 * v41])
    {
      v36 = 16 * v41;
      v37 = v28;
      goto LABEL_55;
    }

    if (v28 != __src)
    {
      v36 = 16 * v41;
      v37 = v28;
      goto LABEL_55;
    }
  }

  else
  {
    sub_26800744C(a1, (a2 - a1) / 16, a4);
    v11 = &v5[16 * v9];
    while (1)
    {
      if (v5 >= v11 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_29;
      }

      v13 = v6;
      v14 = *(v7 + 1);
      v51 = *v7;
      v52 = v14;
      v15 = *(v5 + 1);
      v49 = *v5;
      v50 = v15;

      v16 = v53;
      v17 = a5(&v51, &v49);
      v53 = v16;
      if (v16)
      {
        break;
      }

      v18 = v17;

      if (v18)
      {
        v19 = v7;
        v20 = v8 == v7;
        v7 += 16;
      }

      else
      {
        v19 = v5;
        v20 = v8 == v5;
        v5 += 16;
      }

      v6 = v13;
      if (!v20)
      {
        *v8 = *v19;
      }

      v8 += 16;
    }

    v38 = (v11 - v5) / 16;
    if (v8 < v5 || v8 >= &v5[16 * v38])
    {
      v36 = 16 * v38;
      v37 = v8;
LABEL_43:
      v40 = v5;
LABEL_55:
      memmove(v37, v40, v36);
      return 1;
    }

    if (v8 != v5)
    {
      v36 = 16 * v38;
      v37 = v8;
LABEL_52:
      v40 = v5;
      goto LABEL_55;
    }
  }

  return 1;
}

char *sub_267FDE3A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802423C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_267FDE4A0(void *a1)
{
  v2 = [a1 languageCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26804E6CC();

  return v3;
}

uint64_t sub_267FDE548(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_267FDE5B0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_267FDE5F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_267FDE67C(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v12[0] = 0;
  v2 = [objc_opt_self() openPhotoLibraryWithWellKnownIdentifier:1 error:v12];
  if (v2)
  {
    v3 = v2;
    v4 = v12[0];
    v5 = [v3 librarySpecificFetchOptions];
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = sub_26804E77C();
    v8 = [ObjCClassFromMetadata fetchAssetsWithLocalIdentifiers:v7 options:v5];

    v9 = [v8 fetchedObjects];
    if (v9)
    {
      sub_267FCAB20(0, &qword_280242440);
      a1 = sub_26804E78C();
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    v10 = v12[0];
    sub_26804BD0C();

    swift_willThrow();
  }

  return a1;
}