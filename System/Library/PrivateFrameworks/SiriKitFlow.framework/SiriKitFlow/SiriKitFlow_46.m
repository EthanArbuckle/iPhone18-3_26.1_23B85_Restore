uint64_t sub_1DCF735F8(uint64_t a1, char a2, void *a3)
{
  v5 = sub_1DD0DE2DC();

  v6 = [a3 localizedNameWithPreferredLocalizations:v5 useShortNameOnly:a2 & 1];

  if (!v6)
  {
    return 0;
  }

  v7 = sub_1DD0DDFBC();

  return v7;
}

id static SACardSnippet.makeFromCardSections(cardSections:shouldGenerateAceId:sashBundleId:referencedCommands:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1DD0DB04C();
  v9 = OUTLINED_FUNCTION_9(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9, v14);
  OUTLINED_FUNCTION_16();
  v17 = v16 - v15;
  v18 = [objc_allocWithZone(MEMORY[0x1E69C9F00]) init];
  sub_1DD0DB03C();
  v19 = sub_1DD0DAFFC();
  v21 = v20;
  (*(v11 + 8))(v17, v8);
  sub_1DCB2C534(v19, v21, v18, &selRef_setCardId_);
  sub_1DCF73D88(a1, v18);
  if (a4)
  {
    v22 = [objc_allocWithZone(MEMORY[0x1E69C7BA8]) init];
    sub_1DCF73DF4(a3, a4, v22);
    v23 = static SACardSnippet.makeFromCard(card:shouldGenerateAceId:sash:referencedCommands:)(v18, 1, v22, a5);

    v18 = v22;
  }

  else
  {
    v23 = static SACardSnippet.makeFromCard(card:shouldGenerateAceId:sash:referencedCommands:)(v18, 1, 0, a5);
  }

  return v23;
}

id static SACardSnippet.makeFromCard(card:shouldGenerateAceId:sash:referencedCommands:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DD0DB04C();
  v9 = OUTLINED_FUNCTION_9(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9, v14);
  OUTLINED_FUNCTION_16();
  v17 = v16 - v15;
  v18 = [objc_allocWithZone(MEMORY[0x1E69C7770]) init];
  v19 = [objc_allocWithZone(MEMORY[0x1E69CA5E0]) initWithFacade_];
  v20 = v19;
  if (v19)
  {
    v34 = v8;
    v21 = a2;
    v22 = a3;
    v23 = a4;
    v24 = sub_1DCB3BE6C(v19);
    if (v25 >> 60 == 15)
    {
      v26 = 0;
    }

    else
    {
      v27 = v24;
      v28 = v25;
      v26 = sub_1DD0DAEFC();
      sub_1DCB2C520(v27, v28);
    }

    a4 = v23;
    a3 = v22;
    a2 = v21;
    v8 = v34;
  }

  else
  {
    v26 = 0;
  }

  [v18 setCardData_];

  if (a2)
  {
    v29 = v18;
    sub_1DD0DB03C();
    v30 = sub_1DD0DAFFC();
    v32 = v31;
    (*(v11 + 8))(v17, v8);
    sub_1DCB2C534(v30, v32, v29, &selRef_setAceId_);
  }

  if (a3)
  {
    [v18 setSash_];
  }

  if (sub_1DCB08B14(a4))
  {
    sub_1DCF73D10(a4, v18);
  }

  return v18;
}

id static SACardSnippet.makeFromCardSectionsWithIntentData(cardSections:intent:intentResponse:shouldGenerateAceId:)(uint64_t a1, void *a2, void *a3, char a4)
{
  v8 = sub_1DD0DB04C();
  v9 = OUTLINED_FUNCTION_9(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9, v14);
  OUTLINED_FUNCTION_16();
  v17 = v16 - v15;
  v18 = [objc_allocWithZone(MEMORY[0x1E69C9F00]) init];
  sub_1DD0DB03C();
  v19 = sub_1DD0DAFFC();
  v21 = v20;
  (*(v11 + 8))(v17, v8);
  sub_1DCB2C534(v19, v21, v18, &selRef_setCardId_);
  sub_1DCF73D88(a1, v18);
  v22 = sub_1DCB3BE6C([a2 backingStore]);
  v24 = 0;
  if (v23 >> 60 != 15)
  {
    v25 = v22;
    v26 = v23;
    v24 = sub_1DD0DAEFC();
    sub_1DCB2C520(v25, v26);
  }

  [v18 setIntentMessageData_];

  v27 = [a2 typeName];
  v28 = sub_1DD0DDFBC();
  v30 = v29;

  sub_1DCB2C534(v28, v30, v18, &selRef_setIntentMessageName_);
  if (!a3)
  {
    [v18 setIntentResponseMessageData_];
    goto LABEL_11;
  }

  result = [a3 backingStore];
  if (result)
  {
    v32 = sub_1DCB3BE6C(result);
    if (v33 >> 60 == 15)
    {
      v34 = 0;
    }

    else
    {
      v35 = v32;
      v36 = v33;
      v34 = sub_1DD0DAEFC();
      sub_1DCB2C520(v35, v36);
    }

    [v18 setIntentResponseMessageData_];

    sub_1DCF74F3C(a3);
    if (v37)
    {
      v38 = sub_1DD0DDF8C();

LABEL_12:
      [v18 setIntentResponseMessageName_];

      v39 = static SACardSnippet.makeFromCard(card:shouldGenerateAceId:sash:referencedCommands:)(v18, a4 & 1, 0, MEMORY[0x1E69E7CC0]);
      return v39;
    }

LABEL_11:
    v38 = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_1DCF73D10(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA1C80, &qword_1DD0E1D90);
  v3 = sub_1DD0DE2DC();
  [a2 setReferencedCommands_];
}

void sub_1DCF73D88(uint64_t a1, void *a2)
{
  sub_1DCF73E4C();
  v3 = sub_1DD0DE2DC();
  [a2 setCardSections_];
}

void sub_1DCF73DF4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setApplicationBundleIdentifier_];
}

unint64_t sub_1DCF73E4C()
{
  result = qword_1EDE46208;
  if (!qword_1EDE46208)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE46208);
  }

  return result;
}

uint64_t sub_1DCF73E90(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v7 = *(a1 + 24);
    v19 = MEMORY[0x1E69E7CC0];
    sub_1DD0DED0C();
    v8 = (v3 + 32);
    for (i = v4 - 1; ; --i)
    {
      memcpy(__dst, v8, 0xD9uLL);
      memcpy(v17, v8, 0xD9uLL);
      if (*(v7 + 16))
      {
        sub_1DCCE4A84(__dst, v16);
        v10 = sub_1DCB21038(0x79726F6765746163, 0xE800000000000000);
        if (v11)
        {
          v12 = (*(v7 + 56) + 16 * v10);
          v14 = *v12;
          v13 = v12[1];

          goto LABEL_8;
        }
      }

      else
      {
        sub_1DCCE4A84(__dst, v16);
      }

      v14 = 0;
      v13 = 0;
LABEL_8:
      sub_1DCF73FF4(v17, a2 & 1, v14, v13);

      sub_1DCCE4AE0(__dst);
      sub_1DD0DECDC();
      v15 = *(v19 + 16);
      sub_1DD0DED1C();
      sub_1DD0DED2C();
      sub_1DD0DECEC();
      if (!i)
      {
        return v19;
      }

      v8 += 224;
    }
  }

  return result;
}

id sub_1DCF73FF4(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v39[1] = a3;
  v43 = a2;
  v6 = sub_1DD0DB04C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v44 = a1[3];
  v45 = v14;
  v15 = a1[5];
  v17 = a1[6];
  v16 = a1[7];
  v39[2] = a1[4];
  v40 = v17;
  v46 = v15;
  v47 = v16;
  v18 = a1[9];
  v39[0] = a1[8];
  v41 = v18;
  v42 = *(a1 + 80);
  v19 = [objc_allocWithZone(MEMORY[0x1E69C77A0]) init];
  sub_1DD0DB03C();
  v20 = sub_1DD0DAFFC();
  v22 = v21;
  v23 = *(v7 + 8);
  v23(v11, v6);
  sub_1DCB4D8E8(v20, v22, v19);

  v24 = sub_1DD0DDF8C();
  [v19 setDialogIdentifier_];

  if (a4)
  {
    v25 = sub_1DD0DDF8C();
  }

  else
  {
    v25 = 0;
  }

  [v19 setDialogCategory_];

  [v19 setSpokenOnly_];
  [v19 setCanUseServerTTS_];
  v26 = [objc_allocWithZone(MEMORY[0x1E69C77B0]) init];
  sub_1DD0DB03C();
  v27 = sub_1DD0DAFFC();
  v29 = v28;
  v23(v11, v6);
  sub_1DCB4D8E8(v27, v29, v26);
  sub_1DCB72D80(v45, v44, v26);
  if (v46)
  {
    v30 = sub_1DD0DDF8C();
  }

  else
  {
    v30 = 0;
  }

  [v26 setSpeakableTextOverride_];

  [v19 setContent_];
  v31 = v47;
  if (v47)
  {
    v32 = [objc_allocWithZone(MEMORY[0x1E69C77B0]) init];
    sub_1DD0DB03C();
    v33 = sub_1DD0DAFFC();
    v35 = v34;
    v23(v11, v6);
    sub_1DCB4D8E8(v33, v35, v32);

    sub_1DCB72D80(v40, v31, v32);
    if (v41)
    {
      v36 = sub_1DD0DDF8C();
    }

    else
    {
      v36 = 0;
    }

    [v32 setSpeakableTextOverride_];

    v37 = v32;
    [v19 setCaption_];
  }

  return v19;
}

id sub_1DCF74350(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v11 = [objc_allocWithZone(MEMORY[0x1E69C7A50]) init];
  if (a4 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_1DD0DAEFC();
  }

  [v11 setSessionHandoffData_];

  v13 = [objc_allocWithZone(MEMORY[0x1E69C7828]) init];
  [v13 setHandoffPayload_];
  sub_1DCF746EC(a1, a2, v13);
  sub_1DCF74744(a1, a2, v13);
  if (a6)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v14 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v14, qword_1EDE57E00);

    v15 = sub_1DD0DD8EC();
    v16 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_1DCB10E9C(a5, a6, &v22);
      _os_log_impl(&dword_1DCAFC000, v15, v16, "Making handoff command with MultiUser target device : %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1E12A8390](v18, -1, -1);
      MEMORY[0x1E12A8390](v17, -1, -1);
    }

    v19 = [objc_allocWithZone(MEMORY[0x1E69C79B8]) init];
    sub_1DCF7479C(a5, a6, v19);
    v20 = v19;
    [v13 setTargetDevice_];
  }

  return v13;
}

id sub_1DCF745B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = sub_1DD0DE01C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD0DE00C();
  v16 = sub_1DD0DDFCC();
  v18 = v17;
  (*(v11 + 8))(v15, v10);
  v19 = sub_1DCF74350(a1, a2, v16, v18, a5, a6);
  sub_1DCB2C520(v16, v18);
  return v19;
}

void sub_1DCF746EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setLockScreenText_];
}

void sub_1DCF74744(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setNotificationText_];
}

void sub_1DCF7479C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setAssistantId_];
}

char *static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v54 - v12;
  v14 = sub_1DD0DB04C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1DD0DD1BC();
  if (!v20)
  {
    goto LABEL_17;
  }

  v21 = v20;
  v10 = [objc_allocWithZone(MEMORY[0x1E69C7860]) init];
  sub_1DD0DB03C();
  v22 = sub_1DD0DAFFC();
  v24 = v23;
  (*(v15 + 8))(v19, v14);
  sub_1DCB4D8E8(v22, v24, v10);
  v25 = [objc_allocWithZone(MEMORY[0x1E69C7878]) init];
  v13 = [a2 typeName];
  v26 = sub_1DD0DDFBC();
  v28 = v27;

  sub_1DCB2C534(v26, v28, v25, &selRef_setTypeName_);
  v29 = sub_1DCB3BE6C([a2 backingStore]);
  if (v30 >> 60 == 15)
  {
    v31 = 0;
  }

  else
  {
    v13 = v29;
    v32 = v30;
    v31 = sub_1DD0DAEFC();
    sub_1DCB2C520(v13, v32);
  }

  [v25 setData_];

  [v10 setHandledIntent_];
  v33 = [objc_allocWithZone(MEMORY[0x1E69C7878]) init];
  if (!a3 || (v34 = sub_1DCF74F3C(a3), !v35))
  {

    v35 = 0x80000001DD125F00;
    v34 = 0xD00000000000001DLL;
  }

  sub_1DCB2C534(v34, v35, v33, &selRef_setTypeName_);
  if (a3)
  {
    v36 = [a3 backingStore];
    if (v36)
    {
      v37 = sub_1DCB3BE6C(v36);
      if (v38 >> 60 == 15)
      {
        a3 = 0;
      }

      else
      {
        v39 = v37;
        v40 = v38;
        a3 = sub_1DD0DAEFC();
        sub_1DCB2C520(v39, v40);
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_17:
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v44 = sub_1DD0DD8FC();
    v45 = __swift_project_value_buffer(v44, qword_1EDE57E00);
    v46 = *(v44 - 8);
    (*(v46 + 16))(v13, v45, v44);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v44);
    sub_1DCBCF6C8(v13, v10);
    if (__swift_getEnumTagSinglePayload(v10, 1, v44) == 1)
    {
      sub_1DCBCF738(v10);
    }

    else
    {
      v47 = sub_1DD0DD8EC();
      v48 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v55 = v50;
        *v49 = 136315650;
        v51 = sub_1DD0DEC3C();
        v53 = sub_1DCB10E9C(v51, v52, &v55);

        *(v49 + 4) = v53;
        *(v49 + 12) = 2048;
        *(v49 + 14) = 21;
        *(v49 + 22) = 2080;
        *(v49 + 24) = sub_1DCB10E9C(0xD000000000000022, 0x80000001DD125E40, &v55);
        _os_log_impl(&dword_1DCAFC000, v47, v48, "FatalError at %s:%lu - %s", v49, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v50, -1, -1);
        MEMORY[0x1E12A8390](v49, -1, -1);
      }

      (*(v46 + 8))(v10, v44);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000022, 0x80000001DD125E40);
  }

LABEL_13:
  [v33 setData_];

  [v10 setHandledIntentResponse_];
  sub_1DCB2C534(v54, v21, v10, &selRef_setAppId_);

  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1DD0E07C0;
  *(v41 + 56) = sub_1DCF74EA0();
  *(v41 + 64) = sub_1DCF74EE4();
  *(v41 + 32) = v10;
  v42 = v10;
  sub_1DD0DD7EC();

  return v42;
}

unint64_t sub_1DCF74EA0()
{
  result = qword_1EDE460F0;
  if (!qword_1EDE460F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE460F0);
  }

  return result;
}

unint64_t sub_1DCF74EE4()
{
  result = qword_1EDE460E0;
  if (!qword_1EDE460E0)
  {
    sub_1DCF74EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE460E0);
  }

  return result;
}

uint64_t sub_1DCF74F3C(void *a1)
{
  v1 = [a1 _payloadResponseTypeName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD0DDFBC();

  return v3;
}

id sub_1DCF74FA0(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = [a1 givenName];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_0_109(v4, v5, v6, &selRef_setFirstName_);
  v7 = [a1 phoneticGivenName];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_0_109(v8, v9, v10, &selRef_setFirstNamePhonetic_);
  v11 = [a1 middleName];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_0_109(v12, v13, v14, &selRef_setMiddleName_);
  v15 = [a1 familyName];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_0_109(v16, v17, v18, &selRef_setLastName_);
  v19 = [a1 phoneticFamilyName];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_0_109(v20, v21, v22, &selRef_setLastNamePhonetic_);
  v23 = [a1 nickname];
  sub_1DD0DDFBC();
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_0_109(v24, v25, v26, &selRef_setNickName_);

  return v2;
}

uint64_t sub_1DCF75120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1DCC6E534(v5);
  if (!v11)
  {
    if (!a2)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (!a2)
  {
    goto LABEL_19;
  }

  if (v10 == a1 && v11 == a2)
  {

    goto LABEL_12;
  }

  v13 = sub_1DD0DF0AC();

  if ((v13 & 1) == 0)
  {
LABEL_10:
    v14 = 0;
    return v14 & 1;
  }

LABEL_12:
  v15 = sub_1DCC6E540(v5);
  v14 = a4 == 0;
  if (v16)
  {
    if (a4)
    {
      if (v15 == a3 && v16 == a4)
      {
        v14 = 1;
      }

      else
      {
        v14 = sub_1DD0DF0AC();
      }

      goto LABEL_21;
    }

LABEL_19:
    v14 = 0;
LABEL_21:
  }

  return v14 & 1;
}

id sub_1DCF75218(__int128 *a1, char a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v6 = sub_1DD0DB04C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[1];
  v31 = *a1;
  v32 = v12;
  v33 = a1[2];
  v13 = *(a1 + 6);
  v14 = *(a1 + 7);
  v15 = *(a1 + 8);
  v16 = objc_allocWithZone(MEMORY[0x1E69C7AF0]);
  v17 = [v16 init];
  sub_1DD0DB03C();
  v18 = sub_1DD0DAFFC();
  v20 = v19;
  (*(v7 + 8))(v11, v6);
  sub_1DCB4D8E8(v18, v20, v17);

  sub_1DCB10E5C(0, &unk_1EDE46088, 0x1E69C77A0);
  v27[0] = v31;
  v27[1] = v32;
  v27[2] = v33;
  v28 = v13;
  v29 = v14;
  v30 = v15;
  v21 = sub_1DCF73E90(v27, a2);
  sub_1DCF75450(v21, v17);
  sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
  v22 = sub_1DD0DE8CC();
  [v17 setListenAfterSpeaking_];

  if (v14 >= 3)
  {
    v23 = [objc_allocWithZone(MEMORY[0x1E69C7B80]) init];
    sub_1DD0BEDA0(v13, v14, v23);
    [v17 setListenAfterSpeakingBehavior_];
  }

  if (v26)
  {
    [v17 setRequestEndBehavior_];
  }

  return v17;
}

void sub_1DCF75450(uint64_t a1, void *a2)
{
  sub_1DCB10E5C(0, &unk_1EDE46088, 0x1E69C77A0);
  v3 = sub_1DD0DE2DC();

  [a2 setDialogs_];
}

uint64_t sub_1DCF754D4(void (*a1)(unint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  result = sub_1DCB08B14(a3);
  v7 = 0;
  v37 = a3 & 0xC000000000000001;
  v38 = result;
  v36 = a3 & 0xFFFFFFFFFFFFFF8;
  v8 = MEMORY[0x1E69E7CC0];
  v31 = a3;
  v34 = a3 + 32;
  while (1)
  {
    if (v7 == v38)
    {
      return v8;
    }

    if (v37)
    {
      result = MEMORY[0x1E12A72C0](v7, v31);
    }

    else
    {
      if (v7 >= *(v36 + 16))
      {
        goto LABEL_44;
      }

      result = *(v34 + 8 * v7);
    }

    v9 = result;
    v10 = __OFADD__(v7, 1);
    v11 = v7 + 1;
    if (v10)
    {
      break;
    }

    v43 = result;
    v12 = v4;
    a1(&v42, &v43);
    if (v4)
    {

      return v8;
    }

    v13 = v42;
    if (v42 >> 62)
    {
      v14 = sub_1DD0DEB3C();
    }

    else
    {
      v14 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v8 >> 62;
    if (v8 >> 62)
    {
      result = sub_1DD0DEB3C();
    }

    else
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = result + v14;
    if (__OFADD__(result, v14))
    {
      goto LABEL_45;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v40 = v14;
    if (result)
    {
      if (v15)
      {
        goto LABEL_20;
      }

      v17 = v8 & 0xFFFFFFFFFFFFFF8;
      if (v16 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v15)
      {
LABEL_20:
        sub_1DD0DEB3C();
        goto LABEL_21;
      }

      v17 = v8 & 0xFFFFFFFFFFFFFF8;
    }

    v18 = *(v17 + 16);
LABEL_21:
    result = sub_1DD0DEC7C();
    v8 = result;
    v17 = result & 0xFFFFFFFFFFFFFF8;
LABEL_22:
    v39 = v11;
    v19 = *(v17 + 16);
    v20 = (*(v17 + 24) >> 1) - v19;
    v21 = v17 + 8 * v19;
    if (v13 >> 62)
    {
      v23 = sub_1DD0DEB3C();
      if (v23)
      {
        v24 = v23;
        result = sub_1DD0DEB3C();
        v33 = result;
        if (v20 < result)
        {
          goto LABEL_48;
        }

        if (v24 < 1)
        {
          goto LABEL_50;
        }

        v32 = v8;
        OUTLINED_FUNCTION_1_8();
        sub_1DCBF7DC0(&qword_1ECCAB138, &qword_1ECCAB130, &qword_1DD104A20);
        for (i = 0; i != v24; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB130, &qword_1DD104A20);
          v26 = sub_1DCBC99D8(v41, i, v13);
          v28 = *v27;
          v26(v41, 0);
          *(v21 + 32 + 8 * i) = v28;
        }

        v8 = v32;
        v4 = v12;
        v22 = v33;
        goto LABEL_32;
      }
    }

    else
    {
      v22 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
        if (v20 < v22)
        {
          goto LABEL_49;
        }

        sub_1DCB10E5C(0, &qword_1EDE46118, 0x1E69C7B08);
        swift_arrayInitWithCopy();
LABEL_32:

        if (v22 < v40)
        {
          goto LABEL_46;
        }

        if (v22 > 0)
        {
          v29 = *(v17 + 16);
          v10 = __OFADD__(v29, v22);
          v30 = v29 + v22;
          if (v10)
          {
            goto LABEL_47;
          }

          *(v17 + 16) = v30;
        }

        goto LABEL_37;
      }
    }

    if (v40 > 0)
    {
      goto LABEL_46;
    }

LABEL_37:
    v7 = v39;
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

void sub_1DCF75840()
{
  v4 = sub_1DD0DB04C();
  v0 = OUTLINED_FUNCTION_9(v4);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  OUTLINED_FUNCTION_16();
  sub_1DD0DCC3C();
}

id sub_1DCF77328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_allocWithZone(MEMORY[0x1E69C7AF8]) init];

  sub_1DCB673E0(v10);
  sub_1DCB6BBC0(a3, v9);
  sub_1DCB6BB04(a1, a2, v9);
  if (a5)
  {
    [v9 setRequestEndBehavior_];
  }

  return v9;
}

uint64_t sub_1DCF773E0()
{
  v0 = sub_1DD0DB04C();
  v1 = OUTLINED_FUNCTION_9(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1, v6);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  sub_1DD0DB03C();
  v10 = sub_1DD0DAFFC();
  (*(v3 + 8))(v9, v0);
  return v10;
}

uint64_t sub_1DCF774A8@<X0>(uint64_t *a1@<X0>, char a2@<W1>, char a3@<W2>, char *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  v9 = *a1;
  v10 = *a4;
  v12 = a7 & 1;
  result = sub_1DCCE2358(a2, 0, a3, v10, a5, a6, &v12);
  *a8 = result;
  return result;
}

uint64_t sub_1DCF774FC(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (sub_1DD0DEB3C())
    {
      goto LABEL_3;
    }

    return 0x3E6C696E3CLL;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0x3E6C696E3CLL;
  }

LABEL_3:
  sub_1DCB35460(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1E12A72C0](0, a1);
  }

  else
  {
    v2 = *(a1 + 32);
  }

  v3 = v2;
  v4 = [v2 description];

  v5 = sub_1DD0DDFBC();
  return v5;
}

uint64_t sub_1DCF775CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1838, &unk_1DD0FC960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DCF7766C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setCorrespondingSessionID_];
}

void sub_1DCF776C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1DD0DDF8C();

  [a4 setProperty:a1 forKey:v6];
}

uint64_t static SAUIAppPunchOut.makeAppStorePunchOutURL(queryItems:)()
{
  v0 = sub_1DD0DAB7C();
  v1 = OUTLINED_FUNCTION_9(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1, v6);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  sub_1DD0DAB6C();
  OUTLINED_FUNCTION_3_114();
  sub_1DD0DAB5C();
  MEMORY[0x1E12A31A0](0, 0xE000000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA1C70, &unk_1DD0F9830);
  v10 = *(sub_1DD0DAB1C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_2_105(v13, xmmword_1DD0E07C0);
  sub_1DD0DAB0C();

  sub_1DCBB97F4(v14);
  sub_1DD0DAB2C();
  sub_1DD0DAB3C();
  return (*(v3 + 8))(v9, v0);
}

id static SAUIAppPunchOut.makeForApp(app:)()
{
  v0 = sub_1DD0DB04C();
  v1 = OUTLINED_FUNCTION_9(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1, v6);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  v10 = sub_1DD0DD1BC();
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    v14 = [objc_allocWithZone(MEMORY[0x1E69C7B00]) init];
    sub_1DD0DB03C();
    v15 = sub_1DD0DAFFC();
    v17 = v16;
    (*(v3 + 8))(v9, v0);
    sub_1DCF74E94(v15, v17, v14);

    sub_1DCF7863C(v12, v13, v14);
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v18 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v18, qword_1EDE57E00);
    v19 = sub_1DD0DD8EC();
    v20 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DCAFC000, v19, v20, "No appIdentifier provided. Cannot create punchout command", v21, 2u);
      MEMORY[0x1E12A8390](v21, -1, -1);
    }

    return 0;
  }

  return v14;
}

