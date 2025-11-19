unint64_t sub_222BCF190()
{
  result = qword_27D026580;
  if (!qword_27D026580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026580);
  }

  return result;
}

unint64_t sub_222BCF1E8()
{
  result = qword_27D026588;
  if (!qword_27D026588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026588);
  }

  return result;
}

unint64_t sub_222BCF240()
{
  result = qword_27D026590;
  if (!qword_27D026590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026590);
  }

  return result;
}

uint64_t sub_222BCF294(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79726575516F7375 && a2 == 0xE800000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x666552616964656DLL && a2 == 0xEE0065636E657265 || (sub_222C951FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000222CA9930 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_222C951FC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_222BCF448(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F74536B63697571 && a2 == 0xE900000000000070;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6673736563637573 && a2 == 0xEE0079616C506C75 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000222CAB370 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_222C951FC();

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

uint64_t sub_222BCF578(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *NowPlayingEventStreamProcessor.__allocating_init(context:)(uint64_t a1)
{
  v2 = type metadata accessor for NowPlayingEventAsyncStreamProcessorFactory(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = swift_allocObject();
  sub_222BCF80C(a1, v8, type metadata accessor for EventStreamContext);
  sub_222BCF80C(v8, v6, type metadata accessor for NowPlayingEventAsyncStreamProcessorFactory);
  v10 = sub_222BD09EC(v6, v9);
  sub_222BD0B1C(a1, type metadata accessor for EventStreamContext);
  sub_222BD0B1C(v8, type metadata accessor for NowPlayingEventAsyncStreamProcessorFactory);
  return v10;
}

uint64_t *NowPlayingEventStreamProcessor.init(context:)(uint64_t a1)
{
  v3 = type metadata accessor for NowPlayingEventAsyncStreamProcessorFactory(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  sub_222BCF80C(a1, &v12 - v8, type metadata accessor for EventStreamContext);
  sub_222BCF80C(v9, v7, type metadata accessor for NowPlayingEventAsyncStreamProcessorFactory);
  v10 = sub_222BD09EC(v7, v1);
  sub_222BD0B1C(a1, type metadata accessor for EventStreamContext);
  sub_222BD0B1C(v9, type metadata accessor for NowPlayingEventAsyncStreamProcessorFactory);
  return v10;
}

uint64_t sub_222BCF80C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t NowPlayingEventStreamProcessor.deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));
  return v0;
}

uint64_t NowPlayingEventStreamProcessor.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_222BCF8DC@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for EventStreamContext();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222BCF80C(v1, v6, type metadata accessor for EventStreamContext);
  v7 = type metadata accessor for NowPlayingStreamStateMachine(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v10 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  v12 = v10 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit;
  *(v12 + 32) = 0;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v10 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentPlayState) = 3;
  *(v10 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_playLength) = 0;
  *(v10 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_lastPlayTimestamp) = 0;
  result = sub_222BD0DF8(v6, v10 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_context, type metadata accessor for EventStreamContext);
  *a1 = v10;
  return result;
}

uint64_t sub_222BCF9FC()
{
  type metadata accessor for NowPlayingStreamStateMachine(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026610, &qword_222C9DA20);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D026598 = 91;
  unk_27D0265A0 = 0xE100000000000000;
  return result;
}

double sub_222BCFA8C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = v5 == 0xD000000000000011 && 0x8000000222CA87E0 == v6;
  if (v7 || (v8 = a1[3], (sub_222C951FC() & 1) != 0))
  {
    v9 = sub_222B41CE4(v4);
    if ((v10 & 1) != 0 || (v11 = *&v9, sub_222B42874(v4, &v30), v12 = v30, v30 == 6))
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v13 = sub_222C9431C();
      __swift_project_value_buffer(v13, qword_280FE2340);

      v14 = sub_222C942FC();
      v15 = sub_222C94A4C();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v35 = v17;
        *v16 = 136315394;
        if (qword_27D024708 != -1)
        {
          swift_once();
        }

        *(v16 + 4) = sub_222B437C0(qword_27D026598, unk_27D0265A0, &v35);
        *(v16 + 12) = 2080;
        v30 = v3;
        v31 = v2;
        v32 = v4;
        v33 = v5;
        v34 = v6;

        v18 = sub_222C944EC();
        v20 = sub_222B437C0(v18, v19, &v35);

        *(v16 + 14) = v20;
        _os_log_impl(&dword_222B39000, v14, v15, "%s timestamp or PlaybackState missing: %s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DCA8C0](v17, -1, -1);
        MEMORY[0x223DCA8C0](v16, -1, -1);
      }
    }

    else
    {
      v30 = v3;
      v31 = v2;
      v32 = v4;
      v33 = v5;
      v34 = v6;
      LOBYTE(v35) = v12;
      sub_222BCFE28(&v30, &v35, v11);
      v23 = (v1 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit);
      v24 = *(v1 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit + 8);
      if (v24)
      {
        v26 = v23[3];
        v25 = v23[4];
        v27 = v23[2];
        v28 = *v23;
        *v23 = 0u;
        *(v23 + 1) = 0u;
        v23[4] = 0;

        sub_222B5EE44(v28, v24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024BE8, &qword_222C969C0);
        v29 = swift_allocObject();
        *&result = 1;
        *(v29 + 16) = xmmword_222C97C40;
        *(v29 + 32) = v28;
        *(v29 + 40) = v24;
        *(v29 + 48) = v27;
        *(v29 + 56) = v26;
        *(v29 + 64) = v25;
      }
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024BE8, &qword_222C969C0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_222C97C40;
    *(v22 + 32) = v3;
    *(v22 + 40) = v2;
    *(v22 + 48) = v4;
    *(v22 + 56) = v5;
    *(v22 + 64) = v6;
  }

  return result;
}

uint64_t sub_222BCFE28(uint64_t *a1, unsigned __int8 *a2, double a3)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = a1[4];
  v9 = *a2;
  v10 = OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentPlayState;
  if (*(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentPlayState) == 1)
  {
    v11 = a3 - *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_lastPlayTimestamp) + *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_playLength);
    *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_playLength) = v11;
    LOBYTE(v15[0]) = 0x405030100uLL >> (8 * v9);
    v12 = a3;
    sub_222BD0188(v15, v11);
    a3 = v12;
  }

  v15[0] = v5;
  v15[1] = v4;
  v15[2] = v7;
  v15[3] = v6;
  v15[4] = v8;
  if (v9 == 1)
  {
    result = sub_222BD03E0(v15, &v16, a3);
  }

  else
  {
    v14 = v9;
    result = sub_222BD0570(v15, &v14, &v16);
  }

  *(v3 + v10) = v16;
  return result;
}

uint64_t sub_222BCFF2C()
{
  v1 = v0;
  v2 = sub_222C935EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for EventStreamContext();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentPlayState;
  if (*(v1 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentPlayState) == 1)
  {
    sub_222BCF80C(v1 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_context, v10, type metadata accessor for EventStreamContext);
    sub_222C9327C();
    v12 = sub_222C932BC();
    (*(*(v12 - 8) + 8))(v10, v12);
    sub_222C935BC();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = v14 - *(v1 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_lastPlayTimestamp) + *(v1 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_playLength);
    *(v1 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_playLength) = v15;
    v25 = 2;
    sub_222BD0188(&v25, v15);
  }

  *(v1 + v11) = 3;
  v16 = (v1 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent);
  v18 = *(v1 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent);
  v17 = *(v1 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent + 8);
  v19 = v16[2];
  v20 = v16[3];
  v21 = v16[4];
  if (v17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024BE8, &qword_222C969C0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_222C97C40;
    *(v22 + 32) = v18;
    *(v22 + 40) = v17;
    *(v22 + 48) = v19;
    *(v22 + 56) = v20;
    *(v22 + 64) = v21;
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  sub_222B5EDF4(v18, v17);
  return v22;
}

uint64_t sub_222BD0188(char *a1, double a2)
{
  v4 = (v2 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent);
  v5 = *(v2 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent);
  if (*(v2 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent + 8))
  {
    v7 = *a1;
    v28 = v4[2];
    v29 = v4[3];
    v30 = v4[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026360, &unk_222C9DA10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222C96900;
    v9 = type metadata accessor for NowPlayingFeatures.TotalPlayLength(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    *v31 = a2;

    v12 = sub_222C93EEC();
    *(inited + 56) = v9;
    *(inited + 64) = sub_222BD0DB0(&qword_27D026600, type metadata accessor for NowPlayingFeatures.TotalPlayLength);
    *(inited + 32) = v12;
    v13 = type metadata accessor for NowPlayingFeatures.EndReason(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    LOBYTE(v31[0]) = v7;
    v16 = sub_222C93EEC();
    *(inited + 96) = v13;
    *(inited + 104) = sub_222BD0DB0(&qword_27D026608, type metadata accessor for NowPlayingFeatures.EndReason);
    *(inited + 72) = v16;
    CoreDuetEvent.with(eventId:removedFeatures:newFeatures:eventType:)(0, 0, MEMORY[0x277D84F90], inited, 0, 0, v31);
    swift_setDeallocating();
    v17 = *(inited + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
    swift_arrayDestroy();

    v19 = v31[0];
    v18 = v31[1];
    v20 = v31[2];
    v21 = v31[3];
    v22 = v31[4];
    v5 = *v4;
    v23 = v4[1];
    v24 = v4[2];
    v25 = v4[3];
    v26 = v4[4];
  }

  else
  {
    v23 = 0;
    v18 = 0;
    v19 = *(v2 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent);
    v20 = v4[2];
    v21 = v4[3];
    v22 = v4[4];
  }

  *v4 = v19;
  v4[1] = v18;
  v4[2] = v20;
  v4[3] = v21;
  v4[4] = v22;
  return sub_222B5EE44(v5, v23);
}

uint64_t sub_222BD03E0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>, double a3@<D0>)
{
  v7 = *a1;
  v6 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  v35 = *a1;
  v36 = v6;
  *&v37 = v9;
  *(&v37 + 1) = v8;
  v38 = v10;
  result = sub_222B82B70(&v35);
  if (result)
  {
    *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_lastPlayTimestamp) = a3;
    v12 = v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent;
    v13 = *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent + 8);
    if (!v13)
    {
      goto LABEL_4;
    }

    v14 = *(v12 + 32);
    v15 = *(v12 + 16);
    v35 = *v12;
    v36 = v13;
    v37 = v15;
    v38 = v14;
    v34[0] = v7;
    v34[1] = v6;
    v34[2] = v9;
    v34[3] = v8;
    v34[4] = v10;
    result = sub_222B82D90(&v35, v34);
    if ((result & 1) == 0)
    {
LABEL_4:
      *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_playLength) = 0;
      v16 = *v12;
      v17 = *(v12 + 8);
      v18 = *(v12 + 16);
      v19 = *(v12 + 24);
      v20 = *(v12 + 32);
      v21 = (v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit);
      v22 = *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit);
      v31 = v21[1];
      v33 = a2;
      v23 = v21[2];
      v24 = v21[3];
      v25 = v21[4];
      *v21 = *v12;
      v21[1] = v17;
      v21[2] = v18;
      v21[3] = v19;
      v21[4] = v20;
      sub_222B5EDF4(v16, v17);
      sub_222B5EE44(v22, v31);
      v26 = *v12;
      v32 = *(v12 + 8);
      v27 = *(v12 + 16);
      v28 = *(v12 + 24);
      v29 = *(v12 + 32);
      *v12 = v7;
      *(v12 + 8) = v6;
      *(v12 + 16) = v9;
      *(v12 + 24) = v8;
      *(v12 + 32) = v10;

      a2 = v33;
      result = sub_222B5EE44(v26, v32);
    }

    v30 = 1;
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_playLength) = 0;
    v30 = 3;
  }

  *a2 = v30;
  return result;
}

uint64_t sub_222BD0570@<X0>(uint64_t result@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  v5 = *a2;
  v6 = OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentPlayState;
  if (*(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentPlayState) == 1)
  {
    v7 = v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent;
    v8 = *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent + 8);
    if (!v8)
    {
      goto LABEL_4;
    }

    v9 = *result;
    v10 = *(result + 8);
    v11 = *(result + 24);
    v12 = *(result + 32);
    v13 = *(v7 + 32);
    v14 = *(v7 + 16);
    v46[0] = *v7;
    v46[1] = v8;
    v47 = v14;
    v48 = v13;
    v42 = v9;
    v43 = v10;
    v44 = v11;
    v45 = v12;
    result = sub_222B82D90(v46, &v42);
    if ((result & 1) == 0)
    {
LABEL_4:
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v15 = sub_222C9431C();
      __swift_project_value_buffer(v15, qword_280FE2340);

      v16 = sub_222C942FC();
      v17 = sub_222C94A5C();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v46[0] = v41;
        *v18 = 136315650;
        if (qword_27D024708 != -1)
        {
          swift_once();
        }

        *(v18 + 4) = sub_222B437C0(qword_27D026598, unk_27D0265A0, v46);
        *(v18 + 12) = 2080;
        LOBYTE(v42) = *(v3 + v6);
        v19 = sub_222C944EC();
        v21 = sub_222B437C0(v19, v20, v46);

        *(v18 + 14) = v21;
        *(v18 + 22) = 2080;
        LOBYTE(v42) = v5;
        v22 = sub_222C944EC();
        v24 = sub_222B437C0(v22, v23, v46);

        *(v18 + 24) = v24;
        _os_log_impl(&dword_222B39000, v16, v17, "%s Unexpected track change during state transition %s -> %s", v18, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223DCA8C0](v41, -1, -1);
        MEMORY[0x223DCA8C0](v18, -1, -1);
      }

      v25 = *v7;
      v26 = *(v7 + 8);
      v27 = *(v7 + 16);
      v28 = *(v7 + 24);
      v29 = *(v7 + 32);
      v30 = (v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit);
      v31 = *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit);
      v32 = *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit + 8);
      v33 = *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit + 16);
      v34 = *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit + 24);
      v35 = *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit + 32);
      *v30 = *v7;
      v30[1] = v26;
      v30[2] = v27;
      v30[3] = v28;
      v30[4] = v29;
      sub_222B5EDF4(v25, v26);
      sub_222B5EE44(v31, v32);
      v36 = *v7;
      v37 = *(v7 + 8);
      v38 = *(v7 + 16);
      v39 = *(v7 + 24);
      v40 = *(v7 + 32);
      *v7 = 0u;
      *(v7 + 16) = 0u;
      *(v7 + 32) = 0;
      result = sub_222B5EE44(v36, v37);
      *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_playLength) = 0;
      v5 = 3;
    }
  }

  *a3 = v5;
  return result;
}

uint64_t sub_222BD0874()
{
  sub_222BD0B1C(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_context, type metadata accessor for EventStreamContext);
  v1 = *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent + 16);
  v2 = *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent + 24);
  v3 = *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent + 32);
  sub_222B5EE44(*(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent), *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent + 8));
  v4 = *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit + 16);
  v5 = *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit + 24);
  v6 = *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit + 32);
  sub_222B5EE44(*(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit), *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit + 8));
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_222BD0924(uint64_t *a1)
{
  v3 = *v1;
  v4.n128_f64[0] = sub_222BCFA8C(a1);
  v5 = *(v2 + 8);

  return v5(v4);
}

uint64_t sub_222BD0988()
{
  v2 = *v0;
  v3 = sub_222BCFF2C();
  v4 = *(v1 + 8);

  return v4(v3);
}

uint64_t *sub_222BD09EC(uint64_t a1, uint64_t *a2)
{
  v9 = type metadata accessor for NowPlayingEventAsyncStreamProcessorFactory(0);
  v10 = sub_222BD0DB0(&qword_27D026618, type metadata accessor for NowPlayingEventAsyncStreamProcessorFactory);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v8);
  sub_222BD0DF8(a1, boxed_opaque_existential_1, type metadata accessor for NowPlayingEventAsyncStreamProcessorFactory);
  v7 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026620, &qword_222C9DA28);
  v5 = sub_222C944EC();
  MEMORY[0x223DC9330](v5);

  MEMORY[0x223DC9330](93, 0xE100000000000000);
  a2[2] = 91;
  a2[3] = 0xE100000000000000;
  sub_222B405A0(&v8, (a2 + 4));
  return a2;
}

uint64_t sub_222BD0B1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222BD0BF4()
{
  result = sub_222C932BC();
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

uint64_t sub_222BD0CD0()
{
  result = type metadata accessor for EventStreamContext();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_222BD0D58(uint64_t a1)
{
  result = sub_222BD0DB0(&qword_27D0265F8, type metadata accessor for NowPlayingEventAsyncStreamProcessorFactory);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_222BD0DB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_222BD0DF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SendMessageEventCoalescer.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t SendMessageEventCoalescer.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_222BD0E94@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  v20 = *a2;
  v21 = a2[2];
  v23 = a2[4];
  v24 = *a1;
  v12 = v7 == 0xD000000000000013 && 0x8000000222CA87A0 == v8;
  if (!v12 && (sub_222C951FC() & 1) == 0)
  {
    *a3 = v24;
    a3[1] = v5;
    a3[2] = v6;
    a3[3] = v7;
    a3[4] = v8;
LABEL_27:
  }

  v22 = v5;
  v13 = sub_222B41CFC(v6);
  if (v13 == 2)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v14 = sub_222C9431C();
    __swift_project_value_buffer(v14, qword_280FE2340);
    v15 = sub_222C942FC();
    v16 = sub_222C94A4C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_222B39000, v15, v16, "Unexpected INSendMessageIntent without DonatedBySiri", v17, 2u);
      MEMORY[0x223DCA8C0](v17, -1, -1);
    }

    *a3 = v24;
    a3[1] = v5;
    a3[2] = v6;
    a3[3] = v7;
    a3[4] = v8;
    goto LABEL_27;
  }

  v18 = v13;
  if (v10 && (v11 == 0xD000000000000013 && v23 == 0x8000000222CA87A0 || (sub_222C951FC() & 1) != 0))
  {
    result = sub_222B41CFC(v21);
    if ((*(v3 + 16) & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_21:
    *(v3 + 16) = 0;
    *a3 = 0u;
    *(a3 + 1) = 0u;
    a3[4] = 0;
    return result;
  }

  result = 0;
  if (*(v3 + 16))
  {
    goto LABEL_21;
  }

LABEL_17:
  if (v18)
  {
    *(v3 + 16) = 1;
LABEL_26:
    *a3 = v24;
    a3[1] = v22;
    a3[2] = v6;
    a3[3] = v7;
    a3[4] = v8;
    goto LABEL_27;
  }

  if ((result & 1) == 0)
  {
    goto LABEL_26;
  }

  *(v3 + 16) = 1;
  *a3 = v20;
  a3[1] = v10;
  a3[2] = v21;
  a3[3] = v11;
  a3[4] = v23;

  return sub_222B5EDF4(v20, v10);
}

unint64_t sub_222BD11CC()
{
  result = qword_27D026628;
  if (!qword_27D026628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026628);
  }

  return result;
}

uint64_t sub_222BD1220()
{
  type metadata accessor for MediaSuggestionOutcomeExtractor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026640, &qword_222C9DB70);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D026630 = 91;
  *algn_27D026638 = 0xE100000000000000;
  return result;
}

