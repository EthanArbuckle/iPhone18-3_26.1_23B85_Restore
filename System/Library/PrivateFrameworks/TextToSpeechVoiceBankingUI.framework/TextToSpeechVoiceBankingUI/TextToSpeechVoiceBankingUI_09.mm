uint64_t sub_26EEF1774(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_26EEF17DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26EEF1850(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_26EED926C(a1, v1[2]);
}

uint64_t sub_26EEF1870(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  return sub_26EEDB1B8(a1, v1[2]);
}

uint64_t sub_26EEF1884(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_26EEDBB78(a1, v1[2]);
}

void sub_26EEF18B8(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_26EE1FAB8(0, &qword_2806C93E8, 0x277CCAC98);
  v5 = sub_26EF3B1FC();
  [a1 setSortDescriptors_];

  sub_26EE1FAB8(0, &qword_2806C93B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26EF3D070;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_26EE1EFBC();
  *(v6 + 32) = 0x6563696F76;
  *(v6 + 40) = 0xE500000000000000;
  *(v6 + 96) = sub_26EF3885C();
  *(v6 + 104) = sub_26EEF17DC(&qword_2806C93C0, MEMORY[0x277D70460]);
  *(v6 + 72) = v4;
  v7 = v4;
  v8 = sub_26EF3B42C();
  [a1 setPredicate_];
}

void sub_26EEF1A3C(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  sub_26EE1FAB8(0, &qword_2806C93B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26EF41A40;
  v7 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  v8 = sub_26EE1EFBC();
  *(v6 + 64) = v8;
  *(v6 + 32) = 0x6563696F76;
  *(v6 + 40) = 0xE500000000000000;
  *(v6 + 96) = sub_26EF3885C();
  v9 = sub_26EEF17DC(&qword_2806C93C0, MEMORY[0x277D70460]);
  *(v6 + 72) = v3;
  *(v6 + 136) = v7;
  *(v6 + 144) = v8;
  *(v6 + 104) = v9;
  *(v6 + 112) = 0x4449656C706D6173;
  *(v6 + 120) = 0xE800000000000000;
  *(v6 + 176) = v7;
  *(v6 + 184) = v8;
  *(v6 + 152) = v4;
  *(v6 + 160) = v5;
  v10 = v3;

  v11 = sub_26EF3B42C();
  [a1 setPredicate_];
}

uint64_t sub_26EEF1C64(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_26EEE0A84(a1, v1[2]);
}

uint64_t sub_26EEF1C70(uint64_t a1)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 92);
  v4 = *(v1 + 96);
  v5 = *(v1 + 100);
  return sub_26EEE1228(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80));
}

uint64_t sub_26EEF1CB0(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  return sub_26EEE1AC8(a1, v1[2]);
}

uint64_t sub_26EEF1D04()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26EEF1D58()
{
  v29[4] = *MEMORY[0x277D85DE8];
  v0 = sub_26EF3883C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v7 = sub_26EF3B20C();

  v8 = *(v7 + 16);
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = (v7 + 16 + 16 * v8);
  v11 = *v9;
  v10 = v9[1];

  v12 = [objc_opt_self() defaultManager];
  v13 = sub_26EF3B0BC();
  v29[0] = 0;
  v14 = [v12 attributesOfFileSystemForPath:v13 error:v29];

  v15 = v29[0];
  if (!v14)
  {
    v20 = v15;
    v21 = sub_26EF37D1C();

    swift_willThrow();
    sub_26EF3934C();

    v22 = sub_26EF3881C();
    v23 = sub_26EF3B45C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29[0] = v25;
      *v24 = 136315138;
      v26 = sub_26EE40670(v11, v10, v29);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_26EE01000, v22, v23, "Unable to gather system attributes for directory %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x2743842A0](v25, -1, -1);
      MEMORY[0x2743842A0](v24, -1, -1);
    }

    else
    {
    }

    (*(v1 + 8))(v5, v0);
    goto LABEL_12;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_26EEF17DC(&qword_2806C9378, type metadata accessor for FileAttributeKey);
  v16 = sub_26EF3B02C();

  if (!*(v16 + 16) || (v17 = sub_26EEEC66C(*MEMORY[0x277CCA1D0]), (v18 & 1) == 0))
  {
LABEL_7:

    goto LABEL_12;
  }

  sub_26EE40D04(*(v16 + 56) + 32 * v17, v29);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  result = v28[1];
LABEL_13:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26EEF2100()
{
  MEMORY[0x274384370](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26EEF2140()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__configurationStage;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

unint64_t sub_26EEF21B0()
{
  result = qword_2806C9310;
  if (!qword_2806C9310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9310);
  }

  return result;
}

void sub_26EEF220C()
{
  sub_26EEF2430(319, &qword_2806C9318, MEMORY[0x277CC95F0]);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    v2 = sub_26EF38CDC();
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_26EEF2430(319, &qword_2806C9320, MEMORY[0x277D70610]);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        v6 = sub_26EF3925C();
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          v8 = sub_26EF3804C();
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_26EEF2430(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26EF3B5CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SampleState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SampleState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26EEF2724(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return sub_26EF3B2BC();
}

void sub_26EEF27DC(uint64_t a1, unint64_t *a2)
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

uint64_t sub_26EEF2828()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__assetDownloadProgress;
  result = swift_beginAccess();
  *(v2 + v3) = v1;
  return result;
}

uint64_t sub_26EEF2880()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__trainingScriptItems;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
}

uint64_t sub_26EEF2900()
{
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C80A0, &unk_26EF3FC10) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C80A0, &unk_26EF3FC10);
  return sub_26EF3B2BC();
}

uint64_t sub_26EEF2AB0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__service);
  *(v1 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__service) = *(v0 + 24);
}

uint64_t sub_26EEF2BFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93B0, &qword_26EF42D38);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26EEF2CCC(float a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93B0, &qword_26EF42D38) - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(a1);
  if (a1 >= 1.0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93B0, &qword_26EF42D38);
    return sub_26EF3B2BC();
  }

  return result;
}

uint64_t sub_26EEF2DA8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t objectdestroy_91Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_26EEF2F68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__sampleState;
  swift_beginAccess();
  *(v1 + v3) = v2;
  return sub_26EED4708();
}

uint64_t VoiceBankingAccountInformationModel.iCloudFirstName.getter()
{
  v0 = sub_26EE7AA60();
  v1 = sub_26EF390DC();

  return v1;
}

uint64_t VoiceBankingAccountInformationModel.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_26EEF3308()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t static TTSDownloadButtonState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (*(a1 + 4) == 1)
    {
      if (v4 == 1)
      {
        return (LODWORD(v3) ^ LODWORD(v2) ^ 1) & 1;
      }

      return 0;
    }

    if (v2 == 0.0)
    {
      if (v4 != 2 || LODWORD(v3) != 0)
      {
        return 0;
      }
    }

    else if (v4 != 2 || LODWORD(v3) != 1)
    {
      return 0;
    }

    return 1;
  }

  if (!*(a2 + 4))
  {
    v6 = *a1;
    if (v2 == v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t TTSDownloadButtonState.hash(into:)()
{
  if (*(v0 + 4))
  {
    if (*(v0 + 4) == 1)
    {
      MEMORY[0x274383950](3);
      return sub_26EF3B89C();
    }

    else
    {
      return MEMORY[0x274383950](*v0 != 0);
    }
  }

  else
  {
    MEMORY[0x274383950](2);
    return sub_26EF3B8AC();
  }
}

uint64_t TTSDownloadButtonState.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 4);
  sub_26EF3B87C();
  TTSDownloadButtonState.hash(into:)();
  return sub_26EF3B8CC();
}

uint64_t sub_26EEF34B0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (*(a1 + 4) == 1)
    {
      if (v4 == 1)
      {
        return (LODWORD(v3) ^ LODWORD(v2) ^ 1) & 1;
      }

      return 0;
    }

    if (v2 == 0.0)
    {
      if (v4 != 2 || LODWORD(v3) != 0)
      {
        return 0;
      }
    }

    else if (v4 != 2 || LODWORD(v3) != 1)
    {
      return 0;
    }

    return 1;
  }

  if (!*(a2 + 4))
  {
    v6 = *a1;
    if (v2 == v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_26EEF3528()
{
  v2 = *v0;
  v3 = *(v0 + 4);
  sub_26EF3B87C();
  TTSDownloadButtonState.hash(into:)();
  return sub_26EF3B8CC();
}

uint64_t sub_26EEF3580()
{
  v2 = *v0;
  v3 = *(v0 + 4);
  sub_26EF3B87C();
  TTSDownloadButtonState.hash(into:)();
  return sub_26EF3B8CC();
}

uint64_t sub_26EEF35D0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8818, &qword_26EF40D60);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9490, &qword_26EF43188);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v42 - v12;
  v14 = *v1;
  v15 = *(v1 + 2);
  v16 = *(v1 + 12);
  sub_26EF3A26C();
  v17 = sub_26EF3A41C();
  sub_26EF3962C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8810, &unk_26EF43190) + 36)];
  *v26 = v17;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = sub_26EF3A3AC();
  sub_26EF3962C();
  v28 = &v8[*(v4 + 44)];
  *v28 = v27;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  if (v16 && (v16 != 2 || v15 != 1))
  {
    v14 = 0;
  }

  v33 = &v13[*(v9 + 36)];
  v34 = *(sub_26EF39B7C() + 20);
  v35 = *MEMORY[0x277CE0118];
  v36 = sub_26EF39ECC();
  (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
  *v33 = v14;
  *(v33 + 1) = v14;
  *&v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8358, &qword_26EF40040) + 36)] = 256;
  sub_26EE14D98(v8, v13, &qword_2806C8818, &qword_26EF40D60);
  if (sub_26EF3A27C())
  {
    v37 = sub_26EF3AA3C();
  }

  else
  {
    v37 = sub_26EF3AA4C();
  }

  v38 = v37;
  KeyPath = swift_getKeyPath();
  sub_26EE14D98(v13, a1, &qword_2806C9490, &qword_26EF43188);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9498, &qword_26EF431D0);
  v41 = (a1 + *(result + 36));
  *v41 = KeyPath;
  v41[1] = v38;
  return result;
}

void *sub_26EEF387C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26EF3AE4C();
  v5 = v4;
  sub_26EEF3938(v1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v10, __src, sizeof(v10));
  sub_26EE13B88(__dst, &v7, &qword_2806C94A0, &unk_26EF431D8);
  sub_26EE14578(v10, &qword_2806C94A0, &unk_26EF431D8);
  *a1 = v3;
  *(a1 + 8) = v5;
  result = memcpy((a1 + 16), __dst, 0x180uLL);
  *(a1 + 400) = 0;
  return result;
}

uint64_t sub_26EEF3938@<X0>(float *a1@<X0>, void *a2@<X8>)
{
  v30 = a2;
  v3 = sub_26EF3AA9C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EF3A99C();
  v38 = sub_26EF3AA2C();

  v9 = *a1;
  sub_26EF3979C();
  v10 = v41;
  v34 = v43;
  v35 = v42;
  v11 = v44;
  v33 = v45;
  v12 = v46;
  v13 = sub_26EF3AE4C();
  v36 = v14;
  v37 = v13;
  sub_26EF3AE4C();
  sub_26EF3984C();
  v15 = a1[6];
  v16 = *(a1 + 4);
  sub_26EF3979C();

  v31 = sub_26EF3AE4C();
  v32 = v17;
  sub_26EF3AE4C();
  sub_26EF3984C();
  sub_26EF3AF2C();
  v19 = v18;
  v21 = v20;
  v22 = sub_26EF3AE9C();
  v29 = v22;
  v23 = *(a1 + 1);
  v24 = *(a1 + 2);

  sub_26EF3AA8C();
  (*(v4 + 104))(v8, *MEMORY[0x277CE0FE0], v3);
  v28 = sub_26EF3AADC();

  (*(v4 + 8))(v8, v3);
  sub_26EF3AE4C();
  sub_26EF3984C();
  LOBYTE(v83[0]) = 1;
  *&v40[6] = v47;
  *&v40[22] = v48;
  *&v40[38] = v49;
  KeyPath = swift_getKeyPath();
  *&v63 = v10;
  *(&v63 + 1) = __PAIR64__(v34, v35);
  *&v64 = v11;
  *(&v64 + 1) = v33;
  *&v65 = v12;
  *(&v65 + 1) = v38;
  LOWORD(v66) = 256;
  *(&v66 + 2) = v53;
  WORD3(v66) = v54;
  *(&v66 + 1) = v37;
  *v67 = v36;
  *&v67[24] = v51;
  *&v67[40] = v52;
  *&v67[8] = v50;
  v39[2] = v65;
  v39[3] = v66;
  v39[0] = v63;
  v39[1] = v64;
  *&v39[7] = *(&v52 + 1);
  v39[5] = *&v67[16];
  v39[6] = *&v67[32];
  v39[4] = *v67;
  *&v68[0] = 0;
  *(v68 + 1) = v15;
  v68[1] = v60;
  v68[2] = v61;
  *&v69 = v62;
  *(&v69 + 1) = v16;
  LOWORD(v70) = 256;
  WORD3(v70) = v59;
  *(&v70 + 2) = v58;
  *(&v70 + 1) = v31;
  *&v71[0] = v32;
  *(&v71[2] + 8) = v57;
  *(&v71[1] + 8) = v56;
  *(v71 + 8) = v55;
  *(&v71[3] + 1) = 0xBFF921FB54442D18;
  *&v72[0] = v19;
  *(&v72[0] + 1) = v21;
  *&v72[1] = v22;
  *(&v72[1] + 2) = v15;
  *(&v39[17] + 4) = *(v72 + 12);
  *(&v39[16] + 8) = v72[0];
  *(&v39[9] + 8) = v61;
  *(&v39[8] + 8) = v60;
  *(&v39[7] + 8) = v68[0];
  *(&v39[13] + 8) = v71[1];
  *(&v39[12] + 8) = v71[0];
  *(&v39[11] + 8) = v70;
  *(&v39[10] + 8) = v69;
  *(&v39[15] + 8) = v71[3];
  *(&v39[14] + 8) = v71[2];
  v26 = v28;
  v73[0] = v28;
  v73[1] = 0;
  LOWORD(v74[0]) = 1;
  *(v74 + 2) = *v40;
  *(&v74[1] + 2) = *&v40[16];
  *(&v74[2] + 2) = *&v40[32];
  *&v74[3] = *&v40[46];
  *(&v74[3] + 1) = KeyPath;
  v75 = v16;
  *(&v39[18] + 8) = v28;
  *(&v39[19] + 8) = v74[0];
  *(&v39[21] + 8) = v74[2];
  *(&v39[22] + 8) = v74[3];
  *(&v39[20] + 8) = v74[1];
  *(&v39[23] + 1) = v16;
  memcpy(v30, v39, 0x180uLL);
  v76[0] = v26;
  v76[1] = 0;
  v77 = 1;
  v78 = *v40;
  v79 = *&v40[16];
  *v80 = *&v40[32];
  *&v80[14] = *&v40[46];
  v81 = KeyPath;
  v82 = v16;

  sub_26EE13B88(&v63, v83, &qword_2806C9590, &qword_26EF43550);
  sub_26EE13B88(v68, v83, &qword_2806C9598, &qword_26EF43558);
  sub_26EE13B88(v73, v83, &qword_2806C95A0, &unk_26EF43560);
  sub_26EE14578(v76, &qword_2806C95A0, &unk_26EF43560);
  v83[0] = 0;
  *&v83[1] = v15;
  v84 = v60;
  v85 = v61;
  v86 = v62;
  v87 = v16;
  v88 = 256;
  v89 = v58;
  v90 = v59;
  v91 = v31;
  v92 = v32;
  v94 = v56;
  v95 = v57;
  v93 = v55;
  v96 = 0xBFF921FB54442D18;
  v97 = v19;
  v98 = v21;
  v99 = v29;
  v100 = v15;
  sub_26EE14578(v83, &qword_2806C9598, &qword_26EF43558);
  v101 = v10;
  v102 = v35;
  v103 = v34;
  v104 = v11;
  v105 = v33;
  v106 = v12;
  v107 = v38;
  v108 = 256;
  v109 = v53;
  v110 = v54;
  v111 = v37;
  v112 = v36;
  v115 = v52;
  v114 = v51;
  v113 = v50;
  return sub_26EE14578(&v101, &qword_2806C9590, &qword_26EF43550);
}

__n128 sub_26EEF3FAC@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = sub_26EF3AE4C();
  v29 = v11;
  v30 = v10;
  sub_26EF3979C();

  v12 = sub_26EF3AE4C();
  v14 = v13;
  sub_26EF3AE4C();
  sub_26EF3984C();
  LOBYTE(v48[0]) = a2;
  *(&v48[0] + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AAFC();
  if (v38)
  {
    v15 = 6.28318531;
  }

  else
  {
    v15 = 0.0;
  }

  sub_26EF3AF2C();
  v17 = v16;
  v19 = v18;
  sub_26EF3AE8C();
  v20 = sub_26EF3AE7C();

  sub_26EF3AAFC();
  v21 = v38;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a5;
  *(v22 + 32) = a2;
  *(v22 + 40) = a3;
  v65 = 0;
  v64 = 0;

  v38 = xmmword_26EF43170;
  v39 = v35;
  v40 = v36;
  *&v41 = v37;
  *(&v41 + 1) = a1;
  LOWORD(v42) = 256;
  *(&v42 + 1) = v12;
  *v43 = v14;
  *&v43[8] = v32;
  *&v43[24] = v33;
  *&v43[40] = v34;
  *&v43[56] = v15;
  *&v44 = v17;
  *(&v44 + 1) = v19;
  *&v45 = v20;
  BYTE8(v45) = v21;
  v48[1] = v35;
  v48[2] = v36;
  *&v46 = sub_26EEF7974;
  *(&v46 + 1) = v22;
  v47 = 0uLL;
  v48[0] = xmmword_26EF43170;
  v49 = v37;
  v50 = a1;
  v51 = 256;
  v52 = v12;
  v53 = v14;
  v56 = v34;
  v54 = v32;
  v55 = v33;
  v57 = v15;
  v58 = v17;
  v59 = v19;
  v60 = v20;
  v61 = v21;
  v62 = sub_26EEF7974;
  v63 = v22;
  sub_26EE13B88(&v38, &v31, &qword_2806C94A8, &qword_26EF431E8);
  sub_26EE14578(v48, &qword_2806C94A8, &qword_26EF431E8);
  *a4 = v30;
  *(a4 + 8) = v29;
  v23 = v46;
  *(a4 + 176) = v45;
  *(a4 + 192) = v23;
  *(a4 + 208) = v47;
  v24 = *&v43[32];
  *(a4 + 112) = *&v43[16];
  *(a4 + 128) = v24;
  v25 = v44;
  *(a4 + 144) = *&v43[48];
  *(a4 + 160) = v25;
  v26 = v41;
  *(a4 + 48) = v40;
  *(a4 + 64) = v26;
  v27 = *v43;
  *(a4 + 80) = v42;
  *(a4 + 96) = v27;
  result = v39;
  *(a4 + 16) = v38;
  *(a4 + 32) = result;
  *(a4 + 224) = 0;
  return result;
}

uint64_t TTSDownloadButton.buttonState.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(result + 36));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 4);
  *a2 = v4;
  *(a2 + 4) = v3;
  return result;
}

uint64_t TTSDownloadButton.buttonState.setter(uint64_t result, uint64_t a2)
{
  v3 = *(result + 4);
  v4 = v2 + *(a2 + 36);
  *v4 = *result;
  *(v4 + 4) = v3;
  return result;
}

uint64_t (*TTSDownloadButton.buttonState.modify(uint64_t a1, uint64_t a2))()
{
  result = CGSizeMake;
  v4 = v2 + *(a2 + 36);
  return result;
}

int *TTSDownloadButton.init(buttonState:size:action:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v10 = *a1;
  v11 = *(a1 + 4);
  (*(*(a4 - 8) + 56))(a5, 1, 1);
  result = type metadata accessor for TTSDownloadButton();
  v13 = result[10];
  v14 = (a5 + result[11]);
  *v14 = 0xD000000000000015;
  v14[1] = 0x800000026EF46460;
  v15 = (a5 + result[12]);
  *v15 = 0x6873617274;
  v15[1] = 0xE500000000000000;
  v16 = (a5 + result[13]);
  *v16 = 0x6C69662E706F7473;
  v16[1] = 0xE90000000000006CLL;
  v17 = (a5 + result[14]);
  *(a5 + v13) = a6;
  v18 = a5 + result[9];
  *v18 = v10;
  *(v18 + 4) = v11;
  *v17 = a2;
  v17[1] = a3;
  return result;
}

uint64_t TTSDownloadButton.init(action:buttonState:size:downloadView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>, double a7@<D0>)
{
  v22 = a4;
  v13 = sub_26EF3B5CC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v22 - v17;
  v19 = *(a3 + 4);
  v23 = *a3;
  v24 = v19;
  TTSDownloadButton.init(buttonState:size:action:)(&v23, a1, a2, a5, a6, a7);

  v22(v20);

  (*(*(a5 - 8) + 56))(v18, 0, 1, a5);
  return (*(v14 + 40))(a6, v18, v13);
}

uint64_t sub_26EEF45DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = a2 + a3;
  v6 = *(a2 + a3 - 16);
  v7 = *(v5 - 8);
  v8 = (a1 + *(type metadata accessor for TTSDownloadButton() + 56));
  v9 = *v8;
  v10 = v8[1];
  if (*v8)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = sub_26EE15900;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *a4 = v12;
  a4[1] = v11;

  return sub_26EE21114(v9);
}

uint64_t sub_26EEF4678(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = *a1;
  v8 = a1[1];
  if (*a1)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    v10 = sub_26EEF7878;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = (a2 + *(type metadata accessor for TTSDownloadButton() + 56));
  v12 = *v11;
  v13 = v11[1];
  sub_26EE21114(v7);
  result = sub_26EE18828(v12);
  *v11 = v10;
  v11[1] = v9;
  return result;
}

uint64_t TTSDownloadButton.action.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v3 = *v2;
  v4 = v2[1];
  sub_26EE21114(*v2);
  return v3;
}

uint64_t TTSDownloadButton.action.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 56));
  v7 = v6[1];
  result = sub_26EE18828(*v6);
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*TTSDownloadButton.action.modify(uint64_t a1, uint64_t a2))()
{
  result = CGSizeMake;
  v4 = v2 + *(a2 + 56);
  return result;
}

uint64_t TTSDownloadButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v67 = a3;
  v4 = *(a1 - 8);
  v65 = *(v4 + 64);
  v5 = MEMORY[0x28223BE20](a1, a2);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9038, &qword_26EF431F0);
  sub_26EF3A07C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C94B0, &qword_26EF431F8);
  sub_26EF3A07C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C94B8, &unk_26EF43200);
  sub_26EF3A07C();
  v64 = *(a1 + 24);
  v9 = v64;
  v10 = sub_26EEC87E4();
  v81 = v9;
  v82 = v10;
  WitnessTable = swift_getWitnessTable();
  v12 = sub_26EEF6368();
  v79 = WitnessTable;
  v80 = v12;
  v13 = swift_getWitnessTable();
  v14 = sub_26EEF64A4();
  v77 = v13;
  v78 = v14;
  swift_getWitnessTable();
  v61 = sub_26EF3AC0C();
  v60 = swift_getWitnessTable();
  v15 = sub_26EF3AB8C();
  v63 = *(v15 - 8);
  v16 = *(v63 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v59 = &v50 - v18;
  v57 = v15;
  v19 = sub_26EF39ABC();
  v56 = v19;
  v62 = *(v19 - 8);
  v20 = *(v62 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v58 = &v50 - v22;
  v53 = swift_getWitnessTable();
  v75 = v53;
  v76 = MEMORY[0x277CDF678];
  v23 = swift_getWitnessTable();
  v55 = v23;
  v54 = sub_26EEF6804();
  v71 = v19;
  v72 = &type metadata for TTSDownloadButtonStyle;
  v73 = v23;
  v74 = v54;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v25 = *(OpaqueTypeMetadata2 - 8);
  v26 = v25[8];
  v28 = MEMORY[0x28223BE20](OpaqueTypeMetadata2, v27);
  v51 = &v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v52 = &v50 - v31;
  v32 = v4;
  v33 = *(v4 + 16);
  v34 = v66;
  v33(v7, v66, a1);
  v35 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v36 = swift_allocObject();
  v37 = v64;
  *(v36 + 16) = v8;
  *(v36 + 24) = v37;
  (*(v32 + 32))(v36 + v35, v7, a1);
  v68 = v8;
  v69 = v37;
  v70 = v34;
  v38 = v59;
  sub_26EF3AB4C();
  v39 = *(v34 + *(a1 + 40));
  sub_26EF3AE4C();
  v40 = v58;
  v41 = v57;
  sub_26EF3A8AC();
  (*(v63 + 8))(v38, v41);
  v42 = (v34 + *(a1 + 36));
  v43 = *v42;
  LOBYTE(v42) = *(v42 + 4);
  v71 = v39;
  LODWORD(v72) = v43;
  BYTE4(v72) = v42;
  v44 = v51;
  v45 = v56;
  sub_26EF3A66C();
  (*(v62 + 8))(v40, v45);
  v46 = v25[2];
  v47 = v52;
  v46(v52, v44, OpaqueTypeMetadata2);
  v48 = v25[1];
  v48(v44, OpaqueTypeMetadata2);
  v46(v67, v47, OpaqueTypeMetadata2);
  return (v48)(v47, OpaqueTypeMetadata2);
}

uint64_t sub_26EEF4E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9038, &qword_26EF431F0);
  sub_26EF3A07C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C94B0, &qword_26EF431F8);
  sub_26EF3A07C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C94B8, &unk_26EF43200);
  sub_26EF3A07C();
  v29 = a3;
  v30 = sub_26EEC87E4();
  WitnessTable = swift_getWitnessTable();
  v28 = sub_26EEF6368();
  v25 = swift_getWitnessTable();
  v26 = sub_26EEF64A4();
  swift_getWitnessTable();
  v8 = sub_26EF3AC0C();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v21[-v16];
  sub_26EF39F5C();
  v22 = a2;
  v23 = a3;
  v24 = a1;
  sub_26EF3ABFC();
  swift_getWitnessTable();
  v18 = v9[2];
  v18(v17, v14, v8);
  v19 = v9[1];
  v19(v14, v8);
  v18(a4, v17, v8);
  return (v19)(v17, v8);
}