id static SAUIAppPunchOut.makeAppStoreSearch()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v4 = &v37 - v3;
  v5 = sub_1DD0DB04C();
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6, v11);
  OUTLINED_FUNCTION_16();
  v14 = v13 - v12;
  v15 = sub_1DD0DAB7C();
  v16 = OUTLINED_FUNCTION_9(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16, v21);
  OUTLINED_FUNCTION_16();
  v24 = v23 - v22;
  v25 = [objc_allocWithZone(MEMORY[0x1E69C7B00]) init];
  sub_1DD0DAB6C();
  OUTLINED_FUNCTION_3_114();
  sub_1DD0DAB5C();
  MEMORY[0x1E12A31A0](0, 0xE000000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA1C70, &unk_1DD0F9830);
  v26 = *(sub_1DD0DAB1C() - 8);
  v27 = *(v26 + 72);
  v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v29 = swift_allocObject();
  OUTLINED_FUNCTION_2_105(v29, xmmword_1DD0E07C0);
  sub_1DD0DAB0C();
  sub_1DD0DAB2C();
  v30 = v25;
  sub_1DD0DB03C();
  v31 = sub_1DD0DAFFC();
  v33 = v32;
  (*(v8 + 8))(v14, v5);
  sub_1DCF74E94(v31, v33, v30);

  sub_1DD0DAB3C();
  v34 = sub_1DD0DAECC();
  v35 = 0;
  if (__swift_getEnumTagSinglePayload(v4, 1, v34) != 1)
  {
    v35 = sub_1DD0DAE6C();
    (*(*(v34 - 8) + 8))(v4, v34);
  }

  [v30 setPunchOutUri_];

  (*(v18 + 8))(v24, v15);
  return v30;
}

void sub_1DCF7863C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();

  [a3 setBundleId_];
}

id sub_1DCF786B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v8 setRedValue_];
  [v8 setGreenValue_];
  [v8 setBlueValue_];
  v9 = a4;
  [v8 setAlpha_];

  return v8;
}

id sub_1DCF787C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1DCB10E5C(0, &qword_1ECCAB1D0, 0x1E69C7B20);
  sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
  v7 = sub_1DD0DE8CC();
  result = sub_1DCF786B8(a2, a3, a3, v7);
  *a4 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ColorFactory(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

id sub_1DCF78960(char *a1)
{
  v1 = *a1;
  v2 = [objc_allocWithZone(MEMORY[0x1E69C7B80]) init];
  if ((v1 & 1) == 0)
  {
    v3 = *MEMORY[0x1E69C83B0];
    v4 = sub_1DD0DDFBC();
    sub_1DCF789BC(v4, v5, v2);
  }

  return v2;
}

void sub_1DCF789BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();

  [a3 setStartAlertSoundID_];
}

uint64_t sub_1DCF78A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = [objc_allocWithZone(MEMORY[0x1E69C79D0]) init];
  sub_1DCF7933C(a1, a2, v10);
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  sub_1DD0DE6DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DD0E07C0;
  *(v11 + 56) = sub_1DCB10E5C(0, &qword_1ECCAB1D8, 0x1E69C79D0);
  *(v11 + 64) = sub_1DCF79460(&unk_1ECCAB1E0, &qword_1ECCAB1D8, 0x1E69C79D0);
  *(v11 + 32) = v10;
  v12 = v10;
  sub_1DD0DD7EC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DD0E15D0;
  *(v13 + 32) = v12;
  v32 = v13;
  v14 = objc_allocWithZone(MEMORY[0x1E69C7AB0]);
  v31 = v12;
  v15 = [v14 init];
  if (a4)
  {
    v16 = a3;
  }

  else
  {
    v16 = 0xD000000000000015;
  }

  if (a4)
  {
    v17 = a4;
  }

  else
  {
    v17 = 0x80000001DD125F70;
  }

  sub_1DCF79394(v16, v17, v15);
  v18 = a5[3];
  v19 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v18);
  [v15 setEyesFree_];
  sub_1DD0DE6DC();
  v20 = OUTLINED_FUNCTION_0_110();
  *(v20 + 16) = xmmword_1DD0E07C0;
  *(v20 + 56) = sub_1DCB10E5C(0, &qword_1ECCAB1F0, 0x1E69C7AB0);
  *(v20 + 64) = sub_1DCF79460(&qword_1ECCAB1F8, &qword_1ECCAB1F0, 0x1E69C7AB0);
  *(v20 + 32) = v15;
  v21 = v15;
  sub_1DD0DD7EC();

  v22 = v21;
  MEMORY[0x1E12A6920]();
  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1DD0DE33C();
  }

  sub_1DD0DE3AC();
  v23 = [objc_allocWithZone(MEMORY[0x1E69C7A48]) init];
  sub_1DCC6589C(v32, v23);
  sub_1DD0DE6DC();
  v24 = OUTLINED_FUNCTION_0_110();
  *(v24 + 16) = xmmword_1DD0E07C0;
  *(v24 + 56) = sub_1DCB10E5C(0, &qword_1ECCAB200, 0x1E69C7A48);
  *(v24 + 64) = sub_1DCF79460(&qword_1ECCAB208, &qword_1ECCAB200, 0x1E69C7A48);
  *(v24 + 32) = v23;
  v25 = v23;
  sub_1DD0DD7EC();

  sub_1DCB10E5C(0, &qword_1ECCAB210, 0x1E69C7BD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E15D0;
  *(inited + 32) = v25;
  v27 = v25;
  sub_1DCF78E84(inited, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], 0, 0);
  v29 = v28;

  swift_setDeallocating();
  sub_1DCC65718();
  return v29;
}

void sub_1DCF78E84(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_allocWithZone(MEMORY[0x1E69C7BD8]) init];
  v11 = sub_1DCF791F8(a1, a4, a5);
  sub_1DCF14684(v11, v10);
  v12 = sub_1DCF791F8(a2, a4, a5);
  sub_1DCCA5348(v12, v10, &selRef_setFailureCommands_);
  v13 = sub_1DCF791F8(a3, a4, a5);
  sub_1DCCA5348(v13, v10, &selRef_setCancellationCommands_);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v14 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v14, qword_1EDE57E00);
  v15 = v10;
  v16 = sub_1DD0DD8EC();
  v17 = sub_1DD0DE6DC();

  if (!os_log_type_enabled(v16, v17))
  {

    goto LABEL_9;
  }

  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v37 = swift_slowAlloc();
  v38 = v37;
  *v18 = 138413058;
  *(v18 + 4) = v15;
  *v19 = v15;
  *(v18 + 12) = 2080;
  v20 = v15;
  v21 = sub_1DCF793F8(v20, &selRef_successCommands);

  if (!v21)
  {

    __break(1u);
    goto LABEL_11;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA1C80, &qword_1DD0E1D90);
  v23 = MEMORY[0x1E12A6960](v21, v22);
  v25 = v24;

  v26 = sub_1DCB10E9C(v23, v25, &v38);

  *(v18 + 14) = v26;
  *(v18 + 22) = 2080;
  v27 = sub_1DCF793F8(v20, &selRef_failureCommands);

  if (!v27)
  {
LABEL_11:

    __break(1u);
    goto LABEL_12;
  }

  v28 = MEMORY[0x1E12A6960](v27, v22);
  v30 = v29;

  v31 = sub_1DCB10E9C(v28, v30, &v38);

  *(v18 + 24) = v31;
  *(v18 + 32) = 2080;
  v32 = sub_1DCF793F8(v20, &selRef_cancellationCommands);

  if (v32)
  {
    v33 = MEMORY[0x1E12A6960](v32, v22);
    v35 = v34;

    v36 = sub_1DCB10E9C(v33, v35, &v38);

    *(v18 + 34) = v36;
    _os_log_impl(&dword_1DCAFC000, v16, v17, "unlockDeviceCommand: %@\nsuccessCommands: %s\nfailureCommands: %s\ncancellationCommands: %s", v18, 0x2Au);
    sub_1DCC3C9EC(v19);
    MEMORY[0x1E12A8390](v19, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v37, -1, -1);
    MEMORY[0x1E12A8390](v18, -1, -1);
LABEL_9:

    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1DCF791F8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    v5 = sub_1DD0DEB3C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v11 = MEMORY[0x1E69E7CC0];
    result = sub_1DD0DED0C();
    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1E12A72C0](v7, a1);
        if (!a3)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
        swift_unknownObjectRetain();
        if (!a3)
        {
LABEL_10:
          v9 = 0;
          goto LABEL_11;
        }
      }

      v9 = sub_1DD0DDF8C();
LABEL_11:
      ++v7;
      [v8 setRefId_];

      sub_1DD0DECDC();
      v10 = *(v11 + 16);
      sub_1DD0DED1C();
      sub_1DD0DED2C();
      sub_1DD0DECEC();
      if (v5 == v7)
      {
        return v11;
      }
    }
  }

  return result;
}

void sub_1DCF7933C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setRequestId_];
}

void sub_1DCF79394(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();

  [a3 setUtterance_];
}

uint64_t sub_1DCF793F8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA1C80, &qword_1DD0E1D90);
  v4 = sub_1DD0DE2EC();

  return v4;
}

uint64_t sub_1DCF79460(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DCB10E5C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1DCF794B0(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E69C7BE0]) init];
  v9 = sub_1DCF791F8(a1, a3, a4);
  sub_1DCCA5348(v9, v8, &selRef_setSuccessCommands_);
  v10 = sub_1DCF791F8(a2, a3, a4);
  sub_1DCCA5348(v10, v8, &selRef_setFailureCommands_);
  return v8;
}

id static SAUIVisualResponseSnippet.makeVisualSnippet(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = [objc_allocWithZone(MEMORY[0x1E69C7BF0]) init];
  v4 = sub_1DD0DAEFC();
  [v3 setModelData_];

  return v3;
}

uint64_t ScreentimeCheckFlow.__allocating_init(strategy:outputPublisher:)()
{
  return sub_1DCF795EC();
}

{
  return sub_1DCF795EC();
}

uint64_t sub_1DCF795EC()
{
  OUTLINED_FUNCTION_18_24();
  swift_allocObject();
  v2 = v1[4];
  __swift_mutable_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_19_47();
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = OUTLINED_FUNCTION_10_75(v7, v13);
  v9(v8);
  v10 = OUTLINED_FUNCTION_18_47();
  v11 = v0(v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v1);
  return v11;
}

void ScreentimeCheckFlowStrategy.makeAppRestrictedByScreentimeResponse(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v11 - v7;
  v9 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_1DD104A88;
  v10[5] = 0;
  v10[6] = a1;
  v10[7] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF797E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return ScreentimeCheckFlowStrategy.makeAppRestrictedByScreentimeResponse()(a1);
}

void sub_1DCF7988C()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  v1 = qword_1EDE46630;
  sub_1DCB4E718((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v0[5] = type metadata accessor for RefreshableDeviceState();
  v0[6] = &protocol witness table for RefreshableDeviceState;
  v0[2] = v1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF7996C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 112) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v12();
  }
}

uint64_t sub_1DCF79AAC(uint64_t a1, uint64_t a2)
{
  v2[26] = a1;
  v2[27] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[29] = v4;
  *v4 = v2;
  v4[1] = sub_1DCF79B80;

  return static ResponseTemplates.appDisabledByScreenTime()((v2 + 2));
}

uint64_t sub_1DCF79B80()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 232);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 240) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCF79C7C()
{
  v9 = v0;
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  memcpy((v0 + 88), (v0 + 16), 0x48uLL);
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  v4 = v2[3];
  v5 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  (*(v5 + 96))(v4, v5);
  v6 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v6);
  v7 = type metadata accessor for AceOutput();
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0;
  *(v0 + 160) = 0u;
  v3[3] = v7;
  v3[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1Tm(v3);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
}

uint64_t sub_1DCF79E04()
{
  OUTLINED_FUNCTION_41();
  v24 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[30];
  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[30];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    v0[25] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v10 = sub_1DD0DE02C();
    v12 = sub_1DCB10E9C(v10, v11, &v23);

    *(v7 + 4) = v12;
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v18 = v0[30];
  v19 = v0[28];
  swift_willThrow();

  OUTLINED_FUNCTION_29();
  v21 = v0[30];

  return v20();
}

uint64_t sub_1DCF79FA4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return ScreentimeCheckFlowStrategyAsync.makeAppRestrictedByScreentimeResponse()(a1);
}

void sub_1DCF7A050()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  v1 = qword_1EDE46630;
  sub_1DCB4E718((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v0[5] = type metadata accessor for RefreshableDeviceState();
  v0[6] = &protocol witness table for RefreshableDeviceState;
  v0[2] = v1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF7A130()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 112) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v12();
  }
}

uint64_t ScreentimeCheckFlow.init(strategy:outputPublisher:)()
{
  return sub_1DCF7A290();
}

{
  return sub_1DCF7A290();
}

uint64_t sub_1DCF7A290()
{
  OUTLINED_FUNCTION_18_24();
  v3 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v2, *(v2 + 24));
  OUTLINED_FUNCTION_19_47();
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = OUTLINED_FUNCTION_10_75(v8, v14);
  v10(v9);
  v11 = OUTLINED_FUNCTION_18_47();
  v12 = v0(v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v1);
  return v12;
}

uint64_t sub_1DCF7A35C(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF7A370()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[12];
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  if ((*(v3 + 16))(v2, v3))
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v4 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v4, qword_1EDE57E00);
    v5 = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v5, v6))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      OUTLINED_FUNCTION_80();
    }

    v12 = v0[11];
    v13 = v0[12];

    *(v13 + 16) = 1;
    static ExecuteResponse.complete()();
    OUTLINED_FUNCTION_29();

    return v14();
  }

  else
  {
    *(v0[12] + 16) = 2;
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v16 = sub_1DD0DD8FC();
    v0[13] = __swift_project_value_buffer(v16, qword_1EDE57E00);
    v17 = sub_1DD0DD8EC();
    v18 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v17, v18))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v19, v20, v21, v22, v23, 2u);
      OUTLINED_FUNCTION_80();
    }

    v24 = v1[7];
    __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
    v25 = *(v24 + 8);
    OUTLINED_FUNCTION_25_1();
    v32 = (v26 + *v26);
    v28 = *(v27 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    v0[14] = v29;
    *v29 = v30;
    v31 = OUTLINED_FUNCTION_17_46(v29);

    return v32(v31);
  }
}

uint64_t sub_1DCF7A63C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCF7A738()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 96);
  v2 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
  v3 = *(v2 + 8);
  v9 = (v3 + *v3);
  v4 = v3[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 128) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_17_46(v5);

  return v9(v7);
}

uint64_t sub_1DCF7A850()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 136) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCF7A94C()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 88);
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCF7A9AC()
{
  OUTLINED_FUNCTION_41();
  v20 = v0;
  v1 = v0[15];
  v2 = v0[13];
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    OUTLINED_FUNCTION_25_29(4.8149e-34);
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[9];
    v11 = sub_1DD0DF18C();
    v13 = sub_1DCB10E9C(v11, v12, &v19);

    *(v6 + 4) = v13;
    OUTLINED_FUNCTION_89(&dword_1DCAFC000, v14, v15, "Unable to make response for screentime-restricted app. Will ignore and Flow should exit. %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  else
  {
  }

  v16 = v0[11];
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v17();
}

uint64_t sub_1DCF7AAF4()
{
  OUTLINED_FUNCTION_41();
  v20 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[17];
  v2 = v0[13];
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    OUTLINED_FUNCTION_25_29(4.8149e-34);
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[9];
    v11 = sub_1DD0DF18C();
    v13 = sub_1DCB10E9C(v11, v12, &v19);

    *(v6 + 4) = v13;
    OUTLINED_FUNCTION_89(&dword_1DCAFC000, v14, v15, "Unable to make response for screentime-restricted app. Will ignore and Flow should exit. %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  else
  {
  }

  v16 = v0[11];
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v17();
}

uint64_t ScreentimeCheckFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  return v0;
}

uint64_t ScreentimeCheckFlow.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return swift_deallocClassInstance();
}

void sub_1DCF7ACAC(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DCF7AD48()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_13_17(v3);

  return sub_1DCF7A35C(v5);
}

BOOL sub_1DCF7ADD0@<W0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_1DCF7A250();
  *a1 = result;
  return result;
}

uint64_t sub_1DCF7ADFC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCF7AE1C, 0, 0);
}

uint64_t sub_1DCF7AE1C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(MEMORY[0x1E69E8920] + 4);
  v2 = swift_task_alloc();
  v0[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  *v2 = v0;
  v2[1] = sub_1DCCD0E4C;
  v3 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DE38](v5);
}

uint64_t sub_1DCF7AEF8(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  v10 = a2[5];
  v11 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v10);
  (*(v5 + 16))(v9, a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v9, v4);
  (*(v11 + 8))(sub_1DCF7B950, v13, v10, v11);
}

uint64_t sub_1DCF7B070()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 24))(v1, v2) & 1;
}

uint64_t sub_1DCF7B0C8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCF7ADFC(a1);
}

uint64_t sub_1DCF7B18C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[3] = a4;
  v18[4] = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v18);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1Tm, a2, a4);
  *(a3 + 16) = 0;
  sub_1DCB17CA0(a1, &v15);
  v10 = type metadata accessor for ScreentimeCheckFlowStrategyAsyncAdapter();
  v11 = swift_allocObject();
  sub_1DCAFF9E8(&v15, v11 + 16);
  *(a3 + 48) = v10;
  *(a3 + 56) = &off_1F5872998;
  *(a3 + 24) = v11;
  sub_1DCB17CA0(v18, &v15);
  v12 = type metadata accessor for OutputPublisherAsyncAdapter();
  v13 = swift_allocObject();
  sub_1DCAFF9E8(&v15, v13 + 16);
  v16 = v12;
  v17 = &protocol witness table for OutputPublisherAsyncAdapter;
  *&v15 = v13;
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  sub_1DCAFF9E8(&v15, a3 + 64);
  return a3;
}

uint64_t sub_1DCF7B2B0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a3 + 88) = a4;
  *(a3 + 96) = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((a3 + 64));
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1Tm, a2, a4);
  *(a3 + 16) = 0;
  sub_1DCAFF9E8(a1, a3 + 24);
  return a3;
}

unint64_t sub_1DCF7B334(uint64_t a1)
{
  result = sub_1DCF7B35C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DCF7B35C()
{
  result = qword_1ECCAB220;
  if (!qword_1ECCAB220)
  {
    type metadata accessor for ScreentimeCheckFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB220);
  }

  return result;
}

uint64_t dispatch thunk of ScreentimeCheckFlowStrategy.makeAppRestrictedByScreentimeResponse()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_18_24();
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_25_1();
  v11 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_29_2(v6);

  return v9(v8);
}

uint64_t dispatch thunk of ScreentimeCheckFlowStrategyAsync.makeAppRestrictedByScreentimeResponse()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_18_24();
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_25_1();
  v11 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_29_2(v6);

  return v9(v8);
}

uint64_t dispatch thunk of ScreentimeCheckFlow.__allocating_init(strategy:outputPublisher:)()
{
  return (*(v0 + 136))();
}

{
  return (*(v0 + 144))();
}

uint64_t dispatch thunk of ScreentimeCheckFlow.execute()()
{
  v1 = *(*v0 + 168);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_13_17(v4);

  return v8(v6);
}

_BYTE *storeEnumTagSinglePayload for ScreentimeCheckFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DCF7B8F4()
{
  result = qword_1ECCAB228;
  if (!qword_1ECCAB228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB228);
  }

  return result;
}

uint64_t sub_1DCF7B950(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00) - 8) + 80);

  return sub_1DCE66C04(a1);
}

uint64_t sub_1DCF7B9CC(char a1, char a2)
{
  sub_1DCF7C268(a1);
  v3 = sub_1DCC6A084();

  if (v3 == 2)
  {
    v4 = a2;
  }

  else
  {
    v4 = v3;
  }

  return v4 & 1;
}

NSObject *sub_1DCF7BA1C(void *a1, void *a2)
{
  v5 = [a1 nlParameters];
  v6 = sub_1DD0DDE6C();

  type metadata accessor for ParameterWrapper();
  *(swift_initStackObject() + 16) = v6;
  v7 = sub_1DCC6A1F8(0x69446D6574737973, 0xEF746341676F6C61);
  if (v7)
  {
    v8 = v7;
    inited = swift_initStackObject();
    *(inited + 16) = v8;
    sub_1DCF7BE8C();
    if (v2)
    {
    }

    else
    {
      OUTLINED_FUNCTION_0_111();
    }

    swift_setDeallocating();
    v10 = *(inited + 16);
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v11 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v11, qword_1EDE57E00);
    v8 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v8, v12))
    {
      v13 = swift_slowAlloc();
      v17 = a2;
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1DCB10E9C(0x69446D6574737973, 0xEF746341676F6C61, &v18);
      _os_log_impl(&dword_1DCAFC000, v8, v12, "No configuration defined for '%s'. Inferring SDA from available context", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      v15 = v14;
      a2 = v17;
      MEMORY[0x1E12A8390](v15, -1, -1);
      MEMORY[0x1E12A8390](v13, -1, -1);
    }

    sub_1DCF7BC7C(a1, a2);
    OUTLINED_FUNCTION_0_111();
  }

  return v8;
}

uint64_t sub_1DCF7BC7C(void *a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  v5 = __swift_project_boxed_opaque_existential_1(a2, v3);
  v6 = sub_1DCCEFBC4(sub_1DCF7C200, 0, v3, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  if ([a1 listenAfterSpeaking])
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v7 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v7, qword_1EDE57E00);
    v8 = sub_1DD0DD8EC();
    v9 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DCAFC000, v8, v9, "We are listening so SystemGaveOptions will be used.", v10, 2u);
LABEL_10:
      MEMORY[0x1E12A8390](v10, -1, -1);
    }
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v11 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v11, qword_1EDE57E00);
    v8 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v8, v12))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DCAFC000, v8, v12, "We are not listening so SystemInformed will be used.", v10, 2u);
      goto LABEL_10;
    }
  }

  return v6;
}

uint64_t sub_1DCF7BE8C()
{
  result = sub_1DD0B3E1C();
  if (!v0)
  {
    v3 = result;
    v4 = v2;
    v5 = result == 0x6E496D6574737953 && v2 == 0xEE0064656D726F66;
    if (v5 || (sub_1DD0DF0AC() & 1) != 0)
    {

      return sub_1DD0B3C64();
    }

    else
    {
      v6 = v3 == 0xD000000000000011 && 0x80000001DD126090 == v4;
      if (v6 || (sub_1DD0DF0AC() & 1) != 0)
      {

        return sub_1DD0B3C64();
      }

      else
      {
        v7 = v3 == 0x72506D6574737953 && v4 == 0xEE00646574706D6FLL;
        if (v7 || (sub_1DD0DF0AC() & 1) != 0)
        {

          return sub_1DD0B3E1C();
        }

        else
        {
          v8 = v3 == 0x664F6D6574737953 && v4 == 0xED00006465726566;
          if (v8 || (sub_1DD0DF0AC() & 1) != 0)
          {

            sub_1DCF7B9CC(5, 0);
            return sub_1DCC69D70();
          }

          else
          {
            if (qword_1EDE4F900 != -1)
            {
              swift_once();
            }

            v9 = sub_1DD0DD8FC();
            __swift_project_value_buffer(v9, qword_1EDE57E00);

            v10 = sub_1DD0DD8EC();
            v11 = sub_1DD0DE6EC();

            if (os_log_type_enabled(v10, v11))
            {
              v12 = swift_slowAlloc();
              v13 = swift_slowAlloc();
              v15 = v13;
              *v12 = 136315138;
              *(v12 + 4) = sub_1DCB10E9C(v3, v4, &v15);
              _os_log_impl(&dword_1DCAFC000, v10, v11, "Unsupported SDA type provided: '%s'. Not sure what to build. Returning nil", v12, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v13);
              MEMORY[0x1E12A8390](v13, -1, -1);
              MEMORY[0x1E12A8390](v12, -1, -1);
            }

            sub_1DCF7C3AC();
            swift_allocError();
            *v14 = v3;
            v14[1] = v4;
            return swift_willThrow();
          }
        }
      }
    }
  }

  return result;
}

