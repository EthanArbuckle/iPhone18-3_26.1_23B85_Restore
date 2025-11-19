@interface WBSPegasusResponseFuzzer
+ (WBSPegasusResponseFuzzer)sharedFuzzer;
+ (id)_protectedFields;
- (WBSPegasusResponseFuzzer)init;
- (WBSPegasusResponseFuzzer)initWithParsecSession:(id)a3 sampleResponsesPlistKey:(id)a4;
- (id)_validPegasusResponseForKey:(id)a3;
- (id)responseForQuery:(id)a3;
- (void)_recordMutatedPegasusResponseJSON;
@end

@implementation WBSPegasusResponseFuzzer

+ (WBSPegasusResponseFuzzer)sharedFuzzer
{
  if (sharedFuzzer_onceToken != -1)
  {
    +[WBSPegasusResponseFuzzer sharedFuzzer];
  }

  v3 = sharedFuzzer_sharedFuzzer;

  return v3;
}

void __40__WBSPegasusResponseFuzzer_sharedFuzzer__block_invoke()
{
  v0 = objc_alloc_init(WBSPegasusResponseFuzzer);
  v1 = sharedFuzzer_sharedFuzzer;
  sharedFuzzer_sharedFuzzer = v0;
}

+ (id)_protectedFields
{
  if (_protectedFields_onceToken != -1)
  {
    +[WBSPegasusResponseFuzzer _protectedFields];
  }

  v3 = _protectedFields__protectedFields;

  return v3;
}

void __44__WBSPegasusResponseFuzzer__protectedFields__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = [v0 initWithArray:MEMORY[0x1E695E0F0]];
  v2 = _protectedFields__protectedFields;
  _protectedFields__protectedFields = v1;
}

- (WBSPegasusResponseFuzzer)init
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [MEMORY[0x1E696AE30] processInfo];
  v4 = [v3 arguments];

  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v9 safari_hasPrefix:@"PegasusResponseFuzzer"] & 1) != 0 || (objc_msgSend(v9, "safari_hasPrefix:", @"PegasusResponseRegression"))
        {
          v13 = [WBSParsecDSession alloc];
          v11 = +[WBSParsecDSession sharedPARSession];
          v14 = [(WBSParsecDSession *)v13 initWithParsecdSession:v11 skipAutoFillDataUpdates:1];
          v12 = [(WBSPegasusResponseFuzzer *)self initWithParsecSession:v14 sampleResponsesPlistKey:v9];

          goto LABEL_12;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = [WBSParsecDSession alloc];
  v4 = +[WBSParsecDSession sharedPARSession];
  v11 = [(WBSParsecDSession *)v10 initWithParsecdSession:v4 skipAutoFillDataUpdates:1];
  v12 = [(WBSPegasusResponseFuzzer *)self initWithParsecSession:v11 sampleResponsesPlistKey:&stru_1F3A5E418];
LABEL_12:

  return v12;
}

- (WBSPegasusResponseFuzzer)initWithParsecSession:(id)a3 sampleResponsesPlistKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  v25.receiver = self;
  v25.super_class = WBSPegasusResponseFuzzer;
  v9 = [(WBSPegasusResponseFuzzer *)&v25 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parsecSession, a3);
    v10->_indexOfCurrentResponse = 0;
    v11 = [(WBSPegasusResponseFuzzer *)v10 _validPegasusResponseForKey:v8];
    validJSONPARResponse = v10->_validJSONPARResponse;
    v10->_validJSONPARResponse = v11;

    v13 = [WBSJSONMutator alloc];
    v14 = v10->_validJSONPARResponse;
    v15 = +[WBSPegasusResponseFuzzer _protectedFields];
    v16 = [(WBSJSONMutator *)v13 initWithSource:v14 protectedFields:v15];
    jsonMutator = v10->_jsonMutator;
    v10->_jsonMutator = v16;

    v18 = MEMORY[0x1E6998650];
    v19 = v10->_validJSONPARResponse;
    v20 = [(WBSParsecDSession *)v10->_parsecSession parsecdSession];
    v21 = [v18 responseFromJSON:v19 session:v20];
    currentResponse = v10->_currentResponse;
    v10->_currentResponse = v21;

    v10->_shouldAttachMutatedJSONToTestResultKeys = [v8 safari_hasPrefix:@"PegasusResponseFuzzer"];
    v23 = v10;
  }

  return v10;
}

