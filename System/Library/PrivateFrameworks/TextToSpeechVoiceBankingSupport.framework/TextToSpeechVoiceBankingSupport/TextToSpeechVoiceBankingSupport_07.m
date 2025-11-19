id sub_2331C4ED8@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 snr];
  *a2 = v4;
  return result;
}

id sub_2331C4F20@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 splThreshold];
  *a2 = v4;
  return result;
}

id sub_2331C4F68@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 snrThreshold];
  *a2 = v4;
  return result;
}

id sub_2331C4FB0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 flags_];
  *a2 = result;
  return result;
}

uint64_t sub_2331C4FF8@<X0>(uint64_t a1@<X8>)
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

id TTSVBLocalVoiceSampleMO.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id TTSVBLocalVoiceSampleMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for TTSVBLocalVoiceSampleMO();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id TTSVBLocalVoiceSampleMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSVBLocalVoiceSampleMO();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2331C5534@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for TTSVBLocalVoiceSampleMO();
  result = sub_23328E25C();
  *a1 = result;
  return result;
}

uint64_t (*sub_2331C558C(uint64_t **a1))()
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

void (*sub_2331C55FC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 bookTitle];
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
  return sub_2331C5684;
}

id (*sub_2331C56B0(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  [v1 estimatedDuration];
  *a1 = v3;
  return sub_2331C5704;
}

uint64_t (*sub_2331C5734(uint64_t **a1))()
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

void (*sub_2331C57A4(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 locale];
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
  return sub_2331C582C;
}

id (*sub_2331C585C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 paragraphIndex];
  return sub_2331C58B0;
}

uint64_t (*sub_2331C58E0(uint64_t **a1))()
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

void (*sub_2331C5950(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 phonemes];
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
  return sub_2331C59D8;
}

uint64_t (*sub_2331C59FC(uint64_t **a1))()
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

void (*sub_2331C5A6C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 phrase];
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
  return sub_2331C5AF4;
}

id (*sub_2331C5B20(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  [v1 recordingDuration];
  *a1 = v3;
  return sub_2331C5B74;
}

uint64_t (*sub_2331C5BA4(uint64_t **a1))()
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

void (*sub_2331C5C14(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 sampleID];
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
  return sub_2331C5C9C;
}

id (*sub_2331C5CCC(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 sentenceIndex];
  return sub_2331C5D20;
}

uint64_t (*sub_2331C5D50(uint64_t **a1))()
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

void (*sub_2331C5DC0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 transcript];
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
  return sub_2331C5E48;
}

uint64_t (*sub_2331C5E6C(uint64_t **a1))()
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

void (*sub_2331C5EDC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 userPhrase];
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
  return sub_2331C5F64;
}

uint64_t sub_2331C5F70@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 recordingDate];
  if (v3)
  {
    v4 = v3;
    sub_23328CDDC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_23328CE1C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

void sub_2331C6014(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23328CE1C();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(a1, 1, v4);
  v7 = 0;
  if (v6 != 1)
  {
    v8 = sub_23328CD9C();
    (*(v5 + 8))(a1, v4);
    v7 = v8;
  }

  v9 = v7;
  [v2 setRecordingDate_];
}

uint64_t (*sub_2331C610C(void *a1))()
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
  v2[4] = sub_2331C617C(v2);
  return sub_233154AEC;
}

void (*sub_2331C617C(void *a1))(uint64_t a1, char a2)
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
  return sub_2331C62CC;
}

void sub_2331C62CC(uint64_t a1, char a2)
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

id (*sub_2331C6538(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 userScore];
  return sub_2331C658C;
}

id (*sub_2331C65C4(uint64_t a1))(uint64_t a1, double a2)
{
  *a1 = v1;
  [v1 spl];
  *(a1 + 8) = v3;
  return sub_2331C6618;
}

id (*sub_2331C6650(uint64_t a1))(uint64_t a1, double a2)
{
  *a1 = v1;
  [v1 snr];
  *(a1 + 8) = v3;
  return sub_2331C66A4;
}

id (*sub_2331C66DC(uint64_t a1))(uint64_t a1, double a2)
{
  *a1 = v1;
  [v1 splThreshold];
  *(a1 + 8) = v3;
  return sub_2331C6730;
}

id (*sub_2331C6768(uint64_t a1))(uint64_t a1, double a2)
{
  *a1 = v1;
  [v1 snrThreshold];
  *(a1 + 8) = v3;
  return sub_2331C67BC;
}

id (*sub_2331C67F8(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 flags_];
  return sub_2331C684C;
}

uint64_t _s31TextToSpeechVoiceBankingSupport010TTSVBLocalD8SampleMOC11findOrFetch8sampleID05voiceN03mocACSgSS_10Foundation4UUIDVSo22NSManagedObjectContextCtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
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
  v12 = type metadata accessor for TTSVBLocalVoiceSampleMO();
  static DSO<>.findOrFetch(in:matching:)(a4, v11, v12, &protocol witness table for TTSVBLocalVoiceSampleMO);
  v14 = v13;

  return v14;
}

uint64_t sub_2331C6A34(uint64_t a1, uint64_t a2)
{
  result = sub_2331C6A8C(&qword_27DDE2968, a2, type metadata accessor for TTSVBLocalVoiceSampleMO);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2331C6A8C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

Swift::UInt64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TTSVBInstalledVoiceModel.calculateOnDiskFileSize()()
{
  v0 = *sub_2331DEBE8();
  v20 = v0;
  v1 = sub_23328CC9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v19 - v7;
  v9 = v0;
  TTSVBVoiceModel.url.getter(v8);
  v19[0] = 0x7461447465737341;
  v19[1] = 0xE900000000000061;
  v10 = sub_23328CB3C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v15, *MEMORY[0x277CC91E0], v10, v13);
  sub_23311A294();
  sub_23328CC8C();
  (*(v11 + 8))(v15, v10);
  v16 = *(v2 + 8);
  v16(v8, v1);
  v17 = _TTSVBFileManager.calculateSize(ofItemAtURL:)(v5);
  v16(v5, v1);

  return v17;
}

uint64_t TTSVBInstalledVoiceModel.assetDataURL.getter()
{
  v0 = sub_23328CC9C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTSVBVoiceModel.url.getter(v4);
  v12[0] = 0x7461447465737341;
  v12[1] = 0xE900000000000061;
  v5 = sub_23328CB3C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v10, *MEMORY[0x277CC91E0], v5, v8);
  sub_23311A294();
  sub_23328CC8C();
  (*(v6 + 8))(v10, v5);
  return (*(v1 + 8))(v4, v0);
}

uint64_t TTSVBInstalledVoiceModel.convertToData()()
{
  v0 = sub_23328C8BC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_23328C8AC();
  type metadata accessor for TTSVBInstalledVoiceModel();
  sub_2331C7D7C(&qword_280D3A0C0, type metadata accessor for TTSVBInstalledVoiceModel);
  v3 = sub_23328C89C();

  return v3;
}

uint64_t type metadata accessor for TTSVBInstalledVoiceModel()
{
  result = qword_280D3AD00;
  if (!qword_280D3AD00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TTSVBInstalledVoiceModel.init(data:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_23328C85C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_23328C84C();
  type metadata accessor for TTSVBInstalledVoiceModel();
  sub_2331C7D7C(&qword_280D3A0B8, type metadata accessor for TTSVBInstalledVoiceModel);
  sub_23328C83C();

  return sub_233121870(a1, a2);
}

uint64_t sub_2331C7364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000)
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

uint64_t sub_2331C73E8(uint64_t a1)
{
  v2 = sub_2331C75D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331C7424(uint64_t a1)
{
  v2 = sub_2331C75D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TTSVBInstalledVoiceModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2B58, &qword_23329A3C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2331C75D8();
  sub_23328E69C();
  type metadata accessor for TTSVBVoiceModel();
  sub_2331C7D7C(&qword_27DDE1980, type metadata accessor for TTSVBVoiceModel);
  sub_23328E4DC();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_2331C75D8()
{
  result = qword_27DDF6450[0];
  if (!qword_27DDF6450[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF6450);
  }

  return result;
}

uint64_t TTSVBInstalledVoiceModel.hash(into:)()
{
  type metadata accessor for TTSVBVoiceModel();
  sub_2331C7D7C(&qword_27DDE2B60, type metadata accessor for TTSVBVoiceModel);

  return sub_23328D8CC();
}

uint64_t TTSVBInstalledVoiceModel.hashValue.getter()
{
  sub_23328E61C();
  type metadata accessor for TTSVBVoiceModel();
  sub_2331C7D7C(&qword_27DDE2B60, type metadata accessor for TTSVBVoiceModel);
  sub_23328D8CC();
  return sub_23328E66C();
}

uint64_t TTSVBInstalledVoiceModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for TTSVBVoiceModel();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2B68, &qword_23329A3C8);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for TTSVBInstalledVoiceModel();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2331C75D8();
  sub_23328E68C();
  if (!v2)
  {
    v16 = v19;
    sub_2331C7D7C(&qword_27DDE1978, type metadata accessor for TTSVBVoiceModel);
    v17 = v21;
    sub_23328E41C();
    (*(v20 + 8))(v10, v7);
    sub_2331C7CCC(v17, v14, type metadata accessor for TTSVBVoiceModel);
    sub_2331C7CCC(v14, v16, type metadata accessor for TTSVBInstalledVoiceModel);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2331C79C4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2B58, &qword_23329A3C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2331C75D8();
  sub_23328E69C();
  type metadata accessor for TTSVBVoiceModel();
  sub_2331C7D7C(&qword_27DDE1980, type metadata accessor for TTSVBVoiceModel);
  sub_23328E4DC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2331C7B3C()
{
  sub_23328E61C();
  type metadata accessor for TTSVBVoiceModel();
  sub_2331C7D7C(&qword_27DDE2B60, type metadata accessor for TTSVBVoiceModel);
  sub_23328D8CC();
  return sub_23328E66C();
}

uint64_t sub_2331C7BC4()
{
  type metadata accessor for TTSVBVoiceModel();
  sub_2331C7D7C(&qword_27DDE2B60, type metadata accessor for TTSVBVoiceModel);

  return sub_23328D8CC();
}

uint64_t sub_2331C7C48()
{
  sub_23328E61C();
  type metadata accessor for TTSVBVoiceModel();
  sub_2331C7D7C(&qword_27DDE2B60, type metadata accessor for TTSVBVoiceModel);
  sub_23328D8CC();
  return sub_23328E66C();
}

uint64_t sub_2331C7CCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2331C7D7C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2331C7DC8()
{
  result = qword_27DDE1F98;
  if (!qword_27DDE1F98)
  {
    sub_23328CE8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE1F98);
  }

  return result;
}

uint64_t sub_2331C7EA4()
{
  result = type metadata accessor for TTSVBVoiceModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2331C7F24()
{
  result = qword_27DDF67E0[0];
  if (!qword_27DDF67E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF67E0);
  }

  return result;
}

unint64_t sub_2331C7F7C()
{
  result = qword_27DDF68F0;
  if (!qword_27DDF68F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDF68F0);
  }

  return result;
}

unint64_t sub_2331C7FD4()
{
  result = qword_27DDF68F8[0];
  if (!qword_27DDF68F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF68F8);
  }

  return result;
}

uint64_t TTSVBResultOK.hashValue.getter()
{
  sub_23328E61C();
  MEMORY[0x23839C380](0);
  return sub_23328E66C();
}

unint64_t sub_2331C80A4()
{
  result = qword_27DDE2B78;
  if (!qword_27DDE2B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2B78);
  }

  return result;
}

uint64_t sub_2331C8108@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x110))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2331C816C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x118);
  v5 = swift_unknownObjectRetain();
  return v4(v5, v3);
}

uint64_t sub_2331C81E8()
{
  v1 = v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_2331C8238(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2331C82A4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_2331C8344;
}

void sub_2331C8344(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
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

id sub_2331C83CC()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2331C8400()
{
  v1 = v0;
  v19 = sub_23328DEAC();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v19);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23328DE7C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_23328D80C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_recognitionRequest] = 0;
  *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_recognitionTask] = 0;
  v18 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_speechRecognitionQueue;
  v10 = sub_23311F61C();
  v17[1] = "nstalledVoiceModel: ";
  v17[2] = v10;
  sub_23328D7EC();
  v21 = MEMORY[0x277D84F90];
  sub_2331CCB20(&qword_280D3A230, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2B80, qword_233290290);
  sub_2331216CC(&qword_280D3A250, &unk_27DDE2B80, qword_233290290);
  sub_23328E14C();
  (*(v2 + 104))(v5, *MEMORY[0x277D85268], v19);
  v11 = sub_23328DEDC();
  v12 = v18;
  *&v1[v18] = v11;
  v13 = &v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_detectedSpeechText];
  *v13 = 0;
  v13[1] = 0;
  v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_isAssetDownloading] = 0;
  *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v14 = &v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_phrase];
  *v14 = 0;
  v14[1] = 0;
  v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_recordingEnvironment] = 0;
  v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_finishedListening] = 0;
  *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_assetSize] = 233000000;
  *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService__cachedRecognizer] = 0;
  result = [objc_allocWithZone(MEMORY[0x277CE6950]) initWithTargetSerialQueue_];
  if (result)
  {
    *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_userFinishedSpeakingTimer] = result;
    [result setAutomaticallyCancelPendingBlockUponSchedulingNewBlock_];
    v16 = type metadata accessor for TTSVBSpeechRecognitionService();
    v20.receiver = v1;
    v20.super_class = v16;
    return objc_msgSendSuper2(&v20, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2331C87A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 152) = *a1;
  *(v1 + 168) = v2;
  v3 = *(a1 + 40);
  *(v1 + 184) = *(a1 + 32);
  *(v1 + 192) = v3;
  return MEMORY[0x2822009F8](sub_2331C87D4, 0, 0);
}

uint64_t sub_2331C87D4()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2331C8900;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2BF0, &unk_23329A720);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2331C8A84;
  v0[13] = &block_descriptor_3;
  v0[14] = v2;
  [v1 installedLanguagesForTaskHint:3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2331C8900()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2331C89E0, 0, 0);
}

uint64_t sub_2331C89E0()
{
  v1 = *(v0 + 144);
  v7 = *(v0 + 152);
  v8 = *(v0 + 168);
  v9 = *(v0 + 184);
  v10 = *(v0 + 192);
  v2 = TTSVBLocaleInfo.asrLocaleID.getter();
  v4 = sub_2331C8B14(v2, v3, v1);

  v5 = *(v0 + 8);

  return v5(v4 & 1);
}

uint64_t sub_2331C8A84(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v1 + 64) + 40) = sub_23328DD2C();

  return MEMORY[0x282200948](v1);
}

uint64_t sub_2331C8B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_23328E61C();
  sub_23328DA3C();
  v7 = sub_23328E66C();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_23328E54C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2331C8C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 232) = a3;
  *(v4 + 240) = v3;
  *(v4 + 224) = a2;
  v6 = type metadata accessor for TTSVBError.Reason(0);
  *(v4 + 248) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v4 + 256) = swift_task_alloc();
  v8 = sub_23328D67C();
  *(v4 + 264) = v8;
  v9 = *(v8 - 8);
  *(v4 + 272) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 280) = swift_task_alloc();
  v11 = sub_23328D63C();
  *(v4 + 288) = v11;
  v12 = *(v11 - 8);
  *(v4 + 296) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  v14 = sub_23328D66C();
  *(v4 + 328) = v14;
  v15 = *(v14 - 8);
  *(v4 + 336) = v15;
  v16 = *(v15 + 64) + 15;
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  v17 = sub_23328D6EC();
  *(v4 + 360) = v17;
  v18 = *(v17 - 8);
  *(v4 + 368) = v18;
  v19 = *(v18 + 64) + 15;
  *(v4 + 376) = swift_task_alloc();
  *(v4 + 384) = swift_task_alloc();
  *(v4 + 392) = swift_task_alloc();
  v20 = *(a1 + 16);
  *(v4 + 400) = *a1;
  *(v4 + 416) = v20;
  v21 = *(a1 + 40);
  *(v4 + 432) = *(a1 + 32);
  *(v4 + 440) = v21;

  return MEMORY[0x2822009F8](sub_2331C8E64, 0, 0);
}

uint64_t sub_2331C8E64()
{
  v92 = v0;
  v1 = v0[30];
  v2 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_isAssetDownloading;
  v0[56] = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_isAssetDownloading;
  if ((*(v1 + v2) & 1) == 0)
  {
    v3 = [objc_opt_self() mainBundle];
    v4 = [v3 bundleIdentifier];
    v0[57] = v4;

    if (v4)
    {
      v5 = v4;
      v6 = v0[55];
      v7 = v0[53];
      v8 = v0[51];
      v9 = v0[49];
      v10 = v0[45];
      v11 = v0[46];
      v86 = v5;
      v84 = sub_23328D98C();
      v13 = v12;
      v0[58] = v12;
      v14 = sub_233225380();
      v0[59] = v14;
      v15 = *(v11 + 16);
      v0[60] = v15;
      v0[61] = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v15(v9, v14, v10);

      v16 = sub_23328D6CC();
      v17 = sub_23328DE4C();

      if (os_log_type_enabled(v16, v17))
      {
        v19 = v0[54];
        v18 = v0[55];
        v81 = v0[46];
        v82 = v0[45];
        v83 = v0[49];
        v78 = *(v0 + 26);
        v79 = *(v0 + 25);
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v87 = v21;
        *v20 = 136315394;
        v88 = v79;
        v89 = v78;
        v90 = v19;
        v91 = v18;
        v22 = TTSVBLocaleInfo.asrLocaleID.getter();
        v24 = sub_23311A8F4(v22, v23, &v87);

        *(v20 + 4) = v24;
        *(v20 + 12) = 2080;
        *(v20 + 14) = sub_23311A8F4(v84, v13, &v87);
        _os_log_impl(&dword_233109000, v16, v17, "Attempting to download speech recognition asset (%s from clientID %s if necessary.", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23839CFD0](v21, -1, -1);
        MEMORY[0x23839CFD0](v20, -1, -1);

        (*(v81 + 8))(v83, v82);
      }

      else
      {
        v37 = v0[49];
        v38 = v0[45];
        v39 = v0[46];

        (*(v39 + 8))(v37, v38);
      }

      v41 = v0[54];
      v40 = v0[55];
      v42 = v0[44];
      v43 = v0[41];
      v44 = v0[42];
      v45 = v0[40];
      v46 = *(v0 + 25);
      v47 = *(v0 + 26);
      *(v1 + v2) = 1;
      v88 = v46;
      v89 = v47;
      v90 = v41;
      v91 = v40;
      TTSVBLocaleInfo.asrLocaleID.getter();
      v48 = objc_allocWithZone(MEMORY[0x277CDCE88]);
      v49 = sub_23328D95C();

      v85 = [v48 initWithLanguage:v49 assetType:3];
      v0[62] = v85;

      v50 = sub_233288BAC();
      v0[63] = v50;
      v51 = *(v44 + 16);
      v0[64] = v51;
      v0[65] = (v44 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v51(v42, v50, v43);
      v52 = sub_233288CB8();
      v0[66] = v52;
      v53 = *v52;
      v54 = *(v52 + 16);
      sub_23328D62C();
      v55 = sub_23328D64C();
      v56 = sub_23328DEFC();
      if ((sub_23328DFFC() & 1) == 0)
      {
        goto LABEL_18;
      }

      if ((v54 & 1) == 0)
      {
        if (v53)
        {
LABEL_17:
          v57 = v0[40];
          v58 = swift_slowAlloc();
          *v58 = 0;
          v59 = sub_23328D61C();
          _os_signpost_emit_with_name_impl(&dword_233109000, v55, v56, v59, v53, "", v58, 2u);
          MEMORY[0x23839CFD0](v58, -1, -1);
LABEL_18:

          v60 = v0[44];
          v62 = v0[41];
          v61 = v0[42];
          v63 = v0[40];
          v64 = v0[36];
          v65 = v0[37];
          v66 = v0[29];
          v80 = v0[28];
          (*(v65 + 16))(v0[39], v63, v64);
          v67 = sub_23328D6AC();
          v68 = *(v67 + 48);
          v69 = *(v67 + 52);
          swift_allocObject();
          v0[67] = sub_23328D69C();
          v70 = *(v65 + 8);
          v0[68] = v70;
          v0[69] = (v65 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v70(v63, v64);
          v71 = *(v61 + 8);
          v0[70] = v71;
          v0[71] = (v61 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v71(v60, v62);
          v72 = objc_opt_self();
          v73 = swift_allocObject();
          *(v73 + 16) = v80;
          *(v73 + 24) = v66;
          v0[22] = sub_2331CCA80;
          v0[23] = v73;
          v0[18] = MEMORY[0x277D85DD0];
          v0[19] = 1107296256;
          v0[20] = sub_2331CA0E0;
          v0[21] = &block_descriptor_3;
          v74 = _Block_copy(v0 + 18);
          v0[72] = v74;
          v75 = v0[23];

          v0[2] = v0;
          v0[7] = v0 + 24;
          v0[3] = sub_2331C9598;
          v76 = swift_continuation_init();
          v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2BF8, &unk_23329A730);
          v0[10] = MEMORY[0x277D85DD0];
          v0[11] = 1107296256;
          v0[12] = sub_2331CA134;
          v0[13] = &block_descriptor_6;
          v0[14] = v76;
          [v72 fetchAssetWithConfig:v85 clientIdentifier:v86 progress:v74 completion:?];
          v77 = v0 + 2;

          return MEMORY[0x282200938](v77);
        }

        __break(1u);
      }

      if (v53 >> 32)
      {
        __break(1u);
      }

      else if (v53 >> 16 <= 0x10 && (v53 & 0xFFFFF800) != 0xD800)
      {
        v53 = (v0 + 27);
        goto LABEL_17;
      }

      __break(1u);
      return MEMORY[0x282200938](v77);
    }
  }

  v26 = v0[48];
  v25 = v0[49];
  v27 = v0[47];
  v29 = v0[43];
  v28 = v0[44];
  v31 = v0[39];
  v30 = v0[40];
  v32 = v0[38];
  v33 = v0[35];
  v34 = v0[32];

  v35 = v0[1];

  return v35();
}

uint64_t sub_2331C9598()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 584) = v3;
  if (v3)
  {
    v4 = *(v1 + 464);

    v5 = sub_2331C9BFC;
  }

  else
  {
    v5 = sub_2331C96B0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2331C96B0()
{
  v87 = v0;
  v1 = *(v0 + 576);
  v79 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 520);
  v4 = *(v0 + 504);
  v5 = *(v0 + 512);
  v6 = *(v0 + 456);
  v7 = *(v0 + 344);
  v8 = *(v0 + 328);
  v9 = *(v0 + 304);
  v10 = *(v0 + 200);

  _Block_release(v1);

  v5(v7, v4, v8);
  v11 = *v2;
  v12 = *(v2 + 16);
  v13 = sub_23328D64C();
  sub_23328D68C();
  v14 = sub_23328DEEC();
  if ((sub_23328DFFC() & 1) == 0)
  {
    v17 = *(v0 + 464);

    goto LABEL_16;
  }

  if (v12)
  {
    v16 = HIDWORD(v11);
    if (!HIDWORD(v11))
    {
      v16 = v11 & 0xFFFFF800;
      v18 = 55296;
      if (v16 == 55296)
      {
        __break(1u);
        goto LABEL_29;
      }

      v16 = v11 >> 16;
      if (v11 >> 16 <= 0x10)
      {
        v7 = (v0 + 208);
        if (v11 <= 0x7F)
        {
          v19 = v11 + 1;
LABEL_11:
          v20 = *(v0 + 464);
          *(v0 + 208) = (v19 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v19) & 0x18)));

          goto LABEL_12;
        }

LABEL_25:
        v18 = (v11 & 0x3F) << 8;
        if (v11 < 0x800)
        {
          v67 = (v11 >> 6) + v18;
          v68 = 33217;
LABEL_27:
          v19 = v67 + v68;
          goto LABEL_11;
        }

LABEL_29:
        v69 = (v18 | (v11 >> 6) & 0x3F) << 8;
        if (!v16)
        {
          v19 = (v11 >> 12) + v69 + 8487393;
          goto LABEL_11;
        }

        v67 = (v11 >> 18) + ((v69 | (v11 >> 12) & 0x3F) << 8);
        v68 = -2122219023;
        goto LABEL_27;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = *(v0 + 464);

  if (!v11)
  {
    __break(1u);
    goto LABEL_23;
  }

  v7 = v11;
LABEL_12:
  v21 = *(v0 + 536);
  v22 = *(v0 + 272);
  v23 = *(v0 + 280);
  v24 = *(v0 + 264);

  sub_23328D6BC();

  if ((*(v22 + 88))(v23, v24) == *MEMORY[0x277D85B00])
  {
    v25 = "[Error] Interval already ended";
  }

  else
  {
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
    v25 = "";
  }

  v26 = *(v0 + 304);
  v27 = swift_slowAlloc();
  *v27 = 0;
  v28 = sub_23328D61C();
  _os_signpost_emit_with_name_impl(&dword_233109000, v13, v14, v28, v7, v25, v27, 2u);
  MEMORY[0x23839CFD0](v27, -1, -1);
LABEL_16:
  v29 = v13;
  v71 = *(v0 + 560);
  v72 = *(v0 + 568);
  v30 = *(v0 + 552);
  v31 = *(v0 + 544);
  v75 = *(v0 + 488);
  v73 = *(v0 + 480);
  v70 = *(v0 + 472);
  v77 = *(v0 + 424);
  v80 = *(v0 + 440);
  v32 = *(v0 + 408);
  v33 = *(v0 + 384);
  v34 = *(v0 + 360);
  v35 = *(v0 + 344);
  v36 = *(v0 + 328);
  v37 = *(v0 + 304);
  v38 = *(v0 + 288);

  v31(v37, v38);
  v71(v35, v36);
  v73(v33, v70, v34);

  v39 = sub_23328D6CC();
  v40 = sub_23328DE4C();

  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v0 + 536);
  v43 = *(v0 + 496);
  if (v41)
  {
    v45 = *(v0 + 432);
    v44 = *(v0 + 440);
    v46 = *(v0 + 368);
    v78 = *(v0 + 360);
    v81 = *(v0 + 384);
    v74 = *(v0 + 416);
    v76 = *(v0 + 400);
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v82 = v48;
    *v47 = 136315138;
    v84 = v74;
    v83 = v76;
    v85 = v45;
    v86 = v44;
    v49 = TTSVBLocaleInfo.asrLocaleID.getter();
    v51 = sub_23311A8F4(v49, v50, &v82);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_233109000, v39, v40, "Speech recognition asset (%s downloaded successfully.", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x23839CFD0](v48, -1, -1);
    MEMORY[0x23839CFD0](v47, -1, -1);

    (*(v46 + 8))(v81, v78);
  }

  else
  {
    v52 = *(v0 + 384);
    v53 = *(v0 + 360);
    v54 = *(v0 + 368);

    (*(v54 + 8))(v52, v53);
  }

  *(*(v0 + 240) + *(v0 + 448)) = 0;
  v56 = *(v0 + 384);
  v55 = *(v0 + 392);
  v57 = *(v0 + 376);
  v59 = *(v0 + 344);
  v58 = *(v0 + 352);
  v61 = *(v0 + 312);
  v60 = *(v0 + 320);
  v62 = *(v0 + 304);
  v63 = *(v0 + 280);
  v64 = *(v0 + 256);

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_2331C9BFC()
{
  v51 = v0;
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 536);
  v4 = *(v0 + 496);
  v5 = *(v0 + 472);
  v36 = *(v0 + 480);
  v38 = *(v0 + 488);
  v6 = *(v0 + 456);
  v43 = *(v0 + 440);
  v40 = *(v0 + 424);
  v7 = *(v0 + 408);
  v8 = *(v0 + 376);
  v9 = *(v0 + 360);
  swift_willThrow();

  _Block_release(v2);

  v36(v8, v5, v9);

  v10 = sub_23328D6CC();
  v11 = sub_23328DE4C();

  if (os_log_type_enabled(v10, v11))
  {
    v13 = *(v0 + 432);
    v12 = *(v0 + 440);
    v15 = *(v0 + 368);
    v14 = *(v0 + 376);
    v16 = *(v0 + 360);
    v41 = *(v0 + 416);
    v44 = *(v0 + 400);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v46 = v18;
    *v17 = 136315138;
    v47 = v44;
    v48 = v41;
    v49 = v13;
    v50 = v12;
    v19 = TTSVBLocaleInfo.asrLocaleID.getter();
    v21 = sub_23311A8F4(v19, v20, &v46);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_233109000, v10, v11, "Speech recognition asset (%s failed to download.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x23839CFD0](v18, -1, -1);
    MEMORY[0x23839CFD0](v17, -1, -1);

    (*(v15 + 8))(v14, v16);
  }

  else
  {
    v23 = *(v0 + 368);
    v22 = *(v0 + 376);
    v24 = *(v0 + 360);

    (*(v23 + 8))(v22, v24);
  }

  v25 = *(v0 + 584);
  v26 = *(v0 + 384);
  v27 = *(v0 + 392);
  v28 = *(v0 + 376);
  v29 = *(v0 + 344);
  v30 = *(v0 + 352);
  v37 = *(v0 + 320);
  v39 = *(v0 + 312);
  v42 = *(v0 + 304);
  v45 = *(v0 + 280);
  v31 = *(v0 + 248);
  v32 = *(v0 + 256);
  *(*(v0 + 240) + *(v0 + 448)) = 0;
  v47 = xmmword_23329A700;
  LOBYTE(v48) = 3;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TTSVBError(0);
  sub_2331CCB20(&qword_280D3A0B0, type metadata accessor for TTSVBError);
  swift_allocError();
  TTSVBError.init(_:_:_:)(&v47, v32, 0, v33);
  swift_willThrow();

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_2331C9F60(uint64_t a1, void (*a2)(uint64_t, double))
{
  v4 = sub_23328D6EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(a1, v7);
  v10 = sub_233225380();
  (*(v5 + 16))(v9, v10, v4);
  v11 = sub_23328D6CC();
  v12 = sub_23328DE4C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = a1;
    _os_log_impl(&dword_233109000, v11, v12, "Speech recognition asset download progress %ld", v13, 0xCu);
    MEMORY[0x23839CFD0](v13, -1, -1);
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_2331CA0E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_2331CA134(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1B40, &unk_23329A7A0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = sub_23328D98C();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return MEMORY[0x282200950](v4);
  }
}

