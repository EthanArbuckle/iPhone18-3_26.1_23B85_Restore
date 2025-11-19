uint64_t sub_23315C938()
{
  v0 = sub_23328E55C();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_23315C98C()
{
  result = qword_27DDE23F0;
  if (!qword_27DDE23F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE23F0);
  }

  return result;
}

uint64_t sub_23315C9E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23315CA28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23315CA98()
{
  result = qword_27DDE2410;
  if (!qword_27DDE2410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2410);
  }

  return result;
}

unint64_t sub_23315CAEC()
{
  result = qword_27DDE23A0;
  if (!qword_27DDE23A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE2398, &unk_233297B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE23A0);
  }

  return result;
}

uint64_t sub_23315CB50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSVBVoiceModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23315CBB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23315CC14()
{
  result = qword_27DDE2418;
  if (!qword_27DDE2418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2418);
  }

  return result;
}

BOOL _s31TextToSpeechVoiceBankingSupport15TTSVBVoiceModelV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23328E54C() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for TTSVBVoiceModel();
  v6 = v5[5];
  if ((sub_23328CE5C() & 1) == 0)
  {
    return 0;
  }

  v7 = v5[6];
  if ((sub_23328CE5C() & 1) == 0)
  {
    return 0;
  }

  v8 = v5[7];
  if ((sub_23328CDCC() & 1) == 0)
  {
    return 0;
  }

  v9 = v5[8];
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  v13 = v10 == *v12 && v11 == v12[1];
  if (!v13 && (sub_23328E54C() & 1) == 0)
  {
    return 0;
  }

  v14 = v5[9];
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v18 = v17[1];
  if (v16)
  {
    if (!v18)
    {
      return 0;
    }

    v19 = *v15 == *v17 && v16 == v18;
    if (!v19 && (sub_23328E54C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v20 = v5[10];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v23[1];
  if (v22)
  {
    if (!v24 || (*v21 != *v23 || v22 != v24) && (sub_23328E54C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v25 = v5[11];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = v28[1];
  if (v27)
  {
    if (!v29 || (*v26 != *v28 || v27 != v29) && (sub_23328E54C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  v30 = v5[12];
  v31 = *(a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  if ((v31 != *v33 || v32 != v33[1]) && (sub_23328E54C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v5[13]) != *(a2 + v5[13]))
  {
    return 0;
  }

  v34 = v5[14];
  v35 = *(a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  if ((v35 != *v37 || v36 != v37[1]) && (sub_23328E54C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v5[15]) != *(a2 + v5[15]) || *(a1 + v5[16]) != *(a2 + v5[16]))
  {
    return 0;
  }

  v38 = v5[17];
  v39 = *(a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  if ((v39 != *v41 || v40 != v41[1]) && (sub_23328E54C() & 1) == 0)
  {
    return 0;
  }

  v42 = v5[18];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2490, &qword_233297F20);
  v66[3] = v66;
  v44 = (*(*(v43 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v45 = MEMORY[0x28223BE20](v43 - 8);
  v47 = v66 - v46;
  v48 = *(v45 + 56);
  sub_23312712C(a1 + v42, v66 - v46);
  sub_23312712C(a2 + v42, &v47[v48]);
  v49 = sub_23328CE1C();
  v50 = *(v49 - 8);
  v51 = *(v50 + 48);
  if (v51(v47, 1, v49) != 1)
  {
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
    v66[2] = v66;
    v53 = (*(*(v52 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v52 - 8);
    v55 = v66 - v54;
    sub_23312712C(v47, v66 - v54);
    v56 = v51(&v47[v48], 1, v49);
    if (v56 != 1)
    {
      v66[1] = v66;
      v57 = *(v50 + 64);
      MEMORY[0x28223BE20](v56);
      v59 = v66 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v50 + 32))(v59, &v47[v48], v49);
      sub_23315D898(&qword_27DDE24A0, MEMORY[0x28220BF60]);
      v60 = v50;
      v61 = sub_23328D90C();
      v62 = *(v60 + 8);
      v62(v59, v49);
      v62(v55, v49);
      sub_233121E04(v47, &qword_27DDE1A18, &unk_233297730);
      if ((v61 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_56;
    }

    (*(v50 + 8))(v55, v49);
LABEL_54:
    sub_233121E04(v47, &qword_27DDE2490, &qword_233297F20);
    return 0;
  }

  if (v51(&v47[v48], 1, v49) != 1)
  {
    goto LABEL_54;
  }

  sub_233121E04(v47, &qword_27DDE1A18, &unk_233297730);
LABEL_56:
  if (*(a1 + v5[19]) == *(a2 + v5[19]))
  {
    v64 = v5[20];
    v65 = *(a1 + v64);
    v69 = *(a2 + v64);
    v70 = v65;
    sub_23315D844();
    sub_23328DB5C();
    sub_23328DB5C();
    return v68 == v67;
  }

  return 0;
}

uint64_t sub_23315D220(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x23839BA90](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_23315BE7C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_23315D2B8()
{
  result = qword_27DDE2448;
  if (!qword_27DDE2448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2448);
  }

  return result;
}

unint64_t sub_23315D30C()
{
  result = qword_27DDE2468;
  if (!qword_27DDE2468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2468);
  }

  return result;
}

unint64_t sub_23315D364()
{
  result = qword_27DDE2470;
  if (!qword_27DDE2470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2470);
  }

  return result;
}

unint64_t sub_23315D3BC()
{
  result = qword_27DDE2478;
  if (!qword_27DDE2478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2478);
  }

  return result;
}

unint64_t sub_23315D414()
{
  result = qword_27DDE2480;
  if (!qword_27DDE2480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2480);
  }

  return result;
}

void sub_23315D508()
{
  v0 = MEMORY[0x277D837D0];
  sub_23328CE8C();
  if (v1 <= 0x3F)
  {
    sub_23328CE1C();
    if (v2 <= 0x3F)
    {
      sub_23315D64C(319, &qword_280D3A260, v0, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for TTSVBVoiceStatus(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for TTSVBVoiceTrainingStatus(319);
          if (v5 <= 0x3F)
          {
            sub_23315D69C();
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

void sub_23315D64C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_23315D69C()
{
  if (!qword_280D3A630)
  {
    sub_23328CE1C();
    v0 = sub_23328E00C();
    if (!v1)
    {
      atomic_store(v0, &qword_280D3A630);
    }
  }
}

uint64_t getEnumTagSinglePayload for TTSVBVoiceModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTSVBVoiceModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23315D844()
{
  result = qword_27DDE2498;
  if (!qword_27DDE2498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2498);
  }

  return result;
}

uint64_t sub_23315D898(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23315D8E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

float sub_23315D944()
{
  v1 = v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_spl;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_23315D9E0(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_spl);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float sub_23315DB90()
{
  v1 = v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_splEnd;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_23315DC2C(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_splEnd);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float sub_23315DDDC()
{
  v1 = v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_splUnnormalized;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_23315DE78(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_splUnnormalized);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float sub_23315E028()
{
  v1 = v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_splEndUnnormalized;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_23315E0C4(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_splEndUnnormalized);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float sub_23315E274()
{
  v1 = v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_splThreshold;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_23315E310(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_splThreshold);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float sub_23315E4D0()
{
  v1 = v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snr;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_23315E56C(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snr);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float sub_23315E72C()
{
  v1 = v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snrEnd;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_23315E7C8(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snrEnd);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float sub_23315E988()
{
  v1 = v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snrUnnormalized;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_23315EA24(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snrUnnormalized);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float sub_23315EBE4()
{
  v1 = v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snrEndUnnormalized;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_23315EC80(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snrEndUnnormalized);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float sub_23315EE40()
{
  v1 = v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snrThreshold;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_23315EEDC(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snrThreshold);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

id TTSVBAudioQualityMeasurement.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTSVBAudioQualityMeasurement.init()()
{
  *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_spl] = 0;
  *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_splEnd] = 0;
  *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_splUnnormalized] = 0;
  *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_splEndUnnormalized] = 0;
  *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_splThreshold] = 0;
  *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snr] = 0;
  *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snrEnd] = 0;
  *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snrUnnormalized] = 0;
  *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snrEndUnnormalized] = 0;
  *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport28TTSVBAudioQualityMeasurement_snrThreshold] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSVBAudioQualityMeasurement();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_23315F1E4()
{
  sub_23328E24C();
  v1 = MEMORY[0x23839B7E0](0x3A6C70735BLL, 0xE500000000000000);
  v2 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0xA0))(v1);
  sub_23328DCFC();
  v3 = MEMORY[0x23839B7E0](0x3A646E456C707320, 0xE800000000000000);
  (*((*v2 & *v0) + 0xB8))(v3);
  sub_23328DCFC();
  v4 = MEMORY[0x23839B7E0](0xD000000000000011, 0x80000002332A7360);
  (*((*v2 & *v0) + 0xD0))(v4);
  sub_23328DCFC();
  v5 = MEMORY[0x23839B7E0](0xD000000000000014, 0x80000002332A7380);
  (*((*v2 & *v0) + 0xE8))(v5);
  sub_23328DCFC();
  v6 = MEMORY[0x23839B7E0](0x657268546C707320, 0xEE003A646C6F6873);
  (*((*v2 & *v0) + 0x100))(v6);
  sub_23328DCFC();
  v7 = MEMORY[0x23839B7E0](0x3A726E7320, 0xE500000000000000);
  (*((*v2 & *v0) + 0x118))(v7);
  sub_23328DCFC();
  v8 = MEMORY[0x23839B7E0](0x3A646E45726E7320, 0xE800000000000000);
  (*((*v2 & *v0) + 0x130))(v8);
  sub_23328DCFC();
  v9 = MEMORY[0x23839B7E0](0xD000000000000011, 0x80000002332A73A0);
  (*((*v2 & *v0) + 0x148))(v9);
  sub_23328DCFC();
  v10 = MEMORY[0x23839B7E0](0xD000000000000014, 0x80000002332A73C0);
  (*((*v2 & *v0) + 0x160))(v10);
  sub_23328DCFC();
  v11 = MEMORY[0x23839B7E0](0x65726854726E7320, 0xEE003A646C6F6873);
  (*((*v2 & *v0) + 0x178))(v11);
  sub_23328DCFC();
  MEMORY[0x23839B7E0](93, 0xE100000000000000);
  return 0;
}

id TTSVBAudioQualityMeasurement.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSVBAudioQualityMeasurement();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TTSVBTCCCloudKitAccess.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x7465736E75;
  }

  if (a1 == 1)
  {
    return 0x6465776F6C6C61;
  }

  return 0x6465696E6564;
}

uint64_t sub_23315FDE0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6465776F6C6C61;
  if (v2 != 1)
  {
    v4 = 0x6465696E6564;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x7465736E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6465776F6C6C61;
  if (*a2 != 1)
  {
    v8 = 0x6465696E6564;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7465736E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23328E54C();
  }

  return v11 & 1;
}

uint64_t sub_23315FED8()
{
  v1 = *v0;
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_23315FF74()
{
  *v0;
  *v0;
  sub_23328DA3C();
}

uint64_t sub_23315FFFC()
{
  v1 = *v0;
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_233160094@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s31TextToSpeechVoiceBankingSupport22TTSVBTCCCloudKitAccessO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_2331600C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6465776F6C6C61;
  if (v2 != 1)
  {
    v5 = 0x6465696E6564;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7465736E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t TTSVBAccessManager.Event.hashValue.getter(char a1)
{
  sub_23328E61C();
  MEMORY[0x23839C380](a1 & 1);
  return sub_23328E66C();
}

uint64_t sub_23316019C@<X0>(void **a1@<X0>, uint64_t (**a2)(unsigned __int8 *a1)@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_233165B14;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_23316023C(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_233165AD8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x90);
  sub_23310C718(v3);
  return v7(v6, v5);
}

uint64_t sub_233160304()
{
  v1 = (v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_eventHandler);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_23310C718(v3);
  return v3;
}

uint64_t sub_233160360(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_eventHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_233164F00(v6);
}

id TTSVBAccessManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTSVBAccessManager.init()()
{
  v18 = sub_23328DEAC();
  v1 = *(v18 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v18);
  v17 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23328DE7C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_23328D80C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_eventHandler];
  *v8 = 0;
  v8[1] = 0;
  v16 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_calloutQueue;
  v9 = sub_233144EEC(0, &qword_280D3A220, 0x277D85C78);
  v15[4] = "unset";
  v15[5] = v9;
  sub_23328D7EC();
  v20 = MEMORY[0x277D84F90];
  v15[3] = sub_233165104(&qword_280D3A230, MEMORY[0x277D85230]);
  v15[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2B80, qword_233290290);
  sub_2331216CC(&qword_280D3A250, &unk_27DDE2B80, qword_233290290);
  sub_23328E14C();
  v10 = *MEMORY[0x277D85260];
  v11 = v1 + 104;
  v12 = *(v1 + 104);
  v15[1] = v11;
  v12(v17, v10, v18);
  *&v0[v16] = sub_23328DEDC();
  v16 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_operationQueue;
  sub_23328D7EC();
  v20 = MEMORY[0x277D84F90];
  sub_23328E14C();
  v12(v17, v10, v18);
  *&v0[v16] = sub_23328DEDC();
  *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_tccNotifyToken] = 0;
  v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_isMonitoringAccountChanges] = 0;
  *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager____lazy_storage___accountStore] = 0;
  *&v0[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_currentChallengeContext] = 0;
  v13 = type metadata accessor for TTSVBAccessManager();
  v19.receiver = v0;
  v19.super_class = v13;
  return objc_msgSendSuper2(&v19, sel_init);
}

id TTSVBAccessManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_tccNotifyToken;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    notify_cancel(v2);
    *&v0[v1] = 0;
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for TTSVBAccessManager();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_233160964()
{
  v1 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager____lazy_storage___accountStore;
  v2 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager____lazy_storage___accountStore);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager____lazy_storage___accountStore);
  }

  else
  {
    v4 = sub_2331609C8(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2331609C8(uint64_t a1)
{
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE22B0, &qword_233297B80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_233297B30;
  v8 = *MEMORY[0x277CB8BA0];
  *(inited + 32) = sub_23328D98C();
  *(inited + 40) = v9;
  sub_23316591C(inited);
  swift_setDeallocating();
  sub_233165A84(inited + 32);
  v10 = objc_allocWithZone(MEMORY[0x277CB8F80]);
  v11 = sub_23328DD0C();

  v12 = [v10 initWithAccountTypes:v11 delegate:a1];

  v13 = sub_2332254AC();
  (*(v3 + 16))(v6, v13, v2);
  v14 = v12;
  v15 = sub_23328D6CC();
  v16 = sub_23328DE4C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v26 = v2;
    v27 = v18;
    v19 = v18;
    *v17 = 136315138;
    v20 = [v14 debugDescription];
    v21 = sub_23328D98C();
    v23 = v22;

    v24 = sub_23311A8F4(v21, v23, &v27);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_233109000, v15, v16, "Creating account store. %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23839CFD0](v19, -1, -1);
    MEMORY[0x23839CFD0](v17, -1, -1);

    (*(v3 + 8))(v6, v26);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return v14;
}

void sub_233160CCC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v81 = a2;
  v82 = a5;
  v80 = a4;
  v6 = sub_23328D7CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23328D80C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v83 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23328D6EC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    if (!a1 || (v85 = v16, objc_opt_self(), (v22 = swift_dynamicCastObjCClass()) == 0))
    {

      return;
    }

    v23 = v22;
    v24 = a1;
    v25 = [v23 devices];
    if (!v25 || (v79 = v12, v26 = v25, v27 = sub_23328DBFC(), v26, v28 = sub_233161430(v27), , !v28))
    {

      return;
    }

    v75 = v24;
    v78 = v7;
    v29 = sub_2332254AC();
    v30 = v85;
    (*(v85 + 16))(v19, v29, v15);

    v31 = sub_23328D6CC();
    v32 = sub_23328DE4C();

    v74 = v32;
    v33 = os_log_type_enabled(v31, v32);
    v84 = v28;
    v76 = v10;
    v77 = v11;
    if (!v33)
    {

      (v30)[1](v19, v15);
LABEL_33:
      v57 = v78;
      v58 = *&v21[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_calloutQueue];
      v59 = swift_allocObject();
      v60 = v80;
      v61 = v81;
      v59[2] = v81;
      v59[3] = v60;
      v62 = v84;
      v59[4] = v82;
      v59[5] = v62;
      aBlock[4] = sub_233165BB0;
      aBlock[5] = v59;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2331221F8;
      aBlock[3] = &block_descriptor_109;
      v63 = _Block_copy(aBlock);
      v64 = v61;

      v65 = v83;
      sub_23328D7DC();
      v86 = MEMORY[0x277D84F90];
      sub_233165104(qword_280D3A270, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
      sub_2331216CC(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
      v66 = v76;
      sub_23328E14C();
      MEMORY[0x23839BC20](0, v65, v66, v63);

      _Block_release(v63);
      (*(v57 + 8))(v66, v6);
      (*(v79 + 8))(v65, v77);

      return;
    }

    v71 = v31;
    v72 = v6;
    v34 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    aBlock[0] = v69;
    v70 = v34;
    *v34 = 136315138;
    v35 = v28 & 0xFFFFFFFFFFFFFF8;
    if (v28 >> 62)
    {
LABEL_30:
      v36 = sub_23328E19C();
      if (v36)
      {
LABEL_9:
        v37 = 0;
        v38 = v28 & 0xC000000000000001;
        v39 = MEMORY[0x277D84F90];
        do
        {
          v73 = v39;
          v40 = v37;
          while (1)
          {
            if (v38)
            {
              v41 = MEMORY[0x23839BFC0](v40, v28);
            }

            else
            {
              if (v40 >= *(v35 + 16))
              {
                goto LABEL_29;
              }

              v41 = *(v28 + 8 * v40 + 32);
            }

            v30 = v41;
            v37 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              __break(1u);
LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

            v42 = [v41 model];
            if (v42)
            {
              break;
            }

            ++v40;
            v28 = v84;
            v30 = v85;
            if (v37 == v36)
            {
              v39 = v73;
              goto LABEL_32;
            }
          }

          v43 = v42;
          v68 = sub_23328D98C();
          v67 = v44;

          v39 = v73;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_233143EE0(0, *(v39 + 2) + 1, 1, v39);
          }

          v46 = *(v39 + 2);
          v45 = *(v39 + 3);
          if (v46 >= v45 >> 1)
          {
            v39 = sub_233143EE0((v45 > 1), v46 + 1, 1, v39);
          }

          *(v39 + 2) = v46 + 1;
          v47 = &v39[16 * v46];
          v48 = v67;
          *(v47 + 4) = v68;
          *(v47 + 5) = v48;
          v28 = v84;
          v30 = v85;
        }

        while (v37 != v36);
        goto LABEL_32;
      }
    }

    else
    {
      v36 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v36)
      {
        goto LABEL_9;
      }
    }

    v39 = MEMORY[0x277D84F90];
LABEL_32:
    v49 = MEMORY[0x23839B960](v39, MEMORY[0x277D837D0]);
    v50 = v30;
    v52 = v51;

    v53 = sub_23311A8F4(v49, v52, aBlock);

    v54 = v70;
    *(v70 + 1) = v53;
    v55 = v71;
    _os_log_impl(&dword_233109000, v71, v74, "[TTSVBAccessManager]: Found the following devices attached to iCloud account. %s", v54, 0xCu);
    v56 = v69;
    __swift_destroy_boxed_opaque_existential_0(v69);
    MEMORY[0x23839CFD0](v56, -1, -1);
    MEMORY[0x23839CFD0](v54, -1, -1);

    (v50)[1](v19, v15);
    v6 = v72;
    goto LABEL_33;
  }
}

uint64_t sub_233161430(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_23328E2DC();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_23311B0C0(i, v6);
    sub_233144EEC(0, &unk_27DDE25F0, 0x277CEC7B0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_23328E2BC();
    v4 = *(v7 + 16);
    sub_23328E2EC();
    sub_23328E2FC();
    sub_23328E2CC();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

void sub_23316153C(void *a1, _BOOL8 a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_23328D6EC();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE25E8, &unk_2332980F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - v15;
  if (a1)
  {
    v17 = a1;
    sub_2331524CC(&v50);
    v48 = v50;
    v49 = v51;
    static TTSVBError.map(_:_:)(a1, &v48, v16);
    sub_2331220AC(v48, *(&v48 + 1), v49);
    swift_storeEnumTagMultiPayload();
    (a2)(v16);
  }

  else
  {
    if (a4 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23328E19C())
    {
      v42 = v12;
      v43 = v9;
      v41 = v8;
      v44 = v13;
      v45 = v16;
      v46 = a3;
      v47 = a2;
      v12 = 0;
      a3 = a4 & 0xC000000000000001;
      v8 = a4 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (a3)
        {
          v19 = MEMORY[0x23839BFC0](v12, a4);
        }

        else
        {
          if (v12 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v19 = *(a4 + 8 * v12 + 32);
        }

        v20 = v19;
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v21 = [v19 model];
        if (!v21)
        {
          __break(1u);
LABEL_28:
          __break(1u);
          return;
        }

        v22 = v21;
        v16 = sub_23328D98C();
        v9 = v23;

        v24._countAndFlagsBits = v16;
        v24._object = v9;
        a2 = TTSVBDeviceExclusivelySupportsPV1(forModel:)(v24);

        if (a2)
        {
          v25 = sub_2332254AC();
          v27 = v42;
          v26 = v43;
          v28 = v41;
          (v43[2])(v42, v25, v41);
          v29 = v20;
          v30 = sub_23328D6CC();
          v31 = sub_23328DE4C();
          if (!os_log_type_enabled(v30, v31))
          {

            (v26[1])(v27, v28);
            goto LABEL_19;
          }

          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          *&v50 = v33;
          *v32 = 136315138;
          v34 = [v29 modelDisplayName];

          if (v34)
          {
            v35 = sub_23328D98C();
            v37 = v36;

            v38 = sub_23311A8F4(v35, v37, &v50);

            *(v32 + 4) = v38;
            _os_log_impl(&dword_233109000, v30, v31, "Found device that only supports PV1 voices. %s", v32, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v33);
            MEMORY[0x23839CFD0](v33, -1, -1);
            MEMORY[0x23839CFD0](v32, -1, -1);

            (v43[1])(v42, v28);
LABEL_19:
            v39 = 1;
            goto LABEL_20;
          }

          goto LABEL_28;
        }

        ++v12;
        if (v13 == i)
        {
          v39 = 0;
LABEL_20:
          a2 = v47;
          v16 = v45;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    v39 = 0;
LABEL_25:
    *v16 = v39;
    swift_storeEnumTagMultiPayload();
    (a2)(v16);
  }

  sub_233121E04(v16, &qword_27DDE25E8, &unk_2332980F0);
}

void sub_233161978(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(a2, a3, a4);
}

uint64_t sub_233161A50()
{
  v1 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_operationQueue);
  sub_23328DEBC();
  return v3;
}

uint64_t sub_233161AAC()
{
  v1 = *(v0 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_operationQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A90, &unk_233290970);
  sub_23328DEBC();
  return v3;
}

uint64_t sub_233161B2C(char a1, int a2)
{
  v58 = a2;
  v4 = sub_23328D6EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v55 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v55 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v55 - v16;
  if (a1 == 1)
  {
  }

  else
  {
    v19 = sub_23328E54C();

    if ((v19 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v20 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v2) + 0xE8))(result) & 1) == 0)
  {
    v25 = sub_2332254AC();
    (*(v5 + 16))(v17, v25, v4);
    v26 = sub_23328D6CC();
    v27 = sub_23328DE3C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_233109000, v26, v27, "Cannot set CloudKit access to 'allowed', isCloudSyncAvailable=false", v28, 2u);
      MEMORY[0x23839CFD0](v28, -1, -1);
    }

    (*(v5 + 8))(v17, v4);
    return 0;
  }

  if ((*((*v20 & *v2) + 0xF8))())
  {
    v21 = sub_2332254AC();
    (*(v5 + 16))(v15, v21, v4);
    v22 = sub_23328D6CC();
    v23 = sub_23328DE3C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_233109000, v22, v23, "Cannot set CloudKit access to 'allowed', iCloudAccountIsBeneficiaryAccount=true", v24, 2u);
      MEMORY[0x23839CFD0](v24, -1, -1);
    }

    (*(v5 + 8))(v15, v4);
    return 0;
  }

  result = (*((*v20 & *v2) + 0x100))();
  if (result)
  {
    v29 = sub_2332254AC();
    (*(v5 + 16))(v12, v29, v4);
    v30 = sub_23328D6CC();
    v31 = sub_23328DE3C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_233109000, v30, v31, "Cannot set CloudKit access to 'allowed', iCloudAccountIsManagedAppleAccount=true", v32, 2u);
      MEMORY[0x23839CFD0](v32, -1, -1);
    }

    (*(v5 + 8))(v12, v4);
    return 0;
  }

LABEL_17:
  if (!*MEMORY[0x277D6C190])
  {
    __break(1u);
    return result;
  }

  v33 = *MEMORY[0x277D6C190];
  v34 = sub_2331693D4();
  v35 = *v34;
  v36 = v34[1];

  v37 = sub_23328D95C();

  if (a1)
  {
    v38 = TCCAccessSetForBundleId();
  }

  else
  {
    v38 = TCCAccessResetForBundleId();
  }

  v39 = v38;

  v40 = sub_2332254AC();
  (*(v5 + 16))(v9, v40, v4);
  v41 = v2;
  v42 = sub_23328D6CC();
  v43 = sub_23328DE4C();

  if (os_log_type_enabled(v42, v43))
  {
    v57 = v39;
    v55 = v4;
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v59 = v45;
    *v44 = 136315650;
    v56 = v33;
    if (a1)
    {
      if (a1 == 1)
      {
        v46 = 0x6465776F6C6C61;
      }

      else
      {
        v46 = 0x6465696E6564;
      }

      if (a1 == 1)
      {
        v47 = 0xE700000000000000;
      }

      else
      {
        v47 = 0xE600000000000000;
      }
    }

    else
    {
      v47 = 0xE500000000000000;
      v46 = 0x7465736E75;
    }

    v48 = v57 != 0;
    v49 = sub_23311A8F4(v46, v47, &v59);

    *(v44 + 4) = v49;
    *(v44 + 12) = 1024;
    *(v44 + 14) = v48;
    *(v44 + 18) = 2080;
    v51 = (*((*MEMORY[0x277D85000] & *v41) + 0x118))(v50);
    if (v51)
    {
      if (v51 == 1)
      {
        v52 = 0xE700000000000000;
        v53 = 0x6465776F6C6C61;
      }

      else
      {
        v52 = 0xE600000000000000;
        v53 = 0x6465696E6564;
      }
    }

    else
    {
      v52 = 0xE500000000000000;
      v53 = 0x7465736E75;
    }

    v33 = v56;
    v54 = sub_23311A8F4(v53, v52, &v59);

    *(v44 + 20) = v54;
    _os_log_impl(&dword_233109000, v42, v43, "Did attempt changing cloud access to '%s' result=%{BOOL}d. ValueAfterSetting=%s", v44, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x23839CFD0](v45, -1, -1);
    MEMORY[0x23839CFD0](v44, -1, -1);

    (*(v5 + 8))(v9, v55);
    if (v57)
    {
      goto LABEL_38;
    }

LABEL_30:

    return 0;
  }

  (*(v5 + 8))(v9, v4);
  if (!v39)
  {
    goto LABEL_30;
  }

LABEL_38:
  if (v58)
  {
    static TTSVBPreferences.hasUserMadeiCloudOptInChoice.setter(1);
  }

  return 1;
}

void sub_233162270()
{
  if (!*MEMORY[0x277D6C190])
  {
    goto LABEL_31;
  }

  v0 = *MEMORY[0x277D6C190];
  v1 = sub_23328D98C();
  v30 = v2;
  v31 = v1;

  if (!*MEMORY[0x277D6C0E8])
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v3 = *MEMORY[0x277D6C0E8];
  v4 = sub_23328D98C();
  v6 = v5;

  if (!*MEMORY[0x277D6C0D0])
  {
LABEL_33:
    __break(1u);
    return;
  }

  v7 = *MEMORY[0x277D6C0D0];
  v28 = sub_23328D98C();
  v29 = v8;

  v9 = sub_2331693D4();
  v10 = *v9;
  v11 = v9[1];

  v12 = sub_23328D95C();

  v13 = TCCAccessCopyInformationForBundleId();

  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      v15 = *(v14 + 16);
      if (v15)
      {
        goto LABEL_8;
      }

LABEL_20:

      return;
    }

    v34[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2550, &qword_23329B6B0);
    sub_23328DBEC();
  }

  v15 = *(v14 + 16);
  if (!v15)
  {
    goto LABEL_20;
  }

LABEL_8:
  v16 = 0;
  v17 = MEMORY[0x277D84F70];
  while (1)
  {
    if (v16 >= *(v14 + 16))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v18 = *(v14 + 8 * v16 + 32);
    if (!*(v18 + 16))
    {
      goto LABEL_10;
    }

    v19 = *(v14 + 8 * v16 + 32);

    v20 = sub_233144260(v4, v6);
    if (v21)
    {
      sub_23311B0C0(*(v18 + 56) + 32 * v20, v34);
      if (swift_dynamicCast())
      {
        break;
      }
    }

LABEL_10:
    if (v15 == ++v16)
    {
      goto LABEL_20;
    }
  }

  if (v32 == v31 && v33 == v30)
  {

    goto LABEL_23;
  }

  v22 = v6;
  v23 = v17;
  v24 = sub_23328E54C();

  if ((v24 & 1) == 0)
  {

    v17 = v23;
    v6 = v22;
    goto LABEL_10;
  }

LABEL_23:

  if (!*(v18 + 16))
  {

    goto LABEL_28;
  }

  v25 = sub_233144260(v28, v29);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
LABEL_28:

    return;
  }

  sub_23311B0C0(*(v18 + 56) + 32 * v25, v34);

  sub_233144EEC(0, &qword_280D39B68, 0x277CCABB0);
  if (swift_dynamicCast())
  {
    [v32 BOOLValue];
  }
}

uint64_t sub_2331625E8()
{
  v1 = v0;
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v69 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v70 = &v67 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v67 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v67 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v67 - v16;
  v18 = (*((*MEMORY[0x277D85000] & *v0) + 0x118))(v15);
  v71 = v18;
  v19 = static TTSVBPreferences.hasUserMadeiCloudOptInChoice.getter();
  if ((AXDeviceSupportsVoiceBankingSpeech() & 1) == 0 && (AXDeviceSupportsVoiceBankingTraining() & 1) == 0)
  {
    v20 = sub_233225630();
    (*(v3 + 16))(v17, v20, v2);
    v21 = sub_23328D6CC();
    v22 = sub_23328DE4C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = v2;
      v24 = v19;
      v25 = v3;
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_233109000, v21, v22, "VoiceBanking speaking and training not supported on this platform. Forcing icloud tcc to denied.", v26, 2u);
      v27 = v26;
      v3 = v25;
      v19 = v24;
      v2 = v23;
      MEMORY[0x23839CFD0](v27, -1, -1);
    }

    (*(v3 + 8))(v17, v2);
    v18 = 2;
  }

  if (v71)
  {
    v28 = sub_23328E54C();

    if ((v28 & 1) == 0 && ((v19 ^ 1) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v30 = sub_233225630();
  (*(v3 + 16))(v14, v30, v2);
  v31 = sub_23328D6CC();
  v32 = sub_23328DE4C();
  if (os_log_type_enabled(v31, v32))
  {
    v68 = v3;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v72 = v34;
    *v33 = 136315394;
    v67 = v2;
    v35 = v19;
    if (v71)
    {
      if (v71 == 1)
      {
        v36 = 0xE700000000000000;
        v37 = 0x6465776F6C6C61;
      }

      else
      {
        v36 = 0xE600000000000000;
        v37 = 0x6465696E6564;
      }
    }

    else
    {
      v36 = 0xE500000000000000;
      v37 = 0x7465736E75;
    }

    v38 = sub_23311A8F4(v37, v36, &v72);

    *(v33 + 4) = v38;
    *(v33 + 12) = 1024;
    *(v33 + 14) = v35 & 1;
    _os_log_impl(&dword_233109000, v31, v32, "iCloud TCC access is set to '%s' hasUserMadeiCloudOptInChoice=%{BOOL}d. Forcing it to denied until user approves", v33, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x23839CFD0](v34, -1, -1);
    MEMORY[0x23839CFD0](v33, -1, -1);

    v2 = v67;
    v3 = v68;
  }

  else
  {
  }

  v29 = (*(v3 + 8))(v14, v2);
  v18 = 2;
LABEL_20:
  v39 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0xF8))(v29))
  {
    v40 = sub_233225630();
    (*(v3 + 16))(v11, v40, v2);
    v41 = sub_23328D6CC();
    v42 = sub_23328DE4C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_233109000, v41, v42, "iCloud account is beneficiary. Forcing icloud tcc to denied", v43, 2u);
      MEMORY[0x23839CFD0](v43, -1, -1);
    }

    (*(v3 + 8))(v11, v2);
    v18 = 2;
  }

  if ((*((*v39 & *v1) + 0x100))())
  {
    v44 = sub_233225630();
    v45 = v70;
    (*(v3 + 16))(v70, v44, v2);
    v46 = sub_23328D6CC();
    v47 = sub_23328DE4C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_233109000, v46, v47, "iCloud account is a Managed-ID account. Forcing icloud tcc to denied", v48, 2u);
      MEMORY[0x23839CFD0](v48, -1, -1);
    }

    (*(v3 + 8))(v45, v2);
