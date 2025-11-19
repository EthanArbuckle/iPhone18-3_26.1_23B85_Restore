uint64_t sub_2722D44DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  sub_272376E4C();
  *(v13 + OBJC_IVAR____TtC12VoiceActions20VANRRecognitionEvent_hostTime) = a1;
  v14 = OBJC_IVAR____TtC12VoiceActions20VANRRecognitionEvent_matchedNameId;
  v15 = sub_272376E5C();
  (*(*(v15 - 8) + 32))(v13 + v14, a2, v15);
  *(v13 + OBJC_IVAR____TtC12VoiceActions20VANRRecognitionEvent_matchedEnrollmentIds) = a3;
  *(v13 + OBJC_IVAR____TtC12VoiceActions20VANRRecognitionEvent_debugKeywordSpottedEvent) = a4;
  *(v13 + OBJC_IVAR____TtC12VoiceActions20VANRRecognitionEvent_audioBytes) = a5;
  return v13;
}

uint64_t sub_2722D45E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_272376E5C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void *VANRRecognitionEvent.debugKeywordSpottedEvent.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions20VANRRecognitionEvent_debugKeywordSpottedEvent);
  v2 = v1;
  return v1;
}

uint64_t VANRRecognitionEvent.deinit()
{
  v1 = OBJC_IVAR____TtC12VoiceActions20VANRRecognitionEvent_uuid;
  v2 = sub_272376E5C();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12VoiceActions20VANRRecognitionEvent_matchedNameId, v2);
  v4 = *(v0 + OBJC_IVAR____TtC12VoiceActions20VANRRecognitionEvent_matchedEnrollmentIds);

  v5 = *(v0 + OBJC_IVAR____TtC12VoiceActions20VANRRecognitionEvent_audioBytes);

  return v0;
}

uint64_t VANRRecognitionEvent.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12VoiceActions20VANRRecognitionEvent_uuid;
  v2 = sub_272376E5C();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12VoiceActions20VANRRecognitionEvent_matchedNameId, v2);
  v4 = *(v0 + OBJC_IVAR____TtC12VoiceActions20VANRRecognitionEvent_matchedEnrollmentIds);

  v5 = *(v0 + OBJC_IVAR____TtC12VoiceActions20VANRRecognitionEvent_audioBytes);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t VANRAudioInput.init(buffer:hostTime:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t VANRAudioInput.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_27237820C();
  [v1 frameLength];
  v3 = sub_27237862C();

  MEMORY[0x2743C4AD0](0xD000000000000012, 0x8000000272388F80);
  v4 = sub_27237862C();
  MEMORY[0x2743C4AD0](v4);

  return v3;
}

unint64_t sub_2722D4990()
{
  result = qword_2808829A0;
  if (!qword_2808829A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808829A0);
  }

  return result;
}

unint64_t sub_2722D4A18()
{
  result = qword_2808829B8;
  if (!qword_2808829B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808829B8);
  }

  return result;
}

unint64_t sub_2722D4AA0()
{
  result = qword_2808829D0;
  if (!qword_2808829D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808829D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VAVerifierModelOutput(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for VAVerifierModelOutput(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2722D4BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_272376E5C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_272376EBC();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2722D4D0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_272376E5C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_272376EBC();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_2722D4E34()
{
  sub_272376E5C();
  if (v0 <= 0x3F)
  {
    sub_2722D4ED8();
    if (v1 <= 0x3F)
    {
      sub_272376EBC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2722D4ED8()
{
  if (!qword_2808829E8)
  {
    type metadata accessor for VANRCollectedEnrollment(255);
    v0 = sub_272377BAC();
    if (!v1)
    {
      atomic_store(v0, &qword_2808829E8);
    }
  }
}

uint64_t sub_2722D4F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_272376E5C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2722D5014(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_272376E5C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_2722D50CC()
{
  sub_272376E5C();
  if (v0 <= 0x3F)
  {
    sub_2722D5170();
    if (v1 <= 0x3F)
    {
      sub_2722D51BC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2722D5170()
{
  result = qword_2808829F0;
  if (!qword_2808829F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2808829F0);
  }

  return result;
}

void sub_2722D51BC()
{
  if (!qword_280881708)
  {
    v0 = sub_27237801C();
    if (!v1)
    {
      atomic_store(v0, &qword_280881708);
    }
  }
}

unint64_t sub_2722D528C()
{
  result = sub_272376E5C();
  if (v1 <= 0x3F)
  {
    result = sub_272376EBC();
    if (v2 <= 0x3F)
    {
      result = sub_2722D532C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2722D532C()
{
  result = qword_2808829F8;
  if (!qword_2808829F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2808829F8);
  }

  return result;
}

uint64_t sub_2722D6708()
{
  result = sub_272376E5C();
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

uint64_t dispatch thunk of VANRNameRecognizer.addAudio(input:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_272219D80;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of VANRNameRecognizer.stop()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_272211DBC;

  return v9(a1, a2);
}

uint64_t dispatch thunk of VANRNameRecognizer.prepare()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2722D6BA4;

  return v9(a1, a2);
}

uint64_t sub_2722D6BA4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

unint64_t sub_2722D6CB0()
{
  result = qword_280882A00;
  if (!qword_280882A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882A00);
  }

  return result;
}

unint64_t sub_2722D6D04()
{
  result = qword_280882A08;
  if (!qword_280882A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882A08);
  }

  return result;
}

void __swiftcall AVSConfig.init()(VoiceActions::AVSConfig *__return_ptr retstr)
{
  retstr->rejectEnrollmentThreshold = -25.0;
  *&retstr->minEnrollmentsBeforeRejecting = xmmword_2723836E0;
  *&retstr->maxDuration = xmmword_2723836F0;
  *&retstr->streamingMinimumSilenceFrames = xmmword_272383700;
  retstr->streamingSpeechThreshold = 0.44;
  *&retstr->streamingMinDuration = xmmword_272383710;
  *&retstr->enrollMinimumSilenceFrames = xmmword_272383700;
  retstr->enrollSpeechThreshold = 0.44;
  *&retstr->enrollMinDuration = xmmword_272383720;
  retstr->maxSamplesPerEnrollment = 160000;
}

Swift::Void __swiftcall AVSConfig.setDetectionParams(rejectEnrollmentThreshold:minDuration:maxDuration:)(Swift::Float rejectEnrollmentThreshold, Swift::Int minDuration, Swift::Int maxDuration)
{
  *v3 = rejectEnrollmentThreshold;
  *(v3 + 16) = minDuration;
  *(v3 + 24) = maxDuration;
}

uint64_t sub_2722D6F24(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2722D6F44(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 128) = v3;
  return result;
}

uint64_t sub_2722D6FA4(uint64_t a1, unint64_t a2)
{
  *&v21 = 32;
  *(&v21 + 1) = 0xE100000000000000;
  v20[2] = &v21;

  v5 = sub_2721FF4F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_272204258, v20, a1, a2, v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v24 = MEMORY[0x277D84F90];
    sub_27220056C(0, v6, 0);
    v7 = v24;
    sub_272260218();
    v8 = (v5 + 56);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v21 = *(v8 - 3);
      v22 = v9;
      v23 = v10;
      v11 = sub_2723780CC();
      v24 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        v16 = v11;
        v17 = v12;
        sub_27220056C((v13 > 1), v14 + 1, 1);
        v12 = v17;
        v11 = v16;
        v7 = v24;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      v8 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  *&v21 = v7;
  sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
  sub_272203B18();
  v18 = sub_2723777CC();

  return v18;
}

uint64_t sub_2722D71AC()
{
  v1 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_enableSecondPass;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2722D71F0(char a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_enableSecondPass;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

float sub_2722D72A0()
{
  v1 = v0 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_gain;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_2722D72E8(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_gain);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

uint64_t sub_2722D739C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_asrStringMatchingStrategy;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_2722D73E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_asrStringMatchingStrategy;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2722D749C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_callDelegateOnAsrMismatch;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2722D74E0(char a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_callDelegateOnAsrMismatch;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2722D7590()
{
  v1 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_debugInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_2722D75D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_debugInfo;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id VAFlexibleKeywordSpotter.__allocating_init(delegate:vadGated:verifier:encoder:configuration:strategyProvider:runtimeParametersFactory:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t a7)
{
  v11 = objc_allocWithZone(v7);
  v12 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_verifierModel;
  *&v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_verifierModel] = 0;
  v13 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_encoderModel;
  *&v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_encoderModel] = 0;
  v14 = &v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_strategyProvider];
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0;
  *&v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_previousKeywordTime] = 0;
  *&v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_keywordCallbackDelays] = MEMORY[0x277D84F90];
  *&v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_keywordCallbackDelayMax] = 0;
  *&v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_keywordCallbackDelayMin] = 0;
  *&v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_keywordCallbackDelayAvg] = 0;
  v15 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_asrStringMatchingStrategy;
  type metadata accessor for VAStringMatchingStrategy(0);
  sub_272234394(v31);
  *&v11[v15] = static VAStringMatchingStrategy.build(name:)(v31);
  v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_callDelegateOnAsrMismatch] = 1;
  *&v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_debugInfo] = 0;
  result = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
  if (result)
  {
    *&v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_audioFormat16k] = result;
    *&v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_encodingSet] = MEMORY[0x277D84F90];
    v17 = *&v11[v12];
    *&v11[v12] = a3;

    v18 = *&v11[v13];
    *&v11[v13] = a4;

    sub_27221629C(a6, v31);
    swift_beginAccess();
    sub_2722DD7C8(v31, v14);
    v19 = swift_endAccess();
    v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_vadGated] = a2 & 1;
    v20 = (*((*MEMORY[0x277D85000] & *a5) + 0x118))(v19);
    if (v20)
    {
      v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_enableSecondPass] = *(v20 + 34);
      v21 = *(v20 + 36);
    }

    else
    {
      v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_enableSecondPass] = 0;
      v21 = 1.0;
    }

    *&v11[OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_gain] = v21;
    sub_2721F07F4(a7, &v29, &qword_2808821C8, &qword_272386260);
    if (v30)
    {
      sub_2721F41B4(&v29, v31);
    }

    else
    {
      v22 = type metadata accessor for VARuntimeParametersFactoryDummy();
      v23 = sub_2722043D8();
      v31[3] = v22;
      v31[4] = &protocol witness table for VARuntimeParametersFactoryDummy;
      v31[0] = v23;
      if (v30)
      {
        sub_2721F40F0(&v29, &qword_2808821C8, &qword_272386260);
      }
    }

    v24 = sub_272335390(a1, a5, v31);

    sub_2721F40F0(a7, &qword_2808821C8, &qword_272386260);
    sub_2722039C8(a6);
    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id VAFlexibleKeywordSpotter.init(delegate:vadGated:verifier:encoder:configuration:strategyProvider:runtimeParametersFactory:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t a7)
{
  v11 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_verifierModel;
  *(v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_verifierModel) = 0;
  v12 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_encoderModel;
  *(v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_encoderModel) = 0;
  v13 = v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_strategyProvider;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0;
  *(v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_previousKeywordTime) = 0;
  *(v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_keywordCallbackDelays) = MEMORY[0x277D84F90];
  *(v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_keywordCallbackDelayMax) = 0;
  *(v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_keywordCallbackDelayMin) = 0;
  *(v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_keywordCallbackDelayAvg) = 0;
  v14 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_asrStringMatchingStrategy;
  type metadata accessor for VAStringMatchingStrategy(0);
  sub_272234394(v30);
  *(v7 + v14) = static VAStringMatchingStrategy.build(name:)(v30);
  *(v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_callDelegateOnAsrMismatch) = 1;
  *(v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_debugInfo) = 0;
  result = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
  if (result)
  {
    *(v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_audioFormat16k) = result;
    *(v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_encodingSet) = MEMORY[0x277D84F90];
    v16 = *(v7 + v11);
    *(v7 + v11) = a3;

    v17 = *(v7 + v12);
    *(v7 + v12) = a4;

    sub_27221629C(a6, v30);
    swift_beginAccess();
    sub_2722DD7C8(v30, v13);
    v18 = swift_endAccess();
    *(v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_vadGated) = a2 & 1;
    v19 = (*((*MEMORY[0x277D85000] & *a5) + 0x118))(v18);
    if (v19)
    {
      *(v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_enableSecondPass) = *(v19 + 34);
      v20 = *(v19 + 36);
    }

    else
    {
      *(v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_enableSecondPass) = 0;
      v20 = 1.0;
    }

    *(v7 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_gain) = v20;
    sub_2721F07F4(a7, &v28, &qword_2808821C8, &qword_272386260);
    if (v29)
    {
      sub_2721F41B4(&v28, v30);
    }

    else
    {
      v21 = type metadata accessor for VARuntimeParametersFactoryDummy();
      v22 = sub_2722043D8();
      v30[3] = v21;
      v30[4] = &protocol witness table for VARuntimeParametersFactoryDummy;
      v30[0] = v22;
      if (v29)
      {
        sub_2721F40F0(&v28, &qword_2808821C8, &qword_272386260);
      }
    }

    v23 = sub_272335390(a1, a5, v30);

    sub_2721F40F0(a7, &qword_2808821C8, &qword_272386260);
    sub_2722039C8(a6);
    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2722D7D28()
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
    v4[1] = 0x800000027238EC90;
    return swift_willThrow();
  }
}

unint64_t sub_2722D7E60(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v66 = &v64 - v6;
  v7 = type metadata accessor for VARuntimeParameters();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v67 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v64 - v11;
  v13 = sub_27237728C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2722C389C();
  v19 = *(v14 + 16);
  v73 = v13;
  v19(v17, v18, v13);
  sub_272216374(a1, v12);
  v20 = sub_27237725C();
  v21 = sub_272377EAC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v65 = v1;
    v23 = v22;
    v24 = swift_slowAlloc();
    v64 = a1;
    v25 = v24;
    v70[0] = v24;
    *v23 = 136315138;
    sub_2722DDB30(&qword_2808821A8, type metadata accessor for VARuntimeParameters);
    v26 = sub_27237862C();
    v28 = v27;
    sub_272216BD8(v12);
    v29 = sub_2721FFD04(v26, v28, v70);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_2721E4000, v20, v21, "start Flexibile spotter: %s", v23, 0xCu);
    sub_2722039C8(v25);
    v30 = v25;
    a1 = v64;
    MEMORY[0x2743C69C0](v30, -1, -1);
    v31 = v23;
    v2 = v65;
    MEMORY[0x2743C69C0](v31, -1, -1);
  }

  else
  {

    sub_272216BD8(v12);
  }

  (*(v14 + 8))(v17, v73);
  if ((VARuntimeParameters.allKeywordsAreValid.getter() & 1) == 0)
  {
    v57 = 0x80000002723888A0;
    sub_2722032B4();
    swift_allocError();
    v59 = 0xD00000000000006DLL;
LABEL_16:
    *v58 = v59;
    v58[1] = v57;
    swift_willThrow();
    return v57;
  }

  if (*(v2 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_vadGated) == 1)
  {
    if (*(v2 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_encoderModel))
    {
      type metadata accessor for VAFeatureExtractingEncoder();
      v32 = swift_dynamicCastClass();
      if (v32)
      {
        if (!*(v32 + 64))
        {
          v57 = 0x800000027238B730;
          sub_2722032B4();
          swift_allocError();
          v59 = 0xD00000000000003BLL;
          goto LABEL_16;
        }
      }
    }
  }

  v33 = MEMORY[0x277D85000];
  v34 = (*((*MEMORY[0x277D85000] & *v2) + 0x78))();
  if (!v34)
  {
    v57 = 0x8000000272388910;
    sub_2722032B4();
    swift_allocError();
    v59 = 0xD000000000000011;
    goto LABEL_16;
  }

  v35 = v34;
  type metadata accessor for VARequestContext(0);
  v36 = v67;
  sub_272216374(a1, v67);
  v37 = v35;
  v38 = sub_272232E00(v37, v36);
  (*((*v33 & *v2) + 0x128))(v38);
  v39 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_strategyProvider;
  swift_beginAccess();
  sub_2721F07F4(v2 + v39, &v68, &qword_280882A88, &qword_2723837B0);
  if (!v69)
  {
    sub_2721F40F0(&v68, &qword_280882A88, &qword_2723837B0);
    v57 = 0x800000027238ECB0;
    sub_2722032B4();
    swift_allocError();
    *v61 = 0xD000000000000015;
    v61[1] = 0x800000027238ECB0;
    swift_willThrow();

    return v57;
  }

  sub_2721F41B4(&v68, v70);
  v40 = a1;
  v41 = v71;
  v42 = v72;
  sub_27220300C(v70, v71);
  v43 = (*(v42 + 8))(v2, &protocol witness table for VAKeywordSpotterBase, v40, v41, v42);
  v44 = v2;
  (*((*v33 & *v2) + 0x158))(v43);
  v45 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_encodingSet;
  swift_beginAccess();
  v46 = *(v2 + v45);
  *(v2 + v45) = MEMORY[0x277D84F90];

  v48 = (*((*v33 & *v2) + 0x120))(v47);
  if (!v48)
  {
    v57 = 0x800000027238B430;
    sub_2722032B4();
    swift_allocError();
    *v62 = 0xD00000000000001DLL;
    v62[1] = 0x800000027238B430;
    swift_willThrow();
LABEL_21:

    sub_2722039C8(v70);
    return v57;
  }

  v49 = v48;
  v50 = sub_272377C3C();
  v51 = v66;
  (*(*(v50 - 8) + 56))(v66, 1, 1, v50);
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  v53[2] = 0;
  v53[3] = 0;
  v53[4] = v49;
  v53[5] = v52;

  v54 = sub_272262CC0(0, 0, v51, &unk_2723837C0, v53);
  v55 = (*((*v33 & *v44) + 0x140))(v54);
  v56 = (*((*v33 & *v44) + 0x138))(v55);
  if (!v56)
  {
    v57 = 0x8000000272388930;
    sub_2722032B4();
    swift_allocError();
    *v63 = 0xD00000000000001DLL;
    v63[1] = 0x8000000272388930;
    swift_willThrow();

    goto LABEL_21;
  }

  v57 = v56;

  sub_2722039C8(v70);
  return v57;
}

uint64_t sub_2722D86F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a1;
  v6 = sub_27237728C();
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v9 = type metadata accessor for VARuntimeParameters();
  v5[17] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722D8814, 0, 0);
}

uint64_t sub_2722D8814()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = (**(v0 + 72) + 312);
  v4 = *v3;
  (*v3)();
  v5 = *(v1 + *(v2 + 116));
  sub_272216BD8(v1);
  if (v5 == 1)
  {
    v6 = *(v0 + 128);
    v7 = *(v0 + 88);
    v8 = *(v0 + 96);
    v9 = sub_2722C389C();
    *(v0 + 160) = v9;
    v10 = *(v8 + 16);
    *(v0 + 168) = v10;
    *(v0 + 176) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v6, v9, v7);
    v11 = sub_27237725C();
    v12 = sub_272377E6C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2721E4000, v11, v12, "prepareSpeechAPI() in listeningTask thread start", v13, 2u);
      MEMORY[0x2743C69C0](v13, -1, -1);
    }

    v14 = *(v0 + 128);
    v15 = *(v0 + 88);
    v16 = *(v0 + 96);
    v17 = *(v0 + 80);

    v18 = *(v16 + 8);
    *(v0 + 184) = v18;
    v18(v14, v15);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 192) = Strong;
    if (Strong)
    {
      v20 = Strong;
      v21 = *(v0 + 144);
      v22 = *(v0 + 72);
      v4();
      v23 = *((*MEMORY[0x277D85000] & *v20) + 0x268);
      v55 = (v23 + *v23);
      v24 = v23[1];
      v25 = swift_task_alloc();
      *(v0 + 200) = v25;
      *v25 = v0;
      v25[1] = sub_2722D8D58;
      v26 = *(v0 + 144);

      return v55(v26);
    }

    v28 = *(v0 + 176);
    (*(v0 + 168))(*(v0 + 120), *(v0 + 160), *(v0 + 88));
    v29 = sub_27237725C();
    v30 = sub_272377E6C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2721E4000, v29, v30, "prepareSpeechAPI() in listeningTask thread finish", v31, 2u);
      MEMORY[0x2743C69C0](v31, -1, -1);
    }

    v32 = *(v0 + 184);
    v33 = *(v0 + 120);
    v34 = *(v0 + 88);
    v35 = *(v0 + 96);

    v32(v33, v34);
  }

  v36 = *(v0 + 80);
  swift_beginAccess();
  v37 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 216) = v37;
  if (v37)
  {
    v38 = swift_task_alloc();
    *(v0 + 224) = v38;
    *v38 = v0;
    v38[1] = sub_2722D9164;

    return sub_2722DDB78();
  }

  else
  {
    v39 = *(v0 + 112);
    v40 = *(v0 + 88);
    v41 = *(v0 + 96);
    v42 = sub_2722C389C();
    (*(v41 + 16))(v39, v42, v40);
    v43 = sub_27237725C();
    v44 = sub_272377E6C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2721E4000, v43, v44, "startProcessingAudio() is done", v45, 2u);
      MEMORY[0x2743C69C0](v45, -1, -1);
    }

    v47 = *(v0 + 144);
    v46 = *(v0 + 152);
    v49 = *(v0 + 120);
    v48 = *(v0 + 128);
    v50 = *(v0 + 112);
    v56 = *(v0 + 104);
    v51 = *(v0 + 88);
    v52 = *(v0 + 96);
    v53 = *(v0 + 64);

    (*(v52 + 8))(v50, v51);
    *v53 = 1;

    v54 = *(v0 + 8);

    return v54();
  }
}

uint64_t sub_2722D8D58()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 192);
  sub_272216BD8(*(v2 + 144));

  if (v0)
  {
    v6 = sub_2722D95E0;
  }

  else
  {
    v6 = sub_2722D8EA4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2722D8EA4()
{
  v1 = *(v0 + 176);
  (*(v0 + 168))(*(v0 + 120), *(v0 + 160), *(v0 + 88));
  v2 = sub_27237725C();
  v3 = sub_272377E6C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2721E4000, v2, v3, "prepareSpeechAPI() in listeningTask thread finish", v4, 2u);
    MEMORY[0x2743C69C0](v4, -1, -1);
  }

  v5 = *(v0 + 184);
  v6 = *(v0 + 120);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);

  v5(v6, v7);
  v9 = *(v0 + 80);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 216) = Strong;
  if (Strong)
  {
    v11 = swift_task_alloc();
    *(v0 + 224) = v11;
    *v11 = v0;
    v11[1] = sub_2722D9164;

    return sub_2722DDB78();
  }

  else
  {
    v13 = *(v0 + 112);
    v14 = *(v0 + 88);
    v15 = *(v0 + 96);
    v16 = sub_2722C389C();
    (*(v15 + 16))(v13, v16, v14);
    v17 = sub_27237725C();
    v18 = sub_272377E6C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2721E4000, v17, v18, "startProcessingAudio() is done", v19, 2u);
      MEMORY[0x2743C69C0](v19, -1, -1);
    }

    v21 = *(v0 + 144);
    v20 = *(v0 + 152);
    v23 = *(v0 + 120);
    v22 = *(v0 + 128);
    v24 = *(v0 + 112);
    v29 = *(v0 + 104);
    v25 = *(v0 + 88);
    v26 = *(v0 + 96);
    v27 = *(v0 + 64);

    (*(v26 + 8))(v24, v25);
    *v27 = 1;

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_2722D9164()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v6 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = sub_2722D93F8;
  }

  else
  {

    v4 = sub_2722D9280;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2722D9280()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
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

  v9 = v0[18];
  v8 = v0[19];
  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[14];
  v18 = v0[13];
  v13 = v0[11];
  v14 = v0[12];
  v15 = v0[8];

  (*(v14 + 8))(v12, v13);
  *v15 = 1;

  v16 = v0[1];

  return v16();
}

