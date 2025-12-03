@interface TUCallContainer
- (BOOL)allCallsAreOfService:(int)service;
- (BOOL)allCallsPassTest:(id)test;
- (BOOL)anyCallPassesTest:(id)test;
- (BOOL)existingCallsHaveMultipleProviders;
- (NSArray)callGroupsOnDefaultPairedDevice;
- (NSArray)conferenceParticipantCalls;
- (NSArray)currentAudioAndVideoCallGroups;
- (NSArray)currentCallGroups;
- (NSArray)displayedAudioAndVideoCalls;
- (NSArray)displayedCalls;
- (TUCall)currentVideoCall;
- (TUCall)frontmostBargeCall;
- (TUCallContainer)initWithCalls:(id)calls;
- (id)_allCallsWithStatus:(int)status;
- (id)_callGroupsFromCalls:(id)calls;
- (id)audioAndVideoCallsWithStatus:(int)status;
- (id)audioOrVideoCallWithStatus:(int)status;
- (id)bargeCallWithStatus:(int)status;
- (id)bargeCallWithUniqueProxyIdentifier:(id)identifier;
- (id)bargeCallsPassingTest:(id)test;
- (id)callPassingTest:(id)test sortedUsingComparator:(id)comparator;
- (id)callPassingTest:(id)test withOptions:(unint64_t)options;
- (id)callWithCallUUID:(id)d;
- (id)callWithStatus:(int)status;
- (id)callWithUniqueProxyIdentifier:(id)identifier;
- (id)callsPassingTest:(id)test;
- (id)callsWithGroupUUID:(id)d;
- (id)callsWithStatus:(int)status;
- (id)displayedCall;
- (id)displayedCallFromCalls:(id)calls;
- (id)featureFlags;
- (id)frontmostAudioOrVideoCall;
- (id)frontmostCall;
- (id)resolvedIncomingCall;
- (id)videoCallWithStatus:(int)status;
- (unint64_t)countOfCallsPassingTest:(id)test;
- (void)enumerateBargeCallsInvokingBlock:(id)block forCallsPassingTest:(id)test;
- (void)enumerateCallsWithOptions:(unint64_t)options invokingBlock:(id)block forCallsPassingTest:(id)test;
@end

@implementation TUCallContainer

- (NSArray)displayedCalls
{
  v3 = [(TUCallContainer *)self callsPassingTest:&__block_literal_global_39];
  conferenceCall = [(TUCallContainer *)self conferenceCall];
  if (conferenceCall)
  {
    v5 = [v3 arrayByAddingObject:conferenceCall];

    v3 = v5;
  }

  v6 = [v3 sortedArrayUsingComparator:&__block_literal_global_35];

  return v6;
}

- (id)frontmostCall
{
  currentCallCount = [(TUCallContainer *)self currentCallCount];
  if (currentCallCount)
  {
    currentCallCount = [(TUCallContainer *)self incomingCall];
    if (!currentCallCount)
    {
      currentCallCount = [(TUCallContainer *)self callWithStatus:1];
      if (!currentCallCount)
      {
        currentCallCount = [(TUCallContainer *)self callWithStatus:3];
        if (!currentCallCount)
        {
          currentCallCount = [(TUCallContainer *)self callWithStatus:2];
        }
      }
    }
  }

  return currentCallCount;
}

- (TUCall)currentVideoCall
{
  incomingVideoCall = [(TUCallContainer *)self incomingVideoCall];
  if (incomingVideoCall || ([(TUCallContainer *)self activeVideoCall], (incomingVideoCall = objc_claimAutoreleasedReturnValue()) != 0))
  {
    lastObject = incomingVideoCall;
  }

  else
  {
    currentVideoCalls = [(TUCallContainer *)self currentVideoCalls];
    if ([currentVideoCalls count])
    {
      lastObject = [currentVideoCalls lastObject];
    }

    else
    {
      lastObject = 0;
    }
  }

  return lastObject;
}

- (NSArray)currentCallGroups
{
  currentCalls = [(TUCallContainer *)self currentCalls];
  v4 = [(TUCallContainer *)self _callGroupsFromCalls:currentCalls];

  return v4;
}

- (NSArray)conferenceParticipantCalls
{
  v2 = [(TUCallContainer *)self callsPassingTest:&__block_literal_global_30];
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_35];

  return v3;
}

