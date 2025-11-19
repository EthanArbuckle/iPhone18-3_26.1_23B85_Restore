id SRSLog()
{
  if (SRSLog_onceToken[0] != -1)
  {
    SRSLog_cold_1();
  }

  v1 = SRSLog_log;

  return v1;
}

uint64_t __SRSLog_block_invoke()
{
  SRSLog_log = os_log_create("com.apple.siri.setup", "SiriSetup");

  return MEMORY[0x2821F96F8]();
}

uint64_t SetupSchemaProvisionalSiriSetupContextReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = objc_alloc_init(SetupSchemaProvisionalSiriSetupStep);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !SetupSchemaProvisionalSiriSetupStepReadFrom(v14, a2))
        {
LABEL_34:

          return 0;
        }

        PBReaderRecallMark();
        [a1 setStep:v14];
        goto LABEL_29;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(SetupSchemaProvisionalSiriSetupStarted);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !SetupSchemaProvisionalSiriSetupStartedReadFrom(v14, a2))
        {
          goto LABEL_34;
        }

        PBReaderRecallMark();
        [a1 setStarted:v14];
LABEL_29:

        goto LABEL_31;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_31:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(SetupSchemaProvisionalSiriSetupEnded);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !SetupSchemaProvisionalSiriSetupEndedReadFrom(v14, a2))
    {
      goto LABEL_34;
    }

    PBReaderRecallMark();
    [a1 setEnded:v14];
    goto LABEL_29;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SetupSchemaProvisionalSiriSetupStartedReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_31;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_31:
      [a1 setExists:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t SetupSchemaProvisionalSiriSetupEndedReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v29 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v29 & 0x7F) << v6;
      if ((v29 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      while (1)
      {
        v31 = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v31 & 0x7F) << v21;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v12 = v22++ >= 9;
        if (v12)
        {
          v27 = 0;
          goto LABEL_43;
        }
      }

      v27 = (v23 != 0) & ~[a2 hasError];
LABEL_43:
      [a1 setSiriEnabled:v27];
    }

    else if ((v13 >> 3) == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v30 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v30 & 0x7F) << v14;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_41;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_41:
      [a1 setDismissed:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t SetupSchemaProvisionalSiriSetupStepReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v22 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v22 & 0x7F) << v6;
      if ((v22 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      while (1)
      {
        v23 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v23 & 0x7F) << v14;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v12 = v15++ >= 9;
        if (v12)
        {
          v20 = 0;
          goto LABEL_33;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_33:
      [a1 setPage:v20];
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t SetupSchemaProvisionalSiriSetupEventReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 100)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(SetupSchemaProvisionalSiriSetupEventMetadata);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !SetupSchemaProvisionalSiriSetupEventMetadataReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setEventMetadata:v13];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(SetupSchemaProvisionalSiriSetupContext);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !SetupSchemaProvisionalSiriSetupContextReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setSiriSetupContext:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SetupSchemaProvisionalSiriSetupEventMetadataReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(MEMORY[0x277D5AC78]);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SISchemaUUIDReadFrom())
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setSetupId:v13];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_269008414()
{
  v1 = *&v0[OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_voiceOptionsView];
  v2 = *&v0[OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_currentVoiceSelection];
  v3 = *(v1 + OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_selectedVoice);
  *(v1 + OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_selectedVoice) = v2;
  v4 = v2;

  v5 = *&v0[OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_primaryAction];
  if (v5)
  {
    v6 = v5;
    v7 = [v0 actions];
    sub_26900A408(0, &qword_2802F33F8, 0x277D432F0);
    v8 = sub_2690579D4();

    v14 = v6;
    MEMORY[0x28223BE20]();
    v13[2] = &v14;
    LOBYTE(v7) = sub_26904DF88(sub_269009D3C, v13, v8);

    if ((v7 & 1) == 0)
    {
      v9 = OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_secondaryAction;
      if (*&v0[OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_secondaryAction])
      {
        [v0 removeAction_];
      }

      v10 = *&v0[v9];
      if (v10)
      {
        v11 = v10;
        v12 = [v0 addAction_];
      }
    }
  }
}

char *sub_2690085B8(__int128 *a1)
{
  v3 = a1[11];
  v86 = a1[10];
  v87 = v3;
  v88 = a1[12];
  v4 = a1[7];
  v82 = a1[6];
  v83 = v4;
  v5 = a1[9];
  v84 = a1[8];
  v85 = v5;
  v6 = a1[3];
  v78 = a1[2];
  v79 = v6;
  v7 = a1[5];
  v80 = a1[4];
  v81 = v7;
  v8 = a1[1];
  v76 = *a1;
  v77 = v8;
  *&v1[OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_orbView] = 0;
  *&v1[OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_currentVoiceSelection] = 0;
  v9 = OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_voiceOptionsView;
  *&v1[v9] = [objc_allocWithZone(type metadata accessor for VoiceOptionsView()) init];
  *&v1[OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_voiceSelectionPresenter] = 0;
  *&v1[OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_primaryAction] = 0;
  *&v1[OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_secondaryAction] = 0;
  v10 = &v1[OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_viewModel];
  *(v10 + 3) = &type metadata for ViewModel;
  *(v10 + 4) = &off_2879A7790;
  v11 = swift_allocObject();
  *v10 = v11;
  v12 = a1[11];
  v11[11] = a1[10];
  v11[12] = v12;
  v11[13] = a1[12];
  v13 = a1[7];
  v11[7] = a1[6];
  v11[8] = v13;
  v14 = a1[9];
  v11[9] = a1[8];
  v11[10] = v14;
  v15 = a1[3];
  v11[3] = a1[2];
  v11[4] = v15;
  v16 = a1[5];
  v11[5] = a1[4];
  v11[6] = v16;
  v17 = a1[1];
  v11[1] = *a1;
  v11[2] = v17;
  v18 = objc_allocWithZone(MEMORY[0x277D43320]);
  sub_269009E3C(&v76, v75);
  v19 = [v18 initWithCardStyle_];
  v74.receiver = v1;
  v74.super_class = type metadata accessor for VoiceSelectionProxCardController();
  v73 = v19;
  v20 = objc_msgSendSuper2(&v74, sel_initWithContentView_, v19);
  v21 = sub_269057944();
  [v20 setTitle_];

  v22 = sub_269057944();
  v23 = [objc_opt_self() systemImageNamed_];

  v24 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  v25 = v24;
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  [v25 setContentMode_];
  [v19 addSubview_];
  v26 = [objc_allocWithZone(MEMORY[0x277D61A40]) init];
  v27 = [objc_allocWithZone(MEMORY[0x277D61A88]) init];
  v28 = OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_voiceOptionsView;
  v29 = *&v20[OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_voiceOptionsView];
  v30 = objc_allocWithZone(MEMORY[0x277D61A90]);
  v31 = v20;
  v32 = v27;
  v33 = v29;
  v34 = v26;
  v35 = sub_269057944();

  v36 = [v30 initWithDataManaging:v32 view:v33 delegate:v31 voicePreviewing:v34 recognitionLanguage:v35];

  v72 = v34;
  v37 = *&v31[OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_voiceSelectionPresenter];
  *&v31[OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_voiceSelectionPresenter] = v36;

  v38 = *(*&v20[v28] + OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_tableView);
  [v38 setAlwaysBounceVertical_];
  v39 = v38;
  [v39 setTranslatesAutoresizingMaskIntoConstraints_];
  [v73 addSubview_];
  v40 = [v73 mainContentGuide];
  v71 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3400, &unk_26905AB40);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_269059D20;
  v42 = [v25 topAnchor];
  v43 = [v40 &selRef_setLayoutMargins_];
  v44 = [v42 constraintGreaterThanOrEqualToAnchor_];

  *(v41 + 32) = v44;
  v45 = [v25 centerXAnchor];
  v46 = [v40 centerXAnchor];
  v47 = [v45 constraintEqualToAnchor_];

  *(v41 + 40) = v47;
  v48 = [v25 heightAnchor];
  v49 = [v48 constraintEqualToConstant_];

  *(v41 + 48) = v49;
  v50 = [v39 topAnchor];
  v51 = [v25 bottomAnchor];

  v52 = [v50 constraintEqualToAnchor_];
  *(v41 + 56) = v52;
  v53 = [v39 centerXAnchor];
  v54 = [v40 centerXAnchor];
  v55 = [v53 constraintEqualToAnchor_];

  *(v41 + 64) = v55;
  v56 = [v39 heightAnchor];
  [v39 sizeThatFits_];
  v58 = [v56 constraintEqualToConstant_];

  *(v41 + 72) = v58;
  v59 = [v39 leadingAnchor];
  v60 = [v40 leadingAnchor];
  v61 = [v59 constraintEqualToAnchor:v60 constant:-10.0];

  *(v41 + 80) = v61;
  v62 = [v39 trailingAnchor];
  v63 = [v40 trailingAnchor];
  v64 = [v62 constraintEqualToAnchor:v63 constant:10.0];

  *(v41 + 88) = v64;
  v65 = [v39 bottomAnchor];

  v66 = [v40 bottomAnchor];
  v67 = [v65 constraintEqualToAnchor:v66 constant:35.0];

  *(v41 + 96) = v67;
  sub_26900A408(0, &qword_2802F3408, 0x277CCAAD0);
  v68 = sub_2690579C4();

  [v71 activateConstraints_];

  [v31 setDismissalType_];
  v75[10] = v86;
  v75[11] = v87;
  v75[12] = v88;
  v75[6] = v82;
  v75[7] = v83;
  v75[8] = v84;
  v75[9] = v85;
  v75[2] = v78;
  v75[3] = v79;
  v75[4] = v80;
  v75[5] = v81;
  v75[0] = v76;
  v75[1] = v77;
  sub_269009280(v75);
  v69 = sub_269009EE0(&v76);
  if (BYTE10(v87) == 1)
  {
    sub_269008E38(v69);
  }

  return v31;
}

void sub_269008E38()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v2 = sub_269057944();
  v4[4] = sub_26900A618;
  v4[5] = v1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_26900BEF0;
  v4[3] = &block_descriptor_59;
  v3 = _Block_copy(v4);

  [v0 setAuxiliaryButtonWithSymbolName:v2 handler:v3];
  _Block_release(v3);
}

void sub_269008F60()
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
      v13 = 0xD000000000000012;
      v14 = 0x800000026905BDA0;
      if (("backButtonTapped()" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v12[0] = 32;
        v12[1] = 0xE100000000000000;
        MEMORY[0x26D62FBC0](0xD000000000000019, 0x800000026905BDC0);
        MEMORY[0x26D62FBC0](32, 0xE100000000000000);

        v4 = v13;
        v3 = v14;
      }

      v7 = sub_269057764();
      if (os_log_type_enabled(v7, v6))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v12[0] = v9;
        *v8 = 136315138;
        v10 = sub_269010108(v4, v3, v12);

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
        v11 = *(v2 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_page);

        sub_26900EFCC();

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_2690091BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      swift_beginAccess();
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        v4 = *(v3 + OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_currentVoiceSelection);
        v5 = v3;
        v6 = v4;
      }

      else
      {
        v4 = 0;
      }

      sub_269031B84(v4);
      swift_unknownObjectRelease();
    }
  }
}

void sub_269009280(void *a1)
{
  v2 = a1[10];
  v24 = a1[9];
  v3 = a1[15];
  v4 = a1[16];
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v6 = v1;
  v7 = sub_269057944();
  v29 = sub_269009F6C;
  v30 = v5;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_26904BBEC;
  v28 = &block_descriptor;
  v8 = _Block_copy(&aBlock);
  v9 = objc_opt_self();
  v10 = [v9 actionWithTitle:v7 style:0 handler:v8];

  _Block_release(v8);

  [v6 setDismissButtonAction_];

  if (v4)
  {
    sub_26900A408(0, &unk_2802F3410, 0x277D43308);
    v11 = sub_2690542F4();
    v12 = swift_allocObject();
    *(v12 + 16) = v6;
    v13 = v6;
    v14 = sub_269057944();
    v29 = sub_269009FB0;
    v30 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_26904BBEC;
    v28 = &block_descriptor_46;
    v15 = _Block_copy(&aBlock);
    v16 = [v9 actionWithTitle:v14 customColors:v11 handler:v15];

    _Block_release(v15);

    v17 = *&v13[OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_primaryAction];
    *&v13[OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_primaryAction] = v16;
  }

  if (v2)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v6;
    v19 = v6;
    v20 = sub_269057944();
    v29 = sub_269009F8C;
    v30 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_26904BBEC;
    v28 = &block_descriptor_40;
    v21 = _Block_copy(&aBlock);
    v22 = [v9 actionWithTitle:v20 style:1 handler:v21];

    _Block_release(v21);

    v23 = *&v19[OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_secondaryAction];
    *&v19[OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_secondaryAction] = v22;
  }
}

uint64_t sub_2690095D8()
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
    if (("dismissButtonTapped()" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v12[0] = 32;
      v12[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD00000000000001CLL, 0x800000026905BD60);
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
      v10 = *(v1 + OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_page);

      sub_26900E964(v11);

      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_26900982C(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_currentVoiceSelection;
  if (*(a2 + OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_currentVoiceSelection))
  {
    [*(a2 + OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_voiceSelectionPresenter) stopVoicePreview];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(a2 + v2);
      v5 = v4;
      sub_269031B84(v4);

      swift_unknownObjectRelease();
    }
  }
}

id sub_269009900()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceSelectionProxCardController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_269009AFC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_269009B0C(void *a1)
{
  v3 = OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_viewModel;
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
      sub_269008E38();
    }
  }

  sub_269009C7C(a1, &v14);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  sub_269009D24(&v14, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_269009C7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_269009D24(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_269009D3C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_26900A408(0, &qword_2802F33F8, 0x277D432F0);
  return sub_269057BA4() & 1;
}

uint64_t sub_269009DA4()
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_269009F34()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_269009FB8()
{
  v1 = v0;
  v29 = sub_269057874();
  v32 = *(v29 - 8);
  v2 = *(v32 + 64);
  (MEMORY[0x28223BE20])();
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2690578A4();
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = *(v30 + 64);
  (MEMORY[0x28223BE20])();
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2690578C4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v16 = OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_voiceSelectionPresenter;
  [*(v1 + OBJC_IVAR____TtC9SiriSetup32VoiceSelectionProxCardController_voiceSelectionPresenter) stopVoicePreview];
  v17 = *(v1 + v16);
  if (v17)
  {
    [v17 setBypassPreviewForRandomSelection_];
    v18 = *(v1 + v16);
    if (v18)
    {
      v37 = nullsub_1;
      v38 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v34 = 1107296256;
      v35 = sub_2690133A0;
      v36 = &block_descriptor_49;
      v19 = _Block_copy(&aBlock);
      v20 = v18;
      [v20 selectRandomVoiceWithCompletion_];
      _Block_release(v19);
    }
  }

  sub_26900A408(0, &qword_2802F3E00, 0x277D85C78);
  v21 = sub_269057B34();
  sub_2690578B4();
  sub_269057904();
  v27 = *(v9 + 8);
  v27(v13, v8);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = sub_26900A488;
  v38 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_26900BEF0;
  v36 = &block_descriptor_55;
  v23 = _Block_copy(&aBlock);

  sub_269057884();
  aBlock = MEMORY[0x277D84F90];
  sub_26900A490();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F3E10, &unk_269059E90);
  sub_26900A4E8();
  v25 = v28;
  v24 = v29;
  sub_269057C14();
  MEMORY[0x26D62FD40](v15, v7, v25, v23);
  _Block_release(v23);

  (*(v32 + 8))(v25, v24);
  (*(v30 + 8))(v7, v31);
  return (v27)(v15, v8);
}

uint64_t sub_26900A408(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_26900A450()
{
  MEMORY[0x26D630A50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_26900A490()
{
  result = qword_2802F3420;
  if (!qword_2802F3420)
  {
    sub_269057874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F3420);
  }

  return result;
}

unint64_t sub_26900A4E8()
{
  result = qword_2802F3430;
  if (!qword_2802F3430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2802F3E10, &unk_269059E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F3430);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_26900A670(uint64_t a1, unint64_t *a2)
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

char *sub_26900A6F4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *&v6[OBJC_IVAR____TtC9SiriSetup18EducationPresenter_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = &v6[OBJC_IVAR____TtC9SiriSetup18EducationPresenter_presentingViewController];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v6[OBJC_IVAR____TtC9SiriSetup18EducationPresenter_dataSource];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v6[OBJC_IVAR____TtC9SiriSetup18EducationPresenter_dataSourceWriter];
  *v13 = a3;
  *(v13 + 1) = a4;
  ObjectType = swift_getObjectType();
  v15 = *(a2 + 80);
  v16 = a1;
  v159 = a3;
  v160 = v16;
  v158 = v6;
  v6[OBJC_IVAR____TtC9SiriSetup18EducationPresenter_viewStyle] = v15(ObjectType, a2);
  if (qword_2802F3248 != -1)
  {
LABEL_66:
    swift_once();
  }

  v17 = 0xEF454C5449545F4ELL;
  v18 = 0x4F49544143554445;
  v163 = byte_2802F5130;
  v19 = sub_269051B18(byte_2802F5130);
  *&v179[0] = 0x4F49544143554445;
  *(&v179[0] + 1) = 0xEF454C5449545F4ELL;
  MEMORY[0x26D62FBC0](v19);

  v20 = v179[0];
  v21 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  v24 = v22 >> 1;
  v25 = v23 + 1;
  if (v22 >> 1 <= v23)
  {
    v21 = sub_26904DCD8((v22 > 1), v23 + 1, 1, v21);
    v22 = *(v21 + 3);
    v24 = v22 >> 1;
  }

  *(v21 + 2) = v25;
  *&v21[16 * v23 + 32] = v20;
  if (v24 < (v23 + 2))
  {
    v21 = sub_26904DCD8((v22 > 1), v23 + 2, 1, v21);
  }

  *(v21 + 2) = v23 + 2;
  v26 = &v21[16 * v25];
  *(v26 + 4) = 0x4F49544143554445;
  *(v26 + 5) = 0xEF454C5449545F4ELL;
  v27 = (v21 + 40);
  v28 = -v23;
  v29 = -1;
  while (v28 + v29 != 1)
  {
    if (++v29 >= *(v21 + 2))
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v30 = v27 + 2;
    v31 = *(v27 - 1);
    v32 = *v27;

    v33 = sub_26902F7F4(v31, v32, 0);
    v35 = v34;

    v27 = v30;
    if (v35)
    {

      v18 = v33;
      v17 = v35;
      goto LABEL_22;
    }
  }

  v36 = 0x800000026905BF00;
  *&v179[0] = 0;
  *(&v179[0] + 1) = 0xE000000000000000;
  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0x4F49544143554445, 0xEF454C5449545F4ELL);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  v37 = *(&v179[0] + 1);
  v38 = *&v179[0];
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v39 = sub_269057774();
  __swift_project_value_buffer(v39, qword_2802F3FF8);
  v40 = sub_269057A94();
  *&v179[0] = 0xD00000000000003BLL;
  *(&v179[0] + 1) = 0x800000026905BF00;
  v41 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v41 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {
    *&v178[0] = 32;
    *(&v178[0] + 1) = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v38, v37);
    MEMORY[0x26D62FBC0](*&v178[0], *(&v178[0] + 1));

    v36 = *(&v179[0] + 1);
    v42 = *&v179[0];
  }

  else
  {
    v42 = 0xD00000000000003BLL;
  }

  v43 = sub_269057764();
  if (os_log_type_enabled(v43, v40))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&v178[0] = v45;
    *v44 = 136315138;
    v46 = sub_269010108(v42, v36, v178);

    *(v44 + 4) = v46;
    _os_log_impl(&dword_269002000, v43, v40, "%s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x26D6309D0](v45, -1, -1);
    MEMORY[0x26D6309D0](v44, -1, -1);
  }

  else
  {
  }

LABEL_22:
  sub_2690519EC(v163);
  *&v179[0] = v18;
  *(&v179[0] + 1) = v17;
  strcpy(v178, "%DEVICE_NAME%");
  HIWORD(v178[0]) = -4864;
  v47 = sub_26900BE9C();
  v48 = sub_269057BE4();
  v50 = v49;

  v51 = sub_2690519EC(v163);
  *&v179[0] = v48;
  *(&v179[0] + 1) = v50;
  *&v162 = 0xD000000000000014;
  *(&v162 + 1) = 0x800000026905BEA0;
  *&v178[0] = 0xD000000000000014;
  *(&v178[0] + 1) = 0x800000026905BEA0;
  *&v164 = v51;
  *(&v164 + 1) = v52;
  v53 = sub_269057BE4();
  v156 = v54;

  v55 = 0x800000026905BEC0;
  v56 = sub_269051B18(v163);
  v57 = 0xD00000000000001ELL;
  *&v179[0] = 0xD00000000000001ELL;
  *(&v179[0] + 1) = 0x800000026905BEC0;
  MEMORY[0x26D62FBC0](v56);

  v58 = v179[0];
  v59 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v61 = *(v59 + 2);
  v60 = *(v59 + 3);
  v62 = v60 >> 1;
  v63 = v61 + 1;
  if (v60 >> 1 <= v61)
  {
    v59 = sub_26904DCD8((v60 > 1), v61 + 1, 1, v59);
    v60 = *(v59 + 3);
    v62 = v60 >> 1;
  }

  *(v59 + 2) = v63;
  *&v59[16 * v61 + 32] = v58;
  v157 = v53;
  if (v62 < (v61 + 2))
  {
    v59 = sub_26904DCD8((v60 > 1), v61 + 2, 1, v59);
  }

  *(v59 + 2) = v61 + 2;
  v64 = &v59[16 * v63];
  *(v64 + 4) = 0xD00000000000001ELL;
  *(v64 + 5) = 0x800000026905BEC0;
  v65 = (v59 + 40);
  v66 = -v61;
  v67 = -1;
  while (v66 + v67 != 1)
  {
    if (++v67 >= *(v59 + 2))
    {
      goto LABEL_64;
    }

    v68 = v65 + 2;
    v69 = *(v65 - 1);
    v70 = *v65;

    v71 = sub_26902F7F4(v69, v70, 0);
    v73 = v72;

    v65 = v68;
    if (v73)
    {

      v57 = v71;
      v55 = v73;
      goto LABEL_42;
    }
  }

  v74 = 0x800000026905BF00;
  *&v179[0] = 0;
  *(&v179[0] + 1) = 0xE000000000000000;
  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0xD00000000000001ELL, 0x800000026905BEC0);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  v75 = *(&v179[0] + 1);
  v76 = *&v179[0];
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v77 = sub_269057774();
  __swift_project_value_buffer(v77, qword_2802F3FF8);
  v78 = sub_269057A94();
  *&v179[0] = 0xD00000000000003BLL;
  *(&v179[0] + 1) = 0x800000026905BF00;
  v79 = HIBYTE(v75) & 0xF;
  if ((v75 & 0x2000000000000000) == 0)
  {
    v79 = v76 & 0xFFFFFFFFFFFFLL;
  }

  if (v79)
  {
    *&v178[0] = 32;
    *(&v178[0] + 1) = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v76, v75);
    MEMORY[0x26D62FBC0](*&v178[0], *(&v178[0] + 1));

    v74 = *(&v179[0] + 1);
    v80 = *&v179[0];
  }

  else
  {
    v80 = 0xD00000000000003BLL;
  }

  v81 = sub_269057764();
  if (os_log_type_enabled(v81, v78))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *&v178[0] = v83;
    *v82 = 136315138;
    v84 = sub_269010108(v80, v74, v178);

    *(v82 + 4) = v84;
    _os_log_impl(&dword_269002000, v81, v78, "%s", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v83);
    MEMORY[0x26D6309D0](v83, -1, -1);
    MEMORY[0x26D6309D0](v82, -1, -1);
  }

  else
  {
  }