uint64_t sub_26EEF50E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v185 = a1;
  v186 = a3;
  v184 = a4;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9588, &qword_26EF43548);
  v5 = *(*(v170 - 8) + 64);
  MEMORY[0x28223BE20](v170, v6);
  v172 = (&v156 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C94B8, &unk_26EF43200);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v173 = &v156 - v11;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C94E8, &qword_26EF43238);
  v12 = *(*(v171 - 8) + 64);
  MEMORY[0x28223BE20](v171, v13);
  v162 = &v156 - v14;
  v161 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9038, &qword_26EF431F0);
  v15 = sub_26EF3A07C();
  v167 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C94B0, &qword_26EF431F8);
  v16 = sub_26EF3A07C();
  v169 = *(v16 - 8);
  v17 = *(v169 + 64);
  MEMORY[0x28223BE20](v16, v18);
  v168 = &v156 - v19;
  v20 = sub_26EF39AEC();
  v176 = *(v20 - 8);
  v177 = v20;
  v21 = *(v176 + 64);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v174 = &v156 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v175 = &v156 - v26;
  v27 = sub_26EF3AA9C();
  v164 = *(v27 - 8);
  v165 = v27;
  v28 = *(v164 + 64);
  MEMORY[0x28223BE20](v27, v29);
  v163 = &v156 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_26EF3B5CC();
  v157 = *(v31 - 8);
  v32 = *(v157 + 64);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v36 = &v156 - v35;
  v158 = *(a2 - 8);
  v37 = *(v158 + 64);
  v39 = MEMORY[0x28223BE20](v34, v38);
  v41 = &v156 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v39, v42);
  v45 = &v156 - v44;
  v47 = MEMORY[0x28223BE20](v43, v46);
  v49 = &v156 - v48;
  v183 = v15;
  v160 = *(v15 - 8);
  v50 = *(v160 + 64);
  v52 = MEMORY[0x28223BE20](v47, v51);
  v166 = &v156 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52, v54);
  v159 = &v156 - v55;
  v181 = v8;
  v182 = v16;
  v56 = sub_26EF3A07C();
  v179 = *(v56 - 8);
  v57 = *(v179 + 64);
  MEMORY[0x28223BE20](v56, v58);
  v178 = &v156 - v59;
  v60 = type metadata accessor for TTSDownloadButton();
  v61 = v60;
  v62 = (v185 + v60[9]);
  v63 = *v62;
  v64 = *(v62 + 4);
  v180 = v56;
  if (v64)
  {
    if (v64 == 1)
    {
      if (v63)
      {
        v65 = (v185 + v60[12]);
        v66 = *v65;
        v67 = v65[1];

        sub_26EF3AA8C();
        v69 = v163;
        v68 = v164;
        v70 = v165;
        (*(v164 + 104))(v163, *MEMORY[0x277CE0FE0], v165);
        v71 = sub_26EF3AADC();

        (*(v68 + 8))(v69, v70);
        sub_26EF3AF2C();
        v72 = v175;
        sub_26EF39AFC();
        v74 = v176;
        v73 = v177;
        (*(v176 + 16))(v174, v72, v177);
        sub_26EEF78AC(&qword_2806C90D0, MEMORY[0x277CDFAE8]);
        v75 = sub_26EF3986C();
        (*(v74 + 8))(v72, v73);

        v76 = 1;
      }

      else
      {
        v71 = 0;
        v76 = 0;
        v75 = 0;
      }

      v113 = v183;
      v195 = v71;
      *&v196 = v76;
      *(&v196 + 1) = v75;
      v114 = sub_26EEC87E4();
      v89 = v186;
      v203 = v186;
      v204 = v114;
      WitnessTable = swift_getWitnessTable();
      v116 = sub_26EEF6368();
      v117 = v168;
      sub_26EE83440(&v195, v113, v167);
      v201 = WitnessTable;
      v202 = v116;
      v118 = v182;
      swift_getWitnessTable();
      sub_26EEF64A4();
      v93 = v178;
      sub_26EE83348(v117, v118);
      sub_26EEF78F4(v71);
      sub_26EEF78F4(v71);
      (*(v169 + 8))(v117, v118);
LABEL_15:
      v112 = v179;
      v111 = v184;
      goto LABEL_16;
    }

    if (!v63)
    {
      v119 = v157;
      (*(v157 + 16))(v36, v185, v31);
      v120 = v158;
      if ((*(v158 + 48))(v36, 1, a2) == 1)
      {
        (*(v119 + 8))(v36, v31);
        v121 = v185;
        v122 = (v185 + v61[11]);
        v123 = *v122;
        v124 = v122[1];

        sub_26EF3AA8C();
        v125 = v163;
        v126 = v164;
        v127 = v165;
        (*(v164 + 104))(v163, *MEMORY[0x277CE0FE0], v165);
        v173 = sub_26EF3AADC();

        (*(v126 + 8))(v125, v127);
        v128 = *(v121 + v61[10]) + -5.0;
        sub_26EF3AE4C();
        sub_26EF3984C();
        LOBYTE(v195) = 1;
        *&v194[6] = v219;
        *&v194[22] = v220;
        *&v194[38] = v221;
        sub_26EF3AF2C();
        v129 = v175;
        sub_26EF39AFC();
        v131 = v176;
        v130 = v177;
        (*(v176 + 16))(v174, v129, v177);
        sub_26EEF78AC(&qword_2806C90D0, MEMORY[0x277CDFAE8]);
        v132 = sub_26EF3986C();
        (*(v131 + 8))(v129, v130);
        v133 = sub_26EF3A96C();
        KeyPath = swift_getKeyPath();
        *(v192 + 2) = *v194;
        v191 = v173;
        LOWORD(v192[0]) = 1;
        *(&v192[1] + 2) = *&v194[16];
        *(&v192[2] + 2) = *&v194[32];
        *&v192[3] = *&v194[46];
        *(&v192[3] + 1) = v132;
        *&v193 = KeyPath;
        *(&v193 + 1) = v133;
        sub_26EEC87E4();
        v135 = v159;
        v89 = v186;
        sub_26EE83440(&v191, a2, v161);
        v197 = v192[1];
        v198 = v192[2];
        v199 = v192[3];
        v200 = v193;
        v195 = v191;
        v196 = v192[0];
        sub_26EE14578(&v195, &qword_2806C9038, &qword_26EF431F0);
      }

      else
      {
        (*(v120 + 32))(v49, v36, a2);
        v136 = *(v120 + 16);
        v136(v45, v49, a2);
        v136(v41, v45, a2);
        sub_26EEC87E4();
        v135 = v159;
        v137 = v120;
        v89 = v186;
        sub_26EE83348(v41, a2);
        v138 = *(v137 + 8);
        v138(v41, a2);
        v138(v45, a2);
        v138(v49, a2);
      }

      v139 = sub_26EEC87E4();
      v189 = v89;
      v190 = v139;
      v140 = v183;
      v141 = swift_getWitnessTable();
      v142 = v160;
      v143 = v166;
      (*(v160 + 16))(v166, v135, v140);
      v144 = sub_26EEF6368();
      v145 = v168;
      sub_26EE83348(v143, v140);
      v187 = v141;
      v188 = v144;
      v146 = v135;
      v147 = v182;
      swift_getWitnessTable();
      sub_26EEF64A4();
      v93 = v178;
      sub_26EE83348(v145, v147);
      (*(v169 + 8))(v145, v147);
      v148 = *(v142 + 8);
      v148(v166, v140);
      v148(v146, v140);
      goto LABEL_15;
    }

    v97 = v185;
    v98 = sub_26EF3A96C();
    v99 = *(v97 + v61[10]);
    LOBYTE(v191) = 0;
    sub_26EF3AAEC();
    LOBYTE(v97) = v195;
    v100 = *(&v195 + 1);
    sub_26EF3AF2C();
    v101 = v175;
    sub_26EF39AFC();
    v103 = v176;
    v102 = v177;
    (*(v176 + 16))(v174, v101, v177);
    sub_26EEF78AC(&qword_2806C90D0, MEMORY[0x277CDFAE8]);
    v104 = sub_26EF3986C();
    (*(v103 + 8))(v101, v102);
    *&v195 = v98;
    *(&v195 + 1) = v99;
    LOBYTE(v196) = v97;
    *(&v196 + 1) = v100;
    *&v197 = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C94F8, &qword_26EF43240);
    sub_26EEF65EC();
    v105 = v162;
    sub_26EF3A7BC();

    sub_26EE13B88(v105, v172, &qword_2806C94E8, &qword_26EF43238);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9510, &qword_26EF43248);
    sub_26EEF6530();
    sub_26EEF66F8();
    v106 = v173;
    sub_26EF3A06C();
    v107 = sub_26EEC87E4();
    v89 = v186;
    v207 = v186;
    v208 = v107;
    v108 = swift_getWitnessTable();
    v109 = sub_26EEF6368();
    v205 = v108;
    v206 = v109;
    v110 = v182;
    swift_getWitnessTable();
    sub_26EEF64A4();
    v93 = v178;
    sub_26EE83440(v106, v110, v181);
    sub_26EE14578(v106, &qword_2806C94B8, &unk_26EF43200);
    v96 = v105;
    v94 = &qword_2806C94E8;
    v95 = &qword_26EF43238;
  }

  else
  {
    v77 = *(v185 + v60[10]);
    v78 = (v185 + v60[13]);
    v80 = *v78;
    v79 = v78[1];

    v81 = sub_26EF3A96C();
    sub_26EF3AF2C();
    v82 = v175;
    sub_26EF39AFC();
    v84 = v176;
    v83 = v177;
    (*(v176 + 16))(v174, v82, v177);
    sub_26EEF78AC(&qword_2806C90D0, MEMORY[0x277CDFAE8]);
    v85 = sub_26EF3986C();
    (*(v84 + 8))(v82, v83);
    v86 = v172;
    *v172 = v77;
    v86[1] = v80;
    v86[2] = v79;
    *(v86 + 6) = v63;
    v86[4] = v81;
    v86[5] = v85;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9510, &qword_26EF43248);
    sub_26EEF6530();
    sub_26EEF66F8();
    v87 = v173;
    sub_26EF3A06C();
    v88 = sub_26EEC87E4();
    v89 = v186;
    v217 = v186;
    v218 = v88;
    v90 = swift_getWitnessTable();
    v91 = sub_26EEF6368();
    v215 = v90;
    v216 = v91;
    v92 = v182;
    swift_getWitnessTable();
    sub_26EEF64A4();
    v93 = v178;
    sub_26EE83440(v87, v92, v181);

    v94 = &qword_2806C94B8;
    v95 = &unk_26EF43200;
    v96 = v87;
  }

  sub_26EE14578(v96, v94, v95);
  v111 = v184;
  v112 = v179;
LABEL_16:
  v149 = sub_26EEC87E4();
  v213 = v89;
  v214 = v149;
  v150 = swift_getWitnessTable();
  v151 = sub_26EEF6368();
  v211 = v150;
  v212 = v151;
  v152 = swift_getWitnessTable();
  v153 = sub_26EEF64A4();
  v209 = v152;
  v210 = v153;
  v154 = v180;
  swift_getWitnessTable();
  (*(v112 + 16))(v111, v93, v154);
  return (*(v112 + 8))(v93, v154);
}

unint64_t sub_26EEF62E4()
{
  result = qword_2806C9068;
  if (!qword_2806C9068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9070, &unk_26EF42150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9068);
  }

  return result;
}

unint64_t sub_26EEF6368()
{
  result = qword_2806C94C0;
  if (!qword_2806C94C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C94B0, &qword_26EF431F8);
    sub_26EEF63EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C94C0);
  }

  return result;
}

unint64_t sub_26EEF63EC()
{
  result = qword_2806C94C8;
  if (!qword_2806C94C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C94D0, &qword_26EF43230);
    sub_26EEF62E4();
    sub_26EE154C8(&qword_2806C9078, &qword_2806C9080, &unk_26EF43220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C94C8);
  }

  return result;
}

unint64_t sub_26EEF64A4()
{
  result = qword_2806C94D8;
  if (!qword_2806C94D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C94B8, &unk_26EF43200);
    sub_26EEF6530();
    sub_26EEF66F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C94D8);
  }

  return result;
}

unint64_t sub_26EEF6530()
{
  result = qword_2806C94E0;
  if (!qword_2806C94E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C94E8, &qword_26EF43238);
    sub_26EEF65EC();
    sub_26EEF78AC(&qword_2806C6AD8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C94E0);
  }

  return result;
}

unint64_t sub_26EEF65EC()
{
  result = qword_2806C94F0;
  if (!qword_2806C94F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C94F8, &qword_26EF43240);
    sub_26EEF66A4();
    sub_26EE154C8(&qword_2806C9078, &qword_2806C9080, &unk_26EF43220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C94F0);
  }

  return result;
}

unint64_t sub_26EEF66A4()
{
  result = qword_2806C9500;
  if (!qword_2806C9500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9500);
  }

  return result;
}

unint64_t sub_26EEF66F8()
{
  result = qword_2806C9508;
  if (!qword_2806C9508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9510, &qword_26EF43248);
    sub_26EEF67B0();
    sub_26EE154C8(&qword_2806C9078, &qword_2806C9080, &unk_26EF43220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9508);
  }

  return result;
}

unint64_t sub_26EEF67B0()
{
  result = qword_2806C9518;
  if (!qword_2806C9518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9518);
  }

  return result;
}

unint64_t sub_26EEF6804()
{
  result = qword_2806C9520;
  if (!qword_2806C9520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9520);
  }

  return result;
}

uint64_t sub_26EEF6858()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for TTSDownloadButton();
  v4 = *(*(v3 - 1) + 80);
  v5 = *(*(v3 - 1) + 64);
  v6 = (v4 + 32) & ~v4;
  v7 = v0 + v6;
  v8 = *(v2 - 8);
  if (!(*(v8 + 48))(v0 + v6, 1, v2))
  {
    (*(v8 + 8))(v0 + v6, v2);
  }

  v9 = *(v7 + v3[11] + 8);

  v10 = *(v7 + v3[12] + 8);

  v11 = *(v7 + v3[13] + 8);

  v12 = (v7 + v3[14]);
  if (*v12)
  {
    v13 = v12[1];
  }

  return MEMORY[0x2821FE8E8](v0, v6 + v5, v4 | 7);
}

uint64_t sub_26EEF69BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for TTSDownloadButton();
  v5 = *(v3 - 8);
  result = v3 - 8;
  v6 = v0 + *(result + 64) + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  if (*v6)
  {
    v7 = *(v6 + 8);
    return (*v6)();
  }

  return result;
}

__n128 sub_26EEF6AE8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TTSDownloadButtonState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTSDownloadButtonState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_26EEF6B94(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_26EEF6BAC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

void *__swift_memcpy13_8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TTSDownloadButtonStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 13))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 12);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTSDownloadButtonStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 12) = -a2;
    }
  }

  return result;
}

