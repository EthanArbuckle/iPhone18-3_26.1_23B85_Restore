@interface PXAnalyticsSlideshowUsageDestination
+ (BOOL)_isUserCancelledError:(id)error;
+ (id)exportEndedCPAnalyticsEventNameForSuccess:(BOOL)success error:(id)error duration:(double)duration;
+ (id)playbackEndedCPAnalyticsEventNameForTerminationType:(int64_t)type;
+ (id)playbackEndedCPAnalyticsEventNameForTimeFractionPlayed:(double)played;
+ (id)playbackStartedCPAnalyticsEventNameForTotalAssetCount:(int64_t)count;
- (PXAnalyticsSlideshowUsageDestination)init;
- (id)_createDefaultPayloadForInfo:(id)info;
- (id)_createInfoForEvent:(id)event;
- (id)_existingInfoForEvent:(id)event pop:(BOOL)pop;
- (id)_payloadFilteredForCoreAnlaytics:(id)anlaytics;
- (id)_popInfoForEndEvent:(id)event;
- (void)processEvent:(id)event;
@end

@implementation PXAnalyticsSlideshowUsageDestination

- (PXAnalyticsSlideshowUsageDestination)init
{
  v6.receiver = self;
  v6.super_class = PXAnalyticsSlideshowUsageDestination;
  v2 = [(PXAnalyticsSlideshowUsageDestination *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    slideshowInfos = v2->_slideshowInfos;
    v2->_slideshowInfos = v3;
  }

  return v2;
}

- (void)processEvent:(id)event
{
  v73 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  name = [eventCopy name];
  if ([name isEqualToString:@"com.apple.photos.CPAnalytics.slideshowPlaybackStarted"])
  {
    v6 = [(PXAnalyticsSlideshowUsageDestination *)self _createInfoForEvent:eventCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = objc_alloc_init(_PXAnalyticsSlideshowInfo);
    }

    v10 = v8;

    [v10 setStartEvent:eventCopy];
    v11 = [(PXAnalyticsSlideshowUsageDestination *)self _createDefaultPayloadForInfo:v10];
    v12 = MEMORY[0x1E6991F28];
    playbackStartedCoreAnalyticsEventName = [objc_opt_class() playbackStartedCoreAnalyticsEventName];
    v14 = [(PXAnalyticsSlideshowUsageDestination *)self _payloadFilteredForCoreAnlaytics:v11];
    [v12 sendEvent:playbackStartedCoreAnalyticsEventName withPayload:v14];

    payloadTotalAssetCountKey = [objc_opt_class() payloadTotalAssetCountKey];
    v16 = [v11 objectForKeyedSubscript:payloadTotalAssetCountKey];

    integerValue = [v16 integerValue];
    v18 = MEMORY[0x1E6991F28];
    v19 = [objc_opt_class() playbackStartedCPAnalyticsEventNameForTotalAssetCount:integerValue];
    [v18 sendEvent:v19 withPayload:v11];

LABEL_10:
    goto LABEL_28;
  }

  if ([name isEqualToString:@"com.apple.photos.CPAnalytics.slideshowPlaybackPaused"])
  {
    objectEnumerator = [(PXAnalyticsSlideshowUsageDestination *)self _existingInfoForEvent:eventCopy];
    [objectEnumerator pauseWithEvent:eventCopy];
    goto LABEL_27;
  }

  if ([name isEqualToString:@"com.apple.photos.CPAnalytics.slideshowPlaybackResumed"])
  {
    objectEnumerator = [(PXAnalyticsSlideshowUsageDestination *)self _existingInfoForEvent:eventCopy];
    [objectEnumerator unpauseWithEvent:eventCopy];
    goto LABEL_27;
  }

  if ([name isEqualToString:*MEMORY[0x1E6991C40]])
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    objectEnumerator = [(NSMutableDictionary *)self->_slideshowInfos objectEnumerator];
    v20 = [objectEnumerator countByEnumeratingWithState:&v68 objects:v72 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v69;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v69 != v22)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          [*(*(&v68 + 1) + 8 * i) setAppSuspensionCount:{objc_msgSend(*(*(&v68 + 1) + 8 * i), "appSuspensionCount") + 1}];
        }

        v21 = [objectEnumerator countByEnumeratingWithState:&v68 objects:v72 count:16];
      }

      while (v21);
    }

    goto LABEL_27;
  }

  if (![name isEqualToString:@"com.apple.photos.CPAnalytics.slideshowPlaybackEnded"])
  {
    if (![name isEqualToString:@"com.apple.photos.CPAnalytics.slideshowExportStarted"])
    {
      if (![name isEqualToString:@"com.apple.photos.CPAnalytics.slideshowExportEnded"])
      {
        goto LABEL_28;
      }

      v10 = [(PXAnalyticsSlideshowUsageDestination *)self _popInfoForEndEvent:eventCopy];
      v11 = [(PXAnalyticsSlideshowUsageDestination *)self _createDefaultPayloadForInfo:v10];
      startEvent = [v10 startEvent];
      timestamp = [startEvent timestamp];

      endEvent = [v10 endEvent];
      timestamp2 = [endEvent timestamp];

      v35 = [v11 objectForKeyedSubscript:@"slideshowExportSucceeded"];
      bOOLValue = [v35 BOOLValue];

      v37 = [v11 objectForKeyedSubscript:@"slideshowExportError"];
      v38 = [objc_opt_class() _isUserCancelledError:v37];
      v65 = timestamp2;
      v67 = timestamp;
      [timestamp2 timeIntervalSinceDate:timestamp];
      v40 = v39;
      v41 = @"failed";
      if (v38)
      {
        v41 = @"cancelled";
      }

      if (bOOLValue)
      {
        v42 = @"succeeded";
      }

      else
      {
        v42 = v41;
      }

      payloadExportEndStateKey = [objc_opt_class() payloadExportEndStateKey];
      [v11 setObject:v42 forKeyedSubscript:payloadExportEndStateKey];

      if (v37 && (v38 & 1) == 0)
      {
        domain = [v37 domain];
        payloadExportErrorDomainKey = [objc_opt_class() payloadExportErrorDomainKey];
        [v11 setObject:domain forKeyedSubscript:payloadExportErrorDomainKey];

        v46 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v37, "code")}];
        payloadExportErrorCodeKey = [objc_opt_class() payloadExportErrorCodeKey];
        [v11 setObject:v46 forKeyedSubscript:payloadExportErrorCodeKey];

        [v11 setObject:v37 forKeyedSubscript:*MEMORY[0x1E6991E28]];
      }

      v48 = [MEMORY[0x1E696AD98] numberWithDouble:v40];
      payloadExportDurationKey = [objc_opt_class() payloadExportDurationKey];
      [v11 setObject:v48 forKeyedSubscript:payloadExportDurationKey];

      v50 = MEMORY[0x1E6991F28];
      exportEndedCoreAnalyticsEventName = [objc_opt_class() exportEndedCoreAnalyticsEventName];
      v52 = [(PXAnalyticsSlideshowUsageDestination *)self _payloadFilteredForCoreAnlaytics:v11];
      [v50 sendEvent:exportEndedCoreAnalyticsEventName withPayload:v52];

      v53 = MEMORY[0x1E6991F28];
      v54 = [objc_opt_class() exportEndedCPAnalyticsEventNameForSuccess:bOOLValue error:v37 duration:v40];
      [v53 sendEvent:v54 withPayload:v11];

      if (bOOLValue)
      {
        [v11 setObject:v67 forKeyedSubscript:*MEMORY[0x1E6991E48]];
        [v11 setObject:v65 forKeyedSubscript:*MEMORY[0x1E6991E38]];
        exportCPAnalyticsIntervalName = [objc_opt_class() exportCPAnalyticsIntervalName];
        [v11 setObject:exportCPAnalyticsIntervalName forKeyedSubscript:*MEMORY[0x1E6991E40]];

        v56 = MEMORY[0x1E6991F28];
        signpostID = [v10 signpostID];
        [v56 endSignpost:signpostID forEventName:*MEMORY[0x1E6991C98] withPayload:v11];
      }

      goto LABEL_10;
    }

    objectEnumerator = [(PXAnalyticsSlideshowUsageDestination *)self _createInfoForEvent:eventCopy];
    if (!objectEnumerator)
    {
      PXAssertGetLog();
    }

    [objectEnumerator setStartEvent:eventCopy];
    [objectEnumerator setSignpostID:{objc_msgSend(MEMORY[0x1E6991F28], "startSignpost")}];
