id _TUIKeyboardTrackingLogger()
{
  if (_TUIKeyboardTrackingLogger_onceToken != -1)
  {
    dispatch_once(&_TUIKeyboardTrackingLogger_onceToken, &__block_literal_global_227);
  }

  v1 = _TUIKeyboardTrackingLogger_log;

  return v1;
}

id TUISmartReplyResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TUISmartReplyLog()
{
  if (TUISmartReplyLog_onceToken != -1)
  {
    dispatch_once(&TUISmartReplyLog_onceToken, &__block_literal_global_4);
  }

  v1 = TUISmartReplyLog_log;

  return v1;
}

uint64_t __TUISmartReplyLog_block_invoke()
{
  TUISmartReplyLog_log = os_log_create("com.apple.TextInputUI", "SmartReply");

  return MEMORY[0x1EEE66BB8]();
}

id TUISmartActionLog()
{
  if (TUISmartActionLog_onceToken != -1)
  {
    dispatch_once(&TUISmartActionLog_onceToken, &__block_literal_global_7);
  }

  v1 = TUISmartActionLog_log;

  return v1;
}

uint64_t __TUISmartActionLog_block_invoke()
{
  TUISmartActionLog_log = os_log_create("com.apple.TextInputUI", "SmartAction");

  return MEMORY[0x1EEE66BB8]();
}

id _TUIKeyplaneViewLogger()
{
  if (_TUIKeyplaneViewLogger_onceToken != -1)
  {
    dispatch_once(&_TUIKeyplaneViewLogger_onceToken, &__block_literal_global_743);
  }

  v1 = _TUIKeyplaneViewLogger_log;

  return v1;
}

void __TIGetShowCrescendoBackdropValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"ShowCrescendoBackdrop" domain:@"com.apple.keyboard" defaultValue:MEMORY[0x1E695E110]];
}

void __PredictionViewAnimationFrameRateOptions_block_invoke()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  v1 = [v0 maximumFramesPerSecond];

  v2 = 117440512;
  if (v1 > 60)
  {
    v2 = 150994944;
  }

  PredictionViewAnimationFrameRateOptions_frameRateOptions = v2;
}

uint64_t sub_18FFE70CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1900B1610();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_18FFE70FC()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1900B1080();
  }

  else
  {
    sub_1900B1060();
  }

  return sub_1900B10A0();
}

uint64_t sub_18FFE7164()
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1900B1080();
    sub_1900B10A0();
    sub_18FFEB484();
  }

  else
  {
    sub_1900B1060();
    sub_1900B10A0();
    sub_18FFEBAD8(&qword_1EAD34B88, MEMORY[0x1E697C028]);
  }

  return swift_getWitnessTable();
}