uint64_t sub_26EEF6C88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26EEF6CD0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_26EEF6D28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26EEF6D70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26EEF6DC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_26EF3B5CC();
  if (v2 <= 0x3F)
  {
    sub_26EE183AC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26EEF6E74(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((((((((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *(((((a1 + v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = (*(v4 + 48))(a1, v5);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void sub_26EEF700C(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v10;
  }

  v11 = ((((((((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 < a3)
  {
    v12 = a3 - v9;
    if (((((((((((v10 + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((((((((v10 + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v9;
    }

    else
    {
      v15 = 1;
    }

    if (((((((((((v10 + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v9 + a2;
      v17 = a1;
      bzero(a1, v11);
      a1 = v17;
      *v17 = v16;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v11) = v15;
      }

      else
      {
        *(a1 + v11) = v15;
      }
    }

    else if (v5)
    {
      *(a1 + v11) = v15;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v11) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v11) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v8 < 0x7FFFFFFF)
  {
    v22 = ((((a1 + v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v22 = a2 & 0x7FFFFFFF;
      v22[1] = 0;
    }

    else
    {
      v22[1] = a2 - 1;
    }
  }

  else if (v8 >= a2)
  {
    v23 = *(v6 + 56);

    v23();
  }

  else
  {
    if (v10 <= 3)
    {
      v18 = ~(-1 << (8 * v10));
    }

    else
    {
      v18 = -1;
    }

    if (v10)
    {
      v19 = v18 & (~v8 + a2);
      if (v10 <= 3)
      {
        v20 = v10;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v10);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

unint64_t sub_26EEF728C()
{
  result = qword_2806C9528;
  if (!qword_2806C9528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9498, &qword_26EF431D0);
    sub_26EEF7344();
    sub_26EE154C8(&qword_2806C67E0, &qword_2806C67E8, &qword_26EF41E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9528);
  }

  return result;
}

unint64_t sub_26EEF7344()
{
  result = qword_2806C9530;
  if (!qword_2806C9530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9490, &qword_26EF43188);
    sub_26EEF73FC();
    sub_26EE154C8(&qword_2806C83B0, &qword_2806C8358, &qword_26EF40040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9530);
  }

  return result;
}

unint64_t sub_26EEF73FC()
{
  result = qword_2806C8868;
  if (!qword_2806C8868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8818, &qword_26EF40D60);
    sub_26EE9B194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C8868);
  }

  return result;
}

unint64_t sub_26EEF748C()
{
  result = qword_2806C9538;
  if (!qword_2806C9538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9540, &qword_26EF43520);
    sub_26EE154C8(&qword_2806C9548, &qword_2806C9550, &qword_26EF43528);
    sub_26EE154C8(&qword_2806C9558, &qword_2806C9560, &qword_26EF43530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9538);
  }

  return result;
}

unint64_t sub_26EEF7574()
{
  result = qword_2806C9568;
  if (!qword_2806C9568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9570, &qword_26EF43538);
    sub_26EE154C8(&qword_2806C9578, &qword_2806C9580, &qword_26EF43540);
    sub_26EE154C8(&qword_2806C9558, &qword_2806C9560, &qword_26EF43530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9568);
  }

  return result;
}

uint64_t sub_26EEF7658(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9038, &qword_26EF431F0);
  sub_26EF3A07C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C94B0, &qword_26EF431F8);
  sub_26EF3A07C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C94B8, &unk_26EF43200);
  sub_26EF3A07C();
  sub_26EEC87E4();
  swift_getWitnessTable();
  sub_26EEF6368();
  swift_getWitnessTable();
  sub_26EEF64A4();
  swift_getWitnessTable();
  sub_26EF3AC0C();
  swift_getWitnessTable();
  sub_26EF3AB8C();
  sub_26EF39ABC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26EEF6804();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26EEF7840()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26EEF7878()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_26EEF78AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26EEF78F4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26EEF7934()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26EEF7974()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  return sub_26EF3AB0C();
}

uint64_t sub_26EEF79D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26EEF7A40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v112 = a1;
  v109 = sub_26EF3A1FC();
  v108 = *(v109 - 8);
  v3 = *(v108 + 64);
  MEMORY[0x28223BE20](v109, v4);
  v106 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SoundCheckView(0);
  v119 = *(v6 - 8);
  v7 = *(v119 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v117 = v9;
  v118 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_26EF39DDC();
  v98 = *(v99 - 1);
  v10 = *(v98 + 64);
  MEMORY[0x28223BE20](v99, v11);
  v97 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8018, &qword_26EF41830);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95A8, &qword_26EF43570);
  v96 = *(v114 - 8);
  v16 = *(v96 + 64);
  MEMORY[0x28223BE20](v114, v17);
  v19 = &v90 - v18;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95B0, &qword_26EF43578);
  v100 = *(v101 - 8);
  v20 = *(v100 + 64);
  MEMORY[0x28223BE20](v101, v21);
  v115 = &v90 - v22;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95B8, &qword_26EF43580);
  v23 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102, v24);
  v103 = &v90 - v25;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95C0, &qword_26EF43588);
  v26 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105, v27);
  v116 = &v90 - v28;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95C8, &qword_26EF43590);
  v110 = *(v111 - 8);
  v29 = *(v110 + 64);
  v31 = MEMORY[0x28223BE20](v111, v30);
  v107 = &v90 - v32;
  v113 = sub_26EEF892C(v31);
  v94 = v33;
  v93 = sub_26EEF8B74();
  v92 = v34;
  v104 = v6;
  v35 = *(v6 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95D0, &qword_26EF43598);
  sub_26EF3AB1C();
  v122 = v1;
  v121 = v1;
  v120 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95D8, &qword_26EF435A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95E0, &qword_26EF435A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95E8, &qword_26EF435B0);
  sub_26EEFAAE0(&qword_2806C95F0, &qword_2806C95D8, &qword_26EF435A0, sub_26EEFA6F4);
  sub_26EEFA8E4();
  sub_26EEFAAE0(&qword_2806C9688, &qword_2806C95E8, &qword_26EF435B0, sub_26EEFAB5C);
  v95 = v19;
  sub_26EF386BC();
  v36 = *v1;
  v37 = *(v1 + 8);
  if (v37 == 1)
  {
    v38 = v36;
  }

  else
  {
    v39 = *v1;

    sub_26EF3B46C();
    v40 = sub_26EF3A36C();
    sub_26EF3880C();

    v41 = v97;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v36, 0);
    (*(v98 + 8))(v41, v99);
    v38 = v125;
  }

  VoiceBankingSession.sampleState.getter(&v125);

  LOBYTE(v123) = v125;
  v42 = v118;
  sub_26EF06BC8(v2, v118, type metadata accessor for SoundCheckView);
  v43 = (*(v119 + 80) + 16) & ~*(v119 + 80);
  v119 = *(v119 + 80);
  v117 += v43;
  v44 = swift_allocObject();
  sub_26EF06DD8(v42, v44 + v43, type metadata accessor for SoundCheckView);
  v45 = sub_26EE154C8(&qword_2806C96B0, &qword_2806C95A8, &qword_26EF43570);
  v46 = sub_26EEF21B0();
  v47 = v114;
  v48 = v95;
  sub_26EF3A8FC();

  (*(v96 + 8))(v48, v47);
  if (v37)
  {
    v49 = v36;
  }

  else
  {

    sub_26EF3B46C();
    v50 = sub_26EF3A36C();
    sub_26EF3880C();

    v51 = v97;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v36, 0);
    (*(v98 + 8))(v51, v99);
    v49 = v125;
  }

  v52 = sub_26EED34C4();

  LOBYTE(v123) = v52;
  v53 = v118;
  sub_26EF06BC8(v2, v118, type metadata accessor for SoundCheckView);
  v54 = swift_allocObject();
  sub_26EF06DD8(v53, v54 + v43, type metadata accessor for SoundCheckView);
  v125 = v114;
  v126 = &type metadata for SampleState;
  v127 = v45;
  v128 = v46;
  swift_getOpaqueTypeConformance2();
  sub_26EE1C384();
  v55 = v103;
  v56 = v101;
  v57 = v115;
  sub_26EF3A8FC();

  (*(v100 + 8))(v57, v56);
  v58 = (v2 + *(v104 + 40));
  v60 = *v58;
  v59 = v58[1];
  v125 = v60;
  v126 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D70, &qword_26EF3D490);
  sub_26EF3AAFC();
  v61 = v123;
  v91 = v2;
  sub_26EF06BC8(v2, v53, type metadata accessor for SoundCheckView);
  v62 = swift_allocObject();
  v63 = v43;
  v113 = v43;
  sub_26EF06DD8(v53, v62 + v43, type metadata accessor for SoundCheckView);
  v64 = v102;
  *&v55[*(v102 + 52)] = v61;
  v65 = &v55[*(v64 + 56)];
  v66 = v55;
  *v65 = sub_26EEFC944;
  v65[1] = v62;
  v67 = v106;
  sub_26EF3A1EC();
  sub_26EF06BC8(v2, v53, type metadata accessor for SoundCheckView);
  v68 = swift_allocObject();
  sub_26EF06DD8(v53, v68 + v63, type metadata accessor for SoundCheckView);
  sub_26EE154C8(&qword_2806C96B8, &qword_2806C95B8, &qword_26EF43580);
  sub_26EF3A7AC();

  (*(v108 + 8))(v67, v109);
  sub_26EE14578(v66, &qword_2806C95B8, &qword_26EF43580);
  v69 = v91;
  v70 = *(v91 + 56);
  LOBYTE(v123) = *(v91 + 48);
  v124 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  sub_26EF3AB1C();
  v99 = type metadata accessor for SoundCheckView;
  sub_26EF06BC8(v69, v53, type metadata accessor for SoundCheckView);
  v71 = swift_allocObject();
  sub_26EF06DD8(v53, v71 + v113, type metadata accessor for SoundCheckView);
  v72 = type metadata accessor for VBRecordingResultView(0);
  v73 = sub_26EEFCB0C();
  v74 = sub_26EEF79D8(&qword_2806C96C8, type metadata accessor for VBRecordingResultView);
  v75 = v107;
  v76 = v105;
  v77 = v116;
  sub_26EF3A8BC();

  v78 = sub_26EE14578(v77, &qword_2806C95C0, &qword_26EF43588);
  v116 = &v90;
  MEMORY[0x28223BE20](v78, v79);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C96D0, &qword_26EF43610);
  v125 = v76;
  v126 = v72;
  v127 = v73;
  v128 = v74;
  swift_getOpaqueTypeConformance2();
  v80 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C96D8, &qword_26EF43618);
  v81 = sub_26EE154C8(&qword_2806C96E0, &qword_2806C96D8, &qword_26EF43618);
  v125 = v80;
  v126 = v81;
  swift_getOpaqueTypeConformance2();
  v82 = v112;
  v83 = v111;
  sub_26EF3A8EC();
  (*(v110 + 8))(v75, v83);
  v84 = v118;
  v85 = v99;
  sub_26EF06BC8(v69, v118, v99);
  v86 = swift_allocObject();
  sub_26EF06DD8(v84, v86 + v113, v85);
  v87 = (v82 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C96E8, &qword_26EF43630) + 36));
  v88 = v87 + *(sub_26EF3990C() + 20);
  result = sub_26EF3B2EC();
  *v87 = &unk_26EF43628;
  v87[1] = v86;
  return result;
}

uint64_t sub_26EEF8B74()
{
  v1 = v0;
  v2 = sub_26EF3930C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_26EF39DDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = v0[9];
  LOBYTE(v24[0]) = *(v0 + 64);
  v24[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C96F0, &unk_26EF43638);
  sub_26EF3AAFC();
  if (v23 != 2)
  {
    return 0;
  }

  v15 = *v0;
  if (*(v1 + 8) == 1)
  {
    v16 = v15;
  }

  else
  {
    v18 = *v1;

    sub_26EF3B46C();
    v19 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v15, 0);
    (*(v9 + 8))(v13, v8);
    v16 = v24[0];
  }

  VoiceBankingSession.sampleState.getter(v24);

  v23 = 3;
  if (static SampleState.== infix(_:_:)(v24, &v23))
  {
    if (sub_26EF00030())
    {
      sub_26EF392AC();
      v20 = sub_26EF392CC();
      (*(v3 + 8))(v7, v2);
    }

    else
    {
      if (sub_26EF02554())
      {
        sub_26EF3929C();
      }

      else
      {
        sub_26EF392AC();
      }

      v20 = sub_26EF392DC();
      (*(v3 + 8))(v7, v2);
    }

    return v20;
  }

  else
  {
    v21._object = 0x800000026EF46F70;
    v21._countAndFlagsBits = 0xD000000000000020;
    return TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v21, 1, 0)._countAndFlagsBits;
  }
}

uint64_t sub_26EEF8E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v145 = a2;
  v3 = sub_26EF38CDC();
  v129 = *(v3 - 8);
  v130 = v3;
  v4 = *(v129 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v128 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C99B8, &qword_26EF43AA0);
  v7 = *(*(v142 - 8) + 64);
  MEMORY[0x28223BE20](v142, v8);
  v144 = (&v124 - v9);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C99C0, &qword_26EF43AA8);
  v10 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138, v11);
  v140 = &v124 - v12;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9610, &qword_26EF435C0);
  v13 = *(*(v143 - 8) + 64);
  MEMORY[0x28223BE20](v143, v14);
  v141 = &v124 - v15;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9620, &qword_26EF435C8);
  v16 = *(*(v139 - 8) + 64);
  MEMORY[0x28223BE20](v139, v17);
  v136 = (&v124 - v18);
  v19 = type metadata accessor for SoundCheckView(0);
  v131 = *(v19 - 8);
  v20 = *(v131 + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v22 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8800, &qword_26EF40D20);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v27 = &v124 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9890, &qword_26EF43890);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8, v30);
  v133 = (&v124 - v31);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C99C8, &qword_26EF43AB0);
  v32 = *(*(v132 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v132, v33);
  v134 = &v124 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v39 = &v124 - v38;
  MEMORY[0x28223BE20](v37, v40);
  v135 = &v124 - v41;
  v42 = sub_26EF39DDC();
  v137 = *(v42 - 8);
  v43 = *(v137 + 64);
  MEMORY[0x28223BE20](v42, v44);
  v46 = &v124 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *a1;
  v126 = *(a1 + 8);
  v125 = v46;
  v127 = v47;
  if (v126 == 1)
  {
    v48 = v47;
  }

  else
  {

    sub_26EF3B46C();
    v49 = sub_26EF3A36C();
    v124 = v42;
    v50 = v27;
    v51 = a1;
    v52 = v39;
    v53 = v22;
    v54 = v49;
    sub_26EF3880C();

    v22 = v53;
    v39 = v52;
    a1 = v51;
    v27 = v50;
    v42 = v124;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v47, 0);
    (*(v137 + 8))(v46, v42);
    v48 = v161;
  }

  VoiceBankingSession.sampleState.getter(&v161);

  LOBYTE(v158) = 3;
  if (static SampleState.== infix(_:_:)(&v161, &v158))
  {
    sub_26EF398DC();
    v55 = sub_26EF398FC();
    (*(*(v55 - 8) + 56))(v27, 0, 1, v55);
    sub_26EF06BC8(a1, v22, type metadata accessor for SoundCheckView);
    v56 = (*(v131 + 80) + 16) & ~*(v131 + 80);
    v57 = swift_allocObject();
    v58 = sub_26EF06DD8(v22, v57 + v56, type metadata accessor for SoundCheckView);
    MEMORY[0x28223BE20](v58, v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C96F8, &unk_26EF43648);
    sub_26EE154C8(&qword_2806C9700, &qword_2806C96F8, &unk_26EF43648);
    v60 = v133;
    sub_26EE98DD0(v27, sub_26EF07740, v57, sub_26EF0774C, v133);
    sub_26EF3AE4C();
    sub_26EF39BAC();
    sub_26EE14D98(v60, v39, &qword_2806C9890, &qword_26EF43890);
    v61 = &v39[*(v132 + 36)];
    v62 = v166;
    *(v61 + 4) = v165;
    *(v61 + 5) = v62;
    *(v61 + 6) = v167;
    v63 = v162;
    *v61 = v161;
    *(v61 + 1) = v63;
    v64 = v164;
    *(v61 + 2) = v163;
    *(v61 + 3) = v64;
    v65 = v135;
    sub_26EE14D98(v39, v135, &qword_2806C99C8, &qword_26EF43AB0);
    v66 = v134;
    sub_26EE13B88(v65, v134, &qword_2806C99C8, &qword_26EF43AB0);
    v67 = v136;
    *v136 = 0;
    v67[8] = 1;
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C99D8, &unk_26EF43AC0);
    sub_26EE13B88(v66, &v67[*(v68 + 48)], &qword_2806C99C8, &qword_26EF43AB0);
    v69 = &v67[*(v68 + 64)];
    *v69 = 0;
    v69[8] = 1;
    sub_26EE14578(v66, &qword_2806C99C8, &qword_26EF43AB0);
    sub_26EE13B88(v67, v140, &qword_2806C9620, &qword_26EF435C8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9630, &unk_26EF435D0);
    sub_26EE154C8(&qword_2806C9618, &qword_2806C9620, &qword_26EF435C8);
    sub_26EE154C8(&qword_2806C9628, &qword_2806C9630, &unk_26EF435D0);
    v70 = v141;
    sub_26EF3A06C();
    sub_26EE13B88(v70, v144, &qword_2806C9610, &qword_26EF435C0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C91A8, &unk_26EF423D8);
    sub_26EEFA780();
    sub_26EEFA860();
    v71 = v145;
    sub_26EF3A06C();
    sub_26EE14578(v70, &qword_2806C9610, &qword_26EF435C0);
    sub_26EE14578(v67, &qword_2806C9620, &qword_26EF435C8);
    v72 = v65;
    v73 = &qword_2806C99C8;
    v74 = &qword_26EF43AB0;
LABEL_13:
    sub_26EE14578(v72, v73, v74);
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9600, &qword_26EF435B8);
    v89 = *(*(v88 - 8) + 56);
    v90 = v71;
    return v89(v90, 0, 1, v88);
  }

  v75 = *(a1 + 64);
  v76 = *(a1 + 72);
  LOBYTE(v161) = v75;
  *(&v161 + 1) = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C96F0, &unk_26EF43638);
  v77 = sub_26EF3AAFC();
  if (v158 == 2)
  {
    v78 = sub_26EE867F0(v77);
    v135 = v79;
    v136 = v78;
    v80 = sub_26EF39F6C();
    v176 = 1;
    if (v126)
    {
      v173 = v127;
      v81 = v127;
    }

    else
    {
      v91 = v127;

      sub_26EF3B46C();
      v92 = sub_26EF3A36C();
      sub_26EF3880C();

      v93 = v125;
      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v91, 0);
      (*(v137 + 8))(v93, v42);
      v81 = v173;
    }

    v94 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationLocale;
    swift_beginAccess();
    v96 = v128;
    v95 = v129;
    v97 = v130;
    (*(v129 + 16))(v128, &v81[v94], v130);

    v98 = sub_26EF38CAC();
    v100 = v99;
    (*(v95 + 8))(v96, v97);
    v101._object = 0x800000026EF46ED0;
    v101._countAndFlagsBits = 0xD000000000000015;
    v102.value._countAndFlagsBits = v98;
    v102.value._object = v100;
    TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v101, 1, v102);

    v103 = sub_26EED275C();
    v105 = v104;
    v107 = v106;
    v109 = v108;
    LOBYTE(v96) = sub_26EF3A3DC();
    sub_26EF3962C();
    v174 = 0;
    v149[0] = v80;
    v149[1] = 0;
    LOBYTE(v150) = v176;
    *(&v150 + 1) = *v175;
    DWORD1(v150) = *&v175[3];
    *(&v150 + 1) = v103;
    *&v151 = v105;
    *(&v151 + 1) = v107;
    *&v152 = v109;
    BYTE8(v152) = v96;
    *&v153 = v110;
    *(&v153 + 1) = v111;
    *&v154 = v112;
    *(&v154 + 1) = v113;
    v155 = 0;
    v171[0] = v80;
    v171[1] = v150;
    v172 = 0;
    v171[4] = v153;
    v171[5] = v154;
    v171[2] = v151;
    v171[3] = v152;
    v148 = 1;
    v156[0] = v80;
    v156[1] = v150;
    v157 = 0;
    v156[4] = v153;
    v156[5] = v154;
    v156[2] = v151;
    v156[3] = v152;
    *&v147[39] = v151;
    *&v147[23] = v150;
    *&v147[7] = v80;
    v147[103] = 0;
    *&v147[87] = v154;
    *&v147[71] = v153;
    *&v147[55] = v152;
    v146[152] = 1;
    *&v158 = v136;
    *(&v158 + 1) = v135;
    *&v159[0] = 0;
    BYTE8(v159[0]) = 1;
    *(&v159[2] + 9) = *&v147[32];
    *(&v159[1] + 9) = *&v147[16];
    *(v159 + 9) = *v147;
    *(&v159[6] + 9) = *&v147[96];
    *(&v159[5] + 9) = *&v147[80];
    *(&v159[4] + 9) = *&v147[64];
    *(&v159[3] + 9) = *&v147[48];
    *(&v159[7] + 1) = 0;
    v160 = 1;
    v161 = v158;
    v162 = v159[0];
    v165 = v159[3];
    v166 = v159[4];
    v163 = v159[1];
    v164 = v159[2];
    v170 = 1;
    v168 = v159[6];
    v169 = v159[7];
    v167 = v159[5];
    v114 = v136;
    sub_26EE13B88(v149, v146, &qword_2806C9888, &qword_26EF43888);
    v115 = v114;
    sub_26EE13B88(v156, v146, &qword_2806C9888, &qword_26EF43888);
    sub_26EE14578(v171, &qword_2806C9888, &qword_26EF43888);

    v116 = v168;
    v117 = v140;
    *(v140 + 96) = v167;
    *(v117 + 112) = v116;
    *(v117 + 128) = v169;
    *(v117 + 144) = v170;
    v118 = v164;
    *(v117 + 32) = v163;
    *(v117 + 48) = v118;
    v119 = v166;
    *(v117 + 64) = v165;
    *(v117 + 80) = v119;
    v120 = v162;
    *v117 = v161;
    *(v117 + 16) = v120;
    swift_storeEnumTagMultiPayload();
    sub_26EE13B88(&v158, v146, &qword_2806C99D0, &qword_26EF43AB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9630, &unk_26EF435D0);
    sub_26EE154C8(&qword_2806C9618, &qword_2806C9620, &qword_26EF435C8);
    sub_26EE154C8(&qword_2806C9628, &qword_2806C9630, &unk_26EF435D0);
    v121 = v141;
    sub_26EF3A06C();
    sub_26EE13B88(v121, v144, &qword_2806C9610, &qword_26EF435C0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C91A8, &unk_26EF423D8);
    sub_26EEFA780();
    sub_26EEFA860();
    v71 = v145;
    sub_26EF3A06C();
    sub_26EE14578(&v158, &qword_2806C99D0, &qword_26EF43AB8);
    sub_26EE14578(v149, &qword_2806C9888, &qword_26EF43888);

    v72 = v121;
    v73 = &qword_2806C9610;
    v74 = &qword_26EF435C0;
    goto LABEL_13;
  }

  LOBYTE(v161) = v75;
  *(&v161 + 1) = v76;
  sub_26EF3AAFC();
  if (v158 != 1)
  {
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9600, &qword_26EF435B8);
    return (*(*(v123 - 8) + 56))(v145, 1, 1, v123);
  }

  sub_26EEF9EA8(&v161);
  v82 = v168;
  v83 = v144;
  v144[6] = v167;
  v83[7] = v82;
  v83[8] = v169;
  v84 = v164;
  v83[2] = v163;
  v83[3] = v84;
  v85 = v166;
  v83[4] = v165;
  v83[5] = v85;
  v86 = v162;
  *v83 = v161;
  v83[1] = v86;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C91A8, &unk_26EF423D8);
  sub_26EEFA780();
  sub_26EEFA860();
  v87 = v145;
  sub_26EF3A06C();
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9600, &qword_26EF435B8);
  v89 = *(*(v88 - 8) + 56);
  v90 = v87;
  return v89(v90, 0, 1, v88);
}

__n128 sub_26EEF9EA8@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_26EF3B0BC();
  v3 = TTSVBSupportLocString();

  sub_26EF3B0FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26EF3C6B0;
  v5 = sub_26EEFF80C();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_26EE1EFBC();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v8 = sub_26EF3B0CC();
  v10 = v9;

  *&v23 = v8;
  *(&v23 + 1) = v10;
  sub_26EE12538();
  v11 = sub_26EF3A5DC();
  v13 = v12;
  LOBYTE(v4) = v14;
  v15 = sub_26EF3A5AC();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_26EE12ABC(v11, v13, v4 & 1);

  sub_26EF3AE4C();
  sub_26EF39BAC();
  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v21;
  *(a1 + 96) = v27;
  *(a1 + 112) = v28;
  *(a1 + 128) = v29;
  *(a1 + 32) = v23;
  *(a1 + 48) = v24;
  result = v26;
  *(a1 + 64) = v25;
  *(a1 + 80) = v26;
  return result;
}

uint64_t sub_26EEFA088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C99B0, &qword_26EF43A98);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v46 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9650, &qword_26EF435E0);
  v8 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47, v9);
  v11 = &v46 - v10;
  v12 = sub_26EF39DDC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  if (*(a1 + 8) == 1)
  {
    v19 = v18;
  }

  else
  {
    v20 = *a1;

    sub_26EF3B46C();
    v21 = sub_26EF3A36C();
    v46 = v7;
    v22 = v21;
    sub_26EF3880C();

    v7 = v46;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v18, 0);
    (*(v13 + 8))(v17, v12);
    v19 = *&v70[0];
  }

  VoiceBankingSession.sampleState.getter(v70);

  LOBYTE(v61) = 3;
  if (static SampleState.== infix(_:_:)(v70, &v61))
  {
    *v11 = sub_26EF39F5C();
    *(v11 + 1) = 0x4034000000000000;
    v11[16] = 0;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9708, &qword_26EF43658);
    sub_26EEFF1E0(a1, &v11[*(v23 + 44)]);
    v24 = sub_26EF3A3DC();
    sub_26EF3962C();
    v25 = &v11[*(v47 + 36)];
    *v25 = v24;
    *(v25 + 1) = v26;
    *(v25 + 2) = v27;
    *(v25 + 3) = v28;
    *(v25 + 4) = v29;
    v25[40] = 0;
    sub_26EE13B88(v11, v7, &qword_2806C9650, &qword_26EF435E0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9670, &qword_26EF435F0);
    sub_26EEFA970();
    sub_26EEFAA28();
    v30 = v48;
    sub_26EF3A06C();
    sub_26EE14578(v11, &qword_2806C9650, &qword_26EF435E0);
LABEL_8:
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95E0, &qword_26EF435A8);
    return (*(*(v43 - 8) + 56))(v30, 0, 1, v43);
  }

  v31 = *(a1 + 72);
  LOBYTE(v70[0]) = *(a1 + 64);
  *(&v70[0] + 1) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C96F0, &unk_26EF43638);
  sub_26EF3AAFC();
  if (v61 == 2)
  {
    v32 = sub_26EF39F5C();
    v60 = 0;
    sub_26EEFED14(a1, &v50);
    v66 = v55;
    v67 = v56;
    v68 = v57;
    v63 = v52;
    v64 = v53;
    v65 = v54;
    v61 = v50;
    v62 = v51;
    v70[6] = v56;
    v70[7] = v57;
    v70[2] = v52;
    v70[3] = v53;
    v70[4] = v54;
    v70[5] = v55;
    v69 = v58;
    v71 = v58;
    v70[0] = v50;
    v70[1] = v51;
    sub_26EE13B88(&v61, &v49, &qword_2806C9710, &qword_26EF43660);
    sub_26EE14578(v70, &qword_2806C9710, &qword_26EF43660);
    *(&v59[5] + 7) = v66;
    *(&v59[6] + 7) = v67;
    *(&v59[7] + 7) = v68;
    *(&v59[1] + 7) = v62;
    *(&v59[2] + 7) = v63;
    *(&v59[3] + 7) = v64;
    *(&v59[4] + 7) = v65;
    *(&v59[8] + 7) = v69;
    *(v59 + 7) = v61;
    v33 = v60;
    v34 = sub_26EF3A3DC();
    sub_26EF3962C();
    v35 = v59[4];
    *(v7 + 97) = v59[5];
    v36 = v59[7];
    *(v7 + 113) = v59[6];
    *(v7 + 129) = v36;
    *(v7 + 9) = *(&v59[7] + 15);
    v37 = v59[0];
    *(v7 + 33) = v59[1];
    v38 = v59[3];
    *(v7 + 49) = v59[2];
    *(v7 + 65) = v38;
    *(v7 + 81) = v35;
    LOBYTE(v50) = 0;
    *v7 = v32;
    *(v7 + 1) = 0x4041800000000000;
    v7[16] = v33;
    *(v7 + 17) = v37;
    v7[160] = v34;
    *(v7 + 21) = v39;
    *(v7 + 22) = v40;
    *(v7 + 23) = v41;
    *(v7 + 24) = v42;
    v7[200] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9670, &qword_26EF435F0);
    sub_26EEFA970();
    sub_26EEFAA28();
    v30 = v48;
    sub_26EF3A06C();
    goto LABEL_8;
  }

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95E0, &qword_26EF435A8);
  return (*(*(v45 - 8) + 56))(v48, 1, 1, v45);
}

uint64_t sub_26EEFA674@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_26EEFACE0(a1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95E8, &qword_26EF435B0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 0, 1, v4);
}

unint64_t sub_26EEFA6F4()
{
  result = qword_2806C95F8;
  if (!qword_2806C95F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9600, &qword_26EF435B8);
    sub_26EEFA780();
    sub_26EEFA860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C95F8);
  }

  return result;
}

unint64_t sub_26EEFA780()
{
  result = qword_2806C9608;
  if (!qword_2806C9608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9610, &qword_26EF435C0);
    sub_26EE154C8(&qword_2806C9618, &qword_2806C9620, &qword_26EF435C8);
    sub_26EE154C8(&qword_2806C9628, &qword_2806C9630, &unk_26EF435D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9608);
  }

  return result;
}

unint64_t sub_26EEFA860()
{
  result = qword_2806C9638;
  if (!qword_2806C9638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C91A8, &unk_26EF423D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9638);
  }

  return result;
}

unint64_t sub_26EEFA8E4()
{
  result = qword_2806C9640;
  if (!qword_2806C9640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C95E0, &qword_26EF435A8);
    sub_26EEFA970();
    sub_26EEFAA28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9640);
  }

  return result;
}

unint64_t sub_26EEFA970()
{
  result = qword_2806C9648;
  if (!qword_2806C9648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9650, &qword_26EF435E0);
    sub_26EE154C8(&qword_2806C9658, &qword_2806C9660, &qword_26EF435E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9648);
  }

  return result;
}

unint64_t sub_26EEFAA28()
{
  result = qword_2806C9668;
  if (!qword_2806C9668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9670, &qword_26EF435F0);
    sub_26EE154C8(&qword_2806C9678, &qword_2806C9680, &qword_26EF435F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9668);
  }

  return result;
}

uint64_t sub_26EEFAAE0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_26EEFAB5C()
{
  result = qword_2806C9690;
  if (!qword_2806C9690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9698, &qword_26EF43600);
    sub_26EEFABE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9690);
  }

  return result;
}

unint64_t sub_26EEFABE8()
{
  result = qword_2806C96A0;
  if (!qword_2806C96A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C96A8, &qword_26EF43608);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C8210, &qword_26EF3FEB0);
    sub_26EE82C68();
    swift_getOpaqueTypeConformance2();
    sub_26EEF79D8(&qword_2806C6AD8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C96A0);
  }

  return result;
}

uint64_t sub_26EEFACE0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8208, &qword_26EF3FEA8);
  v52 = *(v2 - 8);
  v53 = v2;
  v3 = *(v52 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v51 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8210, &qword_26EF3FEB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C99A8, &qword_26EF43A90);
  v54 = *(v12 - 8);
  v55 = v12;
  v13 = *(v54 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C96A8, &qword_26EF43608);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = &v51 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9698, &qword_26EF43600);
  v56 = *(v22 - 8);
  v23 = *(v56 + 64);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v51 - v29;
  sub_26EF02388();
  if (v31)
  {
    sub_26EF3AA8C();
    v51 = a1;
    sub_26EF3AACC();

    v32 = sub_26EF00030();
    v33 = objc_opt_self();
    v34 = &selRef_systemGreenColor;
    if ((v32 & 1) == 0)
    {
      v34 = &selRef_systemOrangeColor;
    }

    v35 = [v33 *v34];
    v36 = sub_26EF3AA5C();
    (*(v52 + 32))(v11, v6, v53);
    *&v11[*(v7 + 36)] = v36;
    sub_26EF3A48C();
    v37 = sub_26EE82C68();
    sub_26EF3A64C();
    sub_26EE14578(v11, &qword_2806C8210, &qword_26EF3FEB0);
    v57 = v7;
    v58 = v37;
    swift_getOpaqueTypeConformance2();
    v38 = v55;
    sub_26EF3A7BC();
    (*(v54 + 8))(v16, v38);
    LOBYTE(v36) = sub_26EF3A3DC();
    sub_26EF3962C();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    sub_26EE14D98(v21, v27, &qword_2806C96A8, &qword_26EF43608);
    v47 = &v27[*(v22 + 36)];
    *v47 = v36;
    *(v47 + 1) = v40;
    *(v47 + 2) = v42;
    *(v47 + 3) = v44;
    *(v47 + 4) = v46;
    v47[40] = 0;
    sub_26EE14D98(v27, v30, &qword_2806C9698, &qword_26EF43600);
    v48 = v51;
    sub_26EE14D98(v30, v51, &qword_2806C9698, &qword_26EF43600);
    return (*(v56 + 56))(v48, 0, 1, v22);
  }

  else
  {
    v50 = *(v56 + 56);

    return v50(a1, 1, 1, v22);
  }
}

void sub_26EEFB1B8(unsigned __int8 *a1, uint64_t a2)
{
  v4 = sub_26EF3872C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v59[1] = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = v59 - v12;
  v15 = MEMORY[0x28223BE20](v11, v14);
  v65 = v59 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v62 = v59 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v63 = v59 - v22;
  MEMORY[0x28223BE20](v21, v23);
  v60 = v59 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9990, &qword_26EF43A78);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8, v27);
  v61 = v59 - v28;
  v29 = sub_26EF39DDC();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29, v32);
  v34 = v59 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *a1;
  v35 = *a2;
  if (*(a2 + 8) == 1)
  {
    v36 = v35;
  }

  else
  {
    v37 = *a2;

    sub_26EF3B46C();
    v38 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v35, 0);
    (*(v30 + 8))(v34, v29);
    v36 = v68;
  }

  VoiceBankingSession.sampleState.getter(&v68);

  LOBYTE(v66) = 3;
  v39 = a2;
  if (static SampleState.== infix(_:_:)(&v68, &v66))
  {
    v40 = v60;
    sub_26EF386DC();
    v41 = *(type metadata accessor for SoundCheckView(0) + 36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95D0, &qword_26EF43598);
    v42 = v63;
    sub_26EF3AAFC();
    (*(v5 + 16))(v65, v42, v4);
    sub_26EEF79D8(&qword_2806C8088, MEMORY[0x277CE7670]);
    v43 = v62;
    sub_26EF3B64C();
    if (sub_26EF3B65C())
    {
      v44 = *(v5 + 8);
      v44(v43, v4);
      v44(v40, v4);
      v45 = 1;
      v46 = v61;
    }

    else
    {
      sub_26EF3B66C();
      (*(v5 + 8))(v40, v4);
      v46 = v61;
      (*(v5 + 32))(v61, v43, v4);
      v45 = 0;
    }

    (*(v5 + 56))(v46, v45, 1, v4);
    sub_26EE14578(v46, &qword_2806C9990, &qword_26EF43A78);
  }

  else
  {
    sub_26EF386DC();
    v47 = *(type metadata accessor for SoundCheckView(0) + 36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95D0, &qword_26EF43598);
    sub_26EF3AAFC();
    v48 = v65;
    sub_26EEFBB5C(v65, v13);
    v49 = *(v5 + 8);
    v49(v13, v4);
    v49(v48, v4);
  }

  sub_26EF3AB0C();
  if (sub_26EE82F00())
  {
    LOBYTE(v68) = v64;
    LOBYTE(v66) = 4;
    if (static SampleState.== infix(_:_:)(&v68, &v66))
    {
      if (!*(v39 + 16))
      {
        v58 = *(v39 + 24);
        type metadata accessor for VoiceBankingNavigationModel();
        sub_26EEF79D8(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);
        sub_26EF39BFC();
        __break(1u);
        return;
      }

      v50 = *(v39 + 16);

      v51 = VoiceBankingNavigationModel.itemPath.getter();

      v52 = *(v51 + 16);
      if (v52)
      {
        v53 = v51 + 16 + 16 * v52;
        v54 = *v53;
        v55 = *(v53 + 8);

        v68 = v54;
        v69 = v55;
        v70 = 0;
        v66 = 5;
        v67 = 1;
        sub_26EE98BFC();
        if (sub_26EF3B0AC())
        {
LABEL_18:
          sub_26EE82F18();
          return;
        }
      }

      else
      {
      }

      v56 = VoiceBankingNavigationModel.itemPath.getter();

      v57 = *(v56 + 16);

      if (v57)
      {
        return;
      }

      goto LABEL_18;
    }
  }
}

