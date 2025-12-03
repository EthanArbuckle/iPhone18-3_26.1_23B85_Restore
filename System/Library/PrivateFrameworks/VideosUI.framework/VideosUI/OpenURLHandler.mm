@interface OpenURLHandler
- (BOOL)isFinished;
- (BOOL)isLoadingSharedWatchURL;
- (BOOL)isRedeemURL:(id)l;
- (NSURL)deferredOpenURL;
- (id)queryParameterStringfromURL:(id)l parameter:(id)parameter;
- (void)handleDeferredURLWithAppContext:(id)context;
- (void)openSharedWatchURL:(id)l appContext:(id)context completion:(id)completion;
- (void)processDeeplink:(id)deeplink appContext:(id)context completion:(id)completion;
- (void)processEngagementResult:(id)result error:(id)error;
- (void)processEntityWithContextData:(id)data appContext:(id)context;
- (void)processItunesExtrasStoreLink:(id)link;
- (void)processNonDeeplinkURL:(id)l contextData:(id)data sharedWatchUrl:(id)url appContext:(id)context completion:(id)completion;
- (void)processRouterDeeplink:(id)deeplink completion:(id)completion;
- (void)saveDeferredURL:(id)l completion:(id)completion;
- (void)setDeferredOpenURL:(id)l;
- (void)setIsFinished:(BOOL)finished;
- (void)setIsLoadingSharedWatchURL:(BOOL)l;
@end

@implementation OpenURLHandler

- (BOOL)isLoadingSharedWatchURL
{
  selfCopy = self;
  sub_1E32A3C60();
  v4 = v3;

  return v4 & 1;
}

- (NSURL)deferredOpenURL
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_50_1();
  sub_1E3A2D7CC(v2);
  sub_1E41FE414();
  v6 = OUTLINED_FUNCTION_87_0();
  v7 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v3) != 1)
  {
    v7 = sub_1E41FE364();
    OUTLINED_FUNCTION_34_34();
    v8 = OUTLINED_FUNCTION_27_0();
    v9(v8);
  }

  return v7;
}

- (void)setDeferredOpenURL:(id)l
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  if (l)
  {
    sub_1E41FE3C4();
    sub_1E41FE414();
    OUTLINED_FUNCTION_320();
  }

  else
  {
    sub_1E41FE414();
    OUTLINED_FUNCTION_319();
  }

  __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
  selfCopy = self;
  v12 = OUTLINED_FUNCTION_12_1();
  sub_1E3A2D8EC(v12);
}

- (BOOL)isFinished
{
  selfCopy = self;
  sub_1E3A2DB24();
  v4 = v3;

  return v4 & 1;
}

- (void)setIsFinished:(BOOL)finished
{
  selfCopy = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E3A2DB80();
}

- (void)setIsLoadingSharedWatchURL:(BOOL)l
{
  selfCopy = self;
  OUTLINED_FUNCTION_10_0();
  sub_1E3A2DC50();
}

- (BOOL)isRedeemURL:(id)l
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  if (l)
  {
    sub_1E41FE3C4();
    sub_1E41FE414();
    OUTLINED_FUNCTION_320();
  }

  else
  {
    sub_1E41FE414();
    OUTLINED_FUNCTION_319();
  }

  __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
  selfCopy = self;
  OUTLINED_FUNCTION_12_1();
  sub_1E3A2DE7C();
  v13 = v12;

  sub_1E325F6F0(v8, &unk_1ECF363C0);
  return v13 & 1;
}

- (id)queryParameterStringfromURL:(id)l parameter:(id)parameter
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_50_1();
  if (l)
  {
    sub_1E41FE3C4();
    sub_1E41FE414();
    OUTLINED_FUNCTION_320();
  }

  else
  {
    sub_1E41FE414();
    OUTLINED_FUNCTION_319();
  }

  __swift_storeEnumTagSinglePayload(v4, v9, 1, v10);
  sub_1E4205F14();
  OUTLINED_FUNCTION_9_9();
  selfCopy = self;
  OUTLINED_FUNCTION_27_0();
  sub_1E3A2E65C();
  v13 = v12;

  sub_1E325F6F0(v4, &unk_1ECF363C0);
  if (v13)
  {
    OUTLINED_FUNCTION_67_0();
    sub_1E4205ED4();
    OUTLINED_FUNCTION_12_1();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)openSharedWatchURL:(id)l appContext:(id)context completion:(id)completion
{
  OUTLINED_FUNCTION_82_2();
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_106();
  sub_1E41FE414();
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33_0();
  v11 = _Block_copy(v7);
  sub_1E41FE3C4();
  if (v11)
  {
    OUTLINED_FUNCTION_4_0();
    *(swift_allocObject() + 16) = v11;
  }

  v12 = v9;
  v13 = v5;
  OUTLINED_FUNCTION_38();
  sub_1E3A2EC48();
  v14 = OUTLINED_FUNCTION_124();
  sub_1E34AF594(v14);

  v15 = OUTLINED_FUNCTION_13_8();
  v16(v15);
  OUTLINED_FUNCTION_95();
}

