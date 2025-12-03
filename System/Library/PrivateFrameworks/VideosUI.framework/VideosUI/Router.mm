@interface Router
- (BOOL)dismissViewControllerWithID:(id)d animated:(BOOL)animated completion:(id)completion;
- (BOOL)handleDocumentDataSource:(id)source targetResponder:(id)responder appContext:(id)context documentOptions:(id)options completion:(id)completion;
- (BOOL)isPresentingAlert;
- (void)accountPageViewControllerDidFinish:(id)finish;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)handleAccountSettingsEventWithUrl:(id)url amsBagKey:(id)key useAMSWebView:(BOOL)view;
- (void)handleNetworkChanges;
- (void)invokeAction:(id)action targetResponder:(id)responder completion:(id)completion;
- (void)presentAlertWithTitle:(id)title message:(id)message actions:(id)actions animated:(BOOL)animated;
- (void)presentRouterDataSource:(id)source;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)presentViewController:(id)controller modalPresentationStyle:(int64_t)style animated:(BOOL)animated completion:(id)completion;
@end

@implementation Router

- (void)presentRouterDataSource:(id)source
{
  sourceCopy = source;
  selfCopy = self;
  sub_1E40CA4B0();
}

- (void)accountPageViewControllerDidFinish:(id)finish
{
  finishCopy = finish;
  selfCopy = self;
  sub_1E40CF63C();
}

- (void)handleNetworkChanges
{
  selfCopy = self;
  sub_1E40D2FD4();
}

- (void)presentAlertWithTitle:(id)title message:(id)message actions:(id)actions animated:(BOOL)animated
{
  messageCopy = message;
  if (title)
  {
    sub_1E4205F14();
    if (messageCopy)
    {
      goto LABEL_3;
    }
  }

  else if (message)
  {
LABEL_3:
    v9 = sub_1E4205F14();
    messageCopy = v10;
    if (!actions)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v9 = 0;
  if (actions)
  {
LABEL_4:
    actions = sub_1E42062B4();
  }

LABEL_5:
  selfCopy = self;
  v12 = OUTLINED_FUNCTION_13_8();
  sub_1E40D3274(v12, v13, v9, messageCopy, actions);
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  OUTLINED_FUNCTION_201_0();
  v6 = v5;
  v8 = v7;
  v10 = _Block_copy(v9);
  if (v10)
  {
    OUTLINED_FUNCTION_4_0();
    *(swift_allocObject() + 16) = v10;
  }

  v11 = v6;
  v8;
  OUTLINED_FUNCTION_168_5();
  sub_1E40D3828(v12, v13, v14, v15);
  v16 = OUTLINED_FUNCTION_53();
  sub_1E34AF594(v16);

  OUTLINED_FUNCTION_200();
}

- (void)presentViewController:(id)controller modalPresentationStyle:(int64_t)style animated:(BOOL)animated completion:(id)completion
{
  OUTLINED_FUNCTION_201_0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = _Block_copy(v12);
  if (v13)
  {
    OUTLINED_FUNCTION_4_0();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v13 = sub_1E387F68C;
  }

  else
  {
    v14 = 0;
  }

  v15 = v9;
  v11;
  v16 = OUTLINED_FUNCTION_78_0();
  sub_1E40D39C8(v16, v17, v7, v13, v14);
  v18 = OUTLINED_FUNCTION_124();
  sub_1E34AF594(v18);

  OUTLINED_FUNCTION_200();
}

- (void)handleAccountSettingsEventWithUrl:(id)url amsBagKey:(id)key useAMSWebView:(BOOL)view
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  if (url)
  {
    sub_1E41FE3C4();
    v13 = sub_1E41FE414();
    v14 = 0;
  }

  else
  {
    v13 = sub_1E41FE414();
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v12, v14, 1, v13);
  if (key)
  {
    sub_1E4205F14();
  }

  selfCopy = self;
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_8_154();
  sub_1E40D3B70(v16, v17, v18, view);

  sub_1E325F6F0(v12, &unk_1ECF363C0);
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  v5 = _Block_copy(completion);
  if (v5)
  {
    OUTLINED_FUNCTION_4_0();
    *(swift_allocObject() + 16) = v5;
  }

  selfCopy = self;
  sub_1E40D3E60();
  v6 = OUTLINED_FUNCTION_74();
  sub_1E34AF594(v6);
}

- (BOOL)isPresentingAlert
{
  selfCopy = self;
  v3 = sub_1E40D3F5C();

  return v3 & 1;
}

- (BOOL)dismissViewControllerWithID:(id)d animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v7 = _Block_copy(completion);
  sub_1E4205F14();
  if (v7)
  {
    OUTLINED_FUNCTION_4_0();
    *(swift_allocObject() + 16) = v7;
    v7 = sub_1E37951AC;
  }

  selfCopy = self;
  v9 = OUTLINED_FUNCTION_11_6();
  v11 = sub_1E40D404C(v9, v10, animatedCopy, v7);
  v12 = OUTLINED_FUNCTION_124();
  sub_1E34AF594(v12);

  return v11 & 1;
}

- (void)invokeAction:(id)action targetResponder:(id)responder completion:(id)completion
{
  OUTLINED_FUNCTION_201_0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = _Block_copy(v11);
  if (v12)
  {
    OUTLINED_FUNCTION_4_0();
    *(swift_allocObject() + 16) = v12;
  }

  v13 = v8;
  v14 = v6;
  v10;
  OUTLINED_FUNCTION_168_5();
  sub_1E40D4190();
  v15 = OUTLINED_FUNCTION_53();
  sub_1E34AF594(v15);

  OUTLINED_FUNCTION_200();
}

- (BOOL)handleDocumentDataSource:(id)source targetResponder:(id)responder appContext:(id)context documentOptions:(id)options completion:(id)completion
{
  v12 = _Block_copy(completion);
  if (options)
  {
    sub_1E4205C64();
  }

  if (v12)
  {
    OUTLINED_FUNCTION_4_0();
    *(swift_allocObject() + 16) = v12;
    v12 = sub_1E3835F0C;
  }

  sourceCopy = source;
  responderCopy = responder;
  contextCopy = context;
  selfCopy = self;
  sub_1E40D483C();
  v18 = v17;
  sub_1E34AF594(v12);

  return v18 & 1;
}

@end