- (id)resolvedIncomingCall
{
  featureFlags = [(TUCallContainer *)self featureFlags];
  if (([featureFlags receptionistEnabled] & 1) == 0)
  {

    goto LABEL_6;
  }

  incomingCall = [(TUCallContainer *)self incomingCall];

  if (incomingCall)
  {
LABEL_6:
    incomingCall2 = [(TUCallContainer *)self incomingCall];
    goto LABEL_7;
  }

  screeningCall = [(TUCallContainer *)self screeningCall];
  receptionistState = [screeningCall receptionistState];

  if (receptionistState == 3)
  {
    incomingCall2 = [(TUCallContainer *)self screeningCall];
  }

  else
  {
    incomingCall2 = 0;
  }

LABEL_7:

  return incomingCall2;
}

- (id)featureFlags
{
  if (featureFlags_onceToken != -1)
  {
    [TUCallContainer featureFlags];
  }

  v3 = featureFlags_sFeatureFlags;

  return v3;
}

BOOL __34__TUCallContainer_activeVideoCall__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isVideo])
  {
    v3 = [v2 status];
    v5 = v3 == 2 || (v3 & 0xFFFFFFFD) == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (TUCall)frontmostBargeCall
{
  v3 = [(TUCallContainer *)self bargeCallWithStatus:1];
  if (!v3)
  {
    v3 = [(TUCallContainer *)self bargeCallWithStatus:2];
  }

  return v3;
}

- (id)frontmostAudioOrVideoCall
{
  currentAudioAndVideoCallCount = [(TUCallContainer *)self currentAudioAndVideoCallCount];
  if (currentAudioAndVideoCallCount)
  {
    currentAudioAndVideoCallCount = [(TUCallContainer *)self audioOrVideoCallWithStatus:4];
    if (!currentAudioAndVideoCallCount)
    {
      currentAudioAndVideoCallCount = [(TUCallContainer *)self audioOrVideoCallWithStatus:1];
      if (!currentAudioAndVideoCallCount)
      {
        currentAudioAndVideoCallCount = [(TUCallContainer *)self audioOrVideoCallWithStatus:3];
        if (!currentAudioAndVideoCallCount)
        {
          currentAudioAndVideoCallCount = [(TUCallContainer *)self audioOrVideoCallWithStatus:2];
        }
      }
    }
  }

  return currentAudioAndVideoCallCount;
}

- (NSArray)displayedAudioAndVideoCalls
{
  v3 = [(TUCallContainer *)self callsPassingTest:&__block_literal_global_41];
  conferenceCall = [(TUCallContainer *)self conferenceCall];
  if (conferenceCall)
  {
    v5 = [v3 arrayByAddingObject:conferenceCall];

    v3 = v5;
  }

  v6 = [v3 sortedArrayUsingComparator:&__block_literal_global_35];

  return v6;
}

uint64_t __46__TUCallContainer_displayedAudioAndVideoCalls__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 status] - 1 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 isConferenced] ^ 1;
  }

  return v3;
}

- (TUCallContainer)initWithCalls:(id)calls
{
  callsCopy = calls;
  v9.receiver = self;
  v9.super_class = TUCallContainer;
  v5 = [(TUCallContainer *)&v9 init];
  if (v5)
  {
    v6 = [callsCopy copy];
    calls = v5->_calls;
    v5->_calls = v6;
  }

  return v5;
}

uint64_t __31__TUCallContainer_featureFlags__block_invoke()
{
  featureFlags_sFeatureFlags = objc_alloc_init(TUFeatureFlags);

  return MEMORY[0x1EEE66BB8]();
}

- (void)enumerateCallsWithOptions:(unint64_t)options invokingBlock:(id)block forCallsPassingTest:(id)test
{
  blockCopy = block;
  testCopy = test;
  v10 = testCopy;
  if (blockCopy && testCopy)
  {
    calls = [(TUCallContainer *)self calls];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __79__TUCallContainer_enumerateCallsWithOptions_invokingBlock_forCallsPassingTest___block_invoke;
    v12[3] = &unk_1E7425850;
    v13 = v10;
    v14 = blockCopy;
    [calls enumerateObjectsWithOptions:options usingBlock:v12];
  }
}