LABEL_42:
  sub_2690519EC(v163);
  *&v179[0] = v57;
  *(&v179[0] + 1) = v55;
  strcpy(v178, "%DEVICE_NAME%");
  HIWORD(v178[0]) = -4864;
  v85 = sub_269057BE4();
  v87 = v86;

  v88 = sub_2690519EC(v163);
  *&v179[0] = v85;
  *(&v179[0] + 1) = v87;
  v178[0] = v162;
  *&v164 = v88;
  *(&v164 + 1) = v89;
  v90 = sub_269057BE4();
  v154 = v91;
  v155 = v90;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F36F0, &qword_26905A3C0);
  v153 = swift_allocObject();
  *(v153 + 16) = xmmword_269059EE0;
  v92 = 0x800000026905BEE0;
  v93 = sub_269051B18(v163);
  v94 = 0xD000000000000011;
  *&v179[0] = 0xD000000000000011;
  *(&v179[0] + 1) = 0x800000026905BEE0;
  MEMORY[0x26D62FBC0](v93);

  v95 = v179[0];
  v96 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v98 = *(v96 + 2);
  v97 = *(v96 + 3);
  v99 = v97 >> 1;
  v100 = v98 + 1;
  if (v97 >> 1 <= v98)
  {
    v96 = sub_26904DCD8((v97 > 1), v98 + 1, 1, v96);
    v97 = *(v96 + 3);
    v99 = v97 >> 1;
  }

  *(v96 + 2) = v100;
  *&v96[16 * v98 + 32] = v95;
  if (v99 < (v98 + 2))
  {
    v96 = sub_26904DCD8((v97 > 1), v98 + 2, 1, v96);
  }

  *(v96 + 2) = v98 + 2;
  v101 = &v96[16 * v100];
  *(v101 + 4) = 0xD000000000000011;
  *(v101 + 5) = 0x800000026905BEE0;
  v102 = (v96 + 40);
  v103 = -v98;
  v104 = -1;
  while (v103 + v104 != 1)
  {
    if (++v104 >= *(v96 + 2))
    {
      goto LABEL_65;
    }

    v105 = v102 + 2;
    v106 = *(v102 - 1);
    v107 = *v102;

    v108 = sub_26902F7F4(v106, v107, 0);
    v110 = v109;

    v102 = v105;
    if (v110)
    {

      v94 = v108;
      v92 = v110;
      goto LABEL_62;
    }
  }

  v111 = 0x800000026905BF00;
  *&v179[0] = 0;
  *(&v179[0] + 1) = 0xE000000000000000;
  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0xD000000000000011, 0x800000026905BEE0);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  v112 = *(&v179[0] + 1);
  v113 = *&v179[0];
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v114 = sub_269057774();
  __swift_project_value_buffer(v114, qword_2802F3FF8);
  v115 = sub_269057A94();
  *&v179[0] = 0xD00000000000003BLL;
  *(&v179[0] + 1) = 0x800000026905BF00;
  v116 = HIBYTE(v112) & 0xF;
  if ((v112 & 0x2000000000000000) == 0)
  {
    v116 = v113 & 0xFFFFFFFFFFFFLL;
  }

  if (v116)
  {
    *&v178[0] = 32;
    *(&v178[0] + 1) = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v113, v112);
    MEMORY[0x26D62FBC0](*&v178[0], *(&v178[0] + 1));

    v111 = *(&v179[0] + 1);
    v117 = *&v179[0];
  }

  else
  {
    v117 = 0xD00000000000003BLL;
  }

  v118 = sub_269057764();
  if (os_log_type_enabled(v118, v115))
  {
    v119 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v121 = v117;
    v122 = v120;
    *&v178[0] = v120;
    *v119 = 136315138;
    v123 = sub_269010108(v121, v111, v178);

    *(v119 + 4) = v123;
    _os_log_impl(&dword_269002000, v118, v115, "%s", v119, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v122);
    MEMORY[0x26D6309D0](v122, -1, -1);
    MEMORY[0x26D6309D0](v119, -1, -1);
  }

  else
  {
  }

LABEL_62:
  sub_2690519EC(v163);
  *&v179[0] = v94;
  *(&v179[0] + 1) = v92;
  strcpy(v178, "%DEVICE_NAME%");
  HIWORD(v178[0]) = -4864;
  v124 = MEMORY[0x277D837D0];
  v125 = sub_269057BE4();
  v127 = v126;

  v128 = sub_2690519EC(v163);
  *&v179[0] = v125;
  *(&v179[0] + 1) = v127;
  v178[0] = v162;
  *&v164 = v128;
  *(&v164 + 1) = v129;
  v130 = sub_269057BE4();
  v132 = v131;

  *(v153 + 32) = v130;
  *(v153 + 40) = v132;
  v133 = &v158[OBJC_IVAR____TtC9SiriSetup18EducationPresenter_viewModel];
  *v133 = 0;
  *(v133 + 1) = 0;
  *(v133 + 2) = v157;
  *(v133 + 3) = v156;
  *(v133 + 4) = v155;
  *(v133 + 5) = v154;
  *(v133 + 6) = 0;
  *(v133 + 7) = 0xE000000000000000;
  *(v133 + 8) = v153;
  *(v133 + 72) = 0u;
  *(v133 + 88) = 0u;
  *(v133 + 104) = 0u;
  *(v133 + 120) = 0u;
  *(v133 + 136) = 0u;
  v133[152] = 2;
  *(v133 + 21) = 0;
  *(v133 + 22) = 0;
  *(v133 + 183) = 0;
  *(v133 + 20) = 0;
  *(v133 + 24) = 0;
  *(v133 + 25) = 0;
  *&v158[OBJC_IVAR____TtC9SiriSetup18EducationPresenter_page] = a5;
  v177.receiver = v158;
  v177.super_class = type metadata accessor for EducationPresenter();

  v134 = objc_msgSendSuper2(&v177, sel_init, v124, v47, v47, v47);
  v135 = &v134[OBJC_IVAR____TtC9SiriSetup18EducationPresenter_viewModel];
  v136 = v134[OBJC_IVAR____TtC9SiriSetup18EducationPresenter_viewStyle];
  swift_beginAccess();
  v178[0] = *v135;
  v137 = v135[1];
  v138 = v135[2];
  v139 = v135[4];
  v178[3] = v135[3];
  v178[4] = v139;
  v178[1] = v137;
  v178[2] = v138;
  v140 = v135[5];
  v141 = v135[6];
  v142 = v135[8];
  v178[7] = v135[7];
  v178[8] = v142;
  v178[5] = v140;
  v178[6] = v141;
  v143 = v135[9];
  v144 = v135[10];
  v145 = v135[12];
  v178[11] = v135[11];
  v178[12] = v145;
  v178[9] = v143;
  v178[10] = v144;
  v173 = v135[9];
  v174 = v135[10];
  v175 = v135[11];
  v176 = v135[12];
  v169 = v135[5];
  v170 = v135[6];
  v171 = v135[7];
  v172 = v135[8];
  v165 = v135[1];
  v166 = v135[2];
  v167 = v135[3];
  v168 = v135[4];
  v164 = *v135;
  v146 = v134;
  sub_269009E3C(v178, v179);
  v147 = sub_26900B7E4(v136, &v164);
  v149 = v148;

  v179[10] = v174;
  v179[11] = v175;
  v179[12] = v176;
  v179[6] = v170;
  v179[7] = v171;
  v179[8] = v172;
  v179[9] = v173;
  v179[2] = v166;
  v179[3] = v167;
  v179[4] = v168;
  v179[5] = v169;
  v179[0] = v164;
  v179[1] = v165;
  sub_269009EE0(v179);
  v150 = &v146[OBJC_IVAR____TtC9SiriSetup18EducationPresenter_presentingViewController];
  v151 = *&v146[OBJC_IVAR____TtC9SiriSetup18EducationPresenter_presentingViewController];
  *v150 = v147;
  v150[1] = v149;

  return v146;
}

char *sub_26900B7E4(char a1, _OWORD *a2)
{
  v2 = a2[11];
  v30[10] = a2[10];
  v30[11] = v2;
  v30[12] = a2[12];
  v3 = a2[7];
  v30[6] = a2[6];
  v30[7] = v3;
  v4 = a2[9];
  v30[8] = a2[8];
  v30[9] = v4;
  v5 = a2[3];
  v30[2] = a2[2];
  v30[3] = v5;
  v6 = a2[5];
  v30[4] = a2[4];
  v30[5] = v6;
  v7 = a2[1];
  v30[0] = *a2;
  v30[1] = v7;
  if (a1)
  {
    v9 = 0xD000000000000030;
    v10 = 0x800000026905BF90;
    *&v29[0] = 0;
    *(&v29[0] + 1) = 0xE000000000000000;
    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD00000000000002FLL, 0x800000026905BFD0);
    LOBYTE(v28[0]) = a1;
    sub_269057CB4();
    MEMORY[0x26D62FBC0](0x6C696E202CLL, 0xE500000000000000);
    v11 = v29[0];
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v12 = sub_269057774();
    __swift_project_value_buffer(v12, qword_2802F3FF8);
    v13 = sub_269057A94();
    *&v29[0] = 0xD000000000000030;
    *(&v29[0] + 1) = 0x800000026905BF90;
    v14 = HIBYTE(*(&v11 + 1)) & 0xFLL;
    if ((*(&v11 + 1) & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      v28[0] = 32;
      v28[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](v11, *(&v11 + 1));
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v10 = *(&v29[0] + 1);
      v9 = *&v29[0];
    }

    v15 = sub_269057764();
    if (os_log_type_enabled(v15, v13))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28[0] = v17;
      *v16 = 136315138;
      v18 = sub_269010108(v9, v10, v28);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_269002000, v15, v13, "%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x26D6309D0](v17, -1, -1);
      MEMORY[0x26D6309D0](v16, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  else
  {
    v19 = a2[11];
    v29[10] = a2[10];
    v29[11] = v19;
    v29[12] = a2[12];
    v20 = a2[7];
    v29[6] = a2[6];
    v29[7] = v20;
    v21 = a2[9];
    v29[8] = a2[8];
    v29[9] = v21;
    v22 = a2[3];
    v29[2] = a2[2];
    v29[3] = v22;
    v23 = a2[5];
    v29[4] = a2[4];
    v29[5] = v23;
    v24 = a2[1];
    v29[0] = *a2;
    v29[1] = v24;
    v25 = objc_allocWithZone(type metadata accessor for EducationWelcomeController());
    sub_269009E3C(v30, v28);
    v26 = sub_26902781C(v29);
    *&v26[OBJC_IVAR____TtC9SiriSetup26EducationWelcomeController_delegate + 8] = &off_2879A6B50;
    swift_unknownObjectWeakAssign();
    return v26;
  }
}

id sub_26900BB38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EducationPresenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26900BC54@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9SiriSetup18EducationPresenter_viewModel);
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

uint64_t sub_26900BD24(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9SiriSetup18EducationPresenter_viewModel);
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

void *sub_26900BE54()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup18EducationPresenter_presentingViewController);
  v2 = *(v0 + OBJC_IVAR____TtC9SiriSetup18EducationPresenter_presentingViewController + 8);
  v3 = v1;
  return v1;
}

unint64_t sub_26900BE9C()
{
  result = qword_2802F3E20;
  if (!qword_2802F3E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F3E20);
  }

  return result;
}

uint64_t sub_26900BEF0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

SiriSetup::SiriSetupCoordinator::ViewConfiguration __swiftcall SiriSetupCoordinator.ViewConfiguration.init()()
{
  *v0 = 0;
  *(v0 + 2) = 0;
  return result;
}

id SiriSetupCoordinator.init(configuration:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 8);
  v53 = *a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = &v1[OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_delegate];
  *(v9 + 1) = 0;
  v50 = v9;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_analytics;
  if (qword_2802F3228 != -1)
  {
    swift_once();
  }

  *&v2[v10] = qword_2802F5108;
  v11 = &v2[OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_currentPresenter];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v2[OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_viewConfiguration];
  *v12 = 0;
  v12[2] = 0;

  sub_269057C54();
  v63[0] = 0;
  v63[1] = 0xE000000000000000;
  MEMORY[0x26D62FBC0](0xD000000000000024, 0x800000026905C040);
  v56 = v53;
  v57 = v3;
  v52 = v4;
  v58 = v4;
  v51 = v5;
  v59 = v5;
  v60 = v7;
  v61 = v6;
  v62 = v8;
  sub_269057CB4();
  v13 = v6;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v14 = sub_269057774();
  __swift_project_value_buffer(v14, qword_2802F3FF8);
  v15 = sub_269057AA4();
  v56 = 0xD000000000000014;
  v57 = 0x800000026905C020;
  v16 = sub_269057764();
  if (os_log_type_enabled(v16, v15))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v63[0] = v18;
    *v17 = 136315138;
    v19 = sub_269010108(0xD000000000000014, 0x800000026905C020, v63);

    *(v17 + 4) = v19;
    _os_log_impl(&dword_269002000, v16, v15, "%s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x26D6309D0](v18, -1, -1);
    MEMORY[0x26D6309D0](v17, -1, -1);
  }

  else
  {
  }

  *(v50 + 1) = v13;
  swift_unknownObjectWeakAssign();
  *&v2[OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_navigationController] = v8;
  LOBYTE(v56) = v51;
  v20 = objc_allocWithZone(type metadata accessor for Defaults());
  v21 = v52;
  v22 = v8;
  v23 = sub_26904C870(&v56, 0, 0, v52);

  swift_unknownObjectRelease();

  v24 = &v2[OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_enrollmentData];
  *v24 = v23;
  v24[1] = &off_2879A8780;
  v25 = type metadata accessor for Configurator();
  v26 = objc_allocWithZone(v25);
  v26[OBJC_IVAR____TtC9SiriSetup12Configurator_enrollmentMode] = v51;
  v27 = &v26[OBJC_IVAR____TtC9SiriSetup12Configurator_dataSource];
  *v27 = v23;
  v27[1] = &off_2879A8780;
  v55.receiver = v26;
  v55.super_class = v25;
  v28 = v23;
  v29 = objc_msgSendSuper2(&v55, sel_init);
  *&v2[OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_configurator] = v29;
  LOBYTE(v56) = v51;
  v30 = v29;
  v31 = sub_269011C58(&v56);

  v32 = OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_pages;
  *&v2[OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_pages] = v31;
  v33 = *v24;
  v34 = v24[1];
  ObjectType = swift_getObjectType();
  v36 = *(v34 + 10);
  v37 = v33;
  LOBYTE(v34) = v36(ObjectType, v34);

  v2[OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_navigationStyle] = 0x10200u >> (8 * v34);
  v38 = *&v2[v32];
  v39 = type metadata accessor for SetupPageListHandler();
  swift_allocObject();

  v41 = sub_2690451CC(v40);
  v42 = &v2[OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_pageListHandler];
  v42[3] = v39;
  v42[4] = &off_2879A8600;
  *v42 = v41;
  v54.receiver = v2;
  v54.super_class = type metadata accessor for SiriSetupCoordinator();
  v43 = objc_msgSendSuper2(&v54, sel_init);
  v44 = v43 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_pageListHandler;
  swift_beginAccess();
  v45 = *(v44 + 24);
  v46 = *(v44 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  v47 = *(v46 + 16);
  v48 = v43;
  v47(v43, &off_2879A6C68, v45, v46);
  swift_endAccess();

  return v48;
}

id SiriSetupCoordinator.init(enrollmentMode:navigationController:delegate:assistantConfiguration:)(char *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v9 = *a1;
  v10 = &v5[OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_delegate];
  *&v5[OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_analytics;
  if (qword_2802F3228 != -1)
  {
    swift_once();
  }

  *&v6[v11] = qword_2802F5108;
  v12 = &v6[OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_currentPresenter];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v6[OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_viewConfiguration];
  *v13 = 0;
  v13[2] = 0;

  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000001ALL, 0x800000026905C0C0);
  sub_269057CB4();
  MEMORY[0x26D62FBC0](0x746167656C656420, 0xEA00000000003A65);
  v59[1] = a4;
  v53 = a4;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3538, &qword_269059F60);
  v14 = sub_269057964();
  MEMORY[0x26D62FBC0](v14);

  MEMORY[0x26D62FBC0](0xD000000000000010, 0x800000026905C0E0);
  v59[0] = a5;
  v55 = a5;
  v52 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3540, &qword_269059F68);
  v15 = sub_269057964();
  MEMORY[0x26D62FBC0](v15);

  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v16 = sub_269057774();
  __swift_project_value_buffer(v16, qword_2802F3FF8);
  v17 = sub_269057AA4();
  v56[0] = 0xD00000000000004ALL;
  v56[1] = 0x800000026905C070;
  v18 = sub_269057764();
  if (os_log_type_enabled(v18, v17))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v59[0] = v20;
    *v19 = 136315138;
    v21 = sub_269010108(0xD00000000000004ALL, 0x800000026905C070, v59);

    *(v19 + 4) = v21;
    _os_log_impl(&dword_269002000, v18, v17, "%s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x26D6309D0](v20, -1, -1);
    MEMORY[0x26D6309D0](v19, -1, -1);
  }

  else
  {
  }

  *(v10 + 1) = v53;
  swift_unknownObjectWeakAssign();
  *&v6[OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_navigationController] = a2;
  LOBYTE(v56[0]) = v9;
  v22 = objc_allocWithZone(type metadata accessor for Defaults());
  v23 = a2;
  v24 = sub_26904BD48(v56, 0, 0);
  v25 = &v6[OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_enrollmentData];
  *v25 = v24;
  v25[1] = &off_2879A8780;
  v26 = type metadata accessor for Configurator();
  v27 = objc_allocWithZone(v26);
  v27[OBJC_IVAR____TtC9SiriSetup12Configurator_enrollmentMode] = v9;
  v28 = &v27[OBJC_IVAR____TtC9SiriSetup12Configurator_dataSource];
  *v28 = v24;
  v28[1] = &off_2879A8780;
  v58.receiver = v27;
  v58.super_class = v26;
  v29 = v24;
  v30 = objc_msgSendSuper2(&v58, sel_init);
  *&v6[OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_configurator] = v30;
  LOBYTE(v56[0]) = v9;
  v31 = v30;
  v32 = sub_269011C58(v56);

  v33 = OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_pages;
  *&v6[OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_pages] = v32;
  v34 = *v25;
  v35 = v25[1];
  ObjectType = swift_getObjectType();
  v37 = *(v35 + 10);
  v38 = v34;
  LOBYTE(v35) = v37(ObjectType, v35);

  v6[OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_navigationStyle] = 0x10200u >> (8 * v35);
  v39 = *&v6[v33];
  v40 = type metadata accessor for SetupPageListHandler();
  swift_allocObject();

  v42 = sub_2690451CC(v41);
  v43 = &v6[OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_pageListHandler];
  v43[3] = v40;
  v43[4] = &off_2879A8600;
  *v43 = v42;
  v44 = type metadata accessor for SiriSetupCoordinator();
  v57.receiver = v6;
  v57.super_class = v44;
  v45 = objc_msgSendSuper2(&v57, sel_init);
  v46 = v45 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_pageListHandler;
  swift_beginAccess();
  v47 = *(v46 + 24);
  v48 = *(v46 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
  v49 = *(v48 + 16);
  v50 = v45;
  v49(v45, &off_2879A6C68, v47, v48);
  swift_endAccess();
  if (v55)
  {
    sub_26900CCC8(v52);
  }

  swift_unknownObjectRelease();
  return v50;
}