uint64_t sub_222BD12C4(uint64_t a1, uint64_t a2)
{
  v98 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026648, &qword_222C9DB78);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v110 = v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v118 = v93 - v8;
  MEMORY[0x28223BE20](v7);
  v112 = v93 - v9;
  v10 = type metadata accessor for MediaPlayClassification();
  v114 = *(v10 - 8);
  v11 = *(v114 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v101 = v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v113 = v93 - v15;
  MEMORY[0x28223BE20](v14);
  v100 = v93 - v16;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257D8, &unk_222C990C0);
  v111 = *(v117 - 8);
  v17 = *(v111 + 64);
  v18 = MEMORY[0x28223BE20](v117);
  v103 = v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v102 = v93 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v104 = v93 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v109 = v93 - v25;
  MEMORY[0x28223BE20](v24);
  v97 = v93 - v26;
  v27 = type metadata accessor for FeaturisedTurn(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v30 = MEMORY[0x28223BE20](v29);
  v32 = v93 - v31;
  MEMORY[0x28223BE20](v30);
  v116 = v93 - v34;
  v35 = *(a1 + 16);
  v36 = MEMORY[0x277D84F90];
  v105 = v37;
  v115 = v33;
  if (v35)
  {
    v38 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v39 = *(v33 + 72);
    v40 = a1 + v38;
    v41 = v32;
    v42 = v116;
    do
    {
      sub_222BD43C8(v40, v42, type metadata accessor for FeaturisedTurn);
      if (sub_222B42A18(*(v42 + *(v27 + 24))))
      {

        sub_222BD4490(v42, v32, type metadata accessor for FeaturisedTurn);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v123 = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C3D4(0, v36[2] + 1, 1);
          v36 = v123;
        }

        v45 = v36[2];
        v44 = v36[3];
        v46 = v36;
        if (v45 >= v44 >> 1)
        {
          sub_222B4C3D4(v44 > 1, v45 + 1, 1);
          v46 = v123;
        }

        v46[2] = v45 + 1;
        v47 = v46 + v38 + v45 * v39;
        v32 = v41;
        sub_222BD4490(v41, v47, type metadata accessor for FeaturisedTurn);
        v36 = v46;
        v42 = v116;
      }

      else
      {
        sub_222BD4430(v42, type metadata accessor for FeaturisedTurn);
      }

      v40 += v39;
      --v35;
    }

    while (v35);
  }

  if (qword_280FDFE78 != -1)
  {
LABEL_49:
    swift_once();
  }

  v48 = sub_222C9431C();
  __swift_project_value_buffer(v48, qword_280FE2340);

  v49 = sub_222C942FC();
  v50 = sub_222C94A3C();
  v51 = os_log_type_enabled(v49, v50);
  v52 = v98;
  v53 = v104;
  if (v51)
  {
    v54 = v36;
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *&v123 = v56;
    *v55 = 136315394;
    v57 = MEMORY[0x277D84F90];
    if (qword_27D024710 != -1)
    {
      swift_once();
    }

    *(v55 + 4) = sub_222B437C0(qword_27D026630, *algn_27D026638, &v123);
    *(v55 + 12) = 2048;
    *(v55 + 14) = v54[2];

    _os_log_impl(&dword_222B39000, v49, v50, "%s Found %ld turns with PIMS suggestions reported.", v55, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
    MEMORY[0x223DCA8C0](v56, -1, -1);
    v58 = v55;
    v36 = v54;
    MEMORY[0x223DCA8C0](v58, -1, -1);
  }

  else
  {

    v57 = MEMORY[0x277D84F90];
  }

  v126 = v57;
  v96 = v36[2];
  if (!v96)
  {

    return v126;
  }

  v59 = (*(v115 + 80) + 32) & ~*(v115 + 80);
  v93[1] = v36;
  v95 = v36 + v59;
  v60 = *(v52 + 16);
  v106 = v52 + 32;
  v94 = *(v115 + 72);
  v61 = (v114 + 56);
  v116 = (v111 + 56);
  v115 = v111 + 48;
  v62 = v114 + 48;

  v63 = 0;
  v114 = v62;
  v36 = &unk_222C990C0;
  v107 = v62 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v108 = v10;
  v64 = v105;
  v111 = v60;
  while (2)
  {
    v99 = v63;
    sub_222BD43C8(&v95[v94 * v63], v64, type metadata accessor for FeaturisedTurn);

    v68 = 0;
    v69 = v117;
    while (1)
    {
      if (v68 == v60)
      {
        v125 = 0;
        v68 = v60;
        v123 = 0u;
        v124 = 0u;
      }

      else
      {
        if (v68 >= v60)
        {
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        sub_222B43E3C(v106 + 40 * v68, &v123);
        if (__OFADD__(v68++, 1))
        {
          goto LABEL_48;
        }
      }

      v121[0] = v123;
      v121[1] = v124;
      v122 = v125;
      if (*(&v124 + 1))
      {
        sub_222B405A0(v121, &v120);
        sub_222B43E3C(&v120, v119);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C58, &unk_222C96A30);
        v71 = v118;
        v72 = swift_dynamicCast();
        (*v61)(v71, v72 ^ 1u, 1, v10);
        __swift_destroy_boxed_opaque_existential_0Tm(&v120);
        v73 = *v116;
        (*v116)(v71, 0, 1, v69);
      }

      else
      {
        v73 = *v116;
        (*v116)(v118, 1, 1, v69);
      }

      v74 = *v115;
      if ((*v115)(v118, 1, v69) == 1)
      {
        v75 = v53;
        sub_222B4FCD4(v118, &qword_27D026648, &qword_222C9DB78);
        v76 = 1;
        goto LABEL_36;
      }

      sub_222B723A4(v118, v53, &qword_27D0257D8, &unk_222C990C0);
      if ((*v114)(v53, 1, v10) != 1)
      {
        break;
      }

      sub_222B4FCD4(v53, &qword_27D0257D8, &unk_222C990C0);
LABEL_23:
      v60 = v111;
    }

    v75 = v53;
    sub_222B723A4(v53, v112, &qword_27D0257D8, &unk_222C990C0);
    v76 = 0;
LABEL_36:
    v77 = v112;
    v78 = v117;
    v73(v112, v76, 1, v117);
    v79 = v110;
    sub_222B723A4(v77, v110, &qword_27D026648, &qword_222C9DB78);
    if (v74(v79, 1, v78) == 1)
    {
      v80 = *v61;
      v81 = v109;
      v10 = v108;
      (*v61)(v109, 1, 1, v108);
      v53 = v75;
      v36 = &unk_222C990C0;
      v82 = (*v114)(v81, 1, v10);
    }

    else
    {
      v83 = v102;
      v36 = &unk_222C990C0;
      sub_222B723A4(v79, v102, &qword_27D0257D8, &unk_222C990C0);
      v84 = v103;
      sub_222B4FC6C(v83, v103, &qword_27D0257D8, &unk_222C990C0);
      v85 = *v114;
      v10 = v108;
      result = (*v114)(v84, 1, v108);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v81 = v109;
      sub_222BD4490(v84, v109, type metadata accessor for MediaPlayClassification);
      sub_222B4FCD4(v83, &qword_27D0257D8, &unk_222C990C0);
      v80 = *v61;
      (*v61)(v81, 0, 1, v10);
      v53 = v104;
      v82 = v85(v81, 1, v10);
    }

    if (v82 == 1)
    {
      sub_222B4FCD4(v81, &qword_27D0257D8, &unk_222C990C0);

      v65 = v97;
      v66 = v97;
      v67 = 1;
      goto LABEL_20;
    }

    v87 = v113;
    sub_222BD4490(v81, v113, type metadata accessor for MediaPlayClassification);
    v69 = v117;
    if ((*(v87 + 8) & 1) == 0)
    {
      goto LABEL_22;
    }

    v88 = v100;
    sub_222BD4490(v113, v100, type metadata accessor for MediaPlayClassification);
    v89 = v88;
    v90 = v101;
    sub_222BD4490(v89, v101, type metadata accessor for MediaPlayClassification);
    v91 = v90 + *(v10 + 32);
    v92 = sub_222C9362C();
    v87 = v90;
    v69 = v117;
    if ((v92 & 1) == 0)
    {
LABEL_22:
      sub_222BD4430(v87, type metadata accessor for MediaPlayClassification);
      goto LABEL_23;
    }

    v65 = v97;
    sub_222BD4490(v101, v97, type metadata accessor for MediaPlayClassification);
    v66 = v65;
    v67 = 0;
LABEL_20:
    v80(v66, v67, 1, v10);
    v63 = v99 + 1;
    v64 = v105;
    v99 = sub_222BD205C(v105, v65);
    sub_222B4FCD4(v65, &qword_27D0257D8, &unk_222C990C0);
    sub_222BD4430(v64, type metadata accessor for FeaturisedTurn);
    sub_222B49A6C(v99);
    v60 = v111;
    if (v63 != v96)
    {
      continue;
    }

    break;
  }

  return v126;
}

uint64_t sub_222BD205C(uint64_t a1, uint64_t a2)
{
  v141 = a2;
  v3 = type metadata accessor for FeaturisedTurn(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v136 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025290, &unk_222C97C30);
  v7 = *(*(v139 - 8) + 64);
  MEMORY[0x28223BE20](v139);
  v140 = &v135 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257D8, &unk_222C990C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v135 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v137 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v142 = &v135 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v135 - v19;
  v145 = sub_222C9367C();
  v147 = *(v145 - 8);
  v21 = v147[8];
  v22 = MEMORY[0x28223BE20](v145);
  v138 = &v135 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v135 = &v135 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v143 = &v135 - v27;
  MEMORY[0x28223BE20](v26);
  v146 = &v135 - v28;
  v149 = type metadata accessor for PlusGenericSuggestionRuntimeSummary(0);
  v29 = *(v149 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v149);
  v148 = &v135 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v152 = &v135 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v135 - v35;
  v37 = *(v4 + 32);
  v144 = a1;
  v38 = sub_222B42A18(*(a1 + v37));
  v39 = MEMORY[0x277D84F90];
  if (v38)
  {
    v40 = v38;
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
  }

  v41 = *(v40 + 16);
  v150 = v29;
  v151 = v20;
  if (v41)
  {
    v42 = 0;
    while (v42 < *(v40 + 16))
    {
      v43 = v12;
      v44 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v45 = *(v29 + 72);
      sub_222BD43C8(v40 + v44 + v45 * v42, v36, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
      if (*v36 == 3)
      {
        sub_222BD4490(v36, v152, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v153[0] = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4CAF0(0, *(v39 + 16) + 1, 1);
          v39 = v153[0];
        }

        v48 = *(v39 + 16);
        v47 = *(v39 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_222B4CAF0(v47 > 1, v48 + 1, 1);
          v39 = v153[0];
        }

        *(v39 + 16) = v48 + 1;
        sub_222BD4490(v152, v39 + v44 + v48 * v45, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
        v29 = v150;
        v20 = v151;
      }

      else
      {
        sub_222BD4430(v36, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
      }

      ++v42;
      v12 = v43;
      if (v41 == v42)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_67;
  }

LABEL_15:

  if (*(v39 + 16))
  {
    v49 = v39 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v50 = v147;
    v51 = v147[2];
    v52 = v143;
    v53 = v145;
    v51(v143, v49 + *(v149 + 28), v145);
    v143 = v50[4];
    (v143)(v146, v52, v53);
    v54 = v144;
    v55 = isSiriPlayMedia(_:)(v144);
    v152 = v39;
    if (!v55)
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v67 = sub_222C9431C();
      __swift_project_value_buffer(v67, qword_280FE2340);
      v68 = v138;
      v69 = v145;
      v51(v138, v146, v145);
      v70 = sub_222C942FC();
      v71 = sub_222C94A3C();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v153[0] = v73;
        *v72 = 136315394;
        if (qword_27D024710 != -1)
        {
          swift_once();
        }

        *(v72 + 4) = sub_222B437C0(qword_27D026630, *algn_27D026638, v153);
        *(v72 + 12) = 2080;
        sub_222B7BB84(&qword_280FE0298);
        v69 = v145;
        v74 = sub_222C9517C();
        v75 = v68;
        v77 = v76;
        v78 = v147[1];
        v78(v75, v69);
        v79 = sub_222B437C0(v74, v77, v153);

        *(v72 + 14) = v79;
        _os_log_impl(&dword_222B39000, v70, v71, "%s Turn with PLUS ID %s does not have a play media task type. Marking all suggestion outcomes as unknown.", v72, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DCA8C0](v73, -1, -1);
        MEMORY[0x223DCA8C0](v72, -1, -1);
      }

      else
      {

        v78 = v50[1];
        v78(v68, v69);
      }

      v86 = sub_222BD32F0(v152, 2u, 0);

      MEMORY[0x28223BE20](v87);
      v88 = v146;
      *(&v135 - 2) = v146;
      sub_222C63158(sub_222BD3D44, &v135 - 4, v86);
      v66 = v89;

      v78(v88, v69);
      return v66;
    }

    v51(v20, v54, v53);
    v56 = v20;
    v57 = v50[7];
    v57(v56, 0, 1, v53);
    sub_222B4FC6C(v141, v12, &qword_27D0257D8, &unk_222C990C0);
    v58 = type metadata accessor for MediaPlayClassification();
    if ((*(*(v58 - 8) + 48))(v12, 1, v58) == 1)
    {
      sub_222B4FCD4(v12, &qword_27D0257D8, &unk_222C990C0);
      v59 = 1;
      v60 = v142;
    }

    else
    {
      v60 = v142;
      v51(v142, &v12[*(v58 + 32)], v53);
      sub_222BD4430(v12, type metadata accessor for MediaPlayClassification);
      v59 = 0;
    }

    v57(v60, v59, 1, v53);
    v80 = v140;
    v81 = *(v139 + 48);
    v82 = v151;
    sub_222B4FC6C(v151, v140, &unk_27D026290, &qword_222C96B40);
    v139 = v81;
    sub_222B4FC6C(v60, v80 + v81, &unk_27D026290, &qword_222C96B40);
    v83 = v147[6];
    if (v83(v80, 1, v53) == 1)
    {
      sub_222B4FCD4(v60, &unk_27D026290, &qword_222C96B40);
      sub_222B4FCD4(v82, &unk_27D026290, &qword_222C96B40);
      v84 = v53;
      if (v83(v80 + v139, 1, v53) == 1)
      {
        sub_222B4FCD4(v80, &unk_27D026290, &qword_222C96B40);
        v85 = v152;
LABEL_48:
        v104 = sub_222BD3D64(v85, v141);
        v105 = v104;
        v106 = *(v85 + 16);
        if (v106)
        {
          v151 = v104;
          v153[0] = MEMORY[0x277D84F90];
          sub_222B4C418(0, v106, 0);
          v107 = v153[0];
          v108 = *(v150 + 72);
          do
          {
            v109 = v148;
            sub_222BD43C8(v49, v148, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
            v110 = v109 + *(v149 + 20);
            v111 = sub_222C9360C();
            v113 = v112;
            sub_222BD4430(v109, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
            v153[0] = v107;
            v115 = *(v107 + 16);
            v114 = *(v107 + 24);
            if (v115 >= v114 >> 1)
            {
              sub_222B4C418((v114 > 1), v115 + 1, 1);
              v107 = v153[0];
            }

            *(v107 + 16) = v115 + 1;
            v116 = v107 + 16 * v115;
            *(v116 + 32) = v111;
            *(v116 + 40) = v113;
            v49 += v108;
            --v106;
          }

          while (v106);

          v105 = v151;
        }

        else
        {

          v107 = MEMORY[0x277D84F90];
        }

        v117 = v136;
        v118 = v144;
        if (qword_280FDFE78 != -1)
        {
          swift_once();
        }

        v119 = sub_222C9431C();
        __swift_project_value_buffer(v119, qword_280FE2340);
        sub_222BD43C8(v118, v117, type metadata accessor for FeaturisedTurn);

        v120 = sub_222C942FC();
        v121 = sub_222C94A3C();
        if (os_log_type_enabled(v120, v121))
        {
          v122 = swift_slowAlloc();
          v123 = swift_slowAlloc();
          v153[0] = v123;
          *v122 = 136315906;
          if (qword_27D024710 != -1)
          {
            swift_once();
          }

          *(v122 + 4) = sub_222B437C0(qword_27D026630, *algn_27D026638, v153);
          *(v122 + 12) = 2048;
          if (v105 >> 62)
          {
            v124 = sub_222C94C6C();
          }

          else
          {
            v124 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v122 + 14) = v124;

          *(v122 + 22) = 2048;
          *(v122 + 24) = *(v107 + 16);

          *(v122 + 32) = 2080;
          sub_222B7BB84(&qword_280FE0298);
          v125 = sub_222C9517C();
          v126 = v117;
          v127 = v125;
          v129 = v128;
          sub_222BD4430(v126, type metadata accessor for FeaturisedTurn);
          v130 = sub_222B437C0(v127, v129, v153);

          *(v122 + 34) = v130;
          _os_log_impl(&dword_222B39000, v120, v121, "%s Generated outcomes for %ld/%ld suggestions in Turn id=%s", v122, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x223DCA8C0](v123, -1, -1);
          MEMORY[0x223DCA8C0](v122, -1, -1);
        }

        else
        {

          sub_222BD4430(v117, type metadata accessor for FeaturisedTurn);
        }

        sub_222BD34A8(v105, v107);

        MEMORY[0x28223BE20](v131);
        v132 = v146;
        *(&v135 - 2) = v146;
        sub_222C63158(sub_222BD44F8, &v135 - 4, v105);
        v66 = v133;

        (v147[1])(v132, v84);
        return v66;
      }
    }

    else
    {
      v90 = v137;
      sub_222B4FC6C(v80, v137, &unk_27D026290, &qword_222C96B40);
      v91 = v139;
      v84 = v53;
      if (v83(v80 + v139, 1, v53) != 1)
      {
        v101 = v135;
        (v143)(v135, v80 + v91, v53);
        sub_222B7BB84(&qword_280FE02A0);
        v102 = sub_222C9447C();
        v103 = v147[1];
        v103(v101, v84);
        sub_222B4FCD4(v142, &unk_27D026290, &qword_222C96B40);
        sub_222B4FCD4(v151, &unk_27D026290, &qword_222C96B40);
        v103(v90, v84);
        sub_222B4FCD4(v80, &unk_27D026290, &qword_222C96B40);
        v85 = v152;
        if (v102)
        {
          goto LABEL_48;
        }

LABEL_40:
        if (qword_280FDFE78 != -1)
        {
          swift_once();
        }

        v92 = sub_222C9431C();
        __swift_project_value_buffer(v92, qword_280FE2340);
        v93 = sub_222C942FC();
        v94 = sub_222C94A4C();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v153[0] = v96;
          *v95 = 136315138;
          if (qword_27D024710 != -1)
          {
            swift_once();
          }

          *(v95 + 4) = sub_222B437C0(qword_27D026630, *algn_27D026638, v153);
          _os_log_impl(&dword_222B39000, v93, v94, "%s Suggestion was made on a turn that did not have a playback event. Marking as inconclusive", v95, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v96);
          MEMORY[0x223DCA8C0](v96, -1, -1);
          MEMORY[0x223DCA8C0](v95, -1, -1);
        }

        v97 = sub_222BD32F0(v152, 0xFu, 2);

        MEMORY[0x28223BE20](v98);
        v99 = v146;
        *(&v135 - 2) = v146;
        sub_222C63158(sub_222BD44F8, &v135 - 4, v97);
        v66 = v100;

        (v147[1])(v99, v84);
        return v66;
      }

      sub_222B4FCD4(v142, &unk_27D026290, &qword_222C96B40);
      sub_222B4FCD4(v151, &unk_27D026290, &qword_222C96B40);
      (v147[1])(v90, v53);
    }

    sub_222B4FCD4(v80, &qword_27D025290, &unk_222C97C30);
    goto LABEL_40;
  }

  if (qword_280FDFE78 != -1)
  {
LABEL_67:
    swift_once();
  }

  v61 = sub_222C9431C();
  __swift_project_value_buffer(v61, qword_280FE2340);
  v62 = sub_222C942FC();
  v63 = sub_222C94A4C();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v153[0] = v65;
    *v64 = 136315138;
    if (qword_27D024710 != -1)
    {
      swift_once();
    }

    *(v64 + 4) = sub_222B437C0(qword_27D026630, *algn_27D026638, v153);
    _os_log_impl(&dword_222B39000, v62, v63, "%s Missing PLUS Id for turn with PICS suggestions. SELF logs cannot be emitted for these suggestions.", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v65);
    MEMORY[0x223DCA8C0](v65, -1, -1);
    MEMORY[0x223DCA8C0](v64, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_222BD32F0(uint64_t a1, unsigned int a2, int a3)
{
  HIDWORD(v22) = a3;
  v5 = type metadata accessor for PlusGenericSuggestionRuntimeSummary(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v7 + 20);
    v14 = *(v7 + 24);
    v15 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v16 = *(v8 + 72);
    do
    {
      sub_222BD43C8(v15, v10, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
      v17 = sub_222C783B8(HIDWORD(v22));
      v18 = sub_222C786C4(&v10[v13], &v10[v14], a2, v17);

      v19 = sub_222BD4430(v10, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
      if (v18)
      {
        MEMORY[0x223DC94A0](v19);
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v20 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_222C9475C();
        }

        sub_222C947AC();
        v11 = v23;
      }

      v15 += v16;
      --v12;
    }

    while (v12);
  }

  return v11;
}

uint64_t sub_222BD34A8(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v77 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v74 - v8;
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  v80 = a1 & 0xFFFFFFFFFFFFFF8;
  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v78 = v2;
  if (!v10)
  {
LABEL_32:
    v79 = MEMORY[0x277D84F98];
    goto LABEL_33;
  }

LABEL_3:
  v11 = 0;
  v79 = MEMORY[0x277D84F98];
  do
  {
    v3 = v11;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x223DC9B30](v3, a1);
      }

      else
      {
        if (v3 >= *(v80 + 16))
        {
          goto LABEL_30;
        }

        v12 = *(a1 + 8 * v3 + 32);
      }

      v13 = v12;
      v11 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        v80 = a1 & 0xFFFFFFFFFFFFFF8;
        v10 = sub_222C94C6C();
        v78 = v3;
        if (!v10)
        {
          goto LABEL_32;
        }

        goto LABEL_3;
      }

      v14 = [v12 suggestionLinkId];
      if (v14)
      {
        break;
      }

LABEL_6:
      ++v3;
      if (v11 == v10)
      {
        v3 = v78;
        goto LABEL_33;
      }
    }

    v15 = v14;
    sub_222C94A1C();

    v16 = sub_222C9367C();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v9, 1, v16) == 1)
    {

      sub_222B4FCD4(v9, &unk_27D026290, &qword_222C96B40);
      goto LABEL_6;
    }

    v18 = sub_222C9360C();
    v20 = v19;
    (*(v17 + 8))(v9, v16);
    v21 = v20;
    v75 = [v13 suggestionOutcome];
    v22 = v79;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v22;
    *&v76 = v18;
    v25 = sub_222B8C9DC(v18, v21);
    v26 = *(v22 + 16);
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      result = sub_222C9526C();
      __break(1u);
      return result;
    }

    if (*(v22 + 24) >= v28)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v24 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v31 = v24;
        sub_222B9432C();
        if ((v31 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

LABEL_22:

      v79 = v82;
      *(v82[7] + 4 * v25) = v75;

      goto LABEL_26;
    }

    LODWORD(v79) = v24;
    sub_222B90F94(v28, isUniquelyReferenced_nonNull_native);
    v29 = sub_222B8C9DC(v76, v21);
    if ((v79 & 1) != (v30 & 1))
    {
      goto LABEL_52;
    }

    v25 = v29;
    if (v79)
    {
      goto LABEL_22;
    }

LABEL_24:
    v32 = v21;
    v33 = v82;
    v82[(v25 >> 6) + 8] |= 1 << v25;
    v34 = (v33[6] + 16 * v25);
    *v34 = v76;
    v34[1] = v32;
    *(v33[7] + 4 * v25) = v75;

    v35 = v33[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_51;
    }

    v79 = v33;
    v33[2] = v37;
LABEL_26:
    v3 = v78;
  }

  while (v11 != v10);
LABEL_33:
  v38 = *(v77 + 16);
  if (v38)
  {
    v39 = (v77 + 40);
    v40 = &unk_280FDF000;
    *&v7 = 136315394;
    v77 = v7;
    *&v7 = 136315650;
    v76 = v7;
    v41 = v79;
    do
    {
      v43 = *(v39 - 1);
      v42 = *v39;
      v44 = *(v41 + 16);

      if (v44 && (v45 = sub_222B8C9DC(v43, v42), (v46 & 1) != 0))
      {
        LODWORD(v80) = *(*(v41 + 56) + 4 * v45);
        if (v40[463] != -1)
        {
          swift_once();
        }

        v47 = sub_222C9431C();
        __swift_project_value_buffer(v47, qword_280FE2340);

        v48 = sub_222C942FC();
        v49 = sub_222C94A3C();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v81 = v3;
          v82 = v51;
          *v50 = v76;
          type metadata accessor for MediaSuggestionOutcomeExtractor();

          v52 = sub_222C944EC();
          v54 = sub_222B437C0(v52, v53, &v82);

          *(v50 + 4) = v54;
          *(v50 + 12) = 2080;
          v55 = sub_222B437C0(v43, v42, &v82);

          *(v50 + 14) = v55;
          *(v50 + 22) = 2080;
          v56 = @"PLUSSUGGESTIONOUTCOME_UNKNOWN";
          v57 = @"PLUSSUGGESTIONOUTCOME_UNKNOWN";
          if (v80 <= 0xF)
          {
            v57 = off_2784BBDF0[v80];
            v56 = off_2784BBE70[v80];
          }

          v58 = v57;
          v59 = v56;
          v60 = sub_222C9449C();
          v62 = v61;

          v63 = sub_222B437C0(v60, v62, &v82);

          *(v50 + 24) = v63;
          _os_log_impl(&dword_222B39000, v48, v49, "[%s] Suggestion Id=%s, Outcome=%s", v50, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x223DCA8C0](v51, -1, -1);
          MEMORY[0x223DCA8C0](v50, -1, -1);

          v3 = v78;
          v41 = v79;
          v40 = &unk_280FDF000;
          goto LABEL_36;
        }
      }

      else
      {
        if (v40[463] != -1)
        {
          swift_once();
        }

        v64 = sub_222C9431C();
        __swift_project_value_buffer(v64, qword_280FE2340);

        v48 = sub_222C942FC();
        v65 = sub_222C94A4C();

        if (os_log_type_enabled(v48, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v81 = v3;
          v82 = v67;
          *v66 = v77;
          type metadata accessor for MediaSuggestionOutcomeExtractor();

          v68 = sub_222C944EC();
          v70 = sub_222B437C0(v68, v69, &v82);
          v41 = v79;

          *(v66 + 4) = v70;
          *(v66 + 12) = 2080;
          v71 = sub_222B437C0(v43, v42, &v82);

          *(v66 + 14) = v71;
          v3 = v78;
          _os_log_impl(&dword_222B39000, v48, v65, "[%s] Missing outcome for Suggestion Id=%s. SELF messages will not be emitted.", v66, 0x16u);
          swift_arrayDestroy();
          v72 = v67;
          v40 = &unk_280FDF000;
          MEMORY[0x223DCA8C0](v72, -1, -1);
          MEMORY[0x223DCA8C0](v66, -1, -1);

          goto LABEL_36;
        }
      }

LABEL_36:
      v39 += 2;
      --v38;
    }

    while (v38);
  }
}