uint64_t sub_26EEFB858(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9980, &unk_26EF43A50);
  v4 = *(*(v34 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v34, v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v31 - v9;
  v11 = sub_26EF3930C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v31 - v19;
  v21 = *(v12 + 16);
  v33 = v2;
  v21(v17, v2, v11);
  v22 = MEMORY[0x277D706C0];
  v31 = sub_26EEF79D8(&qword_2806C6A50, MEMORY[0x277D706C0]);
  sub_26EF3B64C();
  v23 = v22;
  v24 = v34;
  sub_26EEF79D8(&qword_2806C9988, v23);
  v32 = a2;
  v25 = sub_26EF3B0AC();
  v26 = *(v24 + 48);
  *v10 = (v25 & 1) == 0;
  if (v25)
  {
    (*(v12 + 32))(&v10[v26], v20, v11);
  }

  else
  {
    (*(v12 + 8))(v20, v11);
    v27 = v32;
    v21(&v10[v26], v32, v11);
    v21(v17, v27, v11);
    sub_26EF3B67C();
  }

  v28 = v35;
  sub_26EE14D98(v10, v35, &qword_2806C9980, &unk_26EF43A50);
  v29 = *v28;
  (*(v12 + 32))(v36, &v28[*(v24 + 48)], v11);
  return v29;
}

uint64_t sub_26EEFBB5C(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9998, &unk_26EF43A80);
  v4 = *(*(v34 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v34, v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v31 - v9;
  v11 = sub_26EF3872C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v31 - v19;
  v21 = *(v12 + 16);
  v33 = v2;
  v21(v17, v2, v11);
  v22 = MEMORY[0x277CE7670];
  v31 = sub_26EEF79D8(&qword_2806C8088, MEMORY[0x277CE7670]);
  sub_26EF3B64C();
  v23 = v22;
  v24 = v34;
  sub_26EEF79D8(&qword_2806C99A0, v23);
  v32 = a2;
  v25 = sub_26EF3B0AC();
  v26 = *(v24 + 48);
  *v10 = (v25 & 1) == 0;
  if (v25)
  {
    (*(v12 + 32))(&v10[v26], v20, v11);
  }

  else
  {
    (*(v12 + 8))(v20, v11);
    v27 = v32;
    v21(&v10[v26], v32, v11);
    v21(v17, v27, v11);
    sub_26EF3B67C();
  }

  v28 = v35;
  sub_26EE14D98(v10, v35, &qword_2806C9998, &unk_26EF43A80);
  v29 = *v28;
  (*(v12 + 32))(v36, &v28[*(v24 + 48)], v11);
  return v29;
}

uint64_t sub_26EEFBE60(unsigned __int8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for SoundCheckView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v24 - v12;
  result = sub_26EE9C28C(*a1, 5u);
  if (result)
  {
    v15 = (a2 + *(v4 + 40));
    v17 = *v15;
    v16 = v15[1];
    v25 = v17;
    v26 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D70, &qword_26EF3D490);
    sub_26EF3AAFC();
    sub_26EF3947C();

    sub_26EF3B57C();

    __swift_project_boxed_opaque_existential_1(&v25, v27);
    sub_26EF3948C();
    __swift_destroy_boxed_opaque_existential_1(&v25);
    v18 = *(a2 + 72);
    LOBYTE(v25) = *(a2 + 64);
    v26 = v18;
    LOBYTE(v24) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C96F0, &unk_26EF43638);
    sub_26EF3AB0C();
    v19 = sub_26EF3B30C();
    (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
    sub_26EF06BC8(a2, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SoundCheckView);
    sub_26EF3B2DC();
    v20 = sub_26EF3B2CC();
    v21 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D85700];
    *(v22 + 16) = v20;
    *(v22 + 24) = v23;
    sub_26EF06DD8(v8, v22 + v21, type metadata accessor for SoundCheckView);
    sub_26EE2C388(0, 0, v13, &unk_26EF43A70, v22);
  }

  return result;
}

uint64_t objectdestroyTm_16()
{
  v1 = (type metadata accessor for SoundCheckView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_26EE05C9C(*(v0 + v3), *(v0 + v3 + 8));
  v5 = *(v0 + v3 + 16);

  v6 = *(v0 + v3 + 56);

  v7 = *(v0 + v3 + 72);

  v8 = v0 + v3 + v1[11];
  v9 = sub_26EF3872C();
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95D0, &qword_26EF43598) + 28));

  v11 = (v0 + v3 + v1[12]);
  v12 = *v11;

  v13 = v11[1];

  v14 = v1[13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8338, &qword_26EF40020);
  (*(*(v15 - 8) + 8))(v0 + v3 + v14, v15);
  v16 = (v0 + v3 + v1[14]);
  v17 = *v16;

  v18 = *(v16 + 1);

  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DA8, &unk_26EF41A60) + 32);
  v20 = sub_26EF38A4C();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(&v16[v19], 1, v20))
  {
    (*(v21 + 8))(&v16[v19], v20);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EEFC368(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(type metadata accessor for SoundCheckView(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a2, v6);
}

uint64_t sub_26EEFC3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_26EF3B2DC();
  v4[3] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_26EEFC484, v6, v5);
}

uint64_t sub_26EEFC484()
{
  v1 = v0[2];
  v2 = *(v1 + 32);
  v0[6] = v2;
  if (v2)
  {
    v2;
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_26EEFC5A8;

    return sub_26EF11E7C();
  }

  else
  {
    v5 = *(v1 + 40);
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EEF79D8(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EEFC5A8()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_26EE789C4, v5, v4);
}

uint64_t sub_26EEFC6E8(uint64_t a1)
{
  v2 = sub_26EF39DDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(type metadata accessor for SoundCheckView(0) + 40));
  v10 = *v8;
  v9 = v8[1];
  v19 = v10;
  v20 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6D70, &qword_26EF3D490);
  sub_26EF3AAFC();
  sub_26EF3947C();

  sub_26EF3B57C();

  __swift_project_boxed_opaque_existential_1(&v19, v21);
  sub_26EF3948C();
  __swift_destroy_boxed_opaque_existential_1(&v19);
  v11 = *a1;
  if (*(a1 + 8) == 1)
  {
    v12 = v11;
  }

  else
  {
    v13 = *a1;

    sub_26EF3B46C();
    v14 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v11, 0);
    (*(v3 + 8))(v7, v2);
    v12 = v19;
  }

  v15 = sub_26EED34C4();

  LOBYTE(v19) = v15;
  LOBYTE(v18) = 5;
  sub_26EE1C384();
  result = sub_26EF3B0AC();
  if ((result & 1) == 0)
  {
    v17 = *(a1 + 72);
    LOBYTE(v19) = *(a1 + 64);
    v20 = v17;
    LOBYTE(v18) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C96F0, &unk_26EF43638);
    return sub_26EF3AB0C();
  }

  return result;
}

uint64_t sub_26EEFC944()
{
  v1 = *(type metadata accessor for SoundCheckView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26EEFC6E8(v2);
}

uint64_t sub_26EEFC9C4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for SoundCheckView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + 32);
  if (v5)
  {
    v6 = *(type metadata accessor for VBRecordingResultView(0) + 20);
    v7 = v5;
    sub_26EF0F034();

    *a1 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);

    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v9 = *(v4 + 40);
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EEF79D8(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

unint64_t sub_26EEFCB0C()
{
  result = qword_2806C96C0;
  if (!qword_2806C96C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C95C0, &qword_26EF43588);
    sub_26EE154C8(&qword_2806C96B8, &qword_2806C95B8, &qword_26EF43580);
    sub_26EEF79D8(&qword_2806C6AD8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C96C0);
  }

  return result;
}

uint64_t sub_26EEFCBF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C96D8, &qword_26EF43618);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v8 - v4;
  sub_26EEFCD20();
  v6 = sub_26EE154C8(&qword_2806C96E0, &qword_2806C96D8, &qword_26EF43618);
  MEMORY[0x274382230](v5, v0, v6);
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_26EEFCD20()
{
  v1 = v0;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9718, &qword_26EF436A0);
  v2 = *(*(v176 - 8) + 64);
  MEMORY[0x28223BE20](v176, v3);
  v175 = &v140 - v4;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9720, &qword_26EF436A8);
  v152 = *(v167 - 8);
  v5 = *(v152 + 64);
  MEMORY[0x28223BE20](v167, v6);
  v151 = &v140 - v7;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9728, &qword_26EF436B0);
  v150 = *(v166 - 8);
  v8 = *(v150 + 64);
  MEMORY[0x28223BE20](v166, v9);
  v149 = &v140 - v10;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9730, &qword_26EF436B8);
  v163 = *(v165 - 8);
  v11 = *(v163 + 64);
  MEMORY[0x28223BE20](v165, v12);
  v162 = &v140 - v13;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9738, &qword_26EF436C0);
  v161 = *(v164 - 8);
  v14 = *(v161 + 64);
  MEMORY[0x28223BE20](v164, v15);
  v160 = &v140 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9740, &qword_26EF436C8);
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17 - 8, v19);
  v173 = &v140 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v174 = &v140 - v23;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9748, &qword_26EF436D0);
  v159 = *(v171 - 8);
  v24 = *(v159 + 64);
  MEMORY[0x28223BE20](v171, v25);
  v158 = &v140 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9750, &qword_26EF436D8);
  v148 = *(v27 - 8);
  v28 = *(v148 + 64);
  MEMORY[0x28223BE20](v27, v29);
  v147 = &v140 - v30;
  v31 = sub_26EF3A13C();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8, v33);
  v172 = &v140 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9758, &qword_26EF436E0);
  v146 = *(v35 - 8);
  v36 = *(v146 + 64);
  MEMORY[0x28223BE20](v35, v37);
  v145 = &v140 - v38;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9760, &qword_26EF436E8);
  v144 = *(v157 - 8);
  v39 = *(v144 + 64);
  MEMORY[0x28223BE20](v157, v40);
  v143 = &v140 - v41;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9768, &qword_26EF436F0);
  v142 = *(v156 - 8);
  v42 = *(v142 + 64);
  MEMORY[0x28223BE20](v156, v43);
  v141 = &v140 - v44;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9770, &unk_26EF436F8);
  v45 = *(*(v169 - 8) + 64);
  MEMORY[0x28223BE20](v169, v46);
  v48 = &v140 - v47;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8C20, &qword_26EF41880);
  v155 = *(v170 - 8);
  v49 = *(v155 + 64);
  MEMORY[0x28223BE20](v170, v50);
  v154 = &v140 - v51;
  v168 = type metadata accessor for ToolbarCancelButton();
  v52 = *(*(v168 - 8) + 64);
  MEMORY[0x28223BE20](v168, v53);
  v153 = &v140 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_26EF39DDC();
  v56 = *(v55 - 8);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55, v58);
  v60 = &v140 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9778, &qword_26EF43708);
  v62 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61 - 8, v63);
  v177 = &v140 - v64;
  v65 = *v0;
  if (*(v0 + 8) == 1)
  {
    v66 = v65;
  }

  else
  {
    v67 = *v0;

    sub_26EF3B46C();
    v68 = sub_26EF3A36C();
    v140 = v55;
    v69 = v68;
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v65, 0);
    (*(v56 + 8))(v60, v140);
    v66 = v178;
  }

  VoiceBankingSession.sampleState.getter(&v178);

  v180 = 3;
  v70 = static SampleState.== infix(_:_:)(&v178, &v180);
  if (v70)
  {
    if (TTSVBIsInternalUIBuild())
    {
      v71 = v141;
      v72 = v1;
      sub_26EF009E0(v141);
      v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9788, &qword_26EF43710);
      v74 = sub_26EF03490();
      v178 = v73;
      v179 = v74;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v76 = v143;
      v77 = v156;
      MEMORY[0x274382230](v71, v156, OpaqueTypeConformance2);
      v178 = v77;
      v179 = OpaqueTypeConformance2;
      v78 = swift_getOpaqueTypeConformance2();
      v79 = sub_26EE154C8(&qword_2806C97A8, &qword_2806C9758, &qword_26EF436E0);
      v178 = v35;
      v179 = v79;
      v80 = swift_getOpaqueTypeConformance2();
      v81 = v157;
      MEMORY[0x274382240](v76, v157, v27, v78, v80);
      (*(v144 + 8))(v76, v81);
      (*(v142 + 8))(v71, v77);
    }

    else
    {
      v72 = v1;
      sub_26EF3A0DC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C97E8, &unk_26EF43730);
      sub_26EF03740();
      v93 = v145;
      sub_26EF397CC();
      v94 = sub_26EE154C8(&qword_2806C97A8, &qword_2806C9758, &qword_26EF436E0);
      v95 = v147;
      MEMORY[0x274382230](v93, v35, v94);
      v96 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9788, &qword_26EF43710);
      v97 = sub_26EF03490();
      v178 = v96;
      v179 = v97;
      v98 = swift_getOpaqueTypeConformance2();
      v178 = v156;
      v179 = v98;
      v99 = swift_getOpaqueTypeConformance2();
      v178 = v35;
      v179 = v94;
      v100 = swift_getOpaqueTypeConformance2();
      MEMORY[0x274382250](v95, v157, v27, v99, v100);
      (*(v148 + 8))(v95, v27);
      (*(v146 + 8))(v93, v35);
    }

    v92 = v174;
    v101 = sub_26EF03330();
    v102 = v158;
    v103 = v169;
    MEMORY[0x274382230](v48, v169, v101);
    v104 = sub_26EEF79D8(&qword_2806C8BF0, type metadata accessor for ToolbarCancelButton);
    v178 = v168;
    v179 = v104;
    v105 = swift_getOpaqueTypeConformance2();
    v178 = v103;
    v179 = v101;
    v106 = swift_getOpaqueTypeConformance2();
    v107 = v171;
    MEMORY[0x274382250](v102, v170, v171, v105, v106);
    (*(v159 + 8))(v102, v107);
    sub_26EE14578(v48, &qword_2806C9770, &unk_26EF436F8);
    v1 = v72;
  }

  else
  {
    v82 = sub_26EF36388(v70);
    v83 = v153;
    sub_26EF363D8(v82, v84, v153);
    v85 = sub_26EEF79D8(&qword_2806C8BF0, type metadata accessor for ToolbarCancelButton);
    v86 = v154;
    v87 = v168;
    MEMORY[0x274382230](v83, v168, v85);
    v178 = v87;
    v179 = v85;
    v88 = swift_getOpaqueTypeConformance2();
    v89 = sub_26EF03330();
    v178 = v169;
    v179 = v89;
    v90 = swift_getOpaqueTypeConformance2();
    v91 = v170;
    MEMORY[0x274382240](v86, v170, v171, v88, v90);
    (*(v155 + 8))(v86, v91);
    sub_26EF075D0(v83, type metadata accessor for ToolbarCancelButton);
    v92 = v174;
  }

  v108 = *(v1 + 72);
  LOBYTE(v178) = *(v1 + 64);
  v179 = v108;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C96F0, &unk_26EF43638);
  sub_26EF3AAFC();
  if (v180 == 1)
  {
    sub_26EF3A0EC();
    sub_26EF036EC();
    v109 = v160;
    sub_26EF397CC();
    v110 = sub_26EE154C8(&qword_2806C97C0, &qword_2806C9738, &qword_26EF436C0);
    v111 = v162;
    v112 = v164;
    MEMORY[0x274382230](v109, v164, v110);
    v178 = v112;
    v179 = v110;
    v113 = swift_getOpaqueTypeConformance2();
    v114 = sub_26EE154C8(&qword_2806C97C8, &qword_2806C9728, &qword_26EF436B0);
    v178 = v166;
    v179 = v114;
    v115 = swift_getOpaqueTypeConformance2();
    v116 = v173;
    v117 = v165;
    MEMORY[0x274382240](v111, v165, v167, v113, v115);
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C97B0, &qword_26EF43720);
    (*(*(v118 - 8) + 56))(v116, 0, 1, v118);
    v119 = sub_26EF03584();
    MEMORY[0x274382260](v116, v118, v119);
    sub_26EE14578(v116, &qword_2806C9740, &qword_26EF436C8);
    (*(v163 + 8))(v111, v117);
    (*(v161 + 8))(v109, v112);
  }

  else if (TTSVBIsInternalUIBuild())
  {
    v120 = sub_26EF3A0EC();
    MEMORY[0x28223BE20](v120, v121);
    *(&v140 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C97D0, &qword_26EF43728);
    sub_26EE154C8(&qword_2806C97D8, &qword_2806C97D0, &qword_26EF43728);
    v122 = v149;
    sub_26EF39B9C();
    v123 = sub_26EE154C8(&qword_2806C97C8, &qword_2806C9728, &qword_26EF436B0);
    v124 = v151;
    v125 = v166;
    MEMORY[0x274382230](v122, v166, v123);
    v126 = sub_26EE154C8(&qword_2806C97C0, &qword_2806C9738, &qword_26EF436C0);
    v178 = v164;
    v179 = v126;
    v127 = swift_getOpaqueTypeConformance2();
    v178 = v125;
    v179 = v123;
    v128 = swift_getOpaqueTypeConformance2();
    v129 = v173;
    v130 = v167;
    MEMORY[0x274382250](v124, v165, v167, v127, v128);
    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C97B0, &qword_26EF43720);
    (*(*(v131 - 8) + 56))(v129, 0, 1, v131);
    v132 = sub_26EF03584();
    MEMORY[0x274382260](v129, v131, v132);
    sub_26EE14578(v129, &qword_2806C9740, &qword_26EF436C8);
    (*(v152 + 8))(v124, v130);
    (*(v150 + 8))(v122, v125);
  }

  else
  {
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C97B0, &qword_26EF43720);
    v134 = v173;
    (*(*(v133 - 8) + 56))(v173, 1, 1, v133);
    v135 = sub_26EF03584();
    MEMORY[0x274382260](v134, v133, v135);
    sub_26EE14578(v134, &qword_2806C9740, &qword_26EF436C8);
  }

  v136 = v177;
  v137 = *(v176 + 48);
  v138 = v175;
  sub_26EE13B88(v177, v175, &qword_2806C9778, &qword_26EF43708);
  sub_26EE13B88(v92, v138 + v137, &qword_2806C9740, &qword_26EF436C8);
  sub_26EF39F7C();
  sub_26EE14578(v92, &qword_2806C9740, &qword_26EF436C8);
  return sub_26EE14578(v136, &qword_2806C9778, &qword_26EF43708);
}

uint64_t sub_26EEFE0D4(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for SoundCheckView(0);
  v1[5] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v4 = sub_26EF38A2C();
  v1[7] = v4;
  v5 = *(v4 - 8);
  v1[8] = v5;
  v6 = *(v5 + 64) + 15;
  v1[9] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9BE0, &qword_26EF3D3C0) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v8 = sub_26EF39DDC();
  v1[13] = v8;
  v9 = *(v8 - 8);
  v1[14] = v9;
  v10 = *(v9 + 64) + 15;
  v1[15] = swift_task_alloc();
  v11 = sub_26EF3883C();
  v1[16] = v11;
  v12 = *(v11 - 8);
  v1[17] = v12;
  v13 = *(v12 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  sub_26EF3B2DC();
  v1[20] = sub_26EF3B2CC();
  v15 = sub_26EF3B29C();
  v1[21] = v15;
  v1[22] = v14;

  return MEMORY[0x2822009F8](sub_26EEFE30C, v15, v14);
}

uint64_t sub_26EEFE30C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = sub_26EE27DAC();
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_26EF3881C();
  v6 = sub_26EF3B47C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26EE01000, v5, v6, "SoundCheckView: Setting up session.", v7, 2u);
    MEMORY[0x2743842A0](v7, -1, -1);
  }

  v8 = *(v0 + 152);
  v9 = *(v0 + 128);
  v10 = *(v0 + 136);
  v11 = *(v0 + 32);

  v12 = *(v10 + 8);
  *(v0 + 184) = v12;
  v12(v8, v9);
  v13 = *v11;
  *(v0 + 192) = *v11;
  v14 = *(v11 + 8);
  *(v0 + 224) = v14;
  if (v14 == 1)
  {
    v15 = v13;
  }

  else
  {
    v17 = *(v0 + 112);
    v16 = *(v0 + 120);
    v18 = *(v0 + 104);

    sub_26EF3B46C();
    v19 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v13, 0);
    (*(v17 + 8))(v16, v18);
    v15 = *(v0 + 16);
  }

  *(v0 + 200) = v15;
  v20 = swift_task_alloc();
  *(v0 + 208) = v20;
  *v20 = v0;
  v20[1] = sub_26EEFE520;

  return VoiceBankingSession.setUpSession()();
}

