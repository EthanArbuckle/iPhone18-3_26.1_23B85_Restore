@interface SiriSharedUIAssistantSuggestionsViewProvider
- (_TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider)init;
- (_TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider)initWithPressDownHandler:(id)handler pressUpHandler:(id)upHandler;
- (_TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider)initWithStartersPressDown:(id)down startersPressUp:(id)up continuersPressDown:(id)pressDown continuersPressUp:(id)pressUp;
- (_TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider)initWithStartersPressDownHandler:(id)handler startersPressUpHandler:(id)upHandler continuersPressDownHandler:(id)downHandler continuersPressUpHandler:(id)pressUpHandler;
- (_TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider)initWithTapHandler:(id)handler;
- (id)getInitialSuggestionViewWrappers;
- (void)autoCompleteSuggestionsWereShownForCallback;
- (void)fetchAutoCompletionViewsWithQuery:(id)query deviceLocked:(BOOL)locked turnId:(id)id completion:(id)completion;
- (void)fetchContinuerViewsWithRequestId:(id)id currentMode:(id)mode deviceLocked:(BOOL)locked invocationSource:(int64_t)source completion:(id)completion;
- (void)fetchConversationStarterViewsWithDeviceLocked:(BOOL)locked isVoiceTrigger:(BOOL)trigger invocationSource:(int64_t)source isFirstInvocationSinceOSInstalled:(BOOL)installed completion:(id)completion;
- (void)fetchStarterSuggestionsViewsWithDeviceLocked:(BOOL)locked isVoiceTrigger:(BOOL)trigger invocationSource:(int64_t)source isFirstInvocationSinceOSInstalled:(BOOL)installed turnId:(id)id completion:(id)completion;
- (void)resetContinuerSuggestions;
- (void)resetSuggestions;
- (void)setContextMenuHandlerWithContextMenuHandler:(id)handler;
- (void)setDialogPhase:(id)phase;
- (void)startNewTypingSession;
- (void)suggestionsWereShownForCallback;
@end

@implementation SiriSharedUIAssistantSuggestionsViewProvider

- (_TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider)initWithTapHandler:(id)handler
{
  v3 = _Block_copy(handler);
  v4 = _s12SiriSharedUI0aB34UIAssistantSuggestionsViewProviderC10tapHandlerACySo8NSStringC_SitXE_tcfc_0();
  _Block_release(v3);
  return v4;
}

- (_TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider)initWithPressDownHandler:(id)handler pressUpHandler:(id)upHandler
{
  v5 = _Block_copy(handler);
  v6 = _Block_copy(upHandler);
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

- (_TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider)initWithStartersPressDownHandler:(id)handler startersPressUpHandler:(id)upHandler continuersPressDownHandler:(id)downHandler continuersPressUpHandler:(id)pressUpHandler
{
  v9 = _Block_copy(handler);
  v10 = _Block_copy(upHandler);
  v11 = _Block_copy(downHandler);
  v12 = _Block_copy(pressUpHandler);
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

- (_TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider)initWithStartersPressDown:(id)down startersPressUp:(id)up continuersPressDown:(id)pressDown continuersPressUp:(id)pressUp
{
  v9 = _Block_copy(down);
  v10 = _Block_copy(up);
  v11 = _Block_copy(pressDown);
  v12 = _Block_copy(pressUp);
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

- (void)fetchStarterSuggestionsViewsWithDeviceLocked:(BOOL)locked isVoiceTrigger:(BOOL)trigger invocationSource:(int64_t)source isFirstInvocationSinceOSInstalled:(BOOL)installed turnId:(id)id completion:(id)completion
{
  installedCopy = installed;
  lockedCopy = locked;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v22 - v15;
  v17 = _Block_copy(completion);
  if (id)
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
  selfCopy = self;
  sub_21E4990D0(lockedCopy, source, installedCopy, v16, sub_21E49AECC, v20);

  sub_21E424BC0(v16, &qword_27CEC5278);
}

- (void)fetchConversationStarterViewsWithDeviceLocked:(BOOL)locked isVoiceTrigger:(BOOL)trigger invocationSource:(int64_t)source isFirstInvocationSinceOSInstalled:(BOOL)installed completion:(id)completion
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4968);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(completion);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = qword_280C14550;
  selfCopy = self;
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
  *(v22 + 32) = selfCopy;
  *(v22 + 40) = locked;
  *(v22 + 48) = source;
  *(v22 + 56) = installed;
  *(v22 + 64) = sub_21E49AA80;
  *(v22 + 72) = v16;
  sub_21E46011C(0, 0, v14, &unk_21E4E8D30, v22);
}

- (void)fetchContinuerViewsWithRequestId:(id)id currentMode:(id)mode deviceLocked:(BOOL)locked invocationSource:(int64_t)source completion:(id)completion
{
  lockedCopy = locked;
  v11 = _Block_copy(completion);
  v12 = sub_21E4DCF78();
  v14 = v13;
  _Block_copy(v11);
  modeCopy = mode;
  selfCopy = self;
  sub_21E49A434(v12, v14, modeCopy, lockedCopy, source, selfCopy, v11);
  _Block_release(v11);
  _Block_release(v11);
}

- (void)fetchAutoCompletionViewsWithQuery:(id)query deviceLocked:(BOOL)locked turnId:(id)id completion:(id)completion
{
  lockedCopy = locked;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(completion);
  v14 = sub_21E4DCF78();
  v16 = v15;
  if (id)
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
  selfCopy = self;
  sub_21E4926CC(v14, v16, lockedCopy, v12, sub_21E49A408, v19);

  sub_21E424BC0(v12, &qword_27CEC5278);
}

- (id)getInitialSuggestionViewWrappers
{
  swift_beginAccess();
  selfCopy = self;

  sub_21E493B3C(v4);

  v6 = sub_21E48F1B0(v5);

  *(&selfCopy->super.isa + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionViews) = v6;

  sub_21E43F008(0, &qword_280C14100);
  v7 = sub_21E4DD078();

  return v7;
}

- (void)resetSuggestions
{
  v2 = MEMORY[0x277D84F90];
  *(&self->super.isa + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionViews) = MEMORY[0x277D84F90];
  selfCopy = self;

  v4 = OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_suggestionsList;
  swift_beginAccess();
  *(&selfCopy->super.isa + v4) = v2;
}

- (void)resetContinuerSuggestions
{
  v2 = MEMORY[0x277D84F90];
  *(&self->super.isa + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionViews) = MEMORY[0x277D84F90];
  selfCopy = self;

  *(&selfCopy->super.isa + OBJC_IVAR____TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider_continuerSuggestionsList) = v2;
}

- (void)suggestionsWereShownForCallback
{
  selfCopy = self;
  sub_21E494F78();
}

- (void)autoCompleteSuggestionsWereShownForCallback
{
  selfCopy = self;
  sub_21E496D18();
}

- (void)setDialogPhase:(id)phase
{
  phaseCopy = phase;
  selfCopy = self;
  sub_21E497BF4(phaseCopy);
}

- (void)setContextMenuHandlerWithContextMenuHandler:(id)handler
{
  v4 = _Block_copy(handler);
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
  selfCopy = self;
  sub_21E3F1EB0(v7);
}

- (void)startNewTypingSession
{
  selfCopy = self;
  sub_21E498094();
}

- (_TtC12SiriSharedUI44SiriSharedUIAssistantSuggestionsViewProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end