id sub_222BD3C40@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024CB0, &unk_222CA5330) + 48);
  v7 = sub_222C9367C();
  (*(*(v7 - 8) + 16))(a3, a2, v7);
  *(a3 + v6) = v5;
  return v5;
}

uint64_t sub_222BD3D64(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0257D8, &unk_222C990C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v49 - v5;
  v6 = type metadata accessor for MediaPlayClassification();
  v51 = *(v6 - 8);
  v52 = v6;
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v6);
  v50 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PlusGenericSuggestionRuntimeSummary(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v16 = &v49 - v15;
  v17 = *(a1 + 16);
  v55 = a1;
  if (v17)
  {
    v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v19 = *(v14 + 72);
    v20 = a1 + v18;
    v21 = MEMORY[0x277D84F90];
    do
    {
      sub_222BD43C8(v20, v16, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
      if (v16[*(v9 + 32)] == 2)
      {
        sub_222BD4490(v16, v13, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4CAF0(0, *(v21 + 16) + 1, 1);
          v21 = v56;
        }

        v24 = *(v21 + 16);
        v23 = *(v21 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_222B4CAF0(v23 > 1, v24 + 1, 1);
          v21 = v56;
        }

        *(v21 + 16) = v24 + 1;
        sub_222BD4490(v13, v21 + v18 + v24 * v19, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
      }

      else
      {
        sub_222BD4430(v16, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
      }

      v20 += v19;
      --v17;
    }

    while (v17);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v25 = *(v21 + 16);

  if (v25 != 1)
  {
    v36 = v55;
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v37 = sub_222C9431C();
    __swift_project_value_buffer(v37, qword_280FE2340);
    v38 = sub_222C942FC();
    v39 = sub_222C94A3C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v56 = v41;
      *v40 = 136315138;
      if (qword_27D024710 != -1)
      {
        swift_once();
      }

      *(v40 + 4) = sub_222B437C0(qword_27D026630, *algn_27D026638, &v56);
      _os_log_impl(&dword_222B39000, v38, v39, "%s Either found zero surfaced suggestions, or multiple surfaced suggestions. Marking all suggestions as unknown outcomes.", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      MEMORY[0x223DCA8C0](v41, -1, -1);
      MEMORY[0x223DCA8C0](v40, -1, -1);
    }

    v34 = v36;
    v35 = 0;
    return sub_222BD32F0(v34, 2u, v35);
  }

  v26 = v54;
  sub_222B4FC6C(v53, v54, &qword_27D0257D8, &unk_222C990C0);
  v27 = (*(v51 + 48))(v26, 1, v52);
  v28 = v55;
  if (v27 == 1)
  {
    sub_222B4FCD4(v26, &qword_27D0257D8, &unk_222C990C0);
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v29 = sub_222C9431C();
    __swift_project_value_buffer(v29, qword_280FE2340);
    v30 = sub_222C942FC();
    v31 = sub_222C94A3C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v56 = v33;
      *v32 = 136315138;
      if (qword_27D024710 != -1)
      {
        swift_once();
      }

      *(v32 + 4) = sub_222B437C0(qword_27D026630, *algn_27D026638, &v56);
      _os_log_impl(&dword_222B39000, v30, v31, "%s PIMS surfaced a suggestion but no MediaPlayClassification was generated. Marking all suggestions as unknown.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x223DCA8C0](v33, -1, -1);
      MEMORY[0x223DCA8C0](v32, -1, -1);
    }

    v34 = v28;
    v35 = 2;
    return sub_222BD32F0(v34, 2u, v35);
  }

  v43 = v26;
  v44 = v50;
  sub_222BD4490(v43, v50, type metadata accessor for MediaPlayClassification);
  if (*(v44 + 8) == 1)
  {
    if (sub_222BCB8C4())
    {
      v45 = v28;
      v46 = 13;
      v47 = 1;
    }

    else
    {
      v45 = v28;
      v46 = 14;
      v47 = 3;
    }
  }

  else
  {
    v45 = v28;
    v46 = 12;
    v47 = 2;
  }

  v48 = sub_222BD32F0(v45, v46, v47);
  sub_222BD4430(v44, type metadata accessor for MediaPlayClassification);
  return v48;
}

uint64_t sub_222BD43C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222BD4430(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222BD4490(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_222BD4510()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026760, qword_222C9DCF0);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_27D026650 = 91;
  *algn_27D026658 = 0xE100000000000000;
  return result;
}

uint64_t FeaturisedNowPlayingEventStream.events(since:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026660, &qword_222C9DB88);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026668, &qword_222C9DB90);
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v3[9] = *(v7 + 64);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v8 = *(*(type metadata accessor for EventStreamContext() - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026670, &qword_222C9DB98);
  v3[14] = v9;
  v10 = *(v9 - 8);
  v3[15] = v10;
  v11 = *(v10 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222BD4774, 0, 0);
}

uint64_t sub_222BD4774()
{
  v1 = v0[17];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_222BD4C98();
  sub_222C93E2C();
  v5 = v0[17];
  v6 = v0[15];
  v28 = v6;
  v7 = v0[12];
  v8 = v0[13];
  v29 = v0[11];
  v30 = v0[10];
  v31 = v0[8];
  v32 = v0[9];
  v34 = v0[16];
  v9 = v0[4];
  v26 = v0[5];
  v27 = v0[7];
  v10 = v0[3];
  v33 = v0[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026680, &qword_222C9DBA0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_222C96900;
  v12 = type metadata accessor for CommonBiomeEventFeatureExtractor();
  v13 = swift_allocObject();
  *(v11 + 56) = v12;
  *(v11 + 64) = sub_222BD7900(&qword_27D026688, type metadata accessor for CommonBiomeEventFeatureExtractor);
  *(v11 + 32) = v13;
  v14 = type metadata accessor for NowPlayingFeatureExtractor();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_222C9417C();
  *(v11 + 96) = v14;
  *(v11 + 104) = sub_222BD7900(&qword_27D026440, type metadata accessor for NowPlayingFeatureExtractor);
  *(v11 + 72) = v17;
  sub_222BD4CE4(v10, v8);
  (*(v6 + 16))(v34, v5, v33);
  *(swift_allocObject() + 16) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026690, &unk_222C9FFE0);
  sub_222B61940(&qword_27D026698, &qword_27D026670, &qword_222C9DB98);
  sub_222C94EDC();
  sub_222B61940(&qword_27D0266A0, &qword_27D026660, &qword_222C9DB88);
  sub_222C9516C();
  sub_222BD57BC(v8, v7 + *(v27 + 52));
  sub_222B4FC6C(v7, v29, &qword_27D026668, &qword_222C9DB90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266A8, &qword_222C9DBC8);
  v18 = swift_allocBox();
  v20 = v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266B0, &qword_222C9DBD0);
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  sub_222B4FC6C(v29, v30, &qword_27D026668, &qword_222C9DB90);
  v22 = (*(v31 + 80) + 24) & ~*(v31 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  sub_222BD5D90(v30, v23 + v22);

  sub_222C948BC();
  sub_222B4FCD4(v29, &qword_27D026668, &qword_222C9DB90);
  sub_222B4FCD4(v7, &qword_27D026668, &qword_222C9DB90);
  sub_222BD5EF0(v8);
  (*(v28 + 8))(v5, v33);

  v24 = v0[1];

  return v24();
}

unint64_t sub_222BD4C98()
{
  result = qword_27D026678;
  if (!qword_27D026678)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D026678);
  }

  return result;
}

uint64_t sub_222BD4CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_222C935EC();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v52 = &v46 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v53 = &v46 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v46 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v46 - v19;
  v21 = v4[2];
  v54 = a1;
  v56 = v21;
  v21(&v46 - v19, a1, v3);
  sub_222C935DC();
  LOBYTE(a1) = sub_222C9356C();
  v22 = v4[1];
  v22(v18, v3);
  if (a1)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v23 = sub_222C9431C();
    __swift_project_value_buffer(v23, qword_280FE2340);
    v56(v15, v54, v3);
    v24 = sub_222C942FC();
    v49 = sub_222C94A4C();
    v25 = os_log_type_enabled(v24, v49);
    v50 = v4;
    v51 = v8;
    if (v25)
    {
      v47 = v24;
      v48 = v22;
      v26 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v57 = v46;
      *v26 = 136315650;
      if (qword_27D024718 != -1)
      {
        swift_once();
      }

      *(v26 + 4) = sub_222B437C0(qword_27D026650, *algn_27D026658, &v57);
      *(v26 + 12) = 2080;
      sub_222BD7900(&qword_27D026758, MEMORY[0x277CC9578]);
      v27 = sub_222C9517C();
      v29 = v28;
      v30 = v15;
      v31 = v48;
      v48(v30, v3);
      v32 = sub_222B437C0(v27, v29, &v57);

      *(v26 + 14) = v32;
      *(v26 + 22) = 2080;
      sub_222C935DC();
      v33 = sub_222C9517C();
      v35 = v34;
      v31(v18, v3);
      v36 = sub_222B437C0(v33, v35, &v57);

      *(v26 + 24) = v36;
      v37 = v47;
      _os_log_impl(&dword_222B39000, v47, v49, "%s Start date (%s) is greater than now (%s), setting start date to now", v26, 0x20u);
      v38 = v46;
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v38, -1, -1);
      MEMORY[0x223DCA8C0](v26, -1, -1);
    }

    else
    {

      v22(v15, v3);
      v31 = v22;
    }

    v39 = v52;
    sub_222C935DC();
    sub_222BD7900(&qword_27D025A18, MEMORY[0x277CC9578]);
    v40 = v54;
    v41 = sub_222C9446C();
    v42 = v31;
    v31(v20, v3);
    v43 = v53;
    if (v41)
    {
      v44 = v50[4];
      v44(v53, v39, v3);
    }

    else
    {
      v42(v39, v3);
      v56(v43, v40, v3);
      v44 = v50[4];
    }

    v22 = v42;
    v44(v20, v43, v3);
  }

  v56(v18, v20, v3);
  sub_222C935DC();
  sub_222C9328C();
  return (v22)(v20, v3);
}

uint64_t sub_222BD5274(uint64_t a1, void *a2, uint64_t a3)
{
  v3[8] = a1;
  v3[9] = a3;
  v3[10] = *a2;
  return MEMORY[0x2822009F8](sub_222BD529C, 0, 0);
}

void *sub_222BD529C()
{
  v1 = v0[9];
  v19 = MEMORY[0x223DCA1C0]();
  v2 = *(v1 + 16);
  if (!v2)
  {
    v3 = MEMORY[0x277D84F90];
LABEL_19:
    v17 = v0[8];
    objc_autoreleasePoolPop(v19);
    *v17 = v3;
    v18 = v0[1];

    return v18();
  }

  v3 = MEMORY[0x277D84F90];
  v4 = v0[9] + 32;
  while (1)
  {
    v6 = v0[10];
    sub_222B43E3C(v4, (v0 + 2));
    v7 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v0[7] = v6;
    v8 = *(v7 + 8);
    v9 = sub_222C93E3C();
    result = __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    v10 = *(v9 + 16);
    v11 = v3[2];
    v12 = v11 + v10;
    if (__OFADD__(v11, v10))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v12 <= v3[3] >> 1)
    {
      if (*(v9 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v11 <= v12)
      {
        v13 = v11 + v10;
      }

      else
      {
        v13 = v11;
      }

      result = sub_222B4A108(result, v13, 1, v3);
      v3 = result;
      if (*(v9 + 16))
      {
LABEL_14:
        if ((v3[3] >> 1) - v3[2] < v10)
        {
          goto LABEL_24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
        swift_arrayInitWithCopy();

        if (v10)
        {
          v14 = v3[2];
          v15 = __OFADD__(v14, v10);
          v16 = v14 + v10;
          if (v15)
          {
            goto LABEL_25;
          }

          v3[2] = v16;
        }

        goto LABEL_4;
      }
    }

    if (v10)
    {
      goto LABEL_23;
    }

LABEL_4:
    v4 += 40;
    if (!--v2)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_222BD5480(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_222B503AC;

  return sub_222BD5274(a1, a2, v6);
}

uint64_t sub_222BD5530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_222B41FD0(a1);
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = result;
  v7 = v5;
  v8 = sub_222B41FE8(a1);
  if (!v9)
  {

LABEL_15:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v10 = v8;
  v11 = v9;
  v25 = MEMORY[0x277D84FA0];
  v12 = *(a1 + 16);

  if (v12)
  {
    v19 = v10;
    v20 = v6;
    v13 = MEMORY[0x277D84F90];
    v14 = a1 + 32;
    do
    {
      sub_222B43E3C(v14, v23);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024858, &qword_222C98950);
      *&v21 = swift_allocObject();
      sub_222B43E3C(v23, v21 + 16);
      __swift_project_boxed_opaque_existential_1(&v21, v22);
      DynamicType = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_0Tm(&v21);
      if (sub_222B69F7C(&v21, DynamicType))
      {
        sub_222B405A0(v23, &v21);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222B4C5C0(0, *(v13 + 16) + 1, 1);
          v13 = v24;
        }

        v18 = *(v13 + 16);
        v17 = *(v13 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_222B4C5C0((v17 > 1), v18 + 1, 1);
          v13 = v24;
        }

        *(v13 + 16) = v18 + 1;
        sub_222B405A0(&v21, v13 + 40 * v18 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v23);
      }

      v14 += 40;
      --v12;
    }

    while (v12);
    v6 = v20;
    v10 = v19;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_222BD5754(uint64_t a1, uint64_t *a2)
{
  sub_222BD5530(*a2, a1);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_222BD57BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventStreamContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222BD5820(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222B503AC;

  return FeaturisedNowPlayingEventStream.events(since:)(a1, a2);
}

uint64_t sub_222BD58C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a1;
  v3[12] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266A8, &qword_222C9DBC8) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_222BD5980, 0, 0);
}

uint64_t sub_222BD5980()
{
  v2 = v0[14];
  v1 = v0[15];
  swift_beginAccess();
  sub_222B3D6C4(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266B0, &qword_222C9DBD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  LODWORD(v1) = v5(v2, 1, v3);
  sub_222B3D734(v2);
  if (v1 == 1)
  {
    v6 = v0[15];
    v7 = v0[13];
    sub_222BD7010(v7);
    (*(v4 + 56))(v7, 0, 1, v3);
    swift_beginAccess();
    sub_222B3D79C(v7, v6);
  }

  v8 = v0[15];
  swift_beginAccess();
  if (v5(v8, 1, v3))
  {
    v9 = v0[11];
    swift_endAccess();
    *(v9 + 32) = 0;
    *v9 = 0u;
    *(v9 + 16) = 0u;
    v11 = v0[13];
    v10 = v0[14];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = swift_task_alloc();
    v0[16] = v14;
    *v14 = v0;
    v14[1] = sub_222BD5BC8;
    v15 = v0[15];
    v16 = v0[11];

    return sub_222BD7278(v16);
  }
}

uint64_t sub_222BD5BC8()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_222BD5D18, 0, 0);
  }

  else
  {
    swift_endAccess();
    v5 = v3[13];
    v4 = v3[14];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_222BD5D18()
{
  v1 = v0[13];
  v2 = v0[14];
  swift_endAccess();

  v3 = v0[1];
  v4 = v0[17];

  return v3();
}

uint64_t sub_222BD5D90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026668, &qword_222C9DB90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222BD5E00(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026668, &qword_222C9DB90) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_222B503AC;

  return sub_222BD58C8(a1, v6, v1 + v5);
}

uint64_t sub_222BD5EF0(uint64_t a1)
{
  v2 = type metadata accessor for EventStreamContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222BD5F4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_222BD5F94(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_222BD5FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a1;
  v3[12] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266C0, &qword_222C9DC78);
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266C8, &qword_222C9DC80) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_222BD610C, 0, 0);
}

uint64_t sub_222BD610C()
{
  v2 = v0[17];
  v1 = v0[18];
  swift_beginAccess();
  sub_222B4FC6C(v1, v2, &qword_27D0266C8, &qword_222C9DC80);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266D0, &qword_222C9DC88);
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  LODWORD(v1) = v5(v2, 1, v3);
  sub_222B4FCD4(v2, &qword_27D0266C8, &qword_222C9DC80);
  if (v1 == 1)
  {
    v6 = v0[18];
    v7 = v0[16];
    (*(v0[14] + 16))(v0[15], v0[12], v0[13]);
    sub_222B61940(&qword_27D0266D8, &qword_27D0266C0, &qword_222C9DC78);
    sub_222C9487C();
    (*(v4 + 56))(v7, 0, 1, v3);
    swift_beginAccess();
    sub_222BD6FA8(v7, v6, &qword_27D0266C8, &qword_222C9DC80);
  }

  v8 = v0[18];
  swift_beginAccess();
  if (v5(v8, 1, v3))
  {
    v9 = v0[11];
    swift_endAccess();
    *(v9 + 32) = 0;
    *v9 = 0u;
    *(v9 + 16) = 0u;
    v11 = v0[16];
    v10 = v0[17];
    v12 = v0[15];

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = sub_222B61940(&qword_27D0266E0, &qword_27D0266D0, &qword_222C9DC88);
    v16 = *(MEMORY[0x277D856D0] + 4);
    v17 = swift_task_alloc();
    v0[19] = v17;
    *v17 = v0;
    v17[1] = sub_222BD6414;
    v18 = v0[18];
    v19 = v0[11];

    return MEMORY[0x282200308](v19, v3, v15);
  }
}

uint64_t sub_222BD6414()
{
  v2 = *(*v1 + 152);
  v3 = *v1;
  v3[20] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_222BD7948, 0, 0);
  }

  else
  {
    swift_endAccess();
    v5 = v3[16];
    v4 = v3[17];
    v6 = v3[15];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_222BD6570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a1;
  v3[12] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026710, &qword_222C9DCB8);
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026718, &unk_222C9DCC0) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_222BD6690, 0, 0);
}

uint64_t sub_222BD6690()
{
  v2 = v0[17];
  v1 = v0[18];
  swift_beginAccess();
  sub_222B4FC6C(v1, v2, &qword_27D026718, &unk_222C9DCC0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026720, &qword_222C9FB60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  LODWORD(v1) = v5(v2, 1, v3);
  sub_222B4FCD4(v2, &qword_27D026718, &unk_222C9DCC0);
  if (v1 == 1)
  {
    v6 = v0[18];
    v7 = v0[16];
    (*(v0[14] + 16))(v0[15], v0[12], v0[13]);
    sub_222B61940(&qword_27D026728, &qword_27D026710, &qword_222C9DCB8);
    sub_222C9487C();
    (*(v4 + 56))(v7, 0, 1, v3);
    swift_beginAccess();
    sub_222BD6FA8(v7, v6, &qword_27D026718, &unk_222C9DCC0);
  }

  v8 = v0[18];
  swift_beginAccess();
  if (v5(v8, 1, v3))
  {
    v9 = v0[11];
    swift_endAccess();
    *(v9 + 32) = 0;
    *v9 = 0u;
    *(v9 + 16) = 0u;
    v11 = v0[16];
    v10 = v0[17];
    v12 = v0[15];

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = sub_222B61940(&qword_27D026730, &qword_27D026720, &qword_222C9FB60);
    v16 = *(MEMORY[0x277D856D0] + 4);
    v17 = swift_task_alloc();
    v0[19] = v17;
    *v17 = v0;
    v17[1] = sub_222BD6998;
    v18 = v0[18];
    v19 = v0[11];

    return MEMORY[0x282200308](v19, v3, v15);
  }
}

uint64_t sub_222BD6998()
{
  v2 = *(*v1 + 152);
  v3 = *v1;
  v3[20] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_222BD6AF4, 0, 0);
  }

  else
  {
    swift_endAccess();
    v5 = v3[16];
    v4 = v3[17];
    v6 = v3[15];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_222BD6AF4()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  swift_endAccess();

  v4 = v0[1];
  v5 = v0[20];

  return v4();
}

uint64_t sub_222BD6B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a1;
  v3[12] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266E8, &qword_222C9DC98);
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266F0, &qword_222C9DCA0) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_222BD6CA0, 0, 0);
}

uint64_t sub_222BD6CA0()
{
  v2 = v0[17];
  v1 = v0[18];
  swift_beginAccess();
  sub_222B4FC6C(v1, v2, &qword_27D0266F0, &qword_222C9DCA0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266F8, &qword_222C9DCA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  LODWORD(v1) = v5(v2, 1, v3);
  sub_222B4FCD4(v2, &qword_27D0266F0, &qword_222C9DCA0);
  if (v1 == 1)
  {
    v6 = v0[18];
    v7 = v0[16];
    (*(v0[14] + 16))(v0[15], v0[12], v0[13]);
    sub_222B61940(&qword_27D026700, &qword_27D0266E8, &qword_222C9DC98);
    sub_222C9487C();
    (*(v4 + 56))(v7, 0, 1, v3);
    swift_beginAccess();
    sub_222BD6FA8(v7, v6, &qword_27D0266F0, &qword_222C9DCA0);
  }

  v8 = v0[18];
  swift_beginAccess();
  if (v5(v8, 1, v3))
  {
    v9 = v0[11];
    swift_endAccess();
    *(v9 + 32) = 0;
    *v9 = 0u;
    *(v9 + 16) = 0u;
    v11 = v0[16];
    v10 = v0[17];
    v12 = v0[15];

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = sub_222B61940(&qword_27D026708, &qword_27D0266F8, &qword_222C9DCA8);
    v16 = *(MEMORY[0x277D856D0] + 4);
    v17 = swift_task_alloc();
    v0[19] = v17;
    *v17 = v0;
    v17[1] = sub_222BD6414;
    v18 = v0[18];
    v19 = v0[11];

    return MEMORY[0x282200308](v19, v3, v15);
  }
}

uint64_t sub_222BD6FA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_222BD7010@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266B8, &qword_222C9DBE0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  v8 = type metadata accessor for EventStreamContext();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026668, &qword_222C9DB90);
  sub_222BD57BC(v1 + *(v12 + 52), v11);
  v13 = type metadata accessor for NowPlayingStreamStateMachine(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = v16 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentEvent;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  v18 = v16 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_eventToEmit;
  *(v18 + 32) = 0;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v16 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_currentPlayState) = 3;
  *(v16 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_playLength) = 0;
  *(v16 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_lastPlayTimestamp) = 0;
  sub_222BD789C(v11, v16 + OBJC_IVAR____TtC28SiriPrivateLearningInferenceP33_9D5FDEA6C0F78966509CB6B1160C3BEF28NowPlayingStreamStateMachine_context);
  (*(v4 + 16))(v7, v1, v3);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266B0, &qword_222C9DBD0);
  v20 = v19[13];
  sub_222B61940(&qword_27D026748, &qword_27D0266B8, &qword_222C9DBE0);
  sub_222C9487C();
  v21 = v19[14];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026750, &unk_222C9DCE0);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  result = sub_222C9426C();
  *(a1 + v21) = result;
  *(a1 + v19[15]) = 0;
  *a1 = v16;
  return result;
}