uint64_t sub_26900CAF4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_analytics);

  sub_269024E38();

  v3 = OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_pageListHandler;
  swift_beginAccess();
  sub_269009C7C(v1 + v3, v10);
  v4 = __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v5 = *(v1 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_enrollmentData);
  v6 = *(v1 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_enrollmentData + 8);
  v7 = *v4;
  v8 = v5;
  sub_269045450(0, 0, 0, v8, v6);

  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

uint64_t sub_26900CBB8(uint64_t a1)
{
  v2 = v1;
  v4 = *&v2[OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_pages];
  *&v2[OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_pages] = a1;

  v5 = type metadata accessor for SetupPageListHandler();
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v13 = v5;
  v14 = &off_2879A8600;
  *&v12 = sub_2690451CC(a1);
  v6 = &v2[OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_pageListHandler];
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  sub_269009D24(&v12, v6);
  v7 = v6[3];
  v8 = v6[4];
  __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
  v9 = *(v8 + 16);
  v10 = v2;
  v9(v2, &off_2879A6C68, v7, v8);
  return swift_endAccess();
}

void sub_26900CCC8(void *a1)
{
  v2 = v1;
  sub_269057C54();

  v4 = a1;
  v5 = [v4 description];
  v6 = sub_269057954();
  v8 = v7;

  MEMORY[0x26D62FBC0](v6, v8);

  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v9 = 0x6F6328796C707061;
  v10 = sub_269057774();
  __swift_project_value_buffer(v10, qword_2802F3FF8);
  v11 = sub_269057AA4();
  v12 = 0xEE00293A6769666ELL;
  strcpy(v26, "apply(config:)");
  HIBYTE(v26[1]) = -18;
  v13 = (0x800000026905C100 >> 56) & 0xF;
  if ((0x800000026905C100 & 0x2000000000000000) == 0)
  {
    v13 = 24;
  }

  if (v13)
  {
    v25[0] = 32;
    v25[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](0xD000000000000018, 0x800000026905C100);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v9 = v26[0];
    v12 = v26[1];
  }

  v14 = sub_269057764();
  if (os_log_type_enabled(v14, v11))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25[0] = v16;
    *v15 = 136315138;
    v17 = sub_269010108(v9, v12, v25);

    *(v15 + 4) = v17;
    _os_log_impl(&dword_269002000, v14, v11, "%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x26D6309D0](v16, -1, -1);
    MEMORY[0x26D6309D0](v15, -1, -1);
  }

  else
  {
  }

  type metadata accessor for LocalDataSourceWriter();
  v18 = sub_26901746C(v4);
  v19 = v2 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_enrollmentData;
  v20 = *(v2 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_enrollmentData);
  v21 = *(v19 + 8);
  ObjectType = swift_getObjectType();
  v23 = *(v21 + 248);
  v24 = v20;
  v23(v18, &off_2879A72A0, ObjectType, v21);
}

void static SiriSetupCoordinator.apply(config:)(void *a1)
{
  sub_269057C54();

  v2 = a1;
  v3 = [v2 description];
  v4 = sub_269057954();
  v6 = v5;

  MEMORY[0x26D62FBC0](v4, v6);

  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v7 = 0x6F6328796C707061;
  v8 = sub_269057774();
  __swift_project_value_buffer(v8, qword_2802F3FF8);
  v9 = sub_269057AA4();
  v10 = 0xEE00293A6769666ELL;
  strcpy(v20, "apply(config:)");
  HIBYTE(v20[1]) = -18;
  v11 = (0x800000026905C100 >> 56) & 0xF;
  if ((0x800000026905C100 & 0x2000000000000000) == 0)
  {
    v11 = 24;
  }

  if (v11)
  {
    v19[0] = 32;
    v19[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](0xD000000000000018, 0x800000026905C100);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v7 = v20[0];
    v10 = v20[1];
  }

  v12 = sub_269057764();
  if (os_log_type_enabled(v12, v9))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19[0] = v14;
    *v13 = 136315138;
    v15 = sub_269010108(v7, v10, v19);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_269002000, v12, v9, "%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x26D6309D0](v14, -1, -1);
    MEMORY[0x26D6309D0](v13, -1, -1);
  }

  else
  {
  }

  LOBYTE(v20[0]) = 0;
  v16 = objc_allocWithZone(type metadata accessor for Defaults());
  v17 = sub_26904BD48(v20, 0, 0);
  type metadata accessor for LocalDataSourceWriter();
  v18 = sub_26901746C(v2);
  sub_2690106B0(v18, v17);
}

uint64_t sub_26900D268(uint64_t a1)
{
  v2 = v1;
  sub_269057C54();

  v4 = sub_269011260();
  MEMORY[0x26D62FBC0](v4);

  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v5 = 0x6F72662870696B73;
  v6 = sub_269057774();
  __swift_project_value_buffer(v6, qword_2802F3FF8);
  v7 = sub_269057AA4();
  v8 = 0xEB00000000293A6DLL;
  v33 = 0x6F72662870696B73;
  v34 = 0xEB00000000293A6DLL;
  v9 = (0x800000026905C120 >> 56) & 0xF;
  if ((0x800000026905C120 & 0x2000000000000000) == 0)
  {
    v9 = 27;
  }

  if (v9)
  {
    v32[0] = 32;
    v32[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](0xD00000000000001BLL, 0x800000026905C120);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v5 = v33;
    v8 = v34;
  }

  v10 = sub_269057764();
  if (os_log_type_enabled(v10, v7))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32[0] = v12;
    *v11 = 136315138;
    v13 = sub_269010108(v5, v8, v32);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_269002000, v10, v7, "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x26D6309D0](v12, -1, -1);
    MEMORY[0x26D6309D0](v11, -1, -1);
  }

  else
  {
  }

  v14 = (v2 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_currentPresenter);
  if (*(v2 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_currentPresenter))
  {
    v15 = v14[1];
    v16 = *(v2 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_currentPresenter);
    ObjectType = swift_getObjectType();
    v18 = *(v15 + 88);
    swift_unknownObjectRetain();
    v19 = v18(ObjectType, v15);
    swift_unknownObjectRelease();
    if (*(v19 + 24) == *(a1 + 24) && *(v19 + 32) == *(a1 + 32))
    {

      if (!*v14)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v21 = sub_269057DE4();

    if ((v21 & 1) != 0 && *v14)
    {
LABEL_17:
      v22 = v14[1];
      v23 = swift_getObjectType();
      v24 = *(v22 + 96);
      swift_unknownObjectRetain();
      v24(v23, v22);
      swift_unknownObjectRelease();
    }
  }

LABEL_18:
  v25 = OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_pageListHandler;
  swift_beginAccess();
  sub_269009C7C(v2 + v25, &v33);
  v26 = __swift_project_boxed_opaque_existential_1(&v33, v35);
  v27 = *(v2 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_enrollmentData);
  v28 = *(v2 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_enrollmentData + 8);
  v29 = *v26;
  v30 = v27;
  sub_269045450(a1, 2, 2, v30, v28);

  return __swift_destroy_boxed_opaque_existential_1Tm(&v33);
}

uint64_t sub_26900D5E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = 0xD00000000000001DLL;
  v41 = 0xE000000000000000;
  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000001ELL, 0x800000026905C140);
  v38 = a1;
  v9 = sub_269011260();
  MEMORY[0x26D62FBC0](v9);

  MEMORY[0x26D62FBC0](0xD000000000000010, 0x800000026905C160);
  v37 = a2;
  v44 = a2;
  v45 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3548, &unk_269059F70);
  v10 = sub_269057964();
  MEMORY[0x26D62FBC0](v10);

  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905C180);
  v36 = a4;
  if (a4)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (a4)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  v13 = 0x800000026905C1A0;
  MEMORY[0x26D62FBC0](v11, v12);

  v14 = v40;
  v15 = v41;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v16 = sub_269057774();
  __swift_project_value_buffer(v16, qword_2802F3FF8);
  v17 = sub_269057AA4();
  v18 = 0xD00000000000002FLL;
  v40 = 0xD00000000000002FLL;
  v41 = 0x800000026905C1A0;
  if ((v15 & 0xF00000000000000) != 0)
  {
    v44 = 32;
    v45 = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v14, v15);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v18 = v40;
    v13 = v41;
  }

  v19 = sub_269057764();
  if (os_log_type_enabled(v19, v17))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v44 = v21;
    v8 = 0xD00000000000001DLL;
    *v20 = 136315138;
    v22 = sub_269010108(v18, v13, &v44);

    *(v20 + 4) = v22;
    _os_log_impl(&dword_269002000, v19, v17, "%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x26D6309D0](v21, -1, -1);
    MEMORY[0x26D6309D0](v20, -1, -1);
  }

  else
  {
  }

  v23 = *(v39 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_enrollmentData + 8);
  v24 = 0x800000026905C1D0;
  v25 = *(v39 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_enrollmentData);
  v26 = sub_269011260();
  v28 = v27;
  v29 = sub_269057AA4();
  v40 = 0xD00000000000001DLL;
  v41 = 0x800000026905C1D0;
  v30 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v30 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {
    v44 = 32;
    v45 = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v26, v28);
    MEMORY[0x26D62FBC0](v44, v45);

    v8 = v40;
    v24 = v41;
  }

  v31 = sub_269057764();
  if (os_log_type_enabled(v31, v29))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v44 = v33;
    *v32 = 136315138;
    v34 = sub_269010108(v8, v24, &v44);

    *(v32 + 4) = v34;
    _os_log_impl(&dword_269002000, v31, v29, "%s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x26D6309D0](v33, -1, -1);
    MEMORY[0x26D6309D0](v32, -1, -1);
  }

  else
  {
  }

  sub_269048994(v38, v25, v23);
  v40 = 1;
  v41 = v37;
  v42 = a3;
  v43 = v36 & 1;

  sub_26900E0E8(&v40);
  return sub_2690109D8(1, v37, a3);
}

uint64_t sub_26900DAAC(char *a1)
{
  v2 = sub_269057874();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v4;
  *(v8 + 25) = v5;
  *(v8 + 26) = v6;
  aBlock[4] = sub_269010A5C;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26900BEF0;
  aBlock[3] = &block_descriptor_0;
  _Block_copy(aBlock);
  sub_26900A490();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F3E10, &unk_269059E90);
  sub_26900A4E8();
  sub_269057C14();
  v9 = sub_2690578F4();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_2690578D4();

  if ([objc_opt_self() isMainThread])
  {
    sub_2690578E4();
  }

  else
  {
    sub_269010AA8();
    v12 = sub_269057B34();
    sub_269057B64();
  }
}

void sub_26900DCD4(uint64_t a1, int a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = (Strong + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_viewConfiguration);
    *v5 = a2 & 1;
    v5[1] = BYTE1(a2) & 1;
    v5[2] = BYTE2(a2) & 1;
    sub_26900DD50();
  }
}

void sub_26900DD50()
{
  v1 = (v0 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_currentPresenter);
  if (*(v0 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_currentPresenter))
  {
    v2 = v1[1];
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 40);
    swift_unknownObjectRetain();
    v4(&v12, ObjectType, v2);
    swift_unknownObjectRelease();
    v37 = v20;
    v38 = v21;
    v39 = v22;
    v40 = v23;
    v33 = v16;
    v34 = v17;
    v35 = v18;
    v36 = v19;
    v29 = v12;
    v30 = v13;
    v31 = v14;
    v32 = v15;
    v28[0] = *v27;
    *(v28 + 13) = *&v27[13];
    v5 = *(v0 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_viewConfiguration);
    v6 = *(v0 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_viewConfiguration + 1);
    v7 = *(v0 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_viewConfiguration + 2);
    if (v5 != (v24 & 1) || ((v6 ^ v25) & 1) != 0 || ((v7 ^ v26) & 1) != 0)
    {
      if (*v1)
      {
        v8 = v1[1];
        v9 = *v1;
        v10 = swift_getObjectType();
        v20 = v37;
        v21 = v38;
        v22 = v39;
        v23 = v40;
        v16 = v33;
        v17 = v34;
        v18 = v35;
        v19 = v36;
        v12 = v29;
        v13 = v30;
        v14 = v31;
        v15 = v32;
        v24 = v5;
        v25 = v6;
        v26 = v7;
        *v27 = v28[0];
        *&v27[13] = *(v28 + 13);
        v11 = *(v8 + 48);
        swift_unknownObjectRetain();
        v11(&v12, v10, v8);
        swift_unknownObjectRelease();
        return;
      }

      v20 = v37;
      v21 = v38;
      v22 = v39;
      v23 = v40;
      v16 = v33;
      v17 = v34;
      v18 = v35;
      v19 = v36;
      v12 = v29;
      v13 = v30;
      v14 = v31;
      v15 = v32;
      v24 = v5;
      v25 = v6;
      v26 = v7;
    }

    else
    {
      v20 = v37;
      v21 = v38;
      v22 = v39;
      v23 = v40;
      v16 = v33;
      v17 = v34;
      v18 = v35;
      v19 = v36;
      v12 = v29;
      v13 = v30;
      v14 = v31;
      v15 = v32;
    }

    *v27 = v28[0];
    *&v27[13] = *(v28 + 13);
    sub_269009EE0(&v12);
  }
}

void sub_26900DFBC()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_enrollmentData;
  v3 = *(v0 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_enrollmentData);
  v4 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 80);
  v7 = v3;
  LODWORD(v4) = v6(ObjectType, v4);

  v8 = (v1 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_pageListHandler);
  if (v4 != 2)
  {
    swift_beginAccess();
    goto LABEL_6;
  }

  swift_beginAccess();
  if (*(*__swift_project_boxed_opaque_existential_1(v8, v8[3]) + 24) >= 1)
  {
LABEL_6:
    v12 = *__swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_269046A34();
    return;
  }

  v9 = v1 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v9 + 8);
    v11 = swift_getObjectType();
    (*(v10 + 48))(v11, v10);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_26900E0E8(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = v1 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_enrollmentData;
  v7 = *(v1 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_enrollmentData);
  v8 = *(v6 + 8);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 200);
  v11 = v7;
  v10(ObjectType, v8);

  v48 = v6;
  if (v4 == 1)
  {
    v12 = *v6;
    v13 = *(v6 + 8);
    v14 = swift_getObjectType();
    v15 = *(v13 + 104);
    v16 = v12;
    v17 = v15(v14, v13);

    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v17 = v2;
    v18 = v5;
    v19 = v3;
    v20 = v4;
  }

  sub_269010EE8(v2, v3, v4);
  sub_269057C54();
  v54[0] = 0;
  v54[1] = 0xE000000000000000;
  MEMORY[0x26D62FBC0](0xD000000000000022, 0x800000026905C4B0);
  v50 = v17 & 1;
  v51 = v19;
  v52 = v20;
  v47 = v18 & 1;
  v53 = v18 & 1;
  sub_269057CB4();
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v21 = sub_269057774();
  __swift_project_value_buffer(v21, qword_2802F3FF8);
  v22 = sub_269057AA4();
  v50 = 0xD00000000000001DLL;
  v51 = 0x800000026905C490;
  v23 = sub_269057764();
  if (os_log_type_enabled(v23, v22))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v54[0] = v25;
    *v24 = 136315138;
    v26 = sub_269010108(0xD00000000000001DLL, 0x800000026905C490, v54);

    *(v24 + 4) = v26;
    _os_log_impl(&dword_269002000, v23, v22, "%s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x26D6309D0](v25, -1, -1);
    MEMORY[0x26D6309D0](v24, -1, -1);
  }

  else
  {
  }

  v27 = v49 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v28 = *(v27 + 8);
    v29 = swift_getObjectType();
    LOBYTE(v50) = v17 & 1;
    v51 = v19;
    v52 = v20;
    v53 = v47;
    (*(v28 + 8))(&v50, v29, v28);
    swift_unknownObjectRelease();
  }

  v30 = *v48;
  v31 = *(v48 + 8);
  v32 = swift_getObjectType();
  v33 = *(v31 + 32);
  v34 = v30;
  v33(&v50, v32, v31);

  v35 = *(v49 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_analytics);
  v36 = *v48;
  v37 = *(v48 + 8);
  v38 = swift_getObjectType();
  v39 = *(v37 + 104);

  v40 = v36;
  LOBYTE(v37) = v39(v38, v37);

  v41 = *v48;
  v42 = *(v48 + 8);
  v43 = swift_getObjectType();
  v44 = *(v42 + 112);
  v45 = v41;
  LOBYTE(v42) = v44(v43, v42);

  sub_26902511C(v37 & 1, v42 & 1);
}

id SiriSetupCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriSetupCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSetupCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26900E6C8(uint64_t a1)
{
  v2 = v1;
  v4 = 0xD000000000000010;
  v5 = 0x800000026905C380;
  sub_269057C54();

  v6 = sub_269011260();
  MEMORY[0x26D62FBC0](v6);

  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v7 = sub_269057774();
  __swift_project_value_buffer(v7, qword_2802F3FF8);
  v8 = sub_269057AA4();
  v22 = 0xD000000000000010;
  v23 = 0x800000026905C380;
  v9 = (0x800000026905C3A0 >> 56) & 0xF;
  if ((0x800000026905C3A0 & 0x2000000000000000) == 0)
  {
    v9 = 31;
  }

  if (v9)
  {
    v21[0] = 32;
    v21[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](0xD00000000000001FLL, 0x800000026905C3A0);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v4 = v22;
    v5 = v23;
  }

  v10 = sub_269057764();
  if (os_log_type_enabled(v10, v8))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21[0] = v12;
    *v11 = 136315138;
    v13 = sub_269010108(v4, v5, v21);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_269002000, v10, v8, "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x26D6309D0](v12, -1, -1);
    MEMORY[0x26D6309D0](v11, -1, -1);
  }

  else
  {
  }

  v14 = OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_pageListHandler;
  swift_beginAccess();
  sub_269009C7C(v2 + v14, &v22);
  v15 = __swift_project_boxed_opaque_existential_1(&v22, v24);
  v16 = *(v2 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_enrollmentData);
  v17 = *(v2 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_enrollmentData + 8);
  v18 = *v15;
  v19 = v16;
  sub_269045450(a1, 2, 1, v19, v17);

  return __swift_destroy_boxed_opaque_existential_1Tm(&v22);
}

uint64_t sub_26900E964(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_enrollmentData;
  v5 = *(v1 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_enrollmentData);
  v6 = *(v4 + 8);
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 80);
  v9 = v5;
  LODWORD(v6) = v8(ObjectType, v6);

  if (v6 == 2)
  {
    v10 = 0xD000000000000010;
    v11 = 0x800000026905C340;
    sub_269057C54();

    v12 = sub_269011260();
    MEMORY[0x26D62FBC0](v12);

    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v13 = sub_269057774();
    __swift_project_value_buffer(v13, qword_2802F3FF8);
    v14 = sub_269057AA4();
    v25 = 0xD000000000000010;
    v26 = 0x800000026905C340;
    v15 = (0x800000026905C310 >> 56) & 0xF;
    if ((0x800000026905C310 & 0x2000000000000000) == 0)
    {
      v15 = 32;
    }

    if (v15)
    {
      v24[0] = 32;
      v24[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD000000000000020, 0x800000026905C310);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v10 = v25;
      v11 = v26;
    }

    v16 = sub_269057764();
    if (os_log_type_enabled(v16, v14))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24[0] = v18;
      *v17 = 136315138;
      v19 = sub_269010108(v10, v11, v24);

      *(v17 + 4) = v19;
      _os_log_impl(&dword_269002000, v16, v14, "%s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x26D6309D0](v18, -1, -1);
      MEMORY[0x26D6309D0](v17, -1, -1);
    }

    else
    {
    }

    v21 = v2 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v22 = *(v21 + 8);
      v23 = swift_getObjectType();
      (*(v22 + 32))(a1, v23, v22);

      return swift_unknownObjectRelease();
    }
  }

  else
  {

    return sub_26900D5E8(a1, 0, 0, 0);
  }

  return result;
}

uint64_t sub_26900EC94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = v2 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_enrollmentData;
  v9 = *(v2 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_enrollmentData);
  v10 = *(v8 + 8);
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 80);
  v13 = v9;
  LODWORD(v10) = v12(ObjectType, v10);

  if (v10 == 2)
  {
    v14 = 0xD000000000000015;
    v15 = 0x800000026905C2F0;
    sub_269057C54();

    v16 = sub_269011260();
    MEMORY[0x26D62FBC0](v16);

    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v17 = sub_269057774();
    __swift_project_value_buffer(v17, qword_2802F3FF8);
    v18 = sub_269057AA4();
    v29 = 0xD000000000000015;
    v30 = 0x800000026905C2F0;
    v19 = (0x800000026905C310 >> 56) & 0xF;
    if ((0x800000026905C310 & 0x2000000000000000) == 0)
    {
      v19 = 32;
    }

    if (v19)
    {
      v28[0] = 32;
      v28[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD000000000000020, 0x800000026905C310);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v14 = v29;
      v15 = v30;
    }

    v20 = sub_269057764();
    if (os_log_type_enabled(v20, v18))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28[0] = v22;
      *v21 = 136315138;
      v23 = sub_269010108(v14, v15, v28);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_269002000, v20, v18, "%s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x26D6309D0](v22, -1, -1);
      MEMORY[0x26D6309D0](v21, -1, -1);
    }

    else
    {
    }

    v25 = v3 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v26 = *(v25 + 8);
      v27 = swift_getObjectType();
      (*(v26 + 32))(a1, v27, v26);

      return swift_unknownObjectRelease();
    }
  }

  else
  {

    return sub_26900D5E8(a1, v5, v6, v7);
  }

  return result;
}