id sub_2331CA208(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v42 = v5;
  v43 = v4;
  v7 = a1[4];
  v6 = a1[5];
  v40 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService__cachedRecognizer;
  v8 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService__cachedRecognizer);
  if (!v8)
  {
    goto LABEL_8;
  }

  v38 = v8;
  v39 = v6;
  v9 = [v38 locale];
  v10 = sub_23328CF0C();
  v37[1] = v37;
  v11 = v3;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = v2;
  v16 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328CEFC();

  v17 = sub_23328CEAC();
  v19 = v18;
  v20 = v16;
  v2 = v15;
  v21 = v43;
  (*(v12 + 8))(v20, v10);
  v3 = v11;
  v46 = v11;
  v47 = v2;
  v48 = v21;
  v49 = v42;
  v6 = v39;
  v50 = v7;
  v51 = v39;
  if (v17 == TTSVBLocaleInfo.asrLocaleID.getter() && v19 == v22)
  {

    return v38;
  }

  v24 = sub_23328E54C();

  if (v24)
  {
    return v38;
  }

  v5 = v42;
LABEL_8:
  v37[0] = v2;
  v25 = sub_23328CF0C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = v37 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v3;
  v47 = v2;
  v48 = v43;
  v49 = v5;
  v50 = v7;
  v51 = v6;
  TTSVBLocaleInfo.asrLocaleID.getter();
  sub_23328CE9C();
  v30 = objc_allocWithZone(MEMORY[0x277CDCF00]);
  v31 = sub_23328CEDC();
  v32 = [v30 initWithLocale_];

  (*(v26 + 8))(v29, v25);
  if (v32)
  {
    v33 = *(v41 + v40);
    *(v41 + v40) = v32;
    v34 = v32;

    return v34;
  }

  else
  {
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_23328E24C();
    v44 = v46;
    v45 = v47;
    MEMORY[0x23839B7E0](0xD00000000000003BLL, 0x80000002332A98B0);
    v46 = v3;
    v47 = v37[0];
    v48 = v43;
    v49 = v42;
    v50 = v7;
    v51 = v6;
    v36 = TTSVBLocaleInfo.asrLocaleID.getter();
    MEMORY[0x23839B7E0](v36);

    result = sub_23328E31C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2331CA5B8(uint64_t a1, uint64_t a2, __int128 *a3, char *a4)
{
  v31 = sub_23328D7CC();
  v33 = *(v31 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  v29 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_23328D80C();
  v30 = *(v32 - 8);
  v11 = *(v30 + 64);
  MEMORY[0x28223BE20](v32);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3[1];
  v41 = *a3;
  v42 = v14;
  v43 = a3[2];
  v15 = *a4;
  v16 = *&v4[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_userFinishedSpeakingTimer];
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2;
  *(v18 + 40) = v15;
  v39 = sub_2331CCA98;
  v40 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_2331221F8;
  v38 = &block_descriptor_16;
  v19 = _Block_copy(&aBlock);

  [v16 afterDelay:v19 processBlock:5.0];
  _Block_release(v19);
  v20 = *&v4[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_speechRecognitionQueue];
  v21 = swift_allocObject();
  *(v21 + 16) = v4;
  *(v21 + 24) = v15;
  *(v21 + 32) = a1;
  *(v21 + 40) = a2;
  v22 = v42;
  *(v21 + 48) = v41;
  *(v21 + 64) = v22;
  *(v21 + 80) = v43;
  v39 = sub_2331CCAB0;
  v40 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_2331221F8;
  v38 = &block_descriptor_22_0;
  v23 = _Block_copy(&aBlock);

  v24 = v4;
  sub_2331CCAC4(&v41, v34);
  sub_23328D7DC();
  v34[0] = MEMORY[0x277D84F90];
  sub_2331CCB20(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_2331216CC(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  v25 = v29;
  v26 = v31;
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v13, v25, v23);
  _Block_release(v23);
  (*(v33 + 8))(v25, v26);
  (*(v30 + 8))(v13, v32);
}

void sub_2331CA9DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = type metadata accessor for TTSVBError.Reason(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B38, &unk_2332909A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = (*((*MEMORY[0x277D85000] & *Strong) + 0x110))();
    v19 = v18;

    if (v17)
    {
      ObjectType = swift_getObjectType();
      v24 = a4 & 1;
      v22 = xmmword_23329A700;
      v23 = 3;
      swift_storeEnumTagMultiPayload();
      TTSVBError.init(_:_:_:)(&v22, v10, 0, v14);
      v21 = type metadata accessor for TTSVBError(0);
      (*(*(v21 - 8) + 56))(v14, 0, 1, v21);
      (*(v19 + 16))(a2, a3, 0, 0, &v24, v14, ObjectType, v19);
      swift_unknownObjectRelease();
      sub_2331CD200(v14);
    }
  }
}

void sub_2331CAC0C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v10 = sub_23328D6EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_finishedListening) = 0;
  v15 = (a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_detectedSpeechText);
  v16 = *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_detectedSpeechText + 8);
  *v15 = 0;
  v15[1] = 0;

  *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_recordingEnvironment) = a2 & 1;
  v17 = (a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_phrase);
  v18 = *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_phrase + 8);
  *v17 = a3;
  v17[1] = a4;

  v19 = sub_2331CD400();
  v20 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_recognitionRequest;
  v21 = *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_recognitionRequest);
  *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_recognitionRequest) = v19;

  v22 = sub_233225314();
  (*(v11 + 16))(v14, v22, v10);
  sub_2331CCAC4(a5, &v44);
  v23 = sub_23328D6CC();
  v24 = sub_23328DE4C();
  sub_2331CD5F4(a5);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v41 = v10;
    v26 = v25;
    v27 = swift_slowAlloc();
    v42 = v20;
    v43 = v27;
    v28 = v27;
    *v26 = 136315138;
    v29 = a5[1];
    v44 = *a5;
    v45 = v29;
    v46 = a5[2];
    v30 = TTSVBLocaleInfo.asrLocaleID.getter();
    v32 = sub_23311A8F4(v30, v31, &v43);

    *(v26 + 4) = v32;
    _os_log_impl(&dword_233109000, v23, v24, "Creating ASR task with localeID: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    v33 = v28;
    v20 = v42;
    MEMORY[0x23839CFD0](v33, -1, -1);
    MEMORY[0x23839CFD0](v26, -1, -1);

    (*(v11 + 8))(v14, v41);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v34 = *(a1 + v20);
  if (v34)
  {
    v35 = a5[1];
    v44 = *a5;
    v45 = v35;
    v46 = a5[2];
    v36 = v34;
    v37 = sub_2331CA208(&v44);
    v38 = [v37 recognitionTaskWithRequest:v36 delegate:a1];

    v39 = *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_recognitionTask);
    *(a1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_recognitionTask) = v38;
  }
}

uint64_t sub_2331CAEF8(void *a1)
{
  v3 = sub_23328D7CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23328D80C();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v18);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_speechRecognitionQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_2331CCB68;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_28_0;
  v13 = _Block_copy(aBlock);
  v14 = v1;
  v15 = a1;
  sub_23328D7DC();
  v19 = MEMORY[0x277D84F90];
  sub_2331CCB20(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_2331216CC(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v18);
}

uint64_t sub_2331CB1BC(char a1)
{
  v3 = sub_23328D7CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23328D80C();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_userFinishedSpeakingTimer] cancel];
  v17[1] = *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_speechRecognitionQueue];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v1;
  aBlock[4] = sub_2331CCB84;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_34_0;
  v14 = _Block_copy(aBlock);
  v15 = v1;
  sub_23328D7DC();
  v19 = MEMORY[0x277D84F90];
  sub_2331CCB20(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_2331216CC(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v12, v7, v14);
  _Block_release(v14);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v12, v18);
}

void sub_2331CB498()
{
  v1 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_userFinishedSpeakingTimer);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4[4] = sub_2331CCC4C;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_2331221F8;
  v4[3] = &block_descriptor_38;
  v3 = _Block_copy(v4);

  [v1 afterDelay:v3 processBlock:1.0];
  _Block_release(v3);
}

uint64_t sub_2331CB580(uint64_t a1)
{
  v2 = sub_23328D7CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23328D80C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(result + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_speechRecognitionQueue);
    v18 = v7;
    v14 = result;
    v17 = v13;

    aBlock[4] = sub_2331CD268;
    aBlock[5] = a1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2331221F8;
    aBlock[3] = &block_descriptor_87;
    v15 = _Block_copy(aBlock);

    sub_23328D7DC();
    v19 = MEMORY[0x277D84F90];
    sub_2331CCB20(qword_280D3A270, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_2331216CC(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
    sub_23328E14C();
    v16 = v17;
    MEMORY[0x23839BC20](0, v11, v6, v15);
    _Block_release(v15);

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v18);
  }

  return result;
}

uint64_t sub_2331CB984(void *a1, void *a2)
{
  v5 = sub_23328D7CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23328D80C();
  v10 = *(v21 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v21);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_speechRecognitionQueue];
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v2;
  aBlock[4] = sub_2331CCC54;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_44;
  v15 = _Block_copy(aBlock);
  v16 = a1;
  v17 = a2;
  v18 = v2;
  sub_23328D7DC();
  v22 = MEMORY[0x277D84F90];
  sub_2331CCB20(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_2331216CC(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v21);
}

id sub_2331CBC54(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_23328D6EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v49 - v13;
  v15 = [a1 error];
  v16 = sub_233225380();
  v17 = *(v7 + 16);
  v18 = &unk_2789C4000;
  if (v15)
  {
    v17(v14, v16, v6);
    v19 = v15;
    v20 = sub_23328D6CC();
    v21 = sub_23328DE3C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v51 = a3;
      v52 = v23;
      v49 = v23;
      *v22 = 136315394;
      *(v22 + 4) = sub_23311A8F4(0xD00000000000002ELL, 0x80000002332A9920, &v52);
      *(v22 + 12) = 2080;
      v24 = sub_23328CA6C();
      v50 = v6;
      v25 = v24;
      v26 = [v24 debugDescription];

      v27 = sub_23328D98C();
      v28 = a2;
      v30 = v29;

      v31 = sub_23311A8F4(v27, v30, &v52);
      a2 = v28;

      *(v22 + 14) = v31;
      v18 = &unk_2789C4000;
      _os_log_impl(&dword_233109000, v20, v21, "%s. Error occurre=%s", v22, 0x16u);
      v32 = v49;
      swift_arrayDestroy();
      a3 = v51;
      MEMORY[0x23839CFD0](v32, -1, -1);
      MEMORY[0x23839CFD0](v22, -1, -1);

      (*(v7 + 8))(v14, v50);
      goto LABEL_10;
    }

    v39 = *(v7 + 8);
    v40 = v14;
  }

  else
  {
    v17(v10, v16, v6);
    v33 = a2;
    v34 = sub_23328D6CC();
    v35 = sub_23328DE1C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v52 = v37;
      *v36 = 136315394;
      *(v36 + 4) = sub_23311A8F4(0xD00000000000002ELL, 0x80000002332A9920, &v52);
      *(v36 + 12) = 1024;
      *(v36 + 14) = [v33 isFinal];

      _os_log_impl(&dword_233109000, v34, v35, "%s. IsFinal=%{BOOL}d", v36, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v37);
      v38 = v37;
      v18 = &unk_2789C4000;
      MEMORY[0x23839CFD0](v38, -1, -1);
      MEMORY[0x23839CFD0](v36, -1, -1);
    }

    else
    {
    }

    v39 = *(v7 + 8);
    v40 = v10;
  }

  v39(v40, v6);
LABEL_10:
  result = [a2 v18[471]];
  if (result)
  {
    v42 = [a2 bestTranscription];
    v43 = [v42 formattedString];

    v44 = sub_23328D98C();
    v46 = v45;

    v47 = (a3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_detectedSpeechText);
    v48 = *(a3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_detectedSpeechText + 8);
    *v47 = v44;
    v47[1] = v46;
  }

  return result;
}

uint64_t sub_2331CC124(void *a1, char a2)
{
  v5 = sub_23328D7CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_23328D80C();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v20);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_speechRecognitionQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = v2;
  aBlock[4] = sub_2331CCC60;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_50;
  v15 = _Block_copy(aBlock);
  v16 = a1;
  v17 = v2;
  sub_23328D7DC();
  v21 = MEMORY[0x277D84F90];
  sub_2331CCB20(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_2331216CC(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v20);
}

uint64_t sub_2331CC3F4(void *a1, char a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B38, &unk_2332909A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v52[-v8];
  v10 = sub_23328D6EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v52[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v52[-v17];
  v19 = [a1 error];
  v20 = sub_233225380();
  v21 = *(v11 + 16);
  if (v19)
  {
    v21(v18, v20, v10);
    v22 = v19;
    v23 = sub_23328D6CC();
    v24 = sub_23328DE3C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v56 = v55;
      *v25 = 136315650;
      *(v25 + 4) = sub_23311A8F4(0xD00000000000002FLL, 0x80000002332A98F0, &v56);
      *(v25 + 12) = 1024;
      *(v25 + 14) = a2 & 1;
      *(v25 + 18) = 2080;
      v26 = sub_23328CA6C();
      v27 = [v26 debugDescription];
      v53 = v24;
      v28 = v27;

      v29 = sub_23328D98C();
      v54 = v10;
      v30 = v9;
      v32 = v31;

      v33 = sub_23311A8F4(v29, v32, &v56);
      v9 = v30;

      *(v25 + 20) = v33;
      _os_log_impl(&dword_233109000, v23, v53, "%s. successfully=%{BOOL}d. Error occurred=%s", v25, 0x1Cu);
      v34 = v55;
      swift_arrayDestroy();
      MEMORY[0x23839CFD0](v34, -1, -1);
      MEMORY[0x23839CFD0](v25, -1, -1);

      v35 = (*(v11 + 8))(v18, v54);
      goto LABEL_9;
    }

    v40 = *(v11 + 8);
    v41 = v18;
  }

  else
  {
    v21(v14, v20, v10);
    v36 = sub_23328D6CC();
    v37 = sub_23328DE1C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v56 = v39;
      *v38 = 136315394;
      *(v38 + 4) = sub_23311A8F4(0xD00000000000002FLL, 0x80000002332A98F0, &v56);
      *(v38 + 12) = 1024;
      *(v38 + 14) = a2 & 1;
      _os_log_impl(&dword_233109000, v36, v37, "%s. successfully=%{BOOL}d", v38, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x23839CFD0](v39, -1, -1);
      MEMORY[0x23839CFD0](v38, -1, -1);
    }

    v40 = *(v11 + 8);
    v41 = v14;
  }

  v35 = v40(v41, v10);
LABEL_9:
  result = (*((*MEMORY[0x277D85000] & *a3) + 0x110))(v35);
  if (result)
  {
    v44 = v43;
    ObjectType = swift_getObjectType();
    v47 = *(a3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_phrase);
    v46 = *(a3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_phrase + 8);
    v49 = *(a3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_detectedSpeechText);
    v48 = *(a3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_detectedSpeechText + 8);
    LOBYTE(v56) = *(a3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_recordingEnvironment);
    v50 = type metadata accessor for TTSVBError(0);
    (*(*(v50 - 8) + 56))(v9, 1, 1, v50);
    v51 = *(v44 + 16);

    v51(v47, v46, v49, v48, &v56, v9, ObjectType, v44);
    swift_unknownObjectRelease();

    return sub_2331CD200(v9);
  }

  return result;
}

id TTSVBSpeechRecognitionService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSVBSpeechRecognitionService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2331CCB20(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2331CCB84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if ((v1 & 1) == 0)
  {
    (*((*MEMORY[0x277D85000] & *v2) + 0x118))(0, 0);
  }

  v3 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_recognitionRequest;
  [*(v2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_recognitionRequest) endAudio];
  v4 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_recognitionTask;
  [*(v2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_recognitionTask) finish];
  v5 = *(v2 + v3);
  *(v2 + v3) = 0;

  v6 = *(v2 + v4);
  *(v2 + v4) = 0;
}

uint64_t dispatch thunk of TTSVBSpeechRecognitionService.speechRecognitionAssetExists(localeInfo:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x170);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2331CCEC4;

  return v8(a1);
}

uint64_t sub_2331CCEC4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of TTSVBSpeechRecognitionService.downloadSpeechRecognitionAsset(localeInfo:downloadProgress:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x178);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_233126374;

  return v12(a1, a2, a3);
}

uint64_t sub_2331CD200(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B38, &unk_2332909A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2331CD268()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_finishedListening];

    if ((v1 & 1) == 0)
    {
      swift_beginAccess();
      v2 = swift_unknownObjectWeakLoadStrong();
      if (v2)
      {
        v2[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport29TTSVBSpeechRecognitionService_finishedListening] = 1;
      }

      swift_beginAccess();
      v3 = swift_unknownObjectWeakLoadStrong();
      v4 = MEMORY[0x277D85000];
      if (v3)
      {
        v5 = v3;
        v6 = (*((*MEMORY[0x277D85000] & *v3) + 0x110))();
        v8 = v7;

        if (v6)
        {
          ObjectType = swift_getObjectType();
          (*(v8 + 8))(ObjectType, v8);
          swift_unknownObjectRelease();
        }
      }

      swift_beginAccess();
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = v10;
        (*((*v4 & *v10) + 0x1B0))(1);
      }
    }
  }
}

id sub_2331CD400()
{
  v0 = sub_23328D6EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CDCEC0]) init];
  [v5 setDetectMultipleUtterances_];
  [v5 setShouldReportPartialResults_];
  v6 = *sub_233165CA0();
  v7 = NSUserDefaults.ttsvb_internalUseServerBasedASR.getter();

  if (v7)
  {
    v8 = sub_233225314();
    (*(v1 + 16))(v4, v8, v0);
    v9 = sub_23328D6CC();
    v10 = sub_23328DE4C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_233109000, v9, v10, "Internal UseServerBasedASR=true. Setting requiresOnDeviceRecognition=false", v11, 2u);
      MEMORY[0x23839CFD0](v11, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    [v5 setRequiresOnDeviceRecognition_];
  }

  else
  {
    [v5 setRequiresOnDeviceRecognition_];
  }

  return v5;
}

id sub_2331CD6B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_23328CC9C();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a1, v7);
  v11 = objc_allocWithZone(MEMORY[0x277CB8398]);
  result = sub_2331D1684(v9);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t static TTSVBAudioTools.convertAudioFileAtURL(_:audioOverrides:saveTo:filename:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, int64_t a6@<X8>)
{
  v11 = *a2;
  v12 = *(a2 + 1);
  v13 = *(a2 + 8);
  result = sub_2331D17D0(a1);
  if (!v6)
  {
    v15 = result;
    v23 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2320, &qword_233297640);
    v20 = a4;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_233297620;
    *(inited + 32) = v15;
    v17 = v15;
    v18 = [v17 format];
    v21[0] = v11;
    v21[1] = v12;
    v22 = v13;
    static TTSVBAudioTools.createAudioFileFromBuffers(_:convertFrom:audioOverrides:saveTo:filename:)(inited, v18, v21, a3, v20, a5, a6);

    swift_setDeallocating();
    v19 = *(inited + 16);
    return swift_arrayDestroy();
  }

  return result;
}

