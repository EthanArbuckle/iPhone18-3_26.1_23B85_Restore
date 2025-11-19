id sub_26904846C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3F00, &qword_26905B578);
  v2 = *v0;
  v3 = sub_269057CE4();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;

        result = v18;
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

void *sub_2690485E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3790, &qword_26905B590);
  v2 = *v0;
  v3 = sub_269057CE4();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void sub_26904875C(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = *a4;
  v9 = sub_269016B10(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_269047D30(v14, a3 & 1);
      v18 = *a4;
      v9 = sub_269016B10(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_18:
        type metadata accessor for SetupPage();
        sub_269057E04();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_26904846C();
      v9 = v17;
    }
  }

  v20 = *a4;
  if (v15)
  {
    v21 = v20[7] + 16 * v9;
    v22 = *v21;
    *v21 = a1;
    *(v21 + 8) = &off_2879A72A0;

    return;
  }

  v20[(v9 >> 6) + 8] |= 1 << v9;
  *(v20[6] + 8 * v9) = a2;
  v23 = (v20[7] + 16 * v9);
  *v23 = a1;
  v23[1] = &off_2879A72A0;
  v24 = v20[2];
  v13 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;
}

uint64_t sub_2690488D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_269048910()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 160))(ObjectType, v4) == 0;
  return v2(v6);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_269048994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269057C54();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3F08, &unk_26905B580);
  v4 = sub_269057964();
  MEMORY[0x26D62FBC0](v4);

  MEMORY[0x26D62FBC0](0xD00000000000001ALL, 0x800000026905F3C0);
  ObjectType = swift_getObjectType();
  swift_getWitnessTable();
  sub_269057DC4();
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v6 = sub_269057774();
  __swift_project_value_buffer(v6, qword_2802F3FF8);
  v7 = sub_269057AA4();
  sub_269053434(v7, 0xD000000000000029, 0x800000026905F370, 0xD000000000000010, 0x800000026905F3A0, 0, 0xE000000000000000);

  v8 = [objc_allocWithZone(type metadata accessor for LocalDataSourceWriter()) init];
  if ((*(a3 + 104))(ObjectType, a3))
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  *&v8[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriEnabled] = v9;
  if ((*(a3 + 144))(ObjectType, a3))
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  *&v8[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_voiceTriggerEnabled] = v10;
  if ((*(a3 + 152))(ObjectType, a3))
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  *&v8[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriInCallEnabled] = v11;
  *&v8[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_setupDismissed] = 2;
  v12 = *(a3 + 248);
  v13 = v8;
  v12();
}

uint64_t sub_269048C58()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_269048CAC()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_269048CF8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_269048D30()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_269048D88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269048DD0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_269048E34(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000079;
  v3 = 0x6464754220534F69;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD00000000000001ALL;
    }

    else
    {
      v5 = 0x7453206B63697551;
    }

    if (v4 == 2)
    {
      v6 = 0x800000026905BBF0;
    }

    else
    {
      v6 = 0xEB00000000747261;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x754220534F63616DLL;
    }

    else
    {
      v5 = 0x6464754220534F69;
    }

    if (v4)
    {
      v6 = 0xEB00000000796464;
    }

    else
    {
      v6 = 0xE900000000000079;
    }
  }

  v7 = 0xD00000000000001ALL;
  v8 = 0x800000026905BBF0;
  if (a2 != 2)
  {
    v7 = 0x7453206B63697551;
    v8 = 0xEB00000000747261;
  }

  if (a2)
  {
    v3 = 0x754220534F63616DLL;
    v2 = 0xEB00000000796464;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_269057DE4();
  }

  return v11 & 1;
}

void sub_269048F98(uint64_t a1, uint64_t a2)
{
  v4 = (*(v2 + OBJC_IVAR____TtC9SiriSetup8Defaults_localDataSource) + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriLanguage);
  v5 = v4[1];
  *v4 = a1;
  v4[1] = a2;

  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v6 = [objc_opt_self() sharedPreferences];
  if (a2)
  {
    v7 = sub_269057944();
  }

  else
  {
    v7 = 0;
  }

  [v6 setLanguageCode_];
}

uint64_t sub_2690490A4()
{
  v1 = OBJC_IVAR____TtC9SiriSetup8Defaults_enrollmentMode;
  if (*(v0 + OBJC_IVAR____TtC9SiriSetup8Defaults_enrollmentMode) > 1u)
  {
    *(v0 + OBJC_IVAR____TtC9SiriSetup8Defaults_enrollmentMode);
  }

  else if (!*(v0 + OBJC_IVAR____TtC9SiriSetup8Defaults_enrollmentMode))
  {
    goto LABEL_8;
  }

  v2 = sub_269057DE4();

  v3 = 0;
  if (v2)
  {
    goto LABEL_9;
  }

  if (*(v0 + v1) > 1u)
  {
    *(v0 + v1);
LABEL_12:
    v5 = sub_269057DE4();

    v3 = v5 ^ 1;
    v4 = sub_269049250();
    if (v4)
    {
      return v4 & 1;
    }

    goto LABEL_13;
  }

  if (!*(v0 + v1))
  {
    goto LABEL_12;
  }

LABEL_8:

  v3 = 0;
LABEL_9:
  v4 = sub_269049250();
  if (v4)
  {
    return v4 & 1;
  }

LABEL_13:
  if ((v3 & 1) == 0)
  {
    v4 = *(v0 + OBJC_IVAR____TtC9SiriSetup8Defaults_hasVoiceProfileInCloud);
  }

  return v4 & 1;
}

id sub_269049250()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup8Defaults_voiceProfileManager);
  if (*(v0 + OBJC_IVAR____TtC9SiriSetup8Defaults_siriSharedUserId + 8))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9SiriSetup8Defaults_siriSharedUserId);
    v3 = v1;

    v4 = sub_269057944();
  }

  else
  {
    v5 = v1;
    v4 = 0;
  }

  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v6 = [objc_opt_self() sharedPreferences];
  v7 = [v6 languageCode];

  if (v7)
  {
    sub_269057954();
  }

  v8 = sub_269057944();

  v9 = [v1 isSATEnrolledForSiriProfileId:v4 languageCode:v8];

  return v9;
}

uint64_t sub_2690493A8()
{
  v1 = sub_269057874();
  v17 = *(v1 - 8);
  v2 = *(v17 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2690578A4();
  v5 = *(v16 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[OBJC_IVAR____TtC9SiriSetup8Defaults_settingsQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_26904FA80;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26900BEF0;
  aBlock[3] = &block_descriptor_110;
  v11 = _Block_copy(aBlock);
  v12 = v9;
  v13 = v0;
  sub_269057884();
  v18 = MEMORY[0x277D84F90];
  sub_269048D88(&qword_2802F3420, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F3E10, &unk_269059E90);
  sub_26904FA88(&qword_2802F3430, &unk_2802F3E10, &unk_269059E90);
  sub_269057C14();
  MEMORY[0x26D62FD80](0, v8, v4, v11);
  _Block_release(v11);

  (*(v17 + 8))(v4, v1);
  (*(v5 + 8))(v8, v16);
}

void sub_269049684(uint64_t a1)
{
  v2 = qword_2802F3220;
  v3 = *(a1 + OBJC_IVAR____TtC9SiriSetup8Defaults_voiceProfileManager);
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = [objc_opt_self() sharedPreferences];
  v5 = [v4 languageCode];

  if (v5)
  {
    sub_269057954();
  }

  v6 = sub_269057944();

  v7 = [v3 hasVoiceProfileIniCloudForLanguageCode_];

  *(a1 + OBJC_IVAR____TtC9SiriSetup8Defaults_hasVoiceProfileInCloud) = v7;
}

id sub_2690497A0(char a1)
{
  v3 = 0xE000000000000000;
  sub_269057C54();

  if (a1)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (a1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x26D62FBC0](v4, v5);

  MEMORY[0x26D62FBC0](0x20726F6620, 0xE500000000000000);
  v6 = *(v1 + OBJC_IVAR____TtC9SiriSetup8Defaults_iCloudAltDSID + 8);
  if (v6)
  {
    v7 = *(v1 + OBJC_IVAR____TtC9SiriSetup8Defaults_iCloudAltDSID);
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v3 = *(v1 + OBJC_IVAR____TtC9SiriSetup8Defaults_iCloudAltDSID + 8);
  }

  MEMORY[0x26D62FBC0](v7, v3);

  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v8 = sub_269057774();
  __swift_project_value_buffer(v8, qword_2802F3FF8);
  v9 = sub_269057AA4();
  sub_269053434(v9, 0xD000000000000017, 0x800000026905BB60, 0xD000000000000023, 0x800000026905F880, 0, 0xE000000000000000);

  *(*(v1 + OBJC_IVAR____TtC9SiriSetup8Defaults_localDataSource) + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_recognizeMyVoiceEnabled) = a1 & 1;
  v10 = *(v1 + OBJC_IVAR____TtC9SiriSetup8Defaults_settings);

  return [v10 setRecognizeMyVoiceEnabled_];
}

void sub_269049988(uint64_t a1, char a2)
{
  v2 = 0xD000000000000013;
  if (a2)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (a2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v5 = 0x800000026905BB80;
  if (a1)
  {
    sub_269057C54();

    MEMORY[0x26D62FBC0](v3, v4);

    MEMORY[0x26D62FBC0](32, 0xE100000000000000);
    swift_getErrorValue();
    v6 = sub_269057E44();
    MEMORY[0x26D62FBC0](v6);

    v8 = 0xD00000000000001FLL;
    v7 = 0x800000026905F8F0;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v9 = sub_269057774();
    __swift_project_value_buffer(v9, qword_2802F3FF8);
    v10 = sub_269057A94();
  }

  else
  {
    sub_269057C54();

    MEMORY[0x26D62FBC0](v3, v4);

    v8 = 0xD000000000000015;
    v7 = 0x800000026905F8D0;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v11 = sub_269057774();
    __swift_project_value_buffer(v11, qword_2802F3FF8);
    v10 = sub_269057AA4();
  }

  v12 = v10;
  v19 = 0xD000000000000013;
  v20 = 0x800000026905BB80;
  v13 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v13 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v18[0] = 32;
    v18[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v8, v7);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v2 = v19;
    v5 = v20;
  }

  v14 = sub_269057764();
  if (os_log_type_enabled(v14, v12))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18[0] = v16;
    *v15 = 136315138;
    v17 = sub_269010108(v2, v5, v18);

    *(v15 + 4) = v17;
    _os_log_impl(&dword_269002000, v14, v12, "%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x26D6309D0](v16, -1, -1);
    MEMORY[0x26D6309D0](v15, -1, -1);
  }

  else
  {
  }
}

void sub_269049CAC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_269049D18(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t (*a4)(unint64_t, unint64_t))
{
  v5 = 0xD000000000000022;
  v6 = 0x800000026905F990;
  if (a1)
  {
    sub_269057C54();

    swift_getErrorValue();
    v7 = sub_269057E44();
    MEMORY[0x26D62FBC0](v7);

    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v8 = sub_269057774();
    __swift_project_value_buffer(v8, qword_2802F3FF8);
    v9 = sub_269057A94();
    v26 = 0xD000000000000022;
    v27 = 0x800000026905F990;
    v10 = (0x800000026905FA90 >> 56) & 0xF;
    if ((0x800000026905FA90 & 0x2000000000000000) == 0)
    {
      v10 = 28;
    }

    if (v10)
    {
      v25[0] = 32;
      v25[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD00000000000001CLL, 0x800000026905FA90);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v5 = v26;
      v6 = v27;
    }

    v11 = sub_269057764();
    if (os_log_type_enabled(v11, v9))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v25[0] = v13;
      *v12 = 136315138;
      v14 = sub_269010108(v5, v6, v25);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_269002000, v11, v9, "%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x26D6309D0](v13, -1, -1);
      MEMORY[0x26D6309D0](v12, -1, -1);
    }

    else
    {
    }

    v22 = 0;
    v23 = 0;
  }

  else
  {
    v26 = a2;
    v27 = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3548, &unk_269059F70);
    v17 = sub_269057964();
    v19 = v18;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v20 = sub_269057774();
    __swift_project_value_buffer(v20, qword_2802F3FF8);
    v21 = sub_269057AA4();
    sub_269053434(v21, 0xD000000000000022, 0x800000026905F990, 0xD000000000000017, 0x800000026905FA70, v17, v19);

    v22 = a2;
    v23 = a3;
  }

  return a4(v22, v23);
}

uint64_t sub_26904A03C(char a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = 0xE000000000000000;
  sub_269057C54();

  if (a1)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (a1)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x26D62FBC0](v7, v8);

  MEMORY[0x26D62FBC0](0xD000000000000014, 0x800000026905FA20);
  v9 = *(a2 + OBJC_IVAR____TtC9SiriSetup8Defaults_iCloudAltDSID + 8);
  if (v9)
  {
    v10 = *(a2 + OBJC_IVAR____TtC9SiriSetup8Defaults_iCloudAltDSID);
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v6 = v9;
  }

  MEMORY[0x26D62FBC0](v10, v6);

  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v11 = sub_269057774();
  __swift_project_value_buffer(v11, qword_2802F3FF8);
  v12 = sub_269057AA4();
  sub_269053434(v12, 0xD000000000000028, 0x800000026905FA40, 0xD00000000000001BLL, 0x800000026905FA00, 0, 0xE000000000000000);

  return a3(a1 & 1);
}

void sub_26904A204(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC9SiriSetup8Defaults_internalSiriDataSharingStatus) = a1;
  if (a1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC9SiriSetup8Defaults_settingsQueue);
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_26904FA00;
    *(v4 + 24) = v3;
    v20 = sub_26904FA18;
    v21 = v4;
    aBlock = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_26904AAC0;
    v19 = &block_descriptor_98;
    v5 = _Block_copy(&aBlock);
    v6 = v2;

    dispatch_sync(v6, v5);

    _Block_release(v5);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if ((v5 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v7 = 0x800000026905BBC0;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v8 = 0xD000000000000015;
  v9 = sub_269057774();
  __swift_project_value_buffer(v9, qword_2802F3FF8);
  v10 = sub_269057A94();
  aBlock = 0xD000000000000015;
  v17 = 0x800000026905BBC0;
  if ((" for language code " & 0x2F00000000000000) != 0x2000000000000000)
  {
    v15[0] = 32;
    v15[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](0xD00000000000003FLL, 0x800000026905F7C0);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v8 = aBlock;
    v7 = v17;
  }

  v11 = sub_269057764();
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15[0] = v13;
    *v12 = 136315138;
    v14 = sub_269010108(v8, v7, v15);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_269002000, v11, v10, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x26D6309D0](v13, -1, -1);
    MEMORY[0x26D6309D0](v12, -1, -1);
  }

  else
  {
  }
}

void sub_26904A500()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC9SiriSetup8Defaults_internalSiriDataSharingStatus);
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC9SiriSetup8Defaults_settings);
    v4 = sub_269057944();
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    aBlock[4] = sub_26904FA78;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_269049CAC;
    aBlock[3] = &block_descriptor_104;
    v6 = _Block_copy(aBlock);
    v7 = v2;

    [v3 setSiriDataSharingOptInStatus:v1 propagateToHomeAccessories:0 source:1 reason:v4 completion:v6];
    _Block_release(v6);
  }
}

void sub_26904A66C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    sub_269057C54();
    MEMORY[0x26D62FBC0](0x1000000000000039, 0x800000026905F840);
    v17 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3FA0, &qword_26905B5C0);
    sub_269057CB4();
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v4 = sub_269057774();
    __swift_project_value_buffer(v4, qword_2802F3FF8);
    v5 = sub_269057A94();
    v18 = 0xD000000000000015;
    v19 = 0x800000026905BBC0;
    v6 = sub_269057764();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315138;
      v9 = sub_269010108(0xD000000000000015, 0x800000026905BBC0, &v17);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_269002000, v6, v5, "%s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x26D6309D0](v8, -1, -1);
      MEMORY[0x26D6309D0](v7, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_269057C54();
    MEMORY[0x26D62FBC0](0x1000000000000031, 0x800000026905F800);
    v17 = *(a2 + OBJC_IVAR____TtC9SiriSetup8Defaults_internalSiriDataSharingStatus);
    type metadata accessor for AFSiriDataSharingOptInStatus(0);
    sub_269057CB4();
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v11 = sub_269057774();
    __swift_project_value_buffer(v11, qword_2802F3FF8);
    v12 = sub_269057AA4();
    v18 = 0xD000000000000015;
    v19 = 0x800000026905BBC0;
    v13 = sub_269057764();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      v16 = sub_269010108(0xD000000000000015, 0x800000026905BBC0, &v17);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_269002000, v13, v12, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x26D6309D0](v15, -1, -1);
      MEMORY[0x26D6309D0](v14, -1, -1);
    }

    else
    {
    }
  }
}