void __79__TUCallContainer_enumerateCallsWithOptions_invokingBlock_forCallsPassingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isPTT] & 1) == 0 && (*(*(a1 + 32) + 16))())
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (id)callsPassingTest:(id)test
{
  testCopy = test;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__2;
  v13 = __Block_byref_object_dispose__2;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__TUCallContainer_callsPassingTest___block_invoke;
  v8[3] = &unk_1E74258B8;
  v8[4] = &v9;
  [(TUCallContainer *)self enumerateCallsInvokingBlock:v8 forCallsPassingTest:testCopy];
  v5 = v10[5];
  if (v5)
  {
    v6 = [v5 copy];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  _Block_object_dispose(&v9, 8);

  return v6;
}

void __36__TUCallContainer_callsPassingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v8 = v3;
  if (!v4)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v8;
    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  [v4 addObject:v3];
}

uint64_t __33__TUCallContainer_displayedCalls__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (TUCallCenterDisplayedAudioCallPredicate_block_invoke_13(v2, v2) && ![v2 isConferenced])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isConversation];
  }

  return v3;
}

uint64_t __51__TUCallContainer_callsHostedOrAnEndpointElsewhere__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isHostedOnCurrentDevice])
  {
    v3 = [v2 isEndpointOnCurrentDevice] ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (id)callsWithStatus:(int)status
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__TUCallContainer_callsWithStatus___block_invoke;
  v5[3] = &__block_descriptor_36_e16_B16__0__TUCall_8l;
  statusCopy = status;
  v3 = [(TUCallContainer *)self callsPassingTest:v5];

  return v3;
}

uint64_t __35__TUCallContainer_callsWithStatus___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status] == *(a1 + 32))
  {
    v4 = (*(TUCallCenterAudioCallHostedOnOrEndpointOnCurrentDevicePredicate + 2))(TUCallCenterAudioCallHostedOnOrEndpointOnCurrentDevicePredicate, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)audioAndVideoCallsWithStatus:(int)status
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__TUCallContainer_audioAndVideoCallsWithStatus___block_invoke;
  v5[3] = &__block_descriptor_36_e16_B16__0__TUCall_8l;
  statusCopy = status;
  v3 = [(TUCallContainer *)self callsPassingTest:v5];

  return v3;
}

uint64_t __48__TUCallContainer_audioAndVideoCallsWithStatus___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status] == *(a1 + 32))
  {
    v4 = (*(TUCallCenterHostedOnOrEndpointOnCurrentDevicePredicate + 2))(TUCallCenterHostedOnOrEndpointOnCurrentDevicePredicate, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_allCallsWithStatus:(int)status
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__TUCallContainer__allCallsWithStatus___block_invoke;
  v5[3] = &__block_descriptor_36_e16_B16__0__TUCall_8l;
  statusCopy = status;
  v3 = [(TUCallContainer *)self callsPassingTest:v5];

  return v3;
}

- (id)callsWithGroupUUID:(id)d
{
  dCopy = d;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__TUCallContainer_callsWithGroupUUID___block_invoke;
  v8[3] = &unk_1E7425900;
  v9 = dCopy;
  v5 = dCopy;
  v6 = [(TUCallContainer *)self callsPassingTest:v8];

  return v6;
}

uint64_t __38__TUCallContainer_callsWithGroupUUID___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 callGroupUUID];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (id)callPassingTest:(id)test withOptions:(unint64_t)options
{
  testCopy = test;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__2;
  v14 = __Block_byref_object_dispose__2;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__TUCallContainer_callPassingTest_withOptions___block_invoke;
  v9[3] = &unk_1E74258B8;
  v9[4] = &v10;
  [(TUCallContainer *)self enumerateCallsWithOptions:options invokingBlock:v9 forCallsPassingTest:testCopy];
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (id)callPassingTest:(id)test sortedUsingComparator:(id)comparator
{
  testCopy = test;
  comparatorCopy = comparator;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__TUCallContainer_callPassingTest_sortedUsingComparator___block_invoke;
  v11[3] = &unk_1E7425928;
  v13 = &v14;
  v8 = comparatorCopy;
  v12 = v8;
  [(TUCallContainer *)self enumerateCallsInvokingBlock:v11 forCallsPassingTest:testCopy];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __57__TUCallContainer_callPassingTest_sortedUsingComparator___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 40) + 8);
  v8 = v4;
  if (*(v5 + 40))
  {
    v6 = v4;
    v7 = *(a1 + 32);
    if (v7)
    {
      if ((*(v7 + 16))(v7, v6) != -1)
      {
        goto LABEL_6;
      }

      v5 = *(*(a1 + 40) + 8);
    }
  }

  objc_storeStrong((v5 + 40), a2);