void static TTSVBAudioTools.createAudioFileFromBuffers(_:convertFrom:audioOverrides:saveTo:filename:)(unint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, int64_t a7@<X8>)
{
  *&v202 = a6;
  v199 = a5;
  v206 = a4;
  v215[1] = *MEMORY[0x277D85DE8];
  v196 = sub_23328D6EC();
  v11 = *(v196 - 1);
  v12 = *(v11 + 64);
  v13 = (MEMORY[0x28223BE20])(v196);
  v192 = v183 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v183 - v15;
  v17 = type metadata accessor for TTSVBError.Reason(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = (MEMORY[0x28223BE20])(v17);
  v20 = (MEMORY[0x28223BE20])(v19);
  v22 = (v183 - v21);
  v23 = (MEMORY[0x28223BE20])(v20);
  MEMORY[0x28223BE20](v23);
  v27 = v183 - v26;
  LODWORD(v28) = *a3;
  v29 = a3[1];
  v30 = *(a3 + 1);
  if (a1 >> 62)
  {
    goto LABEL_70;
  }

  v31 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v31)
  {
    while (1)
    {
      LODWORD(v195) = v29;
      LODWORD(v187) = v28;
      v193 = v25;
      v191 = v11;
      v197 = v31;
      v190 = v24;
      v184 = v27;
      v203 = v17;
      v188 = v30;
      if (v30)
      {
        v32 = v30;
        v33 = v30;
      }

      else
      {
        v33 = a2;
        v32 = 0;
      }

      v194 = v22;
      v198 = a1;
      v183[2] = a7;
      sub_233144EEC(0, &qword_27DDE2C68, 0x277CB83A8);
      v34 = v32;
      v35 = sub_23328DFDC();
      v204 = v33;
      if (v35)
      {
        v36 = sub_233225380();
        v37 = v191;
        v38 = v196;
        (v191)[2](v16, v36, v196);
        v39 = a2;
        v40 = sub_23328D6CC();
        v41 = sub_23328DE4C();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          *&aBlock = v43;
          *v42 = 136315138;
          sub_2332159F8();
          v46 = sub_23311A8F4(v44, v45, &aBlock);

          *(v42 + 4) = v46;
          _os_log_impl(&dword_233109000, v40, v41, "'fromFormat' same as 'targetFormat'. Will not create AVAudioConverter because conversion not required. Fmt=%s", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v43);
          MEMORY[0x23839CFD0](v43, -1, -1);
          MEMORY[0x23839CFD0](v42, -1, -1);
        }

        (v37[1])(v16, v38);
        v47 = 0;
      }

      else
      {
        v47 = [objc_allocWithZone(MEMORY[0x277CB8380]) initFromFormat:a2 toFormat:v33];
        if (!v47)
        {
          aBlock = xmmword_23329A7B0;
          LOBYTE(v213) = 3;
          v65 = v184;
          swift_storeEnumTagMultiPayload();
          type metadata accessor for TTSVBError(0);
          sub_23311A3F8();
          swift_allocError();
          TTSVBError.init(_:_:_:)(&aBlock, v65, 0, v66);
          swift_willThrow();

          goto LABEL_72;
        }
      }

      v201 = v47;
      v48 = sub_23328CC9C();
      v189 = v183;
      v49 = *(v48 - 8);
      v50 = *(v49 + 64);
      v51 = (MEMORY[0x28223BE20])(v48);
      v53 = v183 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
      v200 = v52;
      MEMORY[0x28223BE20](v51);
      v55 = v183 - v54;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
      v57 = (*(*(v56 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v56 - 8);
      v59 = v183 - v58;
      sub_233121D34(v206, v183 - v58, &qword_27DDE19A0, &unk_233290360);
      if ((*(v49 + 48))(v59, 1, v48) == 1)
      {
        v186 = v49;
        sub_233121E04(v59, &qword_27DDE19A0, &unk_233290360);
        v60 = NSTemporaryDirectory();
        sub_23328D98C();

        sub_23328CB7C();

        v185 = v53;
      }

      else
      {
        v61 = *(v49 + 32);
        v61(v55, v59, v48);
        *&v209 = *sub_2331DEBE8();
        aBlock = xmmword_23329A7B0;
        LOBYTE(v213) = 3;
        v62 = v209;
        v63 = sub_233126E60();
        v64 = v205;
        _TTSVBFileManager.createDirectoryIfNeeded(_:attributes:deleteAndRecreateIfExists:problem:)(v55, 0, v63 & 1, &aBlock);
        v205 = v64;
        if (v64)
        {

          (*(v49 + 8))(v55, v48);
          goto LABEL_72;
        }

        v186 = v49;

        v185 = v53;
        v61(v53, v55, v48);
      }

      v67 = v200;
      v68 = v202;
      if (v202)
      {
        v69 = v202;
      }

      else
      {
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        MEMORY[0x23839B7E0](0x6E6964726F636552, 0xEA00000000005F67);
        v70 = sub_23328CE1C();
        v71 = *(v70 - 8);
        v72 = *(v71 + 64);
        MEMORY[0x28223BE20](v70);
        v74 = v183 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_23328CE0C();
        sub_23328CCFC();
        (*(v71 + 8))(v74, v70);
        sub_23328DCDC();
        v68 = v202;
        v69 = *(&aBlock + 1);
      }

      v183[3] = v69;
      v199 = v183;
      MEMORY[0x28223BE20](v68);
      *&aBlock = v75;
      *(&aBlock + 1) = v69;

      MEMORY[0x23839B7E0](46, 0xE100000000000000);
      v76 = aBlock;
      v77 = v187;
      LOBYTE(aBlock) = v187;
      v78 = v195;
      BYTE1(aBlock) = v195;
      v79 = v188;
      *(&aBlock + 1) = v188;
      v80 = TTSVBAudioDescriptor.fileExtension.getter();
      v82 = v81;
      v209 = v76;

      MEMORY[0x23839B7E0](v80, v82);
      v83 = v183 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);

      v84 = v185;
      sub_23328CBEC();

      LOBYTE(aBlock) = v77;
      BYTE1(aBlock) = v78;
      *(&aBlock + 1) = v79;
      v85 = v204;
      v86 = TTSVBAudioDescriptor.audioFileSettings(withFormat:)(v204);
      v87 = (MEMORY[0x28223BE20])(v86);
      v183[-4] = v83;
      v183[-3] = v87;
      v206 = v87;
      v183[-2] = v85;
      v202 = xmmword_23329A7B0;
      aBlock = xmmword_23329A7B0;
      LOBYTE(v213) = 3;
      v88 = v186;
      v89 = v193;
      (*(v186 + 16))(v193, v83, v48);
      swift_storeEnumTagMultiPayload();
      sub_233144EEC(0, &qword_27DDE2C70, 0x277CB8398);
      v90 = v205;
      static TTSVBError.perform<A>(_:problem:reason:)(sub_2331D1C10, &v183[-6], &aBlock, v89);
      if (v90)
      {

        sub_2331D1EE4(v89, type metadata accessor for TTSVBError.Reason);
        v91 = *(v88 + 8);
        v91(v84, v48);
        v91(v83, v48);
        goto LABEL_72;
      }

      v195 = v48;
      v205 = 0;
      sub_2331D1EE4(v89, type metadata accessor for TTSVBError.Reason);
      v215[0] = v209;
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      v92 = v209;
      sub_23328E24C();
      MEMORY[0x23839B7E0](0xD000000000000033, 0x80000002332A9950);
      v193 = v83;
      v93 = sub_23328CC6C();
      MEMORY[0x23839B7E0](v93);

      MEMORY[0x23839B7E0](0x46656C694620200ALL, 0xED00005B203A746DLL);
      v94 = [v92 fileFormat];

      sub_2332159F8();
      v96 = v95;
      v98 = v97;

      MEMORY[0x23839B7E0](v96, v98);

      MEMORY[0x23839B7E0](0xD000000000000014, 0x80000002332A9990);
      v99 = [v92 processingFormat];

      sub_2332159F8();
      v101 = v100;
      v103 = v102;

      MEMORY[0x23839B7E0](v101, v103);

      MEMORY[0x23839B7E0](93, 0xE100000000000000);
      v207 = aBlock;
      a1 = v206 + 64;
      v104 = 1 << *(v206 + 32);
      v105 = -1;
      if (v104 < 64)
      {
        v105 = ~(-1 << v104);
      }

      a2 = v105 & *(v206 + 64);
      a7 = (v104 + 63) >> 6;

      v106 = 0;
      v27 = MEMORY[0x277D84698];
      v17 = MEMORY[0x277D846A8];
      v22 = &v209;
      if (a2)
      {
        break;
      }

LABEL_26:
      if (a7 <= (v106 + 1))
      {
        v28 = (v106 + 1);
      }

      else
      {
        v28 = a7;
      }

      v16 = (v28 - 1);
      while (1)
      {
        v11 = (v106 + 1);
        if (__OFADD__(v106, 1))
        {
          break;
        }

        if (v11 >= a7)
        {
          a2 = 0;
          v210 = 0u;
          v211 = 0u;
          v209 = 0u;
          goto LABEL_34;
        }

        a2 = *(a1 + 8 * v11);
        ++v106;
        if (a2)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      v190 = v24;
      v193 = v25;
      v180 = v28;
      LODWORD(v195) = v29;
      v188 = v30;
      v31 = sub_23328E19C();
      v30 = v188;
      v29 = v195;
      LODWORD(v28) = v180;
      v25 = v193;
      v24 = v190;
      if (!v31)
      {
        goto LABEL_71;
      }
    }

    while (1)
    {
      v11 = v106;
LABEL_33:
      v107 = __clz(__rbit64(a2));
      a2 &= a2 - 1;
      v108 = v107 | (v11 << 6);
      v109 = (*(v206 + 48) + 16 * v108);
      v111 = *v109;
      v110 = v109[1];
      sub_23311B0C0(*(v206 + 56) + 32 * v108, &v208);
      *&v209 = v111;
      *(&v209 + 1) = v110;
      sub_233145134(&v208, &v210);

      v16 = v11;
LABEL_34:
      aBlock = v209;
      v213 = v210;
      v214 = v211;
      v11 = *(&v209 + 1);
      if (!*(&v209 + 1))
      {
        break;
      }

      v112 = aBlock;
      sub_233145134(&v213, &v209);
      *&v208 = 0;
      *(&v208 + 1) = 0xE000000000000000;
      MEMORY[0x23839B7E0](2105354, 0xE300000000000000);
      MEMORY[0x23839B7E0](v112, v11);

      MEMORY[0x23839B7E0](8250, 0xE200000000000000);
      sub_23328E30C();
      MEMORY[0x23839B7E0](v208, *(&v208 + 1));

      __swift_destroy_boxed_opaque_existential_0(&v209);
      v106 = v16;
      v22 = &v209;
      if (!a2)
      {
        goto LABEL_26;
      }
    }

    v113 = sub_233225380();
    v114 = v191;
    v115 = v192;
    v116 = v196;
    (v191)[2](v192, v113, v196);
    v117 = v207;

    v118 = sub_23328D6CC();
    v119 = sub_23328DE4C();

    v120 = os_log_type_enabled(v118, v119);
    v183[1] = *(&v117 + 1);
    if (v120)
    {
      v11 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      *&aBlock = v121;
      *v11 = 136315138;

      v122 = sub_23311A8F4(v117, *(&v117 + 1), &aBlock);

      *(v11 + 4) = v122;
      _os_log_impl(&dword_233109000, v118, v119, "%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v121);
      MEMORY[0x23839CFD0](v121, -1, -1);
      MEMORY[0x23839CFD0](v11, -1, -1);
    }

    v123 = v114[1];
    v16 = (v114 + 1);
    v123(v115, v116);
    a2 = v205;
    a1 = v204;
    v124 = v198;
    v22 = v199;
    v125 = v201;
    v17 = 0;
    v192 = (v198 & 0xC000000000000001);
    v187 = v198 & 0xFFFFFFFFFFFFFF8;
    v188 = &v213;
    v191 = (v186 + 32);
    do
    {
      if (v192)
      {
        v126 = MEMORY[0x23839BFC0](v17);
      }

      else
      {
        if (v17 >= *(v187 + 16))
        {
          goto LABEL_76;
        }

        v126 = *(v124 + 8 * v17 + 32);
      }

      v27 = v126;
      a7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_69;
      }

      if (v125)
      {
        v127 = v125;
        v128 = [v127 inputFormat];
        [v128 sampleRate];
        v130 = v129;

        v205 = v127;
        v131 = [v127 outputFormat];
        [v131 sampleRate];
        v133 = v132;

        v134 = [v27 frameCapacity] / (v130 / v133);
        if (COERCE__INT64(fabs(v134)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
        }

        if (v134 <= -1.0)
        {
          goto LABEL_74;
        }

        if (v134 >= 4294967300.0)
        {
          goto LABEL_75;
        }

        v135 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:a1 frameCapacity:v134];
        if (!v135)
        {

          v156 = v205;

          aBlock = v202;
          LOBYTE(v213) = 3;
          v157 = v184;
          swift_storeEnumTagMultiPayload();
          type metadata accessor for TTSVBError(0);
          sub_23311A3F8();
          swift_allocError();
          TTSVBError.init(_:_:_:)(&aBlock, v157, 0, v158);
          swift_willThrow();

          v159 = *(v186 + 8);
          v160 = v195;
          v159(v185, v195);

          v159(v193, v160);
          goto LABEL_72;
        }

        v136 = v135;
        v137 = a2;
        v138 = swift_allocObject();
        *(v138 + 16) = v27;
        *&v214 = sub_2331D1D18;
        *(&v214 + 1) = v138;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v213 = sub_2331CF3FC;
        *(&v213 + 1) = &block_descriptor_4;
        v139 = _Block_copy(&aBlock);
        v140 = v27;

        *&aBlock = 0;
        v141 = [v205 convertToBuffer:v136 error:&aBlock withInputFromBlock:v139];
        _Block_release(v139);
        v143 = aBlock;
        if (aBlock)
        {
          v161 = v136;
          v162 = aBlock;

          v163 = v205;

          aBlock = v202;
          LOBYTE(v213) = 3;
          v164 = v140;
          v165 = v184;
          swift_storeEnumTagMultiPayload();
          type metadata accessor for TTSVBError(0);
          sub_23311A3F8();
          swift_allocError();
          v167 = v166;
          v168 = v162;
          TTSVBError.init(_:_:_:)(&aBlock, v165, v143, v167);
          swift_willThrow();

          v169 = *(v186 + 8);
          v170 = v195;
          v169(v185, v195);

          v169(v193, v170);
          goto LABEL_72;
        }

        if (v141)
        {

          v171 = v205;

          aBlock = v202;
          LOBYTE(v213) = 3;
          v172 = v136;
          v173 = v184;
          swift_storeEnumTagMultiPayload();
          type metadata accessor for TTSVBError(0);
          sub_23311A3F8();
          swift_allocError();
          TTSVBError.init(_:_:_:)(&aBlock, v173, 0, v174);
          swift_willThrow();

          v175 = *(v186 + 8);
          v176 = v195;
          v175(v185, v195);
LABEL_67:

          v175(v193, v176);
          goto LABEL_72;
        }

        v196 = v183;
        MEMORY[0x28223BE20](v142);
        v183[-2] = v215;
        v183[-1] = v136;
        aBlock = v202;
        LOBYTE(v213) = 3;
        if (!v215[0])
        {
          __break(1u);
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

        v11 = v136;
        v144 = [v215[0] url];
        MEMORY[0x28223BE20](v144);
        v146 = v183 - ((v145 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_23328CC4C();

        v147 = v194;
        (*v191)(v194, v146, v195);
        swift_storeEnumTagMultiPayload();
        static TTSVBError.perform<A>(_:problem:reason:)(sub_2331D1D5C, &v183[-4], &aBlock, v147);
        a2 = v137;
        if (v137)
        {

          v177 = v205;

          sub_2331D1EE4(v147, type metadata accessor for TTSVBError.Reason);
          v178 = *(v186 + 8);
          v179 = v195;
          v178(v185, v195);

          v178(v193, v179);
          goto LABEL_72;
        }

        sub_2331D1EE4(v147, type metadata accessor for TTSVBError.Reason);

        v16 = v193;
      }

      else
      {
        *&v148 = MEMORY[0x28223BE20](v126);
        v183[-2] = v215;
        v183[-1] = v27;
        aBlock = v148;
        LOBYTE(v213) = 3;
        if (!v215[0])
        {
          goto LABEL_78;
        }

        v149 = [v215[0] url];
        MEMORY[0x28223BE20](v149);
        v11 = v183 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_23328CC4C();

        v151 = v190;
        (*v191)(v190, v11, v195);
        swift_storeEnumTagMultiPayload();
        static TTSVBError.perform<A>(_:problem:reason:)(sub_2331D2B20, &v183[-4], &aBlock, v151);
        if (a2)
        {

          sub_2331D1EE4(v151, type metadata accessor for TTSVBError.Reason);
          v175 = *(v186 + 8);
          v176 = v195;
          v175(v185, v195);

          goto LABEL_67;
        }

        sub_2331D1EE4(v151, type metadata accessor for TTSVBError.Reason);

        v16 = v193;
      }

      ++v17;
      a1 = v204;
      v124 = v198;
      v22 = v199;
      v125 = v201;
    }

    while (a7 != v197);
    v152 = v215[0];
    if (v215[0])
    {

      v153 = [v152 url];
      sub_23328CC4C();

      v154 = *(v186 + 8);
      v155 = v195;
      v154(v185, v195);

      v154(v16, v155);
      goto LABEL_72;
    }

LABEL_79:
    __break(1u);
  }

  else
  {
LABEL_71:
    aBlock = xmmword_23329A7B0;
    LOBYTE(v213) = 3;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for TTSVBError(0);
    sub_23311A3F8();
    swift_allocError();
    TTSVBError.init(_:_:_:)(&aBlock, v27, 0, v181);
    swift_willThrow();
LABEL_72:
    v182 = *MEMORY[0x277D85DE8];
  }
}

id sub_2331CF3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = v6(a2, a3);

  return v7;
}

uint64_t static TTSVBAudioTools.audioDurationForAudioFileSync(_:)(uint64_t a1)
{
  v1[12] = a1;
  v2 = type metadata accessor for TTSVBError(0);
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();
  v5 = type metadata accessor for TTSVBError.Reason(0);
  v1[16] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B38, &unk_2332909A0) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2331CF5A8, 0, 0);
}

uint64_t sub_2331CF5A8()
{
  v1 = v0[20];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  v5 = *(v3 + 56);
  v0[21] = v5;
  v0[22] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v2);
  v6 = objc_allocWithZone(MEMORY[0x277CE6650]);
  v7 = sub_23328CBCC();
  v0[23] = [v6 initWithURL:v7 options:0];

  v0[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2C78, &qword_23329A7D0);
  v8 = sub_23328CF2C();
  v0[25] = v8;
  v9 = *(MEMORY[0x277D82DC0] + 4);
  v10 = swift_task_alloc();
  v0[26] = v10;
  *v10 = v0;
  v10[1] = sub_2331CF6E4;

  return MEMORY[0x2821FAF00](v0 + 44, v8, 0, 0);
}