LABEL_31:
    v18 = 2;
    v49 = 0xE600000000000000;
    v50 = 0x6465696E6564;
    goto LABEL_32;
  }

  if (v18)
  {
    if (v18 == 1)
    {
      v49 = 0xE700000000000000;
      v50 = 0x6465776F6C6C61;
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v49 = 0xE500000000000000;
  v50 = 0x7465736E75;
LABEL_32:
  if (v71)
  {
    if (v71 == 1)
    {
      v51 = 0xE700000000000000;
      if (v50 != 0x6465776F6C6C61)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v51 = 0xE600000000000000;
      if (v50 != 0x6465696E6564)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    v51 = 0xE500000000000000;
    if (v50 != 0x7465736E75)
    {
      goto LABEL_41;
    }
  }

  if (v49 == v51)
  {
  }

LABEL_41:
  v53 = sub_23328E54C();

  if ((v53 & 1) == 0)
  {
    v54 = sub_233225630();
    v55 = v69;
    (*(v3 + 16))(v69, v54, v2);
    v56 = sub_23328D6CC();
    v57 = v3;
    v58 = sub_23328DE4C();
    if (os_log_type_enabled(v56, v58))
    {
      v68 = v57;
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v72 = v60;
      *v59 = 136315650;
      *(v59 + 4) = sub_23311A8F4(0xD000000000000029, 0x80000002332A7630, &v72);
      *(v59 + 12) = 2080;
      if (v71)
      {
        if (v71 == 1)
        {
          v61 = 0xE700000000000000;
          v62 = 0x6465776F6C6C61;
        }

        else
        {
          v61 = 0xE600000000000000;
          v62 = 0x6465696E6564;
        }
      }

      else
      {
        v61 = 0xE500000000000000;
        v62 = 0x7465736E75;
      }

      v63 = sub_23311A8F4(v62, v61, &v72);

      *(v59 + 14) = v63;
      *(v59 + 22) = 2080;
      if (v18)
      {
        v39 = MEMORY[0x277D85000];
        if (v18 == 1)
        {
          v64 = 0xE700000000000000;
          v65 = 0x6465776F6C6C61;
        }

        else
        {
          v64 = 0xE600000000000000;
          v65 = 0x6465696E6564;
        }
      }

      else
      {
        v64 = 0xE500000000000000;
        v39 = MEMORY[0x277D85000];
        v65 = 0x7465736E75;
      }

      v66 = sub_23311A8F4(v65, v64, &v72);

      *(v59 + 24) = v66;
      _os_log_impl(&dword_233109000, v56, v58, "%s current=%s target=%s", v59, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23839CFD0](v60, -1, -1);
      MEMORY[0x23839CFD0](v59, -1, -1);

      (*(v68 + 8))(v69, v2);
    }

    else
    {

      (*(v57 + 8))(v55, v2);
    }

    return (*((*v39 & *v1) + 0x110))(v18, 0);
  }

  return result;
}

uint64_t sub_233162FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[0] = a5;
  v9 = sub_23328D7CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_23328D80C();
  v14 = *(v23 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v23);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *&v5[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_operationQueue];
  v18 = swift_allocObject();
  v18[2] = v5;
  v18[3] = a1;
  v18[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = v22[0];
  v19 = _Block_copy(aBlock);
  v20 = v5;

  sub_23328D7DC();
  v24 = MEMORY[0x277D84F90];
  sub_233165104(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_2331216CC(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v17, v13, v19);
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v23);
}

uint64_t sub_233163290(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v68 = a3;
  v69 = a4;
  v5 = sub_23328D7CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v71 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23328D80C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v70 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23328D6EC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v61 - v19;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v64 = result;
    v65 = v10;
    v66 = v9;
    v67 = v6;
    if (a1)
    {
      v63 = v5;
      v22 = a1;
      v23 = sub_2332254AC();
      (*(v14 + 16))(v18, v23, v13);
      v24 = a1;
      v25 = sub_23328D6CC();
      v26 = sub_23328DE3C();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        aBlock = v62;
        *v27 = 136315138;
        v28 = sub_23328CA6C();
        v29 = [v28 debugDescription];

        v30 = sub_23328D98C();
        v32 = v31;

        v33 = sub_23311A8F4(v30, v32, &aBlock);

        *(v27 + 4) = v33;
        _os_log_impl(&dword_233109000, v25, v26, "Error occurred registering for store changes: %s", v27, 0xCu);
        v34 = v62;
        __swift_destroy_boxed_opaque_existential_0(v62);
        MEMORY[0x23839CFD0](v34, -1, -1);
        MEMORY[0x23839CFD0](v27, -1, -1);
      }

      (*(v14 + 8))(v18, v13);
      v35 = v64;
      v36 = *&v64[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_operationQueue];
      v37 = swift_allocObject();
      v38 = v69;
      v37[2] = v68;
      v37[3] = v38;
      v37[4] = a1;
      v77 = sub_233165B60;
      v78 = v37;
      aBlock = MEMORY[0x277D85DD0];
      v74 = 1107296256;
      v75 = sub_2331221F8;
      v76 = &block_descriptor_90;
      v39 = _Block_copy(&aBlock);
      v40 = a1;

      v41 = v70;
      sub_23328D7DC();
      v72 = MEMORY[0x277D84F90];
      sub_233165104(qword_280D3A270, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
      sub_2331216CC(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
      v42 = v71;
      v43 = v63;
      sub_23328E14C();
      MEMORY[0x23839BC20](0, v41, v42, v39);
      _Block_release(v39);

      (*(v67 + 8))(v42, v43);
      (*(v65 + 8))(v41, v66);
    }

    else
    {
      v44 = v5;
      v45 = sub_2332254AC();
      (*(v14 + 16))(v20, v45, v13);
      v46 = sub_23328D6CC();
      v47 = sub_23328DE1C();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_233109000, v46, v47, "Did register for account store changes", v48, 2u);
        MEMORY[0x23839CFD0](v48, -1, -1);
      }

      (*(v14 + 8))(v20, v13);
      v49 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_operationQueue;
      v50 = v64;
      v51 = *&v64[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_operationQueue];
      v52 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v77 = sub_233165B50;
      v78 = v52;
      aBlock = MEMORY[0x277D85DD0];
      v74 = 1107296256;
      v75 = sub_23316418C;
      v76 = &block_descriptor_78;
      v53 = _Block_copy(&aBlock);

      v54 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_tccNotifyToken;
      swift_beginAccess();
      notify_register_dispatch("com.apple.tcc.access.changed", &v50[v54], v51, v53);
      swift_endAccess();
      _Block_release(v53);
      v55 = *&v50[v49];
      v56 = swift_allocObject();
      v57 = v69;
      *(v56 + 16) = v68;
      *(v56 + 24) = v57;
      v77 = sub_233165B58;
      v78 = v56;
      aBlock = MEMORY[0x277D85DD0];
      v74 = 1107296256;
      v75 = sub_2331221F8;
      v76 = &block_descriptor_84_0;
      v58 = _Block_copy(&aBlock);

      v59 = v70;
      sub_23328D7DC();
      v72 = MEMORY[0x277D84F90];
      sub_233165104(qword_280D3A270, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
      sub_2331216CC(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
      v60 = v71;
      sub_23328E14C();
      MEMORY[0x23839BC20](0, v59, v60, v58);
      _Block_release(v58);
      (*(v67 + 8))(v60, v44);
      (*(v65 + 8))(v59, v66);
    }
  }

  return result;
}

uint64_t sub_233163ADC(void (*a1)(char *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  v6 = sub_23328CA6C();
  TTSVBError.init(_:_:_:)(0xD00000000000002CLL, 0x80000002332A77B0, 0, 0, v6, v5);
  swift_storeEnumTagMultiPayload();
  a1(v5);
  return sub_233121E04(v5, &unk_27DDE25D0, &unk_233290330);
}

void sub_233163BDC()
{
  v0 = sub_23328D7CC();
  v37 = *(v0 - 8);
  v38 = v0;
  v1 = *(v37 + 64);
  MEMORY[0x28223BE20](v0);
  v35 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_23328D80C();
  v34 = *(v36 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  v33 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23328D6EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2332254AC();
  (*(v6 + 16))(v9, v10, v5);

  v11 = sub_23328D6CC();
  v12 = sub_23328DE1C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315138;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      v17 = (*((*MEMORY[0x277D85000] & *Strong) + 0x118))();

      if (v17)
      {
        if (v17 == 1)
        {
          v18 = 0xE700000000000000;
          v19 = 0x6465776F6C6C61;
        }

        else
        {
          v18 = 0xE600000000000000;
          v19 = 0x6465696E6564;
        }
      }

      else
      {
        v18 = 0xE500000000000000;
        v19 = 0x7465736E75;
      }
    }

    else
    {
      v18 = 0xE90000000000003ELL;
      v19 = 0x6E776F6E6B6E753CLL;
    }

    v20 = sub_23311A8F4(v19, v18, aBlock);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_233109000, v11, v12, "Did get TCC access changed. Voicebanking cloud access = %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23839CFD0](v14, -1, -1);
    MEMORY[0x23839CFD0](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  swift_beginAccess();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    v23 = (*((*MEMORY[0x277D85000] & *v21) + 0x88))();
    if (v23)
    {
      v25 = v23;
      v26 = v24;
      v32[1] = *&v22[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_calloutQueue];
      v27 = swift_allocObject();
      *(v27 + 16) = v25;
      *(v27 + 24) = v26;
      aBlock[4] = sub_233165B6C;
      aBlock[5] = v27;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2331221F8;
      aBlock[3] = &block_descriptor_96;
      v28 = _Block_copy(aBlock);

      v29 = v33;
      sub_23328D7DC();
      v39 = MEMORY[0x277D84F90];
      sub_233165104(qword_280D3A270, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
      sub_2331216CC(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
      v30 = v35;
      v31 = v38;
      sub_23328E14C();
      MEMORY[0x23839BC20](0, v29, v30, v28);
      _Block_release(v28);
      sub_233164F00(v25);
      (*(v37 + 8))(v30, v31);
      (*(v34 + 8))(v29, v36);
    }

    else
    {
    }
  }
}

uint64_t sub_23316418C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_2331641E0(void (*a1)(char *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  swift_storeEnumTagMultiPayload();
  a1(v5);
  return sub_233121E04(v5, &unk_27DDE25D0, &unk_233290330);
}

uint64_t sub_23316429C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_233144EEC(0, &unk_280D39B58, 0x277CB8F30);
    v4 = sub_23328DBFC();
  }

  v7 = a3;
  v6(v4, a3);
}

id sub_233164340()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isPasscodeSet];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2331643B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  v8 = *&v4[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_currentChallengeContext];
  *&v4[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_currentChallengeContext] = v7;
  v9 = v7;

  if (v9)
  {
    v10 = sub_23328D95C();
    v11 = swift_allocObject();
    v11[2] = v4;
    v11[3] = a3;
    v11[4] = a4;
    v14[4] = sub_2331654A8;
    v14[5] = v11;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_2331646DC;
    v14[3] = &block_descriptor_13;
    v12 = _Block_copy(v14);
    v13 = v4;

    [v9 evaluatePolicy:2 localizedReason:v10 reply:v12];
    _Block_release(v12);
  }
}

void sub_233164510(char a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v8 = type metadata accessor for TTSVBError(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v18 - v14;
  if (a1)
  {
    swift_storeEnumTagMultiPayload();
    a4(v15);
    sub_233121E04(v15, &unk_27DDE25D0, &unk_233290330);
LABEL_5:
    v17 = *(a3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_currentChallengeContext);
    *(a3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_currentChallengeContext) = 0;

    return;
  }

  if (a2)
  {
    v16 = sub_23328CA6C();
    sub_2331524CC(&v20);
    v18 = v20;
    v19 = v21;
    static TTSVBError.map(_:_:)(v16, &v18, v11);

    sub_2331220AC(v18, *(&v18 + 1), v19);
    sub_233121720(v11, v15);
    swift_storeEnumTagMultiPayload();
    a4(v15);
    sub_233121E04(v15, &unk_27DDE25D0, &unk_233290330);
    sub_2331220C4(v11);
    goto LABEL_5;
  }

  __break(1u);
}

void sub_2331646DC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_23316481C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_23328D7CC();
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v9);
  v53 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_23328D80C();
  v52 = *(v54 - 8);
  v12 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v51 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23328D6EC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2332254AC();
  (*(v15 + 16))(v18, v19, v14);
  v20 = a1;
  v21 = sub_23328D6CC();
  v22 = sub_23328DE1C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v49 = v14;
    v24 = v23;
    v25 = swift_slowAlloc();
    v50 = a5;
    v48 = v25;
    aBlock[0] = v25;
    *v24 = 136315138;
    v26 = [v20 description];
    v27 = sub_23328D98C();
    v47 = a2;
    v28 = a4;
    v29 = v27;
    v31 = v30;

    v32 = v29;
    a4 = v28;
    v33 = sub_23311A8F4(v32, v31, aBlock);

    *(v24 + 4) = v33;
    _os_log_impl(&dword_233109000, v21, v22, v47, v24, 0xCu);
    v34 = v48;
    __swift_destroy_boxed_opaque_existential_0(v48);
    a5 = v50;
    MEMORY[0x23839CFD0](v34, -1, -1);
    MEMORY[0x23839CFD0](v24, -1, -1);

    v35 = (*(v15 + 8))(v18, v49);
  }

  else
  {

    v35 = (*(v15 + 8))(v18, v14);
  }

  v36 = v57;
  result = (*((*MEMORY[0x277D85000] & *v57) + 0x88))(v35);
  if (result)
  {
    v39 = result;
    v40 = v38;
    v41 = *(v36 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_operationQueue);
    v42 = swift_allocObject();
    *(v42 + 16) = v39;
    *(v42 + 24) = v40;
    aBlock[4] = a4;
    aBlock[5] = v42;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2331221F8;
    aBlock[3] = a5;
    v43 = _Block_copy(aBlock);

    v44 = v51;
    sub_23328D7DC();
    v58 = MEMORY[0x277D84F90];
    sub_233165104(qword_280D3A270, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
    sub_2331216CC(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
    v45 = v53;
    v46 = v56;
    sub_23328E14C();
    MEMORY[0x23839BC20](0, v44, v45, v43);
    _Block_release(v43);
    sub_233164F00(v39);
    (*(v55 + 8))(v45, v46);
    (*(v52 + 8))(v44, v54);
  }

  return result;
}

uint64_t _s31TextToSpeechVoiceBankingSupport22TTSVBTCCCloudKitAccessO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_23328E37C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_233164F00(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_233164F34(unsigned __int8 *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_233160964();
  v5 = [v4 aa_isUsingiCloud];

  *a1 = v5;
}

void sub_233164F88()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = sub_233160964();
  v6 = [v5 aa_primaryAppleAccount];

  v7 = [objc_allocWithZone(MEMORY[0x277CEC7C8]) initWithAccount_];
  if (v7)
  {
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = v4;
    v9[4] = v3;
    v11[4] = sub_233165B98;
    v11[5] = v9;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_233161978;
    v11[3] = &block_descriptor_103;
    v10 = _Block_copy(v11);

    [v7 performRequestWithHandler_];
    _Block_release(v10);
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_233165104(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_23316514C(unsigned __int8 *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_233160964();
  v5 = [v4 aa_primaryAppleAccount];

  if (v5)
  {
    v6 = [objc_opt_self() sharedInstance];
    v7 = [v6 isBeneficiaryForAccount_];
  }

  else
  {
    v7 = 0;
  }

  *a1 = v7;
}

void sub_2331651FC(unsigned __int8 *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_233160964();
  v5 = [v4 aa_primaryAppleAccount];

  if (v5)
  {
    v6 = [v5 aa_isManagedAppleID];
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
}

void sub_23316527C(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_233160964();
  v5 = [v4 aa_primaryAppleAccount];

  if (v5)
  {
    v6 = [v5 aa_firstName];
    if (v6)
    {
      v7 = v6;
      v8 = sub_23328D98C();
      v10 = v9;
    }

    else
    {

      v8 = 0;
      v10 = 0;
    }

    *a1 = v8;
    a1[1] = v10;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }
}

void sub_233165330()
{
  v1 = v0[2];
  if ((*(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_isMonitoringAccountChanges) & 1) == 0)
  {
    v3 = v0[3];
    v2 = v0[4];
    *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport18TTSVBAccessManager_isMonitoringAccountChanges) = 1;
    v4 = sub_233160964();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    v6[2] = v5;
    v6[3] = v3;
    v6[4] = v2;
    v8[4] = sub_233165B40;
    v8[5] = v6;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_23316429C;
    v8[3] = &block_descriptor_74;
    v7 = _Block_copy(v8);

    [v4 registerWithCompletion_];
    _Block_release(v7);
  }
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2331654B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

unint64_t sub_2331654E4()
{
  result = qword_27DDE2558;
  if (!qword_27DDE2558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2558);
  }

  return result;
}

unint64_t sub_23316553C()
{
  result = qword_27DDE2560;
  if (!qword_27DDE2560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2560);
  }

  return result;
}

uint64_t sub_23316591C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE24A8, &qword_233297F28);
    v3 = sub_23328E22C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_23328E61C();

      sub_23328DA3C();
      result = sub_23328E66C();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_23328E54C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_233165AD8(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1 & 1;
  return v2(&v5);
}

uint64_t sub_233165B14(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_233165B60()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_233163ADC(*(v0 + 16));
}

uint64_t sub_233165B6C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(1);
}

void sub_233165C28()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_23328D95C();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_280D3A6B8 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t *sub_233165CA0()
{
  if (qword_280D3A6B0 != -1)
  {
    swift_once();
  }

  return &qword_280D3A6B8;
}

id static NSUserDefaults.voicebankingShared.getter()
{
  if (qword_280D3A6B0 != -1)
  {
    swift_once();
  }

  v1 = qword_280D3A6B8;

  return v1;
}

void sub_233165D4C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_23328D95C();
  v2 = [v0 initWithSuiteName_];

  qword_280D3A6A8 = v2;
}

uint64_t static NSUserDefaults.voicebankingSandboxedShared.getter()
{
  if (qword_280D3A6A0 != -1)
  {
    swift_once();
  }

  v0 = qword_280D3A6A8;
  v1 = qword_280D3A6A8;
  return v0;
}

void (*NSUserDefaults.ttsvb_showInternalAnalysisDuringMicCheck.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;

  v3 = sub_23328D95C();

  v4 = [v1 BOOLForKey_];

  *(a1 + 8) = v4;
  return sub_233165F28;
}

id NSUserDefaults.ttsvb_internalPhraseCountOverride.getter()
{

  v1 = sub_23328D95C();

  v2 = [v0 integerForKey_];

  return v2;
}

void sub_233165FC0(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;

  v4 = sub_23328D95C();

  v5 = [v3 integerForKey_];

  *a2 = v5;
  *(a2 + 8) = v5 == 0;
}

void sub_233166050(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = 0;
  }

  else
  {
    v4 = *a1;
    v3 = sub_23328DD5C();
  }

  v5 = sub_23328D95C();

  [v2 setObject:v3 forKey:v5];
  swift_unknownObjectRelease();
}