LABEL_6:
}

- (id)callWithStatus:(int)status
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__TUCallContainer_callWithStatus___block_invoke;
  v5[3] = &__block_descriptor_36_e16_B16__0__TUCall_8l;
  statusCopy = status;
  v3 = [(TUCallContainer *)self callPassingTest:v5];

  return v3;
}

uint64_t __34__TUCallContainer_callWithStatus___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status] == *(a1 + 32))
  {
    v4 = (*(TUCallCenterAudioCallHostedOnOrEndpointOnCurrentDevicePredicate + 2))(TUCallCenterAudioCallHostedOnOrEndpointOnCurrentDevicePredicate, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)videoCallWithStatus:(int)status
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__TUCallContainer_videoCallWithStatus___block_invoke;
  v5[3] = &__block_descriptor_36_e16_B16__0__TUCall_8l;
  statusCopy = status;
  v3 = [(TUCallContainer *)self callPassingTest:v5];

  return v3;
}

uint64_t __39__TUCallContainer_videoCallWithStatus___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status] == *(a1 + 32))
  {
    v4 = [v3 isVideo];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)audioOrVideoCallWithStatus:(int)status
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__TUCallContainer_audioOrVideoCallWithStatus___block_invoke;
  v5[3] = &__block_descriptor_36_e16_B16__0__TUCall_8l;
  statusCopy = status;
  v3 = [(TUCallContainer *)self callPassingTest:v5];

  return v3;
}

uint64_t __46__TUCallContainer_audioOrVideoCallWithStatus___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status] == *(a1 + 32))
  {
    v4 = (*(TUCallCenterHostedOnOrEndpointOnCurrentDevicePredicate + 2))(TUCallCenterHostedOnOrEndpointOnCurrentDevicePredicate, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)callWithUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__TUCallContainer_callWithUniqueProxyIdentifier___block_invoke;
  v8[3] = &unk_1E7425900;
  v9 = identifierCopy;
  v5 = identifierCopy;
  v6 = [(TUCallContainer *)self callPassingTest:v8];

  return v6;
}

uint64_t __49__TUCallContainer_callWithUniqueProxyIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueProxyIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)callWithCallUUID:(id)d
{
  dCopy = d;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__TUCallContainer_callWithCallUUID___block_invoke;
  v8[3] = &unk_1E7425900;
  v9 = dCopy;
  v5 = dCopy;
  v6 = [(TUCallContainer *)self callPassingTest:v8];

  return v6;
}

uint64_t __36__TUCallContainer_callWithCallUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 callUUID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)displayedCall
{
  v3 = TUCallCenterCallDateConnectedComparator_block_invoke_17(self, 3);
  v4 = [(TUCallContainer *)self callPassingTest:v3];

  v6 = TUCallCenterCallDateConnectedComparator_block_invoke_17(v5, 1);
  v7 = [(TUCallContainer *)self callPassingTest:v6];

  v9 = TUCallCenterCallDateConnectedComparator_block_invoke_17(v8, 4);
  v10 = [(TUCallContainer *)self callPassingTest:v9];

  v11 = v7;
  v12 = v11;
  if (v11 && (v13 = v10) != 0 || (v13 = v4, v14 = v11, v4))
  {
    v14 = v13;
  }

  return v14;
}

