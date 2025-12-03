@interface UnifiedMessagingManager
- (id)getFullorHalfSheetPromptedAt;
- (void)engagement:(id)engagement didUpdateEngagementRequest:(id)request placement:(id)placement serviceType:(id)type completion:(id)completion;
- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type;
- (void)engagement:(id)engagement handleDialogRequest:(id)request completion:(id)completion;
- (void)engagement:(id)engagement handleEngagementRequest:(id)request completion:(id)completion;
- (void)engagementViewController:(id)controller contentViewControllerWithDictionary:(id)dictionary completionHandler:(id)handler;
- (void)handleDidBecomeActive;
- (void)handleTabBarChange:(id)change;
- (void)markFullorHalfSheetPromptAt:(id)at;
@end

@implementation UnifiedMessagingManager

- (void)handleDidBecomeActive
{
  selfCopy = self;
  sub_1E329D40C();
}

- (id)getFullorHalfSheetPromptedAt
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  selfCopy = self;
  sub_1E3B5B81C();

  v8 = sub_1E41FE5D4();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_1E41FE514();
    OUTLINED_FUNCTION_37_1();
    v10 = OUTLINED_FUNCTION_27_0();
    v11(v10);
  }

  return v9;
}

- (void)markFullorHalfSheetPromptAt:(id)at
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_139();
  if (at)
  {
    sub_1E41FE584();
    v8 = sub_1E41FE5D4();
    v9 = 0;
  }

  else
  {
    v8 = sub_1E41FE5D4();
    v9 = 1;
  }

  __swift_storeEnumTagSinglePayload(v3, v9, 1, v8);
  selfCopy = self;
  sub_1E329D524();

  sub_1E325F6F0(v3, &unk_1ECF28E20);
}

- (void)handleTabBarChange:(id)change
{
  OUTLINED_FUNCTION_106();
  sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  sub_1E41FDEE4();
  v5 = v3;
  sub_1E3B5BA74();

  v6 = OUTLINED_FUNCTION_74();
  v7(v6);
}

- (void)engagementViewController:(id)controller contentViewControllerWithDictionary:(id)dictionary completionHandler:(id)handler
{
  v7 = OUTLINED_FUNCTION_196(self, a2, controller, dictionary, handler);
  sub_1E4205C64();
  OUTLINED_FUNCTION_4_0();
  *(swift_allocObject() + 16) = v7;
  v8 = v5;
  v9 = v6;
  OUTLINED_FUNCTION_16_0();
  sub_1E3B5BC38();
}

- (void)engagement:(id)engagement handleEngagementRequest:(id)request completion:(id)completion
{
  v8 = OUTLINED_FUNCTION_196(self, a2, engagement, request, completion);
  _Block_copy(v8);
  v9 = v6;
  v10 = v5;
  v14 = v7;
  v11 = OUTLINED_FUNCTION_16_0();
  sub_1E3B5C374(v11, v12, v13, v8);
  _Block_release(v8);
}

- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type
{
  sub_1E4205F14();
  sub_1E4205F14();
  engagementCopy = engagement;
  requestCopy = request;
  selfCopy = self;
  sub_1E3B5CBC4();
}

- (void)engagement:(id)engagement didUpdateEngagementRequest:(id)request placement:(id)placement serviceType:(id)type completion:(id)completion
{
  OUTLINED_FUNCTION_31_1();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = _Block_copy(v13);
  v15 = sub_1E4205F14();
  v17 = v16;
  v18 = sub_1E4205F14();
  v20 = v19;
  _Block_copy(v14);
  v21 = v10;
  v22 = v8;
  v23 = v12;
  v24 = OUTLINED_FUNCTION_74();
  sub_1E3B5DBF4(v24, v25, v15, v17, v18, v20, v23, v14);
  _Block_release(v14);

  OUTLINED_FUNCTION_25_2();
}

- (void)engagement:(id)engagement handleDialogRequest:(id)request completion:(id)completion
{
  v5 = _Block_copy(completion);
  OUTLINED_FUNCTION_4_0();
  *(swift_allocObject() + 16) = v5;
}

@end