void sub_26904AAE8(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = Strong;
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC9SiriSetup8Defaults_settings);

    aBlock[4] = sub_26904FB38;
    aBlock[5] = a1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26904B07C;
    aBlock[3] = &block_descriptor_129;
    v7 = _Block_copy(aBlock);

    [v6 getSiriDataSharingOptInStatusWithCompletion_];
    _Block_release(v7);
  }

  *a2 = v5 == 0;
}

void sub_26904AC0C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a1;
    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD000000000000039, 0x800000026905FB30);
    v19[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3FA0, &qword_26905B5C0);
    sub_269057CB4();
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v4 = sub_269057774();
    __swift_project_value_buffer(v4, qword_2802F3FF8);
    v5 = sub_269057A94();
    v19[2] = 0xD00000000000001CLL;
    v19[3] = 0x800000026905FAD0;
    v6 = sub_269057764();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v19[0] = v8;
      *v7 = 136315138;
      v9 = sub_269010108(0xD00000000000001CLL, 0x800000026905FAD0, v19);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_269002000, v6, v5, "%s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x26D6309D0](v8, -1, -1);
      MEMORY[0x26D6309D0](v7, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *&Strong[OBJC_IVAR____TtC9SiriSetup8Defaults_internalSiriDataSharingStatus] = a2;
    }

    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD000000000000031, 0x800000026905FAF0);
    v18 = a2;
    type metadata accessor for AFSiriDataSharingOptInStatus(0);
    sub_269057CB4();
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v12 = sub_269057774();
    __swift_project_value_buffer(v12, qword_2802F3FF8);
    v13 = sub_269057AA4();
    v19[0] = 0xD00000000000001CLL;
    v19[1] = 0x800000026905FAD0;
    v14 = sub_269057764();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      v17 = sub_269010108(0xD00000000000001CLL, 0x800000026905FAD0, &v18);

      *(v15 + 4) = v17;
      _os_log_impl(&dword_269002000, v14, v13, "%s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x26D6309D0](v16, -1, -1);
      MEMORY[0x26D6309D0](v15, -1, -1);
    }

    else
    {
    }
  }
}

void sub_26904B07C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v6(a2, a3);
}

void sub_26904B0F4(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (*a1 == 2)
  {

LABEL_4:
    v7 = 2;
    goto LABEL_6;
  }

  v6 = sub_269057DE4();

  if (v6)
  {
    goto LABEL_4;
  }

  v7 = 1;
LABEL_6:
  v22 = v7;
  v8 = sub_26904ED24();
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD000000000000035, 0x800000026905F700);
  v10 = MEMORY[0x26D62FC10](v9, MEMORY[0x277D837D0]);
  MEMORY[0x26D62FBC0](v10);

  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v11 = sub_269057774();
  __swift_project_value_buffer(v11, qword_2802F3FF8);
  v12 = sub_269057AA4();
  aBlock = 0xD000000000000028;
  v25 = 0x800000026905F6D0;
  v13 = sub_269057764();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = v15;
    *v14 = 136315138;
    v16 = sub_269010108(0xD000000000000028, 0x800000026905F6D0, &v30);

    *(v14 + 4) = v16;
    _os_log_impl(&dword_269002000, v13, v12, "%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x26D6309D0](v15, -1, -1);
    MEMORY[0x26D6309D0](v14, -1, -1);
  }

  else
  {
  }

  v17 = *&v4[OBJC_IVAR____TtC9SiriSetup8Defaults_enablementFlowConfigurationProvider];
  v18 = sub_2690579C4();

  v19 = swift_allocObject();
  v19[2] = v4;
  v19[3] = a2;
  v19[4] = a3;
  v28 = sub_26904F950;
  v29 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_26904BBEC;
  v27 = &block_descriptor_9;
  v20 = _Block_copy(&aBlock);
  v21 = v4;

  [v17 configurationForEnablementFlow:v22 recognitionLanguageCodes:v18 completion:v20];
  _Block_release(v20);
}

uint64_t sub_26904B504(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_269057874();
  v22 = *(v7 - 8);
  v8 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2690578A4();
  v11 = *(v21 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v21);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26900A408(0, &qword_2802F3E00, 0x277D85C78);
  v15 = sub_269057B34();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a1;
  v17[4] = a3;
  v17[5] = a4;
  aBlock[4] = sub_26904F9F4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26900BEF0;
  aBlock[3] = &block_descriptor_91;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  sub_269057884();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_269048D88(&qword_2802F3420, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F3E10, &unk_269059E90);
  sub_26904FA88(&qword_2802F3430, &unk_2802F3E10, &unk_269059E90);
  sub_269057C14();
  MEMORY[0x26D62FD80](0, v14, v10, v18);
  _Block_release(v18);

  (*(v22 + 8))(v10, v7);
  return (*(v11 + 8))(v14, v21);
}

void sub_26904B834(uint64_t a1, void *a2, void (*a3)(id))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v27 = a3;
    if (qword_2802F3220 != -1)
    {
      swift_once();
    }

    v7 = [objc_opt_self() sharedPreferences];
    v8 = [v7 languageCode];

    if (v8)
    {
      v9 = sub_269057954();
      v11 = v10;
    }

    else
    {
      v9 = sub_26904EF14();
      v11 = v12;
    }

    v13 = *&v6[OBJC_IVAR____TtC9SiriSetup8Defaults_enablementConfiguration];
    *&v6[OBJC_IVAR____TtC9SiriSetup8Defaults_enablementConfiguration] = a2;
    v14 = a2;

    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD00000000000002FLL, 0x800000026905F770);
    v15 = [v14 description];
    v16 = sub_269057954();
    v18 = v17;

    MEMORY[0x26D62FBC0](v16, v18);

    MEMORY[0x26D62FBC0](0xD000000000000013, 0x800000026905F7A0);
    MEMORY[0x26D62FBC0](v9, v11);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v19 = sub_269057774();
    __swift_project_value_buffer(v19, qword_2802F3FF8);
    v20 = sub_269057AA4();
    v28[2] = 0xD000000000000028;
    v28[3] = 0x800000026905F6D0;
    v21 = sub_269057764();
    if (os_log_type_enabled(v21, v20))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28[0] = v23;
      *v22 = 136315138;
      v24 = sub_269010108(0xD000000000000028, 0x800000026905F6D0, v28);

      *(v22 + 4) = v24;
      _os_log_impl(&dword_269002000, v21, v20, "%s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x26D6309D0](v23, -1, -1);
      MEMORY[0x26D6309D0](v22, -1, -1);
    }

    else
    {
    }

    v25 = sub_269057944();

    v26 = [v14 requiresVoiceSelectionForRecognitionLanguage_];

    v27(v26);
  }
}