- (id)displayedCallFromCalls:(id)calls
{
  v33 = *MEMORY[0x1E69E9840];
  callsCopy = calls;
  if (!callsCopy)
  {
    callsCopy = [(TUCallContainer *)self currentCalls];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = callsCopy;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v6)
  {
    v8 = 0;
    v9 = 0;
    goto LABEL_32;
  }

  v7 = v6;
  v8 = 0;
  v9 = 0;
  v10 = *v29;
  v11 = 0.0;
  v12 = 0.0;
  do
  {
    v13 = 0;
    do
    {
      if (*v29 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v14 = *(*(&v28 + 1) + 8 * v13);
      status = [v14 status];
      if ((status - 5) > 0xFFFFFFFD)
      {
        v25 = v14;

        v9 = v25;
        goto LABEL_32;
      }

      if (status == 1)
      {
        if (v9)
        {
          [v14 callDuration];
          if (v16 <= v12)
          {
            goto LABEL_24;
          }

          v17 = v16;
          v18 = v14;

          v12 = v17;
          v9 = v18;
          if (v18)
          {
            goto LABEL_24;
          }

          goto LABEL_22;
        }

        v9 = v14;
        [v9 callDuration];
        v12 = v22;
      }

      else if (status == 2 && v12 == 0.0)
      {
        if (!v8)
        {
          v8 = v14;
          [v8 callDuration];
          v11 = v23;
          if (v9)
          {
            goto LABEL_24;
          }

          goto LABEL_22;
        }

        [v14 callDuration];
        if (v19 > v11)
        {
          v20 = v19;
          v21 = v14;

          v8 = v21;
          v11 = v20;
          if (v9)
          {
            goto LABEL_24;
          }

          goto LABEL_22;
        }
      }

      if (v9)
      {
        goto LABEL_24;
      }

LABEL_22:
      if (v8)
      {
        v8 = v8;
        v9 = v8;
      }

LABEL_24:
      ++v13;
    }

    while (v7 != v13);
    v24 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
    v7 = v24;
  }

  while (v24);
LABEL_32:

  v26 = *MEMORY[0x1E69E9840];

  return v9;
}

- (unint64_t)countOfCallsPassingTest:(id)test
{
  testCopy = test;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__TUCallContainer_countOfCallsPassingTest___block_invoke;
  v7[3] = &unk_1E74258B8;
  v7[4] = &v8;
  [(TUCallContainer *)self enumerateCallsInvokingBlock:v7 forCallsPassingTest:testCopy];
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (BOOL)anyCallPassesTest:(id)test
{
  testCopy = test;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__TUCallContainer_anyCallPassesTest___block_invoke;
  v6[3] = &unk_1E74258B8;
  v6[4] = &v7;
  [(TUCallContainer *)self enumerateCallsInvokingBlock:v6 forCallsPassingTest:testCopy];
  LOBYTE(self) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return self;
}

uint64_t __37__TUCallContainer_anyCallPassesTest___block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

- (BOOL)allCallsPassTest:(id)test
{
  testCopy = test;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__TUCallContainer_allCallsPassTest___block_invoke;
  v7[3] = &unk_1E7425950;
  v8 = testCopy;
  v5 = testCopy;
  LOBYTE(self) = [(TUCallContainer *)self anyCallPassesTest:v7];

  return self ^ 1;
}

- (BOOL)allCallsAreOfService:(int)service
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__TUCallContainer_allCallsAreOfService___block_invoke;
  v4[3] = &__block_descriptor_36_e16_B16__0__TUCall_8l;
  serviceCopy = service;
  return [(TUCallContainer *)self allCallsPassTest:v4];
}

uint64_t __40__TUCallContainer_allCallsAreOfService___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 service] == *(a1 + 32))
  {
    v4 = (*(TUCallCenterHostedOnOrEndpointOnCurrentDevicePredicate + 2))(TUCallCenterHostedOnOrEndpointOnCurrentDevicePredicate, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)existingCallsHaveMultipleProviders
{
  selfCopy = self;
  currentAudioAndVideoCalls = [(TUCallContainer *)self currentAudioAndVideoCalls];
  firstObject = [currentAudioAndVideoCalls firstObject];
  provider = [firstObject provider];
  identifier = [provider identifier];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__TUCallContainer_existingCallsHaveMultipleProviders__block_invoke;
  v9[3] = &unk_1E7425900;
  v10 = identifier;
  v7 = identifier;
  LOBYTE(selfCopy) = [(TUCallContainer *)selfCopy anyCallPassesTest:v9];

  return selfCopy;
}

uint64_t __53__TUCallContainer_existingCallsHaveMultipleProviders__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 provider];
  v4 = [v3 identifier];
  LODWORD(a1) = [v4 isEqualToString:*(a1 + 32)];

  return a1 ^ 1;
}

- (NSArray)currentAudioAndVideoCallGroups
{
  currentAudioAndVideoCalls = [(TUCallContainer *)self currentAudioAndVideoCalls];
  v4 = [(TUCallContainer *)self _callGroupsFromCalls:currentAudioAndVideoCalls];

  return v4;
}