uint64_t sub_18FFE7258()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18FFE7294()
{
  v1 = sub_1900B0FC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_18FFE7358()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18FFE7390()
{
  v1 = sub_1900B0FC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_18FFE7454()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_18FFE74A4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18FFE74DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18FFE7518()
{
  v1 = sub_1900B0CE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_18FFE764C()
{
  v1 = sub_1900B0CE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_18FFE778C()
{
  v1 = sub_1900B0CE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (((((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_18FFE78C4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18FFE78FC()
{
  v1 = sub_1900B0CE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_18FFE7A24()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18FFE7A8C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_18FFE7AD4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18FFE7B14()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_18FFE7B4C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD34E40);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18FFE7BE8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return DefaultKeyboardSettingsProvider.localizedTitle.setter(v1, v2);
}

uint64_t sub_18FFE7C2C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return DefaultKeyboardSettingsProvider.localizedDetail.setter(v1, v2);
}

uint64_t sub_18FFE7CC4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD35190);
  sub_1900B0FF0();
  sub_18FFFDF38();
  sub_18FFFE080(&qword_1EAD351C0, MEMORY[0x1E697BDD8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18FFE7D78(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD351E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_18FFE7E34(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD351E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18FFE7EE4()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_18FFE8020(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18FFE8090(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18FFE80F8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1900B1100();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_18FFE815C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_18FFE8194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35340);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_18FFE825C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35340);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18FFE8310()
{
  v1 = (type metadata accessor for IntelligenceLightEffect(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35318);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1900B1010();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_18FFE84DC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t SmartActionGenerator.enabled.getter()
{
  v1 = OBJC_IVAR___TUISmartActionGenerator_enabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SmartActionGenerator.enabled.setter(char a1)
{
  v3 = OBJC_IVAR___TUISmartActionGenerator_enabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id SmartActionGenerator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SmartActionGenerator.init()()
{
  v0[OBJC_IVAR___TUISmartActionGenerator_enabled] = 0;
  *&v0[OBJC_IVAR___TUISmartActionGenerator_textComposerClient] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmartActionGenerator();
  return objc_msgSendSuper2(&v2, sel_init);
}

void *SmartActionGenerator.textComposerClient.getter()
{
  v1 = OBJC_IVAR___TUISmartActionGenerator_textComposerClient;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SmartActionGenerator.textComposerClient.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___TUISmartActionGenerator_textComposerClient;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void SmartActionGenerator.generateCandidates(with:completion:)(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34E28);
  MEMORY[0x1EEE9AC00]();
  v9 = &v35 - v8;
  if (([a1 keyboardSuggestionOptions] & 1) == 0)
  {
    v10 = [a1 keyboardState];
    v11 = [v10 inputContextHistory];
    if (v11)
    {
      v12 = v11;
      v13 = OBJC_IVAR___TUISmartActionGenerator_textComposerClient;
      swift_beginAccess();
      v14 = *&v4[v13];
      if (v14)
      {
        v15 = objc_allocWithZone(MEMORY[0x1E69D9328]);
        v16 = v14;
        v17 = [v15 initWithTIInputContextHistory_];
        if (v17)
        {
          v18 = v17;
          v19 = sub_1900B1700();
          (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
          v20 = swift_allocObject();
          v20[2] = 0;
          v20[3] = 0;
          v20[4] = v16;
          v20[5] = a1;
          v20[6] = v18;
          v20[7] = a2;
          v20[8] = a3;
          v20[9] = v4;
          v21 = v16;
          v22 = a1;
          v23 = v18;

          v24 = v4;
          sub_18FFE9BE8(0, 0, v9, &unk_1900BF600, v20);

          return;
        }

        if (qword_1EAD34CB0 != -1)
        {
          swift_once();
        }

        v31 = sub_1900B0E80();
        __swift_project_value_buffer(v31, qword_1EAD379A8);
        v32 = sub_1900B0E60();
        v33 = sub_1900B1790();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_18FFDC000, v32, v33, "Failed to create valid TCInputContextHistory.", v34, 2u);
          MEMORY[0x193AE9010](v34, -1, -1);
        }

        v30 = [objc_opt_self() forSourceType_];
        a2();

        goto LABEL_15;
      }
    }

    v30 = [objc_opt_self() forSourceType_];
    a2();

LABEL_15:
    return;
  }

  if (qword_1EAD34CB0 != -1)
  {
    swift_once();
  }

  v25 = sub_1900B0E80();
  __swift_project_value_buffer(v25, qword_1EAD379A8);
  v26 = sub_1900B0E60();
  v27 = sub_1900B1790();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_18FFDC000, v26, v27, "UITextInputTraits.keyboardSuggestionOptions contains pollsDisabled, will not generate smart action.", v28, 2u);
    MEMORY[0x193AE9010](v28, -1, -1);
  }

  v35 = [objc_opt_self() forSourceType_];
  a2();
  v29 = v35;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_18FFE8D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a8;
  v8[23] = v12;
  v8[20] = a6;
  v8[21] = a7;
  v8[18] = a4;
  v8[19] = a5;
  v9 = sub_1900B0CE0();
  v8[24] = v9;
  v8[25] = *(v9 - 8);
  v8[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18FFE8E34, 0, 0);
}

uint64_t sub_18FFE8E34()
{
  if (qword_1EAD34CB0 != -1)
  {
    swift_once();
  }

  v1 = sub_1900B0E80();
  v0[27] = __swift_project_value_buffer(v1, qword_1EAD379A8);
  v2 = sub_1900B0E60();
  v3 = sub_1900B1790();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_18FFDC000, v2, v3, "Kicking off task to generate text composer short form smart response.", v4, 2u);
    MEMORY[0x193AE9010](v4, -1, -1);
  }

  v5 = [objc_allocWithZone(MEMORY[0x1E69D9370]) init];
  v6 = [v5 nextToken];

  v7 = getpid();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34EE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1900BF5C0;
  sub_1900B0CB0();
  *(inited + 32) = sub_1900B0C80();
  *(inited + 72) = MEMORY[0x1E69E6810];
  *(inited + 40) = v9;
  *(inited + 48) = v6;
  *(inited + 80) = sub_1900B0C70();
  *(inited + 88) = v10;
  *(inited + 120) = MEMORY[0x1E69E72F0];
  *(inited + 96) = v7;
  v11 = sub_18FFEB250(inited);
  v0[28] = v11;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34EE8);
  swift_arrayDestroy();
  sub_1900B0CD0();

  v12 = swift_task_alloc();
  v0[29] = v12;
  *v12 = v0;
  v12[1] = sub_18FFE909C;
  v13 = v0[26];
  v15 = v0[19];
  v14 = v0[20];

  return sub_18FFF2818(v15, v14, v13, 0, 0xE000000000000000, v11);
}

uint64_t sub_18FFE909C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v5 = *(*v2 + 200);
  v6 = *(*v2 + 192);
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  (*(v5 + 8))(v4, v6);

  if (v1)
  {

    v7 = sub_18FFE9B84;
  }

  else
  {
    v7 = sub_18FFE9248;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_18FFE9248()
{
  v1 = *(v0 + 240);
  v2 = *&v1[OBJC_IVAR___TUIShortFormSmartActionResponse_smartPoll];
  if (!v2)
  {

    if (qword_1EAD34B48 != -1)
    {
      swift_once();
    }

    v25 = qword_1EAD37958;
    v26 = [*(v0 + 160) tiInputContextHistory];
    sub_190000634(v25, v26, 0);

    v27 = sub_1900B0E60();
    v28 = sub_1900B1790();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_18FFDC000, v27, v28, "No polls payload found.", v29, 2u);
      MEMORY[0x193AE9010](v29, -1, -1);
    }

    v30 = *(v0 + 184);
    v31 = *(v0 + 168);

    v32 = [objc_opt_self() forSourceType_];
    v31();
    goto LABEL_34;
  }

  v3 = v2;
  v4 = sub_1900B0E60();
  v5 = sub_1900B1790();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_18FFDC000, v4, v5, "Valid polls payload found.", v6, 2u);
    MEMORY[0x193AE9010](v6, -1, -1);
  }

  v7 = *&v3[OBJC_IVAR___TUISmartActionPollResponse_options];
  v8 = *(v7 + 16);
  if (v8)
  {
    v56 = MEMORY[0x1E69E7CC0];
    sub_1900B18F0();
    v9 = v7 + 40;
    do
    {
      v10 = objc_allocWithZone(TUISmartActionPollOption);

      v11 = sub_1900B15E0();

      [v10 initWithOption_];

      sub_1900B18D0();
      sub_1900B1900();
      sub_1900B1910();
      sub_1900B18E0();
      v9 += 16;
      --v8;
    }

    while (v8);
  }

  v12 = *(v0 + 152);
  v13 = objc_allocWithZone(TUISmartActionPollCandidate);
  v14 = sub_1900B15E0();
  sub_18FFEB8D0(0, &qword_1EAD34EF0);
  v15 = sub_1900B1690();
  v16 = [v13 initWithTitle:v14 options:v15];

  v17 = [v12 keyboardState];
  v18 = [v17 documentState];

  if (!v18)
  {
    __break(1u);
    return;
  }

  v19 = *(v0 + 152);

  v20 = [v18 documentIsEmpty];

  v21 = [v19 keyboardState];
  v22 = [v21 inputContextHistory];

  if (!v22)
  {
    if (!v20)
    {
      v24 = 1;
      goto LABEL_20;
    }

LABEL_18:
    v24 = 0;
    goto LABEL_20;
  }

  v23 = [v22 mostRecentTextEntryIsByMe];

  v24 = 1;
  if (v20 && (v23 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_20:
  v33 = *(v0 + 152);
  [v16 setShouldSuggestTitle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34EF8);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1900BF5D0;
  *(v34 + 32) = v16;
  v35 = objc_allocWithZone(MEMORY[0x1E69D9588]);
  sub_18FFEB8D0(0, &qword_1EAD34F00);
  v36 = v16;
  v37 = sub_1900B1690();

  v38 = [v35 initWithAutocorrection:0 alternateCorrections:v37];

  LODWORD(v37) = [v33 usesCandidateSelection];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34F08);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1900BF5E0;
  *(v39 + 56) = sub_18FFEB8D0(0, &qword_1EAD34F10);
  *(v39 + 32) = v36;
  v32 = v36;
  if (v37)
  {
    v40 = sub_1900B1690();

    v41 = [objc_opt_self() setWithCandidates_];

    if (v41)
    {
      v42 = [objc_opt_self() forSourceType:objc_msgSend(*(v0 + 184) withKeyboardCandidateResultSet:{sel_candidateSourceType), v41}];
      v43 = sub_1900B0E60();
      v44 = sub_1900B1790();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        v46 = "Successfully created poll candidate container (for candidate selection). Calling completion handler.";
LABEL_27:
        _os_log_impl(&dword_18FFDC000, v43, v44, v46, v45, 2u);
        MEMORY[0x193AE9010](v45, -1, -1);
        goto LABEL_28;
      }

      goto LABEL_28;
    }

    if (qword_1EAD34B48 == -1)
    {
LABEL_32:
      v50 = *(v0 + 240);
      v51 = *(v0 + 184);
      v52 = *(v0 + 168);
      v53 = qword_1EAD37958;
      v54 = [*(v0 + 160) tiInputContextHistory];
      sub_190000634(v53, v54, 0);

      v41 = [objc_opt_self() forSourceType_];
      v52();

      goto LABEL_33;
    }

LABEL_37:
    swift_once();
    goto LABEL_32;
  }

  v38 = v38;
  v47 = sub_1900B1690();

  v41 = [objc_opt_self() listWithCorrections:v38 predictions:v47];

  if (!v41)
  {
    if (qword_1EAD34B48 == -1)
    {
      goto LABEL_32;
    }

    goto LABEL_37;
  }

  v42 = [objc_opt_self() forSourceType:objc_msgSend(*(v0 + 184) withAutocorrectionList:{sel_candidateSourceType), v41}];
  v43 = sub_1900B0E60();
  v44 = sub_1900B1790();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    v46 = "Successfully created poll candidate container (for autocorrection). Calling completion handler.";
    goto LABEL_27;
  }

LABEL_28:
  v48 = *(v0 + 240);
  v49 = *(v0 + 168);

  v49(v42);
LABEL_33:

LABEL_34:

  v55 = *(v0 + 8);

  v55();
}

uint64_t sub_18FFE9B84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18FFE9BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34E28);
  MEMORY[0x1EEE9AC00]();
  v9 = v21 - v8;
  sub_18FFEB918(a3, v21 - v8, &qword_1EAD34E28);
  v10 = sub_1900B1700();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v9, 1, v10);

  if (v12 == 1)
  {
    sub_18FFEB858(v9);
  }

  else
  {
    sub_1900B16F0();
    (*(v11 + 8))(v9, v10);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1900B16B0();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_1900B1640() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_18FFEB858(a3);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_18FFEB858(a3);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_18FFE9E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34E28);
  MEMORY[0x1EEE9AC00]();
  v9 = v21 - v8;
  sub_18FFEB918(a3, v21 - v8, &qword_1EAD34E28);
  v10 = sub_1900B1700();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v9, 1, v10);

  if (v12 == 1)
  {
    sub_18FFEB858(v9);
  }

  else
  {
    sub_1900B16F0();
    (*(v11 + 8))(v9, v10);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1900B16B0();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21[0] = a2;
      v17 = sub_1900B1640() + 32;
      type metadata accessor for ShortFormSmartActionResponse();

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_18FFEB858(a3);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_18FFEB858(a3);
  type metadata accessor for ShortFormSmartActionResponse();
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t SmartActionGenerator.sync(to:)(void *a1)
{
  v2 = [a1 clientIdentifier];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  v4 = sub_1900B1610();
  v6 = v5;

  if (v4 == 0xD000000000000013 && 0x80000001900C1810 == v6)
  {
  }

  else
  {
    v8 = sub_1900B19A0();

    if ((v8 & 1) == 0)
    {
LABEL_7:
      v9 = OBJC_IVAR___TUISmartActionGenerator_enabled;
      result = swift_beginAccess();
      *(v1 + v9) = 0;
      return result;
    }
  }

  v11 = OBJC_IVAR___TUISmartActionGenerator_enabled;
  result = swift_beginAccess();
  *(v1 + v11) = 1;
  return result;
}

id SmartActionGenerator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmartActionGenerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18FFEA338()
{
  v0 = sub_1900B0E80();
  __swift_allocate_value_buffer(v0, qword_1EAD379A8);
  __swift_project_value_buffer(v0, qword_1EAD379A8);
  return sub_1900B0E70();
}

void *variable initialization expression of TUITextComposerClientWrapper.taskCache()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34E30);
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = MEMORY[0x1E69E7CC0];
  v0[15] = sub_18FFEB380(MEMORY[0x1E69E7CC0]);
  v0[16] = v1;
  v0[14] = 8;
  return v0;
}

uint64_t variable initialization expression of DefaultKeyboardSettingsProvider.localizedDetail()
{
  sub_1900B0BD0();
  MEMORY[0x1EEE9AC00]();
  sub_1900B15D0();
  MEMORY[0x1EEE9AC00]();
  sub_1900B15C0();
  sub_1900B0B90();
  return sub_1900B1620();
}

uint64_t sub_18FFEA564(uint64_t a1, id *a2)
{
  result = sub_1900B15F0();
  *a2 = 0;
  return result;
}

uint64_t sub_18FFEA5DC(uint64_t a1, id *a2)
{
  v3 = sub_1900B1600();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_18FFEA65C@<X0>(uint64_t *a1@<X8>)
{
  sub_1900B1610();
  v2 = sub_1900B15E0();

  *a1 = v2;
  return result;
}

uint64_t sub_18FFEA6A8(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x193AE72C0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_18FFEA6FC(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x193AE72D0](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

uint64_t sub_18FFEA77C()
{
  sub_18FFEBAD8(&qword_1EAD34F78, type metadata accessor for IAPayloadKey);
  sub_18FFEBAD8(&qword_1EAD34F80, type metadata accessor for IAPayloadKey);

  return sub_1900B1980();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_18FFEA870@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1900B15E0();

  *a1 = v2;
  return result;
}

uint64_t sub_18FFEA8B8()
{
  sub_18FFEBAD8(&qword_1EAD34F68, type metadata accessor for IAPayloadValue);
  sub_18FFEBAD8(&qword_1EAD34F70, type metadata accessor for IAPayloadValue);

  return sub_1900B1980();
}

_DWORD *sub_18FFEA974@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_18FFEA984@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_18FFEA990()
{
  sub_18FFEBAD8(&qword_1EAD34F88, type metadata accessor for UILayoutPriority);
  sub_18FFEBAD8(&qword_1EAD34F90, type metadata accessor for UILayoutPriority);
  return sub_1900B1980();
}

uint64_t sub_18FFEAA4C()
{
  v0 = sub_1900B1610();
  v1 = MEMORY[0x193AE7210](v0);

  return v1;
}

uint64_t sub_18FFEAA88()
{
  sub_1900B1610();
  sub_1900B1650();
}

uint64_t sub_18FFEAADC()
{
  sub_1900B1610();
  sub_1900B1A00();
  sub_1900B1650();
  v0 = sub_1900B1A20();

  return v0;
}

uint64_t sub_18FFEABB0()
{
  v0 = sub_1900B1610();
  v2 = v1;
  if (v0 == sub_1900B1610() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1900B19A0();
  }

  return v5 & 1;
}

uint64_t sub_18FFEAC4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_18FFEBD88;

  return sub_18FFE8D64(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_18FFEAD38(void *a1, char *a2, void (**a3)(void, void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34E28);
  MEMORY[0x1EEE9AC00]();
  v7 = &v34 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  _Block_copy(a3);
  if (([a1 keyboardSuggestionOptions] & 1) == 0)
  {
    v9 = [a1 keyboardState];
    v10 = [v9 inputContextHistory];
    if (v10)
    {
      v11 = v10;
      v12 = OBJC_IVAR___TUISmartActionGenerator_textComposerClient;
      swift_beginAccess();
      v13 = *&a2[v12];
      if (v13)
      {
        v14 = objc_allocWithZone(MEMORY[0x1E69D9328]);
        v15 = v13;
        v16 = [v14 initWithTIInputContextHistory_];
        if (v16)
        {
          v17 = v16;
          v18 = sub_1900B1700();
          (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
          v19 = swift_allocObject();
          v19[2] = 0;
          v19[3] = 0;
          v19[4] = v15;
          v19[5] = a1;
          v19[6] = v17;
          v19[7] = sub_18FFEB604;
          v19[8] = v8;
          v19[9] = a2;
          v20 = v15;
          v21 = a1;
          v22 = v17;

          v23 = a2;
          sub_18FFE9BE8(0, 0, v7, &unk_1900BF6C8, v19);

          return;
        }

        if (qword_1EAD34CB0 != -1)
        {
          swift_once();
        }

        v30 = sub_1900B0E80();
        __swift_project_value_buffer(v30, qword_1EAD379A8);
        v31 = sub_1900B0E60();
        v32 = sub_1900B1790();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_18FFDC000, v31, v32, "Failed to create valid TCInputContextHistory.", v33, 2u);
          MEMORY[0x193AE9010](v33, -1, -1);
        }

        v29 = [objc_opt_self() forSourceType_];
        (a3)[2](a3, v29);

        goto LABEL_15;
      }
    }

    v29 = [objc_opt_self() forSourceType_];
    (a3)[2](a3, v29);

LABEL_15:
    return;
  }

  if (qword_1EAD34CB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1900B0E80();
  __swift_project_value_buffer(v24, qword_1EAD379A8);
  v25 = sub_1900B0E60();
  v26 = sub_1900B1790();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_18FFDC000, v25, v26, "UITextInputTraits.keyboardSuggestionOptions contains pollsDisabled, will not generate smart action.", v27, 2u);
    MEMORY[0x193AE9010](v27, -1, -1);
  }

  v34 = [objc_opt_self() forSourceType_];
  (a3)[2](a3, v34);

  v28 = v34;
}

unint64_t sub_18FFEB250(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34F18);
    v3 = sub_1900B1970();
    v4 = a1 + 32;

    while (1)
    {
      sub_18FFEB918(v4, &v13, &qword_1EAD34EE8);
      v5 = v13;
      v6 = v14;
      result = sub_18FFF6638(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_18FFEB980(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_18FFEB380(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34ED8);
    v3 = sub_1900B1970();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      sub_18FFEB8C0(v7);
      result = sub_18FFF6638(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_18FFEB484()
{
  result = qword_1EAD34E38;
  if (!qword_1EAD34E38)
  {
    sub_1900B1080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD34E38);
  }

  return result;
}

unint64_t sub_18FFEB50C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34ED0);
    v3 = sub_1900B1970();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_18FFF66B0(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_18FFEB678(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_18FFEB764;

  return sub_18FFE8D64(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_18FFEB764()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_18FFEB858(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34E28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_18FFEB8C0(uint64_t a1)
{
  if (a1 < 0)
  {
    return (a1 & 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
  }
}

uint64_t sub_18FFEB8D0(uint64_t a1, unint64_t *a2)
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

uint64_t sub_18FFEB918(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

_OWORD *sub_18FFEB980(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_18FFEBA44(uint64_t a1, unint64_t *a2)
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

uint64_t sub_18FFEBAD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18FFEBD90()
{
  v0 = sub_1900B0E80();
  __swift_allocate_value_buffer(v0, qword_1EAD379E8);
  __swift_project_value_buffer(v0, qword_1EAD379E8);
  return sub_1900B0E70();
}

char *sub_18FFEBE90()
{
  v28 = sub_1900B17F0();
  v1 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v27 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1900B17E0();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1900B1560();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_monitor;
  sub_1900B0F80();
  swift_allocObject();
  *(v0 + v5) = sub_1900B0F70();
  v25 = OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_networkMonitorQueue;
  v24[0] = sub_18FFEE834();
  v24[4] = "e_>,N,&,Vdelegate";
  sub_1900B1550();
  v30 = MEMORY[0x1E69E7CC0];
  v24[3] = sub_18FFEE880(&qword_1ED76D568, MEMORY[0x1E69E8030]);
  v24[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34FF0);
  sub_18FFEE8C8(&qword_1ED76D570, &qword_1EAD34FF0);
  sub_1900B1870();
  v6 = *MEMORY[0x1E69E8090];
  v7 = v1 + 104;
  v8 = *(v1 + 104);
  v24[1] = v7;
  v9 = v27;
  v8(v27, v6, v28);
  v10 = sub_1900B1810();
  v11 = v26;
  *&v26[v25] = v10;
  v25 = OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_callbackQueue;
  sub_1900B1550();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1900B1870();
  v8(v9, v6, v28);
  *&v11[v25] = sub_1900B1810();
  v12 = OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_currentStatus;
  v13 = sub_1900B0FA0();
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  *&v11[OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_pendingCompletions] = MEMORY[0x1E69E7CC0];
  *&v11[OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_delegate] = 0;
  v14 = type metadata accessor for TUINetworkObserver();
  v29.receiver = v11;
  v29.super_class = v14;
  v15 = objc_msgSendSuper2(&v29, sel_init);
  *(swift_allocObject() + 16) = v15;
  v16 = v15;

  sub_18FFE84DC(sub_18FFEE91C);
  sub_1900B0F50();

  v17 = *&v16[OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_networkMonitorQueue];

  v18 = v17;
  sub_1900B0F60();

  if (qword_1EAD34D90 != -1)
  {
    swift_once();
  }

  v19 = sub_1900B0E80();
  __swift_project_value_buffer(v19, qword_1EAD379E8);
  v20 = sub_1900B0E60();
  v21 = sub_1900B17D0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_18FFDC000, v20, v21, "Begin network observation", v22, 2u);
    MEMORY[0x193AE9010](v22, -1, -1);
  }

  return v16;
}

uint64_t sub_18FFEC3EC(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v14 = 2;
  v7 = *&v3[OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_networkMonitorQueue];
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = &v14;
  v8[6] = ObjectType;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_18FFEE7B4;
  *(v9 + 24) = v8;
  aBlock[4] = sub_18FFEE7C4;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18FFECB80;
  aBlock[3] = &block_descriptor_28;
  v10 = _Block_copy(aBlock);
  v11 = v3;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    if (v14 != 2)
    {
      a1(v14 & 1);
    }
  }

  return result;
}

uint64_t sub_18FFEC594(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v45 = a3;
  v46 = a4;
  v44 = a2;
  v5 = sub_1900B0FA0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34FB8);
  MEMORY[0x1EEE9AC00](v43);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34FC0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v42 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v41 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v41 - v16;
  v18 = OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_currentStatus;
  swift_beginAccess();
  sub_18FFEE514(a1 + v18, v17);
  v19 = *(v6 + 48);
  v20 = v19(v17, 1, v5);
  sub_18FFEE584(v17, &qword_1EAD34FC0);
  if (v20 != 1)
  {
    (*(v6 + 104))(v15, *MEMORY[0x1E6977D40], v5);
    (*(v6 + 56))(v15, 0, 1, v5);
    v34 = *(v43 + 48);
    sub_18FFEE514(a1 + v18, v9);
    sub_18FFEE514(v15, &v9[v34]);
    v35 = v9;
    if (v19(v9, 1, v5) == 1)
    {
      sub_18FFEE584(v15, &qword_1EAD34FC0);
      if (v19(&v9[v34], 1, v5) == 1)
      {
        result = sub_18FFEE584(v9, &qword_1EAD34FC0);
        v36 = 1;
LABEL_18:
        *v46 = v36 & 1;
        return result;
      }
    }

    else
    {
      v37 = v9;
      v38 = v42;
      sub_18FFEE514(v37, v42);
      if (v19((v35 + v34), 1, v5) != 1)
      {
        v39 = v41;
        (*(v6 + 32))(v41, v35 + v34, v5);
        sub_18FFEE880(&qword_1ED76D578, MEMORY[0x1E6977D48]);
        v36 = sub_1900B15B0();
        v40 = *(v6 + 8);
        v40(v39, v5);
        sub_18FFEE584(v15, &qword_1EAD34FC0);
        v40(v38, v5);
        result = sub_18FFEE584(v35, &qword_1EAD34FC0);
        goto LABEL_18;
      }

      sub_18FFEE584(v15, &qword_1EAD34FC0);
      (*(v6 + 8))(v38, v5);
    }

    result = sub_18FFEE584(v35, &qword_1EAD34FB8);
    v36 = 0;
    goto LABEL_18;
  }

  if (qword_1EAD34D90 != -1)
  {
    swift_once();
  }

  v21 = sub_1900B0E80();
  __swift_project_value_buffer(v21, qword_1EAD379E8);
  v22 = sub_1900B0E60();
  v23 = sub_1900B17D0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_18FFDC000, v22, v23, "network availability requested but still initializing, adding pending completions", v24, 2u);
    MEMORY[0x193AE9010](v24, -1, -1);
  }

  v25 = swift_allocObject();
  v26 = v45;
  *(v25 + 16) = v44;
  *(v25 + 24) = v26;
  v27 = OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_pendingCompletions;
  swift_beginAccess();
  v28 = *(a1 + v27);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v27) = v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = sub_18FFEE2B8(0, v28[2] + 1, 1, v28);
    *(a1 + v27) = v28;
  }

  v31 = v28[2];
  v30 = v28[3];
  if (v31 >= v30 >> 1)
  {
    v28 = sub_18FFEE2B8((v30 > 1), v31 + 1, 1, v28);
  }

  v28[2] = v31 + 1;
  v32 = &v28[2 * v31];
  v32[4] = sub_18FFEE7EC;
  v32[5] = v25;
  *(a1 + v27) = v28;
  return swift_endAccess();
}

uint64_t sub_18FFECC34(uint64_t a1)
{
  v120 = a1;
  v115 = sub_1900B1540();
  v106 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v95 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1900B1560();
  v105 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v118 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34FB8);
  MEMORY[0x1EEE9AC00](v107);
  v108 = &v95 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34FC0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v101 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v97 = &v95 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v95 - v11;
  MEMORY[0x1EEE9AC00](v10);
  *&v121 = &v95 - v13;
  v109 = sub_1900B0FA0();
  v103 = *(v109 - 8);
  v14 = MEMORY[0x1EEE9AC00](v109);
  v99 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v102 = &v95 - v16;
  v119 = sub_1900B0FC0();
  v17 = *(v119 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v119);
  v113 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v95 - v20;
  v22 = sub_1900B1570();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (&v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *&v1[OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_networkMonitorQueue];
  *v25 = v26;
  (*(v23 + 104))(v25, *MEMORY[0x1E69E8020], v22);
  v27 = v26;
  v28 = sub_1900B1580();
  (*(v23 + 8))(v25, v22);
  if (v28)
  {
    v104 = v1;
    if (qword_1EAD34D90 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v29 = sub_1900B0E80();
  v30 = __swift_project_value_buffer(v29, qword_1EAD379E8);
  v31 = v21;
  v32 = v119;
  v110 = *(v17 + 16);
  v110(v21, v120, v119);
  v100 = v30;
  v33 = sub_1900B0E60();
  v34 = sub_1900B17D0();
  v35 = os_log_type_enabled(v33, v34);
  v117 = v17;
  v112 = v18;
  v111 = v17 + 16;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v98 = v12;
    v37 = v36;
    *v36 = 67109120;
    v38 = v102;
    v96 = v34;
    sub_1900B0FB0();
    v39 = *MEMORY[0x1E6977D40];
    v40 = v103;
    v41 = *(v103 + 104);
    v95 = v31;
    v42 = v99;
    v43 = v109;
    v41(v99, v39, v109);
    v44 = sub_1900B0F90();
    v45 = *(v40 + 8);
    v45(v42, v43);
    v45(v38, v43);
    (*(v17 + 8))(v95, v119);
    *(v37 + 1) = v44 & 1;
    _os_log_impl(&dword_18FFDC000, v33, v96, "Network observer observed availability update: %{BOOL}d", v37, 8u);
    v46 = v37;
    v12 = v98;
    MEMORY[0x193AE9010](v46, -1, -1);
    v47 = v121;
  }

  else
  {
    (*(v17 + 8))(v21, v32);
    v47 = v121;
    v40 = v103;
    v43 = v109;
  }

  v48 = OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_currentStatus;
  v49 = v104;
  swift_beginAccess();
  v103 = v48;
  sub_18FFEE514(&v49[v48], v47);
  sub_1900B0FB0();
  v50 = v121;
  v51 = *(v40 + 56);
  v99 = (v40 + 56);
  v98 = v51;
  (v51)(v12, 0, 1, v43);
  v52 = *(v107 + 12);
  v53 = v108;
  sub_18FFEE514(v50, v108);
  sub_18FFEE514(v12, v53 + v52);
  v54 = *(v40 + 48);
  if (v54(v53, 1, v43) == 1)
  {
    sub_18FFEE584(v12, &qword_1EAD34FC0);
    v55 = v109;
    sub_18FFEE584(v50, &qword_1EAD34FC0);
    v56 = v54(v53 + v52, 1, v55);
    v57 = v104;
    v58 = v116;
    if (v56 == 1)
    {
      sub_18FFEE584(v53, &qword_1EAD34FC0);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v55 = v43;
  v59 = v97;
  sub_18FFEE514(v53, v97);
  if (v54(v53 + v52, 1, v43) == 1)
  {
    sub_18FFEE584(v12, &qword_1EAD34FC0);
    sub_18FFEE584(v121, &qword_1EAD34FC0);
    (*(v40 + 8))(v59, v43);
    v57 = v104;
    v58 = v116;
LABEL_11:
    sub_18FFEE584(v53, &qword_1EAD34FB8);
    v60 = v115;
LABEL_12:
    v61 = v101;
    v62 = v120;
    sub_1900B0FB0();
    (v98)(v61, 0, 1, v55);
    v63 = v103;
    swift_beginAccess();
    sub_18FFEE5E4(v61, &v57[v63]);
    swift_endAccess();
    v64 = v113;
    v65 = v119;
    v110(v113, v62, v119);
    v66 = v117;
    v67 = (*(v117 + 80) + 24) & ~*(v117 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = v57;
    (*(v66 + 32))(v68 + v67, v64, v65);
    v128 = sub_18FFEE654;
    v129 = v68;
    aBlock = MEMORY[0x1E69E9820];
    v125 = 1107296256;
    v126 = sub_18FFEDDC8;
    v127 = &block_descriptor;
    v69 = _Block_copy(&aBlock);
    v70 = v57;
    v71 = v118;
    sub_1900B1550();
    v123 = MEMORY[0x1E69E7CC0];
    sub_18FFEE880(&qword_1EAD34FC8, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34FD0);
    sub_18FFEE8C8(&qword_1EAD34FD8, &qword_1EAD34FD0);
    sub_1900B1870();
    MEMORY[0x193AE7390](0, v71, v58, v69);
    _Block_release(v69);
    v106[1](v58, v60);
    v105[1](v71, v114);

    goto LABEL_13;
  }

  v90 = v53 + v52;
  v91 = v102;
  (*(v40 + 32))(v102, v90, v43);
  sub_18FFEE880(&qword_1ED76D578, MEMORY[0x1E6977D48]);
  v92 = v59;
  v93 = sub_1900B15B0();
  v94 = *(v40 + 8);
  v94(v91, v43);
  sub_18FFEE584(v12, &qword_1EAD34FC0);
  sub_18FFEE584(v121, &qword_1EAD34FC0);
  v94(v92, v43);
  sub_18FFEE584(v53, &qword_1EAD34FC0);
  v57 = v104;
  v60 = v115;
  v58 = v116;
  if ((v93 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  v72 = OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_pendingCompletions;
  result = swift_beginAccess();
  if (*(*&v57[v72] + 16))
  {
    v74 = sub_1900B0E60();
    v75 = sub_1900B17D0();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_18FFDC000, v74, v75, "Network observer done initializing, invoking pending completions", v76, 2u);
      MEMORY[0x193AE9010](v76, -1, -1);
    }

    v77 = *&v57[v72];
    v78 = *(v77 + 16);
    if (v78)
    {
      v103 = v72;
      v109 = *&v57[OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_callbackQueue];
      v108 = v117 + 32;
      v107 = &v126;
      ++v106;
      ++v105;

      v79 = 32;
      do
      {
        v80 = swift_allocObject();
        v121 = *(v77 + v79);
        *(v80 + 16) = v121;
        v81 = v113;
        v82 = v119;
        v110(v113, v120, v119);
        v83 = v117;
        v84 = (*(v117 + 80) + 32) & ~*(v117 + 80);
        v85 = swift_allocObject();
        *(v85 + 16) = sub_18FFEE718;
        *(v85 + 24) = v80;
        (*(v83 + 32))(v85 + v84, v81, v82);
        v128 = sub_18FFEE750;
        v129 = v85;
        aBlock = MEMORY[0x1E69E9820];
        v125 = 1107296256;
        v126 = sub_18FFEDDC8;
        v127 = &block_descriptor_19;
        v86 = _Block_copy(&aBlock);

        sub_1900B1550();
        v122 = MEMORY[0x1E69E7CC0];
        sub_18FFEE880(&qword_1EAD34FC8, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34FD0);
        sub_18FFEE8C8(&qword_1EAD34FD8, &qword_1EAD34FD0);
        v87 = v116;
        v88 = v115;
        v89 = v118;
        sub_1900B1870();
        MEMORY[0x193AE7390](0, v89, v87, v86);
        _Block_release(v86);

        (*v106)(v87, v88);
        (*v105)(v89, v114);

        v79 += 16;
        --v78;
      }

      while (v78);

      v57 = v104;
      v72 = v103;
    }

    *&v57[v72] = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_18FFEDC50(uint64_t a1)
{
  v2 = sub_1900B0FA0();
  v3 = *(v2 - 8);
  v4 = (MEMORY[0x1EEE9AC00])();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v13 - v8;
  v10 = *(a1 + OBJC_IVAR____TtC11TextInputUI18TUINetworkObserver_delegate);
  if (v10)
  {
    swift_unknownObjectRetain();
    sub_1900B0FB0();
    (*(v3 + 104))(v6, *MEMORY[0x1E6977D40], v2);
    v11 = sub_1900B0F90();
    v12 = *(v3 + 8);
    v12(v6, v2);
    v12(v9, v2);
    [v10 didObserveNetworkAvailabilityChange_];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_18FFEDDC8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_18FFEDE0C(uint64_t (*a1)(void))
{
  v2 = sub_1900B0FA0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  sub_1900B0FB0();
  (*(v3 + 104))(v6, *MEMORY[0x1E6977D40], v2);
  v9 = sub_1900B0F90();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v10(v8, v2);
  return a1(v9 & 1);
}

id sub_18FFEDF64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TUINetworkObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TUINetworkObserver()
{
  result = qword_1ED76D5D8;
  if (!qword_1ED76D5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18FFEE08C()
{
  sub_18FFEE154();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_18FFEE154()
{
  if (!qword_1EAD34FB0)
  {
    sub_1900B0FA0();
    v0 = sub_1900B1840();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD34FB0);
    }
  }
}

char *sub_18FFEE1AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34FF8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_18FFEE2B8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34FE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34FE8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_18FFEE3EC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35000);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    type metadata accessor for IAPayloadValue(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_18FFEE514(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18FFEE584(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18FFEE5E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34FC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_18FFEE654()
{
  sub_1900B0FC0();
  v1 = *(v0 + 16);

  return sub_18FFEDC50(v1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_18FFEE718(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_18FFEE750()
{
  sub_1900B0FC0();
  v1 = *(v0 + 16);

  return sub_18FFEDE0C(v1);
}

unint64_t sub_18FFEE834()
{
  result = qword_1ED76D5D0;
  if (!qword_1ED76D5D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED76D5D0);
  }

  return result;
}

uint64_t sub_18FFEE880(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18FFEE8C8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id TUITextComposerClientWrapper.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11TextInputUI28TUITextComposerClientWrapper_taskCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34E30);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = MEMORY[0x1E69E7CC0];
  v3[15] = sub_18FFEB380(MEMORY[0x1E69E7CC0]);
  v3[16] = v4;
  v3[14] = 8;
  *&v1[v2] = v3;
  sub_1900B0CB0();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC11TextInputUI28TUITextComposerClientWrapper_internalTextComposerClient] = sub_1900B0CA0();
  sub_1900B0C60();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC11TextInputUI28TUITextComposerClientWrapper_externalTextComposerClient] = sub_1900B0C50();
  v6.receiver = v1;
  v6.super_class = type metadata accessor for TUITextComposerClientWrapper();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_18FFEEA5C()
{
  v0 = sub_1900B0E80();
  __swift_allocate_value_buffer(v0, qword_1EAD37990);
  __swift_project_value_buffer(v0, qword_1EAD37990);
  return sub_1900B0E70();
}

Swift::UInt __swiftcall TUITextComposerClientWrapper.generateRequestToken()()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69D9370]) init];
  v1 = [v0 nextToken];

  return v1;
}

uint64_t sub_18FFEEB7C()
{
  result = sub_18FFEEBA0();
  qword_1EAD37980 = result;
  qword_1EAD37988 = v1;
  return result;
}

uint64_t sub_18FFEEBA0()
{
  v0 = sub_1900B15E0();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  if (!v1)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    sub_18FFEE584(&v8, qword_1EAD35078);
    return 0;
  }

  v2 = v1;
  v3 = sub_1900B15E0();
  v4 = [v2 objectForInfoDictionaryKey_];

  if (v4)
  {
    sub_1900B1860();
    swift_unknownObjectRelease();
  }

  else
  {

    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18FFEED14()
{
  result = sub_18FFEED38();
  byte_1EAD37978 = result & 1;
  return result;
}

uint64_t sub_18FFEED38()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35070);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v24 - v1;
  if (qword_1EAD34BB8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EAD37988;
  if (!qword_1EAD37988)
  {
    if (qword_1EAD34BC0 != -1)
    {
      swift_once();
    }

    v13 = sub_1900B0E80();
    __swift_project_value_buffer(v13, qword_1EAD37990);
    v14 = sub_1900B0E60();
    v15 = sub_1900B17B0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_18FFDC000, v14, v15, "Unable to find GM bundle version", v16, 2u);
      MEMORY[0x193AE9010](v16, -1, -1);
    }

    return 0;
  }

  v4 = qword_1EAD37980;
  v25[0] = qword_1EAD37980;
  v25[1] = qword_1EAD37988;
  v24[0] = 825112889;
  v24[1] = 0xE400000000000000;
  v5 = sub_1900B0BD0();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_18FFF9154();
  v6 = sub_1900B1850();
  sub_18FFEE584(v2, &qword_1EAD35070);
  if (v6 >= 2)
  {
    if (v6 != -1)
    {
      type metadata accessor for ComparisonResult(0);
      v25[0] = v6;
      result = sub_1900B19B0();
      __break(1u);
      return result;
    }

    if (qword_1EAD34BC0 != -1)
    {
      swift_once();
    }

    v18 = sub_1900B0E80();
    __swift_project_value_buffer(v18, qword_1EAD37990);

    v19 = sub_1900B0E60();
    v20 = sub_1900B17D0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25[0] = v22;
      *v21 = 136315138;
      v23 = sub_18FFF6090(v4, v3, v25);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_18FFDC000, v19, v20, "GM version %s does NOT support Availability API", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x193AE9010](v22, -1, -1);
      MEMORY[0x193AE9010](v21, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  if (qword_1EAD34BC0 != -1)
  {
    swift_once();
  }

  v7 = sub_1900B0E80();
  __swift_project_value_buffer(v7, qword_1EAD37990);

  v8 = sub_1900B0E60();
  v9 = sub_1900B17D0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25[0] = v11;
    *v10 = 136315138;
    v12 = sub_18FFF6090(v4, v3, v25);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_18FFDC000, v8, v9, "GM version %s supports Availability API", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x193AE9010](v11, -1, -1);
    MEMORY[0x193AE9010](v10, -1, -1);
  }

  else
  {
  }

  return 1;
}

void TUITextComposerClientWrapper.requestSmartRepliesWithContext(_:inputContextHistory:conversationType:smartReplyType:candidateString:options:completion:)(char *a1, void *a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, void (*a8)(void), void (*a9)(void))
{
  v130 = a7;
  v129 = a6;
  v128 = a5;
  v141 = a4;
  v142 = a1;
  ObjectType = swift_getObjectType();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34E28);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v126 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35020);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v126 - v16;
  v18 = sub_1900B0CE0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v137 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v143 = &v126 - v22;
  v23 = [a2 tiInputContextHistory];
  if (!v23)
  {
    __break(1u);
    return;
  }

  v24 = v23;
  v25 = [v23 threadIdentifier];

  v136 = v14;
  v133 = a2;
  if (v25)
  {
    v138 = sub_1900B1610();
    v139 = v26;
  }

  else
  {
    v138 = 0;
    v139 = 0xE000000000000000;
  }

  v27 = [v142 keyboardState];
  v28 = [v27 clientIdentifier];

  if (!v28)
  {
    v29 = 0;
    v31 = 0xE000000000000000;
    goto LABEL_10;
  }

  v29 = sub_1900B1610();
  v31 = v30;

  if (v29 != 0xD000000000000013 || 0x80000001900C1810 != v31)
  {
LABEL_10:
    if (sub_1900B19A0())
    {
LABEL_11:
      v32 = 1;
      goto LABEL_16;
    }

    v33 = 0xD000000000000014;
    if (v29 == 0xD000000000000014 && 0x80000001900C1B60 == v31)
    {
      v32 = 1;
    }

    else
    {
      if (sub_1900B19A0())
      {
        goto LABEL_11;
      }

      v33 = 0x6C7070612E6D6F63;
      if (v29 != 0x6C7070612E6D6F63 || v31 != 0xEE006C69616D2E65)
      {
        v32 = sub_1900B19A0();
        goto LABEL_16;
      }

      v32 = 1;
      v31 = 0xEE006C69616D2E65;
    }

    v29 = v33;
    goto LABEL_16;
  }

  v32 = 1;
  v29 = 0xD000000000000013;
LABEL_16:
  v140 = a9;
  if (!a3)
  {
    v132 = a8;
    sub_1900B0CD0();
LABEL_20:
    (*(v19 + 56))(v17, 0, 1, v18);
    v34 = *(v19 + 32);
    v34(v143, v17, v18);
    v131 = v19;
    if (v141 == 1)
    {

      if (v32)
      {
        v74 = sub_1900B1700();
        (*(*(v74 - 8) + 56))(v136, 1, 1, v74);
        (*(v19 + 16))(v137, v143, v18);
        v75 = v18;
        v76 = (*(v19 + 80) + 48) & ~*(v19 + 80);
        v77 = (v20 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
        v78 = (v77 + 23) & 0xFFFFFFFFFFFFFFF8;
        v142 = ((v78 + 23) & 0xFFFFFFFFFFFFFFF8);
        v79 = (v142 + 15) & 0xFFFFFFFFFFFFFFF8;
        v141 = (v79 + 23) & 0xFFFFFFFFFFFFFFF8;
        v80 = swift_allocObject();
        *(v80 + 16) = 0;
        *(v80 + 24) = 0;
        v81 = v135;
        v82 = v133;
        *(v80 + 32) = v135;
        *(v80 + 40) = v82;
        v34((v80 + v76), v137, v75);
        v83 = (v80 + v77);
        v84 = v129;
        *v83 = v128;
        v83[1] = v84;
        v85 = (v80 + v78);
        v86 = v139;
        *v85 = v138;
        v85[1] = v86;
        *&v142[v80] = 1;
        v87 = (v80 + v79);
        v88 = v140;
        *v87 = v132;
        v87[1] = v88;
        *(v80 + v141) = ObjectType;
        v89 = v81;
        v90 = v82;

        sub_18FFF0BDC(0, 0, v136, &unk_1900BFCB0, v80);

        (*(v131 + 8))(v143, v75);
        return;
      }
    }

    else
    {
      if (!v141)
      {
        if (v32)
        {

          v35 = sub_1900B1700();
          (*(*(v35 - 8) + 56))(v136, 1, 1, v35);
          (*(v19 + 16))(v137, v143, v18);
          v36 = (*(v19 + 80) + 56) & ~*(v19 + 80);
          v37 = (v20 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
          v141 = (v37 + 23) & 0xFFFFFFFFFFFFFFF8;
          v38 = (v141 + 15) & 0xFFFFFFFFFFFFFFF8;
          v129 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
          v128 = (v129 + 15) & 0xFFFFFFFFFFFFFFF8;
          v39 = swift_allocObject();
          *(v39 + 2) = 0;
          *(v39 + 3) = 0;
          v40 = v135;
          v41 = v142;
          *(v39 + 4) = v135;
          *(v39 + 5) = v41;
          v42 = v133;
          *(v39 + 6) = v133;
          v34(&v39[v36], v137, v18);
          v43 = &v39[v37];
          v44 = v139;
          *v43 = v138;
          v43[1] = v44;
          *&v39[v141] = v130;
          v45 = &v39[v38];
          v46 = v140;
          *v45 = v132;
          v45[1] = v46;
          *&v39[v129] = 0;
          *&v39[v128] = ObjectType;
          v47 = v40;
          v48 = v41;
          v49 = v42;

          sub_18FFF0BDC(0, 0, v136, &unk_1900BFCD0, v39);

          (*(v131 + 8))(v143, v18);
          return;
        }

        v110 = sub_1900B1700();
        (*(*(v110 - 8) + 56))(v136, 1, 1, v110);
        (*(v19 + 16))(v137, v143, v18);
        v111 = *(v19 + 80);
        v141 = v18;
        v112 = (v111 + 72) & ~v111;
        v129 = (v20 + v112 + 7) & 0xFFFFFFFFFFFFFFF8;
        v113 = (v129 + 15) & 0xFFFFFFFFFFFFFFF8;
        v128 = (v113 + 23) & 0xFFFFFFFFFFFFFFF8;
        v114 = (v128 + 15) & 0xFFFFFFFFFFFFFFF8;
        v127 = (v114 + 23) & 0xFFFFFFFFFFFFFFF8;
        v115 = swift_allocObject();
        *(v115 + 2) = 0;
        *(v115 + 3) = 0;
        v116 = v135;
        v117 = v142;
        *(v115 + 4) = v135;
        *(v115 + 5) = v117;
        *(v115 + 6) = v29;
        *(v115 + 7) = v31;
        v118 = v133;
        *(v115 + 8) = v133;
        v34(&v115[v112], v137, v141);
        *&v115[v129] = v130;
        v119 = &v115[v113];
        v120 = v139;
        *v119 = v138;
        v119[1] = v120;
        *&v115[v128] = 0;
        v121 = &v115[v114];
        v122 = v140;
        *v121 = v132;
        v121[1] = v122;
        *&v115[v127] = ObjectType;
        v123 = v116;
        v124 = v117;
        v125 = v118;

        sub_18FFF0BDC(0, 0, v136, &unk_1900BFCC0, v115);

        goto LABEL_42;
      }
    }

    if (qword_1EAD34BC0 != -1)
    {
      swift_once();
    }

    v141 = v18;
    v91 = sub_1900B0E80();
    __swift_project_value_buffer(v91, qword_1EAD37990);
    v92 = sub_1900B0E60();
    v93 = sub_1900B17B0();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_18FFDC000, v92, v93, "Unsupported SR request for client", v94, 2u);
      MEMORY[0x193AE9010](v94, -1, -1);
    }

    v95 = type metadata accessor for TUISmartReplyResponse();
    v96 = objc_allocWithZone(v95);
    v97 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse;
    *&v96[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse] = 0;
    v98 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error;
    *&v96[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error] = 0;
    v99 = &v96[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelInfoString];
    *v99 = 0;
    *(v99 + 1) = 0;
    v100 = &v96[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_userFeedbackInputString];
    *v100 = 0;
    *(v100 + 1) = 0;
    v101 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache;
    *&v96[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache] = 0;
    v102 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount;
    *&v96[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount] = 0;
    v103 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount;
    *&v96[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount] = 0;
    swift_beginAccess();
    *&v96[v97] = 0;
    swift_beginAccess();
    *&v96[v98] = 0;
    v104 = &v96[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_threadIdentifier];
    v105 = v139;
    *v104 = v138;
    v104[1] = v105;
    *&v96[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_type] = 1;
    *&v96[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_contentWarning] = 0;
    swift_beginAccess();
    *v99 = 0;
    *(v99 + 1) = 0;

    swift_beginAccess();
    *v100 = 0;
    *(v100 + 1) = 0;

    swift_beginAccess();
    v106 = *&v96[v101];
    *&v96[v101] = 0;

    swift_beginAccess();
    v107 = *&v96[v102];
    *&v96[v102] = 0;

    swift_beginAccess();
    v108 = *&v96[v103];
    *&v96[v103] = 0;

    v144.receiver = v96;
    v144.super_class = v95;
    v109 = objc_msgSendSuper2(&v144, sel_init);
    v132();

LABEL_42:
    (*(v131 + 8))(v143, v141);
    return;
  }

  if (a3 == 1)
  {
    v132 = a8;
    sub_1900B0CC0();
    goto LABEL_20;
  }

  (*(v19 + 56))(v17, 1, 1, v18);
  sub_18FFEE584(v17, &qword_1EAD35020);
  if (qword_1EAD34BC0 != -1)
  {
    swift_once();
  }

  v50 = a8;
  v51 = sub_1900B0E80();
  __swift_project_value_buffer(v51, qword_1EAD37990);
  v52 = sub_1900B0E60();
  v53 = sub_1900B17B0();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v147 = v55;
    *v54 = 136315138;
    v146 = a3;
    type metadata accessor for TUISmartReplyConversationType(0);
    v56 = sub_1900B1630();
    v58 = sub_18FFF6090(v56, v57, &v147);

    *(v54 + 4) = v58;
    _os_log_impl(&dword_18FFDC000, v52, v53, "Unsupported smart reply conversation type %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x193AE9010](v55, -1, -1);
    MEMORY[0x193AE9010](v54, -1, -1);
  }

  v59 = type metadata accessor for TUISmartReplyResponse();
  v60 = objc_allocWithZone(v59);
  v61 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse;
  *&v60[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse] = 0;
  v62 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error;
  *&v60[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error] = 0;
  v63 = &v60[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelInfoString];
  *v63 = 0;
  *(v63 + 1) = 0;
  v64 = &v60[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_userFeedbackInputString];
  *v64 = 0;
  *(v64 + 1) = 0;
  v65 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache;
  *&v60[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache] = 0;
  v66 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount;
  *&v60[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount] = 0;
  v67 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount;
  *&v60[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount] = 0;
  swift_beginAccess();
  *&v60[v61] = 0;
  swift_beginAccess();
  *&v60[v62] = 0;
  v68 = &v60[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_threadIdentifier];
  v69 = v139;
  *v68 = v138;
  v68[1] = v69;
  *&v60[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_type] = v141;
  *&v60[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_contentWarning] = 0;
  swift_beginAccess();
  *v63 = 0;
  *(v63 + 1) = 0;

  swift_beginAccess();
  *v64 = 0;
  *(v64 + 1) = 0;

  swift_beginAccess();
  v70 = *&v60[v65];
  *&v60[v65] = 0;

  swift_beginAccess();
  v71 = *&v60[v66];
  *&v60[v66] = 0;

  swift_beginAccess();
  v72 = *&v60[v67];
  *&v60[v67] = 0;

  v145.receiver = v60;
  v145.super_class = v59;
  v73 = objc_msgSendSuper2(&v145, sel_init);
  v50();
}

uint64_t TUISmartReplyConversationType.documentFormatEquivalent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    sub_1900B0CD0();
    goto LABEL_5;
  }

  if (a1 == 1)
  {
    sub_1900B0CC0();
LABEL_5:
    v3 = 0;
    goto LABEL_7;
  }

  v3 = 1;
LABEL_7:
  v4 = sub_1900B0CE0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_18FFF0390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 416) = v19;
  *(v8 + 400) = v18;
  *(v8 + 384) = a8;
  *(v8 + 392) = v16;
  v13 = swift_task_alloc();
  *(v8 + 424) = v13;
  *v13 = v8;
  v13[1] = sub_18FFF0480;

  return sub_18FFF2818(a5, a6, a7, a8, v16, v17);
}

uint64_t sub_18FFF0480(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 432) = v1;

  if (v1)
  {
    v5 = sub_18FFF082C;
  }

  else
  {
    *(v4 + 440) = a1;
    v5 = sub_18FFF05A8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_18FFF05A8()
{
  v1 = *(v0 + 440);
  v2 = *&v1[OBJC_IVAR___TUIShortFormSmartActionResponse_smartReply];
  v3 = v2;

  if (v2)
  {
    (*(v0 + 400))(v3);
  }

  else
  {
    v4 = *(v0 + 392);
    v22 = *(v0 + 400);
    v19 = *(v0 + 384);
    v20 = *(v0 + 416);
    v21 = type metadata accessor for TUISmartReplyResponse();
    v5 = objc_allocWithZone(v21);
    v6 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse;
    *&v5[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse] = 0;
    v7 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error;
    *&v5[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error] = 0;
    v8 = &v5[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelInfoString];
    *v8 = 0;
    *(v8 + 1) = 0;
    v9 = &v5[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_userFeedbackInputString];
    *v9 = 0;
    *(v9 + 1) = 0;
    v10 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache;
    *&v5[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache] = 0;
    v11 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount;
    *&v5[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount] = 0;
    v12 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount;
    *&v5[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount] = 0;
    swift_beginAccess();
    *&v5[v6] = 0;
    swift_beginAccess();
    *&v5[v7] = 0;
    v13 = &v5[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_threadIdentifier];
    *v13 = v19;
    *(v13 + 1) = v4;
    *&v5[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_type] = v20;
    *&v5[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_contentWarning] = 0;
    swift_beginAccess();
    *v8 = 0;
    *(v8 + 1) = 0;

    swift_beginAccess();
    *v9 = 0;
    *(v9 + 1) = 0;

    swift_beginAccess();
    v14 = *&v5[v10];
    *&v5[v10] = 0;

    swift_beginAccess();
    v15 = *&v5[v11];
    *&v5[v11] = 0;

    swift_beginAccess();
    v16 = *&v5[v12];
    *&v5[v12] = 0;

    *(v0 + 368) = v5;
    *(v0 + 376) = v21;
    v3 = objc_msgSendSuper2((v0 + 368), sel_init);
    v22(v3);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_18FFF082C()
{
  if (qword_1EAD34BC0 != -1)
  {
    swift_once();
  }

  receiver = v0[27].receiver;
  v2 = sub_1900B0E80();
  __swift_project_value_buffer(v2, qword_1EAD37990);
  v3 = receiver;
  v4 = sub_1900B0E60();
  v5 = sub_1900B17D0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[27].receiver;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_18FFDC000, v4, v5, "Caught short form generation error: %@ for internal client.", v7, 0xCu);
    sub_18FFEE584(v8, &qword_1EAD35060);
    MEMORY[0x193AE9010](v8, -1, -1);
    MEMORY[0x193AE9010](v7, -1, -1);
  }

  v32 = v0[27].receiver;
  v33 = v0[25].receiver;
  super_class = v0[24].super_class;
  v30 = v0[26].receiver;
  v28 = v0[24].receiver;

  v11 = sub_1900B0B50();
  v31 = type metadata accessor for TUISmartReplyResponse();
  v12 = objc_allocWithZone(v31);
  v13 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse] = 0;
  v14 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error] = 0;
  v15 = &v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelInfoString];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_userFeedbackInputString];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache] = 0;
  v18 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount] = 0;
  v19 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount] = 0;
  swift_beginAccess();
  *&v12[v13] = 0;
  swift_beginAccess();
  *&v12[v14] = v11;
  v20 = &v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_threadIdentifier];
  *v20 = v28;
  *(v20 + 1) = super_class;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_type] = v30;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_contentWarning] = 0;
  swift_beginAccess();
  *v15 = 0;
  *(v15 + 1) = 0;

  v21 = v11;

  swift_beginAccess();
  *v16 = 0;
  *(v16 + 1) = 0;

  swift_beginAccess();
  v22 = *&v12[v17];
  *&v12[v17] = 0;

  swift_beginAccess();
  v23 = *&v12[v18];
  *&v12[v18] = 0;

  swift_beginAccess();
  v24 = *&v12[v19];
  *&v12[v19] = 0;

  v0[22].receiver = v12;
  v0[22].super_class = v31;
  v25 = objc_msgSendSuper2(v0 + 22, sel_init);

  v33(v25);
  v26 = v0->super_class;

  return v26();
}