uint64_t sub_26EEFE520()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v8 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = *(v2 + 168);
    v5 = *(v2 + 176);
    v6 = sub_26EEFE704;
  }

  else
  {

    v4 = *(v2 + 168);
    v5 = *(v2 + 176);
    v6 = sub_26EEFE63C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EEFE63C()
{
  v1 = v0[20];

  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[15];
  v6 = v0[11];
  v5 = v0[12];
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[6];

  v10 = v0[1];

  return v10();
}

uint64_t sub_26EEFE704()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  v4 = *(v0 + 160);

  if (v1)
  {
    v5 = v2;
  }

  else
  {
    v6 = *(v0 + 192);
    v8 = *(v0 + 112);
    v7 = *(v0 + 120);
    v9 = *(v0 + 104);

    sub_26EF3B46C();
    v10 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v6, 0);
    (*(v8 + 8))(v7, v9);
    v5 = *(v0 + 24);
  }

  v11 = *(v0 + 216);
  v13 = *(v0 + 80);
  v12 = *(v0 + 88);
  v14 = *(v0 + 64);
  v15 = *(v0 + 72);
  v16 = *(v0 + 56);
  v54 = *(v0 + 144);
  v56 = *(v0 + 48);
  v18 = *(v0 + 32);
  v17 = *(v0 + 40);
  sub_26EED366C(3);

  (*(v14 + 104))(v15, *MEMORY[0x277D704D8], v16);
  sub_26EF389BC();
  (*(v14 + 8))(v15, v16);
  v19 = sub_26EF38A4C();
  v53 = *(v19 - 8);
  (*(v53 + 56))(v12, 0, 1, v19);
  v52 = v17;
  v20 = *(v17 + 48);
  sub_26EE13B88(v12, v13, &qword_2806C9BE0, &qword_26EF3D3C0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DA8, &unk_26EF41A60);
  sub_26EF3AC3C();
  sub_26EE14578(v12, &qword_2806C9BE0, &qword_26EF3D3C0);
  sub_26EF3934C();
  sub_26EF06BC8(v18, v56, type metadata accessor for SoundCheckView);
  v22 = sub_26EF3881C();
  v23 = sub_26EF3B47C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = *(v0 + 96);
    v25 = *(v0 + 48);
    v26 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v26 = 138412290;
    v27 = v25 + *(v52 + 48);
    MEMORY[0x274382CF0](v21);
    v28 = (*(v53 + 48))(v24, 1, v19);
    v29 = *(v0 + 96);
    v30 = *(v0 + 48);
    if (v28 == 1)
    {
      sub_26EE14578(*(v0 + 96), &qword_2806C9BE0, &qword_26EF3D3C0);
      sub_26EF075D0(v30, type metadata accessor for SoundCheckView);
      v31 = 0;
    }

    else
    {
      sub_26EEF79D8(&unk_2806C9CD0, MEMORY[0x277D70518]);
      swift_allocError();
      (*(v53 + 32))(v37, v29, v19);
      v31 = _swift_stdlib_bridgeErrorToNSError();
      sub_26EF075D0(v30, type metadata accessor for SoundCheckView);
    }

    v38 = *(v0 + 216);
    v55 = *(v0 + 184);
    v39 = *(v0 + 136);
    v40 = *(v0 + 144);
    v41 = *(v0 + 128);
    *(v26 + 4) = v31;
    *v57 = v31;
    _os_log_impl(&dword_26EE01000, v22, v23, "Error setting up voice banking session: %@", v26, 0xCu);
    sub_26EE14578(v57, &qword_2806C7140, &unk_26EF3E420);
    MEMORY[0x2743842A0](v57, -1, -1);
    MEMORY[0x2743842A0](v26, -1, -1);

    v55(v40, v41);
  }

  else
  {
    v32 = *(v0 + 184);
    v34 = *(v0 + 136);
    v33 = *(v0 + 144);
    v35 = *(v0 + 128);
    v36 = *(v0 + 48);

    sub_26EF075D0(v36, type metadata accessor for SoundCheckView);
    v32(v33, v35);
  }

  v43 = *(v0 + 144);
  v42 = *(v0 + 152);
  v44 = *(v0 + 120);
  v46 = *(v0 + 88);
  v45 = *(v0 + 96);
  v48 = *(v0 + 72);
  v47 = *(v0 + 80);
  v49 = *(v0 + 48);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_26EEFEC48()
{
  v2 = *(type metadata accessor for SoundCheckView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE15538;

  return sub_26EEFE0D4(v0 + v3);
}

uint64_t sub_26EEFED14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SoundCheckView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8, v7);
  sub_26EE98378(&v57);
  v8 = sub_26EF3A3DC();
  sub_26EF3962C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  LOBYTE(v44) = 0;
  sub_26EF06BC8(a1, &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for SoundCheckView);
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  sub_26EF06DD8(&v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v18 + v17, type metadata accessor for SoundCheckView);
  CGSizeMake(sub_26EF071D0, v19, v20);
  v23 = *(a1 + 32);
  if (v23)
  {
    v24 = v21;
    v25 = v22;
    v26 = v23;
    v27 = sub_26EF100DC();

    KeyPath = swift_getKeyPath();
    v29 = swift_allocObject();
    *(v29 + 16) = v27 & 1;
    v38 = v57;
    v39 = v58;
    v40 = v59;
    v41[0] = v57;
    v41[1] = v58;
    v41[2] = v59;
    LOBYTE(v42) = v8;
    *(&v42 + 1) = v10;
    *&v43[0] = v12;
    *(&v43[0] + 1) = v14;
    *&v43[1] = v16;
    BYTE8(v43[1]) = 0;
    v44 = v57;
    v45 = v58;
    *(v48 + 9) = *(v43 + 9);
    v47 = v42;
    v48[0] = v43[0];
    v46 = v59;
    v30 = v58;
    *a2 = v57;
    *(a2 + 16) = v30;
    v31 = v46;
    v32 = v47;
    v33 = v48[1];
    *(a2 + 64) = v48[0];
    *(a2 + 80) = v33;
    *(a2 + 32) = v31;
    *(a2 + 48) = v32;
    *(a2 + 96) = v24;
    *(a2 + 104) = v25;
    *(a2 + 112) = KeyPath;
    *(a2 + 120) = sub_26EE274EC;
    *(a2 + 128) = v29;
    sub_26EE13B88(v41, v49, &qword_2806C9930, &qword_26EF43A08);
    v49[0] = v38;
    v49[1] = v39;
    v49[2] = v40;
    v50 = v8;
    *v51 = *v37;
    *&v51[3] = *&v37[3];
    v52 = v10;
    v53 = v12;
    v54 = v14;
    v55 = v16;
    v56 = 0;
    return sub_26EE14578(v49, &qword_2806C9930, &qword_26EF43A08);
  }

  else
  {
    v35 = *(a1 + 40);
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EEF79D8(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_26EEFF010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SoundCheckView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v20 - v12;
  v14 = sub_26EF3B30C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_26EF06BC8(a1, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SoundCheckView);
  sub_26EF3B2DC();
  v15 = sub_26EF3B2CC();
  v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v15;
  *(v17 + 24) = v18;
  sub_26EF06DD8(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for SoundCheckView);
  sub_26EE2C388(0, 0, v13, a3, v17);
}

uint64_t sub_26EEFF1E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v74 = a2;
  v3 = sub_26EF387FC();
  v4 = *(v3 - 8);
  v72 = v3;
  v73 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v70 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C97F8, &qword_26EF43740);
  v9 = *(v8 - 8);
  v65 = v8;
  v66 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v59 - v12;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9800, &qword_26EF43748);
  v71 = *(v69 - 8);
  v14 = *(v71 + 64);
  MEMORY[0x28223BE20](v69, v15);
  v62 = &v59 - v16;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9938, &qword_26EF43A20);
  v63 = *(v68 - 8);
  v17 = *(v63 + 64);
  v19 = MEMORY[0x28223BE20](v68, v18);
  v67 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v64 = &v59 - v22;
  v23 = type metadata accessor for SoundCheckView(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23 - 8, v26);
  v27 = sub_26EE17094();
  v28._object = 0xEB0000000045554ELL;
  v29 = v27 & 1;
  v28._countAndFlagsBits = 0x49544E4F435F4256;
  countAndFlagsBits = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v28, v29, 0)._countAndFlagsBits;
  sub_26EF06BC8(a1, &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SoundCheckView);
  v31 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v32 = swift_allocObject();
  sub_26EF06DD8(&v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31, type metadata accessor for SoundCheckView);
  CGSizeMake(countAndFlagsBits, v33, v34);
  v60 = v36;
  v61 = v35;
  v38 = v37;
  v40 = v39;
  sub_26EF06BC8(a1, &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SoundCheckView);
  v41 = swift_allocObject();
  sub_26EF06DD8(&v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v41 + v31, type metadata accessor for SoundCheckView);
  v75 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9808, &unk_26EF43750);
  sub_26EF03934();
  sub_26EF3AB4C();
  v42 = sub_26EE154C8(&qword_2806C9818, &qword_2806C97F8, &qword_26EF43740);
  v43 = v62;
  v44 = v65;
  sub_26EF3A88C();
  (*(v66 + 8))(v13, v44);
  v45 = v70;
  sub_26EF396BC();
  v76 = v44;
  v77 = v42;
  swift_getOpaqueTypeConformance2();
  sub_26EEF79D8(&qword_2806C9820, MEMORY[0x277CE7708]);
  v46 = v64;
  v47 = v69;
  v48 = v72;
  sub_26EF3A66C();
  (*(v73 + 8))(v45, v48);
  (*(v71 + 8))(v43, v47);
  v49 = v63;
  v50 = *(v63 + 16);
  v52 = v67;
  v51 = v68;
  v50(v67, v46, v68);
  v53 = v74;
  v54 = v60;
  *v74 = v61;
  *(v53 + 1) = v38;
  *(v53 + 2) = v54;
  *(v53 + 3) = v40;
  v55 = v53;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9940, &qword_26EF43A28);
  v50(&v55[*(v56 + 48)], v52, v51);
  v57 = *(v49 + 8);

  v57(v46, v51);
  v57(v52, v51);
}

void *sub_26EEFF80C()
{
  v1 = sub_26EF37D5C();
  v34 = *(v1 - 8);
  v35 = v1;
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26EF37FEC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v32[1] = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9948, &qword_26EF43A30);
  v33 = *(v10 - 8);
  v11 = *(v33 + 64);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = v32 - v17;
  v19 = sub_26EF39DDC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *v0;
  if (*(v0 + 8) == 1)
  {
    v26 = v25;
  }

  else
  {
    v27 = *v0;

    sub_26EF3B46C();
    v28 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v25, 0);
    (*(v20 + 8))(v24, v19);
    v26 = v37;
  }

  v29 = sub_26EED37D8();

  v36 = v29 / 100.0;
  sub_26EF37F8C();
  sub_26EF0757C();
  sub_26EF37D2C();
  sub_26EF37D4C();
  MEMORY[0x27437FE00](v5, v10);
  (*(v34 + 8))(v5, v35);
  v30 = *(v33 + 8);
  v30(v15, v10);
  sub_26EE154C8(&qword_2806C9958, &qword_2806C9948, &qword_26EF43A30);
  sub_26EF3B00C();
  v30(v18, v10);
  return v37;
}

uint64_t sub_26EEFFBD8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = *(a1 + 16);

    v2 = VoiceBankingNavigationModel.itemPath.modify(v12);
    v4 = v3;
    v5 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_26EEB3AD4(0, *(v5 + 2) + 1, 1, v5);
      *v4 = v5;
    }

    v8 = *(v5 + 2);
    v7 = *(v5 + 3);
    if (v8 >= v7 >> 1)
    {
      v5 = sub_26EEB3AD4((v7 > 1), v8 + 1, 1, v5);
      *v4 = v5;
    }

    *(v5 + 2) = v8 + 1;
    v9 = &v5[16 * v8];
    *(v9 + 4) = 6;
    v9[40] = 1;
    (v2)(v12, 0);
  }

  else
  {
    v11 = *(a1 + 24);
    type metadata accessor for VoiceBankingNavigationModel();
    sub_26EEF79D8(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

void sub_26EEFFD2C(void *a1)
{
  v2 = type metadata accessor for SoundCheckView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v25 - v9;
  if (sub_26EF00030())
  {
    if (!a1[2])
    {
      v24 = a1[3];
      type metadata accessor for VoiceBankingNavigationModel();
      v22 = &qword_2806C6C20;
      v23 = type metadata accessor for VoiceBankingNavigationModel;
      goto LABEL_11;
    }

    v11 = a1[2];

    VoiceBankingNavigationModel.dismissSheet()();

    v12 = a1[4];
    if (v12)
    {
      v13 = v12;
      sub_26EF17564();

      v14 = sub_26EF3B30C();
      (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
      sub_26EF06BC8(a1, &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SoundCheckView);
      sub_26EF3B2DC();
      v15 = sub_26EF3B2CC();
      v16 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v17 = swift_allocObject();
      v18 = MEMORY[0x277D85700];
      *(v17 + 16) = v15;
      *(v17 + 24) = v18;
      sub_26EF06DD8(&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for SoundCheckView);
      sub_26EE2C388(0, 0, v10, &unk_26EF43980, v17);

      return;
    }

LABEL_9:
    v21 = a1[5];
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    v22 = &qword_2806C9BB0;
    v23 = type metadata accessor for VoiceBankingAudioServiceViewModel;
LABEL_11:
    sub_26EEF79D8(v22, v23);
    sub_26EF39BFC();
    __break(1u);
    return;
  }

  v19 = a1[4];
  if (!v19)
  {
    goto LABEL_9;
  }

  v26 = v19;
  sub_26EF17564();
  v20 = v26;
}

uint64_t sub_26EF00030()
{
  v0 = sub_26EF3930C();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  v5 = MEMORY[0x28223BE20](v0, v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v38 - v10;
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v38 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v38 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9970, &qword_26EF43A40);
  v19 = *(v1 + 72);
  v20 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_26EF3C6B0;
  sub_26EF392AC();
  v41 = v21;
  v22 = sub_26EEF79D8(&qword_2806C6A50, MEMORY[0x277D706C0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C90, &qword_26EF43A48);
  sub_26EE154C8(&qword_2806C9978, &unk_2806C9C90, &qword_26EF43A48);
  v40 = v22;
  sub_26EF3B68C();
  v23 = *(v39 + 4);
  if (v23)
  {
    v24 = v23;
    v25 = sub_26EF0FE94();

    if (v25)
    {
      v39 = v7;
      v26 = [v25 portType];

      v27 = *MEMORY[0x277CB8190];
      v28 = sub_26EF3B0FC();
      v30 = v29;
      if (v28 == sub_26EF3B0FC() && v30 == v31)
      {

        v7 = v39;
LABEL_8:
        v34 = v24;
        sub_26EF13B98();

        (*(v2 + 16))(v7, v18, v0);
        sub_26EF3B64C();
        LOBYTE(v34) = sub_26EF3B65C();
        v35 = *(v2 + 8);
        v35(v11, v0);
        v35(v15, v0);
        v35(v18, v0);
        return v34 & 1;
      }

      v32 = sub_26EF3B82C();

      v7 = v39;
      if (v32)
      {
        goto LABEL_8;
      }
    }

    sub_26EF3929C();
    sub_26EEFB858(v15, v11);
    v33 = *(v2 + 8);
    v33(v11, v0);
    v33(v15, v0);
    goto LABEL_8;
  }

  v37 = *(v39 + 5);
  type metadata accessor for VoiceBankingAudioServiceViewModel();
  sub_26EEF79D8(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
  result = sub_26EF39BFC();
  __break(1u);
  return result;
}

uint64_t sub_26EF00474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_26EF3B2DC();
  v4[3] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_26EF0050C, v6, v5);
}

uint64_t sub_26EF0050C()
{
  v1 = v0[2];
  v2 = *(v1 + 32);
  v0[6] = v2;
  if (v2)
  {
    v2;
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_26EE7CD18;

    return sub_26EF1262C();
  }

  else
  {
    v5 = *(v1 + 40);
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EEF79D8(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EF009E0@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9828, &qword_26EF43770);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v55 = v49 - v6;
  v7 = sub_26EF3A13C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v52 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9798, &qword_26EF43718);
  v54 = *(v11 - 8);
  v12 = *(v54 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v53 = v49 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B70, &qword_26EF43F10);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = v49 - v18;
  v20 = sub_26EF38FEC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9788, &qword_26EF43710);
  v26 = *(*(v56 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v56, v27);
  v30 = v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v31);
  v33 = v49 - v32;
  v34 = *(v1 + 32);
  if (v34)
  {
    v35 = v34;
    sub_26EF0F034();

    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_26EE14578(v19, &qword_2806C9B70, &qword_26EF43F10);
      (*(v3 + 56))(v30, 1, 1, v2);
      v36 = sub_26EE154C8(&qword_2806C97A0, &qword_2806C9798, &qword_26EF43718);
      v58 = v11;
      v59 = v36;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      MEMORY[0x274382260](v30, v2, OpaqueTypeConformance2);
      sub_26EE14578(v30, &qword_2806C9788, &qword_26EF43710);
    }

    else
    {
      v38 = *(v21 + 32);
      v51 = v20;
      v38(v25, v19, v20);
      v39 = sub_26EF3A0DC();
      v49[1] = v49;
      MEMORY[0x28223BE20](v39, v40);
      v49[-2] = v25;
      v50 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9830, &qword_26EF43778);
      v49[0] = v11;
      sub_26EE154C8(&qword_2806C9838, &qword_2806C9830, &qword_26EF43778);
      v41 = v53;
      sub_26EF397CC();
      v42 = sub_26EE154C8(&qword_2806C97A0, &qword_2806C9798, &qword_26EF43718);
      v43 = v55;
      v44 = v49[0];
      MEMORY[0x274382230](v41, v49[0], v42);
      (*(v3 + 16))(v30, v43, v2);
      (*(v3 + 56))(v30, 0, 1, v2);
      v58 = v44;
      v59 = v42;
      v45 = swift_getOpaqueTypeConformance2();
      MEMORY[0x274382260](v30, v2, v45);
      sub_26EE14578(v30, &qword_2806C9788, &qword_26EF43710);
      (*(v3 + 8))(v43, v2);
      (*(v54 + 8))(v41, v44);
      (*(v21 + 8))(v50, v51);
    }

    v46 = sub_26EF03490();
    MEMORY[0x274382230](v33, v56, v46);
    return sub_26EE14578(v33, &qword_2806C9788, &qword_26EF43710);
  }

  else
  {
    v48 = *(v1 + 40);
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EEF79D8(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_26EF0104C()
{
  v0 = sub_26EF37DCC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  sub_26EF38F0C();
  return sub_26EF3AEDC();
}

uint64_t sub_26EF01124@<X0>(uint64_t a1@<X8>)
{
  sub_26EF39EAC();
  result = sub_26EF3A5CC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

void sub_26EF0119C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = v1;
    v3 = sub_26EF10038();

    v5 = v2;
    if (v3)
    {
      sub_26EF0FC18();
    }

    else
    {
      sub_26EF18664();
    }
  }

  else
  {
    v4 = *(a1 + 40);
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EEF79D8(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
    sub_26EF39BFC();
    __break(1u);
  }
}

__n128 sub_26EF01280@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26EF39E4C();
  sub_26EF012FC(a1, v9);
  v5 = v10;
  v6 = v11;
  result = v9[0];
  v8 = v9[1];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 40) = v8;
  *(a2 + 56) = v5;
  *(a2 + 64) = v6;
  return result;
}

uint64_t sub_26EF012FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26EF39DDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (*(a1 + 8) == 1)
  {
    v11 = v10;
  }

  else
  {
    v12 = *a1;

    sub_26EF3B46C();
    v13 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v10, 0);
    (*(v5 + 8))(v9, v4);
    v11 = *&v61[0];
  }

  VoiceBankingSession.sampleState.getter(v61);

  LOBYTE(v55) = 3;
  result = static SampleState.== infix(_:_:)(v61, &v55);
  if ((result & 1) == 0)
  {
    v34 = 0;
    v35 = 0uLL;
    v36 = -1;
    v37 = 0uLL;
LABEL_11:
    *a2 = v35;
    *(a2 + 16) = v37;
    *(a2 + 32) = v34;
    *(a2 + 40) = v36;
    return result;
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    v16 = v15;
    v17 = sub_26EF10038();

    v54 = sub_26EF3AA8C();
    if (v17)
    {
      v18 = sub_26EE17094() & 1;
      v19._countAndFlagsBits = 0x504F54535F4256;
      v19._object = 0xE700000000000000;
      v61[0] = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v19, v18, 0);
      sub_26EE12538();
      v20 = sub_26EF3A5DC();
      v22 = v21;
      v24 = v23;
      sub_26EF3A4BC();
      v25 = sub_26EF3A5BC();
      v27 = v26;
      v29 = v28;
      v31 = v30;

      sub_26EE12ABC(v20, v22, v24 & 1);

      v32 = v54;

      v33 = v29 & 1;
      sub_26EE13B20(v25, v27, v29 & 1);

      sub_26EE13B20(v25, v27, v29 & 1);

      sub_26EE12ABC(v25, v27, v29 & 1);

      v55 = v32;
      v56 = v25;
      v57 = v27;
      v58 = v29 & 1;
      v59 = v31;
      v60 = 0;
    }

    else
    {
      v38 = sub_26EE17094();
      v39._object = 0xE90000000000004ELL;
      v40 = v38 & 1;
      v39._countAndFlagsBits = 0x455453494C5F4256;
      v61[0] = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v39, v40, 0);
      sub_26EE12538();
      v41 = sub_26EF3A5DC();
      v43 = v42;
      v45 = v44;
      sub_26EF3A4BC();
      v25 = sub_26EF3A5BC();
      v27 = v46;
      v48 = v47;
      v50 = v49;

      sub_26EE12ABC(v41, v43, v45 & 1);

      v51 = v54;

      v33 = v48 & 1;
      sub_26EE13B20(v25, v27, v48 & 1);

      sub_26EE13B20(v25, v27, v48 & 1);

      sub_26EE12ABC(v25, v27, v48 & 1);

      v55 = v51;
      v56 = v25;
      v57 = v27;
      v58 = v48 & 1;
      v59 = v50;
      v60 = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9960, &qword_26EF43A38);
    sub_26EE154C8(&qword_2806C9968, &qword_2806C9960, &qword_26EF43A38);
    sub_26EF3A06C();
    sub_26EE12ABC(v25, v27, v33);

    v37 = v61[1];
    v35 = v61[0];
    v34 = v62;
    v36 = v63;
    goto LABEL_11;
  }

  v52 = *(a1 + 40);
  type metadata accessor for VoiceBankingAudioServiceViewModel();
  sub_26EEF79D8(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
  result = sub_26EF39BFC();
  __break(1u);
  return result;
}

uint64_t sub_26EF01840@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26EE17094() & 1;
  v3._countAndFlagsBits = 0x45434E41435F4256;
  v3._object = 0xE90000000000004CLL;
  TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v3, v2, 0);
  sub_26EE12538();
  sub_26EF3AB7C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C97E8, &unk_26EF43730);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_26EF018F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v104 = a1;
  v2 = sub_26EF39DDC();
  v95 = *(v2 - 8);
  v96 = v2;
  v3 = *(v95 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v94 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7558, &unk_26EF3E368);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v102 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v101 = &v87 - v12;
  v13 = type metadata accessor for SoundCheckView(0);
  v97 = *(v13 - 8);
  v14 = *(v97 + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v98 = v16;
  v99 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7FF8, &qword_26EF3FA30);
  v90 = *(v17 - 8);
  v91 = v17;
  v18 = *(v90 + 64);
  MEMORY[0x28223BE20](v17, v19);
  v89 = &v87 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9910, &qword_26EF43988);
  v92 = *(v21 - 8);
  v93 = v21;
  v22 = *(v92 + 64);
  MEMORY[0x28223BE20](v21, v23);
  v88 = &v87 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B70, &qword_26EF43F10);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8, v27);
  v29 = &v87 - v28;
  v30 = sub_26EF38FEC();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9918, &qword_26EF43990);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36, v39);
  v41 = &v87 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9920, &qword_26EF43998);
  v43 = *(*(v42 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v42 - 8, v44);
  v100 = &v87 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45, v47);
  v49 = &v87 - v48;
  sub_26EE1FAB8(0, &qword_2806C9C00, 0x277CBEBD0);
  v50 = sub_26EF3B48C();
  v51 = sub_26EF3B4FC();

  if (v51)
  {
    v87 = v36;
    v52 = v104;
    v53 = *(v104 + 32);
    if (!v53)
    {
      v86 = *(v104 + 40);
      type metadata accessor for VoiceBankingAudioServiceViewModel();
      sub_26EEF79D8(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
      result = sub_26EF39BFC();
      __break(1u);
      return result;
    }

    v54 = v53;
    sub_26EF0F034();

    if ((*(v31 + 48))(v29, 1, v30) == 1)
    {
      sub_26EE14578(v29, &qword_2806C9B70, &qword_26EF43F10);
      v55 = 1;
      v56 = v93;
    }

    else
    {
      (*(v31 + 32))(v35, v29, v30);
      v58 = v99;
      sub_26EF06BC8(v52, v99, type metadata accessor for SoundCheckView);
      v59 = (*(v97 + 80) + 16) & ~*(v97 + 80);
      v60 = swift_allocObject();
      sub_26EF06DD8(v58, v60 + v59, type metadata accessor for SoundCheckView);
      v61 = v89;
      sub_26EF3AB4C();
      if (sub_26EF38FCC())
      {
        v62 = sub_26EF3A9AC();
      }

      else
      {
        v62 = sub_26EF3A9DC();
      }

      v63 = v62;
      KeyPath = swift_getKeyPath();
      v105._countAndFlagsBits = v63;

      v65 = sub_26EF3985C();
      (*(v31 + 8))(v35, v30);

      v66 = v88;
      (*(v90 + 32))(v88, v61, v91);
      v56 = v93;
      v67 = (v66 + *(v93 + 36));
      *v67 = KeyPath;
      v67[1] = v65;
      sub_26EE14D98(v66, v41, &qword_2806C9910, &qword_26EF43988);
      v55 = 0;
      v52 = v104;
    }

    (*(v92 + 56))(v41, v55, 1, v56);
    sub_26EE14D98(v41, v49, &qword_2806C9918, &qword_26EF43990);
    (*(v37 + 56))(v49, 0, 1, v87);
    v57 = v101;
  }

  else
  {
    (*(v37 + 56))(v49, 1, 1, v36);
    v57 = v101;
    v52 = v104;
  }

  v68 = *v52;
  if (*(v52 + 8) == 1)
  {
    countAndFlagsBits = v68;
  }

  else
  {
    v70 = *v52;

    sub_26EF3B46C();
    v71 = v52;
    v72 = sub_26EF3A36C();
    sub_26EF3880C();

    v52 = v71;
    v73 = v94;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v68, 0);
    (*(v95 + 8))(v73, v96);
    countAndFlagsBits = v105._countAndFlagsBits;
  }

  VoiceBankingSession.sampleState.getter(&v105);

  v106[0] = 3;
  if (static SampleState.== infix(_:_:)(&v105, v106))
  {
    v74 = 1;
  }

  else
  {
    v75 = sub_26EE17094() & 1;
    v76._countAndFlagsBits = 0x50494B535F4256;
    v76._object = 0xE700000000000000;
    v105 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v76, v75, 0);
    v77 = v99;
    sub_26EF06BC8(v52, v99, type metadata accessor for SoundCheckView);
    v78 = (*(v97 + 80) + 16) & ~*(v97 + 80);
    v79 = swift_allocObject();
    sub_26EF06DD8(v77, v79 + v78, type metadata accessor for SoundCheckView);
    sub_26EE12538();
    sub_26EF3AB7C();
    v74 = 0;
  }

  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
  (*(*(v80 - 8) + 56))(v57, v74, 1, v80);
  v81 = v100;
  sub_26EE13B88(v49, v100, &qword_2806C9920, &qword_26EF43998);
  v82 = v102;
  sub_26EE13B88(v57, v102, &qword_2806C7558, &unk_26EF3E368);
  v83 = v103;
  sub_26EE13B88(v81, v103, &qword_2806C9920, &qword_26EF43998);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9928, &qword_26EF439A0);
  sub_26EE13B88(v82, v83 + *(v84 + 48), &qword_2806C7558, &unk_26EF3E368);
  sub_26EE14578(v57, &qword_2806C7558, &unk_26EF3E368);
  sub_26EE14578(v49, &qword_2806C9920, &qword_26EF43998);
  sub_26EE14578(v82, &qword_2806C7558, &unk_26EF3E368);
  return sub_26EE14578(v81, &qword_2806C9920, &qword_26EF43998);
}

uint64_t sub_26EF02340@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26EF3AA8C();
  *a1 = result;
  return result;
}

unint64_t sub_26EF02388()
{
  v1 = v0;
  v2 = sub_26EF39DDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  if (*(v1 + 8) == 1)
  {
    v9 = v8;
  }

  else
  {
    v10 = *v1;

    sub_26EF3B46C();
    v11 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v8, 0);
    (*(v3 + 8))(v7, v2);
    v9 = v15;
  }

  VoiceBankingSession.sampleState.getter(&v14 + 7);

  BYTE6(v14) = 3;
  if (!static SampleState.== infix(_:_:)(&v14 + 7, &v14 + 6))
  {
    return 0;
  }

  v12 = 0xD000000000000010;
  if ((sub_26EF00030() & 1) == 0)
  {
    return 0xD000000000000018;
  }

  return v12;
}