uint64_t sub_2722D93F8()
{
  v1 = *(v0 + 232);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 88);
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

  v14 = *(v0 + 144);
  v13 = *(v0 + 152);
  v16 = *(v0 + 120);
  v15 = *(v0 + 128);
  v18 = *(v0 + 104);
  v17 = *(v0 + 112);
  v19 = v7;
  v21 = *(v0 + 88);
  v20 = *(v0 + 96);

  (*(v20 + 8))(v18, v21);
  swift_willThrow();

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_2722D95E0()
{
  v1 = v0[26];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
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

  v14 = v0[18];
  v13 = v0[19];
  v16 = v0[15];
  v15 = v0[16];
  v18 = v0[13];
  v17 = v0[14];
  v19 = v7;
  v21 = v0[11];
  v20 = v0[12];

  (*(v20 + 8))(v18, v21);
  swift_willThrow();

  v22 = v0[1];

  return v22();
}

uint64_t sub_2722D97C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_verifierModel);

  v2 = *(v0 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_encoderModel);

  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_strategyProvider, &qword_280882A88, &qword_2723837B0);
  v3 = *(v0 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_keywordCallbackDelays);

  v4 = *(v0 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_asrStringMatchingStrategy);

  v5 = *(v0 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_debugInfo);

  v6 = *(v0 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_encodingSet);
}

id VAFlexibleKeywordSpotter.__deallocating_deinit()
{
  v1 = v0;
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2722C389C();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_27237725C();
  v9 = sub_272377E7C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2721E4000, v8, v9, "deInit FlexibleSpotter", v10, 2u);
    MEMORY[0x2743C69C0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = type metadata accessor for VAFlexibleKeywordSpotter();
  v13.receiver = v1;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

uint64_t sub_2722D9ACC(uint64_t result)
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

  result = sub_27222B82C(result, v12, 1, v3);
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

  memcpy((v3 + 2 * v8 + 32), (v6 + 32), 2 * v2);

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

void *sub_2722D9BB8(void *a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_encodingSet;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = MEMORY[0x277D84F90];

  v5 = *(v1 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_verifierModel);
  *(v1 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_verifierModel) = 0;

  v6 = *(v1 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_encoderModel);
  *(v1 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_encoderModel) = 0;

  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v7 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_strategyProvider;
  swift_beginAccess();
  sub_2722DD7C8(v9, v1 + v7);
  swift_endAccess();
  (*((*MEMORY[0x277D85000] & *v1) + 0x158))(0);
  return sub_272338DD4(a1);
}

void sub_2722D9CD8(void *a1, uint64_t a2)
{
  v5 = *((*MEMORY[0x277D85000] & *v2) + 0x3E0);
  if (v5() != 1.0)
  {
    v6 = v5();
    sub_272254228(v6);
  }

  sub_272337680(a1, a2);
}

uint64_t sub_2722D9D90(uint64_t a1)
{
  v2 = v1;
  v316 = a1;
  v301 = sub_272376D5C();
  v300 = *(v301 - 8);
  v3 = *(v300 + 64);
  MEMORY[0x28223BE20](v301);
  v299 = &v278 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_272376DFC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v297 = &v278 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v298 = &v278 - v10;
  v11 = sub_27237728C();
  v315 = *(v11 - 8);
  v12 = *(v315 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v302 = &v278 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v296 = &v278 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v326 = &v278 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v328 = &v278 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v327 = &v278 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v325 = &v278 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v304 = &v278 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v322 = &v278 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v305 = &v278 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v319 = &v278 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v303 = &v278 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v318 = &v278 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v321 = &v278 - v38;
  MEMORY[0x28223BE20](v37);
  v324 = &v278 - v39;
  v40 = sub_272376EBC();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  v44 = &v278 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for VARuntimeParameters();
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v278 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v47);
  v52 = &v278 - v51;
  v53 = MEMORY[0x277D85000];
  v54 = (*((*MEMORY[0x277D85000] & *v1) + 0x120))(v50);
  if (!v54)
  {
    v80 = sub_2722C389C();
    v81 = v315;
    v82 = v328;
    (*(v315 + 16))(v328, v80, v11);
    v83 = sub_27237725C();
    v84 = sub_272377E8C();
    v85 = v11;
    v86 = v81;
    if (os_log_type_enabled(v83, v84))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_2721E4000, v83, v84, "Did not have runtimeParameters for second pass in keywordSpotterShouldTriggerKeyword", v87, 2u);
      MEMORY[0x2743C69C0](v87, -1, -1);
    }

    return (*(v86 + 8))(v82, v85);
  }

  v312 = v11;
  (*(*v54 + 312))(v54);

  v55 = sub_2722164B8(v49, v52);
  v56 = v53;
  v57 = *((*v53 & *v1) + 0x3F8);
  v314 = (*v53 & *v1) + 1016;
  v313 = v57;
  v58 = v57(v55);
  (*(v41 + 16))(v44, v52 + *(v45 + 108), v40);
  (*(*v58 + 264))(v44);

  v59 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_encodingSet;
  swift_beginAccess();
  v60 = *(v2 + v59);
  *(v2 + v59) = MEMORY[0x277D84F90];

  v62 = v316;
  v63 = (*(*v316 + 208))(&v330, v61);
  v335 = v330;
  v336 = v331;
  v337 = v332;
  v338 = v333;
  v339 = v334;
  v64 = *(&v330 + 1);
  if (!*(&v330 + 1))
  {
    v89 = sub_2722C389C();
    v90 = v315;
    v91 = v327;
    v92 = v312;
    (*(v315 + 16))(v327, v89, v312);
    v93 = sub_27237725C();
    v94 = sub_272377E8C();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_2721E4000, v93, v94, "Did not actually have a keyword in keywordSpotterShouldTriggerKeyword", v95, 2u);
      MEMORY[0x2743C69C0](v95, -1, -1);
    }

    (*(v90 + 8))(v91, v92);
    return sub_272216BD8(v52);
  }

  v65 = v45;
  v66 = v335;
  v67 = *&v336;
  v68 = (*((*v56 & *v2) + 0x3C8))(v63);
  v69 = v312;
  if ((v68 & 1) == 0)
  {
    sub_2721F40F0(&v335, &qword_2808819E0, &qword_27237D890);
    sub_27233A25C(v62);
    return sub_272216BD8(v52);
  }

  v289 = v66;
  v70 = *(*v62 + 128);
  v71 = *v62 + 128;
  v288._rawValue = v70();
  if (!v288._rawValue)
  {
    sub_2721F40F0(&v335, &qword_2808819E0, &qword_27237D890);
    v96 = sub_2722C389C();
    v97 = v325;
    (*(v315 + 16))(v325, v96, v69);
    v98 = sub_27237725C();
    v99 = sub_272377E8C();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&dword_2721E4000, v98, v99, "Did not have audioBytes for second pass in keywordSpotterShouldTriggerKeyword", v100, 2u);
      MEMORY[0x2743C69C0](v100, -1, -1);
    }

    (*(v315 + 8))(v97, v69);
    return sub_272216BD8(v52);
  }

  v290 = v64;

  v284 = mach_absolute_time();
  v72 = swift_allocObject();
  sub_2722A2540(v72 + 16);
  v73 = swift_allocObject();
  v287 = v73;
  *(v73 + 16) = 0;
  v285 = (v73 + 16);
  v74 = *(v52 + 121) == 1;
  v283 = v71;
  v320 = v65;
  if (v74)
  {
    v75 = *(v52 + 80);
    v76 = v289;
    if (!*(v75 + 16))
    {
      goto LABEL_24;
    }

    v77 = sub_27220038C(v289, v290);
    if ((v78 & 1) == 0)
    {
      goto LABEL_24;
    }

    v79 = *(*(v75 + 56) + 8 * v77);
  }

  else
  {
    v101 = VARuntimeParameters.asrMatchToKeywords()();
    v102 = v101;
    v76 = *(v101 + 16);
    if (!v76)
    {

      v79 = MEMORY[0x277D84F90];
      goto LABEL_26;
    }

    v79 = sub_2722702A8(*(v101 + 16), 0);
    v103 = sub_2722DD9D8(&v330, (v79 + 32), v76, v102);
    sub_272270484();
    if (v103 != v76)
    {
      __break(1u);
LABEL_24:
      sub_2721F065C(&qword_280881860, &unk_27237C340);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_27237AF80;
      *(v79 + 32) = v76;
      *(v79 + 40) = v290;
    }
  }

LABEL_26:
  v282 = v70;

  v104 = mach_absolute_time();
  isa = convert(int16AudioBytes:)(v288).super.super.isa;
  v106 = v79;
  (*((*MEMORY[0x277D85000] & *v2) + 0x260))(&v330, isa, v79, v52);
  v309 = v2;
  v294 = v79;
  v286 = v72;
  v281 = 0;

  v107 = *(&v330 + 1);
  v108 = v331;
  v109 = v332;
  v110 = *(v72 + 24);
  v111 = *(v72 + 32);
  v308 = v330;
  *(v72 + 16) = v330;
  *(v72 + 24) = v107;
  *(v72 + 32) = v108;
  *(v72 + 48) = v109;
  v317 = v108;

  v323 = v107;

  type metadata accessor for VARequestContext(0);
  v112 = mach_absolute_time();
  v113 = v112 >= v104;
  v114 = v112 - v104;
  if (!v113)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v107 = v106;
  v115 = sub_2722310BC(v114);
  v116 = sub_2722C389C();
  v117 = *(v315 + 16);
  v118 = v324;
  v326 = v116;
  v328 = (v315 + 16);
  v327 = v117;
  (v117)(v324);
  v119 = sub_27237725C();
  v120 = sub_272377E6C();
  v121 = os_log_type_enabled(v119, v120);
  v122 = v316;
  if (v121)
  {
    v123 = swift_slowAlloc();
    *v123 = 134217984;
    *(v123 + 4) = v115;
    _os_log_impl(&dword_2721E4000, v119, v120, "Second pass took %f secs", v123, 0xCu);
    MEMORY[0x2743C69C0](v123, -1, -1);
  }

  v124 = *(v315 + 8);
  v325 = (v315 + 8);
  v324 = v124;
  (v124)(v118, v69);
  v125 = *(*v122 + 504);
  v280 = *v122 + 504;
  v279 = v125;
  v125(1);
  (*(*v122 + 552))(COERCE_DOUBLE(*&v115), 0);
  v126 = v323;
  v127 = v322;
  if (!v323)
  {

    v151 = v290;

    (v327)(v127, v326, v69);

    v152 = sub_27237725C();
    v153 = sub_272377E6C();
    sub_2721F40F0(&v335, &qword_2808819E0, &qword_27237D890);
    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      *&v330 = v155;
      *v154 = 136315138;

      v156 = sub_2721FFD04(v289, v151, &v330);

      *(v154 + 4) = v156;
      v122 = v316;
      _os_log_impl(&dword_2721E4000, v152, v153, "Checker failed for keyword %s", v154, 0xCu);
      sub_2722039C8(v155);
      MEMORY[0x2743C69C0](v155, -1, -1);
      v157 = v154;
      v107 = v294;
      MEMORY[0x2743C69C0](v157, -1, -1);

      v158 = v322;
    }

    else
    {

      v158 = v127;
    }

    (v324)(v158, v69);
    rawValue = v288._rawValue;
    v217 = v284;
    v218 = v285;
    *v285 = 1;
    goto LABEL_83;
  }

  v128 = *(*v122 + 480);

  v128(v308, v126);
  v129 = v317;
  *&v330 = v317;
  sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
  sub_272203B18();
  v130 = sub_2723777CC();
  result = (*(*v122 + 528))(v130);
  v131 = *(v52 + *(v320 + 112));
  if ((v131 & 0x8000000000000000) == 0)
  {
    v278 = isa;
    v132 = *(v129 + 16);
    if (v132 >= v131)
    {
      v132 = v131;
    }

    v133 = 2 * v132;
    if (v131)
    {
      v134 = v133 + 1;
    }

    else
    {
      v134 = 1;
    }

    v135 = sub_2722E0970(v129 + 32, 0, v134);
    swift_unknownObjectRelease();
    v136 = v321;
    (v327)(v321, v326, v69);
    v107 = v294;

    v137 = sub_27237725C();
    v138 = sub_272377E8C();

    v139 = os_log_type_enabled(v137, v138);
    v307 = v135;
    if (v139)
    {
      v140 = swift_slowAlloc();
      LODWORD(v322) = v138;
      v141 = v140;
      v142 = swift_slowAlloc();
      *&v330 = v142;
      *v141 = 136315394;
      v143 = MEMORY[0x2743C4C60](v107, MEMORY[0x277D837D0]);
      v145 = sub_2721FFD04(v143, v144, &v330);

      *(v141 + 4) = v145;
      v2 = v309;
      *(v141 + 12) = 2080;
      v146 = sub_272377D9C();
      v148 = sub_2721FFD04(v146, v147, &v330);
      v126 = v323;

      *(v141 + 14) = v148;
      _os_log_impl(&dword_2721E4000, v137, v322, "ASR string matching looking for needles: %s in haystacks: %s", v141, 0x16u);
      swift_arrayDestroy();
      v149 = v142;
      v122 = v316;
      MEMORY[0x2743C69C0](v149, -1, -1);
      MEMORY[0x2743C69C0](v141, -1, -1);

      v150 = v321;
    }

    else
    {

      v150 = v136;
    }

    (v324)(v150, v69);
    v111 = v305;
    v160 = v319;
    v161 = v318;
    v292 = *(v107 + 16);
    if (v292)
    {
      v162 = 0;
      v104 = v307;
      v311 = v307 + 56;
      v291 = v107 + 32;
      *&v159 = 136315394;
      v306 = v159;
      v293 = v52;
      while (v162 < *(v107 + 16))
      {
        v163 = (v291 + 16 * v162);
        v164 = v163[1];
        v320 = *v163;
        v295 = v162 + 1;
        v165 = 1 << *(v104 + 32);
        if (v165 < 64)
        {
          v166 = ~(-1 << v165);
        }

        else
        {
          v166 = -1;
        }

        v107 = v166 & *(v104 + 56);
        v167 = (v165 + 63) >> 6;

        v317 = v164;

        v168 = 0;
        for (i = v167; ; v167 = i)
        {
          if (!v107)
          {
            v111 = v317;
            while (1)
            {
              v52 = v168 + 1;
              if (__OFADD__(v168, 1))
              {
                break;
              }

              if (v52 >= v167)
              {

                v52 = v293;
                v122 = v316;
                v107 = v294;
                v111 = v305;
                goto LABEL_45;
              }

              v107 = *(v311 + 8 * v52);
              ++v168;
              if (v107)
              {
                goto LABEL_58;
              }
            }

            __break(1u);
            goto LABEL_110;
          }

          v52 = v168;
          v111 = v317;
LABEL_58:
          v169 = (*(v104 + 48) + ((v52 << 10) | (16 * __clz(__rbit64(v107)))));
          v170 = v169[1];
          v321 = *v169;
          (v327)(v161, v326, v69);

          v322 = v170;

          v171 = v161;
          v172 = sub_27237725C();
          v173 = sub_272377E6C();

          if (os_log_type_enabled(v172, v173))
          {
            v174 = swift_slowAlloc();
            v175 = swift_slowAlloc();
            *&v330 = v175;
            *v174 = v306;
            v176 = v320;
            *(v174 + 4) = sub_2721FFD04(v320, v111, &v330);
            *(v174 + 12) = 2080;
            *(v174 + 14) = sub_2721FFD04(v308, v126, &v330);
            _os_log_impl(&dword_2721E4000, v172, v173, "Looking for %s in %s", v174, 0x16u);
            swift_arrayDestroy();
            v177 = v175;
            v69 = v312;
            MEMORY[0x2743C69C0](v177, -1, -1);
            v178 = v174;
            v160 = v319;
            MEMORY[0x2743C69C0](v178, -1, -1);

            v179 = (v324)(v171, v69);
          }

          else
          {

            v179 = (v324)(v171, v69);
            v176 = v320;
          }

          v2 = v309;
          v180 = v313(v179);
          v181 = (*(*v180 + 280))(v176, v111, v321, v322);

          if (v181)
          {
            break;
          }

          v107 &= v107 - 1;
          (v327)(v160, v326, v69);
          v126 = v323;

          v182 = sub_27237725C();
          v183 = sub_272377E7C();

          if (os_log_type_enabled(v182, v183))
          {
            v184 = swift_slowAlloc();
            v185 = swift_slowAlloc();
            *&v330 = v185;
            *v184 = v306;
            *(v184 + 4) = sub_2721FFD04(v320, v111, &v330);
            *(v184 + 12) = 2080;
            *(v184 + 14) = sub_2721FFD04(v308, v323, &v330);
            _os_log_impl(&dword_2721E4000, v182, v183, "Checker did not match keyword %s in %s", v184, 0x16u);
            swift_arrayDestroy();
            v186 = v185;
            v160 = v319;
            MEMORY[0x2743C69C0](v186, -1, -1);
            v187 = v184;
            v126 = v323;
            MEMORY[0x2743C69C0](v187, -1, -1);
          }

          (v324)(v160, v69);
          v168 = v52;
          v161 = v318;
          v104 = v307;
        }

        v188 = v303;
        (v327)(v303, v326, v69);
        v189 = v290;

        v126 = v323;

        v190 = sub_27237725C();
        v191 = sub_272377E6C();

        if (os_log_type_enabled(v190, v191))
        {
          v192 = swift_slowAlloc();
          v193 = swift_slowAlloc();
          *&v330 = v193;
          *v192 = v306;
          *(v192 + 4) = sub_2721FFD04(v289, v189, &v330);
          *(v192 + 12) = 2080;
          *(v192 + 14) = sub_2721FFD04(v308, v323, &v330);
          _os_log_impl(&dword_2721E4000, v190, v191, "Checker matched for keyword %s, got %s", v192, 0x16u);
          swift_arrayDestroy();
          v194 = v193;
          v160 = v319;
          MEMORY[0x2743C69C0](v194, -1, -1);
          v195 = v192;
          v126 = v323;
          MEMORY[0x2743C69C0](v195, -1, -1);
        }

        (v324)(v188, v69);
        v52 = v293;
        v107 = v294;
        v111 = v305;
        v196 = VARuntimeParameters.asrMatchToKeywords()();
        if (*(v196 + 16))
        {
          v197 = sub_27220038C(v320, v317);
          v199 = v198;

          if (v199)
          {
            v200 = (*(v196 + 56) + 16 * v197);
            v202 = *v200;
            v201 = v200[1];

            v203 = v201;
            v204 = v202;
            v107 = v294;
          }

          else
          {

            v204 = 0;
            v203 = 0;
          }

          v122 = v316;
          v111 = v305;
        }

        else
        {

          v204 = 0;
          v203 = 0;
          v122 = v316;
        }

        (*(*v122 + 576))(v204, v203);
        v279(0);
        v104 = v307;

        v161 = v318;
LABEL_45:
        v162 = v295;
        if (v295 == v292)
        {
          goto LABEL_73;
        }
      }

LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

LABEL_73:

    v206 = (*(*v122 + 496))(v205);
    v207 = v278;
    if (v206 == 2 || (v206 & 1) != 0)
    {
      (v327)(v111, v326, v69);
      v208 = v290;

      v209 = sub_27237725C();
      v210 = sub_272377E8C();

      if (os_log_type_enabled(v209, v210))
      {
        v211 = swift_slowAlloc();
        v212 = swift_slowAlloc();
        *&v330 = v212;
        *v211 = 136315394;
        v213 = sub_2721FFD04(v289, v208, &v330);

        *(v211 + 4) = v213;
        *(v211 + 12) = 2080;
        v214 = sub_2721FFD04(v308, v126, &v330);

        *(v211 + 14) = v214;
        _os_log_impl(&dword_2721E4000, v209, v210, "Checker mismatch for keyword %s, got %s", v211, 0x16u);
        swift_arrayDestroy();
        v122 = v316;
        MEMORY[0x2743C69C0](v212, -1, -1);
        MEMORY[0x2743C69C0](v211, -1, -1);

        v215 = v305;
      }

      else
      {

        v215 = v111;
      }

      (v324)(v215, v69);
      v107 = v294;
    }

    else
    {
    }

    v218 = v285;
    rawValue = v288._rawValue;
    v217 = v284;
LABEL_83:
    sub_2722DC840(v217, rawValue, v287, v286);

    v219 = swift_beginAccess();
    if (*v218 == 1)
    {

      sub_2721F40F0(&v335, &qword_2808819E0, &qword_27237D890);
LABEL_108:
      sub_272216BD8(v52);
    }

    v220 = MEMORY[0x277D85000];
    v221 = (*((*MEMORY[0x277D85000] & *v2) + 0x428))(v219);
    if (!v221)
    {
      sub_2721F40F0(&v335, &qword_2808819E0, &qword_27237D890);

LABEL_101:
      v265 = v304;
      if (((*((*MEMORY[0x277D85000] & *v309) + 0x410))(v247) & 1) != 0 || (v266 = (*(*v122 + 496))(), v266 == 2) || (v266 & 1) == 0)
      {
        sub_27233A25C(v122);
      }

      else
      {
        v267 = sub_2722C389C();
        v268 = v315;
        (*(v315 + 16))(v265, v267, v69);

        v269 = sub_27237725C();
        v270 = sub_272377E6C();

        if (os_log_type_enabled(v269, v270))
        {
          v271 = swift_slowAlloc();
          v272 = swift_slowAlloc();
          v273 = v122;
          v274 = v272;
          *&v330 = v272;
          *v271 = 136315138;
          v329 = v273;
          type metadata accessor for VAInstrumentedKeywordResult();
          sub_2722DDB30(&qword_280882A98, type metadata accessor for VAInstrumentedKeywordResult);
          v275 = sub_27237862C();
          v277 = sub_2721FFD04(v275, v276, &v330);

          *(v271 + 4) = v277;
          _os_log_impl(&dword_2721E4000, v269, v270, "ASR mismatch, will not call delegate for %s", v271, 0xCu);
          sub_2722039C8(v274);
          MEMORY[0x2743C69C0](v274, -1, -1);
          MEMORY[0x2743C69C0](v271, -1, -1);
        }

        (*(v268 + 8))(v265, v69);
      }

      goto LABEL_108;
    }

    v111 = v221;
    type metadata accessor for VANRDebugEvent(0);
    v222 = v122;
    v223 = sub_2723129A8();
    *&v330 = v107;
    sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
    sub_272203B18();
    v224 = sub_2723777CC();
    v226 = v225;

    v227 = (*(*v223 + 216))(v224, v226);
    v228 = (*(*v222 + 520))(v227);
    (*(*v223 + 240))(v228);
    v229 = *(*v223 + 168);
    v230 = v290;

    v231 = v229(v289, v230);
    (*(*v223 + 192))(v231, v67);
    v232 = sub_2721F40F0(&v335, &qword_2808819E0, &qword_27237D890);
    v233 = (*(*v222 + 496))(v232);
    v234 = (*(*v223 + 288))((v233 != 2) & (v233 ^ 1u));
    (v282)(v234);
    v235 = v298;
    v107 = v281;
    (*((*v220 & *v2) + 0x488))();
    if (v107)
    {

      v236 = sub_2722C389C();
      v237 = v296;
      (*(v315 + 16))(v296, v236, v69);
      v238 = v107;
      v239 = sub_27237725C();
      v240 = sub_272377E8C();

      v241 = os_log_type_enabled(v239, v240);
      v2 = v302;
      if (v241)
      {
        v242 = swift_slowAlloc();
        v243 = swift_slowAlloc();
        *v242 = 138412290;
        v244 = v107;
        v245 = _swift_stdlib_bridgeErrorToNSError();
        *(v242 + 4) = v245;
        *v243 = v245;
        _os_log_impl(&dword_2721E4000, v239, v240, "Could not save debug audio: %@", v242, 0xCu);
        sub_2721F40F0(v243, &qword_280881A40, &unk_27237D620);
        MEMORY[0x2743C69C0](v243, -1, -1);
        v246 = v242;
        v237 = v296;
        MEMORY[0x2743C69C0](v246, -1, -1);
      }

      else
      {
      }

      v248 = v297;
      (*(v315 + 8))(v237, v69);
      v107 = 0;
    }

    else
    {

      (*(*v223 + 264))(v235);
      v2 = v302;
      v248 = v297;
    }

    sub_272376DEC();
    (*(*v223 + 144))(v248);
    v249 = *(*v111 + 152);

    v104 = v249(&v330);
    v251 = v250;
    MEMORY[0x2743C4C30]();
    if (*((*v251 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v251 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_94:
      sub_272377B7C();
      v252 = (v104)(&v330, 0);
      v253 = (*(*v111 + 136))(v252);
      v254 = sub_2722DCB08(0x14uLL, v253);
      v255 = (*(*v111 + 144))(v254);
      v256 = v299;
      sub_272318968(v255);
      (*(*v111 + 312))(v256);
      if (v107)
      {
        (*(v300 + 8))(v256, v301);
        v257 = sub_2722C389C();
        (*(v315 + 16))(v2, v257, v69);
        v258 = v107;
        v259 = sub_27237725C();
        v260 = sub_272377E8C();

        if (os_log_type_enabled(v259, v260))
        {
          v261 = swift_slowAlloc();
          v262 = swift_slowAlloc();
          *v261 = 138412290;
          v263 = v107;
          v264 = _swift_stdlib_bridgeErrorToNSError();
          *(v261 + 4) = v264;
          *v262 = v264;
          _os_log_impl(&dword_2721E4000, v259, v260, "Could not save debugInfo: %@", v261, 0xCu);
          sub_2721F40F0(v262, &qword_280881A40, &unk_27237D620);
          MEMORY[0x2743C69C0](v262, -1, -1);
          MEMORY[0x2743C69C0](v261, -1, -1);
        }

        else
        {
        }

        v247 = (*(v315 + 8))(v2, v69);
      }

      else
      {
        (*(v300 + 8))(v256, v301);
      }

      v122 = v316;
      goto LABEL_101;
    }

LABEL_112:
    sub_272377B2C();
    goto LABEL_94;
  }

  __break(1u);
  return result;
}

unint64_t sub_2722DC840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_27237728C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VARequestContext(0);
  v13 = mach_absolute_time();
  v14 = v13 >= a1;
  result = v13 - a1;
  if (v14)
  {
    v16 = sub_2722310BC(result);
    v17 = sub_2722C389C();
    (*(v9 + 16))(v12, v17, v8);

    v18 = sub_27237725C();
    v19 = sub_272377E6C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 134218754;
      *(v20 + 4) = (*(a2 + 16) / 16000.0);
      *(v20 + 12) = 2048;
      *(v20 + 14) = v16;
      *(v20 + 22) = 1024;
      swift_beginAccess();
      *(v20 + 24) = *(a3 + 16);

      *(v20 + 28) = 2080;
      swift_beginAccess();
      if (*(a4 + 24))
      {
        v22 = *(a4 + 16);
        v23 = *(a4 + 24);
      }

      else
      {
        v23 = 0xE500000000000000;
        v22 = 0x3E6C696E3CLL;
      }

      v24 = sub_2721FFD04(v22, v23, &v26);

      *(v20 + 30) = v24;
      _os_log_impl(&dword_2721E4000, v18, v19, "Second pass for %f secs took %f secs, didFail %{BOOL}d, result %s", v20, 0x26u);
      sub_2722039C8(v21);
      MEMORY[0x2743C69C0](v21, -1, -1);
      MEMORY[0x2743C69C0](v20, -1, -1);
    }

    else
    {
    }

    return (*(v9 + 8))(v12, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2722DCB08(unint64_t a1, unint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_28:
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = a1;
    if (!a1)
    {
LABEL_26:

      return MEMORY[0x277D84F90];
    }

    v21 = MEMORY[0x277D84F90];
    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (!(a2 >> 62))
    {
      if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) < a1)
      {
        v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_27237829C();
      v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_7;
      }

      goto LABEL_30;
    }
  }

  sub_2723783AC();
  sub_27237829C();
  v6 = sub_2723783AC();
  if (v6)
  {
LABEL_7:
    v7 = 0;
    v19 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2743C5370](v7, v2);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }
      }

      else
      {
        if (v7 >= *(v4 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        v8 = *(v2 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_25;
        }
      }

      v10 = v21;
      if (*(v21 + 16) >= v3)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2722DD7B4(v21);
          v10 = result;
          v21 = result;
        }

        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        if (v19 >= *(v10 + 16))
        {
          goto LABEL_41;
        }

        v13 = v10 + 8 * v19;
        v14 = *(v13 + 32);
        *(v13 + 32) = v8;

        sub_27237827C();
        if ((v19 + 1) < v3)
        {
          v15 = v19 + 1;
        }

        else
        {
          v15 = 0;
        }

        v19 = v15;
        v7 = v9;
        if (v9 == v6)
        {
          goto LABEL_31;
        }
      }

      else
      {
        sub_27237826C();
        v11 = *(v21 + 16);
        sub_2723782BC();
        sub_2723782CC();
        sub_27237827C();
        ++v7;
        if (v9 == v6)
        {
          goto LABEL_31;
        }
      }
    }
  }