uint64_t sub_18FFF0BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34E28);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_18FFF8FD0(a3, v25 - v10);
  v12 = sub_1900B1700();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_18FFEE584(v11, &qword_1EAD34E28);
  }

  else
  {
    sub_1900B16F0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1900B16B0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1900B1640() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_18FFEE584(a3, &qword_1EAD34E28);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_18FFEE584(a3, &qword_1EAD34E28);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_18FFF0ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 600) = v18;
  *(v8 + 584) = v17;
  *(v8 + 568) = v16;
  v12 = swift_task_alloc();
  *(v8 + 608) = v12;
  *v12 = v8;
  v12[1] = sub_18FFF0FB0;

  return sub_18FFF8794(a6, a7, a8, v15);
}

uint64_t sub_18FFF0FB0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[77] = a1;
  v4[78] = a2;
  v4[79] = v2;

  if (v2)
  {
    v5 = sub_18FFF15C8;
  }

  else
  {
    v5 = sub_18FFF10CC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_18FFF10CC()
{
  v1 = *(v0 + 616);
  if (v1)
  {
    v2 = *(v0 + 624);
    v54 = *(v0 + 592);
    v42 = *(v0 + 584);
    v39 = *(v0 + 568);
    v40 = *(v0 + 576);
    v41 = sub_18FFFFED4(v2);
    v3 = sub_18FFF91B0(v2);
    v43 = v4;
    v44 = v3;
    v5 = sub_18FFF94D8(v2);
    v45 = v6;
    v46 = v5;
    v47 = sub_18FFF958C(v2);
    v48 = sub_18FFF9658(v2);
    v52 = sub_18FFF9664(v2);

    v50 = type metadata accessor for TUISmartReplyResponse();
    v7 = objc_allocWithZone(v50);
    v8 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse;
    *&v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse] = 0;
    v9 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error;
    *&v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error] = 0;
    v10 = &v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelInfoString];
    *v10 = 0;
    v10[1] = 0;
    v11 = &v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_userFeedbackInputString];
    *v11 = 0;
    v11[1] = 0;
    v12 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache;
    *&v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache] = 0;
    v13 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount;
    *&v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount] = 0;
    v14 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount;
    *&v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount] = 0;
    swift_beginAccess();
    *&v7[v8] = v1;
    swift_beginAccess();
    *&v7[v9] = 0;
    v15 = &v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_threadIdentifier];
    *v15 = v39;
    *(v15 + 1) = v40;
    *&v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_type] = v42;
    *&v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_contentWarning] = v41;
    swift_beginAccess();
    *v10 = v44;
    v10[1] = v43;

    v16 = v1;

    swift_beginAccess();
    *v11 = v46;
    v11[1] = v45;

    swift_beginAccess();
    v17 = *&v7[v12];
    *&v7[v12] = v47;
    v18 = v47;

    swift_beginAccess();
    v19 = *&v7[v13];
    *&v7[v13] = v48;
    v20 = v48;

    swift_beginAccess();
    v21 = *&v7[v14];
    *&v7[v14] = v52;
    v22 = v52;

    *(v0 + 552) = v7;
    *(v0 + 560) = v50;
    v23 = objc_msgSendSuper2((v0 + 552), sel_init);

    v54(v23);
  }

  else
  {
    v55 = *(v0 + 592);
    v24 = *(v0 + 576);
    v49 = *(v0 + 568);
    v51 = *(v0 + 584);
    v53 = type metadata accessor for TUISmartReplyResponse();
    v25 = objc_allocWithZone(v53);
    v26 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse;
    *&v25[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse] = 0;
    v27 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error;
    *&v25[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error] = 0;
    v28 = &v25[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelInfoString];
    *v28 = 0;
    *(v28 + 1) = 0;
    v29 = &v25[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_userFeedbackInputString];
    *v29 = 0;
    *(v29 + 1) = 0;
    v30 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache;
    *&v25[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache] = 0;
    v31 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount;
    *&v25[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount] = 0;
    v32 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount;
    *&v25[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount] = 0;
    swift_beginAccess();
    *&v25[v26] = 0;
    swift_beginAccess();
    *&v25[v27] = 0;
    v33 = &v25[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_threadIdentifier];
    *v33 = v49;
    *(v33 + 1) = v24;
    *&v25[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_type] = v51;
    *&v25[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_contentWarning] = 0;
    swift_beginAccess();
    *v28 = 0;
    *(v28 + 1) = 0;

    swift_beginAccess();
    *v29 = 0;
    *(v29 + 1) = 0;

    swift_beginAccess();
    v34 = *&v25[v30];
    *&v25[v30] = 0;

    swift_beginAccess();
    v35 = *&v25[v31];
    *&v25[v31] = 0;

    swift_beginAccess();
    v36 = *&v25[v32];
    *&v25[v32] = 0;

    *(v0 + 536) = v25;
    *(v0 + 544) = v53;
    v16 = objc_msgSendSuper2((v0 + 536), sel_init);
    v55();
  }

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_18FFF15C8()
{
  if (qword_1EAD34BC0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 632);
  v2 = sub_1900B0E80();
  __swift_project_value_buffer(v2, qword_1EAD37990);
  v3 = v1;
  v4 = sub_1900B0E60();
  v5 = sub_1900B17D0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 632);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_18FFDC000, v4, v5, "Caught short form generation error: %@ for internal client.", v7, 0xCu);
    sub_18FFEE584(v8, &qword_1EAD35060);
    MEMORY[0x193AE9010](v8, -1, -1);
    MEMORY[0x193AE9010](v7, -1, -1);
  }

  v32 = *(v0 + 632);
  v33 = *(v0 + 592);
  v29 = *(v0 + 576);
  v30 = *(v0 + 584);
  v28 = *(v0 + 568);

  v11 = sub_1900B0B50();
  v31 = type metadata accessor for TUISmartReplyResponse();
  v12 = objc_allocWithZone(v31);
  v13 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse] = 0;
  v14 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error] = 0;
  v15 = &v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelInfoString];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_userFeedbackInputString];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache] = 0;
  v18 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount] = 0;
  v19 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount] = 0;
  swift_beginAccess();
  *&v12[v13] = 0;
  swift_beginAccess();
  *&v12[v14] = v11;
  v20 = &v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_threadIdentifier];
  *v20 = v28;
  *(v20 + 1) = v29;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_type] = v30;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_contentWarning] = 0;
  swift_beginAccess();
  *v15 = 0;
  *(v15 + 1) = 0;

  v21 = v11;

  swift_beginAccess();
  *v16 = 0;
  *(v16 + 1) = 0;

  swift_beginAccess();
  v22 = *&v12[v17];
  *&v12[v17] = 0;

  swift_beginAccess();
  v23 = *&v12[v18];
  *&v12[v18] = 0;

  swift_beginAccess();
  v24 = *&v12[v19];
  *&v12[v19] = 0;

  *(v0 + 520) = v12;
  *(v0 + 528) = v31;
  v25 = objc_msgSendSuper2((v0 + 520), sel_init);

  v33(v25);
  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_18FFF1984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 456) = v12;
  *(v8 + 440) = v11;
  *(v8 + 424) = v10;
  *(v8 + 408) = a7;
  *(v8 + 416) = a8;
  *(v8 + 392) = a5;
  *(v8 + 400) = a6;
  *(v8 + 384) = a4;
  return MEMORY[0x1EEE6DFA0](sub_18FFF19CC, 0, 0);
}