uint64_t sub_222BD7278(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return MEMORY[0x2822009F8](sub_222BD7298, 0, 0);
}

uint64_t sub_222BD7298()
{
  v1 = *(v0 + 184);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0266B0, &qword_222C9DBD0);
  *(v0 + 192) = v2;
  *(v0 + 200) = *(v1 + *(v2 + 56));
  if ((sub_222C9424C() & 1) == 0)
  {
    v7 = *(v0 + 200);
    v8 = *(v0 + 176);
    sub_222C9421C();
    goto LABEL_5;
  }

  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v3 + 60);
  *(v0 + 224) = v5;
  if (*(v4 + v5))
  {
    v6 = *(v0 + 176);
    *(v6 + 32) = 0;
    *v6 = 0u;
    *(v6 + 16) = 0u;
LABEL_5:
    v9 = *(v0 + 8);

    return v9();
  }

  v11 = *(v3 + 52);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026738, &qword_222C9DCD8);
  v13 = sub_222B61940(&qword_27D026740, &qword_27D026738, &qword_222C9DCD8);
  v14 = *(MEMORY[0x277D856D0] + 4);
  v15 = swift_task_alloc();
  *(v0 + 208) = v15;
  *v15 = v0;
  v15[1] = sub_222BD743C;

  return MEMORY[0x282200308](v0 + 56, v12, v13);
}

uint64_t sub_222BD743C()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_222BD7884;
  }

  else
  {
    v3 = sub_222BD7550;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222BD7550()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  if (!v2)
  {
    v30 = *(v0 + 224);
    v31 = *(v0 + 184);
    v32 = *(v0 + 72);
    v33 = *(v0 + 80);
    v34 = *(v0 + 88);
    sub_222B5EE44(v1, 0);
    *(v31 + v30) = 1;
    v35 = *v31;
    v7 = sub_222BCFF2C();
    v36 = v7;
    v37 = *(v7 + 16);
    if (v37)
    {
      v38 = 0;
      v39 = (v7 + 64);
      while (v38 < *(v36 + 16))
      {
        v40 = *(v0 + 200);
        ++v38;
        v41 = *(v39 - 1);
        v42 = *v39;
        v43 = *(v39 - 3);
        v44 = *(v39 - 2);
        *(v0 + 96) = *(v39 - 4);
        *(v0 + 104) = v43;
        *(v0 + 112) = v44;
        *(v0 + 120) = v41;
        *(v0 + 128) = v42;

        sub_222C9422C();
        v45 = *(v0 + 104);
        v46 = *(v0 + 112);
        v47 = *(v0 + 128);

        v39 += 5;
        if (v37 == v38)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_23;
    }

LABEL_13:
    v48 = *(v0 + 200);
    v49 = *(v0 + 176);

    goto LABEL_15;
  }

  v3 = *(v0 + 184);
  v4 = *(v0 + 72);
  v5 = *(v0 + 88);
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v5;
  v6 = *v3;
  sub_222BCFA8C((v0 + 16));
  v10 = v7;
  v11 = *(v7 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = (v7 + 64);
    while (v12 < *(v10 + 16))
    {
      v14 = *(v0 + 200);
      ++v12;
      v15 = *(v13 - 1);
      v16 = *v13;
      v17 = *(v13 - 3);
      v18 = *(v13 - 2);
      *(v0 + 136) = *(v13 - 4);
      *(v0 + 144) = v17;
      *(v0 + 152) = v18;
      *(v0 + 160) = v15;
      *(v0 + 168) = v16;

      sub_222C9422C();
      v19 = *(v0 + 144);
      v20 = *(v0 + 152);
      v21 = *(v0 + 168);

      v13 += 5;
      if (v11 == v12)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return MEMORY[0x282200308](v7, v8, v9);
  }

LABEL_6:
  v22 = *(v0 + 200);
  v23 = *(v0 + 24);
  v24 = *(v0 + 32);
  v25 = *(v0 + 48);

  if ((sub_222C9424C() & 1) == 0)
  {
    v50 = *(v0 + 200);
    v51 = *(v0 + 176);
LABEL_15:
    sub_222C9421C();
    goto LABEL_16;
  }

  v27 = *(v0 + 184);
  v26 = *(v0 + 192);
  v28 = *(v26 + 60);
  *(v0 + 224) = v28;
  if ((*(v27 + v28) & 1) == 0)
  {
    v54 = *(v26 + 52);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026738, &qword_222C9DCD8);
    v56 = sub_222B61940(&qword_27D026740, &qword_27D026738, &qword_222C9DCD8);
    v57 = *(MEMORY[0x277D856D0] + 4);
    v58 = swift_task_alloc();
    *(v0 + 208) = v58;
    *v58 = v0;
    v58[1] = sub_222BD743C;
    v7 = v0 + 56;
    v8 = v55;
    v9 = v56;

    return MEMORY[0x282200308](v7, v8, v9);
  }

  v29 = *(v0 + 176);
  *(v29 + 32) = 0;
  *v29 = 0u;
  *(v29 + 16) = 0u;
LABEL_16:
  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_222BD789C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventStreamContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222BD7900(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PartialRepetitionMetadata.__allocating_init(session:successClassification:comparisons:firstTurn:secondTurn:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2[3];
  v12 = a2[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a2, v11);
  v14 = sub_222BD7DDC(a1, v13, a3, a4, a5, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v14;
}

uint64_t PartialRepetitionMetadata.init(session:successClassification:comparisons:firstTurn:secondTurn:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2[3];
  v12 = a2[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a2, v11);
  v14 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = sub_222BD7CCC(a1, v16, a3, a4, a5, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  return v18;
}

uint64_t PartialRepetitionMetadata.deinit()
{
  sub_222BD7EFC(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_session, type metadata accessor for FeaturisedSession);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_successClassification));
  v1 = *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_comparisons);

  sub_222BD7EFC(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_firstTurn, type metadata accessor for FeaturisedTurn);
  sub_222BD7EFC(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_secondTurn, type metadata accessor for FeaturisedTurn);
  return v0;
}

uint64_t PartialRepetitionMetadata.__deallocating_deinit()
{
  sub_222BD7EFC(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_session, type metadata accessor for FeaturisedSession);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_successClassification));
  v1 = *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_comparisons);

  sub_222BD7EFC(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_firstTurn, type metadata accessor for FeaturisedTurn);
  sub_222BD7EFC(v0 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_secondTurn, type metadata accessor for FeaturisedTurn);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

char *PartialRepetitionDefinition.generator()@<X0>(char **a1@<X8>)
{
  v3 = type metadata accessor for PartialRepetitionInferenceGroundTruthGenerator();
  result = sub_222C46A24(v1);
  a1[3] = v3;
  a1[4] = &protocol witness table for PartialRepetitionInferenceGroundTruthGenerator<A>;
  *a1 = result;
  return result;
}

uint64_t sub_222BD7CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = (a6 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_successClassification);
  v15[3] = a7;
  v15[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a2, a7);
  sub_222B6544C(a1, a6 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_session, type metadata accessor for FeaturisedSession);
  *(a6 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_comparisons) = a3;
  sub_222B6544C(a4, a6 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_firstTurn, type metadata accessor for FeaturisedTurn);
  sub_222B6544C(a5, a6 + OBJC_IVAR____TtC28SiriPrivateLearningInference25PartialRepetitionMetadata_secondTurn, type metadata accessor for FeaturisedTurn);
  return a6;
}

uint64_t sub_222BD7DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a7 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](a1);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PartialRepetitionMetadata();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  (*(v15 + 16))(v18, a2, a7);
  return sub_222BD7CCC(a1, v18, a3, a4, a5, v22, a7, a8);
}

uint64_t sub_222BD7EFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for PartialRepetitionMetadata()
{
  result = qword_27D026768;
  if (!qword_27D026768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222BD80DC()
{
  result = type metadata accessor for FeaturisedSession(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for FeaturisedTurn(319);
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_222BD81F4()
{
  sub_222C952FC();
  sub_222C9452C();
  return sub_222C9534C();
}

uint64_t sub_222BD8260()
{
  sub_222C952FC();
  sub_222C9452C();
  return sub_222C9534C();
}

uint64_t sub_222BD82B0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_222C94FDC();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_222BD8338@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_222C94FDC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_222BD8390(uint64_t a1)
{
  v2 = sub_222BD8700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BD83CC(uint64_t a1)
{
  v2 = sub_222BD8700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContactCollection.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v17 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026778, &qword_222C9DDE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BD8700();
  sub_222C9535C();
  if (!v2)
  {
    v16 = v5;
    sub_222C94FEC();
    v14 = v8;
    v15 = v4;
    v10 = MEMORY[0x277D84F90];
    v31 = MEMORY[0x277D84F90];
    __swift_project_boxed_opaque_existential_1(v28, v29);
    while ((sub_222C951CC() & 1) == 0)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
      sub_222BD8754();
      sub_222C951BC();
      v30[6] = v24;
      v30[7] = v25;
      v30[8] = v26;
      v30[9] = v27;
      v30[2] = v20;
      v30[3] = v21;
      v30[4] = v22;
      v30[5] = v23;
      v30[0] = v18;
      v30[1] = v19;
      sub_222BD87A8();
      v11 = sub_222BD8D30(v30);
      MEMORY[0x223DC94A0](v11);
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_222C9475C();
      }

      sub_222C947AC();
      v10 = v31;
      __swift_project_boxed_opaque_existential_1(v28, v29);
    }

    (*(v16 + 8))(v14, v15);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    *v17 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t sub_222BD8700()
{
  result = qword_27D026780;
  if (!qword_27D026780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026780);
  }

  return result;
}

unint64_t sub_222BD8754()
{
  result = qword_27D026788;
  if (!qword_27D026788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026788);
  }

  return result;
}

id sub_222BD87A8()
{
  v1 = v0;
  if (v0[1])
  {
    v2 = *v0;
    v3 = v0[1];
  }

  v4 = objc_allocWithZone(MEMORY[0x277CBDB38]);

  v5 = sub_222C9448C();

  v6 = [v4 initWithIdentifier_];

  if (v1[3])
  {
    v7 = v1[2];
    v8 = sub_222C9448C();
    [v6 setNamePrefix_];
  }

  if (v1[5])
  {
    v9 = v1[4];
    v10 = sub_222C9448C();
    [v6 setGivenName_];
  }

  if (v1[7])
  {
    v11 = v1[6];
    v12 = sub_222C9448C();
    [v6 setMiddleName_];
  }

  if (v1[9])
  {
    v13 = v1[8];
    v14 = sub_222C9448C();
    [v6 setFamilyName_];
  }

  if (v1[11])
  {
    v15 = v1[10];
    v16 = sub_222C9448C();
    [v6 setPreviousFamilyName_];
  }

  if (v1[13])
  {
    v17 = v1[12];
    v18 = sub_222C9448C();
    [v6 setNameSuffix_];
  }

  if (v1[15])
  {
    v19 = v1[14];
    v20 = sub_222C9448C();
    [v6 setNickname_];
  }

  if (v1[17])
  {
    v21 = v1[16];
    v22 = sub_222C9448C();
    [v6 setOrganizationName_];
  }

  v57 = v6;
  v23 = v1[18];
  v24 = *(v23 + 16);
  if (v24)
  {
    v56 = v1;
    v60 = MEMORY[0x277D84F90];
    sub_222C94E1C();
    v25 = (v23 + 72);
    do
    {
      if (*(v25 - 2))
      {
        v58 = *(v25 - 3);
      }

      v26 = *(v25 - 5);
      v27 = *(v25 - 4);
      v29 = *(v25 - 1);
      v28 = *v25;
      v30 = objc_allocWithZone(MEMORY[0x277CBDAB0]);
      swift_bridgeObjectRetain_n();

      v31 = sub_222C9448C();
      v32 = [v30 initWithName_];

      v33 = objc_allocWithZone(MEMORY[0x277CBDB20]);
      v34 = sub_222C9448C();

      v35 = sub_222C9448C();

      [v33 initWithIdentifier:v34 label:v35 value:v32];

      sub_222C94DEC();
      v36 = *(v60 + 16);
      sub_222C94E2C();
      sub_222C94E3C();
      sub_222C94DFC();
      v25 += 6;
      --v24;
    }

    while (v24);
    v1 = v56;
    v37 = v57;
  }

  else
  {
    v37 = v57;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026808, &qword_222C9E0E0);
  v38 = sub_222C9470C();

  [v37 setContactRelations_];

  v39 = v1[19];
  v40 = *(v39 + 16);
  if (v40)
  {
    v61 = MEMORY[0x277D84F90];
    sub_222C94E1C();
    v41 = (v39 + 72);
    do
    {
      if (*(v41 - 2))
      {
        v59 = *(v41 - 3);
        v42 = *(v41 - 2);
      }

      v43 = *(v41 - 5);
      v44 = *(v41 - 4);
      v46 = *(v41 - 1);
      v45 = *v41;
      v47 = objc_allocWithZone(MEMORY[0x277CBDB70]);
      swift_bridgeObjectRetain_n();

      v48 = sub_222C9448C();
      v49 = [v47 initWithStringValue_];

      v50 = objc_allocWithZone(MEMORY[0x277CBDB20]);
      v51 = sub_222C9448C();

      v52 = sub_222C9448C();

      [v50 initWithIdentifier:v51 label:v52 value:v49];

      sub_222C94DEC();
      v53 = *(v61 + 16);
      sub_222C94E2C();
      sub_222C94E3C();
      sub_222C94DFC();
      v41 += 6;
      --v40;
    }

    while (v40);
  }

  v54 = sub_222C9470C();

  [v57 setPhoneNumbers_];

  return v57;
}

char *ContactCollection.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026790, &qword_222C9DDE8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BD8700();
  sub_222C9536C();
  v28 = v7;
  sub_222C950AC();
  if (v8 >> 62)
  {
    v10 = sub_222C94C6C();
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
LABEL_13:
    v31 = v11;
    __swift_mutable_project_boxed_opaque_existential_1(v29, v29[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026798, &qword_222C9DDF0);
    sub_222BDA058();
    sub_222BDA0BC();
    sub_222C951DC();
    (*(v4 + 8))(v28, v3);

    return __swift_destroy_boxed_opaque_existential_0Tm(v29);
  }

  v31 = MEMORY[0x277D84F90];
  result = sub_222B4CBB4(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v26 = v4;
    v27 = v3;
    v13 = 0;
    v11 = v31;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x223DC9B30](v13, v8);
      }

      else
      {
        v14 = *(v8 + 8 * v13 + 32);
      }

      v15 = v14;
      sub_222BD9940(v14, v30);

      v31 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_222B4CBB4((v16 > 1), v17 + 1, 1);
        v11 = v31;
      }

      ++v13;
      *(v11 + 16) = v17 + 1;
      v18 = (v11 + 160 * v17);
      v19 = v30[1];
      v18[2] = v30[0];
      v18[3] = v19;
      v20 = v30[2];
      v21 = v30[3];
      v22 = v30[5];
      v18[6] = v30[4];
      v18[7] = v22;
      v18[4] = v20;
      v18[5] = v21;
      v23 = v30[6];
      v24 = v30[7];
      v25 = v30[9];
      v18[10] = v30[8];
      v18[11] = v25;
      v18[8] = v23;
      v18[9] = v24;
    }

    while (v10 != v13);
    v3 = v27;
    v4 = v26;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

unint64_t sub_222BD905C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x696669746E656469;
    v6 = 0x6D614E6E65766967;
    v7 = 0x614E656C6464696DLL;
    if (a1 != 3)
    {
      v7 = 0x614E796C696D6166;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x66657250656D616ELL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6E6F6974616C6572;
    if (a1 != 9)
    {
      v1 = 0x6D754E656E6F6870;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000010;
    }

    v2 = 0xD000000000000012;
    v3 = 0x66667553656D616ELL;
    if (a1 != 6)
    {
      v3 = 0x656D616E6B63696ELL;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_222BD91D4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0267F0, &qword_222C9E0D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BDADEC();
  sub_222C9536C();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v31) = 0;
  sub_222C950CC();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v31) = 1;
    sub_222C950CC();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v31) = 2;
    sub_222C950CC();
    v17 = v3[6];
    v18 = v3[7];
    LOBYTE(v31) = 3;
    sub_222C950CC();
    v19 = v3[8];
    v20 = v3[9];
    LOBYTE(v31) = 4;
    sub_222C950CC();
    v21 = v3[10];
    v22 = v3[11];
    LOBYTE(v31) = 5;
    sub_222C950CC();
    v23 = v3[12];
    v24 = v3[13];
    LOBYTE(v31) = 6;
    sub_222C950CC();
    v25 = v3[14];
    v26 = v3[15];
    LOBYTE(v31) = 7;
    sub_222C950CC();
    v27 = v3[16];
    v28 = v3[17];
    LOBYTE(v31) = 8;
    sub_222C950CC();
    v31 = v3[18];
    HIBYTE(v30) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0267D8, &qword_222C9E0D0);
    sub_222BDAECC(&qword_27D0267F8, sub_222BDAF44);
    sub_222C9512C();
    v31 = v3[19];
    HIBYTE(v30) = 10;
    sub_222C9512C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_222BD94F4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026838, &qword_222C9E298);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BDB60C();
  sub_222C9536C();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_222C950EC();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  sub_222C950CC();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  sub_222C950EC();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_222BD969C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222BDA324(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222BD96D0(uint64_t a1)
{
  v2 = sub_222BDADEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BD970C(uint64_t a1)
{
  v2 = sub_222BDADEC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_222BD9748@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_222BDA6CC(a1, v10);
  if (!v2)
  {
    v5 = v10[7];
    a2[6] = v10[6];
    a2[7] = v5;
    v6 = v10[9];
    a2[8] = v10[8];
    a2[9] = v6;
    v7 = v10[3];
    a2[2] = v10[2];
    a2[3] = v7;
    v8 = v10[5];
    a2[4] = v10[4];
    a2[5] = v8;
    result = *v10;
    v9 = v10[1];
    *a2 = v10[0];
    a2[1] = v9;
  }

  return result;
}

uint64_t sub_222BD97BC()
{
  v1 = 0x6C6562616CLL;
  if (*v0 != 1)
  {
    v1 = 0x65756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_222BD9814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222BDB2A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222BD983C(uint64_t a1)
{
  v2 = sub_222BDB60C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222BD9878(uint64_t a1)
{
  v2 = sub_222BDB60C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_222BD98B4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_222BDB3C0(a1, v6);
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

uint64_t sub_222BD9940@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1;
  v3 = [a1 identifier];
  v4 = sub_222C9449C();
  v107 = v5;
  v108 = v4;

  v6 = [v2 namePrefix];
  v7 = sub_222C9449C();
  v105 = v8;
  v106 = v7;

  v9 = [v2 givenName];
  v10 = sub_222C9449C();
  v103 = v11;
  v104 = v10;

  v12 = [v2 middleName];
  v13 = sub_222C9449C();
  v101 = v14;
  v102 = v13;

  v15 = [v2 familyName];
  v16 = sub_222C9449C();
  v99 = v17;
  v100 = v16;

  v18 = [v2 previousFamilyName];
  v19 = sub_222C9449C();
  v97 = v20;
  v98 = v19;

  v21 = [v2 nameSuffix];
  v22 = sub_222C9449C();
  v95 = v23;
  v96 = v22;

  v24 = [v2 nickname];
  v25 = sub_222C9449C();
  v93 = v26;
  v94 = v25;

  v27 = [v2 organizationName];
  v28 = sub_222C9449C();
  v91 = v29;
  v92 = v28;

  v30 = [v2 contactRelations];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026808, &qword_222C9E0E0);
  v32 = sub_222C9471C();

  if (v32 >> 62)
  {
    v33 = sub_222C94C6C();
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = MEMORY[0x277D84F90];
  if (v33)
  {
    v127[0] = MEMORY[0x277D84F90];
    result = sub_222B4CBD4(0, v33 & ~(v33 >> 63), 0);
    if (v33 < 0)
    {
      __break(1u);
      goto LABEL_35;
    }

    v88 = v31;
    v89 = v2;
    v36 = 0;
    v37 = v127[0];
    v110 = v32 & 0xC000000000000001;
    v112 = v33;
    v114 = v32;
    do
    {
      v38 = v37;
      if (v110)
      {
        v39 = MEMORY[0x223DC9B30](v36, v32);
      }

      else
      {
        v39 = *(v32 + 8 * v36 + 32);
      }

      v40 = v39;
      v41 = [v39 identifier];
      v42 = sub_222C9449C();
      v44 = v43;

      v45 = [v40 label];
      if (v45)
      {
        v46 = v45;
        v47 = sub_222C9449C();
        v49 = v48;
      }

      else
      {
        v47 = 0;
        v49 = 0;
      }

      v50 = [v40 value];
      v51 = [v50 name];

      v52 = sub_222C9449C();
      v54 = v53;

      v37 = v38;
      v127[0] = v38;
      v55 = *(v38 + 16);
      v56 = *(v37 + 24);
      if (v55 >= v56 >> 1)
      {
        sub_222B4CBD4((v56 > 1), v55 + 1, 1);
        v37 = v127[0];
      }

      ++v36;
      *(v37 + 16) = v55 + 1;
      v57 = (v37 + 48 * v55);
      v57[4] = v42;
      v57[5] = v44;
      v57[6] = v47;
      v57[7] = v49;
      v57[8] = v52;
      v57[9] = v54;
      v32 = v114;
    }

    while (v112 != v36);
    v90 = v37;

    v2 = v89;
    v34 = MEMORY[0x277D84F90];
  }

  else
  {
    v90 = MEMORY[0x277D84F90];
  }

  v58 = [v2 phoneNumbers];
  v59 = sub_222C9471C();

  if (!(v59 >> 62))
  {
    v60 = v59;
    v61 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v61)
    {
      goto LABEL_19;
    }

LABEL_33:

    *&v117 = v108;
    *(&v117 + 1) = v107;
    *&v118 = v106;
    *(&v118 + 1) = v105;
    *&v119 = v104;
    *(&v119 + 1) = v103;
    *&v120 = v102;
    *(&v120 + 1) = v101;
    *&v121 = v100;
    *(&v121 + 1) = v99;
    *&v122 = v98;
    *(&v122 + 1) = v97;
    *&v123 = v96;
    *(&v123 + 1) = v95;
    *&v124 = v94;
    *(&v124 + 1) = v93;
    *&v125 = v92;
    *(&v125 + 1) = v91;
    *&v126 = v90;
    *(&v126 + 1) = v34;
    v127[0] = v108;
    v127[1] = v107;
    v127[2] = v106;
    v127[3] = v105;
    v127[4] = v104;
    v127[5] = v103;
    v127[6] = v102;
    v127[7] = v101;
    v127[8] = v100;
    v127[9] = v99;
    v127[10] = v98;
    v127[11] = v97;
    v127[12] = v96;
    v127[13] = v95;
    v127[14] = v94;
    v127[15] = v93;
    v127[16] = v92;
    v127[17] = v91;
    v127[18] = v90;
    v127[19] = v34;
    sub_222BDAE94(&v117, &v116);
    result = sub_222BD8D30(v127);
    v83 = v124;
    a2[6] = v123;
    a2[7] = v83;
    v84 = v126;
    a2[8] = v125;
    a2[9] = v84;
    v85 = v120;
    a2[2] = v119;
    a2[3] = v85;
    v86 = v122;
    a2[4] = v121;
    a2[5] = v86;
    v87 = v118;
    *a2 = v117;
    a2[1] = v87;
    return result;
  }

  v60 = v59;
  v61 = sub_222C94C6C();
  if (!v61)
  {
    goto LABEL_33;
  }

LABEL_19:
  v127[0] = v34;
  result = sub_222B4CBD4(0, v61 & ~(v61 >> 63), 0);
  if ((v61 & 0x8000000000000000) == 0)
  {
    v62 = 0;
    v34 = v127[0];
    v63 = v60;
    v111 = v60 & 0xC000000000000001;
    v113 = v61;
    v115 = v60;
    do
    {
      if (v111)
      {
        v64 = MEMORY[0x223DC9B30](v62, v63);
      }

      else
      {
        v64 = *(v63 + 8 * v62 + 32);
      }

      v65 = v64;
      v66 = [v64 identifier];
      v67 = sub_222C9449C();
      v69 = v68;

      v70 = [v65 label];
      if (v70)
      {
        v71 = v70;
        v72 = sub_222C9449C();
        v74 = v73;
      }

      else
      {
        v72 = 0;
        v74 = 0;
      }

      v75 = [v65 value];
      v76 = [v75 stringValue];

      v77 = sub_222C9449C();
      v79 = v78;

      v127[0] = v34;
      v81 = *(v34 + 16);
      v80 = *(v34 + 24);
      if (v81 >= v80 >> 1)
      {
        sub_222B4CBD4((v80 > 1), v81 + 1, 1);
        v34 = v127[0];
      }

      ++v62;
      *(v34 + 16) = v81 + 1;
      v82 = (v34 + 48 * v81);
      v82[4] = v67;
      v82[5] = v69;
      v82[6] = v72;
      v82[7] = v74;
      v82[8] = v77;
      v82[9] = v79;
      v63 = v115;
    }

    while (v113 != v62);
    goto LABEL_33;
  }

LABEL_35:
  __break(1u);
  return result;
}

unint64_t sub_222BDA058()
{
  result = qword_27D0267A0;
  if (!qword_27D0267A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D026798, &qword_222C9DDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0267A0);
  }

  return result;
}

unint64_t sub_222BDA0BC()
{
  result = qword_27D0267A8;
  if (!qword_27D0267A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0267A8);
  }

  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_222BDA14C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 144);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_222BDA194(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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
      *(result + 144) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_222BDA220()
{
  result = qword_27D0267B0;
  if (!qword_27D0267B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0267B0);
  }

  return result;
}

unint64_t sub_222BDA278()
{
  result = qword_27D0267B8;
  if (!qword_27D0267B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0267B8);
  }

  return result;
}

unint64_t sub_222BDA2D0()
{
  result = qword_27D0267C0;
  if (!qword_27D0267C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0267C0);
  }

  return result;
}