void NSUserDefaults.ttsvb_internalPhraseCountOverride.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_23328DD5C();
  }

  v4 = sub_23328D95C();

  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

uint64_t (*NSUserDefaults.ttsvb_internalPhraseCountOverride.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 16) = v1;

  v3 = sub_23328D95C();

  v4 = [v1 integerForKey_];

  *a1 = v4;
  *(a1 + 8) = v4 == 0;
  return sub_233166250;
}

uint64_t sub_233166250(uint64_t *a1)
{
  if (a1[1])
  {
    v2 = 0;
  }

  else
  {
    v3 = *a1;
    v2 = sub_23328DD5C();
  }

  v4 = a1[2];

  v5 = sub_23328D95C();

  [v4 setObject:v2 forKey:v5];

  return swift_unknownObjectRelease();
}

void (*NSUserDefaults.ttsvb_bypassOSSchedulingWhileTraining.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;

  v3 = sub_23328D95C();

  v4 = [v1 BOOLForKey_];

  *(a1 + 8) = v4;
  return sub_233166410;
}

id NSUserDefaults.ttsvb_overrideBuiltInMicPolarPattern.getter()
{

  v1 = sub_23328D95C();

  v2 = [v0 stringForKey_];

  if (v2)
  {
    v3 = sub_23328D98C();
    v5 = v4;

    v2 = *MEMORY[0x277CB8130];
    if (sub_23328D98C() == v3 && v6 == v5)
    {
      goto LABEL_14;
    }

    v8 = sub_23328E54C();

    if ((v8 & 1) == 0)
    {
      v2 = *MEMORY[0x277CB8140];
      if (sub_23328D98C() == v3 && v9 == v5)
      {
        goto LABEL_14;
      }

      v11 = sub_23328E54C();

      if ((v11 & 1) == 0)
      {
        v2 = *MEMORY[0x277CB8138];
        if (sub_23328D98C() == v3 && v12 == v5)
        {
LABEL_14:

          goto LABEL_15;
        }

        v15 = sub_23328E54C();

        if ((v15 & 1) == 0)
        {
          v2 = 0;
          goto LABEL_16;
        }
      }
    }

LABEL_15:
    v13 = v2;
LABEL_16:
  }

  return v2;
}

id sub_2331665B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = NSUserDefaults.ttsvb_overrideBuiltInMicPolarPattern.getter();
  *a2 = result;
  return result;
}

void sub_2331665E0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_2331675C8(v2);
}

void NSUserDefaults.ttsvb_overrideBuiltInMicPolarPattern.setter(void *a1)
{
  sub_2331675C8(a1);
}

void (*NSUserDefaults.ttsvb_overrideBuiltInMicPolarPattern.modify(id *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NSUserDefaults.ttsvb_overrideBuiltInMicPolarPattern.getter();
  return sub_2331666B0;
}

void sub_2331666B0(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v5 = *a1;
  if (a2)
  {
    v3 = v5;
    sub_2331675C8(v5);

    v4 = v3;
  }

  else
  {
    sub_2331675C8(*a1);
    v4 = v5;
  }
}

TextToSpeechVoiceBankingSupport::RecordingMode_optional NSUserDefaults.ttsvb_recordingMode.getter()
{

  v1 = sub_23328D95C();

  v2 = [v0 integerForKey_];

  return RecordingMode.init(rawValue:)(v2);
}

TextToSpeechVoiceBankingSupport::RecordingMode_optional sub_2331667B0@<W0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;

  v4 = sub_23328D95C();

  v5 = [v3 integerForKey_];

  result.value = RecordingMode.init(rawValue:)(v5).value;
  *a2 = v7;
  return result;
}

void sub_23316684C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *a1;
  NSUserDefaults.ttsvb_recordingMode.setter(&v3);
}

void NSUserDefaults.ttsvb_recordingMode.setter(_BYTE *a1)
{
  v2 = v1;
  if (*a1 == 2)
  {
    v3 = 0;
  }

  else
  {
    RecordingMode.rawValue.getter();
    v3 = sub_23328E53C();
  }

  v4 = sub_23328D95C();

  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

void (*NSUserDefaults.ttsvb_recordingMode.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;

  v2 = sub_23328D95C();

  v3 = [v1 integerForKey_];

  RecordingMode.init(rawValue:)(v3);
  return sub_2331669F8;
}

void sub_2331669F8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v5 = *(a1 + 8);
    v4 = &v5;
  }

  else
  {
    v6 = *(a1 + 8);
    v4 = &v6;
  }

  NSUserDefaults.ttsvb_recordingMode.setter(v4);
}

BOOL NSUserDefaults.ttsvb_recordingModeExists.getter()
{

  v1 = sub_23328D95C();

  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_23328E0DC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  sub_23316779C(v4);
  return v2 != 0;
}

void (*NSUserDefaults.ttsvb_hasUserMadeiCloudOptInChoice.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;

  v3 = sub_23328D95C();

  v4 = [v1 BOOLForKey_];

  *(a1 + 8) = v4;
  return sub_233166C08;
}

void (*NSUserDefaults.ttsvb_hasPerformVoiceDatastoreMigrationV1.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;

  v3 = sub_23328D95C();

  v4 = [v1 BOOLForKey_];

  *(a1 + 8) = v4;
  return sub_233166D34;
}

id sub_233166D6C()
{

  v1 = sub_23328D95C();

  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_233166DF0(void **a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v3 = *a1;

  v4 = sub_23328D95C();

  v5 = [v3 BOOLForKey_];

  *a2 = v5;
}

void sub_233166E80(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;

  v4 = sub_23328D95C();

  [v3 setBool:v2 forKey:v4];
}

void sub_233166F24(char a1)
{

  v3 = sub_23328D95C();

  [v1 setBool:a1 & 1 forKey:v3];
}

void (*NSUserDefaults.ttsvb_internalUseServerBasedASR.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;

  v3 = sub_23328D95C();

  v4 = [v1 BOOLForKey_];

  *(a1 + 8) = v4;
  return sub_233167048;
}

void sub_233167064(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);

  v3 = sub_23328D95C();

  [v1 setBool:v2 forKey:v3];
}

id sub_233167120@<X0>(_BYTE *a1@<X8>)
{
  result = sub_233167804();
  *a1 = result & 1;
  return result;
}

id sub_23316724C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_233167804();
  *a1 = result & 1;
  return result;
}

void sub_2331672AC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_280D3A6A0 != -1)
  {
    swift_once();
  }

  v2 = qword_280D3A6A8;
  if (qword_280D3A6A8)
  {

    v3 = sub_23328D95C();

    [v2 setBool:v1 forKey:v3];
  }
}

void sub_23316739C(char a1)
{
  if (qword_280D3A6A0 != -1)
  {
    swift_once();
  }

  v2 = qword_280D3A6A8;
  if (qword_280D3A6A8)
  {

    v3 = sub_23328D95C();

    [v2 setBool:a1 & 1 forKey:v3];
  }
}

void sub_2331674F4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_280D3A6A0 != -1)
  {
    swift_once();
  }

  v2 = qword_280D3A6A8;
  if (qword_280D3A6A8)
  {

    v3 = sub_23328D95C();

    [v2 setBool:v1 forKey:v3];
  }
}

void sub_2331675C8(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_18;
  }

  v2 = sub_23328D98C();
  v4 = v3;
  v5 = *MEMORY[0x277CB8130];
  if (sub_23328D98C() == v2 && v6 == v4)
  {
    goto LABEL_19;
  }

  v8 = sub_23328E54C();

  if (v8)
  {
    goto LABEL_20;
  }

  v5 = *MEMORY[0x277CB8140];
  if (sub_23328D98C() == v2 && v9 == v4)
  {
    goto LABEL_19;
  }

  v11 = sub_23328E54C();

  if (v11)
  {
    goto LABEL_20;
  }

  v5 = *MEMORY[0x277CB8138];
  if (sub_23328D98C() == v2 && v12 == v4)
  {
LABEL_19:
  }

  else
  {
    v14 = sub_23328E54C();

    if ((v14 & 1) == 0)
    {

LABEL_18:
      v5 = 0;
LABEL_22:
      v20 = 0;
      goto LABEL_23;
    }
  }

LABEL_20:
  v15 = v5;

  v16 = v15;
  if (!v5)
  {
    goto LABEL_22;
  }

  v17 = sub_23328D98C();
  v19 = v18;

  v22[0] = v17;
  v22[1] = v19;
  v20 = sub_23328E53C();
  sub_233165A84(v22);
LABEL_23:

  v21 = sub_23328D95C();

  [v1 setObject:v20 forKey:v21];
  swift_unknownObjectRelease();
}

uint64_t sub_23316779C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2660, &qword_233298100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_233167804()
{
  v0 = sub_23328D6EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D3A6A0 != -1)
  {
    swift_once();
  }

  v5 = qword_280D3A6A8;
  if (qword_280D3A6A8)
  {

    v6 = sub_23328D95C();

    v7 = [v5 BOOLForKey_];
  }

  else
  {
    v8 = sub_233225314();
    (*(v1 + 16))(v4, v8, v0);
    v9 = sub_23328D6CC();
    v10 = sub_23328DE3C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_233109000, v9, v10, "voicebankingSandboxedShared domain unexpectedly nil", v11, 2u);
      MEMORY[0x23839CFD0](v11, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    return 0;
  }

  return v7;
}

