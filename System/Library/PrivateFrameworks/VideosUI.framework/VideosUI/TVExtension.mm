@interface TVExtension
- (id)appIdentifier;
- (id)appJSURL;
- (id)appLaunchParams;
- (id)userDefaultsStorage;
- (void)appContext:(id)context didFailWithError:(id)error;
- (void)appContext:(id)context evaluateAppJavaScriptInContext:(id)inContext;
- (void)appContext:(id)context scriptForURL:(id)l cachePolicy:(unint64_t)policy completion:(id)completion;
@end

@implementation TVExtension

- (id)appLaunchParams
{
  selfCopy = self;
  sub_1E3ABE5AC();

  sub_1E4205C44();
  OUTLINED_FUNCTION_50();

  return selfCopy;
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
  selfCopy = self;
  v3 = sub_1E3ABEB9C();

  return v3;
}

- (id)appIdentifier
{
  selfCopy = self;
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

- (void)appContext:(id)context scriptForURL:(id)l cachePolicy:(unint64_t)policy completion:(id)completion
{
  v10 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = _Block_copy(completion);
  sub_1E41FE3C4();
  OUTLINED_FUNCTION_4_0();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  contextCopy = context;
  selfCopy = self;
  sub_1E3ABECDC(selfCopy, v16, policy, sub_1E3ABF568, v18);

  (*(v12 + 8))(v16, v10);
}

- (void)appContext:(id)context evaluateAppJavaScriptInContext:(id)inContext
{
  contextCopy = context;
  inContextCopy = inContext;
  selfCopy = self;
  sub_1E3ABF0B8();
}

- (void)appContext:(id)context didFailWithError:(id)error
{
  contextCopy = context;
  errorCopy = error;
  selfCopy = self;
  sub_1E3ABF158(selfCopy, errorCopy);
}

@end