void sub_26900EFCC()
{
  sub_269057C54();

  v0 = sub_269011260();
  MEMORY[0x26D62FBC0](v0);

  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v1 = 0x6F7266286B636162;
  v2 = sub_269057774();
  __swift_project_value_buffer(v2, qword_2802F3FF8);
  v3 = sub_269057AA4();
  v4 = 0xEB00000000293A6DLL;
  v11 = 0x6F7266286B636162;
  v12 = 0xEB00000000293A6DLL;
  v5 = (0x800000026905C360 >> 56) & 0xF;
  if ((0x800000026905C360 & 0x2000000000000000) == 0)
  {
    v5 = 19;
  }

  if (v5)
  {
    v10[0] = 32;
    v10[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](0xD000000000000013, 0x800000026905C360);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v1 = v11;
    v4 = v12;
  }

  v6 = sub_269057764();
  if (os_log_type_enabled(v6, v3))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10[0] = v8;
    *v7 = 136315138;
    v9 = sub_269010108(v1, v4, v10);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_269002000, v6, v3, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6309D0](v8, -1, -1);
    MEMORY[0x26D6309D0](v7, -1, -1);
  }

  else
  {
  }

  sub_26900DFBC();
}

uint64_t sub_26900F204(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v6 = 0x800000026905C3C0;
  v7 = sub_269011260();
  v9 = v8;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v10 = sub_269057774();
  __swift_project_value_buffer(v10, qword_2802F3FF8);
  v11 = sub_269057AA4();
  v82 = 0xD000000000000023;
  v83 = 0x800000026905C3C0;
  v12 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v12 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v84 = 32;
    v85 = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v7, v9);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v14 = v82;
    v13 = v83;
  }

  else
  {
    v13 = 0x800000026905C3C0;
    v14 = 0xD000000000000023;
  }

  v15 = sub_269057764();
  if (os_log_type_enabled(v15, v11))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v84 = v17;
    *v16 = 136315138;
    v18 = sub_269010108(v14, v13, &v84);

    *(v16 + 4) = v18;
    _os_log_impl(&dword_269002000, v15, v11, "%s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x26D6309D0](v17, -1, -1);
    MEMORY[0x26D6309D0](v16, -1, -1);
  }

  else
  {
  }

  v78 = OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_navigationStyle;
  v19 = 0x2802F3000uLL;
  if (*(v4 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_navigationStyle) == 2)
  {
    v20 = (v4 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_currentPresenter);
    if (*(v4 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_currentPresenter))
    {
      v21 = v20[1];
      v22 = *v20;
      ObjectType = swift_getObjectType();
      v24 = *(v21 + 80);
      swift_unknownObjectRetain();
      v25 = v24(ObjectType, v21);
      v19 = 0x2802F3000;
      v26 = v25;
      swift_unknownObjectRelease();
      if (v26)
      {
        v27 = *(v4 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_navigationController);
        if (*(v4 + v78))
        {
          if (*(v4 + v78) == 1)
          {
            v28 = 0x800000026905C410;
            v29 = v27;
            v30 = sub_269057A94();
            v31 = 0xD000000000000032;
            v82 = 0xD000000000000032;
            v83 = 0x800000026905C410;
            if ((":navigationStyle:)" & 0x2F00000000000000) != 0x2000000000000000)
            {
              v84 = 32;
              v85 = 0xE100000000000000;
              MEMORY[0x26D62FBC0](0xD000000000000031, 0x800000026905C450);
              MEMORY[0x26D62FBC0](v84, v85);

              v31 = v82;
              v28 = v83;
            }

            v32 = sub_269057764();
            if (os_log_type_enabled(v32, v30))
            {
              v33 = swift_slowAlloc();
              v77 = v29;
              v34 = swift_slowAlloc();
              v84 = v34;
              *v33 = 136315138;
              v35 = sub_269010108(v31, v28, &v84);
              v36 = v30;
              v37 = v35;

              *(v33 + 4) = v37;
              _os_log_impl(&dword_269002000, v32, v36, "%s", v33, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v34);
              MEMORY[0x26D6309D0](v34, -1, -1);
              MEMORY[0x26D6309D0](v33, -1, -1);
            }

            else
            {
            }

            v19 = 0x2802F3000uLL;
            goto LABEL_24;
          }
        }

        else
        {
          v38 = v27;
        }
      }
    }
  }

LABEL_24:
  swift_beginAccess();
  v39 = *(a1 + 16);
  v41 = *(v4 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_enrollmentData);
  v40 = *(v4 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_enrollmentData + 8);
  if (v39 <= 2)
  {
    v42 = 0xD000000000000023;
    if (*(a1 + 16))
    {
      if (v39 == 1)
      {
        v47 = objc_allocWithZone(type metadata accessor for LanguageSelectionPresenter());

        v44 = sub_26904203C(v41, v40, a2, a3, a1);
        v45 = &off_2879A84A0;
        v46 = &OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_delegate;
      }

      else
      {
        v51 = objc_allocWithZone(type metadata accessor for VoiceTrainingPresenter());

        v44 = sub_269033924(v41, v40, a2, a3, 0, 0, a1);
        v45 = &off_2879A8050;
        v46 = &OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_delegate;
      }
    }

    else
    {
      v49 = objc_allocWithZone(type metadata accessor for IntroPresenter());
      v50 = v41;

      v44 = sub_26901F810(v50, v40, a2, a3, a1);
      v45 = &off_2879A7A70;
      v46 = &OBJC_IVAR____TtC9SiriSetup14IntroPresenter_delegate;
    }
  }

  else
  {
    v42 = 0xD000000000000023;
    if (*(a1 + 16) > 4u)
    {
      if (v39 == 5)
      {
        v48 = objc_allocWithZone(type metadata accessor for EducationPresenter());

        v44 = sub_26900A6F4(v41, v40, a2, a3, a1);
        v45 = &off_2879A6B60;
        v46 = &OBJC_IVAR____TtC9SiriSetup18EducationPresenter_delegate;
      }

      else
      {
        v53 = objc_allocWithZone(type metadata accessor for DataSharingPresenter());

        v44 = sub_269018458(v41, v40, a2, a3, a1);
        v45 = &off_2879A73A0;
        v46 = &OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_delegate;
      }
    }

    else if (v39 == 3)
    {
      v43 = objc_allocWithZone(type metadata accessor for SuccessPresenter());

      v44 = sub_2690545F0(v41, v40, a2, a3, a1);
      v45 = &off_2879A9020;
      v46 = &OBJC_IVAR____TtC9SiriSetup16SuccessPresenter_delegate;
    }

    else
    {
      v52 = objc_allocWithZone(type metadata accessor for VoiceSelectionPresenter());

      v44 = sub_26903019C(v41, v40, a2, a3, a1);
      v45 = &off_2879A7DB0;
      v46 = &OBJC_IVAR____TtC9SiriSetup23VoiceSelectionPresenter_delegate;
    }
  }

  *(v44 + *v46 + 8) = &off_2879A6C40;
  swift_unknownObjectWeakAssign();
  v54 = v19;
  v55 = (v4 + *(v19 + 1272));
  v56 = *v55;
  *v55 = v44;
  v55[1] = v45;
  swift_unknownObjectRelease();
  sub_26900DD50();
  v84 = 0;
  v85 = 0xE000000000000000;
  sub_269057C54();

  v84 = 0xD000000000000014;
  v85 = 0x800000026905C3F0;
  v57 = sub_269011260();
  MEMORY[0x26D62FBC0](v57);

  v58 = v84;
  v59 = v85;
  v60 = sub_269057AA4();
  v84 = 0xD000000000000023;
  v85 = 0x800000026905C3C0;
  v61 = HIBYTE(v59) & 0xF;
  if ((v59 & 0x2000000000000000) == 0)
  {
    v61 = v58 & 0xFFFFFFFFFFFFLL;
  }

  if (v61)
  {
    v81[0] = 32;
    v81[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v58, v59);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v42 = v84;
    v6 = v85;
  }

  v62 = sub_269057764();
  if (os_log_type_enabled(v62, v60))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v81[0] = v64;
    *v63 = 136315138;
    v65 = sub_269010108(v42, v6, v81);

    *(v63 + 4) = v65;
    _os_log_impl(&dword_269002000, v62, v60, "%s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    MEMORY[0x26D6309D0](v64, -1, -1);
    MEMORY[0x26D6309D0](v63, -1, -1);
  }

  else
  {
  }

  v66 = (v4 + *(v54 + 1272));
  if (*v66)
  {
    v67 = v66[1];
    v68 = *v66;
    v69 = swift_getObjectType();
    v70 = *(v67 + 80);
    swift_unknownObjectRetain();
    v71 = v70(v69, v67);
    swift_unknownObjectRelease();
    if (v71)
    {
      if (*(v4 + v78) <= 1u)
      {
        [*(v4 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_navigationController) pushViewController:v71 animated:1];
      }
    }
  }

  v72 = v4 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v73 = *(v72 + 8);
    v74 = swift_getObjectType();
    LOBYTE(v84) = *(a1 + 16);
    (*(v73 + 16))(&v84, v74, v73);
    swift_unknownObjectRelease();
  }

  v75 = *(v4 + OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_analytics);
  LOBYTE(v84) = *(a1 + 16);

  sub_26902536C(&v84);
}

uint64_t sub_26900FBD0()
{
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v0 = sub_269057774();
  __swift_project_value_buffer(v0, qword_2802F3FF8);
  v1 = sub_269057AA4();
  v2 = sub_269057764();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7[0] = v4;
    *v3 = 136315138;
    v5 = sub_269010108(0xD000000000000013, 0x800000026905C500, v7);

    *(v3 + 4) = v5;
    _os_log_impl(&dword_269002000, v2, v1, "%s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x26D6309D0](v4, -1, -1);
    MEMORY[0x26D6309D0](v3, -1, -1);
  }

  else
  {
  }

  v7[1] = 0;
  v7[2] = 0;
  v7[0] = 1;
  v8 = 0;
  sub_26900E0E8(v7);

  return sub_2690109D8(1, 0, 0);
}

uint64_t SiriSetupCoordinator.ViewConfiguration.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_269057E74();
  sub_269057E74();
  return sub_269057E74();
}

uint64_t SiriSetupCoordinator.ViewConfiguration.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_269057E54();
  sub_269057E74();
  sub_269057E74();
  sub_269057E74();
  return sub_269057E84();
}

uint64_t sub_26900FEF4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_269057E74();
  sub_269057E74();
  return sub_269057E74();
}

uint64_t sub_26900FF40()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_269057E54();
  sub_269057E74();
  sub_269057E74();
  sub_269057E74();
  return sub_269057E84();
}

uint64_t SiriSetupCoordinator.Configuration.iCloudAltDSID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void *SiriSetupCoordinator.Configuration.assistantConfiguration.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t SiriSetupCoordinator.Configuration.delegate.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return swift_unknownObjectRetain();
}

uint64_t SiriSetupCoordinator.Configuration.init(assistantConfiguration:enrollmentMode:delegate:navigationController:iCloudAltDSID:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *a2;
  *a8 = a6;
  *(a8 + 8) = a7;
  *(a8 + 16) = result;
  *(a8 + 24) = v8;
  *(a8 + 32) = a3;
  *(a8 + 40) = a4;
  *(a8 + 48) = a5;
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_269010108(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2690101D4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_269010F14(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_2690101D4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2690102E0(a5, a6);
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
    result = sub_269057C74();
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

uint64_t sub_2690102E0(uint64_t a1, unint64_t a2)
{
  v4 = sub_26901032C(a1, a2);
  sub_26901045C(&unk_2879A6708);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26901032C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_269010548(v5, 0);
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

  result = sub_269057C74();
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
        v10 = sub_2690579A4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_269010548(v10, 0);
        result = sub_269057C44();
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

uint64_t sub_26901045C(uint64_t result)
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

  result = sub_2690105BC(result, v12, 1, v3);
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

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

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

void *sub_269010548(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3558, &unk_26905A0D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2690105BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3558, &unk_26905A0D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void sub_2690106B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriLanguage + 8);
  if (v4)
  {
    v5 = *(a1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriLanguage);
    v6 = *(a1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriLanguage + 8);

    sub_269048F98(v5, v4);
  }

  v7 = *(a1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriVoice);
  if (v7)
  {
    v8 = *(a2 + OBJC_IVAR____TtC9SiriSetup8Defaults_localDataSource);
    v9 = *(v8 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriVoice);
    *(v8 + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriVoice) = v7;
    v10 = v7;

    if (qword_2802F3220 != -1)
    {
      swift_once();
    }

    v11 = [objc_opt_self() sharedPreferences];
    [v11 setOutputVoice_];
  }

  v12 = *(a1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriEnabled);
  if (v12)
  {
    *(*(a2 + OBJC_IVAR____TtC9SiriSetup8Defaults_localDataSource) + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriEnabled) = v12 == 2;
    if (qword_2802F3220 != -1)
    {
      swift_once();
    }

    v13 = [objc_opt_self() sharedPreferences];
    [v13 setAssistantIsEnabled_];
  }

  if ((*(a1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriDataSharingStatus + 8) & 1) == 0)
  {
    sub_26904A204(*(a1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriDataSharingStatus));
  }

  v14 = *(a1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_recognizeMyVoiceEnabled);
  if (v14)
  {
    sub_2690497A0(v14 == 2);
  }

  v15 = *(a1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_voiceTriggerEnabled);
  if (v15)
  {
    v16 = v15 == 2;
    *(*(a2 + OBJC_IVAR____TtC9SiriSetup8Defaults_localDataSource) + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_voiceTriggerEnabled) = v16;
    v17 = *(a2 + OBJC_IVAR____TtC9SiriSetup8Defaults_settings);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    v22[4] = sub_269010F0C;
    v22[5] = v18;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 1107296256;
    v22[2] = sub_269049CAC;
    v22[3] = &block_descriptor_53;
    v19 = _Block_copy(v22);
    v20 = v17;

    [v20 setVoiceTriggerEnabled:v16 withCompletion:v19];
    _Block_release(v19);
  }

  v21 = *(a1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_setupDismissed);
  if (v21)
  {
    *(a2 + OBJC_IVAR____TtC9SiriSetup8Defaults_setupDismissed) = v21 == 2;
  }
}

uint64_t sub_2690109D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_2690109EC()
{
  MEMORY[0x26D630A50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_269010A24()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 27, 7);
}

void sub_269010A5C()
{
  if (*(v0 + 26))
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  if (*(v0 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  sub_26900DCD4(*(v0 + 16), v2 | *(v0 + 24) | v1);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_269010AA8()
{
  result = qword_2802F3E00;
  if (!qword_2802F3E00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802F3E00);
  }

  return result;
}

unint64_t sub_269010AF8()
{
  result = qword_2802F3550;
  if (!qword_2802F3550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F3550);
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SiriSetupCoordinator.ViewConfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriSetupCoordinator.ViewConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_269010E44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269010E8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_269010EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_269010F14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_269010FD8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t sub_26901101C(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t SetupPage.__allocating_init(_:conditional:requiredSuccessorPage:dependencyForDataSourceCommitment:)(char *a1, char a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = *a1;
  v8 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v9 = [v8 UUIDString];

  v10 = sub_269057954();
  v12 = v11;

  *(v6 + 24) = v10;
  *(v6 + 32) = v12;
  *(v6 + 48) = 0;
  swift_weakInit();
  *(v6 + 16) = v7;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  swift_weakAssign();

  return v6;
}

uint64_t SetupPage.init(_:conditional:requiredSuccessorPage:dependencyForDataSourceCommitment:)(char *a1, char a2, uint64_t a3)
{
  v6 = *a1;
  v7 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v8 = [v7 UUIDString];

  v9 = sub_269057954();
  v11 = v10;

  *(v3 + 24) = v9;
  *(v3 + 32) = v11;
  *(v3 + 48) = 0;
  swift_weakInit();
  *(v3 + 16) = v6;
  *(v3 + 40) = a2;
  v12 = *(v3 + 48);
  *(v3 + 48) = a3;

  swift_weakAssign();

  return v3;
}

uint64_t sub_269011260()
{
  sub_269057C54();
  MEMORY[0x26D62FBC0](0x7954206567615028, 0xEC000000203A6570);
  swift_beginAccess();
  v6 = *(v0 + 16);
  sub_269057CB4();
  MEMORY[0x26D62FBC0](0x7469646E6F43202CLL, 0xEF203A6C616E6F69);
  if (*(v0 + 40))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 40))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x26D62FBC0](v1, v2);

  MEMORY[0x26D62FBC0](41, 0xE100000000000000);
  result = 0;
  if (*(v0 + 48))
  {

    sub_269057C54();

    v5 = sub_269011260(v4);
    MEMORY[0x26D62FBC0](v5);

    MEMORY[0x26D62FBC0](0xD00000000000001BLL, 0x800000026905C590);

    return 0;
  }

  return result;
}

uint64_t static SetupPage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    return 1;
  }

  else
  {
    return sub_269057DE4();
  }
}

uint64_t sub_269011444()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  sub_269057984();
}

uint64_t SetupPage.deinit()
{
  v1 = *(v0 + 32);

  swift_weakDestroy();
  v2 = *(v0 + 48);
  *(v0 + 48) = 0;

  if (v2)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v3 = *(v2 + 48);
      swift_retain_n();

      v2 = v3;
    }

    while (v3);
  }

  return v0;
}

uint64_t SetupPage.__deallocating_deinit()
{
  SetupPage.deinit();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_269011558()
{
  sub_269057E54();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  sub_269057984();

  return sub_269057E84();
}

uint64_t sub_2690115D8()
{
  v1 = *v0;
  sub_269057E54();
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);

  sub_269057984();

  return sub_269057E84();
}

uint64_t sub_269011638()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(v1 + 32);

  sub_269057984();
}

uint64_t sub_269011694()
{
  sub_269057E54();
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 32);

  sub_269057984();

  return sub_269057E84();
}

uint64_t sub_2690116F0(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 24) == *(*a2 + 24) && *(*a1 + 32) == *(*a2 + 32))
  {
    return 1;
  }

  else
  {
    return sub_269057DE4();
  }
}

uint64_t PageType.hashValue.getter()
{
  v1 = *v0;
  sub_269057E54();
  MEMORY[0x26D630090](v1);
  return sub_269057E84();
}

unint64_t sub_2690117F0()
{
  result = qword_2802F3560;
  if (!qword_2802F3560)
  {
    type metadata accessor for SetupPage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F3560);
  }

  return result;
}

unint64_t sub_26901186C()
{
  result = qword_2802F3568;
  if (!qword_2802F3568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F3568);
  }

  return result;
}