uint64_t sub_18FFF19CC()
{
  v7 = (*MEMORY[0x1E69D92D8] + MEMORY[0x1E69D92D8]);
  v1 = swift_task_alloc();
  v0[58] = v1;
  *v1 = v0;
  v1[1] = sub_18FFF1A8C;
  v2 = v0[51];
  v3 = v0[52];
  v5 = v0[49];
  v4 = v0[50];

  return v7(v5, v4, v2, v3, 0);
}

uint64_t sub_18FFF1A8C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 472) = v2;

  if (v2)
  {
    v7 = sub_18FFF1EBC;
  }

  else
  {
    *(v6 + 480) = a2;
    *(v6 + 488) = a1;
    v7 = sub_18FFF1BC0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18FFF1BC0()
{
  receiver = v0[30].receiver;
  super_class = v0[30].super_class;
  v38 = v0[28].receiver;
  v29 = v0[27].super_class;
  v26 = v0[26].super_class;
  v27 = v0[27].receiver;
  v28 = sub_18FFFFED4(receiver);
  v3 = sub_18FFF91B0(receiver);
  v30 = v4;
  v31 = v3;
  v5 = sub_18FFF94D8(receiver);
  v32 = v6;
  v33 = v5;
  v34 = sub_18FFF958C(receiver);
  v35 = sub_18FFF9658(receiver);
  v37 = sub_18FFF9664(receiver);

  v36 = type metadata accessor for TUISmartReplyResponse();
  v7 = objc_allocWithZone(v36);
  v8 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse;
  *&v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse] = 0;
  v9 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error;
  *&v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error] = 0;
  v10 = &v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelInfoString];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_userFeedbackInputString];
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache;
  *&v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache] = 0;
  v13 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount;
  *&v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount] = 0;
  v14 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount;
  *&v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount] = 0;
  swift_beginAccess();
  *&v7[v8] = super_class;
  swift_beginAccess();
  *&v7[v9] = 0;
  v15 = &v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_threadIdentifier];
  *v15 = v26;
  v15[1] = v27;
  *&v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_type] = v29;
  *&v7[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_contentWarning] = v28;
  swift_beginAccess();
  *v10 = v31;
  v10[1] = v30;
  v16 = super_class;

  swift_beginAccess();
  *v11 = v33;
  v11[1] = v32;

  swift_beginAccess();
  v17 = *&v7[v12];
  *&v7[v12] = v34;
  v18 = v34;

  swift_beginAccess();
  v19 = *&v7[v13];
  *&v7[v13] = v35;
  v20 = v35;

  swift_beginAccess();
  v21 = *&v7[v14];
  *&v7[v14] = v37;
  v22 = v37;

  v0[23].receiver = v7;
  v0[23].super_class = v36;
  v23 = objc_msgSendSuper2(v0 + 23, sel_init);

  v38(v23);
  v24 = v0->super_class;

  return v24();
}

uint64_t sub_18FFF1EBC()
{
  if (qword_1EAD34BC0 != -1)
  {
    swift_once();
  }

  super_class = v0[29].super_class;
  v2 = sub_1900B0E80();
  __swift_project_value_buffer(v2, qword_1EAD37990);
  v3 = super_class;
  v4 = sub_1900B0E60();
  v5 = sub_1900B17D0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[29].super_class;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_18FFDC000, v4, v5, "Caught long form generation error: %@", v7, 0xCu);
    sub_18FFEE584(v8, &qword_1EAD35060);
    MEMORY[0x193AE9010](v8, -1, -1);
    MEMORY[0x193AE9010](v7, -1, -1);
  }

  v32 = v0[29].super_class;
  receiver = v0[28].receiver;
  v29 = v0[27].receiver;
  v30 = v0[27].super_class;
  v28 = v0[26].super_class;

  v11 = sub_1900B0B50();
  v31 = type metadata accessor for TUISmartReplyResponse();
  v12 = objc_allocWithZone(v31);
  v13 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse] = 0;
  v14 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error] = 0;
  v15 = &v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelInfoString];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_userFeedbackInputString];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache] = 0;
  v18 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount] = 0;
  v19 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount] = 0;
  swift_beginAccess();
  *&v12[v13] = 0;
  swift_beginAccess();
  *&v12[v14] = v11;
  v20 = &v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_threadIdentifier];
  *v20 = v28;
  v20[1] = v29;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_type] = v30;
  *&v12[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_contentWarning] = 0;
  swift_beginAccess();
  *v15 = 0;
  *(v15 + 1) = 0;

  v21 = v11;

  swift_beginAccess();
  *v16 = 0;
  *(v16 + 1) = 0;

  swift_beginAccess();
  v22 = *&v12[v17];
  *&v12[v17] = 0;

  swift_beginAccess();
  v23 = *&v12[v18];
  *&v12[v18] = 0;

  swift_beginAccess();
  v24 = *&v12[v19];
  *&v12[v19] = 0;

  v0[22].receiver = v12;
  v0[22].super_class = v31;
  v25 = objc_msgSendSuper2(v0 + 22, sel_init);

  receiver(v25);
  v26 = v0->super_class;

  return v26();
}

uint64_t TUITextComposerClientWrapper.requestShortFormSmartResponseGeneration(context:inputContextHistory:documentFormat:threadIdentifier:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_18FFF2484;

  return sub_18FFF2818(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_18FFF2484(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v4 + 8);

    return v7(a1);
  }
}

Swift::Void __swiftcall TUITextComposerClientWrapper.cancelRequest(token:forClient:)(Swift::UInt token, Swift::String forClient)
{
  object = forClient._object;
  countAndFlagsBits = forClient._countAndFlagsBits;
  if (qword_1EAD34BC0 != -1)
  {
    swift_once();
  }

  v5 = sub_1900B0E80();
  __swift_project_value_buffer(v5, qword_1EAD37990);
  v6 = sub_1900B0E60();
  v7 = sub_1900B17D0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = token;
    _os_log_impl(&dword_18FFDC000, v6, v7, "Cancelling request: %lu", v8, 0xCu);
    MEMORY[0x193AE9010](v8, -1, -1);
  }

  if (countAndFlagsBits == 0xD000000000000013 && 0x80000001900C1810 == object || (sub_1900B19A0() & 1) != 0 || countAndFlagsBits == 0xD000000000000014 && 0x80000001900C1B60 == object || (sub_1900B19A0() & 1) != 0 || countAndFlagsBits == 0x6C7070612E6D6F63 && object == 0xEE006C69616D2E65 || (sub_1900B19A0() & 1) != 0)
  {
    sub_1900B0C90();
  }

  else if ((token & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    sub_1900B0C40();
  }
}

uint64_t sub_18FFF2818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[16] = a6;
  v7[17] = v6;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v7[18] = swift_getObjectType();
  v8 = sub_1900B0CE0();
  v7[19] = v8;
  v9 = *(v8 - 8);
  v7[20] = v9;
  v7[21] = *(v9 + 64);
  v7[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34E28);
  v7[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18FFF2930, 0, 0);
}

uint64_t sub_18FFF2930()
{
  v13 = v0;
  v1 = [*(v0 + 88) requestToken];
  v2 = [v1 shortIdentifier];

  v3 = sub_1900B1610();
  v5 = v4;

  *(v0 + 192) = v3;
  *(v0 + 200) = v5;
  if (qword_1EAD34BC0 != -1)
  {
    swift_once();
  }

  v6 = sub_1900B0E80();
  *(v0 + 208) = __swift_project_value_buffer(v6, qword_1EAD37990);

  v7 = sub_1900B0E60();
  v8 = sub_1900B17D0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_18FFF6090(v3, v5, &v12);
    _os_log_impl(&dword_18FFDC000, v7, v8, ">>>> performShortFormSmartResponseGeneration_async called for id: [%s]", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x193AE9010](v10, -1, -1);
    MEMORY[0x193AE9010](v9, -1, -1);
  }

  *(v0 + 216) = *(*(v0 + 136) + OBJC_IVAR____TtC11TextInputUI28TUITextComposerClientWrapper_taskCache);

  return MEMORY[0x1EEE6DFA0](sub_18FFF2B18);
}

uint64_t sub_18FFF2B18()
{
  v1 = v0[27];
  swift_beginAccess();
  v2 = *(v1 + 120);
  if (*(v2 + 16))
  {
    v4 = v0[24];
    v3 = v0[25];

    v5 = sub_18FFF6638(v4, v3);
    if (v6)
    {
      v8 = v0[24];
      v7 = v0[25];
      v9 = *(*(v2 + 56) + 8 * v5);
      v0[28] = v9;
      sub_18FFEB8C0(v9);

      sub_18FFF5D50(v8, v7);
      v10 = sub_18FFF2C08;
      goto LABEL_6;
    }
  }

  v10 = sub_18FFF2FC8;
LABEL_6:

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_18FFF2C08()
{
  v1 = v0[28];

  v2 = v0[28];
  if (v1 < 0)
  {
    v10 = (v2 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = sub_1900B0E60();
    v12 = sub_1900B17D0();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[28];
    if (v13)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_18FFDC000, v11, v12, ">>>> found payload in cache and complete", v15, 2u);
      MEMORY[0x193AE9010](v15, -1, -1);
    }

    sub_18FFF8770(v14);

    v16 = v0[1];

    return v16(v10);
  }

  else
  {
    v3 = sub_1900B0E60();
    v4 = sub_1900B17D0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_18FFDC000, v3, v4, ">>>> found in-progress in cache. awaiting value.", v5, 2u);
      MEMORY[0x193AE9010](v5, -1, -1);
    }

    v6 = swift_task_alloc();
    v0[29] = v6;
    v7 = type metadata accessor for ShortFormSmartActionResponse();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35058);
    *v6 = v0;
    v6[1] = sub_18FFF2E38;
    v9 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v0 + 10, v2, v7, v8, v9);
  }
}

uint64_t sub_18FFF2E38()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_18FFF39BC;
  }

  else
  {
    v2 = sub_18FFF2F4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18FFF2F4C()
{
  sub_18FFF8770(v0[28]);
  v1 = v0[10];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_18FFF2FC8()
{
  v50 = v0;

  v1 = sub_1900B0E60();
  v2 = sub_1900B17D0();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 192);
    v3 = *(v0 + 200);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v48 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_18FFF6090(v4, v3, &v48);
    _os_log_impl(&dword_18FFDC000, v1, v2, ">>>> did not find cached value for id: [%s]", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x193AE9010](v6, -1, -1);
    MEMORY[0x193AE9010](v5, -1, -1);
  }

  v7 = [*(v0 + 88) keyboardState];
  v8 = [v7 documentState];

  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = [v8 contextBeforeInput];
  if (!v9)
  {

LABEL_7:
    v11 = 0;
    v13 = 0xE000000000000000;
    goto LABEL_8;
  }

  v10 = v9;
  v11 = sub_1900B1610();
  v13 = v12;

LABEL_8:
  if ([*(v0 + 88) usesCandidateSelection] && (v14 = objc_msgSend(*(v0 + 88), sel_keyboardState), v15 = objc_msgSend(v14, sel_inputForMarkedText), v14, v15))
  {
    v16 = sub_1900B1610();
    v18 = v17;

    v48 = v11;
    v49 = v13;
    MEMORY[0x193AE71F0](v16, v18);

    v46 = v49;
    v47 = v48;
  }

  else
  {
    v46 = v13;
    v47 = v11;
  }

  v19 = *(v0 + 176);
  v20 = *(v0 + 184);
  v44 = v20;
  v45 = *(v0 + 216);
  v21 = *(v0 + 160);
  v22 = *(v0 + 168);
  v23 = *(v0 + 152);
  v38 = v23;
  v39 = v19;
  v24 = *(v0 + 136);
  v42 = *(v0 + 128);
  v43 = *(v0 + 144);
  v40 = *(v0 + 112);
  v41 = *(v0 + 120);
  v25 = *(v0 + 96);
  v26 = *(v0 + 104);
  v27 = sub_1900B1700();
  (*(*(v27 - 8) + 56))(v20, 1, 1, v27);
  (*(v21 + 16))(v19, v26, v23);
  v28 = (*(v21 + 80) + 48) & ~*(v21 + 80);
  v29 = (v22 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 2) = 0;
  *(v32 + 3) = 0;
  *(v32 + 4) = v24;
  *(v32 + 5) = v25;
  (*(v21 + 32))(&v32[v28], v39, v38);
  v33 = &v32[v29];
  *v33 = v47;
  v33[1] = v46;
  v34 = &v32[v30];
  *v34 = v40;
  *(v34 + 1) = v41;
  *&v32[v31] = v42;
  *&v32[(v31 + 15) & 0xFFFFFFFFFFFFFFF8] = v43;

  v35 = v24;
  v36 = v25;

  *(v0 + 248) = sub_18FFE9E64(0, 0, v44, &unk_1900BFDE8, v32);

  return MEMORY[0x1EEE6DFA0](sub_18FFF3378, v45, 0);
}

