@interface SiriSharedUIAssistantSuggestionsViewProvider
- (_TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider)init;
- (_TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider)initWithPressDownHandler:(id)a3 pressUpHandler:(id)a4;
- (_TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider)initWithStartersPressDown:(id)a3 startersPressUp:(id)a4 continuersPressDown:(id)a5 continuersPressUp:(id)a6;
- (_TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider)initWithStartersPressDownHandler:(id)a3 startersPressUpHandler:(id)a4 continuersPressDownHandler:(id)a5 continuersPressUpHandler:(id)a6;
- (_TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider)initWithTapHandler:(id)a3;
- (id)getInitialSuggestionViewWrappers;
- (void)autoCompleteSuggestionsWereShownForCallback;
- (void)fetchAutoCompletionViewsWithQuery:(id)a3 deviceLocked:(BOOL)a4 turnId:(id)a5 completion:(id)a6;
- (void)fetchContinuerViewsWithRequestId:(id)a3 currentMode:(id)a4 deviceLocked:(BOOL)a5 invocationSource:(int64_t)a6 completion:(id)a7;
- (void)fetchConversationStarterViewsWithDeviceLocked:(BOOL)a3 isVoiceTrigger:(BOOL)a4 invocationSource:(int64_t)a5 isFirstInvocationSinceOSInstalled:(BOOL)a6 completion:(id)a7;
- (void)fetchStarterSuggestionsViewsWithDeviceLocked:(BOOL)a3 isVoiceTrigger:(BOOL)a4 invocationSource:(int64_t)a5 isFirstInvocationSinceOSInstalled:(BOOL)a6 turnId:(id)a7 completion:(id)a8;
- (void)resetContinuerSuggestions;
- (void)resetSuggestions;
- (void)setContextMenuHandlerWithContextMenuHandler:(id)a3;
- (void)setDialogPhase:(id)a3;
- (void)startNewTypingSession;
- (void)suggestionsWereShownForCallback;
@end

@implementation SiriSharedUIAssistantSuggestionsViewProvider

- (_TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider)initWithTapHandler:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = _s12SiriSharedUI0aB34UIAssistantSuggestionsViewProviderC10tapHandlerACySo8NSStringC_SitXE_tcfc_0();
  _Block_release(v3);
  return v4;
}

- (_TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider)initWithPressDownHandler:(id)a3 pressUpHandler:(id)a4
{
  v5 = _Block_copy(a3);
  v6 = _Block_copy(a4);
  v7 = v6;
  if (!v5)
  {
    v8 = 0;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  v5 = sub_21E49AEB8;
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v7 = sub_21E49AEB8;
LABEL_6:
  v10 = sub_21E498710(v5, v8, v7, v9);
  sub_21E3F1EB0(v7);
  sub_21E3F1EB0(v5);
  return v10;
}

- (_TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider)initWithStartersPressDownHandler:(id)a3 startersPressUpHandler:(id)a4 continuersPressDownHandler:(id)a5 continuersPressUpHandler:(id)a6
{
  v9 = _Block_copy(a3);
  v10 = _Block_copy(a4);
  v11 = _Block_copy(a5);
  v12 = _Block_copy(a6);
  if (v9)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v9;
    v9 = sub_21E49AEB8;
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = 0;
    if (v10)
    {
LABEL_3:
      v14 = swift_allocObject();
      *(v14 + 16) = v10;
      v10 = sub_21E49AEB8;
      if (v11)
      {
        goto LABEL_4;
      }

LABEL_8:
      v15 = 0;
      if (v12)
      {
        goto LABEL_5;
      }

LABEL_9:
      v16 = 0;
      goto LABEL_10;
    }
  }

  v14 = 0;
  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_4:
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v11 = sub_21E49AEB8;
  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_5:
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v12 = sub_21E49AB0C;
LABEL_10:
  v17 = sub_21E498A10(v9, v13, v10, v14, v11, v15, v12, v16);
  sub_21E3F1EB0(v12);
  sub_21E3F1EB0(v11);
  sub_21E3F1EB0(v10);
  sub_21E3F1EB0(v9);
  return v17;
}

- (_TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider)initWithStartersPressDown:(id)a3 startersPressUp:(id)a4 continuersPressDown:(id)a5 continuersPressUp:(id)a6
{
  v9 = _Block_copy(a3);
  v10 = _Block_copy(a4);
  v11 = _Block_copy(a5);
  v12 = _Block_copy(a6);
  if (v9)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v9;
    v9 = sub_21E49AEA4;
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = 0;
    if (v10)
    {
LABEL_3:
      v14 = swift_allocObject();
      *(v14 + 16) = v10;
      v10 = sub_21E49AEA4;
      if (v11)
      {
        goto LABEL_4;
      }

LABEL_8:
      v15 = 0;
      if (v12)
      {
        goto LABEL_5;
      }

LABEL_9:
      v16 = 0;
      goto LABEL_10;
    }
  }

  v14 = 0;
  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_4:
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v11 = sub_21E49AEA4;
  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_5:
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  v12 = sub_21E49AAF4;
LABEL_10:
  v17 = sub_21E498D70(v9, v13, v10, v14, v11, v15, v12, v16);
  sub_21E3F1EB0(v12);
  sub_21E3F1EB0(v11);
  sub_21E3F1EB0(v10);
  sub_21E3F1EB0(v9);
  return v17;
}

