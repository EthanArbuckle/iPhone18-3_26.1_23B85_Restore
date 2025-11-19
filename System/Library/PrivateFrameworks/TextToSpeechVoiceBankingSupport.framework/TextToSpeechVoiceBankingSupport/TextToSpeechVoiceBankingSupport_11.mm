void sub_23321E0DC(void *a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_speechRecognitionService);
    v7 = *((*MEMORY[0x277D85000] & *v6) + 0x1A8);
    v8 = v6;
    v7(a1);

    v9 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state;
    v10 = *(*&v5[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state] + OBJC_IVAR____TtCC31TextToSpeechVoiceBankingSupport17TTSVBAudioServiceP33_2F288AB684677915D8A6F8C1A2A5794F5State_bufferHistory);

    v39.value = [a2 hostTime];
    v39.is_nil = 0;
    v11.n128_f64[0] = TTSVBTimestampInSeconds(when:)(v39);
    (*(*v10 + 264))(a1, v11);

    v12 = [a1 floatChannelData];
    if (!v12)
    {
LABEL_22:

      return;
    }

    v13 = *v12;
    v14 = [a1 frameLength];
    v15 = [a1 stride];
    if (!v15)
    {
      __break(1u);
      return;
    }

    v16 = sub_233215FD0(0, v14, v15, v13);
    v17 = *(v16 + 16);
    if (v17)
    {
      v38 = MEMORY[0x277D84F90];
      v18 = v16;
      sub_23321B890(0, v17, 0);
      v19 = v18;
      v20 = v38;
      v21 = *(v38 + 16);
      v22 = 32;
      do
      {
        v23 = *(v19 + v22);
        v24 = *(v38 + 24);
        if (v21 >= v24 >> 1)
        {
          sub_23321B890((v24 > 1), v21 + 1, 1);
          v19 = v18;
        }

        *(v38 + 16) = v21 + 1;
        *(v38 + 4 * v21 + 32) = v23 * v23;
        v22 += 4;
        ++v21;
        --v17;
      }

      while (v17);

      v25 = *(v38 + 16);
      if (v25)
      {
LABEL_10:
        if (v25 > 7)
        {
          v26 = v25 & 0x7FFFFFFFFFFFFFF8;
          v28 = v20 + 48;
          v27 = 0.0;
          v29 = v25 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v27 = (((((((v27 + COERCE_FLOAT(*(v28 - 16))) + COERCE_FLOAT(HIDWORD(*(v28 - 16)))) + COERCE_FLOAT(*(v28 - 8))) + COERCE_FLOAT(HIDWORD(*(v28 - 16)))) + COERCE_FLOAT(*v28)) + COERCE_FLOAT(HIDWORD(*v28))) + COERCE_FLOAT(*(v28 + 8))) + COERCE_FLOAT(HIDWORD(*v28));
            v28 += 32;
            v29 -= 8;
          }

          while (v29);
          if (v25 == v26)
          {
LABEL_19:

            log10f(sqrtf(v27 / [a1 frameLength]));
            v33 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_numberOfAudioMagnitudes;
            swift_beginAccess();
            if (*&v5[v33] > 0)
            {
              v34 = *(*&v5[v9] + 40);
              type metadata accessor for AudioPowerLevelNormalizer();

              v35 = sub_23316D364();
              (*(*v36 + 496))(v13, [a1 frameLength], *&v5[v33]);

              sub_23328D74C();
            }

            v37 = *(*&v5[v9] + 32);

            sub_23328D74C();

            goto LABEL_22;
          }
        }

        else
        {
          v26 = 0;
          v27 = 0.0;
        }

        v30 = v25 - v26;
        v31 = (v20 + 4 * v26 + 32);
        do
        {
          v32 = *v31++;
          v27 = v27 + v32;
          --v30;
        }

        while (v30);
        goto LABEL_19;
      }
    }

    else
    {

      v20 = MEMORY[0x277D84F90];
      v25 = *(MEMORY[0x277D84F90] + 16);
      if (v25)
      {
        goto LABEL_10;
      }
    }

    v27 = 0.0;
    goto LABEL_19;
  }
}

uint64_t objectdestroy_131Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23321E590()
{
  v1 = *(v0 + 16);
  v2 = *(*(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_state) + 64);
  v3 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport17TTSVBAudioService_audioSession);

  [v3 isInputAvailable];
  sub_23328D74C();
}

uint64_t static TTSVBLocalVoiceModelMO.findOrFetch(modelID:moc:)(uint64_t a1, void *a2)
{
  sub_233144EEC(0, &qword_27DDE2330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_233297630;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2331527DC();
  *(v3 + 32) = 0x44496C65646F6DLL;
  *(v3 + 40) = 0xE700000000000000;
  v4 = sub_23328CE4C();
  *(v3 + 96) = sub_233144EEC(0, &qword_27DDE2348, 0x277CCAD78);
  *(v3 + 104) = sub_233152824();
  *(v3 + 72) = v4;
  v5 = sub_23328DDCC();
  v6 = type metadata accessor for TTSVBLocalVoiceModelMO();
  static DSO<>.findOrFetch(in:matching:)(a2, v5, v6, &protocol witness table for TTSVBLocalVoiceModelMO);
  v8 = v7;

  return v8;
}

uint64_t static TTSVBLocalVoiceModelMO.requireModelWithID(_:moc:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for TTSVBError.Reason(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_233144EEC(0, &qword_27DDE2330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_233297630;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_2331527DC();
  *(v8 + 32) = 0x44496C65646F6DLL;
  *(v8 + 40) = 0xE700000000000000;
  v9 = sub_23328CE4C();
  *(v8 + 96) = sub_233144EEC(0, &qword_27DDE2348, 0x277CCAD78);
  *(v8 + 104) = sub_233152824();
  *(v8 + 72) = v9;
  v10 = sub_23328DDCC();
  v11 = type metadata accessor for TTSVBLocalVoiceModelMO();
  static DSO<>.findOrFetch(in:matching:)(a2, v10, v11, &protocol witness table for TTSVBLocalVoiceModelMO);
  v13 = v12;

  if (!v13)
  {
    v18[0] = 0;
    v18[1] = 0;
    v19 = 3;
    v14 = sub_23328CE8C();
    (*(*(v14 - 8) + 16))(v7, a1, v14);
    swift_storeEnumTagMultiPayload();
    v13 = type metadata accessor for TTSVBError(0);
    sub_23321EE10(&qword_280D3A0B0, 255, type metadata accessor for TTSVBError);
    swift_allocError();
    TTSVBError.init(_:_:_:)(v18, v7, 0, v15);
    swift_willThrow();
  }

  return v13;
}

uint64_t sub_23321EE10(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_23321EE58()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_23328D95C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

id sub_23321EF24@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isDownloaded];
  *a2 = result;
  return result;
}

void sub_23321EF90(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_233121D34(a1, &v12 - v6, &qword_27DDE19B0, &qword_233290370);
  v8 = *a2;
  v9 = sub_23328CE8C();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_23328CE4C();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setModelID_];
}

id sub_23321F0E4@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 status_];
  *a2 = result;
  return result;
}

uint64_t sub_23321F148@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_23321F20C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_233121D34(a1, &v16 - v10, &qword_27DDE1A18, &unk_233297730);
  v12 = *a2;
  v13 = sub_23328CE1C();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    v15 = sub_23328CD9C();
    (*(v14 + 8))(v11, v13);
  }

  [v12 *a5];
}

id sub_23321F360@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 trainingStatus_];
  *a2 = result;
  return result;
}

id sub_23321F3A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 trainingTaskProgress];
  *a2 = v4;
  return result;
}

id sub_23321F408@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 files];
  *a2 = result;
  return result;
}

void sub_23321F458(void *a1@<X0>, char *a2@<X8>)
{
  v5 = sub_23328D6EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = a1;
    goto LABEL_5;
  }

  v12 = [v2 voice];
  if (v12)
  {
    v11 = v12;
LABEL_5:
    v13 = a1;
    v14 = [v11 name];
    if (v14)
    {
      v15 = v14;
      v16 = sub_23328D98C();
      v18 = v17;

      v19 = [v11 voiceID];
      v20 = sub_23328CE8C();
      v21 = *(v20 - 8);
      v22 = *(v21 + 64);
      MEMORY[0x28223BE20](v20);
      v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v19)
      {
        sub_23328CE6C();

        v25 = type metadata accessor for TTSVBLocalVoiceModelMO();
        v27 = sub_23321EE10(&qword_27DDE2840, v26, type metadata accessor for TTSVBLocalVoiceModelMO);
        TTSVBCommonVoiceModelMO.immutableModel(voiceName:voiceID:)(v16, v18, v25, v27, a2);

        (*(v21 + 8))(v24, v20);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v28 = sub_233225440();
  (*(v6 + 16))(v10, v28, v5);
  v29 = sub_23328D6CC();
  v30 = sub_23328DE3C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_233109000, v29, v30, "Cannot return immutableModel. no related voice was found.", v31, 2u);
    MEMORY[0x23839CFD0](v31, -1, -1);
  }

  (*(v6 + 8))(v10, v5);
  v32 = type metadata accessor for TTSVBVoiceModel();
  (*(*(v32 - 8) + 56))(a2, 1, 1, v32);
}

uint64_t sub_23321F79C()
{
  v1 = sub_23328CE8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
  v7 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = [v0 voice];
  if (!v8)
  {
    (*(v2 + 56))(v17 - v7, 1, 1, v1);
LABEL_7:
    sub_233121E04(v17 - v7, &qword_27DDE19B0, &qword_233290370);
    return 0;
  }

  v9 = v8;
  v10 = [v8 voiceID];

  MEMORY[0x28223BE20](v11);
  if (v10)
  {
    sub_23328CE6C();

    (*(v2 + 56))(v17 - v7, 0, 1, v1);
  }

  else
  {
    (*(v2 + 56))(v17 - v7, 1, 1, v1);
  }

  sub_233121D9C(v17 - v7, v17 - v7, &qword_27DDE19B0, &qword_233290370);
  if ((*(v2 + 48))(v17 - v7, 1, v1) == 1)
  {
    goto LABEL_7;
  }

  (*(v2 + 32))(v5, v17 - v7, v1);
  v13 = *MEMORY[0x277D70458];
  v17[0] = sub_23328D98C();
  v17[1] = v14;
  MEMORY[0x23839B7E0](46, 0xE100000000000000);
  v15 = sub_23328CE3C();
  MEMORY[0x23839B7E0](v15);

  v16 = v17[0];
  (*(v2 + 8))(v5, v1);
  return v16;
}

id TTSVBLocalVoiceModelMO.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id TTSVBLocalVoiceModelMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for TTSVBLocalVoiceModelMO();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id TTSVBLocalVoiceModelMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSVBLocalVoiceModelMO();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23321FBAC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for TTSVBLocalVoiceModelMO();
  result = sub_23328E25C();
  *a1 = result;
  return result;
}

uint64_t (*sub_23321FC24(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_23321FC94(v2);
  return sub_233154AEC;
}

void (*sub_23321FC94(void *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730) - 8) + 64);
  a1[1] = v4;
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v4);
  }

  v7 = v6;
  a1[2] = v6;
  v8 = [v2 creationDate];
  if (v5)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v4);
  }

  v10 = v9;
  a1[3] = v9;
  if (v8)
  {
    sub_23328CDDC();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = sub_23328CE1C();
  (*(*(v12 - 8) + 56))(v10, v11, 1, v12);
  sub_233121D9C(v10, v7, &qword_27DDE1A18, &unk_233297730);
  return sub_23321FDF4;
}

uint64_t (*sub_23321FE18(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_23321FE88(v2);
  return sub_233153B3C;
}

void (*sub_23321FE88(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 creationDeviceModel];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23328D98C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_23321FF10;
}

uint64_t (*sub_23321FF34(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_23321FFA4(v2);
  return sub_233154AEC;
}

void (*sub_23321FFA4(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 creationDeviceName];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23328D98C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_23322002C;
}

uint64_t (*sub_233220050(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2332200C0(v2);
  return sub_233154AEC;
}

void (*sub_2332200C0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 creationDeviceUDID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23328D98C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_233220148;
}

uint64_t (*sub_23322016C(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2332201DC(v2);
  return sub_233154AEC;
}

void (*sub_2332201DC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 creationOSBuild];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23328D98C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_233220264;
}

id sub_233220270()
{
  v1 = [v0 isDownloaded];

  return v1;
}

void sub_2332202A8(void *a1)
{
  [v1 setIsDownloaded_];
}

void (*sub_2332202F0(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 isDownloaded];
  return sub_23322034C;
}

void sub_23322034C(id *a1)
{
  v1 = *a1;
  [a1[1] setIsDownloaded_];
}

uint64_t (*sub_2332203CC(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_23322043C(v2);
  return sub_233154AEC;
}

void (*sub_23322043C(void *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370) - 8) + 64);
  a1[1] = v4;
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v4);
  }

  v7 = v6;
  a1[2] = v6;
  v8 = [v2 modelID];
  if (v5)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v4);
  }

  v10 = v9;
  a1[3] = v9;
  if (v8)
  {
    sub_23328CE6C();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = sub_23328CE8C();
  (*(*(v12 - 8) + 56))(v10, v11, 1, v12);
  sub_233121D9C(v10, v7, &qword_27DDE19B0, &qword_233290370);
  return sub_23322059C;
}

void sub_23322059C(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  if (a2)
  {
    v4 = *(a1 + 8);
    MEMORY[0x28223BE20](a1);
    v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_233121D34(v3, v6, &qword_27DDE19B0, &qword_233290370);
    v7 = sub_23328CE8C();
    v8 = *(v7 - 8);
    v9 = 0;
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      v9 = sub_23328CE4C();
      (*(v8 + 8))(v6, v7);
      v3 = *(a1 + 16);
    }

    v10 = *(a1 + 24);
    [*a1 setModelID_];

    free(v10);
    sub_233121E04(v3, &qword_27DDE19B0, &qword_233290370);
    free(v3);
  }

  else
  {
    v11 = sub_23328CE8C();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v3, 1, v11) == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = sub_23328CE4C();
      (*(v12 + 8))(v3, v11);
      v3 = *(a1 + 16);
    }

    v14 = *(a1 + 24);
    [*a1 setModelID_];

    free(v14);

    free(v3);
  }
}

id (*sub_233220828(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 status_];
  return sub_23322087C;
}

uint64_t sub_2332208B0@<X0>(SEL *a1@<X2>, void (*a2)(void)@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v8 = [v4 *a1];
  if (v8)
  {
    v9 = v8;
    a2();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4, v10, 1, v11);
}

void sub_233220984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), SEL *a6)
{
  v9 = v6;
  v11 = a4(0);
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(a1, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = a5();
    (*(v12 + 8))(a1, v11);
    v14 = v15;
  }

  v16 = v14;
  [v9 *a6];
}

uint64_t (*sub_233220A90(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_233220B00(v2);
  return sub_233154AEC;
}

void (*sub_233220B00(void *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730) - 8) + 64);
  a1[1] = v4;
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v4);
  }

  v7 = v6;
  a1[2] = v6;
  v8 = [v2 trainingFinishedDate];
  if (v5)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v4);
  }

  v10 = v9;
  a1[3] = v9;
  if (v8)
  {
    sub_23328CDDC();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = sub_23328CE1C();
  (*(*(v12 - 8) + 56))(v10, v11, 1, v12);
  sub_233121D9C(v10, v7, &qword_27DDE1A18, &unk_233297730);
  return sub_233220C60;
}

void sub_233220C6C(uint64_t a1, char a2, SEL *a3)
{
  v5 = *(a1 + 16);
  if (a2)
  {
    v6 = *(a1 + 8);
    MEMORY[0x28223BE20](a1);
    v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_233121D34(v5, v8, &qword_27DDE1A18, &unk_233297730);
    v9 = sub_23328CE1C();
    v10 = *(v9 - 8);
    v11 = 0;
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      v11 = sub_23328CD9C();
      (*(v10 + 8))(v8, v9);
      v5 = *(a1 + 16);
    }

    v12 = *(a1 + 24);
    [*a1 *a3];

    free(v12);
    sub_233121E04(v5, &qword_27DDE1A18, &unk_233297730);
    free(v5);
  }

  else
  {
    v13 = sub_23328CE1C();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v5, 1, v13) == 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = sub_23328CD9C();
      (*(v14 + 8))(v5, v13);
      v5 = *(a1 + 16);
    }

    v16 = *(a1 + 24);
    [*a1 *a3];

    free(v16);

    free(v5);
  }
}