- (id)responseForQuery:(id)a3
{
  v5 = self->_currentResponse;
  if ([a3 isEqualToString:self->_query])
  {
    if (self->_shouldAttachMutatedJSONToTestResultKeys)
    {
      [(WBSPegasusResponseFuzzer *)self _recordMutatedPegasusResponseJSON];
    }

    v6 = [(WBSJSONMutator *)self->_jsonMutator mutatedJSONProtectingRootObject:1];
    lastSimulatedJSON = self->_lastSimulatedJSON;
    self->_lastSimulatedJSON = v6;
    v8 = v6;

    v9 = MEMORY[0x1E6998650];
    v10 = [(WBSParsecDSession *)self->_parsecSession parsecdSession];
    v11 = [v9 responseFromJSON:v8 session:v10];
    currentResponse = self->_currentResponse;
    self->_currentResponse = v11;
  }

  return v5;
}

- (void)_recordMutatedPegasusResponseJSON
{
  lastSimulatedJSON = self->_lastSimulatedJSON;
  v19 = 0;
  v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:lastSimulatedJSON options:1 error:&v19];
  v4 = v19;
  if (v4)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [WBSPegasusResponseFuzzer _recordMutatedPegasusResponseJSON];
    }
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v3 encoding:4];
    v7 = [MEMORY[0x1E696AAE8] mainBundle];
    v8 = [v7 bundleURL];
    v9 = [v8 URLByAppendingPathComponent:@"PegasusResponseFuzzingJSON.json"];

    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [v9 path];
    v12 = [v10 fileExistsAtPath:v11];

    if ((v12 & 1) == 0)
    {
      v13 = [MEMORY[0x1E696AC08] defaultManager];
      v14 = [v9 path];
      [v13 createFileAtPath:v14 contents:0 attributes:0];
    }

    v15 = [v9 path];
    v18 = 0;
    [v6 writeToFile:v15 atomically:1 encoding:4 error:&v18];
    v16 = v18;

    if (v16)
    {
      v17 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [WBSPegasusResponseFuzzer _recordMutatedPegasusResponseJSON];
      }
    }
  }
}

- (id)_validPegasusResponseForKey:(id)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AAE8];
  v5 = a3;
  v6 = [v4 safari_safariSharedBundle];
  v7 = [v6 URLForResource:@"SafariPegasusResponseFuzzerSampleInputs" withExtension:@"plist"];

  v8 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v7];
  v9 = [v8 objectForKeyedSubscript:v5];

  v10 = [v9 objectForKeyedSubscript:@"query"];
  query = self->_query;
  self->_query = v10;

  v12 = [v9 objectForKeyedSubscript:@"sampleJSON"];
  v13 = [v12 dataUsingEncoding:4];
  if (v13)
  {
    v21 = 0;
    v14 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v13 options:0 error:&v21];
    v15 = v21;
    if (v15)
    {
      v16 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [WBSPegasusResponseFuzzer _validPegasusResponseForKey:];
      }

      v17 = 0;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22[0] = v14;
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];

        v14 = v19;
      }

      objc_storeStrong(&self->_lastSimulatedJSON, v14);
      v14 = v14;
      v17 = v14;
    }
  }

  else
  {
    v18 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [WBSPegasusResponseFuzzer _validPegasusResponseForKey:];
    }

    v17 = 0;
  }

  return v17;
}

@end