- (void)processDeeplink:(id)deeplink appContext:(id)context completion:(id)completion
{
  OUTLINED_FUNCTION_82_2();
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_144_0();
  sub_1E41FE414();
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33_0();
  v11 = _Block_copy(v7);
  sub_1E41FE3C4();
  if (v11)
  {
    OUTLINED_FUNCTION_4_0();
    *(swift_allocObject() + 16) = v11;
  }

  v12 = v9;
  v13 = v5;
  OUTLINED_FUNCTION_67_0();
  sub_1E3A30608();
  v14 = OUTLINED_FUNCTION_124();
  sub_1E34AF594(v14);

  v15 = OUTLINED_FUNCTION_13_8();
  v16(v15);
  OUTLINED_FUNCTION_95();
}

- (void)processNonDeeplinkURL:(id)l contextData:(id)data sharedWatchUrl:(id)url appContext:(id)context completion:(id)completion
{
  OUTLINED_FUNCTION_31_1();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  OUTLINED_FUNCTION_144_0();
  v23 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_33_0();
  v20 = _Block_copy(v10);
  sub_1E41FE3C4();
  if (v16)
  {
    sub_1E4205C64();
  }

  if (!v14)
  {
    if (!v20)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  sub_1E4205F14();
  if (v20)
  {
LABEL_5:
    OUTLINED_FUNCTION_4_0();
    *(swift_allocObject() + 16) = v20;
    v20 = sub_1E3A4D100;
  }

LABEL_7:
  v21 = v12;
  v22 = v8;
  sub_1E3A31438();
  sub_1E34AF594(v20);

  (*(v18 + 8))(v7, v23);
  OUTLINED_FUNCTION_25_2();
}

- (void)processRouterDeeplink:(id)deeplink completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    OUTLINED_FUNCTION_4_0();
    *(swift_allocObject() + 16) = v6;
  }

  deeplinkCopy = deeplink;
  selfCopy = self;
  OUTLINED_FUNCTION_53();
  sub_1E3A32134();
  v8 = OUTLINED_FUNCTION_74();
  sub_1E34AF594(v8);
}

- (void)saveDeferredURL:(id)l completion:(id)completion
{
  OUTLINED_FUNCTION_144_0();
  sub_1E41FE414();
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_12();
  v8 = _Block_copy(completion);
  sub_1E41FE3C4();
  OUTLINED_FUNCTION_4_0();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = v4;
  sub_1E3A3276C(v5, sub_1E3A49D90, v9);

  v11 = OUTLINED_FUNCTION_38_0();
  v12(v11);
}

- (void)handleDeferredURLWithAppContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1E3A3297C();
}

- (void)processEntityWithContextData:(id)data appContext:(id)context
{
  sub_1E4205C64();
  contextCopy = context;
  selfCopy = self;
  OUTLINED_FUNCTION_13_8();
  sub_1E3A32C2C();
}

- (void)processEngagementResult:(id)result error:(id)error
{
  resultCopy = result;
  selfCopy = self;
  errorCopy = error;
  OUTLINED_FUNCTION_13_8();
  sub_1E3A341CC();
}

- (void)processItunesExtrasStoreLink:(id)link
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_2();
  if (link)
  {
    sub_1E41FE3C4();
    sub_1E41FE414();
    OUTLINED_FUNCTION_320();
  }

  else
  {
    sub_1E41FE414();
    OUTLINED_FUNCTION_319();
  }

  __swift_storeEnumTagSinglePayload(v3, v8, 1, v9);
  selfCopy = self;
  OUTLINED_FUNCTION_38();
  sub_1E3A349F0();

  sub_1E325F6F0(v3, &unk_1ECF363C0);
}

@end