uint64_t (*sub_233220ED4(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_233220F44(v2);
  return sub_233154AEC;
}

void (*sub_233220F44(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 trainingMode];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23328D98C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_233220FCC;
}

id (*sub_233221010(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 trainingStatus_];
  return sub_233221064;
}

id (*sub_23322109C(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  [v1 trainingTaskProgress];
  *a1 = v3;
  return sub_2332210F0;
}

uint64_t (*sub_233221120(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_233221190(v2);
  return sub_233154AEC;
}

void (*sub_233221190(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 version];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23328D98C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_233221218;
}

uint64_t (*sub_23322123C(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2332212AC(v2);
  return sub_233154AEC;
}

void (*sub_2332212AC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 trainingLocaleID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_23328D98C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_233221334;
}

uint64_t sub_233221340(uint64_t a1, uint64_t a2)
{
  result = sub_23321EE10(&qword_27DDE2970, a2, type metadata accessor for TTSVBLocalVoiceModelMO);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2332214CC()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TTSVBService();
    v1 = TTSVBService.__allocating_init()();
    v3 = *(v0 + 112);
    *(v2 + 112) = v1;
  }

  return v1;
}

uint64_t sub_233221534()
{
  v2 = *(*v0 + 176);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_233224014;

  return v6();
}

uint64_t sub_233221644()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2838, &qword_233299288) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v3 = sub_23328D07C();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();
  v6 = *(type metadata accessor for TTSVBPersonalVoiceSystemRepresentation() - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v8 = *(*v0 + 184);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v1[10] = v10;
  *v10 = v1;
  v10[1] = sub_233221858;

  return v12();
}

uint64_t sub_233221858(uint64_t a1)
{
  v3 = *(*v2 + 80);
  v4 = *v2;
  v4[11] = a1;

  if (v1)
  {
    v5 = v4[9];
    v6 = v4[7];
    v7 = v4[3];
    v8 = v4[4];

    v9 = v4[1];

    return v9();
  }

  else
  {
    v11 = v4[2];

    return MEMORY[0x2822009F8](sub_2332219C0, v11, 0);
  }
}

uint64_t sub_2332219C0()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[8];
    v4 = v0[6];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = (v4 + 48);
    v24 = v4;
    v25 = (v4 + 32);
    v26 = *(v3 + 72);
    v7 = MEMORY[0x277D84F90];
    do
    {
      v8 = v0[9];
      v10 = v0[4];
      v9 = v0[5];
      v11 = v0[3];
      sub_233223F44(v5, v8, type metadata accessor for TTSVBPersonalVoiceSystemRepresentation);
      sub_233221C4C(v11);
      sub_233222658(v11, v10);
      sub_233223FAC(v8, type metadata accessor for TTSVBPersonalVoiceSystemRepresentation);
      if ((*v6)(v10, 1, v9) == 1)
      {
        sub_2332226C8(v0[4]);
      }

      else
      {
        v12 = *v25;
        (*v25)(v0[7], v0[4], v0[5]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2332237E8(0, *(v7 + 2) + 1, 1, v7, &qword_27DDE33B8, &unk_23329D720, MEMORY[0x277D702F8]);
        }

        v14 = *(v7 + 2);
        v13 = *(v7 + 3);
        if (v14 >= v13 >> 1)
        {
          v7 = sub_2332237E8(v13 > 1, v14 + 1, 1, v7, &qword_27DDE33B8, &unk_23329D720, MEMORY[0x277D702F8]);
        }

        v15 = v0[7];
        v16 = v0[5];
        *(v7 + 2) = v14 + 1;
        v12(&v7[((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v14], v15, v16);
      }

      v5 += v26;
      --v2;
    }

    while (v2);
    v17 = v0[11];
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v18 = v0[9];
  v19 = v0[7];
  v21 = v0[3];
  v20 = v0[4];

  v22 = v0[1];

  return v22(v7);
}

uint64_t sub_233221C4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23328D01C();
  v73 = *(v3 - 8);
  v74 = v3;
  v4 = *(v73 + 64);
  MEMORY[0x28223BE20](v3);
  v75 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3390, &unk_23329D550);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v72 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v71 = v69 - v10;
  v11 = type metadata accessor for TTSVBInstalledVoiceModel();
  v70 = *(v11 - 8);
  v12 = *(v70 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23328CFDC();
  v76 = *(v15 - 8);
  v77 = v15;
  v16 = *(v76 + 64);
  MEMORY[0x28223BE20](v15);
  v81 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23328D04C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v80 = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_23328D05C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v79 = v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_23328D06C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v78 = v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v1 + *(type metadata accessor for TTSVBPersonalVoiceSystemRepresentation() + 20));
  if (!*(v30 + 16))
  {
    v57 = sub_23328D07C();
    v58 = *(*(v57 - 8) + 56);
    v59 = v57;
    v60 = a1;
LABEL_21:

    return v58(v60, 1, 1, v59);
  }

  v82 = a1;
  v31 = sub_23328E67C();
  if ((v31 & 0x100000000) != 0)
  {
    v61 = sub_23328D07C();
    v58 = *(*(v61 - 8) + 56);
    v59 = v61;
    v60 = v82;
    goto LABEL_21;
  }

  v69[1] = v31;
  v69[3] = TTSVBVoice.qualifiedVoiceIdentifier.getter();
  v69[2] = v32;
  v33 = v1[1];
  v69[5] = *v1;
  v69[6] = v1;
  (*(v27 + 104))(v78, *MEMORY[0x277D702D0], v26);
  (*(v23 + 104))(v79, *MEMORY[0x277D702C8], v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2848, &qword_233299290);
  v34 = *(v19 + 72);
  v35 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_233297630;
  v69[4] = v33;

  sub_23328D03C();
  sub_23328D02C();
  v87 = v36;
  sub_233223EFC(&qword_27DDE2850, 255, MEMORY[0x277D702B8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2858, &qword_23329D560);
  sub_23315246C(&qword_27DDE2860, &qword_27DDE2858, &qword_23329D560);
  sub_23328E14C();
  (*(v76 + 104))(v81, *MEMORY[0x277D70250], v77);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  swift_getKeyPath();
  v38 = *(v30 + 16);
  v39 = MEMORY[0x277D84F90];
  if (v38)
  {
    v40 = v30 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
    v41 = *(v70 + 72);
    while (1)
    {
      sub_233223F44(v40, v14, type metadata accessor for TTSVBInstalledVoiceModel);
      swift_getAtKeyPath();
      result = sub_233223FAC(v14, type metadata accessor for TTSVBInstalledVoiceModel);
      v43 = v87;
      v44 = v87[2];
      v45 = v39[2];
      v46 = v45 + v44;
      if (__OFADD__(v45, v44))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v46 > v39[3] >> 1)
      {
        if (v45 <= v46)
        {
          v48 = v45 + v44;
        }

        else
        {
          v48 = v45;
        }

        v39 = sub_2332237E8(isUniquelyReferenced_nonNull_native, v48, 1, v39, &qword_27DDE2420, &qword_23329D710, MEMORY[0x28220C168]);
      }

      v49 = v82;
      if (v43[2])
      {
        v50 = (v39[3] >> 1) - v39[2];
        result = sub_23328CF0C();
        v51 = *(result - 8);
        if (v50 < v44)
        {
          goto LABEL_28;
        }

        v52 = (*(v51 + 80) + 32) & ~*(v51 + 80);
        v53 = *(v51 + 72);
        swift_arrayInitWithCopy();

        v49 = v82;
        if (v44)
        {
          v54 = v39[2];
          v55 = __OFADD__(v54, v44);
          v56 = v54 + v44;
          if (v55)
          {
            goto LABEL_29;
          }

          v39[2] = v56;
        }
      }

      else
      {

        if (v44)
        {
          goto LABEL_27;
        }
      }

      v40 += v41;
      if (!--v38)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    v49 = v82;
LABEL_25:

    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3398, qword_23329D5C0);
    v88 = v62;
    v89 = sub_23315246C(&qword_27DDE33A0, &qword_27DDE3398, qword_23329D5C0);
    v86 = v89;
    v87 = v39;
    v85 = v62;
    v84 = MEMORY[0x277D84F90];
    TTSVBVoice.qualifiedVoiceIdentifier.getter();
    v63 = v71;
    sub_23328CFEC();
    v64 = sub_23328CFFC();
    v65 = *(*(v64 - 8) + 56);
    v65(v63, 0, 1, v64);
    v66 = v74;
    v67 = v75;
    *v75 = 0;
    (*(v73 + 104))(v67, *MEMORY[0x277D702A0], v66);
    v65(v72, 1, 1, v64);
    v83 = 1;
    sub_23328D00C();
    v68 = sub_23328D07C();
    return (*(*(v68 - 8) + 56))(v49, 0, 1, v68);
  }

  return result;
}

uint64_t sub_233222658(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2838, &qword_233299288);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2332226C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2838, &qword_233299288);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_233222750(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = sub_233223EFC(qword_280D3A010, a2, type metadata accessor for TTSVBVoiceLoader);
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v2 + 32) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A20, &qword_233290630);
  *v6 = v2;
  v6[1] = sub_23322287C;
  v8 = *(v2 + 24);

  return MEMORY[0x2822008A0](v2 + 16, v3, v4, 0xD000000000000028, 0x80000002332AB590, sub_2332239E8, v8, v7);
}

uint64_t sub_23322287C()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_2332229A8;
  }

  else
  {
    v6 = sub_23319D5B8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2332229C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE33A8, &unk_23329D700);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_2332214CC();
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  TTSVBService.fetchPersonalVoiceSystemRepresentation(completion:)();
}

uint64_t sub_233222B18(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1960, &unk_233290340);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v13 - v8);
  sub_233223E8C(a1, &v13 - v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2331D1E80(v9, v5);
    sub_233223EFC(&qword_280D3A0B0, 255, type metadata accessor for TTSVBError);
    v10 = swift_allocError();
    sub_233223F44(v5, v11, type metadata accessor for TTSVBError);
    v14 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE33A8, &unk_23329D700);
    sub_23328DC8C();
    return sub_233223FAC(v5, type metadata accessor for TTSVBError);
  }

  else
  {
    v14 = *v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE33A8, &unk_23329D700);
    return sub_23328DC9C();
  }
}

uint64_t TTSVBVoiceLoader.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t TTSVBVoiceLoader.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t TTSVBVoiceLoader.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t TTSVBVoiceLoader.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_233222F64()
{
  v2 = *(**v0 + 168);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_233224014;

  return v6();
}

uint64_t sub_233223078()
{
  v2 = *(**v0 + 176);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23322318C;

  return v6();
}

uint64_t sub_23322318C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_23322328C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D700D8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for TTSVBVoiceLoader();
  *v9 = v4;
  v9[1] = sub_233127268;

  return MEMORY[0x2821D6C90](a1, a2, v10, a4);
}

uint64_t sub_233223350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(MEMORY[0x277D700E0] + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for TTSVBVoiceLoader();
  *v7 = v3;
  v7[1] = sub_233127268;

  return MEMORY[0x2821D6C98](a1, v8, a3);
}

uint64_t sub_233223404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(MEMORY[0x277D700B8] + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for TTSVBVoiceLoader();
  *v7 = v3;
  v7[1] = sub_233126374;

  return MEMORY[0x2821D6C70](a1, v8, a3);
}

uint64_t sub_2332234B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(MEMORY[0x277D700D0] + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for TTSVBVoiceLoader();
  *v7 = v3;
  v7[1] = sub_233127268;

  return MEMORY[0x2821D6C88](a1, v8, a3);
}

uint64_t sub_23322356C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D700C0] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for TTSVBVoiceLoader();
  *v9 = v4;
  v9[1] = sub_233127268;

  return MEMORY[0x2821D6C78](a1, a2, v10, a4);
}

uint64_t sub_233223630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(MEMORY[0x277D700C8] + 4);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for TTSVBVoiceLoader();
  *v9 = v4;
  v9[1] = sub_233127268;

  return MEMORY[0x2821D6C80](a1, a2, v10, a4);
}

uint64_t sub_2332236F4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE33B0, &qword_23329D718);
  return sub_23328D90C() & 1;
}

uint64_t sub_233223758(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE33B0, &qword_23329D718);
  return sub_23328D8DC();
}

uint64_t sub_2332237A8@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v3 = *a1;
  result = TTSVBInstalledVoiceModel.subscript.getter();
  *a2 = v5;
  return result;
}

size_t sub_2332237E8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t dispatch thunk of TTSVBVoiceLoader.voices()()
{
  v2 = *(*v0 + 168);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23322400C;

  return v6();
}

uint64_t dispatch thunk of TTSVBVoiceLoader.installedVoices()()
{
  v2 = *(*v0 + 176);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_233223D00;

  return v6();
}

uint64_t sub_233223D00(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_233223E10(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE33A8, &unk_23329D700) - 8) + 80);

  return sub_233222B18(a1);
}

uint64_t sub_233223E8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1960, &unk_233290340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_233223EFC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_233223F44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_233223FAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_233224018()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_23328D95C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t static TTSVBCloudVoiceSampleMO.requireSampleWithID(_:voiceID:moc:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for TTSVBError.Reason(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = _s31TextToSpeechVoiceBankingSupport010TTSVBCloudD8SampleMOC11findOrFetch8sampleID05voiceN03mocACSgSS_10Foundation4UUIDVSo22NSManagedObjectContextCtFZ_0(a1, a2, a3, a4);
  if (!result)
  {
    v16[0] = 0;
    v16[1] = 0;
    v17 = 3;
    *v11 = a1;
    v11[1] = a2;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for TTSVBError(0);
    sub_233225208(&qword_280D3A0B0, 255, type metadata accessor for TTSVBError);
    swift_allocError();
    v14 = v13;

    TTSVBError.init(_:_:_:)(v16, v11, 0, v14);
    return swift_willThrow();
  }

  return result;
}

void sub_2332241E4(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_23312712C(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_23328CE1C();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_23328CD9C();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setRecordingDate_];
}

id sub_233224310@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 audioFuture];
  *a2 = result;
  return result;
}

uint64_t sub_233224360@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_23328D6EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = [v2 voice];
  if (!v13)
  {
    v20 = sub_233225440();
    (*(v5 + 16))(v8, v20, v4);
    v21 = sub_23328D6CC();
    v22 = sub_23328DE3C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v39 = v24;
      *v23 = 136315138;
      v25 = sub_23328E70C();
      v27 = sub_23311A8F4(v25, v26, &v39);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_233109000, v21, v22, "'voice' property on %s was unexpectedly nil", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x23839CFD0](v24, -1, -1);
      MEMORY[0x23839CFD0](v23, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    goto LABEL_12;
  }

  v14 = v13;
  v15 = [v13 voiceID];
  if (!v15)
  {
    v28 = sub_233225440();
    (*(v5 + 16))(v12, v28, v4);
    v29 = sub_23328D6CC();
    v30 = sub_23328DE3C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = v38;
      *v31 = 136315138;
      v32 = sub_23328E70C();
      v34 = a1;
      v35 = sub_23311A8F4(v32, v33, &v39);

      *(v31 + 4) = v35;
      a1 = v34;
      _os_log_impl(&dword_233109000, v29, v30, "'voiceID' on voice for on %s was unexpectedly nil", v31, 0xCu);
      v36 = v38;
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x23839CFD0](v36, -1, -1);
      MEMORY[0x23839CFD0](v31, -1, -1);
    }

    (*(v5 + 8))(v12, v4);
LABEL_12:
    v37 = sub_23328CE8C();
    return (*(*(v37 - 8) + 56))(a1, 1, 1, v37);
  }

  v16 = v15;
  sub_23328CE6C();

  v17 = sub_23328CE8C();
  v18 = *(*(v17 - 8) + 56);

  return v18(a1, 0, 1, v17);
}

id TTSVBCloudVoiceSampleMO.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id TTSVBCloudVoiceSampleMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for TTSVBCloudVoiceSampleMO();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id TTSVBCloudVoiceSampleMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSVBCloudVoiceSampleMO();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23322489C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for TTSVBCloudVoiceSampleMO();
  result = sub_23328E25C();
  *a1 = result;
  return result;
}

uint64_t (*sub_2332248DC(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2331C55FC(v2);
  return sub_233154AEC;
}

uint64_t (*sub_23322494C(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2331C57A4(v2);
  return sub_233154AEC;
}

uint64_t (*sub_2332249BC(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2331C5950(v2);
  return sub_233154AEC;
}

uint64_t (*sub_233224A2C(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2331C5A6C(v2);
  return sub_233154AEC;
}

uint64_t (*sub_233224A9C(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2331C5C14(v2);
  return sub_233154AEC;
}

uint64_t (*sub_233224B0C(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2331C5DC0(v2);
  return sub_233153B3C;
}

uint64_t (*sub_233224B7C(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2331C5EDC(v2);
  return sub_233154AEC;
}

uint64_t (*sub_233224BEC(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_233224C5C(v2);
  return sub_233154AEC;
}

void (*sub_233224C5C(void *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730) - 8) + 64);
  a1[1] = v4;
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v4);
  }

  v7 = v6;
  a1[2] = v6;
  v8 = [v2 recordingDate];
  if (v5)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v4);
  }

  v10 = v9;
  a1[3] = v9;
  if (v8)
  {
    sub_23328CDDC();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = sub_23328CE1C();
  (*(*(v12 - 8) + 56))(v10, v11, 1, v12);
  sub_23315CA28(v10, v7);
  return sub_233224DAC;
}

void sub_233224DAC(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  if (a2)
  {
    v4 = *(a1 + 8);
    MEMORY[0x28223BE20](a1);
    v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_23312712C(v3, v6);
    v7 = sub_23328CE1C();
    v8 = *(v7 - 8);
    v9 = 0;
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      v9 = sub_23328CD9C();
      (*(v8 + 8))(v6, v7);
      v3 = *(a1 + 16);
    }

    v10 = *(a1 + 24);
    [*a1 setRecordingDate_];

    free(v10);
    sub_233126838(v3);
    free(v3);
  }

  else
  {
    v11 = sub_23328CE1C();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v3, 1, v11) == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = sub_23328CD9C();
      (*(v12 + 8))(v3, v11);
      v3 = *(a1 + 16);
    }

    v14 = *(a1 + 24);
    [*a1 setRecordingDate_];

    free(v14);

    free(v3);
  }
}

uint64_t _s31TextToSpeechVoiceBankingSupport010TTSVBCloudD8SampleMOC11findOrFetch8sampleID05voiceN03mocACSgSS_10Foundation4UUIDVSo22NSManagedObjectContextCtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_233144EEC(0, &qword_27DDE2330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_233297B40;
  v8 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v9 = sub_2331527DC();
  *(v7 + 32) = 0x4449656C706D6173;
  *(v7 + 40) = 0xE800000000000000;
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 64) = v9;
  *(v7 + 72) = a1;
  *(v7 + 80) = a2;
  *(v7 + 136) = v8;
  *(v7 + 144) = v9;
  strcpy((v7 + 112), "voice.voiceID");
  *(v7 + 126) = -4864;

  v10 = sub_23328CE4C();
  *(v7 + 176) = sub_233144EEC(0, &qword_27DDE2348, 0x277CCAD78);
  *(v7 + 184) = sub_233152824();
  *(v7 + 152) = v10;
  v11 = sub_23328DDCC();
  v12 = type metadata accessor for TTSVBCloudVoiceSampleMO();
  static DSO<>.findOrFetch(in:matching:)(a4, v11, v12, &protocol witness table for TTSVBCloudVoiceSampleMO);
  v14 = v13;

  return v14;
}