uint64_t sub_26EF02554()
{
  v1 = sub_26EF3930C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1, v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v24 - v10;
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v24 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v24 - v17;
  sub_26EF392AC();
  v19 = *(v0 + 32);
  if (v19)
  {
    v20 = v19;
    sub_26EF13B98();

    (*(v2 + 16))(v7, v18, v1);
    sub_26EEF79D8(&qword_2806C6A50, MEMORY[0x277D706C0]);
    sub_26EF3B64C();
    LOBYTE(v20) = sub_26EF3B65C();
    v21 = *(v2 + 8);
    v21(v11, v1);
    v21(v15, v1);
    v21(v18, v1);
    return v20 & 1;
  }

  else
  {
    v23 = *(v0 + 40);
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EEF79D8(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_26EF027AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_26EF3917C();
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

  return MEMORY[0x2822009F8](sub_26EF028A0, v9, v8);
}

uint64_t sub_26EF028A0()
{
  v1 = v0[2];
  v2 = *(v1 + 32);
  v0[9] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = sub_26EF0F498();

    if (v4)
    {
      v3;
      v5 = swift_task_alloc();
      v0[11] = v5;
      *v5 = v0;
      v5[1] = sub_26EF02C40;

      return sub_26EF12AE4();
    }

    else
    {
      v9 = v0[4];
      v8 = v0[5];
      v10 = v0[3];
      v11 = v3;
      sub_26EF0F4AC();

      (*(v9 + 104))(v8, *MEMORY[0x277D70628], v10);
      v11;
      v12 = swift_task_alloc();
      v0[10] = v12;
      *v12 = v0;
      v12[1] = sub_26EF02AA4;
      v13 = v0[5];

      return sub_26EF13E7C(v13);
    }
  }

  else
  {
    v7 = *(v1 + 40);
    type metadata accessor for VoiceBankingAudioServiceViewModel();
    sub_26EEF79D8(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EF02AA4()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 32);
  v6 = *(*v0 + 24);
  v10 = *v0;

  (*(v5 + 8))(v4, v6);
  v7 = *(v1 + 64);
  v8 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_26EEA88F0, v8, v7);
}

uint64_t sub_26EF02C40()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 72);
  v7 = *v0;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_26EF076FC, v5, v4);
}

uint64_t sub_26EF02D80@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C30, &qword_26EF3D3D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v39 = v37 - v8;
  v9 = sub_26EF3872C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v38 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v37 - v16;
  type metadata accessor for VoiceBankingSession();
  sub_26EEF79D8(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  *a3 = sub_26EF3973C();
  *(a3 + 8) = v18 & 1;
  type metadata accessor for VoiceBankingNavigationModel();
  sub_26EEF79D8(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);
  *(a3 + 16) = sub_26EF39C1C();
  *(a3 + 24) = v19;
  type metadata accessor for VoiceBankingAudioServiceViewModel();
  sub_26EEF79D8(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
  *(a3 + 32) = sub_26EF39C1C();
  *(a3 + 40) = v20;
  LOBYTE(v41) = a1;
  sub_26EF3AAEC();
  v21 = v43;
  *(a3 + 48) = v42;
  *(a3 + 56) = v21;
  LOBYTE(v41) = 0;
  sub_26EF3AAEC();
  v22 = v43;
  *(a3 + 64) = v42;
  *(a3 + 72) = v22;
  v23 = type metadata accessor for SoundCheckView(0);
  v37[1] = v23[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8080, &unk_26EF3FC30);
  v24 = *(v10 + 72);
  v25 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_26EF3EE20;
  sub_26EF386EC();
  sub_26EF386DC();
  sub_26EF3870C();
  v42 = v26;
  sub_26EEF79D8(&qword_2806C8088, MEMORY[0x277CE7670]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8090, &unk_26EF3FB80);
  sub_26EE154C8(&qword_2806C8098, &qword_2806C8090, &unk_26EF3FB80);
  sub_26EF3B68C();
  (*(v10 + 16))(v38, v17, v9);
  sub_26EF3AAEC();
  (*(v10 + 8))(v17, v9);
  v27 = (a3 + v23[10]);
  sub_26EE1FAB8(0, &qword_2806C6C38, 0x277CBEBB8);
  v28 = [objc_opt_self() mainRunLoop];
  v29 = *MEMORY[0x277CBE738];
  v30 = sub_26EF3B5BC();
  v31 = v39;
  (*(*(v30 - 8) + 56))(v39, 1, 1, v30);
  v32 = sub_26EF3B59C();

  sub_26EE14578(v31, &qword_2806C6C30, &qword_26EF3D3D0);
  v42 = v32;
  sub_26EF3B58C();
  sub_26EEF79D8(&qword_2806C6C40, MEMORY[0x277CC9DF0]);
  v33 = sub_26EF394CC();

  v41 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6C28, &qword_26EF3D3C8);
  sub_26EF3AAEC();
  v34 = v43;
  *v27 = v42;
  v27[1] = v34;
  v35 = v23[11];
  v42 = 0x402A000000000000;
  sub_26EE8560C();
  sub_26EF397EC();
  return sub_26EE14D98(v40, a3 + v23[12], &qword_2806C6DA8, &unk_26EF41A60);
}

unint64_t sub_26EF03330()
{
  result = qword_2806C9780;
  if (!qword_2806C9780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9770, &unk_26EF436F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9768, &qword_26EF436F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9788, &qword_26EF43710);
    sub_26EF03490();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9758, &qword_26EF436E0);
    sub_26EE154C8(&qword_2806C97A8, &qword_2806C9758, &qword_26EF436E0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9780);
  }

  return result;
}

unint64_t sub_26EF03490()
{
  result = qword_2806C9790;
  if (!qword_2806C9790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9788, &qword_26EF43710);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9798, &qword_26EF43718);
    sub_26EE154C8(&qword_2806C97A0, &qword_2806C9798, &qword_26EF43718);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9790);
  }

  return result;
}

unint64_t sub_26EF03584()
{
  result = qword_2806C97B8;
  if (!qword_2806C97B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C97B0, &qword_26EF43720);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9738, &qword_26EF436C0);
    sub_26EE154C8(&qword_2806C97C0, &qword_2806C9738, &qword_26EF436C0);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9728, &qword_26EF436B0);
    sub_26EE154C8(&qword_2806C97C8, &qword_2806C9728, &qword_26EF436B0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C97B8);
  }

  return result;
}

unint64_t sub_26EF036EC()
{
  result = qword_2806C97E0;
  if (!qword_2806C97E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C97E0);
  }

  return result;
}

unint64_t sub_26EF03740()
{
  result = qword_2806C97F0;
  if (!qword_2806C97F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C97E8, &unk_26EF43730);
    sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C97F0);
  }

  return result;
}

uint64_t sub_26EF03810(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SoundCheckView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_26EF038B0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_26EF03934()
{
  result = qword_2806C9810;
  if (!qword_2806C9810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9808, &unk_26EF43750);
    sub_26EE84834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9810);
  }

  return result;
}

uint64_t sub_26EF039C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9858, &unk_26EF43798);
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = v46[8];
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9850, &unk_26EF43788);
  v51 = *(v8 - 8);
  v52 = v8;
  v9 = *(v51 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v49 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C98A8, &qword_26EF43918);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v50 = &v44 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B70, &qword_26EF43F10);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = &v44 - v20;
  v22 = sub_26EF38FEC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(type metadata accessor for VBRecordingResultView(0) + 20);
  v48 = a1;
  sub_26EE13B88(a1 + v28, v21, &qword_2806C9B70, &qword_26EF43F10);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_26EE14578(v21, &qword_2806C9B70, &qword_26EF43F10);
    return (*(v13 + 56))(v53, 1, 1, v12);
  }

  else
  {
    v30 = *(v23 + 32);
    v45 = v27;
    v31 = v30(v27, v21, v22);
    MEMORY[0x28223BE20](v31, v32);
    *(&v44 - 2) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C98B0, &qword_26EF43920);
    v44 = v12;
    sub_26EE154C8(&qword_2806C98B8, &qword_2806C98B0, &qword_26EF43920);
    sub_26EF3A50C();
    sub_26EF39EAC();
    v33 = sub_26EE154C8(&qword_2806C9860, &qword_2806C9858, &unk_26EF43798);
    v34 = v49;
    v35 = v47;
    sub_26EF3A74C();

    v36 = (v46[1])(v7, v35);
    v46 = &v44;
    MEMORY[0x28223BE20](v36, v37);
    *(&v44 - 2) = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7388, &unk_26EF3FAE0);
    v54 = v35;
    v55 = v33;
    swift_getOpaqueTypeConformance2();
    v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C73A8, &qword_26EF3E150);
    v39 = sub_26EE154C8(&qword_2806C73B0, &qword_2806C73A8, &qword_26EF3E150);
    v54 = v38;
    v55 = v39;
    swift_getOpaqueTypeConformance2();
    v40 = v50;
    v41 = v52;
    sub_26EF3A8EC();
    (*(v51 + 8))(v34, v41);
    v42 = v53;
    v43 = v44;
    (*(v13 + 32))(v53, v40, v44);
    (*(v13 + 56))(v42, 0, 1, v43);
    return (*(v23 + 8))(v45, v22);
  }
}

unint64_t sub_26EF04014()
{
  result = qword_2806C9848;
  if (!qword_2806C9848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9840, &qword_26EF43780);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9850, &unk_26EF43788);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C7388, &unk_26EF3FAE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9858, &unk_26EF43798);
    sub_26EE154C8(&qword_2806C9860, &qword_2806C9858, &unk_26EF43798);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C73A8, &qword_26EF3E150);
    sub_26EE154C8(&qword_2806C73B0, &qword_2806C73A8, &qword_26EF3E150);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9848);
  }

  return result;
}

uint64_t sub_26EF04218@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a1;
  v42 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C98C0, &qword_26EF43928);
  v47 = *(v41 - 8);
  v3 = v47[8];
  v5 = MEMORY[0x28223BE20](v41, v4);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v45 = &v36 - v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C98C8, &qword_26EF43930);
  v46 = *(v39 - 8);
  v9 = v46[8];
  v11 = MEMORY[0x28223BE20](v39, v10);
  v38 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v44 = &v36 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v43 = &v36 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v36 - v20;
  sub_26EF39EAC();
  v50 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C98D0, &qword_26EF43938);
  sub_26EE154C8(&qword_2806C98D8, &qword_2806C98D0, &qword_26EF43938);
  v37 = v21;
  sub_26EF3AD2C();
  sub_26EF39EAC();
  v22 = v36;
  v49 = v36;
  sub_26EF3AD2C();
  sub_26EF39EAC();
  v48 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C98E0, &qword_26EF43940);
  sub_26EE154C8(&qword_2806C98E8, &qword_2806C98E0, &qword_26EF43940);
  v23 = v45;
  sub_26EF3AD2C();
  v24 = v46[2];
  v25 = v44;
  v26 = v39;
  v24(v44, v21, v39);
  v27 = v38;
  v24(v38, v43, v26);
  v28 = v47[2];
  v29 = v40;
  v30 = v41;
  v28(v40, v23, v41);
  v31 = v42;
  v24(v42, v25, v26);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C98F0, &unk_26EF43948);
  v24(&v31[*(v32 + 48)], v27, v26);
  v28(&v31[*(v32 + 64)], v29, v30);
  v33 = v47[1];
  v33(v45, v30);
  v34 = v46[1];
  v34(v43, v26);
  v34(v37, v26);
  v33(v29, v30);
  v34(v27, v26);
  return (v34)(v44, v26);
}

uint64_t sub_26EF04708@<X0>(char *a1@<X8>)
{
  v66 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67A8, &unk_26EF3CC00);
  v70 = *(v1 - 8);
  v2 = v70[8];
  v4 = MEMORY[0x28223BE20](v1, v3);
  v65 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v64 = &v61 - v8;
  v10 = MEMORY[0x28223BE20](v7, v9);
  v63 = &v61 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v62 = &v61 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v69 = &v61 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v67 = &v61 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v61 = &v61 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v71 = &v61 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v72 = &v61 - v29;
  MEMORY[0x28223BE20](v28, v30);
  v68 = &v61 - v31;
  sub_26EF39EAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
  v32 = swift_allocObject();
  v73 = xmmword_26EF3C6B0;
  *(v32 + 16) = xmmword_26EF3C6B0;
  sub_26EF38F2C();
  v33 = MEMORY[0x277D83A90];
  v34 = MEMORY[0x277D83B08];
  *(v32 + 56) = MEMORY[0x277D83A90];
  *(v32 + 64) = v34;
  *(v32 + 32) = v35;
  v74 = sub_26EF3B10C();
  v75 = v36;
  sub_26EE12538();
  sub_26EF3995C();
  sub_26EF39EAC();
  v37 = swift_allocObject();
  *(v37 + 16) = v73;
  sub_26EF38F8C();
  *(v37 + 56) = v33;
  *(v37 + 64) = MEMORY[0x277D83B08];
  *(v37 + 32) = v38;
  v74 = sub_26EF3B10C();
  v75 = v39;
  sub_26EF3995C();
  sub_26EF39EAC();
  v40 = swift_allocObject();
  *(v40 + 16) = v73;
  sub_26EF38FAC();
  *(v40 + 56) = v33;
  *(v40 + 64) = MEMORY[0x277D83B08];
  *(v40 + 32) = v41;
  v74 = sub_26EF3B10C();
  v75 = v42;
  sub_26EF3995C();
  sub_26EF39EAC();
  v43 = swift_allocObject();
  *(v43 + 16) = v73;
  sub_26EF38F4C();
  *(v43 + 56) = v33;
  *(v43 + 64) = MEMORY[0x277D83B08];
  *(v43 + 32) = v44;
  v74 = sub_26EF3B10C();
  v75 = v45;
  v46 = v61;
  sub_26EF3995C();
  sub_26EF39EAC();
  v47 = swift_allocObject();
  *(v47 + 16) = v73;
  sub_26EF38F6C();
  *(v47 + 56) = MEMORY[0x277D83A90];
  *(v47 + 64) = MEMORY[0x277D83B08];
  *(v47 + 32) = v48;
  v74 = sub_26EF3B10C();
  v75 = v49;
  v50 = v67;
  sub_26EF3995C();
  v51 = v69;
  v52 = v70[2];
  v52(v69, v68, v1);
  v53 = v62;
  v52(v62, v72, v1);
  v54 = v63;
  v52(v63, v71, v1);
  v55 = v64;
  v52(v64, v46, v1);
  v56 = v65;
  v52(v65, v50, v1);
  v57 = v66;
  v52(v66, v51, v1);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9900, &qword_26EF43960);
  v52(&v57[v58[12]], v53, v1);
  v52(&v57[v58[16]], v54, v1);
  v52(&v57[v58[20]], v55, v1);
  v52(&v57[v58[24]], v56, v1);
  v59 = v70[1];
  v59(v67, v1);
  v59(v46, v1);
  v59(v71, v1);
  v59(v72, v1);
  v59(v68, v1);
  v59(v56, v1);
  v59(v55, v1);
  v59(v54, v1);
  v59(v53, v1);
  return (v59)(v69, v1);
}

uint64_t sub_26EF04E70@<X0>(char *a1@<X8>)
{
  v66 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67A8, &unk_26EF3CC00);
  v70 = *(v1 - 8);
  v2 = v70[8];
  v4 = MEMORY[0x28223BE20](v1, v3);
  v65 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v64 = &v61 - v8;
  v10 = MEMORY[0x28223BE20](v7, v9);
  v63 = &v61 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v62 = &v61 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v69 = &v61 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v67 = &v61 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v61 = &v61 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v71 = &v61 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v72 = &v61 - v29;
  MEMORY[0x28223BE20](v28, v30);
  v68 = &v61 - v31;
  sub_26EF39EAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
  v32 = swift_allocObject();
  v73 = xmmword_26EF3C6B0;
  *(v32 + 16) = xmmword_26EF3C6B0;
  sub_26EF38F1C();
  v33 = MEMORY[0x277D83A90];
  v34 = MEMORY[0x277D83B08];
  *(v32 + 56) = MEMORY[0x277D83A90];
  *(v32 + 64) = v34;
  *(v32 + 32) = v35;
  v74 = sub_26EF3B10C();
  v75 = v36;
  sub_26EE12538();
  sub_26EF3995C();
  sub_26EF39EAC();
  v37 = swift_allocObject();
  *(v37 + 16) = v73;
  sub_26EF38F7C();
  *(v37 + 56) = v33;
  *(v37 + 64) = MEMORY[0x277D83B08];
  *(v37 + 32) = v38;
  v74 = sub_26EF3B10C();
  v75 = v39;
  sub_26EF3995C();
  sub_26EF39EAC();
  v40 = swift_allocObject();
  *(v40 + 16) = v73;
  sub_26EF38F9C();
  *(v40 + 56) = v33;
  *(v40 + 64) = MEMORY[0x277D83B08];
  *(v40 + 32) = v41;
  v74 = sub_26EF3B10C();
  v75 = v42;
  sub_26EF3995C();
  sub_26EF39EAC();
  v43 = swift_allocObject();
  *(v43 + 16) = v73;
  sub_26EF38F3C();
  *(v43 + 56) = v33;
  *(v43 + 64) = MEMORY[0x277D83B08];
  *(v43 + 32) = v44;
  v74 = sub_26EF3B10C();
  v75 = v45;
  v46 = v61;
  sub_26EF3995C();
  sub_26EF39EAC();
  v47 = swift_allocObject();
  *(v47 + 16) = v73;
  sub_26EF38F5C();
  *(v47 + 56) = MEMORY[0x277D83A90];
  *(v47 + 64) = MEMORY[0x277D83B08];
  *(v47 + 32) = v48;
  v74 = sub_26EF3B10C();
  v75 = v49;
  v50 = v67;
  sub_26EF3995C();
  v51 = v69;
  v52 = v70[2];
  v52(v69, v68, v1);
  v53 = v62;
  v52(v62, v72, v1);
  v54 = v63;
  v52(v63, v71, v1);
  v55 = v64;
  v52(v64, v46, v1);
  v56 = v65;
  v52(v65, v50, v1);
  v57 = v66;
  v52(v66, v51, v1);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9900, &qword_26EF43960);
  v52(&v57[v58[12]], v53, v1);
  v52(&v57[v58[16]], v54, v1);
  v52(&v57[v58[20]], v55, v1);
  v52(&v57[v58[24]], v56, v1);
  v59 = v70[1];
  v59(v67, v1);
  v59(v46, v1);
  v59(v71, v1);
  v59(v72, v1);
  v59(v68, v1);
  v59(v56, v1);
  v59(v55, v1);
  v59(v54, v1);
  v59(v53, v1);
  return (v59)(v69, v1);
}

uint64_t sub_26EF055D8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v34 = a1;
  v37 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67A8, &unk_26EF3CC00);
  v3 = *(v2 - 8);
  v4 = v3[8];
  v6 = MEMORY[0x28223BE20](v2, v5);
  v36 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v35 = &v32 - v10;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v33 = &v32 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v32 - v15;
  sub_26EF39EAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
  v17 = swift_allocObject();
  v32 = xmmword_26EF3C6B0;
  *(v17 + 16) = xmmword_26EF3C6B0;
  v18 = sub_26EF3921C();
  v19 = MEMORY[0x277D83C10];
  *(v17 + 56) = MEMORY[0x277D83B88];
  *(v17 + 64) = v19;
  *(v17 + 32) = v18;
  v38 = sub_26EF3B10C();
  v39 = v20;
  sub_26EE12538();
  sub_26EF3995C();
  sub_26EF39EAC();
  v21 = swift_allocObject();
  *(v21 + 16) = v32;
  v22 = sub_26EF38FDC();
  *(v21 + 56) = MEMORY[0x277D83B88];
  *(v21 + 64) = MEMORY[0x277D83C10];
  *(v21 + 32) = v22;
  v38 = sub_26EF3B10C();
  v39 = v23;
  v24 = v33;
  sub_26EF3995C();
  v25 = v3[2];
  v26 = v35;
  v25(v35, v16, v2);
  v27 = v36;
  v25(v36, v24, v2);
  v28 = v37;
  v25(v37, v26, v2);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C98F8, &qword_26EF43958);
  v25(&v28[*(v29 + 48)], v27, v2);
  v30 = v3[1];
  v30(v24, v2);
  v30(v16, v2);
  v30(v27, v2);
  return (v30)(v26, v2);
}

uint64_t sub_26EF05964(uint64_t a1)
{
  v2 = sub_26EF3A13C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C73A8, &qword_26EF3E150);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v13[-v9];
  v14 = a1;
  sub_26EF3A12C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6788, &unk_26EF3D080);
  sub_26EE154C8(&qword_2806C6790, &qword_2806C6788, &unk_26EF3D080);
  sub_26EF397CC();
  v11 = sub_26EE154C8(&qword_2806C73B0, &qword_2806C73A8, &qword_26EF3E150);
  MEMORY[0x274382230](v10, v5, v11);
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_26EF05B50(uint64_t a1)
{
  v2 = type metadata accessor for VBRecordingResultView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8, v5);
  sub_26EF39EAC();
  sub_26EF06BC8(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VBRecordingResultView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_26EF06DD8(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for VBRecordingResultView);
  return sub_26EF3AB6C();
}

uint64_t sub_26EF05CB0(uint64_t a1)
{
  v22 = sub_26EF39DDC();
  v2 = *(v22 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v22, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v21 - v10);
  v12 = sub_26EF3988C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26EE13B88(a1, v11, &qword_2806C7510, &unk_26EF3E320);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 32))(v17, v11, v12);
  }

  else
  {
    v18 = *v11;
    sub_26EF3B46C();
    v19 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();

    (*(v2 + 8))(v6, v22);
  }

  sub_26EF3987C();
  return (*(v13 + 8))(v17, v12);
}

uint64_t sub_26EF05F2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9840, &qword_26EF43780);
  sub_26EF04014();
  return sub_26EF39ADC();
}

uint64_t sub_26EF05FB0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95D0, &qword_26EF43598);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[9];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[10]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8338, &qword_26EF40020);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[11];
      goto LABEL_3;
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DA8, &unk_26EF41A60);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[12];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_26EF06158(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95D0, &qword_26EF43598);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[9];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[10]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8338, &qword_26EF40020);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[11];
    goto LABEL_3;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DA8, &unk_26EF41A60);
  v15 = *(*(v14 - 8) + 56);
  v16 = a1 + a4[12];

  return v15(v16, a2, a2, v14);
}

void sub_26EF062EC()
{
  sub_26EF0687C(319, &qword_2806C66B0, type metadata accessor for VoiceBankingSession, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_26EE1F73C();
    if (v1 <= 0x3F)
    {
      sub_26EE1F7D0();
      if (v2 <= 0x3F)
      {
        sub_26EE78014(319, &qword_2806C7350);
        if (v3 <= 0x3F)
        {
          sub_26EE78014(319, &qword_2806C9868);
          if (v4 <= 0x3F)
          {
            sub_26EF0687C(319, &qword_2806C9870, MEMORY[0x277CE7670], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_26EF064F0(319, &qword_2806C6DD8, &qword_2806C6C28, &qword_26EF3D3C8, MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_26EE859C8();
                if (v7 <= 0x3F)
                {
                  sub_26EF064F0(319, &qword_2806C8D68, &qword_2806C9BE0, &qword_26EF3D3C0, MEMORY[0x277CE11F8]);
                  if (v8 <= 0x3F)
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
}

void sub_26EF064F0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_26EF06568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7568, &unk_26EF3E3D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B70, &qword_26EF43F10);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26EF06684(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7568, &unk_26EF3E3D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B70, &qword_26EF43F10);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_26EF06798()
{
  sub_26EF0687C(319, &qword_2806C7570, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_26EF0687C(319, &qword_2806C9878, MEMORY[0x277D70620], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26EF0687C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26EF068E4()
{
  result = qword_2806C9880;
  if (!qword_2806C9880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C96E8, &qword_26EF43630);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C95C8, &qword_26EF43590);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C96D0, &qword_26EF43610);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C95C0, &qword_26EF43588);
    type metadata accessor for VBRecordingResultView(255);
    sub_26EEFCB0C();
    sub_26EEF79D8(&qword_2806C96C8, type metadata accessor for VBRecordingResultView);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C96D8, &qword_26EF43618);
    sub_26EE154C8(&qword_2806C96E0, &qword_2806C96D8, &qword_26EF43618);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26EEF79D8(&qword_2806C6708, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9880);
  }

  return result;
}

unint64_t sub_26EF06B5C()
{
  result = qword_2806CEFF0;
  if (!qword_2806CEFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806CEFF0);
  }

  return result;
}

uint64_t sub_26EF06BC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26EF06C30()
{
  v1 = type metadata accessor for VBRecordingResultView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7510, &unk_26EF3E320);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26EF3988C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v1 + 20);
  v9 = sub_26EF38FEC();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(&v5[v8], 1, v9))
  {
    (*(v10 + 8))(&v5[v8], v9);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EF06DD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26EF06E84()
{
  v2 = *(type metadata accessor for SoundCheckView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE05D7C;

  return sub_26EF00474(v4, v5, v6, v0 + v3);
}

uint64_t sub_26EF06F4C()
{
  v1 = *(type metadata accessor for SoundCheckView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  if (*(v2 + 16))
  {
    v3 = *(v2 + 16);

    v4 = VoiceBankingNavigationModel.itemPath.modify(v14);
    v6 = v5;
    v7 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_26EEB3AD4(0, *(v7 + 2) + 1, 1, v7);
      *v6 = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = sub_26EEB3AD4((v9 > 1), v10 + 1, 1, v7);
      *v6 = v7;
    }

    *(v7 + 2) = v10 + 1;
    v11 = &v7[16 * v10];
    *(v11 + 4) = 6;
    v11[40] = 1;
    (v4)(v14, 0);
  }

  else
  {
    v13 = *(v2 + 24);
    type metadata accessor for VoiceBankingNavigationModel();
    sub_26EEF79D8(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_26EF070DC()
{
  v1 = *(type metadata accessor for SoundCheckView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v4 = *(v2 + 48);
  v5 = *(v2 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C72E0, &qword_26EF3E8C0);
  return sub_26EF3AB0C();
}

uint64_t sub_26EF07178@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x274381E00]();
  *a1 = result;
  return result;
}

uint64_t sub_26EF071A4(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x274381E10](v2);
}

uint64_t objectdestroy_65Tm()
{
  v1 = (type metadata accessor for SoundCheckView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_26EE05C9C(*(v0 + v3), *(v0 + v3 + 8));
  v6 = *(v0 + v3 + 16);

  v7 = *(v0 + v3 + 56);

  v8 = *(v0 + v3 + 72);

  v9 = v0 + v3 + v1[11];
  v10 = sub_26EF3872C();
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C95D0, &qword_26EF43598) + 28));

  v12 = (v0 + v3 + v1[12]);
  v13 = *v12;

  v14 = v12[1];

  v15 = v1[13];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8338, &qword_26EF40020);
  (*(*(v16 - 8) + 8))(v0 + v3 + v15, v16);
  v17 = (v0 + v3 + v1[14]);
  v18 = *v17;

  v19 = *(v17 + 1);

  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6DA8, &unk_26EF41A60) + 32);
  v21 = sub_26EF38A4C();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(&v17[v20], 1, v21))
  {
    (*(v22 + 8))(&v17[v20], v21);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26EF074B4()
{
  v2 = *(type metadata accessor for SoundCheckView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE15538;

  return sub_26EF027AC(v4, v5, v6, v0 + v3);
}

unint64_t sub_26EF0757C()
{
  result = qword_2806C9950;
  if (!qword_2806C9950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9950);
  }

  return result;
}

uint64_t sub_26EF075D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26EF07634()
{
  v2 = *(type metadata accessor for SoundCheckView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26EE15538;

  return sub_26EEFC3EC(v4, v5, v6, v0 + v3);
}

uint64_t sub_26EF07750@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C99F8, &unk_26EF43B70);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v36 - v11;
  if ((a1[4] & 1) != 0 || (v13 = a1[1], v13 >= *sub_26EE97E28()))
  {
    v40 = 0;
    v38 = 0;
    v37 = 0;
    v36 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v39 = 1;
  }

  else
  {
    sub_26EF3AE4C();
    sub_26EF3984C();
    v39 = 0;
    v40 = v41;
    v38 = v43;
    v37 = v45;
    v36 = v46;
    LOBYTE(v47) = 1;
    LOBYTE(v52) = v42;
    LOBYTE(v51) = v44;
    v14 = 1;
    v15 = v42;
    v16 = v44;
    LOBYTE(v50[0]) = 0;
  }

  v17 = *(a1 + 5);
  v18 = *(sub_26EF39B7C() + 20);
  v19 = *MEMORY[0x277CE0118];
  v20 = sub_26EF39ECC();
  (*(*(v20 - 8) + 104))(&v12[v18], v19, v20);
  *v12 = v17;
  *(v12 + 1) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C66A8, &qword_26EF3C8D8);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_26EF3D070;
  v22 = *(a1 + 3);
  v51 = *(a1 + 2);
  v23 = v51;
  v52 = v22;
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  sub_26EE980FC(&v52, v50);
  sub_26EE980FC(&v51, v50);
  sub_26EF3AF1C();
  sub_26EF3AF0C();
  MEMORY[0x274382EE0](v21);
  sub_26EF3997C();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A00, &qword_26EF43B80);
  v25 = &v12[*(v24 + 52)];
  v26 = v48;
  *v25 = v47;
  *(v25 + 1) = v26;
  *(v25 + 4) = v49;
  *&v12[*(v24 + 56)] = 256;
  v27 = *a1;
  v28 = *(a1 + 1);
  sub_26EF3AE4C();
  sub_26EF3984C();
  v29 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A08, &qword_26EF43B88) + 36)];
  v30 = v50[1];
  *v29 = v50[0];
  *(v29 + 1) = v30;
  *(v29 + 2) = v50[2];
  v31 = sub_26EF3AEBC();
  v32 = &v12[*(v4 + 36)];
  *v32 = v31;
  v32[1] = v28;
  sub_26EF07CC0(v12, v9);
  *a2 = 0;
  *(a2 + 8) = v14;
  *(a2 + 16) = v40;
  *(a2 + 24) = v15;
  *(a2 + 32) = v38;
  *(a2 + 40) = v16;
  v33 = v36;
  *(a2 + 48) = v37;
  *(a2 + 56) = v33;
  *(a2 + 64) = v39;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A10, &qword_26EF43B90);
  sub_26EF07CC0(v9, a2 + *(v34 + 48));
  sub_26EF07D30(v12);
  return sub_26EF07D30(v9);
}