uint64_t sub_2690118C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_269011908(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_269011BCC()
{
  v1 = *v0;
  sub_269057E54();
  MEMORY[0x26D630090](v1);
  return sub_269057E84();
}

uint64_t sub_269011C14()
{
  v1 = *v0;
  sub_269057E54();
  MEMORY[0x26D630090](v1);
  return sub_269057E84();
}

uint64_t sub_269011C58(char *a1)
{
  v2 = *a1;
  v129 = MEMORY[0x277D84F90];
  if (*(v1 + OBJC_IVAR____TtC9SiriSetup12Configurator_enrollmentMode) - 1 >= 2)
  {
    if (*(v1 + OBJC_IVAR____TtC9SiriSetup12Configurator_enrollmentMode))
    {
      v3 = type metadata accessor for SetupPage();
      v91 = swift_allocObject();
      v92 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
      v93 = [v92 UUIDString];

      v94 = sub_269057954();
      v96 = v95;

      *(v91 + 24) = v94;
      *(v91 + 32) = v96;
      *(v91 + 48) = 0;
      swift_weakInit();
      *(v91 + 16) = 5;
      *(v91 + 40) = 0;
      v97 = *(v91 + 48);
      *(v91 + 48) = 0;

      swift_weakAssign();

      MEMORY[0x26D62FBE0](v98);
      if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v125 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2690579F4();
      }

      sub_269057A04();
      v99 = swift_allocObject();
      v100 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
      v101 = [v100 UUIDString];

      v102 = sub_269057954();
      v104 = v103;

      *(v99 + 24) = v102;
      *(v99 + 32) = v104;
      *(v99 + 48) = 0;
      swift_weakInit();
      *(v99 + 16) = 6;
      *(v99 + 40) = 1;
      v105 = *(v99 + 48);
      *(v99 + 48) = 0;

      swift_weakAssign();

      MEMORY[0x26D62FBE0](v106);
      if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v126 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2690579F4();
      }

      sub_269057A04();
    }

    else
    {
      v127 = v2;
      v3 = type metadata accessor for SetupPage();
      v35 = swift_allocObject();
      v36 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
      v37 = [v36 UUIDString];

      v38 = sub_269057954();
      v40 = v39;

      *(v35 + 24) = v38;
      *(v35 + 32) = v40;
      *(v35 + 48) = 0;
      swift_weakInit();
      *(v35 + 16) = 4;
      *(v35 + 40) = 1;
      v41 = *(v35 + 48);
      *(v35 + 48) = 0;

      swift_weakAssign();
      v42 = swift_allocObject();
      v43 = objc_allocWithZone(MEMORY[0x277CCAD78]);
      swift_retain_n();
      v44 = [v43 init];
      v45 = [v44 UUIDString];

      v46 = sub_269057954();
      v48 = v47;

      *(v42 + 24) = v46;
      *(v42 + 32) = v48;
      *(v42 + 48) = 0;
      swift_weakInit();
      *(v42 + 16) = 1;
      *(v42 + 40) = 1;
      v49 = *(v42 + 48);
      *(v42 + 48) = 0;

      swift_weakAssign();

      v50 = swift_allocObject();
      v51 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
      v52 = [v51 UUIDString];

      v53 = sub_269057954();
      v55 = v54;

      *(v50 + 24) = v53;
      *(v50 + 32) = v55;
      *(v50 + 48) = 0;
      swift_weakInit();
      *(v50 + 16) = 0;
      *(v50 + 40) = 0;
      v56 = *(v50 + 48);
      *(v50 + 48) = 0;

      swift_weakAssign();

      MEMORY[0x26D62FBE0](v57);
      if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v119 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2690579F4();
      }

      sub_269057A04();

      MEMORY[0x26D62FBE0](v58);
      if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v120 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2690579F4();
      }

      sub_269057A04();

      MEMORY[0x26D62FBE0](v59);
      if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v121 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2690579F4();
      }

      sub_269057A04();
      v60 = swift_allocObject();
      v61 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
      v62 = [v61 UUIDString];

      v63 = sub_269057954();
      v65 = v64;

      *(v60 + 24) = v63;
      *(v60 + 32) = v65;
      *(v60 + 48) = 0;
      swift_weakInit();
      *(v60 + 16) = 3;
      *(v60 + 40) = 0;
      v66 = *(v60 + 48);
      *(v60 + 48) = 0;

      swift_weakAssign();
      v67 = swift_allocObject();
      v68 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
      v69 = [v68 &selRef_qualifiedMessageName];

      v70 = sub_269057954();
      v72 = v71;

      *(v67 + 24) = v70;
      *(v67 + 32) = v72;
      *(v67 + 48) = 0;
      swift_weakInit();
      *(v67 + 16) = 2;
      *(v67 + 40) = 1;
      v73 = *(v67 + 48);
      *(v67 + 48) = v60;

      swift_weakAssign();

      MEMORY[0x26D62FBE0](v74);
      if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v122 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2690579F4();
      }

      sub_269057A04();
      v75 = swift_allocObject();
      v76 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
      v77 = [v76 UUIDString];

      v78 = sub_269057954();
      v80 = v79;

      *(v75 + 24) = v78;
      *(v75 + 32) = v80;
      *(v75 + 48) = 0;
      swift_weakInit();
      *(v75 + 16) = 5;
      *(v75 + 40) = 0;
      v81 = *(v75 + 48);
      *(v75 + 48) = 0;

      swift_weakAssign();

      MEMORY[0x26D62FBE0](v82);
      if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v123 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2690579F4();
      }

      sub_269057A04();
      v83 = swift_allocObject();
      v84 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
      v85 = [v84 UUIDString];

      v86 = sub_269057954();
      v88 = v87;

      *(v83 + 24) = v86;
      *(v83 + 32) = v88;
      *(v83 + 48) = 0;
      swift_weakInit();
      *(v83 + 16) = 6;
      *(v83 + 40) = 1;
      v89 = *(v83 + 48);
      *(v83 + 48) = 0;

      swift_weakAssign();

      MEMORY[0x26D62FBE0](v90);
      if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v124 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2690579F4();
      }

      sub_269057A04();

      v2 = v127;
    }
  }

  else
  {
    v3 = type metadata accessor for SetupPage();
    v4 = swift_allocObject();
    v5 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
    v6 = [v5 UUIDString];

    v7 = sub_269057954();
    v9 = v8;

    *(v4 + 24) = v7;
    *(v4 + 32) = v9;
    *(v4 + 48) = 0;
    swift_weakInit();
    *(v4 + 16) = 0;
    *(v4 + 40) = 0;
    v10 = *(v4 + 48);
    *(v4 + 48) = 0;

    v11 = swift_weakAssign();
    MEMORY[0x26D62FBE0](v11);
    if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v116 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2690579F4();
    }

    sub_269057A04();
    v12 = swift_allocObject();
    v13 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
    v14 = [v13 UUIDString];

    v15 = sub_269057954();
    v17 = v16;

    *(v12 + 24) = v15;
    *(v12 + 32) = v17;
    *(v12 + 48) = 0;
    swift_weakInit();
    *(v12 + 16) = 3;
    *(v12 + 40) = 0;
    v18 = *(v12 + 48);
    *(v12 + 48) = 0;

    swift_weakAssign();
    v19 = swift_allocObject();
    v20 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
    v21 = [v20 UUIDString];

    v22 = sub_269057954();
    v24 = v23;

    *(v19 + 24) = v22;
    *(v19 + 32) = v24;
    *(v19 + 48) = 0;
    swift_weakInit();
    *(v19 + 16) = 2;
    *(v19 + 40) = 1;
    v25 = *(v19 + 48);
    *(v19 + 48) = v12;

    v26 = swift_weakAssign();
    MEMORY[0x26D62FBE0](v26);
    if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v117 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2690579F4();
    }

    sub_269057A04();
    v27 = swift_allocObject();
    v28 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
    v29 = [v28 UUIDString];

    v30 = sub_269057954();
    v32 = v31;

    *(v27 + 24) = v30;
    *(v27 + 32) = v32;
    *(v27 + 48) = 0;
    swift_weakInit();
    *(v27 + 16) = 6;
    *(v27 + 40) = 1;
    v33 = *(v27 + 48);
    *(v27 + 48) = 0;

    v34 = swift_weakAssign();
    MEMORY[0x26D62FBE0](v34);
    if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v118 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2690579F4();
    }

    sub_269057A04();
  }

  v107 = v129;
  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD000000000000019, 0x800000026905C6B0);
  LOBYTE(v128[0]) = v2;
  sub_269057CB4();
  MEMORY[0x26D62FBC0](0x6572206874697720, 0xEE00203A746C7573);
  type metadata accessor for SetupPage();
  v108 = MEMORY[0x26D62FC10](v129, v3);
  MEMORY[0x26D62FBC0](v108);

  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v109 = sub_269057774();
  __swift_project_value_buffer(v109, qword_2802F3FF8);
  v110 = sub_269057AA4();
  v128[2] = 0xD000000000000013;
  v128[3] = 0x800000026905C690;
  v111 = sub_269057764();
  if (os_log_type_enabled(v111, v110))
  {
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v128[0] = v113;
    *v112 = 136315138;
    v114 = sub_269010108(0xD000000000000013, 0x800000026905C690, v128);

    *(v112 + 4) = v114;
    _os_log_impl(&dword_269002000, v111, v110, "%s", v112, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v113);
    MEMORY[0x26D6309D0](v113, -1, -1);
    MEMORY[0x26D6309D0](v112, -1, -1);
  }

  else
  {
  }

  return v107;
}

id sub_269012AC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Configurator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for SRSNavigationStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SRSNavigationStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_269012C84()
{
  result = qword_2802F3580;
  if (!qword_2802F3580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F3580);
  }

  return result;
}

char *sub_269012CF0(char a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D61A68]) initWithFrame_];
  *&v1[OBJC_IVAR____TtC9SiriSetup16OrbContainerView_orbView] = v3;
  type metadata accessor for CheckMarkView();
  *&v1[OBJC_IVAR____TtC9SiriSetup16OrbContainerView_checkMark] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1[OBJC_IVAR____TtC9SiriSetup16OrbContainerView_fitsToSuperView] = a1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for OrbContainerView();
  v4 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = OBJC_IVAR____TtC9SiriSetup16OrbContainerView_checkMark;
  [*&v4[OBJC_IVAR____TtC9SiriSetup16OrbContainerView_checkMark] setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = OBJC_IVAR____TtC9SiriSetup16OrbContainerView_orbView;
  [*&v4[OBJC_IVAR____TtC9SiriSetup16OrbContainerView_orbView] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v4[v6] setMode_];
  [v4 addSubview_];
  [v4 addSubview_];

  return v4;
}

void sub_269012E9C()
{
  v27.receiver = v0;
  v27.super_class = type metadata accessor for OrbContainerView();
  objc_msgSendSuper2(&v27, sel_updateConstraints);
  if (v0[OBJC_IVAR____TtC9SiriSetup16OrbContainerView_fitsToSuperView] == 1)
  {
    v1 = [v0 superview];
    if (v1)
    {
      v2 = v1;
      v3 = [v0 heightAnchor];
      v4 = [v2 heightAnchor];
      v5 = [v3 constraintEqualToAnchor_];

      [v5 setActive_];
      v6 = [v0 widthAnchor];
      v7 = [v2 widthAnchor];
      v8 = [v6 constraintEqualToAnchor_];

      [v8 setActive_];
    }
  }

  v9 = OBJC_IVAR____TtC9SiriSetup16OrbContainerView_orbView;
  v10 = [*&v0[OBJC_IVAR____TtC9SiriSetup16OrbContainerView_orbView] heightAnchor];
  v11 = [v10 constraintEqualToConstant_];

  [v11 setActive_];
  v12 = [*&v0[v9] widthAnchor];
  v13 = [v12 constraintEqualToConstant_];

  [v13 setActive_];
  v14 = [*&v0[v9] centerXAnchor];
  v15 = [v0 centerXAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  [v16 setActive_];
  v17 = [*&v0[v9] centerYAnchor];
  v18 = [v0 centerYAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  [v19 setActive_];
  v20 = OBJC_IVAR____TtC9SiriSetup16OrbContainerView_checkMark;
  v21 = [*&v0[OBJC_IVAR____TtC9SiriSetup16OrbContainerView_checkMark] centerXAnchor];
  v22 = [*&v0[v9] centerXAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  [v23 setActive_];
  v24 = [*&v0[v20] centerYAnchor];
  v25 = [*&v0[v9] centerYAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  [v26 setActive_];
}

id sub_2690132FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OrbContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2690133A0(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_26901342C(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v57[0] = a2;
  v57[1] = a3;
  v4 = a1[11];
  v69 = a1[10];
  v70 = v4;
  v71 = a1[12];
  v5 = a1[7];
  v65 = a1[6];
  v66 = v5;
  v6 = a1[9];
  v67 = a1[8];
  v68 = v6;
  v7 = a1[3];
  v61 = a1[2];
  v62 = v7;
  v8 = a1[5];
  v63 = a1[4];
  v64 = v8;
  v9 = a1[1];
  v60[0] = *a1;
  v60[1] = v9;
  *&v3[OBJC_IVAR____TtC9SiriSetup31VoiceSelectionWelcomeController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC9SiriSetup31VoiceSelectionWelcomeController_orbView] = 0;
  *&v3[OBJC_IVAR____TtC9SiriSetup31VoiceSelectionWelcomeController_currentVoiceSelection] = 0;
  v10 = 0x2802F3000uLL;
  v11 = OBJC_IVAR____TtC9SiriSetup31VoiceSelectionWelcomeController_voiceOptionsView;
  *&v3[v11] = [objc_allocWithZone(type metadata accessor for VoiceOptionsView()) init];
  *&v3[OBJC_IVAR____TtC9SiriSetup31VoiceSelectionWelcomeController_voiceSelectionPresenter] = 0;
  v12 = 0x2802F3000uLL;
  *&v3[OBJC_IVAR____TtC9SiriSetup31VoiceSelectionWelcomeController_continueButton] = 0;
  *&v3[OBJC_IVAR____TtC9SiriSetup31VoiceSelectionWelcomeController_primaryButton] = 0;
  v13 = sub_269057944();
  if (*(&v61 + 1))
  {

    v14 = sub_269057944();
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_269017F70();
  v16 = type metadata accessor for VoiceSelectionWelcomeController();
  v59.receiver = v3;
  v59.super_class = v16;
  v17 = objc_msgSendSuper2(&v59, sel_initWithTitle_detailText_icon_, v13, v14, v15);

  if (v67)
  {
    v58[3] = v16;
    v58[0] = v17;

    v18 = v17;
    v19 = sub_269057944();

    if (v16)
    {
      v20 = __swift_project_boxed_opaque_existential_1(v58, v16);
      v21 = *(v16 - 1);
      v22 = *(v21 + 64);
      MEMORY[0x28223BE20](v20);
      v24 = v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v24);
      v25 = sub_269057DD4();
      (*(v21 + 8))(v24, v16);
      v12 = 0x2802F3000;
      v10 = 0x2802F3000;
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
    }

    else
    {
      v25 = 0;
    }

    v26 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithTitle:v19 style:0 target:v25 action:sel_continueTapped];

    swift_unknownObjectRelease();
    v27 = *(v12 + 1480);
    v28 = *&v18[v27];
    *&v18[v27] = v26;

    v29 = [v18 navigationItem];
    v30 = *&v18[v27];
    [v29 setRightBarButtonItem_];

    v31 = *&v18[v27];
    if (v31)
    {
      [v31 setEnabled_];
    }
  }

  if (v64)
  {
    v32 = objc_opt_self();

    v33 = [v32 linkButton];
    v34 = sub_269057944();

    [v33 setTitle:v34 forState:0];

    [v33 addTarget:v17 action:sel_chooseForMeTapped forControlEvents:64];
    v35 = [v17 buttonTray];
    [v35 addButton_];
  }

  v36 = [objc_allocWithZone(MEMORY[0x277D61A40]) init];
  v37 = [objc_allocWithZone(MEMORY[0x277D61A88]) init];
  v38 = *(v10 + 1464);
  v39 = *&v17[v38];
  v40 = objc_allocWithZone(MEMORY[0x277D61A90]);
  v41 = v17;
  v42 = v37;
  v43 = v39;
  v44 = v36;

  v45 = sub_269057944();

  v46 = [v40 initWithDataManaging:v42 view:v43 delegate:v41 voicePreviewing:v44 recognitionLanguage:v45];

  v47 = *&v41[OBJC_IVAR____TtC9SiriSetup31VoiceSelectionWelcomeController_voiceSelectionPresenter];
  *&v41[OBJC_IVAR____TtC9SiriSetup31VoiceSelectionWelcomeController_voiceSelectionPresenter] = v46;

  [v41 setTableView_];
  v48 = [v41 tableView];
  if (!v48)
  {
    __break(1u);
    goto LABEL_17;
  }

  v49 = v48;
  [v48 setAlwaysBounceVertical_];

  v50 = [v41 tableView];
  if (!v50)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v51 = v50;
  v52 = [v50 heightAnchor];

  v53 = [v41 tableView];
  if (v53)
  {

    sub_269009EE0(v60);
    [v53 sizeThatFits_];
    v55 = v54;

    v56 = [v52 constraintEqualToConstant_];
    [v56 setActive_];

    return;
  }

LABEL_18:
  __break(1u);
}

void sub_269013A5C()
{
  v1 = OBJC_IVAR____TtC9SiriSetup31VoiceSelectionWelcomeController_currentVoiceSelection;
  if (*(v0 + OBJC_IVAR____TtC9SiriSetup31VoiceSelectionWelcomeController_currentVoiceSelection))
  {
    [*(v0 + OBJC_IVAR____TtC9SiriSetup31VoiceSelectionWelcomeController_voiceSelectionPresenter) stopVoicePreview];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v0 + v1);
      v3 = v2;
      sub_269031B84(v2);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_269013E94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + *a4);
  *(a1 + *a4) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

id sub_269013ED8()
{
  v1 = OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView____lazy_storage___tableViewDataSource;
  v2 = *&v0[OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView____lazy_storage___tableViewDataSource];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView____lazy_storage___tableViewDataSource];
  }

  else
  {
    v4 = *&v0[OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_tableView];
    *(swift_allocObject() + 16) = v0;
    objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3700, &qword_26905A3C8));
    v5 = v4;
    v6 = v0;
    v7 = v0;
    v8 = sub_269057804();
    v9 = *&v0[v1];
    *&v7[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

unint64_t sub_269013FB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2690577B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v45[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a4 + OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_cellReuseIdentifier);
  v12 = *(a4 + OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_cellReuseIdentifier + 8);
  v13 = sub_269057944();
  v14 = [a1 dequeueReusableCellWithIdentifier_];

  if (!v14)
  {
    v15 = objc_allocWithZone(MEMORY[0x277D75B48]);
    v16 = sub_269057944();
    v14 = [v15 initWithStyle:0 reuseIdentifier:v16];
  }

  sub_269057794();
  v17 = *(a4 + OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_viewModel);
  if (!v17)
  {
    goto LABEL_26;
  }

  v18 = [v17 voices];
  sub_26900A408(0, &qword_2802F36F8, 0x277D61A98);
  v19 = sub_2690579D4();

  result = sub_269057734();
  v44 = a1;
  if ((v19 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x26D62FE90](result, v19);
LABEL_8:
    v22 = v21;

    v23 = [v22 localizedDisplayName];
    sub_269057954();

    sub_2690577A4();
    v45[3] = v6;
    v45[4] = MEMORY[0x277D74C30];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
    v25 = v6;
    (*(v7 + 16))(boxed_opaque_existential_1, v10, v6);
    MEMORY[0x26D62FCE0](v45);
    v26 = [v22 voiceInfo];
    v27 = [v26 name];

    if (v27)
    {
      v28 = sub_269057954();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v31 = *(a4 + OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_selectedVoice);
    if (v31 && (v32 = [v31 name]) != 0)
    {
      v33 = v32;
      v34 = sub_269057954();
      v36 = v35;

      v6 = v25;
      if (!v30)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v34 = 0;
      v36 = 0;
      if (!v30)
      {
LABEL_14:
        v37 = v44;
        if (v36)
        {
          goto LABEL_21;
        }

        goto LABEL_24;
      }
    }

    v37 = v44;
    if (!v36)
    {
LABEL_21:

LABEL_22:
      v38 = 0;
LABEL_25:
      [v14 setAccessoryType_];
      v40 = v14;
      [v40 setSemanticContentAttribute_];

LABEL_26:
      v41 = objc_opt_self();
      v42 = v14;
      v43 = [v41 secondarySystemBackgroundColor];
      [v42 setBackgroundColor_];

      (*(v7 + 8))(v10, v6);
      return v42;
    }

    if (v28 == v34 && v30 == v36)
    {
    }

    else
    {
      v39 = sub_269057DE4();

      if ((v39 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

LABEL_24:
    v38 = 3;
    goto LABEL_25;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v19 + 8 * result + 32);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

char *sub_269014408()
{
  v1 = OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_tableView;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_viewModel] = 0;
  v2 = &v0[OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_sectionReuseIdentifier];
  strcpy(&v0[OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_sectionReuseIdentifier], "voiceSection");
  v2[13] = 0;
  *(v2 + 7) = -5120;
  v3 = &v0[OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_cellReuseIdentifier];
  *v3 = 0xD000000000000010;
  *(v3 + 1) = 0x800000026905CAD0;
  *&v0[OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_selectedVoice] = 0;
  *&v0[OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_voiceSelectionViewModelProvider] = 0;
  *&v0[OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_voiceSelectionEventHandler] = 0;
  *&v0[OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView____lazy_storage___tableViewDataSource] = 0;
  v22.receiver = v0;
  v22.super_class = type metadata accessor for VoiceOptionsView();
  v4 = objc_msgSendSuper2(&v22, sel_init);
  v5 = OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_tableView;
  v6 = *&v4[OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_tableView];
  v7 = v4;
  [v6 setDelegate_];
  v8 = *&v4[v5];
  v9 = sub_269013ED8();
  [v8 setDataSource_];

  v10 = [*&v4[v5] layer];
  [v10 setCornerRadius_];

  [*&v4[v5] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v4[v5] setRowHeight_];
  v11 = *&v4[v5];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 systemBackgroundColor];
  [v13 setBackgroundColor_];

  v15 = *&v4[v5];
  sub_26900A408(0, &qword_2802F3708, 0x277D75B48);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = *&v7[OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_cellReuseIdentifier];
  v18 = *&v7[OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_cellReuseIdentifier + 8];
  v19 = v15;

  v20 = sub_269057944();

  [v19 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v20];

  return v7;
}

uint64_t sub_2690147C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_voiceSelectionViewModelProvider);
  if (v1)
  {
    v1 = [v1 voiceSelectionViewModel];
  }

  v2 = *(v0 + OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_viewModel);
  *(v0 + OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_viewModel) = v1;

  return sub_269014868();
}

uint64_t sub_269014868()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F36E8, &qword_26905A3B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - v5;
  sub_2690577F4();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F36F0, &qword_26905A3C0);
  v7 = swift_allocObject();
  v40 = xmmword_269059EE0;
  *(v7 + 16) = xmmword_269059EE0;
  v8 = *(v1 + OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_sectionReuseIdentifier + 8);
  v37 = *(v1 + OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_sectionReuseIdentifier);
  *(v7 + 32) = v37;
  *(v7 + 40) = v8;
  v35 = v8;

  v38 = v6;
  v39 = v2;
  sub_2690577E4();

  v9 = *(v1 + OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_viewModel);
  if (!v9)
  {
    goto LABEL_12;
  }

  v29 = v9;
  v10 = [v29 voices];
  sub_26900A408(0, &qword_2802F36F8, 0x277D61A98);
  v11 = sub_2690579D4();

  v30 = v1;
  v31 = v3;
  if (!(v11 >> 62))
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_11:

    v3 = v31;
LABEL_12:
    v26 = sub_269013ED8();
    v27 = v38;
    sub_269057814();

    return (*(v3 + 8))(v27, v39);
  }

  result = sub_269057CD4();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (result >= 1)
  {
    v13 = 0;
    v33 = v11 & 0xC000000000000001;
    v34 = v11;
    v32 = result;
    do
    {
      if (v33)
      {
        v14 = MEMORY[0x26D62FE90](v13, v11);
      }

      else
      {
        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      ++v13;
      v16 = swift_allocObject();
      *(v16 + 16) = v40;
      v17 = [v15 localizedDisplayName];
      v18 = sub_269057954();
      v20 = v19;

      *(v16 + 32) = v18;
      *(v16 + 40) = v20;
      v41 = v37;
      v42 = v35;

      sub_2690577C4();

      v21 = swift_allocObject();
      *(v21 + 16) = v40;
      v22 = [v15 localizedDisplayName];
      v23 = sub_269057954();
      v25 = v24;

      *(v21 + 32) = v23;
      *(v21 + 40) = v25;
      sub_2690577D4();

      v11 = v34;
    }

    while (v32 != v13);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

id sub_269014C00(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_269014D10()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_269014DB4(void *a1)
{
  v3 = OBJC_IVAR____TtC9SiriSetup31VoiceSelectionWelcomeController_currentVoiceSelection;
  v4 = *(v1 + OBJC_IVAR____TtC9SiriSetup31VoiceSelectionWelcomeController_currentVoiceSelection);
  *(v1 + OBJC_IVAR____TtC9SiriSetup31VoiceSelectionWelcomeController_currentVoiceSelection) = a1;
  v5 = a1;

  v6 = *(v1 + OBJC_IVAR____TtC9SiriSetup31VoiceSelectionWelcomeController_voiceOptionsView);
  v7 = *(v6 + OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_selectedVoice);
  *(v6 + OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_selectedVoice) = a1;
  v8 = v5;

  if (*(v1 + v3))
  {
    v9 = *(v1 + OBJC_IVAR____TtC9SiriSetup31VoiceSelectionWelcomeController_continueButton);
    if (v9)
    {
      [v9 setEnabled_];
    }

    v10 = *(v1 + OBJC_IVAR____TtC9SiriSetup31VoiceSelectionWelcomeController_primaryButton);
    if (v10)
    {

      [v10 setEnabled_];
    }
  }
}

void *sub_269014E88()
{
  result = *(v0 + OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_viewModel);
  if (result)
  {
    v2 = [result voices];
    sub_26900A408(0, &qword_2802F36F8, 0x277D61A98);
    v3 = sub_2690579D4();

    v4 = sub_269057734();
    if ((v3 & 0xC000000000000001) == 0)
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v4 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v5 = *(v3 + 8 * v4 + 32);
LABEL_6:

        v6 = *(v0 + OBJC_IVAR____TtC9SiriSetup16VoiceOptionsView_voiceSelectionEventHandler);
        if (v6)
        {
          [v6 voiceSelectionView:v0 receivedRequestToSelectVoice:?];
        }

        return MEMORY[0x2821F97C8]();
      }

      __break(1u);
      return MEMORY[0x2821F97C8]();
    }

    MEMORY[0x26D62FE90](v4, v3);
    goto LABEL_6;
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_269014FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v58 = a3;
  v55 = a1;
  v56 = a2;
  v4 = sub_269057874();
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v52 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2690578C4();
  v45 = v8;
  v59 = *(v8 - 8);
  v9 = *(v59 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v46 = &v44 - v13;
  v14 = sub_269057B24();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2690578A4();
  v49 = *(v19 - 8);
  v50 = v19;
  v20 = *(v49 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_269057B04();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v48 = [ObjCClassFromMetadata sharedInstance];
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  sub_269010AA8();
  sub_269057AF4();
  sub_269057884();
  (*(v15 + 104))(v18, *MEMORY[0x277D85260], v14);
  v26 = sub_269057B74();
  sub_2690578B4();
  v27 = v46;
  sub_269057904();
  v28 = *(v59 + 8);
  v59 += 8;
  v28(v12, v8);
  v29 = swift_allocObject();
  v29[2] = v26;
  v29[3] = v25;
  v30 = v57;
  v29[4] = v58;
  v29[5] = v30;
  v65 = sub_269015A3C;
  v66 = v29;
  aBlock = MEMORY[0x277D85DD0];
  v62 = 1107296256;
  v47 = &v63;
  v63 = sub_26900BEF0;
  v64 = &block_descriptor_2;
  v31 = _Block_copy(&aBlock);
  v32 = v26;

  sub_269057884();
  v60 = MEMORY[0x277D84F90];
  sub_26900A490();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F3E10, &unk_269059E90);
  sub_26900A4E8();
  v33 = v52;
  v34 = v53;
  sub_269057C14();
  MEMORY[0x26D62FD40](v27, v22, v33, v31);
  _Block_release(v31);
  (*(v54 + 8))(v33, v34);
  (*(v49 + 8))(v22, v50);
  v28(v27, v45);

  v35 = swift_allocObject();
  v35[2] = v32;
  v35[3] = v25;
  v36 = v57;
  v35[4] = v58;
  v35[5] = v36;
  v37 = v48;
  v38 = v55;
  v35[6] = v48;
  v35[7] = v38;
  v35[8] = v56;

  v39 = v32;

  v40 = v37;
  v41 = [ObjCClassFromMetadata sharedInstance];
  v42 = swift_allocObject();
  *(v42 + 16) = sub_269015F30;
  *(v42 + 24) = v35;
  v65 = sub_269016A58;
  v66 = v42;
  aBlock = MEMORY[0x277D85DD0];
  v62 = 1107296256;
  v63 = sub_269016A60;
  v64 = &block_descriptor_12;
  v43 = _Block_copy(&aBlock);

  [v41 getConformingSharedUserIds_];
  _Block_release(v43);
}

uint64_t sub_26901563C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a1 + 16) = 1;
    return a2(a4, a5, a6);
  }

  return result;
}

uint64_t sub_2690156DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v29 = a1;
  v30 = sub_2690578A4();
  v6 = *(v30 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v30);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_269057874();
  v10 = *(v28 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v28);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3778, &qword_26905A3E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269059EE0;
  v15 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_269057954();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v16;
  *(inited + 48) = 0xD000000000000013;
  *(inited + 56) = 0x800000026905CDD0;
  sub_269017054(inited);
  swift_setDeallocating();
  sub_269017164(inited + 32);
  v17 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v18 = sub_269057944();
  v19 = sub_269057914();

  v20 = [v17 initWithDomain:v18 code:-1 userInfo:v19];

  sub_269057864();
  v21 = swift_allocObject();
  v22 = v27;
  v21[2] = a2;
  v21[3] = v22;
  v21[4] = a4;
  v21[5] = v20;
  v21[6] = 0;
  v21[7] = 0;
  aBlock[4] = sub_2690173F0;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26900BEF0;
  aBlock[3] = &block_descriptor_57;
  v23 = _Block_copy(aBlock);

  v24 = v20;
  sub_269057884();
  MEMORY[0x26D62FD80](0, v9, v13, v23);
  _Block_release(v23);

  (*(v6 + 8))(v9, v30);
  (*(v10 + 8))(v13, v28);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_269015A60(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, unint64_t a7, unint64_t a8)
{
  v12 = 0xD000000000000026;
  v13 = 0x800000026905CCC0;
  if (*(a1 + 16))
  {
    aBlock = a7;
    v39 = a8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3548, &unk_269059F70);
    v15 = sub_269057964();
    v17 = v16;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v18 = sub_269057774();
    __swift_project_value_buffer(v18, qword_2802F3FF8);
    v19 = sub_269057AA4();
    sub_269053434(v19, 0xD000000000000026, 0x800000026905CCC0, 0xD000000000000029, 0x800000026905CCF0, v15, v17);

    v20 = sub_269057944();

    v21 = swift_allocObject();
    v21[2] = a2;
    v21[3] = a3;
    v21[4] = a4;
    v21[5] = a5;
    v42 = sub_269016ED8;
    v43 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_26901633C;
    v41 = &block_descriptor_18;
    v22 = _Block_copy(&aBlock);
    v23 = a2;

    [a6 getSharedUserIdForiCloudAltDSID:v20 completion:v22];
    goto LABEL_16;
  }

  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v24 = sub_269057774();
  __swift_project_value_buffer(v24, qword_2802F3FF8);
  v25 = sub_269057AA4();
  aBlock = 0xD000000000000026;
  v39 = 0x800000026905CCC0;
  if (("v24@?0@NSError8@NSString16" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v37[0] = 32;
    v37[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](0xD00000000000003ELL, 0x800000026905CD40);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v12 = aBlock;
    v13 = v39;
  }

  v26 = sub_269057764();
  if (os_log_type_enabled(v26, v25))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37[0] = v28;
    *v27 = 136315138;
    v29 = sub_269010108(v12, v13, v37);

    *(v27 + 4) = v29;
    _os_log_impl(&dword_269002000, v26, v25, "%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x26D6309D0](v28, -1, -1);
    MEMORY[0x26D6309D0](v27, -1, -1);
  }

  else
  {
  }

  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v30 = [objc_opt_self() sharedInstance];
  if (v30)
  {
    v20 = v30;
    v31 = swift_allocObject();
    v31[2] = a2;
    v31[3] = a3;
    v31[4] = a4;
    v31[5] = a5;
    v31[6] = a6;
    v31[7] = a7;
    v31[8] = a8;
    v42 = sub_269016F80;
    v43 = v31;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_2690163D4;
    v41 = &block_descriptor_24;
    v22 = _Block_copy(&aBlock);

    v32 = a2;

    v33 = a6;

    [v20 getSharedUserID_];
LABEL_16:
    _Block_release(v22);

    return;
  }

  __break(1u);
}

void sub_269015F44(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v40 = a1;
  v14 = sub_2690578A4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_269057874();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v36 = v22;
    v37 = v15;
    v38 = v14;
    v39 = a6;
    v25 = qword_2802F3258;

    if (v25 != -1)
    {
      swift_once();
    }

    v26 = sub_269057774();
    __swift_project_value_buffer(v26, qword_2802F3FF8);
    v27 = sub_269057AA4();
    v28 = v40;
    sub_269053434(v27, 0xD000000000000026, 0x800000026905CCC0, 0xD00000000000001CLL, 0x800000026905CDB0, v40, a2);

    sub_269057864();
    v29 = swift_allocObject();
    v29[2] = a7;
    v29[3] = a8;
    v29[4] = a9;
    v29[5] = 0;
    v29[6] = v28;
    v29[7] = a2;
    v45 = sub_269017050;
    v46 = v29;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_26900BEF0;
    v44 = &block_descriptor_36;
    v30 = _Block_copy(&aBlock);

    sub_269057884();
    MEMORY[0x26D62FD80](0, v18, v24, v30);
    _Block_release(v30);
    (*(v37 + 8))(v18, v38);
    (*(v20 + 8))(v24, v36);
  }

  else
  {

    v31 = sub_269057944();

    v32 = swift_allocObject();
    v32[2] = a6;
    v32[3] = a7;
    v32[4] = a8;
    v32[5] = a9;
    v45 = sub_269017000;
    v46 = v32;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_26901633C;
    v44 = &block_descriptor_30;
    v33 = _Block_copy(&aBlock);

    v34 = a6;

    [a10 getSharedUserIdForiCloudAltDSID:v31 completion:v33];
    _Block_release(v33);
  }
}