uint64_t sub_18FFF33A4()
{
  v16 = v0;
  v1 = v0[17];

  v2 = v1;
  v3 = sub_1900B0E60();
  v4 = sub_1900B17D0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[32];
    v7 = v0[24];
    v6 = v0[25];
    v8 = v0[17];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v9 = 138412802;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2080;
    v12 = v8;
    *(v9 + 14) = sub_18FFF6090(v7, v6, &v15);
    *(v9 + 22) = 2048;
    *(v9 + 24) = v5;
    _os_log_impl(&dword_18FFDC000, v3, v4, ">>>> %@ adding in-progress task with id:[%s] to cache. cache size before addition is: %ld", v9, 0x20u);
    sub_18FFEE584(v10, &qword_1EAD35060);
    MEMORY[0x193AE9010](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x193AE9010](v11, -1, -1);
    MEMORY[0x193AE9010](v9, -1, -1);
  }

  v13 = v0[27];

  return MEMORY[0x1EEE6DFA0](sub_18FFF3570, v13, 0);
}

uint64_t sub_18FFF3570()
{
  sub_18FFF5908(v0[24], v0[25], v0[31]);

  return MEMORY[0x1EEE6DFA0](sub_18FFF35EC, 0, 0);
}

uint64_t sub_18FFF35EC()
{
  v1 = sub_1900B0E60();
  v2 = sub_1900B17D0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_18FFDC000, v1, v2, ">>>> awaiting payload value.", v3, 2u);
    MEMORY[0x193AE9010](v3, -1, -1);
  }

  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  v5 = type metadata accessor for ShortFormSmartActionResponse();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35058);
  *v4 = v0;
  v4[1] = sub_18FFF372C;
  v7 = *(v0 + 248);
  v8 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v0 + 64, v7, v5, v6, v8);
}

uint64_t sub_18FFF372C()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_18FFF3A30;
  }

  else
  {
    v2 = sub_18FFF3840;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18FFF3840()
{
  v1 = v0[27];
  v2 = v0[8];
  v0[35] = v2;
  v3 = v2;

  return MEMORY[0x1EEE6DFA0](sub_18FFF38B4, v1, 0);
}

uint64_t sub_18FFF38B4()
{
  v1 = v0[35];
  sub_18FFF5908(v0[24], v0[25], v1 | 0x8000000000000000);

  return MEMORY[0x1EEE6DFA0](sub_18FFF3940, 0, 0);
}

uint64_t sub_18FFF3940()
{

  v1 = *(v0 + 280);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_18FFF39BC()
{
  sub_18FFF8770(*(v0 + 224));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18FFF3A30()
{
  v13 = v0;
  v1 = *(v0 + 272);
  v2 = v1;
  v3 = sub_1900B0E60();
  v4 = sub_1900B17D0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_1900B19D0();
    v9 = sub_18FFF6090(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_18FFDC000, v3, v4, ">>>> error thrown. %s, removing requestTokenID from from taskCache.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x193AE9010](v6, -1, -1);
    MEMORY[0x193AE9010](v5, -1, -1);
  }

  v10 = *(v0 + 216);

  return MEMORY[0x1EEE6DFA0](sub_18FFF3B9C, v10, 0);
}

uint64_t sub_18FFF3B9C()
{
  sub_18FFF5BB8(*(v0 + 192), *(v0 + 200));

  return MEMORY[0x1EEE6DFA0](sub_18FFF3C14, 0, 0);
}

uint64_t sub_18FFF3C14()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18FFF3C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v13;
  *(v8 + 80) = v12;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a1;
  *(v8 + 40) = a4;
  v9 = sub_1900B0D00();
  *(v8 + 104) = v9;
  *(v8 + 112) = *(v9 - 8);
  *(v8 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18FFF3D78, 0, 0);
}

uint64_t sub_18FFF3D78()
{
  if (qword_1EAD34BC0 != -1)
  {
    swift_once();
  }

  v1 = sub_1900B0E80();
  *(v0 + 128) = __swift_project_value_buffer(v1, qword_1EAD37990);
  v2 = sub_1900B0E60();
  v3 = sub_1900B17D0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_18FFDC000, v2, v3, "performShortFormSmartResponseGeneration", v4, 2u);
    MEMORY[0x193AE9010](v4, -1, -1);
  }

  if (qword_1EAD34B50 != -1)
  {
    swift_once();
  }

  v5 = qword_1EAD37960;
  v6 = [*(v0 + 48) tiInputContextHistory];
  sub_190000634(v5, v6, 0);

  sub_1900B0CF0();
  v15 = (*MEMORY[0x1E69D92F0] + MEMORY[0x1E69D92F0]);
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *v7 = v0;
  v7[1] = sub_18FFF3F78;
  v8 = *(v0 + 120);
  v9 = *(v0 + 96);
  v10 = *(v0 + 64);
  v11 = *(v0 + 72);
  v12 = *(v0 + 56);
  v13 = *(v0 + 48);

  return v15(v13, 0, 0xE000000000000000, v12, v8, v10, v11, v9);
}

uint64_t sub_18FFF3F78(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *v3;
  v5[18] = a1;
  v5[19] = a2;
  v5[20] = v2;

  v7 = v5[15];
  v8 = v5[14];
  v9 = v5[13];
  if (v2)
  {
    (*(v8 + 8))(v7, v9);

    return MEMORY[0x1EEE6DFA0](sub_18FFF42F0, 0, 0);
  }

  else
  {
    (*(v8 + 8))(v7, v9);
    v10 = swift_task_alloc();
    v5[21] = v10;
    *v10 = v6;
    v10[1] = sub_18FFF4170;
    v11 = v5[12];
    v12 = v5[8];
    v13 = v5[9];
    v14 = v5[6];
    v15 = v5[7];

    return sub_18FFF474C(a1, v14, v15, v12, v13, v11);
  }
}

uint64_t sub_18FFF4170(uint64_t a1)
{
  v3 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_18FFF46E0, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[24] = v4;
    *v4 = v3;
    v4[1] = sub_18FFF4354;
    v5 = v3[19];
    v6 = v3[10];
    v7 = v3[11];
    v8 = v3[18];

    return sub_18FFF8BEC(v8, v5, v6, v7, 0);
  }
}

uint64_t sub_18FFF42F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18FFF4354(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {

    v5 = sub_18FFF466C;
  }

  else
  {
    *(v4 + 208) = a1;
    v5 = sub_18FFF4484;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_18FFF4484()
{
  receiver = v0[13].receiver;
  v2 = v0[11].receiver;
  v3 = v0[9].receiver;
  super_class = v0[9].super_class;
  v5 = [v0[3].receiver tiInputContextHistory];
  sub_1900008BC(v5, v3);

  v6 = type metadata accessor for ShortFormSmartActionResponse();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR___TUIShortFormSmartActionResponse_smartReply] = receiver;
  *&v7[OBJC_IVAR___TUIShortFormSmartActionResponse_smartPoll] = v2;
  *&v7[OBJC_IVAR___TUIShortFormSmartActionResponse_outputOptions] = super_class;
  v0[1].receiver = v7;
  v0[1].super_class = v6;
  v8 = receiver;
  v9 = v2;
  v10 = objc_msgSendSuper2(v0 + 1, sel_init);

  v11 = v10;
  v12 = sub_1900B0E60();
  v13 = sub_1900B17D0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_18FFDC000, v12, v13, "Created payload: %@", v14, 0xCu);
    sub_18FFEE584(v15, &qword_1EAD35060);
    MEMORY[0x193AE9010](v15, -1, -1);
    MEMORY[0x193AE9010](v14, -1, -1);
  }

  v17 = v0[2].receiver;

  *v17 = v11;

  v18 = v0->super_class;

  return v18();
}

uint64_t sub_18FFF466C()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_18FFF46E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18FFF474C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;

  return MEMORY[0x1EEE6DFA0](sub_18FFF47E8, 0, 0);
}

id sub_18FFF47E8()
{
  v2 = [(objc_class *)v0[2].super_class actionsResponse];
  if (!v2)
  {
    goto LABEL_38;
  }

  v3 = v2;
  v4 = [v2 responses];

  sub_18FFF85A8();
  v5 = sub_1900B16A0();

  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_37:

    goto LABEL_38;
  }

  if (!sub_1900B1940())
  {
    goto LABEL_37;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x193AE7440](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_49:
      swift_once();
      goto LABEL_15;
    }

    v6 = *(v5 + 32);
  }

  v1 = v6;
  v0[6].receiver = v6;

  v7 = [v1 actionType];
  v8 = sub_1900B1610();
  v10 = v9;
  if (v8 == sub_1900B1610() && v10 == v11)
  {
  }

  else
  {
    v13 = sub_1900B19A0();

    if ((v13 & 1) == 0)
    {

LABEL_38:
      if (qword_1EAD34CB0 != -1)
      {
        swift_once();
      }

      v61 = sub_1900B0E80();
      __swift_project_value_buffer(v61, qword_1EAD379A8);
      v62 = sub_1900B0E60();
      v63 = sub_1900B1790();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_18FFDC000, v62, v63, "Did not create a polls action, no valid object found.", v64, 2u);
        MEMORY[0x193AE9010](v64, -1, -1);
      }

      goto LABEL_43;
    }
  }

  if (qword_1EAD34D98 != -1)
  {
    goto LABEL_49;
  }

LABEL_15:
  v14 = qword_1EAD37A10;
  v15 = [v0[3].receiver tiInputContextHistory];
  sub_190000634(v14, v15, 0);

  if (([v1 requiresFollowUp] & 1) == 0)
  {
    v0[2].receiver = 0;
    v16 = [v1 extractFinalResult_];
    receiver = v0[2].receiver;
    if (v16)
    {
      v18 = v16;
      v19 = receiver;
      v20 = [v18 followUp];
      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      if (v21)
      {
        v22 = v21;
        v23 = sub_18FFEB50C(MEMORY[0x1E69E7CC0]);
        if (qword_1EAD34DA8 != -1)
        {
          swift_once();
        }

        v24 = qword_1EAD37A20;
        result = [v22 actionText];
        if (result)
        {
          v26 = result;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_18FFF7230(v26, v24, isUniquelyReferenced_nonNull_native);

          if (qword_1EAD34DB0 != -1)
          {
            swift_once();
          }

          v28 = qword_1EAD37A28;
          result = [v22 pollOptions];
          if (result)
          {
            v29 = result;
            v30 = swift_isUniquelyReferenced_nonNull_native();
            sub_18FFF7230(v29, v28, v30);

            if (qword_1EAD34DA0 != -1)
            {
              swift_once();
            }

            v31 = v0[6].receiver;
            v32 = qword_1EAD37A18;
            v33 = [v0[3].receiver tiInputContextHistory];
            sub_190000634(v32, v33, v23);

            v34 = [v22 actionText];
            v35 = sub_1900B1610();
            v37 = v36;

            v38 = [v22 pollOptions];
            v39 = sub_1900B16A0();

            v40 = type metadata accessor for SmartActionPollResponse();
            v41 = objc_allocWithZone(v40);
            v42 = &v41[OBJC_IVAR___TUISmartActionPollResponse_title];
            *v42 = v35;
            v42[1] = v37;
            *&v41[OBJC_IVAR___TUISmartActionPollResponse_options] = v39;
            v0[1].receiver = v41;
            v0[1].super_class = v40;
            v43 = objc_msgSendSuper2(v0 + 1, sel_init);

            swift_unknownObjectRelease();
            v44 = v43;
            goto LABEL_44;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return result;
      }

      swift_unknownObjectRelease();
      if (qword_1EAD34CB0 != -1)
      {
        swift_once();
      }

      v55 = sub_1900B0E80();
      __swift_project_value_buffer(v55, qword_1EAD379A8);
      v56 = sub_1900B0E60();
      v57 = sub_1900B17B0();
      v58 = os_log_type_enabled(v56, v57);
      v59 = v0[6].receiver;
      if (v58)
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_18FFDC000, v56, v57, "Could not create smart action poll payload due to lack of TCSmartActionFollowUpPoll", v60, 2u);
        MEMORY[0x193AE9010](v60, -1, -1);
      }

LABEL_43:
      v44 = 0;
LABEL_44:
      super_class = v0->super_class;

      return super_class(v44);
    }

    v45 = receiver;
    v46 = sub_1900B0B60();

    swift_willThrow();
  }

  v47 = MEMORY[0x1E69D92E8];
  v48 = *MEMORY[0x1E69D92E8];
  v49 = swift_task_alloc();
  v0[6].super_class = v49;
  *v49 = v0;
  *(v49 + 1) = sub_18FFF4F90;
  v50 = v0[4].super_class;
  v51 = v0[5].receiver;
  v52 = v0[3].super_class;
  v53 = v0[4].receiver;
  v54 = v0[3].receiver;

  return ((v48 + v47))(v1, v54, 0, 0xE000000000000000, v52, v53, v50, v51);
}

uint64_t sub_18FFF4F90(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_18FFF54F0;
  }

  else
  {

    *(v4 + 120) = a1;
    v5 = sub_18FFF50F4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

id sub_18FFF50F4()
{
  super_class = v0[7].super_class;
  v2 = [(objc_class *)super_class followUp];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
    if (qword_1EAD34CB0 != -1)
    {
      swift_once();
    }

    v26 = sub_1900B0E80();
    __swift_project_value_buffer(v26, qword_1EAD379A8);
    v27 = sub_1900B0E60();
    v28 = sub_1900B17B0();
    v29 = os_log_type_enabled(v27, v28);
    receiver = v0[6].receiver;
    if (v29)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_18FFDC000, v27, v28, "Could not create smart action poll payload due to lack of TCSmartActionFollowUpPoll", v31, 2u);
      MEMORY[0x193AE9010](v31, -1, -1);
    }

    v25 = 0;
    goto LABEL_16;
  }

  v4 = v3;
  v5 = sub_18FFEB50C(MEMORY[0x1E69E7CC0]);
  if (qword_1EAD34DA8 != -1)
  {
    swift_once();
  }

  v6 = qword_1EAD37A20;
  result = [v4 actionText];
  if (!result)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v8 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_18FFF7230(v8, v6, isUniquelyReferenced_nonNull_native);

  if (qword_1EAD34DB0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EAD37A28;
  result = [v4 pollOptions];
  if (!result)
  {
    goto LABEL_20;
  }

  v11 = result;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_18FFF7230(v11, v10, v12);

  if (qword_1EAD34DA0 != -1)
  {
    swift_once();
  }

  v13 = v0[6].receiver;
  v14 = qword_1EAD37A18;
  v15 = [v0[3].receiver tiInputContextHistory];
  sub_190000634(v14, v15, v5);

  v16 = [v4 actionText];
  v17 = sub_1900B1610();
  v19 = v18;

  v20 = [v4 pollOptions];
  v21 = sub_1900B16A0();

  v22 = type metadata accessor for SmartActionPollResponse();
  v23 = objc_allocWithZone(v22);
  v24 = &v23[OBJC_IVAR___TUISmartActionPollResponse_title];
  *v24 = v17;
  v24[1] = v19;
  *&v23[OBJC_IVAR___TUISmartActionPollResponse_options] = v21;
  v0[1].receiver = v23;
  v0[1].super_class = v22;
  v25 = objc_msgSendSuper2(v0 + 1, sel_init);

  swift_unknownObjectRelease();
LABEL_16:
  v32 = v0->super_class;

  return v32(v25);
}

uint64_t sub_18FFF54F0()
{
  v1 = *(v0 + 8);

  return v1();
}

void *ShortFormSmartActionResponse.smartReply.getter()
{
  v1 = *(v0 + OBJC_IVAR___TUIShortFormSmartActionResponse_smartReply);
  v2 = v1;
  return v1;
}

void *ShortFormSmartActionResponse.smartPoll.getter()
{
  v1 = *(v0 + OBJC_IVAR___TUIShortFormSmartActionResponse_smartPoll);
  v2 = v1;
  return v1;
}

id SmartActionPollResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_18FFF5880(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_18FFF5908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  if (*(*(v3 + 120) + 16))
  {

    sub_18FFF6638(a1, a2);
    v9 = v8;

    if (v9)
    {
      swift_beginAccess();

      sub_18FFEB8C0(a3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *(v3 + 120);
      *(v3 + 120) = 0x8000000000000000;
      sub_18FFF70B4(a3, a1, a2, isUniquelyReferenced_nonNull_native);

      *(v3 + 120) = v22;
      swift_endAccess();
      return sub_18FFF5D50(a1, a2);
    }

    if (*(*(v3 + 120) + 16) >= 8uLL)
    {
      result = swift_beginAccess();
      v12 = *(v3 + 128);
      if (!v12[2])
      {
        __break(1u);
        return result;
      }

      v13 = v12[4];
      v14 = v12[5];

      sub_18FFF773C(0, 1);
      swift_endAccess();
      swift_beginAccess();
      v15 = sub_18FFF6900(v13, v14);
      swift_endAccess();
      sub_18FFF8780(v15);
    }
  }

  swift_beginAccess();

  sub_18FFEB8C0(a3);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v4 + 120);
  *(v4 + 120) = 0x8000000000000000;
  sub_18FFF70B4(a3, a1, a2, v16);

  *(v4 + 120) = v23;
  swift_endAccess();
  swift_beginAccess();
  v17 = *(v4 + 128);

  v18 = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 128) = v17;
  if ((v18 & 1) == 0)
  {
    v17 = sub_18FFEE1AC(0, *(v17 + 2) + 1, 1, v17);
    *(v4 + 128) = v17;
  }

  v20 = *(v17 + 2);
  v19 = *(v17 + 3);
  if (v20 >= v19 >> 1)
  {
    v17 = sub_18FFEE1AC((v19 > 1), v20 + 1, 1, v17);
  }

  *(v17 + 2) = v20 + 1;
  v21 = &v17[16 * v20];
  *(v21 + 4) = a1;
  *(v21 + 5) = a2;
  *(v4 + 128) = v17;
  return swift_endAccess();
}