LABEL_27:

    goto LABEL_28;
  }

  v66 = [(PXAnalyticsSlideshowUsageDestination *)self _popInfoForEndEvent:eventCopy];
  v24 = [(PXAnalyticsSlideshowUsageDestination *)self _createDefaultPayloadForInfo:?];
  v25 = [eventCopy propertyForKey:@"slideshowTerminationType"];
  integerValue2 = [v25 integerValue];

  payloadTimeFractionPlayedKey = [objc_opt_class() payloadTimeFractionPlayedKey];
  v28 = [v24 objectForKeyedSubscript:payloadTimeFractionPlayedKey];

  if (v28)
  {
    [v28 doubleValue];
    v30 = v29;
  }

  else
  {
    v30 = NAN;
  }

  v58 = MEMORY[0x1E6991F28];
  playbackEndedCoreAnalyticsEventName = [objc_opt_class() playbackEndedCoreAnalyticsEventName];
  v60 = [(PXAnalyticsSlideshowUsageDestination *)self _payloadFilteredForCoreAnlaytics:v24];
  [v58 sendEvent:playbackEndedCoreAnalyticsEventName withPayload:v60];

  v61 = MEMORY[0x1E6991F28];
  v62 = [objc_opt_class() playbackEndedCPAnalyticsEventNameForTerminationType:integerValue2];
  [v61 sendEvent:v62 withPayload:v24];

  if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v63 = MEMORY[0x1E6991F28];
    v64 = [objc_opt_class() playbackEndedCPAnalyticsEventNameForTimeFractionPlayed:v30];
    [v63 sendEvent:v64 withPayload:v24];
  }