void sub_26904BBEC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_26904BC54()
{
  v1 = sub_26904ED24();
  if (v1)
  {
    v2 = v1;
    v3 = OBJC_IVAR____TtC9SiriSetup8Defaults_voiceTriggerPrefs;
    v4 = (v1 + 40);
    v5 = -*(v1 + 16);
    v6 = -1;
    while (1)
    {
      if (v5 + v6 == -1)
      {
LABEL_6:

        return;
      }

      if (++v6 >= *(v2 + 16))
      {
        break;
      }

      v7 = v4 + 2;
      v9 = *(v4 - 1);
      v8 = *v4;
      v10 = *(v0 + v3);

      v11 = v10;
      v12 = sub_269057944();

      LOBYTE(v8) = [v11 isCompactVoiceTriggerAvailableForLanguageCode_];

      v4 = v7;
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

char *sub_26904BD48(char *a1, unint64_t a2, unint64_t a3)
{
  v4 = v3;
  v77 = a3;
  v76 = a2;
  v6 = sub_269057B24();
  v83 = *(v6 - 8);
  v84 = v6;
  v7 = *(v83 + 64);
  MEMORY[0x28223BE20](v6);
  v82 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_269057B04();
  v9 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v81 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2690578A4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v79 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = &v4[OBJC_IVAR____TtC9SiriSetup8Defaults_iCloudAltDSID];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v4[OBJC_IVAR____TtC9SiriSetup8Defaults_siriSharedUserId];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v4[OBJC_IVAR____TtC9SiriSetup8Defaults_personaId];
  *v17 = 0;
  v17[1] = 0;
  v4[OBJC_IVAR____TtC9SiriSetup8Defaults_hasVoiceProfileInCloud] = 0;
  v18 = OBJC_IVAR____TtC9SiriSetup8Defaults_localDataSource;
  v19 = type metadata accessor for LocalDataSource();
  v20 = objc_allocWithZone(v19);
  v21 = &v20[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_personaId];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v20[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_iCloudAltDSID];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v20[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriSharedUserId];
  *v23 = 0;
  v23[1] = 0;
  v24 = OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriLanguageOptions;
  *&v20[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriLanguageOptions] = 0;
  v25 = &v20[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_languageCode];
  *v25 = 0;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriVoice;
  *&v20[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriVoice] = 0;
  v27 = &v20[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriVolume];
  *v27 = 0;
  v27[4] = 1;
  v28 = &v20[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriLanguage];
  *v28 = 0;
  v28[1] = 0;
  v29 = OBJC_IVAR____TtC9SiriSetup15LocalDataSource_overrideViewStyle;
  v20[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_overrideViewStyle] = 3;
  *v25 = 0;
  v25[1] = 0;
  v30 = &v20[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_bestSupportedLanguageCode];
  *v30 = 0x53552D6E65;
  v30[1] = 0xE500000000000000;
  v20[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_enrollmentMode] = 0;
  *&v20[v24] = 0;
  v20[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_canSkipVoiceTraining] = 0;
  v20[v29] = 3;
  v20[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_isSATEnrolled] = 0;
  v20[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_isFirstTimeSetup] = 0;
  v20[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_hasVoiceProfileInCloud] = 0;
  v20[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriEnabled] = 0;
  v20[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_setupDismissed] = 0;
  v20[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_recognizeMyVoiceEnabled] = 0;
  v20[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_voiceTriggerEnabled] = 0;
  v20[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriInCallEnabled] = 0;
  *&v20[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriDataSharingStatus] = 0;
  v31 = *&v20[v26];
  *&v20[v26] = 0;

  *v27 = 0;
  v27[4] = 1;
  v20[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_requiresVoiceSelection] = 0;
  v20[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_requiresLanguageSelection] = 0;
  v20[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_showMultitriggerForSetup] = 1;
  v94.receiver = v20;
  v94.super_class = v19;
  *&v4[v18] = objc_msgSendSuper2(&v94, sel_init);
  v4[OBJC_IVAR____TtC9SiriSetup8Defaults_setupDismissed] = 0;
  *&v4[OBJC_IVAR____TtC9SiriSetup8Defaults_enablementConfiguration] = 0;
  *&v4[OBJC_IVAR____TtC9SiriSetup8Defaults_internalSiriDataSharingStatus] = 0;
  v4[OBJC_IVAR____TtC9SiriSetup8Defaults_shouldShowIntro] = 1;
  v78 = "Error setting voice trigger to ";
  aBlock = 0;
  v86 = 0xE000000000000000;
  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000001ALL, 0x800000026905F930);
  v32 = v14;
  LOBYTE(v91) = v14;
  sub_269057CB4();
  MEMORY[0x26D62FBC0](0xD000000000000013, 0x800000026905F950);
  v33 = aBlock;
  v34 = v86;
  v35 = v76;
  aBlock = v76;
  v86 = v77;
  v36 = v77;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3548, &unk_269059F70);
  v37 = sub_269057964();
  v39 = v38;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v40 = sub_269057774();
  v41 = __swift_project_value_buffer(v40, qword_2802F3FF8);
  v42 = sub_269057AA4();
  v43 = v78 | 0x8000000000000000;
  v78 = v41;
  sub_269053434(v42, 0xD000000000000019, v43, v33, v34, v37, v39);

  v4[OBJC_IVAR____TtC9SiriSetup8Defaults_enrollmentMode] = v32;
  v44 = v15[1];
  *v15 = v35;
  v15[1] = v36;

  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v45 = [objc_allocWithZone(MEMORY[0x277CEF3A8]) init];
  *&v4[OBJC_IVAR____TtC9SiriSetup8Defaults_settings] = v45;
  sub_26900A408(0, &qword_2802F3E00, 0x277D85C78);
  sub_269057884();
  aBlock = MEMORY[0x277D84F90];
  sub_269048D88(&qword_2802F39B0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F39B8, &qword_26905A8E8);
  sub_26904FA88(&qword_2802F39C0, &qword_2802F39B8, &qword_26905A8E8);
  sub_269057C14();
  (*(v83 + 104))(v82, *MEMORY[0x277D85260], v84);
  v46 = 0xD000000000000022;
  *&v4[OBJC_IVAR____TtC9SiriSetup8Defaults_settingsQueue] = sub_269057B74();
  v47 = &v4[OBJC_IVAR____TtC9SiriSetup8Defaults_siriVolume];
  *v47 = 0;
  v47[4] = 1;
  v48 = [objc_allocWithZone(SRSVoiceProfileManager) init];
  *&v4[OBJC_IVAR____TtC9SiriSetup8Defaults_voiceProfileManager] = v48;
  v49 = [objc_allocWithZone(SRSVTPreferences) init];
  *&v4[OBJC_IVAR____TtC9SiriSetup8Defaults_voiceTriggerPrefs] = v49;
  v50 = [objc_allocWithZone(MEMORY[0x277CEF298]) init];
  *&v4[OBJC_IVAR____TtC9SiriSetup8Defaults_enablementFlowConfigurationProvider] = v50;
  v51 = type metadata accessor for Defaults();
  v93.receiver = v4;
  v93.super_class = v51;
  v52 = objc_msgSendSuper2(&v93, sel_init);
  v53 = *&v52[OBJC_IVAR____TtC9SiriSetup8Defaults_settingsQueue];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = v52;
  v55 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3FB0, &unk_26905B5D0);
  sub_269057B44();

  sub_2690493A8();
  v56 = swift_allocObject();
  *(v56 + 16) = v54;
  v57 = 0x800000026905F990;
  v58 = v54;
  v59 = sub_269057A84();
  aBlock = 0xD000000000000022;
  v86 = 0x800000026905F990;
  if (("serId(completion:)" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v91 = 32;
    v92 = 0xE100000000000000;
    MEMORY[0x26D62FBC0](0xD000000000000029, 0x800000026905F9C0);
    MEMORY[0x26D62FBC0](v91, v92);

    v46 = aBlock;
    v57 = v86;
  }

  v60 = sub_269057764();
  if (os_log_type_enabled(v60, v59))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v91 = v62;
    *v61 = 136315138;
    v63 = sub_269010108(v46, v57, &v91);

    *(v61 + 4) = v63;
    _os_log_impl(&dword_269002000, v60, v59, "%s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    MEMORY[0x26D6309D0](v62, -1, -1);
    MEMORY[0x26D6309D0](v61, -1, -1);
  }

  else
  {
  }

  v64 = *&v58[OBJC_IVAR____TtC9SiriSetup8Defaults_iCloudAltDSID + 8];
  if (v64)
  {
    v65 = *&v58[OBJC_IVAR____TtC9SiriSetup8Defaults_iCloudAltDSID];
  }

  else
  {
    v65 = 0;
  }

  if (v64)
  {
    v66 = *&v58[OBJC_IVAR____TtC9SiriSetup8Defaults_iCloudAltDSID + 8];
  }

  else
  {
    v66 = 0xE000000000000000;
  }

  sub_26900A408(0, &qword_2802F3E28, 0x277CEF318);
  v67 = swift_allocObject();
  *(v67 + 16) = sub_26904FC24;
  *(v67 + 24) = v56;

  sub_269014FD0(v65, v66, sub_26904FB24, v67);

  v68 = swift_allocObject();
  *(v68 + 16) = v58;
  v69 = *&v58[OBJC_IVAR____TtC9SiriSetup8Defaults_settings];
  v70 = swift_allocObject();
  v70[2] = v58;
  v70[3] = sub_26904FC44;
  v70[4] = v68;
  v89 = sub_26904FB2C;
  v90 = v70;
  aBlock = MEMORY[0x277D85DD0];
  v86 = 1107296256;
  v87 = sub_2690277C8;
  v88 = &block_descriptor_126;
  v71 = _Block_copy(&aBlock);
  v72 = v58;
  v73 = v69;

  [v73 fetchMultiUserVoiceIdentificationSetting_];
  _Block_release(v71);

  return v72;
}

char *sub_26904C870(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v113 = a2;
  v114 = a3;
  v8 = sub_269057B24();
  v119 = *(v8 - 8);
  v120 = v8;
  v9 = *(v119 + 64);
  MEMORY[0x28223BE20](v8);
  v118 = &v111[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v116 = sub_269057B04();
  v11 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v117 = &v111[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_2690578A4();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v115 = &v111[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v112 = *a1;
  v16 = &v5[OBJC_IVAR____TtC9SiriSetup8Defaults_iCloudAltDSID];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v5[OBJC_IVAR____TtC9SiriSetup8Defaults_siriSharedUserId];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v5[OBJC_IVAR____TtC9SiriSetup8Defaults_personaId];
  *v18 = 0;
  v18[1] = 0;
  v5[OBJC_IVAR____TtC9SiriSetup8Defaults_hasVoiceProfileInCloud] = 0;
  v19 = OBJC_IVAR____TtC9SiriSetup8Defaults_localDataSource;
  v20 = type metadata accessor for LocalDataSource();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_personaId];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v21[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_iCloudAltDSID];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v21[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriSharedUserId];
  *v24 = 0;
  v24[1] = 0;
  v25 = OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriLanguageOptions;
  *&v21[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriLanguageOptions] = 0;
  v26 = &v21[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_languageCode];
  *v26 = 0;
  v26[1] = 0;
  v27 = OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriVoice;
  *&v21[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriVoice] = 0;
  v28 = &v21[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriVolume];
  *v28 = 0;
  v28[4] = 1;
  v29 = &v21[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriLanguage];
  *v29 = 0;
  v29[1] = 0;
  v30 = OBJC_IVAR____TtC9SiriSetup15LocalDataSource_overrideViewStyle;
  v21[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_overrideViewStyle] = 3;
  *v26 = 0;
  v26[1] = 0;
  v31 = &v21[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_bestSupportedLanguageCode];
  *v31 = 0x53552D6E65;
  v31[1] = 0xE500000000000000;
  v21[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_enrollmentMode] = 0;
  *&v21[v25] = 0;
  v21[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_canSkipVoiceTraining] = 0;
  v21[v30] = 3;
  v21[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_isSATEnrolled] = 0;
  v21[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_isFirstTimeSetup] = 0;
  v21[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_hasVoiceProfileInCloud] = 0;
  v21[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriEnabled] = 0;
  v21[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_setupDismissed] = 0;
  v21[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_recognizeMyVoiceEnabled] = 0;
  v21[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_voiceTriggerEnabled] = 0;
  v21[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriInCallEnabled] = 0;
  *&v21[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriDataSharingStatus] = 0;
  v32 = *&v21[v27];
  *&v21[v27] = 0;

  *v28 = 0;
  v28[4] = 1;
  v21[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_requiresVoiceSelection] = 0;
  v21[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_requiresLanguageSelection] = 0;
  v21[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_showMultitriggerForSetup] = 1;
  v135.receiver = v21;
  v135.super_class = v20;
  *&v5[v19] = objc_msgSendSuper2(&v135, sel_init);
  v5[OBJC_IVAR____TtC9SiriSetup8Defaults_setupDismissed] = 0;
  *&v5[OBJC_IVAR____TtC9SiriSetup8Defaults_enablementConfiguration] = 0;
  *&v5[OBJC_IVAR____TtC9SiriSetup8Defaults_internalSiriDataSharingStatus] = 0;
  v5[OBJC_IVAR____TtC9SiriSetup8Defaults_shouldShowIntro] = 1;
  v33 = 0x800000026905FB70;
  aBlock = 0;
  v127 = 0xE000000000000000;
  sub_269057C54();

  aBlock = 0xD000000000000022;
  v127 = 0x800000026905FBA0;
  v124 = a4;
  v121 = a4;
  v123 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3540, &qword_269059F68);
  v34 = sub_269057964();
  MEMORY[0x26D62FBC0](v34);

  v36 = aBlock;
  v35 = v127;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v37 = sub_269057774();
  v122 = __swift_project_value_buffer(v37, qword_2802F3FF8);
  v38 = sub_269057AA4();
  v39 = 0xD000000000000020;
  aBlock = 0xD000000000000020;
  v127 = 0x800000026905FB70;
  v40 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v40 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (v40)
  {
    v124 = 32;
    v125 = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v36, v35);
    MEMORY[0x26D62FBC0](v124, v125);

    v39 = aBlock;
    v33 = v127;
  }

  v41 = sub_269057764();
  if (os_log_type_enabled(v41, v38))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v124 = v43;
    *v42 = 136315138;
    v44 = sub_269010108(v39, v33, &v124);

    *(v42 + 4) = v44;
    _os_log_impl(&dword_269002000, v41, v38, "%s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x26D6309D0](v43, -1, -1);
    MEMORY[0x26D6309D0](v42, -1, -1);
  }

  else
  {
  }

  v45 = v121;
  v5[OBJC_IVAR____TtC9SiriSetup8Defaults_enrollmentMode] = v112;
  v46 = v16[1];
  v47 = v114;
  *v16 = v113;
  v16[1] = v47;

  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v48 = [objc_allocWithZone(MEMORY[0x277CEF3A8]) init];
  *&v5[OBJC_IVAR____TtC9SiriSetup8Defaults_settings] = v48;
  sub_26900A408(0, &qword_2802F3E00, 0x277D85C78);
  sub_269057884();
  aBlock = MEMORY[0x277D84F90];
  sub_269048D88(&qword_2802F39B0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F39B8, &qword_26905A8E8);
  sub_26904FA88(&qword_2802F39C0, &qword_2802F39B8, &qword_26905A8E8);
  sub_269057C14();
  (*(v119 + 104))(v118, *MEMORY[0x277D85260], v120);
  *&v5[OBJC_IVAR____TtC9SiriSetup8Defaults_settingsQueue] = sub_269057B74();
  if (v45)
  {
    v49 = v123;
    v50 = &v123[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVolume];
    swift_beginAccess();
    v51 = *v50;
    v52 = v50[4];
  }

  else
  {
    v51 = 0;
    v52 = 1;
    v49 = v123;
  }

  v53 = &v5[OBJC_IVAR____TtC9SiriSetup8Defaults_siriVolume];
  *v53 = v51;
  v53[4] = v52;
  v54 = [objc_allocWithZone(SRSVoiceProfileManager) init];
  *&v5[OBJC_IVAR____TtC9SiriSetup8Defaults_voiceProfileManager] = v54;
  v55 = [objc_allocWithZone(SRSVTPreferences) init];
  *&v5[OBJC_IVAR____TtC9SiriSetup8Defaults_voiceTriggerPrefs] = v55;
  v56 = [objc_allocWithZone(MEMORY[0x277CEF298]) init];
  *&v5[OBJC_IVAR____TtC9SiriSetup8Defaults_enablementFlowConfigurationProvider] = v56;
  v57 = type metadata accessor for Defaults();
  v134.receiver = v5;
  v134.super_class = v57;
  v58 = objc_msgSendSuper2(&v134, sel_init);
  v59 = v58;
  if (v45)
  {
    v60 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriDataSharingStatus;
    swift_beginAccess();
    v61 = *&v49[v60];
    v62 = v49;
    v63 = v59;
    sub_26904A204(v61);
    v64 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_hasVoiceProfileInCloud;
    swift_beginAccess();
    v63[OBJC_IVAR____TtC9SiriSetup8Defaults_hasVoiceProfileInCloud] = v62[v64];
    v65 = &v62[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriSharedUserId];
    swift_beginAccess();
    v67 = *v65;
    v66 = *(v65 + 1);
    v68 = &v63[OBJC_IVAR____TtC9SiriSetup8Defaults_siriSharedUserId];
    v69 = *&v63[OBJC_IVAR____TtC9SiriSetup8Defaults_siriSharedUserId + 8];
    *v68 = v67;
    *(v68 + 1) = v66;

    v70 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_recognizeMyVoiceEnabled;
    swift_beginAccess();
    sub_2690497A0(v62[v70]);
    v71 = &v62[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriLanguage];
    swift_beginAccess();
    v73 = *v71;
    v72 = v71[1];

    sub_269048F98(v73, v72);
    v74 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice;
    swift_beginAccess();
    v75 = *&v62[v74];
    v76 = *&v63[OBJC_IVAR____TtC9SiriSetup8Defaults_localDataSource];
    v77 = *(v76 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriVoice);
    *(v76 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriVoice) = v75;
    v78 = v75;

    v79 = [objc_opt_self() sharedPreferences];
    [v79 setOutputVoice_];
  }

  else
  {
    v80 = v58;
  }

  if (*&v59[OBJC_IVAR____TtC9SiriSetup8Defaults_internalSiriDataSharingStatus])
  {
    v81 = v59;
    if (!v45)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v82 = *&v59[OBJC_IVAR____TtC9SiriSetup8Defaults_settingsQueue];
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v83 = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3FB0, &unk_26905B5D0);
    sub_269057B44();

    v81 = v59;
    if (!v45)
    {
      goto LABEL_24;
    }
  }

  v84 = v59[OBJC_IVAR____TtC9SiriSetup8Defaults_hasVoiceProfileInCloud];

  if (v84)
  {
    goto LABEL_25;
  }

  sub_2690493A8();
  v85 = swift_allocObject();
  *(v85 + 16) = v59;
  v86 = *&v59[OBJC_IVAR____TtC9SiriSetup8Defaults_settings];
  v87 = swift_allocObject();
  v87[2] = v59;
  v87[3] = sub_26904FC44;
  v87[4] = v85;
  v130 = sub_26904FC00;
  v131 = v87;
  aBlock = MEMORY[0x277D85DD0];
  v127 = 1107296256;
  v128 = sub_2690277C8;
  v129 = &block_descriptor_156;
  v88 = _Block_copy(&aBlock);
  v89 = v59;
  v81 = v86;

  [v81 fetchMultiUserVoiceIdentificationSetting_];
  _Block_release(v88);

LABEL_24:

LABEL_25:
  if (!*&v59[OBJC_IVAR____TtC9SiriSetup8Defaults_siriSharedUserId + 8])
  {
    v90 = swift_allocObject();
    *(v90 + 16) = v59;
    v91 = 0x800000026905F990;
    v92 = v59;
    v93 = sub_269057A84();
    v94 = 0xD000000000000022;
    aBlock = 0xD000000000000022;
    v127 = 0x800000026905F990;
    if (("serId(completion:)" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v132 = 32;
      v133 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD000000000000029, 0x800000026905F9C0);
      MEMORY[0x26D62FBC0](v132, v133);

      v94 = aBlock;
      v91 = v127;
    }

    v95 = sub_269057764();
    if (os_log_type_enabled(v95, v93))
    {
      v96 = v94;
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v132 = v98;
      *v97 = 136315138;
      v99 = sub_269010108(v96, v91, &v132);

      *(v97 + 4) = v99;
      _os_log_impl(&dword_269002000, v95, v93, "%s", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v98);
      v45 = v121;
      MEMORY[0x26D6309D0](v98, -1, -1);
      MEMORY[0x26D6309D0](v97, -1, -1);
    }

    else
    {
    }

    v100 = *&v92[OBJC_IVAR____TtC9SiriSetup8Defaults_iCloudAltDSID + 8];
    if (v100)
    {
      v101 = *&v92[OBJC_IVAR____TtC9SiriSetup8Defaults_iCloudAltDSID];
    }

    else
    {
      v101 = 0;
    }

    if (v100)
    {
      v102 = *&v92[OBJC_IVAR____TtC9SiriSetup8Defaults_iCloudAltDSID + 8];
    }

    else
    {
      v102 = 0xE000000000000000;
    }

    sub_26900A408(0, &qword_2802F3E28, 0x277CEF318);
    v103 = swift_allocObject();
    *(v103 + 16) = sub_26904FB40;
    *(v103 + 24) = v90;

    sub_269014FD0(v101, v102, sub_26904FC40, v103);

    v49 = v123;
  }

  if (v45)
  {
    if ((*(*&v59[OBJC_IVAR____TtC9SiriSetup8Defaults_localDataSource] + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_recognizeMyVoiceEnabled) & 1) == 0)
    {
      v104 = swift_allocObject();
      *(v104 + 16) = v59;
      v105 = *&v59[OBJC_IVAR____TtC9SiriSetup8Defaults_settings];
      v106 = swift_allocObject();
      v106[2] = v59;
      v106[3] = sub_26904FB94;
      v106[4] = v104;
      v130 = sub_26904FC00;
      v131 = v106;
      aBlock = MEMORY[0x277D85DD0];
      v127 = 1107296256;
      v128 = sub_2690277C8;
      v129 = &block_descriptor_146;
      v107 = _Block_copy(&aBlock);
      v108 = v59;
      v109 = v105;

      [v109 fetchMultiUserVoiceIdentificationSetting_];
      _Block_release(v107);

      v49 = v109;
    }
  }

  return v59;
}

id sub_26904D7F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Defaults();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26904D924()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup8Defaults_iCloudAltDSID);
  v2 = *(v0 + OBJC_IVAR____TtC9SiriSetup8Defaults_iCloudAltDSID + 8);

  return v1;
}

uint64_t sub_26904D960()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup8Defaults_siriSharedUserId);
  v2 = *(v0 + OBJC_IVAR____TtC9SiriSetup8Defaults_siriSharedUserId + 8);

  return v1;
}

uint64_t sub_26904D99C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup8Defaults_personaId);
  v2 = *(v0 + OBJC_IVAR____TtC9SiriSetup8Defaults_personaId + 8);

  return v1;
}

uint64_t sub_26904D9F8()
{
  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  return BYSetupAssistantNeedsToRun();
}

uint64_t sub_26904DA70()
{
  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 languageCode];

  if (!v1)
  {
    return 0;
  }

  v2 = sub_269057954();

  return v2;
}

id sub_26904DB34()
{
  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 assistantIsEnabled];

  return v1;
}

id sub_26904DC10()
{
  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 outputVoice];

  return v1;
}

char *sub_26904DCD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F36F0, &qword_26905A3C0);
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