uint64_t sub_222BDA324(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x66657250656D616ELL && a2 == 0xEA00000000007869 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065 || (sub_222C951FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E656C6464696DLL && a2 == 0xEA0000000000656DLL || (sub_222C951FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL || (sub_222C951FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000222CAB910 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x66667553656D616ELL && a2 == 0xEA00000000007869 || (sub_222C951FC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656D616E6B63696ELL && a2 == 0xE800000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000222CAB930 == a2 || (sub_222C951FC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E6F6974616C6572 && a2 == 0xE900000000000073 || (sub_222C951FC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEC00000073726562)
  {

    return 10;
  }

  else
  {
    v5 = sub_222C951FC();

    if (v5)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_222BDA6CC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0267C8, &qword_222C9E0C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_222BDADEC();
  sub_222C9535C();
  if (v2)
  {
    v60 = v2;
    v55 = 0;
    v56 = 0;
    v53 = 0;
    v54 = 0;
    v57 = 0uLL;
    v58 = 0uLL;
    v59 = 0uLL;
    v51 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v52 = MEMORY[0x277D84F90];
LABEL_4:
    v19 = MEMORY[0x277D84F90];
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    *&v72 = v18;
    *(&v72 + 1) = v17;
    *&v73 = v16;
    *(&v73 + 1) = v15;
    *&v74 = v14;
    *(&v74 + 1) = v13;
    v75 = v12;
    v76 = v51;
    v77 = v59;
    v78 = v58;
    v79 = v57;
    v80 = v54;
    v81 = v56;
    v82 = v53;
    v83 = v55;
    v84 = v52;
    v85 = v19;
    return sub_222BD8D30(&v72);
  }

  LOBYTE(v72) = 0;
  *&v49 = sub_222C9501C();
  *(&v49 + 1) = v21;
  LOBYTE(v72) = 1;
  *&v48 = sub_222C9501C();
  *(&v48 + 1) = v22;
  LOBYTE(v72) = 2;
  *&v47 = sub_222C9501C();
  *(&v47 + 1) = v23;
  LOBYTE(v72) = 3;
  v46 = sub_222C9501C();
  v51 = v24;
  LOBYTE(v72) = 4;
  *&v59 = sub_222C9501C();
  *(&v59 + 1) = v25;
  LOBYTE(v72) = 5;
  *&v58 = sub_222C9501C();
  *(&v58 + 1) = v26;
  LOBYTE(v72) = 6;
  *&v57 = sub_222C9501C();
  *(&v57 + 1) = v27;
  LOBYTE(v72) = 7;
  v54 = sub_222C9501C();
  v56 = v28;
  LOBYTE(v72) = 8;
  v29 = sub_222C9501C();
  v60 = 0;
  v45 = a2;
  v53 = v29;
  v55 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0267D8, &qword_222C9E0D0);
  LOBYTE(v61) = 9;
  sub_222BDAECC(&qword_27D0267E0, sub_222BDAE40);
  v31 = v60;
  sub_222C9507C();
  v60 = v31;
  if (v31)
  {
    (*(v6 + 8))(v9, v5);
    v52 = MEMORY[0x277D84F90];
    v17 = *(&v49 + 1);
    v18 = v49;
    v15 = *(&v48 + 1);
    v16 = v48;
    v13 = *(&v47 + 1);
    v14 = v47;
    v12 = v46;
    goto LABEL_4;
  }

  v52 = v72;
  v71 = 10;
  sub_222C9507C();
  v60 = 0;
  (*(v6 + 8))(v9, v5);
  v44 = v86;
  v32 = v49;
  v61 = v49;
  v33 = v48;
  v62 = v48;
  v34 = v47;
  v63 = v47;
  v35 = v46;
  v36 = v51;
  *&v64 = v46;
  *(&v64 + 1) = v51;
  v65 = v59;
  v66 = v58;
  v67 = v57;
  *&v68 = v54;
  *(&v68 + 1) = v56;
  *&v69 = v53;
  *(&v69 + 1) = v55;
  *&v70 = v52;
  *(&v70 + 1) = v86;
  sub_222BDAE94(&v61, &v72);
  __swift_destroy_boxed_opaque_existential_0Tm(v50);
  v72 = v32;
  v73 = v33;
  v74 = v34;
  v75 = v35;
  v76 = v36;
  v77 = v59;
  v78 = v58;
  v79 = v57;
  v80 = v54;
  v81 = v56;
  v82 = v53;
  v83 = v55;
  v84 = v52;
  v85 = v44;
  result = sub_222BD8D30(&v72);
  v37 = v68;
  v38 = v45;
  v45[6] = v67;
  v38[7] = v37;
  v39 = v70;
  v38[8] = v69;
  v38[9] = v39;
  v40 = v64;
  v38[2] = v63;
  v38[3] = v40;
  v41 = v66;
  v38[4] = v65;
  v38[5] = v41;
  v42 = v62;
  *v38 = v61;
  v38[1] = v42;
  return result;
}

unint64_t sub_222BDADEC()
{
  result = qword_27D0267D0;
  if (!qword_27D0267D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0267D0);
  }

  return result;
}

unint64_t sub_222BDAE40()
{
  result = qword_27D0267E8;
  if (!qword_27D0267E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0267E8);
  }

  return result;
}

uint64_t sub_222BDAECC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0267D8, &qword_222C9E0D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_222BDAF44()
{
  result = qword_27D026800;
  if (!qword_27D026800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026800);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactCollection.CodableContact.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContactCollection.CodableContact.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

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

uint64_t sub_222BDB0FC(uint64_t a1, int a2)
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

uint64_t sub_222BDB144(uint64_t result, int a2, int a3)
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

unint64_t sub_222BDB1A4()
{
  result = qword_27D026810;
  if (!qword_27D026810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026810);
  }

  return result;
}

unint64_t sub_222BDB1FC()
{
  result = qword_27D026818;
  if (!qword_27D026818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026818);
  }

  return result;
}

unint64_t sub_222BDB254()
{
  result = qword_27D026820;
  if (!qword_27D026820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026820);
  }

  return result;
}

uint64_t sub_222BDB2A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_222C951FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_222C951FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_222C951FC();

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

uint64_t sub_222BDB3C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026828, &qword_222C9E290);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222BDB60C();
  sub_222C9535C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v27 = 0;
  v11 = sub_222C9503C();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_222C9501C();
  v23 = v14;
  v25 = 2;
  v15 = sub_222C9503C();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v24;
  a2[1] = v13;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v15;
  a2[5] = v18;
  return result;
}

unint64_t sub_222BDB60C()
{
  result = qword_27D026830;
  if (!qword_27D026830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026830);
  }

  return result;
}

unint64_t sub_222BDB674()
{
  result = qword_27D026840;
  if (!qword_27D026840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026840);
  }

  return result;
}

unint64_t sub_222BDB6CC()
{
  result = qword_27D026848;
  if (!qword_27D026848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026848);
  }

  return result;
}

unint64_t sub_222BDB724()
{
  result = qword_27D026850;
  if (!qword_27D026850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026850);
  }

  return result;
}

void *sub_222BDB778(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026870, &qword_222C9E450);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for PhoneCallGroundTruth();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v29 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v28 = &v25 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return MEMORY[0x277D84F90];
  }

  v18 = a3 + 32;
  v25 = v15;
  v19 = (v15 + 48);
  v20 = MEMORY[0x277D84F90];
  v26 = v11;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v19)(v10, 1, v11) == 1)
    {
      sub_222B4FCD4(v10, &qword_27D026870, &qword_222C9E450);
    }

    else
    {
      v21 = v28;
      sub_222BDE870(v10, v28, type metadata accessor for PhoneCallGroundTruth);
      sub_222BDE870(v21, v29, type metadata accessor for PhoneCallGroundTruth);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_222B4A0E0(0, v20[2] + 1, 1, v20);
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        v20 = sub_222B4A0E0(v22 > 1, v23 + 1, 1, v20);
      }

      v20[2] = v23 + 1;
      sub_222BDE870(v29, v20 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23, type metadata accessor for PhoneCallGroundTruth);
      v11 = v26;
    }

    v18 += 88;
    if (!--v17)
    {
      return v20;
    }
  }

  return v20;
}

void *sub_222BDBA3C(void (*a1)(__int128 *), uint64_t a2)
{
  v29 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026878, &qword_222C9E458);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D88, qword_222C9E460);
  v8 = *(v25 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v25);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  sub_222C94E9C();
  sub_222C94FBC();
  v15 = v27;
  if (v27)
  {
    v16 = v28;
    v23 = v8;
    v17 = (v8 + 48);
    v18 = MEMORY[0x277D84F90];
    v24 = a2;
    while (1)
    {
      v26 = v15;
      v27 = v15;
      v28 = v16;
      v29(&v27);
      if (v2)
      {
        break;
      }

      swift_unknownObjectRelease();
      if ((*v17)(v7, 1, v25) == 1)
      {
        sub_222B4FCD4(v7, &qword_27D026878, &qword_222C9E458);
      }

      else
      {
        sub_222BDE7B0(v7, v14);
        sub_222BDE7B0(v14, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_222B4A2F0(0, v18[2] + 1, 1, v18);
        }

        v20 = v18[2];
        v19 = v18[3];
        if (v20 >= v19 >> 1)
        {
          v18 = sub_222B4A2F0(v19 > 1, v20 + 1, 1, v18);
        }

        v18[2] = v20 + 1;
        sub_222BDE7B0(v12, v18 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v20);
      }

      sub_222C94FBC();
      v15 = v27;
      v16 = v28;
      if (!v27)
      {
        goto LABEL_13;
      }
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
LABEL_13:
  }

  return v18;
}

char *sub_222BDBD24(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = (a3 + 64);
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = *(v6 - 1);
    v9 = *v6;
    v10 = *(v6 - 3);
    v11 = *(v6 - 2);
    v28[0] = *(v6 - 4);
    v28[1] = v10;
    v28[2] = v11;
    v28[3] = v8;
    v28[4] = v9;

    a1(&v23, v28);
    if (v4)
    {
      break;
    }

    v13 = v23;
    v12 = v24;
    v14 = v25;
    v15 = v26;
    if (v25)
    {
      v29 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_222B4A47C(0, *(v7 + 2) + 1, 1, v7);
      }

      v17 = *(v7 + 2);
      v16 = *(v7 + 3);
      v18 = v7;
      if (v17 >= v16 >> 1)
      {
        v18 = sub_222B4A47C((v16 > 1), v17 + 1, 1, v7);
      }

      *(v18 + 2) = v17 + 1;
      v7 = v18;
      v19 = &v18[40 * v17];
      v19[32] = v13 & 1;
      *(v19 + 5) = v12;
      *(v19 + 6) = v14;
      v20 = v29;
      *(v19 + 7) = v15;
      *(v19 + 8) = v20;
    }

    else
    {
      sub_222BDE820(v23, v24, 0);
    }

    v6 += 5;
    if (!--v5)
    {
      return v7;
    }
  }

  return v7;
}

void *sub_222BDBEE4(void (*a1)(_OWORD *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = MEMORY[0x277D84F90];
  v7 = a3 + 32;
  a1(v15, a3 + 32);
  while (!v3)
  {
    if (v16)
    {
      v12 = v15[0];
      v13 = v15[1];
      v14 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_222B4A59C(0, v6[2] + 1, 1, v6);
      }

      v9 = v6[2];
      v8 = v6[3];
      if (v9 >= v8 >> 1)
      {
        v6 = sub_222B4A59C((v8 > 1), v9 + 1, 1, v6);
      }

      v6[2] = v9 + 1;
      v10 = &v6[6 * v9];
      v10[3] = v13;
      v10[4] = v14;
      v10[2] = v12;
    }

    else
    {
      sub_222B4FCD4(v15, &qword_27D026860, &qword_222C9E440);
    }

    v7 += 40;
    if (!--v4)
    {
      return v6;
    }

    a1(v15, v7);
  }

  return v6;
}

void *sub_222BDC068(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = 0;
    do
    {
      v14 = result;
      for (i = v8; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024C30, &qword_222C96A08);
        v12 = *(v10 - 8);
        result = (v10 - 8);
        v11 = v12;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v15, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
        if (v3)
        {

          return v14;
        }

        if (v15)
        {
          break;
        }

        if (v8 == v6)
        {
          return v14;
        }
      }

      MEMORY[0x223DC94A0](result);
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_222C9475C();
      }

      sub_222C947AC();
      result = v16;
    }

    while (v8 != v6);
  }

  return result;
}

void *sub_222BDC1F4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025F40, &qword_222C9B790);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v32 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v30 = &v26 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return MEMORY[0x277D84F90];
  }

  v18 = *(sub_222C9367C() - 8);
  v27 = v12;
  v19 = (v12 + 48);
  v20 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v31 = *(v18 + 72);
  v21 = MEMORY[0x277D84F90];
  v28 = v11;
  v29 = a2;
  while (1)
  {
    a1(v20);
    if (v3)
    {
      break;
    }

    if ((*v19)(v10, 1, v11) == 1)
    {
      sub_222B4FCD4(v10, &qword_27D025F40, &qword_222C9B790);
    }

    else
    {
      v22 = v30;
      sub_222BDE870(v10, v30, type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary);
      sub_222BDE870(v22, v32, type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_222B4B074(0, v21[2] + 1, 1, v21);
      }

      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        v21 = sub_222B4B074(v23 > 1, v24 + 1, 1, v21);
      }

      v21[2] = v24 + 1;
      sub_222BDE870(v32, v21 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, type metadata accessor for PlusClientEventFeatureExtractor.ContactSuggestionSummary);
      v11 = v28;
    }

    v20 += v31;
    if (!--v17)
    {
      return v21;
    }
  }

  return v21;
}

void *sub_222BDC510(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025EA8, &qword_222C9B2A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for PlusGenericSuggestionRuntimeSummary(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v32 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v30 = &v26 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return MEMORY[0x277D84F90];
  }

  v18 = *(sub_222C9367C() - 8);
  v27 = v12;
  v19 = (v12 + 48);
  v20 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v31 = *(v18 + 72);
  v21 = MEMORY[0x277D84F90];
  v28 = v11;
  v29 = a2;
  while (1)
  {
    a1(v20);
    if (v3)
    {
      break;
    }

    if ((*v19)(v10, 1, v11) == 1)
    {
      sub_222B4FCD4(v10, &qword_27D025EA8, &qword_222C9B2A0);
    }

    else
    {
      v22 = v30;
      sub_222BDE870(v10, v30, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
      sub_222BDE870(v22, v32, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_222B4B09C(0, v21[2] + 1, 1, v21);
      }

      v24 = v21[2];
      v23 = v21[3];
      if (v24 >= v23 >> 1)
      {
        v21 = sub_222B4B09C(v23 > 1, v24 + 1, 1, v21);
      }

      v21[2] = v24 + 1;
      sub_222BDE870(v32, v21 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, type metadata accessor for PlusGenericSuggestionRuntimeSummary);
      v11 = v28;
    }

    v20 += v31;
    if (!--v17)
    {
      return v21;
    }
  }

  return v21;
}

void *sub_222BDC82C(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  if (v6)
  {
    v9 = 0;
    do
    {
      v15 = result;
      for (i = v9; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v11 = a4(0);
        v13 = *(v11 - 8);
        result = (v11 - 8);
        v12 = v13;
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v17, a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * i);
        if (v4)
        {

          return v15;
        }

        if (v17)
        {
          break;
        }

        if (v9 == v6)
        {
          return v15;
        }
      }

      MEMORY[0x223DC94A0](result);
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_222C9475C();
      }

      sub_222C947AC();
      result = v18;
    }

    while (v9 != v6);
  }

  return result;
}

void *sub_222BDC9B8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026868, &qword_222C9E448);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for MessagesGroundTruth();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v29 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v28 = &v25 - v16;
  v17 = *(a3 + 16);
  if (!v17)
  {
    return MEMORY[0x277D84F90];
  }

  v18 = a3 + 32;
  v25 = v15;
  v19 = (v15 + 48);
  v20 = MEMORY[0x277D84F90];
  v26 = v11;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v19)(v10, 1, v11) == 1)
    {
      sub_222B4FCD4(v10, &qword_27D026868, &qword_222C9E448);
    }

    else
    {
      v21 = v28;
      sub_222BDE870(v10, v28, type metadata accessor for MessagesGroundTruth);
      sub_222BDE870(v21, v29, type metadata accessor for MessagesGroundTruth);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_222B4B42C(0, v20[2] + 1, 1, v20);
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        v20 = sub_222B4B42C(v22 > 1, v23 + 1, 1, v20);
      }

      v20[2] = v23 + 1;
      sub_222BDE870(v29, v20 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23, type metadata accessor for MessagesGroundTruth);
      v11 = v26;
    }

    v18 += 88;
    if (!--v17)
    {
      return v20;
    }
  }

  return v20;
}

uint64_t PLUSContactSuggesterRuntimeLogHelper.__allocating_init(logTarget:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_222BDE50C(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v6;
}

uint64_t PLUSContactSuggesterRuntimeLogHelper.init(logTarget:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_222BDE46C(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v10;
}

void sub_222BDCDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D59C78]) init];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [objc_allocWithZone(MEMORY[0x277D59C90]) init];
  if (!v8)
  {

LABEL_9:
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v17 = sub_222C9431C();
    __swift_project_value_buffer(v17, qword_280FE2340);
    v24 = sub_222C942FC();
    v18 = sub_222C94A4C();
    if (os_log_type_enabled(v24, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_222B39000, v24, v18, "Failed to create SELF message templates", v19, 2u);
      MEMORY[0x223DCA8C0](v19, -1, -1);
    }

    goto LABEL_18;
  }

  v24 = v8;
  v9 = v3;
  sub_222C936BC();
  sub_222C937FC();
  v10 = sub_222C2DCC0();
  v12 = v11;

  if (v10)
  {
    [v24 setUsoPersonQuery:v10];
    if (a2)
    {
      v13 = a2;
    }

    else
    {
      v13 = MEMORY[0x277D84FA0];
    }

    v14 = sub_222C2E330(v13);

    [v24 setDomain:v14];
    [v7 setStartedOrChanged_];
    v15 = *(v9 + 16);
    sub_222BA1904(v7, a3);
    sub_222BA1CBC(v12);

    v16 = v10;
    goto LABEL_19;
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v20 = sub_222C9431C();
  __swift_project_value_buffer(v20, qword_280FE2340);
  v21 = sub_222C942FC();
  v22 = sub_222C94A4C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_222B39000, v21, v22, "Failed to convert USOPerson entity to SELF message", v23, 2u);
    MEMORY[0x223DCA8C0](v23, -1, -1);
  }

LABEL_18:
  v16 = v24;
LABEL_19:
}

