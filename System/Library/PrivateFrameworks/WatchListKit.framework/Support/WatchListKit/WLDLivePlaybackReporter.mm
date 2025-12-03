@interface WLDLivePlaybackReporter
+ (id)_contentEventFromSummary:(id)summary schedule:(id)schedule event:(id)event;
+ (void)_decorateEBSSummary:(id)summary completion:(id)completion;
+ (void)_decorateLiveSummary:(id)summary completion:(id)completion;
+ (void)decorateSummary:(id)summary completion:(id)completion;
- (WLDLivePlaybackReporter)initWithSessionID:(id)d;
- (id)_debugStringForInput:(unint64_t)input;
- (id)schedule;
- (void)_configureTimerForDate:(id)date playbackDate:(id)playbackDate input:(unint64_t)input;
- (void)_evaluateEventsForReportingWithPlaybackDate:(id)date schedule:(id)schedule completion:(id)completion;
- (void)_evaluateScheduleWithPlaybackDate:(id)date;
- (void)_getScheduleWithPlaybackDate:(id)date completion:(id)completion;
- (void)_handlePlayerStateDidBecomePlayingWithCompletion:(id)completion;
- (void)_handleTimerFiredAtEventStart:(id)start;
- (void)_handleTimerFiredAtScheduleBoundary:(id)boundary;
- (void)_invalidateTimer;
- (void)_processInput:(unint64_t)input completion:(id)completion;
- (void)_reportPlayEvents:(id)events account:(id)account completion:(id)completion;
- (void)getCachedCanonicalIDForSummary:(id)summary completionHandler:(id)handler;
- (void)reportPlayback:(id)playback completion:(id)completion;
- (void)setSchedule:(id)schedule;
@end

@implementation WLDLivePlaybackReporter

- (WLDLivePlaybackReporter)initWithSessionID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = WLDLivePlaybackReporter;
  v6 = [(WLDLivePlaybackReporter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionID, d);
    v7->_scheduleAlreadyFetchedAtBoundary = 0;
    [(WLDLivePlaybackReporter *)v7 setState:1];
  }

  return v7;
}

- (void)reportPlayback:(id)playback completion:(id)completion
{
  playbackCopy = playback;
  completionCopy = completion;
  v8 = WLDDispatchQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __53__WLDLivePlaybackReporter_reportPlayback_completion___block_invoke;
  block[3] = &unk_100044ED8;
  v12 = playbackCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = playbackCopy;
  dispatch_async(v8, block);
}

void __53__WLDLivePlaybackReporter_reportPlayback_completion___block_invoke(id *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = __53__WLDLivePlaybackReporter_reportPlayback_completion___block_invoke_2;
    v5[3] = &unk_100044F00;
    v3 = a1[6];
    v4 = a1[5];
    v7 = v3;
    v5[4] = v4;
    v6 = v2;
    [v6 resolveChannelID:v5];
  }

  else
  {
    NSLog(@"WLDLivePlaybackReporter: Received nil summary, performing cleanup, calling completion and returning early cause no need to report a tune out");
    [a1[5] _invalidateTimer];
    [a1[5] setTransaction:0];
    (*(a1[6] + 2))();
  }
}

void __53__WLDLivePlaybackReporter_reportPlayback_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = WLDDispatchQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __53__WLDLivePlaybackReporter_reportPlayback_completion___block_invoke_3;
    block[3] = &unk_100044ED8;
    v8 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v10 = v8;
    v11 = *(a1 + 48);
    dispatch_async(v7, block);
  }

  else
  {
    NSLog(@"WLDLivePlaybackReporter: Error: Failed to resolve channel %@", v5);
    (*(*(a1 + 48) + 16))();
  }
}

