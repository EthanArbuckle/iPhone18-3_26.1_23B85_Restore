@interface TPSDiscoverabilitySignal
+ (id)osBuild;
- (TPSDiscoverabilitySignal)initWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier context:(id)context;
- (id)_discoverabilitySignalsStream;
- (id)_knowledgeStore;
- (void)donateSignalWithCompletion:(id)completion;
@end

@implementation TPSDiscoverabilitySignal

- (id)_discoverabilitySignalsStream
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v2 = get_DKEventStreamClass_softClass;
  v17 = get_DKEventStreamClass_softClass;
  if (!get_DKEventStreamClass_softClass)
  {
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __get_DKEventStreamClass_block_invoke;
    v12 = &unk_278733760;
    v13 = &v14;
    __get_DKEventStreamClass_block_invoke(&v9);
    v2 = v15[3];
  }

  v3 = v2;
  _Block_object_dispose(&v14, 8);
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v4 = get_DKAnyStringIdentifierClass_softClass;
  v17 = get_DKAnyStringIdentifierClass_softClass;
  if (!get_DKAnyStringIdentifierClass_softClass)
  {
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __get_DKAnyStringIdentifierClass_block_invoke;
    v12 = &unk_278733760;
    v13 = &v14;
    __get_DKAnyStringIdentifierClass_block_invoke(&v9);
    v4 = v15[3];
  }

  v5 = v4;
  _Block_object_dispose(&v14, 8);
  type = [v4 type];
  v7 = [v2 eventStreamWithName:@"/discoverability/signals" valueType:type];

  return v7;
}

- (id)_knowledgeStore
{
  if (_knowledgeStore_onceToken != -1)
  {
    dispatch_once(&_knowledgeStore_onceToken, &__block_literal_global_9192);
  }

  v3 = _knowledgeStore_store;

  return v3;
}

void __43__TPSDiscoverabilitySignal__knowledgeStore__block_invoke()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = get_DKKnowledgeStoreClass_softClass;
  v8 = get_DKKnowledgeStoreClass_softClass;
  if (!get_DKKnowledgeStoreClass_softClass)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __get_DKKnowledgeStoreClass_block_invoke;
    v4[3] = &unk_278733760;
    v4[4] = &v5;
    __get_DKKnowledgeStoreClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = [v0 knowledgeStore];
  v3 = _knowledgeStore_store;
  _knowledgeStore_store = v2;
}

- (void)donateSignalWithCompletion:(id)completion
{
  v43[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  date = [MEMORY[0x277CBEAA8] date];
  identifier = [(TPSDiscoverabilitySignal *)self identifier];
  bundleIdentifier = [(TPSDiscoverabilitySignal *)self bundleIdentifier];
  v6 = bundleIdentifier;
  if (bundleIdentifier)
  {
    bundleIdentifier2 = bundleIdentifier;
  }

  else
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier2 = [mainBundle bundleIdentifier];
  }

  context = [(TPSDiscoverabilitySignal *)self context];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2050000000;
  v10 = get_DKSourceClass_softClass;
  v42 = get_DKSourceClass_softClass;
  if (!get_DKSourceClass_softClass)
  {
    v34 = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = __get_DKSourceClass_block_invoke;
    v37 = &unk_278733760;
    v38 = &v39;
    __get_DKSourceClass_block_invoke(&v34);
    v10 = v40[3];
  }

  v11 = v10;
  _Block_object_dispose(&v39, 8);
  v12 = [[v10 alloc] initWithIdentifier:0 bundleIdentifier:bundleIdentifier2 itemIdentifier:0 groupIdentifier:0 deviceIdentifier:0 userIdentifier:0];
  v13 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  osBuild = [objc_opt_class() osBuild];
  [v13 setObject:osBuild forKeyedSubscript:@"_DKDiscoverabilitySignalsMetadataKey-osBuild"];

  [v13 setObject:context forKeyedSubscript:@"_DKDiscoverabilitySignalsMetadataKey-context"];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2050000000;
  v15 = get_DKEventClass_softClass;
  v42 = get_DKEventClass_softClass;
  if (!get_DKEventClass_softClass)
  {
    v34 = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = __get_DKEventClass_block_invoke;
    v37 = &unk_278733760;
    v38 = &v39;
    __get_DKEventClass_block_invoke(&v34);
    v15 = v40[3];
  }

  v16 = v15;
  _Block_object_dispose(&v39, 8);
  _discoverabilitySignalsStream = [(TPSDiscoverabilitySignal *)self _discoverabilitySignalsStream];
  v18 = [v13 copy];
  v19 = [v15 eventWithStream:_discoverabilitySignalsStream source:v12 startDate:date endDate:date identifierStringValue:identifier metadata:v18];

  _knowledgeStore = [(TPSDiscoverabilitySignal *)self _knowledgeStore];
  v43[0] = v19;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __55__TPSDiscoverabilitySignal_donateSignalWithCompletion___block_invoke;
  v29[3] = &unk_278730C08;
  v30 = identifier;
  v31 = bundleIdentifier2;
  v32 = context;
  v33 = completionCopy;
  v22 = completionCopy;
  v23 = context;
  v24 = bundleIdentifier2;
  v25 = identifier;
  [_knowledgeStore saveObjects:v21 responseQueue:0 withCompletion:v29];

  v26 = *MEMORY[0x277D85DE8];
}

