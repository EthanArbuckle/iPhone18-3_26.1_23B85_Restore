@interface _PS_TPSDiscoverabilitySignal
- (_PS_TPSDiscoverabilitySignal)initWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier context:(id)context;
- (id)_knowledgeStore;
- (void)donateSignalWithCompletion:(id)completion;
@end

@implementation _PS_TPSDiscoverabilitySignal

- (_PS_TPSDiscoverabilitySignal)initWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier context:(id)context
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = _PS_TPSDiscoverabilitySignal;
  v12 = [(_PS_TPSDiscoverabilitySignal *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_bundleIdentifier, bundleIdentifier);
    objc_storeStrong(&v13->_context, context);
  }

  return v13;
}

- (void)donateSignalWithCompletion:(id)completion
{
  v31[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  date = [MEMORY[0x1E695DF00] date];
  identifier = [(_PS_TPSDiscoverabilitySignal *)self identifier];
  bundleIdentifier = [(_PS_TPSDiscoverabilitySignal *)self bundleIdentifier];
  v7 = bundleIdentifier;
  if (bundleIdentifier)
  {
    bundleIdentifier2 = bundleIdentifier;
  }

  else
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier2 = [mainBundle bundleIdentifier];
  }

  context = [(_PS_TPSDiscoverabilitySignal *)self context];
  v24 = [objc_alloc(MEMORY[0x1E69979E0]) initWithIdentifier:0 bundleIdentifier:bundleIdentifier2 itemIdentifier:0 groupIdentifier:0 deviceIdentifier:0 userIdentifier:0];
  v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  context2 = [MEMORY[0x1E6997958] context];
  [v11 setObject:context forKeyedSubscript:context2];

  v13 = MEMORY[0x1E6997960];
  discoverabilitySignalsStream = [MEMORY[0x1E69979E8] discoverabilitySignalsStream];
  v15 = [v11 copy];
  v16 = [v13 eventWithStream:discoverabilitySignalsStream source:v24 startDate:date endDate:date identifierStringValue:identifier metadata:v15];

  _knowledgeStore = [(_PS_TPSDiscoverabilitySignal *)self _knowledgeStore];
  v31[0] = v16;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __59___PS_TPSDiscoverabilitySignal_donateSignalWithCompletion___block_invoke_2;
  v26[3] = &unk_1E7C26FA0;
  v27 = identifier;
  v28 = bundleIdentifier2;
  v29 = context;
  v30 = completionCopy;
  v19 = completionCopy;
  v20 = context;
  v21 = bundleIdentifier2;
  v22 = identifier;
  [_knowledgeStore saveObjects:v18 tracker:&__block_literal_global_43 responseQueue:0 withCompletion:v26];

  v23 = *MEMORY[0x1E69E9840];
}

- (id)_knowledgeStore
{
  if (_knowledgeStore_onceToken != -1)
  {
    [_PS_TPSDiscoverabilitySignal _knowledgeStore];
  }

  v3 = _knowledgeStore_store;

  return v3;
}

@end