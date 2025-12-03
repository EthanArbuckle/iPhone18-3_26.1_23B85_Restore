@interface SUAssetStateMatcher
- (BOOL)_matchesFilterType:(id)type;
- (SUAssetStateMatcher)initWithType:(id)type interestedStates:(int)states;
- (id)_findMatchFromCandidates:(id)candidates error:(id *)error;
- (id)findMatchFromCandidates:(id)candidates error:(id *)error;
@end

@implementation SUAssetStateMatcher

- (SUAssetStateMatcher)initWithType:(id)type interestedStates:(int)states
{
  typeCopy = type;
  v13.receiver = self;
  v13.super_class = SUAssetStateMatcher;
  v8 = [(SUAssetStateMatcher *)&v13 init];
  if (v8)
  {
    if (!typeCopy)
    {
      [SUAssetStateMatcher initWithType:a2 interestedStates:v8];
    }

    v9 = [typeCopy copy];
    assetType = v8->_assetType;
    v8->_assetType = v9;

    v8->_interestedStates = states;
    matcherInfo = v8->_matcherInfo;
    v8->_matcherInfo = 0;
  }

  return v8;
}

- (id)findMatchFromCandidates:(id)candidates error:(id *)error
{
  interestedStates = self->_interestedStates;
  v7 = MEMORY[0x277CBEB18];
  candidatesCopy = candidates;
  if (interestedStates)
  {
    v9 = objc_alloc_init(v7);
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __53__SUAssetStateMatcher_findMatchFromCandidates_error___block_invoke;
    v16 = &unk_279CAA830;
    selfCopy = self;
    v10 = v9;
    v18 = v10;
    [candidatesCopy enumerateObjectsUsingBlock:&v13];
  }

  else
  {
    v10 = [[v7 alloc] initWithArray:candidatesCopy];
  }

  selfCopy = [(SUAssetStateMatcher *)self _findMatchFromCandidates:v10 error:error, v13, v14, v15, v16, selfCopy];

  return selfCopy;
}

void __53__SUAssetStateMatcher_findMatchFromCandidates_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _matchesFilterType:?])
  {
    [*(a1 + 40) addObject:v3];
  }
}

- (id)_findMatchFromCandidates:(id)candidates error:(id *)error
{
  candidatesCopy = candidates;
  if ([candidatesCopy count])
  {
    v5 = [candidatesCopy objectAtIndex:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_matchesFilterType:(id)type
{
  typeCopy = type;
  v5 = typeCopy;
  if (self->_interestedStates)
  {
    state = [typeCopy state];
    v7 = (state - 1) <= 3 && (self->_interestedStates & dword_26ABF8E30[state - 1]) != 0;
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