uint64_t sub_2331CF6E4()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 200);

  if (v0)
  {
    v6 = sub_2331CFB74;
  }

  else
  {
    v6 = sub_2331CF818;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2331CF818()
{
  v45 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  sub_23328CF2C();
  sub_23328DF9C();

  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v39 = v3;
  v40 = v5;
  if (*(v0 + 40))
  {
    v8 = *(v0 + 168);
    v7 = *(v0 + 176);
    v10 = *(v0 + 152);
    v9 = *(v0 + 160);
    if (v6 == 1)
    {
      v11 = *(v0 + 104);
      sub_2331524CC(&v41);
      v43 = v41;
      v44 = v42;
      static TTSVBError.map(_:_:)(v3, &v43, v10);
      sub_2331220AC(v43, *(&v43 + 1), v44);
      sub_233121E04(v9, &qword_27DDE1B38, &unk_2332909A0);
      v12 = v10;
      v13 = v11;
    }

    else
    {
      v15 = *(v0 + 128);
      v16 = *(v0 + 136);
      v17 = *(v0 + 104);
      v43 = 0uLL;
      v44 = 3;
      swift_storeEnumTagMultiPayload();
      TTSVBError.init(_:_:_:)(&v43, v16, 0, v10);
      sub_233121E04(v9, &qword_27DDE1B38, &unk_2332909A0);
      v12 = v10;
      v13 = v17;
    }

    v8(v12, 0, 1, v13);
    sub_2331D1DFC(v10, v9);
    Seconds = 0.0;
  }

  else
  {
    *(v0 + 68) = v3;
    *(v0 + 76) = v4;
    *(v0 + 84) = v5;
    Seconds = CMTimeGetSeconds((v0 + 68));
  }

  v18 = *(v0 + 144);
  v20 = *(v0 + 104);
  v19 = *(v0 + 112);
  sub_233121D34(*(v0 + 160), v18, &qword_27DDE1B38, &unk_2332909A0);
  v21 = (*(v19 + 48))(v18, 1, v20);
  v22 = *(v0 + 184);
  v23 = *(v0 + 160);
  if (v21 == 1)
  {
    v25 = *(v0 + 144);
    v24 = *(v0 + 152);
    v26 = *(v0 + 136);
    v38 = *(v0 + 120);
    sub_233121E04(v23, &qword_27DDE1B38, &unk_2332909A0);

    sub_2331D1E6C(v39, v4, v40, v6);
    sub_233121E04(v25, &qword_27DDE1B38, &unk_2332909A0);

    v27 = *(v0 + 8);
    v28.n128_f64[0] = Seconds;
  }

  else
  {
    v29 = *(v0 + 120);
    v30 = *(v0 + 104);
    sub_2331D1E80(*(v0 + 144), v29);
    sub_23311A3F8();
    swift_allocError();
    sub_233121720(v29, v31);
    swift_willThrow();

    sub_2331D1E6C(v39, v4, v40, v6);
    sub_2331D1EE4(v29, type metadata accessor for TTSVBError);
    sub_233121E04(v23, &qword_27DDE1B38, &unk_2332909A0);
    v33 = *(v0 + 152);
    v32 = *(v0 + 160);
    v35 = *(v0 + 136);
    v34 = *(v0 + 144);
    v36 = *(v0 + 120);

    v27 = *(v0 + 8);
  }

  return v27(v28);
}

uint64_t sub_2331CFB74()
{
  v1 = *(v0 + 160);

  sub_233121E04(v1, &qword_27DDE1B38, &unk_2332909A0);
  v2 = *(v0 + 216);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  v7 = *(v0 + 120);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t TTSVBAudioTools.RecordingAnalysis.detectedSpeech.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TTSVBAudioTools.RecordingAnalysis.detectedSpeech.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *TTSVBAudioTools.RecordingAnalysis.metrics.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t TTSVBAudioTools.RecordingAnalysis.init(metrics:detectedSpeech:editDistance:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a2;
  a5[1] = a3;
  a5[2] = a4;
  a5[3] = result;
  return result;
}

uint64_t TTSVBAudioTools.RecordingAnalysis.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  if (v2)
  {
    sub_23328E24C();

    MEMORY[0x23839B7E0](v1, v2);
    MEMORY[0x23839B7E0](0x6944746964452027, 0xEF3D65636E617473);
    v5 = sub_23328E51C();
    MEMORY[0x23839B7E0](v5);

    MEMORY[0x23839B7E0](32, 0xE100000000000000);
    MEMORY[0x23839B7E0](0x273D525341, 0xE500000000000000);
  }

  if (v3)
  {
    v6 = v3;
    v7 = [v6 description];
    v8 = sub_23328D98C();
    v10 = v9;

    MEMORY[0x23839B7E0](v8, v10);
  }

  return 0;
}

void static TTSVBAudioTools.analyzeRecording(atURL:detectUserSpeech:expectedText:detectMetrics:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v13 = MEMORY[0x23839C610]();
  if ((a2 & 1) == 0)
  {
    v16 = 0;
LABEL_5:
    v17 = 0;
    goto LABEL_6;
  }

  v14 = sub_2331D1F44(a1);
  if (v6)
  {
    goto LABEL_8;
  }

  v16 = v15;
  if (!v15)
  {
    goto LABEL_5;
  }

  v17 = v14;
  if (a4)
  {

    String.ttsvb_normalizedForSpeechComparison.getter(a3, a4);
    to = String.ttsvb_normalizedForSpeechComparison.getter(v17, v16);
    v21 = v20;

    v22._countAndFlagsBits = to;
    v22._object = v21;
    v18 = String.ttsvb_editDistance(to:)(v22);

    if ((a5 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

LABEL_6:
  v18 = -1;
  if ((a5 & 1) == 0)
  {
LABEL_12:
    v23 = 0;
LABEL_14:
    *a6 = v17;
    a6[1] = v16;
    a6[2] = v18;
    a6[3] = v23;
    goto LABEL_15;
  }

LABEL_7:
  v19 = sub_2331D17D0(a1);
  if (!v6)
  {
    v24 = v19;
    v29 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2320, &qword_233297640);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_233297620;
    *(v25 + 32) = v24;
    sub_233144EEC(0, &qword_27DDE2C80, 0x277CB83C8);
    toa = v24;
    v26 = sub_23328DBDC();

    v23 = [v29 assessAudioForBuffers_];

    goto LABEL_14;
  }

LABEL_8:

LABEL_15:
  objc_autoreleasePoolPop(v13);
}

void sub_2331D00C4(void *a1, void *a2, void (*a3)(char *), uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2C90, &qword_23329A8B8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v46 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2C98, &unk_23329A8C0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - v18;
  if (!a1)
  {
    if (!a2)
    {
LABEL_33:
      __break(1u);
      return;
    }

    *&v53 = a2;
    v26 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1B40, &unk_23329A7A0);
    sub_233144EEC(0, &qword_280D3A208, 0x277CCA9B8);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_25:
      sub_2331524CC(&v53);
      v51 = v53;
      v52 = v54;
      static TTSVBError.map(_:_:)(a2, &v51, v11);
      sub_2331220AC(v51, *(&v51 + 1), v52);
      swift_storeEnumTagMultiPayload();
      a3(v11);
      v37 = v11;
LABEL_30:
      sub_233121E04(v37, &qword_27DDE2C90, &qword_23329A8B8);
      return;
    }

    v27 = v51;
    v28 = [v51 domain];
    v29 = sub_23328D98C();
    v31 = v30;

    v32 = *MEMORY[0x277CEF580];
    if (v29 == sub_23328D98C() && v31 == v33)
    {
    }

    else
    {
      v35 = sub_23328E54C();

      if ((v35 & 1) == 0)
      {
LABEL_24:

        goto LABEL_25;
      }
    }

    v36 = [v27 code];
    if (v36 == 22 || v36 == 1110 || v36 == 203)
    {
      *v14 = 0;
      v14[1] = 0;
      swift_storeEnumTagMultiPayload();
      a3(v14);

LABEL_29:
      v37 = v14;
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  v48 = a1;
  if ([v48 isFinal])
  {
    v20 = a3;
    v21 = [v48 rawTranscriptions];
    sub_233144EEC(0, &qword_27DDE2CA0, 0x277CDCF10);
    v22 = sub_23328DBFC();

    if (v22 >> 62)
    {
      v38 = sub_23328E19C();
      v46 = a4;
      v47 = v20;
      if (v38)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v46 = a4;
      v47 = v20;
      if (v23)
      {
LABEL_5:
        if ((v22 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x23839BFC0](0, v22);
          goto LABEL_8;
        }

        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v24 = *(v22 + 32);
LABEL_8:
          v25 = v24;

LABEL_28:
          v39 = [v25 formattedString];
          v40 = sub_23328D98C();
          v42 = v41;

          *&v51 = v40;
          *(&v51 + 1) = v42;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2CA8, &unk_23329A8D0);
          sub_23328D31C();
          sub_2331D28F4();
          sub_2331D2948();
          sub_2331D299C();
          sub_23328DDBC();
          (*(v16 + 8))(v19, v15);

          *&v51 = 3158622;
          *(&v51 + 1) = 0xE300000000000000;
          v49 = 32;
          v50 = 0xE100000000000000;
          sub_23311A294();
          v43 = sub_23328E06C();
          v45 = v44;

          *v14 = v43;
          v14[1] = v45;
          swift_storeEnumTagMultiPayload();
          v47(v14);

          goto LABEL_29;
        }

        __break(1u);
        goto LABEL_33;
      }
    }

    v25 = [v48 bestTranscription];
    goto LABEL_28;
  }

  v34 = v48;
}

void sub_2331D06F4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_2331D0780(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B38, &unk_2332909A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2C90, &qword_23329A8B8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16 - v10);
  sub_233121D34(a1, &v16 - v10, &qword_27DDE2C90, &qword_23329A8B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2331D1E80(v11, v7);
    v12 = type metadata accessor for TTSVBError(0);
    (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
    v13 = OBJC_IVAR____TtCZFV31TextToSpeechVoiceBankingSupport15TTSVBAudioToolsP33_8AA1E519C2B447388B86016717E8907330recognizeTextFromAudioFileSyncFzT3urlV10Foundation3URL_GSqSS_L_3Box_error;
    swift_beginAccess();
    sub_2331D2A00(v7, a2 + v13);
    swift_endAccess();
  }

  else
  {
    v14 = *(a2 + 24);
    *(a2 + 16) = *v11;
  }

  return sub_23328DF4C();
}

float static TTSVBAudioTools.calculateAverageDecibelValue(buffer:)(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [a1 frameLength];
  v3 = [a1 floatChannelData];
  v4 = [a1 format];
  v5 = [v4 channelCount];

  v6 = 0.0;
  if (v3 && v5)
  {
    v7 = 8 * v5;
    do
    {
      v8 = *v3++;
      __C = 0.0;
      vDSP_meamgv(v8, 1, &__C, v2);
      v6 = v6 + (log10f(__C) * 20.0);
      v7 -= 8;
    }

    while (v7);
  }

  v9 = [a1 format];
  v10 = [v9 channelCount];

  v11 = *MEMORY[0x277D85DE8];
  return v6 / v10;
}

float static TTSVBAudioTools.calculatePeakDecibelLevel(buffer:)(void *a1)
{
  v2 = [a1 floatChannelData];
  if (!v2)
  {
    return 0.0;
  }

  v3 = v2;
  v4 = [a1 format];
  v5 = [v4 channelCount];

  v6 = [a1 frameLength];
  if (v5)
  {
    v7 = 0;
    v8 = -3.4028e38;
    do
    {
      if (v6)
      {
        v9 = v3[v7];
        v10 = v6;
        do
        {
          v11 = *v9++;
          v12 = fabsf(v11);
          if (v8 < v12)
          {
            v8 = v12;
          }

          --v10;
        }

        while (v10);
      }

      ++v7;
    }

    while (v7 != v5);
  }

  else
  {
    v8 = -3.4028e38;
  }

  return log10f(v8) * 20.0;
}

uint64_t static TTSVBAudioTools.hasClippedAudio(_:)(void *a1)
{
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 floatChannelData];
  if (!v8)
  {
    v19 = sub_233225380();
    (*(v3 + 16))(v7, v19, v2);
    v20 = sub_23328D6CC();
    v21 = sub_23328DE3C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_233109000, v20, v21, "Will not calculate clipped audio. Only float format is supported", v22, 2u);
      MEMORY[0x23839CFD0](v22, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    return 0;
  }

  v9 = v8;
  v10 = [a1 format];
  v11 = [v10 channelCount];

  v12 = [a1 frameLength];
  if (!v11)
  {
    return 0;
  }

  v13 = 0;
  v14 = v12;
  do
  {
    v15 = v9[v13++];
    for (i = v14; i; --i)
    {
      v17 = *v15++;
      if (fabsf(v17) >= 1.0)
      {
        return 1;
      }
    }

    result = 0;
  }

  while (v13 != v11);
  return result;
}

uint64_t static TTSVBAudioTools.calculateNumberOfClippedSamples(_:)(void *a1)
{
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 floatChannelData];
  if (!v8)
  {
    v21 = sub_233225380();
    (*(v3 + 16))(v7, v21, v2);
    v22 = sub_23328D6CC();
    v23 = sub_23328DE3C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_233109000, v22, v23, "Will not calculate clipped audio. Only float format is supported", v24, 2u);
      MEMORY[0x23839CFD0](v24, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    return 0;
  }

  v9 = v8;
  v10 = [a1 format];
  v11 = [v10 channelCount];

  v12 = [a1 frameLength];
  if (!v11)
  {
    return 0;
  }

  v13 = v12;
  result = 0;
  v15 = 0;
  v16 = 0;
  for (i = 0; i != v11; ++i)
  {
    if (v13)
    {
      v18 = v9[i];
      v19 = v16 + v13;
      v20 = v13;
      while (1)
      {
        if (fabsf(*v18) >= 1.0)
        {
          result = v15 + 1;
          if (v15 == -1)
          {
            __break(1u);
            return result;
          }

          ++v15;
        }

        ++v18;
        if (!--v20)
        {
          v16 = v19;
          break;
        }
      }
    }
  }

  return result;
}

char *static TTSVBAudioTools.normalizeVolume(_:maximumBoostFactor:)(unint64_t a1, unint64_t a2)
{
  v4 = sub_23328D6EC();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v9);
  v12 = &v62 - v11;
  v65 = a1;
  if (a1 >> 62)
  {
LABEL_60:
    v13 = sub_23328E19C();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 1.0;
  v15 = &unk_2789C4000;
  if (!v13)
  {
LABEL_19:
    if ((a2 & 0x100000000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v64 = a2;
  v66 = v12;
  v16 = 0;
  v12 = (v65 & 0xC000000000000001);
  v17 = v65 & 0xFFFFFFFFFFFFFF8;
  a2 = v65 + 32;
  v18 = 0.0;
  do
  {
    if (v12)
    {
      v19 = MEMORY[0x23839BFC0](v16, v65, v10);
    }

    else
    {
      if (v16 >= *(v17 + 16))
      {
        goto LABEL_58;
      }

      v19 = *(a2 + 8 * v16);
    }

    v20 = v19;
    v21 = __OFADD__(v16++, 1);
    if (v21)
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v22 = [v19 v15[495]];
    if (v22)
    {
      v23 = v22;
      v24 = [v20 frameLength];
      if (v24)
      {
        v25 = v24;
        v26 = *v23;
        do
        {
          v27 = *v26++;
          v28 = fabsf(v27);
          if (v18 < v28)
          {
            v18 = v28;
          }

          --v25;
        }

        while (v25);
      }
    }

    v15 = &unk_2789C4000;
  }

  while (v16 != v13);
  v12 = v66;
  a2 = v64;
  if (v18 == 0.0)
  {
    goto LABEL_19;
  }

  v14 = 1.0 / v18;
  if ((v64 & 0x100000000) == 0)
  {
LABEL_20:
    if (v14 > *&a2)
    {
      v29 = sub_233225380();
      (*(v5 + 16))(v12, v29, v4);
      v30 = sub_23328D6CC();
      v31 = sub_23328DE1C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 134218240;
        *(v32 + 4) = v14;
        *(v32 + 12) = 2048;
        *(v32 + 14) = *&a2;
        _os_log_impl(&dword_233109000, v30, v31, "Will clamp computed normalization boost factor %f to maximum of %f", v32, 0x16u);
        MEMORY[0x23839CFD0](v32, -1, -1);
      }

      (*(v5 + 8))(v12, v4);
      v14 = *&a2;
    }
  }

LABEL_25:
  v33 = sub_233225380();
  (*(v5 + 16))(v8, v33, v4);
  v34 = sub_23328D6CC();
  v35 = sub_23328DE1C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134217984;
    *(v36 + 4) = v14;
    _os_log_impl(&dword_233109000, v34, v35, "Will normalize buffers with a boost factor of %f", v36, 0xCu);
    MEMORY[0x23839CFD0](v36, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v12 = MEMORY[0x277D84F90];
  v67 = MEMORY[0x277D84F90];
  if (v13)
  {
    v66 = v13;
    a2 = 0;
    v5 = v65;
    v37 = v65 & 0xC000000000000001;
    v63 = v65 + 32;
    v64 = v65 & 0xFFFFFFFFFFFFFF8;
    v4 = &unk_2789C4000;
    v38 = &unk_2789C4000;
    do
    {
      if (v37)
      {
        v39 = MEMORY[0x23839BFC0](a2, v5);
        v21 = __OFADD__(a2++, 1);
        if (v21)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (a2 >= *(v64 + 16))
        {
          goto LABEL_59;
        }

        v39 = *(v63 + 8 * a2);
        v21 = __OFADD__(a2++, 1);
        if (v21)
        {
          goto LABEL_57;
        }
      }

      v8 = v39;
      v40 = [v8 format];
      [v40 v38[487]];
      v42 = v41;

      v43 = [v8 format];
      v44 = [v43 channelCount];

      v45 = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithCommonFormat:1 sampleRate:v44 channels:0 interleaved:v42];
      if (v45)
      {
        v46 = v45;
        v47 = [v8 frameCapacity];
        v48 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v46 frameCapacity:v47];
        if (v48)
        {
          v49 = v48;
          [v48 setFrameLength_];
          v50 = [v8 v15[495]];
          if (v50)
          {
            v51 = v50;
            v52 = [v49 v15[495]];
            if (v52)
            {
              v53 = v52;
              v54 = [v8 format];

              v55 = [v54 channelCount];
              if (v55)
              {
                for (i = 0; i != v55; ++i)
                {
                  v57 = [v8 frameLength];
                  if (v57)
                  {
                    v58 = 0;
                    do
                    {
                      *(v53[i] + v58) = v14 * *(v51[i] + v58);
                      v58 += 4;
                    }

                    while (4 * v57 != v58);
                  }
                }
              }

              v59 = v49;
              MEMORY[0x23839B920]();
              v5 = v65;
              if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v60 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_23328DC1C();
              }

              sub_23328DC4C();

              v12 = v67;
            }

            else
            {
            }

            v15 = &unk_2789C4000;
            v38 = &unk_2789C4000;
          }

          else
          {

            v38 = &unk_2789C4000;
          }

          continue;
        }
      }
    }

    while (a2 != v66);
  }

  return v12;
}

uint64_t sub_2331D1608()
{
  v1 = v0[3];

  sub_233121E04(v0 + OBJC_IVAR____TtCZFV31TextToSpeechVoiceBankingSupport15TTSVBAudioToolsP33_8AA1E519C2B447388B86016717E8907330recognizeTextFromAudioFileSyncFzT3urlV10Foundation3URL_GSqSS_L_3Box_error, &qword_27DDE1B38, &unk_2332909A0);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id sub_2331D1684(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_23328CBCC();
  v14[0] = 0;
  v5 = [v2 initForReading:v4 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_23328CC9C();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_23328CA7C();

    swift_willThrow();
    v11 = sub_23328CC9C();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

unint64_t sub_2331D17D0(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBError.Reason(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v36 = a1;
  v12 = sub_23328CC9C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v15 = v13 + 16;
  v14(v11, a1, v12);
  swift_storeEnumTagMultiPayload();
  sub_233144EEC(0, &qword_27DDE2C70, 0x277CB8398);
  sub_2331524CC(&v39);
  v37 = v39;
  v38 = v40;
  v16 = v34;
  static TTSVBError.perform<A>(_:problem:reason:)(sub_2331D2A70, v35, &v37, v11);
  if (v16)
  {
    sub_2331220AC(v37, *(&v37 + 1), v38);
    sub_2331D1EE4(v11, type metadata accessor for TTSVBError.Reason);
    return v2;
  }

  v33 = 0;
  v34 = v8;
  v28 = v12;
  v29 = a1;
  v30 = v15;
  v31 = v14;
  v32 = v5;
  sub_2331220AC(v37, *(&v37 + 1), v38);
  sub_2331D1EE4(v11, type metadata accessor for TTSVBError.Reason);
  v17 = v41;
  v18 = [v41 processingFormat];
  result = [v17 length];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    v20 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v18 frameCapacity:result];

    v41 = v20;
    v39 = 0uLL;
    v40 = 3;
    v21 = v34;
    swift_storeEnumTagMultiPayload();
    v22 = sub_233144EEC(0, &qword_27DDE2C80, 0x277CB83C8);
    v23 = v33;
    static TTSVBError.unwrap<A>(_:_:_:)(&v41, &v39, v21, v22, &v37);
    if (v23)
    {

      sub_2331D1EE4(v21, type metadata accessor for TTSVBError.Reason);
    }

    else
    {
      sub_2331D1EE4(v21, type metadata accessor for TTSVBError.Reason);

      v2 = v37;
      v25 = MEMORY[0x28223BE20](v24);
      *(&v27 - 2) = v17;
      *(&v27 - 1) = v2;
      v26 = v32;
      v31(v32, v29, v28, v25);
      swift_storeEnumTagMultiPayload();
      sub_2331524CC(&v39);
      v37 = v39;
      v38 = v40;
      static TTSVBError.perform<A>(_:problem:reason:)(sub_2331D2A8C, (&v27 - 4), &v37, v26);

      sub_2331220AC(v37, *(&v37 + 1), v38);
      sub_2331D1EE4(v26, type metadata accessor for TTSVBError.Reason);
    }

    return v2;
  }

  __break(1u);
  return result;
}

id sub_2331D1C10@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = [*(v1 + 32) commonFormat];
  v6 = objc_allocWithZone(MEMORY[0x277CB8398]);
  v7 = sub_23328CBCC();
  v8 = sub_23328D87C();
  v13 = 0;
  v9 = [v6 initForWriting:v7 settings:v8 commonFormat:v5 interleaved:0 error:&v13];

  v10 = v13;
  if (v9)
  {
    *a1 = v9;
    return v10;
  }

  else
  {
    v12 = v13;
    sub_23328CA7C();

    return swift_willThrow();
  }
}

void *sub_2331D1D18(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  *a2 = 0;
  v4 = v3;
  return v3;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_2331D1D74()
{
  result = **(v0 + 16);
  if (result)
  {
    v2 = *(v0 + 24);
    v4 = 0;
    if ([result writeFromBuffer:v2 error:&v4])
    {
      return v4;
    }

    else
    {
      v3 = v4;
      sub_23328CA7C();

      return swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2331D1DFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B38, &unk_2332909A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2331D1E6C(id a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }
}

uint64_t sub_2331D1E80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSVBError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2331D1EE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2331D1F44(uint64_t a1)
{
  v75 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B38, &unk_2332909A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v68 = &v57 - v3;
  v4 = type metadata accessor for TTSVBError(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v58 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for TTSVBError.Reason(0);
  v8 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2C90, &qword_23329A8B8);
  v11 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v13 = &v57 - v12;
  v14 = type metadata accessor for TTSVBAudioTools.Box();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  v65 = OBJC_IVAR____TtCZFV31TextToSpeechVoiceBankingSupport15TTSVBAudioToolsP33_8AA1E519C2B447388B86016717E8907330recognizeTextFromAudioFileSyncFzT3urlV10Foundation3URL_GSqSS_L_3Box_error;
  v66 = v5;
  v18 = *(v5 + 56);
  v67 = v4;
  v18(v17 + OBJC_IVAR____TtCZFV31TextToSpeechVoiceBankingSupport15TTSVBAudioToolsP33_8AA1E519C2B447388B86016717E8907330recognizeTextFromAudioFileSyncFzT3urlV10Foundation3URL_GSqSS_L_3Box_error, 1, 1, v4);
  v19 = dispatch_semaphore_create(0);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = v19;
  v63 = v20;
  v21 = sub_23328CF0C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);

  v64 = v19;
  sub_23328CE9C();
  v26 = objc_allocWithZone(MEMORY[0x277CDCF00]);
  v27 = sub_23328CEDC();
  v28 = [v26 initWithLocale_];

  result = (*(v22 + 8))(v25, v21);
  v62 = v28;
  if (v28)
  {
    v30 = sub_23328CC9C();
    v31 = *(v30 - 8);
    v32 = *(v31 + 64);
    v33 = MEMORY[0x28223BE20](v30);
    v35 = &v57 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = *(v31 + 16);
    v36(v35, v75, v30, v33);
    v37 = objc_allocWithZone(MEMORY[0x277CB8398]);
    v38 = v61;
    v39 = sub_2331D1684(v35);
    if (v38)
    {
      aBlock = 0xD000000000000015;
      v70 = 0x80000002332A9A80;
      LOBYTE(v71) = 0;
      (v36)(v10, v75, v30);
      swift_storeEnumTagMultiPayload();
      TTSVBError.init(_:_:_:)(&aBlock, v10, 0, v13);
      swift_storeEnumTagMultiPayload();
      v40 = v64;
      sub_2331D0780(v13, v17);

      sub_233121E04(v13, &qword_27DDE2C90, &qword_23329A8B8);
    }

    else
    {

      v41 = objc_allocWithZone(MEMORY[0x277CDCF08]);
      v42 = sub_23328CBCC();
      v43 = [v41 initWithURL_];

      v44 = v43;
      [v44 setShouldReportPartialResults_];
      [v44 setRequiresOnDeviceRecognition_];

      v45 = swift_allocObject();
      v46 = v63;
      *(v45 + 16) = sub_2331D28E4;
      *(v45 + 24) = v46;
      v73 = sub_2331D28EC;
      v74 = v45;
      aBlock = MEMORY[0x277D85DD0];
      v70 = 1107296256;
      v71 = sub_2331D06F4;
      v72 = &block_descriptor_28_1;
      v47 = _Block_copy(&aBlock);

      v48 = v62;
      v49 = [v62 recognitionTaskWithRequest:v44 resultHandler:v47];

      _Block_release(v47);

      v40 = v64;
    }

    sub_23328DF3C();
    v50 = v65;
    swift_beginAccess();
    v51 = v17 + v50;
    v52 = v68;
    sub_233121D34(v51, v68, &qword_27DDE1B38, &unk_2332909A0);
    if ((*(v66 + 48))(v52, 1, v67) == 1)
    {

      sub_233121E04(v52, &qword_27DDE1B38, &unk_2332909A0);
      v53 = *(v17 + 16);
      v54 = *(v17 + 24);
    }

    else
    {
      v55 = v52;
      v53 = v58;
      sub_2331D1E80(v55, v58);
      sub_23311A3F8();
      swift_allocError();
      sub_233121720(v53, v56);
      swift_willThrow();

      sub_2331D1EE4(v53, type metadata accessor for TTSVBError);
    }

    return v53;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2331D2668(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2331D26C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for TTSVBAudioTools.Box()
{
  result = qword_27DDF6B08;
  if (!qword_27DDF6B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2331D277C()
{
  sub_2331D2818();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2331D2818()
{
  if (!qword_280D3A0A8)
  {
    type metadata accessor for TTSVBError(255);
    v0 = sub_23328E00C();
    if (!v1)
    {
      atomic_store(v0, &qword_280D3A0A8);
    }
  }
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2331D2884(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2331D28A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_2331D28F4()
{
  result = qword_27DDE2CB0;
  if (!qword_27DDE2CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2CB0);
  }

  return result;
}

unint64_t sub_2331D2948()
{
  result = qword_27DDE2CB8;
  if (!qword_27DDE2CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2CB8);
  }

  return result;
}

unint64_t sub_2331D299C()
{
  result = qword_27DDE2CC0;
  if (!qword_27DDE2CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE2C98, &unk_23329A8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2CC0);
  }

  return result;
}

uint64_t sub_2331D2A00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B38, &unk_2332909A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_2331D2A8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v5 = 0;
  if ([v1 readIntoBuffer:v2 error:&v5])
  {
    return v5;
  }

  v4 = v5;
  sub_23328CA7C();

  return swift_willThrow();
}

uint64_t TTSVBPersonalVoiceSystemRepresentation.models.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTSVBPersonalVoiceSystemRepresentation() + 20));
}

uint64_t type metadata accessor for TTSVBPersonalVoiceSystemRepresentation()
{
  result = qword_280D3AE10;
  if (!qword_280D3AE10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2331D2BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for TTSVBPersonalVoiceSystemRepresentation() + 20);
  result = sub_2331D3A94(a1, a3, type metadata accessor for TTSVBVoice);
  *(a3 + v6) = a2;
  return result;
}

uint64_t TTSVBPersonalVoiceSystemRepresentation.voiceName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static TTSVBPersonalVoiceSystemRepresentation.< infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_23328E54C();
  }
}

uint64_t _s31TextToSpeechVoiceBankingSupport10TTSVBVoiceV2id10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTSVBVoice() + 20);
  v4 = sub_23328CE8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTSVBPersonalVoiceSystemRepresentation.convertToData()()
{
  v0 = sub_23328C8BC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_23328C8AC();
  type metadata accessor for TTSVBPersonalVoiceSystemRepresentation();
  sub_2331D3F18(&qword_280D3A1B8, type metadata accessor for TTSVBPersonalVoiceSystemRepresentation);
  v3 = sub_23328C89C();

  return v3;
}

uint64_t TTSVBPersonalVoiceSystemRepresentation.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TTSVBPersonalVoiceSystemRepresentation();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23328C85C();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_23328C84C();
  sub_2331D3F18(&qword_280D3A1B0, type metadata accessor for TTSVBPersonalVoiceSystemRepresentation);
  sub_23328C83C();

  v13 = *(v6 + 20);
  sub_233121870(a1, a2);
  result = sub_2331D3A94(v9, a3, type metadata accessor for TTSVBVoice);
  *(a3 + v13) = *&v9[*(v6 + 20)];
  return result;
}

