@interface TVExtension
- (id)appIdentifier;
- (id)appJSURL;
- (id)appLaunchParams;
- (id)userDefaultsStorage;
- (void)appContext:(id)a3 didFailWithError:(id)a4;
- (void)appContext:(id)a3 evaluateAppJavaScriptInContext:(id)a4;
- (void)appContext:(id)a3 scriptForURL:(id)a4 cachePolicy:(unint64_t)a5 completion:(id)a6;
@end

@implementation TVExtension

- (id)appLaunchParams
{
  v2 = self;
  sub_1E3ABE5AC();

  sub_1E4205C44();
  OUTLINED_FUNCTION_50();

  return v2;
}

- (id)appJSURL
{
  v2 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1E3ABEA54(v7 - v6);
  v9 = sub_1E41FE364();
  (*(v4 + 8))(v8, v2);

  return v9;
}

- (id)userDefaultsStorage
{
  v2 = self;
  v3 = sub_1E3ABEB9C();

  return v3;
}

- (id)appIdentifier
{
  v2 = self;
  v3 = sub_1E3ABEC20();
  v5 = v4;

  if (v5)
  {
    sub_1E4205ED4();
    OUTLINED_FUNCTION_50();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)appContext:(id)a3 scriptForURL:(id)a4 cachePolicy:(unint64_t)a5 completion:(id)a6
{
  v10 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = _Block_copy(a6);
  sub_1E41FE3C4();
  OUTLINED_FUNCTION_4_0();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = a3;
  v20 = self;
  sub_1E3ABECDC(v20, v16, a5, sub_1E3ABF568, v18);

  (*(v12 + 8))(v16, v10);
}

- (void)appContext:(id)a3 evaluateAppJavaScriptInContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1E3ABF0B8();
}

- (void)appContext:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_1E3ABF158(v7, v8);
}

@end