uint64_t sub_2332251B0(uint64_t a1, uint64_t a2)
{
  result = sub_233225208(&qword_27DDE2A30, a2, type metadata accessor for TTSVBCloudVoiceSampleMO);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_233225208(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2332252BC()
{
  result = *MEMORY[0x277CE6828];
  if (*MEMORY[0x277CE6828])
  {
    result = sub_23328DA9C();
    qword_280D3AC30 = result;
    qword_280D3AC28 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23322557C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = sub_23328D6EC();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  v6 = a3();
  return sub_23328D6FC();
}

uint64_t sub_2332256A0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_23328D6EC();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  if (qword_280D3AC20 != -1)
  {
    swift_once();
  }

  return sub_23328D6DC();
}

id sub_2332257A4()
{
  v0 = sub_23328D6EC();
  __swift_allocate_value_buffer(v0, qword_27DDFB0A8);
  __swift_project_value_buffer(v0, qword_27DDFB0A8);
  result = AXLogTemp();
  if (result)
  {
    return sub_23328D6FC();
  }

  __break(1u);
  return result;
}

uint64_t sub_23322582C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_23328D6EC();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_2332258C4()
{
  v0 = sub_23328D6EC();
  __swift_allocate_value_buffer(v0, qword_27DDFB0C8);
  __swift_project_value_buffer(v0, qword_27DDFB0C8);
  return sub_23328D6DC();
}

uint64_t sub_233225968(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_23328D6EC();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static TTSVBLog.liveSpeech.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDFB0C0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D6EC();
  v3 = __swift_project_value_buffer(v2, qword_27DDFB0C8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static TTSVBLog.liveSpeech.setter(uint64_t a1)
{
  if (qword_27DDFB0C0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D6EC();
  v3 = __swift_project_value_buffer(v2, qword_27DDFB0C8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static TTSVBLog.liveSpeech.modify())()
{
  if (qword_27DDFB0C0 != -1)
  {
    swift_once();
  }

  v0 = sub_23328D6EC();
  __swift_project_value_buffer(v0, qword_27DDFB0C8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_233225C04@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDFB0C0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D6EC();
  v3 = __swift_project_value_buffer(v2, qword_27DDFB0C8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_233225CC4(uint64_t a1)
{
  if (qword_27DDFB0C0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D6EC();
  v3 = __swift_project_value_buffer(v2, qword_27DDFB0C8);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t TTSVBVoiceStatus.description.getter(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        return 0x646573756150;
      }

      if (a1 == 7)
      {
        return 0x7964616552;
      }

      return 0x6E776F6E6B6E55;
    }

    if (a1 == 4)
    {
      return 0xD000000000000012;
    }

    else
    {
      return 0x676E696E69617254;
    }
  }

  else
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 0x616974696E696E55;
      }

      if (a1 == 1)
      {
        return 0xD000000000000016;
      }

      return 0x6E776F6E6B6E55;
    }

    if (a1 == 2)
    {
      return 0xD000000000000016;
    }

    else
    {
      return 0xD000000000000014;
    }
  }
}

uint64_t TTSVBVoiceStatus.localizedTitle.getter()
{
  v0 = sub_23328D95C();
  v1 = TTSVBSupportLocString(v0);

  v2 = sub_23328D98C();
  return v2;
}

uint64_t sub_2332261B0()
{
  v1 = *v0;
  sub_23328E61C();
  MEMORY[0x23839C380](v1);
  return sub_23328E66C();
}

uint64_t sub_2332261F8()
{
  v1 = *v0;
  sub_23328E61C();
  MEMORY[0x23839C380](v1);
  return sub_23328E66C();
}

uint64_t sub_233226244(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TTSVBVoiceStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_233226288()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08A58);
  __swift_project_value_buffer(v4, qword_27DE08A58);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t sub_2332263FC()
{
  sub_23328D20C();
  v1 = v0[2];
  v2 = sub_233237A1C();
  v3 = *v2;
  v0[3] = *v2;
  v4 = sub_23328CE8C();
  v0[4] = v4;
  v5 = *(v4 - 8);
  v0[5] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v0[6] = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  sub_23328D5CC();
  v11 = (*v3 + 336);
  v12 = (*v11 + **v11);
  v8 = (*v11)[1];
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_23322660C;

  return v12(v7);
}

uint64_t sub_23322660C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 64) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2332279CC, 0, 0);
  }

  else
  {
    v9 = *(v2 + 48);

    v10 = *(v8 + 8);

    return v10();
  }
}

uint64_t sub_2332267E4(uint64_t a1)
{
  v2 = sub_233226D20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233226820(uint64_t a1)
{
  v2 = sub_233226D20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23322685C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE33D0, qword_23329D8E0);
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - v5;
  v7 = sub_23328D53C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_23328D4DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v33 - v17;
  v19 = _s18DeleteModelCommandVMa();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v23 = sub_23328D3CC();
  (*(*(v23 - 8) + 56))(v18, 0, 1, v23);
  v24 = sub_23328D42C();
  (*(*(v24 - 8) + 56))(v14, 1, 1, v24);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  sub_23328D5FC();
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_233226D20();
  v26 = v35;
  sub_23328E68C();
  if (!v26)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
    v35 = &v33;
    v28 = *(v27 - 8);
    v29 = *(v28 + 64);
    MEMORY[0x28223BE20](v27);
    v31 = &v33 - v30;
    sub_233226DD0();
    sub_23328E41C();
    (*(v34 + 8))(v6, v3);
    (*(v28 + 40))(v22, v31, v27);
    sub_233226E34(v22, v33);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_233226D74(v22);
}

uint64_t _s18DeleteModelCommandVMa()
{
  result = qword_27DDFB670;
  if (!qword_27DDFB670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_233226D20()
{
  result = qword_27DDFB368[0];
  if (!qword_27DDFB368[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFB368);
  }

  return result;
}

uint64_t sub_233226D74(uint64_t a1)
{
  v2 = _s18DeleteModelCommandVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_233226DD0()
{
  result = qword_27DDE2D40;
  if (!qword_27DDE2D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE2D00, &qword_23329AB80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2D40);
  }

  return result;
}

uint64_t sub_233226E34(uint64_t a1, uint64_t a2)
{
  v4 = _s18DeleteModelCommandVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_233226F20()
{
  sub_23328D20C();
  v1 = v0[2];
  v2 = sub_233237A1C();
  v3 = *v2;
  v0[3] = *v2;
  v4 = sub_23328CE8C();
  v0[4] = v4;
  v5 = *(v4 - 8);
  v0[5] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v0[6] = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  sub_23328D5CC();
  v11 = (*v3 + 336);
  v12 = (*v11 + **v11);
  v8 = (*v11)[1];
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_233227130;

  return v12(v7);
}

uint64_t sub_233227130()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 64) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_233227308, 0, 0);
  }

  else
  {
    v9 = *(v2 + 48);

    v10 = *(v8 + 8);

    return v10();
  }
}

uint64_t sub_233227308()
{
  v1 = v0[6];

  v2 = v0[8];
  v3 = v0[1];

  return v3();
}