LABEL_28:
}

- (id)_payloadFilteredForCoreAnlaytics:(id)anlaytics
{
  v3 = MEMORY[0x1E695DF90];
  anlayticsCopy = anlaytics;
  v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(anlayticsCopy, "count")}];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__PXAnalyticsSlideshowUsageDestination__payloadFilteredForCoreAnlaytics___block_invoke;
  v9[3] = &unk_1E7741F98;
  v10 = v5;
  v6 = v5;
  [anlayticsCopy enumerateKeysAndObjectsUsingBlock:v9];

  v7 = [v6 copy];

  return v7;
}

void __73__PXAnalyticsSlideshowUsageDestination__payloadFilteredForCoreAnlaytics___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

- (id)_createDefaultPayloadForInfo:(id)info
{
  v39 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  startEvent = [infoCopy startEvent];
  endEvent = [infoCopy endEvent];
  copyRawPayload = [startEvent copyRawPayload];
  v8 = [copyRawPayload mutableCopy];

  if (!v8)
  {
    PXAssertGetLog();
  }

  copyRawPayload2 = [endEvent copyRawPayload];
  [v8 addEntriesFromDictionary:copyRawPayload2];

  [v8 setObject:0 forKeyedSubscript:@"slideshowSessionUUID"];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(infoCopy, "pauseCount")}];
  payloadPauseCountKey = [objc_opt_class() payloadPauseCountKey];
  [v8 setObject:v10 forKeyedSubscript:payloadPauseCountKey];

  v12 = MEMORY[0x1E696AD98];
  [infoCopy timePaused];
  v13 = [v12 numberWithDouble:?];
  payloadTimePausedKey = [objc_opt_class() payloadTimePausedKey];
  [v8 setObject:v13 forKeyedSubscript:payloadTimePausedKey];

  if (startEvent && endEvent)
  {
    timestamp = [endEvent timestamp];
    timestamp2 = [startEvent timestamp];
    [timestamp timeIntervalSinceDate:timestamp2];
    v18 = v17;

    v19 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
    payloadTotalPlaybackTimeKey = [objc_opt_class() payloadTotalPlaybackTimeKey];
    [v8 setObject:v19 forKeyedSubscript:payloadTotalPlaybackTimeKey];

    v21 = [v8 objectForKeyedSubscript:@"slideshowExpectedDuration"];
    [v21 doubleValue];
    if (v22 > 0.0)
    {
      [infoCopy timePaused];
      v24 = v18 - v23;
      [v21 doubleValue];
      v26 = [MEMORY[0x1E696AD98] numberWithDouble:v24 / v25];
      payloadTimeFractionPlayedKey = [objc_opt_class() payloadTimeFractionPlayedKey];
      [v8 setObject:v26 forKeyedSubscript:payloadTimeFractionPlayedKey];
    }
  }

  v28 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(infoCopy, "appSuspensionCount")}];
  payloadAppSuspensionCountKey = [objc_opt_class() payloadAppSuspensionCountKey];
  [v8 setObject:v28 forKeyedSubscript:payloadAppSuspensionCountKey];

  v33 = MEMORY[0x1E69E9820];
  v34 = 3221225472;
  v35 = __69__PXAnalyticsSlideshowUsageDestination__createDefaultPayloadForInfo___block_invoke;
  v36 = &unk_1E7741F40;
  v30 = v8;
  v37 = v30;
  selfCopy = self;
  [v30 _px_transformExistingValueForKey:@"slideshowAssetCountsByPlaybackStyle" usingBlock:&v33];
  [v30 _px_transformExistingValueForKey:@"slideshowTriggerType" usingBlock:{&__block_literal_global_192451, v33, v34, v35, v36}];
  [v30 _px_transformExistingValueForKey:@"slideshowTerminationType" usingBlock:&__block_literal_global_307_192452];
  v31 = v30;

  return v30;
}

uint64_t __69__PXAnalyticsSlideshowUsageDestination__createDefaultPayloadForInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = a2;
  v5 = [v3 numberWithInteger:{objc_msgSend(v4, "totalCount")}];
  v6 = *(a1 + 32);
  v7 = [objc_opt_class() payloadTotalAssetCountKey];
  [v6 setObject:v5 forKeyedSubscript:v7];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__PXAnalyticsSlideshowUsageDestination__createDefaultPayloadForInfo___block_invoke_2;
  v11[3] = &unk_1E7741F18;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = v8;
  v13 = v9;
  [v4 enumerateCountsUsingBlock:v11];

  return 0;
}