uint64_t static TTSVBPersonalVoiceSystemRepresentation.== infix(_:_:)(void *a1, void *a2)
{
  if ((static TTSVBVoice.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for TTSVBPersonalVoiceSystemRepresentation() + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);

  return sub_2331D2FDC(v5, v6);
}

uint64_t sub_2331D2FDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSVBInstalledVoiceModel();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
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
        sub_2331D3BEC(v14, v11, type metadata accessor for TTSVBInstalledVoiceModel);
        sub_2331D3BEC(v15, v7, type metadata accessor for TTSVBInstalledVoiceModel);
        sub_2331D3F18(&qword_27DDE2B70, type metadata accessor for TTSVBInstalledVoiceModel);
        v17 = sub_23328D90C();
        sub_2331D3EB8(v7, type metadata accessor for TTSVBInstalledVoiceModel);
        sub_2331D3EB8(v11, type metadata accessor for TTSVBInstalledVoiceModel);
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

uint64_t sub_2331D31E4()
{
  if (*v0)
  {
    result = 0x736C65646F6DLL;
  }

  else
  {
    result = 0x6563696F76;
  }

  *v0;
  return result;
}

uint64_t sub_2331D3218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6563696F76 && a2 == 0xE500000000000000;
  if (v6 || (sub_23328E54C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736C65646F6DLL && a2 == 0xE600000000000000)
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

uint64_t sub_2331D32EC(uint64_t a1)
{
  v2 = sub_2331D3AFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331D3328(uint64_t a1)
{
  v2 = sub_2331D3AFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TTSVBPersonalVoiceSystemRepresentation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2CD0, &qword_23329A910);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2331D3AFC();
  sub_23328E69C();
  v14 = 0;
  type metadata accessor for TTSVBVoice();
  sub_2331D3F18(&qword_27DDE1998, type metadata accessor for TTSVBVoice);
  sub_23328E4DC();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for TTSVBPersonalVoiceSystemRepresentation() + 20));
    v12[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2CD8, &qword_23329A918);
    sub_2331D3B50(&qword_27DDE2CE0, &qword_280D3A0C0);
    sub_23328E4DC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t TTSVBPersonalVoiceSystemRepresentation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for TTSVBVoice();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v25 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2CE8, &qword_23329A920);
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = *(v23 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - v9;
  v11 = type metadata accessor for TTSVBPersonalVoiceSystemRepresentation();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2331D3AFC();
  sub_23328E68C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v16 = v14;
  v17 = v23;
  v28 = 0;
  sub_2331D3F18(&qword_27DDE1990, type metadata accessor for TTSVBVoice);
  v18 = v24;
  sub_23328E41C();
  sub_2331D3A94(v25, v16, type metadata accessor for TTSVBVoice);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2CD8, &qword_23329A918);
  v27 = 1;
  sub_2331D3B50(&qword_27DDE2CF0, &qword_280D3A0B8);
  sub_23328E41C();
  v19 = *(v11 + 20);
  (*(v17 + 8))(v10, v18);
  *(v16 + v19) = v26;
  sub_2331D3BEC(v16, v22, type metadata accessor for TTSVBPersonalVoiceSystemRepresentation);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_2331D3EB8(v16, type metadata accessor for TTSVBPersonalVoiceSystemRepresentation);
}

uint64_t sub_2331D3904(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_23328E54C();
  }
}

uint64_t sub_2331D3934(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 == *a1 && v4 == a1[1])
  {
    return 1;
  }

  else
  {
    return (sub_23328E54C() ^ 1) & 1;
  }
}

uint64_t sub_2331D3980(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return (sub_23328E54C() ^ 1) & 1;
  }
}

uint64_t sub_2331D39D4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 == *a1 && v4 == a1[1])
  {
    return 0;
  }

  else
  {
    return sub_23328E54C();
  }
}

uint64_t sub_2331D3A2C(void *a1, void *a2, uint64_t a3)
{
  if ((static TTSVBVoice.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_2331D2FDC(v7, v8);
}

uint64_t sub_2331D3A94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2331D3AFC()
{
  result = qword_27DDF6B20[0];
  if (!qword_27DDF6B20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF6B20);
  }

  return result;
}

uint64_t sub_2331D3B50(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE2CD8, &qword_23329A918);
    sub_2331D3F18(a2, type metadata accessor for TTSVBInstalledVoiceModel);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2331D3BEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2331D3CC4()
{
  type metadata accessor for TTSVBVoice();
  if (v0 <= 0x3F)
  {
    sub_2331D3D48();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2331D3D48()
{
  if (!qword_280D3A120)
  {
    type metadata accessor for TTSVBInstalledVoiceModel();
    v0 = sub_23328DC5C();
    if (!v1)
    {
      atomic_store(v0, &qword_280D3A120);
    }
  }
}

unint64_t sub_2331D3DB4()
{
  result = qword_27DDF6DB0[0];
  if (!qword_27DDF6DB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF6DB0);
  }

  return result;
}

unint64_t sub_2331D3E0C()
{
  result = qword_27DDF6EC0;
  if (!qword_27DDF6EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDF6EC0);
  }

  return result;
}

unint64_t sub_2331D3E64()
{
  result = qword_27DDF6EC8[0];
  if (!qword_27DDF6EC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF6EC8);
  }

  return result;
}

uint64_t sub_2331D3EB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2331D3F18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2331D3F64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08A40);
  __swift_project_value_buffer(v4, qword_27DE08A40);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

unint64_t sub_2331D40C0()
{
  result = qword_27DDE2D10;
  if (!qword_27DDE2D10)
  {
    sub_23328CE8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2D10);
  }

  return result;
}

uint64_t _s22SupplementModelCommandVMa()
{
  result = qword_27DDF72E0;
  if (!qword_27DDF72E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2331D4178()
{
  sub_23328D20C();
  v1 = v0[13];
  v2 = sub_233237A1C();
  v3 = *v2;
  v0[14] = *v2;
  v4 = sub_23328CE8C();
  v0[15] = v4;
  v5 = *(v4 - 8);
  v0[16] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v0[17] = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
  sub_23328D5CC();
  v8 = _s22SupplementModelCommandVMa();
  v9 = *(v8 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D18, &unk_23329AB88);
  sub_23328D5CC();
  v10 = v0[5];
  v0[6] = v0[4];
  v0[7] = v10;
  v11 = v1 + *(v8 + 24);
  sub_23328D5CC();
  v12 = v0[9];
  v0[10] = v0[8];
  v0[11] = v12;
  v16 = (*v3 + 432);
  v17 = (*v16 + **v16);
  v13 = (*v16)[1];
  v14 = swift_task_alloc();
  v0[18] = v14;
  *v14 = v0;
  v14[1] = sub_2331D44AC;

  return (v17)(v7, v0 + 6, v0 + 10);
}

uint64_t sub_2331D44AC()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v18 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v5 = v2[16];
    v4 = v2[17];
    v6 = v2[14];
    v7 = v2[15];

    v8 = v2[11];

    v9 = v2[7];

    (*(v5 + 8))(v4, v7);
    v10 = sub_2331D46B8;
  }

  else
  {
    v12 = v2[16];
    v11 = v2[17];
    v13 = v2[14];
    v14 = v2[15];

    v15 = v2[11];

    v16 = v2[7];

    (*(v12 + 8))(v11, v14);

    v10 = sub_2331D4638;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2331D4638()
{
  sub_23328D30C();
  sub_23328D27C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2331D46B8()
{
  v1 = v0[17];

  v2 = v0[19];
  sub_23328D30C();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x23839B7E0](0x203A726F727245, 0xE700000000000000);
  v0[12] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1B40, &unk_23329A7A0);
  sub_23328E30C();
  v3 = v0[2];
  v4 = v0[3];
  sub_23328D25C();

  v5 = v0[1];

  return v5();
}

uint64_t sub_2331D47C0()
{
  v0 = static TTSVBVoiceModelVersion.allCases.getter();
  v1 = _s22SupplementModelCommandVMa();
  v2 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D18, &unk_23329AB88);
  sub_23328D5CC();
  v17 = v19;
  v18 = v20;
  v14 = &v17;
  v3 = sub_2331ACE00(sub_2331BA618, v13, v0);

  if (v3)
  {
    v4 = static TTSVBVoiceModelVersion.allCases.getter();
    v5 = *(v1 + 24);
    v6 = sub_23328D5CC();
    v17 = v19;
    v18 = v20;
    MEMORY[0x28223BE20](v6);
    v12[2] = &v17;
    v7 = sub_2331ACE00(sub_2331BE538, v12, v4);

    if (v7)
    {
      return result;
    }

    v19 = 0;
    v20 = 0xE000000000000000;
    sub_23328E24C();

    v19 = 0xD000000000000018;
    v20 = 0x80000002332A9BE0;
  }

  else
  {
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_23328E24C();

    v19 = 0xD000000000000018;
    v20 = 0x80000002332A9BC0;
  }

  sub_23328D5CC();
  v15 = v17;
  v16 = v18;
  sub_233144FD0();
  v9 = sub_23328E51C();
  v11 = v10;

  MEMORY[0x23839B7E0](v9, v11);

  sub_23328D4AC();
  sub_2331D64A4(&qword_27DDE2D30, MEMORY[0x277CEEA40]);
  swift_allocError();
  sub_23328D4BC();
  return swift_willThrow();
}

uint64_t sub_2331D4A70()
{
  v1 = 0x656372756F73;
  if (*v0 != 1)
  {
    v1 = 0x746567726174;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_2331D4AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2331D6758(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2331D4AE0(uint64_t a1)
{
  v2 = sub_2331D6228();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331D4B1C(uint64_t a1)
{
  v2 = sub_2331D6228();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331D4B58@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23328D53C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23328D4DC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v59 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v63 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v62 = v59 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = v59 - v20;
  sub_23328D3BC();
  v22 = sub_23328D3CC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v70 = v23 + 56;
  v71 = v24;
  v24(v21, 0, 1, v22);
  v25 = sub_23328D42C();
  v26 = *(v25 - 8);
  v68 = *(v26 + 56);
  v69 = v25;
  v67 = v26 + 56;
  v68(v13, 1, 1);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  v72 = v13;
  sub_23328D5FC();
  v74 = 0;
  v75 = 0xE000000000000000;
  sub_23328E24C();

  v74 = 0xD000000000000028;
  v75 = 0x80000002332A9B60;
  v27 = static TTSVBVoiceModelVersion.allCases.getter();
  v28 = *(v27 + 16);
  v65 = v5;
  v66 = a1;
  v64 = v9;
  if (v28)
  {
    v73 = MEMORY[0x277D84F90];
    sub_23312676C(0, v28, 0);
    v29 = v73;
    v30 = (v27 + 40);
    do
    {
      v31 = *(v30 - 1);
      v32 = *v30;
      v73 = v29;
      v34 = *(v29 + 16);
      v33 = *(v29 + 24);

      if (v34 >= v33 >> 1)
      {
        sub_23312676C((v33 > 1), v34 + 1, 1);
        v29 = v73;
      }

      *(v29 + 16) = v34 + 1;
      v35 = v29 + 16 * v34;
      *(v35 + 32) = v31;
      *(v35 + 40) = v32;
      v30 += 2;
      --v28;
    }

    while (v28);
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
  }

  v60 = _s22SupplementModelCommandVMa();
  v36 = *(v60 + 20);
  v73 = v29;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A98, &unk_2332985F0);
  v38 = sub_23315246C(&qword_280D39BB0, &unk_27DDE1A98, &unk_2332985F0);
  v61 = v37;
  v59[1] = v38;
  v39 = sub_23328D8FC();
  v41 = v40;

  MEMORY[0x23839B7E0](v39, v41);

  MEMORY[0x23839B7E0](93, 0xE100000000000000);
  v42 = sub_2331D64A4(&qword_27DDE2D20, MEMORY[0x277CEEA28]);
  v43 = v62;
  v59[0] = v42;
  sub_23328E57C();
  v71(v43, 0, 1, v22);
  (v68)(v72, 1, 1, v69);
  sub_23328D4CC();
  sub_23328D52C();
  v62 = sub_2331D61D4();
  sub_23328D5FC();
  v74 = 0;
  v75 = 0xE000000000000000;
  sub_23328E24C();

  v74 = 0xD000000000000025;
  v75 = 0x80000002332A9B90;
  v44 = static TTSVBVoiceModelVersion.allCases.getter();
  v45 = *(v44 + 16);
  if (v45)
  {
    v73 = MEMORY[0x277D84F90];
    sub_23312676C(0, v45, 0);
    v46 = v73;
    v47 = (v44 + 40);
    do
    {
      v48 = *(v47 - 1);
      v49 = *v47;
      v73 = v46;
      v51 = *(v46 + 16);
      v50 = *(v46 + 24);

      if (v51 >= v50 >> 1)
      {
        sub_23312676C((v50 > 1), v51 + 1, 1);
        v46 = v73;
      }

      *(v46 + 16) = v51 + 1;
      v52 = v46 + 16 * v51;
      *(v52 + 32) = v48;
      *(v52 + 40) = v49;
      v47 += 2;
      --v45;
    }

    while (v45);
  }

  else
  {

    v46 = MEMORY[0x277D84F90];
  }

  v53 = *(v60 + 24);
  v73 = v46;
  v54 = sub_23328D8FC();
  v56 = v55;

  MEMORY[0x23839B7E0](v54, v56);

  MEMORY[0x23839B7E0](93, 0xE100000000000000);
  v57 = v63;
  sub_23328E57C();
  v71(v57, 0, 1, v22);
  (v68)(v72, 1, 1, v69);
  sub_23328D4CC();
  sub_23328D52C();
  return sub_23328D5FC();
}

uint64_t sub_2331D5264@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a1;
  v84 = a2;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D18, &unk_23329AB88);
  v87 = *(v89 - 8);
  v2 = *(v87 + 64);
  MEMORY[0x28223BE20](v89);
  v86 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v88 = &v84 - v5;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D38, qword_23329ABA8);
  v90 = *(v91 - 8);
  v6 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v98 = &v84 - v7;
  v8 = sub_23328D53C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23328D4DC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D08, &unk_23329DB60);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v84 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v96 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v95 = &v84 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v84 - v26;
  v103 = _s22SupplementModelCommandVMa();
  v28 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v30 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v31 = sub_23328D3CC();
  v32 = *(v31 - 8);
  v108 = *(v32 + 56);
  v109 = v31;
  v107 = v32 + 56;
  v108(v27, 0, 1);
  v33 = sub_23328D42C();
  v34 = *(v33 - 8);
  v105 = *(v34 + 56);
  v106 = v33;
  v104 = v34 + 56;
  v105(v19, 1, 1);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328CE8C();
  sub_2331D40C0();
  v110 = v19;
  sub_23328D5FC();
  v111 = 0;
  v112 = 0xE000000000000000;
  sub_23328E24C();

  v111 = 0xD000000000000028;
  v112 = 0x80000002332A9B60;
  v35 = static TTSVBVoiceModelVersion.allCases.getter();
  v36 = *(v35 + 16);
  v101 = v11;
  v102 = v30;
  v100 = v15;
  if (v36)
  {
    v113 = MEMORY[0x277D84F90];
    sub_23312676C(0, v36, 0);
    v37 = v113;
    v38 = (v35 + 40);
    do
    {
      v40 = *(v38 - 1);
      v39 = *v38;
      v113 = v37;
      v42 = *(v37 + 16);
      v41 = *(v37 + 24);

      if (v42 >= v41 >> 1)
      {
        sub_23312676C((v41 > 1), v42 + 1, 1);
        v37 = v113;
      }

      *(v37 + 16) = v42 + 1;
      v43 = v37 + 16 * v42;
      *(v43 + 32) = v40;
      *(v43 + 40) = v39;
      v38 += 2;
      --v36;
    }

    while (v36);

    v30 = v102;
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
  }

  v44 = *(v103 + 20);
  v113 = v37;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A98, &unk_2332985F0);
  v93 = sub_23315246C(&qword_280D39BB0, &unk_27DDE1A98, &unk_2332985F0);
  v94 = v45;
  v46 = sub_23328D8FC();
  v48 = v47;

  MEMORY[0x23839B7E0](v46, v48);

  MEMORY[0x23839B7E0](93, 0xE100000000000000);
  v49 = sub_2331D64A4(&qword_27DDE2D20, MEMORY[0x277CEEA28]);
  v50 = v95;
  v51 = v109;
  v92 = v49;
  sub_23328E57C();
  (v108)(v50, 0, 1, v51);
  (v105)(v110, 1, 1, v106);
  sub_23328D4CC();
  sub_23328D52C();
  v52 = sub_2331D61D4();
  v85 = v44;
  v95 = v52;
  sub_23328D5FC();
  v111 = 0;
  v112 = 0xE000000000000000;
  sub_23328E24C();

  v111 = 0xD000000000000025;
  v112 = 0x80000002332A9B90;
  v53 = static TTSVBVoiceModelVersion.allCases.getter();
  v54 = *(v53 + 16);
  if (v54)
  {
    v113 = MEMORY[0x277D84F90];
    sub_23312676C(0, v54, 0);
    v55 = v113;
    v56 = (v53 + 40);
    do
    {
      v57 = *(v56 - 1);
      v58 = *v56;
      v113 = v55;
      v60 = *(v55 + 16);
      v59 = *(v55 + 24);

      if (v60 >= v59 >> 1)
      {
        sub_23312676C((v59 > 1), v60 + 1, 1);
        v55 = v113;
      }

      *(v55 + 16) = v60 + 1;
      v61 = v55 + 16 * v60;
      *(v61 + 32) = v57;
      *(v61 + 40) = v58;
      v56 += 2;
      --v54;
    }

    while (v54);

    v30 = v102;
  }

  else
  {

    v55 = MEMORY[0x277D84F90];
  }

  v62 = *(v103 + 24);
  v113 = v55;
  v63 = sub_23328D8FC();
  v65 = v64;

  MEMORY[0x23839B7E0](v63, v65);

  MEMORY[0x23839B7E0](93, 0xE100000000000000);
  v66 = v96;
  v67 = v109;
  sub_23328E57C();
  (v108)(v66, 0, 1, v67);
  (v105)(v110, 1, 1, v106);
  sub_23328D4CC();
  sub_23328D52C();
  sub_23328D5FC();
  v68 = v99;
  v69 = v99[4];
  __swift_project_boxed_opaque_existential_1(v99, v99[3]);
  sub_2331D6228();
  v70 = v97;
  v71 = v98;
  sub_23328E68C();
  if (!v70)
  {
    v110 = v62;
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2D00, &qword_23329AB80);
    v73 = v71;
    v74 = *(v72 - 8);
    v75 = *(v74 + 64);
    MEMORY[0x28223BE20](v72);
    v77 = &v84 - v76;
    LOBYTE(v111) = 0;
    sub_23315246C(&qword_27DDE2D40, &qword_27DDE2D00, &qword_23329AB80);
    v78 = v91;
    sub_23328E41C();
    v30 = v102;
    (*(v74 + 40))(v102, v77, v72);
    LOBYTE(v111) = 1;
    sub_23315246C(&qword_27DDE2D48, &qword_27DDE2D18, &unk_23329AB88);
    v79 = v88;
    v80 = v78;
    v81 = v89;
    sub_23328E41C();
    v109 = *(v87 + 40);
    v109(v30 + v85, v79, v81);
    LOBYTE(v111) = 2;
    v82 = v86;
    sub_23328E41C();
    (*(v90 + 8))(v73, v80);
    v109(&v110[v30], v82, v81);
    sub_2331D62D8(v30, v84);
  }

  __swift_destroy_boxed_opaque_existential_0(v68);
  return sub_2331D627C(v30);
}

uint64_t sub_2331D5DFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_2331D4158();
}

uint64_t sub_2331D5E88(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_2331D64A4(&qword_27DDE2D50, _s22SupplementModelCommandVMa);
  *v4 = v1;
  v4[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_2331D5F64@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDF6F50 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08A40);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_2331D6058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2331523A8();
  v9 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140EE8](a1, a2, a3, a4, v8, v9);
}

uint64_t sub_2331D60CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2331523A8();
  v5 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140D38](a1, a2, v4, v5);
}

uint64_t sub_2331D6120(uint64_t a1, uint64_t a2)
{
  v4 = sub_2331D6860();
  v5 = sub_2331523A8();
  v6 = MEMORY[0x277CEEA80];

  return MEMORY[0x282140D40](a1, a2, v4, v5, v6);
}

uint64_t sub_2331D6180(uint64_t a1, uint64_t a2)
{
  v4 = sub_2331D6860();

  return MEMORY[0x282140D48](a1, a2, v4);
}

unint64_t sub_2331D61D4()
{
  result = qword_27DDE2D28;
  if (!qword_27DDE2D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2D28);
  }

  return result;
}

unint64_t sub_2331D6228()
{
  result = qword_27DDF6F58[0];
  if (!qword_27DDF6F58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF6F58);
  }

  return result;
}

uint64_t sub_2331D627C(uint64_t a1)
{
  v2 = _s22SupplementModelCommandVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2331D62D8(uint64_t a1, uint64_t a2)
{
  v4 = _s22SupplementModelCommandVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2331D64A4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2331D6514()
{
  sub_2331D6598();
  if (v0 <= 0x3F)
  {
    sub_2331D65F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2331D6598()
{
  if (!qword_27DDE2D78)
  {
    sub_23328CE8C();
    v0 = sub_23328D60C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDE2D78);
    }
  }
}

void sub_2331D65F0()
{
  if (!qword_27DDE2D80)
  {
    v0 = sub_23328D60C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDE2D80);
    }
  }
}

unint64_t sub_2331D6654()
{
  result = qword_27DDF73F0[0];
  if (!qword_27DDF73F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF73F0);
  }

  return result;
}

unint64_t sub_2331D66AC()
{
  result = qword_27DDF7500;
  if (!qword_27DDF7500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDF7500);
  }

  return result;
}

unint64_t sub_2331D6704()
{
  result = qword_27DDF7508[0];
  if (!qword_27DDF7508[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF7508);
  }

  return result;
}

uint64_t sub_2331D6758(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_23328E54C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_23328E54C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746567726174 && a2 == 0xE600000000000000)
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

unint64_t sub_2331D6860()
{
  result = qword_27DDE2D88;
  if (!qword_27DDE2D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2D88);
  }

  return result;
}

uint64_t type metadata accessor for TTSVBVoiceModelStateTransition()
{
  result = qword_280D3A770;
  if (!qword_280D3A770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TTSVBVoiceModelStateTransition.init(previous:current:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2331D69D0(a1, a3);
  v5 = a3 + *(type metadata accessor for TTSVBVoiceModelStateTransition() + 20);

  return sub_2331D69D0(a2, v5);
}

uint64_t sub_2331D69D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSVBVoiceModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TTSVBVoiceModelStateTransition.description.getter()
{
  sub_23328E24C();

  type metadata accessor for TTSVBVoiceModel();
  sub_2331D82E0(&qword_27DDE2D90, type metadata accessor for TTSVBVoiceModel);
  v1 = sub_23328E51C();
  MEMORY[0x23839B7E0](v1);

  MEMORY[0x23839B7E0](0x6E6572727543205DLL, 0xEB000000005B3D74);
  v2 = v0 + *(type metadata accessor for TTSVBVoiceModelStateTransition() + 20);
  v3 = sub_23328E51C();
  MEMORY[0x23839B7E0](v3);

  MEMORY[0x23839B7E0](93, 0xE100000000000000);
  return 0x73756F6976657250;
}

uint64_t TTSVBVoiceModelStateTransition.convertToData()()
{
  v0 = sub_23328C8BC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_23328C8AC();
  type metadata accessor for TTSVBVoiceModelStateTransition();
  sub_2331D82E0(&qword_27DDE2D98, type metadata accessor for TTSVBVoiceModelStateTransition);
  v3 = sub_23328C89C();

  return v3;
}

uint64_t TTSVBVoiceModelStateTransition.init(data:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_23328C85C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_23328C84C();
  type metadata accessor for TTSVBVoiceModelStateTransition();
  sub_2331D82E0(&qword_27DDE2DA0, type metadata accessor for TTSVBVoiceModelStateTransition);
  sub_23328C83C();

  return sub_233121870(a1, a2);
}

uint64_t static TTSVBVoiceModelStateTransition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static TTSVBVoiceModel.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for TTSVBVoiceModelStateTransition() + 20);

  return static TTSVBVoiceModel.== infix(_:_:)(a1 + v4, a2 + v4);
}