void __53__WLDLivePlaybackReporter_reportPlayback_completion___block_invoke_3(id *a1)
{
  [a1[4] setLastSummary:a1[5]];
  v2 = [a1[5] playbackState];
  v3 = a1[4];
  if (v2 == 1)
  {
    v4 = [a1[4] transaction];

    if (!v4)
    {
      v5 = a1[4];
      v6 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLDLivePlaybackReporter._processInput"];
      [v5 setTransaction:v6];
    }

    v7 = a1[4];
    v8 = a1[6];

    [v7 _processInput:0 completion:v8];
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __53__WLDLivePlaybackReporter_reportPlayback_completion___block_invoke_4;
    v9[3] = &unk_100044EB0;
    v9[4] = v3;
    v10 = a1[6];
    [v3 _processInput:1 completion:v9];
  }
}

void __53__WLDLivePlaybackReporter_reportPlayback_completion___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 setTransaction:0];
  (*(*(a1 + 40) + 16))();
}

- (void)getCachedCanonicalIDForSummary:(id)summary completionHandler:(id)handler
{
  handlerCopy = handler;
  schedule = [(WLDLivePlaybackReporter *)self schedule];

  if (schedule)
  {
    schedule2 = [(WLDLivePlaybackReporter *)self schedule];
    v7 = +[NSDate date];
    v8 = [schedule2 eventForDate:v7];

    if (v8)
    {
      schedule = [v8 canonicalID];
    }

    else
    {
      schedule = 0;
    }
  }

  handlerCopy[2](handlerCopy, schedule, 0);
}

- (id)schedule
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_schedule;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setSchedule:(id)schedule
{
  scheduleCopy = schedule;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (([(WLKSchedule *)selfCopy->_schedule isEqual:scheduleCopy]& 1) == 0)
  {
    objc_storeStrong(&selfCopy->_schedule, schedule);
  }

  objc_sync_exit(selfCopy);
}

+ (void)decorateSummary:(id)summary completion:(id)completion
{
  summaryCopy = summary;
  completionCopy = completion;
  if ([summaryCopy playbackType] == 2)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __54__WLDLivePlaybackReporter_decorateSummary_completion___block_invoke;
    v12[3] = &unk_100044F28;
    v13 = completionCopy;
    [self _decorateLiveSummary:summaryCopy completion:v12];
    v8 = v13;
  }

  else
  {
    if ([summaryCopy playbackType] != 1)
    {
      NSLog(@"WLDLivePlaybackReporter: decorate failed -- unsupported playback type");
      v9 = WLKError();
      (*(completionCopy + 2))(completionCopy, 0, v9);

      goto LABEL_7;
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __54__WLDLivePlaybackReporter_decorateSummary_completion___block_invoke_2;
    v10[3] = &unk_100044F28;
    v11 = completionCopy;
    [self _decorateEBSSummary:summaryCopy completion:v10];
    v8 = v11;
  }

LABEL_7:
}

- (void)_processInput:(unint64_t)input completion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v7 = WLDDispatchQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __52__WLDLivePlaybackReporter__processInput_completion___block_invoke;
  block[3] = &unk_100044F50;
  objc_copyWeak(v11, &location);
  v11[1] = input;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(v7, block);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __52__WLDLivePlaybackReporter__processInput_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained state];
  if (v2)
  {
    if (v2 != 1)
    {
      goto LABEL_15;
    }

    v3 = [*(a1 + 32) _debugStringForInput:*(a1 + 56)];
    NSLog(@"WLDLivePlaybackReporter: [StateMachine][PlayerStateNotPlaying] input:[%@]", v3);

    v4 = *(a1 + 56);
    if (!v4)
    {
      [WeakRetained _handlePlayerStateDidBecomePlayingWithCompletion:*(a1 + 40)];
      goto LABEL_15;
    }

    v5 = [WeakRetained _debugStringForInput:*(a1 + 56)];
    NSLog(@"WLDLivePlaybackReporter: [StateMachine][PlayerStateNotPlaying] No action for input: %lu %@", v4, v5);
    goto LABEL_13;
  }

  v6 = [*(a1 + 32) _debugStringForInput:*(a1 + 56)];
  NSLog(@"WLDLivePlaybackReporter: [StateMachine][PlayerStatePlaying] input:[%@]", v6);

  v7 = *(a1 + 56);
  if (v7 == 3)
  {
    [WeakRetained _handleTimerFiredAtScheduleBoundary:*(a1 + 40)];
    goto LABEL_15;
  }

  if (v7 == 2)
  {
    [WeakRetained _handleTimerFiredAtEventStart:*(a1 + 40)];
    goto LABEL_15;
  }

  if (v7 != 1)
  {
    v5 = [WeakRetained _debugStringForInput:*(a1 + 56)];
    NSLog(@"WLDLivePlaybackReporter: [StateMachine][PlayerStatePlaying] No action for input: %lu %@", v7, v5);
LABEL_13:

    goto LABEL_14;
  }

  [WeakRetained _invalidateTimer];
  [WeakRetained setState:1];