uint64_t sub_26901633C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a3)
  {
    v6 = sub_269057954();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a2;
  v5(a2, v6, v8);
}

uint64_t sub_2690163D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a2)
  {
    v8 = sub_269057954();
    v10 = v9;
    if (v5)
    {
LABEL_3:
      v11 = sub_269057954();
      v5 = v12;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_6:

  v13 = a4;
  v7(v8, v10, v11, v5, a4);
}

uint64_t sub_2690164A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v30 = a2;
  v31 = a6;
  v34 = a4;
  v32 = a10;
  v29 = a9;
  v33 = sub_2690578A4();
  v14 = *(v33 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v33);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_269057874();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269057864();
  v23 = swift_allocObject();
  v24 = v30;
  v25 = v31;
  v23[2] = a5;
  v23[3] = v25;
  v23[4] = a7;
  v23[5] = a1;
  v23[6] = v24;
  v23[7] = a3;
  aBlock[4] = v29;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26900BEF0;
  aBlock[3] = v32;
  v26 = _Block_copy(aBlock);

  v27 = a1;

  sub_269057884();
  MEMORY[0x26D62FD80](0, v17, v22, v26);
  _Block_release(v26);
  (*(v14 + 8))(v17, v33);
  (*(v19 + 8))(v22, v18);
}

uint64_t sub_2690166FC(uint64_t a1, void *a2, uint64_t (*a3)(void *))
{
  if (a2)
  {
    v5 = 0xD00000000000001DLL;
    v6 = 0x800000026905CC70;
    sub_269057C54();

    v22[0] = a2;
    v7 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F3E40, &qword_26905A3D8);
    v8 = sub_269057964();
    MEMORY[0x26D62FBC0](v8);

    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v9 = sub_269057774();
    __swift_project_value_buffer(v9, qword_2802F3FF8);
    v10 = sub_269057A94();
    v23 = 0xD00000000000001DLL;
    v24 = 0x800000026905CC70;
    v11 = (0x800000026905CC90 >> 56) & 0xF;
    if ((0x800000026905CC90 & 0x2000000000000000) == 0)
    {
      v11 = 39;
    }

    if (v11)
    {
      v22[0] = 32;
      v22[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD000000000000027, 0x800000026905CC90);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v5 = v23;
      v6 = v24;
    }

    v12 = sub_269057764();
    if (os_log_type_enabled(v12, v10))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22[0] = v14;
      *v13 = 136315138;
      v15 = sub_269010108(v5, v6, v22);

      *(v13 + 4) = v15;
      _os_log_impl(&dword_269002000, v12, v10, "%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x26D6309D0](v14, -1, -1);
      MEMORY[0x26D6309D0](v13, -1, -1);
    }

    else
    {
    }

    return a3(MEMORY[0x277D84F90]);
  }

  if (!a1)
  {
    return a3(MEMORY[0x277D84F90]);
  }

  v16 = *(a1 + 16);
  if (!v16)
  {
    return a3(MEMORY[0x277D84F90]);
  }

  v18 = sub_26904DF04(v16, 0);
  v19 = sub_269016D74(&v23, v18 + 4, v16, a1);

  result = sub_269016ECC();
  if (v19 == v16)
  {
    a3(v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269016A20()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_269016A60(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3770, &qword_26905A3D0);
    v4 = sub_269057924();
  }

  v7 = a3;
  v6(v4, a3);
}

unint64_t sub_269016B10(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_269057E54();
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);

  sub_269057984();

  v6 = sub_269057E84();

  return sub_269016C0C(a1, v6);
}

unint64_t sub_269016B94(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_269057E54();
  sub_269057984();
  v6 = sub_269057E84();

  return sub_269016CBC(a1, a2, v6);
}