uint64_t sub_26EF07B34@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  *a4 = a5;
  *(a4 + 8) = a6;
  *(a4 + 16) = result;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  *(a4 + 40) = a7;
  return result;
}

uint64_t sub_26EF07B64@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_26EF39F5C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C99E0, &qword_26EF43AD0);
  return sub_26EF07750(v1, a1 + *(v3 + 44));
}

uint64_t sub_26EF07BB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26EF07BFC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_26EF07C5C()
{
  result = qword_2806C99E8;
  if (!qword_2806C99E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C99F0, &qword_26EF43B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C99E8);
  }

  return result;
}

uint64_t sub_26EF07CC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C99F8, &unk_26EF43B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EF07D30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C99F8, &unk_26EF43B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for EQGraph.Band()
{
  result = qword_2806CF310;
  if (!qword_2806CF310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EF07DE4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26EF37EDC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void type metadata accessor for CGSize()
{
  if (!qword_2806C9AB0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2806C9AB0);
    }
  }
}

double EQGraph.init()@<D0>(void *a1@<X8>)
{
  v25 = a1;
  v1 = sub_26EF37EDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A28, &qword_26EF43BC0);
  v7 = (type metadata accessor for EQGraph.Band() - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v10 = 2 * v8;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26EF3EE20;
  v12 = v11 + v9;
  v13 = sub_26EF3A97C();
  sub_26EF37ECC();
  v14 = *(v2 + 32);
  v14(v11 + v9, v6, v1);
  *(v12 + v7[7]) = 0x3FD0000000000000;
  *(v12 + v7[8]) = 0x3FE0000000000000;
  *(v12 + v7[9]) = 0;
  *(v12 + v7[10]) = 0;
  *(v12 + v7[11]) = v13;
  v15 = v11 + v9 + v8;
  v16 = sub_26EF3A98C();
  sub_26EF37ECC();
  v14(v15, v6, v1);
  *(v15 + v7[7]) = 0x3FE0000000000000;
  *(v15 + v7[8]) = 0x3FE0000000000000;
  *(v15 + v7[9]) = 0;
  *(v15 + v7[10]) = 0;
  *(v15 + v7[11]) = v16;
  v17 = v11 + v9 + v10;
  v18 = sub_26EF3A9AC();
  sub_26EF37ECC();
  v14(v17, v6, v1);
  *(v17 + v7[7]) = 0x3FE8000000000000;
  *(v17 + v7[8]) = 0x3FE0000000000000;
  *(v17 + v7[9]) = 0;
  *(v17 + v7[10]) = 0;
  *(v17 + v7[11]) = v18;
  v26 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A18, &qword_26EF43BB0);
  sub_26EF3AAEC();
  v19 = *(&v28 + 1);
  v20 = v25;
  *v25 = v28;
  v20[1] = v19;
  v21 = v20;
  type metadata accessor for CGSize();
  v26 = 0;
  v27 = 0;
  sub_26EF3AAEC();
  v22 = v29;
  result = *&v28;
  *(v21 + 1) = v28;
  v21[4] = v22;
  return result;
}

uint64_t sub_26EF0816C(uint64_t a1)
{
  v3 = type metadata accessor for EQGraph.Band();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = v1[1];
  if (a1 >= 1)
  {
    v17 = *v1;
    v18 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A20, &qword_26EF43BB8);
    result = sub_26EF3AAFC();
    if (*(v16 + 16) < a1)
    {
      __break(1u);
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    sub_26EF0A3C8(v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * (a1 - 1), v8);

    v12 = *&v8[*(v3 + 20)];
    sub_26EF0A76C(v8);
  }

  v17 = v9;
  v18 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A20, &qword_26EF43BB8);
  sub_26EF3AAFC();
  v13 = *(v16 + 16);

  if (v13 - 1 <= a1)
  {
    return result;
  }

  v17 = v9;
  v18 = v10;
  result = sub_26EF3AAFC();
  if (a1 < -1)
  {
    goto LABEL_10;
  }

  if ((a1 + 1) >= *(v16 + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_26EF0A3C8(v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * (a1 + 1), v8);

  v14 = *&v8[*(v3 + 20)];
  return sub_26EF0A76C(v8);
}

uint64_t EQGraph.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A38, &qword_26EF43BD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = (v27 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A40, &qword_26EF43BD8);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v27 - v12;
  v14 = v1[1];
  v37 = *v1;
  v38 = v14;
  v39 = *(v1 + 4);
  *v7 = sub_26EF3AE4C();
  v7[1] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A48, &qword_26EF43BE0);
  sub_26EF085D4(&v37, v7 + *(v16 + 44));
  sub_26EF3AE4C();
  sub_26EF39BAC();
  sub_26EE14D98(v7, v13, &qword_2806C9A38, &qword_26EF43BD0);
  v17 = &v13[*(v9 + 44)];
  v18 = v35;
  *(v17 + 4) = v34;
  *(v17 + 5) = v18;
  *(v17 + 6) = v36;
  v19 = v31;
  *v17 = v30;
  *(v17 + 1) = v19;
  v20 = v33;
  *(v17 + 2) = v32;
  *(v17 + 3) = v20;
  v28 = v38;
  v29 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A30, &qword_26EF43BC8);
  sub_26EF3AB1C();
  v21 = v27[0];
  v22 = v27[1];
  v23 = v27[2];
  v24 = v27[3];
  sub_26EE14D98(v13, a1, &qword_2806C9A40, &qword_26EF43BD8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A50, &qword_26EF43BE8);
  v26 = (a1 + *(result + 36));
  *v26 = v21;
  v26[1] = v22;
  v26[2] = v23;
  v26[3] = v24;
  return result;
}

uint64_t sub_26EF085D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9AB8, &unk_26EF43DA0);
  v5 = *(v4 - 8);
  v6 = v5[8];
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v24 - v12;
  v26 = a1;
  sub_26EF3A56C();
  v25 = sub_26EF3A99C();
  v33[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A20, &qword_26EF43BB8);
  sub_26EF3AAFC();
  v14 = *(*&v30[0] + 16);

  *&v30[0] = 0;
  *(&v30[0] + 1) = v14;
  swift_getKeyPath();
  v15 = swift_allocObject();
  v16 = *(a1 + 16);
  *(v15 + 16) = *a1;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(a1 + 32);
  sub_26EF0A1B0(a1, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6F98, &qword_26EF3D860);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9AC0, &unk_26EF43DD0);
  sub_26EE275F0();
  sub_26EF0A1E8();
  sub_26EF3ACEC();
  v17 = v5[2];
  v17(v10, v13, v4);
  v18 = v27;
  v19 = v28;
  v30[0] = v27;
  v30[1] = v28;
  v20 = v25;
  *&v31 = v29;
  *(&v31 + 1) = v25;
  v32 = 256;
  *(a2 + 48) = 256;
  *a2 = v18;
  *(a2 + 16) = v19;
  *(a2 + 32) = v31;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9AE8, &qword_26EF43DF0);
  v17((a2 + *(v21 + 48)), v10, v4);
  sub_26EE13B88(v30, v33, &qword_2806C9AF0, &unk_26EF43DF8);
  v22 = v5[1];
  v22(v13, v4);
  v22(v10, v4);
  v33[0] = v27;
  v33[1] = v28;
  v34 = v29;
  v35 = v20;
  v36 = 256;
  return sub_26EE14578(v33, &qword_2806C9AF0, &unk_26EF43DF8);
}

uint64_t sub_26EF088EC(uint64_t a1, __int128 *a2)
{
  v3 = type metadata accessor for EQGraph.Band();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2[1];
  v21 = *(a2 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A30, &qword_26EF43BC8);
  sub_26EF3AAFC();
  sub_26EF3A54C();
  v20 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A20, &qword_26EF43BB8);
  sub_26EF3AAFC();
  v9 = *(v19 + 16);
  if (v9)
  {
    v11 = *(v3 + 20);
    v10 = *(v3 + 24);
    v12 = *(v4 + 80);
    v18[1] = v19;
    v13 = v19 + ((v12 + 32) & ~v12);
    v14 = *(v4 + 72);
    do
    {
      sub_26EF0A3C8(v13, v8);
      v15 = *&v8[v11];
      v20 = a2[1];
      v21 = *(a2 + 4);
      sub_26EF3AAFC();
      v16 = *&v8[v10];
      sub_26EF0A76C(v8);
      v20 = a2[1];
      v21 = *(a2 + 4);
      sub_26EF3AAFC();
      sub_26EF3A55C();
      v13 += v14;
      --v9;
    }

    while (v9);
  }

  v20 = a2[1];
  v21 = *(a2 + 4);
  sub_26EF3AAFC();
  v20 = a2[1];
  v21 = *(a2 + 4);
  sub_26EF3AAFC();
  sub_26EF3A55C();
  v20 = a2[1];
  v21 = *(a2 + 4);
  sub_26EF3AAFC();
  v20 = a2[1];
  v21 = *(a2 + 4);
  sub_26EF3AAFC();
  sub_26EF3A55C();
  v20 = a2[1];
  v21 = *(a2 + 4);
  sub_26EF3AAFC();
  sub_26EF3A55C();
  return sub_26EF3A53C();
}

uint64_t sub_26EF08BB8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = sub_26EF3A08C();
  v6 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66, v7);
  v65 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26EF3971C();
  v68 = *(v9 - 8);
  v69 = v9;
  v10 = *(v68 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v67 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E48, &unk_26EF3D5B0);
  v71 = *(v13 - 8);
  v72 = v13;
  v14 = *(v71 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v70 = &v63 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6E50, &qword_26EF43DE0);
  v74 = *(v17 - 8);
  v75 = v17;
  v18 = *(v74 + 64);
  MEMORY[0x28223BE20](v17, v19);
  v73 = &v63 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9AF8, &qword_26EF43E08);
  v77 = *(v21 - 8);
  v22 = *(v77 + 64);
  MEMORY[0x28223BE20](v21, v23);
  v76 = &v63 - v24;
  v78 = type metadata accessor for EQGraph.Band();
  v25 = *(v78 - 1);
  v26 = *(v25 + 64);
  v28 = MEMORY[0x28223BE20](v78, v27);
  v29 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v63 - v31;
  v33 = *a1;
  v34 = *(a2 + 16);
  v84 = *a2;
  v85 = v34;
  *&v86 = *(a2 + 32);
  sub_26EF0816C(v33);
  v36 = v35;
  v38 = v37;
  v84 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A20, &qword_26EF43BB8);
  result = sub_26EF3AAFC();
  if ((v33 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v33 < *(*&v83[0] + 16))
  {
    v63 = a3;
    v64 = v21;
    v40 = *(v25 + 80);
    sub_26EF0A3C8(*&v83[0] + ((v40 + 32) & ~v40) + *(v25 + 72) * v33, v32);

    v41 = *&v32[v78[9]];
    v32[v78[8]];
    sub_26EF3AE4C();
    sub_26EF3984C();
    *&v88[19] = v89;
    *&v88[11] = *&v88[35];
    *&v88[3] = *&v88[27];
    *(v83 + 10) = *v88;
    *&v83[0] = v41;
    WORD4(v83[0]) = 256;
    *(&v83[1] + 10) = *&v88[8];
    *(&v83[2] + 10) = *&v88[16];
    *(&v83[3] + 1) = *(&v89 + 1);

    sub_26EF3A24C();
    v42 = v67;
    sub_26EF396FC();
    sub_26EF0A3C8(v32, v29);
    v43 = (v40 + 56) & ~v40;
    v44 = (v26 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    v46 = *(a2 + 16);
    *(v45 + 16) = *a2;
    *(v45 + 32) = v46;
    *(v45 + 48) = *(a2 + 32);
    sub_26EF0A540(v29, v45 + v43);
    *(v45 + v44) = v33;
    v47 = (v45 + ((v44 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v47 = v36;
    v47[1] = v38;
    sub_26EF0A1B0(a2, &v84);
    sub_26EF0A654(&qword_2806C6E88, MEMORY[0x277CDD730]);
    sub_26EF0A654(&qword_2806C6E90, MEMORY[0x277CDD708]);
    v48 = v69;
    v49 = v70;
    sub_26EF3AD1C();

    (*(v68 + 8))(v42, v48);
    v50 = swift_allocObject();
    v51 = *(a2 + 16);
    *(v50 + 16) = *a2;
    *(v50 + 32) = v51;
    *(v50 + 48) = *(a2 + 32);
    *(v50 + 56) = v33;
    sub_26EF0A1B0(a2, &v84);
    sub_26EE154C8(&qword_2806C6E98, &qword_2806C6E48, &unk_26EF3D5B0);
    v53 = v72;
    v52 = v73;
    sub_26EF3AD0C();

    (*(v71 + 8))(v49, v53);
    sub_26EF3974C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6AF8, &qword_26EF3D1D0);
    sub_26EF0A310();
    sub_26EE154C8(&qword_2806C6EA8, &qword_2806C6E50, &qword_26EF43DE0);
    v54 = v76;
    v55 = v75;
    sub_26EF3A8DC();
    (*(v74 + 8))(v52, v55);
    v84 = v83[0];
    v85 = v83[1];
    v86 = v83[2];
    v87 = v83[3];
    sub_26EE14578(&v84, &qword_2806C6AF8, &qword_26EF3D1D0);
    v56 = v78;
    v57 = *&v32[v78[5]];
    v83[0] = *(a2 + 16);
    *&v83[1] = *(a2 + 32);
    v81 = *(a2 + 16);
    v82 = *(a2 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A30, &qword_26EF43BC8);
    sub_26EF3AAFC();
    v58 = v57 * v79;
    v59 = *&v32[v56[6]];
    v81 = v83[0];
    v82 = *&v83[1];
    sub_26EF3AAFC();
    sub_26EF0A76C(v32);
    v60 = v59 * v80;
    v61 = v63;
    (*(v77 + 32))(v63, v54, v64);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9AC0, &unk_26EF43DD0);
    v62 = (v61 + *(result + 36));
    *v62 = v58;
    v62[1] = v60;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_26EF093CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, double a5, double a6)
{
  sub_26EF3970C();
  v17 = v16;
  v35 = *(a2 + 16);
  v36 = *(a2 + 32);
  v31 = *(a2 + 16);
  v32 = *(a2 + 32);
  *&v18 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A30, &qword_26EF43BC8));
  sub_26EF3AAFC();
  sub_26EF3970C();
  v20 = v19;
  v31 = v35;
  v32 = v36;
  v21 = &v31;
  sub_26EF3AAFC();
  v22 = v30;
  v23 = type metadata accessor for EQGraph.Band();
  if (a5 > a6)
  {
    __break(1u);
  }

  else
  {
    a1 = v23;
    v9 = *(a3 + *(v23 + 24));
    v24 = v17 / v29 + *(a3 + *(v23 + 20));
    if (v24 <= a5)
    {
      v24 = a5;
    }

    v18 = *a2;
    v6 = *(a2 + 8);
    v33 = v6;
    v34 = v18;
    if (v24 <= a6)
    {
      a6 = v24;
    }

    *&v31 = v18;
    *(&v31 + 1) = v6;
    sub_26EE13B88(&v34, &v29, &qword_2806C9A18, &qword_26EF43BB0);
    sub_26EE13B88(&v33, &v29, &qword_2806C9B00, &unk_26EF43E10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A20, &qword_26EF43BB8);
    sub_26EF3AAFC();
    v21 = v28;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if ((a4 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }
  }

  v21 = sub_26EF0A7E4(v21);
  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if (*(v21 + 2) > a4)
  {
    v7 = (*(*(a1 - 8) + 80) + 32) & ~*(*(a1 - 8) + 80);
    v8 = *(*(a1 - 8) + 72) * a4;
    *(v21 + v7 + v8 + *(a1 + 20)) = a6;
    v29 = *&v18;
    v30 = v6;
    sub_26EF3AB0C();
    *&v31 = v18;
    *(&v31 + 1) = v6;
    sub_26EF3AAFC();
    v21 = v28;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_26EF0A7E4(v21);
  v21 = result;
LABEL_10:
  if (*(v21 + 2) <= a4)
  {
    __break(1u);
  }

  else
  {
    *(v21 + v7 + v8 + *(a1 + 24)) = fmin(v20 / v22 + v9, 1.0);
    v29 = *&v18;
    v30 = v6;
    sub_26EF3AB0C();
    sub_26EE14578(&v34, &qword_2806C9A18, &qword_26EF43BB0);
    v26 = sub_26EE14578(&v33, &qword_2806C9B00, &unk_26EF43E10);
    MEMORY[0x28223BE20](v26, v27);
    sub_26EF3AEAC();
    sub_26EF3992C();
  }

  return result;
}

uint64_t sub_26EF09738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = sub_26EF398AC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v16 = sub_26EF3A9CC();
  (*(v13 + 16))(&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v17 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  *(v18 + 32) = a5;
  *(v18 + 40) = a6;
  (*(v13 + 32))(v18 + v17, &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  *a4 = v16;
  a4[1] = sub_26EF0A0EC;
  a4[2] = v18;
  a4[3] = 0;
  a4[4] = 0;
}

uint64_t sub_26EF098AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v6;
  v9[4] = v7;
  v9[5] = v8;

  v10 = sub_26EF3AE4C();
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A60, &qword_26EF43BF8);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A68, qword_26EF43C00);
  v15 = (a2 + *(result + 36));
  *v15 = sub_26EF0AB88;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v12;
  return result;
}

uint64_t sub_26EF09A38(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26EF09A80(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_26EF09AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26EF37EDC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_26EF09BBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26EF37EDC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26EF09C74()
{
  result = sub_26EF37EDC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_26EF09D18()
{
  result = qword_2806C9A70;
  if (!qword_2806C9A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9A50, &qword_26EF43BE8);
    sub_26EF09DA4();
    sub_26EF09E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9A70);
  }

  return result;
}

unint64_t sub_26EF09DA4()
{
  result = qword_2806C9A78;
  if (!qword_2806C9A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9A40, &qword_26EF43BD8);
    sub_26EE154C8(&qword_2806C9A80, &qword_2806C9A38, &qword_26EF43BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9A78);
  }

  return result;
}

unint64_t sub_26EF09E5C()
{
  result = qword_2806C9A88;
  if (!qword_2806C9A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9A88);
  }

  return result;
}

unint64_t sub_26EF09EB4()
{
  result = qword_2806C9A90;
  if (!qword_2806C9A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9A68, qword_26EF43C00);
    sub_26EE154C8(&qword_2806C9A98, &qword_2806C9A60, &qword_26EF43BF8);
    sub_26EE154C8(&qword_2806C9AA0, &qword_2806C9AA8, &qword_26EF43D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9A90);
  }

  return result;
}

uint64_t sub_26EF09F98(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26EF09FB8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t objectdestroyTm_17()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26EF0A020()
{
  v1 = sub_26EF398AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26EF0A0EC()
{
  v1 = *(sub_26EF398AC() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));
  sub_26EF3989C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A58, &qword_26EF43BF0);
  return sub_26EF3AC3C();
}

unint64_t sub_26EF0A1E8()
{
  result = qword_2806C9AC8;
  if (!qword_2806C9AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9AC0, &unk_26EF43DD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6AF8, &qword_26EF3D1D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6E50, &qword_26EF43DE0);
    sub_26EF0A310();
    sub_26EE154C8(&qword_2806C6EA8, &qword_2806C6E50, &qword_26EF43DE0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9AC8);
  }

  return result;
}

unint64_t sub_26EF0A310()
{
  result = qword_2806C9AD0;
  if (!qword_2806C9AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C6AF8, &qword_26EF3D1D0);
    sub_26EE154C8(&qword_2806C9AD8, &qword_2806C9AE0, &qword_26EF43DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9AD0);
  }

  return result;
}