void sub_222BDD098(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D59C78]) init];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(MEMORY[0x277D59C88]) init];
    if (v7)
    {
      v8 = v7;
      MEMORY[0x28223BE20](v7);
      v22[2] = a2;
      v9 = sub_222BDC82C(sub_222BDE5F8, v22, a1, type metadata accessor for PlusContactSuggestion);
      if (v9 >> 62)
      {
        v10 = sub_222C94C6C();
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = *(a1 + 16);
      if (v10 != v11)
      {
        v12 = v2;
        if (qword_280FDFE78 != -1)
        {
          swift_once();
        }

        v13 = sub_222C9431C();
        __swift_project_value_buffer(v13, qword_280FE2340);
        v14 = sub_222C942FC();
        v15 = sub_222C94A4C();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_222B39000, v14, v15, "Failed to convert all of the matching suggestions to SELF messages. Emitting a partial result.", v16, 2u);
          MEMORY[0x223DCA8C0](v16, -1, -1);
        }

        v2 = v12;
      }

      sub_222BDE62C();
      v17 = sub_222C9470C();

      [v8 setResults_];

      [v8 setHasMatchingResults_];
      [v6 setEnded_];
      v18 = *(v2 + 16);
      sub_222BA1904(v6, a2);

      return;
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v19 = sub_222C9431C();
  __swift_project_value_buffer(v19, qword_280FE2340);
  v23 = sub_222C942FC();
  v20 = sub_222C94A4C();
  if (os_log_type_enabled(v23, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_222B39000, v23, v20, "Failed to create SELF message templates", v21, 2u);
    MEMORY[0x223DCA8C0](v21, -1, -1);
  }
}

void sub_222BDD3D4(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D59C78]) init];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_allocWithZone(MEMORY[0x277D59C80]) init];
    if (v5)
    {
      oslog = v5;
      [v5 setReason:3];
      [v4 setFailed_];
      v6 = *(v1 + 16);
      sub_222BA1904(v4, a1);

      goto LABEL_9;
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v7 = sub_222C9431C();
  __swift_project_value_buffer(v7, qword_280FE2340);
  oslog = sub_222C942FC();
  v8 = sub_222C94A4C();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_222B39000, oslog, v8, "Failed to create SELF message templates", v9, 2u);
    MEMORY[0x223DCA8C0](v9, -1, -1);
  }

LABEL_9:
}

void sub_222BDD544(char a1, char a2, uint64_t a3)
{
  v7 = [objc_allocWithZone(MEMORY[0x277D59C98]) init];
  if (v7)
  {
    v12 = v7;
    [v7 setIsForcePromptUsed:a2 & 1];
    [v12 setIsPlusContactSuggesterEnabled:a1 & 1];
    v8 = *(v3 + 16);
    sub_222BA1910(v12, a3);
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v9 = sub_222C9431C();
    __swift_project_value_buffer(v9, qword_280FE2340);
    v12 = sub_222C942FC();
    v10 = sub_222C94A4C();
    if (os_log_type_enabled(v12, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_222B39000, v12, v10, "Failed to create SELF message templates", v11, 2u);
      MEMORY[0x223DCA8C0](v11, -1, -1);
    }
  }
}

void sub_222BDD698(NSObject *a1, int a2, int a3, uint64_t a4)
{
  v56 = a2;
  v57 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D026290, &qword_222C96B40);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v50[-v12];
  v14 = sub_222C9367C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v50[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v50[-v21];
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v50[-v24];
  MEMORY[0x28223BE20](v23);
  v55 = &v50[-v26];
  v27 = [objc_allocWithZone(MEMORY[0x277D59CA0]) init];
  if (v27)
  {
    v51 = a3;
    v53 = v27;
    v54 = v4;
    v28 = a4;
    v29 = *(v15 + 16);
    v52 = v28;
    v29(v25);
    (v29)(v22, v57, v14);
    (v29)(v19, v25, v14);
    sub_222C9360C();
    sub_222C42B54(v19, v11);
    v30 = *(v15 + 8);
    v30(v22, v14);
    v30(v25, v14);
    v31 = *(v15 + 48);
    if (v31(v11, 1, v14))
    {
      sub_222B4FCD4(v11, &unk_27D026290, &qword_222C96B40);
      v32 = 1;
    }

    else
    {
      (*(v15 + 32))(v13, v11, v14);
      v32 = 0;
    }

    (*(v15 + 56))(v13, v32, 1, v14);
    v37 = v31(v13, 1, v14);
    v38 = v54;
    if (v37 == 1)
    {
      sub_222B4FCD4(v13, &unk_27D026290, &qword_222C96B40);
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v39 = sub_222C9431C();
      __swift_project_value_buffer(v39, qword_280FE2340);
      v40 = sub_222C942FC();
      v41 = sub_222C94A3C();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_222B39000, v40, v41, "Failed to create a combined UUID for the suggestionId and plusId", v42, 2u);
        MEMORY[0x223DCA8C0](v42, -1, -1);
      }
    }

    else
    {
      v43 = v55;
      (*(v15 + 32))(v55, v13, v14);
      v44 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v45 = sub_222C9361C();
      v46 = [v44 initWithNSUUID_];

      v47 = v30;
      v48 = v53;
      [v53 setSuggestionId_];

      [v48 setIsDuplicateSuggestion_];
      [v48 setIsSuggestionPresentInModelOutput_];
      v49 = *(v38 + 16);
      sub_222BA1AD4(v48, v52);

      v47(v43, v14);
    }
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v33 = sub_222C9431C();
    __swift_project_value_buffer(v33, qword_280FE2340);
    v57 = sub_222C942FC();
    v34 = sub_222C94A4C();
    if (os_log_type_enabled(v57, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_222B39000, v57, v34, "Failed to create SELF message templates", v35, 2u);
      MEMORY[0x223DCA8C0](v35, -1, -1);
    }

    v36 = v57;
  }
}

void static PLUSContactSuggesterRuntimeLogHelper.derivePlusLoggingId(requestId:)()
{
  v0 = objc_opt_self();
  v1 = sub_222C9361C();
  v2 = [v0 derivedIdentifierForComponent:19 fromSourceIdentifier:v1];

  sub_222C9363C();
}

uint64_t sub_222BDDCD0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_222C9367C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = sub_222C9361C();
  v11 = [v9 derivedIdentifierForComponent:19 fromSourceIdentifier:v10];

  sub_222C9363C();
  v12 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
  if (v12)
  {
    v13 = v12;
    v14 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
    if (v14)
    {
      v15 = v14;
      v16 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
      if (v16)
      {
        v17 = v16;
        [v16 setComponent_];
        v18 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v34 = v2;
        v19 = a1;
        v20 = v18;
        v21 = sub_222C9361C();
        v22 = [v20 initWithNSUUID_];

        [v17 setUuid_];
        [v15 setComponent:1];
        v23 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v24 = sub_222C9361C();
        v25 = v23;
        a1 = v19;
        v26 = [v25 initWithNSUUID_];

        [v15 setUuid:v26];
        [v13 setSource:v17];
        [v13 setTarget:v15];
        v27 = *(v34 + 16);
        v28 = v27[6];
        __swift_project_boxed_opaque_existential_1(v27 + 2, v27[5]);
        sub_222C93F3C();

        goto LABEL_12;
      }
    }

    else
    {
      v15 = v13;
    }
  }

  if (qword_280FDFE78 != -1)
  {
    swift_once();
  }

  v29 = sub_222C9431C();
  __swift_project_value_buffer(v29, qword_280FE2340);
  v15 = sub_222C942FC();
  v30 = sub_222C94A4C();
  if (os_log_type_enabled(v15, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_222B39000, v15, v30, "Failed to create RequestLink SELF message templates. Skipping Emission.", v31, 2u);
    MEMORY[0x223DCA8C0](v31, -1, -1);
  }

LABEL_12:

  return (*(v5 + 32))(a1, v8, v4);
}

uint64_t PLUSContactSuggesterRuntimeLogHelper.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PLUSContactSuggesterRuntimeLogHelper.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_222BDE0AC()
{
  sub_222C9403C();
  type metadata accessor for PLUSContactSuggesterRuntimeLogHelper();
  v0 = swift_allocObject();
  type metadata accessor for SELFEventLogEmitters();
  v1 = swift_allocObject();
  result = sub_222B505F4(&v3, v1 + 16);
  *(v0 + 16) = v1;
  qword_27D026858 = v0;
  return result;
}

void static PLUSContactSuggesterRuntimeLogHelpers.logPlusContactSuggesterQuery(queryPerson:plusId:)(uint64_t a1, uint64_t a2)
{
  if (qword_27D024720 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  sub_222BDCDBC(a1, 0, a2);
}

void static PLUSContactSuggesterRuntimeLogHelpers.logPlusContactSuggesterResult(matchingSuggestions:plusId:)(uint64_t a1, uint64_t a2)
{
  if (qword_27D024720 != -1)
  {
    v2 = a1;
    v3 = a2;
    swift_once();
    a1 = v2;
    a2 = v3;
  }

  sub_222BDD098(a1, a2);
}

void static PLUSContactSuggesterRuntimeLogHelpers.logPlusContactSuggesterFailure(plusId:)(uint64_t a1)
{
  if (qword_27D024720 != -1)
  {
    v1 = a1;
    swift_once();
    a1 = v1;
  }

  sub_222BDD3D4(a1);
}

void static PLUSContactSuggesterRuntimeLogHelpers.logPlusContactSuggesterRequestMetadata(isPlusSuggesterEnabled:isForcePromptUsed:plusId:)(char a1, char a2, uint64_t a3)
{
  if (qword_27D024720 != -1)
  {
    v3 = a1;
    v4 = a2;
    v5 = a3;
    swift_once();
    a1 = v3;
    a2 = v4;
    a3 = v5;
  }

  sub_222BDD544(a1 & 1, a2 & 1, a3);
}

void static PLUSContactSuggesterRuntimeLogHelpers.logPlusContactSuggesterSuggestionMetadata(suggestionId:isDuplicateSuggestion:isSuggestionPresentInModelOutput:plusId:)(NSObject *a1, char a2, char a3, uint64_t a4)
{
  if (qword_27D024720 != -1)
  {
    v4 = a1;
    v5 = a2;
    v6 = a4;
    v7 = a3;
    swift_once();
    a2 = v5;
    a1 = v4;
    a3 = v7;
    a4 = v6;
  }

  sub_222BDD698(a1, a2 & 1, a3 & 1, a4);
}

void static PLUSContactSuggesterRuntimeLogHelpers.derivePlusLoggingId(requestId:)()
{
  v0 = objc_opt_self();
  v1 = sub_222C9361C();
  v2 = [v0 derivedIdentifierForComponent:19 fromSourceIdentifier:v1];

  sub_222C9363C();
}

uint64_t static PLUSContactSuggesterRuntimeLogHelpers.logPlusRequestLink(requestId:)@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D024720 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return sub_222BDDCD0(a1);
}

uint64_t sub_222BDE46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v12 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  type metadata accessor for SELFEventLogEmitters();
  v8 = swift_allocObject();
  sub_222B505F4(&v10, v8 + 16);
  *(a2 + 16) = v8;
  return a2;
}

uint64_t sub_222BDE50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PLUSContactSuggesterRuntimeLogHelper();
  v11 = swift_allocObject();
  (*(v7 + 16))(v10, a1, a3);
  return sub_222BDE46C(v10, v11, a3, a4);
}

NSObject *sub_222BDE5F8@<X0>(uint64_t a1@<X0>, NSObject **a2@<X8>)
{
  result = sub_222C2E5DC(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

unint64_t sub_222BDE62C()
{
  result = qword_280FDB758;
  if (!qword_280FDB758)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280FDB758);
  }

  return result;
}

uint64_t sub_222BDE7B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024D88, qword_222C9E460);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222BDE820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_222BDE870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t CoreAnalyticsLogHelper.__allocating_init(logLevel:)(char *a1)
{
  v2 = sub_222C93B9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_allocObject();
  (*(v3 + 104))(v6, *MEMORY[0x277D5FAC0], v2);
  v8 = sub_222C93B8C();
  v9 = *(v3 + 8);
  v9(v6, v2);
  if (v8)
  {
    if (qword_280FDF1F0 != -1)
    {
      swift_once();
    }

    sub_222C93B4C();
  }

  v9(a1, v2);
  return v7;
}

uint64_t CoreAnalyticsLogHelper.init(logLevel:)(char *a1)
{
  v2 = v1;
  v4 = sub_222C93B9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277D5FAC0], v4);
  v9 = sub_222C93B8C();
  v10 = *(v5 + 8);
  v10(v8, v4);
  if (v9)
  {
    if (qword_280FDF1F0 != -1)
    {
      swift_once();
    }

    sub_222C93B4C();
  }

  v10(a1, v4);
  return v2;
}

unint64_t sub_222BDEBC8()
{
  result = qword_280FDF410[0];
  if (!qword_280FDF410[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FDF410);
  }

  return result;
}

uint64_t sub_222BDEC34(char a1)
{
  if (qword_280FDF1F0 != -1)
  {
    swift_once();
  }

  v5 = &type metadata for PIMSProcessingState;
  v6 = sub_222BDEBC8();
  v3[0] = 0xD000000000000013;
  v3[1] = 0x8000000222CAB9A0;
  v4 = a1;
  sub_222C93B5C();
  return __swift_destroy_boxed_opaque_existential_0Tm(v3);
}

uint64_t sub_222BDEDFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v51 = a6;
  v53 = a3;
  v52 = a1;
  v11 = sub_222C9367C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a4[1];
  v50 = *a4;
  v17 = a4[3];
  v49 = a4[2];
  v48 = v17;
  v18 = *a5;
  v19 = a5[1];
  v21 = a5[2];
  v20 = a5[3];
  sub_222B43E3C(a2, &v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D024B40, qword_222C96770);
  if (swift_dynamicCast())
  {
    v47 = a7;

    v46 = v18;
    v44 = v19;
    v45 = v21;
    sub_222B44C10(v18, v19, v51, &v56);
    v23 = *(&v56 + 1);
    v22 = v56;
    v24 = v57;
    v25 = v58;
    (*(v12 + 16))(v15, v52, v11);
    if (v16)
    {
      v26 = v48;

      sub_222B450E8(v22, v23);
      v22 = v50;
      v24 = v49;
      v25 = v26;
    }

    else
    {
      v16 = v23;
    }

    v38 = v47;
    (*(v12 + 32))(v47, v15, v11);
    v39 = type metadata accessor for MessagesGroundTruth();
    *(v38 + v39[5]) = 0;
    *(v38 + v39[6]) = v53;
    v40 = (v38 + v39[7]);
    *v40 = v22;
    v40[1] = v16;
    v40[2] = v24;
    v40[3] = v25;
    v41 = (v38 + v39[8]);
    v42 = v44;
    *v41 = v46;
    v41[1] = v42;
    v41[2] = v45;
    v41[3] = v20;
    (*(*(v39 - 1) + 56))(v38, 0, 1, v39);
  }

  else
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v27 = sub_222C9431C();
    __swift_project_value_buffer(v27, qword_280FE2340);
    sub_222B45038(a2, &v56);
    v28 = sub_222C942FC();
    v29 = sub_222C94A4C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v55 = v31;
      *v30 = 136315138;
      sub_222B45038(&v56, v54);
      v32 = sub_222C944EC();
      v34 = v33;
      sub_222B45094(&v56);
      v35 = sub_222B437C0(v32, v34, &v55);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_222B39000, v28, v29, "Failed to derive ground truth type from followup event for classification=%s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      MEMORY[0x223DCA8C0](v31, -1, -1);
      MEMORY[0x223DCA8C0](v30, -1, -1);
    }

    else
    {

      sub_222B45094(&v56);
    }

    v36 = type metadata accessor for MessagesGroundTruth();
    return (*(*(v36 - 8) + 56))(a7, 1, 1, v36);
  }
}

uint64_t sub_222BDF2AC(uint64_t a1, uint64_t a2)
{
  result = sub_222BDF374(&qword_27D026880, a2, type metadata accessor for MessagesInAppFollowupGroundTruthGenerator);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_222BDF374(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

SiriPrivateLearningInference::MediaReferenceSourceApp_optional __swiftcall MediaReferenceSourceApp.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222C94FDC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t MediaReferenceSourceApp.rawValue.getter()
{
  if (*v0)
  {
    result = 0x656E696665646E75;
  }

  else
  {
    result = 0x6C7070612E6D6F63;
  }

  *v0;
  return result;
}

unint64_t sub_222BDF4C0()
{
  result = qword_27D026888;
  if (!qword_27D026888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026888);
  }

  return result;
}

uint64_t sub_222BDF514()
{
  v1 = *v0;
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222BDF5A8()
{
  *v0;
  sub_222C9452C();
}

uint64_t sub_222BDF628()
{
  v1 = *v0;
  sub_222C952FC();
  sub_222C9452C();

  return sub_222C9534C();
}

uint64_t sub_222BDF6B8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_222C94FDC();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_222BDF718(uint64_t *a1@<X8>)
{
  v2 = 0x6C7070612E6D6F63;
  if (*v1)
  {
    v2 = 0x656E696665646E75;
  }

  v3 = 0xEF636973754D2E65;
  if (*v1)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_222BDF818(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x656E696665646E75;
  }

  else
  {
    v4 = 0x6C7070612E6D6F63;
  }

  if (v3)
  {
    v5 = 0xEF636973754D2E65;
  }

  else
  {
    v5 = 0xE900000000000064;
  }

  if (*a2)
  {
    v6 = 0x656E696665646E75;
  }

  else
  {
    v6 = 0x6C7070612E6D6F63;
  }

  if (*a2)
  {
    v7 = 0xE900000000000064;
  }

  else
  {
    v7 = 0xEF636973754D2E65;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_222C951FC();
  }

  return v9 & 1;
}

unint64_t sub_222BDF8E0()
{
  result = qword_27D026890;
  if (!qword_27D026890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D026890);
  }

  return result;
}

uint64_t Turn.getTimestamp()@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025360, &unk_222C98300);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_222C935EC();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Turn.deviceDynamicContextEvent.getter();
  if (v10 && (v11 = v10, v12 = [v10 deviceDynamicContext], v11, v12))
  {
    [v12 timeIntervalSince1970];

    sub_222C935AC();
    v13 = *(v21 + 56);

    return v13(a1, 0, 1, v6);
  }

  else
  {
    sub_222C941BC();
    if ((*(v21 + 48))(v5, 1, v6) == 1)
    {
      sub_222BA2994(v5);
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v15 = sub_222C9431C();
      __swift_project_value_buffer(v15, qword_280FE2340);
      v16 = sub_222C942FC();
      v17 = sub_222C94A3C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_222B39000, v16, v17, "Could not extract a timestamp from the device context", v18, 2u);
        MEMORY[0x223DCA8C0](v18, -1, -1);
      }

      return (*(v21 + 56))(a1, 1, 1, v6);
    }

    else
    {
      v19 = *(v21 + 32);
      v19(v9, v5, v6);
      v19(a1, v9, v6);
      return (*(v21 + 56))(a1, 0, 1, v6);
    }
  }
}

void *Turn.deviceDynamicContextEvent.getter()
{
  v0 = sub_222C941CC();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_222C94C6C())
  {

    if (!i)
    {
      break;
    }

    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x223DC9B30](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = sub_222C942EC();

      if (v7)
      {
        v8 = [v7 deviceDynamicContext];
        if (v8)
        {
          v9 = v8;
          swift_bridgeObjectRelease_n();

          return v7;
        }
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_15:
  swift_bridgeObjectRelease_n();
  return 0;
}

uint64_t PICSStoreCoreData.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = sub_222BE3CC0(a1, a2, 0);

  if (v5)
  {
    *(v4 + 16) = v5;
    *(v4 + 24) = [v5 newBackgroundContext];
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v4;
}

id sub_222BDFE58()
{
  result = sub_222BDFE78();
  qword_280FDFA10 = result;
  return result;
}

id sub_222BDFE78()
{
  v0 = sub_222C934DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PICSStoreCoreData();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_222C9448C();
  v8 = sub_222C9448C();
  v9 = [v6 URLForResource:v7 withExtension:v8];

  if (!v9)
  {
    goto LABEL_3;
  }

  sub_222C9348C();

  v10 = objc_allocWithZone(MEMORY[0x277CBE450]);
  v11 = sub_222C9346C();
  v12 = [v10 initWithContentsOfURL_];

  (*(v1 + 8))(v4, v0);
  result = v12;
  if (!v12)
  {
LABEL_3:
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v14 = sub_222C9431C();
    __swift_project_value_buffer(v14, qword_280FE2340);
    v15 = sub_222C942FC();
    v16 = sub_222C94A4C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_222B39000, v15, v16, "PICSStoreCoreData: Error loading data base model from bundle", v17, 2u);
      MEMORY[0x223DCA8C0](v17, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t sub_222BE00E8(uint64_t a1)
{
  v42[2] = *MEMORY[0x277D85DE8];
  v2 = sub_222C93E6C();
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2);
  v37 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_222C934DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  v13 = *(v6 + 16);
  v6 += 16;
  v40 = a1;
  v13(&v35 - v11, a1, v5);
  v41 = objc_opt_self();
  v14 = (v6 - 8);
  v15 = (v6 + 16);
  do
  {
    sub_222C9347C();
    v16 = *v14;
    (*v14)(v12, v5);
    (*v15)(v12, v10, v5);
    v17 = v14;
    v18 = [v41 defaultManager];
    sub_222C934AC();
    v19 = sub_222C9448C();

    v20 = [v18 fileExistsAtPath_];

    v14 = v17;
  }

  while (!v20);
  v21 = v41;
  v36 = v5;
  v23 = v37;
  v22 = v38;
  v24 = v39;
  (*(v38 + 104))(v37, *MEMORY[0x277D5FB50], v39);
  v25 = sub_222C93C8C();
  (*(v22 + 8))(v23, v24);
  if ((v25 & 1) == 0)
  {
    v42[0] = 0;
    v42[1] = 0xE000000000000000;
    sub_222C94D1C();
    MEMORY[0x223DC9330](0xD00000000000003ELL, 0x8000000222CABC80);
    v32 = sub_222C934AC();
    MEMORY[0x223DC9330](v32);

    sub_222C93C7C();
    sub_222BE4BF0(&qword_27D0268C8, MEMORY[0x277D5FB08]);
    swift_allocError();
    sub_222C93C6C();
    v29 = v36;
LABEL_8:
    swift_willThrow();
    result = (v16)(v12, v29);
    goto LABEL_9;
  }

  v26 = [v21 defaultManager];
  v27 = sub_222C9346C();
  v42[0] = 0;
  v28 = [v26 createDirectoryAtURL:v27 withIntermediateDirectories:1 attributes:0 error:v42];

  v29 = v36;
  if ((v28 & 1) == 0)
  {
    v33 = v42[0];
    sub_222C9342C();

    goto LABEL_8;
  }

  v30 = v42[0];
  result = (v16)(v12, v29);
LABEL_9:
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_222BE0530(void *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    swift_beginAccess();
    *(a3 + 16) = 0;
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v6 = sub_222C9431C();
    __swift_project_value_buffer(v6, qword_280FE2340);
    v7 = a2;
    v8 = a1;
    v9 = sub_222C942FC();
    v10 = sub_222C94A4C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v11 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D0268D0, &qword_222CA62F0);
      v14 = sub_222C94B4C();
      v16 = sub_222B437C0(v14, v15, &v18);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v8;
      *v12 = v8;
      v17 = v8;
      _os_log_impl(&dword_222B39000, v9, v10, "PICSStoreCoreData: Unable to load persistent stores: %s : %@", v11, 0x16u);
      sub_222B4FCD4(v12, &qword_27D025F70, &unk_222C9E7C0);
      MEMORY[0x223DCA8C0](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x223DCA8C0](v13, -1, -1);
      MEMORY[0x223DCA8C0](v11, -1, -1);
    }
  }
}