uint64_t sub_2332273A0(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_233227590(&qword_27DDE33D8);
  *v4 = v1;
  v4[1] = sub_233126374;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_23322749C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDFB360 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08A58);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_233227590(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s18DeleteModelCommandVMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2332275D4()
{
  v0 = sub_23328D53C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_23328D4DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_23328D3BC();
  v12 = sub_23328D3CC();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v13 = sub_23328D42C();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  return sub_23328D5FC();
}

void sub_233227848()
{
  sub_2331D6598();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_2332278C8()
{
  result = qword_27DDFB780[0];
  if (!qword_27DDFB780[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFB780);
  }

  return result;
}

unint64_t sub_233227920()
{
  result = qword_27DDFB890;
  if (!qword_27DDFB890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDFB890);
  }

  return result;
}

unint64_t sub_233227978()
{
  result = qword_27DDFB898[0];
  if (!qword_27DDFB898[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFB898);
  }

  return result;
}

uint64_t sub_2332279D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08A70);
  __swift_project_value_buffer(v4, qword_27DE08A70);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t _s27GenerateTrainingDataCommandVMa()
{
  result = qword_27DDFBBB0;
  if (!qword_27DDFBBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_233227B98()
{
  sub_23328D20C();
  v1 = *(v0 + 80);
  v2 = sub_23328CC9C();
  *(v0 + 88) = v2;
  v3 = *(v2 - 8);
  *(v0 + 96) = v3;
  v4 = *(v3 + 64) + 15;
  *(v0 + 104) = swift_task_alloc();
  v5 = sub_233237A1C();
  v6 = *v5;
  *(v0 + 112) = *v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  sub_23328D5CC();
  v18 = *(v0 + 16);
  *(v0 + 120) = *(v0 + 24);
  TrainingDataCommandVMa = _s27GenerateTrainingDataCommandVMa();
  v8 = v1 + TrainingDataCommandVMa[5];
  sub_23328D5CC();
  v17 = *(v0 + 32);
  *(v0 + 128) = *(v0 + 40);
  v9 = TrainingDataCommandVMa[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  sub_23328D5CC();
  v10 = *(v0 + 48);
  *(v0 + 136) = *(v0 + 56);
  v11 = TrainingDataCommandVMa[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3410, &qword_23329DB80);
  sub_23328D5CC();
  v12 = *(v0 + 64);
  LOBYTE(v1) = *(v0 + 72);
  v15 = (*v6 + 504);
  v16 = *v15 + **v15;
  v13 = (*v15)[1];
  v14 = swift_task_alloc();
  *(v0 + 144) = v14;
  *v14 = v0;
  v14[1] = sub_233227E88;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_233227E88()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v10 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_233228050;
  }

  else
  {
    v6 = v2[16];
    v5 = v2[17];
    v8 = v2[14];
    v7 = v2[15];
    (*(v2[12] + 8))(v2[13], v2[11]);

    v4 = sub_233227FEC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_233227FEC()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_233228050()
{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];

  v6 = v0[19];
  v7 = v0[1];

  return v7();
}

uint64_t sub_2332280E4()
{
  v1 = 0x4449656C61636F6CLL;
  v2 = 0x44496563696F76;
  if (*v0 != 2)
  {
    v2 = 0x6F43657361726870;
  }

  if (*v0)
  {
    v1 = 0x7954747069726373;
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

uint64_t sub_23322816C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_233229918(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2332281A0(uint64_t a1)
{
  v2 = sub_2332290C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2332281DC(uint64_t a1)
{
  v2 = sub_2332290C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233228218@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23328D53C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_23328D4DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v27 - v12;
  v37 = 0x53552D6E65;
  v38 = 0xE500000000000000;
  sub_23328D3BC();
  v14 = sub_23328D3CC();
  v15 = *(v14 - 8);
  v36 = *(v15 + 56);
  v34 = v15 + 56;
  v32 = v14;
  v36(v13, 0, 1, v14);
  v16 = sub_23328D42C();
  v17 = *(v16 - 8);
  v35 = *(v17 + 56);
  v33 = v17 + 56;
  v31 = v16;
  v35(v9, 1, 1, v16);
  sub_23328D4CC();
  sub_23328D52C();
  v30 = a1;
  sub_23328D5EC();
  TrainingDataCommandVMa = _s27GenerateTrainingDataCommandVMa();
  v28 = *(TrainingDataCommandVMa + 20);
  v29 = TrainingDataCommandVMa;
  v19 = TrainingDataCommandVMa;
  v37 = 0x746C7561666564;
  v38 = 0xE700000000000000;
  sub_23328D3BC();
  v20 = v14;
  v21 = v36;
  v36(v13, 0, 1, v20);
  v22 = v35;
  v35(v9, 1, 1, v16);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5EC();
  v28 = *(v19 + 24);
  sub_23328D3BC();
  v23 = v32;
  v21(v13, 0, 1, v32);
  v24 = v31;
  v22(v9, 1, 1, v31);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5BC();
  v25 = *(v29 + 28);
  sub_23328D3BC();
  v36(v13, 0, 1, v23);
  v35(v9, 1, 1, v24);
  sub_23328D4CC();
  sub_23328D52C();
  return sub_23328D5DC();
}

uint64_t sub_2332286BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a1;
  v57 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3410, &qword_23329DB80);
  v56 = *(v61 - 8);
  v2 = *(v56 + 64);
  MEMORY[0x28223BE20](v61);
  v60 = &v56 - v3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  v59 = *(v63 - 8);
  v4 = *(v59 + 64);
  MEMORY[0x28223BE20](v63);
  v62 = &v56 - v5;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v66 = *(v68 - 8);
  v6 = *(v66 + 64);
  MEMORY[0x28223BE20](v68);
  v65 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v67 = &v56 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3418, &unk_23329DB90);
  v64 = *(v69 - 8);
  v10 = *(v64 + 64);
  MEMORY[0x28223BE20](v69);
  v74 = &v56 - v11;
  v12 = sub_23328D53C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v80 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23328D4DC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v56 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v56 - v25;
  TrainingDataCommandVMa = _s27GenerateTrainingDataCommandVMa();
  v28 = *(*(TrainingDataCommandVMa - 8) + 64);
  v29 = TrainingDataCommandVMa - 8;
  v81 = TrainingDataCommandVMa - 8;
  MEMORY[0x28223BE20](TrainingDataCommandVMa - 8);
  v85 = &v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = 0x53552D6E65;
  v84 = 0xE500000000000000;
  sub_23328D3BC();
  v79 = sub_23328D3CC();
  v31 = *(v79 - 8);
  v73 = *(v31 + 56);
  v32 = v31 + 56;
  v73(v26, 0, 1, v79);
  v77 = v32;
  v78 = sub_23328D42C();
  v33 = *(v78 - 8);
  v34 = *(v33 + 56);
  v72 = v33 + 56;
  v34(v22, 1, 1, v78);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5EC();
  v76 = *(v29 + 28);
  v83 = 0x746C7561666564;
  v84 = 0xE700000000000000;
  sub_23328D3BC();
  v35 = v79;
  v36 = v73;
  v73(v26, 0, 1, v79);
  v37 = v78;
  v71 = v34;
  v34(v22, 1, 1, v78);
  v70 = v18;
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5EC();
  v38 = *(v81 + 32);
  sub_23328D3BC();
  v36(v26, 0, 1, v35);
  v34(v22, 1, 1, v37);
  sub_23328D4CC();
  sub_23328D52C();
  v58 = v38;
  sub_23328D5BC();
  v39 = *(v81 + 36);
  sub_23328D3BC();
  v40 = v82;
  v36(v26, 0, 1, v79);
  v71(v22, 1, 1, v78);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5DC();
  v41 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  sub_2332290C0();
  v42 = v75;
  v43 = v74;
  sub_23328E68C();
  if (v42)
  {
    v49 = v85;
    __swift_destroy_boxed_opaque_existential_0(v82);
    v55 = v49;
  }

  else
  {
    v81 = v39;
    v45 = v65;
    v44 = v66;
    LOBYTE(v83) = 0;
    sub_233229170(&qword_27DDE3420, &qword_27DDE3400, &unk_23329DB70);
    sub_23328E41C();
    v46 = *(v44 + 40);
    v46(v85, v67, v68);
    LOBYTE(v83) = 1;
    sub_23328E41C();
    v46(&v85[v76], v45, v68);
    LOBYTE(v83) = 2;
    sub_233229170(&qword_27DDE3428, &qword_27DDE3408, &unk_23329E570);
    v47 = v62;
    v48 = v63;
    sub_23328E41C();
    (*(v59 + 40))(&v85[v58], v47, v48);
    LOBYTE(v83) = 3;
    sub_233229170(&qword_27DDE3430, &qword_27DDE3410, &qword_23329DB80);
    v51 = v60;
    v52 = v61;
    v53 = v69;
    sub_23328E41C();
    (*(v64 + 8))(v43, v53);
    v54 = v85;
    (*(v56 + 40))(&v85[v81], v51, v52);
    sub_2332291C4(v54, v57);
    __swift_destroy_boxed_opaque_existential_0(v82);
    v55 = v54;
  }

  return sub_233229114(v55);
}

unint64_t sub_2332290C0()
{
  result = qword_27DDFB928[0];
  if (!qword_27DDFB928[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFB928);
  }

  return result;
}

uint64_t sub_233229114(uint64_t a1)
{
  TrainingDataCommandVMa = _s27GenerateTrainingDataCommandVMa();
  (*(*(TrainingDataCommandVMa - 8) + 8))(a1, TrainingDataCommandVMa);
  return a1;
}

uint64_t sub_233229170(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2332291C4(uint64_t a1, uint64_t a2)
{
  TrainingDataCommandVMa = _s27GenerateTrainingDataCommandVMa();
  (*(*(TrainingDataCommandVMa - 8) + 16))(a2, a1, TrainingDataCommandVMa);
  return a2;
}

uint64_t sub_23322925C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_233227B78();
}

uint64_t sub_23322931C(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_233229A88(&qword_27DDE3478);
  *v4 = v1;
  v4[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_233229418@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDFB920 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08A70);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

void sub_233229550()
{
  sub_23322961C();
  if (v0 <= 0x3F)
  {
    sub_23322966C(319, &qword_27DDE3460, &qword_27DDE1A90, &unk_233290970);
    if (v1 <= 0x3F)
    {
      sub_23322966C(319, &qword_27DDE3468, &qword_27DDE3470, &qword_2332A2200);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23322961C()
{
  if (!qword_27DDE3458)
  {
    v0 = sub_23328D60C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDE3458);
    }
  }
}

void sub_23322966C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_23328D60C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t _s27GenerateTrainingDataCommandV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s27GenerateTrainingDataCommandV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_233229814()
{
  result = qword_27DDFBCC0[0];
  if (!qword_27DDFBCC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFBCC0);
  }

  return result;
}

unint64_t sub_23322986C()
{
  result = qword_27DDFBDD0;
  if (!qword_27DDFBDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDFBDD0);
  }

  return result;
}

unint64_t sub_2332298C4()
{
  result = qword_27DDFBDD8[0];
  if (!qword_27DDFBDD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFBDD8);
  }

  return result;
}

uint64_t sub_233229918(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C61636F6CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_23328E54C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7954747069726373 && a2 == 0xEA00000000006570 || (sub_23328E54C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496563696F76 && a2 == 0xE700000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43657361726870 && a2 == 0xEB00000000746E75)
  {

    return 3;
  }

  else
  {
    v6 = sub_23328E54C();

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

uint64_t sub_233229A88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s27GenerateTrainingDataCommandVMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_233229ACC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08A88);
  __swift_project_value_buffer(v4, qword_27DE08A88);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t sub_233229C1C()
{
  v1[2] = v0;
  v2 = sub_23328D1EC();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_233229CDC, 0, 0);
}

uint64_t sub_233229CDC()
{
  sub_23328D20C();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = sub_233237A1C();
  v6 = *v5;
  v0[6] = *v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3480, &qword_23329DDF0);
  sub_23328D54C();
  v7 = sub_23328D1DC();
  (*(v2 + 8))(v1, v4);
  v11 = (*v6 + 264);
  v12 = (*v11 + **v11);
  v8 = (*v11)[1];
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_233229ECC;

  return v12(v7 & 1);
}

uint64_t sub_233229ECC()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *v1;
  v4[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23322B1D0, 0, 0);
  }

  else
  {
    v5 = v4[5];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_23322A044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23328E54C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23322A0C8(uint64_t a1)
{
  v2 = sub_23322A51C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23322A104(uint64_t a1)
{
  v2 = sub_23322A51C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23322A140@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3480, &qword_23329DDF0);
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3490, qword_23329DDF8);
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = sub_23328D47C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v26 - v15;
  v17 = _s16CloudSyncCommandVMa();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23328D3CC();
  (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
  sub_23328D46C();
  sub_23328D1EC();
  sub_23322AE10(&qword_27DDE3488, MEMORY[0x277CE66D8]);
  sub_23328D56C();
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23322A51C();
  v23 = v30;
  sub_23328E68C();
  if (!v23)
  {
    v24 = v28;
    sub_23322A5CC();
    sub_23328E41C();
    (*(v29 + 8))(v10, v7);
    (*(v24 + 40))(v20, v6, v3);
    sub_23322A630(v20, v27);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_23322A570(v20);
}

uint64_t _s16CloudSyncCommandVMa()
{
  result = qword_27DDFC170;
  if (!qword_27DDFC170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23322A51C()
{
  result = qword_27DDFBE68[0];
  if (!qword_27DDFBE68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFBE68);
  }

  return result;
}

uint64_t sub_23322A570(uint64_t a1)
{
  v2 = _s16CloudSyncCommandVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23322A5CC()
{
  result = qword_27DDE3498;
  if (!qword_27DDE3498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE3480, &qword_23329DDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3498);
  }

  return result;
}

uint64_t sub_23322A630(uint64_t a1, uint64_t a2)
{
  v4 = _s16CloudSyncCommandVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23322A724()
{
  v1[2] = v0;
  v2 = sub_23328D1EC();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23322A7E4, 0, 0);
}

uint64_t sub_23322A7E4()
{
  sub_23328D20C();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = sub_233237A1C();
  v6 = *v5;
  v0[6] = *v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3480, &qword_23329DDF0);
  sub_23328D54C();
  v7 = sub_23328D1DC();
  (*(v2 + 8))(v1, v4);
  v11 = (*v6 + 264);
  v12 = (*v11 + **v11);
  v8 = (*v11)[1];
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_23322A9D4;

  return v12(v7 & 1);
}

uint64_t sub_23322A9D4()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *v1;
  v4[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23322AB38, 0, 0);
  }

  else
  {
    v5 = v4[5];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_23322AB38()
{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_23322ABE4(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_23322AE10(&qword_27DDE34A0, _s16CloudSyncCommandVMa);
  *v4 = v1;
  v4[1] = sub_233126374;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_23322AD08@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDFBE60 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08A88);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_23322AE10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23322AE58()
{
  v0 = sub_23328D47C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - v4;
  v6 = sub_23328D3CC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_23328D46C();
  sub_23328D1EC();
  sub_23322AE10(&qword_27DDE3488, MEMORY[0x277CE66D8]);
  return sub_23328D56C();
}

void sub_23322AFF4()
{
  sub_23322B060();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23322B060()
{
  if (!qword_27DDE34C8)
  {
    sub_23328D1EC();
    v0 = sub_23328D5AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDE34C8);
    }
  }
}

unint64_t sub_23322B0CC()
{
  result = qword_27DDFC280[0];
  if (!qword_27DDFC280[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFC280);
  }

  return result;
}

unint64_t sub_23322B124()
{
  result = qword_27DDFC390;
  if (!qword_27DDFC390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDFC390);
  }

  return result;
}

unint64_t sub_23322B17C()
{
  result = qword_27DDFC398[0];
  if (!qword_27DDFC398[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFC398);
  }

  return result;
}

uint64_t sub_23322B1D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08AA0);
  __swift_project_value_buffer(v4, qword_27DE08AA0);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t _s16DeleteAllCommandVMa()
{
  result = qword_27DDFC730;
  if (!qword_27DDFC730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23322B390()
{
  sub_23328D20C();
  v1 = *(v0 + 16);
  v2 = sub_233237A1C();
  v3 = *v2;
  *(v0 + 24) = *v2;
  v4 = *(_s16DeleteAllCommandVMa() + 20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  *(v0 + 49) = (*(v0 + 48) & 1) == 0;
  v8 = (*v3 + 352);
  v9 = (*v8 + **v8);
  v5 = (*v8)[1];
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_23322B570;

  return v9(v0 + 49);
}

uint64_t sub_23322B570()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  v3[5] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x2822009F8](sub_23322B6B4, 0, 0);
  }

  else
  {
    v5 = v3[3];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_23322B6CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  if (v8 & 1) == 0 && (v2 = v0 + *(_s16DeleteAllCommandVMa() + 20), sub_23328D54C(), v7 != 1) || (v3 = v1 + *(_s16DeleteAllCommandVMa() + 20), result = sub_23328D54C(), v6 == 1) && (result = sub_23328D54C(), (v5))
  {
    sub_23328D4AC();
    sub_23322C27C(&qword_27DDE2D30, MEMORY[0x277CEEA40]);
    swift_allocError();
    sub_23328D4BC();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_23322B814()
{
  if (*v0)
  {
    return 0x736563696F76;
  }

  else
  {
    return 0x736C65646F6DLL;
  }
}

uint64_t sub_23322B840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736C65646F6DLL && a2 == 0xE600000000000000;
  if (v6 || (sub_23328E54C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736563696F76 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23328E54C();

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

uint64_t sub_23322B914(uint64_t a1)
{
  v2 = sub_23322BDD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23322B950(uint64_t a1)
{
  v2 = sub_23322BDD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23322B98C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v32 = *(v34 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v36 = &v31 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE34D0, qword_23329E078);
  v33 = *(v37 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v37);
  v9 = &v31 - v8;
  v10 = sub_23328D4DC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v31 - v14;
  v16 = _s16DeleteAllCommandVMa();
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23328D3CC();
  v22 = *(*(v21 - 8) + 56);
  v22(v15, 1, 1, v21);
  sub_23328D4CC();
  sub_23328D58C();
  v23 = *(v17 + 28);
  v22(v15, 1, 1, v21);
  sub_23328D4CC();
  sub_23328D58C();
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23322BDD8();
  v25 = v38;
  sub_23328E68C();
  if (!v25)
  {
    v38 = v23;
    v26 = v32;
    v40 = 0;
    sub_233126AC4();
    v27 = v34;
    sub_23328E41C();
    v28 = v36;
    v36 = *(v26 + 40);
    (v36)(v20, v28, v27);
    v39 = 1;
    v29 = v37;
    sub_23328E41C();
    (*(v33 + 8))(v9, v29);
    (v36)(&v20[v38], v35, v27);
    sub_23322BE88(v20, v31);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_23322BE2C(v20);
}

unint64_t sub_23322BDD8()
{
  result = qword_27DDFC428[0];
  if (!qword_27DDFC428[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFC428);
  }

  return result;
}

uint64_t sub_23322BE2C(uint64_t a1)
{
  v2 = _s16DeleteAllCommandVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23322BE88(uint64_t a1, uint64_t a2)
{
  v4 = _s16DeleteAllCommandVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23322BF7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_23322B370();
}

uint64_t sub_23322C050(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_23322C27C(&qword_27DDE34D8, _s16DeleteAllCommandVMa);
  *v4 = v1;
  v4[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_23322C174@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDFC420 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08AA0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_23322C27C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23322C2C4(uint64_t a1)
{
  v2 = sub_23328D4DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_23328D3CC();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 1, 1, v8);
  sub_23328D4CC();
  sub_23328D58C();
  v10 = *(a1 + 20);
  v9(v7, 1, 1, v8);
  sub_23328D4CC();
  return sub_23328D58C();
}

void sub_23322C488()
{
  sub_23316E7B8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_23322C508()
{
  result = qword_27DDFC840[0];
  if (!qword_27DDFC840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFC840);
  }

  return result;
}

unint64_t sub_23322C560()
{
  result = qword_27DDFC950;
  if (!qword_27DDFC950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDFC950);
  }

  return result;
}

unint64_t sub_23322C5B8()
{
  result = qword_27DDFC958[0];
  if (!qword_27DDFC958[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFC958);
  }

  return result;
}

uint64_t sub_23322C60C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08AB8);
  __swift_project_value_buffer(v4, qword_27DE08AB8);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t _s25ImportTrainingDataCommandVMa()
{
  result = qword_27DDFCCF0;
  if (!qword_27DDFCCF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23322C7B4()
{
  v1[6] = v0;
  v2 = sub_23328D23C();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23322C874, 0, 0);
}

uint64_t sub_23322C874()
{
  sub_23328D20C();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v24 = v0[7];
  v4 = sub_23328CE8C();
  v0[10] = v4;
  v5 = *(v4 - 8);
  v0[11] = v5;
  v6 = *(v5 + 64) + 15;
  v26 = swift_task_alloc();
  v0[12] = v26;
  v7 = sub_233237A1C();
  v8 = *v7;
  v0[13] = *v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  sub_23328D5CC();
  v9 = v0[3];
  v23 = v0[2];
  v0[14] = v9;
  v10 = _s25ImportTrainingDataCommandVMa();
  v11 = v3 + *(v10 + 24);
  sub_23328D5CC();
  v12 = v0[4];
  v13 = v0[5];
  v0[15] = v13;
  v14 = *(v10 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3500, &qword_23329E2E8);
  sub_23328D5CC();
  v15 = sub_23328CC9C();
  v0[16] = v15;
  v16 = *(v15 - 8);
  v0[17] = v16;
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  v0[18] = v18;
  MEMORY[0x23839AF80]();
  (*(v1 + 8))(v2, v24);
  v22 = (*v8 + 288);
  v25 = (*v22 + **v22);
  v19 = (*v22)[1];
  v20 = swift_task_alloc();
  v0[19] = v20;
  *v20 = v0;
  v20[1] = sub_23322CBB0;

  return v25(v26, v23, v9, v12, v13, v18);
}

uint64_t sub_23322CBB0()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = v2[15];
  v6 = v2[14];
  v7 = v2[13];
  (*(v2[17] + 8))(v2[18], v2[16]);

  if (v0)
  {
    v8 = sub_23322CE58;
  }

  else
  {

    v8 = sub_23322CD80;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_23322CD80()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  sub_23328D30C();
  sub_23328CE3C();
  sub_23328D27C();

  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_23322CE58()
{
  v1 = v0[18];
  v2 = v0[12];

  v3 = v0[20];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_23322CED0()
{
  v1 = 1635017060;
  if (*v0 != 1)
  {
    v1 = 0x4449656C61636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_23322CF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23322E42C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23322CF44(uint64_t a1)
{
  v2 = sub_23322DC04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23322CF80(uint64_t a1)
{
  v2 = sub_23322DC04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23322CFBC@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_23328D53C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_23328D4DC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v19 - v11;
  sub_23328D3BC();
  v22 = sub_23328D3CC();
  v13 = *(*(v22 - 8) + 56);
  v13(v12, 0, 1, v22);
  v21 = v13;
  v14 = sub_23328D42C();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v20 = v15;
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5FC();
  v16 = _s25ImportTrainingDataCommandVMa();
  v19[1] = *(v16 + 20);
  sub_23328D3BC();
  v13(v12, 0, 1, v22);
  v15(v8, 1, 1, v14);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D23C();
  sub_23322E0A8(&qword_27DDE3508, MEMORY[0x277CE66E8]);
  sub_23328D5FC();
  v17 = *(v16 + 24);
  v24 = 0x53552D6E65;
  v25 = 0xE500000000000000;
  sub_23328D3BC();
  v21(v12, 0, 1, v22);
  v20(v8, 1, 1, v14);
  sub_23328D4CC();
  sub_23328D52C();
  return sub_23328D5EC();
}

uint64_t sub_23322D3B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v50 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3500, &qword_23329E2E8);
  v52 = *(v54 - 8);
  v2 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v55 = &v50 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v5 = *(v4 - 8);
  v57 = v4;
  v58 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v53 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v59 = &v50 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3510, qword_23329E2F8);
  v56 = *(v60 - 8);
  v10 = *(v56 + 64);
  MEMORY[0x28223BE20](v60);
  v66 = &v50 - v11;
  v12 = sub_23328D53C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_23328D4DC();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v65 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v50 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v50 - v23;
  v25 = _s25ImportTrainingDataCommandVMa();
  v26 = *(v25 - 8);
  v70 = v25 - 8;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v73 = &v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v29 = sub_23328D3CC();
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v69 = v30 + 56;
  v63 = v29;
  v31(v24, 0, 1, v29);
  v64 = v31;
  v32 = sub_23328D42C();
  v61 = *(*(v32 - 8) + 56);
  v62 = v32;
  v61(v20, 1, 1, v32);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5FC();
  v33 = *(v70 + 28);
  sub_23328D3BC();
  v31(v24, 0, 1, v29);
  v34 = v20;
  v35 = v20;
  v36 = v61;
  v61(v34, 1, 1, v32);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D23C();
  sub_23322E0A8(&qword_27DDE3508, MEMORY[0x277CE66E8]);
  v51 = v33;
  v37 = v73;
  sub_23328D5FC();
  v38 = *(v70 + 32);
  v71 = 0x53552D6E65;
  v72 = 0xE500000000000000;
  sub_23328D3BC();
  v64(v24, 0, 1, v63);
  v36(v35, 1, 1, v62);
  v39 = v38;
  sub_23328D4CC();
  sub_23328D52C();
  v40 = v67;
  sub_23328D5EC();
  v41 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  sub_23322DC04();
  v42 = v66;
  v43 = v68;
  sub_23328E68C();
  if (!v43)
  {
    v44 = v58;
    LOBYTE(v71) = 0;
    sub_233229170(&qword_27DDE3420, &qword_27DDE3400, &unk_23329DB70);
    v45 = v57;
    sub_23328E41C();
    v70 = *(v44 + 40);
    (v70)(v37, v59, v45);
    LOBYTE(v71) = 1;
    sub_233229170(&qword_27DDE3518, &qword_27DDE3500, &qword_23329E2E8);
    v46 = v54;
    sub_23328E41C();
    v58 = v44 + 40;
    (*(v52 + 40))(&v73[v51], v55, v46);
    LOBYTE(v71) = 2;
    v47 = v53;
    v48 = v60;
    sub_23328E41C();
    (*(v56 + 8))(v42, v48);
    v37 = v73;
    (v70)(&v73[v39], v47, v45);
    sub_23322DCB4(v37, v50);
  }

  __swift_destroy_boxed_opaque_existential_0(v40);
  return sub_23322DC58(v37);
}

unint64_t sub_23322DC04()
{
  result = qword_27DDFC9E8[0];
  if (!qword_27DDFC9E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFC9E8);
  }

  return result;
}

uint64_t sub_23322DC58(uint64_t a1)
{
  v2 = _s25ImportTrainingDataCommandVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23322DCB4(uint64_t a1, uint64_t a2)
{
  v4 = _s25ImportTrainingDataCommandVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23322DDA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_23322C7B4();
}

uint64_t sub_23322DE7C(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_23322E0A8(&qword_27DDE3520, _s25ImportTrainingDataCommandVMa);
  *v4 = v1;
  v4[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_23322DFA0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDFC9E0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08AB8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_23322E0A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23322E0F4(uint64_t a1)
{
  v2 = sub_23328D23C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3500, &qword_23329E2E8);
  sub_23328D5CC();
  sub_23328D21C();
  return (*(v3 + 8))(v6, v2);
}

void sub_23322E234()
{
  sub_23322961C();
  if (v0 <= 0x3F)
  {
    sub_23322E2BC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23322E2BC()
{
  if (!qword_27DDE3548)
  {
    sub_23328D23C();
    v0 = sub_23328D60C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDE3548);
    }
  }
}

unint64_t sub_23322E328()
{
  result = qword_27DDFCE00[0];
  if (!qword_27DDFCE00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFCE00);
  }

  return result;
}

unint64_t sub_23322E380()
{
  result = qword_27DDFCF10;
  if (!qword_27DDFCF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDFCF10);
  }

  return result;
}

unint64_t sub_23322E3D8()
{
  result = qword_27DDFCF18[0];
  if (!qword_27DDFCF18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFCF18);
  }

  return result;
}

uint64_t sub_23322E42C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_23328E54C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449656C61636F6CLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23328E54C();

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

uint64_t sub_23322E544()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08AD0);
  __swift_project_value_buffer(v4, qword_27DE08AD0);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t _s25ExportVoicePackageCommandVMa()
{
  result = qword_27DDFD2B0;
  if (!qword_27DDFD2B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23322E6EC()
{
  v0 = sub_23328D53C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_23328D4DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - v10;
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_23328E24C();

  v23 = 0xD000000000000025;
  v24 = 0x80000002332ABC70;
  v12 = sub_23328CC9C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328CB8C();
  v17 = sub_23328CC6C();
  v19 = v18;
  (*(v13 + 8))(v16, v12);
  MEMORY[0x23839B7E0](v17, v19);

  v20 = sub_23328D3CC();
  sub_233231400(&qword_27DDE2D20, MEMORY[0x277CEEA28]);
  sub_23328E57C();
  (*(*(v20 - 8) + 56))(v11, 0, 1, v20);
  v21 = sub_23328D42C();
  (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  sub_23328D4CC();
  sub_23328D52C();
  return sub_23328D5BC();
}

uint64_t sub_23322EA78()
{
  sub_23328D20C();
  v1 = v0[4];
  v2 = sub_23328CC9C();
  v0[5] = v2;
  v3 = *(v2 - 8);
  v4 = v3;
  v0[6] = v3;
  v5 = *(v3 + 64) + 15;
  v6 = swift_task_alloc();
  v0[7] = v6;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360) - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v9 = _s25ExportVoicePackageCommandVMa();
  v0[8] = v9;
  v10 = *(v9 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  sub_23328D5CC();
  if (v0[3])
  {
    v11 = v0[2];
    v12 = v0[3];

    sub_23328CB7C();
    swift_bridgeObjectRelease_n();
    (*(v4 + 56))(v8, 0, 1, v2);
    (*(v4 + 32))(v6, v8, v2);
  }

  else
  {
    (*(v4 + 56))(v8, 1, 1, v2);
    sub_23328CB8C();
    if ((*(v4 + 48))(v8, 1, v2) != 1)
    {
      sub_233121E04(v8, &qword_27DDE19A0, &unk_233290360);
    }
  }

  v13 = v0[4];

  v14 = sub_233237A1C();
  v0[9] = v14;
  v15 = *v14;
  v0[10] = *v14;
  v16 = swift_task_alloc();
  v0[11] = v16;
  *(v16 + 16) = v13;
  v17 = *(*v15 + 192);

  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  v0[12] = v19;
  *v19 = v0;
  v19[1] = sub_23322EDF4;

  return v21(sub_23322FC20, v16);
}

uint64_t sub_23322EDF4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(v4 + 104) = a1;
  *(v4 + 112) = v1;

  v7 = *(v3 + 88);
  v8 = *(v3 + 80);

  if (v1)
  {
    v9 = sub_23322F2E0;
  }

  else
  {
    v9 = sub_23322EF4C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_23322EF4C()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 32);
  v4 = *v1;
  *(v0 + 120) = *v1;
  v5 = *(v2 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  v6 = *(v0 + 144);
  v7 = v3 + *(v2 + 36);
  sub_23328D54C();
  v8 = *(v0 + 145);
  v14 = (*v4 + 312);
  v15 = (*v14 + **v14);
  v9 = (*v14)[1];
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  *v10 = v0;
  v10[1] = sub_23322F0FC;
  v11 = *(v0 + 104);
  v12 = *(v0 + 56);

  return v15(v11, v12, v6, v8);
}

uint64_t sub_23322F0FC()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 120);
  v6 = *(v2 + 104);
  if (v0)
  {

    v7 = sub_23322F360;
  }

  else
  {

    v7 = sub_23322F260;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_23322F260()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_23322F2E0()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[14];
  v2 = v0[1];

  return v2();
}

uint64_t sub_23322F360()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[17];
  v2 = v0[1];

  return v2();
}

uint64_t sub_23322F3E0(uint64_t *a1, uint64_t a2)
{
  v4 = _s25ExportVoicePackageCommandVMa();
  v5 = *(v4 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  if (v65)
  {
    goto LABEL_2;
  }

  v58 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3580, &unk_23329E820);
  v63 = v54;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = v54 - v10;
  v12 = *(type metadata accessor for TTSVBVoice() + 20);
  v13 = sub_23328CE8C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  v59 = a1;
  v15(v54 - v10, a1 + v12, v13);
  v55 = v13;
  v56 = v14;
  v16 = 1;
  (*(v14 + 56))(v54 - v10, 0, 1, v13);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
  v64 = *(v17 - 8);
  v18 = *(v64 + 7);
  v19 = v18(v54 - v10, 0, 1, v17);
  v62 = v54;
  MEMORY[0x28223BE20](v19);
  v20 = v54 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  sub_23328D5CC();
  v60 = a2;
  if (v66)
  {

    sub_23328CE2C();
    swift_bridgeObjectRelease_n();
    v16 = 0;
  }

  v18(v54 - v10, v16, 1, v17);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3588, &qword_23329E830);
  v61 = v54;
  v22 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21 - 8);
  v24 = v54 - v23;
  v26 = *(v25 + 56);
  sub_233121D34(v11, v54 - v23, &qword_27DDE3580, &unk_23329E820);
  sub_233121D34(v20, &v24[v26], &qword_27DDE3580, &unk_23329E820);
  v27 = *(v64 + 6);
  v28 = v27(v24, 1, v17);
  if (v28 == 1)
  {
    sub_233121E04(v20, &qword_27DDE3580, &unk_23329E820);
    sub_233121E04(v11, &qword_27DDE3580, &unk_23329E820);
    if (v27(&v24[v26], 1, v17) == 1)
    {
      sub_233121E04(v24, &qword_27DDE3580, &unk_23329E820);
      v6 = 1;
      return v6 & 1;
    }

    goto LABEL_11;
  }

  MEMORY[0x28223BE20](v28);
  v29 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_233121D34(v24, v29, &qword_27DDE3580, &unk_23329E820);
  if (v27(&v24[v26], 1, v17) == 1)
  {
    sub_233121E04(v20, &qword_27DDE3580, &unk_23329E820);
    sub_233121E04(v11, &qword_27DDE3580, &unk_23329E820);
    sub_233121E04(v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27DDE19B0, &qword_233290370);
LABEL_11:
    sub_233121E04(v24, &qword_27DDE3588, &qword_23329E830);
    v30 = v60;
LABEL_12:
    v31 = *v59;
    v32 = v59[1];
    v33 = v30 + *(v58 + 20);
    sub_23328D5CC();
    if (!v66)
    {
      v6 = 0;
      return v6 & 1;
    }

    if (v31 != v65 || v66 != v32)
    {
      v6 = sub_23328E54C();

      return v6 & 1;
    }

    goto LABEL_2;
  }

  v54[3] = v54;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3590, &qword_23329E838);
  v54[2] = v54;
  v35 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34 - 8);
  v37 = v54 - v36;
  v39 = *(v38 + 56);
  sub_233154860(v29, v54 - v36);
  sub_233154860(&v24[v26], &v37[v39]);
  v40 = v55;
  v41 = *(v56 + 48);
  v42 = v41(v37, 1, v55);
  v30 = v60;
  if (v42 == 1)
  {
    sub_233121E04(v20, &qword_27DDE3580, &unk_23329E820);
    sub_233121E04(v11, &qword_27DDE3580, &unk_23329E820);
    if (v41(&v37[v39], 1, v40) == 1)
    {
      sub_233121E04(v37, &qword_27DDE19B0, &qword_233290370);
      v43 = 1;
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v44 = *(v64 + 8);
  MEMORY[0x28223BE20](v42);
  v64 = v54 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_233121D34(v37, v64, &qword_27DDE19B0, &qword_233290370);
  v46 = v41(&v37[v39], 1, v40);
  if (v46 == 1)
  {
    sub_233121E04(v20, &qword_27DDE3580, &unk_23329E820);
    sub_233121E04(v11, &qword_27DDE3580, &unk_23329E820);
    (*(v56 + 8))(v64, v40);
LABEL_23:
    sub_233121E04(v37, &qword_27DDE3590, &qword_23329E838);
    v43 = 0;
    goto LABEL_25;
  }

  v54[0] = v54;
  v54[1] = v54;
  v47 = v56;
  v48 = *(v56 + 64);
  v49 = MEMORY[0x28223BE20](v46);
  v51 = v54 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v47 + 32))(v51, &v37[v39], v40, v49);
  sub_2332319F8();
  v52 = v40;
  v43 = sub_23328D90C();
  v53 = *(v47 + 8);
  v53(v51, v52);
  sub_233121E04(v20, &qword_27DDE3580, &unk_23329E820);
  sub_233121E04(v11, &qword_27DDE3580, &unk_23329E820);
  v53(v64, v52);
  sub_233121E04(v37, &qword_27DDE19B0, &qword_233290370);
LABEL_25:
  sub_233121E04(v24, &qword_27DDE3580, &unk_23329E820);
  if ((v43 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_2:
  v6 = 1;
  return v6 & 1;
}

uint64_t sub_23322FC28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  sub_23328D5CC();
  if (v6)
  {

    v1 = v0 + *(_s25ExportVoicePackageCommandVMa() + 20);
    sub_23328D5CC();

    sub_23328D4AC();
    sub_233231400(&qword_27DDE2D30, MEMORY[0x277CEEA40]);
    swift_allocError();
    sub_23328D4BC();
    return swift_willThrow();
  }

  else
  {
    sub_23328D5CC();
    v3 = _s25ExportVoicePackageCommandVMa();
    v4 = v0 + *(v3 + 20);
    sub_23328D5CC();
    v5 = *(v3 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
    return sub_23328D55C();
  }
}

uint64_t sub_23322FDB4()
{
  v1 = *v0;
  v2 = 0x44496563696F76;
  v3 = 0x74757074756FLL;
  v4 = 0x73736572706D6F63;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6D614E6563696F76;
  if (v1 != 1)
  {
    v5 = 0x6563696F566C6C61;
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

uint64_t sub_23322FE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2332317EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23322FEA8(uint64_t a1)
{
  v2 = sub_233230F5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23322FEE4(uint64_t a1)
{
  v2 = sub_233230F5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23322FF20@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_23328D47C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v38 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23328D41C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23328D53C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_23328D4DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v32 - v17;
  sub_23328D3BC();
  v19 = sub_23328D3CC();
  v20 = *(v19 - 8);
  v35 = *(v20 + 56);
  v36 = v20 + 56;
  v33 = v19;
  v35(v18, 0, 1, v19);
  v21 = sub_23328D42C();
  v22 = *(*(v21 - 8) + 56);
  v22(v14, 1, 1, v21);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5BC();
  v23 = _s25ExportVoicePackageCommandVMa();
  v32[1] = v23[5];
  sub_23328D3BC();
  v24 = v35;
  v35(v18, 0, 1, v19);
  v22(v14, 1, 1, v21);
  sub_23328D4CC();
  sub_23328D52C();
  v25 = v34;
  sub_23328D5BC();
  v26 = v23[6];
  sub_23328D3BC();
  v27 = v33;
  v24(v18, 0, 1, v33);
  sub_23328D4CC();
  sub_23328D58C();
  v28 = v25 + v23[7];
  sub_23322E6EC();
  v29 = v23[8];
  sub_23328D40C();
  sub_23328D3BC();
  v24(v18, 0, 1, v27);
  sub_23328D4CC();
  sub_23328D45C();
  sub_23328D59C();
  v30 = v23[9];
  sub_23328D3BC();
  v24(v18, 0, 1, v27);
  sub_23328D4CC();
  return sub_23328D58C();
}

uint64_t sub_233230410@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a1;
  v72 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v78 = *(v2 - 8);
  v79 = v2;
  v3 = *(v78 + 64);
  MEMORY[0x28223BE20](v2);
  v74 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v76 = &v72 - v6;
  MEMORY[0x28223BE20](v7);
  v80 = &v72 - v8;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  v83 = *(v85 - 8);
  v9 = *(v83 + 64);
  MEMORY[0x28223BE20](v85);
  v77 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v81 = &v72 - v12;
  MEMORY[0x28223BE20](v13);
  v84 = &v72 - v14;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3550, qword_23329E590);
  v82 = *(v86 - 8);
  v15 = *(v82 + 64);
  MEMORY[0x28223BE20](v86);
  v94 = &v72 - v16;
  v17 = sub_23328D47C();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v93 = (&v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_23328D41C();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v92 = (&v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_23328D53C();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v89 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_23328D4DC();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v72 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v72 - v34;
  v36 = _s25ExportVoicePackageCommandVMa();
  v37 = *(*(v36 - 8) + 64);
  v38 = v36 - 8;
  v98 = v36 - 8;
  MEMORY[0x28223BE20](v36 - 8);
  v97 = &v72 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v40 = sub_23328D3CC();
  v41 = *(v40 - 8);
  v90 = *(v41 + 56);
  v91 = v41 + 56;
  v87 = v40;
  v90(v35, 0, 1, v40);
  v42 = sub_23328D42C();
  v88 = *(*(v42 - 8) + 56);
  (v88)(v31, 1, 1, v42);
  sub_23328D4CC();
  sub_23328D52C();
  v43 = v31;
  sub_23328D5BC();
  v44 = *(v38 + 28);
  sub_23328D3BC();
  v45 = v90;
  v90(v35, 0, 1, v40);
  (v88)(v43, 1, 1, v42);
  sub_23328D4CC();
  sub_23328D52C();
  v88 = v44;
  v46 = v97;
  sub_23328D5BC();
  v47 = v98;
  v48 = *(v98 + 32);
  sub_23328D3BC();
  v49 = v87;
  v50 = v45;
  v45(v35, 0, 1, v87);
  sub_23328D4CC();
  v89 = v48;
  sub_23328D58C();
  v75 = *(v47 + 36);
  v51 = v46;
  sub_23322E6EC();
  v52 = *(v47 + 40);
  sub_23328D40C();
  sub_23328D3BC();
  v50(v35, 0, 1, v49);
  sub_23328D4CC();
  sub_23328D45C();
  v73 = v52;
  sub_23328D59C();
  v53 = *(v98 + 44);
  sub_23328D3BC();
  v54 = v95;
  v50(v35, 0, 1, v49);
  sub_23328D4CC();
  v55 = v51;
  sub_23328D58C();
  v56 = v54[4];
  v57 = v54;
  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  sub_233230F5C();
  v58 = v94;
  v59 = v96;
  sub_23328E68C();
  if (v59)
  {
    v60 = v51;
  }

  else
  {
    v98 = v53;
    v61 = v81;
    v62 = v83;
    v104 = 0;
    sub_23315246C(&qword_27DDE3428, &qword_27DDE3408, &unk_23329E570);
    sub_23328E41C();
    v63 = *(v62 + 40);
    v63(v55, v84, v85);
    v103 = 1;
    sub_23328E41C();
    v63(&v88[v97], v61, v85);
    v102 = 2;
    v64 = sub_23315246C(&qword_27DDE1A38, &qword_27DDE19D8, &qword_23329FAC0);
    v65 = v79;
    sub_23328E41C();
    v93 = v63;
    v96 = v64;
    v83 = v62 + 40;
    v66 = *(v78 + 40);
    v66(&v89[v97], v80, v65);
    v101 = 3;
    v67 = v77;
    sub_23328E41C();
    v92 = v66;
    v93(v97 + v75, v67, v85);
    v100 = 4;
    v69 = v76;
    sub_23328E41C();
    v70 = v82;
    v92(v97 + v73, v69, v65);
    v99 = 5;
    v71 = v86;
    sub_23328E41C();
    (*(v70 + 8))(v58, v71);
    v60 = v97;
    v92(v97 + v98, v74, v65);
    sub_23323100C(v60, v72);
  }

  __swift_destroy_boxed_opaque_existential_0(v57);
  return sub_233230FB0(v60);
}

unint64_t sub_233230F5C()
{
  result = qword_27DDFCFA8[0];
  if (!qword_27DDFCFA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFCFA8);
  }

  return result;
}

uint64_t sub_233230FB0(uint64_t a1)
{
  v2 = _s25ExportVoicePackageCommandVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23323100C(uint64_t a1, uint64_t a2)
{
  v4 = _s25ExportVoicePackageCommandVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_233231100()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_23322EA58();
}

uint64_t sub_2332311D4(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_233231400(&qword_27DDE3558, _s25ExportVoicePackageCommandVMa);
  *v4 = v1;
  v4[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_2332312F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDFCFA0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08AD0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_233231400(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2332314A4()
{
  sub_233231530();
  if (v0 <= 0x3F)
  {
    sub_23316E7B8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_233231530()
{
  if (!qword_27DDE3460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE1A90, &unk_233290970);
    v0 = sub_23328D60C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDE3460);
    }
  }
}

uint64_t _s25ExportVoicePackageCommandV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s25ExportVoicePackageCommandV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2332316E8()
{
  result = qword_27DDFD3C0[0];
  if (!qword_27DDFD3C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFD3C0);
  }

  return result;
}

unint64_t sub_233231740()
{
  result = qword_27DDFD4D0;
  if (!qword_27DDFD4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDFD4D0);
  }

  return result;
}

unint64_t sub_233231798()
{
  result = qword_27DDFD4D8[0];
  if (!qword_27DDFD4D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFD4D8);
  }

  return result;
}

uint64_t sub_2332317EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496563696F76 && a2 == 0xE700000000000000;
  if (v4 || (sub_23328E54C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E6563696F76 && a2 == 0xE900000000000065 || (sub_23328E54C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6563696F566C6C61 && a2 == 0xE900000000000073 || (sub_23328E54C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74757074756FLL && a2 == 0xE600000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73736572706D6F63 && a2 == 0xE800000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002332ABD40 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_23328E54C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_2332319F8()
{
  result = qword_27DDE3598;
  if (!qword_27DDE3598)
  {
    sub_23328CE8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE3598);
  }

  return result;
}

uint64_t sub_233231A44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08AE8);
  __swift_project_value_buffer(v4, qword_27DE08AE8);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t _s12SpeakCommandVMa()
{
  result = qword_27DDFD870;
  if (!qword_27DDFD870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_233231C14()
{
  sub_23328D20C();
  v3 = v0[8];
  v4 = sub_233237A1C();
  v5 = *v4;
  v0[9] = *v4;
  v6 = _s12SpeakCommandVMa();
  v7 = v6[6];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  sub_23328D5CC();
  if (v0[3])
  {
    v8 = v0[2];
    v9 = *(*(sub_23328D9DC() - 8) + 64) + 15;
    swift_task_alloc();
    sub_23328D9CC();
    v10 = sub_23328D92C();
    v12 = v11;
  }

  else
  {
    v13 = v0[8] + v6[5];
    sub_23328D5CC();
    v14 = v0[5];
    if (v14)
    {
      v10 = v0[4];
    }

    else
    {
      v10 = 0;
    }

    if (v14)
    {
      v12 = v0[5];
    }

    else
    {
      v12 = 0xE000000000000000;
    }
  }

  v0[10] = v12;
  v15 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v15 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v16 = v0[8];
    v17 = sub_23328CE8C();
    v0[11] = v17;
    v18 = *(v17 - 8);
    v0[12] = v18;
    v19 = *(v18 + 64) + 15;
    v20 = swift_task_alloc();
    v0[13] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
    sub_23328D5CC();
    v21 = v6[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
    sub_23328D5CC();
    v22 = v0[6];
    v23 = v0[7];
    v0[14] = v23;
    v26 = (*v5 + 480);
    v27 = (*v26 + **v26);
    v24 = (*v26)[1];
    v25 = swift_task_alloc();
    v0[15] = v25;
    *v25 = v0;
    v25[1] = sub_233232010;

    return v27(v20, v10, v12, v22, v23);
  }

  else
  {

    sub_23328D4AC();
    sub_233233888(&qword_27DDE2D30, MEMORY[0x277CEEA40]);
    swift_allocError();
    sub_23328D4BC();
    swift_willThrow();

    v1 = v0[1];

    return v1();
  }
}

uint64_t sub_233232010()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = v2[14];
  v6 = v2[10];
  (*(v2[12] + 8))(v2[13], v2[11]);

  if (v0)
  {
    v7 = sub_233232228;
  }

  else
  {

    v7 = sub_2332321C4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2332321C4()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_233232228()
{
  v1 = v0[13];
  v2 = v0[9];

  v3 = v0[16];
  v4 = v0[1];

  return v4();
}

uint64_t sub_2332322B8()
{
  v1 = v0[4];
  v2 = _s12SpeakCommandVMa();
  v3 = *(v2 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  sub_23328D5CC();
  if (v0[3] || (v4 = v0[4] + *(v2 + 24), sub_23328D5CC(), v0[3]))
  {

    sub_23328D5CC();
    if (!v0[3] || (v5 = v0[4], , v6 = v5 + *(v2 + 24), sub_23328D5CC(), !v0[3]))
    {
      v7 = v0[1];
      goto LABEL_8;
    }
  }

  sub_23328D4AC();
  sub_233233888(&qword_27DDE2D30, MEMORY[0x277CEEA40]);
  swift_allocError();
  sub_23328D4BC();
  swift_willThrow();
  v7 = v0[1];
LABEL_8:

  return v7();
}

uint64_t sub_233232478()
{
  v1 = 25705;
  v2 = 1701603686;
  if (*v0 != 2)
  {
    v2 = 0x656C61636F6CLL;
  }

  if (*v0)
  {
    v1 = 0x657361726870;
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

uint64_t sub_2332324D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_233233AC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2332324FC(uint64_t a1)
{
  v2 = sub_2332333E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233232538(uint64_t a1)
{
  v2 = sub_2332333E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233232574()
{
  v0 = sub_23328D53C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_23328D4DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - v10;
  sub_23328D3BC();
  v12 = sub_23328D3CC();
  v13 = *(v12 - 8);
  v27 = *(v13 + 56);
  v28 = v13 + 56;
  v27(v11, 0, 1, v12);
  v14 = sub_23328D42C();
  v15 = *(v14 - 8);
  v29 = *(v15 + 56);
  v26 = v15 + 56;
  v24 = v14;
  v29(v7, 1, 1, v14);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  sub_23328D5FC();
  v30 = _s12SpeakCommandVMa();
  v23 = v30[5];
  sub_23328D3BC();
  v16 = v12;
  v17 = v12;
  v25 = v12;
  v18 = v27;
  v27(v11, 0, 1, v16);
  v19 = v29;
  v29(v7, 1, 1, v14);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5DC();
  v23 = v30[6];
  sub_23328D3BC();
  v18(v11, 0, 1, v17);
  v20 = v24;
  v19(v7, 1, 1, v24);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5DC();
  v21 = v30[7];
  v31 = 0x53552D6E65;
  v32 = 0xE500000000000000;
  sub_23328D3BC();
  v18(v11, 0, 1, v25);
  v29(v7, 1, 1, v20);
  sub_23328D4CC();
  sub_23328D52C();
  return sub_23328D5EC();
}

uint64_t sub_2332329F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a1;
  v62 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3400, &unk_23329DB70);
  v61 = *(v65 - 8);
  v2 = *(v61 + 64);
  MEMORY[0x28223BE20](v65);
  v64 = &v61 - v3;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3408, &unk_23329E570);
  v66 = *(v69 - 8);
  v4 = *(v66 + 64);
  MEMORY[0x28223BE20](v69);
  v67 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v68 = &v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE35A0, qword_23329E848);
  v70 = *(v8 - 8);
  v71 = v8;
  v9 = *(v70 + 64);
  MEMORY[0x28223BE20](v8);
  v79 = &v61 - v10;
  v11 = sub_23328D53C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23328D4DC();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v61 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v61 - v25;
  v27 = _s12SpeakCommandVMa();
  v28 = *(v27 - 8);
  v86 = (v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v78 = &v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v31 = sub_23328D3CC();
  v32 = *(v31 - 8);
  v74 = *(v32 + 56);
  v33 = v32 + 56;
  v83 = v31;
  v74(v26, 0, 1, v31);
  v81 = v33;
  v73 = sub_23328D42C();
  v82 = *(*(v73 - 8) + 56);
  v82(v22, 1, 1, v73);
  v80 = v18;
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  sub_23328D5FC();
  v77 = v86[7];
  sub_23328D3BC();
  v34 = v31;
  v35 = v74;
  v74(v26, 0, 1, v34);
  v36 = v22;
  v37 = v22;
  v38 = v73;
  v39 = v82;
  v82(v36, 1, 1, v73);
  sub_23328D4CC();
  v72 = v14;
  sub_23328D52C();
  v40 = v78;
  sub_23328D5DC();
  v41 = v86[8];
  sub_23328D3BC();
  v35(v26, 0, 1, v83);
  v39(v37, 1, 1, v38);
  sub_23328D4CC();
  sub_23328D52C();
  v63 = v41;
  sub_23328D5DC();
  v42 = v86[9];
  v84 = 0x53552D6E65;
  v85 = 0xE500000000000000;
  sub_23328D3BC();
  v35(v26, 0, 1, v83);
  v82(v37, 1, 1, v38);
  sub_23328D4CC();
  sub_23328D52C();
  v43 = v75;
  sub_23328D5EC();
  v44 = v43[4];
  __swift_project_boxed_opaque_existential_1(v43, v43[3]);
  sub_2332333E4();
  v45 = v76;
  sub_23328E68C();
  if (v45)
  {
    __swift_destroy_boxed_opaque_existential_0(v43);
    v60 = v40;
  }

  else
  {
    v86 = v42;
    v46 = v70;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
    v48 = *(v47 - 8);
    v49 = *(v48 + 64);
    MEMORY[0x28223BE20](v47);
    v51 = &v61 - v50;
    LOBYTE(v84) = 0;
    sub_233229170(&qword_27DDE2D40, &qword_27DDE2D00, &qword_23329AB80);
    v52 = v71;
    sub_23328E41C();
    v53 = v78;
    (*(v48 + 40))(v78, v51, v47);
    LOBYTE(v84) = 1;
    sub_233229170(&qword_27DDE3428, &qword_27DDE3408, &unk_23329E570);
    v54 = v68;
    v55 = v69;
    sub_23328E41C();
    v83 = *(v66 + 40);
    v83(v53 + v77, v54, v55);
    LOBYTE(v84) = 2;
    sub_23328E41C();
    v83(v53 + v63, v67, v55);
    LOBYTE(v84) = 3;
    sub_233229170(&qword_27DDE3420, &qword_27DDE3400, &unk_23329DB70);
    v57 = v64;
    v58 = v65;
    v59 = v79;
    sub_23328E41C();
    (*(v46 + 8))(v59, v52);
    (*(v61 + 40))(v86 + v53, v57, v58);
    sub_233233494(v53, v62);
    __swift_destroy_boxed_opaque_existential_0(v43);
    v60 = v53;
  }

  return sub_233233438(v60);
}

unint64_t sub_2332333E4()
{
  result = qword_27DDFD568[0];
  if (!qword_27DDFD568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFD568);
  }

  return result;
}

uint64_t sub_233233438(uint64_t a1)
{
  v2 = _s12SpeakCommandVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_233233494(uint64_t a1, uint64_t a2)
{
  v4 = _s12SpeakCommandVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_233233588()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_233231BF4();
}

uint64_t sub_23323365C(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_233233888(&qword_27DDE35A8, _s12SpeakCommandVMa);
  *v4 = v1;
  v4[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_233233780@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDFD560 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08AE8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_233233888(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_233233914()
{
  sub_2331D6598();
  if (v0 <= 0x3F)
  {
    sub_233231530();
    if (v1 <= 0x3F)
    {
      sub_23322961C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2332339C4()
{
  result = qword_27DDFD980[0];
  if (!qword_27DDFD980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFD980);
  }

  return result;
}

unint64_t sub_233233A1C()
{
  result = qword_27DDFDA90;
  if (!qword_27DDFDA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDFDA90);
  }

  return result;
}

unint64_t sub_233233A74()
{
  result = qword_27DDFDA98[0];
  if (!qword_27DDFDA98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFDA98);
  }

  return result;
}

uint64_t sub_233233AC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23328E54C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657361726870 && a2 == 0xE600000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701603686 && a2 == 0xE400000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_23328E54C();

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

uint64_t sub_233233C1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08B00);
  __swift_project_value_buffer(v4, qword_27DE08B00);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t sub_233233D9C()
{
  sub_23328D20C();
  v1 = v0[2];
  v2 = sub_233237A1C();
  v3 = *v2;
  v0[3] = *v2;
  v4 = sub_23328CE8C();
  v0[4] = v4;
  v5 = *(v4 - 8);
  v0[5] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v0[6] = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  sub_23328D5CC();
  v11 = (*v3 + 408);
  v12 = (*v11 + **v11);
  v8 = (*v11)[1];
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_23322660C;

  return v12(v7);
}

uint64_t sub_233233FAC(uint64_t a1)
{
  v2 = sub_2332344E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233233FE8(uint64_t a1)
{
  v2 = sub_2332344E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233234024@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE35D0, qword_23329EAC0);
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - v5;
  v7 = sub_23328D53C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_23328D4DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v33 - v17;
  v19 = _s23SyncModelFuturesCommandVMa();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v23 = sub_23328D3CC();
  (*(*(v23 - 8) + 56))(v18, 0, 1, v23);
  v24 = sub_23328D42C();
  (*(*(v24 - 8) + 56))(v14, 1, 1, v24);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  sub_23328D5FC();
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2332344E8();
  v26 = v35;
  sub_23328E68C();
  if (!v26)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
    v35 = &v33;
    v28 = *(v27 - 8);
    v29 = *(v28 + 64);
    MEMORY[0x28223BE20](v27);
    v31 = &v33 - v30;
    sub_233226DD0();
    sub_23328E41C();
    (*(v34 + 8))(v6, v3);
    (*(v28 + 40))(v22, v31, v27);
    sub_233234598(v22, v33);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_23323453C(v22);
}

uint64_t _s23SyncModelFuturesCommandVMa()
{
  result = qword_27DDFDE30;
  if (!qword_27DDFDE30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2332344E8()
{
  result = qword_27DDFDB28[0];
  if (!qword_27DDFDB28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFDB28);
  }

  return result;
}

uint64_t sub_23323453C(uint64_t a1)
{
  v2 = _s23SyncModelFuturesCommandVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_233234598(uint64_t a1, uint64_t a2)
{
  v4 = _s23SyncModelFuturesCommandVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_233234684()
{
  sub_23328D20C();
  v1 = v0[2];
  v2 = sub_233237A1C();
  v3 = *v2;
  v0[3] = *v2;
  v4 = sub_23328CE8C();
  v0[4] = v4;
  v5 = *(v4 - 8);
  v0[5] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v0[6] = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  sub_23328D5CC();
  v11 = (*v3 + 408);
  v12 = (*v11 + **v11);
  v8 = (*v11)[1];
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_233227130;

  return v12(v7);
}

uint64_t sub_2332348C8(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_233234AB8(&qword_27DDE35D8);
  *v4 = v1;
  v4[1] = sub_233126374;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_2332349C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDFDB20 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08B00);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_233234AB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s23SyncModelFuturesCommandVMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_233234AFC()
{
  v0 = sub_23328D53C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_23328D4DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_23328D3BC();
  v12 = sub_23328D3CC();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v13 = sub_23328D42C();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  return sub_23328D5FC();
}

unint64_t sub_233234D84()
{
  result = qword_27DDFDF40[0];
  if (!qword_27DDFDF40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFDF40);
  }

  return result;
}

unint64_t sub_233234DDC()
{
  result = qword_27DDFE050;
  if (!qword_27DDFE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDFE050);
  }

  return result;
}

unint64_t sub_233234E34()
{
  result = qword_27DDFE058[0];
  if (!qword_27DDFE058[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFE058);
  }

  return result;
}

uint64_t sub_233234E88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08B18);
  __swift_project_value_buffer(v4, qword_27DE08B18);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t sub_233235004()
{
  sub_23328D20C();
  v1 = v0[2];
  v2 = sub_233237A1C();
  v3 = *v2;
  v0[3] = *v2;
  v4 = sub_23328CE8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v0[4] = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  sub_23328D5CC();
  v8 = sub_23328CE3C();
  v10 = v9;
  v0[5] = v9;
  (*(v5 + 8))(v7, v4);
  v14 = (*v3 + 368);
  v15 = (*v14 + **v14);
  v11 = (*v14)[1];
  v12 = swift_task_alloc();
  v0[6] = v12;
  *v12 = v0;
  v12[1] = sub_233235260;

  return v15(v8, v10);
}

uint64_t sub_233235260()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  v2[7] = v0;

  v5 = v2[5];
  if (v0)
  {
    v6 = v2[3];

    return MEMORY[0x2822009F8](sub_2332353E8, 0, 0);
  }

  else
  {
    v7 = v2[3];
    v8 = v2[4];

    v9 = *(v4 + 8);

    return v9();
  }
}

uint64_t sub_2332353E8()
{
  v1 = v0[4];

  v2 = v0[7];
  v3 = v0[1];

  return v3();
}

uint64_t sub_23323544C(uint64_t a1)
{
  v2 = sub_233235988();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233235488(uint64_t a1)
{
  v2 = sub_233235988();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2332354C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3600, qword_23329ED50);
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - v5;
  v7 = sub_23328D53C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_23328D4DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v33 - v17;
  v19 = _s25CancelTrainingTaskCommandVMa();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v23 = sub_23328D3CC();
  (*(*(v23 - 8) + 56))(v18, 0, 1, v23);
  v24 = sub_23328D42C();
  (*(*(v24 - 8) + 56))(v14, 1, 1, v24);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  sub_23328D5FC();
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_233235988();
  v26 = v35;
  sub_23328E68C();
  if (!v26)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
    v35 = &v33;
    v28 = *(v27 - 8);
    v29 = *(v28 + 64);
    MEMORY[0x28223BE20](v27);
    v31 = &v33 - v30;
    sub_233226DD0();
    sub_23328E41C();
    (*(v34 + 8))(v6, v3);
    (*(v28 + 40))(v22, v31, v27);
    sub_233235A38(v22, v33);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_2332359DC(v22);
}

uint64_t _s25CancelTrainingTaskCommandVMa()
{
  result = qword_27DDFE3F0;
  if (!qword_27DDFE3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_233235988()
{
  result = qword_27DDFE0E8[0];
  if (!qword_27DDFE0E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFE0E8);
  }

  return result;
}

uint64_t sub_2332359DC(uint64_t a1)
{
  v2 = _s25CancelTrainingTaskCommandVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_233235A38(uint64_t a1, uint64_t a2)
{
  v4 = _s25CancelTrainingTaskCommandVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_233235B04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_233234FE4();
}

uint64_t sub_233235BC4(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_233235DB4(&qword_27DDE3608);
  *v4 = v1;
  v4[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_233235CC0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDFE0E0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08B18);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_233235DB4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s25CancelTrainingTaskCommandVMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_233235DF8()
{
  v0 = sub_23328D53C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_23328D4DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_23328D3BC();
  v12 = sub_23328D3CC();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v13 = sub_23328D42C();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  return sub_23328D5FC();
}

unint64_t sub_233236080()
{
  result = qword_27DDFE500[0];
  if (!qword_27DDFE500[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFE500);
  }

  return result;
}

unint64_t sub_2332360D8()
{
  result = qword_27DDFE610;
  if (!qword_27DDFE610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDFE610);
  }

  return result;
}

unint64_t sub_233236130()
{
  result = qword_27DDFE618[0];
  if (!qword_27DDFE618[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFE618);
  }

  return result;
}

uint64_t sub_233236184()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08B30);
  __swift_project_value_buffer(v4, qword_27DE08B30);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t _s25ExportTrainingDataCommandVMa()
{
  result = qword_27DDFE9B0;
  if (!qword_27DDFE9B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_233236350()
{
  sub_23328D20C();
  v1 = *(v0 + 16);
  v2 = sub_23328CC9C();
  *(v0 + 24) = v2;
  v3 = *(v2 - 8);
  *(v0 + 32) = v3;
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  v6 = sub_233237A1C();
  v7 = *v6;
  *(v0 + 48) = *v6;
  v8 = sub_23328CE8C();
  *(v0 + 56) = v8;
  v9 = *(v8 - 8);
  *(v0 + 64) = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  sub_23328D5CC();
  v12 = *(_s25ExportTrainingDataCommandVMa() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  v13 = *(v0 + 96);
  v14 = sub_233125D98();
  v18 = (*v7 + 304);
  v19 = (*v18 + **v18);
  v15 = (*v18)[1];
  v16 = swift_task_alloc();
  *(v0 + 80) = v16;
  *v16 = v0;
  v16[1] = sub_233236614;

  return (v19)(v5, v11, v14 & 1, v13);
}

uint64_t sub_233236614()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 64);
  v5 = *v1;
  v2[11] = v0;

  v6 = (v4 + 8);
  v7 = v2[9];
  v8 = v2[7];
  v9 = v2[6];
  if (v0)
  {
    (*v6)(v2[9], v2[7]);

    v10 = sub_233236860;
  }

  else
  {
    v12 = v2[4];
    v11 = v2[5];
    v13 = v2[3];

    (*v6)(v7, v8);
    (*(v12 + 8))(v11, v13);

    v10 = sub_2332367FC;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2332367FC()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_233236860()
{
  v1 = v0[9];
  v2 = v0[5];

  v3 = v0[11];
  v4 = v0[1];

  return v4();
}

unint64_t sub_2332368D0()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_233236904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_23328E54C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002332ABD40 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23328E54C();

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

uint64_t sub_2332369E0(uint64_t a1)
{
  v2 = sub_233237374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233236A1C(uint64_t a1)
{
  v2 = sub_233237374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233236A58()
{
  v0 = sub_23328D53C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_23328D4DC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - v10;
  sub_23328D3BC();
  v12 = sub_23328D3CC();
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 0, 1, v12);
  v14 = sub_23328D42C();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  sub_23328D5FC();
  v15 = *(_s25ExportTrainingDataCommandVMa() + 20);
  sub_23328D3BC();
  v13(v11, 0, 1, v12);
  sub_23328D4CC();
  return sub_23328D58C();
}

uint64_t sub_233236D08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v43 = a2;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v42 = *(v45 - 8);
  v2 = *(v42 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v42 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3630, qword_23329EFD8);
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = &v42 - v6;
  v7 = sub_23328D53C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_23328D4DC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v42 - v17;
  v19 = _s25ExportTrainingDataCommandVMa();
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v24 = sub_23328D3CC();
  v48 = *(*(v24 - 8) + 56);
  (v48)(v18, 0, 1, v24);
  v25 = sub_23328D42C();
  (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  sub_23328D5FC();
  v26 = *(v20 + 28);
  sub_23328D3BC();
  (v48)(v18, 0, 1, v24);
  v27 = v50;
  sub_23328D4CC();
  sub_23328D58C();
  v28 = v27[4];
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_233237374();
  v29 = v49;
  v30 = v51;
  sub_23328E68C();
  if (v30)
  {
    __swift_destroy_boxed_opaque_existential_0(v27);
    v41 = v23;
  }

  else
  {
    v51 = v23;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
    v48 = &v42;
    v32 = *(v31 - 8);
    v33 = *(v32 + 64);
    MEMORY[0x28223BE20](v31);
    v35 = &v42 - v34;
    v53 = 0;
    sub_23315246C(&qword_27DDE2D40, &qword_27DDE2D00, &qword_23329AB80);
    v36 = v47;
    sub_23328E41C();
    (*(v32 + 40))(v51, v35, v31);
    v52 = 1;
    sub_23315246C(&qword_27DDE1A38, &qword_27DDE19D8, &qword_23329FAC0);
    v38 = v44;
    v37 = v45;
    sub_23328E41C();
    (*(v46 + 8))(v29, v36);
    v40 = v51;
    (*(v42 + 40))(&v51[v26], v38, v37);
    sub_233237424(v40, v43);
    __swift_destroy_boxed_opaque_existential_0(v27);
    v41 = v40;
  }

  return sub_2332373C8(v41);
}

unint64_t sub_233237374()
{
  result = qword_27DDFE6A8[0];
  if (!qword_27DDFE6A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFE6A8);
  }

  return result;
}

uint64_t sub_2332373C8(uint64_t a1)
{
  v2 = _s25ExportTrainingDataCommandVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_233237424(uint64_t a1, uint64_t a2)
{
  v4 = _s25ExportTrainingDataCommandVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2332374F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_233236330();
}

uint64_t sub_2332375B0(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_2332377A0(&qword_27DDE3638);
  *v4 = v1;
  v4[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_2332376AC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDFE6A0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08B30);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_2332377A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s25ExportTrainingDataCommandVMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_233237828()
{
  sub_2331D6598();
  if (v0 <= 0x3F)
  {
    sub_23316E7B8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2332378C0()
{
  result = qword_27DDFEAC0[0];
  if (!qword_27DDFEAC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFEAC0);
  }

  return result;
}

unint64_t sub_233237918()
{
  result = qword_27DDFEBD0;
  if (!qword_27DDFEBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDFEBD0);
  }

  return result;
}

unint64_t sub_233237970()
{
  result = qword_27DDFEBD8[0];
  if (!qword_27DDFEBD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDFEBD8);
  }

  return result;
}

uint64_t sub_2332379C4()
{
  type metadata accessor for VoiceBankingCommand.Helper();
  result = swift_initStaticObject();
  qword_27DDFEC68 = result;
  return result;
}

void *sub_2332379F0()
{
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t *sub_233237A1C()
{
  if (qword_27DDFEC60 != -1)
  {
    swift_once();
  }

  return &qword_27DDFEC68;
}

uint64_t static VoiceBankingCommand.Helper.shared.getter()
{
  type metadata accessor for VoiceBankingCommand.Helper();

  return swift_initStaticObject();
}

uint64_t sub_233237A9C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TTSVBService();
    v1 = TTSVBService.__allocating_init()();
    v3 = *(v0 + 16);
    *(v2 + 16) = v1;
  }

  return v1;
}

id sub_233237B04()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for SpeechSynth()) init];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_233237B6C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = v0;
    type metadata accessor for TTSVBAccessManager();
    v4 = TTSVBAccessManager.__allocating_init()();
    v5 = *(v0 + 32);
    *(v3 + 32) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_233237BCC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTSVBPath();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  TTSVBPath.url.getter(a1);
  return sub_2332574E0(v5, type metadata accessor for TTSVBPath);
}

uint64_t sub_233237C8C()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3660, qword_23329F278);
  *v2 = v0;
  v2[1] = sub_233237D7C;
  v4 = *(v0 + 24);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0x696F566863746566, 0xED00002928736563, sub_23325459C, v4, v3);
}

uint64_t sub_233237D7C()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_233257C78;
  }

  else
  {
    v3 = sub_2331BE6DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_233237E90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3758, &qword_23329F8B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_233237A9C();
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  TTSVBService.fetchVoices(completion:)();
}

uint64_t sub_233237FE8(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *(type metadata accessor for TTSVBVoice() - 8);
  v3[4] = v4;
  v5 = *(v4 + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v6 = *(*v2 + 184);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v3[7] = v8;
  *v8 = v3;
  v8[1] = sub_233238168;

  return v10();
}

uint64_t sub_233238168(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *v2;
  *(*v2 + 64) = a1;

  if (v1)
  {
    v7 = *(v3 + 40);
    v6 = *(v3 + 48);

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2332382C0, 0, 0);
  }
}

void sub_2332382C0()
{
  v1 = v0[8];
  v19 = *(v1 + 16);
  if (v19)
  {
    v2 = 0;
    v3 = v0[4];
    v4 = MEMORY[0x277D84F90];
    while (v2 < *(v1 + 16))
    {
      v5 = v0[6];
      v6 = v0[2];
      v7 = v0[3];
      v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v9 = *(v3 + 72);
      sub_233257478(v0[8] + v8 + v9 * v2, v5, type metadata accessor for TTSVBVoice);
      v10 = v6(v5);
      v11 = v0[6];
      if (v10)
      {
        sub_233257410(v11, v0[5], type metadata accessor for TTSVBVoice);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2331229AC(0, *(v4 + 16) + 1, 1);
        }

        v13 = *(v4 + 16);
        v12 = *(v4 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_2331229AC(v12 > 1, v13 + 1, 1);
        }

        v14 = v0[5];
        *(v4 + 16) = v13 + 1;
        sub_233257410(v14, v4 + v8 + v13 * v9, type metadata accessor for TTSVBVoice);
      }

      else
      {
        sub_2332574E0(v11, type metadata accessor for TTSVBVoice);
      }

      if (v19 == ++v2)
      {
        v15 = v0[8];
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
LABEL_14:
    v17 = v0[5];
    v16 = v0[6];

    v18 = v0[1];

    v18(v4);
  }
}

void sub_2332384C4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for TTSVBInstalledVoiceModel();
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_233257478(a3 + v15 + v16 * v13, v12, type metadata accessor for TTSVBInstalledVoiceModel);
      v17 = a1(v12);
      if (v3)
      {
        sub_2332574E0(v12, type metadata accessor for TTSVBInstalledVoiceModel);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_233257410(v12, v24, type metadata accessor for TTSVBInstalledVoiceModel);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2331B4014(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_2331B4014(v19 > 1, v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        sub_233257410(v24, v14 + v15 + v20 * v16, type metadata accessor for TTSVBInstalledVoiceModel);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        sub_2332574E0(v12, type metadata accessor for TTSVBInstalledVoiceModel);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t sub_233238770()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A58, &qword_233299B60);
  *v2 = v0;
  v2[1] = sub_233237D7C;
  v4 = *(v0 + 24);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0x646F4D6863746566, 0xED00002928736C65, sub_233254F0C, v4, v3);
}

uint64_t sub_233238860(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3750, &qword_23329F8B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_233237A9C();
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  TTSVBService.fetchVoiceModels(completion:)();
}

uint64_t sub_2332389B8(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *(type metadata accessor for TTSVBVoiceModel() - 8);
  v3[4] = v4;
  v5 = *(v4 + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v6 = *(*v2 + 200);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v3[7] = v8;
  *v8 = v3;
  v8[1] = sub_233238B38;

  return v10();
}

uint64_t sub_233238B38(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *v2;
  *(*v2 + 64) = a1;

  if (v1)
  {
    v7 = *(v3 + 40);
    v6 = *(v3 + 48);

    v8 = *(v5 + 8);

    return v8();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_233238C90, 0, 0);
  }
}

void sub_233238C90()
{
  v1 = v0[8];
  v19 = *(v1 + 16);
  if (v19)
  {
    v2 = 0;
    v3 = v0[4];
    v4 = MEMORY[0x277D84F90];
    while (v2 < *(v1 + 16))
    {
      v5 = v0[6];
      v6 = v0[2];
      v7 = v0[3];
      v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v9 = *(v3 + 72);
      sub_233257478(v0[8] + v8 + v9 * v2, v5, type metadata accessor for TTSVBVoiceModel);
      v10 = v6(v5);
      v11 = v0[6];
      if (v10)
      {
        sub_233257410(v11, v0[5], type metadata accessor for TTSVBVoiceModel);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2331B4058(0, *(v4 + 16) + 1, 1);
        }

        v13 = *(v4 + 16);
        v12 = *(v4 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_2331B4058(v12 > 1, v13 + 1, 1);
        }

        v14 = v0[5];
        *(v4 + 16) = v13 + 1;
        sub_233257410(v14, v4 + v8 + v13 * v9, type metadata accessor for TTSVBVoiceModel);
      }

      else
      {
        sub_2332574E0(v11, type metadata accessor for TTSVBVoiceModel);
      }

      if (v19 == ++v2)
      {
        v15 = v0[8];
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
LABEL_14:
    v17 = v0[5];
    v16 = v0[6];

    v18 = v0[1];

    v18(v4);
  }
}

uint64_t sub_233238EB4()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2CD8, &qword_23329A918);
  *v2 = v0;
  v2[1] = sub_233237D7C;
  v4 = *(v0 + 24);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000016, 0x80000002332AC270, sub_233254F14, v4, v3);
}

uint64_t sub_233238F9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3748, &qword_23329F898);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_233237A9C();
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  TTSVBService.fetchInstalledVoiceModels(completion:)();
}

uint64_t sub_233239114()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A20, &qword_233290630);
  *v2 = v0;
  v2[1] = sub_2332391FC;
  v4 = *(v0 + 24);

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000028, 0x80000002332AB590, sub_233254F1C, v4, v3);
}

uint64_t sub_2332391FC()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_2332229A8;
  }

  else
  {
    v3 = sub_23319D5B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_233239310(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE33A8, &unk_23329D700);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_233237A9C();
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  TTSVBService.fetchPersonalVoiceSystemRepresentation(completion:)();
}

uint64_t sub_233239468(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_233239488, 0, 0);
}

uint64_t sub_233239488()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3668, qword_23329F2C8);
  *v3 = v0;
  v3[1] = sub_233239594;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000001FLL, 0x80000002332AC290, sub_233254F24, v1, v4);
}

uint64_t sub_233239594()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_2332396B0;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_2331BE6DC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2332396B0()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_233239714(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3740, &qword_23329F888);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_233237A9C();
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  TTSVBService.fetchTrainingMetadata(voiceID:completion:)();
}

uint64_t sub_233239874(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = type metadata accessor for TTSVBError(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v22 - v17);
  sub_233121D34(a1, &v22 - v17, a3, a4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_233257410(v18, v14, type metadata accessor for TTSVBError);
    sub_233254FD8(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    v19 = swift_allocError();
    sub_233257478(v14, v20, type metadata accessor for TTSVBError);
    v23 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    sub_23328DC8C();
    return sub_2332574E0(v14, type metadata accessor for TTSVBError);
  }

  else
  {
    v23 = *v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    return sub_23328DC9C();
  }
}

id sub_233239A74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  v1 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  sub_23328CC7C();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v4 = result;
    MEMORY[0x28223BE20](result);
    v5 = &v10 - v1;
    sub_233121D34(v2, v5, &qword_27DDE19A0, &unk_233290360);
    v6 = sub_23328CC9C();
    v7 = *(v6 - 8);
    v8 = 0;
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      v8 = sub_23328CBCC();
      (*(v7 + 8))(v5, v6);
    }

    sub_233145024(MEMORY[0x277D84F90]);
    v9 = sub_23328D87C();

    [v4 openSensitiveURL:v8 withOptions:v9];

    return sub_233121E04(v2, &qword_27DDE19A0, &unk_233290360);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_233239C90(uint64_t a1, char a2)
{
  *(v3 + 376) = a2;
  v5 = type metadata accessor for TTSVBVoiceSample();
  *(v3 + 248) = v5;
  v6 = *(v5 - 8);
  *(v3 + 256) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = swift_task_alloc();
  *(v3 + 312) = swift_task_alloc();
  *(v3 + 320) = swift_task_alloc();
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = swift_task_alloc();
  *(v3 + 352) = swift_task_alloc();
  v8 = *(*v2 + 232);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v3 + 360) = v10;
  *v10 = v3;
  v10[1] = sub_233239E94;

  return v12(a1);
}

uint64_t sub_233239E94(uint64_t a1)
{
  v3 = *(*v2 + 360);
  v4 = *v2;
  v4[46] = a1;

  if (v1)
  {
    v6 = v4[43];
    v5 = v4[44];
    v8 = v4[41];
    v7 = v4[42];
    v10 = v4[39];
    v9 = v4[40];
    v12 = v4[37];
    v11 = v4[38];
    v13 = v4[36];
    v14 = v4[33];
    v17 = v4[35];
    v18 = v4[34];

    v15 = v4[1];

    return v15();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_23323A078, 0, 0);
  }
}