char *sub_26904DDE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3FA8, &qword_26905B5C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26904DF04(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F36F0, &qword_26905A3C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
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

uint64_t sub_26904DF88(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x26D62FE90](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_269057CD4();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_26904E0B0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_26904E15C(uint64_t a1, uint64_t a2)
{
  v4 = 0xD000000000000011;
  v5 = sub_26904F3F0(*(a2 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriEnabled), *(a1 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriEnabled), 0x62616E4569726973, 0xEB0000000064656CLL);
  v6 = *(a2 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_voiceTriggerEnabled);
  v56[6] = v5;
  v56[7] = v7;
  v8 = sub_26904F3F0(v6, *(a1 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_voiceTriggerEnabled), 0xD000000000000013, 0x800000026905BB80);
  v9 = *(a2 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_recognizeMyVoiceEnabled);
  v56[8] = v8;
  v56[9] = v10;
  v11 = sub_26904F3F0(v9, *(a1 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_recognizeMyVoiceEnabled), 0xD000000000000017, 0x800000026905BB60);
  v12 = *(a2 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriInCallEnabled);
  v56[10] = v11;
  v56[11] = v13;
  v56[12] = sub_26904F3F0(v12, *(a1 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriInCallEnabled), 0xD000000000000011, 0x800000026905BBA0);
  v56[13] = v14;
  v15 = *(a2 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriVoice);
  v16 = *(a1 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriVoice);
  v17 = v16;
  v18 = v15;
  v19 = sub_26904F578(v15, v16, 0x63696F5669726973, 0xE900000000000065);
  v21 = v20;

  v56[14] = v19;
  v56[15] = v21;
  v22 = a2 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriLanguage;
  v23 = *(a2 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriLanguage);
  v24 = *(v22 + 8);
  v25 = a1 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_languageCode;
  v26 = *(a1 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_languageCode);
  v27 = *(v25 + 8);

  v28 = sub_26904F75C(v23, v24, v26, v27, 0x676E614C69726973, 0xEC00000065676175);
  v30 = v29;

  v31 = 0;
  v56[16] = v28;
  v56[17] = v30;
  v32 = MEMORY[0x277D84F90];
LABEL_2:
  if (v31 <= 6)
  {
    v33 = 6;
  }

  else
  {
    v33 = v31;
  }

  v34 = v33 + 1;
  v35 = 16 * v31 + 40;
  while (v31 != 6)
  {
    if (v34 == ++v31)
    {
      __break(1u);
LABEL_26:
      swift_once();
      goto LABEL_16;
    }

    v36 = v35 + 16;
    v37 = *(&v56[2] + v35);
    v35 += 16;
    if (v37)
    {
      v38 = *(&v56[-1] + v36);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_26904DCD8(0, *(v32 + 16) + 1, 1, v32);
      }

      v40 = *(v32 + 16);
      v39 = *(v32 + 24);
      if (v40 >= v39 >> 1)
      {
        v32 = sub_26904DCD8((v39 > 1), v40 + 1, 1, v32);
      }

      *(v32 + 16) = v40 + 1;
      v41 = v32 + 16 * v40;
      *(v41 + 32) = v38;
      *(v41 + 40) = v37;
      goto LABEL_2;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3548, &unk_269059F70);
  swift_arrayDestroy();
  if (!*(v32 + 16))
  {

    return;
  }

  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD000000000000036, 0x800000026905F640);
  v54 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3F90, &qword_26905B5B8);
  sub_26904FA88(&qword_2802F3F98, &qword_2802F3F90, &qword_26905B5B8);
  v42 = sub_269057934();
  v44 = v43;

  MEMORY[0x26D62FBC0](v42, v44);

  v4 = 0;
  v32 = 0xE000000000000000;
  if (qword_2802F3258 != -1)
  {
    goto LABEL_26;
  }

LABEL_16:
  v45 = 0x6F28796669726576;
  v46 = sub_269057774();
  __swift_project_value_buffer(v46, qword_2802F3FF8);
  v47 = sub_269057A94();
  v48 = 0xEE00293A72656874;
  strcpy(v56, "verify(other:)");
  HIBYTE(v56[1]) = -18;
  v49 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v49 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v49)
  {
    v54 = 32;
    v55 = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v4, v32);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v45 = v56[0];
    v48 = v56[1];
  }

  v50 = sub_269057764();
  if (os_log_type_enabled(v50, v47))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v54 = v52;
    *v51 = 136315138;
    v53 = sub_269010108(v45, v48, &v54);

    *(v51 + 4) = v53;
    _os_log_impl(&dword_269002000, v50, v47, "%s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    MEMORY[0x26D6309D0](v52, -1, -1);
    MEMORY[0x26D6309D0](v51, -1, -1);
  }

  else
  {
  }
}

void sub_26904E6C4(uint64_t a1, char *a2)
{
  v2 = a2;
  v4 = a2[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriEnabled];
  if (qword_2802F3220 != -1)
  {
LABEL_31:
    swift_once();
  }

  v5 = objc_opt_self();
  v6 = [v5 sharedPreferences];
  v7 = [v6 assistantIsEnabled];

  v56[6] = sub_26904F3F0(v4, v7, 0x62616E4569726973, 0xEB0000000064656CLL);
  v56[7] = v8;
  v9 = sub_26904F3F0(v2[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_voiceTriggerEnabled], [*(a1 + OBJC_IVAR____TtC9SiriSetup8Defaults_voiceTriggerPrefs) voiceTriggerEnabled], 0xD000000000000013, 0x800000026905BB80);
  v10 = v2[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_recognizeMyVoiceEnabled];
  v11 = *(a1 + OBJC_IVAR____TtC9SiriSetup8Defaults_localDataSource);
  v56[8] = v9;
  v56[9] = v12;
  v56[10] = sub_26904F3F0(v10, *(v11 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_recognizeMyVoiceEnabled), 0xD000000000000017, 0x800000026905BB60);
  v56[11] = v13;
  v56[12] = sub_26904F3F0(v2[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriInCallEnabled], 0, 0xD000000000000011, 0x800000026905BBA0);
  v56[13] = v14;
  v15 = *&v2[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriVoice];
  v16 = v15;
  v17 = [v5 sharedPreferences];
  v18 = [v17 outputVoice];

  v19 = sub_26904F578(v15, v18, 0x63696F5669726973, 0xE900000000000065);
  v21 = v20;

  v56[14] = v19;
  v56[15] = v21;
  v23 = *&v2[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriLanguage];
  v22 = *&v2[OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriLanguage + 8];

  v24 = [v5 sharedPreferences];
  v25 = [v24 languageCode];

  if (v25)
  {
    v26 = sub_269057954();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  a1 = sub_26904F75C(v23, v22, v26, v28, 0x676E614C69726973, 0xEC00000065676175);
  v30 = v29;

  v31 = 0;
  v56[16] = a1;
  v56[17] = v30;
  v4 = 6;
  v2 = MEMORY[0x277D84F90];
LABEL_6:
  if (v31 <= 6)
  {
    v32 = 6;
  }

  else
  {
    v32 = v31;
  }

  v33 = v32 + 1;
  v34 = 16 * v31 + 40;
  while (v31 != 6)
  {
    if (v33 == ++v31)
    {
      __break(1u);
      goto LABEL_31;
    }

    v35 = v34 + 16;
    v36 = *(&v56[2] + v34);
    v34 += 16;
    if (v36)
    {
      v37 = *(&v56[-1] + v35);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_26904DCD8(0, *(v2 + 2) + 1, 1, v2);
      }

      v39 = *(v2 + 2);
      v38 = *(v2 + 3);
      a1 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        v2 = sub_26904DCD8((v38 > 1), v39 + 1, 1, v2);
      }

      *(v2 + 2) = a1;
      v40 = &v2[16 * v39];
      *(v40 + 4) = v37;
      *(v40 + 5) = v36;
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3548, &unk_269059F70);
  swift_arrayDestroy();
  if (*(v2 + 2))
  {
    v56[1] = 0xE000000000000000;
    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD000000000000036, 0x800000026905F640);
    v54 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3F90, &qword_26905B5B8);
    sub_26904FA88(&qword_2802F3F98, &qword_2802F3F90, &qword_26905B5B8);
    v41 = sub_269057934();
    v43 = v42;

    MEMORY[0x26D62FBC0](v41, v43);

    v44 = v56[1];
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v45 = 0x6F28796669726576;
    v46 = sub_269057774();
    __swift_project_value_buffer(v46, qword_2802F3FF8);
    v47 = sub_269057A94();
    v48 = 0xEE00293A72656874;
    strcpy(v56, "verify(other:)");
    HIBYTE(v56[1]) = -18;
    v49 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v49 = 0;
    }

    if (v49)
    {
      v54 = 32;
      v55 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0, v44);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v45 = v56[0];
      v48 = v56[1];
    }

    v50 = sub_269057764();
    if (os_log_type_enabled(v50, v47))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v54 = v52;
      *v51 = 136315138;
      v53 = sub_269010108(v45, v48, &v54);

      *(v51 + 4) = v53;
      _os_log_impl(&dword_269002000, v50, v47, "%s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x26D6309D0](v52, -1, -1);
      MEMORY[0x26D6309D0](v51, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t sub_26904ED24()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = sub_269057714();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  HIBYTE(v12) = 0;
  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v5 = [objc_opt_self() sharedPreferences];
  v6 = [objc_opt_self() currentLocale];
  sub_269057704();

  sub_2690576F4();
  (*(v1 + 8))(v4, v0);
  v7 = sub_269057944();

  v8 = [v5 allSiriLanguageCodesForSystemLanguageCode:v7 isGoodFit:&v12 + 7];

  if (v8)
  {
    v9 = sub_2690579D4();
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_26904EF14()
{
  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v0 = [objc_opt_self() sharedPreferences];
  v1 = [v0 bestSupportedLanguageCodeForLanguageCode_];

  if (v1)
  {
    v2 = sub_269057954();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v5 = 0xD000000000000019;
  v6 = 0x800000026905F680;
  sub_269057C54();

  v16 = v2;
  v17 = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3548, &unk_269059F70);
  v7 = sub_269057964();
  MEMORY[0x26D62FBC0](v7);

  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v8 = sub_269057774();
  __swift_project_value_buffer(v8, qword_2802F3FF8);
  v9 = sub_269057AA4();
  v18 = 0xD000000000000019;
  v19 = 0x800000026905F680;
  v10 = (0x800000026905F6A0 >> 56) & 0xF;
  if ((0x800000026905F6A0 & 0x2000000000000000) == 0)
  {
    v10 = 46;
  }

  if (v10)
  {
    v16 = 32;
    v17 = 0xE100000000000000;
    MEMORY[0x26D62FBC0](0xD00000000000002ELL, 0x800000026905F6A0);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v5 = v18;
    v6 = v19;
  }

  v11 = sub_269057764();
  if (os_log_type_enabled(v11, v9))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    v14 = sub_269010108(v5, v6, &v16);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_269002000, v11, v9, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x26D6309D0](v13, -1, -1);
    MEMORY[0x26D6309D0](v12, -1, -1);
  }

  else
  {
  }

  if (v4)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26904F200()
{
  result = sub_26904ED24();
  if (result)
  {
    if (*(result + 16) <= 1uLL)
    {
    }

    else
    {
      v1 = result;
      if (qword_2802F3220 != -1)
      {
        swift_once();
      }

      v2 = objc_opt_self();
      v3 = [v2 sharedPreferences];
      v4 = [v3 languageCode];

      if (!v4 || (v4, v5 = [v2 sharedPreferences], v6 = objc_msgSend(v5, sel_languageCode), v5, !v6))
      {

        return 1;
      }

      v7 = sub_269057954();
      v9 = v8;

      v13[0] = v7;
      v13[1] = v9;
      MEMORY[0x28223BE20](v10);
      v12[2] = v13;
      v11 = sub_26904E0B0(sub_26904F398, v12, v1);

      if (v11)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_26904F398(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_269057DE4() & 1;
  }
}

uint64_t sub_26904F3F0(int a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a1 == 2)
  {
    return 0;
  }

  sub_269057DF4();
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  swift_unknownObjectRelease();
  result = 0;
  if (!v9 && ((a1 ^ a2) & 1) != 0)
  {
    BYTE8(v10) = 0;
    sub_269057C54();
    MEMORY[0x26D62FBC0](a3, a4);
    MEMORY[0x26D62FBC0](0x746365707865203ALL, 0xEB00000000206465);
    sub_269057CB4();
    MEMORY[0x26D62FBC0](0x20646E756F66203BLL, 0xE800000000000000);
    *&v10 = a2 & 1;
    sub_269057CB4();
    return *(&v10 + 1);
  }

  return result;
}

uint64_t sub_26904F578(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1 == 1)
  {
    return 0;
  }

  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3AB0, &qword_26905AB78);
  sub_269057DF4();
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  swift_unknownObjectRelease();
  if (v10)
  {
    return 0;
  }

  if (a1)
  {
    if (!a2)
    {
      goto LABEL_10;
    }

    sub_26900A408(0, &qword_2802F3AE8, 0x277CEF528);
    sub_26904F92C(a1);
    v11 = a2;
    v12 = sub_269057BA4();

    sub_26904F93C(a1);
    if ((v12 & 1) == 0)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

LABEL_10:
  sub_269057C54();
  MEMORY[0x26D62FBC0](a3, a4);
  MEMORY[0x26D62FBC0](0x746365707865203ALL, 0xEB00000000206465);
  sub_269057CB4();
  MEMORY[0x26D62FBC0](0x20646E756F66203BLL, 0xE800000000000000);
  sub_269057CB4();
  return 0;
}

uint64_t sub_26904F75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 == 1)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3548, &unk_269059F70);
  sub_269057DF4();
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  swift_unknownObjectRelease();
  if (v13)
  {
    return 0;
  }

  if (a2)
  {
    if (!a4 || (a1 != a3 || a2 != a4) && (sub_269057DE4() & 1) == 0)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (!a4)
  {
    return 0;
  }

LABEL_12:
  sub_269057C54();
  MEMORY[0x26D62FBC0](a5, a6);
  MEMORY[0x26D62FBC0](0x746365707865203ALL, 0xEB00000000206465);
  sub_269057CB4();
  MEMORY[0x26D62FBC0](0x20646E756F66203BLL, 0xE800000000000000);
  sub_269057CB4();
  return 0;
}