TextToSpeechVoiceBankingSupport::TTSVBVoiceModelVersion __swiftcall TTSVBVoiceModelVersion.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  if (rawValue._countAndFlagsBits == 50 && rawValue._object == 0xE100000000000000 || (v5 = sub_23328E54C(), (v5 & 1) != 0))
  {

    if (qword_27DDF2C00 != -1)
    {
      swift_once();
    }

    countAndFlagsBits = qword_27DDF2C08;
    object = unk_27DDF2C10;
  }

  *v4 = countAndFlagsBits;
  v4[1] = object;
  result.rawValue._object = v6;
  result.rawValue._countAndFlagsBits = v5;
  return result;
}

uint64_t *sub_233167B90()
{
  if (qword_27DDF2C00 != -1)
  {
    swift_once();
  }

  return &qword_27DDF2C08;
}

BOOL static TTSVBVoiceModelVersion.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v6 = *a1;
  v7 = a1[1];
  v4 = sub_233167C38();
  return v4 < sub_233167C38();
}

uint64_t sub_233167C38()
{
  v1 = *v0;
  v2 = v0[1];
  if (qword_27DDF2BD0 != -1)
  {
    swift_once();
  }

  v3 = qword_27DDF2BD8 == v1 && unk_27DDF2BE0 == v2;
  if (v3 || (sub_23328E54C() & 1) != 0)
  {
    return 0;
  }

  if (qword_27DDF2BE8 != -1)
  {
    swift_once();
  }

  v5 = qword_27DDF2BF0 == v1 && *algn_27DDF2BF8 == v2;
  if (v5 || (sub_23328E54C() & 1) != 0)
  {
    return 1;
  }

  if (qword_27DDF2C00 != -1)
  {
    swift_once();
  }

  if (qword_27DDF2C08 == v1 && unk_27DDF2C10 == v2)
  {
    return 2;
  }

  if (sub_23328E54C())
  {
    return 2;
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t *sub_233167D94()
{
  if (qword_27DDF2BD0 != -1)
  {
    swift_once();
  }

  return &qword_27DDF2BD8;
}

uint64_t *sub_233167DE4()
{
  if (qword_27DDF2BE8 != -1)
  {
    swift_once();
  }

  return &qword_27DDF2BF0;
}

uint64_t TTSVBVoiceModelVersion.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static TTSVBVoiceModelVersion.allCases.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2668, &qword_233298138);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_233290950;
  if (qword_27DDF2BD0 != -1)
  {
    swift_once();
  }

  v1 = qword_27DDF2BE0;
  *(v0 + 32) = qword_27DDF2BD8;
  *(v0 + 40) = v1;
  v2 = qword_27DDF2BE8;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = *algn_27DDF2BF8;
  *(v0 + 48) = qword_27DDF2BF0;
  *(v0 + 56) = v3;
  v4 = qword_27DDF2C00;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_27DDF2C10[0];
  *(v0 + 64) = qword_27DDF2C08;
  *(v0 + 72) = v5;

  return v0;
}

uint64_t sub_233167F80()
{
  v0 = 48;
  v1 = 0xE100000000000000;
  result = sub_23328E54C();
  if (result)
  {
    if (qword_27DDF2C00 != -1)
    {
      swift_once();
    }

    v0 = qword_27DDF2C08;
    v1 = unk_27DDF2C10;
  }

  qword_27DDF2BD8 = v0;
  unk_27DDF2BE0 = v1;
  return result;
}

uint64_t sub_233168038()
{
  v0 = 0x636E61686E452D30;
  v1 = 0xEA00000000006465;
  result = sub_23328E54C();
  if (result)
  {
    if (qword_27DDF2C00 != -1)
    {
      swift_once();
    }

    v0 = qword_27DDF2C08;
    v1 = unk_27DDF2C10;
  }

  qword_27DDF2BF0 = v0;
  *algn_27DDF2BF8 = v1;
  return result;
}

uint64_t sub_233168104()
{
  v0 = 0x495353414C4C2D32;
  v1 = 0xE800000000000000;
  result = sub_23328E54C();
  if (result)
  {
    if (qword_27DDF2C00 != -1)
    {
      swift_once();
    }

    v0 = qword_27DDF2C08;
    v1 = unk_27DDF2C10;
  }

  qword_27DDF2C08 = v0;
  unk_27DDF2C10 = v1;
  return result;
}

uint64_t sub_2331681C8@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a2;
    v8 = a3;
    v9 = a4;
    swift_once();
    a2 = v7;
    a4 = v9;
    a3 = v8;
  }

  v5 = *a3;
  *a4 = *a2;
  a4[1] = v5;
}

uint64_t static TTSVBVoiceModelVersion.validateVersionMigration(from:to:)(uint64_t *a1, uint64_t *a2)
{
  v19 = type metadata accessor for TTSVBError.Reason(0);
  v4 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v6 = (&v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v7 = a1[1];
  v10 = *a2;
  v9 = a2[1];
  v11 = qword_27DDF2BD0;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_27DDF2BD8 == v8 && qword_27DDF2BE0 == v7;
  if (v12 || (sub_23328E54C() & 1) != 0)
  {
    if (qword_27DDF2C00 != -1)
    {
      swift_once();
    }

    if (qword_27DDF2C08 == v10 && qword_27DDF2C10[0] == v9 || (sub_23328E54C() & 1) != 0)
    {
      goto LABEL_30;
    }
  }

  if (qword_27DDF2BE8 != -1)
  {
    swift_once();
  }

  if (v13 = qword_27DDF2BF0, v14 = *algn_27DDF2BF8, qword_27DDF2BF0 == v8) && *algn_27DDF2BF8 == v7 || (sub_23328E54C())
  {
    if (qword_27DDF2C00 != -1)
    {
      swift_once();
    }

    if (qword_27DDF2C08 == v10 && qword_27DDF2C10[0] == v9 || (sub_23328E54C() & 1) != 0)
    {
      goto LABEL_30;
    }
  }

  if (qword_27DDF2C00 != -1)
  {
    swift_once();
  }

  if ((qword_27DDF2C08 != v8 || qword_27DDF2C10[0] != v7) && (sub_23328E54C() & 1) == 0)
  {

    goto LABEL_35;
  }

  if (v13 == v10 && v14 == v9)
  {
LABEL_30:
  }

  v16 = sub_23328E54C();

  if ((v16 & 1) == 0)
  {
LABEL_35:
    v20[0] = 0;
    v20[1] = 0;
    v21 = 3;
    *v6 = v8;
    v6[1] = v7;
    v6[2] = v10;
    v6[3] = v9;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for TTSVBError(0);
    sub_23311A3F8();
    swift_allocError();
    v18 = v17;

    TTSVBError.init(_:_:_:)(v20, v6, 0, v18);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2331685A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *a1 == 50 && v3 == 0xE100000000000000;
  if (v5 || (v6 = *a1, result = sub_23328E54C(), (result & 1) != 0))
  {

    if (qword_27DDF2C00 != -1)
    {
      swift_once();
    }

    v4 = qword_27DDF2C08;
    v3 = qword_27DDF2C10[0];
  }

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t sub_233168650@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_23316865C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23328E61C();
  sub_23328DA3C();
  return sub_23328E66C();
}

uint64_t sub_2331686A8()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_23328DA3C();
}

uint64_t sub_2331686B0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23328E61C();
  sub_23328DA3C();
  return sub_23328E66C();
}

BOOL sub_2331687A8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v6 = *a1;
  v7 = a1[1];
  v4 = sub_233167C38();
  return v4 < sub_233167C38();
}

BOOL sub_233168800(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v4 = sub_233167C38();
  return v4 >= sub_233167C38();
}

BOOL sub_233168858(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v6 = *a1;
  v7 = a1[1];
  v4 = sub_233167C38();
  return v4 >= sub_233167C38();
}

BOOL sub_2331688B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v4 = sub_233167C38();
  return v4 < sub_233167C38();
}

uint64_t sub_233168908@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2668, &qword_233298138);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_233290950;
  if (qword_27DDF2BD0 != -1)
  {
    swift_once();
  }

  v3 = qword_27DDF2BE0;
  *(v2 + 32) = qword_27DDF2BD8;
  *(v2 + 40) = v3;
  v4 = qword_27DDF2BE8;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = *algn_27DDF2BF8;
  *(v2 + 48) = qword_27DDF2BF0;
  *(v2 + 56) = v5;
  v6 = qword_27DDF2C00;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_27DDF2C10[0];
  *(v2 + 64) = qword_27DDF2C08;
  *(v2 + 72) = v7;
  *a1 = v2;
}

uint64_t sub_233168A3C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_233168A6C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_23328E54C();
  }
}

unint64_t sub_233168AA8()
{
  result = qword_27DDE2670;
  if (!qword_27DDE2670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2670);
  }

  return result;
}

unint64_t sub_233168B00()
{
  result = qword_27DDE2678;
  if (!qword_27DDE2678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2678);
  }

  return result;
}

unint64_t sub_233168B5C()
{
  result = qword_27DDE2680;
  if (!qword_27DDE2680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDE2688, &qword_233298470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2680);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_233168BDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_233168C24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

TextToSpeechVoiceBankingSupport::TTSVBVoiceTrainingExperience_optional __swiftcall TTSVBVoiceTrainingExperience.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23328E37C();

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

uint64_t TTSVBVoiceTrainingExperience.rawValue.getter()
{
  if (*v0)
  {
    result = 0x657A696D6974706FLL;
  }

  else
  {
    result = 0x6C616E696769726FLL;
  }

  *v0;
  return result;
}

uint64_t sub_233168D34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x657A696D6974706FLL;
  }

  else
  {
    v4 = 0x6C616E696769726FLL;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xEF413250726F4664;
  }

  if (*a2)
  {
    v6 = 0x657A696D6974706FLL;
  }

  else
  {
    v6 = 0x6C616E696769726FLL;
  }

  if (*a2)
  {
    v7 = 0xEF413250726F4664;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23328E54C();
  }

  return v9 & 1;
}

uint64_t sub_233168DE8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23328E37C();

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

