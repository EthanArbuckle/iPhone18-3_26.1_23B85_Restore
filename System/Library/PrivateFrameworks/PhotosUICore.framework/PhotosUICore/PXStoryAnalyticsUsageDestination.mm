@interface PXStoryAnalyticsUsageDestination
- (PXStoryAnalyticsUsageDestination)init;
- (id)_createDefaultPayloadForInfo:(id)info;
- (id)_createInfoForEvent:(id)event;
- (id)_existingInfoForEvent:(id)event pop:(BOOL)pop;
- (id)_popInfoForEndEvent:(id)event;
- (void)_enumerateExistingInfosUsingBlock:(id)block;
- (void)_sendSummaryEventsForInfo:(id)info;
- (void)processEvent:(id)event;
@end

@implementation PXStoryAnalyticsUsageDestination

- (PXStoryAnalyticsUsageDestination)init
{
  v6.receiver = self;
  v6.super_class = PXStoryAnalyticsUsageDestination;
  v2 = [(PXStoryAnalyticsUsageDestination *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sessionInfosByIdentifier = v2->_sessionInfosByIdentifier;
    v2->_sessionInfosByIdentifier = v3;
  }

  return v2;
}

- (void)processEvent:(id)event
{
  eventCopy = event;
  name = [eventCopy name];
  if ([name isEqualToString:@"com.apple.photos.memory.interactiveMemorySessionBegan"])
  {
    v6 = [(PXStoryAnalyticsUsageDestination *)self _createInfoForEvent:eventCopy];
  }

  else if ([name isEqualToString:@"com.apple.photos.memory.interactiveMemorySessionPaused"])
  {
    v7 = [(PXStoryAnalyticsUsageDestination *)self _existingInfoForEvent:eventCopy];
    [v7 didPauseWithEvent:eventCopy];
  }

  else if ([name isEqualToString:*MEMORY[0x1E6991C40]])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__PXStoryAnalyticsUsageDestination_processEvent___block_invoke;
    v9[3] = &unk_1E77324A8;
    v10 = eventCopy;
    [(PXStoryAnalyticsUsageDestination *)self _enumerateExistingInfosUsingBlock:v9];
  }

  else if ([name isEqualToString:@"com.apple.photos.memory.interactiveMemorySessionEnded"])
  {
    v8 = [(PXStoryAnalyticsUsageDestination *)self _popInfoForEndEvent:eventCopy];
    [(PXStoryAnalyticsUsageDestination *)self _sendSummaryEventsForInfo:v8];
  }
}

- (void)_sendSummaryEventsForInfo:(id)info
{
  infoCopy = info;
  if (!infoCopy)
  {
    PXAssertGetLog();
  }

  v5 = [(PXStoryAnalyticsUsageDestination *)self _createDefaultPayloadForInfo:infoCopy];
  [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.memory.interactiveMemoryPlaybackSummary" withPayload:v5];
  v6 = MEMORY[0x1E6991F28];
  v7 = PXStoryAnalyticsEventForSummaryWithPauseCount([infoCopy pauseCount]);
  [v6 sendEvent:v7 withPayload:v5];
}

- (void)_enumerateExistingInfosUsingBlock:(id)block
{
  blockCopy = block;
  sessionInfosByIdentifier = self->_sessionInfosByIdentifier;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__PXStoryAnalyticsUsageDestination__enumerateExistingInfosUsingBlock___block_invoke;
  v7[3] = &unk_1E7732478;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSMutableDictionary *)sessionInfosByIdentifier enumerateKeysAndObjectsUsingBlock:v7];
}

- (id)_createDefaultPayloadForInfo:(id)info
{
  infoCopy = info;
  startEvent = [infoCopy startEvent];
  copyRawPayload = [startEvent copyRawPayload];
  v6 = [copyRawPayload mutableCopy];

  if (!v6)
  {
    PXAssertGetLog();
  }

  endEvent = [infoCopy endEvent];
  copyRawPayload2 = [endEvent copyRawPayload];
  [v6 addEntriesFromDictionary:copyRawPayload2];

  [v6 setObject:0 forKeyedSubscript:@"interactiveMemorySessionIdentifier"];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(infoCopy, "pauseCount")}];
  [v6 setObject:v9 forKeyedSubscript:@"interactiveMemoryPlaybackSummaryPauseCount"];

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(infoCopy, "appSuspensionCount")}];
  [v6 setObject:v10 forKeyedSubscript:@"interactiveMemoryPlaybackSummaryAppSuspensionCount"];

  return v6;
}

- (id)_existingInfoForEvent:(id)event pop:(BOOL)pop
{
  popCopy = pop;
  eventCopy = event;
  v7 = [eventCopy propertyForKey:@"interactiveMemorySessionIdentifier"];
  if (!v7)
  {
    PXAssertGetLog();
  }

  v8 = [(NSMutableDictionary *)self->_sessionInfosByIdentifier objectForKeyedSubscript:v7];
  if (!v8)
  {
    PXAssertGetLog();
  }

  if (popCopy)
  {
    [(NSMutableDictionary *)self->_sessionInfosByIdentifier setObject:0 forKeyedSubscript:v7];
  }

  return v8;
}

- (id)_popInfoForEndEvent:(id)event
{
  eventCopy = event;
  v5 = [(PXStoryAnalyticsUsageDestination *)self _existingInfoForEvent:eventCopy pop:1];
  [v5 finalizeWithEvent:eventCopy];

  return v5;
}

- (id)_createInfoForEvent:(id)event
{
  eventCopy = event;
  v5 = [eventCopy propertyForKey:@"interactiveMemorySessionIdentifier"];
  if (!v5)
  {
    PXAssertGetLog();
  }

  v6 = [(NSMutableDictionary *)self->_sessionInfosByIdentifier objectForKeyedSubscript:v5];

  if (v6)
  {
    PXAssertGetLog();
  }

  v7 = [[_PXStoryAnalyticsSessionInfo alloc] initWithEvent:eventCopy];
  [(NSMutableDictionary *)self->_sessionInfosByIdentifier setObject:v7 forKeyedSubscript:v5];

  return v7;
}

@end