uint64_t sub_18FFF5BB8(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v6 = *(v2 + 128);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    for (i = (v6 + 40); *(i - 1) != a1 || *i != a2; i += 2)
    {
      result = sub_1900B19A0();
      if (result)
      {
        break;
      }

      if (v7 == ++v8)
      {
        return result;
      }
    }

    swift_beginAccess();
    v11 = sub_18FFF6900(a1, a2);
    swift_endAccess();
    sub_18FFF8780(v11);
    swift_beginAccess();
    sub_18FFF5CC4(v8);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_18FFF5CC4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_18FFF7668(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_18FFF5D50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = swift_beginAccess();
  v7 = *(v2 + 128);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    for (i = (v7 + 40); *(i - 1) != a1 || *i != a2; i += 2)
    {
      result = sub_1900B19A0();
      if (result)
      {
        break;
      }

      if (v8 == ++v9)
      {
        return result;
      }
    }

    swift_beginAccess();
    sub_18FFF5CC4(v9);

    v12 = *(v3 + 128);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 128) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_18FFEE1AC(0, *(v12 + 2) + 1, 1, v12);
      *(v3 + 128) = v12;
    }

    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    if (v15 >= v14 >> 1)
    {
      v12 = sub_18FFEE1AC((v14 > 1), v15 + 1, 1, v12);
    }

    *(v12 + 2) = v15 + 1;
    v16 = &v12[16 * v15];
    *(v16 + 4) = a1;
    *(v16 + 5) = a2;
    *(v3 + 128) = v12;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_18FFF5EA0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_18FFF5F98;

  return v6(a1);
}

uint64_t sub_18FFF5F98()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_18FFF6090(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_18FFF615C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_18FFF90F8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_18FFF615C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_18FFF6268(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1900B18C0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_18FFF6268(uint64_t a1, unint64_t a2)
{
  v3 = sub_18FFF62B4(a1, a2);
  sub_18FFF63E4(&unk_1F03B9088);
  return v3;
}

uint64_t sub_18FFF62B4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_18FFF64D0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1900B18C0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1900B1670();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_18FFF64D0(v10, 0);
        result = sub_1900B1890();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_18FFF63E4(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_18FFF6544(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_18FFF64D0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35068);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_18FFF6544(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35068);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_18FFF6638(uint64_t a1, uint64_t a2)
{
  sub_1900B1A00();
  sub_1900B1650();
  v4 = sub_1900B1A20();

  return sub_18FFF6744(a1, a2, v4);
}

unint64_t sub_18FFF66B0(uint64_t a1)
{
  sub_1900B1610();
  sub_1900B1A00();
  sub_1900B1650();
  v2 = sub_1900B1A20();

  return sub_18FFF67FC(a1, v2);
}

unint64_t sub_18FFF6744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1900B19A0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_18FFF67FC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1900B1610();
      v8 = v7;
      if (v6 == sub_1900B1610() && v8 == v9)
      {
        break;
      }

      v11 = sub_1900B19A0();

      if ((v11 & 1) == 0)
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

unint64_t sub_18FFF6900(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_18FFF6638(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0xF000000000000007;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_18FFF7398();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_18FFF6F04(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_18FFF6998(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34ED8);
  v34 = a2;
  result = sub_1900B1960();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {

        sub_18FFEB8C0(v24);
      }

      sub_1900B1A00();
      sub_1900B1650();
      result = sub_1900B1A20();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_18FFF6C40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34ED0);
  v36 = a2;
  result = sub_1900B1960();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v37 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v36 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      sub_1900B1610();
      sub_1900B1A00();
      sub_1900B1650();
      v25 = sub_1900B1A20();

      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v35;
      v12 = v37;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_18FFF6F04(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1900B1880() + 1) & ~v5;
    do
    {
      sub_1900B1A00();

      sub_1900B1650();
      v9 = sub_1900B1A20();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_18FFF70B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_18FFF6638(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_18FFF6998(v16, a4 & 1);
      v11 = sub_18FFF6638(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1900B19C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_18FFF7398();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    sub_18FFF8770(v23);
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

id sub_18FFF7230(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_18FFF66B0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_18FFF6C40(v13, a3 & 1);
      v8 = sub_18FFF66B0(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for IAPayloadKey(0);
        v8 = sub_1900B19C0();
        __break(1u);
        return MEMORY[0x1EEE66BB8](v8, v20);
      }
    }

    else
    {
      v16 = v8;
      sub_18FFF7508();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return MEMORY[0x1EEE66BB8](v8, v20);
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  return a2;
}

void *sub_18FFF7398()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34ED8);
  v2 = *v0;
  v3 = sub_1900B1950();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = sub_18FFEB8C0(v20);
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

id sub_18FFF7508()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34ED0);
  v2 = *v0;
  v3 = sub_1900B1950();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

unint64_t sub_18FFF767C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_18FFF773C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_18FFEE1AC(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_18FFF767C(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t _s11TextInputUI28TUITextComposerClientWrapperC13isGMAvailable7useCaseSbSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v3 = sub_1900B0DF0();
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1900B0D80();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  v29 = sub_1900B0DD0();
  v13 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1900B0DB0();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD34BB0 != -1)
  {
    v27 = v18;
    v28 = v17;
    swift_once();
    v18 = v27;
    v17 = v28;
  }

  if (byte_1EAD37978 == 1)
  {
    v27 = v18;
    v28 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34FF8);
    v21 = swift_allocObject();
    v26 = v3;
    *(v21 + 16) = xmmword_1900BF5E0;
    *(v21 + 32) = a1;
    v22 = v29;
    *(v21 + 40) = v30;
    (*(v13 + 104))(v15, *MEMORY[0x1E69A12B8], v22);

    sub_1900B0DA0();
    sub_1900B0DE0();
    sub_1900B0DC0();
    (*(v31 + 8))(v5, v26);
    (*(v7 + 104))(v10, *MEMORY[0x1E69A11A0], v6);
    v23 = sub_1900B0D70();
    v24 = *(v7 + 8);
    v24(v10, v6);
    v24(v12, v6);
    (*(v27 + 8))(v20, v28);
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_18FFF7BEC(uint64_t a1)
{
  v25[1] = a1;
  v1 = sub_1900B0DF0();
  v26 = *(v1 - 8);
  v27 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1900B0D80();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v25 - v9;
  v11 = sub_1900B0DD0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1900B0DB0();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD34BB0 != -1)
  {
    v25[0] = v17;
    swift_once();
    v17 = v25[0];
  }

  if (byte_1EAD37978 == 1)
  {
    v20 = *MEMORY[0x1E69A12B8];
    v21 = *(v12 + 104);
    v25[0] = v17;
    v21(v14, v20, v11);
    sub_1900B0DA0();
    sub_1900B0DE0();
    sub_1900B0DC0();
    (*(v26 + 8))(v3, v27);
    (*(v5 + 104))(v8, *MEMORY[0x1E69A11A0], v4);
    v22 = sub_1900B0D70();
    v23 = *(v5 + 8);
    v23(v8, v4);
    v23(v10, v4);
    (*(v16 + 8))(v19, v25[0]);
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_18FFF7FB0(uint64_t a1)
{
  v3 = *(sub_1900B0CE0() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v12 = v1[3];
  v13 = v1[2];
  v10 = v1[5];
  v11 = v1[4];
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = v5[1];
  v9 = *v5;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18FFEBD88;

  return sub_18FFF1984(a1, v13, v12, v11, v10, v1 + v4, v9, v6);
}

uint64_t sub_18FFF8140(uint64_t a1)
{
  sub_1900B0CE0();
  v10 = v1[3];
  v11 = v1[2];
  v8 = v1[5];
  v9 = v1[4];
  v6 = v1[7];
  v7 = v1[6];
  v3 = v1[8];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_18FFEB764;

  return sub_18FFF0ECC(a1, v11, v10, v9, v8, v7, v6, v3);
}

uint64_t sub_18FFF82D8(uint64_t a1)
{
  v3 = *(sub_1900B0CE0() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v11 = v1[3];
  v12 = v1[2];
  v9 = v1[5];
  v10 = v1[4];
  v8 = v1[6];
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_18FFEBD88;

  return sub_18FFF0390(a1, v12, v11, v10, v9, v8, v1 + v4, v5);
}

uint64_t sub_18FFF84C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_18FFF8524(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_18FFF85A8()
{
  result = qword_1EAD35050;
  if (!qword_1EAD35050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD35050);
  }

  return result;
}

uint64_t sub_18FFF85F4(uint64_t a1)
{
  v3 = *(sub_1900B0CE0() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v12 = v1[3];
  v13 = v1[2];
  v5 = v1[5];
  v11 = v1[4];
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_18FFEB764;

  return sub_18FFF3C9C(a1, v13, v12, v11, v5, v1 + v4, v7, v8);
}

void sub_18FFF8770(uint64_t a1)
{
  if (a1 < 0)
  {
  }

  else
  {
  }
}

void sub_18FFF8780(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    sub_18FFF8770(a1);
  }
}

uint64_t sub_18FFF8794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18FFF87BC, 0, 0);
}

uint64_t sub_18FFF87BC()
{
  if (qword_1EAD34BC0 != -1)
  {
    swift_once();
  }

  v1 = sub_1900B0E80();
  __swift_project_value_buffer(v1, qword_1EAD37990);
  v2 = sub_1900B0E60();
  v3 = sub_1900B17A0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_18FFDC000, v2, v3, "Determining if internal or external...", v4, 2u);
    MEMORY[0x193AE9010](v4, -1, -1);
  }

  v6 = v0[2];
  v5 = v0[3];

  if (v6 == 0xD000000000000013 && 0x80000001900C1810 == v5 || (sub_1900B19A0() & 1) != 0 || v0[2] == 0xD000000000000014 && 0x80000001900C1B60 == v5 || (sub_1900B19A0() & 1) != 0 || v0[2] == 0x6C7070612E6D6F63 && v0[3] == 0xEE006C69616D2E65 || (sub_1900B19A0() & 1) != 0)
  {
    v7 = v0[1];

    return v7(0, 0);
  }

  else
  {
    v9 = sub_1900B0E60();
    v10 = sub_1900B17A0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_18FFDC000, v9, v10, "performShortFormGeneration for external client", v11, 2u);
      MEMORY[0x193AE9010](v11, -1, -1);
    }

    v15 = (*MEMORY[0x1E69D9290] + MEMORY[0x1E69D9290]);
    v12 = swift_task_alloc();
    v0[7] = v12;
    *v12 = v0;
    v12[1] = sub_18FFF8AA8;
    v14 = v0[4];
    v13 = v0[5];

    return v15(v14, v13, 0);
  }
}

uint64_t sub_18FFF8AA8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;

  if (v2)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v9 = *(v6 + 8);

    return v9(a1, a2);
  }
}

uint64_t sub_18FFF8BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[28] = a4;
  v5[29] = a5;
  v5[26] = a2;
  v5[27] = a3;
  v5[25] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18FFF8C14, 0, 0);
}

uint64_t sub_18FFF8C14()
{
  v1 = [*(v0 + 200) repliesResponse];
  if (v1)
  {
    v2 = v1;
    v36 = *(v0 + 232);
    v33 = *(v0 + 224);
    v3 = *(v0 + 208);
    v31 = *(v0 + 216);
    v32 = sub_18FFFFED4(v3);
    v4 = sub_18FFF91B0(v3);
    v34 = v5;
    v35 = v4;
    v6 = sub_18FFF94D8(v3);
    v37 = v7;
    v38 = v6;
    v39 = sub_18FFF958C(v3);
    v40 = sub_18FFF9658(v3);
    v41 = sub_18FFF9664(v3);
    v42 = type metadata accessor for TUISmartReplyResponse();
    v8 = objc_allocWithZone(v42);
    v9 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse;
    *&v8[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse] = 0;
    v10 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error;
    *&v8[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error] = 0;
    v11 = &v8[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelInfoString];
    *v11 = 0;
    v11[1] = 0;
    v12 = &v8[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_userFeedbackInputString];
    *v12 = 0;
    v12[1] = 0;
    v13 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache;
    *&v8[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache] = 0;
    v14 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount;
    *&v8[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount] = 0;
    v15 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount;
    *&v8[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount] = 0;
    swift_beginAccess();
    *&v8[v9] = v2;
    swift_beginAccess();
    *&v8[v10] = 0;
    v16 = &v8[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_threadIdentifier];
    *v16 = v31;
    *(v16 + 1) = v33;
    *&v8[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_type] = v36;
    *&v8[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_contentWarning] = v32;
    swift_beginAccess();
    *v11 = v35;
    v11[1] = v34;
    swift_beginAccess();
    *v12 = v38;
    v12[1] = v37;
    v17 = v2;

    swift_beginAccess();
    v18 = *&v8[v13];
    *&v8[v13] = v39;
    v19 = v39;

    swift_beginAccess();
    v20 = *&v8[v14];
    *&v8[v14] = v40;
    v21 = v40;

    swift_beginAccess();
    v22 = *&v8[v15];
    *&v8[v15] = v41;
    v23 = v41;

    *(v0 + 184) = v8;
    *(v0 + 192) = v42;
    v24 = objc_msgSendSuper2((v0 + 184), sel_init);
  }

  else
  {
    if (qword_1EAD34CB0 != -1)
    {
      swift_once();
    }

    v25 = sub_1900B0E80();
    __swift_project_value_buffer(v25, qword_1EAD379A8);
    v26 = sub_1900B0E60();
    v27 = sub_1900B1790();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_18FFDC000, v26, v27, "Did not create a smart reply action, no valid object found.", v28, 2u);
      MEMORY[0x193AE9010](v28, -1, -1);
    }

    v24 = 0;
  }

  v29 = *(v0 + 8);

  return v29(v24);
}

uint64_t sub_18FFF8FD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34E28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18FFF9040(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18FFEBD88;

  return sub_18FFF5EA0(a1, v4);
}

uint64_t sub_18FFF90F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_18FFF9154()
{
  result = qword_1EAD34B70;
  if (!qword_1EAD34B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD34B70);
  }

  return result;
}

uint64_t sub_18FFF91B0(uint64_t a1)
{
  v2 = sub_1900B1610();
  if (!*(a1 + 16))
  {

    goto LABEL_6;
  }

  v4 = sub_18FFF6638(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0 || (sub_18FFF90F8(*(a1 + 56) + 32 * v4, v29), !swift_dynamicCast()))
  {
LABEL_6:
    v28 = 0;
    v7 = sub_1900B1610();
    if (*(a1 + 16))
    {
      v9 = sub_18FFF6638(v7, v8);
      v11 = v10;

      if ((v11 & 1) == 0 || (sub_18FFF90F8(*(a1 + 56) + 32 * v9, v29), (swift_dynamicCast() & 1) == 0))
      {
LABEL_11:
        MEMORY[0x193AE71F0](58, 0xE100000000000000);
        v12 = sub_1900B1610();
        if (*(a1 + 16))
        {
          v14 = sub_18FFF6638(v12, v13);
          v16 = v15;

          if ((v16 & 1) == 0 || (sub_18FFF90F8(*(a1 + 56) + 32 * v14, v29), (swift_dynamicCast() & 1) == 0))
          {
LABEL_16:
            MEMORY[0x193AE71F0](124, 0xE100000000000000);
            v17 = sub_1900B1610();
            if (*(a1 + 16))
            {
              v19 = sub_18FFF6638(v17, v18);
              v21 = v20;

              if ((v21 & 1) == 0 || (sub_18FFF90F8(*(a1 + 56) + 32 * v19, v29), (swift_dynamicCast() & 1) == 0))
              {
LABEL_21:
                MEMORY[0x193AE71F0](58, 0xE100000000000000);
                v22 = sub_1900B1610();
                if (*(a1 + 16))
                {
                  v24 = sub_18FFF6638(v22, v23);
                  v26 = v25;

                  if ((v26 & 1) == 0)
                  {
                    return v28;
                  }

                  sub_18FFF90F8(*(a1 + 56) + 32 * v24, v29);
                  if ((swift_dynamicCast() & 1) == 0)
                  {
                    return v28;
                  }

                  MEMORY[0x193AE71F0]();
                }

                return v28;
              }

              MEMORY[0x193AE71F0]();
            }

            goto LABEL_21;
          }

          MEMORY[0x193AE71F0]();
        }

        goto LABEL_16;
      }

      MEMORY[0x193AE71F0]();
    }

    goto LABEL_11;
  }

  return v28;
}

uint64_t sub_18FFF94D8(uint64_t a1)
{
  v2 = sub_1900B1610();
  if (*(a1 + 16))
  {
    v4 = sub_18FFF6638(v2, v3);
    v6 = v5;

    if (v6)
    {
      sub_18FFF90F8(*(a1 + 56) + 32 * v4, v9);
      if (swift_dynamicCast())
      {
        return v8;
      }
    }
  }

  else
  {
  }

  return 0;
}

id sub_18FFF958C(uint64_t a1)
{
  v2 = sub_1900B1610();
  if (*(a1 + 16))
  {
    v4 = sub_18FFF6638(v2, v3);
    v6 = v5;

    if (v6)
    {
      sub_18FFF90F8(*(a1 + 56) + 32 * v4, v9);
      if (swift_dynamicCast())
      {
        return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_18FFF9670(uint64_t a1)
{
  v2 = sub_1900B1610();
  if (!*(a1 + 16))
  {

    return 0;
  }

  v4 = sub_18FFF6638(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  sub_18FFF90F8(*(a1 + 56) + 32 * v4, v9);
  sub_18FFF9720();
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_18FFF9720()
{
  result = qword_1EAD34B40;
  if (!qword_1EAD34B40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD34B40);
  }

  return result;
}

uint64_t sub_18FFF976C(uint64_t a1)
{
  v2 = sub_1900B1610();
  if (!*(a1 + 16))
  {

    return 0;
  }

  v4 = sub_18FFF6638(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  sub_18FFF90F8(*(a1 + 56) + 32 * v4, v9);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18FFF98AC()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_18FFF98DC()
{
  sub_18FFF98AC();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_18FFF9978()
{
  v0 = sub_1900B0B40();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1900B0B00();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v18[-v7];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v18[-v10];
  MEMORY[0x1EEE9AC00](v9);
  type metadata accessor for GenmojiButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = sub_1900B15E0();
  v15 = [v13 localizedStringInDeviceLanguageForKey_];

  sub_1900B1610();
  sub_1900B0B30();
  sub_1900B0B10();
  sub_1900B0AE0();
  sub_1900B0AF0();
  v16 = *(v2 + 8);
  v16(v5, v1);
  v16(v8, v1);
  sub_18FFF9C1C(v8);
  sub_1900B0AF0();
  v16(v8, v1);
  v16(v11, v1);
  return sub_1900B1350();
}

uint64_t sub_18FFF9C1C@<X0>(uint64_t a1@<X8>)
{
  v32[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35138);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v35 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v34 = v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35140);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v33 = v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35148);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35150);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35158);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v32 - v14;
  v16 = sub_1900B1330();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1900B0B40();
  MEMORY[0x1EEE9AC00](v20 - 8);
  type metadata accessor for GenmojiButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  v23 = sub_1900B15E0();
  v24 = [v22 localizedStringInDeviceLanguageForKey_];

  sub_1900B1610();
  sub_1900B0B30();
  sub_1900B0B10();
  v36 = sub_1900B13E0();
  sub_18FFFC1B4();
  sub_1900B0B20();
  sub_1900B12A0();
  v25 = sub_1900B12D0();
  (*(*(v25 - 8) + 56))(v15, 0, 1, v25);
  sub_1900B12E0();
  v26 = sub_1900B12F0();
  (*(*(v26 - 8) + 56))(v12, 0, 1, v26);
  sub_1900B1300();
  v27 = sub_1900B1310();
  (*(*(v27 - 8) + 56))(v9, 0, 1, v27);
  v28 = v33;
  sub_1900B12A0();
  v29 = sub_1900B12B0();
  (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
  sub_1900B13D0();
  sub_1900B1320();
  v30 = v34;
  (*(v17 + 16))(v34, v19, v16);
  (*(v17 + 56))(v30, 0, 1, v16);
  sub_18FFFC208(v30, v35);
  sub_18FFFC278();
  sub_1900B0B20();
  sub_18FFEE584(v30, &qword_1EAD35138);
  return (*(v17 + 8))(v19, v16);
}

uint64_t sub_18FFFA1CC()
{
  v0 = sub_1900B15E0();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  return MEMORY[0x1EEDE43C0](0x696A6F6D6E6547, 0xE700000000000000, v1);
}

uint64_t sub_18FFFA264()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35128);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - v2;
  v4 = sub_1900B0F20();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35130);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  sub_1900B0F30();
  v12 = MEMORY[0x1E6982B20];
  MEMORY[0x193AE6A80](v7, v4, MEMORY[0x1E6982B20]);
  (*(v5 + 8))(v7, v4);
  v16 = v4;
  v17 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x193AE6AA0](v11, v8, OpaqueTypeConformance2);
  v16 = v8;
  v17 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v14 = sub_1900B0F00();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  return v14;
}

uint64_t sub_18FFFA508@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_18FFFBF8C();
  result = MEMORY[0x193AE6A30](a1, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_18FFFA548(char a1)
{
  *(v1 + 16) = a1;
  swift_getKeyPath();
  sub_18FFFC2EC(&qword_1EAD34BA0, type metadata accessor for TipView.ViewModel);
  sub_1900B0BF0();

  if ((*(v1 + 16) & 1) == 0)
  {
    swift_getKeyPath();
    sub_1900B0BF0();

    v3 = *(v1 + 24);
    if (v3)
    {

      v3(v4);
      return sub_18FFFC3E4(v3);
    }
  }

  return result;
}

uint64_t sub_18FFFA654()
{
  swift_getKeyPath();
  sub_18FFFC2EC(&qword_1EAD34BA0, type metadata accessor for TipView.ViewModel);
  sub_1900B0BF0();

  return *(v0 + 16);
}

uint64_t sub_18FFFA6F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18FFFC2EC(&qword_1EAD34BA0, type metadata accessor for TipView.ViewModel);
  sub_1900B0BF0();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_18FFFA79C(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    v3 = a1 & 1;

    return sub_18FFFA548(v3);
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_18FFFC2EC(&qword_1EAD34BA0, type metadata accessor for TipView.ViewModel);
    sub_1900B0BE0();
  }
}

uint64_t sub_18FFFA8D0()
{
  swift_getKeyPath();
  sub_18FFFC2EC(&qword_1EAD34BA0, type metadata accessor for TipView.ViewModel);
  sub_1900B0BF0();

  v1 = *(v0 + 24);
  sub_18FFE84DC(v1);
  return v1;
}

uint64_t sub_18FFFA984@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18FFFC2EC(&qword_1EAD34BA0, type metadata accessor for TipView.ViewModel);
  sub_1900B0BF0();

  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_18FFEE7C4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_18FFE84DC(v4);
}