uint64_t sub_2331D6F78()
{
  if (*v0)
  {
    result = 0x746E6572727563;
  }

  else
  {
    result = 0x73756F6976657270;
  }

  *v0;
  return result;
}

uint64_t sub_2331D6FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73756F6976657270 && a2 == 0xE800000000000000;
  if (v6 || (sub_23328E54C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E6572727563 && a2 == 0xE700000000000000)
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

uint64_t sub_2331D7090(uint64_t a1)
{
  v2 = sub_2331D817C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331D70CC(uint64_t a1)
{
  v2 = sub_2331D817C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TTSVBVoiceModelStateTransition.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2DA8, &qword_23329AE60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2331D817C();
  sub_23328E69C();
  v11[15] = 0;
  type metadata accessor for TTSVBVoiceModel();
  sub_2331D82E0(&qword_27DDE1980, type metadata accessor for TTSVBVoiceModel);
  sub_23328E4DC();
  if (!v1)
  {
    v9 = *(type metadata accessor for TTSVBVoiceModelStateTransition() + 20);
    v11[14] = 1;
    sub_23328E4DC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t TTSVBVoiceModelStateTransition.hash(into:)()
{
  type metadata accessor for TTSVBVoiceModel();
  sub_2331D82E0(&qword_27DDE2B60, type metadata accessor for TTSVBVoiceModel);
  sub_23328D8CC();
  v1 = v0 + *(type metadata accessor for TTSVBVoiceModelStateTransition() + 20);
  return sub_23328D8CC();
}

uint64_t TTSVBVoiceModelStateTransition.hashValue.getter()
{
  sub_23328E61C();
  type metadata accessor for TTSVBVoiceModel();
  sub_2331D82E0(&qword_27DDE2B60, type metadata accessor for TTSVBVoiceModel);
  sub_23328D8CC();
  v1 = v0 + *(type metadata accessor for TTSVBVoiceModelStateTransition() + 20);
  sub_23328D8CC();
  return sub_23328E66C();
}

uint64_t TTSVBVoiceModelStateTransition.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v27 = type metadata accessor for TTSVBVoiceModel();
  v4 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v26 = &v23 - v8;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2DB0, &qword_23329AE68);
  v25 = *(v28 - 8);
  v9 = *(v25 + 64);
  MEMORY[0x28223BE20](v28);
  v11 = &v23 - v10;
  v12 = type metadata accessor for TTSVBVoiceModelStateTransition();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2331D817C();
  sub_23328E68C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v17 = v25;
  v30 = 0;
  sub_2331D82E0(&qword_27DDE1978, type metadata accessor for TTSVBVoiceModel);
  sub_23328E41C();
  v18 = v26;
  v26 = v15;
  sub_2331D69D0(v18, v15);
  v29 = 1;
  v19 = v6;
  v20 = v28;
  sub_23328E41C();
  (*(v17 + 8))(v11, v20);
  v21 = v26;
  sub_2331D69D0(v19, &v26[*(v12 + 20)]);
  sub_2331D81D0(v21, v24, type metadata accessor for TTSVBVoiceModelStateTransition);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_2331D8238(v21, type metadata accessor for TTSVBVoiceModelStateTransition);
}

uint64_t sub_2331D777C(uint64_t a1)
{
  sub_23328E61C();
  type metadata accessor for TTSVBVoiceModel();
  sub_2331D82E0(&qword_27DDE2B60, type metadata accessor for TTSVBVoiceModel);
  sub_23328D8CC();
  v3 = v1 + *(a1 + 20);
  sub_23328D8CC();
  return sub_23328E66C();
}

uint64_t sub_2331D782C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TTSVBVoiceModel();
  sub_2331D82E0(&qword_27DDE2B60, type metadata accessor for TTSVBVoiceModel);
  sub_23328D8CC();
  v4 = v2 + *(a2 + 20);
  return sub_23328D8CC();
}

uint64_t sub_2331D78CC(uint64_t a1, uint64_t a2)
{
  sub_23328E61C();
  type metadata accessor for TTSVBVoiceModel();
  sub_2331D82E0(&qword_27DDE2B60, type metadata accessor for TTSVBVoiceModel);
  sub_23328D8CC();
  v4 = v2 + *(a2 + 20);
  sub_23328D8CC();
  return sub_23328E66C();
}

uint64_t sub_2331D7978(uint64_t a1)
{
  sub_23328E24C();

  type metadata accessor for TTSVBVoiceModel();
  sub_2331D82E0(&qword_27DDE2D90, type metadata accessor for TTSVBVoiceModel);
  v3 = sub_23328E51C();
  MEMORY[0x23839B7E0](v3);

  MEMORY[0x23839B7E0](0x6E6572727543205DLL, 0xEB000000005B3D74);
  v4 = v1 + *(a1 + 20);
  v5 = sub_23328E51C();
  MEMORY[0x23839B7E0](v5);

  MEMORY[0x23839B7E0](93, 0xE100000000000000);
  return 0x73756F6976657250;
}

uint64_t sub_2331D7AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (((static TTSVBVoiceModel.== infix(_:_:))() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return static TTSVBVoiceModel.== infix(_:_:)(a1 + v6, a2 + v6);
}

uint64_t sub_2331D7CC0(uint64_t a1)
{
  v3 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  return sub_23328DB3C();
}

BOOL sub_2331D7DA4(uint64_t a1)
{
  v2 = *(type metadata accessor for TTSVBVoiceModel() + 52);
  v3 = *(a1 + v2);
  if (v3 == 7)
  {
    goto LABEL_2;
  }

  v4 = type metadata accessor for TTSVBVoiceModelStateTransition();
  if (*(a1 + *(v4 + 20) + v2) == 7)
  {
    return 1;
  }

  if (v3 != 5)
  {
LABEL_2:
    v4 = type metadata accessor for TTSVBVoiceModelStateTransition();
    if (*(a1 + *(v4 + 20) + v2) != 5)
    {
      if (v3 == 4)
      {
        return 0;
      }

      goto LABEL_8;
    }

    return 1;
  }

LABEL_8:
  v6 = v4;
  type metadata accessor for TTSVBVoiceModelStateTransition();
  return *(a1 + *(v6 + 20) + v2) == 4;
}

BOOL Sequence<>.isAnyModelFullyTrained.getter(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBVoiceModel();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2DB8, &qword_23329AE70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v25 - v8;
  v10 = *(a1 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v20 = v25 - v19;
  (*(v10 + 16))(v14, v25[1], a1, v18);
  sub_23328DB2C();
  swift_getAssociatedConformanceWitness();
  do
  {
    sub_23328E01C();
    v21 = type metadata accessor for TTSVBVoiceModelStateTransition();
    v22 = (*(*(v21 - 8) + 48))(v9, 1, v21);
    if (v22 == 1)
    {
      break;
    }

    sub_2331D81D0(&v9[*(v21 + 20)], v5, type metadata accessor for TTSVBVoiceModel);
    sub_2331D8238(v9, type metadata accessor for TTSVBVoiceModelStateTransition);
    v23 = *&v5[*(v2 + 52)];
    sub_2331D8238(v5, type metadata accessor for TTSVBVoiceModel);
  }

  while (v23 != 7);
  (*(v16 + 8))(v20, AssociatedTypeWitness);
  return v22 != 1;
}

unint64_t sub_2331D817C()
{
  result = qword_27DDF7590[0];
  if (!qword_27DDF7590[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF7590);
  }

  return result;
}

uint64_t sub_2331D81D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2331D8238(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2331D82E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2331D8350()
{
  result = type metadata accessor for TTSVBVoiceModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2331D83D0()
{
  result = qword_27DDF7920[0];
  if (!qword_27DDF7920[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF7920);
  }

  return result;
}

unint64_t sub_2331D8428()
{
  result = qword_27DDF7A30;
  if (!qword_27DDF7A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDF7A30);
  }

  return result;
}

unint64_t sub_2331D8480()
{
  result = qword_27DDF7A38[0];
  if (!qword_27DDF7A38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF7A38);
  }

  return result;
}

void _TTSVBFileManager.requireDirectoryExists(_:problem:reason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v33 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A08, &qword_23329B0C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for TTSVBError.Reason(0);
  v28 = *(v10 - 8);
  v11 = *(v28 + 64);
  MEMORY[0x28223BE20](v10);
  v29 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v13 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *v3;
  v30 = 0;
  v26 = a1;
  sub_23328CC6C();
  v17 = sub_23328D95C();

  [v16 fileExistsAtPath:v17 isDirectory:&v30];

  if ((v30 & 1) == 0)
  {
    v31[0] = v14;
    v31[1] = v13;
    v18 = v13;
    v32 = v15;
    sub_233121D34(v27, v9, &qword_27DDE2A08, &qword_23329B0C0);
    v19 = *(v28 + 48);
    if (v19(v9, 1, v10) == 1)
    {
      v20 = sub_23328CC9C();
      v21 = v29;
      (*(*(v20 - 8) + 16))(v29, v26, v20);
      swift_storeEnumTagMultiPayload();
      v22 = v19(v9, 1, v10);
      sub_233144054(v14, v18, v15);
      if (v22 != 1)
      {
        sub_233121E04(v9, &qword_27DDE2A08, &qword_23329B0C0);
      }
    }

    else
    {
      v21 = v29;
      sub_2331E28AC(v9, v29, type metadata accessor for TTSVBError.Reason);
      sub_233144054(v14, v18, v15);
    }

    type metadata accessor for TTSVBError(0);
    sub_2331E2A38(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    swift_allocError();
    TTSVBError.init(_:_:_:)(v31, v21, 0, v23);
    swift_willThrow();
  }

  v24 = *MEMORY[0x277D85DE8];
}

void _TTSVBFileManager.requireFileExists(_:problem:reason:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A08, &qword_23329B0C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for TTSVBError.Reason(0);
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x28223BE20](v10);
  v30 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v13 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *v3;
  v25 = a1;
  sub_23328CC6C();
  v17 = sub_23328D95C();

  v18 = [v16 fileExistsAtPath_];

  if ((v18 & 1) == 0)
  {
    v28[0] = v14;
    v28[1] = v13;
    v19 = v13;
    v29 = v15;
    sub_233121D34(v26, v9, &qword_27DDE2A08, &qword_23329B0C0);
    v20 = *(v27 + 48);
    if (v20(v9, 1, v10) == 1)
    {
      v21 = sub_23328CC9C();
      v22 = v30;
      (*(*(v21 - 8) + 16))(v30, v25, v21);
      swift_storeEnumTagMultiPayload();
      v23 = v20(v9, 1, v10);
      sub_233144054(v14, v19, v15);
      if (v23 != 1)
      {
        sub_233121E04(v9, &qword_27DDE2A08, &qword_23329B0C0);
      }
    }

    else
    {
      v22 = v30;
      sub_2331E28AC(v9, v30, type metadata accessor for TTSVBError.Reason);
      sub_233144054(v14, v19, v15);
    }

    type metadata accessor for TTSVBError(0);
    sub_2331E2A38(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    swift_allocError();
    TTSVBError.init(_:_:_:)(v28, v22, 0, v24);
    swift_willThrow();
  }
}

id _TTSVBFileManager.fileExists(_:)()
{
  v1 = *v0;
  sub_23328CC6C();
  v2 = sub_23328D95C();

  v3 = [v1 fileExistsAtPath_];

  return v3;
}

uint64_t _TTSVBFileManager.directoryExists(_:)()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v5 = 0;
  sub_23328CC6C();
  v2 = sub_23328D95C();

  [v1 fileExistsAtPath:v2 isDirectory:&v5];

  result = v5;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _TTSVBFileManager.createDirectoryIfNeeded(_:attributes:deleteAndRecreateIfExists:problem:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v25 = a3;
  v26 = a2;
  v35 = *MEMORY[0x277D85DE8];
  v27 = type metadata accessor for TTSVBError.Reason(0);
  v8 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *a4;
  v11 = *(a4 + 8);
  v13 = *(a4 + 16);
  v14 = *v4;
  if (v13 == 255)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  if (v13 == 255)
  {
    v16 = 0;
  }

  else
  {
    v16 = v11;
  }

  v29 = v16;
  v30 = v15;
  if (v13 == 255)
  {
    v17 = 3;
  }

  else
  {
    v17 = v13;
  }

  v28 = v17;
  LOBYTE(v32) = 0;
  sub_2331D8EC4(v12, v11, v13);
  sub_23328CC6C();
  v18 = sub_23328D95C();

  [v14 fileExistsAtPath:v18 isDirectory:&v32];

  if (v32 != 1)
  {
    goto LABEL_14;
  }

  if ((v25 & 1) == 0)
  {
    goto LABEL_13;
  }

  v31 = v14;
  v32 = v30;
  v33 = v29;
  v20 = v28;
  v34 = v28;
  sub_2331D8EC4(v12, v11, v13);
  _TTSVBFileManager.removeItem(_:problem:)(a1, &v32);
  v19 = sub_2331D922C(v30, v29, v20);
  if (v5)
  {
LABEL_13:
    result = sub_2331D922C(v12, v11, v13);
  }

  else
  {
LABEL_14:
    MEMORY[0x28223BE20](v19);
    *&v24[-32] = v14;
    *&v24[-24] = a1;
    *&v24[-16] = v26;
    v32 = v30;
    v33 = v29;
    v34 = v28;
    v22 = sub_23328CC9C();
    (*(*(v22 - 8) + 16))(v10, a1, v22);
    swift_storeEnumTagMultiPayload();
    static TTSVBError.perform<A>(_:problem:reason:)(sub_2331D920C, &v24[-48], &v32, v10);
    sub_2331E22B4(v10, type metadata accessor for TTSVBError.Reason);
    result = sub_2331D922C(v12, v11, v13);
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2331D8EC4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_233144054(a1, a2, a3);
  }

  return a1;
}

void _TTSVBFileManager.removeItem(_:problem:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TTSVBError.Reason(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *v2;
  sub_23328CC6C();
  v13 = sub_23328D95C();

  v14 = [v12 fileExistsAtPath_];

  if (v14)
  {
    MEMORY[0x28223BE20](v15);
    *(&v20 - 2) = v12;
    *(&v20 - 1) = a1;
    if (v11 == 255)
    {
      v16 = 0;
    }

    else
    {
      v16 = v10;
    }

    if (v11 == 255)
    {
      v17 = 0;
    }

    else
    {
      v17 = v9;
    }

    if (v11 == 255)
    {
      v18 = 3;
    }

    else
    {
      v18 = v11;
    }

    v21 = v16;
    v22 = v17;
    v23 = v18;
    v19 = sub_23328CC9C();
    (*(*(v19 - 8) + 16))(v8, a1, v19);
    swift_storeEnumTagMultiPayload();
    sub_2331D8EC4(v10, v9, v11);
    static TTSVBError.perform<A>(_:problem:reason:)(sub_2331DB92C, (&v20 - 4), &v21, v8);
    sub_2331E22B4(v8, type metadata accessor for TTSVBError.Reason);
    sub_2331220AC(v21, v22, v23);
  }
}

id sub_2331D90CC(void *a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_23328CBCC();
  if (a3)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_2331E2A38(&qword_27DDE2DE0, type metadata accessor for FileAttributeKey);
    a3 = sub_23328D87C();
  }

  v10[0] = 0;
  v6 = [a1 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:a3 error:v10];

  if (v6)
  {
    result = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_23328CA7C();

    result = swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2331D922C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_2331220AC(a1, a2, a3);
  }

  return a1;
}

uint64_t _TTSVBFileManager.getOrCreateFile(in:named:problem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a1;
  v54 = a5;
  v65 = *MEMORY[0x277D85DE8];
  v53 = type metadata accessor for TTSVBError.Reason(0);
  v9 = *(*(v53 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v53);
  v48 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49 = v47 - v12;
  v14 = *a4;
  v13 = *(a4 + 8);
  v15 = *(a4 + 16);
  v55 = *v5;
  if (v15 == 255)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14;
  }

  if (v15 == 255)
  {
    v17 = 0;
  }

  else
  {
    v17 = v13;
  }

  v51 = v17;
  v52 = v16;
  if (v15 == 255)
  {
    v18 = 3;
  }

  else
  {
    v18 = v15;
  }

  v50 = v18;
  v57 = sub_23328CC9C();
  v58 = v47;
  v60 = *(v57 - 8);
  v19 = *(v60 + 64);
  MEMORY[0x28223BE20](v57);
  v21 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a2;
  v63 = a3;
  v22 = sub_23328CB3C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 104))(v26, *MEMORY[0x277CC91E0], v22);
  sub_2331D8EC4(v14, v13, v15);
  sub_23311A294();
  sub_23328CC8C();
  (*(v23 + 8))(v26, v22);
  v27 = v55;
  v56 = v21;
  sub_23328CC6C();
  v28 = sub_23328D95C();

  v29 = [v27 fileExistsAtPath_];

  if (v29)
  {
    v30 = v56;
    v31 = v57;
LABEL_18:
    sub_2331D922C(v14, v13, v15);
    result = (*(v60 + 32))(v54, v30, v31);
    goto LABEL_20;
  }

  LOBYTE(v62) = 0;
  sub_2331D8EC4(v14, v13, v15);
  sub_2331D8EC4(v14, v13, v15);
  v32 = v61;
  sub_23328CC6C();
  v33 = sub_23328D95C();

  [v27 fileExistsAtPath:v33 isDirectory:&v62];

  v35 = v14;
  if (v62 == 1)
  {
    v36 = v27;
    sub_2331D922C(v14, v13, v15);
    sub_2331D922C(v14, v13, v15);
    v31 = v57;
    goto LABEL_17;
  }

  v47[1] = v47;
  MEMORY[0x28223BE20](v34);
  v47[-4] = v27;
  v47[-3] = v32;
  v47[-2] = 0;
  v62 = v52;
  v63 = v51;
  v64 = v50;
  v36 = v27;
  v37 = v60;
  v38 = v49;
  v31 = v57;
  (*(v60 + 16))(v49, v32, v57);
  swift_storeEnumTagMultiPayload();
  v39 = v59;
  static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E31F4, &v47[-6], &v62, v38);
  if (!v39)
  {
    sub_2331D922C(v35, v13, v15);
    sub_2331E22B4(v38, type metadata accessor for TTSVBError.Reason);
    v14 = v35;
    sub_2331D922C(v35, v13, v15);
LABEL_17:
    v30 = v56;
    sub_23328CC6C();
    v41 = sub_23328D95C();

    v42 = [v36 createFileAtPath:v41 contents:0 attributes:0];

    if ((v42 & 1) == 0)
    {
      v62 = v52;
      v63 = v51;
      v64 = v50;
      v43 = v60;
      v44 = v48;
      (*(v60 + 16))(v48, v30, v31);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for TTSVBError(0);
      sub_2331E2A38(&qword_280D3A0B0, type metadata accessor for TTSVBError);
      swift_allocError();
      TTSVBError.init(_:_:_:)(&v62, v44, 0, v45);
      swift_willThrow();
      result = (*(v43 + 8))(v30, v31);
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  sub_2331D922C(v35, v13, v15);
  sub_2331D922C(v35, v13, v15);
  sub_2331E22B4(v38, type metadata accessor for TTSVBError.Reason);
  (*(v37 + 8))(v56, v31);
  result = sub_2331D922C(v35, v13, v15);
LABEL_20:
  v46 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _TTSVBFileManager.getFileIfExists(in:named:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = sub_23328CC9C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = a1;
  v22[1] = a2;
  v13 = sub_23328CB3C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v17, *MEMORY[0x277CC91E0], v13);
  sub_23311A294();
  sub_23328CC8C();
  (*(v14 + 8))(v17, v13);
  sub_23328CC6C();
  v18 = sub_23328D95C();

  v19 = [v7 fileExistsAtPath_];

  if (v19)
  {
    (*(v9 + 32))(a3, v12, v8);
    v20 = 0;
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    v20 = 1;
  }

  return (*(v9 + 56))(a3, v20, 1, v8);
}

uint64_t _TTSVBFileManager.getOrCreateDirectory(in:named:attributes:problem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a1;
  v34 = a4;
  v43 = *MEMORY[0x277D85DE8];
  v35 = type metadata accessor for TTSVBError.Reason(0);
  v11 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v36 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a5;
  v13 = *(a5 + 8);
  v15 = *(a5 + 16);
  v37 = *v6;
  v40 = a2;
  v41 = a3;
  v16 = sub_23328CB3C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 104))(v21, *MEMORY[0x277CC91E0], v16, v19);
  sub_2331D8EC4(v14, v13, v15);
  sub_23311A294();
  sub_23328CC8C();
  (*(v17 + 8))(v21, v16);
  v22 = v37;
  LOBYTE(v40) = 0;
  sub_2331D8EC4(v14, v13, v15);
  sub_23328CC6C();
  v23 = sub_23328D95C();

  [v22 fileExistsAtPath:v23 isDirectory:&v40];

  if (v40 == 1)
  {
    sub_2331D922C(v14, v13, v15);
    result = sub_2331D922C(v14, v13, v15);
  }

  else
  {
    MEMORY[0x28223BE20](v24);
    *(&v34 - 4) = v22;
    *(&v34 - 3) = a6;
    *(&v34 - 2) = v34;
    v40 = v27;
    v41 = v26;
    v42 = v28;
    v29 = sub_23328CC9C();
    v30 = *(v29 - 8);
    v31 = v36;
    (*(v30 + 16))(v36, a6, v29);
    swift_storeEnumTagMultiPayload();
    v32 = v39;
    static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E31F4, (&v34 - 6), &v40, v31);
    sub_2331D922C(v14, v13, v15);
    sub_2331E22B4(v31, type metadata accessor for TTSVBError.Reason);
    if (v32)
    {
      sub_2331D922C(v14, v13, v15);
      result = (*(v30 + 8))(a6, v29);
    }

    else
    {
      result = sub_2331D922C(v14, v13, v15);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
  return result;
}

void _TTSVBFileManager.getChildDirectories(of:problem:)(uint64_t a1, uint64_t a2)
{
  v80 = *MEMORY[0x277D85DE8];
  v74 = type metadata accessor for TTSVBError.Reason(0);
  v5 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v75 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *v2;
  sub_2331D8EC4(*a2, v8, *(a2 + 16));
  v77 = a1;
  v11 = sub_23328CBCC();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2728, &qword_23329F3B0);
  v12 = swift_allocObject();
  v70 = xmmword_233297B30;
  *(v12 + 16) = xmmword_233297B30;
  v13 = *MEMORY[0x277CBE868];
  *(v12 + 32) = *MEMORY[0x277CBE868];
  type metadata accessor for URLResourceKey(0);
  v69 = v13;
  v14 = sub_23328DBDC();

  v78[0] = 0;
  v15 = [v10 contentsOfDirectoryAtURL:v11 includingPropertiesForKeys:v14 options:0 error:v78];

  if (v15)
  {
    v16 = v78[0];
    sub_2331D922C(v7, v8, v9);
    v17 = sub_23328CC9C();
    v18 = sub_23328DBFC();

    v19 = *(v18 + 16);
    v77 = v17;
    v20 = *(*(v17 - 8) + 64);
    MEMORY[0x28223BE20](v21);
    v72 = v23;
    v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v68 = v25;
    if (v25)
    {
      v26 = 0;
      v65 = v22 + 16;
      v61 = (v22 + 32);
      v64 = (v22 + 8);
      v62 = MEMORY[0x277D84F90];
      v27 = v76;
      v67 = v18;
      v66 = v22;
      while (1)
      {
        if (v26 >= *(v18 + 16))
        {
          __break(1u);
        }

        v75 = &v60;
        v28 = (*(v22 + 80) + 32) & ~*(v22 + 80);
        v29 = *(v22 + 72);
        (*(v22 + 16))(v24, v18 + v28 + v29 * v26, v77);
        v30 = sub_23328CA0C();
        v76 = &v60;
        v73 = *(v30 - 8);
        v74 = v30;
        v31 = *(v73 + 64);
        MEMORY[0x28223BE20](v30);
        v33 = &v60 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
        inited = swift_initStackObject();
        *(inited + 16) = v70;
        v35 = v69;
        *(inited + 32) = v69;
        v36 = v35;
        sub_23317473C(inited);
        swift_setDeallocating();
        sub_2331E22B4(inited + 32, type metadata accessor for URLResourceKey);
        v37 = v27;
        sub_23328CB6C();
        if (v27)
        {
          break;
        }

        v63 = v29;

        v38 = sub_23328C98C();
        v39 = (*(v73 + 8))(v33, v74);
        if (v38 == 2)
        {
          goto LABEL_8;
        }

        if (v38)
        {
          MEMORY[0x28223BE20](v39);
          v43 = &v60 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
          v44 = *v61;
          (*v61)(v43, v24, v77);
          v45 = v62;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v78[0] = v45;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_233173E80(0, v45[2] + 1, 1);
            v45 = v78[0];
          }

          v47 = v63;
          v49 = v45[2];
          v48 = v45[3];
          if (v49 >= v48 >> 1)
          {
            sub_233173E80(v48 > 1, v49 + 1, 1);
            v47 = v63;
            v45 = v78[0];
          }

          v45[2] = v49 + 1;
          v62 = v45;
          v40 = v44(v45 + v28 + v49 * v47, v43, v77);
          v27 = v37;
          v18 = v67;
          goto LABEL_10;
        }

        v18 = v67;
LABEL_9:
        v40 = (*v64)(v24, v77);
LABEL_10:
        ++v26;
        MEMORY[0x28223BE20](v40);
        v24 = &v60 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
        v22 = v66;
        if (v68 == v26)
        {
          goto LABEL_30;
        }
      }

      v27 = 0;
LABEL_8:
      v18 = v67;
      goto LABEL_9;
    }

    v62 = MEMORY[0x277D84F90];
LABEL_30:
  }

  else
  {
    if (v9 == 255)
    {
      v50 = 3;
    }

    else
    {
      v50 = v9;
    }

    if (v9 == 255)
    {
      v51 = 0;
    }

    else
    {
      v51 = v8;
    }

    if (v9 == 255)
    {
      v52 = 0;
    }

    else
    {
      v52 = v7;
    }

    v53 = v78[0];
    v54 = sub_23328CA7C();

    swift_willThrow();
    v78[0] = v52;
    v78[1] = v51;
    v79 = v50;
    v55 = sub_23328CC9C();
    v56 = v75;
    (*(*(v55 - 8) + 16))(v75, v77, v55);
    swift_storeEnumTagMultiPayload();
    v57 = sub_23328CA6C();
    type metadata accessor for TTSVBError(0);
    sub_2331E2A38(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    swift_allocError();
    TTSVBError.init(_:_:_:)(v78, v56, v57, v58);
    swift_willThrow();
  }

  v59 = *MEMORY[0x277D85DE8];
}

uint64_t _TTSVBFileManager.setPermissions(_:onItem:problem:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a1;
  v57 = type metadata accessor for TTSVBError.Reason(0);
  v7 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v59 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23328D6EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a3;
  v55 = *(a3 + 8);
  v56 = v14;
  v54 = *(a3 + 16);
  v51 = *v3;
  v15 = sub_233225314();
  v52 = v10;
  v53 = v9;
  (*(v10 + 16))(v13, v15, v9);
  v16 = sub_23328CC9C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v17 + 16);
  v58 = a2;
  v61 = v23;
  v50 = v22;
  (v22)(v21, a2, v19);
  v24 = sub_23328D6CC();
  v25 = sub_23328DE2C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v49 = v4;
    v27 = v26;
    v48 = swift_slowAlloc();
    v62 = v48;
    *v27 = 136315394;
    v65 = v60;
    sub_2331E24D4();
    v28 = sub_23328DAEC();
    v30 = sub_23311A8F4(v28, v29, &v62);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2080;
    v31 = sub_23328CC6C();
    v33 = v32;
    (*(v17 + 8))(v21, v61);
    v34 = sub_23311A8F4(v31, v33, &v62);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_233109000, v24, v25, "Setting permissions=%s on item=%s", v27, 0x16u);
    v35 = v48;
    swift_arrayDestroy();
    MEMORY[0x23839CFD0](v35, -1, -1);
    MEMORY[0x23839CFD0](v27, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v21, v61);
  }

  v36 = (*(v52 + 8))(v13, v53);
  v37.n128_f64[0] = MEMORY[0x28223BE20](v36);
  v39 = v59;
  v38 = v60;
  *(&v47 - 4) = v51;
  *(&v47 - 3) = v38;
  *(&v47 - 2) = v58;
  v40 = v54;
  v42 = v55;
  v41 = v56;
  if (v54 == 255)
  {
    v43 = 0;
  }

  else
  {
    v43 = v56;
  }

  if (v54 == 255)
  {
    v44 = 0;
  }

  else
  {
    v44 = v55;
  }

  if (v54 == 255)
  {
    v45 = 3;
  }

  else
  {
    v45 = v54;
  }

  v62 = v43;
  v63 = v44;
  v64 = v45;
  v50(v39, v37);
  swift_storeEnumTagMultiPayload();
  sub_2331D8EC4(v41, v42, v40);
  static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E2314, (&v47 - 6), &v62, v39);
  sub_2331E22B4(v39, type metadata accessor for TTSVBError.Reason);
  return sub_2331220AC(v62, v63, v64);
}