uint64_t sub_23323A078()
{
  v179 = v0;
  if (*(v0 + 376) != 1)
  {
    v173 = *(v0 + 368);
    v41 = *(v173 + 16);
    v171 = v41;
    if (v41)
    {
      v43 = *(v0 + 248);
      v42 = *(v0 + 256);
      v44 = v173 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
      v167 = *(v0 + 344);
      v45 = *(v42 + 72);
      v46 = *(v173 + 16);
      v166 = v45;
      do
      {
        sub_233257478(v44, *(v0 + 344), type metadata accessor for TTSVBVoiceSample);
        if (TTSVBVoiceSample.hasVoiceRecording.getter())
        {
          v169 = v46;
          v51 = *(v0 + 344);
          sub_23328D30C();
          v177 = 0;
          v178 = 0xE000000000000000;
          sub_23328E24C();
          v52 = v178;
          *(v0 + 48) = v177;
          *(v0 + 56) = v52;
          MEMORY[0x23839B7E0](0x5B20656C706D6153, 0xEB000000003D4449);
          MEMORY[0x23839B7E0](*v51, *(v167 + 8));
          MEMORY[0x23839B7E0](0x3D44495020, 0xE500000000000000);
          *(v0 + 184) = *(v51 + v43[11]);
          v53 = sub_23328E51C();
          MEMORY[0x23839B7E0](v53);

          MEMORY[0x23839B7E0](0x3D44495320, 0xE500000000000000);
          *(v0 + 192) = *(v51 + v43[12]);
          v54 = sub_23328E51C();
          MEMORY[0x23839B7E0](v54);

          MEMORY[0x23839B7E0](0xD000000000000015, 0x80000002332AC430);
          MEMORY[0x23839B7E0](*(v51 + v43[10]), *(v51 + v43[10] + 8));
          MEMORY[0x23839B7E0](0xD00000000000001ALL, 0x80000002332AC450);
          v55 = *(v51 + v43[13]);
          sub_23328DCDC();
          MEMORY[0x23839B7E0](0x3D6C617574634120, 0xE800000000000000);
          v56 = *(v51 + v43[6]);
          sub_23328DCDC();
          MEMORY[0x23839B7E0](0xD000000000000014, 0x80000002332AC470);
          v57 = TTSVBVoiceSample.hasVoiceRecording.getter();
          v58 = (v57 & 1) == 0;
          if (v57)
          {
            v59 = 1702195828;
          }

          else
          {
            v59 = 0x65736C6166;
          }

          if (v58)
          {
            v60 = 0xE500000000000000;
          }

          else
          {
            v60 = 0xE400000000000000;
          }

          MEMORY[0x23839B7E0](v59, v60);

          MEMORY[0x23839B7E0](0xD000000000000014, 0x80000002332AC490);
          MEMORY[0x23839B7E0](*(v51 + v43[8]), *(v51 + v43[8] + 8));
          MEMORY[0x23839B7E0](0xD000000000000014, 0x80000002332AC4B0);
          v61 = (v51 + v43[16]);
          if (v61[1])
          {
            v62 = *v61;
            v63 = v61[1];
          }

          else
          {
            v63 = 0xE600000000000000;
            v62 = 0x3E656E6F6E3CLL;
          }

          v64 = *(v0 + 344);

          MEMORY[0x23839B7E0](v62, v63);

          MEMORY[0x23839B7E0](0xD000000000000014, 0x80000002332AC4D0);
          *(v0 + 200) = *(v64 + v43[17]);
          v65 = sub_23328E51C();
          MEMORY[0x23839B7E0](v65);

          MEMORY[0x23839B7E0](0xD000000000000014, 0x80000002332AC4F0);
          v66 = *(v64 + v43[18]);
          sub_23328DCFC();
          MEMORY[0x23839B7E0](0x6873657268542820, 0xEC0000003D646C6FLL);
          v67 = *(v64 + v43[20]);
          sub_23328DCFC();
          MEMORY[0x23839B7E0](0xD000000000000015, 0x80000002332AC510);
          v68 = *(v64 + v43[19]);
          sub_23328DCFC();
          MEMORY[0x23839B7E0](0x6873657268542820, 0xEC0000003D646C6FLL);
          v69 = *(v64 + v43[21]);
          sub_23328DCFC();
          MEMORY[0x23839B7E0](0xD000000000000015, 0x80000002332AC530);
          if (TTSVBVoiceSample.hasVoiceRecording.getter())
          {
            v70 = *(v0 + 344);
            TTSVBVoiceSample.trainingValidity.getter(&v177);
            v71 = TTSVBVoiceSampleTrainingValidity.stringValue.getter();
            v73 = v72;
          }

          else
          {
            v73 = 0xE300000000000000;
            v71 = 4271950;
          }

          v74 = *(v0 + 344);
          MEMORY[0x23839B7E0](v71, v73);

          MEMORY[0x23839B7E0](0xD000000000000014, 0x80000002332AC550);
          MEMORY[0x23839B7E0](*(v74 + v43[9]), *(v74 + v43[9] + 8));
          MEMORY[0x23839B7E0](0xD000000000000014, 0x80000002332AC570);
          MEMORY[0x23839B7E0](*(v74 + v43[7]), *(v74 + v43[7] + 8));
          MEMORY[0x23839B7E0](0xD000000000000014, 0x80000002332AC590);
          v75 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360) - 8) + 64) + 15;
          v76 = swift_task_alloc();
          sub_233121D34(v74 + v43[5], v76, &qword_27DDE19A0, &unk_233290360);
          v77 = sub_23328CC9C();
          v78 = *(v77 - 8);
          if ((*(v78 + 48))(v76, 1, v77) == 1)
          {
            sub_233121E04(v76, &qword_27DDE19A0, &unk_233290360);
            v47 = 0xE600000000000000;
            v48 = 0x3E656E6F6E3CLL;
          }

          else
          {
            v48 = sub_23328CC6C();
            v47 = v79;
            (*(v78 + 8))(v76, v77);
          }

          v46 = v169;

          MEMORY[0x23839B7E0](v48, v47);

          MEMORY[0x23839B7E0](10, 0xE100000000000000);
          v49 = *(v0 + 48);
          v50 = *(v0 + 56);
          sub_23328D27C();

          v41 = v171;
          v45 = v166;
        }

        sub_2332574E0(*(v0 + 344), type metadata accessor for TTSVBVoiceSample);
        v44 += v45;
        --v46;
      }

      while (v46);
    }

    sub_23328D30C();
    sub_23328D27C();

    sub_23328D30C();
    sub_23328D27C();

    sub_23328D30C();
    v177 = 0;
    v178 = 0xE000000000000000;
    sub_23328E24C();

    v177 = 0xD000000000000021;
    v178 = 0x80000002332AC340;
    if (v41)
    {
      v81 = 0;
      v82 = *(v0 + 256);
      v83 = MEMORY[0x277D84F90];
      while (v81 < *(v173 + 16))
      {
        v84 = (*(v82 + 80) + 32) & ~*(v82 + 80);
        v85 = *(v82 + 72);
        sub_233257478(*(v0 + 368) + v84 + v85 * v81, *(v0 + 336), type metadata accessor for TTSVBVoiceSample);
        v86 = TTSVBVoiceSample.hasVoiceRecording.getter();
        v87 = *(v0 + 336);
        if (v86)
        {
          sub_233257410(v87, *(v0 + 320), type metadata accessor for TTSVBVoiceSample);
          *v175 = v83;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2331B409C(0, *(v83 + 16) + 1, 1);
            v83 = *v175;
          }

          v89 = *(v83 + 16);
          v88 = *(v83 + 24);
          if (v89 >= v88 >> 1)
          {
            sub_2331B409C(v88 > 1, v89 + 1, 1);
            v83 = *v175;
          }

          v90 = *(v0 + 320);
          *(v83 + 16) = v89 + 1;
          result = sub_233257410(v90, v83 + v84 + v89 * v85, type metadata accessor for TTSVBVoiceSample);
        }

        else
        {
          result = sub_2332574E0(v87, type metadata accessor for TTSVBVoiceSample);
        }

        if (v171 == ++v81)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
    }

    else
    {
      v83 = MEMORY[0x277D84F90];
LABEL_53:
      v92 = *(v83 + 16);

      *(v0 + 160) = v92;
      v93 = sub_23328E51C();
      MEMORY[0x23839B7E0](v93);

      sub_23328D27C();

      sub_23328D30C();
      v177 = 0;
      v178 = 0xE000000000000000;
      sub_23328E24C();
      v94 = v178;
      *(v0 + 16) = v177;
      *(v0 + 24) = v94;
      MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332AC370);
      v95 = v171;
      if (v171)
      {
        v96 = *(v0 + 328);
        v97 = *(v0 + 256);
        v98 = *(*(v0 + 248) + 24);
        v99 = *(v0 + 368) + ((*(v97 + 80) + 32) & ~*(v97 + 80));
        v100 = *(v97 + 72);
        v101 = 0.0;
        do
        {
          v102 = *(v0 + 328);
          sub_233257478(v99, v102, type metadata accessor for TTSVBVoiceSample);
          v103 = *(v96 + v98);
          sub_2332574E0(v102, type metadata accessor for TTSVBVoiceSample);
          v101 = v101 + v103;
          v99 += v100;
          --v95;
        }

        while (v95);
      }

      sub_23328DCDC();
      v104 = *(v0 + 16);
      v105 = *(v0 + 24);
      sub_23328D27C();

      sub_23328D30C();
      v177 = 0;
      v178 = 0xE000000000000000;
      sub_23328E24C();
      v106 = v178;
      *(v0 + 32) = v177;
      *(v0 + 40) = v106;
      result = MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332AC3A0);
      v107 = v171;
      if (!v171)
      {
        v110 = MEMORY[0x277D84F90];
LABEL_68:
        v119 = *(v110 + 16);
        if (v119)
        {
          v120 = *(v0 + 304);
          v121 = *(v0 + 256);
          v122 = *(*(v0 + 248) + 24);
          v123 = v110 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
          v124 = *(v121 + 72);
          v125 = 0.0;
          do
          {
            v126 = *(v0 + 304);
            sub_233257478(v123, v126, type metadata accessor for TTSVBVoiceSample);
            v127 = *(v120 + v122);
            sub_2332574E0(v126, type metadata accessor for TTSVBVoiceSample);
            v125 = v125 + v127;
            v123 += v124;
            --v119;
          }

          while (v119);

          v107 = v171;
        }

        else
        {
        }

        sub_23328DCDC();
        v128 = *(v0 + 32);
        v129 = *(v0 + 40);
        sub_23328D27C();

        sub_23328D30C();
        v177 = 0;
        v178 = 0xE000000000000000;
        sub_23328E24C();

        v177 = 0xD000000000000021;
        v178 = 0x80000002332AC3D0;
        if (!v107)
        {
          v132 = MEMORY[0x277D84F90];
LABEL_86:
          v140 = *(v132 + 16);

          *(v0 + 168) = v140;
          v141 = sub_23328E51C();
          MEMORY[0x23839B7E0](v141);

          sub_23328D27C();

          sub_23328D30C();
          v177 = 0;
          v178 = 0xE000000000000000;
          sub_23328E24C();

          v177 = 0xD000000000000021;
          v178 = 0x80000002332AC400;
          if (!v107)
          {
            v144 = MEMORY[0x277D84F90];
LABEL_99:
            v152 = *(v0 + 368);

            v153 = *(v144 + 16);

            *(v0 + 176) = v153;
            v154 = sub_23328E51C();
            MEMORY[0x23839B7E0](v154);

            sub_23328D27C();

            goto LABEL_100;
          }

          v142 = 0;
          v143 = *(v0 + 256);
          v144 = MEMORY[0x277D84F90];
          while (v142 < *(v173 + 16))
          {
            v145 = (*(v143 + 80) + 32) & ~*(v143 + 80);
            v146 = *(v143 + 72);
            sub_233257478(*(v0 + 368) + v145 + v146 * v142, *(v0 + 272), type metadata accessor for TTSVBVoiceSample);
            if ((TTSVBVoiceSample.hasVoiceRecording.getter() & 1) == 0 || (v147 = *(v0 + 272), TTSVBVoiceSample.trainingValidity.getter(&v176), TTSVBVoiceSampleTrainingValidity.isValid.getter()))
            {
              result = sub_2332574E0(*(v0 + 272), type metadata accessor for TTSVBVoiceSample);
            }

            else
            {
              sub_233257410(*(v0 + 272), *(v0 + 264), type metadata accessor for TTSVBVoiceSample);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *v175 = v144;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_2331B409C(0, *(v144 + 16) + 1, 1);
                v144 = *v175;
              }

              v150 = *(v144 + 16);
              v149 = *(v144 + 24);
              if (v150 >= v149 >> 1)
              {
                sub_2331B409C(v149 > 1, v150 + 1, 1);
                v144 = *v175;
              }

              v151 = *(v0 + 264);
              *(v144 + 16) = v150 + 1;
              result = sub_233257410(v151, v144 + v145 + v150 * v146, type metadata accessor for TTSVBVoiceSample);
              v107 = v171;
            }

            if (v107 == ++v142)
            {
              goto LABEL_99;
            }
          }

LABEL_106:
          __break(1u);
          return result;
        }

        v130 = 0;
        v131 = *(v0 + 256);
        v132 = MEMORY[0x277D84F90];
        while (v130 < *(v173 + 16))
        {
          v133 = (*(v131 + 80) + 32) & ~*(v131 + 80);
          v134 = *(v131 + 72);
          sub_233257478(*(v0 + 368) + v133 + v134 * v130, *(v0 + 288), type metadata accessor for TTSVBVoiceSample);
          if ((TTSVBVoiceSample.hasVoiceRecording.getter() & 1) != 0 && (v135 = *(v0 + 288), TTSVBVoiceSample.trainingValidity.getter(&v176), TTSVBVoiceSampleTrainingValidity.isValid.getter()))
          {
            sub_233257410(*(v0 + 288), *(v0 + 280), type metadata accessor for TTSVBVoiceSample);
            v136 = swift_isUniquelyReferenced_nonNull_native();
            *v175 = v132;
            if ((v136 & 1) == 0)
            {
              sub_2331B409C(0, *(v132 + 16) + 1, 1);
              v132 = *v175;
            }

            v138 = *(v132 + 16);
            v137 = *(v132 + 24);
            if (v138 >= v137 >> 1)
            {
              sub_2331B409C(v137 > 1, v138 + 1, 1);
              v132 = *v175;
            }

            v139 = *(v0 + 280);
            *(v132 + 16) = v138 + 1;
            result = sub_233257410(v139, v132 + v133 + v138 * v134, type metadata accessor for TTSVBVoiceSample);
            v107 = v171;
          }

          else
          {
            result = sub_2332574E0(*(v0 + 288), type metadata accessor for TTSVBVoiceSample);
          }

          if (v107 == ++v130)
          {
            goto LABEL_86;
          }
        }

LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      v108 = 0;
      v109 = *(v0 + 256);
      v110 = MEMORY[0x277D84F90];
      while (v108 < *(v173 + 16))
      {
        v111 = (*(v109 + 80) + 32) & ~*(v109 + 80);
        v112 = *(v109 + 72);
        sub_233257478(*(v0 + 368) + v111 + v112 * v108, *(v0 + 312), type metadata accessor for TTSVBVoiceSample);
        TTSVBVoiceSample.trainingValidity.getter(v175);
        v113 = TTSVBVoiceSampleTrainingValidity.isValid.getter();
        v114 = *(v0 + 312);
        if (v113)
        {
          sub_233257410(v114, *(v0 + 296), type metadata accessor for TTSVBVoiceSample);
          v115 = swift_isUniquelyReferenced_nonNull_native();
          v177 = v110;
          if ((v115 & 1) == 0)
          {
            sub_2331B409C(0, *(v110 + 16) + 1, 1);
            v110 = v177;
          }

          v117 = *(v110 + 16);
          v116 = *(v110 + 24);
          if (v117 >= v116 >> 1)
          {
            sub_2331B409C(v116 > 1, v117 + 1, 1);
            v110 = v177;
          }

          v118 = *(v0 + 296);
          *(v110 + 16) = v117 + 1;
          result = sub_233257410(v118, v110 + v111 + v117 * v112, type metadata accessor for TTSVBVoiceSample);
          v107 = v171;
        }

        else
        {
          result = sub_2332574E0(v114, type metadata accessor for TTSVBVoiceSample);
        }

        if (v107 == ++v108)
        {
          goto LABEL_68;
        }
      }
    }

    __break(1u);
    goto LABEL_105;
  }

  v1 = *(v0 + 368);
  sub_23328D30C();
  *(v0 + 208) = &unk_284878EA8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A98, &unk_2332985F0);
  sub_23315246C(&qword_280D39BB0, &unk_27DDE1A98, &unk_2332985F0);
  sub_23328D8FC();
  sub_23328D27C();

  v2 = *(v1 + 16);
  if (v2)
  {
    v170 = *(v0 + 352);
    v4 = *(v0 + 248);
    v3 = *(v0 + 256);
    v5 = *(v0 + 368) + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    v168 = v6;
    do
    {
      sub_233257478(v5, *(v0 + 352), type metadata accessor for TTSVBVoiceSample);
      if (TTSVBVoiceSample.hasVoiceRecording.getter())
      {
        v13 = *(v0 + 352);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE22B0, &qword_233297B80);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_23329F250;
        v15 = *(v170 + 8);
        *(v14 + 32) = *v13;
        *(v14 + 40) = v15;
        v177 = 34;
        v178 = 0xE100000000000000;
        v16 = (v13 + v4[10]);
        v17 = *v16;
        v18 = v16[1];

        MEMORY[0x23839B7E0](v17, v18);
        MEMORY[0x23839B7E0](34, 0xE100000000000000);
        *(v14 + 48) = 34;
        *(v14 + 56) = 0xE100000000000000;
        *(v0 + 216) = *(v13 + v4[11]);
        *(v14 + 64) = sub_23328E51C();
        *(v14 + 72) = v19;
        *(v0 + 224) = *(v13 + v4[12]);
        *(v14 + 80) = sub_23328E51C();
        *(v14 + 88) = v20;
        *(v0 + 64) = 0;
        *(v0 + 72) = 0xE000000000000000;
        v21 = *(v13 + v4[13]);
        sub_23328DCDC();
        v22 = *(v0 + 72);
        *(v14 + 96) = *(v0 + 64);
        *(v14 + 104) = v22;
        *(v0 + 80) = 0;
        *(v0 + 88) = 0xE000000000000000;
        v23 = *(v13 + v4[6]);
        sub_23328DCDC();
        v24 = *(v0 + 88);
        *(v14 + 112) = *(v0 + 80);
        *(v14 + 120) = v24;
        v177 = 0;
        v178 = 0xE000000000000000;
        if (TTSVBVoiceSample.hasVoiceRecording.getter())
        {
          v25 = 49;
        }

        else
        {
          v25 = 48;
        }

        MEMORY[0x23839B7E0](v25, 0xE100000000000000);
        v26 = v178;
        *(v14 + 128) = v177;
        *(v14 + 136) = v26;
        v177 = 34;
        v178 = 0xE100000000000000;
        MEMORY[0x23839B7E0](*(v13 + v4[8]), *(v13 + v4[8] + 8));
        MEMORY[0x23839B7E0](34, 0xE100000000000000);
        *(v14 + 144) = 34;
        *(v14 + 152) = 0xE100000000000000;
        v177 = 34;
        v178 = 0xE100000000000000;
        v27 = (v13 + v4[16]);
        v28 = v27[1];
        if (v28)
        {
          v29 = *v27;
        }

        else
        {
          v29 = 0;
        }

        if (v28)
        {
          v30 = v27[1];
        }

        else
        {
          v30 = 0xE000000000000000;
        }

        MEMORY[0x23839B7E0](v29, v30);

        MEMORY[0x23839B7E0](34, 0xE100000000000000);
        v31 = v178;
        *(v14 + 160) = v177;
        *(v14 + 168) = v31;
        *(v0 + 232) = *(v13 + v4[17]);
        *(v14 + 176) = sub_23328E51C();
        *(v14 + 184) = v32;
        *(v0 + 96) = 0;
        *(v0 + 104) = 0xE000000000000000;
        v33 = *(v13 + v4[19]);
        sub_23328DCFC();
        v34 = *(v0 + 104);
        *(v14 + 192) = *(v0 + 96);
        *(v14 + 200) = v34;
        *(v0 + 112) = 0;
        *(v0 + 120) = 0xE000000000000000;
        v35 = *(v13 + v4[21]);
        sub_23328DCFC();
        v36 = *(v0 + 120);
        *(v14 + 208) = *(v0 + 112);
        *(v14 + 216) = v36;
        *(v0 + 128) = 0;
        *(v0 + 136) = 0xE000000000000000;
        v37 = *(v13 + v4[18]);
        sub_23328DCFC();
        v38 = *(v0 + 136);
        *(v14 + 224) = *(v0 + 128);
        *(v14 + 232) = v38;
        *(v0 + 144) = 0;
        *(v0 + 152) = 0xE000000000000000;
        v39 = *(v13 + v4[20]);
        sub_23328DCFC();
        v40 = *(v0 + 152);
        *(v14 + 240) = *(v0 + 144);
        *(v14 + 248) = v40;
        v177 = 34;
        v178 = 0xE100000000000000;
        if (TTSVBVoiceSample.hasVoiceRecording.getter())
        {
          v7 = *(v0 + 352);
          v8 = TTSVBVoiceSample.description.getter();
          v10 = v9;
        }

        else
        {
          v10 = 0xE300000000000000;
          v8 = 4271950;
        }

        v11 = *(v0 + 352);
        MEMORY[0x23839B7E0](v8, v10);

        MEMORY[0x23839B7E0](34, 0xE100000000000000);
        v12 = v178;
        *(v14 + 256) = v177;
        *(v14 + 264) = v12;
        v177 = 34;
        v178 = 0xE100000000000000;
        MEMORY[0x23839B7E0](*(v11 + v4[9]), *(v11 + v4[9] + 8));
        MEMORY[0x23839B7E0](34, 0xE100000000000000);
        *(v14 + 272) = 34;
        *(v14 + 280) = 0xE100000000000000;
        v177 = 34;
        v178 = 0xE100000000000000;
        MEMORY[0x23839B7E0](*(v11 + v4[7]), *(v11 + v4[7] + 8));
        MEMORY[0x23839B7E0](34, 0xE100000000000000);
        *(v14 + 288) = 34;
        *(v14 + 296) = 0xE100000000000000;
        sub_23328D30C();
        *(v0 + 240) = v14;
        sub_23328D8FC();

        sub_23328D27C();

        v6 = v168;
      }

      sub_2332574E0(*(v0 + 352), type metadata accessor for TTSVBVoiceSample);
      v5 += v6;
      --v2;
    }

    while (v2);
    v91 = *(v0 + 368);
  }

