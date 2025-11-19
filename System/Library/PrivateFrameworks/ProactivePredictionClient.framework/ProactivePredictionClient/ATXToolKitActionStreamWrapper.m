@interface ATXToolKitActionStreamWrapper
+ (BOOL)intentApprovedForSpotlightWithBundleID:(id)a3 intentClassName:(id)a4;
+ (id)canonicalIdentifierForEncodedToolInvocationWithEncodedInvocation:(id)a3;
+ (id)lastDateForToolKitActionEvent;
+ (id)toolIDForSiriKitIntentWithBundleID:(id)a3 intentClassName:(id)a4;
+ (id)toolKitEventsWithStartDate:(id)a3 endDate:(id)a4 limit:(unint64_t)a5 bundleIDFilter:(id)a6;
+ (void)fetchTitlesFromToolInvocations:(NSArray *)a3 completionHandler:(id)a4;
- (ATXToolKitActionStreamWrapper)init;
@end

@implementation ATXToolKitActionStreamWrapper

+ (void)fetchTitlesFromToolInvocations:(NSArray *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FFF0, &qword_260DF8CD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = a1;
  v13 = sub_260DF5B34();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_260DF8CE0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_260DF8CF0;
  v15[5] = v14;
  v16 = a3;
  sub_260DED444(0, 0, v10, &unk_260DF8D00, v15);
}

+ (id)toolKitEventsWithStartDate:(id)a3 endDate:(id)a4 limit:(unint64_t)a5 bundleIDFilter:(id)a6
{
  v8 = sub_260DF5444();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  sub_260DF5424();
  sub_260DF5424();
  if (a6)
  {
    v16 = sub_260DF59C4();
    a6 = v17;
  }

  else
  {
    v16 = 0;
  }

  _s25ProactivePredictionClient26ToolKitActionStreamWrapperC04toolE6Events9startDate03endL05limit14bundleIDFilterSayAA0defG5EventCG10Foundation0L0V_ANSuSSSgtFZ_0(v15, v13, a5, v16, a6);

  v18 = *(v9 + 8);
  v18(v13, v8);
  v18(v15, v8);
  type metadata accessor for ToolKitActionStreamEvent();
  v19 = sub_260DF5A94();

  return v19;
}

+ (id)lastDateForToolKitActionEvent
{
  v2 = sub_260DF5444();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ToolKitActionStreamWrapper.lastDateForToolKitActionEvent()(v6);
  v7 = sub_260DF5414();
  (*(v3 + 8))(v6, v2);

  return v7;
}

+ (id)toolIDForSiriKitIntentWithBundleID:(id)a3 intentClassName:(id)a4
{
  v4 = sub_260DF59C4();
  v6 = v5;
  v7 = sub_260DF59C4();
  _s25ProactivePredictionClient26ToolKitActionStreamWrapperC013toolIDForSiriE6Intent8bundleID15intentClassNameS2S_SStFZ_0(v4, v6, v7, v8);

  v9 = sub_260DF59B4();

  return v9;
}

+ (BOOL)intentApprovedForSpotlightWithBundleID:(id)a3 intentClassName:(id)a4
{
  v4 = sub_260DF59C4();
  v6 = v5;
  v7 = sub_260DF59C4();
  LOBYTE(v4) = _s25ProactivePredictionClient26ToolKitActionStreamWrapperC26intentApprovedForSpotlight8bundleID0I9ClassNameSbSS_SStFZ_0(v4, v6, v7, v8);

  return v4 & 1;
}

+ (id)canonicalIdentifierForEncodedToolInvocationWithEncodedInvocation:(id)a3
{
  v3 = a3;
  _s25ProactivePredictionClient26ToolKitActionStreamWrapperC029canonicalIdentifierForEncodedD10Invocation07encodedM0SSSo6NSDataC_tFZ_0();

  v4 = sub_260DF59B4();

  return v4;
}

- (ATXToolKitActionStreamWrapper)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ATXToolKitActionStreamWrapper *)&v3 init];
}

@end