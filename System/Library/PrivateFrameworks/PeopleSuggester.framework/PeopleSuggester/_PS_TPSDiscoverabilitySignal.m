@interface _PS_TPSDiscoverabilitySignal
- (_PS_TPSDiscoverabilitySignal)initWithIdentifier:(id)a3 bundleIdentifier:(id)a4 context:(id)a5;
- (id)_knowledgeStore;
- (void)donateSignalWithCompletion:(id)a3;
@end

@implementation _PS_TPSDiscoverabilitySignal

- (_PS_TPSDiscoverabilitySignal)initWithIdentifier:(id)a3 bundleIdentifier:(id)a4 context:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _PS_TPSDiscoverabilitySignal;
  v12 = [(_PS_TPSDiscoverabilitySignal *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeStrong(&v13->_bundleIdentifier, a4);
    objc_storeStrong(&v13->_context, a5);
  }

  return v13;
}

- (void)donateSignalWithCompletion:(id)a3
{
  v31[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25 = [MEMORY[0x1E695DF00] date];
  v5 = [(_PS_TPSDiscoverabilitySignal *)self identifier];
  v6 = [(_PS_TPSDiscoverabilitySignal *)self bundleIdentifier];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [MEMORY[0x1E696AAE8] mainBundle];
    v8 = [v9 bundleIdentifier];
  }

  v10 = [(_PS_TPSDiscoverabilitySignal *)self context];
  v24 = [objc_alloc(MEMORY[0x1E69979E0]) initWithIdentifier:0 bundleIdentifier:v8 itemIdentifier:0 groupIdentifier:0 deviceIdentifier:0 userIdentifier:0];
  v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  v12 = [MEMORY[0x1E6997958] context];
  [v11 setObject:v10 forKeyedSubscript:v12];

  v13 = MEMORY[0x1E6997960];
  v14 = [MEMORY[0x1E69979E8] discoverabilitySignalsStream];
  v15 = [v11 copy];
  v16 = [v13 eventWithStream:v14 source:v24 startDate:v25 endDate:v25 identifierStringValue:v5 metadata:v15];

  v17 = [(_PS_TPSDiscoverabilitySignal *)self _knowledgeStore];
  v31[0] = v16;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __59___PS_TPSDiscoverabilitySignal_donateSignalWithCompletion___block_invoke_2;
  v26[3] = &unk_1E7C26FA0;
  v27 = v5;
  v28 = v8;
  v29 = v10;
  v30 = v4;
  v19 = v4;
  v20 = v10;
  v21 = v8;
  v22 = v5;
  [v17 saveObjects:v18 tracker:&__block_literal_global_43 responseQueue:0 withCompletion:v26];

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