void sub_1DCF7C200(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 eventId];
  v4 = sub_1DD0DDFBC();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

unint64_t sub_1DCF7C268(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x746567726174;
      break;
    case 2:
      result = 0x7365697469746E65;
      break;
    case 3:
      result = 0x6465726566666FLL;
      break;
    case 4:
      result = 0x736563696F6863;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DCF7C314(uint64_t a1, uint64_t a2)
{
  sub_1DD0DEC1C();

  MEMORY[0x1E12A6780](a1, a2);
  MEMORY[0x1E12A6780](10535, 0xE200000000000000);
  return 0xD000000000000015;
}

unint64_t sub_1DCF7C3AC()
{
  result = qword_1ECCAB230[0];
  if (!qword_1ECCAB230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCAB230);
  }

  return result;
}

void *SemanticValueConcept.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return v0;
}

uint64_t SemanticValueConcept.label.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SemanticValueConcept.value.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SemanticValueConcept.conceptType.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

void *sub_1DCF7C4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = 0x6369746E616D6553;
  v4[7] = 0xEF747065636E6F43;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t SemanticValueConcept.__deallocating_deinit()
{
  SemanticValueConcept.deinit();

  return swift_deallocClassInstance();
}

uint64_t _FlowPlanBody1<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1, a1);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  return (*(v5 + 32))(a3, v8, a2);
}

uint64_t sub_1DCF7C6B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1DCF7C740(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1DCF7C87C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCF7CA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 48))();
  swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DDAEC();
  swift_getWitnessTable();
  v3 = sub_1DD0DDBFC();

  return v3;
}

unint64_t sub_1DCF7CB78()
{
  swift_getWitnessTable();

  return ReactiveFlowPlan.description.getter();
}

uint64_t sub_1DCF7CC10(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

__n128 FlowMessageOutput.init(message:flowActivity:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *a2;
  v4 = *(a2 + 16);
  *a3 = *a2;
  *(a3 + 16) = v4;
  *(a3 + 32) = *(a2 + 32);
  *(a3 + 40) = a1;
  return result;
}

__n128 FlowMessageTransportableOutput.init(message:flowActivity:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DCAFF9E8(a1, a3 + 40);
  result = *a2;
  v6 = *(a2 + 16);
  *a3 = *a2;
  *(a3 + 16) = v6;
  *(a3 + 32) = *(a2 + 32);
  return result;
}

uint64_t sub_1DCF7CCC8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    (**(v4 - 8))(a1, a2);
  }

  else
  {
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    *(a1 + 32) = *(a2 + 32);
  }

  v7 = *(a2 + 40);
  *(a1 + 40) = v7;
  v8 = v7;
  return a1;
}

uint64_t sub_1DCF7CD50(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 3);
  if (!*(a1 + 24))
  {
    if (v4)
    {
      *(a1 + 24) = v4;
      *(a1 + 32) = *(a2 + 4);
      (**(v4 - 8))(a1, a2);
      goto LABEL_8;
    }

LABEL_7:
    v5 = *a2;
    v6 = a2[1];
    *(a1 + 32) = *(a2 + 4);
    *a1 = v5;
    *(a1 + 16) = v6;
    goto LABEL_8;
  }

  if (!v4)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_1(a1, a2);
LABEL_8:
  v7 = *(a2 + 5);
  v8 = *(a1 + 40);
  *(a1 + 40) = v7;
  v9 = v7;

  return a1;
}

uint64_t sub_1DCF7CE04(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  v6 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  return a1;
}

uint64_t sub_1DCF7CE54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1DCF7CE94(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t destroy for FlowMessageTransportableOutput(uint64_t *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1 + 5);
}

uint64_t initializeWithCopy for FlowMessageTransportableOutput(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    (**(v4 - 8))(a1, a2);
  }

  else
  {
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    *(a1 + 32) = *(a2 + 32);
  }

  v7 = *(a2 + 64);
  *(a1 + 64) = v7;
  (**(v7 - 8))(a1 + 40, a2 + 40);
  return a1;
}

uint64_t assignWithCopy for FlowMessageTransportableOutput(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 3);
  if (!*(a1 + 24))
  {
    if (v4)
    {
      *(a1 + 24) = v4;
      *(a1 + 32) = *(a2 + 4);
      (**(v4 - 8))(a1, a2);
      goto LABEL_8;
    }

LABEL_7:
    v5 = *a2;
    v6 = a2[1];
    *(a1 + 32) = *(a2 + 4);
    *a1 = v5;
    *(a1 + 16) = v6;
    goto LABEL_8;
  }

  if (!v4)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_1(a1, a2);
LABEL_8:
  __swift_assign_boxed_opaque_existential_1((a1 + 40), a2 + 5);
  return a1;
}

uint64_t assignWithTake for FlowMessageTransportableOutput(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + 40));
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t getEnumTagSinglePayload for FlowMessageTransportableOutput(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
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

uint64_t storeEnumTagSinglePayload for FlowMessageTransportableOutput(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DCF7D1C4(uint64_t a1)
{
  sub_1DCB17CA0(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2B8, &qword_1DD104F78);
  v1 = swift_dynamicCast();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  return v1;
}

uint64_t sub_1DCF7D248(uint64_t a1)
{
  *(v2 + 904) = v1;
  *(v2 + 896) = a1;
  v3 = OUTLINED_FUNCTION_15_0();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCF7D274()
{
  sub_1DCB17CA0(*(v0 + 896), v0 + 616);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2B8, &qword_1DD104F78);
  if (swift_dynamicCast())
  {
    sub_1DCAFF9E8((v0 + 656), v0 + 576);
    sub_1DCB17CA0(v0 + 576, v0 + 696);
    if (OUTLINED_FUNCTION_8_74())
    {
      v1 = *(v0 + 352);
      *(v0 + 528) = *(v0 + 336);
      *(v0 + 544) = v1;
      *(v0 + 560) = *(v0 + 368);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v2 = sub_1DD0DD8FC();
      *(v0 + 912) = __swift_project_value_buffer(v2, qword_1EDE57E00);
      v3 = sub_1DD0DD8EC();
      v4 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v4))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "Flow submitted an ExternalActivationRequest");
        OUTLINED_FUNCTION_80();
      }

      v7 = *(v0 + 904);

      v8 = v7[5];
      v9 = v7[6];
      __swift_project_boxed_opaque_existential_1(v7 + 2, v8);
      v10 = *(v0 + 568);
      v11 = *(v9 + 144);
      v60 = (v11 + *v11);
      v12 = v11[1];
      v13 = swift_task_alloc();
      *(v0 + 920) = v13;
      *v13 = v0;
      v13[1] = sub_1DCF7DBAC;
      v14 = v10;
      v15 = v8;
      v16 = v9;
      v17 = v60;

      return v17(v14, v15, v16);
    }

    if (OUTLINED_FUNCTION_8_74())
    {
      v23 = *(v0 + 400);
      *(v0 + 432) = *(v0 + 384);
      *(v0 + 448) = v23;
      *(v0 + 464) = *(v0 + 416);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v24 = sub_1DD0DD8FC();
      *(v0 + 936) = __swift_project_value_buffer(v24, qword_1EDE57E00);
      sub_1DCF7E5B0(v0 + 432, v0 + 480);
      v25 = sub_1DD0DD8EC();
      v26 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = OUTLINED_FUNCTION_151();
        v28 = swift_slowAlloc();
        *v27 = 138412290;
        v29 = *(v0 + 520);
        sub_1DCF7E60C(v0 + 480);
        *(v27 + 4) = v29;
        *v28 = v29;
        _os_log_impl(&dword_1DCAFC000, v25, v26, "Flow submitted a Message: %@", v27, 0xCu);
        sub_1DCB16D50(v28, qword_1ECCA8AD0, &qword_1DD0E4F90);
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      else
      {

        sub_1DCF7E60C(v0 + 480);
      }

      v37 = *(v0 + 472);
      *(v0 + 872) = v37;
      sub_1DD0DD14C();
      v38 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2C8, &unk_1DD104F88);
      if (swift_dynamicCast())
      {
        v39 = *(v0 + 904);
        sub_1DCAFF9E8((v0 + 816), v0 + 776);
        v40 = v39[5];
        v41 = v39[6];
        __swift_project_boxed_opaque_existential_1(v39 + 2, v40);
        OUTLINED_FUNCTION_5_101();
        v61 = (v42 + *v42);
        v44 = *(v43 + 4);
        v45 = swift_task_alloc();
        *(v0 + 944) = v45;
        *v45 = v0;
        v45[1] = sub_1DCF7DE18;
        v14 = v0 + 776;
LABEL_40:
        v15 = v40;
        v16 = v41;
        v17 = v61;

        return v17(v14, v15, v16);
      }

      *(v0 + 848) = 0;
      *(v0 + 816) = 0u;
      *(v0 + 832) = 0u;
      sub_1DCB16D50(v0 + 816, &qword_1ECCAB2D0, &qword_1DD104F98);
      v51 = sub_1DD0DD8EC();
      v52 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_23(v52))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v53, v54, "Message cannot be transported over XPC");
        OUTLINED_FUNCTION_80();
      }

      sub_1DCF7E60C(v0 + 432);
    }

    else
    {
      if (OUTLINED_FUNCTION_8_74())
      {
        memcpy((v0 + 176), (v0 + 96), 0x50uLL);
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v30 = sub_1DD0DD8FC();
        *(v0 + 960) = __swift_project_value_buffer(v30, qword_1EDE57E00);
        sub_1DCF7E500(v0 + 176, v0 + 256);
        v31 = sub_1DD0DD8EC();
        v32 = sub_1DD0DE6DC();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = OUTLINED_FUNCTION_151();
          v34 = swift_slowAlloc();
          *v33 = 138412290;
          sub_1DCB17CA0(v0 + 296, v0 + 736);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2C8, &unk_1DD104F88);
          sub_1DD0DD14C();
          v35 = swift_dynamicCast();
          v36 = 0;
          if (v35)
          {
            v36 = *(v0 + 864);
          }

          *(v33 + 4) = v36;
          *v34 = v36;
          sub_1DCF7E55C(v0 + 256);
          _os_log_impl(&dword_1DCAFC000, v31, v32, "Flow submitted a Message: %@", v33, 0xCu);
          sub_1DCB16D50(v34, qword_1ECCA8AD0, &qword_1DD0E4F90);
          OUTLINED_FUNCTION_80();
          OUTLINED_FUNCTION_80();
        }

        else
        {

          sub_1DCF7E55C(v0 + 256);
        }

        v55 = *(v0 + 904);
        v40 = v55[5];
        v41 = v55[6];
        __swift_project_boxed_opaque_existential_1(v55 + 2, v40);
        OUTLINED_FUNCTION_5_101();
        v61 = (v56 + *v56);
        v58 = *(v57 + 4);
        v59 = swift_task_alloc();
        *(v0 + 968) = v59;
        *v59 = v0;
        v59[1] = sub_1DCF7E068;
        v14 = v0 + 216;
        goto LABEL_40;
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v46 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v46, qword_1EDE57E00);
      v47 = sub_1DD0DD8EC();
      v48 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_23(v48))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v49, v50, "ServiceBridgeOutputHandler does not support this type of ServiceBridgeOutput yet");
        OUTLINED_FUNCTION_80();
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 576));
    OUTLINED_FUNCTION_1_120();
  }

  else
  {
    *(v0 + 688) = 0;
    *(v0 + 656) = 0u;
    *(v0 + 672) = 0u;
    sub_1DCB16D50(v0 + 656, &qword_1ECCAB2C0, &qword_1DD104F80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD0E07C0;
    *(inited + 32) = 0x6567617373654DLL;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = 0xD000000000000041;
    *(inited + 56) = 0x80000001DD126170;
    v20 = sub_1DD0DDE9C();
    v21 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1DCF7E450(0xD00000000000001CLL, 0x80000001DD126150, 2000, v20);
    swift_willThrow();
    v22 = *(v0 + 8);
  }

  return v22();
}

uint64_t sub_1DCF7DBAC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v4 = *(v3 + 920);
  *v2 = *v0;
  *(v1 + 984) = v5;
  *(v1 + 928) = v6;

  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF7DC98()
{
  v18 = v0;
  v2 = *(v0 + 928);
  if (*(v0 + 984))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 576));
  }

  else
  {
    v3 = *(v0 + 912);
    v4 = v2;
    v5 = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 928);
      OUTLINED_FUNCTION_151();
      v8 = OUTLINED_FUNCTION_52_0();
      v17 = v8;
      *v1 = 136315138;
      *(v0 + 888) = v7;
      v9 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E48, &qword_1DD0E24D0);
      v10 = sub_1DD0DE02C();
      v12 = sub_1DCB10E9C(v10, v11, &v17);

      *(v1 + 4) = v12;
      OUTLINED_FUNCTION_8_4(&dword_1DCAFC000, v13, v14, "There was an error while submitting ExternalActivationRequest: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 576));
  }

  sub_1DCF7E660(v0 + 528);
  OUTLINED_FUNCTION_1_120();

  return v15();
}

uint64_t sub_1DCF7DE18()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v4 = *(v3 + 944);
  *v2 = *v0;
  *(v1 + 985) = v5;
  *(v1 + 952) = v6;

  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF7DF04()
{
  v18 = v0;
  v2 = *(v0 + 952);
  if ((*(v0 + 985) & 1) == 0)
  {
    v3 = *(v0 + 936);
    v4 = v2;
    v5 = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 952);
      OUTLINED_FUNCTION_151();
      v8 = OUTLINED_FUNCTION_52_0();
      v17 = v8;
      *v1 = 136315138;
      *(v0 + 880) = v7;
      v9 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E48, &qword_1DD0E24D0);
      v10 = sub_1DD0DE02C();
      v12 = sub_1DCB10E9C(v10, v11, &v17);

      *(v1 + 4) = v12;
      OUTLINED_FUNCTION_8_4(&dword_1DCAFC000, v13, v14, "There was an error while posting BridgeMessage: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 776));
  sub_1DCF7E60C(v0 + 432);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 576));
  OUTLINED_FUNCTION_1_120();

  return v15();
}

uint64_t sub_1DCF7E068()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  v4 = *(v3 + 968);
  *v2 = *v0;
  *(v1 + 986) = v5;
  *(v1 + 976) = v6;

  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF7E154()
{
  v18 = v0;
  v2 = *(v0 + 976);
  if ((*(v0 + 986) & 1) == 0)
  {
    v3 = *(v0 + 960);
    v4 = v2;
    v5 = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 976);
      OUTLINED_FUNCTION_151();
      v8 = OUTLINED_FUNCTION_52_0();
      v17 = v8;
      *v1 = 136315138;
      *(v0 + 856) = v7;
      v9 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E48, &qword_1DD0E24D0);
      v10 = sub_1DD0DE02C();
      v12 = sub_1DCB10E9C(v10, v11, &v17);

      *(v1 + 4) = v12;
      OUTLINED_FUNCTION_8_4(&dword_1DCAFC000, v13, v14, "There was an error while posting BridgeMessage: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }
  }

  sub_1DCF7E55C(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 576));
  OUTLINED_FUNCTION_1_120();

  return v15();
}

uint64_t sub_1DCF7E2CC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCF7E364;

  return sub_1DCF7D248(a1);
}

uint64_t sub_1DCF7E364()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 16);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

id sub_1DCF7E450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1DD0DDF8C();

  if (a4)
  {
    v8 = sub_1DD0DDE4C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

void sub_1DCF7E6B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1DD0DCF8C();
}

void SiriEnvironment.sessionConfigurationProvider.modify(void *a1)
{
  a1[1] = v1;
  a1[2] = type metadata accessor for SessionConfigurationProvider();
  a1[3] = OUTLINED_FUNCTION_0_113(&qword_1EDE46EA0);
  sub_1DD0DCA7C();
}

uint64_t SessionConfigurationProvider.mock.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

void SessionConfigurationProvider.__allocating_init(storage:)()
{
  OUTLINED_FUNCTION_5_2();
  swift_allocObject();
  SessionConfigurationProvider.init(storage:)();
}

void SessionConfigurationProvider.init(storage:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2D8, &qword_1DD104FA0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  OUTLINED_FUNCTION_45_0();
  MEMORY[0x1EEE9AC00](v3, v4);
  v5 = OUTLINED_FUNCTION_4_106();
  OUTLINED_FUNCTION_5_102(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2E0, &qword_1DD104FA8);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1DD0DCE9C();
}

void SessionConfigurationProvider.__allocating_init(sessionConfiguration:)()
{
  OUTLINED_FUNCTION_5_2();
  swift_allocObject();
  SessionConfigurationProvider.init(sessionConfiguration:)();
}

void sub_1DCF7E958(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2D8, &qword_1DD104FA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v10 - v7;
  sub_1DCB70320(a1, &v10 - v7);
  v9 = *a2;
  sub_1DCB703F8(v8);
}

void SessionConfigurationProvider.$sessionConfiguration.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  sub_1DD0DCF8C();
}

void sub_1DCF7EA44(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2E8, &qword_1DD105110);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1);
  v10 = *a2;
  sub_1DCF7EB18(v8);
}

void sub_1DCF7EB18(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB2E8, &qword_1DD105110);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  swift_beginAccess();
  v9 = *(v1 + 24);
  (*(v4 + 16))(v8, a1, v3);
  sub_1DD0DCF8C();
}

uint64_t static FlowLocator.findFlow(forInvocation:)()
{
  v1 = type metadata accessor for Parse(0);
  v2 = OUTLINED_FUNCTION_13_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  OUTLINED_FUNCTION_1_122(v6, v10);
  v7 = qword_1EDE4F518;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v8 = sub_1DCD3B154();
  sub_1DCB29EBC(v0);
  return v8;
}

uint64_t sub_1DCF7ED70()
{
  v1 = type metadata accessor for Parse(0);
  v2 = OUTLINED_FUNCTION_13_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  OUTLINED_FUNCTION_1_122(v6, v10);
  v7 = qword_1EDE4F518;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v8 = sub_1DCD3C84C(v0);
  sub_1DCB29EBC(v0);
  return v8;
}

uint64_t static FlowLocator.findFlowWrapper(forInvocation:)(uint64_t a1)
{
  v3 = type metadata accessor for Parse(0);
  *(v1 + 16) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();
  *(v1 + 32) = *a1;
  *(v1 + 48) = *(a1 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DCF7EEC0, 0, 0);
}

uint64_t sub_1DCF7EEC0()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[2];
  *v3 = v0[4];
  v3[1] = v1;
  v3[2] = v2;
  swift_storeEnumTagMultiPayload();
  v5 = qword_1EDE4F518;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v6 = v0[3];
  v7 = sub_1DCD3B154();
  sub_1DCB29EBC(v6);

  v8 = v0[1];

  return v8(v7);
}

double static FlowLocator.findFlowPlugin(supportingTopic:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EDE4F518 != -1)
  {
    OUTLINED_FUNCTION_3_0();
  }

  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  return sub_1DCD3C748(v6, a2);
}

_BYTE *storeEnumTagSinglePayload for FlowLocator(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t SharingPolicyCheckFlow.__allocating_init(strategy:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_12_63();
  v2 = swift_allocObject();
  SharingPolicyCheckFlow.init(strategy:)(a1);
  return v2;
}

{
  return sub_1DCF80550(a1, sub_1DCF80E64);
}

void sub_1DCF7F138(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v11 - v7;
  v9 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_1DD105138;
  v10[5] = 0;
  v10[6] = a1;
  v10[7] = a2;
  sub_1DD0DCF8C();
}

void SharingPolicyCheckFlowStrategy.makeErrorDialog(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v11 - v7;
  v9 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_1DD105138;
  v10[5] = 0;
  v10[6] = a1;
  v10[7] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF7F338(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return SharingPolicyCheckFlowStrategy.makeErrorDialog()(a1);
}

void sub_1DCF7F3F0()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  sub_1DCB4E718(v0 + 56);
  v1 = OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_54_0(v1, &protocol witness table for RefreshableDeviceState);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF7F4C0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 112) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v12();
  }
}

uint64_t sub_1DCF7F5F0(uint64_t a1, uint64_t a2)
{
  v2[34] = a1;
  v2[35] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70) - 8) + 64) + 15;
  v2[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCF7F68C, 0, 0);
}

uint64_t sub_1DCF7F68C()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB17CA0(*(v0 + 280), v0 + 160);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 296) = v1;
  *v1 = v2;
  v1[1] = sub_1DCF7F72C;

  return static ResponseTemplates.unsupportedWhileSharingPolicyIsRestricted(deviceState:)(v0 + 16, v0 + 160);
}

uint64_t sub_1DCF7F72C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 296);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 304) = v0;

  sub_1DCB16DB0(v3 + 160, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCF7F840()
{
  v9 = v0;
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 272);
  memcpy((v0 + 88), (v0 + 16), 0x48uLL);
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  v4 = v2[3];
  v5 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  (*(v5 + 96))(v4, v5);
  v6 = type metadata accessor for NLContextUpdate();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v6);
  v7 = type metadata accessor for AceOutput();
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0;
  *(v0 + 200) = 0u;
  v3[3] = v7;
  v3[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_1Tm(v3);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
}

uint64_t sub_1DCF7F9C8()
{
  v23 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[38];
  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[38];
    v7 = OUTLINED_FUNCTION_151();
    v8 = OUTLINED_FUNCTION_83();
    v22 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[30];
    v9 = v0[31];
    v11 = v0[32];
    v12 = sub_1DD0DF18C();
    v14 = sub_1DCB10E9C(v12, v13, &v22);

    *(v7 + 4) = v14;
    OUTLINED_FUNCTION_88(&dword_1DCAFC000, v15, v16, "Unable to generate default unsupported dialog due to error: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v17 = v0[38];
  v18 = v0[36];
  swift_willThrow();

  OUTLINED_FUNCTION_29();
  v20 = v0[38];

  return v19();
}

uint64_t sub_1DCF7FB48(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCF7F3D0(a1);
}

uint64_t sub_1DCF7FBF4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return SharingPolicyCheckFlowStrategyAsync.makeErrorDialog()(a1);
}

void sub_1DCF7FCAC()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  sub_1DCB4E718(v0 + 56);
  v1 = OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_54_0(v1, &protocol witness table for RefreshableDeviceState);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF7FD90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCF7FC8C(a1);
}

uint64_t sub_1DCF7FE3C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCF7FE5C, 0, 0);
}

uint64_t sub_1DCF7FE5C()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  *v4 = v0;
  v4[1] = sub_1DCF7FF60;
  v5 = v0[2];
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCF7FF60()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    OUTLINED_FUNCTION_29();

    return v13();
  }
}

uint64_t sub_1DCF8007C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  (*(v5 + 16))(v9, a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v9, v4);
  (*(v11 + 8))(sub_1DCF7B950, v13, v10, v11);
}

uint64_t sub_1DCF801F4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCF80208()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_88_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCF8023C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCF801F4(a1);
}

uint64_t sub_1DCF802D8()
{
  type metadata accessor for SharingPolicyCheckFlow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1FB0, &qword_1DD0E2D90);
  result = sub_1DD0DE02C();
  qword_1EDE4CC68 = result;
  *algn_1EDE4CC70 = v1;
  return result;
}

void sub_1DCF80328()
{
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  sub_1DCB4E718(v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v1);
  v0 = qword_1EDE46630;
  qword_1EDE4CCE8 = type metadata accessor for RefreshableDeviceState();
  unk_1EDE4CCF0 = &protocol witness table for RefreshableDeviceState;
  qword_1EDE4CCD0 = v0;
  sub_1DD0DCF8C();
}

uint64_t SharingPolicyCheckFlow.init(strategy:)(uint64_t *a1)
{
  *(v1 + 16) = 0;
  if (qword_1EDE4CCC8 != -1)
  {
    OUTLINED_FUNCTION_3_115();
  }

  sub_1DCB17CA0(&qword_1EDE4CCD0, v1 + 24);
  if (qword_1EDE4CC80 != -1)
  {
    OUTLINED_FUNCTION_2_106();
  }

  sub_1DCB17CA0(&qword_1EDE4CC88, v1 + 64);
  v3 = type metadata accessor for DefaultSharingPolicyProvider();
  inited = swift_initStaticObject();
  *(v1 + 128) = v3;
  *(v1 + 136) = &off_1F5872E98;
  *(v1 + 104) = inited;
  sub_1DCB17CA0(a1, &v9);
  v5 = type metadata accessor for AnySharingPolicyCheckFlowStrategy();
  OUTLINED_FUNCTION_88_0();
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  sub_1DCAFF9E8(&v9, v7 + 16);
  *(v6 + 16) = &unk_1DD105168;
  *(v6 + 24) = v7;
  v10 = v5;
  v11 = &off_1F5872E88;
  *&v9 = v6;
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  sub_1DCAFF9E8(&v9, v1 + 144);
  return v1;
}