- (void)fetchStarterSuggestionsViewsWithDeviceLocked:(BOOL)a3 isVoiceTrigger:(BOOL)a4 invocationSource:(int64_t)a5 isFirstInvocationSinceOSInstalled:(BOOL)a6 turnId:(id)a7 completion:(id)a8
{
  v10 = a6;
  v12 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v22 - v15;
  v17 = _Block_copy(a8);
  if (a7)
  {
    sub_21E4DB678();
    v18 = sub_21E4DB698();
    (*(*(v18 - 8) + 56))(v16, 0, 1, v18);
  }

  else
  {
    v19 = sub_21E4DB698();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  v21 = self;
  sub_21E4990D0(v12, a5, v10, v16, sub_21E49AECC, v20);

  sub_21E424BC0(v16, &qword_27CEC5278);
}

- (void)fetchConversationStarterViewsWithDeviceLocked:(BOOL)a3 isVoiceTrigger:(BOOL)a4 invocationSource:(int64_t)a5 isFirstInvocationSinceOSInstalled:(BOOL)a6 completion:(id)a7
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4968);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(a7);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = qword_280C14550;
  v18 = self;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = sub_21E4DBCC8();
  __swift_project_value_buffer(v19, qword_280C14558);
  v20 = sub_21E4DD1F8();
  sub_21E45D81C(v20, 0, 0xD000000000000079, 0x800000021E4EFDF0, 0xD00000000000002BLL, 0x800000021E4ED580);
  v21 = sub_21E4DD158();
  (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = v18;
  *(v22 + 40) = a3;
  *(v22 + 48) = a5;
  *(v22 + 56) = a6;
  *(v22 + 64) = sub_21E49AA80;
  *(v22 + 72) = v16;
  sub_21E46011C(0, 0, v14, &unk_21E4E8D30, v22);
}

- (void)fetchContinuerViewsWithRequestId:(id)a3 currentMode:(id)a4 deviceLocked:(BOOL)a5 invocationSource:(int64_t)a6 completion:(id)a7
{
  v8 = a5;
  v11 = _Block_copy(a7);
  v12 = sub_21E4DCF78();
  v14 = v13;
  _Block_copy(v11);
  v15 = a4;
  v16 = self;
  sub_21E49A434(v12, v14, v15, v8, a6, v16, v11);
  _Block_release(v11);
  _Block_release(v11);
}

- (void)fetchAutoCompletionViewsWithQuery:(id)a3 deviceLocked:(BOOL)a4 turnId:(id)a5 completion:(id)a6
{
  v8 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a6);
  v14 = sub_21E4DCF78();
  v16 = v15;
  if (a5)
  {
    sub_21E4DB678();
    v17 = sub_21E4DB698();
    (*(*(v17 - 8) + 56))(v12, 0, 1, v17);
  }

  else
  {
    v18 = sub_21E4DB698();
    (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  v20 = self;
  sub_21E4926CC(v14, v16, v8, v12, sub_21E49A408, v19);

  sub_21E424BC0(v12, &qword_27CEC5278);
}

- (id)getInitialSuggestionViewWrappers
{
  swift_beginAccess();
  v3 = self;

  sub_21E493B3C(v4);

  v6 = sub_21E48F1B0(v5);

  *(&v3->super.isa + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionViews) = v6;

  sub_21E43F008(0, &qword_280C14100);
  v7 = sub_21E4DD078();

  return v7;
}

- (void)resetSuggestions
{
  v2 = MEMORY[0x277D84F90];
  *(&self->super.isa + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionViews) = MEMORY[0x277D84F90];
  v3 = self;

  v4 = OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionsList;
  swift_beginAccess();
  *(&v3->super.isa + v4) = v2;
}

- (void)resetContinuerSuggestions
{
  v2 = MEMORY[0x277D84F90];
  *(&self->super.isa + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionViews) = MEMORY[0x277D84F90];
  v3 = self;

  *(&v3->super.isa + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionsList) = v2;
}

- (void)suggestionsWereShownForCallback
{
  v2 = self;
  sub_21E494F78();
}

- (void)autoCompleteSuggestionsWereShownForCallback
{
  v2 = self;
  sub_21E496D18();
}

- (void)setDialogPhase:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21E497BF4(v4);
}

- (void)setContextMenuHandlerWithContextMenuHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_21E47C4D8;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_contextMenuHandler);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  v8 = self;
  sub_21E3F1EB0(v7);
}

- (void)startNewTypingSession
{
  v2 = self;
  sub_21E498094();
}

- (_TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end