unint64_t sub_269016C0C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);
      if (*(v7 + 24) == *(a1 + 24) && *(v7 + 32) == *(a1 + 32))
      {
        break;
      }

      if (sub_269057DE4())
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_269016CBC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_269057DE4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_269016D74(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

void sub_269016F80(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 56);
  v7 = *(v5 + 64);
  sub_269015F44(a1, a2, a3, a4, a5, *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48));
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_269017054(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3788, &unk_26905A3F0);
    v3 = sub_269057D04();
    v4 = a1 + 32;

    while (1)
    {
      sub_26901722C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_269016B94(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26901729C(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_269017164(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3780, &qword_26905A3E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_32Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26901722C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3780, &qword_26905A3E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_26901729C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_2690172AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3790, &qword_26905B590);
    v3 = sub_269057D04();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_269016B94(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_26901741C()
{
  type metadata accessor for ChameleonProvider();
  result = swift_initStaticObject();
  qword_2802F5100 = result;
  return result;
}

char *sub_26901746C(_BYTE *a1)
{
  v3 = [objc_allocWithZone(v1) init];
  v4 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriEnabled;
  swift_beginAccess();
  if (a1[v4])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  *&v3[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriEnabled] = v5;
  v6 = &a1[OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriLanguage];
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = &v3[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriLanguage];
  v10 = *&v3[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriLanguage + 8];
  *v9 = v7;
  *(v9 + 1) = v8;
  v11 = v3;

  v12 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriVoice;
  swift_beginAccess();
  v13 = *&a1[v12];
  v14 = *&v11[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriVoice];
  *&v11[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriVoice] = v13;
  v15 = v13;

  v16 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_recognizeMyVoiceEnabled;
  swift_beginAccess();
  if (a1[v16])
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  *&v11[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_recognizeMyVoiceEnabled] = v17;
  v18 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_voiceTriggerEnabled;
  swift_beginAccess();
  if (a1[v18])
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  *&v11[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_voiceTriggerEnabled] = v19;
  v20 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriInCallEnabled;
  swift_beginAccess();
  if (a1[v20])
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  *&v11[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriInCallEnabled] = v21;
  v22 = OBJC_IVAR____TtC9SiriSetup22AssistantConfiguration_siriDataSharingStatus;
  swift_beginAccess();
  v23 = *&a1[v22];

  v24 = &v11[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriDataSharingStatus];
  *v24 = v23;
  v24[8] = 0;

  return v11;
}

uint64_t sub_2690176DC()
{
  v1 = v0;
  strcpy(v40, "Data Writer ");
  BYTE5(v40[1]) = 0;
  HIWORD(v40[1]) = -5120;
  v2 = *(v0 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_id);
  v3 = *(v0 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_id + 8);

  MEMORY[0x26D62FBC0](v2, v3);

  v4 = OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriEnabled;
  if (*(v0 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriEnabled))
  {
    sub_269057C54();

    v39[0] = 0xD000000000000010;
    v39[1] = 0x800000026905CE20;
    v5 = *(v0 + v4);
    v6 = AFBooleanGetName();
    if (v6)
    {
      v7 = v6;
      sub_269057954();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3548, &unk_269059F70);
    v8 = sub_269057964();
    MEMORY[0x26D62FBC0](v8);

    MEMORY[0x26D62FBC0](v39[0], v39[1]);
  }

  v9 = *(v0 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriLanguage + 8);
  if (v9)
  {
    v10 = *(v0 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriLanguage);

    sub_269057C54();

    v39[0] = 0xD000000000000011;
    v39[1] = 0x800000026905CEE0;
    MEMORY[0x26D62FBC0](v10, v9);

    MEMORY[0x26D62FBC0](0xD000000000000011, 0x800000026905CEE0);
  }

  v11 = *(v0 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriVoice);
  if (v11)
  {
    v12 = v11;
    sub_269057C54();

    strcpy(v39, ", Siri Voice: ");
    HIBYTE(v39[1]) = -18;
    v13 = [v12 description];
    v14 = sub_269057954();
    v16 = v15;

    MEMORY[0x26D62FBC0](v14, v16);

    MEMORY[0x26D62FBC0](v39[0], v39[1]);
  }

  if ((*(v1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriDataSharingStatus + 8) & 1) == 0)
  {
    v17 = *(v1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriDataSharingStatus);
    v39[0] = 0;
    v39[1] = 0xE000000000000000;
    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD000000000000010, 0x800000026905CEC0);
    type metadata accessor for AFSiriDataSharingOptInStatus(0);
    sub_269057CB4();
    MEMORY[0x26D62FBC0](0, 0xE000000000000000);
  }

  v18 = OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_voiceTriggerEnabled;
  if (*(v1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_voiceTriggerEnabled))
  {
    sub_269057C54();

    v39[0] = 0xD000000000000019;
    v39[1] = 0x800000026905CE40;
    v19 = *(v1 + v18);
    v20 = AFBooleanGetName();
    if (v20)
    {
      v21 = v20;
      sub_269057954();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3548, &unk_269059F70);
    v22 = sub_269057964();
    MEMORY[0x26D62FBC0](v22);

    MEMORY[0x26D62FBC0](v39[0], v39[1]);
  }

  v23 = OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_recognizeMyVoiceEnabled;
  if (*(v1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_recognizeMyVoiceEnabled))
  {
    sub_269057C54();

    v39[0] = 0xD00000000000001ELL;
    v39[1] = 0x800000026905CE60;
    v24 = *(v1 + v23);
    v25 = AFBooleanGetName();
    if (v25)
    {
      v26 = v25;
      sub_269057954();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3548, &unk_269059F70);
    v27 = sub_269057964();
    MEMORY[0x26D62FBC0](v27);

    MEMORY[0x26D62FBC0](v39[0], v39[1]);
  }

  v28 = OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriInCallEnabled;
  if (*(v1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriInCallEnabled))
  {
    sub_269057C54();

    v39[0] = 0xD000000000000018;
    v39[1] = 0x800000026905CE80;
    v29 = *(v1 + v28);
    v30 = AFBooleanGetName();
    if (v30)
    {
      v31 = v30;
      sub_269057954();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3548, &unk_269059F70);
    v32 = sub_269057964();
    MEMORY[0x26D62FBC0](v32);

    MEMORY[0x26D62FBC0](v39[0], v39[1]);
  }

  v33 = OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_setupDismissed;
  if (*(v1 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_setupDismissed))
  {
    sub_269057C54();

    v39[0] = 0xD000000000000013;
    v39[1] = 0x800000026905CEA0;
    v34 = *(v1 + v33);
    v35 = AFBooleanGetName();
    if (v35)
    {
      v36 = v35;
      sub_269057954();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3548, &unk_269059F70);
    v37 = sub_269057964();
    MEMORY[0x26D62FBC0](v37);

    MEMORY[0x26D62FBC0](v39[0], v39[1]);
  }

  return v40[0];
}

id LocalDataSourceWriter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LocalDataSourceWriter.init()()
{
  *&v0[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriEnabled] = 0;
  v1 = &v0[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriLanguage];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriVoice] = 0;
  *&v0[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_recognizeMyVoiceEnabled] = 0;
  *&v0[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_voiceTriggerEnabled] = 0;
  *&v0[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriInCallEnabled] = 0;
  v2 = &v0[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriDataSharingStatus];
  *v2 = 0;
  v2[8] = 1;
  *&v0[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_setupDismissed] = 0;
  v3 = &v0[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_id];
  v4 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v5 = [v4 UUIDString];

  v6 = sub_269057954();
  v8 = v7;

  *v3 = v6;
  v3[1] = v8;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for LocalDataSourceWriter();
  return objc_msgSendSuper2(&v10, sel_init);
}

id LocalDataSourceWriter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocalDataSourceWriter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_269017F70()
{
  if (AFDeviceSupportsSAE())
  {
    v0 = objc_opt_self();
    v1 = sub_269057944();
    v2 = [v0 _applicationIconImageForBundleIdentifier_format_];
  }

  else
  {
    v3 = sub_269057944();
    v1 = [objc_opt_self() bundleWithIdentifier_];

    v4 = sub_269057944();
    v2 = [objc_opt_self() imageNamed:v4 inBundle:v1 withConfiguration:0];
  }

  return v2;
}

uint64_t sub_2690180A0(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_viewModel);
  swift_beginAccess();
  v4 = v3[11];
  v38[10] = v3[10];
  v38[11] = v4;
  v38[12] = v3[12];
  v5 = v3[7];
  v38[6] = v3[6];
  v38[7] = v5;
  v6 = v3[9];
  v38[8] = v3[8];
  v38[9] = v6;
  v7 = v3[3];
  v38[2] = v3[2];
  v38[3] = v7;
  v8 = v3[5];
  v38[4] = v3[4];
  v38[5] = v8;
  v9 = v3[1];
  v38[0] = *v3;
  v38[1] = v9;
  v10 = a1[11];
  v3[10] = a1[10];
  v3[11] = v10;
  v3[12] = a1[12];
  v11 = a1[7];
  v3[6] = a1[6];
  v3[7] = v11;
  v12 = a1[9];
  v3[8] = a1[8];
  v3[9] = v12;
  v13 = a1[3];
  v3[2] = a1[2];
  v3[3] = v13;
  v14 = a1[5];
  v3[4] = a1[4];
  v3[5] = v14;
  v15 = a1[1];
  *v3 = *a1;
  v3[1] = v15;
  result = sub_269009EE0(v38);
  v17 = v1 + OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_presentingViewController;
  v18 = *(v1 + OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_presentingViewController);
  if (v18)
  {
    v19 = *(v17 + 8);
    ObjectType = swift_getObjectType();
    v36[5] = v18;
    v21 = v3[11];
    v37[10] = v3[10];
    v37[11] = v21;
    v37[12] = v3[12];
    v22 = v3[7];
    v37[6] = v3[6];
    v37[7] = v22;
    v23 = v3[9];
    v37[8] = v3[8];
    v37[9] = v23;
    v24 = v3[3];
    v37[2] = v3[2];
    v37[3] = v24;
    v25 = v3[5];
    v37[4] = v3[4];
    v37[5] = v25;
    v26 = v3[1];
    v37[0] = *v3;
    v37[1] = v26;
    v36[3] = &type metadata for ViewModel;
    v36[4] = &off_2879A7790;
    v27 = swift_allocObject();
    v36[0] = v27;
    v28 = v3[11];
    v27[11] = v3[10];
    v27[12] = v28;
    v27[13] = v3[12];
    v29 = v3[7];
    v27[7] = v3[6];
    v27[8] = v29;
    v30 = v3[9];
    v27[9] = v3[8];
    v27[10] = v30;
    v31 = v3[3];
    v27[3] = v3[2];
    v27[4] = v31;
    v32 = v3[5];
    v27[5] = v3[4];
    v27[6] = v32;
    v33 = v3[1];
    v27[1] = *v3;
    v27[2] = v33;
    v34 = *(v19 + 16);
    sub_269009E3C(v37, &v35);
    v34(v36, 1, ObjectType, v19);
    return __swift_destroy_boxed_opaque_existential_1Tm(v36);
  }

  return result;
}

void (*sub_269018270(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1E0uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_viewModel;
  *(v3 + 464) = v1;
  *(v3 + 472) = v4;
  swift_beginAccess();
  return sub_2690182F8;
}

void sub_2690182F8(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[58];
    v5 = *(v4 + OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_presentingViewController);
    if (v5)
    {
      v6 = (v4 + v3[59]);
      v7 = *(v4 + OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_presentingViewController + 8);
      v8 = *(v4 + OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_presentingViewController);
      ObjectType = swift_getObjectType();
      v3[57] = v5;
      *v3 = *v6;
      v10 = v6[1];
      v11 = v6[2];
      v12 = v6[4];
      *(v3 + 3) = v6[3];
      *(v3 + 4) = v12;
      *(v3 + 1) = v10;
      *(v3 + 2) = v11;
      v13 = v6[5];
      v14 = v6[6];
      v15 = v6[8];
      *(v3 + 7) = v6[7];
      *(v3 + 8) = v15;
      *(v3 + 5) = v13;
      *(v3 + 6) = v14;
      v16 = v6[9];
      v17 = v6[10];
      v18 = v6[12];
      *(v3 + 11) = v6[11];
      *(v3 + 12) = v18;
      *(v3 + 9) = v16;
      *(v3 + 10) = v17;
      v3[55] = &type metadata for ViewModel;
      v3[56] = &off_2879A7790;
      v19 = swift_allocObject();
      v3[52] = v19;
      v19[1] = *v6;
      v20 = v6[4];
      v22 = v6[1];
      v21 = v6[2];
      v19[4] = v6[3];
      v19[5] = v20;
      v19[2] = v22;
      v19[3] = v21;
      v23 = v6[8];
      v25 = v6[5];
      v24 = v6[6];
      v19[8] = v6[7];
      v19[9] = v23;
      v19[6] = v25;
      v19[7] = v24;
      v26 = v6[12];
      v28 = v6[9];
      v27 = v6[10];
      v19[12] = v6[11];
      v19[13] = v26;
      v19[10] = v28;
      v19[11] = v27;
      v29 = *(v7 + 16);
      sub_269009E3C(v3, (v3 + 26));
      v29(v3 + 52, 1, ObjectType, v7);
      __swift_destroy_boxed_opaque_existential_1Tm(v3 + 52);
    }
  }

  free(v3);
}

_BYTE *sub_269018458(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *&v6[OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_optInRadioButtonSelection] = 0;
  v12 = &v6[OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_presentingViewController];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v6[OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_dataSource];
  *v13 = a1;
  v13[1] = a2;
  v14 = &v6[OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_dataSourceWriter];
  *v14 = a3;
  v14[1] = a4;
  ObjectType = swift_getObjectType();
  v16 = *(a2 + 80);
  v17 = a1;
  v60 = a3;
  v6[OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_viewStyle] = v16(ObjectType, a2);
  v18 = &v6[OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_viewModel];
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0xD00000000000001ALL;
  *(v18 + 3) = 0x800000026905D020;
  *(v18 + 4) = 0;
  *(v18 + 5) = 0;
  *(v18 + 6) = 0;
  *(v18 + 7) = 0xE000000000000000;
  *(v18 + 18) = 0;
  *(v18 + 7) = 0u;
  *(v18 + 8) = 0u;
  *(v18 + 5) = 0u;
  *(v18 + 6) = 0u;
  *(v18 + 4) = 0u;
  v18[152] = 2;
  *(v18 + 183) = 0;
  *(v18 + 20) = 0;
  *(v18 + 21) = 0;
  *(v18 + 22) = 0;
  *(v18 + 24) = 0;
  *(v18 + 25) = 0;
  *&v6[OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_page] = a5;
  v74.receiver = v6;
  v74.super_class = type metadata accessor for DataSharingPresenter();

  v19 = objc_msgSendSuper2(&v74, sel_init);
  v20 = *(a2 + 32);
  v21 = v19;
  v20(v78, ObjectType, a2);
  sub_2690187D4(v75);
  v22 = &v21[OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_viewModel];
  swift_beginAccess();
  v76[0] = *v22;
  v23 = v22[1];
  v24 = v22[2];
  v25 = v22[4];
  v76[3] = v22[3];
  v76[4] = v25;
  v76[1] = v23;
  v76[2] = v24;
  v26 = v22[5];
  v27 = v22[6];
  v28 = v22[8];
  v76[7] = v22[7];
  v76[8] = v28;
  v76[5] = v26;
  v76[6] = v27;
  v29 = v22[9];
  v30 = v22[10];
  v31 = v22[12];
  v76[11] = v22[11];
  v76[12] = v31;
  v76[9] = v29;
  v76[10] = v30;
  v32 = v75[11];
  v22[10] = v75[10];
  v22[11] = v32;
  v22[12] = v75[12];
  v33 = v75[7];
  v22[6] = v75[6];
  v22[7] = v33;
  v34 = v75[9];
  v22[8] = v75[8];
  v22[9] = v34;
  v35 = v75[3];
  v22[2] = v75[2];
  v22[3] = v35;
  v36 = v75[5];
  v22[4] = v75[4];
  v22[5] = v36;
  v37 = v75[1];
  *v22 = v75[0];
  v22[1] = v37;
  sub_269009EE0(v76);
  v38 = v21[OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_viewStyle];
  v77[0] = *v22;
  v39 = v22[4];
  v41 = v22[1];
  v40 = v22[2];
  v77[3] = v22[3];
  v77[4] = v39;
  v77[1] = v41;
  v77[2] = v40;
  v42 = v22[8];
  v44 = v22[5];
  v43 = v22[6];
  v77[7] = v22[7];
  v77[8] = v42;
  v77[5] = v44;
  v77[6] = v43;
  v45 = v22[12];
  v47 = v22[9];
  v46 = v22[10];
  v77[11] = v22[11];
  v77[12] = v45;
  v77[9] = v47;
  v77[10] = v46;
  v48 = v22[11];
  v71 = v22[10];
  v72 = v48;
  v73 = v22[12];
  v49 = v22[7];
  v67 = v22[6];
  v68 = v49;
  v50 = v22[9];
  v69 = v22[8];
  v70 = v50;
  v51 = v22[3];
  v63 = v22[2];
  v64 = v51;
  v52 = v22[5];
  v65 = v22[4];
  v66 = v52;
  v53 = v22[1];
  v61 = *v22;
  v62 = v53;
  sub_269009E3C(v77, v78);
  v54 = sub_26901A998(v38, &v61);
  v56 = v55;

  v78[10] = v71;
  v78[11] = v72;
  v78[12] = v73;
  v78[6] = v67;
  v78[7] = v68;
  v78[9] = v70;
  v78[8] = v69;
  v78[2] = v63;
  v78[3] = v64;
  v78[4] = v65;
  v78[5] = v66;
  v78[0] = v61;
  v78[1] = v62;
  sub_269009EE0(v78);
  v57 = &v21[OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_presentingViewController];
  v58 = *&v21[OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_presentingViewController];
  *v57 = v54;
  v57[1] = v56;

  return v21;
}

void sub_2690187D4(uint64_t a1@<X8>)
{
  v1 = 0x800000026905D040;
  if (qword_2802F3248 != -1)
  {
LABEL_124:
    swift_once();
  }

  v193 = byte_2802F5130;
  v2 = sub_269051B18(byte_2802F5130);
  MEMORY[0x26D62FBC0](v2);

  v3 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  v6 = v4 >> 1;
  v7 = v5 + 1;
  if (v4 >> 1 <= v5)
  {
    v3 = sub_26904DCD8((v4 > 1), v5 + 1, 1, v3);
    v4 = *(v3 + 3);
    v6 = v4 >> 1;
  }

  *(v3 + 2) = v7;
  v8 = &v3[16 * v5];
  *(v8 + 4) = 0xD000000000000012;
  *(v8 + 5) = v1;
  if (v6 < (v5 + 2))
  {
    v3 = sub_26904DCD8((v4 > 1), v5 + 2, 1, v3);
  }

  *(v3 + 2) = v5 + 2;
  v9 = &v3[16 * v7];
  *(v9 + 4) = 0xD000000000000012;
  *(v9 + 5) = v1;
  v10 = (v3 + 40);
  v11 = -v5;
  v12 = -1;
  while (v11 + v12 != 1)
  {
    if (++v12 >= *(v3 + 2))
    {
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
      goto LABEL_124;
    }

    v13 = v10 + 2;
    v14 = *(v10 - 1);
    v15 = *v10;

    sub_26902F7F4(v14, v15, 0);
    v17 = v16;

    v10 = v13;
    if (v17)
    {

      goto LABEL_17;
    }
  }

  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0xD000000000000012, v1);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v18 = sub_269057774();
  __swift_project_value_buffer(v18, qword_2802F3FF8);
  v19 = sub_269057A94();
  v20 = sub_269057764();
  if (os_log_type_enabled(v20, v19))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v197[0] = v22;
    *v21 = 136315138;
    v23 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v197);

    *(v21 + 4) = v23;
    _os_log_impl(&dword_269002000, v20, v19, "%s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x26D6309D0](v22, -1, -1);
    MEMORY[0x26D6309D0](v21, -1, -1);
  }

  else
  {
  }

LABEL_17:
  sub_2690519EC(v193);
  strcpy(v197, "%DEVICE_NAME%");
  HIWORD(v197[1]) = -4864;
  sub_26900BE9C();
  sub_269057BE4();

  sub_2690519EC(v193);
  v197[0] = 0xD000000000000014;
  v197[1] = 0x800000026905BEA0;
  v24 = sub_269057BE4();
  v191 = v25;
  v192 = v24;

  v1 = 0x800000026905D060;
  v26 = sub_269051B18(v193);
  MEMORY[0x26D62FBC0](v26);

  v27 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v29 = *(v27 + 2);
  v28 = *(v27 + 3);
  v30 = v28 >> 1;
  v31 = v29 + 1;
  if (v28 >> 1 <= v29)
  {
    v27 = sub_26904DCD8((v28 > 1), v29 + 1, 1, v27);
    v28 = *(v27 + 3);
    v30 = v28 >> 1;
  }

  *(v27 + 2) = v31;
  v32 = &v27[16 * v29];
  *(v32 + 4) = 0xD000000000000026;
  *(v32 + 5) = 0x800000026905D060;
  if (v30 < (v29 + 2))
  {
    v27 = sub_26904DCD8((v28 > 1), v29 + 2, 1, v27);
  }

  *(v27 + 2) = v29 + 2;
  v33 = &v27[16 * v31];
  *(v33 + 4) = 0xD000000000000026;
  *(v33 + 5) = 0x800000026905D060;
  v34 = (v27 + 40);
  v35 = -v29;
  v36 = -1;
  while (v35 + v36 != 1)
  {
    if (++v36 >= *(v27 + 2))
    {
      goto LABEL_118;
    }

    v37 = v34 + 2;
    v38 = *(v34 - 1);
    v39 = *v34;

    sub_26902F7F4(v38, v39, 0);
    v41 = v40;

    v34 = v37;
    if (v41)
    {

      goto LABEL_32;
    }
  }

  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0xD000000000000026, 0x800000026905D060);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v42 = sub_269057774();
  __swift_project_value_buffer(v42, qword_2802F3FF8);
  v43 = sub_269057A94();
  v44 = sub_269057764();
  if (os_log_type_enabled(v44, v43))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v197[0] = v46;
    *v45 = 136315138;
    v47 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v197);

    *(v45 + 4) = v47;
    _os_log_impl(&dword_269002000, v44, v43, "%s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x26D6309D0](v46, -1, -1);
    MEMORY[0x26D6309D0](v45, -1, -1);
  }

  else
  {
  }

LABEL_32:
  sub_2690519EC(v193);
  strcpy(v197, "%DEVICE_NAME%");
  HIWORD(v197[1]) = -4864;
  sub_269057BE4();

  sub_2690519EC(v193);
  v197[0] = 0xD000000000000014;
  v197[1] = 0x800000026905BEA0;
  v48 = sub_269057BE4();
  v180 = v49;
  v181 = v48;

  v1 = 0x800000026905D090;
  v50 = sub_269051B18(v193);
  MEMORY[0x26D62FBC0](v50);

  v51 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v53 = *(v51 + 2);
  v52 = *(v51 + 3);
  v54 = v52 >> 1;
  v55 = v53 + 1;
  if (v52 >> 1 <= v53)
  {
    v51 = sub_26904DCD8((v52 > 1), v53 + 1, 1, v51);
    v52 = *(v51 + 3);
    v54 = v52 >> 1;
  }

  *(v51 + 2) = v55;
  v56 = &v51[16 * v53];
  *(v56 + 4) = 0xD000000000000022;
  *(v56 + 5) = 0x800000026905D090;
  if (v54 < (v53 + 2))
  {
    v51 = sub_26904DCD8((v52 > 1), v53 + 2, 1, v51);
  }

  *(v51 + 2) = v53 + 2;
  v57 = &v51[16 * v55];
  *(v57 + 4) = 0xD000000000000022;
  *(v57 + 5) = 0x800000026905D090;
  v58 = (v51 + 40);
  v59 = -v53;
  v60 = -1;
  while (v59 + v60 != 1)
  {
    if (++v60 >= *(v51 + 2))
    {
      goto LABEL_119;
    }

    v61 = v58 + 2;
    v62 = *(v58 - 1);
    v63 = *v58;

    sub_26902F7F4(v62, v63, 0);
    v65 = v64;

    v58 = v61;
    if (v65)
    {

      goto LABEL_47;
    }
  }

  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0xD000000000000022, 0x800000026905D090);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v66 = sub_269057774();
  __swift_project_value_buffer(v66, qword_2802F3FF8);
  v67 = sub_269057A94();
  v68 = sub_269057764();
  if (os_log_type_enabled(v68, v67))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v197[0] = v70;
    *v69 = 136315138;
    v71 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v197);

    *(v69 + 4) = v71;
    _os_log_impl(&dword_269002000, v68, v67, "%s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v70);
    MEMORY[0x26D6309D0](v70, -1, -1);
    MEMORY[0x26D6309D0](v69, -1, -1);
  }

  else
  {
  }

LABEL_47:
  sub_2690519EC(v193);
  strcpy(v197, "%DEVICE_NAME%");
  HIWORD(v197[1]) = -4864;
  sub_269057BE4();

  sub_2690519EC(v193);
  v197[0] = 0xD000000000000014;
  v197[1] = 0x800000026905BEA0;
  v72 = sub_269057BE4();
  v189 = v73;
  v190 = v72;

  v1 = 0x800000026905D0C0;
  v74 = sub_269051B18(v193);
  MEMORY[0x26D62FBC0](v74);

  v75 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v77 = *(v75 + 2);
  v76 = *(v75 + 3);
  v78 = v76 >> 1;
  v79 = v77 + 1;
  if (v76 >> 1 <= v77)
  {
    v75 = sub_26904DCD8((v76 > 1), v77 + 1, 1, v75);
    v76 = *(v75 + 3);
    v78 = v76 >> 1;
  }

  *(v75 + 2) = v79;
  v80 = &v75[16 * v77];
  *(v80 + 4) = 0xD00000000000001ELL;
  *(v80 + 5) = 0x800000026905D0C0;
  if (v78 < (v77 + 2))
  {
    v75 = sub_26904DCD8((v76 > 1), v77 + 2, 1, v75);
  }

  *(v75 + 2) = v77 + 2;
  v81 = &v75[16 * v79];
  *(v81 + 4) = 0xD00000000000001ELL;
  *(v81 + 5) = 0x800000026905D0C0;
  v82 = (v75 + 40);
  v83 = -v77;
  v84 = -1;
  while (v83 + v84 != 1)
  {
    if (++v84 >= *(v75 + 2))
    {
      goto LABEL_120;
    }

    v85 = v82 + 2;
    v86 = *(v82 - 1);
    v87 = *v82;

    sub_26902F7F4(v86, v87, 0);
    v89 = v88;

    v82 = v85;
    if (v89)
    {

      goto LABEL_62;
    }
  }

  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0xD00000000000001ELL, 0x800000026905D0C0);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v90 = sub_269057774();
  __swift_project_value_buffer(v90, qword_2802F3FF8);
  v91 = sub_269057A94();
  v92 = sub_269057764();
  if (os_log_type_enabled(v92, v91))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v197[0] = v94;
    *v93 = 136315138;
    v95 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v197);

    *(v93 + 4) = v95;
    _os_log_impl(&dword_269002000, v92, v91, "%s", v93, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v94);
    MEMORY[0x26D6309D0](v94, -1, -1);
    MEMORY[0x26D6309D0](v93, -1, -1);
  }

  else
  {
  }