{
  return sub_1DCF80550(a1, sub_1DCF81018);
}

uint64_t sub_1DCF80550(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  OUTLINED_FUNCTION_0_1();
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_16();
  v13 = v12 - v11;
  (*(v14 + 16))(v12 - v11);
  v15 = a2(v13, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v15;
}

void SharingPolicyCheckFlow.__allocating_init(restrictedErrorOutputGenerator:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_88_0();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF80848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCF8086C, 0, 0);
}

void sub_1DCF8086C()
{
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  v1 = *(v0 + 104);
  sub_1DCB4E718(v0 + 56);
  v2 = OUTLINED_FUNCTION_55_3();
  OUTLINED_FUNCTION_54_0(v2, &protocol witness table for RefreshableDeviceState);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF809AC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 128) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v12();
  }
}

uint64_t SharingPolicyCheckFlow.__allocating_init(restrictedErrorOutputGenerator:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EDE4CCC8 != -1)
  {
    OUTLINED_FUNCTION_3_115();
  }

  sub_1DCB17CA0(&qword_1EDE4CCD0, v24);
  if (qword_1EDE4CC80 != -1)
  {
    OUTLINED_FUNCTION_2_106();
  }

  sub_1DCB17CA0(&qword_1EDE4CC88, v23);
  v4 = type metadata accessor for DefaultSharingPolicyProvider();
  inited = swift_initStaticObject();
  v6 = type metadata accessor for AnySharingPolicyCheckFlowStrategy();
  OUTLINED_FUNCTION_88_0();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v22[3] = v4;
  v22[4] = &off_1F5872E98;
  v21 = &off_1F5872E88;
  v22[0] = inited;
  v20 = v6;
  *&v19 = v7;
  OUTLINED_FUNCTION_12_63();
  v8 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v22, v4);
  OUTLINED_FUNCTION_0_1();
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_16();
  v15 = (v14 - v13);
  (*(v16 + 16))(v14 - v13);
  v17 = *v15;
  *(v8 + 128) = v4;
  *(v8 + 136) = &off_1F5872E98;
  *(v8 + 104) = v17;
  *(v8 + 16) = 0;
  sub_1DCAFF9E8(v24, v8 + 24);
  sub_1DCAFF9E8(v23, v8 + 64);
  sub_1DCAFF9E8(&v19, v8 + 144);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  return v8;
}

uint64_t SharingPolicyCheckFlow.on(input:)()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  v1 = sub_1DD0DD8EC();
  v2 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_151();
    v4 = OUTLINED_FUNCTION_83();
    v6 = v4;
    *v3 = 136315138;
    if (qword_1EDE4CC60 != -1)
    {
      OUTLINED_FUNCTION_5_103();
    }

    *(v3 + 4) = sub_1DCB10E9C(qword_1EDE4CC68, *algn_1EDE4CC70, &v6);
    _os_log_impl(&dword_1DCAFC000, v1, v2, "%s: This flow handles no input", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  return 0;
}

void sub_1DCF80DAC(void **a1)
{
  *a1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *v1;
  sub_1DD0DCAFC();
}

uint64_t sub_1DCF80E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_1();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_16();
  v15 = v14 - v13;
  v16 = swift_allocObject();
  (*(v8 + 16))(v15, a1, a3);
  v17 = sub_1DCF81018(v15, v16, a3, a4);
  (*(v8 + 8))(a1, a3);
  return v17;
}

uint64_t sub_1DCF80F88()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AE1C;

  return sub_1DCF7FE3C(v2, v0 + 16);
}

uint64_t sub_1DCF81018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v13 = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v11);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a3);
  *(a2 + 16) = 0;
  if (qword_1EDE4CCC8 != -1)
  {
    swift_once();
  }

  sub_1DCB17CA0(&qword_1EDE4CCD0, a2 + 24);
  if (qword_1EDE4CC80 != -1)
  {
    swift_once();
  }

  sub_1DCB17CA0(&qword_1EDE4CC88, a2 + 64);
  v8 = type metadata accessor for DefaultSharingPolicyProvider();
  inited = swift_initStaticObject();
  *(a2 + 128) = v8;
  *(a2 + 136) = &off_1F5872E98;
  *(a2 + 104) = inited;
  sub_1DCAFF9E8(&v11, a2 + 144);
  return a2;
}

uint64_t sub_1DCF81144()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_13_17(v4);

  return sub_1DCF80848(v6, v2, v1);
}

unint64_t sub_1DCF811E0(uint64_t a1)
{
  result = sub_1DCF81208();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DCF81208()
{
  result = qword_1ECCAB2F0;
  if (!qword_1ECCAB2F0)
  {
    type metadata accessor for SharingPolicyCheckFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB2F0);
  }

  return result;
}

uint64_t dispatch thunk of SharingPolicyCheckFlowStrategy.makeErrorDialog()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (OUTLINED_FUNCTION_73_0(a1, a2, a3) + 16);
  v11 = *v10 + **v10;
  v3 = (*v10)[1];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_29_2(v5);

  return v8(v7);
}

uint64_t dispatch thunk of SharingPolicyCheckFlowStrategyAsync.makeErrorDialog()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (OUTLINED_FUNCTION_73_0(a1, a2, a3) + 8);
  v11 = *v10 + **v10;
  v3 = (*v10)[1];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_29_2(v5);

  return v8(v7);
}

uint64_t dispatch thunk of SharingPolicyCheckFlow.__allocating_init(strategy:)()
{
  return (*(v0 + 120))();
}

{
  return (*(v0 + 128))();
}

_BYTE *storeEnumTagSinglePayload for SharingPolicyCheckFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DCF815BC()
{
  result = qword_1ECCAB2F8[0];
  if (!qword_1ECCAB2F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCAB2F8);
  }

  return result;
}

uint64_t sub_1DCF81618(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_1DCF82930(a1, a2, a3);
  return v9;
}

uint64_t sub_1DCF81670()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return SimpleDisambiguationPromptStrategy.makeRepromptOnEmptyParse(items:)();
}

uint64_t SimpleDisambiguationPromptStrategy.makeRepromptOnEmptyParse(items:)()
{
  OUTLINED_FUNCTION_41();
  v4 = *(OUTLINED_FUNCTION_56_0(v0, v1, v2, v3) + 40);
  OUTLINED_FUNCTION_8();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_11_0(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_1(v9);

  return v12(v11);
}

uint64_t sub_1DCF81828()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return SimpleDisambiguationPromptStrategy.makeRepromptOnLowConfidence(items:)();
}

uint64_t SimpleDisambiguationPromptStrategy.makeRepromptOnLowConfidence(items:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDBBA0();
}

uint64_t sub_1DCF81944()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return SimpleDisambiguationPromptStrategy.makeFlowCancelledResponse()();
}

uint64_t SimpleDisambiguationPromptStrategy.makeFlowCancelledResponse()()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDCA70();
}

uint64_t sub_1DCF81A60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return SimpleDisambiguationPromptStrategy.makeErrorResponse(error:)();
}

uint64_t SimpleDisambiguationPromptStrategy.makeErrorResponse(error:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDC444();
}

uint64_t SimpleDisambiguationPromptStrategy.actionForInputWrapper(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  OUTLINED_FUNCTION_24();
  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCF81BB0()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[6];
  v2 = v0[2];
  (*(v0[5] + 24))(v0[3], v0[4]);
  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t dispatch thunk of SimpleDisambiguationPromptStrategy.parseDisambiguationResult(input:items:)()
{
  OUTLINED_FUNCTION_41();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(v0 + 32);
  OUTLINED_FUNCTION_25_1();
  v18 = (v11 + *v11);
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_11_0(v14);
  *v15 = v16;
  v15[1] = sub_1DCB4AE1C;

  return v18(v9, v7, v5, v3, v1);
}

uint64_t dispatch thunk of SimpleDisambiguationPromptStrategy.makePromptForDisambiguation(items:)()
{
  OUTLINED_FUNCTION_41();
  v4 = *(OUTLINED_FUNCTION_56_0(v0, v1, v2, v3) + 40);
  OUTLINED_FUNCTION_8();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_11_0(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_1(v9);

  return v12(v11);
}

uint64_t dispatch thunk of SimpleDisambiguationPromptStrategy.makeRepromptOnEmptyParse(items:)()
{
  OUTLINED_FUNCTION_41();
  v4 = *(OUTLINED_FUNCTION_56_0(v0, v1, v2, v3) + 48);
  OUTLINED_FUNCTION_8();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_11_0(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_1(v9);

  return v12(v11);
}

uint64_t dispatch thunk of SimpleDisambiguationPromptStrategy.makeRepromptOnLowConfidence(items:)()
{
  OUTLINED_FUNCTION_41();
  v4 = *(OUTLINED_FUNCTION_56_0(v0, v1, v2, v3) + 56);
  OUTLINED_FUNCTION_8();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_11_0(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_1(v9);

  return v12(v11);
}

uint64_t dispatch thunk of SimpleDisambiguationPromptStrategy.makeFlowCancelledResponse()()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v0 + 64);
  OUTLINED_FUNCTION_25_1();
  v14 = (v7 + *v7);
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_11_0(v10);
  *v11 = v12;
  v11[1] = sub_1DCB4AE1C;

  return v14(v5, v3, v1);
}

uint64_t dispatch thunk of SimpleDisambiguationPromptStrategy.makeErrorResponse(error:)()
{
  OUTLINED_FUNCTION_41();
  v4 = *(OUTLINED_FUNCTION_56_0(v0, v1, v2, v3) + 72);
  OUTLINED_FUNCTION_8();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_11_0(v8);
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_1(v9);

  return v12(v11);
}

uint64_t sub_1DCF8225C(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  result = type metadata accessor for SimpleDisambiguationPromptFlow.State();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DCF82314@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  v6 = type metadata accessor for SimpleDisambiguationPromptFlow.State();
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7, v12);
  v14 = &v21 - v13;
  v15 = *(v3 + 120);
  swift_beginAccess();
  (*(v9 + 16))(v14, v1 + v15, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 7:
      OUTLINED_FUNCTION_35_32();
      OUTLINED_FUNCTION_42_30();
      OUTLINED_FUNCTION_28();
      return swift_storeEnumTagMultiPayload();
    case 3:
      v20 = v14[8];
      *a1 = *v14;
      *(a1 + 8) = v20;
      OUTLINED_FUNCTION_35_32();
      OUTLINED_FUNCTION_42_30();
      OUTLINED_FUNCTION_28();
      return swift_storeEnumTagMultiPayload();
    case 2:
      OUTLINED_FUNCTION_35_32();
      v17 = OUTLINED_FUNCTION_42_30();
      OUTLINED_FUNCTION_2(v17);
      return (*(v18 + 32))(a1, v14);
    default:
      type metadata accessor for SimpleDisambiguationPromptFlow.SimpleDisambiguationPromptFlowError();
      OUTLINED_FUNCTION_23_31();
      swift_getWitnessTable();
      *a1 = swift_allocError();
      *(a1 + 8) = 0;
      OUTLINED_FUNCTION_35_32();
      OUTLINED_FUNCTION_42_30();
      OUTLINED_FUNCTION_28();
      swift_storeEnumTagMultiPayload();
      return (*(v9 + 8))(v14, v6);
  }
}

void sub_1DCF82578()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = type metadata accessor for SimpleDisambiguationPromptFlow.State();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v6 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v6, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCF8282C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  v7 = type metadata accessor for SimpleDisambiguationPromptFlow.State();
  (*(*(v7 - 8) + 24))(v1 + v4, a1, v7);
  swift_endAccess();
  sub_1DCF82578();
}

void *sub_1DCF82930(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v7 = *(*v3 + 120);
  v8 = *(*v3 + 80);
  v9 = *(*v3 + 88);
  type metadata accessor for SimpleDisambiguationPromptFlow.State();
  swift_storeEnumTagMultiPayload();
  v3[2] = a2;
  v3[3] = a1;
  sub_1DCAFF9E8(a3, (v3 + 4));
  return v3;
}

uint64_t sub_1DCF829D4(uint8_t *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for Parse(0);
  LOBYTE(v1) = v5;
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v4[10];
  v13 = v4[11];
  v14 = type metadata accessor for SimpleDisambiguationPromptFlow.State();
  v15 = OUTLINED_FUNCTION_9(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v21 = MEMORY[0x1EEE9AC00](v15, v20);
  v58 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v57 - v24;
  v26 = v4[15];
  swift_beginAccess();
  (*(v17 + 16))(v25, &v2[v26], v14);
  LODWORD(v26) = swift_getEnumCaseMultiPayload();
  (*(v17 + 8))(v25, v14);
  if (v26 == 5)
  {
    v27 = type metadata accessor for Input(0);
    sub_1DCB2479C(&a1[*(v27 + 20)], v11, type metadata accessor for Parse);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1DCDC578C(v11, type metadata accessor for Parse);
    if (EnumCaseMultiPayload == 10)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v29 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v29, qword_1EDE57E00);
      v30 = sub_1DD0DD8EC();
      v31 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v31))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_2_3(&dword_1DCAFC000, v32, v33, "SimpleDisambiguationPromptFlow received empty parse. Will handle and re-prompt.");
        OUTLINED_FUNCTION_80();
      }

LABEL_7:

      v34 = v58;
      OUTLINED_FUNCTION_54_1();
      goto LABEL_8;
    }

    if ((sub_1DCE967E0(a1) & 1) == 0)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v45 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v45, qword_1EDE57E00);
      v46 = sub_1DD0DD8EC();
      v47 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v47))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_36_1(&dword_1DCAFC000, v48, v49, "SimpleDisambiguationPromptFlow received low confidence input. Treating as misunderstood and will re-prompt.");
        OUTLINED_FUNCTION_80();
      }

      OUTLINED_FUNCTION_22_40();
      OUTLINED_FUNCTION_54_1();
      swift_storeEnumTagMultiPayload();
      sub_1DCF8282C(v46);
    }

    v1 = *(v2 + 2);
    (*(v13 + 24))(&v59, a1, v12, v13);
    if (!v59)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v50 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v50, qword_1EDE57E00);
      v30 = sub_1DD0DD8EC();
      v51 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v51))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_2_3(&dword_1DCAFC000, v52, v53, "SimpleDisambiguationPromptFlow received cancel action from strategy. Transitioning to cancelled state.");
        OUTLINED_FUNCTION_80();
      }

      goto LABEL_7;
    }

    if (v59 == 1)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v41 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v41, qword_1EDE57E00);
      v34 = sub_1DD0DD8EC();
      v42 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v42))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_36_1(&dword_1DCAFC000, v43, v44, "SimpleDisambiguationPromptFlow received handle action from strategy. Transitioning to responseReceived state.");
        OUTLINED_FUNCTION_80();
      }

      OUTLINED_FUNCTION_22_40();
      OUTLINED_FUNCTION_54_1();
LABEL_8:
      swift_storeEnumTagMultiPayload();
      sub_1DCF8282C(v34);
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v54 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v54, qword_1EDE57E00);
    v36 = sub_1DD0DD8EC();
    v55 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_22(v55))
    {
      v56 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v56);
      v39 = "SimpleDisambiguationPromptFlow received ignore action from strategy. Ignoring.";
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v35 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v35, qword_1EDE57E00);
    v36 = sub_1DD0DD8EC();
    v37 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_22(v37))
    {
      v38 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v38);
      v39 = "SimpleDisambiguationPromptFlow received input but is not in the promptSent state. Ignoring.";
LABEL_13:
      _os_log_impl(&dword_1DCAFC000, v36, v1, v39, a1, 2u);
      OUTLINED_FUNCTION_62();
    }
  }

  return 0;
}

void sub_1DCF82F64()
{
  v1 = *v0;
  swift_getWitnessTable();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DCF82FF8()
{
  OUTLINED_FUNCTION_42();
  v1[5] = v2;
  v1[6] = v0;
  v3 = *v0;
  v4 = *(*(type metadata accessor for Input(0) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = *(v3 + 80);
  v1[9] = *(v3 + 88);
  v5 = type metadata accessor for SimpleDisambiguationPromptFlow.State();
  v1[10] = v5;
  v6 = *(v5 - 8);
  v1[11] = v6;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCF8311C()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[6];
  v5 = *(*v4 + 120);
  swift_beginAccess();
  (*(v3 + 16))(v1, v4 + v5, v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v28 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v28, qword_1EDE57E00);
      v29 = sub_1DD0DD8EC();
      v30 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v30))
      {
        v31 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v31);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v32, v33, v34, v35, v36, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[22] = v37;
      *v37 = v38;
      OUTLINED_FUNCTION_41_0(v37);
      OUTLINED_FUNCTION_73();

      return sub_1DCF85634(v39);
    case 2u:
    case 3u:
      v6 = OUTLINED_FUNCTION_40_31();
      v7(v6);
      goto LABEL_3;
    case 4u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v54 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v54, qword_1EDE57E00);
      v55 = sub_1DD0DD8EC();
      v56 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v56))
      {
        v57 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v57);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v58, v59, v60, v61, v62, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[14] = v63;
      *v63 = v64;
      OUTLINED_FUNCTION_41_0(v63);
      OUTLINED_FUNCTION_73();

      return sub_1DCF84150(v65);
    case 5u:
LABEL_3:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v8 = v0[6];
      v9 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v9, qword_1EDE57E00);
      sub_1DD0DCF8C();
    case 6u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v67 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v67, qword_1EDE57E00);
      v68 = sub_1DD0DD8EC();
      v69 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v69))
      {
        v70 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v70);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v71, v72, v73, v74, v75, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[20] = v76;
      *v76 = v77;
      OUTLINED_FUNCTION_41_0(v76);
      OUTLINED_FUNCTION_73();

      result = sub_1DCF853CC(v78);
      break;
    case 7u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v41 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v41, qword_1EDE57E00);
      v42 = sub_1DD0DD8EC();
      v43 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v43))
      {
        v44 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v44);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v45, v46, v47, v48, v49, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[16] = v50;
      *v50 = v51;
      OUTLINED_FUNCTION_41_0(v50);
      OUTLINED_FUNCTION_73();

      result = sub_1DCF84444(v52);
      break;
    default:
      sub_1DCC333DC(v0[13], v0[7]);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v10 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v10, qword_1EDE57E00);
      v11 = sub_1DD0DD8EC();
      v12 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v12))
      {
        v13 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v13);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v14, v15, v16, v17, v18, 2u);
        OUTLINED_FUNCTION_62();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      v0[18] = v19;
      *v19 = v20;
      v19[1] = sub_1DCF83A94;
      v22 = v0[6];
      v21 = v0[7];
      v23 = v0[5];
      OUTLINED_FUNCTION_73();

      result = sub_1DCF8476C(v24, v25);
      break;
  }

  return result;
}

uint64_t sub_1DCF83840()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCF83938()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_38_30();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCF8399C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 136) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCF83A94()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 152) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCF83B8C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_24_34();
  OUTLINED_FUNCTION_38_30();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCF83BF4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCF83CEC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 184) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCF83DE4()
{
  OUTLINED_FUNCTION_42();
  v0 = OUTLINED_FUNCTION_40_31();
  v1(v0);
  OUTLINED_FUNCTION_38_30();

  OUTLINED_FUNCTION_29();

  return v2();
}

void sub_1DCF83E58()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 120);
  OUTLINED_FUNCTION_5_104();
  v3 = v2;
  sub_1DCF8282C(v0);
}

void sub_1DCF83EEC()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 136);
  OUTLINED_FUNCTION_5_104();
  v3 = v2;
  sub_1DCF8282C(v0);
}

void sub_1DCF83F80()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_24_34();
  v2 = *(v1 + 152);
  OUTLINED_FUNCTION_5_104();
  v3 = v2;
  sub_1DCF8282C(v0);
}

void sub_1DCF84018()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 168);
  OUTLINED_FUNCTION_5_104();
  v3 = v2;
  sub_1DCF8282C(v0);
}

void sub_1DCF840AC()
{
  OUTLINED_FUNCTION_39();
  v2 = OUTLINED_FUNCTION_40_31();
  v3(v2);
  v4 = *(v1 + 184);
  OUTLINED_FUNCTION_5_104();
  v5 = v4;
  sub_1DCF8282C(v0);
}

uint64_t sub_1DCF84150(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v5 = type metadata accessor for SimpleDisambiguationPromptFlow.State();
  v2[9] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCF84210, 0, 0);
}

uint64_t sub_1DCF84210()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_17_47();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 88) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_115(v1);
  v3 = OUTLINED_FUNCTION_10_3();

  return sub_1DCB63BBC(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCF842B4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCF843B8()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  swift_storeEnumTagMultiPayload();
  sub_1DCF8282C(v2);
}

uint64_t sub_1DCF84444(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *v1;
  v2[9] = *(*v1 + 80);
  v2[10] = *(v3 + 88);
  v4 = type metadata accessor for SimpleDisambiguationPromptFlow.State();
  v2[11] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCF8450C, 0, 0);
}

uint64_t sub_1DCF8450C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_17_47();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 104) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_115(v1);
  v3 = OUTLINED_FUNCTION_10_3();

  return sub_1DCB63BBC(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCF845B0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCF846B4()
{
  OUTLINED_FUNCTION_39();
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_42_30();
  OUTLINED_FUNCTION_28();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1DCF8282C(v1);
}

uint64_t sub_1DCF8476C(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = *v2;
  v3[14] = *(*v2 + 80);
  v3[15] = *(v4 + 88);
  v5 = type metadata accessor for SimpleDisambiguationPromptFlow.State();
  v3[16] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[18] = AssociatedTypeWitness;
  v8 = sub_1DD0DE97C();
  v3[19] = v8;
  v9 = *(v8 - 8);
  v3[20] = v9;
  v10 = *(v9 + 64) + 15;
  v3[21] = swift_task_alloc();
  v11 = *(AssociatedTypeWitness - 8);
  v3[22] = v11;
  v12 = *(v11 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCF84930, 0, 0);
}

uint64_t sub_1DCF84930()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[13];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v0[15] + 32);
  OUTLINED_FUNCTION_25_1();
  v15 = (v5 + *v5);
  v7 = *(v6 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[26] = v8;
  *v8 = v9;
  v8[1] = sub_1DCF84A44;
  v10 = v0[21];
  v11 = v0[14];
  v12 = v0[15];
  v13 = v0[12];

  return v15(v10, v13, v2, v11, v12);
}

uint64_t sub_1DCF84A44()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 208);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 216) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCF84B3C()
{
  v2 = v1[21];
  v3 = v1[18];
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    (*(v1[20] + 8))(v2, v1[19]);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v4 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v4, qword_1EDE57E00);
    v5 = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v7);
      _os_log_impl(&dword_1DCAFC000, v5, v6, "SimpleDisambiguationPromptFlow received no chosen item. Returning unanswered.", v0, 2u);
      OUTLINED_FUNCTION_62();
    }

    v9 = v1[17];
    v8 = v1[18];
    v10 = v1[16];
    v11 = v1[13];
    v12 = v1[11];

    type metadata accessor for PromptResult();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1DCF8282C(v9);
  }

  (*(v1[22] + 32))(v1[25], v2, v3);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v13 = v1[24];
  v14 = v1[25];
  v15 = v1[22];
  v16 = v1[18];
  v17 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v17, qword_1EDE57E00);
  v18 = *(v15 + 16);
  v18(v13, v14, v16);
  v19 = sub_1DD0DD8EC();
  v20 = sub_1DD0DE6DC();
  v21 = OUTLINED_FUNCTION_23(v20);
  v22 = v1[24];
  v43 = v18;
  if (v21)
  {
    v23 = v1[22];
    v24 = v1[23];
    v25 = v1[18];
    v26 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v44 = v42;
    *v26 = 136315138;
    v18(v24, v22, v25);
    v41 = sub_1DD0DE02C();
    v28 = v27;
    (*(v23 + 8))(v22, v25);
    v29 = sub_1DCB10E9C(v41, v28, &v44);

    *(v26 + 4) = v29;
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_62();
  }

  else
  {
    v35 = v1[22];
    v36 = v1[18];

    (*(v35 + 8))(v22, v36);
  }

  v37 = v1[17];
  v38 = v1[16];
  v39 = v1[13];
  v40 = v1[11];
  v43(v37, v1[25], v1[18]);
  type metadata accessor for PromptResult();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1DCF8282C(v37);
}