void sub_233168E48(uint64_t *a1@<X8>)
{
  v2 = 0x6C616E696769726FLL;
  if (*v1)
  {
    v2 = 0x657A696D6974706FLL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEF413250726F4664;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_233168F44()
{
  v1 = *v0;
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_233168FD4()
{
  *v0;
  sub_23328DA3C();
}

uint64_t sub_233169050()
{
  v1 = *v0;
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t TTSVBMinimumRequiredPhraseCount(forTrainingMode:)(uint64_t a1)
{
  if (a1 == 2)
  {
    return 1;
  }

  else
  {
    return 32;
  }
}

Swift::Bool __swiftcall TTSVBDeviceExclusivelySupportsPV1(forModel:)(Swift::String forModel)
{
  object = forModel._object;
  countAndFlagsBits = forModel._countAndFlagsBits;
  sub_23328D9FC();
  sub_23311A294();
  v3 = sub_23328E0AC();

  if (v3)
  {
    if (countAndFlagsBits == 0x312C366863746157 && object == 0xE800000000000000)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_23328E54C() ^ 1;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = 0;
  while (2)
  {
    v6 = &unk_284873740 + v5++;
    v7 = 0xEA0000000000322CLL;
    v8 = 0x3331656E6F685069;
    switch(v6[32])
    {
      case 1:
        v7 = 0xEA0000000000332CLL;
        goto LABEL_16;
      case 2:
        v7 = 0xEA0000000000342CLL;
LABEL_16:
        if (countAndFlagsBits != 0x3331656E6F685069)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      case 3:
        v7 = 0xEA0000000000312CLL;
        if (countAndFlagsBits != 0x3331656E6F685069)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      case 4:
        v7 = 0xEA0000000000352CLL;
        goto LABEL_34;
      case 5:
        goto LABEL_34;
      case 6:
        v7 = 0xEA0000000000332CLL;
        goto LABEL_34;
      case 7:
        v7 = 0xEA0000000000342CLL;
        goto LABEL_34;
      case 8:
        v7 = 0xEA0000000000362CLL;
        goto LABEL_34;
      case 9:
        v7 = 0xEA0000000000372CLL;
LABEL_34:
        if (countAndFlagsBits == 0x3431656E6F685069)
        {
          goto LABEL_35;
        }

        goto LABEL_36;
      case 10:
        v7 = 0xEA0000000000382CLL;
        v8 = 0x3431656E6F685069;
        goto LABEL_31;
      case 11:
        goto LABEL_27;
      case 12:
        v7 = 0xEA0000000000332CLL;
        goto LABEL_27;
      case 13:
        v7 = 0xEA0000000000342CLL;
        goto LABEL_27;
      case 14:
        v7 = 0xEA0000000000352CLL;
LABEL_27:
        if (countAndFlagsBits != 0x3531656E6F685069)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      case 15:
        v7 = 0xE800000000000000;
        v9 = 0x343164615069;
        goto LABEL_23;
      case 16:
        v7 = 0xE800000000000000;
        if (countAndFlagsBits != 0x322C343164615069)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      case 17:
        v7 = 0xE800000000000000;
        v9 = 0x366863746157;
LABEL_23:
        if ((v9 & 0xFFFFFFFFFFFFLL | 0x312C000000000000) != countAndFlagsBits)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      default:
LABEL_31:
        if (v8 != countAndFlagsBits)
        {
          goto LABEL_36;
        }

LABEL_35:
        if (v7 != object)
        {
LABEL_36:
          v10 = sub_23328E54C();

          if (v10)
          {
            goto LABEL_40;
          }

          if (v5 == 18)
          {
            return v4 & 1;
          }

          continue;
        }

LABEL_40:
        v4 = 1;
        return v4 & 1;
    }
  }
}

uint64_t sub_233169404()
{
  result = sub_23328D95C();
  qword_280D3A688 = result;
  return result;
}

uint64_t *sub_23316943C()
{
  if (qword_280D3A680 != -1)
  {
    swift_once();
  }

  return &qword_280D3A688;
}

uint64_t sub_2331694B0()
{
  result = sub_23328D95C();
  qword_280D3A698 = result;
  return result;
}

uint64_t *sub_2331694E8()
{
  if (qword_280D3A690 != -1)
  {
    swift_once();
  }

  return &qword_280D3A698;
}

uint64_t sub_23316955C()
{
  result = sub_23328D95C();
  qword_280D3A678 = result;
  return result;
}

uint64_t *sub_233169594()
{
  if (qword_280D3A670 != -1)
  {
    swift_once();
  }

  return &qword_280D3A678;
}

uint64_t sub_233169608()
{
  result = sub_23328D95C();
  qword_280D3A668 = result;
  return result;
}

uint64_t *sub_233169640()
{
  if (qword_280D3A660 != -1)
  {
    swift_once();
  }

  return &qword_280D3A668;
}

id sub_2331696B4(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

Swift::Int __swiftcall String.ttsvb_editDistance(to:)(Swift::String to)
{
  v4 = sub_23328DA4C();
  result = sub_23328DA4C();
  v6 = result;
  v38 = v4;
  if (v4 < 1 || result <= 0)
  {
    if (result <= v4)
    {
      return v4;
    }

    return result;
  }

  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_73;
  }

  if (v7 < 0)
  {
    goto LABEL_74;
  }

  v2 = sub_23328DC3C();
  *(v2 + 16) = v7;
  bzero((v2 + 32), 8 * v6 + 8);
  if (__OFADD__(v4, 1))
  {
    goto LABEL_75;
  }

  v1 = sub_23316B82C(v2, v4 + 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_76;
  }

  while (1)
  {
    if (v1[2] < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v2 = v1[5];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v1[5] = v2;
      if (isUniquelyReferenced_nonNull_native)
      {
        if (!*(v2 + 16))
        {
          goto LABEL_79;
        }

        goto LABEL_10;
      }
    }

    v2 = sub_23316B804(v2);
    v1[5] = v2;
    if (!*(v2 + 16))
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

LABEL_10:
    *(v2 + 32) = 1;
    v9 = v38 - 1;
    if (v38 != 1)
    {
      v30 = v1 + 6;
      v3 = 2;
      while (v3 < v1[2])
      {
        v2 = *v30;
        v31 = swift_isUniquelyReferenced_nonNull_native();
        *v30 = v2;
        if (v31)
        {
          if (!*(v2 + 16))
          {
            goto LABEL_51;
          }
        }

        else
        {
          v2 = sub_23316B804(v2);
          *v30 = v2;
          if (!*(v2 + 16))
          {
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }
        }

        *(v2 + 32) = v3++;
        ++v30;
        if (!--v9)
        {
          goto LABEL_11;
        }
      }

LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

LABEL_11:
    if (v1[2])
    {
      v3 = (v1 + 4);
      v2 = v1[4];
      result = swift_isUniquelyReferenced_nonNull_native();
      v1[4] = v2;
      if (result)
      {
        goto LABEL_13;
      }

      goto LABEL_81;
    }

LABEL_80:
    __break(1u);
LABEL_81:
    result = sub_23316B804(v2);
    v2 = result;
LABEL_13:
    if (*(v2 + 16) < 2uLL)
    {
      __break(1u);
      goto LABEL_83;
    }

    *(v2 + 40) = 1;
    *v3 = v2;
    v9 = v6 - 1;
    if (v6 == 1)
    {
      break;
    }

LABEL_52:
    v32 = 6;
    while (v1[2])
    {
      v2 = *v3;
      v33 = swift_isUniquelyReferenced_nonNull_native();
      *v3 = v2;
      if ((v33 & 1) == 0)
      {
        v2 = sub_23316B804(v2);
        *v3 = v2;
      }

      if ((v32 - 4) >= *(v2 + 16))
      {
        goto LABEL_72;
      }

      *(v2 + 8 * v32) = v32 - 4;
      ++v32;
      if (!--v9)
      {
        goto LABEL_15;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    v1 = sub_23316B818(v1);
  }

LABEL_15:
  v10 = 0;
  v11 = 1;
  while (2)
  {
    v12 = 0;
    do
    {
      v13 = v6;
      sub_23328DA7C();
      v2 = sub_23328DAFC();
      v6 = v14;
      sub_23328DA7C();
      v16 = v2 == sub_23328DAFC() && v6 == v15;
      if (v16)
      {

        v17 = 0;
      }

      else
      {
        v2 = sub_23328E54C();

        v17 = (v2 & 1) == 0;
      }

      v18 = v1[2];
      if (v10 >= v18)
      {
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
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      v2 = v12 + 1;
      v19 = *(v3 + 8 * v10);
      if (v12 + 1 >= *(v19 + 16))
      {
        goto LABEL_63;
      }

      v20 = v19 + 8 * v12;
      v21 = *(v20 + 40);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_64;
      }

      if (v11 >= v18)
      {
        goto LABEL_65;
      }

      v6 = *(v3 + 8 * v11);
      if (v12 >= *(v6 + 16))
      {
        goto LABEL_66;
      }

      v24 = *(v6 + 8 * v12 + 32);
      v22 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v22)
      {
        goto LABEL_67;
      }

      v26 = *(v20 + 32);
      v22 = __OFADD__(v26, v17);
      v27 = v26 + v17;
      if (v22)
      {
        goto LABEL_68;
      }

      if (v25 < v23)
      {
        v23 = v25;
      }

      if (v27 >= v23)
      {
        v28 = v23;
      }

      else
      {
        v28 = v27;
      }

      v29 = *(v3 + 8 * v11);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 8 * v11) = v6;
      if ((result & 1) == 0)
      {
        result = sub_23316B804(v6);
        v6 = result;
        *(v3 + 8 * v11) = result;
      }

      if (v2 >= *(v6 + 16))
      {
        goto LABEL_69;
      }

      *(v6 + 8 * v12++ + 40) = v28;
      v6 = v13;
    }

    while (v13 != v12);
    v10 = v11;
    v16 = v11++ == v38;
    if (!v16)
    {
      continue;
    }

    break;
  }

  v34 = v1[2];
  if (v34)
  {
    v35 = *(v3 + 8 * v34 - 8);
    v36 = *(v35 + 16);
    if (!v36)
    {
      goto LABEL_84;
    }

    v37 = *(v35 + 8 * v36 + 24);

    return v37;
  }

LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
  return result;
}

uint64_t String.ttsvb_normalizedForSpeechComparison.getter(uint64_t a1, unint64_t a2)
{

  v5 = sub_233169E3C(0x7FFFFFFFFFFFFFFFLL, 1, a1, a2, v4);
  swift_getKeyPath();
  v6 = *(v5 + 16);
  if (v6)
  {
    v31 = MEMORY[0x277D84F90];
    sub_23312676C(0, v6, 0);
    v7 = v31;
    v8 = (v5 + 56);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v26 = *(v8 - 3);
      v27 = v9;
      v28 = v10;

      swift_getAtKeyPath();

      v11 = v29;
      v12 = v30;
      v31 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_23312676C((v13 > 1), v14 + 1, 1);
        v7 = v31;
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
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A98, &unk_2332985F0);
  sub_23315246C(&qword_280D39BB0, &unk_27DDE1A98, &unk_2332985F0);
  v16 = sub_23328D8FC();
  v18 = v17;

  *&v26 = v16;
  *(&v26 + 1) = v18;
  v19 = sub_23328C8EC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328C8DC();
  sub_23311A294();
  v24 = sub_23328E05C();
  (*(v20 + 8))(v23, v19);

  return v24;
}

uint64_t sub_233169E3C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  v8 = a3;
  v12 = HIBYTE(a4) & 0xF;
  if (a1)
  {
    v13 = (a4 & 0x2000000000000000) != 0 ? HIBYTE(a4) & 0xF : a3 & 0xFFFFFFFFFFFFLL;
    if (v13)
    {
      v14 = 4 * v13;
      v6 = MEMORY[0x277D84F90];
      v11 = 15;
      do
      {
        v9 = v11 >> 14;
        if (v11 >> 14 == v14)
        {
          break;
        }

        while (1)
        {
          sub_23328DAFC();
          v15 = sub_23328D8EC();

          if (v15)
          {
            do
            {
              v9 = sub_23328DA5C() >> 14;
              if (v9 == v14)
              {
                goto LABEL_28;
              }

              sub_23328DAFC();
              v10 = sub_23328D8EC();
            }

            while ((v10 & 1) != 0);
          }

          if (v11 >> 14 != v9 || (a2 & 1) == 0)
          {
            break;
          }

          v11 = sub_23328DA5C();
          v9 = v11 >> 14;
          if (v11 >> 14 == v14)
          {
            goto LABEL_28;
          }
        }

        if (v9 < v11 >> 14)
        {
          __break(1u);
          return result;
        }

        v10 = sub_23328DB0C();
        v18 = v17;
        v30 = v20;
        v31 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_23316B6F8(0, *(v6 + 2) + 1, 1, v6);
        }

        v9 = *(v6 + 2);
        v21 = *(v6 + 3);
        if (v9 >= v21 >> 1)
        {
          v6 = sub_23316B6F8((v21 > 1), v9 + 1, 1, v6);
        }

        *(v6 + 2) = v9 + 1;
        v22 = &v6[32 * v9];
        *(v22 + 4) = v10;
        *(v22 + 5) = v18;
        *(v22 + 6) = v31;
        *(v22 + 7) = v30;
        v11 = sub_23328DA5C();
      }

      while (*(v6 + 2) != a1);
LABEL_28:
      if (v11 >> 14 == v14 && (a2 & 1) != 0)
      {

        return v6;
      }

      if (v14 < v11 >> 14)
      {
        __break(1u);
      }

      else
      {
        v8 = sub_23328DB0C();
        v9 = v26;
        v10 = v27;
        v11 = v28;

        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_34:
          v5 = *(v6 + 2);
          a5 = *(v6 + 3);
LABEL_35:
          v7 = v5 + 1;
          if (v5 < a5 >> 1)
          {
LABEL_36:
            *(v6 + 2) = v7;
            v29 = &v6[32 * v5];
            *(v29 + 4) = v8;
            *(v29 + 5) = v9;
            *(v29 + 6) = v10;
            *(v29 + 7) = v11;
            return v6;
          }

LABEL_39:
          v6 = sub_23316B6F8((a5 > 1), v7, 1, v6);
          goto LABEL_36;
        }
      }

      v6 = sub_23316B6F8(0, *(v6 + 2) + 1, 1, v6);
      goto LABEL_34;
    }
  }

  if ((a4 & 0x2000000000000000) == 0)
  {
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v12 || (a2 & 1) == 0)
  {
    v8 = sub_23328DB0C();
    v9 = v23;
    v10 = v24;
    v11 = v25;

    v6 = sub_23316B6F8(0, 1, 1, MEMORY[0x277D84F90]);
    v5 = *(v6 + 2);
    a5 = *(v6 + 3);
    goto LABEL_35;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23316A1C8@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  sub_23316B8C8();
  result = sub_23328E04C();
  *a2 = result;
  a2[1] = v4;
  return result;
}

Swift::UInt64 __swiftcall TTSVBTimestampInNanoseconds(when:)(Swift::UInt64_optional when)
{
  is_nil = when.is_nil;
  value = when.value;
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  mach_timebase_info(v5);
  if (is_nil)
  {
    value = mach_absolute_time();
  }

  if (!is_mul_ok(value, v5[0].numer))
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (!v5[0].denom)
  {
    goto LABEL_7;
  }

  v3 = *MEMORY[0x277D85DE8];
  return value * v5[0].numer / v5[0].denom;
}

Swift::Double __swiftcall TTSVBTimestampInSeconds(when:)(Swift::UInt64_optional when)
{
  is_nil = when.is_nil;
  value = when.value;
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  mach_timebase_info(v5);
  if (is_nil)
  {
    value = mach_absolute_time();
  }

  if (!is_mul_ok(value, v5[0].numer))
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  if (!v5[0].denom)
  {
    goto LABEL_7;
  }

  v3 = *MEMORY[0x277D85DE8];
  return (value * v5[0].numer / v5[0].denom) / 1000000000.0;
}

uint64_t sub_23316A360(double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D839F8];
  *(v2 + 16) = xmmword_233297B30;
  v4 = MEMORY[0x277D83A80];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  return sub_23328D9BC();
}

uint64_t static Array<A>.fromData(_:)()
{
  v0 = sub_23328C85C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_23328C84C();
  sub_23328DC5C();
  swift_getWitnessTable();
  sub_23328C83C();

  return v4;
}

uint64_t Array<A>.toData()()
{
  v0 = sub_23328C8BC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_23328C8AC();
  sub_23328DC5C();
  swift_getWitnessTable();
  v3 = sub_23328C89C();

  return v3;
}

Swift::Bool __swiftcall TTSVBDeviceSupportsV2Voices()()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    deviceSupportsGenerativeModelSystems = MobileGestalt_get_deviceSupportsGenerativeModelSystems();

    LOBYTE(v0) = deviceSupportsGenerativeModelSystems;
  }

  else
  {
    __break(1u);
  }

  return v0;
}

void TTSVBRequireDiskSpaceAvailableForTraining(inMode:)(uint64_t a1)
{
  v129 = a1;
  v128 = type metadata accessor for TTSVBError.Reason(0);
  v1 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v3 = v105 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23328D6EC();
  v130 = *(v4 - 8);
  v5 = *(v130 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v105 - v9;
  v11 = type metadata accessor for TTSVBPath();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *sub_2331DEBE8();
  *&v132 = v15;
  swift_storeEnumTagMultiPayload();
  v16 = sub_23328CC9C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v15;
  TTSVBPath.url.getter(v20);
  sub_23316B91C(v14);
  v22 = v131;
  sub_2331E17B4(v20);
  if (v22)
  {
    (*(v17 + 8))(v20, v16);
  }

  else
  {
    v24 = v23;
    v126 = 0;
    v127 = v3;
    v25 = v7;
    v26 = v130;
    (*(v17 + 8))(v20, v16);

    v27 = v129;
    if (v129 == 2)
    {
      v28 = 486000000;
    }

    else
    {
      v28 = 73000000;
    }

    v29 = v4;
    if (v24 >= v28)
    {
      v67 = sub_233225514();
      (*(v26 + 16))(v25, v67, v4);
      v68 = sub_23328D6CC();
      v69 = sub_23328DE4C();
      v70 = v69;
      if (os_log_type_enabled(v68, v69))
      {
        v71 = swift_slowAlloc();
        LODWORD(v124) = v70;
        v72 = v71;
        v125 = swift_slowAlloc();
        v135 = v125;
        v121 = v72;
        *v72 = 134218498;
        *(v72 + 4) = v27;
        *(v72 + 12) = 2080;
        v134 = v28;
        v73 = sub_23328CA4C();
        v119 = v105;
        v74 = *(v73 - 8);
        v127 = v73;
        v128 = v74;
        v114 = *(v74 + 64);
        MEMORY[0x28223BE20](v73);
        v120 = (v75 + 15) & 0xFFFFFFFFFFFFFFF0;
        v76 = v105 - v120;
        v77 = sub_23328CA1C();
        v108 = v105;
        v78 = *(v77 - 8);
        v123 = v25;
        v79 = v78;
        v117 = *(v78 + 64);
        v80 = MEMORY[0x28223BE20](v77);
        v118 = (v81 + 15) & 0xFFFFFFFFFFFFFFF0;
        v129 = v29;
        v82 = v105 - v118;
        LODWORD(v116) = *MEMORY[0x277CC8DE0];
        v115 = *(v79 + 104);
        v115(v105 - v118, v80);
        v83 = sub_23328CA3C();
        v131 = v24;
        v122 = v68;
        v84 = v83;
        v111 = v83;
        v85 = *(v83 - 8);
        v112 = *(v85 + 64);
        MEMORY[0x28223BE20](v83);
        v113 = (v86 + 15) & 0xFFFFFFFFFFFFFFF0;
        v87 = v105 - v113;
        sub_23328CA2C();
        sub_23328C82C();
        v110 = *(v85 + 8);
        v110(v87, v84);
        v109 = *(v79 + 8);
        v109(v82, v77);
        v108 = sub_233125A3C();
        v107 = sub_2331259F0();
        v88 = v127;
        sub_23328E0BC();
        v89 = *(v128 + 8);
        v128 += 8;
        v106 = v89;
        (v89)(v76, v88);
        v90 = sub_23311A8F4(v132, *(&v132 + 1), &v135);

        v119 = v105;
        v92 = v121;
        *(v121 + 14) = v90;
        *(v92 + 22) = 2080;
        v134 = v131;
        MEMORY[0x28223BE20](v91);
        v93 = v105 - v120;
        v95 = MEMORY[0x28223BE20](v94);
        v96 = v105 - v118;
        v97 = (v115)(v105 - v118, v116, v77, v95);
        MEMORY[0x28223BE20](v97);
        v98 = v105 - v113;
        sub_23328CA2C();
        sub_23328C82C();
        v110(v98, v111);
        v109(v96, v77);
        v99 = v127;
        sub_23328E0BC();
        (v106)(v93, v99);
        v100 = sub_23311A8F4(v132, *(&v132 + 1), &v135);

        *(v92 + 24) = v100;
        v101 = v122;
        _os_log_impl(&dword_233109000, v122, v124, "Sufficient space available to train model. Mode=%ld, Required space=%s, Available space=%s", v92, 0x20u);
        v102 = v125;
        swift_arrayDestroy();
        MEMORY[0x23839CFD0](v102, -1, -1);
        MEMORY[0x23839CFD0](v92, -1, -1);

        (*(v130 + 8))(v123, v129);
      }

      else
      {

        (*(v26 + 8))(v25, v4);
      }
    }

    else
    {
      v131 = v24;
      v30 = sub_233225514();
      v31 = v10;
      (*(v26 + 16))(v10, v30, v4);
      v32 = sub_23328D6CC();
      v33 = sub_23328DE3C();
      v34 = v33;
      if (os_log_type_enabled(v32, v33))
      {
        v35 = swift_slowAlloc();
        LODWORD(v121) = v34;
        v36 = v35;
        v122 = swift_slowAlloc();
        v135 = v122;
        v125 = v36;
        *v36 = 134218498;
        *(v36 + 4) = v27;
        *(v36 + 12) = 2080;
        v134 = v28;
        v124 = sub_23328CA4C();
        v116 = v105;
        v126 = *(v124 - 8);
        v117 = *(v126 + 64);
        MEMORY[0x28223BE20](v124);
        v118 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
        v38 = v105 - v118;
        v39 = sub_23328CA1C();
        v120 = v31;
        v40 = v39;
        v106 = v105;
        v41 = *(v39 - 8);
        v114 = v41[8];
        v42 = MEMORY[0x28223BE20](v39);
        v115 = ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
        v129 = v29;
        v44 = (v105 - v115);
        LODWORD(v113) = *MEMORY[0x277CC8DE0];
        v112 = v41[13];
        v112(v105 - v115, v42);
        v45 = sub_23328CA3C();
        v123 = v28;
        v109 = v45;
        v46 = *(v45 - 8);
        v119 = v32;
        v47 = v46;
        v110 = *(v46 + 64);
        MEMORY[0x28223BE20](v45);
        v111 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
        v49 = v105 - v111;
        sub_23328CA2C();
        sub_23328C82C();
        v108 = *(v47 + 8);
        v108(v49, v45);
        v107 = v41[1];
        v107(v44, v40);
        v106 = sub_233125A3C();
        v105[1] = sub_2331259F0();
        v50 = v124;
        sub_23328E0BC();
        v51 = *(v126 + 8);
        v126 += 8;
        v105[0] = v51;
        v51(v38, v50);
        v52 = sub_23311A8F4(v132, *(&v132 + 1), &v135);

        v116 = v105;
        v54 = v125;
        *(v125 + 14) = v52;
        *(v54 + 22) = 2080;
        v55 = v131;
        v134 = v131;
        MEMORY[0x28223BE20](v53);
        v56 = v105 - v118;
        v58 = MEMORY[0x28223BE20](v57);
        v59 = (v105 - v115);
        v60 = (v112)(v105 - v115, v113, v40, v58);
        MEMORY[0x28223BE20](v60);
        v61 = v105 - v111;
        sub_23328CA2C();
        sub_23328C82C();
        v108(v61, v109);
        v107(v59, v40);
        v28 = v123;
        v62 = v124;
        sub_23328E0BC();
        (v105[0])(v56, v62);
        v63 = sub_23311A8F4(v132, *(&v132 + 1), &v135);

        v64 = v125;
        *(v125 + 24) = v63;
        v65 = v119;
        _os_log_impl(&dword_233109000, v119, v121, "Not enough space available to train model. Mode=%ld, Required space=%s, Available space=%s", v64, 0x20u);
        v66 = v122;
        swift_arrayDestroy();
        MEMORY[0x23839CFD0](v66, -1, -1);
        MEMORY[0x23839CFD0](v64, -1, -1);

        (*(v130 + 8))(v120, v129);
      }

      else
      {

        (*(v26 + 8))(v31, v4);
        v55 = v131;
      }

      v103 = v127;
      v132 = xmmword_233298590;
      v133 = 3;
      *v127 = v55;
      *(v103 + 8) = v28;
      swift_storeEnumTagMultiPayload();
      type metadata accessor for TTSVBError(0);
      sub_23311A3F8();
      swift_allocError();
      TTSVBError.init(_:_:_:)(&v132, v103, 0, v104);
      swift_willThrow();
    }
  }
}

char *sub_23316B4C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE26C0, &qword_233298770);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *sub_23316B5C4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE26C8, &qword_233298778);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE26D0, &unk_233298780);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23316B6F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE26B8, &qword_233298768);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23316B82C(uint64_t result, uint64_t a2)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE26D0, &unk_233298780);
    v4 = sub_23328DC3C();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

unint64_t sub_23316B8C8()
{
  result = qword_27DDE2690;
  if (!qword_27DDE2690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2690);
  }

  return result;
}

uint64_t sub_23316B91C(uint64_t a1)
{
  v2 = type metadata accessor for TTSVBPath();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23316B97C()
{
  result = qword_27DDE2698;
  if (!qword_27DDE2698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2698);
  }

  return result;
}

unint64_t sub_23316BA24()
{
  result = qword_27DDE26B0;
  if (!qword_27DDE26B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE26B0);
  }

  return result;
}