id sub_26904F92C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_26904F93C(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26904F974()
{
  MEMORY[0x26D630A50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26904F9AC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26904FA18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_26904FA40()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26904FA88(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26904FAEC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26904FB44(uint64_t a1, uint64_t a2)
{
  v3 = (*(v2 + 16) + OBJC_IVAR____TtC9SiriSetup8Defaults_siriSharedUserId);
  v4 = v3[1];
  *v3 = a1;
  v3[1] = a2;
}

void *sub_26904FC48(__int128 *a1)
{
  v3 = a1[11];
  v90 = a1[10];
  v91 = v3;
  v92 = a1[12];
  v4 = a1[7];
  v86 = a1[6];
  v87 = v4;
  v5 = a1[9];
  v88 = a1[8];
  v89 = v5;
  v6 = a1[3];
  v82 = a1[2];
  v83 = v6;
  v7 = a1[5];
  v84 = a1[4];
  v85 = v7;
  v8 = a1[1];
  v80 = *a1;
  v81 = v8;
  *&v1[OBJC_IVAR____TtC9SiriSetup23IntroProxCardController_orbView] = 0;
  *&v1[OBJC_IVAR____TtC9SiriSetup23IntroProxCardController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = &v1[OBJC_IVAR____TtC9SiriSetup23IntroProxCardController_viewModel];
  *(v9 + 3) = &type metadata for ViewModel;
  *(v9 + 4) = &off_2879A7790;
  v10 = swift_allocObject();
  *v9 = v10;
  v11 = a1[11];
  v10[11] = a1[10];
  v10[12] = v11;
  v10[13] = a1[12];
  v12 = a1[7];
  v10[7] = a1[6];
  v10[8] = v12;
  v13 = a1[9];
  v10[9] = a1[8];
  v10[10] = v13;
  v14 = a1[3];
  v10[3] = a1[2];
  v10[4] = v14;
  v15 = a1[5];
  v10[5] = a1[4];
  v10[6] = v15;
  v16 = a1[1];
  v10[1] = *a1;
  v10[2] = v16;
  v17 = objc_allocWithZone(MEMORY[0x277D43320]);
  sub_269009E3C(&v80, v79);
  v18 = [v17 initWithCardStyle_];
  v78.receiver = v1;
  v78.super_class = type metadata accessor for IntroProxCardController();
  v19 = objc_msgSendSuper2(&v78, sel_initWithContentView_, v18);
  v20 = sub_269057944();
  [v19 setTitle_];

  if (*(&v82 + 1))
  {

    v21 = sub_269057944();
  }

  else
  {
    v21 = 0;
  }

  [v19 setSubtitle_];

  v22 = sub_269017F70();
  v23 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

  v24 = v23;
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  [v24 setContentMode_];
  [v18 addSubview_];
  v25 = [objc_allocWithZone(MEMORY[0x277D43360]) initWithStyle_];
  if (v91)
  {

    v26 = sub_269057944();
  }

  else
  {
    v26 = 0;
  }

  [v25 setText_];

  v27 = v25;
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  [v27 setNumberOfLines_];
  [v18 addSubview_];
  v28 = [v18 mainContentGuide];
  v29 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3400, &unk_26905AB40);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_26905B600;
  v77 = v18;
  v31 = [v24 topAnchor];
  v32 = [v28 topAnchor];
  v33 = [v31 constraintGreaterThanOrEqualToAnchor_];

  *(v30 + 32) = v33;
  v34 = [v24 centerXAnchor];
  v35 = [v28 centerXAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v30 + 40) = v36;
  v37 = [v24 heightAnchor];
  v38 = [v37 constraintEqualToConstant_];

  *(v30 + 48) = v38;
  v39 = [v27 topAnchor];
  v40 = [v24 bottomAnchor];

  v41 = [v39 constraintEqualToAnchor:v40 constant:30.0];
  *(v30 + 56) = v41;
  v42 = [v27 leadingAnchor];
  v43 = [v28 leadingAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v30 + 64) = v44;
  v45 = [v27 trailingAnchor];
  v46 = [v28 trailingAnchor];
  v47 = [v45 constraintEqualToAnchor_];

  *(v30 + 72) = v47;
  sub_26900A408(0, &qword_2802F3408, 0x277CCAAD0);
  v48 = sub_2690579C4();

  v76 = v29;
  [v29 activateConstraints_];

  if (v86)
  {
    v49 = objc_opt_self();

    v50 = [v49 buttonWithType_];
    [v50 setTranslatesAutoresizingMaskIntoConstraints_];
    v51 = sub_269057944();

    [v50 setTitle:v51 forState:0];

    v52 = v75;
    [v50 addTarget:v75 action:sel_tappedLink forControlEvents:0x2000];
    sub_269054398();
    [v18 addSubview_];
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_26905B610;
    v54 = [v50 topAnchor];
    v55 = [v27 bottomAnchor];

    v56 = [v54 &selRef_whichContextevent + 6];
    *(v53 + 32) = v56;
    v57 = [v50 leadingAnchor];
    v58 = [v28 leadingAnchor];
    v59 = [v57 constraintEqualToAnchor_];

    *(v53 + 40) = v59;
    v60 = [v50 trailingAnchor];
    v61 = [v28 trailingAnchor];
    v62 = [v60 constraintEqualToAnchor_];

    *(v53 + 48) = v62;
    v63 = [v50 centerXAnchor];
    v64 = [v28 centerXAnchor];
    v65 = [v63 constraintEqualToAnchor_];

    *(v53 + 56) = v65;
    v66 = [v50 bottomAnchor];

    v67 = [v28 bottomAnchor];
    v68 = [v66 constraintEqualToAnchor_];

    *(v53 + 64) = v68;
    v69 = sub_2690579C4();

    [v76 activateConstraints_];
  }

  else
  {
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_26905B620;
    v71 = [v27 bottomAnchor];

    v72 = [v28 bottomAnchor];
    v73 = [v71 constraintEqualToAnchor:v72 constant:-5.0];

    *(v70 + 32) = v73;
    v69 = sub_2690579C4();

    [v76 activateConstraints_];
    v52 = v75;
  }

  [v52 setDismissalType_];
  v79[10] = v90;
  v79[11] = v91;
  v79[12] = v92;
  v79[6] = v86;
  v79[7] = v87;
  v79[8] = v88;
  v79[9] = v89;
  v79[2] = v82;
  v79[3] = v83;
  v79[4] = v84;
  v79[5] = v85;
  v79[0] = v80;
  v79[1] = v81;
  sub_269050DB8(v79);
  sub_269009EE0(&v80);
  if (BYTE10(v91) == 1)
  {
    sub_269050A40();
  }

  return v52;
}

void sub_26905067C()
{
  v1 = sub_269057944();
  v2 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

  if (v2)
  {
    [v2 setPresentingViewController_];
  }

  [v2 present];
}

void sub_269050774(void *a1)
{
  v2 = v1;
  v4 = [v2 actions];
  sub_26900A408(0, &qword_2802F33F8, 0x277D432F0);
  v5 = sub_2690579D4();

  if (v5 >> 62)
  {
    if (sub_269057CD4())
    {
      goto LABEL_3;
    }

LABEL_13:

    return;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x26D62FE90](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v7 = v6;

  v8 = a1;
  v9 = sub_269057BA4();

  if ((v9 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    sub_2690243E8();

    swift_unknownObjectRelease();
  }
}

void sub_2690508E8(void *a1)
{
  v2 = v1;
  v4 = [v2 actions];
  sub_26900A408(0, &qword_2802F33F8, 0x277D432F0);
  v5 = sub_2690579D4();

  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:

LABEL_10:
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_269024810();

      swift_unknownObjectRelease();
    }

    return;
  }

  if (!sub_269057CD4())
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x26D62FE90](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v7 = v6;

  v8 = a1;
  v9 = sub_269057BA4();

  if ((v9 & 1) == 0)
  {
    goto LABEL_10;
  }
}

void sub_269050A40()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v2 = sub_269057944();
  v4[4] = sub_2690516D4;
  v4[5] = v1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_26900BEF0;
  v4[3] = &block_descriptor_30_0;
  v3 = _Block_copy(v4);

  [v0 setAuxiliaryButtonWithSymbolName:v2 handler:v3];
  _Block_release(v3);
}

void sub_269050B68()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      if (qword_2802F3258 != -1)
      {
        swift_once();
      }

      v3 = sub_269057774();
      __swift_project_value_buffer(v3, qword_2802F3FF8);
      v4 = sub_269057AA4();
      v11[2] = 0xD000000000000012;
      v11[3] = 0x800000026905BDA0;
      v11[0] = 32;
      v11[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0x6F7266206B636142, 0xEF6F72746E69206DLL);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v5 = sub_269057764();
      if (os_log_type_enabled(v5, v4))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v11[0] = v7;
        *v6 = 136315138;
        v8 = sub_269010108(0xD000000000000012, 0x800000026905BDA0, v11);

        *(v6 + 4) = v8;
        _os_log_impl(&dword_269002000, v5, v4, "%s", v6, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v7);
        MEMORY[0x26D6309D0](v7, -1, -1);
        MEMORY[0x26D6309D0](v6, -1, -1);
      }

      else
      {
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v2 + OBJC_IVAR____TtC9SiriSetup14IntroPresenter_page);

        sub_26900EFCC(v10);

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_269050DB8(void *a1)
{
  v2 = v1;
  v3 = a1[8];
  v4 = a1[9];
  v5 = a1[10];
  v6 = &off_279C4A000;
  if (v3 && v3[2])
  {
    v7 = v3[4];
    v8 = v3[5];
    sub_26900A408(0, &unk_2802F3410, 0x277D43308);

    v9 = sub_2690542F4();
    v10 = swift_allocObject();
    *(v10 + 16) = v2;
    v11 = v2;
    v12 = sub_269057944();

    v32 = sub_269051678;
    v33 = v10;
    v28 = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v30 = sub_26904BBEC;
    v31 = &block_descriptor_24_0;
    v13 = _Block_copy(&v28);
    v14 = [objc_opt_self() actionWithTitle:v12 customColors:v9 handler:v13];

    v15 = v13;
    v6 = &off_279C4A000;
    _Block_release(v15);

    v16 = [v11 addAction_];
  }

  if (v5)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v2;
    v18 = v2;
    v19 = sub_269057944();
    v32 = sub_269051654;
    v33 = v17;
    v28 = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v30 = sub_26904BBEC;
    v31 = &block_descriptor_18_0;
    v20 = _Block_copy(&v28);
    v21 = [objc_opt_self() actionWithTitle:v19 style:1 handler:v20];

    _Block_release(v20);

    v22 = [v18 v6[178]];
  }

  v23 = swift_allocObject();
  *(v23 + 16) = v2;
  v24 = v2;
  v25 = sub_269057944();
  v32 = sub_269051634;
  v33 = v23;
  v28 = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_26904BBEC;
  v31 = &block_descriptor_10;
  v26 = _Block_copy(&v28);
  v27 = [objc_opt_self() actionWithTitle:v25 style:0 handler:v26];

  _Block_release(v26);

  [v24 setDismissButtonAction_];
}

uint64_t sub_26905113C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = 0x800000026905BD40;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v3 = 0xD000000000000015;
    v4 = sub_269057774();
    __swift_project_value_buffer(v4, qword_2802F3FF8);
    v5 = sub_269057AA4();
    v13 = 0xD000000000000015;
    v14 = 0x800000026905BD40;
    if (("troller" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v12[0] = 32;
      v12[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD000000000000012, 0x800000026905FC10);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v3 = v13;
      v2 = v14;
    }

    v6 = sub_269057764();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12[0] = v8;
      *v7 = 136315138;
      v9 = sub_269010108(v3, v2, v12);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_269002000, v6, v5, "%s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x26D6309D0](v8, -1, -1);
      MEMORY[0x26D6309D0](v7, -1, -1);
    }

    else
    {
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v1 + OBJC_IVAR____TtC9SiriSetup14IntroPresenter_page);

      sub_26900E964(v11);

      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_2690513C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntroProxCardController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26905148C(void *a1)
{
  v3 = OBJC_IVAR____TtC9SiriSetup23IntroProxCardController_viewModel;
  swift_beginAccess();
  sub_269009C7C(v1 + v3, &v14);
  v4 = v15;
  v5 = v16;
  __swift_project_boxed_opaque_existential_1(&v14, v15);
  (*(v5 + 296))(&v12, v4, v5);
  v6 = BYTE2(v12);
  __swift_destroy_boxed_opaque_existential_1Tm(&v14);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 296))(&v13, v7, v8);
  if (v6 != BYTE2(v13))
  {
    v9 = a1[3];
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v9);
    (*(v10 + 296))(&v14, v9, v10);
    if (BYTE2(v14) == 1)
    {
      sub_269050A40();
    }
  }

  sub_269009C7C(a1, &v14);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  sub_269009D24(&v14, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_2690515FC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26905169C()
{
  MEMORY[0x26D630A50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2690516DC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[12];

  v7 = v0[14];

  v8 = v0[16];

  v9 = v0[18];

  v10 = v0[20];

  v11 = v0[22];

  v12 = v0[24];

  v13 = v0[27];

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

uint64_t DataSourceType.hashValue.getter()
{
  v1 = *v0;
  sub_269057E54();
  MEMORY[0x26D630090](v1);
  return sub_269057E84();
}

unint64_t sub_26905183C()
{
  result = qword_2802F3FD0;
  if (!qword_2802F3FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F3FD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataSourceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DataSourceType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2690519EC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x646F50656D6F48;
    v6 = 0xD000000000000010;
    if (a1 != 8)
    {
      v6 = 0x656369766564;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x615720656C707041;
    if (a1 != 5)
    {
      v7 = 0x565420656C707041;
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
    v1 = 0x656E6F685069;
    v2 = 1685016681;
    v3 = 6512973;
    if (a1 != 3)
    {
      v3 = 0x73646F50726941;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1684099177;
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

uint64_t sub_269051B18(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x444F50454D4F485FLL;
    v6 = 0x4E4F495349565FLL;
    if (a1 != 8)
    {
      v6 = 0;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x48435441575FLL;
    if (a1 != 5)
    {
      v7 = 0x5654454C5050415FLL;
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
    v1 = 0x454E4F4850495FLL;
    v2 = 0x444F50495FLL;
    v3 = 1128353119;
    if (a1 != 3)
    {
      v3 = 0x53444F505249415FLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x444150495FLL;
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

uint64_t sub_269051C30()
{
  result = SRSGetDeviceClass();
  if ((result - 1) > 0xA)
  {
    v1 = 9;
  }

  else
  {
    v1 = byte_26905B6FE[(result - 1)];
  }

  byte_2802F5130 = v1;
  return result;
}

id sub_269051C70(_OWORD *a1)
{
  v3 = a1[11];
  v119 = a1[10];
  v120 = v3;
  v121 = a1[12];
  v4 = a1[7];
  v115 = a1[6];
  v116 = v4;
  v5 = a1[9];
  v117 = a1[8];
  v118 = v5;
  v6 = a1[3];
  v111 = a1[2];
  v112 = v6;
  v7 = a1[5];
  v113 = a1[4];
  v114 = v7;
  v8 = a1[1];
  v110[0] = *a1;
  v110[1] = v8;
  *&v1[OBJC_IVAR____TtC9SiriSetup29DataSharingProxCardController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9SiriSetup29DataSharingProxCardController_orbView] = 0;
  v9 = &v1[OBJC_IVAR____TtC9SiriSetup29DataSharingProxCardController_viewModel];
  *(v9 + 3) = &type metadata for ViewModel;
  *(v9 + 4) = &off_2879A7790;
  v10 = swift_allocObject();
  *v9 = v10;
  v11 = a1[11];
  v10[11] = a1[10];
  v10[12] = v11;
  v10[13] = a1[12];
  v12 = a1[7];
  v10[7] = a1[6];
  v10[8] = v12;
  v13 = a1[9];
  v10[9] = a1[8];
  v10[10] = v13;
  v14 = a1[3];
  v10[3] = a1[2];
  v10[4] = v14;
  v15 = a1[5];
  v10[5] = a1[4];
  v10[6] = v15;
  v16 = a1[1];
  v10[1] = *a1;
  v10[2] = v16;
  v17 = objc_allocWithZone(MEMORY[0x277D43320]);
  sub_269009E3C(v110, &aBlock);
  v18 = [v17 init];
  v103.receiver = v1;
  v103.super_class = type metadata accessor for DataSharingProxCardController();
  v19 = objc_msgSendSuper2(&v103, sel_initWithContentView_, v18);
  v20 = sub_269057944();
  [v19 setTitle_];

  v21 = sub_269057944();
  v22 = objc_opt_self();
  v23 = [v22 _systemImageNamed_];

  if (!v23)
  {
    v24 = sub_269057944();
    v23 = [v22 systemImageNamed_];
  }

  v25 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  [v25 setContentMode_];
  [v18 addSubview_];
  v26 = [objc_allocWithZone(MEMORY[0x277D43360]) initWithStyle_];
  v100 = v23;
  v98 = v19;
  if (*(&v111 + 1))
  {

    v27 = sub_269057944();
  }

  else
  {
    v27 = 0;
  }

  [v26 setText_];

  v28 = v26;
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  [v28 setNumberOfLines_];
  [v18 addSubview_];
  v29 = [v18 mainContentGuide];
  v101 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3400, &unk_26905AB40);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_26905B600;
  v102 = v18;
  v31 = [v25 topAnchor];
  v32 = [v29 topAnchor];
  v33 = [v31 constraintGreaterThanOrEqualToAnchor:v32 constant:25.0];

  *(v30 + 32) = v33;
  v34 = [v25 centerXAnchor];
  v35 = [v29 centerXAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v30 + 40) = v36;
  v37 = [v25 heightAnchor];
  v38 = [v37 constraintEqualToConstant_];

  *(v30 + 48) = v38;
  v39 = [v28 topAnchor];
  v40 = [v25 bottomAnchor];
  v99 = v25;

  v41 = [v39 constraintEqualToAnchor:v40 constant:45.0];
  *(v30 + 56) = v41;
  v42 = [v28 leadingAnchor];
  v43 = [v29 leadingAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v30 + 64) = v44;
  v45 = v18;
  v46 = [v28 trailingAnchor];
  v47 = v29;
  v48 = [v29 trailingAnchor];
  v49 = [v46 constraintEqualToAnchor_];

  *(v30 + 72) = v49;
  sub_26900A408(0, &qword_2802F3408, 0x277CCAAD0);
  v50 = sub_2690579C4();

  [v101 activateConstraints_];

  if (v115)
  {
    v51 = objc_opt_self();

    v52 = [v51 buttonWithType_];
    [v52 setTranslatesAutoresizingMaskIntoConstraints_];
    v53 = sub_269057944();

    [v52 setTitle:v53 forState:0];

    v54 = v98;
    [v52 addTarget:v98 action:sel_tappedLink forControlEvents:0x2000];
    sub_269054398();
    [v45 addSubview_];
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_26905B610;
    v56 = [v52 topAnchor];
    v57 = [v28 bottomAnchor];

    v58 = [v56 constraintEqualToAnchor:v57 constant:*MEMORY[0x277D43380]];
    *(v55 + 32) = v58;
    v59 = [v52 leadingAnchor];
    v60 = v47;
    v61 = [v47 leadingAnchor];
    v62 = [v59 constraintEqualToAnchor_];

    *(v55 + 40) = v62;
    v63 = [v52 trailingAnchor];
    v64 = [v47 trailingAnchor];
    v65 = [v63 constraintEqualToAnchor_];

    *(v55 + 48) = v65;
    v66 = [v52 centerXAnchor];
    v67 = [v47 centerXAnchor];
    v68 = [v66 constraintEqualToAnchor_];

    *(v55 + 56) = v68;
    v69 = [v52 bottomAnchor];

    v70 = [v47 bottomAnchor];
    v71 = [v69 constraintEqualToAnchor_];

    *(v55 + 64) = v71;
    v72 = sub_2690579C4();

    [v101 activateConstraints_];
  }

  else
  {
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_26905B620;
    v74 = [v28 bottomAnchor];

    v75 = [v47 bottomAnchor];
    v76 = [v74 constraintEqualToAnchor:v75 constant:-5.0];

    *(v73 + 32) = v76;
    v72 = sub_2690579C4();

    [v101 activateConstraints_];
    v60 = v47;
    v54 = v98;
  }

  v77 = v54;
  [v77 setDismissalType_];
  if (v113 && *(v113 + 16))
  {
    v78 = *(v113 + 32);
    v79 = *(v113 + 40);
  }

  sub_26900A408(0, &unk_2802F3410, 0x277D43308);
  v80 = sub_2690542F4();
  v81 = swift_allocObject();
  *(v81 + 16) = v77;
  v82 = v77;
  v83 = sub_269057944();

  v108 = sub_2690531E4;
  v109 = v81;
  aBlock = MEMORY[0x277D85DD0];
  v105 = 1107296256;
  v106 = sub_26904BBEC;
  v107 = &block_descriptor_23_0;
  v84 = _Block_copy(&aBlock);
  v85 = objc_opt_self();
  v86 = [v85 actionWithTitle:v83 customColors:v80 handler:v84];

  _Block_release(v84);

  v87 = swift_allocObject();
  *(v87 + 16) = v82;
  v88 = v82;

  v89 = sub_269057944();

  v108 = sub_269053214;
  v109 = v87;
  aBlock = MEMORY[0x277D85DD0];
  v105 = 1107296256;
  v106 = sub_26904BBEC;
  v107 = &block_descriptor_29_0;
  v90 = _Block_copy(&aBlock);
  v91 = [v85 actionWithTitle:v89 style:1 handler:v90];

  _Block_release(v90);

  v92 = swift_allocObject();
  *(v92 + 16) = v88;
  v93 = v88;
  v94 = sub_269057944();
  v108 = sub_269053244;
  v109 = v92;
  aBlock = MEMORY[0x277D85DD0];
  v105 = 1107296256;
  v106 = sub_26904BBEC;
  v107 = &block_descriptor_35;
  v95 = _Block_copy(&aBlock);
  v96 = [v85 actionWithTitle:v94 style:0 handler:v95];

  _Block_release(v95);

  [v93 setDismissButtonAction_];

  sub_269009EE0(v110);
  if (BYTE10(v120) == 1)
  {
    sub_269052A78();
  }

  return v93;
}

uint64_t sub_269052A18(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a3();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_269052A78()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v2 = sub_269057944();
  v4[4] = sub_2690530F4;
  v4[5] = v1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_26900BEF0;
  v4[3] = &block_descriptor_11;
  v3 = _Block_copy(v4);

  [v0 setAuxiliaryButtonWithSymbolName:v2 handler:v3];
  _Block_release(v3);
}

void sub_269052BA0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      v3 = 0x800000026905BDA0;
      if (qword_2802F3258 != -1)
      {
        swift_once();
      }

      v4 = 0xD000000000000012;
      v5 = sub_269057774();
      __swift_project_value_buffer(v5, qword_2802F3FF8);
      v6 = sub_269057AA4();
      v14 = 0xD000000000000012;
      v15 = 0x800000026905BDA0;
      if (("DataSharingProxCardController" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v13[0] = 32;
        v13[1] = 0xE100000000000000;
        MEMORY[0x26D62FBC0](0xD000000000000012, 0x800000026905FCB0);
        MEMORY[0x26D62FBC0](32, 0xE100000000000000);

        v4 = v14;
        v3 = v15;
      }

      v7 = sub_269057764();
      if (os_log_type_enabled(v7, v6))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v13[0] = v9;
        *v8 = 136315138;
        v10 = sub_269010108(v4, v3, v13);

        *(v8 + 4) = v10;
        _os_log_impl(&dword_269002000, v7, v6, "%s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        MEMORY[0x26D6309D0](v9, -1, -1);
        MEMORY[0x26D6309D0](v8, -1, -1);
      }

      else
      {
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v11 = *(v2 + OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_page);

        sub_26900EFCC(v12);

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }
}

id sub_269052E74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataSharingProxCardController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269052F4C(void *a1)
{
  v3 = OBJC_IVAR____TtC9SiriSetup29DataSharingProxCardController_viewModel;
  swift_beginAccess();
  sub_269009C7C(v1 + v3, &v14);
  v4 = v15;
  v5 = v16;
  __swift_project_boxed_opaque_existential_1(&v14, v15);
  (*(v5 + 296))(&v12, v4, v5);
  v6 = BYTE2(v12);
  __swift_destroy_boxed_opaque_existential_1Tm(&v14);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 296))(&v13, v7, v8);
  if (v6 != BYTE2(v13))
  {
    v9 = a1[3];
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v9);
    (*(v10 + 296))(&v14, v9, v10);
    if (BYTE2(v14) == 1)
    {
      sub_269052A78();
    }
  }

  sub_269009C7C(a1, &v14);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  sub_269009D24(&v14, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_2690530BC()
{
  MEMORY[0x26D630A50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_269053114()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[12];

  v7 = v0[14];

  v8 = v0[16];

  v9 = v0[18];

  v10 = v0[20];

  v11 = v0[22];

  v12 = v0[24];

  v13 = v0[27];

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

uint64_t sub_2690531AC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_269053294()
{
  sub_2690533E8();
  result = sub_269057BC4();
  qword_2802F3FF0 = result;
  return result;
}

uint64_t sub_2690532F8()
{
  v0 = sub_269057774();
  __swift_allocate_value_buffer(v0, qword_2802F3FF8);
  __swift_project_value_buffer(v0, qword_2802F3FF8);
  if (qword_2802F3250 != -1)
  {
    swift_once();
  }

  v1 = qword_2802F3FF0;
  return sub_269057784();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_2690533E8()
{
  result = qword_2802F4010;
  if (!qword_2802F4010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802F4010);
  }

  return result;
}

void sub_269053434(os_log_type_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v24 = a2;
  v25 = a3;
  if (!a5)
  {
    goto LABEL_7;
  }

  v12 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v12 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v23[1] = 0xE100000000000000;

    MEMORY[0x26D62FBC0](a4, a5);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    if (!a7)
    {
LABEL_6:
      v14 = v24;
      v13 = v25;
      goto LABEL_13;
    }
  }

  else
  {
LABEL_7:

    if (!a7)
    {
      goto LABEL_6;
    }
  }

  v15 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v15 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v14 = v24;
  v13 = v25;
  if (!v15)
  {
LABEL_13:
    log = sub_269057764();
    if (os_log_type_enabled(log, a1))
    {
      v16 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23[0] = v20;
      *v16 = 136315138;
      v21 = sub_269010108(v14, v13, v23);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_269002000, log, a1, "%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      v19 = v20;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  log = sub_269057764();
  if (os_log_type_enabled(log, a1))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23[0] = v17;
    *v16 = 136315395;
    v18 = sub_269010108(v14, v13, v23);

    *(v16 + 4) = v18;
    *(v16 + 12) = 2081;
    *(v16 + 14) = sub_269010108(a6, a7, v23);
    _os_log_impl(&dword_269002000, log, a1, "%s %{private}s", v16, 0x16u);
    swift_arrayDestroy();
    v19 = v17;
LABEL_15:
    MEMORY[0x26D6309D0](v19, -1, -1);
    MEMORY[0x26D6309D0](v16, -1, -1);

    return;
  }

LABEL_16:
}

id sub_2690538A0(void *a1)
{
  v3 = OBJC_IVAR____TtC9SiriSetup10ColorLayer_layerRedColor;
  *&v1[v3] = CGColorCreateGenericRGB(0.96875, 0.25390625, 0.36328125, 1.0);
  v4 = OBJC_IVAR____TtC9SiriSetup10ColorLayer_layerBlueColor;
  *&v1[v4] = CGColorCreateGenericRGB(0.15625, 0.52734375, 0.9921875, 1.0);
  v5 = OBJC_IVAR____TtC9SiriSetup10ColorLayer_layerBackgroundColor;
  *&v1[v5] = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ColorLayer();
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

void sub_269053AA8()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 bounds];
  v10 = v9;
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  [v0 bounds];
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v11 < 9.22337204e18)
  {
    v12 = v11;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v14 = __CGBitmapContextCreate(v10, v12, DeviceRGB);

    if (v14)
    {
      v41.origin.x = v2;
      v41.origin.y = v4;
      v41.size.width = v6;
      v41.size.height = v8;
      CGContextClearRect(v14, v41);
    }

    v39 = v4;
    v15 = [v0 presentationLayer];
    v16 = 0.0;
    v17 = 0.0;
    if (v15)
    {
      v18 = v15;
      [v15 phase];
      v17 = v19;
    }

    rect = v8;
    v20 = (v17 + -0.57) / 0.4 * 12.0;
    if (v20 > -10.0)
    {
      v16 = 1.0;
      if (v20 < 10.0)
      {
        v16 = 1.0 / (exp(-v20) + 1.0);
      }
    }

    v21 = (v17 + -0.4) / 0.8 * 12.0;
    v22 = 0.0;
    v23 = 0.0;
    if (v21 > -10.0)
    {
      v23 = 1.0;
      if (v21 < 10.0)
      {
        v23 = 1.0 / (exp(-v21) + 1.0);
      }
    }

    v24 = (v17 + -0.6) / 0.3 * 12.0;
    if (v24 > -10.0)
    {
      v22 = 1.0;
      if (v24 < 10.0)
      {
        v22 = 1.0 / (exp(-v24) + 1.0);
      }
    }

    v25 = (v17 + -0.35) / 0.6 * 12.0;
    v26 = 0.0;
    v27 = 0.0;
    if (v25 > -10.0)
    {
      v27 = 1.0;
      if (v25 < 10.0)
      {
        v27 = 1.0 / (exp(-v25) + 1.0);
      }
    }

    v28 = (v17 + -0.3) / 0.4 * 12.0;
    if (v28 > -10.0)
    {
      v26 = 1.0;
      if (v28 < 10.0)
      {
        v26 = 1.0 / (exp(-v28) + 1.0);
      }
    }

    v29 = [objc_opt_self() currentTraitCollection];
    v30 = [v29 userInterfaceStyle];

    if (v30 == 1)
    {
    }

    else
    {
      v31 = sub_269057DE4();

      if ((v31 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    v16 = 0.0;
LABEL_30:
    if (v14)
    {
      CGContextSetFillColorWithColor(v14, *&v0[OBJC_IVAR____TtC9SiriSetup10ColorLayer_layerRedColor]);
      v42.origin.x = v2;
      v42.origin.y = v39;
      v42.size.width = v6 * v26;
      v42.size.height = rect;
      CGContextFillRect(v14, v42);
      CGContextSetFillColorWithColor(v14, *&v0[OBJC_IVAR____TtC9SiriSetup10ColorLayer_layerBlueColor]);
      v43.origin.x = v2;
      v43.origin.y = v39;
      v43.size.width = v6 * v27;
      v43.size.height = rect;
      CGContextFillRect(v14, v43);
    }

    GenericRGB = CGColorCreateGenericRGB((1.0 - v22) * 0.37890625, (1.0 - v22) * 0.98828125, (1.0 - v22) * 0.67578125, 1.0);
    if (v14)
    {
      CGContextSetFillColorWithColor(v14, GenericRGB);
      v44.origin.y = v39;
      v44.origin.x = v2;
      v44.size.width = v6 * v23;
      v44.size.height = rect;
      CGContextFillRect(v14, v44);
    }

    CopyWithAlpha = CGColorCreateCopyWithAlpha(*&v0[OBJC_IVAR____TtC9SiriSetup10ColorLayer_layerBackgroundColor], v16);
    if (CopyWithAlpha)
    {
      v34 = CopyWithAlpha;
      if (!v14)
      {

        goto LABEL_41;
      }

      CGContextSetFillColorWithColor(v14, CopyWithAlpha);
      v35 = v14;
      [v0 bounds];
      CGContextFillRect(v35, v45);
    }

    else if (!v14)
    {
      goto LABEL_41;
    }

    Image = CGBitmapContextCreateImage(v14);
    if (Image)
    {
      v40 = Image;
      type metadata accessor for CGImage(0);
      v37 = sub_269057DD4();

LABEL_42:
      [v0 setContents_];

      swift_unknownObjectRelease();
      return;
    }

LABEL_41:
    v37 = 0;
    goto LABEL_42;
  }

LABEL_48:
  __break(1u);
}

id sub_269054038(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6573616870 && a2 == 0xE500000000000000;
  if (v3 || (sub_269057DE4() & 1) != 0)
  {
    v4 = sub_269057944();
    v5 = [objc_opt_self() animationWithKeyPath_];

    v6 = *MEMORY[0x277CDA7C8];
    v7 = objc_opt_self();
    v8 = v5;
    v9 = [v7 functionWithName_];
    [v8 setTimingFunction_];

    [v2 phase];
    v10 = sub_269057754();
    [v8 setFromValue_];
  }

  else
  {
    v11 = sub_269057944();
    v13.receiver = v2;
    v13.super_class = type metadata accessor for ColorLayer();
    v8 = objc_msgSendSuper2(&v13, sel_actionForKey_, v11);
  }

  return v8;
}

id sub_269054220()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ColorLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2690542F4()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 systemBlueColor];
  v3 = [v1 whiteColor];
  v4 = [ObjCClassFromMetadata initWithBackgroundColor:v2 textColor:v3];

  return v4;
}

void sub_269054398()
{
  v1 = [v0 titleLabel];
  if (v1)
  {
    v13 = v1;
    v2 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
    v3 = [v2 fontDescriptorWithSymbolicTraits_];

    if (v3)
    {
      v4 = v3;
      [v4 pointSize];
      v6 = [objc_opt_self() fontWithDescriptor:v4 size:v5];

      [v13 setFont_];
      [v13 setAdjustsFontForContentSizeCategory_];
      [v13 setNumberOfLines_];
      [v13 setTextAlignment_];
      v7 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3400, &unk_26905AB40);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_26905B620;
      v9 = [v0 heightAnchor];
      v10 = [v13 heightAnchor];
      v11 = [v9 constraintEqualToAnchor_];

      *(v8 + 32) = v11;
      sub_26901BDD8();
      v12 = sub_2690579C4();

      [v7 activateConstraints_];
    }
  }
}

char *sub_2690545F0(void *a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *&v6[OBJC_IVAR____TtC9SiriSetup16SuccessPresenter_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = &v6[OBJC_IVAR____TtC9SiriSetup16SuccessPresenter_presentingViewController];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v6[OBJC_IVAR____TtC9SiriSetup16SuccessPresenter_dataSource];
  *v13 = a1;
  v13[1] = a2;
  v14 = &v6[OBJC_IVAR____TtC9SiriSetup16SuccessPresenter_dataSourceWriter];
  *v14 = a3;
  v14[1] = a4;
  ObjectType = swift_getObjectType();
  v16 = *(a2 + 80);
  v17 = a1;
  v18 = a3;
  v6[OBJC_IVAR____TtC9SiriSetup16SuccessPresenter_viewStyle] = v16(ObjectType, a2);
  *&v6[OBJC_IVAR____TtC9SiriSetup16SuccessPresenter_page] = a5;
  v19 = type metadata accessor for SuccessPresenter();

  sub_2690548A4(a2, v64);
  v20 = &v6[OBJC_IVAR____TtC9SiriSetup16SuccessPresenter_viewModel];
  v21 = v64[11];
  v20[10] = v64[10];
  v20[11] = v21;
  v20[12] = v64[12];
  v22 = v64[7];
  v20[6] = v64[6];
  v20[7] = v22;
  v23 = v64[9];
  v20[8] = v64[8];
  v20[9] = v23;
  v24 = v64[3];
  v20[2] = v64[2];
  v20[3] = v24;
  v25 = v64[5];
  v20[4] = v64[4];
  v20[5] = v25;
  v26 = v64[1];
  *v20 = v64[0];
  v20[1] = v26;
  v63.receiver = v6;
  v63.super_class = v19;
  v27 = objc_msgSendSuper2(&v63, sel_init);
  LOBYTE(v19) = v16(ObjectType, a2);
  v28 = &v27[OBJC_IVAR____TtC9SiriSetup16SuccessPresenter_viewModel];
  swift_beginAccess();
  v65[0] = *v28;
  v29 = *(v28 + 1);
  v30 = *(v28 + 2);
  v31 = *(v28 + 4);
  v65[3] = *(v28 + 3);
  v65[4] = v31;
  v65[1] = v29;
  v65[2] = v30;
  v32 = *(v28 + 5);
  v33 = *(v28 + 6);
  v34 = *(v28 + 8);
  v65[7] = *(v28 + 7);
  v65[8] = v34;
  v65[5] = v32;
  v65[6] = v33;
  v35 = *(v28 + 9);
  v36 = *(v28 + 10);
  v37 = *(v28 + 12);
  v65[11] = *(v28 + 11);
  v65[12] = v37;
  v65[9] = v35;
  v65[10] = v36;
  v38 = *(v28 + 11);
  v60 = *(v28 + 10);
  v61 = v38;
  v62 = *(v28 + 12);
  v39 = *(v28 + 7);
  v56 = *(v28 + 6);
  v57 = v39;
  v40 = *(v28 + 9);
  v58 = *(v28 + 8);
  v59 = v40;
  v41 = *(v28 + 3);
  v52 = *(v28 + 2);
  v53 = v41;
  v42 = *(v28 + 5);
  v54 = *(v28 + 4);
  v55 = v42;
  v43 = *(v28 + 1);
  v50 = *v28;
  v51 = v43;
  sub_269009E3C(v65, v66);
  v44 = sub_269056710(v19, &v50);
  v46 = v45;

  v66[10] = v60;
  v66[11] = v61;
  v66[12] = v62;
  v66[6] = v56;
  v66[7] = v57;
  v66[8] = v58;
  v66[9] = v59;
  v66[2] = v52;
  v66[3] = v53;
  v66[4] = v54;
  v66[5] = v55;
  v66[0] = v50;
  v66[1] = v51;
  sub_269009EE0(v66);
  v47 = &v27[OBJC_IVAR____TtC9SiriSetup16SuccessPresenter_presentingViewController];
  v48 = *&v27[OBJC_IVAR____TtC9SiriSetup16SuccessPresenter_presentingViewController];
  *v47 = v44;
  v47[1] = v46;

  return v27;
}

double sub_2690548A4@<D0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v209 = a1;
  v205 = *(a1 + 88);
  v205(ObjectType, a1);
  v210 = v3;
  if (qword_2802F3248 != -1)
  {
LABEL_120:
    swift_once();
  }

  v211 = byte_2802F5130;
  v4 = sub_269051B18(byte_2802F5130);
  strcpy(v212, "SUCCESS_TITLE");
  HIWORD(v212[1]) = -4864;
  MEMORY[0x26D62FBC0](v4);

  v5 = v212[0];
  v6 = v212[1];
  v7 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  v10 = v8 >> 1;
  v11 = v9 + 1;
  if (v8 >> 1 <= v9)
  {
    v7 = sub_26904DCD8((v8 > 1), v9 + 1, 1, v7);
    v8 = *(v7 + 3);
    v10 = v8 >> 1;
  }

  *(v7 + 2) = v11;
  v12 = &v7[16 * v9];
  *(v12 + 4) = v5;
  *(v12 + 5) = v6;
  if (v10 < (v9 + 2))
  {
    v7 = sub_26904DCD8((v8 > 1), v9 + 2, 1, v7);
  }

  *(v7 + 2) = v9 + 2;
  v13 = &v7[16 * v11];
  strcpy(v13 + 32, "SUCCESS_TITLE");
  *(v13 + 23) = -4864;
  v14 = (v7 + 40);
  v15 = -v9;
  v16 = -1;
  while (v15 + v16 != 1)
  {
    if (++v16 >= *(v7 + 2))
    {
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
      goto LABEL_120;
    }

    v17 = v14 + 2;
    v18 = *(v14 - 1);
    v19 = *v14;

    sub_26902F7F4(v18, v19, 0);
    v21 = v20;

    v14 = v17;
    if (v21)
    {

      if (!v210)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0x5F53534543435553, 0xED0000454C544954);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v22 = sub_269057774();
  __swift_project_value_buffer(v22, qword_2802F3FF8);
  v23 = sub_269057A94();
  v212[0] = 0xD00000000000003BLL;
  v212[1] = 0x800000026905BF00;
  v24 = sub_269057764();
  if (os_log_type_enabled(v24, v23))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v226[0] = v26;
    *v25 = 136315138;
    v27 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v226);

    *(v25 + 4) = v27;
    _os_log_impl(&dword_269002000, v24, v23, "%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x26D6309D0](v26, -1, -1);
    MEMORY[0x26D6309D0](v25, -1, -1);
  }

  else
  {
  }

  if (v210)
  {
LABEL_18:
    sub_26902FAA0();
  }

LABEL_19:
  v28 = sub_2690519EC(v211);
  strcpy(v226, "%DEVICE_NAME%");
  HIWORD(v226[1]) = -4864;
  v224 = v28;
  v225 = v29;
  sub_26900BE9C();
  sub_269057BE4();

  v30 = sub_2690519EC(v211);
  v210 = 0xD000000000000014;
  v226[0] = 0xD000000000000014;
  v226[1] = 0x800000026905BEA0;
  v224 = v30;
  v225 = v31;
  v32 = sub_269057BE4();
  v206 = v33;
  v207 = v32;

  v205 = (v205)(ObjectType, v209);
  v35 = v34;
  v36 = sub_269051B18(v211);
  v212[0] = 0xD000000000000010;
  v212[1] = 0x800000026905FE80;
  MEMORY[0x26D62FBC0](v36);

  v37 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v39 = *(v37 + 2);
  v38 = *(v37 + 3);
  v40 = v38 >> 1;
  v41 = v39 + 1;
  if (v38 >> 1 <= v39)
  {
    v37 = sub_26904DCD8((v38 > 1), v39 + 1, 1, v37);
    v38 = *(v37 + 3);
    v40 = v38 >> 1;
  }

  *(v37 + 2) = v41;
  v42 = &v37[16 * v39];
  *(v42 + 4) = 0xD000000000000010;
  *(v42 + 5) = 0x800000026905FE80;
  v202 = v35;
  if (v40 < (v39 + 2))
  {
    v37 = sub_26904DCD8((v38 > 1), v39 + 2, 1, v37);
  }

  *(v37 + 2) = v39 + 2;
  v43 = &v37[16 * v41];
  *(v43 + 4) = 0xD000000000000010;
  *(v43 + 5) = 0x800000026905FE80;
  v44 = (v37 + 40);
  v45 = -v39;
  v46 = -1;
  while (v45 + v46 != 1)
  {
    if (++v46 >= *(v37 + 2))
    {
      goto LABEL_115;
    }

    v47 = v44 + 2;
    v48 = *(v44 - 1);
    v49 = *v44;

    sub_26902F7F4(v48, v49, 0);
    v51 = v50;

    v44 = v47;
    if (v51)
    {

      goto LABEL_34;
    }
  }

  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0xD000000000000010, 0x800000026905FE80);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v52 = sub_269057774();
  __swift_project_value_buffer(v52, qword_2802F3FF8);
  v53 = sub_269057A94();
  v212[0] = 0xD00000000000003BLL;
  v212[1] = 0x800000026905BF00;
  v54 = sub_269057764();
  if (os_log_type_enabled(v54, v53))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v226[0] = v56;
    *v55 = 136315138;
    v57 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v226);

    *(v55 + 4) = v57;
    _os_log_impl(&dword_269002000, v54, v53, "%s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    MEMORY[0x26D6309D0](v56, -1, -1);
    MEMORY[0x26D6309D0](v55, -1, -1);
  }

  else
  {
  }

LABEL_34:
  if (v202)
  {
    sub_26902FAA0();
  }

  v58 = sub_2690519EC(v211);
  v225 = v59;
  strcpy(v226, "%DEVICE_NAME%");
  HIWORD(v226[1]) = -4864;
  v224 = v58;
  v60 = sub_269057BE4();
  v62 = v61;

  v63 = sub_2690519EC(v211);
  v212[0] = v60;
  v212[1] = v62;
  v226[0] = 0xD000000000000014;
  v226[1] = 0x800000026905BEA0;
  v224 = v63;
  v225 = v64;
  v65 = sub_269057BE4();
  v204 = v66;
  v205 = v65;

  (*(v209 + 32))(&v223, ObjectType);
  if (v223 > 1u)
  {
    if (v223 != 2)
    {
      v115 = 0;
      v116 = 0;
      v117 = 0;
      v118 = 0xE000000000000000;
      goto LABEL_104;
    }

    v83 = sub_269051B18(v211);
    v212[0] = 0xD000000000000018;
    v212[1] = 0x800000026905FEC0;
    MEMORY[0x26D62FBC0](v83);

    v84 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
    v86 = *(v84 + 2);
    v85 = *(v84 + 3);
    v87 = v85 >> 1;
    v88 = v86 + 1;
    if (v85 >> 1 <= v86)
    {
      v84 = sub_26904DCD8((v85 > 1), v86 + 1, 1, v84);
      v85 = *(v84 + 3);
      v87 = v85 >> 1;
    }

    *(v84 + 2) = v88;
    v89 = &v84[16 * v86];
    *(v89 + 4) = 0xD000000000000018;
    *(v89 + 5) = 0x800000026905FEC0;
    if (v87 < (v86 + 2))
    {
      v84 = sub_26904DCD8((v85 > 1), v86 + 2, 1, v84);
    }

    *(v84 + 2) = v86 + 2;
    v90 = &v84[16 * v88];
    *(v90 + 4) = 0xD000000000000018;
    *(v90 + 5) = 0x800000026905FEC0;
    v91 = (v84 + 40);
    v92 = -v86;
    v93 = -1;
    while (v92 + v93 != 1)
    {
      if (++v93 >= *(v84 + 2))
      {
        goto LABEL_117;
      }

      v94 = v91 + 2;
      v95 = *(v91 - 1);
      v96 = *v91;

      sub_26902F7F4(v95, v96, 0);
      v98 = v97;

      v91 = v94;
      if (v98)
      {

        goto LABEL_84;
      }
    }

    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
    MEMORY[0x26D62FBC0](0xD000000000000018, 0x800000026905FEC0);
    MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v125 = sub_269057774();
    __swift_project_value_buffer(v125, qword_2802F3FF8);
    v126 = sub_269057A94();
    v212[0] = 0xD00000000000003BLL;
    v212[1] = 0x800000026905BF00;
    v127 = sub_269057764();
    if (os_log_type_enabled(v127, v126))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v226[0] = v129;
      *v128 = 136315138;
      v130 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v226);

      *(v128 + 4) = v130;
      _os_log_impl(&dword_269002000, v127, v126, "%s", v128, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v129);
      MEMORY[0x26D6309D0](v129, -1, -1);
      MEMORY[0x26D6309D0](v128, -1, -1);
    }

    else
    {
    }

LABEL_84:
    v145 = sub_2690519EC(v211);
    v225 = v146;
    strcpy(v226, "%DEVICE_NAME%");
    HIWORD(v226[1]) = -4864;
    v224 = v145;
    v147 = sub_269057BE4();
    v149 = v148;

    v150 = sub_2690519EC(v211);
    v212[0] = v147;
    v212[1] = v149;
    v226[0] = 0xD000000000000014;
    v226[1] = 0x800000026905BEA0;
    v224 = v150;
    v225 = v151;
    v117 = sub_269057BE4();
    v118 = v152;

    goto LABEL_85;
  }

  if (!v223)
  {
    v67 = sub_269051B18(v211);
    v212[0] = 0xD000000000000014;
    v212[1] = 0x800000026905FF00;
    MEMORY[0x26D62FBC0](v67);

    v68 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
    v70 = *(v68 + 2);
    v69 = *(v68 + 3);
    v71 = v69 >> 1;
    v72 = v70 + 1;
    if (v69 >> 1 <= v70)
    {
      v68 = sub_26904DCD8((v69 > 1), v70 + 1, 1, v68);
      v69 = *(v68 + 3);
      v71 = v69 >> 1;
    }

    *(v68 + 2) = v72;
    v73 = &v68[16 * v70];
    *(v73 + 4) = 0xD000000000000014;
    *(v73 + 5) = 0x800000026905FF00;
    if (v71 < (v70 + 2))
    {
      v68 = sub_26904DCD8((v69 > 1), v70 + 2, 1, v68);
    }

    *(v68 + 2) = v70 + 2;
    v74 = &v68[16 * v72];
    *(v74 + 4) = 0xD000000000000014;
    *(v74 + 5) = 0x800000026905FF00;
    v75 = (v68 + 40);
    v76 = -v70;
    v77 = -1;
    while (v76 + v77 != 1)
    {
      if (++v77 >= *(v68 + 2))
      {
        goto LABEL_116;
      }

      v78 = v75 + 2;
      v79 = *(v75 - 1);
      v80 = *v75;

      sub_26902F7F4(v79, v80, 0);
      v82 = v81;

      v75 = v78;
      if (v82)
      {

        goto LABEL_81;
      }
    }

    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
    MEMORY[0x26D62FBC0](0xD000000000000014, 0x800000026905FF00);
    MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v119 = sub_269057774();
    __swift_project_value_buffer(v119, qword_2802F3FF8);
    v120 = sub_269057A94();
    v212[0] = 0xD00000000000003BLL;
    v212[1] = 0x800000026905BF00;
    v121 = sub_269057764();
    if (os_log_type_enabled(v121, v120))
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v226[0] = v123;
      *v122 = 136315138;
      v124 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v226);

      *(v122 + 4) = v124;
      _os_log_impl(&dword_269002000, v121, v120, "%s", v122, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v123);
      MEMORY[0x26D6309D0](v123, -1, -1);
      MEMORY[0x26D6309D0](v122, -1, -1);
    }

    else
    {
    }

LABEL_81:
    v137 = sub_2690519EC(v211);
    v225 = v138;
    strcpy(v226, "%DEVICE_NAME%");
    HIWORD(v226[1]) = -4864;
    v224 = v137;
    v139 = sub_269057BE4();
    v141 = v140;

    v142 = sub_2690519EC(v211);
    v212[0] = v139;
    v212[1] = v141;
    v226[0] = 0xD000000000000014;
    v226[1] = 0x800000026905BEA0;
    v224 = v142;
    v225 = v143;
    v117 = sub_269057BE4();
    v118 = v144;

LABEL_85:

    v115 = 0;
    v116 = 0;
    goto LABEL_104;
  }

  v99 = sub_269051B18(v211);
  v212[0] = 0xD000000000000018;
  v212[1] = 0x800000026905FEC0;
  MEMORY[0x26D62FBC0](v99);

  v100 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v102 = *(v100 + 2);
  v101 = *(v100 + 3);
  v103 = v101 >> 1;
  v104 = v102 + 1;
  if (v101 >> 1 <= v102)
  {
    v100 = sub_26904DCD8((v101 > 1), v102 + 1, 1, v100);
    v101 = *(v100 + 3);
    v103 = v101 >> 1;
  }

  *(v100 + 2) = v104;
  v105 = &v100[16 * v102];
  *(v105 + 4) = 0xD000000000000018;
  *(v105 + 5) = 0x800000026905FEC0;
  if (v103 < (v102 + 2))
  {
    v100 = sub_26904DCD8((v101 > 1), v102 + 2, 1, v100);
  }

  *(v100 + 2) = v102 + 2;
  v106 = &v100[16 * v104];
  *(v106 + 4) = 0xD000000000000018;
  *(v106 + 5) = 0x800000026905FEC0;
  v107 = (v100 + 40);
  v108 = -v102;
  v109 = -1;
  while (v108 + v109 != 1)
  {
    if (++v109 >= *(v100 + 2))
    {
      goto LABEL_118;
    }

    v110 = v107 + 2;
    v111 = *(v107 - 1);
    v112 = *v107;

    sub_26902F7F4(v111, v112, 0);
    v114 = v113;

    v107 = v110;
    if (v114)
    {

      goto LABEL_88;
    }
  }

  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0xD000000000000018, 0x800000026905FEC0);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v131 = sub_269057774();
  __swift_project_value_buffer(v131, qword_2802F3FF8);
  v132 = sub_269057A94();
  v212[0] = 0xD00000000000003BLL;
  v212[1] = 0x800000026905BF00;
  v133 = sub_269057764();
  if (os_log_type_enabled(v133, v132))
  {
    v134 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v226[0] = v135;
    *v134 = 136315138;
    v136 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v226);

    *(v134 + 4) = v136;
    _os_log_impl(&dword_269002000, v133, v132, "%s", v134, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v135);
    MEMORY[0x26D6309D0](v135, -1, -1);
    MEMORY[0x26D6309D0](v134, -1, -1);
  }

  else
  {
  }

LABEL_88:
  v153 = sub_2690519EC(v211);
  v225 = v154;
  strcpy(v226, "%DEVICE_NAME%");
  HIWORD(v226[1]) = -4864;
  v224 = v153;
  sub_269057BE4();

  v155 = sub_2690519EC(v211);
  v226[0] = 0xD000000000000014;
  v226[1] = 0x800000026905BEA0;
  v224 = v155;
  v225 = v156;
  v117 = sub_269057BE4();
  v118 = v157;

  v158 = sub_269051B18(v211);
  v209 = 0xD000000000000016;
  v212[0] = 0xD000000000000016;
  v212[1] = 0x800000026905FEE0;
  MEMORY[0x26D62FBC0](v158);

  v159 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v161 = *(v159 + 2);
  v160 = *(v159 + 3);
  v162 = v160 >> 1;
  v163 = v161 + 1;
  if (v160 >> 1 <= v161)
  {
    v159 = sub_26904DCD8((v160 > 1), v161 + 1, 1, v159);
    v160 = *(v159 + 3);
    v162 = v160 >> 1;
  }

  *(v159 + 2) = v163;
  v164 = &v159[16 * v161];
  *(v164 + 4) = 0xD000000000000016;
  *(v164 + 5) = 0x800000026905FEE0;
  if (v162 < (v161 + 2))
  {
    v159 = sub_26904DCD8((v160 > 1), v161 + 2, 1, v159);
  }

  *(v159 + 2) = v161 + 2;
  v165 = &v159[16 * v163];
  *(v165 + 4) = 0xD000000000000016;
  *(v165 + 5) = 0x800000026905FEE0;
  v166 = (v159 + 40);
  v167 = -v161;
  v168 = -1;
  while (v167 + v168 != 1)
  {
    if (++v168 >= *(v159 + 2))
    {
      goto LABEL_119;
    }

    v169 = v166 + 2;
    v170 = *(v166 - 1);
    v171 = *v166;

    sub_26902F7F4(v170, v171, 0);
    v173 = v172;

    v166 = v169;
    if (v173)
    {

      goto LABEL_103;
    }
  }

  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0xD000000000000016, 0x800000026905FEE0);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v174 = sub_269057774();
  __swift_project_value_buffer(v174, qword_2802F3FF8);
  v175 = sub_269057A94();
  v212[0] = 0xD00000000000003BLL;
  v212[1] = 0x800000026905BF00;
  v176 = sub_269057764();
  if (os_log_type_enabled(v176, v175))
  {
    v177 = swift_slowAlloc();
    v178 = swift_slowAlloc();
    v226[0] = v178;
    *v177 = 136315138;
    v179 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v226);

    *(v177 + 4) = v179;
    _os_log_impl(&dword_269002000, v176, v175, "%s", v177, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v178);
    MEMORY[0x26D6309D0](v178, -1, -1);
    MEMORY[0x26D6309D0](v177, -1, -1);
  }

  else
  {
  }

LABEL_103:
  v180 = sub_2690519EC(v211);
  v225 = v181;
  strcpy(v226, "%DEVICE_NAME%");
  HIWORD(v226[1]) = -4864;
  v224 = v180;
  v182 = sub_269057BE4();
  v184 = v183;

  v185 = sub_2690519EC(v211);
  v212[0] = v182;
  v212[1] = v184;
  v226[0] = 0xD000000000000014;
  v226[1] = 0x800000026905BEA0;
  v224 = v185;
  v225 = v186;
  v115 = sub_269057BE4();
  v116 = v187;

LABEL_104:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F36F0, &qword_26905A3C0);
  v188 = swift_allocObject();
  *(v188 + 16) = xmmword_269059EE0;
  *(v188 + 32) = v117;
  *(v188 + 40) = v118;
  v189 = 0x800000026905D710;
  sub_269057C54();
  v226[0] = 0;
  v226[1] = 0xE000000000000000;
  v190 = 0xD00000000000001CLL;
  MEMORY[0x26D62FBC0](0xD00000000000001CLL, 0x800000026905FEA0);
  v212[0] = 0;
  v212[1] = 0;
  v212[2] = v207;
  v212[3] = v206;
  v212[4] = v205;
  v212[5] = v204;
  v212[6] = 0;
  v212[7] = 0xE000000000000000;
  v212[8] = v188;
  v213 = 0u;
  v214 = 0u;
  v215 = 0u;
  v216 = 0u;
  v217 = v115;
  v218 = v116;
  v219 = 2;
  v220 = 0;
  v221 = 0;
  v222[0] = 0;
  *(v222 + 7) = 0;
  v222[2] = 0;
  v222[3] = 0;
  sub_269057CB4();
  v191 = v226[0];
  v192 = v226[1];
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v193 = sub_269057774();
  __swift_project_value_buffer(v193, qword_2802F3FF8);
  v194 = sub_269057AA4();
  v212[0] = 0xD00000000000001CLL;
  v212[1] = 0x800000026905D710;
  v195 = HIBYTE(v192) & 0xF;
  if ((v192 & 0x2000000000000000) == 0)
  {
    v195 = v191 & 0xFFFFFFFFFFFFLL;
  }

  if (v195)
  {
    v226[0] = 32;
    v226[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v191, v192);
    MEMORY[0x26D62FBC0](v226[0], v226[1]);

    v190 = v212[0];
    v189 = v212[1];
  }

  v196 = sub_269057764();
  if (os_log_type_enabled(v196, v194))
  {
    v197 = swift_slowAlloc();
    v198 = swift_slowAlloc();
    v226[0] = v198;
    *v197 = 136315138;
    v199 = sub_269010108(v190, v189, v226);

    *(v197 + 4) = v199;
    _os_log_impl(&dword_269002000, v196, v194, "%s", v197, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v198);
    MEMORY[0x26D6309D0](v198, -1, -1);
    MEMORY[0x26D6309D0](v197, -1, -1);
  }

  else
  {
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = v207;
  *(a2 + 24) = v206;
  *(a2 + 32) = v205;
  *(a2 + 40) = v204;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  *(a2 + 64) = v188;
  result = 0.0;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = v115;
  *(a2 + 144) = v116;
  *(a2 + 152) = 2;
  v201 = v212[0];
  *(a2 + 156) = *(v212 + 3);
  *(a2 + 153) = v201;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 183) = 0;
  *(a2 + 160) = 0;
  *(a2 + 187) = v226[0];
  *(a2 + 191) = BYTE4(v226[0]);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  return result;
}