- (NSArray)callGroupsOnDefaultPairedDevice
{
  callsOnDefaultPairedDevice = [(TUCallContainer *)self callsOnDefaultPairedDevice];
  v4 = [(TUCallContainer *)self _callGroupsFromCalls:callsOnDefaultPairedDevice];

  return v4;
}

- (id)_callGroupsFromCalls:(id)calls
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = [calls mutableCopy];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  conferenceCall = [(TUCallContainer *)self conferenceCall];

  if (conferenceCall)
  {
    v7 = [TUCallGroup alloc];
    conferenceParticipantCalls = [(TUCallContainer *)self conferenceParticipantCalls];
    v9 = [(TUCallGroup *)v7 initWithCalls:conferenceParticipantCalls];

    [v5 addObject:v9];
    calls = [(TUCallGroup *)v9 calls];
    [v4 removeObjectsInArray:calls];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v17 = [TUCallGroup alloc];
        v18 = [(TUCallGroup *)v17 initWithCall:v16, v21];
        [v5 addObject:v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)bargeCallWithStatus:(int)status
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__10;
  v12 = __Block_byref_object_dispose__10;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__TUCallContainer_TUBargeCall__bargeCallWithStatus___block_invoke;
  v7[3] = &unk_1E74258B8;
  v7[4] = &v8;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__TUCallContainer_TUBargeCall__bargeCallWithStatus___block_invoke_2;
  v5[3] = &__block_descriptor_36_e16_B16__0__TUCall_8l;
  statusCopy = status;
  [(TUCallContainer *)self enumerateBargeCallsInvokingBlock:v7 forCallsPassingTest:v5];
  v3 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v3;
}

uint64_t __52__TUCallContainer_TUBargeCall__bargeCallWithStatus___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 status] == *(a1 + 32))
  {
    v4 = (*(TUCallCenterAudioCallHostedOnOrEndpointOnCurrentDevicePredicate + 2))(TUCallCenterAudioCallHostedOnOrEndpointOnCurrentDevicePredicate, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)bargeCallWithUniqueProxyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__TUCallContainer_TUBargeCall__bargeCallWithUniqueProxyIdentifier___block_invoke;
  v9[3] = &unk_1E7425900;
  v10 = identifierCopy;
  v5 = identifierCopy;
  v6 = [(TUCallContainer *)self bargeCallsPassingTest:v9];
  firstObject = [v6 firstObject];

  return firstObject;
}

uint64_t __67__TUCallContainer_TUBargeCall__bargeCallWithUniqueProxyIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) length])
  {
    v4 = [v3 uniqueProxyIdentifier];
    v5 = [v4 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)bargeCallsPassingTest:(id)test
{
  testCopy = test;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__10;
  v13 = __Block_byref_object_dispose__10;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__TUCallContainer_TUBargeCall__bargeCallsPassingTest___block_invoke;
  v8[3] = &unk_1E74258B8;
  v8[4] = &v9;
  [(TUCallContainer *)self enumerateBargeCallsInvokingBlock:v8 forCallsPassingTest:testCopy];
  v5 = v10[5];
  if (v5)
  {
    v6 = [v5 copy];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  _Block_object_dispose(&v9, 8);

  return v6;
}

void __54__TUCallContainer_TUBargeCall__bargeCallsPassingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v8 = v3;
  if (!v4)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v8;
    v4 = *(*(*(a1 + 32) + 8) + 40);
  }

  [v4 addObject:v3];
}

- (void)enumerateBargeCallsInvokingBlock:(id)block forCallsPassingTest:(id)test
{
  blockCopy = block;
  testCopy = test;
  v8 = testCopy;
  if (blockCopy && testCopy)
  {
    _allCalls = [(TUCallContainer *)self _allCalls];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __85__TUCallContainer_TUBargeCall__enumerateBargeCallsInvokingBlock_forCallsPassingTest___block_invoke;
    v10[3] = &unk_1E7425850;
    v11 = v8;
    v12 = blockCopy;
    [_allCalls enumerateObjectsWithOptions:0 usingBlock:v10];
  }
}

void __85__TUCallContainer_TUBargeCall__enumerateBargeCallsInvokingBlock_forCallsPassingTest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isPTT] && (*(*(a1 + 32) + 16))())
  {
    (*(*(a1 + 40) + 16))();
  }
}

@end