LABEL_30:
  v19 = 0;
LABEL_31:

  if (!v19)
  {
    return v21;
  }

  v20 = MEMORY[0x277D84F90];
  v16 = *(v21 + 16);
  result = sub_27237829C();
  if (v16 < v19)
  {
    __break(1u);
  }

  else
  {
    v17 = *(v21 + 16);
    if (v17 >= v19 && v17 >= v16)
    {

      sub_2722DD678(v18, v21 + 32, v19, (2 * v16) | 1);
      sub_2722DD678(v21, v21 + 32, 0, (2 * v19) | 1);
      return v20;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

void sub_2722DCD90(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v86[36] = *MEMORY[0x277D85DE8];
  v3 = sub_27237728C();
  v83 = *(v3 - 8);
  v4 = *(v83 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_272376DFC();
  v81 = *(v7 - 8);
  v82 = v7;
  v8 = *(v81 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_272376C7C();
  v80 = *(v84 - 8);
  v11 = *(v80 + 64);
  MEMORY[0x28223BE20](v84);
  v79 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v73 - v15;
  v17 = sub_272376D5C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v78 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v73 - v22;
  v76 = a1;
  if (!a1)
  {
    v63 = v17;
    v64 = sub_2722C389C();
    v65 = v83;
    (*(v83 + 16))(v6, v64, v3);
    v66 = sub_27237725C();
    v67 = sub_272377E8C();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_2721E4000, v66, v67, "No audio bytes to write", v68, 2u);
      MEMORY[0x2743C69C0](v68, -1, -1);
    }

    (*(v65 + 8))(v6, v3);
    (*(v18 + 56))(v77, 1, 1, v63);
    goto LABEL_18;
  }

  sub_2721F065C(&qword_280881A58, &unk_272382730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27237AFA0;
  v25 = *MEMORY[0x277CB8280];
  *(inited + 32) = sub_27237782C();
  *(inited + 40) = v26;
  *(inited + 72) = MEMORY[0x277D84CC0];
  *(inited + 48) = 1819304813;
  v27 = *MEMORY[0x277CB8288];
  *(inited + 80) = sub_27237782C();
  *(inited + 88) = v28;
  v29 = MEMORY[0x277D83B88];
  *(inited + 120) = MEMORY[0x277D83B88];
  *(inited + 96) = 16;
  v30 = *MEMORY[0x277CB82A0];
  v31 = sub_27237782C();
  v32 = MEMORY[0x277D839B0];
  *(inited + 128) = v31;
  *(inited + 136) = v33;
  *(inited + 168) = v32;
  *(inited + 144) = 0;
  v34 = *MEMORY[0x277CB82E0];
  *(inited + 176) = sub_27237782C();
  *(inited + 184) = v35;
  *(inited + 216) = MEMORY[0x277D839F8];
  *(inited + 192) = 0x40CF400000000000;
  v36 = *MEMORY[0x277CB82B0];
  *(inited + 224) = sub_27237782C();
  *(inited + 232) = v37;
  *(inited + 264) = v29;
  *(inited + 240) = 1;
  v83 = sub_27221651C(inited);
  swift_setDeallocating();
  sub_2721F065C(&qword_280881A60, &unk_27237CA40);
  swift_arrayDestroy();
  v38 = NSTemporaryDirectory();
  sub_27237782C();

  v74 = v18;
  v75 = v17;
  v40 = *(v18 + 56);
  v39 = v18 + 56;
  v73 = v40;
  v40(v16, 1, 1, v17);
  (*(v80 + 104))(v79, *MEMORY[0x277CC91D8], v84);
  v84 = v23;
  sub_272376D4C();
  v86[0] = 0x746E657645676264;
  v86[1] = 0xE90000000000002DLL;
  sub_272376DEC();
  sub_272376DDC();
  v42 = v41;
  v43 = v41;
  (*(v81 + 8))(v10, v82);
  if ((*&v43 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v42 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v42 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v82 = v39;
  v85 = v42;
  v44 = sub_27237862C();
  MEMORY[0x2743C4AD0](v44);

  MEMORY[0x2743C4AD0](1986098990, 0xE400000000000000);
  v45 = v78;
  v46 = v84;
  sub_272376CEC();

  v47 = objc_allocWithZone(MEMORY[0x277CB8398]);
  v48 = sub_272376CCC();
  v49 = sub_27237770C();
  v86[0] = 0;
  v50 = [v47 initForWriting:v48 settings:v49 commonFormat:3 interleaved:0 error:v86];

  if (!v50)
  {
    v69 = v86[0];

    sub_272376C6C();

    swift_willThrow();
    v56 = v74;
    v54 = v75;
    goto LABEL_17;
  }

  v51 = v86[0];
  v52 = [v50 fileFormat];
  v54 = v75;
  v53 = v76;
  v55 = *(v76 + 16);
  v56 = v74;
  if (HIDWORD(v55))
  {
LABEL_22:
    __break(1u);
  }

  v57 = v52;
  v58 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v52 frameCapacity:v55];

  if (v58)
  {

    v59 = [v58 int16ChannelData];
    if (v59)
    {
      v59 = *v59;
    }

    memcpy(v59, (v53 + 32), 2 * v55);
    [v58 setFrameLength_];
    v86[0] = 0;
    if ([v50 writeFromBuffer:v58 error:v86])
    {
      v60 = *(v56 + 8);
      v61 = v86[0];
      v60(v84, v54);

      v62 = v77;
      (*(v56 + 32))(v77, v45, v54);
      v73(v62, 0, 1, v54);
LABEL_18:
      v72 = *MEMORY[0x277D85DE8];
      return;
    }

    v70 = v86[0];
    sub_272376C6C();

    swift_willThrow();
    v46 = v84;
LABEL_17:
    v71 = *(v56 + 8);
    v71(v45, v54);
    v71(v46, v54);
    goto LABEL_18;
  }

  __break(1u);
}

uint64_t sub_2722DD678(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = *v4;
  v9 = *(*v4 + 16);
  if (__OFADD__(v9, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_8;
  }

  v5 = a3;
  v10 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v8;
  if (!result)
  {
    goto LABEL_8;
  }

  v12 = *(v8 + 24) >> 1;
  if (v12 < v9 + v7)
  {
    goto LABEL_8;
  }

  if (v6 == v5)
  {
    while (v7 > 0)
    {
      __break(1u);
LABEL_8:
      result = sub_2723782AC();
      v8 = *v4;
      v12 = *(*v4 + 24) >> 1;
      if (v6 != v5)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_13;
  }

LABEL_9:
  if (v12 - *(v8 + 16) < v7)
  {
    __break(1u);
    goto LABEL_20;
  }

  type metadata accessor for VANRDebugEvent(0);
  result = swift_arrayInitWithCopy();
  if (v7 > 0)
  {
    v13 = *(v8 + 16);
    v14 = __OFADD__(v13, v7);
    v15 = v13 + v7;
    if (!v14)
    {
      *(v8 + 16) = v15;
      goto LABEL_13;
    }

LABEL_20:
    __break(1u);
    return result;
  }

LABEL_13:
  swift_unknownObjectRelease();

  return sub_27237827C();
}

uint64_t sub_2722DD7C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280882A88, &qword_2723837B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2722DD838()
{
  MEMORY[0x2743C6A90](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2722DD870()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2722DD8B8(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_272211DBC;

  return sub_2722D86F0(a1, v6, v7, v5, v4);
}

uint64_t sub_2722DD988()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

void *sub_2722DD9D8(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
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

uint64_t sub_2722DDB30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2722DDB78()
{
  v1[19] = v0;
  v2 = *(*(type metadata accessor for VARuntimeParameters() - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v3 = sub_27237728C();
  v1[24] = v3;
  v4 = *(v3 - 8);
  v1[25] = v4;
  v5 = *(v4 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722DDCE8, 0, 0);
}

uint64_t sub_2722DDCE8()
{
  v1 = v0[34];
  v2 = v0[24];
  v3 = v0[25];
  v4 = sub_2722C389C();
  v0[35] = v4;
  v5 = *(v3 + 16);
  v0[36] = v5;
  v0[37] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_27237725C();
  v7 = sub_272377E7C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2721E4000, v6, v7, "Entering StartProcessingAudioToAudio()", v8, 2u);
    MEMORY[0x2743C69C0](v8, -1, -1);
  }

  v9 = v0[34];
  v10 = v0[24];
  v11 = v0[25];
  v12 = v0[19];

  v13 = *(v11 + 8);
  v0[38] = v13;
  v14 = v13(v9, v10);
  v15 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v12) + 0x150))(v14))
  {
    v16 = v0[19];

    v18 = (*((*v15 & *v16) + 0x120))(v17);
    v0[39] = v18;
    if (v18)
    {
      v19 = v18;
      v20 = v0[19];
      v21 = *(v20 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_encoderModel);
      v0[40] = v21;
      if (v21)
      {
        v22 = *(v20 + OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_verifierModel);
        v0[41] = v22;
        if (v22)
        {
          v23 = *((*v15 & *v20) + 0x78);

          v25 = v23(v24);
          v0[42] = v25;
          if (v25)
          {
            v26 = v0[23];
            v27 = (*v19 + 312);
            v28 = *v27;
            v0[43] = *v27;
            v0[44] = v27 & 0xFFFFFFFFFFFFLL | 0xEDEA000000000000;
            v28();
            (*(*v21 + 96))(v26);
            v29 = v0[22];
            v30 = sub_272216BD8(v0[23]);
            (v28)(v30);
            (*(*v22 + 88))(v29);
            v50 = v0[19];
            sub_272216BD8(v0[22]);
            v51 = *v19 + 368;
            v0[45] = *v51;
            v0[46] = v51 & 0xFFFFFFFFFFFFLL | 0x454C000000000000;
            v52 = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_encodingSet;
            v0[47] = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_vadGated;
            v0[48] = v52;
            v0[49] = OBJC_IVAR____TtC12VoiceActions24VAFlexibleKeywordSpotter_audioFormat16k;
            swift_beginAccess();
            v0[50] = 0;
            v53 = v0[46];
            v54 = v0[39];
            v61 = (v0[45] + *v0[45]);
            v55 = *(v0[45] + 4);
            v56 = swift_task_alloc();
            v0[51] = v56;
            *v56 = v0;
            v56[1] = sub_2722DE364;
            v57 = v0[46];

            return v61();
          }

          sub_2722032B4();
          swift_allocError();
          *v49 = 0x666E6F63206C694ELL;
          v49[1] = 0xEA00000000006769;
          swift_willThrow();

          goto LABEL_15;
        }

        v34 = 0x800000027238EE80;
        sub_2722032B4();
        swift_allocError();
        v36 = 0xD000000000000012;
      }

      else
      {
        v34 = 0x800000027238EE60;
        sub_2722032B4();
        swift_allocError();
        v36 = 0xD000000000000011;
      }

      *v35 = v36;
      v35[1] = v34;
      swift_willThrow();
LABEL_15:

      goto LABEL_16;
    }

    v31 = 0x800000027238EE40;
    sub_2722032B4();
    swift_allocError();
    v33 = 0xD000000000000014;
  }

  else
  {
    v31 = 0x800000027238EE20;
    sub_2722032B4();
    swift_allocError();
    v33 = 0xD000000000000016;
  }

  *v32 = v33;
  v32[1] = v31;
  swift_willThrow();
LABEL_16:
  v38 = v0[33];
  v37 = v0[34];
  v40 = v0[31];
  v39 = v0[32];
  v42 = v0[29];
  v41 = v0[30];
  v44 = v0[27];
  v43 = v0[28];
  v45 = v0[26];
  v46 = v0[23];
  v58 = v0[22];
  v59 = v0[21];
  v60 = v0[20];

  v47 = v0[1];

  return v47();
}

uint64_t sub_2722DE364(char a1)
{
  v2 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 544) = a1;

  return MEMORY[0x2822009F8](sub_2722DE464, 0, 0);
}

uint64_t sub_2722DE464()
{
  if (*(v0 + 544) == 1)
  {
    v1 = *(v0 + 400);
    v2 = *(v0 + 384);
    v3 = *(v0 + 152);
    swift_beginAccess();
    v4 = *(v3 + v2);
    *(v3 + v2) = MEMORY[0x277D84F90];

    (*((*MEMORY[0x277D85000] & *v3) + 0x220))(0);
    v6 = *(v0 + 328);
    v5 = *(v0 + 336);
    v7 = *(v0 + 312);
    v8 = *(v0 + 320);
    if (v1)
    {

      v10 = *(v0 + 264);
      v9 = *(v0 + 272);
      v12 = *(v0 + 248);
      v11 = *(v0 + 256);
      v14 = *(v0 + 232);
      v13 = *(v0 + 240);
      v16 = *(v0 + 216);
      v15 = *(v0 + 224);
      v17 = *(v0 + 208);
      v35 = *(v0 + 184);
      v37 = *(v0 + 176);
      v39 = *(v0 + 168);
      v41 = *(v0 + 160);
    }

    else
    {
      v27 = *(v0 + 264);
      v26 = *(v0 + 272);
      v28 = *(v0 + 248);
      v29 = *(v0 + 256);
      v31 = *(v0 + 232);
      v30 = *(v0 + 240);
      v32 = *(v0 + 224);
      v33 = *(v0 + 216);
      v34 = *(v0 + 208);
      v36 = *(v0 + 184);
      v38 = *(v0 + 176);
      v40 = *(v0 + 168);
      v43 = *(v0 + 160);
    }

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v19 = *(v0 + 312);
    v20 = sub_27222CD4C();
    v21 = *v19 + 384;
    v22 = *v21;
    *(v0 + 416) = *v21;
    *(v0 + 424) = v21 & 0xFFFFFFFFFFFFLL | 0x95E6000000000000;
    v42 = (v22 + *v22);
    v23 = v22[1];
    v24 = swift_task_alloc();
    *(v0 + 432) = v24;
    *v24 = v0;
    v24[1] = sub_2722DE800;

    return (v42)(0, 1, v20 & 1);
  }
}

uint64_t sub_2722DE800(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 432);
  v8 = *v3;
  *(*v3 + 440) = v2;

  if (v2)
  {
    v9 = sub_2722E0708;
  }

  else
  {
    *(v6 + 448) = a2;
    *(v6 + 456) = a1;
    v9 = sub_2722DE934;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2722DE934()
{
  v1 = v0;
  v2 = *(v0 + 456);
  if (v2)
  {
    v3 = *(v0 + 448);
  }

  else
  {
    v3 = 0;
  }

  v4 = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = *(v0 + 456);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  if (!*(v5 + 16))
  {
    v13 = *(v0 + 288);
    v12 = *(v0 + 296);
    v14 = *(v1 + 280);
    v15 = *(v1 + 264);
    v16 = *(v1 + 192);

    v13(v15, v14, v16);
    v17 = sub_27237725C();
    v18 = sub_272377EAC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2721E4000, v17, v18, "Stop(): processing was stopped, break out of StartProcessingAudioToAudio()", v19, 2u);
      MEMORY[0x2743C69C0](v19, -1, -1);
    }

    v20 = *(v1 + 304);
    v21 = *(v1 + 264);
    v22 = *(v1 + 192);
    v23 = *(v1 + 200);

    v20(v21, v22);
    v24 = *(v1 + 440);
    v25 = *(v1 + 384);
    v26 = *(v1 + 152);
    swift_beginAccess();
    v27 = *(v26 + v25);
    *(v26 + v25) = v4;

    (*((*MEMORY[0x277D85000] & *v26) + 0x220))(0);
    v29 = *(v1 + 328);
    v28 = *(v1 + 336);
    v30 = *(v1 + 312);
    v31 = *(v1 + 320);
    if (!v24)
    {
      v63 = *(v1 + 264);
      v62 = *(v1 + 272);
      v64 = v1;
      v65 = *(v1 + 256);
      v66 = v64[30];
      v67 = v64[31];
      v68 = v64[29];
      v215 = v64[28];
      v216 = v64[27];
      v217 = v64[26];
      v219 = v64[23];
      v222 = v64[22];
      v224 = v64[21];
      v225 = v64[20];

      v43 = v64[1];
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v6 = *(v0 + 440);
  v7 = (*(**(v0 + 320) + 80))(v5);
  *(v0 + 464) = v7;
  if (v6)
  {
    v8 = *(v0 + 328);
    v9 = *(v0 + 336);
    v11 = *(v1 + 312);
    v10 = *(v1 + 320);

LABEL_14:

LABEL_15:

    v33 = *(v1 + 264);
    v32 = *(v1 + 272);
    v35 = *(v1 + 248);
    v34 = *(v1 + 256);
    v37 = *(v1 + 232);
    v36 = *(v1 + 240);
    v39 = *(v1 + 216);
    v38 = *(v1 + 224);
    v40 = v1;
    v41 = *(v1 + 208);
    v42 = v40[23];
    v218 = v40[22];
    v221 = v40[21];
    v223 = v40[20];

    v43 = v40[1];
LABEL_16:

    return v43();
  }

  v45 = v7;
  v46 = *(v0 + 376);
  v47 = *(v0 + 152);

  v49 = MEMORY[0x277D85000];
  if (*(v47 + v46) == 1)
  {
    type metadata accessor for VAFeatureExtractingEncoderOutput();
    swift_unknownObjectRetain();
    v50 = swift_dynamicCastClass();
    if (!v50)
    {
      v69 = *(v1 + 328);
      v70 = *(v1 + 336);
      v72 = *(v1 + 312);
      v71 = *(v1 + 320);
      swift_unknownObjectRelease();
      sub_2722032B4();
      swift_allocError();
      *v73 = 0xD00000000000003BLL;
      v73[1] = 0x800000027238EEA0;
      swift_willThrow();

      swift_unknownObjectRelease();

      goto LABEL_15;
    }

    v51 = *(v50 + 32);
    if (v51)
    {
      v53 = *(v1 + 344);
      v52 = *(v1 + 352);
      v54 = *(v1 + 312);
      v55 = *(v1 + 168);
      v56 = *(v1 + 152);
      v57 = *(v50 + 32);

      v53(v58);
      v59 = *(v55 + 52);
      sub_272216BD8(v55);
      v60 = *MEMORY[0x277D85000] & *v56;
      v49 = MEMORY[0x277D85000];
      LOWORD(v54) = (*(v60 + 568))(v51, v59);

      v61 = (v54 & 0x100) == 0;
    }

    else
    {
      v61 = 1;
    }

    v74 = (*((*v49 & **(v1 + 152)) + 0x198))();
    v48 = swift_unknownObjectRelease();
    LOBYTE(v226) = (v74 ^ 1) & v61;
  }

  else
  {
    LOBYTE(v226) = 0;
  }

  v75 = *(v1 + 336);
  v76 = *((*v49 & *v75) + 0x88);
  v77 = (*v49 & *v75) + 136;
  v78 = (v76)(v48);
  v79 = (*((*v49 & *v78) + 0xE8))();

  v80 = *(v1 + 384);
  v81 = *(v1 + 152);
  if (v79 != 1)
  {
    swift_beginAccess();
    v84 = swift_unknownObjectRetain();
    MEMORY[0x2743C4C30](v84);
    if (*((*(v81 + v80) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v81 + v80) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_133;
    }

    goto LABEL_31;
  }

  sub_2721F065C(&qword_280882098, &qword_27237E8B0);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_27237E510;
  *(v82 + 32) = v45;
  v83 = *(v81 + v80);
  *(v81 + v80) = v82;
  swift_unknownObjectRetain();
  while (1)
  {
    v110 = *(v1 + 384);
    v111 = *(v1 + 328);
    v112 = *(v1 + 152);

    v113 = *(v112 + v110);
    v114 = *(*v111 + 80);

    v114(v115, LOBYTE(v226) & 1);
    LOBYTE(v226) = 0;

    v77 = *(v1 + 120);
    *(v1 + 472) = v77;
    if (VAVerifierModelOutput.isNone.getter())
    {
      swift_unknownObjectRelease();

LABEL_80:
      *(v1 + 400) = 0;
      v116 = *(v1 + 368);
      v117 = *(v1 + 312);
      v227 = (*(v1 + 360) + **(v1 + 360));
      v118 = *(*(v1 + 360) + 4);
      v119 = swift_task_alloc();
      *(v1 + 408) = v119;
      *v119 = v1;
      v119[1] = sub_2722DE364;
      v120 = *(v1 + 368);

      return v227();
    }

    v121 = MEMORY[0x277D85000];
    v122 = (*((*MEMORY[0x277D85000] & **(v1 + 152)) + 0x428))();
    if (v122)
    {
      v123 = *(*v122 + 304);

      v123(v124);

      v121 = MEMORY[0x277D85000];
    }

    v125 = *(v1 + 152);
    *(v1 + 480) = mach_absolute_time();
    v126 = *(*v77 + 160);

    v126(v3);

    if (((*((*v121 & *v125) + 0x3C8))(v127) & 1) == 0)
    {
      goto LABEL_120;
    }

    v128 = (*(**(v1 + 312) + 400))();
    if (!v128)
    {
      v133 = *(**(v1 + 312) + 392);

      v135 = v133(v134);
      v136 = *(v135 + 16);
      if (!v136)
      {
        goto LABEL_106;
      }

      *(v1 + 128) = v4;
      v76 = v135;
      sub_272215F8C(0, v136, 0);
      v137 = v76;
      v91 = *(v1 + 128);
      v3 = 32;
      v88 = 2139095039;
      while (1)
      {
        v138 = *(v137 + v3);
        if ((LODWORD(v138) & 0x7FFFFFFFu) > 0x7F7FFFFF)
        {
          goto LABEL_142;
        }

        if (v138 <= -32769.0)
        {
          goto LABEL_143;
        }

        if (v138 >= 32768.0)
        {
          goto LABEL_144;
        }

        *(v1 + 128) = v91;
        v4 = *(v91 + 16);
        v139 = *(v91 + 24);
        if (v4 >= v139 >> 1)
        {
          v226 = v138;
          sub_272215F8C((v139 > 1), v4 + 1, 1);
          v138 = v226;
          v137 = v76;
          v91 = *(v1 + 128);
        }

        *(v91 + 16) = v4 + 1;
        *(v91 + 2 * v4 + 32) = v138;
        v3 += 4;
        if (!--v136)
        {
LABEL_104:

          goto LABEL_107;
        }
      }
    }

    v129 = v128;
    v130 = *(v128 + 16);
    if (!v130)
    {
      break;
    }

    *(v1 + 144) = v4;

    sub_272215F8C(0, v130, 0);
    v91 = *(v1 + 144);
    v76 = 32;
    while (1)
    {
      v131 = *(v129 + v76);
      if ((LODWORD(v131) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        break;
      }

      if (v131 <= -32769.0)
      {
        goto LABEL_131;
      }

      if (v131 >= 32768.0)
      {
        goto LABEL_132;
      }

      *(v1 + 144) = v91;
      v4 = *(v91 + 16);
      v132 = *(v91 + 24);
      v3 = v4 + 1;
      if (v4 >= v132 >> 1)
      {
        v226 = v131;
        sub_272215F8C((v132 > 1), v4 + 1, 1);
        v131 = v226;
        v91 = *(v1 + 144);
      }

      *(v91 + 16) = v3;
      *(v91 + 2 * v4 + 32) = v131;
      v76 += 4;
      if (!--v130)
      {
        goto LABEL_104;
      }
    }

    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    v214 = *(v1 + 152) + *(v1 + 384);
    sub_272377B2C();
LABEL_31:
    v85 = *(v1 + 384);
    v86 = *(v1 + 336);
    v87 = *(v1 + 152);
    sub_272377B7C();
    v88 = *(v87 + v85);
    swift_endAccess();

    v90 = (v76)(v89);
    v91 = (*((*MEMORY[0x277D85000] & *v90) + 0xE8))();

    if (v91 < 0)
    {
      __break(1u);
    }

    else
    {
      v76 = v88 >> 62;
      if (!(v88 >> 62))
      {
        v92 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v93 = -v92;
        if (__OFSUB__(0, v92))
        {
          goto LABEL_137;
        }

        goto LABEL_34;
      }
    }

    v92 = sub_2723783AC();
    v93 = -v92;
    if (__OFSUB__(0, v92))
    {
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
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
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

LABEL_34:
    v94 = -v91;
    if (v93 > 0 || v93 <= v94)
    {
      v91 = v92 - v91;
      if (__OFADD__(v92, v94))
      {
        goto LABEL_145;
      }

      if (v92 < v91)
      {
        goto LABEL_147;
      }

      if (!v76)
      {
LABEL_38:
        v95 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_43;
      }
    }

    else
    {
      if (v92 < 0)
      {
        goto LABEL_146;
      }

      v91 = 0;
      if (!v76)
      {
        goto LABEL_38;
      }
    }

    v95 = sub_2723783AC();
LABEL_43:
    if (v95 < v91)
    {
      goto LABEL_138;
    }

    if (v91 < 0)
    {
      goto LABEL_139;
    }

    if (v76)
    {
      v96 = sub_2723783AC();
    }

    else
    {
      v96 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v96 < v92)
    {
      goto LABEL_140;
    }

    if (v92 < 0)
    {
      goto LABEL_141;
    }

    if (v76)
    {
      sub_2723783BC();
      v91 = v101;
      v103 = v102;

      v76 = v103 >> 1;
      if ((v103 & 1) == 0)
      {
LABEL_62:
        v88 = v76 - v91;
        v104 = __OFSUB__(v76, v91);
        swift_unknownObjectRetain();
        if (v104)
        {
LABEL_150:
          __break(1u);
          goto LABEL_151;
        }

        goto LABEL_66;
      }
    }

    else
    {
      v97 = (2 * v92) | 1;
      v76 = v97 >> 1;
      if ((v97 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    v220 = v1;
    sub_27237868C();
    swift_unknownObjectRetain_n();
    v98 = swift_dynamicCastClass();
    if (!v98)
    {
      swift_unknownObjectRelease();
      v98 = MEMORY[0x277D84F90];
    }

    v99 = *(v98 + 16);

    v88 = v76 - v91;
    LOBYTE(v77) = __OFSUB__(v76, v91);
    if (!__OFSUB__(v76, v91))
    {
      if (v99 == v88)
      {
        v100 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        v1 = v220;
        if (v100)
        {
          goto LABEL_77;
        }

        goto LABEL_72;
      }

      goto LABEL_149;
    }

LABEL_148:
    __break(1u);
LABEL_149:
    swift_unknownObjectRelease();
    v1 = v220;
    if (v77)
    {
      goto LABEL_150;
    }

LABEL_66:
    if (v88)
    {
      if (v88 < 1)
      {
        v100 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2721F065C(&qword_280882098, &qword_27237E8B0);
        v100 = swift_allocObject();
        v105 = j__malloc_size(v100);
        v106 = v105 - 32;
        if (v105 < 32)
        {
          v106 = v105 - 25;
        }

        v100[2] = v88;
        v100[3] = (2 * (v106 >> 3)) | 1;
      }

      swift_unknownObjectRelease();
      if (v91 == v76)
      {
        goto LABEL_156;
      }

      swift_arrayInitWithCopy();
      goto LABEL_76;
    }

    swift_unknownObjectRelease();
LABEL_72:
    v100 = MEMORY[0x277D84F90];
LABEL_76:
    swift_unknownObjectRelease();
LABEL_77:
    v107 = *(v1 + 384);
    v108 = *(v1 + 152);
    v109 = *(v108 + v107);
    *(v108 + v107) = v100;
  }

LABEL_106:

  v91 = MEMORY[0x277D84F90];
LABEL_107:
  v141 = *(v1 + 344);
  v140 = *(v1 + 352);
  v142 = *(v1 + 312);
  v143 = *(v1 + 160);
  (*(*v77 + 136))(v91);

  v141(v144);
  v145 = *(v143 + 96);
  *(v1 + 488) = v145;
  v146 = *(v143 + 104);
  sub_272216BD8(v143);
  if (v146)
  {
    goto LABEL_120;
  }

  *(v1 + 496) = mach_absolute_time();
  v148 = *(v1 + 288);
  v147 = *(v1 + 296);
  v149 = *(v1 + 280);
  v150 = *(v1 + 192);
  if (v145 <= 0.0)
  {
    v148(*(v1 + 224), v149, v150);
    v168 = sub_27237725C();
    v169 = sub_272377E8C();
    v170 = os_log_type_enabled(v168, v169);
    v171 = *(v1 + 304);
    v172 = *(v1 + 224);
    v173 = *(v1 + 192);
    v174 = *(v1 + 200);
    if (v170)
    {
      v175 = swift_slowAlloc();
      *v175 = 0;
      _os_log_impl(&dword_2721E4000, v168, v169, "Specified extra audio duration with 0 seconds", v175, 2u);
      MEMORY[0x2743C69C0](v175, -1, -1);
    }

    v171(v172, v173);
LABEL_120:
    v176 = *(v1 + 480);
    type metadata accessor for VARequestContext(0);
    v177 = mach_absolute_time();
    v178 = v177 >= v176;
    v179 = v177 - v176;
    if (v178)
    {
      v181 = *(v1 + 288);
      v180 = *(v1 + 296);
      v182 = *(v1 + 280);
      v183 = *(v1 + 216);
      v184 = *(v1 + 192);
      v185 = sub_2722310BC(v179);
      v181(v183, v182, v184);
      v186 = sub_27237725C();
      v187 = sub_272377E7C();
      if (os_log_type_enabled(v186, v187))
      {
        v188 = swift_slowAlloc();
        *v188 = 134217984;
        *(v188 + 4) = v185;
        _os_log_impl(&dword_2721E4000, v186, v187, "Fetch audio for checker  %f seconds", v188, 0xCu);
        MEMORY[0x2743C69C0](v188, -1, -1);
      }

      v189 = *(v1 + 472);
      v190 = *(v1 + 304);
      v191 = *(v1 + 216);
      v192 = *(v1 + 192);
      v193 = *(v1 + 200);
      v194 = *(v1 + 152);

      v190(v191, v192);
      v195 = *((*MEMORY[0x277D85000] & *v194) + 0x240);

      v195(v196);
      v197 = *(v1 + 472);
      v198 = *(v1 + 480);

      v199 = mach_absolute_time();
      v178 = v199 >= v198;
      v200 = v199 - v198;
      if (v178)
      {
        v202 = *(v1 + 288);
        v201 = *(v1 + 296);
        v203 = *(v1 + 280);
        v204 = *(v1 + 208);
        v205 = *(v1 + 192);
        v206 = sub_2722310BC(v200);
        v202(v204, v203, v205);
        v207 = sub_27237725C();
        v208 = sub_272377E7C();
        v209 = os_log_type_enabled(v207, v208);
        v211 = *(v1 + 464);
        v210 = *(v1 + 472);
        if (v209)
        {
          v212 = swift_slowAlloc();
          *v212 = 134217984;
          *(v212 + 4) = v206;
          _os_log_impl(&dword_2721E4000, v207, v208, "Finished callback  %f seconds", v212, 0xCu);
          MEMORY[0x2743C69C0](v212, -1, -1);

          swift_unknownObjectRelease();
        }

        else
        {
          v213 = *(v1 + 464);
          swift_unknownObjectRelease();
        }

        (*(v1 + 304))(*(v1 + 208), *(v1 + 192));
        goto LABEL_80;
      }
    }

    else
    {
LABEL_151:
      __break(1u);
    }

    __break(1u);
    goto LABEL_153;
  }

  v148(*(v1 + 256), v149, v150);
  v151 = sub_27237725C();
  v152 = sub_272377E7C();
  if (os_log_type_enabled(v151, v152))
  {
    v153 = swift_slowAlloc();
    *v153 = 134217984;
    *(v153 + 4) = v145;
    _os_log_impl(&dword_2721E4000, v151, v152, "Getting extra audio for %f secs after keyword", v153, 0xCu);
    MEMORY[0x2743C69C0](v153, -1, -1);
  }

  v154 = *(v1 + 392);
  v155 = *(v1 + 304);
  v156 = *(v1 + 256);
  v157 = *(v1 + 192);
  v158 = *(v1 + 200);
  v159 = *(v1 + 152);

  *(v1 + 504) = (v158 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v155(v156, v157);
  [*(v159 + v154) sampleRate];
  *(v1 + 512) = v160;
  v161 = v145 * v160;
  if ((*&v161 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  if (v161 <= -9.22337204e18)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (v161 >= 9.22337204e18)
  {
LABEL_155:
    __break(1u);
LABEL_156:
    result = swift_unknownObjectRelease();
    __break(1u);
    return result;
  }

  v162 = *(v1 + 424);
  v163 = *(v1 + 312);
  v164 = v161;
  v228 = (*(v1 + 416) + **(v1 + 416));
  v165 = *(*(v1 + 416) + 4);
  v166 = swift_task_alloc();
  *(v1 + 520) = v166;
  *v166 = v1;
  v166[1] = sub_2722DFDD0;
  v167 = *(v1 + 424);

  return v228(v164, 0, 0);
}

uint64_t sub_2722DFDD0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 520);
  v7 = *v2;
  *(v3 + 528) = a1;
  *(v3 + 536) = v1;

  if (v1)
  {
    v5 = sub_2722E0834;
  }

  else
  {
    v5 = sub_2722DFEE8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

char *sub_2722DFEE8()
{
  v1 = *(v0 + 528);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v113 = v0 + 16;
      *(v0 + 136) = MEMORY[0x277D84F90];
      result = sub_272215F8C(0, v2, 0);
      v4 = *(v0 + 136);
      v5 = 32;
      do
      {
        v6 = *(v1 + v5);
        if ((LODWORD(v6) & 0x7FFFFFFFu) > 0x7F7FFFFF)
        {
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        if (v6 <= -32769.0)
        {
          goto LABEL_43;
        }

        if (v6 >= 32768.0)
        {
          goto LABEL_44;
        }

        *(v0 + 136) = v4;
        v8 = *(v4 + 16);
        v7 = *(v4 + 24);
        if (v8 >= v7 >> 1)
        {
          result = sub_272215F8C((v7 > 1), v8 + 1, 1);
          v4 = *(v0 + 136);
        }

        *(v4 + 16) = v8 + 1;
        *(v4 + 2 * v8 + 32) = v6;
        v5 += 4;
        --v2;
      }

      while (v2);
      v18 = *(v0 + 472);

      v19 = *(*v18 + 144);

      v20 = v19(v113);
      v22 = *(v0 + 472);
      if (*v21)
      {
        sub_2722D9ACC(v4);
      }

      else
      {
      }

      v20(v113, 0);
    }

    else
    {
      v24 = *(v0 + 288);
      v23 = *(v0 + 296);
      v25 = *(v0 + 280);
      v26 = *(v0 + 248);
      v27 = *(v0 + 192);
      v28 = *(v0 + 528);

      v24(v26, v25, v27);
      v29 = sub_27237725C();
      v30 = sub_272377E8C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = (*(v0 + 512) * *(v0 + 488));
        v32 = swift_slowAlloc();
        *v32 = 134217984;
        *(v32 + 4) = v31;
        _os_log_impl(&dword_2721E4000, v29, v30, "Failed to get %ld extra bytes", v32, 0xCu);
        MEMORY[0x2743C69C0](v32, -1, -1);
      }

      v33 = *(v0 + 504);
      v34 = *(v0 + 304);
      v35 = *(v0 + 248);
      v36 = *(v0 + 192);

      v34(v35, v36);
    }

    v37 = *(v0 + 496);
    type metadata accessor for VARequestContext(0);
    v38 = mach_absolute_time();
    v39 = v38 >= v37;
    result = (v38 - v37);
    if (!v39)
    {
      goto LABEL_46;
    }

    v41 = *(v0 + 288);
    v40 = *(v0 + 296);
    v42 = *(v0 + 280);
    v43 = *(v0 + 240);
    v44 = *(v0 + 192);
    v45 = sub_2722310BC(result);
    v41(v43, v42, v44);
    v46 = sub_27237725C();
    v47 = sub_272377E6C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 134217984;
      *(v48 + 4) = v45;
      _os_log_impl(&dword_2721E4000, v46, v47, "Fetching audio for checker took %f secs", v48, 0xCu);
      MEMORY[0x2743C69C0](v48, -1, -1);
    }

    v49 = *(v0 + 504);
    v50 = *(v0 + 304);
    v51 = *(v0 + 240);
    v52 = *(v0 + 192);

    v50(v51, v52);
  }

  else
  {
    v9 = *(v0 + 296);
    (*(v0 + 288))(*(v0 + 232), *(v0 + 280), *(v0 + 192));
    v10 = sub_27237725C();
    v11 = sub_272377E8C();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 504);
    v14 = *(v0 + 304);
    v15 = *(v0 + 232);
    v16 = *(v0 + 192);
    if (v12)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2721E4000, v10, v11, "Failed to get extra bytes", v17, 2u);
      MEMORY[0x2743C69C0](v17, -1, -1);
    }

    v14(v15, v16);
  }

  v53 = *(v0 + 536);
  v54 = *(v0 + 480);
  type metadata accessor for VARequestContext(0);
  v55 = mach_absolute_time();
  v39 = v55 >= v54;
  result = (v55 - v54);
  if (!v39)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    return result;
  }

  v57 = *(v0 + 288);
  v56 = *(v0 + 296);
  v58 = *(v0 + 280);
  v59 = *(v0 + 216);
  v60 = *(v0 + 192);
  v61 = sub_2722310BC(result);
  v57(v59, v58, v60);
  v62 = sub_27237725C();
  v63 = sub_272377E7C();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 134217984;
    *(v64 + 4) = v61;
    _os_log_impl(&dword_2721E4000, v62, v63, "Fetch audio for checker  %f seconds", v64, 0xCu);
    MEMORY[0x2743C69C0](v64, -1, -1);
  }

  v65 = *(v0 + 472);
  v66 = *(v0 + 304);
  v67 = *(v0 + 216);
  v68 = *(v0 + 192);
  v69 = *(v0 + 200);
  v70 = *(v0 + 152);

  v66(v67, v68);
  v71 = *((*MEMORY[0x277D85000] & *v70) + 0x240);

  v71(v72);
  if (v53)
  {
    v73 = *(v0 + 464);
    v74 = *(v0 + 472);
    v75 = *(v0 + 328);
    v76 = *(v0 + 336);
    v78 = *(v0 + 312);
    v77 = *(v0 + 320);
    swift_unknownObjectRelease();

    v80 = *(v0 + 264);
    v79 = *(v0 + 272);
    v82 = *(v0 + 248);
    v81 = *(v0 + 256);
    v84 = *(v0 + 232);
    v83 = *(v0 + 240);
    v86 = *(v0 + 216);
    v85 = *(v0 + 224);
    v87 = *(v0 + 208);
    v110 = *(v0 + 184);
    v111 = *(v0 + 176);
    v112 = *(v0 + 168);
    v114 = *(v0 + 160);

    v88 = *(v0 + 8);

    return v88();
  }

  else
  {
    v89 = *(v0 + 472);
    v90 = *(v0 + 480);

    v91 = mach_absolute_time();
    v39 = v91 >= v90;
    result = (v91 - v90);
    if (!v39)
    {
      goto LABEL_47;
    }

    v93 = *(v0 + 288);
    v92 = *(v0 + 296);
    v94 = *(v0 + 280);
    v95 = *(v0 + 208);
    v96 = *(v0 + 192);
    v97 = sub_2722310BC(result);
    v93(v95, v94, v96);
    v98 = sub_27237725C();
    v99 = sub_272377E7C();
    v100 = os_log_type_enabled(v98, v99);
    v102 = *(v0 + 464);
    v101 = *(v0 + 472);
    if (v100)
    {
      v103 = swift_slowAlloc();
      *v103 = 134217984;
      *(v103 + 4) = v97;
      _os_log_impl(&dword_2721E4000, v98, v99, "Finished callback  %f seconds", v103, 0xCu);
      MEMORY[0x2743C69C0](v103, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {
      v104 = *(v0 + 464);
      swift_unknownObjectRelease();
    }

    (*(v0 + 304))(*(v0 + 208), *(v0 + 192));
    *(v0 + 400) = 0;
    v105 = *(v0 + 368);
    v106 = *(v0 + 312);
    v115 = (*(v0 + 360) + **(v0 + 360));
    v107 = *(*(v0 + 360) + 4);
    v108 = swift_task_alloc();
    *(v0 + 408) = v108;
    *v108 = v0;
    v108[1] = sub_2722DE364;
    v109 = *(v0 + 368);

    return v115();
  }
}

uint64_t sub_2722E0708()
{
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  v2 = *(v0 + 320);

  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v7 = *(v0 + 248);
  v6 = *(v0 + 256);
  v9 = *(v0 + 232);
  v8 = *(v0 + 240);
  v11 = *(v0 + 216);
  v10 = *(v0 + 224);
  v12 = *(v0 + 208);
  v13 = *(v0 + 184);
  v16 = *(v0 + 176);
  v17 = *(v0 + 168);
  v18 = *(v0 + 160);
  v19 = *(v0 + 440);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_2722E0834()
{
  v1 = v0[58];
  v2 = v0[59];
  v3 = v0[41];
  v4 = v0[42];
  v6 = v0[39];
  v5 = v0[40];
  swift_unknownObjectRelease();

  v8 = v0[33];
  v7 = v0[34];
  v10 = v0[31];
  v9 = v0[32];
  v12 = v0[29];
  v11 = v0[30];
  v14 = v0[27];
  v13 = v0[28];
  v15 = v0[26];
  v16 = v0[23];
  v19 = v0[22];
  v20 = v0[21];
  v21 = v0[20];
  v22 = v0[67];

  v17 = v0[1];

  return v17();
}

uint64_t sub_2722E0970(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  result = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  result = MEMORY[0x2743C4F00](result, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v14 = result;
  v7 = v4 - a2;
  if (v4 != a2)
  {
    if (a2 <= v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = a2;
    }

    v9 = v8 - a2;
    v10 = (a1 + 16 * a2 + 8);
    while (v9)
    {
      v12 = *(v10 - 1);
      v11 = *v10;

      sub_2722AB1B4(&v13, v12, v11);

      --v9;
      v10 += 2;
      if (!--v7)
      {
        return v14;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t VAA2AAudioEncoderModelV2.__allocating_init(computeUnits:)(char *a1)
{
  v2 = swift_allocObject();
  VAA2AAudioEncoderModelV2.init(computeUnits:)(a1);
  return v2;
}

uint64_t VAA2AAudioEncoderModelV2.init(computeUnits:)(char *a1)
{
  v3 = v1;
  v5 = type metadata accessor for VASignpostInterval();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  type metadata accessor for VALog();
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_27237820C();
  MEMORY[0x2743C4AD0](0xD000000000000018, 0x800000027238EEE0);
  LOBYTE(v17) = v9;
  sub_27237836C();
  static VALog.begin(_:_:)("VoiceActions", 12, 2u, v19, v20, v8);

  v10 = [objc_allocWithZone(MEMORY[0x277CBFF30]) init];
  v22 = v9;
  v21 = 0;
  sub_2722595A4();
  sub_272377A8C();
  sub_272377A8C();
  if (v19 == v17 && v20 == v18)
  {

    v11 = 0;
  }

  else
  {
    v12 = sub_27237865C();

    if (v12)
    {
      v11 = 0;
    }

    else
    {
      v22 = v9;
      v21 = 1;
      sub_272377A8C();
      sub_272377A8C();
      if (v19 == v17 && v20 == v18)
      {
      }

      else
      {
        v13 = sub_27237865C();

        if ((v13 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v11 = 3;
    }
  }

  [v10 setComputeUnits_];
LABEL_12:
  type metadata accessor for quant_enc_f32_wofeats();
  v14 = v10;
  v15 = sub_272294004(v14);
  if (v2)
  {

    sub_272272F68(v8);
    type metadata accessor for VAA2AAudioEncoderModelV2();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 16) = v15;
    VASignpostInterval.end(_:)(0);

    sub_272272F68(v8);
  }

  return v3;
}

uint64_t sub_2722E0DE8(uint64_t a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280882098, &qword_27237E8B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_27237E500;
  v7 = *(a1 + 16);
  result = sub_272377DBC();
  *(v6 + 32) = result;
  v34 = v7;
  if (v7)
  {
    v10 = *(a1 + 32);
    v9 = a1 + 32;
    v11 = *(v10 + 16);
    *(v6 + 40) = sub_272377DBC();
    v12 = objc_allocWithZone(MEMORY[0x277CBFF40]);
    result = sub_272257FA4(v6, 65568);
    if (!v2)
    {
      v13 = result;
      v32 = v3;
      v14 = 0;
      v15 = 0x1FAAAE000uLL;
      v33 = v9;
      do
      {
        v35 = *(v9 + 8 * v14);
        v16 = *(v35 + 16);
        if (v16)
        {

          v17 = 0;
          do
          {
            v18 = *(v35 + 4 * v17 + 32);
            v19 = v17 + 1;
            v20 = v5;
            v21 = v15;
            v22 = swift_allocObject();
            *(v22 + 16) = xmmword_27237E500;
            *(v22 + 32) = sub_272377DBC();
            *(v22 + 40) = sub_272377DBC();
            v23 = sub_272377D3C();
            sub_27223EE54();
            v24 = sub_272377AEC();
            v15 = v21;
            v5 = v20;

            [v13 (v15 + 2040)];

            v17 = v19;
          }

          while (v16 != v19);

          v9 = v33;
        }

        ++v14;
      }

      while (v14 != v34);
      type metadata accessor for quant_enc_f32_wofeatsInput();
      v25 = v13;
      v26 = sub_272276D68();
      v27 = (*(*v32 + 88))();
      v28 = (*(*v27 + 136))(v26);

      v30 = (*(*v28 + 88))(v29);

      v31 = sub_27225730C(v30);

      return v31;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t VAA2AAudioEncoderModelV2.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t VAA2AAudioEncoderModelV2.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void *sub_2722E11E0()
{
  v1 = OBJC_IVAR___G2PFactoredObjc_g2p;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2722E122C(uint64_t a1)
{
  v3 = OBJC_IVAR___G2PFactoredObjc_g2p;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2722E12E4()
{
  v1 = type metadata accessor for G2PFactored();
  v2 = (*(v1 + 80))();
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x68);

  return v3(v2);
}

uint64_t sub_2722E140C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v58 = a5;
  v65 = a4;
  v61 = a3;
  v9 = sub_272376BCC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a1;
  v70 = a2;
  sub_272376B8C();
  sub_272203AC4();
  v14 = sub_2723780EC();
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  v69 = 32;
  v70 = 0xE100000000000000;
  v68 = &v69;
  v17 = sub_2721FF4F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_272204258, v67, v14, v16, 0x20uLL);
  v19 = *(v17 + 16);
  v57 = v17;
  if (v19)
  {
    v20 = *MEMORY[0x277D85000] & *v6;
    v64 = v6;
    v21 = *(v20 + 136);
    v62 = v20 + 136;
    v63 = v21;
    v60 = OBJC_IVAR___G2PFactoredObjc_logger;
    v22 = (v17 + 56);
    v23 = MEMORY[0x277D84F90];
    *&v18 = 136315138;
    v59 = v18;
    do
    {
      v66 = v23;
      v30 = *(v22 - 3);
      v31 = *(v22 - 2);
      v32 = *(v22 - 1);
      v33 = *v22;

      v34 = MEMORY[0x2743C4A20](v30, v31, v32, v33);
      v35 = v63(v34);
      v37 = v36;

      if (v37)
      {

        v23 = v66;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_2721FFBF8(0, *(v23 + 2) + 1, 1, v23);
        }

        v39 = *(v23 + 2);
        v38 = *(v23 + 3);
        v40 = v39 + 1;
        if (v39 >= v38 >> 1)
        {
          v23 = sub_2721FFBF8((v38 > 1), v39 + 1, 1, v23);
        }

        *(v23 + 2) = v40;
        v41 = &v23[16 * v39];
        *(v41 + 4) = v35;
        *(v41 + 5) = v37;
        v42 = *(v23 + 3);

        if ((v39 + 2) > (v42 >> 1))
        {
          v23 = sub_2721FFBF8((v42 > 1), v39 + 2, 1, v23);
        }

        *(v23 + 2) = v39 + 2;
        v43 = &v23[16 * v40];
        v44 = v65;
        *(v43 + 4) = v61;
        *(v43 + 5) = v44;
      }

      else
      {

        v45 = sub_27237725C();
        v46 = sub_272377E8C();

        if (os_log_type_enabled(v45, v46))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v69 = v25;
          *v24 = v59;
          v26 = MEMORY[0x2743C4A20](v30, v31, v32, v33);
          v28 = v27;

          v29 = sub_2721FFD04(v26, v28, &v69);

          *(v24 + 4) = v29;
          _os_log_impl(&dword_2721E4000, v45, v46, "Word did not generate any phonemes : %s", v24, 0xCu);
          sub_2722039C8(v25);
          MEMORY[0x2743C69C0](v25, -1, -1);
          MEMORY[0x2743C69C0](v24, -1, -1);
        }

        else
        {
        }

        v23 = v66;
      }

      v22 += 4;
      --v19;
    }

    while (v19);
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  if (v58)
  {
    if (*(v23 + 2))
    {
      v69 = v57;
      sub_2721F065C(&qword_280881890, &unk_272382EF0);
      sub_2722199BC(&qword_280882AA0, &qword_280881890, &unk_272382EF0);
      sub_272260218();
      v47 = sub_272377A7C();
      v49 = v48;

      v69 = v47;
      v70 = v49;

      MEMORY[0x2743C4AD0](32, 0xE100000000000000);

      v51 = v69;
      v50 = v70;
      v69 = v23;
      sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
      sub_2722199BC(&qword_280881830, &qword_2808817F8, &unk_27237CA80);
      v52 = sub_2723777CC();
      v54 = v53;

      v69 = v51;
      v70 = v50;

      MEMORY[0x2743C4AD0](v52, v54);

      return v69;
    }
  }

  else
  {

    if (*(v23 + 2))
    {
      v69 = v23;
      sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
      sub_2722199BC(&qword_280881830, &qword_2808817F8, &unk_27237CA80);
      v56 = sub_2723777CC();

      return v56;
    }
  }

  return 0;
}

void *sub_2722E1AE0(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v2) + 0x60))();
  if (result)
  {
    v7 = result;
    v8 = (*((*v5 & *result) + 0x58))(a1, a2);

    return v8;
  }

  return result;
}

id G2P.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id G2P.init()()
{
  sub_27237727C();
  *&v0[OBJC_IVAR___G2PFactoredObjc_g2p] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for G2P();
  return objc_msgSendSuper2(&v2, sel_init);
}

id G2P.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for G2P();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for G2P()
{
  result = qword_28088EC60;
  if (!qword_28088EC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2722E1EEC()
{
  result = sub_27237728C();
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

uint64_t VAASRResult.transcript.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions11VAASRResult_transcript);
  v2 = *(v0 + OBJC_IVAR____TtC12VoiceActions11VAASRResult_transcript + 8);

  return v1;
}

uint64_t sub_2722E2094@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x80))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2722E214C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions11VAASRResult_isFinalTerminal;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2722E2190(char a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions11VAASRResult_isFinalTerminal;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2722E2250@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x98))();
  *a2 = result;
  return result;
}

uint64_t sub_2722E22AC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xA0);
  v4 = *a1;
  return v3(v2);
}

void *sub_2722E2314()
{
  v1 = OBJC_IVAR____TtC12VoiceActions11VAASRResult_audioBuffer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2722E2360(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions11VAASRResult_audioBuffer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_2722E2418(uint64_t a1, uint64_t a2, char a3, char a4, char a5, char a6, uint64_t a7)
{
  v14 = objc_allocWithZone(v7);
  v15 = OBJC_IVAR____TtC12VoiceActions11VAASRResult_isFinalTerminal;
  v14[OBJC_IVAR____TtC12VoiceActions11VAASRResult_isFinalTerminal] = 0;
  v16 = OBJC_IVAR____TtC12VoiceActions11VAASRResult_audioBuffer;
  *&v14[OBJC_IVAR____TtC12VoiceActions11VAASRResult_audioBuffer] = 0;
  v17 = &v14[OBJC_IVAR____TtC12VoiceActions11VAASRResult_transcript];
  *v17 = a1;
  v17[1] = a2;
  v14[OBJC_IVAR____TtC12VoiceActions11VAASRResult_isFinal] = a3;
  v14[OBJC_IVAR____TtC12VoiceActions11VAASRResult_usedPartialAsFinal] = a5;
  v14[OBJC_IVAR____TtC12VoiceActions11VAASRResult_isIgnored] = a6;
  swift_beginAccess();
  *&v14[v16] = a7;
  swift_beginAccess();
  v14[v15] = a4;
  v20.receiver = v14;
  v20.super_class = v7;
  return objc_msgSendSuper2(&v20, sel_init);
}

unint64_t sub_2722E25A4()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x80))())
  {
    sub_27237820C();

    v8 = 0xD000000000000011;
  }

  else
  {
    if (*(v0 + OBJC_IVAR____TtC12VoiceActions11VAASRResult_isFinal) == 1)
    {
      sub_27237820C();

      v2 = 0x205D6C616E69465BLL;
    }

    else
    {
      sub_27237820C();

      v2 = 0x6C6169747261505BLL;
    }

    v8 = v2;
  }

  MEMORY[0x2743C4AD0](*(v0 + OBJC_IVAR____TtC12VoiceActions11VAASRResult_transcript), *(v0 + OBJC_IVAR____TtC12VoiceActions11VAASRResult_transcript + 8));
  v3 = MEMORY[0x2743C4AD0](8226, 0xE200000000000000);
  v4 = (*((*v1 & *v0) + 0x98))(v3);
  v5 = v4;
  if (v4)
  {
    [v4 frameLength];
  }

  sub_2721F065C(&qword_280882AD8, &qword_2723838B8);
  v6 = sub_27237789C();
  MEMORY[0x2743C4AD0](v6);

  MEMORY[0x2743C4AD0](0x736574796220, 0xE600000000000000);
  return v8;
}

id VAASRResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VAASRResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VAASRResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2722E2AB0()
{
  v0 = sub_272291FE0(&unk_28818E268);
  swift_arrayDestroy();
  return v0;
}

id sub_2722E2AF8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000027238D8B0 == a2 || (sub_27237865C() & 1) != 0)
  {
    v5 = (*(*v2 + 112))();
  }

  else if (a1 == 0x62616C5F74786574 && a2 == 0xEB00000000736C65 || (sub_27237865C() & 1) != 0)
  {
    v5 = (*(*v2 + 136))();
  }

  else if (a1 == 0x656C5F6F69647561 && a2 == 0xE90000000000006ELL || (sub_27237865C() & 1) != 0)
  {
    v5 = (*(*v2 + 160))();
  }

  else
  {
    if ((a1 != 0x6E656C5F74786574 || a2 != 0xE800000000000000) && (sub_27237865C() & 1) == 0)
    {
      return 0;
    }

    v5 = (*(*v2 + 184))();
  }

  v6 = v5;
  v7 = [objc_opt_self() featureValueWithMultiArray_];

  return v7;
}

void sub_2722E2D74()
{
  v1 = *(v0 + 16);
  v2 = sub_2723777FC();
  v3 = [v1 featureValueForName_];

  if (!v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = [v3 multiArrayValue];

  if (!v4)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_2722E2E08()
{
  v1 = (*(*v0 + 88))();
  v2 = MEMORY[0x277D83A90];
  v3 = MEMORY[0x277CBFDD0];

  return MEMORY[0x2821117E8](v1, v2, v3);
}

uint64_t sub_2722E2F5C(void *a1)
{
  swift_allocObject();
  v2 = sub_2722E4344(a1);

  return v2;
}

void sub_2722E2FA4()
{
  sub_272255BD4();
  v4 = v0;
  if (!v0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = sub_2723777FC();
  v2 = sub_2723777FC();
  v3 = [v4 URLForResource:v1 withExtension:v2];

  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_272376D0C();
}

uint64_t sub_2722E3078(void *a1)
{
  v3 = v1;
  v5 = sub_272376D5C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v19 - v12;
  (*(v1 + 88))(v11);
  v14 = sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  (*(v6 + 16))(v10, v13, v5);
  v15 = a1;
  v16 = sub_272292308(v10, v15);
  if (v2)
  {

    (*(v6 + 8))(v13, v5);
  }

  else
  {
    v17 = v16;

    v14 = (*(v3 + 96))(v17);
    (*(v6 + 8))(v13, v5);
  }

  return v14;
}

uint64_t sub_2722E3238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_272376D5C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 88))(v10);
  (*(v3 + 120))(v12, a1, a2, a3);
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_2722E3348(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_272376D5C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722E3408, 0, 0);
}

uint64_t sub_2722E3408()
{
  v1 = v0[6];
  v10 = v0[3];
  (*(v10 + 88))();
  v2 = *(v10 + 128);
  v9 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_272290FC0;
  v5 = v0[6];
  v6 = v0[2];
  v7 = v0[3];

  return v9(v5, v6);
}

uint64_t sub_2722E3538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  sub_272377F8C();
}

uint64_t sub_2722E35F0(uint64_t a1, uint64_t a2)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v5 = *(MEMORY[0x277CBFE10] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2722E36B8;

  return MEMORY[0x2821119A8](a1, a2);
}

uint64_t sub_2722E36B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 24) = a1;

    return MEMORY[0x2822009F8](sub_2722E3804, 0, 0);
  }
}

uint64_t sub_2722E3804()
{
  v1 = *(v0 + 24);
  type metadata accessor for _3enrollments_quant_all_verifier_aa();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2722E3878(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBFF60]) init];
  v4 = (*(*v1 + 144))(a1, v3);

  return v4;
}

