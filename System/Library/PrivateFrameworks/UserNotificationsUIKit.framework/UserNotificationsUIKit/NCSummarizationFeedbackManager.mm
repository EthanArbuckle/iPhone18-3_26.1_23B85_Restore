@interface NCSummarizationFeedbackManager
- (BOOL)isPriorityFeedbackEnabled;
- (BOOL)showInternalFeedbackMenu;
- (NCSummarizationFeedbackManager)init;
- (NCSummarizationFeedbackManager)initWithRequest:(id)request isShowingStackSummary:(BOOL)summary;
- (id)sectionTitle;
- (void)recordInternalPriorityFeedbackEvent:(unint64_t)event;
@end

@implementation NCSummarizationFeedbackManager

- (NCSummarizationFeedbackManager)initWithRequest:(id)request isShowingStackSummary:(BOOL)summary
{
  requestCopy = request;
  v6 = sub_21E8B8B54(requestCopy);
  if (v6)
  {
    v8 = self + OBJC_IVAR___NCSummarizationFeedbackManager_summarizationFeedbackManagerSwift;
    *v8 = v6;
    v8[8] = v7 & 1;
    v8[9] = HIBYTE(v7);
    v11.receiver = self;
    v11.super_class = NCSummarizationFeedbackManager;
    v9 = [(NCSummarizationFeedbackManager *)&v11 init];
  }

  else
  {

    type metadata accessor for NCSummarizationFeedbackManager();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v9;
}

- (BOOL)showInternalFeedbackMenu
{
  selfCopy = self;
  if ((os_variant_has_internal_content() & 1) != 0 || _NCDeviceIsRunningSeedBuild())
  {
    if (qword_27CED6AB0 != -1)
    {
      swift_once();
    }

    v3 = byte_27CED7178;

    v4 = v3 ^ 1;
  }

  else
  {

    v4 = 0;
  }

  return v4 & 1;
}

- (id)sectionTitle
{
  sub_21E8B8C00();
  v2 = sub_21E92A428();

  return v2;
}

- (BOOL)isPriorityFeedbackEnabled
{
  v5 = &type metadata for NotificationsUIFeatureFlags;
  v6 = sub_21E8B8B00();
  v4[0] = 2;
  v2 = sub_21E9297F8();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v2 & 1;
}

- (void)recordInternalPriorityFeedbackEvent:(unint64_t)event
{
  v15[1] = event;
  v4 = sub_21E929888();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21E9298B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(&self->super.isa + OBJC_IVAR___NCSummarizationFeedbackManager_summarizationFeedbackManagerSwift);
  selfCopy = self;
  sectionIdentifier = [v12 sectionIdentifier];
  sub_21E92A458();

  (*(v5 + 104))(v7, *MEMORY[0x277D77D98], v4);
  sub_21E9298A8();
  sub_21E929898();
  (*(v9 + 8))(v11, v8);
}

- (NCSummarizationFeedbackManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end