void __55__TPSDiscoverabilitySignal_donateSignalWithCompletion___block_invoke(void *a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
    [v6 setObject:a1[4] forKeyedSubscript:@"signalIdentifier"];
    [v6 setObject:a1[5] forKeyedSubscript:@"sourceBundleIdentifier"];
    [v6 setObject:a1[6] forKeyedSubscript:@"context"];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v7 = get_CDContextualKeyPathClass_softClass;
    v23 = get_CDContextualKeyPathClass_softClass;
    if (!get_CDContextualKeyPathClass_softClass)
    {
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __get_CDContextualKeyPathClass_block_invoke;
      v18 = &unk_278733760;
      v19 = &v20;
      __get_CDContextualKeyPathClass_block_invoke(&v15);
      v7 = v21[3];
    }

    v8 = v7;
    _Block_object_dispose(&v20, 8);
    v9 = [v7 keyPathWithKey:@"/discoverability/signals/dataDictionary"];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v10 = get_CDClientContextClass_softClass;
    v23 = get_CDClientContextClass_softClass;
    if (!get_CDClientContextClass_softClass)
    {
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __get_CDClientContextClass_block_invoke;
      v18 = &unk_278733760;
      v19 = &v20;
      __get_CDClientContextClass_block_invoke(&v15);
      v10 = v21[3];
    }

    v11 = v10;
    _Block_object_dispose(&v20, 8);
    v12 = [v10 userContext];
    [v12 setObject:v6 forKeyedSubscript:v9];
  }

  v13 = a1[7];
  if (v13)
  {
    if (a2)
    {
      v14 = 0;
    }

    else
    {
      v14 = v5;
    }

    (*(v13 + 16))(v13, v14);
  }
}

- (TPSDiscoverabilitySignal)initWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier context:(id)context
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = TPSDiscoverabilitySignal;
  v12 = [(TPSDiscoverabilitySignal *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_bundleIdentifier, bundleIdentifier);
    objc_storeStrong(&v13->_context, context);
  }

  return v13;
}

+ (id)osBuild
{
  if (osBuild_onceToken != -1)
  {
    dispatch_once(&osBuild_onceToken, &__block_literal_global_25);
  }

  v3 = osBuild_gOSBuild;

  return v3;
}

void __35__TPSDiscoverabilitySignal_osBuild__block_invoke()
{
  v0 = MGCopyAnswer();
  v2 = v0;
  if (v0)
  {
    v0 = [@"iOS-" stringByAppendingString:v0];
  }

  v1 = osBuild_gOSBuild;
  osBuild_gOSBuild = v0;
}

@end