LABEL_14:
  (*(*(a1 + 40) + 16))();
LABEL_15:
}

- (void)_handlePlayerStateDidBecomePlayingWithCompletion:(id)completion
{
  completionCopy = completion;
  [(WLDLivePlaybackReporter *)self setState:0];
  lastSummary = [(WLDLivePlaybackReporter *)self lastSummary];
  currentPlaybackDate = [lastSummary currentPlaybackDate];

  if (!currentPlaybackDate)
  {
    NSLog(@"WLDLivePlaybackReporter::Falling back to current date and currentPlaybackDate is not available");
    currentPlaybackDate = +[NSDate date];
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __76__WLDLivePlaybackReporter__handlePlayerStateDidBecomePlayingWithCompletion___block_invoke;
  v9[3] = &unk_100044F78;
  v9[4] = self;
  v10 = currentPlaybackDate;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = currentPlaybackDate;
  [(WLDLivePlaybackReporter *)self _getScheduleWithPlaybackDate:v8 completion:v9];
}

void __76__WLDLivePlaybackReporter__handlePlayerStateDidBecomePlayingWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6 && ![*(a1 + 32) state])
  {
    [*(a1 + 32) _evaluateEventsForReportingWithPlaybackDate:*(a1 + 40) schedule:v6 completion:*(a1 + 48)];
    [*(a1 + 32) _evaluateScheduleWithPlaybackDate:*(a1 + 40)];
  }

  else
  {
    if ([*(a1 + 32) state])
    {
      NSLog(@"WLDLivePlaybackReporter::_handlePlayerStateDidBecomePlaying - Not reporting or evaluating schedule as state is no longer playing");
    }

    else
    {
      NSLog(@"WLDLivePlaybackReporter:_handlePlayerStateDidBecomePlaying - decorate failed %@", v5);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)_handleTimerFiredAtEventStart:(id)start
{
  startCopy = start;
  v5 = WLDDispatchQueue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __57__WLDLivePlaybackReporter__handleTimerFiredAtEventStart___block_invoke;
  v7[3] = &unk_100044FC8;
  v7[4] = self;
  v8 = startCopy;
  v6 = startCopy;
  dispatch_async(v5, v7);
}

void __57__WLDLivePlaybackReporter__handleTimerFiredAtEventStart___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = *(*(a1 + 32) + 24);
  objc_sync_exit(v2);

  v4 = [*(a1 + 32) schedule];
  v5 = [v4 eventForDate:v3 fuzziness:2.0];

  if (v5)
  {
    v6 = [*(a1 + 32) lastSummary];
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v9 = [*(a1 + 32) schedule];
    v10 = [v8 _contentEventFromSummary:v6 schedule:v9 event:v5];

    v17 = v10;
    v11 = [NSArray arrayWithObjects:&v17 count:1];
    v12 = [v6 accountID];
    v13 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v12 longLongValue]);

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __57__WLDLivePlaybackReporter__handleTimerFiredAtEventStart___block_invoke_2;
    v15[3] = &unk_100044FA0;
    v14 = *(a1 + 32);
    v16 = *(a1 + 40);
    [v14 _reportPlayEvents:v11 account:v13 completion:v15];
  }

  else if (*(a1 + 40))
  {
    NSLog(@"WLDLivePlaybackReporter: Next event not found when timer fired. Investigate this.");
    (*(*(a1 + 40) + 16))();
  }

  [*(a1 + 32) _evaluateScheduleWithPlaybackDate:*(*(a1 + 32) + 24)];
}