void sub_23316BA78()
{
  if (*(v0 + 24) != 1)
  {
    v3 = *(v0 + 16);
    return;
  }

  v1 = (*(*v0 + 448))();
  v2 = ceilf(v1 / (*(*v0 + 472))());
  if ((LODWORD(v2) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
  }

  else if (v2 > -9.2234e18)
  {
    if (v2 < 9.2234e18)
    {
      *(v0 + 16) = v2;
      *(v0 + 24) = 0;
      return;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
}

uint64_t sub_23316BB58(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 24) = 0;
  return result;
}

void *(*sub_23316BB64(void *a1))(void *result)
{
  a1[1] = v1;
  sub_23316BA78();
  *a1 = v3;
  return sub_23316BBAC;
}

void *sub_23316BBAC(void *result)
{
  v1 = result[1];
  *(v1 + 16) = *result;
  *(v1 + 24) = 0;
  return result;
}

void sub_23316BBBC()
{
  if (*(v0 + 40) != 1)
  {
    v3 = *(v0 + 32);
    return;
  }

  v1 = (*(*v0 + 184))();
  v2 = round(log2(v1));
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v2 > -1.0)
  {
    if (v2 < 1.84467441e19)
    {
      *(v0 + 32) = v2;
      *(v0 + 40) = 0;
      return;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
}

uint64_t sub_23316BC60(uint64_t result)
{
  *(v1 + 32) = result;
  *(v1 + 40) = 0;
  return result;
}

void *(*sub_23316BC6C(void *a1))(void *result)
{
  a1[1] = v1;
  sub_23316BBBC();
  *a1 = v3;
  return sub_23316BCB4;
}

void *sub_23316BCB4(void *result)
{
  v1 = result[1];
  *(v1 + 32) = *result;
  *(v1 + 40) = 0;
  return result;
}

uint64_t sub_23316BCC4()
{
  if (*(v0 + 56) != 1)
  {
    return *(v0 + 48);
  }

  v1 = (*(*v0 + 208))();
  if (v1 >= 0x40)
  {
    result = 0;
  }

  else
  {
    result = 1 << v1;
  }

  *(v0 + 48) = result;
  *(v0 + 56) = 0;
  return result;
}

uint64_t sub_23316BD2C(uint64_t result)
{
  *(v1 + 48) = result;
  *(v1 + 56) = 0;
  return result;
}

void *(*sub_23316BD38(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  *a1 = sub_23316BCC4();
  return sub_23316BD80;
}

void *sub_23316BD80(void *result)
{
  v1 = result[1];
  *(v1 + 48) = *result;
  *(v1 + 56) = 0;
  return result;
}

uint64_t sub_23316BD90()
{
  if (*(v0 + 72) != 1)
  {
    return *(v0 + 64);
  }

  result = (*(*v0 + 232))() / 2;
  *(v0 + 64) = result;
  *(v0 + 72) = 0;
  return result;
}

uint64_t sub_23316BDF0(uint64_t result)
{
  *(v1 + 64) = result;
  *(v1 + 72) = 0;
  return result;
}

void *(*sub_23316BDFC(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  *a1 = sub_23316BD90();
  return sub_23316BE44;
}

void *sub_23316BE44(void *result)
{
  v1 = result[1];
  *(v1 + 64) = *result;
  *(v1 + 72) = 0;
  return result;
}

float sub_23316BE54()
{
  if ((*(v0 + 80) & 1) == 0)
  {
    return *(v0 + 76);
  }

  result = 2.0 / (*(*v0 + 256))();
  *(v0 + 76) = result;
  *(v0 + 80) = 0;
  return result;
}

uint64_t *(*sub_23316BEC8(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  *(a1 + 8) = sub_23316BE54();
  return sub_23316BF10;
}

uint64_t *sub_23316BF10(uint64_t *result)
{
  v1 = *result;
  *(v1 + 76) = *(result + 2);
  *(v1 + 80) = 0;
  return result;
}

uint64_t sub_23316BF24()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = v0[11];

    return v1;
  }

  result = (*(*v0 + 256))();
  if ((result & 0x8000000000000000) == 0)
  {
    if (result)
    {
      v4 = result;
      v1 = sub_23328DC3C();
      *(v1 + 16) = v4;
      bzero((v1 + 32), 4 * v4);
    }

    else
    {
      v1 = MEMORY[0x277D84F90];
    }

    v5 = v0[11];
    v0[11] = v1;

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23316BFE0(uint64_t a1)
{
  v2 = *(v1 + 88);
  *(v1 + 88) = a1;
}

uint64_t (*sub_23316BFF0(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_23316BF24();
  return sub_23316C038;
}

uint64_t sub_23316C038(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 88);
  *(v1 + 88) = v2;
}

uint64_t sub_23316C048()
{
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[12];

    return v1;
  }

  result = (*(*v0 + 256))();
  if ((result & 0x8000000000000000) == 0)
  {
    if (result)
    {
      v4 = result;
      v1 = sub_23328DC3C();
      *(v1 + 16) = v4;
      bzero((v1 + 32), 4 * v4);
    }

    else
    {
      v1 = MEMORY[0x277D84F90];
    }

    v5 = v0[12];
    v0[12] = v1;

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23316C104(uint64_t a1)
{
  v2 = *(v1 + 96);
  *(v1 + 96) = a1;
}

uint64_t (*sub_23316C114(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_23316C048();
  return sub_23316C15C;
}

uint64_t sub_23316C15C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 96);
  *(v1 + 96) = v2;
}

uint64_t sub_23316C16C()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = v0[13];

    return v1;
  }

  result = (*(*v0 + 232))();
  if ((result & 0x8000000000000000) == 0)
  {
    if (result)
    {
      v4 = result;
      v1 = sub_23328DC3C();
      *(v1 + 16) = v4;
      bzero((v1 + 32), 4 * v4);
    }

    else
    {
      v1 = MEMORY[0x277D84F90];
    }

    v5 = v0[13];
    v0[13] = v1;

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23316C220(uint64_t a1)
{
  v2 = *(v1 + 104);
  *(v1 + 104) = a1;
}

uint64_t (*sub_23316C230(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_23316C16C();
  return sub_23316C278;
}

uint64_t sub_23316C278(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 104);
  *(v1 + 104) = v2;
}

uint64_t sub_23316C288()
{
  v1 = v0[14];
  if (v1)
  {
    v2 = v0[14];

    return v1;
  }

  result = (*(*v0 + 256))();
  if ((result & 0x8000000000000000) == 0)
  {
    if (result)
    {
      v4 = result;
      v1 = sub_23328DC3C();
      *(v1 + 16) = v4;
      bzero((v1 + 32), 4 * v4);
    }

    else
    {
      v1 = MEMORY[0x277D84F90];
    }

    v5 = v0[14];
    v0[14] = v1;

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23316C344(uint64_t a1)
{
  v2 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t (*sub_23316C354(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_23316C288();
  return sub_23316C39C;
}

uint64_t sub_23316C39C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 112);
  *(v1 + 112) = v2;
}

vDSP_Length sub_23316C3AC()
{
  v1 = v0[15];
  if (v1)
  {
    v2 = v0[15];

    return v1;
  }

  v3 = *(*v0 + 232);
  result = v3();
  if ((result & 0x8000000000000000) == 0)
  {
    if (result)
    {
      v5 = result;
      v1 = sub_23328DC3C();
      *(v1 + 16) = v5;
      bzero((v1 + 32), 4 * v5);
      result = v3();
      if ((result & 0x8000000000000000) == 0)
      {
LABEL_6:
        vDSP_hann_window((v1 + 32), result, 2);
        v6 = v0[15];
        v0[15] = v1;

        return v1;
      }
    }

    else
    {
      v1 = MEMORY[0x277D84F90];
      result = v3();
      if ((result & 0x8000000000000000) == 0)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23316C498(uint64_t a1)
{
  v2 = *(v1 + 120);
  *(v1 + 120) = a1;
}

uint64_t (*sub_23316C4A8(vDSP_Length *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_23316C3AC();
  return sub_23316C4F0;
}

uint64_t sub_23316C4F0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 120);
  *(v1 + 120) = v2;
}

FFTSetup sub_23316C500()
{
  if (*(v0 + 136) != 1)
  {
    return *(v0 + 128);
  }

  v1 = (*(*v0 + 208))();
  result = vDSP_create_fftsetup(v1, 0);
  *(v0 + 128) = result;
  *(v0 + 136) = 0;
  return result;
}

uint64_t sub_23316C560(uint64_t result)
{
  *(v1 + 128) = result;
  *(v1 + 136) = 0;
  return result;
}

void *(*sub_23316C56C(FFTSetup *a1))(void *result)
{
  a1[1] = v1;
  *a1 = sub_23316C500();
  return sub_23316C5B4;
}

void *sub_23316C5B4(void *result)
{
  v1 = result[1];
  *(v1 + 128) = *result;
  *(v1 + 136) = 0;
  return result;
}

uint64_t sub_23316C5F8(float a1)
{
  result = swift_beginAccess();
  *(v1 + 140) = a1;
  return result;
}

uint64_t sub_23316C6BC(float a1)
{
  result = swift_beginAccess();
  *(v1 + 144) = a1;
  return result;
}

uint64_t sub_23316C74C()
{
  v1 = (*(*v0 + 424))();
  vDSP_destroy_fftsetup(v1);
  v2 = v0[11];

  v3 = v0[12];

  v4 = v0[13];

  v5 = v0[14];

  v6 = v0[15];

  return swift_deallocClassInstance();
}

uint64_t sub_23316C7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*v3 + 512))(a1, 1024);
  v6 = (*(*v3 + 504))(v5, a3);

  return v6;
}

void sub_23316C87C(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (!a2)
  {
LABEL_66:
    __break(1u);
    return;
  }

  v5 = sub_23328DC3C();
  v5[1].i64[0] = a2;
  v6 = v5 + 2;
  bzero(&v5[2], 4 * a2);
  v5[2].i32[0] = 0;
  v7 = a2 - 1;
  if (a2 != 1)
  {
    bzero(&v5[2].i32[1], 4 * a2 - 4);
  }

  v8 = (*v2 + 448);
  v9 = *v8;
  v10 = (*v8)();
  v11 = *(a1 + 16);
  v12 = (100.0 / v10) * v11;
  if (COERCE_INT(fabs(v12)) > 2139095039)
  {
    goto LABEL_58;
  }

  if (v12 <= -9.2234e18)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v12 >= 9.2234e18)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v13 = (8000.0 / v9()) * v11;
  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v13 <= -9.2234e18)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v13 >= 9.2234e18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v14 = v12;
  if (v13 < v12)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (__OFSUB__(v13, v12))
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v15 = v12;
  do
  {
    if (__OFSUB__(v15, v14))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v16 = (a2 * (v15 - v14)) / (v13 - v12);
    if ((LODWORD(v16) & 0x7F800000) != 0x7F800000 || (LODWORD(v16) & 0x7FFFFF) == 0)
    {
      if ((LODWORD(v16) & 0x7F800000) == 0x7F800000)
      {
        goto LABEL_50;
      }

      if (v16 <= -9.2234e18)
      {
        goto LABEL_51;
      }

      if (v16 >= 9.2234e18)
      {
        goto LABEL_52;
      }

      v18 = v16;
      if (v16 < a2)
      {
        if (v15 < v11)
        {
          if ((v18 & 0x8000000000000000) != 0)
          {
            goto LABEL_55;
          }

          if (v5[1].i64[0] <= v18)
          {
            goto LABEL_56;
          }

          v6->f32[v18] = *(a1 + 32 + 4 * v15) + v6->f32[v18];
          goto LABEL_28;
        }

        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }
    }

LABEL_28:
    if (v13 == v15)
    {
      goto LABEL_32;
    }
  }

  while (!__OFADD__(v15++, 1));
  __break(1u);
LABEL_32:
  v2 = v5[1].i64[0];
  if (!v2)
  {
LABEL_47:
    __break(1u);
    return;
  }

  v20 = v2 - 1;
  if (v2 - 1 >= v7)
  {
    v20 = (a2 - 1);
  }

  v21 = (v20 + 1);
  if (v21 <= 4)
  {
LABEL_53:
    v23 = 0;
    goto LABEL_40;
  }

  v22 = v21 & 3;
  if ((v21 & 3) == 0)
  {
    v22 = 4;
  }

  v23 = v21 - v22;
  v52 = xmmword_233298790;
  __asm
  {
    FMOV            V2.4S, #6.0
    FMOV            V0.4S, #1.0
  }

  v50 = _Q0;
  v51 = xmmword_2332987A0;
  v47 = vdupq_n_s32(0x3ECCCCCDu);
  v48 = _Q2;
  v46 = vdupq_n_s32(0x40266666u);
  v28 = v21 - v22;
  do
  {
    v58 = vmulq_f32(*v6, v48);
    v53 = powf(v58.f32[1], 0.66667);
    v29.f32[0] = powf(v58.f32[0], 0.66667);
    v29.f32[1] = v53;
    v54 = v29;
    v30 = powf(v58.f32[2], 0.66667);
    v31 = v54;
    v31.f32[2] = v30;
    v55 = v31;
    v32 = powf(v58.f32[3], 0.66667);
    v33 = v55;
    v33.f32[3] = v32;
    v49 = vbslq_s8(vcgtq_f32(v33, v50), v50, v33);
    v59 = vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vcvtq_f64_u64(v51)), vcvtq_f64_u64(v52)), v47);
    v55.i32[0] = powf(v59.f32[1], 0.33333);
    v34.f32[0] = powf(v59.f32[0], 0.33333);
    v34.i32[1] = v55.i32[0];
    v56 = v34;
    v35 = powf(v59.f32[2], 0.33333);
    v36 = v56;
    v36.f32[2] = v35;
    v57 = v36;
    v37 = powf(v59.f32[3], 0.33333);
    v38 = v57;
    v38.f32[3] = v37;
    v39 = vmulq_f32(v38, v46);
    v38.i64[0] = 0x3F0000003F000000;
    v38.i64[1] = 0x3F0000003F000000;
    v40 = vmulq_f32(v49, vaddq_f32(v39, v38));
    *v6++ = vbslq_s8(vcgtq_f32(v40, v50), v50, v40);
    v41 = vdupq_n_s64(4uLL);
    v51 = vaddq_s64(v51, v41);
    v52 = vaddq_s64(v52, v41);
    v28 -= 4;
  }

  while (v28);
LABEL_40:
  while (1)
  {
    v42 = &v5->f32[v23];
    v43 = powf(v42[8] * 6.0, 0.66667);
    v44 = v43 <= 1.0 ? v43 : 1.0;
    v45 = v44 * ((powf(v23 * 0.4, 0.33333) * 2.6) + 0.5);
    if (v45 > 1.0)
    {
      v45 = 1.0;
    }

    v42[8] = v45;
    if (v7 == v23)
    {
      break;
    }

    if (++v23 >= v2)
    {
      goto LABEL_47;
    }
  }
}

uint64_t sub_23316CD74(uint64_t a1, unsigned int a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a2)
  {
    v4 = sub_23328DC3C();
    *(v4 + 16) = v3;
    v47 = v4;
    bzero((v4 + 32), 4 * v3);
  }

  else
  {
    v47 = MEMORY[0x277D84F90];
  }

  v46 = (*(*v2 + 320))(v52);
  v6 = v5;
  v7 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_23316D4D8(v7);
    *v6 = v7;
  }

  v43 = (*(*v2 + 344))(v51);
  v10 = v9;
  v11 = *v9;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v11;
  v45 = v6;
  v42 = v10;
  if ((v12 & 1) == 0)
  {
    v11 = sub_23316D4D8(v11);
    *v10 = v11;
  }

  v44 = v7;
  __Z.realp = (v7 + 32);
  __Z.imagp = (v11 + 32);
  v13 = (*(*v2 + 400))();
  v14 = *(*v2 + 368);
  v15 = v14(v50);
  v17 = v16;
  v18 = *v16;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v18;
  if ((v19 & 1) == 0)
  {
    v18 = sub_23316D3D4(0, *(v18 + 2), 0, v18);
  }

  *v17 = v18;

  MEMORY[0x23839D1A0](a1, 1, v13 + 32, 1, v18 + 32, 1, v3);
  v15(v50, 0);

  v20 = v14(v50);
  v22 = v21;
  v23 = *v21;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v23;
  if ((v24 & 1) == 0)
  {
    v23 = sub_23316D4D8(v23);
    *v22 = v23;
  }

  (*(*v2 + 352))();

  vDSP_ctoz(v23 + 4, 2, &__Z, 1, v3);
  v25 = v20(v50, 0);
  v26 = (*(*v2 + 424))(v25);
  if (!v26)
  {
    __break(1u);
  }

  v27 = v26;
  v28 = (*(*v2 + 208))();
  vDSP_fft_zrip(v27, &__Z, 1, v28, 1);
  v29 = (*(*v2 + 392))(v50);
  v31 = v30;
  v32 = *v30;
  v33 = swift_isUniquelyReferenced_nonNull_native();
  *v31 = v32;
  if ((v33 & 1) == 0)
  {
    v32 = sub_23316D3D4(0, *(v32 + 2), 0, v32);
  }

  *v31 = v32;

  vDSP_zvmags(&__Z, 1, v32 + 8, 1, v3);
  v29(v50, 0);

  v35 = *(*v2 + 376);
  v50[0] = v35(v34);
  v36 = MEMORY[0x28223BE20](*(v50[0] + 16));
  v37 = sub_23316D4EC(v36, sub_23316D674);

  v38 = (*(*v2 + 384))(v37);
  v39 = v35(v38);
  LODWORD(v50[0]) = (*(*v2 + 280))();
  MEMORY[0x23839D1B0](v39 + 32, 1, v50, v47 + 32, 1, v3);

  *v42 = v11;
  v43(v51, 0);
  *v45 = v44;
  v46(v52, 0);
  v40 = *MEMORY[0x277D85DE8];
  return v47;
}

double sub_23316D364()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 76) = 0;
  *(v0 + 80) = 1;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 1;
  result = 134217764.0;
  *(v0 + 140) = 0x41A00000473B8000;
  return result;
}

char *sub_23316D3D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE26D8, &qword_233298850);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_23316D4EC(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = sub_23328DC3C();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = v5 + 32;
  v8 = 0;
  v7[0] = v5 + 32;
  v7[1] = v4;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        *(v5 + 16) = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      *(v5 + 16) = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_23316D5EC(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 >> 31)
  {
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  v4 = *(a1 + 16);
  if (!*a2)
  {
    goto LABEL_7;
  }

  vvsqrtf(*a2, (a1 + 32), &v4);
  v3 = *MEMORY[0x277D85DE8];
}

void sub_23316D674(uint64_t a1, void *a2)
{
  v4 = **(v2 + 16);
  sub_23316D5EC(v4, a1);
  *a2 = *(v4 + 16);
}

uint64_t sub_23316D6E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE089F8);
  __swift_project_value_buffer(v4, qword_27DE089F8);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t sub_23316D84C()
{
  sub_23328D20C();
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  sub_23328D54C();
  if (*(v0 + 48))
  {
LABEL_11:
    v6 = sub_233237A1C();
    v7 = *v6;
    *(v0 + 24) = *v6;
    v8 = *(*v7 + 344);

    v13 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    *(v0 + 32) = v10;
    *v10 = v0;
    v10[1] = sub_23316DAFC;

    return v13();
  }

  sub_23328D30C();
  sub_23328D28C();

  v3 = sub_23328E6CC();
  if (v4)
  {
    if (v3 == 121 && v4 == 0xE100000000000000)
    {

      goto LABEL_11;
    }

    v5 = sub_23328E54C();

    if (v5)
    {
      goto LABEL_11;
    }
  }

  sub_23328D30C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE26E0, &unk_23329B9C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_233297B30;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 32) = 0xD00000000000003CLL;
  *(v11 + 40) = 0x80000002332A7D60;
  sub_23328D26C();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_23316DAFC()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  v3[5] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23316DC38, 0, 0);
  }

  else
  {
    v4 = v3[3];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_23316DC38()
{
  v1 = v0[3];

  v2 = v0[5];
  v3 = v0[1];

  return v3();
}

uint64_t sub_23316DCB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6563726F66 && a2 == 0xE500000000000000)
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

uint64_t sub_23316DD34(uint64_t a1)
{
  v2 = sub_23316E164();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23316DD70(uint64_t a1)
{
  v2 = sub_23316E164();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23316DDAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D8, &qword_23329FAC0);
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE26E8, qword_233298860);
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = sub_23328D4DC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v26 - v15;
  v17 = _s12ResetCommandVMa();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D3BC();
  v21 = sub_23328D3CC();
  (*(*(v21 - 8) + 56))(v16, 0, 1, v21);
  sub_23328D4CC();
  sub_23328D58C();
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23316E164();
  v23 = v30;
  sub_23328E68C();
  if (!v23)
  {
    v24 = v28;
    sub_233126AC4();
    sub_23328E41C();
    (*(v29 + 8))(v10, v7);
    (*(v24 + 40))(v20, v6, v3);
    sub_23316E214(v20, v27);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_23316E1B8(v20);
}

uint64_t _s12ResetCommandVMa()
{
  result = qword_27DDF3A40;
  if (!qword_27DDF3A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23316E164()
{
  result = qword_27DDF3738[0];
  if (!qword_27DDF3738[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF3738);
  }

  return result;
}

uint64_t sub_23316E1B8(uint64_t a1)
{
  v2 = _s12ResetCommandVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23316E214(uint64_t a1, uint64_t a2)
{
  v4 = _s12ResetCommandVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23316E2E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_23316D82C();
}

uint64_t sub_23316E3A0(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_23316E590(&qword_27DDE26F0);
  *v4 = v1;
  v4[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_23316E49C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDF3730 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE089F8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_23316E590(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s12ResetCommandVMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23316E5D4()
{
  v0 = sub_23328D4DC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - v4;
  sub_23328D3BC();
  v6 = sub_23328D3CC();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  sub_23328D4CC();
  return sub_23328D58C();
}

void sub_23316E74C()
{
  sub_23316E7B8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23316E7B8()
{
  if (!qword_27DDE1A68)
  {
    v0 = sub_23328D5AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DDE1A68);
    }
  }
}

unint64_t sub_23316E81C()
{
  result = qword_27DDF3B50[0];
  if (!qword_27DDF3B50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF3B50);
  }

  return result;
}

unint64_t sub_23316E874()
{
  result = qword_27DDF3C60;
  if (!qword_27DDF3C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDF3C60);
  }

  return result;
}

unint64_t sub_23316E8CC()
{
  result = qword_27DDF3C68[0];
  if (!qword_27DDF3C68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF3C68);
  }

  return result;
}

id sub_23316E920()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_23328D95C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_23316E98C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 relativePath];
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

  *a2 = v5;
  a2[1] = v7;
}

void sub_23316E9F4(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_23328D95C();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setRelativePath_];
}

id sub_23316EA64@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 model];
  *a2 = result;
  return result;
}

id sub_23316EAB4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fileFuture];
  *a2 = result;
  return result;
}

id TTSVBCloudVoiceModelFileMO.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id TTSVBCloudVoiceModelFileMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for TTSVBCloudVoiceModelFileMO();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id TTSVBCloudVoiceModelFileMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSVBCloudVoiceModelFileMO();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23316EC70@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for TTSVBCloudVoiceModelFileMO();
  result = sub_23328E25C();
  *a1 = result;
  return result;
}

