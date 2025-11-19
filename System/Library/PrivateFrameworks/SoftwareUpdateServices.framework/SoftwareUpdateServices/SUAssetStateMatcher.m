@interface SUAssetStateMatcher
- (BOOL)_matchesFilterType:(id)a3;
- (SUAssetStateMatcher)initWithType:(id)a3 interestedStates:(int)a4;
- (id)_findMatchFromCandidates:(id)a3 error:(id *)a4;
- (id)findMatchFromCandidates:(id)a3 error:(id *)a4;
@end

@implementation SUAssetStateMatcher

- (SUAssetStateMatcher)initWithType:(id)a3 interestedStates:(int)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = SUAssetStateMatcher;
  v8 = [(SUAssetStateMatcher *)&v13 init];
  if (v8)
  {
    if (!v7)
    {
      [SUAssetStateMatcher initWithType:a2 interestedStates:v8];
    }

    v9 = [v7 copy];
    assetType = v8->_assetType;
    v8->_assetType = v9;

    v8->_interestedStates = a4;
    matcherInfo = v8->_matcherInfo;
    v8->_matcherInfo = 0;
  }

  return v8;
}

- (id)findMatchFromCandidates:(id)a3 error:(id *)a4
{
  interestedStates = self->_interestedStates;
  v7 = MEMORY[0x277CBEB18];
  v8 = a3;
  if (interestedStates)
  {
    v9 = objc_alloc_init(v7);
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __53__SUAssetStateMatcher_findMatchFromCandidates_error___block_invoke;
    v16 = &unk_279CAA830;
    v17 = self;
    v10 = v9;
    v18 = v10;
    [v8 enumerateObjectsUsingBlock:&v13];
  }

  else
  {
    v10 = [[v7 alloc] initWithArray:v8];
  }

  v11 = [(SUAssetStateMatcher *)self _findMatchFromCandidates:v10 error:a4, v13, v14, v15, v16, v17];

  return v11;
}

void __53__SUAssetStateMatcher_findMatchFromCandidates_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _matchesFilterType:?])
  {
    [*(a1 + 40) addObject:v3];
  }
}

- (id)_findMatchFromCandidates:(id)a3 error:(id *)a4
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 objectAtIndex:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_matchesFilterType:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_interestedStates)
  {
    v6 = [v4 state];
    v7 = (v6 - 1) <= 3 && (self->_interestedStates & dword_26ABF8E30[v6 - 1]) != 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)initWithType:(uint64_t)a1 interestedStates:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SUAssetStateMatcher.m" lineNumber:23 description:@"Asset type must be non-nil for a matcher."];
}

@end