void __57__WLDLivePlaybackReporter__handleTimerFiredAtEventStart___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  NSLog(@"WLDLivePlaybackReporter: Live activity timer based event start report success: %d Error: %@", a2, v5);
  (*(*(a1 + 32) + 16))();
}

- (void)_handleTimerFiredAtScheduleBoundary:(id)boundary
{
  boundaryCopy = boundary;
  [(WLDLivePlaybackReporter *)self _invalidateTimer];
  schedule = [(WLDLivePlaybackReporter *)self schedule];
  endDate = [schedule endDate];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __63__WLDLivePlaybackReporter__handleTimerFiredAtScheduleBoundary___block_invoke;
  v9[3] = &unk_100044F78;
  v9[4] = self;
  v10 = endDate;
  v11 = boundaryCopy;
  v7 = boundaryCopy;
  v8 = endDate;
  [(WLDLivePlaybackReporter *)self _getScheduleWithPlaybackDate:v8 completion:v9];
}

void __63__WLDLivePlaybackReporter__handleTimerFiredAtScheduleBoundary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6 && ![*(a1 + 32) state])
  {
    [*(a1 + 32) _evaluateEventsForReportingWithPlaybackDate:*(a1 + 40) schedule:v6 completion:*(a1 + 48)];
    [*(a1 + 32) _evaluateScheduleWithPlaybackDate:*(a1 + 40)];
  }

  else
  {
    if ([*(a1 + 32) state])
    {
      NSLog(@"WLDLivePlaybackReporter::_handleTimerFiredAtScheduleBoundary - Not reporting or evaluating schedule as state is no longer playing");
    }

    else
    {
      NSLog(@"WLDLivePlaybackReporter:_handleTimerFiredAtScheduleBoundary - decorate failed %@", v5);
    }

    (*(*(a1 + 48) + 16))();
  }
}

- (void)_getScheduleWithPlaybackDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  lastSummary = [(WLDLivePlaybackReporter *)self lastSummary];
  schedule = [(WLDLivePlaybackReporter *)self schedule];
  endDate = [schedule endDate];

  v11 = 0;
  if (dateCopy && endDate)
  {
    v12 = [dateCopy laterDate:endDate];
    v11 = v12 == dateCopy;
  }

  schedule2 = [(WLDLivePlaybackReporter *)self schedule];
  if (!schedule2)
  {
    if (!v11)
    {
      NSLog(@"WLDLivePlaybackReporter: No existing schedule, fetching one");
      goto LABEL_13;
    }

LABEL_9:
    NSLog(@"WLDLivePlaybackReporter: User scrubbed beyond existing schedule end date, re-fetching schedule");
    self->_scheduleAlreadyFetchedAtBoundary = 1;
LABEL_13:
    v16 = objc_opt_class();
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __67__WLDLivePlaybackReporter__getScheduleWithPlaybackDate_completion___block_invoke;
    v17[3] = &unk_100044FF0;
    v17[4] = self;
    v18 = completionCopy;
    [v16 decorateSummary:lastSummary completion:v17];

    goto LABEL_14;
  }

  if (v11)
  {
    scheduleAlreadyFetchedAtBoundary = self->_scheduleAlreadyFetchedAtBoundary;

    if (scheduleAlreadyFetchedAtBoundary)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_11:
  NSLog(@"WLDLivePlaybackReporter: Returning existing schedule");
  schedule3 = [(WLDLivePlaybackReporter *)self schedule];
  (*(completionCopy + 2))(completionCopy, schedule3, 0);

LABEL_14:
}

void __67__WLDLivePlaybackReporter__getScheduleWithPlaybackDate_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = [*(a1 + 32) schedule];
    v7 = [v6 isEqual:v10];

    if ((v7 & 1) == 0)
    {
      [*(a1 + 32) setSchedule:v10];
      *(*(a1 + 32) + 40) = 0;
    }

    v8 = *(*(a1 + 40) + 16);
  }

  else
  {
    NSLog(@"WLDLivePlaybackReporter: decorate failed %@", v5);
    v9 = *(a1 + 40);
    if (!v9)
    {
      goto LABEL_8;
    }

    v8 = *(v9 + 16);
  }

  v8();