LABEL_100:
  v156 = *(v0 + 344);
  v155 = *(v0 + 352);
  v158 = *(v0 + 328);
  v157 = *(v0 + 336);
  v160 = *(v0 + 312);
  v159 = *(v0 + 320);
  v162 = *(v0 + 296);
  v161 = *(v0 + 304);
  v164 = *(v0 + 280);
  v163 = *(v0 + 288);
  v172 = *(v0 + 272);
  v174 = *(v0 + 264);

  v165 = *(v0 + 8);

  return v165();
}

uint64_t sub_23323B7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_23323B7E4, 0, 0);
}

uint64_t sub_23323B7E4()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  sub_23328D30C();
  sub_23328E24C();

  MEMORY[0x23839B7E0](v5, v4);
  MEMORY[0x23839B7E0](0x656C61636F6C2820, 0xEC000000203A4449);
  MEMORY[0x23839B7E0](v3, v1);
  MEMORY[0x23839B7E0](41, 0xE100000000000000);
  sub_23328D27C();

  v6 = swift_task_alloc();
  v0[8] = v6;
  v6[2] = v2;
  v6[3] = v5;
  v6[4] = v4;
  v6[5] = v3;
  v6[6] = v1;
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  v0[9] = v8;
  v9 = sub_23328CE8C();
  *v8 = v0;
  v8[1] = sub_23323B9C8;
  v10 = v0[2];

  return MEMORY[0x2822008A0](v10, 0, 0, 0xD00000000000001CLL, 0x80000002332AC5D0, sub_233254F2C, v6, v9);
}