char *sub_269056710(char a1, _OWORD *a2)
{
  v2 = a2[11];
  v48[10] = a2[10];
  v48[11] = v2;
  v48[12] = a2[12];
  v3 = a2[7];
  v48[6] = a2[6];
  v48[7] = v3;
  v4 = a2[9];
  v48[8] = a2[8];
  v48[9] = v4;
  v5 = a2[3];
  v48[2] = a2[2];
  v48[3] = v5;
  v6 = a2[5];
  v48[4] = a2[4];
  v48[5] = v6;
  v7 = a2[1];
  v48[0] = *a2;
  v48[1] = v7;
  if (a1)
  {
    if (a1 == 1)
    {
      v8 = 0xD000000000000028;
      v9 = 0x800000026905D8D0;
      *&v35 = 0;
      *(&v35 + 1) = 0xE000000000000000;
      sub_269057C54();
      MEMORY[0x26D62FBC0](0xD00000000000002CLL, 0x800000026905FE10);
      LOBYTE(v34[0]) = 1;
      sub_269057CB4();
      MEMORY[0x26D62FBC0](0xD000000000000014, 0x800000026905FE40);
      v10 = v35;
      if (qword_2802F3258 != -1)
      {
        swift_once();
      }

      v11 = sub_269057774();
      __swift_project_value_buffer(v11, qword_2802F3FF8);
      v12 = sub_269057A94();
      *&v35 = 0xD000000000000028;
      *(&v35 + 1) = 0x800000026905D8D0;
      v13 = HIBYTE(*(&v10 + 1)) & 0xFLL;
      if ((*(&v10 + 1) & 0x2000000000000000) == 0)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        v34[0] = 32;
        v34[1] = 0xE100000000000000;
        MEMORY[0x26D62FBC0](v10, *(&v10 + 1));
        MEMORY[0x26D62FBC0](32, 0xE100000000000000);

        v9 = *(&v35 + 1);
        v8 = v35;
      }

      v14 = sub_269057764();
      if (os_log_type_enabled(v14, v12))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v34[0] = v16;
        *v15 = 136315138;
        v17 = sub_269010108(v8, v9, v34);

        *(v15 + 4) = v17;
        _os_log_impl(&dword_269002000, v14, v12, "%s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        MEMORY[0x26D6309D0](v16, -1, -1);
        MEMORY[0x26D6309D0](v15, -1, -1);
      }

      else
      {
      }

      return 0;
    }

    else
    {
      v26 = a2[11];
      v45 = a2[10];
      v46 = v26;
      v47 = a2[12];
      v27 = a2[7];
      v41 = a2[6];
      v42 = v27;
      v28 = a2[9];
      v43 = a2[8];
      v44 = v28;
      v29 = a2[3];
      v37 = a2[2];
      v38 = v29;
      v30 = a2[5];
      v39 = a2[4];
      v40 = v30;
      v31 = a2[1];
      v35 = *a2;
      v36 = v31;
      v32 = objc_allocWithZone(type metadata accessor for SuccessProxCardController());
      sub_269009E3C(v48, v34);
      v25 = sub_269032658(&v35);
      *&v25[OBJC_IVAR____TtC9SiriSetup25SuccessProxCardController_delegate + 8] = &off_2879A9000;
      swift_unknownObjectWeakAssign();
    }
  }

  else
  {
    v18 = a2[11];
    v45 = a2[10];
    v46 = v18;
    v47 = a2[12];
    v19 = a2[7];
    v41 = a2[6];
    v42 = v19;
    v20 = a2[9];
    v43 = a2[8];
    v44 = v20;
    v21 = a2[3];
    v37 = a2[2];
    v38 = v21;
    v22 = a2[5];
    v39 = a2[4];
    v40 = v22;
    v23 = a2[1];
    v35 = *a2;
    v36 = v23;
    v24 = objc_allocWithZone(type metadata accessor for SuccessWelcomeController());
    sub_269009E3C(v48, v34);
    v25 = sub_269025E64(&v35);
    *&v25[OBJC_IVAR____TtC9SiriSetup24SuccessWelcomeController_delegate + 8] = &off_2879A9000;
    swift_unknownObjectWeakAssign();
  }

  return v25;
}