uint64_t sub_18FFFAA70(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_18FFFC440;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_18FFE84DC(v1);
  sub_18FFFC2EC(&qword_1EAD34BA0, type metadata accessor for TipView.ViewModel);
  sub_1900B0BE0();
  sub_18FFFC3E4(v4);
}

uint64_t sub_18FFFABCC()
{
  sub_18FFFC3E4(v0[3]);
  v1 = OBJC_IVAR____TtCV11TextInputUIP33_C90572265959E209E1BF186B5F2EDED57TipView9ViewModel___observationRegistrar;
  v2 = sub_1900B0C30();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t type metadata accessor for TipView.ViewModel()
{
  result = qword_1EAD34B90;
  if (!qword_1EAD34B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18FFFACC4()
{
  result = sub_1900B0C30();
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

uint64_t sub_18FFFAD78@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34E40);
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - v6;
  v51 = 0;
  v52 = 1;
  v47 = a1;
  v48 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35110);
  sub_1900B1450();

  v49 = &type metadata for GenmojiTip;
  v50 = sub_18FFFBF8C();
  v42 = a1;
  v43 = a2;
  sub_1900B1470();
  v8 = v44;
  v9 = v45;
  v10 = v46;
  swift_getKeyPath();
  v44 = v8;
  v45 = v9;
  v46 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35118);
  sub_1900B14C0();

  v11 = sub_1900B1190();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v14 = sub_1900B1490();
  (*(v12 + 104))(v14, *MEMORY[0x1E697C8C0], v11);
  v38 = v7;
  sub_1900B1360();

  (*(v12 + 8))(v14, v11);
  sub_18FFEE584(&v47, &qword_1EAD35120);
  sub_1900B16D0();

  v15 = sub_1900B16C0();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = a1;
  v16[5] = a2;
  v18 = sub_1900B1700();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v34 - v21;
  sub_1900B16E0();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v36 = sub_1900B1080();
    v37 = &v34;
    v35 = *(v36 - 8);
    MEMORY[0x1EEE9AC00](v36);
    v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_1900B18A0();

    v47 = 0xD000000000000030;
    v48 = 0x80000001900C1FE0;
    v44 = 79;
    v25 = sub_1900B1990();
    MEMORY[0x193AE71F0](v25);

    MEMORY[0x1EEE9AC00](v26);
    (*(v19 + 16))(&v34 - v21, v22, v18);
    sub_1900B1070();
    (*(v19 + 8))(v22, v18);
    v27 = v41;
    (*(v39 + 32))(v41, v38, v40);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34E48);
    return (*(v35 + 32))(v27 + *(v28 + 36), v24, v36);
  }

  else
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34E50);
    v31 = v41;
    v32 = (v41 + *(v30 + 36));
    v33 = sub_1900B1060();
    (*(v19 + 32))(&v32[*(v33 + 20)], &v34 - v21, v18);
    *v32 = &unk_1900C00F8;
    *(v32 + 1) = v16;
    return (*(v39 + 32))(v31, v38, v40);
  }
}

uint64_t sub_18FFFB390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  sub_1900B16D0();
  v4[7] = sub_1900B16C0();
  v6 = sub_1900B16B0();

  return MEMORY[0x1EEE6DFA0](sub_18FFFB428, v6, v5);
}

uint64_t sub_18FFFB428()
{

  sub_1900B0F40();
  v2 = v0[5];
  v1 = v0[6];
  v0[2] = v2;
  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35110);
  sub_1900B1450();

  sub_18FFFBF8C();
  sub_1900B0EC0();
  v0[2] = v2;
  v0[3] = v1;
  sub_1900B1450();

  sub_1900B0EB0();
  v3 = v0[1];

  return v3();
}

void sub_18FFFB5BC()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1900B1240();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OBJC_IVAR___TUIGenmojiTipView_viewModel;
  type metadata accessor for TipView.ViewModel();
  v3 = swift_allocObject();
  *(v3 + 16) = 1;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  _s11TextInputUI31DefaultKeyboardSettingsProviderC22__observationRegistrar33_DA9299E8CEE167062A5E24FB32D1EB0511Observation0rI0Vvpfi_0();
  *&v0[v2] = v3;
  swift_getKeyPath();
  v43 = v3;
  sub_18FFFC2EC(&qword_1EAD34BA0, type metadata accessor for TipView.ViewModel);

  sub_1900B0BE0();

  v42 = *&v0[v2];

  sub_1900B1440();
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35160));
  v43 = v3;
  v5 = sub_1900B1170();
  *&v0[OBJC_IVAR___TUIGenmojiTipView_hostingController] = v5;
  v41.receiver = v0;
  v41.super_class = ObjectType;
  v6 = v5;
  v7 = objc_msgSendSuper2(&v41, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v8 = [v6 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = v8;
  v10 = [objc_opt_self() clearColor];
  [v9 setBackgroundColor_];

  v11 = [v6 view];
  if (!v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = v11;
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35168);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1900BF5E0;
  v14 = v6;
  sub_1900B1230();
  v43 = v13;
  sub_18FFFC2EC(&qword_1EAD34C28, MEMORY[0x1E697CC60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35170);
  sub_18FFFC334();
  sub_1900B1870();
  sub_1900B1150();

  v15 = v7;
  v16 = [v14 view];
  if (!v16)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = v16;
  [v15 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34EF8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1900BFEF0;
  v19 = [v14 view];
  if (!v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = v19;
  v21 = [v19 topAnchor];

  v22 = [v15 topAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v18 + 32) = v23;
  v24 = [v14 view];
  if (!v24)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v25 = v24;
  v26 = [v24 bottomAnchor];

  v27 = [v15 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v18 + 40) = v28;
  v29 = [v14 view];
  if (!v29)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v30 = v29;
  v31 = [v29 leadingAnchor];

  v32 = [v15 leadingAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v18 + 48) = v33;
  v34 = [v14 view];

  if (v34)
  {
    v35 = [v34 trailingAnchor];

    v36 = [v15 trailingAnchor];
    v37 = [v35 constraintEqualToAnchor_];

    *(v18 + 56) = v37;
    v38 = objc_opt_self();
    sub_18FFFC398();
    v39 = sub_1900B1690();

    [v38 activateConstraints_];

    return;
  }

LABEL_15:
  __break(1u);
}

id sub_18FFFBDB4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_18FFFBE68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_18FFFBEB0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_18FFFBF1C()
{
  result = qword_1EAD34BC8;
  if (!qword_1EAD34BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD34BC8);
  }

  return result;
}

unint64_t sub_18FFFBF8C()
{
  result = qword_1EAD34BD0;
  if (!qword_1EAD34BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD34BD0);
  }

  return result;
}

uint64_t sub_18FFFBFE4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_18FFEB764;

  return sub_18FFFB390(v2, v3, v5, v4);
}

uint64_t sub_18FFFC090()
{
  type metadata accessor for GenmojiButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1900B15E0();
  v3 = [v1 localizedStringInDeviceLanguageForKey_];

  sub_1900B1610();
  sub_1900B1180();
  v4 = sub_1900B1340();

  return v4;
}

unint64_t sub_18FFFC1B4()
{
  result = qword_1EAD34BD8;
  if (!qword_1EAD34BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD34BD8);
  }

  return result;
}

uint64_t sub_18FFFC208(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35138);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_18FFFC278()
{
  result = qword_1EAD34BE0;
  if (!qword_1EAD34BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD34BE0);
  }

  return result;
}

uint64_t sub_18FFFC2EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_18FFFC334()
{
  result = qword_1EAD34C08;
  if (!qword_1EAD34C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD35170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD34C08);
  }

  return result;
}

unint64_t sub_18FFFC398()
{
  result = qword_1EAD34BF0;
  if (!qword_1EAD34BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD34BF0);
  }

  return result;
}

uint64_t sub_18FFFC3E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_18FFFC3F4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 24);
  *(v2 + 24) = v1;
  *(v2 + 32) = v3;
  sub_18FFE84DC(v1);
  return sub_18FFFC3E4(v4);
}

uint64_t DefaultKeyboardSettingsProvider.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DefaultKeyboardSettingsProvider.localizedTitle.getter()
{
  swift_getKeyPath();
  sub_18FFFE080(&qword_1EAD35180, type metadata accessor for DefaultKeyboardSettingsProvider);
  sub_1900B0BF0();

  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_18FFFC5AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18FFFE080(&qword_1EAD35180, type metadata accessor for DefaultKeyboardSettingsProvider);
  sub_1900B0BF0();

  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t DefaultKeyboardSettingsProvider.localizedTitle.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (sub_1900B19A0() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_18FFFE080(&qword_1EAD35180, type metadata accessor for DefaultKeyboardSettingsProvider);
    sub_1900B0BE0();
  }
}

uint64_t sub_18FFFC7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
}

void (*DefaultKeyboardSettingsProvider.localizedTitle.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC11TextInputUI31DefaultKeyboardSettingsProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_18FFFE080(&qword_1EAD35180, type metadata accessor for DefaultKeyboardSettingsProvider);
  sub_1900B0BF0();

  *v4 = v1;
  swift_getKeyPath();
  sub_1900B0C10();

  swift_beginAccess();
  return sub_18FFFC9AC;
}

uint64_t DefaultKeyboardSettingsProvider.localizedDetail.getter()
{
  swift_getKeyPath();
  sub_18FFFE080(&qword_1EAD35180, type metadata accessor for DefaultKeyboardSettingsProvider);
  sub_1900B0BF0();

  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_18FFFCA7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18FFFE080(&qword_1EAD35180, type metadata accessor for DefaultKeyboardSettingsProvider);
  sub_1900B0BF0();

  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t DefaultKeyboardSettingsProvider.localizedDetail.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 48) == a1 && v5 == a2;
      if (v6 || (sub_1900B19A0() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  swift_getKeyPath();
  MEMORY[0x1EEE9AC00]();
  sub_18FFFE080(&qword_1EAD35180, type metadata accessor for DefaultKeyboardSettingsProvider);
  sub_1900B0BE0();
}

uint64_t sub_18FFFCCA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
}

void (*DefaultKeyboardSettingsProvider.localizedDetail.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC11TextInputUI31DefaultKeyboardSettingsProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_18FFFE080(&qword_1EAD35180, type metadata accessor for DefaultKeyboardSettingsProvider);
  sub_1900B0BF0();

  *v4 = v1;
  swift_getKeyPath();
  sub_1900B0C10();

  swift_beginAccess();
  return sub_18FFFCE6C;
}

void sub_18FFFCE78(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_1900B0C00();

  free(v1);
}

id sub_18FFFCEFC()
{
  swift_getKeyPath();
  sub_18FFFE080(&qword_1EAD35180, type metadata accessor for DefaultKeyboardSettingsProvider);
  sub_1900B0BF0();

  v1 = *(v0 + 72);

  return v1;
}

id sub_18FFFCFAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_18FFFE080(&qword_1EAD35180, type metadata accessor for DefaultKeyboardSettingsProvider);
  sub_1900B0BF0();

  v4 = *(v3 + 72);
  *a2 = v4;

  return v4;
}

void sub_18FFFD064(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 72);
  sub_18FFEB8D0(0, &qword_1EAD35188);
  v5 = v4;
  v6 = sub_1900B1830();

  if (v6)
  {
    v7 = *(v2 + 72);
    *(v2 + 72) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x1EEE9AC00]();
    sub_18FFFE080(&qword_1EAD35180, type metadata accessor for DefaultKeyboardSettingsProvider);
    sub_1900B0BE0();
  }
}

uint64_t DefaultKeyboardSettingsProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  DefaultKeyboardSettingsProvider.init()();
  return v0;
}

void DefaultKeyboardSettingsProvider.init()()
{
  v1 = sub_1900B0BD0();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1900B15D0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v0[2] = 0xD000000000000023;
  v0[3] = 0x80000001900C1830;
  sub_1900B15C0();
  sub_1900B0B90();
  v0[6] = sub_1900B1620();
  v0[7] = v3;
  _s11TextInputUI31DefaultKeyboardSettingsProviderC22__observationRegistrar33_DA9299E8CEE167062A5E24FB32D1EB0511Observation0rI0Vvpfi_0();
  v4 = [objc_allocWithZone(MEMORY[0x1E69C5710]) init];
  v5 = [objc_allocWithZone(MEMORY[0x1E69C5748]) init];
  [v4 setSpecifier_];

  v6 = [v4 specifier];
  if (!v6)
  {
    __break(1u);
    goto LABEL_19;
  }

  v7 = v6;
  v8 = sub_1900B15E0();
  [v7 setProperty:v8 forKey:*MEMORY[0x1E69C5918]];

  v9 = sub_1900B15E0();
  v10 = v4;
  v11 = TextInputUIBundle();
  v12 = [v10 loadSpecifiersFromPlistName:v9 target:v10 bundle:v11];

  if (!v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (![v12 firstObject])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1900B1860();
  swift_unknownObjectRelease();
  sub_18FFEB980(&v24, v26);
  sub_18FFEB8D0(0, &qword_1EAD35188);
  swift_dynamicCast();
  v13 = [v22 target];
  if (!v13)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v0[8] = v13;
  v14 = [v22 name];
  if (!v14)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = sub_1900B1610();
  v18 = v17;

  v0[4] = v16;
  v0[5] = v18;
  if ([v22 performGetter])
  {
    sub_1900B1860();
    swift_unknownObjectRelease();
  }

  else
  {

    v24 = 0u;
    v25 = 0u;
  }

  v26[0] = v24;
  v26[1] = v25;
  if (*(&v25 + 1))
  {
    v19 = swift_dynamicCast();
    if (v19)
    {
      v20 = v22;
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v21 = v23;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    sub_18FFEE584(v26, qword_1EAD35078);
    v20 = 0;
    v21 = 0;
  }

  v0[6] = v20;
  v0[7] = v21;
  v0[9] = v22;
}

uint64_t DefaultKeyboardSettingsProvider.content.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35190);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v13 - v3);
  swift_getKeyPath();
  v14 = v0;
  sub_18FFFE080(&qword_1EAD35180, type metadata accessor for DefaultKeyboardSettingsProvider);
  sub_1900B0BF0();

  v5 = *(v0 + 72);
  v6 = *(type metadata accessor for DefaultKeyboards(0) + 20);
  *(v4 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35198);
  swift_storeEnumTagMultiPayload();
  *v4 = v5;
  v7 = (v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD351A0) + 36));
  *v7 = 0;
  v7[1] = 0;
  v7[2] = sub_18FFFDF30;
  v7[3] = v1;
  v8 = v5;

  v9 = sub_1900B10B0();
  v10 = sub_1900B1260();
  v11 = v4 + *(v2 + 36);
  *v11 = v9;
  v11[8] = v10;
  sub_1900B0FF0();
  sub_18FFFDF38();
  sub_18FFFE080(&qword_1EAD351C0, MEMORY[0x1E697BDD8]);
  sub_1900B13C0();
  return sub_18FFEE584(v4, &qword_1EAD35190);
}

uint64_t sub_18FFFD858(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18FFFD890(uint64_t a1)
{
  swift_getKeyPath();
  *&v11[0] = a1;
  sub_18FFFE080(&qword_1EAD35180, type metadata accessor for DefaultKeyboardSettingsProvider);
  sub_1900B0BF0();

  if ([*(a1 + 72) performGetter])
  {
    sub_1900B1860();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v2 = swift_dynamicCast();
    v3 = v2 == 0;
    if (v2)
    {
      v4 = v7;
    }

    else
    {
      v4 = 0;
    }

    if (v3)
    {
      v5 = 0;
    }

    else
    {
      v5 = v8;
    }
  }

  else
  {
    sub_18FFEE584(v11, qword_1EAD35078);
    v4 = 0;
    v5 = 0;
  }

  return DefaultKeyboardSettingsProvider.localizedDetail.setter(v4, v5);
}

uint64_t DefaultKeyboardSettingsProvider.deinit()
{

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC11TextInputUI31DefaultKeyboardSettingsProvider___observationRegistrar;
  v2 = sub_1900B0C30();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DefaultKeyboardSettingsProvider.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC11TextInputUI31DefaultKeyboardSettingsProvider___observationRegistrar;
  v2 = sub_1900B0C30();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_18FFFDB28()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_18FFFDB60()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_18FFFE080(&qword_1EAD35180, type metadata accessor for DefaultKeyboardSettingsProvider);
  sub_1900B0BF0();

  swift_beginAccess();
  v2 = *(v1 + 32);

  return v2;
}

uint64_t sub_18FFFDC24()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_18FFFE080(&qword_1EAD35180, type metadata accessor for DefaultKeyboardSettingsProvider);
  sub_1900B0BF0();

  swift_beginAccess();
  v2 = *(v1 + 48);

  return v2;
}

void sub_18FFFDD10(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  DefaultKeyboardSettingsProvider.init()();
  *a1 = v2;
}

uint64_t sub_18FFFDD54@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

id sub_18FFFDD64()
{
  v1 = *v0;
  if ([*v0 detailControllerClass] && (swift_getObjCClassMetadata(), sub_18FFEB8D0(0, &qword_1EAD35218), swift_dynamicCastMetatype()))
  {
    v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v2 setSpecifier_];
    return v2;
  }

  else
  {
    result = [v1 propertyForKey_];
    if (result)
    {
      sub_1900B1860();
      swift_unknownObjectRelease();
      sub_18FFEB980(&v5, &v6);
      sub_18FFEB8D0(0, &qword_1EAD35218);
      swift_dynamicCast();
      return v4;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_18FFFDE88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35200);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_18FFEB918(a1, &v5 - v3, &qword_1EAD35200);
  return sub_1900B10F0();
}

unint64_t sub_18FFFDF38()
{
  result = qword_1EAD351A8;
  if (!qword_1EAD351A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD35190);
    sub_18FFFDFC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD351A8);
  }

  return result;
}