void _TTSVBFileManager.setPermissions(_:onDirectoriesIn:problem:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v45 = a1;
  v4 = a3[1];
  v44 = *a3;
  v43 = v4;
  v42 = *(a3 + 16);
  v5 = *v3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2728, &qword_23329F3B0);
  v6 = swift_allocObject();
  v56 = xmmword_233297B30;
  *(v6 + 16) = xmmword_233297B30;
  v7 = *MEMORY[0x277CBE868];
  *(v6 + 32) = *MEMORY[0x277CBE868];
  v55 = v7;
  v41 = v5;
  v8 = sub_23328DE0C();

  if (v8)
  {
    v49 = &v40;
    v47 = sub_23328CABC();
    v46 = *(v47 - 8);
    v9 = *(v46 + 64);
    MEMORY[0x28223BE20](v47);
    v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v48 = v8;
    sub_23328DDDC();
    sub_23328CAAC();
    if (!v67)
    {
LABEL_14:
      (*(v46 + 8))(v11, v47);

      return;
    }

    v12 = sub_23328CC9C();
    v63 = v12;
    v13 = *(v12 - 8);
    v14 = *(v13 + 64);
    v15 = (v13 + 56);
    v52 = (v13 + 32);
    v53 = (v13 + 8);
    v54 = v11;
    v51 = v14;
    v50 = (v13 + 56);
    while (1)
    {
      MEMORY[0x28223BE20](v12);
      v62 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
      v17 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v16 - 8);
      v19 = &v40 - v18;
      v20 = v63;
      v21 = swift_dynamicCast();
      v22 = *v15;
      if (v21)
      {
        v60 = &v40;
        v61 = &v40;
        v22(v19, 0, 1, v20);
        v23 = v62;
        (*v52)(v62, v19, v20);
        v24 = sub_23328CA0C();
        v59 = &v40;
        v25 = *(v24 - 8);
        v26 = *(v25 + 64);
        MEMORY[0x28223BE20](v24);
        v28 = &v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2DD0, &qword_23329B0C8);
        v58 = &v40;
        v30 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](v29 - 8);
        v32 = &v40 - v31;
        inited = swift_initStackObject();
        *(inited + 16) = v56;
        v34 = v55;
        *(inited + 32) = v55;
        v35 = v34;
        sub_23317473C(inited);
        swift_setDeallocating();
        sub_2331E22B4(inited + 32, type metadata accessor for URLResourceKey);
        v36 = v64;
        sub_23328CB6C();
        v64 = v36;
        if (v36)
        {

          (*v53)(v23, v63);
          (*(v25 + 56))(v32, 1, 1, v24);
          sub_233121E04(v32, &qword_27DDE2DD0, &qword_23329B0C8);
          v64 = 0;
        }

        else
        {
          v37 = v63;

          (*(v25 + 56))(v32, 0, 1, v24);
          (*(v25 + 32))(v28, v32, v24);
          v38 = sub_23328C98C();
          if (v38 != 2 && (v38 & 1) != 0)
          {
            v68 = v41;
            v65[0] = v44;
            v65[1] = v43;
            v66 = v42;
            v39 = v64;
            _TTSVBFileManager.setPermissions(_:onItem:problem:)(v45, v23, v65);
            v64 = v39;
            if (v39)
            {

              (*(v25 + 8))(v28, v24);
              (*v53)(v23, v37);
              (*(v46 + 8))(v54, v47);
              return;
            }
          }

          (*(v25 + 8))(v28, v24);
          (*v53)(v23, v37);
        }

        v11 = v54;
        v14 = v51;
        v15 = v50;
      }

      else
      {
        v22(v19, 1, 1, v20);
        sub_233121E04(v19, &qword_27DDE19A0, &unk_233290360);
      }

      v12 = sub_23328CAAC();
      if (!v67)
      {
        goto LABEL_14;
      }
    }
  }

  __break(1u);
}

void _TTSVBFileManager.processTree(root:handler:)(uint64_t a1, void (*a2)(char *, void), uint64_t a3)
{
  v44 = a3;
  v43 = a2;
  v4 = *v3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2728, &qword_23329F3B0);
  v5 = swift_allocObject();
  v50 = xmmword_233297B30;
  *(v5 + 16) = xmmword_233297B30;
  v6 = *MEMORY[0x277CBE868];
  *(v5 + 32) = *MEMORY[0x277CBE868];
  v49 = v6;
  v7 = sub_23328DE0C();

  if (v7)
  {
    v42 = &v38;
    v40 = sub_23328CABC();
    v39 = *(v40 - 8);
    v8 = *(v39 + 64);
    MEMORY[0x28223BE20](v40);
    v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v41 = v7;
    sub_23328DDDC();
    v57 = v10;
    sub_23328CAAC();
    if (!v58)
    {
LABEL_14:
      (*(v39 + 8))(v57, v40);

      return;
    }

    v11 = sub_23328CC9C();
    v12 = v11;
    v13 = *(v11 - 8);
    v14 = *(v13 + 64);
    v15 = (v13 + 56);
    v47 = (v13 + 32);
    v48 = (v13 + 8);
    v46 = v14;
    v45 = (v13 + 56);
    while (1)
    {
      MEMORY[0x28223BE20](v11);
      v16 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
      v18 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      MEMORY[0x28223BE20](v17 - 8);
      v20 = &v38 - v19;
      v21 = swift_dynamicCast();
      v22 = *v15;
      if (v21)
      {
        v55 = &v38;
        v56 = &v38;
        v22(v20, 0, 1, v12);
        (*v47)(&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v12);
        v53 = sub_23328CA0C();
        v54 = &v38;
        v23 = *(v53 - 8);
        v24 = *(v23 + 64);
        MEMORY[0x28223BE20](v53);
        v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2DD0, &qword_23329B0C8);
        v52 = &v38;
        v28 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](v27 - 8);
        v30 = &v38 - v29;
        inited = swift_initStackObject();
        *(inited + 16) = v50;
        v32 = v49;
        *(inited + 32) = v49;
        v33 = v32;
        sub_23317473C(inited);
        swift_setDeallocating();
        sub_2331E22B4(inited + 32, type metadata accessor for URLResourceKey);
        v34 = v59;
        sub_23328CB6C();
        v59 = v34;
        if (v34)
        {

          (*v48)(v16, v12);
          (*(v23 + 56))(v30, 1, 1, v53);
          sub_233121E04(v30, &qword_27DDE2DD0, &qword_23329B0C8);
          v59 = 0;
        }

        else
        {

          v35 = v53;
          (*(v23 + 56))(v30, 0, 1, v53);
          (*(v23 + 32))(v26, v30, v35);
          v36 = sub_23328C98C();
          if (v36 != 2)
          {
            v37 = v59;
            v43(v16, v36 & 1);
            v59 = v37;
            if (v37)
            {

              (*(v23 + 8))(v26, v35);
              (*v48)(v16, v12);
              (*(v39 + 8))(v57, v40);
              return;
            }
          }

          (*(v23 + 8))(v26, v35);
          (*v48)(v16, v12);
        }

        v14 = v46;
        v15 = v45;
      }

      else
      {
        v22(v20, 1, 1, v12);
        sub_233121E04(v20, &qword_27DDE19A0, &unk_233290360);
      }

      v11 = sub_23328CAAC();
      if (!v58)
      {
        goto LABEL_14;
      }
    }
  }

  __break(1u);
}

uint64_t _TTSVBFileManager.moveItem(_:to:problem:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a2;
  v47 = a1;
  v48 = type metadata accessor for TTSVBError.Reason(0);
  v5 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v43 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *(a3 + 16);
  v13 = *v3;
  v14 = sub_23328CC9C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v55;
  sub_23328CC1C();
  v50 = v13;
  v51 = v18;
  v45 = v18;
  if (v12 == 255)
  {
    v20 = 0;
  }

  else
  {
    v20 = v10;
  }

  if (v12 == 255)
  {
    v21 = 0;
  }

  else
  {
    v21 = v11;
  }

  if (v12 == 255)
  {
    v22 = 3;
  }

  else
  {
    v22 = v12;
  }

  v40 = v20;
  v41 = v13;
  v52 = v20;
  v53 = v21;
  v39 = v21;
  v38 = v22;
  v54 = v22;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0);
  v23 = *(v37 + 48);
  v46 = v15;
  v24 = *(v15 + 16);
  v24(v9, v47, v14);
  v25 = v19;
  v26 = v12;
  v24(&v9[v23], v25, v14);
  swift_storeEnumTagMultiPayload();
  v42 = v11;
  sub_2331D8EC4(v10, v11, v12);
  v27 = v44;
  static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E320C, v49, &v52, v9);
  sub_2331E22B4(v9, type metadata accessor for TTSVBError.Reason);
  if (!v27)
  {
    v28 = sub_2331220AC(v52, v53, v54);
    v44 = &v35;
    v29 = MEMORY[0x28223BE20](v28);
    v36 = &v35 - 6;
    v30 = v47;
    *(&v35 - 4) = v41;
    *(&v35 - 3) = v30;
    v31 = v55;
    *(&v35 - 2) = v55;
    v52 = v40;
    v53 = v39;
    v54 = v38;
    v32 = *(v37 + 48);
    v33 = v43;
    (v24)(v43, v29);
    v24((v33 + v32), v31, v14);
    swift_storeEnumTagMultiPayload();
    sub_2331D8EC4(v10, v42, v26);
    static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E2528, v36, &v52, v33);
    sub_2331E22B4(v43, type metadata accessor for TTSVBError.Reason);
  }

  sub_2331220AC(v52, v53, v54);
  return (*(v46 + 8))(v45, v14);
}

uint64_t _TTSVBFileManager.moveItem(_:intoDirectory:problem:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v23 = a3[1];
  v22 = *(a3 + 16);
  v6 = *v3;
  v20[1] = a2;
  v21 = v6;
  v7 = sub_23328CC9C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_23328CB9C();
  v26 = v12;
  v13 = sub_23328CB3C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v18, *MEMORY[0x277CC91E0], v13, v16);
  sub_23311A294();
  sub_23328CC8C();
  (*(v14 + 8))(v18, v13);

  v28 = v21;
  v25 = v24;
  v26 = v23;
  v27 = v22;
  _TTSVBFileManager.moveItem(_:to:problem:)(a1, v11, &v25);
  return (*(v8 + 8))(v11, v7);
}

uint64_t _TTSVBFileManager.copyItem(_:to:problem:)(char *a1, char **a2, uint64_t a3)
{
  v4 = v3;
  v60 = a1;
  v71 = *MEMORY[0x277D85DE8];
  v63 = type metadata accessor for TTSVBError.Reason(0);
  v7 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v61 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v58 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - v12;
  v14 = *(a3 + 8);
  v62 = *a3;
  v15 = *(a3 + 16);
  v16 = *v4;
  v17 = sub_23328CC9C();
  v67 = *(v17 - 8);
  v18 = *(v67 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a2;
  sub_23328CC1C();
  LOBYTE(v68) = 0;
  sub_23328CC6C();
  v21 = sub_23328D95C();

  [v16 fileExistsAtPath:v21 isDirectory:&v68];

  if (v68)
  {
    v59 = v20;
    v23 = v62;
  }

  else
  {
    v65 = &v58;
    v24.n128_f64[0] = MEMORY[0x28223BE20](v22);
    *(&v58 - 2) = v16;
    *(&v58 - 1) = v20;
    v25 = v62;
    if (v15 == 255)
    {
      v26 = 0;
    }

    else
    {
      v26 = v62;
    }

    if (v15 == 255)
    {
      v27 = 0;
    }

    else
    {
      v27 = v14;
    }

    if (v15 == 255)
    {
      v28 = 3;
    }

    else
    {
      v28 = v15;
    }

    v68 = v26;
    v69 = v27;
    v70 = v28;
    v29 = v67;
    (*(v67 + 16))(v13, v20, v17, v24);
    swift_storeEnumTagMultiPayload();
    sub_2331D8EC4(v25, v14, v15);
    v30 = v66;
    static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E2548, (&v58 - 4), &v68, v13);
    if (v30)
    {
      sub_2331E22B4(v13, type metadata accessor for TTSVBError.Reason);
      sub_2331220AC(v68, v69, v70);
      goto LABEL_40;
    }

    v59 = v20;
    v23 = v25;
    v66 = 0;
    sub_2331E22B4(v13, type metadata accessor for TTSVBError.Reason);
    sub_2331220AC(v68, v69, v70);
  }

  v68 = sub_23328CC5C();
  v69 = v31;
  sub_23311A294();
  sub_23328E07C();
  v33 = v32;

  if (v33 && (v35 = sub_23328D95C(), , v36 = [v16 fileExistsAtPath_], v35, v36))
  {
    v65 = &v58;
    v37.n128_f64[0] = MEMORY[0x28223BE20](v34);
    v38 = v64;
    *(&v58 - 2) = v16;
    *(&v58 - 1) = v38;
    v39 = v15;
    if (v15 == 255)
    {
      v40 = 0;
    }

    else
    {
      v40 = v23;
    }

    if (v15 == 255)
    {
      v41 = 0;
    }

    else
    {
      v41 = v14;
    }

    if (v15 == 255)
    {
      v42 = 3;
    }

    else
    {
      v42 = v15;
    }

    v68 = v40;
    v69 = v41;
    v70 = v42;
    v43 = v58;
    (*(v67 + 16))(v58, v38, v17, v37);
    swift_storeEnumTagMultiPayload();
    sub_2331D8EC4(v23, v14, v39);
    v44 = v66;
    static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E3224, (&v58 - 4), &v68, v43);
    if (v44)
    {
      sub_2331E22B4(v43, type metadata accessor for TTSVBError.Reason);
      sub_2331220AC(v68, v69, v70);
      v20 = v59;
      v29 = v67;
      goto LABEL_40;
    }

    v57 = v43;
    v15 = v39;
    v66 = 0;
    sub_2331E22B4(v57, type metadata accessor for TTSVBError.Reason);
    v34 = sub_2331220AC(v68, v69, v70);
  }

  else
  {
    v38 = v64;
  }

  v65 = &v58;
  MEMORY[0x28223BE20](v34);
  v64 = &v58 - 6;
  v45 = v60;
  *(&v58 - 4) = v16;
  *(&v58 - 3) = v45;
  *(&v58 - 2) = v38;
  if (v15 == 255)
  {
    v46 = 0;
  }

  else
  {
    v46 = v23;
  }

  if (v15 == 255)
  {
    v47 = 0;
  }

  else
  {
    v47 = v14;
  }

  if (v15 == 255)
  {
    v48 = 3;
  }

  else
  {
    v48 = v15;
  }

  v68 = v46;
  v69 = v47;
  v70 = v48;
  v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0) + 48);
  v50 = v38;
  v51 = v45;
  v52 = *(v67 + 16);
  v53 = v61;
  v52(v61, v51, v17);
  v52((v53 + v49), v50, v17);
  swift_storeEnumTagMultiPayload();
  sub_2331D8EC4(v23, v14, v15);
  v54 = v66;
  static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E323C, v64, &v68, v53);
  if (!v54)
  {
    sub_2331E22B4(v53, type metadata accessor for TTSVBError.Reason);
    sub_2331220AC(v68, v69, v70);
    result = (*(v67 + 8))(v59, v17);
    goto LABEL_42;
  }

  sub_2331E22B4(v53, type metadata accessor for TTSVBError.Reason);
  sub_2331220AC(v68, v69, v70);
  v29 = v67;
  v20 = v59;
LABEL_40:
  result = (*(v29 + 8))(v20, v17);
LABEL_42:
  v56 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _TTSVBFileManager.copyItem(_:intoDirectory:problem:)(char *a1, uint64_t a2)
{
  v17 = a2;
  v18 = *v2;
  v4 = sub_23328CC9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_23328CB9C();
  v20 = v9;
  v10 = sub_23328CB3C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v15, *MEMORY[0x277CC91E0], v10, v13);
  sub_23311A294();
  sub_23328CC8C();
  (*(v11 + 8))(v15, v10);

  v22 = v18;
  v19 = 0;
  v20 = 0;
  v21 = -1;
  _TTSVBFileManager.copyItem(_:to:problem:)(a1, v8, &v19);
  return (*(v5 + 8))(v8, v4);
}

uint64_t _TTSVBFileManager.copyContentsOf(_:to:problem:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v53 = a2;
  v62 = *MEMORY[0x277D85DE8];
  v52 = type metadata accessor for TTSVBError.Reason(0);
  v7 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a3;
  v9 = *(a3 + 8);
  v11 = *(a3 + 16);
  v12 = *v3;
  if (v11 == 255)
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  if (v11 == 255)
  {
    v14 = 0;
  }

  else
  {
    v14 = v9;
  }

  v48 = v14;
  v49 = v13;
  if (v11 == 255)
  {
    v15 = 3;
  }

  else
  {
    v15 = v11;
  }

  v47 = v15;
  sub_2331D8EC4(v10, v9, v11);
  v16 = sub_23328CBCC();
  v60[0] = 0;
  v50 = v12;
  v17 = [v12 contentsOfDirectoryAtURL:v16 includingPropertiesForKeys:0 options:0 error:v60];

  v18 = v60[0];
  if (v17)
  {
    v41 = v9;
    v42 = v11;
    v19 = sub_23328CC9C();
    v20 = sub_23328DBFC();
    v21 = v18;

    v46 = *(v20 + 16);
    if (v46)
    {
      v23 = 0;
      v43 = v19 - 8;
      v44 = v20;
      v45 = v10;
      while (1)
      {
        if (v23 >= *(v20 + 16))
        {
          __break(1u);
        }

        v59 = &v41;
        v24 = *(v19 - 8);
        v25 = v24;
        v26 = v20 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
        v27 = *(v24 + 72);
        v54 = v23;
        v28 = *(v24 + 64);
        MEMORY[0x28223BE20](v22);
        v57 = v5;
        v29 = &v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
        v55 = *(v25 + 16);
        v55(v29);
        v30 = sub_23328CB9C();
        v58 = &v41;
        MEMORY[0x28223BE20](v30);
        sub_23328CBEC();

        v56 = &v41;
        MEMORY[0x28223BE20](v31);
        *(&v41 - 4) = v50;
        *(&v41 - 3) = v29;
        *(&v41 - 2) = v29;
        v60[0] = v49;
        v60[1] = v48;
        v61 = v47;
        v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0) + 48);
        v33 = v51;
        v34 = v55;
        (v55)(v51, v29, v19);
        v34(v33 + v32, v29, v19);
        swift_storeEnumTagMultiPayload();
        v35 = v57;
        static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E25F0, (&v41 - 6), v60, v33);
        v5 = v35;
        if (v35)
        {
          break;
        }

        v23 = v54 + 1;
        sub_2331E22B4(v33, type metadata accessor for TTSVBError.Reason);
        v36 = *(v25 + 8);
        v36(v29, v19);
        v22 = (v36)(v29, v19);
        v10 = v45;
        v20 = v44;
        if (v46 == v23)
        {
          goto LABEL_16;
        }
      }

      sub_2331E22B4(v33, type metadata accessor for TTSVBError.Reason);

      sub_2331D922C(v45, v41, v42);
      v39 = *(v25 + 8);
      v39(v29, v19);
      result = (v39)(v29, v19);
    }

    else
    {
LABEL_16:

      result = sub_2331D922C(v10, v41, v42);
    }
  }

  else
  {
    v38 = v60[0];
    sub_2331D922C(v10, v9, v11);
    sub_23328CA7C();

    result = swift_willThrow();
  }

  v40 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _TTSVBFileManager.write<A>(item:toFile:problem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a5;
  v33 = a4;
  v34 = a1;
  v31 = a2;
  v6 = type metadata accessor for TTSVBError.Reason(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v32 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v13 = *a3;
  v12 = *(a3 + 8);
  v14 = *(a3 + 16);
  if (v14 == 255)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a3;
  }

  if (v14 == 255)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(a3 + 8);
  }

  if (v14 == 255)
  {
    v17 = 3;
  }

  else
  {
    v17 = *(a3 + 16);
  }

  v18 = sub_23328C8BC();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v48 = v13;
  v37 = v12;
  sub_2331D8EC4(v13, v12, v14);
  v21 = sub_23328C8AC();
  v39 = v33;
  v40 = v35;
  v41 = v21;
  v42 = v34;
  v34 = v15;
  v35 = v6;
  v43 = v15;
  v44 = v16;
  LODWORD(v33) = v17;
  v45 = v17;
  swift_storeEnumTagMultiPayload();
  v22 = v36;
  static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E26CC, v38, &v43, v11);
  v23 = sub_2331E22B4(v11, type metadata accessor for TTSVBError.Reason);
  if (v22)
  {
  }

  else
  {
    v36 = &v30;
    v26 = v46;
    v25 = v47;
    MEMORY[0x28223BE20](v23);
    *(&v30 - 4) = v26;
    *(&v30 - 3) = v25;
    v27 = v31;
    *(&v30 - 2) = v31;
    v43 = v34;
    v44 = v16;
    v45 = v33;
    v28 = sub_23328CC9C();
    v29 = v32;
    (*(*(v28 - 8) + 16))(v32, v27, v28);
    swift_storeEnumTagMultiPayload();
    static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E2704, (&v30 - 6), &v43, v29);
    sub_2331E22B4(v29, type metadata accessor for TTSVBError.Reason);

    sub_233121870(v26, v25);
  }

  return sub_2331D922C(v48, v37, v14);
}