uint64_t sub_23316ED00(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x7261656C63;
  }

  else
  {
    v2 = 0x746E697270;
  }

  if (*a2)
  {
    v3 = 0x7261656C63;
  }

  else
  {
    v3 = 0x746E697270;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_23328E54C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_23316ED80()
{
  v1 = *v0;
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_23316EDF0()
{
  *v0;
  sub_23328DA3C();
}

uint64_t sub_23316EE44()
{
  v1 = *v0;
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_23316EEB0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23328E37C();

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

void sub_23316EF10(uint64_t *a1@<X8>)
{
  v2 = 0x746E697270;
  if (*v1)
  {
    v2 = 0x7261656C63;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t sub_23316EF58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08A10);
  __swift_project_value_buffer(v4, qword_27DE08A10);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

unint64_t sub_23316F09C()
{
  result = qword_27DDE2718;
  if (!qword_27DDE2718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2718);
  }

  return result;
}

uint64_t sub_23316F0F0()
{
  v4 = *MEMORY[0x277D85DE8];
  *(v1 + 24) = v0;
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23316F180, 0, 0);
}

uint64_t sub_23316F180()
{
  v62 = v0;
  v61[2] = *MEMORY[0x277D85DE8];
  sub_23328D20C();
  v1 = sub_23328CC9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64) + 15;
  v4 = swift_task_alloc();
  static TTSVBPath.longLivedLogsDirectoryURL()();
  swift_task_alloc();
  v5 = *(v2 + 16);
  v5();
  v6 = sub_23328D2EC();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v58 = v5;
  sub_23328D2DC();
  v12 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2720, &qword_233298B58);
  sub_23328D54C();
  if ((*(v0 + 32) & 1) == 0)
  {

    goto LABEL_11;
  }

  v13 = sub_23328E54C();

  if (v13)
  {
LABEL_11:
    v57 = v2;
    v20 = [objc_opt_self() defaultManager];
    v21 = sub_23328CBCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2728, &qword_23329F3B0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_233297B30;
    v23 = *MEMORY[0x277CBE7C0];
    *(v22 + 32) = *MEMORY[0x277CBE7C0];
    type metadata accessor for URLResourceKey(0);
    v24 = v23;
    v25 = sub_23328DBDC();

    *(v0 + 16) = 0;
    v26 = [v20 contentsOfDirectoryAtURL:v21 includingPropertiesForKeys:v25 options:0 error:v0 + 16];

    v27 = *(v0 + 16);
    if (!v26)
    {
      v44 = v27;
      sub_23328CA7C();

      swift_willThrow();

      (*(v57 + 8))(v4, v1);

      v9 = *(v0 + 8);
      v10 = *MEMORY[0x277D85DE8];
      goto LABEL_2;
    }

    v52 = v4;
    v53 = v0;
    v28 = sub_23328DBFC();
    v29 = v27;

    v30 = *(v28 + 16);
    v31 = swift_task_alloc();
    v32 = v57;
    if (!v30)
    {
      v34 = MEMORY[0x277D84F90];
LABEL_28:

      v61[0] = v34;

      sub_233170CDC(v61);

      v45 = v61[0];
      v46 = swift_task_alloc();
      v60 = v45[2];
      if (v60)
      {
        v47 = 0;
        v56 = v45;
        while (v47 < v45[2])
        {
          (v58)(v46, v45 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v47, v1);
          sub_23328D30C();
          v48 = swift_task_alloc();
          sub_23328CBDC();
          sub_23328CB9C();
          v49 = *(v57 + 8);
          v49(v48, v1);
          sub_23328D24C();

          v50 = *(*(sub_23328D9DC() - 8) + 64) + 15;
          swift_task_alloc();
          sub_23328D9CC();
          sub_23328D91C();
          ++v47;
          v49(v46, v1);

          sub_23328D30C();
          sub_23328D27C();

          v45 = v56;
          if (v60 == v47)
          {
            goto LABEL_34;
          }
        }

LABEL_38:
        __break(1u);
      }

      v49 = *(v32 + 8);
LABEL_34:
      v49(v52, v1);

      v0 = v53;
      goto LABEL_36;
    }

    v33 = 0;
    v59 = (v57 + 32);
    v34 = MEMORY[0x277D84F90];
    v54 = v1;
    v55 = v28;
    while (1)
    {
      if (v33 >= *(v28 + 16))
      {
        __break(1u);
        goto LABEL_38;
      }

      v35 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v36 = v28 + v35;
      v37 = *(v32 + 72);
      (v58)(v31, v36 + v37 * v33, v1);
      if (sub_23328CB4C() == 6778732 && v38 == 0xE300000000000000)
      {
        break;
      }

      v39 = sub_23328E54C();

      if (v39)
      {
        goto LABEL_21;
      }

      (*(v57 + 8))(v31, v1);
LABEL_15:
      ++v33;

      v31 = swift_task_alloc();
      v28 = v55;
      if (v30 == v33)
      {
        goto LABEL_28;
      }
    }

LABEL_21:
    v40 = swift_task_alloc();
    v41 = *v59;
    (*v59)(v40, v31, v1);
    v61[0] = v34;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_233173E80(0, v34[2] + 1, 1);
      v34 = v61[0];
    }

    v43 = v34[2];
    v42 = v34[3];
    if (v43 >= v42 >> 1)
    {
      sub_233173E80(v42 > 1, v43 + 1, 1);
      v34 = v61[0];
    }

    v34[2] = v43 + 1;
    v1 = v54;
    v41(v34 + v35 + v43 * v37, v40, v54);

    v32 = v57;
    goto LABEL_15;
  }

  v14 = *(v0 + 24);
  sub_23328D54C();
  if (*(v0 + 33) & 1) != 0 || (sub_23328E54C())
  {
    sub_23328D30C();
    sub_23328D27C();

    v15 = sub_23328CE1C();
    v16 = v2;
    v17 = *(v15 - 8);
    v18 = *(v17 + 64) + 15;
    v19 = swift_task_alloc();
    sub_23328CE0C();
    sub_23328D2AC();

    (*(v17 + 8))(v19, v15);
    (*(v16 + 8))(v4, v1);
  }

  else
  {
    (*(v2 + 8))(v4, v1);
  }

LABEL_36:

  v9 = *(v0 + 8);
  v51 = *MEMORY[0x277D85DE8];
LABEL_2:

  return v9();
}

uint64_t sub_23316FB48(uint64_t *a1, uint64_t a2)
{
  v42 = a2;
  v37 = a1;
  v44 = sub_23328CE1C();
  v2 = *(v44 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v44);
  v41 = v4;
  v43 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  v35 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - v6;
  v8 = sub_23328CA0C();
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v8);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2728, &qword_23329F3B0);
  inited = swift_initStackObject();
  v38 = xmmword_233297B30;
  *(inited + 16) = xmmword_233297B30;
  v11 = *MEMORY[0x277CBE7C0];
  *(inited + 32) = *MEMORY[0x277CBE7C0];
  v36 = v11;
  sub_23317473C(inited);
  swift_setDeallocating();
  sub_233174930(inited + 32, type metadata accessor for URLResourceKey);
  v12 = v39;
  sub_23328CB6C();
  v33 = v8;
  if (v12)
  {

    v13 = v44;
    (*(v2 + 56))(v7, 1, 1, v44);
  }

  else
  {

    sub_23328C99C();
    (*(v34 + 8))(&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v14 = *(v2 + 48);
    v13 = v44;
    if (v14(v7, 1, v44) != 1)
    {
      v39 = v14;
      v16 = (*(v2 + 32))(v43, v7, v13);
      goto LABEL_6;
    }
  }

  sub_23328CD7C();
  v15 = *(v2 + 48);
  v16 = v15(v7, 1, v13);
  v39 = v15;
  if (v16 != 1)
  {
    v16 = sub_233126838(v7);
  }

LABEL_6:
  v37 = &v32;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = &v32;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_initStackObject();
  *(v24 + 16) = v38;
  *(v24 + 32) = v36;
  v25 = v24 + 32;
  sub_23317473C(v24);
  swift_setDeallocating();
  sub_233174930(v25, type metadata accessor for URLResourceKey);
  sub_23328CB6C();

  sub_23328C99C();
  (*(v34 + 8))(v23, v33);
  v26 = v44;
  v27 = v39;
  if (v39(v22, 1, v44) == 1)
  {
    sub_23328CD7C();
    if (v27(v22, 1, v26) != 1)
    {
      sub_233126838(v22);
    }
  }

  else
  {
    (*(v2 + 32))(v19, v22, v26);
  }

  v28 = v43;
  v29 = sub_23328CDAC();
  v30 = *(v2 + 8);
  v30(v19, v26);
  v30(v28, v26);
  return v29 & 1;
}

uint64_t sub_233170100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000)
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

uint64_t sub_233170188(uint64_t a1)
{
  v2 = sub_233173EEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331701C4(uint64_t a1)
{
  v2 = sub_233173EEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233170200@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2720, &qword_233298B58);
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2730, &qword_233298B70);
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = sub_23328D47C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v26 - v15;
  v17 = _s19LongTermLogsCommandVMa();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0;
  v21 = sub_23328D3CC();
  (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
  sub_23328D46C();
  sub_23316F09C();
  sub_23328D57C();
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_233173EEC();
  v23 = v29;
  sub_23328E68C();
  if (!v23)
  {
    v24 = v27;
    sub_23315246C(&qword_27DDE2738, &qword_27DDE2720, &qword_233298B58);
    sub_23328E41C();
    (*(v28 + 8))(v10, v7);
    (*(v24 + 40))(v20, v6, v3);
    sub_233173F40(v20, v26);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_233174930(v20, _s19LongTermLogsCommandVMa);
}

uint64_t sub_2331705A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233126374;

  return sub_23316F0F0();
}

uint64_t sub_23317062C(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_233174128(&qword_27DDE2760, _s19LongTermLogsCommandVMa);
  *v4 = v1;
  v4[1] = sub_233127268;

  return MEMORY[0x2821388D8](a1, v5);
}

uint64_t sub_233170708@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDF3D70 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08A10);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_2331707C8()
{
  v0 = sub_23328D47C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19D0, &unk_2332903D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8[-v4];
  v8[15] = 0;
  v6 = sub_23328D3CC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_23328D46C();
  sub_23316F09C();
  return sub_23328D57C();
}

uint64_t sub_233170910(uint64_t a1, id *a2)
{
  result = sub_23328D96C();
  *a2 = 0;
  return result;
}

uint64_t sub_233170988(uint64_t a1, id *a2)
{
  v3 = sub_23328D97C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_233170A08@<X0>(uint64_t *a1@<X8>)
{
  sub_23328D98C();
  v2 = sub_23328D95C();

  *a1 = v2;
  return result;
}

uint64_t sub_233170A4C()
{
  v1 = *v0;
  v2 = sub_23328D98C();
  v3 = MEMORY[0x23839B830](v2);

  return v3;
}

uint64_t sub_233170A88()
{
  v1 = *v0;
  sub_23328D98C();
  sub_23328DA3C();
}

uint64_t sub_233170ADC()
{
  v1 = *v0;
  sub_23328D98C();
  sub_23328E61C();
  sub_23328DA3C();
  v2 = sub_23328E66C();

  return v2;
}

uint64_t sub_233170B50(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_23328D98C();
  v6 = v5;
  if (v4 == sub_23328D98C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23328E54C();
  }

  return v9 & 1;
}

uint64_t sub_233170BD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23328D95C();

  *a2 = v5;
  return result;
}

uint64_t sub_233170C20()
{
  sub_233174128(&qword_27DDE27A8, type metadata accessor for URLResourceKey);
  sub_233174128(&qword_27DDE27B0, type metadata accessor for URLResourceKey);

  return sub_23328E36C();
}

