@interface PS
@end

@implementation PS

uint64_t __59___PS_TPSDiscoverabilitySignal_donateSignalWithCompletion___block_invoke_2(void *a1, int a2, void *a3)
{
  v11 = a3;
  if (a2)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
    [v5 setObject:a1[4] forKeyedSubscript:@"signalIdentifier"];
    [v5 setObject:a1[5] forKeyedSubscript:@"sourceBundleIdentifier"];
    [v5 setObject:a1[6] forKeyedSubscript:@"context"];
    v6 = [MEMORY[0x1E6997A78] keyPathWithKey:@"/discoverability/signals/dataDictionary"];
    v7 = [MEMORY[0x1E6997A60] userContext];
    [v7 setObject:v5 forKeyedSubscript:v6];
  }

  v8 = a1[7];
  if (v8)
  {
    v9 = v11;
    if (a2)
    {
      v9 = 0;
    }

    (*(v8 + 16))(v8, v9);
  }

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __47___PS_TPSDiscoverabilitySignal__knowledgeStore__block_invoke()
{
  _knowledgeStore_store = [MEMORY[0x1E69979A0] knowledgeStore];

  return MEMORY[0x1EEE66BB8]();
}

@end