uint64_t sub_1DCF84F04()
{
  OUTLINED_FUNCTION_41();
  v24 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[27];
  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[27];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[7];
    v9 = v0[8];
    v11 = v0[9];
    v12 = sub_1DD0DF18C();
    v14 = sub_1DCB10E9C(v12, v13, &v23);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "SimpleDisambiguationPromptFlow encountered an error while trying to parse user input: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v15 = v0[27];
  v16 = v0[13];
  v18 = v16[7];
  v17 = v16[8];
  __swift_project_boxed_opaque_existential_1(v16 + 4, v18);
  v19 = swift_task_alloc();
  v0[28] = v19;
  *(v19 + 16) = v16;
  *(v19 + 24) = v15;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[29] = v20;
  *v20 = v21;
  v20[1] = sub_1DCF85110;

  return sub_1DCB63BBC((v0 + 2), &unk_1DD105708, v19, v18, v17);
}

uint64_t sub_1DCF85110()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v3[30] = v0;

  if (!v0)
  {
    v9 = v3[28];
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 2);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1DCF85220()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[27];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v5 = v0[13];
  v6 = v0[11];
  *v3 = v1;
  *(v3 + 8) = 1;
  type metadata accessor for PromptResult();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v7 = v1;
  sub_1DCF8282C(v3);
}

uint64_t sub_1DCF85310()
{
  OUTLINED_FUNCTION_41();
  v1 = v0[30];
  v3 = v0[27];
  v2 = v0[28];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v7 = v0[21];
  v8 = v0[17];

  swift_willThrow();

  OUTLINED_FUNCTION_29();
  v10 = v0[30];

  return v9();
}

uint64_t sub_1DCF853CC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v5 = type metadata accessor for SimpleDisambiguationPromptFlow.State();
  v2[9] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCF8548C, 0, 0);
}

uint64_t sub_1DCF8548C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_17_47();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 88) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_115(v1);
  v3 = OUTLINED_FUNCTION_10_3();

  return sub_1DCB63BBC(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCF85530()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCF85634(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v5 = type metadata accessor for SimpleDisambiguationPromptFlow.State();
  v2[9] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCF856F4, 0, 0);
}

uint64_t sub_1DCF856F4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_17_47();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 88) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_115(v1);
  v3 = OUTLINED_FUNCTION_10_3();

  return sub_1DCB63BBC(v3, v4, v5, v6, v7);
}

uint64_t sub_1DCF85798(uint64_t a1, void *a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCF857E0, 0, 0);
}

uint64_t sub_1DCF857E0()
{
  OUTLINED_FUNCTION_33();
  v1 = *(OUTLINED_FUNCTION_28_33() + 40);
  OUTLINED_FUNCTION_25_1();
  v10 = v2 + *v2;
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 40) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_7_71(v5);

  return v8(v7);
}

uint64_t sub_1DCF858DC(uint64_t a1, void *a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCF85924, 0, 0);
}

uint64_t sub_1DCF85924()
{
  OUTLINED_FUNCTION_33();
  v1 = *(OUTLINED_FUNCTION_28_33() + 48);
  OUTLINED_FUNCTION_25_1();
  v10 = v2 + *v2;
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 40) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_7_71(v5);

  return v8(v7);
}

uint64_t sub_1DCF85A20(uint64_t a1, void *a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCF85A68, 0, 0);
}

uint64_t sub_1DCF85A68()
{
  OUTLINED_FUNCTION_33();
  v1 = *(OUTLINED_FUNCTION_28_33() + 56);
  OUTLINED_FUNCTION_25_1();
  v10 = v2 + *v2;
  v4 = *(v3 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 40) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_7_71(v5);

  return v8(v7);
}

uint64_t sub_1DCF85B64(uint64_t a1, void *a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCF85BAC, 0, 0);
}

uint64_t sub_1DCF85BAC()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[4];
  v2 = *(v0[3] + 16);
  v4 = *(v1 + 80);
  v3 = *(v1 + 88);
  v5 = *(v3 + 64);
  OUTLINED_FUNCTION_8();
  v13 = (v6 + *v6);
  v8 = *(v7 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[5] = v9;
  *v9 = v10;
  v9[1] = sub_1DCBF9B9C;
  v11 = v0[2];

  return v13(v11, v4, v3);
}

uint64_t sub_1DCF85CC0(uint64_t a1, void *a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCF85D0C, 0, 0);
}

uint64_t sub_1DCF85D0C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[5];
  v2 = *(v0[3] + 16);
  v4 = *(v1 + 80);
  v3 = *(v1 + 88);
  v5 = *(v3 + 72);
  OUTLINED_FUNCTION_8();
  v14 = (v6 + *v6);
  v8 = *(v7 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[6] = v9;
  *v9 = v10;
  v9[1] = sub_1DCF85E28;
  v11 = v0[4];
  v12 = v0[2];

  return v14(v12, v11, v4, v3);
}

uint64_t sub_1DCF85E28()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_29();

  return v5();
}