id sub_269056B00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuccessPresenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269056C1C@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9SiriSetup16SuccessPresenter_viewModel);
  swift_beginAccess();
  v4 = v3[9];
  v5 = v3[11];
  v32 = v3[10];
  v33 = v5;
  v6 = v3[11];
  v34 = v3[12];
  v7 = v3[5];
  v8 = v3[7];
  v28 = v3[6];
  v9 = v28;
  v29 = v8;
  v10 = v3[7];
  v11 = v3[9];
  v30 = v3[8];
  v12 = v30;
  v31 = v11;
  v13 = v3[1];
  v14 = v3[3];
  v24 = v3[2];
  v15 = v24;
  v25 = v14;
  v16 = v3[3];
  v17 = v3[5];
  v26 = v3[4];
  v18 = v26;
  v27 = v17;
  v19 = v3[1];
  v23[0] = *v3;
  v20 = v23[0];
  v23[1] = v19;
  a1[10] = v32;
  a1[11] = v6;
  a1[12] = v3[12];
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v12;
  a1[9] = v4;
  a1[2] = v15;
  a1[3] = v16;
  a1[4] = v18;
  a1[5] = v7;
  *a1 = v20;
  a1[1] = v13;
  return sub_269009E3C(v23, v22);
}

uint64_t sub_269056CEC(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9SiriSetup16SuccessPresenter_viewModel);
  swift_beginAccess();
  v4 = v3[10];
  v5 = v3[11];
  v6 = v3[8];
  v19[9] = v3[9];
  v19[10] = v4;
  v7 = v3[12];
  v19[11] = v5;
  v19[12] = v7;
  v8 = v3[6];
  v19[7] = v3[7];
  v19[8] = v6;
  v9 = v3[3];
  v19[2] = v3[2];
  v19[3] = v9;
  v10 = v3[4];
  v19[5] = v3[5];
  v19[6] = v8;
  v19[4] = v10;
  v11 = v3[1];
  v19[0] = *v3;
  v19[1] = v11;
  v12 = a1[11];
  v3[10] = a1[10];
  v3[11] = v12;
  v3[12] = a1[12];
  v13 = a1[7];
  v3[6] = a1[6];
  v3[7] = v13;
  v14 = a1[9];
  v3[8] = a1[8];
  v3[9] = v14;
  v15 = a1[3];
  v3[2] = a1[2];
  v3[3] = v15;
  v16 = a1[5];
  v3[4] = a1[4];
  v3[5] = v16;
  v17 = a1[1];
  *v3 = *a1;
  v3[1] = v17;
  return sub_269009EE0(v19);
}