id sub_222BE0728()
{
  v18[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 24);
  v18[0] = 0;
  v2 = [v1 save_];
  if (v2)
  {
    v3 = v18[0];
  }

  else
  {
    v4 = v18[0];
    v5 = sub_222C9342C();

    swift_willThrow();
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v6 = sub_222C9431C();
    __swift_project_value_buffer(v6, qword_280FE2340);
    v7 = v5;
    v8 = sub_222C942FC();
    v9 = sub_222C94A4C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18[0] = v11;
      *v10 = 136315138;
      v12 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
      v13 = sub_222C944EC();
      v15 = sub_222B437C0(v13, v14, v18);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_222B39000, v8, v9, "PICSStoreCoreData: Unresolved error in saveChanges error=%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x223DCA8C0](v11, -1, -1);
      MEMORY[0x223DCA8C0](v10, -1, -1);
    }

    else
    {
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v2;
}

id sub_222BE0950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  type metadata accessor for PlusContactSuggestionCoreDataRecord();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  LOBYTE(a2) = sub_222BE09E4(a2, v6);

  if (a2)
  {
    result = sub_222BE0728();
  }

  else
  {
    result = 0;
  }

  *a3 = result & 1;
  return result;
}

uint64_t sub_222BE09E4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for ThinContactGroundTruth();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_222BE4808(a1);
  v13 = v12 >> 60;
  if (v12 >> 60 != 15)
  {
    v74 = v7;
    v14 = v12;
    v15 = v11;
    v16 = sub_222C9361C();
    [a2 setId_];

    v17 = type metadata accessor for PlusContactSuggestion();
    v18 = *(a1 + *(v17 + 32));
    sub_222C93F8C();
    [a2 setTimestamp_];
    v80 = v17;
    v19 = *(a1 + *(v17 + 20));
    sub_222C9377C();
    if (v20)
    {
      v21 = sub_222C9448C();
    }

    else
    {
      v21 = 0;
    }

    [a2 setFullName_];

    v22 = sub_222C9376C();
    v77 = v13;
    if (v22)
    {
      sub_222C939BC();
      v24 = v23;

      if (v24)
      {
        v22 = sub_222C9448C();
      }

      else
      {
        v22 = 0;
      }
    }

    [a2 setHandleLabel_];

    v75 = v14;
    v76 = v15;
    v25 = sub_222C934FC();
    [a2 setUsoPersonQuery_];

    v26 = v80[6];
    v79 = a1;
    v27 = (a1 + v26);
    v29 = *v27;
    v28 = v27[1];
    v31 = v27[2];
    v30 = v27[3];
    v32 = *(v3 + 24);
    type metadata accessor for PlusContactReferenceCoreDataRecord();
    v33 = objc_allocWithZone(swift_getObjCClassFromMetadata());

    v34 = [v33 initWithContext_];
    v35 = sub_222C9448C();
    [v34 setContactId_];

    if (v30)
    {
      v36 = sub_222C9448C();
    }

    else
    {
      v36 = 0;
    }

    [v34 setContactLabel_];

    [a2 setInferredContactReference_];
    v37 = [a2 inferredContactReference];
    if (v37)
    {
      v38 = v37;
      [v37 setContactSuggestion_];
    }

    v78 = a2;
    v39 = *(v79 + v80[7]);
    v40 = MEMORY[0x277D84F90];
    v82 = MEMORY[0x277D84F90];
    v41 = *(v39 + 16);
    if (v41)
    {
      v42 = v39 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
      v43 = *(v74 + 72);
      v44 = MEMORY[0x277D84F90];
      do
      {
        sub_222BE4C38(v42, v10, type metadata accessor for ThinContactGroundTruth);
        v45 = sub_222BF9A84(v32);
        v46 = sub_222BE4CA0(v10, type metadata accessor for ThinContactGroundTruth);
        if (v45)
        {
          MEMORY[0x223DC94A0](v46);
          if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v47 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_222C9475C();
          }

          sub_222C947AC();
          v44 = v82;
        }

        v42 += v43;
        --v41;
      }

      while (v41);
    }

    else
    {
      v44 = MEMORY[0x277D84F90];
    }

    sub_222C67384(v44);

    v48 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v49 = sub_222C9470C();

    v50 = [v48 initWithArray_];

    v51 = v78;
    [v78 setContributingGroundTruth_];

    v52 = *(v79 + v80[9]);
    v82 = v40;
    v53 = 1 << *(v52 + 32);
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    v55 = v54 & *(v52 + 56);
    v56 = (v53 + 63) >> 6;

    v58 = 0;
    if (v55)
    {
      goto LABEL_29;
    }

    while (1)
    {
      v59 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        __break(1u);
        return result;
      }

      if (v59 >= v56)
      {
        break;
      }

      v55 = *(v52 + 56 + 8 * v59);
      ++v58;
      if (v55)
      {
        v58 = v59;
        do
        {
LABEL_29:
          v81 = *(*(v52 + 48) + (__clz(__rbit64(v55)) | (v58 << 6)));
          sub_222BF9E2C(v32);
          MEMORY[0x223DC94A0]();
          if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v60 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_222C9475C();
            v51 = v78;
          }

          v55 &= v55 - 1;
          result = sub_222C947AC();
          v40 = v82;
        }

        while (v55);
      }
    }

    sub_222C6739C(v40);

    v61 = objc_allocWithZone(MEMORY[0x277CBEB70]);
    v62 = sub_222C9470C();

    v63 = [v61 initWithArray_];

    [v51 setTags_];
    v64 = v79;
    v65 = v80;
    [v51 setScore_];
    v66 = sub_222C72EC4(*(v64 + v65[11]));
    if (v67 >> 60 == 15)
    {
      v68 = 0;
    }

    else
    {
      v69 = v66;
      v70 = v67;
      v68 = sub_222C934FC();
      sub_222B803AC(v69, v70);
    }

    v71 = v76;
    v13 = v77;
    v72 = v75;
    [v51 setScoreHistory_];
    sub_222B803AC(v71, v72);
  }

  return v13 < 0xF;
}

void sub_222BE1094(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_222BE2934();
  if (v6)
  {
    v7 = v6;
    type metadata accessor for PlusContactSuggestionCoreDataRecord();
    v8 = *(a1 + 24);
    v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    v10 = sub_222BE09E4(a2, v9);

    if (v10)
    {
      [v8 deleteObject_];
      v11 = sub_222BE0728();
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  *a3 = v11 & 1;
}

uint64_t sub_222BE1164()
{
  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_222BE43D8;
  *(v2 + 24) = v0;
  v5[4] = sub_222BE43DC;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_222BE12C8;
  v5[3] = &block_descriptor;
  v3 = _Block_copy(v5);

  [v1 performBlockAndWait_];
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

void sub_222BE12F0()
{
  v35[1] = *MEMORY[0x277D85DE8];
  v1 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v2 = sub_222C9448C();
  v3 = [v1 initWithEntityName_];

  v4 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v5 = sub_222C9448C();
  v6 = [v4 initWithEntityName_];

  v7 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  v8 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  v9 = *(v0 + 24);
  v35[0] = 0;
  v10 = [v9 executeRequest:v7 error:v35];
  v11 = v35[0];
  if (v10 && (v12 = v10, v13 = v35[0], v12, v35[0] = 0, v14 = [v9 executeRequest:v8 error:v35], v11 = v35[0], v14))
  {
    v15 = v14;
    v16 = v35[0];

    if (sub_222BE0728())
    {
    }

    else
    {
      if (qword_280FDFE78 != -1)
      {
        swift_once();
      }

      v29 = sub_222C9431C();
      __swift_project_value_buffer(v29, qword_280FE2340);
      v30 = sub_222C942FC();
      v31 = sub_222C94A4C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_222B39000, v30, v31, "PICSStoreCoreData: Cannot reset store, failed to save", v32, 2u);
        MEMORY[0x223DCA8C0](v32, -1, -1);
      }
    }
  }

  else
  {
    v17 = v11;
    v18 = sub_222C9342C();

    swift_willThrow();
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v19 = sub_222C9431C();
    __swift_project_value_buffer(v19, qword_280FE2340);
    v20 = v18;
    v21 = sub_222C942FC();
    v22 = sub_222C94A4C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v34 = v3;
      v24 = swift_slowAlloc();
      v35[0] = v24;
      *v23 = 136315138;
      v25 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
      v26 = sub_222C944EC();
      v28 = sub_222B437C0(v26, v27, v35);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_222B39000, v21, v22, "PICSStoreCoreData: Cannot reset store, error=%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x223DCA8C0](v24, -1, -1);
      MEMORY[0x223DCA8C0](v23, -1, -1);
    }

    else
    {
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

void *sub_222BE173C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A88, &unk_222C9A0C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v43 - v3;
  v5 = type metadata accessor for PlusContactSuggestion();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v11 = sub_222C9448C();
  v12 = [v10 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_222C9BAE0;
  v14 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v15 = sub_222C9448C();
  v16 = [v14 initWithKey:v15 ascending:0];

  *(v13 + 32) = v16;
  sub_222B505A8(0, &qword_280FDB778, 0x277CCAC98);
  v17 = sub_222C9470C();

  [v12 setSortDescriptors_];

  v18 = *(v0 + 24);
  type metadata accessor for PlusContactSuggestionCoreDataRecord();
  v19 = sub_222C94B2C();
  v31 = v19;
  v45 = v5;
  if (v19 >> 62)
  {
    v32 = sub_222C94C6C();
  }

  else
  {
    v32 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v45;
  v43 = v12;
  if (v32)
  {
    v34 = 0;
    v46 = v9;
    v47 = v31 & 0xC000000000000001;
    v44 = v6;
    v35 = (v6 + 48);
    v30 = MEMORY[0x277D84F90];
    v36 = v32;
    while (1)
    {
      if (v47)
      {
        v37 = MEMORY[0x223DC9B30](v34, v31);
      }

      else
      {
        if (v34 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v37 = *(v31 + 8 * v34 + 32);
      }

      v38 = v37;
      v39 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      sub_222BFA3A0(v4);

      if ((*v35)(v4, 1, v33) == 1)
      {
        sub_222B4FCD4(v4, &qword_27D025A88, &unk_222C9A0C0);
      }

      else
      {
        sub_222BB8DB4(v4, v46);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_222B4ACA4(0, v30[2] + 1, 1, v30);
        }

        v41 = v30[2];
        v40 = v30[3];
        if (v41 >= v40 >> 1)
        {
          v30 = sub_222B4ACA4(v40 > 1, v41 + 1, 1, v30);
        }

        v30[2] = v41 + 1;
        sub_222BB8DB4(v46, v30 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v41);
        v33 = v45;
      }

      ++v34;
      if (v39 == v36)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    swift_once();
    v20 = sub_222C9431C();
    __swift_project_value_buffer(v20, qword_280FE2340);
    v21 = v33;
    v22 = sub_222C942FC();
    v23 = sub_222C94A4C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v48 = v33;
      v49 = v25;
      *v24 = 136315138;
      v26 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
      v27 = sub_222C944EC();
      v29 = sub_222B437C0(v27, v28, &v49);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_222B39000, v22, v23, "PICSStoreCoreData: Unresolved error in readAll error=%s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x223DCA8C0](v25, -1, -1);
      MEMORY[0x223DCA8C0](v24, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
LABEL_23:
  }

  return v30;
}

uint64_t sub_222BE1CA4(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_222C94B1C();
  return v5;
}

char *sub_222BE1CFC()
{
  v1 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v2 = sub_222C9448C();
  v3 = [v1 initWithEntityName_];

  v4 = *(v0 + 24);
  type metadata accessor for PlusContactReferenceCoreDataRecord();
  v5 = sub_222C94B2C();
  v17 = v5;
  v18 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
    v19 = sub_222C94C6C();
    if (v19)
    {
      goto LABEL_7;
    }

LABEL_26:
    v16 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v19 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_26;
  }

LABEL_7:
  v20 = 0;
  v16 = MEMORY[0x277D84F90];
  while (2)
  {
    v21 = v20;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x223DC9B30](v21, v17);
      }

      else
      {
        if (v21 >= *(v18 + 16))
        {
          goto LABEL_24;
        }

        v22 = *(v17 + 8 * v21 + 32);
      }

      v23 = v22;
      v20 = (v21 + 1);
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        swift_once();
        v6 = sub_222C9431C();
        __swift_project_value_buffer(v6, qword_280FE2340);
        v7 = v19;
        v8 = sub_222C942FC();
        v9 = sub_222C94A4C();

        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          v36 = v11;
          *v10 = 136315138;
          v40 = v19;
          v12 = v19;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
          v13 = sub_222C944EC();
          v15 = sub_222B437C0(v13, v14, &v36);

          *(v10 + 4) = v15;
          _os_log_impl(&dword_222B39000, v8, v9, "PICSStoreCoreData: Unresolved error in AllContactReferences error=%s", v10, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v11);
          MEMORY[0x223DCA8C0](v11, -1, -1);
          MEMORY[0x223DCA8C0](v10, -1, -1);
        }

        return MEMORY[0x277D84F90];
      }

      sub_222BFB850(&v36);

      v24 = v37;
      if (v37)
      {
        break;
      }

      sub_222B450E8(v36, 0);
      ++v21;
      if (v20 == v19)
      {
        goto LABEL_27;
      }
    }

    v34 = v38;
    v35 = v36;
    v33 = v39;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_222B4B1F8(0, *(v16 + 2) + 1, 1, v16);
    }

    v26 = *(v16 + 2);
    v25 = *(v16 + 3);
    v27 = v33;
    v28 = v34;
    v29 = v35;
    if (v26 >= v25 >> 1)
    {
      v31 = sub_222B4B1F8((v25 > 1), v26 + 1, 1, v16);
      v27 = v33;
      v28 = v34;
      v16 = v31;
      v29 = v35;
    }

    *(v16 + 2) = v26 + 1;
    v30 = &v16[32 * v26];
    *(v30 + 4) = v29;
    *(v30 + 5) = v24;
    *(v30 + 6) = v28;
    *(v30 + 7) = v27;
    if (v20 != v19)
    {
      continue;
    }

    break;
  }

LABEL_27:

  return v16;
}

uint64_t sub_222BE205C()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026898, &qword_222C9E700);
  sub_222C94B1C();
  return v3;
}

void *sub_222BE20D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A88, &unk_222C9A0C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v51 - v3;
  v57 = type metadata accessor for PlusContactSuggestion();
  v55 = *(v57 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v8 = sub_222C9448C();
  v9 = [v7 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_222C9BAE0;
  v11 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v12 = sub_222C9448C();
  v13 = [v11 initWithKey:v12 ascending:0];

  *(v10 + 32) = v13;
  sub_222B505A8(0, &qword_280FDB778, 0x277CCAC98);
  v14 = sub_222C9470C();

  [v9 setSortDescriptors_];

  v15 = sub_222C0AFD4();
  if (!v16)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v38 = sub_222C9431C();
    __swift_project_value_buffer(v38, qword_280FE2340);
    v39 = sub_222C942FC();
    v40 = sub_222C94A3C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_222B39000, v39, v40, "PICSStoreCoreData: Unable to extract name from USO query. Skipping search.", v41, 2u);
      MEMORY[0x223DCA8C0](v41, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  v17 = v15;
  v18 = v16;
  v53 = v0;
  if (qword_280FDFE78 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v19 = sub_222C9431C();
    __swift_project_value_buffer(v19, qword_280FE2340);

    v20 = sub_222C942FC();
    v21 = sub_222C94A3C();

    v22 = os_log_type_enabled(v20, v21);
    v52 = v17;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v17;
      v26 = v24;
      v58 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_222B437C0(v25, v18, &v58);
      _os_log_impl(&dword_222B39000, v20, v21, "PICSStoreCoreData: Searching for PICS with fullName==%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x223DCA8C0](v26, -1, -1);
      MEMORY[0x223DCA8C0](v23, -1, -1);
    }

    v27 = sub_222C9376C();
    v54 = v4;
    if (v27 && (v28 = sub_222C939BC(), v30 = v29, , v30))
    {
      sub_222B505A8(0, &qword_280FDB788, 0x277CCAC30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C70, &unk_222C9BEE0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_222C96900;
      v32 = MEMORY[0x277D837D0];
      *(v31 + 56) = MEMORY[0x277D837D0];
      v33 = sub_222B9A614();
      *(v31 + 32) = v52;
      *(v31 + 40) = v18;
      *(v31 + 96) = v32;
      *(v31 + 104) = v33;
      *(v31 + 64) = v33;
      *(v31 + 72) = v28;
      *(v31 + 80) = v30;
      v4 = v54;
    }

    else
    {
      sub_222B505A8(0, &qword_280FDB788, 0x277CCAC30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C70, &unk_222C9BEE0);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_222C97C40;
      *(v34 + 56) = MEMORY[0x277D837D0];
      *(v34 + 64) = sub_222B9A614();
      *(v34 + 32) = v52;
      *(v34 + 40) = v18;
    }

    v35 = sub_222C949EC();
    [v9 setPredicate_];

    v36 = v53[3];
    type metadata accessor for PlusContactSuggestionCoreDataRecord();
    v37 = sub_222C94B2C();
    v42 = v37;
    if (v37 >> 62)
    {
      break;
    }

    v43 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v53 = v9;
    if (!v43)
    {
      goto LABEL_35;
    }

LABEL_17:
    v18 = 0;
    v9 = (v42 & 0xFFFFFFFFFFFFFF8);
    v44 = (v55 + 48);
    v17 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x223DC9B30](v18, v42);
      }

      else
      {
        if (v18 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v45 = *(v42 + 8 * v18 + 32);
      }

      v46 = v45;
      v47 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      sub_222BFA3A0(v4);

      if ((*v44)(v4, 1, v57) == 1)
      {
        sub_222B4FCD4(v4, &qword_27D025A88, &unk_222C9A0C0);
      }

      else
      {
        sub_222BB8DB4(v4, v56);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_222B4ACA4(0, v17[2] + 1, 1, v17);
        }

        v49 = v17[2];
        v48 = v17[3];
        if (v49 >= v48 >> 1)
        {
          v17 = sub_222B4ACA4(v48 > 1, v49 + 1, 1, v17);
        }

        v17[2] = v49 + 1;
        sub_222BB8DB4(v56, v17 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v49);
        v4 = v54;
      }

      ++v18;
      if (v47 == v43)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

  v43 = sub_222C94C6C();
  v53 = v9;
  if (v43)
  {
    goto LABEL_17;
  }

LABEL_35:
  v17 = MEMORY[0x277D84F90];
LABEL_36:

  return v17;
}

unint64_t sub_222BE2934()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v3 = sub_222C9448C();
  v4 = [v2 initWithEntityName_];

  sub_222B505A8(0, &qword_280FDB788, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C70, &unk_222C9BEE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_222C97C40;
  v6 = sub_222C9361C();
  *(v5 + 56) = sub_222B505A8(0, &qword_27D0268B0, 0x277CCAD78);
  *(v5 + 64) = sub_222BE47A0();
  *(v5 + 32) = v6;
  v7 = sub_222C949EC();
  [v4 setPredicate_];

  v8 = *(v1 + 24);
  type metadata accessor for PlusContactSuggestionCoreDataRecord();
  result = sub_222C94B2C();
  if (result >> 62)
  {
    v12 = result;
    v13 = sub_222C94C6C();
    result = v12;
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x223DC9B30](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(result + 32);
LABEL_6:
    v11 = v10;

    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_222BE2C90()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A88, &unk_222C9A0C0);
  return sub_222C94B1C();
}

void sub_222BE2D08(char *a1@<X8>)
{
  v2 = sub_222BE2934();
  if (v2)
  {
    v3 = v2;
    sub_222BFA3A0(a1);
  }

  else
  {
    v4 = type metadata accessor for PlusContactSuggestion();
    (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
  }
}

uint64_t sub_222BE2D98()
{
  v1 = *(v0 + 24);
  sub_222C94B1C();
  return v3;
}

uint64_t sub_222BE2E04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v7 = sub_222C9448C();
  v8 = [v6 initWithEntityName_];

  sub_222B505A8(0, &qword_280FDB788, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025C70, &unk_222C9BEE0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_222C97C40;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_222B9A614();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  v10 = sub_222C949EC();
  [v8 setPredicate_];

  v11 = *(v3 + 24);
  type metadata accessor for PlusContactReferenceCoreDataRecord();
  v12 = sub_222C94B2C();
  v13 = v12;
  v14 = v12 >> 62;
  if (v12 >> 62)
  {
    v15 = sub_222C94C6C();
    if (!v15)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_10;
    }
  }

  if (v15 < 1)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_14;
  }

  for (i = 0; i != v15; ++i)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x223DC9B30](i, v13);
    }

    else
    {
      v17 = *(v13 + 8 * i + 32);
    }

    v18 = v17;
    [v11 deleteObject_];
  }

LABEL_10:
  if (sub_222BE0728())
  {
    if (v14)
    {
      v19 = sub_222C94C6C();
    }

    else
    {
      v19 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v19;
  }

  if (qword_280FDFE78 != -1)
  {
    goto LABEL_20;
  }

LABEL_14:
  v20 = sub_222C9431C();
  __swift_project_value_buffer(v20, qword_280FE2340);
  v21 = sub_222C942FC();
  v22 = sub_222C94A4C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_222B39000, v21, v22, "Failed to save changes after deleting records.", v23, 2u);
    MEMORY[0x223DCA8C0](v23, -1, -1);
  }

  return 0;
}

uint64_t sub_222BE3278()
{
  v1 = *(v0 + 24);
  sub_222C94B1C();
  return v3;
}

void sub_222BE32D4(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_222BE2934();
  if (v4)
  {
    v5 = v4;
    [*(a1 + 24) deleteObject_];
    v6 = sub_222BE0728();
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6 & 1;
}

uint64_t sub_222BE3348(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 24);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_222BE451C;
  *(v8 + 24) = v7;
  v11[4] = sub_222BE50C0;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_222BE12C8;
  v11[3] = &block_descriptor_10;
  v9 = _Block_copy(v11);

  [v6 performBlockAndWait_];
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void sub_222BE34C0(uint64_t a1)
{
  v2 = sub_222C935EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_222BE4D00();
  if (!v7)
  {
    type metadata accessor for PlusContactSuggestionStoreUpdateRecord();
    v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  }

  v8 = v7;
  v9 = sub_222C9448C();
  [v8 setSource_];

  sub_222C935DC();
  v10 = sub_222C9355C();
  (*(v3 + 8))(v6, v2);
  [v8 setTimestamp_];

  if ((sub_222BE0728() & 1) == 0)
  {
    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    v11 = sub_222C9431C();
    __swift_project_value_buffer(v11, qword_280FE2340);
    v12 = sub_222C942FC();
    v13 = sub_222C94A4C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_222B39000, v12, v13, "Failed to persist store update record to CoreData", v14, 2u);
      MEMORY[0x223DCA8C0](v14, -1, -1);
    }
  }
}