LABEL_8:
}

+ (void)_decorateLiveSummary:(id)summary completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __59__WLDLivePlaybackReporter__decorateLiveSummary_completion___block_invoke;
  v7[3] = &unk_100045040;
  summaryCopy = summary;
  completionCopy = completion;
  v5 = summaryCopy;
  v6 = completionCopy;
  [v5 resolveChannelID:v7];
}

void __59__WLDLivePlaybackReporter__decorateLiveSummary_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [*(a1 + 32) serviceID];
    if ([v5 length] && objc_msgSend(v8, "length"))
    {
      v9 = [WLKPlayActivityDecorateLiveOperation alloc];
      v10 = [*(a1 + 32) playablePassthrough];
      v11 = [v9 initWithChannelID:v5 serviceID:v8 playablePassthrough:v10];

      objc_initWeak(&location, v11);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = __59__WLDLivePlaybackReporter__decorateLiveSummary_completion___block_invoke_2;
      v14[3] = &unk_100045018;
      objc_copyWeak(&v16, &location);
      v15 = *(a1 + 40);
      [v11 setCompletionBlock:v14];
      v12 = WLDOperationQueue();
      [v12 addOperation:v11];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    else
    {
      NSLog(@"WLDLivePlaybackReporter: Live summary doesn't meet preconditions. channelID:%@ serviceID:%@", v5, v8);
      v13 = *(a1 + 40);
      v11 = WLKError();
      (*(v13 + 16))(v13, 0, v11);
    }
  }

  else
  {
    NSLog(@"WLDPlaybackReporter: Error: Failed to resolve channelID %@", v6);
    (*(*(a1 + 40) + 16))();
  }
}

void __59__WLDLivePlaybackReporter__decorateLiveSummary_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained responseDictionary];
  v3 = [[WLKSchedule alloc] initWithDictionary:v2];
  v4 = *(a1 + 32);
  v5 = [WeakRetained error];
  (*(v4 + 16))(v4, v3, v5);
}

+ (void)_decorateEBSSummary:(id)summary completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __58__WLDLivePlaybackReporter__decorateEBSSummary_completion___block_invoke;
  v7[3] = &unk_100045040;
  summaryCopy = summary;
  completionCopy = completion;
  v5 = summaryCopy;
  v6 = completionCopy;
  [v5 resolveChannelID:v7];
}

void __58__WLDLivePlaybackReporter__decorateEBSSummary_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [*(a1 + 32) contentID];
    if ([v5 length] && objc_msgSend(v8, "length"))
    {
      v9 = [WLKPlayActivityDecorateEBSOperation alloc];
      v10 = [*(a1 + 32) playablePassthrough];
      v11 = [v9 initWithChannelID:v5 externalContentID:v8 playablePassthrough:v10];

      objc_initWeak(&location, v11);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = __58__WLDLivePlaybackReporter__decorateEBSSummary_completion___block_invoke_2;
      v14[3] = &unk_100045018;
      objc_copyWeak(&v16, &location);
      v15 = *(a1 + 40);
      [v11 setCompletionBlock:v14];
      v12 = WLDOperationQueue();
      [v12 addOperation:v11];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    else
    {
      NSLog(@"WLDLivePlaybackReporter: EBS summary doesn't meet preconditions. channelID:%@ contentID:%@", v5, v8);
      v13 = *(a1 + 40);
      v11 = WLKError();
      (*(v13 + 16))(v13, 0, v11);
    }
  }

  else
  {
    NSLog(@"WLDLivePlaybackReporter: Error: Failed to resolve channelID %@", v6);
    (*(*(a1 + 40) + 16))();
  }
}