uint64_t sub_2722E3904(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 16);
  v13[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v13];
  v7 = v13[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for _3enrollments_quant_all_verifier_aaOutput();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v13[0];
    sub_272376C6C();

    swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_2722E39DC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2722E3A00, 0, 0);
}

uint64_t sub_2722E3A00()
{
  v1 = *(v0[4] + 16);
  v2 = *(MEMORY[0x277CBFDE8] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_2722E3AA0;
  v5 = v0[2];
  v4 = v0[3];

  return MEMORY[0x282111980](v5, v4);
}

uint64_t sub_2722E3AA0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_2722E3BEC, 0, 0);
  }
}

uint64_t sub_2722E3BEC()
{
  v1 = *(v0 + 48);
  type metadata accessor for _3enrollments_quant_all_verifier_aaOutput();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2722E3C60(void *a1, void *a2, void *a3, void *a4)
{
  type metadata accessor for _3enrollments_quant_all_verifier_aaInput();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = *(*v4 + 136);
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = v10(v9);

  return v15;
}

uint64_t sub_2722E3D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v4 = sub_2721F065C(&qword_280882530, &unk_272380BE0);
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v31 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v31 - v14;
  v31 = &v31 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v31 - v17;
  v38 = &v31 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - v19;
  v21 = v5[2];
  v35 = &v31 - v19;
  v21(&v31 - v19, v32, v4);
  v21(v18, v33, v4);
  v21(v15, v34, v4);
  v21(v12, v36, v4);
  sub_27221982C(0, &qword_2808821D0, 0x277CBFF40);
  v21(v9, v20, v4);
  sub_272292148();
  v36 = sub_272377E5C();
  v21(v9, v38, v4);
  v34 = sub_272377E5C();
  v22 = v31;
  v21(v9, v31, v4);
  v33 = sub_272377E5C();
  v21(v9, v12, v4);
  v23 = sub_272377E5C();
  v24 = v5[1];
  v24(v12, v4);
  v24(v22, v4);
  v24(v38, v4);
  v24(v35, v4);
  type metadata accessor for _3enrollments_quant_all_verifier_aaInput();
  v25 = swift_allocObject();
  v26 = v37;
  v27 = v33;
  v28 = v34;
  v25[2] = v36;
  v25[3] = v28;
  v25[4] = v27;
  v25[5] = v23;
  v29 = (*(*v26 + 136))();

  return v29;
}