uint64_t sub_23323B9C8()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23319D8B0, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_23323BB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[1] = a6;
  sub_233237A9C();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3738, &qword_23329F880);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v16 - v11;
  (*(v8 + 16))(v16 - v11, a1, v7, v10);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v12, v7);
  TTSVBService.createVoice(named:localeID:_:)();
}

uint64_t sub_23323BC88(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B8, &unk_233299B20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  sub_233121D34(a1, &v21 - v8, &qword_27DDE19B8, &unk_233299B20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_233257410(v9, v5, type metadata accessor for TTSVBError);
    sub_233254FD8(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    v10 = swift_allocError();
    sub_233257478(v5, v11, type metadata accessor for TTSVBError);
    v21 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3738, &qword_23329F880);
    sub_23328DC8C();
    return sub_2332574E0(v5, type metadata accessor for TTSVBError);
  }

  else
  {
    v13 = sub_23328CE8C();
    v14 = *(v13 - 8);
    v15 = *(v14 + 64);
    v16 = MEMORY[0x28223BE20](v13);
    v17 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
    (*(v14 + 32))(&v21 - v17, v9, v13, v16);
    sub_23328D30C();
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_23328E24C();

    v21 = 0xD00000000000001BLL;
    v22 = 0x80000002332AE610;
    v18 = sub_23328CE3C();
    MEMORY[0x23839B7E0](v18);

    sub_23328D27C();

    v20 = MEMORY[0x28223BE20](v19);
    (*(v14 + 16))(&v21 - v17, &v21 - v17, v13, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE3738, &qword_23329F880);
    sub_23328DC9C();
    return (*(v14 + 8))(&v21 - v17, v13);
  }
}

uint64_t sub_23323C01C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return MEMORY[0x2822009F8](sub_23323C040, 0, 0);
}

uint64_t sub_23323C040()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  sub_23328D30C();
  sub_23328E24C();

  if (v2)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x23839B7E0](v3, v4);

  sub_23328D27C();

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  *v7 = v0;
  v7[1] = sub_23323C1E8;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000023, 0x80000002332AC620, sub_233254F3C, v5, v8);
}

uint64_t sub_23323C1E8()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_23323C304;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_233257C7C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23323C304()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_23323C368(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_233237A9C();
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  TTSVBService.updateTCCCloudKitAccess(allowed:completion:)();
}

uint64_t sub_23323C4C8(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - v8;
  sub_233121D34(a1, v13 - v8, &unk_27DDE25D0, &unk_233290330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_233257410(v9, v5, type metadata accessor for TTSVBError);
    sub_233254FD8(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    v10 = swift_allocError();
    sub_233257478(v5, v11, type metadata accessor for TTSVBError);
    v13[1] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    sub_23328DC8C();
    return sub_2332574E0(v5, type metadata accessor for TTSVBError);
  }

  else
  {
    sub_23328D30C();
    sub_23328D27C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    return sub_23328DC9C();
  }
}

uint64_t sub_23323C720()
{
  sub_23328D30C();
  sub_23328D27C();

  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_23323C82C;
  v3 = *(v0 + 16);
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v2, 0, 0, 0xD00000000000001ALL, 0x80000002332AC680, sub_233254F48, v3, v4);
}

uint64_t sub_23323C82C()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_233257C80;
  }

  else
  {
    v3 = sub_233257C7C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23323C940(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_233237A9C();
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  TTSVBService.initializeCloudKitSchema(completion:)();
}

uint64_t sub_23323CA98(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - v8;
  sub_233121D34(a1, v13 - v8, &unk_27DDE25D0, &unk_233290330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_233257410(v9, v5, type metadata accessor for TTSVBError);
    sub_233254FD8(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    v10 = swift_allocError();
    sub_233257478(v5, v11, type metadata accessor for TTSVBError);
    v13[1] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    sub_23328DC8C();
    return sub_2332574E0(v5, type metadata accessor for TTSVBError);
  }

  else
  {
    sub_23328D30C();
    sub_23328D27C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    return sub_23328DC9C();
  }
}

uint64_t sub_23323CCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_23323CCF8, 0, 0);
}

uint64_t sub_23323CCF8()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  if (v1)
  {
    v4 = *(v0 + 24);
  }

  else
  {
    v4 = 0x3E6C696E3CLL;
  }

  if (v1)
  {
    v5 = *(v0 + 32);
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v13 = *(v0 + 40);
  sub_23328D30C();
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000029, 0x80000002332AC6A0);
  sub_23328CE8C();
  sub_233254F90(&qword_27DDE2830, MEMORY[0x28220C048]);
  v6 = sub_23328E51C();
  MEMORY[0x23839B7E0](v6);

  MEMORY[0x23839B7E0](0xD000000000000013, 0x80000002332AC6D0);

  MEMORY[0x23839B7E0](v4, v5);

  MEMORY[0x23839B7E0](0x61506C65646F4D20, 0xEB000000003D6874);
  v7 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v7);

  sub_23328D27C();

  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  v8[1] = vextq_s8(v13, v13, 8uLL);
  v8[2].i64[0] = v2;
  v8[2].i64[1] = v1;
  v8[3].i64[0] = v3;
  v9 = *(MEMORY[0x277D85A40] + 4);
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_23323CF88;
  v11 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v10, 0, 0, 0xD000000000000036, 0x80000002332AC6F0, sub_233254F50, v8, v11);
}

uint64_t sub_23323CF88()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_233189E74;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_233257C7C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23323D0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[1] = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v15 - v10;
  sub_233237A9C();
  (*(v8 + 16))(v11, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  TTSVBService.importModel(fromDirectory:overrideLocaleID:addingToVoice:completion:)();
}

uint64_t sub_23323D228(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - v8;
  sub_233121D34(a1, v13 - v8, &unk_27DDE25D0, &unk_233290330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_233257410(v9, v5, type metadata accessor for TTSVBError);
    sub_233254FD8(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    v10 = swift_allocError();
    sub_233257478(v5, v11, type metadata accessor for TTSVBError);
    v13[1] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    sub_23328DC8C();
    return sub_2332574E0(v5, type metadata accessor for TTSVBError);
  }

  else
  {
    sub_23328D30C();
    sub_23328D27C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2990, &qword_233299AB0);
    return sub_23328DC9C();
  }
}

uint64_t sub_23323D460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_23323D48C, 0, 0);
}

uint64_t sub_23323D48C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v12 = *(v0 + 56);
  sub_23328D30C();
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000018, 0x80000002332AC730);
  MEMORY[0x23839B7E0](v4, v3);
  MEMORY[0x23839B7E0](0x6C61636F6C282027, 0xEE0027203A444965);
  MEMORY[0x23839B7E0](v2, v1);
  MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332AC750);
  v5 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v5);

  sub_23328D27C();

  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  v6[1] = vextq_s8(v12, v12, 8uLL);
  v6[2].i64[0] = v4;
  v6[2].i64[1] = v3;
  v6[3].i64[0] = v2;
  v6[3].i64[1] = v1;
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  v9 = sub_23328CE8C();
  *v8 = v0;
  v8[1] = sub_23323D6B8;
  v10 = *(v0 + 16);

  return MEMORY[0x2822008A0](v10, 0, 0, 0xD00000000000003ELL, 0x80000002332AC770, sub_233254F60, v6, v9);
}