void __58__WLDLivePlaybackReporter__decorateEBSSummary_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained responseDictionary];
  v3 = [[WLKSchedule alloc] initWithDictionary:v2];
  v4 = *(a1 + 32);
  v5 = [WeakRetained error];
  (*(v4 + 16))(v4, v3, v5);
}

- (void)_evaluateEventsForReportingWithPlaybackDate:(id)date schedule:(id)schedule completion:(id)completion
{
  scheduleCopy = schedule;
  completionCopy = completion;
  dateCopy = date;
  lastSummary = [(WLDLivePlaybackReporter *)self lastSummary];
  v12 = +[NSMutableArray array];
  v13 = [scheduleCopy eventForDate:dateCopy];

  if (v13)
  {
    NSLog(@"WLDLivePlaybackReporter: will report event");
    v14 = [objc_opt_class() _contentEventFromSummary:lastSummary schedule:scheduleCopy event:v13];
    [v12 addObject:v14];
  }

  if ([v12 count])
  {
    accountID = [lastSummary accountID];
    v16 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [accountID longLongValue]);

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __91__WLDLivePlaybackReporter__evaluateEventsForReportingWithPlaybackDate_schedule_completion___block_invoke;
    v17[3] = &unk_100044FA0;
    v18 = completionCopy;
    [(WLDLivePlaybackReporter *)self _reportPlayEvents:v12 account:v16 completion:v17];
  }

  else
  {
    NSLog(@"WLDLivePlaybackReporter: Will not report. We have no events");
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 1, 0);
    }
  }
}

void __91__WLDLivePlaybackReporter__evaluateEventsForReportingWithPlaybackDate_schedule_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  NSLog(@"WLDLivePlaybackReporter: Live activity report success: %d", a2);
  (*(*(a1 + 32) + 16))();
}

- (void)_reportPlayEvents:(id)events account:(id)account completion:(id)completion
{
  eventsCopy = events;
  accountCopy = account;
  completionCopy = completion;
  v10 = [[WLDPlayActivityReportOperation alloc] initWithLivePlayEvents:eventsCopy];
  [(WLDPlayActivityReportOperation *)v10 setDSID:accountCopy];
  objc_initWeak(&location, v10);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = __64__WLDLivePlaybackReporter__reportPlayEvents_account_completion___block_invoke;
  v16 = &unk_100045018;
  objc_copyWeak(&v18, &location);
  v11 = completionCopy;
  v17 = v11;
  [(WLDPlayActivityReportOperation *)v10 setCompletionBlock:&v13];
  NSLog(@"WLDLivePlaybackReporter: Queueing activity report for events: %p", eventsCopy, v13, v14, v15, v16);
  v12 = WLDOperationQueue();
  [v12 addOperation:v10];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __64__WLDLivePlaybackReporter__reportPlayEvents_account_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained error];
  v3 = [WeakRetained httpResponse];
  NSLog(@"WLDLivePlaybackReporter: success: %d response:%@", v2 == 0, v3);

  v4 = *(a1 + 32);
  v5 = [WeakRetained error];
  v6 = [WeakRetained error];
  (*(v4 + 16))(v4, v5 == 0, v6);
}

- (id)_debugStringForInput:(unint64_t)input
{
  if (input > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1000450A8[input];
  }
}

+ (id)_contentEventFromSummary:(id)summary schedule:(id)schedule event:(id)event
{
  eventCopy = event;
  summaryCopy = summary;
  v8 = +[NSDate date];
  v9 = objc_alloc_init(UWLLiveActivityEvent);
  bundleID = [summaryCopy bundleID];
  [(UWLLiveActivityEvent *)v9 setBundleId:bundleID];

  externalProfileID = [summaryCopy externalProfileID];
  [(UWLLiveActivityEvent *)v9 setProfileId:externalProfileID];

  timestamp = [summaryCopy timestamp];

  [v8 timeIntervalSinceDate:timestamp];
  [(UWLLiveActivityEvent *)v9 setMillisecondsSinceEvent:(v13 * 1000.0)];

  [(UWLLiveActivityEvent *)v9 setCause:3];
  [(UWLLiveActivityEvent *)v9 setContractOrTimed:1];
  nowPlayingPassThrough = [eventCopy nowPlayingPassThrough];

  [(UWLLiveActivityEvent *)v9 setPassThrough:nowPlayingPassThrough];

  return v9;
}