void sub_2722E4080(unint64_t a1, uint64_t a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = a1 >> 62;
  if (a1 >> 62)
  {

    sub_2721F065C(&qword_2808825A8, &qword_272380C30);
    sub_27237838C();
  }

  else
  {

    sub_27237867C();
  }

  v6 = objc_allocWithZone(MEMORY[0x277CBFEB8]);
  sub_2721F065C(&qword_2808825A8, &qword_272380C30);
  v7 = sub_272377AEC();

  v8 = [v6 initWithFeatureProviderArray_];

  v9 = *(v2 + 16);
  v23[0] = 0;
  v10 = [v9 predictionsFromBatch:v8 options:a2 error:v23];
  v11 = v23[0];
  if (v10)
  {
    v12 = v10;
    v23[0] = MEMORY[0x277D84F90];
    if (v5)
    {
      v13 = sub_2723783AC();
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v11;
    sub_272291E24(v13);
    v16 = [v12 count];
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v17 = v16;
    if (v16)
    {
      v18 = 0;
      do
      {
        v19 = [v12 featuresAtIndex_];
        type metadata accessor for _3enrollments_quant_all_verifier_aaOutput();
        *(swift_allocObject() + 16) = v19;
        swift_unknownObjectRetain();

        MEMORY[0x2743C4C30](v20);
        if (*((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v22 = *((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_272377B2C();
        }

        ++v18;
        sub_272377B7C();

        swift_unknownObjectRelease();
      }

      while (v17 != v18);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v23[0];
    sub_272376C6C();

    swift_willThrow();
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2722E4344(uint64_t a1)
{
  v2 = v1;
  sub_2721F065C(&qword_280881A58, &unk_272382730);
  inited = swift_initStackObject();
  *(inited + 32) = 0x3739315F726176;
  *(inited + 16) = xmmword_27237AF80;
  *(inited + 40) = 0xE700000000000000;
  v5 = [objc_opt_self() featureValueWithMultiArray_];
  *(inited + 72) = sub_27221982C(0, &qword_2808825B0, 0x277CBFEF0);
  *(inited + 48) = v5;
  sub_27221651C(inited);
  swift_setDeallocating();
  sub_272292598(inited + 32);
  v6 = objc_allocWithZone(MEMORY[0x277CBFED8]);
  *(v2 + 16) = sub_272291EF8();
  return v2;
}

uint64_t sub_2722E4494()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2722E44CC(void *a1, char a2)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  if (a2)
  {
    return v4(a1, 1);
  }

  type metadata accessor for _3enrollments_quant_all_verifier_aa();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = a1;
  v4(v7, 0);
}

void *static VAVerifierModelOutput.none.getter@<X0>(void *a1@<X8>)
{
  type metadata accessor for VAKeywordResult();
  result = VAKeywordResult.__allocating_init(detections:)(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

BOOL VAVerifierModelOutput.isNone.getter()
{
  v1 = *((*(**v0 + 104))() + 16);

  return v1 == 0;
}

void *initializeBufferWithCopyOfBuffer for VAVerifierModelOutput(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithCopy for VAVerifierModelOutput(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for VAVerifierModelOutput(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_2722E482C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_delegate;
  swift_beginAccess();
  return sub_272277044(v1 + v3, a1);
}

uint64_t sub_2722E4884(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_delegate;
  swift_beginAccess();
  sub_2722E48E4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_2722E48E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280882228, &qword_27237F4D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2722E49B4()
{
  v1 = OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_floatArr;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_2722E49FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_floatArr;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *VAA2AAudioEnroller.__allocating_init(encoder:keywordIdentifier:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  v12 = v11 + OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_delegate;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  v13 = MEMORY[0x277D84F90];
  *(v11 + OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_floatArr) = MEMORY[0x277D84F90];
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = v13;
  sub_272376E4C();
  v14 = OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_delegate;
  swift_beginAccess();
  sub_2722E48E4(a4, v11 + v14);
  swift_endAccess();
  return v11;
}

void *VAA2AAudioEnroller.init(encoder:keywordIdentifier:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_272376E5C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v4 + OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_delegate;
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  v15 = MEMORY[0x277D84F90];
  *(v4 + OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_floatArr) = MEMORY[0x277D84F90];
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v15;
  sub_272376E4C();
  (*(v10 + 32))(v4 + OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_id, v13, v9);
  v16 = OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_delegate;
  swift_beginAccess();
  sub_2722E48E4(a4, v4 + v16);
  swift_endAccess();
  return v4;
}

uint64_t sub_2722E4CDC(objc_class *a1)
{
  v2 = v1;
  v4 = type metadata accessor for VASingleEnrollmentData();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = ((*v1)[24])(&v30);
  v9.super.super.isa = a1;
  VAfp16AVAudioBufferToFP32Array(buffer:floatBuffer:)(v9, v10);
  if (v11)
  {
    return v8(&v30, 1);
  }

  v13 = v8(&v30, 0);
  v14 = ((*v2)[22])(v13);
  v15 = ((*v2)[18])(&v30);
  sub_272207944(v14);
  v16 = v15(&v30, 0);
  v17 = (*(*v2[2] + 168))(v16);
  v18 = (*v2)[16];
  v19 = *(v18() + 16);

  if (v17 >= v19)
  {
    goto LABEL_9;
  }

  if (v17 < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  result = (v18)(result);
  v20 = *(result + 16);
  if (v20 < v17)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v20 != v17)
  {
    sub_272241D34(result, result + 32, 0, (2 * v17) | 1);
    v22 = v21;

    result = v22;
  }

  result = ((*v2)[17])(result);
LABEL_9:
  v23 = *((v18)(result) + 16);

  if (v23 == v17)
  {
    ((*v2)[19])(&v30, result);
    if (*(&v31 + 1))
    {
      sub_27221629C(&v30, v27);
      sub_27227B688(&v30);
      v24 = v28;
      v25 = v29;
      sub_27220300C(v27, v28);
      ((*v2)[28])();
      (*(v25 + 8))(v7, v24, v25);
      sub_272204FB8(v7);
      sub_2722039C8(v27);
    }

    else
    {
      sub_27227B688(&v30);
    }

    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    return ((*v2)[20])(&v30);
  }

  return result;
}

uint64_t sub_2722E5074@<X0>(uint64_t a1@<X8>)
{
  v3 = (*v1)[16];
  v4 = *(v3() + 16);

  v6 = *(*v1[2] + 168);
  v7 = v6(v5);
  v8 = *(v3() + 16);

  v10 = v8 >= v6(v9);

  return sub_2722AFC10(v4, v7, v10, a1);
}

void sub_2722E5160(uint64_t a1@<X8>)
{
  v3 = v1;
  v54 = a1;
  v4 = sub_272376E5C();
  v59 = *(v4 - 8);
  v5 = *(v59 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1[2];
  v10 = *(*v1 + 128);
  v11 = *v1 + 128;
  v10(v6);
  v12 = (*(*v9 + 160))();

  if (!v2)
  {
    v53 = v8;
    v57 = v10;
    v58 = v11;
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      v51 = v3;
      v52 = 0;
      v49 = v4;
      v50 = v12;
      v15 = &selRef_environment;
      v16 = [v13 shape];
      sub_27223EE54();
      v17 = sub_272377AFC();

      if ((v17 & 0xC000000000000001) != 0)
      {
        goto LABEL_34;
      }

      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        for (i = *(v17 + 32); ; i = MEMORY[0x2743C5370](0, v17))
        {

          v19 = [v14 v15[4]];
          v20 = sub_272377AFC();

          if ((v20 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x2743C5370](1, v20);
            v21 = v57;
          }

          else
          {
            v21 = v57;
            if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
            {
              goto LABEL_38;
            }

            v22 = *(v20 + 40);
          }

          v17 = &selRef_environment;
          v23 = [i integerValue];
          if ((v23 & 0x8000000000000000) != 0)
          {
            break;
          }

          v15 = v23;
          v48 = i;
          v24 = v59;
          if (!v23)
          {
            v60 = MEMORY[0x277D84F90];
LABEL_29:
            v38 = v51;
            v39 = v53;
            (*(v24 + 16))(v53, v51 + OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_id, v49);
            v40 = v22;
            v41 = v38[3];
            v42 = v38[4];

            v44 = v21(v43);
            v62 = 1;
            v45 = sub_2722AFA60();
            v46 = sub_2722AFA60();
            sub_2722AFA68(v39, v60, v41, v42, v44, v45, v46, &v62, v54);
            swift_unknownObjectRelease();

            return;
          }

          v25 = 0;
          v61 = xmmword_27237E500;
          v60 = MEMORY[0x277D84F90];
          v55 = v23;
          v56 = v22;
          while (1)
          {
            v26 = [v22 *(v17 + 1224)];
            if ((v26 & 0x8000000000000000) != 0)
            {
              break;
            }

            if (v26)
            {
              v15 = v26;
              v27 = sub_272377B5C();
              *(v27 + 16) = v15;
              bzero((v27 + 32), 4 * v15);
            }

            else
            {
              v27 = MEMORY[0x277D84F90];
            }

            v28 = [v22 *(v17 + 1224)];
            if ((v28 & 0x8000000000000000) != 0)
            {
              goto LABEL_33;
            }

            v15 = v28;
            if (v28)
            {
              v29 = 0;
              while (1)
              {
                sub_2721F065C(&qword_280882098, &qword_27237E8B0);
                v30 = swift_allocObject();
                *(v30 + 16) = v61;
                *(v30 + 32) = sub_272377DBC();
                *(v30 + 40) = sub_272377DBC();
                v31 = sub_272377AEC();

                v17 = [v14 objectForKeyedSubscript_];

                [v17 floatValue];
                v33 = v32;

                if (v29 >= *(v27 + 16))
                {
                  break;
                }

                *(v27 + 32 + 4 * v29++) = v33;
                if (v15 == v29)
                {
                  goto LABEL_21;
                }
              }

              __break(1u);
              break;
            }

LABEL_21:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v60 = sub_272241E04(0, v60[2] + 1, 1, v60);
            }

            v21 = v57;
            v35 = v60[2];
            v34 = v60[3];
            v22 = v56;
            if (v35 >= v34 >> 1)
            {
              v60 = sub_272241E04((v34 > 1), v35 + 1, 1, v60);
            }

            v25 = (v25 + 1);
            v24 = v59;
            v36 = v60;
            v60[2] = v35 + 1;
            v36[v35 + 4] = v27;
            v15 = v55;
            v17 = 0x279E41000;
            if (v25 == v55)
            {
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          ;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_38:
      __break(1u);
    }

    else
    {
      swift_unknownObjectRelease();
      sub_2722032B4();
      swift_allocError();
      *v37 = 0xD00000000000001ELL;
      v37[1] = 0x800000027238B8F0;
      swift_willThrow();
    }
  }
}

unint64_t sub_2722E56C0()
{
  result = (*(**(v0 + 16) + 168))();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

char *VAA2AAudioEnroller.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 4);

  v3 = *(v0 + 5);

  v4 = OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_id;
  v5 = sub_272376E5C();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  sub_27227B688(&v0[OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_delegate]);
  v6 = *&v0[OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_floatArr];

  return v0;
}

uint64_t VAA2AAudioEnroller.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 4);

  v3 = *(v0 + 5);

  v4 = OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_id;
  v5 = sub_272376E5C();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  sub_27227B688(&v0[OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_delegate]);
  v6 = *&v0[OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_floatArr];

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2722E59DC(uint64_t a1)
{
  swift_beginAccess();
  sub_2722E48E4(a1, v1 + 24);
  return swift_endAccess();
}

uint64_t VAA2AAudioEnrollerFactory.__allocating_init(encoder:delegate:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0;
  *(v4 + 24) = 0u;
  *(v4 + 16) = a1;
  swift_beginAccess();
  sub_2722E48E4(a2, v4 + 24);
  swift_endAccess();
  return v4;
}

uint64_t VAA2AAudioEnrollerFactory.init(encoder:delegate:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 16) = a1;
  swift_beginAccess();
  sub_2722E48E4(a2, v2 + 24);
  swift_endAccess();
  return v2;
}

uint64_t sub_2722E5B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_272376E5C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = (*(*v3 + 96))(v10);
  v14 = *(*v3 + 120);

  v14(v25, v15);
  v16 = type metadata accessor for VAA2AAudioEnroller();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v20 = v19 + OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_delegate;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *(v20 + 4) = 0;
  v21 = MEMORY[0x277D84F90];
  *(v19 + OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_floatArr) = MEMORY[0x277D84F90];
  v19[2] = v13;
  v19[3] = a1;
  v19[4] = a2;
  v19[5] = v21;
  sub_272376E4C();
  (*(v8 + 32))(v19 + OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_id, v12, v7);
  v22 = OBJC_IVAR____TtC12VoiceActions18VAA2AAudioEnroller_delegate;
  swift_beginAccess();
  sub_2722E48E4(v25, v19 + v22);
  result = swift_endAccess();
  a3[3] = v16;
  a3[4] = &protocol witness table for VAA2AAudioEnroller;
  *a3 = v19;
  return result;
}

uint64_t VAA2AAudioEnrollerFactory.deinit()
{
  v1 = *(v0 + 16);

  sub_27227B688(v0 + 24);
  return v0;
}

uint64_t VAA2AAudioEnrollerFactory.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  sub_27227B688(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VAA2AAudioEnroller()
{
  result = qword_28088ECF0;
  if (!qword_28088ECF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2722E5E0C()
{
  result = sub_272376E5C();
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

uint64_t sub_2722E6028()
{
  v1 = (v0 + OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_modelFilename);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_2722E6080(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_modelFilename);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2722E60F8()
{
  v1 = OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_samplesPerPredictionWindow;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2722E613C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_samplesPerPredictionWindow;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2722E618C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_modelInputSize;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2722E61D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_modelInputSize;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2722E6220()
{
  v1 = OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_receptiveFieldLength;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2722E6264(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_receptiveFieldLength;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2722E62B4()
{
  v1 = OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_receptiveFieldStride;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2722E62F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_receptiveFieldStride;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2722E6348()
{
  v1 = OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_useCMVN;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2722E638C(char a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_useCMVN;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2722E640C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_vadGated;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2722E6450(char a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_vadGated;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2722E64A0()
{
  v1 = *((*((*MEMORY[0x277D85000] & *v0) + 0xB8))() + 16);

  return v1;
}

uint64_t sub_2722E64FC()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x190))();
  v2 = __OFADD__(v1, 3);
  result = v1 + 3;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2722E6558(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x726F4E726579616CLL;
    v6 = 0x726F4E726579616CLL;
    if (a1 != 8)
    {
      v6 = 0x6465746147646176;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000014;
    if (a1 != 5)
    {
      v7 = 0x4E564D43657375;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6C69466C65646F6DLL;
    v2 = 0xD00000000000001ALL;
    v3 = 0x706E496C65646F6DLL;
    if (a1 != 3)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2722E66DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2722E7B10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2722E6710(uint64_t a1)
{
  v2 = sub_2722E87B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2722E674C(uint64_t a1)
{
  v2 = sub_2722E87B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VAFixedSpotterModelConfiguration.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280882B30, &qword_272383BA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v26 - v8;
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_2722E87B8();
  sub_2723787AC();
  if (v2)
  {
    sub_2722039C8(a1);
LABEL_4:
    type metadata accessor for VAFixedSpotterModelConfiguration();
    swift_deallocPartialClassInstance();
    return v3;
  }

  LOBYTE(v30) = 0;
  v11 = sub_27237843C();
  if (v12)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  v15 = 0xE000000000000000;
  if (v12)
  {
    v15 = v12;
  }

  v16 = &v1[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_modelFilename];
  *v16 = v14;
  v16[1] = v15;
  LOBYTE(v30) = 2;
  result = sub_27237847C();
  if (v17)
  {
    __break(1u);
    goto LABEL_23;
  }

  *&v1[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_samplesPerPredictionWindow] = result;
  LOBYTE(v30) = 3;
  result = sub_27237847C();
  if (v18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *&v1[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_modelInputSize] = result;
  sub_2721F065C(&qword_280882B38, &unk_272383BA8);
  v29 = 1;
  sub_2722E8830(&qword_280882B40);
  result = sub_27237848C();
  if (!v30)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *&v1[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_keywordsTrainedFor] = v30;
  LOBYTE(v30) = 4;
  result = sub_27237847C();
  if (v19)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *&v1[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_receptiveFieldLength] = result;
  LOBYTE(v30) = 5;
  result = sub_27237847C();
  if (v20)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *&v1[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_receptiveFieldStride] = result;
  LOBYTE(v30) = 6;
  result = sub_27237844C();
  v27 = 0;
  if (result == 2)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v1[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_useCMVN] = result & 1;
  sub_2721F065C(&qword_280881858, &unk_27237C260);
  v29 = 7;
  v26[1] = sub_2722B00A0(&qword_280882820);
  v21 = v27;
  result = sub_27237848C();
  if (v21)
  {
    (*(v6 + 8))(v9, v5);
    sub_2722039C8(a1);
    v22 = *&v1[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_modelFilename + 8];

    v23 = *&v1[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_keywordsTrainedFor];

    goto LABEL_4;
  }

  if (!v30)
  {
    goto LABEL_28;
  }

  *&v1[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_layerNormScale] = v30;
  v29 = 8;
  result = sub_27237848C();
  if (v30)
  {
    *&v1[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_layerNormOffset] = v30;
    LOBYTE(v30) = 9;
    v24 = sub_27237844C();
    (*(v6 + 8))(v9, v5);
    v3[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_vadGated] = v24 & 1;
    v25 = type metadata accessor for VAFixedSpotterModelConfiguration();
    v28.receiver = v3;
    v28.super_class = v25;
    v3 = objc_msgSendSuper2(&v28, sel_init);
    sub_2722039C8(a1);
    return v3;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2722E6DF0(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280882B48, &qword_272383BB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_2722E87B8();
  v11 = sub_2723787CC();
  v12 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0xA0))(v11);
  LOBYTE(v26) = 0;
  sub_27237858C();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {

    (*((*v12 & *v3) + 0xD0))(v14);
    LOBYTE(v26) = 2;
    v15 = sub_2723785CC();
    (*((*v12 & *v3) + 0xE8))(v15);
    LOBYTE(v26) = 3;
    v16 = sub_2723785CC();
    v26 = (*((*v12 & *v3) + 0xB8))(v16);
    v25 = 1;
    sub_2721F065C(&qword_280882B38, &unk_272383BA8);
    sub_2722E8830(&qword_280882B50);
    sub_2723785DC();

    (*((*v12 & *v3) + 0x100))(v17);
    LOBYTE(v26) = 4;
    v18 = sub_2723785CC();
    (*((*v12 & *v3) + 0x118))(v18);
    LOBYTE(v26) = 5;
    v19 = sub_2723785CC();
    (*((*v12 & *v3) + 0x130))(v19);
    LOBYTE(v26) = 6;
    v20 = sub_27237859C();
    v26 = (*((*v12 & *v3) + 0x148))(v20);
    v25 = 7;
    v21 = sub_2721F065C(&qword_280881858, &unk_27237C260);
    sub_2722B00A0(&qword_2808827F0);
    v24 = v21;
    sub_2723785DC();

    v26 = (*((*v12 & *v3) + 0x160))(v22);
    v25 = 8;
    sub_2723785DC();

    (*((*v12 & *v3) + 0x178))(v23);
    LOBYTE(v26) = 9;
    sub_27237859C();
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_2722E7418(uint64_t a1, uint64_t a2)
{
  sub_2722E88A0(&qword_280882B58, a2, type metadata accessor for VAFixedSpotterModelConfiguration);
  result = sub_2722E74F0();
  if (v4)
  {
    if (result == 0x8000000000000000)
    {
      return 0xD00000000000001CLL;
    }

    else
    {
      v5 = result;
      v6 = v3;
      sub_27237836C();
      sub_27222F3E8(v5, v6, 1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_2722E74F0()
{
  v0 = sub_27237788C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_272376AFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = sub_272376B3C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_272376B2C();
  sub_2721F065C(&qword_280881C70, &unk_27237D640);
  v8 = *(v3 + 72);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_27237AF90;
  sub_272376ADC();
  sub_272376ACC();
  sub_2722E88A0(&qword_280881C78, 255, MEMORY[0x277CC8718]);
  sub_2721F065C(&qword_280881C80, qword_27237D8B0);
  sub_27222F414();
  sub_27237815C();
  sub_272376B0C();
  type metadata accessor for VAFixedSpotterModelConfiguration();
  sub_2722E88A0(&qword_280882B60, v10, type metadata accessor for VAFixedSpotterModelConfiguration);
  v11 = sub_272376B1C();
  v13 = v12;
  sub_27237787C();
  v14 = sub_27237784C();
  if (v15)
  {
    v16 = v14;
    sub_2721F05C8(v11, v13);

    return v16;
  }

  else
  {
    sub_2721F05C8(v11, v13);

    return 0;
  }
}

id VAFixedSpotterModelConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VAFixedSpotterModelConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VAFixedSpotterModelConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2722E7918@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 424))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id static VAFixedSpotterModelConfiguration.buildForFixedA2T(modelFilepath:modelConfigJsonFilepath:vadGated:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = objc_allocWithZone(type metadata accessor for VAFixedSpotterModelConfiguration());

  return sub_2722E83C8(a1, a2, a3, a4);
}

id static VAFixedSpotterModelConfiguration.buildForFixedA2TDefault(vadGated:)()
{
  v0 = sub_27235D4A8();
  v1 = *v0;
  v2 = v0[1];

  v3 = sub_27235D4D0();
  v4 = *v3;
  v5 = v3[1];
  v6 = objc_allocWithZone(type metadata accessor for VAFixedSpotterModelConfiguration());

  return sub_2722E83C8(v1, v2, v4, v5);
}

uint64_t sub_2722E7B10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C69466C65646F6DLL && a2 == 0xED0000656D616E65;
  if (v4 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000027238F340 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000027238F360 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x706E496C65646F6DLL && a2 == 0xEE00657A69537475 || (sub_27237865C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000272389E50 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000272389E70 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4E564D43657375 && a2 == 0xE700000000000000 || (sub_27237865C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726F4E726579616CLL && a2 == 0xEE00656C6163536DLL || (sub_27237865C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x726F4E726579616CLL && a2 == 0xEF74657366664F6DLL || (sub_27237865C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6465746147646176 && a2 == 0xE800000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_27237865C();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_2722E7E5C(uint64_t a1, unint64_t a2)
{
  v33 = sub_27237728C();
  v37 = *(v33 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v33);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [v6 defaultManager];
  v8 = sub_2723777FC();
  v9 = [v7 fileExistsAtPath_];

  if (v9)
  {
  }

  else
  {
    v10 = sub_2723777FC();
    v11 = [v10 pathExtension];

    sub_27237782C();
    v12 = sub_2723777FC();
    v13 = [v12 stringByDeletingPathExtension];

    sub_27237782C();
    sub_2722560E0();
    v15 = v14;
    v17 = v16;

    if (!v17)
    {
      v35 = 0;
      v36 = 0xE000000000000000;
      sub_27237820C();

      v35 = 0xD00000000000002DLL;
      v36 = 0x800000027238F3F0;
      MEMORY[0x2743C4AD0](a1, a2);
LABEL_10:
      v29 = v35;
      v30 = v36;
      sub_2722032B4();
      swift_allocError();
      *v31 = v29;
      v31[1] = v30;
      swift_willThrow();
      return a1;
    }

    a1 = v15;
    a2 = v17;
  }

  v18 = [v6 defaultManager];
  v19 = sub_2723777FC();
  v20 = [v18 isReadableFileAtPath_];

  v21 = v37;
  v22 = v34;
  if ((v20 & 1) == 0)
  {
    v23 = sub_2722C389C();
    v24 = v33;
    (*(v21 + 16))(v22, v23, v33);

    v25 = sub_27237725C();
    v26 = sub_272377E8C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_2721FFD04(a1, a2, &v35);
      _os_log_impl(&dword_2721E4000, v25, v26, "File not readable in %s", v27, 0xCu);
      sub_2722039C8(v28);
      MEMORY[0x2743C69C0](v28, -1, -1);
      MEMORY[0x2743C69C0](v27, -1, -1);
    }

    (*(v21 + 8))(v22, v24);
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_27237820C();

    v35 = 0xD000000000000023;
    v36 = 0x800000027238F420;
    MEMORY[0x2743C4AD0](a1, a2);

    goto LABEL_10;
  }

  return a1;
}

unint64_t sub_2722E827C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for VAFixedSpotterModelConfiguration();
  v5 = sub_2722E88A0(&qword_280882B58, v4, type metadata accessor for VAFixedSpotterModelConfiguration);
  sub_272254F78(v5, &v10);
  v6 = v10;
  if (v11)
  {
    if (v10 == 0x8000000000000000)
    {
      sub_27237820C();

      MEMORY[0x2743C4AD0](a1, a2);
      v6 = 0x800000027238F3C0;
      sub_2722032B4();
      swift_allocError();
      *v7 = 0xD000000000000029;
      v7[1] = 0x800000027238F3C0;
    }

    else
    {
      sub_272204304();
      swift_allocError();
      *v8 = v6;
    }

    swift_willThrow();
  }

  return v6;
}

id sub_2722E83C8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v4;
  if (a4)
  {
    v9 = a4;
  }

  else
  {
    v24 = a1;
    v25 = a2;

    MEMORY[0x2743C4AD0](0x2E6769666E6F632FLL, 0xEC0000006E6F736ALL);
    a3 = v24;
    v9 = v25;
  }

  v10 = sub_2722E7E5C(a3, v9);
  if (v5)
  {

    type metadata accessor for VAFixedSpotterModelConfiguration();
    return swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v11;
    v13 = v10;

    v14 = sub_2722E7E5C(a1, a2);
    v16 = v15;
    v17 = v14;

    v18 = sub_2722E827C(v13, v12);

    v20 = &v6[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_modelFilename];
    *v20 = v17;
    v20[1] = v16;
    v21 = MEMORY[0x277D85000];
    *&v6[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_samplesPerPredictionWindow] = (*((*MEMORY[0x277D85000] & *v18) + 0xD0))(v19);
    *&v6[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_keywordsTrainedFor] = (*((*v21 & *v18) + 0xB8))();
    *&v6[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_modelInputSize] = (*((*v21 & *v18) + 0xE8))();
    *&v6[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_receptiveFieldLength] = (*((*v21 & *v18) + 0x100))();
    *&v6[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_receptiveFieldStride] = (*((*v21 & *v18) + 0x118))();
    v6[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_useCMVN] = (*((*v21 & *v18) + 0x130))() & 1;
    *&v6[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_layerNormScale] = (*((*v21 & *v18) + 0x148))();
    *&v6[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_layerNormOffset] = (*((*v21 & *v18) + 0x160))();
    LOBYTE(v21) = (*((*v21 & *v18) + 0x178))();

    v6[OBJC_IVAR____TtC12VoiceActions32VAFixedSpotterModelConfiguration_vadGated] = v21 & 1;
    v23.receiver = v6;
    v23.super_class = type metadata accessor for VAFixedSpotterModelConfiguration();
    return objc_msgSendSuper2(&v23, sel_init);
  }
}

unint64_t sub_2722E87B8()
{
  result = qword_28088ED00[0];
  if (!qword_28088ED00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088ED00);
  }

  return result;
}

uint64_t sub_2722E8830(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(&qword_280882B38, &unk_272383BA8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2722E88A0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for VAFixedSpotterModelConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for VAFixedSpotterModelConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2722E8B44()
{
  result = qword_28088EF10[0];
  if (!qword_28088EF10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088EF10);
  }

  return result;
}

unint64_t sub_2722E8B9C()
{
  result = qword_28088F020;
  if (!qword_28088F020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088F020);
  }

  return result;
}

unint64_t sub_2722E8BF4()
{
  result = qword_28088F028[0];
  if (!qword_28088F028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088F028);
  }

  return result;
}

uint64_t sub_2722E8C48()
{
  v1 = OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_processedAudioSamples;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2722E8C8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_processedAudioSamples;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2722E8D3C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_newSamples;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2722E8D80(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_newSamples;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2722E8F48()
{
  v1 = OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_endpointer;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_2722E903C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

void *VAAVSAudioEnroller.__allocating_init(encoder:keywordIdentifier:endpointerConfig:delegate:maxSamplesPerEnrollment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v12 = *(v6 + 48);
  v13 = *(v6 + 52);
  v14 = swift_allocObject();
  v15 = *a4;
  v16 = a4[1];
  v17 = *(a4 + 4);
  v18 = a4[3];
  v19 = a4[4];
  v20 = MEMORY[0x277D84F90];
  *(v14 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_embeddings) = MEMORY[0x277D84F90];
  *(v14 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_silProbs) = v20;
  *(v14 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_floatArr) = v20;
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = v20;

  sub_272376E4C();
  sub_272277044(a5, v14 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_delegate);
  *(v14 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_maxSamplesPerEnrollment) = a6;
  *(v14 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_processedAudioSamples) = 0;
  *(v14 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_newSamples) = 0;
  type metadata accessor for AVSEndpointer();
  v25[0] = v15;
  v25[1] = v16;
  v26 = v17;
  v27 = v18;
  v28 = v19;
  AVSEndpointer.__allocating_init(config:)(v25);
  v22 = v21;

  sub_27227B688(a5);
  *(v14 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_endpointer) = v22;
  return v14;
}

void *VAAVSAudioEnroller.init(encoder:keywordIdentifier:endpointerConfig:delegate:maxSamplesPerEnrollment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v28 = a5;
  v29 = a6;
  v12 = sub_272376E5C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a4;
  v17 = a4[1];
  v19 = *(a4 + 4);
  v20 = a4[3];
  v21 = a4[4];
  v27 = v20;
  v22 = MEMORY[0x277D84F90];
  *(v7 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_embeddings) = MEMORY[0x277D84F90];
  *(v7 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_silProbs) = v22;
  *(v7 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_floatArr) = v22;
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v7[5] = v22;

  sub_272376E4C();
  (*(v13 + 32))(v7 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_id, v16, v12);
  v23 = v28;
  sub_272277044(v28, v7 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_delegate);
  *(v7 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_maxSamplesPerEnrollment) = v29;
  *(v7 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_processedAudioSamples) = 0;
  *(v7 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_newSamples) = 0;
  type metadata accessor for AVSEndpointer();
  v30[0] = v18;
  v30[1] = v17;
  v31 = v19;
  v32 = v27;
  v33 = v21;
  AVSEndpointer.__allocating_init(config:)(v30);
  v25 = v24;

  sub_27227B688(v23);
  *(v7 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_endpointer) = v25;
  return v7;
}

uint64_t sub_2722E9424(objc_class *a1)
{
  v3 = (*(*v1 + 336))(v21);
  v4.super.super.isa = a1;
  VAfp16AVAudioBufferToFP32Array(buffer:floatBuffer:)(v4, v5);
  if (v6)
  {
    return v3(v21, 1);
  }

  v8 = v3(v21, 0);
  v9 = (*v1 + 320);
  v10 = *v9;
  v11 = *((*v9)(v8) + 16);

  v20 = v11;
  if (v11)
  {
    v12 = 0;
    while (1)
    {
      v13 = v12 + 640;
      if (__OFADD__(v12, 640))
      {
        break;
      }

      v11 = *(v10(result) + 16);

      if (v11 >= v13)
      {
        v11 = v12 + 640;
      }

      if (v11 < v12)
      {
        goto LABEL_24;
      }

      result = v10(result);
      v14 = *(result + 16);
      if (v14 < v12 || v14 < v11)
      {
        goto LABEL_25;
      }

      v16 = sub_2722E9620(result, result + 32, v12, (2 * v11) | 1);

      if (v16)
      {
        return result;
      }

      v12 += 640;
      if (v13 >= v20)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_15:
  v17 = *(v10(result) + 16);

  if (v17 < v11)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  result = v10(result);
  v18 = *(result + 16);
  if (v18 < v11 || v18 < v17)
  {
    goto LABEL_27;
  }

  sub_2722E9620(result, result + 32, v11, (2 * v17) | 1);
}

uint64_t (*sub_2722E9620(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4))(uint64_t *, void)
{
  v5 = v4;
  v9 = type metadata accessor for VASingleEnrollmentData();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v49 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_27237728C();
  v51 = *(v56 - 8);
  v12 = *(v51 + 64);
  v13 = MEMORY[0x28223BE20](v56);
  v48 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - v15;
  v17 = (*(*v4 + 192))(v52);
  v18 = swift_unknownObjectRetain();
  sub_27222291C(v18, a2, a3, a4);
  result = v17(v52, 0);
  v20 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_22;
  }

  result = (*(*v4 + 240))(v52);
  if (__OFADD__(*v21, v20))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *v21 += v20;
  v22 = result(v52, 0);
  v23 = *(*v4 + 176);
  v24 = *((v23)(v22) + 16);

  v26 = *(v4 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_maxSamplesPerEnrollment);
  if (v26 < v24)
  {
    v27 = sub_2722C389C();
    (*(v51 + 16))(v16, v27, v56);

    v28 = sub_27237725C();
    v29 = sub_272377E8C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      v31 = *(v23() + 16);

      if (__OFSUB__(v31, v26))
      {
LABEL_24:
        __break(1u);
        return result;
      }

      *(v30 + 4) = v31 - v26;

      _os_log_impl(&dword_2721E4000, v28, v29, "Enrollment is running long, need to reduce %ld samples", v30, 0xCu);
      MEMORY[0x2743C69C0](v30, -1, -1);
    }

    else
    {
    }

    v32 = (*(v51 + 8))(v16, v56);
    v33 = (v23)(v32);
    v34 = (*(*v5 + 200))();
    v35 = __OFSUB__(v26, v34);
    result = (v26 - v34);
    if (!v35)
    {
      v36 = sub_272222744(result, v33);
      (*(*v5 + 184))(v36);
      v25 = (*(*v5 + 208))(0);
      goto LABEL_10;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_10:
  (*(*v5 + 368))(v52, v25);
  v37 = v53;
  if (v53 == 1)
  {
    v38 = sub_2722C389C();
    v39 = v48;
    (*(v51 + 16))(v48, v38, v56);
    v40 = sub_27237725C();
    v41 = sub_272377E7C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_2721E4000, v40, v41, "Enrollment audio capture completed", v42, 2u);
      MEMORY[0x2743C69C0](v42, -1, -1);
    }

    (*(v51 + 8))(v39, v56);
    sub_272277044(v5 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_delegate, v52);
    v43 = v54;
    v44 = v49;
    if (v54)
    {
      v45 = v55;
      sub_27220300C(v52, v54);
      v46 = v50;
      (*(*v5 + 384))();
      if (!v46)
      {
        (*(v45 + 8))(v44, v43, v45);
        sub_2722EBA90(v44, type metadata accessor for VASingleEnrollmentData);
      }

      sub_2722039C8(v52);
    }

    else
    {
      sub_27227B688(v52);
    }
  }

  return v37;
}

uint64_t sub_2722E9BDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_27237728C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  (*(*v1 + 376))(v8);
  v11 = 1;
  v13 = v12;
  v24 = a1;
  v14 = (*(*v1 + 296))();
  v15 = (*(*v14 + 440))(v13);

  if (v15)
  {
    v17 = sub_2722C389C();
    (*(v5 + 16))(v10, v17, v4);
    v18 = sub_27237725C();
    v19 = sub_272377E7C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      *(v20 + 4) = 1;
      _os_log_impl(&dword_2721E4000, v18, v19, "%{BOOL}d", v20, 8u);
      MEMORY[0x2743C69C0](v20, -1, -1);
    }

    v21 = v24;

    v16 = (*(v5 + 8))(v10, v4);
  }

  else
  {
    v11 = 0;
    v21 = v24;
  }

  v22 = *((*(*v2 + 176))(v16) + 16);

  return sub_2722AFC10(v22, *(v2 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_maxSamplesPerEnrollment), v11, v21);
}

uint64_t sub_2722E9F5C()
{
  v2 = v1;
  v3 = v0;
  type metadata accessor for VAStrideConfiguration();
  v4 = static VAStrideConfiguration.forFlexibleAVS()();
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v4) + 0xB8))();
  v7 = (*((*v5 & *v4) + 0xD0))();
  v8 = ((*v0)[25])();
  v46 = (*v0)[22];
  v9 = *(v46() + 16);

  v48 = v9 - v6;
  if (__OFSUB__(v9, v6))
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    result = swift_unknownObjectRelease();
    __break(1u);
    return result;
  }

  if (!v7)
  {
    goto LABEL_51;
  }

  v41 = v4;
  v11 = v48 >= v8;
  if (v7 > 0)
  {
    v11 = v8 >= v48;
  }

  if (!v11)
  {
    v12 = v6;
    v43 = v6;
    v44 = v7;
    v40 = 4 * v6;
    while (1)
    {
      v15 = __OFADD__(v8, v7) ? ((v8 + v7) >> 63) ^ 0x8000000000000000 : v8 + v7;
      v16 = v8 + v12;
      if (__OFADD__(v8, v12))
      {
        break;
      }

      if (v16 < v8)
      {
        goto LABEL_46;
      }

      v17 = (v46)(v10);
      if (v8 < 0)
      {
        goto LABEL_47;
      }

      v18 = v17;
      v19 = *(v17 + 16);
      if (v19 < v8 || v19 < v16)
      {
        goto LABEL_48;
      }

      if (v19 != v12)
      {
        v36 = MEMORY[0x277D84F90];
        if (v16 != v8)
        {
          if (v43 < 1)
          {
            v37 = v40;
          }

          else
          {
            sub_2721F065C(&qword_280881848, &unk_27237C250);
            v37 = v40;
            v36 = swift_allocObject();
            v38 = j__malloc_size(v36);
            v39 = v38 - 32;
            if (v38 < 32)
            {
              v39 = v38 - 29;
            }

            v36[2] = v43;
            v36[3] = 2 * (v39 >> 2);
          }

          memcpy(v36 + 4, v18 + 4 * v8 + 32, v37);
        }

        v18 = v36;
        v12 = v43;
      }

      if (v18[2] == v12)
      {
        (*(*v3[2] + 264))(v18);
        if (v2)
        {

          return v12;
        }

        type metadata accessor for EncoderPredictionAVS();
        v21 = swift_dynamicCastClass();
        if (!v21)
        {
          goto LABEL_52;
        }

        v22 = v21;
        v23 = *(v21 + 16);
        if (*(v23 + 16))
        {
          v24 = (*v3)[33];
          v25 = *(v21 + 16);

          v45 = v24(v47);
          v27 = v26;
          v28 = *v26;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v27 = v28;
          v42 = v27;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v28 = sub_272241E04(0, v28[2] + 1, 1, v28);
            *v27 = v28;
          }

          v31 = v28[2];
          v30 = v28[3];
          if (v31 >= v30 >> 1)
          {
            v28 = sub_272241E04((v30 > 1), v31 + 1, 1, v28);
            *v42 = v28;
          }

          v28[2] = v31 + 1;
          v28[v31 + 4] = v23;
          v45(v47, 0);
          swift_unknownObjectRetain();

          v32 = *(v22 + 24);

          swift_unknownObjectRelease();
          v33 = ((*v3)[36])(v47);
          sub_272207944(v32);
          v33(v47, 0);
          v12 = v43;
        }

        else
        {
        }

        v34 = ((*v3)[27])(v47);
        v7 = v44;
        if (__OFADD__(*v35, v44))
        {
          goto LABEL_49;
        }

        *v35 += v44;
        v34(v47, 0);
        v10 = swift_unknownObjectRelease();
      }

      else
      {
      }

      v14 = v48 >= v15;
      if (v7 > 0)
      {
        v14 = v15 >= v48;
      }

      v8 = v15;
      if (v14)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_6:
  v12 = ((*v3)[31])(v10);
  ((*v3)[34])();

  return v12;
}

uint64_t sub_2722EA4EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_272376E5C();
  v5 = *(v4 - 8);
  v95 = v4;
  v96 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_27237728C();
  v93 = *(v9 - 8);
  v94 = v9;
  v10 = *(v93 + 8);
  v11 = MEMORY[0x28223BE20](v9);
  v90 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v91 = &v81 - v14;
  v15 = (*v1 + 272);
  v16 = *v15;
  (*v15)(v13);

  v88 = v16;
  v89 = v15;
  v18 = (v16)(v17);
  v19 = (*v1 + 296);
  v20 = *v19;
  v21 = (*v19)();
  v22 = (*(*v21 + 216))(v21);

  v24 = (v20)(v23);
  v25 = (*(*v24 + 240))(v24);

  v26 = sub_2722436FC();
  v27 = sub_272243704();
  v28 = sub_272243714();
  v29 = sub_27224371C(v18, v25, v26, v28, v22, v27);
  v31 = v30;

  v33 = *(*v2 + 248);
  v92 = *v2 + 248;
  v34 = v33(v32);
  v35 = *(v29 + 2);
  v97 = a1;
  v98 = v34;
  if (!v35 || !*(v31 + 16))
  {
    v99 = v31;

    v65 = 2;
    v41 = -1;
    v39 = -1;
    goto LABEL_28;
  }

  v86 = v33;
  v87 = v8;
  v36 = sub_27223FF5C();
  v37 = sub_272243EC0(v29, v31, v36);
  v8 = v38;

  v39 = sub_272244258(v37, v8);
  v41 = v40;

  v42 = swift_bridgeObjectRelease_n();
  v99 = v41;
  v43 = *(v41 + 16);
  if (!v43)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (!*(v39 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v8 = (v99 + 32);
  v44 = *(v99 + 32 + 8 * v43 - 8);
  v45 = *(v39 + 32);
  v46 = v44 - v45;
  if (__OFSUB__(v44, v45))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v47 = (v20)(v42);
  v48 = (*(*v47 + 192))(v47);

  if (v48 >= v46)
  {

    v65 = 2;
    v41 = -1;
    v39 = -1;
    v8 = v87;
    goto LABEL_28;
  }

  v41 = *(v39 + 32);

  v49 = *(v99 + 16);
  if (!v49)
  {
    goto LABEL_32;
  }

  v8 = *&v8[8 * v49 - 8];
  v50 = *(v20)(v42);
  v39 = (*(v50 + 288))();

  v51 = __OFSUB__(v41, v39);
  v41 -= v39;
  v52 = v94;
  if (v51)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v53 = (v20)(v42);
  v39 = (*(*v53 + 312))(v53);

  v54 = &v8[v39];
  if (__OFADD__(v8, v39))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v98 = v41;
  v39 = v41 & ~(v41 >> 63);
  v55 = *(v86(v42) + 16);

  if (v55 >= v54)
  {
    v41 = v54;
  }

  else
  {
    v41 = v55;
  }

  v85 = v41 - v39;
  v8 = v93;
  v56 = v91;
  if (__OFSUB__(v41, v39))
  {
    goto LABEL_35;
  }

  v57 = sub_2722C389C();
  v58 = *(v8 + 2);
  v83 = v57;
  v84 = v8 + 16;
  v82 = v58;
  (v58)(v56);

  v59 = sub_27237725C();
  v60 = sub_272377E7C();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v81 = v54;
    v62 = v100;
    *v61 = 136316162;
    *(v61 + 4) = sub_2721FFD04(v2[3], v2[4], &v100);
    *(v61 + 12) = 2048;
    *(v61 + 14) = v39;
    *(v61 + 22) = 2048;
    *(v61 + 24) = v41;
    *(v61 + 32) = 2048;
    *(v61 + 34) = v85;
    *(v61 + 42) = 2048;
    v63 = *(v88() + 16);

    *(v61 + 44) = v63;
    v52 = v94;

    _os_log_impl(&dword_2721E4000, v59, v60, "Enrollment %s clipping to [%ld , %ld](%ld total) frames from original %ld frames", v61, 0x34u);
    sub_2722039C8(v62);
    v64 = v62;
    v54 = v81;
    MEMORY[0x2743C69C0](v64, -1, -1);
    MEMORY[0x2743C69C0](v61, -1, -1);

    v19 = *(v93 + 1);
    v42 = (v19)(v91, v52);
  }

  else
  {

    v19 = *(v8 + 1);
    v42 = (v19)(v56, v52);
  }

  v8 = v87;
  if (v41 < v39)
  {
    goto LABEL_36;
  }

  v42 = v86(v42);
  v66 = *(v42 + 16);
  if (v98 > v66 || v66 < v41)
  {
    goto LABEL_37;
  }

  if (v54 < 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v66 != v85)
  {
LABEL_39:
    sub_272202180(v42, v42 + 32, v39, (2 * v41) | 1);
    v80 = v79;

    v98 = v80;
    v52 = v94;
    goto LABEL_25;
  }

  v98 = v42;
LABEL_25:
  v67 = v90;
  v82(v90, v83, v52);
  v68 = sub_27237725C();
  v69 = sub_272377E7C();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 134217984;
    *(v70 + 4) = v85;
    _os_log_impl(&dword_2721E4000, v68, v69, "[Enroll] (clusterWindows+getMetaClusters): %ld", v70, 0xCu);
    v71 = v70;
    v8 = v87;
    MEMORY[0x2743C69C0](v71, -1, -1);
  }

  (v19)(v67, v94);
  v65 = 1;
LABEL_28:
  (*(v96 + 16))(v8, v2 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_id, v95);
  v72 = v8;
  v73 = v2[3];
  v74 = v2[4];
  v75 = *(*v2 + 176);

  v77 = v75(v76);
  v101 = v65;
  sub_2722AFA68(v72, v98, v73, v74, v77, v39, v41, &v101, v97);
}

unint64_t sub_2722EAD90()
{
  result = *(v0 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_maxSamplesPerEnrollment);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

char *VAAVSAudioEnroller.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 4);

  v3 = *(v0 + 5);

  v4 = OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_id;
  v5 = sub_272376E5C();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  sub_27227B688(&v0[OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_delegate]);
  v6 = *&v0[OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_embeddings];

  v7 = *&v0[OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_silProbs];

  v8 = *&v0[OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_endpointer];

  v9 = *&v0[OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_floatArr];

  return v0;
}

uint64_t VAAVSAudioEnroller.__deallocating_deinit()
{
  VAAVSAudioEnroller.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2722EB04C(uint64_t a1)
{
  swift_beginAccess();
  sub_2722E48E4(a1, v1 + 64);
  return swift_endAccess();
}

uint64_t VAAVSAudioEnrollerFactory.__allocating_init(encoder:endpointerConfig:delegate:maxSamplesPerEnrollment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  v11 = *(a2 + 16);
  *(v10 + 80) = 0u;
  *(v10 + 96) = 0;
  *(v10 + 64) = 0u;
  *(v10 + 16) = a1;
  *(v10 + 24) = *a2;
  *(v10 + 40) = v11;
  *(v10 + 48) = *(a2 + 24);
  swift_beginAccess();

  sub_2722EB770(a3, v10 + 64);
  swift_endAccess();
  sub_27227B688(a3);
  if (a5)
  {
    a4 = *(a1 + 120);
  }

  *(v10 + 104) = a4;
  return v10;
}

uint64_t VAAVSAudioEnrollerFactory.init(encoder:endpointerConfig:delegate:maxSamplesPerEnrollment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = *(a2 + 16);
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0;
  *(v5 + 16) = a1;
  *(v5 + 24) = *a2;
  *(v5 + 40) = v10;
  *(v5 + 48) = *(a2 + 24);
  swift_beginAccess();

  sub_2722EB770(a3, v5 + 64);
  swift_endAccess();
  sub_27227B688(a3);
  if (a5)
  {
    a4 = *(a1 + 120);
  }

  *(v5 + 104) = a4;
  return v5;
}

uint64_t sub_2722EB244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v44 = a1;
  v45 = a3;
  v37 = sub_27237728C();
  v36 = *(v37 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v37);
  v35[1] = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for VARuntimeParameters();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_272376E5C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (*v3 + 112);
  v42 = *v17;
  v43 = v17;
  v18 = v42(v14);
  v19 = *(v3 + 24);
  v40 = *(v3 + 32);
  v41 = v19;
  v20 = *(v3 + 40);
  v21 = *(v3 + 48);
  v38 = *(v3 + 56);
  v39 = v21;
  (*(*v3 + 136))(v50);
  v22 = *(v3 + 104);
  v23 = type metadata accessor for VAAVSAudioEnroller();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D84F90];
  *(v26 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_embeddings) = MEMORY[0x277D84F90];
  *(v26 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_silProbs) = v27;
  *(v26 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_floatArr) = v27;
  v28 = v44;
  v26[2] = v18;
  v26[3] = v28;
  v26[4] = a2;
  v26[5] = v27;

  sub_272376E4C();
  (*(v12 + 32))(v26 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_id, v16, v11);
  sub_272277044(v50, v26 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_delegate);
  *(v26 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_maxSamplesPerEnrollment) = v22;
  *(v26 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_processedAudioSamples) = 0;
  *(v26 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_newSamples) = 0;
  type metadata accessor for AVSEndpointer();
  v46[0] = v41;
  v46[1] = v40;
  v47 = v20;
  v48 = v39;
  v49 = v38;
  AVSEndpointer.__allocating_init(config:)(v46);
  v30 = v29;

  sub_27227B688(v50);
  *(v26 + OBJC_IVAR____TtC12VoiceActions18VAAVSAudioEnroller_endpointer) = v30;
  v31 = VARuntimeParameters.init()(v10);
  v32 = v42(v31);
  (*(*v32 + 96))(v10);

  v33 = v45;
  v45[3] = v23;
  v33[4] = &protocol witness table for VAAVSAudioEnroller;
  *v33 = v26;
  return sub_2722EBA90(v10, type metadata accessor for VARuntimeParameters);
}

uint64_t VAAVSAudioEnrollerFactory.deinit()
{
  v1 = *(v0 + 16);

  sub_27227B688(v0 + 64);
  return v0;
}

uint64_t VAAVSAudioEnrollerFactory.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  sub_27227B688(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_2722EB770(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280882228, &qword_27237F4D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for VAAVSAudioEnroller()
{
  result = qword_28088F0B0;
  if (!qword_28088F0B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2722EB834()
{
  result = sub_272376E5C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_2722EBA90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2722EBAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  sub_2723019C4(a2, v9 + OBJC_IVAR____TtC12VoiceActions17VANRSpotterBridge_runtimeParams, type metadata accessor for VARuntimeParameters);
  *(v9 + OBJC_IVAR____TtC12VoiceActions17VANRSpotterBridge_kwsDelegate) = a3;
  return v9;
}

uint64_t sub_2722EBB70(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = v4;
  return MEMORY[0x2822009F8](sub_2722EBB98, 0, 0);
}

uint64_t sub_2722EBB98()
{
  v1 = *((*MEMORY[0x277D85000] & **(v0[2] + 16)) + 0xB0);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_2722EBCC8;
  v5 = v0[3];
  v4 = v0[4];

  return v7(v5, v4);
}

uint64_t sub_2722EBCC8()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2722EBE40()
{
  v1 = *((*MEMORY[0x277D85000] & **(*(v0 + 16) + 16)) + 0xB8);
  v5 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_2722EBF68;

  return v5();
}

uint64_t sub_2722EBF68()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2722EC07C()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC12VoiceActions17VANRSpotterBridge_runtimeParams;
  v3 = *((*MEMORY[0x277D85000] & **(v1 + 16)) + 0x268);
  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_2722EC1C4;

  return v7(v1 + v2);
}

uint64_t sub_2722EC1C4(char a1)
{
  v4 = *(*v2 + 24);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_2722EC2CC()
{
  sub_2723025AC(v0 + OBJC_IVAR____TtC12VoiceActions17VANRSpotterBridge_runtimeParams, type metadata accessor for VARuntimeParameters);
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions17VANRSpotterBridge_kwsDelegate);

  v2 = *(*v0 + 12);
  v3 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_2722EC35C(uint64_t a1)
{
  v4 = *(**v1 + 112);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_272219D80;

  return v8(a1);
}

uint64_t sub_2722EC4C4()
{
  v2 = *(**v0 + 128);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_272211DBC;

  return v6();
}

uint64_t sub_2722EC5D8()
{
  v2 = *(**v0 + 136);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2722EC6EC;

  return v6();
}

uint64_t sub_2722EC6EC(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t sub_2722EC7F4(void *a1)
{
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2722C389C();
  (*(v3 + 16))(v6, v7, v2);
  v8 = a1;
  v9 = sub_27237725C();
  v10 = sub_272377E8C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = sub_2723786CC();
    v15 = sub_2721FFD04(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_2721E4000, v9, v10, "VANRErrorDelegateDefault: %s", v11, 0xCu);
    sub_2722039C8(v12);
    MEMORY[0x2743C69C0](v12, -1, -1);
    MEMORY[0x2743C69C0](v11, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

char *sub_2722ECA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v15 = *(v9 + 48);
  v16 = *(v9 + 52);
  v17 = swift_allocObject();
  *(v17 + 3) = 0;
  swift_unknownObjectWeakInit();
  *(v17 + 5) = 0;
  swift_unknownObjectWeakInit();
  v18 = OBJC_IVAR____TtC12VoiceActions18VANRDelegateBridge_lastActivated;
  v19 = sub_27237832C();
  (*(*(v19 - 8) + 56))(&v17[v18], 1, 1, v19);
  sub_27237833C();
  swift_unknownObjectRelease();
  swift_beginAccess();
  *(v17 + 3) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v17 + 6) = a5;
  *(v17 + 7) = a6;
  *(v17 + 8) = a7;
  *(v17 + 9) = a8;
  return v17;
}

uint64_t sub_2722ECB30()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_2722ECB6C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2722ECBCC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_2722ECC60;
}

void sub_2722ECC60(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_2722ECCE4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 40);
  return result;
}

uint64_t sub_2722ECD20(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2722ECD80(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_2722ECE14;
}

void sub_2722ECE14(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_2722ECE98@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions18VANRDelegateBridge_lastActivated;
  swift_beginAccess();
  return sub_2721F07F4(v1 + v3, a1, &qword_280882B68, &unk_2723863E0);
}

uint64_t sub_2722ECF00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions18VANRDelegateBridge_lastActivated;
  swift_beginAccess();
  sub_27221D3B4(a1, v1 + v3, &qword_280882B68, &unk_2723863E0);
  return swift_endAccess();
}

uint64_t sub_2722ECFD0()
{
  v1 = v0;
  v28 = sub_27237832C();
  v2 = *(v28 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v28);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2721F065C(&qword_280882B68, &unk_2723863E0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v26 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v26 - v15;
  v17 = (*(*v0[8] + 784))(v14);
  if ((v19 & 1) == 0)
  {
    v26[0] = v17;
    v26[1] = v18;
    v27 = (*v0)[25];
    v27(v17, v18, v19);
    v20 = *(v2 + 48);
    v21 = v20(v16, 1, v28);
    sub_2721F40F0(v16, &qword_280882B68, &unk_2723863E0);
    if (v21 != 1)
    {
      v22 = sub_27237830C();
      (v27)(v22);
      result = v20(v13, 1, v28);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      sub_27237831C();
      v24 = *(v2 + 8);
      v25 = v28;
      v24(v5, v28);
      v24(v13, v25);
      if ((sub_27237881C() & 1) == 0)
      {
        return 1;
      }
    }

    sub_27237830C();
    (*(v2 + 56))(v10, 0, 1, v28);
    ((*v1)[26])(v10);
  }

  return 0;
}

void sub_2722ED2F0(void *a1)
{
  v82 = sub_272376E5C();
  v80 = *(v82 - 8);
  v2 = *(v80 + 64);
  MEMORY[0x28223BE20](v82);
  v81 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for VANRCollectedEnrollment(0);
  v83 = *(v4 - 8);
  v5 = *(v83 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v84 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v79 - v8;
  v10 = type metadata accessor for VANRNameConfiguration(0);
  v85 = *(v10 - 8);
  v11 = *(v85 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v86 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v79 - v14;
  v16 = sub_27237728C();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x28223BE20](v16);
  v88 = (&v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v22 = &v79 - v21;
  v23 = sub_2722C389C();
  v87 = v17[2];
  v87(v22, v23, v16);
  v24 = a1;
  v25 = sub_27237725C();
  v26 = sub_272377E6C();

  v27 = os_log_type_enabled(v25, v26);
  v90 = v24;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v79 = v9;
    v29 = v28;
    v30 = v15;
    v31 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v90;
    *v31 = v90;
    v32 = v90;
    _os_log_impl(&dword_2721E4000, v25, v26, "Matched VAKeywordSpottedEvent: %@", v29, 0xCu);
    sub_2721F40F0(v31, &qword_280881A40, &unk_27237D620);
    v33 = v31;
    v15 = v30;
    v24 = v90;
    MEMORY[0x2743C69C0](v33, -1, -1);
    v34 = v29;
    v9 = v79;
    MEMORY[0x2743C69C0](v34, -1, -1);
  }

  v35 = v17[1];
  v35(v22, v16);
  if (sub_2722ECFD0())
  {
    v87(v88, v23, v16);
    v36 = sub_27237725C();
    v37 = sub_272377E8C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_2721E4000, v36, v37, "Skipping due to debounce", v38, 2u);
      MEMORY[0x2743C69C0](v38, -1, -1);
    }

    v35(v88, v16);
  }

  if (*&v24[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassKeywordMatched + 8])
  {
    v39 = *&v24[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassKeywordMatched];
    v40 = *&v24[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_secondPassKeywordMatched + 8];
  }

  else
  {
    v39 = *&v24[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_keyword];
    v40 = *&v24[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_keyword + 8];
  }

  v41 = ObjectType;
  v42 = *(ObjectType + 48);
  v43 = *(v42 + 16);

  if (v43 && (v44 = sub_27220038C(v39, v40), (v45 & 1) != 0))
  {
    v46 = v86;
    sub_27230260C(*(v42 + 56) + *(v85 + 72) * v44, v86, type metadata accessor for VANRNameConfiguration);
    v47 = sub_2723019C4(v46, v15, type metadata accessor for VANRNameConfiguration);
    v48 = v41[7];
    if (*(v48 + 16) && (v47 = sub_27220038C(v39, v40), (v49 & 1) != 0))
    {
      v50 = v84;
      sub_27230260C(*(v48 + 56) + *(v83 + 72) * v47, v84, type metadata accessor for VANRCollectedEnrollment);

      v51 = sub_2723019C4(v50, v9, type metadata accessor for VANRCollectedEnrollment);
      if ((*(*v41 + 152))(v51))
      {
        v88 = v52;
        ObjectType = swift_getObjectType();
        v87 = type metadata accessor for VANRRecognitionEvent(0);
        v53 = v90;
        v86 = *&v90[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_hostTime];
        v54 = v9;
        v55 = v81;
        v56 = v80 + 16;
        v57 = *(v80 + 16);
        v58 = v82;
        v57(v81, v15, v82);
        sub_2721F065C(&qword_280882B70, &unk_272383E80);
        v59 = *(v56 + 56);
        v60 = (*(v56 + 64) + 32) & ~*(v56 + 64);
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_27237AF80;
        v57((v61 + v60), v54, v58);
        v62 = *&v53[OBJC_IVAR____TtC12VoiceActions21VAKeywordSpottedEvent_audioBytes];

        v63 = v53;
        v64 = v62;
        v9 = v54;
        sub_2722D44DC(v86, v55, v61, v63, v64);
        v88[1]();
        swift_unknownObjectRelease();
      }

      sub_2723025AC(v9, type metadata accessor for VANRCollectedEnrollment);
    }

    else
    {
      if ((*(*v41 + 176))(v47))
      {
        v73 = v72;
        v74 = swift_getObjectType();
        v91 = 0;
        v92 = 0xE000000000000000;
        sub_27237820C();
        MEMORY[0x2743C4AD0](v39, v40);

        MEMORY[0x2743C4AD0](0xD00000000000003FLL, 0x800000027238F570);
        v75 = v91;
        v76 = v92;
        sub_2722032B4();
        v77 = swift_allocError();
        *v78 = v75;
        v78[1] = v76;
        (*(v73 + 8))(v77, v74, v73);
        swift_unknownObjectRelease();
        sub_2723025AC(v15, type metadata accessor for VANRNameConfiguration);

        return;
      }
    }

    sub_2723025AC(v15, type metadata accessor for VANRNameConfiguration);
  }

  else if ((*(*v41 + 176))(v44))
  {
    v66 = v65;
    v67 = swift_getObjectType();
    v91 = 0;
    v92 = 0xE000000000000000;
    sub_27237820C();
    MEMORY[0x2743C4AD0](v39, v40);

    MEMORY[0x2743C4AD0](0xD000000000000038, 0x800000027238F530);
    v68 = v91;
    v69 = v92;
    sub_2722032B4();
    v70 = swift_allocError();
    *v71 = v68;
    v71[1] = v69;
    (*(v66 + 8))(v70, v67, v66);
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_2722EDC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(*v4 + 152))();
  if (result)
  {
    v11 = v10;
    ObjectType = swift_getObjectType();
    (*(v11 + 16))(a1, a2, a3, a4, ObjectType, v11);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2722EDF10()
{
  sub_272216300((v0 + 16));
  sub_272216300((v0 + 32));
  v1 = *(v0 + 6);

  v2 = *(v0 + 7);

  v3 = *(v0 + 8);

  v4 = *(v0 + 9);

  sub_2721F40F0(&v0[OBJC_IVAR____TtC12VoiceActions18VANRDelegateBridge_lastActivated], &qword_280882B68, &unk_2723863E0);
  v5 = OBJC_IVAR____TtC12VoiceActions18VANRDelegateBridge_clock;
  v6 = sub_27237834C();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

_OWORD *sub_2722EDFFC(_OWORD *a1)
{
  v2 = swift_allocObject();
  v2[5] = 0u;
  v2[6] = 0u;
  v2[4] = 0u;
  v3 = a1[1];
  v2[1] = *a1;
  v2[2] = v3;
  v2[3] = a1[2];
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  swift_beginAccess();
  sub_27221D3B4(v5, (v2 + 4), &qword_280882B78, qword_272383E90);
  swift_endAccess();
  return v2;
}

uint64_t sub_2722EE0A4()
{
  v1 = v0;
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(**(v0 + 16) + 664))(v5))
  {
    v8 = qword_28088F0C0;
    if (qword_28088F0C0)
    {

      v9 = sub_2722C389C();
      (*(v3 + 16))(v7, v9, v2);
      v10 = sub_27237725C();
      v11 = sub_272377E6C();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_2721E4000, v10, v11, "✅ Using static instance", v12, 2u);
        MEMORY[0x2743C69C0](v12, -1, -1);
      }

      (*(v3 + 8))(v7, v2);
      return v8;
    }

    else
    {
      qword_28088F0C0 = v0;
      swift_retain_n();
    }
  }

  else
  {
  }

  return v1;
}

uint64_t sub_2722EE280(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[17] = v1;
  v2[18] = v3;
  v2[19] = v4;
  return MEMORY[0x2822009F8](sub_2722EE2A8, 0, 0);
}

uint64_t sub_2722EE2A8()
{
  v1 = v0[17];
  v2 = sub_2722EE0A4();
  swift_beginAccess();
  sub_2721F07F4(v2 + 64, (v0 + 2), &qword_280882B78, qword_272383E90);

  if (v0[5])
  {
    v4 = v0[18];
    v3 = v0[19];
    sub_27221629C((v0 + 2), (v0 + 7));
    sub_2721F40F0((v0 + 2), &qword_280882B78, qword_272383E90);
    v5 = v0[10];
    v6 = v0[11];
    sub_27220300C(v0 + 7, v5);
    v0[15] = v4;
    v0[16] = v3;
    v7 = *(v6 + 8);
    v12 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[20] = v9;
    *v9 = v0;
    v9[1] = sub_2722EE4B8;

    return (v12)(v0 + 15, v5, v6);
  }

  else
  {
    sub_2721F40F0((v0 + 2), &qword_280882B78, qword_272383E90);
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_2722EE4B8()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_2722EE630;
  }

  else
  {
    v3 = sub_2722EE5CC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2722EE5CC()
{
  sub_2722039C8((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2722EE630()
{
  sub_2722039C8(v0 + 7);
  v1 = v0[1];
  v2 = v0[21];

  return v1();
}

uint64_t sub_2722EE694@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_27237728C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v9 = sub_2722EE0A4();
  swift_beginAccess();
  sub_2721F07F4(v9 + 64, v21, &qword_280882B78, qword_272383E90);

  if (*(&v22 + 1))
  {
    v10 = v21;
    return sub_2721F41B4(v10, a1);
  }

  v25 = v5;
  sub_2721F40F0(v21, &qword_280882B78, qword_272383E90);
  type metadata accessor for VANRNameRecognizerBuilder(0);
  v12 = *(v1 + 24);
  v21[0] = *(v1 + 16);
  v21[1] = v12;
  v13 = *(v1 + 48);
  v22 = *(v1 + 32);
  v23 = v13;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  sub_2722EE954(v21, v24);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (!v2)
  {
    v14 = sub_2722EE0A4();
    sub_27221629C(v24, v21);
    swift_beginAccess();
    sub_27221D3B4(v21, v14 + 64, &qword_280882B78, qword_272383E90);
    swift_endAccess();

    v15 = sub_2722C389C();
    v16 = v25;
    (*(v25 + 16))(v8, v15, v4);
    v17 = sub_27237725C();
    v18 = sub_272377E7C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2721E4000, v17, v18, "Built a new recognizer", v19, 2u);
      MEMORY[0x2743C69C0](v19, -1, -1);
    }

    (*(v16 + 8))(v8, v4);
    v10 = v24;
    return sub_2721F41B4(v10, a1);
  }

  return result;
}

uint64_t sub_2722EE954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = type metadata accessor for VANRValidationError(0);
  *&v55 = *(v3 - 8);
  v4 = *(v55 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_27237728C();
  v58 = *(v7 - 8);
  v8 = *(v58 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v54 - v12;
  v14 = *(a1 + 8);
  *&v63[0] = *a1;
  *(&v63[0] + 1) = v14;
  v15 = *(a1 + 16);
  v60 = *(a1 + 32);
  v61 = v15;
  v63[1] = v15;
  v63[2] = v60;
  v16 = type metadata accessor for VANRNameRecognizerBuilder(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v20 = sub_2722EFE50(v63);
  v21 = v64;
  v22 = (*(*v19 + 288))(v20);
  if (!v21)
  {
    v64 = v6;
    v23 = v58;
    v56 = v3;
    v57 = v7;
    v24 = *(*v19 + 224);
    v25 = *(v24(v22) + 16);

    if (v25)
    {
      v54[2] = 0;
      v54[3] = v19;
      v26 = sub_2722C389C();
      v27 = v23;
      v28 = *(v23 + 16);
      v62 = v26;
      v29 = v57;
      *&v61 = v23 + 16;
      *&v60 = v28;
      v28(v13);
      v30 = sub_27237725C();
      v31 = sub_272377E8C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_2721E4000, v30, v31, "Encountered validation errors when building name recognizer.", v32, 2u);
        v33 = v32;
        v27 = v23;
        MEMORY[0x2743C69C0](v33, -1, -1);
      }

      v35 = *(v27 + 8);
      v34 = v27 + 8;
      v59 = v35;
      v36 = (v35)(v13, v29);
      v37 = v24(v36);
      v39 = *(v37 + 16);
      if (v39)
      {
        v40 = *(v55 + 80);
        v54[1] = v37;
        v41 = v37 + ((v40 + 32) & ~v40);
        v42 = *(v55 + 72);
        *&v38 = 138412290;
        v55 = v38;
        v43 = v64;
        v58 = v34;
        do
        {
          (v60)(v11, v62, v29);
          sub_27230260C(v41, v43, type metadata accessor for VANRValidationError);
          v44 = sub_27237725C();
          v45 = sub_272377E8C();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            *v46 = v55;
            sub_272302674(&qword_280882B80, type metadata accessor for VANRValidationError);
            swift_allocError();
            v48 = v11;
            v49 = v42;
            sub_27230260C(v64, v50, type metadata accessor for VANRValidationError);
            v51 = _swift_stdlib_bridgeErrorToNSError();
            sub_2723025AC(v64, type metadata accessor for VANRValidationError);
            *(v46 + 4) = v51;
            *v47 = v51;
            v42 = v49;
            v11 = v48;
            _os_log_impl(&dword_2721E4000, v44, v45, "%@", v46, 0xCu);
            sub_2721F40F0(v47, &qword_280881A40, &unk_27237D620);
            v52 = v47;
            v29 = v57;
            MEMORY[0x2743C69C0](v52, -1, -1);
            v43 = v64;
            MEMORY[0x2743C69C0](v46, -1, -1);
          }

          else
          {

            sub_2723025AC(v43, type metadata accessor for VANRValidationError);
          }

          v59(v11, v29);
          v41 += v42;
          --v39;
        }

        while (v39);
      }
    }
  }
}

uint64_t sub_2722EEECC()
{
  v1 = sub_27237728C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(sub_2722EE0A4() + 104);

  if (v6)
  {
    v7 = sub_2722C389C();
    (*(v2 + 16))(v5, v7, v1);
    v8 = sub_27237725C();
    v9 = sub_272377E7C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2721E4000, v8, v9, "start() called and there is already a listening task", v10, 2u);
      MEMORY[0x2743C69C0](v10, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }

  else
  {
    sub_2722EE694(v17);
    if (!v0)
    {
      v11 = v18;
      v12 = v19;
      sub_27220300C(v17, v18);
      v6 = (*(v12 + 16))(v11, v12);
      sub_2722039C8(v17);
      v14 = sub_2722EE0A4();
      v15 = *(v14 + 104);
      *(v14 + 104) = v6;
    }
  }

  return v6;
}

uint64_t sub_2722EF110()
{
  v1 = *(v0 + 184);
  v2 = sub_2722EE0A4();
  swift_beginAccess();
  sub_2721F07F4(v2 + 64, v0 + 16, &qword_280882B78, qword_272383E90);

  if (*(v0 + 40))
  {
    sub_27221629C(v0 + 16, v0 + 96);
    sub_2721F40F0(v0 + 16, &qword_280882B78, qword_272383E90);
    v3 = *(v0 + 120);
    v4 = *(v0 + 128);
    sub_27220300C((v0 + 96), v3);
    v5 = *(v4 + 24);
    v12 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 192) = v7;
    *v7 = v0;
    v7[1] = sub_2722EF360;

    return v12(v3, v4);
  }

  else
  {
    sub_2721F40F0(v0 + 16, &qword_280882B78, qword_272383E90);
    v9 = *(v0 + 184);
    v10 = sub_2722EE0A4();
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    *(v0 + 56) = 0u;
    swift_beginAccess();
    sub_27221D3B4(v0 + 56, v10 + 64, &qword_280882B78, qword_272383E90);
    swift_endAccess();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_2722EF360()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_2722EF538;
  }

  else
  {
    v3 = sub_2722EF474;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2722EF474()
{
  sub_2722039C8((v0 + 96));
  v1 = *(v0 + 184);
  v2 = sub_2722EE0A4();
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  swift_beginAccess();
  sub_27221D3B4(v0 + 56, v2 + 64, &qword_280882B78, qword_272383E90);
  swift_endAccess();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2722EF538()
{
  sub_2722039C8(v0 + 12);
  v1 = v0[1];
  v2 = v0[25];

  return v1();
}

uint64_t sub_2722EF5BC()
{
  v1 = v0[7];
  sub_2722EE694((v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  sub_27220300C(v0 + 2, v2);
  v4 = *(v3 + 32);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_2722EF730;

  return v8(v2, v3);
}

uint64_t sub_2722EF730(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_2722EF8C4;
  }

  else
  {
    *(v4 + 80) = a1 & 1;
    v7 = sub_2722EF85C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2722EF85C()
{
  sub_2722039C8((v0 + 16));
  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

uint64_t sub_2722EF8C4()
{
  sub_2722039C8(v0 + 2);
  v1 = v0[9];
  v2 = v0[1];

  return v2(0);
}