LABEL_62:
  sub_2690519EC(v193);
  strcpy(v197, "%DEVICE_NAME%");
  HIWORD(v197[1]) = -4864;
  sub_269057BE4();

  sub_2690519EC(v193);
  v197[0] = 0xD000000000000014;
  v197[1] = 0x800000026905BEA0;
  v96 = sub_269057BE4();
  v187 = v97;
  v188 = v96;

  v1 = 0x800000026905D0E0;
  v98 = sub_269051B18(v193);
  MEMORY[0x26D62FBC0](v98);

  v99 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v101 = *(v99 + 2);
  v100 = *(v99 + 3);
  v102 = v100 >> 1;
  v103 = v101 + 1;
  if (v100 >> 1 <= v101)
  {
    v99 = sub_26904DCD8((v100 > 1), v101 + 1, 1, v99);
    v100 = *(v99 + 3);
    v102 = v100 >> 1;
  }

  *(v99 + 2) = v103;
  v104 = &v99[16 * v101];
  *(v104 + 4) = 0xD000000000000018;
  *(v104 + 5) = 0x800000026905D0E0;
  if (v102 < (v101 + 2))
  {
    v99 = sub_26904DCD8((v100 > 1), v101 + 2, 1, v99);
  }

  *(v99 + 2) = v101 + 2;
  v105 = &v99[16 * v103];
  *(v105 + 4) = 0xD000000000000018;
  *(v105 + 5) = 0x800000026905D0E0;
  v106 = (v99 + 40);
  v107 = -v101;
  v108 = -1;
  while (v107 + v108 != 1)
  {
    if (++v108 >= *(v99 + 2))
    {
      goto LABEL_121;
    }

    v109 = v106 + 2;
    v110 = *(v106 - 1);
    v111 = *v106;

    sub_26902F7F4(v110, v111, 0);
    v113 = v112;

    v106 = v109;
    if (v113)
    {

      goto LABEL_77;
    }
  }

  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0xD000000000000018, 0x800000026905D0E0);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v114 = sub_269057774();
  __swift_project_value_buffer(v114, qword_2802F3FF8);
  v115 = sub_269057A94();
  v116 = sub_269057764();
  if (os_log_type_enabled(v116, v115))
  {
    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v197[0] = v118;
    *v117 = 136315138;
    v119 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v197);

    *(v117 + 4) = v119;
    _os_log_impl(&dword_269002000, v116, v115, "%s", v117, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v118);
    MEMORY[0x26D6309D0](v118, -1, -1);
    MEMORY[0x26D6309D0](v117, -1, -1);
  }

  else
  {
  }

LABEL_77:
  sub_2690519EC(v193);
  strcpy(v197, "%DEVICE_NAME%");
  HIWORD(v197[1]) = -4864;
  sub_269057BE4();

  sub_2690519EC(v193);
  v197[0] = 0xD000000000000014;
  v197[1] = 0x800000026905BEA0;
  v120 = sub_269057BE4();
  v185 = v121;
  v186 = v120;

  v1 = 0x800000026905D100;
  v122 = sub_269051B18(v193);
  MEMORY[0x26D62FBC0](v122);

  v123 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v125 = *(v123 + 2);
  v124 = *(v123 + 3);
  v126 = v124 >> 1;
  v127 = v125 + 1;
  if (v124 >> 1 <= v125)
  {
    v123 = sub_26904DCD8((v124 > 1), v125 + 1, 1, v123);
    v124 = *(v123 + 3);
    v126 = v124 >> 1;
  }

  *(v123 + 2) = v127;
  v128 = &v123[16 * v125];
  *(v128 + 4) = 0xD000000000000021;
  *(v128 + 5) = 0x800000026905D100;
  if (v126 < (v125 + 2))
  {
    v123 = sub_26904DCD8((v124 > 1), v125 + 2, 1, v123);
  }

  *(v123 + 2) = v125 + 2;
  v129 = &v123[16 * v127];
  *(v129 + 4) = 0xD000000000000021;
  *(v129 + 5) = 0x800000026905D100;
  v130 = (v123 + 40);
  v131 = -v125;
  v132 = -1;
  while (v131 + v132 != 1)
  {
    if (++v132 >= *(v123 + 2))
    {
      goto LABEL_122;
    }

    v133 = v130 + 2;
    v134 = *(v130 - 1);
    v135 = *v130;

    sub_26902F7F4(v134, v135, 0);
    v137 = v136;

    v130 = v133;
    if (v137)
    {

      goto LABEL_92;
    }
  }

  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0xD000000000000021, 0x800000026905D100);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v138 = sub_269057774();
  __swift_project_value_buffer(v138, qword_2802F3FF8);
  v139 = sub_269057A94();
  v140 = sub_269057764();
  if (os_log_type_enabled(v140, v139))
  {
    v141 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    v197[0] = v142;
    *v141 = 136315138;
    v143 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v197);

    *(v141 + 4) = v143;
    _os_log_impl(&dword_269002000, v140, v139, "%s", v141, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v142);
    MEMORY[0x26D6309D0](v142, -1, -1);
    MEMORY[0x26D6309D0](v141, -1, -1);
  }

  else
  {
  }

LABEL_92:
  sub_2690519EC(v193);
  strcpy(v197, "%DEVICE_NAME%");
  HIWORD(v197[1]) = -4864;
  sub_269057BE4();

  sub_2690519EC(v193);
  v197[0] = 0xD000000000000014;
  v197[1] = 0x800000026905BEA0;
  v144 = sub_269057BE4();
  v183 = v145;
  v184 = v144;

  v146 = sub_269051B18(v193);
  MEMORY[0x26D62FBC0](v146);

  v147 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v149 = *(v147 + 2);
  v148 = *(v147 + 3);
  v150 = v148 >> 1;
  v1 = v149 + 1;
  if (v148 >> 1 <= v149)
  {
    v147 = sub_26904DCD8((v148 > 1), v149 + 1, 1, v147);
    v148 = *(v147 + 3);
    v150 = v148 >> 1;
  }

  *(v147 + 2) = v1;
  v151 = &v147[16 * v149];
  *(v151 + 4) = 0xD000000000000013;
  *(v151 + 5) = 0x800000026905D130;
  if (v150 < (v149 + 2))
  {
    v147 = sub_26904DCD8((v148 > 1), v149 + 2, 1, v147);
  }

  *(v147 + 2) = v149 + 2;
  v152 = &v147[16 * v1];
  *(v152 + 4) = 0xD000000000000013;
  *(v152 + 5) = 0x800000026905D130;
  v153 = (v147 + 40);
  v154 = -v149;
  v155 = -1;
  while (v154 + v155 != 1)
  {
    if (++v155 >= *(v147 + 2))
    {
      goto LABEL_123;
    }

    v156 = v153 + 2;
    v157 = *(v153 - 1);
    v1 = *v153;

    sub_26902F7F4(v157, v1, 0);
    v159 = v158;

    v153 = v156;
    if (v159)
    {

      goto LABEL_107;
    }
  }

  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0xD000000000000013, 0x800000026905D130);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v160 = sub_269057774();
  __swift_project_value_buffer(v160, qword_2802F3FF8);
  v161 = sub_269057A94();
  v162 = sub_269057764();
  if (os_log_type_enabled(v162, v161))
  {
    v163 = swift_slowAlloc();
    v164 = swift_slowAlloc();
    v197[0] = v164;
    *v163 = 136315138;
    v165 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v197);

    *(v163 + 4) = v165;
    _os_log_impl(&dword_269002000, v162, v161, "%s", v163, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v164);
    MEMORY[0x26D6309D0](v164, -1, -1);
    MEMORY[0x26D6309D0](v163, -1, -1);
  }

  else
  {
  }

LABEL_107:
  sub_2690519EC(v193);
  strcpy(v197, "%DEVICE_NAME%");
  HIWORD(v197[1]) = -4864;
  sub_269057BE4();

  v166 = sub_2690519EC(v193);
  v197[0] = 0xD000000000000014;
  v197[1] = 0x800000026905BEA0;
  v196 = v166;
  v167 = sub_269057BE4();
  v169 = v168;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F36F0, &qword_26905A3C0);
  v170 = swift_allocObject();
  *(v170 + 16) = xmmword_269059EE0;
  *(v170 + 32) = v181;
  *(v170 + 40) = v180;
  sub_269057C54();
  v197[0] = 0;
  v197[1] = 0xE000000000000000;
  MEMORY[0x26D62FBC0](0xD000000000000020, 0x800000026905D180);
  sub_269057CB4();
  v171 = v197[0];
  v172 = v197[1];
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v173 = sub_269057774();
  __swift_project_value_buffer(v173, qword_2802F3FF8);
  v174 = sub_269057AA4();
  v175 = HIBYTE(v172) & 0xF;
  if ((v172 & 0x2000000000000000) == 0)
  {
    v175 = v171 & 0xFFFFFFFFFFFFLL;
  }

  if (v175)
  {
    v197[0] = 32;
    v197[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v171, v172);
    MEMORY[0x26D62FBC0](v197[0], v197[1]);
  }

  v176 = sub_269057764();
  if (os_log_type_enabled(v176, v174))
  {
    v177 = swift_slowAlloc();
    v178 = swift_slowAlloc();
    v197[0] = v178;
    *v177 = 136315138;
    v179 = sub_269010108(0xD00000000000002BLL, 0x800000026905D150, v197);

    *(v177 + 4) = v179;
    _os_log_impl(&dword_269002000, v176, v174, "%s", v177, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v178);
    MEMORY[0x26D6309D0](v178, -1, -1);
    MEMORY[0x26D6309D0](v177, -1, -1);
  }

  else
  {
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v192;
  *(a1 + 24) = v191;
  *(a1 + 32) = v167;
  *(a1 + 40) = v169;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = v170;
  *(a1 + 72) = v184;
  *(a1 + 80) = v183;
  *(a1 + 88) = v186;
  *(a1 + 96) = v185;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = v190;
  *(a1 + 128) = v189;
  *(a1 + 136) = v188;
  *(a1 + 144) = v187;
  *(a1 + 152) = 2;
  *(a1 + 153) = v196;
  *(a1 + 156) = *(&v196 + 3);
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 183) = 0;
  *(a1 + 160) = 0;
  *(a1 + 187) = v194;
  *(a1 + 191) = v195;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
}

char *sub_26901A998(char a1, _OWORD *a2)
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
      v8 = 0xD000000000000030;
      v9 = 0x800000026905BF90;
      *&v35 = 0;
      *(&v35 + 1) = 0xE000000000000000;
      sub_269057C54();
      MEMORY[0x26D62FBC0](0xD000000000000030, 0x800000026905D230);
      LOBYTE(v34[0]) = 1;
      sub_269057CB4();
      MEMORY[0x26D62FBC0](0x6C696E202CLL, 0xE500000000000000);
      v10 = v35;
      if (qword_2802F3258 != -1)
      {
        swift_once();
      }

      v11 = sub_269057774();
      __swift_project_value_buffer(v11, qword_2802F3FF8);
      v12 = sub_269057A94();
      *&v35 = 0xD000000000000030;
      *(&v35 + 1) = 0x800000026905BF90;
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
      v32 = objc_allocWithZone(type metadata accessor for DataSharingProxCardController());
      sub_269009E3C(v48, v34);
      v25 = sub_269051C70(&v35);
      *&v25[OBJC_IVAR____TtC9SiriSetup29DataSharingProxCardController_delegate + 8] = &off_2879A7368;
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
    v24 = objc_allocWithZone(type metadata accessor for DataSharingWelcomeController());
    sub_269009E3C(v48, v34);
    v25 = sub_2690257D4(&v35);
    *&v25[OBJC_IVAR____TtC9SiriSetup28DataSharingWelcomeController_delegate + 8] = &off_2879A7368;
    swift_unknownObjectWeakAssign();
  }

  return v25;
}

id sub_26901AD88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataSharingPresenter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26901AEA4@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_viewModel);
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

void (*sub_26901AF78(uint64_t **a1))(void *a1)
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
  v2[4] = sub_269018270(v2);
  return sub_26901AFE8;
}

void sub_26901AFE8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void *sub_26901B030()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_presentingViewController);
  v2 = *(v0 + OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_presentingViewController + 8);
  v3 = v1;
  return v1;
}

uint64_t sub_26901B078()
{
  v1 = v0;
  v2 = 0x800000026905D1F0;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v3 = 0xD000000000000015;
  v4 = sub_269057774();
  __swift_project_value_buffer(v4, qword_2802F3FF8);
  v5 = sub_269057AA4();
  v16 = 0xD000000000000015;
  v17 = 0x800000026905D1F0;
  if (("primaryButtonTapped()" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v15[0] = 32;
    v15[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905D210);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v3 = v16;
    v2 = v17;
  }

  v6 = sub_269057764();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15[0] = v8;
    *v7 = 136315138;
    v9 = sub_269010108(v3, v2, v15);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_269002000, v6, v5, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6309D0](v8, -1, -1);
    MEMORY[0x26D6309D0](v7, -1, -1);
  }

  else
  {
  }

  if (*(v1 + OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_viewStyle) == 1)
  {
    v10 = *(v1 + OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_optInRadioButtonSelection);
  }

  else
  {
    v10 = 1;
  }

  v11 = *(v1 + OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_dataSourceWriter) + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriDataSharingStatus;
  *v11 = v10;
  *(v11 + 8) = 0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v1 + OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_page);

    sub_26900E6C8(v14);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26901B2F8()
{
  v1 = v0;
  v2 = 0x800000026905D1B0;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v3 = 0xD000000000000017;
  v4 = sub_269057774();
  __swift_project_value_buffer(v4, qword_2802F3FF8);
  v5 = sub_269057AA4();
  v17 = 0xD000000000000017;
  v18 = 0x800000026905D1B0;
  if (("secondaryButtonTapped()" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v16[0] = 32;
    v16[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](0xD000000000000017, 0x800000026905D1D0);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v3 = v17;
    v2 = v18;
  }

  v6 = sub_269057764();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16[0] = v8;
    *v7 = 136315138;
    v9 = sub_269010108(v3, v2, v16);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_269002000, v6, v5, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6309D0](v8, -1, -1);
    MEMORY[0x26D6309D0](v7, -1, -1);
  }

  else
  {
  }

  if (*(v1 + OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_viewStyle) == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v11 = *(v1 + OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_page);

    sub_26900EFCC(v12);
  }

  else
  {
    v13 = *(v1 + OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_dataSourceWriter) + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriDataSharingStatus;
    *v13 = 2;
    *(v13 + 8) = 0;
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v14 = *(v1 + OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_page);

    sub_26900E6C8(v15);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_26901B59C()
{
  v1 = v0;
  v2 = 0x800000026905BD40;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v3 = 0xD000000000000015;
  v4 = sub_269057774();
  __swift_project_value_buffer(v4, qword_2802F3FF8);
  v5 = sub_269057AA4();
  v15 = 0xD000000000000015;
  v16 = 0x800000026905BD40;
  if (("aringPresenter: " & 0x2F00000000000000) != 0x2000000000000000)
  {
    v14[0] = 32;
    v14[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905D270);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v3 = v15;
    v2 = v16;
  }

  v6 = sub_269057764();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14[0] = v8;
    *v7 = 136315138;
    v9 = sub_269010108(v3, v2, v14);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_269002000, v6, v5, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6309D0](v8, -1, -1);
    MEMORY[0x26D6309D0](v7, -1, -1);
  }

  else
  {
  }

  v10 = *(v1 + OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_dataSourceWriter) + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriDataSharingStatus;
  *v10 = 3;
  *(v10 + 8) = 0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(v1 + OBJC_IVAR____TtC9SiriSetup20DataSharingPresenter_page);

    sub_26900E964(v13);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26901B7F8()
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

void sub_26901B8F8()
{
  v29.receiver = v0;
  v29.super_class = type metadata accessor for SiriSetupProxCardView();
  objc_msgSendSuper2(&v29, sel_updateConstraints);
  v1 = OBJC_IVAR____TtC9SiriSetup21SiriSetupProxCardView_constraintsSpecified;
  if ((v0[OBJC_IVAR____TtC9SiriSetup21SiriSetupProxCardView_constraintsSpecified] & 1) == 0)
  {
    if (v0[OBJC_IVAR____TtC9SiriSetup21SiriSetupProxCardView_orbOverTitle] == 1)
    {
      v2 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3400, &unk_26905AB40);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_26905A4F0;
      v4 = OBJC_IVAR____TtC9SiriSetup21SiriSetupProxCardView_orbView;
      v5 = [*&v0[OBJC_IVAR____TtC9SiriSetup21SiriSetupProxCardView_orbView] topAnchor];
      v6 = [v0 topAnchor];
      v7 = [v5 constraintEqualToAnchor_];

      *(v3 + 32) = v7;
      v8 = [*&v0[v4] centerXAnchor];
      v9 = [v0 centerXAnchor];
      v10 = [v8 constraintEqualToAnchor_];

      *(v3 + 40) = v10;
      v11 = [*&v0[v4] heightAnchor];
      [*&v0[v4] intrinsicContentSize];
      v13 = [v11 constraintEqualToConstant_];

      *(v3 + 48) = v13;
      sub_26901BDD8();
      v14 = sub_2690579C4();

      [v2 activateConstraints_];
    }

    else
    {
      v15 = [v0 titleView];
      if (!v15)
      {
LABEL_7:
        v0[v1] = 1;
        return;
      }

      v16 = v15;
      v17 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3400, &unk_26905AB40);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_26905A4F0;
      v19 = OBJC_IVAR____TtC9SiriSetup21SiriSetupProxCardView_orbView;
      v20 = [*&v0[OBJC_IVAR____TtC9SiriSetup21SiriSetupProxCardView_orbView] topAnchor];
      v21 = [v16 bottomAnchor];
      v22 = [v20 constraintEqualToAnchor_];

      *(v18 + 32) = v22;
      v23 = [*&v0[v19] centerXAnchor];
      v24 = [v0 centerXAnchor];
      v25 = [v23 constraintEqualToAnchor_];

      *(v18 + 40) = v25;
      v26 = [*&v0[v19] heightAnchor];
      [*&v0[v19] intrinsicContentSize];
      v28 = [v26 constraintEqualToConstant_];

      *(v18 + 48) = v28;
      sub_26901BDD8();
      v14 = sub_2690579C4();

      [v17 activateConstraints_];
    }

    goto LABEL_7;
  }
}

id sub_26901BD70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSetupProxCardView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_26901BDD8()
{
  result = qword_2802F3408;
  if (!qword_2802F3408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802F3408);
  }

  return result;
}

void sub_26901BE7C(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = sub_26901C4BC();
  }

  else
  {
    v6 = sub_26901C6E0();
  }

  v7 = v6;
  [v3 bounds];
  v9 = v8;
  [v7 bounds];
  v11 = v9 / v10;
  [v3 bounds];
  v13 = v12;
  [v7 bounds];
  CGAffineTransformMakeScale(&v33, v11, v13 / v14);
  [v7 setAffineTransform_];
  v15 = sub_26901C3A0();
  [v3 bounds];
  v17 = v16;
  v18 = sub_26901C3A0();
  [v18 bounds];
  v20 = v19;

  v21 = v17 / v20;
  [v3 bounds];
  v23 = v22;
  v24 = sub_26901C3A0();
  [v24 bounds];
  v26 = v25;

  CGAffineTransformMakeScale(&v33, v21, v23 / v26);
  [v15 setAffineTransform_];

  v27 = [v3 layer];
  [v27 setMask_];

  [v3 setAlpha_];
  [v3 setHidden_];
  v28 = objc_opt_self();
  [v28 begin];
  [v28 setAnimationDuration_];
  [v28 disableActions];
  v29 = swift_allocObject();
  v29[2] = v3;
  v29[3] = a2;
  v29[4] = a3;
  *&v33.tx = sub_26901CA94;
  *&v33.ty = v29;
  *&v33.a = MEMORY[0x277D85DD0];
  *&v33.b = 1107296256;
  *&v33.c = sub_26900BEF0;
  *&v33.d = &block_descriptor_3;
  v30 = _Block_copy(&v33);
  v31 = v3;

  [v28 setCompletionBlock_];
  _Block_release(v30);
  v32 = sub_26901C3A0();
  [v32 setPhase_];

  [v28 commit];
}

void sub_26901C170(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v17 = sub_26901CAF0;
  v18 = v7;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_26900BEF0;
  v16 = &block_descriptor_14;
  v8 = _Block_copy(&v13);
  v9 = a1;

  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a2;
  v10[4] = a3;
  v17 = sub_26901CB44;
  v18 = v10;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_2690277C8;
  v16 = &block_descriptor_20;
  v11 = _Block_copy(&v13);
  v12 = v9;

  [v6 animateWithDuration:v8 animations:v11 completion:0.333333333];
  _Block_release(v11);
  _Block_release(v8);
}

void sub_26901C31C(int a1, id a2, void (*a3)(id))
{
  a3([a2 setHidden_]);
  v3 = sub_26901C3A0();
  [v3 setPhase_];
}

id sub_26901C3A0()
{
  v1 = OBJC_IVAR____TtC9SiriSetup13CheckMarkView_colorLayer;
  v2 = *&v0[OBJC_IVAR____TtC9SiriSetup13CheckMarkView_colorLayer];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC9SiriSetup13CheckMarkView_colorLayer];
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for ColorLayer()) init];
    [v4 setBounds_];
    [v0 bounds];
    MidX = CGRectGetMidX(v10);
    [v0 bounds];
    [v4 setPosition_];

    v6 = [v0 layer];
    [v6 addSublayer_];

    v7 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_26901C4BC()
{
  v1 = OBJC_IVAR____TtC9SiriSetup13CheckMarkView_checkMaskLayer;
  v2 = *(v0 + OBJC_IVAR____TtC9SiriSetup13CheckMarkView_checkMaskLayer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9SiriSetup13CheckMarkView_checkMaskLayer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
    v5 = sub_269057944();
    v6 = [objc_opt_self() systemImageNamed_];

    if (v6)
    {
      v7 = objc_opt_self();
      v8 = v6;
      v9 = [v7 configurationWithPointSize:7 weight:62.0];
      v10 = [v8 imageWithConfiguration_];

      v11 = v10;
      [v11 size];
      v13 = v12;
      v15 = v14;
      v16 = [v11 CGImage];

      [v4 setContents_];
    }

    else
    {
      v13 = 42.0;
      v15 = 33.0;
    }

    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    v22.size.width = v13;
    v22.size.height = v15;
    MidX = CGRectGetMidX(v22);
    v23.origin.x = 0.0;
    v23.origin.y = 0.0;
    v23.size.width = v13;
    v23.size.height = v15;
    MidY = CGRectGetMidY(v23);
    [v4 setBounds_];
    [v4 setPosition_];
    v19 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v20 = v2;
  return v3;
}