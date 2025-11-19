@interface WBSReaderResources
+ (OpaqueJSScript)articleFinderScriptForContext:(OpaqueJSContext *)a3;
+ (OpaqueJSScript)sharedUINormalWorldScriptForContext:(OpaqueJSContext *)a3;
+ (OpaqueJSScript)sharedUIScriptForContext:(OpaqueJSContext *)a3;
+ (id)localizedStringsScriptURL;
+ (id)readerHTMLSourceURL;
@end

@implementation WBSReaderResources

+ (id)readerHTMLSourceURL
{
  {
    v4 = [MEMORY[0x1E696AAE8] safari_safariSharedBundle];
    +[WBSReaderResources readerHTMLSourceURL]::readerSourcePathURL = [v4 URLForResource:@"Reader" withExtension:@"html"];
  }

  v2 = +[WBSReaderResources readerHTMLSourceURL]::readerSourcePathURL;

  return v2;
}

+ (id)localizedStringsScriptURL
{
  v2 = [MEMORY[0x1E696AAE8] safari_safariSharedBundle];
  v3 = [v2 URLForResource:@"WBSLocalizedStrings" withExtension:@"js"];

  return v3;
}

+ (OpaqueJSScript)articleFinderScriptForContext:(OpaqueJSContext *)a3
{
  if (_MergedGlobals_1 == 1)
  {
    return qword_1EBC79480;
  }

  v6[1] = v3;
  v6[2] = v4;
  [(WBSReaderResources *)a3 articleFinderScriptForContext:v6];
  return v6[0];
}

+ (OpaqueJSScript)sharedUIScriptForContext:(OpaqueJSContext *)a3
{
  if (byte_1EBC79479 == 1)
  {
    return qword_1EBC79488;
  }

  v6[1] = v3;
  v6[2] = v4;
  [(WBSReaderResources *)a3 sharedUIScriptForContext:v6];
  return v6[0];
}

+ (OpaqueJSScript)sharedUINormalWorldScriptForContext:(OpaqueJSContext *)a3
{
  if (byte_1EBC7947A == 1)
  {
    return qword_1EBC79490;
  }

  v6[1] = v3;
  v6[2] = v4;
  [(WBSReaderResources *)a3 sharedUINormalWorldScriptForContext:v6];
  return v6[0];
}

+ (uint64_t)articleFinderScriptForContext:(const OpaqueJSContext *)a1 .cold.1(const OpaqueJSContext *a1, uint64_t *a2)
{
  JSContextGetGroup(a1);
  result = OUTLINED_FUNCTION_0_16();
  *a2 = result;
  qword_1EBC79480 = result;
  _MergedGlobals_1 = 1;
  return result;
}

+ (uint64_t)sharedUIScriptForContext:(const OpaqueJSContext *)a1 .cold.1(const OpaqueJSContext *a1, uint64_t *a2)
{
  JSContextGetGroup(a1);
  result = OUTLINED_FUNCTION_0_16();
  *a2 = result;
  qword_1EBC79488 = result;
  byte_1EBC79479 = 1;
  return result;
}

+ (uint64_t)sharedUINormalWorldScriptForContext:(const OpaqueJSContext *)a1 .cold.1(const OpaqueJSContext *a1, uint64_t *a2)
{
  JSContextGetGroup(a1);
  result = OUTLINED_FUNCTION_0_16();
  *a2 = result;
  qword_1EBC79490 = result;
  byte_1EBC7947A = 1;
  return result;
}

@end