uint64_t sub_2331DCFB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  v38 = a1;
  v37 = a5;
  v8 = a4;
  v9 = type metadata accessor for TTSVBError.Reason(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v36 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  if (v8 == 255)
  {
    v15 = 0;
  }

  else
  {
    v15 = a2;
  }

  if (v8 == 255)
  {
    v16 = 0;
  }

  else
  {
    v16 = a3;
  }

  if (v8 == 255)
  {
    v17 = 3;
  }

  else
  {
    v17 = a4;
  }

  v18 = sub_23328C85C();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v40 = a2;
  v21 = a2;
  v22 = a4;
  v48 = a3;
  sub_2331D8EC4(v21, a3, a4);
  v23 = sub_23328C84C();
  v24 = v38;
  v42 = v38;
  v43 = v15;
  v34 = v16;
  v35 = v15;
  v44 = v16;
  v25 = v17;
  v45 = v17;
  v26 = sub_23328CC9C();
  (*(*(v26 - 8) + 16))(v14, v24, v26);
  swift_storeEnumTagMultiPayload();
  v27 = v39;
  static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E3258, v41, &v43, v14);
  v28 = sub_2331E22B4(v14, type metadata accessor for TTSVBError.Reason);
  if (v27)
  {
  }

  else
  {
    v39 = &v33;
    v30 = v46;
    v31 = v47;
    MEMORY[0x28223BE20](v28);
    *(&v33 - 4) = v23;
    *(&v33 - 3) = v30;
    *(&v33 - 2) = v31;
    v43 = v35;
    v44 = v34;
    v45 = v25;
    v32 = v36;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for TTSVBVoiceModel();
    static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E2D8C, (&v33 - 6), &v43, v32);
    sub_2331E22B4(v32, type metadata accessor for TTSVBError.Reason);

    sub_233121870(v30, v31);
  }

  return sub_2331D922C(v40, v48, v22);
}

uint64_t _TTSVBFileManager.load<A>(_:fromFile:problem:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a2;
  v36 = a1;
  v37 = a5;
  v39 = a6;
  v40 = a4;
  v7 = type metadata accessor for TTSVBError.Reason(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v38 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - v11;
  v13 = *a3;
  v14 = *(a3 + 8);
  v15 = *(a3 + 16);
  if (v15 == 255)
  {
    v16 = 0;
  }

  else
  {
    v16 = *a3;
  }

  if (v15 == 255)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(a3 + 8);
  }

  if (v15 == 255)
  {
    v18 = 3;
  }

  else
  {
    v18 = *(a3 + 16);
  }

  v19 = sub_23328C85C();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v43 = v13;
  v22 = v13;
  v23 = v14;
  sub_2331D8EC4(v22, v14, v15);
  v51 = sub_23328C84C();
  v24 = v41;
  v45 = v41;
  v46 = v16;
  v34 = v17;
  v35 = v16;
  v47 = v17;
  v48 = v18;
  v25 = sub_23328CC9C();
  (*(*(v25 - 8) + 16))(v12, v24, v25);
  swift_storeEnumTagMultiPayload();
  v26 = v42;
  static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E2728, v44, &v46, v12);
  v27 = sub_2331E22B4(v12, type metadata accessor for TTSVBError.Reason);
  if (v26)
  {
  }

  else
  {
    v29 = v49;
    v41 = v50;
    v42 = &v34;
    MEMORY[0x28223BE20](v27);
    v30 = v36;
    v31 = v37;
    *(&v34 - 6) = v40;
    *(&v34 - 5) = v31;
    *(&v34 - 4) = v51;
    *(&v34 - 3) = v30;
    *(&v34 - 2) = v29;
    *(&v34 - 1) = v32;
    v46 = v35;
    v47 = v34;
    v48 = v18;
    v33 = v38;
    swift_storeEnumTagMultiPayload();
    static TTSVBError.perform<A>(_:problem:reason:)(sub_2331E2740, (&v34 - 8), &v46, v33);
    sub_2331E22B4(v33, type metadata accessor for TTSVBError.Reason);

    sub_233121870(v29, v41);
  }

  return sub_2331D922C(v43, v23, v15);
}

uint64_t _TTSVBFileManager.calculateSize(ofItemAtURL:)(uint64_t a1)
{
  v3 = v1;
  v64 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for TTSVBError.Reason(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *v3;
  v58 = 0;
  sub_23328CC6C();
  v10 = sub_23328D95C();

  v11 = [v9 fileExistsAtPath:v10 isDirectory:&v58];

  if (v11)
  {
    if (v58)
    {
      v12 = swift_allocObject();
      v52 = v12;
      *(v12 + 16) = 0;
      v55 = (v12 + 16);
      if (qword_27DDF7AC0 != -1)
      {
        goto LABEL_36;
      }

      while (1)
      {
        v13 = qword_27DDF7AC8;
        v14 = *(qword_27DDF7AC8 + 16);
        v53 = qword_27DDF7AC8;
        if (v14)
        {
          v8 = sub_2331E1F98(v14, 0);
          v56 = sub_2331E2160(&v61, v8 + 4, v14, v13);
          v2 = *(&v61 + 1);

          sub_233113BBC();
          if (v56 != v14)
          {
            __break(1u);
            goto LABEL_7;
          }
        }

        v19 = sub_23328DE0C();

        if (!v19)
        {
          __break(1u);
          return result;
        }

        v21 = sub_23328CABC();
        v51 = v46;
        v50 = v21;
        v49 = *(v21 - 8);
        v22 = *(v49 + 64);
        MEMORY[0x28223BE20](v21);
        v24 = &v46[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
        v48 = v19;
        sub_23328DDDC();
        swift_beginAccess();
        v54 = v24;
        sub_23328CAAC();
        if (!v63)
        {
LABEL_28:
          v2 = 0;
LABEL_30:
          (*(v49 + 8))(v54, v50);
          v41 = *v55;
          if (*v55)
          {
            v61 = 0uLL;
            LOBYTE(v62) = 3;
            type metadata accessor for TTSVBError(0);
            sub_2331E2A38(&qword_280D3A0B0, type metadata accessor for TTSVBError);
            swift_allocError();
            v43 = v42;
            v44 = v41;
            static TTSVBError.map(_:_:)(v41, &v61, v43);
            swift_willThrow();
          }

          else
          {
          }

          goto LABEL_34;
        }

        v2 = 0;
        while (1)
        {
          sub_233145134(&v61, v60);
          if (*v55)
          {
            __swift_destroy_boxed_opaque_existential_0(v60);
            goto LABEL_30;
          }

          v25 = sub_23328CC9C();
          v56 = v46;
          v26 = *(v25 - 8);
          v27 = *(v26 + 64);
          MEMORY[0x28223BE20](v25);
          v29 = &v46[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
          sub_23311B0C0(v60, v59);
          swift_dynamicCast();
          v30 = sub_23328CA0C();
          v31 = *(v30 - 8);
          v32 = *(v31 + 64);
          MEMORY[0x28223BE20](v30);
          v34 = &v46[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
          v35 = v57;
          sub_23328CB6C();
          if (v35)
          {

            __swift_destroy_boxed_opaque_existential_0(v60);
            (*(v49 + 8))(v54, v50);
            (*(v26 + 8))(v29, v25);

            goto LABEL_34;
          }

          v57 = 0;
          v36 = sub_23328C9AC();
          if (v36 == 2 || (v36 & 1) == 0)
          {
            (*(v31 + 8))(v34, v30);
            __swift_destroy_boxed_opaque_existential_0(v60);
LABEL_21:
            a1 = 0;
            goto LABEL_22;
          }

          v37 = sub_23328C9DC();
          if (v38)
          {
            a1 = sub_23328C9BC();
            v47 = v39;
            (*(v31 + 8))(v34, v30);
            __swift_destroy_boxed_opaque_existential_0(v60);
            if (v47)
            {
              goto LABEL_21;
            }
          }

          else
          {
            a1 = v37;
            (*(v31 + 8))(v34, v30);
            __swift_destroy_boxed_opaque_existential_0(v60);
          }

          if (a1 < 0)
          {
            __break(1u);
            goto LABEL_28;
          }

LABEL_22:
          v40 = __CFADD__(v2, a1);
          v2 += a1;
          if (v40)
          {
            break;
          }

          (*(v26 + 8))(v29, v25);
          sub_23328CAAC();
          if (!v63)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_36:
        swift_once();
      }
    }

    v17 = v57;
    v18 = sub_2331DDD74();
    if (!v17)
    {
      v2 = v18;
    }
  }

  else
  {
LABEL_7:
    v61 = 0uLL;
    LOBYTE(v62) = 3;
    v15 = sub_23328CC9C();
    (*(*(v15 - 8) + 16))(v8, a1, v15);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for TTSVBError(0);
    sub_2331E2A38(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    swift_allocError();
    TTSVBError.init(_:_:_:)(&v61, v8, 0, v16);
    swift_willThrow();
  }

LABEL_34:
  v45 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_2331DDD74()
{
  v1 = v0;
  v2 = sub_23328CA0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DDF7AC0 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    result = sub_23328CB6C();
    if (v1)
    {
      break;
    }

    v8 = sub_23328C9AC();
    if (v8 == 2 || (v8 & 1) == 0)
    {
      (*(v3 + 8))(v6, v2);
      return 0;
    }

    v9 = sub_23328C9DC();
    if (v10)
    {
      v11 = sub_23328C9BC();
      v1 = v12;
      v13 = *(v3 + 8);
      v3 += 8;
      v13(v6, v2);
      if (v1)
      {
        return 0;
      }
    }

    else
    {
      v11 = v9;
      v14 = *(v3 + 8);
      v3 += 8;
      v14(v6, v2);
    }

    result = v11;
    if ((v11 & 0x8000000000000000) == 0)
    {
      return result;
    }

    __break(1u);
LABEL_14:
    swift_once();
  }

  return result;
}

void _TTSVBFileManager.createCompressedArchive(from:to:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v28 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) init];
  v5 = objc_opt_self();
  v6 = sub_23328CBCC();
  v7 = [v5 readingIntentWithURL:v6 options:8];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2320, &qword_233297640);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_233297620;
  *(v8 + 32) = v7;
  sub_233144EEC(0, &qword_27DDE2DD8, 0x277CCA9E0);
  v9 = v7;
  v10 = sub_23328DBDC();

  v11 = [objc_opt_self() mainQueue];
  v12 = sub_23328CC9C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a2, v12, v15);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v17, v16, v12);
  v20 = (v19 + v18);
  v21 = v27;
  *v20 = v26;
  v20[1] = v21;
  *(v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8)) = v9;
  aBlock[4] = sub_2331E2774;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331889C4;
  aBlock[3] = &block_descriptor_5;
  v22 = _Block_copy(aBlock);
  v23 = v9;

  v24 = v28;
  [v28 coordinateAccessWithIntents:v10 queue:v11 byAccessor:v22];
  _Block_release(v22);
}

uint64_t sub_2331DE204(void *a1, uint64_t a2, void (*a3)(char *), uint64_t a4, void *a5)
{
  v99 = a5;
  v101 = a4;
  v102 = a3;
  v106 = *MEMORY[0x277D85DE8];
  v7 = sub_23328D6EC();
  v100 = *(v7 - 8);
  v8 = v100[8];
  MEMORY[0x28223BE20](v7);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v86 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v86 - v16;
  v18 = type metadata accessor for TTSVBError.Reason(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TTSVBError(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  MEMORY[0x28223BE20](v24);
  MEMORY[0x28223BE20](v25);
  v29 = &v86 - v28;
  if (a1)
  {
    v104 = xmmword_233299200;
    v105 = 3;
    v30 = sub_23328CC9C();
    (*(*(v30 - 8) + 16))(v21, a2, v30);
    swift_storeEnumTagMultiPayload();
    v31 = a1;
    v32 = sub_23328CA6C();
    TTSVBError.init(_:_:_:)(&v104, v21, v32, v29);
    sub_2331E318C(v29, v17, type metadata accessor for TTSVBError);
    swift_storeEnumTagMultiPayload();
    v102(v17);

    sub_233121E04(v17, &unk_27DDE25D0, &unk_233290330);
    v33 = v29;
LABEL_12:
    result = sub_2331E22B4(v33, type metadata accessor for TTSVBError);
    goto LABEL_13;
  }

  v95 = v27;
  v96 = v17;
  v93 = v13;
  v97 = v14;
  v98 = v26;
  if (qword_280D3A8C0 != -1)
  {
    swift_once();
  }

  v103 = qword_280D3A8C8;
  v94 = xmmword_233299200;
  v104 = xmmword_233299200;
  v105 = 3;
  v34 = qword_280D3A8C8;
  v35 = a2;
  _TTSVBFileManager.removeItem(_:problem:)(a2, &v104);
  v36 = v10;
  v92 = v7;

  v37 = [objc_opt_self() defaultManager];
  v38 = [v99 URL];
  v39 = sub_23328CC9C();
  v40 = *(v39 - 1);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v89 = v42;
  v88 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  v43 = &v86 - v88;
  sub_23328CC4C();

  v44 = sub_23328CBCC();
  v87 = v40;
  v45 = *(v40 + 8);
  v99 = v39;
  v90 = v45;
  v91 = v40 + 8;
  v45(v43, v39);
  v46 = sub_23328CBCC();
  *&v104 = 0;
  LODWORD(v34) = [v37 moveItemAtURL:v44 toURL:v46 error:&v104];

  v47 = v100;
  if (!v34)
  {
    v64 = v104;
    v65 = sub_23328CA7C();

    swift_willThrow();
    v66 = v92;
    v104 = v94;
    v105 = 3;
    v67 = sub_23328CC9C();
    (*(*(v67 - 8) + 16))(v21, v35, v67);
    swift_storeEnumTagMultiPayload();
    v100 = v65;
    v68 = sub_23328CA6C();
    v69 = v98;
    TTSVBError.init(_:_:_:)(&v104, v21, v68, v98);
    v70 = sub_233225314();
    (v47[2])(v36, v70, v66);
    v71 = v95;
    sub_2331E318C(v69, v95, type metadata accessor for TTSVBError);
    v72 = sub_23328D6CC();
    v73 = sub_23328DE4C();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = v66;
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *&v104 = v76;
      *v75 = 136315138;
      v77 = TTSVBError.description.getter();
      v79 = v78;
      sub_2331E22B4(v71, type metadata accessor for TTSVBError);
      v80 = sub_23311A8F4(v77, v79, &v104);

      *(v75 + 4) = v80;
      _os_log_impl(&dword_233109000, v72, v73, "Creating export archive failed: %s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v76);
      MEMORY[0x23839CFD0](v76, -1, -1);
      MEMORY[0x23839CFD0](v75, -1, -1);

      (v47[1])(v36, v74);
    }

    else
    {

      sub_2331E22B4(v71, type metadata accessor for TTSVBError);
      (v47[1])(v36, v66);
    }

    v81 = v96;
    v82 = v98;
    sub_2331E318C(v98, v96, type metadata accessor for TTSVBError);
    swift_storeEnumTagMultiPayload();
    v102(v81);

    sub_233121E04(v81, &unk_27DDE25D0, &unk_233290330);
    v33 = v82;
    goto LABEL_12;
  }

  v48 = v104;
  v49 = sub_233225314();
  v51 = v92;
  v50 = v93;
  v52 = (v47[2])(v93, v49, v92);
  v53 = MEMORY[0x28223BE20](v52);
  v54 = &v86 - v88;
  (*(v87 + 16))(&v86 - v88, v35, v99, v53);
  v55 = sub_23328D6CC();
  v56 = sub_23328DE4C();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v98 = &v86;
    v58 = v57;
    v59 = swift_slowAlloc();
    *&v104 = v59;
    *v58 = 136315138;
    v60 = sub_23328CC6C();
    v62 = v61;
    v90(v54, v99);
    v63 = sub_23311A8F4(v60, v62, &v104);

    *(v58 + 4) = v63;
    _os_log_impl(&dword_233109000, v55, v56, "Did write voice export archive to %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x23839CFD0](v59, -1, -1);
    MEMORY[0x23839CFD0](v58, -1, -1);
  }

  else
  {

    v90(v54, v99);
  }

  (v47[1])(v50, v51);
  v85 = v96;
  swift_storeEnumTagMultiPayload();
  v102(v85);
  result = sub_233121E04(v85, &unk_27DDE25D0, &unk_233290330);
LABEL_13:
  v84 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *sub_2331DEBE8()
{
  if (qword_280D3A8C0 != -1)
  {
    swift_once();
  }

  return &qword_280D3A8C8;
}

uint64_t _TTSVBFileManager.TTSVBRelativePath.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23328CC9C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _TTSVBFileManager.TTSVBRelativePath.relativePath.getter()
{
  v1 = (v0 + *(type metadata accessor for _TTSVBFileManager.TTSVBRelativePath(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t _TTSVBFileManager.TTSVBRelativePath.init(url:relativePath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23328CC9C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for _TTSVBFileManager.TTSVBRelativePath(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

void *_TTSVBFileManager.getRelativePathsForFilesInTree(_:)(uint64_t a1)
{
  v64 = a1;
  v58 = type metadata accessor for _TTSVBFileManager.TTSVBRelativePath(0);
  v57 = *(v58 - 8);
  v1 = *(v57 + 64);
  MEMORY[0x28223BE20](v58);
  v63 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = [objc_opt_self() defaultManager];
  v3 = swift_allocObject();
  v65 = v3;
  *(v3 + 16) = 0;
  v70 = (v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2728, &qword_23329F3B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23329B0B0;
  v5 = *MEMORY[0x277CBE8A8];
  *(inited + 32) = *MEMORY[0x277CBE8A8];
  v6 = *MEMORY[0x277CBE868];
  v7 = *MEMORY[0x277CBE8B0];
  *(inited + 40) = *MEMORY[0x277CBE868];
  *(inited + 48) = v7;
  v8 = *MEMORY[0x277CBE8A0];
  v9 = *MEMORY[0x277CBE8C0];
  *(inited + 56) = *MEMORY[0x277CBE8A0];
  *(inited + 64) = v9;
  v10 = *MEMORY[0x277CBE880];
  v11 = *MEMORY[0x277CBE8E8];
  *(inited + 72) = *MEMORY[0x277CBE880];
  *(inited + 80) = v11;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = sub_23317473C(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  swift_arrayDestroy();
  v20 = *(v19 + 16);
  v69 = v19;
  if (v20)
  {
    v21 = sub_2331E1F98(v20, 0);
    v22 = sub_2331E2160(&v73, v21 + 4, v20, v19);

    sub_233113BBC();
    if (v22 != v20)
    {
      __break(1u);
    }
  }

  v23 = sub_23328DE0C();

  if (v23)
  {
    v25 = sub_23328CABC();
    v61 = &v55;
    v60 = v25;
    v59 = *(v25 - 8);
    v26 = *(v59 + 64);
    MEMORY[0x28223BE20](v25);
    v28 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    v62 = v23;
    sub_23328DDDC();
    swift_beginAccess();
    v68 = v28;
    sub_23328CAAC();
    if (v74)
    {
      v67 = MEMORY[0x277D84F90];
      while (1)
      {
        sub_233145134(&v73, v72);
        if (*v70)
        {

          __swift_destroy_boxed_opaque_existential_0(v72);
          (*(v59 + 8))(v68, v60);
          goto LABEL_32;
        }

        v29 = sub_23328CC9C();
        v30 = *(v29 - 8);
        v31 = *(v30 + 64);
        MEMORY[0x28223BE20](v29);
        v33 = &v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_23311B0C0(v72, v71);
        swift_dynamicCast();
        v34 = sub_23328CA0C();
        v35 = *(v34 - 8);
        v36 = *(v35 + 64);
        MEMORY[0x28223BE20](v34);
        v38 = &v55 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
        v39 = v75;
        sub_23328CB6C();
        if (v39)
        {

          __swift_destroy_boxed_opaque_existential_0(v72);
          (*(v59 + 8))(v68, v60);
          v54 = v67;

          (*(v30 + 8))(v33, v29);

          return v54;
        }

        v75 = 0;
        v40 = sub_23328C9AC();
        if (v40 == 2 || (v40 & 1) == 0)
        {
          goto LABEL_24;
        }

        v41 = sub_23328C9EC();
        if (!v42)
        {
          goto LABEL_17;
        }

        if (v41 == 0x726F74535F53442ELL && v42 == 0xE900000000000065)
        {

          goto LABEL_24;
        }

        LODWORD(v56) = sub_23328E54C();

        if ((v56 & 1) == 0)
        {
LABEL_17:
          v44 = sub_2331DF6BC();
          if (v45)
          {
            v46 = v45;
            v47 = *(v30 + 16);
            v56 = v44;
            v47(v63, v33, v29);
            v48 = (v63 + *(v58 + 20));
            *v48 = v56;
            v48[1] = v46;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v49 = v67;
            }

            else
            {
              v49 = sub_2331E1DBC(0, v67[2] + 1, 1, v67, &qword_27DDE2E18, &unk_23329B300, type metadata accessor for _TTSVBFileManager.TTSVBRelativePath);
            }

            v51 = v49[2];
            v50 = v49[3];
            v56 = v51 + 1;
            if (v51 >= v50 >> 1)
            {
              v67 = sub_2331E1DBC(v50 > 1, v51 + 1, 1, v49, &qword_27DDE2E18, &unk_23329B300, type metadata accessor for _TTSVBFileManager.TTSVBRelativePath);
            }

            else
            {
              v67 = v49;
            }

            (*(v35 + 8))(v38, v34);
            __swift_destroy_boxed_opaque_existential_0(v72);
            v52 = v67;
            v67[2] = v56;
            sub_2331E28AC(v63, v52 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v51, type metadata accessor for _TTSVBFileManager.TTSVBRelativePath);
            goto LABEL_25;
          }
        }

LABEL_24:
        (*(v35 + 8))(v38, v34);
        __swift_destroy_boxed_opaque_existential_0(v72);
LABEL_25:
        (*(v30 + 8))(v33, v29);
        sub_23328CAAC();
        if (!v74)
        {
          goto LABEL_30;
        }
      }
    }

    v67 = MEMORY[0x277D84F90];
LABEL_30:
    (*(v59 + 8))(v68, v60);

LABEL_32:
    if (*v70)
    {
      v53 = *v70;
      v54 = v67;

      swift_willThrow();
    }

    else
    {

      return v67;
    }

    return v54;
  }

  else
  {
    __break(1u);
  }

  return result;
}