uint64_t sub_222BE36D4()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0268A8, &qword_222C9E718);
  return sub_222C94B1C();
}

void sub_222BE3748(uint64_t *a1@<X8>)
{
  v2 = sub_222BE4D00();
  if (v2)
  {
    v3 = v2;
    sub_222BFB9B8(a1);
  }

  else
  {
    v4 = type metadata accessor for ContactSuggestionStoreUpdate();
    (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
  }
}

uint64_t PICSStoreCoreData.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222BE38F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*v4 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_222C94B1C();
  return v7;
}

uint64_t sub_222BE3958()
{
  v1 = *(*v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026898, &qword_222C9E700);
  sub_222C94B1C();
  return v3;
}

uint64_t sub_222BE39D0()
{
  v1 = *(*v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D025A88, &unk_222C9A0C0);
  return sub_222C94B1C();
}

uint64_t sub_222BE3A48()
{
  v1 = *(*v0 + 24);
  sub_222C94B1C();
  return v3;
}

uint64_t sub_222BE3AB4()
{
  v1 = *(*v0 + 24);
  sub_222C94B1C();
  return v3;
}

uint64_t sub_222BE3B30()
{
  v1 = *(*v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0268A8, &qword_222C9E718);
  return sub_222C94B1C();
}

uint64_t PICSStoreCoreDataWithMigrations.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = sub_222BE3CC0(a1, a2, 1);

  if (v5)
  {
    *(v4 + 16) = v5;
    *(v4 + 24) = [v5 newBackgroundContext];
  }

  else
  {
    type metadata accessor for PICSStoreCoreData();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v4;
}

uint64_t sub_222BE3C48(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_222BE3CC0(a1, a2, a3);

  if (v4)
  {
    *(v3 + 16) = v4;
    *(v3 + 24) = [v4 newBackgroundContext];
  }

  else
  {
    type metadata accessor for PICSStoreCoreData();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

id sub_222BE3CC0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_222C934DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v31[-v10];
  MEMORY[0x28223BE20](v9);
  v13 = &v31[-v12];
  v14 = [objc_allocWithZone(MEMORY[0x277CBE4E0]) init];
  [v14 setShouldInferMappingModelAutomatically_];
  [v14 setShouldMigrateStoreAutomatically_];
  if (qword_280FDFA08 != -1)
  {
    swift_once();
  }

  v15 = qword_280FDFA10;
  if (!qword_280FDFA10)
  {

    return 0;
  }

  v33 = v14;
  v16 = v5;
  v17 = objc_allocWithZone(MEMORY[0x277CBE4A0]);
  v18 = v15;
  v19 = sub_222C9448C();
  v32 = v18;
  v20 = [v17 initWithName:v19 managedObjectModel:v18];

  if (a2)
  {
    sub_222C9345C();
    sub_222C9347C();
    sub_222BE00E8(v11);
    v21 = *(v6 + 8);
    v21(v11, v16);
    v22 = sub_222C9346C();
    [v33 setURL_];

    v21(v13, v16);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D025FB0, &unk_222C96EB0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_222C9BAE0;
  v24 = v33;
  *(v23 + 32) = v33;
  sub_222B505A8(0, &qword_280FDB760, 0x277CBE4E0);
  v25 = v24;
  v26 = sub_222C9470C();

  [v20 setPersistentStoreDescriptions_];

  v27 = swift_allocObject();
  *(v27 + 16) = 1;
  v28 = (v27 + 16);
  aBlock[4] = sub_222BE5004;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222C72E38;
  aBlock[3] = &block_descriptor_73;
  v29 = _Block_copy(aBlock);

  [v20 loadPersistentStoresWithCompletionHandler_];

  _Block_release(v29);
  swift_beginAccess();
  LOBYTE(v25) = *v28;

  if ((v25 & 1) == 0)
  {

    return 0;
  }

  return v20;
}

uint64_t sub_222BE43DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_222BE441C@<X0>(void *a1@<X8>)
{
  result = sub_222BE173C();
  *a1 = result;
  return result;
}

char *sub_222BE444C@<X0>(char **a1@<X8>)
{
  result = sub_222BE1CFC();
  *a1 = result;
  return result;
}

void *sub_222BE447C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  result = sub_222BE20D4();
  *a1 = result;
  return result;
}

void sub_222BE44BC(char *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_222BE2D08(a1);
}

uint64_t sub_222BE44D8@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[2];
  result = sub_222BE2E04(v3, v4);
  *a1 = result;
  return result;
}

void sub_222BE451C()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_222BE34C0(v0[2]);
}

unint64_t sub_222BE47A0()
{
  result = qword_27D0268B8;
  if (!qword_27D0268B8)
  {
    sub_222B505A8(255, &qword_27D0268B0, 0x277CCAD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0268B8);
  }

  return result;
}

uint64_t sub_222BE4808(uint64_t a1)
{
  v2 = type metadata accessor for PlusContactSuggestion();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = sub_222C931FC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_222C9323C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_222C9322C();
  sub_222C931EC();
  sub_222C9320C();
  v12 = *(a1 + *(v3 + 28));
  sub_222C9378C();
  sub_222BE4BF0(&qword_27D025A98, MEMORY[0x277D5E850]);

  v10 = sub_222C9321C();

  return v10;
}

uint64_t sub_222BE4BF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_222BE4C38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_222BE4CA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_222BE4D00()
{
  v23[1] = *MEMORY[0x277D85DE8];
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_222C9448C();
  v2 = [v0 initWithEntityName_];

  v23[0] = 0;
  v3 = [v2 execute_];
  v4 = v23[0];
  if (!v3)
  {
    v11 = v23[0];
    v5 = sub_222C9342C();

    swift_willThrow();
    if (qword_280FDFE78 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  v5 = v3;
  type metadata accessor for PlusContactSuggestionStoreUpdateRecord();
  v6 = sub_222C9471C();
  v7 = v4;

  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_13:

LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  if (!sub_222C94C6C())
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x223DC9B30](0, v6);
    goto LABEL_7;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_18:
    swift_once();
LABEL_9:
    v12 = sub_222C9431C();
    __swift_project_value_buffer(v12, qword_280FE2340);
    v13 = v5;
    v14 = sub_222C942FC();
    v15 = sub_222C94A4C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23[0] = v17;
      *v16 = 136315138;
      v18 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
      v19 = sub_222C944EC();
      v21 = sub_222B437C0(v19, v20, v23);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_222B39000, v14, v15, "Failed to load store update record. error=%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x223DCA8C0](v17, -1, -1);
      MEMORY[0x223DCA8C0](v16, -1, -1);
    }

    else
    {
    }

    goto LABEL_14;
  }

  v8 = *(v6 + 32);
LABEL_7:
  v9 = v8;

  result = v9;
LABEL_15:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_222BE5100()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_222BE5168(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = sub_222C94B5C();
  v59 = *(v8 - 8);
  v60 = v8;
  v9 = *(v59 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v58 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v61 = &v51 - v13;
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v51 - v19;
  v21 = sub_222C9338C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v51 - v24;
  v26 = sub_222C947BC();
  if (v26 < 2)
  {
    goto LABEL_6;
  }

  v55 = v18;
  v57 = v20;
  v63 = a1;
  MEMORY[0x28223BE20](v26);
  *(&v51 - 2) = a2;
  *(&v51 - 1) = a3;
  v54 = a3;
  swift_getKeyPath();
  sub_222C9339C();
  sub_222C947FC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v27 = sub_222C9463C();
  (*(v22 + 8))(v25, v21);
  v62 = v27;
  swift_getWitnessTable();
  sub_222C9444C();
  v28 = v64;
  v29 = v65;
  v30 = v66;
  v56 = v63;
  sub_222C94C0C();
  swift_getWitnessTable();
  v31 = v61;
  sub_222C9443C();
  v32 = v14;
  v33 = *(v14 + 48);
  if (v33(v31, 1, a2) == 1)
  {
    (*(v59 + 8))(v61, v60);
    swift_unknownObjectRelease();
LABEL_6:

    return a1;
  }

  v52 = a1;
  v53 = v32;
  v34 = v61;
  v61 = *(v32 + 32);
  (v61)(v57, v34, a2);
  v63 = v56;
  v64 = v28;
  v65 = v29;
  v66 = v30;
  swift_getWitnessTable();
  v35 = v58;
  sub_222C949CC();
  if (v33(v35, 1, a2) == 1)
  {
    (*(v53 + 8))(v57, a2);
    (*(v59 + 8))(v35, v60);
    swift_unknownObjectRelease();
    a1 = v52;
    goto LABEL_6;
  }

  v37 = v53;
  v38 = v55;
  (v61)(v55, v35, a2);
  v39 = v54;
  v40 = *(v54 + 96);
  v41 = v57;
  v42 = v40(a2, v54);
  if (v42 - v40(a2, v39) >= a4)
  {
    v44 = sub_222B51F4C(a2, a2);
    v45 = *(v44 + 52);
    v46 = *(v37 + 72);
    v47 = (*(v37 + 80) + *(v44 + 48)) & ~*(v37 + 80);
    swift_allocObject();
    v48 = sub_222C9473C();
    (*(v37 + 16))(v49, v41, a2);
    a1 = sub_222B5065C(v48);
    swift_unknownObjectRelease();
    v50 = *(v37 + 8);
    v50(v38, a2);
    v50(v41, a2);
  }

  else
  {
    a1 = sub_222C9477C();
    swift_unknownObjectRelease();
    v43 = *(v37 + 8);
    v43(v38, a2);
    v43(v41, a2);
  }

  return a1;
}

uint64_t sub_222BE5784()
{
  type metadata accessor for CascadeLearnedEntityDonator();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026958, &qword_222C9E908);
  v0 = sub_222C944EC();
  MEMORY[0x223DC9330](v0);

  result = MEMORY[0x223DC9330](93, 0xE100000000000000);
  qword_280FDDC88 = 91;
  unk_280FDDC90 = 0xE100000000000000;
  return result;
}

uint64_t sub_222BE5848()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 32);
  *(v0 + 121) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);

  if (v5)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 80) = v5;
    *(v0 + 88) = v7;
    v9 = __clz(__rbit64(v5)) | (v7 << 6);
    v10 = *(*(v6 + 48) + v9);
    v11 = *(*(v6 + 56) + 8 * v9);
    *(v0 + 96) = v11;
    v12 = qword_280FDFE78;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = sub_222C9431C();
    __swift_project_value_buffer(v13, qword_280FE2340);

    v14 = sub_222C942FC();
    v15 = sub_222C94A3C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *(v0 + 64) = v17;
      *v16 = 136315394;
      if (qword_280FDDC80 != -1)
      {
        swift_once();
      }

      *(v16 + 4) = sub_222B437C0(qword_280FDDC88, unk_280FDDC90, (v0 + 64));
      *(v16 + 12) = 2080;
      if (v10)
      {
        v18 = 0xD000000000000010;
      }

      else
      {
        v18 = 0xD000000000000012;
      }

      if (v10)
      {
        v19 = "siriLearnedContact";
      }

      else
      {
        v19 = "picsRuntimeInSiriVocab";
      }

      v20 = sub_222B437C0(v18, v19 | 0x8000000000000000, (v0 + 64));

      *(v16 + 14) = v20;
      _os_log_impl(&dword_222B39000, v14, v15, "%s Donating candidates with the type: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v17, -1, -1);
      MEMORY[0x223DCA8C0](v16, -1, -1);
    }

    v21 = MEMORY[0x277D84F90];
    *(v0 + 56) = MEMORY[0x277D84F90];
    v22 = *(v11 + 16);
    if (v22)
    {
      v23 = v11 + 32;
      do
      {
        sub_222B43E3C(v23, v0 + 16);
        v24 = *(v0 + 40);
        v25 = *(v0 + 48);
        __swift_project_boxed_opaque_existential_1((v0 + 16), v24);
        v26 = (*(v25 + 8))(v24, v25);
        v27 = __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
        if (v26)
        {
          MEMORY[0x223DC94A0](v27);
          if (*((*(v0 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v28 = *((*(v0 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_222C9475C();
          }

          sub_222C947AC();
          v21 = *(v0 + 56);
        }

        v23 += 40;
        --v22;
      }

      while (v22);
    }

    *(v0 + 104) = v21;
    *(v0 + 120) = v10;
    v29 = swift_task_alloc();
    *(v0 + 112) = v29;
    *v29 = v0;
    v29[1] = sub_222BE5C40;

    return sub_222BE6244(v21, (v0 + 120));
  }

  else
  {
    v8 = 0;
    while (((63 - v4) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v5 = *(v6 + 8 * v8++ + 72);
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_222BE5C40()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_222BE5D74, 0, 0);
}

uint64_t sub_222BE5D74()
{
  v3 = *(v1 + 88);
  v4 = (*(v1 + 80) - 1) & *(v1 + 80);
  if (v4)
  {
    v5 = *(v1 + 72);
LABEL_7:
    *(v1 + 80) = v4;
    *(v1 + 88) = v3;
    v7 = __clz(__rbit64(v4)) | (v3 << 6);
    v2 = *(*(v5 + 48) + v7);
    v0 = *(*(v5 + 56) + 8 * v7);
    *(v1 + 96) = v0;
    v8 = qword_280FDFE78;

    if (v8 != -1)
    {
LABEL_32:
      swift_once();
    }

    v9 = sub_222C9431C();
    __swift_project_value_buffer(v9, qword_280FE2340);

    v10 = sub_222C942FC();
    v11 = sub_222C94A3C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *(v1 + 64) = v13;
      *v12 = 136315394;
      if (qword_280FDDC80 != -1)
      {
        swift_once();
      }

      *(v12 + 4) = sub_222B437C0(qword_280FDDC88, unk_280FDDC90, (v1 + 64));
      *(v12 + 12) = 2080;
      if (v2)
      {
        v14 = 0xD000000000000010;
      }

      else
      {
        v14 = 0xD000000000000012;
      }

      if (v2)
      {
        v15 = "siriLearnedContact";
      }

      else
      {
        v15 = "picsRuntimeInSiriVocab";
      }

      v16 = sub_222B437C0(v14, v15 | 0x8000000000000000, (v1 + 64));

      *(v12 + 14) = v16;
      _os_log_impl(&dword_222B39000, v10, v11, "%s Donating candidates with the type: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v13, -1, -1);
      MEMORY[0x223DCA8C0](v12, -1, -1);
    }

    v17 = MEMORY[0x277D84F90];
    *(v1 + 56) = MEMORY[0x277D84F90];
    v18 = *(v0 + 16);
    if (v18)
    {
      v19 = v0 + 32;
      do
      {
        sub_222B43E3C(v19, v1 + 16);
        v20 = *(v1 + 40);
        v21 = *(v1 + 48);
        __swift_project_boxed_opaque_existential_1((v1 + 16), v20);
        v22 = (*(v21 + 8))(v20, v21);
        v23 = __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));
        if (v22)
        {
          MEMORY[0x223DC94A0](v23);
          if (*((*(v1 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v24 = *((*(v1 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_222C9475C();
          }

          sub_222C947AC();
          v17 = *(v1 + 56);
        }

        v19 += 40;
        --v18;
      }

      while (v18);
    }

    *(v1 + 104) = v17;
    *(v1 + 120) = v2;
    v25 = swift_task_alloc();
    *(v1 + 112) = v25;
    *v25 = v1;
    v25[1] = sub_222BE5C40;

    return sub_222BE6244(v17, (v1 + 120));
  }

  else
  {
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      v5 = *(v1 + 72);
      if (v6 >= (((1 << *(v1 + 121)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v5 + 8 * v6 + 64);
      ++v3;
      if (v4)
      {
        v3 = v6;
        goto LABEL_7;
      }
    }

    v27 = *(v1 + 8);

    return v27();
  }
}

uint64_t sub_222BE6154(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0262A0, &qword_222C96D10);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_222BE6244(uint64_t a1, _BYTE *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  *(v2 + 152) = a1;
  *(v2 + 176) = *a2;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_222BE62DC, 0, 0);
}

uint64_t sub_222BE62DC()
{
  v1 = v0;
  v11 = *MEMORY[0x277D85DE8];
  v2 = v0 + 16;
  v3 = v0 + 80;
  v4 = *(v1 + 176);
  v5 = objc_opt_self();
  sub_222BE7258();
  v6 = sub_222C9470C();
  *(v1 + 160) = v6;
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 144;
  *(v1 + 24) = sub_222BE6478;
  v7 = swift_continuation_init();
  *(v1 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D026960, &unk_222C9E910);
  *(v1 + 80) = MEMORY[0x277D85DD0];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_222BE6154;
  *(v1 + 104) = &block_descriptor_0;
  *(v1 + 112) = v7;
  if (v4)
  {
    v8 = 62158;
  }

  else
  {
    v8 = 53601;
  }

  [v5 fullSetDonationWithItemType:v8 descriptors:v6 completion:v3];
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200938](v2);
}

uint64_t sub_222BE6478()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_222BE6DAC;
  }

  else
  {
    v3 = sub_222BE65B4;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222BE65B4()
{
  v62 = v0;
  v61[1] = *MEMORY[0x277D85DE8];
  v60 = *(v0 + 144);

  if (qword_280FDFE78 == -1)
  {
    goto LABEL_2;
  }

LABEL_67:
  swift_once();
LABEL_2:
  v1 = *(v0 + 152);
  v59 = sub_222C9431C();
  __swift_project_value_buffer(v59, qword_280FE2340);

  v2 = sub_222C942FC();
  v3 = sub_222C94A3C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v61[0] = v5;
    *v4 = 136315650;
    if (qword_280FDDC80 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 152);
    *(v4 + 4) = sub_222B437C0(qword_280FDDC88, unk_280FDDC90, v61);
    *(v4 + 12) = 2048;
    if (v6 >> 62)
    {
      if (*(v0 + 152) < 0)
      {
        v58 = *(v0 + 152);
      }

      v7 = sub_222C94C6C();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = *(v0 + 176);
    v9 = *(v0 + 152);
    *(v4 + 14) = v7;

    *(v4 + 22) = 2080;
    if (v8)
    {
      v10 = 0xD000000000000010;
    }

    else
    {
      v10 = 0xD000000000000012;
    }

    if (v8)
    {
      v11 = "siriLearnedContact";
    }

    else
    {
      v11 = "picsRuntimeInSiriVocab";
    }

    v12 = sub_222B437C0(v10, v11 | 0x8000000000000000, v61);

    *(v4 + 24) = v12;
    _os_log_impl(&dword_222B39000, v2, v3, "%s Begin registering %ld %s entities.", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DCA8C0](v5, -1, -1);
    MEMORY[0x223DCA8C0](v4, -1, -1);
  }

  else
  {
    v6 = *(v0 + 152);
  }

  v13 = 0;
  v14 = *(v0 + 152);
  v15 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 < 0)
  {
    v16 = *(v0 + 152);
  }

  v17 = v6 & 0xC000000000000001;
  v18 = v14 + 32;
  v19 = v14 >> 62;
  if (v14 >> 62)
  {
    while (v13 != sub_222C94C6C())
    {
LABEL_21:
      if (v17)
      {
        v20 = MEMORY[0x223DC9B30](v13, *(v0 + 152));
      }

      else
      {
        if (v13 >= *(v15 + 16))
        {
          goto LABEL_66;
        }

        v20 = *(v18 + 8 * v13);
      }

      v21 = v20;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      *(v0 + 80) = 0;
      v22 = [v60 registerItem:v20 error:v0 + 80];
      v23 = *(v0 + 80);
      if (!v22)
      {
        v34 = v23;
        v35 = sub_222C9342C();

        swift_willThrow();
        goto LABEL_37;
      }

      v24 = v23;

      ++v13;
      if (!v19)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    if (v13 != *(v15 + 16))
    {
      goto LABEL_21;
    }
  }

  *(v0 + 80) = 0;
  v25 = [v60 finish_];
  v26 = *(v0 + 80);
  if (v25)
  {
    v27 = *(v0 + 152);

    v28 = v26;
    v29 = sub_222C942FC();
    v30 = sub_222C94A3C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v61[0] = v32;
      *v31 = 136315650;
      if (qword_280FDDC80 != -1)
      {
        swift_once();
      }

      *(v31 + 4) = sub_222B437C0(qword_280FDDC88, unk_280FDDC90, v61);
      *(v31 + 12) = 2048;
      if (v19)
      {
        v33 = sub_222C94C6C();
      }

      else
      {
        v33 = *(v15 + 16);
      }

      v50 = *(v0 + 176);
      v51 = *(v0 + 152);
      *(v31 + 14) = v33;

      *(v31 + 22) = 2080;
      if (v50)
      {
        v52 = 0xD000000000000010;
      }

      else
      {
        v52 = 0xD000000000000012;
      }

      if (v50)
      {
        v53 = "siriLearnedContact";
      }

      else
      {
        v53 = "picsRuntimeInSiriVocab";
      }

      v54 = sub_222B437C0(v52, v53 | 0x8000000000000000, v61);

      *(v31 + 24) = v54;
      _os_log_impl(&dword_222B39000, v29, v30, "%s Finished registering %ld %s entities.", v31, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v32, -1, -1);
      MEMORY[0x223DCA8C0](v31, -1, -1);
    }

    else
    {
      v49 = *(v0 + 152);
    }
  }

  else
  {
    v36 = v26;
    v35 = sub_222C9342C();

    swift_willThrow();
LABEL_37:

    if (qword_280FDFE78 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v59, qword_280FE2340);
    v37 = v35;
    v38 = sub_222C942FC();
    v39 = sub_222C94A4C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v61[0] = v42;
      *v40 = 136315650;
      if (qword_280FDDC80 != -1)
      {
        swift_once();
      }

      v43 = *(v0 + 176);
      *(v40 + 4) = sub_222B437C0(qword_280FDDC88, unk_280FDDC90, v61);
      *(v40 + 12) = 2080;
      if (v43)
      {
        v44 = 0xD000000000000010;
      }

      else
      {
        v44 = 0xD000000000000012;
      }

      if (v43)
      {
        v45 = "siriLearnedContact";
      }

      else
      {
        v45 = "picsRuntimeInSiriVocab";
      }

      v46 = sub_222B437C0(v44, v45 | 0x8000000000000000, v61);

      *(v40 + 14) = v46;
      *(v40 + 22) = 2112;
      v47 = v35;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 24) = v48;
      *v41 = v48;
      _os_log_impl(&dword_222B39000, v38, v39, "%s Error occured during donating %s %@", v40, 0x20u);
      sub_222BE7324(v41);
      MEMORY[0x223DCA8C0](v41, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x223DCA8C0](v42, -1, -1);
      MEMORY[0x223DCA8C0](v40, -1, -1);
    }

    if (qword_280FDF1F0 != -1)
    {
      swift_once();
    }

    *(v0 + 104) = &type metadata for PIMSFatalError;
    *(v0 + 112) = sub_222BE72D0();
    strcpy((v0 + 80), "PIMSFatalError");
    *(v0 + 95) = -18;
    *(v0 + 96) = 9;
    sub_222C93B5C();

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 80));
  }

  v55 = *(v0 + 8);
  v56 = *MEMORY[0x277D85DE8];

  return v55();
}