void *sub_269056E18()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup16SuccessPresenter_presentingViewController);
  v2 = *(v0 + OBJC_IVAR____TtC9SiriSetup16SuccessPresenter_presentingViewController + 8);
  v3 = v1;
  return v1;
}

void sub_269056E60(uint64_t a1)
{
  v3 = (a1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriLanguage);
  v4 = *(a1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriLanguage + 8);
  if (v4)
  {
    v5 = (v1 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_languageCode);
    v6 = *(v1 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_languageCode + 8);
    *v5 = *v3;
    v5[1] = v4;
  }

  v7 = *(a1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriVoice);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriVoice);
    *(v1 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriVoice) = v7;
    v9 = v7;
  }

  v10 = *(a1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriEnabled);
  if (v10)
  {
    *(v1 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriEnabled) = v10 == 2;
  }

  if ((*(a1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriDataSharingStatus + 8) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriDataSharingStatus) = *(a1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriDataSharingStatus);
  }

  v11 = *(a1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_voiceTriggerEnabled);
  if (v11)
  {
    *(v1 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_voiceTriggerEnabled) = v11 == 2;
  }

  v12 = *(a1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_recognizeMyVoiceEnabled);
  if (v12)
  {
    *(v1 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_recognizeMyVoiceEnabled) = v12 == 2;
  }

  v13 = *(a1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriInCallEnabled);
  if (v13)
  {
    *(v1 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriInCallEnabled) = v13 == 2;
  }
}

id sub_269056FE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocalDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269057104()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_iCloudAltDSID);
  v2 = *(v0 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_iCloudAltDSID + 8);

  return v1;
}

uint64_t sub_269057140()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriSharedUserId);
  v2 = *(v0 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriSharedUserId + 8);

  return v1;
}

uint64_t sub_26905717C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_personaId);
  v2 = *(v0 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_personaId + 8);

  return v1;
}

uint64_t sub_26905721C()
{
  result = *(v0 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_overrideViewStyle);
  if (result == 3)
  {
    return 0x20100u >> (8 * *(v0 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_enrollmentMode));
  }

  return result;
}

uint64_t sub_269057250()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_languageCode);
  v2 = *(v0 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_languageCode + 8);

  return v1;
}

uint64_t sub_26905728C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_bestSupportedLanguageCode);
  v2 = *(v0 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_bestSupportedLanguageCode + 8);

  return v1;
}

void *sub_269057318()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriVoice);
  v2 = v1;
  return v1;
}

uint64_t sub_2690573B4(char a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a3 + 56))(v14);
  *(v7 + 152) = a1;
  v6(v14, 0);
  result = (*(a3 + 80))(a2, a3);
  if (result)
  {
    v10 = v9;
    v11 = result;
    ObjectType = swift_getObjectType();
    v14[5] = v11;
    v13 = *(a3 + 40);
    v14[3] = &type metadata for ViewModel;
    v14[4] = &off_2879A7790;
    v14[0] = swift_allocObject();
    v13(a2, a3);
    (*(v10 + 16))(v14, 1, ObjectType, v10);

    return __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  return result;
}

uint64_t sub_2690574E8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[10];

  v6 = v0[12];

  v7 = v0[14];

  v8 = v0[16];

  v9 = v0[18];

  v10 = v0[20];

  v11 = v0[22];

  v12 = v0[24];

  v13 = v0[27];

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

unint64_t sub_269057594()
{
  result = qword_2802F4128;
  if (!qword_2802F4128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F4128);
  }

  return result;
}