unint64_t sub_1DCF85F08(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1, v1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x646574726174732ELL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      (*(v3 + 8))(v6, a1);
      result = 0x65646E7573696D2ELL;
      break;
    case 2:
      (*(v3 + 8))(v6, a1);
      result = 0x74656C706D6F632ELL;
      break;
    case 3:
      (*(v3 + 8))(v6, a1);
      result = 0x726F7272652ELL;
      break;
    case 4:
      return result;
    case 5:
      result = 0x5374706D6F72702ELL;
      break;
    case 6:
      result = 0x61507974706D652ELL;
      break;
    case 7:
      result = 0x6C6C65636E61632ELL;
      break;
    default:
      (*(v3 + 8))(v6, a1);
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t *sub_1DCF86138()
{
  v1 = *v0;
  v2 = v0[2];
  swift_unknownObjectRelease();
  v3 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v4 = *(*v0 + 120);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = type metadata accessor for SimpleDisambiguationPromptFlow.State();
  OUTLINED_FUNCTION_2(v7);
  (*(v8 + 8))(v0 + v4);
  return v0;
}

uint64_t sub_1DCF861E8()
{
  sub_1DCF86138();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCF86270(uint64_t a1)
{
  result = type metadata accessor for Input(319);
  if (v3 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    result = type metadata accessor for PromptResult();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

_BYTE *sub_1DCF8635C(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v197 = sub_1DD0DB04C();
  v212 = *(v197 - 8);
  v220 = *(v212 + 64);
  v194 = sub_1DD0DC76C();
  v205 = *(v194 - 8);
  v193 = v205;
  v3 = *(v205 + 80);
  v191 = sub_1DD0DB1EC();
  v207 = *(v191 - 8);
  v190 = v207;
  v209 = *(v207 + 80) | v3;
  v196 = sub_1DD0DB4BC();
  v203 = *(v196 - 8);
  v219 = v203;
  v198 = *(v203 + 80);
  v195 = sub_1DD0DB3EC();
  __n = *(v195 - 8);
  v4 = __n;
  v5 = *(__n + 80);
  v6 = v198 & 0xF8 | v5 | 7u;
  v7 = sub_1DD0DD12C();
  v201 = *(v7 - 8);
  v188 = v201;
  v189 = v7;
  v8 = *(v201 + 80);
  v187 = sub_1DD0DD08C();
  v185 = *(v187 - 8);
  v9 = v8 | *(v185 + 80);
  v10 = *(v205 + 64);
  v11 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v186 = v10;
  if (v11 <= v10)
  {
    v11 = *(v205 + 64);
  }

  if (v11 <= *(v207 + 64))
  {
    v11 = *(v207 + 64);
  }

  v12 = v5;
  v204 = *(v203 + 64) + v5;
  v208 = v5;
  v182 = __n;
  v13 = *(__n + 84);
  v14 = *(__n + 64);
  v179 = v14;
  if (!v13)
  {
    ++v14;
  }

  v206 = v14;
  v192 = v204 & ~v5;
  v180 = v14 + 7;
  v15 = (v14 + 7 + v192) & 0xFFFFFFFFFFFFFFF8;
  __na = (v15 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v11 <= __na)
  {
    v11 = (v15 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v16 = v15 + 31;
  if (v11 <= (((((v16 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v11 = (((((v16 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v184 = *(v201 + 64);
  v181 = *(v4 + 84);
  v17 = v13 != 0;
  v18 = v13 - 1;
  if (!v17)
  {
    v18 = 0;
  }

  v178 = v18;
  v183 = *(v219 + 84);
  if (v18 <= v183)
  {
    v18 = *(v219 + 84);
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = v18;
  }

  v202 = v6 + 16;
  v20 = v198 & 0xF8 | v5 | 7u;
  v21 = (v209 | v9) & 0xF8 | v6;
  v22 = ((v16 + ((v6 + 16 + ((v184 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v11 <= v22)
  {
    v11 = v22;
  }

  v23 = *(*(v187 - 8) + 64);
  if (v11 > v23)
  {
    v23 = v11;
  }

  if (v23 <= 0x18)
  {
    v24 = 24;
  }

  else
  {
    v24 = v23;
  }

  v26 = *(a3 + 16);
  v25 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  if (*(v28 + 64) <= 9uLL)
  {
    v29 = 9;
  }

  else
  {
    v29 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v29 + 1 > ((((v24 + ((v220 + v21) & ~v21) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41)
  {
    v30 = v29 + 1;
  }

  else
  {
    v30 = ((((v24 + ((v220 + v21) & ~v21) + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  }

  if (v30 <= 9)
  {
    v31 = 9;
  }

  else
  {
    v31 = v30;
  }

  v32 = *(v212 + 80);
  v33 = *(v28 + 80);
  if (((v33 | v32) & 0xF8 | v21) != 7 || ((v209 | v198 | v12 | v9 | v32 | v33) & 0x100000) != 0 || (v31 + 1) > 0x18)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v34 = a2[v31];
  v35 = v34 - 4;
  if (v34 < 4)
  {
    v37 = a1;
  }

  else
  {
    if (v31 <= 3)
    {
      v36 = v31;
    }

    else
    {
      v36 = 4;
    }

    v37 = a1;
    switch(v36)
    {
      case 1:
        v38 = *a2;
        goto LABEL_48;
      case 2:
        v38 = *a2;
        goto LABEL_48;
      case 3:
        v38 = *a2 | (a2[2] << 16);
        goto LABEL_48;
      case 4:
        v38 = *a2;
LABEL_48:
        if (v31 < 4)
        {
          v38 |= v35 << (8 * v31);
        }

        v34 = v38 + 4;
        break;
      default:
        break;
    }
  }

  v218 = v31;
  v39 = ~v208;
  v40 = ~v20;
  switch(v34)
  {
    case 0u:
      v210 = v24 + 1;
      (*(v212 + 16))(v37, a2, v197);
      v213 = &v37[v220 + 7];
      v41 = (v213 & 0xFFFFFFFFFFFFFFF8);
      v42 = &a2[v220 + 7];
      v43 = (v42 & 0xFFFFFFFFFFFFFFF8);
      v44 = *((v42 & 0xFFFFFFFFFFFFFFF8) + v24);
      v45 = v44 - 10;
      if (v44 < 0xA)
      {
        v47 = v24;
      }

      else
      {
        if (v24 <= 3)
        {
          v46 = v24;
        }

        else
        {
          v46 = 4;
        }

        v47 = v24;
        switch(v46)
        {
          case 1:
            v48 = *v43;
            goto LABEL_93;
          case 2:
            v48 = *v43;
            goto LABEL_93;
          case 3:
            v48 = *v43 | (v43[2] << 16);
            goto LABEL_93;
          case 4:
            v48 = *v43;
LABEL_93:
            if (v24 < 4)
            {
              v44 = (v48 | (v45 << (8 * v24))) + 10;
            }

            else
            {
              v44 = v48 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v44)
      {
        case 0u:
          (*(v193 + 16))(v213 & 0xFFFFFFFFFFFFFFF8, v42 & 0xFFFFFFFFFFFFFFF8, v194);
          *((v213 & 0xFFFFFFFFFFFFFFF8) + v47) = 0;
          goto LABEL_169;
        case 1u:
          (*(v193 + 16))(v213 & 0xFFFFFFFFFFFFFFF8, v42 & 0xFFFFFFFFFFFFFFF8, v194);
          *(((v213 | 7) + v186) & 0xFFFFFFFFFFFFFFF8) = *(((v42 | 7) + v186) & 0xFFFFFFFFFFFFFFF8);
          *((v213 & 0xFFFFFFFFFFFFFFF8) + v47) = 1;
          sub_1DD0DCF8C();
        case 2u:
          *v41 = *v43;
          v41[1] = *(v43 + 1);
          v41[2] = *(v43 + 2);
          *(v41 + v47) = 2;

          goto LABEL_169;
        case 3u:
          *v41 = *v43;
          *(v41 + v47) = 3;
          swift_unknownObjectRetain();
          goto LABEL_169;
        case 4u:
          v68 = v213 & 0xFFFFFFFFFFFFFFF8;
          (*(v190 + 16))(v213 & 0xFFFFFFFFFFFFFFF8, v42 & 0xFFFFFFFFFFFFFFF8, v191);
          v69 = 4;
          goto LABEL_107;
        case 5u:
          v78 = *v43;
          *v41 = *v43;
          *(v41 + v47) = 5;
          goto LABEL_168;
        case 6u:
          (*(v219 + 16))(v213 & 0xFFFFFFFFFFFFFFF8, v42 & 0xFFFFFFFFFFFFFFF8, v196);
          v80 = ((v204 + (v213 & 0xFFFFFFFFFFFFFFF8)) & v39);
          v81 = (&v43[v204] & v39);
          if (__swift_getEnumTagSinglePayload(v81, 1, v195))
          {
            v82 = v206;
            memcpy(v80, v81, v206);
          }

          else
          {
            (*(v4 + 16))(v80, v81, v195);
            __swift_storeEnumTagSinglePayload(v80, 0, 1, v195);
            v82 = v206;
          }

          v113 = &v37[v220 + 7];
          v132 = ((v80 + v82 + 7) & 0xFFFFFFFFFFFFFFF8);
          v133 = ((v81 + v82 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v132 = *v133;
          v132[1] = v133[1];
          v134 = (v132 + 19) & 0xFFFFFFFFFFFFFFF8;
          v135 = (v133 + 19) & 0xFFFFFFFFFFFFFFF8;
          v136 = *v135;
          *(v134 + 4) = *(v135 + 4);
          *v134 = v136;
          *((v213 & 0xFFFFFFFFFFFFFFF8) + v47) = 6;
          goto LABEL_148;
        case 7u:
          (*(v219 + 16))(v213 & 0xFFFFFFFFFFFFFFF8, v42 & 0xFFFFFFFFFFFFFFF8, v196);
          v72 = ((v204 + (v213 & 0xFFFFFFFFFFFFFFF8)) & v39);
          v73 = (&v43[v204] & v39);
          if (__swift_getEnumTagSinglePayload(v73, 1, v195))
          {
            v74 = v206;
            memcpy(v72, v73, v206);
          }

          else
          {
            (*(v4 + 16))(v72, v73, v195);
            __swift_storeEnumTagSinglePayload(v72, 0, 1, v195);
            v74 = v206;
          }

          v108 = ((v72 + v74 + 7) & 0xFFFFFFFFFFFFFFF8);
          v109 = ((v73 + v74 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v108 = *v109;
          v108[1] = v109[1];
          v110 = (v108 + 19) & 0xFFFFFFFFFFFFFFF8;
          v111 = (v109 + 19) & 0xFFFFFFFFFFFFFFF8;
          v112 = *v111;
          *(v110 + 4) = *(v111 + 4);
          *v110 = v112;
          v113 = &v37[v220 + 7];
          v114 = (((v213 | 7) + __na) & 0xFFFFFFFFFFFFFFF8);
          v115 = (((v42 | 7) + __na) & 0xFFFFFFFFFFFFFFF8);
          *v114 = *v115;
          v114[1] = v115[1];
          v116 = ((v114 + 23) & 0xFFFFFFFFFFFFFFF8);
          v117 = ((v115 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v116 = *v117;
          v116[1] = v117[1];
          v118 = ((v116 + 23) & 0xFFFFFFFFFFFFFFF8);
          v119 = ((v117 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v118 = *v119;
          v118[1] = v119[1];
          *((v213 & 0xFFFFFFFFFFFFFFF8) + v47) = 7;

LABEL_148:

          v86 = v24 + 1;
          goto LABEL_171;
        case 8u:
          (*(v188 + 16))(v213 & 0xFFFFFFFFFFFFFFF8, v42 & 0xFFFFFFFFFFFFFFF8, v189);
          v88 = (((v213 | 7) + v184) & 0xFFFFFFFFFFFFFFF8);
          v89 = (((v42 | 7) + v184) & 0xFFFFFFFFFFFFFFF8);
          *v88 = *v89;
          v88[1] = v89[1];
          v90 = ((v88 + v202) & v40);
          v91 = ((v89 + v202) & v40);

          if (v183 != v19)
          {
            v95 = ((v91 + v204) & v39);
            if (v178 == v19)
            {
              v93 = v206;
              v92 = v196;
              if (v181 >= 2 && __swift_getEnumTagSinglePayload((v91 + v204) & v39, v181, v195) >= 2)
              {
                goto LABEL_137;
              }
            }

            else
            {
              v142 = *(((v95 + v180) & 0xFFFFFFFFFFFFFFF8) + 8);
              if (v142 >= 0xFFFFFFFF)
              {
                LODWORD(v142) = -1;
              }

              v93 = v206;
              v92 = v196;
              if ((v142 + 1) >= 2)
              {
                goto LABEL_137;
              }
            }

            v96 = v219;
            v94 = v204;
            goto LABEL_156;
          }

          v92 = v196;
          v93 = v206;
          if (__swift_getEnumTagSinglePayload(v91, v183, v196))
          {
LABEL_137:
            memcpy(v90, v91, __na);
            v106 = v192;
LABEL_166:
            v151 = v93;
            goto LABEL_167;
          }

          v94 = v204;
          v95 = ((v91 + v204) & v39);
          v96 = v219;
LABEL_156:
          (*(v96 + 16))(v90, v91, v92);
          v143 = ((v90 + v94) & v39);
          if (__swift_getEnumTagSinglePayload(v95, 1, v195))
          {
            memcpy(v143, v95, v93);
          }

          else
          {
            (*(v182 + 16))(v143, v95, v195);
            __swift_storeEnumTagSinglePayload(v143, 0, 1, v195);
          }

          v106 = v192;
          v146 = ((v143 + v180) & 0xFFFFFFFFFFFFFFF8);
          v147 = ((v95 + v180) & 0xFFFFFFFFFFFFFFF8);
          *v146 = *v147;
          v146[1] = v147[1];
          v148 = (v146 + 19) & 0xFFFFFFFFFFFFFFF8;
          v149 = (v147 + 19) & 0xFFFFFFFFFFFFFFF8;
          v150 = *v149;
          *(v148 + 4) = *(v149 + 4);
          *v148 = v150;

          v151 = v179;
          if (!v181)
          {
            goto LABEL_166;
          }

LABEL_167:
          v152 = (((v106 + v151 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          v153 = ((v90 + v152 + 7) & 0xFFFFFFFFFFFFFFF8);
          v78 = *((v91 + v152 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v153 = v78;
          *((v213 & 0xFFFFFFFFFFFFFFF8) + v47) = 8;
LABEL_168:
          v154 = v78;
LABEL_169:
          v86 = v210;
LABEL_170:
          v113 = &v37[v220 + 7];
LABEL_171:
          v155 = (((v42 | 7) + v86) & 0xFFFFFFFFFFFFFFF8);
          v156 = (((v113 | 7) + v86) & 0xFFFFFFFFFFFFFFF8);
          *v156 = *v155;
          v157 = (v156 + 15) & 0xFFFFFFFFFFFFFFF8;
          v158 = (v155 + 15) & 0xFFFFFFFFFFFFFFF8;
          v159 = *(v158 + 24);

          if (v159 < 0xFFFFFFFF)
          {
            v160 = *v158;
            v161 = *(v158 + 16);
            *(v157 + 32) = *(v158 + 32);
            *v157 = v160;
            *(v157 + 16) = v161;
          }

          else
          {
            *(v157 + 24) = v159;
            *(v157 + 32) = *(v158 + 32);
            (**(v159 - 8))(v157, v158, v159);
          }

          *(v157 + 40) = *(v158 + 40);
          v37[v218] = 0;
          return v37;
        case 9u:
          v68 = v213 & 0xFFFFFFFFFFFFFFF8;
          (*(v185 + 16))(v213 & 0xFFFFFFFFFFFFFFF8, v42 & 0xFFFFFFFFFFFFFFF8, v187);
          v69 = 9;
LABEL_107:
          *(v68 + v47) = v69;
          goto LABEL_169;
        default:
          v86 = v24 + 1;
          memcpy((v213 & 0xFFFFFFFFFFFFFFF8), (v42 & 0xFFFFFFFFFFFFFFF8), v210);
          goto LABEL_170;
      }

    case 1u:
      v211 = v24 + 1;
      (*(v212 + 16))(v37, a2, v197);
      v214 = &v37[v220 + 7];
      v56 = (v214 & 0xFFFFFFFFFFFFFFF8);
      v57 = &a2[v220 + 7];
      v58 = (v57 & 0xFFFFFFFFFFFFFFF8);
      v59 = *((v57 & 0xFFFFFFFFFFFFFFF8) + v24);
      v60 = v59 - 10;
      if (v59 < 0xA)
      {
        v62 = v24;
      }

      else
      {
        if (v24 <= 3)
        {
          v61 = v24;
        }

        else
        {
          v61 = 4;
        }

        v62 = v24;
        switch(v61)
        {
          case 1:
            v63 = *v58;
            goto LABEL_99;
          case 2:
            v63 = *v58;
            goto LABEL_99;
          case 3:
            v63 = *v58 | (v58[2] << 16);
            goto LABEL_99;
          case 4:
            v63 = *v58;
LABEL_99:
            if (v24 < 4)
            {
              v59 = (v63 | (v60 << (8 * v24))) + 10;
            }

            else
            {
              v59 = v63 + 10;
            }

            break;
          default:
            goto LABEL_102;
        }
      }

      break;
    case 2u:
      v49 = a2[v29];
      v50 = v49 - 2;
      if (v49 >= 2)
      {
        if (v29 <= 3)
        {
          v51 = v29;
        }

        else
        {
          v51 = 4;
        }

        switch(v51)
        {
          case 1:
            v52 = *a2;
            goto LABEL_81;
          case 2:
            v52 = *a2;
            goto LABEL_81;
          case 3:
            v52 = *a2 | (a2[2] << 16);
            goto LABEL_81;
          case 4:
            v52 = *a2;
LABEL_81:
            if (v29 < 4)
            {
              v49 = (v52 | (v50 << (8 * v29))) + 2;
            }

            else
            {
              v49 = v52 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v49 == 1)
      {
        v65 = *a2;
        v66 = *a2;
        *v37 = v65;
        v37[8] = a2[8];
        v37[v29] = 1;
      }

      else if (v49)
      {
        memcpy(v37, a2, v29 + 1);
      }

      else
      {
        (*(v28 + 16))(v37, a2, AssociatedTypeWitness);
        v37[v29] = 0;
      }

      v67 = v218;
      v55 = 2;
      goto LABEL_187;
    case 3u:
      v53 = *a2;
      v54 = *a2;
      *v37 = v53;
      v37[8] = a2[8];
      v55 = 3;
      goto LABEL_186;
    default:

      return memcpy(v37, a2, v24 + 1);
  }

LABEL_102:
  switch(v59)
  {
    case 0u:
      (*(v193 + 16))(v214 & 0xFFFFFFFFFFFFFFF8, v57 & 0xFFFFFFFFFFFFFFF8, v194);
      *((v214 & 0xFFFFFFFFFFFFFFF8) + v62) = 0;
      goto LABEL_180;
    case 1u:
      (*(v193 + 16))(v214 & 0xFFFFFFFFFFFFFFF8, v57 & 0xFFFFFFFFFFFFFFF8, v194);
      *(((v214 | 7) + v186) & 0xFFFFFFFFFFFFFFF8) = *(((v57 | 7) + v186) & 0xFFFFFFFFFFFFFFF8);
      *((v214 & 0xFFFFFFFFFFFFFFF8) + v62) = 1;
      sub_1DD0DCF8C();
    case 2u:
      *v56 = *v58;
      v56[1] = *(v58 + 1);
      v56[2] = *(v58 + 2);
      *(v56 + v62) = 2;

      goto LABEL_180;
    case 3u:
      *v56 = *v58;
      *(v56 + v62) = 3;
      swift_unknownObjectRetain();
      goto LABEL_180;
    case 4u:
      v70 = v214 & 0xFFFFFFFFFFFFFFF8;
      (*(v190 + 16))(v214 & 0xFFFFFFFFFFFFFFF8, v57 & 0xFFFFFFFFFFFFFFF8, v191);
      v71 = 4;
      goto LABEL_109;
    case 5u:
      v79 = *v58;
      *v56 = *v58;
      *(v56 + v62) = 5;
      goto LABEL_179;
    case 6u:
      (*(v219 + 16))(v214 & 0xFFFFFFFFFFFFFFF8, v57 & 0xFFFFFFFFFFFFFFF8, v196);
      v83 = ((v204 + (v214 & 0xFFFFFFFFFFFFFFF8)) & v39);
      v84 = (&v58[v204] & v39);
      if (__swift_getEnumTagSinglePayload(v84, 1, v195))
      {
        v85 = v206;
        memcpy(v83, v84, v206);
      }

      else
      {
        (*(v4 + 16))(v83, v84, v195);
        __swift_storeEnumTagSinglePayload(v83, 0, 1, v195);
        v85 = v206;
      }

      v125 = &v37[v220 + 7];
      v137 = ((v83 + v85 + 7) & 0xFFFFFFFFFFFFFFF8);
      v138 = ((v84 + v85 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v137 = *v138;
      v137[1] = v138[1];
      v139 = (v137 + 19) & 0xFFFFFFFFFFFFFFF8;
      v140 = (v138 + 19) & 0xFFFFFFFFFFFFFFF8;
      v141 = *v140;
      *(v139 + 4) = *(v140 + 4);
      *v139 = v141;
      *((v214 & 0xFFFFFFFFFFFFFFF8) + v62) = 6;
      goto LABEL_151;
    case 7u:
      (*(v219 + 16))(v214 & 0xFFFFFFFFFFFFFFF8, v57 & 0xFFFFFFFFFFFFFFF8, v196);
      v75 = ((v204 + (v214 & 0xFFFFFFFFFFFFFFF8)) & v39);
      v76 = (&v58[v204] & v39);
      if (__swift_getEnumTagSinglePayload(v76, 1, v195))
      {
        v77 = v206;
        memcpy(v75, v76, v206);
      }

      else
      {
        (*(v4 + 16))(v75, v76, v195);
        __swift_storeEnumTagSinglePayload(v75, 0, 1, v195);
        v77 = v206;
      }

      v120 = ((v75 + v77 + 7) & 0xFFFFFFFFFFFFFFF8);
      v121 = ((v76 + v77 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v120 = *v121;
      v120[1] = v121[1];
      v122 = (v120 + 19) & 0xFFFFFFFFFFFFFFF8;
      v123 = (v121 + 19) & 0xFFFFFFFFFFFFFFF8;
      v124 = *v123;
      *(v122 + 4) = *(v123 + 4);
      *v122 = v124;
      v125 = &v37[v220 + 7];
      v126 = (((v214 | 7) + __na) & 0xFFFFFFFFFFFFFFF8);
      v127 = (((v57 | 7) + __na) & 0xFFFFFFFFFFFFFFF8);
      *v126 = *v127;
      v126[1] = v127[1];
      v128 = ((v126 + 23) & 0xFFFFFFFFFFFFFFF8);
      v129 = ((v127 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v128 = *v129;
      v128[1] = v129[1];
      v130 = ((v128 + 23) & 0xFFFFFFFFFFFFFFF8);
      v131 = ((v129 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v130 = *v131;
      v130[1] = v131[1];
      *((v214 & 0xFFFFFFFFFFFFFFF8) + v62) = 7;

LABEL_151:

      v87 = v24 + 1;
      goto LABEL_182;
    case 8u:
      (*(v188 + 16))(v214 & 0xFFFFFFFFFFFFFFF8, v57 & 0xFFFFFFFFFFFFFFF8, v189);
      v97 = (((v214 | 7) + v184) & 0xFFFFFFFFFFFFFFF8);
      v98 = (((v57 | 7) + v184) & 0xFFFFFFFFFFFFFFF8);
      *v97 = *v98;
      v97[1] = v98[1];
      v99 = ((v97 + v202) & v40);
      v100 = ((v98 + v202) & v40);

      if (v183 == v19)
      {
        v101 = v196;
        v102 = v206;
        if (!__swift_getEnumTagSinglePayload(v100, v183, v196))
        {
          v103 = v204;
          v104 = ((v100 + v204) & v39);
          v105 = v219;
          goto LABEL_162;
        }

LABEL_141:
        memcpy(v99, v100, __na);
        v107 = v192;
        goto LABEL_177;
      }

      v104 = ((v100 + v204) & v39);
      if (v178 == v19)
      {
        v102 = v206;
        v101 = v196;
        if (v181 >= 2 && __swift_getEnumTagSinglePayload((v100 + v204) & v39, v181, v195) >= 2)
        {
          goto LABEL_141;
        }
      }

      else
      {
        v144 = *(((v104 + v180) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v144 >= 0xFFFFFFFF)
        {
          LODWORD(v144) = -1;
        }

        v102 = v206;
        v101 = v196;
        if ((v144 + 1) >= 2)
        {
          goto LABEL_141;
        }
      }

      v105 = v219;
      v103 = v204;
LABEL_162:
      (*(v105 + 16))(v99, v100, v101);
      v145 = ((v99 + v103) & v39);
      if (__swift_getEnumTagSinglePayload(v104, 1, v195))
      {
        memcpy(v145, v104, v102);
      }

      else
      {
        (*(v182 + 16))(v145, v104, v195);
        __swift_storeEnumTagSinglePayload(v145, 0, 1, v195);
      }

      v107 = v192;
      v162 = ((v145 + v180) & 0xFFFFFFFFFFFFFFF8);
      v163 = ((v104 + v180) & 0xFFFFFFFFFFFFFFF8);
      *v162 = *v163;
      v162[1] = v163[1];
      v164 = (v162 + 19) & 0xFFFFFFFFFFFFFFF8;
      v165 = (v163 + 19) & 0xFFFFFFFFFFFFFFF8;
      v166 = *v165;
      *(v164 + 4) = *(v165 + 4);
      *v164 = v166;

      v167 = v179;
      if (v181)
      {
LABEL_178:
        v168 = (((v107 + v167 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
        v169 = ((v99 + v168 + 7) & 0xFFFFFFFFFFFFFFF8);
        v79 = *((v100 + v168 + 7) & 0xFFFFFFFFFFFFFFF8);
        *v169 = v79;
        *((v214 & 0xFFFFFFFFFFFFFFF8) + v62) = 8;
LABEL_179:
        v170 = v79;
LABEL_180:
        v87 = v211;
LABEL_181:
        v125 = &v37[v220 + 7];
LABEL_182:
        v171 = (((v57 | 7) + v87) & 0xFFFFFFFFFFFFFFF8);
        v172 = (((v125 | 7) + v87) & 0xFFFFFFFFFFFFFFF8);
        *v172 = *v171;
        v173 = (v172 + 15) & 0xFFFFFFFFFFFFFFF8;
        v174 = (v171 + 15) & 0xFFFFFFFFFFFFFFF8;
        v175 = *(v174 + 24);

        if (v175 < 0xFFFFFFFF)
        {
          v176 = *v174;
          v177 = *(v174 + 16);
          *(v173 + 32) = *(v174 + 32);
          *v173 = v176;
          *(v173 + 16) = v177;
        }

        else
        {
          *(v173 + 24) = v175;
          *(v173 + 32) = *(v174 + 32);
          (**(v175 - 8))(v173, v174, v175);
        }

        *(v173 + 40) = *(v174 + 40);
        v55 = 1;
LABEL_186:
        v67 = v218;
LABEL_187:
        v37[v67] = v55;
        return v37;
      }

LABEL_177:
      v167 = v102;
      goto LABEL_178;
    case 9u:
      v70 = v214 & 0xFFFFFFFFFFFFFFF8;
      (*(v185 + 16))(v214 & 0xFFFFFFFFFFFFFFF8, v57 & 0xFFFFFFFFFFFFFFF8, v187);
      v71 = 9;
LABEL_109:
      *(v70 + v62) = v71;
      goto LABEL_180;
    default:
      v87 = v24 + 1;
      memcpy((v214 & 0xFFFFFFFFFFFFFFF8), (v57 & 0xFFFFFFFFFFFFFFF8), v211);
      goto LABEL_181;
  }
}

void sub_1DCF87A10(unsigned __int8 *a1, uint64_t a2)
{
  v100 = *(sub_1DD0DB04C() - 8);
  v111 = *(v100 + 64);
  v97 = sub_1DD0DC76C();
  v107 = *(v97 - 8);
  v96 = v107;
  v2 = *(v107 + 80);
  v95 = sub_1DD0DB1EC();
  v109 = *(v95 - 8);
  v94 = v109;
  v101 = *(v109 + 80) | v2;
  v99 = sub_1DD0DB4BC();
  v105 = *(v99 - 8);
  v117 = v105;
  v3 = *(v105 + 80) & 0xF8;
  v98 = sub_1DD0DB3EC();
  v4 = *(v98 - 8);
  v5 = *(v4 + 80);
  v6 = v3 | v5 | 7;
  v7 = sub_1DD0DD12C();
  v103 = *(v7 - 8);
  v90 = v103;
  v91 = v7;
  v8 = *(v103 + 80);
  v89 = sub_1DD0DD08C();
  v9 = v107;
  v88 = *(v89 - 8);
  v10 = (v101 | (v8 | *(v88 + 80))) & 0xF8 | v6;
  v108 = v111 + v10;
  v11 = (v111 + v10) & ~v10;
  v12 = *(v9 + 64);
  v87 = v12 + 7;
  if (((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v12)
  {
    v12 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v12 <= *(v109 + 64))
  {
    v12 = *(v109 + 64);
  }

  v110 = *(v105 + 64) + v5;
  v112 = v5;
  v86 = v4;
  v13 = *(v4 + 84);
  v14 = *(v4 + 64);
  v92 = v14;
  if (!v13)
  {
    ++v14;
  }

  v93 = v14;
  v15 = v14 + 7;
  v102 = v110 & ~v5;
  v16 = (v14 + 7 + v102) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v12 <= v17)
  {
    v12 = (v16 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v18 = v16 + 31;
  if (v12 <= (((((v18 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v12 = (((((v18 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v19 = *(v103 + 64);
  v20 = v6 + 16;
  v21 = v6;
  v22 = (v6 + 16 + ((v19 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v6;
  v23 = *(v105 + 84);
  v106 = *(v4 + 84);
  v24 = v13 != 0;
  v25 = v13 - 1;
  if (!v24)
  {
    v25 = 0;
  }

  v104 = v25;
  if (v25 <= v23)
  {
    v25 = v23;
  }

  if (v25 <= 0x7FFFFFFE)
  {
    v26 = 2147483646;
  }

  else
  {
    v26 = v25;
  }

  v27 = ((v18 + v22) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v12 <= v27)
  {
    v12 = v27;
  }

  v28 = *(*(v89 - 8) + 64);
  if (v12 > v28)
  {
    v28 = v12;
  }

  if (v28 <= 0x18)
  {
    v29 = 24;
  }

  else
  {
    v29 = v28;
  }

  v30 = ((((v29 + v11 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  v32 = *(a2 + 16);
  v31 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(*(AssociatedTypeWitness - 8) + 64);
  if (v34 <= 9)
  {
    v34 = 9;
  }

  if (v34 + 1 > v30)
  {
    v35 = v34 + 1;
  }

  else
  {
    v35 = v30;
  }

  if (v35 <= 9)
  {
    v36 = 9;
  }

  else
  {
    v36 = v35;
  }

  v37 = a1[v36];
  v38 = v37 - 4;
  if (v37 >= 4)
  {
    if (v36 <= 3)
    {
      v39 = v36;
    }

    else
    {
      v39 = 4;
    }

    switch(v39)
    {
      case 1:
        v40 = *a1;
        goto LABEL_42;
      case 2:
        v40 = *a1;
        goto LABEL_42;
      case 3:
        v40 = *a1 | (a1[2] << 16);
        goto LABEL_42;
      case 4:
        v40 = *a1;
LABEL_42:
        if (v36 < 4)
        {
          v40 |= v38 << (8 * v36);
        }

        v37 = v40 + 4;
        break;
      default:
        break;
    }
  }

  v85 = v26;
  v115 = v15;
  v41 = ~v10;
  v42 = v29 + 1;
  switch(v37)
  {
    case 0u:
      v113 = ~v112;
      (*(v100 + 8))();
      v43 = (&a1[v108] & v41);
      v44 = v43[v29];
      v45 = v44 - 10;
      if (v44 >= 0xA)
      {
        if (v29 <= 3)
        {
          v46 = v29;
        }

        else
        {
          v46 = 4;
        }

        switch(v46)
        {
          case 1:
            v47 = *v43;
            goto LABEL_83;
          case 2:
            v47 = *v43;
            goto LABEL_83;
          case 3:
            v47 = *v43 | (v43[2] << 16);
            goto LABEL_83;
          case 4:
            v47 = *v43;
LABEL_83:
            if (v29 < 4)
            {
              v44 = (v47 | (v45 << (8 * v29))) + 10;
            }

            else
            {
              v44 = v47 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v44)
      {
        case 0u:
          goto LABEL_92;
        case 1u:
          goto LABEL_103;
        case 2u:
          goto LABEL_96;
        case 3u:
          goto LABEL_97;
        case 4u:
          goto LABEL_93;
        case 5u:
          goto LABEL_104;
        case 6u:
          goto LABEL_105;
        case 7u:
          goto LABEL_98;
        case 8u:
          goto LABEL_110;
        case 9u:
          goto LABEL_94;
        default:
          goto LABEL_126;
      }

      goto LABEL_126;
    case 1u:
      v113 = ~v112;
      (*(v100 + 8))();
      v43 = (&a1[v108] & v41);
      v52 = v43[v29];
      v53 = v52 - 10;
      if (v52 >= 0xA)
      {
        if (v29 <= 3)
        {
          v54 = v29;
        }

        else
        {
          v54 = 4;
        }

        switch(v54)
        {
          case 1:
            v55 = *v43;
            goto LABEL_88;
          case 2:
            v55 = *v43;
            goto LABEL_88;
          case 3:
            v55 = *v43 | (v43[2] << 16);
            goto LABEL_88;
          case 4:
            v55 = *v43;
LABEL_88:
            if (v29 < 4)
            {
              v52 = (v55 | (v53 << (8 * v29))) + 10;
            }

            else
            {
              v52 = v55 + 10;
            }

            break;
          default:
            goto LABEL_91;
        }
      }

      break;
    case 2u:
      v48 = a1[v34];
      v49 = v48 - 2;
      if (v48 >= 2)
      {
        if (v34 <= 3)
        {
          v50 = v34;
        }

        else
        {
          v50 = 4;
        }

        switch(v50)
        {
          case 1:
            v51 = *a1;
            goto LABEL_71;
          case 2:
            v51 = *a1;
            goto LABEL_71;
          case 3:
            v51 = *a1 | (a1[2] << 16);
            goto LABEL_71;
          case 4:
            v51 = *a1;
LABEL_71:
            if (v34 < 4)
            {
              v48 = (v51 | (v49 << (8 * v34))) + 2;
            }

            else
            {
              v48 = v51 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v48 == 1)
      {
        goto LABEL_79;
      }

      if (!v48)
      {
        v56 = *(*(AssociatedTypeWitness - 8) + 8);

        v56();
      }

      return;
    case 3u:
LABEL_79:
      v57 = *a1;

      return;
    default:
      return;
  }

LABEL_91:
  switch(v52)
  {
    case 0u:
LABEL_92:
      v59 = v96;
      v58 = v97;
      goto LABEL_95;
    case 1u:
LABEL_103:
      (*(v96 + 8))(v43, v97);
      v71 = *(&v43[v87] & 0xFFFFFFFFFFFFFFF8);

      goto LABEL_126;
    case 2u:
LABEL_96:
      v60 = *(v43 + 1);

      v61 = *(v43 + 2);
      goto LABEL_109;
    case 3u:
LABEL_97:
      v62 = *v43;
      swift_unknownObjectRelease();
      goto LABEL_126;
    case 4u:
LABEL_93:
      v59 = v94;
      v58 = v95;
      goto LABEL_95;
    case 5u:
LABEL_104:
      v72 = *v43;
      goto LABEL_125;
    case 6u:
LABEL_105:
      (*(v117 + 8))(v43, v99);
      v73 = &v43[v110] & v113;
      if (!__swift_getEnumTagSinglePayload(v73, 1, v98))
      {
        (*(v86 + 8))(v73, v98);
      }

      v70 = v115 + v73;
      goto LABEL_108;
    case 7u:
LABEL_98:
      (*(v117 + 8))(v43, v99);
      v63 = &v43[v110] & v113;
      if (!__swift_getEnumTagSinglePayload(v63, 1, v98))
      {
        (*(v86 + 8))(v63, v98);
      }

      v64 = 7;
      if (!v106)
      {
        v64 = 8;
      }

      v65 = *(((v92 + v64 + v63) & 0xFFFFFFFFFFFFFFF8) + 8);

      v66 = &v43[((((v102 + v93 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 12] & 0xFFFFFFFFFFFFFFF8;
      v67 = *(v66 + 8);

      v68 = (v66 + 23) & 0xFFFFFFFFFFFFFFF8;
      v69 = *(v68 + 8);

      v70 = v68 + 23;
LABEL_108:
      v74 = *((v70 & 0xFFFFFFFFFFFFFFF8) + 8);
LABEL_109:

      goto LABEL_126;
    case 8u:
LABEL_110:
      (*(v90 + 8))(v43, v91);
      v75 = &v43[v19 + 7] & 0xFFFFFFFFFFFFFFF8;
      v76 = *(v75 + 8);

      v77 = (v20 + v75) & ~v21;
      if (v23 == v85)
      {
        if (__swift_getEnumTagSinglePayload(v77, v23, v99))
        {
          goto LABEL_124;
        }

        v78 = (v110 + v77) & v113;
        goto LABEL_120;
      }

      v78 = (v110 + v77) & v113;
      if (v104 == v85)
      {
        v79 = v98;
        if (v106 < 2)
        {
LABEL_121:
          (*(v117 + 8))(v77, v99);
          if (!__swift_getEnumTagSinglePayload(v78, 1, v79))
          {
            (*(v86 + 8))(v78, v79);
          }

          v81 = *(((v115 + v78) & 0xFFFFFFFFFFFFFFF8) + 8);

          goto LABEL_124;
        }

        if (__swift_getEnumTagSinglePayload((v110 + v77) & v113, v106, v98) >= 2)
        {
          goto LABEL_124;
        }

LABEL_120:
        v79 = v98;
        goto LABEL_121;
      }

      v80 = *(((v115 + v78) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v80 >= 0xFFFFFFFF)
      {
        LODWORD(v80) = -1;
      }

      if ((v80 + 1) < 2)
      {
        goto LABEL_120;
      }

LABEL_124:
      v72 = *((v17 + v77 + 7) & 0xFFFFFFFFFFFFFFF8);
LABEL_125:

LABEL_126:
      v82 = &v43[v42 + 7];
      v84 = (v82 & 0xFFFFFFFFFFFFFFF8) + 15;
      v83 = *(v82 & 0xFFFFFFFFFFFFFFF8);

      if (*((v84 & 0xFFFFFFFFFFFFFFF8) + 24) >= 0xFFFFFFFFuLL)
      {
        __swift_destroy_boxed_opaque_existential_1Tm((v84 & 0xFFFFFFFFFFFFFFF8));
      }

      return;
    case 9u:
LABEL_94:
      v59 = v88;
      v58 = v89;
LABEL_95:
      (*(v59 + 8))(v43, v58);
      goto LABEL_126;
    default:
      goto LABEL_126;
  }
}

_BYTE *sub_1DCF884FC(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v202 = *(sub_1DD0DB04C() - 8);
  v215 = *(v202 + 64);
  v199 = sub_1DD0DC76C();
  v209 = *(v199 - 8);
  v198 = v209;
  v3 = *(v209 + 80);
  v197 = sub_1DD0DB1EC();
  v213 = *(v197 - 8);
  v196 = v213;
  v203 = *(v213 + 80) | v3;
  v201 = sub_1DD0DB4BC();
  v207 = *(v201 - 8);
  v224 = v207;
  v4 = *(v207 + 80) & 0xF8;
  v200 = sub_1DD0DB3EC();
  v5 = *(v200 - 8);
  v6 = *(v5 + 80);
  v7 = v4 | v6 | 7;
  v8 = sub_1DD0DD12C();
  v205 = *(v8 - 8);
  v194 = v205;
  v195 = v8;
  v9 = *(v205 + 80);
  v193 = sub_1DD0DD08C();
  v10 = v209;
  v192 = *(v193 - 8);
  v11 = (v203 | (v9 | *(v192 + 80))) & 0xF8 | v7;
  v210 = v215 + v11;
  v12 = (v215 + v11) & ~v11;
  v13 = *(v10 + 64);
  v191 = v13 + 7;
  if (((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v13)
  {
    v13 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v13 <= *(v213 + 64))
  {
    v13 = *(v213 + 64);
  }

  v214 = *(v207 + 64) + v6;
  v216 = v6;
  v189 = v5;
  v14 = *(v5 + 84);
  v15 = *(v5 + 64);
  v187 = v15;
  if (!v14)
  {
    ++v15;
  }

  v208 = v15;
  v16 = v15 + 7;
  v204 = v214 & ~v6;
  v17 = (v15 + 7 + v204) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v13 <= v18)
  {
    v13 = (v17 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v19 = v17 + 31;
  if (v13 <= (((((v19 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v13 = (((((v19 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v20 = *(v205 + 64);
  v190 = v7 + 16;
  v21 = v7;
  v22 = (v7 + 16 + ((v20 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v7;
  v23 = *(v224 + 84);
  v188 = v14;
  v24 = v14 != 0;
  v25 = v14 - 1;
  if (v24)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v26 <= v23)
  {
    v27 = *(v224 + 84);
  }

  else
  {
    v27 = v26;
  }

  if (v27 <= 0x7FFFFFFE)
  {
    v27 = 2147483646;
  }

  v206 = v27;
  v28 = ((v19 + v22) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 <= v28)
  {
    v13 = v28;
  }

  v29 = *(*(v193 - 8) + 64);
  if (v13 > v29)
  {
    v29 = v13;
  }

  if (v29 <= 0x18)
  {
    v30 = 24;
  }

  else
  {
    v30 = v29;
  }

  v31 = ((((v30 + v12 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  v33 = *(a3 + 16);
  v32 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (*(*(AssociatedTypeWitness - 8) + 64) <= 9uLL)
  {
    v35 = 9;
  }

  else
  {
    v35 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v35 + 1 > v31)
  {
    v36 = v35 + 1;
  }

  else
  {
    v36 = v31;
  }

  if (v36 <= 9)
  {
    v37 = 9;
  }

  else
  {
    v37 = v36;
  }

  v38 = a2[v37];
  v39 = v38 - 4;
  if (v38 >= 4)
  {
    if (v37 <= 3)
    {
      v40 = v37;
    }

    else
    {
      v40 = 4;
    }

    switch(v40)
    {
      case 1:
        v41 = *a2;
        goto LABEL_44;
      case 2:
        v41 = *a2;
        goto LABEL_44;
      case 3:
        v41 = *a2 | (a2[2] << 16);
        goto LABEL_44;
      case 4:
        v41 = *a2;
LABEL_44:
        if (v37 < 4)
        {
          v41 |= v39 << (8 * v37);
        }

        v38 = v41 + 4;
        break;
      default:
        break;
    }
  }

  v220 = v16;
  v42 = ~v11;
  v43 = ~v21;
  v44 = v37;
  switch(v38)
  {
    case 0u:
      v183 = ~v216;
      v217 = v30 + 1;
      (*(v202 + 16))(a1);
      v45 = (&a1[v210] & v42);
      v46 = v30;
      v47 = (&a2[v210] & v42);
      v48 = v47[v46];
      v49 = v48 - 10;
      v185 = v46;
      if (v48 < 0xA)
      {
        v51 = v44;
      }

      else
      {
        if (v46 <= 3)
        {
          v50 = v46;
        }

        else
        {
          v50 = 4;
        }

        v51 = v44;
        switch(v50)
        {
          case 1:
            v52 = *v47;
            goto LABEL_89;
          case 2:
            v52 = *v47;
            goto LABEL_89;
          case 3:
            v52 = *(&a2[v210] & v42) | (*((&a2[v210] & v42) + 2) << 16);
            goto LABEL_89;
          case 4:
            v52 = *v47;
LABEL_89:
            if (v185 < 4)
            {
              v48 = (v52 | (v49 << (8 * v185))) + 10;
            }

            else
            {
              v48 = v52 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v48)
      {
        case 0u:
          (*(v198 + 16))(v45, v47, v199);
          *(v45 + v185) = 0;
          goto LABEL_123;
        case 1u:
          (*(v198 + 16))(v45, v47, v199);
          *((v45 + v191) & 0xFFFFFFFFFFFFFFF8) = *(&v47[v191] & 0xFFFFFFFFFFFFFFF8);
          *(v45 + v185) = 1;
          sub_1DD0DCF8C();
        case 2u:
          *v45 = *v47;
          *((&a1[v210] & v42) + 8) = *((&a2[v210] & v42) + 8);
          *((&a1[v210] & v42) + 0x10) = *((&a2[v210] & v42) + 0x10);
          *(v45 + v185) = 2;

          goto LABEL_123;
        case 3u:
          *v45 = *v47;
          *(v45 + v185) = 3;
          swift_unknownObjectRetain();
          goto LABEL_123;
        case 4u:
          (*(v196 + 16))(v45, v47, v197);
          v73 = 4;
          goto LABEL_103;
        case 5u:
          v81 = *v47;
          *v45 = *v47;
          *(v45 + v185) = 5;
          v82 = v81;
          goto LABEL_123;
        case 6u:
          (*(v224 + 16))(v45, v47, v201);
          v85 = (&a1[v210] & v42);
          v86 = ((v45 + v214) & v183);
          v87 = (&v47[v214] & v183);
          if (__swift_getEnumTagSinglePayload(v87, 1, v200))
          {
            memcpy(v86, v87, v208);
          }

          else
          {
            (*(v189 + 16))(v86, v87, v200);
            __swift_storeEnumTagSinglePayload(v86, 0, 1, v200);
          }

          v55 = a1;
          v149 = ((v86 + v220) & 0xFFFFFFFFFFFFFFF8);
          v150 = ((v87 + v220) & 0xFFFFFFFFFFFFFFF8);
          *v149 = *v150;
          v149[1] = v150[1];
          v151 = (v149 + 19) & 0xFFFFFFFFFFFFFFF8;
          v152 = (v150 + 19) & 0xFFFFFFFFFFFFFFF8;
          v153 = *v152;
          *(v151 + 4) = *(v152 + 4);
          *v151 = v153;
          v45 = v85;
          *(v85 + v185) = 6;
          goto LABEL_156;
        case 7u:
          (*(v224 + 16))(v45, v47, v201);
          v75 = (&a1[v210] & v42);
          v76 = ((v45 + v214) & v183);
          v77 = (&v47[v214] & v183);
          if (__swift_getEnumTagSinglePayload(v77, 1, v200))
          {
            memcpy(v76, v77, v208);
          }

          else
          {
            (*(v189 + 16))(v76, v77, v200);
            __swift_storeEnumTagSinglePayload(v76, 0, 1, v200);
          }

          v55 = a1;
          v127 = ((v76 + v220) & 0xFFFFFFFFFFFFFFF8);
          v128 = ((v77 + v220) & 0xFFFFFFFFFFFFFFF8);
          *v127 = *v128;
          v127[1] = v128[1];
          v129 = (v127 + 19) & 0xFFFFFFFFFFFFFFF8;
          v130 = (v128 + 19) & 0xFFFFFFFFFFFFFFF8;
          v131 = *v130;
          *(v129 + 4) = *(v130 + 4);
          *v129 = v131;
          v132 = ((v75 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
          v133 = (&v47[v18 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v132 = *v133;
          v132[1] = v133[1];
          v134 = ((v132 + 23) & 0xFFFFFFFFFFFFFFF8);
          v135 = ((v133 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v134 = *v135;
          v134[1] = v135[1];
          v136 = ((v134 + 23) & 0xFFFFFFFFFFFFFFF8);
          v137 = ((v135 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v136 = *v137;
          v136[1] = v137[1];
          *(v75 + v185) = 7;

          v45 = v75;
LABEL_156:

          goto LABEL_124;
        case 8u:
          v222 = v51;
          (*(v194 + 16))(v45, v47, v195);
          v211 = (&a1[v210] & v42);
          v105 = ((v45 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
          v106 = (&v47[v20 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v105 = *v106;
          v105[1] = v106[1];
          v107 = ((v105 + v190) & v43);
          v108 = ((v106 + v190) & v43);

          if (v23 != v206)
          {
            v110 = v214;
            v112 = ((v108 + v214) & v183);
            if (v26 == v206)
            {
              v113 = v200;
              v55 = a1;
              if (v188 < 2)
              {
LABEL_164:
                v114 = v224;
                v111 = v183;
                goto LABEL_165;
              }

              if (__swift_getEnumTagSinglePayload((v108 + v214) & v183, v188, v200) >= 2)
              {
                goto LABEL_145;
              }
            }

            else
            {
              v159 = *(((v112 + v220) & 0xFFFFFFFFFFFFFFF8) + 8);
              if (v159 >= 0xFFFFFFFF)
              {
                LODWORD(v159) = -1;
              }

              v55 = a1;
              if ((v159 + 1) >= 2)
              {
                goto LABEL_145;
              }
            }

            v113 = v200;
            goto LABEL_164;
          }

          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v108, v23, v201);
          v55 = a1;
          v110 = v214;
          if (EnumTagSinglePayload)
          {
LABEL_145:
            memcpy(v107, v108, v18);
            v125 = v204;
LABEL_176:
            v168 = v208;
            goto LABEL_177;
          }

          v111 = v183;
          v112 = ((v108 + v214) & v183);
          v113 = v200;
          v114 = v224;
LABEL_165:
          (*(v114 + 16))(v107, v108, v201);
          v160 = ((v107 + v110) & v111);
          if (__swift_getEnumTagSinglePayload(v112, 1, v113))
          {
            memcpy(v160, v112, v208);
          }

          else
          {
            (*(v189 + 16))(v160, v112, v113);
            __swift_storeEnumTagSinglePayload(v160, 0, 1, v113);
          }

          v125 = v204;
          v163 = ((v160 + v220) & 0xFFFFFFFFFFFFFFF8);
          v164 = ((v112 + v220) & 0xFFFFFFFFFFFFFFF8);
          *v163 = *v164;
          v163[1] = v164[1];
          v165 = (v163 + 19) & 0xFFFFFFFFFFFFFFF8;
          v166 = (v164 + 19) & 0xFFFFFFFFFFFFFFF8;
          v167 = *v166;
          *(v165 + 4) = *(v166 + 4);
          *v165 = v167;

          v168 = v187;
          if (!v188)
          {
            goto LABEL_176;
          }

LABEL_177:
          v169 = (((v125 + v168 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          v170 = ((v107 + v169 + 7) & 0xFFFFFFFFFFFFFFF8);
          v171 = *((v108 + v169 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v170 = v171;
          v45 = v211;
          *(v211 + v185) = 8;
          v172 = v171;
          v44 = v222;
LABEL_124:
          v91 = (&v47[v217 + 7] & 0xFFFFFFFFFFFFFFF8);
          v92 = ((v45 + v217 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v92 = *v91;
          v93 = (v92 + 15) & 0xFFFFFFFFFFFFFFF8;
          v94 = (v91 + 15) & 0xFFFFFFFFFFFFFFF8;
          v95 = *(v94 + 24);

          if (v95 < 0xFFFFFFFF)
          {
            v96 = *v94;
            v97 = *(v94 + 16);
            *(v93 + 32) = *(v94 + 32);
            *v93 = v96;
            *(v93 + 16) = v97;
          }

          else
          {
            *(v93 + 24) = v95;
            *(v93 + 32) = *(v94 + 32);
            (**(v95 - 8))(v93, v94, v95);
          }

          *(v93 + 40) = *(v94 + 40);
          v55[v44] = 0;
          return v55;
        case 9u:
          (*(v192 + 16))(v45, v47, v193);
          v73 = 9;
LABEL_103:
          *(v45 + v185) = v73;
          goto LABEL_123;
        default:
          memcpy(v45, v47, v217);
LABEL_123:
          v55 = a1;
          goto LABEL_124;
      }

    case 1u:
      v184 = ~v216;
      v218 = v30 + 1;
      (*(v202 + 16))(a1);
      v61 = (&a1[v210] & v42);
      v62 = v30;
      v63 = (&a2[v210] & v42);
      v64 = v63[v62];
      v65 = v64 - 10;
      v186 = v62;
      if (v64 < 0xA)
      {
        v67 = v44;
      }

      else
      {
        if (v62 <= 3)
        {
          v66 = v62;
        }

        else
        {
          v66 = 4;
        }

        v67 = v44;
        switch(v66)
        {
          case 1:
            v68 = *v63;
            goto LABEL_95;
          case 2:
            v68 = *v63;
            goto LABEL_95;
          case 3:
            v68 = *(&a2[v210] & v42) | (*((&a2[v210] & v42) + 2) << 16);
            goto LABEL_95;
          case 4:
            v68 = *v63;
LABEL_95:
            if (v186 < 4)
            {
              v64 = (v68 | (v65 << (8 * v186))) + 10;
            }

            else
            {
              v64 = v68 + 10;
            }

            break;
          default:
            goto LABEL_98;
        }
      }

      break;
    case 2u:
      v53 = a2[v35];
      v54 = v53 - 2;
      v55 = a1;
      if (v53 >= 2)
      {
        if (v35 <= 3)
        {
          v56 = v35;
        }

        else
        {
          v56 = 4;
        }

        switch(v56)
        {
          case 1:
            v57 = *a2;
            goto LABEL_77;
          case 2:
            v57 = *a2;
            goto LABEL_77;
          case 3:
            v57 = *a2 | (a2[2] << 16);
            goto LABEL_77;
          case 4:
            v57 = *a2;
LABEL_77:
            if (v35 < 4)
            {
              v53 = (v57 | (v54 << (8 * v35))) + 2;
            }

            else
            {
              v53 = v57 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v53 == 1)
      {
        v70 = *a2;
        v71 = *a2;
        *a1 = v70;
        a1[8] = a2[8];
        a1[v35] = 1;
      }

      else if (v53)
      {
        memcpy(a1, a2, v35 + 1);
      }

      else
      {
        (*(*(AssociatedTypeWitness - 8) + 16))(a1);
        a1[v35] = 0;
      }

      v72 = 2;
      goto LABEL_134;
    case 3u:
      v58 = *a2;
      v59 = v37;
      v60 = *a2;
      v55 = a1;
      *a1 = v58;
      a1[8] = a2[8];
      a1[v59] = 3;
      return v55;
    default:

      return memcpy(a1, a2, v37 + 1);
  }

LABEL_98:
  switch(v64)
  {
    case 0u:
      (*(v198 + 16))(v61, v63, v199);
      *(v61 + v186) = 0;
      goto LABEL_129;
    case 1u:
      (*(v198 + 16))(v61, v63, v199);
      *((v61 + v191) & 0xFFFFFFFFFFFFFFF8) = *(&v63[v191] & 0xFFFFFFFFFFFFFFF8);
      *(v61 + v186) = 1;
      sub_1DD0DCF8C();
    case 2u:
      *v61 = *v63;
      *((&a1[v210] & v42) + 8) = *((&a2[v210] & v42) + 8);
      *((&a1[v210] & v42) + 0x10) = *((&a2[v210] & v42) + 0x10);
      *(v61 + v186) = 2;

      goto LABEL_129;
    case 3u:
      *v61 = *v63;
      *(v61 + v186) = 3;
      swift_unknownObjectRetain();
      goto LABEL_129;
    case 4u:
      (*(v196 + 16))(v61, v63, v197);
      v74 = 4;
      goto LABEL_105;
    case 5u:
      v83 = *v63;
      *v61 = *v63;
      *(v61 + v186) = 5;
      v84 = v83;
      goto LABEL_129;
    case 6u:
      (*(v224 + 16))(v61, v63, v201);
      v88 = (&a1[v210] & v42);
      v89 = ((v61 + v214) & v184);
      v90 = (&v63[v214] & v184);
      if (__swift_getEnumTagSinglePayload(v90, 1, v200))
      {
        memcpy(v89, v90, v208);
      }

      else
      {
        (*(v189 + 16))(v89, v90, v200);
        __swift_storeEnumTagSinglePayload(v89, 0, 1, v200);
      }

      v55 = a1;
      v154 = ((v89 + v220) & 0xFFFFFFFFFFFFFFF8);
      v155 = ((v90 + v220) & 0xFFFFFFFFFFFFFFF8);
      *v154 = *v155;
      v154[1] = v155[1];
      v156 = (v154 + 19) & 0xFFFFFFFFFFFFFFF8;
      v157 = (v155 + 19) & 0xFFFFFFFFFFFFFFF8;
      v158 = *v157;
      *(v156 + 4) = *(v157 + 4);
      *v156 = v158;
      v61 = v88;
      *(v88 + v186) = 6;
      goto LABEL_159;
    case 7u:
      (*(v224 + 16))(v61, v63, v201);
      v78 = (&a1[v210] & v42);
      v79 = ((v61 + v214) & v184);
      v80 = (&v63[v214] & v184);
      if (__swift_getEnumTagSinglePayload(v80, 1, v200))
      {
        memcpy(v79, v80, v208);
      }

      else
      {
        (*(v189 + 16))(v79, v80, v200);
        __swift_storeEnumTagSinglePayload(v79, 0, 1, v200);
      }

      v55 = a1;
      v138 = ((v79 + v220) & 0xFFFFFFFFFFFFFFF8);
      v139 = ((v80 + v220) & 0xFFFFFFFFFFFFFFF8);
      *v138 = *v139;
      v138[1] = v139[1];
      v140 = (v138 + 19) & 0xFFFFFFFFFFFFFFF8;
      v141 = (v139 + 19) & 0xFFFFFFFFFFFFFFF8;
      v142 = *v141;
      *(v140 + 4) = *(v141 + 4);
      *v140 = v142;
      v143 = ((v78 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
      v144 = (&v63[v18 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v143 = *v144;
      v143[1] = v144[1];
      v145 = ((v143 + 23) & 0xFFFFFFFFFFFFFFF8);
      v146 = ((v144 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v145 = *v146;
      v145[1] = v146[1];
      v147 = ((v145 + 23) & 0xFFFFFFFFFFFFFFF8);
      v148 = ((v146 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v147 = *v148;
      v147[1] = v148[1];
      *(v78 + v186) = 7;

      v61 = v78;
LABEL_159:

      goto LABEL_130;
    case 8u:
      v223 = v67;
      (*(v194 + 16))(v61, v63, v195);
      v212 = (&a1[v210] & v42);
      v115 = ((v61 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
      v116 = (&v63[v20 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v115 = *v116;
      v115[1] = v116[1];
      v117 = ((v115 + v190) & v43);
      v118 = ((v116 + v190) & v43);

      if (v23 == v206)
      {
        v119 = __swift_getEnumTagSinglePayload(v118, v23, v201);
        v55 = a1;
        v120 = v214;
        if (!v119)
        {
          v121 = v184;
          v122 = ((v118 + v214) & v184);
          v123 = v200;
          v124 = v224;
          goto LABEL_172;
        }

LABEL_149:
        memcpy(v117, v118, v18);
        v126 = v204;
        goto LABEL_180;
      }

      v120 = v214;
      v122 = ((v118 + v214) & v184);
      if (v26 == v206)
      {
        v123 = v200;
        v55 = a1;
        if (v188 < 2)
        {
LABEL_171:
          v124 = v224;
          v121 = v184;
LABEL_172:
          (*(v124 + 16))(v117, v118, v201);
          v162 = ((v117 + v120) & v121);
          if (__swift_getEnumTagSinglePayload(v122, 1, v123))
          {
            memcpy(v162, v122, v208);
          }

          else
          {
            (*(v189 + 16))(v162, v122, v123);
            __swift_storeEnumTagSinglePayload(v162, 0, 1, v123);
          }

          v126 = v204;
          v173 = ((v162 + v220) & 0xFFFFFFFFFFFFFFF8);
          v174 = ((v122 + v220) & 0xFFFFFFFFFFFFFFF8);
          *v173 = *v174;
          v173[1] = v174[1];
          v175 = (v173 + 19) & 0xFFFFFFFFFFFFFFF8;
          v176 = (v174 + 19) & 0xFFFFFFFFFFFFFFF8;
          v177 = *v176;
          *(v175 + 4) = *(v176 + 4);
          *v175 = v177;

          v178 = v187;
          if (v188)
          {
LABEL_181:
            v179 = (((v126 + v178 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
            v180 = ((v117 + v179 + 7) & 0xFFFFFFFFFFFFFFF8);
            v181 = *((v118 + v179 + 7) & 0xFFFFFFFFFFFFFFF8);
            *v180 = v181;
            v61 = v212;
            *(v212 + v186) = 8;
            v182 = v181;
            v44 = v223;
LABEL_130:
            v98 = (&v63[v218 + 7] & 0xFFFFFFFFFFFFFFF8);
            v99 = ((v61 + v218 + 7) & 0xFFFFFFFFFFFFFFF8);
            *v99 = *v98;
            v100 = (v99 + 15) & 0xFFFFFFFFFFFFFFF8;
            v101 = (v98 + 15) & 0xFFFFFFFFFFFFFFF8;
            v102 = *(v101 + 24);

            if (v102 < 0xFFFFFFFF)
            {
              v103 = *v101;
              v104 = *(v101 + 16);
              *(v100 + 32) = *(v101 + 32);
              *v100 = v103;
              *(v100 + 16) = v104;
            }

            else
            {
              *(v100 + 24) = v102;
              *(v100 + 32) = *(v101 + 32);
              (**(v102 - 8))(v100, v101, v102);
            }

            *(v100 + 40) = *(v101 + 40);
            v72 = 1;
LABEL_134:
            v55[v44] = v72;
            return v55;
          }

LABEL_180:
          v178 = v208;
          goto LABEL_181;
        }

        if (__swift_getEnumTagSinglePayload((v118 + v214) & v184, v188, v200) >= 2)
        {
          goto LABEL_149;
        }
      }

      else
      {
        v161 = *(((v122 + v220) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v161 >= 0xFFFFFFFF)
        {
          LODWORD(v161) = -1;
        }

        v55 = a1;
        if ((v161 + 1) >= 2)
        {
          goto LABEL_149;
        }
      }

      v123 = v200;
      goto LABEL_171;
    case 9u:
      (*(v192 + 16))(v61, v63, v193);
      v74 = 9;
LABEL_105:
      *(v61 + v186) = v74;
      goto LABEL_129;
    default:
      memcpy(v61, v63, v218);
LABEL_129:
      v55 = a1;
      goto LABEL_130;
  }
}

unsigned __int8 *sub_1DCF89AEC(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 == a2)
  {
    return v3;
  }

  v4 = sub_1DD0DB04C();
  v233 = *(v4 - 8);
  v234 = v4;
  v248 = *(v233 + 64);
  v246 = v3;
  v230 = sub_1DD0DC76C();
  v240 = *(v230 - 8);
  v229 = v240;
  v5 = *(v240 + 80);
  v224 = sub_1DD0DB1EC();
  v242 = *(v224 - 8);
  v223 = v242;
  v235 = *(v242 + 80) | v5;
  v231 = sub_1DD0DB4BC();
  v239 = *(v231 - 8);
  v6 = *(v239 + 80) & 0xF8;
  v232 = sub_1DD0DB3EC();
  v7 = *(v232 - 8);
  v8 = *(v7 + 80);
  v9 = v6 | v8 | 7;
  v222 = sub_1DD0DD12C();
  v237 = *(v222 - 8);
  v221 = v237;
  v10 = *(v237 + 80);
  v220 = sub_1DD0DD08C();
  v11 = v240;
  v219 = *(v220 - 8);
  v12 = (v235 | (v10 | *(v219 + 80))) & 0xF8 | v9;
  v241 = v248 + v12;
  v13 = (v248 + v12) & ~v12;
  v14 = *(v11 + 64);
  v218 = v14 + 7;
  if (((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v14)
  {
    v14 = ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v14 <= *(v242 + 64))
  {
    v14 = *(v242 + 64);
  }

  v243 = *(v239 + 64) + v8;
  v15 = v8;
  v16 = v243 & ~v8;
  v212 = v7;
  v17 = *(v7 + 84);
  v18 = *(v7 + 64);
  v211 = v18;
  if (!v17)
  {
    ++v18;
  }

  v228 = v18;
  v19 = v18 + 7;
  v225 = v16;
  v20 = (v18 + 7 + v16) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  if (v14 <= v21)
  {
    v14 = (v20 + 19) & 0xFFFFFFFFFFFFFFF8 | 5;
  }

  v22 = v20 + 31;
  if (v14 <= (((((v22 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v14 = (((((v22 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v215 = *(v237 + 64);
  v216 = v9 + 16;
  v23 = v9;
  v226 = v17;
  v24 = v17 != 0;
  v25 = v17 - 1;
  if (!v24)
  {
    v25 = 0;
  }

  v210 = v25;
  v213 = *(v239 + 84);
  if (v25 <= v213)
  {
    v25 = *(v239 + 84);
  }

  if (v25 <= 0x7FFFFFFE)
  {
    v25 = 2147483646;
  }

  v217 = v25;
  v26 = ((v22 + ((v9 + 16 + ((v215 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 <= v26)
  {
    v14 = v26;
  }

  v27 = *(*(v220 - 8) + 64);
  if (v14 > v27)
  {
    v27 = v14;
  }

  if (v27 <= 0x18)
  {
    v27 = 24;
  }

  v249 = v27;
  v28 = ((((v27 + v13 + 8) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 41;
  v30 = *(a3 + 16);
  v29 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v236 = *(AssociatedTypeWitness - 8);
  v238 = AssociatedTypeWitness;
  if (*(v236 + 64) <= 9uLL)
  {
    v32 = 9;
  }

  else
  {
    v32 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v32 + 1 > v28)
  {
    v33 = v32 + 1;
  }

  else
  {
    v33 = v28;
  }

  if (v33 <= 9)
  {
    v34 = 9;
  }

  else
  {
    v34 = v33;
  }

  v35 = v3[v34];
  v36 = v35 - 4;
  if (v35 < 4)
  {
    v38 = a2;
  }

  else
  {
    if (v34 <= 3)
    {
      v37 = v34;
    }

    else
    {
      v37 = 4;
    }

    v38 = a2;
    switch(v37)
    {
      case 1:
        v39 = *v3;
        goto LABEL_43;
      case 2:
        v39 = *v3;
        goto LABEL_43;
      case 3:
        v39 = *v3 | (v3[2] << 16);
        goto LABEL_43;
      case 4:
        v39 = *v3;
LABEL_43:
        if (v34 < 4)
        {
          v39 |= v36 << (8 * v34);
        }

        v35 = v39 + 4;
        break;
      default:
        break;
    }
  }

  v245 = v249 + 1;
  v40 = ~v12;
  v41 = ~v15;
  v214 = ~v23;
  v227 = 8 * v32;
  switch(v35)
  {
    case 0u:
      v207 = v19;
      (*(v233 + 8))(v3, v234);
      v42 = (&v3[v241] & v40);
      v43 = v42[v249];
      v44 = v43 - 10;
      if (v43 >= 0xA)
      {
        if (v249 <= 3)
        {
          v45 = v249;
        }

        else
        {
          v45 = 4;
        }

        switch(v45)
        {
          case 1:
            v46 = *v42;
            goto LABEL_80;
          case 2:
            v46 = *v42;
            goto LABEL_80;
          case 3:
            v46 = *v42 | (*((&v3[v241] & v40) + 2) << 16);
            goto LABEL_80;
          case 4:
            v46 = *v42;
LABEL_80:
            if (v249 < 4)
            {
              v43 = (v46 | (v44 << (8 * v249))) + 10;
            }

            else
            {
              v43 = v46 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v43)
      {
        case 0u:
          goto LABEL_89;
        case 1u:
          goto LABEL_100;
        case 2u:
          goto LABEL_93;
        case 3u:
          goto LABEL_94;
        case 4u:
          goto LABEL_90;
        case 5u:
          goto LABEL_101;
        case 6u:
          goto LABEL_102;
        case 7u:
          goto LABEL_95;
        case 8u:
          goto LABEL_107;
        case 9u:
          goto LABEL_91;
        default:
          goto LABEL_122;
      }

      goto LABEL_122;
    case 1u:
      v207 = v19;
      (*(v233 + 8))(v3, v234);
      v42 = (&v3[v241] & v40);
      v51 = v42[v249];
      v52 = v51 - 10;
      if (v51 >= 0xA)
      {
        if (v249 <= 3)
        {
          v53 = v249;
        }

        else
        {
          v53 = 4;
        }

        switch(v53)
        {
          case 1:
            v54 = *v42;
            goto LABEL_85;
          case 2:
            v54 = *v42;
            goto LABEL_85;
          case 3:
            v54 = *v42 | (*((&v3[v241] & v40) + 2) << 16);
            goto LABEL_85;
          case 4:
            v54 = *v42;
LABEL_85:
            if (v249 < 4)
            {
              v51 = (v54 | (v52 << (8 * v249))) + 10;
            }

            else
            {
              v51 = v54 + 10;
            }

            break;
          default:
            goto LABEL_88;
        }
      }

      break;
    case 2u:
      v47 = v3[v32];
      v48 = v47 - 2;
      if (v47 >= 2)
      {
        if (v32 <= 3)
        {
          v49 = v32;
        }

        else
        {
          v49 = 4;
        }

        switch(v49)
        {
          case 1:
            v50 = *v3;
            goto LABEL_72;
          case 2:
            v50 = *v3;
            goto LABEL_72;
          case 3:
            v50 = *v3 | (v3[2] << 16);
            goto LABEL_72;
          case 4:
            v50 = *v3;
LABEL_72:
            if (v32 < 4)
            {
              v47 = (v50 | (v48 << v227)) + 2;
            }

            else
            {
              v47 = v50 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v47 == 1)
      {
        goto LABEL_78;
      }

      if (!v47)
      {
        (*(v236 + 8))(v3, AssociatedTypeWitness);
      }

      goto LABEL_124;
    case 3u:
LABEL_78:

      goto LABEL_124;
    default:
      goto LABEL_124;
  }

LABEL_88:
  switch(v51)
  {
    case 0u:
LABEL_89:
      v56 = v229;
      v55 = v230;
      goto LABEL_92;
    case 1u:
LABEL_100:
      (*(v229 + 8))(v42, v230);
      v68 = *(&v42[v218] & 0xFFFFFFFFFFFFFFF8);

      goto LABEL_122;
    case 2u:
LABEL_93:
      v57 = *(v42 + 1);

      v58 = *(v42 + 2);
      goto LABEL_106;
    case 3u:
LABEL_94:
      v59 = *v42;
      swift_unknownObjectRelease();
      goto LABEL_122;
    case 4u:
LABEL_90:
      v56 = v223;
      v55 = v224;
      goto LABEL_92;
    case 5u:
LABEL_101:
      v69 = *v42;
      goto LABEL_121;
    case 6u:
LABEL_102:
      (*(v239 + 8))(v42, v231);
      v70 = &v42[v243] & v41;
      if (!__swift_getEnumTagSinglePayload(v70, 1, v232))
      {
        (*(v212 + 8))(v70, v232);
      }

      v67 = v207 + v70;
      goto LABEL_105;
    case 7u:
LABEL_95:
      (*(v239 + 8))(v42, v231);
      v60 = &v42[v243] & v41;
      if (!__swift_getEnumTagSinglePayload(v60, 1, v232))
      {
        (*(v212 + 8))(v60, v232);
      }

      v61 = 7;
      if (!v226)
      {
        v61 = 8;
      }

      v62 = *(((v211 + v61 + v60) & 0xFFFFFFFFFFFFFFF8) + 8);

      v63 = &v42[((((v225 + v228 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 12] & 0xFFFFFFFFFFFFFFF8;
      v64 = *(v63 + 8);

      v65 = (v63 + 23) & 0xFFFFFFFFFFFFFFF8;
      v66 = *(v65 + 8);

      v67 = v65 + 23;
LABEL_105:
      v71 = *((v67 & 0xFFFFFFFFFFFFFFF8) + 8);
LABEL_106:

      goto LABEL_122;
    case 8u:
LABEL_107:
      (*(v221 + 8))(v42, v222);
      v72 = &v42[v215 + 7] & 0xFFFFFFFFFFFFFFF8;
      v73 = *(v72 + 8);

      v74 = (v216 + v72) & v214;
      if (v213 == v217)
      {
        if (__swift_getEnumTagSinglePayload(v74, v213, v231))
        {
          goto LABEL_120;
        }

        v75 = (v243 + v74) & v41;
        goto LABEL_117;
      }

      v75 = (v243 + v74) & v41;
      if (v210 == v217)
      {
        if (v226 >= 2 && __swift_getEnumTagSinglePayload((v243 + v74) & v41, v226, v232) >= 2)
        {
          goto LABEL_120;
        }

        goto LABEL_117;
      }

      v76 = *(((v207 + v75) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v76 >= 0xFFFFFFFF)
      {
        LODWORD(v76) = -1;
      }

      if ((v76 + 1) < 2)
      {
LABEL_117:
        (*(v239 + 8))(v74, v231);
        if (!__swift_getEnumTagSinglePayload(v75, 1, v232))
        {
          (*(v212 + 8))(v75, v232);
        }

        v77 = *(((v207 + v75) & 0xFFFFFFFFFFFFFFF8) + 8);
      }

LABEL_120:
      v69 = *((v21 + v74 + 7) & 0xFFFFFFFFFFFFFFF8);
LABEL_121:

LABEL_122:
      v78 = &v42[v245 + 7];
      v80 = (v78 & 0xFFFFFFFFFFFFFFF8) + 15;
      v79 = *(v78 & 0xFFFFFFFFFFFFFFF8);

      v81 = (v80 & 0xFFFFFFFFFFFFFFF8);
      v82 = *((v80 & 0xFFFFFFFFFFFFFFF8) + 24);
      v19 = v207;
      v38 = a2;
      if (v82 >= 0xFFFFFFFF)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v81);
      }

LABEL_124:
      v83 = v38[v34];
      v84 = v83 - 4;
      if (v83 >= 4)
      {
        if (v34 <= 3)
        {
          v85 = v34;
        }

        else
        {
          v85 = 4;
        }

        switch(v85)
        {
          case 1:
            v86 = *v38;
            goto LABEL_133;
          case 2:
            v86 = *v38;
            goto LABEL_133;
          case 3:
            v86 = *v38 | (v38[2] << 16);
            goto LABEL_133;
          case 4:
            v86 = *v38;
LABEL_133:
            if (v34 < 4)
            {
              v83 = (v86 | (v84 << (8 * v34))) + 4;
            }

            else
            {
              v83 = v86 + 4;
            }

            break;
          default:
            goto LABEL_136;
        }
      }

      break;
    case 9u:
LABEL_91:
      v56 = v219;
      v55 = v220;
LABEL_92:
      (*(v56 + 8))(v42, v55);
      goto LABEL_122;
    default:
      goto LABEL_122;
  }

LABEL_136:
  switch(v83)
  {
    case 0u:
      (*(v233 + 16))(v3, v38, v234);
      v87 = (&v38[v241] & v40);
      v88 = v87[v249];
      v89 = v88 - 10;
      if (v88 < 0xA)
      {
        v91 = (&v3[v241] & v40);
      }

      else
      {
        if (v249 <= 3)
        {
          v90 = v249;
        }

        else
        {
          v90 = 4;
        }

        v91 = (&v3[v241] & v40);
        switch(v90)
        {
          case 1:
            v92 = *v87;
            goto LABEL_178;
          case 2:
            v92 = *v87;
            goto LABEL_178;
          case 3:
            v92 = *v87 | (v87[2] << 16);
            goto LABEL_178;
          case 4:
            v92 = *v87;
LABEL_178:
            if (v249 < 4)
            {
              v88 = (v92 | (v89 << (8 * v249))) + 10;
            }

            else
            {
              v88 = v92 + 10;
            }

            break;
          default:
            break;
        }
      }

      switch(v88)
      {
        case 0u:
          (*(v229 + 16))(v91, v87, v230);
          *(v91 + v249) = 0;
          goto LABEL_251;
        case 1u:
          (*(v229 + 16))(v91, v87, v230);
          *((v91 + v218) & 0xFFFFFFFFFFFFFFF8) = *(&v87[v218] & 0xFFFFFFFFFFFFFFF8);
          *(v91 + v249) = 1;
          sub_1DD0DCF8C();
        case 2u:
          *v91 = *v87;
          v91[1] = *(v87 + 1);
          v91[2] = *(v87 + 2);
          *(v91 + v249) = 2;

          goto LABEL_233;
        case 3u:
          *v91 = *v87;
          *(v91 + v249) = 3;
          swift_unknownObjectRetain();
          goto LABEL_251;
        case 4u:
          (*(v223 + 16))(v91, v87, v224);
          v109 = 4;
          goto LABEL_192;
        case 5u:
          v115 = *v87;
          *v91 = *v87;
          *(v91 + v249) = 5;
          v116 = v115;
          goto LABEL_251;
        case 6u:
          (*(v239 + 16))(v91, v87, v231);
          v119 = ((v91 + v243) & v41);
          v120 = (&v87[v243] & v41);
          if (__swift_getEnumTagSinglePayload(v120, 1, v232))
          {
            memcpy(v119, v120, v228);
          }

          else
          {
            (*(v212 + 16))(v119, v120, v232);
            __swift_storeEnumTagSinglePayload(v119, 0, 1, v232);
          }

          v159 = ((v119 + v19) & 0xFFFFFFFFFFFFFFF8);
          v160 = ((v120 + v19) & 0xFFFFFFFFFFFFFFF8);
          *v159 = *v160;
          v159[1] = v160[1];
          v161 = (v159 + 19) & 0xFFFFFFFFFFFFFFF8;
          v162 = (v160 + 19) & 0xFFFFFFFFFFFFFFF8;
          v163 = *v162;
          *(v161 + 4) = *(v162 + 4);
          *v161 = v163;
          *(v91 + v249) = 6;
          goto LABEL_233;
        case 7u:
          (*(v239 + 16))(v91, v87, v231);
          v111 = ((v91 + v243) & v41);
          v112 = (&v87[v243] & v41);
          if (__swift_getEnumTagSinglePayload(v112, 1, v232))
          {
            memcpy(v111, v112, v228);
          }

          else
          {
            (*(v212 + 16))(v111, v112, v232);
            __swift_storeEnumTagSinglePayload(v111, 0, 1, v232);
          }

          v137 = ((v111 + v19) & 0xFFFFFFFFFFFFFFF8);
          v138 = ((v112 + v19) & 0xFFFFFFFFFFFFFFF8);
          *v137 = *v138;
          v137[1] = v138[1];
          v139 = (v137 + 19) & 0xFFFFFFFFFFFFFFF8;
          v140 = (v138 + 19) & 0xFFFFFFFFFFFFFFF8;
          v141 = *v140;
          *(v139 + 4) = *(v140 + 4);
          *v139 = v141;
          v142 = ((v91 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
          v143 = (&v87[v21 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v142 = *v143;
          v142[1] = v143[1];
          v144 = ((v142 + 23) & 0xFFFFFFFFFFFFFFF8);
          v145 = ((v143 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v144 = *v145;
          v144[1] = v145[1];
          v146 = ((v144 + 23) & 0xFFFFFFFFFFFFFFF8);
          v147 = ((v145 + 23) & 0xFFFFFFFFFFFFFFF8);
          *v146 = *v147;
          v146[1] = v147[1];
          *(v91 + v249) = 7;

LABEL_233:

          goto LABEL_251;
        case 8u:
          v208 = v19;
          (*(v221 + 16))(v91, v87, v222);
          v123 = ((v91 + v215 + 7) & 0xFFFFFFFFFFFFFFF8);
          v124 = (&v87[v215 + 7] & 0xFFFFFFFFFFFFFFF8);
          *v123 = *v124;
          v123[1] = v124[1];
          v125 = ((v123 + v216) & v214);
          v126 = ((v124 + v216) & v214);

          if (v213 == v217)
          {
            v127 = v243;
            if (!__swift_getEnumTagSinglePayload(v126, v213, v231))
            {
              v128 = v41;
              v129 = ((v126 + v243) & v41);
              goto LABEL_240;
            }

LABEL_222:
            memcpy(v125, v126, v21);
LABEL_249:
            v173 = v228;
            goto LABEL_250;
          }

          v127 = v243;
          v128 = v41;
          v129 = ((v126 + v243) & v41);
          if (v210 != v217)
          {
            v169 = *(((v129 + v208) & 0xFFFFFFFFFFFFFFF8) + 8);
            if (v169 >= 0xFFFFFFFF)
            {
              LODWORD(v169) = -1;
            }

            if ((v169 + 1) < 2)
            {
              goto LABEL_240;
            }

            goto LABEL_222;
          }

          if (v226 >= 2 && __swift_getEnumTagSinglePayload(v129, v226, v232) >= 2)
          {
            goto LABEL_222;
          }

LABEL_240:
          (*(v239 + 16))(v125, v126, v231);
          v170 = ((v125 + v127) & v128);
          if (__swift_getEnumTagSinglePayload(v129, 1, v232))
          {
            memcpy(v170, v129, v228);
          }

          else
          {
            (*(v212 + 16))(v170, v129, v232);
            __swift_storeEnumTagSinglePayload(v170, 0, 1, v232);
          }

          v173 = v211;
          v174 = ((v170 + v208) & 0xFFFFFFFFFFFFFFF8);
          v175 = ((v129 + v208) & 0xFFFFFFFFFFFFFFF8);
          *v174 = *v175;
          v174[1] = v175[1];
          v176 = (v174 + 19) & 0xFFFFFFFFFFFFFFF8;
          v177 = (v175 + 19) & 0xFFFFFFFFFFFFFFF8;
          v178 = *v177;
          *(v176 + 4) = *(v177 + 4);
          *v176 = v178;

          if (!v226)
          {
            goto LABEL_249;
          }

LABEL_250:
          v179 = (((v225 + v173 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
          v180 = ((v125 + v179 + 7) & 0xFFFFFFFFFFFFFFF8);
          v181 = *((v126 + v179 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v180 = v181;
          *(v91 + v249) = 8;
          v182 = v181;
          v3 = v246;
LABEL_251:
          v183 = (&v87[v245 + 7] & 0xFFFFFFFFFFFFFFF8);
          v184 = ((v91 + v245 + 7) & 0xFFFFFFFFFFFFFFF8);
          *v184 = *v183;
          v185 = (v184 + 15) & 0xFFFFFFFFFFFFFFF8;
          v186 = (v183 + 15) & 0xFFFFFFFFFFFFFFF8;
          v187 = *(v186 + 24);

          if (v187 < 0xFFFFFFFF)
          {
            v188 = *v186;
            v189 = *(v186 + 16);
            *(v185 + 32) = *(v186 + 32);
            *v185 = v188;
            *(v185 + 16) = v189;
          }

          else
          {
            *(v185 + 24) = v187;
            *(v185 + 32) = *(v186 + 32);
            (**(v187 - 8))(v185, v186, v187);
          }

          *(v185 + 40) = *(v186 + 40);
          v3[v34] = 0;
          return v3;
        case 9u:
          (*(v219 + 16))(v91, v87, v220);
          v109 = 9;
LABEL_192:
          *(v91 + v249) = v109;
          goto LABEL_251;
        default:
          memcpy(v91, v87, v245);
          goto LABEL_251;
      }

    case 1u:
      (*(v233 + 16))(v3, v38, v234);
      v100 = (&v38[v241] & v40);
      v101 = v100[v249];
      v102 = v101 - 10;
      if (v101 < 0xA)
      {
        v104 = (&v3[v241] & v40);
      }

      else
      {
        if (v249 <= 3)
        {
          v103 = v249;
        }

        else
        {
          v103 = 4;
        }

        v104 = (&v3[v241] & v40);
        switch(v103)
        {
          case 1:
            v105 = *v100;
            goto LABEL_184;
          case 2:
            v105 = *v100;
            goto LABEL_184;
          case 3:
            v105 = *v100 | (v100[2] << 16);
            goto LABEL_184;
          case 4:
            v105 = *v100;
LABEL_184:
            if (v249 < 4)
            {
              v101 = (v105 | (v102 << (8 * v249))) + 10;
            }

            else
            {
              v101 = v105 + 10;
            }

            break;
          default:
            goto LABEL_187;
        }
      }

      break;
    case 2u:
      v93 = v38[v32];
      v94 = v93 - 2;
      if (v93 >= 2)
      {
        if (v32 <= 3)
        {
          v95 = v32;
        }

        else
        {
          v95 = 4;
        }

        switch(v95)
        {
          case 1:
            v96 = *v38;
            goto LABEL_166;
          case 2:
            v96 = *v38;
            goto LABEL_166;
          case 3:
            v96 = *v38 | (v38[2] << 16);
            goto LABEL_166;
          case 4:
            v96 = *v38;
LABEL_166:
            if (v32 < 4)
            {
              v93 = (v96 | (v94 << v227)) + 2;
            }

            else
            {
              v93 = v96 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v93 == 1)
      {
        v107 = *v38;
        v108 = *v38;
        *v3 = v107;
        v3[8] = v38[8];
        v3[v32] = 1;
      }

      else if (v93)
      {
        memcpy(v3, v38, v32 + 1);
      }

      else
      {
        (*(v236 + 16))(v3, v38, v238);
        v3[v32] = 0;
      }

      v99 = 2;
      goto LABEL_263;
    case 3u:
      v97 = *v38;
      v98 = *v38;
      *v3 = v97;
      v3[8] = v38[8];
      v99 = 3;
      goto LABEL_263;
    default:

      return memcpy(v3, v38, v34 + 1);
  }

LABEL_187:
  switch(v101)
  {
    case 0u:
      (*(v229 + 16))(v104, v100, v230);
      *(v104 + v249) = 0;
      goto LABEL_259;
    case 1u:
      (*(v229 + 16))(v104, v100, v230);
      *((v104 + v218) & 0xFFFFFFFFFFFFFFF8) = *(&v100[v218] & 0xFFFFFFFFFFFFFFF8);
      *(v104 + v249) = 1;
      sub_1DD0DCF8C();
    case 2u:
      *v104 = *v100;
      v104[1] = *(v100 + 1);
      v104[2] = *(v100 + 2);
      *(v104 + v249) = 2;

      goto LABEL_236;
    case 3u:
      *v104 = *v100;
      *(v104 + v249) = 3;
      swift_unknownObjectRetain();
      goto LABEL_259;
    case 4u:
      (*(v223 + 16))(v104, v100, v224);
      v110 = 4;
      goto LABEL_194;
    case 5u:
      v117 = *v100;
      *v104 = *v100;
      *(v104 + v249) = 5;
      v118 = v117;
      goto LABEL_259;
    case 6u:
      (*(v239 + 16))(v104, v100, v231);
      v121 = ((v104 + v243) & v41);
      v122 = (&v100[v243] & v41);
      if (__swift_getEnumTagSinglePayload(v122, 1, v232))
      {
        memcpy(v121, v122, v228);
      }

      else
      {
        (*(v212 + 16))(v121, v122, v232);
        __swift_storeEnumTagSinglePayload(v121, 0, 1, v232);
      }

      v164 = ((v121 + v19) & 0xFFFFFFFFFFFFFFF8);
      v165 = ((v122 + v19) & 0xFFFFFFFFFFFFFFF8);
      *v164 = *v165;
      v164[1] = v165[1];
      v166 = (v164 + 19) & 0xFFFFFFFFFFFFFFF8;
      v167 = (v165 + 19) & 0xFFFFFFFFFFFFFFF8;
      v168 = *v167;
      *(v166 + 4) = *(v167 + 4);
      *v166 = v168;
      *(v104 + v249) = 6;
      goto LABEL_236;
    case 7u:
      (*(v239 + 16))(v104, v100, v231);
      v113 = ((v104 + v243) & v41);
      v114 = (&v100[v243] & v41);
      if (__swift_getEnumTagSinglePayload(v114, 1, v232))
      {
        memcpy(v113, v114, v228);
      }

      else
      {
        (*(v212 + 16))(v113, v114, v232);
        __swift_storeEnumTagSinglePayload(v113, 0, 1, v232);
      }

      v148 = ((v113 + v19) & 0xFFFFFFFFFFFFFFF8);
      v149 = ((v114 + v19) & 0xFFFFFFFFFFFFFFF8);
      *v148 = *v149;
      v148[1] = v149[1];
      v150 = (v148 + 19) & 0xFFFFFFFFFFFFFFF8;
      v151 = (v149 + 19) & 0xFFFFFFFFFFFFFFF8;
      v152 = *v151;
      *(v150 + 4) = *(v151 + 4);
      *v150 = v152;
      v153 = ((v104 + v21 + 7) & 0xFFFFFFFFFFFFFFF8);
      v154 = (&v100[v21 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v153 = *v154;
      v153[1] = v154[1];
      v155 = ((v153 + 23) & 0xFFFFFFFFFFFFFFF8);
      v156 = ((v154 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v155 = *v156;
      v155[1] = v156[1];
      v157 = ((v155 + 23) & 0xFFFFFFFFFFFFFFF8);
      v158 = ((v156 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v157 = *v158;
      v157[1] = v158[1];
      *(v104 + v249) = 7;

LABEL_236:

      goto LABEL_259;
    case 8u:
      v209 = v19;
      (*(v221 + 16))(v104, v100, v222);
      v130 = ((v104 + v215 + 7) & 0xFFFFFFFFFFFFFFF8);
      v131 = (&v100[v215 + 7] & 0xFFFFFFFFFFFFFFF8);
      *v130 = *v131;
      v130[1] = v131[1];
      v132 = ((v130 + v216) & v214);
      v133 = ((v131 + v216) & v214);

      if (v213 == v217)
      {
        v134 = v243;
        if (!__swift_getEnumTagSinglePayload(v133, v213, v231))
        {
          v135 = v41;
          v136 = ((v133 + v243) & v41);
          goto LABEL_245;
        }
      }

      else
      {
        v134 = v243;
        v135 = v41;
        v136 = ((v133 + v243) & v41);
        if (v210 == v217)
        {
          if (v226 < 2 || __swift_getEnumTagSinglePayload(v136, v226, v232) < 2)
          {
            goto LABEL_245;
          }
        }

        else
        {
          v171 = *(((v136 + v209) & 0xFFFFFFFFFFFFFFF8) + 8);
          if (v171 >= 0xFFFFFFFF)
          {
            LODWORD(v171) = -1;
          }

          if ((v171 + 1) < 2)
          {
LABEL_245:
            (*(v239 + 16))(v132, v133, v231);
            v172 = ((v132 + v134) & v135);
            if (__swift_getEnumTagSinglePayload(v136, 1, v232))
            {
              memcpy(v172, v136, v228);
            }

            else
            {
              (*(v212 + 16))(v172, v136, v232);
              __swift_storeEnumTagSinglePayload(v172, 0, 1, v232);
            }

            v190 = v211;
            v191 = ((v172 + v209) & 0xFFFFFFFFFFFFFFF8);
            v192 = ((v136 + v209) & 0xFFFFFFFFFFFFFFF8);
            *v191 = *v192;
            v191[1] = v192[1];
            v193 = (v191 + 19) & 0xFFFFFFFFFFFFFFF8;
            v194 = (v192 + 19) & 0xFFFFFFFFFFFFFFF8;
            v195 = *v194;
            *(v193 + 4) = *(v194 + 4);
            *v193 = v195;

            if (v226)
            {
LABEL_258:
              v196 = (((v225 + v190 + 7) & 0xFFFFFFFFFFFFFFF8) + 19) | 5;
              v197 = ((v132 + v196 + 7) & 0xFFFFFFFFFFFFFFF8);
              v198 = *((v133 + v196 + 7) & 0xFFFFFFFFFFFFFFF8);
              *v197 = v198;
              *(v104 + v249) = 8;
              v199 = v198;
              v3 = v246;
LABEL_259:
              v200 = (&v100[v245 + 7] & 0xFFFFFFFFFFFFFFF8);
              v201 = ((v104 + v245 + 7) & 0xFFFFFFFFFFFFFFF8);
              *v201 = *v200;
              v202 = (v201 + 15) & 0xFFFFFFFFFFFFFFF8;
              v203 = (v200 + 15) & 0xFFFFFFFFFFFFFFF8;
              v204 = *(v203 + 24);

              if (v204 < 0xFFFFFFFF)
              {
                v205 = *v203;
                v206 = *(v203 + 16);
                *(v202 + 32) = *(v203 + 32);
                *v202 = v205;
                *(v202 + 16) = v206;
              }

              else
              {
                *(v202 + 24) = v204;
                *(v202 + 32) = *(v203 + 32);
                (**(v204 - 8))(v202, v203, v204);
              }

              *(v202 + 40) = *(v203 + 40);
              v99 = 1;
LABEL_263:
              v3[v34] = v99;
              return v3;
            }

LABEL_257:
            v190 = v228;
            goto LABEL_258;
          }
        }
      }

      memcpy(v132, v133, v21);
      goto LABEL_257;
    case 9u:
      (*(v219 + 16))(v104, v100, v220);
      v110 = 9;
LABEL_194:
      *(v104 + v249) = v110;
      goto LABEL_259;
    default:
      memcpy(v104, v100, v245);
      goto LABEL_259;
  }
}