uint64_t sub_233170CDC(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_233174728(v2);
  }

  v3 = v2[2];
  v4 = *(sub_23328CC9C() - 8);
  v6[0] = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6[1] = v3;
  result = sub_233170D80(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_233170D80(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_23328E50C();
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
        sub_23328CC9C();
        v6 = sub_23328DC3C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_23328CC9C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2331717E4(v8, v9, a1, v4);
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
    return sub_233170EAC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_233170EAC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v56 = a2;
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    v69 = *MEMORY[0x277CBE7C0];
    result = sub_23328CC9C();
    v7 = result;
    v8 = *(result - 8);
    v9 = v8[2];
    v8 += 2;
    v68 = v9;
    v11 = v8[6];
    v10 = v8[7];
    v65 = (v8 - 1);
    v67 = v8;
    v62 = (v8 + 2);
    v12 = (v6 + v10 * (v4 - 1));
    v61 = -v10;
    v13 = v5 - v4;
    v63 = v6;
    v55 = v10;
    v14 = v6 + v10 * v4;
    v86 = xmmword_233297B30;
    v64 = result;
    v66 = v11;
LABEL_6:
    v60 = v4;
    v57 = v14;
    v58 = v13;
    v15 = v13;
    v59 = v12;
    while (1)
    {
      v74 = v15;
      v85 = &v54;
      MEMORY[0x28223BE20](result);
      v16 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v73 = v14;
      v17 = v68;
      v18 = (v68)(v16, v14, v7);
      v83 = &v54;
      MEMORY[0x28223BE20](v18);
      v82 = v16;
      v72 = v12;
      v17();
      v19 = sub_23328CE1C();
      v81 = &v54;
      v76 = v19;
      v88 = *(v19 - 8);
      v20 = *(v88 + 64);
      MEMORY[0x28223BE20](v19);
      v80 = v21;
      v89 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
      v79 = &v54;
      v23 = *(*(v22 - 8) + 64);
      MEMORY[0x28223BE20](v22 - 8);
      v25 = &v54 - v24;
      v26 = sub_23328CA0C();
      v75 = &v54;
      v71 = *(v26 - 8);
      v27 = *(v71 + 64);
      MEMORY[0x28223BE20](v26);
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2728, &qword_23329F3B0);
      inited = swift_initStackObject();
      *(inited + 16) = v86;
      v29 = v69;
      *(inited + 32) = v69;
      v77 = v29;
      sub_23317473C(inited);
      swift_setDeallocating();
      sub_233174930(inited + 32, type metadata accessor for URLResourceKey);
      v84 = v16;
      v30 = v87;
      sub_23328CB6C();
      v70 = v26;
      if (v30)
      {

        v31 = v88;
        v32 = v76;
        (*(v88 + 56))(v25, 1, 1, v76);
      }

      else
      {

        sub_23328C99C();
        (*(v71 + 8))(&v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
        v31 = v88;
        v32 = v76;
        v87 = *(v88 + 48);
        if (v87(v25, 1, v76) != 1)
        {
          v33 = (*(v31 + 32))(v89, v25, v32);
          goto LABEL_13;
        }
      }

      sub_23328CD7C();
      v87 = *(v31 + 48);
      v33 = (v87)(v25, 1, v32);
      if (v33 != 1)
      {
        v33 = sub_233126838(v25);
      }

LABEL_13:
      v79 = &v54;
      v34 = MEMORY[0x28223BE20](v33);
      v36 = &v54 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
      v80 = &v54;
      v37 = MEMORY[0x28223BE20](v34);
      v38 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      v76 = &v54;
      MEMORY[0x28223BE20](v37);
      v39 = swift_initStackObject();
      *(v39 + 16) = v86;
      *(v39 + 32) = v77;
      v40 = v39 + 32;
      sub_23317473C(v39);
      swift_setDeallocating();
      sub_233174930(v40, type metadata accessor for URLResourceKey);
      v41 = v82;
      sub_23328CB6C();

      sub_23328C99C();
      (*(v71 + 8))(&v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v70);
      v42 = v87;
      v43 = v88;
      v44 = v87(v38, 1, v32);
      v7 = v64;
      if (v44 == 1)
      {
        sub_23328CD7C();
        if (v42(v38, 1, v32) != 1)
        {
          sub_233126838(v38);
        }
      }

      else
      {
        (*(v43 + 32))(v36, v38, v32);
      }

      v45 = v89;
      v46 = sub_23328CDAC();
      v47 = *(v43 + 8);
      v47(v36, v32);
      v47(v45, v32);
      v48 = *v65;
      (*v65)(v41, v7);
      result = v48(v84, v7);
      v87 = 0;
      if ((v46 & 1) == 0)
      {
        v11 = v66;
LABEL_5:
        v4 = v60 + 1;
        v12 = &v59[v55];
        v13 = v58 - 1;
        v14 = v57 + v55;
        if (v60 + 1 == v56)
        {
          return result;
        }

        goto LABEL_6;
      }

      v11 = v66;
      v49 = v74;
      if (!v63)
      {
        __break(1u);
        return result;
      }

      MEMORY[0x28223BE20](result);
      v50 = *v62;
      v51 = v73;
      (*v62)(&v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v73, v7);
      v52 = v72;
      swift_arrayInitWithTakeFrontToBack();
      result = v50(v52, &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      v12 = &v52[v61];
      v14 = v51 + v61;
      v53 = __CFADD__(v49, 1);
      v15 = v49 + 1;
      if (v53)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_2331717E4(uint64_t result, uint64_t a2, int64_t **a3, int64_t a4)
{
  v5 = v4;
  v214 = result;
  v217 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_144:
    v9 = *v214;
    if (!*v214)
    {
      goto LABEL_185;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_146:
      v255 = v8;
      v204 = *(v8 + 2);
      if (v204 >= 2)
      {
        while (1)
        {
          v205 = *v217;
          if (!*v217)
          {
            goto LABEL_183;
          }

          v206 = *&v8[16 * v204];
          v207 = &v8[16 * v204 - 16];
          v209 = *(v207 + 4);
          v208 = *(v207 + 5);
          v210 = sub_23328CC9C();
          sub_23317352C(v205 + *(*(v210 - 8) + 72) * v206, v205 + *(*(v210 - 8) + 72) * v209, (v205 + *(*(v210 - 8) + 72) * v208), v9);
          if (v5)
          {
          }

          if (v208 < v206)
          {
            goto LABEL_172;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_233173C84(v8);
          }

          if (v204 - 2 >= *(v8 + 2))
          {
            goto LABEL_173;
          }

          v211 = &v8[16 * v204];
          *v211 = v206;
          *(v211 + 1) = v208;
          v255 = v8;
          result = sub_233173BF8(v204 - 1);
          v8 = v255;
          v204 = *(v255 + 2);
          if (v204 <= 1)
          {
          }
        }
      }
    }

LABEL_179:
    result = sub_233173C84(v8);
    v8 = result;
    goto LABEL_146;
  }

  v213 = a4;
  v7 = 0;
  v228 = *MEMORY[0x277CBE7C0];
  v8 = MEMORY[0x277D84F90];
  v219 = xmmword_233297B30;
  while (1)
  {
    v9 = v7 + 1;
    v216 = v8;
    v227 = v7;
    if (v7 + 1 >= v6)
    {
      v23 = v7 + 1;
    }

    else
    {
      v218 = v6;
      v252 = *v217;
      v10 = sub_23328CC9C();
      v251 = &v213;
      v11 = *(v10 - 8);
      v12 = v11;
      v13 = *(v11 + 72);
      v14 = *(v11 + 64);
      MEMORY[0x28223BE20](v10);
      v9 = &v213 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      v223 = v12;
      v15 = *(v12 + 16);
      v247 = v16;
      v17 = (v15)(v9);
      v250 = &v213;
      v232 = v13;
      v18 = v227;
      v231 = v14;
      MEMORY[0x28223BE20](v17);
      v229 = v12 + 16;
      v226 = v15;
      (v15)(v9);
      LODWORD(v230) = sub_23316FB48(v9, v9);
      if (v5)
      {
        v212 = *(v223 + 1);
        v212(v9, v10);
        v212(v9, v10);
      }

      v19 = v223;
      v20 = *(v223 + 1);
      v20(v9, v10);
      v225 = v19 + 8;
      v224 = v20;
      result = (v20)(v9, v10);
      v21 = (v18 + 2);
      v22 = v232;
      v23 = v218;
      v233 = v10;
      v24 = v247;
      while (v23 != v21)
      {
        v237 = v21;
        v245 = &v213;
        v34 = v231;
        MEMORY[0x28223BE20](result);
        v35 = (&v213 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
        v246 = v36;
        v37 = v226;
        v38 = (v226)(v35);
        v243 = &v213;
        MEMORY[0x28223BE20](v38);
        v251 = v35;
        v247 = v24;
        v37();
        v39 = sub_23328CE1C();
        v242 = &v213;
        v252 = *(v39 - 8);
        v40 = v252[8];
        MEMORY[0x28223BE20](v39);
        v241 = v41;
        v249 = &v213 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
        v239 = &v213;
        v240 = *(*(v42 - 8) + 64);
        MEMORY[0x28223BE20](v42 - 8);
        v44 = &v213 - v43;
        v45 = sub_23328CA0C();
        v248 = &v213;
        v234 = v45;
        v235 = *(v45 - 8);
        v46 = v235[8];
        MEMORY[0x28223BE20](v45);
        v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2728, &qword_23329F3B0);
        inited = swift_initStackObject();
        *(inited + 16) = v219;
        v48 = v228;
        *(inited + 32) = v228;
        v236 = v48;
        sub_23317473C(inited);
        swift_setDeallocating();
        sub_233174930(inited + 32, type metadata accessor for URLResourceKey);
        v244 = v35;
        v49 = v252;
        sub_23328CB6C();
        v250 = v39;

        sub_23328C99C();
        v50 = v235;
        (v235[1])(&v213 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0), v234);
        v248 = v49[6];
        if ((v248)(v44, 1, v39) == 1)
        {
          v51 = v236;
          sub_23328CD7C();
          v248 = v49[6];
          if ((v248)(v44, 1, v39) != 1)
          {
            sub_233126838(v44);
          }

          v52 = v238;
        }

        else
        {
          (v49[4])(v249, v44, v39);
          v52 = v238;
          v51 = v236;
        }

        v241 = &v213;
        v53 = MEMORY[0x28223BE20](v52);
        v55 = &v213 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
        v240 = &v213;
        v56 = MEMORY[0x28223BE20](v53);
        v58 = &v213 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
        MEMORY[0x28223BE20](v56);
        v59 = &v213 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
        v60 = swift_initStackObject();
        *(v60 + 16) = v219;
        *(v60 + 32) = v51;
        v61 = v60 + 32;
        sub_23317473C(v60);
        swift_setDeallocating();
        sub_233174930(v61, type metadata accessor for URLResourceKey);
        sub_23328CB6C();

        sub_23328C99C();
        (v50[1])(v59, v234);
        v62 = v252;
        v63 = v250;
        v64 = (v248)(v58, 1, v250);
        v23 = v218;
        if (v64 == 1)
        {
          v5 = 0;
          v26 = v237;
          sub_23328CD7C();
          v65 = (v248)(v58, 1, v63);
          v25 = v247;
          if (v65 != 1)
          {
            sub_233126838(v58);
          }
        }

        else
        {
          (v62[4])(v55, v58, v63);
          v5 = 0;
          v25 = v247;
          v26 = v237;
        }

        v27 = v249;
        v28 = sub_23328CDAC();
        v29 = v252[1];
        v30 = v55;
        v31 = v250;
        v29(v30, v250);
        v29(v27, v31);
        v32 = v233;
        v9 = v225;
        v33 = v224;
        v224(v251, v233);
        result = v33(v244, v32);
        v21 = (v26 + 1);
        v22 = v232;
        v24 = &v25[v232];
        v8 = v216;
        if ((v230 ^ v28))
        {
          v23 = v21 - 1;
          break;
        }
      }

      if (v230)
      {
        if (v23 < v227)
        {
          goto LABEL_178;
        }

        if (v227 < v23)
        {
          v247 = 0;
          v66 = (v223 + 32);
          v67 = v22 * (v23 - 1);
          v68 = v23 * v22;
          v218 = v23;
          v69 = v227;
          v70 = v227 * v22;
          v250 = v223 + 32;
          do
          {
            if (v69 != --v23)
            {
              v73 = *v217;
              if (!*v217)
              {
                goto LABEL_182;
              }

              v252 = &v213;
              MEMORY[0x28223BE20](result);
              v9 = &v213 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
              v251 = *v66;
              v251(v9, v73 + v70, v233);
              if (v70 < v67 || v73 + v70 >= v73 + v68)
              {
                v71 = v233;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v71 = v233;
                if (v70 != v67)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v72 = v71;
              v66 = v250;
              result = (v251)(v73 + v67, v9, v72);
              v8 = v216;
              v22 = v232;
            }

            ++v69;
            v67 -= v22;
            v68 -= v22;
            v70 += v22;
          }

          while (v69 < v23);
          v23 = v218;
          v5 = v247;
        }
      }
    }

    v75 = v217[1];
    if (v23 >= v75)
    {
      goto LABEL_43;
    }

    if (__OFSUB__(v23, v227))
    {
      goto LABEL_175;
    }

    if (v23 - v227 >= v213)
    {
LABEL_43:
      v9 = v23;
      goto LABEL_44;
    }

    if (__OFADD__(v227, v213))
    {
      goto LABEL_176;
    }

    if (v227 + v213 >= v75)
    {
      v9 = v217[1];
    }

    else
    {
      v9 = v227 + v213;
    }

    if (v9 < v227)
    {
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
      goto LABEL_179;
    }

    if (v23 == v9)
    {
      goto LABEL_43;
    }

    v235 = *v217;
    v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE27B8, &unk_2332990C0);
    result = sub_23328CC9C();
    v126 = *(result - 8);
    v127 = v126[2];
    v126 += 2;
    v226 = v127;
    v8 = v126[6];
    v224 = v126[7];
    v221 = (v126 - 1);
    v225 = v126;
    v220 = (v126 + 2);
    v215 = v9;
    v222 = result;
    v223 = v8;
LABEL_97:
    v218 = v23;
    v128 = v23;
LABEL_98:
    v247 = v5;
    v238 = &v213;
    v129 = v128 - 1;
    MEMORY[0x28223BE20](result);
    v130 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
    v250 = &v213 - v130;
    v233 = v131;
    v132 = v226;
    v133 = (v226)();
    v237 = &v213;
    v234 = v129;
    MEMORY[0x28223BE20](v133);
    v248 = &v213 - v130;
    v232 = v134;
    v132();
    v135 = sub_23328CE1C();
    v236 = &v213;
    v251 = v135;
    v252 = *(v135 - 8);
    v136 = v252[8];
    MEMORY[0x28223BE20](v135);
    v249 = &v213 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
    v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
    v242 = &v213;
    v244 = *(*(v137 - 8) + 64);
    MEMORY[0x28223BE20](v137 - 8);
    v240 = &v213 - v138;
    v139 = sub_23328CA0C();
    v239 = &v213;
    v231 = v139;
    v230 = *(v139 - 8);
    v140 = *(v230 + 64);
    MEMORY[0x28223BE20](v139);
    v243 = v141;
    v142 = &v213 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
    v143 = v228;
    v254 = v228;
    v5 = sub_23328E22C();
    v8 = (v5 + 56);
    v144 = v254;
    v145 = *(v5 + 40);
    v241 = v143;
    sub_23328D98C();
    sub_23328E61C();
    v245 = v144;
    sub_23328DA3C();
    v9 = sub_23328E66C();

    v146 = -1 << *(v5 + 32);
    v147 = v9 & ~v146;
    v148 = v147 >> 6;
    v149 = *(v5 + 56 + 8 * (v147 >> 6));
    v150 = 1 << v147;
    if (((1 << v147) & v149) != 0)
    {
      v229 = v136;
      v151 = ~v146;
      while (1)
      {
        v152 = *(*(v5 + 48) + 8 * v147);
        v153 = sub_23328D98C();
        v9 = v154;
        if (v153 == sub_23328D98C() && v9 == v155)
        {

          goto LABEL_111;
        }

        v157 = sub_23328E54C();

        if (v157)
        {
          break;
        }

        v147 = (v147 + 1) & v151;
        v148 = v147 >> 6;
        v149 = *&v8[8 * (v147 >> 6)];
        v150 = 1 << v147;
        if (((1 << v147) & v149) == 0)
        {
          v136 = v229;
          goto LABEL_107;
        }
      }

LABEL_111:
      v136 = v229;
    }

    else
    {
LABEL_107:
      *&v8[8 * v148] = v150 | v149;
      *(*(v5 + 48) + 8 * v147) = v245;
      v158 = *(v5 + 16);
      v91 = __OFADD__(v158, 1);
      v159 = v158 + 1;
      if (v91)
      {
        __break(1u);
        goto LABEL_157;
      }

      *(v5 + 16) = v159;
    }

    sub_233174930(&v254, type metadata accessor for URLResourceKey);
    v160 = v247;
    sub_23328CB6C();
    v161 = v251;
    if (v160)
    {

      v162 = v252;
      v163 = v240;
      (v252[7])(v240, 1, 1, v161);
LABEL_115:
      sub_23328CD7C();
      v164 = v162[6];
      v165 = (v164)(v163, 1, v161);
      v239 = 0;
      if (v165 != 1)
      {
        v165 = sub_233126838(v163);
      }

      goto LABEL_118;
    }

    v163 = v240;
    sub_23328C99C();
    (*(v230 + 8))(v142, v231);
    v162 = v252;
    v164 = v252[6];
    if ((v164)(v163, 1, v161) == 1)
    {
      goto LABEL_115;
    }

    v239 = 0;
    v165 = (v162[4])(v249, v163, v161);
LABEL_118:
    v244 = &v213;
    v166 = MEMORY[0x28223BE20](v165);
    v243 = &v213 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
    v242 = &v213;
    v167 = MEMORY[0x28223BE20](v166);
    v247 = &v213 - ((v168 + 15) & 0xFFFFFFFFFFFFFFF0);
    v241 = &v213;
    MEMORY[0x28223BE20](v167);
    v170 = &v213 - ((v169 + 15) & 0xFFFFFFFFFFFFFFF0);
    v253 = v171;
    v172 = sub_23328E22C();
    v5 = v172 + 56;
    v173 = v253;
    v174 = *(v172 + 40);
    sub_23328D98C();
    sub_23328E61C();
    v245 = v173;
    sub_23328DA3C();
    v175 = sub_23328E66C();

    v176 = -1 << *(v172 + 32);
    v9 = v175 & ~v176;
    v177 = v9 >> 6;
    v178 = *(v172 + 56 + 8 * (v9 >> 6));
    v179 = 1 << v9;
    if (((1 << v9) & v178) == 0)
    {
      goto LABEL_127;
    }

    v240 = v164;
    v180 = ~v176;
    while (1)
    {
      v181 = *(*(v172 + 48) + 8 * v9);
      v182 = sub_23328D98C();
      v184 = v183;
      if (v182 == sub_23328D98C() && v184 == v185)
      {

        goto LABEL_131;
      }

      v187 = sub_23328E54C();

      if (v187)
      {
        break;
      }

      v9 = (v9 + 1) & v180;
      v177 = v9 >> 6;
      v178 = *(v5 + 8 * (v9 >> 6));
      v179 = 1 << v9;
      if (((1 << v9) & v178) == 0)
      {
        v164 = v240;
LABEL_127:
        *(v5 + 8 * v177) = v179 | v178;
        *(*(v172 + 48) + 8 * v9) = v245;
        v188 = *(v172 + 16);
        v91 = __OFADD__(v188, 1);
        v189 = v188 + 1;
        v8 = v223;
        v190 = v251;
        v191 = v247;
        if (!v91)
        {
          *(v172 + 16) = v189;
          goto LABEL_132;
        }

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
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
        goto LABEL_177;
      }
    }

LABEL_131:
    v8 = v223;
    v190 = v251;
    v164 = v240;
    v191 = v247;
LABEL_132:
    sub_233174930(&v253, type metadata accessor for URLResourceKey);
    v192 = v239;
    sub_23328CB6C();
    if (v192)
    {

      (v252[7])(v191, 1, 1, v190);
    }

    else
    {

      sub_23328C99C();
      (*(v230 + 8))(v170, v231);
      v193 = v252;
      if ((v164)(v191, 1, v190) != 1)
      {
        v195 = v243;
        (v193[4])(v243, v191, v190);
        v194 = v222;
        goto LABEL_138;
      }
    }

    v194 = v222;
    v195 = v243;
    sub_23328CD7C();
    if ((v164)(v191, 1, v190) != 1)
    {
      sub_233126838(v191);
    }

LABEL_138:
    v196 = v249;
    v197 = sub_23328CDAC();
    v198 = v195;
    v199 = v197;
    v200 = v252[1];
    v200(v198, v190);
    v200(v196, v190);
    v201 = *v221;
    (*v221)(v248, v194);
    result = (v201)(v250, v194);
    if (v199)
    {
      break;
    }

    v5 = 0;
LABEL_96:
    v23 = v218 + 1;
    v9 = v215;
    if (v218 + 1 != v215)
    {
      goto LABEL_97;
    }

    v8 = v216;
LABEL_44:
    if (v9 < v227)
    {
      goto LABEL_174;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_233173D7C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v77 = *(v8 + 2);
    v76 = *(v8 + 3);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      result = sub_233173D7C((v76 > 1), v77 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v78;
    v79 = &v8[16 * v77];
    *(v79 + 4) = v227;
    *(v79 + 5) = v9;
    v215 = v9;
    v9 = *v214;
    if (!*v214)
    {
      goto LABEL_184;
    }

    if (v77)
    {
      while (2)
      {
        v80 = v78 - 1;
        if (v78 >= 4)
        {
          v85 = &v8[16 * v78 + 32];
          v86 = *(v85 - 64);
          v87 = *(v85 - 56);
          v91 = __OFSUB__(v87, v86);
          v88 = v87 - v86;
          if (v91)
          {
            goto LABEL_161;
          }

          v90 = *(v85 - 48);
          v89 = *(v85 - 40);
          v91 = __OFSUB__(v89, v90);
          v83 = v89 - v90;
          v84 = v91;
          if (v91)
          {
            goto LABEL_162;
          }

          v92 = &v8[16 * v78];
          v94 = *v92;
          v93 = *(v92 + 1);
          v91 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v91)
          {
            goto LABEL_164;
          }

          v91 = __OFADD__(v83, v95);
          v96 = v83 + v95;
          if (v91)
          {
            goto LABEL_167;
          }

          if (v96 >= v88)
          {
            v114 = &v8[16 * v80 + 32];
            v116 = *v114;
            v115 = *(v114 + 1);
            v91 = __OFSUB__(v115, v116);
            v117 = v115 - v116;
            if (v91)
            {
              goto LABEL_171;
            }

            if (v83 < v117)
            {
              v80 = v78 - 2;
            }
          }

          else
          {
LABEL_64:
            if (v84)
            {
              goto LABEL_163;
            }

            v97 = &v8[16 * v78];
            v99 = *v97;
            v98 = *(v97 + 1);
            v100 = __OFSUB__(v98, v99);
            v101 = v98 - v99;
            v102 = v100;
            if (v100)
            {
              goto LABEL_166;
            }

            v103 = &v8[16 * v80 + 32];
            v105 = *v103;
            v104 = *(v103 + 1);
            v91 = __OFSUB__(v104, v105);
            v106 = v104 - v105;
            if (v91)
            {
              goto LABEL_169;
            }

            if (__OFADD__(v101, v106))
            {
              goto LABEL_170;
            }

            if (v101 + v106 < v83)
            {
              goto LABEL_78;
            }

            if (v83 < v106)
            {
              v80 = v78 - 2;
            }
          }
        }

        else
        {
          if (v78 == 3)
          {
            v81 = *(v8 + 4);
            v82 = *(v8 + 5);
            v91 = __OFSUB__(v82, v81);
            v83 = v82 - v81;
            v84 = v91;
            goto LABEL_64;
          }

          v107 = &v8[16 * v78];
          v109 = *v107;
          v108 = *(v107 + 1);
          v91 = __OFSUB__(v108, v109);
          v101 = v108 - v109;
          v102 = v91;
LABEL_78:
          if (v102)
          {
            goto LABEL_165;
          }

          v110 = &v8[16 * v80];
          v112 = *(v110 + 4);
          v111 = *(v110 + 5);
          v91 = __OFSUB__(v111, v112);
          v113 = v111 - v112;
          if (v91)
          {
            goto LABEL_168;
          }

          if (v113 < v101)
          {
            break;
          }
        }

        v118 = v80 - 1;
        if (v80 - 1 >= v78)
        {
          goto LABEL_158;
        }

        v119 = *v217;
        if (!*v217)
        {
          goto LABEL_181;
        }

        v120 = *&v8[16 * v118 + 32];
        v121 = &v8[16 * v80 + 32];
        v123 = *v121;
        v122 = *(v121 + 1);
        v124 = sub_23328CC9C();
        sub_23317352C(v119 + *(*(v124 - 8) + 72) * v120, v119 + *(*(v124 - 8) + 72) * v123, (v119 + *(*(v124 - 8) + 72) * v122), v9);
        if (v5)
        {
        }

        if (v122 < v120)
        {
          goto LABEL_159;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_233173C84(v8);
        }

        if (v118 >= *(v8 + 2))
        {
          goto LABEL_160;
        }

        v125 = &v8[16 * v118];
        *(v125 + 4) = v120;
        *(v125 + 5) = v122;
        v255 = v8;
        result = sub_233173BF8(v80);
        v8 = v255;
        v78 = *(v255 + 2);
        if (v78 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v6 = v217[1];
    v7 = v215;
    if (v215 >= v6)
    {
      goto LABEL_144;
    }
  }

  if (v235)
  {
    v5 = 0;
    MEMORY[0x28223BE20](result);
    v202 = *v220;
    (*v220)(&v213 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v233, v194);
    v203 = v232;
    swift_arrayInitWithTakeFrontToBack();
    result = (v202)(v203, &v213 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v194);
    v128 = v234;
    if (v234 == v227)
    {
      goto LABEL_96;
    }

    goto LABEL_98;
  }

  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
  return result;
}

uint64_t sub_23317352C(unint64_t a1, unint64_t a2, void (*a3)(uint64_t *, unint64_t, uint64_t), unint64_t a4)
{
  v5 = v4;
  result = sub_23328CC9C();
  v68 = *(result - 8);
  v11 = v68[9];
  if (!v11)
  {
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v12 = result;
  v13 = a2;
  if (a2 - a1 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_68;
  }

  v14 = a3 - a2;
  if ((a3 - a2) != 0x8000000000000000 || v11 != -1)
  {
    v15 = (a2 - a1) / v11;
    v76 = a1;
    v75 = a4;
    if (v15 < v14 / v11)
    {
      v16 = v15 * v11;
      if (a4 < a1 || a1 + v16 <= a4)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == a1)
        {
          goto LABEL_17;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v13 = a2;
LABEL_17:
      v69 = a4 + v16;
      v73 = v4;
      v74 = a4 + v16;
      if (v16 >= 1 && v13 < a3)
      {
        v19 = v68[2];
        v65 = v68[8];
        v66 = v19;
        v68 += 2;
        v67 = (v68 - 1);
        v63 = v11;
        v64 = a3;
        while (1)
        {
          v70 = a1;
          v20 = a4;
          v72 = &v58;
          v21 = v65;
          MEMORY[0x28223BE20](result);
          v22 = (&v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
          v71 = v23;
          v24 = v66;
          v25 = (v66)(v22);
          MEMORY[0x28223BE20](v25);
          v26 = v20;
          v24(v22, v20, v12);
          v27 = v73;
          v28 = sub_23316FB48(v22, v22);
          v73 = v27;
          if (v27)
          {
            break;
          }

          v29 = v28;
          v30 = *v67;
          (*v67)(v22, v12);
          result = (v30)(v22, v12);
          if (v29)
          {
            v31 = v70;
            v32 = v63;
            v33 = v64;
            v34 = &v63[v71];
            a4 = v26;
            if (v70 < v71 || v70 >= v34)
            {
              result = swift_arrayInitWithTakeFrontToBack();
            }

            else if (v70 != v71)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }

            v35 = v34;
          }

          else
          {
            v32 = v63;
            v33 = v64;
            a4 = &v63[v26];
            v31 = v70;
            if (v70 < v26 || v70 >= a4)
            {
              result = swift_arrayInitWithTakeFrontToBack();
            }

            else if (v70 != v26)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }

            v75 = a4;
            v35 = v71;
          }

          a1 = &v32[v31];
          v76 = a1;
          if (a4 >= v69 || v35 >= v33)
          {
            goto LABEL_66;
          }
        }

        v56 = *v67;
        (*v67)(v22, v12);
        v56(v22, v12);
      }

LABEL_66:
      sub_233173C98(&v76, &v75, &v74);
      return 1;
    }

    v17 = v14 / v11 * v11;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_41:
        if (v17 < 1)
        {
          v38 = a4 + v17;
        }

        else
        {
          v36 = -v11;
          v62 = v68 + 2;
          v63 = (v68 + 1);
          v37 = (a4 + v17);
          v38 = a4 + v17;
          v70 = a1;
          v60 = -v11;
          v61 = a4;
          do
          {
            v59 = v38;
            v39 = v13 + v36;
            v71 = v13 + v36;
            v65 = v13;
            while (1)
            {
              v73 = v5;
              if (v13 <= a1)
              {
                v76 = v13;
                v74 = v59;
                goto LABEL_66;
              }

              v66 = a3;
              v67 = v37;
              v64 = v38;
              v72 = &v58;
              v40 = v68[8];
              MEMORY[0x28223BE20](result);
              v41 = (&v58 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
              v43 = *(v42 + 16);
              v69 = v44;
              v45 = v43(v41);
              MEMORY[0x28223BE20](v45);
              (v43)(v41, v39, v12);
              v46 = v73;
              v47 = sub_23316FB48(v41, v41);
              if (v46)
              {
                v57 = *v63;
                (*v63)(v41, v12);
                v57(v41, v12);
                v76 = v65;
                v74 = v64;
                goto LABEL_66;
              }

              v48 = v47;
              v73 = 0;
              v49 = v66;
              v50 = v66 + v36;
              v51 = *v63;
              (*v63)(v41, v12);
              result = v51(v41, v12);
              if (v48)
              {
                break;
              }

              v38 = v69;
              v52 = v61;
              a3 = v50;
              if (v49 < v67 || v50 >= v67)
              {
                result = swift_arrayInitWithTakeFrontToBack();
                v5 = v73;
                a1 = v70;
                v39 = v71;
                v36 = v60;
              }

              else
              {
                v5 = v73;
                a1 = v70;
                v39 = v71;
                v36 = v60;
                if (v49 != v67)
                {
                  result = swift_arrayInitWithTakeBackToFront();
                }
              }

              v37 = v38;
              v13 = v65;
              if (v69 <= v52)
              {
                goto LABEL_61;
              }
            }

            v53 = v61;
            a3 = v50;
            if (v49 < v65 || v50 >= v65)
            {
              v55 = v71;
              result = swift_arrayInitWithTakeFrontToBack();
              v13 = v55;
              v5 = v73;
              a1 = v70;
              v36 = v60;
            }

            else
            {
              v5 = v73;
              a1 = v70;
              v13 = v71;
              v36 = v60;
              if (v49 != v65)
              {
                v54 = v71;
                result = swift_arrayInitWithTakeBackToFront();
                v13 = v54;
              }
            }

            v37 = v67;
            v38 = v64;
          }

          while (v67 > v53);
        }

LABEL_61:
        v73 = v5;
        v74 = v38;
        v76 = v13;
        goto LABEL_66;
      }

      result = swift_arrayInitWithTakeBackToFront();
    }

    v13 = a2;
    goto LABEL_41;
  }

LABEL_69:
  __break(1u);
  return result;
}