unint64_t sub_18FFFDFC4()
{
  result = qword_1EAD351B0;
  if (!qword_1EAD351B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD351A0);
    sub_18FFFE080(&qword_1EAD351B8, type metadata accessor for DefaultKeyboards);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD351B0);
  }

  return result;
}

uint64_t sub_18FFFE080(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18FFFE134()
{
  result = sub_1900B0C30();
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

void sub_18FFFE214()
{
  sub_18FFEB8D0(319, &qword_1EAD35188);
  if (v0 <= 0x3F)
  {
    sub_18FFFE2A8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18FFFE2A8()
{
  if (!qword_1EAD351F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD35200);
    v0 = sub_1900B1020();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD351F8);
    }
  }
}

uint64_t sub_18FFFE354(void *a1)
{
  v27 = a1;
  v1 = sub_1900B14E0();
  v25 = *(v1 - 8);
  v26 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1900B1130();
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35198);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35200);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35210);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  v17 = type metadata accessor for DefaultKeyboards(0);
  sub_18FFEB918(v28 + *(v17 + 20), v9, &qword_1EAD35198);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_18FFFE918(v9, v12, &qword_1EAD35200);
  }

  else
  {
    sub_1900B17C0();
    v18 = sub_1900B1250();
    sub_1900B0E50();

    sub_1900B1120();
    swift_getAtKeyPath();

    (*(v23 + 8))(v6, v24);
  }

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v19 = &qword_1EAD35200;
    v20 = v12;
  }

  else
  {
    sub_18FFFE918(v12, v16, &qword_1EAD35210);
    MEMORY[0x193AE7040](v13);
    v21 = sub_1900B14D0();
    (*(v25 + 8))(v3, v26);
    [v27 setEditing:v21 & 1 animated:1];
    v20 = v16;
    v19 = &qword_1EAD35210;
  }

  return sub_18FFEE584(v20, v19);
}

uint64_t sub_18FFFE798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18FFFE080(&qword_1EAD35208, type metadata accessor for DefaultKeyboards);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_18FFFE82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18FFFE080(&qword_1EAD35208, type metadata accessor for DefaultKeyboards);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_18FFFE8C0()
{
  sub_18FFFE080(&qword_1EAD35208, type metadata accessor for DefaultKeyboards);
  sub_1900B1200();
  __break(1u);
}

uint64_t sub_18FFFE918(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_18FFFE980()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 72);
  *(v1 + 72) = v2;
  v4 = v2;
}

void *TUISmartReplyResponse.srResponse.getter()
{
  v1 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TUISmartReplyResponse.srResponse.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *TUISmartReplyResponse.error.getter()
{
  v1 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TUISmartReplyResponse.error.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t TUISmartReplyResponse.threadIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_threadIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t TUISmartReplyResponse.threadIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_threadIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t TUISmartReplyResponse.type.getter()
{
  v1 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_type;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TUISmartReplyResponse.type.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_type;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t TUISmartReplyResponse.contentWarning.getter()
{
  v1 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_contentWarning;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TUISmartReplyResponse.contentWarning.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_contentWarning;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_18FFFF22C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = sub_1900B15E0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_18FFFF2C0(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_18FFFF320(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1900B1610();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_18FFFF3A8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

void *TUISmartReplyResponse.responseFromCache.getter()
{
  v1 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TUISmartReplyResponse.responseFromCache.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *TUISmartReplyResponse.modelPromptTokenCount.getter()
{
  v1 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TUISmartReplyResponse.modelPromptTokenCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *TUISmartReplyResponse.modelOutputTokenCount.getter()
{
  v1 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_18FFFF7C0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void TUISmartReplyResponse.modelOutputTokenCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_18FFFF9EC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34F08);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1900BF5E0;
    v5 = v3;
    sub_1900B18A0();
    MEMORY[0x193AE71F0](0xD000000000000021, 0x80000001900C2540);
    v6 = [v5 description];
    v7 = sub_1900B1610();
    v9 = v8;

    MEMORY[0x193AE71F0](v7, v9);

    MEMORY[0x193AE71F0](0xD000000000000012, 0x80000001900C2570);
    swift_beginAccess();
    type metadata accessor for TUISmartReplyContentWarningType(0);
    sub_1900B1920();
    *(v4 + 56) = MEMORY[0x1E69E6158];
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    sub_1900B19E0();
  }

  else
  {
    v10 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error;
    swift_beginAccess();
    v11 = *(v1 + v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD34F08);
    if (v11)
    {
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1900BF5E0;
      v13 = v11;
      sub_1900B18A0();

      v14 = [v13 description];
      v15 = sub_1900B1610();
      v17 = v16;

      MEMORY[0x193AE71F0](v15, v17);

      *(v12 + 56) = MEMORY[0x1E69E6158];
      *(v12 + 32) = 0xD00000000000001ELL;
      *(v12 + 40) = 0x80000001900C2520;
      sub_1900B19E0();
    }

    else
    {
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1900BF5E0;
      *(v18 + 56) = MEMORY[0x1E69E6158];
      *(v18 + 32) = 0xD00000000000001BLL;
      *(v18 + 40) = 0x80000001900C2500;
      sub_1900B19E0();
    }
  }
}

id TUISmartReplyResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TUISmartReplyResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18FFFFED4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_18FFF6638(0x57746E65746E6F43, 0xEE00676E696E7261);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_18FFF90F8(*(a1 + 56) + 32 * v2, v6);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (v5 >= 3)
  {
    return -1;
  }

  return v5;
}

id sub_18FFFFF78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13)
{
  v16 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse;
  *&v13[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse] = 0;
  v17 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error;
  *&v13[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error] = 0;
  v18 = &v13[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelInfoString];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v13[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_userFeedbackInputString];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache;
  *&v13[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache] = 0;
  v21 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount;
  *&v13[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount] = 0;
  v22 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount;
  *&v13[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount] = 0;
  swift_beginAccess();
  *&v13[v16] = a1;
  swift_beginAccess();
  *&v13[v17] = a6;
  v23 = &v13[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_threadIdentifier];
  *v23 = a2;
  *(v23 + 1) = a3;
  *&v13[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_type] = a4;
  *&v13[OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_contentWarning] = a5;
  swift_beginAccess();
  *v18 = a7;
  *(v18 + 1) = a8;
  swift_beginAccess();
  *v19 = a9;
  *(v19 + 1) = a10;
  v24 = a1;
  v25 = a6;

  swift_beginAccess();
  v26 = *&v13[v20];
  *&v13[v20] = a11;
  v27 = a11;

  swift_beginAccess();
  v28 = *&v13[v21];
  *&v13[v21] = a12;
  v29 = a12;

  swift_beginAccess();
  v30 = *&v13[v22];
  *&v13[v22] = a13;
  v31 = a13;

  v39.receiver = v13;
  v39.super_class = type metadata accessor for TUISmartReplyResponse();
  return objc_msgSendSuper2(&v39, sel_init);
}

uint64_t sub_19000019C()
{
  result = sub_1900B15E0();
  qword_1EAD37960 = result;
  return result;
}

uint64_t sub_1900001D4()
{
  result = sub_1900B15E0();
  qword_1EAD37968 = result;
  return result;
}

uint64_t sub_19000020C()
{
  result = sub_1900B15E0();
  qword_1EAD37A10 = result;
  return result;
}

uint64_t sub_190000244()
{
  result = sub_1900B15E0();
  qword_1EAD37A18 = result;
  return result;
}

uint64_t sub_19000027C()
{
  result = sub_1900B15E0();
  qword_1EAD37958 = result;
  return result;
}

uint64_t sub_1900002B4()
{
  result = sub_1900B15E0();
  qword_1EAD37970 = result;
  return result;
}

uint64_t sub_1900002E8()
{
  result = sub_1900B15E0();
  qword_1EAD37A20 = result;
  return result;
}

uint64_t sub_190000328()
{
  result = sub_1900B15E0();
  qword_1EAD37A28 = result;
  return result;
}

uint64_t sub_190000360()
{
  result = sub_1900B15E0();
  qword_1EAD37A30 = result;
  return result;
}

uint64_t sub_1900003A0()
{
  result = sub_1900B15E0();
  qword_1EAD37A38 = result;
  return result;
}

uint64_t sub_1900003D8()
{
  result = sub_1900B15E0();
  qword_1EAD37A40 = result;
  return result;
}

uint64_t sub_190000410()
{
  result = sub_1900B15E0();
  qword_1EAD37A48 = result;
  return result;
}

uint64_t sub_190000450()
{
  result = sub_1900B15E0();
  qword_1EAD37A50 = result;
  return result;
}

uint64_t sub_19000048C()
{
  result = sub_1900B15E0();
  qword_1EAD37A58 = result;
  return result;
}

uint64_t sub_1900004CC()
{
  result = sub_1900B15E0();
  qword_1EAD37A60 = result;
  return result;
}

uint64_t sub_190000504()
{
  result = sub_1900B15E0();
  qword_1EAD37A68 = result;
  return result;
}

uint64_t sub_19000053C()
{
  result = sub_1900B15E0();
  qword_1EAD37A70 = result;
  return result;
}

uint64_t sub_190000574()
{
  result = sub_1900B15E0();
  qword_1EAD37A78 = result;
  return result;
}

uint64_t sub_1900005B4()
{
  v0 = sub_1900B0E80();
  __swift_allocate_value_buffer(v0, qword_1EAD37A80);
  __swift_project_value_buffer(v0, qword_1EAD37A80);
  return sub_1900B0E70();
}

void sub_190000634(uint64_t a1, void *a2, void *a3)
{
  if (!a2)
  {
    if (qword_1EAD34E08 != -1)
    {
      swift_once();
    }

    v13 = sub_1900B0E80();
    __swift_project_value_buffer(v13, qword_1EAD37A80);
    v16 = sub_1900B0E60();
    v14 = sub_1900B17B0();
    if (os_log_type_enabled(v16, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_18FFDC000, v16, v14, "tiInputContextHistory was nil", v15, 2u);
      MEMORY[0x193AE9010](v15, -1, -1);
    }

    goto LABEL_13;
  }

  v16 = a2;
  v5 = [v16 threadIdentifier];
  v6 = [v16 recipientIdentifiers];
  if (v6)
  {

    v7 = [v16 recipientIdentifiers];
    if (!v7)
    {

      __break(1u);
      return;
    }

    v8 = v7;
    v9 = sub_1900B1770();

    v10 = *(v9 + 16);

    if (v10 > 1)
    {
      v11 = *MEMORY[0x1E69A8C40];
      if (a3)
      {
        type metadata accessor for IAPayloadKey(0);
        sub_18FFEB8D0(0, &qword_1EAD35270);
        sub_190000864();
        a3 = sub_1900B1590();
      }

      [objc_opt_self() sendSignal:a1 toChannel:v11 withNullableUniqueStringID:v5 withPayload:a3];

LABEL_13:
      v12 = v16;
      goto LABEL_14;
    }
  }

  v12 = v5;
LABEL_14:
}

unint64_t sub_190000864()
{
  result = qword_1EAD34F78;
  if (!qword_1EAD34F78)
  {
    type metadata accessor for IAPayloadKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD34F78);
  }

  return result;
}

void sub_1900008BC(void *a1, id a2)
{
  v4 = [a2 actionsResponse];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 responses];

    sub_18FFEB8D0(0, &qword_1EAD35050);
    v7 = sub_1900B16A0();

    if (!(v7 >> 62))
    {
      goto LABEL_3;
    }

LABEL_98:
    v8 = sub_1900B1940();
    v101 = a2;
    v102 = a1;
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_99:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD35278);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1900BF5E0;
    if (qword_1EAD34B68 != -1)
    {
      swift_once();
    }

    v70 = qword_1EAD37970;
    *(inited + 32) = qword_1EAD37970;
    type metadata accessor for IAPayloadValue(0);
    v71 = v70;
    *(inited + 40) = sub_1900B1690();
    v72 = sub_18FFEB50C(inited);
    swift_setDeallocating();
    sub_190001624(inited + 32);
    v73 = [v101 actionsResponse];
    if (v73)
    {
      v74 = v73;
      v75 = [v73 options];

      v76 = sub_1900B15A0();
      v77 = *MEMORY[0x1E69A8C58];
      sub_18FFF91B0(v76);
      v78 = sub_1900B15E0();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_18FFF7230(v78, v77, isUniquelyReferenced_nonNull_native);

      v80 = v72;
      v81 = *MEMORY[0x1E69A8C80];
      sub_18FFF94D8(v76);
      v82 = sub_1900B15E0();

      v83 = swift_isUniquelyReferenced_nonNull_native();
      sub_18FFF7230(v82, v81, v83);

      v84 = *MEMORY[0x1E69A8C78];
      v85 = sub_18FFF958C(v76);
      if (!v85)
      {
        sub_18FFEB8D0(0, &qword_1EAD34B40);
        v85 = sub_1900B1820();
      }

      v86 = v85;

      v87 = swift_isUniquelyReferenced_nonNull_native();
      sub_18FFF7230(v86, v84, v87);

      v72 = v80;
      sub_18FFF976C(v76);
      if (v88)
      {
        v89 = *MEMORY[0x1E69A8C60];
        v90 = sub_1900B15E0();

        v91 = swift_isUniquelyReferenced_nonNull_native();
        sub_18FFF7230(v90, v89, v91);
      }

      v92 = v102;
      v93 = sub_18FFF9658(v76);
      if (v93)
      {
        v94 = v93;
        v95 = *MEMORY[0x1E69A8C68];
        v96 = swift_isUniquelyReferenced_nonNull_native();
        sub_18FFF7230(v94, v95, v96);
      }

      v97 = sub_18FFF9664(v76);

      if (v97)
      {
        v98 = *MEMORY[0x1E69A8C88];
        v99 = swift_isUniquelyReferenced_nonNull_native();
        sub_18FFF7230(v97, v98, v99);
      }
    }

    else
    {

      v92 = v102;
    }

    if (qword_1EAD34B58 != -1)
    {
      swift_once();
    }

    sub_190000634(qword_1EAD37968, v92, v72);

    return;
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_98;
  }

LABEL_3:
  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v101 = a2;
  v102 = a1;
  if (!v8)
  {
    goto LABEL_99;
  }

LABEL_4:
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = v7 & 0xC000000000000001;
    v11 = MEMORY[0x1E69E7CC0];
    v103 = v7;
    v100 = *MEMORY[0x1E69D93D8];
    while (1)
    {
      if (v10)
      {
        v12 = MEMORY[0x193AE7440](v9, v7);
      }

      else
      {
        v12 = *(v7 + 8 * v9 + 32);
      }

      v13 = v12;
      v14 = [v12 actionType];
      v15 = sub_1900B1610();
      v17 = v16;
      if (v15 == sub_1900B1610() && v17 == v18)
      {
      }

      else
      {
        v20 = v8;
        v21 = v10;
        v22 = sub_1900B19A0();

        if ((v22 & 1) == 0)
        {
          v24 = sub_1900B1610();
          v26 = v25;
          if (v24 == sub_1900B1610() && v26 == v27)
          {

            goto LABEL_25;
          }

          v28 = sub_1900B19A0();

          if (v28)
          {

LABEL_25:
            v10 = v21;
            if (qword_1EAD34DC8 != -1)
            {
              swift_once();
            }

            v29 = qword_1EAD37A40;
            goto LABEL_28;
          }

          v33 = sub_1900B1610();
          v35 = v34;
          if (v33 == sub_1900B1610() && v35 == v36)
          {
          }

          else
          {
            v37 = sub_1900B19A0();

            if ((v37 & 1) == 0)
            {
              v38 = sub_1900B1610();
              v40 = v39;
              if (v38 == sub_1900B1610() && v40 == v41)
              {
              }

              else
              {
                v42 = sub_1900B19A0();

                if ((v42 & 1) == 0)
                {
                  v43 = sub_1900B1610();
                  v45 = v44;
                  if (v43 == sub_1900B1610() && v45 == v46)
                  {
                  }

                  else
                  {
                    v47 = sub_1900B19A0();

                    if ((v47 & 1) == 0)
                    {
                      v48 = sub_1900B1610();
                      v50 = v49;
                      if (v48 == sub_1900B1610() && v50 == v51)
                      {
                      }

                      else
                      {
                        v52 = sub_1900B19A0();

                        if ((v52 & 1) == 0)
                        {
                          v53 = sub_1900B1610();
                          v55 = v54;
                          if (v53 == sub_1900B1610() && v55 == v56)
                          {
                          }

                          else
                          {
                            v57 = sub_1900B19A0();

                            if ((v57 & 1) == 0)
                            {
                              v58 = sub_1900B1610();
                              v60 = v59;
                              if (v58 == sub_1900B1610() && v60 == v61)
                              {
                              }

                              else
                              {
                                v62 = sub_1900B19A0();

                                if ((v62 & 1) == 0)
                                {
                                  v63 = sub_1900B1610();
                                  v65 = v64;
                                  if (v63 == sub_1900B1610() && v65 == v66)
                                  {

                                    v10 = v21;
                                  }

                                  else
                                  {
                                    v67 = sub_1900B19A0();

                                    v10 = v21;
                                    if ((v67 & 1) == 0)
                                    {
                                      if (qword_1EAD34DB8 != -1)
                                      {
                                        swift_once();
                                      }

                                      v23 = qword_1EAD37A30;
                                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                                      {
                                        v11 = sub_18FFEE3EC(0, v11[2] + 1, 1, v11);
                                      }

                                      v31 = v11[2];
                                      v68 = v11[3];
                                      v32 = v31 + 1;
                                      if (v31 >= v68 >> 1)
                                      {
                                        v11 = sub_18FFEE3EC((v68 > 1), v31 + 1, 1, v11);
                                      }

                                      v10 = v21;
                                      v8 = v20;
                                      v7 = v103;
                                      goto LABEL_33;
                                    }
                                  }

                                  if (qword_1EAD34E00 != -1)
                                  {
                                    swift_once();
                                  }

                                  v29 = qword_1EAD37A78;
                                  goto LABEL_28;
                                }
                              }

                              v10 = v21;
                              if (qword_1EAD34DF8 != -1)
                              {
                                swift_once();
                              }

                              v29 = qword_1EAD37A70;
LABEL_28:
                              v23 = v29;
                              v8 = v20;
                              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                              {
                                v11 = sub_18FFEE3EC(0, v11[2] + 1, 1, v11);
                              }

                              v7 = v103;
                              goto LABEL_31;
                            }
                          }

                          v10 = v21;
                          if (qword_1EAD34DF0 != -1)
                          {
                            swift_once();
                          }

                          v29 = qword_1EAD37A68;
                          goto LABEL_28;
                        }
                      }

                      v10 = v21;
                      if (qword_1EAD34DE8 != -1)
                      {
                        swift_once();
                      }

                      v29 = qword_1EAD37A60;
                      goto LABEL_28;
                    }
                  }

                  v10 = v21;
                  if (qword_1EAD34DE0 != -1)
                  {
                    swift_once();
                  }

                  v29 = qword_1EAD37A58;
                  goto LABEL_28;
                }
              }

              v10 = v21;
              if (qword_1EAD34DD8 != -1)
              {
                swift_once();
              }

              v29 = qword_1EAD37A50;
              goto LABEL_28;
            }
          }

          v10 = v21;
          if (qword_1EAD34DD0 != -1)
          {
            swift_once();
          }

          v29 = qword_1EAD37A48;
          goto LABEL_28;
        }

        v10 = v21;
        v8 = v20;
        v7 = v103;
      }

      if (qword_1EAD34DC0 != -1)
      {
        swift_once();
      }

      v23 = qword_1EAD37A38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_18FFEE3EC(0, v11[2] + 1, 1, v11);
      }

LABEL_31:
      v31 = v11[2];
      v30 = v11[3];
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        v11 = sub_18FFEE3EC((v30 > 1), v31 + 1, 1, v11);
      }

LABEL_33:
      ++v9;

      v11[2] = v32;
      v11[v31 + 4] = v23;
      if (v8 == v9)
      {
        goto LABEL_99;
      }
    }
  }

  __break(1u);
}