__CFString *__69__PXAnalyticsSlideshowUsageDestination__createDefaultPayloadForInfo___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];

  return PXAnalyticsSlideshowTerminationTypeDescription(v2);
}

__CFString *__69__PXAnalyticsSlideshowUsageDestination__createDefaultPayloadForInfo___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];

  return PXAnalyticsSlideshowTriggerTypeDescription(v2);
}

void __69__PXAnalyticsSlideshowUsageDestination__createDefaultPayloadForInfo___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    v6 = *(a1 + 32);
    v7 = [objc_opt_class() payloadAssetCountKeyForPlaybackStyle:a2];
    [v6 setObject:v8 forKeyedSubscript:v7];
  }
}

- (id)_existingInfoForEvent:(id)event pop:(BOOL)pop
{
  popCopy = pop;
  eventCopy = event;
  v7 = [eventCopy propertyForKey:@"slideshowSessionUUID"];
  if (!v7)
  {
    PXAssertGetLog();
  }

  v8 = [(NSMutableDictionary *)self->_slideshowInfos objectForKeyedSubscript:v7];
  if (!v8)
  {
    PXAssertGetLog();
  }

  if (popCopy)
  {
    [(NSMutableDictionary *)self->_slideshowInfos setObject:0 forKeyedSubscript:v7];
  }

  return v8;
}

- (id)_popInfoForEndEvent:(id)event
{
  eventCopy = event;
  v5 = [(PXAnalyticsSlideshowUsageDestination *)self _existingInfoForEvent:eventCopy pop:1];
  [v5 unpauseWithEvent:eventCopy];
  [v5 setEndEvent:eventCopy];

  return v5;
}

- (id)_createInfoForEvent:(id)event
{
  v4 = [event propertyForKey:@"slideshowSessionUUID"];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_slideshowInfos objectForKeyedSubscript:v4];

    if (v5)
    {
      PXAssertGetLog();
    }

    v6 = objc_alloc_init(_PXAnalyticsSlideshowInfo);
    [(NSMutableDictionary *)self->_slideshowInfos setObject:v6 forKeyedSubscript:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)_isUserCancelledError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A250]] && objc_msgSend(errorCopy, "code") == 3072)
  {
    v5 = 1;
  }

  else
  {
    domain2 = [errorCopy domain];
    if ([domain2 isEqualToString:@"OFNSOperationErrorDomain"])
    {
      v5 = [errorCopy code] == 2;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (id)exportEndedCPAnalyticsEventNameForSuccess:(BOOL)success error:(id)error duration:(double)duration
{
  errorCopy = error;
  if (success)
  {
    v9 = @"com.apple.photos.CPAnalytics.slideshowExportEndedSuccessfullyAfter%@Seconds";
    v10 = &unk_1F19116B0;
LABEL_5:
    v11 = [MEMORY[0x1E6991F28] bucketNameForDouble:v10 bucketLimits:0 numberFormatter:duration];
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v9, v11];

    goto LABEL_7;
  }

  if ([self _isUserCancelledError:errorCopy])
  {
    v9 = @"com.apple.photos.CPAnalytics.slideshowExportCancelledAfter%@Seconds";
    v10 = &unk_1F19116C8;
    goto LABEL_5;
  }

  v12 = @"com.apple.photos.CPAnalytics.slideshowExportFailed";
LABEL_7:

  return v12;
}

+ (id)playbackEndedCPAnalyticsEventNameForTimeFractionPlayed:(double)played
{
  v3 = [MEMORY[0x1E6991F28] bucketNameForDouble:&unk_1F1911698 bucketLimits:0 numberFormatter:played];
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.photos.CPAnalytics.slideshowPlaybackEndedAfterTimeFraction%@", v3];

  return v4;
}

+ (id)playbackEndedCPAnalyticsEventNameForTerminationType:(int64_t)type
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = PXAnalyticsSlideshowTerminationTypeDescription(type);
  v6 = [v4 initWithFormat:@"com.apple.photos.CPAnalytics.slideshowPlaybackEndedBy%@", v5];

  return v6;
}

+ (id)playbackStartedCPAnalyticsEventNameForTotalAssetCount:(int64_t)count
{
  v3 = [MEMORY[0x1E6991F28] bucketNameForInteger:count bucketLimits:{0, 5, 10, 15, 20, 30, 50, 100, 200, 300, 500, 1000, 0}];
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.photos.CPAnalytics.slideshowPlaybackStartedWith%@Assets", v3];

  return v4;
}

@end