uint64_t sub_26EF0A3C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EQGraph.Band();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EF0A42C()
{
  v1 = (type metadata accessor for EQGraph.Band() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0[2];

  v6 = v0[3];

  v7 = v0[6];

  v8 = v0 + v3;
  v9 = sub_26EF37EDC();
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = *&v8[v1[11]];

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_26EF0A540(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EQGraph.Band();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EF0A5A4(uint64_t a1)
{
  v3 = *(type metadata accessor for EQGraph.Band() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = (v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_26EF093CC(a1, v1 + 16, v1 + v4, v6, v8, v9);
}

uint64_t sub_26EF0A654(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_29Tm(uint64_t a1)
{
  v3 = v1[2];

  v4 = v1[3];

  v5 = v1[6];

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_26EF0A6F8()
{
  v2 = *(v0 + 56);
  sub_26EF3AEAC();
  sub_26EF3992C();
}

uint64_t sub_26EF0A76C(uint64_t a1)
{
  v2 = type metadata accessor for EQGraph.Band();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

size_t sub_26EF0A7F8(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A28, &qword_26EF43BC0);
  v10 = *(type metadata accessor for EQGraph.Band() - 8);
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
  v15 = *(type metadata accessor for EQGraph.Band() - 8);
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

uint64_t sub_26EF0A9EC(char a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = v3[1];
  v12 = *v3;
  v5 = v12;
  v11 = v6;
  v10[2] = v12;
  v10[3] = v6;
  sub_26EE13B88(&v12, v10, &qword_2806C9A18, &qword_26EF43BB0);
  sub_26EE13B88(&v11, v10, &qword_2806C9B00, &unk_26EF43E10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9A20, &qword_26EF43BB8);
  sub_26EF3AAFC();
  v7 = v10[4];
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_26EF0A7E4(v7);
  v7 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v7[2] > v4)
  {
    v9 = type metadata accessor for EQGraph.Band();
    *(v7 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80)) + *(*(v9 - 8) + 72) * v4 + *(v9 + 32)) = a1;
    v10[0] = v5;
    v10[1] = v6;
    sub_26EF3AB0C();
    sub_26EE14578(&v12, &qword_2806C9A18, &qword_26EF43BB0);
    return sub_26EE14578(&v11, &qword_2806C9B00, &unk_26EF43E10);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for RecordingSection()
{
  result = qword_2806CF3B0;
  if (!qword_2806CF3B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26EF0ABDC@<X0>(uint64_t a1@<X8>)
{
  v28[1] = a1;
  v28[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B08, &qword_26EF43E20);
  v2 = *(*(v28[0] - 8) + 64);
  MEMORY[0x28223BE20](v28[0], v3);
  v5 = v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B10, &qword_26EF43E28);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B18, &qword_26EF43E30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = v28 - v19;
  v21 = type metadata accessor for RecordingSection();
  sub_26EE13B88(v1 + *(v21 + 36), v20, &qword_2806C7088, &unk_26EF3E330);
  v22 = sub_26EF38DBC();
  v23 = (*(*(v22 - 8) + 48))(v20, 1, v22);
  sub_26EE14578(v20, &qword_2806C7088, &unk_26EF3E330);
  if (v23 == 1)
  {
    sub_26EF0B2A0(v5);
    v24 = &qword_2806C9B08;
    v25 = &qword_26EF43E20;
    sub_26EE13B88(v5, v10, &qword_2806C9B08, &qword_26EF43E20);
    swift_storeEnumTagMultiPayload();
    sub_26EF0B6F0(&qword_2806C9B20, &qword_2806C9B18, &qword_26EF43E30, sub_26EF0B6C0);
    sub_26EF0B76C();
    sub_26EF3A06C();
    v26 = v5;
  }

  else
  {
    sub_26EF0AF14(v15);
    v24 = &qword_2806C9B18;
    v25 = &qword_26EF43E30;
    sub_26EE13B88(v15, v10, &qword_2806C9B18, &qword_26EF43E30);
    swift_storeEnumTagMultiPayload();
    sub_26EF0B6F0(&qword_2806C9B20, &qword_2806C9B18, &qword_26EF43E30, sub_26EF0B6C0);
    sub_26EF0B76C();
    sub_26EF3A06C();
    v26 = v15;
  }

  return sub_26EE14578(v26, v24, v25);
}

uint64_t sub_26EF0AF14@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C70E8, &qword_26EF3DCA0);
  v28 = *(v2 - 8);
  v29 = v2;
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v28 - v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7A98, &qword_26EF3EF50);
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v30, v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v28 - v15;
  v17 = sub_26EF38DBC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for RecordingSection();
  sub_26EE13B88(v1 + *(v23 + 36), v16, &qword_2806C7088, &unk_26EF3E330);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_26EE14578(v16, &qword_2806C7088, &unk_26EF3E330);
    v24 = 1;
    v25 = v31;
  }

  else
  {
    (*(v18 + 32))(v22, v16, v17);
    if (sub_26EF38D8C() == 5 || sub_26EF38D8C() == 4 || !sub_26EF38D8C())
    {
      sub_26EF0B81C(v6);
      (*(v18 + 8))(v22, v17);
      sub_26EE14D98(v6, v11, &qword_2806C70E8, &qword_26EF3DCA0);
      v26 = 0;
    }

    else
    {
      (*(v18 + 8))(v22, v17);
      v26 = 1;
    }

    v25 = v31;
    (*(v28 + 56))(v11, v26, 1, v29);
    sub_26EE14D98(v11, v25, &qword_2806C7A98, &qword_26EF3EF50);
    v24 = 0;
  }

  return (*(v7 + 56))(v25, v24, 1, v30);
}

uint64_t sub_26EF0B2A0@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v34 = sub_26EF387DC();
  v2 = *(v34 - 1);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v34, v4);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B40, qword_26EF43E38);
  v7 = *(v36 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v36, v9);
  v35 = v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = v33 - v14;
  v16 = sub_26EF38AAC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for RecordingSection();
  sub_26EE13B88(v1 + *(v22 + 32), v15, &qword_2806C7080, &unk_26EF3DBF0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_26EE14578(v15, &qword_2806C7080, &unk_26EF3DBF0);
    return (*(v7 + 56))(v37, 1, 1, v36);
  }

  else
  {
    (*(v17 + 32))(v21, v15, v16);
    v24 = *MEMORY[0x277CE76B8];
    v25 = *(v2 + 104);
    v33[1] = v6;
    v26 = v25(v6, v24, v34);
    v34 = v33;
    v28 = MEMORY[0x28223BE20](v26, v27);
    MEMORY[0x28223BE20](v28, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B58, &qword_26EF43EC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7530, &qword_26EF43ED0);
    sub_26EF0EC5C();
    sub_26EE3C584();
    v30 = v35;
    sub_26EF3878C();
    v32 = v36;
    v31 = v37;
    (*(v7 + 32))(v37, v30, v36);
    (*(v7 + 56))(v31, 0, 1, v32);
    return (*(v17 + 8))(v21, v16);
  }
}

uint64_t sub_26EF0B6F0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_26EF0B76C()
{
  result = qword_2806C9B30;
  if (!qword_2806C9B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9B08, &qword_26EF43E20);
    sub_26EE154C8(&qword_2806C9B38, &qword_2806C9B40, qword_26EF43E38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9B30);
  }

  return result;
}

uint64_t sub_26EF0B81C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = type metadata accessor for RecordingSection();
  v4 = v3 - 8;
  v53 = *(v3 - 8);
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v56 = v7;
  v57 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7138, &unk_26EF3DCC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v55 = v50 - v11;
  v12 = sub_26EF3873C();
  v58 = *(v12 - 8);
  v59 = v12;
  v13 = *(v58 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v52 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = v50 - v19;
  v21 = sub_26EF38AAC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v25 = MEMORY[0x28223BE20](v21, v24);
  v26 = v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v29 = v50 - v28;
  v30 = *(v4 + 40);
  v54 = v2;
  sub_26EE13B88(v2 + v30, v20, &qword_2806C7080, &unk_26EF3DBF0);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_26EE14578(v20, &qword_2806C7080, &unk_26EF3DBF0);
    v31 = 1;
    v33 = v59;
    v32 = v60;
    v34 = v58;
  }

  else
  {
    v51 = *(v22 + 32);
    v51(v29, v20, v21);
    v35 = sub_26EE17094();
    v36._object = 0x800000026EF46FA0;
    v37 = v35 & 1;
    v36._countAndFlagsBits = 0xD000000000000011;
    v38 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v36, v37, 0);
    v50[0] = v38._object;
    v50[1] = v38._countAndFlagsBits;
    v39 = sub_26EF3961C();
    (*(*(v39 - 8) + 56))(v55, 1, 1, v39);
    v40 = v57;
    sub_26EF0E69C(v54, v57);
    (*(v22 + 16))(v26, v29, v21);
    v41 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v42 = (v56 + *(v22 + 80) + v41) & ~*(v22 + 80);
    v43 = swift_allocObject();
    sub_26EF0E704(v40, v43 + v41);
    v51((v43 + v42), v26, v21);
    v44 = v52;
    sub_26EF3874C();
    (*(v22 + 8))(v29, v21);
    v45 = v58;
    v46 = v60;
    v47 = v44;
    v48 = v59;
    (*(v58 + 32))(v60, v47, v59);
    v31 = 0;
    v32 = v46;
    v33 = v48;
    v34 = v45;
  }

  return (*(v34 + 56))(v32, v31, 1, v33);
}

uint64_t sub_26EF0BCCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v98 = a3;
  v93 = sub_26EF38AAC();
  v91 = *(v93 - 8);
  v5 = *(v91 + 64);
  MEMORY[0x28223BE20](v93, v6);
  v87 = v7;
  v88 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecordingSection();
  v83 = *(v8 - 8);
  v9 = *(v83 + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v84 = v11;
  v85 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7138, &unk_26EF3DCC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = v81 - v15;
  v92 = sub_26EF3873C();
  v90 = *(v92 - 8);
  v17 = *(v90 + 64);
  MEMORY[0x28223BE20](v92, v18);
  v89 = v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7C08, &qword_26EF3F0C8);
  v20 = *(*(v96 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v96, v21);
  v86 = v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v94 = v81 - v25;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9B68, &qword_26EF43ED8);
  v26 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97, v27);
  v29 = v81 - v28;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C70E8, &qword_26EF3DCA0);
  v30 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99, v31);
  v33 = v81 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8, v36);
  v38 = v81 - v37;
  v39 = sub_26EF39DDC();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39, v42);
  v44 = v81 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *a1;
  v95 = a1;
  if (*(a1 + 8) == 1)
  {
    v46 = v45;
  }

  else
  {

    sub_26EF3B46C();
    v47 = sub_26EF3A36C();
    countAndFlagsBits = v29;
    v48 = v33;
    v49 = v47;
    sub_26EF3880C();

    v33 = v48;
    v29 = countAndFlagsBits;
    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v45, 0);
    (*(v40 + 8))(v44, v39);
    v46 = v100;
  }

  MEMORY[0x274380B50]();
  v50 = sub_26EF37EDC();
  (*(*(v50 - 8) + 56))(v38, 0, 1, v50);
  v51 = VoiceBankingSession.phrasesRemaining(forVoiceID:)(v38);

  sub_26EE14578(v38, &qword_2806C9CB0, &qword_26EF3DD20);
  if (v51 <= 0)
  {
    sub_26EF0B81C(v33);
    v74 = &qword_2806C70E8;
    v75 = &qword_26EF3DCA0;
    sub_26EE13B88(v33, v29, &qword_2806C70E8, &qword_26EF3DCA0);
    swift_storeEnumTagMultiPayload();
    sub_26EE2E174();
    sub_26EE63944();
    sub_26EF3A06C();
    v78 = v33;
    return sub_26EE14578(v78, v74, v75);
  }

  v52 = sub_26EE17094();
  v53._object = 0x800000026EF46FF0;
  v54 = v52 & 1;
  v53._countAndFlagsBits = 0xD000000000000015;
  v55 = TTSVBUILocString(_:specializeForCurrentDeviceType:localeID:)(v53, v54, 0);
  v81[1] = v55._object;
  countAndFlagsBits = v55._countAndFlagsBits;
  v56 = sub_26EF3961C();
  (*(*(v56 - 8) + 56))(v16, 1, 1, v56);
  v57 = v95;
  v58 = v85;
  sub_26EF0E69C(v95, v85);
  v59 = v91;
  v60 = v88;
  v61 = a2;
  v62 = v93;
  (*(v91 + 16))(v88, v61, v93);
  v63 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v64 = (v84 + *(v59 + 80) + v63) & ~*(v59 + 80);
  v65 = swift_allocObject();
  sub_26EF0E704(v58, v65 + v63);
  (*(v59 + 32))(v65 + v64, v60, v62);
  v66 = v89;
  sub_26EF3874C();
  v67 = *(v57 + 32);
  if (v67)
  {
    v68 = v67;
    v69 = sub_26EF0FFFC();

    KeyPath = swift_getKeyPath();
    v71 = swift_allocObject();
    *(v71 + 16) = (v69 & 1) == 0;
    v72 = v86;
    (*(v90 + 32))(v86, v66, v92);
    v73 = &v72[*(v96 + 36)];
    *v73 = KeyPath;
    v73[1] = sub_26EE274EC;
    v73[2] = v71;
    v74 = &qword_2806C7C08;
    v75 = &qword_26EF3F0C8;
    v76 = v72;
    v77 = v94;
    sub_26EE14D98(v76, v94, &qword_2806C7C08, &qword_26EF3F0C8);
    sub_26EE13B88(v77, v29, &qword_2806C7C08, &qword_26EF3F0C8);
    swift_storeEnumTagMultiPayload();
    sub_26EE2E174();
    sub_26EE63944();
    sub_26EF3A06C();
    v78 = v77;
    return sub_26EE14578(v78, v74, v75);
  }

  v80 = *(v95 + 40);
  type metadata accessor for VoiceBankingAudioServiceViewModel();
  sub_26EF0EAF4(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
  result = sub_26EF39BFC();
  __break(1u);
  return result;
}

uint64_t sub_26EF0C538(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v3 = sub_26EF38CDC();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v45 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9CA0, &qword_26EF3F100);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v44 - v15;
  v17 = sub_26EF39DDC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v23 = *(a1 + 16);

    v24 = VoiceBankingNavigationModel.itemPath.modify(&v48);
    v26 = *v25;
    *v25 = MEMORY[0x277D84F90];

    (v24)(&v48, 0);

    v27 = *a1;
    v28 = *(a1 + 8);
    if (v28)
    {
      v29 = v27;
    }

    else
    {
      v30 = *a1;

      sub_26EF3B46C();
      v31 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v27, 0);
      (*(v18 + 8))(v22, v17);
      v29 = v48;
    }

    v32 = sub_26EF38E9C();
    (*(*(v32 - 8) + 56))(v16, 1, 1, v32);
    sub_26EED6AEC(v16);

    if (v28)
    {
      v33 = v27;
      v34 = v33;
    }

    else
    {

      sub_26EF3B46C();
      v35 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v27, 0);
      v33 = (*(v18 + 8))(v22, v17);
      v34 = v48;
    }

    MEMORY[0x274380B50](v33);
    v36 = sub_26EF37EDC();
    (*(*(v36 - 8) + 56))(v11, 0, 1, v36);
    v37 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceID;
    swift_beginAccess();
    sub_26EE65A2C(v11, v34 + v37);
    swift_endAccess();

    if (v28)
    {
      v38 = v27;
    }

    else
    {

      sub_26EF3B46C();
      v39 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v27, 0);
      (*(v18 + 8))(v22, v17);
      v38 = v48;
    }

    sub_26EF38A9C();
    v40 = v45;
    sub_26EF38C9C();
    v41 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationLocale;
    swift_beginAccess();
    (*(v46 + 40))(&v38[v41], v40, v47);
    swift_endAccess();

    v48 = 5;
    v49 = 1;

    VoiceBankingNavigationModel.initialViewType.setter(&v48);

    VoiceBankingNavigationModel.presentVoiceRootView.setter();
  }

  else
  {
    v43 = *(a1 + 24);
    type metadata accessor for VoiceBankingNavigationModel();
    sub_26EF0EAF4(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);
    result = sub_26EF39BFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_26EF0CB10(uint64_t a1, uint64_t a2)
{
  v4 = sub_26EF38AAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RecordingSection();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8, v12);
  v13 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9C80, &qword_26EF3E400);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v26 - v17;
  v19 = sub_26EF3B30C();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_26EF0E69C(a1, v13);
  (*(v5 + 16))(v8, a2, v4);
  sub_26EF3B2DC();
  v20 = sub_26EF3B2CC();
  v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v22 = (v11 + *(v5 + 80) + v21) & ~*(v5 + 80);
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  *(v23 + 16) = v20;
  *(v23 + 24) = v24;
  sub_26EF0E704(v13, v23 + v21);
  (*(v5 + 32))(v23 + v22, v8, v4);
  sub_26EE2C388(0, 0, v18, &unk_26EF43EB8, v23);
}

uint64_t sub_26EF0CDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_26EF38A2C();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = sub_26EF3883C();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v13 = sub_26EF37EDC();
  v5[14] = v13;
  v14 = *(v13 - 8);
  v5[15] = v14;
  v15 = *(v14 + 64) + 15;
  v5[16] = swift_task_alloc();
  v16 = sub_26EF39DDC();
  v5[17] = v16;
  v17 = *(v16 - 8);
  v5[18] = v17;
  v18 = *(v17 + 64) + 15;
  v5[19] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v20 = sub_26EF38DBC();
  v5[21] = v20;
  v21 = *(v20 - 8);
  v5[22] = v21;
  v22 = *(v21 + 64) + 15;
  v5[23] = swift_task_alloc();
  sub_26EF3B2DC();
  v5[24] = sub_26EF3B2CC();
  v24 = sub_26EF3B29C();
  v5[25] = v24;
  v5[26] = v23;

  return MEMORY[0x2822009F8](sub_26EF0D078, v24, v23);
}

uint64_t sub_26EF0D078()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[5];
  v5 = type metadata accessor for RecordingSection();
  sub_26EE13B88(v4 + *(v5 + 36), v3, &qword_2806C7088, &unk_26EF3E330);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_26EE14578(v0[20], &qword_2806C7088, &unk_26EF3E330);
    v6 = v0[5];
    v7 = *v6;
    if (*(v6 + 8))
    {
      v8 = v7;
      v9 = v8;
    }

    else
    {
      v14 = v0[18];
      v13 = v0[19];
      v15 = v0[17];

      sub_26EF3B46C();
      v16 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v7, 0);
      v17 = *(v14 + 8);
      v17(v13, v15);
      v9 = v0[2];

      sub_26EF3B46C();
      v18 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v7, 0);
      v17(v13, v15);
      v8 = v0[3];
    }

    v0[30] = v9;
    v19 = v0[14];
    v20 = v0[15];
    v21 = v0[13];
    v22 = v0[6];
    v23 = sub_26EED6EB4();

    MEMORY[0x274380B50]();
    (*(v20 + 56))(v21, 0, 1, v19);
    v24 = sub_26EE17094();
    v25 = swift_task_alloc();
    v0[31] = v25;
    *v25 = v0;
    v25[1] = sub_26EF0D8A8;
    v26 = v0[13];

    return VoiceBankingSession.trainWithMode(mode:voiceID:skipValidation:)(v23, v26, v24 & 1);
  }

  else
  {
    v10 = v0[5];
    (*(v0[22] + 32))(v0[23], v0[20], v0[21]);
    v11 = *v10;
    if (*(v10 + 8) == 1)
    {
      v12 = v11;
    }

    else
    {
      v29 = v0[18];
      v28 = v0[19];
      v30 = v0[17];

      sub_26EF3B46C();
      v31 = sub_26EF3A36C();
      sub_26EF3880C();

      sub_26EF39DCC();
      swift_getAtKeyPath();
      sub_26EE05C9C(v11, 0);
      (*(v29 + 8))(v28, v30);
      v12 = v0[4];
    }

    v0[27] = v12;
    v32 = v0[23];
    v33 = v0[16];
    MEMORY[0x274380E60]();
    v34 = swift_task_alloc();
    v0[28] = v34;
    *v34 = v0;
    v34[1] = sub_26EF0D48C;
    v35 = v0[16];

    return VoiceBankingSession.deleteModel(modelID:)(v35);
  }
}

uint64_t sub_26EF0D48C()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *(*v1 + 216);
  v5 = *(*v1 + 128);
  v6 = *(*v1 + 120);
  v7 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 232) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 208);
  v10 = *(v2 + 200);
  if (v0)
  {
    v11 = sub_26EF0DD30;
  }

  else
  {
    v11 = sub_26EF0D644;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_26EF0D644()
{
  (*(v0[22] + 8))(v0[23], v0[21]);
  v1 = v0[5];
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v3 = v2;
    v4 = v3;
  }

  else
  {
    v6 = v0[18];
    v5 = v0[19];
    v7 = v0[17];

    sub_26EF3B46C();
    v8 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v2, 0);
    v9 = *(v6 + 8);
    v9(v5, v7);
    v4 = v0[2];

    sub_26EF3B46C();
    v10 = sub_26EF3A36C();
    sub_26EF3880C();

    sub_26EF39DCC();
    swift_getAtKeyPath();
    sub_26EE05C9C(v2, 0);
    v9(v5, v7);
    v3 = v0[3];
  }

  v0[30] = v4;
  v11 = v0[14];
  v12 = v0[15];
  v13 = v0[13];
  v14 = v0[6];
  v15 = sub_26EED6EB4();

  MEMORY[0x274380B50]();
  (*(v12 + 56))(v13, 0, 1, v11);
  v16 = sub_26EE17094();
  v17 = swift_task_alloc();
  v0[31] = v17;
  *v17 = v0;
  v17[1] = sub_26EF0D8A8;
  v18 = v0[13];

  return VoiceBankingSession.trainWithMode(mode:voiceID:skipValidation:)(v15, v18, v16 & 1);
}

uint64_t sub_26EF0D8A8()
{
  v1 = *v0;
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 240);
  v4 = *(*v0 + 104);
  v8 = *v0;

  sub_26EE14578(v4, &qword_2806C9CB0, &qword_26EF3DD20);
  v5 = *(v1 + 208);
  v6 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_26EF0DA14, v6, v5);
}

uint64_t sub_26EF0DA14()
{
  v1 = v0[5];
  v2 = *(v1 + 48);
  v0[32] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[33] = v3;
    *v3 = v0;
    v3[1] = sub_26EF0DB34;

    return sub_26EEA69C4();
  }

  else
  {
    v5 = *(v1 + 56);
    type metadata accessor for VoiceRefreshViewModel(0);
    sub_26EF0EAF4(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel);

    return sub_26EF39BFC();
  }
}

uint64_t sub_26EF0DB34()
{
  v1 = *v0;
  v2 = *(*v0 + 264);
  v3 = *(*v0 + 256);
  v7 = *v0;

  v4 = *(v1 + 208);
  v5 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_26EF0DC78, v5, v4);
}

uint64_t sub_26EF0DC78()
{
  v1 = v0[24];

  v2 = v0[23];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[16];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_26EF0DD30()
{
  v1 = v0[29];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[12];

  (*(v5 + 8))(v3, v4);
  sub_26EF3934C();
  v7 = v1;
  v8 = sub_26EF3881C();
  v9 = sub_26EF3B45C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[29];
  if (v10)
  {
    v13 = v0[8];
    v12 = v0[9];
    v14 = v0[7];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    (*(v13 + 104))(v12, *MEMORY[0x277D704D8], v14);
    sub_26EF38A4C();
    sub_26EF0EAF4(&unk_2806C9CD0, MEMORY[0x277D70518]);
    swift_allocError();
    sub_26EF389BC();
    (*(v13 + 8))(v12, v14);
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v17;
    *v16 = v17;
    _os_log_impl(&dword_26EE01000, v8, v9, "%@", v15, 0xCu);
    sub_26EE14578(v16, &qword_2806C7140, &unk_26EF3E420);
    MEMORY[0x2743842A0](v16, -1, -1);
    MEMORY[0x2743842A0](v15, -1, -1);
  }

  else
  {
  }

  (*(v0[11] + 8))(v0[12], v0[10]);
  v18 = v0[23];
  v19 = v0[19];
  v20 = v0[20];
  v21 = v0[16];
  v23 = v0[12];
  v22 = v0[13];
  v24 = v0[9];

  v25 = v0[1];

  return v25();
}

uint64_t sub_26EF0DFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for VoiceBankingSession();
  sub_26EF0EAF4(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  *a3 = sub_26EF3973C();
  *(a3 + 8) = v6 & 1;
  type metadata accessor for VoiceBankingNavigationModel();
  sub_26EF0EAF4(&qword_2806C6C20, type metadata accessor for VoiceBankingNavigationModel);
  *(a3 + 16) = sub_26EF39C1C();
  *(a3 + 24) = v7;
  type metadata accessor for VoiceBankingAudioServiceViewModel();
  sub_26EF0EAF4(&qword_2806C9BB0, type metadata accessor for VoiceBankingAudioServiceViewModel);
  *(a3 + 32) = sub_26EF39C1C();
  *(a3 + 40) = v8;
  type metadata accessor for VoiceRefreshViewModel(0);
  sub_26EF0EAF4(&qword_2806C7078, type metadata accessor for VoiceRefreshViewModel);
  *(a3 + 48) = sub_26EF39C1C();
  *(a3 + 56) = v9;
  v10 = type metadata accessor for RecordingSection();
  sub_26EE14D98(a1, a3 + *(v10 + 32), &qword_2806C7080, &unk_26EF3DBF0);
  return sub_26EE14D98(a2, a3 + *(v10 + 36), &qword_2806C7088, &unk_26EF3E330);
}

uint64_t sub_26EF0E1D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 32);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_26EF0E330(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7080, &unk_26EF3DBF0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7088, &unk_26EF3E330);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_26EF0E46C()
{
  sub_26EE2E05C(319, &qword_2806C66B0, type metadata accessor for VoiceBankingSession, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_26EE1F73C();
    if (v1 <= 0x3F)
    {
      sub_26EE1F7D0();
      if (v2 <= 0x3F)
      {
        sub_26EE2DFC8();
        if (v3 <= 0x3F)
        {
          sub_26EE2E05C(319, &qword_2806C70A8, MEMORY[0x277D70530], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_26EE2E05C(319, &qword_2806C70B0, MEMORY[0x277D705D8], MEMORY[0x277D83D88]);
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

unint64_t sub_26EF0E5E4()
{
  result = qword_2806C9B48;
  if (!qword_2806C9B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806C9B50, &qword_26EF43EA8);
    sub_26EF0B6F0(&qword_2806C9B20, &qword_2806C9B18, &qword_26EF43E30, sub_26EF0B6C0);
    sub_26EF0B76C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806C9B48);
  }

  return result;
}

uint64_t sub_26EF0E69C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingSection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EF0E704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26EF0E780()
{
  v1 = type metadata accessor for RecordingSection();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v19 = *(*(v1 - 8) + 64);
  v4 = sub_26EF38AAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v18 = *(v5 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = v0 + v3;
  sub_26EE05C9C(*(v0 + v3), *(v0 + v3 + 8));
  v9 = *(v0 + v3 + 16);

  v10 = *(v0 + v3 + 48);

  v11 = *(v1 + 32);
  if (!(*(v5 + 48))(v0 + v3 + v11, 1, v4))
  {
    (*(v5 + 8))(v8 + v11, v4);
  }

  v12 = *(v1 + 36);
  v13 = sub_26EF38DBC();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v8 + v12, 1, v13))
  {
    (*(v14 + 8))(v8 + v12, v13);
  }

  v15 = v2 | v6;
  v16 = (v3 + v19 + v6) & ~v6;
  (*(v5 + 8))(v0 + v16, v4);

  return MEMORY[0x2821FE8E8](v0, v16 + v18, v15 | 7);
}

uint64_t sub_26EF0E9C8()
{
  v2 = *(type metadata accessor for RecordingSection() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_26EF38AAC() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_26EE05D7C;

  return sub_26EF0CDA4(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_26EF0EAF4(unint64_t *a1, void (*a2)(uint64_t))
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