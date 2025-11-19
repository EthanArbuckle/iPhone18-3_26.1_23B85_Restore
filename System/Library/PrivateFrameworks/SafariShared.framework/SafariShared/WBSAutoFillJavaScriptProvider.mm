@interface WBSAutoFillJavaScriptProvider
+ (WBSAutoFillJavaScriptProvider)sharedProvider;
- (NSArray)javaScriptStringsToInject;
- (id)_autoFillKeywords;
@end

@implementation WBSAutoFillJavaScriptProvider

+ (WBSAutoFillJavaScriptProvider)sharedProvider
{
  if (sharedProvider_onceToken_0 != -1)
  {
    +[WBSAutoFillJavaScriptProvider sharedProvider];
  }

  v3 = sharedProvider_sharedInstance;

  return v3;
}

void __47__WBSAutoFillJavaScriptProvider_sharedProvider__block_invoke()
{
  v0 = objc_alloc_init(WBSAutoFillJavaScriptProvider);
  v1 = sharedProvider_sharedInstance;
  sharedProvider_sharedInstance = v0;
}

- (NSArray)javaScriptStringsToInject
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__WBSAutoFillJavaScriptProvider_javaScriptStringsToInject__block_invoke;
  block[3] = &unk_1E7FB6D90;
  block[4] = self;
  if (javaScriptStringsToInject_onceToken != -1)
  {
    dispatch_once(&javaScriptStringsToInject_onceToken, block);
  }

  return javaScriptStringsToInject_scriptStrings;
}

void __58__WBSAutoFillJavaScriptProvider_javaScriptStringsToInject__block_invoke(uint64_t a1)
{
  v22[7] = *MEMORY[0x1E69E9840];
  v21 = [*(a1 + 32) _autoFillKeywords];
  v22[0] = v21;
  v1 = objc_alloc(MEMORY[0x1E696AEC0]);
  v20 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:formMetadataContactsAutoFillMappingsSource length:243220 freeWhenDone:0];
  v19 = [v1 initWithData:v20 encoding:4];
  v22[1] = v19;
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:formMetadataClassificationSource length:15447 freeWhenDone:0];
  v4 = [v2 initWithData:v3 encoding:4];
  v22[2] = v4;
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:formMetadataJSControllerSource length:10572 freeWhenDone:0];
  v7 = [v5 initWithData:v6 encoding:4];
  v22[3] = v7;
  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:formMetadataSource length:108507 freeWhenDone:0];
  v10 = [v8 initWithData:v9 encoding:4];
  v22[4] = v10;
  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:automaticPasswordsSource length:1340 freeWhenDone:0];
  v13 = [v11 initWithData:v12 encoding:4];
  v22[5] = v13;
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v15 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:nodePathSource length:14503 freeWhenDone:0];
  v16 = [v14 initWithData:v15 encoding:4];
  v22[6] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:7];
  v18 = javaScriptStringsToInject_scriptStrings;
  javaScriptStringsToInject_scriptStrings = v17;
}

- (id)_autoFillKeywords
{
  if (_autoFillKeywords_onceToken != -1)
  {
    [WBSAutoFillJavaScriptProvider _autoFillKeywords];
  }

  v3 = _autoFillKeywords_cachedJavaScriptKeywords;

  return v3;
}

void __50__WBSAutoFillJavaScriptProvider__autoFillKeywords__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] safari_safariSharedBundle];
  v1 = [v0 URLForResource:@"WBSFormAutoFillKeywords" withExtension:@"json"];

  v2 = MEMORY[0x1E696ACB0];
  v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v1];
  v13 = 0;
  v4 = [v2 JSONObjectWithData:v3 options:24 error:&v13];
  v5 = v13;

  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = v5;
  v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v4 options:0 error:&v12];
  v8 = v12;

  v9 = [v6 initWithData:v7 encoding:4];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"const FormAutoFillKeywords = %@", v9];;
  v11 = _autoFillKeywords_cachedJavaScriptKeywords;
  _autoFillKeywords_cachedJavaScriptKeywords = v10;
}

@end