- (void)_evaluateScheduleWithPlaybackDate:(id)date
{
  dateCopy = date;
  schedule = [(WLDLivePlaybackReporter *)self schedule];
  v5 = [schedule eventAfterDate:dateCopy];
  v6 = v5;
  if (v5)
  {
    startDate = [v5 startDate];
    v8 = @"_next event begins";
  }

  else
  {
    v8 = 0;
    startDate = 0;
  }

  endDate = [schedule endDate];
  v10 = endDate;
  v11 = 2;
  v12 = dateCopy;
  if (dateCopy && !startDate && endDate)
  {
    if (([endDate isEqual:dateCopy] & 1) != 0 || (objc_msgSend(v10, "laterDate:", dateCopy), v13 = objc_claimAutoreleasedReturnValue(), v13, v13 != v10))
    {
      startDate = 0;
      goto LABEL_16;
    }

    startDate = [schedule endDate];
    v8 = @"_no event found";
    v11 = 3;
    v12 = dateCopy;
  }

  if (v12)
  {
    if (startDate)
    {
      if (([startDate isEqual:v12] & 1) == 0)
      {
        v14 = [startDate laterDate:dateCopy];

        if (v14 == startDate)
        {
          NSLog(@"WLDLivePlaybackReporter: Set up timer for %@ context: %@", startDate, v8);
          [(WLDLivePlaybackReporter *)self _configureTimerForDate:startDate playbackDate:dateCopy input:v11];
        }
      }
    }
  }

LABEL_16:
}

- (void)_configureTimerForDate:(id)date playbackDate:(id)playbackDate input:(unint64_t)input
{
  dateCopy = date;
  playbackDateCopy = playbackDate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_timerEventDate, date);
  v12 = WLDDispatchQueue();
  v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v12);
  timer = selfCopy->_timer;
  selfCopy->_timer = v13;

  [dateCopy timeIntervalSinceDate:playbackDateCopy];
  if (v15 <= 0.0)
  {
    NSLog(@"WLDLivePlaybackReporter: Timer fire time cannot be less than or equal to 0, returning early. Investigate this.");
  }

  else
  {
    v16 = 7200.0;
    if (v15 <= 7200.0)
    {
      v16 = v15;
    }

    else
    {
      v17 = [NSDate dateWithTimeIntervalSinceNow:?];
      NSLog(@"WLDLivePlaybackReporter: Requested fire date exceeds max, clamping: %@", v17);
    }

    v18 = dispatch_time(0, (v16 * 1000000000.0));
    dispatch_source_set_timer(selfCopy->_timer, v18, 0xFFFFFFFFFFFFFFFFLL, 0);
    objc_initWeak(&location, selfCopy);
    v19 = selfCopy->_timer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = __69__WLDLivePlaybackReporter__configureTimerForDate_playbackDate_input___block_invoke;
    handler[3] = &unk_100045088;
    objc_copyWeak(v21, &location);
    v21[1] = input;
    dispatch_source_set_event_handler(v19, handler);
    dispatch_activate(selfCopy->_timer);
    objc_destroyWeak(v21);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);
}

void __69__WLDLivePlaybackReporter__configureTimerForDate_playbackDate_input___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 40);
    [WeakRetained _processInput:? completion:?];
  }
}

- (void)_invalidateTimer
{
  obj = self;
  objc_sync_enter(obj);
  timer = obj->_timer;
  if (timer)
  {
    NSLog(@"WLDLivePlaybackReporter: Cancelling existing timer");
    timerEventDate = obj->_timerEventDate;
    obj->_timerEventDate = 0;

    dispatch_source_cancel(obj->_timer);
    v4 = obj;
    timer = obj->_timer;
  }

  else
  {
    v4 = obj;
  }

  v4->_timer = 0;

  objc_sync_exit(obj);
}

@end