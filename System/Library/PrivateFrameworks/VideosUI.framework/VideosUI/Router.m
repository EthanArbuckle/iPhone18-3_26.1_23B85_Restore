@interface Router
- (BOOL)dismissViewControllerWithID:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (BOOL)handleDocumentDataSource:(id)a3 targetResponder:(id)a4 appContext:(id)a5 documentOptions:(id)a6 completion:(id)a7;
- (BOOL)isPresentingAlert;
- (void)accountPageViewControllerDidFinish:(id)a3;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)handleAccountSettingsEventWithUrl:(id)a3 amsBagKey:(id)a4 useAMSWebView:(BOOL)a5;
- (void)handleNetworkChanges;
- (void)invokeAction:(id)a3 targetResponder:(id)a4 completion:(id)a5;
- (void)presentAlertWithTitle:(id)a3 message:(id)a4 actions:(id)a5 animated:(BOOL)a6;
- (void)presentRouterDataSource:(id)a3;
- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)presentViewController:(id)a3 modalPresentationStyle:(int64_t)a4 animated:(BOOL)a5 completion:(id)a6;
@end

@implementation Router

- (void)presentRouterDataSource:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E40CA4B0();
}

- (void)accountPageViewControllerDidFinish:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E40CF63C();
}

- (void)handleNetworkChanges
{
  v2 = self;
  sub_1E40D2FD4();
}

- (void)presentAlertWithTitle:(id)a3 message:(id)a4 actions:(id)a5 animated:(BOOL)a6
{
  v7 = a4;
  if (a3)
  {
    sub_1E4205F14();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else if (a4)
  {
LABEL_3:
    v9 = sub_1E4205F14();
    v7 = v10;
    if (!a5)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v9 = 0;
  if (a5)
  {
LABEL_4:
    a5 = sub_1E42062B4();
  }

LABEL_5:
  v11 = self;
  v12 = OUTLINED_FUNCTION_13_8();
  sub_1E40D3274(v12, v13, v9, v7, a5);
}

- (void)presentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
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

- (void)presentViewController:(id)a3 modalPresentationStyle:(int64_t)a4 animated:(BOOL)a5 completion:(id)a6
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

- (void)handleAccountSettingsEventWithUrl:(id)a3 amsBagKey:(id)a4 useAMSWebView:(BOOL)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  if (a3)
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
  if (a4)
  {
    sub_1E4205F14();
  }

  v15 = self;
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_8_154();
  sub_1E40D3B70(v16, v17, v18, a5);

  sub_1E325F6F0(v12, &unk_1ECF363C0);
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  if (v5)
  {
    OUTLINED_FUNCTION_4_0();
    *(swift_allocObject() + 16) = v5;
  }

  v7 = self;
  sub_1E40D3E60();
  v6 = OUTLINED_FUNCTION_74();
  sub_1E34AF594(v6);
}

- (BOOL)isPresentingAlert
{
  v2 = self;
  v3 = sub_1E40D3F5C();

  return v3 & 1;
}

- (BOOL)dismissViewControllerWithID:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v7 = _Block_copy(a5);
  sub_1E4205F14();
  if (v7)
  {
    OUTLINED_FUNCTION_4_0();
    *(swift_allocObject() + 16) = v7;
    v7 = sub_1E37951AC;
  }

  v8 = self;
  v9 = OUTLINED_FUNCTION_11_6();
  v11 = sub_1E40D404C(v9, v10, v5, v7);
  v12 = OUTLINED_FUNCTION_124();
  sub_1E34AF594(v12);

  return v11 & 1;
}

- (void)invokeAction:(id)a3 targetResponder:(id)a4 completion:(id)a5
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

- (BOOL)handleDocumentDataSource:(id)a3 targetResponder:(id)a4 appContext:(id)a5 documentOptions:(id)a6 completion:(id)a7
{
  v12 = _Block_copy(a7);
  if (a6)
  {
    sub_1E4205C64();
  }

  if (v12)
  {
    OUTLINED_FUNCTION_4_0();
    *(swift_allocObject() + 16) = v12;
    v12 = sub_1E3835F0C;
  }

  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = self;
  sub_1E40D483C();
  v18 = v17;
  sub_1E34AF594(v12);

  return v18 & 1;
}

@end